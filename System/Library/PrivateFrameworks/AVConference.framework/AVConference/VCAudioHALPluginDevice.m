@interface VCAudioHALPluginDevice
+ (id)sharedAudioHALPluginNullDevice;
+ (id)sharedAudioServerDriverPlugin;
- (BOOL)changeSamplingRate:(double)a3;
- (BOOL)getProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 qualifierData:(const void *)a5 dataSize:(unsigned int *)a6 andData:(void *)a7 forClient:(int)a8;
- (BOOL)start;
- (BOOL)stop;
- (VCAudioHALPluginDevice)initWithConfig:(tagVCAudioHALPluginConfiguration *)a3;
- (id).cxx_construct;
- (id)getZeroTimestampBlock;
- (id)willDoReadInputBlock;
- (id)willDoWriteMixBlock;
- (int)performStartIO;
- (int)performStopIO;
- (unsigned)calculateIOBufferFrameSize:(unsigned int)a3;
- (void)configureRemoteDeviceInfo:(id)a3;
- (void)dealloc;
- (void)initialZeroTimestamp;
- (void)invalidate;
- (void)start;
- (void)stop;
- (void)updateZeroTimestamp:(unint64_t)a3;
@end

@implementation VCAudioHALPluginDevice

- (VCAudioHALPluginDevice)initWithConfig:(tagVCAudioHALPluginConfiguration *)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (a3 && [(VCAudioHALPluginRemoteDeviceInfo *)a3->remoteDeviceInfo deviceUID])
  {
    v5 = [(VCAudioHALPluginRemoteDeviceInfo *)a3->remoteDeviceInfo deviceUID];
  }

  else
  {
    v5 = @"CC4B9AAD-7DF1-4EEA-8E0A-EB7CEE94C512";
  }

  v6 = +[VCAudioHALPluginDevice sharedAudioServerDriverPlugin];
  v20.receiver = self;
  v20.super_class = VCAudioHALPluginDevice;
  v7 = [(ASDAudioDevice *)&v20 initWithDeviceUID:v5 withPlugin:v6];
  if (!v7)
  {
    goto LABEL_19;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginDevice-init");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = v8;
      v23 = 2080;
      v24 = "[VCAudioHALPluginDevice initWithConfig:]";
      v25 = 1024;
      v26 = 68;
      v27 = 2048;
      v28 = v7;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginDevice-init (%p)", buf, 0x26u);
    }
  }

  if (!a3)
  {
    [VCAudioHALPluginDevice initWithConfig:v7];
    goto LABEL_19;
  }

  if (!v6)
  {
    [VCAudioHALPluginDevice initWithConfig:v7];
    goto LABEL_19;
  }

  [(ASDAudioDevice *)v7 setManufacturerName:@"Apple Inc."];
  [(ASDAudioDevice *)v7 setCanBeDefaultDevice:1];
  [(ASDAudioDevice *)v7 setCanBeDefaultSystemDevice:1];
  [(ASDAudioDevice *)v7 setCanChangeDeviceName:0];
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:a3->sinkFormat.format.mSampleRate];
  -[ASDAudioDevice setSamplingRates:](v7, "setSamplingRates:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1]);
  [(ASDAudioDevice *)v7 setSamplingRate:a3->sinkFormat.format.mSampleRate];
  [(ASDAudioDevice *)v7 setInputSafetyOffset:0];
  [(ASDAudioDevice *)v7 setOutputSafetyOffset:0];
  [(ASDAudioDevice *)v7 setTransportType:1668506482];
  v7->_samplesPerFrame = a3->sinkFormat.samplesPerFrame;
  [(ASDAudioDevice *)v7 setTimestampPeriod:(a3->sinkFormat.format.mSampleRate * 0.26)];
  [(VCAudioHALPluginDevice *)v7 configureRemoteDeviceInfo:a3->remoteDeviceInfo];
  *buf = 0xAAAAAAAAAAAAAAAALL;
  mach_timebase_info(buf);
  LODWORD(v10) = *&buf[4];
  LODWORD(v11) = *buf;
  v7->_clockFrequency = v10 / v11 * 1000000000.0;
  v12 = MEMORY[0x1E696AEC0];
  v13 = [v6 bundleID];
  v14 = objc_opt_class();
  v15 = [objc_msgSend(v12 stringWithFormat:@"%@.%@.%@", v13, NSStringFromClass(v14), v5), "UTF8String"];
  v16 = dispatch_queue_create(v15, 0);
  v7->_timeQueue = v16;
  if (!v16)
  {
    [VCAudioHALPluginDevice initWithConfig:v7];
    goto LABEL_19;
  }

  v17 = [[VCAudioHALPluginStream alloc] initWithDirection:1869968496 plugin:v6 withConfig:a3];
  v7->_outputStream = v17;
  if (!v17)
  {
    [VCAudioHALPluginDevice initWithConfig:v7];
    goto LABEL_19;
  }

  [(ASDStream *)v17 setStreamName:@"AVConference Output Stream"];
  [(ASDAudioDevice *)v7 addOutputStream:v7->_outputStream];
  v18 = [[VCAudioHALPluginMockAudioInject alloc] initWithConfig:a3];
  v7->_mockAudioInject = v18;
  if (!v18)
  {
    [VCAudioHALPluginDevice initWithConfig:v7];
LABEL_19:

    return 0;
  }

  return v7;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginDevice-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCAudioHALPluginDevice dealloc]";
      v11 = 1024;
      v12 = 110;
      v13 = 2048;
      v14 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginDevice-dealloc (%p)", buf, 0x26u);
    }
  }

  timeQueue = self->_timeQueue;
  if (timeQueue)
  {
    dispatch_release(timeQueue);
    self->_timeQueue = 0;
  }

  v6.receiver = self;
  v6.super_class = VCAudioHALPluginDevice;
  [(ASDAudioDevice *)&v6 dealloc];
}

