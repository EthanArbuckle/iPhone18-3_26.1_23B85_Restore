@interface BuddyFinishedControllerPresenterData
- (BuddyFinishedController)controller;
- (UINavigationController)navigationController;
- (_TtC5Setup36BuddyFinishedControllerPresenterData)init;
- (_TtC5Setup36BuddyFinishedControllerPresenterData)initWithController:(id)controller navigationController:(id)navigationController readyHandler:(id)handler getStartedHandler:(id)startedHandler;
- (id)getStartedHandler;
- (void)triggerPresentationHandler;
@end

@implementation BuddyFinishedControllerPresenterData

- (BuddyFinishedController)controller
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UINavigationController)navigationController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)getStartedHandler
{
  v2 = *(self + OBJC_IVAR____TtC5Setup36BuddyFinishedControllerPresenterData_getStartedHandler + 8);
  v5[4] = *(self + OBJC_IVAR____TtC5Setup36BuddyFinishedControllerPresenterData_getStartedHandler);
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10002E3B4;
  v5[3] = &unk_100328EA0;
  v3 = _Block_copy(v5);

  return v3;
}

- (_TtC5Setup36BuddyFinishedControllerPresenterData)initWithController:(id)controller navigationController:(id)navigationController readyHandler:(id)handler getStartedHandler:(id)startedHandler
{
  v9 = _Block_copy(handler);
  v10 = _Block_copy(startedHandler);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  controllerCopy = controller;
  navigationControllerCopy = navigationController;
  v15 = sub_100021788(controller, navigationController, sub_10002215C, v11, sub_1000221E4, v12);

  return v15;
}

- (void)triggerPresentationHandler
{
  selfCopy = self;
  sub_10001CBB0();
}

- (_TtC5Setup36BuddyFinishedControllerPresenterData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end