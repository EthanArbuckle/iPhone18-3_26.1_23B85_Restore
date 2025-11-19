@interface MIOWriterInterface
+ (BOOL)getSWToWExtrinsics:(id *)a3;
- (BOOL)preProcessPixelBuffer:(__CVBuffer *)a3 streamID:(id)a4;
- (BOOL)processCVADepthIR:(id)a3;
- (BOOL)processPixelBuffer:(__CVBuffer *)a3 withTimeStamp:(id *)a4 beforeAppend:(id)a5 streamID:(id)a6;
- (BOOL)processPixelBuffer:(__CVBuffer *)a3 withTimeStamp:(id *)a4 intrinsics:(id *)a5 exposureTime:(double)a6 streamID:(id)a7;
- (BOOL)receivedAllFramesForStreams:(id)a3;
- (BOOL)setTrackMetadata:(id)a3 forMetadataStream:(id)a4;
- (MIOWriterInterface)initWithFileURL:(id)a3 expectedFrameRate:(double)a4 fileSummary:(id)a5;
- (MIOWriterInterface)initWithFileURL:(id)a3 expectedFrameRate:(double)a4 fileSummary:(id)a5 callbackQueue:(id)a6;
- (MIOWriterInterfaceDelegate)interface_delegate;
- (__CVBuffer)getFirstBufferForStream:(id)a3 withTimestamp:(id *)a4;
- (id)addCVADepthIRTrackWithDimensions:(id)a3;
- (id)addDefaultSummary;
- (id)addVideoTrack:(opaqueCMFormatDescription *)a3 streamID:(id)a4 encoding:(id)a5;
- (id)arrayFrom3x3Matrix:(id *)a3;
- (id)createFileMetadata;
- (id)getSuggestedEncodingOptionsForFormat:(opaqueCMFormatDescription *)a3 streamID:(id)a4;
- (id)registerALS:(int64_t *)a3;
- (id)registerAccelerometer:(int64_t *)a3;
- (id)registerBLE:(int64_t *)a3;
- (id)registerCVAFeatureBuffer;
- (id)registerCompass:(int64_t *)a3;
- (id)registerDeviceMotion:(int64_t *)a3;
- (id)registerGyro:(int64_t *)a3;
- (id)registerLocation:(int64_t *)a3;
- (id)registerMetadataID:(id)a3;
- (id)registerMetadataID:(id)a3 maxBufferSize:(unint64_t)a4;
- (id)registerMotion:(int64_t *)a3;
- (id)registerSpuIMU:(int64_t *)a3 version:(int64_t)a4;
- (id)registerUWB:(int64_t *)a3;
- (id)registerWiFi:(int64_t *)a3;
- (void)addFirstBufferForStream:(id)a3 buffer:(__CVBuffer *)a4 withTimestamp:(id *)a5;
- (void)addFrameMetadata:(id)a3 streamID:(id)a4;
- (void)addFrameMetadata:(id)a3 value:(id)a4 streamID:(id)a5;
- (void)addJasperExtrinsics:(id)a3;
- (void)addMovieMetadataData:(id)a3 rawValue:(id)a4;
- (void)addMovieMetadataDictionary:(id)a3 value:(id)a4;
- (void)addMovieMetadataItem:(id)a3;
- (void)addSWToWExtrinsics:(id)a3;
- (void)appendAllMetadataWithTimeStamp:(id *)a3;
- (void)appendMetadata:(id)a3 metadataID:(id)a4 timestamp:(double)a5 enforceMonotonicity:(BOOL)a6;
- (void)clearAllMetadataBuffers;
- (void)clearFirstBufferForStream:(id)a3;
- (void)finishWriting;
- (void)intelligentlyAppendBuffersForStreams:(id)a3;
- (void)prepareWriter;
- (void)processALSData:(id)a3 location:(int64_t *)a4;
- (void)processAccelerometerData:(id)a3 andAdditionalData:(id)a4 location:(int64_t *)a5;
- (void)processBLEData:(id)a3 location:(int64_t *)a4;
- (void)processBarometerData:(id)a3;
- (void)processCMData:(id)a3;
- (void)processCVACameraCalibrationData:(id)a3;
- (void)processCVADepthTOF:(id)a3;
- (void)processCVAFeatureBuffer:(__CVBuffer *)a3 timestamp:(double)a4 syncTimestamp:(unint64_t)a5 frameId:(unint64_t)a6 streamName:(id)a7;
- (void)processCVAFeatureBuffer:(id)a3;
- (void)processCVAPRDevice:(id)a3;
- (void)processCVATimedValue:(id)a3;
- (void)processCVAUserEvent:(id)a3;
- (void)processClass:(id)a3 andAdditionalData:(id)a4 metadataID:(id)a5;
- (void)processClass:(id)a3 andAdditionalData:(id)a4 metadataID:(id)a5 timestamp:(double)a6;
- (void)processCompassData:(id)a3 location:(int64_t *)a4;
- (void)processCoreLocationData:(id)a3 timestamp:(double)a4 andAdditionalData:(id)a5 location:(int64_t *)a6;
- (void)processDeviceMotionData:(id)a3 andAdditionalData:(id)a4 location:(int64_t *)a5;
- (void)processDeviceMotionData:(id)a3 location:(int64_t *)a4;
- (void)processFastPathIMUData:(id)a3 location:(int64_t *)a4;
- (void)processFastPathIMUData:(id)a3 location:(int64_t *)a4 metadataID:(id)a5;
- (void)processGyroscopeData:(id)a3 andAdditionalData:(id)a4 location:(int64_t *)a5;
- (void)processMotionData:(id)a3 location:(int64_t *)a4;
- (void)processNSCoderObject:(id)a3 metadataID:(id)a4;
- (void)processNSCoderObject:(id)a3 metadataID:(id)a4 timestamp:(double)a5;
- (void)processSpuIMUData:(id)a3 location:(int64_t *)a4;
- (void)processUWBData:(id)a3 location:(int64_t *)a4;
- (void)processWiFiData:(id)a3 location:(int64_t *)a4;
- (void)registerCVADepthIR;
- (void)registerStreamID:(id)a3 withConfigObject:(id)a4;
- (void)setMetadataAttachmentTo:(__CVBuffer *)a3 streamID:(id)a4;
- (void)writerDidFailWithError:(id)a3;
- (void)writerEncounteredAnError:(id)a3;
@end

@implementation MIOWriterInterface