- (void)configureRemoteDeviceInfo:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    -[ASDAudioDevice setDeviceName:](self, "setDeviceName:", [a3 deviceName]);
    -[ASDAudioDevice setModelUID:](self, "setModelUID:", [a3 modelUID]);
  }

  else
  {
    [(ASDAudioDevice *)self setDeviceName:@"AVConference Audio Device"];
  }

  [(ASDAudioDevice *)self setModelName:[(ASDAudioDevice *)self deviceUID]];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(ASDAudioDevice *)self deviceName];
        v9 = [(ASDAudioDevice *)self deviceUID];
        v10 = [(ASDAudioDevice *)self modelUID];
        v11 = [(ASDAudioDevice *)self manufacturerName];
        v12 = [(ASDAudioDevice *)self modelName];
        v13 = [(ASDAudioDevice *)self configurationBundleID];
        [(ASDAudioDevice *)self samplingRate];
        *buf = 136317698;
        v28 = v6;
        v29 = 2080;
        v30 = "[VCAudioHALPluginDevice configureRemoteDeviceInfo:]";
        v31 = 1024;
        v32 = 129;
        v33 = 2048;
        v34 = a3;
        v35 = 2112;
        v36 = v8;
        v37 = 2112;
        v38 = v9;
        v39 = 2112;
        v40 = v10;
        v41 = 2112;
        v42 = v11;
        v43 = 2112;
        v44 = v12;
        v45 = 2112;
        v46 = v13;
        v47 = 2048;
        v48 = v14;
        v15 = " [%s] %s:%d remoteDeviceInfo=%p deviceName=%@ deviceUID=%@ modelUID=%@ manufacturerName=%@ modelName=%@ configurationBundleID=%@ samplingRate=%f";
        v16 = v7;
        v17 = 108;
