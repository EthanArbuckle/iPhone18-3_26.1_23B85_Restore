@interface ArcadeDownloadPackViewController
- (_TtC8AppStore32ArcadeDownloadPackViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC8AppStore32ArcadeDownloadPackViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)scrollViewDidScroll:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation ArcadeDownloadPackViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1005D9740();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1005D9918(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1005D9C28(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1005DA2C4();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1005DA3F4();
}

- (void)scrollViewDidScroll:(id)a3
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  v4 = a3;
  v5 = v11.receiver;
  [(ArcadeDownloadPackViewController *)&v11 scrollViewDidScroll:v4];
  v6 = *&v5[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView + 8];
  v7 = BasePresenter.impressionsCalculator.getter();
  v8 = [v5 view];
  if (v8)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v7, v9, ObjectType, v6);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC8AppStore32ArcadeDownloadPackViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore32ArcadeDownloadPackViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end