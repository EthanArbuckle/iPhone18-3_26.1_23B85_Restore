@interface AVTUsageTrackingSession
+ (id)allowListAppNameFromBundleID:(id)a3;
+ (id)colorPresetDescriptionForAvatarConfiguration:(id)a3;
+ (id)configurationDistanceClassifierWithMetric:(id)a3;
+ (id)defaultRecordTransformerForCoreModel:(id)a3;
+ (id)keyBasePrefixForBundleIdentifier:(id)a3;
+ (id)makeDPKey:(id)a3;
+ (id)payloadForAvatarRecord:(id)a3;
+ (id)payloadForAvatarRecordIdentifier:(id)a3;
+ (void)getPresetDescription:(id *)a3 usedCategoriesDescription:(id *)a4 forAvatarConfiguration:(id)a5 defaultConfiguration:(id)a6;
- (AVTUsageTrackingSession)initWithCoreAnalyticsClient:(id)a3 dpRecorder:(id)a4 serialQueueProvider:(id)a5 recordTransformer:(id)a6 avatarRecord:(id)a7 defaultConfiguration:(id)a8 timeProvider:(id)a9 configurationMetric:(id)a10 logger:(id)a11 keyBasePrefix:(id)a12 bundleAppName:(id)a13;
- (AVTUsageTrackingSession)initWithSerialQueueProvider:(id)a3 recordTransformer:(id)a4 logger:(id)a5;
- (id)makeCrossAppEventKeyForAction:(id)a3;
- (id)makeEventKeyForAction:(id)a3;
- (id)payloadForCrossAppEvent;
- (void)beginWithStore:(id)a3;
- (void)didChangeCurrentAvatarInCarousel:(id)a3;
- (void)didChangeCurrentAvatarInStickers:(id)a3;
- (void)didCreateAvatar:(id)a3;
- (void)didDeleteAvatar:(id)a3;
- (void)didDiscardVideoWithDuration:(double)a3;
- (void)didDuplicateAvatar:(id)a3;
- (void)didEditAvatar:(id)a3;
- (void)didEnterEditor;
- (void)didLeaveEditor;
- (void)didPauseFaceTracking;
- (void)didRecordVideo;
- (void)didResumeFaceTracking;
- (void)didSelectStickerFromStickersApp:(id)a3 withAvatar:(id)a4;
- (void)didSelectStickerFromStickersApp:(id)a3 withAvatar:(id)a4 bundleIdentifier:(id)a5;
- (void)didSendImageWithAvatar:(id)a3;
- (void)didSendStickerWithAvatar:(id)a3;
- (void)didSendVideoWithAvatar:(id)a3 duration:(double)a4;
- (void)didShowExpandedMode;
- (void)didStartFaceTrackingInCarouselWithAvatar:(id)a3;
- (void)didStopFaceTrackingInCarousel;
- (void)didTapStickerFromRecents:(id)a3 withAvatarIdentifier:(id)a4;
- (void)end;
- (void)nts_loadDefaultConfigurationIfNeeded;
- (void)nts_reportAvatarComplexity:(id)a3 withClient:(id)a4;
- (void)nts_reportAvatarCountWithClient:(id)a3;
- (void)nts_reportAvatarDescription:(id)a3 dpRecorder:(id)a4;
- (void)nts_reportAvatarLikenessClustersWithClient:(id)a3;
- (void)nts_reportEditorTimeWithExitTime:(id)a3 client:(id)a4;
- (void)nts_reportExpandedModeWithClient:(id)a3;
- (void)nts_reportFaceTrackingTimeWithEndTime:(id)a3 client:(id)a4;
- (void)performClientWork:(id)a3;
- (void)sendCrossAppsEventForAction:(id)a3;
- (void)sendEventForAction:(id)a3;
- (void)sentStickerFromStickersApp:(id)a3 withAvatarRecord:(id)a4 action:(id)a5 appName:(id)a6;
@end

@implementation AVTUsageTrackingSession

+ (id)defaultRecordTransformerForCoreModel:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__AVTUsageTrackingSession_defaultRecordTransformerForCoreModel___block_invoke;
  v7[3] = &unk_1E7F3C410;
  v8 = v3;
  v4 = v3;
  v5 = MEMORY[0x1BFB0DE80](v7);

  return v5;
}

