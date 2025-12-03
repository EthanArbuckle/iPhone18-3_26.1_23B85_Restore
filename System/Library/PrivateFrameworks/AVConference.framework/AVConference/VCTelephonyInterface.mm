@interface VCTelephonyInterface
+ (int)ctDirectionForTelephonyLinkDirection:(int64_t)direction;
+ (int64_t)ctSubscriptionSlotForSubscriptionSlot:(int64_t)slot;
+ (int64_t)telephonyLinkDirectionForCtDirection:(int)direction;
- (BOOL)getCarrierBundleValue:(id *)value forKey:(id)key;
- (BOOL)registerForNotifications;
- (VCTelephonyInterface)init;
- (VCTelephonyInterface)initWithTelephonySubscriptionSlot:(int64_t)slot;
- (id)translateVocoderTypeToCoreAudioType:(id)type;
- (unsigned)getSampleRateFromAudioCodecInfo:(id)info;
- (unsigned)validateCarrierBundleConfigParameters:(id)parameters forKey:(id)key defaultValue:(unsigned int)value minValue:(unsigned int)minValue maxValue:(unsigned int)maxValue;
- (void)anbrActivationState:(id)state enabled:(BOOL)enabled;
- (void)anbrBitrateRecommendation:(id)recommendation bitrate:(id)bitrate direction:(int)direction;
- (void)dealloc;
- (void)getAnbrActivationStateWithCompletionHandler:(id)handler;
- (void)handleTelephonyNotification:(id)notification withInfo:(id)info;
- (void)handleVocoderNotificationWithInfo:(id)info;
- (void)init;
- (void)notifyCodecModeChangeEventToCT:(_VCAudioCodecModeChangeEvent *)t;
- (void)queryAnbrBitrateRecommendation:(unsigned int)recommendation direction:(int64_t)direction completionHandler:(id)handler;
- (void)setupVCMediaStreamRateAdaptationConfig:(tagVCMediaStreamRateAdaptationConfig *)config;
@end

@implementation VCTelephonyInterface

- (VCTelephonyInterface)init
{
  v28 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VCTelephonyInterface;
  v2 = [(VCTelephonyInterface *)&v17 init];
  if (v2)
  {
    [MEMORY[0x1E6986630] weakObjectHolderWithObject:v2];
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v4 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCTelephonyInterface.notificationQueue", 0, CustomRootQueue);
    v2->_notificationQueue = v4;
    if (!v4)
    {
      if (objc_opt_class() == v2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCTelephonyInterface init];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v7 = [(VCTelephonyInterface *)v2 performSelector:sel_logPrefix];
        }

        else
        {
          v7 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v19 = v10;
            v20 = 2080;
            v21 = "[VCTelephonyInterface init]";
            v22 = 1024;
            v23 = 79;
            v24 = 2112;
            v25 = v7;
            v26 = 2048;
            v27 = v2;
            _os_log_error_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Could not create queue", buf, 0x30u);
          }
        }
      }

      goto LABEL_24;
    }

    v5 = _CTServerConnectionCreateOnTargetQueue();
    v2->_connection = v5;
    if (!v5)
    {
      if (objc_opt_class() == v2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCTelephonyInterface init];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [(VCTelephonyInterface *)v2 performSelector:sel_logPrefix];
        }

        else
        {
          v8 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v19 = v13;
            v20 = 2080;
            v21 = "[VCTelephonyInterface init]";
            v22 = 1024;
            v23 = 90;
            v24 = 2112;
            v25 = v8;
            v26 = 2048;
            v27 = v2;
            _os_log_error_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) _CTServerConnectionCreateOnTargetQueue failed", buf, 0x30u);
          }
        }
      }
    }

    v6 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v2->_notificationQueue];
    v2->_coreTelephonyClient = v6;
    [(CoreTelephonyClient *)v6 setDelegate:v2];
    if (!v2->_coreTelephonyClient)
    {
      if (objc_opt_class() == v2)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCTelephonyInterface init];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [(VCTelephonyInterface *)v2 performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v19 = v15;
            v20 = 2080;
            v21 = "[VCTelephonyInterface init]";
            v22 = 1024;
            v23 = 97;
            v24 = 2112;
            v25 = v9;
            v26 = 2048;
            v27 = v2;
            _os_log_error_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) CoreTelephonyClient init failed", buf, 0x30u);
          }
        }
      }
    }

    if (!v2->_connection && !v2->_coreTelephonyClient)
    {

LABEL_24:
      return 0;
    }
  }

  return v2;
}

