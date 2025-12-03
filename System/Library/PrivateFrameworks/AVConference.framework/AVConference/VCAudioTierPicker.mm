@interface VCAudioTierPicker
+ (BOOL)arrayHasObject:(id)object withPayloadType:(int)type;
+ (BOOL)isAlwaysOnRedAudioTier:(unsigned int)tier redNumPayloads:(unsigned int)payloads usingCellular:(BOOL)cellular;
+ (BOOL)isModePlistSupported:(unsigned __int8)supported;
+ (BOOL)isU1ModeWithPlistSupport:(unsigned __int8)support;
+ (BOOL)loadVCAudioTierFromTierTable:(id)table bitrate:(unsigned int)bitrate redNumPayloads:(unsigned int)payloads outEntryArray:(id)array;
+ (BOOL)loadVCAudioTierFromTierTable:(id)table config:(id *)config allowRedAtLowBitrate:(BOOL)bitrate alwaysOnAudioRedundancyDisabled:(BOOL)disabled redNumPayloads:(unsigned int)payloads tierBitrate:(unsigned int)tierBitrate outEntryArray:(id)array;
+ (BOOL)shouldFilterTierForPayloadConfig:(id)config bitRate:(unsigned int)rate packetsPerBundle:(unsigned int)bundle mode:(unsigned __int8)mode redNumPayloads:(unsigned int)payloads cellular:(BOOL)cellular;
+ (BOOL)usePlistForAudioTierTableFromMode:(unsigned __int8)mode;
+ (id)allPossibleCombinations:(id)combinations supportedPacketsPerBundle:(id)bundle redNumPayloads:(unsigned int)payloads headerSize:(unsigned int)size tierPickerMode:(unsigned __int8)mode usingCellular:(BOOL)cellular useCaseWatchContinuity:(BOOL)continuity;
+ (id)selectHighestQualityAudioTiers:(id)tiers forBitrateLimits:(id)limits isHardLimit:(BOOL)limit;
+ (id)valueForNetworkBitrate:(id)bitrate networkBitrate:(unsigned int)networkBitrate;
+ (int)tierPickerModeToAVConferenceOperatingMode:(unsigned __int8)mode;
+ (unsigned)operatingModeToTierPickerMode:(int)mode isLowLatency:(BOOL)latency preferPlistForTierTable:(BOOL)table;
- (BOOL)addEntryMatchingPayloadToAudioTierMap:(id)map config:(id *)config entry:(id)entry bitrateTier:(id)tier forcedPayload:(int)payload;
- (BOOL)reconfigureTierPicker:(id *)picker;
- (BOOL)setUpFeatureFlagToEnablementMapping;
- (BOOL)setupTierPickerForConfig:(id *)config;
- (VCAudioTierPicker)initWithConfig:(id *)config;
- (id)allActiveAudioTiers;
- (id)chooseMultiwayAudioTierForRedPayload:(unint64_t)payload;
- (id)generateAudioTiersDictFromPlistForBitrateLimits:(id)limits tierPickerConfig:(id *)config redNumPayloads:(unsigned int)payloads;
- (id)loadAudioTiersFromPlist:(id)plist;
- (id)tierForAudioBitrate:(unint64_t)bitrate withRedNumPayloads:(unint64_t)payloads;
- (id)tierForNetworkBitrate:(unint64_t)bitrate withLegacyDuplication:(int)duplication;
- (id)tierForNetworkBitrate:(unint64_t)bitrate withRedNumPayloads:(unint64_t)payloads;
- (unint64_t)adjustedRedNumPayloadsForLowBitrateAudioTier:(id)tier redNumPayloads:(unint64_t)payloads;
- (void)addPayloadFromTier:(id)tier;
- (void)addPayloadsFromGFTPayloadsArray:(id)array isACC24Supported:(BOOL)supported;
- (void)addPayloadsFromGFTRedNumPayloadsDict:(id)dict isDeviceClassWolf:(BOOL)wolf isACC24Supported:(BOOL)supported;
- (void)addPayloadsFromU1IPVerDict:(id)dict config:(id *)config mode:(id)mode;
- (void)addPayloadsFromU1RedNumPayloadsDict:(id)dict config:(id *)config mode:(id)mode isIPv4:(BOOL)pv4 isCellular:(BOOL)cellular;
- (void)dealloc;
- (void)generateAudioPayloadsFromConfig:(id *)config;
- (void)logTierPickerConfig:(id *)config;
- (void)printCreatedAudioTiers:(id)tiers;
- (void)setUpFeatureFlagToEnablementMapping;
- (void)setupAlwaysOnRedTiersForSupportedRed:(id)red usingCellular:(BOOL)cellular;
@end

@implementation VCAudioTierPicker

- (BOOL)setUpFeatureFlagToEnablementMapping
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18 = @"UseShortREDWithACC24";
  v19[0] = [MEMORY[0x1E696AD98] numberWithBool:VCFeatureFlagManager_UseShortREDWithACC24()];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  self->_plistFeatureFlagToEnablementMapping = v3;
  if (!v3)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioTierPicker setUpFeatureFlagToEnablementMapping];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCAudioTierPicker *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          v8 = 136316162;
          v9 = v6;
          v10 = 2080;
          v11 = "[VCAudioTierPicker setUpFeatureFlagToEnablementMapping]";
          v12 = 1024;
          v13 = 209;
          v14 = 2112;
          v15 = v5;
          v16 = 2048;
          selfCopy = self;
          _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate plistFeatureFlagToEnablementMapping", &v8, 0x30u);
        }
      }
    }
  }

  return v3 != 0;
}

- (VCAudioTierPicker)initWithConfig:(id *)config
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCAudioTierPicker;
  v4 = [(VCAudioTierPicker *)&v9 init];
  if (v4)
  {
    v4->_tierTablePlist = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4->_audioPayloads = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if (![(VCAudioTierPicker *)v4 setUpFeatureFlagToEnablementMapping]|| (v5 = *&config->var2, v7[0] = *&config->var0, v7[1] = v5, v7[2] = *&config->var4, v8 = *&config->var12, ![(VCAudioTierPicker *)v4 setupTierPickerForConfig:v7]))
    {

      return 0;
    }
  }

  return v4;
}

- (BOOL)reconfigureTierPicker:(id *)picker
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      mode = self->_config.mode;
      var0 = picker->var0;
      *v11 = 136316162;
      *&v11[4] = v5;
      *&v11[12] = 2080;
      *&v11[14] = "[VCAudioTierPicker reconfigureTierPicker:]";
      *&v11[22] = 1024;
      *&v11[24] = 232;
      *&v11[28] = 1024;
      *&v11[30] = mode;
      *&v11[34] = 1024;
      *&v11[36] = var0;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Reconfiguring audio tier picker (%u -> %u)", v11, 0x28u);
    }
  }

  self->_tierTablesForRedNumPayloads = 0;
  self->_bitrateLimits = 0;
  v9 = *&picker->var2;
  *v11 = *&picker->var0;
  *&v11[16] = v9;
  *&v11[32] = *&picker->var4;
  v12 = *&picker->var12;
  return [(VCAudioTierPicker *)self setupTierPickerForConfig:v11];
}

- (void)logTierPickerConfig:(id *)config
{
  v53 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      var0 = config->var0;
      var4 = config->var4;
      var5 = config->var5;
      var6 = config->var6;
      var7 = config->var7;
      var8 = config->var8;
      var9 = config->var9;
      var10 = config->var10;
      var2 = config->var2;
      var3 = config->var3;
      *buf = 136318210;
      v30 = v4;
      v31 = 2080;
      v32 = "[VCAudioTierPicker logTierPickerConfig:]";
      v33 = 1024;
      v34 = 246;
      v35 = 1024;
      *v36 = var0;
      *&v36[4] = 2048;
      *&v36[6] = var4;
      v37 = 1024;
      v38 = var5;
      v39 = 1024;
      v40 = var6;
      v41 = 2048;
      v42 = var7;
      v43 = 1024;
      v44 = var8;
      v45 = 1024;
      v46 = var9;
      v47 = 1024;
      v48 = var10;
      v49 = 2112;
      v50 = var2;
      v51 = 2112;
      v52 = var3;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d { VCAudioTierPickerConfig: mode=%d headerSize=%lu usingCellular=%d isUseCaseWatchContinuity=%d defaultMaxCap=%lu alwaysOnAudioRedundancyEnabled=%d cellularAllowRedLowBitratesEnabled=%d wifiAllowRedLowBitratesEnabled=%d supportedPacketsPerBundle=(%@) supportedRedNumPayloads=(%@) }", buf, 0x68u);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  var1 = config->var1;
  v17 = [(__CFArray *)var1 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(var1);
        }

        v21 = *(*(&v25 + 1) + 8 * i);
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v22 = VRTraceErrorLogLevelToCSTR();
          v23 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v30 = v22;
            v31 = 2080;
            v32 = "[VCAudioTierPicker logTierPickerConfig:]";
            v33 = 1024;
            v34 = 248;
            v35 = 2112;
            *v36 = v21;
            _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d  { VCAudioTierPickerConfig: supportedAudioPayloadConfig=(%@)}", buf, 0x26u);
          }
        }
      }

      v18 = [(__CFArray *)var1 countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v18);
  }
}

