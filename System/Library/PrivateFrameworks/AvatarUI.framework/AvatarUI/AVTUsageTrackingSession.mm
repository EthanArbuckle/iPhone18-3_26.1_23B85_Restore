@interface AVTUsageTrackingSession
+ (id)allowListAppNameFromBundleID:(id)d;
+ (id)colorPresetDescriptionForAvatarConfiguration:(id)configuration;
+ (id)configurationDistanceClassifierWithMetric:(id)metric;
+ (id)defaultRecordTransformerForCoreModel:(id)model;
+ (id)keyBasePrefixForBundleIdentifier:(id)identifier;
+ (id)makeDPKey:(id)key;
+ (id)payloadForAvatarRecord:(id)record;
+ (id)payloadForAvatarRecordIdentifier:(id)identifier;
+ (void)getPresetDescription:(id *)description usedCategoriesDescription:(id *)categoriesDescription forAvatarConfiguration:(id)configuration defaultConfiguration:(id)defaultConfiguration;
- (AVTUsageTrackingSession)initWithCoreAnalyticsClient:(id)client dpRecorder:(id)recorder serialQueueProvider:(id)provider recordTransformer:(id)transformer avatarRecord:(id)record defaultConfiguration:(id)configuration timeProvider:(id)timeProvider configurationMetric:(id)self0 logger:(id)self1 keyBasePrefix:(id)self2 bundleAppName:(id)self3;
- (AVTUsageTrackingSession)initWithSerialQueueProvider:(id)provider recordTransformer:(id)transformer logger:(id)logger;
- (id)makeCrossAppEventKeyForAction:(id)action;
- (id)makeEventKeyForAction:(id)action;
- (id)payloadForCrossAppEvent;
- (void)beginWithStore:(id)store;
- (void)didChangeCurrentAvatarInCarousel:(id)carousel;
- (void)didChangeCurrentAvatarInStickers:(id)stickers;
- (void)didCreateAvatar:(id)avatar;
- (void)didDeleteAvatar:(id)avatar;
- (void)didDiscardVideoWithDuration:(double)duration;
- (void)didDuplicateAvatar:(id)avatar;
- (void)didEditAvatar:(id)avatar;
- (void)didEnterEditor;
- (void)didLeaveEditor;
- (void)didPauseFaceTracking;
- (void)didRecordVideo;
- (void)didResumeFaceTracking;
- (void)didSelectStickerFromStickersApp:(id)app withAvatar:(id)avatar;
- (void)didSelectStickerFromStickersApp:(id)app withAvatar:(id)avatar bundleIdentifier:(id)identifier;
- (void)didSendImageWithAvatar:(id)avatar;
- (void)didSendStickerWithAvatar:(id)avatar;
- (void)didSendVideoWithAvatar:(id)avatar duration:(double)duration;
- (void)didShowExpandedMode;
- (void)didStartFaceTrackingInCarouselWithAvatar:(id)avatar;
- (void)didStopFaceTrackingInCarousel;
- (void)didTapStickerFromRecents:(id)recents withAvatarIdentifier:(id)identifier;
- (void)end;
- (void)nts_loadDefaultConfigurationIfNeeded;
- (void)nts_reportAvatarComplexity:(id)complexity withClient:(id)client;
- (void)nts_reportAvatarCountWithClient:(id)client;
- (void)nts_reportAvatarDescription:(id)description dpRecorder:(id)recorder;
- (void)nts_reportAvatarLikenessClustersWithClient:(id)client;
- (void)nts_reportEditorTimeWithExitTime:(id)time client:(id)client;
- (void)nts_reportExpandedModeWithClient:(id)client;
- (void)nts_reportFaceTrackingTimeWithEndTime:(id)time client:(id)client;
- (void)performClientWork:(id)work;
- (void)sendCrossAppsEventForAction:(id)action;
- (void)sendEventForAction:(id)action;
- (void)sentStickerFromStickersApp:(id)app withAvatarRecord:(id)record action:(id)action appName:(id)name;
@end

@implementation AVTUsageTrackingSession

+ (id)defaultRecordTransformerForCoreModel:(id)model
{
  modelCopy = model;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AVTUsageTrackingSession_defaultRecordTransformerForCoreModel___block_invoke;
  v7[3] = &unk_1E7F3C410;
  v8 = modelCopy;
  v4 = modelCopy;
  v5 = MEMORY[0x1BFB0DE80](v7);

  return v5;
}

+ (id)payloadForAvatarRecord:(id)record
{
  v10[1] = *MEMORY[0x1E69E9840];
  recordCopy = record;
  if ([recordCopy isEditable])
  {
    v9 = @"recordType";
    v10[0] = @"memoji";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v7[0] = @"recordType";
    v7[1] = @"animojiName";
    v8[0] = @"animoji";
    identifier = [recordCopy identifier];
    v8[1] = identifier;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  }

  return v4;
}