uint64_t __28__VCTelephonyInterface_init__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) strong];

  return [v5 handleTelephonyNotification:a2 withInfo:a3];
}

- (VCTelephonyInterface)initWithTelephonySubscriptionSlot:(int64_t)slot
{
  v4 = [(VCTelephonyInterface *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_subscriptionSlot = slot;
    v4->_ctSubscriptionSlot = [VCTelephonyInterface ctSubscriptionSlotForSubscriptionSlot:slot];
    v5->_ctSubscriptionContext = [objc_alloc(MEMORY[0x1E6965090]) initWithSlot:v5->_ctSubscriptionSlot];
  }

  return v5;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  [(VCTelephonyInterface *)self unregisterForNotifications];
  connection = self->_connection;
  if (connection)
  {
    CFRelease(connection);
  }

  notificationQueue = self->_notificationQueue;
  if (notificationQueue)
  {
    dispatch_release(notificationQueue);
  }

  objc_storeWeak(&self->_delegate, 0);
  v5.receiver = self;
  v5.super_class = VCTelephonyInterface;
  [(VCTelephonyInterface *)&v5 dealloc];
}

- (BOOL)getCarrierBundleValue:(id *)value forKey:(id)key
{
  v11[1] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:@"IMSConfig"];
  [array addObject:@"Media"];
  [array addObject:@"VoiceOnAP"];
  [array addObject:@"RateAdaptationAlgorithms"];
  [array addObject:key];
  v11[0] = 0;
  if (!self->_ctSubscriptionContext)
  {
    return 0;
  }

  v8 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:{1, v11[0]}];
  v9 = [(CoreTelephonyClient *)self->_coreTelephonyClient context:self->_ctSubscriptionContext getCarrierBundleValue:array error:v11];

  if (!v9)
  {
    return 0;
  }

  *value = v9;
  return 1;
}

- (unsigned)validateCarrierBundleConfigParameters:(id)parameters forKey:(id)key defaultValue:(unsigned int)value minValue:(unsigned int)minValue maxValue:(unsigned int)maxValue
{
  v31 = *MEMORY[0x1E69E9840];
  v11 = [parameters objectForKeyedSubscript:key];
  valueCopy = value;
  if (v11 && (v13 = [v11 intValue], valueCopy = v13, v13 >= minValue) && v13 <= maxValue)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136316162;
        v20 = v14;
        v21 = 2080;
        v22 = "[VCTelephonyInterface validateCarrierBundleConfigParameters:forKey:defaultValue:minValue:maxValue:]";
        v23 = 1024;
        v24 = 167;
        v25 = 2112;
        keyCopy2 = key;
        v27 = 1024;
        v28 = valueCopy;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Key=%@ present in carrier bundle, value=%d", &v19, 0x2Cu);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136316418;
        v20 = v16;
        v21 = 2080;
        v22 = "[VCTelephonyInterface validateCarrierBundleConfigParameters:forKey:defaultValue:minValue:maxValue:]";
        v23 = 1024;
        v24 = 171;
        v25 = 2112;
        keyCopy2 = key;
        v27 = 1024;
        v28 = valueCopy;
        v29 = 1024;
        valueCopy2 = value;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Key=%@ either not present in carrier bundle or out of range, value=%d default value=%d", &v19, 0x32u);
      }
    }

    return value;
  }

  return valueCopy;
}

