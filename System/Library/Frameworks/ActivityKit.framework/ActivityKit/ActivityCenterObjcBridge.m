@interface ActivityCenterObjcBridge
+ (_TtC11ActivityKit24ActivityCenterObjcBridge)shared;
- (BOOL)isActivityActiveWithIdentifier:(id)a3;
- (id)observeActivitiesExceedingReducedPushBudgetWithHandler:(id)a3;
- (void)disableActivitiesWithBundleIdentifier:(id)a3;
- (void)endActivity:(id)a3;
@end

@implementation ActivityCenterObjcBridge

+ (_TtC11ActivityKit24ActivityCenterObjcBridge)shared
{
  if (qword_1ED7088F8 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED708900;

  return v3;
}

- (BOOL)isActivityActiveWithIdentifier:(id)a3
{
  v4 = sub_1A2D08444();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_1A2CF0CAC(v4, v6);

  return v4 & 1;
}

- (void)endActivity:(id)a3
{
  v4 = sub_1A2D08444();
  v6 = v5;
  v7 = self;
  sub_1A2CF0EE8(v4, v6);
}

- (void)disableActivitiesWithBundleIdentifier:(id)a3
{
  v4 = sub_1A2D08444();
  v6 = v5;
  v7 = self;
  sub_1A2CF1CB4(v4, v6);
}

- (id)observeActivitiesExceedingReducedPushBudgetWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC11ActivityKit24ActivityCenterObjcBridge__activityCenter);
  v7 = self;
  v8 = sub_1A2CEF804(sub_1A2CF22B8, v5);

  return v8;
}

@end