+ (id)payloadForAvatarRecord:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 isEditable])
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
    v5 = [v3 identifier];
    v8[1] = v5;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  }

  return v4;
}

+ (id)payloadForAvatarRecordIdentifier:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E698E278] animojiNames];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v12[0] = @"recordType";
    v12[1] = @"animojiName";
    v13[0] = @"animoji";
    v13[1] = v3;
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

+ (void)getPresetDescription:(id *)a3 usedCategoriesDescription:(id *)a4 forAvatarConfiguration:(id)a5 defaultConfiguration:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v12 = [v9 presetConfigurationPresets];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __118__AVTUsageTrackingSession_getPresetDescription_usedCategoriesDescription_forAvatarConfiguration_defaultConfiguration___block_invoke;
  v18 = &unk_1E7F3C458;
  v13 = v10;
  v22 = &v23;
  v19 = v13;
  v20 = &unk_1F39A5D48;
  v14 = v11;
  v21 = v14;
  [v12 enumerateObjectsUsingBlock:&v15];

  *a3 = [v14 copy];
  *a4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v24[3]];

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

+ (id)colorPresetDescriptionForAvatarConfiguration:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 colorConfigurationPresets];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__AVTUsageTrackingSession_colorPresetDescriptionForAvatarConfiguration___block_invoke;
  v10[3] = &unk_1E7F3C480;
  v11 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v10];

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

+ (id)keyBasePrefixForBundleIdentifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"com.apple.Jellyfish.Animoji"])
  {
    v4 = @"com.apple.Animoji.Analytics.AnimojiApp.";
  }

  else if ([v3 isEqualToString:@"com.apple.Animoji.StickersApp.MessagesExtension"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.Stickers.UserGenerated.MessagesExtension") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.iMessageAppsViewService"))
  {
    v4 = @"com.apple.Animoji.Analytics.StickersApp.";
  }

  else if ([v3 isEqualToString:@"com.apple.camera.CameraMessagesApp"])
  {
    v4 = @"com.apple.Animoji.Analytics.FunCamApp.";
  }

  else
  {
    v4 = @"com.apple.Animoji.Analytics.AnyApp.";
  }

  return v4;
}

+ (id)allowListAppNameFromBundleID:(id)a3
{
  v3 = a3;
  if (allowListAppNameFromBundleID__onceToken != -1)
  {
    +[AVTUsageTrackingSession allowListAppNameFromBundleID:];
  }

  v4 = [allowListAppNameFromBundleID__bundleIDMapping objectForKeyedSubscript:v3];
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

+ (id)makeDPKey:(id)a3
{
  v4 = a3;
  v5 = [a1 dpKeyBasePrefix];
  v6 = [v5 stringByAppendingString:v4];

  return v6;
}

+ (id)configurationDistanceClassifierWithMetric:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__AVTUsageTrackingSession_configurationDistanceClassifierWithMetric___block_invoke;
  v7[3] = &unk_1E7F3C4A8;
  v8 = v3;
  v4 = v3;
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

- (AVTUsageTrackingSession)initWithSerialQueueProvider:(id)a3 recordTransformer:(id)a4 logger:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(AVTCoreAnalyticsClient);
  v21 = objc_alloc_init(AVTDifferentialPrivacyRecorder);
  v20 = [MEMORY[0x1E698E320] defaultAvatarRecord];
  v18 = +[AVTAvatarConfigurationMetric defaultMetric];
  v12 = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [v12 bundleIdentifier];

  v14 = [objc_opt_class() keyBasePrefixForBundleIdentifier:v13];
  v15 = [objc_opt_class() allowListAppNameFromBundleID:v13];
  v16 = [objc_opt_class() defaultTimeProvider];
  v19 = [(AVTUsageTrackingSession *)self initWithCoreAnalyticsClient:v11 dpRecorder:v21 serialQueueProvider:v10 recordTransformer:v9 avatarRecord:v20 defaultConfiguration:0 timeProvider:v16 configurationMetric:v18 logger:v8 keyBasePrefix:v14 bundleAppName:v15];

  return v19;
}