- (BOOL)setupTierPickerForConfig:(id *)config
{
  v70 = *MEMORY[0x1E69E9840];
  var0 = config->var0;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (!var0)
  {
    if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioTierPicker setupTierPickerForConfig:];
      }
    }

    return 0;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v9 = *&config->var2;
      *buf = *&config->var0;
      *&buf[16] = v9;
      *&buf[32] = *&config->var4;
      v69 = *&config->var12;
      v10 = [(VCAudioTierPicker *)self configToString:buf];
      *buf = 136315906;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = "[VCAudioTierPicker setupTierPickerForConfig:]";
      *&buf[22] = 1024;
      *&buf[24] = 258;
      *&buf[28] = 2112;
      *&buf[30] = v10;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting up Audio Tier Picker with config %@", buf, 0x26u);
    }
  }

  v11 = *&config->var2;
  *buf = *&config->var0;
  *&buf[16] = v11;
  *&buf[32] = *&config->var4;
  v69 = *&config->var12;
  [(VCAudioTierPicker *)self logTierPickerConfig:buf];
  v12 = VCMediaStreamSendGroup;
  if (![VCAudioTierPicker isModePlistSupported:config->var0])
  {
    config->var12 = 0;
  }

  v13 = *&config->var0;
  v14 = *&config->var2;
  v15 = *&config->var4;
  *&self->_config.isACC24Supported = *&config->var12;
  *&self->_config.headerSize = v15;
  *&self->_config.supportedPacketsPerBundle = v14;
  *&self->_config.mode = v13;
  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[__CFArray count](config->var3, "count")}];
  self->_tierTablesForRedNumPayloads = v16;
  if (!v16)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioTierPicker setupTierPickerForConfig:];
      }
    }

    return 0;
  }

  v17 = [[BitrateLimits alloc] initWithOperatingMode:config->var0 withBitrateCap:config->var7 useCaseWatchContinuity:config->var6];
  self->_bitrateLimits = v17;
  if (!v17)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioTierPicker setupTierPickerForConfig:];
      }
    }

    return 0;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = config->var3;
  v18 = [(__CFArray *)obj countByEnumeratingWithState:&v64 objects:v63 count:16];
  if (v18)
  {
    v19 = v18;
    v57 = *v65;
    v20 = MEMORY[0x1E6986650];
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v65 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v64 + 1) + 8 * i);
        v23 = [&v12[98] usePlistForAudioTierTableFromMode:config->var0];
        v24 = VRTraceGetErrorLogLevelForModule();
        if (v23)
        {
          if (v24 >= 7)
          {
            v25 = VRTraceErrorLogLevelToCSTR();
            v26 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
            {
              v27 = config->var0;
              var11 = config->var11;
              var5 = config->var5;
              unsignedLongValue = [v22 unsignedLongValue];
              *buf = 136316674;
              *&buf[4] = v25;
              *&buf[12] = 2080;
              *&buf[14] = "[VCAudioTierPicker setupTierPickerForConfig:]";
              *&buf[22] = 1024;
              *&buf[24] = 289;
              *&buf[28] = 1024;
              *&buf[30] = v27;
              *&buf[34] = 1024;
              *&buf[36] = var11;
              v20 = MEMORY[0x1E6986650];
              *&buf[40] = 1024;
              *&buf[42] = var5;
              v12 = VCMediaStreamSendGroup;
              *&buf[46] = 2048;
              v69 = unsignedLongValue;
              _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Using plist for audio tier table for config.mode=%d isIPv4=%{BOOL}d isCellular=%{BOOL}d redNumPayloads=%lu", buf, 0x38u);
            }
          }

          v31 = -[VCAudioTierPicker generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:](self, "generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:", self->_bitrateLimits, config, [v22 unsignedIntegerValue]);
          if (!v31)
          {
            v49 = VRTraceGetErrorLogLevelForModule();
            if (v49 >= 3)
            {
              v50 = VRTraceErrorLogLevelToCSTR();
              v51 = *v20;
              if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
              {
                unsignedLongValue2 = [v22 unsignedLongValue];
                v54 = config->var0;
                *buf = 136316162;
                *&buf[4] = v50;
                *&buf[12] = 2080;
                *&buf[14] = "[VCAudioTierPicker setupTierPickerForConfig:]";
                *&buf[22] = 1024;
                *&buf[24] = 292;
                *&buf[28] = 2048;
                *&buf[30] = unsignedLongValue2;
                *&buf[38] = 1024;
                *&buf[40] = v54;
                _os_log_error_impl(&dword_1DB56E000, v51, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to load Audio Tier map from plist for redNumPayloads=%lu. config.mode=%d", buf, 0x2Cu);
              }
            }

            return 0;
          }
        }

        else
        {
          if (v24 >= 7)
          {
            v32 = VRTraceErrorLogLevelToCSTR();
            v33 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
            {
              v34 = config->var0;
              v35 = config->var11;
              v36 = config->var5;
              unsignedLongValue3 = [v22 unsignedLongValue];
              *buf = 136316674;
              *&buf[4] = v32;
              *&buf[12] = 2080;
              *&buf[14] = "[VCAudioTierPicker setupTierPickerForConfig:]";
              *&buf[22] = 1024;
              *&buf[24] = 296;
              *&buf[28] = 1024;
              *&buf[30] = v34;
              v12 = VCMediaStreamSendGroup;
              *&buf[34] = 1024;
              *&buf[36] = v35;
              v20 = MEMORY[0x1E6986650];
              *&buf[40] = 1024;
              *&buf[42] = v36;
              *&buf[46] = 2048;
              v69 = unsignedLongValue3;
              _os_log_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Using algorithm for audio tier table for config.mode=%d isIPv4=%{BOOL}d isCellular=%{BOOL}d redNumPayloads=%lu", buf, 0x38u);
            }
          }

          var1 = config->var1;
          var2 = config->var2;
          unsignedIntegerValue = [v22 unsignedIntegerValue];
          LOBYTE(v55) = config->var6;
          v31 = [&v12[98] selectHighestQualityAudioTiers:objc_msgSend(&v12[98] forBitrateLimits:"allPossibleCombinations:supportedPacketsPerBundle:redNumPayloads:headerSize:tierPickerMode:usingCellular:useCaseWatchContinuity:" isHardLimit:{var1, var2, unsignedIntegerValue, config->var4, config->var0, config->var5, v55), self->_bitrateLimits, config->var0 == 6}];
          if (!v31)
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              VRTraceErrorLogLevelToCSTR();
              if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
              {
                [VCAudioTierPicker setupTierPickerForConfig:];
              }
            }

            return 0;
          }
        }

        [(NSMutableDictionary *)self->_tierTablesForRedNumPayloads setObject:v31 forKeyedSubscript:v22];
      }

      v19 = [(__CFArray *)obj countByEnumeratingWithState:&v64 objects:v63 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  [(VCAudioTierPicker *)self generateAudioPayloadsFromConfig:config];
  if (([&v12[98] usePlistForAudioTierTableFromMode:config->var0] & 1) == 0 && !+[VCDefaults BOOLeanValueForKey:defaultValue:](VCDefaults, "BOOLeanValueForKey:defaultValue:", @"alwaysOnAudioRedundancyDisabled", !config->var8))
  {
    [(VCAudioTierPicker *)self setupAlwaysOnRedTiersForSupportedRed:config->var3 usingCellular:config->var5];
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  var3 = config->var3;
  v42 = [(__CFArray *)var3 countByEnumeratingWithState:&v59 objects:v58 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v60;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v60 != v44)
        {
          objc_enumerationMutation(var3);
        }

        [(VCAudioTierPicker *)self printCreatedAudioTiers:[(NSMutableDictionary *)self->_tierTablesForRedNumPayloads objectForKeyedSubscript:*(*(&v59 + 1) + 8 * j)]];
      }

      v43 = [(__CFArray *)var3 countByEnumeratingWithState:&v59 objects:v58 count:16];
    }

    while (v43);
  }

  v46 = [(NSMutableDictionary *)self->_tierTablesForRedNumPayloads objectForKeyedSubscript:[(__CFArray *)config->var3 objectAtIndexedSubscript:0]];
  self->_defaultTier = [v46 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", -[BitrateLimits defaultValueForNetwork:](self->_bitrateLimits, "defaultValueForNetwork:", config->var5))}];
  v47 = [(NSMutableDictionary *)self->_tierTablesForRedNumPayloads objectForKeyedSubscript:[(__CFArray *)config->var3 objectAtIndexedSubscript:0]];
  v48 = 1;
  self->_fallbackTier = [v47 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", -[BitrateLimits defaultValueForNetwork:](self->_bitrateLimits, "defaultValueForNetwork:", 1))}];
  return v48;
}

+ (int)tierPickerModeToAVConferenceOperatingMode:(unsigned __int8)mode
{
  if (mode > 9u)
  {
    return 2;
  }

  else
  {
    return dword_1DBD4F470[mode];
  }
}

+ (unsigned)operatingModeToTierPickerMode:(int)mode isLowLatency:(BOOL)latency preferPlistForTierTable:(BOOL)table
{
  tableCopy = table;
  latencyCopy = latency;
  v7 = *&mode;
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315906;
      v14 = v8;
      v15 = 2080;
      v16 = "+[VCAudioTierPicker operatingModeToTierPickerMode:isLowLatency:preferPlistForTierTable:]";
      v17 = 1024;
      v18 = 356;
      v19 = 2080;
      v20 = [VCStringUtils cStringFromOperatingMode:v7];
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Picking tier operatingMode=%s", &v13, 0x26u);
    }
  }

  v10 = 7;
  if (v7 > 2)
  {
    if (v7 <= 0xD)
    {
      if (((1 << v7) & 0x3B20) != 0)
      {
        return 1;
      }

      if (v7 == 6)
      {
        return 6;
      }

      if (v7 == 10)
      {
        return 0;
      }
    }

    if (v7 == 3)
    {
      return 1;
    }

    if (v7 != 4)
    {
      return v10;
    }

    goto LABEL_23;
  }

  if (!v7)
  {
    return 0;
  }

  if (v7 == 1)
  {
LABEL_23:
    if (tableCopy)
    {
      v10 = 5;
    }

    else
    {
      v10 = 4;
    }

    if (latencyCopy)
    {
      return 9;
    }

    return v10;
  }

  if (tableCopy)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if (latencyCopy)
  {
    v11 = 8;
  }

  if (v7 == 2)
  {
    return v11;
  }

  else
  {
    return 7;
  }
}

- (void)setupAlwaysOnRedTiersForSupportedRed:(id)red usingCellular:(BOOL)cellular
{
  if (red)
  {
    cellularCopy = cellular;
    if (-[NSArray containsObject:](-[BitrateLimits limits](self->_bitrateLimits, "limits"), "containsObject:", &unk_1F579AE48) && [red count] >= 2)
    {
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads objectForKeyedSubscript:{objc_msgSend(red, "objectAtIndexedSubscript:", 0)), "setObject:forKeyedSubscript:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads, "objectForKeyedSubscript:", objc_msgSend(red, "objectAtIndexedSubscript:", 1)), "objectForKeyedSubscript:", &unk_1F579AE48), &unk_1F579AE48}];
    }

    if (-[NSArray containsObject:](-[BitrateLimits limits](self->_bitrateLimits, "limits"), "containsObject:", &unk_1F579AE60) && [red count] >= 3)
    {
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads objectForKeyedSubscript:{objc_msgSend(red, "objectAtIndexedSubscript:", 0)), "setObject:forKeyedSubscript:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads, "objectForKeyedSubscript:", objc_msgSend(red, "objectAtIndexedSubscript:", 2)), "objectForKeyedSubscript:", &unk_1F579AE60), &unk_1F579AE60}];
      [-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads objectForKeyedSubscript:{objc_msgSend(red, "objectAtIndexedSubscript:", 1)), "setObject:forKeyedSubscript:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads, "objectForKeyedSubscript:", objc_msgSend(red, "objectAtIndexedSubscript:", 2)), "objectForKeyedSubscript:", &unk_1F579AE60), &unk_1F579AE60}];
    }

    if (-[NSArray containsObject:](-[BitrateLimits limits](self->_bitrateLimits, "limits"), "containsObject:", &unk_1F579AE78) && [red count] >= 4)
    {
      tierTablesForRedNumPayloads = self->_tierTablesForRedNumPayloads;
      if (cellularCopy)
      {
        [-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads objectForKeyedSubscript:{objc_msgSend(red, "objectAtIndexedSubscript:", 0)), "setObject:forKeyedSubscript:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](tierTablesForRedNumPayloads, "objectForKeyedSubscript:", objc_msgSend(red, "objectAtIndexedSubscript:", 2)), "objectForKeyedSubscript:", &unk_1F579AE78), &unk_1F579AE78}];
        [-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads objectForKeyedSubscript:{objc_msgSend(red, "objectAtIndexedSubscript:", 1)), "setObject:forKeyedSubscript:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads, "objectForKeyedSubscript:", objc_msgSend(red, "objectAtIndexedSubscript:", 2)), "objectForKeyedSubscript:", &unk_1F579AE78), &unk_1F579AE78}];
        v8 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads objectForKeyedSubscript:{objc_msgSend(red, "objectAtIndexedSubscript:", 3)), "objectForKeyedSubscript:", &unk_1F579AE60}];
        v9 = self->_tierTablesForRedNumPayloads;
        redCopy2 = red;
        v11 = 3;
      }

      else
      {
        [-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads objectForKeyedSubscript:{objc_msgSend(red, "objectAtIndexedSubscript:", 0)), "setObject:forKeyedSubscript:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](tierTablesForRedNumPayloads, "objectForKeyedSubscript:", objc_msgSend(red, "objectAtIndexedSubscript:", 3)), "objectForKeyedSubscript:", &unk_1F579AE78), &unk_1F579AE78}];
        [-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads objectForKeyedSubscript:{objc_msgSend(red, "objectAtIndexedSubscript:", 1)), "setObject:forKeyedSubscript:", objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads, "objectForKeyedSubscript:", objc_msgSend(red, "objectAtIndexedSubscript:", 3)), "objectForKeyedSubscript:", &unk_1F579AE78), &unk_1F579AE78}];
        v8 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads objectForKeyedSubscript:{objc_msgSend(red, "objectAtIndexedSubscript:", 3)), "objectForKeyedSubscript:", &unk_1F579AE78}];
        v9 = self->_tierTablesForRedNumPayloads;
        redCopy2 = red;
        v11 = 2;
      }

      v12 = -[NSMutableDictionary objectForKeyedSubscript:](v9, "objectForKeyedSubscript:", [redCopy2 objectAtIndexedSubscript:v11]);

      [v12 setObject:v8 forKeyedSubscript:&unk_1F579AE78];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioTierPicker setupAlwaysOnRedTiersForSupportedRed:usingCellular:];
    }
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCAudioTierPicker;
  [(VCAudioTierPicker *)&v3 dealloc];
}

