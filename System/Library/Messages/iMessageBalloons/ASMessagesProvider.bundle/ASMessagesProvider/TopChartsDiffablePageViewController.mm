@interface TopChartsDiffablePageViewController
- (_TtC18ASMessagesProvider35TopChartsDiffablePageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (unint64_t)supportedInterfaceOrientations;
- (void)showCategoriesFor:(id)for;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TopChartsDiffablePageViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_6C73E0();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  v4 = v6.receiver;
  [(TopChartsDiffablePageViewController *)&v6 viewWillAppear:appearCopy];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_isPresenterLoaded;
  if ((v4[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_isPresenterLoaded] & 1) == 0)
  {
    sub_761860();
    v4[v5] = 1;
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  v4 = v5.receiver;
  [(TopChartsDiffablePageViewController *)&v5 viewDidAppear:appearCopy];
  sub_7630B0();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_768D60();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TopChartsDiffablePageViewController();
  v11.receiver = self;
  v11.super_class = v9;
  selfCopy = self;
  [(TopChartsDiffablePageViewController *)&v11 viewWillDisappear:disappearCopy];
  sub_768D50();
  sub_7630D0();
  (*(v6 + 8))(v8, v5);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_6C7E80();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(TopChartsDiffablePageViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  v4 = v8.receiver;
  v5 = [(TopChartsDiffablePageViewController *)&v8 contentScrollViewForEdge:edge];
  if (!v5)
  {
    v6 = objc_allocWithZone(UIScrollView);
    v5 = [v6 init];
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  changeCopy = change;
  v5 = v6.receiver;
  [(TopChartsDiffablePageViewController *)&v6 traitCollectionDidChange:changeCopy];
  if ([v5 isViewLoaded])
  {
    sub_6C6860(0, 0, 1);
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_6C815C(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (void)showCategoriesFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_6CBFD0();
}

- (_TtC18ASMessagesProvider35TopChartsDiffablePageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end