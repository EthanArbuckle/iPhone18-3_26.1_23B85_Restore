@interface VCMediaNegotiatorStreamGroupU1Configuration
+ (BOOL)ssrcForStreamGroup:(unsigned int)a3 localConfig:(id)a4 ssrc:(unsigned int *)a5;
+ (BOOL)updateCommonNegotiatedVideoSettings:(id)a3 localU1Config:(id)a4 remoteU1Config:(id)a5;
+ (BOOL)updateVideoPayloadsAndParametersForU1Config:(id)a3;
+ (id)negotiatedAudioSettingsForGroupID:(unsigned int)a3 localU1Config:(id)a4 remoteU1Config:(id)a5;
+ (id)negotiatedMicrophoneSettingsBetweenLocalU1Config:(id)a3 remoteU1Config:(id)a4;
+ (id)negotiatedScreenSettingsBetweenLocalU1Config:(id)a3 remoteU1Config:(id)a4;
+ (id)negotiatedSystemAudioSettingsBetweenLocalU1Config:(id)a3 remoteU1Config:(id)a4;
+ (id)negotiatedVideoSettingsBetweenLocalU1Config:(id)a3 remoteU1Config:(id)a4 streamGroupID:(unsigned int)a5;
+ (id)negotiatedVideoSettingsForGroupID:(unsigned int)a3 localU1Config:(id)a4 remoteU1Config:(id)a5;
+ (int64_t)negotiateU1CipherSuiteForStreamGroupID:(unsigned int)a3 remoteSupportedCipherSuites:(id)a4;
+ (void)negotiateFeatureStrings:(id)a3 localU1Config:(id)a4 remoteU1Config:(id)a5;
+ (void)updateBodyDataU1Config:(id)a3 bodyDataConfiguration:(id)a4;
+ (void)updateCameraU1Config:(id)a3 cameraConfiguration:(id)a4;
+ (void)updateFaceTextureU1Config:(id)a3 faceTextureConfiguration:(id)a4;
+ (void)updateScreenU1Config:(id)a3 screenConfiguration:(id)a4;
- (BOOL)isEqual:(id)a3;
- (VCMediaNegotiatorStreamGroupU1Configuration)init;
- (VCMediaNegotiatorStreamGroupU1Configuration)initWithSSRC:(unsigned int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initStreamGroupU1ConfigForGroupId:(unsigned int)a3 withLocalConfig:(id)a4;
- (void)dealloc;
- (void)updateWithAudioConfiguration:(id)a3 mediaType:(unsigned __int8)a4;
@end

@implementation VCMediaNegotiatorStreamGroupU1Configuration

- (VCMediaNegotiatorStreamGroupU1Configuration)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiatorStreamGroupU1Configuration;
  return [(VCMediaNegotiatorStreamGroupU1Configuration *)&v3 init];
}

