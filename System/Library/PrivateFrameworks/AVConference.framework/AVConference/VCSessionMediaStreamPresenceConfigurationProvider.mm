@interface VCSessionMediaStreamPresenceConfigurationProvider
+ (id)bdatGroupDisabled;
+ (id)bdatV2GroupDisabled;
+ (id)defaultOneToOneTierTable:(unsigned int)a3 redundancyEnabled:(BOOL)a4;
+ (id)fdatGroupDisabled;
+ (id)foregroundCameraOneToOneTierTable:(unsigned int)a3 redundancyEnabled:(BOOL)a4;
+ (id)ftxtGroupDisabled;
+ (id)ftxtV2GroupDisabled;
+ (id)oneToOneTierTableForStreamGroupID:(unsigned int)a3 splitType:(unsigned int)a4 redundancyEnabled:(BOOL)a5;
+ (id)publicSessionConfigurationForType:(unsigned int)a3;
+ (id)replaceTag:(id)a3;
+ (id)resourceNameForConfigurationType:(unsigned int)a3;
+ (id)screenGroupDisabled;
+ (id)sessionConfigurationForType:(unsigned int)a3;
+ (id)siriGroupDisabled;
+ (id)sysaGroupDisabled;
+ (unsigned)defaultRemainingBitrateSplit:(unsigned int)a3;
+ (unsigned)foregroundCameraRemainingBitrateSplit:(unsigned int)a3;
+ (unsigned)readUint32WithPList:(id)a3 key:(id)a4 defaultValue:(unsigned int)a5;
+ (unsigned)remainingBitrateSplitQualityIndexForStreamGroup:(unsigned int)a3 splitType:(unsigned int)a4;
+ (unsigned)streamSSRCForStreamGroupID:(unsigned int)a3 streamIndex:(int)a4;
- (BOOL)addPayload:(int)a3 audioStreamConfig:(id)a4 supportedAudioRules:(id)a5;
- (BOOL)checkEncoderSupportForCodecType:(int64_t)a3;
- (BOOL)checkEncoderSupportForConfig:(id)a3;
- (BOOL)setupAudioRedWithPlist:(id)a3 audioStreamConfig:(id)a4 supportedAudioRules:(id)a5;
- (BOOL)setupAudioRulesWithPList:(id)a3 audioStreamConfig:(id)a4 supportedAudioRules:(id)a5;
- (BOOL)setupAudioStreamGroupStreams:(id)a3 streamGroupConfig:(id)a4 supportedAudioRules:(id)a5 streamIDGenerator:(id)a6;
- (BOOL)setupRedFactorsWithPList:(id)a3 audioStreamConfig:(id)a4;
- (BOOL)setupVideoStreamGroupStreams:(id)a3 streamGroupConfig:(id)a4 streamIDGenerator:(id)a5;
- (VCSessionMediaStreamPresenceConfigurationProvider)initWithConfigurationType:(unsigned int)a3 supportedAudioRules:(id)a4 streamIDGenerator:(id)a5;
- (id)defaultEndToEndStreamGroupConfigurationForStreamGroup:(unsigned int)a3;
- (id)getVideoCodecConfigFromStreamConfigPList:(id)a3;
- (id)newAudioMultiwayConfigWithPList:(id)a3 audioRules:(id)a4 maxIDSStreamIDCount:(unsigned int)a5 streamIDGenerator:(id)a6 ssrc:(unsigned int)a7;
- (id)newAudioStreamGroupStreamConfigWithPList:(id)a3 supportedAudioRules:(id)a4 maxIDSStreamIDCount:(unsigned int)a5 streamIDGenerator:(id)a6 ssrc:(unsigned int)a7 groupID:(unsigned int)a8;
- (id)newDataStreamInputConfigurationWithPList:(id)a3;
- (id)newStreamGroupConfigurationWithPList:(id)a3 supportedAudioRules:(id)a4 streamIDGenerator:(id)a5;
- (id)newStreamGroupConfigurationsWithSupportedAudioRules:(id)a3 streamIDGenerator:(id)a4;
- (id)newStreamGroupToStreamInputsMapping;
- (id)newStreamInputConfigurations;
- (id)newVideoMultiwayConfigWithPList:(id)a3 codecType:(int64_t)a4 streamIDGenerator:(id)a5 ssrc:(unsigned int)a6;
- (id)newVideoStreamGroupStreamConfigWithPList:(id)a3 streamIDGenerator:(id)a4 ssrc:(unsigned int)a5 groupID:(unsigned int)a6 shouldSkip:(BOOL *)a7;
- (id)newVideoStreamInputConfigurationWithPList:(id)a3;
- (int64_t)getVideoCodecFromStreamCodecPList:(id)a3;
- (unsigned)setParentStreamID:(unsigned __int16)a3 videoConfig:(id)a4;
- (void)dealloc;
- (void)newStreamGroupToStreamInputsMapping;
- (void)newStreamInputConfigurations;
- (void)updateStreamConfig:(id)a3 forPayload:(int)a4 networkPayload:(unsigned int)a5 groupID:(unsigned int)a6;
@end

@implementation VCSessionMediaStreamPresenceConfigurationProvider

+ (id)resourceNameForConfigurationType:(unsigned int)a3
{
  v3 = @"session_config_GFT";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"session_config_presence";
  }

  else
  {
    return v3;
  }
}

+ (id)sessionConfigurationForType:(unsigned int)a3
{
  v3 = [VCSessionMediaStreamPresenceConfigurationProvider resourceNameForConfigurationType:?];
  if (!v3)
  {
    +[VCSessionMediaStreamPresenceConfigurationProvider sessionConfigurationForType:];
    return v5;
  }

  result = [MEMORY[0x1E696AAE8] plistForClass:objc_opt_class() withPath:v3 defaultOverride:@"sessionConfigPlist"];
  if (!result)
  {
    +[VCSessionMediaStreamPresenceConfigurationProvider sessionConfigurationForType:];
    return v5;
  }

  return result;
}

- (VCSessionMediaStreamPresenceConfigurationProvider)initWithConfigurationType:(unsigned int)a3 supportedAudioRules:(id)a4 streamIDGenerator:(id)a5
{
  v7 = *&a3;
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCSessionMediaStreamPresenceConfigurationProvider;
  v8 = [(VCSessionMediaStreamPresenceConfigurationProvider *)&v14 init];
  if (v8)
  {
    v9 = [VCSessionMediaStreamPresenceConfigurationProvider sessionConfigurationForType:v7];
    v8->_configuration = v9;
    if (v9)
    {
      v10 = [(VCSessionMediaStreamPresenceConfigurationProvider *)v8 newStreamInputConfigurations];
      v8->_streamInputConfigurations = v10;
      if (v10)
      {
        v11 = [(VCSessionMediaStreamPresenceConfigurationProvider *)v8 newStreamGroupConfigurationsWithSupportedAudioRules:a4 streamIDGenerator:a5];
        v8->_streamGroupConfigurations = v11;
        if (v11)
        {
          v12 = [(VCSessionMediaStreamPresenceConfigurationProvider *)v8 newStreamGroupToStreamInputsMapping];
          v8->_streamGroupToStreamInputMapping = v12;
          if (v12)
          {
            return v8;
          }

          [VCSessionMediaStreamPresenceConfigurationProvider initWithConfigurationType:supportedAudioRules:streamIDGenerator:];
        }

        else
        {
          [VCSessionMediaStreamPresenceConfigurationProvider initWithConfigurationType:supportedAudioRules:streamIDGenerator:];
        }
      }

      else
      {
        [VCSessionMediaStreamPresenceConfigurationProvider initWithConfigurationType:supportedAudioRules:streamIDGenerator:];
      }
    }

    else
    {
      [VCSessionMediaStreamPresenceConfigurationProvider initWithConfigurationType:supportedAudioRules:streamIDGenerator:];
    }

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCSessionMediaStreamPresenceConfigurationProvider;
  [(VCSessionMediaStreamPresenceConfigurationProvider *)&v3 dealloc];
}

- (id)newStreamGroupToStreamInputsMapping
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    streamGroupConfigurations = self->_streamGroupConfigurations;
    v5 = [(NSSet *)streamGroupConfigurations countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(streamGroupConfigurations);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 objectForKeyedSubscript:@"streamInputID"])
          {
            [v3 setObject:objc_msgSend(v9 forKeyedSubscript:{"objectForKeyedSubscript:", @"streamInputID", objc_msgSend(v9, "objectForKeyedSubscript:", @"streamGroupID"}];
          }
        }

        v6 = [(NSSet *)streamGroupConfigurations countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v6);
    }
  }

  else
  {
    [(VCSessionMediaStreamPresenceConfigurationProvider *)self newStreamGroupToStreamInputsMapping];
  }

  return v3;
}

+ (id)screenGroupDisabled
{
  v2 = MEMORY[0x1E696AD98];
  v3 = +[VCHardwareSettings supportsScreenCapture]^ 1;

  return [v2 numberWithInt:v3];
}

+ (id)bdatGroupDisabled
{
  v2 = +[VCHardwareSettings deviceClass]!= 8 || VCFeatureFlagManager_PersonaV2Enabled();
  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithBool:v2];
}

+ (id)bdatV2GroupDisabled
{
  v2 = +[VCHardwareSettings deviceClass]!= 8 || !VCFeatureFlagManager_PersonaV2Enabled();
  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithBool:v2];
}

+ (id)ftxtGroupDisabled
{
  v2 = +[VCHardwareSettings deviceClass]!= 8 || VCFeatureFlagManager_PersonaV2Enabled();
  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithBool:v2];
}

+ (id)ftxtV2GroupDisabled
{
  v2 = +[VCHardwareSettings deviceClass]!= 8 || !VCFeatureFlagManager_PersonaV2Enabled();
  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithBool:v2];
}

+ (id)fdatGroupDisabled
{
  v2 = +[VCHardwareSettings deviceClass]!= 8;
  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithBool:v2];
}

+ (id)siriGroupDisabled
{
  v2 = +[VCHardwareSettings isSiriVoiceTapSupported]^ 1;
  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithBool:v2];
}

+ (id)sysaGroupDisabled
{
  v2 = +[VCHardwareSettings supportsDedicatedSystemAudioStream]^ 1;
  v3 = MEMORY[0x1E696AD98];

  return [v3 numberWithBool:v2];
}

+ (id)replaceTag:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a3;
  }

  if ([a3 isEqualToString:@"%FRAMES_PER_SECOND_SCREENSHARE_BASE_TIER%"])
  {

    return +[VCSessionMediaStreamPresenceConfigurationProvider screenStreamBaseTierFramerate];
  }

  if ([a3 isEqualToString:@"%SCRE_GROUP_DISABLED%"])
  {

    return +[VCSessionMediaStreamPresenceConfigurationProvider screenGroupDisabled];
  }

  if ([a3 isEqualToString:@"%SYSA_GROUP_DISABLED%"])
  {

    return +[VCSessionMediaStreamPresenceConfigurationProvider sysaGroupDisabled];
  }

  if ([a3 isEqualToString:@"%FTXT_GROUP_DISABLED%"])
  {

    return +[VCSessionMediaStreamPresenceConfigurationProvider ftxtGroupDisabled];
  }

  if ([a3 isEqualToString:@"%BDAT_GROUP_DISABLED%"])
  {

    return +[VCSessionMediaStreamPresenceConfigurationProvider bdatGroupDisabled];
  }

  if ([a3 isEqualToString:@"%FTXTV2_GROUP_DISABLED%"])
  {

    return +[VCSessionMediaStreamPresenceConfigurationProvider ftxtV2GroupDisabled];
  }

  if ([a3 isEqualToString:@"%BDATV2_GROUP_DISABLED%"])
  {

    return +[VCSessionMediaStreamPresenceConfigurationProvider bdatV2GroupDisabled];
  }

  if (![a3 isEqualToString:@"%SIRI_GROUP_DISABLED%"])
  {
    return a3;
  }

  return +[VCSessionMediaStreamPresenceConfigurationProvider siriGroupDisabled];
}

