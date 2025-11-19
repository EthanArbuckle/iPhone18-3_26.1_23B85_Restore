@interface PurchasesLoadingViewController
- (_TtC20ProductPageExtension30PurchasesLoadingViewController)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension30PurchasesLoadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PurchasesLoadingViewController

- (_TtC20ProductPageExtension30PurchasesLoadingViewController)initWithCoder:(id)a3
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
  v2 = self;
  sub_100565424();
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(PurchasesLoadingViewController *)v2 traitCollection];
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

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1005656FC();
}

- (_TtC20ProductPageExtension30PurchasesLoadingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end