- (MIOWriterInterface)initWithFileURL:(id)a3 expectedFrameRate:(double)a4 fileSummary:(id)a5 callbackQueue:(id)a6
{
  v68 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v13 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf.sysname = 0;
      _os_log_impl(&dword_24016D000, v13, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] initWithFileURL", &buf, 2u);
    }
  }

  v14 = [v10 path];
  v65.receiver = self;
  v65.super_class = MIOWriterInterface;
  v66 = 0;
  v15 = [(MIOWriter *)&v65 initWithFilePath:v14 error:&v66];
  v16 = v66;

  if (v15)
  {
    v15[248] = 0;
    v17 = objc_opt_new();
    v18 = *(v15 + 29);
    *(v15 + 29) = v17;

    v19 = *(v15 + 30);
    *(v15 + 30) = 0;

    v20 = objc_opt_new();
    v21 = *(v15 + 39);
    *(v15 + 39) = v20;

    v22 = objc_opt_new();
    v23 = *(v15 + 33);
    *(v15 + 33) = v22;

    v24 = objc_opt_new();
    v25 = *(v15 + 34);
    *(v15 + 34) = v24;

    v26 = objc_opt_new();
    v27 = *(v15 + 35);
    *(v15 + 35) = v26;

    v28 = objc_opt_new();
    v29 = *(v15 + 36);
    *(v15 + 36) = v28;

    v30 = objc_opt_new();
    v31 = *(v15 + 68);
    *(v15 + 68) = v30;

    v32 = objc_opt_new();
    v33 = *(v15 + 32);
    *(v15 + 32) = v32;

    v34 = objc_opt_new();
    v35 = *(v15 + 38);
    *(v15 + 38) = v34;

    v36 = objc_opt_new();
    v37 = *(v15 + 37);
    *(v15 + 37) = v36;

    v38 = MEMORY[0x277CC0898];
    *(v15 + 328) = *MEMORY[0x277CC0898];
    *(v15 + 43) = *(v38 + 16);
    *(v15 + 70) = 0;
    objc_storeStrong(v15 + 55, @"com.apple.reality.kind.data.imu800");
    objc_storeStrong(v15 + 56, @"com.apple.reality.kind.data.accelerometer");
    objc_storeStrong(v15 + 57, @"com.apple.reality.kind.data.gyroscope");
    objc_storeStrong(v15 + 58, @"com.apple.reality.kind.data.motion");
    objc_storeStrong(v15 + 59, @"com.apple.reality.kind.data.devicemotion");
    objc_storeStrong(v15 + 60, @"Location");
    objc_storeStrong(v15 + 61, @"com.apple.reality.kind.data.als");
    objc_storeStrong(v15 + 62, @"com.apple.reality.kind.data.wifi");
    objc_storeStrong(v15 + 63, @"com.apple.reality.kind.data.uwb");
    objc_storeStrong(v15 + 64, @"com.apple.reality.kind.data.ble");
    objc_storeStrong(v15 + 65, @"com.apple.reality.kind.data.barometer");
    objc_storeStrong(v15 + 66, @"com.apple.reality.kind.data.compass");
    objc_storeStrong(v15 + 67, @"com.apple.reality.kind.data.zcam_tof_pc");
    memset(&buf, 0, 512);
    uname(&buf);
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf.machine];
    v40 = *(v15 + 50);
    *(v15 + 50) = v39;

    v41 = [MEMORY[0x277CCA8D8] mainBundle];
    v42 = [v41 infoDictionary];
    v43 = [v42 objectForKey:@"CFBundleVersion"];
    v44 = *(v15 + 48);
    *(v15 + 48) = v43;

    v45 = [MEMORY[0x277CCA8D8] mainBundle];
    v46 = [v45 bundleIdentifier];
    v47 = *(v15 + 47);
    *(v15 + 47) = v46;

    v63 = 0uLL;
    v64 = 0;
    v48 = [MEMORY[0x277CCAC38] processInfo];
    v49 = v48;
    if (v48)
    {
      [v48 operatingSystemVersion];
    }

    else
    {
      v63 = 0uLL;
      v64 = 0;
    }

    v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu.%lu.%lu", v63, v64];
    v51 = *(v15 + 53);
    *(v15 + 53) = v50;

    v52 = MEMORY[0x277CBEAC0];
    v53 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/CoreServices/SystemVersion.plist"];
    v54 = [v52 dictionaryWithContentsOfURL:v53 error:0];

    if (v54)
    {
      v55 = [v54 objectForKeyedSubscript:@"ProductBuildVersion"];
      v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", *(v15 + 53), v55];
      v57 = *(v15 + 53);
      *(v15 + 53) = v56;
    }

    objc_storeStrong(v15 + 40, a5);
    [v15 setWarningHandler:&unk_28521AB68];
    objc_initWeak(&location, v15);
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = sub_240182B20;
    v60[3] = &unk_278C9B130;
    objc_copyWeak(&v61, &location);
    [v15 setFailHandler:v60];
    [v15 setRealTime:1];
    [v15 setDefaultFrameRate:a4];
    [v15 setBufferCacheMode:256];
    objc_destroyWeak(&v61);
    objc_destroyWeak(&location);
  }

  v58 = *MEMORY[0x277D85DE8];
  return v15;
}

- (MIOWriterInterface)initWithFileURL:(id)a3 expectedFrameRate:(double)a4 fileSummary:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = dispatch_queue_create("com.apple.applecv3dmovkit.miowriterinterface.recordercallback", 0);
  v11 = [(MIOWriterInterface *)self initWithFileURL:v9 expectedFrameRate:v8 fileSummary:v10 callbackQueue:a4];

  return v11;
}

- (BOOL)setTrackMetadata:(id)a3 forMetadataStream:(id)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_streamInputs objectForKeyedSubscript:a4];
  v8 = v7;
  if (v7)
  {
    [v7 setCustomMetadata:v6];
  }

  return v8 != 0;
}

- (id)registerSpuIMU:(int64_t *)a3 version:(int64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = [CVAMetadataWrapperTracks imuTrackName:a3 prefix:self->_spuIMUTrackName];
  v7 = [(MIOWriterInterface *)self registerMetadataID:v6];
  v12 = @"com.apple.AppleCV3DMOVKit.fastPathIMUVersion";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [(MIOWriterInterface *)self setTrackMetadata:v9 forMetadataStream:v6];

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)registerAccelerometer:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks accelerometerTrackName:a3 prefix:self->_accelTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerGyro:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks gyroTrackName:a3 prefix:self->_gyroTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerMotion:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks motionTrackName:a3 prefix:self->_motionTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerDeviceMotion:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks deviceMotionTrackName:a3 prefix:self->_deviceMotionTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerLocation:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks locationTrackName:a3 prefix:self->_locationTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerALS:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks alsTrackName:a3 prefix:self->_alsTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerWiFi:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks wifiTrackName:a3 prefix:self->_wifiTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerUWB:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks uwbTrackName:a3 prefix:self->_uwbTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerBLE:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks bleTrackName:a3 prefix:self->_bleTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerCompass:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks compassTrackName:a3 prefix:self->_compassTrackName];
  v5 = [(MIOWriterInterface *)self registerMetadataID:v4];

  return v5;
}

- (id)registerCVAFeatureBuffer
{
  v3 = [CVAFeatureBuffer streamName:0];
  v4 = [(MIOWriterInterface *)self registerMetadataID:v3];

  return v4;
}

- (void)registerCVADepthIR
{
  v3 = objc_opt_new();
  [v3 setLossless:1];
  [(MIOWriterInterface *)self registerStreamID:@"com.apple.reality.kind.data.pcam_avdepth" withConfigObject:v3];
}

- (id)registerMetadataID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_streamInputs objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Metadata track already registered: %@", v4];
    v8 = [v6 mioWriterInterfaceErrorWithMessage:v7 code:2];
    lastError = self->_lastError;
    self->_lastError = v8;

    v10 = 0;
  }

  else
  {
    v11 = objc_opt_new();
    [(NSMutableDictionary *)self->_metadataAttachmentArrays setObject:v11 forKeyedSubscript:v4];

    v12 = [objc_alloc(MEMORY[0x277D256A8]) initWithStreamId:v4];
    v23 = 0;
    [(MIOWriter *)self addInput:v12 error:&v23];
    v13 = v23;
    v14 = v13;
    if (v13)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = MEMORY[0x277CCACA8];
      v17 = [v13 description];
      v18 = [v16 stringWithFormat:@"Cannot add metadata track: %@ %@", v4, v17];
      v19 = [v15 mioWriterInterfaceErrorWithMessage:v18 code:2];
      v20 = self->_lastError;
      self->_lastError = v19;

      v10 = 0;
    }

    else
    {
      [(NSMutableDictionary *)self->_streamInputs setObject:v12 forKeyedSubscript:v4];
      v21 = self->_lastError;
      self->_lastError = 0;

      v10 = v12;
    }
  }

  return v10;
}

- (id)registerMetadataID:(id)a3 maxBufferSize:(unint64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)self->_metadataMaxBufferSize setObject:v8 forKeyedSubscript:v7];

  v9 = [(MIOWriterInterface *)self registerMetadataID:v7];

  return v9;
}