- (VCMediaNegotiatorStreamGroupU1Configuration)initWithSSRC:(unsigned int)a3
{
  result = [(VCMediaNegotiatorStreamGroupU1Configuration *)self init];
  if (result)
  {
    result->_ssrc = a3;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaNegotiatorStreamGroupU1Configuration;
  [(VCMediaNegotiatorStreamGroupU1Configuration *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [a3 supportedDirection] != self->_supportedDirection || objc_msgSend(a3, "ssrc") != self->_ssrc || self->_allowAudioRecording != objc_msgSend(a3, "allowAudioRecording") || objc_msgSend(a3, "screenPixelCount") != self->_screenPixelCount)
  {
    goto LABEL_26;
  }

  v5 = [a3 audioPayloads];
  if (v5 == self->_audioPayloads || (v6 = [(NSSet *)v5 isEqual:?]) != 0)
  {
    v7 = [a3 supportedCipherSuites];
    if (v7 == self->_supportedCipherSuites || (v6 = [(NSOrderedSet *)v7 isEqual:?]) != 0)
    {
      v8 = [a3 payloadPreference];
      if (v8 == self->_payloadPreference || (v6 = [(NSArray *)v8 isEqual:?]) != 0)
      {
        v9 = [a3 videoPayloads];
        if (v9 == self->_videoPayloads || (v6 = [(NSArray *)v9 isEqual:?]) != 0)
        {
          v10 = [a3 videoParameterSet];
          if (v10 == self->_videoParameterSet || (v6 = [(NSArray *)v10 isEqual:?]) != 0)
          {
            v11 = [a3 videoFeatureStrings];
            if (v11 == self->_videoFeatureStrings || (v6 = [(NSDictionary *)v11 isEqual:?]) != 0)
            {
              v12 = [a3 videoFeatureStringsFixedPosition];
              if (v12 == self->_videoFeatureStringsFixedPosition || (v6 = [(NSDictionary *)v12 isEqual:?]) != 0)
              {
                if ([a3 videoRuleCollections])
                {
                  if ([objc_msgSend(a3 "videoRuleCollections")])
                  {
LABEL_23:
                    LOBYTE(v6) = 1;
                    return v6;
                  }
                }

                else if (!self->_videoRuleCollections)
                {
                  goto LABEL_23;
                }

LABEL_26:
                LOBYTE(v6) = 0;
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

- (void)updateWithAudioConfiguration:(id)a3 mediaType:(unsigned __int8)a4
{
  v4 = a4;
  self->_allowAudioRecording = [a3 allowAudioRecording];

  self->_audioPayloads = [a3 audioPayloads];
  v7 = &unk_1F579CFF0;
  if (v4 != 4)
  {
    v7 = 0;
  }

  if (v4 == 1)
  {
    v8 = &unk_1F579CFD8;
  }

  else
  {
    v8 = v7;
  }

  self->_payloadPreference = v8;
}

+ (void)updateCameraU1Config:(id)a3 cameraConfiguration:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = [a4 videoRuleCollections];
  [a3 setVideoRuleCollections:v6];
  [a3 setVideoFeatureStrings:{objc_msgSend(a4, "videoFeatureStrings")}];
  [a3 setVideoFeatureStringsFixedPosition:{objc_msgSend(a4, "videoFeatureStringsFixedPosition")}];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v8 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v9;
      v30 = 2080;
      v31 = "+[VCMediaNegotiatorStreamGroupU1Configuration updateCameraU1Config:cameraConfiguration:]";
      v32 = 1024;
      v33 = 161;
      v34 = 2112;
      v35 = [a4 videoFeatureStrings];
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d u1Config.videoFeatureStrings=%@", buf, 0x26u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [a4 videoFeatureStringsFixedPosition];
      *buf = 136315906;
      *&buf[4] = v11;
      v30 = 2080;
      v31 = "+[VCMediaNegotiatorStreamGroupU1Configuration updateCameraU1Config:cameraConfiguration:]";
      v32 = 1024;
      v33 = 162;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d u1Config.videoFeatureStringsFixedPosition=%@", buf, 0x26u);
    }
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v14)
  {
    +[VCMediaNegotiatorStreamGroupU1Configuration updateCameraU1Config:cameraConfiguration:];
LABEL_22:
    v16 = *buf;
    goto LABEL_19;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v15)
  {
    +[VCMediaNegotiatorStreamGroupU1Configuration updateCameraU1Config:cameraConfiguration:];
    goto LABEL_22;
  }

  v16 = v15;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [v6 supportedPayloads];
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v25 + 1) + 8 * i) unsignedIntValue];
        if (v22 != 126)
        {
          v23 = v22;
          [v14 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v22)}];
          [v16 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", VCVideoParamaterSets_DefaultSupportedSets(v23))}];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v19);
  }

  [a3 setVideoPayloads:v14];
  [a3 setVideoParameterSet:v16];
LABEL_19:
}

+ (BOOL)updateVideoPayloadsAndParametersForU1Config:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v4)
  {
    [(VCMediaNegotiatorStreamGroupU1Configuration *)&v15 updateVideoPayloadsAndParametersForU1Config:?];
LABEL_14:
    v6 = v15;
    v13 = v16;
    goto LABEL_11;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v5)
  {
    [(VCMediaNegotiatorStreamGroupU1Configuration *)&v15 updateVideoPayloadsAndParametersForU1Config:?];
    goto LABEL_14;
  }

  v6 = v5;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [objc_msgSend(a3 "videoRuleCollections")];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) unsignedIntValue];
        [v4 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v12)}];
        [v6 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", VCVideoParamaterSets_DefaultSupportedSets(v12))}];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v9);
  }

  [a3 setVideoPayloads:v4];
  [a3 setVideoParameterSet:v6];
  v13 = 1;
LABEL_11:

  return v13;
}

+ (void)updateScreenU1Config:(id)a3 screenConfiguration:(id)a4
{
  [a3 setScreenPixelCount:5603328];
  v7 = +[VCVideoRuleCollectionsScreen newU1VideoRuleCollections];
  if (v7)
  {
    [a3 setVideoRuleCollections:v7];
    [a3 setVideoFeatureStrings:{objc_msgSend(a4, "videoFeatureStrings")}];
    if ([a3 videoFeatureStrings])
    {
      [a3 setVideoFeatureStringsFixedPosition:{objc_msgSend(a4, "videoFeatureStringsFixedPosition")}];
      if ([a3 videoFeatureStringsFixedPosition])
      {
        if (([a1 updateVideoPayloadsAndParametersForU1Config:a3] & 1) == 0)
        {
          +[VCMediaNegotiatorStreamGroupU1Configuration updateScreenU1Config:screenConfiguration:];
        }
      }

      else
      {
        +[VCMediaNegotiatorStreamGroupU1Configuration updateScreenU1Config:screenConfiguration:];
      }
    }

    else
    {
      +[VCMediaNegotiatorStreamGroupU1Configuration updateScreenU1Config:screenConfiguration:];
    }
  }

  else
  {
    +[VCMediaNegotiatorStreamGroupU1Configuration updateScreenU1Config:screenConfiguration:];
  }
}

