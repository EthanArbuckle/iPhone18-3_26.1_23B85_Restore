@interface BKAchievementsNotificationController
+ (NSString)categoryIdentifier;
+ (int64_t)goalTypeFromNotificationUserInfo:(id)a3;
- (BKAchievementsNotificationController)init;
@end

@implementation BKAchievementsNotificationController

+ (NSString)categoryIdentifier
{
  v2 = sub_1007A2214();

  return v2;
}

+ (int64_t)goalTypeFromNotificationUserInfo:(id)a3
{
  v3 = sub_1007A2044();
  v4 = _s5Books34AchievementsNotificationControllerC8goalType4from13BookAnalytics011BridgedGoalF0OSDySSypG_tFZ_0(v3);

  return v4;
}

- (BKAchievementsNotificationController)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(BKAchievementsNotificationController *)&v3 init];
}

@end