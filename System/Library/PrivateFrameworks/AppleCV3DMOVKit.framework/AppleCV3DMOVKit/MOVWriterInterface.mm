@interface MOVWriterInterface
+ (BOOL)getSWToWExtrinsics:(id *)a3;
- (BOOL)addCVADepthIRTrackWithDimensions:(id)a3;
- (BOOL)addVideoTrack:(opaqueCMFormatDescription *)a3 streamID:(id)a4 encoding:(id)a5;
- (BOOL)processCVADepthIR:(id)a3;
- (BOOL)processPixelBuffer:(__CVBuffer *)a3 withTimeStamp:(id *)a4 beforeAppend:(id)a5 streamID:(id)a6;
- (BOOL)processPixelBuffer:(__CVBuffer *)a3 withTimeStamp:(id *)a4 intrinsics:(id *)a5 exposureTime:(double)a6 streamID:(id)a7;
- (BOOL)receivedAllFramesForStreams:(id)a3;
- (BOOL)setTrackMetadata:(id)a3 forMetadataStream:(id)a4;
- (MOVWriterInterface)initWithFileURL:(id)a3 expectedFrameRate:(double)a4 fileSummary:(id)a5;
- (MOVWriterInterface)initWithFileURL:(id)a3 expectedFrameRate:(double)a4 fileSummary:(id)a5 callbackQueue:(id)a6;
- (MOVWriterInterfaceDelegate)interface_delegate;
- (__CVBuffer)getFirstBufferForStream:(id)a3 withTimestamp:(id *)a4;
- (id)addDefaultSummary;
- (id)arrayFrom3x3Matrix:(id *)a3;
- (id)createFileMetadata;
- (id)getSuggestedEncodingOptionsForFormat:(opaqueCMFormatDescription *)a3 streamID:(id)a4;
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
- (void)finishWriting:(id *)a3;
- (void)intelligentlyAppendBuffersForStreams:(id)a3;
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
- (void)registerALS:(int64_t *)a3;
- (void)registerAccelerometer:(int64_t *)a3;
- (void)registerBLE:(int64_t *)a3;
- (void)registerCVADepthIR;
- (void)registerCVAFeatureBuffer;
- (void)registerCompass:(int64_t *)a3;
- (void)registerDeviceMotion:(int64_t *)a3;
- (void)registerGyro:(int64_t *)a3;
- (void)registerLocation:(int64_t *)a3;
- (void)registerMetadataID:(id)a3;
- (void)registerMetadataID:(id)a3 maxBufferSize:(unint64_t)a4;
- (void)registerMotion:(int64_t *)a3;
- (void)registerSpuIMU:(int64_t *)a3 version:(int64_t)a4;
- (void)registerStreamID:(id)a3 config:(id *)a4;
- (void)registerStreamID:(id)a3 withConfigObject:(id)a4;
- (void)registerUWB:(int64_t *)a3;
- (void)registerWiFi:(int64_t *)a3;
- (void)setMetadataAttachmentTo:(__CVBuffer *)a3 streamID:(id)a4;
- (void)streamWriter:(id)a3 stream:(id)a4 preparedTrackInputs:(id)a5 mediaType:(int64_t)a6;
- (void)streamWriterDidFailWithError:(id)a3;
- (void)streamWriterDidFinishPreparing;
- (void)streamWriterDidFinishRecording;
- (void)streamWriterEncounteredAnError:(id)a3;
@end

@implementation MOVWriterInterface

