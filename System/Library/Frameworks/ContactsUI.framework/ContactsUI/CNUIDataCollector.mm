@interface CNUIDataCollector
+ (id)sharedCollector;
- (CNUIDataCollector)init;
- (CNUIDataCollector)initWithEnvironment:(id)a3;
- (void)logContactActionType:(id)a3 attributes:(id)a4;
- (void)logContactCreated:(id)a3 originalContact:(id)a4;
- (void)logContactShown:(id)a3;
- (void)logPresentation;
- (void)logSearchResultSelected:(id)a3;
- (void)logSearchResultsFetchedSuggested:(BOOL)a3;
- (void)logSearchUsage;
@end

@implementation CNUIDataCollector

- (void)logContactCreated:(id)a3 originalContact:(id)a4
{
  v11 = a4;
  v6 = a3;
  if ([v11 isSuggested])
  {
    v7 = [v11 suggestionRecordId];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CNUIDataCollector *)self sgLogger];
  v9 = [v6 identifier];

  v10 = [(CNUIDataCollector *)self appIdentifier];
  [v8 logContactCreated:v7 contactIdentifier:v9 bundleID:v10];
}

- (void)logContactShown:(id)a3
{
  v9 = a3;
  v4 = _suggestedContact(v9);
  if (v4)
  {
    if (v4 == v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = [v9 identifier];
    }

    v6 = [(CNUIDataCollector *)self sgLogger];
    v7 = [v4 suggestionRecordId];
    v8 = [(CNUIDataCollector *)self appIdentifier];
    [v6 logSuggestedContactDetailShown:v7 contactIdentifier:v5 bundleID:v8];
  }
}

- (void)logSearchResultSelected:(id)a3
{
  v11 = a3;
  if (+[CNUIDataCollector isEnabled])
  {
    v4 = _suggestedContact(v11);
    if (v4 == v11)
    {
      v5 = 0;
    }

    else
    {
      v5 = [v11 identifier];
    }

    v6 = [(CNUIDataCollector *)self sgLogger];
    v7 = [v4 suggestionRecordId];
    v8 = [(CNUIDataCollector *)self appIdentifier];
    [v6 logContactSearchResultSelected:v7 contactIdentifier:v5 bundleID:v8];

    v9 = [(CNUIDataCollector *)self metricsReporter];
    v10 = [(CNUIDataCollector *)self appIdentifier];
    [v9 logSearchResultsSelectedforApplication:v10 fromSuggestions:{objc_msgSend(v11, "isSuggested")}];
  }
}

- (void)logSearchResultsFetchedSuggested:(BOOL)a3
{
  v3 = a3;
  if (+[CNUIDataCollector isEnabled])
  {
    if (v3)
    {
      v5 = [(CNUIDataCollector *)self sgLogger];
      v6 = [(CNUIDataCollector *)self appIdentifier];
      [v5 logSearchResultsIncludedPureSuggestionsWithBundleID:v6];
    }

    v8 = [(CNUIDataCollector *)self metricsReporter];
    v7 = [(CNUIDataCollector *)self appIdentifier];
    [v8 logSearchResultsFetchedforApplication:v7 fromSuggestions:v3];
  }
}

- (void)logSearchUsage
{
  if (+[CNUIDataCollector isEnabled])
  {
    v4 = [(CNUIDataCollector *)self metricsReporter];
    v3 = [(CNUIDataCollector *)self appIdentifier];
    [v4 logSearchUsageforApplication:v3];
  }
}

- (void)logPresentation
{
  if (+[CNUIDataCollector isEnabled])
  {
    v4 = [(CNUIDataCollector *)self metricsReporter];
    v3 = [(CNUIDataCollector *)self appIdentifier];
    [v4 logContactShownforApplication:v3];
  }
}

