@interface ZoomUI_UIKeyShortcutHUDServiceOverride
- (void)_requestHUDPresentationIfAllowedWithUnpreparedConfiguration:(id)configuration;
@end

@implementation ZoomUI_UIKeyShortcutHUDServiceOverride

- (void)_requestHUDPresentationIfAllowedWithUnpreparedConfiguration:(id)configuration
{
  configurationCopy = configuration;
  sharedInstance = [getZoomServicesClass() sharedInstance];
  shouldSuppressKeyCommandHUD = [sharedInstance shouldSuppressKeyCommandHUD];

  if ((shouldSuppressKeyCommandHUD & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = ZoomUI_UIKeyShortcutHUDServiceOverride;
    [(ZoomUI_UIKeyShortcutHUDServiceOverride *)&v7 _requestHUDPresentationIfAllowedWithUnpreparedConfiguration:configurationCopy];
  }
}

@end