- (AVTUsageTrackingSession)initWithCoreAnalyticsClient:(id)a3 dpRecorder:(id)a4 serialQueueProvider:(id)a5 recordTransformer:(id)a6 avatarRecord:(id)a7 defaultConfiguration:(id)a8 timeProvider:(id)a9 configurationMetric:(id)a10 logger:(id)a11 keyBasePrefix:(id)a12 bundleAppName:(id)a13
{
  v39 = a3;
  v34 = a4;
  v38 = a4;
  v18 = a5;
  v40 = a6;
  v19 = a8;
  v37 = a7;
  v36 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v41.receiver = self;
  v41.super_class = AVTUsageTrackingSession;
  v25 = [(AVTUsageTrackingSession *)&v41 init];
  if (v25)
  {
    v26 = v18[2](v18, "com.apple.AvatarUI.AVTUsageTrackingSession.workQueue");
    workQueue = v25->_workQueue;
    v25->_workQueue = v26;

    objc_storeStrong(&v25->_ntsCAClient, a3);
    objc_storeStrong(&v25->_ntsDPRecorder, v34);
    v28 = [v40 copy];
    recordTransformer = v25->_recordTransformer;
    v25->_recordTransformer = v28;

    v30 = [v20 copy];
    timeProvider = v25->_timeProvider;
    v25->_timeProvider = v30;

    objc_storeStrong(&v25->_defaultConfiguration, v19);
    objc_storeStrong(&v25->_avatarRecord, a7);
    objc_storeStrong(&v25->_metric, a10);
    objc_storeStrong(&v25->_logger, a11);
    objc_storeStrong(&v25->_keyBasePrefix, a12);
    objc_storeStrong(&v25->_bundleAppName, a13);
  }

  return v25;
}

- (void)performClientWork:(id)a3
{
  v4 = a3;
  v5 = [(AVTUsageTrackingSession *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__AVTUsageTrackingSession_performClientWork___block_invoke;
  v7[3] = &unk_1E7F3A8A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __45__AVTUsageTrackingSession_performClientWork___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) ntsCAClient];
  v3 = [*(a1 + 32) ntsDPRecorder];
  (*(v2 + 16))(v2, v4, v3);
}

- (id)makeEventKeyForAction:(id)a3
{
  v4 = a3;
  v5 = [(AVTUsageTrackingSession *)self keyBasePrefix];
  v6 = [v5 stringByAppendingString:v4];

  v7 = [objc_opt_class() makeKeyAnalyticsCompliant:v6];

  return v7;
}

- (id)makeCrossAppEventKeyForAction:(id)a3
{
  v3 = [@"com.apple.Animoji.Analytics.AnyApp." stringByAppendingString:a3];
  v4 = [objc_opt_class() makeKeyAnalyticsCompliant:v3];

  return v4;
}

