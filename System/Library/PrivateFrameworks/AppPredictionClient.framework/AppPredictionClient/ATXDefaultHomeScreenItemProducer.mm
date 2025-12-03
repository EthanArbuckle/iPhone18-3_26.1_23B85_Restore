@interface ATXDefaultHomeScreenItemProducer
+ (CHSWidgetDescriptor)appPredictionsWidgetDescriptor;
- (ATXDefaultHomeScreenItemProducer)initWithDescriptors:(id)descriptors descriptorInstallDates:(id)dates homeScreenConfig:(id)config isDayZeroExperience:(BOOL)experience isiPad:(BOOL)pad spotlightAppLaunchHistogram:(id)histogram adblDrainClassification:(unint64_t)classification appLaunchCounts:(id)self0;
- (ATXDefaultHomeScreenItemProducer)initWithDescriptors:(id)descriptors descriptorInstallDates:(id)dates homeScreenConfig:(id)config isDayZeroExperience:(BOOL)experience isiPad:(BOOL)pad spotlightAppLaunchHistogram:(id)histogram appLaunchCounts:(id)counts;
- (ATXDefaultHomeScreenItemUpdate)update;
- (BOOL)_isNewlyInstalledWidget:(id)widget;
- (BOOL)_isStackConfiguredOnHomeScreen;
- (NSArray)candidateDescriptors;
- (NSDictionary)personalityToDescriptorDictionary;
- (NSSet)widgetsOnHomeScreen;
- (id)_appPredictionsWidgetDescriptor;
- (id)_dayZeroOnboardingStacks;
- (id)_dayZeroUpdate;
- (id)_firstInstalledWidgetDate;
- (id)_personalizedGalleryWidgetsForSize:(unint64_t)size;
- (id)_personalizedStackForRankerPlistType:(int)type;
- (id)_personalizedStackFromCandidates:(id)candidates rankerPlistType:(int)type size:(unint64_t)size;
- (id)_personalizedUpdate;
- (id)_stackFromDefaultStackPersonalities:(id)personalities;
- (id)_stackableCandidates;
- (id)ambientOnboardingStacks;
- (id)generatedStacksWithRequest:(id)request;
- (id)onboardingStacks;
- (id)personalizedOnboardingStacksWithRankingAlgorithm:(int)algorithm;
- (int64_t)_rankTypeGivenWidgetIsNewlyInstalled:(BOOL)installed isAlreadyAdded:(BOOL)added;
- (void)_initializeCachedWidgetPersonalityToAppScoreCache;
@end

@implementation ATXDefaultHomeScreenItemProducer

- (ATXDefaultHomeScreenItemProducer)initWithDescriptors:(id)descriptors descriptorInstallDates:(id)dates homeScreenConfig:(id)config isDayZeroExperience:(BOOL)experience isiPad:(BOOL)pad spotlightAppLaunchHistogram:(id)histogram appLaunchCounts:(id)counts
{
  padCopy = pad;
  experienceCopy = experience;
  countsCopy = counts;
  histogramCopy = histogram;
  configCopy = config;
  datesCopy = dates;
  descriptorsCopy = descriptors;
  v21 = +[ATXBatteryDrainBehavior sharedInstance];
  v22 = -[ATXDefaultHomeScreenItemProducer initWithDescriptors:descriptorInstallDates:homeScreenConfig:isDayZeroExperience:isiPad:spotlightAppLaunchHistogram:adblDrainClassification:appLaunchCounts:](self, "initWithDescriptors:descriptorInstallDates:homeScreenConfig:isDayZeroExperience:isiPad:spotlightAppLaunchHistogram:adblDrainClassification:appLaunchCounts:", descriptorsCopy, datesCopy, configCopy, experienceCopy, padCopy, histogramCopy, [v21 fetchADBLDrainClassification], countsCopy);

  return v22;
}

- (ATXDefaultHomeScreenItemProducer)initWithDescriptors:(id)descriptors descriptorInstallDates:(id)dates homeScreenConfig:(id)config isDayZeroExperience:(BOOL)experience isiPad:(BOOL)pad spotlightAppLaunchHistogram:(id)histogram adblDrainClassification:(unint64_t)classification appLaunchCounts:(id)self0
{
  descriptorsCopy = descriptors;
  datesCopy = dates;
  configCopy = config;
  histogramCopy = histogram;
  countsCopy = counts;
  v25.receiver = self;
  v25.super_class = ATXDefaultHomeScreenItemProducer;
  v19 = [(ATXDefaultHomeScreenItemProducer *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_descriptors, descriptors);
    objc_storeStrong(&v20->_descriptorInstallDates, dates);
    objc_storeStrong(&v20->_homeScreenConfig, config);
    v20->_isDayZeroExperience = experience;
    v20->_isiPad = pad;
    objc_storeStrong(&v20->_spotlightAppLaunchHistogram, histogram);
    v20->_adblDrainClassification = classification;
    objc_storeStrong(&v20->_appLaunchCounts, counts);
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
    candidateDescriptors = [(ATXDefaultHomeScreenItemProducer *)self candidateDescriptors];
    v7 = [candidateDescriptors countByEnumeratingWithState:&v38 objects:v43 count:16];
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
            objc_enumerationMutation(candidateDescriptors);
          }

          v11 = *(*(&v38 + 1) + 8 * v10);
          v12 = objc_autoreleasePoolPush();
          appBundleId = [v11 appBundleId];

          if (appBundleId)
          {
            appBundleId2 = [v11 appBundleId];
            [v32 addObject:appBundleId2];

            appBundleId3 = [v11 appBundleId];
            LODWORD(appBundleId2) = [appBundleId3 isEqualToString:@"com.apple.mobileslideshow"];

            if (appBundleId2)
            {
              [v32 addObject:@"com.apple.camera"];
            }
          }

          objc_autoreleasePoolPop(v12);
          ++v10;
        }

        while (v8 != v10);
        v8 = [candidateDescriptors countByEnumeratingWithState:&v38 objects:v43 count:16];
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
            appBundleId4 = [(ATXDefaultHomeScreenItemAppLaunchScorer *)v25 scoreWithCachedAppLaunchData:v17];
            [(NSMutableDictionary *)self->_cachedWidgetPersonalityToAppScore setObject:appBundleId4 forKeyedSubscript:v24];
          }

          else
          {
            appBundleId4 = [v23 appBundleId];
            if (appBundleId4)
            {
              [v17 objectForKeyedSubscript:appBundleId4];
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
  _dayZeroOnboardingStacks = [(ATXDefaultHomeScreenItemProducer *)self _dayZeroOnboardingStacks];
  if (self->_isiPad)
  {
    v5 = @"dayZeroDefaultWidgetsiPad";
  }

  else
  {
    v5 = @"dayZeroDefaultWidgetsiPhone";
  }

  v6 = [ATXDefaultHomeScreenItemProducerUtilities personalitiesFromAssetsWithKey:v5 launchCounts:self->_appLaunchCounts];
  personalityToDescriptorDictionary = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  v8 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v6 size:0 personalityToDescriptorDictionary:personalityToDescriptorDictionary];

  personalityToDescriptorDictionary2 = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  v10 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v6 size:1 personalityToDescriptorDictionary:personalityToDescriptorDictionary2];

  personalityToDescriptorDictionary3 = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  v12 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v6 size:2 personalityToDescriptorDictionary:personalityToDescriptorDictionary3];

  if (self->_isiPad)
  {
    personalityToDescriptorDictionary4 = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
    v14 = [ATXDefaultHomeScreenItemProducerUtilities widgetsFromPersonalities:v6 size:4 personalityToDescriptorDictionary:personalityToDescriptorDictionary4];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v39 = v14;
  v40 = v6;
  v15 = _dayZeroOnboardingStacks;
  if (self->_isiPad)
  {
    v16 = v8;
    v17 = [ATXDefaultHomeScreenItemUpdate alloc];
    stack1 = [_dayZeroOnboardingStacks stack1];
    v46[0] = stack1;
    stack2 = [_dayZeroOnboardingStacks stack2];
    v46[1] = stack2;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
    LOBYTE(v34) = 0;
    v21 = v39;
    v22 = v17;
    v23 = v16;
    v24 = [(ATXDefaultHomeScreenItemUpdate *)v22 initWithStack:v43 todayStack:v44 onboardingStacks:v20 smallWidgets:v16 mediumWidgets:v10 largeWidgets:v12 extraLargeWidgets:v39 shouldSuggestStackInGallery:v34];
  }

  else
  {
    stack1 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:self->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:self->_spotlightAppLaunchHistogram appLaunchCounts:self->_appLaunchCounts];
    v25 = [(ATXDefaultHomeScreenItemRanker *)stack1 widgetsBySortingWidgetsUsingDayZeroGalleryAlgorithm:v8];
    v36 = v10;
    v20 = [(ATXDefaultHomeScreenItemRanker *)stack1 widgetsBySortingWidgetsUsingDayZeroGalleryAlgorithm:v10];
    v35 = [(ATXDefaultHomeScreenItemRanker *)stack1 widgetsBySortingWidgetsUsingDayZeroGalleryAlgorithm:v12];
    v26 = [ATXDefaultHomeScreenItemUpdate alloc];
    [_dayZeroOnboardingStacks stack1];
    v27 = v37 = v8;
    v45[0] = v27;
    [_dayZeroOnboardingStacks stack2];
    v28 = v38 = v4;
    v45[1] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
    LOBYTE(v34) = ![(ATXDefaultHomeScreenItemProducer *)self _isStackConfiguredOnHomeScreen];
    v21 = v39;
    v30 = v26;
    v31 = v25;
    v32 = [(ATXDefaultHomeScreenItemUpdate *)v30 initWithStack:v43 todayStack:v44 onboardingStacks:v29 smallWidgets:v25 mediumWidgets:v20 largeWidgets:v35 extraLargeWidgets:v39 shouldSuggestStackInGallery:v34];

    v15 = _dayZeroOnboardingStacks;
    v4 = v38;

    v23 = v37;
    v24 = v32;
    stack2 = v31;
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
    isDayZeroExperience = [(ATXDefaultHomeScreenItemProducer *)self isDayZeroExperience];
    descriptors = [(ATXDefaultHomeScreenItemProducer *)self descriptors];
    v6 = [descriptors count];
    descriptorInstallDates = [(ATXDefaultHomeScreenItemProducer *)self descriptorInstallDates];
    *buf = 136315906;
    v18 = "[ATXDefaultHomeScreenItemProducer onboardingStacks]";
    v19 = 1024;
    v20 = isDayZeroExperience;
    v21 = 2048;
    v22 = v6;
    v23 = 2048;
    v24 = [descriptorInstallDates count];
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "%s: generating onboarding stacks. dayZero:%d, numDescriptors:%lu, descriptorCacheSize:%lu", buf, 0x26u);
  }

  v8 = [ATXDefaultHomeScreenItemOnboardingStacksProducer alloc];
  _stackableCandidates = [(ATXDefaultHomeScreenItemProducer *)self _stackableCandidates];
  cachedWidgetPersonalityToAppScore = self->_cachedWidgetPersonalityToAppScore;
  personalityToDescriptorDictionary = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  LOBYTE(v16) = 0;
  LOBYTE(v15) = 1;
  v12 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v8 initWithCandidateWidgets:_stackableCandidates cachedWidgetPersonalityToAppScore:cachedWidgetPersonalityToAppScore personalityToDescriptorDictionary:personalityToDescriptorDictionary adblDrainClassification:self->_adblDrainClassification isiPad:self->_isiPad isDayZeroExperience:self->_isDayZeroExperience shouldIncludeContactsWidget:v15 cachedHasiCloudFamily:0 appLaunchCounts:self->_appLaunchCounts isAmbient:v16];

  onboardingStacks = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v12 onboardingStacks];

  return onboardingStacks;
}

- (id)ambientOnboardingStacks
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isDayZeroExperience = [(ATXDefaultHomeScreenItemProducer *)self isDayZeroExperience];
    descriptors = [(ATXDefaultHomeScreenItemProducer *)self descriptors];
    v6 = [descriptors count];
    descriptorInstallDates = [(ATXDefaultHomeScreenItemProducer *)self descriptorInstallDates];
    *buf = 136315906;
    v18 = "[ATXDefaultHomeScreenItemProducer ambientOnboardingStacks]";
    v19 = 1024;
    v20 = isDayZeroExperience;
    v21 = 2048;
    v22 = v6;
    v23 = 2048;
    v24 = [descriptorInstallDates count];
    _os_log_impl(&dword_1BF549000, v3, OS_LOG_TYPE_DEFAULT, "%s: generating onboarding stacks. dayZero:%d, numDescriptors:%lu, descriptorCacheSize:%lu", buf, 0x26u);
  }

  v8 = [ATXDefaultHomeScreenItemOnboardingStacksProducer alloc];
  _stackableCandidates = [(ATXDefaultHomeScreenItemProducer *)self _stackableCandidates];
  cachedWidgetPersonalityToAppScore = self->_cachedWidgetPersonalityToAppScore;
  personalityToDescriptorDictionary = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  LOBYTE(v16) = 1;
  LOBYTE(v15) = 1;
  v12 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v8 initWithCandidateWidgets:_stackableCandidates cachedWidgetPersonalityToAppScore:cachedWidgetPersonalityToAppScore personalityToDescriptorDictionary:personalityToDescriptorDictionary adblDrainClassification:self->_adblDrainClassification isiPad:self->_isiPad isDayZeroExperience:self->_isDayZeroExperience shouldIncludeContactsWidget:v15 cachedHasiCloudFamily:0 appLaunchCounts:self->_appLaunchCounts isAmbient:v16];

  onboardingStacks = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v12 onboardingStacks];

  return onboardingStacks;
}

- (id)generatedStacksWithRequest:(id)request
{
  v29 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isDayZeroExperience = [(ATXDefaultHomeScreenItemProducer *)self isDayZeroExperience];
    descriptors = [(ATXDefaultHomeScreenItemProducer *)self descriptors];
    v8 = [descriptors count];
    descriptorInstallDates = [(ATXDefaultHomeScreenItemProducer *)self descriptorInstallDates];
    *buf = 136315906;
    v22 = "[ATXDefaultHomeScreenItemProducer generatedStacksWithRequest:]";
    v23 = 1024;
    v24 = isDayZeroExperience;
    v25 = 2048;
    v26 = v8;
    v27 = 2048;
    v28 = [descriptorInstallDates count];
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "%s: generating onboarding stacks for Client. dayZero:%d, numDescriptors:%lu, descriptorCacheSize:%lu", buf, 0x26u);
  }

  clientIdentity = [requestCopy clientIdentity];
  v11 = [clientIdentity widgetClient] != 2;

  v12 = [ATXDefaultHomeScreenItemOnboardingStacksProducer alloc];
  _stackableCandidates = [(ATXDefaultHomeScreenItemProducer *)self _stackableCandidates];
  cachedWidgetPersonalityToAppScore = self->_cachedWidgetPersonalityToAppScore;
  personalityToDescriptorDictionary = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  LOBYTE(v20) = 0;
  LOBYTE(v19) = v11;
  v16 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v12 initWithCandidateWidgets:_stackableCandidates cachedWidgetPersonalityToAppScore:cachedWidgetPersonalityToAppScore personalityToDescriptorDictionary:personalityToDescriptorDictionary adblDrainClassification:self->_adblDrainClassification isiPad:self->_isiPad isDayZeroExperience:self->_isDayZeroExperience shouldIncludeContactsWidget:v19 cachedHasiCloudFamily:0 appLaunchCounts:self->_appLaunchCounts isAmbient:v20];

  v17 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v16 generatedStacksWithRequest:requestCopy];

  return v17;
}

- (id)_dayZeroOnboardingStacks
{
  v3 = [ATXDefaultHomeScreenItemOnboardingStacksProducer alloc];
  _stackableCandidates = [(ATXDefaultHomeScreenItemProducer *)self _stackableCandidates];
  cachedWidgetPersonalityToAppScore = self->_cachedWidgetPersonalityToAppScore;
  personalityToDescriptorDictionary = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  LOBYTE(v11) = 0;
  LOBYTE(v10) = 1;
  v7 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v3 initWithCandidateWidgets:_stackableCandidates cachedWidgetPersonalityToAppScore:cachedWidgetPersonalityToAppScore personalityToDescriptorDictionary:personalityToDescriptorDictionary adblDrainClassification:self->_adblDrainClassification isiPad:self->_isiPad isDayZeroExperience:1 shouldIncludeContactsWidget:v10 cachedHasiCloudFamily:0 appLaunchCounts:self->_appLaunchCounts isAmbient:v11];

  onboardingStacks = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v7 onboardingStacks];

  return onboardingStacks;
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

  clientIdentity = [(ATXWidgetGalleryRequest *)galleryRequest clientIdentity];
  widgetClient = [clientIdentity widgetClient];

  if (widgetClient == 2)
  {
    v7 = __atxlog_handle_carPlay_widgets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      limit = [(ATXWidgetGalleryRequest *)self->_galleryRequest limit];
      *buf = 138412290;
      v47 = limit;
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Number of widgets requested for CarPlay widget add sheet: %@", buf, 0xCu);
    }

    _personalizedStack = [(ATXDefaultHomeScreenItemProducer *)self _personalizedGalleryWidgetsForSize:0];
    v10 = [ATXDefaultHomeScreenItemUpdate alloc];
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    LOBYTE(v40) = 0;
    _dayZeroUpdate = [(ATXDefaultHomeScreenItemUpdate *)v10 initWithStack:v11 todayStack:v12 onboardingStacks:MEMORY[0x1E695E0F0] smallWidgets:_personalizedStack mediumWidgets:MEMORY[0x1E695E0F0] largeWidgets:MEMORY[0x1E695E0F0] extraLargeWidgets:MEMORY[0x1E695E0F0] shouldSuggestStackInGallery:v40];

    goto LABEL_25;
  }

  v14 = self->_galleryRequest;
  if (!v14)
  {
LABEL_11:
    _personalizedStack = [(ATXDefaultHomeScreenItemProducer *)self _personalizedStack];
LABEL_12:
    smallDefaultStack = [_personalizedStack smallDefaultStack];
    if ([smallDefaultStack count] >= 2)
    {
      mediumDefaultStack = [_personalizedStack mediumDefaultStack];
      if ([mediumDefaultStack count] > 1)
      {
        largeDefaultStack = [_personalizedStack largeDefaultStack];
        v21 = [largeDefaultStack count];

        if (v21 >= 2)
        {
          v17 = 0;
          goto LABEL_19;
        }

LABEL_16:
        _dayZeroUpdate = [(ATXDefaultHomeScreenItemProducer *)self _dayZeroUpdate];
        goto LABEL_25;
      }
    }

    goto LABEL_16;
  }

  clientIdentity2 = [(ATXWidgetGalleryRequest *)v14 clientIdentity];
  widgetClient2 = [clientIdentity2 widgetClient];

  _personalizedStack = [(ATXDefaultHomeScreenItemProducer *)self _personalizedStack];
  if (widgetClient2 != 3)
  {
    goto LABEL_12;
  }

  v17 = 1;
LABEL_19:
  _personalizedTodayStack = [(ATXDefaultHomeScreenItemProducer *)self _personalizedTodayStack];
  v23 = [(ATXDefaultHomeScreenItemProducer *)self personalizedOnboardingStacksWithRankingAlgorithm:3];
  stack1 = [v23 stack1];
  v45[0] = stack1;
  stack2 = [v23 stack2];
  v45[1] = stack2;
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
    v31 = v43 = _personalizedTodayStack;
    smallWidgets = [v31 smallWidgets];
    v42 = [ATXDefaultHomeScreenItemProducerUtilities mergedDescriptorsFrom:smallWidgets withAdditional:v26];

    mediumWidgets = [v31 mediumWidgets];
    v41 = [ATXDefaultHomeScreenItemProducerUtilities mergedDescriptorsFrom:mediumWidgets withAdditional:v27];

    largeWidgets = [v31 largeWidgets];
    v35 = [ATXDefaultHomeScreenItemProducerUtilities mergedDescriptorsFrom:largeWidgets withAdditional:v28];

    extraLargeWidgets = [v31 extraLargeWidgets];
    v37 = [ATXDefaultHomeScreenItemProducerUtilities mergedDescriptorsFrom:extraLargeWidgets withAdditional:v30];

    v26 = v42;
    _personalizedTodayStack = v43;
    v27 = v41;
    v28 = v35;
    v30 = v37;
  }

  v38 = [ATXDefaultHomeScreenItemUpdate alloc];
  LOBYTE(v40) = ![(ATXDefaultHomeScreenItemProducer *)self _isStackConfiguredOnHomeScreen];
  _dayZeroUpdate = [(ATXDefaultHomeScreenItemUpdate *)v38 initWithStack:_personalizedStack todayStack:_personalizedTodayStack onboardingStacks:v44 smallWidgets:v26 mediumWidgets:v27 largeWidgets:v28 extraLargeWidgets:v30 shouldSuggestStackInGallery:v40];

LABEL_25:

  return _dayZeroUpdate;
}

