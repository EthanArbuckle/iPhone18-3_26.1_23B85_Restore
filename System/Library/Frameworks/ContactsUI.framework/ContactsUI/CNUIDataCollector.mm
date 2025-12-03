@interface CNUIDataCollector
+ (id)sharedCollector;
- (CNUIDataCollector)init;
- (CNUIDataCollector)initWithEnvironment:(id)environment;
- (void)logContactActionType:(id)type attributes:(id)attributes;
- (void)logContactCreated:(id)created originalContact:(id)contact;
- (void)logContactShown:(id)shown;
- (void)logPresentation;
- (void)logSearchResultSelected:(id)selected;
- (void)logSearchResultsFetchedSuggested:(BOOL)suggested;
- (void)logSearchUsage;
@end

@implementation CNUIDataCollector

- (void)logContactCreated:(id)created originalContact:(id)contact
{
  contactCopy = contact;
  createdCopy = created;
  if ([contactCopy isSuggested])
  {
    suggestionRecordId = [contactCopy suggestionRecordId];
  }

  else
  {
    suggestionRecordId = 0;
  }

  sgLogger = [(CNUIDataCollector *)self sgLogger];
  identifier = [createdCopy identifier];

  appIdentifier = [(CNUIDataCollector *)self appIdentifier];
  [sgLogger logContactCreated:suggestionRecordId contactIdentifier:identifier bundleID:appIdentifier];
}

- (void)logContactShown:(id)shown
{
  shownCopy = shown;
  v4 = _suggestedContact(shownCopy);
  if (v4)
  {
    if (v4 == shownCopy)
    {
      identifier = 0;
    }

    else
    {
      identifier = [shownCopy identifier];
    }

    sgLogger = [(CNUIDataCollector *)self sgLogger];
    suggestionRecordId = [v4 suggestionRecordId];
    appIdentifier = [(CNUIDataCollector *)self appIdentifier];
    [sgLogger logSuggestedContactDetailShown:suggestionRecordId contactIdentifier:identifier bundleID:appIdentifier];
  }
}

- (void)logSearchResultSelected:(id)selected
{
  selectedCopy = selected;
  if (+[CNUIDataCollector isEnabled])
  {
    v4 = _suggestedContact(selectedCopy);
    if (v4 == selectedCopy)
    {
      identifier = 0;
    }

    else
    {
      identifier = [selectedCopy identifier];
    }

    sgLogger = [(CNUIDataCollector *)self sgLogger];
    suggestionRecordId = [v4 suggestionRecordId];
    appIdentifier = [(CNUIDataCollector *)self appIdentifier];
    [sgLogger logContactSearchResultSelected:suggestionRecordId contactIdentifier:identifier bundleID:appIdentifier];

    metricsReporter = [(CNUIDataCollector *)self metricsReporter];
    appIdentifier2 = [(CNUIDataCollector *)self appIdentifier];
    [metricsReporter logSearchResultsSelectedforApplication:appIdentifier2 fromSuggestions:{objc_msgSend(selectedCopy, "isSuggested")}];
  }
}

- (void)logSearchResultsFetchedSuggested:(BOOL)suggested
{
  suggestedCopy = suggested;
  if (+[CNUIDataCollector isEnabled])
  {
    if (suggestedCopy)
    {
      sgLogger = [(CNUIDataCollector *)self sgLogger];
      appIdentifier = [(CNUIDataCollector *)self appIdentifier];
      [sgLogger logSearchResultsIncludedPureSuggestionsWithBundleID:appIdentifier];
    }

    metricsReporter = [(CNUIDataCollector *)self metricsReporter];
    appIdentifier2 = [(CNUIDataCollector *)self appIdentifier];
    [metricsReporter logSearchResultsFetchedforApplication:appIdentifier2 fromSuggestions:suggestedCopy];
  }
}

- (void)logSearchUsage
{
  if (+[CNUIDataCollector isEnabled])
  {
    metricsReporter = [(CNUIDataCollector *)self metricsReporter];
    appIdentifier = [(CNUIDataCollector *)self appIdentifier];
    [metricsReporter logSearchUsageforApplication:appIdentifier];
  }
}

