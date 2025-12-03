@interface SFWebExtensionPageMenuController
+ (id)_imageViewForWarningTriangleImage:(id)image;
+ (id)badgeViewForText:(id)text;
- (BOOL)_showPerSitePermissionsForTab:(id)tab permissionGrantedHandler:(id)handler;
- (BOOL)shouldShowWarningTriangleImageForTab:(id)tab;
- (BOOL)showingExtensionPopup;
- (BOOL)wantsGrayscaleIconForTab:(id)tab;
- (BOOL)wantsTemplateIconForTab:(id)tab;
- (SFWebExtensionPageMenuController)initWithExtension:(id)extension;
- (id)activityForTab:(id)tab;
- (id)alertItemForTab:(id)tab;
- (id)iconForTab:(id)tab;
- (id)iconForTab:(id)tab size:(CGSize)size;
- (void)dismissPopupImmediatelyIfNecessary;
- (void)performActionForTab:(id)tab parentViewController:(id)controller popoverSourceInfo:(id)info;
- (void)showPopupOrPerSitePermissionsForTab:(id)tab parentViewController:(id)controller popoverSourceInfo:(id)info;
- (void)webKitExtensionAction:(id)action didChangeForTab:(id)tab;
@end

@implementation SFWebExtensionPageMenuController

- (SFWebExtensionPageMenuController)initWithExtension:(id)extension
{
  extensionCopy = extension;
  extensionsController = [extensionCopy extensionsController];
  v8.receiver = self;
  v8.super_class = SFWebExtensionPageMenuController;
  v6 = [(WBSWebExtensionToolbarItem *)&v8 initWithWebExtension:extensionCopy extensionsController:extensionsController];

  return v6;
}

- (id)iconForTab:(id)tab
{
  tabCopy = tab;
  webExtension = [(WBSWebExtensionToolbarItem *)self webExtension];
  extensionsController = [webExtension extensionsController];
  toolbarItemIdealPointSize = [extensionsController toolbarItemIdealPointSize];

  v8 = [(SFWebExtensionPageMenuController *)self iconForTab:tabCopy size:toolbarItemIdealPointSize, toolbarItemIdealPointSize];

  return v8;
}

- (BOOL)wantsGrayscaleIconForTab:(id)tab
{
  tabCopy = tab;
  if ([(WBSWebExtensionToolbarItem *)self isEnabledForTab:tabCopy])
  {
    webExtension = [(WBSWebExtensionToolbarItem *)self webExtension];
    urlForExtensions = [tabCopy urlForExtensions];
    v7 = [webExtension hasPermissionToAccessURL:urlForExtensions inTab:tabCopy] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)wantsTemplateIconForTab:(id)tab
{
  tabCopy = tab;
  if ([(SFWebExtensionPageMenuController *)self wantsGrayscaleIconForTab:tabCopy])
  {
    v5 = [(SFWebExtensionPageMenuController *)self iconForTab:tabCopy];
    [v5 safari_computeAverageLuminance];
    v7 = (v6 < 0.1) & [v5 safari_transparencyAnalysisResultIsNotOpaque];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)iconForTab:(id)tab size:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v24.receiver = self;
  v24.super_class = SFWebExtensionPageMenuController;
  tabCopy = tab;
  v8 = [(WBSWebExtensionToolbarItem *)&v24 iconForTab:tabCopy];
  [v8 safari_computeAverageLuminance];
  v10 = v9;
  safari_isGrayscale = [v8 safari_isGrayscale];
  safari_transparencyAnalysisResultIsNotOpaque = [v8 safari_transparencyAnalysisResultIsNotOpaque];
  LOBYTE(selfCopy) = [(SFWebExtensionPageMenuController *)selfCopy wantsGrayscaleIconForTab:tabCopy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__SFWebExtensionPageMenuController_iconForTab_size___block_invoke;
  aBlock[3] = &__block_descriptor_56_e38___UIImage_24__0__UIImage_8__UIColor_16l;
  aBlock[4] = v10;
  *&aBlock[5] = width;
  *&aBlock[6] = height;
  v13 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__SFWebExtensionPageMenuController_iconForTab_size___block_invoke_2;
  v17[3] = &unk_1E8495860;
  v20 = selfCopy;
  v19 = v10;
  v21 = safari_transparencyAnalysisResultIsNotOpaque;
  v18 = v13;
  v22 = safari_isGrayscale;
  v14 = v13;
  v15 = [v8 safari_dynamicImageWithSize:v17 generator:{width, height}];

  return v15;
}

id __52__SFWebExtensionPageMenuController_iconForTab_size___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 40) >= 0.1 || *(a1 + 49) != 1)
    {
      v14 = *(a1 + 32);
      v12 = [v7 safari_makeGrayscale];
      v13 = [MEMORY[0x1E69DC888] labelColor];
      v11 = (*(v14 + 16))(v14, v12, v13);

      goto LABEL_9;
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    v11 = v7;
    if (*(a1 + 50) != 1)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E69DC888] sf_safariAccentColor];
  }

  v12 = v10;
  v11 = (*(v9 + 16))(v9, v8, v10);
  v13 = v8;