+ (id)payloadForAvatarRecordIdentifier:(id)identifier
{
  v15[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  animojiNames = [MEMORY[0x1E698E278] animojiNames];
  v5 = [animojiNames containsObject:identifierCopy];

  if (v5)
  {
    v12[0] = @"recordType";
    v12[1] = @"animojiName";
    v13[0] = @"animoji";
    v13[1] = identifierCopy;
    v6 = MEMORY[0x1E695DF20];
    v7 = v13;
    v8 = v12;
    v9 = 2;
  }

  else
  {
    v14 = @"recordType";
    v15[0] = @"memoji";
    v6 = MEMORY[0x1E695DF20];
    v7 = v15;
    v8 = &v14;
    v9 = 1;
  }

  v10 = [v6 dictionaryWithObjects:v7 forKeys:v8 count:v9];

  return v10;
}

+ (void)getPresetDescription:(id *)description usedCategoriesDescription:(id *)categoriesDescription forAvatarConfiguration:(id)configuration defaultConfiguration:(id)defaultConfiguration
{
  configurationCopy = configuration;
  defaultConfigurationCopy = defaultConfiguration;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  presetConfigurationPresets = [configurationCopy presetConfigurationPresets];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __118__AVTUsageTrackingSession_getPresetDescription_usedCategoriesDescription_forAvatarConfiguration_defaultConfiguration___block_invoke;
  v18 = &unk_1E7F3C458;
  v13 = defaultConfigurationCopy;
  v22 = &v23;
  v19 = v13;
  v20 = &unk_1F39A5D48;
  v14 = dictionary;
  v21 = v14;
  [presetConfigurationPresets enumerateObjectsUsingBlock:&v15];

  *description = [v14 copy];
  *categoriesDescription = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24[3]];

  _Block_object_dispose(&v23, 8);
}

void __118__AVTUsageTrackingSession_getPresetDescription_usedCategoriesDescription_forAvatarConfiguration_defaultConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v22 = a2;
  v3 = *(a1 + 32);
  [v22 settingKind];
  v5 = [v3 presetForCategory:v4];
  v6 = [v5 identifier];

  v7 = [v22 preset];
  v8 = [v7 identifier];
  if (!(v8 | v6))
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = [v22 preset];
  v11 = [v10 identifier];
  if ([v11 isEqual:v6])
  {

LABEL_4:
LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v20 = [v22 isDefaultPreset];

  if (v20)
  {
    goto LABEL_5;
  }

  [v22 settingKind];
  v12 = 1;
  *(*(*(a1 + 56) + 8) + 24) |= 1 << v21;
LABEL_6:
  v13 = *(a1 + 40);
  v14 = MEMORY[0x1E696AD98];
  [v22 settingKind];
  v16 = [v14 numberWithInteger:v15];
  LODWORD(v13) = [v13 containsObject:v16];

  if (v13)
  {
    [v22 settingKind];
    v17 = AVTPresetCategoryToString();
    if (v12)
    {
      v18 = [v22 preset];
      v19 = [v18 identifier];
    }

    else
    {
      v19 = @"none";
    }

    [*(a1 + 48) setObject:v19 forKeyedSubscript:v17];
  }
}

+ (id)colorPresetDescriptionForAvatarConfiguration:(id)configuration
{
  v3 = MEMORY[0x1E695DF90];
  configurationCopy = configuration;
  dictionary = [v3 dictionary];
  colorConfigurationPresets = [configurationCopy colorConfigurationPresets];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__AVTUsageTrackingSession_colorPresetDescriptionForAvatarConfiguration___block_invoke;
  v10[3] = &unk_1E7F3C480;
  v11 = dictionary;
  v7 = dictionary;
  [colorConfigurationPresets enumerateObjectsUsingBlock:v10];

  v8 = [v7 copy];

  return v8;
}

void __72__AVTUsageTrackingSession_colorPresetDescriptionForAvatarConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 preset];
  v4 = [v3 color];
  v5 = [v4 identifier];
  if ([v5 isEqual:@"none"])
  {
  }

  else
  {
    v6 = [v18 isDefaultPreset];

    if (v6)
    {
      goto LABEL_11;
    }

    v7 = [v18 settingKind];
    v8 = @"c";
    if (v7 == 3)
    {
      v8 = @"ct";
    }

    if (v7 == 2)
    {
      v9 = @"cs";
    }

    else
    {
      v9 = v8;
    }

    [v18 settingKind];
    v11 = v10;
    v12 = [v18 preset];
    v13 = [v12 color];
    v14 = [v13 identifier];
    v3 = [(__CFString *)v9 stringByAppendingFormat:@"%ld_%@", v11, v14];

    v15 = MEMORY[0x1E696AD98];
    v16 = [v18 preset];
    v17 = [v16 colorPreset];
    [v17 variation];
    v4 = [v15 numberWithFloat:?];

    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

LABEL_11:
}

+ (id)keyBasePrefixForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.Jellyfish.Animoji"])
  {
    v4 = @"com.apple.Animoji.Analytics.AnimojiApp.";
  }

  else if ([identifierCopy isEqualToString:@"com.apple.Animoji.StickersApp.MessagesExtension"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.Stickers.UserGenerated.MessagesExtension") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"com.apple.iMessageAppsViewService"))
  {
    v4 = @"com.apple.Animoji.Analytics.StickersApp.";
  }

  else if ([identifierCopy isEqualToString:@"com.apple.camera.CameraMessagesApp"])
  {
    v4 = @"com.apple.Animoji.Analytics.FunCamApp.";
  }

  else
  {
    v4 = @"com.apple.Animoji.Analytics.AnyApp.";
  }

  return v4;
}

+ (id)allowListAppNameFromBundleID:(id)d
{
  dCopy = d;
  if (allowListAppNameFromBundleID__onceToken != -1)
  {
    +[AVTUsageTrackingSession allowListAppNameFromBundleID:];
  }

  v4 = [allowListAppNameFromBundleID__bundleIDMapping objectForKeyedSubscript:dCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [allowListAppNameFromBundleID__bundleIDMapping objectForKeyedSubscript:@"*"];
  }

  v7 = v6;

  return v7;
}

void __56__AVTUsageTrackingSession_allowListAppNameFromBundleID___block_invoke()
{
  v0 = allowListAppNameFromBundleID__bundleIDMapping;
  allowListAppNameFromBundleID__bundleIDMapping = &unk_1F39A5DB8;
}

+ (id)makeDPKey:(id)key
{
  keyCopy = key;
  dpKeyBasePrefix = [self dpKeyBasePrefix];
  v6 = [dpKeyBasePrefix stringByAppendingString:keyCopy];

  return v6;
}

+ (id)configurationDistanceClassifierWithMetric:(id)metric
{
  metricCopy = metric;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__AVTUsageTrackingSession_configurationDistanceClassifierWithMetric___block_invoke;
  v7[3] = &unk_1E7F3C4A8;
  v8 = metricCopy;
  v4 = metricCopy;
  v5 = MEMORY[0x1BFB0DE80](v7);

  return v5;
}

uint64_t __69__AVTUsageTrackingSession_configurationDistanceClassifierWithMetric___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) distanceFromConfiguration:a2 toConfiguration:a3];
  v5 = MEMORY[0x1E696AD98];
  v6 = [*(a1 + 32) gapFromDistance:v4];

  return [v5 numberWithInteger:v6];
}

