@interface WebHostingView.Coordinator
- (void)webView:(WKWebView *)view decidePolicyForNavigationAction:(WKNavigationAction *)action decisionHandler:(id)handler;
@end

@implementation WebHostingView.Coordinator

- (void)webView:(WKWebView *)view decidePolicyForNavigationAction:(WKNavigationAction *)action decisionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = view;
  v9[3] = action;
  v9[4] = v8;
  v9[5] = self;
  viewCopy = view;
  actionCopy = action;
  selfCopy = self;

  sub_23E35CA40(&unk_23E3B1BA0, v9);
}

@end