@interface SOSKappaThirdPartySettingsController
- (SOSKappaThirdPartySettingsController)init;
- (id)specifiers;
- (id)thirdPartyApp;
- (void)disableKappaThirdPartyAppForSpecifier:(id)a3;
@end

@implementation SOSKappaThirdPartySettingsController

- (SOSKappaThirdPartySettingsController)init
{
  v5.receiver = self;
  v5.super_class = SOSKappaThirdPartySettingsController;
  v2 = [(SOSKappaThirdPartySettingsController *)&v5 init];
  if (v2)
  {
    v3 = +[SOSUtilities crashDetectionThirdPartyNavigationTitle];
    [(SOSKappaThirdPartySettingsController *)v2 setTitle:v3];
  }

  return v2;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v5 = [(SOSKappaThirdPartySettingsController *)self thirdPartyApp];
    v6 = [SOSUtilities thirdPartySettingsSpecifiersWithTarget:self forApp:v5 disableAction:"disableKappaThirdPartyAppForSpecifier:"];
    v7 = *&self->PSListController_opaque[v2];
    *&self->PSListController_opaque[v2] = v6;

    v3 = *&self->PSListController_opaque[v2];
  }

  v8 = v3;

  return v8;
}

- (void)disableKappaThirdPartyAppForSpecifier:(id)a3
{
  v4 = [(SOSKappaThirdPartySettingsController *)self thirdPartyApp];
  [SOSUtilities setKappaThirdPartyActive:0 forApp:v4 forPairedDevice:0 presentConfirmationOnViewController:self completion:&stru_20DB8];
}

- (id)thirdPartyApp
{
  thirdPartyApp = self->_thirdPartyApp;
  if (!thirdPartyApp)
  {
    v4 = +[SOSUtilities getKappaThirdPartyApp];
    v5 = self->_thirdPartyApp;
    self->_thirdPartyApp = v4;

    thirdPartyApp = self->_thirdPartyApp;
  }

  return thirdPartyApp;
}

@end