+ (id)publicSessionConfigurationForType:(unsigned int)a3
{
  v3 = *&a3;
  v26 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v16 = v4;
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x1E695DF70] array];
    if (v6)
    {
      v7 = v6;
      [v5 setObject:v6 forKeyedSubscript:@"streamInputs"];
      v8 = [VCSessionMediaStreamPresenceConfigurationProvider sessionConfigurationForType:v3];
      if (v8)
      {
        v18 = v7;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        obj = [v8 objectForKeyedSubscript:@"streamInputs"];
        v20 = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
        if (v20)
        {
          v19 = *v23;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v23 != v19)
              {
                objc_enumerationMutation(obj);
              }

              v10 = *(*(&v22 + 1) + 8 * i);
              v11 = +[VCSessionMediaStreamPresenceConfigurationProvider replaceTag:](VCSessionMediaStreamPresenceConfigurationProvider, "replaceTag:", [v10 objectForKeyedSubscript:@"ignore"]);
              if (v11)
              {
                v12 = v11;
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && ([v12 BOOLValue])
                {
                  continue;
                }
              }

              v13 = [MEMORY[0x1E695DF90] dictionary];
              if (!v13)
              {
                +[VCSessionMediaStreamPresenceConfigurationProvider publicSessionConfigurationForType:];
                return v16;
              }

              v14 = v13;
              if ([v10 objectForKeyedSubscript:@"streamInputID"])
              {
                [v14 setObject:+[VCSessionMediaStreamPresenceConfigurationProvider replaceTag:](VCSessionMediaStreamPresenceConfigurationProvider forKeyedSubscript:{"replaceTag:", objc_msgSend(v10, "objectForKeyedSubscript:", @"streamInputID", @"streamInputID"}];
              }

              if ([v10 objectForKeyedSubscript:@"type"])
              {
                [v14 setObject:+[VCSessionMediaStreamPresenceConfigurationProvider replaceTag:](VCSessionMediaStreamPresenceConfigurationProvider forKeyedSubscript:{"replaceTag:", objc_msgSend(v10, "objectForKeyedSubscript:", @"type", @"type"}];
              }

              if ([v10 objectForKeyedSubscript:@"subtype"])
              {
                [v14 setObject:+[VCSessionMediaStreamPresenceConfigurationProvider replaceTag:](VCSessionMediaStreamPresenceConfigurationProvider forKeyedSubscript:{"replaceTag:", objc_msgSend(v10, "objectForKeyedSubscript:", @"subtype", @"subtype"}];
              }

              if ([v10 objectForKeyedSubscript:@"maxWidth"])
              {
                [v14 setObject:+[VCSessionMediaStreamPresenceConfigurationProvider replaceTag:](VCSessionMediaStreamPresenceConfigurationProvider forKeyedSubscript:{"replaceTag:", objc_msgSend(v10, "objectForKeyedSubscript:", @"maxWidth", @"maxWidth"}];
              }

              if ([v10 objectForKeyedSubscript:@"maxHeight"])
              {
                [v14 setObject:+[VCSessionMediaStreamPresenceConfigurationProvider replaceTag:](VCSessionMediaStreamPresenceConfigurationProvider forKeyedSubscript:{"replaceTag:", objc_msgSend(v10, "objectForKeyedSubscript:", @"maxHeight", @"maxHeight"}];
              }

              if ([v10 objectForKeyedSubscript:@"maxFramerate"])
              {
                [v14 setObject:+[VCSessionMediaStreamPresenceConfigurationProvider replaceTag:](VCSessionMediaStreamPresenceConfigurationProvider forKeyedSubscript:{"replaceTag:", objc_msgSend(v10, "objectForKeyedSubscript:", @"maxFramerate", @"maxFramerate"}];
              }

              [v18 addObject:v14];
            }

            v20 = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        [VCSessionMediaStreamPresenceConfigurationProvider publicSessionConfigurationForType:v3];
      }
    }

    else
    {
      +[VCSessionMediaStreamPresenceConfigurationProvider publicSessionConfigurationForType:];
    }
  }

  else
  {
    +[VCSessionMediaStreamPresenceConfigurationProvider publicSessionConfigurationForType:];
  }

  return v16;
}

+ (unsigned)streamSSRCForStreamGroupID:(unsigned int)a3 streamIndex:(int)a4
{
  v17 = *MEMORY[0x1E69E9840];
  result = [VCDefaults BOOLeanValueForKey:@"forceFixedSSRCsForWebRTCStreams" defaultValue:0];
  if (result)
  {
    switch(a3)
    {
      case 0x63616D77u:
        return a4 + 32;
      case 0x73697269u:
        return a4 + 48;
      case 0x6D696377u:
        return a4 + 16;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v9 = 136315906;
      v10 = v7;
      v11 = 2080;
      v12 = "+[VCSessionMediaStreamPresenceConfigurationProvider streamSSRCForStreamGroupID:streamIndex:]";
      v13 = 1024;
      v14 = 377;
      v15 = 1024;
      v16 = a3;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unknown stream group ID %u. Using random SSRC", &v9, 0x22u);
    }

    return 0;
  }

  return result;
}

+ (unsigned)readUint32WithPList:(id)a3 key:(id)a4 defaultValue:(unsigned int)a5
{
  v5 = [a3 objectForKeyedSubscript:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [v5 unsignedIntValue];
  }

  else
  {
    +[VCSessionMediaStreamPresenceConfigurationProvider readUint32WithPList:key:defaultValue:];
    return v7;
  }
}

+ (id)defaultOneToOneTierTable:(unsigned int)a3 redundancyEnabled:(BOOL)a4
{
  if (a3 > 1835623281)
  {
    switch(a3)
    {
      case 0x6D696372u:
        if ([VCHardwareSettings deviceClass:*&a3]== 8)
        {

          return VCSessionOneToOneFullMicTierTable();
        }

        else
        {

          return VCSessionOneToOneReducedMicTierTable();
        }

      case 0x73637265u:

        return VCSessionOneToOneScreenTierTable();
      case 0x73797361u:

        return VCSessionOneToOneSystemAudioTierTable();
      default:
        return 0;
    }
  }

  else
  {
    v4 = a4;
    switch(a3)
    {
      case 0x62646174u:
        if (VCFeatureFlagManager_PersonaV2Enabled())
        {
          if (v4)
          {

            return VCSessionOneToOneBodyDataV2TierTableWithRedundancy();
          }

          else
          {

            return VCSessionOneToOneBodyDataV2TierTable();
          }
        }

        else
        {

          return VCSessionOneToOneBDATTierTable();
        }

      case 0x63616D65u:

        return VCSessionOneToOneCameraTierTable();
      case 0x66747874u:
        if (VCFeatureFlagManager_PersonaV2Enabled())
        {
          if (v4)
          {

            return VCSessionOneToOneFaceTextureV2TierTableWithRedundancy();
          }

          else
          {

            return VCSessionOneToOneFaceTextureV2TierTable();
          }
        }

        else if (v4)
        {

          return VCSessionOneToOneFTXTTierTableWithRedundancy();
        }

        else
        {

          return VCSessionOneToOneFTXTTierTable();
        }

      default:
        return 0;
    }
  }
}

+ (id)foregroundCameraOneToOneTierTable:(unsigned int)a3 redundancyEnabled:(BOOL)a4
{
  if (a3 > 1835623281)
  {
    switch(a3)
    {
      case 0x6D696372u:
        if ([VCHardwareSettings deviceClass:*&a3]== 8)
        {

          return VCSessionOneToOneFullMicTierTable();
        }

        else
        {

          return VCSessionOneToOneReducedMicTierTable();
        }

      case 0x73637265u:

        return VCSessionOneToOneScreenTierTableForegroundCamera();
      case 0x73797361u:

        return VCSessionOneToOneSystemAudioTierTable();
      default:
        return 0;
    }
  }

  else
  {
    v4 = a4;
    switch(a3)
    {
      case 0x62646174u:
        if (VCFeatureFlagManager_PersonaV2Enabled())
        {
          if (v4)
          {

            return VCSessionOneToOneBodyDataV2TierTableWithRedundancy();
          }

          else
          {

            return VCSessionOneToOneBodyDataV2TierTable();
          }
        }

        else
        {

          return VCSessionOneToOneBDATTierTable();
        }

      case 0x63616D65u:

        return VCSessionOneToOneCameraTierTable();
      case 0x66747874u:
        if (VCFeatureFlagManager_PersonaV2Enabled())
        {
          if (v4)
          {

            return VCSessionOneToOneFaceTextureV2TierTableWithRedundancy();
          }

          else
          {

            return VCSessionOneToOneFaceTextureV2TierTable();
          }
        }

        else if (v4)
        {

          return VCSessionOneToOneFTXTTierTableWithRedundancy();
        }

        else
        {

          return VCSessionOneToOneFTXTTierTable();
        }

      default:
        return 0;
    }
  }
}

+ (unsigned)defaultRemainingBitrateSplit:(unsigned int)a3
{
  result = 18;
  if (a3 <= 1835623286)
  {
    if (a3 > 1684108336)
    {
      if (a3 - 1684108337 >= 5)
      {
        v4 = 1835623282;
        goto LABEL_14;
      }

      return 0;
    }

    if (a3 == 1650745716 || a3 == 1667329399)
    {
      return 0;
    }

    v4 = 1667330164;
LABEL_14:
    if (a3 != v4)
    {
      return result;
    }

    return 0;
  }

  if (a3 > 1937339232)
  {
    if (a3 - 1986618417 < 4)
    {
      return 0;
    }

    v4 = 1937339233;
    goto LABEL_14;
  }

  if (a3 == 1835623287)
  {
    return 0;
  }

  if (a3 != 1935897189)
  {
    v4 = 1936290409;
    goto LABEL_14;
  }

  return 82;
}

+ (unsigned)foregroundCameraRemainingBitrateSplit:(unsigned int)a3
{
  result = 30;
  if (a3 <= 1835623281)
  {
    if (a3 > 1684108336)
    {
      if (a3 - 1684108337 >= 5)
      {
        v4 = a3 == 1718909044;
        v5 = 18;
        goto LABEL_9;
      }

      return 0;
    }

    if (a3 == 1650745716 || a3 == 1667329399)
    {
      return 0;
    }

    v6 = 1667330164;
LABEL_18:
    if (a3 != v6)
    {
      return result;
    }

    return 0;
  }

  if (a3 > 1936290408)
  {
    if (a3 - 1986618417 < 4 || a3 == 1936290409)
    {
      return 0;
    }

    v6 = 1937339233;
    goto LABEL_18;
  }

  if (a3 == 1835623282 || a3 == 1835623287)
  {
    return 0;
  }

  v4 = a3 == 1935897189;
  v5 = 70;
LABEL_9:
  if (v4)
  {
    return v5;
  }

  else
  {
    return 30;
  }
}

+ (id)oneToOneTierTableForStreamGroupID:(unsigned int)a3 splitType:(unsigned int)a4 redundancyEnabled:(BOOL)a5
{
  if (a4 == 1)
  {
    v6 = [a1 foregroundCameraOneToOneTierTable:*&a3 redundancyEnabled:a5];
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    v6 = [a1 defaultOneToOneTierTable:*&a3 redundancyEnabled:a5];
  }

  v7 = v6;
  if (a3 != 1718909044 || !v6 || !VCDefaults_GetBoolValueForKey(@"enableLowerU1VoltusBitrate", 0))
  {
    return v7;
  }

  v8 = [v7 mutableCopy];
  [v8 setObject:&unk_1F5798A00 forKeyedSubscript:&unk_1F5798A18];

  return v8;
}

+ (unsigned)remainingBitrateSplitQualityIndexForStreamGroup:(unsigned int)a3 splitType:(unsigned int)a4
{
  if (a4 == 1)
  {
    return [a1 foregroundCameraRemainingBitrateSplit:*&a3];
  }

  if (a4)
  {
    return 0;
  }

  return [a1 defaultRemainingBitrateSplit:*&a3];
}

- (id)defaultEndToEndStreamGroupConfigurationForStreamGroup:(unsigned int)a3
{
  v3 = *&a3;
  v9[2] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v8[0] = @"streamGroupID";
  v8[1] = @"streamGroupMode";
  v9[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v9[1] = &unk_1F5798A30;
  v6 = [v5 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, v8, 2)}];
  if (-[NSDictionary objectForKeyedSubscript:](self->_streamGroupToStreamInputMapping, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3]))
  {
    [v6 setObject:-[NSDictionary objectForKeyedSubscript:](self->_streamGroupToStreamInputMapping forKeyedSubscript:{"objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v3)), @"streamInputID"}];
  }

  if (v3 == 1718909044 || v3 == 1667329381)
  {
    [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"streamGroupRedundancyControllerEnabled"];
  }

  return v6;
}

- (id)newStreamInputConfigurations
{
  v25 = *MEMORY[0x1E69E9840];
  obj = [(NSDictionary *)self->_configuration objectForKeyedSubscript:@"streamInputs"];
  v17 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (!v3)
  {
    return v17;
  }

  v4 = v3;
  v5 = *v22;
  while (2)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v22 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v21 + 1) + 8 * i);
      v18 = 0;
      v8 = [v7 objectForKeyedSubscript:@"ignore"];
      if (v8)
      {
        v9 = [VCSessionMediaStreamPresenceConfigurationProvider replaceTag:v8];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newStreamInputConfigurations];
          goto LABEL_30;
        }

        if ([v9 BOOLValue])
        {
          continue;
        }
      }

      if (!+[VCStringUtils convertString:toFourcc:](VCStringUtils, "convertString:toFourcc:", [v7 objectForKeyedSubscript:@"type"], &v18))
      {
        [VCSessionMediaStreamPresenceConfigurationProvider newStreamInputConfigurations];
LABEL_30:
        v14 = v19;
LABEL_24:

        return 0;
      }

      if (v18 == 1835365473)
      {
        v10 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self newDataStreamInputConfigurationWithPList:v7];
      }

      else
      {
        if (v18 != 1986618469)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v13 = VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              [(VCSessionMediaStreamPresenceConfigurationProvider *)v13 newStreamInputConfigurations];
            }
          }

          v14 = 0;
          goto LABEL_24;
        }

        v10 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self newVideoStreamInputConfigurationWithPList:v7];
      }

      v11 = v10;
      v12 = [VCSessionMediaStreamPresenceConfigurationProvider readUint32WithPList:v7 key:@"maxFramerate" defaultValue:30];
      if (!v12)
      {
        [VCSessionMediaStreamPresenceConfigurationProvider newStreamInputConfigurations];
        goto LABEL_30;
      }

      [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v12), @"framerate"}];
      if (!v11)
      {
        [VCSessionMediaStreamPresenceConfigurationProvider newStreamInputConfigurations];
        goto LABEL_30;
      }

      [v17 addObject:v11];
    }

    v4 = [obj countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v4)
    {
      continue;
    }

    return v17;
  }
}

