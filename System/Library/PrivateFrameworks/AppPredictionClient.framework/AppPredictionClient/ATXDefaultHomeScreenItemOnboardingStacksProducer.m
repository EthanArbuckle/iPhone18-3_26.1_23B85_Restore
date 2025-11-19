@interface ATXDefaultHomeScreenItemOnboardingStacksProducer
- (ATXDefaultHomeScreenItemOnboardingStacksProducer)initWithCandidateWidgets:(id)a3 cachedWidgetPersonalityToAppScore:(id)a4 personalityToDescriptorDictionary:(id)a5 adblDrainClassification:(unint64_t)a6 isiPad:(BOOL)a7 isDayZeroExperience:(BOOL)a8 shouldIncludeContactsWidget:(BOOL)a9 cachedHasiCloudFamily:(id)a10 appLaunchCounts:(id)a11 isAmbient:(BOOL)a12;
- (ATXDefaultHomeScreenItemOnboardingStacksProducer)initWithOnboardingStackWidgetCache:(id)a3 adblDrainClassification:(unint64_t)a4 isiPad:(BOOL)a5 shouldIncludeContactsWidget:(BOOL)a6 appLaunchCounts:(id)a7;
- (BOOL)_shouldAddWidget:(id)a3 andFilterFromApps:(id)a4;
- (BOOL)hasConfiguredHomeAccessoryControl;
- (id)_ambientOnboardingStacks;
- (id)_dayZeroOnboardingStacks;
- (id)_firstUnusedWidgetFromList:(id)a3 fallbackWidgets:(id)a4 usedPersonalities:(id)a5 size:(unint64_t)a6;
- (id)_firstWidgetThatIsntUsedYet:(id)a3 usedPersonalities:(id)a4;
- (id)_personalizedAmbientOnboardingStacksForSize:(unint64_t)a3 stack1RequiredWidgetPersonalities:(id)a4 stack2RequiredWidgetPersonalities:(id)a5 rankedWidgets:(id)a6 usedWidgetPersonalities:(id)a7;
- (id)_personalizedOnboardingStackForSize:(unint64_t)a3 requiredWidgetPersonalities:(id)a4 conditionalWidgetPersonalities:(id)a5 fallbackWidgetPersonalities:(id)a6 rankedThirdPartyWidgets:(id)a7 usedWidgetPersonalities:(id)a8 shouldAdd3PWidgetToStack:(BOOL)a9;
- (id)_personalizedOnboardingStacksForSize:(unint64_t)a3 requiredWidgetPersonalitiesForStack1:(id)a4 requiredWidgetPersonalitiesForStack2:(id)a5 conditionalWidgetPersonalitiesForStack1:(id)a6 conditionalWidgetPersonalitiesForStack2:(id)a7 fallbackWidgetPersonalitiesForStack1:(id)a8 fallbackWidgetPersonalitiesForStack2:(id)a9 rankedThirdPartyWidgets:(id)a10 blockedWidgetPersonalities:(id)a11;
- (id)_personalizedStacksForSize:(unint64_t)a3 requiredWidgetPersonalitiesPerStack:(id)a4 rankedWidgets:(id)a5 usedWidgetPersonalities:(id)a6 maxNumberOfWidgetsPerStack:(unint64_t)a7 denyListOfExtensions:(id)a8;
- (id)generatedStacksWithRequest:(id)a3;
- (id)onboardingStacks;
- (id)personalizedOnboardingStacksWithRankingAlgorithm:(int)a3;
- (void)_addWidget:(id)a3 toStack:(id)a4 andMarkAsUsed:(id)a5;
@end

@implementation ATXDefaultHomeScreenItemOnboardingStacksProducer

- (ATXDefaultHomeScreenItemOnboardingStacksProducer)initWithOnboardingStackWidgetCache:(id)a3 adblDrainClassification:(unint64_t)a4 isiPad:(BOOL)a5 shouldIncludeContactsWidget:(BOOL)a6 appLaunchCounts:(id)a7
{
  v8 = a5;
  v12 = a7;
  v13 = a3;
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v17 = [v13 descriptorToAppLaunchData];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __162__ATXDefaultHomeScreenItemOnboardingStacksProducer_initWithOnboardingStackWidgetCache_adblDrainClassification_isiPad_shouldIncludeContactsWidget_appLaunchCounts___block_invoke;
  v26[3] = &unk_1E80C1C18;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  [v17 enumerateKeysAndObjectsUsingBlock:v26];

  v21 = [v13 hasiCloudFamily];

  LOBYTE(v25) = 0;
  LOBYTE(v24) = a6;
  v22 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self initWithCandidateWidgets:v20 cachedWidgetPersonalityToAppScore:v19 personalityToDescriptorDictionary:v18 adblDrainClassification:a4 isiPad:v8 isDayZeroExperience:0 shouldIncludeContactsWidget:v24 cachedHasiCloudFamily:v21 appLaunchCounts:v12 isAmbient:v25];

  return v22;
}

void __162__ATXDefaultHomeScreenItemOnboardingStacksProducer_initWithOnboardingStackWidgetCache_adblDrainClassification_isiPad_shouldIncludeContactsWidget_appLaunchCounts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 extensionIdentity];
  v8 = [v7 containerBundleIdentifier];
  v15 = [ATXDefaultHomeScreenItemProducerUtilities widgetDescriptorFromChronoDescriptor:v6 appBundleId:v8 rankType:1];

  v9 = [ATXWidgetPersonality alloc];
  v10 = [v6 extensionBundleIdentifier];
  v11 = [v6 kind];

  v12 = [(ATXWidgetPersonality *)v9 initWithExtensionBundleId:v10 kind:v11];
  [*(a1 + 32) addObject:v15];
  v13 = *(a1 + 40);
  v14 = [(ATXWidgetPersonality *)v12 stringRepresentation];
  [v13 setObject:v5 forKeyedSubscript:v14];

  [*(a1 + 48) setObject:v15 forKeyedSubscript:v12];
}

