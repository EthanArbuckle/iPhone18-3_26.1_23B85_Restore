@interface LoadingPageViewController
- (_TtC20ProductPageExtension25LoadingPageViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension25LoadingPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LoadingPageViewController

- (_TtC20ProductPageExtension25LoadingPageViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_contentViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_overlayViewController) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension25LoadingPageViewController_startedAsFlowPreview) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10069F1D4();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_10069F3F0();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(LoadingPageViewController *)selfCopy traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (_TtC20ProductPageExtension25LoadingPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end