+ (void)updateFaceTextureU1Config:(id)a3 faceTextureConfiguration:(id)a4
{
  v7 = [a4 videoRuleCollections];
  if (v7)
  {
    [a3 setVideoRuleCollections:v7];
    [a3 setVideoFeatureStringsFixedPosition:{objc_msgSend(a4, "videoFeatureStringsFixedPosition")}];
    if ([a3 videoFeatureStringsFixedPosition])
    {
      if (([a1 updateVideoPayloadsAndParametersForU1Config:a3] & 1) == 0)
      {
        +[VCMediaNegotiatorStreamGroupU1Configuration updateFaceTextureU1Config:faceTextureConfiguration:];
      }
    }

    else
    {
      +[VCMediaNegotiatorStreamGroupU1Configuration updateFaceTextureU1Config:faceTextureConfiguration:];
    }
  }

  else
  {
    +[VCMediaNegotiatorStreamGroupU1Configuration updateFaceTextureU1Config:faceTextureConfiguration:];
  }
}

+ (void)updateBodyDataU1Config:(id)a3 bodyDataConfiguration:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [a4 videoRuleCollections];
  if (!v5)
  {
    +[VCMediaNegotiatorStreamGroupU1Configuration updateBodyDataU1Config:bodyDataConfiguration:];
LABEL_14:
    v8 = v15;
    goto LABEL_11;
  }

  v6 = v5;
  [a3 setVideoRuleCollections:v5];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v7)
  {
    +[VCMediaNegotiatorStreamGroupU1Configuration updateBodyDataU1Config:bodyDataConfiguration:];
    goto LABEL_14;
  }

  v8 = v7;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v6 supportedPayloads];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * v13) unsignedIntValue];
        [v8 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v14)}];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v11);
  }

  [a3 setVideoPayloads:v8];
LABEL_11:
}

- (id)initStreamGroupU1ConfigForGroupId:(unsigned int)a3 withLocalConfig:(id)a4
{
  v5 = *&a3;
  v22 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v7;
      v16 = 2080;
      v17 = "[VCMediaNegotiatorStreamGroupU1Configuration initStreamGroupU1ConfigForGroupId:withLocalConfig:]";
      v18 = 1024;
      v19 = 267;
      v20 = 2080;
      v21 = FourccToCStr(v5);
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Initialize stream group U1 config for groupID=%s", buf, 0x26u);
    }
  }

  if (![VCMediaNegotiatorStreamGroupU1Configuration ssrcForStreamGroup:v5 localConfig:a4 ssrc:&v14])
  {
    [VCMediaNegotiatorStreamGroupU1Configuration initStreamGroupU1ConfigForGroupId:v5 withLocalConfig:self];
    return 0;
  }

  v9 = [(VCMediaNegotiatorStreamGroupU1Configuration *)self initWithSSRC:v14];
  if (!v9)
  {
    [VCMediaNegotiatorStreamGroupU1Configuration initStreamGroupU1ConfigForGroupId:v5 withLocalConfig:?];
    return *buf;
  }

  v10 = v9;
  v11 = VCMediaNegotiatorMediaType_MediaTypeFromStreamGroupID(v5);
  v12 = [a4 mediaConfigurationForMediaType:v11];
  if (v5 <= 1835623281)
  {
    switch(v5)
    {
      case 0x62646174:
        [VCMediaNegotiatorStreamGroupU1Configuration updateBodyDataU1Config:v10 bodyDataConfiguration:v12];
        break;
      case 0x63616D65:
        [VCMediaNegotiatorStreamGroupU1Configuration updateCameraU1Config:v10 cameraConfiguration:v12];
        break;
      case 0x66747874:
        [VCMediaNegotiatorStreamGroupU1Configuration updateFaceTextureU1Config:v10 faceTextureConfiguration:v12];
        break;
    }

    goto LABEL_18;
  }

  switch(v5)
  {
    case 0x73797361:
      goto LABEL_14;
    case 0x73637265:
      [VCMediaNegotiatorStreamGroupU1Configuration updateScreenU1Config:v10 screenConfiguration:v12];
      break;
    case 0x6D696372:
LABEL_14:
      [(VCMediaNegotiatorStreamGroupU1Configuration *)v10 updateWithAudioConfiguration:v12 mediaType:v11];
      break;
  }

LABEL_18:
  v10->_supportedCipherSuites = [VCEncryptionRules supportedCipherSuitesForStreamGroupID:v5 isOneToOne:1];
  v10->_supportedDirection = 3;
  v10->_videoFrameMetadataSupportedVersion = [a4 videoFrameMetadataSupportedVersion];
  v10->_fullScreenFrontCameraCaptureSupported = [a4 frontCameraFullScreenSupported];
  v10->_fullScreenBackCameraCaptureSupported = [a4 backCameraFullScreenSupported];
  v10->_deviceInitialOrientation = [a4 deviceInitialOrientation];
  v10->_enableACC24ForU1 = [a4 enableACC24ForU1];
  return v10;
}

+ (id)negotiatedAudioSettingsForGroupID:(unsigned int)a3 localU1Config:(id)a4 remoteU1Config:(id)a5
{
  v6 = *&a3;
  if (a3 == 1937339233)
  {
    v8 = [VCMediaNegotiatorStreamGroupU1Configuration negotiatedSystemAudioSettingsBetweenLocalU1Config:a4 remoteU1Config:a5];
  }

  else
  {
    if (a3 != 1835623282)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = [VCMediaNegotiatorStreamGroupU1Configuration negotiatedMicrophoneSettingsBetweenLocalU1Config:a4 remoteU1Config:a5];
  }

  v9 = v8;
LABEL_7:
  [v9 setCipherSuite:{objc_msgSend(a1, "negotiateU1CipherSuiteForStreamGroupID:remoteSupportedCipherSuites:", v6, objc_msgSend(a5, "supportedCipherSuites"))}];
  return v9;
}

