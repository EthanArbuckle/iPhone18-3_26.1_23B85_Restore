@interface VCAirPlayAudioHALPlugin
+ (AudioServerPlugInDriverInterface)createInterface;
+ (AudioServerPlugInDriverInterface)sharedAudioServerPluginDriver;
+ (__CFDictionary)createConduitCreationOptionsWithDeviceInfo:(id)info inOptions:(__CFDictionary *)options;
+ (id)sharedAirPlayAudioHALPluginNullDevice;
+ (tagVCAudioHALPluginConfiguration)convertASBDToInterleavedFormat:(SEL)format;
+ (void)createInterface;
+ (void)registerAudioServerPluginDriver:(AudioServerPlugInDriverInterface *)driver onQueue:(id)queue;
- (BOOL)start;
- (BOOL)stop;
- (VCAirPlayAudioHALPlugin)initWithConfig:(tagVCAudioHALPluginConfiguration *)config loadBinary:(BOOL)binary conduitCreateOptions:(__CFDictionary *)options;
- (void)dealloc;
- (void)invalidate;
- (void)start;
- (void)stop;
- (void)suspendAndReleaseConduitDeviceLocked;
@end

@implementation VCAirPlayAudioHALPlugin

+ (tagVCAudioHALPluginConfiguration)convertASBDToInterleavedFormat:(SEL)format
{
  v56 = *MEMORY[0x1E69E9840];
  retstr->remoteDeviceInfo = 0;
  *&retstr->sinkFormat.format.mBitsPerChannel = 0u;
  *&retstr->sinkContext = 0u;
  *&retstr->sinkFormat.format.mSampleRate = 0u;
  *&retstr->sinkFormat.format.mBytesPerPacket = 0u;
  if (!a4)
  {
    [VCAirPlayAudioHALPlugin convertASBDToInterleavedFormat:a2];
    return result;
  }

  v6 = *&a4->sinkFormat.format.mBytesPerPacket;
  *&retstr->sinkFormat.format.mSampleRate = *&a4->sinkFormat.format.mSampleRate;
  *&retstr->sinkFormat.format.mBytesPerPacket = v6;
  v7 = *&a4->sinkContext;
  *&retstr->sinkFormat.format.mBitsPerChannel = *&a4->sinkFormat.format.mBitsPerChannel;
  *&retstr->sinkContext = v7;
  retstr->remoteDeviceInfo = a4->remoteDeviceInfo;
  mFormatFlags = retstr->sinkFormat.format.mFormatFlags;
  mChannelsPerFrame = retstr->sinkFormat.format.mChannelsPerFrame;
  if ((mFormatFlags & 0x20) != 0 && mChannelsPerFrame == 2)
  {
    mFormatFlags &= ~0x20u;
    v10 = 2 * retstr->sinkFormat.format.mBytesPerPacket;
    retstr->sinkFormat.format.mFormatFlags = mFormatFlags;
    retstr->sinkFormat.format.mBytesPerPacket = v10;
    retstr->sinkFormat.format.mBytesPerFrame *= 2;
  }

  if (objc_opt_class() == a2)
  {
    result = VRTraceGetErrorLogLevelForModule();
    if (result >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        mSampleRate = retstr->sinkFormat.format.mSampleRate;
        mFormatID = retstr->sinkFormat.format.mFormatID;
        mBytesPerPacket = retstr->sinkFormat.format.mBytesPerPacket;
        mFramesPerPacket = retstr->sinkFormat.format.mFramesPerPacket;
        mBytesPerFrame = retstr->sinkFormat.format.mBytesPerFrame;
        mBitsPerChannel = retstr->sinkFormat.format.mBitsPerChannel;
        mReserved = retstr->sinkFormat.format.mReserved;
        v34 = 136317954;
        v35 = v13;
        v36 = 2080;
        v37 = "+[VCAirPlayAudioHALPlugin convertASBDToInterleavedFormat:]";
        v38 = 1024;
        v39 = 94;
        v40 = 2048;
        v41 = mSampleRate;
        v42 = 1024;
        *v43 = mFormatID;
        *&v43[4] = 1024;
        *&v43[6] = mFormatFlags;
        LOWORD(v44) = 1024;
        *(&v44 + 2) = mBytesPerPacket;
        HIWORD(v44) = 1024;
        *v45 = mFramesPerPacket;
        *&v45[4] = 1024;
        *v46 = mBytesPerFrame;
        *&v46[4] = 1024;
        *v47 = mChannelsPerFrame;
        *&v47[4] = 1024;
        *v48 = mBitsPerChannel;
        *&v48[4] = 1024;
        *v49 = mReserved;
        v22 = " [%s] %s:%d VCAirPlayAudioHALPlugin ASBD: mSampleRate=%.1f mFormatID=%d mFormatFlags=0x%x mBytesPerPacket=%d mFramesPerPacket=%d mBytesPerFrame=%d mChannelsPerFrame=%d mBitsPerChannel=%d mReserved=0x%x";
        v23 = v14;
        v24 = 86;
LABEL_15:
        _os_log_impl(&dword_1DB56E000, v23, OS_LOG_TYPE_DEFAULT, v22, &v34, v24);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [a2 performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    result = VRTraceGetErrorLogLevelForModule();
    if (result >= 7)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v27 = retstr->sinkFormat.format.mSampleRate;
        v28 = retstr->sinkFormat.format.mFormatID;
        v29 = retstr->sinkFormat.format.mBytesPerPacket;
        v30 = retstr->sinkFormat.format.mFramesPerPacket;
        v31 = retstr->sinkFormat.format.mBytesPerFrame;
        v32 = retstr->sinkFormat.format.mBitsPerChannel;
        v33 = retstr->sinkFormat.format.mReserved;
        v34 = 136318466;
        v35 = v25;
        v36 = 2080;
        v37 = "+[VCAirPlayAudioHALPlugin convertASBDToInterleavedFormat:]";
        v38 = 1024;
        v39 = 94;
        v40 = 2112;
        v41 = *&v11;
        v42 = 2048;
        *v43 = a2;
        *&v43[8] = 2048;
        v44 = v27;
        *v45 = 1024;
        *&v45[2] = v28;
        *v46 = 1024;
        *&v46[2] = mFormatFlags;
        *v47 = 1024;
        *&v47[2] = v29;
        *v48 = 1024;
        *&v48[2] = v30;
        *v49 = 1024;
        *&v49[2] = v31;
        v50 = 1024;
        v51 = mChannelsPerFrame;
        v52 = 1024;
        v53 = v32;
        v54 = 1024;
        v55 = v33;
        v22 = " [%s] %s:%d %@(%p) VCAirPlayAudioHALPlugin ASBD: mSampleRate=%.1f mFormatID=%d mFormatFlags=0x%x mBytesPerPacket=%d mFramesPerPacket=%d mBytesPerFrame=%d mChannelsPerFrame=%d mBitsPerChannel=%d mReserved=0x%x";
        v23 = v26;
        v24 = 106;
        goto LABEL_15;
      }
    }
  }

  return result;
}

