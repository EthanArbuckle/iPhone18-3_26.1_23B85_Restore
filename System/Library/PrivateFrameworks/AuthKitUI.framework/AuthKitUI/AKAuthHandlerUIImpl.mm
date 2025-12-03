@interface AKAuthHandlerUIImpl
- (id)buildReauthenticationContextFromContext:(id)context error:(id *)error;
@end

@implementation AKAuthHandlerUIImpl

- (id)buildReauthenticationContextFromContext:(id)context error:(id *)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v17[1] = error;
  v17[0] = objc_opt_new();
  [v17[0] _updateWithValuesFromContext:location[0]];
  [v17[0] setIsUsernameEditable:0];
  [v17[0] setShouldSkipSettingsLaunchAlert:1];
  [v17[0] setNeedsNewAppleID:0];
  [v17[0] setRequestedNewAccountAgeRange:?];
  [v17[0] setAuthenticationType:0];
  [v17[0] setShouldOfferSecurityUpgrade:0];
  [v17[0] setNeedsRepair:0];
  presentingViewController = [location[0] presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];
  v14 = 0;
  if (presentedViewController)
  {
    v4 = MEMORY[0x277D82BE0](presentedViewController);
  }

  else
  {
    presentingViewController2 = [location[0] presentingViewController];
    v14 = 1;
    v4 = MEMORY[0x277D82BE0](presentingViewController2);
  }

  v16 = v4;
  if (v14)
  {
    MEMORY[0x277D82BD8](presentingViewController2);
  }

  MEMORY[0x277D82BD8](presentedViewController);
  MEMORY[0x277D82BD8](presentingViewController);
  objc_opt_class();
  v12 = 0;
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    topViewController = [v16 topViewController];
    v12 = 1;
    v8 = topViewController != 0;
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](topViewController);
  }

  if (v8)
  {
    topViewController2 = [v16 topViewController];
    [v17[0] setPresentingViewController:?];
    MEMORY[0x277D82BD8](topViewController2);
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