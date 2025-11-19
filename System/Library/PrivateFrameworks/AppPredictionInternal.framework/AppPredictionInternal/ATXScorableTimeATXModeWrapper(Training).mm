@interface ATXScorableTimeATXModeWrapper(Training)
- (ATXUnifiedModeStreamModeEventProvider)scorableTimeEventProvider;
@end

@implementation ATXScorableTimeATXModeWrapper(Training)

- (ATXUnifiedModeStreamModeEventProvider)scorableTimeEventProvider
{
  v2 = [a1 atxMode];
  if ((v2 - 8) >= 4)
  {
    if (v2 == 12)
    {
      v5 = objc_opt_new();
    }

    else
    {
      v5 = [ATXUnifiedModeStreamModeEventProvider alloc];
    }

    v4 = -[ATXModeTransitionModeEventProvider initWithMode:](v5, "initWithMode:", [a1 atxMode]);
  }

  else
  {
    v3 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [ATXModeEntityModelTrainer eventProviderForMode:v3];
    }

    v4 = 0;
  }

  return v4;
}

@end