- (AVTUsageTrackingSession)initWithSerialQueueProvider:(id)provider recordTransformer:(id)transformer logger:(id)logger
{
  loggerCopy = logger;
  transformerCopy = transformer;
  providerCopy = provider;
  v11 = objc_alloc_init(AVTCoreAnalyticsClient);
  v21 = objc_alloc_init(AVTDifferentialPrivacyRecorder);
  defaultAvatarRecord = [MEMORY[0x1E698E320] defaultAvatarRecord];
  v18 = +[AVTAvatarConfigurationMetric defaultMetric];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v14 = [objc_opt_class() keyBasePrefixForBundleIdentifier:bundleIdentifier];
  v15 = [objc_opt_class() allowListAppNameFromBundleID:bundleIdentifier];
  defaultTimeProvider = [objc_opt_class() defaultTimeProvider];
  v19 = [(AVTUsageTrackingSession *)self initWithCoreAnalyticsClient:v11 dpRecorder:v21 serialQueueProvider:providerCopy recordTransformer:transformerCopy avatarRecord:defaultAvatarRecord defaultConfiguration:0 timeProvider:defaultTimeProvider configurationMetric:v18 logger:loggerCopy keyBasePrefix:v14 bundleAppName:v15];

  return v19;
}

- (AVTUsageTrackingSession)initWithCoreAnalyticsClient:(id)client dpRecorder:(id)recorder serialQueueProvider:(id)provider recordTransformer:(id)transformer avatarRecord:(id)record defaultConfiguration:(id)configuration timeProvider:(id)timeProvider configurationMetric:(id)self0 logger:(id)self1 keyBasePrefix:(id)self2 bundleAppName:(id)self3
{
  clientCopy = client;
  recorderCopy = recorder;
  recorderCopy2 = recorder;
  providerCopy = provider;
  transformerCopy = transformer;
  configurationCopy = configuration;
  recordCopy = record;
  configurationCopy2 = configuration;
  timeProviderCopy = timeProvider;
  metricCopy = metric;
  loggerCopy = logger;
  prefixCopy = prefix;
  nameCopy = name;
  v41.receiver = self;
  v41.super_class = AVTUsageTrackingSession;
  v25 = [(AVTUsageTrackingSession *)&v41 init];
  if (v25)
  {
    v26 = providerCopy[2](providerCopy, "com.apple.AvatarUI.AVTUsageTrackingSession.workQueue");
    workQueue = v25->_workQueue;
    v25->_workQueue = v26;

    objc_storeStrong(&v25->_ntsCAClient, client);
    objc_storeStrong(&v25->_ntsDPRecorder, recorderCopy);
    v28 = [transformerCopy copy];
    recordTransformer = v25->_recordTransformer;
    v25->_recordTransformer = v28;

    v30 = [timeProviderCopy copy];
    timeProvider = v25->_timeProvider;
    v25->_timeProvider = v30;

    objc_storeStrong(&v25->_defaultConfiguration, configurationCopy);
    objc_storeStrong(&v25->_avatarRecord, record);
    objc_storeStrong(&v25->_metric, metric);
    objc_storeStrong(&v25->_logger, logger);
    objc_storeStrong(&v25->_keyBasePrefix, prefix);
    objc_storeStrong(&v25->_bundleAppName, name);
  }

  return v25;
}

- (void)performClientWork:(id)work
{
  workCopy = work;
  workQueue = [(AVTUsageTrackingSession *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__AVTUsageTrackingSession_performClientWork___block_invoke;
  v7[3] = &unk_1E7F3A8A8;
  v7[4] = self;
  v8 = workCopy;
  v6 = workCopy;
  dispatch_async(workQueue, v7);
}

void __45__AVTUsageTrackingSession_performClientWork___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) ntsCAClient];
  v3 = [*(a1 + 32) ntsDPRecorder];
  (*(v2 + 16))(v2, v4, v3);
}

- (id)makeEventKeyForAction:(id)action
{
  actionCopy = action;
  keyBasePrefix = [(AVTUsageTrackingSession *)self keyBasePrefix];
  v6 = [keyBasePrefix stringByAppendingString:actionCopy];

  v7 = [objc_opt_class() makeKeyAnalyticsCompliant:v6];

  return v7;
}

- (id)makeCrossAppEventKeyForAction:(id)action
{
  v3 = [@"com.apple.Animoji.Analytics.AnyApp." stringByAppendingString:action];
  v4 = [objc_opt_class() makeKeyAnalyticsCompliant:v3];

  return v4;
}

- (void)sendEventForAction:(id)action
{
  v4 = [(AVTUsageTrackingSession *)self makeEventKeyForAction:action];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AVTUsageTrackingSession_sendEventForAction___block_invoke;
  v6[3] = &unk_1E7F3C4F0;
  v7 = v4;
  v5 = v4;
  [(AVTUsageTrackingSession *)self performClientWork:v6];
}

