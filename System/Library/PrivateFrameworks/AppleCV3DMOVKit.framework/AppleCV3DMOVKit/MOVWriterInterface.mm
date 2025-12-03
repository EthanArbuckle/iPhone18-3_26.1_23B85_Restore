@interface MOVWriterInterface
+ (BOOL)getSWToWExtrinsics:(id *)extrinsics;
- (BOOL)addCVADepthIRTrackWithDimensions:(id)dimensions;
- (BOOL)addVideoTrack:(opaqueCMFormatDescription *)track streamID:(id)d encoding:(id)encoding;
- (BOOL)processCVADepthIR:(id)r;
- (BOOL)processPixelBuffer:(__CVBuffer *)buffer withTimeStamp:(id *)stamp beforeAppend:(id)append streamID:(id)d;
- (BOOL)processPixelBuffer:(__CVBuffer *)buffer withTimeStamp:(id *)stamp intrinsics:(id *)intrinsics exposureTime:(double)time streamID:(id)d;
- (BOOL)receivedAllFramesForStreams:(id)streams;
- (BOOL)setTrackMetadata:(id)metadata forMetadataStream:(id)stream;
- (MOVWriterInterface)initWithFileURL:(id)l expectedFrameRate:(double)rate fileSummary:(id)summary;
- (MOVWriterInterface)initWithFileURL:(id)l expectedFrameRate:(double)rate fileSummary:(id)summary callbackQueue:(id)queue;
- (MOVWriterInterfaceDelegate)interface_delegate;
- (__CVBuffer)getFirstBufferForStream:(id)stream withTimestamp:(id *)timestamp;
- (id)addDefaultSummary;
- (id)arrayFrom3x3Matrix:(id *)matrix;
- (id)createFileMetadata;
- (id)getSuggestedEncodingOptionsForFormat:(opaqueCMFormatDescription *)format streamID:(id)d;
- (void)addFirstBufferForStream:(id)stream buffer:(__CVBuffer *)buffer withTimestamp:(id *)timestamp;
- (void)addFrameMetadata:(id)metadata streamID:(id)d;
- (void)addFrameMetadata:(id)metadata value:(id)value streamID:(id)d;
- (void)addJasperExtrinsics:(id)extrinsics;
- (void)addMovieMetadataData:(id)data rawValue:(id)value;
- (void)addMovieMetadataDictionary:(id)dictionary value:(id)value;
- (void)addMovieMetadataItem:(id)item;
- (void)addSWToWExtrinsics:(id)extrinsics;
- (void)appendAllMetadataWithTimeStamp:(id *)stamp;
- (void)appendMetadata:(id)metadata metadataID:(id)d timestamp:(double)timestamp enforceMonotonicity:(BOOL)monotonicity;
- (void)clearAllMetadataBuffers;
- (void)clearFirstBufferForStream:(id)stream;
- (void)finishWriting:(id *)writing;
- (void)intelligentlyAppendBuffersForStreams:(id)streams;
- (void)processALSData:(id)data location:(int64_t *)location;
- (void)processAccelerometerData:(id)data andAdditionalData:(id)additionalData location:(int64_t *)location;
- (void)processBLEData:(id)data location:(int64_t *)location;
- (void)processBarometerData:(id)data;
- (void)processCMData:(id)data;
- (void)processCVACameraCalibrationData:(id)data;
- (void)processCVADepthTOF:(id)f;
- (void)processCVAFeatureBuffer:(__CVBuffer *)buffer timestamp:(double)timestamp syncTimestamp:(unint64_t)syncTimestamp frameId:(unint64_t)id streamName:(id)name;
- (void)processCVAFeatureBuffer:(id)buffer;
- (void)processCVAPRDevice:(id)device;
- (void)processCVATimedValue:(id)value;
- (void)processCVAUserEvent:(id)event;
- (void)processClass:(id)class andAdditionalData:(id)data metadataID:(id)d;
- (void)processClass:(id)class andAdditionalData:(id)data metadataID:(id)d timestamp:(double)timestamp;
- (void)processCompassData:(id)data location:(int64_t *)location;
- (void)processCoreLocationData:(id)data timestamp:(double)timestamp andAdditionalData:(id)additionalData location:(int64_t *)location;
- (void)processDeviceMotionData:(id)data andAdditionalData:(id)additionalData location:(int64_t *)location;
- (void)processDeviceMotionData:(id)data location:(int64_t *)location;
- (void)processFastPathIMUData:(id)data location:(int64_t *)location;
- (void)processFastPathIMUData:(id)data location:(int64_t *)location metadataID:(id)d;
- (void)processGyroscopeData:(id)data andAdditionalData:(id)additionalData location:(int64_t *)location;
- (void)processMotionData:(id)data location:(int64_t *)location;
- (void)processNSCoderObject:(id)object metadataID:(id)d;
- (void)processNSCoderObject:(id)object metadataID:(id)d timestamp:(double)timestamp;
- (void)processSpuIMUData:(id)data location:(int64_t *)location;
- (void)processUWBData:(id)data location:(int64_t *)location;
- (void)processWiFiData:(id)data location:(int64_t *)location;
- (void)registerALS:(int64_t *)s;
- (void)registerAccelerometer:(int64_t *)accelerometer;
- (void)registerBLE:(int64_t *)e;
- (void)registerCVADepthIR;
- (void)registerCVAFeatureBuffer;
- (void)registerCompass:(int64_t *)compass;
- (void)registerDeviceMotion:(int64_t *)motion;
- (void)registerGyro:(int64_t *)gyro;
- (void)registerLocation:(int64_t *)location;
- (void)registerMetadataID:(id)d;
- (void)registerMetadataID:(id)d maxBufferSize:(unint64_t)size;
- (void)registerMotion:(int64_t *)motion;
- (void)registerSpuIMU:(int64_t *)u version:(int64_t)version;
- (void)registerStreamID:(id)d config:(id *)config;
- (void)registerStreamID:(id)d withConfigObject:(id)object;
- (void)registerUWB:(int64_t *)b;
- (void)registerWiFi:(int64_t *)fi;
- (void)setMetadataAttachmentTo:(__CVBuffer *)to streamID:(id)d;
- (void)streamWriter:(id)writer stream:(id)stream preparedTrackInputs:(id)inputs mediaType:(int64_t)type;
- (void)streamWriterDidFailWithError:(id)error;
- (void)streamWriterDidFinishPreparing;
- (void)streamWriterDidFinishRecording;
- (void)streamWriterEncounteredAnError:(id)error;
@end

