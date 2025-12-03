@interface VCVirtualAVCaptureDevice
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeVideoMaxFrameDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeVideoMinFrameDuration;
- (BOOL)lockForConfiguration:(id *)configuration;
- (CGRect)centerStageRectOfInterest;
- (NSArray)formats;
- (VCVirtualAVCaptureDevice)initWithUniqueID:(id)d orientation:(int)orientation;
- (id)activeFormat;
- (id)description;
- (id)deviceCode;
- (id)deviceInputs;
- (int)startVirtualCapture;
- (int)stopVirtualCapture;
- (void)addDeviceInput:(id)input;
- (void)configureResizingConverterWithFormat:(id)format;
- (void)dealloc;
- (void)deregisterBlocksFromService;
- (void)executeBlockUnderConfigurationLock:(id)lock;
- (void)registerBlocksForService;
- (void)removeDeviceInput:(id)input;
- (void)setActiveFormat:(id)format;
- (void)setActiveVideoMaxFrameDuration:(id *)duration;
- (void)setActiveVideoMinFrameDuration:(id *)duration;
- (void)setCenterStageRectOfInterest:(CGRect)interest;
- (void)setOutputAspectRatio:(id)ratio completionHandler:(id)handler;
- (void)startDumpCollector;
- (void)stopDumpCollector;
- (void)verifyLockForConfiguration;
@end

@implementation VCVirtualAVCaptureDevice

- (VCVirtualAVCaptureDevice)initWithUniqueID:(id)d orientation:(int)orientation
{
  v17 = *MEMORY[0x1E69E9840];
  v16.__sig = 0xAAAAAAAAAAAAAAAALL;
  *v16.__opaque = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutexattr_init(&v16);
  pthread_mutexattr_settype(&v16, 2);
  pthread_mutex_init(&self->_deviceMutex, &v16);
  pthread_mutexattr_destroy(&v16);
  self->_lockCount = 0;
  self->_orientation = orientation;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  self->_deviceInputs = v7;
  if (!v7)
  {
    [VCVirtualAVCaptureDevice initWithUniqueID:orientation:];
LABEL_15:

    return 0;
  }

  v8 = [d copy];
  self->_deviceUniqueID = v8;
  if (!v8)
  {
    [VCVirtualAVCaptureDevice initWithUniqueID:orientation:];
    goto LABEL_15;
  }

  v9 = [[VCVirtualAVCaptureHardware alloc] initForDevice:[(VCVirtualAVCaptureDevice *)self deviceCode]];
  self->_captureHardware = v9;
  if (!v9)
  {
    [VCVirtualAVCaptureDevice initWithUniqueID:orientation:];
    goto LABEL_15;
  }

  v10 = VCDefaults_CopyStringValueForKey(@"cannedReplay");
  self->_captureSource = [[VCCannedVideoCaptureSource alloc] initWithVideo:v10 callbackContext:self frameCallback:VCVirtualAVCaptureDevice_OnVideoFrame shouldScaleAndPad:0];

  if (!self->_captureSource)
  {
    [VCVirtualAVCaptureDevice initWithUniqueID:orientation:];
    goto LABEL_15;
  }

  v11 = [(VCVirtualAVCaptureHardware *)self->_captureHardware defaultFormatForDeviceID:self->_deviceUniqueID];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__VCVirtualAVCaptureDevice_initWithUniqueID_orientation___block_invoke;
  v15[3] = &unk_1E85F37F0;
  v15[4] = self;
  v15[5] = v11;
  [(VCVirtualAVCaptureDevice *)self executeBlockUnderConfigurationLock:v15];
  if (!self->_activeFormat)
  {
    [VCVirtualAVCaptureDevice initWithUniqueID:orientation:];
    goto LABEL_15;
  }

  CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
  v13 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCVirtualAVCaptureDevice.xpc.commands", 0, CustomRootQueue);
  self->_xpcCommandQueue = v13;
  if (!v13)
  {
    [VCVirtualAVCaptureDevice initWithUniqueID:orientation:];
    goto LABEL_15;
  }

  [(VCVirtualAVCaptureDevice *)self registerBlocksForService];
  return self;
}

