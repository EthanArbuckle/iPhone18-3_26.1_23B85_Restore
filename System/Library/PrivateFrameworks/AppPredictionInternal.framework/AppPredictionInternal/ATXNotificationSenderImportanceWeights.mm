@interface ATXNotificationSenderImportanceWeights
- (ATXNotificationSenderImportanceWeights)init;
- (double)frequencyOfInteractionWithNotification;
- (double)interactedWithNotificationToday;
- (double)speedOfResponseToNotification;
@end

@implementation ATXNotificationSenderImportanceWeights

- (ATXNotificationSenderImportanceWeights)init
{
  v6.receiver = self;
  v6.super_class = ATXNotificationSenderImportanceWeights;
  v2 = [(ATXNotificationSenderImportanceWeights *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryForResource:@"ATXNotificationSenderImportance" ofType:@"plist" specifiedABGroup:0];
    notificationSenderImportanceWeights = v2->_notificationSenderImportanceWeights;
    v2->_notificationSenderImportanceWeights = v3;
  }

  return v2;
}

- (double)interactedWithNotificationToday
{
  v2 = [(NSDictionary *)self->_notificationSenderImportanceWeights objectForKeyedSubscript:@"interactedWithToday"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.25;
  }

  return v5;
}

- (double)speedOfResponseToNotification
{
  v2 = [(NSDictionary *)self->_notificationSenderImportanceWeights objectForKeyedSubscript:@"speedOfResponse"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0.5;
  }

  return intValue;
}

- (double)frequencyOfInteractionWithNotification
{
  v2 = [(NSDictionary *)self->_notificationSenderImportanceWeights objectForKeyedSubscript:@"frequencyOfInteraction"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.25;
  }

  return v5;
}

@end