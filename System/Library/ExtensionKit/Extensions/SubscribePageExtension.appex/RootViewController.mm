@interface RootViewController
- (_TtC22SubscribePageExtension18RootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)animationControllerForDismissedController:(id)controller;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation RootViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(RootViewController *)&v9 viewWillAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_childViewController];
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      [v7 setNavigationBarHidden:{1, v9.receiver, v9.super_class}];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  ObjectType = swift_getObjectType();
  v6 = sub_100744C64();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = self;
  v12.super_class = ObjectType;
  selfCopy = self;
  [(RootViewController *)&v12 viewDidAppear:appearCopy];
  *(swift_allocObject() + 16) = selfCopy;
  (*(v7 + 104))(v9, enum case for BootstrapPhase.initialBootstrap(_:), v6);
  v11 = selfCopy;
  sub_10074D154();

  (*(v7 + 8))(v9, v6);
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  v5 = [objc_allocWithZone(type metadata accessor for SubscribePagePresentationController()) initWithPresentedViewController:controller presentingViewController:viewController];

  return v5;
}

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  v5 = [objc_allocWithZone(type metadata accessor for FadeInPresentationAnimator()) init];

  return v5;
}

- (id)animationControllerForDismissedController:(id)controller
{
  v3 = [objc_allocWithZone(type metadata accessor for FadeOutDismissalAnimator()) init];

  return v3;
}

- (_TtC22SubscribePageExtension18RootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100753094();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1005BA77C(v5, v7, bundle);
}

@end