- (MOVWriterInterface)initWithFileURL:(id)a3 expectedFrameRate:(double)a4 fileSummary:(id)a5 callbackQueue:(id)a6
{
  v62 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v13 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf.sysname = 0;
      _os_log_impl(&dword_24016D000, v13, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] initWithFileURL", &buf, 2u);
    }
  }

  v60.receiver = self;
  v60.super_class = MOVWriterInterface;
  v14 = [(MOVStreamWriter *)&v60 initWithURL:v10 andExpectedFrameRate:a4];
  v15 = v14;
  if (v14)
  {
    [(MOVStreamWriter *)v14 setDelegate:v14 callbackQueue:v12];
    v15->_prepared = 0;
    v16 = objc_opt_new();
    trackAddedByStream = v15->_trackAddedByStream;
    v15->_trackAddedByStream = v16;

    firstSteamID = v15->_firstSteamID;
    v15->_firstSteamID = 0;

    v19 = objc_opt_new();
    metadataTrackMetadata = v15->_metadataTrackMetadata;
    v15->_metadataTrackMetadata = v19;

    v21 = objc_opt_new();
    metadataAttachmentArrays = v15->_metadataAttachmentArrays;
    v15->_metadataAttachmentArrays = v21;

    v23 = objc_opt_new();
    metadataAttachmentArraysTimestamp = v15->_metadataAttachmentArraysTimestamp;
    v15->_metadataAttachmentArraysTimestamp = v23;

    v25 = objc_opt_new();
    metadataLastTimestamp = v15->_metadataLastTimestamp;
    v15->_metadataLastTimestamp = v25;

    v27 = objc_opt_new();
    metadataMaxBufferSize = v15->_metadataMaxBufferSize;
    v15->_metadataMaxBufferSize = v27;

    v29 = objc_opt_new();
    movMetadataArray = v15->_movMetadataArray;
    v15->_movMetadataArray = v29;

    v31 = objc_opt_new();
    frameMetadataDictionary = v15->_frameMetadataDictionary;
    v15->_frameMetadataDictionary = v31;

    v33 = objc_opt_new();
    firstFrameContainer = v15->_firstFrameContainer;
    v15->_firstFrameContainer = v33;

    v35 = objc_opt_new();
    cvaFeatureBufferCompression = v15->_cvaFeatureBufferCompression;
    v15->_cvaFeatureBufferCompression = v35;

    v37 = MEMORY[0x277CC0898];
    *&v15->_lastAppendMetadata.value = *MEMORY[0x277CC0898];
    v15->_lastAppendMetadata.epoch = *(v37 + 16);
    v15->_writeMetadataTimeInterval = 0.0;
    objc_storeStrong(&v15->_spuIMUTrackName, @"com.apple.reality.kind.data.imu800");
    objc_storeStrong(&v15->_accelTrackName, @"com.apple.reality.kind.data.accelerometer");
    objc_storeStrong(&v15->_gyroTrackName, @"com.apple.reality.kind.data.gyroscope");
    objc_storeStrong(&v15->_motionTrackName, @"com.apple.reality.kind.data.motion");
    objc_storeStrong(&v15->_deviceMotionTrackName, @"com.apple.reality.kind.data.devicemotion");
    objc_storeStrong(&v15->_locationTrackName, @"Location");
    objc_storeStrong(&v15->_alsTrackName, @"com.apple.reality.kind.data.als");
    objc_storeStrong(&v15->_wifiTrackName, @"com.apple.reality.kind.data.wifi");
    objc_storeStrong(&v15->_uwbTrackName, @"com.apple.reality.kind.data.uwb");
    objc_storeStrong(&v15->_bleTrackName, @"com.apple.reality.kind.data.ble");
    objc_storeStrong(&v15->_barometerTrackName, @"com.apple.reality.kind.data.barometer");
    objc_storeStrong(&v15->_compassTrackName, @"com.apple.reality.kind.data.compass");
    objc_storeStrong(&v15->_depthTOFTrackName, @"com.apple.reality.kind.data.zcam_tof_pc");
    memset(&buf, 0, 512);
    uname(&buf);
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf.machine];
    productType = v15->_productType;
    v15->_productType = v38;

    v40 = [MEMORY[0x277CCA8D8] mainBundle];
    v41 = [v40 infoDictionary];
    v42 = [v41 objectForKey:@"CFBundleVersion"];
    version = v15->_version;
    v15->_version = v42;

    v44 = [MEMORY[0x277CCA8D8] mainBundle];
    v45 = [v44 bundleIdentifier];
    bundleID = v15->_bundleID;
    v15->_bundleID = v45;

    v59 = 0uLL;
    v47 = [MEMORY[0x277CCAC38] processInfo];
    v48 = v47;
    if (v47)
    {
      [v47 operatingSystemVersion];
    }

    else
    {
      v59 = 0uLL;
    }

    v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu.%lu.%lu", v59, 0];
    osBuildVersion = v15->_osBuildVersion;
    v15->_osBuildVersion = v49;

    v51 = MEMORY[0x277CBEAC0];
    v52 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/CoreServices/SystemVersion.plist"];
    v53 = [v51 dictionaryWithContentsOfURL:v52 error:0];

    if (v53)
    {
      v54 = [v53 objectForKeyedSubscript:@"ProductBuildVersion"];
      v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v15->_osBuildVersion, v54];
      v56 = v15->_osBuildVersion;
      v15->_osBuildVersion = v55;
    }

    objc_storeStrong(&v15->_fileSummary, a5);
  }

  v57 = *MEMORY[0x277D85DE8];
  return v15;
}

- (MOVWriterInterface)initWithFileURL:(id)a3 expectedFrameRate:(double)a4 fileSummary:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = dispatch_queue_create("com.apple.vio.applecv3dmovkit.movwriterinterface.recordercallback", 0);
  v11 = [(MOVWriterInterface *)self initWithFileURL:v9 expectedFrameRate:v8 fileSummary:v10 callbackQueue:a4];

  return v11;
}

- (BOOL)setTrackMetadata:(id)a3 forMetadataStream:(id)a4
{
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = [v6 dictionaryWithDictionary:a3];
  v9 = [(NSMutableDictionary *)self->_metadataTrackMetadata objectForKeyedSubscript:v7];
  [v8 addEntriesFromDictionary:v9];

  v11.receiver = self;
  v11.super_class = MOVWriterInterface;
  LOBYTE(self) = [(MOVStreamWriter *)&v11 setTrackMetadata:v8 forMetadataStream:v7];

  return self;
}