LABEL_9:

LABEL_10:

  return v11;
}

- (void)showPopupOrPerSitePermissionsForTab:(id)tab parentViewController:(id)controller popoverSourceInfo:(id)info
{
  tabCopy = tab;
  controllerCopy = controller;
  infoCopy = info;
  if (![(SFWebExtensionPageMenuController *)self showingExtensionPopup]&& ![(SFWebExtensionPageMenuController *)self _showPerSitePermissionsForTab:tabCopy permissionGrantedHandler:0])
  {
    webExtension = [(WBSWebExtensionToolbarItem *)self webExtension];
    webKitContext = [webExtension webKitContext];
    v13 = [webKitContext actionForTab:tabCopy];

    if ([v13 presentsPopup])
    {
      [(SFWebExtensionPageMenuController *)self dismissPopupImmediatelyIfNecessary];
      objc_storeWeak(&self->_parentViewController, controllerCopy);
      if (objc_opt_respondsToSelector())
      {
        popupViewController = [v13 popupViewController];
        objc_storeWeak(&self->_popupViewController, popupViewController);
        popoverPresentationController = [popupViewController popoverPresentationController];
        if ([MEMORY[0x1E69C8880] isSolariumEnabled])
        {
          [popoverPresentationController _setCornerRadius:20.0];
        }

        if (infoCopy)
        {
          view = [controllerCopy view];
          window = [view window];
          windowScene = [window windowScene];
          v18 = _SFContextInfoWithComment();
          v21 = popoverPresentationController;
          v20 = v21;
          _SFPopoverSourceInfoUnwrap();
        }

        [controllerCopy presentViewController:popupViewController animated:1 completion:0];
      }
    }
  }
}

uint64_t __111__SFWebExtensionPageMenuController_showPopupOrPerSitePermissionsForTab_parentViewController_popoverSourceInfo___block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  [*(a1 + 32) setSourceView:a2];
  v11 = *(a1 + 32);

  return [v11 setSourceRect:{a3, a4, a5, a6}];
}

- (BOOL)_showPerSitePermissionsForTab:(id)tab permissionGrantedHandler:(id)handler
{
  tabCopy = tab;
  handlerCopy = handler;
  webExtension = [(WBSWebExtensionToolbarItem *)self webExtension];
  extensionsController = [webExtension extensionsController];
  hasPendingWebsiteRequests = [webExtension hasPendingWebsiteRequests];
  v11 = [(WBSWebExtensionToolbarItem *)self shouldRequestAccessForTab:tabCopy]| hasPendingWebsiteRequests;
  if (v11)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __91__SFWebExtensionPageMenuController__showPerSitePermissionsForTab_permissionGrantedHandler___block_invoke;
    v14[3] = &unk_1E848FA50;
    v15 = handlerCopy;
    [webExtension requestPermissionsFromToolbarItemInTab:tabCopy completionHandler:v14];
    extension = [webExtension extension];
    [extensionsController didShowPerSiteAccessPermissionForExtension:extension];
  }

  return v11 & 1;
}