+ (id)negotiatedSystemAudioSettingsBetweenLocalU1Config:(id)a3 remoteU1Config:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = +[VCHardwareSettings supportsDedicatedSystemAudioStream];
  v7 = +[VCAudioRuleCollection getForcedPayload];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = v8;
      v18 = 2080;
      v19 = "+[VCMediaNegotiatorStreamGroupU1Configuration negotiatedSystemAudioSettingsBetweenLocalU1Config:remoteU1Config:]";
      v20 = 1024;
      v21 = 324;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stream group found for system audio.", &v16, 0x1Cu);
    }
  }

  v10 = -[VCMediaNegotiatorResultsAudio initWithACC24ForU1Enabled:]([VCMediaNegotiatorResultsAudio alloc], "initWithACC24ForU1Enabled:", [a3 enableACC24ForU1]);
  if (!v10)
  {
    +[VCMediaNegotiatorStreamGroupU1Configuration negotiatedSystemAudioSettingsBetweenLocalU1Config:remoteU1Config:];
    goto LABEL_24;
  }

  if ([a4 supportedDirection] == 2)
  {
    a4 = 0;
  }

  if (!a4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315650;
        v17 = v12;
        v18 = 2080;
        v19 = "+[VCMediaNegotiatorStreamGroupU1Configuration negotiatedSystemAudioSettingsBetweenLocalU1Config:remoteU1Config:]";
        v20 = 1024;
        v21 = 341;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Stream group has no remote U1 config for system audio. Check for standalone system audio support.", &v16, 0x1Cu);
      }
    }

    if (v6)
    {
      v11 = 0;
      goto LABEL_14;
    }

    +[VCMediaNegotiatorStreamGroupU1Configuration negotiatedSystemAudioSettingsBetweenLocalU1Config:remoteU1Config:];
LABEL_24:

    v10 = 0;
    return v10;
  }

  v11 = [a4 ssrc];
LABEL_14:
  [(VCMediaNegotiatorResultsAudio *)v10 setRemoteSSRC:v11];
  [(VCMediaNegotiatorResultsAudio *)v10 setAudioUnitModel:65792];
  [(VCMediaNegotiatorResultsAudio *)v10 setUseSBR:1];
  if ([a3 allowAudioRecording])
  {
    v14 = [a4 allowAudioRecording];
  }

  else
  {
    v14 = 0;
  }

  [(VCMediaNegotiatorResultsAudio *)v10 setAllowRecording:v14];
  [(VCMediaNegotiatorResultsAudio *)v10 setAllowSwitching:v7 == 128];
  if (v7 == 128)
  {
    +[VCMediaNegotiatorBase setupNegotiatedAudioPayloads:negotiatedAudioSettings:primaryPayloadPreference:](VCMediaNegotiatorBase, "setupNegotiatedAudioPayloads:negotiatedAudioSettings:primaryPayloadPreference:", [a4 audioPayloads], v10, objc_msgSend(a3, "payloadPreference"));
    if ([(VCMediaNegotiatorResultsAudio *)v10 primaryPayload]== 128 && v6)
    {
      +[VCMediaNegotiatorBase setupNegotiatedAudioPayloads:negotiatedAudioSettings:primaryPayloadPreference:](VCMediaNegotiatorBase, "setupNegotiatedAudioPayloads:negotiatedAudioSettings:primaryPayloadPreference:", [MEMORY[0x1E695DFD8] setWithArray:&unk_1F579D008], v10, &unk_1F579D020);
    }
  }

  else
  {
    [(VCMediaNegotiatorResultsAudio *)v10 setPrimaryPayload:v7];
  }

  return v10;
}

+ (int64_t)negotiateU1CipherSuiteForStreamGroupID:(unsigned int)a3 remoteSupportedCipherSuites:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = [VCEncryptionRules supportedCipherSuitesForStreamGroupID:*&a3 isOneToOne:1];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        if ([a4 containsObject:v11])
        {
          v14 = [v11 integerValue];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              v18 = 136316418;
              v19 = v15;
              v20 = 2080;
              v21 = "+[VCMediaNegotiatorStreamGroupU1Configuration negotiateU1CipherSuiteForStreamGroupID:remoteSupportedCipherSuites:]";
              v22 = 1024;
              v23 = 377;
              v24 = 2080;
              v25 = VCMediaStreamCipherSuite_Description(v14);
              v26 = 2048;
              v27 = v14;
              v28 = 2080;
              v29 = FourccToCStr(a3);
              _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Negotiating cipherSuite=%s [%ld] for streamGroupID=%s", &v18, 0x3Au);
            }
          }

          return v14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315906;
      v19 = v12;
      v20 = 2080;
      v21 = "+[VCMediaNegotiatorStreamGroupU1Configuration negotiateU1CipherSuiteForStreamGroupID:remoteSupportedCipherSuites:]";
      v22 = 1024;
      v23 = 381;
      v24 = 2080;
      v25 = FourccToCStr(a3);
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Falling back to VCMediaStreamCipherSuiteCipherAES128AuthNoneRCCM3 for streamGroupID=%s", &v18, 0x26u);
    }
  }

  return 3;
}

