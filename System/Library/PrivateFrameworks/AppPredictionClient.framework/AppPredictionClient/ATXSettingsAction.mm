@interface ATXSettingsAction
+ (BOOL)isActionEligibleForAnySettingsSuggestions:(id)suggestions;
+ (BOOL)isActionEligibleForAnySettingsSuggestionsWithBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier;
+ (BOOL)isActionEligibleForSettingsSuggestions:(id)suggestions;
+ (BOOL)isActionEligibleForWatchAppSettingsSuggestions:(id)suggestions;
- (ATXSettingsAction)initWithCoder:(id)coder;
- (ATXSettingsAction)initWithProactiveSuggestion:(id)suggestion;
- (ATXSettingsAction)initWithProactiveSuggestion:(id)suggestion action:(id)action date:(id)date navigationLink:(id)link;
- (BOOL)bundleIdentifierIsHiddenForSettingsAction;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXSettingsAction:(id)action;
- (NSString)associatedBundleId;
- (NSURL)navigationLink;
- (id)description;
- (unint64_t)hash;
- (void)associatedBundleId;
- (void)encodeWithCoder:(id)coder;
- (void)navigationLink;
@end

@implementation ATXSettingsAction

- (unint64_t)hash
{
  navigationLink = [(ATXSettingsAction *)self navigationLink];
  v3 = [navigationLink hash];

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
    parameters = [(LNAction *)self->_linkAction parameters];
    v5 = [parameters _pas_filteredArrayWithTest:&__block_literal_global_59];

    firstObject = [v5 firstObject];
    v7 = firstObject;
    if (firstObject)
    {
      value = [firstObject value];
      v8Value = [value value];
      v10 = NSClassFromString(&cfstr_Lnentity.isa);
      v11 = v8Value;
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
        properties = [v13 properties];
        v15 = [properties _pas_filteredArrayWithTest:&__block_literal_global_53_1];

        firstObject2 = [v15 firstObject];
        v17 = firstObject2;
        if (firstObject2)
        {
          value2 = [firstObject2 value];
          v18Value = [value2 value];
          v20 = NSClassFromString(&cfstr_Nsurl.isa);
          v21 = v18Value;
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

- (ATXSettingsAction)initWithProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  executableSpecification = [suggestionCopy executableSpecification];
  executableObject = [executableSpecification executableObject];
  v7 = NSClassFromString(&cfstr_Atxaction_0.isa);
  v8 = executableObject;
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
    intent = [v10 intent];
    v12 = NSClassFromString(&cfstr_Inappintent.isa);
    v13 = intent;
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
      linkAction = [v16 linkAction];
      if (linkAction)
      {
        self = [(ATXSettingsAction *)self initWithProactiveSuggestion:suggestionCopy action:linkAction date:0 navigationLink:0];
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXSettingsAction)initWithProactiveSuggestion:(id)suggestion action:(id)action date:(id)date navigationLink:(id)link
{
  suggestionCopy = suggestion;
  actionCopy = action;
  dateCopy = date;
  linkCopy = link;
  if (!(actionCopy | linkCopy))
  {
    [ATXSettingsAction initWithProactiveSuggestion:a2 action:self date:? navigationLink:?];
  }

  v19.receiver = self;
  v19.super_class = ATXSettingsAction;
  v16 = [(ATXSettingsAction *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_proactiveSuggestion, suggestion);
    objc_storeStrong(&v17->_linkAction, action);
    objc_storeStrong(&v17->_date, date);
    objc_storeStrong(&v17->_navigationLink, link);
  }

  return v17;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(LNAction *)self->_linkAction description];
  date = self->_date;
  scoreSpecification = [(ATXProactiveSuggestion *)self->_proactiveSuggestion scoreSpecification];
  [scoreSpecification rawScore];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSettingsAction *)self isEqualToATXSettingsAction:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSettingsAction:(id)action
{
  actionCopy = action;
  navigationLink = [(ATXSettingsAction *)self navigationLink];
  navigationLink2 = [actionCopy navigationLink];

  LOBYTE(actionCopy) = [navigationLink isEqual:navigationLink2];
  return actionCopy;
}

- (void)encodeWithCoder:(id)coder
{
  proactiveSuggestion = self->_proactiveSuggestion;
  coderCopy = coder;
  [coderCopy encodeObject:proactiveSuggestion forKey:@"proactiveSuggestion"];
  [coderCopy encodeObject:self->_linkAction forKey:@"action"];
  [coderCopy encodeObject:self->_date forKey:@"date"];
}

- (ATXSettingsAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proactiveSuggestion"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    self = [(ATXSettingsAction *)self initWithProactiveSuggestion:v6 action:v5 date:v7 navigationLink:0];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (BOOL)isActionEligibleForSettingsSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  bundleId = [suggestionsCopy bundleId];
  if ([bundleId isEqualToString:@"com.apple.Preferences"])
  {
    v6 = [self isActionEligibleForAnySettingsSuggestions:suggestionsCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isActionEligibleForWatchAppSettingsSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  bundleId = [suggestionsCopy bundleId];
  if ([bundleId isEqualToString:@"com.apple.Bridge"])
  {
    v6 = [self isActionEligibleForAnySettingsSuggestions:suggestionsCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isActionEligibleForAnySettingsSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  intent = [suggestionsCopy intent];
  v6 = NSClassFromString(&cfstr_Inappintent.isa);
  v7 = intent;
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
    bundleId = [suggestionsCopy bundleId];
    appIntentIdentifier = [v9 appIntentIdentifier];
    v12 = [self isActionEligibleForAnySettingsSuggestionsWithBundleIdentifier:bundleId actionIdentifier:appIntentIdentifier];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)isActionEligibleForAnySettingsSuggestionsWithBundleIdentifier:(id)identifier actionIdentifier:(id)actionIdentifier
{
  identifierCopy = identifier;
  actionIdentifierCopy = actionIdentifier;
  if ([identifierCopy hasPrefix:@"com.apple."])
  {
    v7 = [actionIdentifierCopy isEqualToString:@"SettingsNavigationEventDonationIntent"];
  }

  else
  {
    v7 = 0;
  }

  v8 = [identifierCopy isEqualToString:@"com.apple.DEC.PredictionAnalyzer"];
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
  associatedBundleId = [(ATXSettingsAction *)self associatedBundleId];
  if (associatedBundleId && (v3 = objc_opt_new(), v4 = [v3 bundleIdIsHiddenByUserPreference:associatedBundleId], v3, v4))
  {
    v5 = __atxlog_handle_settings_actions();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = associatedBundleId;
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
  parameters = [(LNAction *)self->_linkAction parameters];
  v3 = [parameters _pas_filteredArrayWithTest:&__block_literal_global_81];

  firstObject = [v3 firstObject];
  v5 = firstObject;
  if (firstObject)
  {
    value = [firstObject value];
    v6Value = [value value];
    v8 = NSClassFromString(&cfstr_Lnentity.isa);
    v9 = v6Value;
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
      properties = [v11 properties];
      v14 = [properties _pas_filteredArrayWithTest:&__block_literal_global_84];

      firstObject2 = [v14 firstObject];
      v16 = firstObject2;
      if (firstObject2)
      {
        value2 = [firstObject2 value];
        v17Value = [value2 value];
        v19 = NSClassFromString(&cfstr_Nsstring.isa);
        v20 = v17Value;
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
  value = [self value];
  v1Value = [value value];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_3_6(v3);
  OUTLINED_FUNCTION_0(&dword_1BF549000, v5, v6, "Settings action does not have a target property containing an entity anymore; actual: %@", v7, v8, v9, v10, v11);
}

- (void)associatedBundleId
{
  value = [self value];
  v1Value = [value value];
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_3_6(v3);
  OUTLINED_FUNCTION_0(&dword_1BF549000, v5, v6, "Settings action does not have an associated bundle id containing a string anymore; actual: %@", v7, v8, v9, v10, v11);
}

@end