@implementation MOVWriterInterface

- (MOVWriterInterface)initWithFileURL:(id)l expectedFrameRate:(double)rate fileSummary:(id)summary callbackQueue:(id)queue
{
  v62 = *MEMORY[0x277D85DE8];
  lCopy = l;
  summaryCopy = summary;
  queueCopy = queue;
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
  v14 = [(MOVStreamWriter *)&v60 initWithURL:lCopy andExpectedFrameRate:rate];
  v15 = v14;
  if (v14)
  {
    [(MOVStreamWriter *)v14 setDelegate:v14 callbackQueue:queueCopy];
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

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    infoDictionary = [mainBundle infoDictionary];
    v42 = [infoDictionary objectForKey:@"CFBundleVersion"];
    version = v15->_version;
    v15->_version = v42;

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle2 bundleIdentifier];
    bundleID = v15->_bundleID;
    v15->_bundleID = bundleIdentifier;

    v59 = 0uLL;
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    v48 = processInfo;
    if (processInfo)
    {
      [processInfo operatingSystemVersion];
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

    objc_storeStrong(&v15->_fileSummary, summary);
  }

  v57 = *MEMORY[0x277D85DE8];
  return v15;
}

- (MOVWriterInterface)initWithFileURL:(id)l expectedFrameRate:(double)rate fileSummary:(id)summary
{
  summaryCopy = summary;
  lCopy = l;
  v10 = dispatch_queue_create("com.apple.vio.applecv3dmovkit.movwriterinterface.recordercallback", 0);
  v11 = [(MOVWriterInterface *)self initWithFileURL:lCopy expectedFrameRate:summaryCopy fileSummary:v10 callbackQueue:rate];

  return v11;
}

- (BOOL)setTrackMetadata:(id)metadata forMetadataStream:(id)stream
{
  v6 = MEMORY[0x277CBEB38];
  streamCopy = stream;
  v8 = [v6 dictionaryWithDictionary:metadata];
  v9 = [(NSMutableDictionary *)self->_metadataTrackMetadata objectForKeyedSubscript:streamCopy];
  [v8 addEntriesFromDictionary:v9];

  v11.receiver = self;
  v11.super_class = MOVWriterInterface;
  LOBYTE(self) = [(MOVStreamWriter *)&v11 setTrackMetadata:v8 forMetadataStream:streamCopy];

  return self;
}