- (ATXDefaultHomeScreenItemOnboardingStacksProducer)initWithCandidateWidgets:(id)a3 cachedWidgetPersonalityToAppScore:(id)a4 personalityToDescriptorDictionary:(id)a5 adblDrainClassification:(unint64_t)a6 isiPad:(BOOL)a7 isDayZeroExperience:(BOOL)a8 shouldIncludeContactsWidget:(BOOL)a9 cachedHasiCloudFamily:(id)a10 appLaunchCounts:(id)a11 isAmbient:(BOOL)a12
{
  v16 = a3;
  v17 = a4;
  v26 = a5;
  v18 = a10;
  v19 = a11;
  v27.receiver = self;
  v27.super_class = ATXDefaultHomeScreenItemOnboardingStacksProducer;
  v20 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)&v27 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_stackableCandidates, a3);
    objc_storeStrong(&v21->_cachedWidgetPersonalityToAppScore, a4);
    objc_storeStrong(&v21->_personalityToDescriptorDictionary, a5);
    v21->_adblDrainClassification = a6;
    v21->_isiPad = a7;
    v21->_isDayZeroExperience = a8;
    v21->_shouldIncludeContactsWidget = a9;
    objc_storeStrong(&v21->_cachedHasiCloudFamily, a10);
    objc_storeStrong(&v21->_appLaunchCounts, a11);
    v21->_isAmbient = a12;
  }

  return v21;
}

- (id)onboardingStacks
{
  if ([(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self isAmbient])
  {
    v3 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _ambientOnboardingStacks];
  }

  else
  {
    if ([(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self isDayZeroExperience])
    {
      [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _dayZeroOnboardingStacks];
    }

    else
    {
      [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self personalizedOnboardingStacksWithRankingAlgorithm:3];
    }
    v3 = ;
  }

  return v3;
}

- (id)generatedStacksWithRequest:(id)a3
{
  v80 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 clientIdentity];
  v6 = [v5 widgetClient];

  if (v6 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v8 = [v4 numberOfStacks];

  if (v8)
  {
    v9 = [v4 numberOfStacks];
    v7 = [v9 unsignedIntegerValue];
  }

  v10 = [v4 maximumWidgetsPerStack];

  if (v10)
  {
    v11 = [v4 maximumWidgetsPerStack];
    v68 = [v11 unsignedIntegerValue];
  }

  else
  {
    v68 = 3;
  }

  v65 = [MEMORY[0x1E695DF70] array];
  v12 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v77 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer generatedStacksWithRequest:]";
    v78 = 2048;
    v79 = v7;
    _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "%s: Number of Stacks being requested %lu", buf, 0x16u);
  }

  v64 = v4;
  if (v7 == 1)
  {
    if (v6 == 3)
    {
      v13 = @"dayZeroDefaultStackTvOS";
    }

    else
    {
      v13 = @"carPlayOnboardingRequiredWidgetsForDefaultStack1-only";
    }

    v14 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v13 launchCounts:self->_appLaunchCounts];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 _pas_mappedArrayWithTransform:&__block_literal_global_21];
      v17 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v77 = v13;
        v78 = 2112;
        v79 = v16;
        _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "Required widgets for Stack with key %@ are %@", buf, 0x16u);
      }

      [v65 addObject:v15];
    }

    else
    {
      [v65 addObject:MEMORY[0x1E695E0F0]];
    }
  }

  else
  {
    v18 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self hasConfiguredHomeAccessoryControl];
    if (v7)
    {
      v19 = v18;
      v20 = 1;
      do
      {
        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"carPlayOnboardingRequiredWidgetsForDefaultStack%ld", v20];
        v22 = v21;
        if (v6 == 3)
        {

          v22 = @"dayZeroDefaultStackTvOS";
        }

        v23 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v22 launchCounts:self->_appLaunchCounts];
        if (v23)
        {
          v24 = v23;
          v73[0] = MEMORY[0x1E69E9820];
          v73[1] = 3221225472;
          v73[2] = __79__ATXDefaultHomeScreenItemOnboardingStacksProducer_generatedStacksWithRequest___block_invoke_94;
          v73[3] = &__block_descriptor_33_e30_B16__0__ATXWidgetPersonality_8l;
          v74 = v19;
          v25 = [v23 _pas_filteredArrayWithTest:v73];

          v26 = [v25 _pas_mappedArrayWithTransform:&__block_literal_global_101];
          v27 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v77 = v22;
            v78 = 2112;
            v79 = v26;
            _os_log_impl(&dword_1BF549000, v27, OS_LOG_TYPE_DEFAULT, "Required widgets for Stack with key %@ are %@", buf, 0x16u);
          }

          [v65 addObject:v25];
        }

        else
        {
          [v65 addObject:MEMORY[0x1E695E0F0]];
        }

        ++v20;
        --v7;
      }

      while (v7);
    }
  }

  v28 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:self->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:0 appLaunchCounts:self->_appLaunchCounts];
  v29 = [(ATXDefaultHomeScreenItemRanker *)v28 widgetsBySortingAndFilteringWidgetsUsingOnboardingStacksAlgorithm:self->_stackableCandidates algorithm:2 regularlyUsedThreshold:7uLL];
  v30 = [v29 mutableCopy];

  [ATXDefaultHomeScreenItemRanker filterOutDuplicateWidgetsFromSameAppBundleId:v30];
  v31 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _blockedWidgetPersonalities];
  v32 = [v64 denyListOfExtensions];
  v60 = v32;
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = MEMORY[0x1E695E0F0];
  }

  v34 = [MEMORY[0x1E695DFD8] setWithArray:v33];
  v35 = [v64 stackLayoutSize];
  v36 = [v64 clientIdentity];
  v63 = v28;
  if ([v36 widgetClient] == 2)
  {

    v37 = 0x1E695D000;
  }

  else
  {
    v38 = [v64 clientIdentity];
    v39 = v34;
    v40 = [v38 widgetClient];

    v41 = v40 == 3;
    v34 = v39;
    v37 = 0x1E695D000uLL;
    if (!v41)
    {
      goto LABEL_40;
    }
  }

  v35 = 0;