- (VCAirPlayAudioHALPlugin)initWithConfig:(tagVCAudioHALPluginConfiguration *)config loadBinary:(BOOL)binary conduitCreateOptions:(__CFDictionary *)options
{
  binaryCopy = binary;
  v20 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = VCAirPlayAudioHALPlugin;
  v8 = [(VCAirPlayAudioHALPlugin *)&v17 init];
  if (v8)
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAirPlayAudioHALPlugin-init");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = "[VCAirPlayAudioHALPlugin initWithConfig:loadBinary:conduitCreateOptions:]";
        *&buf[22] = 1024;
        *&buf[24] = 110;
        *&buf[28] = 2048;
        *&buf[30] = v8;
        *&buf[38] = 1024;
        *&buf[40] = binaryCopy;
        *&buf[44] = 2112;
        *&buf[46] = options;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAirPlayAudioHALPlugin-init (%p) loadBinary=%d conduitCreateOptions=%@", buf, 0x36u);
      }
    }

    if (config)
    {
      pthread_mutex_init((v8 + 168), 0);
      *(v8 + 12) = [VCAirPlayAudioHALPlugin createConduitCreationOptionsWithDeviceInfo:config->remoteDeviceInfo inOptions:options];
      if (binaryCopy && !+[VCAirPlayAudioHALPlugin sharedAudioServerPluginDriver])
      {
        [VCAirPlayAudioHALPlugin initWithConfig:v8 loadBinary:? conduitCreateOptions:?];
      }

      else
      {
        v11 = [[VCAudioHALPluginMockAudioInject alloc] initWithConfig:config];
        *(v8 + 1) = v11;
        if (v11)
        {
          [VCAirPlayAudioHALPlugin convertASBDToInterleavedFormat:config];
          v12 = v19;
          v13 = *&buf[48];
          *(v8 + 3) = *&buf[32];
          *(v8 + 4) = v13;
          *(v8 + 10) = v12;
          v14 = *&buf[16];
          *(v8 + 1) = *buf;
          *(v8 + 2) = v14;
          v15 = *(v8 + 2);
          *(v8 + 104) = *(v8 + 1);
          *(v8 + 120) = v15;
          *(v8 + 17) = *(v8 + 6);
          *(v8 + 36) = *(v8 + 14);
          *(v8 + 148) = _VCAirPlayAudioHALPlugin_handleAudioFrame;
          *(v8 + 156) = v8 + 16;
          return v8;
        }

        [VCAirPlayAudioHALPlugin initWithConfig:v8 loadBinary:? conduitCreateOptions:?];
      }
    }

    else
    {
      [VCAirPlayAudioHALPlugin initWithConfig:v8 loadBinary:? conduitCreateOptions:?];
    }

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAirPlayAudioHALPlugin-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCAirPlayAudioHALPlugin dealloc]";
      v11 = 1024;
      v12 = 139;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAirPlayAudioHALPlugin-dealloc (%p)", buf, 0x26u);
    }
  }

  conduitCreateOptions = self->_conduitCreateOptions;
  if (conduitCreateOptions)
  {
    CFRelease(conduitCreateOptions);
    self->_conduitCreateOptions = 0;
  }

  pthread_mutex_destroy(&self->_stateLock);
  v6.receiver = self;
  v6.super_class = VCAirPlayAudioHALPlugin;
  [(VCAirPlayAudioHALPlugin *)&v6 dealloc];
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAirPlayAudioHALPlugin-invalidate");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCAirPlayAudioHALPlugin invalidate]";
      v9 = 1024;
      v10 = 147;
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAirPlayAudioHALPlugin-invalidate (%p)", &v5, 0x26u);
    }
  }
}

