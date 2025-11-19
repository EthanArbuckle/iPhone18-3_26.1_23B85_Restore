@interface VCFeatureFlagManager
@end

@implementation VCFeatureFlagManager

void __VCFeatureFlagManager_U1AuthTagEnabled_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [+[GKSConnectivitySettings getStorebagValueForStorebagKey:userDefaultKey:defaultValue:isDoubleType:](GKSConnectivitySettings getStorebagValueForStorebagKey:@"vc-u-plus-one-auth-tag-enabled" userDefaultKey:@"uPlusOneAuthTagEnabled" defaultValue:MEMORY[0x1E695E118] isDoubleType:{0), "BOOLValue"}];
  if (VCFeatureFlagManager_UseShortMKI_onceToken != -1)
  {
    __VCFeatureFlagManager_U1AuthTagEnabled_block_invoke_cold_1();
  }

  v1 = VCFeatureFlagManager_UseShortMKI_result;
  v2 = _os_feature_enabled_impl();
  v3 = v2 & v1 & v0;
  VCFeatureFlagManager_U1AuthTagEnabled_result = v2 & v1 & v0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109632;
    v4[1] = v3;
    v5 = 1024;
    v6 = v1;
    v7 = 1024;
    v8 = v0;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: U1AuthTag=%{BOOL}d, shortMKIEnabled=%{BOOL}d, storeBagValue=%{BOOL}d", v4, 0x14u);
  }
}

void __VCFeatureFlagManager_SessionBasedMutingEnabled_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = _os_feature_enabled_impl();
  v1 = VCFeatureFlagManager_UseAvconferenced();
  v2 = v1;
  v3 = v0 & v1;
  VCFeatureFlagManager_SessionBasedMutingEnabled_result = v0 & v1;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109632;
    v4[1] = v0;
    v5 = 1024;
    v6 = v2;
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "VCFeatureFlagManager: SessionBasedMuting=%{BOOL}d, UseAvconferencedEmbeddedSpecific=%{BOOL}d, result=%{BOOL}d", v4, 0x14u);
  }
}

uint64_t __VCFeatureFlagManager_UseAvconferenced_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_UseAvconferenced_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_UseOptimizedTelephonyHandovers_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_UseOptimizedTelephonyHandovers_result = result;
  return result;
}

BOOL __VCFeatureFlagManager_PreviewMSROptimizationForEmbedded_block_invoke()
{
  result = (_os_feature_enabled_impl() & 1) != 0 || VCDefaults_GetBoolValueForKey(@"forceEnablePreviewMSROptimizationForEmbedded", 0);
  VCFeatureFlagManager_PreviewMSROptimizationForEmbedded_result = result;
  return result;
}

void __VCFeatureFlagManager_SkipNonInfraWiFiAssertion_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = _os_feature_enabled_impl();
  VCFeatureFlagManager_SkipNonInfraWiFiAssertion_result = v0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SkipNonInfraWiFiAssertion=%d", v1, 8u);
  }
}

void __VCFeatureFlagManager_UseAudioCodecACC24ForU1_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  VCFeatureFlagManager_UseAudioCodecACC24ForU1_result = _os_feature_enabled_impl();
  v0 = VCFeatureFlagManager_UseOutOfProcessAudioDecoding();
  v1 = v0 & VCFeatureFlagManager_UseAudioCodecACC24ForU1_result;
  VCFeatureFlagManager_UseAudioCodecACC24ForU1_isACC24Supported = v0 & VCFeatureFlagManager_UseAudioCodecACC24ForU1_result;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = v1;
    v3 = 1024;
    v4 = v0;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "UseAudioCodecACC24ForU1=%d isOOPAudioDecodingEnabled=%d", v2, 0xEu);
  }
}

void __VCFeatureFlagManager_UseShortREDWithACC24_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = _os_feature_enabled_impl();
  VCFeatureFlagManager_UseShortREDWithACC24__result = v0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "UseShortREDWithACC24=%d", v1, 8u);
  }
}

uint64_t __VCFeatureFlagManager_DetectInactiveAudioFramesACC24_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_DetectInactiveAudioFramesACC24_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_AudioCodecACC24FixedBitrateMode_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_AudioCodecACC24FixedBitrateMode_flag = result;
  return result;
}