- (void)registerSpuIMU:(int64_t *)a3 version:(int64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = [CVAMetadataWrapperTracks imuTrackName:a3 prefix:self->_spuIMUTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v6];
  v7 = MEMORY[0x277CBEB38];
  v12 = @"com.apple.AppleCV3DMOVKit.fastPathIMUVersion";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v7 dictionaryWithDictionary:v9];
  [(NSMutableDictionary *)self->_metadataTrackMetadata setObject:v10 forKeyedSubscript:v6];

  [(MOVWriterInterface *)self setTrackMetadata:0 forMetadataStream:v6];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerAccelerometer:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks accelerometerTrackName:a3 prefix:self->_accelTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerGyro:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks gyroTrackName:a3 prefix:self->_gyroTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerMotion:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks motionTrackName:a3 prefix:self->_motionTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerDeviceMotion:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks deviceMotionTrackName:a3 prefix:self->_deviceMotionTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerLocation:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks locationTrackName:a3 prefix:self->_locationTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerALS:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks alsTrackName:a3 prefix:self->_alsTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerWiFi:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks wifiTrackName:a3 prefix:self->_wifiTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerUWB:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks uwbTrackName:a3 prefix:self->_uwbTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerBLE:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks bleTrackName:a3 prefix:self->_bleTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerCompass:(int64_t *)a3
{
  v4 = [CVAMetadataWrapperTracks compassTrackName:a3 prefix:self->_compassTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerCVAFeatureBuffer
{
  v3 = [CVAFeatureBuffer streamName:0];
  [(MOVWriterInterface *)self registerMetadataID:v3];
}

- (void)registerCVADepthIR
{
  v3 = [[MOVWriterInterfaceStreamEncodingObject alloc] initWithLossless:1 bitrate:0 forceH264:0 expectedFPS:0.0 extraConfigs:0.0];
  [(MOVWriterInterface *)self registerStreamID:@"com.apple.reality.kind.data.pcam_avdepth" withConfigObject:v3];
}

- (void)registerMetadataID:(id)a3
{
  v5 = a3;
  v4 = objc_opt_new();
  [(NSMutableDictionary *)self->_metadataAttachmentArrays setObject:v4 forKeyedSubscript:v5];

  [(MOVWriterInterface *)self setupMetadata:v5];
}

- (void)registerMetadataID:(id)a3 maxBufferSize:(unint64_t)a4
{
  v6 = a3;
  [(MOVWriterInterface *)self registerMetadataID:v6];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [(NSMutableDictionary *)self->_metadataMaxBufferSize setObject:v7 forKeyedSubscript:v6];
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
        _os_log_impl(&dword_24016D000, v10, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] Added metadata item with NSDictionary %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid identifer %@", v6];
    v14 = [v12 movWriterInterfaceErrorWithMessage:v13 code:14];
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
        _os_log_impl(&dword_24016D000, v10, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] Added metadata item with NSData %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid identifer %@", v6];
    v14 = [v12 movWriterInterfaceErrorWithMessage:v13 code:14];
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
      _os_log_impl(&dword_24016D000, v5, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] Added metadata item %@", &v8, 0xCu);
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

  [(MOVWriterInterface *)self addSWToWExtrinsics:v4];
  [(MOVWriterInterface *)self addJasperExtrinsics:v4];
  [v4 setObject:&unk_285225350 forKeyedSubscript:@"iOS"];

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
  if ([MOVWriterInterface getSWToWExtrinsics:&v30])
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
  v5 = [(MOVWriterInterface *)self addDefaultSummary];
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

- (void)registerStreamID:(id)a3 config:(id *)a4
{
  v17 = a3;
  v6 = objc_opt_new();
  [v6 setObject:&unk_285225368 forKeyedSubscript:@"added"];
  if (a4)
  {
    var0 = a4->var0;
  }

  else
  {
    var0 = 0;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInt:var0];
  [v6 setObject:v8 forKeyedSubscript:@"lossless"];

  if (a4)
  {
    *&v9 = a4->var1;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [v6 setObject:v10 forKeyedSubscript:@"bitrate"];

  if (a4)
  {
    var2 = a4->var2;
  }

  else
  {
    var2 = 0;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInt:var2];
  [v6 setObject:v12 forKeyedSubscript:@"forceH264"];

  [v6 setObject:&unk_285225368 forKeyedSubscript:@"expectedFPS"];
  v13 = [MEMORY[0x277CBEB68] null];
  [v6 setObject:v13 forKeyedSubscript:@"extraConfigs"];

  [(NSMutableDictionary *)self->_trackAddedByStream setObject:v6 forKeyedSubscript:v17];
  v14 = objc_opt_new();
  [(NSMutableDictionary *)self->_frameMetadataDictionary setObject:v14 forKeyedSubscript:v17];

  if (!self->_firstSteamID)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithString:v17];
    firstSteamID = self->_firstSteamID;
    self->_firstSteamID = v15;
  }
}

- (void)registerStreamID:(id)a3 withConfigObject:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setObject:&unk_285225368 forKeyedSubscript:@"added"];
  v8 = MEMORY[0x277CCABB0];
  if (v6)
  {
    v9 = [v6 lossless];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 numberWithInt:v9];
  [v7 setObject:v10 forKeyedSubscript:@"lossless"];

  v11 = MEMORY[0x277CCABB0];
  if (v6)
  {
    [v6 bitrate];
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [v11 numberWithFloat:v12];
  [v7 setObject:v13 forKeyedSubscript:@"bitrate"];

  v14 = MEMORY[0x277CCABB0];
  if (v6)
  {
    v15 = [v6 forceH264];
  }

  else
  {
    v15 = 0;
  }

  v16 = [v14 numberWithInt:v15];
  [v7 setObject:v16 forKeyedSubscript:@"forceH264"];

  v17 = MEMORY[0x277CCABB0];
  if (v6)
  {
    [v6 expectedFPS];
    v18 = [v17 numberWithFloat:?];
    [v7 setObject:v18 forKeyedSubscript:@"expectedFPS"];

    [v6 extraConfigs];
  }

  else
  {
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    [v7 setObject:v19 forKeyedSubscript:@"expectedFPS"];

    [MEMORY[0x277CBEB68] null];
  }
  v20 = ;
  [v7 setObject:v20 forKeyedSubscript:@"extraConfigs"];

  [(NSMutableDictionary *)self->_trackAddedByStream setObject:v7 forKeyedSubscript:v24];
  v21 = objc_opt_new();
  [(NSMutableDictionary *)self->_frameMetadataDictionary setObject:v21 forKeyedSubscript:v24];

  if (!self->_firstSteamID)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithString:v24];
    firstSteamID = self->_firstSteamID;
    self->_firstSteamID = v22;
  }
}

