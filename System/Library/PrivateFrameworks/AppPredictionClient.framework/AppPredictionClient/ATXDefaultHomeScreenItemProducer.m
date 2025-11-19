@interface ATXDefaultHomeScreenItemProducer
+ (CHSWidgetDescriptor)appPredictionsWidgetDescriptor;
- (ATXDefaultHomeScreenItemProducer)initWithDescriptors:(id)a3 descriptorInstallDates:(id)a4 homeScreenConfig:(id)a5 isDayZeroExperience:(BOOL)a6 isiPad:(BOOL)a7 spotlightAppLaunchHistogram:(id)a8 adblDrainClassification:(unint64_t)a9 appLaunchCounts:(id)a10;
- (ATXDefaultHomeScreenItemProducer)initWithDescriptors:(id)a3 descriptorInstallDates:(id)a4 homeScreenConfig:(id)a5 isDayZeroExperience:(BOOL)a6 isiPad:(BOOL)a7 spotlightAppLaunchHistogram:(id)a8 appLaunchCounts:(id)a9;
- (ATXDefaultHomeScreenItemUpdate)update;
- (BOOL)_isNewlyInstalledWidget:(id)a3;
- (BOOL)_isStackConfiguredOnHomeScreen;
- (NSArray)candidateDescriptors;
- (NSDictionary)personalityToDescriptorDictionary;
- (NSSet)widgetsOnHomeScreen;
- (id)_appPredictionsWidgetDescriptor;
- (id)_dayZeroOnboardingStacks;
- (id)_dayZeroUpdate;
- (id)_firstInstalledWidgetDate;
- (id)_personalizedGalleryWidgetsForSize:(unint64_t)a3;
- (id)_personalizedStackForRankerPlistType:(int)a3;
- (id)_personalizedStackFromCandidates:(id)a3 rankerPlistType:(int)a4 size:(unint64_t)a5;
- (id)_personalizedUpdate;
- (id)_stackFromDefaultStackPersonalities:(id)a3;
- (id)_stackableCandidates;
- (id)ambientOnboardingStacks;
- (id)generatedStacksWithRequest:(id)a3;
- (id)onboardingStacks;
- (id)personalizedOnboardingStacksWithRankingAlgorithm:(int)a3;
- (int64_t)_rankTypeGivenWidgetIsNewlyInstalled:(BOOL)a3 isAlreadyAdded:(BOOL)a4;
- (void)_initializeCachedWidgetPersonalityToAppScoreCache;
@end

@implementation ATXDefaultHomeScreenItemProducer

- (ATXDefaultHomeScreenItemProducer)initWithDescriptors:(id)a3 descriptorInstallDates:(id)a4 homeScreenConfig:(id)a5 isDayZeroExperience:(BOOL)a6 isiPad:(BOOL)a7 spotlightAppLaunchHistogram:(id)a8 appLaunchCounts:(id)a9
{
  v10 = a7;
  v11 = a6;
  v16 = a9;
  v17 = a8;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = +[ATXBatteryDrainBehavior sharedInstance];
  v22 = -[ATXDefaultHomeScreenItemProducer initWithDescriptors:descriptorInstallDates:homeScreenConfig:isDayZeroExperience:isiPad:spotlightAppLaunchHistogram:adblDrainClassification:appLaunchCounts:](self, "initWithDescriptors:descriptorInstallDates:homeScreenConfig:isDayZeroExperience:isiPad:spotlightAppLaunchHistogram:adblDrainClassification:appLaunchCounts:", v20, v19, v18, v11, v10, v17, [v21 fetchADBLDrainClassification], v16);

  return v22;
}

- (ATXDefaultHomeScreenItemProducer)initWithDescriptors:(id)a3 descriptorInstallDates:(id)a4 homeScreenConfig:(id)a5 isDayZeroExperience:(BOOL)a6 isiPad:(BOOL)a7 spotlightAppLaunchHistogram:(id)a8 adblDrainClassification:(unint64_t)a9 appLaunchCounts:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v24 = a8;
  v23 = a10;
  v25.receiver = self;
  v25.super_class = ATXDefaultHomeScreenItemProducer;
  v19 = [(ATXDefaultHomeScreenItemProducer *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_descriptors, a3);
    objc_storeStrong(&v20->_descriptorInstallDates, a4);
    objc_storeStrong(&v20->_homeScreenConfig, a5);
    v20->_isDayZeroExperience = a6;
    v20->_isiPad = a7;
    objc_storeStrong(&v20->_spotlightAppLaunchHistogram, a8);
    v20->_adblDrainClassification = a9;
    objc_storeStrong(&v20->_appLaunchCounts, a10);
    [(ATXDefaultHomeScreenItemProducer *)v20 _initializeCachedWidgetPersonalityToAppScoreCache];
  }

  return v20;
}