- (void)setupVCMediaStreamRateAdaptationConfig:(tagVCMediaStreamRateAdaptationConfig *)config
{
  v27 = *MEMORY[0x1E69E9840];
  v14 = 0;
  config->var0 = 0;
  if ([(VCTelephonyInterface *)self getCarrierBundleValue:&v14 forKey:@"UplinkRateAdaptation"])
  {
    v5 = v14;
    config->var0 = 1;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136315906;
      v16 = v7;
      v17 = 2080;
      v18 = "[VCTelephonyInterface setupVCMediaStreamRateAdaptationConfig:]";
      v19 = 1024;
      v20 = 181;
      v21 = 2112;
      v22 = v5;
      v9 = " [%s] %s:%d UplinkRateAdaptation config=%@";
      v10 = v8;
      v11 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VCTelephonyInterface *)self performSelector:sel_logPrefix];
      }

      else
      {
        v6 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        goto LABEL_13;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 136316418;
      v16 = v12;
      v17 = 2080;
      v18 = "[VCTelephonyInterface setupVCMediaStreamRateAdaptationConfig:]";
      v19 = 1024;
      v20 = 181;
      v21 = 2112;
      v22 = v6;
      v23 = 2048;
      selfCopy = self;
      v25 = 2112;
      v26 = v5;
      v9 = " [%s] %s:%d %@(%p) UplinkRateAdaptation config=%@";
      v10 = v13;
      v11 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_13:
    config->var1.var0.var0 = [(VCTelephonyInterface *)self validateCarrierBundleConfigParameters:v5 forKey:@"RateIncreaseMonitorPeriod" defaultValue:10 minValue:1 maxValue:15];
    config->var1.var0.var2 = [(VCTelephonyInterface *)self validateCarrierBundleConfigParameters:v5 forKey:@"RateDecreaseMonitorPeriod" defaultValue:5 minValue:1 maxValue:15];
    config->var1.var0.var1 = [(VCTelephonyInterface *)self validateCarrierBundleConfigParameters:v5 forKey:@"RateIncreaseUplinkBLERThreshold" defaultValue:0 minValue:0 maxValue:100];
    config->var1.var0.var3 = [(VCTelephonyInterface *)self validateCarrierBundleConfigParameters:v5 forKey:@"RateDecreaseUplinkBLERThreshold" defaultValue:10 minValue:0 maxValue:100];
  }
}

- (BOOL)registerForNotifications
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69650B0];
  v4 = _CTServerConnectionRegisterForNotification();
  v5 = v4;
  v6 = HIDWORD(v4);
  if (HIDWORD(v4))
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 == 0;
  }

  v8 = v7;
  if (v7)
  {
    v9 = _CTServerConnectionCopyAudioVocoderInfo();
    v10 = v9;
    v11 = HIDWORD(v9);
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v21 = VRTraceErrorLogLevelToCSTR();
        v22 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v27 = v21;
          v28 = 2080;
          v29 = "[VCTelephonyInterface registerForNotifications]";
          v30 = 1024;
          v31 = 204;
          v32 = 1024;
          *v33 = v10;
          *&v33[4] = 1024;
          *&v33[6] = v11;
          v16 = " [%s] %s:%d _CTServerConnectionCopyAudioVocoderInfo failed (%d.%d)\n";
          v17 = v22;
          v18 = 40;
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [(VCTelephonyInterface *)self performSelector:sel_logPrefix];
      }

      else
      {
        v12 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v23 = VRTraceErrorLogLevelToCSTR();
        v24 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v27 = v23;
          v28 = 2080;
          v29 = "[VCTelephonyInterface registerForNotifications]";
          v30 = 1024;
          v31 = 204;
          v32 = 2112;
          *v33 = v12;
          *&v33[8] = 2048;
          *v34 = self;
          *&v34[8] = 1024;
          *v35 = v10;
          *&v35[4] = 1024;
          *&v35[6] = v11;
          v16 = " [%s] %s:%d %@(%p) _CTServerConnectionCopyAudioVocoderInfo failed (%d.%d)\n";
          v17 = v24;
          v18 = 60;
          goto LABEL_29;
        }
      }
    }
  }

  else if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v27 = v14;
        v28 = 2080;
        v29 = "[VCTelephonyInterface registerForNotifications]";
        v30 = 1024;
        v31 = 194;
        v32 = 2080;
        *v33 = CFStringGetCStringPtr(v3, 0x8000100u);
        *&v33[8] = 1024;
        *v34 = v5;
        *&v34[4] = 1024;
        *&v34[6] = v6;
        v16 = " [%s] %s:%d _CTServerConnectionRegisterForNotification(%s) failed (%d.%d)\n";
        v17 = v15;
        v18 = 50;
