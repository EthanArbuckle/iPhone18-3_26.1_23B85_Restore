@interface MOVReaderInterface
+ (BOOL)grabSWToWExtrinsics:(id *)extrinsics summary:(id)summary backExtrinsics:(id)backExtrinsics;
+ (BOOL)isSuperWideStream:(id)stream;
+ (id)grabCMSessionID:(id)d;
+ (id)grabJasperExtrinsics:(id)extrinsics backExtrinsics:(id)backExtrinsics;
- (BOOL)grabSWToWExtrinsics:(id *)extrinsics;
- (BOOL)resetReaderTo:(id *)to error:(id *)error;
- (MOVReaderInterface)initWithFileURL:(id)l delegate:(id)delegate error:(id *)error;
- (MOVReaderInterface)initWithFileURL:(id)l enforcedVideoTrackFormat:(id)format error:(id *)error;
- (NSNumber)depthSourceFrameRate;
- (NSNumber)depthSourceMaxPoints;
- (__CVBuffer)copyNextFrameForStream:(id)stream timestamp:(id *)timestamp error:(id *)error;
- (id)applyFlip:(id)flip f:(id)f;
- (id)deviceStringFromPlatformID:(id)d;
- (id)grabCalibration:(int64_t *)calibration;
- (id)grabJasperExtrinsics;
- (id)grabMovieMetadataForKey:(id)key;
- (id)grabMovieMetadataItem:(id)item;
- (id)grabMovieMetadataRawForKey:(id)key;
- (id)grabNextBarometerData:(id *)data;
- (id)grabNextCLLocation:(id *)location location:(int64_t *)a4 timestamps:(id *)timestamps;
- (id)grabNextCMData:(id *)data;
- (id)grabNextCMDeviceMotion:(id *)motion;
- (id)grabNextCVACameraCalibrationData:(id *)data;
- (id)grabNextClass:(id)class class:(Class)a4 timeRange:(id *)range;
- (id)grabNextDepthIR:(id)r timeRange:(id *)range;
- (id)grabNextDepthTOF:(id *)f sampleDropped:(BOOL *)dropped;
- (id)grabNextDeviceMotionData:(id *)data location:(int64_t *)location;
- (id)grabNextDictionary:(id)dictionary timeRange:(id *)range;
- (id)grabNextFastPathMUData:(int64_t *)data;
- (id)grabNextFastPathMUData:(int64_t *)data metadataID:(id)d;
- (id)grabNextFeatureBuffer;
- (id)grabNextFeatureBuffer:(id *)buffer streamName:(id)name;
- (id)grabNextMotionData:(id *)data location:(int64_t *)location;
- (id)grabNextNSCoderObject:(id)object class:(Class)class;
- (id)grabNextNSCoderObject:(id)object class:(Class)class timeRange:(id *)range;
- (id)grabNextNSCoderObject:(id)object classes:(id)classes timeRange:(id *)range;
- (id)grabNextPRDevice:(id *)device;
- (id)grabNextRawALSData:(id *)data location:(int64_t *)location;
- (id)grabNextRawAccelData:(id *)data location:(int64_t *)location;
- (id)grabNextRawBLEData:(id *)data location:(int64_t *)location;
- (id)grabNextRawCompassData:(id *)data location:(int64_t *)location;
- (id)grabNextRawGyroData:(id *)data location:(int64_t *)location;
- (id)grabNextRawUWBData:(id *)data location:(int64_t *)location;
- (id)grabNextRawWiFiData:(id *)data location:(int64_t *)location;
- (id)grabNextSpuIMUData:(id *)data location:(int64_t *)location;
- (id)grabNextStreamData:(id)data timeRange:(id *)range;
- (id)grabNextTimedValue:(id *)value;
- (id)grabNextUserEvent:(id *)event;
- (id)grabSummary;
- (id)resolvedAccelStreamName:(int64_t *)name;
- (id)resolvedCalibration:(int64_t *)calibration;
- (id)resolvedCompassStreamName:(int64_t *)name;
- (id)resolvedDeviceMotionStreamName:(int64_t *)name;
- (id)resolvedGyroStreamName:(int64_t *)name;
- (id)resolvedIMUStreamName:(int64_t *)name metadataID:(id)d;
- (id)resolvedLocationStreamName:(int64_t *)name;
- (id)resolvedMotionStreamName:(int64_t *)name;
- (unsigned)reader:(id)reader pixelFormatForStream:(id)stream suggestedFormat:(unsigned int)format;
- (void)addStreamFilter:(id)filter obj:(id)obj;
- (void)addStreamFilters:(id)filters;
- (void)setDepthOutputFrameRate:(id)rate;
@end

@implementation MOVReaderInterface

- (id)deviceStringFromPlatformID:(id)d
{
  intValue = [d intValue];
  v4 = @"J420";
  v5 = @"ST2";
  if (intValue != 178)
  {
    v5 = 0;
  }

  if ((intValue - 82) >= 2)
  {
    v4 = v5;
  }

  if ((intValue - 80) >= 2)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"J417";
  }

  v7 = @"D93";
  v8 = @"D94";
  if (intValue != 70)
  {
    v8 = 0;
  }

  if (intValue != 69)
  {
    v7 = v8;
  }

  v9 = @"D84";
  if (intValue != 67)
  {
    v9 = 0;
  }

  if (intValue == 66)
  {
    v9 = @"D83";
  }

  if (intValue <= 68)
  {
    v7 = v9;
  }

  if (intValue <= 79)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (BOOL)resetReaderTo:(id *)to error:(id *)error
{
  self->_lastDepthTOFTimestamp = 0.0;
  v6.receiver = self;
  v6.super_class = MOVReaderInterface;
  v5 = *to;
  return [(MOVStreamReader *)&v6 resetReaderTo:&v5 error:error];
}

- (MOVReaderInterface)initWithFileURL:(id)l delegate:(id)delegate error:(id *)error
{
  v182[20] = *MEMORY[0x277D85DE8];
  v177.receiver = self;
  v177.super_class = MOVReaderInterface;
  v5 = [(MOVStreamReader *)&v177 initWithURL:l delegate:delegate error:error];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_100;
  }

  lastError = v5->_lastError;
  v5->_lastError = 0;

  v8 = objc_opt_new();
  streamFilters = v6->_streamFilters;
  v6->_streamFilters = v8;

  grabSummary = [(MOVReaderInterface *)v6 grabSummary];
  v11 = [grabSummary objectForKeyedSubscript:@"deviceName"];
  deviceName = v6->_deviceName;
  v6->_deviceName = v11;

  v13 = [grabSummary objectForKeyedSubscript:@"CFBundleIdentifier"];
  bundleID = v6->_bundleID;
  v6->_bundleID = v13;

  v15 = [grabSummary objectForKeyedSubscript:@"version"];
  version = v6->_version;
  v6->_version = v15;

  v17 = [grabSummary objectForKeyedSubscript:@"SerialNumber"];
  serialNumber = v6->_serialNumber;
  v6->_serialNumber = v17;

  v19 = [grabSummary objectForKeyedSubscript:@"ProductConfig"];
  productConfig = v6->_productConfig;
  v6->_productConfig = v19;

  v21 = [grabSummary objectForKeyedSubscript:@"ProductVersion"];
  productVersion = v6->_productVersion;
  v6->_productVersion = v21;

  v23 = [grabSummary objectForKeyedSubscript:@"OSBuildVersion"];
  osVersion = v6->_osVersion;
  v6->_osVersion = v23;

  if (!v6->_osVersion)
  {
    v25 = [grabSummary objectForKeyedSubscript:@"mdta/com.apple.arkit.osversion"];
    v26 = v6->_osVersion;
    v6->_osVersion = v25;
  }

  v152 = grabSummary;
  v27 = [grabSummary objectForKeyedSubscript:@"machTimeSince1970"];
  [v27 doubleValue];
  v6->_machTimeSince1970 = v28;

  v155 = objc_opt_new();
  v182[0] = @"com.apple.reality.kind.data.imu800";
  v182[1] = @"com.apple.reality.kind.data.accelerometer";
  v182[2] = @"com.apple.reality.kind.data.gyroscope";
  v182[3] = @"com.apple.reality.kind.data.compass";
  v182[4] = @"com.apple.reality.kind.data.als";
  v182[5] = @"com.apple.reality.kind.data.wifi";
  v182[6] = @"com.apple.reality.kind.data.uwb";
  v182[7] = @"com.apple.reality.kind.data.ble";
  v182[8] = @"com.apple.reality.kind.data.zcam_tof_pc";
  v182[9] = @"com.apple.reality.kind.camera.xcam.pointcloud";
  v182[10] = @"RawAccelerometer";
  v182[11] = @"RawGyroscope";
  v182[12] = @"Compass";
  v182[13] = @"ALS";
  v182[14] = @"CVADepthTOF";
  v182[15] = @"CVAUserEvent";
  v182[16] = @"com.apple.reality.kind.data.user_event";
  v182[17] = @"CVAPRDevice";
  v182[18] = @"com.apple.reality.kind.data.devicemotion";
  v182[19] = @"Motion";
  v158 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:20];
  [(MOVStreamReader *)v6 getAllMetadataStreams];
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  obj = v176 = 0u;
  v29 = [obj countByEnumeratingWithState:&v173 objects:v181 count:16];
  v159 = v6;
  if (v29)
  {
    v30 = v29;
    v156 = *v174;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v174 != v156)
        {
          objc_enumerationMutation(obj);
        }

        v33 = *(*(&v173 + 1) + 8 * i);
        v34 = [(MOVStreamReader *)v6 metadataTrackForStream:v33];
        totalSampleDataLength = [v34 totalSampleDataLength];
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v36 = v158;
        v37 = [v36 countByEnumeratingWithState:&v169 objects:v180 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v170;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v170 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v169 + 1) + 8 * j);
              if ([v33 hasPrefix:v41])
              {
                v32 = [MEMORY[0x277CCABB0] numberWithBool:totalSampleDataLength > 0];
                [v155 setObject:v32 forKeyedSubscript:v41];

                goto LABEL_9;
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v169 objects:v180 count:16];
          }

          while (v38);
        }