- (void)_initializeCachedWidgetPersonalityToAppScoreCache
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  cachedWidgetPersonalityToAppScore = self->_cachedWidgetPersonalityToAppScore;
  self->_cachedWidgetPersonalityToAppScore = v4;

  if (!self->_isDayZeroExperience)
  {
    v29 = v3;
    v32 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v6 = [(ATXDefaultHomeScreenItemProducer *)self candidateDescriptors];
    v7 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v39;
      do
      {
        v10 = 0;
        do
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v38 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          v13 = [v11 appBundleId];

          if (v13)
          {
            v14 = [v11 appBundleId];
            [v32 addObject:v14];

            v15 = [v11 appBundleId];
            LODWORD(v14) = [v15 isEqualToString:@"com.apple.mobileslideshow"];

            if (v14)
            {
              [v32 addObject:@"com.apple.camera"];
            }
          }

          objc_autoreleasePoolPop(v12);
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v8);
    }

    v16 = objc_opt_new();
    v17 = [v16 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps:v32];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [(ATXDefaultHomeScreenItemProducer *)self candidateDescriptors];
    v18 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      v21 = off_1E80BF000;
      v30 = v17;
      do
      {
        v22 = 0;
        do
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v34 + 1) + 8 * v22);
          context = objc_autoreleasePoolPush();
          v24 = [(__objc2_class *)v21[381] stringRepresentationForATXHomeScreenWidgetDescriptor:v23];
          v25 = [[ATXDefaultHomeScreenItemAppLaunchScorer alloc] initWithWidget:v23 appLaunchHistogram:self->_spotlightAppLaunchHistogram];
          if ([(ATXDefaultHomeScreenItemAppLaunchScorer *)v25 isWidgetSpecialCase])
          {
            v26 = [(ATXDefaultHomeScreenItemAppLaunchScorer *)v25 scoreWithCachedAppLaunchData:v17];
            [(NSMutableDictionary *)self->_cachedWidgetPersonalityToAppScore setObject:v26 forKeyedSubscript:v24];
          }

          else
          {
            v26 = [v23 appBundleId];
            if (v26)
            {
              [v17 objectForKeyedSubscript:v26];
              v28 = v27 = v21;
              [(NSMutableDictionary *)self->_cachedWidgetPersonalityToAppScore setObject:v28 forKeyedSubscript:v24];

              v21 = v27;
              v17 = v30;
            }
          }

          objc_autoreleasePoolPop(context);
          ++v22;
        }

        while (v19 != v22);
        v19 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v19);
    }

    v3 = v29;
  }

  objc_autoreleasePoolPop(v3);
}

- (ATXDefaultHomeScreenItemUpdate)update
{
  if ([(ATXDefaultHomeScreenItemProducer *)self isDayZeroExperience])
  {
    [(ATXDefaultHomeScreenItemProducer *)self _dayZeroUpdate];
  }

  else
  {
    [(ATXDefaultHomeScreenItemProducer *)self _personalizedUpdate];
  }
  v3 = ;

  return v3;
}

