@interface InAppPurchaseInstallPageViewController
- (_TtC20ProductPageExtension38InAppPurchaseInstallPageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)as_viewDidBecomeFullyVisible;
- (void)as_viewDidBecomePartiallyVisible;
- (void)as_viewWillBecomeFullyVisible;
- (void)as_viewWillBecomePartiallyVisible;
- (void)didEnterBackground;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)willEnterForeground;
@end

@implementation InAppPurchaseInstallPageViewController

- (void)willEnterForeground
{
  selfCopy = self;
  sub_1000D46DC(1);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_isInBackground) = 0;
}

- (void)didEnterBackground
{
  selfCopy = self;
  sub_1000D46DC(0);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_isInBackground) = 1;
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded) = 0;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000D4E64();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000D50F0(appear);
}

- (void)as_viewWillBecomeFullyVisible
{
  selfCopy = self;
  sub_1000D5708(&selRef_as_viewWillBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.willAppear(_:));
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000D5370(appear);
}

- (void)as_viewDidBecomeFullyVisible
{
  selfCopy = self;
  sub_1000D5708(&selRef_as_viewDidBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.didAppear(_:));
}

- (void)as_viewWillBecomePartiallyVisible
{
  selfCopy = self;
  sub_1000D591C();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000D5B30(disappear);
}

- (void)as_viewDidBecomePartiallyVisible
{
  selfCopy = self;
  sub_1000D5708(&selRef_as_viewDidBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.didDisappear(_:));
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000D5DC8(disappear);
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InAppPurchaseInstallPageViewController();
  v2 = v5.receiver;
  [(InAppPurchaseInstallPageViewController *)&v5 viewWillLayoutSubviews];
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension38InAppPurchaseInstallPageViewController_activeView])
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      swift_unknownObjectRetain();
      sub_1000D883C(v4);
      [v4 setFrame:{v5.receiver, v5.super_class}];
      swift_unknownObjectRelease();
    }
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  traitCollection = [(InAppPurchaseInstallPageViewController *)selfCopy traitCollection];
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

- (_TtC20ProductPageExtension38InAppPurchaseInstallPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end