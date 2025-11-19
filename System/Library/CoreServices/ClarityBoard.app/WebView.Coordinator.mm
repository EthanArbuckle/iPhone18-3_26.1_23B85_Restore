@interface WebView.Coordinator
- (_TtCV12ClarityBoardP33_3CE0F5628C0B5664EE69A633282EA6997WebView11Coordinator)init;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webViewWebContentProcessDidTerminate:(id)a3;
@end

@implementation WebView.Coordinator

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_1000384B0(v11, "Inline website did fail navigation with error: %s");
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_1000384B0(v11, "Inline website did fail provisional navigation with error: %s");
}

- (void)webViewWebContentProcessDidTerminate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000387B0();
}

- (_TtCV12ClarityBoardP33_3CE0F5628C0B5664EE69A633282EA6997WebView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end