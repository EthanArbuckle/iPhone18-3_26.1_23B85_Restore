@interface CHOnboardingNavigationController
- (CHOnboardingNavigationController)initWithCoder:(id)coder;
- (CHOnboardingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (CHOnboardingNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (CHOnboardingNavigationController)initWithRootViewController:(id)controller;
- (id)buddyControllerDoneAction;
- (void)buddyControllerDone:(id)done;
- (void)buddyControllerDone:(id)done nextControllerClass:(Class)class;
- (void)setBuddyControllerDoneAction:(id)action;
@end

@implementation CHOnboardingNavigationController

- (id)buddyControllerDoneAction
{
  if (*(self + OBJC_IVAR___CHOnboardingNavigationController_buddyControllerDoneAction))
  {
    v2 = *(self + OBJC_IVAR___CHOnboardingNavigationController_buddyControllerDoneAction + 8);
    v5[4] = *(self + OBJC_IVAR___CHOnboardingNavigationController_buddyControllerDoneAction);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_1000449A8;
    v5[3] = &unk_10084E500;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBuddyControllerDoneAction:(id)action
{
  v4 = _Block_copy(action);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_10016B148;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___CHOnboardingNavigationController_buddyControllerDoneAction);
  v8 = *(self + OBJC_IVAR___CHOnboardingNavigationController_buddyControllerDoneAction);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_1000245E0(v8);
}

- (CHOnboardingNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7 = (self + OBJC_IVAR___CHOnboardingNavigationController_buddyControllerDoneAction);
  v8 = type metadata accessor for OnboardingNavigationController();
  *v7 = 0;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(CHOnboardingNavigationController *)&v10 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (CHOnboardingNavigationController)initWithRootViewController:(id)controller
{
  v5 = (self + OBJC_IVAR___CHOnboardingNavigationController_buddyControllerDoneAction);
  v6 = type metadata accessor for OnboardingNavigationController();
  *v5 = 0;
  v5[1] = 0;
  v8.receiver = self;
  v8.super_class = v6;
  return [(CHOnboardingNavigationController *)&v8 initWithRootViewController:controller];
}

- (CHOnboardingNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = (self + OBJC_IVAR___CHOnboardingNavigationController_buddyControllerDoneAction);
    *v6 = 0;
    v6[1] = 0;
    bundleCopy = bundle;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = (self + OBJC_IVAR___CHOnboardingNavigationController_buddyControllerDoneAction);
    *v9 = 0;
    v9[1] = 0;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for OnboardingNavigationController();
  v11 = [(CHOnboardingNavigationController *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

- (CHOnboardingNavigationController)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR___CHOnboardingNavigationController_buddyControllerDoneAction);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for OnboardingNavigationController();
  coderCopy = coder;
  v6 = [(CHOnboardingNavigationController *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (void)buddyControllerDone:(id)done
{
  v3 = *(self + OBJC_IVAR___CHOnboardingNavigationController_buddyControllerDoneAction);
  if (v3)
  {
    selfCopy = self;
    v5 = sub_10000B210(v3);
    v3(v5);

    sub_1000245E0(v3);
  }
}

- (void)buddyControllerDone:(id)done nextControllerClass:(Class)class
{
  v4 = *(self + OBJC_IVAR___CHOnboardingNavigationController_buddyControllerDoneAction);
  if (v4)
  {
    selfCopy = self;
    v6 = sub_10000B210(v4);
    v4(v6);

    sub_1000245E0(v4);
  }
}

@end