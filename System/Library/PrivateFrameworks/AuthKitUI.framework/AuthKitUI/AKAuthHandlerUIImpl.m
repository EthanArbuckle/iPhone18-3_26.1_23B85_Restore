@interface AKAuthHandlerUIImpl
- (id)buildReauthenticationContextFromContext:(id)a3 error:(id *)a4;
@end

@implementation AKAuthHandlerUIImpl

- (id)buildReauthenticationContextFromContext:(id)a3 error:(id *)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17[1] = a4;
  v17[0] = objc_opt_new();
  [v17[0] _updateWithValuesFromContext:location[0]];
  [v17[0] setIsUsernameEditable:0];
  [v17[0] setShouldSkipSettingsLaunchAlert:1];
  [v17[0] setNeedsNewAppleID:0];
  [v17[0] setRequestedNewAccountAgeRange:?];
  [v17[0] setAuthenticationType:0];
  [v17[0] setShouldOfferSecurityUpgrade:0];
  [v17[0] setNeedsRepair:0];
  v10 = [location[0] presentingViewController];
  v11 = [v10 presentedViewController];
  v14 = 0;
  if (v11)
  {
    v4 = MEMORY[0x277D82BE0](v11);
  }

  else
  {
    v15 = [location[0] presentingViewController];
    v14 = 1;
    v4 = MEMORY[0x277D82BE0](v15);
  }

  v16 = v4;
  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v10);
  objc_opt_class();
  v12 = 0;
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    v13 = [v16 topViewController];
    v12 = 1;
    v8 = v13 != 0;
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v8)
  {
    v7 = [v16 topViewController];
    [v17[0] setPresentingViewController:?];
    MEMORY[0x277D82BD8](v7);
  }

  else
  {
    [v17[0] setPresentingViewController:v16];
  }

  v6 = MEMORY[0x277D82BE0](v17[0]);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v17, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end