- (id)payloadForCrossAppEvent
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"appName";
  bundleAppName = [(AVTUsageTrackingSession *)self bundleAppName];
  v6[0] = bundleAppName;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (void)sendCrossAppsEventForAction:(id)action
{
  v4 = [(AVTUsageTrackingSession *)self makeCrossAppEventKeyForAction:action];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__AVTUsageTrackingSession_sendCrossAppsEventForAction___block_invoke;
  v6[3] = &unk_1E7F3C518;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(AVTUsageTrackingSession *)self performClientWork:v6];
}

void __55__AVTUsageTrackingSession_sendCrossAppsEventForAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 payloadForCrossAppEvent];
  [v4 sendEventForKey:v2 payload:v5];
}

- (void)didSendVideoWithAvatar:(id)avatar duration:(double)duration
{
  avatarCopy = avatar;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__AVTUsageTrackingSession_didSendVideoWithAvatar_duration___block_invoke;
  v8[3] = &unk_1E7F3C540;
  v8[4] = self;
  v9 = avatarCopy;
  durationCopy = duration;
  v7 = avatarCopy;
  [(AVTUsageTrackingSession *)self performClientWork:v8];
  [(AVTUsageTrackingSession *)self didResumeFaceTracking];
}

void __59__AVTUsageTrackingSession_didSendVideoWithAvatar_duration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setRecordedVideo:0];
  v7 = [*(a1 + 32) makeEventKeyForAction:@"VideoSent"];
  v8 = [objc_opt_class() payloadForAvatarRecord:*(a1 + 40)];
  v9 = [v8 mutableCopy];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  [v9 setObject:v10 forKeyedSubscript:@"duration"];

  [v6 sendEventForKey:v7 payload:v9];
  if ([*(a1 + 40) isEditable])
  {
    [*(a1 + 32) nts_reportAvatarDescription:*(a1 + 40) dpRecorder:v11];
  }
}

- (void)didDiscardVideoWithDuration:(double)duration
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__AVTUsageTrackingSession_didDiscardVideoWithDuration___block_invoke;
  v4[3] = &unk_1E7F3C568;
  v4[4] = self;
  *&v4[5] = duration;
  [(AVTUsageTrackingSession *)self performClientWork:v4];
  [(AVTUsageTrackingSession *)self didResumeFaceTracking];
}

void __55__AVTUsageTrackingSession_didDiscardVideoWithDuration___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setRecordedVideo:0];
  v5 = [*(a1 + 32) makeEventKeyForAction:@"VideoDiscarded"];
  v8 = @"duration";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v4 sendEventForKey:v5 payload:v7];
}

- (void)didSendImageWithAvatar:(id)avatar
{
  avatarCopy = avatar;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AVTUsageTrackingSession_didSendImageWithAvatar___block_invoke;
  v6[3] = &unk_1E7F3C518;
  v6[4] = self;
  v7 = avatarCopy;
  v5 = avatarCopy;
  [(AVTUsageTrackingSession *)self performClientWork:v6];
}

void __50__AVTUsageTrackingSession_didSendImageWithAvatar___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 makeEventKeyForAction:@"StickerSent"];
  v8 = [objc_opt_class() payloadForAvatarRecord:*(a1 + 40)];
  v9 = [v8 mutableCopy];

  [v9 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"peeled"];
  [v6 sendEventForKey:v7 payload:v9];

  if ([*(a1 + 40) isEditable])
  {
    [*(a1 + 32) nts_reportAvatarDescription:*(a1 + 40) dpRecorder:v10];
  }
}

- (void)didSendStickerWithAvatar:(id)avatar
{
  avatarCopy = avatar;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__AVTUsageTrackingSession_didSendStickerWithAvatar___block_invoke;
  v6[3] = &unk_1E7F3C518;
  v6[4] = self;
  v7 = avatarCopy;
  v5 = avatarCopy;
  [(AVTUsageTrackingSession *)self performClientWork:v6];
}

void __52__AVTUsageTrackingSession_didSendStickerWithAvatar___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 makeEventKeyForAction:@"StickerSent"];
  v8 = [objc_opt_class() payloadForAvatarRecord:*(a1 + 40)];
  v9 = [v8 mutableCopy];

  [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"peeled"];
  [v6 sendEventForKey:v7 payload:v9];

  if ([*(a1 + 40) isEditable])
  {
    [*(a1 + 32) nts_reportAvatarDescription:*(a1 + 40) dpRecorder:v10];
  }
}

- (void)didDeleteAvatar:(id)avatar
{
  if ([avatar isEditable])
  {
    [(AVTUsageTrackingSession *)self sendCrossAppsEventForAction:@"MemojiDeleted"];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __43__AVTUsageTrackingSession_didDeleteAvatar___block_invoke;
    v4[3] = &unk_1E7F3C4F0;
    v4[4] = self;
    [(AVTUsageTrackingSession *)self performClientWork:v4];
  }
}

- (void)didCreateAvatar:(id)avatar
{
  avatarCopy = avatar;
  if ([avatarCopy isEditable])
  {
    [(AVTUsageTrackingSession *)self sendCrossAppsEventForAction:@"MemojiCreated"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", avatarCopy}];
    }

    v5 = avatarCopy;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__AVTUsageTrackingSession_didCreateAvatar___block_invoke;
    v6[3] = &unk_1E7F3C518;
    v6[4] = self;
    v7 = v5;
    [(AVTUsageTrackingSession *)self performClientWork:v6];
  }
}

