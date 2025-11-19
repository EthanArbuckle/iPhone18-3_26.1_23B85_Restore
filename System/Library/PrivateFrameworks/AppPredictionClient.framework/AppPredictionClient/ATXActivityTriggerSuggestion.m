@interface ATXActivityTriggerSuggestion
- (ATXActivityTriggerSuggestion)initWithActivity:(id)a3 activitySuggestionClient:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXActivityTriggerSuggestion:(id)a3;
- (NSString)localizedTriggerSuggestionText;
- (id)_localizableStringForModeSemanticType:(int64_t)a3;
- (id)_localizedStringForDrivingTriggerFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5;
- (id)_localizedStringForGameControllerTriggerFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5;
- (id)_localizedStringForLocationTriggerFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5;
- (id)_localizedStringForScreenActivityTriggerFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5;
- (id)_localizedStringForSleepingTriggerFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5;
- (id)_localizedStringForSmartActivationFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5;
- (id)_localizedStringForWorkoutTriggerFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5;
- (void)localizedTriggerSuggestionText;
@end

@implementation ATXActivityTriggerSuggestion

- (ATXActivityTriggerSuggestion)initWithActivity:(id)a3 activitySuggestionClient:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXActivityTriggerSuggestion;
  v9 = [(ATXActivityTriggerSuggestion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activity, a3);
    objc_storeStrong(&v10->_activitySuggestionClient, a4);
  }

  return v10;
}

- (NSString)localizedTriggerSuggestionText
{
  activitySuggestionClient = self->_activitySuggestionClient;
  v4 = [(ATXActivity *)self->_activity triggers];
  v5 = [(ATXActivitySuggestionClient *)activitySuggestionClient triggersToDNDModeConfigurationTriggers:v4];

  if (![v5 count])
  {
    v6 = __atxlog_handle_modes();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(ATXActivityTriggerSuggestion *)v6 localizedTriggerSuggestionText:v14];
    }

    goto LABEL_11;
  }

  if ([v5 count] >= 2)
  {
    v6 = __atxlog_handle_modes();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(ATXActivityTriggerSuggestion *)v6 localizedTriggerSuggestionText:v7];
    }

    goto LABEL_11;
  }

  [(ATXActivity *)self->_activity activityType];
  v6 = ATXActivityTypeToDNDModeSemanticType();
  if (!v6)
  {
LABEL_11:
    v26 = 0;
    goto LABEL_12;
  }

  v21 = [(ATXActivity *)self->_activity userModeName];
  if (![v21 length])
  {
    v23 = __atxlog_handle_modes();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [(ATXActivityTriggerSuggestion *)v23 localizedTriggerSuggestionText:v28];
    }

    v26 = 0;
    goto LABEL_30;
  }

  v22 = [v6 integerValue];
  v23 = [v5 firstObject];
  v24 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = [(ATXActivityTriggerSuggestion *)self _localizedStringForSmartActivationFromBundle:v24 semanticType:v22 userModeName:v21];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [(ATXActivityTriggerSuggestion *)self _localizedStringForLocationTriggerFromBundle:v24 semanticType:v22 userModeName:v21];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [(ATXActivityTriggerSuggestion *)self _localizedStringForSleepingTriggerFromBundle:v24 semanticType:v22 userModeName:v21];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [(ATXActivityTriggerSuggestion *)self _localizedStringForDrivingTriggerFromBundle:v24 semanticType:v22 userModeName:v21];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = [(ATXActivityTriggerSuggestion *)self _localizedStringForWorkoutTriggerFromBundle:v24 semanticType:v22 userModeName:v21];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v35 = __atxlog_handle_modes();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
              {
                [(ATXActivityTriggerSuggestion *)v23 localizedTriggerSuggestionText];
              }

              v26 = 0;
              goto LABEL_29;
            }

            v25 = [(ATXActivityTriggerSuggestion *)self _localizedStringForGameControllerTriggerFromBundle:v24 semanticType:v22 userModeName:v21];
          }
        }
      }
    }
  }

  v26 = v25;
LABEL_29:

LABEL_30:
LABEL_12:

  return v26;
}

- (id)_localizableStringForModeSemanticType:(int64_t)a3
{
  v4 = a3 + 1;
  if (a3 + 1) < 0xB && ((0x5FFu >> v4))
  {
    return qword_1E80C4490[v4];
  }

  v6 = __atxlog_handle_modes();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [(ATXActivityTriggerSuggestion *)a3 _localizableStringForModeSemanticType:v6];
  }

  return 0;
}

- (id)_localizedStringForSmartActivationFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ATXActivityTriggerSuggestion *)self _localizableStringForModeSemanticType:a4];
  v11 = v10;
  v12 = MEMORY[0x1E696AEC0];
  if (v10)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Use Smart Activation to turn on %@ automatically based on signals like your location, app usage, and others.", v10];
    [v8 localizedStringForKey:v13 value:&stru_1F3E050C8 table:0];
  }

  else
  {
    v13 = [v8 localizedStringForKey:@"Use Smart Activation to turn on %@ Focus automatically based on signals like your location value:app usage table:{and others.", &stru_1F3E050C8, 0}];
    [v12 localizedStringWithFormat:v13, v9];
  }
  v14 = ;

  return v14;
}

- (id)_localizedStringForLocationTriggerFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5
{
  v7 = a3;
  v8 = [(ATXActivityTriggerSuggestion *)self _localizableStringForModeSemanticType:a4];
  if (a4 == 5)
  {
    v9 = @"Allow %@ to automatically turn on when you are at home?";
    goto LABEL_5;
  }

  if (a4 == 4)
  {
    v9 = @"Allow %@ to automatically turn on when you are at work?";
LABEL_5:
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, v8];
    v11 = [v7 localizedStringForKey:v10 value:&stru_1F3E050C8 table:0];

    goto LABEL_7;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_localizedStringForSleepingTriggerFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5
{
  v7 = a3;
  v8 = [(ATXActivityTriggerSuggestion *)self _localizableStringForModeSemanticType:a4];
  if (a4 == 1)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Allow %@ to automatically turn on during your scheduled bedtime?", v8];
    v10 = [v7 localizedStringForKey:v9 value:&stru_1F3E050C8 table:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_localizedStringForDrivingTriggerFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ATXActivityTriggerSuggestion *)self _localizableStringForModeSemanticType:a4];
  if (a4 == -1)
  {
    v13 = MEMORY[0x1E696AEC0];
    v11 = [v8 localizedStringForKey:@"Allow %@ Focus to automatically turn on when you are driving?" value:&stru_1F3E050C8 table:0];
    v12 = [v13 localizedStringWithFormat:v11, v9];
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Allow %@ to automatically turn on when you are driving?", v10];
    v12 = [v8 localizedStringForKey:v11 value:&stru_1F3E050C8 table:0];
LABEL_5:
    v14 = v12;

    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (id)_localizedStringForWorkoutTriggerFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ATXActivityTriggerSuggestion *)self _localizableStringForModeSemanticType:a4];
  if (a4 == -1)
  {
    v13 = MEMORY[0x1E696AEC0];
    v11 = [v8 localizedStringForKey:@"Allow %@ Focus to automatically turn on when you start a workout on your Apple Watch?" value:&stru_1F3E050C8 table:0];
    v12 = [v13 localizedStringWithFormat:v11, v9];
    goto LABEL_5;
  }

  if (a4 == 3)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Allow %@ to automatically turn on when you start a workout on your Apple Watch?", v10];
    v12 = [v8 localizedStringForKey:v11 value:&stru_1F3E050C8 table:0];
LABEL_5:
    v14 = v12;

    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (id)_localizedStringForGameControllerTriggerFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5
{
  v7 = a3;
  v8 = [(ATXActivityTriggerSuggestion *)self _localizableStringForModeSemanticType:a4];
  if (a4 == 7)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Allow %@ to automatically turn on when you connect a game controller?", v8];
    v10 = [v7 localizedStringForKey:v9 value:&stru_1F3E050C8 table:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_localizedStringForScreenActivityTriggerFromBundle:(id)a3 semanticType:(int64_t)a4 userModeName:(id)a5
{
  v7 = a3;
  v8 = [(ATXActivityTriggerSuggestion *)self _localizableStringForModeSemanticType:a4];
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Allow %@ to automatically turn on when you share or record your screen?", v8];
    v9 = [v7 localizedStringForKey:v10 value:&stru_1F3E050C8 table:0];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXActivityTriggerSuggestion *)self isEqualToATXActivityTriggerSuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXActivityTriggerSuggestion:(id)a3
{
  activity = self->_activity;
  v4 = [a3 activity];
  LOBYTE(activity) = [(ATXActivity *)activity isEqual:v4];

  return activity;
}

- (void)localizedTriggerSuggestionText
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "The trigger %{public}@ was not handled", &v5, 0xCu);
}

- (void)_localizableStringForModeSemanticType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "Unhandled DND semantic type: %ld", &v2, 0xCu);
}

@end