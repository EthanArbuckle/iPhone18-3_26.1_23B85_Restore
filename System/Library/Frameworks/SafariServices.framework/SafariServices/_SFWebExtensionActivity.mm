@interface _SFWebExtensionActivity
- (BOOL)_isDisabled;
- (BOOL)_wantsOriginalImageColor;
- (UIActivityViewController)parentViewController;
- (_SFWebExtensionActivity)initWithPageMenuController:(id)controller webExtension:(id)extension tab:(id)tab;
- (id)_actionImage;
- (id)_activityBadgeText;
- (id)_activityImage;
- (id)_activityStatusImage;
- (id)activityType;
- (void)_reloadActivity;
- (void)performActivity;
@end

@implementation _SFWebExtensionActivity

- (_SFWebExtensionActivity)initWithPageMenuController:(id)controller webExtension:(id)extension tab:(id)tab
{
  controllerCopy = controller;
  extensionCopy = extension;
  tabCopy = tab;
  v16.receiver = self;
  v16.super_class = _SFWebExtensionActivity;
  v11 = [(UIActivity *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_pageMenuController, controllerCopy);
    objc_storeStrong(&v12->_webExtension, extension);
    objc_storeStrong(&v12->_tab, tab);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__reloadActivitySoon name:@"activityContentsDidUpdate" object:v12->_webExtension];

    v14 = v12;
  }

  return v12;
}

- (BOOL)_wantsOriginalImageColor
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_pageMenuController);
  LOBYTE(selfCopy) = [WeakRetained wantsTemplateIconForTab:selfCopy->_tab];

  return selfCopy ^ 1;
}

- (id)_actionImage
{
  if ([(_SFWebExtensionActivity *)self _wantsOriginalImageColor])
  {
    _activityImage = 0;
  }

  else
  {
    _activityImage = [(_SFWebExtensionActivity *)self _activityImage];
  }

  return _activityImage;
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
  composedIdentifier = [(WBSWebExtensionData *)self->_webExtension composedIdentifier];
  v4 = [v2 stringWithFormat:@"%@-%@", @"com.apple.mobilesafari.webextension", composedIdentifier];

  return v4;
}

- (BOOL)_isDisabled
{
  selfCopy = self;
  toolbarItem = [(WBSWebExtensionData *)self->_webExtension toolbarItem];
  LOBYTE(selfCopy) = [toolbarItem isEnabledForTab:selfCopy->_tab];

  return selfCopy ^ 1;
}

- (void)performActivity
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);
  presentingViewController = [WeakRetained presentingViewController];
  v4 = _SFPopoverSourceInfoForViewController();
  [(UIActivity *)self activityDidFinish:1];
  v5 = objc_loadWeakRetained(&self->_pageMenuController);
  [v5 performActionForTab:self->_tab parentViewController:presentingViewController popoverSourceInfo:v4];
}

- (id)_activityBadgeText
{
  toolbarItem = [(WBSWebExtensionData *)self->_webExtension toolbarItem];
  v4 = [toolbarItem badgeTextForTab:self->_tab];

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