- (id)_dayZeroUpdate
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v48 = "[ATXDefaultHomeScreenItemProducer _dayZeroUpdate]";
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "%s: updating with day zero defaults", buf, 0xCu);
  }

  v4 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:@"dayZeroDefaultStack" launchCounts:self->_appLaunchCounts];
  v43 = [(ATXDefaultHomeScreenItemProducer *)self _stackFromDefaultStackPersonalities:v4];
  v41 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:@"dayZeroTodayPageDefaultStack" launchCounts:self->_appLaunchCounts];
  v44 = [(ATXDefaultHomeScreenItemProducer *)self _stackFromDefaultStackPersonalities:?];
  v42 = [(ATXDefaultHomeScreenItemProducer *)self _dayZeroOnboardingStacks];
  if (self->_isiPad)
  {
    v5 = @"dayZeroDefaultWidgetsiPad";
  }

  else
  {
    v5 = @"dayZeroDefaultWidgetsiPhone";
  }

  v6 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v5 launchCounts:self->_appLaunchCounts];
  v7 = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  v8 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v6 size:0 personalityToDescriptorDictionary:v7];

  v9 = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  v10 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v6 size:1 personalityToDescriptorDictionary:v9];

  v11 = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  v12 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v6 size:2 personalityToDescriptorDictionary:v11];

  if (self->_isiPad)
  {
    v13 = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
    v14 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v6 size:4 personalityToDescriptorDictionary:v13];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v39 = v14;
  v40 = v6;
  v15 = v42;
  if (self->_isiPad)
  {
    v16 = v8;
    v17 = [ATXDefaultHomeScreenItemUpdate alloc];
    v18 = [v42 stack1];
    v46[0] = v18;
    v19 = [v42 stack2];
    v46[1] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    LOBYTE(v34) = 0;
    v21 = v39;
    v22 = v17;
    v23 = v16;
    v24 = [(ATXDefaultHomeScreenItemUpdate *)v22 initWithStack:v43 todayStack:v44 onboardingStacks:v20 smallWidgets:v16 mediumWidgets:v10 largeWidgets:v12 extraLargeWidgets:v39 shouldSuggestStackInGallery:v34];
  }

  else
  {
    v18 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:self->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:self->_spotlightAppLaunchHistogram appLaunchCounts:self->_appLaunchCounts];
    v25 = [(ATXDefaultHomeScreenItemRanker *)v18 widgetsBySortingWidgetsUsingDayZeroGalleryAlgorithm:v8];
    v36 = v10;
    v20 = [(ATXDefaultHomeScreenItemRanker *)v18 widgetsBySortingWidgetsUsingDayZeroGalleryAlgorithm:v10];
    v35 = [(ATXDefaultHomeScreenItemRanker *)v18 widgetsBySortingWidgetsUsingDayZeroGalleryAlgorithm:v12];
    v26 = [ATXDefaultHomeScreenItemUpdate alloc];
    [v42 stack1];
    v27 = v37 = v8;
    v45[0] = v27;
    [v42 stack2];
    v28 = v38 = v4;
    v45[1] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
    LOBYTE(v34) = ![(ATXDefaultHomeScreenItemProducer *)self _isStackConfiguredOnHomeScreen];
    v21 = v39;
    v30 = v26;
    v31 = v25;
    v32 = [(ATXDefaultHomeScreenItemUpdate *)v30 initWithStack:v43 todayStack:v44 onboardingStacks:v29 smallWidgets:v25 mediumWidgets:v20 largeWidgets:v35 extraLargeWidgets:v39 shouldSuggestStackInGallery:v34];

    v15 = v42;
    v4 = v38;

    v23 = v37;
    v24 = v32;
    v19 = v31;
    v10 = v36;
  }

  return v24;
}

- (id)onboardingStacks
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ATXDefaultHomeScreenItemProducer *)self isDayZeroExperience];
    v5 = [(ATXDefaultHomeScreenItemProducer *)self descriptors];
    v6 = [v5 count];
    v7 = [(ATXDefaultHomeScreenItemProducer *)self descriptorInstallDates];
    *buf = 136315906;
    v18 = "[ATXDefaultHomeScreenItemProducer onboardingStacks]";
    v19 = 1024;
    v20 = v4;
    v21 = 2048;
    v22 = v6;
    v23 = 2048;
    v24 = [v7 count];
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "%s: generating onboarding stacks. dayZero:%d, numDescriptors:%lu, descriptorCacheSize:%lu", buf, 0x26u);
  }

  v8 = [ATXDefaultHomeScreenItemOnboardingStacksProducer alloc];
  v9 = [(ATXDefaultHomeScreenItemProducer *)self _stackableCandidates];
  cachedWidgetPersonalityToAppScore = self->_cachedWidgetPersonalityToAppScore;
  v11 = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  LOBYTE(v16) = 0;
  LOBYTE(v15) = 1;
  v12 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v8 initWithCandidateWidgets:v9 cachedWidgetPersonalityToAppScore:cachedWidgetPersonalityToAppScore personalityToDescriptorDictionary:v11 adblDrainClassification:self->_adblDrainClassification isiPad:self->_isiPad isDayZeroExperience:self->_isDayZeroExperience shouldIncludeContactsWidget:v15 cachedHasiCloudFamily:0 appLaunchCounts:self->_appLaunchCounts isAmbient:v16];

  v13 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v12 onboardingStacks];

  return v13;
}