- (id)newVideoStreamInputConfigurationWithPList:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v11 = @"type";
  v12[0] = &unk_1F5798A48;
  v5 = [v4 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)}];
  if (!v5)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamInputConfigurationWithPList:];
LABEL_17:

    return 0;
  }

  v10 = 0;
  if (!+[VCStringUtils convertString:toFourcc:](VCStringUtils, "convertString:toFourcc:", [a3 objectForKeyedSubscript:@"streamInputID"], &v10))
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamInputConfigurationWithPList:];
    goto LABEL_17;
  }

  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v10), @"streamInputID"}];
  v9 = 0;
  if (!+[VCStringUtils convertString:toFourcc:](VCStringUtils, "convertString:toFourcc:", [a3 objectForKeyedSubscript:@"subtype"], &v9))
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamInputConfigurationWithPList:];
    goto LABEL_17;
  }

  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v9), @"subtype"}];
  v6 = [a3 objectForKeyedSubscript:@"maxWidth"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamInputConfigurationWithPList:];
    goto LABEL_17;
  }

  if (![v6 unsignedIntValue])
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamInputConfigurationWithPList:];
    goto LABEL_17;
  }

  [v5 setObject:v6 forKeyedSubscript:@"width"];
  v7 = [a3 objectForKeyedSubscript:@"maxHeight"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamInputConfigurationWithPList:];
    goto LABEL_17;
  }

  if (![v7 unsignedIntValue])
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamInputConfigurationWithPList:];
    goto LABEL_17;
  }

  [v5 setObject:v7 forKeyedSubscript:@"height"];
  return v5;
}

- (id)newDataStreamInputConfigurationWithPList:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  v9 = @"type";
  v10[0] = &unk_1F5798A60;
  v5 = [v4 initWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}];
  if (!v5)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newDataStreamInputConfigurationWithPList:];
LABEL_9:

    return 0;
  }

  v8 = 0;
  if (!+[VCStringUtils convertString:toFourcc:](VCStringUtils, "convertString:toFourcc:", [a3 objectForKeyedSubscript:@"streamInputID"], &v8))
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newDataStreamInputConfigurationWithPList:];
    goto LABEL_9;
  }

  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v8), @"streamInputID"}];
  v7 = 0;
  if (!+[VCStringUtils convertString:toFourcc:](VCStringUtils, "convertString:toFourcc:", [a3 objectForKeyedSubscript:@"subtype"], &v7))
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newDataStreamInputConfigurationWithPList:];
    goto LABEL_9;
  }

  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v7), @"subtype"}];
  return v5;
}

- (id)newVideoMultiwayConfigWithPList:(id)a3 codecType:(int64_t)a4 streamIDGenerator:(id)a5 ssrc:(unsigned int)a6
{
  v6 = *&a6;
  v10 = objc_alloc_init(VCMediaStreamMultiwayConfigVideo);
  if (!v10)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
LABEL_65:

    return 0;
  }

  v11 = [a3 objectForKeyedSubscript:@"maxNetworkBitrate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
    goto LABEL_65;
  }

  -[VCMediaStreamMultiwayConfig setMaxNetworkBitrate:](v10, "setMaxNetworkBitrate:", [v11 unsignedIntValue]);
  if (![(VCMediaStreamMultiwayConfig *)v10 maxNetworkBitrate])
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
    goto LABEL_65;
  }

  v12 = [a3 objectForKeyedSubscript:@"maxMediaBitrate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
    goto LABEL_65;
  }

  -[VCMediaStreamMultiwayConfig setMaxMediaBitrate:](v10, "setMaxMediaBitrate:", [v12 unsignedIntValue]);
  if (![(VCMediaStreamMultiwayConfig *)v10 maxMediaBitrate])
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
    goto LABEL_65;
  }

  v13 = [a3 objectForKeyedSubscript:@"repairedMaxNetworkBitrate"];
  if (v13)
  {
    v14 = v13;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
      goto LABEL_65;
    }

    -[VCMediaStreamMultiwayConfig setRepairedMaxNetworkBitrate:](v10, "setRepairedMaxNetworkBitrate:", [v14 unsignedIntValue]);
  }

  v15 = [a3 objectForKeyedSubscript:@"repairedFECLevel"];
  if (v15)
  {
    v16 = v15;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
      goto LABEL_65;
    }

    -[VCMediaStreamMultiwayConfig setRepairedFECLevel:](v10, "setRepairedFECLevel:", [v16 unsignedIntValue]);
  }

  v17 = [a3 objectForKeyedSubscript:@"qualityIndex"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
    goto LABEL_65;
  }

  -[VCMediaStreamMultiwayConfig setQualityIndex:](v10, "setQualityIndex:", [v17 unsignedIntValue]);
  v18 = [a3 objectForKeyedSubscript:@"onDemand"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
    goto LABEL_65;
  }

  -[VCMediaStreamMultiwayConfig setStartOnDemand:](v10, "setStartOnDemand:", VCDefaults_GetBoolValueForKey(@"forceVideoOnDemand", [v18 BOOLValue]));
  v19 = [a3 objectForKeyedSubscript:@"isTemporalStream"];
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = v19;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
    goto LABEL_65;
  }

  -[VCMediaStreamMultiwayConfigVideo setIsTemporalStream:](v10, "setIsTemporalStream:", [v20 BOOLValue]);
LABEL_17:
  if (a4 == 301)
  {
    v21 = +[VCSessionMediaStreamPresenceConfigurationProvider replaceTag:](VCSessionMediaStreamPresenceConfigurationProvider, "replaceTag:", [a3 objectForKeyedSubscript:@"framesPerSecond"]);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
      goto LABEL_65;
    }

    -[VCMediaStreamMultiwayConfigVideo setFramerate:](v10, "setFramerate:", [v21 unsignedIntValue]);
    if (![(VCMediaStreamMultiwayConfigVideo *)v10 framerate])
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
      goto LABEL_65;
    }

    [(VCMediaStreamMultiwayConfigVideo *)v10 setResolution:11];
  }

  else if (a4 == 300)
  {
    [(VCMediaStreamMultiwayConfigVideo *)v10 setResolution:11];
    [(VCMediaStreamMultiwayConfigVideo *)v10 setFramerate:30];
  }

  else
  {
    v22 = +[VCSessionMediaStreamPresenceConfigurationProvider replaceTag:](VCSessionMediaStreamPresenceConfigurationProvider, "replaceTag:", [a3 objectForKeyedSubscript:@"framesPerSecond"]);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
      goto LABEL_65;
    }

    -[VCMediaStreamMultiwayConfigVideo setFramerate:](v10, "setFramerate:", [v22 unsignedIntValue]);
    if (![(VCMediaStreamMultiwayConfigVideo *)v10 framerate])
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
      goto LABEL_65;
    }

    v23 = [a3 objectForKeyedSubscript:@"width"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
      goto LABEL_65;
    }

    v24 = [v23 unsignedIntValue];
    if (!v24)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
      goto LABEL_65;
    }

    v25 = v24;
    v26 = [a3 objectForKeyedSubscript:@"height"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
      goto LABEL_65;
    }

    v27 = [v26 unsignedIntValue];
    if (!v27)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
      goto LABEL_65;
    }

    v28 = v27;
    v29 = [a3 objectForKeyedSubscript:@"isVideoResolutionCustom"];
    if (v29 && [v29 BOOLValue])
    {
      [(VCMediaStreamMultiwayConfigVideo *)v10 setResolution:27];
    }

    else
    {
      [(VCMediaStreamMultiwayConfigVideo *)v10 setResolution:[VideoUtil videoResolutionForWidth:v25 height:v28]];
      if ([(VCMediaStreamMultiwayConfigVideo *)v10 resolution]== 9)
      {
        [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
        goto LABEL_65;
      }
    }

    v30 = [a3 objectForKeyedSubscript:@"keyFrameInterval"];
    if (v30)
    {
      v31 = v30;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
        goto LABEL_65;
      }

      -[VCMediaStreamMultiwayConfigVideo setKeyFrameInterval:](v10, "setKeyFrameInterval:", [v31 unsignedIntValue]);
    }
  }

  if (!v6)
  {
    v6 = [a5 generateSSRC:1 streamID:1 repairStreamID:-[VCMediaStreamMultiwayConfig repairedMaxNetworkBitrate](v10 v2StreamID:{"repairedMaxNetworkBitrate") != 0, 0}];
    v33 = HIDWORD(v6);
    v32 = HIWORD(v6);
    goto LABEL_40;
  }

  if ([(VCMediaStreamMultiwayConfig *)v10 repairedMaxNetworkBitrate])
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:];
    goto LABEL_65;
  }

  LOWORD(v32) = v6 + 1;
  LOWORD(v33) = v6;
LABEL_40:
  [(VCMediaStreamMultiwayConfig *)v10 setSsrc:v6];
  [(VCMediaStreamMultiwayConfig *)v10 setIdsStreamID:v33];
  [(VCMediaStreamMultiwayConfig *)v10 setNegotiationProtocolMask:2];
  if ([(VCMediaStreamMultiwayConfig *)v10 repairedMaxNetworkBitrate])
  {
    [(VCMediaStreamMultiwayConfig *)v10 setRepairedStreamID:v32];
  }

  [(VCMediaStreamMultiwayConfigVideo *)v10 addPayload:[VCPayloadUtils payloadForCodecType:a4]];
  return v10;
}

- (void)updateStreamConfig:(id)a3 forPayload:(int)a4 networkPayload:(unsigned int)a5 groupID:(unsigned int)a6
{
  v6 = *&a5;
  v7 = *&a4;
  v10 = +[VCVideoFeatureListStringHelper newFeatureListStringsDictForGroupID:isOneToOne:](VCVideoFeatureListStringHelper, "newFeatureListStringsDictForGroupID:isOneToOne:", *&a6, [objc_msgSend(a3 "multiwayConfig")]);
  if (v10)
  {
    v11 = v10;
    [a3 addRxPayloadType:v7 networkPayload:v6];
    [a3 addRxCodecFeatureListString:objc_msgSend(v11 codecType:{"objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v7)), +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", v7)}];
    [a3 addTxPayloadType:v7 networkPayload:v6];
    [a3 addTxCodecFeatureListString:objc_msgSend(v11 codecType:{"objectForKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v7)), +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", v7)}];
  }

  else
  {
    [VCSessionMediaStreamPresenceConfigurationProvider updateStreamConfig:? forPayload:? networkPayload:? groupID:?];
  }
}

- (BOOL)checkEncoderSupportForConfig:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = [objc_msgSend(a3 "payloads")];
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v33 + 1) + 8 * v8);
      if (+[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", [v9 intValue]) == 102 && !+[VCHardwareSettings supportsHEVCEncoding](VCHardwareSettings, "supportsHEVCEncoding"))
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v33 objects:v32 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
LABEL_23:
        LOBYTE(v10) = 0;
        return v10;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        return v10;
      }

      v20 = 136315906;
      v21 = v12;
      v22 = 2080;
      v23 = "[VCSessionMediaStreamPresenceConfigurationProvider checkEncoderSupportForConfig:]";
      v24 = 1024;
      v25 = 795;
      v26 = 2048;
      v27 = +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", [v9 intValue]);
      v14 = " [%s] %s:%d Found unsupported codec type=%ld";
      v15 = v13;
      v16 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_23;
      }

      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      v10 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        return v10;
      }

      v20 = 136316418;
      v21 = v17;
      v22 = 2080;
      v23 = "[VCSessionMediaStreamPresenceConfigurationProvider checkEncoderSupportForConfig:]";
      v24 = 1024;
      v25 = 795;
      v26 = 2112;
      v27 = v11;
      v28 = 2048;
      v29 = self;
      v30 = 2048;
      v31 = +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", [v9 intValue]);
      v14 = " [%s] %s:%d %@(%p) Found unsupported codec type=%ld";
      v15 = v18;
      v16 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v20, v16);
    goto LABEL_23;
  }

LABEL_10:
  LOBYTE(v10) = 1;
  return v10;
}