LABEL_9:

        v6 = v159;
      }

      v30 = [obj countByEnumeratingWithState:&v173 objects:v181 count:16];
    }

    while (v30);
  }

  spuIMUTrackName = v6->_spuIMUTrackName;
  v6->_spuIMUTrackName = 0;

  v43 = [v155 objectForKeyedSubscript:@"com.apple.reality.kind.data.imu800"];
  bOOLValue = [v43 BOOLValue];

  if (bOOLValue)
  {
    objc_storeStrong(&v6->_spuIMUTrackName, @"com.apple.reality.kind.data.imu800");
  }

  v151 = [CVAMetadataWrapperTracks imuTrackName:0 prefix:v6->_spuIMUTrackName];
  v6->_imuLocationNil = [obj containsObject:?];
  v150 = [CVAMetadataWrapperTracks motionTrackName:&unk_27E3C8650 prefix:v6->_spuIMUTrackName];
  v6->_imuLocation0 = [obj containsObject:?];
  v45 = objc_opt_new();
  spuVersions = v6->_spuVersions;
  v6->_spuVersions = v45;

  if (v6->_spuIMUTrackName)
  {
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v47 = obj;
    v48 = [v47 countByEnumeratingWithState:&v165 objects:v179 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v166;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v166 == v50)
          {
            v52 = *(*(&v165 + 1) + 8 * k);
            if (![v52 hasPrefix:@"com.apple.reality.kind.data.imu800"])
            {
              continue;
            }
          }

          else
          {
            objc_enumerationMutation(v47);
            v52 = *(*(&v165 + 1) + 8 * k);
            if (![v52 hasPrefix:@"com.apple.reality.kind.data.imu800"])
            {
              continue;
            }
          }

          v164 = 0;
          [CVAMetadataWrapperTracks locationFromTrackName:v52 location:&v164];
          v53 = [(MOVStreamReader *)v159 trackMetadataForMetadataStream:v52];
          v54 = [v53 objectForKeyedSubscript:@"com.apple.AppleCV3DMOVKit.fastPathIMUVersion"];
          v55 = v54;
          if (v54)
          {
            v56 = v54;
          }

          else
          {
            v56 = &unk_2852252A8;
          }

          v57 = v159->_spuVersions;
          v58 = [MEMORY[0x277CCABB0] numberWithInteger:v164];
          [(NSMutableDictionary *)v57 setObject:v56 forKeyedSubscript:v58];
        }

        v49 = [v47 countByEnumeratingWithState:&v165 objects:v179 count:16];
      }

      while (v49);
    }

    v6 = v159;
  }

  accelTrackName = v6->_accelTrackName;
  v6->_accelTrackName = 0;

  v60 = @"com.apple.reality.kind.data.accelerometer";
  v61 = [v155 objectForKeyedSubscript:@"com.apple.reality.kind.data.accelerometer"];
  bOOLValue2 = [v61 BOOLValue];

  if ((bOOLValue2 & 1) != 0 || (v60 = @"RawAccelerometer", [v155 objectForKeyedSubscript:@"RawAccelerometer"], v63 = objc_claimAutoreleasedReturnValue(), v64 = objc_msgSend(v63, "BOOLValue"), v63, v64))
  {
    objc_storeStrong(&v6->_accelTrackName, v60);
  }

  v157 = [CVAMetadataWrapperTracks accelerometerTrackName:0 prefix:v6->_accelTrackName];
  v6->_accelLocationNil = [obj containsObject:?];
  v153 = [CVAMetadataWrapperTracks accelerometerTrackName:&unk_27E3C8650 prefix:v6->_accelTrackName];
  v6->_accelLocation0 = [obj containsObject:?];
  gyroTrackName = v6->_gyroTrackName;
  v6->_gyroTrackName = 0;

  v66 = @"com.apple.reality.kind.data.gyroscope";
  v67 = [v155 objectForKeyedSubscript:@"com.apple.reality.kind.data.gyroscope"];
  bOOLValue3 = [v67 BOOLValue];

  if ((bOOLValue3 & 1) != 0 || (v66 = @"RawGyroscope", [v155 objectForKeyedSubscript:@"RawGyroscope"], v69 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend(v69, "BOOLValue"), v69, v70))
  {
    objc_storeStrong(&v6->_gyroTrackName, v66);
  }

  v149 = [CVAMetadataWrapperTracks gyroTrackName:0 prefix:v6->_gyroTrackName];
  v6->_gyroLocationNil = [obj containsObject:?];
  v148 = [CVAMetadataWrapperTracks gyroTrackName:&unk_27E3C8650 prefix:v6->_gyroTrackName];
  v6->_gyroLocation0 = [obj containsObject:?];
  motionTrackName = v6->_motionTrackName;
  v6->_motionTrackName = 0;

  v72 = [v155 objectForKeyedSubscript:@"com.apple.reality.kind.data.motion"];
  bOOLValue4 = [v72 BOOLValue];

  v74 = @"com.apple.reality.kind.data.als";
  if (bOOLValue4)
  {
    objc_storeStrong(&v6->_motionTrackName, @"com.apple.reality.kind.data.motion");
  }

  v146 = [CVAMetadataWrapperTracks motionTrackName:0 prefix:v6->_motionTrackName];
  v6->_motionLocationNil = [obj containsObject:?];
  v145 = [CVAMetadataWrapperTracks motionTrackName:&unk_27E3C8650 prefix:v6->_motionTrackName];
  v6->_motionLocation0 = [obj containsObject:?];
  deviceMotionTrackName = v6->_deviceMotionTrackName;
  v6->_deviceMotionTrackName = 0;

  v76 = @"com.apple.reality.kind.data.devicemotion";
  v77 = [v155 objectForKeyedSubscript:@"com.apple.reality.kind.data.devicemotion"];
  bOOLValue5 = [v77 BOOLValue];

  if ((bOOLValue5 & 1) != 0 || (v76 = @"Motion", [v155 objectForKeyedSubscript:@"Motion"], v79 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend(v79, "BOOLValue"), v79, v80))
  {
    objc_storeStrong(&v6->_deviceMotionTrackName, v76);
  }

  v144 = [CVAMetadataWrapperTracks deviceMotionTrackName:0 prefix:v6->_deviceMotionTrackName];
  v6->_deviceMotionLocationNil = [obj containsObject:?];
  v143 = [CVAMetadataWrapperTracks deviceMotionTrackName:&unk_27E3C8650 prefix:v6->_deviceMotionTrackName];
  v6->_deviceMotionLocation0 = [obj containsObject:?];
  locationTrackName = v6->_locationTrackName;
  v6->_locationTrackName = 0;

  v82 = [v155 objectForKeyedSubscript:@"Location"];
  bOOLValue6 = [v82 BOOLValue];

  if (bOOLValue6)
  {
    objc_storeStrong(&v6->_locationTrackName, @"Location");
  }

  v142 = [CVAMetadataWrapperTracks locationTrackName:0 prefix:v6->_locationTrackName];
  v6->_locationLocationNil = [obj containsObject:?];
  v141 = [CVAMetadataWrapperTracks locationTrackName:&unk_27E3C8650 prefix:v6->_locationTrackName];
  v6->_locationLocation0 = [obj containsObject:?];
  objc_storeStrong(&v6->_barometerTrackName, @"com.apple.reality.kind.data.barometer");
  compassTrackName = v6->_compassTrackName;
  v6->_compassTrackName = 0;

  v85 = @"com.apple.reality.kind.data.compass";
  v86 = [v155 objectForKeyedSubscript:@"com.apple.reality.kind.data.compass"];
  bOOLValue7 = [v86 BOOLValue];

  if ((bOOLValue7 & 1) != 0 || (v85 = @"Compass", [v155 objectForKeyedSubscript:@"Compass"], v88 = objc_claimAutoreleasedReturnValue(), v89 = objc_msgSend(v88, "BOOLValue"), v88, v89))
  {
    objc_storeStrong(&v6->_compassTrackName, v85);
  }

  v147 = [CVAMetadataWrapperTracks compassTrackName:0 prefix:v6->_compassTrackName];
  v6->_compassLocationNil = [obj containsObject:?];
  v90 = [CVAMetadataWrapperTracks compassTrackName:&unk_27E3C8650 prefix:v6->_compassTrackName];
  v6->_compassLocation0 = [obj containsObject:v90];
  alsTrackName = v6->_alsTrackName;
  v6->_alsTrackName = 0;

  v92 = [v155 objectForKeyedSubscript:@"com.apple.reality.kind.data.als"];
  bOOLValue8 = [v92 BOOLValue];

  v94 = @"com.apple.reality.kind.camera.xcam.pointcloud";
  if ((bOOLValue8 & 1) != 0 || (v74 = @"ALS", [v155 objectForKeyedSubscript:@"ALS"], v95 = objc_claimAutoreleasedReturnValue(), v96 = objc_msgSend(v95, "BOOLValue"), v95, v96))
  {
    objc_storeStrong(&v6->_alsTrackName, v74);
  }

  wifiTrackName = v6->_wifiTrackName;
  v6->_wifiTrackName = 0;

  v98 = [v155 objectForKeyedSubscript:@"com.apple.reality.kind.data.wifi"];
  bOOLValue9 = [v98 BOOLValue];

  if (bOOLValue9)
  {
    objc_storeStrong(&v6->_wifiTrackName, @"com.apple.reality.kind.data.wifi");
  }

  uwbTrackName = v6->_uwbTrackName;
  v6->_uwbTrackName = 0;

  v101 = [v155 objectForKeyedSubscript:@"com.apple.reality.kind.data.uwb"];
  bOOLValue10 = [v101 BOOLValue];

  if (bOOLValue10)
  {
    objc_storeStrong(&v6->_uwbTrackName, @"com.apple.reality.kind.data.uwb");
  }

  bleTrackName = v6->_bleTrackName;
  v6->_bleTrackName = 0;

  v104 = [v155 objectForKeyedSubscript:@"com.apple.reality.kind.data.ble"];
  bOOLValue11 = [v104 BOOLValue];

  if (bOOLValue11)
  {
    objc_storeStrong(&v6->_bleTrackName, @"com.apple.reality.kind.data.ble");
  }

  depthTOFTrackName = v6->_depthTOFTrackName;
  v6->_depthTOFTrackName = 0;

  v107 = [v155 objectForKeyedSubscript:@"com.apple.reality.kind.camera.xcam.pointcloud"];
  bOOLValue12 = [v107 BOOLValue];

  if (bOOLValue12)
  {
    goto LABEL_66;
  }

  v94 = @"com.apple.reality.kind.data.zcam_tof_pc";
  v109 = [v155 objectForKeyedSubscript:@"com.apple.reality.kind.data.zcam_tof_pc"];
  bOOLValue13 = [v109 BOOLValue];

  if ((bOOLValue13 & 1) != 0 || (v94 = @"CVADepthTOF", [v155 objectForKeyedSubscript:@"CVADepthTOF"], v111 = objc_claimAutoreleasedReturnValue(), v112 = objc_msgSend(v111, "BOOLValue"), v111, v112))
  {
LABEL_66:
    objc_storeStrong(&v6->_depthTOFTrackName, v94);
  }

  v6->_lastDepthTOFTimestamp = 0.0;
  v113 = [v155 objectForKeyedSubscript:@"CVAUserEvent"];
  if ([v113 BOOLValue])
  {
    v114 = @"CVAUserEvent";
  }

  else
  {
    v114 = 0;
  }

  objc_storeStrong(&v6->_userEventTrackName, v114);

  v115 = [v155 objectForKeyedSubscript:@"com.apple.reality.kind.data.user_event"];
  if ([v115 BOOLValue])
  {
    v116 = @"com.apple.reality.kind.data.user_event";
  }

  else
  {
    v116 = 0;
  }

  objc_storeStrong(&v6->_ryfTimedValueTrackName, v116);

  v117 = [v155 objectForKeyedSubscript:@"CVAPRDevice"];
  if ([v117 BOOLValue])
  {
    v118 = @"CVAPRDevice";
  }

  else
  {
    v118 = 0;
  }

  objc_storeStrong(&v6->_prDeviceTrackName, v118);

  tofDepthPCStreamID = v6->_tofDepthPCStreamID;
  v6->_tofDepthPCStreamID = 0;

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  getAllStreams = [(MOVStreamReader *)v6 getAllStreams];
  v121 = [getAllStreams countByEnumeratingWithState:&v160 objects:v178 count:16];
  if (!v121)
  {
    goto LABEL_99;
  }

  v122 = v121;
  v123 = *v161;
  v124 = *MEMORY[0x277CF3CE0];
  while (2)
  {
    for (m = 0; m != v122; ++m)
    {
      if (*v161 != v123)
      {
        objc_enumerationMutation(getAllStreams);
      }

      v126 = *(*(&v160 + 1) + 8 * m);
      if (([v126 isEqualToString:v124] & 1) != 0 || (objc_msgSend(v126, "isEqualToString:", @"JasperCamera") & 1) != 0 || objc_msgSend(v126, "isEqualToString:", @"com.apple.reality.kind.camera.backsparsetimeofflight.raw"))
      {
        v127 = v126;
        v6 = v159;
        objc_storeStrong(&v159->_tofDepthPCStreamID, v127);
        v128 = [(MOVReaderInterface *)v159 grabMovieMetadataForKey:@"mdta/com.apple.jasperl.calibdata"];
        if (v128)
        {
          v129 = v128;
        }

        else
        {
          v129 = [(MOVReaderInterface *)v159 grabMovieMetadataForKey:@"mdta/com.apple.assetCapture.calibration.Back.ToF"];
          if (!v129)
          {
            v134 = MEMORY[0x277CCA9B8];
            v135 = @"Failed to read TOF calibration";
            v136 = 6;
            goto LABEL_97;
          }
        }

        v130 = [[CVAPeridotDepthFrameProcessor alloc] initWithCalibrationDict:v129];
        pdfp = v159->_pdfp;
        v159->_pdfp = v130;

        if (v159->_pdfp)
        {
          if (v159->_jdfp)
          {
            goto LABEL_98;
          }
        }

        else
        {
          v132 = [[CVAJasperDepthFrameProcessor alloc] initWithCalibrationDict:v129];
          jdfp = v159->_jdfp;
          v159->_jdfp = v132;

          if (v159->_jdfp)
          {
            goto LABEL_98;
          }
        }

        if (!v159->_pdfp)
        {
          v134 = MEMORY[0x277CCA9B8];
          v135 = @"Failed to initialize TOF frame processor";
          v136 = 15;
LABEL_97:
          v137 = [v134 movReaderInterfaceErrorWithMessage:v135 code:v136];
          v138 = v159->_lastError;
          v159->_lastError = v137;
        }

LABEL_98:

        goto LABEL_99;
      }
    }

    v122 = [getAllStreams countByEnumeratingWithState:&v160 objects:v178 count:16];
    v6 = v159;
    if (v122)
    {
      continue;
    }

    break;
  }

