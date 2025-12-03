@interface PurchasesLoadingViewController
- (_TtC8AppStore30PurchasesLoadingViewController)initWithCoder:(id)coder;
- (_TtC8AppStore30PurchasesLoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PurchasesLoadingViewController

- (_TtC8AppStore30PurchasesLoadingViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_loggedInUserPurchases) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_familyPurchases) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore30PurchasesLoadingViewController_overlayViewController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100423BBC();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(PurchasesLoadingViewController *)selfCopy traitCollection];
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

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100423E94();
}

- (_TtC8AppStore30PurchasesLoadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end