@interface AMSUIDDynamicViewController
- (ACAccount)account;
- (AMSBagProtocol)bag;
- (AMSProcessInfo)clientInfo;
- (AMSUIDDynamicViewController)initWithBag:(id)bag URL:(id)l;
- (AMSUIDDynamicViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AMSUIDDynamicViewControllerDelegate)delegate;
- (AMSUIMediaContentDelegate)mediaContentDelegate;
- (NSString)mediaClientIdentifier;
- (NSString)title;
- (UINavigationItem)navigationItem;
- (id)animationControllerForDismissedController:(id)controller;
- (id)preload;
- (void)cancelButtonAction;
- (void)didEnterBackground;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)legacyPurchaseDidSucceed:(id)succeed;
- (void)loadView;
- (void)reloadContentViewImpressionItems;
- (void)setAccount:(id)account;
- (void)setBag:(id)bag;
- (void)setClientInfo:(id)info;
- (void)setDelegate:(id)delegate;
- (void)setMediaContentDelegate:(id)delegate;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willEnterForeground;
@end

@implementation AMSUIDDynamicViewController

- (AMSUIDDynamicViewController)initWithBag:(id)bag URL:(id)l
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

- (void)setAccount:(id)account
{
  accountCopy = account;
  selfCopy = self;
  DynamicViewController.account.setter(account);
}

- (AMSBagProtocol)bag
{
  v2 = DynamicViewController.bag.getter();

  return v2;
}

- (void)setBag:(id)bag
{
  swift_unknownObjectRetain();
  selfCopy = self;
  DynamicViewController.bag.setter(bag);
}

- (AMSProcessInfo)clientInfo
{
  v2 = DynamicViewController.clientInfo.getter();

  return v2;
}

- (void)setClientInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  DynamicViewController.clientInfo.setter(info);
}

- (AMSUIDDynamicViewControllerDelegate)delegate
{
  v2 = DynamicViewController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  DynamicViewController.delegate.setter();
}

- (AMSUIMediaContentDelegate)mediaContentDelegate
{
  v2 = DynamicViewController.mediaContentDelegate.getter();

  return v2;
}

- (void)setMediaContentDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_1CA14AA4C();

  return v3;
}

- (void)reloadContentViewImpressionItems
{
  selfCopy = self;
  sub_1CA14AC2C();
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  DynamicViewController.dismiss(animated:completion:)(animated, v6, v7);
  sub_1CA0EBE84(v6);
}

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = DynamicViewController.navigationItem.getter();

  return v3;
}

- (NSString)title
{
  selfCopy = self;
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
  selfCopy = self;
  DynamicViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  DynamicViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  DynamicViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  DynamicViewController.viewWillLayoutSubviews()();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  DynamicViewController.viewDidDisappear(_:)(disappear);
}

- (void)cancelButtonAction
{
  selfCopy = self;
  sub_1CA134C54();
}

- (void)legacyPurchaseDidSucceed:(id)succeed
{
  v4 = sub_1CA19AC38();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA19AC08();
  selfCopy = self;
  sub_1CA14FC70(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)didEnterBackground
{
  selfCopy = self;
  sub_1CA1521DC();
}

- (void)willEnterForeground
{
  selfCopy = self;
  sub_1CA1523F8();
}

- (AMSUIDDynamicViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1CA19C118();
  }

  bundleCopy = bundle;
  DynamicViewController.init(nibName:bundle:)();
}

- (id)animationControllerForDismissedController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  DynamicViewController.animationController(forDismissed:)();

  return 0;
}

@end