@interface ATXInternalMagicalMomentsAppPredictionNotification
- (ATXInternalMagicalMomentsAppPredictionNotification)init;
@end

@implementation ATXInternalMagicalMomentsAppPredictionNotification

- (ATXInternalMagicalMomentsAppPredictionNotification)init
{
  v6.receiver = self;
  v6.super_class = ATXInternalMagicalMomentsAppPredictionNotification;
  v2 = [(ATXInternalMagicalMomentsAppPredictionNotification *)&v6 init];
  if (v2)
  {
    v3 = [[_ATXInternalNotification alloc] initWithNotificationName:@"com.apple.duetexpertd.ATXMagicalMoments.NewAppPredictions"];
    note = v2->_note;
    v2->_note = v3;
  }

  return v2;
}

@end