LABEL_40:
  v61 = v31;
  v62 = v30;
  v59 = v34;
  v42 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedStacksForSize:v35 requiredWidgetPersonalitiesPerStack:v65 rankedWidgets:v30 usedWidgetPersonalities:v31 maxNumberOfWidgetsPerStack:v68 denyListOfExtensions:v34];
  v67 = [*(v37 + 3952) array];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v42;
  v43 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (!v43)
  {
    goto LABEL_62;
  }

  v44 = v43;
  v45 = *v70;
  v46 = MEMORY[0x1E695E0F0];
  do
  {
    for (i = 0; i != v44; ++i)
    {
      if (*v70 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v48 = *(*(&v69 + 1) + 8 * i);
      if (v35 > 2)
      {
        if ((v35 - 3) < 2)
        {
          v52 = v48;
          v50 = v46;
          v51 = v46;
          v49 = v46;
          goto LABEL_60;
        }

LABEL_54:
        v53 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v77 = v35;
          _os_log_error_impl(&dword_1BF549000, v53, OS_LOG_TYPE_ERROR, "Unknown ATXStackLayoutSize: %lu", buf, 0xCu);
        }

        v50 = v46;
LABEL_57:
        v51 = v46;
LABEL_58:
        v49 = v46;
        goto LABEL_59;
      }

      if (!v35)
      {
        v50 = v48;
        goto LABEL_57;
      }

      if (v35 == 1)
      {
        v51 = v48;
        v50 = v46;
        goto LABEL_58;
      }

      if (v35 != 2)
      {
        goto LABEL_54;
      }

      v49 = v48;
      v50 = v46;
      v51 = v46;
LABEL_59:
      v52 = v46;
LABEL_60:
      LOBYTE(v58) = [MEMORY[0x1E69C5CF8] isiPad];
      v54 = [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:v50 mediumStack:v51 largeStack:v49 extraLargeStack:v52 suggestedSize:v35 maxWidgetsPerStack:v68 isiPad:v58];
      [v67 addObject:v54];
    }

    v44 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
  }

  while (v44);
LABEL_62:

  v55 = [ATXDefaultHomeScreenItemOnboardingStacks alloc];
  v56 = [(ATXDefaultHomeScreenItemOnboardingStacks *)v55 initWithOnboardingStacks:v67 sortedThirdPartyWidgets:MEMORY[0x1E695E0F0]];

  return v56;
}

uint64_t __79__ATXDefaultHomeScreenItemOnboardingStacksProducer_generatedStacksWithRequest___block_invoke_94(uint64_t a1, void *a2)
{
  v3 = [a2 extensionBundleId];
  if (![v3 isEqualToString:@"com.apple.Home.HomeWidget.Interactive"])
  {

    return 1;
  }

  v4 = *(a1 + 32);

  if (v4)
  {
    return 1;
  }

  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "No Home accessory is configured. Filtering out default Home widget", v7, 2u);
  }

  return 0;
}

- (id)_ambientOnboardingStacks
{
  v3 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:@"ambientOnboardingDefaultStack1RequiredWidgets"];
  v4 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:@"ambientOnboardingDefaultStack2RequiredWidgets"];
  if ([(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self isDayZeroExperience])
  {
    v5 = [ATXDefaultHomeScreenItemProducerUtilities stackFromDefaultStackPersonalities:v3 suggestedSize:0 maxWidgetsPerStack:6 personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary isiPad:self->_isiPad];
    v6 = [ATXDefaultHomeScreenItemProducerUtilities stackFromDefaultStackPersonalities:v4 suggestedSize:0 maxWidgetsPerStack:6 personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary isiPad:self->_isiPad];
    v7 = [ATXDefaultHomeScreenItemOnboardingStacks alloc];
    v8 = [(ATXDefaultHomeScreenItemOnboardingStacks *)v7 initWithOnboardingStack1:v5 stack2:v6 sortedThirdPartyWidgets:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v5 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:self->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:0 appLaunchCounts:self->_appLaunchCounts];
    v9 = [(ATXDefaultHomeScreenItemRanker *)v5 widgetsBySortingAndFilteringWidgetsUsingOnboardingStacksAlgorithm:self->_stackableCandidates algorithm:2 regularlyUsedThreshold:7uLL];
    v6 = [v9 mutableCopy];

    [ATXDefaultHomeScreenItemRanker filterOutDuplicateWidgetsFromSameAppBundleId:v6];
    v10 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _blockedWidgetPersonalities];
    v11 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedAmbientOnboardingStacksForSize:0 stack1RequiredWidgetPersonalities:v3 stack2RequiredWidgetPersonalities:v4 rankedWidgets:v6 usedWidgetPersonalities:v10];
    v20 = v3;
    v12 = [v11 first];
    LOBYTE(v18) = self->_isiPad;
    v13 = MEMORY[0x1E695E0F0];
    v14 = [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:v12 mediumStack:MEMORY[0x1E695E0F0] largeStack:MEMORY[0x1E695E0F0] extraLargeStack:MEMORY[0x1E695E0F0] suggestedSize:0 maxWidgetsPerStack:6 isiPad:v18];

    v15 = [v11 second];
    LOBYTE(v19) = self->_isiPad;
    v16 = [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:v15 mediumStack:v13 largeStack:v13 extraLargeStack:v13 suggestedSize:0 maxWidgetsPerStack:6 isiPad:v19];

    v8 = [[ATXDefaultHomeScreenItemOnboardingStacks alloc] initWithOnboardingStack1:v14 stack2:v16 sortedThirdPartyWidgets:v13];
    v3 = v20;
  }

  return v8;
}