- (id)ambientOnboardingStacks
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ATXDefaultHomeScreenItemProducer *)self isDayZeroExperience];
    v5 = [(ATXDefaultHomeScreenItemProducer *)self descriptors];
    v6 = [v5 count];
    v7 = [(ATXDefaultHomeScreenItemProducer *)self descriptorInstallDates];
    *buf = 136315906;
    v18 = "[ATXDefaultHomeScreenItemProducer ambientOnboardingStacks]";
    v19 = 1024;
    v20 = v4;
    v21 = 2048;
    v22 = v6;
    v23 = 2048;
    v24 = [v7 count];
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "%s: generating onboarding stacks. dayZero:%d, numDescriptors:%lu, descriptorCacheSize:%lu", buf, 0x26u);
  }

  v8 = [ATXDefaultHomeScreenItemOnboardingStacksProducer alloc];
  v9 = [(ATXDefaultHomeScreenItemProducer *)self _stackableCandidates];
  cachedWidgetPersonalityToAppScore = self->_cachedWidgetPersonalityToAppScore;
  v11 = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  LOBYTE(v16) = 1;
  LOBYTE(v15) = 1;
  v12 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v8 initWithCandidateWidgets:v9 cachedWidgetPersonalityToAppScore:cachedWidgetPersonalityToAppScore personalityToDescriptorDictionary:v11 adblDrainClassification:self->_adblDrainClassification isiPad:self->_isiPad isDayZeroExperience:self->_isDayZeroExperience shouldIncludeContactsWidget:v15 cachedHasiCloudFamily:0 appLaunchCounts:self->_appLaunchCounts isAmbient:v16];

  v13 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v12 onboardingStacks];

  return v13;
}

- (id)generatedStacksWithRequest:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ATXDefaultHomeScreenItemProducer *)self isDayZeroExperience];
    v7 = [(ATXDefaultHomeScreenItemProducer *)self descriptors];
    v8 = [v7 count];
    v9 = [(ATXDefaultHomeScreenItemProducer *)self descriptorInstallDates];
    *buf = 136315906;
    v22 = "[ATXDefaultHomeScreenItemProducer generatedStacksWithRequest:]";
    v23 = 1024;
    v24 = v6;
    v25 = 2048;
    v26 = v8;
    v27 = 2048;
    v28 = [v9 count];
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s: generating onboarding stacks for Client. dayZero:%d, numDescriptors:%lu, descriptorCacheSize:%lu", buf, 0x26u);
  }

  v10 = [v4 clientIdentity];
  v11 = [v10 widgetClient] != 2;

  v12 = [ATXDefaultHomeScreenItemOnboardingStacksProducer alloc];
  v13 = [(ATXDefaultHomeScreenItemProducer *)self _stackableCandidates];
  cachedWidgetPersonalityToAppScore = self->_cachedWidgetPersonalityToAppScore;
  v15 = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  LOBYTE(v20) = 0;
  LOBYTE(v19) = v11;
  v16 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v12 initWithCandidateWidgets:v13 cachedWidgetPersonalityToAppScore:cachedWidgetPersonalityToAppScore personalityToDescriptorDictionary:v15 adblDrainClassification:self->_adblDrainClassification isiPad:self->_isiPad isDayZeroExperience:self->_isDayZeroExperience shouldIncludeContactsWidget:v19 cachedHasiCloudFamily:0 appLaunchCounts:self->_appLaunchCounts isAmbient:v20];

  v17 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v16 generatedStacksWithRequest:v4];

  return v17;
}

- (id)_dayZeroOnboardingStacks
{
  v3 = [ATXDefaultHomeScreenItemOnboardingStacksProducer alloc];
  v4 = [(ATXDefaultHomeScreenItemProducer *)self _stackableCandidates];
  cachedWidgetPersonalityToAppScore = self->_cachedWidgetPersonalityToAppScore;
  v6 = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 1;
  v7 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v3 initWithCandidateWidgets:v4 cachedWidgetPersonalityToAppScore:cachedWidgetPersonalityToAppScore personalityToDescriptorDictionary:v6 adblDrainClassification:self->_adblDrainClassification isiPad:self->_isiPad isDayZeroExperience:1 shouldIncludeContactsWidget:v10 cachedHasiCloudFamily:0 appLaunchCounts:self->_appLaunchCounts isAmbient:v11];

  v8 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v7 onboardingStacks];

  return v8;
}

- (id)_personalizedUpdate
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v47 = "[ATXDefaultHomeScreenItemProducer _personalizedUpdate]";
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "%s: updating personalized defaults", buf, 0xCu);
  }

  galleryRequest = self->_galleryRequest;
  if (!galleryRequest)
  {
    goto LABEL_11;
  }

  v5 = [(ATXWidgetGalleryRequest *)galleryRequest clientIdentity];
  v6 = [v5 widgetClient];

  if (v6 == 2)
  {
    v7 = __atxlog_handle_carPlay_widgets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(ATXWidgetGalleryRequest *)self->_galleryRequest limit];
      *buf = 138412290;
      v47 = v8;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Number of widgets requested for CarPlay widget add sheet: %@", buf, 0xCu);
    }

    v9 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedGalleryWidgetsForSize:0];
    v10 = [ATXDefaultHomeScreenItemUpdate alloc];
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    LOBYTE(v40) = 0;
    v13 = [(ATXDefaultHomeScreenItemUpdate *)v10 initWithStack:v11 todayStack:v12 onboardingStacks:MEMORY[0x1E695E0F0] smallWidgets:v9 mediumWidgets:MEMORY[0x1E695E0F0] largeWidgets:MEMORY[0x1E695E0F0] extraLargeWidgets:MEMORY[0x1E695E0F0] shouldSuggestStackInGallery:v40];

    goto LABEL_25;
  }

  v14 = self->_galleryRequest;
  if (!v14)
  {
LABEL_11:
    v9 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedStack];