void __VCFeatureFlagManager_UseAudioCodecACC24ForGFT_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  VCFeatureFlagManager_UseAudioCodecACC24ForGFT_result = _os_feature_enabled_impl();
  v0 = VCFeatureFlagManager_UseOutOfProcessAudioDecoding();
  v1 = v0 & VCFeatureFlagManager_UseAudioCodecACC24ForGFT_result;
  VCFeatureFlagManager_UseAudioCodecACC24ForGFT_isACC24Supported = v0 & VCFeatureFlagManager_UseAudioCodecACC24ForGFT_result;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2[0] = 67109376;
    v2[1] = v1;
    v3 = 1024;
    v4 = v0;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "UseAudioCodecACC24ForGFT=%d isOOPAudioDecodingEnabled=%d", v2, 0xEu);
  }
}

uint64_t __VCFeatureFlagManager_DetectInactiveAudioFramesAACELD_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_DetectInactiveAudioFramesAACELD_flag = result;
  return result;
}

void __VCFeatureFlagManager_PQCU1Enabled_block_invoke()
{
  VCFeatureFlagManager_PQCU1Enabled_featureFlag = _os_feature_enabled_impl();
  if (VCFeatureFlagManager_UseShortMKI_onceToken != -1)
  {
    __VCFeatureFlagManager_U1AuthTagEnabled_block_invoke_cold_1();
  }

  VCFeatureFlagManager_PQCU1Enabled_shortMKIEnabled = VCFeatureFlagManager_UseShortMKI_result;
}

void __VCFeatureFlagManager_UseShortMKI_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = _os_feature_enabled_impl();
  VCFeatureFlagManager_UseShortMKI_result = v0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ShortMKI=%{BOOL}d", v1, 8u);
  }
}

void __VCFeatureFlagManager_UseTLE_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = _os_feature_enabled_impl();
  VCFeatureFlagManager_UseTLE_result = v0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "TransportLevelEncryption=%{BOOL}d", v1, 8u);
  }
}

uint64_t __VCFeatureFlagManager_UseAnalyzerSpeechAPI_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_UseAnalyzerSpeechAPI_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_EnableSpeechDetector_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_EnableSpeechDetector_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_UseBlockDurationHinting_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = _os_feature_enabled_impl();
  }

  VCFeatureFlagManager_UseBlockDurationHinting_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_RecordingResiliencyEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_RecordingResiliencyEnabled_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_EnableTransportMute_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_EnableTransportMute_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_LocalRecordingEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_LocalRecordingEnabled_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_EnableLateKeyFrameDetection_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_EnableLateKeyFrameDetection_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_EnableFrameBasedFEC_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_EnableFrameBasedFEC_featureFlag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_CallRecordingEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_CallRecordingEnabled_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_HostSpeechTranslationServer_block_invoke()
{
  VCFeatureFlagManager_HostSpeechTranslationServer_audioFlag = _os_feature_enabled_impl();
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_HostSpeechTranslationServer_videoFlag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_FoveationEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_FoveationEnabled_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_NegotiateRemoteMicEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_NegotiateRemoteMicEnabled_flag = result;
  return result;
}

void __VCFeatureFlagManager_PersonaV2Enabled_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = _os_feature_enabled_impl();
  VCFeatureFlagManager_PersonaV2Enabled_flag = v0;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1[0] = 67109120;
    v1[1] = v0;
    _os_log_impl(&dword_1DB56E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Kahuna=%d", v1, 8u);
  }
}

uint64_t __VCFeatureFlagManager_AlwaysHDCaptureEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_AlwaysHDCaptureEnabled_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_SendAACELDSBRHeaderWithEveryFrame_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_SendAACELDSBRHeaderWithEveryFrame_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_AACELDImprovedCorePLCEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_AACELDImprovedCorePLCEnabled_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_AFB_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_AFB_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_CompositorServicesHDR10PixelFormatNegotiation_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_CompositorServicesHDR10PixelFormatNegotiation_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_AudioREDDecayFactorABTesting_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_AudioREDDecayFactorABTesting_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_EnableMTERetagging_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_EnableMTERetagging_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_JBLatencySensitiveModeEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_JBLatencySensitiveModeEnabled_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTA_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTA_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTV_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_EnableEnhancedJBAdaptationsForFTV_flag = result;
  return result;
}

uint64_t __VCFeatureFlagManager_EnableCorrectAudioSampleCountEnforcement_block_invoke()
{
  result = _os_feature_enabled_impl();
  VCFeatureFlagManager_EnableCorrectAudioSampleCountEnforcement_flag = result;
  return result;
}

@end