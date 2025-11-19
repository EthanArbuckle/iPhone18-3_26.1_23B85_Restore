@interface NemethView.Coordinator
- (_TtCV28AccessibilitySharedUISupport10NemethView11Coordinator)init;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation NemethView.Coordinator

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_23DA16568(v11, "Error during provisional navigation... %s");
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23DA16340(v6);
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_23DA16568(v11, "Error navigating to URL... %s");
}

- (_TtCV28AccessibilitySharedUISupport10NemethView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end