- (BOOL)checkEncoderSupportForCodecType:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 != 102 || +[VCHardwareSettings supportsHEVCEncoding])
  {
    LOBYTE(v4) = 1;
    return v4;
  }

  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_16;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v4)
    {
      return v4;
    }

    v14 = 136316418;
    v15 = v11;
    v16 = 2080;
    v17 = "[VCSessionMediaStreamPresenceConfigurationProvider checkEncoderSupportForCodecType:]";
    v18 = 1024;
    v19 = 807;
    v20 = 2112;
    v21 = v5;
    v22 = 2048;
    v23 = self;
    v24 = 2048;
    v25 = 102;
    v8 = " [%s] %s:%d %@(%p) Found unsupported codec type=%ld";
    v9 = v12;
    v10 = 58;
    goto LABEL_15;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v4 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
    if (!v4)
    {
      return v4;
    }

    v14 = 136315906;
    v15 = v6;
    v16 = 2080;
    v17 = "[VCSessionMediaStreamPresenceConfigurationProvider checkEncoderSupportForCodecType:]";
    v18 = 1024;
    v19 = 807;
    v20 = 2048;
    v21 = 102;
    v8 = " [%s] %s:%d Found unsupported codec type=%ld";
    v9 = v7;
    v10 = 38;
LABEL_15:
    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, &v14, v10);
  }

LABEL_16:
  LOBYTE(v4) = 0;
  return v4;
}

- (id)getVideoCodecConfigFromStreamConfigPList:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"codecs"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider getVideoCodecConfigFromStreamConfigPList:];
    return v6;
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider getVideoCodecConfigFromStreamConfigPList:];
    return v6;
  }

  return v4;
}

- (int64_t)getVideoCodecFromStreamCodecPList:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"codecType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 intValue];
    v5 = v4;
    if ((v4 - 100) >= 3 && (v4 - 300) >= 2 && VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCSessionMediaStreamPresenceConfigurationProvider getVideoCodecFromStreamCodecPList:];
      }
    }
  }

  else
  {
    [VCSessionMediaStreamPresenceConfigurationProvider getVideoCodecFromStreamCodecPList:];
    return v7;
  }

  return v5;
}

- (id)newVideoStreamGroupStreamConfigWithPList:(id)a3 streamIDGenerator:(id)a4 ssrc:(unsigned int)a5 groupID:(unsigned int)a6 shouldSkip:(BOOL *)a7
{
  v8 = *&a6;
  v9 = *&a5;
  v112 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  v13 = objc_alloc_init(VCSessionParticipantVideoStreamConfig);
  if (!v13)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
    goto LABEL_129;
  }

  v14 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self getVideoCodecConfigFromStreamConfigPList:a3];
  if (!v14)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
    goto LABEL_129;
  }

  v15 = v14;
  v16 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self getVideoCodecFromStreamCodecPList:v14];
  if (!v16)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
    goto LABEL_129;
  }

  v17 = v16;
  if (![(VCSessionMediaStreamPresenceConfigurationProvider *)self checkEncoderSupportForCodecType:v16])
  {
    v18 = [a3 objectForKeyedSubscript:@"fallbackStream"];
    if (!v18)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:a7 streamIDGenerator:? ssrc:? groupID:? shouldSkip:?];
      goto LABEL_129;
    }

    a3 = v18;
    v19 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self getVideoCodecConfigFromStreamConfigPList:v18];
    if (!v19)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
      goto LABEL_129;
    }

    v15 = v19;
    v17 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self getVideoCodecFromStreamCodecPList:v19];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (!v17)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:? streamIDGenerator:? ssrc:? groupID:? shouldSkip:?];
      goto LABEL_129;
    }

    if (ErrorLogLevelForModule >= 7)
    {
      v21 = self;
      v22 = VRTraceErrorLogLevelToCSTR();
      v23 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = v22;
        v102 = 2080;
        v103 = "[VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:]";
        v104 = 1024;
        v105 = 872;
        v106 = 2048;
        v107 = v17;
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Falling back to stream config with codecType=%ld", buf, 0x26u);
      }

      self = v21;
    }
  }

  v24 = [v15 objectForKeyedSubscript:@"encoderUsage"];
  if (v24)
  {
    v25 = v24;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
          }
        }

        goto LABEL_187;
      }

      if (objc_opt_respondsToSelector())
      {
        v66 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v66 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_187;
      }

      v82 = VRTraceErrorLogLevelToCSTR();
      v83 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_187;
      }

      *buf = 136316162;
      *&buf[4] = v82;
      v102 = 2080;
      v103 = "[VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:]";
      v104 = 1024;
      v105 = 877;
      v106 = 2112;
      v107 = v66;
      v108 = 2048;
      v109 = self;
      v84 = " [%s] %s:%d %@(%p) Invalid encoderUsage class";
LABEL_182:
      v91 = v83;
      v92 = 48;
      goto LABEL_183;
    }

    -[VCVideoStreamConfig setEncoderUsage:](v13, "setEncoderUsage:", [v25 unsignedIntValue]);
  }

  v26 = [v15 objectForKeyedSubscript:@"rtpPayload"];
  if (!v26)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
        }
      }

      goto LABEL_187;
    }

    if (objc_opt_respondsToSelector())
    {
      v67 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v67 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_187;
    }

    v85 = VRTraceErrorLogLevelToCSTR();
    v83 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_187;
    }

    *buf = 136316162;
    *&buf[4] = v85;
    v102 = 2080;
    v103 = "[VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:]";
    v104 = 1024;
    v105 = 882;
    v106 = 2112;
    v107 = v67;
    v108 = 2048;
    v109 = self;
    v84 = " [%s] %s:%d %@(%p) Invalid rtp payload";
    goto LABEL_182;
  }

  LODWORD(v26) = [v26 intValue];
LABEL_18:
  v27 = [v15 objectForKeyedSubscript:@"profileLevel"];
  if (!v27)
  {
    goto LABEL_21;
  }

  v28 = v27;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
        }
      }

      goto LABEL_187;
    }

    if (objc_opt_respondsToSelector())
    {
      v68 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v68 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_187;
    }

    v86 = VRTraceErrorLogLevelToCSTR();
    v83 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_187;
    }

    *buf = 136316162;
    *&buf[4] = v86;
    v102 = 2080;
    v103 = "[VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:]";
    v104 = 1024;
    v105 = 887;
    v106 = 2112;
    v107 = v68;
    v108 = 2048;
    v109 = self;
    v84 = " [%s] %s:%d %@(%p) Invalid profile level";
    goto LABEL_182;
  }

  [(VCVideoStreamConfig *)v13 setProfileLevel:v28];
LABEL_21:
  v29 = [a3 objectForKeyedSubscript:@"rtpTimestampRate"];
  if (!v29)
  {
    goto LABEL_24;
  }

  v30 = v29;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
        }
      }

      goto LABEL_187;
    }

    if (objc_opt_respondsToSelector())
    {
      v69 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v69 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_187;
    }

    v87 = VRTraceErrorLogLevelToCSTR();
    v83 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_187;
    }

    *buf = 136316162;
    *&buf[4] = v87;
    v102 = 2080;
    v103 = "[VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:]";
    v104 = 1024;
    v105 = 892;
    v106 = 2112;
    v107 = v69;
    v108 = 2048;
    v109 = self;
    v84 = " [%s] %s:%d %@(%p) Invalid RTP timestamp rate";
    goto LABEL_182;
  }

  -[VCMediaStreamConfig setRtpTimestampRate:](v13, "setRtpTimestampRate:", [v30 intValue]);
LABEL_24:
  v31 = [a3 objectForKeyedSubscript:@"rtcpEnabled"];
  if (!v31)
  {
    goto LABEL_27;
  }

  v32 = v31;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
        }
      }

      goto LABEL_187;
    }

    if (objc_opt_respondsToSelector())
    {
      v70 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v70 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_187;
    }

    v88 = VRTraceErrorLogLevelToCSTR();
    v83 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_187;
    }

    *buf = 136316162;
    *&buf[4] = v88;
    v102 = 2080;
    v103 = "[VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:]";
    v104 = 1024;
    v105 = 897;
    v106 = 2112;
    v107 = v70;
    v108 = 2048;
    v109 = self;
    v84 = " [%s] %s:%d %@(%p) Invalid RTCP enabled";
    goto LABEL_182;
  }

  -[VCMediaStreamConfig setRtcpEnabled:](v13, "setRtcpEnabled:", [v32 BOOLValue]);
LABEL_27:
  v33 = [a3 objectForKeyedSubscript:@"rtcpSendInterval"];
  if (!v33)
  {
    goto LABEL_30;
  }

  v34 = v33;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
        }
      }

      goto LABEL_187;
    }

    if (objc_opt_respondsToSelector())
    {
      v71 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v71 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_187;
    }

    v89 = VRTraceErrorLogLevelToCSTR();
    v83 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_187;
    }

    *buf = 136316162;
    *&buf[4] = v89;
    v102 = 2080;
    v103 = "[VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:]";
    v104 = 1024;
    v105 = 902;
    v106 = 2112;
    v107 = v71;
    v108 = 2048;
    v109 = self;
    v84 = " [%s] %s:%d %@(%p) Invalid RTCP send interval";
    goto LABEL_182;
  }

  -[VCMediaStreamConfig setRtcpSendInterval:](v13, "setRtcpSendInterval:", [v34 intValue]);
LABEL_30:
  v35 = [a3 objectForKeyedSubscript:@"rtcpTimeOutEnabled"];
  if (!v35)
  {
    goto LABEL_33;
  }

  v36 = v35;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
        }
      }

      goto LABEL_187;
    }

    if (objc_opt_respondsToSelector())
    {
      v72 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v72 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_187;
    }

    v90 = VRTraceErrorLogLevelToCSTR();
    v83 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_187;
    }

    *buf = 136316162;
    *&buf[4] = v90;
    v102 = 2080;
    v103 = "[VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:]";
    v104 = 1024;
    v105 = 907;
    v106 = 2112;
    v107 = v72;
    v108 = 2048;
    v109 = self;
    v84 = " [%s] %s:%d %@(%p) Invalid RTCP timeout enabled";
    goto LABEL_182;
  }

  -[VCMediaStreamConfig setRtcpTimeOutEnabled:](v13, "setRtcpTimeOutEnabled:", [v36 BOOLValue]);
LABEL_33:
  v98 = self;
  v37 = [a3 objectForKeyedSubscript:@"sframeCipherSuite"];
  if (v37)
  {
    v38 = v37;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VCMediaStreamConfig setSframeCipherSuite:](v13, "setSframeCipherSuite:", [v38 intValue]);
      goto LABEL_36;
    }

    if (objc_opt_class() == v98)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
        }
      }

      goto LABEL_187;
    }

    if (objc_opt_respondsToSelector())
    {
      v73 = [(VCSessionMediaStreamPresenceConfigurationProvider *)v98 performSelector:sel_logPrefix];
    }

    else
    {
      v73 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v93 = VRTraceErrorLogLevelToCSTR(), v94 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_187:
      v42 = 0;
      v40 = 0;
      goto LABEL_188;
    }

    *buf = 136316418;
    *&buf[4] = v93;
    v102 = 2080;
    v103 = "[VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:]";
    v104 = 1024;
    v105 = 912;
    v106 = 2112;
    v107 = v73;
    v108 = 2048;
    v109 = v98;
    v110 = 2112;
    v111 = @"sframeCipherSuite";
    v84 = " [%s] %s:%d %@(%p) Invalid %@ class";
    v91 = v94;
    v92 = 58;
LABEL_183:
    _os_log_error_impl(&dword_1DB56E000, v91, OS_LOG_TYPE_ERROR, v84, buf, v92);
    goto LABEL_187;
  }

