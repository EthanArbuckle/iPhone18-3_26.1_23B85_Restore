@interface LoadingPageViewController
- (_TtC18ASMessagesProvider25LoadingPageViewController)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider25LoadingPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LoadingPageViewController

- (_TtC18ASMessagesProvider25LoadingPageViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_contentViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_startedAsFlowPreview) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_673654();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_673870();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(LoadingPageViewController *)v2 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (_TtC18ASMessagesProvider25LoadingPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end