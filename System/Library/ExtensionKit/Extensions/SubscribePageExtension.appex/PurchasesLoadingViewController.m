@interface PurchasesLoadingViewController
- (_TtC22SubscribePageExtension30PurchasesLoadingViewController)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension30PurchasesLoadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PurchasesLoadingViewController

- (_TtC22SubscribePageExtension30PurchasesLoadingViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_loggedInUserPurchases) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_familyPurchases) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30PurchasesLoadingViewController_overlayViewController) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10071BD28();
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
  sub_10071C000();
}

- (_TtC22SubscribePageExtension30PurchasesLoadingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end