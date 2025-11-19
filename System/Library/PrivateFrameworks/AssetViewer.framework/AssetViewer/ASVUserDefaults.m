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
+ (id)preferencesValueforKey:(__CFString *)a3 domain:(__CFString *)a4;
+ (int)inlinePreviewMemoryReserve;
+ (int)maxInlinePreviewCount;
+ (int)overrideMaxTextureSize;
+ (int64_t)artificialLoadingDelay;
+ (int64_t)overridePreferredIblVersionKey;
+ (void)setPreferencesValue:(id)a3 forKey:(__CFString *)a4;
+ (void)setPreferencesValueForKey:(__CFString *)a3 value:(__CFString *)a4;
@end

@implementation ASVUserDefaults

+ (int64_t)artificialLoadingDelay
{
  v2 = [a1 preferencesValueforKey:@"ArtificialLoadingDelay" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &unk_285313570;
  }

  v4 = [v3 longValue];

  return v4;
}

+ (BOOL)wantsAnimationDisabled
{
  v2 = [a1 preferencesValueforKey:@"DisableAnimation" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)wantsStatusBarHidden
{
  v2 = [a1 preferencesValueforKey:@"HideStatusBar" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)wants2DOverlayControlsHidden
{
  v2 = [a1 preferencesValueforKey:@"Hide2DOverlayControls" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)wantsObjectPlacedWithoutPlane
{
  v2 = [a1 preferencesValueforKey:@"PlaceObjectWithoutPlane" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (id)defaultPlanePosition
{
  v2 = [a1 preferencesValueforKey:@"DefaultPlanePosition" domain:@"com.apple.AssetViewer"];
  if (!v2)
  {
    v2 = &stru_285305818;
  }

  return v2;
}

+ (BOOL)wantsOpenInObjectMode
{
  v2 = [a1 preferencesValueforKey:@"OpenInObjectMode" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)wantsParentToCameraInARAndEnableProbes
{
  v2 = [a1 preferencesValueforKey:@"ParentToCameraInARAndEnableProbes" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (id)checkoutFragment
{
  v2 = [a1 preferencesValueforKey:@"CheckoutFragment" domain:@"com.apple.AssetViewer"];
  if (!v2)
  {
    v2 = &stru_285305818;
  }

  return v2;
}

+ (BOOL)allowCheckoutNonSecureHTML
{
  v2 = [a1 preferencesValueforKey:@"CheckoutAllowNonSecureHTML" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)wantsPeopleOcclusionDisabled
{
  v2 = [a1 preferencesValueforKey:@"DisablePeopleOcclusion" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)wantsTrackedRaycastStatus
{
  v2 = [a1 preferencesValueforKey:@"ShowTrackedRaycastStatus" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)wantsShowLastPlacementResultTypeStatus
{
  v2 = [a1 preferencesValueforKey:@"ShowLastPlacementResultTypeStatus" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)wantsObjectFitToScreen
{
  v2 = [a1 preferencesValueforKey:@"FitObjectToScreen" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (float)objectFitToScreenPercentage
{
  v2 = [a1 preferencesValueforKey:@"ObjectFitToScreenPercentage" domain:@"com.apple.AssetViewer"];
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
  v2 = [a1 preferencesValueforKey:@"EnableRayTracedAmbientOcclusion" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)wantsDebugActionsButton
{
  v2 = [a1 preferencesValueforKey:@"EnableDebugActionsButton" domain:@"com.apple.AssetViewer"];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (BOOL)wantsTTRButton
{
  v2 = [a1 preferencesValueforKey:@"EnableTTRButton" domain:@"com.apple.AssetViewer"];
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

  v6 = [v5 BOOLValue];
  return v6;
}

+ (BOOL)forceDisableRayTracedAmbientOcclusion
{
  v2 = [a1 preferencesValueforKey:@"ForceDisableRayTracedAmbientOcclusion" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)wantsDebugVisualizationEnabled
{
  v2 = [a1 preferencesValueforKey:@"EnableDebugVisualization" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)wantsDebugPhysicsEnabled
{
  v2 = [a1 preferencesValueforKey:@"EnableDebugPhysics" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)wantsStatisticsShown
{
  v2 = [a1 preferencesValueforKey:@"ShowStatistics" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)wantsStatusPillHidden
{
  v2 = [a1 preferencesValueforKey:@"WantsStatusPillHidden" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 BOOLValue];
  return v6;
}

+ (double)triggerAffordanceShowDuration
{
  v2 = [a1 preferencesValueforKey:@"TriggerAffordanceShowDuration" domain:@"com.apple.AssetViewer"];
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
  v2 = [a1 preferencesValueforKey:@"TriggerAffordanceShouldReshowAfterArReset" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC38];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 BOOLValue];
  return v6;
}

+ (BOOL)forceShowAnimationScrubber
{
  v2 = [a1 preferencesValueforKey:@"ForceShowAnimationScrubber" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 BOOLValue];
  return v6;
}

+ (BOOL)forceUseLegacySceneImportPipeline
{
  v2 = [a1 preferencesValueforKey:@"ForceUseLegacySceneImportPipeline" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 BOOLValue];
  return v6;
}

+ (BOOL)enableVariantsFeature
{
  v2 = [a1 preferencesValueforKey:@"enableVariantsFeature" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC38];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 BOOLValue];
  return v6;
}

+ (BOOL)useEntityLoadFor3DLoading
{
  v2 = [a1 preferencesValueforKey:@"useEntityLoadFor3DLoading" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 BOOLValue];
  return v6;
}

+ (BOOL)forceUseOldProcessLoadedEntities
{
  v2 = [a1 preferencesValueforKey:@"ForceUseOldProcessLoadedEntities" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 BOOLValue];
  return v6;
}

+ (int)overrideMaxTextureSize
{
  v2 = [a1 preferencesValueforKey:@"ASVOverrideMaxTextureSize" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = &unk_285313570;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 intValue];
  return v6;
}

+ (BOOL)wantsMeshMemoryEstimateEnabled
{
  v2 = [a1 preferencesValueforKey:@"EnableMeshMemoryEstimate" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 BOOLValue];
  return v6;
}

+ (BOOL)wantsDebugSceneUnderstandingEnabled
{
  v2 = [a1 preferencesValueforKey:@"EnableDebugSceneUnderstanding" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)forceDisableRealWorldOcclusion
{
  v2 = [a1 preferencesValueforKey:@"ForceDisableRealWorldOcclusion" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)forceDisableRealWorldPhysics
{
  v2 = [a1 preferencesValueforKey:@"ForceDisableRealWorldPhysics" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)forceUseLegacyHitTestAPI
{
  v2 = [a1 preferencesValueforKey:@"ForceLegacyHitTestAPI" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)forceUseSceneReconstructionMeshForOrientation
{
  v2 = [a1 preferencesValueforKey:@"ForceUseSceneReconstructionMeshForOrientation" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)forceDisableShadowMaps
{
  v2 = [a1 preferencesValueforKey:@"ForceDisableShadowMaps" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)forceDisableArKitVerticalRejection
{
  v2 = [a1 preferencesValueforKey:@"ForceDisableArKitVerticalRejection" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)shouldRevertToOldHapticsBehavior
{
  v2 = [a1 preferencesValueforKey:@"RevertToOldHapticsBehavior" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = MEMORY[0x277CBEC28];
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 BOOLValue];
  return v6;
}

+ (float)sceneIBLARIntensity
{
  v2 = [a1 preferencesValueforKey:@"SceneIBLARIntensity" domain:@"com.apple.AssetViewer"];
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
  v2 = [a1 preferencesValueforKey:@"OverridePreferredIblVersionKey" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &unk_285313570;
  }

  v4 = [v3 integerValue];

  return v4;
}

+ (BOOL)debugSaveThumbnailImageToDisk
{
  v2 = [a1 preferencesValueforKey:@"DebugSaveThumbnailImageToDisk" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)debug3DPreserveWorldTransform
{
  v2 = [a1 preferencesValueforKey:@"debugPreserveWorldTransform" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC38];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)forceDisableExtendedDynamicRangeOutput
{
  v2 = [a1 preferencesValueforKey:@"ForceDisableExtendedDynamicRangeOutput" domain:@"com.apple.AssetViewer"];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  v4 = [v3 BOOLValue];

  return v4;
}

+ (id)overrideURLForSafariInline
{
  v2 = [a1 preferencesValueforKey:@"SafariInlinePreviewURL" domain:@"com.apple.AssetViewer"];
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
  v2 = [a1 preferencesValueforKey:@"ASVInlineMaxCount" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = &unk_2853135A0;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 intValue];
  return v6;
}

+ (int)inlinePreviewMemoryReserve
{
  v2 = [a1 preferencesValueforKey:@"ASVinlinePreviewMemoryReserve" domain:@"com.apple.AssetViewer"];
  v3 = v2;
  v4 = &unk_2853135B8;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  v6 = [v5 intValue];
  return v6;
}

+ (id)preferencesValueforKey:(__CFString *)a3 domain:(__CFString *)a4
{
  CFPreferencesAppSynchronize(a4);
  v6 = CFPreferencesCopyAppValue(a3, a4);

  return v6;
}

+ (void)setPreferencesValueForKey:(__CFString *)a3 value:(__CFString *)a4
{
  CFPreferencesSetAppValue(a3, a4, @"com.apple.AssetViewer");

  CFPreferencesAppSynchronize(@"com.apple.AssetViewer");
}

+ (void)setPreferencesValue:(id)a3 forKey:(__CFString *)a4
{
  v4 = *MEMORY[0x277CBF040];
  v5 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(a4, a3, @"com.apple.AssetViewer", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  CFPreferencesSynchronize(@"com.apple.AssetViewer", v4, v5);
}

@end