LABEL_14:
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioHALPluginDevice *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(ASDAudioDevice *)self deviceName];
        v20 = [(ASDAudioDevice *)self deviceUID];
        v21 = [(ASDAudioDevice *)self modelUID];
        v22 = [(ASDAudioDevice *)self manufacturerName];
        v23 = [(ASDAudioDevice *)self modelName];
        v24 = [(ASDAudioDevice *)self configurationBundleID];
        [(ASDAudioDevice *)self samplingRate];
        *buf = 136318210;
        v28 = v18;
        v29 = 2080;
        v30 = "[VCAudioHALPluginDevice configureRemoteDeviceInfo:]";
        v31 = 1024;
        v32 = 129;
        v33 = 2112;
        v34 = v5;
        v35 = 2048;
        v36 = self;
        v37 = 2048;
        v38 = a3;
        v39 = 2112;
        v40 = v26;
        v41 = 2112;
        v42 = v20;
        v43 = 2112;
        v44 = v21;
        v45 = 2112;
        v46 = v22;
        v47 = 2112;
        v48 = v23;
        v49 = 2112;
        v50 = v24;
        v51 = 2048;
        v52 = v25;
        v15 = " [%s] %s:%d %@(%p) remoteDeviceInfo=%p deviceName=%@ deviceUID=%@ modelUID=%@ manufacturerName=%@ modelName=%@ configurationBundleID=%@ samplingRate=%f";
        v16 = v19;
        v17 = 128;
        goto LABEL_14;
      }
    }
  }
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginDevice-invalidate");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCAudioHALPluginDevice invalidate]";
      v9 = 1024;
      v10 = 133;
      v11 = 2048;
      v12 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginDevice-invalidate (%p)", &v5, 0x26u);
    }
  }

  [(ASDAudioDevice *)self removeOutputStream:self->_outputStream];
  [(VCAudioHALPluginStream *)self->_outputStream invalidate];
}

- (BOOL)start
{
  v24 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315650;
        v15 = v4;
        v16 = 2080;
        v17 = "[VCAudioHALPluginDevice start]";
        v18 = 1024;
        v19 = 139;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v14, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioHALPluginDevice *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136316162;
        v15 = v9;
        v16 = 2080;
        v17 = "[VCAudioHALPluginDevice start]";
        v18 = 1024;
        v19 = 139;
        v20 = 2112;
        v21 = v3;
        v22 = 2048;
        v23 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  if (self->_isRunning)
  {
    [VCAudioHALPluginDevice start];
    return v14;
  }

  v11 = +[VCAudioHALPluginDevice sharedAudioServerDriverPlugin];
  if (!v11)
  {
    [VCAudioHALPluginDevice start];
    return v14;
  }

  [v11 addAudioDevice:self];
  v12 = 1;
  self->_isRunning = 1;
  [(VCAudioHALPluginMockAudioInject *)self->_mockAudioInject start];
  return v12;
}

- (BOOL)stop
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136315650;
        *&v14[4] = v4;
        *&v14[12] = 2080;
        *&v14[14] = "[VCAudioHALPluginDevice stop]";
        *&v14[22] = 1024;
        LODWORD(v15) = 154;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, v14, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioHALPluginDevice *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 136316162;
        *&v14[4] = v9;
        *&v14[12] = 2080;
        *&v14[14] = "[VCAudioHALPluginDevice stop]";
        *&v14[22] = 1024;
        LODWORD(v15) = 154;
        WORD2(v15) = 2112;
        *(&v15 + 6) = v3;
        HIWORD(v15) = 2048;
        v16 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  if (!self->_isRunning)
  {
    [VCAudioHALPluginDevice stop];
LABEL_18:
    v12 = v14[0];
    goto LABEL_15;
  }

  v11 = +[VCAudioHALPluginDevice sharedAudioServerDriverPlugin];
  if (!v11)
  {
    [VCAudioHALPluginDevice stop];
    goto LABEL_18;
  }

  [v11 removeAudioDevice:self];
  self->_isRunning = 0;
  v12 = 1;
LABEL_15:
  [(VCAudioHALPluginMockAudioInject *)self->_mockAudioInject stop:*v14];
  return v12;
}

+ (id)sharedAudioServerDriverPlugin
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__VCAudioHALPluginDevice_sharedAudioServerDriverPlugin__block_invoke;
  v3[3] = &unk_1E85F3778;
  v3[4] = a1;
  if (+[VCAudioHALPluginDevice sharedAudioServerDriverPlugin]::onceToken != -1)
  {
    dispatch_once(&+[VCAudioHALPluginDevice sharedAudioServerDriverPlugin]::onceToken, v3);
  }

  return +[VCAudioHALPluginDevice sharedAudioServerDriverPlugin]::_sharedAsdPlugIn;
}