- (void)configureResizingConverterWithFormat:(id)format
{
  v9 = *MEMORY[0x1E69E9840];
  formatDescription = [format formatDescription];
  MediaSubType = CMFormatDescriptionGetMediaSubType(formatDescription);
  Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescription);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__VCVirtualAVCaptureDevice_configureResizingConverterWithFormat___block_invoke;
  v7[3] = &unk_1E85F3908;
  v7[4] = self;
  v7[5] = Dimensions;
  v8 = MediaSubType;
  [(VCVirtualAVCaptureDevice *)self executeBlockUnderConfigurationLock:v7];
}

void __65__VCVirtualAVCaptureDevice_configureResizingConverterWithFormat___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  if (v2 || (*(*(a1 + 32) + 184) = [[VCImageResizingConverter alloc] initWithOutputWidth:*(a1 + 40) outputHeight:*(a1 + 44) formatType:*(a1 + 48)], (v2 = *(*(a1 + 32) + 184)) != 0))
  {
    if (([v2 ensureBufferPoolSupportsOutputWidth:*(a1 + 40) outputHeight:*(a1 + 44)] & 1) == 0)
    {
      __65__VCVirtualAVCaptureDevice_configureResizingConverterWithFormat___block_invoke_cold_1();
    }
  }

  else
  {
    __65__VCVirtualAVCaptureDevice_configureResizingConverterWithFormat___block_invoke_cold_2();
  }
}

- (id)deviceCode
{
  v2 = VCDefaults_CopyStringValueForKey(@"virtualHardware");

  return v2;
}

- (void)startDumpCollector
{
  if (!self->_dumpCollector)
  {
    self->_dumpCollector = objc_alloc_init(VCVideoHardwareDumpCollector);
  }
}

- (void)stopDumpCollector
{
  [(VCVideoHardwareDumpCollector *)self->_dumpCollector invalidate];

  self->_dumpCollector = 0;
}

- (int)startVirtualCapture
{
  v14 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCVirtualAVCaptureDevice-startVirtualCapture");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCVirtualAVCaptureDevice startVirtualCapture]";
      v10 = 1024;
      v11 = 158;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCVirtualAVCaptureDevice-startVirtualCapture [%p]", &v6, 0x26u);
    }
  }

  [(VCVirtualAVCaptureDevice *)self startDumpCollector];
  return [(VCCannedVideoCaptureSource *)self->_captureSource start];
}

- (int)stopVirtualCapture
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCVirtualAVCaptureDevice-stopVirtualCapture");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCVirtualAVCaptureDevice stopVirtualCapture]";
      v11 = 1024;
      v12 = 164;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCVirtualAVCaptureDevice-stopVirtualCapture [%p]", &v7, 0x26u);
    }
  }

  stop = [(VCCannedVideoCaptureSource *)self->_captureSource stop];
  [(VCVirtualAVCaptureDevice *)self stopDumpCollector];
  return stop;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ VCVirtualAVCaptureDevice-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCVirtualAVCaptureDevice dealloc]";
      v11 = 1024;
      v12 = 171;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ VCVirtualAVCaptureDevice-dealloc [%p]", buf, 0x26u);
    }
  }

  [(VCVirtualAVCaptureDevice *)self stopVirtualCapture];
  [(VCVirtualAVCaptureDevice *)self deregisterBlocksFromService];

  pthread_mutex_destroy(&self->_deviceMutex);
  xpcCommandQueue = self->_xpcCommandQueue;
  if (xpcCommandQueue)
  {
    dispatch_release(xpcCommandQueue);
    self->_xpcCommandQueue = 0;
  }

  v6.receiver = self;
  v6.super_class = VCVirtualAVCaptureDevice;
  [(VCVirtualAVCaptureDevice *)&v6 dealloc];
}

- (void)registerBlocksForService
{
  v5 = *MEMORY[0x1E69E9840];
  if (VRTraceIsInternalOSInstalled())
  {
    v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
    [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer AVConferenceXPCServerSingleton];
  }
}