LABEL_29:
        _os_log_error_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v13 = [(VCTelephonyInterface *)self performSelector:sel_logPrefix];
    }

    else
    {
      v13 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v19 = VRTraceErrorLogLevelToCSTR();
      v20 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136316930;
        v27 = v19;
        v28 = 2080;
        v29 = "[VCTelephonyInterface registerForNotifications]";
        v30 = 1024;
        v31 = 194;
        v32 = 2112;
        *v33 = v13;
        *&v33[8] = 2048;
        *v34 = self;
        *&v34[8] = 2080;
        *v35 = CFStringGetCStringPtr(v3, 0x8000100u);
        *&v35[8] = 1024;
        v36 = v5;
        v37 = 1024;
        v38 = v6;
        v16 = " [%s] %s:%d %@(%p) _CTServerConnectionRegisterForNotification(%s) failed (%d.%d)\n";
        v17 = v20;
        v18 = 70;
        goto LABEL_29;
      }
    }
  }

  return v8;
}

- (void)getAnbrActivationStateWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315650;
      v8 = v5;
      v9 = 2080;
      v10 = "[VCTelephonyInterface getAnbrActivationStateWithCompletionHandler:]";
      v11 = 1024;
      v12 = 229;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Querying CoreTelephony for ANBR enabled state", &v7, 0x1Cu);
    }
  }

  [(CoreTelephonyClient *)self->_coreTelephonyClient getAnbrActivationState:self->_ctSubscriptionContext completion:handler];
}

- (void)queryAnbrBitrateRecommendation:(unsigned int)recommendation direction:(int64_t)direction completionHandler:(id)handler
{
  v7 = *&recommendation;
  v22 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136316162;
      v13 = v9;
      v14 = 2080;
      v15 = "[VCTelephonyInterface queryAnbrBitrateRecommendation:direction:completionHandler:]";
      v16 = 1024;
      v17 = 238;
      v18 = 1024;
      v19 = v7;
      v20 = 2048;
      directionCopy = direction;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Querying CoreTelephony for the access network bitrate=%d, for direction=%ld", &v12, 0x2Cu);
    }
  }

  v11 = [VCTelephonyInterface ctDirectionForTelephonyLinkDirection:direction];
  -[CoreTelephonyClient queryAnbrBitrate:bitrate:direction:completion:](self->_coreTelephonyClient, "queryAnbrBitrate:bitrate:direction:completion:", self->_ctSubscriptionContext, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7], v11, handler);
}

- (void)handleTelephonyNotification:(id)notification withInfo:(id)info
{
  v21 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() < 7)
  {
    goto LABEL_9;
  }

  v7 = VRTraceErrorLogLevelToCSTR();
  v8 = *MEMORY[0x1E6986650];
  if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_9;
  }

  if (!notification)
  {
    v9 = "<nil>";
    if (info)
    {
      goto LABEL_5;
    }

LABEL_7:
    v10 = "<nil>";
    goto LABEL_8;
  }

  v9 = [objc_msgSend(notification "description")];
  if (!info)
  {
    goto LABEL_7;
  }

LABEL_5:
  v10 = [objc_msgSend(info "description")];
LABEL_8:
  v11 = 136316162;
  v12 = v7;
  v13 = 2080;
  v14 = "[VCTelephonyInterface handleTelephonyNotification:withInfo:]";
  v15 = 1024;
  v16 = 248;
  v17 = 2080;
  v18 = v9;
  v19 = 2080;
  v20 = v10;
  _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCTelephonyInterface: received notification %s, info %s", &v11, 0x30u);