- (id)_dayZeroOnboardingStacks
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_isiPad)
  {
    v3 = @"dayZeroOnboardingDefaultStack1iPad";
  }

  else
  {
    v3 = @"dayZeroOnboardingDefaultStack1iPhone";
  }

  v4 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v3];
  if (self->_isiPad)
  {
    v5 = @"dayZeroOnboardingDefaultStack2iPad";
  }

  else
  {
    v5 = @"dayZeroOnboardingDefaultStack2iPhone";
  }

  v6 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v5];
  v7 = objc_opt_new();
  v8 = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [v7 isTodayWidgetPermittedForLocale:v8];

  v10 = __atxlog_handle_home_screen();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v18 = 136315138;
      v19 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer _dayZeroOnboardingStacks]";
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "%s: allowing news widget", &v18, 0xCu);
    }
  }

  else
  {
    if (v11)
    {
      v18 = 136315138;
      v19 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer _dayZeroOnboardingStacks]";
      _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "%s: not allowing news widget", &v18, 0xCu);
    }

    v12 = [v4 _pas_filteredArrayWithTest:&__block_literal_global_109];

    [v6 _pas_filteredArrayWithTest:&__block_literal_global_111];
    v6 = v10 = v6;
    v4 = v12;
  }

  v13 = [ATXDefaultHomeScreenItemProducerUtilities stackFromDefaultStackPersonalities:v4 suggestedSize:0 maxWidgetsPerStack:4 personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary isiPad:self->_isiPad];
  v14 = [ATXDefaultHomeScreenItemProducerUtilities stackFromDefaultStackPersonalities:v6 suggestedSize:0 maxWidgetsPerStack:4 personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary isiPad:self->_isiPad];
  v15 = [ATXDefaultHomeScreenItemOnboardingStacks alloc];
  v16 = [(ATXDefaultHomeScreenItemOnboardingStacks *)v15 initWithOnboardingStack1:v13 stack2:v14 sortedThirdPartyWidgets:MEMORY[0x1E695E0F0]];

  return v16;
}

uint64_t __76__ATXDefaultHomeScreenItemOnboardingStacksProducer__dayZeroOnboardingStacks__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 stringRepresentation];
  if ([v3 isEqualToString:@"com.apple.news.widget:today"])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 stringRepresentation];
    v4 = [v5 isEqualToString:@"com.apple.news.widget:topic"] ^ 1;
  }

  return v4;
}

uint64_t __76__ATXDefaultHomeScreenItemOnboardingStacksProducer__dayZeroOnboardingStacks__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 stringRepresentation];
  if ([v3 isEqualToString:@"com.apple.news.widget:today"])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 stringRepresentation];
    v4 = [v5 isEqualToString:@"com.apple.news.widget:topic"] ^ 1;
  }

  return v4;
}

- (id)personalizedOnboardingStacksWithRankingAlgorithm:(int)a3
{
  v3 = *&a3;
  v61 = *MEMORY[0x1E69E9840];
  v5 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:self->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:0 appLaunchCounts:self->_appLaunchCounts];
  v52 = [ATXDefaultHomeScreenItemProducerUtilities splitDescriptorsIntoFirstPartyAndThirdParty:self->_stackableCandidates];
  v6 = [v52 second];
  v53 = v5;
  v7 = [(ATXDefaultHomeScreenItemRanker *)v5 widgetsBySortingAndFilteringWidgetsUsingOnboardingStacksAlgorithm:v6 algorithm:v3 regularlyUsedThreshold:7uLL];

  v8 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v58 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer personalizedOnboardingStacksWithRankingAlgorithm:]";
    v59 = 2048;
    v60 = [v7 count];
    _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s: %lu available 3P widgets to add to stack (all sizes)", buf, 0x16u);
  }

  if (self->_isiPad)
  {
    v9 = @"personalizedOnboardingDefaultStack1RequiredWidgetsiPad";
  }

  else
  {
    v9 = @"personalizedOnboardingDefaultStack1RequiredWidgetsiPhone";
  }

  v10 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v9];
  if (self->_isiPad)
  {
    v11 = @"personalizedOnboardingDefaultStack2RequiredWidgetsiPad";
  }

  else
  {
    v11 = @"personalizedOnboardingDefaultStack2RequiredWidgetsiPhone";
  }

  v12 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v11];
  if (self->_isiPad)
  {
    v13 = @"personalizedOnboardingDefaultStack1ConditionalWidgetsiPad";
  }

  else
  {
    v13 = @"personalizedOnboardingDefaultStack1ConditionalWidgetsiPhone";
  }

  v14 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v13];
  if (self->_isiPad)
  {
    v15 = @"personalizedOnboardingDefaultStack2ConditionalWidgetsiPad";
  }

  else
  {
    v15 = @"personalizedOnboardingDefaultStack2ConditionalWidgetsiPhone";
  }

  v16 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v15];
  if (self->_isiPad)
  {
    v17 = @"personalizedOnboardingDefaultStack1FallbackWidgetsiPad";
  }

  else
  {
    v17 = @"personalizedOnboardingDefaultStack1FallbackWidgetsiPhone";
  }

  v18 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v17];
  if (self->_isiPad)
  {
    v19 = @"personalizedOnboardingDefaultStack2FallbackWidgetsiPad";
  }

  else
  {
    v19 = @"personalizedOnboardingDefaultStack2FallbackWidgetsiPhone";
  }

  v20 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v19];
  v21 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _blockedWidgetPersonalities];
  v56 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedOnboardingStacksForSize:0 requiredWidgetPersonalitiesForStack1:v10 requiredWidgetPersonalitiesForStack2:v12 conditionalWidgetPersonalitiesForStack1:v14 conditionalWidgetPersonalitiesForStack2:v16 fallbackWidgetPersonalitiesForStack1:v18 fallbackWidgetPersonalitiesForStack2:v20 rankedThirdPartyWidgets:v7 blockedWidgetPersonalities:v21];
  v55 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedOnboardingStacksForSize:1 requiredWidgetPersonalitiesForStack1:v10 requiredWidgetPersonalitiesForStack2:v12 conditionalWidgetPersonalitiesForStack1:v14 conditionalWidgetPersonalitiesForStack2:v16 fallbackWidgetPersonalitiesForStack1:v18 fallbackWidgetPersonalitiesForStack2:v20 rankedThirdPartyWidgets:v7 blockedWidgetPersonalities:v21];
  v54 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedOnboardingStacksForSize:2 requiredWidgetPersonalitiesForStack1:v10 requiredWidgetPersonalitiesForStack2:v12 conditionalWidgetPersonalitiesForStack1:v14 conditionalWidgetPersonalitiesForStack2:v16 fallbackWidgetPersonalitiesForStack1:v18 fallbackWidgetPersonalitiesForStack2:v20 rankedThirdPartyWidgets:v7 blockedWidgetPersonalities:v21];
  v50 = v10;
  v51 = v7;
  v48 = v14;
  v49 = v12;
  v46 = v18;
  v47 = v16;
  v45 = v20;
  if (self->_isiPad)
  {
    v22 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedOnboardingStacksForSize:4 requiredWidgetPersonalitiesForStack1:v10 requiredWidgetPersonalitiesForStack2:v12 conditionalWidgetPersonalitiesForStack1:v14 conditionalWidgetPersonalitiesForStack2:v16 fallbackWidgetPersonalitiesForStack1:v18 fallbackWidgetPersonalitiesForStack2:v20 rankedThirdPartyWidgets:v7 blockedWidgetPersonalities:v21];
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x1E69C5D98]);
    v22 = [v23 initWithFirst:MEMORY[0x1E695E0F0] second:MEMORY[0x1E695E0F0]];
  }

  v24 = v22;
  v25 = [v56 first];
  v26 = [v55 first];
  v27 = [v54 first];
  v28 = [v24 first];
  LOBYTE(v43) = self->_isiPad;
  v29 = [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:"defaultWidgetStackFromSmallStack:mediumStack:largeStack:extraLargeStack:suggestedSize:maxWidgetsPerStack:isiPad:" mediumStack:v25 largeStack:v26 extraLargeStack:v27 suggestedSize:v28 maxWidgetsPerStack:v43 isiPad:?];

  v30 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v29 compactDescription];
    adblDrainClassification = self->_adblDrainClassification;
    *buf = 138543618;
    v58 = v31;
    v59 = 2048;
    v60 = adblDrainClassification;
    _os_log_impl(&dword_1BF549000, v30, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: generated personalized onboarding stack 1:%{public}@, battery drain: %lu", buf, 0x16u);
  }

  v33 = [v56 second];
  v34 = [v55 second];
  v35 = [v54 second];
  v36 = [v24 second];
  LOBYTE(v44) = self->_isiPad;
  v37 = [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:"defaultWidgetStackFromSmallStack:mediumStack:largeStack:extraLargeStack:suggestedSize:maxWidgetsPerStack:isiPad:" mediumStack:v33 largeStack:v34 extraLargeStack:v35 suggestedSize:v36 maxWidgetsPerStack:v44 isiPad:?];

  v38 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [v29 compactDescription];
    v40 = self->_adblDrainClassification;
    *buf = 138543618;
    v58 = v39;
    v59 = 2048;
    v60 = v40;
    _os_log_impl(&dword_1BF549000, v38, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: generated personalized onboarding stack 2:%{public}@, battery drain: %lu", buf, 0x16u);
  }

  v41 = [[ATXDefaultHomeScreenItemOnboardingStacks alloc] initWithOnboardingStack1:v29 stack2:v37 sortedThirdPartyWidgets:v51];

  return v41;
}