+ (BOOL)arrayHasObject:(id)object withPayloadType:(int)type
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [object countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(object);
        }

        if ([*(*(&v12 + 1) + 8 * v9) payload] == type)
        {
          LOBYTE(v6) = 1;
          return v6;
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [object countByEnumeratingWithState:&v12 objects:v11 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

+ (id)allPossibleCombinations:(id)combinations supportedPacketsPerBundle:(id)bundle redNumPayloads:(unsigned int)payloads headerSize:(unsigned int)size tierPickerMode:(unsigned __int8)mode usingCellular:(BOOL)cellular useCaseWatchContinuity:(BOOL)continuity
{
  cellularCopy = cellular;
  modeCopy = mode;
  v56 = *MEMORY[0x1E69E9840];
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [VCAudioTierPicker arrayHasObject:combinations withPayloadType:97]|| [VCAudioTierPicker arrayHasObject:combinations withPayloadType:98]|| [VCAudioTierPicker arrayHasObject:combinations withPayloadType:108];
  v12 = [VCAudioTierPicker arrayHasObject:combinations withPayloadType:119];
  v13 = [VCAudioTierPicker arrayHasObject:combinations withPayloadType:108];
  v31 = [VCAudioTierPicker tierPickerModeToAVConferenceOperatingMode:modeCopy];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = combinations;
  v28 = [combinations countByEnumeratingWithState:&v52 objects:v51 count:16];
  if (v28)
  {
    v27 = *v53;
    do
    {
      v14 = 0;
      do
      {
        if (*v53 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v14;
        v15 = *(*(&v52 + 1) + 8 * v14);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        supportedBitrates = [v15 supportedBitrates];
        v34 = [supportedBitrates countByEnumeratingWithState:&v47 objects:v46 count:16];
        if (v34)
        {
          v33 = *v48;
          do
          {
            v16 = 0;
            do
            {
              if (*v48 != v33)
              {
                objc_enumerationMutation(supportedBitrates);
              }

              v35 = v16;
              unsignedIntValue = [*(*(&v47 + 1) + 8 * v16) unsignedIntValue];
              memset(&v40[1], 170, 24);
              v40[0] = v15;
              LOBYTE(v40[1]) = +[VCAudioTier bundlingAppliedByCodecForPayload:mode:](VCAudioTier, "bundlingAppliedByCodecForPayload:mode:", [v15 payload], v31);
              HIDWORD(v40[1]) = unsignedIntValue;
              LODWORD(v40[2]) = 0;
              HIDWORD(v40[2]) = payloads;
              v40[3] = size;
              if (+[VCPayloadUtils canBundleExternallyForPayload:forBundlingScheme:operatingMode:](VCPayloadUtils, "canBundleExternallyForPayload:forBundlingScheme:operatingMode:", [v15 payload], 1, v31))
              {
                v44 = 0u;
                v45 = 0u;
                v42 = 0u;
                v43 = 0u;
                v18 = [bundle countByEnumeratingWithState:&v42 objects:v41 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v43;
                  do
                  {
                    for (i = 0; i != v19; ++i)
                    {
                      if (*v43 != v20)
                      {
                        objc_enumerationMutation(bundle);
                      }

                      unsignedIntValue2 = [*(*(&v42 + 1) + 8 * i) unsignedIntValue];
                      if ((!v12 || [v15 payload] != 106) && (!v11 || objc_msgSend(v15, "payload") != 119) && (!v13 || objc_msgSend(v15, "payload") != 97 && objc_msgSend(v15, "payload") != 98) && (continuity || !+[VCAudioTierPicker shouldFilterTierForPayloadConfig:bitRate:packetsPerBundle:mode:redNumPayloads:cellular:](VCAudioTierPicker, "shouldFilterTierForPayloadConfig:bitRate:packetsPerBundle:mode:redNumPayloads:cellular:", v15, unsignedIntValue, unsignedIntValue2, modeCopy, payloads, cellularCopy)))
                      {
                        LODWORD(v40[2]) = unsignedIntValue2;
                        v23 = [[VCAudioTier alloc] initWithConfig:v40];
                        [v39 addObject:v23];
                      }
                    }

                    v19 = [bundle countByEnumeratingWithState:&v42 objects:v41 count:16];
                  }

                  while (v19);
                }
              }

              else if ((!v12 || [v15 payload] != 122 && objc_msgSend(v15, "payload") != 121) && (!v13 || objc_msgSend(v15, "payload") != 97 && objc_msgSend(v15, "payload") != 98))
              {
                LODWORD(v40[2]) = 1;
                v24 = [[VCAudioTier alloc] initWithConfig:v40];
                [v39 addObject:v24];
              }

              v16 = v35 + 1;
            }

            while (v35 + 1 != v34);
            v34 = [supportedBitrates countByEnumeratingWithState:&v47 objects:v46 count:16];
          }

          while (v34);
        }

        v14 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v52 objects:v51 count:16];
    }

    while (v28);
  }

  return v39;
}

+ (BOOL)usePlistForAudioTierTableFromMode:(unsigned __int8)mode
{
  if (mode > 7)
  {
    if ((mode - 8) < 2)
    {
      return 1;
    }
  }

  else
  {
    if (mode == 3 || mode == 5)
    {
      v3 = @"usePlistForAudioTierTable";
      return VCDefaults_GetBoolValueForKey(v3, 1);
    }

    if (mode == 6)
    {
      v3 = @"usePlistForAudioTierTableGFT";
      return VCDefaults_GetBoolValueForKey(v3, 1);
    }
  }

  return 0;
}

+ (BOOL)isModePlistSupported:(unsigned __int8)supported
{
  supportedCopy = supported;
  result = [self isU1ModeWithPlistSupport:?];
  if (supportedCopy == 6)
  {
    return 1;
  }

  return result;
}

+ (BOOL)isU1ModeWithPlistSupport:(unsigned __int8)support
{
  supportCopy = support;
  if ([VCAudioTierPicker isModeV2:?])
  {
    return 1;
  }

  return [VCAudioTierPicker isModeLowLatency:supportCopy];
}

- (id)generateAudioTiersDictFromPlistForBitrateLimits:(id)limits tierPickerConfig:(id *)config redNumPayloads:(unsigned int)payloads
{
  v110 = *MEMORY[0x1E69E9840];
  forceAudioPayload = [+[VCDefaults sharedInstance](VCDefaults forceAudioPayload];
  v9 = 45;
  if (!config->var5)
  {
    v9 = 46;
  }

  v60 = [VCDefaults BOOLeanValueForKey:@"rateControlAllowRedLowBitrate" defaultValue:*(&config->var0 + v9)];
  v59 = [VCDefaults BOOLeanValueForKey:@"alwaysOnAudioRedundancyDisabled" defaultValue:!config->var8];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = v11;
  v74 = v10;
  if (!v10)
  {
    [VCAudioTierPicker generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:];
    goto LABEL_57;
  }

  if (!v11)
  {
    [VCAudioTierPicker generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:];
    goto LABEL_57;
  }

  if (![VCAudioTierPicker isModePlistSupported:config->var0])
  {
    [VCAudioTierPicker generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:];
    goto LABEL_57;
  }

  if (config->var0 == 6)
  {
    v13 = @"AudioTiers_GFT";
  }

  else
  {
    v13 = @"AudioTiers_U1";
  }

  v64 = [(VCAudioTierPicker *)self loadAudioTiersFromPlist:v13];
  if (!v64)
  {
    [VCAudioTierPicker generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:];
    goto LABEL_57;
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = [limits limits];
  v63 = [obj countByEnumeratingWithState:&v106 objects:v105 count:16];
  if (v63)
  {
    v62 = *v107;
    configCopy = config;
LABEL_12:
    v14 = 0;
LABEL_13:
    if (*v107 != v62)
    {
      objc_enumerationMutation(obj);
    }

    v15 = *(*(&v106 + 1) + 8 * v14);
    [v12 removeAllObjects];
    if (config->var0 == 6)
    {
      if (!+[VCAudioTierPicker loadVCAudioTierFromTierTable:bitrate:redNumPayloads:outEntryArray:](VCAudioTierPicker, "loadVCAudioTierFromTierTable:bitrate:redNumPayloads:outEntryArray:", v64, [v15 unsignedIntValue], payloads, v12))
      {
        ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
        if (ErrorLogLevelForModule >= 3)
        {
          v48 = VRTraceErrorLogLevelToCSTR();
          v49 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            integerValue = [v15 integerValue];
            var0 = config->var0;
            *buf = 136316418;
            v78 = v48;
            v79 = 2080;
            v80 = "[VCAudioTierPicker generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:]";
            v81 = 1024;
            v82 = 592;
            v83 = 2048;
            v84 = integerValue;
            v85 = 1024;
            *v86 = var0;
            *&v86[4] = 1024;
            *&v86[6] = payloads;
            v44 = " [%s] %s:%d bitrateTier=%ld not found in plist for mode=%d redNumPayloads=%u";
            v45 = v49;
            v46 = 50;
LABEL_62:
            _os_log_error_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_ERROR, v44, buf, v46);
          }
        }

        goto LABEL_57;
      }
    }

    else if (!+[VCAudioTierPicker loadVCAudioTierFromTierTable:config:allowRedAtLowBitrate:alwaysOnAudioRedundancyDisabled:redNumPayloads:tierBitrate:outEntryArray:](VCAudioTierPicker, "loadVCAudioTierFromTierTable:config:allowRedAtLowBitrate:alwaysOnAudioRedundancyDisabled:redNumPayloads:tierBitrate:outEntryArray:", v64, config, v60, v59, payloads, [v15 integerValue], v12))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v38 = VRTraceErrorLogLevelToCSTR();
        v39 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          integerValue2 = [v15 integerValue];
          v41 = config->var0;
          var11 = config->var11;
          var5 = config->var5;
          *buf = 136316930;
          v78 = v38;
          v79 = 2080;
          v80 = "[VCAudioTierPicker generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:]";
          v81 = 1024;
          v82 = 596;
          v83 = 2048;
          v84 = integerValue2;
          v85 = 1024;
          *v86 = v41;
          *&v86[4] = 1024;
          *&v86[6] = var11;
          LOWORD(v87) = 1024;
          *(&v87 + 2) = var5;
          HIWORD(v87) = 1024;
          *v88 = payloads;
          v44 = " [%s] %s:%d bitrateTier=%ld not found in plist for mode=%d isIPv4=%{BOOL}d celluar=%{BOOL}d redNumPayloads=%u";
          v45 = v39;
          v46 = 62;
          goto LABEL_62;
        }
      }

      goto LABEL_57;
    }

    v66 = v14;
    if (forceAudioPayload != 128)
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v16 = [v12 countByEnumeratingWithState:&v101 objects:v100 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v102;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v102 != v18)
            {
              objc_enumerationMutation(v12);
            }

            [*(*(&v101 + 1) + 8 * i) setPayload:forceAudioPayload];
          }

          v17 = [v12 countByEnumeratingWithState:&v101 objects:v100 count:16];
        }

        while (v17);
      }
    }

    v76 = v15;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v20 = [v12 countByEnumeratingWithState:&v96 objects:v95 count:16];
    if (!v20)
    {
      goto LABEL_58;
    }

    v21 = v20;
    v22 = *v97;
LABEL_29:
    v23 = 0;
    while (1)
    {
      if (*v97 != v22)
      {
        objc_enumerationMutation(v12);
      }

      v24 = *(*(&v96 + 1) + 8 * v23);
      featureFlag = [v24 featureFlag];
      if (!featureFlag || (v26 = featureFlag, ([-[NSDictionary objectForKeyedSubscript:](self->_plistFeatureFlagToEnablementMapping objectForKeyedSubscript:{featureFlag), "BOOLValue"}] & 1) != 0))
      {
        if ([(VCAudioTierPicker *)self addEntryMatchingPayloadToAudioTierMap:v74 config:configCopy entry:v24 bitrateTier:v76 forcedPayload:forceAudioPayload])
        {
          v14 = v66 + 1;
          config = configCopy;
          if (v66 + 1 != v63)
          {
            goto LABEL_13;
          }

          v63 = [obj countByEnumeratingWithState:&v106 objects:v105 count:16];
          if (!v63)
          {

            return v74;
          }

          goto LABEL_12;
        }

        goto LABEL_35;
      }

      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_35;
        }

        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        integerValue3 = [v76 integerValue];
        codecBitrate = [v24 codecBitrate];
        packetsPerBundle = [v24 packetsPerBundle];
        redNumPayloads = [v24 redNumPayloads];
        *buf = 136316930;
        v78 = v33;
        v79 = 2080;
        v80 = "[VCAudioTierPicker generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:]";
        v81 = 1024;
        v82 = 609;
        v83 = 2112;
        v84 = v26;
        v85 = 2048;
        *v86 = integerValue3;
        *&v86[8] = 2048;
        v87 = codecBitrate;
        *v88 = 2048;
        *&v88[2] = packetsPerBundle;
        v89 = 2048;
        v90 = redNumPayloads;
        v30 = v34;
        v31 = " [%s] %s:%d Detected entryFeatureFlag=%@ which is NOT enabled. Skipping entry for bitrate=%ld with codecBitrate=%lu bundle=%lu RED=%lu";
        v32 = 78;
      }

      else
      {
        v27 = &stru_1F570E008;
        if (objc_opt_respondsToSelector())
        {
          v27 = [(VCAudioTierPicker *)self performSelector:sel_logPrefix];
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_35;
        }

        v72 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        integerValue4 = [v76 integerValue];
        codecBitrate2 = [v24 codecBitrate];
        packetsPerBundle2 = [v24 packetsPerBundle];
        redNumPayloads2 = [v24 redNumPayloads];
        *buf = 136317442;
        v78 = v72;
        v79 = 2080;
        v80 = "[VCAudioTierPicker generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:]";
        v81 = 1024;
        v82 = 609;
        v83 = 2112;
        v84 = v27;
        v85 = 2048;
        *v86 = self;
        *&v86[8] = 2112;
        v87 = v26;
        *v88 = 2048;
        *&v88[2] = integerValue4;
        v89 = 2048;
        v90 = codecBitrate2;
        v91 = 2048;
        v92 = packetsPerBundle2;
        v93 = 2048;
        v94 = redNumPayloads2;
        v30 = v28;
        v31 = " [%s] %s:%d %@(%p) Detected entryFeatureFlag=%@ which is NOT enabled. Skipping entry for bitrate=%ld with codecBitrate=%lu bundle=%lu RED=%lu";
        v32 = 98;
      }

      _os_log_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, v32);