LABEL_9:
  if ([notification isEqualToString:*MEMORY[0x1E69650B0]])
  {
    [(VCTelephonyInterface *)self handleVocoderNotificationWithInfo:info];
  }
}

- (void)handleVocoderNotificationWithInfo:(id)info
{
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (info)
      {
        v7 = [objc_msgSend(info "description")];
      }

      else
      {
        v7 = "<nil>";
      }

      v11 = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[VCTelephonyInterface handleVocoderNotificationWithInfo:]";
      v15 = 1024;
      v16 = 257;
      v17 = 2080;
      v18 = v7;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCTelephonyInterface: received info %s", &v11, 0x26u);
    }
  }

  v8 = [info objectForKeyedSubscript:*MEMORY[0x1E69650C0]];
  v9 = [info objectForKeyedSubscript:*MEMORY[0x1E69650B8]];
  v10 = [(VCTelephonyInterface *)self translateVocoderTypeToCoreAudioType:v8];
  if (v10)
  {
    [(VCTelephonyInterfaceDelegate *)[(VCTelephonyInterface *)self delegate] telephonyInterface:self vocoderInfoChangedToType:v10 sampleRate:v9];
  }
}

- (id)translateVocoderTypeToCoreAudioType:(id)type
{
  v18 = *MEMORY[0x1E69E9840];
  if ([type isEqualToString:*MEMORY[0x1E6965120]])
  {
    v4 = 1902341232;
    goto LABEL_24;
  }

  v4 = 1702261346;
  if ([type isEqualToString:*MEMORY[0x1E69650F8]])
  {
    v4 = 1702261347;
    goto LABEL_24;
  }

  if ([type isEqualToString:*MEMORY[0x1E6965100]] & 1) != 0 || (v4 = 880176738, (objc_msgSend(type, "isEqualToString:", *MEMORY[0x1E69650C8])))
  {
LABEL_24:
    v5 = MEMORY[0x1E696AEC0];
    v6 = FourccToCStr(v4);

    return [v5 stringWithCString:v6 encoding:1];
  }

  if ([type isEqualToString:*MEMORY[0x1E69650D8]])
  {
    v4 = 880179042;
    goto LABEL_24;
  }

  if ([type isEqualToString:*MEMORY[0x1E69650D0]])
  {
    v4 = 880176759;
    goto LABEL_24;
  }

  if ([type isEqualToString:*MEMORY[0x1E6965110]])
  {
    v4 = 1718755360;
    goto LABEL_24;
  }

  if ([type isEqualToString:*MEMORY[0x1E6965118]])
  {
    v4 = 1752309792;
    goto LABEL_24;
  }

  if ([type isEqualToString:*MEMORY[0x1E69650F0]])
  {
    v4 = 1701212704;
    goto LABEL_24;
  }

  v4 = 1935764850;
  if ([type isEqualToString:*MEMORY[0x1E69650E0]])
  {
    goto LABEL_24;
  }

  if ([type isEqualToString:*MEMORY[0x1E6965128]])
  {
    v4 = 1935767394;
    goto LABEL_24;
  }

  if ([type isEqualToString:*MEMORY[0x1E69650E8]])
  {
    v4 = 1700883826;
    goto LABEL_24;
  }

  if ([type isEqualToString:*MEMORY[0x1E6965108]])
  {
    v4 = 1936029299;
    goto LABEL_24;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCTelephonyInterface translateVocoderTypeToCoreAudioType:]";
      v14 = 1024;
      v15 = 300;
      v16 = 2080;
      uTF8String = [type UTF8String];
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCTelephonyInterface: translateVocoderTypeToCoreAudioType - invalid vocoder type %s", &v10, 0x26u);
    }
  }

  return 0;
}

- (unsigned)getSampleRateFromAudioCodecInfo:(id)info
{
  if ([info codec])
  {
    if ([info codec] == 1)
    {
      return 16000;
    }

    if ([info codec] != 2)
    {
      return 32000;
    }

    if ([info evsBandwidth])
    {
      if ([info evsBandwidth] == 1)
      {
        return 16000;
      }

      [info evsBandwidth];
      return 32000;
    }
  }

  return 8000;
}