- (void)addMovieMetadataDictionary:(id)a3 value:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  lastError = self->_lastError;
  self->_lastError = 0;

  if ([v6 hasPrefix:@"mdta/"])
  {
    v9 = objc_opt_new();
    [v9 setIdentifier:v6];
    [v9 setDataType:*MEMORY[0x277CC0598]];
    [v9 setValue:v7];
    [(NSMutableArray *)self->_movMetadataArray addObject:v9];
    if (+[AppleCV3DMOVKitLog debugEnabled])
    {
      v10 = +[AppleCV3DMOVKitLog defaultLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [v9 identifier];
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_24016D000, v10, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Added metadata item with NSDictionary %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid identifer %@", v6];
    v14 = [v12 mioWriterInterfaceErrorWithMessage:v13 code:14];
    v15 = self->_lastError;
    self->_lastError = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addMovieMetadataData:(id)a3 rawValue:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  lastError = self->_lastError;
  self->_lastError = 0;

  if ([v6 hasPrefix:@"mdta/"])
  {
    v9 = objc_opt_new();
    [v9 setIdentifier:v6];
    [v9 setDataType:*MEMORY[0x277CC05B0]];
    [v9 setValue:v7];
    [(NSMutableArray *)self->_movMetadataArray addObject:v9];
    if (+[AppleCV3DMOVKitLog debugEnabled])
    {
      v10 = +[AppleCV3DMOVKitLog defaultLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = [v9 identifier];
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_24016D000, v10, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Added metadata item with NSData %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid identifer %@", v6];
    v14 = [v12 mioWriterInterfaceErrorWithMessage:v13 code:14];
    v15 = self->_lastError;
    self->_lastError = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addMovieMetadataItem:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMutableArray *)self->_movMetadataArray addObject:v4];
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v5 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v4 identifier];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_24016D000, v5, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Added metadata item %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)addDefaultSummary
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_fileSummary];
  v4 = v3;
  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v3 setObject:deviceName forKeyedSubscript:@"deviceName"];
  }

  deviceString = self->_deviceString;
  if (deviceString)
  {
    [v4 setObject:deviceString forKeyedSubscript:@"hw.model"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v4 setObject:bundleID forKeyedSubscript:@"CFBundleIdentifier"];
  }

  version = self->_version;
  if (version)
  {
    [v4 setObject:version forKeyedSubscript:@"version"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v4 setObject:serialNumber forKeyedSubscript:@"SerialNumber"];
  }

  osBuildVersion = self->_osBuildVersion;
  if (osBuildVersion)
  {
    [v4 setObject:osBuildVersion forKeyedSubscript:@"OSBuildVersion"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v4 setObject:productType forKeyedSubscript:@"ProductType"];
  }

  productConfig = self->_productConfig;
  if (productConfig)
  {
    [v4 setObject:productConfig forKeyedSubscript:@"ProductConfig"];
  }

  productVersion = self->_productVersion;
  if (productVersion)
  {
    [v4 setObject:productVersion forKeyedSubscript:@"ProductVersion"];
  }

  v14 = +[CVAMetadataWrapper version];
  [v4 setObject:v14 forKeyedSubscript:@"movKitVersion"];

  [(MIOWriterInterface *)self addSWToWExtrinsics:v4];
  [(MIOWriterInterface *)self addJasperExtrinsics:v4];
  [v4 setObject:&unk_285225278 forKeyedSubscript:@"iOS"];

  return v4;
}

+ (BOOL)getSWToWExtrinsics:(id *)a3
{
  v4 = *MEMORY[0x277CE5EA8];
  v5 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:*MEMORY[0x277CE5870] mediaType:*MEMORY[0x277CE5EA8] position:1];
  if (v5)
  {
    v6 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:*MEMORY[0x277CE5878] mediaType:v4 position:1];
    v7 = [MEMORY[0x277CE5AC8] extrinsicMatrixFromDevice:v5 toDevice:v6];
    v8 = v7 != 0;
    if (v7)
    {
      v9 = v7;
      [v7 getBytes:a3 length:64];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addSWToWExtrinsics:(id)a3
{
  v34[12] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  if ([MIOWriterInterface getSWToWExtrinsics:&v30])
  {
    LODWORD(v4) = v30;
    v29 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    v34[0] = v29;
    LODWORD(v5) = v31;
    v28 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    v34[1] = v28;
    LODWORD(v6) = v32;
    v27 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
    v34[2] = v27;
    LODWORD(v7) = v33;
    v26 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    v34[3] = v26;
    LODWORD(v8) = DWORD1(v30);
    v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    v34[4] = v9;
    LODWORD(v10) = DWORD1(v31);
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    v34[5] = v11;
    LODWORD(v12) = DWORD1(v32);
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    v34[6] = v13;
    LODWORD(v14) = DWORD1(v33);
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
    v34[7] = v15;
    LODWORD(v16) = DWORD2(v30);
    v17 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
    v34[8] = v17;
    LODWORD(v18) = DWORD2(v31);
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    v34[9] = v19;
    LODWORD(v20) = DWORD2(v32);
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    v34[10] = v21;
    LODWORD(v22) = DWORD2(v33);
    v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
    v34[11] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:12];

    [v3 setObject:v24 forKeyedSubscript:@"extrinsicsSWToW"];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)addJasperExtrinsics:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v37 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:*MEMORY[0x277CE5858] mediaType:0 position:1];
  if (v37)
  {
    v32 = v3;
    v4 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v33 = *MEMORY[0x277CE5870];
    v5 = *MEMORY[0x277CE5870];
    v34 = *MEMORY[0x277CE5878];
    v57[0] = *MEMORY[0x277CE5878];
    v57[1] = v5;
    obj = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
    v40 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v40)
    {
      v38 = *MEMORY[0x277CE5EA8];
      v39 = *v53;
      v36 = v4;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v53 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v52 + 1) + 8 * i);
          v28 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:v29 mediaType:v38 position:1];
          if (v28)
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v47 = v28;
            v30 = [MEMORY[0x277CE5AC8] extrinsicMatrixFromDevice:v28 toDevice:v37];
            v46 = v30;
            if (v30)
            {
              [v30 getBytes:&v48 length:64];
            }

            else if (v29 == v34)
            {
              DWORD2(v48) = 987939115;
              *&v48 = 0x3F7FFC11BC281DC1;
              DWORD2(v49) = 965922039;
              *&v49 = 0xBC28198FBF7FFC87;
              DWORD2(v50) = 1065353048;
              *&v50 = 0xBAE1719F399BB6AALL;
              DWORD2(v51) = 1039292160;
              *&v51 = 0x406CDA9041468A09;
              if (v29 == v33)
              {
                goto LABEL_17;
              }
            }

            else if (v29 == v33)
            {
LABEL_17:
              DWORD2(v48) = -1150855277;
              *&v48 = 0x3F7FFE3BBBCEC41ELL;
              DWORD2(v49) = 991362741;
              *&v49 = 0xBBCEC41EBF7FFE09;
              DWORD2(v50) = 1065353065;
              *&v50 = 0x3B6842743B157CD4;
              DWORD2(v51) = 1035551109;
              *&v51 = 0xC1044D6041478794;
            }

            v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%ld", v29, 1];
            LODWORD(v7) = v48;
            v44 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
            v56[0] = v44;
            LODWORD(v8) = v49;
            v43 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
            v56[1] = v43;
            LODWORD(v9) = v50;
            v42 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
            v56[2] = v42;
            LODWORD(v10) = v51;
            v41 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
            v56[3] = v41;
            LODWORD(v11) = DWORD1(v48);
            v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
            v56[4] = v12;
            LODWORD(v13) = DWORD1(v49);
            v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
            v56[5] = v14;
            LODWORD(v15) = DWORD1(v50);
            v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
            v56[6] = v16;
            LODWORD(v17) = DWORD1(v51);
            v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
            v56[7] = v18;
            LODWORD(v19) = DWORD2(v48);
            v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
            v56[8] = v20;
            LODWORD(v21) = DWORD2(v49);
            v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
            v56[9] = v22;
            LODWORD(v23) = DWORD2(v50);
            v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
            v56[10] = v24;
            LODWORD(v25) = DWORD2(v51);
            v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
            v56[11] = v26;
            v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:12];

            v4 = v36;
            [v36 setObject:v27 forKeyedSubscript:v45];

            v28 = v47;
          }
        }

        v40 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v40);
    }

    v3 = v32;
    if ([v4 count])
    {
      [v32 setObject:v4 forKeyedSubscript:@"extrinsicsToJasper"];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)createFileMetadata
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_movMetadataArray];
  v4 = objc_opt_new();
  [v4 setIdentifier:@"mdta/com.apple.framework.state.MOVKit"];
  [v4 setDataType:*MEMORY[0x277CC0598]];
  v5 = [(MIOWriterInterface *)self addDefaultSummary];
  [v4 setValue:v5];

  [v3 addObject:v4];
  if (self->_calibration)
  {
    v6 = objc_opt_new();
    [v6 setIdentifier:@"mdta/com.apple.calibration"];
    [v6 setDataType:*MEMORY[0x277CC05B0]];
    v7 = [(CVACalibration *)self->_calibration toData];
    [v6 setValue:v7];

    [v3 addObject:v6];
  }

  return v3;
}

