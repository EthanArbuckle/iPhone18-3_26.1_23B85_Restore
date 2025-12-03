@interface InAppPurchaseInstallPageViewController
- (_TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController)initWithNibName:(id)name bundle:(id)bundle;
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
  sub_59FDD0(1);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_isInBackground) = 0;
}

- (void)didEnterBackground
{
  selfCopy = self;
  sub_59FDD0(0);
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_isInBackground) = 1;
  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded) = 0;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_5A0558();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_5A07E4(appear);
}

- (void)as_viewWillBecomeFullyVisible
{
  selfCopy = self;
  sub_5A0CA4(&selRef_as_viewWillBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.willAppear(_:));
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_5A0A64(appear);
}

- (void)as_viewDidBecomeFullyVisible
{
  selfCopy = self;
  sub_5A0CA4(&selRef_as_viewDidBecomeFullyVisible, &enum case for StoreViewControllerLifecycleEvent.didAppear(_:));
}

- (void)as_viewWillBecomePartiallyVisible
{
  selfCopy = self;
  sub_5A0EB8();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_5A10CC(disappear);
}

- (void)as_viewDidBecomePartiallyVisible
{
  selfCopy = self;
  sub_5A0CA4(&selRef_as_viewDidBecomePartiallyVisible, &enum case for StoreViewControllerLifecycleEvent.didDisappear(_:));
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_5A1364(disappear);
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for InAppPurchaseInstallPageViewController();
  v2 = v5.receiver;
  [(InAppPurchaseInstallPageViewController *)&v5 viewWillLayoutSubviews];
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_activeView])
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      swift_unknownObjectRetain();
      sub_5A3DD8(v4);
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

  if (userInterfaceIdiom == &dword_0 + 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (_TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end