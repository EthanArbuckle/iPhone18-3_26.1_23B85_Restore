@interface HMMutableCameraBulletinBoardNotificationCondition
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableCameraBulletinBoardNotificationCondition

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HMCameraBulletinBoardNotificationCondition);
  significantEventReasonCondition = [(HMCameraBulletinBoardNotificationCondition *)self significantEventReasonCondition];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setSignificantEventReasonCondition:significantEventReasonCondition];

  significantEventPersonFamiliarityCondition = [(HMCameraBulletinBoardNotificationCondition *)self significantEventPersonFamiliarityCondition];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setSignificantEventPersonFamiliarityCondition:significantEventPersonFamiliarityCondition];

  dateComponentsPredicate = [(HMCameraBulletinBoardNotificationCondition *)self dateComponentsPredicate];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setDateComponentsPredicate:dateComponentsPredicate];

  presencePredicate = [(HMCameraBulletinBoardNotificationCondition *)self presencePredicate];
  [(HMCameraBulletinBoardNotificationCondition *)v4 setPresencePredicate:presencePredicate];

  return v4;
}

@end