LABEL_35:
      if (v21 == ++v23)
      {
        v36 = [v12 countByEnumeratingWithState:&v96 objects:v95 count:16];
        v21 = v36;
        if (v36)
        {
          goto LABEL_29;
        }

LABEL_58:
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v50 = VRTraceErrorLogLevelToCSTR();
          v51 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            integerValue5 = [v76 integerValue];
            v53 = configCopy->var0;
            v54 = configCopy->var11;
            v55 = configCopy->var5;
            v56 = [(__CFArray *)configCopy->var1 count];
            *buf = 136317186;
            v78 = v50;
            v79 = 2080;
            v80 = "[VCAudioTierPicker generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:]";
            v81 = 1024;
            v82 = 618;
            v83 = 2048;
            v84 = integerValue5;
            v85 = 1024;
            *v86 = v53;
            *&v86[4] = 1024;
            *&v86[6] = v54;
            LOWORD(v87) = 1024;
            *(&v87 + 2) = v55;
            HIWORD(v87) = 1024;
            *v88 = payloads;
            *&v88[4] = 1024;
            *&v88[6] = v56;
            v44 = " [%s] %s:%d No matching payload found for bitrateTier=%ld in plist for mode=%d isIPv4=%{BOOL}d cellular=%{BOOL}d redNumPayloads=%u supported payload count=%d";
            v45 = v51;
            v46 = 68;
            goto LABEL_62;
          }
        }

        break;
      }
    }
  }

LABEL_57:

  return 0;
}

- (BOOL)addEntryMatchingPayloadToAudioTierMap:(id)map config:(id *)config entry:(id)entry bitrateTier:(id)tier forcedPayload:(int)payload
{
  v7 = *&payload;
  v55 = *MEMORY[0x1E69E9840];
  featureFlag = [entry featureFlag];
  if ([entry payload] == 113)
  {
    v12 = [featureFlag isEqualToString:@"UseShortREDWithACC24"];
  }

  else
  {
    v12 = 0;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = config->var1;
  v13 = [(__CFArray *)obj countByEnumeratingWithState:&v51 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v33 = v12;
    mapCopy = map;
    v15 = *v52;
    v16 = "";
    v17 = MEMORY[0x1E6986650];
    while (2)
    {
      v18 = 0;
      do
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v51 + 1) + 8 * v18);
        payload = [v19 payload];
        if (payload == [entry payload])
        {
          if (config->var12 || (v21 = [entry payload], v7 == 113) || v21 != 113)
          {
            *buf = v19;
            *&buf[8] = 0xAAAAAAAAAAAAAAAALL;
            buf[8] = +[VCAudioTier bundlingAppliedByCodecForPayload:mode:](VCAudioTier, "bundlingAppliedByCodecForPayload:mode:", [entry payload], +[VCAudioTierPicker tierPickerModeToAVConferenceOperatingMode:](VCAudioTierPicker, "tierPickerModeToAVConferenceOperatingMode:", config->var0));
            *&buf[12] = [entry codecBitrate];
            *&buf[16] = [entry packetsPerBundle];
            redNumPayloads = [entry redNumPayloads];
            var4 = config->var4;
            *&buf[20] = redNumPayloads;
            v40 = var4;
            *v41 = VCPayloadUtils_ShortREDBitrateForPayload([entry payload], v33);
            v31 = [[VCAudioTier alloc] initWithConfig:buf];
            [mapCopy setObject:v31 forKeyedSubscript:tier];

            LOBYTE(v13) = 1;
            return v13;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v22 = VRTraceErrorLogLevelToCSTR();
            v23 = *v17;
            if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
            {
              integerValue = [tier integerValue];
              codecBitrate = [entry codecBitrate];
              v24 = v16;
              v25 = v7;
              configCopy = config;
              packetsPerBundle = [entry packetsPerBundle];
              redNumPayloads2 = [entry redNumPayloads];
              *buf = 136316930;
              *&buf[4] = v22;
              *&buf[12] = 2080;
              *&buf[14] = "[VCAudioTierPicker addEntryMatchingPayloadToAudioTierMap:config:entry:bitrateTier:forcedPayload:]";
              *&buf[22] = 1024;
              v40 = 650;
              *v41 = 1024;
              *&v41[2] = 113;
              v42 = 2048;
              v43 = integerValue;
              v44 = 2048;
              v45 = codecBitrate;
              v46 = 2048;
              v47 = packetsPerBundle;
              config = configCopy;
              v7 = v25;
              v16 = v24;
              v17 = MEMORY[0x1E6986650];
              v48 = 2048;
              v49 = redNumPayloads2;
              _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Found payload=%u entry in tier table, but the payload is not supported. Skipping entry for bitrate=%ld with codecBitrate=%lu bundle=%lu RED=%lu", buf, 0x4Au);
            }
          }
        }

        ++v18;
      }

      while (v14 != v18);
      v13 = [(__CFArray *)obj countByEnumeratingWithState:&v51 objects:v50 count:16];
      v14 = v13;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  return v13;
}

- (id)loadAudioTiersFromPlist:(id)plist
{
  if (![(NSMutableDictionary *)self->_tierTablePlist objectForKeyedSubscript:?])
  {
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_tierTablePlist, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", plist, @"plist"}], plist);
  }

  tierTablePlist = self->_tierTablePlist;

  return [(NSMutableDictionary *)tierTablePlist objectForKeyedSubscript:plist];
}

+ (BOOL)isAlwaysOnRedAudioTier:(unsigned int)tier redNumPayloads:(unsigned int)payloads usingCellular:(BOOL)cellular
{
  v5 = tier == 120000 && payloads == 0;
  if (v5 || tier == 170000 && payloads < 2 || tier == 220000 && payloads < 3 || tier == 220000 && payloads == 3 && cellular)
  {
    return 1;
  }

  v8 = tier == 200000 && payloads == 0;
  return tier == 267000 && payloads < 2 || v8;
}

+ (BOOL)loadVCAudioTierFromTierTable:(id)table config:(id *)config allowRedAtLowBitrate:(BOOL)bitrate alwaysOnAudioRedundancyDisabled:(BOOL)disabled redNumPayloads:(unsigned int)payloads tierBitrate:(unsigned int)tierBitrate outEntryArray:(id)array
{
  disabledCopy = disabled;
  v81 = *MEMORY[0x1E69E9840];
  if (!array)
  {
    [VCAudioTierPicker loadVCAudioTierFromTierTable:buf config:? allowRedAtLowBitrate:? alwaysOnAudioRedundancyDisabled:? redNumPayloads:? tierBitrate:? outEntryArray:?];
LABEL_44:
    LOBYTE(v32) = buf[0];
    return v32;
  }

  bitrateCopy = bitrate;
  if ([self isModeAudioOnly:config->var0])
  {
    v12 = @"modeAudio";
  }

  else
  {
    v12 = @"modeVideo";
  }

  v13 = [table objectForKeyedSubscript:v12];
  if (!v13)
  {
    [VCAudioTierPicker loadVCAudioTierFromTierTable:config config:buf allowRedAtLowBitrate:? alwaysOnAudioRedundancyDisabled:? redNumPayloads:? tierBitrate:? outEntryArray:?];
    goto LABEL_44;
  }

  if (config->var11)
  {
    v14 = @"IPv4";
  }

  else
  {
    v14 = @"IPv6";
  }

  v15 = [v13 objectForKeyedSubscript:v14];
  if (!v15)
  {
    [VCAudioTierPicker loadVCAudioTierFromTierTable:config config:&config->var11 allowRedAtLowBitrate:buf alwaysOnAudioRedundancyDisabled:? redNumPayloads:? tierBitrate:? outEntryArray:?];
    goto LABEL_44;
  }

  if (config->var5)
  {
    v16 = @"cellular";
  }

  else
  {
    v16 = @"WiFi";
  }

  v17 = [v15 objectForKeyedSubscript:v16];
  if (!v17)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_40;
    }

    v41 = VRTraceErrorLogLevelToCSTR();
    v42 = *MEMORY[0x1E6986650];
    v32 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v32)
    {
      return v32;
    }

    var0 = config->var0;
    var11 = config->var11;
    var5 = config->var5;
    *buf = 136316418;
    v66 = v41;
    v67 = 2080;
    v68 = "+[VCAudioTierPicker loadVCAudioTierFromTierTable:config:allowRedAtLowBitrate:alwaysOnAudioRedundancyDisabled:redNumPayloads:tierBitrate:outEntryArray:]";
    v69 = 1024;
    v70 = 725;
    v71 = 1024;
    v72 = var0;
    v73 = 1024;
    v74 = var11;
    v75 = 1024;
    v76 = var5;
    v38 = " [%s] %s:%d No tier table entry for mode=%d and isIPv4=%{BOOL}d cellular=%{BOOL}d";
    v39 = v42;
    v40 = 46;