LABEL_99:

  v6->_jasperCounter = 0;
  *v6->_jasperEnabled = 0x101010101010101;
  *&v6->_jasperEnabled[8] = 0x101010101010101;

LABEL_100:
  v139 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NSNumber)depthSourceFrameRate
{
  if (self->_depthTOFTrackName)
  {
    v3 = [(MOVStreamReader *)self trackMetadataForMetadataStream:?];
    v4 = [v3 objectForKeyedSubscript:@"Framerate"];
    if (!v4)
    {
      if ([(NSString *)self->_deviceString hasPrefix:@"D83"]|| [(NSString *)self->_deviceString hasPrefix:@"D84"]|| [(NSString *)self->_deviceString hasPrefix:@"D93"]|| [(NSString *)self->_deviceString hasPrefix:@"D94"])
      {
        v4 = &unk_2852252D8;
      }

      else
      {
        v4 = &unk_2852252C0;
      }
    }

    v5 = v4;
  }

  else
  {
    v5 = &unk_2852252A8;
  }

  return v5;
}

- (NSNumber)depthSourceMaxPoints
{
  if (self->_depthTOFTrackName)
  {
    v3 = [(MOVStreamReader *)self trackMetadataForMetadataStream:?];
    v4 = [v3 objectForKeyedSubscript:@"MaxPoints"];
    if (!v4)
    {
      if ([(NSString *)self->_deviceString hasPrefix:@"D83"]|| [(NSString *)self->_deviceString hasPrefix:@"D84"]|| [(NSString *)self->_deviceString hasPrefix:@"D93"]|| [(NSString *)self->_deviceString hasPrefix:@"D94"])
      {
        v4 = &unk_285225308;
      }

      else
      {
        v4 = &unk_2852252F0;
      }
    }

    v5 = v4;
  }

  else
  {
    v5 = &unk_2852252A8;
  }

  return v5;
}

- (void)setDepthOutputFrameRate:(id)rate
{
  rateCopy = rate;
  lastError = self->_lastError;
  self->_lastError = 0;

  objc_storeStrong(&self->_depthOutputFrameRate, rate);
  depthSourceMaxPoints = [(MOVReaderInterface *)self depthSourceMaxPoints];
  v7 = [depthSourceMaxPoints isEqualToNumber:&unk_2852252F0];

  if (v7)
  {
    depthSourceFrameRate = [(MOVReaderInterface *)self depthSourceFrameRate];
    if ([depthSourceFrameRate compare:self->_depthOutputFrameRate] == 1)
    {
      if ([depthSourceFrameRate isEqualToNumber:&unk_2852252C0] && -[NSNumber isEqualToNumber:](self->_depthOutputFrameRate, "isEqualToNumber:", &unk_2852252D8) || objc_msgSend(depthSourceFrameRate, "isEqualToNumber:", &unk_2852252D8) && -[NSNumber isEqualToNumber:](self->_depthOutputFrameRate, "isEqualToNumber:", &unk_285225320))
      {
        *&self->_jasperEnabled[1] = 0;
        *&self->_jasperEnabled[7] = 0;
        self->_jasperEnabled[0] = 1;
        self->_jasperEnabled[2] = 1;
        self->_jasperEnabled[5] = 1;
        *&self->_jasperEnabled[7] = 257;
        self->_jasperEnabled[10] = 1;
        self->_jasperEnabled[13] = 1;
        self->_jasperEnabled[15] = 1;
LABEL_14:

        goto LABEL_15;
      }

      if ([depthSourceFrameRate isEqualToNumber:&unk_2852252C0] && -[NSNumber isEqualToNumber:](self->_depthOutputFrameRate, "isEqualToNumber:", &unk_285225320))
      {
        *&self->_jasperEnabled[1] = 0;
        *&self->_jasperEnabled[7] = 0;
        self->_jasperEnabled[0] = 1;
        self->_jasperEnabled[5] = 1;
        self->_jasperEnabled[10] = 1;
        self->_jasperEnabled[15] = 1;
        goto LABEL_14;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requested depth rate %ld is invalid", -[NSNumber longValue](self->_depthOutputFrameRate, "longValue")];
      v10 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:v9 code:7];
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Requested depth rate %ld >= source rate %ld", -[NSNumber longValue](self->_depthOutputFrameRate, "longValue"), objc_msgSend(depthSourceFrameRate, "longValue")];
      v10 = [MEMORY[0x277CCA9B8] movReaderInterfaceWarningWithMessage:v9 code:0];
    }

    v11 = self->_lastError;
    self->_lastError = v10;

    goto LABEL_14;
  }

LABEL_15:
}

- (MOVReaderInterface)initWithFileURL:(id)l enforcedVideoTrackFormat:(id)format error:(id *)error
{
  objc_storeStrong(&self->_enforcedVideoTrackFormat, format);
  lCopy = l;
  v9 = [(MOVReaderInterface *)self initWithFileURL:lCopy delegate:self error:error];

  return v9;
}

- (id)grabMovieMetadataForKey:(id)key
{
  v37 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  lastError = self->_lastError;
  self->_lastError = 0;

  [(MOVStreamReader *)self metadataForMovie];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = v35 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v28 = 432;
    selfCopy = self;
    v9 = *v33;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [keyCopy isEqualToString:identifier];

        if (v13)
        {
          value = [v11 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          value2 = [v11 value];
          if (isKindOfClass)
          {
            goto LABEL_17;
          }

          objc_opt_class();
          v17 = objc_opt_isKindOfClass();

          if (v17)
          {
            value3 = [v11 value];
            v30 = 0;
            v31 = 0;
            v19 = [MEMORY[0x277CCAC58] propertyListWithData:value3 options:0 format:&v31 error:&v30];
            v20 = v19;
            if (v30)
            {
              v21 = MEMORY[0x277CCA9B8];
              v22 = v30;
              v23 = [v22 description];
              v24 = [v21 movReaderInterfaceErrorWithMessage:v23 code:8];
              v25 = *(&selfCopy->super.super.isa + v28);
              *(&selfCopy->super.super.isa + v28) = v24;

              value2 = 0;
            }

            else
            {
              value2 = v19;
            }

            goto LABEL_17;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  value2 = 0;
LABEL_17:

  v26 = *MEMORY[0x277D85DE8];

  return value2;
}

- (id)grabMovieMetadataRawForKey:(id)key
{
  v30 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  lastError = self->_lastError;
  self->_lastError = 0;

  [(MOVStreamReader *)self metadataForMovie];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v28 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    v10 = *MEMORY[0x277CC05B0];
LABEL_4:
    v11 = 0;
    v24 = v8;
    while (1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v25 + 1) + 8 * v11);
      identifier = [v12 identifier];
      if (![keyCopy isEqualToString:identifier])
      {
        goto LABEL_6;
      }

      dataType = [v12 dataType];
      if (([dataType isEqual:v10] & 1) == 0)
      {
        break;
      }

      [v12 value];
      v15 = v9;
      v16 = keyCopy;
      v17 = v10;
      v19 = v18 = v6;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v6 = v18;
      v10 = v17;
      keyCopy = v16;
      v9 = v15;
      v8 = v24;

      if (isKindOfClass)
      {
        value = [v12 value];
        goto LABEL_15;
      }

LABEL_7:
      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (!v8)
        {
          goto LABEL_14;
        }

        goto LABEL_4;
      }
    }

LABEL_6:
    goto LABEL_7;
  }

LABEL_14:
  value = 0;
LABEL_15:

  v22 = *MEMORY[0x277D85DE8];

  return value;
}