- (BOOL)start
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAirPlayAudioHALPlugin-start");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCAirPlayAudioHALPlugin start]";
      v11 = 1024;
      v12 = 164;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAirPlayAudioHALPlugin-start (%p)", &v7, 0x26u);
    }
  }

  pthread_mutex_lock(&self->_stateLock);
  if (self->_resumed)
  {
    [(VCAirPlayAudioHALPlugin *)self start];
  }

  else
  {
    if (self->_conduitDevice)
    {
      goto LABEL_22;
    }

    if (FigHALAudioConduitDeviceCreate())
    {
      [VCAirPlayAudioHALPlugin start];
      goto LABEL_17;
    }

    if (self->_conduitDevice)
    {
LABEL_22:
      if (FigHALAudioConduitDeviceSetClientReceiveAudioIODelegate())
      {
        [VCAirPlayAudioHALPlugin start];
      }

      else
      {
        if (!FigHALAudioConduitDeviceResume())
        {
          [(VCAudioHALPluginMockAudioInject *)self->_mockAudioInject start];
          v5 = 1;
          self->_resumed = 1;
          goto LABEL_11;
        }

        [VCAirPlayAudioHALPlugin start];
      }
    }

    else
    {
      [(VCAirPlayAudioHALPlugin *)self start];
    }
  }

LABEL_17:
  if (!self->_resumed)
  {
    [(VCAirPlayAudioHALPlugin *)self suspendAndReleaseConduitDeviceLocked];
  }

  v5 = 0;
LABEL_11:
  pthread_mutex_unlock(&self->_stateLock);
  return v5;
}

- (BOOL)stop
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAirPlayAudioHALPlugin-stop");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCAirPlayAudioHALPlugin stop]";
      v11 = 1024;
      v12 = 199;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAirPlayAudioHALPlugin-stop (%p)", &v7, 0x26u);
    }
  }

  pthread_mutex_lock(&self->_stateLock);
  resumed = self->_resumed;
  if (resumed)
  {
    [(VCAudioHALPluginMockAudioInject *)self->_mockAudioInject stop];
    [(VCAirPlayAudioHALPlugin *)self suspendAndReleaseConduitDeviceLocked];
  }

  else
  {
    [(VCAirPlayAudioHALPlugin *)self stop];
  }

  pthread_mutex_unlock(&self->_stateLock);
  return resumed;
}