- (void)registerSpuIMU:(int64_t *)u version:(int64_t)version
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = [CVAMetadataWrapperTracks imuTrackName:u prefix:self->_spuIMUTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v6];
  v7 = MEMORY[0x277CBEB38];
  v12 = @"com.apple.AppleCV3DMOVKit.fastPathIMUVersion";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:version];
  v13[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v7 dictionaryWithDictionary:v9];
  [(NSMutableDictionary *)self->_metadataTrackMetadata setObject:v10 forKeyedSubscript:v6];

  [(MOVWriterInterface *)self setTrackMetadata:0 forMetadataStream:v6];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)registerAccelerometer:(int64_t *)accelerometer
{
  v4 = [CVAMetadataWrapperTracks accelerometerTrackName:accelerometer prefix:self->_accelTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerGyro:(int64_t *)gyro
{
  v4 = [CVAMetadataWrapperTracks gyroTrackName:gyro prefix:self->_gyroTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerMotion:(int64_t *)motion
{
  v4 = [CVAMetadataWrapperTracks motionTrackName:motion prefix:self->_motionTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerDeviceMotion:(int64_t *)motion
{
  v4 = [CVAMetadataWrapperTracks deviceMotionTrackName:motion prefix:self->_deviceMotionTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerLocation:(int64_t *)location
{
  v4 = [CVAMetadataWrapperTracks locationTrackName:location prefix:self->_locationTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerALS:(int64_t *)s
{
  v4 = [CVAMetadataWrapperTracks alsTrackName:s prefix:self->_alsTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerWiFi:(int64_t *)fi
{
  v4 = [CVAMetadataWrapperTracks wifiTrackName:fi prefix:self->_wifiTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerUWB:(int64_t *)b
{
  v4 = [CVAMetadataWrapperTracks uwbTrackName:b prefix:self->_uwbTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerBLE:(int64_t *)e
{
  v4 = [CVAMetadataWrapperTracks bleTrackName:e prefix:self->_bleTrackName];
  [(MOVWriterInterface *)self registerMetadataID:v4];
}

- (void)registerCompass:(int64_t *)compass
{
  v4 = [CVAMetadataWrapperTracks compassTrackName:compass prefix:self->_compassTrackName];
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

- (void)registerMetadataID:(id)d
{
  dCopy = d;
  v4 = objc_opt_new();
  [(NSMutableDictionary *)self->_metadataAttachmentArrays setObject:v4 forKeyedSubscript:dCopy];

  [(MOVWriterInterface *)self setupMetadata:dCopy];
}

- (void)registerMetadataID:(id)d maxBufferSize:(unint64_t)size
{
  dCopy = d;
  [(MOVWriterInterface *)self registerMetadataID:dCopy];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size];
  [(NSMutableDictionary *)self->_metadataMaxBufferSize setObject:v7 forKeyedSubscript:dCopy];
}

- (void)addMovieMetadataDictionary:(id)dictionary value:(id)value
{
  v19 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  valueCopy = value;
  lastError = self->_lastError;
  self->_lastError = 0;

  if ([dictionaryCopy hasPrefix:@"mdta/"])
  {
    v9 = objc_opt_new();
    [v9 setIdentifier:dictionaryCopy];
    [v9 setDataType:*MEMORY[0x277CC0598]];
    [v9 setValue:valueCopy];
    [(NSMutableArray *)self->_movMetadataArray addObject:v9];
    if (+[AppleCV3DMOVKitLog debugEnabled])
    {
      v10 = +[AppleCV3DMOVKitLog defaultLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        identifier = [v9 identifier];
        *buf = 138412290;
        v18 = identifier;
        _os_log_impl(&dword_24016D000, v10, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] Added metadata item with NSDictionary %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    dictionaryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid identifer %@", dictionaryCopy];
    v14 = [v12 movWriterInterfaceErrorWithMessage:dictionaryCopy code:14];
    v15 = self->_lastError;
    self->_lastError = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addMovieMetadataData:(id)data rawValue:(id)value
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  valueCopy = value;
  lastError = self->_lastError;
  self->_lastError = 0;

  if ([dataCopy hasPrefix:@"mdta/"])
  {
    v9 = objc_opt_new();
    [v9 setIdentifier:dataCopy];
    [v9 setDataType:*MEMORY[0x277CC05B0]];
    [v9 setValue:valueCopy];
    [(NSMutableArray *)self->_movMetadataArray addObject:v9];
    if (+[AppleCV3DMOVKitLog debugEnabled])
    {
      v10 = +[AppleCV3DMOVKitLog defaultLog];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        identifier = [v9 identifier];
        *buf = 138412290;
        v18 = identifier;
        _os_log_impl(&dword_24016D000, v10, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] Added metadata item with NSData %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    dataCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid identifer %@", dataCopy];
    v14 = [v12 movWriterInterfaceErrorWithMessage:dataCopy code:14];
    v15 = self->_lastError;
    self->_lastError = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)addMovieMetadataItem:(id)item
{
  v10 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  [(NSMutableArray *)self->_movMetadataArray addObject:itemCopy];
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v5 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      identifier = [itemCopy identifier];
      v8 = 138412290;
      v9 = identifier;
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

+ (BOOL)getSWToWExtrinsics:(id *)extrinsics
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
      [v7 getBytes:extrinsics length:64];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addSWToWExtrinsics:(id)extrinsics
{
  v34[12] = *MEMORY[0x277D85DE8];
  extrinsicsCopy = extrinsics;
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

    [extrinsicsCopy setObject:v24 forKeyedSubscript:@"extrinsicsSWToW"];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)addJasperExtrinsics:(id)extrinsics
{
  v59 = *MEMORY[0x277D85DE8];
  extrinsicsCopy = extrinsics;
  v37 = [MEMORY[0x277CE5AC8] defaultDeviceWithDeviceType:*MEMORY[0x277CE5858] mediaType:0 position:1];
  if (v37)
  {
    v32 = extrinsicsCopy;
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

    extrinsicsCopy = v32;
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
  addDefaultSummary = [(MOVWriterInterface *)self addDefaultSummary];
  [v4 setValue:addDefaultSummary];

  [v3 addObject:v4];
  if (self->_calibration)
  {
    v6 = objc_opt_new();
    [v6 setIdentifier:@"mdta/com.apple.calibration"];
    [v6 setDataType:*MEMORY[0x277CC05B0]];
    toData = [(CVACalibration *)self->_calibration toData];
    [v6 setValue:toData];

    [v3 addObject:v6];
  }

  return v3;
}

- (void)registerStreamID:(id)d config:(id *)config
{
  dCopy = d;
  v6 = objc_opt_new();
  [v6 setObject:&unk_285225368 forKeyedSubscript:@"added"];
  if (config)
  {
    var0 = config->var0;
  }

  else
  {
    var0 = 0;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInt:var0];
  [v6 setObject:v8 forKeyedSubscript:@"lossless"];

  if (config)
  {
    *&v9 = config->var1;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  [v6 setObject:v10 forKeyedSubscript:@"bitrate"];

  if (config)
  {
    var2 = config->var2;
  }

  else
  {
    var2 = 0;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInt:var2];
  [v6 setObject:v12 forKeyedSubscript:@"forceH264"];

  [v6 setObject:&unk_285225368 forKeyedSubscript:@"expectedFPS"];
  null = [MEMORY[0x277CBEB68] null];
  [v6 setObject:null forKeyedSubscript:@"extraConfigs"];

  [(NSMutableDictionary *)self->_trackAddedByStream setObject:v6 forKeyedSubscript:dCopy];
  v14 = objc_opt_new();
  [(NSMutableDictionary *)self->_frameMetadataDictionary setObject:v14 forKeyedSubscript:dCopy];

  if (!self->_firstSteamID)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithString:dCopy];
    firstSteamID = self->_firstSteamID;
    self->_firstSteamID = v15;
  }
}

- (void)registerStreamID:(id)d withConfigObject:(id)object
{
  dCopy = d;
  objectCopy = object;
  v7 = objc_opt_new();
  [v7 setObject:&unk_285225368 forKeyedSubscript:@"added"];
  v8 = MEMORY[0x277CCABB0];
  if (objectCopy)
  {
    lossless = [objectCopy lossless];
  }

  else
  {
    lossless = 0;
  }

  v10 = [v8 numberWithInt:lossless];
  [v7 setObject:v10 forKeyedSubscript:@"lossless"];

  v11 = MEMORY[0x277CCABB0];
  if (objectCopy)
  {
    [objectCopy bitrate];
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [v11 numberWithFloat:v12];
  [v7 setObject:v13 forKeyedSubscript:@"bitrate"];

  v14 = MEMORY[0x277CCABB0];
  if (objectCopy)
  {
    forceH264 = [objectCopy forceH264];
  }

  else
  {
    forceH264 = 0;
  }

  v16 = [v14 numberWithInt:forceH264];
  [v7 setObject:v16 forKeyedSubscript:@"forceH264"];

  v17 = MEMORY[0x277CCABB0];
  if (objectCopy)
  {
    [objectCopy expectedFPS];
    v18 = [v17 numberWithFloat:?];
    [v7 setObject:v18 forKeyedSubscript:@"expectedFPS"];

    [objectCopy extraConfigs];
  }

  else
  {
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    [v7 setObject:v19 forKeyedSubscript:@"expectedFPS"];

    [MEMORY[0x277CBEB68] null];
  }
  v20 = ;
  [v7 setObject:v20 forKeyedSubscript:@"extraConfigs"];

  [(NSMutableDictionary *)self->_trackAddedByStream setObject:v7 forKeyedSubscript:dCopy];
  v21 = objc_opt_new();
  [(NSMutableDictionary *)self->_frameMetadataDictionary setObject:v21 forKeyedSubscript:dCopy];

  if (!self->_firstSteamID)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithString:dCopy];
    firstSteamID = self->_firstSteamID;
    self->_firstSteamID = v22;
  }
}

- (BOOL)addCVADepthIRTrackWithDimensions:(id)dimensions
{
  formatDescriptionOut = 0;
  if (CMVideoFormatDescriptionCreate(*MEMORY[0x277CBECE8], 0x31332E33u, dimensions.var0, dimensions.var1, 0, &formatDescriptionOut))
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

- (void)addFirstBufferForStream:(id)stream buffer:(__CVBuffer *)buffer withTimestamp:(id *)timestamp
{
  streamCopy = stream;
  CVPixelBufferRetain(buffer);
  v9 = [TimedBuffer alloc];
  v12 = *timestamp;
  v10 = [(TimedBuffer *)v9 initWithBuffer:buffer atTimestamp:&v12];
  [(MOVWriterInterface *)self clearFirstBufferForStream:streamCopy];
  firstFrameContainer = [(MOVWriterInterface *)self firstFrameContainer];
  [firstFrameContainer setObject:v10 forKeyedSubscript:streamCopy];
}

- (__CVBuffer)getFirstBufferForStream:(id)stream withTimestamp:(id *)timestamp
{
  streamCopy = stream;
  firstFrameContainer = [(MOVWriterInterface *)self firstFrameContainer];
  v8 = [firstFrameContainer objectForKeyedSubscript:streamCopy];

  if (v8)
  {
    firstFrameContainer2 = [(MOVWriterInterface *)self firstFrameContainer];
    v10 = [firstFrameContainer2 objectForKeyedSubscript:streamCopy];
    buffer = [v10 buffer];

    firstFrameContainer3 = [(MOVWriterInterface *)self firstFrameContainer];
    v13 = [firstFrameContainer3 objectForKeyedSubscript:streamCopy];
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

    *&timestamp->var0 = v16;
    timestamp->var3 = v17;
  }

  else
  {
    buffer = 0;
  }

  return buffer;
}

- (BOOL)receivedAllFramesForStreams:(id)streams
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  streamsCopy = streams;
  v5 = [streamsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(streamsCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        firstFrameContainer = [(MOVWriterInterface *)self firstFrameContainer];
        v11 = [firstFrameContainer objectForKeyedSubscript:v9];

        if (!v11)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v6 = [streamsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)intelligentlyAppendBuffersForStreams:(id)streams
{
  v31 = *MEMORY[0x277D85DE8];
  streamsCopy = streams;
  firstFrameContainer = [(MOVWriterInterface *)self firstFrameContainer];
  v6 = [firstFrameContainer keysSortedByValueUsingComparator:&unk_28521ABA8];

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
          if ([streamsCopy containsObject:v13])
          {
            goto LABEL_12;
          }
        }

        else
        {
          objc_enumerationMutation(v7);
          v13 = *(*(&v25 + 1) + 8 * i);
          if ([streamsCopy containsObject:v13])
          {
LABEL_12:
            firstFrameContainer2 = [(MOVWriterInterface *)self firstFrameContainer];
            v15 = [firstFrameContainer2 objectForKeyedSubscript:v13];
            buffer = [v15 buffer];

            v24 = 0uLL;
            firstFrameContainer3 = [(MOVWriterInterface *)self firstFrameContainer];
            v18 = [firstFrameContainer3 objectForKeyedSubscript:v13];
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
            [(MOVStreamWriter *)self appendPixelBuffer:buffer presentationTime:&time toStreamId:v13];
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

- (void)clearFirstBufferForStream:(id)stream
{
  streamCopy = stream;
  firstFrameContainer = [(MOVWriterInterface *)self firstFrameContainer];
  v5 = [firstFrameContainer objectForKeyedSubscript:streamCopy];

  if (v5)
  {
    firstFrameContainer2 = [(MOVWriterInterface *)self firstFrameContainer];
    v7 = [firstFrameContainer2 objectForKeyedSubscript:streamCopy];
    buffer = [v7 buffer];

    firstFrameContainer3 = [(MOVWriterInterface *)self firstFrameContainer];
    [firstFrameContainer3 setObject:0 forKeyedSubscript:streamCopy];

    CVPixelBufferRelease(buffer);
  }
}

- (id)getSuggestedEncodingOptionsForFormat:(opaqueCMFormatDescription *)format streamID:(id)d
{
  dCopy = d;
  v7 = [(NSMutableDictionary *)self->_trackAddedByStream objectForKeyedSubscript:dCopy];
  v8 = [v7 objectForKeyedSubscript:@"lossless"];
  bOOLValue = [v8 BOOLValue];

  v10 = [v7 objectForKeyedSubscript:@"bitrate"];
  integerValue = [v10 integerValue];

  MediaSubType = CMFormatDescriptionGetMediaSubType(format);
  if (MediaSubType != 825437747)
  {
    if (MediaSubType == 1278226488)
    {
      if (bOOLValue)
      {
        monochrome8bitHEVCLosslessEncoderConfig = [MEMORY[0x277D256B8] monochrome8bitHEVCLosslessEncoderConfig];
        goto LABEL_22;
      }

      if (integerValue)
      {
        [MEMORY[0x277D256B8] monochrome8bitHEVCEncoderConfigWithBitrate:integerValue];
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
          if (bOOLValue)
          {
            monochrome8bitHEVCLosslessEncoderConfig = [MEMORY[0x277D256B8] colorHEVCLosslessEncoderConfig];
            goto LABEL_22;
          }

          if (integerValue)
          {
            [MEMORY[0x277D256B8] colorHEVCEncoderConfigWithBitrate:integerValue];
          }

          else
          {
            [MEMORY[0x277D256B8] colorHEVCEncoderConfig];
          }

          goto LABEL_20;
        }
      }

      if (integerValue)
      {
        [MEMORY[0x277D256B8] colorH264EncoderConfigWithBitrate:integerValue];
      }

      else
      {
        [MEMORY[0x277D256B8] colorH264EncoderConfig];
      }
    }

    monochrome8bitHEVCLosslessEncoderConfig = LABEL_20:;
    goto LABEL_22;
  }

  if ((bOOLValue & 1) == 0)
  {
    v27 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Streams with 13.3 format requires lossless encoding" userInfo:0];
    objc_exception_throw(v27);
  }

  monochrome8bitHEVCLosslessEncoderConfig = [MEMORY[0x277D256B8] slimEncoderConfig];
LABEL_22:
  v16 = monochrome8bitHEVCLosslessEncoderConfig;
  v17 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:monochrome8bitHEVCLosslessEncoderConfig];
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
  null = [MEMORY[0x277CBEB68] null];
  v24 = [v22 isEqual:null];

  if ((v24 & 1) == 0)
  {
    v25 = [v7 objectForKeyedSubscript:@"extraConfigs"];
    [v17 addEntriesFromDictionary:v25];
  }

  return v17;
}

- (BOOL)addVideoTrack:(opaqueCMFormatDescription *)track streamID:(id)d encoding:(id)encoding
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  encodingCopy = encoding;
  lastError = self->_lastError;
  self->_lastError = 0;

  if (!encodingCopy)
  {
    encodingCopy = [(MOVWriterInterface *)self getSuggestedEncodingOptionsForFormat:track streamID:dCopy];
  }

  [(MOVStreamWriter *)self addTrackForStreamWithIdentifier:dCopy formatDescription:track recordingConfiguration:encodingCopy];
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v11 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v15 = dCopy;
      _os_log_impl(&dword_24016D000, v11, OS_LOG_TYPE_DEBUG, "MOVKit:MOVWriterInterface - Added track %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)processPixelBuffer:(__CVBuffer *)buffer withTimeStamp:(id *)stamp beforeAppend:(id)append streamID:(id)d
{
  v59 = *MEMORY[0x277D85DE8];
  appendCopy = append;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastError = selfCopy->_lastError;
  selfCopy->_lastError = 0;

  v10 = [(NSMutableDictionary *)selfCopy->_trackAddedByStream valueForKey:selfCopy->_firstSteamID];

  if (v10)
  {
    v11 = [(NSMutableDictionary *)selfCopy->_trackAddedByStream objectForKeyedSubscript:selfCopy->_firstSteamID];
    v12 = [v11 objectForKeyedSubscript:@"added"];
    bOOLValue = [v12 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  if ((([dCopy isEqualToString:selfCopy->_firstSteamID] | bOOLValue) & 1) == 0)
  {
    objc_sync_exit(selfCopy);

    goto LABEL_44;
  }

  v14 = [(NSMutableDictionary *)selfCopy->_trackAddedByStream valueForKey:dCopy];

  obj = selfCopy;
  if (!v14 || (-[NSMutableDictionary objectForKeyedSubscript:](selfCopy->_trackAddedByStream, "objectForKeyedSubscript:", dCopy), v15 = objc_claimAutoreleasedReturnValue(), [v15 objectForKeyedSubscript:@"added"], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "BOOLValue"), v16, v15, (v17 & 1) == 0))
  {
    v18 = [MEMORY[0x277D256B8] formatForPixelBuffer:buffer];
    if ([(MOVWriterInterface *)selfCopy addVideoTrack:v18 streamID:dCopy encoding:0])
    {
      v19 = [(NSMutableDictionary *)selfCopy->_trackAddedByStream objectForKeyedSubscript:dCopy];
      v20 = [MEMORY[0x277CCABB0] numberWithBool:1];
      [v19 setObject:v20 forKeyedSubscript:@"added"];
    }

    CFRelease(v18);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_trackAddedByStream allKeys];
  v22 = [allKeys countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (!v22)
  {

    p_isa = &selfCopy->super.super.isa;
    if (selfCopy->_prepared)
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
        objc_enumerationMutation(allKeys);
      }

      v26 = [(NSMutableDictionary *)obj->_trackAddedByStream objectForKeyedSubscript:*(*(&v50 + 1) + 8 * i)];
      v27 = [v26 objectForKeyedSubscript:@"added"];
      bOOLValue2 = [v27 BOOLValue];

      v24 &= bOOLValue2;
    }

    v22 = [allKeys countByEnumeratingWithState:&v50 objects:v58 count:16];
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

    createFileMetadata = [(MOVWriterInterface *)obj createFileMetadata];
    [(MOVStreamWriter *)obj prepareToRecordWithMovieMetadata:createFileMetadata];
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

  if (appendCopy)
  {
    appendCopy[2](appendCopy, buffer);
    v32 = obj;
  }

  [(MOVWriterInterface *)v32 setMetadataAttachmentTo:buffer streamID:dCopy];
  v33 = &obj->super.super.isa;
  if (obj->_firstFrameContainer)
  {
    if (+[AppleCV3DMOVKitLog debugEnabled])
    {
      v34 = +[AppleCV3DMOVKitLog defaultLog];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        time = *stamp;
        Seconds = CMTimeGetSeconds(&time);
        *buf = 138412546;
        v55 = dCopy;
        v56 = 2048;
        v57 = Seconds;
        _os_log_impl(&dword_24016D000, v34, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] First frame received for: %@ at ts: %f", buf, 0x16u);
      }

      v33 = &obj->super.super.isa;
    }

    time = *stamp;
    [v33 addFirstBufferForStream:dCopy buffer:buffer withTimestamp:&time];
    allKeys2 = [v33[73] allKeys];
    v37 = [v33 receivedAllFramesForStreams:allKeys2];

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

      allKeys3 = [v38[73] allKeys];
      [v38 intelligentlyAppendBuffersForStreams:allKeys3];

      v33 = &obj->super.super.isa;
      goto LABEL_40;
    }

LABEL_44:
    v41 = 0;
    goto LABEL_45;
  }

  time = *stamp;
  [(MOVStreamWriter *)obj appendPixelBuffer:buffer presentationTime:&time toStreamId:dCopy];
LABEL_40:
  if ([v33[74] isEqualToString:dCopy] && obj->_writeMetadataTimeInterval <= 0.0)
  {
    time = *stamp;
    [(MOVWriterInterface *)obj appendAllMetadataWithTimeStamp:&time];
  }

  v41 = 1;
LABEL_45:

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

- (BOOL)processPixelBuffer:(__CVBuffer *)buffer withTimeStamp:(id *)stamp intrinsics:(id *)intrinsics exposureTime:(double)time streamID:(id)d
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2401955E4;
  v9[3] = &unk_278C9B1A0;
  v9[4] = self;
  v9[5] = intrinsics;
  *&v9[6] = time;
  v8 = *stamp;
  return [(MOVWriterInterface *)self processPixelBuffer:buffer withTimeStamp:&v8 beforeAppend:v9 streamID:d];
}

- (BOOL)processCVADepthIR:(id)r
{
  v14 = *MEMORY[0x277D85DE8];
  rCopy = r;
  PixelFormatType = CVPixelBufferGetPixelFormatType([rCopy dataBuffer]);
  if (PixelFormatType == 825437747)
  {
    dataBuffer = [rCopy dataBuffer];
    [rCopy timestamp];
    [MOVWriterInterface cmTimeFromTimestamp:?];
    v6 = [(MOVWriterInterface *)self processPixelBuffer:dataBuffer withTimeStamp:buf beforeAppend:0 streamID:@"com.apple.reality.kind.data.pcam_avdepth"];
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

- (id)arrayFrom3x3Matrix:(id *)matrix
{
  if (matrix)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:9];
    LODWORD(v5) = *matrix;
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    [v4 addObject:v6];

    LODWORD(v7) = *(matrix + 1);
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    [v4 addObject:v8];

    LODWORD(v9) = *(matrix + 2);
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [v4 addObject:v10];

    LODWORD(v11) = *(matrix + 4);
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    [v4 addObject:v12];

    LODWORD(v13) = *(matrix + 5);
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    [v4 addObject:v14];

    LODWORD(v15) = *(matrix + 6);
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    [v4 addObject:v16];

    LODWORD(v17) = *(matrix + 8);
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    [v4 addObject:v18];

    LODWORD(v19) = *(matrix + 9);
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    [v4 addObject:v20];

    LODWORD(v21) = *(matrix + 10);
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

- (void)setMetadataAttachmentTo:(__CVBuffer *)to streamID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMutableDictionary *)selfCopy->_frameMetadataDictionary objectForKeyedSubscript:dCopy];
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

          CVBufferSetAttachment(to, *(*(&v15 + 1) + 8 * v13), [v10 objectForKey:{*(*(&v15 + 1) + 8 * v13), v15}], kCVAttachmentMode_ShouldPropagate);
          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    [v10 removeAllObjects];
  }

  objc_sync_exit(selfCopy);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)finishWriting:(id *)writing
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_isReady = 0;
  objc_sync_exit(selfCopy);

  if (writing)
  {
    *writing = 0;
  }

  memset(buf, 0, sizeof(buf));
  v10 = 0;
  [MOVWriterInterface cmTimeFromTimestamp:CACurrentMediaTime()];
  v7 = *buf;
  v8 = v10;
  [(MOVWriterInterface *)selfCopy appendAllMetadataWithTimeStamp:&v7];
  [(MOVStreamWriter *)selfCopy finishRecording];
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_isReady = 1;
  objc_sync_exit(selfCopy);

  WeakRetained = objc_loadWeakRetained(&selfCopy->_interface_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&selfCopy->_interface_delegate);
    [v7 isReadyToRecord];
  }
}

- (void)streamWriterDidFailWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = MEMORY[0x277CCA9B8];
  v6 = MEMORY[0x277CCACA8];
  v7 = [errorCopy description];
  v8 = [v6 stringWithFormat:@"StreamWriter failure: %@", v7];
  v9 = [v5 movWriterInterfaceErrorWithMessage:v8 code:5];
  lastError = selfCopy->_lastError;
  selfCopy->_lastError = v9;

  selfCopy->_isReady = 0;
  objc_sync_exit(selfCopy);

  WeakRetained = objc_loadWeakRetained(&selfCopy->_interface_delegate);
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v12 = objc_loadWeakRetained(&selfCopy->_interface_delegate);
    [v12 didFailWithError:errorCopy];
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_isReady = 0;
  objc_sync_exit(selfCopy);

  WeakRetained = objc_loadWeakRetained(&selfCopy->_interface_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&selfCopy->_interface_delegate);
    [v7 didFinishRecording];
  }
}

- (void)streamWriterEncounteredAnError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = MEMORY[0x277CCA9B8];
  v6 = MEMORY[0x277CCACA8];
  v7 = [errorCopy description];
  v8 = [v6 stringWithFormat:@"StreamWriter error: %@", v7];
  v9 = [v5 movWriterInterfaceErrorWithMessage:v8 code:5];
  lastError = selfCopy->_lastError;
  selfCopy->_lastError = v9;

  objc_sync_exit(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_interface_delegate);
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v12 = objc_loadWeakRetained(&selfCopy->_interface_delegate);
    [v12 didEncounterError:errorCopy];
  }
}

- (void)streamWriter:(id)writer stream:(id)stream preparedTrackInputs:(id)inputs mediaType:(int64_t)type
{
  v24 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  inputsCopy = inputs;
  if (+[AppleCV3DMOVKitLog debugEnabled])
  {
    v9 = +[AppleCV3DMOVKitLog defaultLog];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v23 = streamCopy;
      _os_log_impl(&dword_24016D000, v9, OS_LOG_TYPE_DEBUG, "[MOVWriterInterface] StreamWriter prepared track inputs for %@", buf, 0xCu);
    }
  }

  if ([streamCopy isEqualToString:@"com.apple.reality.kind.data.pcam_avdepth"])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = inputsCopy;
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

- (void)addFrameMetadata:(id)metadata value:(id)value streamID:(id)d
{
  metadataCopy = metadata;
  valueCopy = value;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(NSMutableDictionary *)selfCopy->_frameMetadataDictionary objectForKeyedSubscript:dCopy];
  v12 = v11;
  if (v11)
  {
    [v11 setObject:valueCopy forKeyedSubscript:metadataCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)addFrameMetadata:(id)metadata streamID:(id)d
{
  metadataCopy = metadata;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMutableDictionary *)selfCopy->_frameMetadataDictionary objectForKeyedSubscript:dCopy];
  v9 = v8;
  if (v8)
  {
    [v8 addEntriesFromDictionary:metadataCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)processFastPathIMUData:(id)data location:(int64_t *)location
{
  if (data)
  {
    dataCopy = data;
    dataCopy2 = data;
    v9 = *([dataCopy2 bytes] + 8);
    v10 = [CVAMetadataWrapperTracks imuTrackName:location prefix:self->_spuIMUTrackName];
    [(MOVWriterInterface *)self appendMetadata:dataCopy2 metadataID:v10 timestamp:v9];
  }
}

- (void)processFastPathIMUData:(id)data location:(int64_t *)location metadataID:(id)d
{
  if (data)
  {
    dCopy = d;
    dataCopy = data;
    [CVASpuFastPathComboAxisData getTimestamp:dataCopy];
    v11 = v10;
    v12 = [CVAMetadataWrapperTracks imuTrackName:location prefix:dCopy];

    [(MOVWriterInterface *)self appendMetadata:dataCopy metadataID:v12 timestamp:v11];
  }
}

- (void)processSpuIMUData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks imuTrackName:location prefix:self->_spuIMUTrackName];
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processAccelerometerData:(id)data andAdditionalData:(id)additionalData location:(int64_t *)location
{
  dataCopy = data;
  v8 = [dataCopy toData:additionalData];
  if (v8)
  {
    v9 = [CVAMetadataWrapperTracks accelerometerTrackName:location prefix:self->_accelTrackName];
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:v8 metadataID:v9 timestamp:?];
  }
}

- (void)processGyroscopeData:(id)data andAdditionalData:(id)additionalData location:(int64_t *)location
{
  dataCopy = data;
  v8 = [dataCopy toData:additionalData];
  if (v8)
  {
    v9 = [CVAMetadataWrapperTracks gyroTrackName:location prefix:self->_gyroTrackName];
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:v8 metadataID:v9 timestamp:?];
  }
}

- (void)processMotionData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks motionTrackName:location prefix:self->_motionTrackName];
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processALSData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks alsTrackName:location prefix:self->_alsTrackName];
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processWiFiData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks wifiTrackName:location prefix:self->_wifiTrackName];
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processUWBData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks uwbTrackName:location prefix:self->_uwbTrackName];
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processBLEData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks bleTrackName:location prefix:self->_bleTrackName];
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processBarometerData:(id)data
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    barometerTrackName = self->_barometerTrackName;
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:barometerTrackName timestamp:?];
  }
}

- (void)processCompassData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks compassTrackName:location prefix:self->_compassTrackName];
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processDeviceMotionData:(id)data andAdditionalData:(id)additionalData location:(int64_t *)location
{
  dataCopy = data;
  v7 = [CVAMetadataWrapper encodeDeviceMotionData:"encodeDeviceMotionData:andAdditionalData:" andAdditionalData:?];
  if (v7)
  {
    v8 = [CVAMetadataWrapperTracks deviceMotionTrackName:location prefix:self->_deviceMotionTrackName];
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:v7 metadataID:v8 timestamp:?];
  }
}

- (void)processDeviceMotionData:(id)data location:(int64_t *)location
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    v7 = [CVAMetadataWrapperTracks deviceMotionTrackName:location prefix:self->_deviceMotionTrackName];
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:v7 timestamp:?];
  }
}

- (void)processCoreLocationData:(id)data timestamp:(double)timestamp andAdditionalData:(id)additionalData location:(int64_t *)location
{
  v9 = [CVAMetadataWrapper encodeCoreLocationData:data timestamp:additionalData andAdditionalData:?];
  if (v9)
  {
    v11 = v9;
    v10 = [CVAMetadataWrapperTracks locationTrackName:location prefix:self->_locationTrackName];
    [(MOVWriterInterface *)self appendMetadata:v11 metadataID:v10 timestamp:timestamp];

    v9 = v11;
  }
}

- (void)processCMData:(id)data
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:@"CMData" timestamp:?];
  }
}

