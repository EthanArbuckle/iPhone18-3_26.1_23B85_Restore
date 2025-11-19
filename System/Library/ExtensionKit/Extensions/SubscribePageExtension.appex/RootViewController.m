@interface RootViewController
- (_TtC22SubscribePageExtension18RootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation RootViewController

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(RootViewController *)&v9 viewWillAppear:v3];
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

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v6 = sub_100744C64();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = self;
  [(RootViewController *)&v12 viewDidAppear:v3];
  *(swift_allocObject() + 16) = v10;
  (*(v7 + 104))(v9, enum case for BootstrapPhase.initialBootstrap(_:), v6);
  v11 = v10;
  sub_10074D154();

  (*(v7 + 8))(v9, v6);
}

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v5 = [objc_allocWithZone(type metadata accessor for SubscribePagePresentationController()) initWithPresentedViewController:a3 presentingViewController:a4];

  return v5;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = [objc_allocWithZone(type metadata accessor for FadeInPresentationAnimator()) init];

  return v5;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = [objc_allocWithZone(type metadata accessor for FadeOutDismissalAnimator()) init];

  return v3;
}

- (_TtC22SubscribePageExtension18RootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100753094();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1005BA77C(v5, v7, a4);
}

@end