+ (void)registerAudioServerPluginDriver:(AudioServerPlugInDriverInterface *)driver onQueue:(id)queue
{
  v44 = *MEMORY[0x1E69E9840];
  if (!driver)
  {
    [VCAirPlayAudioHALPlugin registerAudioServerPluginDriver:self onQueue:?];
    return;
  }

  v7 = objc_opt_class();
  if (!queue)
  {
    [VCAirPlayAudioHALPlugin registerAudioServerPluginDriver:? onQueue:?];
    return;
  }

  if (v7 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v31 = v9;
        v32 = 2080;
        v33 = "+[VCAirPlayAudioHALPlugin registerAudioServerPluginDriver:onQueue:]";
        v34 = 1024;
        v35 = 222;
        v11 = " [%s] %s:%d Registering remote audio server plugin driver";
        v12 = v10;
        v13 = 28;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v31 = v14;
        v32 = 2080;
        v33 = "+[VCAirPlayAudioHALPlugin registerAudioServerPluginDriver:onQueue:]";
        v34 = 1024;
        v35 = 222;
        v36 = 2112;
        v37 = v8;
        v38 = 2048;
        selfCopy3 = self;
        v11 = " [%s] %s:%d %@(%p) Registering remote audio server plugin driver";
        v12 = v15;
        v13 = 48;
        goto LABEL_13;
      }
    }
  }

  block[6] = MEMORY[0x1E69E9820];
  block[7] = 3221225472;
  block[8] = __67__VCAirPlayAudioHALPlugin_registerAudioServerPluginDriver_onQueue___block_invoke;
  block[9] = &unk_1E85F50D8;
  block[10] = self;
  block[11] = queue;
  block[12] = driver;
  v16 = AudioServerPlugInRegisterRemote();
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v31 = v18;
        v32 = 2080;
        v33 = "+[VCAirPlayAudioHALPlugin registerAudioServerPluginDriver:onQueue:]";
        v34 = 1024;
        v35 = 229;
        v36 = 1024;
        LODWORD(v37) = v16;
        v20 = " [%s] %s:%d Plugin register remote returned=%i";
        v21 = v19;
        v22 = 34;
LABEL_24:
        _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [self performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v23 = VRTraceErrorLogLevelToCSTR();
      v24 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v31 = v23;
        v32 = 2080;
        v33 = "+[VCAirPlayAudioHALPlugin registerAudioServerPluginDriver:onQueue:]";
        v34 = 1024;
        v35 = 229;
        v36 = 2112;
        v37 = v17;
        v38 = 2048;
        selfCopy3 = self;
        v40 = 1024;
        v41 = v16;
        v20 = " [%s] %s:%d %@(%p) Plugin register remote returned=%i";
        v21 = v24;
        v22 = 54;
        goto LABEL_24;
      }
    }
  }

  if (v16)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          +[VCAirPlayAudioHALPlugin registerAudioServerPluginDriver:onQueue:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v25 = [self performSelector:sel_logPrefix];
      }

      else
      {
        v25 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v26 = VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v31 = v26;
          v32 = 2080;
          v33 = "+[VCAirPlayAudioHALPlugin registerAudioServerPluginDriver:onQueue:]";
          v34 = 1024;
          v35 = 232;
          v36 = 2112;
          v37 = v25;
          v38 = 2048;
          selfCopy3 = self;
          v40 = 1024;
          v41 = 5;
          v42 = 1024;
          v43 = v16;
          _os_log_error_impl(&dword_1DB56E000, v27, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Re-register remote delay=%d sec because register returned error=%i", buf, 0x3Cu);
        }
      }
    }

    v28 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__VCAirPlayAudioHALPlugin_registerAudioServerPluginDriver_onQueue___block_invoke_12;
    block[3] = &unk_1E85F40E0;
    block[4] = queue;
    block[5] = driver;
    dispatch_after(v28, queue, block);
  }
}

void __67__VCAirPlayAudioHALPlugin_registerAudioServerPluginDriver_onQueue___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __67__VCAirPlayAudioHALPlugin_registerAudioServerPluginDriver_onQueue___block_invoke_cold_1();
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

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        *buf = 136316418;
        v9 = v3;
        v10 = 2080;
        v11 = "+[VCAirPlayAudioHALPlugin registerAudioServerPluginDriver:onQueue:]_block_invoke";
        v12 = 1024;
        v13 = 224;
        v14 = 2112;
        v15 = v2;
        v16 = 2048;
        v17 = v6;
        v18 = 1024;
        v19 = 5;
        _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Re-register remote delay=%d sec because plugin was interrupted", buf, 0x36u);
      }
    }
  }

  v5 = dispatch_time(0, 5000000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__VCAirPlayAudioHALPlugin_registerAudioServerPluginDriver_onQueue___block_invoke_10;
  v7[3] = &unk_1E85F40E0;
  dispatch_after(v5, *(a1 + 40), v7);
}

