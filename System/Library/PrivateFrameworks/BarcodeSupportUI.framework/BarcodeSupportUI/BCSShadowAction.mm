@interface BCSShadowAction
- (BCSActionDelegate)delegate;
- (BCSShadowAction)initWithURL:(id)l appLink:(id)link originalAction:(id)action;
- (NSArray)actionPickerItems;
- (void)performAction;
@end

@implementation BCSShadowAction

- (BCSShadowAction)initWithURL:(id)l appLink:(id)link originalAction:(id)action
{
  lCopy = l;
  linkCopy = link;
  actionCopy = action;
  v22.receiver = self;
  v22.super_class = BCSShadowAction;
  v12 = [(BCSShadowAction *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, l);
    objc_storeStrong(&v13->_appLink, link);
    objc_storeStrong(&v13->_originalAction, action);
    appLink = v13->_appLink;
    if (appLink)
    {
      targetApplicationProxy = [(LSAppLink *)appLink targetApplicationProxy];
    }

    else
    {
      if (![lCopy _bcs_isHTTPFamilyURL])
      {
        defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
        v19 = [defaultWorkspace applicationsAvailableForOpeningURL:v13->_url];
        firstObject = [v19 firstObject];
        applicationProxy = v13->_applicationProxy;
        v13->_applicationProxy = firstObject;

        goto LABEL_7;
      }

      targetApplicationProxy = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.mobilesafari"];
    }

    defaultWorkspace = v13->_applicationProxy;
    v13->_applicationProxy = targetApplicationProxy;
LABEL_7:

    v17 = v13;
  }

  return v13;
}

- (NSArray)actionPickerItems
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CF0AF8];
  localizedShortName = [(LSApplicationProxy *)self->_applicationProxy localizedShortName];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__BCSShadowAction_actionPickerItems__block_invoke;
  v9[3] = &unk_278D01AE0;
  v9[4] = self;
  v5 = [v3 actionPickerItemWithLabel:localizedShortName actionHandler:v9];
  v10[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)performAction
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] openURL:self->_url options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (BCSActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end