- (BOOL)addCVADepthIRTrackWithDimensions:(id)a3
{
  formatDescriptionOut = 0;
  if (CMVideoFormatDescriptionCreate(*MEMORY[0x277CBECE8], 0x31332E33u, a3.var0, a3.var1, 0, &formatDescriptionOut))
  {
    v4 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_24016D000, v4, OS_LOG_TYPE_ERROR, "MOVKit:MOVWriterInterface - ERROR - failed to create video format description for the depth IR data track", v8, 2u);
    }

    return 0;
  }

  else
  {
    v6 = [(MOVWriterInterface *)self addVideoTrack:formatDescriptionOut streamID:@"com.apple.reality.kind.data.pcam_avdepth" encoding:0];
    if (v6)
    {
      v7 = [(NSMutableDictionary *)self->_trackAddedByStream objectForKeyedSubscript:@"com.apple.reality.kind.data.pcam_avdepth"];
      [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"added"];
    }

    CFRelease(formatDescriptionOut);
    return v6;
  }
}

- (void)addFirstBufferForStream:(id)a3 buffer:(__CVBuffer *)a4 withTimestamp:(id *)a5
{
  v8 = a3;
  CVPixelBufferRetain(a4);
  v9 = [TimedBuffer alloc];
  v12 = *a5;
  v10 = [(TimedBuffer *)v9 initWithBuffer:a4 atTimestamp:&v12];
  [(MOVWriterInterface *)self clearFirstBufferForStream:v8];
  v11 = [(MOVWriterInterface *)self firstFrameContainer];
  [v11 setObject:v10 forKeyedSubscript:v8];
}

- (__CVBuffer)getFirstBufferForStream:(id)a3 withTimestamp:(id *)a4
{
  v6 = a3;
  v7 = [(MOVWriterInterface *)self firstFrameContainer];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(MOVWriterInterface *)self firstFrameContainer];
    v10 = [v9 objectForKeyedSubscript:v6];
    v11 = [v10 buffer];

    v12 = [(MOVWriterInterface *)self firstFrameContainer];
    v13 = [v12 objectForKeyedSubscript:v6];
    v14 = v13;
    if (v13)
    {
      [v13 timestamp];
    }

    else
    {
      v16 = 0uLL;
      v17 = 0;
    }

    *&a4->var0 = v16;
    a4->var3 = v17;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)receivedAllFramesForStreams:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(MOVWriterInterface *)self firstFrameContainer];
        v11 = [v10 objectForKeyedSubscript:v9];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)intelligentlyAppendBuffersForStreams:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MOVWriterInterface *)self firstFrameContainer];
  v6 = [v5 keysSortedByValueUsingComparator:&unk_28521ABA8];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v26;
    *&v9 = 138412546;
    v23 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 == v11)
        {
          v13 = *(*(&v25 + 1) + 8 * i);
          if ([v4 containsObject:v13])
          {
            goto LABEL_12;
          }
        }

        else
        {
          objc_enumerationMutation(v7);
          v13 = *(*(&v25 + 1) + 8 * i);
          if ([v4 containsObject:v13])
          {
LABEL_12:
            v14 = [(MOVWriterInterface *)self firstFrameContainer];
            v15 = [v14 objectForKeyedSubscript:v13];
            v16 = [v15 buffer];

            v24 = 0uLL;
            v17 = [(MOVWriterInterface *)self firstFrameContainer];
            v18 = [v17 objectForKeyedSubscript:v13];
            v19 = v18;
            if (v18)
            {
              [v18 timestamp];

              if (+[AppleCV3DMOVKitLog debugEnabled])
              {
LABEL_16:
                v20 = +[AppleCV3DMOVKitLog defaultLog];
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                {
                  *&time.value = v24;
                  time.epoch = 0;
                  Seconds = CMTimeGetSeconds(&time);
                  LODWORD(time.value) = v23;
                  *(&time.value + 4) = v13;
                  LOWORD(time.flags) = 2048;
                  *(&time.flags + 2) = Seconds;
                  _os_log_impl(&dword_24016D000, v20, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] Adding first frame for stream: %@ for ts: %f", &time, 0x16u);
                }
              }
            }

            else
            {
              v24 = 0uLL;

              if (+[AppleCV3DMOVKitLog debugEnabled])
              {
                goto LABEL_16;
              }
            }

            *&time.value = v24;
            time.epoch = 0;
            [(MOVStreamWriter *)self appendPixelBuffer:v16 presentationTime:&time toStreamId:v13];
          }
        }

        [(MOVWriterInterface *)self clearFirstBufferForStream:v13, v23];
      }

      v10 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  [(MOVWriterInterface *)self setFirstFrameContainer:0];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)clearFirstBufferForStream:(id)a3
{
  v10 = a3;
  v4 = [(MOVWriterInterface *)self firstFrameContainer];
  v5 = [v4 objectForKeyedSubscript:v10];

  if (v5)
  {
    v6 = [(MOVWriterInterface *)self firstFrameContainer];
    v7 = [v6 objectForKeyedSubscript:v10];
    v8 = [v7 buffer];

    v9 = [(MOVWriterInterface *)self firstFrameContainer];
    [v9 setObject:0 forKeyedSubscript:v10];

    CVPixelBufferRelease(v8);
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
    v27 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Streams with 13.3 format requires lossless encoding" userInfo:0];
    objc_exception_throw(v27);
  }

  v13 = [MEMORY[0x277D256B8] slimEncoderConfig];
LABEL_22:
  v16 = v13;
  v17 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v13];
  [v17 setObject:&unk_285225368 forKeyedSubscript:*MEMORY[0x277D256D8]];
  v18 = [v7 objectForKeyedSubscript:@"expectedFPS"];
  [v18 floatValue];
  v20 = v19;

  if (v20 > 0.0)
  {
    v21 = [v7 objectForKeyedSubscript:@"expectedFPS"];
    [v17 setObject:v21 forKeyedSubscript:*MEMORY[0x277D256D0]];
  }

  v22 = [v7 objectForKeyedSubscript:@"extraConfigs"];
  v23 = [MEMORY[0x277CBEB68] null];
  v24 = [v22 isEqual:v23];

  if ((v24 & 1) == 0)
  {
    v25 = [v7 objectForKeyedSubscript:@"extraConfigs"];
    [v17 addEntriesFromDictionary:v25];
  }

  return v17;
}