uint64_t __91__SFWebExtensionPageMenuController__showPerSitePermissionsForTab_permissionGrantedHandler___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)performActionForTab:(id)tab parentViewController:(id)controller popoverSourceInfo:(id)info
{
  tabCopy = tab;
  controllerCopy = controller;
  infoCopy = info;
  objc_storeStrong(&self->_tab, tab);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __95__SFWebExtensionPageMenuController_performActionForTab_parentViewController_popoverSourceInfo___block_invoke;
  v24 = &unk_1E848F570;
  selfCopy = self;
  v12 = tabCopy;
  v26 = v12;
  v27 = controllerCopy;
  v28 = infoCopy;
  v13 = infoCopy;
  v14 = controllerCopy;
  v15 = _Block_copy(&v21);
  if (![(SFWebExtensionPageMenuController *)self _showPerSitePermissionsForTab:v12 permissionGrantedHandler:v15, v21, v22, v23, v24, selfCopy])
  {
    webExtension = [(WBSWebExtensionToolbarItem *)self webExtension];
    extensionsController = [webExtension extensionsController];
    analyticsEventCoalescer = [extensionsController analyticsEventCoalescer];
    composedIdentifier = [webExtension composedIdentifier];
    [analyticsEventCoalescer didInvokeToolbarButtonForExtensionWithIdentifier:composedIdentifier];

    webKitContext = [webExtension webKitContext];
    [webKitContext performActionForTab:v12];
  }
}

void __95__SFWebExtensionPageMenuController_performActionForTab_parentViewController_popoverSourceInfo___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__SFWebExtensionPageMenuController_performActionForTab_parentViewController_popoverSourceInfo___block_invoke_2;
  block[3] = &unk_1E848F570;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

- (void)dismissPopupImmediatelyIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_popupViewController);
  [WeakRetained dismissViewControllerAnimated:1 completion:0];

  objc_storeWeak(&self->_popupViewController, 0);
}

- (id)activityForTab:(id)tab
{
  objc_storeStrong(&self->_tab, tab);
  tabCopy = tab;
  v6 = [_SFWebExtensionActivity alloc];
  webExtension = [(WBSWebExtensionToolbarItem *)self webExtension];
  v8 = [(_SFWebExtensionActivity *)v6 initWithPageMenuController:self webExtension:webExtension tab:tabCopy];
  activityItem = self->_activityItem;
  self->_activityItem = v8;

  v10 = self->_activityItem;
  v11 = v10;

  return v10;
}

- (id)alertItemForTab:(id)tab
{
  tabCopy = tab;
  objc_storeStrong(&self->_tab, tab);
  webExtension = [(WBSWebExtensionToolbarItem *)self webExtension];
  displayShortName = [webExtension displayShortName];
  v8 = *MEMORY[0x1E69DDCF8];
  v9 = [(SFWebExtensionPageMenuController *)self iconForTab:tabCopy];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __52__SFWebExtensionPageMenuController_alertItemForTab___block_invoke;
  v25 = &unk_1E8493BD8;
  selfCopy = self;
  v10 = tabCopy;
  v27 = v10;
  v11 = [_SFWebExtensionSettingsAlertItem buttonWithTitle:displayShortName textStyle:v8 icon:v9 extension:webExtension handler:&v22];
  alertItem = self->_alertItem;
  self->_alertItem = v11;

  [(_SFSettingsAlertItem *)self->_alertItem setEnabled:[(WBSWebExtensionToolbarItem *)self isEnabledForTab:self->_tab, v22, v23, v24, v25, selfCopy]];
  v13 = [(WBSWebExtensionToolbarItem *)self badgeTextForTab:self->_tab];
  v14 = [objc_opt_class() badgeViewForText:v13];
  [(_SFSettingsAlertItem *)self->_alertItem setBadgeView:v14];

  [(_SFSettingsAlertItem *)self->_alertItem setBadgeText:v13];
  if ([(SFWebExtensionPageMenuController *)self shouldShowWarningTriangleImageForTab:v10])
  {
    v15 = objc_opt_class();
    v16 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v17 = [v15 _imageViewForWarningTriangleImage:v16];
    [(_SFSettingsAlertItem *)self->_alertItem setStatusImageView:v17];

    [(_SFSettingsAlertItem *)self->_alertItem setShowsStatusAlert:1];
  }

  v18 = +[_SFPageFormatMenuBadgeView defaultComponentsArrangement];
  [(_SFSettingsAlertItem *)self->_alertItem setComponentsArrangement:v18];

  v19 = self->_alertItem;
  v20 = v19;

  return v19;
}