LABEL_36:
  v99 = 0;
  if (+[VCStringUtils convertString:toFourcc:](VCStringUtils, "convertString:toFourcc:", [a3 objectForKeyedSubscript:@"pixelFormat"], &v99) && v99)
  {
    [(VCVideoStreamConfig *)v13 setPixelFormat:?];
  }

  if (![(VCMediaStreamConfig *)v13 sframeCipherSuite])
  {
    [(VCMediaStreamConfig *)v13 setSRTPCipherSuite:3];
    [(VCMediaStreamConfig *)v13 setSRTCPCipherSuite:3];
  }

  v39 = [(VCSessionMediaStreamPresenceConfigurationProvider *)v98 newVideoMultiwayConfigWithPList:a3 codecType:v17 streamIDGenerator:a4 ssrc:v9];
  if (!v39)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
    goto LABEL_129;
  }

  v40 = v39;
  v41 = objc_alloc_init(VCMediaStreamRateControlConfig);
  if (!v41)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
    goto LABEL_129;
  }

  v42 = v41;
  [(VCMediaStreamConfig *)v13 setMultiwayConfig:v40];
  v43 = 1;
  [(VCMediaStreamConfig *)v13 setDirection:1];
  -[VCVideoStreamConfig setVideoResolution:](v13, "setVideoResolution:", [v40 resolution]);
  -[VCVideoStreamConfig setFramerate:](v13, "setFramerate:", [v40 framerate]);
  -[VCVideoStreamConfig setKeyFrameInterval:](v13, "setKeyFrameInterval:", [v40 keyFrameInterval]);
  if (v8 != 1935897189)
  {
    v43 = [(VCMediaStreamMultiwayConfig *)[(VCMediaStreamConfig *)v13 multiwayConfig] isOneToOne];
  }

  [(VCVideoStreamConfig *)v13 setUseInBandFEC:v43];
  if ([(VCVideoStreamConfig *)v13 useInBandFEC])
  {
    -[VCVideoStreamConfig setTxMinBitrate:](v13, "setTxMinBitrate:", [v40 maxNetworkBitrate]);
    v44 = [v40 maxNetworkBitrate];
  }

  else
  {
    -[VCVideoStreamConfig setTxMinBitrate:](v13, "setTxMinBitrate:", [v40 maxMediaBitrate]);
    v44 = [v40 maxMediaBitrate];
  }

  [(VCVideoStreamConfig *)v13 setTxMaxBitrate:v44];
  -[VCVideoStreamConfig setRxMinBitrate:](v13, "setRxMinBitrate:", [v40 maxNetworkBitrate]);
  -[VCVideoStreamConfig setRxMaxBitrate:](v13, "setRxMaxBitrate:", [v40 maxNetworkBitrate]);
  [(VCVideoStreamConfig *)v13 setType:3];
  -[VCVideoStreamConfig setSourceFramerate:](v13, "setSourceFramerate:", [v40 framerate]);
  [(VCVideoStreamConfig *)v13 setRemoteVideoInitialOrientation:0];
  [(VCMediaStreamConfig *)v13 setRateControlConfig:v42];
  -[VCVideoStreamConfig setTemporalScalingEnabled:](v13, "setTemporalScalingEnabled:", [v40 isTemporalStream]);
  -[VCMediaStreamConfig setDefaultRemoteSSRC:](v13, "setDefaultRemoteSSRC:", [a4 generateSSRC]);
  if ([(VCVideoStreamConfig *)v13 videoResolution]== 27)
  {
    v45 = [a3 objectForKeyedSubscript:@"width"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VCVideoStreamConfig setCustomWidth:](v13, "setCustomWidth:", [v45 intValue]);
      v46 = [a3 objectForKeyedSubscript:@"height"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        -[VCVideoStreamConfig setCustomHeight:](v13, "setCustomHeight:", [v46 intValue]);
        goto LABEL_52;
      }

      if (objc_opt_class() == v98)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
          }
        }

        goto LABEL_188;
      }

      if (objc_opt_respondsToSelector())
      {
        v75 = [(VCSessionMediaStreamPresenceConfigurationProvider *)v98 performSelector:sel_logPrefix];
      }

      else
      {
        v75 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_188;
      }

      v97 = VRTraceErrorLogLevelToCSTR();
      v96 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_188;
      }

      *buf = 136316418;
      *&buf[4] = v97;
      v102 = 2080;
      v103 = "[VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:]";
      v104 = 1024;
      v105 = 962;
      v106 = 2112;
      v107 = v75;
      v108 = 2048;
      v109 = v98;
      v110 = 2112;
      v111 = @"height";
      v80 = " [%s] %s:%d %@(%p) Invalid %@ class";
    }

    else
    {
      if (objc_opt_class() == v98)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
          }
        }

        goto LABEL_188;
      }

      if (objc_opt_respondsToSelector())
      {
        v74 = [(VCSessionMediaStreamPresenceConfigurationProvider *)v98 performSelector:sel_logPrefix];
      }

      else
      {
        v74 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_188;
      }

      v95 = VRTraceErrorLogLevelToCSTR();
      v96 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_188;
      }

      *buf = 136316418;
      *&buf[4] = v95;
      v102 = 2080;
      v103 = "[VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:]";
      v104 = 1024;
      v105 = 958;
      v106 = 2112;
      v107 = v74;
      v108 = 2048;
      v109 = v98;
      v110 = 2112;
      v111 = @"width";
      v80 = " [%s] %s:%d %@(%p) Invalid %@ class";
    }

    v81 = v96;
    goto LABEL_204;
  }

LABEL_52:
  v47 = [a3 objectForKeyedSubscript:@"rtcpPSFBFIREnabled"];
  if (v47)
  {
    v48 = v47;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VCVideoStreamConfig setRtcpPSFB_FIREnabled:](v13, "setRtcpPSFB_FIREnabled:", [v48 BOOLValue]);
      goto LABEL_55;
    }

    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:v42 streamIDGenerator:v40 ssrc:&v100 groupID:buf shouldSkip:?];
LABEL_129:
    v42 = v100;
    v40 = *buf;
    goto LABEL_188;
  }

LABEL_55:
  if (v8 != 1935897189)
  {
    goto LABEL_69;
  }

  [(VCMediaStreamConfig *)v13 setCaptureSource:1];
  [(VCVideoStreamConfig *)v13 setPixelFormat:875704422];
  v49 = [v40 framerate];
  v50 = +[VCHardwareSettings maxFrameRateSupportedScreenShare];
  v51 = v49 >= v50 ? v50 : v49;
  [(VCVideoStreamConfig *)v13 setFramerate:v51];
  if ([(VCVideoStreamConfig *)v13 videoResolution]!= 27)
  {
    goto LABEL_69;
  }

  v52 = [a3 objectForKeyedSubscript:@"maxScreenPixels"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:v42 streamIDGenerator:v40 ssrc:&v100 groupID:buf shouldSkip:?];
    goto LABEL_129;
  }

  v53 = [v52 unsignedIntValue];
  [(VCVideoStreamConfig *)v13 setMaxEncoderPixels:v53];
  [VideoUtil computeResolutionForMainDisplayWithMaxScreenPixelCount:v53];
  if (!v54 || (v56 = v55, !v55))
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:];
    goto LABEL_129;
  }

  v57 = v54;
  v58 = +[VCHardwareSettings isDisplayPortrait];
  v59 = v57 > v56;
  if (v58 && v59)
  {
    v60 = v56;
  }

  else
  {
    v60 = v57;
  }

  if (!v58 || !v59)
  {
    v57 = v56;
  }

  [(VCVideoStreamConfig *)v13 setCustomWidth:v60];
  [(VCVideoStreamConfig *)v13 setCustomHeight:v57];
LABEL_69:
  v61 = [objc_msgSend(v40 "payloads")];
  if ([v61 count] != 1)
  {
    if (objc_opt_class() == v98)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v76 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:v76 streamIDGenerator:v61 ssrc:? groupID:? shouldSkip:?];
        }
      }

      goto LABEL_188;
    }

    if (objc_opt_respondsToSelector())
    {
      v65 = [(VCSessionMediaStreamPresenceConfigurationProvider *)v98 performSelector:sel_logPrefix];
    }

    else
    {
      v65 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v77 = VRTraceErrorLogLevelToCSTR();
      v78 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v79 = [v61 count];
        *buf = 136316418;
        *&buf[4] = v77;
        v102 = 2080;
        v103 = "[VCSessionMediaStreamPresenceConfigurationProvider newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:]";
        v104 = 1024;
        v105 = 994;
        v106 = 2112;
        v107 = v65;
        v108 = 2048;
        v109 = v98;
        v110 = 2048;
        v111 = v79;
        v80 = " [%s] %s:%d %@(%p) Invalid payloads, payloadSize: %lu";
        v81 = v78;
LABEL_204:
        _os_log_error_impl(&dword_1DB56E000, v81, OS_LOG_TYPE_ERROR, v80, buf, 0x3Au);
      }
    }

LABEL_188:

    return 0;
  }

  v62 = [objc_msgSend(v61 objectAtIndexedSubscript:{0), "unsignedIntValue"}];
  if (v26)
  {
    v63 = v26;
  }

  else
  {
    v63 = v62;
  }

  [(VCSessionMediaStreamPresenceConfigurationProvider *)v98 updateStreamConfig:v13 forPayload:v62 networkPayload:v63 groupID:v8];
  if (v8 == 1667329399)
  {
    [(VCVideoStreamConfig *)v13 setParameterSets:6];
    [(VCVideoStreamConfig *)v13 setCvoExtensionID:1];
    [(VCVideoStreamConfig *)v13 setResetSendRTPTimestampOnStop:0];
  }

  else
  {
    [(VCVideoStreamConfig *)v13 setParameterSets:VCVideoParamaterSets_DefaultSupportedSets([VCPayloadUtils payloadForCodecType:[(VCMediaStreamConfig *)v13 primaryTxCodecType]])];
  }

  return v13;
}

- (unsigned)setParentStreamID:(unsigned __int16)a3 videoConfig:(id)a4
{
  v5 = a3;
  v6 = [a4 isTemporalStream];
  if (v6)
  {
    [a4 setParentStreamID:v5];

    LOWORD(v6) = [a4 idsStreamID];
  }

  return v6;
}

- (BOOL)setupVideoStreamGroupStreams:(id)a3 streamGroupConfig:(id)a4 streamIDGenerator:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
  if (v8)
  {
    v9 = v8;
    [a4 setObject:v8 forKeyedSubscript:@"streamConfigurations"];

    v10 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupID", "unsignedIntegerValue"}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = [a3 countByEnumeratingWithState:&v28 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v23 = v9;
      obj = a3;
      v13 = 0;
      v14 = 0;
      v15 = *v29;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:{@"ignore", v23}];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v18 BOOLValue] & 1) == 0)
          {
            v19 = [VCSessionMediaStreamPresenceConfigurationProvider streamSSRCForStreamGroupID:v10 streamIndex:v13];
            v26 = 0;
            v20 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self newVideoStreamGroupStreamConfigWithPList:v17 streamIDGenerator:a5 ssrc:v19 groupID:v10 shouldSkip:&v26];
            v21 = v20;
            if (!v26)
            {
              if (!v20)
              {
                [VCSessionMediaStreamPresenceConfigurationProvider setupVideoStreamGroupStreams:streamGroupConfig:streamIDGenerator:];
                return 0;
              }

              v14 = -[VCSessionMediaStreamPresenceConfigurationProvider setParentStreamID:videoConfig:](self, "setParentStreamID:videoConfig:", v14, [v20 multiwayConfig]);
              [v23 addObject:v21];
            }

            v13 = (v13 + 1);
          }
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    return 1;
  }

  else
  {
    [VCSessionMediaStreamPresenceConfigurationProvider setupVideoStreamGroupStreams:? streamGroupConfig:? streamIDGenerator:?];
    return v26;
  }
}

- (BOOL)addPayload:(int)a3 audioStreamConfig:(id)a4 supportedAudioRules:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [a5 rules];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        if ([v12 payload] == a3)
        {
          [objc_msgSend(a4 "audioRules")];
          LOBYTE(v8) = 1;
          return v8;
        }

        ++v11;
      }

      while (v9 != v11);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
      v9 = v8;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return v8;
}

- (id)newAudioMultiwayConfigWithPList:(id)a3 audioRules:(id)a4 maxIDSStreamIDCount:(unsigned int)a5 streamIDGenerator:(id)a6 ssrc:(unsigned int)a7
{
  v7 = *&a7;
  v9 = *&a5;
  v12 = objc_alloc_init(VCMediaStreamMultiwayConfigAudio);
  if (!v12)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:];
LABEL_27:

    return 0;
  }

  v13 = [a3 objectForKeyedSubscript:@"maxNetworkBitrate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:];
    goto LABEL_27;
  }

  v14 = [v13 unsignedIntValue];
  [(VCMediaStreamMultiwayConfig *)v12 setRepairedMaxNetworkBitrate:v14];
  [(VCMediaStreamMultiwayConfig *)v12 setMaxNetworkBitrate:v14];
  if (![(VCMediaStreamMultiwayConfig *)v12 maxNetworkBitrate])
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:];
    goto LABEL_27;
  }

  v15 = [a3 objectForKeyedSubscript:@"packetsPerSecond"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:];
    goto LABEL_27;
  }

  *&v16 = [v15 unsignedIntValue];
  [(VCMediaStreamMultiwayConfig *)v12 setMaxPacketsPerSecond:v16];
  [(VCMediaStreamMultiwayConfig *)v12 maxPacketsPerSecond];
  if (v17 == 0.0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:];
    goto LABEL_27;
  }

  v18 = [a3 objectForKeyedSubscript:@"qualityIndex"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:];
    goto LABEL_27;
  }

  -[VCMediaStreamMultiwayConfig setQualityIndex:](v12, "setQualityIndex:", [v18 unsignedIntValue]);
  if (![(VCMediaStreamMultiwayConfig *)v12 qualityIndex])
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:];
    goto LABEL_27;
  }

  v19 = [a3 objectForKeyedSubscript:@"onDemand"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:];
    goto LABEL_27;
  }

  -[VCMediaStreamMultiwayConfig setStartOnDemand:](v12, "setStartOnDemand:", VCDefaults_GetBoolValueForKey(@"forceAudioOnDemand", [v19 BOOLValue]));
  v20 = [a3 objectForKeyedSubscript:@"bitrateInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:];
    goto LABEL_27;
  }

  v21 = [v20 objectForKeyedSubscript:@"mediaBitrate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:];
    goto LABEL_27;
  }

  -[VCMediaStreamMultiwayConfig setMaxMediaBitrate:](v12, "setMaxMediaBitrate:", [v21 unsignedIntValue]);
  -[VCMediaStreamMultiwayConfigAudio setPreferredMediaBitrate:](v12, "setPreferredMediaBitrate:", [v21 unsignedIntValue]);
  if (![(VCMediaStreamMultiwayConfig *)v12 maxMediaBitrate])
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:];
    goto LABEL_27;
  }

  LOWORD(v22) = v7;
  if (!v7)
  {
    v7 = [a6 generateSSRC:1 streamID:1 repairStreamID:0 v2StreamID:0];
    v22 = HIDWORD(v7);
  }

  [(VCMediaStreamMultiwayConfig *)v12 setSsrc:v7];
  [(VCMediaStreamMultiwayConfig *)v12 setIdsStreamID:v22];
  [(VCMediaStreamMultiwayConfigAudio *)v12 setAudioRules:a4];
  [(VCMediaStreamMultiwayConfig *)v12 setMaxIDSStreamIdCount:v9];
  [(VCMediaStreamMultiwayConfig *)v12 setNegotiationProtocolMask:2];
  return v12;
}