uint64_t __52__VCVirtualAVCaptureDevice_registerBlocksForService__block_invoke(uint64_t a1, void *a2)
{
  v8[6] = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [*(a1 + 32) strong];
    v5 = -[VideoAttributes initWithEncodedDictionary:]([VideoAttributes alloc], "initWithEncodedDictionary:", [a2 objectForKeyedSubscript:@"localVideoAttributes"]);
    if (v5)
    {
      v6 = v5;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __52__VCVirtualAVCaptureDevice_registerBlocksForService__block_invoke_22;
      v8[3] = &unk_1E85F37F0;
      v8[4] = v4;
      v8[5] = v5;
      [v4 executeBlockUnderConfigurationLock:v8];
    }

    else
    {
      __52__VCVirtualAVCaptureDevice_registerBlocksForService__block_invoke_cold_1();
    }
  }

  return 0;
}

uint64_t __52__VCVirtualAVCaptureDevice_registerBlocksForService__block_invoke_22(uint64_t a1)
{
  result = [*(a1 + 40) orientation];
  *(*(a1 + 32) + 180) = result;
  return result;
}

- (void)deregisterBlocksFromService
{
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v2 deregisterFromService:"previewSetVirtualCaptureAttributes"];
}

- (void)executeBlockUnderConfigurationLock:(id)lock
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (![(VCVirtualAVCaptureDevice *)self lockForConfiguration:v8])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = [v8[0] description];
    objc_exception_throw([v5 exceptionWithName:v6 reason:v7 userInfo:{objc_msgSend(v8[0], "userInfo")}]);
  }

  (*(lock + 2))(lock);
  [(VCVirtualAVCaptureDevice *)self unlockForConfiguration];
}

- (void)setActiveFormat:(id)format
{
  [(VCVirtualAVCaptureDevice *)self verifyLockForConfiguration];

  formatCopy = format;
  self->_activeFormat = formatCopy;
  [(VCVirtualAVCaptureDevice *)self configureResizingConverterWithFormat:formatCopy];
  Dimensions = CMVideoFormatDescriptionGetDimensions([(AVCaptureDeviceFormat *)self->_activeFormat formatDescription]);
  captureSource = self->_captureSource;

  [(VCCannedVideoCaptureSource *)captureSource setWidth:Dimensions height:HIDWORD(Dimensions)];
}

- (id)activeFormat
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__40;
  v9 = __Block_byref_object_dispose__40;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__VCVirtualAVCaptureDevice_activeFormat__block_invoke;
  v4[3] = &unk_1E85F40B8;
  v4[4] = self;
  v4[5] = &v5;
  [(VCVirtualAVCaptureDevice *)self executeBlockUnderConfigurationLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id __40__VCVirtualAVCaptureDevice_activeFormat__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 112);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setActiveVideoMinFrameDuration:(id *)duration
{
  [(VCVirtualAVCaptureDevice *)self verifyLockForConfiguration];
  var3 = duration->var3;
  *&self->_activeVideoMinFrameDuration.value = *&duration->var0;
  self->_activeVideoMinFrameDuration.epoch = var3;
  v6 = self->_activeVideoMinFrameDuration.value / self->_activeVideoMinFrameDuration.timescale;
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = llround(1.0 / v6);
  }

  captureSource = self->_captureSource;

  [(VCCannedVideoCaptureSource *)captureSource setFrameRate:v7];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeVideoMinFrameDuration
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3810000000;
  v9 = &unk_1DBF04739;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__VCVirtualAVCaptureDevice_activeVideoMinFrameDuration__block_invoke;
  v5[3] = &unk_1E85F40B8;
  v5[4] = self;
  v5[5] = &v6;
  [(VCVirtualAVCaptureDevice *)self executeBlockUnderConfigurationLock:v5];
  *retstr = *(v7 + 4);
  _Block_object_dispose(&v6, 8);
  return result;
}

