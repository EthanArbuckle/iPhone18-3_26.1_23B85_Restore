@interface AMSUIDDynamicViewController
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSProcessInfo)clientInfo;
- (AMSUIDDynamicViewController)initWithBag:(id)a3 URL:(id)a4;
- (AMSUIDDynamicViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AMSUIDDynamicViewControllerDelegate)delegate;
- (AMSUIMediaContentDelegate)mediaContentDelegate;
- (NSString)mediaClientIdentifier;
- (NSString)title;
- (UINavigationItem)navigationItem;
- (id)animationControllerForDismissedController:(id)a3;
- (id)preload;
- (void)cancelButtonAction;
- (void)didEnterBackground;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)legacyPurchaseDidSucceed:(id)a3;
- (void)loadView;
- (void)reloadContentViewImpressionItems;
- (void)setAccount:(id)a3;
- (void)setBag:(id)a3;
- (void)setClientInfo:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setMediaContentDelegate:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willEnterForeground;
@end

@implementation AMSUIDDynamicViewController

- (AMSUIDDynamicViewController)initWithBag:(id)a3 URL:(id)a4
{
  v4 = sub_1CA19ADF8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19ADA8();
  v7 = swift_unknownObjectRetain();
  return DynamicViewController.init(bag:URL:)(v7, v6);
}

- (ACAccount)account
{
  v2 = DynamicViewController.account.getter();

  return v2;
}

- (void)setAccount:(id)a3
{
  v5 = a3;
  v6 = self;
  DynamicViewController.account.setter(a3);
}

- (AMSBagProtocol)bag
{
  v2 = DynamicViewController.bag.getter();

  return v2;
}

- (void)setBag:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  DynamicViewController.bag.setter(a3);
}

- (AMSProcessInfo)clientInfo
{
  v2 = DynamicViewController.clientInfo.getter();

  return v2;
}

- (void)setClientInfo:(id)a3
{
  v5 = a3;
  v6 = self;
  DynamicViewController.clientInfo.setter(a3);
}

- (AMSUIDDynamicViewControllerDelegate)delegate
{
  v2 = DynamicViewController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  DynamicViewController.delegate.setter();
}

- (AMSUIMediaContentDelegate)mediaContentDelegate
{
  v2 = DynamicViewController.mediaContentDelegate.getter();

  return v2;
}

- (void)setMediaContentDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  DynamicViewController.mediaContentDelegate.setter();
}

- (NSString)mediaClientIdentifier
{
  DynamicViewController.mediaClientIdentifier.getter();
  if (v2)
  {
    v3 = sub_1CA19C0E8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)preload
{
  v2 = self;
  v3 = sub_1CA14AA4C();

  return v3;
}

- (void)reloadContentViewImpressionItems
{
  v2 = self;
  sub_1CA14AC2C();
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1CA153A7C;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  DynamicViewController.dismiss(animated:completion:)(a3, v6, v7);
  sub_1CA0EBE84(v6);
}

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = DynamicViewController.navigationItem.getter();

  return v3;
}

- (NSString)title
{
  v2 = self;
  DynamicViewController.title.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1CA19C0E8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)loadView
{
  v2 = self;
  DynamicViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  DynamicViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  DynamicViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  DynamicViewController.viewWillLayoutSubviews()();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  DynamicViewController.viewDidDisappear(_:)(a3);
}

- (void)cancelButtonAction
{
  v2 = self;
  sub_1CA134C54();
}

- (void)legacyPurchaseDidSucceed:(id)a3
{
  v4 = sub_1CA19AC38();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19AC08();
  v8 = self;
  sub_1CA14FC70(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)didEnterBackground
{
  v2 = self;
  sub_1CA1521DC();
}

- (void)willEnterForeground
{
  v2 = self;
  sub_1CA1523F8();
}

- (AMSUIDDynamicViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1CA19C118();
  }

  v5 = a4;
  DynamicViewController.init(nibName:bundle:)();
}

- (id)animationControllerForDismissedController:(id)a3
{
  v4 = a3;
  v5 = self;
  DynamicViewController.animationController(forDismissed:)();

  return 0;
}

@end