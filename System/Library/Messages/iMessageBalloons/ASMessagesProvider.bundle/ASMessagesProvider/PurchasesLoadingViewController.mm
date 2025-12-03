@interface PurchasesLoadingViewController
- (_TtC18ASMessagesProvider30PurchasesLoadingViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider30PurchasesLoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PurchasesLoadingViewController

- (_TtC18ASMessagesProvider30PurchasesLoadingViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_loggedInUserPurchases) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_familyPurchases) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_607F8C();
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(PurchasesLoadingViewController *)selfCopy traitCollection];
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

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_608264();
}

- (_TtC18ASMessagesProvider30PurchasesLoadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end