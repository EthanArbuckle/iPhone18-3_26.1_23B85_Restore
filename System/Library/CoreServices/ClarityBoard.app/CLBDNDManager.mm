@interface CLBDNDManager
+ (CLBDNDManager)sharedInstance;
- (unint64_t)resolveBehaviorForBulletin:(id)bulletin;
- (unint64_t)resolveBehaviorForClientEventDetails:(id)details;
@end

@implementation CLBDNDManager

+ (CLBDNDManager)sharedInstance
{
  if (qword_100331188 != -1)
  {
    sub_100285588();
  }

  v3 = qword_100331180;

  return v3;
}

- (unint64_t)resolveBehaviorForBulletin:(id)bulletin
{
  clarity_clientEventDetails = [bulletin clarity_clientEventDetails];
  v5 = [(CLBDNDManager *)self resolveBehaviorForClientEventDetails:clarity_clientEventDetails];

  return v5;
}

- (unint64_t)resolveBehaviorForClientEventDetails:(id)details
{
  detailsCopy = details;
  v4 = [DNDEventBehaviorResolutionService serviceForClientIdentifier:@"com.apple.private.ClarityBoard.dnd"];
  v8 = 0;
  v5 = [v4 resolveBehaviorForEventDetails:detailsCopy error:&v8];

  v6 = [v5 interruptionSuppression] != 0;
  return v6;
}

@end