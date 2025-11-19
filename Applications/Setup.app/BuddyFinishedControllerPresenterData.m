@interface BuddyFinishedControllerPresenterData
- (BuddyFinishedController)controller;
- (UINavigationController)navigationController;
- (_TtC5Setup36BuddyFinishedControllerPresenterData)init;
- (_TtC5Setup36BuddyFinishedControllerPresenterData)initWithController:(id)a3 navigationController:(id)a4 readyHandler:(id)a5 getStartedHandler:(id)a6;
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

- (_TtC5Setup36BuddyFinishedControllerPresenterData)initWithController:(id)a3 navigationController:(id)a4 readyHandler:(id)a5 getStartedHandler:(id)a6
{
  v9 = _Block_copy(a5);
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = a3;
  v14 = a4;
  v15 = sub_100021788(a3, a4, sub_10002215C, v11, sub_1000221E4, v12);

  return v15;
}

- (void)triggerPresentationHandler
{
  v2 = self;
  sub_10001CBB0();
}

- (_TtC5Setup36BuddyFinishedControllerPresenterData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end