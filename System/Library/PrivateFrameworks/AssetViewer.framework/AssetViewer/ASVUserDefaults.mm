@interface ASVUserDefaults
+ (BOOL)allowCheckoutNonSecureHTML;
+ (BOOL)debug3DPreserveWorldTransform;
+ (BOOL)debugSaveThumbnailImageToDisk;
+ (BOOL)enableVariantsFeature;
+ (BOOL)forceDisableArKitVerticalRejection;
+ (BOOL)forceDisableExtendedDynamicRangeOutput;
+ (BOOL)forceDisableRayTracedAmbientOcclusion;
+ (BOOL)forceDisableRealWorldOcclusion;
+ (BOOL)forceDisableRealWorldPhysics;
+ (BOOL)forceDisableShadowMaps;
+ (BOOL)forceShowAnimationScrubber;
+ (BOOL)forceUseLegacyHitTestAPI;
+ (BOOL)forceUseLegacySceneImportPipeline;
+ (BOOL)forceUseOldProcessLoadedEntities;
+ (BOOL)forceUseSceneReconstructionMeshForOrientation;
+ (BOOL)shouldRevertToOldHapticsBehavior;
+ (BOOL)triggerAffordanceShouldReshowAfterArReset;
+ (BOOL)useEntityLoadFor3DLoading;
+ (BOOL)wants2DOverlayControlsHidden;
+ (BOOL)wantsAnimationDisabled;
+ (BOOL)wantsDebugActionsButton;
+ (BOOL)wantsDebugPhysicsEnabled;
+ (BOOL)wantsDebugSceneUnderstandingEnabled;
+ (BOOL)wantsDebugVisualizationEnabled;
+ (BOOL)wantsMeshMemoryEstimateEnabled;
+ (BOOL)wantsObjectFitToScreen;
+ (BOOL)wantsObjectPlacedWithoutPlane;
+ (BOOL)wantsOpenInObjectMode;
+ (BOOL)wantsParentToCameraInARAndEnableProbes;
+ (BOOL)wantsPeopleOcclusionDisabled;
+ (BOOL)wantsRayTracedAmbientOcclusionEnabled;
+ (BOOL)wantsShowLastPlacementResultTypeStatus;
+ (BOOL)wantsStatisticsShown;
+ (BOOL)wantsStatusBarHidden;
+ (BOOL)wantsStatusPillHidden;
+ (BOOL)wantsTTRButton;
+ (BOOL)wantsTrackedRaycastStatus;
+ (double)triggerAffordanceShowDuration;
+ (float)objectFitToScreenPercentage;
+ (float)sceneIBLARIntensity;
+ (id)checkoutFragment;
+ (id)defaultPlanePosition;
+ (id)overrideURLForSafariInline;
+ (id)preferencesValueforKey:(__CFString *)key domain:(__CFString *)domain;
+ (int)inlinePreviewMemoryReserve;
+ (int)maxInlinePreviewCount;
+ (int)overrideMaxTextureSize;
+ (int64_t)artificialLoadingDelay;
+ (int64_t)overridePreferredIblVersionKey;
+ (void)setPreferencesValue:(id)value forKey:(__CFString *)key;
+ (void)setPreferencesValueForKey:(__CFString *)key value:(__CFString *)value;
@end

@implementation ASVUserDefaults

+ (int64_t)artificialLoadingDelay
{
  v2 = [self preferencesValueforKey:@"ArtificialLoadingDelay" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &unk_285313570;
  }

  longValue = [v3 longValue];

  return longValue;
}

