@interface LoadingPageViewController
- (_TtC18ASMessagesProvider25LoadingPageViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider25LoadingPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LoadingPageViewController

- (_TtC18ASMessagesProvider25LoadingPageViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_673654();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_673870();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(LoadingPageViewController *)selfCopy traitCollection];
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

- (_TtC18ASMessagesProvider25LoadingPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end