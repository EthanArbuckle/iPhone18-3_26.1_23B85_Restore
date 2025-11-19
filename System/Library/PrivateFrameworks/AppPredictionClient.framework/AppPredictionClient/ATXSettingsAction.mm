@interface ATXSettingsAction
+ (BOOL)isActionEligibleForAnySettingsSuggestions:(id)a3;
+ (BOOL)isActionEligibleForAnySettingsSuggestionsWithBundleIdentifier:(id)a3 actionIdentifier:(id)a4;
+ (BOOL)isActionEligibleForSettingsSuggestions:(id)a3;
+ (BOOL)isActionEligibleForWatchAppSettingsSuggestions:(id)a3;
- (ATXSettingsAction)initWithCoder:(id)a3;
- (ATXSettingsAction)initWithProactiveSuggestion:(id)a3;
- (ATXSettingsAction)initWithProactiveSuggestion:(id)a3 action:(id)a4 date:(id)a5 navigationLink:(id)a6;
- (BOOL)bundleIdentifierIsHiddenForSettingsAction;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXSettingsAction:(id)a3;
- (NSString)associatedBundleId;
- (NSURL)navigationLink;
- (id)description;
- (unint64_t)hash;
- (void)associatedBundleId;
- (void)encodeWithCoder:(id)a3;
- (void)navigationLink;
@end

@implementation ATXSettingsAction

- (unint64_t)hash
{
  v2 = [(ATXSettingsAction *)self navigationLink];
  v3 = [v2 hash];

  return v3;
}

- (NSURL)navigationLink
{
  navigationLink = self->_navigationLink;
  if (navigationLink)
  {
    v3 = navigationLink;
  }

  else
  {
    v4 = [(LNAction *)self->_linkAction parameters];
    v5 = [v4 _pas_filteredArrayWithTest:&__block_literal_global_59];

    v6 = [v5 firstObject];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 value];
      v9 = [v8 value];
      v10 = NSClassFromString(&cfstr_Lnentity.isa);
      v11 = v9;
      if (v10)
      {
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v13)
      {
        v14 = [v13 properties];
        v15 = [v14 _pas_filteredArrayWithTest:&__block_literal_global_53_1];

        v16 = [v15 firstObject];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 value];
          v19 = [v18 value];
          v20 = NSClassFromString(&cfstr_Nsurl.isa);
          v21 = v19;
          if (v20)
          {
            if (objc_opt_isKindOfClass())
            {
              v22 = v21;
            }

            else
            {
              v22 = 0;
            }
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;

          if (v23)
          {
            v23 = v23;
            v3 = v23;
          }

          else
          {
            v24 = __atxlog_handle_settings_actions();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
            {
              [(ATXSettingsAction *)v17 navigationLink];
            }

            v3 = 0;
          }
        }

        else
        {
          v23 = __atxlog_handle_settings_actions();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            [ATXSettingsAction navigationLink];
          }

          v3 = 0;
        }
      }

      else
      {
        v15 = __atxlog_handle_settings_actions();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          [(ATXSettingsAction *)v7 navigationLink];
        }

        v3 = 0;
      }
    }

    else
    {
      v13 = __atxlog_handle_settings_actions();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [ATXSettingsAction navigationLink];
      }

      v3 = 0;
    }
  }

  return v3;
}

- (ATXSettingsAction)initWithProactiveSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 executableSpecification];
  v6 = [v5 executableObject];
  v7 = NSClassFromString(&cfstr_Atxaction_0.isa);
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [v10 intent];
    v12 = NSClassFromString(&cfstr_Inappintent.isa);
    v13 = v11;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = v14;

    if (v16)
    {
      v17 = [v16 linkAction];
      if (v17)
      {
        self = [(ATXSettingsAction *)self initWithProactiveSuggestion:v4 action:v17 date:0 navigationLink:0];
        v15 = self;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (ATXSettingsAction)initWithProactiveSuggestion:(id)a3 action:(id)a4 date:(id)a5 navigationLink:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!(v13 | v15))
  {
    [ATXSettingsAction initWithProactiveSuggestion:a2 action:self date:? navigationLink:?];
  }

  v19.receiver = self;
  v19.super_class = ATXSettingsAction;
  v16 = [(ATXSettingsAction *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_proactiveSuggestion, a3);
    objc_storeStrong(&v17->_linkAction, a4);
    objc_storeStrong(&v17->_date, a5);
    objc_storeStrong(&v17->_navigationLink, a6);
  }

  return v17;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(LNAction *)self->_linkAction description];
  date = self->_date;
  v6 = [(ATXProactiveSuggestion *)self->_proactiveSuggestion scoreSpecification];
  [v6 rawScore];
  v8 = [v3 initWithFormat:@"Action: %@; Date: %@; Score: %f", v4, date, v7];

  return v8;
}

uint64_t __35__ATXSettingsAction_navigationLink__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"target"];

  return v3;
}