- (void)processCVAUserEvent:(id)event
{
  eventCopy = event;
  toData = [eventCopy toData];
  if (toData)
  {
    [eventCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:@"CVAUserEvent" timestamp:?];
  }
}

- (void)processCVATimedValue:(id)value
{
  valueCopy = value;
  toData = [valueCopy toData];
  if (toData)
  {
    [valueCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:@"CVATimedValue" timestamp:?];
  }
}

- (void)processCVAPRDevice:(id)device
{
  deviceCopy = device;
  toData = [deviceCopy toData];
  if (toData)
  {
    [deviceCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:@"CVAPRDevice" timestamp:?];
  }
}

- (void)processCVAFeatureBuffer:(__CVBuffer *)buffer timestamp:(double)timestamp syncTimestamp:(unint64_t)syncTimestamp frameId:(unint64_t)id streamName:(id)name
{
  nameCopy = name;
  v12 = [(NSMutableDictionary *)self->_cvaFeatureBufferCompression objectForKeyedSubscript:?];
  bOOLValue = [v12 BOOLValue];

  v14 = [[CVAFeatureBuffer alloc] initWithPixelBufferRef:buffer timestamp:0 streamID:0 reduce:bOOLValue compress:timestamp];
  [(CVAFeatureBuffer *)v14 setSyncTimestamp:syncTimestamp];
  [(CVAFeatureBuffer *)v14 setFrameId:id];
  toData = [(CVAFeatureBuffer *)v14 toData];
  if (toData)
  {
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:nameCopy timestamp:timestamp];
  }
}

