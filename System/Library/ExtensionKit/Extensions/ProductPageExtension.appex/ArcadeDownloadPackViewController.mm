@interface ArcadeDownloadPackViewController
- (_TtC20ProductPageExtension32ArcadeDownloadPackViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC20ProductPageExtension32ArcadeDownloadPackViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
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
  sub_1007306F4();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1007308CC(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100730B48(disappear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_100731160();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100731290();
}

- (void)scrollViewDidScroll:(id)scroll
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  scrollCopy = scroll;
  v5 = v11.receiver;
  [(ArcadeDownloadPackViewController *)&v11 scrollViewDidScroll:scrollCopy];
  v6 = *&v5[OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_pageView + 8];
  v7 = sub_100760C8C();
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

- (_TtC20ProductPageExtension32ArcadeDownloadPackViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension32ArcadeDownloadPackViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end