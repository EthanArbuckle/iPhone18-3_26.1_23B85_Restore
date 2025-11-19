@interface SFWebExtensionPageMenuController
+ (id)_imageViewForWarningTriangleImage:(id)a3;
+ (id)badgeViewForText:(id)a3;
- (BOOL)_showPerSitePermissionsForTab:(id)a3 permissionGrantedHandler:(id)a4;
- (BOOL)shouldShowWarningTriangleImageForTab:(id)a3;
- (BOOL)showingExtensionPopup;
- (BOOL)wantsGrayscaleIconForTab:(id)a3;
- (BOOL)wantsTemplateIconForTab:(id)a3;
- (SFWebExtensionPageMenuController)initWithExtension:(id)a3;
- (id)activityForTab:(id)a3;
- (id)alertItemForTab:(id)a3;
- (id)iconForTab:(id)a3;
- (id)iconForTab:(id)a3 size:(CGSize)a4;
- (void)dismissPopupImmediatelyIfNecessary;
- (void)performActionForTab:(id)a3 parentViewController:(id)a4 popoverSourceInfo:(id)a5;
- (void)showPopupOrPerSitePermissionsForTab:(id)a3 parentViewController:(id)a4 popoverSourceInfo:(id)a5;
- (void)webKitExtensionAction:(id)a3 didChangeForTab:(id)a4;
@end

@implementation SFWebExtensionPageMenuController

- (SFWebExtensionPageMenuController)initWithExtension:(id)a3
{
  v4 = a3;
  v5 = [v4 extensionsController];
  v8.receiver = self;
  v8.super_class = SFWebExtensionPageMenuController;
  v6 = [(WBSWebExtensionToolbarItem *)&v8 initWithWebExtension:v4 extensionsController:v5];

  return v6;
}

- (id)iconForTab:(id)a3
{
  v4 = a3;
  v5 = [(WBSWebExtensionToolbarItem *)self webExtension];
  v6 = [v5 extensionsController];
  v7 = [v6 toolbarItemIdealPointSize];

  v8 = [(SFWebExtensionPageMenuController *)self iconForTab:v4 size:v7, v7];

  return v8;
}

