@interface IMBWebViewController
- (_TtC8Business20IMBWebViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadURL:(id)l;
- (void)setupConstraints;
- (void)setupSubviews;
- (void)updateNavigationBar;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation IMBWebViewController

- (void)loadURL:(id)l
{
  v4 = sub_1000AB6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB6AC();
  selfCopy = self;
  sub_1000AB67C(v11);
  v13 = v12;
  v14 = type metadata accessor for IMBWebViewController();
  v15.receiver = selfCopy;
  v15.super_class = v14;
  [(IMBWebViewController *)&v15 loadURL:v13];

  sub_100072924();
  [(IMBWebViewController *)selfCopy updateNavigationBar];

  (*(v5 + 8))(v9, v4);
}

- (void)setupSubviews
{
  selfCopy = self;
  sub_100072BC4();
}

- (void)setupConstraints
{
  selfCopy = self;
  sub_100072E54();
}

- (void)updateNavigationBar
{
  selfCopy = self;
  sub_100073B40();
}

- (_TtC8Business20IMBWebViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  viewCopy = view;
  navigationCopy = navigation;
  selfCopy = self;
  sub_100073EB4(viewCopy);
}

@end