- (id)grabMovieMetadataItem:(id)item
{
  v20 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  lastError = self->_lastError;
  self->_lastError = 0;

  [(MOVStreamReader *)self metadataForMovie];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [itemCopy isEqualToString:identifier];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)grabSummary
{
  lastError = self->_lastError;
  self->_lastError = 0;

  v4 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.framework.state.MOVKit"];
  if (!v4)
  {
    v4 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.assetCapture.deviceInfo"];
    if (!v4)
    {
      v4 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.recordingEnvironment"];
      if (!v4)
      {
        v4 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.movieSummary"];
      }
    }
  }

  v5 = v4;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
  v7 = [v6 objectForKeyedSubscript:@"hw.model"];
  deviceString = self->_deviceString;
  self->_deviceString = v7;

  v9 = [v6 objectForKeyedSubscript:@"movKitVersion"];
  v10 = v9;
  if (!v9 || [v9 isEqualToString:@"1.0.0"])
  {
    v11 = [v6 objectForKeyedSubscript:@"CFBundleIdentifier"];
    if (v11)
    {
    }

    else
    {
      v12 = [v6 objectForKeyedSubscript:@"bundleID"];

      if (v12)
      {
        v13 = [v6 objectForKeyedSubscript:@"bundleID"];
        [v6 setObject:v13 forKeyedSubscript:@"CFBundleIdentifier"];

        [v6 removeObjectForKey:@"bundleID"];
      }
    }

    v14 = [v6 objectForKeyedSubscript:@"hw.model"];
    if (v14)
    {
    }

    else
    {
      v15 = [v6 objectForKeyedSubscript:@"deviceString"];

      if (v15)
      {
        v16 = [v6 objectForKeyedSubscript:@"deviceString"];
        [v6 setObject:v16 forKeyedSubscript:@"hw.model"];

        v17 = [v6 objectForKeyedSubscript:@"hw.model"];
        v18 = self->_deviceString;
        self->_deviceString = v17;

        [v6 removeObjectForKey:@"deviceString"];
      }
    }
  }

  v19 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.isp.UnitInfo"];
  if (v19 || ([(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.assetCapture.UnitInfo"], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v20 = v19;
    v21 = [v19 objectForKey:@"PlatformID"];
    v22 = [(MOVReaderInterface *)self deviceStringFromPlatformID:v21];
    if (v22)
    {
      objc_storeStrong(&self->_deviceString, v22);
    }
  }

  v23 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.isp.FirmwareVersion"];
  v24 = [v23 objectForKey:@"PlatformType"];

  if (![v24 isEqualToString:@"SpearTooth3"])
  {
    if (![v24 isEqualToString:@"SpearTooth2"])
    {
      goto LABEL_22;
    }

LABEL_25:
    v29 = [MEMORY[0x277CCA9B8] movReaderInterfaceWarningWithMessage:@"platformType is SpearTooth2 assuming device is ST2" code:1];;
    v30 = self->_lastError;
    self->_lastError = v29;

    v31 = self->_deviceString;
    self->_deviceString = @"ST2";

    v25 = self->_deviceString;
    if (v25)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v26 = [MEMORY[0x277CCA9B8] movReaderInterfaceWarningWithMessage:@"platformType is SpearTooth3 assuming device is ST3" code:1];;
  v27 = self->_lastError;
  self->_lastError = v26;

  v28 = self->_deviceString;
  self->_deviceString = @"ST3";

  if ([v24 isEqualToString:@"SpearTooth2"])
  {
    goto LABEL_25;
  }

LABEL_22:
  v25 = self->_deviceString;
  if (v25)
  {
    goto LABEL_31;
  }

LABEL_26:
  v32 = [v6 objectForKeyedSubscript:@"ProductType"];
  v33 = [(MOVReaderInterface *)self mapProductToDevice:v32];
  v34 = self->_deviceString;
  self->_deviceString = v33;

  v25 = self->_deviceString;
  if (!v25)
  {
    v35 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.jasperl.calibdata"];
    v36 = [v35 objectForKey:@"PlatformId"];
    v37 = [(MOVReaderInterface *)self deviceStringFromPlatformID:v36];
    v38 = self->_deviceString;
    self->_deviceString = v37;

    v25 = self->_deviceString;
    if (!v25)
    {
      v39 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.strecorder.summary"];
      v40 = [v39 objectForKey:@"STRecorder Version"];
      if (v40)
      {
        v41 = [MEMORY[0x277CCA9B8] movReaderInterfaceWarningWithMessage:@"Metadata is missing assuming device is ST2" code:1];;
        v42 = self->_lastError;
        self->_lastError = v41;

        v43 = self->_deviceString;
        self->_deviceString = @"ST2";
      }

      v25 = self->_deviceString;
    }
  }

LABEL_31:
  [v6 setObject:v25 forKeyedSubscript:@"hw.model"];

  return v6;
}

- (void)addStreamFilter:(id)filter obj:(id)obj
{
  filterCopy = filter;
  streamFilters = self->_streamFilters;
  objCopy = obj;
  v8 = [(NSMutableDictionary *)streamFilters objectForKeyedSubscript:filterCopy];
  v9 = v8;
  if (v8)
  {
    [v8 addObject:objCopy];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithObject:objCopy];

    [(NSMutableDictionary *)self->_streamFilters setObject:v10 forKeyedSubscript:filterCopy];
    objCopy = v10;
  }
}

- (id)applyFlip:(id)flip f:(id)f
{
  flipCopy = flip;
  v6 = [f objectForKeyedSubscript:@"flip"];
  v7 = flipCopy;
  if ([v6 containsString:@"H"])
  {
    v7 = [flipCopy imageByApplyingCGOrientation:2];
  }

  if ([v6 containsString:@"V"])
  {
    v8 = [v7 imageByApplyingCGOrientation:4];

    v7 = v8;
  }

  return v7;
}

- (void)addStreamFilters:(id)filters
{
  v135 = *MEMORY[0x277D85DE8];
  filtersCopy = filters;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [defaultManager fileExistsAtPath:filtersCopy];

  if (v4)
  {
    v92 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:filtersCopy];
    v130 = 0;
    v90 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v92 options:1 error:&v130];
    v5 = v130;
    v89 = v5;
    if (v5)
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = MEMORY[0x277CCACA8];
      obj = [v5 localizedDescription];
      v8 = [v7 stringWithFormat:@"Filter file can't be parsed: %@", obj];
      v9 = [v6 movReaderInterfaceErrorWithMessage:v8 code:13];
      lastError = self->_lastError;
      self->_lastError = v9;

      goto LABEL_4;
    }

    v11 = v90;
    if (v90)
    {
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      obj = v90;
      v87 = [obj countByEnumeratingWithState:&v126 objects:v134 count:16];
      if (!v87)
      {
        goto LABEL_4;
      }

      v86 = *v127;
      v108 = *MEMORY[0x277CBF988];
      v107 = *MEMORY[0x277CBF980];
      v105 = *MEMORY[0x277CBFB18];
      v106 = *MEMORY[0x277CBFAF0];
      v104 = *MEMORY[0x277CBFAB0];
      while (1)
      {
        for (i = 0; i != v87; ++i)
        {
          if (*v127 != v86)
          {
            objc_enumerationMutation(obj);
          }

          v109 = *(*(&v126 + 1) + 8 * i);
          v15 = [obj objectForKeyedSubscript:?];
          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v94 = v15;
          v96 = [v94 countByEnumeratingWithState:&v122 objects:v133 count:16];
          if (v96)
          {
            v95 = *v123;
            do
            {
              for (j = 0; j != v96; ++j)
              {
                if (*v123 != v95)
                {
                  objc_enumerationMutation(v94);
                }

                v103 = *(*(&v122 + 1) + 8 * j);
                v102 = [v103 objectForKeyedSubscript:@"filterName"];
                if (v102)
                {
                  v16 = [MEMORY[0x277CBF750] filterWithName:v102];
                  if (!v16)
                  {
                    v58 = MEMORY[0x277CCA9B8];
                    v102 = [MEMORY[0x277CCACA8] stringWithFormat:@"Filter name not found: %@", v102];
                    v60 = [v58 movReaderInterfaceErrorWithMessage:v102 code:13];
                    v61 = self->_lastError;
                    self->_lastError = v60;

                    v62 = MEMORY[0x277CBEAD8];
                    localizedDescription = [(NSError *)self->_lastError localizedDescription];
                    v64 = [v62 exceptionWithName:@"AppleCV3DMOVKitErrorFilterFileFailed" reason:localizedDescription userInfo:0];

                    v65 = v64;
                    objc_exception_throw(v64);
                  }

                  v17 = [v103 objectForKeyedSubscript:@"params"];
                  v120 = 0u;
                  v121 = 0u;
                  v118 = 0u;
                  v119 = 0u;
                  v18 = [v17 countByEnumeratingWithState:&v118 objects:v132 count:16];
                  if (v18)
                  {
                    v19 = *v119;
                    do
                    {
                      for (k = 0; k != v18; ++k)
                      {
                        if (*v119 != v19)
                        {
                          objc_enumerationMutation(v17);
                        }

                        v21 = *(*(&v118 + 1) + 8 * k);
                        v22 = [v17 objectForKeyedSubscript:v21];
                        [v16 setValue:v22 forKey:v21];
                      }

                      v18 = [v17 countByEnumeratingWithState:&v118 objects:v132 count:16];
                    }

                    while (v18);
                  }

                  [v103 setObject:v16 forKeyedSubscript:@"filter"];
                  [(MOVReaderInterface *)self addStreamFilter:v109 obj:v103];
                }

                v101 = [v103 objectForKeyedSubscript:@"filterImage"];
                if (v101)
                {
                  v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:v101];
                  v24 = [MEMORY[0x277CBF758] imageWithContentsOfURL:v23];
                  if (!v24)
                  {
                    v78 = MEMORY[0x277CCA9B8];
                    v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"Filter image not found: %@", v101];
                    v80 = [v78 movReaderInterfaceErrorWithMessage:v101 code:13];
                    v81 = self->_lastError;
                    self->_lastError = v80;

                    v82 = MEMORY[0x277CBEAD8];
                    localizedDescription2 = [(NSError *)self->_lastError localizedDescription];
                    v84 = [v82 exceptionWithName:@"AppleCV3DMOVKitErrorFilterFileFailed" reason:localizedDescription2 userInfo:0];

                    v85 = v84;
                    objc_exception_throw(v84);
                  }

                  v25 = [v103 objectForKeyedSubscript:@"selector"];
                  v26 = NSSelectorFromString(v25);

                  v27 = [MEMORY[0x277CBF728] performSelector:v26];
                  [v103 setObject:v27 forKeyedSubscript:@"filter"];
                  v28 = [(MOVReaderInterface *)self applyFlip:v24 f:v103];
                  [v103 setObject:v28 forKeyedSubscript:@"background_img"];

                  [(MOVReaderInterface *)self addStreamFilter:v109 obj:v103];
                }

                v29 = [v103 objectForKeyedSubscript:@"filterKernel"];
                v100 = v29;
                if (v29)
                {
                  v30 = MEMORY[0x277CBEA90];
                  v31 = [v29 objectForKeyedSubscript:@"path"];
                  v97 = [v30 dataWithContentsOfFile:v31];

                  v32 = MEMORY[0x277CBF760];
                  v33 = [v100 objectForKeyedSubscript:@"name"];
                  v117 = 0;
                  v98 = [v32 kernelWithFunctionName:v33 fromMetalLibraryData:v97 error:&v117];
                  v34 = v117;

                  if (!v98 || v34)
                  {
                    v66 = MEMORY[0x277CCA9B8];
                    v67 = MEMORY[0x277CCACA8];
                    v68 = [v100 objectForKeyedSubscript:@"path"];
                    v69 = [v100 objectForKeyedSubscript:@"name"];
                    localizedDescription3 = [v34 localizedDescription];
                    v71 = [v67 stringWithFormat:@"Filter Kernel failed: %@, %@, %@", v68, v69, localizedDescription3];
                    v72 = [v66 movReaderInterfaceErrorWithMessage:v71 code:13];
                    v73 = self->_lastError;
                    self->_lastError = v72;

                    v74 = MEMORY[0x277CBEAD8];
                    localizedDescription4 = [(NSError *)self->_lastError localizedDescription];
                    v76 = [v74 exceptionWithName:@"AppleCV3DMOVKitErrorFilterFileFailed" reason:localizedDescription4 userInfo:0];

                    v77 = v76;
                    objc_exception_throw(v76);
                  }

                  [v103 setObject:v98 forKeyedSubscript:@"filter"];
                  v35 = MEMORY[0x277CBEA60];
                  v36 = [v103 objectForKeyedSubscript:@"params"];
                  v37 = [v35 arrayWithArray:v36];

                  v112 = objc_opt_new();
                  v115 = 0u;
                  v116 = 0u;
                  v113 = 0u;
                  v114 = 0u;
                  v111 = v37;
                  v38 = [v111 countByEnumeratingWithState:&v113 objects:v131 count:16];
                  if (v38)
                  {
                    v39 = *v114;
                    do
                    {
                      for (m = 0; m != v38; ++m)
                      {
                        if (*v114 != v39)
                        {
                          objc_enumerationMutation(v111);
                        }

                        v41 = *(*(&v113 + 1) + 8 * m);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v42 = [v41 objectForKeyedSubscript:@"path"];
                          if (v42)
                          {
                            v43 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v42];
                            if (v43)
                            {
                              v44 = [v41 objectForKeyedSubscript:@"dim"];
                              longValue = [v44 longValue];

                              if ([v42 hasSuffix:@"png"])
                              {
                                v46 = [MEMORY[0x277CBF758] imageWithData:v43];
                              }

                              else
                              {
                                v46 = 0;
                              }

                              if ([v42 hasSuffix:@"sraw"])
                              {
                                v47 = [v41 objectForKeyedSubscript:@"bpp"];
                                v48 = [v47 intValue] == 16;

                                if (v48)
                                {
                                  v49 = v107;
                                }

                                else
                                {
                                  v49 = v108;
                                }

                                v50 = [MEMORY[0x277CBF758] imageWithBitmapData:v43 bytesPerRow:longValue << v48 size:v49 format:0 colorSpace:{longValue, longValue}];

                                v46 = v50;
                              }

                              if (v46)
                              {
                                v51 = [(MOVReaderInterface *)self applyFlip:v46 f:v41];

                                [(MOVStreamReader *)self getOutputSizeForStream:v109];
                                v53 = v52;
                                if (longValue != v52)
                                {
                                  v54 = [MEMORY[0x277CBF750] filterWithName:@"CILanczosScaleTransform"];
                                  [v54 setValue:v51 forKey:v106];
                                  *&v55 = v53 / longValue;
                                  v56 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
                                  [v54 setValue:v56 forKey:v105];

                                  [v54 setValue:&unk_285225380 forKey:v104];
                                  outputImage = [v54 outputImage];

                                  v51 = outputImage;
                                }

                                if (v51)
                                {
                                  [v41 setObject:v51 forKeyedSubscript:@"img"];
                                }

                                goto LABEL_58;
                              }
                            }
                          }

                          else
                          {
                            v43 = 0;
                          }

                          v51 = 0;
LABEL_58:
                        }

                        [v112 addObject:v41];
                      }

                      v38 = [v111 countByEnumeratingWithState:&v113 objects:v131 count:16];
                    }

                    while (v38);
                  }

                  [v103 setObject:v112 forKeyedSubscript:@"params"];
                  [(MOVReaderInterface *)self addStreamFilter:v109 obj:v103];

                  v29 = v100;
                }
              }

              v96 = [v94 countByEnumeratingWithState:&v122 objects:v133 count:16];
            }

            while (v96);
          }
        }

        v87 = [obj countByEnumeratingWithState:&v126 objects:v134 count:16];
        if (!v87)
        {
LABEL_4:

          v11 = v90;
          break;
        }
      }
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:@"Filter file is missing" code:13];
    v13 = self->_lastError;
    self->_lastError = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (__CVBuffer)copyNextFrameForStream:(id)stream timestamp:(id *)timestamp error:(id *)error
{
  v90 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  lastError = self->_lastError;
  self->_lastError = 0;

  v87.receiver = self;
  v87.super_class = MOVReaderInterface;
  v10 = [(MOVStreamReader *)&v87 copyNextFrameForStream:streamCopy timestamp:timestamp error:error];
  v11 = [(NSMutableDictionary *)self->_streamFilters objectForKeyedSubscript:streamCopy];
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v65 = streamCopy;
    filterContext = [(MOVReaderInterface *)self filterContext];

    if (!filterContext)
    {
      context = [MEMORY[0x277CBF740] context];
      filterContext = self->_filterContext;
      self->_filterContext = context;
    }

    v17 = objc_opt_new();
    v64 = v10;
    [MEMORY[0x277CBF758] imageWithCVImageBuffer:v10];
    v62 = v75 = v17;
    [v17 addObject:?];
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v63 = v12;
    v18 = v12;
    v19 = [v18 countByEnumeratingWithState:&v83 objects:v89 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = @"src";
      v22 = *MEMORY[0x277CBFAF0];
      v70 = *MEMORY[0x277CBFAF0];
      v71 = *v84;
      v23 = @"mult";
      v66 = v18;
      selfCopy = self;
      do
      {
        v24 = 0;
        v68 = v20;
        do
        {
          if (*v84 != v71)
          {
            objc_enumerationMutation(v18);
          }

          v30 = *(*(&v83 + 1) + 8 * v24);
          v31 = [v30 objectForKeyedSubscript:v21];
          if (v31)
          {
            v32 = [v30 objectForKeyedSubscript:v21];

            v29 = v32;
            if ([v32 isEqual:&unk_285225338])
            {
              goto LABEL_19;
            }
          }

          else
          {

            v29 = &unk_285225338;
            if ([&unk_285225338 isEqual:&unk_285225338])
            {
LABEL_19:
              lastObject = [v75 lastObject];
              goto LABEL_22;
            }
          }

          lastObject = [v75 objectAtIndexedSubscript:{objc_msgSend(v29, "intValue")}];
LABEL_22:
          v74 = lastObject;
          v34 = [v30 objectForKeyedSubscript:@"filter"];
          objc_opt_class();
          v76 = v34;
          if (objc_opt_isKindOfClass())
          {
            v72 = v29;
            v73 = v24;
            v25 = v34;
            v26 = [(MOVReaderInterface *)self applyFlip:v74 f:v30];
            [v25 setValue:v26 forKey:v70];
            outputImage = [v25 outputImage];
LABEL_12:
            v28 = outputImage;

            [v75 addObject:v28];
LABEL_13:

            v29 = v72;
            v24 = v73;
            goto LABEL_14;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v72 = v29;
            v73 = v24;
            v25 = v34;
            v26 = [v30 objectForKeyedSubscript:@"background_img"];
            outputImage = [v25 applyWithForeground:v74 background:v26];
            goto LABEL_12;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v72 = v29;
            v73 = v24;
            v35 = [MEMORY[0x277CBEB18] arrayWithObject:v74];
            v36 = [v30 objectForKeyedSubscript:v23];
            if (v36)
            {
              v37 = [v30 objectForKeyedSubscript:v23];
            }

            else
            {
              v37 = &unk_285225380;
            }

            v38 = 0x277CBE000;
            v39 = v34;

            v78 = v35;
            v69 = v37;
            [v35 addObject:v37];
            v40 = [v30 objectForKeyedSubscript:@"params"];
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            obj = v40;
            v41 = [v40 countByEnumeratingWithState:&v79 objects:v88 count:16];
            if (v41)
            {
              v42 = v41;
              v43 = *v80;
              do
              {
                for (i = 0; i != v42; ++i)
                {
                  while (1)
                  {
                    if (*v80 != v43)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v45 = *(*(&v79 + 1) + 8 * i);
                    v46 = *(v38 + 2752);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      break;
                    }

                    [v78 addObject:v45];
                    if (v42 == ++i)
                    {
                      goto LABEL_31;
                    }
                  }

                  v47 = [v45 objectForKeyedSubscript:v23];
                  if (v47)
                  {
                    v48 = [v45 objectForKeyedSubscript:v23];
                  }

                  else
                  {
                    v48 = &unk_285225380;
                  }

                  v49 = [v45 objectForKeyedSubscript:v21];

                  if (v49)
                  {
                    v50 = v23;
                    v51 = v21;
                    v52 = [v45 objectForKeyedSubscript:v21];
                    if ([v52 isEqual:&unk_285225338])
                    {
                      [v75 lastObject];
                    }

                    else
                    {
                      [v75 objectAtIndexedSubscript:{objc_msgSend(v52, "intValue")}];
                    }
                    v53 = ;
                    [v78 addObject:v53];
                    [v78 addObject:v48];

                    v21 = v51;
                    v23 = v50;
                    v38 = 0x277CBE000uLL;
                  }

                  v54 = [v45 objectForKeyedSubscript:@"img"];

                  if (v54)
                  {
                    v55 = [v45 objectForKeyedSubscript:@"img"];
                    [v78 addObject:v55];

                    [v78 addObject:v48];
                  }

                  v39 = v76;
                }

LABEL_31:
                v42 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
              }

              while (v42);
            }

            v56 = v39;
            [v74 extent];
            v26 = v78;
            v57 = [v56 applyWithExtent:&unk_28521AB88 roiCallback:v78 arguments:?];

            [v75 addObject:v57];
            v18 = v66;
            self = selfCopy;
            v20 = v68;
            v28 = v69;
            goto LABEL_13;
          }

LABEL_14:

          ++v24;
        }

        while (v24 != v20);
        v20 = [v18 countByEnumeratingWithState:&v83 objects:v89 count:16];
      }

      while (v20);
    }

    v58 = self->_filterContext;
    lastObject2 = [v75 lastObject];
    v10 = v64;
    [(CIContext *)v58 render:lastObject2 toCVPixelBuffer:v64];

    streamCopy = v65;
    v12 = v63;
  }

  v60 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)resolvedCalibration:(int64_t *)calibration
{
  v34 = *MEMORY[0x277D85DE8];
  lastError = self->_lastError;
  self->_lastError = 0;

  v6 = @"mdta/com.apple.calibration";
  v7 = 0x277CCA000uLL;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.0", v6];
  [(MOVStreamReader *)self metadataForMovie];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v9)
  {
    if (!calibration)
    {
      goto LABEL_19;
    }

    v21 = *calibration;
    if (!*calibration)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v10 = v9;
  selfCopy = self;
  calibrationCopy = calibration;
  v11 = 0;
  v12 = 0;
  v13 = *v30;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v30 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v29 + 1) + 8 * i);
      identifier = [v15 identifier];
      v17 = [(__CFString *)v6 isEqualToString:identifier];

      v11 |= v17;
      identifier2 = [v15 identifier];
      LODWORD(identifier) = [v8 isEqualToString:identifier2];

      v12 |= identifier;
    }

    v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v10);
  if (v11 & v12)
  {
    v19 = [MEMORY[0x277CCA9B8] movReaderInterfaceWarningWithMessage:@"Location nil and 0 are both present. This is unexpected!!" code:2];
    v20 = selfCopy->_lastError;
    selfCopy->_lastError = v19;
  }

  if (!calibrationCopy)
  {
    if (v11)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v21 = *calibrationCopy;
  v7 = 0x277CCA000;
  if (*calibrationCopy)
  {
LABEL_15:
    v22 = [*(v7 + 3240) stringWithFormat:@"%@.%ld", v6, v21];
    goto LABEL_20;
  }

LABEL_17:
  if (v12)
  {
    v22 = v8;
    goto LABEL_20;
  }

LABEL_19:
  v22 = v6;
LABEL_20:
  v23 = v22;

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)grabCalibration:(int64_t *)calibration
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [(MOVReaderInterface *)self resolvedCalibration:calibration];
  [(MOVStreamReader *)self metadataForMovie];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [v4 isEqualToString:identifier];

        if (v11)
        {
          value = [v9 value];
          v6 = [CVACalibration withData:value];

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (BOOL)grabSWToWExtrinsics:(id *)extrinsics summary:(id)summary backExtrinsics:(id)backExtrinsics
{
  backExtrinsicsCopy = backExtrinsics;
  v8 = [summary objectForKeyedSubscript:@"extrinsicsSWToW"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectAtIndexedSubscript:0];
    [v10 floatValue];
    *extrinsics = v11;

    v12 = [v9 objectAtIndexedSubscript:1];
    [v12 floatValue];
    *(extrinsics + 4) = v13;

    v14 = [v9 objectAtIndexedSubscript:2];
    [v14 floatValue];
    *(extrinsics + 8) = v15;

    v16 = [v9 objectAtIndexedSubscript:3];
    [v16 floatValue];
    *(extrinsics + 12) = v17;

    v18 = [v9 objectAtIndexedSubscript:4];
    [v18 floatValue];
    *(extrinsics + 1) = v19;

    v20 = [v9 objectAtIndexedSubscript:5];
    [v20 floatValue];
    *(extrinsics + 5) = v21;

    v22 = [v9 objectAtIndexedSubscript:6];
    [v22 floatValue];
    *(extrinsics + 9) = v23;

    v24 = [v9 objectAtIndexedSubscript:7];
    [v24 floatValue];
    *(extrinsics + 13) = v25;

    v26 = [v9 objectAtIndexedSubscript:8];
    [v26 floatValue];
    *(extrinsics + 2) = v27;

    v28 = [v9 objectAtIndexedSubscript:9];
    [v28 floatValue];
    *(extrinsics + 6) = v29;

    v30 = [v9 objectAtIndexedSubscript:10];
    [v30 floatValue];
    *(extrinsics + 10) = v31;

    v32 = [v9 objectAtIndexedSubscript:11];
    [v32 floatValue];
    *(extrinsics + 14) = v33;
  }

  else
  {
    if (!backExtrinsicsCopy || ([backExtrinsicsCopy objectForKeyedSubscript:*MEMORY[0x277CF3CF0]], v35 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v35, "objectForKeyedSubscript:", *MEMORY[0x277CF3CD0]), v32 = objc_claimAutoreleasedReturnValue(), v35, !v32))
    {
      v34 = 0;
      goto LABEL_8;
    }

    bytes = [v32 bytes];
    v37 = *bytes[2].f32;
    v38 = *bytes[4].f32;
    v39 = *(MEMORY[0x277D860B8] + 32);
    v40 = *(MEMORY[0x277D860B8] + 48);
    v41 = *(MEMORY[0x277D860B8] + 16);
    v41.i32[1] = -1.0;
    v42 = *MEMORY[0x277D860B8];
    v42.i32[0] = -1.0;
    v43 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, COERCE_FLOAT(*bytes->f32)), v41, v37.f32[0]), v39, v38.f32[0]), 0, v40);
    v44 = vmlaq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v42, *bytes, 1), v41, *v37.f32, 1), v39, *v38.f32, 1), 0, v40);
    v45 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v42, *bytes->f32, 2), v41, v37, 2), v39, v38, 2), 0, v40);
    v46 = vaddq_f32(v40, vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v42, *bytes->f32, 3), v41, v37, 3), v39, v38, 3));
    v53.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vnegq_f32(v43), v44, *MEMORY[0x277D860B8], 1), v45, *MEMORY[0x277D860B8], 2), v46, *MEMORY[0x277D860B8], 3);
    __asm { FMOV            V2.4S, #-1.0 }

    v53.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_f32(vmulq_n_f32(v43, COERCE_FLOAT(*(MEMORY[0x277D860B8] + 16))), _Q2, v44), v45, *(MEMORY[0x277D860B8] + 16), 2), v46, *(MEMORY[0x277D860B8] + 16), 3);
    v53.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, v39.f32[0]), v44, *v39.f32, 1), v45, v39, 2), v46, v39, 3);
    v53.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, v40.f32[0]), v44, *v40.f32, 1), v45, v40, 2), v46, v40, 3);
    v54 = __invert_f4(v53);
    *(extrinsics + 2) = v54.columns[0].i32[2];
    *extrinsics = v54.columns[0].i64[0];
    *(extrinsics + 6) = v54.columns[1].i32[2];
    *(extrinsics + 10) = v54.columns[2].i32[2];
    *(extrinsics + 2) = v54.columns[1].i64[0];
    *(extrinsics + 4) = v54.columns[2].i64[0];
    *(extrinsics + 14) = v54.columns[3].i32[2];
    *(extrinsics + 6) = v54.columns[3].i64[0];
  }

  v34 = 1;