- (void)sendEventForAction:(id)a3
{
  v4 = [(AVTUsageTrackingSession *)self makeEventKeyForAction:a3];
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
  v2 = [(AVTUsageTrackingSession *)self bundleAppName];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (void)sendCrossAppsEventForAction:(id)a3
{
  v4 = [(AVTUsageTrackingSession *)self makeCrossAppEventKeyForAction:a3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__AVTUsageTrackingSession_sendCrossAppsEventForAction___block_invoke;
  v6[3] = &unk_1E7F3C518;
  v7 = v4;
  v8 = self;
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

- (void)didSendVideoWithAvatar:(id)a3 duration:(double)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__AVTUsageTrackingSession_didSendVideoWithAvatar_duration___block_invoke;
  v8[3] = &unk_1E7F3C540;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
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

- (void)didDiscardVideoWithDuration:(double)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__AVTUsageTrackingSession_didDiscardVideoWithDuration___block_invoke;
  v4[3] = &unk_1E7F3C568;
  v4[4] = self;
  *&v4[5] = a3;
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

- (void)didSendImageWithAvatar:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AVTUsageTrackingSession_didSendImageWithAvatar___block_invoke;
  v6[3] = &unk_1E7F3C518;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)didSendStickerWithAvatar:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__AVTUsageTrackingSession_didSendStickerWithAvatar___block_invoke;
  v6[3] = &unk_1E7F3C518;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)didDeleteAvatar:(id)a3
{
  if ([a3 isEditable])
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

- (void)didCreateAvatar:(id)a3
{
  v4 = a3;
  if ([v4 isEditable])
  {
    [(AVTUsageTrackingSession *)self sendCrossAppsEventForAction:@"MemojiCreated"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v4}];
    }

    v5 = v4;
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

- (void)didEditAvatar:(id)a3
{
  v4 = a3;
  if ([v4 isEditable])
  {
    [(AVTUsageTrackingSession *)self sendCrossAppsEventForAction:@"MemojiEdited"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v4}];
    }

    v5 = v4;
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

- (void)didDuplicateAvatar:(id)a3
{
  if ([a3 isEditable])
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
  v3 = [(AVTUsageTrackingSession *)self timeProvider];
  v4 = v3[2]();

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
  v3 = [(AVTUsageTrackingSession *)self timeProvider];
  v4 = v3[2]();

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

- (void)didStartFaceTrackingInCarouselWithAvatar:(id)a3
{
  v4 = a3;
  v5 = [AVTUsageTrackingRecordTimedEvent alloc];
  v6 = [(AVTUsageTrackingSession *)self timeProvider];
  v7 = v6[2]();
  v8 = [(AVTUsageTrackingRecordTimedEvent *)v5 initWithStartTime:v7 record:v4];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AVTUsageTrackingSession_didStartFaceTrackingInCarouselWithAvatar___block_invoke;
  v10[3] = &unk_1E7F3C518;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(AVTUsageTrackingSession *)self performClientWork:v10];
}

- (void)didChangeCurrentAvatarInCarousel:(id)a3
{
  v4 = a3;
  v5 = [(AVTUsageTrackingSession *)self timeProvider];
  v6 = v5[2]();

  v7 = [[AVTUsageTrackingRecordTimedEvent alloc] initWithStartTime:v6 record:v4];
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
  v3 = [(AVTUsageTrackingSession *)self timeProvider];
  v4 = v3[2]();

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
  v3 = [(AVTUsageTrackingSession *)self timeProvider];
  v4 = v3[2]();

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
  v3 = [(AVTUsageTrackingSession *)self timeProvider];
  v4 = v3[2]();

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

- (void)didSelectStickerFromStickersApp:(id)a3 withAvatar:(id)a4
{
  v6 = MEMORY[0x1E696AAE8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 mainBundle];
  v10 = [v9 bundleIdentifier];

  [(AVTUsageTrackingSession *)self didSelectStickerFromStickersApp:v8 withAvatar:v7 bundleIdentifier:v10];
}

- (void)didSelectStickerFromStickersApp:(id)a3 withAvatar:(id)a4 bundleIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() allowListAppNameFromBundleID:v8];

  [(AVTUsageTrackingSession *)self sentStickerFromStickersApp:v10 withAvatarRecord:v9 action:@"StickerSent" appName:v11];
}

- (void)didChangeCurrentAvatarInStickers:(id)a3
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

- (void)didTapStickerFromRecents:(id)a3 withAvatarIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__AVTUsageTrackingSession_didTapStickerFromRecents_withAvatarIdentifier___block_invoke;
  v10[3] = &unk_1E7F3C590;
  v10[4] = self;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
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

- (void)sentStickerFromStickersApp:(id)a3 withAvatarRecord:(id)a4 action:(id)a5 appName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __86__AVTUsageTrackingSession_sentStickerFromStickersApp_withAvatarRecord_action_appName___block_invoke;
  v18[3] = &unk_1E7F3C5B8;
  v18[4] = self;
  v19 = v12;
  v20 = v11;
  v21 = v10;
  v22 = v13;
  v14 = v13;
  v15 = v10;
  v16 = v11;
  v17 = v12;
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

- (void)beginWithStore:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__AVTUsageTrackingSession_beginWithStore___block_invoke;
  v6[3] = &unk_1E7F3C518;
  v7 = v4;
  v8 = self;
  v5 = v4;
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
  v3 = [(AVTUsageTrackingSession *)self timeProvider];
  v4 = v3[2]();

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
    v4 = [(AVTUsageTrackingSession *)self avatarRecord];

    if (!v4)
    {
      return;
    }

    v5 = [(AVTUsageTrackingSession *)self recordTransformer];
    v6 = [(AVTUsageTrackingSession *)self avatarRecord];
    v7 = (v5)[2](v5, v6);
    defaultConfiguration = self->_defaultConfiguration;
    self->_defaultConfiguration = v7;

    avatarRecord = self->_avatarRecord;
    self->_avatarRecord = 0;
  }
}