- (id)_personalizedAmbientOnboardingStacksForSize:(unint64_t)a3 stack1RequiredWidgetPersonalities:(id)a4 stack2RequiredWidgetPersonalities:(id)a5 rankedWidgets:(id)a6 usedWidgetPersonalities:(id)a7
{
  v59 = *MEMORY[0x1E69E9840];
  v12 = a4;
  v45 = a5;
  v41 = a6;
  v13 = a7;
  v46 = objc_opt_new();
  v14 = objc_opt_new();
  v43 = self;
  v44 = a3;
  v15 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v12 size:a3 personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v52;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v52 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v51 + 1) + 8 * i);
        v21 = [ATXWidgetPersonality stringRepresentationForATXHomeScreenWidgetDescriptor:v20];
        if ([v13 containsObject:v21])
        {
          v22 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v57 = v21;
            _os_log_impl(&dword_1BF549000, v22, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: not adding required widget %{public}@ to first ambient onboarding stack because it is already used (or on deny list)", buf, 0xCu);
          }
        }

        else
        {
          [v46 addObject:v20];
          [v13 addObject:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v17);
  }

  v42 = v12;
  v23 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_115];
  [v13 addObjectsFromArray:v23];

  v24 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v45 size:v44 personalityToDescriptorDictionary:v43->_personalityToDescriptorDictionary];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v48;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v47 + 1) + 8 * j);
        v30 = [ATXWidgetPersonality stringRepresentationForATXHomeScreenWidgetDescriptor:v29];
        if ([v13 containsObject:v30])
        {
          v31 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v57 = v30;
            _os_log_impl(&dword_1BF549000, v31, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: not adding required widget %{public}@ to second ambient onboarding stack because it is already used (or on deny list)", buf, 0xCu);
          }
        }

        else
        {
          [v14 addObject:v29];
          [v13 addObject:v30];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v26);
  }

  v32 = [v45 _pas_mappedArrayWithTransform:&__block_literal_global_118];
  [v13 addObjectsFromArray:v32];

  if ([v46 count] <= 5)
  {
    v33 = MEMORY[0x1E695E0F0];
    do
    {
      v34 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v43 _firstUnusedWidgetFromList:v41 fallbackWidgets:v33 usedPersonalities:v13 size:v44];
      if (!v34)
      {
        break;
      }

      v35 = v34;
      [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v43 _addWidget:v34 toStack:v46 andMarkAsUsed:v13];
    }

    while ([v46 count] < 6);
  }

  if ([v14 count] <= 5)
  {
    v36 = MEMORY[0x1E695E0F0];
    do
    {
      v37 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v43 _firstUnusedWidgetFromList:v41 fallbackWidgets:v36 usedPersonalities:v13 size:v44];
      if (!v37)
      {
        break;
      }

      v38 = v37;
      [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v43 _addWidget:v37 toStack:v14 andMarkAsUsed:v13];
    }

    while ([v14 count] < 6);
  }

  v39 = [objc_alloc(MEMORY[0x1E69C5D98]) initWithFirst:v46 second:v14];

  return v39;
}