LABEL_39:
    _os_log_error_impl(&dword_1DB56E000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
LABEL_40:
    LOBYTE(v32) = 0;
    return v32;
  }

  v18 = [v17 objectForKeyedSubscript:@"redNumPayloads"];
  v19 = [v18 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", payloads), "stringValue")}];
  if (!v19)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_40;
    }

    v46 = VRTraceErrorLogLevelToCSTR();
    v47 = *MEMORY[0x1E6986650];
    v32 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v32)
    {
      return v32;
    }

    v48 = config->var0;
    v49 = config->var11;
    v50 = config->var5;
    *buf = 136316674;
    v66 = v46;
    v67 = 2080;
    v68 = "+[VCAudioTierPicker loadVCAudioTierFromTierTable:config:allowRedAtLowBitrate:alwaysOnAudioRedundancyDisabled:redNumPayloads:tierBitrate:outEntryArray:]";
    v69 = 1024;
    v70 = 727;
    v71 = 1024;
    v72 = v48;
    v73 = 1024;
    v74 = v49;
    v75 = 1024;
    v76 = v50;
    v77 = 1024;
    payloadsCopy3 = payloads;
    v38 = " [%s] %s:%d No tier table entry for mode=%d and isIPv4=%{BOOL}d cellular=%{BOOL}d redNumPayloads=%u";
    v39 = v47;
    v40 = 52;
    goto LABEL_39;
  }

  v20 = [v19 objectForKeyedSubscript:@"bitrateTier"];
  v21 = [objc_msgSend(v20 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", tierBitrate), "stringValue")), "objectForKeyedSubscript:", @"payloads"}];
  if (!v21)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_40;
    }

    v51 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    v32 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (!v32)
    {
      return v32;
    }

    v52 = config->var0;
    v53 = config->var11;
    v54 = config->var5;
    *buf = 136316930;
    v66 = v51;
    v67 = 2080;
    v68 = "+[VCAudioTierPicker loadVCAudioTierFromTierTable:config:allowRedAtLowBitrate:alwaysOnAudioRedundancyDisabled:redNumPayloads:tierBitrate:outEntryArray:]";
    v69 = 1024;
    v70 = 729;
    v71 = 1024;
    v72 = v52;
    v73 = 1024;
    v74 = v53;
    v75 = 1024;
    v76 = v54;
    v77 = 1024;
    payloadsCopy3 = payloads;
    v79 = 1024;
    tierBitrateCopy2 = tierBitrate;
    v38 = " [%s] %s:%d No payloads array for mode=%d and isIPv4=%{BOOL}d cellular=%{BOOL}d redNumPayloads=%u tierBitrate=%u";
LABEL_38:
    v39 = v34;
    v40 = 58;
    goto LABEL_39;
  }

  v22 = v21;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v23 = [v21 countByEnumeratingWithState:&v61 objects:v60 count:16];
  if (v23)
  {
    v24 = v23;
    configCopy = config;
    v25 = *v62;
LABEL_18:
    v26 = 0;
    while (1)
    {
      if (*v62 != v25)
      {
        objc_enumerationMutation(v22);
      }

      if ((v27 = *(*(&v61 + 1) + 8 * v26), bitrateCopy) && [VCAudioTierPicker isLowBitrateAudioTier:tierBitrate]|| disabledCopy && [VCAudioTierPicker isAlwaysOnRedAudioTier:tierBitrate redNumPayloads:payloads usingCellular:configCopy->var5])
      {
        v28 = [v27 mutableCopy];
        [v28 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", payloads), @"redNumPayloads"}];
      }

      else
      {
        v28 = 0;
      }

      v29 = [VCAudioTierPickerPlistEntry alloc];
      v30 = v28 ? v28 : v27;
      configCopy = [(VCAudioTierPickerPlistEntry *)v29 initWithDictionary:v30, configCopy];

      if (!configCopy)
      {
        break;
      }

      [array addObject:configCopy];

      if (v24 == ++v26)
      {
        v24 = [v22 countByEnumeratingWithState:&v61 objects:v60 count:16];
        if (v24)
        {
          goto LABEL_18;
        }

        goto LABEL_33;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_40;
    }

    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    v32 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
    if (v32)
    {
      v35 = configCopy->var0;
      v36 = configCopy->var11;
      v37 = configCopy->var5;
      *buf = 136316930;
      v66 = v33;
      v67 = 2080;
      v68 = "+[VCAudioTierPicker loadVCAudioTierFromTierTable:config:allowRedAtLowBitrate:alwaysOnAudioRedundancyDisabled:redNumPayloads:tierBitrate:outEntryArray:]";
      v69 = 1024;
      v70 = 741;
      v71 = 1024;
      v72 = v35;
      v73 = 1024;
      v74 = v36;
      v75 = 1024;
      v76 = v37;
      v77 = 1024;
      payloadsCopy3 = payloads;
      v79 = 1024;
      tierBitrateCopy2 = tierBitrate;
      v38 = " [%s] %s:%d Invalid entry in tier dictionary for mode=%d and isIPv4=%{BOOL}d cellular=%{BOOL}d redNumPayloads=%u tierBitrate=%u";
      goto LABEL_38;
    }
  }

  else
  {
LABEL_33:
    LOBYTE(v32) = 1;
  }

  return v32;
}

+ (BOOL)loadVCAudioTierFromTierTable:(id)table bitrate:(unsigned int)bitrate redNumPayloads:(unsigned int)payloads outEntryArray:(id)array
{
  v43 = *MEMORY[0x1E69E9840];
  if (!array)
  {
    [VCAudioTierPicker loadVCAudioTierFromTierTable:buf bitrate:&v28 redNumPayloads:? outEntryArray:?];
LABEL_27:
    v12 = *buf;
    v21 = v28;
    goto LABEL_20;
  }

  v7 = *&payloads;
  v8 = *&bitrate;
  v9 = [table objectForKeyedSubscript:@"networkBitrate"];
  v10 = [objc_msgSend(v9 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v8), "stringValue")), "objectForKeyedSubscript:", @"redNumPayloads"}];
  v11 = [objc_msgSend(v10 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v7), "stringValue")), "mutableCopy"}];
  if (!v11)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = v25;
        v35 = 2080;
        v36 = "+[VCAudioTierPicker loadVCAudioTierFromTierTable:bitrate:redNumPayloads:outEntryArray:]";
        v37 = 1024;
        v38 = 761;
        v39 = 1024;
        v40 = v8;
        v41 = 1024;
        v42 = v7;
        _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d No tier table entry for bitrate=%u redNumPayloads=%u", buf, 0x28u);
      }
    }

    v12 = 0;
LABEL_17:
    v21 = 0;
    goto LABEL_20;
  }

  v12 = v11;
  v13 = [v11 objectForKeyedSubscript:@"payloads"];
  if (!v13)
  {
    [VCAudioTierPicker loadVCAudioTierFromTierTable:v12 bitrate:buf redNumPayloads:&v28 outEntryArray:?];
    goto LABEL_27;
  }

  v14 = v13;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = [v13 countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v27 = v12;
    v17 = *v31;
LABEL_6:
    v18 = 0;
    while (1)
    {
      if (*v31 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = [*(*(&v30 + 1) + 8 * v18) mutableCopy];
      [v19 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v7), @"redNumPayloads"}];
      v20 = [[VCAudioTierPickerPlistEntry alloc] initWithDictionary:v19];

      if (!v20)
      {
        break;
      }

      [array addObject:v20];

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v30 objects:v29 count:16];
        if (v16)
        {
          goto LABEL_6;
        }

        v21 = 1;
        goto LABEL_19;
      }
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      v21 = 0;
LABEL_19:
      v12 = v27;
      goto LABEL_20;
    }

    v22 = VRTraceErrorLogLevelToCSTR();
    v23 = *MEMORY[0x1E6986650];
    v12 = v27;
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = v22;
      v35 = 2080;
      v36 = "+[VCAudioTierPicker loadVCAudioTierFromTierTable:bitrate:redNumPayloads:outEntryArray:]";
      v37 = 1024;
      v38 = 772;
      v39 = 1024;
      v40 = v8;
      v41 = 1024;
      v42 = v7;
      _os_log_error_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_ERROR, " [%s] %s:%d Invalid entry in tier dictionary for bitrate=%u redNumPayloads=%u", buf, 0x28u);
    }

    goto LABEL_17;
  }

  v21 = 1;
LABEL_20:

  return v21;
}

+ (id)selectHighestQualityAudioTiers:(id)tiers forBitrateLimits:(id)limits isHardLimit:(BOOL)limit
{
  limitCopy = limit;
  v74 = *MEMORY[0x1E69E9840];
  v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = [limits limits];
  v34 = [obj countByEnumeratingWithState:&v70 objects:v69 count:16];
  if (v34)
  {
    v33 = *v71;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v71 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v70 + 1) + 8 * v5);
        v6 = [objc_msgSend(objc_msgSend(limits "limits")];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v43 = [tiers countByEnumeratingWithState:&v65 objects:v64 count:16];
        if (!v43)
        {
          goto LABEL_44;
        }

        v37 = v5;
        v7 = 0;
        v41 = *v66;
        v8 = v6;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v66 != v41)
            {
              objc_enumerationMutation(tiers);
            }

            v10 = *(*(&v65 + 1) + 8 * i);
            [objc_msgSend(v10 "payloadConfig")];
            v12 = v11;
            integerValue = [v42 integerValue];
            if (!limitCopy || [v10 networkBitrate] <= integerValue)
            {
              v14 = v12;
              v15 = integerValue - [v10 networkBitrate];
              if (v15 >= 0)
              {
                v16 = v15;
              }

              else
              {
                v16 = -v15;
              }

              v17 = v8;
              v18 = v7;
              v19 = v16 + ((1.0 - v14) * integerValue * 0.5) < v8 || v7 == 0;
              v20 = " new";
              v21 = v16;
              v8 = (v16 + ((1.0 - v14) * integerValue * 0.5));
              v7 = v10;
              if (!v19)
              {
                v22 = v6;
                if (v16 >= v6)
                {
                  v20 = "";
                  v21 = v6;
                  v8 = v17;
                  v7 = v18;
                }

                else
                {
                  v23 = v18;
                  if ([objc_msgSend(v18 "payloadConfig")])
                  {
                    audioCodecBitrate = [v23 audioCodecBitrate];
                    audioCodecBitrate2 = [v10 audioCodecBitrate];
                    v20 = " new";
                    if (audioCodecBitrate < audioCodecBitrate2)
                    {
                      v21 = v16;
                    }

                    else
                    {
                      v20 = "";
                      v21 = v22;
                    }

                    if (audioCodecBitrate < audioCodecBitrate2)
                    {
                      v7 = v10;
                    }

                    else
                    {
                      v7 = v23;
                    }

                    v8 = v17;
                  }

                  else
                  {
                    v20 = "";
                    v21 = v22;
                    v8 = v17;
                    v7 = v23;
                  }
                }
              }

              v26 = v20;
              if (VRTraceGetErrorLogLevelForModule() >= 8)
              {
                v38 = VRTraceErrorLogLevelToCSTR();
                v27 = *MEMORY[0x1E6986650];
                v28 = *MEMORY[0x1E6986650];
                if (*MEMORY[0x1E6986640] == 1)
                {
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    v29 = [objc_msgSend(v10 "description")];
                    *buf = 136317442;
                    v45 = v38;
                    v46 = 2080;
                    v47 = "+[VCAudioTierPicker selectHighestQualityAudioTiers:forBitrateLimits:isHardLimit:]";
                    v48 = 1024;
                    v49 = 825;
                    v50 = 1024;
                    v51 = integerValue;
                    v52 = 2080;
                    v53 = v29;
                    v54 = 2048;
                    v55 = v14;
                    v56 = 1024;
                    v57 = ((1.0 - v14) * integerValue * 0.5);
                    v58 = 1024;
                    v59 = v16;
                    v60 = 1024;
                    v61 = v16 + v57;
                    v62 = 2080;
                    v63 = v26;
                    _os_log_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AudioTierSelection %d: %s quality[%f] diff=%d+%d=%d)%s", buf, 0x52u);
                  }
                }

                else if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  v30 = [objc_msgSend(v10 "description")];
                  *buf = 136317442;
                  v45 = v38;
                  v46 = 2080;
                  v47 = "+[VCAudioTierPicker selectHighestQualityAudioTiers:forBitrateLimits:isHardLimit:]";
                  v48 = 1024;
                  v49 = 825;
                  v50 = 1024;
                  v51 = integerValue;
                  v52 = 2080;
                  v53 = v30;
                  v54 = 2048;
                  v55 = v14;
                  v56 = 1024;
                  v57 = ((1.0 - v14) * integerValue * 0.5);
                  v58 = 1024;
                  v59 = v16;
                  v60 = 1024;
                  v61 = v16 + v57;
                  v62 = 2080;
                  v63 = v26;
                  _os_log_debug_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_DEBUG, " [%s] %s:%d AudioTierSelection %d: %s quality[%f] diff=%d+%d=%d)%s", buf, 0x52u);
                }
              }

              v6 = v21;
            }
          }

          v43 = [tiers countByEnumeratingWithState:&v65 objects:v64 count:16];
        }

        while (v43);
        if (!v7)
        {
LABEL_44:

          return 0;
        }

        [v36 setObject:v7 forKeyedSubscript:v42];
        v5 = v37 + 1;
      }

      while (v37 + 1 != v34);
      v34 = [obj countByEnumeratingWithState:&v70 objects:v69 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  return v36;
}