LABEL_12:
    v18 = [v9 smallDefaultStack];
    if ([v18 count] >= 2)
    {
      v19 = [v9 mediumDefaultStack];
      if ([v19 count] > 1)
      {
        v20 = [v9 largeDefaultStack];
        v21 = [v20 count];

        if (v21 >= 2)
        {
          v17 = 0;
          goto LABEL_19;
        }

LABEL_16:
        v13 = [(ATXDefaultHomeScreenItemProducer *)self _dayZeroUpdate];
        goto LABEL_25;
      }
    }

    goto LABEL_16;
  }

  v15 = [(ATXWidgetGalleryRequest *)v14 clientIdentity];
  v16 = [v15 widgetClient];

  v9 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedStack];
  if (v16 != 3)
  {
    goto LABEL_12;
  }

  v17 = 1;
LABEL_19:
  v22 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedTodayStack];
  v23 = [(ATXDefaultHomeScreenItemProducer *)self personalizedOnboardingStacksWithRankingAlgorithm:3];
  v24 = [v23 stack1];
  v45[0] = v24;
  v25 = [v23 stack2];
  v45[1] = v25;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];

  v26 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedGalleryWidgetsForSize:0];
  v27 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedGalleryWidgetsForSize:1];
  v28 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedGalleryWidgetsForSize:2];
  if (self->_isiPad)
  {
    v29 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedGalleryWidgetsForSize:4];
  }

  else
  {
    v29 = objc_opt_new();
  }

  v30 = v29;
  if (v17)
  {
    [(ATXDefaultHomeScreenItemProducer *)self _dayZeroUpdate];
    v31 = v43 = v22;
    v32 = [v31 smallWidgets];
    v42 = [ATXDefaultHomeScreenItemProducerUtilities mergedDescriptorsFrom:v32 withAdditional:v26];

    v33 = [v31 mediumWidgets];
    v41 = [ATXDefaultHomeScreenItemProducerUtilities mergedDescriptorsFrom:v33 withAdditional:v27];

    v34 = [v31 largeWidgets];
    v35 = [ATXDefaultHomeScreenItemProducerUtilities mergedDescriptorsFrom:v34 withAdditional:v28];

    v36 = [v31 extraLargeWidgets];
    v37 = [ATXDefaultHomeScreenItemProducerUtilities mergedDescriptorsFrom:v36 withAdditional:v30];

    v26 = v42;
    v22 = v43;
    v27 = v41;
    v28 = v35;
    v30 = v37;
  }

  v38 = [ATXDefaultHomeScreenItemUpdate alloc];
  LOBYTE(v40) = ![(ATXDefaultHomeScreenItemProducer *)self _isStackConfiguredOnHomeScreen];
  v13 = [(ATXDefaultHomeScreenItemUpdate *)v38 initWithStack:v9 todayStack:v22 onboardingStacks:v44 smallWidgets:v26 mediumWidgets:v27 largeWidgets:v28 extraLargeWidgets:v30 shouldSuggestStackInGallery:v40];

LABEL_25:

  return v13;
}

- (id)_stackFromDefaultStackPersonalities:(id)a3
{
  v4 = a3;
  v5 = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  v6 = [ATXDefaultHomeScreenItemProducerUtilities stackFromDefaultStackPersonalities:v4 suggestedSize:1 maxWidgetsPerStack:7 personalityToDescriptorDictionary:v5 isiPad:self->_isiPad];

  return v6;
}

- (NSDictionary)personalityToDescriptorDictionary
{
  v25 = *MEMORY[0x1E69E9840];
  personalityToDescriptorDictionary = self->_personalityToDescriptorDictionary;
  if (!personalityToDescriptorDictionary)
  {
    v4 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = self;
    obj = [(ATXDefaultHomeScreenItemProducer *)self candidateDescriptors];
    v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v20 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          v11 = [v9 avocadoDescriptor];
          if (v11)
          {
            v12 = [ATXWidgetPersonality alloc];
            v13 = [v11 extensionBundleIdentifier];
            v14 = [v11 kind];
            v15 = [(ATXWidgetPersonality *)v12 initWithExtensionBundleId:v13 kind:v14];

            [(NSDictionary *)v4 setObject:v9 forKeyedSubscript:v15];
          }

          objc_autoreleasePoolPop(v10);
          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    v16 = v18->_personalityToDescriptorDictionary;
    v18->_personalityToDescriptorDictionary = v4;

    personalityToDescriptorDictionary = v18->_personalityToDescriptorDictionary;
  }

  return personalityToDescriptorDictionary;
}

