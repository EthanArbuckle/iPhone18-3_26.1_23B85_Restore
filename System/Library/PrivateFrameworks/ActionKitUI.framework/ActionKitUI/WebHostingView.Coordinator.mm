@interface WebHostingView.Coordinator
- (void)webView:(WKWebView *)a3 decidePolicyForNavigationAction:(WKNavigationAction *)a4 decisionHandler:(id)a5;
@end

@implementation WebHostingView.Coordinator

- (void)webView:(WKWebView *)a3 decidePolicyForNavigationAction:(WKNavigationAction *)a4 decisionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_23E35CA40(&unk_23E3B1BA0, v9);
}

@end