- (void)registerStreamID:(id)a3 withConfigObject:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v10 = objc_opt_new();
  [v10 setObject:&unk_285225290 forKeyedSubscript:@"received"];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "lossless")}];
  [v10 setObject:v11 forKeyedSubscript:@"lossless"];

  v12 = MEMORY[0x277CCABB0];
  [v9 bitrate];
  v13 = [v12 numberWithFloat:?];
  [v10 setObject:v13 forKeyedSubscript:@"bitrate"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "forceH264")}];
  [v10 setObject:v14 forKeyedSubscript:@"forceH264"];

  v15 = MEMORY[0x277CCABB0];
  [v9 expectedFPS];
  v16 = [v15 numberWithFloat:?];
  [v10 setObject:v16 forKeyedSubscript:@"expectedFPS"];

  v17 = [v9 extraConfigs];
  [v10 setObject:v17 forKeyedSubscript:@"extraConfigs"];

  [(NSMutableDictionary *)self->_trackAddedByStream setObject:v10 forKeyedSubscript:v21];
  v18 = objc_opt_new();
  [(NSMutableDictionary *)self->_frameMetadataDictionary setObject:v18 forKeyedSubscript:v21];

  if (!self->_firstSteamID)
  {
    v19 = [MEMORY[0x277CCACA8] stringWithString:v21];
    firstSteamID = self->_firstSteamID;
    self->_firstSteamID = v19;
  }
}

- (id)addCVADepthIRTrackWithDimensions:(id)a3
{
  formatDescriptionOut = 0;
  if (CMVideoFormatDescriptionCreate(*MEMORY[0x277CBECE8], 0x31332E33u, a3.var0, a3.var1, 0, &formatDescriptionOut))
  {
    v4 = [MEMORY[0x277CCA9B8] mioWriterInterfaceErrorWithMessage:@"Failed to create video format description for the depth IR data track" code:2];
    lastError = self->_lastError;
    self->_lastError = v4;

    v6 = 0;
  }

  else
  {
    v8 = [(MIOWriterInterface *)self addVideoTrack:formatDescriptionOut streamID:@"com.apple.reality.kind.data.pcam_avdepth" encoding:0];
    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_trackAddedByStream objectForKeyedSubscript:@"com.apple.reality.kind.data.pcam_avdepth"];
      [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"received"];
    }

    CFRelease(formatDescriptionOut);
    v6 = v8;
  }

  return v6;
}

- (void)addFirstBufferForStream:(id)a3 buffer:(__CVBuffer *)a4 withTimestamp:(id *)a5
{
  v8 = a3;
  CVPixelBufferRetain(a4);
  v9 = [MIOWriterTimedBuffer alloc];
  v11 = *a5;
  v10 = [(MIOWriterTimedBuffer *)v9 initWithBuffer:a4 atTimestamp:&v11];
  [(MIOWriterInterface *)self clearFirstBufferForStream:v8];
  [(NSMutableDictionary *)self->_firstFrameContainer setObject:v10 forKeyedSubscript:v8];
}

- (__CVBuffer)getFirstBufferForStream:(id)a3 withTimestamp:(id *)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:v6];
    v7 = [v8 buffer];

    v9 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:v6];
    v10 = v9;
    if (v9)
    {
      [v9 timestamp];
    }

    else
    {
      v12 = 0uLL;
      v13 = 0;
    }

    *&a4->var0 = v12;
    a4->var3 = v13;
  }

  return v7;
}

- (BOOL)receivedAllFramesForStreams:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i), v13];

        if (!v9)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)intelligentlyAppendBuffersForStreams:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v34 = a3;
  [(NSMutableDictionary *)self->_firstFrameContainer keysSortedByValueUsingComparator:&unk_28521AE30];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v4 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    v7 = 0x278C9A000uLL;
    v8 = 0x27E3C7000uLL;
    v32 = self;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 == v6)
        {
          v10 = *(*(&v37 + 1) + 8 * i);
          if ([v34 containsObject:v10])
          {
            goto LABEL_12;
          }
        }

        else
        {
          objc_enumerationMutation(obj);
          v10 = *(*(&v37 + 1) + 8 * i);
          if ([v34 containsObject:v10])
          {
LABEL_12:
            v11 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:v10];
            v12 = [v11 buffer];

            memset(&v36, 0, sizeof(v36));
            v13 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:v10];
            v14 = v13;
            if (v13)
            {
              [v13 timestamp];

              if (![*(v7 + 3328) debugEnabled])
              {
                goto LABEL_19;
              }
            }

            else
            {
              memset(&v36, 0, sizeof(v36));

              if (![*(v7 + 3328) debugEnabled])
              {
                goto LABEL_19;
              }
            }

            v15 = [*(v7 + 3328) defaultLog];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              time = v36;
              Seconds = CMTimeGetSeconds(&time);
              LODWORD(time.value) = 138412546;
              *(&time.value + 4) = v10;
              LOWORD(time.flags) = 2048;
              *(&time.flags + 2) = Seconds;
              _os_log_impl(&dword_24016D000, v15, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Adding first frame for stream: %@ for ts: %f", &time, 0x16u);
            }

LABEL_19:
            v17 = [*(&self->super.super.isa + *(v8 + 3988)) objectForKeyedSubscript:v10];
            if ([v17 canAppend])
            {
              v35 = 0;
              time = v36;
              [v17 appendPixelBuffer:v12 pts:&time error:&v35];
              v18 = v35;
              v19 = v18;
              if (v18)
              {
                v20 = v5;
                v21 = v7;
                v22 = v6;
                v23 = MEMORY[0x277CCA9B8];
                v24 = MEMORY[0x277CCACA8];
                v25 = [v18 description];
                v26 = [v24 stringWithFormat:@"Failed to write pixel buffer: %@", v25];
                v27 = v23;
                v6 = v22;
                v7 = v21;
                v5 = v20;
                self = v32;
                v28 = [v27 mioWriterInterfaceErrorWithMessage:v26 code:4];
                lastError = v32->_lastError;
                v32->_lastError = v28;

                v8 = 0x27E3C7000;
              }

              goto LABEL_5;
            }

            if ([*(v7 + 3328) debugEnabled])
            {
              v19 = [*(v7 + 3328) defaultLog];
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(time.value) = 138412290;
                *(&time.value + 4) = v10;
                _os_log_impl(&dword_24016D000, v19, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Input not ready: %@", &time, 0xCu);
              }

LABEL_5:
            }
          }
        }

        [(MIOWriterInterface *)self clearFirstBufferForStream:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v5);
  }

  firstFrameContainer = self->_firstFrameContainer;
  self->_firstFrameContainer = 0;

  v31 = *MEMORY[0x277D85DE8];
}

- (void)clearFirstBufferForStream:(id)a3
{
  v7 = a3;
  v4 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:?];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_firstFrameContainer objectForKeyedSubscript:v7];
    v6 = [v5 buffer];

    [(NSMutableDictionary *)self->_firstFrameContainer setObject:0 forKeyedSubscript:v7];
    CVPixelBufferRelease(v6);
  }
}