- (void)printCreatedAudioTiers:(id)tiers
{
  tiersCopy = tiers;
  v42 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(tiers "allKeys")];
  selfCopy = self;
  v6 = [VCAudioTierPicker usePlistForAudioTierTableFromMode:self->_config.mode];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  reverseObjectEnumerator = [v5 reverseObjectEnumerator];
  v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (v24)
  {
    v9 = *v39;
    *&v8 = 136316418;
    v22 = v8;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = [tiersCopy objectForKeyedSubscript:{v11, v22}];
        if ((v6 || ([v11 integerValue] > 10000 || !objc_msgSend(v12, "redNumPayloads")) && (objc_msgSend(v11, "integerValue") > 16000 || objc_msgSend(v12, "redNumPayloads") <= 1) && (objc_msgSend(v11, "integerValue") > 21000 || objc_msgSend(v12, "redNumPayloads") <= 2)) && VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v15 = v9;
            v16 = v6;
            v17 = tiersCopy;
            v18 = reverseObjectEnumerator;
            if ([VCAudioTierPicker isModeAudioVideo:selfCopy->_config.mode])
            {
              v19 = "Video";
            }

            else
            {
              v19 = "Audio";
            }

            integerValue = [v11 integerValue];
            v21 = [objc_msgSend(v12 "description")];
            *buf = v22;
            v26 = v13;
            v27 = 2080;
            v28 = "[VCAudioTierPicker printCreatedAudioTiers:]";
            v29 = 1024;
            v30 = 856;
            v31 = 2080;
            v32 = v19;
            reverseObjectEnumerator = v18;
            tiersCopy = v17;
            v6 = v16;
            v9 = v15;
            v33 = 1024;
            v34 = integerValue;
            v35 = 2080;
            v36 = v21;
            _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d (%s) %d: %s", buf, 0x36u);
          }
        }
      }

      v24 = [reverseObjectEnumerator countByEnumeratingWithState:&v38 objects:v37 count:16];
    }

    while (v24);
  }
}

+ (BOOL)shouldFilterTierForPayloadConfig:(id)config bitRate:(unsigned int)rate packetsPerBundle:(unsigned int)bundle mode:(unsigned __int8)mode redNumPayloads:(unsigned int)payloads cellular:(BOOL)cellular
{
  cellularCopy = cellular;
  modeCopy = mode;
  payload = [config payload];
  if (payload == 104)
  {
    if (rate >> 5 < 0x271)
    {
      return 1;
    }
  }

  else if (payload == 119)
  {
    if (rate >> 6 > 0x176)
    {
      return 1;
    }
  }

  else if (payload == 106 && rate - 20001 < 0xFFFFE0BF)
  {
    return 1;
  }

  if (modeCopy != 6)
  {
    if (cellularCopy)
    {
      if (bundle >= 3)
      {
        return 0;
      }
    }

    else if (rate >> 5 > 0x270 || bundle >= 3)
    {
      payload2 = [config payload];
      switch(payload2)
      {
        case 'w':
          if (bundle == 3)
          {
            return 0;
          }

          break;
        case 'h':
          if (bundle != 3)
          {
            return 0;
          }

          break;
        case 'e':
          v19 = [self isModeLowLatency:modeCopy];
          if (bundle < 2 || (v19 & 1) == 0)
          {
            return 0;
          }

          break;
        default:
          return 0;
      }
    }

    return 1;
  }

  payload3 = [config payload];
  return rate >> 4 < 0x753 && payload3 == 104;
}

+ (id)valueForNetworkBitrate:(id)bitrate networkBitrate:(unsigned int)networkBitrate
{
  v4 = *&networkBitrate;
  v6 = [objc_msgSend(bitrate "allKeys")];
  v7 = [v6 count] - 1;
  v8 = +[VCArrayUtils insertionIndexForValue:array:](VCArrayUtils, "insertionIndexForValue:array:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4], v6);
  if (v7 >= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = [v6 objectAtIndexedSubscript:v9];

  return [bitrate objectForKeyedSubscript:v10];
}

- (id)tierForNetworkBitrate:(unint64_t)bitrate withLegacyDuplication:(int)duplication
{
  v65[8] = *MEMORY[0x1E69E9840];
  v6 = 100;
  v7 = 150;
  if (duplication != 150)
  {
    v7 = 100;
  }

  if (duplication == 200)
  {
    v8 = 200;
  }

  else
  {
    v8 = v7;
  }

  v9 = [VCAudioTierPicker isModeAudioOnly:self->_config.mode];
  v10 = self->_config.mode == 7 || v9;
  v11 = v10 == 0;
  v12 = 100000;
  if (!v11)
  {
    v12 = 20000;
  }

  if (v12 < bitrate)
  {
    v6 = v8;
  }

  if ([VCAudioTierPicker isModeAudioVideo:?])
  {
    v62[0] = &unk_1F579B028;
    v62[1] = &unk_1F579B040;
    v63[0] = &unk_1F579AED8;
    v63[1] = &unk_1F579AED8;
    v62[2] = &unk_1F579B058;
    v63[2] = &unk_1F579AED8;
    v64[0] = &unk_1F579B010;
    v65[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:3];
    v64[1] = &unk_1F579B070;
    v60[0] = &unk_1F579B028;
    v60[1] = &unk_1F579B040;
    v61[0] = &unk_1F579AEF0;
    v61[1] = &unk_1F579AEF0;
    v60[2] = &unk_1F579B058;
    v61[2] = &unk_1F579AEF0;
    v65[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3];
    v64[2] = &unk_1F579AFF8;
    v58[0] = &unk_1F579B028;
    v58[1] = &unk_1F579B040;
    v59[0] = &unk_1F579AF80;
    v59[1] = &unk_1F579AF80;
    v58[2] = &unk_1F579B058;
    v59[2] = &unk_1F579AF80;
    v65[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];
    v64[3] = &unk_1F579B088;
    v56[0] = &unk_1F579B028;
    v56[1] = &unk_1F579B040;
    v57[0] = &unk_1F579AF98;
    v57[1] = &unk_1F579AF98;
    v56[2] = &unk_1F579B058;
    v57[2] = &unk_1F579AF98;
    v65[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];
    v64[4] = &unk_1F579B0A0;
    v54[0] = &unk_1F579B028;
    v54[1] = &unk_1F579B040;
    v55[0] = &unk_1F579AFB0;
    v55[1] = &unk_1F579AFB0;
    v54[2] = &unk_1F579B058;
    v55[2] = &unk_1F579AFB0;
    v65[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:3];
    v64[5] = &unk_1F579B0B8;
    v52[0] = &unk_1F579B028;
    v52[1] = &unk_1F579B040;
    v53[0] = &unk_1F579AFC8;
    v53[1] = &unk_1F579AFC8;
    v52[2] = &unk_1F579B058;
    v53[2] = &unk_1F579AFC8;
    v65[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];
    v64[6] = &unk_1F579B0D0;
    v50[0] = &unk_1F579B028;
    v50[1] = &unk_1F579B040;
    v51[0] = &unk_1F579AFE0;
    v51[1] = &unk_1F579AFE0;
    v50[2] = &unk_1F579B058;
    v51[2] = &unk_1F579AFE0;
    v65[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
    v64[7] = &unk_1F579B0E8;
    v48[0] = &unk_1F579B028;
    v48[1] = &unk_1F579B040;
    v49[0] = &unk_1F579AFF8;
    v49[1] = &unk_1F579AFF8;
    v48[2] = &unk_1F579B058;
    v49[2] = &unk_1F579AFF8;
    v65[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:3];
    v13 = +[VCAudioTierPicker valueForNetworkBitrate:networkBitrate:](VCAudioTierPicker, "valueForNetworkBitrate:networkBitrate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:8], bitrate);
    v14 = [v13 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v6)}];
    v15 = v14;
    if (self->_config.usingCellular && [v14 integerValue] > 32000)
    {
      v15 = &unk_1F579AFB0;
    }

    goto LABEL_24;
  }

  if (self->_config.mode != 6)
  {
    v44[0] = &unk_1F579B028;
    v44[1] = &unk_1F579B040;
    v45[0] = &unk_1F579AED8;
    v45[1] = &unk_1F579AED8;
    v44[2] = &unk_1F579B058;
    v45[2] = &unk_1F579AED8;
    v46[0] = &unk_1F579B100;
    v47[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:3];
    v46[1] = &unk_1F579AF80;
    v42[0] = &unk_1F579B028;
    v42[1] = &unk_1F579B040;
    v43[0] = &unk_1F579AEF0;
    v43[1] = &unk_1F579AEF0;
    v42[2] = &unk_1F579B058;
    v43[2] = &unk_1F579AEF0;
    v47[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
    v46[2] = &unk_1F579B070;
    v40[0] = &unk_1F579B028;
    v40[1] = &unk_1F579B040;
    v41[0] = &unk_1F579AF08;
    v41[1] = &unk_1F579AF08;
    v40[2] = &unk_1F579B058;
    v41[2] = &unk_1F579AF08;
    v47[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
    v46[3] = &unk_1F579AFE0;
    v38[0] = &unk_1F579B028;
    v38[1] = &unk_1F579B040;
    v39[0] = &unk_1F579AF38;
    v39[1] = &unk_1F579AF20;
    v38[2] = &unk_1F579B058;
    v39[2] = &unk_1F579AEF0;
    v47[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
    v46[4] = &unk_1F579AFF8;
    v36[0] = &unk_1F579B028;
    v36[1] = &unk_1F579B040;
    v37[0] = &unk_1F579AF50;
    v37[1] = &unk_1F579AF38;
    v36[2] = &unk_1F579B058;
    v37[2] = &unk_1F579AF20;
    v47[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];
    v46[5] = &unk_1F579B118;
    v34[0] = &unk_1F579B028;
    v34[1] = &unk_1F579B040;
    v35[0] = &unk_1F579AF68;
    v35[1] = &unk_1F579AF50;
    v34[2] = &unk_1F579B058;
    v35[2] = &unk_1F579AF38;
    v47[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
    v17 = +[VCAudioTierPicker valueForNetworkBitrate:networkBitrate:](VCAudioTierPicker, "valueForNetworkBitrate:networkBitrate:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:6], bitrate);
    v15 = [v17 objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v6)}];
LABEL_24:
    v16 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads objectForKeyedSubscript:{&unk_1F579B130), "objectForKeyedSubscript:", v15}];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v16)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          if ([VCAudioTierPicker isModeAudioVideo:self->_config.mode])
          {
            v21 = "video";
          }

          else
          {
            v21 = "audio";
          }

          *buf = 136316162;
          v25 = v19;
          v26 = 2080;
          v27 = "[VCAudioTierPicker tierForNetworkBitrate:withLegacyDuplication:]";
          v28 = 1024;
          v29 = 994;
          v30 = 2080;
          v31 = v21;
          v32 = 1024;
          integerValue = [v15 integerValue];
          _os_log_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d (%s) Using tier: %d", buf, 0x2Cu);
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 3)
      {
        v22 = VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioTierPicker tierForNetworkBitrate:v22 withLegacyDuplication:?];
        }
      }

      return self->_fallbackTier;
    }

    return v16;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioTierPicker tierForNetworkBitrate:withLegacyDuplication:];
    }
  }

  return 0;
}

- (id)chooseMultiwayAudioTierForRedPayload:(unint64_t)payload
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy__31;
  v18 = __Block_byref_object_dispose__31;
  v5 = -[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?]);
  v19 = [v5 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", -[BitrateLimits defaultValueForNetwork:](self->_bitrateLimits, "defaultValueForNetwork:", self->_config.usingCellular))}];
  if (payload >= 1)
  {
    v6 = payload + 1;
    do
    {
      if (v15[5])
      {
        break;
      }

      if (-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v6 - 2]))
      {
        v7 = -[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithInt:v6 - 2]);
        v8 = [v7 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", -[BitrateLimits defaultValueForNetwork:](self->_bitrateLimits, "defaultValueForNetwork:", self->_config.usingCellular))}];
        v15[5] = v8;
      }

      --v6;
    }

    while (v6 > 1);
  }

  v9 = v15[5];
  if (!v9)
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 0;
    tierTablesForRedNumPayloads = self->_tierTablesForRedNumPayloads;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__VCAudioTierPicker_chooseMultiwayAudioTierForRedPayload___block_invoke;
    v12[3] = &unk_1E85F8968;
    v12[4] = self;
    v12[5] = &v14;
    v12[6] = v13;
    v12[7] = payload;
    [(NSMutableDictionary *)tierTablesForRedNumPayloads enumerateKeysAndObjectsUsingBlock:v12];
    _Block_object_dispose(v13, 8);
    v9 = v15[5];
  }

  _Block_object_dispose(&v14, 8);
  return v9;
}

uint64_t __58__VCAudioTierPicker_chooseMultiwayAudioTierForRedPayload___block_invoke(void *a1, void *a2, void *a3)
{
  if (*(*(a1[5] + 8) + 40))
  {
    v6 = a1 + 6;
    v7 = *(*(a1[6] + 8) + 24) - a1[7];
    result = [a2 unsignedIntegerValue];
    if (v7 <= result - a1[7])
    {
      return result;
    }

    *(*(a1[5] + 8) + 40) = [a3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(*(a1[4] + 32), "defaultValueForNetwork:", *(a1[4] + 76)))}];
    result = [a2 unsignedIntegerValue];
  }

  else
  {
    *(*(a1[5] + 8) + 40) = [a3 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(*(a1[4] + 32), "defaultValueForNetwork:", *(a1[4] + 76)))}];
    result = [a2 unsignedIntegerValue];
    v6 = a1 + 6;
  }

  *(*(*v6 + 8) + 24) = result;
  return result;
}