+ (AudioServerPlugInDriverInterface)createInterface
{
  v47 = *MEMORY[0x1E69E9840];
  *v43 = 0;
  v3 = CFURLCreateWithFileSystemPath(0, @"/System/Library/Audio/Plug-Ins/AVC/AVCHalogen.driver", kCFURLPOSIXPathStyle, 1u);
  if (!v3)
  {
    +[(VCAirPlayAudioHALPlugin *)self];
    return *v43;
  }

  v4 = v3;
  v5 = CFPlugInCreate(0, v3);
  if (!v5)
  {
    [(VCAirPlayAudioHALPlugin *)self createInterface:v4];
    return *v43;
  }

  v12 = v5;
  v13 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  FactoriesForPlugInTypeInPlugIn = CFPlugInFindFactoriesForPlugInTypeInPlugIn(v13, v12);
  if (!FactoriesForPlugInTypeInPlugIn)
  {
    [(VCAirPlayAudioHALPlugin *)self createInterface:v4];
    v20 = *&v43[8];
    goto LABEL_22;
  }

  v20 = FactoriesForPlugInTypeInPlugIn;
  if (CFArrayGetCount(FactoriesForPlugInTypeInPlugIn) <= 0)
  {
    +[(VCAirPlayAudioHALPlugin *)self];
    goto LABEL_21;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v20, 0);
  if (!ValueAtIndex)
  {
    +[(VCAirPlayAudioHALPlugin *)self];
    goto LABEL_21;
  }

  v22 = ValueAtIndex;
  v23 = CFUUIDGetConstantUUIDWithBytes(0, 0x44u, 0x3Au, 0xBAu, 0xB8u, 0xE7u, 0xB3u, 0x49u, 0x1Au, 0xB9u, 0x85u, 0xBEu, 0xB9u, 0x18u, 0x70u, 0x30u, 0xDBu);
  v24 = CFPlugInInstanceCreate(0, v22, v23);
  if (!v24)
  {
    +[(VCAirPlayAudioHALPlugin *)self];
    goto LABEL_21;
  }

  v25 = v24;
  v26 = *(*v24 + 8);
  v27 = CFUUIDGetConstantUUIDWithBytes(0, 0xEEu, 0xA5u, 0x77u, 0x3Du, 0xCCu, 0x43u, 0x49u, 0xF1u, 0x8Eu, 0, 0x8Fu, 0x96u, 0xE7u, 0xD2u, 0x3Bu, 0x17u);
  v28 = CFUUIDGetUUIDBytes(v27);
  if (v26(v25, *&v28.byte0, *&v28.byte8, v43))
  {
    +[VCAirPlayAudioHALPlugin createInterface];
  }

  else
  {
    v29 = *v43;
    v30 = objc_opt_class();
    if (v29)
    {
      if (v30 == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_20;
        }

        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        *&v43[8] = 136315650;
        *&v43[12] = v32;
        *&v43[20] = 2080;
        *&v43[22] = "+[VCAirPlayAudioHALPlugin createInterface]";
        *&v43[30] = 1024;
        LODWORD(v44) = 264;
        v34 = " [%s] %s:%d Plugin loaded!";
        v35 = v33;
        v36 = 28;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v31 = [self performSelector:sel_logPrefix];
        }

        else
        {
          v31 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          goto LABEL_20;
        }

        v37 = VRTraceErrorLogLevelToCSTR();
        v38 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        *&v43[8] = 136316162;
        *&v43[12] = v37;
        *&v43[20] = 2080;
        *&v43[22] = "+[VCAirPlayAudioHALPlugin createInterface]";
        *&v43[30] = 1024;
        LODWORD(v44) = 264;
        WORD2(v44) = 2112;
        *(&v44 + 6) = v31;
        HIWORD(v44) = 2048;
        selfCopy = self;
        v34 = " [%s] %s:%d %@(%p) Plugin loaded!";
        v35 = v38;
        v36 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_DEFAULT, v34, &v43[8], v36);
    }

    else
    {
      +[(VCAirPlayAudioHALPlugin *)v30];
    }
  }

LABEL_20:
  (*(*v25 + 24))(v25);
LABEL_21:
  CFRelease(v4);
LABEL_22:
  CFRelease(v20);
  CFRelease(v12);
  return *v43;
}

+ (AudioServerPlugInDriverInterface)sharedAudioServerPluginDriver
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__VCAirPlayAudioHALPlugin_sharedAudioServerPluginDriver__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = self;
  if (sharedAudioServerPluginDriver_onceToken != -1)
  {
    dispatch_once(&sharedAudioServerPluginDriver_onceToken, v3);
  }

  return sharedAudioServerPluginDriver__pluginInterface;
}

