@interface WebViewButton
- (BOOL)isHighlighted;
- (void)setHighlighted:(BOOL)highlighted;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webViewWebContentProcessDidTerminate:(id)terminate;
@end

@implementation WebViewButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WebViewButton();
  return [(WebViewButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = type metadata accessor for WebViewButton();
  v4 = v5.receiver;
  [(WebViewButton *)&v5 setHighlighted:highlightedCopy];
  [*&v4[OBJC_IVAR____TtC11AssetViewer13WebViewButton_highlightedOverlayView] setHidden_];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  sub_24134F818(MEMORY[0x277D85B58], "webView:didFinish", 1);
}

- (void)webViewWebContentProcessDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  selfCopy = self;
  sub_24134F818(MEMORY[0x277D85B48], "webViewWebContentProcessDidTerminate:", 0);
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_24134F964(errorCopy, "webView:didFail:withError:%s");
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  viewCopy = view;
  navigationCopy = navigation;
  errorCopy = error;
  selfCopy = self;
  sub_24134F964(errorCopy, "webView:didFailProvisionalNavigation:withError:%s");
}

@end