uint64_t __35__ATXSettingsAction_navigationLink__block_invoke_51(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"navigationLink"];

  return v3;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSettingsAction *)self isEqualToATXSettingsAction:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSettingsAction:(id)a3
{
  v4 = a3;
  v5 = [(ATXSettingsAction *)self navigationLink];
  v6 = [v4 navigationLink];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  proactiveSuggestion = self->_proactiveSuggestion;
  v5 = a3;
  [v5 encodeObject:proactiveSuggestion forKey:@"proactiveSuggestion"];
  [v5 encodeObject:self->_linkAction forKey:@"action"];
  [v5 encodeObject:self->_date forKey:@"date"];
}

- (ATXSettingsAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proactiveSuggestion"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    self = [(ATXSettingsAction *)self initWithProactiveSuggestion:v6 action:v5 date:v7 navigationLink:0];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isActionEligibleForSettingsSuggestions:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleId];
  if ([v5 isEqualToString:@"com.apple.Preferences"])
  {
    v6 = [a1 isActionEligibleForAnySettingsSuggestions:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isActionEligibleForWatchAppSettingsSuggestions:(id)a3
{
  v4 = a3;
  v5 = [v4 bundleId];
  if ([v5 isEqualToString:@"com.apple.Bridge"])
  {
    v6 = [a1 isActionEligibleForAnySettingsSuggestions:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isActionEligibleForAnySettingsSuggestions:(id)a3
{
  v4 = a3;
  v5 = [v4 intent];
  v6 = NSClassFromString(&cfstr_Inappintent.isa);
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [v4 bundleId];
    v11 = [v9 appIntentIdentifier];
    v12 = [a1 isActionEligibleForAnySettingsSuggestionsWithBundleIdentifier:v10 actionIdentifier:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)isActionEligibleForAnySettingsSuggestionsWithBundleIdentifier:(id)a3 actionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasPrefix:@"com.apple."])
  {
    v7 = [v6 isEqualToString:@"SettingsNavigationEventDonationIntent"];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 isEqualToString:@"com.apple.DEC.PredictionAnalyzer"];
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    keyExistsAndHasValidFormat = 0;
    v9 = (CFPreferencesGetAppBooleanValue(@"usePredictionsAppForTestingSettingsActions", *MEMORY[0x1E698B030], &keyExistsAndHasValidFormat) != 0) & v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v7 | v9;

  return v10 & 1;
}

- (BOOL)bundleIdentifierIsHiddenForSettingsAction
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(ATXSettingsAction *)self associatedBundleId];
  if (v2 && (v3 = objc_opt_new(), v4 = [v3 bundleIdIsHiddenByUserPreference:v2], v3, v4))
  {
    v5 = __atxlog_handle_settings_actions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v2;
      _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "Bundle identifier is hidden for Settings action: %@", &v8, 0xCu);
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)associatedBundleId
{
  v2 = [(LNAction *)self->_linkAction parameters];
  v3 = [v2 _pas_filteredArrayWithTest:&__block_literal_global_81];

  v4 = [v3 firstObject];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 value];
    v7 = [v6 value];
    v8 = NSClassFromString(&cfstr_Lnentity.isa);
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v13 = [v11 properties];
      v14 = [v13 _pas_filteredArrayWithTest:&__block_literal_global_84];

      v15 = [v14 firstObject];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 value];
        v18 = [v17 value];
        v19 = NSClassFromString(&cfstr_Nsstring.isa);
        v20 = v18;
        if (v19)
        {
          if (objc_opt_isKindOfClass())
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        if (v22)
        {
          v22 = v22;
          v12 = v22;
        }

        else
        {
          v23 = __atxlog_handle_settings_actions();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            [(ATXSettingsAction *)v16 associatedBundleId];
          }

          v12 = 0;
        }
      }

      else
      {
        v22 = __atxlog_handle_settings_actions();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          [ATXSettingsAction associatedBundleId];
        }

        v12 = 0;
      }
    }

    else
    {
      v14 = __atxlog_handle_settings_actions();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(ATXSettingsAction *)v5 navigationLink];
      }

      v12 = 0;
    }
  }

  else
  {
    v11 = __atxlog_handle_settings_actions();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXSettingsAction navigationLink];
    }

    v12 = 0;
  }

  return v12;
}

uint64_t __39__ATXSettingsAction_associatedBundleId__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"target"];

  return v3;
}

uint64_t __39__ATXSettingsAction_associatedBundleId__block_invoke_82(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [v2 isEqualToString:@"associatedApplicationBundleIdentifier"];

  return v3;
}

- (void)initWithProactiveSuggestion:(uint64_t)a1 action:(uint64_t)a2 date:navigationLink:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSettingsAction.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"action || navigationLink"}];
}

- (void)navigationLink
{
  v1 = [a1 value];
  v2 = [v1 value];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_3_6(v3);
  OUTLINED_FUNCTION_0(&dword_1BF549000, v5, v6, "Settings action does not have a target property containing an entity anymore; actual: %@", v7, v8, v9, v10, v11);
}

- (void)associatedBundleId
{
  v1 = [a1 value];
  v2 = [v1 value];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_3_6(v3);
  OUTLINED_FUNCTION_0(&dword_1BF549000, v5, v6, "Settings action does not have an associated bundle id containing a string anymore; actual: %@", v7, v8, v9, v10, v11);
}

@end