- (void)nts_reportEditorTimeWithExitTime:(id)a3 client:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AVTUsageTrackingSession *)self editorEnterDate];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  [(AVTUsageTrackingSession *)self setEditorEnterDate:0];
  v14 = [(AVTUsageTrackingSession *)self makeCrossAppEventKeyForAction:@"EditorTime"];
  v11 = [(AVTUsageTrackingSession *)self payloadForCrossAppEvent];
  v12 = [v11 mutableCopy];

  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  [v12 setObject:v13 forKeyedSubscript:@"time"];

  [v6 sendEventForKey:v14 payload:v12];
}

- (void)nts_reportFaceTrackingTimeWithEndTime:(id)a3 client:(id)a4
{
  v18 = a4;
  v6 = a3;
  v7 = [(AVTUsageTrackingSession *)self faceTrackingEvent];
  [v7 totalElapsedTimeAtTime:v6];
  v9 = v8;

  v10 = [(AVTUsageTrackingSession *)self faceTrackingEvent];
  v11 = [v10 record];

  [(AVTUsageTrackingSession *)self setFaceTrackingEvent:0];
  v12 = [(AVTUsageTrackingSession *)self makeEventKeyForAction:@"FaceTrackingTime"];
  v13 = [objc_opt_class() payloadForAvatarRecord:v11];
  v14 = [v13 mutableCopy];

  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [v14 setObject:v15 forKeyedSubscript:@"time"];

  [v18 sendEventForKey:v12 payload:v14];
  if (v9 > 30.0)
  {
    v16 = [(AVTUsageTrackingSession *)self makeEventKeyForAction:@"FaceTrackingMoreThan30s"];
    v17 = [objc_opt_class() payloadForAvatarRecord:v11];
    [v18 sendEventForKey:v16 payload:v17];
  }
}

- (void)nts_reportAvatarCountWithClient:(id)a3
{
  v13 = a3;
  v4 = [(AVTUsageTrackingSession *)self avatarStore];
  v5 = [MEMORY[0x1E698E310] requestForCustomAvatars];
  v6 = [v4 avatarsForFetchRequest:v5 error:0];

  if (v6)
  {
    v7 = [v6 count];
    v8 = [(AVTUsageTrackingSession *)self logger];
    [v8 logUsageTrackingRecordCount:v7];

    v9 = [(AVTUsageTrackingSession *)self makeCrossAppEventKeyForAction:@"MemojiCount"];
    v10 = [(AVTUsageTrackingSession *)self payloadForCrossAppEvent];
    v11 = [v10 mutableCopy];

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    [v11 setObject:v12 forKeyedSubscript:@"memojiCount"];

    [v13 sendEventForKey:v9 payload:v11];
  }
}

- (void)nts_reportAvatarDescription:(id)a3 dpRecorder:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:@"AVTTypeMismatchException" format:{@"Unexpected object class for %@", v6}];
  }

  v8 = v6;
  v9 = [(AVTUsageTrackingSession *)self recordTransformer];
  v10 = (v9)[2](v9, v8);

  [(AVTUsageTrackingSession *)self nts_loadDefaultConfigurationIfNeeded];
  v11 = objc_opt_class();
  v21 = 0;
  v22 = 0;
  v12 = [(AVTUsageTrackingSession *)self defaultConfiguration];
  [v11 getPresetDescription:&v22 usedCategoriesDescription:&v21 forAvatarConfiguration:v10 defaultConfiguration:v12];
  v13 = v22;
  v14 = v21;
  v15 = v13;

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__AVTUsageTrackingSession_nts_reportAvatarDescription_dpRecorder___block_invoke;
  v19[3] = &unk_1E7F3C5E0;
  v19[4] = self;
  v20 = v7;
  v16 = v7;
  [v15 enumerateKeysAndObjectsUsingBlock:v19];
  v17 = [v14 stringValue];
  v18 = [objc_opt_class() makeDPKey:@"MemojiCategoryUsed"];
  [v16 recordString:v17 forKey:v18];
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

