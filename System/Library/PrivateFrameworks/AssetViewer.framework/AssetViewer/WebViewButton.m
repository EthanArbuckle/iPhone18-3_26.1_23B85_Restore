@interface WebViewButton
- (BOOL)isHighlighted;
- (void)setHighlighted:(BOOL)a3;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
- (void)webViewWebContentProcessDidTerminate:(id)a3;
@end

@implementation WebViewButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WebViewButton();
  return [(WebViewButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for WebViewButton();
  v4 = v5.receiver;
  [(WebViewButton *)&v5 setHighlighted:v3];
  [*&v4[OBJC_IVAR____TtC11AssetViewer13WebViewButton_highlightedOverlayView] setHidden_];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_24134F818(MEMORY[0x277D85B58], "webView:didFinish", 1);
}

- (void)webViewWebContentProcessDidTerminate:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24134F818(MEMORY[0x277D85B48], "webViewWebContentProcessDidTerminate:", 0);
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_24134F964(v11, "webView:didFail:withError:%s");
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_24134F964(v11, "webView:didFailProvisionalNavigation:withError:%s");
}

@end