LABEL_8:

  return v34;
}

- (BOOL)grabSWToWExtrinsics:(id *)extrinsics
{
  grabSummary = [(MOVReaderInterface *)self grabSummary];
  v6 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.isp.BackExtrinsics"];
  LOBYTE(extrinsics) = [MOVReaderInterface grabSWToWExtrinsics:extrinsics summary:grabSummary backExtrinsics:v6];

  return extrinsics;
}

+ (id)grabJasperExtrinsics:(id)extrinsics backExtrinsics:(id)backExtrinsics
{
  v95 = *MEMORY[0x277D85DE8];
  backExtrinsicsCopy = backExtrinsics;
  v6 = [extrinsics objectForKeyedSubscript:@"extrinsicsToJasper"];
  if (v6)
  {
    v7 = objc_opt_new();
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    allKeys = [v6 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v90 objects:v94 count:16];
    if (v9)
    {
      v10 = v9;
      v83 = backExtrinsicsCopy;
      v11 = *v91;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v91 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v90 + 1) + 8 * i);
          v14 = [v6 objectForKeyedSubscript:v13];
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v15 = [v14 objectAtIndexedSubscript:0];
          [v15 floatValue];
          LODWORD(v86) = v16;

          v17 = [v14 objectAtIndexedSubscript:1];
          [v17 floatValue];
          LODWORD(v87) = v18;

          v19 = [v14 objectAtIndexedSubscript:2];
          [v19 floatValue];
          LODWORD(v88) = v20;

          v21 = [v14 objectAtIndexedSubscript:3];
          [v21 floatValue];
          LODWORD(v89) = v22;

          v23 = [v14 objectAtIndexedSubscript:4];
          [v23 floatValue];
          DWORD1(v86) = v24;

          v25 = [v14 objectAtIndexedSubscript:5];
          [v25 floatValue];
          DWORD1(v87) = v26;

          v27 = [v14 objectAtIndexedSubscript:6];
          [v27 floatValue];
          DWORD1(v88) = v28;

          v29 = [v14 objectAtIndexedSubscript:7];
          [v29 floatValue];
          DWORD1(v89) = v30;

          v31 = [v14 objectAtIndexedSubscript:8];
          [v31 floatValue];
          DWORD2(v86) = v32;

          v33 = [v14 objectAtIndexedSubscript:9];
          [v33 floatValue];
          DWORD2(v87) = v34;

          v35 = [v14 objectAtIndexedSubscript:10];
          [v35 floatValue];
          DWORD2(v88) = v36;

          v37 = [v14 objectAtIndexedSubscript:11];
          [v37 floatValue];
          DWORD2(v89) = v38;

          v39 = [MEMORY[0x277CBEA90] dataWithBytes:&v86 length:64];
          [v7 setObject:v39 forKeyedSubscript:v13];
        }

        v10 = [allKeys countByEnumeratingWithState:&v90 objects:v94 count:16];
      }

      while (v10);
      backExtrinsicsCopy = v83;
    }
  }

  else
  {
    if (!backExtrinsicsCopy)
    {
      v7 = 0;
      goto LABEL_20;
    }

    v40 = [backExtrinsicsCopy objectForKeyedSubscript:*MEMORY[0x277CF3CE0]];
    v41 = *MEMORY[0x277CF3CD0];
    allKeys = [v40 objectForKeyedSubscript:*MEMORY[0x277CF3CD0]];

    v42 = *MEMORY[0x277CF3CF0];
    v43 = [backExtrinsicsCopy objectForKeyedSubscript:*MEMORY[0x277CF3CF0]];
    v44 = [v43 objectForKeyedSubscript:v41];

    if (allKeys)
    {
      _ZF = v44 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (_ZF)
    {
      v7 = 0;
    }

    else
    {
      v7 = objc_opt_new();
      bytes = [allKeys bytes];
      v47 = *bytes[2].f32;
      v48 = *bytes[4].f32;
      v50 = *(MEMORY[0x277D860B8] + 32);
      v49 = *(MEMORY[0x277D860B8] + 48);
      v51 = *(MEMORY[0x277D860B8] + 16);
      v51.i32[1] = -1.0;
      v52 = *MEMORY[0x277D860B8];
      v52.i32[0] = -1.0;
      v75 = v52;
      v76 = v51;
      v53 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v52, COERCE_FLOAT(*bytes->f32)), v51, v47.f32[0]), v50, v48.f32[0]), 0, v49);
      v54 = vmlaq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v52, *bytes, 1), v51, *v47.f32, 1), v50, *v48.f32, 1), 0, v49);
      v55 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v52, *bytes->f32, 2), v51, v47, 2), v50, v48, 2), 0, v49);
      v56 = vaddq_f32(v49, vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v52, *bytes->f32, 3), v51, v47, 3), v50, v48, 3));
      v82 = *MEMORY[0x277D860B8];
      v79 = *(MEMORY[0x277D860B8] + 16);
      __asm { FMOV            V2.4S, #-1.0 }

      v84 = _Q2;
      v73 = v49;
      v74 = v50;
      v80 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vnegq_f32(v53), v54, *MEMORY[0x277D860B8], 1), v55, *MEMORY[0x277D860B8], 2), v56, *MEMORY[0x277D860B8], 3);
      v81 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_f32(vmulq_n_f32(v53, v79.f32[0]), _Q2, v54), v55, v79, 2), v56, v79, 3);
      *(&v86 + 1) = v80.u32[2];
      *(&v87 + 1) = v81.u32[2];
      *&v86 = v80.i64[0];
      *&v87 = v81.i64[0];
      v77 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v50.f32[0]), v54, *v50.f32, 1), v55, v50, 2), v56, v50, 3);
      v78 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v49.f32[0]), v54, *v49.f32, 1), v55, v49, 2), v56, v49, 3);
      *(&v88 + 1) = v77.u32[2];
      *(&v89 + 1) = v78.u32[2];
      *&v88 = v77.i64[0];
      *&v89 = v78.i64[0];
      v61 = [MEMORY[0x277CBEA90] dataWithBytes:&v86 length:64];
      [v7 setObject:v61 forKeyedSubscript:v41];
      [v7 setObject:v61 forKeyedSubscript:@"AVCaptureDeviceTypeBuiltInWideAngleCamera.1"];
      bytes2 = [v44 bytes];
      v63 = *bytes2[2].f32;
      v64 = *bytes2[4].f32;
      v65 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v75, COERCE_FLOAT(*bytes2->f32)), v76, v63.f32[0]), v74, v64.f32[0]), 0, v73);
      v66 = vmlaq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v75, *bytes2, 1), v76, *v63.f32, 1), v74, *v64.f32, 1), 0, v73);
      v67 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v75, *bytes2->f32, 2), v76, v63, 2), v74, v64, 2), 0, v73);
      v68 = vaddq_f32(v73, vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v75, *bytes2->f32, 3), v76, v63, 3), v74, v64, 3));
      v97.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vnegq_f32(v65), v66, *v82.f32, 1), v67, v82, 2), v68, v82, 3);
      v97.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_f32(vmulq_n_f32(v65, v79.f32[0]), v84, v66), v67, v79, 2), v68, v79, 3);
      v97.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, v74.f32[0]), v66, *v74.f32, 1), v67, v74, 2), v68, v74, 3);
      v97.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v65, v73.f32[0]), v66, *v73.f32, 1), v67, v73, 2), v68, v73, 3);
      v98 = __invert_f4(v97);
      v69 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80, v98.columns[0].f32[0]), v81, *v98.columns[0].f32, 1), v77, v98.columns[0], 2), v78, v98.columns[0], 3);
      v98.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80, v98.columns[1].f32[0]), v81, *v98.columns[1].f32, 1), v77, v98.columns[1], 2), v78, v98.columns[1], 3);
      v98.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80, v98.columns[2].f32[0]), v81, *v98.columns[2].f32, 1), v77, v98.columns[2], 2), v78, v98.columns[2], 3);
      v85[1] = v69.u32[2];
      v85[3] = v98.columns[0].u32[2];
      v98.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80, v98.columns[3].f32[0]), v81, *v98.columns[3].f32, 1), v77, v98.columns[3], 2), v78, v98.columns[3], 3);
      v85[0] = v69.i64[0];
      v85[2] = v98.columns[0].i64[0];
      v85[5] = v98.columns[1].u32[2];
      v85[7] = v98.columns[2].u32[2];
      v85[4] = v98.columns[1].i64[0];
      v85[6] = v98.columns[2].i64[0];
      v70 = [MEMORY[0x277CBEA90] dataWithBytes:v85 length:64];
      [v7 setObject:v70 forKeyedSubscript:v42];
      [v7 setObject:v70 forKeyedSubscript:@"AVCaptureDeviceTypeBuiltInUltraWideCamera.1"];
    }
  }