void __55__VCAudioHALPluginDevice_sharedAudioServerDriverPlugin__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69E9820];
  v1 = (a1 + 32);
  v4 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x1E698D4F8]);
  +[VCAudioHALPluginDevice sharedAudioServerDriverPlugin]::_sharedAsdPlugIn = v2;
  if (!v2)
  {
    __55__VCAudioHALPluginDevice_sharedAudioServerDriverPlugin__block_invoke_cold_3(v1);
LABEL_8:

    +[VCAudioHALPluginDevice sharedAudioServerDriverPlugin]::_sharedAsdPlugIn = 0;
    return;
  }

  if (![v2 driverRef])
  {
    __55__VCAudioHALPluginDevice_sharedAudioServerDriverPlugin__block_invoke_cold_2(v1);
    goto LABEL_8;
  }

  if (AudioServerPlugInRegisterRemote())
  {
    __55__VCAudioHALPluginDevice_sharedAudioServerDriverPlugin__block_invoke_cold_1(v1);
    goto LABEL_8;
  }
}

void __55__VCAudioHALPluginDevice_sharedAudioServerDriverPlugin__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __55__VCAudioHALPluginDevice_sharedAudioServerDriverPlugin__block_invoke_2_cold_1();
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
        v5 = *(a1 + 32);
        v6 = 136316162;
        v7 = v3;
        v8 = 2080;
        v9 = "+[VCAudioHALPluginDevice sharedAudioServerDriverPlugin]_block_invoke";
        v10 = 1024;
        v11 = 175;
        v12 = 2112;
        v13 = v2;
        v14 = 2048;
        v15 = v5;
        _os_log_error_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) audio server driver plugin interrupted", &v6, 0x30u);
      }
    }
  }
}

- (int)performStartIO
{
  v18 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginDevice-performStartIO");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v11 = v3;
      v12 = 2080;
      v13 = "[VCAudioHALPluginDevice performStartIO]";
      v14 = 1024;
      v15 = 195;
      v16 = 2048;
      v17 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginDevice-performStartIO (%p)", buf, 0x26u);
    }
  }

  v9.receiver = self;
  v9.super_class = VCAudioHALPluginDevice;
  v5 = [(ASDAudioDevice *)&v9 performStartIO];
  if (!v5)
  {
    timeQueue = self->_timeQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__VCAudioHALPluginDevice_performStartIO__block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = self;
    dispatch_async(timeQueue, block);
  }

  return v5;
}

- (int)performStopIO
{
  v17 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCAudioHALPluginDevice-performStopIO");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v3;
      v11 = 2080;
      v12 = "[VCAudioHALPluginDevice performStopIO]";
      v13 = 1024;
      v14 = 207;
      v15 = 2048;
      v16 = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCAudioHALPluginDevice-performStopIO (%p)", buf, 0x26u);
    }
  }

  timeQueue = self->_timeQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__VCAudioHALPluginDevice_performStopIO__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(timeQueue, block);
  v7.receiver = self;
  v7.super_class = VCAudioHALPluginDevice;
  return [(ASDAudioDevice *)&v7 performStopIO];
}

- (id)getZeroTimestampBlock
{
  v5[5] = *MEMORY[0x1E69E9840];
  p_timestamp = &self->_timestamp;

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__VCAudioHALPluginDevice_getZeroTimestampBlock__block_invoke;
  v5[3] = &__block_descriptor_40_e20_i36__0_d8_Q16_Q24I32l;
  v5[4] = p_timestamp;
  result = [v5 copy];
  self->_zeroTimestampBlock = result;
  return result;
}

uint64_t __47__VCAudioHALPluginDevice_getZeroTimestampBlock__block_invoke(uint64_t a1, void *a2, void *a3, unint64_t *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v9.n128_u64[0] = -1;
  v9.n128_u64[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  VCAudioHALPluginTimestamp::read(*(a1 + 32), &v9);
  *a2 = v9.n128_u64[0];
  v7 = v10;
  *a3 = v9.n128_u64[1];
  *a4 = v7;
  return 0;
}

- (id)willDoReadInputBlock
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v4;
        v17 = 2080;
        v18 = "[VCAudioHALPluginDevice willDoReadInputBlock]";
        v19 = 1024;
        v20 = 230;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioHALPluginDevice *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v16 = v9;
        v17 = 2080;
        v18 = "[VCAudioHALPluginDevice willDoReadInputBlock]";
        v19 = 1024;
        v20 = 230;
        v21 = 2112;
        v22 = v3;
        v23 = 2048;
        v24 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v11 = [(ASDAudioDevice *)self hasInput];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__VCAudioHALPluginDevice_willDoReadInputBlock__block_invoke;
  v13[3] = &__block_descriptor_33_e14_i28__0I8_12_20l;
  v14 = v11;
  result = [v13 copy];
  self->_willDoReadInputBlock = result;
  return result;
}

