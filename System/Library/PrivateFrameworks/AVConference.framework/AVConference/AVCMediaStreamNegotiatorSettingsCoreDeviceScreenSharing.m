@interface AVCMediaStreamNegotiatorSettingsCoreDeviceScreenSharing
- (AVCMediaStreamNegotiatorSettingsCoreDeviceScreenSharing)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5;
- (id)featureListString;
- (void)featureListString;
@end

@implementation AVCMediaStreamNegotiatorSettingsCoreDeviceScreenSharing

- (AVCMediaStreamNegotiatorSettingsCoreDeviceScreenSharing)initWithOptions:(id)a3 deviceRole:(unsigned __int8)a4 error:(id *)a5
{
  v6 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = AVCMediaStreamNegotiatorSettingsCoreDeviceScreenSharing;
  v8 = [AVCMediaStreamNegotiatorSettings initWithOptions:sel_initWithOptions_deviceRole_defaultDirection_error_ deviceRole:? defaultDirection:? error:?];
  if (!v8)
  {
    return v8;
  }

  if (v6 != 1 || ![a3 objectForKey:@"AVCMediaStreamNegotiatorAccessNetworkType"])
  {
    goto LABEL_6;
  }

  v9 = [a3 objectForKeyedSubscript:@"AVCMediaStreamNegotiatorAccessNetworkType"];
  if (v9)
  {
    v8->super._accessNetworkType = [v9 intValue];
LABEL_6:
    v10 = +[VCVideoRuleCollectionsScreenAirplay sharedInstance];
    v8->super._screenRuleCollections = &v10->super;
    if (v10)
    {
      v8->super._shouldSetJitterBufferMode = 1;
      v8->super._shouldApply16AlignedAdjustment = 1;
      v8->super._blackFrameOnClearScreenEnabledDefault = 1;
      v8->super._blackFrameOnClearScreenEnabled = 1;
      return v8;
    }

    v12 = @"no _screenRuleCollections is created";
    goto LABEL_11;
  }

  v12 = @"cannot get accessNetworkType from Init options";
LABEL_11:
  if (a5)
  {
    *a5 = v12;
  }

  return 0;
}

- (id)featureListString
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (VCPCodecCopyProperties())
  {
    [(AVCMediaStreamNegotiatorSettingsCoreDeviceScreenSharing *)v6 featureListString];
LABEL_10:
    v4 = v6[0];
    goto LABEL_7;
  }

  v3 = objc_opt_new();
  if (!v3)
  {
    [(AVCMediaStreamNegotiatorSettingsCoreDeviceScreenSharing *)v6 featureListString];
    goto LABEL_10;
  }

  v4 = v3;
  if ([(NSMutableArray *)[(VCVideoRuleCollections *)self->super._screenRuleCollections supportedPayloads] containsObject:&unk_1F5799CA8])
  {
    [v4 setObject:objc_msgSend(0 forKeyedSubscript:{"objectForKey:", @"VCPCodec_AVC1", &unk_1F5799CA8}];
  }

  if ([(NSMutableArray *)[(VCVideoRuleCollections *)self->super._screenRuleCollections supportedPayloads] containsObject:&unk_1F5799CC0])
  {
    [v4 setObject:objc_msgSend(0 forKeyedSubscript:{"objectForKey:", @"VCPCodec_LRP", &unk_1F5799CC0}];
  }

LABEL_7:

  return v4;
}

- (void)featureListString
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v2, v3, " [%s] %s:%d Failed to allocate memory to store feature list string", v4, v5, v6, v7, 2u);
    }
  }

  *a1 = 0;
}

@end