void __43__AVTUsageTrackingSession_didCreateAvatar___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  [v5 nts_reportAvatarDescription:v6 dpRecorder:a3];
  [*(a1 + 32) nts_reportAvatarComplexity:*(a1 + 40) withClient:v7];
  [*(a1 + 32) nts_reportAvatarLikenessClustersWithClient:v7];
}

- (void)didEditAvatar:(id)avatar
{
  avatarCopy = avatar;
  if ([avatarCopy isEditable])
  {
    [(AVTUsageTrackingSession *)self sendCrossAppsEventForAction:@"MemojiEdited"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", avatarCopy}];
    }

    v5 = avatarCopy;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__AVTUsageTrackingSession_didEditAvatar___block_invoke;
    v6[3] = &unk_1E7F3C518;
    v6[4] = self;
    v7 = v5;
    [(AVTUsageTrackingSession *)self performClientWork:v6];
  }
}

void __41__AVTUsageTrackingSession_didEditAvatar___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  [v5 nts_reportAvatarDescription:v6 dpRecorder:a3];
  [*(a1 + 32) nts_reportAvatarComplexity:*(a1 + 40) withClient:v7];
  [*(a1 + 32) nts_reportAvatarLikenessClustersWithClient:v7];
}

- (void)didDuplicateAvatar:(id)avatar
{
  if ([avatar isEditable])
  {

    [(AVTUsageTrackingSession *)self sendCrossAppsEventForAction:@"MemojiDuplicated"];
  }
}

- (void)didShowExpandedMode
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__AVTUsageTrackingSession_didShowExpandedMode__block_invoke;
  v2[3] = &unk_1E7F3C4F0;
  v2[4] = self;
  [(AVTUsageTrackingSession *)self performClientWork:v2];
}

- (void)didRecordVideo
{
  [(AVTUsageTrackingSession *)self didPauseFaceTracking];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__AVTUsageTrackingSession_didRecordVideo__block_invoke;
  v3[3] = &unk_1E7F3C4F0;
  v3[4] = self;
  [(AVTUsageTrackingSession *)self performClientWork:v3];
}

- (void)didEnterEditor
{
  timeProvider = [(AVTUsageTrackingSession *)self timeProvider];
  v4 = timeProvider[2]();

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__AVTUsageTrackingSession_didEnterEditor__block_invoke;
  v6[3] = &unk_1E7F3C518;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AVTUsageTrackingSession *)self performClientWork:v6];
}

- (void)didLeaveEditor
{
  timeProvider = [(AVTUsageTrackingSession *)self timeProvider];
  v4 = timeProvider[2]();

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__AVTUsageTrackingSession_didLeaveEditor__block_invoke;
  v6[3] = &unk_1E7F3C518;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AVTUsageTrackingSession *)self performClientWork:v6];
}

void __41__AVTUsageTrackingSession_didLeaveEditor__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) editorEnterDate];

  if (v3)
  {
    [*(a1 + 32) nts_reportEditorTimeWithExitTime:*(a1 + 40) client:v4];
  }
}

- (void)didStartFaceTrackingInCarouselWithAvatar:(id)avatar
{
  avatarCopy = avatar;
  v5 = [AVTUsageTrackingRecordTimedEvent alloc];
  timeProvider = [(AVTUsageTrackingSession *)self timeProvider];
  v7 = timeProvider[2]();
  v8 = [(AVTUsageTrackingRecordTimedEvent *)v5 initWithStartTime:v7 record:avatarCopy];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AVTUsageTrackingSession_didStartFaceTrackingInCarouselWithAvatar___block_invoke;
  v10[3] = &unk_1E7F3C518;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(AVTUsageTrackingSession *)self performClientWork:v10];
}

- (void)didChangeCurrentAvatarInCarousel:(id)carousel
{
  carouselCopy = carousel;
  timeProvider = [(AVTUsageTrackingSession *)self timeProvider];
  v6 = timeProvider[2]();

  v7 = [[AVTUsageTrackingRecordTimedEvent alloc] initWithStartTime:v6 record:carouselCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__AVTUsageTrackingSession_didChangeCurrentAvatarInCarousel___block_invoke;
  v10[3] = &unk_1E7F3C590;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(AVTUsageTrackingSession *)self performClientWork:v10];
}

void __60__AVTUsageTrackingSession_didChangeCurrentAvatarInCarousel___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) faceTrackingEvent];

  if (v3)
  {
    [*(a1 + 32) nts_reportFaceTrackingTimeWithEndTime:*(a1 + 40) client:v6];
    [*(a1 + 32) setFaceTrackingEvent:*(a1 + 48)];
    if ([*(a1 + 32) recordedVideo])
    {
      v4 = [*(a1 + 32) faceTrackingEvent];
      [v4 pauseAtTime:*(a1 + 40)];
    }
  }

  if ([*(a1 + 32) recordedVideo])
  {
    v5 = [*(a1 + 32) makeEventKeyForAction:@"SwitchVideoAvatar"];
    [v6 sendEventForKey:v5 payload:0];
  }
}

- (void)didStopFaceTrackingInCarousel
{
  timeProvider = [(AVTUsageTrackingSession *)self timeProvider];
  v4 = timeProvider[2]();

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__AVTUsageTrackingSession_didStopFaceTrackingInCarousel__block_invoke;
  v6[3] = &unk_1E7F3C518;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AVTUsageTrackingSession *)self performClientWork:v6];
}

void __56__AVTUsageTrackingSession_didStopFaceTrackingInCarousel__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) faceTrackingEvent];

  if (v3)
  {
    [*(a1 + 32) nts_reportFaceTrackingTimeWithEndTime:*(a1 + 40) client:v4];
  }
}

