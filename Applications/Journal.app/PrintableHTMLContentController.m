@interface PrintableHTMLContentController
- (_TtC7Journal30PrintableHTMLContentController)init;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation PrintableHTMLContentController

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1003C1618(v6);
}

- (_TtC7Journal30PrintableHTMLContentController)init
{
  v3 = OBJC_IVAR____TtC7Journal30PrintableHTMLContentController_webView;
  *(&self->super.isa + v3) = [objc_allocWithZone(WKWebView) init];
  v4 = OBJC_IVAR____TtC7Journal30PrintableHTMLContentController_continuation;
  v5 = sub_1000F24EC(&qword_100AE1BC8);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v7.receiver = self;
  v7.super_class = type metadata accessor for PrintableHTMLContentController();
  return [(PrintableHTMLContentController *)&v7 init];
}

@end