- (void)logPresentation
{
  if (+[CNUIDataCollector isEnabled])
  {
    metricsReporter = [(CNUIDataCollector *)self metricsReporter];
    appIdentifier = [(CNUIDataCollector *)self appIdentifier];
    [metricsReporter logContactShownforApplication:appIdentifier];
  }
}

- (void)logContactActionType:(id)type attributes:(id)attributes
{
  typeCopy = type;
  attributesCopy = attributes;
  if (!+[CNUIDataCollector isEnabled])
  {
    goto LABEL_23;
  }

  metricsReporter = [(CNUIDataCollector *)self metricsReporter];
  appIdentifier = [(CNUIDataCollector *)self appIdentifier];
  v9 = [metricsReporter emptyDictionaryForAction:typeCopy andApplication:appIdentifier];

  v10 = *MEMORY[0x1E6996568];
  v11 = [attributesCopy objectForKeyedSubscript:CNUIContactActionDestinationType];
  LOBYTE(v10) = (*(v10 + 16))(v10, v11);

  if ((v10 & 1) == 0)
  {
    v12 = [attributesCopy objectForKeyedSubscript:CNUIContactActionDestinationType];
    [v9 setValue:v12 forKey:*MEMORY[0x1E6996898]];
  }

  if ([typeCopy isEqualToString:CNUIContactActionTypeShare])
  {
    v13 = [attributesCopy objectForKeyedSubscript:CNUIContactActionShareActivityType];
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

  else if ([typeCopy isEqualToString:CNUIContactActionTypeTapProperty])
  {
    v14 = [attributesCopy objectForKeyedSubscript:CNUIContactActionTapPropertyIdentifier];
    v16 = MEMORY[0x1E69968A8];
  }

  else
  {
    if (![typeCopy isEqualToString:CNUIContactActionTypeFaceTime])
    {
      goto LABEL_14;
    }

    v14 = [attributesCopy objectForKeyedSubscript:CNUIContactActionFaceTimeMediaType];
    v16 = MEMORY[0x1E69968A0];
  }

  [v9 setValue:v14 forKey:*v16];

LABEL_14:
  metricsReporter2 = [(CNUIDataCollector *)self metricsReporter];
  [metricsReporter2 logActionDictionary:v9];

  v18 = [attributesCopy objectForKeyedSubscript:CNUIDataCollectorActionTypeAttributeLabeledValue];
  v19 = v18;
  if (v18 && [v18 isSuggested])
  {
    v20 = [attributesCopy objectForKeyedSubscript:CNUIDataCollectorActionTypeAttributeContact];
    v21 = v20;
    if (v20)
    {
      v22 = _suggestedContact(v20);
      if (v21 == v22)
      {
        identifier = 0;
      }

      else
      {
        identifier = [v21 identifier];
      }

      sgLogger = [(CNUIDataCollector *)self sgLogger];
      suggestionRecordId = [v22 suggestionRecordId];
      appIdentifier2 = [(CNUIDataCollector *)self appIdentifier];
      [sgLogger logSuggestedContactDetailUsed:suggestionRecordId contactIdentifier:identifier bundleID:appIdentifier2];
    }
  }

LABEL_23:
}

- (CNUIDataCollector)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v16.receiver = self;
  v16.super_class = CNUIDataCollector;
  v5 = [(CNUIDataCollector *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69968C0]);
    metricsReporter = v5->_metricsReporter;
    v5->_metricsReporter = v6;

    defaultSchedulerProvider = [environmentCopy defaultSchedulerProvider];
    v9 = [CNUIDataCollectorSGLogger loggerWithSGSuggestionsServiceProvider:&__block_literal_global_62_40729 schedulerProvider:defaultSchedulerProvider];
    sgLogger = v5->_sgLogger;
    v5->_sgLogger = v9;

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v13 = [bundleIdentifier stringByReplacingOccurrencesOfString:@"." withString:@"-"];
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