- (void)nts_reportAvatarLikenessClustersWithClient:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v6 = [(AVTUsageTrackingSession *)self avatarStore];
  v7 = [MEMORY[0x1E698E310] requestForCustomAvatars];
  v8 = [v6 avatarsForFetchRequest:v7 error:0];

  if ([v8 count])
  {
    v37 = v4;
    v9 = [MEMORY[0x1E695DF70] array];
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
          v17 = [(AVTUsageTrackingSession *)v5 recordTransformer];
          v18 = (v17)[2](v17, v16);

          [v9 addObject:v18];
          objc_autoreleasePoolPop(v15);
        }

        v11 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v11);
    }

    v19 = v5;
    v20 = objc_opt_class();
    v21 = [(AVTUsageTrackingSession *)v5 metric];
    v22 = [v20 configurationDistanceClassifierWithMetric:v21];

    v23 = [objc_opt_class() likenessComparator];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __70__AVTUsageTrackingSession_nts_reportAvatarLikenessClustersWithClient___block_invoke;
    v39[3] = &unk_1E7F3C608;
    v40 = obj;
    v24 = MEMORY[0x1BFB0DE80](v39);
    v25 = [AVTArrayPairClassification clustersForObjectsInArray:v9 withClassifier:v22 likenessThreshold:&unk_1F39A5B78 likenessComparator:v23];
    v26 = [AVTArrayPairClassification clustersForObjectsInArray:v9 withClassifier:v22 likenessThreshold:&unk_1F39A5B90 likenessComparator:v23];
    v27 = [(AVTUsageTrackingSession *)v19 logger];
    [v27 logUsageTrackingSmallDifferencesClusterCount:{objc_msgSend(v25, "count")}];

    v28 = [(AVTUsageTrackingSession *)v19 logger];
    [v28 logUsageTrackingBigDifferencesClusterCount:{objc_msgSend(v26, "count")}];

    v29 = (v24)[2](v24, v25);
    v30 = (v24)[2](v24, v26);
    v31 = [(AVTUsageTrackingSession *)v19 makeCrossAppEventKeyForAction:@"MemojiDifferences"];
    v32 = [(AVTUsageTrackingSession *)v19 payloadForCrossAppEvent];
    v33 = [v32 mutableCopy];

    v34 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
    [v33 setObject:v34 forKeyedSubscript:@"smallDifferenceRatio"];

    v35 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
    [v33 setObject:v35 forKeyedSubscript:@"bigDifferenceRatio"];

    v4 = v37;
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

- (void)nts_reportAvatarComplexity:(id)a3 withClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(AVTUsageTrackingSession *)self nts_loadDefaultConfigurationIfNeeded];
  v8 = [(AVTUsageTrackingSession *)self recordTransformer];
  v18 = (v8)[2](v8, v7);

  v9 = [(AVTUsageTrackingSession *)self metric];
  v10 = [(AVTUsageTrackingSession *)self defaultConfiguration];
  v11 = [v9 distanceFromConfiguration:v10 toConfiguration:v18];

  v12 = [(AVTUsageTrackingSession *)self metric];
  v13 = [v12 differenceCountFromDistance:v11];

  v14 = [(AVTUsageTrackingSession *)self makeCrossAppEventKeyForAction:@"MemojiComplexity"];
  v15 = [(AVTUsageTrackingSession *)self payloadForCrossAppEvent];
  v16 = [v15 mutableCopy];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
  [v16 setObject:v17 forKeyedSubscript:@"complexity"];

  [v6 sendEventForKey:v14 payload:v16];
}

- (void)nts_reportExpandedModeWithClient:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AVTUsageTrackingSession *)self makeEventKeyForAction:@"SessionEnded"];
  v8 = @"expandedUsed";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[AVTUsageTrackingSession expandedMode](self, "expandedMode")}];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [v4 sendEventForKey:v5 payload:v7];
}

@end