- (id)getSuggestedEncodingOptionsForFormat:(opaqueCMFormatDescription *)a3 streamID:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_trackAddedByStream objectForKeyedSubscript:v6];
  v8 = [v7 objectForKeyedSubscript:@"lossless"];
  v9 = [v8 BOOLValue];

  v10 = [v7 objectForKeyedSubscript:@"bitrate"];
  v11 = [v10 integerValue];

  MediaSubType = CMFormatDescriptionGetMediaSubType(a3);
  if (MediaSubType != 825437747)
  {
    if (MediaSubType == 1278226488)
    {
      if (v9)
      {
        v13 = [MEMORY[0x277D256B8] monochrome8bitHEVCLosslessEncoderConfig];
        goto LABEL_22;
      }

      if (v11)
      {
        [MEMORY[0x277D256B8] monochrome8bitHEVCEncoderConfigWithBitrate:v11];
      }

      else
      {
        [MEMORY[0x277D256B8] monochrome8bitHEVCEncoderConfig];
      }
    }

    else
    {
      v14 = [v7 objectForKeyedSubscript:@"forceH264"];
      if ([v14 BOOLValue])
      {
      }

      else
      {
        v15 = [MEMORY[0x277D256B8] isEncoderAvailableForEncoderType:9];

        if (v15)
        {
          if (v9)
          {
            v13 = [MEMORY[0x277D256B8] colorHEVCLosslessEncoderConfig];
            goto LABEL_22;
          }

          if (v11)
          {
            [MEMORY[0x277D256B8] colorHEVCEncoderConfigWithBitrate:v11];
          }

          else
          {
            [MEMORY[0x277D256B8] colorHEVCEncoderConfig];
          }

          goto LABEL_20;
        }
      }

      if (v11)
      {
        [MEMORY[0x277D256B8] colorH264EncoderConfigWithBitrate:v11];
      }

      else
      {
        [MEMORY[0x277D256B8] colorH264EncoderConfig];
      }
    }

    v13 = LABEL_20:;
    goto LABEL_22;
  }

  if ((v9 & 1) == 0)
  {
    v24 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Streams with 13.3 format requires lossless encoding" userInfo:0];
    objc_exception_throw(v24);
  }

  v13 = [MEMORY[0x277D256B8] slimEncoderConfig];
LABEL_22:
  v16 = v13;
  v17 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v13];
  [v17 setObject:&unk_285225290 forKeyedSubscript:*MEMORY[0x277D256D8]];
  v18 = [v7 objectForKeyedSubscript:@"expectedFPS"];
  [v18 floatValue];
  v20 = v19;

  if (v20 > 0.0)
  {
    v21 = [v7 objectForKeyedSubscript:@"expectedFPS"];
    [v17 setObject:v21 forKeyedSubscript:*MEMORY[0x277D256D0]];
  }

  v22 = [v7 objectForKeyedSubscript:@"extraConfigs"];
  [v17 addEntriesFromDictionary:v22];

  return v17;
}

- (id)addVideoTrack:(opaqueCMFormatDescription *)a3 streamID:(id)a4 encoding:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  lastError = self->_lastError;
  self->_lastError = 0;

  if (!v9)
  {
    v9 = [(MIOWriterInterface *)self getSuggestedEncodingOptionsForFormat:a3 streamID:v8];
  }

  v11 = [objc_alloc(MEMORY[0x277D256B0]) initWithStreamId:v8 format:a3 recordingConfig:v9];
  v24 = 0;
  [(MIOWriter *)self addInput:v11 error:&v24];
  v12 = v24;
  v13 = v12;
  if (v12)
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = MEMORY[0x277CCACA8];
    v16 = [v12 description];
    v17 = [v15 stringWithFormat:@"Cannot add track: %@ %@", v8, v16];
    v18 = [v14 mioWriterInterfaceErrorWithMessage:v17 code:2];
    v19 = self->_lastError;
    self->_lastError = v18;

    v20 = 0;
  }

  else
  {
    if (+[AppleCV3DMOVKitLog debugEnabled])
    {
      v21 = +[AppleCV3DMOVKitLog defaultLog];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v26 = v8;
        v27 = 2112;
        v28 = a3;
        _os_log_impl(&dword_24016D000, v21, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Added track %@ : %@", buf, 0x16u);
      }
    }

    [(NSMutableDictionary *)self->_streamInputs setObject:v11 forKeyedSubscript:v8];
    v20 = v11;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)prepareWriter
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(MIOWriterInterface *)self createFileMetadata];
  [(MIOWriter *)self setCustomMOVMetadata:v3];
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v4 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [(MIOWriter *)self status];
      *buf = HIBYTE(v5);
      *&buf[2] = BYTE2(v5);
      LOWORD(v10) = BYTE1(v5);
      WORD1(v10) = v5;
      v6 = [MEMORY[0x277CCACA8] stringWithCharacters:buf length:4];
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_24016D000, v4, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Calling preparation status: %@", buf, 0xCu);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2401857D4;
  v8[3] = &unk_278C9B178;
  v8[4] = self;
  [(MIOWriter *)self prepareWriterWithCompletionHandler:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)preProcessPixelBuffer:(__CVBuffer *)a3 streamID:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!self->_isReady)
  {
    v7 = self;
    objc_sync_enter(v7);
    lastError = v7->_lastError;
    v7->_lastError = 0;

    obj = v7;
    v9 = [(NSMutableDictionary *)v7->_trackAddedByStream valueForKey:v7->_firstSteamID];

    if (v9)
    {
      v10 = [(NSMutableDictionary *)v7->_trackAddedByStream objectForKeyedSubscript:v7->_firstSteamID];
      v11 = [v10 objectForKeyedSubscript:@"received"];
      v12 = [v11 BOOLValue];
    }

    else
    {
      v12 = 0;
    }

    v31 = v6;
    v32 = [v6 isEqualToString:v7->_firstSteamID] | v12;
    if (v32)
    {
      v13 = [(NSMutableDictionary *)v7->_trackAddedByStream valueForKey:v6];

      if (!v13 || (-[NSMutableDictionary objectForKeyedSubscript:](v7->_trackAddedByStream, "objectForKeyedSubscript:", v6), v14 = objc_claimAutoreleasedReturnValue(), [v14 objectForKeyedSubscript:@"received"], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "BOOLValue"), v15, v14, (v16 & 1) == 0))
      {
        v17 = [MEMORY[0x277D256B8] formatForPixelBuffer:a3];
        v18 = [(MIOWriterInterface *)v7 addVideoTrack:v17 streamID:v6 encoding:0];

        if (v18)
        {
          v19 = [(NSMutableDictionary *)v7->_trackAddedByStream objectForKeyedSubscript:v6];
          [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"received"];
        }

        CFRelease(v17);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v20 = [(NSMutableDictionary *)v7->_trackAddedByStream allKeys];
      v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v21)
      {
        v22 = *v35;
        v23 = 1;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v25 = [(NSMutableDictionary *)obj->_trackAddedByStream objectForKeyedSubscript:*(*(&v34 + 1) + 8 * i)];
            v26 = [v25 objectForKeyedSubscript:@"received"];
            v27 = [v26 BOOLValue];

            v23 &= v27;
          }

          v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v21);

        if ((v23 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }

      if (!obj->_prepareCalled)
      {
        if ([(NSMutableDictionary *)obj->_trackAddedByStream count]== 1)
        {
          firstFrameContainer = obj->_firstFrameContainer;
          obj->_firstFrameContainer = 0;
        }

        obj->_prepareCalled = 1;
        [(MIOWriterInterface *)obj prepareWriter];
      }
    }

LABEL_26:
    objc_sync_exit(obj);

    v6 = v31;
    goto LABEL_27;
  }

  LOBYTE(v32) = 1;
LABEL_27:

  v29 = *MEMORY[0x277D85DE8];
  return v32 & 1;
}