uint64_t __46__VCAudioHALPluginDevice_willDoReadInputBlock__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  result = 1970171760;
  if (a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *(a1 + 32);
      *a4 = 1;
    }
  }

  return result;
}

- (id)willDoWriteMixBlock
{
  v25 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v4;
        v17 = 2080;
        v18 = "[VCAudioHALPluginDevice willDoWriteMixBlock]";
        v19 = 1024;
        v20 = 247;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioHALPluginDevice *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v16 = v9;
        v17 = 2080;
        v18 = "[VCAudioHALPluginDevice willDoWriteMixBlock]";
        v19 = 1024;
        v20 = 247;
        v21 = 2112;
        v22 = v3;
        v23 = 2048;
        v24 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v11 = [(ASDAudioDevice *)self hasOutput];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45__VCAudioHALPluginDevice_willDoWriteMixBlock__block_invoke;
  v13[3] = &__block_descriptor_33_e14_i28__0I8_12_20l;
  v14 = v11;
  result = [v13 copy];
  self->_willDoWriteMixBlock = result;
  return result;
}

uint64_t __45__VCAudioHALPluginDevice_willDoWriteMixBlock__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  result = 1970171760;
  if (a3)
  {
    if (a4)
    {
      result = 0;
      *a3 = *(a1 + 32);
      *a4 = 1;
    }
  }

  return result;
}

- (BOOL)changeSamplingRate:(double)a3
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__VCAudioHALPluginDevice_changeSamplingRate___block_invoke;
  v4[3] = &unk_1E85F40E0;
  v4[4] = self;
  *&v4[5] = a3;
  [(ASDAudioDevice *)self requestConfigurationChange:v4];
  return 1;
}

void __45__VCAudioHALPluginDevice_changeSamplingRate___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setSamplingRate:*(a1 + 40)];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v13 = 136315906;
        v14 = v3;
        v15 = 2080;
        v16 = "[VCAudioHALPluginDevice changeSamplingRate:]_block_invoke";
        v17 = 1024;
        v18 = 266;
        v19 = 2048;
        v20 = v5;
        v6 = " [%s] %s:%d newRate=%f";
        v7 = v4;
        v8 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, &v13, v8);
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
        v13 = 136316418;
        v14 = v9;
        v15 = 2080;
        v16 = "[VCAudioHALPluginDevice changeSamplingRate:]_block_invoke";
        v17 = 1024;
        v18 = 266;
        v19 = 2112;
        v20 = v2;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = v12;
        v6 = " [%s] %s:%d %@(%p) newRate=%f";
        v7 = v10;
        v8 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (void)initialZeroTimestamp
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = mach_absolute_time();
  currentSeed = self->_currentSeed;
  v12.sampleTime = 0.0;
  v12.hostTime = v3;
  v12.seed = currentSeed;
  *&v5 = VCAudioHALPluginTimestamp::write(&self->_timestamp, &v12).n128_u64[0];
  clockFrequency = self->_clockFrequency;
  [(ASDAudioDevice *)self samplingRate];
  v8 = (clockFrequency / v7 * [(ASDAudioDevice *)self timestampPeriod]);
  v9 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  timeQueue = self->_timeQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__VCAudioHALPluginDevice_initialZeroTimestamp__block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = v9;
  dispatch_after(v3 + v8, timeQueue, block);
}

void *__46__VCAudioHALPluginDevice_initialZeroTimestamp__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) strong];
  if (result)
  {
    v2 = result[70];

    return [result updateZeroTimestamp:v2];
  }

  return result;
}