- (BOOL)addVideoTrack:(opaqueCMFormatDescription *)a3 streamID:(id)a4 encoding:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  lastError = self->_lastError;
  self->_lastError = 0;

  if (!v9)
  {
    v9 = [(MOVWriterInterface *)self getSuggestedEncodingOptionsForFormat:a3 streamID:v8];
  }

  [(MOVStreamWriter *)self addTrackForStreamWithIdentifier:v8 formatDescription:a3 recordingConfiguration:v9];
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v11 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_24016D000, v11, OS_LOG_TYPE_DEBUG, "MOVKit:MOVWriterInterface - Added track %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)processPixelBuffer:(__CVBuffer *)a3 withTimeStamp:(id *)a4 beforeAppend:(id)a5 streamID:(id)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v46 = a5;
  v47 = a6;
  v8 = self;
  objc_sync_enter(v8);
  lastError = v8->_lastError;
  v8->_lastError = 0;

  v10 = [(NSMutableDictionary *)v8->_trackAddedByStream valueForKey:v8->_firstSteamID];

  if (v10)
  {
    v11 = [(NSMutableDictionary *)v8->_trackAddedByStream objectForKeyedSubscript:v8->_firstSteamID];
    v12 = [v11 objectForKeyedSubscript:@"added"];
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = 0;
  }

  if ((([v47 isEqualToString:v8->_firstSteamID] | v13) & 1) == 0)
  {
    objc_sync_exit(v8);

    goto LABEL_44;
  }

  v14 = [(NSMutableDictionary *)v8->_trackAddedByStream valueForKey:v47];

  obj = v8;
  if (!v14 || (-[NSMutableDictionary objectForKeyedSubscript:](v8->_trackAddedByStream, "objectForKeyedSubscript:", v47), v15 = objc_claimAutoreleasedReturnValue(), [v15 objectForKeyedSubscript:@"added"], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "BOOLValue"), v16, v15, (v17 & 1) == 0))
  {
    v18 = [MEMORY[0x277D256B8] formatForPixelBuffer:a3];
    if ([(MOVWriterInterface *)v8 addVideoTrack:v18 streamID:v47 encoding:0])
    {
      v19 = [(NSMutableDictionary *)v8->_trackAddedByStream objectForKeyedSubscript:v47];
      v20 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v19 setObject:v20 forKeyedSubscript:@"added"];
    }

    CFRelease(v18);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v21 = [(NSMutableDictionary *)v8->_trackAddedByStream allKeys];
  v22 = [v21 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (!v22)
  {

    p_isa = &v8->super.super.isa;
    if (v8->_prepared)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v23 = *v51;
  v24 = 1;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v51 != v23)
      {
        objc_enumerationMutation(v21);
      }

      v26 = [(NSMutableDictionary *)obj->_trackAddedByStream objectForKeyedSubscript:*(*(&v50 + 1) + 8 * i)];
      v27 = [v26 objectForKeyedSubscript:@"added"];
      v28 = [v27 BOOLValue];

      v24 &= v28;
    }

    v22 = [v21 countByEnumeratingWithState:&v50 objects:v58 count:16];
  }

  while (v22);

  p_isa = &obj->super.super.isa;
  if ((v24 & 1) != 0 && !obj->_prepared)
  {
LABEL_22:
    if ([p_isa[73] count] == 1)
    {
      firstFrameContainer = obj->_firstFrameContainer;
      obj->_firstFrameContainer = 0;
    }

    v31 = [(MOVWriterInterface *)obj createFileMetadata];
    [(MOVStreamWriter *)obj prepareToRecordWithMovieMetadata:v31];
    obj->_prepared = 1;

    p_isa = &obj->super.super.isa;
  }

