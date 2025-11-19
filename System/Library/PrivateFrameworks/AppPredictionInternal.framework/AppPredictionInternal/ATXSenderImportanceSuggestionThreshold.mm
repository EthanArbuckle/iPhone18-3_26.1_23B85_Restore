@interface ATXSenderImportanceSuggestionThreshold
- (ATXSenderImportanceSuggestionThreshold)init;
- (double)mailSenderImportanceThreshold;
- (double)messageSenderImportanceThreshold;
- (double)notificationSenderImportanceThreshold;
@end

@implementation ATXSenderImportanceSuggestionThreshold

- (ATXSenderImportanceSuggestionThreshold)init
{
  v6.receiver = self;
  v6.super_class = ATXSenderImportanceSuggestionThreshold;
  v2 = [(ATXSenderImportanceSuggestionThreshold *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryForResource:@"ATXSenderImportanceSuggestionThreshold" ofType:@"plist" specifiedABGroup:0];
    senderImportanceSuggestionThreshold = v2->_senderImportanceSuggestionThreshold;
    v2->_senderImportanceSuggestionThreshold = v3;
  }

  return v2;
}

- (double)mailSenderImportanceThreshold
{
  v2 = [(NSDictionary *)self->_senderImportanceSuggestionThreshold objectForKeyedSubscript:@"mailSenderImportanceThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (double)messageSenderImportanceThreshold
{
  v2 = [(NSDictionary *)self->_senderImportanceSuggestionThreshold objectForKeyedSubscript:@"messageSenderImportanceThreshold"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0.5;
  }

  return v4;
}

- (double)notificationSenderImportanceThreshold
{
  v2 = [(NSDictionary *)self->_senderImportanceSuggestionThreshold objectForKeyedSubscript:@"notificationSenderImportanceThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

@end