- (id)_personalizedStacksForSize:(unint64_t)a3 requiredWidgetPersonalitiesPerStack:(id)a4 rankedWidgets:(id)a5 usedWidgetPersonalities:(id)a6 maxNumberOfWidgetsPerStack:(unint64_t)a7 denyListOfExtensions:(id)a8
{
  v39 = a7;
  v66 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v46 = a5;
  v12 = a6;
  v13 = a8;
  v42 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v11;
  v43 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v43)
  {
    v41 = *v58;
    do
    {
      v14 = 0;
      do
      {
        if (*v58 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v14;
        v15 = *(*(&v57 + 1) + 8 * v14);
        v16 = [MEMORY[0x1E695DF70] array];
        v44 = v15;
        v17 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v15 size:a3 personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary];
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v53 objects:v64 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v54;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v54 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v53 + 1) + 8 * i);
              v23 = [ATXWidgetPersonality stringRepresentationForATXHomeScreenWidgetDescriptor:v22];
              if ([v12 containsObject:v23])
              {
                v24 = __atxlog_handle_home_screen();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v63 = v23;
                  v25 = v24;
                  v26 = "ATXDefaultHomeScreenItemProducer: not adding required widget %{public}@ to stack because it is already used";
                  goto LABEL_17;
                }

                goto LABEL_18;
              }

              if ([ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorDueToDenyList:v22 fromExcludedWidgetsWithIdentifiers:v13])
              {
                v24 = __atxlog_handle_home_screen();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v63 = v23;
                  v25 = v24;
                  v26 = "ATXDefaultHomeScreenItemProducer: not adding required widget %{public}@ to stack because it is in client's deny list";
LABEL_17:
                  _os_log_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
                }

LABEL_18:

                goto LABEL_20;
              }

              [v16 addObject:v22];
              [v12 addObject:v23];
LABEL_20:
            }

            v19 = [v17 countByEnumeratingWithState:&v53 objects:v64 count:16];
          }

          while (v19);
        }

        v27 = [v44 _pas_mappedArrayWithTransform:&__block_literal_global_121];
        [v12 addObjectsFromArray:v27];

        [v42 addObject:v16];
        v14 = v45 + 1;
      }

      while (v45 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v43);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v28 = v42;
  v29 = [v28 countByEnumeratingWithState:&v49 objects:v61 count:16];
  v30 = v39;
  if (v29)
  {
    v31 = v29;
    v32 = *v50;
    v33 = MEMORY[0x1E695E0F0];
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(v28);
        }

        v35 = *(*(&v49 + 1) + 8 * j);
        while ([v35 count] < v30)
        {
          v36 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _firstUnusedWidgetFromList:v46 fallbackWidgets:v33 usedPersonalities:v12 size:a3];
          if (!v36)
          {
            break;
          }

          v37 = v36;
          if (![ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorDueToDenyList:v36 fromExcludedWidgetsWithIdentifiers:v13])
          {
            [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _addWidget:v37 toStack:v35 andMarkAsUsed:v12];
          }
        }
      }

      v31 = [v28 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v31);
  }

  return v28;
}

- (id)_personalizedOnboardingStacksForSize:(unint64_t)a3 requiredWidgetPersonalitiesForStack1:(id)a4 requiredWidgetPersonalitiesForStack2:(id)a5 conditionalWidgetPersonalitiesForStack1:(id)a6 conditionalWidgetPersonalitiesForStack2:(id)a7 fallbackWidgetPersonalitiesForStack1:(id)a8 fallbackWidgetPersonalitiesForStack2:(id)a9 rankedThirdPartyWidgets:(id)a10 blockedWidgetPersonalities:(id)a11
{
  v41 = *MEMORY[0x1E69E9840];
  v31 = a11;
  v34 = a9;
  v32 = a8;
  v33 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = [ATXDefaultHomeScreenItemProducerUtilities widgets:a10 filteredForSize:a3];
  v22 = [v21 mutableCopy];

  [ATXDefaultHomeScreenItemRanker filterOutDuplicateWidgetsFromSameAppBundleId:v22];
  v23 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v36 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer _personalizedOnboardingStacksForSize:requiredWidgetPersonalitiesForStack1:requiredWidgetPersonalitiesForStack2:conditionalWidgetPersonalitiesForStack1:conditionalWidgetPersonalitiesForStack2:fallbackWidgetPersonalitiesForStack1:fallbackWidgetPersonalitiesForStack2:rankedThirdPartyWidgets:blockedWidgetPersonalities:]";
    v37 = 2048;
    v38 = [v22 count];
    v39 = 2048;
    v40 = a3;
    _os_log_impl(&dword_1BF549000, v23, OS_LOG_TYPE_DEFAULT, "%s: %lu available 3P widgets for onboarding stack of size:%lu)", buf, 0x20u);
  }

  v24 = [v31 mutableCopy];
  LOBYTE(v29) = 1;
  v25 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedOnboardingStackForSize:a3 requiredWidgetPersonalities:v20 conditionalWidgetPersonalities:v18 fallbackWidgetPersonalities:v32 rankedThirdPartyWidgets:v22 usedWidgetPersonalities:v24 shouldAdd3PWidgetToStack:v29];

  LOBYTE(v30) = self->_adblDrainClassification != 3;
  v26 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _personalizedOnboardingStackForSize:a3 requiredWidgetPersonalities:v19 conditionalWidgetPersonalities:v33 fallbackWidgetPersonalities:v34 rankedThirdPartyWidgets:v22 usedWidgetPersonalities:v24 shouldAdd3PWidgetToStack:v30];

  v27 = [objc_alloc(MEMORY[0x1E69C5D98]) initWithFirst:v25 second:v26];

  return v27;
}