LABEL_20:
  v71 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)grabJasperExtrinsics
{
  grabSummary = [(MOVReaderInterface *)self grabSummary];
  v4 = [(MOVReaderInterface *)self grabMovieMetadataForKey:@"mdta/com.apple.isp.BackExtrinsics"];
  v5 = [MOVReaderInterface grabJasperExtrinsics:grabSummary backExtrinsics:v4];

  return v5;
}

- (id)grabNextStreamData:(id)data timeRange:(id *)range
{
  dataCopy = data;
  lastError = self->_lastError;
  self->_lastError = 0;

  v18 = 0;
  v8 = [(MOVStreamReader *)self grabNextMetadataOfStream:dataCopy timeRange:range error:&v18];
  v9 = v18;
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v9 description];
    v13 = [v11 stringWithFormat:@"%@: %@", dataCopy, v12];

    v14 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:v13 code:9];
    v15 = self->_lastError;
    self->_lastError = v14;

    v16 = 0;
  }

  else
  {
    v16 = v8;
  }

  return v16;
}

- (id)resolvedIMUStreamName:(int64_t *)name metadataID:(id)d
{
  if (name)
  {
    if (!*name)
    {
      self->_imuLocationNil;
    }
  }

  else
  {
    self->_imuLocation0;
  }

  return [CVAMetadataWrapperTracks imuTrackName:"imuTrackName:prefix:" prefix:?];
}

- (id)grabNextFastPathMUData:(int64_t *)data metadataID:(id)d
{
  v5 = [(MOVReaderInterface *)self resolvedIMUStreamName:data metadataID:d];
  v6 = [(MOVReaderInterface *)self grabNextStreamData:v5 timeRange:0];

  return v6;
}

- (id)grabNextFastPathMUData:(int64_t *)data
{
  v4 = [(MOVReaderInterface *)self resolvedSpuIMUStreamName:data];
  v5 = [(MOVReaderInterface *)self grabNextStreamData:v4 timeRange:0];

  return v5;
}