- (void)notifyCodecModeChangeEventToCT:(_VCAudioCodecModeChangeEvent *)t
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [VCPayloadUtils codecTypeForPayload:t->payload];
  v6 = objc_alloc_init(MEMORY[0x1E6964F60]);
  [v6 setCallId:111];
  [v6 setCodec:{+[VCPayloadUtils ctAudioCodecTypeForMediaStreamCodec:](VCPayloadUtils, "ctAudioCodecTypeForMediaStreamCodec:", v5)}];
  if (v5 - 1 > 1)
  {
    if (v5 <= 0x11 && ((1 << v5) & 0x20018) != 0)
    {
      [v6 setEvsBitrate:{+[VCPayloadUtils ctAudioCodecEVSBitrateForBitrate:](VCPayloadUtils, "ctAudioCodecEVSBitrateForBitrate:", t->codecBitrate)}];
      [v6 setEvsBandwidth:{+[VCPayloadUtils ctAudioCodecEVSBandwidthForAudioCodecBandwidth:](VCPayloadUtils, "ctAudioCodecEVSBandwidthForAudioCodecBandwidth:", t->codecBandwidth)}];
    }
  }

  else
  {
    [v6 setAmrMode:t->codecRateMode];
  }

  [v6 setSampleRate:{-[VCTelephonyInterface getSampleRateFromAudioCodecInfo:](self, "getSampleRateFromAudioCodecInfo:", v6)}];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315906;
      v11 = v8;
      v12 = 2080;
      v13 = "[VCTelephonyInterface notifyCodecModeChangeEventToCT:]";
      v14 = 1024;
      v15 = 345;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Notifying CoreTelephony of current audio settings %@", &v10, 0x26u);
    }
  }

  [(CoreTelephonyClient *)self->_coreTelephonyClient setVoLTEAudioCodec:self->_ctSubscriptionContext codecInfo:v6 completion:&__block_literal_global_111];
}

void __55__VCTelephonyInterface_notifyCodecModeChangeEventToCT___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 && VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCTelephonyInterface notifyCodecModeChangeEventToCT:]_block_invoke";
      v9 = 1024;
      v10 = 348;
      v11 = 2112;
      v12 = a2;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d CoreTelephony setVoLTEAudioCodec returned with error %@", &v5, 0x26u);
    }
  }
}

+ (int64_t)ctSubscriptionSlotForSubscriptionSlot:(int64_t)slot
{
  v3 = 1;
  if (slot == 2)
  {
    v3 = 2;
  }

  if (slot)
  {
    v4 = slot <= 2;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (int)ctDirectionForTelephonyLinkDirection:(int64_t)direction
{
  if (direction == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (direction == 2);
  }
}

+ (int64_t)telephonyLinkDirectionForCtDirection:(int)direction
{
  if (direction == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (direction == 2);
  }
}

uint64_t __52__VCTelephonyInterface_anbrActivationState_enabled___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        *v14 = 136315906;
        *&v14[4] = v3;
        *&v14[12] = 2080;
        *&v14[14] = "[VCTelephonyInterface anbrActivationState:enabled:]_block_invoke";
        *&v14[22] = 1024;
        LODWORD(v15) = 403;
        WORD2(v15) = 1024;
        *(&v15 + 6) = v5;
        v6 = " [%s] %s:%d ANBR activation state enabled=%{BOOL}d";
        v7 = v4;
        v8 = 34;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v14, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        *v14 = 136316418;
        *&v14[4] = v9;
        *&v14[12] = 2080;
        *&v14[14] = "[VCTelephonyInterface anbrActivationState:enabled:]_block_invoke";
        *&v14[22] = 1024;
        LODWORD(v15) = 403;
        WORD2(v15) = 2112;
        *(&v15 + 6) = v2;
        HIWORD(v15) = 2048;
        v16 = v11;
        LOWORD(v17) = 1024;
        *(&v17 + 2) = v12;
        v6 = " [%s] %s:%d %@(%p) ANBR activation state enabled=%{BOOL}d";
        v7 = v10;
        v8 = 54;
        goto LABEL_11;
      }
    }
  }

  return [objc_msgSend(*(a1 + 32) delegate];
}

