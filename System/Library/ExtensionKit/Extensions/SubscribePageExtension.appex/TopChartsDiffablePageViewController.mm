@interface TopChartsDiffablePageViewController
- (_TtC22SubscribePageExtension35TopChartsDiffablePageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)showCategoriesFor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TopChartsDiffablePageViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1006D8E20();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  v4 = v6.receiver;
  [(TopChartsDiffablePageViewController *)&v6 viewWillAppear:v3];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_isPresenterLoaded;
  if ((v4[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_isPresenterLoaded] & 1) == 0)
  {
    sub_10074B8A4();
    v4[v5] = 1;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  v4 = v5.receiver;
  [(TopChartsDiffablePageViewController *)&v5 viewDidAppear:v3];
  sub_10074D0A4();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100752BC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TopChartsDiffablePageViewController();
  v11.receiver = self;
  v11.super_class = v9;
  v10 = self;
  [(TopChartsDiffablePageViewController *)&v11 viewWillDisappear:v3];
  sub_100752BB4();
  sub_10074D0C4();
  (*(v6 + 8))(v8, v5);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1006D98C0();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(TopChartsDiffablePageViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  v4 = v8.receiver;
  v5 = [(TopChartsDiffablePageViewController *)&v8 contentScrollViewForEdge:a3];
  if (!v5)
  {
    v6 = objc_allocWithZone(UIScrollView);
    v5 = [v6 init];
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(TopChartsDiffablePageViewController *)&v6 traitCollectionDidChange:v4];
  if ([v5 isViewLoaded])
  {
    sub_1006D8218(0, 0, 1);
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1006D9B9C(a4, width, height);
  swift_unknownObjectRelease();
}

- (void)showCategoriesFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1006DD9BC();
}

- (_TtC22SubscribePageExtension35TopChartsDiffablePageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end