- (id)grabNextSpuIMUData:(id *)data location:(int64_t *)location
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = [(MOVReaderInterface *)self resolvedSpuIMUStreamName:location];
  v8 = [(MOVReaderInterface *)self grabNextStreamData:v7 timeRange:data];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
  if (location)
  {
    v10 = *location;
  }

  else
  {
    v10 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
  v12 = [(NSMutableDictionary *)self->_spuVersions objectForKeyedSubscript:v11];
  unsignedIntValue = [v12 unsignedIntValue];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    if (unsignedIntValue)
    {
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          v20 = [CVASpuFastPathComboAxisData alloc];
          v21 = [(CVASpuFastPathComboAxisData *)v20 initWithFastPathIMUData:v19, v26];
          if (v21)
          {
            [v9 addObject:v21];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    else
    {
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v23 = [CVASpuFastPathComboAxisData withData:*(*(&v26 + 1) + 8 * j), v26];
          if (v23)
          {
            [v9 addObject:v23];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }
  }

  v24 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)resolvedAccelStreamName:(int64_t *)name
{
  if (name)
  {
    if (!*name && self->_accelLocationNil)
    {
      name = 0;
    }
  }

  else if (self->_accelLocation0)
  {
    name = &unk_27E3C8650;
  }

  return [CVAMetadataWrapperTracks accelerometerTrackName:name prefix:self->_accelTrackName];
}

- (id)grabNextRawAccelData:(id *)data location:(int64_t *)location
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(MOVReaderInterface *)self resolvedAccelStreamName:location];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMAccelerometerData withData:*(*(&v17 + 1) + 8 * i), v17];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)resolvedGyroStreamName:(int64_t *)name
{
  if (name)
  {
    if (!*name && self->_gyroLocationNil)
    {
      name = 0;
    }
  }

  else if (self->_gyroLocation0)
  {
    name = &unk_27E3C8650;
  }

  return [CVAMetadataWrapperTracks gyroTrackName:name prefix:self->_gyroTrackName];
}

- (id)grabNextRawGyroData:(id *)data location:(int64_t *)location
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(MOVReaderInterface *)self resolvedGyroStreamName:location];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMGyroData withData:*(*(&v17 + 1) + 8 * i), v17];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)resolvedMotionStreamName:(int64_t *)name
{
  if (name)
  {
    if (!*name && self->_motionLocationNil)
    {
      name = 0;
    }
  }

  else if (self->_motionLocation0)
  {
    name = &unk_27E3C8650;
  }

  return [CVAMetadataWrapperTracks motionTrackName:name prefix:self->_motionTrackName];
}

- (id)grabNextMotionData:(id *)data location:(int64_t *)location
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(MOVReaderInterface *)self resolvedMotionStreamName:location];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMMotionData withData:*(*(&v17 + 1) + 8 * i), v17];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)grabNextBarometerData:(id *)data
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = self->_barometerTrackName;
  v6 = [(MOVReaderInterface *)self grabNextStreamData:v5 timeRange:data];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [CVACMBarometerData withData:*(*(&v16 + 1) + 8 * i), v16];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)resolvedCompassStreamName:(int64_t *)name
{
  if (name)
  {
    if (!*name && self->_compassLocationNil)
    {
      name = 0;
    }
  }

  else if (self->_compassLocation0)
  {
    name = &unk_27E3C8650;
  }

  return [CVAMetadataWrapperTracks compassTrackName:name prefix:self->_compassTrackName];
}

- (id)grabNextRawCompassData:(id *)data location:(int64_t *)location
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(MOVReaderInterface *)self resolvedCompassStreamName:location];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMCompassData withData:*(*(&v17 + 1) + 8 * i), v17];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)grabNextRawALSData:(id *)data location:(int64_t *)location
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [CVAMetadataWrapperTracks alsTrackName:location prefix:self->_alsTrackName];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMALSData withData:*(*(&v17 + 1) + 8 * i), v17];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)grabNextRawWiFiData:(id *)data location:(int64_t *)location
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [CVAMetadataWrapperTracks wifiTrackName:location prefix:self->_wifiTrackName];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMWiFiData withData:*(*(&v17 + 1) + 8 * i), v17];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)grabNextRawUWBData:(id *)data location:(int64_t *)location
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [CVAMetadataWrapperTracks uwbTrackName:location prefix:self->_uwbTrackName];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMUWBData withData:*(*(&v17 + 1) + 8 * i), v17];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)grabNextRawBLEData:(id *)data location:(int64_t *)location
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [CVAMetadataWrapperTracks bleTrackName:location prefix:self->_bleTrackName];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMBLEData withData:*(*(&v17 + 1) + 8 * i), v17];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)resolvedDeviceMotionStreamName:(int64_t *)name
{
  if (name)
  {
    if (!*name && self->_deviceMotionLocationNil)
    {
      name = 0;
    }
  }

  else if (self->_deviceMotionLocation0)
  {
    name = &unk_27E3C8650;
  }

  return [CVAMetadataWrapperTracks deviceMotionTrackName:name prefix:self->_deviceMotionTrackName];
}

- (id)grabNextDeviceMotionData:(id *)data location:(int64_t *)location
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [(MOVReaderInterface *)self resolvedDeviceMotionStreamName:location];
  v7 = [(MOVReaderInterface *)self grabNextStreamData:v6 timeRange:data];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [CVACMDeviceMotionData withData:*(*(&v17 + 1) + 8 * i), v17];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)resolvedLocationStreamName:(int64_t *)name
{
  if (name)
  {
    if (!*name && self->_locationLocationNil)
    {
      name = 0;
    }
  }

  else if (self->_locationLocation0)
  {
    name = &unk_27E3C8650;
  }

  return [CVAMetadataWrapperTracks locationTrackName:name prefix:self->_locationTrackName];
}

- (id)grabNextCLLocation:(id *)location location:(int64_t *)a4 timestamps:(id *)timestamps
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = [(MOVReaderInterface *)self resolvedLocationStreamName:a4];
  v9 = [(MOVReaderInterface *)self grabNextStreamData:v8 timeRange:location];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  if (timestamps)
  {
    timestampsCopy = timestamps;
    v29 = v8;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
    v38 = 0.0;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v28 = v9;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [CVAMetadataWrapper decodeCLLocation:*(*(&v34 + 1) + 8 * i) timestamp:&v38];
          if (v17)
          {
            [v10 addObject:v17];
            v18 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
            [v11 addObject:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v14);
    }

    v19 = v11;
    v9 = v28;
    *timestampsCopy = v11;
    v8 = v29;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v9;
    v22 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v11);
          }

          v26 = [CVAMetadataWrapper decodeCLLocation:*(*(&v30 + 1) + 8 * j)];
          if (v26)
          {
            [v10 addObject:v26];
          }
        }

        v23 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v23);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)grabNextCMDeviceMotion:(id *)motion
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(MOVReaderInterface *)self resolvedDeviceMotionStreamName:0];
  v6 = [(MOVReaderInterface *)self grabNextStreamData:v5 timeRange:motion];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [CVAMetadataWrapper decodeCMDeviceMotion:*(*(&v16 + 1) + 8 * i), v16];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)grabNextCMData:(id *)data
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(MOVReaderInterface *)self grabNextStreamData:@"CMData" timeRange:data];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [CMData withData:*(*(&v13 + 1) + 8 * i), v13];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)grabNextUserEvent:(id *)event
{
  v21 = *MEMORY[0x277D85DE8];
  userEventTrackName = self->_userEventTrackName;
  if (userEventTrackName)
  {
    v5 = [(MOVReaderInterface *)self grabNextStreamData:userEventTrackName timeRange:event];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [CVAUserEvent withData:*(*(&v16 + 1) + 8 * i), v16];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = 0;
    v15 = *MEMORY[0x277D85DE8];
  }

  return v6;
}

- (id)grabNextTimedValue:(id *)value
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(MOVReaderInterface *)self grabNextStreamData:@"CVATimedValue" timeRange:value];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [CVATimedValue withData:*(*(&v13 + 1) + 8 * i), v13];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)grabNextPRDevice:(id *)device
{
  v21 = *MEMORY[0x277D85DE8];
  prDeviceTrackName = self->_prDeviceTrackName;
  if (prDeviceTrackName)
  {
    v5 = [(MOVReaderInterface *)self grabNextStreamData:prDeviceTrackName timeRange:device];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [CVAPRDevice withData:*(*(&v16 + 1) + 8 * i), v16];
          if (v12)
          {
            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = 0;
    v15 = *MEMORY[0x277D85DE8];
  }

  return v6;
}

- (id)grabNextFeatureBuffer
{
  v3 = [CVAFeatureBuffer streamName:0];
  v4 = [(MOVReaderInterface *)self grabNextFeatureBuffer:0 streamName:v3];

  return v4;
}

- (id)grabNextFeatureBuffer:(id *)buffer streamName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [(MOVReaderInterface *)self grabNextStreamData:name timeRange:buffer];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [CVAFeatureBuffer withData:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)grabNextDepthTOF:(id *)f sampleDropped:(BOOL *)dropped
{
  v115 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_new();
  if (dropped)
  {
    *dropped = 0;
  }

  lastError = self->_lastError;
  self->_lastError = 0;

  if (!self->_tofDepthPCStreamID)
  {
    depthTOFTrackName = self->_depthTOFTrackName;
    if (!depthTOFTrackName)
    {
      depthTOFTrackName = @"com.apple.reality.kind.camera.xcam.pointcloud";
    }

    v93 = depthTOFTrackName;
    [MOVReaderInterface grabNextStreamData:"grabNextStreamData:timeRange:" timeRange:?];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    obj = v106 = 0u;
    v16 = [obj countByEnumeratingWithState:&v103 objects:v114 count:16];
    if (v16)
    {
      v17 = v16;
      droppedCopy = dropped;
      v18 = 0;
      v19 = *v104;
      do
      {
        v20 = 0;
        v21 = v18;
        do
        {
          while (1)
          {
            if (*v104 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v103 + 1) + 8 * v20);
            v102 = v21;
            v23 = [v22 decompressedDataUsingAlgorithm:1 error:&v102];
            v18 = v102;

            if (!v18)
            {
              break;
            }

            v24 = MEMORY[0x277CCA9B8];
            v25 = [v18 description];
            v26 = [v24 movReaderInterfaceErrorWithMessage:v25 code:11];
            v27 = self->_lastError;
            self->_lastError = v26;

            ++v20;
            v21 = v18;
            if (v17 == v20)
            {
              goto LABEL_11;
            }
          }

          v28 = [CVADepthTOF withData:v23];
          v29 = v28;
          if (self->_jasperEnabled[self->_jasperCounter])
          {
            [v28 timestamp];
            if (v30 <= self->_lastDepthTOFTimestamp)
            {
              v32 = MEMORY[0x277CCACA8];
              [v29 timestamp];
              v34 = [v32 stringWithFormat:@"TOF timestamp is old %lf : %lf", v33, *&self->_lastDepthTOFTimestamp];
              v35 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:v34 code:0];
              v36 = self->_lastError;
              self->_lastError = v35;
            }

            else
            {
              [v6 addObject:v29];
              [v29 timestamp];
              self->_lastDepthTOFTimestamp = v31;
            }
          }

          else if (droppedCopy)
          {
            *droppedCopy = 1;
          }

          v37 = self->_jasperCounter + 1;
          v38 = v37 & 0xF;
          v40 = -v37;
          v39 = v40 < 0;
          v41 = v40 & 0xF;
          if (v39)
          {
            v42 = v38;
          }

          else
          {
            v42 = -v41;
          }

          self->_jasperCounter = v42;

          ++v20;
          v21 = 0;
        }

        while (v17 != v20);
LABEL_11:
        v17 = [obj countByEnumeratingWithState:&v103 objects:v114 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_52;
  }

  if (self->_jdfp)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v109 = 0;
    v8 = [MOVReaderInterface copyNextFrameForStream:"copyNextFrameForStream:timestamp:error:" timestamp:? error:?];
    v9 = 0;
    if (v9)
    {
      v10 = v9;
      CVPixelBufferRelease(v8);
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", self->_tofDepthPCStreamID, v10];
      v12 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:v11 code:10];
      v13 = self->_lastError;
      self->_lastError = v12;

      v14 = v6;
      goto LABEL_71;
    }

    v43 = CVBufferGetAttachments(v8, kCVAttachmentMode_ShouldPropagate);
    if (!v43)
    {
      goto LABEL_74;
    }

    v44 = v43;
    v45 = [v43 objectForKeyedSubscript:*MEMORY[0x277D256F0]];
    if (!v45)
    {
      v52 = v6;

      goto LABEL_71;
    }

    v46 = v45;
    droppedCopy2 = dropped;
    CMTimeMakeFromDictionary(&time, v45);
    Seconds = CMTimeGetSeconds(&time);
    v48 = [(CVAJasperDepthFrameProcessor *)self->_jdfp process:v8];
    v49 = *MEMORY[0x277CF52D8];
    v50 = [v44 objectForKeyedSubscript:*MEMORY[0x277CF52D8]];
    if (v50)
    {
      v51 = v50;
    }

    else
    {
      v53 = v48;
      v54 = [v44 objectForKeyedSubscript:*MEMORY[0x277CF3F78]];
      v51 = [v54 objectForKeyedSubscript:v49];

      if (!v51)
      {
        integerValue = 0;
        v48 = v53;
        goto LABEL_38;
      }

      v48 = v53;
    }

    integerValue = [v51 integerValue];

LABEL_38:
    v56 = [[CVADepthTOF alloc] initWithJasperDepth:v48 timestamp:integerValue projectorMode:Seconds];
    CVPixelBufferRelease(v8);
    jasperCounter = self->_jasperCounter;
    if (self->_jasperEnabled[jasperCounter])
    {
      [v6 addObject:v56];
      LODWORD(jasperCounter) = self->_jasperCounter;
    }

    else if (droppedCopy2)
    {
      *droppedCopy2 = 1;
    }

    v58 = jasperCounter + 1;
    v39 = -v58 < 0;
    v59 = -v58 & 0xF;
    v60 = v58 & 0xF;
    if (!v39)
    {
      v60 = -v59;
    }

    self->_jasperCounter = v60;
  }

  if (self->_pdfp)
  {
    v110 = 0;
    v111 = 0;
    v112 = 0;
    tofDepthPCStreamID = self->_tofDepthPCStreamID;
    v107 = 0;
    v62 = [(MOVReaderInterface *)self copyNextFrameForStream:tofDepthPCStreamID timestamp:&v110 error:&v107];
    v63 = v107;
    if (v63)
    {
      v64 = v63;
      CVPixelBufferRelease(v62);
      v65 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", self->_tofDepthPCStreamID, v64];
      v66 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:v65 code:10];
      v67 = self->_lastError;
      self->_lastError = v66;

      v68 = v6;
      goto LABEL_71;
    }

    v69 = CVBufferGetAttachments(v62, kCVAttachmentMode_ShouldPropagate);
    if (v69)
    {
      v70 = v69;
      v71 = [v69 objectForKeyedSubscript:*MEMORY[0x277D256F0]];
      if (!v71)
      {
        v92 = v6;

        goto LABEL_71;
      }

      v72 = v71;
      CMTimeMakeFromDictionary(&time, v71);
      v73 = CMTimeGetSeconds(&time);
      v74 = [(CVAPeridotDepthFrameProcessor *)self->_pdfp process:v62];
      v75 = [[CVADepthTOF alloc] initWithADJasperPointCloud:v74 timestamp:v73];
      [(CVADepthTOF *)v75 setProjectorMode:1];
      [v6 addObject:v75];
      CVPixelBufferRelease(v62);

      goto LABEL_51;
    }

LABEL_74:
    v91 = v6;
    goto LABEL_71;
  }

