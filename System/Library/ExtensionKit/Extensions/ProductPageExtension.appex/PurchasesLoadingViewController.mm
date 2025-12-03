@interface PurchasesLoadingViewController
- (_TtC20ProductPageExtension30PurchasesLoadingViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension30PurchasesLoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PurchasesLoadingViewController

- (_TtC20ProductPageExtension30PurchasesLoadingViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_loggedInUserPurchases) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_familyPurchases) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100565424();
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
  sub_1005656FC();
}

- (_TtC20ProductPageExtension30PurchasesLoadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end