+ (id)negotiatedMicrophoneSettingsBetweenLocalU1Config:(id)a3 remoteU1Config:(id)a4
{
  v6 = +[VCAudioRuleCollection getForcedPayload];
  v7 = -[VCMediaNegotiatorResultsAudio initWithACC24ForU1Enabled:]([VCMediaNegotiatorResultsAudio alloc], "initWithACC24ForU1Enabled:", [a3 enableACC24ForU1]);
  if (!v7)
  {
    +[VCMediaNegotiatorStreamGroupU1Configuration negotiatedMicrophoneSettingsBetweenLocalU1Config:remoteU1Config:];
LABEL_13:

    v7 = 0;
    return v7;
  }

  if (!a3 || !a4)
  {
    +[VCMediaNegotiatorStreamGroupU1Configuration negotiatedMicrophoneSettingsBetweenLocalU1Config:remoteU1Config:];
    goto LABEL_13;
  }

  -[VCMediaNegotiatorResultsAudio setRemoteSSRC:](v7, "setRemoteSSRC:", [a4 ssrc]);
  [(VCMediaNegotiatorResultsAudio *)v7 setAudioUnitModel:65792];
  [(VCMediaNegotiatorResultsAudio *)v7 setUseSBR:1];
  if ([a3 allowAudioRecording])
  {
    v8 = [a4 allowAudioRecording];
  }

  else
  {
    v8 = 0;
  }

  [(VCMediaNegotiatorResultsAudio *)v7 setAllowRecording:v8];
  [(VCMediaNegotiatorResultsAudio *)v7 setAllowSwitching:v6 == 128];
  if (v6 == 128)
  {
    v9 = +[VCMediaNegotiatorBase newNegotiatedAudioPayloadsWithLocalPayloads:remotePayloads:](VCMediaNegotiatorBase, "newNegotiatedAudioPayloadsWithLocalPayloads:remotePayloads:", [a3 audioPayloads], objc_msgSend(a4, "audioPayloads"));
    +[VCMediaNegotiatorBase setupNegotiatedAudioPayloads:negotiatedAudioSettings:primaryPayloadPreference:](VCMediaNegotiatorBase, "setupNegotiatedAudioPayloads:negotiatedAudioSettings:primaryPayloadPreference:", v9, v7, [a3 payloadPreference]);
  }

  else
  {
    [(VCMediaNegotiatorResultsAudio *)v7 setPrimaryPayload:v6];
  }

  return v7;
}

+ (id)negotiatedVideoSettingsForGroupID:(unsigned int)a3 localU1Config:(id)a4 remoteU1Config:(id)a5
{
  v7 = *&a3;
  v36 = *MEMORY[0x1E69E9840];
  if (a3 == 1935897189)
  {
    v9 = [VCMediaNegotiatorStreamGroupU1Configuration negotiatedScreenSettingsBetweenLocalU1Config:a4 remoteU1Config:a5];
  }

  else
  {
    v9 = [VCMediaNegotiatorStreamGroupU1Configuration negotiatedVideoSettingsBetweenLocalU1Config:a4 remoteU1Config:a5 streamGroupID:*&a3];
  }

  v10 = v9;
  [v9 setCipherSuite:{objc_msgSend(a1, "negotiateU1CipherSuiteForStreamGroupID:remoteSupportedCipherSuites:", v7, objc_msgSend(a5, "supportedCipherSuites"))}];
  if (v7 == 1667329381)
  {
    v11 = +[VCHardwareSettings supportsFullBleedReceive];
    [v10 setAfbRxFrontCameraEnabled:{objc_msgSend(a5, "fullScreenFrontCameraCaptureSupported") & v11}];
    [v10 setAfbRxBackCameraEnabled:{objc_msgSend(a5, "fullScreenBackCameraCaptureSupported") & v11}];
    [v10 setRemoteDeviceInitialOrientation:{objc_msgSend(a5, "deviceInitialOrientation")}];
    v12 = [a5 videoFrameMetadataSupportedVersion];
    v13 = [a4 videoFrameMetadataSupportedVersion];
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    [v10 setVideoFrameMetadataSupportedVersion:v14];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136317186;
        v19 = v15;
        v20 = 2080;
        v21 = "+[VCMediaNegotiatorStreamGroupU1Configuration negotiatedVideoSettingsForGroupID:localU1Config:remoteU1Config:]";
        v22 = 1024;
        v23 = 438;
        v24 = 1024;
        v25 = [v10 afbRxFrontCameraEnabled];
        v26 = 1024;
        v27 = [v10 afbRxBackCameraEnabled];
        v28 = 1024;
        v29 = [v10 remoteDeviceInitialOrientation];
        v30 = 1024;
        v31 = [v10 videoFrameMetadataSupportedVersion];
        v32 = 1024;
        v33 = [a4 videoFrameMetadataSupportedVersion];
        v34 = 1024;
        v35 = [a5 videoFrameMetadataSupportedVersion];
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [RDAR] afbRxFrontCameraEnabled=%d afbRxBackCameraEnabled=%d remoteDeviceInitialOrientation=%d videoFrameMetadataSupportedVersion=%d (L:%d R:%d)", &v18, 0x40u);
      }
    }
  }

  return v10;
}