LABEL_51:
  v18 = 0;
LABEL_52:
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v94 = v6;
  v76 = v6;
  v77 = [v76 countByEnumeratingWithState:&v98 objects:v113 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v99;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v99 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = *(*(&v98 + 1) + 8 * i);
        if (![v81 projectorMode])
        {
          pointCloud = [v81 pointCloud];

          if (pointCloud)
          {
            pointCloud2 = [v81 pointCloud];
            v84 = *[pointCloud2 bankIds];

            if (self->_jdfp)
            {
              v85 = &unk_2401A3E58 + 8 * v84;
            }

            else
            {
              osVersion = self->_osVersion;
              if (osVersion)
              {
                v87 = [(NSString *)osVersion compare:@"18A253"];
                v85 = &unk_2401A3E78 + 8 * v84;
                if (v87 == -1)
                {
                  v85 = &unk_2401A3E58 + 8 * v84;
                }
              }

              else
              {
                v85 = &unk_2401A3E78 + 8 * v84;
                if (self->_machTimeSince1970 < 1584430000.0)
                {
                  v85 = &unk_2401A3E58 + 8 * v84;
                }
              }
            }

            [v81 setProjectorMode:*v85];
          }
        }
      }

      v78 = [v76 countByEnumeratingWithState:&v98 objects:v113 count:16];
    }

    while (v78);
  }

  v88 = v76;
  v6 = v94;
LABEL_71:

  v89 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)grabNextDepthIR:(id)r timeRange:(id *)range
{
  rCopy = r;
  v6 = objc_opt_new();
  lastError = self->_lastError;
  self->_lastError = 0;

  memset(v24, 0, sizeof(v24));
  v23 = 0;
  v8 = [(MOVReaderInterface *)self copyNextFrameForStream:rCopy timestamp:v24 error:&v23];
  v9 = v23;
  if (v9)
  {
    CVPixelBufferRelease(v8);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", rCopy, v9];
    v11 = [MEMORY[0x277CCA9B8] movReaderInterfaceErrorWithMessage:v10 code:10];
    v12 = self->_lastError;
    self->_lastError = v11;

    v13 = v6;
  }

  else
  {
    v14 = CVBufferGetAttachments(v8, kCVAttachmentMode_ShouldPropagate);
    v10 = v14;
    if (v14)
    {
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277D256F0]];
      v16 = v15;
      if (v15)
      {
        CMTimeMakeFromDictionary(&time, v15);
        v17 = [[CVADepthIR alloc] initWithPixelBufferRef:v8 timestamp:CMTimeGetSeconds(&time)];
        CVPixelBufferRelease(v8);
        [v6 addObject:v17];
        v18 = v6;
      }

      else
      {
        CVPixelBufferRelease(v8);
        v20 = v6;
      }
    }

    else
    {
      CVPixelBufferRelease(v8);
      v19 = v6;
    }
  }

  return v6;
}

- (id)grabNextCVACameraCalibrationData:(id *)data
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(MOVReaderInterface *)self grabNextStreamData:@"CVACameraCalibration" timeRange:data];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [CVACameraCalibrationData withData:*(*(&v13 + 1) + 8 * i), v13];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)grabNextDictionary:(id)dictionary timeRange:(id *)range
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = [(MOVReaderInterface *)self grabNextStreamData:dictionary timeRange:range];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    v10 = 0x278C9A000uLL;
    v11 = 0x277CBE000uLL;
    v12 = 0x277CBE000uLL;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v14 = [*(v10 + 3568) decodeDictionary:*(*(&v29 + 1) + 8 * i)];
        if (v14)
        {
          v15 = *(v11 + 2752);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 addObject:v14];
          }

          else
          {
            v16 = *(v12 + 2656);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v6;
              v27 = 0u;
              v28 = 0u;
              v25 = 0u;
              v26 = 0u;
              v18 = v14;
              v19 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v26;
                do
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v26 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    [v5 addObject:*(*(&v25 + 1) + 8 * j)];
                  }

                  v20 = [v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
                }

                while (v20);
              }

              v6 = v17;
              v10 = 0x278C9A000;
              v11 = 0x277CBE000;
              v12 = 0x277CBE000;
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)grabNextClass:(id)class class:(Class)a4 timeRange:(id *)range
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [(MOVReaderInterface *)self grabNextStreamData:class timeRange:range];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [CVAMetadataWrapper decodeClass:*(*(&v16 + 1) + 8 * i) class:a4, v16];
        if (v13)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)grabNextNSCoderObject:(id)object class:(Class)class
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB98];
  classCopy = class;
  v6 = MEMORY[0x277CBEA60];
  objectCopy = object;
  v8 = [v6 arrayWithObjects:&classCopy count:1];
  v9 = [v5 setWithArray:{v8, classCopy, v14}];
  v10 = [(MOVReaderInterface *)self grabNextNSCoderObject:objectCopy classes:v9 timeRange:0];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)grabNextNSCoderObject:(id)object class:(Class)class timeRange:(id *)range
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CBEB98];
  classCopy = class;
  v8 = MEMORY[0x277CBEA60];
  objectCopy = object;
  v10 = [v8 arrayWithObjects:&classCopy count:1];
  v11 = [v7 setWithArray:{v10, classCopy, v16}];
  v12 = [(MOVReaderInterface *)self grabNextNSCoderObject:objectCopy classes:v11 timeRange:range];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)grabNextNSCoderObject:(id)object classes:(id)classes timeRange:(id *)range
{
  v24 = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  v9 = [(MOVReaderInterface *)self grabNextStreamData:object timeRange:range];
  v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [CVAMetadataWrapper decodeNSCoderObject:*(*(&v19 + 1) + 8 * i) classes:classesCopy, v19];
        if (v16)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (BOOL)isSuperWideStream:(id)stream
{
  v3 = *MEMORY[0x277CE5870];
  v4 = [stream componentsSeparatedByString:@"."];
  v5 = [v4 objectAtIndexedSubscript:0];

  if ([v5 isEqualToString:v3] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"AVCaptureDeviceTypeBuiltInSuperWideAngleCamera") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"BackColorSuperWide"))
  {

    return 1;
  }

  else
  {
    v7 = [v5 isEqualToString:*MEMORY[0x277CF3CF0]];

    return v7;
  }
}

- (unsigned)reader:(id)reader pixelFormatForStream:(id)stream suggestedFormat:(unsigned int)format
{
  enforcedVideoTrackFormat = self->_enforcedVideoTrackFormat;
  if (enforcedVideoTrackFormat)
  {
    v7 = [(NSDictionary *)enforcedVideoTrackFormat objectForKeyedSubscript:stream];
    v8 = v7;
    if (v7)
    {
      format = [v7 unsignedIntValue];
    }
  }

  return format;
}

+ (id)grabCMSessionID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = objc_autoreleasePoolPush();
  v27 = 0;
  v5 = [[MOVReaderInterface alloc] initWithFileURL:dCopy delegate:0 error:&v27];
  v6 = v27;
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x277CCA9B8];
    grabNextUserEvent2 = [v6 description];
    v10 = [v8 movReaderInterfaceErrorWithMessage:grabNextUserEvent2 code:12];
    v11 = 0;
LABEL_3:

    goto LABEL_4;
  }

  grabNextUserEvent = [(MOVReaderInterface *)v5 grabNextUserEvent];
  if (grabNextUserEvent)
  {
    grabNextUserEvent2 = grabNextUserEvent;
    v11 = 0;
    do
    {
      if (![grabNextUserEvent2 count])
      {
        break;
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v17 = grabNextUserEvent2;
      v18 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v24;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v23 + 1) + 8 * i);
            if ([v22 eventType] == 7)
            {
              sessionID = [v22 sessionID];
              v16 = [sessionID copy];

              v11 = v16;
              goto LABEL_10;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v19);
      }

LABEL_10:

      grabNextUserEvent2 = [(MOVReaderInterface *)v5 grabNextUserEvent];
    }

    while (grabNextUserEvent2);
    goto LABEL_3;
  }

  v11 = 0;
LABEL_4:

  objc_autoreleasePoolPop(v4);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end