- (void)didPauseFaceTracking
{
  timeProvider = [(AVTUsageTrackingSession *)self timeProvider];
  v4 = timeProvider[2]();

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__AVTUsageTrackingSession_didPauseFaceTracking__block_invoke;
  v6[3] = &unk_1E7F3C518;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AVTUsageTrackingSession *)self performClientWork:v6];
}

void __47__AVTUsageTrackingSession_didPauseFaceTracking__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) faceTrackingEvent];

  if (v2)
  {
    v3 = [*(a1 + 32) faceTrackingEvent];
    [v3 pauseAtTime:*(a1 + 40)];
  }
}

- (void)didResumeFaceTracking
{
  timeProvider = [(AVTUsageTrackingSession *)self timeProvider];
  v4 = timeProvider[2]();

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__AVTUsageTrackingSession_didResumeFaceTracking__block_invoke;
  v6[3] = &unk_1E7F3C518;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AVTUsageTrackingSession *)self performClientWork:v6];
}

void __48__AVTUsageTrackingSession_didResumeFaceTracking__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) faceTrackingEvent];

  if (v2)
  {
    v3 = [*(a1 + 32) faceTrackingEvent];
    [v3 resumeAtTime:*(a1 + 40)];
  }
}

- (void)didSelectStickerFromStickersApp:(id)app withAvatar:(id)avatar
{
  v6 = MEMORY[0x1E696AAE8];
  avatarCopy = avatar;
  appCopy = app;
  mainBundle = [v6 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  [(AVTUsageTrackingSession *)self didSelectStickerFromStickersApp:appCopy withAvatar:avatarCopy bundleIdentifier:bundleIdentifier];
}

- (void)didSelectStickerFromStickersApp:(id)app withAvatar:(id)avatar bundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  avatarCopy = avatar;
  appCopy = app;
  v11 = [objc_opt_class() allowListAppNameFromBundleID:identifierCopy];

  [(AVTUsageTrackingSession *)self sentStickerFromStickersApp:appCopy withAvatarRecord:avatarCopy action:@"StickerSent" appName:v11];
}

- (void)didChangeCurrentAvatarInStickers:(id)stickers
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__AVTUsageTrackingSession_didChangeCurrentAvatarInStickers___block_invoke;
  v3[3] = &unk_1E7F3C4F0;
  v3[4] = self;
  [(AVTUsageTrackingSession *)self performClientWork:v3];
}

void __60__AVTUsageTrackingSession_didChangeCurrentAvatarInStickers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 makeEventKeyForAction:@"SwitchStickersAvatar"];
  [v3 sendEventForKey:v4 payload:0];
}

- (void)didTapStickerFromRecents:(id)recents withAvatarIdentifier:(id)identifier
{
  recentsCopy = recents;
  identifierCopy = identifier;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__AVTUsageTrackingSession_didTapStickerFromRecents_withAvatarIdentifier___block_invoke;
  v10[3] = &unk_1E7F3C590;
  v10[4] = self;
  v11 = identifierCopy;
  v12 = recentsCopy;
  v8 = recentsCopy;
  v9 = identifierCopy;
  [(AVTUsageTrackingSession *)self performClientWork:v10];
}

void __73__AVTUsageTrackingSession_didTapStickerFromRecents_withAvatarIdentifier___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v7 = [v3 makeEventKeyForAction:@"StickerRecentSent"];
  v5 = [objc_opt_class() payloadForAvatarRecordIdentifier:a1[5]];
  v6 = [v5 mutableCopy];

  [v6 setObject:a1[6] forKeyedSubscript:@"sticker"];
  [v4 sendEventForKey:v7 payload:v6];
}

- (void)sentStickerFromStickersApp:(id)app withAvatarRecord:(id)record action:(id)action appName:(id)name
{
  appCopy = app;
  recordCopy = record;
  actionCopy = action;
  nameCopy = name;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__AVTUsageTrackingSession_sentStickerFromStickersApp_withAvatarRecord_action_appName___block_invoke;
  v18[3] = &unk_1E7F3C5B8;
  v18[4] = self;
  v19 = actionCopy;
  v20 = recordCopy;
  v21 = appCopy;
  v22 = nameCopy;
  v14 = nameCopy;
  v15 = appCopy;
  v16 = recordCopy;
  v17 = actionCopy;
  [(AVTUsageTrackingSession *)self performClientWork:v18];
}

void __86__AVTUsageTrackingSession_sentStickerFromStickersApp_withAvatarRecord_action_appName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [v5 makeEventKeyForAction:v6];
  v9 = [objc_opt_class() payloadForAvatarRecord:*(a1 + 48)];
  v10 = [v9 mutableCopy];

  [v10 setObject:*(a1 + 56) forKeyedSubscript:@"sticker"];
  [v10 setObject:*(a1 + 64) forKeyedSubscript:@"appName"];
  [v7 sendEventForKey:v8 payload:v10];

  if ([*(a1 + 48) isEditable])
  {
    [*(a1 + 32) nts_reportAvatarDescription:*(a1 + 48) dpRecorder:v11];
  }
}

- (void)beginWithStore:(id)store
{
  storeCopy = store;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AVTUsageTrackingSession_beginWithStore___block_invoke;
  v6[3] = &unk_1E7F3C518;
  v7 = storeCopy;
  selfCopy = self;
  v5 = storeCopy;
  [(AVTUsageTrackingSession *)self performClientWork:v6];
}

uint64_t __42__AVTUsageTrackingSession_beginWithStore___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) conformsToProtocol:&unk_1F39DD3B0] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object protocol for %@", *(a1 + 32)}];
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 setAvatarStore:v3];
}