__n128 __55__VCVirtualAVCaptureDevice_activeVideoMinFrameDuration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 152);
  v3 = *(*(a1 + 32) + 168);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (void)setActiveVideoMaxFrameDuration:(id *)duration
{
  [(VCVirtualAVCaptureDevice *)self verifyLockForConfiguration];
  var3 = duration->var3;
  *&self->_activeVideoMaxFrameDuration.value = *&duration->var0;
  self->_activeVideoMaxFrameDuration.epoch = var3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)activeVideoMaxFrameDuration
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3810000000;
  v9 = &unk_1DBF04739;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__VCVirtualAVCaptureDevice_activeVideoMaxFrameDuration__block_invoke;
  v5[3] = &unk_1E85F40B8;
  v5[4] = self;
  v5[5] = &v6;
  [(VCVirtualAVCaptureDevice *)self executeBlockUnderConfigurationLock:v5];
  *retstr = *(v7 + 4);
  _Block_object_dispose(&v6, 8);
  return result;
}

__n128 __55__VCVirtualAVCaptureDevice_activeVideoMaxFrameDuration__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  v2 = (*(a1 + 32) + 128);
  v3 = *(*(a1 + 32) + 144);
  result = *v2;
  v1[2] = *v2;
  v1[3].n128_u64[0] = v3;
  return result;
}

- (void)addDeviceInput:(id)input
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__VCVirtualAVCaptureDevice_addDeviceInput___block_invoke;
  v3[3] = &unk_1E85F37F0;
  v3[4] = self;
  v3[5] = input;
  [(VCVirtualAVCaptureDevice *)self executeBlockUnderConfigurationLock:v3];
}

void __43__VCVirtualAVCaptureDevice_addDeviceInput___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = (a1 + 40);
  if ([*(*(a1 + 32) + 120) containsObject:*(a1 + 40)])
  {
    __43__VCVirtualAVCaptureDevice_addDeviceInput___block_invoke_cold_1();
  }

  else
  {
    if (![*(*v1 + 15) count])
    {
      [*v1 startDumpCollector];
    }

    v3 = *(*v1 + 15);
    v4 = *v2;

    [v3 addObject:v4];
  }
}

- (void)removeDeviceInput:(id)input
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__VCVirtualAVCaptureDevice_removeDeviceInput___block_invoke;
  v3[3] = &unk_1E85F37F0;
  v3[4] = self;
  v3[5] = input;
  [(VCVirtualAVCaptureDevice *)self executeBlockUnderConfigurationLock:v3];
}

void __46__VCVirtualAVCaptureDevice_removeDeviceInput___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = (a1 + 40);
  if ([*(*(a1 + 32) + 120) containsObject:*(a1 + 40)])
  {
    [*(*v1 + 120) removeObject:*v2];
    if (![*(*v1 + 120) count])
    {
      v3 = *v1;

      [v3 stopDumpCollector];
    }
  }

  else
  {
    __46__VCVirtualAVCaptureDevice_removeDeviceInput___block_invoke_cold_1();
  }
}

- (id)deviceInputs
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__40;
  v9 = __Block_byref_object_dispose__40;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__VCVirtualAVCaptureDevice_deviceInputs__block_invoke;
  v4[3] = &unk_1E85F40B8;
  v4[4] = self;
  v4[5] = &v5;
  [(VCVirtualAVCaptureDevice *)self executeBlockUnderConfigurationLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __40__VCVirtualAVCaptureDevice_deviceInputs__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 120) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSArray)formats
{
  v2 = [(NSDictionary *)[(VCVirtualAVCaptureHardware *)self->_captureHardware devices] objectForKeyedSubscript:self->_deviceUniqueID];

  return v2;
}

- (void)verifyLockForConfiguration
{
  v3 = pthread_mutex_trylock(&self->_deviceMutex);
  v4 = v3;
  if (v3)
  {
    if (v3 == 16)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Another thread is holding the device lock. result=%d", 16}];
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Failed to lock the device. result=%d", v4}];
  }

  if (!self->_lockCount)
  {
    pthread_mutex_unlock(&self->_deviceMutex);
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"Attempting to set virtual device configuration without first locking the device. result=%d", v4}];
  }

  pthread_mutex_unlock(&self->_deviceMutex);
}