+ (id)negotiatedVideoSettingsBetweenLocalU1Config:(id)a3 remoteU1Config:(id)a4 streamGroupID:(unsigned int)a5
{
  v8 = objc_alloc_init(VCMediaNegotiatorResultsVideo);
  v9 = v8;
  if (!v8)
  {
    [VCMediaNegotiatorStreamGroupU1Configuration negotiatedVideoSettingsBetweenLocalU1Config:a5 remoteU1Config:? streamGroupID:?];
    goto LABEL_6;
  }

  [(VCMediaNegotiatorResultsVideo *)v8 setIsSupported:0];
  if (!a3 || !a4)
  {
    [VCMediaNegotiatorStreamGroupU1Configuration negotiatedVideoSettingsBetweenLocalU1Config:a5 remoteU1Config:? streamGroupID:?];
    goto LABEL_6;
  }

  if (![objc_msgSend(objc_msgSend(a3 "videoRuleCollections")])
  {
    [VCMediaNegotiatorStreamGroupU1Configuration negotiatedVideoSettingsBetweenLocalU1Config:a5 remoteU1Config:? streamGroupID:?];
    goto LABEL_6;
  }

  if (![VCMediaNegotiatorStreamGroupU1Configuration updateCommonNegotiatedVideoSettings:v9 localU1Config:a3 remoteU1Config:a4])
  {
LABEL_6:

    v9 = 0;
  }

  return v9;
}

+ (id)negotiatedScreenSettingsBetweenLocalU1Config:(id)a3 remoteU1Config:(id)a4
{
  v6 = objc_alloc_init(VCMediaNegotiatorResultsVideo);
  v7 = v6;
  if (!v6)
  {
    +[VCMediaNegotiatorStreamGroupU1Configuration negotiatedScreenSettingsBetweenLocalU1Config:remoteU1Config:];
    goto LABEL_10;
  }

  [(VCMediaNegotiatorResultsVideo *)v6 setIsSupported:0];
  if (!a3 || !a4)
  {
    +[VCMediaNegotiatorStreamGroupU1Configuration negotiatedScreenSettingsBetweenLocalU1Config:remoteU1Config:];
    goto LABEL_10;
  }

  if (![objc_msgSend(objc_msgSend(a3 "videoRuleCollections")])
  {
    +[VCMediaNegotiatorStreamGroupU1Configuration negotiatedScreenSettingsBetweenLocalU1Config:remoteU1Config:];
    goto LABEL_10;
  }

  +[VideoUtil computeResolutionForMainDisplayWithMaxScreenPixelCount:](VideoUtil, "computeResolutionForMainDisplayWithMaxScreenPixelCount:", [a4 screenPixelCount]);
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    +[VCMediaNegotiatorStreamGroupU1Configuration negotiatedScreenSettingsBetweenLocalU1Config:remoteU1Config:];
    goto LABEL_10;
  }

  v11 = v9;
  [(VCMediaNegotiatorResultsVideo *)v7 setCustomVideoWidth:v8];
  [(VCMediaNegotiatorResultsVideo *)v7 setCustomVideoHeight:v11];
  [(VCMediaNegotiatorResultsVideo *)v7 setIsRTCPFBEnabled:0];
  [(VCMediaNegotiatorResultsVideo *)v7 addPixelFormatSet:&unk_1F57999C0];
  if (![VCMediaNegotiatorStreamGroupU1Configuration updateCommonNegotiatedVideoSettings:v7 localU1Config:a3 remoteU1Config:a4])
  {
LABEL_10:

    v7 = 0;
  }

  return v7;
}

+ (void)negotiateFeatureStrings:(id)a3 localU1Config:(id)a4 remoteU1Config:(id)a5
{
  v6 = a4;
  v61 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl() && [v6 videoFeatureStringsFixedPosition] && objc_msgSend(a5, "videoFeatureStringsFixedPosition"))
  {
    v32 = [MEMORY[0x1E695DF90] dictionary];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = [v6 videoFeatureStringsFixedPosition];
    v35 = [obj countByEnumeratingWithState:&v57 objects:v56 count:16];
    if (v35)
    {
      v8 = *v58;
      v30 = *v58;
      v31 = a5;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v58 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v57 + 1) + 8 * i);
          v11 = [objc_msgSend(v6 "videoFeatureStringsFixedPosition")];
          v36 = v10;
          v12 = [objc_msgSend(a5 "videoFeatureStringsFixedPosition")];
          if (v11)
          {
            v13 = v12 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            v14 = v12;
            v15 = VCPCreateNegotiatedFLS();
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            v16 = [&unk_1F579D038 countByEnumeratingWithState:&v52 objects:v51 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v53;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v53 != v18)
                  {
                    objc_enumerationMutation(&unk_1F579D038);
                  }

                  v20 = [VCVideoFeatureListStringHelper extractKeyAndValueStringFromFeatureString:v14 prefix:*(*(&v52 + 1) + 8 * j)];
                  if (v20)
                  {
                    v21 = [v15 stringByAppendingFormat:@"%@;", v20];

                    v15 = v21;
                  }
                }

                v17 = [&unk_1F579D038 countByEnumeratingWithState:&v52 objects:v51 count:16];
              }

              while (v17);
            }

            [v32 setObject:v15 forKeyedSubscript:v36];

            v8 = v30;
            a5 = v31;
            v6 = a4;
          }
        }

        v35 = [obj countByEnumeratingWithState:&v57 objects:v56 count:16];
      }

      while (v35);
    }

    [a3 setFeatureStrings:v32];
    v22 = 1;
  }

  else
  {
    [a3 setFeatureStrings:{objc_msgSend(a5, "videoFeatureStrings")}];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v38 = v23;
        v39 = 2080;
        v40 = "+[VCMediaNegotiatorStreamGroupU1Configuration negotiateFeatureStrings:localU1Config:remoteU1Config:]";
        v41 = 1024;
        v42 = 516;
        v43 = 1024;
        v44 = _os_feature_enabled_impl();
        v45 = 2112;
        v46 = [v6 videoFeatureStringsFixedPosition];
        v6 = a4;
        v47 = 2112;
        v48 = [a5 videoFeatureStringsFixedPosition];
        _os_log_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [FLS] Fallback to legacy. feature flag VideoCodecFeatureBitfield=%d, localFLSFixedPosition=%@, remoteFLSFixedPosition=%@", buf, 0x36u);
      }
    }

    v22 = 0;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v27 = [a3 featureStrings];
      if (v22)
      {
        v28 = [v6 videoFeatureStringsFixedPosition];
        v29 = [a5 videoFeatureStringsFixedPosition];
      }

      else
      {
        v28 = [v6 videoFeatureStrings];
        v29 = [a5 videoFeatureStrings];
      }

      *buf = 136316674;
      v38 = v25;
      v39 = 2080;
      v40 = "+[VCMediaNegotiatorStreamGroupU1Configuration negotiateFeatureStrings:localU1Config:remoteU1Config:]";
      v41 = 1024;
      v42 = 520;
      v43 = 1024;
      v44 = v22;
      v45 = 2112;
      v46 = v27;
      v47 = 2112;
      v48 = v28;
      v49 = 2112;
      v50 = v29;
      _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d [FLS] useFLSFixedPosition=%d. negotiatedSettings.videoFeatureStrings=%@. Local=%@, Remote=%@", buf, 0x40u);
    }
  }
}