- (void)updateZeroTimestamp:(unint64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_currentSeed == a3)
  {
    v23.n128_u64[0] = -1;
    v23.n128_u64[1] = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = VCAudioHALPluginTimestamp::read(&self->_timestamp, &v23).n128_u64[0];
    v6 = v23.n128_f64[0];
    v7 = v6 + [(ASDAudioDevice *)self timestampPeriod];
    v8 = v23.n128_u64[1];
    clockFrequency = self->_clockFrequency;
    [(ASDAudioDevice *)self samplingRate];
    v11 = clockFrequency / v10;
    v12 = [(ASDAudioDevice *)self timestampPeriod];
    currentSeed = self->_currentSeed;
    v14 = v8 + (v11 * v12);
    v22.sampleTime = v7;
    v22.hostTime = v14;
    v22.seed = currentSeed;
    *&v15 = VCAudioHALPluginTimestamp::write(&self->_timestamp, &v22).n128_u64[0];
    v16 = self->_clockFrequency;
    [(ASDAudioDevice *)self samplingRate];
    v18 = v16 / v17 * [(ASDAudioDevice *)self timestampPeriod]+ v14;
    v19 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    timeQueue = self->_timeQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__VCAudioHALPluginDevice_updateZeroTimestamp___block_invoke;
    block[3] = &unk_1E85F40E0;
    block[4] = v19;
    block[5] = a3;
    dispatch_after(v18, timeQueue, block);
  }
}

void *__46__VCAudioHALPluginDevice_updateZeroTimestamp___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) strong];
  if (result)
  {
    v3 = *(a1 + 40);

    return [result updateZeroTimestamp:v3];
  }

  return result;
}

- (unsigned)calculateIOBufferFrameSize:(unsigned int)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        samplesPerFrame = self->_samplesPerFrame;
        v16 = 136316162;
        v17 = v6;
        v18 = 2080;
        v19 = "[VCAudioHALPluginDevice calculateIOBufferFrameSize:]";
        v20 = 1024;
        v21 = 327;
        v22 = 1024;
        *v23 = a3;
        *&v23[4] = 1024;
        *&v23[6] = samplesPerFrame;
        v9 = " [%s] %s:%d requestedSize=%d configuring for samplesPerFrame=%d";
        v10 = v7;
        v11 = 40;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v16, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(VCAudioHALPluginDevice *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_samplesPerFrame;
        v16 = 136316674;
        v17 = v12;
        v18 = 2080;
        v19 = "[VCAudioHALPluginDevice calculateIOBufferFrameSize:]";
        v20 = 1024;
        v21 = 327;
        v22 = 2112;
        *v23 = v5;
        *&v23[8] = 2048;
        v24 = self;
        v25 = 1024;
        v26 = a3;
        v27 = 1024;
        v28 = v14;
        v9 = " [%s] %s:%d %@(%p) requestedSize=%d configuring for samplesPerFrame=%d";
        v10 = v13;
        v11 = 60;
        goto LABEL_11;
      }
    }
  }

  return self->_samplesPerFrame;
}

- (BOOL)getProperty:(const AudioObjectPropertyAddress *)a3 withQualifierSize:(unsigned int)a4 qualifierData:(const void *)a5 dataSize:(unsigned int *)a6 andData:(void *)a7 forClient:(int)a8
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCAudioHALPluginDevice;
  result = [(ASDAudioDevice *)&v14 getProperty:a3 withQualifierSize:*&a4 qualifierData:a5 dataSize:a6 andData:a7 forClient:*&a8];
  if (a3 && a6 && a7 && a3->mSelector == 1667658618)
  {
    *a7 = [(VCAudioHALPluginDevice *)self calculateIOBufferFrameSize:*a5];
    *a6 = 4;
    return 1;
  }

  return result;
}

void __56__VCAudioHALPluginDevice_sharedAudioHALPluginNullDevice__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  memset(v19, 0, 40);
  Format_Float(v19, 2, 48000);
  v12 = *&v19[0];
  v13 = *(v19 + 8);
  v14 = *(&v19[1] + 8);
  v15 = 0xAAAAAAAA000001E0;
  v2 = *(a1 + 32);
  v17 = 0;
  v18 = 0;
  v16 = v2;
  _MergedGlobals_20 = [[VCAudioHALPluginDevice alloc] initWithConfig:&v12];
  if (objc_opt_class() == *(a1 + 32))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v21 = v4;
        v22 = 2080;
        v23 = "+[VCAudioHALPluginDevice sharedAudioHALPluginNullDevice]_block_invoke";
        v24 = 1024;
        v25 = 363;
        v26 = 2048;
        v27 = _MergedGlobals_20;
        v6 = " [%s] %s:%d created audio server driver plug in null device=%p";
        v7 = v5;
        v8 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [*(a1 + 32) performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 136316418;
        v21 = v9;
        v22 = 2080;
        v23 = "+[VCAudioHALPluginDevice sharedAudioHALPluginNullDevice]_block_invoke";
        v24 = 1024;
        v25 = 363;
        v26 = 2112;
        v27 = v3;
        v28 = 2048;
        v29 = v11;
        v30 = 2048;
        v31 = _MergedGlobals_20;
        v6 = " [%s] %s:%d %@(%p) created audio server driver plug in null device=%p";
        v7 = v10;
        v8 = 58;
        goto LABEL_11;
      }
    }
  }
}

