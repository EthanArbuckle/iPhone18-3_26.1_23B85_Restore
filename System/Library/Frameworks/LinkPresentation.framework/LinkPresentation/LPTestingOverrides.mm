@interface LPTestingOverrides
+ (void)reset;
+ (void)setAdditionalAllowedFileURLDirectories:(id)directories;
+ (void)setForceDarkLuminanceThreshold:(id)threshold;
+ (void)setForceSubsampleImagesToScreenSize:(id)size;
@end

@implementation LPTestingOverrides

+ (void)reset
{
  _forceRTL = 0;
  _forceImageLoadingScaleFactor = 0;
  v2 = _forceSubsampleImagesToScreenSize;
  _forceSubsampleImagesToScreenSize = 0;

  _forceEnableAllEntitlements = 0;
  _forceIgnoreAllTCCChecks = 0;
  _forceMonospaceFonts = 0;
  _forceEnableLockdownMode = 0;
  v3 = _customLoader;
  _customLoader = 0;

  v4 = _additionalAllowedFileURLDirectories;
  _additionalAllowedFileURLDirectories = 0;

  _forceUseSmallerMaximumMetadataSize = 0;
  _forceDisableImageDeduplication = 0;
  _forceCollapseButtons = 0;
  v5 = _forceDarkLuminanceThreshold;
  _forceDarkLuminanceThreshold = 0;

  _forceUseCannedIcons = 0;
  +[LPResources clearCachedResources];
  +[LPTheme invalidateThemeCache];
  v6 = +[LPiTunesStoreInformation shared];
  [v6 _setOverrideStorefrontIdentifier:{@"143441-1, 29"}];

  v7 = +[LPiTunesStoreInformation shared];
  [v7 _setOverrideCapabilities:1];
}

+ (void)setForceSubsampleImagesToScreenSize:(id)size
{
  objc_storeStrong(&_forceSubsampleImagesToScreenSize, size);
  sizeCopy = size;
  +[LPResources clearCachedResources];
}

+ (void)setAdditionalAllowedFileURLDirectories:(id)directories
{
  directoriesCopy = directories;
  v3 = [directoriesCopy copy];
  v4 = _additionalAllowedFileURLDirectories;
  _additionalAllowedFileURLDirectories = v3;
}

+ (void)setForceDarkLuminanceThreshold:(id)threshold
{
  objc_storeStrong(&_forceDarkLuminanceThreshold, threshold);
  thresholdCopy = threshold;
  +[LPTheme invalidateThemeCache];
}

@end