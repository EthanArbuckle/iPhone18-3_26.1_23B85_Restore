@interface MetricsPageViewController
- (_TtC8ShelfKit25MetricsPageViewController)initWithCoder:(id)a3;
- (_TtC8ShelfKit25MetricsPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation MetricsPageViewController

- (_TtC8ShelfKit25MetricsPageViewController)initWithCoder:(id)a3
{
  result = sub_3EE574();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  MetricsPageViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  MetricsPageViewController.viewWillAppear(_:)(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  MetricsPageViewController.viewDidAppear(_:)(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  MetricsPageViewController.viewWillDisappear(_:)(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(MetricsPageViewController *)&v4 viewDidDisappear:v3];
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(MetricsPageViewController *)&v15 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC8ShelfKit25MetricsPageViewController_viewController] view];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v4 setFrame:{v8, v10, v12, v14}];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (_TtC8ShelfKit25MetricsPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end