- (NSArray)candidateDescriptors
{
  v2 = self;
  v38 = *MEMORY[0x1E69E9840];
  candidateDescriptors = self->_candidateDescriptors;
  if (!candidateDescriptors)
  {
    v4 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(ATXDefaultHomeScreenItemProducer *)v2 descriptors];
    v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v31)
    {
      v29 = v4;
      v30 = *v34;
      do
      {
        v5 = 0;
        do
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v33 + 1) + 8 * v5);
          v7 = objc_autoreleasePoolPush();
          v8 = [ATXWidgetPersonality alloc];
          v9 = [v6 extensionBundleIdentifier];
          v10 = [v6 kind];
          v11 = [(ATXWidgetPersonality *)v8 initWithExtensionBundleId:v9 kind:v10];

          v12 = [(ATXDefaultHomeScreenItemProducer *)v2 descriptorInstallDates];
          v13 = [v12 objectForKeyedSubscript:v11];

          if (v13)
          {
            v14 = [(ATXDefaultHomeScreenItemProducer *)v2 widgetsOnHomeScreen];
            galleryRequest = v2->_galleryRequest;
            v32 = v7;
            if (galleryRequest)
            {
              v16 = [(ATXWidgetGalleryRequest *)galleryRequest clientIdentity];
              v17 = [v16 widgetClient];

              if (v17 == 2)
              {
                v18 = objc_opt_new();

                v14 = v18;
              }
            }

            v19 = -[ATXDefaultHomeScreenItemProducer _rankTypeGivenWidgetIsNewlyInstalled:isAlreadyAdded:](v2, "_rankTypeGivenWidgetIsNewlyInstalled:isAlreadyAdded:", -[ATXDefaultHomeScreenItemProducer _isNewlyInstalledWidget:](v2, "_isNewlyInstalledWidget:", v6), [v14 containsObject:v11]);
            [v6 extensionIdentity];
            v21 = v20 = v2;
            v22 = [v21 containerBundleIdentifier];
            v23 = [ATXDefaultHomeScreenItemProducerUtilities widgetDescriptorFromChronoDescriptor:v6 appBundleId:v22 rankType:v19];
            v4 = v29;
            [(NSArray *)v29 addObject:v23];

            v2 = v20;
            v7 = v32;
          }

          objc_autoreleasePoolPop(v7);
          ++v5;
        }

        while (v31 != v5);
        v31 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v31);
    }

    v24 = [(ATXDefaultHomeScreenItemProducer *)v2 _appPredictionsWidgetDescriptor];
    if (v24)
    {
      [(NSArray *)v4 addObject:v24];
    }

    v25 = v2->_candidateDescriptors;
    v2->_candidateDescriptors = v4;

    candidateDescriptors = v2->_candidateDescriptors;
  }

  v26 = [(NSArray *)candidateDescriptors copy];

  return v26;
}

- (id)personalizedOnboardingStacksWithRankingAlgorithm:(int)a3
{
  v3 = *&a3;
  v5 = [ATXDefaultHomeScreenItemOnboardingStacksProducer alloc];
  v6 = [(ATXDefaultHomeScreenItemProducer *)self _stackableCandidates];
  cachedWidgetPersonalityToAppScore = self->_cachedWidgetPersonalityToAppScore;
  v8 = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  LOBYTE(v13) = 0;
  LOBYTE(v12) = 1;
  v9 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v5 initWithCandidateWidgets:v6 cachedWidgetPersonalityToAppScore:cachedWidgetPersonalityToAppScore personalityToDescriptorDictionary:v8 adblDrainClassification:self->_adblDrainClassification isiPad:self->_isiPad isDayZeroExperience:0 shouldIncludeContactsWidget:v12 cachedHasiCloudFamily:0 appLaunchCounts:self->_appLaunchCounts isAmbient:v13];

  v10 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v9 personalizedOnboardingStacksWithRankingAlgorithm:v3];

  return v10;
}

- (id)_personalizedStackForRankerPlistType:(int)a3
{
  v3 = *&a3;
  v5 = [(ATXDefaultHomeScreenItemProducer *)self _stackableCandidates];
  v6 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedStackFromCandidates:v5 rankerPlistType:v3 size:0];
  v7 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedStackFromCandidates:v5 rankerPlistType:v3 size:1];
  v8 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedStackFromCandidates:v5 rankerPlistType:v3 size:2];
  v9 = 0;
  if (self->_isiPad)
  {
    v9 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedStackFromCandidates:v5 rankerPlistType:v3 size:4];
  }

  LOBYTE(v12) = self->_isiPad;
  v10 = [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:v6 mediumStack:v7 largeStack:v8 extraLargeStack:v9 suggestedSize:1 maxWidgetsPerStack:7 isiPad:v12];

  return v10;
}