- (id)_personalizedOnboardingStackForSize:(unint64_t)a3 requiredWidgetPersonalities:(id)a4 conditionalWidgetPersonalities:(id)a5 fallbackWidgetPersonalities:(id)a6 rankedThirdPartyWidgets:(id)a7 usedWidgetPersonalities:(id)a8 shouldAdd3PWidgetToStack:(BOOL)a9
{
  v78 = *MEMORY[0x1E69E9840];
  v15 = a4;
  v59 = a5;
  v58 = a6;
  v57 = a7;
  v16 = a8;
  v66 = a3;
  v67 = objc_opt_new();
  v63 = self;
  v61 = v15;
  v17 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v15 size:a3 personalityToDescriptorDictionary:self->_personalityToDescriptorDictionary];
  v18 = [v17 mutableCopy];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v18;
  v19 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v71;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v71 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v70 + 1) + 8 * i);
        v24 = [ATXWidgetPersonality stringRepresentationForATXHomeScreenWidgetDescriptor:v23];
        if ([v16 containsObject:v24])
        {
          v25 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *v75 = v24;
            *&v75[8] = 2048;
            v76 = v66;
            _os_log_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: not adding required widget %{public}@ to onboarding stack of size: %lu because it is already used (or on deny list)", buf, 0x16u);
          }
        }

        else
        {
          [v67 addObject:v23];
          [v16 addObject:v24];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    }

    while (v20);
  }

  v26 = [v15 _pas_mappedArrayWithTransform:&__block_literal_global_127];
  [v16 addObjectsFromArray:v26];

  v27 = objc_alloc(MEMORY[0x1E695DFD8]);
  v28 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = objc_opt_new();
  }

  v31 = v30;

  v62 = [v27 initWithArray:v31];
  if ([(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v63 isiPad]&& [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v63 shouldIncludeContactsWidget])
  {
    v32 = __atxlog_handle_home_screen();
    v34 = v58;
    v33 = v59;
    v35 = v57;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BF549000, v32, OS_LOG_TYPE_DEFAULT, "Considering Contacts widget... is iPad: YES, should include: YES", buf, 2u);
    }

    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __248__ATXDefaultHomeScreenItemOnboardingStacksProducer__personalizedOnboardingStackForSize_requiredWidgetPersonalities_conditionalWidgetPersonalities_fallbackWidgetPersonalities_rankedThirdPartyWidgets_usedWidgetPersonalities_shouldAdd3PWidgetToStack___block_invoke_128;
    v69[3] = &unk_1E80C1CC0;
    v69[4] = v63;
    v36 = MEMORY[0x1BFB5BA40](v69);
    if (v36[2]())
    {
      v37 = [[ATXWidgetPersonality alloc] initWithExtensionBundleId:@"com.apple.PeopleViewService.PeopleWidget-iOS" kind:@"MultipleContactWidget_iOS"];
      v38 = [(ATXWidgetPersonality *)v37 stringRepresentation];
      v39 = [v16 containsObject:v38];

      if (v39)
      {
        v40 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BF549000, v40, OS_LOG_TYPE_DEFAULT, "Contacts widget already exists in used personalities list, not adding", buf, 2u);
        }
      }

      else
      {
        v64 = v37;
        v45 = objc_alloc(MEMORY[0x1E6994310]);
        v46 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:@"com.apple.PeopleViewService.PeopleWidget-iOS" containerBundleIdentifier:@"com.apple.PeopleViewService" deviceIdentifier:0];
        v40 = [v45 initWithExtensionIdentity:v46 kind:@"MultipleContactWidget_iOS" supportedFamilies:28 intentType:@"SelectPeopleIntent"];

        v47 = objc_opt_new();
        [v47 setAvocadoDescriptor:v40];
        [v47 setSuggestedSize:1];
        if ([(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v63 _shouldAddWidget:v47 andFilterFromApps:v62])
        {
          [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v63 _addWidget:v47 toStack:v67 andMarkAsUsed:v16];
        }

        v48 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v75 = v47;
          _os_log_impl(&dword_1BF549000, v48, OS_LOG_TYPE_DEFAULT, "Added contacts widget to stack: %@", buf, 0xCu);
        }

        v37 = v64;
      }
    }

    else
    {
      v37 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(&v37->super, OS_LOG_TYPE_DEFAULT))
      {
        cachedHasiCloudFamily = v63->_cachedHasiCloudFamily;
        *buf = 138412290;
        *v75 = cachedHasiCloudFamily;
        _os_log_impl(&dword_1BF549000, &v37->super, OS_LOG_TYPE_DEFAULT, "Not considering Contacts widget... no iCloud family (cached bit: %@)", buf, 0xCu);
      }
    }
  }

  else
  {
    v41 = __atxlog_handle_home_screen();
    v34 = v58;
    v33 = v59;
    v35 = v57;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v63 isiPad];
      v43 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v63 shouldIncludeContactsWidget];
      *buf = 67109376;
      *v75 = v42;
      *&v75[4] = 1024;
      *&v75[6] = v43;
      _os_log_impl(&dword_1BF549000, v41, OS_LOG_TYPE_DEFAULT, "Not considering Contacts widget... is iPad: %{BOOL}d, should include: %{BOOL}d", buf, 0xEu);
    }
  }

  v49 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v33 size:v66 personalityToDescriptorDictionary:v63->_personalityToDescriptorDictionary];
  v60 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:v63->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:0 appLaunchCounts:v63->_appLaunchCounts];
  v50 = [(ATXDefaultHomeScreenItemRanker *)v60 widgetsBySortingAndFilteringWidgetsUsingOnboardingStacksAlgorithm:v49 algorithm:3 regularlyUsedThreshold:7uLL];
  v51 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v34 size:v66 personalityToDescriptorDictionary:v63->_personalityToDescriptorDictionary];
  v65 = v50;
  v52 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v63 _firstUnusedWidgetFromList:v50 fallbackWidgets:v51 usedPersonalities:v16 size:v66];
  [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v63 _addWidget:v52 toStack:v67 andMarkAsUsed:v16];
  if ([v67 count] <= 2)
  {
    v53 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v63 _firstUnusedWidgetFromList:v65 fallbackWidgets:v51 usedPersonalities:v16 size:v66];
    [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v63 _addWidget:v53 toStack:v67 andMarkAsUsed:v16];
  }

  if (a9)
  {
    v54 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v63 _firstWidgetThatIsntUsedYet:v35 usedPersonalities:v16];
    [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v63 _addWidget:v54 toStack:v67 andMarkAsUsed:v16];
  }

  else
  {
    v54 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      adblDrainClassification = v63->_adblDrainClassification;
      *buf = 134218240;
      *v75 = v66;
      *&v75[8] = 2048;
      v76 = adblDrainClassification;
      _os_log_impl(&dword_1BF549000, v54, OS_LOG_TYPE_DEFAULT, "ATXDefaultHomeScreenItemProducer: not adding 3P widget to onboarding stack of size: %lu because of drain: %lu", buf, 0x16u);
    }
  }

  return v67;
}