- (void)end
{
  timeProvider = [(AVTUsageTrackingSession *)self timeProvider];
  v4 = timeProvider[2]();

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __30__AVTUsageTrackingSession_end__block_invoke;
  v6[3] = &unk_1E7F3C518;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AVTUsageTrackingSession *)self performClientWork:v6];
}

void __30__AVTUsageTrackingSession_end__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) avatarStore];

  if (!v3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Session not started with a store"];
  }

  [*(a1 + 32) setRecordedVideo:0];
  [*(a1 + 32) nts_reportAvatarCountWithClient:v6];
  [*(a1 + 32) nts_reportExpandedModeWithClient:v6];
  v4 = [*(a1 + 32) editorEnterDate];

  if (v4)
  {
    [*(a1 + 32) nts_reportEditorTimeWithExitTime:*(a1 + 40) client:v6];
  }

  v5 = [*(a1 + 32) faceTrackingEvent];

  if (v5)
  {
    [*(a1 + 32) nts_reportFaceTrackingTimeWithEndTime:*(a1 + 40) client:v6];
  }
}

- (void)nts_loadDefaultConfigurationIfNeeded
{
  avatarRecord = [(AVTUsageTrackingSession *)self defaultConfiguration];
  if (!avatarRecord)
  {
    avatarRecord = [(AVTUsageTrackingSession *)self avatarRecord];

    if (!avatarRecord)
    {
      return;
    }

    recordTransformer = [(AVTUsageTrackingSession *)self recordTransformer];
    avatarRecord2 = [(AVTUsageTrackingSession *)self avatarRecord];
    v7 = (recordTransformer)[2](recordTransformer, avatarRecord2);
    defaultConfiguration = self->_defaultConfiguration;
    self->_defaultConfiguration = v7;

    avatarRecord = self->_avatarRecord;
    self->_avatarRecord = 0;
  }
}

- (void)nts_reportEditorTimeWithExitTime:(id)time client:(id)client
{
  clientCopy = client;
  timeCopy = time;
  editorEnterDate = [(AVTUsageTrackingSession *)self editorEnterDate];
  [timeCopy timeIntervalSinceDate:editorEnterDate];
  v10 = v9;

  [(AVTUsageTrackingSession *)self setEditorEnterDate:0];
  v14 = [(AVTUsageTrackingSession *)self makeCrossAppEventKeyForAction:@"EditorTime"];
  payloadForCrossAppEvent = [(AVTUsageTrackingSession *)self payloadForCrossAppEvent];
  v12 = [payloadForCrossAppEvent mutableCopy];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  [v12 setObject:v13 forKeyedSubscript:@"time"];

  [clientCopy sendEventForKey:v14 payload:v12];
}

- (void)nts_reportFaceTrackingTimeWithEndTime:(id)time client:(id)client
{
  clientCopy = client;
  timeCopy = time;
  faceTrackingEvent = [(AVTUsageTrackingSession *)self faceTrackingEvent];
  [faceTrackingEvent totalElapsedTimeAtTime:timeCopy];
  v9 = v8;

  faceTrackingEvent2 = [(AVTUsageTrackingSession *)self faceTrackingEvent];
  record = [faceTrackingEvent2 record];

  [(AVTUsageTrackingSession *)self setFaceTrackingEvent:0];
  v12 = [(AVTUsageTrackingSession *)self makeEventKeyForAction:@"FaceTrackingTime"];
  v13 = [objc_opt_class() payloadForAvatarRecord:record];
  v14 = [v13 mutableCopy];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [v14 setObject:v15 forKeyedSubscript:@"time"];

  [clientCopy sendEventForKey:v12 payload:v14];
  if (v9 > 30.0)
  {
    v16 = [(AVTUsageTrackingSession *)self makeEventKeyForAction:@"FaceTrackingMoreThan30s"];
    v17 = [objc_opt_class() payloadForAvatarRecord:record];
    [clientCopy sendEventForKey:v16 payload:v17];
  }
}

- (void)nts_reportAvatarCountWithClient:(id)client
{
  clientCopy = client;
  avatarStore = [(AVTUsageTrackingSession *)self avatarStore];
  requestForCustomAvatars = [MEMORY[0x1E698E310] requestForCustomAvatars];
  v6 = [avatarStore avatarsForFetchRequest:requestForCustomAvatars error:0];

  if (v6)
  {
    v7 = [v6 count];
    logger = [(AVTUsageTrackingSession *)self logger];
    [logger logUsageTrackingRecordCount:v7];

    v9 = [(AVTUsageTrackingSession *)self makeCrossAppEventKeyForAction:@"MemojiCount"];
    payloadForCrossAppEvent = [(AVTUsageTrackingSession *)self payloadForCrossAppEvent];
    v11 = [payloadForCrossAppEvent mutableCopy];

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [v11 setObject:v12 forKeyedSubscript:@"memojiCount"];

    [clientCopy sendEventForKey:v9 payload:v11];
  }
}

- (void)nts_reportAvatarDescription:(id)description dpRecorder:(id)recorder
{
  descriptionCopy = description;
  recorderCopy = recorder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", descriptionCopy}];
  }

  v8 = descriptionCopy;
  recordTransformer = [(AVTUsageTrackingSession *)self recordTransformer];
  v10 = (recordTransformer)[2](recordTransformer, v8);

  [(AVTUsageTrackingSession *)self nts_loadDefaultConfigurationIfNeeded];
  v11 = objc_opt_class();
  v21 = 0;
  v22 = 0;
  defaultConfiguration = [(AVTUsageTrackingSession *)self defaultConfiguration];
  [v11 getPresetDescription:&v22 usedCategoriesDescription:&v21 forAvatarConfiguration:v10 defaultConfiguration:defaultConfiguration];
  v13 = v22;
  v14 = v21;
  v15 = v13;

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__AVTUsageTrackingSession_nts_reportAvatarDescription_dpRecorder___block_invoke;
  v19[3] = &unk_1E7F3C5E0;
  v19[4] = self;
  v20 = recorderCopy;
  v16 = recorderCopy;
  [v15 enumerateKeysAndObjectsUsingBlock:v19];
  stringValue = [v14 stringValue];
  v18 = [objc_opt_class() makeDPKey:@"MemojiCategoryUsed"];
  [v16 recordString:stringValue forKey:v18];
}

