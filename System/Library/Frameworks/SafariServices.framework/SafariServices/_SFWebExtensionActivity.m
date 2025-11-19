@interface _SFWebExtensionActivity
- (BOOL)_isDisabled;
- (BOOL)_wantsOriginalImageColor;
- (UIActivityViewController)parentViewController;
- (_SFWebExtensionActivity)initWithPageMenuController:(id)a3 webExtension:(id)a4 tab:(id)a5;
- (id)_actionImage;
- (id)_activityBadgeText;
- (id)_activityImage;
- (id)_activityStatusImage;
- (id)activityType;
- (void)_reloadActivity;
- (void)performActivity;
@end

@implementation _SFWebExtensionActivity

- (_SFWebExtensionActivity)initWithPageMenuController:(id)a3 webExtension:(id)a4 tab:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _SFWebExtensionActivity;
  v11 = [(UIActivity *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_pageMenuController, v8);
    objc_storeStrong(&v12->_webExtension, a4);
    objc_storeStrong(&v12->_tab, a5);
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v12 selector:sel__reloadActivitySoon name:@"activityContentsDidUpdate" object:v12->_webExtension];

    v14 = v12;
  }

  return v12;
}

- (BOOL)_wantsOriginalImageColor
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_pageMenuController);
  LOBYTE(v2) = [WeakRetained wantsTemplateIconForTab:v2->_tab];

  return v2 ^ 1;
}

- (id)_actionImage
{
  if ([(_SFWebExtensionActivity *)self _wantsOriginalImageColor])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(_SFWebExtensionActivity *)self _activityImage];
  }

  return v3;
}

- (id)_activityImage
{
  WeakRetained = objc_loadWeakRetained(&self->_pageMenuController);
  v4 = [WeakRetained iconForTab:self->_tab];

  return v4;
}

- (id)activityType
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(WBSWebExtensionData *)self->_webExtension composedIdentifier];
  v4 = [v2 stringWithFormat:@"%@-%@", @"com.apple.mobilesafari.webextension", v3];

  return v4;
}

- (BOOL)_isDisabled
{
  v2 = self;
  v3 = [(WBSWebExtensionData *)self->_webExtension toolbarItem];
  LOBYTE(v2) = [v3 isEnabledForTab:v2->_tab];

  return v2 ^ 1;
}

- (void)performActivity
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  v3 = [WeakRetained presentingViewController];
  v4 = _SFPopoverSourceInfoForViewController();
  [(UIActivity *)self activityDidFinish:1];
  v5 = objc_loadWeakRetained(&self->_pageMenuController);
  [v5 performActionForTab:self->_tab parentViewController:v3 popoverSourceInfo:v4];
}

- (id)_activityBadgeText
{
  v3 = [(WBSWebExtensionData *)self->_webExtension toolbarItem];
  v4 = [v3 badgeTextForTab:self->_tab];

  return v4;
}

- (id)_activityStatusImage
{
  WeakRetained = objc_loadWeakRetained(&self->_pageMenuController);
  if ([WeakRetained shouldShowWarningTriangleImageForTab:self->_tab])
  {
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.triangle.fill"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_reloadActivity
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:a2 object:0];
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  if (([WeakRetained isBeingDismissed] & 1) == 0)
  {
    [WeakRetained _reloadActivity:self];
  }
}

- (UIActivityViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

@end