uint64_t __248__ATXDefaultHomeScreenItemOnboardingStacksProducer__personalizedOnboardingStackForSize_requiredWidgetPersonalities_conditionalWidgetPersonalities_fallbackWidgetPersonalities_rankedThirdPartyWidgets_usedWidgetPersonalities_shouldAdd3PWidgetToStack___block_invoke_128(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 48) BOOLValue])
  {
    v1 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&dword_1BF549000, v1, OS_LOG_TYPE_DEFAULT, "Considering Contacts widget... has cached iCloud family", v5, 2u);
    }

    v2 = 1;
  }

  else
  {
    v3 = objc_opt_new();
    v2 = [v3 hasiCloudFamily];

    v1 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = v2;
      _os_log_impl(&dword_1BF549000, v1, OS_LOG_TYPE_DEFAULT, "Considering Contacts widget... scorer response: %{BOOL}d", v5, 8u);
    }
  }

  return v2;
}

- (void)_addWidget:(id)a3 toStack:(id)a4 andMarkAsUsed:(id)a5
{
  if (a3)
  {
    v7 = a5;
    v8 = a3;
    [a4 addObject:v8];
    v9 = [ATXWidgetPersonality stringRepresentationForATXHomeScreenWidgetDescriptor:v8];

    [v7 addObject:v9];
  }
}

- (BOOL)_shouldAddWidget:(id)a3 andFilterFromApps:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 appBundleId];
  v8 = v7 == 0;

  if (!v7)
  {
    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer _shouldAddWidget:andFilterFromApps:]";
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "%s: No parent bundleId for Widget descriptor: %@", &v18, 0x16u);
    }

    goto LABEL_11;
  }

  v9 = [v5 appBundleId];
  v10 = [v6 containsObject:v9];

  if (v10)
  {
    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 appBundleId];
      v18 = 138412290;
      v19 = v12;
      v13 = "ATXDefaultHomeScreenItemProducer: Show on Homescreen is turned off for app with bundleId: %@. Hence not adding its widget";
LABEL_10:
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, v13, &v18, 0xCu);
    }
  }

  else
  {
    v14 = objc_opt_new();
    v15 = [v5 appBundleId];
    v16 = [v14 bundleIdIsLockedOrHiddenByUserPreference:v15];

    if (!v16)
    {
      v8 = 1;
      goto LABEL_12;
    }

    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 appBundleId];
      v18 = 138412290;
      v19 = v12;
      v13 = "ATXDefaultHomeScreenItemProducer: App: %@ is locked or hidden by user preference. Hence not adding its widget";
      goto LABEL_10;
    }
  }

LABEL_11:

LABEL_12:
  return v8;
}

- (id)_firstUnusedWidgetFromList:(id)a3 fallbackWidgets:(id)a4 usedPersonalities:(id)a5 size:(unint64_t)a6
{
  v9 = a4;
  v10 = a5;
  v11 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _firstWidgetThatIsntUsedYet:a3 usedPersonalities:v10];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)self _firstWidgetThatIsntUsedYet:v9 usedPersonalities:v10];
  }

  v14 = v13;

  return v14;
}

- (id)_firstWidgetThatIsntUsedYet:(id)a3 usedPersonalities:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24 = a4;
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  v12 = [v7 initWithArray:v11];
  v13 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        v20 = [ATXWidgetPersonality stringRepresentationForATXHomeScreenWidgetDescriptor:v19];
        if (!-[ATXDefaultHomeScreenItemOnboardingStacksProducer _shouldAddWidget:andFilterFromApps:](self, "_shouldAddWidget:andFilterFromApps:", v19, v12) || ([v13 addObject:v20], !objc_msgSend(v24, "containsObject:", v20)))
        {
          v22 = v19;

          v21 = v14;
          goto LABEL_17;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v21 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v24 _firstWidgetThatIsntUsedYet:v13 usedPersonalities:v21];
  }

  v22 = 0;
LABEL_17:

  return v22;
}

- (BOOL)hasConfiguredHomeAccessoryControl
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = BiomeLibrary();
  v3 = [v2 HomeKit];
  v4 = [v3 Client];
  v5 = [v4 AccessoryControl];

  v6 = [v5 atx_publisherFromStartDate:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke_150;
  v9[3] = &unk_1E80C1530;
  v9[4] = &v10;
  v7 = [v6 sinkWithCompletion:&__block_literal_global_149 shouldContinue:v9];

  LOBYTE(v6) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke_cold_1(v2);
    }
  }
}

BOOL __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke_150(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 eventBody];
    v7 = [v6 serviceType];

    v8 = v7 == 0;
    if (v7)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  else
  {
    v9 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke_150_cold_1(v3);
    }

    v8 = 1;
  }

  return v8;
}

- (void)_firstWidgetThatIsntUsedYet:(os_log_t)log usedPersonalities:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = "[ATXDefaultHomeScreenItemOnboardingStacksProducer _firstWidgetThatIsntUsedYet:usedPersonalities:]";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: could not find widget that wasn't already used, used personalities: %@, available widgets: %@", &v3, 0x20u);
}

void __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_4(&dword_1BF549000, v2, v3, "Could not fetch Home accessory events. Error: %@", v4, v5, v6, v7, 2u);
}

void __85__ATXDefaultHomeScreenItemOnboardingStacksProducer_hasConfiguredHomeAccessoryControl__block_invoke_150_cold_1(void *a1)
{
  v1 = [a1 eventBody];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_4(&dword_1BF549000, v4, v5, "Incorrect class received while fetching home accessory events: %@", v6, v7, v8, v9, 2u);
}

@end