- (BOOL)processPixelBuffer:(__CVBuffer *)a3 withTimeStamp:(id *)a4 beforeAppend:(id)a5 streamID:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  if (![(MIOWriterInterface *)self preProcessPixelBuffer:a3 streamID:v11]|| !self->_isReady)
  {
    goto LABEL_21;
  }

  if (v10)
  {
    v10[2](v10, a3);
  }

  [(MIOWriterInterface *)self setMetadataAttachmentTo:a3 streamID:v11];
  if (self->_firstFrameContainer)
  {
    if (+[AppleCV3DMOVKitLog debugEnabled])
    {
      v12 = +[AppleCV3DMOVKitLog defaultLog];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        time = *a4;
        Seconds = CMTimeGetSeconds(&time);
        *buf = 138412546;
        v23 = v11;
        v24 = 2048;
        v25 = Seconds;
        _os_log_impl(&dword_24016D000, v12, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] First frame received for: %@ at ts: %f", buf, 0x16u);
      }
    }

    time = *a4;
    [(MIOWriterInterface *)self addFirstBufferForStream:v11 buffer:a3 withTimestamp:&time];
    v14 = [(NSMutableDictionary *)self->_trackAddedByStream allKeys];
    v15 = [(MIOWriterInterface *)self receivedAllFramesForStreams:v14];

    if (v15)
    {
      if (+[AppleCV3DMOVKitLog debugEnabled])
      {
        v16 = +[AppleCV3DMOVKitLog defaultLog];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(time.value) = 0;
          _os_log_impl(&dword_24016D000, v16, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] All first being written", &time, 2u);
        }
      }

      v17 = [(NSMutableDictionary *)self->_trackAddedByStream allKeys];
      [(MIOWriterInterface *)self intelligentlyAppendBuffersForStreams:v17];
      goto LABEL_17;
    }

LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

  v17 = [(NSMutableDictionary *)self->_streamInputs objectForKeyedSubscript:v11];
  time = *a4;
  [v17 appendPixelBuffer:a3 pts:&time error:0];
LABEL_17:

  if ([(NSString *)self->_firstSteamID isEqualToString:v11]&& self->_writeMetadataTimeInterval <= 0.0)
  {
    time = *a4;
    [(MIOWriterInterface *)self appendAllMetadataWithTimeStamp:&time];
  }

  v18 = 1;
LABEL_22:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)processPixelBuffer:(__CVBuffer *)a3 withTimeStamp:(id *)a4 intrinsics:(id *)a5 exposureTime:(double)a6 streamID:(id)a7
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_240186140;
  v9[3] = &unk_278C9B1A0;
  v9[4] = self;
  v9[5] = a5;
  *&v9[6] = a6;
  v8 = *a4;
  return [(MIOWriterInterface *)self processPixelBuffer:a3 withTimeStamp:&v8 beforeAppend:v9 streamID:a7];
}

- (BOOL)processCVADepthIR:(id)a3
{
  v4 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType([v4 dataBuffer]);
  if (PixelFormatType == 825437747)
  {
    v5 = [v4 dataBuffer];
    [v4 timestamp];
    [MIOWriterInterface cmTimeFromTimestamp:?];
    v6 = [(MIOWriterInterface *)self processPixelBuffer:v5 withTimeStamp:v13 beforeAppend:0 streamID:@"com.apple.reality.kind.data.pcam_avdepth"];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:&PixelFormatType length:4 encoding:1 freeWhenDone:0];
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Pixel format type for depth IR data should be kCVPixelFormatType_FixedPointUnsigned13_3, but received pixel buffer with format '%@'", v7];
    v10 = [v8 mioWriterInterfaceErrorWithMessage:v9 code:4];
    lastError = self->_lastError;
    self->_lastError = v10;

    v6 = 0;
  }

  return v6;
}

- (id)arrayFrom3x3Matrix:(id *)a3
{
  if (a3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:9];
    LODWORD(v5) = *a3;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    [v4 addObject:v6];

    LODWORD(v7) = *(a3 + 1);
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    [v4 addObject:v8];

    LODWORD(v9) = *(a3 + 2);
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [v4 addObject:v10];

    LODWORD(v11) = *(a3 + 4);
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    [v4 addObject:v12];

    LODWORD(v13) = *(a3 + 5);
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    [v4 addObject:v14];

    LODWORD(v15) = *(a3 + 6);
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    [v4 addObject:v16];

    LODWORD(v17) = *(a3 + 8);
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    [v4 addObject:v18];

    LODWORD(v19) = *(a3 + 9);
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    [v4 addObject:v20];

    LODWORD(v21) = *(a3 + 10);
    v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
    [v4 addObject:v22];

    v23 = v4;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)setMetadataAttachmentTo:(__CVBuffer *)a3 streamID:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)v7->_frameMetadataDictionary objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v10);
          }

          CVBufferSetAttachment(a3, *(*(&v15 + 1) + 8 * v13), [v10 objectForKey:{*(*(&v15 + 1) + 8 * v13), v15}], kCVAttachmentMode_ShouldPropagate);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    [v10 removeAllObjects];
  }

  objc_sync_exit(v7);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)finishWriting
{
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v3 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_24016D000, v3, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] FinishWriting", buf, 2u);
    }
  }

  v4 = self;
  objc_sync_enter(v4);
  v4->_isReady = 0;
  objc_sync_exit(v4);

  memset(buf, 0, sizeof(buf));
  v10 = 0;
  [MIOWriterInterface cmTimeFromTimestamp:CACurrentMediaTime()];
  v7 = *buf;
  v8 = v10;
  [(MIOWriterInterface *)v4 appendAllMetadataWithTimeStamp:&v7];
  lastError = v4->_lastError;
  v4->_lastError = 0;

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2401867FC;
  v6[3] = &unk_278C9B178;
  v6[4] = v4;
  [(MIOWriter *)v4 finishWithCompletionHandler:v6];
}

- (void)writerDidFailWithError:(id)a3
{
  v13 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = MEMORY[0x277CCA9B8];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v13 description];
  v8 = [v6 stringWithFormat:@"Writer failure: %@", v7];
  v9 = [v5 mioWriterInterfaceErrorWithMessage:v8 code:5];
  lastError = v4->_lastError;
  v4->_lastError = v9;

  v4->_isReady = 0;
  objc_sync_exit(v4);

  WeakRetained = objc_loadWeakRetained(&v4->_interface_delegate);
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v12 = objc_loadWeakRetained(&v4->_interface_delegate);
    [v12 didFailWithError:v13];
  }
}

- (void)writerEncounteredAnError:(id)a3
{
  v13 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = MEMORY[0x277CCA9B8];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v13 description];
  v8 = [v6 stringWithFormat:@"Writer error: %@", v7];
  v9 = [v5 mioWriterInterfaceErrorWithMessage:v8 code:5];
  lastError = v4->_lastError;
  v4->_lastError = v9;

  objc_sync_exit(v4);
  WeakRetained = objc_loadWeakRetained(&v4->_interface_delegate);
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v12 = objc_loadWeakRetained(&v4->_interface_delegate);
    [v12 didEncounterError:v13];
  }
}

- (void)addFrameMetadata:(id)a3 value:(id)a4 streamID:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)v10->_frameMetadataDictionary objectForKeyedSubscript:v9];
  v12 = v11;
  if (v11)
  {
    [v11 setObject:v8 forKeyedSubscript:v13];
  }

  objc_sync_exit(v10);
}

- (void)addFrameMetadata:(id)a3 streamID:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)v7->_frameMetadataDictionary objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    [v8 addEntriesFromDictionary:v10];
  }

  objc_sync_exit(v7);
}

- (void)processFastPathIMUData:(id)a3 location:(int64_t *)a4
{
  if (a3)
  {
    v7 = a3;
    v8 = a3;
    v9 = *([v8 bytes] + 8);
    v10 = [CVAMetadataWrapperTracks imuTrackName:a4 prefix:self->_spuIMUTrackName];
    [(MIOWriterInterface *)self appendMetadata:v8 metadataID:v10 timestamp:v9];
  }
}

