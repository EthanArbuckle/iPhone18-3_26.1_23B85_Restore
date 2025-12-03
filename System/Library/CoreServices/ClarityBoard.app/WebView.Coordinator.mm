@interface WebView.Coordinator
- (_TtCV12ClarityBoardP33_3CE0F5628C0B5664EE69A633282EA6997WebView11Coordinator)init;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webViewWebContentProcessDidTerminate:(id)terminate;
@end

@implementation WebView.Coordinator

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_1000384B0(errorCopy, "Inline website did fail navigation with error: %s");
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_1000384B0(errorCopy, "Inline website did fail provisional navigation with error: %s");
}

- (void)webViewWebContentProcessDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  selfCopy = self;
  sub_1000387B0();
}

- (_TtCV12ClarityBoardP33_3CE0F5628C0B5664EE69A633282EA6997WebView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end