- (BOOL)lockForConfiguration:(id *)configuration
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = pthread_mutex_lock(&self->_deviceMutex);
  if (v5)
  {
    if (configuration)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pthread mutex lock failed with result=%d", v5];
      v8 = *MEMORY[0x1E696A578];
      v9[0] = v6;
      *configuration = [MEMORY[0x1E696ABC0] errorWithDomain:@"VCVirtualAVCaptureDevice" code:-1 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v9, &v8, 1)}];
    }
  }

  else
  {
    ++self->_lockCount;
  }

  return v5 == 0;
}

- (id)description
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (CGRect)centerStageRectOfInterest
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x4010000000;
  v15 = &unk_1DBF04739;
  v2 = *(MEMORY[0x1E695F050] + 16);
  v16 = *MEMORY[0x1E695F050];
  v17 = v2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__VCVirtualAVCaptureDevice_centerStageRectOfInterest__block_invoke;
  v11[3] = &unk_1E85F40B8;
  v11[4] = self;
  v11[5] = &v12;
  [(VCVirtualAVCaptureDevice *)self executeBlockUnderConfigurationLock:v11];
  v3 = v13[4];
  v4 = v13[5];
  v5 = v13[6];
  v6 = v13[7];
  _Block_object_dispose(&v12, 8);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

__n128 __53__VCVirtualAVCaptureDevice_centerStageRectOfInterest__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  result = *(*(a1 + 32) + 232);
  *(v1 + 32) = *(*(a1 + 32) + 216);
  *(v1 + 48) = result;
  return result;
}

- (void)setCenterStageRectOfInterest:(CGRect)interest
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  [(VCVirtualAVCaptureDevice *)self verifyLockForConfiguration];
  self->_centerStageRectOfInterest.origin.x = x;
  self->_centerStageRectOfInterest.origin.y = y;
  self->_centerStageRectOfInterest.size.width = width;
  self->_centerStageRectOfInterest.size.height = height;
}

- (void)setOutputAspectRatio:(id)ratio completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v6;
      v11 = 2080;
      v12 = "[VCVirtualAVCaptureDevice setOutputAspectRatio:completionHandler:]";
      v13 = 1024;
      v14 = 430;
      v15 = 2112;
      ratioCopy = ratio;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCVirtualAVCaptureDevice setOutputAspectRatio: aspectRatio=[%@] (mocked)", buf, 0x26u);
    }
  }

  if (handler)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__VCVirtualAVCaptureDevice_setOutputAspectRatio_completionHandler___block_invoke;
    block[3] = &unk_1E85F7268;
    block[4] = handler;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __67__VCVirtualAVCaptureDevice_setOutputAspectRatio_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7 = *MEMORY[0x1E6960CC0];
  v8 = *(MEMORY[0x1E6960CC0] + 16);
  return v5(v4, &v7, 0, a4);
}

- (void)initWithUniqueID:orientation:.cold.1()
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

- (void)initWithUniqueID:orientation:.cold.2()
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

- (void)initWithUniqueID:orientation:.cold.3()
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

- (void)initWithUniqueID:orientation:.cold.4()
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

- (void)initWithUniqueID:orientation:.cold.5()
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

- (void)initWithUniqueID:orientation:.cold.6()
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

void __65__VCVirtualAVCaptureDevice_configureResizingConverterWithFormat___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_45();
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
    }
  }
}

void __65__VCVirtualAVCaptureDevice_configureResizingConverterWithFormat___block_invoke_cold_2()
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

void __52__VCVirtualAVCaptureDevice_registerBlocksForService__block_invoke_cold_1()
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

void __43__VCVirtualAVCaptureDevice_addDeviceInput___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_3_45();
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_4_39();
      OUTLINED_FUNCTION_7_31(&dword_1DB56E000, v0, v1, " [%s] %s:%d Device input[%@] already added to device[%@]", v2, v3, v4, v5, v6);
    }
  }
}

void __46__VCVirtualAVCaptureDevice_removeDeviceInput___block_invoke_cold_1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_3_45();
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_4_39();
      OUTLINED_FUNCTION_7_31(&dword_1DB56E000, v0, v1, " [%s] %s:%d Device input[%@] does not exist for device[%@]", v2, v3, v4, v5, v6);
    }
  }
}

@end