- (void)processFastPathIMUData:(id)a3 location:(int64_t *)a4 metadataID:(id)a5
{
  if (a3)
  {
    v8 = a5;
    v9 = a3;
    [CVASpuFastPathComboAxisData getTimestamp:v9];
    v11 = v10;
    v12 = [CVAMetadataWrapperTracks imuTrackName:a4 prefix:v8];

    [(MIOWriterInterface *)self appendMetadata:v9 metadataID:v12 timestamp:v11];
  }
}

- (void)processSpuIMUData:(id)a3 location:(int64_t *)a4
{
  v8 = a3;
  v6 = [v8 toData];
  if (v6)
  {
    v7 = [CVAMetadataWrapperTracks imuTrackName:a4 prefix:self->_spuIMUTrackName];
    [v8 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
  }
}

- (void)processAccelerometerData:(id)a3 andAdditionalData:(id)a4 location:(int64_t *)a5
{
  v10 = a3;
  v8 = [v10 toData:a4];
  if (v8)
  {
    v9 = [CVAMetadataWrapperTracks accelerometerTrackName:a5 prefix:self->_accelTrackName];
    [v10 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v8 metadataID:v9 timestamp:?];
  }
}

- (void)processGyroscopeData:(id)a3 andAdditionalData:(id)a4 location:(int64_t *)a5
{
  v10 = a3;
  v8 = [v10 toData:a4];
  if (v8)
  {
    v9 = [CVAMetadataWrapperTracks gyroTrackName:a5 prefix:self->_gyroTrackName];
    [v10 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v8 metadataID:v9 timestamp:?];
  }
}

- (void)processMotionData:(id)a3 location:(int64_t *)a4
{
  v8 = a3;
  v6 = [v8 toData];
  if (v6)
  {
    v7 = [CVAMetadataWrapperTracks motionTrackName:a4 prefix:self->_motionTrackName];
    [v8 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
  }
}

- (void)processALSData:(id)a3 location:(int64_t *)a4
{
  v8 = a3;
  v6 = [v8 toData];
  if (v6)
  {
    v7 = [CVAMetadataWrapperTracks alsTrackName:a4 prefix:self->_alsTrackName];
    [v8 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
  }
}

- (void)processWiFiData:(id)a3 location:(int64_t *)a4
{
  v8 = a3;
  v6 = [v8 toData];
  if (v6)
  {
    v7 = [CVAMetadataWrapperTracks wifiTrackName:a4 prefix:self->_wifiTrackName];
    [v8 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
  }
}

- (void)processUWBData:(id)a3 location:(int64_t *)a4
{
  v8 = a3;
  v6 = [v8 toData];
  if (v6)
  {
    v7 = [CVAMetadataWrapperTracks uwbTrackName:a4 prefix:self->_uwbTrackName];
    [v8 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
  }
}

- (void)processBLEData:(id)a3 location:(int64_t *)a4
{
  v8 = a3;
  v6 = [v8 toData];
  if (v6)
  {
    v7 = [CVAMetadataWrapperTracks bleTrackName:a4 prefix:self->_bleTrackName];
    [v8 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
  }
}

- (void)processBarometerData:(id)a3
{
  v6 = a3;
  v4 = [v6 toData];
  if (v4)
  {
    barometerTrackName = self->_barometerTrackName;
    [v6 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v4 metadataID:barometerTrackName timestamp:?];
  }
}

- (void)processCompassData:(id)a3 location:(int64_t *)a4
{
  v8 = a3;
  v6 = [v8 toData];
  if (v6)
  {
    v7 = [CVAMetadataWrapperTracks compassTrackName:a4 prefix:self->_compassTrackName];
    [v8 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
  }
}

- (void)processDeviceMotionData:(id)a3 andAdditionalData:(id)a4 location:(int64_t *)a5
{
  v9 = a3;
  v7 = [CVAMetadataWrapper encodeDeviceMotionData:"encodeDeviceMotionData:andAdditionalData:" andAdditionalData:?];
  if (v7)
  {
    v8 = [CVAMetadataWrapperTracks deviceMotionTrackName:a5 prefix:self->_deviceMotionTrackName];
    [v9 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v7 metadataID:v8 timestamp:?];
  }
}

- (void)processDeviceMotionData:(id)a3 location:(int64_t *)a4
{
  v8 = a3;
  v6 = [v8 toData];
  if (v6)
  {
    v7 = [CVAMetadataWrapperTracks deviceMotionTrackName:a4 prefix:self->_deviceMotionTrackName];
    [v8 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
  }
}

- (void)processCoreLocationData:(id)a3 timestamp:(double)a4 andAdditionalData:(id)a5 location:(int64_t *)a6
{
  v9 = [CVAMetadataWrapper encodeCoreLocationData:a3 timestamp:a5 andAdditionalData:?];
  if (v9)
  {
    v11 = v9;
    v10 = [CVAMetadataWrapperTracks locationTrackName:a6 prefix:self->_locationTrackName];
    [(MIOWriterInterface *)self appendMetadata:v11 metadataID:v10 timestamp:a4];

    v9 = v11;
  }
}

- (void)processCMData:(id)a3
{
  v5 = a3;
  v4 = [v5 toData];
  if (v4)
  {
    [v5 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v4 metadataID:@"CMData" timestamp:?];
  }
}

- (void)processCVAUserEvent:(id)a3
{
  v5 = a3;
  v4 = [v5 toData];
  if (v4)
  {
    [v5 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v4 metadataID:@"CVAUserEvent" timestamp:?];
  }
}

- (void)processCVATimedValue:(id)a3
{
  v5 = a3;
  v4 = [v5 toData];
  if (v4)
  {
    [v5 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v4 metadataID:@"CVATimedValue" timestamp:?];
  }
}

- (void)processCVAPRDevice:(id)a3
{
  v5 = a3;
  v4 = [v5 toData];
  if (v4)
  {
    [v5 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v4 metadataID:@"CVAPRDevice" timestamp:?];
  }
}

- (void)processCVAFeatureBuffer:(__CVBuffer *)a3 timestamp:(double)a4 syncTimestamp:(unint64_t)a5 frameId:(unint64_t)a6 streamName:(id)a7
{
  v16 = a7;
  v12 = [(NSMutableDictionary *)self->_cvaFeatureBufferCompression objectForKeyedSubscript:?];
  v13 = [v12 BOOLValue];

  v14 = [[CVAFeatureBuffer alloc] initWithPixelBufferRef:a3 timestamp:0 streamID:0 reduce:v13 compress:a4];
  [(CVAFeatureBuffer *)v14 setSyncTimestamp:a5];
  [(CVAFeatureBuffer *)v14 setFrameId:a6];
  v15 = [(CVAFeatureBuffer *)v14 toData];
  if (v15)
  {
    [(MIOWriterInterface *)self appendMetadata:v15 metadataID:v16 timestamp:a4];
  }
}

- (void)processCVAFeatureBuffer:(id)a3
{
  v6 = a3;
  v4 = [v6 toData];
  if (v4)
  {
    v5 = [CVAFeatureBuffer streamName:0];
    [v6 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v4 metadataID:v5 timestamp:?];
  }
}

- (void)processCVADepthTOF:(id)a3
{
  v4 = a3;
  v5 = [v4 toData];
  lastError = self->_lastError;
  self->_lastError = 0;

  if (v5)
  {
    v15 = 0;
    v7 = [v5 compressedDataUsingAlgorithm:1 error:&v15];
    v8 = v15;
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x277CCA9B8];
      v11 = [v8 description];
      v12 = [v10 mioWriterInterfaceErrorWithMessage:v11 code:1];
      v13 = self->_lastError;
      self->_lastError = v12;

      v9 = v11;
    }

    else
    {
      depthTOFTrackName = self->_depthTOFTrackName;
      [v4 timestamp];
      [(MIOWriterInterface *)self appendMetadata:v7 metadataID:depthTOFTrackName timestamp:?];
    }
  }
}

- (void)processCVACameraCalibrationData:(id)a3
{
  v5 = a3;
  v4 = [v5 toData];
  if (v4)
  {
    [v5 timestamp];
    [(MIOWriterInterface *)self appendMetadata:v4 metadataID:@"CVACameraCalibration" timestamp:0 enforceMonotonicity:?];
  }
}

- (void)processClass:(id)a3 andAdditionalData:(id)a4 metadataID:(id)a5
{
  v9 = a5;
  v8 = [CVAMetadataWrapper encodeClass:a3 andAdditionalData:a4];
  if (v8)
  {
    [(MIOWriterInterface *)self appendMetadata:v8 metadataID:v9];
  }
}

- (void)processClass:(id)a3 andAdditionalData:(id)a4 metadataID:(id)a5 timestamp:(double)a6
{
  v11 = a5;
  v10 = [CVAMetadataWrapper encodeClass:a3 andAdditionalData:a4];
  if (v10)
  {
    [(MIOWriterInterface *)self appendMetadata:v10 metadataID:v11 timestamp:a6];
  }
}

- (void)processNSCoderObject:(id)a3 metadataID:(id)a4
{
  v7 = a4;
  v6 = [CVAMetadataWrapper encodeNSCoderObject:a3];
  if (v6)
  {
    [(MIOWriterInterface *)self appendMetadata:v6 metadataID:v7];
  }
}

- (void)processNSCoderObject:(id)a3 metadataID:(id)a4 timestamp:(double)a5
{
  v9 = a4;
  v8 = [CVAMetadataWrapper encodeNSCoderObject:a3];
  if (v8)
  {
    [(MIOWriterInterface *)self appendMetadata:v8 metadataID:v9 timestamp:a5];
  }
}

- (void)appendMetadata:(id)a3 metadataID:(id)a4 timestamp:(double)a5 enforceMonotonicity:(BOOL)a6
{
  v6 = a6;
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = self;
  objc_sync_enter(v12);
  if (v12->_isReady)
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    lastError = v12->_lastError;
    v12->_lastError = 0;

    v14 = [(NSMutableDictionary *)v12->_metadataLastTimestamp objectForKeyedSubscript:v11];
    v15 = v14;
    if (!v14 || ([v14 doubleValue], v16 <= a5))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
      [(NSMutableDictionary *)v12->_metadataLastTimestamp setObject:v17 forKeyedSubscript:v11];

LABEL_6:
      v18 = [(NSMutableDictionary *)v12->_metadataAttachmentArrays objectForKeyedSubscript:v11];
      [v18 addObject:v10];
      if (a5 < 0.0)
      {
LABEL_29:

        goto LABEL_30;
      }

      v19 = [(NSMutableDictionary *)v12->_metadataMaxBufferSize objectForKeyedSubscript:v11];
      v20 = v19;
      if (!v19 || (v21 = [v19 unsignedIntValue], objc_msgSend(v18, "count") <= v21) || (v12->_lastAppendMetadata.flags & 1) == 0)
      {
LABEL_21:
        if (v12->_writeMetadataTimeInterval > 0.0)
        {
          v36 = [(NSMutableDictionary *)v12->_metadataAttachmentArraysTimestamp objectForKeyedSubscript:v11];
          if (!v36)
          {
            v37 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
            [(NSMutableDictionary *)v12->_metadataAttachmentArraysTimestamp setObject:v37 forKeyedSubscript:v11];
          }

          memset(&buf, 0, sizeof(buf));
          [MIOWriterInterface cmTimeFromTimestamp:a5 - v12->_writeMetadataTimeInterval];
          if ((v12->_lastAppendMetadata.flags & 1) == 0 || (time1 = buf, v38 = *&v12->_lastAppendMetadata.value, time2.epoch = v12->_lastAppendMetadata.epoch, *&time2.value = v38, CMTimeCompare(&time1, &time2) >= 1))
          {
            [MIOWriterInterface cmTimeFromTimestamp:a5];
            [(MIOWriterInterface *)v12 appendAllMetadataWithTimeStamp:&time1];
          }
        }

        goto LABEL_29;
      }

      v22 = [(NSMutableDictionary *)v12->_streamInputs objectForKeyedSubscript:v11];
      if ([v22 canAppend])
      {
        v40 = [MEMORY[0x277CBEA60] arrayWithArray:v18];
        memset(&buf, 0, sizeof(buf));
        [MIOWriterInterface cmTimeFromTimestamp:a5];
        time1 = buf;
        v43 = 0;
        [v22 appendMetadata:v40 withTimeStamp:&time1 error:&v43];
        v23 = v43;
        v24 = v23;
        if (v23)
        {
          v25 = MEMORY[0x277CCA9B8];
          v26 = MEMORY[0x277CCACA8];
          v27 = [v23 description];
          v28 = [v26 stringWithFormat:@"Failed to write metadata buffer: %@", v27];
          v29 = [v25 mioWriterInterfaceErrorWithMessage:v28 code:5];
          v30 = v12->_lastError;
          v12->_lastError = v29;
        }

        else
        {
          [v18 removeAllObjects];
          v35 = *&buf.value;
          v12->_lastAppendMetadata.epoch = buf.epoch;
          *&v12->_lastAppendMetadata.value = v35;
        }
      }

      else
      {
        if (!+[AppleCV3DMOVKitLog debugEnabled])
        {
LABEL_20:

          goto LABEL_21;
        }

        v24 = +[AppleCV3DMOVKitLog defaultLog];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf.value) = 138412290;
          *(&buf.value + 4) = v11;
          _os_log_impl(&dword_24016D000, v24, OS_LOG_TYPE_DEBUG, "[MIOWriterInterface] Input not ready: %@", &buf, 0xCu);
        }
      }

      goto LABEL_20;
    }

    v31 = MEMORY[0x277CCA9B8];
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ timestamp %.6f is older than %.6f", v11, *&a5, *&v16];
    v33 = [v31 mioWriterInterfaceErrorWithMessage:v32 code:0];
    v34 = v12->_lastError;
    v12->_lastError = v33;
  }

LABEL_30:
  objc_sync_exit(v12);

  v39 = *MEMORY[0x277D85DE8];
}

- (void)clearAllMetadataBuffers
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2->_metadataAttachmentArrays;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [(NSMutableDictionary *)v2->_metadataAttachmentArrays objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v6), v9];
        [v7 removeAllObjects];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)appendAllMetadataWithTimeStamp:(id *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = self;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)v3->_metadataAttachmentArrays allKeys];
  if (v3->_writeMetadataTimeInterval > 0.0)
  {
    v5 = [(NSMutableDictionary *)v3->_metadataAttachmentArrays allKeys];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_24018896C;
    v31[3] = &unk_278C9B1C8;
    v31[4] = v3;
    v6 = [v5 sortedArrayUsingComparator:v31];

    v4 = v6;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v20 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)v3->_metadataAttachmentArrays objectForKeyedSubscript:v9];
        v11 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
        [v10 removeAllObjects];
        if ([v11 count])
        {
          v12 = [(NSMutableDictionary *)v3->_metadataAttachmentArraysTimestamp objectForKeyedSubscript:v9];
          v13 = [(NSMutableDictionary *)v3->_streamInputs objectForKeyedSubscript:v9];
          v14 = v13;
          if (v12)
          {
            v25 = 0uLL;
            var3 = 0;
            [v12 doubleValue];
            [MIOWriterInterface cmTimeFromTimestamp:?];
            v22 = v25;
            v23 = var3;
            v24 = 0;
            [v14 appendMetadata:v11 withTimeStamp:&v22 error:&v24];
            v15 = v24;
            [(NSMutableDictionary *)v3->_metadataAttachmentArraysTimestamp setObject:0 forKeyedSubscript:v9];
          }

          else
          {
            v21 = 0;
            v25 = *&a3->var0;
            var3 = a3->var3;
            [v13 appendMetadata:v11 withTimeStamp:&v25 error:&v21];
            v15 = v21;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v16 = a3->var3;
  *&v3->_lastAppendMetadata.value = *&a3->var0;
  v3->_lastAppendMetadata.epoch = v16;

  objc_sync_exit(v3);
  v17 = *MEMORY[0x277D85DE8];
}

- (MIOWriterInterfaceDelegate)interface_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interface_delegate);

  return WeakRetained;
}

@end