- (BOOL)setupRedFactorsWithPList:(id)a3 audioStreamConfig:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [VCSessionMediaStreamPresenceConfigurationProvider setupRedFactorsWithPList:audioStreamConfig:];
          return v12;
        }

        [a4 addSupportedNumRedundantPayload:{objc_msgSend(v10, "intValue")}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (BOOL)setupAudioRedWithPlist:(id)a3 audioStreamConfig:(id)a4 supportedAudioRules:(id)a5
{
  v9 = [a3 objectForKeyedSubscript:@"redPayload"];
  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRedWithPlist:audioStreamConfig:supportedAudioRules:];
      return v15;
    }

    v11 = [v10 intValue];
    if (v11 == 128)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRedWithPlist:audioStreamConfig:supportedAudioRules:];
      return v19;
    }

    v12 = v11;
    if (![(VCSessionMediaStreamPresenceConfigurationProvider *)self addPayload:v11 audioStreamConfig:a4 supportedAudioRules:a5])
    {
      [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRedWithPlist:audioStreamConfig:supportedAudioRules:];
      return v16;
    }

    [a4 setupRedWithRxPayload:v12 txPayload:v12];
    v13 = [a3 objectForKeyedSubscript:@"redFactors"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRedWithPlist:audioStreamConfig:supportedAudioRules:];
      return v17;
    }

    if (![(VCSessionMediaStreamPresenceConfigurationProvider *)self setupRedFactorsWithPList:v13 audioStreamConfig:a4])
    {
      [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRedWithPlist:audioStreamConfig:supportedAudioRules:];
      return v18;
    }

    [a4 setNumRedundantPayloads:{objc_msgSend(objc_msgSend(objc_msgSend(a4, "supportedNumRedundantPayload"), "objectAtIndexedSubscript:", 0), "intValue")}];
  }

  return 1;
}

- (BOOL)setupAudioRulesWithPList:(id)a3 audioStreamConfig:(id)a4 supportedAudioRules:(id)a5
{
  v85 = *MEMORY[0x1E69E9840];
  v8 = [a3 objectForKeyedSubscript:@"codecs"];
  if (![v8 count])
  {
    [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:];
    LOBYTE(v38) = buf[0];
    return v38;
  }

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v67 = [v8 countByEnumeratingWithState:&v81 objects:v80 count:16];
  if (!v67)
  {
    goto LABEL_44;
  }

  v65 = *v82;
  obj = v8;
  v64 = self;
  while (2)
  {
    for (i = 0; i != v67; ++i)
    {
      if (*v82 != v65)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v81 + 1) + 8 * i);
      v11 = [v10 objectForKeyedSubscript:@"codecType"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v38)
            {
              return v38;
            }

            [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:];
          }

          goto LABEL_138;
        }

        if (objc_opt_respondsToSelector())
        {
          v39 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
        }

        else
        {
          v39 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_138;
        }

        v48 = VRTraceErrorLogLevelToCSTR();
        v49 = *MEMORY[0x1E6986650];
        v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v38)
        {
          return v38;
        }

        *buf = 136316162;
        v69 = v48;
        v70 = 2080;
        v71 = "[VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:]";
        v72 = 1024;
        v73 = 1192;
        v74 = 2112;
        v75 = v39;
        v76 = 2048;
        v77 = self;
        v50 = " [%s] %s:%d %@(%p) Invalid codec class";
LABEL_136:
        v55 = v49;
        v56 = 48;
        goto LABEL_137;
      }

      v12 = [v11 intValue];
      if (!v12)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v38)
            {
              return v38;
            }

            [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:];
          }

          goto LABEL_138;
        }

        if (objc_opt_respondsToSelector())
        {
          v40 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
        }

        else
        {
          v40 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_138;
        }

        v51 = VRTraceErrorLogLevelToCSTR();
        v49 = *MEMORY[0x1E6986650];
        v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v38)
        {
          return v38;
        }

        *buf = 136316162;
        v69 = v51;
        v70 = 2080;
        v71 = "[VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:]";
        v72 = 1024;
        v73 = 1194;
        v74 = 2112;
        v75 = v40;
        v76 = 2048;
        v77 = self;
        v50 = " [%s] %s:%d %@(%p) Invalid codec";
        goto LABEL_136;
      }

      v13 = v12;
      v14 = [v10 objectForKeyedSubscript:@"codecPreferredMode"];
      if (!v14)
      {
        v16 = 0xFFFFFFFFLL;
        goto LABEL_14;
      }

      v15 = v14;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v38)
            {
              return v38;
            }

            [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:];
          }

          goto LABEL_138;
        }

        if (objc_opt_respondsToSelector())
        {
          v43 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
        }

        else
        {
          v43 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_138;
        }

        v57 = VRTraceErrorLogLevelToCSTR();
        v49 = *MEMORY[0x1E6986650];
        v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v38)
        {
          return v38;
        }

        *buf = 136316162;
        v69 = v57;
        v70 = 2080;
        v71 = "[VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:]";
        v72 = 1024;
        v73 = 1198;
        v74 = 2112;
        v75 = v43;
        v76 = 2048;
        v77 = self;
        v50 = " [%s] %s:%d %@(%p) Invalid preferred codec mode class";
        goto LABEL_136;
      }

      v16 = [v15 intValue];
      if (v16 == -1)
      {
        if (objc_opt_class() == self)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v38)
            {
              return v38;
            }

            [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:];
          }

          goto LABEL_138;
        }

        if (objc_opt_respondsToSelector())
        {
          v44 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
        }

        else
        {
          v44 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v58 = VRTraceErrorLogLevelToCSTR();
          v49 = *MEMORY[0x1E6986650];
          v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
          if (!v38)
          {
            return v38;
          }

          *buf = 136316162;
          v69 = v58;
          v70 = 2080;
          v71 = "[VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:]";
          v72 = 1024;
          v73 = 1200;
          v74 = 2112;
          v75 = v44;
          v76 = 2048;
          v77 = self;
          v50 = " [%s] %s:%d %@(%p) Invalid preferred mode";
          goto LABEL_136;
        }

LABEL_138:
        LOBYTE(v38) = 0;
        return v38;
      }

LABEL_14:
      v17 = [v10 objectForKeyedSubscript:@"rtpPayload"];
      if (v17)
      {
        v18 = v17;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
              if (!v38)
              {
                return v38;
              }

              [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:];
            }

            goto LABEL_138;
          }

          if (objc_opt_respondsToSelector())
          {
            v45 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
          }

          else
          {
            v45 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v59 = VRTraceErrorLogLevelToCSTR();
            v49 = *MEMORY[0x1E6986650];
            v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v38)
            {
              return v38;
            }

            *buf = 136316162;
            v69 = v59;
            v70 = 2080;
            v71 = "[VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:]";
            v72 = 1024;
            v73 = 1205;
            v74 = 2112;
            v75 = v45;
            v76 = 2048;
            v77 = self;
            v50 = " [%s] %s:%d %@(%p) Invalid rtp payload";
            goto LABEL_136;
          }

          goto LABEL_138;
        }

        v19 = [v18 intValue];
      }

      else
      {
        v19 = 0xFFFFLL;
      }

      v20 = [v10 objectForKeyedSubscript:@"pTime"];
      if (v20)
      {
        v21 = v20;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
              if (!v38)
              {
                return v38;
              }

              [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:];
            }

            goto LABEL_138;
          }

          if (objc_opt_respondsToSelector())
          {
            v46 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
          }

          else
          {
            v46 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v60 = VRTraceErrorLogLevelToCSTR();
            v49 = *MEMORY[0x1E6986650];
            v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v38)
            {
              return v38;
            }

            *buf = 136316162;
            v69 = v60;
            v70 = 2080;
            v71 = "[VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:]";
            v72 = 1024;
            v73 = 1211;
            v74 = 2112;
            v75 = v46;
            v76 = 2048;
            v77 = self;
            v50 = " [%s] %s:%d %@(%p) Invalid pTime";
            goto LABEL_136;
          }

          goto LABEL_138;
        }

        v22 = [v21 intValue];
      }

      else
      {
        v22 = 20;
      }

      v23 = [v10 objectForKeyedSubscript:@"isOpusInBandFecEnabled"];
      if (v23)
      {
        v24 = v23;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (objc_opt_class() == self)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
              if (!v38)
              {
                return v38;
              }

              [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:];
            }

            goto LABEL_138;
          }

          if (objc_opt_respondsToSelector())
          {
            v47 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
          }

          else
          {
            v47 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            v61 = VRTraceErrorLogLevelToCSTR();
            v49 = *MEMORY[0x1E6986650];
            v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v38)
            {
              return v38;
            }

            *buf = 136316162;
            v69 = v61;
            v70 = 2080;
            v71 = "[VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:]";
            v72 = 1024;
            v73 = 1217;
            v74 = 2112;
            v75 = v47;
            v76 = 2048;
            v77 = self;
            v50 = " [%s] %s:%d %@(%p) Invalid isOpusInBandFecEnabled";
            goto LABEL_136;
          }

          goto LABEL_138;
        }

        v25 = [v24 BOOLValue];
      }

      else
      {
        v25 = 0;
      }

      v26 = [VCPayloadUtils payloadForCodecType:v13];
      if (v26 == 128)
      {
        if (objc_opt_class() == v64)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v38)
            {
              return v38;
            }

            [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:];
          }

          goto LABEL_138;
        }

        if (objc_opt_respondsToSelector())
        {
          v41 = [(VCSessionMediaStreamPresenceConfigurationProvider *)v64 performSelector:sel_logPrefix];
        }

        else
        {
          v41 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_138;
        }

        v52 = VRTraceErrorLogLevelToCSTR();
        v53 = *MEMORY[0x1E6986650];
        v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v38)
        {
          return v38;
        }

        *buf = 136316418;
        v69 = v52;
        v70 = 2080;
        v71 = "[VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:]";
        v72 = 1024;
        v73 = 1222;
        v74 = 2112;
        v75 = v41;
        v76 = 2048;
        v77 = v64;
        v78 = 1024;
        v79 = v13;
        v50 = " [%s] %s:%d %@(%p) Failed retrieve payload for codec type=%d";
LABEL_100:
        v55 = v53;
        v56 = 54;
LABEL_137:
        _os_log_error_impl(&dword_1DB56E000, v55, OS_LOG_TYPE_ERROR, v50, buf, v56);
        goto LABEL_138;
      }

      v27 = v26;
      v28 = [[VCAudioStreamCodecConfig alloc] initWithCodecType:v13];
      if (!v28)
      {
        if (objc_opt_class() == v64)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
            if (!v38)
            {
              return v38;
            }

            [VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:];
          }

          goto LABEL_138;
        }

        if (objc_opt_respondsToSelector())
        {
          v42 = [(VCSessionMediaStreamPresenceConfigurationProvider *)v64 performSelector:sel_logPrefix];
        }

        else
        {
          v42 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_138;
        }

        v54 = VRTraceErrorLogLevelToCSTR();
        v53 = *MEMORY[0x1E6986650];
        v38 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
        if (!v38)
        {
          return v38;
        }

        *buf = 136316418;
        v69 = v54;
        v70 = 2080;
        v71 = "[VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:]";
        v72 = 1024;
        v73 = 1225;
        v74 = 2112;
        v75 = v42;
        v76 = 2048;
        v77 = v64;
        v78 = 1024;
        v79 = v13;
        v50 = " [%s] %s:%d %@(%p) Failed to allocate codec config for type=%d";
        goto LABEL_100;
      }

      v29 = v28;
      [(VCAudioStreamCodecConfig *)v28 setPreferredMode:v16];
      [(VCAudioStreamCodecConfig *)v29 setNetworkPayload:v19];
      [(VCAudioStreamCodecConfig *)v29 setPTime:v22];
      [(VCAudioStreamCodecConfig *)v29 setIsOpusInBandFecEnabled:v25];
      if ((v27 - 107) <= 4 && ((1 << (v27 - 107)) & 0x13) != 0)
      {
        [(VCAudioStreamCodecConfig *)v29 setDtxEnabled:1];
        [(VCAudioStreamCodecConfig *)v29 setSupportedModes:&unk_1F579CAE0];
      }

      [a4 addCodecConfiguration:v29];

      self = v64;
      if (![(VCSessionMediaStreamPresenceConfigurationProvider *)v64 addPayload:v27 audioStreamConfig:a4 supportedAudioRules:a5])
      {
        if (objc_opt_class() == v64)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v36 = VRTraceErrorLogLevelToCSTR();
            v37 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v69 = v36;
              v70 = 2080;
              v71 = "[VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:]";
              v72 = 1024;
              v73 = 1242;
              v74 = 1024;
              LODWORD(v75) = v27;
              v33 = v37;
              v34 = " [%s] %s:%d Failed to add payload=%u";
              v35 = 34;
              goto LABEL_41;
            }
          }
        }

        else
        {
          v30 = &stru_1F570E008;
          if (objc_opt_respondsToSelector())
          {
            v30 = [(VCSessionMediaStreamPresenceConfigurationProvider *)v64 performSelector:sel_logPrefix];
          }

          if (VRTraceGetErrorLogLevelForModule() >= 6)
          {
            v31 = VRTraceErrorLogLevelToCSTR();
            v32 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136316418;
              v69 = v31;
              v70 = 2080;
              v71 = "[VCSessionMediaStreamPresenceConfigurationProvider setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:]";
              v72 = 1024;
              v73 = 1242;
              v74 = 2112;
              v75 = v30;
              v76 = 2048;
              v77 = v64;
              v78 = 1024;
              v79 = v27;
              v33 = v32;
              v34 = " [%s] %s:%d %@(%p) Failed to add payload=%u";
              v35 = 54;
LABEL_41:
              _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, v34, buf, v35);
              continue;
            }
          }
        }
      }
    }

    v67 = [obj countByEnumeratingWithState:&v81 objects:v80 count:16];
    if (v67)
    {
      continue;
    }

    break;
  }