void __52__SFWebExtensionPageMenuController_alertItemForTab___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 presentingViewController];
  v5 = _SFPopoverSourceInfoForViewController();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__SFWebExtensionPageMenuController_alertItemForTab___block_invoke_2;
  v11[3] = &unk_1E848F570;
  v6 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v12 = v6;
  v13 = v4;
  v14 = v5;
  v7 = v5;
  v8 = v4;
  [v3 dismissViewControllerAnimated:1 completion:v11];

  v9 = *(a1 + 32);
  v10 = *(v9 + 96);
  *(v9 + 96) = 0;
}

+ (id)badgeViewForText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    v4 = [[_SFPageFormatMenuBadgeView alloc] initWithText:textCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_imageViewForWarningTriangleImage:(id)image
{
  v3 = MEMORY[0x1E69DCAE0];
  imageCopy = image;
  v5 = [[v3 alloc] initWithImage:imageCopy];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemOrangeColor = [MEMORY[0x1E69DC888] systemOrangeColor];
  [v5 setTintColor:systemOrangeColor];

  return v5;
}

- (BOOL)shouldShowWarningTriangleImageForTab:(id)tab
{
  v4 = [(WBSWebExtensionToolbarItem *)self shouldRequestAccessForTab:tab];
  webExtension = [(WBSWebExtensionToolbarItem *)self webExtension];
  extensionsController = [webExtension extensionsController];
  extension = [webExtension extension];
  v8 = [extensionsController hasShownPerSiteAccessPermissionForExtension:extension];

  v9 = v4 & ~v8 | [webExtension hasPendingWebsiteRequests];
  return v9 & 1;
}

- (BOOL)showingExtensionPopup
{
  WeakRetained = objc_loadWeakRetained(&self->_popupViewController);
  presentingViewController = [WeakRetained presentingViewController];
  v4 = presentingViewController != 0;

  return v4;
}

- (void)webKitExtensionAction:(id)action didChangeForTab:(id)tab
{
  actionCopy = action;
  tabCopy = tab;
  webExtension = [(WBSWebExtensionToolbarItem *)self webExtension];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"activityContentsDidUpdate" object:webExtension];

  [webExtension _validateToolbarItemInAllWindows];
  if (self->_alertItem)
  {
    tab = self->_tab;
    if (!tabCopy || tab == tabCopy)
    {
      v10 = [(SFWebExtensionPageMenuController *)self iconForTab:tab];
      [(_SFSettingsAlertItem *)self->_alertItem setIcon:v10];

      v11 = objc_opt_class();
      badgeText = [actionCopy badgeText];
      v13 = [v11 badgeViewForText:badgeText];
      [(_SFSettingsAlertItem *)self->_alertItem setBadgeView:v13];

      badgeText2 = [actionCopy badgeText];
      [(_SFSettingsAlertItem *)self->_alertItem setBadgeText:badgeText2];

      -[_SFSettingsAlertItem setEnabled:](self->_alertItem, "setEnabled:", [actionCopy isEnabled]);
    }
  }
}

@end