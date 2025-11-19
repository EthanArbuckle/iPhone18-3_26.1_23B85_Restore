@interface ZoomUI_UIKeyShortcutHUDServiceOverride
- (void)_requestHUDPresentationIfAllowedWithUnpreparedConfiguration:(id)a3;
@end

@implementation ZoomUI_UIKeyShortcutHUDServiceOverride

- (void)_requestHUDPresentationIfAllowedWithUnpreparedConfiguration:(id)a3
{
  v4 = a3;
  v5 = [getZoomServicesClass() sharedInstance];
  v6 = [v5 shouldSuppressKeyCommandHUD];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = ZoomUI_UIKeyShortcutHUDServiceOverride;
    [(ZoomUI_UIKeyShortcutHUDServiceOverride *)&v7 _requestHUDPresentationIfAllowedWithUnpreparedConfiguration:v4];
  }
}

@end