void __56__VCAirPlayAudioHALPlugin_sharedAudioServerPluginDriver__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  sharedAudioServerPluginDriver__pluginReqisterQueue = dispatch_queue_create("com.apple.VideoConference.pluginRegisterQueue", 0);
  if (sharedAudioServerPluginDriver__pluginReqisterQueue)
  {
    sharedAudioServerPluginDriver__pluginInterface = +[VCAirPlayAudioHALPlugin createInterface];
    if (sharedAudioServerPluginDriver__pluginInterface)
    {
      dispatch_sync(sharedAudioServerPluginDriver__pluginReqisterQueue, &__block_literal_global_35);
    }

    else
    {
      __56__VCAirPlayAudioHALPlugin_sharedAudioServerPluginDriver__block_invoke_cold_1(a1);
    }
  }

  else
  {
    __56__VCAirPlayAudioHALPlugin_sharedAudioServerPluginDriver__block_invoke_cold_2(a1);
  }

  if (!sharedAudioServerPluginDriver__pluginInterface && sharedAudioServerPluginDriver__pluginReqisterQueue)
  {
    dispatch_release(sharedAudioServerPluginDriver__pluginReqisterQueue);
  }

  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315906;
        v12 = v3;
        v13 = 2080;
        v14 = "+[VCAirPlayAudioHALPlugin sharedAudioServerPluginDriver]_block_invoke_2";
        v15 = 1024;
        v16 = 295;
        v17 = 2048;
        v18 = sharedAudioServerPluginDriver__pluginInterface;
        v5 = " [%s] %s:%d Shared AirPlay Audio HAL plugin interface=%p";
        v6 = v4;
        v7 = 38;
LABEL_17:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, &v11, v7);
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
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = 136316418;
        v12 = v8;
        v13 = 2080;
        v14 = "+[VCAirPlayAudioHALPlugin sharedAudioServerPluginDriver]_block_invoke";
        v15 = 1024;
        v16 = 295;
        v17 = 2112;
        v18 = v2;
        v19 = 2048;
        v20 = v10;
        v21 = 2048;
        v22 = sharedAudioServerPluginDriver__pluginInterface;
        v5 = " [%s] %s:%d %@(%p) Shared AirPlay Audio HAL plugin interface=%p";
        v6 = v9;
        v7 = 58;
        goto LABEL_17;
      }
    }
  }
}

void __64__VCAirPlayAudioHALPlugin_sharedAirPlayAudioHALPluginNullDevice__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  _MergedGlobals_2 = [[VCAirPlayAudioHALPlugin alloc] initWithConfig:&v11];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = v3;
        v18 = 2080;
        v19 = "+[VCAirPlayAudioHALPlugin sharedAirPlayAudioHALPluginNullDevice]_block_invoke";
        v20 = 1024;
        v21 = 308;
        v22 = 2048;
        v23 = _MergedGlobals_2;
        v5 = " [%s] %s:%d Created shared AirPlay Audio HAL plugin object=%p";
        v6 = v4;
        v7 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v2 = [*(a1 + 32) performSelector:{sel_logPrefix, v11, v12, v13, v14, v15}];
    }

    else
    {
      v2 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        *buf = 136316418;
        v17 = v8;
        v18 = 2080;
        v19 = "+[VCAirPlayAudioHALPlugin sharedAirPlayAudioHALPluginNullDevice]_block_invoke";
        v20 = 1024;
        v21 = 308;
        v22 = 2112;
        v23 = v2;
        v24 = 2048;
        v25 = v10;
        v26 = 2048;
        v27 = _MergedGlobals_2;
        v5 = " [%s] %s:%d %@(%p) Created shared AirPlay Audio HAL plugin object=%p";
        v6 = v9;
        v7 = 58;
        goto LABEL_11;
      }
    }
  }
}

+ (__CFDictionary)createConduitCreationOptionsWithDeviceInfo:(id)info inOptions:(__CFDictionary *)options
{
  v53 = *MEMORY[0x1E69E9840];
  if (!options)
  {
    if (!info)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          return 0;
        }

        VRTraceErrorLogLevelToCSTR();
        v27 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return 0;
        }

        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        v40 = 61;
        v28 = " [%s] %s:%d No options to configure";
        v29 = v27;
        v30 = 28;
      }

      else
      {
        if (OUTLINED_FUNCTION_28_0())
        {
          OUTLINED_FUNCTION_6_1();
        }

        if (VRTraceGetErrorLogLevelForModule() < 7)
        {
          return 0;
        }

        VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          return 0;
        }

        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        v28 = " [%s] %s:%d %@(%p) No options to configure";
        v29 = v31;
        v30 = 48;
      }

      _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, v28, &v39, v30);
      return 0;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      goto LABEL_7;
    }

    if (objc_opt_class() != self)
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        OUTLINED_FUNCTION_6_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40())
      {
        return 0;
      }