- (id)_stackableCandidates
{
  v3 = [objc_opt_class() appPredictionsWidgetDescriptor];
  v4 = [(ATXDefaultHomeScreenItemProducer *)self candidateDescriptors];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ATXDefaultHomeScreenItemProducer__stackableCandidates__block_invoke;
  v8[3] = &unk_1E80C2AC8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 _pas_filteredArrayWithTest:v8];

  return v6;
}

uint64_t __56__ATXDefaultHomeScreenItemProducer__stackableCandidates__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 avocadoDescriptor];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

- (id)_personalizedStackFromCandidates:(id)a3 rankerPlistType:(int)a4 size:(unint64_t)a5
{
  v5 = *&a4;
  v7 = [ATXDefaultHomeScreenItemProducerUtilities widgets:a3 filteredForSize:a5];
  v8 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:self->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:self->_spotlightAppLaunchHistogram appLaunchCounts:self->_appLaunchCounts];
  v9 = [(ATXDefaultHomeScreenItemRanker *)v8 widgetsBySortingAndFilteringWidgetsUsingPersonalizedTodayandAddSheetStackAlgorithm:v7 rankerPlistType:v5 regularlyUsedThreshold:7.0];
  v10 = [v9 mutableCopy];

  return v10;
}

- (id)_personalizedGalleryWidgetsForSize:(unint64_t)a3
{
  v5 = [(ATXDefaultHomeScreenItemProducer *)self candidateDescriptors];
  v6 = [ATXDefaultHomeScreenItemProducerUtilities widgets:v5 filteredForSize:a3];

  if (a3 <= 2)
  {
    if (a3 == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    if (a3 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    goto LABEL_12;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

LABEL_12:
    v9 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:self->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:self->_spotlightAppLaunchHistogram appLaunchCounts:self->_appLaunchCounts];
    v10 = [(ATXWidgetGalleryRequest *)self->_galleryRequest limit];
    v11 = [(ATXDefaultHomeScreenItemRanker *)v9 widgetsBySortingAndFilteringWidgetsUsingPersonalizedGalleryAlgorithm:v6 rankerPlistType:v8 regularlyUsedThreshold:v10 limit:7.0];

    goto LABEL_13;
  }

  v13 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [ATXDefaultHomeScreenItemProducer _personalizedGalleryWidgetsForSize:v13];
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (id)_appPredictionsWidgetDescriptor
{
  v3 = [objc_opt_class() appPredictionsWidgetDescriptor];
  if (v3)
  {
    v4 = [[ATXWidgetPersonality alloc] initWithExtensionBundleId:@"com.apple.proactive.appprediction.panel" kind:@"com.apple.proactive.appprediction.panel"];
    v5 = [(ATXDefaultHomeScreenItemProducer *)self widgetsOnHomeScreen];
    galleryRequest = self->_galleryRequest;
    if (galleryRequest)
    {
      v7 = [(ATXWidgetGalleryRequest *)galleryRequest clientIdentity];
      v8 = [v7 widgetClient];

      if (v8 == 2)
      {
        v9 = objc_opt_new();

        v5 = v9;
      }
    }

    v10 = +[ATXDefaultHomeScreenItemProducerUtilities widgetDescriptorFromChronoDescriptor:appBundleId:rankType:](ATXDefaultHomeScreenItemProducerUtilities, "widgetDescriptorFromChronoDescriptor:appBundleId:rankType:", v3, 0, -[ATXDefaultHomeScreenItemProducer _rankTypeGivenWidgetIsNewlyInstalled:isAlreadyAdded:](self, "_rankTypeGivenWidgetIsNewlyInstalled:isAlreadyAdded:", 0, [v5 containsObject:v4]));
  }

  else
  {
    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ATXDefaultHomeScreenItemProducer *)v11 _appPredictionsWidgetDescriptor];
    }

    v10 = 0;
  }

  return v10;
}

+ (CHSWidgetDescriptor)appPredictionsWidgetDescriptor
{
  v2 = objc_alloc(MEMORY[0x1E6994388]);
  v3 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:&stru_1F3E050C8 containerBundleIdentifier:0 deviceIdentifier:0];
  v4 = [v2 initWithExtensionIdentity:v3 kind:@"SBHSpecialAvocadoDescriptorKindAppPredictions" supportedFamilies:4 intentType:0];

  return v4;
}