LABEL_25:
  objc_sync_exit(p_isa);

  v32 = obj;
  if (!obj->_isReady)
  {
    goto LABEL_44;
  }

  if (v46)
  {
    v46[2](v46, a3);
    v32 = obj;
  }

  [(MOVWriterInterface *)v32 setMetadataAttachmentTo:a3 streamID:v47];
  v33 = &obj->super.super.isa;
  if (obj->_firstFrameContainer)
  {
    if (+[AppleCV3DMOVKitLog debugEnabled])
    {
      v34 = +[AppleCV3DMOVKitLog defaultLog];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        time = *a4;
        Seconds = CMTimeGetSeconds(&time);
        *buf = 138412546;
        v55 = v47;
        v56 = 2048;
        v57 = Seconds;
        _os_log_impl(&dword_24016D000, v34, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] First frame received for: %@ at ts: %f", buf, 0x16u);
      }

      v33 = &obj->super.super.isa;
    }

    time = *a4;
    [v33 addFirstBufferForStream:v47 buffer:a3 withTimestamp:&time];
    v36 = [v33[73] allKeys];
    v37 = [v33 receivedAllFramesForStreams:v36];

    if (v37)
    {
      v38 = &obj->super.super.isa;
      if (+[AppleCV3DMOVKitLog debugEnabled])
      {
        v39 = +[AppleCV3DMOVKitLog defaultLog];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(time.value) = 0;
          _os_log_impl(&dword_24016D000, v39, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] All first being written", &time, 2u);
        }

        v38 = &obj->super.super.isa;
      }

      v40 = [v38[73] allKeys];
      [v38 intelligentlyAppendBuffersForStreams:v40];

      v33 = &obj->super.super.isa;
      goto LABEL_40;
    }

LABEL_44:
    v41 = 0;
    goto LABEL_45;
  }

  time = *a4;
  [(MOVStreamWriter *)obj appendPixelBuffer:a3 presentationTime:&time toStreamId:v47];
LABEL_40:
  if ([v33[74] isEqualToString:v47] && obj->_writeMetadataTimeInterval <= 0.0)
  {
    time = *a4;
    [(MOVWriterInterface *)obj appendAllMetadataWithTimeStamp:&time];
  }

  v41 = 1;
LABEL_45:

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

- (BOOL)processPixelBuffer:(__CVBuffer *)a3 withTimeStamp:(id *)a4 intrinsics:(id *)a5 exposureTime:(double)a6 streamID:(id)a7
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2401955E4;
  v9[3] = &unk_278C9B1A0;
  v9[4] = self;
  v9[5] = a5;
  *&v9[6] = a6;
  v8 = *a4;
  return [(MOVWriterInterface *)self processPixelBuffer:a3 withTimeStamp:&v8 beforeAppend:v9 streamID:a7];
}

- (BOOL)processCVADepthIR:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType([v4 dataBuffer]);
  if (PixelFormatType == 825437747)
  {
    v5 = [v4 dataBuffer];
    [v4 timestamp];
    [MOVWriterInterface cmTimeFromTimestamp:?];
    v6 = [(MOVWriterInterface *)self processPixelBuffer:v5 withTimeStamp:buf beforeAppend:0 streamID:@"com.apple.reality.kind.data.pcam_avdepth"];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:&PixelFormatType length:4 encoding:1 freeWhenDone:0];
    v8 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_24016D000, v8, OS_LOG_TYPE_ERROR, "MOVKit:MOVWriterInterface - ERROR - pixel format type for depth IR data should be kCVPixelFormatType_FixedPointUnsigned13_3, but received pixel buffer with format '%@'", buf, 0xCu);
    }

    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
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

- (void)finishWriting:(id *)a3
{
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v5 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_24016D000, v5, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] FinishWriting", buf, 2u);
    }
  }

  v6 = self;
  objc_sync_enter(v6);
  v6->_isReady = 0;
  objc_sync_exit(v6);

  if (a3)
  {
    *a3 = 0;
  }

  memset(buf, 0, sizeof(buf));
  v10 = 0;
  [MOVWriterInterface cmTimeFromTimestamp:CACurrentMediaTime()];
  v7 = *buf;
  v8 = v10;
  [(MOVWriterInterface *)v6 appendAllMetadataWithTimeStamp:&v7];
  [(MOVStreamWriter *)v6 finishRecording];
}

- (void)streamWriterDidFinishPreparing
{
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v3 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_24016D000, v3, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] StreamWriterDidFinishPreparing", v8, 2u);
    }
  }

  v4 = self;
  objc_sync_enter(v4);
  v4->_isReady = 1;
  objc_sync_exit(v4);

  WeakRetained = objc_loadWeakRetained(&v4->_interface_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&v4->_interface_delegate);
    [v7 isReadyToRecord];
  }
}

- (void)streamWriterDidFailWithError:(id)a3
{
  v13 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = MEMORY[0x277CCA9B8];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v13 description];
  v8 = [v6 stringWithFormat:@"StreamWriter failure: %@", v7];
  v9 = [v5 movWriterInterfaceErrorWithMessage:v8 code:5];
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

- (void)streamWriterDidFinishRecording
{
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v3 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_24016D000, v3, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] StreamWriterDidFinishRecording", v8, 2u);
    }
  }

  v4 = self;
  objc_sync_enter(v4);
  v4->_isReady = 0;
  objc_sync_exit(v4);

  WeakRetained = objc_loadWeakRetained(&v4->_interface_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&v4->_interface_delegate);
    [v7 didFinishRecording];
  }
}