- (id)tierForNetworkBitrate:(unint64_t)bitrate withRedNumPayloads:(unint64_t)payloads
{
  v15[9] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  if ([VCAudioTierPicker isModeAudioVideo:self->_config.mode])
  {
    v14[0] = &unk_1F579B010;
    v14[1] = &unk_1F579B070;
    v15[0] = &unk_1F579AED8;
    v15[1] = &unk_1F579AEF0;
    v14[2] = &unk_1F579AFF8;
    v14[3] = &unk_1F579B088;
    v15[2] = &unk_1F579AF80;
    v15[3] = &unk_1F579AF98;
    v14[4] = &unk_1F579B0A0;
    v14[5] = &unk_1F579B0B8;
    v15[4] = &unk_1F579AFB0;
    v15[5] = &unk_1F579AFC8;
    v14[6] = &unk_1F579B148;
    v14[7] = &unk_1F579B0D0;
    v15[6] = &unk_1F579AFE0;
    v15[7] = &unk_1F579AFF8;
    v14[8] = &unk_1F579B0E8;
    v15[8] = &unk_1F579AE48;
    v8 = MEMORY[0x1E695DF20];
    v9 = v15;
    v10 = v14;
LABEL_5:
    v7 = +[VCAudioTierPicker valueForNetworkBitrate:networkBitrate:](VCAudioTierPicker, "valueForNetworkBitrate:networkBitrate:", [v8 dictionaryWithObjects:v9 forKeys:v10 count:9], bitrate);
    return -[VCAudioTierPicker tierForAudioBitrate:withRedNumPayloads:](self, "tierForAudioBitrate:withRedNumPayloads:", [v7 unsignedIntValue], payloads);
  }

  if (self->_config.mode != 6)
  {
    v12[0] = &unk_1F579B100;
    v12[1] = &unk_1F579AF80;
    v13[0] = &unk_1F579AED8;
    v13[1] = &unk_1F579AEF0;
    v12[2] = &unk_1F579B070;
    v12[3] = &unk_1F579AFE0;
    v13[2] = &unk_1F579AF08;
    v13[3] = &unk_1F579AF38;
    v12[4] = &unk_1F579AFF8;
    v12[5] = &unk_1F579B160;
    v13[4] = &unk_1F579AF50;
    v13[5] = &unk_1F579AF68;
    v12[6] = &unk_1F579B0A0;
    v12[7] = &unk_1F579B178;
    v13[6] = &unk_1F579AE48;
    v13[7] = &unk_1F579AE60;
    v12[8] = &unk_1F579B0B8;
    v13[8] = &unk_1F579AE78;
    v8 = MEMORY[0x1E695DF20];
    v9 = v13;
    v10 = v12;
    goto LABEL_5;
  }

  return -[VCAudioTierPicker tierForAudioBitrate:withRedNumPayloads:](self, "tierForAudioBitrate:withRedNumPayloads:", [v7 unsignedIntValue], payloads);
}

- (id)tierForAudioBitrate:(unint64_t)bitrate withRedNumPayloads:(unint64_t)payloads
{
  v52 = *MEMORY[0x1E69E9840];
  if (self->_config.mode == 6)
  {
    v7 = [(VCAudioTierPicker *)self chooseMultiwayAudioTierForRedPayload:payloads];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v7)
    {
      if (ErrorLogLevelForModule >= 7)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v42 = 136316162;
          v43 = v9;
          v44 = 2080;
          v45 = "[VCAudioTierPicker tierForAudioBitrate:withRedNumPayloads:]";
          v46 = 1024;
          v47 = 1068;
          v48 = 1024;
          *v49 = bitrate;
          *&v49[4] = 2112;
          *&v49[6] = v7;
          v11 = " [%s] %s:%d Tier for bitrate %d -> %@";
          v12 = v10;
          v13 = 44;
LABEL_39:
          _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, &v42, v13);
          return v7;
        }
      }
    }

    else
    {
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioTierPicker tierForAudioBitrate:withRedNumPayloads:];
        }
      }

      return 0;
    }

    return v7;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:bitrate];
  if (+[VCAudioTierPicker isModeAudioVideo:](VCAudioTierPicker, "isModeAudioVideo:", self->_config.mode) && bitrate <= 0xA410 && self->_config.usingCellular && [v14 integerValue] > 32000)
  {
    v14 = &unk_1F579AFB0;
  }

  v15 = [(VCAudioTierPicker *)self adjustedRedNumPayloadsForLowBitrateAudioTier:v14 redNumPayloads:payloads];
  if (v15 >= 4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v42 = 136316162;
        v43 = v16;
        v44 = 2080;
        v45 = "[VCAudioTierPicker tierForAudioBitrate:withRedNumPayloads:]";
        v46 = 1024;
        v47 = 1086;
        v48 = 1024;
        *v49 = v15;
        *&v49[4] = 1024;
        *&v49[6] = 3;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Cap exceeded for number of red payloads:%d using %d instead", &v42, 0x28u);
      }
    }

    v15 = 3;
  }

  v18 = -[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15]);
  if (!v18)
  {
    if (v15 <= 2)
    {
      v19 = 2;
    }

    else
    {
      v19 = v15;
    }

    LODWORD(v20) = v15;
    do
    {
      if (v19 == v20)
      {
        v18 = 0;
        goto LABEL_32;
      }

      v20 = (v20 + 1);
    }

    while (!-[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20]));
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v42 = 136316162;
        v43 = v21;
        v44 = 2080;
        v45 = "[VCAudioTierPicker tierForAudioBitrate:withRedNumPayloads:]";
        v46 = 1024;
        v47 = 1095;
        v48 = 1024;
        *v49 = v15;
        *&v49[4] = 1024;
        *&v49[6] = v20;
        _os_log_impl(&dword_1DB56E000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RED value of %d is not supported. Next RED value: %d", &v42, 0x28u);
      }
    }

    v18 = -[NSMutableDictionary objectForKeyedSubscript:](self->_tierTablesForRedNumPayloads, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20]);
  }

LABEL_32:
  v23 = +[VCArrayUtils closestValueLessThanOrEqualToValue:array:](VCArrayUtils, "closestValueLessThanOrEqualToValue:array:", v14, [objc_msgSend(v18 "allKeys")]);
  v24 = [v18 objectForKeyedSubscript:v23];
  if (!v24)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return self->_fallbackTier;
      }

      v32 = VRTraceErrorLogLevelToCSTR();
      v33 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return self->_fallbackTier;
      }

      fallbackTier = self->_fallbackTier;
      v42 = 136316162;
      v43 = v32;
      v44 = 2080;
      v45 = "[VCAudioTierPicker tierForAudioBitrate:withRedNumPayloads:]";
      v46 = 1024;
      v47 = 1106;
      v48 = 2048;
      *v49 = bitrate;
      *&v49[8] = 2112;
      *&v49[10] = fallbackTier;
      v35 = " [%s] %s:%d No corresponding tier found for audioBitrate=%lu, using fallback=%@";
      v36 = v33;
      v37 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v31 = [(VCAudioTierPicker *)self performSelector:sel_logPrefix];
      }

      else
      {
        v31 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return self->_fallbackTier;
      }

      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return self->_fallbackTier;
      }

      v41 = self->_fallbackTier;
      v42 = 136316674;
      v43 = v38;
      v44 = 2080;
      v45 = "[VCAudioTierPicker tierForAudioBitrate:withRedNumPayloads:]";
      v46 = 1024;
      v47 = 1106;
      v48 = 2112;
      *v49 = v31;
      *&v49[8] = 2048;
      *&v49[10] = self;
      *&v49[18] = 2048;
      *v50 = bitrate;
      *&v50[8] = 2112;
      v51 = v41;
      v35 = " [%s] %s:%d %@(%p) No corresponding tier found for audioBitrate=%lu, using fallback=%@";
      v36 = v39;
      v37 = 68;
    }

    _os_log_error_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_ERROR, v35, &v42, v37);
    return self->_fallbackTier;
  }

  v7 = v24;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if ([VCAudioTierPicker isModeAudioVideo:self->_config.mode])
      {
        v27 = "video";
      }

      else
      {
        v27 = "audio";
      }

      intValue = [v14 intValue];
      intValue2 = [v23 intValue];
      v30 = [objc_msgSend(v7 "description")];
      v42 = 136316674;
      v43 = v25;
      v44 = 2080;
      v45 = "[VCAudioTierPicker tierForAudioBitrate:withRedNumPayloads:]";
      v46 = 1024;
      v47 = 1113;
      v48 = 2080;
      *v49 = v27;
      *&v49[8] = 1024;
      *&v49[10] = intValue;
      *&v49[14] = 1024;
      *&v49[16] = intValue2;
      *v50 = 2080;
      *&v50[2] = v30;
      v11 = " [%s] %s:%d (%s) Using tier: bitrate=%d, closestAudioBitrate=%d %s";
      v12 = v26;
      v13 = 60;
      goto LABEL_39;
    }
  }

  return v7;
}

- (unint64_t)adjustedRedNumPayloadsForLowBitrateAudioTier:(id)tier redNumPayloads:(unint64_t)payloads
{
  if (![VCAudioTierPicker usePlistForAudioTierTableFromMode:self->_config.mode])
  {
    v7 = 85;
    if (!self->_config.usingCellular)
    {
      v7 = 86;
    }

    if (![VCDefaults BOOLeanValueForKey:@"rateControlAllowRedLowBitrate" defaultValue:*(&self->super.isa + v7)])
    {
      unsignedIntegerValue = [tier unsignedIntegerValue];
      payloadsCopy2 = 2;
      if (payloads < 2)
      {
        payloadsCopy2 = payloads;
      }

      if (unsignedIntegerValue >= 0x5209)
      {
        payloadsCopy2 = payloads;
      }

      if (unsignedIntegerValue <= 0x3E80)
      {
        v10 = payloads != 0;
      }

      else
      {
        v10 = payloadsCopy2;
      }

      if (unsignedIntegerValue >= 0x2711)
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }
  }

  return payloads;
}

- (id)allActiveAudioTiers
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_tierTablesForRedNumPayloads allValues];
  v5 = [allValues countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [array addObjectsFromArray:{objc_msgSend(*(*(&v11 + 1) + 8 * v8++), "allValues")}];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  return array;
}

- (void)generateAudioPayloadsFromConfig:(id *)config
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = +[VCHardwareSettings deviceClass];
  [(NSMutableSet *)self->_audioPayloads removeAllObjects];
  if ([VCAudioTierPicker usePlistForAudioTierTableFromMode:config->var0])
  {
    if (config->var0 == 6)
    {
      v6 = [(VCAudioTierPicker *)self loadAudioTiersFromPlist:@"AudioTiers_GFT"];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      obj = [objc_msgSend(v6 objectForKeyedSubscript:{@"networkBitrate", "allKeys"}];
      v7 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v47;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v47 != v9)
            {
              objc_enumerationMutation(obj);
            }

            -[VCAudioTierPicker addPayloadsFromGFTRedNumPayloadsDict:isDeviceClassWolf:isACC24Supported:](self, "addPayloadsFromGFTRedNumPayloadsDict:isDeviceClassWolf:isACC24Supported:", [objc_msgSend(objc_msgSend(v6 objectForKeyedSubscript:{@"networkBitrate", "objectForKeyedSubscript:", *(*(&v46 + 1) + 8 * i)), "objectForKeyedSubscript:", @"redNumPayloads"}], v5 == 8, config->var12);
          }

          v8 = [obj countByEnumeratingWithState:&v46 objects:v45 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v23 = [(VCAudioTierPicker *)self loadAudioTiersFromPlist:@"AudioTiers_U1"];
      allKeys = [v23 allKeys];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v25 = [allKeys countByEnumeratingWithState:&v41 objects:v40 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v42;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v42 != v27)
            {
              objc_enumerationMutation(allKeys);
            }

            -[VCAudioTierPicker addPayloadsFromU1IPVerDict:config:mode:](self, "addPayloadsFromU1IPVerDict:config:mode:", [v23 objectForKeyedSubscript:*(*(&v41 + 1) + 8 * j)], config, *(*(&v41 + 1) + 8 * j));
          }

          v26 = [allKeys countByEnumeratingWithState:&v41 objects:v40 count:16];
        }

        while (v26);
      }
    }
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    var3 = config->var3;
    v12 = [(__CFArray *)var3 countByEnumeratingWithState:&v36 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        for (k = 0; k != v13; ++k)
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(var3);
          }

          v16 = [(NSMutableDictionary *)self->_tierTablesForRedNumPayloads objectForKeyedSubscript:*(*(&v36 + 1) + 8 * k)];
          allKeys2 = [v16 allKeys];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          reverseObjectEnumerator = [allKeys2 reverseObjectEnumerator];
          v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v31 objects:v30 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v32;
            do
            {
              for (m = 0; m != v20; ++m)
              {
                if (*v32 != v21)
                {
                  objc_enumerationMutation(reverseObjectEnumerator);
                }

                -[VCAudioTierPicker addPayloadFromTier:](self, "addPayloadFromTier:", [v16 objectForKeyedSubscript:*(*(&v31 + 1) + 8 * m)]);
              }

              v20 = [reverseObjectEnumerator countByEnumeratingWithState:&v31 objects:v30 count:16];
            }

            while (v20);
          }
        }

        v13 = [(__CFArray *)var3 countByEnumeratingWithState:&v36 objects:v35 count:16];
      }

      while (v13);
    }
  }
}

