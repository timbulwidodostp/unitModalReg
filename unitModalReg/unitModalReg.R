# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Parametric modal regression models for bounded data Use unitModalReg With (In) R Software
install.packages("remotes")
remotes::install_github("AndrMenezes/unitModalReg")
library("unitModalReg")
unitModalReg = read.csv("https://raw.githubusercontent.com/timbulwidodostp/unitModalReg/main/unitModalReg/unitModalReg.csv",sep = ";")
# Estimation parametric modal regression models for bounded data Use unitModalReg With (In) R Software
# Families of distributions
distr <- list(Be = "betaMode", UGz = "unitGompertz", UGa = "unitGamma", Kum = "Kumaraswamy")
# Fit the models
fits <- lapply(distr, function(m) {unitModalReg(y ~ x1 + x2, data = unitModalReg, family = m, link = "logit")})
# Get the coefficients
vapply(fits, coef, numeric(4))
# Compare the models fitting
gof(lt = fits)
# Parametric modal regression models for bounded data Use unitModalReg With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished