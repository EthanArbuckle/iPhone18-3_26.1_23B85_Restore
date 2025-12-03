@interface ATXDefaultHomeScreenItemManager
+ (BOOL)isCHSWidgetDescriptorAllowedForAmbientOnboardingStacks:(id)stacks;
+ (BOOL)isDescriptorSpecial:(id)special;
+ (BOOL)isDescriptorWithWidgetKindSpecial:(id)special;
+ (BOOL)shouldFilterOutChronoWidgetDescriptorDueToDenyList:(id)list fromExcludedWidgetsWithIdentifiers:(id)identifiers;
+ (BOOL)shouldFilterOutWidgetDescriptorDueToAppProtection:(id)protection fromDisabledApps:(id)apps;
+ (BOOL)shouldFilterOutWidgetDescriptorDueToDenyList:(id)list fromExcludedWidgetsWithIdentifiers:(id)identifiers;
+ (BOOL)shouldFilterOutWidgetDescriptorWithBundleIdDueToAppProtection:(id)protection fromDisabledApps:(id)apps;
+ (id)_descriptorsByFilteringDescriptors:(id)descriptors disabledApps:(id)apps excludedWidgetsWithIdentifiers:(id)identifiers client:(unint64_t)client personaIdentifier:(id)identifier;
+ (id)_descriptorsByFilteringDescriptors:(id)descriptors variant:(unint64_t)variant fromAppsDisabledOnHomeScreen:(id)screen fromExcludedWidgetsWithIdentifiers:(id)identifiers personaIdentifier:(id)identifier;
+ (id)_onboardingStacksByFilteringDescriptorsInOnboardingStacks:(id)stacks variant:(unint64_t)variant;
+ (id)_widgetStackByFilteringDescriptorsInWidgetStack:(id)stack variant:(unint64_t)variant;
+ (id)sharedInstance;
- (ATXDefaultHomeScreenItemManager)init;
- (ATXDefaultHomeScreenItemManager)initWithHomeScreenPath:(id)path ambientPath:(id)ambientPath carPlayPath:(id)playPath;
- (id)_JSONCompatible:(id)compatible;
- (id)_generateOnboardingStacksForVariant:(unint64_t)variant;
- (id)_generateSmartStackWithDescriptorCacheFromRequest:(id)request error:(id *)error;
- (id)_generateSmartStacksWithRequest:(id)request error:(id *)error;
- (id)fetchWidgetDiscoverabilityStacksForVariant:(unint64_t)variant;
- (id)generateItemsForWidgetGalleryWithRequest:(id)request error:(id *)error;
- (void)_fetchSmartStackOfVariant:(unint64_t)variant localObserver:(int)observer completionHandler:(id)handler;
- (void)_readUpdateFromFileAtPath:(id)path completionHandler:(id)handler;
- (void)_writeUpdate:(id)update atPath:(id)path completionHandler:(id)handler;
- (void)fetchDefaultStacksJSONWithCompletionHandler:(id)handler;
- (void)fetchGalleryItemsForVariant:(unint64_t)variant gridSize:(unint64_t)size supportedFamilies:(unint64_t)families personaIdentifier:(id)identifier completionHandler:(id)handler;
- (void)fetchWidgetGalleryItemsWithRequest:(id)request completionHandler:(id)handler;
- (void)fetchWidgetSmartStackWithRequest:(id)request completionHandler:(id)handler;
- (void)writeHomeScreenUpdate:(id)update completionHandler:(id)handler;
@end

@implementation ATXDefaultHomeScreenItemManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[ATXDefaultHomeScreenItemManager sharedInstance];
  }

  v3 = sharedInstance_manager;

  return v3;
}

uint64_t __49__ATXDefaultHomeScreenItemManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_manager;
  sharedInstance_manager = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (ATXDefaultHomeScreenItemManager)init
{
  v3 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"ATXDefaultWidgetStacks"];
  v4 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"ATXAmbientDefaultWidgetStacks"];
  v5 = [MEMORY[0x1E698B010] appPredictionDirectoryFile:@"ATXCarPlayDefaultWidgetStacks"];
  v6 = [(ATXDefaultHomeScreenItemManager *)self initWithHomeScreenPath:v3 ambientPath:v4 carPlayPath:v5];

  return v6;
}

- (ATXDefaultHomeScreenItemManager)initWithHomeScreenPath:(id)path ambientPath:(id)ambientPath carPlayPath:(id)playPath
{
  pathCopy = path;
  ambientPathCopy = ambientPath;
  playPathCopy = playPath;
  v22.receiver = self;
  v22.super_class = ATXDefaultHomeScreenItemManager;
  v11 = [(ATXDefaultHomeScreenItemManager *)&v22 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("ATXDefaultWidgetManager", v12);
    internalQueue = v11->_internalQueue;
    v11->_internalQueue = v13;

    v15 = [pathCopy copy];
    homeScreenPath = v11->_homeScreenPath;
    v11->_homeScreenPath = v15;

    v17 = [ambientPathCopy copy];
    ambientPath = v11->_ambientPath;
    v11->_ambientPath = v17;

    v19 = [playPathCopy copy];
    carPlayPath = v11->_carPlayPath;
    v11->_carPlayPath = v19;
  }

  return v11;
}

- (void)writeHomeScreenUpdate:(id)update completionHandler:(id)handler
{
  handlerCopy = handler;
  homeScreenPath = self->_homeScreenPath;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__ATXDefaultHomeScreenItemManager_writeHomeScreenUpdate_completionHandler___block_invoke;
  v9[3] = &unk_1E80C08E0;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(ATXDefaultHomeScreenItemManager *)self _writeUpdate:update atPath:homeScreenPath completionHandler:v9];
}

void __75__ATXDefaultHomeScreenItemManager_writeHomeScreenUpdate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    notify_post([@"com.apple.duetexpertd.widgetOnboardingUpdate" UTF8String]);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_writeUpdate:(id)update atPath:(id)path completionHandler:(id)handler
{
  updateCopy = update;
  pathCopy = path;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__ATXDefaultHomeScreenItemManager__writeUpdate_atPath_completionHandler___block_invoke;
  v14[3] = &unk_1E80C56B8;
  v16 = pathCopy;
  v17 = handlerCopy;
  v15 = updateCopy;
  v11 = pathCopy;
  v12 = handlerCopy;
  v13 = updateCopy;
  [(ATXDefaultHomeScreenItemManager *)self _readUpdateFromFileAtPath:v11 completionHandler:v14];
}

void __73__ATXDefaultHomeScreenItemManager__writeUpdate_atPath_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v63[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__ATXDefaultHomeScreenItemManager__writeUpdate_atPath_completionHandler___block_invoke_cold_1();
    }
  }

  if ([v5 isEqual:a1[4]])
  {
    v8 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v51 = "[ATXDefaultHomeScreenItemManager _writeUpdate:atPath:completionHandler:]_block_invoke";
      _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s: Defaults are the same as cached, not updating", buf, 0xCu);
    }

    v9 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__ATXDefaultHomeScreenItemManager__writeUpdate_atPath_completionHandler___block_invoke_25;
    block[3] = &unk_1E80C3698;
    v49 = a1[6];
    dispatch_async(v9, block);

    v10 = v49;
  }

  else
  {
    v10 = [a1[4] dictionaryRepresentation];
    v11 = objc_autoreleasePoolPush();
    v47 = 0;
    v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v47];
    v13 = v47;
    objc_autoreleasePoolPop(v11);
    if (v12)
    {
      v14 = open([a1[5] fileSystemRepresentation], 514, 384);
      if (v14 == -1)
      {
        v26 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          __73__ATXDefaultHomeScreenItemManager__writeUpdate_atPath_completionHandler___block_invoke_cold_2();
        }

        v27 = MEMORY[0x1E696ABC0];
        v62 = *MEMORY[0x1E696A278];
        v63[0] = @"Unable to create file";
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
        v29 = [v27 errorWithDomain:@"ATXDefaultWidgetManager" code:0 userInfo:v28];

        v30 = dispatch_get_global_queue(25, 0);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __73__ATXDefaultHomeScreenItemManager__writeUpdate_atPath_completionHandler___block_invoke_34;
        v41[3] = &unk_1E80C2008;
        v23 = &v43;
        v43 = a1[6];
        v13 = v29;
        v42 = v13;
        dispatch_async(v30, v41);

        v22 = v42;
      }

      else
      {
        v15 = v14;
        v16 = ATXCacheFileWrite();
        if ((v15 & 0x80000000) == 0)
        {
          close(v15);
        }

        if (v16)
        {
          v17 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [a1[4] stack];
            v18 = [a1[4] smallWidgets];
            v19 = [a1[4] mediumWidgets];
            v20 = [a1[4] largeWidgets];
            *buf = 136316162;
            v51 = "[ATXDefaultHomeScreenItemManager _writeUpdate:atPath:completionHandler:]_block_invoke_3";
            v52 = 2112;
            v53 = v35;
            v54 = 2112;
            v55 = v18;
            v56 = 2112;
            v57 = v19;
            v58 = 2112;
            v59 = v20;
            v21 = v20;
            _os_log_impl(&dword_1BF549000, v17, OS_LOG_TYPE_DEFAULT, "%s: New add widget defaults sucessfully written to cache: default stack: %@, default widgets small: %@, default widgets medium: %@ default widgets large: %@", buf, 0x34u);
          }

          v22 = dispatch_get_global_queue(25, 0);
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __73__ATXDefaultHomeScreenItemManager__writeUpdate_atPath_completionHandler___block_invoke_39;
          v36[3] = &unk_1E80C3698;
          v23 = &v37;
          v37 = a1[6];
          dispatch_async(v22, v36);
        }

        else
        {
          v31 = MEMORY[0x1E696ABC0];
          v60 = *MEMORY[0x1E696A278];
          v61 = @"Unable to write data to file";
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v33 = [v31 errorWithDomain:@"ATXDefaultWidgetManager" code:1 userInfo:v32];

          v34 = dispatch_get_global_queue(25, 0);
          v38[0] = MEMORY[0x1E69E9820];
          v38[1] = 3221225472;
          v38[2] = __73__ATXDefaultHomeScreenItemManager__writeUpdate_atPath_completionHandler___block_invoke_2;
          v38[3] = &unk_1E80C2008;
          v23 = &v40;
          v40 = a1[6];
          v13 = v33;
          v39 = v13;
          dispatch_async(v34, v38);

          v22 = v39;
        }
      }
    }

    else
    {
      v24 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __73__ATXDefaultHomeScreenItemManager__writeUpdate_atPath_completionHandler___block_invoke_cold_3();
      }

      v25 = dispatch_get_global_queue(25, 0);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __73__ATXDefaultHomeScreenItemManager__writeUpdate_atPath_completionHandler___block_invoke_28;
      v44[3] = &unk_1E80C2008;
      v23 = &v46;
      v46 = a1[6];
      v13 = v13;
      v45 = v13;
      dispatch_async(v25, v44);

      v22 = v45;
    }
  }
}

- (void)fetchWidgetGalleryItemsWithRequest:(id)request completionHandler:(id)handler
{
  v31[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  clientIdentity = [requestCopy clientIdentity];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __88__ATXDefaultHomeScreenItemManager_fetchWidgetGalleryItemsWithRequest_completionHandler___block_invoke;
  v28[3] = &unk_1E80C0908;
  v9 = handlerCopy;
  v29 = v9;
  v10 = MEMORY[0x1BFB5BA40](v28);
  widgetClient = [clientIdentity widgetClient];
  if (widgetClient - 2 < 2)
  {
    v27 = 0;
    v12 = [(ATXDefaultHomeScreenItemManager *)self generateItemsForWidgetGalleryWithRequest:requestCopy error:&v27];
    v13 = v27;
    if (v12 && (v14 = [[ATXWidgetGalleryResponse alloc] initWithItems:v12]) != 0)
    {
      v15 = v14;
      v16 = 0;
    }

    else
    {
      if (!v13)
      {
        v18 = MEMORY[0x1E696ABC0];
        v30 = *MEMORY[0x1E696A578];
        v31[0] = @"No gallery items found";
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
        v17 = [v18 errorWithDomain:@"ATXDefaultWidgetManager" code:3 userInfo:v19];

        v15 = 0;
        goto LABEL_11;
      }

      v15 = 0;
      v16 = v13;
    }

    v17 = v16;
LABEL_11:
    v20 = dispatch_get_global_queue(25, 0);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __88__ATXDefaultHomeScreenItemManager_fetchWidgetGalleryItemsWithRequest_completionHandler___block_invoke_2;
    v23[3] = &unk_1E80C56E0;
    v25 = v17;
    v26 = v9;
    v24 = v15;
    v21 = v17;
    v22 = v15;
    dispatch_async(v20, v23);

    goto LABEL_12;
  }

  if (widgetClient <= 1)
  {
    -[ATXDefaultHomeScreenItemManager fetchGalleryItemsForVariant:gridSize:supportedFamilies:completionHandler:](self, "fetchGalleryItemsForVariant:gridSize:supportedFamilies:completionHandler:", [requestCopy galleryVariant], objc_msgSend(requestCopy, "widgetGridSize"), objc_msgSend(requestCopy, "widgetFamilyMask"), v10);
  }

LABEL_12:
}

void __88__ATXDefaultHomeScreenItemManager_fetchWidgetGalleryItemsWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [[ATXWidgetGalleryResponse alloc] initWithItems:v5];
    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v10 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A578];
      v13[0] = @"No items found";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v8 = [v10 errorWithDomain:@"ATXDefaultWidgetManager" code:3 userInfo:v11];
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

- (void)fetchGalleryItemsForVariant:(unint64_t)variant gridSize:(unint64_t)size supportedFamilies:(unint64_t)families personaIdentifier:(id)identifier completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v14 = +[ATXDemoStackAndWidgetProvider isDemoModeEnabled];
  if (!handlerCopy || !v14)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __126__ATXDefaultHomeScreenItemManager_fetchGalleryItemsForVariant_gridSize_supportedFamilies_personaIdentifier_completionHandler___block_invoke;
    v26[3] = &unk_1E80C5708;
    v28 = handlerCopy;
    variantCopy = variant;
    v27 = identifierCopy;
    familiesCopy = families;
    sizeCopy = size;
    v17 = MEMORY[0x1BFB5BA40](v26);
    v18 = v17;
    if (variant)
    {
      if (variant == 2)
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __126__ATXDefaultHomeScreenItemManager_fetchGalleryItemsForVariant_gridSize_supportedFamilies_personaIdentifier_completionHandler___block_invoke_4;
        v20[3] = &unk_1E80C5730;
        v19 = &v21;
        v21 = v17;
        [(ATXDefaultHomeScreenItemManager *)self _readCarPlayUpdateFromFileWithCompletionHandler:v20];
      }

      else
      {
        if (variant != 1)
        {
LABEL_13:

          v15 = v28;
          goto LABEL_14;
        }

        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __126__ATXDefaultHomeScreenItemManager_fetchGalleryItemsForVariant_gridSize_supportedFamilies_personaIdentifier_completionHandler___block_invoke_2;
        v24[3] = &unk_1E80C5730;
        v19 = &v25;
        v25 = v17;
        [(ATXDefaultHomeScreenItemManager *)self _readAmbientUpdateFromFileWithCompletionHandler:v24];
      }
    }

    else
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __126__ATXDefaultHomeScreenItemManager_fetchGalleryItemsForVariant_gridSize_supportedFamilies_personaIdentifier_completionHandler___block_invoke_3;
      v22[3] = &unk_1E80C5730;
      v19 = &v23;
      v23 = v17;
      [(ATXDefaultHomeScreenItemManager *)self _readHomeScreenUpdateFromFileWithCompletionHandler:v22];
    }

    goto LABEL_13;
  }

  v15 = +[ATXDemoStackAndWidgetProvider demoStackAndWidgets];
  v16 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "[ATXDefaultHomeScreenItemManager fetchGalleryItemsForVariant:gridSize:supportedFamilies:personaIdentifier:completionHandler:]";
    v34 = 2112;
    v35 = v15;
    _os_log_impl(&dword_1BF549000, v16, OS_LOG_TYPE_DEFAULT, "%s: Returning DEMO widget defaults: %@", buf, 0x16u);
  }

  (*(handlerCopy + 2))(handlerCopy, v15, 0);
LABEL_14:
}

void __126__ATXDefaultHomeScreenItemManager_fetchGalleryItemsForVariant_gridSize_supportedFamilies_personaIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v8 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __126__ATXDefaultHomeScreenItemManager_fetchGalleryItemsForVariant_gridSize_supportedFamilies_personaIdentifier_completionHandler___block_invoke_cold_1();
    }

    v9 = +[ATXWidgetDescriptorCache sharedInstance];
    v58 = 0;
    v10 = [v9 fetchHomeScreenWidgetDescriptorMetadataWithError:&v58];
    v11 = v58;
    if (v11)
    {
      v12 = v11;
      v13 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __126__ATXDefaultHomeScreenItemManager_fetchGalleryItemsForVariant_gridSize_supportedFamilies_personaIdentifier_completionHandler___block_invoke_cold_2();
      }

      v14 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __126__ATXDefaultHomeScreenItemManager_fetchGalleryItemsForVariant_gridSize_supportedFamilies_personaIdentifier_completionHandler___block_invoke_51;
      block[3] = &unk_1E80C2008;
      v15 = *(a1 + 40);
      v56 = v12;
      v57 = v15;
      v16 = v12;
      dispatch_async(v14, block);

      v17 = v57;
      goto LABEL_19;
    }

    v18 = objc_opt_new();
    v19 = [v18 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

    v20 = [ATXDefaultHomeScreenItemProducer alloc];
    v21 = [v9 homeScreenDescriptors];
    v22 = [MEMORY[0x1E69C5CF8] isiPad];
    v23 = [(ATXDefaultHomeScreenItemProducer *)v20 initWithDescriptors:v21 descriptorInstallDates:v10 homeScreenConfig:MEMORY[0x1E695E0F0] isDayZeroExperience:1 isiPad:v22 spotlightAppLaunchHistogram:0 appLaunchCounts:v19];

    v24 = [(ATXDefaultHomeScreenItemProducer *)v23 update];

    v5 = v24;
  }

  v25 = objc_alloc(MEMORY[0x1E695DFD8]);
  v26 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
  v27 = v26;
  v51 = v7;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = objc_opt_new();
  }

  v29 = v28;

  v30 = [v25 initWithArray:v29];
  v31 = +[ATXDefaultHomeScreenItemManager _widgetIdentifiersNotAllowed];
  if ([v5 shouldSuggestStackInGallery])
  {
    v32 = [v5 stack];
  }

  else
  {
    v32 = 0;
  }

  v33 = [v5 smallWidgets];
  v48 = [ATXDefaultHomeScreenItemManager _descriptorsByFilteringDescriptors:v33 variant:*(a1 + 48) fromAppsDisabledOnHomeScreen:v30 fromExcludedWidgetsWithIdentifiers:v31 personaIdentifier:*(a1 + 32)];

  v34 = [v5 mediumWidgets];
  v35 = [ATXDefaultHomeScreenItemManager _descriptorsByFilteringDescriptors:v34 variant:*(a1 + 48) fromAppsDisabledOnHomeScreen:v30 fromExcludedWidgetsWithIdentifiers:v31 personaIdentifier:*(a1 + 32)];

  v36 = [v5 largeWidgets];
  v37 = [ATXDefaultHomeScreenItemManager _descriptorsByFilteringDescriptors:v36 variant:*(a1 + 48) fromAppsDisabledOnHomeScreen:v30 fromExcludedWidgetsWithIdentifiers:v31 personaIdentifier:*(a1 + 32)];

  v38 = [v5 extraLargeWidgets];
  v49 = v31;
  v39 = [ATXDefaultHomeScreenItemManager _descriptorsByFilteringDescriptors:v38 variant:*(a1 + 48) fromAppsDisabledOnHomeScreen:v30 fromExcludedWidgetsWithIdentifiers:v31 personaIdentifier:*(a1 + 32)];

  v40 = [ATXDefaultHomeScreenItemTilerWrapper alloc];
  v50 = v32;
  v41 = v32;
  v17 = v48;
  v42 = [(ATXDefaultHomeScreenItemTilerWrapper *)v40 initWithDefaultStack:v41 defaultWidgetsSmall:v48 defaultWidgetsMedium:v35 defaultWidgetsLarge:v37 defaultWidgetsExtraLarge:v39 widgetFamilyMask:*(a1 + 56) gridSize:*(a1 + 64) galleryRequest:0];
  v43 = [(ATXDefaultHomeScreenItemTilerWrapper *)v42 tiledHomeScreenItems];
  v44 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v60 = "[ATXDefaultHomeScreenItemManager fetchGalleryItemsForVariant:gridSize:supportedFamilies:personaIdentifier:completionHandler:]_block_invoke_2";
    v61 = 2112;
    v62 = v43;
    _os_log_impl(&dword_1BF549000, v44, OS_LOG_TYPE_DEFAULT, "%s: Fetched add widget defaults: %@", buf, 0x16u);
  }

  v45 = dispatch_get_global_queue(25, 0);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __126__ATXDefaultHomeScreenItemManager_fetchGalleryItemsForVariant_gridSize_supportedFamilies_personaIdentifier_completionHandler___block_invoke_58;
  v52[3] = &unk_1E80C2008;
  v46 = *(a1 + 40);
  v53 = v43;
  v54 = v46;
  v47 = v43;
  dispatch_async(v45, v52);

  v16 = v50;
  v7 = v51;
  v9 = v30;
  v10 = v49;
LABEL_19:
}

- (id)generateItemsForWidgetGalleryWithRequest:(id)request error:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  clientIdentity = [requestCopy clientIdentity];
  widgetClient = [clientIdentity widgetClient];

  clientIdentity2 = [requestCopy clientIdentity];
  clientSessionIdentifier = [clientIdentity2 clientSessionIdentifier];

  v10 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentity3 = [requestCopy clientIdentity];
    *buf = 136315394;
    v65 = "[ATXDefaultHomeScreenItemManager generateItemsForWidgetGalleryWithRequest:error:]";
    v66 = 2112;
    v67 = clientIdentity3;
    _os_log_impl(&dword_1BF549000, v10, OS_LOG_TYPE_DEFAULT, "%s: Fetching Widget gallery items for Client: %@", buf, 0x16u);
  }

  v12 = +[ATXWidgetDescriptorCache sharedInstance];
  v61 = 0;
  v13 = [v12 fetchHomeScreenWidgetDescriptorMetadataWithError:&v61];
  v14 = v61;
  if (!v14)
  {
    v58 = widgetClient;
    v59 = v13;
    v18 = objc_opt_new();
    rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v18 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

    v20 = MEMORY[0x1E695DFD8];
    v21 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = objc_opt_new();
    }

    v24 = v23;

    v60 = [v20 setWithArray:v24];

    denyListOfExtensions = [requestCopy denyListOfExtensions];
    v26 = denyListOfExtensions;
    v27 = MEMORY[0x1E695E0F0];
    if (denyListOfExtensions)
    {
      v27 = denyListOfExtensions;
    }

    v28 = v27;

    v29 = [MEMORY[0x1E695DFD8] setWithArray:v28];

    v30 = +[ATXDefaultHomeScreenItemManager _widgetIdentifiersNotAllowed];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = [MEMORY[0x1E695DFD8] set];
    }

    v33 = v32;

    v56 = v33;
    v34 = [v29 setByAddingObjectsFromSet:v33];

    homeScreenDescriptors = [v12 homeScreenDescriptors];
    v55 = v34;
    v36 = [ATXDefaultHomeScreenItemManager _descriptorsByFilteringDescriptors:homeScreenDescriptors disabledApps:v60 excludedWidgetsWithIdentifiers:v34 client:v58 personaIdentifier:clientSessionIdentifier];

    v37 = [ATXDefaultHomeScreenItemProducer alloc];
    v54 = v36;
    v13 = v59;
    v38 = [(ATXDefaultHomeScreenItemProducer *)v37 initWithDescriptors:v36 descriptorInstallDates:v59 homeScreenConfig:MEMORY[0x1E695E0F0] isDayZeroExperience:(v58 & 0xFFFFFFFFFFFFFFFELL) != 2 isiPad:0 spotlightAppLaunchHistogram:0 appLaunchCounts:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];
    [(ATXDefaultHomeScreenItemProducer *)v38 setGalleryRequest:requestCopy];
    v53 = v38;
    update = [(ATXDefaultHomeScreenItemProducer *)v38 update];
    v57 = rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps;
    if (update)
    {
      v52 = clientSessionIdentifier;
      v51 = [ATXDefaultHomeScreenItemTilerWrapper alloc];
      if (v58 == 2)
      {
        smallWidgets = [update smallWidgets];
        largeWidgets = 0;
        stack = 0;
        mediumWidgets = 0;
        extraLargeWidgets = 0;
      }

      else
      {
        stack = [update stack];
        smallWidgets = [update smallWidgets];
        mediumWidgets = [update mediumWidgets];
        largeWidgets = [update largeWidgets];
        extraLargeWidgets = [update extraLargeWidgets];
      }

      v47 = -[ATXDefaultHomeScreenItemTilerWrapper initWithDefaultStack:defaultWidgetsSmall:defaultWidgetsMedium:defaultWidgetsLarge:defaultWidgetsExtraLarge:widgetFamilyMask:gridSize:galleryRequest:](v51, "initWithDefaultStack:defaultWidgetsSmall:defaultWidgetsMedium:defaultWidgetsLarge:defaultWidgetsExtraLarge:widgetFamilyMask:gridSize:galleryRequest:", stack, smallWidgets, mediumWidgets, largeWidgets, extraLargeWidgets, [requestCopy widgetFamilyMask], objc_msgSend(requestCopy, "widgetGridSize"), requestCopy);
      if (v58 == 2)
      {
        stack = smallWidgets;
      }

      else
      {
      }

      clientSessionIdentifier = v52;
      v13 = v59;

      tiledHomeScreenItems = [(ATXDefaultHomeScreenItemTilerWrapper *)v47 tiledHomeScreenItems];
      v48 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = [tiledHomeScreenItems count];
        *buf = 134218242;
        v65 = v49;
        v66 = 2112;
        v67 = tiledHomeScreenItems;
        _os_log_impl(&dword_1BF549000, v48, OS_LOG_TYPE_DEFAULT, "Number of items returned for widget gallery suggestions is %lu; Widgets: %@", buf, 0x16u);
      }
    }

    else
    {
      v45 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        [ATXDefaultHomeScreenItemManager generateItemsForWidgetGalleryWithRequest:error:];
      }

      if (!error)
      {
        tiledHomeScreenItems = 0;
        goto LABEL_32;
      }

      v46 = MEMORY[0x1E696ABC0];
      v62 = *MEMORY[0x1E696A578];
      v63 = @"Failed to produce home screen item update for widget gallery.";
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      [v46 errorWithDomain:@"ATXDefaultWidgetManager" code:3 userInfo:v47];
      *error = tiledHomeScreenItems = 0;
    }

LABEL_32:
    goto LABEL_33;
  }

  v15 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [ATXDefaultHomeScreenItemManager generateItemsForWidgetGalleryWithRequest:error:];
  }

  if (error)
  {
    v16 = v14;
    tiledHomeScreenItems = 0;
    *error = v14;
  }

  else
  {
    tiledHomeScreenItems = 0;
  }

LABEL_33:

  return tiledHomeScreenItems;
}

- (void)fetchWidgetSmartStackWithRequest:(id)request completionHandler:(id)handler
{
  v59 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  clientIdentity = [requestCopy clientIdentity];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __86__ATXDefaultHomeScreenItemManager_fetchWidgetSmartStackWithRequest_completionHandler___block_invoke;
  v50[3] = &unk_1E80C0908;
  v9 = handlerCopy;
  v51 = v9;
  v10 = MEMORY[0x1BFB5BA40](v50);
  widgetClient = [clientIdentity widgetClient];
  if (widgetClient - 2 < 2)
  {
    v49 = 0;
    v12 = [(ATXDefaultHomeScreenItemManager *)self _generateSmartStacksWithRequest:requestCopy error:&v49];
    v13 = v49;
    v38 = v13;
    if (v12)
    {
      v35 = v10;
      v36 = v9;
      v14 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        clientIdentity2 = [requestCopy clientIdentity];
        v16 = [v12 count];
        *buf = 138412546;
        v56 = clientIdentity2;
        v57 = 2048;
        v58 = v16;
        _os_log_impl(&dword_1BF549000, v14, OS_LOG_TYPE_DEFAULT, "Client: %@. Number of Stacks returned for %lu", buf, 0x16u);
      }

      v37 = requestCopy;

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v34 = v12;
      v17 = v12;
      v18 = [v17 countByEnumeratingWithState:&v45 objects:v54 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v46;
        v21 = 1;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v46 != v20)
            {
              objc_enumerationMutation(v17);
            }

            smallDefaultStack = [*(*(&v45 + 1) + 8 * i) smallDefaultStack];
            v24 = [smallDefaultStack _pas_mappedArrayWithTransform:&__block_literal_global_69];
            v25 = __atxlog_handle_home_screen();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v56 = v21;
              v57 = 2112;
              v58 = v24;
              _os_log_impl(&dword_1BF549000, v25, OS_LOG_TYPE_DEFAULT, "Widgets in Stack %lu: %@", buf, 0x16u);
            }

            ++v21;
          }

          v19 = [v17 countByEnumeratingWithState:&v45 objects:v54 count:16];
        }

        while (v19);
      }

      v26 = [[ATXWidgetSmartStackResponse alloc] initWithStacks:v17];
      v27 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __86__ATXDefaultHomeScreenItemManager_fetchWidgetSmartStackWithRequest_completionHandler___block_invoke_70;
      block[3] = &unk_1E80C2008;
      v28 = &v44;
      v9 = v36;
      v29 = &v43;
      v43 = v26;
      v44 = v36;
      v30 = v26;
      dispatch_async(v27, block);
      requestCopy = v37;
      v12 = v34;
      v10 = v35;
    }

    else
    {
      if (v13)
      {
        v31 = v13;
      }

      else
      {
        v32 = MEMORY[0x1E696ABC0];
        v52 = *MEMORY[0x1E696A578];
        v53 = @"No smart stacks generated for CarPlay";
        v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v31 = [v32 errorWithDomain:@"ATXDefaultWidgetManager" code:3 userInfo:v33];

        v12 = 0;
      }

      v27 = dispatch_get_global_queue(25, 0);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __86__ATXDefaultHomeScreenItemManager_fetchWidgetSmartStackWithRequest_completionHandler___block_invoke_2;
      v39[3] = &unk_1E80C2008;
      v28 = &v41;
      v29 = &v40;
      v40 = v31;
      v41 = v9;
      v30 = v31;
      dispatch_async(v27, v39);
    }
  }

  else if (widgetClient <= 1)
  {
    -[ATXDefaultHomeScreenItemManager _fetchSmartStackOfVariant:localObserver:completionHandler:](self, "_fetchSmartStackOfVariant:localObserver:completionHandler:", [requestCopy smartStackVariant], 0, v10);
  }
}

void __86__ATXDefaultHomeScreenItemManager_fetchWidgetSmartStackWithRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [[ATXWidgetSmartStackResponse alloc] initWithStacks:v5];
    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v10 = MEMORY[0x1E696ABC0];
      v12 = *MEMORY[0x1E696A578];
      v13[0] = @"Failed to generate smart stacks";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      v8 = [v10 errorWithDomain:@"ATXDefaultWidgetManager" code:3 userInfo:v11];
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

- (void)_fetchSmartStackOfVariant:(unint64_t)variant localObserver:(int)observer completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v9 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v25 = "[ATXDefaultHomeScreenItemManager _fetchSmartStackOfVariant:localObserver:completionHandler:]";
    v26 = 2048;
    variantCopy = variant;
    _os_log_impl(&dword_1BF549000, v9, OS_LOG_TYPE_DEFAULT, "%s: fetching smart stack of variant %lu", buf, 0x16u);
  }

  if (observer)
  {
    notify_cancel(observer);
  }

  switch(variant)
  {
    case 6uLL:
      v13 = dispatch_get_global_queue(25, 0);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_2;
      v20[3] = &unk_1E80C2008;
      v20[4] = self;
      v21 = handlerCopy;
      dispatch_async(v13, v20);

      v11 = v21;
      break;
    case 3uLL:
      internalQueue = self->_internalQueue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_3;
      v17[3] = &unk_1E80C4548;
      v17[4] = self;
      v19 = 3;
      v18 = handlerCopy;
      dispatch_async(internalQueue, v17);
      v11 = v18;
      break;
    case 2uLL:
      v10 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke;
      block[3] = &unk_1E80C2008;
      block[4] = self;
      v23 = handlerCopy;
      dispatch_async(v10, block);

      v11 = v23;
      break;
    default:
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_76;
      v14[3] = &unk_1E80C57A0;
      variantCopy2 = variant;
      v14[4] = self;
      v15 = handlerCopy;
      [(ATXDefaultHomeScreenItemManager *)self _readHomeScreenUpdateFromFileWithCompletionHandler:v14];
      v11 = v15;
      break;
  }
}

void __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) fetchWidgetDiscoverabilityStacksForVariant:2];
  (*(v1 + 16))(v1, v2, 0);
}

void __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) fetchWidgetDiscoverabilityStacksForVariant:6];
  (*(v1 + 16))(v1, v2, 0);
}

void __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _generateOnboardingStacksForVariant:*(a1 + 48)];
  v3 = __atxlog_handle_home_screen();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v2 stack1];
      v6 = [v5 smallDefaultStack];
      v7 = [v6 count];
      v8 = [v2 stack2];
      v9 = [v8 smallDefaultStack];
      *buf = 136315650;
      v16 = "[ATXDefaultHomeScreenItemManager _fetchSmartStackOfVariant:localObserver:completionHandler:]_block_invoke_3";
      v17 = 2048;
      v18 = v7;
      v19 = 2048;
      v20 = [v9 count];
      _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: generated ambient onboarding stacks, stack 1: %tu widgets, stack 2: %tu widgets", buf, 0x20u);
    }

    v10 = *(a1 + 40);
    v11 = [v2 stack1];
    v12 = [v2 stack2];
    v14[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    (*(v10 + 16))(v10, v13, 0);
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_3_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_76(uint64_t a1, void *a2, void *a3)
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if ([v6 code] == 2)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LODWORD(v76) = 0;
      v8 = [@"com.apple.duetexpertd.widgetOnboardingUpdate" UTF8String];
      v9 = *&buf[8];
      v10 = *(a1 + 32);
      v11 = *(v10 + 8);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_2_88;
      handler[3] = &unk_1E80C5778;
      v13 = *(a1 + 40);
      v12 = *(a1 + 48);
      v54 = buf;
      v55 = v12;
      handler[4] = v10;
      v53 = v13;
      notify_register_dispatch(v8, (v9 + 24), v11, handler);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v24 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_76_cold_1();
      }

      v25 = dispatch_get_global_queue(25, 0);
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_90;
      v49[3] = &unk_1E80C2008;
      v51 = *(a1 + 40);
      v50 = v7;
      dispatch_async(v25, v49);
    }
  }

  else
  {
    v15 = (a1 + 48);
    v14 = *(a1 + 48);
    if (v14 == 1)
    {
      v26 = [v5 todayStack];

      v27 = v26 == 0;
      v28 = __atxlog_handle_home_screen();
      v29 = v28;
      if (v27)
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_76_cold_2(v29);
        }

        v43 = MEMORY[0x1E696ABC0];
        v71 = *MEMORY[0x1E696A278];
        v72 = @"Missing today stack";
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v45 = [v43 errorWithDomain:@"ATXDefaultWidgetManager" code:0 userInfo:v44];

        v46 = dispatch_get_global_queue(25, 0);
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_86;
        v59[3] = &unk_1E80C2008;
        v47 = *(a1 + 40);
        v60 = v45;
        v61 = v47;
        v48 = v45;
        dispatch_async(v46, v59);
      }

      else
      {
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v30 = *v15;
          v31 = [v5 todayStack];
          v32 = [v31 compactDescription];
          *buf = 136315650;
          *&buf[4] = "[ATXDefaultHomeScreenItemManager _fetchSmartStackOfVariant:localObserver:completionHandler:]_block_invoke_2";
          *&buf[12] = 2048;
          *&buf[14] = v30;
          *&buf[22] = 2112;
          v76 = v32;
          _os_log_impl(&dword_1BF549000, v29, OS_LOG_TYPE_DEFAULT, "%s: fetched smart stack of variant %lu: %@", buf, 0x20u);
        }

        v33 = dispatch_get_global_queue(25, 0);
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_82;
        v62[3] = &unk_1E80C2008;
        v64 = *(a1 + 40);
        v63 = v5;
        dispatch_async(v33, v62);
      }
    }

    else if (v14)
    {
      v34 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_76_cold_4();
      }

      v35 = dispatch_get_global_queue(25, 0);
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_87;
      v56[3] = &unk_1E80C2008;
      v36 = *(a1 + 40);
      v57 = 0;
      v58 = v36;
      dispatch_async(v35, v56);
    }

    else
    {
      v16 = [v5 stack];

      v17 = v16 == 0;
      v18 = __atxlog_handle_home_screen();
      v19 = v18;
      if (v17)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_76_cold_3(v19);
        }

        v37 = MEMORY[0x1E696ABC0];
        v73 = *MEMORY[0x1E696A278];
        v74 = @"Missing stack";
        v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v39 = [v37 errorWithDomain:@"ATXDefaultWidgetManager" code:0 userInfo:v38];

        v40 = dispatch_get_global_queue(25, 0);
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_81;
        v65[3] = &unk_1E80C2008;
        v41 = *(a1 + 40);
        v66 = v39;
        v67 = v41;
        v42 = v39;
        dispatch_async(v40, v65);
      }

      else
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *v15;
          v21 = [v5 stack];
          v22 = [v21 compactDescription];
          *buf = 136315650;
          *&buf[4] = "[ATXDefaultHomeScreenItemManager _fetchSmartStackOfVariant:localObserver:completionHandler:]_block_invoke";
          *&buf[12] = 2048;
          *&buf[14] = v20;
          *&buf[22] = 2112;
          v76 = v22;
          _os_log_impl(&dword_1BF549000, v19, OS_LOG_TYPE_DEFAULT, "%s: fetched smart stack of variant %lu: %@", buf, 0x20u);
        }

        v23 = dispatch_get_global_queue(25, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_77;
        block[3] = &unk_1E80C2008;
        v70 = *(a1 + 40);
        v69 = v5;
        dispatch_async(v23, block);
      }
    }
  }
}

void __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_77(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) stack];
  v4[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  (*(v1 + 16))(v1, v3, 0);
}

void __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_82(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) todayStack];
  v4[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  (*(v1 + 16))(v1, v3, 0);
}

- (id)fetchWidgetDiscoverabilityStacksForVariant:(unint64_t)variant
{
  v19 = *MEMORY[0x1E69E9840];
  isiPad = [MEMORY[0x1E69C5CF8] isiPad];
  if (variant != 2 || (isiPad & 1) != 0)
  {
    v8 = [(ATXDefaultHomeScreenItemManager *)self _generateOnboardingStacksForVariant:variant];
    v6 = v8;
    if (v8)
    {
      stack1 = [v8 stack1];
      v16[0] = stack1;
      stack2 = [v6 stack2];
      v16[1] = stack2;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
      [(ATXDefaultHomeScreenItemManager *)self _logFetchedOnboardingStack:v11];

      stack12 = [v6 stack1];
      stack22 = [v6 stack2];
      v15[1] = stack22;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    }

    else
    {
      stack12 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(stack12, OS_LOG_TYPE_ERROR))
      {
        [ATXDefaultHomeScreenItemManager fetchWidgetDiscoverabilityStacksForVariant:];
      }

      v7 = 0;
    }
  }

  else
  {
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "[ATXDefaultHomeScreenItemManager fetchWidgetDiscoverabilityStacksForVariant:]";
      _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "%s: returning nil stack for non-pad devices. Stack variant: ATXSmartStackVariantOnboarding", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

void __62__ATXDefaultHomeScreenItemManager__logFetchedOnboardingStack___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a3 + 1;
    v7 = [v4 compactDescription];
    v8 = 134218242;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "_fetchSmartStackOfVariant: fetched onboarding smart stack %lu: %@", &v8, 0x16u);
  }
}

- (id)_generateSmartStacksWithRequest:(id)request error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentity = [requestCopy clientIdentity];
    v15 = 136315394;
    v16 = "[ATXDefaultHomeScreenItemManager _generateSmartStacksWithRequest:error:]";
    v17 = 2112;
    v18 = clientIdentity;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: Fetching Widget Smart Stacks for Client: %@", &v15, 0x16u);
  }

  v9 = [(ATXDefaultHomeScreenItemManager *)self _generateSmartStackWithDescriptorCacheFromRequest:requestCopy error:error];
  v10 = v9;
  if (v9)
  {
    onboardingStacks = [v9 onboardingStacks];
  }

  else
  {
    v12 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      clientIdentity2 = [requestCopy clientIdentity];
      v15 = 136315394;
      v16 = "[ATXDefaultHomeScreenItemManager _generateSmartStacksWithRequest:error:]";
      v17 = 2112;
      v18 = clientIdentity2;
      _os_log_impl(&dword_1BF549000, v12, OS_LOG_TYPE_DEFAULT, "%s: No onboarding stack suggestions available for Client: %@, returning nil", &v15, 0x16u);
    }

    onboardingStacks = 0;
  }

  return onboardingStacks;
}

- (id)_generateSmartStackWithDescriptorCacheFromRequest:(id)request error:(id *)error
{
  v43[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  clientIdentity = [requestCopy clientIdentity];
  widgetClient = [clientIdentity widgetClient];

  clientIdentity2 = [requestCopy clientIdentity];
  clientSessionIdentifier = [clientIdentity2 clientSessionIdentifier];

  v8 = objc_opt_new();
  rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v8 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

  v9 = +[ATXWidgetDescriptorCache sharedInstance];
  v10 = objc_alloc(MEMORY[0x1E695DFD8]);
  v11 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  v40 = [v10 initWithArray:v14];
  denyListOfExtensions = [requestCopy denyListOfExtensions];
  if (denyListOfExtensions)
  {
    v16 = denyListOfExtensions;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  v17 = [MEMORY[0x1E695DFD8] setWithArray:v16];
  v18 = +[ATXDefaultHomeScreenItemManager _widgetIdentifiersNotAllowed];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [MEMORY[0x1E695DFD8] set];
  }

  v21 = v20;

  v22 = [v17 setByAddingObjectsFromSet:v21];

  homeScreenDescriptors = [v9 homeScreenDescriptors];
  v24 = clientSessionIdentifier;
  v25 = [ATXDefaultHomeScreenItemManager _descriptorsByFilteringDescriptors:homeScreenDescriptors disabledApps:v40 excludedWidgetsWithIdentifiers:v22 client:widgetClient personaIdentifier:clientSessionIdentifier];

  v41 = 0;
  v26 = [v9 fetchHomeScreenWidgetDescriptorMetadataWithError:&v41];
  v27 = v41;
  if (!v27 && [v26 count] && objc_msgSend(v25, "count"))
  {
    v31 = [ATXDefaultHomeScreenItemProducer alloc];
    v32 = [(ATXDefaultHomeScreenItemProducer *)v31 initWithDescriptors:v25 descriptorInstallDates:v26 homeScreenConfig:MEMORY[0x1E695E0F0] isDayZeroExperience:(widgetClient & 0xFFFFFFFFFFFFFFFELL) != 2 isiPad:0 spotlightAppLaunchHistogram:0 adblDrainClassification:1 appLaunchCounts:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];
    v30 = [(ATXDefaultHomeScreenItemProducer *)v32 generatedStacksWithRequest:requestCopy];

    v24 = clientSessionIdentifier;
  }

  else
  {
    v28 = __atxlog_handle_carPlay_widgets();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [ATXDefaultHomeScreenItemManager _generateSmartStackWithDescriptorCacheFromRequest:error:];
    }

    if (error)
    {
      if (v27)
      {
        v29 = v27;
        v30 = 0;
        *error = v27;
        goto LABEL_21;
      }

      v36 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v43[0] = @"Failed to load widget descriptors or metadata.";
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      v34 = [v36 errorWithDomain:@"ATXDefaultWidgetManager" code:1 userInfo:v33];
      *error = v34;
    }

    v30 = 0;
  }

LABEL_21:

  return v30;
}

- (id)_generateOnboardingStacksForVariant:(unint64_t)variant
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E6997228] log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v71 = "[ATXDefaultHomeScreenItemManager _generateOnboardingStacksForVariant:]";
    v72 = 2050;
    variantCopy = variant;
    _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_DEFAULT, "%s: %{public}lu", buf, 0x16u);
  }

  v5 = objc_opt_new();
  rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v5 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

  if (variant - 3 <= 1)
  {
    v7 = [MEMORY[0x1E6997228] log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v71 = "[ATXDefaultHomeScreenItemManager _generateOnboardingStacksForVariant:]";
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "%s: generating ambient onboarding stacks", buf, 0xCu);
    }

    if ([ATXDayZeroDeterminer isDayZeroByFirstAppLaunchDateWithThresholdDateFromDaysAgo:20])
    {
      v8 = [MEMORY[0x1E6997228] log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v71 = "[ATXDefaultHomeScreenItemManager _generateOnboardingStacksForVariant:]";
        _os_log_impl(&dword_1BF549000, v8, OS_LOG_TYPE_DEFAULT, "%s: device is day zero, returning nil", buf, 0xCu);
      }

      v9 = 0;
      goto LABEL_61;
    }

    v8 = +[ATXWidgetDescriptorCache sharedInstance];
    homeScreenDescriptors = [v8 homeScreenDescriptors];
    v26 = [homeScreenDescriptors _pas_filteredSetWithTest:&__block_literal_global_101_0];

    v69 = 0;
    v27 = [v8 fetchHomeScreenWidgetDescriptorMetadataWithError:&v69];
    v28 = v69;
    if (v28 || ![v27 count] || !objc_msgSend(v26, "count"))
    {
      v29 = [MEMORY[0x1E6997228] log];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [ATXDefaultHomeScreenItemManager _generateOnboardingStacksForVariant:];
      }

      v9 = 0;
      goto LABEL_29;
    }

    v37 = [ATXDefaultHomeScreenItemProducer alloc];
    isiPad = [MEMORY[0x1E69C5CF8] isiPad];
    v29 = [(ATXDefaultHomeScreenItemProducer *)v37 initWithDescriptors:v26 descriptorInstallDates:v27 homeScreenConfig:MEMORY[0x1E695E0F0] isDayZeroExperience:0 isiPad:isiPad spotlightAppLaunchHistogram:0 adblDrainClassification:1 appLaunchCounts:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];
    ambientOnboardingStacks = [v29 ambientOnboardingStacks];
    stack1 = [ambientOnboardingStacks stack1];
    smallDefaultStack = [stack1 smallDefaultStack];
    v41 = [smallDefaultStack count];

    if (v41 > 3)
    {
      stack2 = [ambientOnboardingStacks stack2];
      smallDefaultStack2 = [stack2 smallDefaultStack];
      v53 = [smallDefaultStack2 count];

      if (v53 > 3)
      {
        v43 = ambientOnboardingStacks;
        v9 = ambientOnboardingStacks;
        goto LABEL_66;
      }

      v42 = [MEMORY[0x1E6997228] log];
      v43 = ambientOnboardingStacks;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [ATXDefaultHomeScreenItemManager _generateOnboardingStacksForVariant:ambientOnboardingStacks];
      }
    }

    else
    {
      v42 = [MEMORY[0x1E6997228] log];
      v43 = ambientOnboardingStacks;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [ATXDefaultHomeScreenItemManager _generateOnboardingStacksForVariant:ambientOnboardingStacks];
      }
    }

    v9 = 0;
LABEL_66:

LABEL_29:
    goto LABEL_61;
  }

  if ((variant & 0xFFFFFFFFFFFFFFFBLL) != 2)
  {
    v9 = 0;
    goto LABEL_62;
  }

  v10 = +[ATXBatteryDrainBehavior sharedInstance];
  fetchADBLDrainClassification = [v10 fetchADBLDrainClassification];

  v8 = objc_opt_new();
  v68 = 0;
  v12 = [v8 fetchOnboardingStackWidgetCacheWithError:&v68];
  v13 = v68;
  if (v13)
  {
    v14 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ATXDefaultHomeScreenItemManager _generateOnboardingStacksForVariant:];
    }
  }

  if (v12)
  {
    v15 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v71 = "[ATXDefaultHomeScreenItemManager _generateOnboardingStacksForVariant:]";
      _os_log_impl(&dword_1BF549000, v15, OS_LOG_TYPE_DEFAULT, "%s: fetching onboarding stacks with cached widget data", buf, 0xCu);
    }

    v16 = __atxlog_handle_home_screen();
    v17 = os_signpost_id_generate(v16);

    v18 = __atxlog_handle_home_screen();
    v19 = v18;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BF549000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "widgetDiscoverabilityUsingCachedData", " enableTelemetry=YES ", buf, 2u);
    }

    v20 = [ATXDefaultHomeScreenItemOnboardingStacksProducer alloc];
    v21 = -[ATXDefaultHomeScreenItemOnboardingStacksProducer initWithOnboardingStackWidgetCache:adblDrainClassification:isiPad:shouldIncludeContactsWidget:appLaunchCounts:](v20, "initWithOnboardingStackWidgetCache:adblDrainClassification:isiPad:shouldIncludeContactsWidget:appLaunchCounts:", v12, fetchADBLDrainClassification, [MEMORY[0x1E69C5CF8] isiPad], 1, rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps);
    onboardingStacks = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v21 onboardingStacks];
    v23 = __atxlog_handle_home_screen();
    v24 = v23;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1BF549000, v24, OS_SIGNPOST_INTERVAL_END, v17, "widgetDiscoverabilityUsingCachedData", "", buf, 2u);
    }

    v9 = [ATXDefaultHomeScreenItemManager _onboardingStacksByFilteringDescriptorsInOnboardingStacks:onboardingStacks variant:0];
  }

  else
  {
    v21 = objc_opt_new();
    onboardingStacks = [(ATXDefaultHomeScreenItemOnboardingStacksProducer *)v21 fetchOnboardingStackResultCache];
    v30 = __atxlog_handle_home_screen();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    v65 = v13;
    if (onboardingStacks)
    {
      if (v31)
      {
        *buf = 136315138;
        v71 = "[ATXDefaultHomeScreenItemManager _generateOnboardingStacksForVariant:]";
        _os_log_impl(&dword_1BF549000, v30, OS_LOG_TYPE_DEFAULT, "%s: using result cache", buf, 0xCu);
      }

      v32 = [onboardingStacks resultForClassification:fetchADBLDrainClassification];
      v33 = [ATXDefaultHomeScreenItemOnboardingStacks alloc];
      stack12 = [v32 stack1];
      stack22 = [v32 stack2];
      v36 = [(ATXDefaultHomeScreenItemOnboardingStacks *)v33 initWithOnboardingStack1:stack12 stack2:stack22 sortedThirdPartyWidgets:MEMORY[0x1E695E0F0]];

      v9 = [ATXDefaultHomeScreenItemManager _onboardingStacksByFilteringDescriptorsInOnboardingStacks:v36 variant:0];
    }

    else
    {
      if (v31)
      {
        *buf = 136315138;
        v71 = "[ATXDefaultHomeScreenItemManager _generateOnboardingStacksForVariant:]";
        _os_log_impl(&dword_1BF549000, v30, OS_LOG_TYPE_DEFAULT, "%s: no cached widget data, fetching onboarding stacks with descriptors and reading through biome stream", buf, 0xCu);
      }

      v44 = __atxlog_handle_home_screen();
      v45 = os_signpost_id_generate(v44);

      v46 = __atxlog_handle_home_screen();
      v47 = v46;
      v63 = v45 - 1;
      if (v45 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1BF549000, v47, OS_SIGNPOST_INTERVAL_BEGIN, v45, "widgetDiscoverabilityWithoutCachedData", " enableTelemetry=YES ", buf, 2u);
      }

      v32 = +[ATXWidgetDescriptorCache sharedInstance];
      v67 = 0;
      v64 = [v32 fetchHomeScreenWidgetDescriptorMetadataWithError:&v67];
      v36 = v67;
      homeScreenDescriptors2 = [v32 homeScreenDescriptors];
      v49 = homeScreenDescriptors2;
      if (v36 || ![homeScreenDescriptors2 count])
      {
        v50 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [ATXDefaultHomeScreenItemManager _generateOnboardingStacksForVariant:];
        }

        v9 = 0;
      }

      else
      {
        spid = v45;
        v61 = [ATXDayZeroDeterminer isDayZeroByFirstAppLaunchDateWithThresholdDateFromDaysAgo:20];
        v54 = [ATXDefaultHomeScreenItemProducer alloc];
        isiPad2 = [MEMORY[0x1E69C5CF8] isiPad];
        v62 = v49;
        v50 = [(ATXDefaultHomeScreenItemProducer *)v54 initWithDescriptors:v49 descriptorInstallDates:v64 homeScreenConfig:MEMORY[0x1E695E0F0] isDayZeroExperience:v61 isiPad:isiPad2 spotlightAppLaunchHistogram:0 adblDrainClassification:fetchADBLDrainClassification appLaunchCounts:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];
        onboardingStacks2 = [v50 onboardingStacks];
        v57 = __atxlog_handle_home_screen();
        v58 = v57;
        if (v63 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BF549000, v58, OS_SIGNPOST_INTERVAL_END, spid, "widgetDiscoverabilityWithoutCachedData", "", buf, 2u);
        }

        v9 = [ATXDefaultHomeScreenItemManager _onboardingStacksByFilteringDescriptorsInOnboardingStacks:onboardingStacks2 variant:0];

        v49 = v62;
      }
    }

    v13 = v65;
  }

LABEL_61:
LABEL_62:

  return v9;
}

- (id)_JSONCompatible:(id)compatible
{
  v17 = *MEMORY[0x1E69E9840];
  compatibleCopy = compatible;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = compatibleCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
        [v4 addObject:dictionaryRepresentation];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)fetchDefaultStacksJSONWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__ATXDefaultHomeScreenItemManager_fetchDefaultStacksJSONWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E80C5808;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(ATXDefaultHomeScreenItemManager *)self _readHomeScreenUpdateFromFileWithCompletionHandler:v6];
}

void __79__ATXDefaultHomeScreenItemManager_fetchDefaultStacksJSONWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = objc_opt_new();
    v7 = [v30 stack];
    v8 = [v7 dictionaryRepresentation];
    [v6 setObject:v8 forKeyedSubscript:@"smartStack"];

    v9 = [v30 todayStack];
    v10 = [v9 dictionaryRepresentation];
    [v6 setObject:v10 forKeyedSubscript:@"todayPageSmartStack"];

    if ([v30 shouldSuggestStackInGallery])
    {
      v29 = [v30 stack];
    }

    else
    {
      v29 = 0;
    }

    v11 = 0;
    v12 = 0x1E696A000uLL;
    do
    {
      v13 = objc_autoreleasePoolPush();
      v14 = [ATXDefaultHomeScreenItemTilerWrapper alloc];
      v15 = [v30 smallWidgets];
      v16 = [v30 mediumWidgets];
      [v30 largeWidgets];
      v17 = a1;
      v18 = v6;
      v20 = v19 = v12;
      v21 = [v30 extraLargeWidgets];
      v22 = [(ATXDefaultHomeScreenItemTilerWrapper *)v14 initWithDefaultStack:v29 defaultWidgetsSmall:v15 defaultWidgetsMedium:v16 defaultWidgetsLarge:v20 defaultWidgetsExtraLarge:v21 widgetFamilyMask:7294 gridSize:v11 galleryRequest:0];

      v12 = v19;
      v6 = v18;
      a1 = v17;

      v23 = *(v17 + 32);
      v24 = [(ATXDefaultHomeScreenItemTilerWrapper *)v22 tiledHomeScreenItems];
      v25 = [v23 _JSONCompatible:v24];
      v26 = [objc_alloc(*(v12 + 3776)) initWithFormat:@"AddSheetGridSizeEnum_%lu", v11];
      [v6 setObject:v25 forKeyedSubscript:v26];

      objc_autoreleasePoolPop(v13);
      ++v11;
    }

    while (v11 != 4);
    v27 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v6 options:1 error:0];
    if (v27)
    {
      v28 = [objc_alloc(*(v12 + 3776)) initWithData:v27 encoding:4];
    }

    else
    {
      v28 = @"{ error: Error formatting json }";
    }

    v5 = 0;
    (*(*(v17 + 40) + 16))();
  }
}

- (void)_readUpdateFromFileAtPath:(id)path completionHandler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__ATXDefaultHomeScreenItemManager__readUpdateFromFileAtPath_completionHandler___block_invoke;
  v11[3] = &unk_1E80C0D78;
  v12 = pathCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = pathCopy;
  dispatch_async(internalQueue, v11);
}

void __79__ATXDefaultHomeScreenItemManager__readUpdateFromFileAtPath_completionHandler___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v2 = open([*(a1 + 32) fileSystemRepresentation], 0);
  if (v2 == -1)
  {
    v4 = *__error();
    v5 = __atxlog_handle_home_screen();
    v6 = v5;
    if (v4 == 2)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = "[ATXDefaultHomeScreenItemManager _readUpdateFromFileAtPath:completionHandler:]_block_invoke";
        _os_log_impl(&dword_1BF549000, v6, OS_LOG_TYPE_DEFAULT, "%s: No suggestions file found.", buf, 0xCu);
      }

      v7 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A278];
      v20 = @"No suggestions file found";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v9 = v7;
      v10 = 2;
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __79__ATXDefaultHomeScreenItemManager__readUpdateFromFileAtPath_completionHandler___block_invoke_cold_3();
      }

      v15 = MEMORY[0x1E696ABC0];
      v22 = *MEMORY[0x1E696A278];
      v23[0] = @"Unable to open file";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v9 = v15;
      v10 = 0;
    }

    v16 = [v9 errorWithDomain:@"ATXDefaultWidgetManager" code:v10 userInfo:v8];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = v2;
    buf[0] = 0;
    ATXCacheFileRead();
    if ((v3 & 0x80000000) == 0)
    {
      close(v3);
    }

    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __79__ATXDefaultHomeScreenItemManager__readUpdateFromFileAtPath_completionHandler___block_invoke_cold_2();
    }

    v12 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A278];
    v18 = @"No data in file";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = [v12 errorWithDomain:@"ATXDefaultWidgetManager" code:1 userInfo:v13];

    (*(*(a1 + 40) + 16))();
  }
}

+ (id)_onboardingStacksByFilteringDescriptorsInOnboardingStacks:(id)stacks variant:(unint64_t)variant
{
  v6 = MEMORY[0x1E695DFD8];
  stacksCopy = stacks;
  v8 = [v6 alloc];
  v9 = CFPreferencesCopyAppValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui");
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  v13 = [v8 initWithArray:v12];
  v14 = +[ATXDefaultHomeScreenItemManager _widgetIdentifiersNotAllowed];
  stack1 = [stacksCopy stack1];
  v16 = [self _widgetStackByFilteringDescriptorsInWidgetStack:stack1 variant:variant];

  stack2 = [stacksCopy stack2];
  v18 = [self _widgetStackByFilteringDescriptorsInWidgetStack:stack2 variant:variant];

  sortedThirdPartyWidgets = [stacksCopy sortedThirdPartyWidgets];

  v20 = [self _descriptorsByFilteringDescriptors:sortedThirdPartyWidgets variant:variant fromAppsDisabledOnHomeScreen:v13 fromExcludedWidgetsWithIdentifiers:v14 personaIdentifier:0];

  v21 = [[ATXDefaultHomeScreenItemOnboardingStacks alloc] initWithOnboardingStack1:v16 stack2:v18 sortedThirdPartyWidgets:v20];

  return v21;
}

+ (id)_widgetStackByFilteringDescriptorsInWidgetStack:(id)stack variant:(unint64_t)variant
{
  stackCopy = stack;
  v6 = objc_opt_new();
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
  v13 = +[ATXDefaultHomeScreenItemManager _widgetIdentifiersNotAllowed];
  smallDefaultStack = [stackCopy smallDefaultStack];
  v15 = [ATXDefaultHomeScreenItemManager _descriptorsByFilteringDescriptors:smallDefaultStack variant:variant fromAppsDisabledOnHomeScreen:v12 fromExcludedWidgetsWithIdentifiers:v13 personaIdentifier:0];
  [v6 setSmallDefaultStack:v15];

  mediumDefaultStack = [stackCopy mediumDefaultStack];
  v17 = [ATXDefaultHomeScreenItemManager _descriptorsByFilteringDescriptors:mediumDefaultStack variant:variant fromAppsDisabledOnHomeScreen:v12 fromExcludedWidgetsWithIdentifiers:v13 personaIdentifier:0];
  [v6 setMediumDefaultStack:v17];

  largeDefaultStack = [stackCopy largeDefaultStack];
  v19 = [ATXDefaultHomeScreenItemManager _descriptorsByFilteringDescriptors:largeDefaultStack variant:variant fromAppsDisabledOnHomeScreen:v12 fromExcludedWidgetsWithIdentifiers:v13 personaIdentifier:0];
  [v6 setLargeDefaultStack:v19];

  extraLargeDefaultStack = [stackCopy extraLargeDefaultStack];
  v21 = [ATXDefaultHomeScreenItemManager _descriptorsByFilteringDescriptors:extraLargeDefaultStack variant:variant fromAppsDisabledOnHomeScreen:v12 fromExcludedWidgetsWithIdentifiers:v13 personaIdentifier:0];
  [v6 setExtraLargeDefaultStack:v21];

  suggestedSize = [stackCopy suggestedSize];
  [v6 setSuggestedSize:suggestedSize];

  return v6;
}

+ (BOOL)shouldFilterOutChronoWidgetDescriptorDueToDenyList:(id)list fromExcludedWidgetsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  listCopy = list;
  v8 = objc_opt_new();
  [v8 setAvocadoDescriptor:listCopy];
  extensionIdentity = [listCopy extensionIdentity];

  containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
  [v8 setAppBundleId:containerBundleIdentifier];

  LOBYTE(containerBundleIdentifier) = [self shouldFilterOutWidgetDescriptorDueToDenyList:v8 fromExcludedWidgetsWithIdentifiers:identifiersCopy];
  return containerBundleIdentifier;
}

+ (BOOL)shouldFilterOutWidgetDescriptorDueToDenyList:(id)list fromExcludedWidgetsWithIdentifiers:(id)identifiers
{
  v32 = *MEMORY[0x1E69E9840];
  listCopy = list;
  identifiersCopy = identifiers;
  appBundleId = [listCopy appBundleId];

  if (appBundleId)
  {
    appBundleId2 = [listCopy appBundleId];
    v9 = [identifiersCopy containsObject:appBundleId2];

    if (v9)
    {
      extensionBundleIdentifier = __atxlog_handle_home_screen();
      if (os_log_type_enabled(extensionBundleIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        appBundleId3 = [listCopy appBundleId];
        *buf = 136315650;
        v27 = "+[ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorDueToDenyList:fromExcludedWidgetsWithIdentifiers:]";
        v28 = 2112;
        v29 = listCopy;
        v30 = 2112;
        v31 = appBundleId3;
        _os_log_impl(&dword_1BF549000, extensionBundleIdentifier, OS_LOG_TYPE_DEFAULT, "%s: filtering out widget descriptor: %@. Reason: Widget's parent bundleId in deny list %@", buf, 0x20u);
      }

      LOBYTE(v12) = 1;
    }

    else
    {
      avocadoDescriptor = [listCopy avocadoDescriptor];
      extensionIdentity = [avocadoDescriptor extensionIdentity];
      extensionBundleIdentifier = [extensionIdentity extensionBundleIdentifier];

      avocadoDescriptor2 = [listCopy avocadoDescriptor];
      kind = [avocadoDescriptor2 kind];

      v17 = objc_alloc(MEMORY[0x1E696AEC0]);
      appBundleId4 = [listCopy appBundleId];
      v19 = [v17 initWithFormat:@"%@:%@", appBundleId4, extensionBundleIdentifier];

      if ([identifiersCopy containsObject:v19])
      {
        v20 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v27 = "+[ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorDueToDenyList:fromExcludedWidgetsWithIdentifiers:]";
          v28 = 2112;
          v29 = listCopy;
          v30 = 2112;
          v31 = v19;
          _os_log_impl(&dword_1BF549000, v20, OS_LOG_TYPE_DEFAULT, "%s: filtering out widget descriptor: %@. Reason: Widget's bundle identifier and extension identifier in deny list %@", buf, 0x20u);
        }

        LOBYTE(v12) = 1;
      }

      else
      {
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@", extensionBundleIdentifier, kind];
        if ([identifiersCopy containsObject:v20])
        {
          v21 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            v27 = "+[ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorDueToDenyList:fromExcludedWidgetsWithIdentifiers:]";
            v28 = 2112;
            v29 = listCopy;
            v30 = 2112;
            v31 = v20;
            _os_log_impl(&dword_1BF549000, v21, OS_LOG_TYPE_DEFAULT, "%s: filtering out widget descriptor: %@. Reason: Widget's extension identifier and kind identifier in deny list %@", buf, 0x20u);
          }

          LOBYTE(v12) = 1;
        }

        else
        {
          v22 = objc_alloc(MEMORY[0x1E696AEC0]);
          appBundleId5 = [listCopy appBundleId];
          v21 = [v22 initWithFormat:@"%@:%@", appBundleId5, v20];

          v12 = [identifiersCopy containsObject:v21];
          if (v12)
          {
            v24 = __atxlog_handle_home_screen();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v27 = "+[ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorDueToDenyList:fromExcludedWidgetsWithIdentifiers:]";
              v28 = 2112;
              v29 = listCopy;
              v30 = 2112;
              v31 = v21;
              _os_log_impl(&dword_1BF549000, v24, OS_LOG_TYPE_DEFAULT, "%s: filtering out widget descriptor: %@. Reason: Widget's full descriptor found in deny list %@", buf, 0x20u);
            }
          }
        }
      }
    }
  }

  else
  {
    extensionBundleIdentifier = __atxlog_handle_home_screen();
    if (os_log_type_enabled(extensionBundleIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "+[ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorDueToDenyList:fromExcludedWidgetsWithIdentifiers:]";
      v28 = 2112;
      v29 = listCopy;
      _os_log_impl(&dword_1BF549000, extensionBundleIdentifier, OS_LOG_TYPE_DEFAULT, "%s: No parent bundleId for Widget descriptor: %@", buf, 0x16u);
    }

    LOBYTE(v12) = 0;
  }

  return v12;
}

+ (id)_descriptorsByFilteringDescriptors:(id)descriptors variant:(unint64_t)variant fromAppsDisabledOnHomeScreen:(id)screen fromExcludedWidgetsWithIdentifiers:(id)identifiers personaIdentifier:(id)identifier
{
  screenCopy = screen;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __160__ATXDefaultHomeScreenItemManager__descriptorsByFilteringDescriptors_variant_fromAppsDisabledOnHomeScreen_fromExcludedWidgetsWithIdentifiers_personaIdentifier___block_invoke;
  v20[3] = &unk_1E80C5830;
  variantCopy = variant;
  selfCopy = self;
  v21 = identifiersCopy;
  v22 = screenCopy;
  v23 = identifierCopy;
  v15 = identifierCopy;
  v16 = screenCopy;
  v17 = identifiersCopy;
  v18 = [descriptors _pas_filteredArrayWithTest:v20];

  return v18;
}

uint64_t __160__ATXDefaultHomeScreenItemManager__descriptorsByFilteringDescriptors_variant_fromAppsDisabledOnHomeScreen_fromExcludedWidgetsWithIdentifiers_personaIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorDueToDenyList:v4 fromExcludedWidgetsWithIdentifiers:*(a1 + 32)])
  {
    goto LABEL_2;
  }

  v6 = *(a1 + 56);
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      if (([*(a1 + 64) shouldFilterOutWidgetDescriptorDueToAppProtection:v4 fromDisabledApps:*(a1 + 40)] & 1) == 0 && (objc_msgSend(*(a1 + 64), "isDescriptorSpecial:", v4) & 1) == 0)
      {
        v22 = [v4 avocadoDescriptor];
        [v22 disfavoredFamiliesForLocation:2];
        CHSWidgetFamilyFromATXStackLayoutSize([v4 suggestedSize]);
        v23 = CHSWidgetFamilyMaskContainsFamily();

        if ((v23 & 1) == 0)
        {
          v24 = [v4 avocadoDescriptor];
          LOBYTE(v2) = [v24 isLinkedOnOrAfter:0];

          goto LABEL_3;
        }
      }

      goto LABEL_2;
    }

    if (v6)
    {
      goto LABEL_3;
    }

    if ([*(a1 + 64) shouldFilterOutWidgetDescriptorDueToAppProtection:v4 fromDisabledApps:*(a1 + 40)])
    {
      goto LABEL_2;
    }

    v7 = [v4 avocadoDescriptor];
    [v7 disfavoredFamiliesForLocation:0];
    CHSWidgetFamilyFromATXStackLayoutSize([v4 suggestedSize]);
    v8 = CHSWidgetFamilyMaskContainsFamily();

    if (v8)
    {
      goto LABEL_2;
    }

    v10 = *(a1 + 48);
    v9 = (a1 + 48);
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = [v4 avocadoDescriptor];
    if (v11)
    {
      v12 = v11;
      v13 = [v4 avocadoDescriptor];
      v14 = [v13 extensionIdentity];
      v15 = [v14 deviceIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = *v9;
        v18 = [v4 avocadoDescriptor];
        v19 = [v18 extensionIdentity];
        v20 = [v19 deviceIdentifier];
        LOBYTE(v17) = [v17 isEqualToString:v20];

        if ((v17 & 1) == 0)
        {
          v21 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            __160__ATXDefaultHomeScreenItemManager__descriptorsByFilteringDescriptors_variant_fromAppsDisabledOnHomeScreen_fromExcludedWidgetsWithIdentifiers_personaIdentifier___block_invoke_cold_1(v9, v4, v21);
          }

          goto LABEL_2;
        }
      }

      else
      {
      }
    }

    if (!*v9)
    {
LABEL_27:
      v28 = [v4 avocadoDescriptor];
      v29 = [v28 extensionIdentity];
      v30 = [v29 isRemote];

      if (v30)
      {
        v31 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          __160__ATXDefaultHomeScreenItemManager__descriptorsByFilteringDescriptors_variant_fromAppsDisabledOnHomeScreen_fromExcludedWidgetsWithIdentifiers_personaIdentifier___block_invoke_cold_2(v31);
        }

        goto LABEL_2;
      }
    }

    LOBYTE(v2) = 1;
    goto LABEL_3;
  }

  if ([*(a1 + 64) shouldFilterOutWidgetDescriptorDueToAppProtection:v4 fromDisabledApps:*(a1 + 40)] & 1) != 0 || (objc_msgSend(*(a1 + 64), "isDescriptorSpecial:", v4) & 1) != 0 || (objc_msgSend(v4, "avocadoDescriptor"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "disfavoredFamiliesForLocation:", 6), CHSWidgetFamilyFromATXStackLayoutSize(objc_msgSend(v4, "suggestedSize")), v26 = CHSWidgetFamilyMaskContainsFamily(), v25, (v26))
  {
LABEL_2:
    LOBYTE(v2) = 0;
    goto LABEL_3;
  }

  v27 = [v4 avocadoDescriptor];
  v2 = [v27 isLinkedOnOrAfter:1];

  if (v2)
  {
    LOBYTE(v2) = [v4 suggestedSize] == 0;
  }

LABEL_3:

  return v2 & 1;
}

+ (BOOL)isCHSWidgetDescriptorAllowedForAmbientOnboardingStacks:(id)stacks
{
  stacksCopy = stacks;
  [stacksCopy disfavoredFamiliesForLocation:2];
  if (CHSWidgetFamilyMaskContainsFamily())
  {
    v4 = 0;
  }

  else
  {
    v4 = [stacksCopy isLinkedOnOrAfter:0];
  }

  return v4;
}

+ (id)_descriptorsByFilteringDescriptors:(id)descriptors disabledApps:(id)apps excludedWidgetsWithIdentifiers:(id)identifiers client:(unint64_t)client personaIdentifier:(id)identifier
{
  v48 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  appsCopy = apps;
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  v11 = [MEMORY[0x1E695DFA8] set];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = descriptorsCopy;
  v13 = [v12 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v43 + 1) + 8 * i);
        extensionIdentity = [v17 extensionIdentity];
        isRemote = [extensionIdentity isRemote];

        if ((isRemote & 1) == 0)
        {
          kind = [v17 kind];
          effectiveContainerBundleIdentifier = [v17 effectiveContainerBundleIdentifier];
          v22 = effectiveContainerBundleIdentifier;
          if (kind)
          {
            v23 = effectiveContainerBundleIdentifier == 0;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", effectiveContainerBundleIdentifier, kind];
            [v11 addObject:v24];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v14);
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __139__ATXDefaultHomeScreenItemManager__descriptorsByFilteringDescriptors_disabledApps_excludedWidgetsWithIdentifiers_client_personaIdentifier___block_invoke;
  v36[3] = &unk_1E80C5858;
  v37 = appsCopy;
  v38 = identifiersCopy;
  selfCopy = self;
  clientCopy = client;
  v39 = identifierCopy;
  v40 = v11;
  v25 = v11;
  v26 = identifierCopy;
  v27 = identifiersCopy;
  v28 = appsCopy;
  v29 = [v12 _pas_filteredSetWithTest:v36];

  return v29;
}

uint64_t __139__ATXDefaultHomeScreenItemManager__descriptorsByFilteringDescriptors_disabledApps_excludedWidgetsWithIdentifiers_client_personaIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = [v3 extensionIdentity];
  v6 = [v5 containerBundleIdentifier];
  LODWORD(v4) = [v4 shouldFilterOutWidgetDescriptorWithBundleIdDueToAppProtection:v6 fromDisabledApps:*(a1 + 32)];

  if (!v4)
  {
    if ([ATXDefaultHomeScreenItemManager shouldFilterOutChronoWidgetDescriptorDueToDenyList:v3 fromExcludedWidgetsWithIdentifiers:*(a1 + 40)])
    {
      v7 = __atxlog_handle_home_screen();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      v8 = [v3 extensionBundleIdentifier];
      *buf = 138412290;
      v31 = v8;
      v10 = "Filtered due to deny list: %@";
LABEL_7:
      _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
      goto LABEL_8;
    }

    v13 = *(a1 + 72);
    if (v13 != 3)
    {
      if (v13 != 2)
      {
        v7 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __139__ATXDefaultHomeScreenItemManager__descriptorsByFilteringDescriptors_disabledApps_excludedWidgetsWithIdentifiers_client_personaIdentifier___block_invoke_cold_3();
        }

        goto LABEL_9;
      }

      [v3 supportedFamilies];
      if (!CHSWidgetFamilyMaskContainsFamily())
      {
        v11 = 0;
        goto LABEL_11;
      }

      [v3 disfavoredFamiliesForLocation:6];
      if (CHSWidgetFamilyMaskContainsFamily())
      {
        v7 = __atxlog_handle_carPlay_widgets();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }

        v8 = [v3 extensionBundleIdentifier];
        *buf = 138412290;
        v31 = v8;
        v10 = "Disfavored for CarPlay: %@";
      }

      else
      {
        v25 = [v3 kind];
        if (v25 && (v26 = v25, v27 = *(a1 + 64), [v3 kind], v28 = objc_claimAutoreleasedReturnValue(), LODWORD(v27) = objc_msgSend(v27, "isDescriptorWithWidgetKindSpecial:", v28), v28, v26, v27))
        {
          v7 = __atxlog_handle_carPlay_widgets();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_9;
          }

          v8 = [v3 kind];
          *buf = 138412290;
          v31 = v8;
          v10 = "Special kind not allowed in CarPlay: %@";
        }

        else
        {
          v11 = 1;
          if ([v3 isLinkedOnOrAfter:1])
          {
            goto LABEL_11;
          }

          v7 = __atxlog_handle_carPlay_widgets();
          if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_9;
          }

          v8 = [v3 extensionBundleIdentifier];
          *buf = 138412290;
          v31 = v8;
          v10 = "Linked before Crystal: %@";
        }
      }

      goto LABEL_7;
    }

    v14 = [v3 extensionIdentity];
    v7 = [v14 deviceIdentifier];

    v15 = *(a1 + 48);
    if (v15 && v7)
    {
      if (([v15 isEqualToString:v7] & 1) == 0)
      {
        v20 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(a1 + 48);
          *buf = 136315906;
          v31 = "+[ATXDefaultHomeScreenItemManager _descriptorsByFilteringDescriptors:disabledApps:excludedWidgetsWithIdentifiers:client:personaIdentifier:]_block_invoke";
          v32 = 2112;
          v33 = v29;
          v34 = 2112;
          v35 = v7;
          v36 = 2112;
          v37 = v3;
          _os_log_debug_impl(&dword_1BF549000, v20, OS_LOG_TYPE_DEBUG, "%s: Client provided identifier %@ NOT equal to widget device identifier %@. Skipping descriptor: %@", buf, 0x2Au);
        }

        goto LABEL_42;
      }

      v15 = *(a1 + 48);
    }

    if (!v15)
    {
      v16 = [v3 extensionIdentity];
      v17 = [v16 isRemote];

      if (v17)
      {
        v8 = __atxlog_handle_home_screen();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __139__ATXDefaultHomeScreenItemManager__descriptorsByFilteringDescriptors_disabledApps_excludedWidgetsWithIdentifiers_client_personaIdentifier___block_invoke_cold_2();
        }

        goto LABEL_8;
      }
    }

    v18 = [v3 extensionIdentity];
    v19 = [v18 isRemote];

    if (v19)
    {
      v20 = [v3 kind];
      v21 = [v3 effectiveContainerBundleIdentifier];
      v22 = v21;
      if (v20 && v21)
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v21, v20];
        if ([*(a1 + 56) containsObject:v23])
        {
          v24 = __atxlog_handle_home_screen();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            __139__ATXDefaultHomeScreenItemManager__descriptorsByFilteringDescriptors_disabledApps_excludedWidgetsWithIdentifiers_client_personaIdentifier___block_invoke_cold_1();
          }

LABEL_42:
          goto LABEL_9;
        }
      }
    }

    v11 = 1;
    goto LABEL_10;
  }

  v7 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 extensionIdentity];
    v9 = [v8 containerBundleIdentifier];
    *buf = 138412290;
    v31 = v9;
    _os_log_impl(&dword_1BF549000, v7, OS_LOG_TYPE_DEFAULT, "Filtered due to app protection: %@", buf, 0xCu);

LABEL_8:
  }

LABEL_9:
  v11 = 0;
LABEL_10:

LABEL_11:
  return v11;
}

+ (BOOL)isDescriptorSpecial:(id)special
{
  widgetKind = [special widgetKind];
  LOBYTE(self) = [self isDescriptorWithWidgetKindSpecial:widgetKind];

  return self;
}

+ (BOOL)isDescriptorWithWidgetKindSpecial:(id)special
{
  specialCopy = special;
  v4 = ATXSpecialWidgetKindFiles();
  v5 = [specialCopy isEqualToString:v4];

  if (v5 & 1) != 0 || (ATXSpecialWidgetKindShortcutsSingle(), v6 = objc_claimAutoreleasedReturnValue(), v7 = [specialCopy isEqualToString:v6], v6, (v7) || (ATXSpecialWidgetKindShortcutsFolder(), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(specialCopy, "isEqualToString:", v8), v8, (v9) || (ATXSpecialWidgetKindAppPredictions(), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(specialCopy, "isEqualToString:", v10), v10, (v11))
  {
    v12 = 1;
  }

  else
  {
    v14 = ATXSpecialWidgetKindSiriSuggestions();
    v12 = [specialCopy isEqualToString:v14];
  }

  return v12;
}

+ (BOOL)shouldFilterOutWidgetDescriptorDueToAppProtection:(id)protection fromDisabledApps:(id)apps
{
  v17 = *MEMORY[0x1E69E9840];
  protectionCopy = protection;
  appsCopy = apps;
  appBundleId = [protectionCopy appBundleId];

  if (appBundleId)
  {
    appBundleId2 = [protectionCopy appBundleId];
    v10 = [self shouldFilterOutWidgetDescriptorWithBundleIdDueToAppProtection:appBundleId2 fromDisabledApps:appsCopy];
  }

  else
  {
    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "+[ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorDueToAppProtection:fromDisabledApps:]";
      v15 = 2112;
      v16 = protectionCopy;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "%s: No parent bundleId for Widget descriptor: %@", &v13, 0x16u);
    }

    v10 = 0;
  }

  return v10;
}

+ (BOOL)shouldFilterOutWidgetDescriptorWithBundleIdDueToAppProtection:(id)protection fromDisabledApps:(id)apps
{
  v20 = *MEMORY[0x1E69E9840];
  protectionCopy = protection;
  appsCopy = apps;
  v7 = appsCopy;
  v8 = protectionCopy != 0;
  if (protectionCopy)
  {
    if ([appsCopy containsObject:protectionCopy])
    {
      v9 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315394;
        v17 = "+[ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorWithBundleIdDueToAppProtection:fromDisabledApps:]";
        v18 = 2112;
        v19 = protectionCopy;
        v10 = "%s: filtering out widget descriptor. Reason: Show on Homescreen is disabled for widget with bundleId %@";
LABEL_10:
        v11 = v9;
        v12 = 22;
        goto LABEL_11;
      }
    }

    else
    {
      v13 = objc_opt_new();
      v14 = [v13 bundleIdIsLockedOrHiddenByUserPreference:protectionCopy];

      if (!v14)
      {
        v8 = 0;
        goto LABEL_13;
      }

      v9 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315394;
        v17 = "+[ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorWithBundleIdDueToAppProtection:fromDisabledApps:]";
        v18 = 2112;
        v19 = protectionCopy;
        v10 = "%s: filtering out widget descriptor. Reason: The parent bundleId %@ is locked or hidden by user preference";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315138;
      v17 = "+[ATXDefaultHomeScreenItemManager shouldFilterOutWidgetDescriptorWithBundleIdDueToAppProtection:fromDisabledApps:]";
      v10 = "%s: No bundleId provided for Widget descriptor";
      v11 = v9;
      v12 = 12;
LABEL_11:
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
    }
  }

LABEL_13:
  return v8;
}

void __73__ATXDefaultHomeScreenItemManager__writeUpdate_atPath_completionHandler___block_invoke_cold_2()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void __93__ATXDefaultHomeScreenItemManager__fetchSmartStackOfVariant_localObserver_completionHandler___block_invoke_76_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 136315650;
  OUTLINED_FUNCTION_5_8();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1BF549000, v1, OS_LOG_TYPE_ERROR, "%s: Error fetching smart stack of variant %lu: %@", v2, 0x20u);
}

- (void)_generateOnboardingStacksForVariant:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 stack2];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_generateOnboardingStacksForVariant:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 stack1];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __79__ATXDefaultHomeScreenItemManager__readUpdateFromFileAtPath_completionHandler___block_invoke_cold_3()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void __160__ATXDefaultHomeScreenItemManager__descriptorsByFilteringDescriptors_variant_fromAppsDisabledOnHomeScreen_fromExcludedWidgetsWithIdentifiers_personaIdentifier___block_invoke_cold_1(uint64_t *a1, void *a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = [a2 avocadoDescriptor];
  v7 = [v6 extensionIdentity];
  v8 = [v7 deviceIdentifier];
  v9 = 136315906;
  v10 = "+[ATXDefaultHomeScreenItemManager _descriptorsByFilteringDescriptors:variant:fromAppsDisabledOnHomeScreen:fromExcludedWidgetsWithIdentifiers:personaIdentifier:]_block_invoke";
  v11 = 2112;
  v12 = v5;
  v13 = 2112;
  v14 = v8;
  v15 = 2112;
  v16 = a2;
  _os_log_debug_impl(&dword_1BF549000, a3, OS_LOG_TYPE_DEBUG, "%s: PersonaIdentifier %@ doesn't match widget device identifier %@. Not returning widget descriptor: %@", &v9, 0x2Au);
}

void __160__ATXDefaultHomeScreenItemManager__descriptorsByFilteringDescriptors_variant_fromAppsDisabledOnHomeScreen_fromExcludedWidgetsWithIdentifiers_personaIdentifier___block_invoke_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "+[ATXDefaultHomeScreenItemManager _descriptorsByFilteringDescriptors:variant:fromAppsDisabledOnHomeScreen:fromExcludedWidgetsWithIdentifiers:personaIdentifier:]_block_invoke";
  _os_log_debug_impl(&dword_1BF549000, log, OS_LOG_TYPE_DEBUG, "%s: PersonaIdentifier is nil. Not returning Remote widgets", &v1, 0xCu);
}

void __139__ATXDefaultHomeScreenItemManager__descriptorsByFilteringDescriptors_disabledApps_excludedWidgetsWithIdentifiers_client_personaIdentifier___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_3();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&dword_1BF549000, v2, OS_LOG_TYPE_DEBUG, "%s: Skipping remote widget because local version exists for %@:%@", v3, 0x20u);
}

void __139__ATXDefaultHomeScreenItemManager__descriptorsByFilteringDescriptors_disabledApps_excludedWidgetsWithIdentifiers_client_personaIdentifier___block_invoke_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_1BF549000, v0, OS_LOG_TYPE_DEBUG, "%s: personaIdentifier is nil. Skipping remote widget: %@", v1, 0x16u);
}

@end