- (void)processCVAFeatureBuffer:(id)buffer
{
  bufferCopy = buffer;
  toData = [bufferCopy toData];
  if (toData)
  {
    v5 = [CVAFeatureBuffer streamName:0];
    [bufferCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:v5 timestamp:?];
  }
}

- (void)processCVADepthTOF:(id)f
{
  fCopy = f;
  toData = [fCopy toData];
  lastError = self->_lastError;
  self->_lastError = 0;

  if (toData)
  {
    v15 = 0;
    v7 = [toData compressedDataUsingAlgorithm:1 error:&v15];
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
      [fCopy timestamp];
      [(MOVWriterInterface *)self appendMetadata:v7 metadataID:depthTOFTrackName timestamp:?];
    }
  }
}

- (void)processCVACameraCalibrationData:(id)data
{
  dataCopy = data;
  toData = [dataCopy toData];
  if (toData)
  {
    [dataCopy timestamp];
    [(MOVWriterInterface *)self appendMetadata:toData metadataID:@"CVACameraCalibration" timestamp:0 enforceMonotonicity:?];
  }
}

- (void)processClass:(id)class andAdditionalData:(id)data metadataID:(id)d
{
  dCopy = d;
  v8 = [CVAMetadataWrapper encodeClass:class andAdditionalData:data];
  if (v8)
  {
    [(MOVWriterInterface *)self appendMetadata:v8 metadataID:dCopy];
  }
}