- (id)_stackFromDefaultStackPersonalities:(id)personalities
{
  personalitiesCopy = personalities;
  personalityToDescriptorDictionary = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  v6 = [ATXDefaultHomeScreenItemProducerUtilities stackFromDefaultStackPersonalities:personalitiesCopy suggestedSize:1 maxWidgetsPerStack:7 personalityToDescriptorDictionary:personalityToDescriptorDictionary isiPad:self->_isiPad];

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
    selfCopy = self;
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
          avocadoDescriptor = [v9 avocadoDescriptor];
          if (avocadoDescriptor)
          {
            v12 = [ATXWidgetPersonality alloc];
            extensionBundleIdentifier = [avocadoDescriptor extensionBundleIdentifier];
            kind = [avocadoDescriptor kind];
            v15 = [(ATXWidgetPersonality *)v12 initWithExtensionBundleId:extensionBundleIdentifier kind:kind];

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

    v16 = selfCopy->_personalityToDescriptorDictionary;
    selfCopy->_personalityToDescriptorDictionary = v4;

    personalityToDescriptorDictionary = selfCopy->_personalityToDescriptorDictionary;
  }

  return personalityToDescriptorDictionary;
}

- (NSArray)candidateDescriptors
{
  selfCopy = self;
  v38 = *MEMORY[0x1E69E9840];
  candidateDescriptors = self->_candidateDescriptors;
  if (!candidateDescriptors)
  {
    v4 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(ATXDefaultHomeScreenItemProducer *)selfCopy descriptors];
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
          extensionBundleIdentifier = [v6 extensionBundleIdentifier];
          kind = [v6 kind];
          v11 = [(ATXWidgetPersonality *)v8 initWithExtensionBundleId:extensionBundleIdentifier kind:kind];

          descriptorInstallDates = [(ATXDefaultHomeScreenItemProducer *)selfCopy descriptorInstallDates];
          v13 = [descriptorInstallDates objectForKeyedSubscript:v11];

          if (v13)
          {
            widgetsOnHomeScreen = [(ATXDefaultHomeScreenItemProducer *)selfCopy widgetsOnHomeScreen];
            galleryRequest = selfCopy->_galleryRequest;
            v32 = v7;
            if (galleryRequest)
            {
              clientIdentity = [(ATXWidgetGalleryRequest *)galleryRequest clientIdentity];
              widgetClient = [clientIdentity widgetClient];

              if (widgetClient == 2)
              {
                v18 = objc_opt_new();

                widgetsOnHomeScreen = v18;
              }
            }

            v19 = -[ATXDefaultHomeScreenItemProducer _rankTypeGivenWidgetIsNewlyInstalled:isAlreadyAdded:](selfCopy, "_rankTypeGivenWidgetIsNewlyInstalled:isAlreadyAdded:", -[ATXDefaultHomeScreenItemProducer _isNewlyInstalledWidget:](selfCopy, "_isNewlyInstalledWidget:", v6), [widgetsOnHomeScreen containsObject:v11]);
            [v6 extensionIdentity];
            v21 = v20 = selfCopy;
            containerBundleIdentifier = [v21 containerBundleIdentifier];
            v23 = [ATXDefaultHomeScreenItemProducerUtilities widgetDescriptorFromChronoDescriptor:v6 appBundleId:containerBundleIdentifier rankType:v19];
            v4 = v29;
            [(NSArray *)v29 addObject:v23];

            selfCopy = v20;
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

    _appPredictionsWidgetDescriptor = [(ATXDefaultHomeScreenItemProducer *)selfCopy _appPredictionsWidgetDescriptor];
    if (_appPredictionsWidgetDescriptor)
    {
      [(NSArray *)v4 addObject:_appPredictionsWidgetDescriptor];
    }

    v25 = selfCopy->_candidateDescriptors;
    selfCopy->_candidateDescriptors = v4;

    candidateDescriptors = selfCopy->_candidateDescriptors;
  }

  v26 = [(NSArray *)candidateDescriptors copy];

  return v26;
}

- (id)personalizedOnboardingStacksWithRankingAlgorithm:(int)algorithm
{
  v3 = *&algorithm;
  v5 = [ATXDefaultHomeScreenItemOnboardingStacksProducer alloc];
  _stackableCandidates = [(ATXDefaultHomeScreenItemProducer *)self _stackableCandidates];
  cachedWidgetPersonalityToAppScore = self->_cachedWidgetPersonalityToAppScore;
  personalityToDescriptorDictionary = [(ATXDefaultHomeScreenItemProducer *)self personalityToDescriptorDictionary];
  LOBYTE(v13) = 0;
  LOBYTE(v12) = 1;
  v9 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v5 initWithCandidateWidgets:_stackableCandidates cachedWidgetPersonalityToAppScore:cachedWidgetPersonalityToAppScore personalityToDescriptorDictionary:personalityToDescriptorDictionary adblDrainClassification:self->_adblDrainClassification isiPad:self->_isiPad isDayZeroExperience:0 shouldIncludeContactsWidget:v12 cachedHasiCloudFamily:0 appLaunchCounts:self->_appLaunchCounts isAmbient:v13];

  v10 = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v9 personalizedOnboardingStacksWithRankingAlgorithm:v3];

  return v10;
}