- (void)addPayloadFromTier:(id)tier
{
  if (tier)
  {
    v4 = [objc_msgSend(tier "payloadConfig")];
    audioPayloads = self->_audioPayloads;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];

    [(NSMutableSet *)audioPayloads addObject:v6];
  }
}

- (void)addPayloadsFromU1IPVerDict:(id)dict config:(id *)config mode:(id)mode
{
  v31 = *MEMORY[0x1E69E9840];
  if (dict)
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = [dict allKeys];
    v17 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (v17)
    {
      v16 = *v28;
      do
      {
        v7 = 0;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = v7;
          v8 = *(*(&v27 + 1) + 8 * v7);
          v9 = [objc_msgSend(dict objectForKeyedSubscript:{v8), "allKeys"}];
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v10 = v9;
          v11 = [v9 countByEnumeratingWithState:&v22 objects:v21 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v23;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v23 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                -[VCAudioTierPicker addPayloadsFromU1RedNumPayloadsDict:config:mode:isIPv4:isCellular:](self, "addPayloadsFromU1RedNumPayloadsDict:config:mode:isIPv4:isCellular:", [objc_msgSend(objc_msgSend(dict objectForKeyedSubscript:{v8), "objectForKeyedSubscript:", *(*(&v22 + 1) + 8 * i)), "objectForKeyedSubscript:", @"redNumPayloads"}], config, mode, objc_msgSend(v8, "isEqualToString:", @"IPv4"), objc_msgSend(*(*(&v22 + 1) + 8 * i), "isEqualToString:", @"cellular"));
              }

              v12 = [v10 countByEnumeratingWithState:&v22 objects:v21 count:16];
            }

            while (v12);
          }

          v7 = v18 + 1;
        }

        while (v18 + 1 != v17);
        v17 = [obj countByEnumeratingWithState:&v27 objects:v26 count:16];
      }

      while (v17);
    }
  }
}

- (void)addPayloadsFromU1RedNumPayloadsDict:(id)dict config:(id *)config mode:(id)mode isIPv4:(BOOL)pv4 isCellular:(BOOL)cellular
{
  v70 = *MEMORY[0x1E69E9840];
  if (dict)
  {
    cellularCopy = cellular;
    pv4Copy = pv4;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = [dict allKeys];
    v31 = [obj countByEnumeratingWithState:&v66 objects:v65 count:16];
    if (v31)
    {
      v32 = *v67;
      v28 = pv4Copy;
      v29 = cellularCopy;
      modeCopy = mode;
      do
      {
        v12 = 0;
        do
        {
          if (*v67 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v33 = v12;
          v36 = *(*(&v66 + 1) + 8 * v12);
          v13 = [objc_msgSend(objc_msgSend(dict "objectForKeyedSubscript:{"objectForKeyedSubscript:", @"bitrateTier", "allKeys"}")];
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v34 = v13;
          v38 = [v13 countByEnumeratingWithState:&v61 objects:v60 count:16];
          if (v38)
          {
            v35 = *v62;
            while (2)
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v62 != v35)
                {
                  objc_enumerationMutation(v34);
                }

                v15 = *(*(&v61 + 1) + 8 * i);
                v16 = [objc_msgSend(objc_msgSend(objc_msgSend(dict objectForKeyedSubscript:{v36), "objectForKeyedSubscript:", @"bitrateTier", "objectForKeyedSubscript:", v15), "objectForKeyedSubscript:", @"payloads"}];
                if (!v16)
                {
                  if (VRTraceGetErrorLogLevelForModule() >= 3)
                  {
                    v23 = VRTraceErrorLogLevelToCSTR();
                    v24 = *MEMORY[0x1E6986650];
                    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
                    {
                      intValue = [v36 intValue];
                      intValue2 = [v15 intValue];
                      *buf = 136316930;
                      v45 = v23;
                      v46 = 2080;
                      v47 = "[VCAudioTierPicker addPayloadsFromU1RedNumPayloadsDict:config:mode:isIPv4:isCellular:]";
                      v48 = 1024;
                      v49 = 1242;
                      v50 = 2112;
                      v51 = modeCopy;
                      v52 = 1024;
                      v53 = v28;
                      v54 = 1024;
                      v55 = v29;
                      v56 = 1024;
                      v57 = intValue;
                      v58 = 1024;
                      v59 = intValue2;
                      _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, " [%s] %s:%d No payloads array for mode=%@ and isIPv4=%{BOOL}d isCellular=%{BOOL}d redNumPayloads=%u tierBitrate=%u", buf, 0x3Eu);
                    }
                  }

                  return;
                }

                v17 = v16;
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                v18 = [v16 countByEnumeratingWithState:&v40 objects:v39 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v41;
                  do
                  {
                    for (j = 0; j != v19; ++j)
                    {
                      if (*v41 != v20)
                      {
                        objc_enumerationMutation(v17);
                      }

                      v22 = [objc_msgSend(*(*(&v40 + 1) + 8 * j) objectForKeyedSubscript:{@"payload", "integerValue"}];
                      if (v22 != 112 && (v22 != 113 || config->var12))
                      {
                        -[NSMutableSet addObject:](self->_audioPayloads, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:?]);
                      }
                    }

                    v19 = [v17 countByEnumeratingWithState:&v40 objects:v39 count:16];
                  }

                  while (v19);
                }
              }

              v38 = [v34 countByEnumeratingWithState:&v61 objects:v60 count:16];
              if (v38)
              {
                continue;
              }

              break;
            }
          }

          ++v12;
        }

        while (v33 + 1 != v31);
        v31 = [obj countByEnumeratingWithState:&v66 objects:v65 count:16];
      }

      while (v31);
    }
  }
}

- (void)addPayloadsFromGFTPayloadsArray:(id)array isACC24Supported:(BOOL)supported
{
  supportedCopy = supported;
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [array countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(array);
        }

        if ([objc_msgSend(*(*(&v13 + 1) + 8 * v10) objectForKeyedSubscript:{@"payload", "integerValue"}] != 113 || supportedCopy)
        {
          -[NSMutableSet addObject:](self->_audioPayloads, "addObject:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:?]);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [array countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v8);
  }
}

- (void)addPayloadsFromGFTRedNumPayloadsDict:(id)dict isDeviceClassWolf:(BOOL)wolf isACC24Supported:(BOOL)supported
{
  v20 = *MEMORY[0x1E69E9840];
  if (dict)
  {
    supportedCopy = supported;
    wolfCopy = wolf;
    allKeys = [dict allKeys];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [allKeys countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([objc_msgSend(objc_msgSend(dict objectForKeyedSubscript:{v14), "objectForKeyedSubscript:", @"lowLatencyAudioDevice", "BOOLValue"}] == wolfCopy)
          {
            -[VCAudioTierPicker addPayloadsFromGFTPayloadsArray:isACC24Supported:](self, "addPayloadsFromGFTPayloadsArray:isACC24Supported:", [objc_msgSend(dict objectForKeyedSubscript:{v14), "objectForKeyedSubscript:", @"payloads"}], supportedCopy);
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v11);
    }
  }
}

- (void)setUpFeatureFlagToEnablementMapping
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate plistFeatureFlagToEnablementMapping", v2, v3, v4, v5, v6);
}

- (void)setupTierPickerForConfig:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCAudioTierPicker failed to generate tiers", v2, v3, v4, v5, v6);
}

- (void)setupTierPickerForConfig:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Error allocating _bitrateLimits", v2, v3, v4, v5, v6);
}

- (void)setupTierPickerForConfig:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Error allocating _tierTabledForRedNumPayloads", v2, v3, v4, v5, v6);
}

- (void)setupTierPickerForConfig:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Cannot setup audio tier picker, invalid mode", v2, v3, v4, v5, v6);
}

- (void)setupAlwaysOnRedTiersForSupportedRed:usingCellular:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Unable to setup always on red tiers, as supportedRedNumPayloads is nil", v2, v3, v4, v5, v6);
}

- (void)generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:.cold.2()
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

- (void)generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:.cold.3()
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

- (void)generateAudioTiersDictFromPlistForBitrateLimits:tierPickerConfig:redNumPayloads:.cold.4()
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

+ (void)loadVCAudioTierFromTierTable:(_BYTE *)a3 config:allowRedAtLowBitrate:alwaysOnAudioRedundancyDisabled:redNumPayloads:tierBitrate:outEntryArray:.cold.1(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v4, v5, v6, v7, v8, 0x28u);
    }
  }

  *a3 = 0;
}

+ (void)loadVCAudioTierFromTierTable:(uint64_t)a1 config:(_BYTE *)a2 allowRedAtLowBitrate:alwaysOnAudioRedundancyDisabled:redNumPayloads:tierBitrate:outEntryArray:.cold.2(uint64_t a1, _BYTE *a2)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v3, v4, v5, v6, v7, 0x22u);
    }
  }

  *a2 = 0;
}

+ (void)loadVCAudioTierFromTierTable:(_BYTE *)a1 config:allowRedAtLowBitrate:alwaysOnAudioRedundancyDisabled:redNumPayloads:tierBitrate:outEntryArray:.cold.3(_BYTE *a1)
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
    }
  }

  *a1 = 0;
}

+ (void)loadVCAudioTierFromTierTable:(_BYTE *)a3 bitrate:redNumPayloads:outEntryArray:.cold.1(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = v6;
      OUTLINED_FUNCTION_0();
      v10 = 764;
      _os_log_error_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_ERROR, " [%s] %s:%d No payloads array. entry cannot be NULL", &v8, 0x1Cu);
    }
  }

  *a3 = 0;
  *a2 = a1;
}

+ (void)loadVCAudioTierFromTierTable:(void *)a1 bitrate:(_BYTE *)a2 redNumPayloads:outEntryArray:.cold.2(void *a1, _BYTE *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = v4;
      OUTLINED_FUNCTION_0();
      v8 = 759;
      _os_log_error_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_ERROR, " [%s] %s:%d entry cannot be NULL", &v6, 0x1Cu);
    }
  }

  *a2 = 0;
  *a1 = 0;
}

- (void)tierForNetworkBitrate:withLegacyDuplication:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Multiway doesn't use legacy duplication. Tier not found!", v2, v3, v4, v5, v6);
}

- (void)tierForNetworkBitrate:(uint64_t)a1 withLegacyDuplication:.cold.2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315906;
  v4 = a1;
  v5 = 2080;
  OUTLINED_FUNCTION_7();
  v6 = 991;
  v7 = 2112;
  v8 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d No corresponding tier found for AudioBitRate, using fallback: %@", &v3, 0x26u);
}

- (void)tierForAudioBitrate:withRedNumPayloads:.cold.1()
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  v5 = "[VCAudioTierPicker tierForAudioBitrate:withRedNumPayloads:]";
  v6 = 1024;
  v7 = 1066;
  v8 = 1024;
  v9 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Tier for bitrate %d not found!", v3, 0x22u);
}

@end