LABEL_55:
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_56;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return 0;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v40 = 59;
LABEL_52:
    OUTLINED_FUNCTION_2_0();
LABEL_56:
    _os_log_error_impl(v33, v34, v35, v36, v37, v38);
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, options);
  if (!MutableCopy)
  {
    if (objc_opt_class() != self)
    {
      if (OUTLINED_FUNCTION_28_0())
      {
        OUTLINED_FUNCTION_6_1();
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return 0;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_40())
      {
        return 0;
      }

      goto LABEL_55;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return 0;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return 0;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    v40 = 56;
    goto LABEL_52;
  }

  Mutable = MutableCopy;
  if (!info)
  {
    return Mutable;
  }

LABEL_7:
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_18;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    deviceName = [info deviceName];
    deviceUID = [info deviceUID];
    [info modelUID];
    LODWORD(v39) = 136317186;
    *(&v39 + 4) = v17;
    WORD6(v39) = 2080;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_29();
    infoCopy2 = v8;
    OUTLINED_FUNCTION_15_5();
    selfCopy = self;
    v45 = v21;
    infoCopy = info;
    v47 = v22;
    v48 = deviceName;
    v49 = v22;
    v50 = deviceUID;
    v51 = v22;
    v52 = v23;
    v14 = " [%s] %s:%d %@(%p) remoteDeviceInfo=%p deviceName=%@ deviceUID=%@ modelUID=%@";
    v15 = v18;
    v16 = 88;
    goto LABEL_17;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      deviceName2 = [info deviceName];
      deviceUID2 = [info deviceUID];
      [info modelUID];
      OUTLINED_FUNCTION_10();
      WORD6(v39) = v12;
      OUTLINED_FUNCTION_6();
      v40 = 64;
      v41 = 2048;
      infoCopy2 = info;
      v43 = 2112;
      selfCopy = deviceName2;
      v45 = 2112;
      infoCopy = deviceUID2;
      v47 = 2112;
      v48 = v13;
      v14 = " [%s] %s:%d remoteDeviceInfo=%p deviceName=%@ deviceUID=%@ modelUID=%@";
      v15 = v9;
      v16 = 68;
LABEL_17:
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v39, v16);
    }
  }

LABEL_18:
  deviceName3 = [info deviceName];
  v25 = *MEMORY[0x1E6962838];
  if (deviceName3)
  {
    deviceName4 = [info deviceName];
  }

  else
  {
    deviceName4 = @"Airplay Audio HAL Device";
  }

  CFDictionarySetValue(Mutable, v25, deviceName4);
  if ([info deviceUID])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6962840], [info deviceUID]);
  }

  if ([info modelUID])
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E6962848], [info modelUID]);
  }

  return Mutable;
}

- (void)suspendAndReleaseConduitDeviceLocked
{
  OUTLINED_FUNCTION_40_0();
  v26 = v2;
  v27 = v4;
  v5 = v3;
  v25 = *MEMORY[0x1E69E9840];
  if (!*(v3 + 88))
  {
    goto LABEL_6;
  }

  if (*(v3 + 232) == 1)
  {
    v6 = FigHALAudioConduitDeviceSuspendAndInvalidate();
    if (v6)
    {
      v8 = v6;
      if (objc_opt_class() == v5)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_4;
        }

        VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (!OUTLINED_FUNCTION_40())
        {
          goto LABEL_4;
        }

        OUTLINED_FUNCTION_10();
        v21 = v11;
        OUTLINED_FUNCTION_6();
        LODWORD(v22) = 155;
        WORD2(v22) = v12;
        *(&v22 + 6) = v8;
        v13 = &dword_1DB56E000;
        v14 = " [%s] %s:%d Suspend and invalidate conduit returned error=%i";
        v15 = &v20;
        v16 = v10;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 34;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [v5 performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          goto LABEL_4;
        }

        VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_31())
        {
          goto LABEL_4;
        }

        OUTLINED_FUNCTION_7_4();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_9_9();
        *(&v22 + 6) = v9;
        OUTLINED_FUNCTION_15_5();
        v23 = v5;
        LOWORD(v24) = v19;
        *(&v24 + 2) = v8;
        OUTLINED_FUNCTION_5_5();
      }

      _os_log_error_impl(v13, v16, v17, v14, v15, v18);
    }
  }