+ (BOOL)updateCommonNegotiatedVideoSettings:(id)a3 localU1Config:(id)a4 remoteU1Config:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  [a1 negotiateFeatureStrings:? localU1Config:? remoteU1Config:?];
  [a3 setRemoteSSRC:{objc_msgSend(a5, "ssrc")}];
  v7 = 1;
  [a3 setTilesPerFrame:1];
  [a3 setLtrpEnabled:1];
  v8 = [a5 videoParameterSet];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __112__VCMediaNegotiatorStreamGroupU1Configuration_updateCommonNegotiatedVideoSettings_localU1Config_remoteU1Config___block_invoke;
  v20[3] = &unk_1E85F6378;
  v20[4] = a5;
  v20[5] = a3;
  v9 = a3;
  [v8 enumerateObjectsUsingBlock:v20];
  v10 = a5;
  obj = [a5 payloadPreference];
  while (2)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = [obj countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = v7;
        if (+[VCMediaNegotiatorBase selectBestVideoRuleForTransport:payload:encodingType:videoSettings:localVideoRuleCollection:remoteVideoRuleCollection:](VCMediaNegotiatorBase, "selectBestVideoRuleForTransport:payload:encodingType:videoSettings:localVideoRuleCollection:remoteVideoRuleCollection:", 1, [*(*(&v23 + 1) + 8 * v14) unsignedIntValue], v7, v9, objc_msgSend(a4, "videoRuleCollections"), objc_msgSend(v10, "videoRuleCollections")))
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [obj countByEnumeratingWithState:&v23 objects:v22 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          goto LABEL_14;
        }
      }

      v7 = (v7 + 1);
      if (v15 < 2)
      {
        continue;
      }

      v16 = 1;
      [v9 setIsSupported:1];
    }

    else
    {
LABEL_14:
      [VCMediaNegotiatorStreamGroupU1Configuration updateCommonNegotiatedVideoSettings:v7 localU1Config:&v21 remoteU1Config:?];
      return v21;
    }

    return v16;
  }
}

uint64_t __112__VCMediaNegotiatorStreamGroupU1Configuration_updateCommonNegotiatedVideoSettings_localU1Config_remoteU1Config___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(objc_msgSend(*(a1 + 32) "videoPayloads")];
  v6 = *(a1 + 40);

  return [v6 addParameterSet:a2 payload:v5];
}