- (void)processClass:(id)class andAdditionalData:(id)data metadataID:(id)d timestamp:(double)timestamp
{
  dCopy = d;
  v10 = [CVAMetadataWrapper encodeClass:class andAdditionalData:data];
  if (v10)
  {
    [(MOVWriterInterface *)self appendMetadata:v10 metadataID:dCopy timestamp:timestamp];
  }
}

- (void)processNSCoderObject:(id)object metadataID:(id)d
{
  dCopy = d;
  v6 = [CVAMetadataWrapper encodeNSCoderObject:object];
  if (v6)
  {
    [(MOVWriterInterface *)self appendMetadata:v6 metadataID:dCopy];
  }
}

- (void)processNSCoderObject:(id)object metadataID:(id)d timestamp:(double)timestamp
{
  dCopy = d;
  v8 = [CVAMetadataWrapper encodeNSCoderObject:object];
  if (v8)
  {
    [(MOVWriterInterface *)self appendMetadata:v8 metadataID:dCopy timestamp:timestamp];
  }
}

- (void)appendMetadata:(id)metadata metadataID:(id)d timestamp:(double)timestamp enforceMonotonicity:(BOOL)monotonicity
{
  monotonicityCopy = monotonicity;
  metadataCopy = metadata;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isReady)
  {
    if (monotonicityCopy)
    {
      lastError = selfCopy->_lastError;
      selfCopy->_lastError = 0;

      v14 = [(NSMutableDictionary *)selfCopy->_metadataLastTimestamp objectForKeyedSubscript:dCopy];
      v15 = v14;
      if (v14)
      {
        [v14 doubleValue];
        if (v16 > timestamp)
        {
          v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ timestamp %.6f is older than %.6f", dCopy, *&timestamp, *&v16];
          v26 = [MEMORY[0x277CCA9B8] movWriterInterfaceErrorWithMessage:v19 code:0];
          v27 = selfCopy->_lastError;
          selfCopy->_lastError = v26;

          goto LABEL_19;
        }
      }

      v17 = [MEMORY[0x277CCABB0] numberWithDouble:timestamp];
      [(NSMutableDictionary *)selfCopy->_metadataLastTimestamp setObject:v17 forKeyedSubscript:dCopy];
    }

    v15 = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArrays objectForKeyedSubscript:dCopy];
    [v15 addObject:metadataCopy];
    if (timestamp < 0.0)
    {
LABEL_20:

      goto LABEL_21;
    }

    v18 = [(NSMutableDictionary *)selfCopy->_metadataMaxBufferSize objectForKeyedSubscript:dCopy];
    v19 = v18;
    if (v18)
    {
      unsignedIntValue = [v18 unsignedIntValue];
      if ([v15 count] > unsignedIntValue && (selfCopy->_lastAppendMetadata.flags & 1) != 0)
      {
        v21 = [MEMORY[0x277CBEA60] arrayWithArray:v15];
        [v15 removeAllObjects];
        memset(&v31, 0, sizeof(v31));
        [MOVWriterInterface cmTimeFromTimestamp:timestamp];
        v30.receiver = selfCopy;
        v30.super_class = MOVWriterInterface;
        time1 = v31;
        [(MOVStreamWriter *)&v30 appendMetadata:v21 withTimeStamp:&time1 toStream:dCopy];
        v22 = *&v31.value;
        selfCopy->_lastAppendMetadata.epoch = v31.epoch;
        *&selfCopy->_lastAppendMetadata.value = v22;
      }
    }

    if (selfCopy->_writeMetadataTimeInterval > 0.0)
    {
      v23 = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArraysTimestamp objectForKeyedSubscript:dCopy];
      if (!v23)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithDouble:timestamp];
        [(NSMutableDictionary *)selfCopy->_metadataAttachmentArraysTimestamp setObject:v24 forKeyedSubscript:dCopy];
      }

      memset(&v31, 0, sizeof(v31));
      [MOVWriterInterface cmTimeFromTimestamp:timestamp - selfCopy->_writeMetadataTimeInterval];
      if ((selfCopy->_lastAppendMetadata.flags & 1) == 0 || (time1 = v31, v25 = *&selfCopy->_lastAppendMetadata.value, time2.epoch = selfCopy->_lastAppendMetadata.epoch, *&time2.value = v25, CMTimeCompare(&time1, &time2) >= 1))
      {
        [MOVWriterInterface cmTimeFromTimestamp:timestamp];
        [(MOVWriterInterface *)selfCopy appendAllMetadataWithTimeStamp:&time1];
      }
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_21:
  objc_sync_exit(selfCopy);
}

