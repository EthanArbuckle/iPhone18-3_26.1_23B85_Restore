@interface ArticleContainerViewController
- (UIViewController)childViewControllerForStatusBarHidden;
- (_TtC8AppStore30ArticleContainerViewController)initWithCoder:(id)coder;
- (_TtC8AppStore30ArticleContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation ArticleContainerViewController

- (_TtC8AppStore30ArticleContainerViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_allowTraitCollectionOverrides) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_previousShouldOverrideTraitCollections) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  sub_100750664();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1007509F0();
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(ArticleContainerViewController *)&v6 traitCollectionDidChange:changeCopy];
  sub_100750794();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(ArticleContainerViewController *)selfCopy traitCollection];
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

- (UIViewController)childViewControllerForStatusBarHidden
{
  topViewController = [*(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_wrapperViewController) topViewController];

  return topViewController;
}

- (_TtC8AppStore30ArticleContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end