- (void)streamWriterEncounteredAnError:(id)a3
{
  v13 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = MEMORY[0x277CCA9B8];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v13 description];
  v8 = [v6 stringWithFormat:@"StreamWriter error: %@", v7];
  v9 = [v5 movWriterInterfaceErrorWithMessage:v8 code:5];
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

- (void)streamWriter:(id)a3 stream:(id)a4 preparedTrackInputs:(id)a5 mediaType:(int64_t)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v9 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&dword_24016D000, v9, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] StreamWriter prepared track inputs for %@", buf, 0xCu);
    }
  }

  if ([v7 isEqualToString:@"com.apple.reality.kind.data.pcam_avdepth"])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      v14 = *MEMORY[0x277CE5CD0];
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v17 + 1) + 8 * v15++) setMediaDataLocation:{v14, v17}];
        }

        while (v12 != v15);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
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
    [(MOVWriterInterface *)self appendMetadata:v8 metadataID:v10 timestamp:v9];
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

    [(MOVWriterInterface *)self appendMetadata:v9 metadataID:v12 timestamp:v11];
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
    [(MOVWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
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
    [(MOVWriterInterface *)self appendMetadata:v8 metadataID:v9 timestamp:?];
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
    [(MOVWriterInterface *)self appendMetadata:v8 metadataID:v9 timestamp:?];
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
    [(MOVWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
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
    [(MOVWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
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
    [(MOVWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
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
    [(MOVWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
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
    [(MOVWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
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
    [(MOVWriterInterface *)self appendMetadata:v4 metadataID:barometerTrackName timestamp:?];
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
    [(MOVWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
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
    [(MOVWriterInterface *)self appendMetadata:v7 metadataID:v8 timestamp:?];
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
    [(MOVWriterInterface *)self appendMetadata:v6 metadataID:v7 timestamp:?];
  }
}

- (void)processCoreLocationData:(id)a3 timestamp:(double)a4 andAdditionalData:(id)a5 location:(int64_t *)a6
{
  v9 = [CVAMetadataWrapper encodeCoreLocationData:a3 timestamp:a5 andAdditionalData:?];
  if (v9)
  {
    v11 = v9;
    v10 = [CVAMetadataWrapperTracks locationTrackName:a6 prefix:self->_locationTrackName];
    [(MOVWriterInterface *)self appendMetadata:v11 metadataID:v10 timestamp:a4];

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
    [(MOVWriterInterface *)self appendMetadata:v4 metadataID:@"CMData" timestamp:?];
  }
}

- (void)processCVAUserEvent:(id)a3
{
  v5 = a3;
  v4 = [v5 toData];
  if (v4)
  {
    [v5 timestamp];
    [(MOVWriterInterface *)self appendMetadata:v4 metadataID:@"CVAUserEvent" timestamp:?];
  }
}

- (void)processCVATimedValue:(id)a3
{
  v5 = a3;
  v4 = [v5 toData];
  if (v4)
  {
    [v5 timestamp];
    [(MOVWriterInterface *)self appendMetadata:v4 metadataID:@"CVATimedValue" timestamp:?];
  }
}

- (void)processCVAPRDevice:(id)a3
{
  v5 = a3;
  v4 = [v5 toData];
  if (v4)
  {
    [v5 timestamp];
    [(MOVWriterInterface *)self appendMetadata:v4 metadataID:@"CVAPRDevice" timestamp:?];
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
    [(MOVWriterInterface *)self appendMetadata:v15 metadataID:v16 timestamp:a4];
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
    [(MOVWriterInterface *)self appendMetadata:v4 metadataID:v5 timestamp:?];
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
      v12 = [v10 movWriterInterfaceErrorWithMessage:v11 code:1];
      v13 = self->_lastError;
      self->_lastError = v12;

      v9 = v11;
    }

    else
    {
      depthTOFTrackName = self->_depthTOFTrackName;
      [v4 timestamp];
      [(MOVWriterInterface *)self appendMetadata:v7 metadataID:depthTOFTrackName timestamp:?];
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
    [(MOVWriterInterface *)self appendMetadata:v4 metadataID:@"CVACameraCalibration" timestamp:0 enforceMonotonicity:?];
  }
}

- (void)processClass:(id)a3 andAdditionalData:(id)a4 metadataID:(id)a5
{
  v9 = a5;
  v8 = [CVAMetadataWrapper encodeClass:a3 andAdditionalData:a4];
  if (v8)
  {
    [(MOVWriterInterface *)self appendMetadata:v8 metadataID:v9];
  }
}

- (void)processClass:(id)a3 andAdditionalData:(id)a4 metadataID:(id)a5 timestamp:(double)a6
{
  v11 = a5;
  v10 = [CVAMetadataWrapper encodeClass:a3 andAdditionalData:a4];
  if (v10)
  {
    [(MOVWriterInterface *)self appendMetadata:v10 metadataID:v11 timestamp:a6];
  }
}

- (void)processNSCoderObject:(id)a3 metadataID:(id)a4
{
  v7 = a4;
  v6 = [CVAMetadataWrapper encodeNSCoderObject:a3];
  if (v6)
  {
    [(MOVWriterInterface *)self appendMetadata:v6 metadataID:v7];
  }
}

- (void)processNSCoderObject:(id)a3 metadataID:(id)a4 timestamp:(double)a5
{
  v9 = a4;
  v8 = [CVAMetadataWrapper encodeNSCoderObject:a3];
  if (v8)
  {
    [(MOVWriterInterface *)self appendMetadata:v8 metadataID:v9 timestamp:a5];
  }
}

- (void)appendMetadata:(id)a3 metadataID:(id)a4 timestamp:(double)a5 enforceMonotonicity:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = self;
  objc_sync_enter(v12);
  if (v12->_isReady)
  {
    if (v6)
    {
      lastError = v12->_lastError;
      v12->_lastError = 0;

      v14 = [(NSMutableDictionary *)v12->_metadataLastTimestamp objectForKeyedSubscript:v11];
      v15 = v14;
      if (v14)
      {
        [v14 doubleValue];
        if (v16 > a5)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ timestamp %.6f is older than %.6f", v11, *&a5, *&v16];
          v26 = [MEMORY[0x277CCA9B8] movWriterInterfaceErrorWithMessage:v19 code:0];
          v27 = v12->_lastError;
          v12->_lastError = v26;

          goto LABEL_19;
        }
      }

      v17 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
      [(NSMutableDictionary *)v12->_metadataLastTimestamp setObject:v17 forKeyedSubscript:v11];
    }

    v15 = [(NSMutableDictionary *)v12->_metadataAttachmentArrays objectForKeyedSubscript:v11];
    [v15 addObject:v10];
    if (a5 < 0.0)
    {
LABEL_20:

      goto LABEL_21;
    }

    v18 = [(NSMutableDictionary *)v12->_metadataMaxBufferSize objectForKeyedSubscript:v11];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 unsignedIntValue];
      if ([v15 count] > v20 && (v12->_lastAppendMetadata.flags & 1) != 0)
      {
        v21 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
        [v15 removeAllObjects];
        memset(&v31, 0, sizeof(v31));
        [MOVWriterInterface cmTimeFromTimestamp:a5];
        v30.receiver = v12;
        v30.super_class = MOVWriterInterface;
        time1 = v31;
        [(MOVStreamWriter *)&v30 appendMetadata:v21 withTimeStamp:&time1 toStream:v11];
        v22 = *&v31.value;
        v12->_lastAppendMetadata.epoch = v31.epoch;
        *&v12->_lastAppendMetadata.value = v22;
      }
    }

    if (v12->_writeMetadataTimeInterval > 0.0)
    {
      v23 = [(NSMutableDictionary *)v12->_metadataAttachmentArraysTimestamp objectForKeyedSubscript:v11];
      if (!v23)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
        [(NSMutableDictionary *)v12->_metadataAttachmentArraysTimestamp setObject:v24 forKeyedSubscript:v11];
      }

      memset(&v31, 0, sizeof(v31));
      [MOVWriterInterface cmTimeFromTimestamp:a5 - v12->_writeMetadataTimeInterval];
      if ((v12->_lastAppendMetadata.flags & 1) == 0 || (time1 = v31, v25 = *&v12->_lastAppendMetadata.value, time2.epoch = v12->_lastAppendMetadata.epoch, *&time2.value = v25, CMTimeCompare(&time1, &time2) >= 1))
      {
        [MOVWriterInterface cmTimeFromTimestamp:a5];
        [(MOVWriterInterface *)v12 appendAllMetadataWithTimeStamp:&time1];
      }
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_21:
  objc_sync_exit(v12);
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
  v32 = *MEMORY[0x277D85DE8];
  v3 = self;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)v3->_metadataAttachmentArrays allKeys];
  if (v3->_writeMetadataTimeInterval > 0.0)
  {
    v5 = [(NSMutableDictionary *)v3->_metadataAttachmentArrays allKeys];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_240198004;
    v30[3] = &unk_278C9B1C8;
    v30[4] = v3;
    v6 = [v5 sortedArrayUsingComparator:v30];

    v4 = v6;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      v9 = 0;
      v18 = v7;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        v11 = [(NSMutableDictionary *)v3->_metadataAttachmentArrays objectForKeyedSubscript:v10];
        v12 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
        [v11 removeAllObjects];
        if ([v12 count])
        {
          v13 = [(NSMutableDictionary *)v3->_metadataAttachmentArraysTimestamp objectForKeyedSubscript:v10];
          v14 = v13;
          if (v13)
          {
            v24 = 0uLL;
            var3 = 0;
            [v13 doubleValue];
            [MOVWriterInterface cmTimeFromTimestamp:?];
            v23.receiver = v3;
            v23.super_class = MOVWriterInterface;
            v21 = v24;
            v22 = var3;
            [(MOVStreamWriter *)&v23 appendMetadata:v12 withTimeStamp:&v21 toStream:v10];
            [(NSMutableDictionary *)v3->_metadataAttachmentArraysTimestamp setObject:0 forKeyedSubscript:v10];
            v7 = v18;
          }

          else
          {
            v20.receiver = v3;
            v20.super_class = MOVWriterInterface;
            v24 = *&a3->var0;
            var3 = a3->var3;
            [(MOVStreamWriter *)&v20 appendMetadata:v12 withTimeStamp:&v24 toStream:v10];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v15 = a3->var3;
  *&v3->_lastAppendMetadata.value = *&a3->var0;
  v3->_lastAppendMetadata.epoch = v15;

  objc_sync_exit(v3);
  v16 = *MEMORY[0x277D85DE8];
}

- (MOVWriterInterfaceDelegate)interface_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interface_delegate);

  return WeakRetained;
}

@end