LABEL_44:
  LOBYTE(v38) = [(VCSessionMediaStreamPresenceConfigurationProvider *)self setupAudioRedWithPlist:a3 audioStreamConfig:a4 supportedAudioRules:a5];
  return v38;
}

- (id)newAudioStreamGroupStreamConfigWithPList:(id)a3 supportedAudioRules:(id)a4 maxIDSStreamIDCount:(unsigned int)a5 streamIDGenerator:(id)a6 ssrc:(unsigned int)a7 groupID:(unsigned int)a8
{
  v9 = *&a7;
  v11 = *&a5;
  v77 = *MEMORY[0x1E69E9840];
  v15 = objc_alloc_init(VCSessionParticipantAudioStreamConfig);
  if (!v15)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:];
LABEL_44:
    v19 = v64;
    v17 = v65;
    v21 = *buf;
    goto LABEL_83;
  }

  v16 = objc_alloc_init(VCMediaStreamRateControlConfig);
  if (!v16)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v39 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v39 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v48 = VRTraceErrorLogLevelToCSTR();
        v49 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *&buf[4] = v48;
          v67 = 2080;
          v68 = "[VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:]";
          v69 = 1024;
          v70 = 1268;
          v71 = 2112;
          v72 = v39;
          v73 = 2048;
          v74 = self;
          _os_log_error_impl(&dword_1DB56E000, v49, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create rate control config", buf, 0x30u);
        }
      }
    }

    v19 = 0;
    v17 = 0;
    goto LABEL_82;
  }

  v17 = v16;
  [(VCMediaStreamConfig *)v15 setRateControlConfig:v16];
  v18 = objc_alloc_init(VCAudioRuleCollection);
  if (!v18)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v40 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v40 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v50 = VRTraceErrorLogLevelToCSTR();
        v51 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *&buf[4] = v50;
          v67 = 2080;
          v68 = "[VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:]";
          v69 = 1024;
          v70 = 1272;
          v71 = 2112;
          v72 = v40;
          v73 = 2048;
          v74 = self;
          _os_log_error_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create audio rules collection", buf, 0x30u);
        }
      }
    }

    v19 = 0;
LABEL_82:
    v21 = 0;
    goto LABEL_83;
  }

  v19 = v18;
  [(VCSessionParticipantAudioStreamConfig *)v15 setAudioRules:v18];
  if (![(VCSessionMediaStreamPresenceConfigurationProvider *)self setupAudioRulesWithPList:a3 audioStreamConfig:v15 supportedAudioRules:a4])
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:];
    goto LABEL_44;
  }

  v20 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self newAudioMultiwayConfigWithPList:a3 audioRules:v19 maxIDSStreamIDCount:v11 streamIDGenerator:a6 ssrc:v9];
  if (!v20)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:];
    goto LABEL_44;
  }

  v21 = v20;
  [(VCMediaStreamConfig *)v15 setMultiwayConfig:v20];
  v22 = [a3 objectForKeyedSubscript:@"rtpTimestampRate"];
  if (v22)
  {
    v23 = v22;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:];
          }
        }

        goto LABEL_83;
      }

      if (objc_opt_respondsToSelector())
      {
        v41 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v41 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_83;
      }

      v52 = VRTraceErrorLogLevelToCSTR();
      v53 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_83;
      }

      *buf = 136316162;
      *&buf[4] = v52;
      v67 = 2080;
      v68 = "[VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:]";
      v69 = 1024;
      v70 = 1288;
      v71 = 2112;
      v72 = v41;
      v73 = 2048;
      v74 = self;
      v54 = " [%s] %s:%d %@(%p) Invalid RTP timestamp rate";
      goto LABEL_129;
    }

    -[VCMediaStreamConfig setRtpTimestampRate:](v15, "setRtpTimestampRate:", [v23 intValue]);
  }

  v24 = [a3 objectForKeyedSubscript:@"rtcpEnabled"];
  if (v24)
  {
    v25 = v24;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:];
          }
        }

        goto LABEL_83;
      }

      if (objc_opt_respondsToSelector())
      {
        v42 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v42 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_83;
      }

      v55 = VRTraceErrorLogLevelToCSTR();
      v53 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_83;
      }

      *buf = 136316162;
      *&buf[4] = v55;
      v67 = 2080;
      v68 = "[VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:]";
      v69 = 1024;
      v70 = 1294;
      v71 = 2112;
      v72 = v42;
      v73 = 2048;
      v74 = self;
      v54 = " [%s] %s:%d %@(%p) Invalid RTCP enabled";
      goto LABEL_129;
    }

    -[VCMediaStreamConfig setRtcpEnabled:](v15, "setRtcpEnabled:", [v25 BOOLValue]);
  }

  v26 = [a3 objectForKeyedSubscript:@"rtcpSendInterval"];
  if (v26)
  {
    v27 = v26;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:];
          }
        }

        goto LABEL_83;
      }

      if (objc_opt_respondsToSelector())
      {
        v43 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v43 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_83;
      }

      v56 = VRTraceErrorLogLevelToCSTR();
      v53 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_83;
      }

      *buf = 136316162;
      *&buf[4] = v56;
      v67 = 2080;
      v68 = "[VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:]";
      v69 = 1024;
      v70 = 1300;
      v71 = 2112;
      v72 = v43;
      v73 = 2048;
      v74 = self;
      v54 = " [%s] %s:%d %@(%p) Invalid RTP send interval";
      goto LABEL_129;
    }

    [v27 doubleValue];
    [(VCMediaStreamConfig *)v15 setRtcpSendInterval:?];
  }

  v28 = [a3 objectForKeyedSubscript:@"rtcpTimeOutEnabled"];
  if (v28)
  {
    v29 = v28;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:];
          }
        }

        goto LABEL_83;
      }

      if (objc_opt_respondsToSelector())
      {
        v44 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v44 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_83;
      }

      v57 = VRTraceErrorLogLevelToCSTR();
      v53 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_83;
      }

      *buf = 136316162;
      *&buf[4] = v57;
      v67 = 2080;
      v68 = "[VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:]";
      v69 = 1024;
      v70 = 1306;
      v71 = 2112;
      v72 = v44;
      v73 = 2048;
      v74 = self;
      v54 = " [%s] %s:%d %@(%p) Invalid RTCP timeout enabled";
      goto LABEL_129;
    }

    -[VCMediaStreamConfig setRtcpTimeOutEnabled:](v15, "setRtcpTimeOutEnabled:", [v29 BOOLValue]);
  }

  v30 = [a3 objectForKeyedSubscript:@"bundlingScheme"];
  if (v30)
  {
    v31 = v30;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:];
          }
        }

        goto LABEL_83;
      }

      if (objc_opt_respondsToSelector())
      {
        v45 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
      }

      else
      {
        v45 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_83;
      }

      v58 = VRTraceErrorLogLevelToCSTR();
      v53 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_83;
      }

      *buf = 136316162;
      *&buf[4] = v58;
      v67 = 2080;
      v68 = "[VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:]";
      v69 = 1024;
      v70 = 1312;
      v71 = 2112;
      v72 = v45;
      v73 = 2048;
      v74 = self;
      v54 = " [%s] %s:%d %@(%p) Invalid bundling scheme";
      goto LABEL_129;
    }

    v32 = [v31 intValue];
  }

  else
  {
    v32 = 1;
  }

  [(VCAudioStreamConfig *)v15 setBundlingScheme:v32];
  v33 = [a3 objectForKeyedSubscript:@"audioChannelCount"];
  if (v33)
  {
    v34 = v33;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v34 intValue];
      goto LABEL_26;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:];
        }
      }

      goto LABEL_83;
    }

    if (objc_opt_respondsToSelector())
    {
      v46 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v46 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_83;
    }

    v59 = VRTraceErrorLogLevelToCSTR();
    v53 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_83;
    }

    *buf = 136316162;
    *&buf[4] = v59;
    v67 = 2080;
    v68 = "[VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:]";
    v69 = 1024;
    v70 = 1320;
    v71 = 2112;
    v72 = v46;
    v73 = 2048;
    v74 = self;
    v54 = " [%s] %s:%d %@(%p) Invalid number of audio channels";
LABEL_129:
    v60 = v53;
    v61 = 48;
LABEL_130:
    _os_log_error_impl(&dword_1DB56E000, v60, OS_LOG_TYPE_ERROR, v54, buf, v61);
    goto LABEL_83;
  }

  v35 = 1;
LABEL_26:
  [(VCAudioStreamConfig *)v15 setChannelCount:v35];
  v36 = [a3 objectForKeyedSubscript:@"sframeCipherSuite"];
  if (v36)
  {
    v37 = v36;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[VCMediaStreamConfig setSframeCipherSuite:](v15, "setSframeCipherSuite:", [v37 intValue]);
      goto LABEL_29;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:];
        }
      }

      goto LABEL_83;
    }

    if (objc_opt_respondsToSelector())
    {
      v47 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self performSelector:sel_logPrefix];
    }

    else
    {
      v47 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v62 = VRTraceErrorLogLevelToCSTR();
      v63 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = v62;
        v67 = 2080;
        v68 = "[VCSessionMediaStreamPresenceConfigurationProvider newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:]";
        v69 = 1024;
        v70 = 1328;
        v71 = 2112;
        v72 = v47;
        v73 = 2048;
        v74 = self;
        v75 = 2112;
        v76 = @"sframeCipherSuite";
        v54 = " [%s] %s:%d %@(%p) Invalid %@ class";
        v60 = v63;
        v61 = 58;
        goto LABEL_130;
      }
    }

LABEL_83:

    v15 = 0;
    goto LABEL_34;
  }

LABEL_29:
  if (![(VCMediaStreamConfig *)v15 sframeCipherSuite])
  {
    [(VCMediaStreamConfig *)v15 setSRTPCipherSuite:3];
    [(VCMediaStreamConfig *)v15 setSRTCPCipherSuite:3];
  }

  if (a8 == 1936290409)
  {
    [(VCAudioStreamConfig *)v15 setSupportsAdaptation:1];
  }

  [(VCSessionParticipantAudioStreamConfig *)v15 setAudioRules:v19];
  [(VCMediaStreamConfig *)v15 setDirection:1];
  [(VCMediaStreamConfig *)v15 setJitterBufferMode:1];
LABEL_34:

  return v15;
}

- (BOOL)setupAudioStreamGroupStreams:(id)a3 streamGroupConfig:(id)a4 supportedAudioRules:(id)a5 streamIDGenerator:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
  if (v8)
  {
    v9 = v8;
    [a4 setObject:v8 forKeyedSubscript:@"streamConfigurations"];

    v10 = [objc_msgSend(a4 objectForKeyedSubscript:{@"streamGroupID", "unsignedIntegerValue"}];
    v11 = [a3 count];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = [a3 countByEnumeratingWithState:&v28 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v29;
      obj = a3;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:@"ignore"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v18 BOOLValue] & 1) == 0)
          {
            v19 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self newAudioStreamGroupStreamConfigWithPList:v17 supportedAudioRules:a5 maxIDSStreamIDCount:v11 streamIDGenerator:a6 ssrc:[VCSessionMediaStreamPresenceConfigurationProvider groupID:"streamSSRCForStreamGroupID:streamIndex:" streamSSRCForStreamGroupID:v10 streamIndex:v14], v10];
            if (!v19)
            {
              [VCSessionMediaStreamPresenceConfigurationProvider setupAudioStreamGroupStreams:? streamGroupConfig:? supportedAudioRules:? streamIDGenerator:?];
              return v26;
            }

            v20 = v19;
            v14 = (v14 + 1);
            [v9 addObject:v19];

            v11 = (v11 - 1);
          }
        }

        v13 = [obj countByEnumeratingWithState:&v28 objects:v27 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    return 1;
  }

  else
  {
    [VCSessionMediaStreamPresenceConfigurationProvider setupAudioStreamGroupStreams:? streamGroupConfig:? supportedAudioRules:? streamIDGenerator:?];
    return v26;
  }
}