- (id).cxx_construct
{
  p_timestamp = &self->_timestamp;
  self->_timestamp.numberOfSlots = 4;
  std::vector<tagVCAudioHALPluginTimestampInfo>::vector[abi:ne200100](&self->_timestamp.timestamps.__begin_, 4uLL);
  *&p_timestamp->timestampIndex.__a_.__a_value = 0u;
  *&p_timestamp->initLocklessTimestampInfo.hostTime = 0u;
  return self;
}

+ (id)sharedAudioHALPluginNullDevice
{
  v20 = *MEMORY[0x1E69E9840];
  if ([VCDefaults BOOLeanValueForKey:@"startAudioHALPluginNullDevice" defaultValue:0])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__VCAudioHALPluginDevice_sharedAudioHALPluginNullDevice__block_invoke;
    block[3] = &unk_1E85F3778;
    block[4] = a1;
    if (qword_1EDBDAA18 != -1)
    {
      dispatch_once(&qword_1EDBDAA18, block);
    }

    if (!_MergedGlobals_20)
    {
      if (objc_opt_class() == a1)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return _MergedGlobals_20;
        }

        v5 = VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_34())
        {
          return _MergedGlobals_20;
        }

        v14 = 136315650;
        v15 = v5;
        OUTLINED_FUNCTION_12_15();
        OUTLINED_FUNCTION_16_0();
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
          return _MergedGlobals_20;
        }

        v12 = VRTraceErrorLogLevelToCSTR();
        if (!OUTLINED_FUNCTION_40())
        {
          return _MergedGlobals_20;
        }

        v14 = 136316162;
        v15 = v12;
        OUTLINED_FUNCTION_12_15();
        v16 = 2112;
        v17 = v4;
        v18 = 2048;
        v19 = a1;
        OUTLINED_FUNCTION_7_3();
      }

      _os_log_error_impl(v6, v7, v8, v9, v10, v11);
    }
  }

  return _MergedGlobals_20;
}

- (void)initWithConfig:(uint64_t)a1 .cold.1(uint64_t a1)
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

- (void)initWithConfig:(uint64_t)a1 .cold.2(uint64_t a1)
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

- (void)initWithConfig:(uint64_t)a1 .cold.3(uint64_t a1)
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

- (void)initWithConfig:(uint64_t)a1 .cold.4(uint64_t a1)
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

- (void)initWithConfig:(uint64_t)a1 .cold.5(uint64_t a1)
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
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_16_0();
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
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
}

- (void)stop
{
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
    OUTLINED_FUNCTION_24_0();
    OUTLINED_FUNCTION_16_0();
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
      OUTLINED_FUNCTION_14_4();
      OUTLINED_FUNCTION_7_3();
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_23_1();
}

void __55__VCAudioHALPluginDevice_sharedAudioServerDriverPlugin__block_invoke_cold_1(id *a1)
{
  if (objc_opt_class() == *a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_24_0();
    v6 = 34;
LABEL_11:
    _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, v6);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [*a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_14_4();
      v6 = 54;
      goto LABEL_11;
    }
  }
}

void __55__VCAudioHALPluginDevice_sharedAudioServerDriverPlugin__block_invoke_cold_2(id *a1)
{
  if (objc_opt_class() == *a1)
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
    [*a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_7();
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

void __55__VCAudioHALPluginDevice_sharedAudioServerDriverPlugin__block_invoke_cold_3(id *a1)
{
  if (objc_opt_class() == *a1)
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
    [*a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_27_7();
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

void __55__VCAudioHALPluginDevice_sharedAudioServerDriverPlugin__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

@end