void __66__AVTUsageTrackingSession_nts_reportAvatarDescription_dpRecorder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_class();
  v8 = [@"MemojiAssetUsed." stringByAppendingString:v6];

  v9 = [v7 makeDPKey:v8];

  [*(a1 + 40) recordString:v5 forKey:v9];
}

- (void)nts_reportAvatarLikenessClustersWithClient:(id)client
{
  v46 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  selfCopy = self;
  avatarStore = [(AVTUsageTrackingSession *)self avatarStore];
  requestForCustomAvatars = [MEMORY[0x1E698E310] requestForCustomAvatars];
  v8 = [avatarStore avatarsForFetchRequest:requestForCustomAvatars error:0];

  if ([v8 count])
  {
    v37 = clientCopy;
    array = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v36 = v8;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v42;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v42 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v41 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v14}];
          }

          v16 = v14;
          recordTransformer = [(AVTUsageTrackingSession *)selfCopy recordTransformer];
          v18 = (recordTransformer)[2](recordTransformer, v16);

          [array addObject:v18];
          objc_autoreleasePoolPop(v15);
        }

        v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v11);
    }

    v19 = selfCopy;
    v20 = objc_opt_class();
    metric = [(AVTUsageTrackingSession *)selfCopy metric];
    v22 = [v20 configurationDistanceClassifierWithMetric:metric];

    likenessComparator = [objc_opt_class() likenessComparator];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __70__AVTUsageTrackingSession_nts_reportAvatarLikenessClustersWithClient___block_invoke;
    v39[3] = &unk_1E7F3C608;
    v40 = obj;
    v24 = MEMORY[0x1BFB0DE80](v39);
    v25 = [AVTArrayPairClassification clustersForObjectsInArray:array withClassifier:v22 likenessThreshold:&unk_1F39A5B78 likenessComparator:likenessComparator];
    v26 = [AVTArrayPairClassification clustersForObjectsInArray:array withClassifier:v22 likenessThreshold:&unk_1F39A5B90 likenessComparator:likenessComparator];
    logger = [(AVTUsageTrackingSession *)v19 logger];
    [logger logUsageTrackingSmallDifferencesClusterCount:{objc_msgSend(v25, "count")}];

    logger2 = [(AVTUsageTrackingSession *)v19 logger];
    [logger2 logUsageTrackingBigDifferencesClusterCount:{objc_msgSend(v26, "count")}];

    v29 = (v24)[2](v24, v25);
    v30 = (v24)[2](v24, v26);
    v31 = [(AVTUsageTrackingSession *)v19 makeCrossAppEventKeyForAction:@"MemojiDifferences"];
    payloadForCrossAppEvent = [(AVTUsageTrackingSession *)v19 payloadForCrossAppEvent];
    v33 = [payloadForCrossAppEvent mutableCopy];

    v34 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
    [v33 setObject:v34 forKeyedSubscript:@"smallDifferenceRatio"];

    v35 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
    [v33 setObject:v35 forKeyedSubscript:@"bigDifferenceRatio"];

    clientCopy = v37;
    [v37 sendEventForKey:v31 payload:v33];

    v8 = v36;
  }
}

double __70__AVTUsageTrackingSession_nts_reportAvatarLikenessClustersWithClient___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 count])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Can't have 0 cluster if we have records"];
  }

  v4 = [v3 count] + -1.0;
  v5 = 1.0 - v4 / [*(a1 + 32) count];

  return v5;
}

- (void)nts_reportAvatarComplexity:(id)complexity withClient:(id)client
{
  clientCopy = client;
  complexityCopy = complexity;
  [(AVTUsageTrackingSession *)self nts_loadDefaultConfigurationIfNeeded];
  recordTransformer = [(AVTUsageTrackingSession *)self recordTransformer];
  v18 = (recordTransformer)[2](recordTransformer, complexityCopy);

  metric = [(AVTUsageTrackingSession *)self metric];
  defaultConfiguration = [(AVTUsageTrackingSession *)self defaultConfiguration];
  v11 = [metric distanceFromConfiguration:defaultConfiguration toConfiguration:v18];

  metric2 = [(AVTUsageTrackingSession *)self metric];
  v13 = [metric2 differenceCountFromDistance:v11];

  v14 = [(AVTUsageTrackingSession *)self makeCrossAppEventKeyForAction:@"MemojiComplexity"];
  payloadForCrossAppEvent = [(AVTUsageTrackingSession *)self payloadForCrossAppEvent];
  v16 = [payloadForCrossAppEvent mutableCopy];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
  [v16 setObject:v17 forKeyedSubscript:@"complexity"];

  [clientCopy sendEventForKey:v14 payload:v16];
}

- (void)nts_reportExpandedModeWithClient:(id)client
{
  v9[1] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  v5 = [(AVTUsageTrackingSession *)self makeEventKeyForAction:@"SessionEnded"];
  v8 = @"expandedUsed";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AVTUsageTrackingSession expandedMode](self, "expandedMode")}];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [clientCopy sendEventForKey:v5 payload:v7];
}

@end