LABEL_4:
  v7 = *(v5 + 88);
  if (v7)
  {
    CFRelease(v7);
    *(v5 + 88) = 0;
  }

LABEL_6:
  *(v5 + 232) = 0;
  OUTLINED_FUNCTION_39_0();
}

+ (id)sharedAirPlayAudioHALPluginNullDevice
{
  v19 = *MEMORY[0x1E69E9840];
  if ([VCDefaults BOOLeanValueForKey:@"startAirPlayAudioHALPluginNullDevice" defaultValue:0])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__VCAirPlayAudioHALPlugin_sharedAirPlayAudioHALPluginNullDevice__block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = self;
    if (qword_1EDBDA868 != -1)
    {
      dispatch_once(&qword_1EDBDA868, block);
    }

    if (!_MergedGlobals_2)
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return _MergedGlobals_2;
        }

        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x1E6986650];
        if (!OUTLINED_FUNCTION_34())
        {
          return _MergedGlobals_2;
        }

        *buf = 136315650;
        v14 = v5;
        OUTLINED_FUNCTION_20_4();
        v7 = " [%s] %s:%d Shared AirPlay Audio HAL plugin object does not exist";
        v8 = v6;
        v9 = 28;
      }

      else
      {
        if (OUTLINED_FUNCTION_28_0())
        {
          v4 = OUTLINED_FUNCTION_6_1();
        }

        else
        {
          v4 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return _MergedGlobals_2;
        }

        v10 = VRTraceErrorLogLevelToCSTR();
        v11 = *MEMORY[0x1E6986650];
        if (!OUTLINED_FUNCTION_40())
        {
          return _MergedGlobals_2;
        }

        *buf = 136316162;
        v14 = v10;
        OUTLINED_FUNCTION_20_4();
        v15 = 2112;
        v16 = v4;
        v17 = 2048;
        selfCopy = self;
        v7 = " [%s] %s:%d %@(%p) Shared AirPlay Audio HAL plugin object does not exist";
        v8 = v11;
        v9 = 48;
      }

      _os_log_error_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
    }
  }

  return _MergedGlobals_2;
}

+ (void)convertASBDToInterleavedFormat:(uint64_t)a1 .cold.1(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(uint64_t)a1 loadBinary:conduitCreateOptions:.cold.1(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(uint64_t)a1 loadBinary:conduitCreateOptions:.cold.2(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)initWithConfig:(uint64_t)a1 loadBinary:conduitCreateOptions:.cold.3(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)start
{
  if (objc_opt_class() == self)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)stop
{
  if (objc_opt_class() == self)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

+ (void)registerAudioServerPluginDriver:onQueue:.cold.1()
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v4 = 232;
  v5 = v0;
  v6 = 5;
  v7 = v0;
  v8 = v1;
  _os_log_error_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Re-register remote delay=%d sec because register returned error=%i", v3, 0x28u);
}

+ (void)registerAudioServerPluginDriver:(char)a1 onQueue:.cold.2(char a1)
{
  if (a1)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_34())
      {
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_0();
LABEL_11:
        _os_log_error_impl(v1, v2, v3, v4, v5, v6);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      OUTLINED_FUNCTION_6_1();
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_40())
      {
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_0_0();
        OUTLINED_FUNCTION_3_1();
        goto LABEL_11;
      }
    }
  }
}

+ (void)registerAudioServerPluginDriver:(uint64_t)a1 onQueue:.cold.3(uint64_t a1)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

void __67__VCAirPlayAudioHALPlugin_registerAudioServerPluginDriver_onQueue___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  v3 = 224;
  v4 = v0;
  v5 = 5;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d Re-register remote delay=%d sec because plugin was interrupted", v2, 0x22u);
}

+ (void)createInterface
{
  if (objc_opt_class() == self)
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
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

void __56__VCAirPlayAudioHALPlugin_sharedAudioServerPluginDriver__block_invoke_cold_1(uint64_t a1)
{
  if (objc_opt_class() == *(a1 + 32))
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
    [*(a1 + 32) performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_7();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_15_5();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

void __56__VCAirPlayAudioHALPlugin_sharedAudioServerPluginDriver__block_invoke_cold_2(uint64_t a1)
{
  if (objc_opt_class() == *(a1 + 32))
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
    [*(a1 + 32) performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_7();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_15_5();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

@end