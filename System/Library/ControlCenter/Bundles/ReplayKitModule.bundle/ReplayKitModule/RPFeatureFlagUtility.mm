@interface RPFeatureFlagUtility
+ (id)sharedInstance;
- (RPFeatureFlagUtility)init;
@end

@implementation RPFeatureFlagUtility

+ (id)sharedInstance
{
  if (qword_1A8E8 != -1)
  {
    sub_B018();
  }

  v3 = qword_1A8E0;

  return v3;
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