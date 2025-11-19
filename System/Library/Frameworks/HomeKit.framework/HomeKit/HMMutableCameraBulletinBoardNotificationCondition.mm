@interface HMMutableCameraBulletinBoardNotificationCondition
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableCameraBulletinBoardNotificationCondition

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HMCameraBulletinBoardNotificationCondition);
  v5 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventReasonCondition];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setSignificantEventReasonCondition:v5];

  v6 = [(HMCameraBulletinBoardNotificationCondition *)self significantEventPersonFamiliarityCondition];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setSignificantEventPersonFamiliarityCondition:v6];

  v7 = [(HMCameraBulletinBoardNotificationCondition *)self dateComponentsPredicate];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setDateComponentsPredicate:v7];

  v8 = [(HMCameraBulletinBoardNotificationCondition *)self presencePredicate];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setPresencePredicate:v8];

  return v4;
}

@end