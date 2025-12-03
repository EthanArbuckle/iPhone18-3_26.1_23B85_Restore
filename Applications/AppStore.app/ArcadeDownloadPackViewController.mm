@interface ArcadeDownloadPackViewController
- (_TtC8AppStore32ArcadeDownloadPackViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC8AppStore32ArcadeDownloadPackViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation ArcadeDownloadPackViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1005D9740();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1005D9918(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1005D9C28(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1005DA2C4();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1005DA3F4();
}

- (void)scrollViewDidScroll:(id)scroll
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  scrollCopy = scroll;
  v5 = v11.receiver;
  [(ArcadeDownloadPackViewController *)&v11 scrollViewDidScroll:scrollCopy];
  v6 = *&v5[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView + 8];
  v7 = BasePresenter.impressionsCalculator.getter();
  view = [v5 view];
  if (view)
  {
    v9 = view;
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v7, v9, ObjectType, v6);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC8AppStore32ArcadeDownloadPackViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore32ArcadeDownloadPackViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end