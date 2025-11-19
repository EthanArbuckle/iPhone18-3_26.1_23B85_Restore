@interface LoadingPageViewController
- (_TtC22SubscribePageExtension25LoadingPageViewController)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension25LoadingPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LoadingPageViewController

- (_TtC22SubscribePageExtension25LoadingPageViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_contentViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_overlayViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension25LoadingPageViewController_startedAsFlowPreview) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1005D3C7C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1005D3E98();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(LoadingPageViewController *)v2 traitCollection];
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

- (_TtC22SubscribePageExtension25LoadingPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end