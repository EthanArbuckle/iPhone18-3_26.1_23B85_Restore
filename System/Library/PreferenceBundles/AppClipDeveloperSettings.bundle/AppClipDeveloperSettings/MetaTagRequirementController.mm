@interface MetaTagRequirementController
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webViewWebContentProcessDidTerminate:(id)terminate;
@end

@implementation MetaTagRequirementController

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  _objc_retain(view);
  _objc_retain(navigation);
  _objc_retain(self);
  sub_79B4(view, navigation);
  _objc_release(self);
  _objc_release(navigation);
  _objc_release(view);
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  _objc_retain(view);
  _objc_retain(navigation);
  _objc_retain(error);
  _objc_retain(self);
  sub_8874(view, navigation, error);

  _objc_release(self);
  _objc_release(navigation);
  _objc_release(view);
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  _objc_retain(view);
  _objc_retain(navigation);
  _objc_retain(error);
  _objc_retain(self);
  sub_8D54(view, navigation, error);

  _objc_release(self);
  _objc_release(navigation);
  _objc_release(view);
}

- (void)webViewWebContentProcessDidTerminate:(id)terminate
{
  _objc_retain(terminate);
  _objc_retain(self);
  sub_9158(terminate);
  _objc_release(self);
  _objc_release(terminate);
}

@end