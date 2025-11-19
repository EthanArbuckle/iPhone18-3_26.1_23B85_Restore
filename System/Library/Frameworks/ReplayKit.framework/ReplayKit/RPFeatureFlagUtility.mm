@interface RPFeatureFlagUtility
+ (id)sharedInstance;
- (RPFeatureFlagUtility)init;
@end

@implementation RPFeatureFlagUtility

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[RPFeatureFlagUtility sharedInstance];
  }

  v3 = sharedInstance__RPFeatureFlagUtility;

  return v3;
}

uint64_t __38__RPFeatureFlagUtility_sharedInstance__block_invoke()
{
  sharedInstance__RPFeatureFlagUtility = objc_alloc_init(RPFeatureFlagUtility);

  return MEMORY[0x2821F96F8]();
}

- (RPFeatureFlagUtility)init
{
  v5.receiver = self;
  v5.super_class = RPFeatureFlagUtility;
  v2 = [(RPFeatureFlagUtility *)&v5 init];
  if (v2)
  {
    v2->_stereoAudioControlCenter = _os_feature_enabled_impl();
    v2->_systemBannerEnabled = SBSIsSystemApertureAvailable();
    v3 = _os_feature_enabled_impl();
    if (v3)
    {
      LOBYTE(v3) = MGGetBoolAnswer();
    }

    v2->_alwaysOnDisplayEnabled = v3;
    v2->_screenRecordingCameraPip = _os_feature_enabled_impl();
    v2->_screenCaptureAlertEnabled = 1;
    v2->_independentWindowAlwaysHDEnabled = _os_feature_enabled_impl();
    v2->_coreGraphicsCaptureAPINotificiationEnabled = _os_feature_enabled_impl();
    v2->_coreGraphicsProxyingEnabled = 1;
    v2->_largePresenterOverlayFullHDPlus = _os_feature_enabled_impl();
    v2->_replayKitScreenRecordingHEVC = _os_feature_enabled_impl();
    v2->_audioDSPAutomaticMicModeEnabled = _os_feature_enabled_impl();
    v2->_replayKitScreenRecordingHDR = _os_feature_enabled_impl();
    v2->_screenRecordingPassthroughCamera = _os_feature_enabled_impl();
    v2->_highQualityLocalRecordingEnabled = _os_feature_enabled_impl();
    v2->_windowServerScreenshots = _os_feature_enabled_impl();
    v2->_solariumEnabled = _os_feature_enabled_impl();
    v2->_recordingSDRToneMapping = _os_feature_enabled_impl();
    v2->_replayKitSDRToneMapping = _os_feature_enabled_impl();
  }

  return v2;
}

@end