- (id)newStreamGroupConfigurationWithPList:(id)a3 supportedAudioRules:(id)a4 streamIDGenerator:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!v9)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:];
    goto LABEL_24;
  }

  v19 = 0;
  if (!+[VCStringUtils convertString:toFourcc:](VCStringUtils, "convertString:toFourcc:", [a3 objectForKeyedSubscript:@"streamGroupID"], &v19))
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:];
    goto LABEL_24;
  }

  [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v19), @"streamGroupID"}];
  if ([a3 objectForKeyedSubscript:@"streamGroupRedundancyController"])
  {
    [v9 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", @"streamGroupRedundancyController", @"streamGroupRedundancyControllerEnabled"}];
  }

  if ([a3 objectForKeyedSubscript:@"streamInputID"])
  {
    v18 = 0;
    if (!+[VCStringUtils convertString:toFourcc:](VCStringUtils, "convertString:toFourcc:", [a3 objectForKeyedSubscript:@"streamInputID"], &v18))
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:];
      goto LABEL_24;
    }

    [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v18), @"streamInputID"}];
  }

  v17 = 0;
  if (!+[VCStringUtils convertString:toFourcc:](VCStringUtils, "convertString:toFourcc:", [a3 objectForKeyedSubscript:@"streamGroupMediaType"], &v17))
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:];
    goto LABEL_24;
  }

  [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v17), @"streamGroupMediaType"}];
  if ([a3 objectForKeyedSubscript:@"streamGroupSyncGroupID"])
  {
    v18 = 0;
    if (!+[VCStringUtils convertString:toFourcc:](VCStringUtils, "convertString:toFourcc:", [a3 objectForKeyedSubscript:@"streamGroupSyncGroupID"], &v18))
    {
      [VCSessionMediaStreamPresenceConfigurationProvider newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:];
      goto LABEL_24;
    }

    [v9 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v18), @"streamGroupSyncGroupID"}];
  }

  v10 = [a3 objectForKeyedSubscript:@"streams"];
  if (!v10)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:];
    goto LABEL_24;
  }

  v11 = v10;
  v12 = [v9 objectForKeyedSubscript:@"streamGroupMediaType"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [VCSessionMediaStreamPresenceConfigurationProvider newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:];
    goto LABEL_24;
  }

  v13 = [v12 unsignedIntValue];
  if (v13 == 1835365473 || (v14 = v13, v13 == 1986618469))
  {
    if (![(VCSessionMediaStreamPresenceConfigurationProvider *)self setupVideoStreamGroupStreams:v11 streamGroupConfig:v9 streamIDGenerator:a5])
    {
LABEL_20:
      [VCSessionMediaStreamPresenceConfigurationProvider newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:];
LABEL_24:

      return 0;
    }
  }

  else
  {
    if (v13 != 1936684398)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newStreamGroupConfigurationWithPList:v15 supportedAudioRules:v14 streamIDGenerator:?];
        }
      }

      goto LABEL_24;
    }

    if (![(VCSessionMediaStreamPresenceConfigurationProvider *)self setupAudioStreamGroupStreams:v11 streamGroupConfig:v9 supportedAudioRules:a4 streamIDGenerator:a5])
    {
      goto LABEL_20;
    }
  }

  return v9;
}

- (id)newStreamGroupConfigurationsWithSupportedAudioRules:(id)a3 streamIDGenerator:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = [(NSDictionary *)self->_configuration objectForKeyedSubscript:@"streamGroups"];
  v24 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v4;
  v6 = [v4 countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (!v6)
  {
    return v24;
  }

  v8 = v6;
  v9 = *v37;
  *&v7 = 136315906;
  v20 = v7;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v37 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v36 + 1) + 8 * i);
      v12 = +[VCSessionMediaStreamPresenceConfigurationProvider replaceTag:](VCSessionMediaStreamPresenceConfigurationProvider, "replaceTag:", [v11 objectForKeyedSubscript:{@"ignore", v20}]);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v12 BOOLValue] & 1) == 0)
      {
        v26 = 0;
        if (!+[VCStringUtils convertString:toFourcc:](VCStringUtils, "convertString:toFourcc:", [v11 objectForKeyedSubscript:@"streamGroupID"], &v26))
        {
          [VCSessionMediaStreamPresenceConfigurationProvider newStreamGroupConfigurationsWithSupportedAudioRules:streamIDGenerator:];
          goto LABEL_26;
        }

        if ([+[VCHardwareSettings supportedVideoPayloads](VCHardwareSettings "supportedVideoPayloads")] && +[VCHardwareSettings isVideoRenderingSupported](VCHardwareSettings, "isVideoRenderingSupported") || (v13 = objc_msgSend(v11, "objectForKeyedSubscript:", @"streamGroupMediaType"), v25 = 0, +[VCStringUtils convertString:toFourcc:](VCStringUtils, "convertString:toFourcc:", v13, &v25)) && v25 == 1936684398)
        {
          v14 = [(VCSessionMediaStreamPresenceConfigurationProvider *)self newStreamGroupConfigurationWithPList:v11 supportedAudioRules:a3 streamIDGenerator:a4];
          if (v14)
          {
            v15 = v14;
            [v24 addObject:v14];

            continue;
          }

          [VCSessionMediaStreamPresenceConfigurationProvider newStreamGroupConfigurationsWithSupportedAudioRules:streamIDGenerator:];
LABEL_26:

          return 0;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 8)
        {
          v16 = VRTraceErrorLogLevelToCSTR();
          v17 = *MEMORY[0x1E6986650];
          v18 = *MEMORY[0x1E6986650];
          if (*MEMORY[0x1E6986640] == 1)
          {
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v20;
              v28 = v16;
              v29 = 2080;
              v30 = "[VCSessionMediaStreamPresenceConfigurationProvider newStreamGroupConfigurationsWithSupportedAudioRules:streamIDGenerator:]";
              v31 = 1024;
              v32 = 1481;
              v33 = 2112;
              v34 = v13;
              _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d mediaType=%@", buf, 0x26u);
            }
          }

          else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = v20;
            v28 = v16;
            v29 = 2080;
            v30 = "[VCSessionMediaStreamPresenceConfigurationProvider newStreamGroupConfigurationsWithSupportedAudioRules:streamIDGenerator:]";
            v31 = 1024;
            v32 = 1481;
            v33 = 2112;
            v34 = v13;
            _os_log_debug_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEBUG, " [%s] %s:%d mediaType=%@", buf, 0x26u);
          }
        }
      }
    }

    v8 = [v5 countByEnumeratingWithState:&v36 objects:v35 count:16];
    if (v8)
    {
      continue;
    }

    return v24;
  }
}

+ (void)sessionConfigurationForType:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }

  OUTLINED_FUNCTION_20();
}

+ (void)sessionConfigurationForType:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }

  OUTLINED_FUNCTION_20();
}

- (void)initWithConfigurationType:supportedAudioRules:streamIDGenerator:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)initWithConfigurationType:supportedAudioRules:streamIDGenerator:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)initWithConfigurationType:supportedAudioRules:streamIDGenerator:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)initWithConfigurationType:supportedAudioRules:streamIDGenerator:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newStreamGroupToStreamInputsMapping
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

+ (void)publicSessionConfigurationForType:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

+ (void)publicSessionConfigurationForType:(int)a1 .cold.2(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    v2 = *MEMORY[0x1E6986650];
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      v5 = v3;
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      v6 = a1;
      _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Configuration is nil for type=%d", v4, 0x22u);
    }
  }
}

+ (void)publicSessionConfigurationForType:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

+ (void)publicSessionConfigurationForType:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

+ (void)readUint32WithPList:key:defaultValue:.cold.1()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  v3 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
    }
  }

  *v1 = v3;
  OUTLINED_FUNCTION_36();
}

- (void)newStreamInputConfigurations
{
  [a2 objectForKeyedSubscript:@"type"];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)newVideoStreamInputConfigurationWithPList:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoStreamInputConfigurationWithPList:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoStreamInputConfigurationWithPList:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newVideoStreamInputConfigurationWithPList:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newVideoStreamInputConfigurationWithPList:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoStreamInputConfigurationWithPList:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoStreamInputConfigurationWithPList:.cold.7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newDataStreamInputConfigurationWithPList:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newDataStreamInputConfigurationWithPList:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newDataStreamInputConfigurationWithPList:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.10()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.11()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.12()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.13()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.14()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.15()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.16()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.17()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.18()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.19()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.20()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newVideoMultiwayConfigWithPList:codecType:streamIDGenerator:ssrc:.cold.21()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)updateStreamConfig:(void *)a1 forPayload:networkPayload:groupID:.cold.1(void *a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)getVideoCodecConfigFromStreamConfigPList:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)getVideoCodecConfigFromStreamConfigPList:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)getVideoCodecFromStreamCodecPList:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = 0;
  OUTLINED_FUNCTION_39_0();
}

- (void)getVideoCodecFromStreamCodecPList:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

- (void)newVideoStreamGroupStreamConfigWithPList:(int)a1 streamIDGenerator:ssrc:groupID:shouldSkip:.cold.1(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.2()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

- (void)newVideoStreamGroupStreamConfigWithPList:(_BYTE *)a1 streamIDGenerator:ssrc:groupID:shouldSkip:.cold.3(_BYTE *a1)
{
  *a1 = 1;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.12()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.13()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)newVideoStreamGroupStreamConfigWithPList:(uint64_t)a1 streamIDGenerator:(void *)a2 ssrc:groupID:shouldSkip:.cold.16(uint64_t a1, void *a2)
{
  [a2 count];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.17()
{
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_21_0();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_13_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_36();
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.18()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  v3 = v2;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
    }
  }

  *v1 = v3;
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_36();
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.19()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.20()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.21()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

- (void)newVideoStreamGroupStreamConfigWithPList:streamIDGenerator:ssrc:groupID:shouldSkip:.cold.22()
{
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_24();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_16_7();
}

- (void)setupVideoStreamGroupStreams:streamGroupConfig:streamIDGenerator:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)setupVideoStreamGroupStreams:(_BYTE *)a1 streamGroupConfig:streamIDGenerator:.cold.2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

- (void)newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
    }
  }
}

- (void)newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:.cold.7()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:.cold.8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:.cold.9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:.cold.10()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newAudioMultiwayConfigWithPList:audioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:.cold.11()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)setupRedFactorsWithPList:audioStreamConfig:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupAudioRedWithPlist:audioStreamConfig:supportedAudioRules:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupAudioRedWithPlist:audioStreamConfig:supportedAudioRules:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupAudioRedWithPlist:audioStreamConfig:supportedAudioRules:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupAudioRedWithPlist:audioStreamConfig:supportedAudioRules:.cold.4()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupAudioRedWithPlist:audioStreamConfig:supportedAudioRules:.cold.5()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:.cold.9()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupAudioRulesWithPList:audioStreamConfig:supportedAudioRules:.cold.10()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_11_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_39_0();
}

- (void)newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:.cold.1()
{
  OUTLINED_FUNCTION_34_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_37_1();
}

- (void)newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:.cold.8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:.cold.9()
{
  OUTLINED_FUNCTION_34_1();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_16_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_37_1();
}

- (void)newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:.cold.10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:.cold.11()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)newAudioStreamGroupStreamConfigWithPList:supportedAudioRules:maxIDSStreamIDCount:streamIDGenerator:ssrc:groupID:.cold.12()
{
  OUTLINED_FUNCTION_37();
  v1 = v0;
  OUTLINED_FUNCTION_16_2();
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17_0();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *v1 = 0;
  OUTLINED_FUNCTION_16_7();
  OUTLINED_FUNCTION_36();
}

- (void)setupAudioStreamGroupStreams:(_BYTE *)a1 streamGroupConfig:supportedAudioRules:streamIDGenerator:.cold.1(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

- (void)setupAudioStreamGroupStreams:(_BYTE *)a1 streamGroupConfig:supportedAudioRules:streamIDGenerator:.cold.2(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_11_1();
      _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    }
  }

  *a1 = 0;
}

- (void)newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newStreamGroupConfigurationWithPList:(uint64_t)a1 supportedAudioRules:(int)a2 streamIDGenerator:.cold.7(uint64_t a1, int a2)
{
  FourccToCStr(a2);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

- (void)newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:.cold.8()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newStreamGroupConfigurationWithPList:supportedAudioRules:streamIDGenerator:.cold.9()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newStreamGroupConfigurationsWithSupportedAudioRules:streamIDGenerator:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)newStreamGroupConfigurationsWithSupportedAudioRules:streamIDGenerator:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

@end