- (id)_personalizedStackForRankerPlistType:(int)type
{
  v3 = *&type;
  _stackableCandidates = [(ATXDefaultHomeScreenItemProducer *)self _stackableCandidates];
  v6 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedStackFromCandidates:_stackableCandidates rankerPlistType:v3 size:0];
  v7 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedStackFromCandidates:_stackableCandidates rankerPlistType:v3 size:1];
  v8 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedStackFromCandidates:_stackableCandidates rankerPlistType:v3 size:2];
  v9 = 0;
  if (self->_isiPad)
  {
    v9 = [(ATXDefaultHomeScreenItemProducer *)self _personalizedStackFromCandidates:_stackableCandidates rankerPlistType:v3 size:4];
  }

  LOBYTE(v12) = self->_isiPad;
  v10 = [ATXDefaultHomeScreenItemProducerUtilities defaultWidgetStackFromSmallStack:v6 mediumStack:v7 largeStack:v8 extraLargeStack:v9 suggestedSize:1 maxWidgetsPerStack:7 isiPad:v12];

  return v10;
}

- (id)_stackableCandidates
{
  appPredictionsWidgetDescriptor = [objc_opt_class() appPredictionsWidgetDescriptor];
  candidateDescriptors = [(ATXDefaultHomeScreenItemProducer *)self candidateDescriptors];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ATXDefaultHomeScreenItemProducer__stackableCandidates__block_invoke;
  v8[3] = &unk_1E80C2AC8;
  v9 = appPredictionsWidgetDescriptor;
  v5 = appPredictionsWidgetDescriptor;
  v6 = [candidateDescriptors _pas_filteredArrayWithTest:v8];

  return v6;
}

uint64_t __56__ATXDefaultHomeScreenItemProducer__stackableCandidates__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 avocadoDescriptor];
  LODWORD(a1) = [v3 isEqual:*(a1 + 32)];

  return a1 ^ 1;
}

- (id)_personalizedStackFromCandidates:(id)candidates rankerPlistType:(int)type size:(unint64_t)size
{
  v5 = *&type;
  v7 = [ATXDefaultHomeScreenItemProducerUtilities widgets:candidates filteredForSize:size];
  v8 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:self->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:self->_spotlightAppLaunchHistogram appLaunchCounts:self->_appLaunchCounts];
  v9 = [(ATXDefaultHomeScreenItemRanker *)v8 widgetsBySortingAndFilteringWidgetsUsingPersonalizedTodayandAddSheetStackAlgorithm:v7 rankerPlistType:v5 regularlyUsedThreshold:7.0];
  v10 = [v9 mutableCopy];

  return v10;
}