- (NSSet)widgetsOnHomeScreen
{
  v48 = *MEMORY[0x1E69E9840];
  widgetsOnHomeScreen = self->_widgetsOnHomeScreen;
  if (!widgetsOnHomeScreen)
  {
    v4 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v24 = self;
    obj = [(ATXDefaultHomeScreenItemProducer *)self homeScreenConfig];
    v27 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v27)
    {
      v26 = *v42;
      do
      {
        v5 = 0;
        do
        {
          if (*v42 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v29 = v5;
          v6 = *(*(&v41 + 1) + 8 * v5);
          context = objc_autoreleasePoolPush();
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v7 = [v6 stacks];
          v8 = [v6 panels];
          v9 = [v7 arrayByAddingObjectsFromArray:v8];

          v30 = v9;
          v32 = [v9 countByEnumeratingWithState:&v37 objects:v46 count:16];
          if (v32)
          {
            v31 = *v38;
            do
            {
              v10 = 0;
              do
              {
                if (*v38 != v31)
                {
                  objc_enumerationMutation(v30);
                }

                v11 = *(*(&v37 + 1) + 8 * v10);
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v12 = [v11 widgets];
                v13 = [v12 countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (v13)
                {
                  v14 = v13;
                  v15 = *v34;
                  do
                  {
                    v16 = 0;
                    do
                    {
                      if (*v34 != v15)
                      {
                        objc_enumerationMutation(v12);
                      }

                      v17 = *(*(&v33 + 1) + 8 * v16);
                      v18 = [ATXWidgetPersonality alloc];
                      v19 = [v17 extensionBundleId];
                      v20 = [v17 widgetKind];
                      v21 = [(ATXWidgetPersonality *)v18 initWithExtensionBundleId:v19 kind:v20];

                      [(NSSet *)v4 addObject:v21];
                      ++v16;
                    }

                    while (v14 != v16);
                    v14 = [v12 countByEnumeratingWithState:&v33 objects:v45 count:16];
                  }

                  while (v14);
                }

                ++v10;
              }

              while (v10 != v32);
              v32 = [v30 countByEnumeratingWithState:&v37 objects:v46 count:16];
            }

            while (v32);
          }

          objc_autoreleasePoolPop(context);
          v5 = v29 + 1;
        }

        while (v29 + 1 != v27);
        v27 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v27);
    }

    v22 = v24->_widgetsOnHomeScreen;
    v24->_widgetsOnHomeScreen = v4;

    widgetsOnHomeScreen = v24->_widgetsOnHomeScreen;
  }

  return widgetsOnHomeScreen;
}

- (BOOL)_isStackConfiguredOnHomeScreen
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [(ATXDefaultHomeScreenItemProducer *)self homeScreenConfig];
  v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = [v7 stacks];
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v17 + 1) + 8 * j) widgets];
              v14 = [v13 count];

              if (v14 > 1)
              {

                v15 = 1;
                goto LABEL_19;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      v15 = 0;
    }

    while (v4);
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  return v15;
}

- (BOOL)_isNewlyInstalledWidget:(id)a3
{
  v4 = a3;
  v5 = [(ATXDefaultHomeScreenItemProducer *)self _firstInstalledWidgetDate];
  v6 = [[ATXWidgetPersonality alloc] initWithDescriptor:v4];

  v7 = [(ATXDefaultHomeScreenItemProducer *)self descriptorInstallDates];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [v8 installDate];
    v10 = v9;
    if (v5 && v9)
    {
      v11 = [MEMORY[0x1E695DEE8] currentCalendar];
      v12 = [v11 dateByAddingUnit:16 value:1 toDate:v5 options:0];

      if ([v10 compare:v12] == 1)
      {
        v13 = [MEMORY[0x1E695DEE8] currentCalendar];
        v14 = [MEMORY[0x1E695DF00] now];
        v15 = [v13 dateByAddingUnit:16 value:-2 toDate:v14 options:0];

        v16 = [v15 compare:v10];
        if (v16 == -1)
        {
          v17 = 1;
LABEL_10:

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v17 = 0;
    goto LABEL_10;
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (id)_firstInstalledWidgetDate
{
  v2 = objc_alloc(MEMORY[0x1E695E000]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x1E698B030]];
  v4 = [v3 objectForKey:@"dateOfFirstInstalledAvocado"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_rankTypeGivenWidgetIsNewlyInstalled:(BOOL)a3 isAlreadyAdded:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(ATXDefaultHomeScreenItemProducer *)self isDayZeroExperience];
  v7 = 1;
  if (v5)
  {
    v7 = 2;
  }

  v8 = 5;
  if (v4)
  {
    v8 = 6;
    v7 = 4;
  }

  if (v6)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

@end