- (BOOL)wantsGrayscaleIconForTab:(id)a3
{
  v4 = a3;
  if ([(WBSWebExtensionToolbarItem *)self isEnabledForTab:v4])
  {
    v5 = [(WBSWebExtensionToolbarItem *)self webExtension];
    v6 = [v4 urlForExtensions];
    v7 = [v5 hasPermissionToAccessURL:v6 inTab:v4] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)wantsTemplateIconForTab:(id)a3
{
  v4 = a3;
  if ([(SFWebExtensionPageMenuController *)self wantsGrayscaleIconForTab:v4])
  {
    v5 = [(SFWebExtensionPageMenuController *)self iconForTab:v4];
    [v5 safari_computeAverageLuminance];
    v7 = (v6 < 0.1) & [v5 safari_transparencyAnalysisResultIsNotOpaque];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)iconForTab:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = self;
  v24.receiver = self;
  v24.super_class = SFWebExtensionPageMenuController;
  v7 = a3;
  v8 = [(WBSWebExtensionToolbarItem *)&v24 iconForTab:v7];
  [v8 safari_computeAverageLuminance];
  v10 = v9;
  v11 = [v8 safari_isGrayscale];
  v12 = [v8 safari_transparencyAnalysisResultIsNotOpaque];
  LOBYTE(v6) = [(SFWebExtensionPageMenuController *)v6 wantsGrayscaleIconForTab:v7];

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
  v20 = v6;
  v19 = v10;
  v21 = v12;
  v18 = v13;
  v22 = v11;
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

- (void)showPopupOrPerSitePermissionsForTab:(id)a3 parentViewController:(id)a4 popoverSourceInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(SFWebExtensionPageMenuController *)self showingExtensionPopup]&& ![(SFWebExtensionPageMenuController *)self _showPerSitePermissionsForTab:v8 permissionGrantedHandler:0])
  {
    v11 = [(WBSWebExtensionToolbarItem *)self webExtension];
    v12 = [v11 webKitContext];
    v13 = [v12 actionForTab:v8];

    if ([v13 presentsPopup])
    {
      [(SFWebExtensionPageMenuController *)self dismissPopupImmediatelyIfNecessary];
      objc_storeWeak(&self->_parentViewController, v9);
      if (objc_opt_respondsToSelector())
      {
        v14 = [v13 popupViewController];
        objc_storeWeak(&self->_popupViewController, v14);
        v15 = [v14 popoverPresentationController];
        if ([MEMORY[0x1E69C8880] isSolariumEnabled])
        {
          [v15 _setCornerRadius:20.0];
        }

        if (v10)
        {
          v19 = [v9 view];
          v16 = [v19 window];
          v17 = [v16 windowScene];
          v18 = _SFContextInfoWithComment();
          v21 = v15;
          v20 = v21;
          _SFPopoverSourceInfoUnwrap();
        }

        [v9 presentViewController:v14 animated:1 completion:0];
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

- (BOOL)_showPerSitePermissionsForTab:(id)a3 permissionGrantedHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBSWebExtensionToolbarItem *)self webExtension];
  v9 = [v8 extensionsController];
  v10 = [v8 hasPendingWebsiteRequests];
  v11 = [(WBSWebExtensionToolbarItem *)self shouldRequestAccessForTab:v6]| v10;
  if (v11)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __91__SFWebExtensionPageMenuController__showPerSitePermissionsForTab_permissionGrantedHandler___block_invoke;
    v14[3] = &unk_1E848FA50;
    v15 = v7;
    [v8 requestPermissionsFromToolbarItemInTab:v6 completionHandler:v14];
    v12 = [v8 extension];
    [v9 didShowPerSiteAccessPermissionForExtension:v12];
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

- (void)performActionForTab:(id)a3 parentViewController:(id)a4 popoverSourceInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_storeStrong(&self->_tab, a3);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __95__SFWebExtensionPageMenuController_performActionForTab_parentViewController_popoverSourceInfo___block_invoke;
  v24 = &unk_1E848F570;
  v25 = self;
  v12 = v9;
  v26 = v12;
  v27 = v10;
  v28 = v11;
  v13 = v11;
  v14 = v10;
  v15 = _Block_copy(&v21);
  if (![(SFWebExtensionPageMenuController *)self _showPerSitePermissionsForTab:v12 permissionGrantedHandler:v15, v21, v22, v23, v24, v25])
  {
    v16 = [(WBSWebExtensionToolbarItem *)self webExtension];
    v17 = [v16 extensionsController];
    v18 = [v17 analyticsEventCoalescer];
    v19 = [v16 composedIdentifier];
    [v18 didInvokeToolbarButtonForExtensionWithIdentifier:v19];

    v20 = [v16 webKitContext];
    [v20 performActionForTab:v12];
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

- (id)activityForTab:(id)a3
{
  objc_storeStrong(&self->_tab, a3);
  v5 = a3;
  v6 = [_SFWebExtensionActivity alloc];
  v7 = [(WBSWebExtensionToolbarItem *)self webExtension];
  v8 = [(_SFWebExtensionActivity *)v6 initWithPageMenuController:self webExtension:v7 tab:v5];
  activityItem = self->_activityItem;
  self->_activityItem = v8;

  v10 = self->_activityItem;
  v11 = v10;

  return v10;
}

- (id)alertItemForTab:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_tab, a3);
  v6 = [(WBSWebExtensionToolbarItem *)self webExtension];
  v7 = [v6 displayShortName];
  v8 = *MEMORY[0x1E69DDCF8];
  v9 = [(SFWebExtensionPageMenuController *)self iconForTab:v5];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __52__SFWebExtensionPageMenuController_alertItemForTab___block_invoke;
  v25 = &unk_1E8493BD8;
  v26 = self;
  v10 = v5;
  v27 = v10;
  v11 = [_SFWebExtensionSettingsAlertItem buttonWithTitle:v7 textStyle:v8 icon:v9 extension:v6 handler:&v22];
  alertItem = self->_alertItem;
  self->_alertItem = v11;

  [(_SFSettingsAlertItem *)self->_alertItem setEnabled:[(WBSWebExtensionToolbarItem *)self isEnabledForTab:self->_tab, v22, v23, v24, v25, v26]];
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

+ (id)badgeViewForText:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [[_SFPageFormatMenuBadgeView alloc] initWithText:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_imageViewForWarningTriangleImage:(id)a3
{
  v3 = MEMORY[0x1E69DCAE0];
  v4 = a3;
  v5 = [[v3 alloc] initWithImage:v4];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [MEMORY[0x1E69DC888] systemOrangeColor];
  [v5 setTintColor:v6];

  return v5;
}

- (BOOL)shouldShowWarningTriangleImageForTab:(id)a3
{
  v4 = [(WBSWebExtensionToolbarItem *)self shouldRequestAccessForTab:a3];
  v5 = [(WBSWebExtensionToolbarItem *)self webExtension];
  v6 = [v5 extensionsController];
  v7 = [v5 extension];
  v8 = [v6 hasShownPerSiteAccessPermissionForExtension:v7];

  v9 = v4 & ~v8 | [v5 hasPendingWebsiteRequests];
  return v9 & 1;
}

- (BOOL)showingExtensionPopup
{
  WeakRetained = objc_loadWeakRetained(&self->_popupViewController);
  v3 = [WeakRetained presentingViewController];
  v4 = v3 != 0;

  return v4;
}

- (void)webKitExtensionAction:(id)a3 didChangeForTab:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [(WBSWebExtensionToolbarItem *)self webExtension];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"activityContentsDidUpdate" object:v7];

  [v7 _validateToolbarItemInAllWindows];
  if (self->_alertItem)
  {
    tab = self->_tab;
    if (!v6 || tab == v6)
    {
      v10 = [(SFWebExtensionPageMenuController *)self iconForTab:tab];
      [(_SFSettingsAlertItem *)self->_alertItem setIcon:v10];

      v11 = objc_opt_class();
      v12 = [v15 badgeText];
      v13 = [v11 badgeViewForText:v12];
      [(_SFSettingsAlertItem *)self->_alertItem setBadgeView:v13];

      v14 = [v15 badgeText];
      [(_SFSettingsAlertItem *)self->_alertItem setBadgeText:v14];

      -[_SFSettingsAlertItem setEnabled:](self->_alertItem, "setEnabled:", [v15 isEnabled]);
    }
  }
}

@end