- (void)clearAllMetadataBuffers
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = selfCopy->_metadataAttachmentArrays;
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

        v7 = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArrays objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v6), v9];
        [v7 removeAllObjects];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  objc_sync_exit(selfCopy);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)appendAllMetadataWithTimeStamp:(id *)stamp
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArrays allKeys];
  if (selfCopy->_writeMetadataTimeInterval > 0.0)
  {
    allKeys2 = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArrays allKeys];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_240198004;
    v30[3] = &unk_278C9B1C8;
    v30[4] = selfCopy;
    v6 = [allKeys2 sortedArrayUsingComparator:v30];

    allKeys = v6;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = allKeys;
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
        v11 = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArrays objectForKeyedSubscript:v10];
        v12 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
        [v11 removeAllObjects];
        if ([v12 count])
        {
          v13 = [(NSMutableDictionary *)selfCopy->_metadataAttachmentArraysTimestamp objectForKeyedSubscript:v10];
          v14 = v13;
          if (v13)
          {
            v24 = 0uLL;
            var3 = 0;
            [v13 doubleValue];
            [MOVWriterInterface cmTimeFromTimestamp:?];
            v23.receiver = selfCopy;
            v23.super_class = MOVWriterInterface;
            v21 = v24;
            v22 = var3;
            [(MOVStreamWriter *)&v23 appendMetadata:v12 withTimeStamp:&v21 toStream:v10];
            [(NSMutableDictionary *)selfCopy->_metadataAttachmentArraysTimestamp setObject:0 forKeyedSubscript:v10];
            v7 = v18;
          }

          else
          {
            v20.receiver = selfCopy;
            v20.super_class = MOVWriterInterface;
            v24 = *&stamp->var0;
            var3 = stamp->var3;
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

  v15 = stamp->var3;
  *&selfCopy->_lastAppendMetadata.value = *&stamp->var0;
  selfCopy->_lastAppendMetadata.epoch = v15;

  objc_sync_exit(selfCopy);
  v16 = *MEMORY[0x277D85DE8];
}

- (MOVWriterInterfaceDelegate)interface_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interface_delegate);

  return WeakRetained;
}

@end