@interface IMBWebViewController
- (_TtC8Business20IMBWebViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadURL:(id)a3;
- (void)setupConstraints;
- (void)setupSubviews;
- (void)updateNavigationBar;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation IMBWebViewController

- (void)loadURL:(id)a3
{
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB6AC();
  v10 = self;
  sub_1000AB67C(v11);
  v13 = v12;
  v14 = type metadata accessor for IMBWebViewController();
  v15.receiver = v10;
  v15.super_class = v14;
  [(IMBWebViewController *)&v15 loadURL:v13];

  sub_100072924();
  [(IMBWebViewController *)v10 updateNavigationBar];

  (*(v5 + 8))(v9, v4);
}

- (void)setupSubviews
{
  v2 = self;
  sub_100072BC4();
}

- (void)setupConstraints
{
  v2 = self;
  sub_100072E54();
}

- (void)updateNavigationBar
{
  v2 = self;
  sub_100073B40();
}

- (_TtC8Business20IMBWebViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100073EB4(v6);
}

@end