+ (BOOL)wantsAnimationDisabled
{
  v2 = [self preferencesValueforKey:@"DisableAnimation" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wantsStatusBarHidden
{
  v2 = [self preferencesValueforKey:@"HideStatusBar" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wants2DOverlayControlsHidden
{
  v2 = [self preferencesValueforKey:@"Hide2DOverlayControls" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wantsObjectPlacedWithoutPlane
{
  v2 = [self preferencesValueforKey:@"PlaceObjectWithoutPlane" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (id)defaultPlanePosition
{
  v2 = [self preferencesValueforKey:@"DefaultPlanePosition" domain:@"com.apple.AssetViewer"];
  if (!v2)
  {
    v2 = &stru_285305818;
  }

  return v2;
}

+ (BOOL)wantsOpenInObjectMode
{
  v2 = [self preferencesValueforKey:@"OpenInObjectMode" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wantsParentToCameraInARAndEnableProbes
{
  v2 = [self preferencesValueforKey:@"ParentToCameraInARAndEnableProbes" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (id)checkoutFragment
{
  v2 = [self preferencesValueforKey:@"CheckoutFragment" domain:@"com.apple.AssetViewer"];
  if (!v2)
  {
    v2 = &stru_285305818;
  }

  return v2;
}

+ (BOOL)allowCheckoutNonSecureHTML
{
  v2 = [self preferencesValueforKey:@"CheckoutAllowNonSecureHTML" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wantsPeopleOcclusionDisabled
{
  v2 = [self preferencesValueforKey:@"DisablePeopleOcclusion" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wantsTrackedRaycastStatus
{
  v2 = [self preferencesValueforKey:@"ShowTrackedRaycastStatus" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wantsShowLastPlacementResultTypeStatus
{
  v2 = [self preferencesValueforKey:@"ShowLastPlacementResultTypeStatus" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wantsObjectFitToScreen
{
  v2 = [self preferencesValueforKey:@"FitObjectToScreen" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (float)objectFitToScreenPercentage
{
  v2 = [self preferencesValueforKey:@"ObjectFitToScreenPercentage" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &unk_2853135D0;
  }

  [v3 floatValue];
  v5 = v4;

  return v5;
}

+ (BOOL)wantsRayTracedAmbientOcclusionEnabled
{
  v2 = [self preferencesValueforKey:@"EnableRayTracedAmbientOcclusion" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wantsDebugActionsButton
{
  v2 = [self preferencesValueforKey:@"EnableDebugActionsButton" domain:@"com.apple.AssetViewer"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wantsTTRButton
{
  v2 = [self preferencesValueforKey:@"EnableTTRButton" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:IsAppleInternalBuild()];
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (BOOL)forceDisableRayTracedAmbientOcclusion
{
  v2 = [self preferencesValueforKey:@"ForceDisableRayTracedAmbientOcclusion" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wantsDebugVisualizationEnabled
{
  v2 = [self preferencesValueforKey:@"EnableDebugVisualization" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wantsDebugPhysicsEnabled
{
  v2 = [self preferencesValueforKey:@"EnableDebugPhysics" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wantsStatisticsShown
{
  v2 = [self preferencesValueforKey:@"ShowStatistics" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)wantsStatusPillHidden
{
  v2 = [self preferencesValueforKey:@"WantsStatusPillHidden" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (double)triggerAffordanceShowDuration
{
  v2 = [self preferencesValueforKey:@"TriggerAffordanceShowDuration" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = &unk_285313588;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

+ (BOOL)triggerAffordanceShouldReshowAfterArReset
{
  v2 = [self preferencesValueforKey:@"TriggerAffordanceShouldReshowAfterArReset" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC38];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (BOOL)forceShowAnimationScrubber
{
  v2 = [self preferencesValueforKey:@"ForceShowAnimationScrubber" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (BOOL)forceUseLegacySceneImportPipeline
{
  v2 = [self preferencesValueforKey:@"ForceUseLegacySceneImportPipeline" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (BOOL)enableVariantsFeature
{
  v2 = [self preferencesValueforKey:@"enableVariantsFeature" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC38];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (BOOL)useEntityLoadFor3DLoading
{
  v2 = [self preferencesValueforKey:@"useEntityLoadFor3DLoading" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (BOOL)forceUseOldProcessLoadedEntities
{
  v2 = [self preferencesValueforKey:@"ForceUseOldProcessLoadedEntities" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (int)overrideMaxTextureSize
{
  v2 = [self preferencesValueforKey:@"ASVOverrideMaxTextureSize" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = &unk_285313570;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  intValue = [v5 intValue];
  return intValue;
}

+ (BOOL)wantsMeshMemoryEstimateEnabled
{
  v2 = [self preferencesValueforKey:@"EnableMeshMemoryEstimate" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (BOOL)wantsDebugSceneUnderstandingEnabled
{
  v2 = [self preferencesValueforKey:@"EnableDebugSceneUnderstanding" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)forceDisableRealWorldOcclusion
{
  v2 = [self preferencesValueforKey:@"ForceDisableRealWorldOcclusion" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)forceDisableRealWorldPhysics
{
  v2 = [self preferencesValueforKey:@"ForceDisableRealWorldPhysics" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)forceUseLegacyHitTestAPI
{
  v2 = [self preferencesValueforKey:@"ForceLegacyHitTestAPI" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)forceUseSceneReconstructionMeshForOrientation
{
  v2 = [self preferencesValueforKey:@"ForceUseSceneReconstructionMeshForOrientation" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)forceDisableShadowMaps
{
  v2 = [self preferencesValueforKey:@"ForceDisableShadowMaps" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)forceDisableArKitVerticalRejection
{
  v2 = [self preferencesValueforKey:@"ForceDisableArKitVerticalRejection" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)shouldRevertToOldHapticsBehavior
{
  v2 = [self preferencesValueforKey:@"RevertToOldHapticsBehavior" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (float)sceneIBLARIntensity
{
  v2 = [self preferencesValueforKey:@"SceneIBLARIntensity" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &unk_285313570;
  }

  [v3 floatValue];
  v5 = v4;

  return v5;
}

+ (int64_t)overridePreferredIblVersionKey
{
  v2 = [self preferencesValueforKey:@"OverridePreferredIblVersionKey" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &unk_285313570;
  }

  integerValue = [v3 integerValue];

  return integerValue;
}

+ (BOOL)debugSaveThumbnailImageToDisk
{
  v2 = [self preferencesValueforKey:@"DebugSaveThumbnailImageToDisk" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)debug3DPreserveWorldTransform
{
  v2 = [self preferencesValueforKey:@"debugPreserveWorldTransform" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC38];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (BOOL)forceDisableExtendedDynamicRangeOutput
{
  v2 = [self preferencesValueforKey:@"ForceDisableExtendedDynamicRangeOutput" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (id)overrideURLForSafariInline
{
  v2 = [self preferencesValueforKey:@"SafariInlinePreviewURL" domain:@"com.apple.AssetViewer"];
  if (v2 && ([MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "stringByTrimmingCharactersInSet:", v3), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "length"), v4, v3, v5))
  {
    v6 = v2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int)maxInlinePreviewCount
{
  v2 = [self preferencesValueforKey:@"ASVInlineMaxCount" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = &unk_2853135A0;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  intValue = [v5 intValue];
  return intValue;
}

+ (int)inlinePreviewMemoryReserve
{
  v2 = [self preferencesValueforKey:@"ASVinlinePreviewMemoryReserve" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = &unk_2853135B8;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  intValue = [v5 intValue];
  return intValue;
}

+ (id)preferencesValueforKey:(__CFString *)key domain:(__CFString *)domain
{
  CFPreferencesAppSynchronize(domain);
  v6 = CFPreferencesCopyAppValue(key, domain);

  return v6;
}

+ (void)setPreferencesValueForKey:(__CFString *)key value:(__CFString *)value
{
  CFPreferencesSetAppValue(key, value, @"com.apple.AssetViewer");

  CFPreferencesAppSynchronize(@"com.apple.AssetViewer");
}

+ (void)setPreferencesValue:(id)value forKey:(__CFString *)key
{
  v4 = *MEMORY[0x277CBF040];
  v5 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(key, value, @"com.apple.AssetViewer", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  CFPreferencesSynchronize(@"com.apple.AssetViewer", v4, v5);
}

@end