uint64_t __68__VCTelephonyInterface_anbrBitrateRecommendation_bitrate_direction___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = [*(a1 + 40) unsignedIntValue];
        v6 = *(a1 + 56);
        *v16 = 136316162;
        *&v16[4] = v3;
        *&v16[12] = 2080;
        *&v16[14] = "[VCTelephonyInterface anbrBitrateRecommendation:bitrate:direction:]_block_invoke";
        *&v16[22] = 1024;
        LODWORD(v17) = 419;
        WORD2(v17) = 1024;
        *(&v17 + 6) = v5;
        WORD5(v17) = 1024;
        HIDWORD(v17) = v6;
        v7 = " [%s] %s:%d ANBR bitrate recommendation bitrate=%d direction=%d";
        v8 = v4;
        v9 = 40;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, v7, v16, v9);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = [*(a1 + 40) unsignedIntValue];
        v14 = *(a1 + 56);
        *v16 = 136316674;
        *&v16[4] = v10;
        *&v16[12] = 2080;
        *&v16[14] = "[VCTelephonyInterface anbrBitrateRecommendation:bitrate:direction:]_block_invoke";
        *&v16[22] = 1024;
        LODWORD(v17) = 419;
        WORD2(v17) = 2112;
        *(&v17 + 6) = v2;
        HIWORD(v17) = 2048;
        v18 = v12;
        LOWORD(v19) = 1024;
        *(&v19 + 2) = v13;
        HIWORD(v19) = 1024;
        LODWORD(v20) = v14;
        v7 = " [%s] %s:%d %@(%p) ANBR bitrate recommendation bitrate=%d direction=%d";
        v8 = v11;
        v9 = 60;
        goto LABEL_11;
      }
    }
  }

  return [objc_msgSend(*(a1 + 32) delegate];
}

- (void)anbrActivationState:(id)state enabled:(BOOL)enabled
{
  v10 = *MEMORY[0x1E69E9840];
  slotID = [state slotID];
  if (slotID == [(CTXPCServiceSubscriptionContext *)self->_ctSubscriptionContext slotID])
  {
    notificationQueue = self->_notificationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__VCTelephonyInterface_anbrActivationState_enabled___block_invoke;
    block[3] = &unk_1E85F37A0;
    block[4] = self;
    enabledCopy = enabled;
    dispatch_async(notificationQueue, block);
  }
}

- (void)anbrBitrateRecommendation:(id)recommendation bitrate:(id)bitrate direction:(int)direction
{
  v5 = *&direction;
  v20 = *MEMORY[0x1E69E9840];
  slotID = [recommendation slotID];
  if (slotID == [(CTXPCServiceSubscriptionContext *)self->_ctSubscriptionContext slotID])
  {
    if ([bitrate unsignedIntValue])
    {
      if (v5)
      {
        v9 = [VCTelephonyInterface telephonyLinkDirectionForCtDirection:v5];
        notificationQueue = self->_notificationQueue;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __68__VCTelephonyInterface_anbrBitrateRecommendation_bitrate_direction___block_invoke;
        v15[3] = &unk_1E85F7018;
        v15[4] = self;
        v15[5] = bitrate;
        v16 = v5;
        v15[6] = v9;
        dispatch_async(notificationQueue, v15);
        return;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v14 = VRTraceErrorLogLevelToCSTR();
        v12 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v18 = v14;
          OUTLINED_FUNCTION_3_47();
          v19 = 414;
          v13 = " [%s] %s:%d Unknown direction is not supported";
          goto LABEL_12;
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v18 = v11;
        OUTLINED_FUNCTION_3_47();
        v19 = 413;
        v13 = " [%s] %s:%d Unexpected bitrate recommendation, ignoring ...";
LABEL_12:
        _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x1Cu);
      }
    }
  }
}

- (void)init
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Could not create queue", v2, v3, v4, v5, v6);
}

@end