- (void)logContactActionType:(id)a3 attributes:(id)a4
{
  v27 = a3;
  v6 = a4;
  if (!+[CNUIDataCollector isEnabled])
  {
    goto LABEL_23;
  }

  v7 = [(CNUIDataCollector *)self metricsReporter];
  v8 = [(CNUIDataCollector *)self appIdentifier];
  v9 = [v7 emptyDictionaryForAction:v27 andApplication:v8];

  v10 = *MEMORY[0x1E6996568];
  v11 = [v6 objectForKeyedSubscript:CNUIContactActionDestinationType];
  LOBYTE(v10) = (*(v10 + 16))(v10, v11);

  if ((v10 & 1) == 0)
  {
    v12 = [v6 objectForKeyedSubscript:CNUIContactActionDestinationType];
    [v9 setValue:v12 forKey:*MEMORY[0x1E6996898]];
  }

  if ([v27 isEqualToString:CNUIContactActionTypeShare])
  {
    v13 = [v6 objectForKeyedSubscript:CNUIContactActionShareActivityType];
    if (!v13)
    {
      goto LABEL_14;
    }

    v14 = v13;
    if ([v13 hasPrefix:@"com.apple.UIKit.activity."])
    {
      v15 = [v14 substringFromIndex:{objc_msgSend(@"com.apple.UIKit.activity.", "length")}];

      v16 = MEMORY[0x1E69968B0];
      v14 = v15;
    }

    else
    {
      v16 = MEMORY[0x1E69968B0];
    }
  }

  else if ([v27 isEqualToString:CNUIContactActionTypeTapProperty])
  {
    v14 = [v6 objectForKeyedSubscript:CNUIContactActionTapPropertyIdentifier];
    v16 = MEMORY[0x1E69968A8];
  }

  else
  {
    if (![v27 isEqualToString:CNUIContactActionTypeFaceTime])
    {
      goto LABEL_14;
    }

    v14 = [v6 objectForKeyedSubscript:CNUIContactActionFaceTimeMediaType];
    v16 = MEMORY[0x1E69968A0];
  }

  [v9 setValue:v14 forKey:*v16];

LABEL_14:
  v17 = [(CNUIDataCollector *)self metricsReporter];
  [v17 logActionDictionary:v9];

  v18 = [v6 objectForKeyedSubscript:CNUIDataCollectorActionTypeAttributeLabeledValue];
  v19 = v18;
  if (v18 && [v18 isSuggested])
  {
    v20 = [v6 objectForKeyedSubscript:CNUIDataCollectorActionTypeAttributeContact];
    v21 = v20;
    if (v20)
    {
      v22 = _suggestedContact(v20);
      if (v21 == v22)
      {
        v23 = 0;
      }

      else
      {
        v23 = [v21 identifier];
      }

      v24 = [(CNUIDataCollector *)self sgLogger];
      v25 = [v22 suggestionRecordId];
      v26 = [(CNUIDataCollector *)self appIdentifier];
      [v24 logSuggestedContactDetailUsed:v25 contactIdentifier:v23 bundleID:v26];
    }
  }

LABEL_23:
}

- (CNUIDataCollector)initWithEnvironment:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CNUIDataCollector;
  v5 = [(CNUIDataCollector *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69968C0]);
    metricsReporter = v5->_metricsReporter;
    v5->_metricsReporter = v6;

    v8 = [v4 defaultSchedulerProvider];
    v9 = [CNUIDataCollectorSGLogger loggerWithSGSuggestionsServiceProvider:&__block_literal_global_62_40729 schedulerProvider:v8];
    sgLogger = v5->_sgLogger;
    v5->_sgLogger = v9;

    v11 = [MEMORY[0x1E696AAE8] mainBundle];
    v12 = [v11 bundleIdentifier];
    v13 = [v12 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
    appIdentifier = v5->_appIdentifier;
    v5->_appIdentifier = v13;
  }

  return v5;
}

- (CNUIDataCollector)init
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  v4 = [(CNUIDataCollector *)self initWithEnvironment:v3];

  return v4;
}

+ (id)sharedCollector
{
  if (sharedCollector_onceToken != -1)
  {
    dispatch_once(&sharedCollector_onceToken, &__block_literal_global_40746);
  }

  v3 = sharedCollector_sharedCollector;

  return v3;
}

uint64_t __36__CNUIDataCollector_sharedCollector__block_invoke()
{
  v0 = objc_alloc_init(CNUIDataCollector);
  v1 = sharedCollector_sharedCollector;
  sharedCollector_sharedCollector = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end