- (id)_personalizedGalleryWidgetsForSize:(unint64_t)size
{
  candidateDescriptors = [(ATXDefaultHomeScreenItemProducer *)self candidateDescriptors];
  v6 = [ATXDefaultHomeScreenItemProducerUtilities widgets:candidateDescriptors filteredForSize:size];

  if (size <= 2)
  {
    if (size == 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    if (size == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    goto LABEL_12;
  }

  if (size != 3)
  {
    if (size == 4)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

LABEL_12:
    v9 = [[ATXDefaultHomeScreenItemRanker alloc] initWithCachedWidgetPersonalityToAppScore:self->_cachedWidgetPersonalityToAppScore spotlightAppLaunchHistogram:self->_spotlightAppLaunchHistogram appLaunchCounts:self->_appLaunchCounts];
    limit = [(ATXWidgetGalleryRequest *)self->_galleryRequest limit];
    v11 = [(ATXDefaultHomeScreenItemRanker *)v9 widgetsBySortingAndFilteringWidgetsUsingPersonalizedGalleryAlgorithm:v6 rankerPlistType:v8 regularlyUsedThreshold:limit limit:7.0];

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
  appPredictionsWidgetDescriptor = [objc_opt_class() appPredictionsWidgetDescriptor];
  if (appPredictionsWidgetDescriptor)
  {
    v4 = [[ATXWidgetPersonality alloc] initWithExtensionBundleId:@"com.apple.proactive.appprediction.panel" kind:@"com.apple.proactive.appprediction.panel"];
    widgetsOnHomeScreen = [(ATXDefaultHomeScreenItemProducer *)self widgetsOnHomeScreen];
    galleryRequest = self->_galleryRequest;
    if (galleryRequest)
    {
      clientIdentity = [(ATXWidgetGalleryRequest *)galleryRequest clientIdentity];
      widgetClient = [clientIdentity widgetClient];

      if (widgetClient == 2)
      {
        v9 = objc_opt_new();

        widgetsOnHomeScreen = v9;
      }
    }

    v10 = +[ATXDefaultHomeScreenItemProducerUtilities widgetDescriptorFromChronoDescriptor:appBundleId:rankType:](ATXDefaultHomeScreenItemProducerUtilities, "widgetDescriptorFromChronoDescriptor:appBundleId:rankType:", appPredictionsWidgetDescriptor, 0, -[ATXDefaultHomeScreenItemProducer _rankTypeGivenWidgetIsNewlyInstalled:isAlreadyAdded:](self, "_rankTypeGivenWidgetIsNewlyInstalled:isAlreadyAdded:", 0, [widgetsOnHomeScreen containsObject:v4]));
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
    selfCopy = self;
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
          stacks = [v6 stacks];
          panels = [v6 panels];
          v9 = [stacks arrayByAddingObjectsFromArray:panels];

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
                widgets = [v11 widgets];
                v13 = [widgets countByEnumeratingWithState:&v33 objects:v45 count:16];
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
                        objc_enumerationMutation(widgets);
                      }

                      v17 = *(*(&v33 + 1) + 8 * v16);
                      v18 = [ATXWidgetPersonality alloc];
                      extensionBundleId = [v17 extensionBundleId];
                      widgetKind = [v17 widgetKind];
                      v21 = [(ATXWidgetPersonality *)v18 initWithExtensionBundleId:extensionBundleId kind:widgetKind];

                      [(NSSet *)v4 addObject:v21];
                      ++v16;
                    }

                    while (v14 != v16);
                    v14 = [widgets countByEnumeratingWithState:&v33 objects:v45 count:16];
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

    v22 = selfCopy->_widgetsOnHomeScreen;
    selfCopy->_widgetsOnHomeScreen = v4;

    widgetsOnHomeScreen = selfCopy->_widgetsOnHomeScreen;
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
  homeScreenConfig = [(ATXDefaultHomeScreenItemProducer *)self homeScreenConfig];
  v3 = [homeScreenConfig countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(homeScreenConfig);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        stacks = [v7 stacks];
        v9 = [stacks countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(stacks);
              }

              widgets = [*(*(&v17 + 1) + 8 * j) widgets];
              v14 = [widgets count];

              if (v14 > 1)
              {

                v15 = 1;
                goto LABEL_19;
              }
            }

            v10 = [stacks countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [homeScreenConfig countByEnumeratingWithState:&v21 objects:v26 count:16];
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

- (BOOL)_isNewlyInstalledWidget:(id)widget
{
  widgetCopy = widget;
  _firstInstalledWidgetDate = [(ATXDefaultHomeScreenItemProducer *)self _firstInstalledWidgetDate];
  v6 = [[ATXWidgetPersonality alloc] initWithDescriptor:widgetCopy];

  descriptorInstallDates = [(ATXDefaultHomeScreenItemProducer *)self descriptorInstallDates];
  v8 = [descriptorInstallDates objectForKeyedSubscript:v6];

  if (v8)
  {
    installDate = [v8 installDate];
    v10 = installDate;
    if (_firstInstalledWidgetDate && installDate)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v12 = [currentCalendar dateByAddingUnit:16 value:1 toDate:_firstInstalledWidgetDate options:0];

      if ([v10 compare:v12] == 1)
      {
        currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
        v14 = [MEMORY[0x1E695DF00] now];
        v15 = [currentCalendar2 dateByAddingUnit:16 value:-2 toDate:v14 options:0];

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

- (int64_t)_rankTypeGivenWidgetIsNewlyInstalled:(BOOL)installed isAlreadyAdded:(BOOL)added
{
  addedCopy = added;
  installedCopy = installed;
  isDayZeroExperience = [(ATXDefaultHomeScreenItemProducer *)self isDayZeroExperience];
  v7 = 1;
  if (installedCopy)
  {
    v7 = 2;
  }

  v8 = 5;
  if (addedCopy)
  {
    v8 = 6;
    v7 = 4;
  }

  if (isDayZeroExperience)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

@end