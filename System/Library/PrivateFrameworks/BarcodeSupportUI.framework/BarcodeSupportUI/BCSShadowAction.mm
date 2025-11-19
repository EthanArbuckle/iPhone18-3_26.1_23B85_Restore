@interface BCSShadowAction
- (BCSActionDelegate)delegate;
- (BCSShadowAction)initWithURL:(id)a3 appLink:(id)a4 originalAction:(id)a5;
- (NSArray)actionPickerItems;
- (void)performAction;
@end

@implementation BCSShadowAction

- (BCSShadowAction)initWithURL:(id)a3 appLink:(id)a4 originalAction:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = BCSShadowAction;
  v12 = [(BCSShadowAction *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, a3);
    objc_storeStrong(&v13->_appLink, a4);
    objc_storeStrong(&v13->_originalAction, a5);
    appLink = v13->_appLink;
    if (appLink)
    {
      v15 = [(LSAppLink *)appLink targetApplicationProxy];
    }

    else
    {
      if (![v9 _bcs_isHTTPFamilyURL])
      {
        v16 = [MEMORY[0x277CC1E80] defaultWorkspace];
        v19 = [v16 applicationsAvailableForOpeningURL:v13->_url];
        v20 = [v19 firstObject];
        applicationProxy = v13->_applicationProxy;
        v13->_applicationProxy = v20;

        goto LABEL_7;
      }

      v15 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.mobilesafari"];
    }

    v16 = v13->_applicationProxy;
    v13->_applicationProxy = v15;
LABEL_7:

    v17 = v13;
  }

  return v13;
}

- (NSArray)actionPickerItems
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CF0AF8];
  v4 = [(LSApplicationProxy *)self->_applicationProxy localizedShortName];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__BCSShadowAction_actionPickerItems__block_invoke;
  v9[3] = &unk_278D01AE0;
  v9[4] = self;
  v5 = [v3 actionPickerItemWithLabel:v4 actionHandler:v9];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)performAction
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  [v3 openURL:self->_url options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (BCSActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end