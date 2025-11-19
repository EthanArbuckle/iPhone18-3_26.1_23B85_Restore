@interface MetaTagRequirementController
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webViewWebContentProcessDidTerminate:(id)a3;
@end

@implementation MetaTagRequirementController

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(self);
  sub_79B4(a3, a4);
  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(a5);
  _objc_retain(self);
  sub_8874(a3, a4, a5);

  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  _objc_retain(a3);
  _objc_retain(a4);
  _objc_retain(a5);
  _objc_retain(self);
  sub_8D54(a3, a4, a5);

  _objc_release(self);
  _objc_release(a4);
  _objc_release(a3);
}

- (void)webViewWebContentProcessDidTerminate:(id)a3
{
  _objc_retain(a3);
  _objc_retain(self);
  sub_9158(a3);
  _objc_release(self);
  _objc_release(a3);
}

@end