+ (BOOL)ssrcForStreamGroup:(unsigned int)a3 localConfig:(id)a4 ssrc:(unsigned int *)a5
{
  result = 0;
  if (a3 > 1835623281)
  {
    if (a3 != 1835623282 && a3 != 1937339233)
    {
      v6 = 1935897189;
LABEL_8:
      if (a3 != v6)
      {
        return result;
      }
    }
  }

  else if (a3 != 1650745716 && a3 != 1667329381)
  {
    v6 = 1718909044;
    goto LABEL_8;
  }

  *a5 = [objc_msgSend(a4 mediaConfigurationForMediaType:{VCMediaNegotiatorMediaType_MediaTypeFromStreamGroupID(a3)), "ssrc"}];
  return 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    [v4 setSupportedDirection:self->_supportedDirection];
    [v5 setSsrc:self->_ssrc];
    [v5 setAllowAudioRecording:self->_allowAudioRecording];
    [v5 setScreenPixelCount:self->_screenPixelCount];
    [v5 setSupportedCipherSuites:self->_supportedCipherSuites];
    [v5 setAudioPayloads:self->_audioPayloads];
    [v5 setPayloadPreference:self->_payloadPreference];
    [v5 setVideoPayloads:self->_videoPayloads];
    [v5 setVideoParameterSet:self->_videoParameterSet];
    [v5 setVideoFeatureStrings:self->_videoFeatureStrings];
    [v5 setVideoFeatureStringsFixedPosition:self->_videoFeatureStringsFixedPosition];
    [v5 setVideoRuleCollections:self->_videoRuleCollections];
  }

  return v5;
}

+ (void)updateCameraU1Config:cameraConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)updateCameraU1Config:cameraConfiguration:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)updateVideoPayloadsAndParametersForU1Config:(uint64_t)a1 .cold.1(uint64_t a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v3, v4, " [%s] %s:%d Failed to allocate videoParameterSet array", v5, v6, v7, v8, v9);
    }
  }

  *a2 = 0;
  OUTLINED_FUNCTION_20();
}

+ (void)updateVideoPayloadsAndParametersForU1Config:(uint64_t)a1 .cold.2(uint64_t a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_13_8(&dword_1DB56E000, v3, v4, " [%s] %s:%d Failed to allocate videoPayloads array", v5, v6, v7, v8, v9);
    }
  }

  *a2 = 0;
  OUTLINED_FUNCTION_20();
}

+ (void)updateScreenU1Config:screenConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

+ (void)updateScreenU1Config:screenConfiguration:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

+ (void)updateScreenU1Config:screenConfiguration:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

+ (void)updateScreenU1Config:screenConfiguration:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_19_3())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }
}

+ (void)updateFaceTextureU1Config:faceTextureConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_12_6();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

+ (void)updateFaceTextureU1Config:faceTextureConfiguration:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

+ (void)updateFaceTextureU1Config:faceTextureConfiguration:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_19_3())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }
}

+ (void)updateBodyDataU1Config:bodyDataConfiguration:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)updateBodyDataU1Config:bodyDataConfiguration:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v0 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      v3 = 243;
      OUTLINED_FUNCTION_29_0(&dword_1DB56E000, v0, v1, " [%s] %s:%d Skipping negotiating body data settings, as the local device does not support body data", v2);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)initStreamGroupU1ConfigForGroupId:(int)a1 withLocalConfig:(void *)a2 .cold.1(int a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      FourccToCStr(a1);
      OUTLINED_FUNCTION_10();
      v7 = v5;
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d One to one config not supported for groupID=%s", v6, 0x26u);
    }
  }
}

- (void)initStreamGroupU1ConfigForGroupId:(int)a1 withLocalConfig:.cold.2(int a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      FourccToCStr(a1);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)negotiatedSystemAudioSettingsBetweenLocalU1Config:remoteU1Config:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

+ (void)negotiatedSystemAudioSettingsBetweenLocalU1Config:remoteU1Config:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

+ (void)negotiatedMicrophoneSettingsBetweenLocalU1Config:remoteU1Config:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

+ (void)negotiatedMicrophoneSettingsBetweenLocalU1Config:remoteU1Config:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

+ (void)negotiatedVideoSettingsBetweenLocalU1Config:(int)a1 remoteU1Config:streamGroupID:.cold.1(int a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_19_3())
    {
      FourccToCStr(a1);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_4_0();
      _os_log_impl(v2, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 0x26u);
    }
  }
}

+ (void)negotiatedVideoSettingsBetweenLocalU1Config:(int)a1 remoteU1Config:streamGroupID:.cold.2(int a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      FourccToCStr(a1);
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x3Au);
    }
  }
}

+ (void)negotiatedVideoSettingsBetweenLocalU1Config:(int)a1 remoteU1Config:streamGroupID:.cold.3(int a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      FourccToCStr(a1);
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_4_8();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
    }
  }
}

+ (void)negotiatedScreenSettingsBetweenLocalU1Config:remoteU1Config:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

+ (void)negotiatedScreenSettingsBetweenLocalU1Config:remoteU1Config:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_19_3())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_29_0(v0, v1, v2, v3, v4);
    }
  }
}

+ (void)negotiatedScreenSettingsBetweenLocalU1Config:remoteU1Config:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
    }
  }
}

+ (void)negotiatedScreenSettingsBetweenLocalU1Config:remoteU1Config:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

+ (void)updateCommonNegotiatedVideoSettings:(uint64_t)a1 localU1Config:(_BYTE *)a2 remoteU1Config:.cold.1(uint64_t a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x28u);
    }
  }

  *a2 = 0;
}

@end