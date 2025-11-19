@interface InAppPurchaseInstallPageViewController
- (_TtC8AppStore38InAppPurchaseInstallPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)as_viewDidBecomeFullyVisible;
- (void)as_viewDidBecomePartiallyVisible;
- (void)as_viewWillBecomeFullyVisible;
- (void)as_viewWillBecomePartiallyVisible;
- (void)didEnterBackground;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willEnterForeground;
@end

@implementation InAppPurchaseInstallPageViewController

- (void)willEnterForeground
{
  v2 = self;
  sub_10022F8D4(1);
  *(&v2->super.super.super.isa + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_isInBackground) = 0;
}

- (void)didEnterBackground
{
  v2 = self;
  sub_10022F8D4(0);
  *(&v2->super.super.super.isa + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_isInBackground) = 1;
  *(&v2->super.super.super.isa + OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded) = 0;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10023005C();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1002302E8(a3);
}

- (void)as_viewWillBecomeFullyVisible
{
  v2 = self;
  sub_100230900(&selRef_as_viewWillBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.willAppear(_:));
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100230568(a3);
}

- (void)as_viewDidBecomeFullyVisible
{
  v2 = self;
  sub_100230900(&selRef_as_viewDidBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.didAppear(_:));
}

- (void)as_viewWillBecomePartiallyVisible
{
  v2 = self;
  sub_100230B14();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100230D28(a3);
}

- (void)as_viewDidBecomePartiallyVisible
{
  v2 = self;
  sub_100230900(&selRef_as_viewDidBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.didDisappear(_:));
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100230FC0(a3);
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InAppPurchaseInstallPageViewController();
  v2 = v5.receiver;
  [(InAppPurchaseInstallPageViewController *)&v5 viewWillLayoutSubviews];
  if (*&v2[OBJC_IVAR____TtC8AppStore38InAppPurchaseInstallPageViewController_activeView])
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      swift_unknownObjectRetain();
      sub_100233A34(v4);
      [v4 setFrame:{v5.receiver, v5.super_class}];
      swift_unknownObjectRelease();
    }
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = self;
  v3 = [(InAppPurchaseInstallPageViewController *)v2 traitCollection];
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

- (_TtC8AppStore38InAppPurchaseInstallPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end