@interface ARImageData
+ (id)captureDateFromPresentationTimestamp:(id *)timestamp session:(id)session;
- (ARImageData)init;
- (ARImageData)initWithCoder:(id)coder;
- (ARImageData)initWithDictionary:(id)dictionary;
- (ARImageData)initWithImageData:(id)data;
- (ARImageData)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer captureFramePerSecond:(int64_t)second captureDevice:(id)device captureSession:(id)session;
- (BOOL)isBackUltraWide;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesPixelBufferPointerRecursively:(void *)recursively;
- (CGSize)imageResolution;
- (NSDictionary)tracingEntry;
- (NSMutableDictionary)extrinsicsMap;
- (__n128)extrinsicMatrix4x4ToDeviceType:(uint64_t)type;
- (__n128)radialDistortion;
- (__n128)setCameraIntrinsics:(__n128)intrinsics;
- (__n128)setVisionTransform:(__n128)transform;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeToDictionary;
- (uint64_t)extrinsicMatrixToDeviceType:(void *)type;
- (uint64_t)initWithPixelBuffer:(__n128)buffer captureFramePerSecond:(__n128)second captureDevice:(uint64_t)device captureSession:(__CVBuffer *)session timestamp:(uint64_t)timestamp intrinsics:(void *)intrinsics exif:(void *)exif tiff:(CMTime *)self0 captureLens:(void *)self1;
- (uint64_t)initWithPixelBuffer:(void *)buffer captureFramePerSecond:(uint64_t)second captureDevice:(uint64_t)device captureSession:(uint64_t)session timestamp:(uint64_t)timestamp intrinsics:(uint64_t)intrinsics exif:(__int128 *)exif;
- (void)addExtrinsicMatrix4x4:(double)matrix4x4 toDeviceType:(double)type;
- (void)addExtrinsicMatrix:(void *)matrix toDeviceType:;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setPixelBuffer:(__CVBuffer *)buffer;
- (void)setRadialDistortion:(ARImageData *)self;
- (void)setVisionData:(__CVBuffer *)data;
@end

@implementation ARImageData

- (ARImageData)init
{
  v9.receiver = self;
  v9.super_class = ARImageData;
  v2 = [(ARImageData *)&v9 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    extrinsicsMap = v2->_extrinsicsMap;
    v2->_extrinsicsMap = dictionary;

    v5 = MEMORY[0x1E69E9B18];
    v6 = *(MEMORY[0x1E69E9B18] + 16);
    *&v2[1].super.isa = *MEMORY[0x1E69E9B18];
    *&v2[1]._temperature = v6;
    v7 = *(v5 + 48);
    *&v2[1]._timestamp = *(v5 + 32);
    *&v2[1]._currentCaptureTimestamp = v7;
  }

  return v2;
}

- (ARImageData)initWithImageData:(id)data
{
  dataCopy = data;
  v5 = [(ARImageData *)self init];
  v6 = v5;
  if (v5)
  {
    anon_120 = v5->_anon_120;
    -[ARImageData setPixelBuffer:](v5, "setPixelBuffer:", [dataCopy pixelBuffer]);
    -[ARImageData setVisionData:](v6, "setVisionData:", [dataCopy visionData]);
    [dataCopy timestamp];
    v6->_timestamp = v8;
    [dataCopy currentCaptureTimestamp];
    v6->_currentCaptureTimestamp = v9;
    captureDate = [dataCopy captureDate];
    captureDate = v6->_captureDate;
    v6->_captureDate = captureDate;

    [dataCopy cameraIntrinsics];
    *&v6->_anon_120[8] = v12;
    *&v6->_anon_120[24] = v13;
    *anon_120 = v14;
    *&v6->_anon_120[16] = v15;
    *&v6->_anon_120[40] = v16;
    *&v6->_anon_120[32] = v17;
    v6->_mirrored = [dataCopy isMirrored];
    if (dataCopy)
    {
      [dataCopy radialDistortion];
      v18 = v48;
      v19 = v49;
    }

    else
    {
      v18 = 0uLL;
      v19 = 0uLL;
    }

    *v6->_radialDistortion = v18;
    *&v6->_radialDistortion[16] = v19;
    [dataCopy tangentialDistortion];
    *v6->_tangentialDistortion = v20;
    [dataCopy exposureDuration];
    v6->_exposureDuration = v21;
    [dataCopy exposureTargetOffset];
    v6->_exposureTargetOffset = v22;
    [dataCopy temperature];
    v6->_temperature = v23;
    [dataCopy signalToNoiseRatio];
    v6->_signalToNoiseRatio = v24;
    [dataCopy ISO];
    v6->_ISO = v25;
    faceData = [dataCopy faceData];
    faceData = v6->_faceData;
    v6->_faceData = faceData;

    depthData = [dataCopy depthData];
    depthData = v6->_depthData;
    v6->_depthData = depthData;

    [dataCopy depthDataTimestamp];
    v6->_depthDataTimestamp = v30;
    v6->_cameraPosition = [dataCopy cameraPosition];
    cameraType = [dataCopy cameraType];
    v32 = [cameraType copy];
    cameraType = v6->_cameraType;
    v6->_cameraType = v32;

    v6->_captureFramesPerSecond = [dataCopy captureFramesPerSecond];
    v6->_deviceOrientation = [dataCopy deviceOrientation];
    v6->_secondary = [dataCopy isSecondary];
    objc_storeStrong(&v6->_exifData, dataCopy[9]);
    objc_storeStrong(&v6->_tiffData, dataCopy[24]);
    v6->_captureLens = dataCopy[26];
    v6->_highResolution = [dataCopy isHighResolution];
    latestUltraWideImage = [dataCopy latestUltraWideImage];
    latestUltraWideImage = v6->_latestUltraWideImage;
    v6->_latestUltraWideImage = latestUltraWideImage;

    [dataCopy visionTransform];
    *&v6[1].super.isa = v36;
    *&v6[1]._temperature = v37;
    *&v6[1]._timestamp = v38;
    *&v6[1]._currentCaptureTimestamp = v39;
    [dataCopy timestampOfSynchronizedWideImageData];
    v6->_timestampOfSynchronizedWideImageData = v40;
    pointCloud = [dataCopy pointCloud];
    pointCloud = v6->_pointCloud;
    v6->_pointCloud = pointCloud;

    calibrationData = [dataCopy calibrationData];
    calibrationData = v6->_calibrationData;
    v6->_calibrationData = calibrationData;

    adCameraCalibration = [dataCopy adCameraCalibration];
    adCameraCalibration = v6->_adCameraCalibration;
    v6->_adCameraCalibration = adCameraCalibration;

    objc_storeStrong(&v6->_extrinsicsMap, dataCopy[23]);
    v6->_visionDataWasDelivered = [dataCopy visionDataWasDelivered];
    kdebug_trace();
  }

  return v6;
}

- (ARImageData)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer captureFramePerSecond:(int64_t)second captureDevice:(id)device captureSession:(id)session
{
  v48 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  sessionCopy = session;
  if (buffer && (ImageBuffer = CMSampleBufferGetImageBuffer(buffer)) != 0)
  {
    v13 = ImageBuffer;
    v14 = CMGetAttachment(buffer, *MEMORY[0x1E6960470], 0);
    memset(&v45, 0, sizeof(v45));
    CMSampleBufferGetPresentationTimeStamp(&v45, buffer);
    v15 = CMGetAttachment(buffer, *MEMORY[0x1E696D9B0], 0);
    v16 = CMGetAttachment(buffer, *MEMORY[0x1E696DF28], 0);
    v17 = v16;
    if (v14)
    {
      v18 = ARMatrix3x3FromNSData(v14);
      v42 = v19;
      v43 = v18;
      v41 = v20;
    }

    else
    {
      v39 = v16;
      v40 = v15;
      activeFormat = [deviceCopy activeFormat];
      v23 = initWithSampleBuffer_captureFramePerSecond_captureDevice_captureSession__format;

      if (activeFormat != v23)
      {
        activeFormat2 = [deviceCopy activeFormat];
        v25 = initWithSampleBuffer_captureFramePerSecond_captureDevice_captureSession__format;
        initWithSampleBuffer_captureFramePerSecond_captureDevice_captureSession__format = activeFormat2;

        *&v26 = ARIntrinsicsFromDeviceFormat(initWithSampleBuffer_captureFramePerSecond_captureDevice_captureSession__format);
        DWORD2(initWithSampleBuffer_captureFramePerSecond_captureDevice_captureSession__fallbackIntrinsics) = v27;
        *algn_1EBF428E8 = v28;
        *&initWithSampleBuffer_captureFramePerSecond_captureDevice_captureSession__fallbackIntrinsics = v26;
        qword_1EBF428E0 = v29;
        DWORD2(xmmword_1EBF428F0) = v30;
        *&xmmword_1EBF428F0 = v31;
        v32 = _ARLogGeneral_21();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = objc_opt_class();
          v44 = NSStringFromClass(v33);
          v34 = ARMatrix3x3Description(initWithSampleBuffer_captureFramePerSecond_captureDevice_captureSession__fallbackIntrinsics, *&qword_1EBF428E0, xmmword_1EBF428F0);
          LODWORD(buf.value) = 138543874;
          *(&buf.value + 4) = v44;
          LOWORD(buf.flags) = 2048;
          *(&buf.flags + 2) = self;
          HIWORD(buf.epoch) = 2112;
          v47 = v34;
          v35 = v34;
          _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using fallback intrinsics %@", &buf, 0x20u);
        }
      }

      v42 = *&qword_1EBF428E0;
      v43 = *&initWithSampleBuffer_captureFramePerSecond_captureDevice_captureSession__fallbackIntrinsics;
      v41 = *&xmmword_1EBF428F0;
      v17 = v39;
      v15 = v40;
    }

    v36 = CMGetAttachment(buffer, *MEMORY[0x1E696DE30], 0);
    v37 = ARCaptureLensFromMakerNotesDictionary(v36);
    buf = v45;
    self = [(ARImageData *)self initWithPixelBuffer:v13 captureFramePerSecond:second captureDevice:deviceCopy captureSession:sessionCopy timestamp:&buf intrinsics:v15 exif:v43 tiff:v42 captureLens:v41, v17, v37];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (uint64_t)initWithPixelBuffer:(void *)buffer captureFramePerSecond:(uint64_t)second captureDevice:(uint64_t)device captureSession:(uint64_t)session timestamp:(uint64_t)timestamp intrinsics:(uint64_t)intrinsics exif:(__int128 *)exif
{
  v8 = *exif;
  v9 = *(exif + 2);
  return [buffer initWithPixelBuffer:device captureFramePerSecond:session captureDevice:timestamp captureSession:intrinsics timestamp:&v8 intrinsics:0 exif:0 tiff:? captureLens:?];
}

- (uint64_t)initWithPixelBuffer:(__n128)buffer captureFramePerSecond:(__n128)second captureDevice:(uint64_t)device captureSession:(__CVBuffer *)session timestamp:(uint64_t)timestamp intrinsics:(void *)intrinsics exif:(void *)exif tiff:(CMTime *)self0 captureLens:(void *)self1
{
  intrinsicsCopy = intrinsics;
  exifCopy = exif;
  lensCopy = lens;
  v23 = a12;
  v24 = [self init];
  if (v24)
  {
    time = *tiff;
    Seconds = CMTimeGetSeconds(&time);
    *(v24 + 32) = Seconds;
    *(v24 + 48) = Seconds;
    objc_storeStrong((v24 + 200), intrinsics);
    if (exifCopy)
    {
      v26 = objc_opt_class();
      time = *tiff;
      [v26 captureDateFromPresentationTimestamp:&time session:exifCopy];
    }

    else
    {
      [MEMORY[0x1E695DF00] now];
    }
    v27 = ;
    v28 = *(v24 + 40);
    *(v24 + 40) = v27;

    *(v24 + 56) = CVPixelBufferRetain(session);
    *(v24 + 9) = 0;
    [intrinsicsCopy deviceWhiteBalanceGains];
    [intrinsicsCopy temperatureAndTintValuesForDeviceWhiteBalanceGains:?];
    *(v24 + 16) = v29;
    [intrinsicsCopy exposureTargetOffset];
    *(v24 + 12) = v30;
    *(v24 + 128) = [intrinsicsCopy position];
    deviceType = [intrinsicsCopy deviceType];
    v32 = *(v24 + 136);
    *(v24 + 136) = deviceType;

    *(v24 + 160) = timestamp;
    *(v24 + 20) = 2139095040;
    v33 = CVBufferCopyAttachments(session, kCVAttachmentMode_ShouldPropagate);
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v55 = __129__ARImageData_initWithPixelBuffer_captureFramePerSecond_captureDevice_captureSession_timestamp_intrinsics_exif_tiff_captureLens___block_invoke;
    v56 = &__block_descriptor_40_e5_v8__0l;
    v57 = v33;
    if (v33)
    {
      Value = CFDictionaryGetValue(v33, *MEMORY[0x1E6990D40]);
      if (Value)
      {
        v35 = CFDictionaryGetValue(Value, *MEMORY[0x1E69910F8]);
        v36 = v35;
        if (v35)
        {
          [v35 floatValue];
          *(v24 + 20) = v37;
        }
      }
    }

    v38 = [lensCopy valueForKey:{@"ExposureTime", *&a2, *&buffer, *&second}];
    v39 = v38;
    if (v38)
    {
      [v38 doubleValue];
      *(v24 + 64) = v40;
    }

    [intrinsicsCopy ISO];
    *(v24 + 24) = v41;
    *(v24 + 288) = v49;
    *(v24 + 304) = v51;
    *(v24 + 320) = v53;
    v42 = [lensCopy copy];
    v43 = *(v24 + 72);
    *(v24 + 72) = v42;

    v44 = [v23 copy];
    v45 = *(v24 + 192);
    *(v24 + 192) = v44;

    *(v24 + 208) = a13;
    v46 = +[ARBKSAccelerometer sharedWeakAccelerometerHandle];
    *(v24 + 80) = [v46 currentOrientation];
    kdebug_trace();

    v55(v54);
  }

  return v24;
}

void __129__ARImageData_initWithPixelBuffer_captureFramePerSecond_captureDevice_captureSession_timestamp_intrinsics_exif_tiff_captureLens___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (void)dealloc
{
  kdebug_trace();
  CVPixelBufferRelease(self->_pixelBuffer);
  CVPixelBufferRelease(self->_visionData);
  v3.receiver = self;
  v3.super_class = ARImageData;
  [(ARImageData *)&v3 dealloc];
}

- (void)setPixelBuffer:(__CVBuffer *)buffer
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer != buffer)
  {
    CVPixelBufferRelease(pixelBuffer);
    self->_pixelBuffer = CVPixelBufferRetain(buffer);
  }
}

- (void)setVisionData:(__CVBuffer *)data
{
  visionData = self->_visionData;
  if (visionData != data)
  {
    CVPixelBufferRelease(visionData);
    self->_visionData = data;
    CVPixelBufferRetain(data);
    if (data)
    {
      self->_visionDataWasDelivered = 1;
    }
  }
}

- (NSMutableDictionary)extrinsicsMap
{
  v2 = [(NSMutableDictionary *)self->_extrinsicsMap copy];

  return v2;
}

- (CGSize)imageResolution
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    Width = CVPixelBufferGetWidth(self->_pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (BOOL)matchesPixelBufferPointerRecursively:(void *)recursively
{
  if ([(ARImageData *)self pixelBuffer]== recursively)
  {
    return 1;
  }

  originalImage = [(ARImageData *)self originalImage];

  if (originalImage == self)
  {
    return 0;
  }

  originalImage2 = [(ARImageData *)self originalImage];
  v7 = [originalImage2 matchesPixelBufferPointerRecursively:recursively];

  return v7;
}

- (BOOL)isBackUltraWide
{
  cameraType = [(ARImageData *)self cameraType];
  if ([cameraType isEqualToString:*MEMORY[0x1E6986948]])
  {
    v4 = [(ARImageData *)self cameraPosition]== 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = v5;
    v17 = vabdd_f64(self->_timestamp, v5[4]) < 2.22044605e-16 && vabdd_f64(self->_currentCaptureTimestamp, v5[6]) < 2.22044605e-16 && ((captureDate = self->_captureDate, captureDate == *(v6 + 5)) || [(NSDate *)captureDate isEqual:?]) && (v8.i64[0] = 0x3400000034000000, v8.i64[1] = 0x3400000034000000, v9 = vandq_s8(vandq_s8(vcgeq_f32(v8, vabdq_f32(*&self->_anon_120[16], *(v6 + 38))), vcgeq_f32(v8, vabdq_f32(*self->_anon_120, *(v6 + 36)))), vcgeq_f32(v8, vabdq_f32(*&self->_anon_120[32], *(v6 + 40)))), v9.i32[3] = v9.i32[2], (vminvq_u32(v9) & 0x80000000) != 0) && self->_pixelBuffer == *(v6 + 7) && self->_mirrored == *(v6 + 8) && (v10 = vandq_s8(vceqq_f64(*self->_radialDistortion, *(v6 + 32)), vceqq_f64(*&self->_radialDistortion[16], *(v6 + 34))), (vandq_s8(v10, vdupq_laneq_s64(v10, 1)).u64[0] & 0x8000000000000000) != 0) && (v11 = vceqq_f64(*self->_tangentialDistortion, *(v6 + 30)), (vandq_s8(vdupq_laneq_s64(v11, 1), v11).u64[0] & 0x8000000000000000) != 0) && vabdd_f64(self->_exposureDuration, v6[8]) < 2.22044605e-16 && vabds_f32(self->_exposureTargetOffset, *(v6 + 3)) < 0.00000011921 && vabds_f32(self->_temperature, *(v6 + 4)) < 0.00000011921 && vabds_f32(self->_signalToNoiseRatio, *(v6 + 5)) < 0.00000011921 && vabds_f32(self->_ISO, *(v6 + 6)) < 0.00000011921 && ((faceData = self->_faceData, faceData == *(v6 + 11)) || [(ARFaceData *)faceData isEqual:?]) && ((depthData = self->_depthData, depthData == *(v6 + 12)) || [(AVDepthData *)depthData isEqual:?]) && vabdd_f64(self->_depthDataTimestamp, v6[14]) < 2.22044605e-16 && self->_visionData == *(v6 + 15) && self->_visionDataWasDelivered == *(v6 + 11) && self->_cameraPosition == *(v6 + 16) && ((cameraType = self->_cameraType, cameraType == *(v6 + 17)) || [(NSString *)cameraType isEqualToString:?]) && self->_captureFramesPerSecond == *(v6 + 20) && self->_deviceOrientation == *(v6 + 10) && self->_secondary == *(v6 + 9) && self->_highResolution == *(v6 + 10) && ((latestUltraWideImage = self->_latestUltraWideImage, latestUltraWideImage == *(v6 + 21)) || [(ARImageData *)latestUltraWideImage isEqual:?]) && (v16.i64[0] = 0x3400000034000000, v16.i64[1] = 0x3400000034000000, (vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v16, vabdq_f32(*&self[1]._temperature, *(v6 + 44))), vcgeq_f32(v16, vabdq_f32(*&self[1].super.isa, *(v6 + 42)))), vandq_s8(vcgeq_f32(v16, vabdq_f32(*&self[1]._timestamp, *(v6 + 46))), vcgeq_f32(v16, vabdq_f32(*&self[1]._currentCaptureTimestamp, *(v6 + 48)))))) & 0x80000000) != 0) && self->_timestampOfSynchronizedWideImageData == v6[22] && [(NSMutableDictionary *)self->_extrinsicsMap isEqualToDictionary:*(v6 + 23)]&& [(NSDictionary *)self->_exifData isEqualToDictionary:*(v6 + 9)]&& ((pointCloud = self->_pointCloud, pointCloud == *(v6 + 13)) || [(ARPointCloud *)pointCloud isEqual:?]) && self->_captureLens == *(v6 + 26);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)captureDateFromPresentationTimestamp:(id *)timestamp session:(id)session
{
  memset(&v10, 0, sizeof(v10));
  CMClockGetTime(&v10, [session synchronizationClock]);
  memset(&v9, 0, sizeof(v9));
  lhs = v10;
  v7 = *timestamp;
  CMTimeSubtract(&v9, &lhs, &v7);
  lhs = v9;
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-CMTimeGetSeconds(&lhs)];

  return v5;
}

- (ARImageData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ARImageData *)self init];
  if (!v5)
  {
    goto LABEL_32;
  }

  [coderCopy decodeDoubleForKey:@"timestamp"];
  v7 = v6;
  v8 = 0.0;
  if (v7 >= 0.0)
  {
    [coderCopy decodeDoubleForKey:{@"timestamp", 0.0}];
  }

  [(ARImageData *)v5 setTimestamp:v8];
  [(ARImageData *)v5 timestamp];
  [(ARImageData *)v5 setCurrentCaptureTimestamp:?];
  [coderCopy decodeDoubleForKey:@"exposureDuration"];
  [(ARImageData *)v5 setExposureDuration:?];
  [coderCopy decodeFloatForKey:@"exposureTargetOffset"];
  [(ARImageData *)v5 setExposureTargetOffset:?];
  [coderCopy decodeFloatForKey:@"signalToNoiseRatio"];
  [(ARImageData *)v5 setSignalToNoiseRatio:?];
  [coderCopy decodeFloatForKey:@"ISO"];
  [(ARImageData *)v5 setISO:?];
  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"cameraParameters"];

  if (v10)
  {
    [v10 focalLength];
    *&v11 = v11;
    v57 = LODWORD(v11);
    [v10 focalLength];
    v13 = v12;
    v56 = v13;
    [v10 principalPoint];
    *&v14 = v14;
    v55 = LODWORD(v14);
    [v10 principalPoint];
    *&v16 = v15;
    *&v17 = v57;
    LODWORD(v18) = 0;
    *(&v18 + 1) = v56;
    v19 = COERCE_DOUBLE(__PAIR64__(v16, v55));
  }

  else
  {
    if (![coderCopy containsValueForKey:@"cameraIntrinsics"])
    {
      decodeDataObject = [coderCopy decodeDataObject];
      [(ARImageData *)v5 setCameraIntrinsics:ARMatrix3x3FromNSData(decodeDataObject)];

      goto LABEL_9;
    }

    [coderCopy ar_decodeMatrix3x3ForKey:@"cameraIntrinsics"];
  }

  [(ARImageData *)v5 setCameraIntrinsics:v17, v18, v19];
LABEL_9:
  -[ARImageData setCameraPosition:](v5, "setCameraPosition:", [coderCopy decodeIntegerForKey:@"cameraPosition"]);
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cameraType"];
  [(ARImageData *)v5 setCameraType:v20];

  -[ARImageData setMirrored:](v5, "setMirrored:", [coderCopy decodeBoolForKey:@"pixelBufferIsMirrored"]);
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"radialDistortion"];
  v22 = v21;
  if (v21)
  {
    v59 = 0u;
    v60 = 0u;
    [v21 getBytes:&v59 length:32];
    v58[0] = v59;
    v58[1] = v60;
    [(ARImageData *)v5 setRadialDistortion:v58];
  }

  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tangentialDistortion"];

  if (v23)
  {
    v59 = 0uLL;
    [v23 getBytes:&v59 length:16];
    [(ARImageData *)v5 setTangentialDistortion:*&v59];
  }

  -[ARImageData setCaptureFramesPerSecond:](v5, "setCaptureFramesPerSecond:", [coderCopy decodeIntegerForKey:@"targetFramesPerSecond"]);
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"captureDate"];
  [(ARImageData *)v5 setCaptureDate:v24];

  [(ARImageData *)v5 setPixelBuffer:0];
  [coderCopy decodeFloatForKey:@"temperature"];
  if (*&v25 == 0.0)
  {
    *&v25 = 6500.0;
  }

  [(ARImageData *)v5 setTemperature:v25];
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"faceData"];
  [(ARImageData *)v5 setFaceData:v26];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = coderCopy;
    v5->_pixelBuffer = [v27 ar_decodePixelBufferForKey:@"pixelBuffer"];
    v28 = [v27 ar_decodePixelBufferForKey:@"visionData"];

    v5->_visionData = v28;
  }

  v29 = ARDepthRepresentationDictionaryClassList();
  v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"AVDepthData"];

  if (v30)
  {
    v31 = [objc_alloc(MEMORY[0x1E6987198]) initWithPixelBuffer:0 depthMetadataDictionary:v30];
    [(ARImageData *)v5 setDepthData:v31];

    [coderCopy decodeDoubleForKey:@"depthDataTimeStamp"];
    v33 = v32;
    v34 = 0.0;
    if (v33 >= 0.0)
    {
      [coderCopy decodeDoubleForKey:{@"depthDataTimeStamp", 0.0}];
    }

    [(ARImageData *)v5 setDepthDataTimestamp:v34];
  }

  -[ARImageData setDeviceOrientation:](v5, "setDeviceOrientation:", [coderCopy decodeIntegerForKey:@"deviceOrientation"]);
  -[ARImageData setSecondary:](v5, "setSecondary:", [coderCopy decodeBoolForKey:@"secondary"]);
  if ([coderCopy containsValueForKey:@"visionTransform"])
  {
    [coderCopy ar_decodeMatrix4x4ForKey:@"visionTransform"];
  }

  else
  {
    v35 = *MEMORY[0x1E69E9B18];
    v36 = *(MEMORY[0x1E69E9B18] + 16);
    v37 = *(MEMORY[0x1E69E9B18] + 32);
    v38 = *(MEMORY[0x1E69E9B18] + 48);
  }

  [(ARImageData *)v5 setVisionTransform:*&v35, *&v36, *&v37, *&v38];
  v5->_highResolution = [coderCopy decodeBoolForKey:@"highResolution"];
  [(ARImageData *)v5 setLatestUltraWideImage:0];
  [coderCopy decodeDoubleForKey:@"timestampOfSynchronizedWideImageData"];
  [(ARImageData *)v5 setTimestampOfSynchronizedWideImageData:?];
  v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pointCloud"];
  [(ARImageData *)v5 setPointCloud:v39];

  v40 = MEMORY[0x1E695DFD8];
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = [v40 setWithObjects:{v41, v42, v43, objc_opt_class(), 0}];
  v45 = [coderCopy decodeObjectOfClasses:v44 forKey:@"extrinsicsMap"];

  if (v45)
  {
    objc_storeStrong(&v5->_extrinsicsMap, v45);
  }

  v46 = MEMORY[0x1E695DFD8];
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = objc_opt_class();
  v50 = [v46 setWithObjects:{v47, v48, v49, objc_opt_class(), 0}];
  v51 = [coderCopy decodeObjectOfClasses:v50 forKey:@"exifData"];

  if (v51)
  {
    objc_storeStrong(&v5->_exifData, v51);
  }

  if ([coderCopy containsValueForKey:@"captureLens"])
  {
    v52 = [coderCopy decodeIntegerForKey:@"captureLens"];
  }

  else
  {
    v52 = 0;
  }

  v5->_captureLens = v52;
  v5->_visionDataWasDelivered = [coderCopy decodeBoolForKey:@"visionDataWasDelivered"];

LABEL_32:
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coderCopy encodeDouble:@"exposureDuration" forKey:self->_exposureDuration];
  *&v4 = self->_exposureTargetOffset;
  [coderCopy encodeFloat:@"exposureTargetOffset" forKey:v4];
  *&v5 = self->_signalToNoiseRatio;
  [coderCopy encodeFloat:@"signalToNoiseRatio" forKey:v5];
  *&v6 = self->_ISO;
  [coderCopy encodeFloat:@"ISO" forKey:v6];
  *&v7 = self->_temperature;
  [coderCopy encodeFloat:@"temperature" forKey:v7];
  [coderCopy ar_encodeMatrix3x3:@"cameraIntrinsics" forKey:{*self->_anon_120, *&self->_anon_120[16], *&self->_anon_120[32]}];
  [coderCopy encodeInteger:self->_cameraPosition forKey:@"cameraPosition"];
  [coderCopy encodeObject:self->_cameraType forKey:@"cameraType"];
  [coderCopy encodeBool:self->_mirrored forKey:@"pixelBufferIsMirrored"];
  v8 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_radialDistortion length:32];
  [coderCopy encodeObject:v8 forKey:@"radialDistortion"];
  v9 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_tangentialDistortion length:16];

  [coderCopy encodeObject:v9 forKey:@"tangentialDistortion"];
  [coderCopy encodeInteger:self->_captureFramesPerSecond forKey:@"targetFramesPerSecond"];
  [coderCopy encodeObject:self->_captureDate forKey:@"captureDate"];
  [coderCopy encodeObject:self->_faceData forKey:@"faceData"];
  depthData = [(ARImageData *)self depthData];

  if (depthData)
  {
    depthData2 = [(ARImageData *)self depthData];
    v12 = ARDepthRepresentationDictionary(depthData2);

    if (v12)
    {
      [coderCopy encodeObject:v12 forKey:@"AVDepthData"];
    }

    [coderCopy encodeDouble:@"depthDataTimeStamp" forKey:self->_depthDataTimestamp];
  }

  [coderCopy encodeInteger:-[ARImageData deviceOrientation](self forKey:{"deviceOrientation"), @"deviceOrientation"}];
  [coderCopy encodeBool:-[ARImageData isSecondary](self forKey:{"isSecondary"), @"secondary"}];
  [coderCopy ar_encodeMatrix4x4:@"visionTransform" forKey:{*&self[1].super.isa, *&self[1]._temperature, self[1]._timestamp, self[1]._currentCaptureTimestamp}];
  [coderCopy encodeBool:-[ARImageData isHighResolution](self forKey:{"isHighResolution"), @"highResolution"}];
  [(ARImageData *)self timestampOfSynchronizedWideImageData];
  [coderCopy encodeDouble:@"timestampOfSynchronizedWideImageData" forKey:?];
  [coderCopy encodeObject:self->_pointCloud forKey:@"pointCloud"];
  [coderCopy encodeObject:self->_extrinsicsMap forKey:@"extrinsicsMap"];
  [coderCopy encodeObject:self->_exifData forKey:@"exifData"];
  [coderCopy encodeInteger:self->_captureLens forKey:@"captureLens"];
  [coderCopy encodeBool:self->_visionDataWasDelivered forKey:@"visionDataWasDelivered"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pixelBuffer = self->_pixelBuffer;
    v14 = coderCopy;
    [v14 ar_encodePixelBuffer:pixelBuffer forKey:@"pixelBuffer"];
    [v14 ar_encodePixelBuffer:self->_visionData forKey:@"visionData"];
  }

  else
  {
    v14 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_anon_120 length:48];
    [coderCopy encodeDataObject:v14];
  }
}

- (ARImageData)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v5 = [(ARImageData *)self init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"CMSampleBufferPresentationTime"];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:@"OriginalTimestampWhenWrittenToFile"];
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(&v23, 0, sizeof(v23));
      CMTimeMakeFromDictionary(&v23, v7);
      v22 = v23;
      Seconds = CMTimeGetSeconds(&v22);
      v5->_timestamp = Seconds;
      v5->_currentCaptureTimestamp = Seconds;
    }

LABEL_7:
    v9 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6960470]];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = [dictionaryCopy objectForKeyedSubscript:@"IntrinsicsMatrix"];
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = ARMatrix3x3FromColumnMajorFlatArray(v10);
      *&v5->_anon_120[8] = v11.n128_u32[2];
      *&v5->_anon_120[24] = v12;
      *v5->_anon_120 = v11.n128_u64[0];
      *&v5->_anon_120[16] = v13;
      *&v5->_anon_120[40] = v14;
      *&v5->_anon_120[32] = v15;
LABEL_15:
      v19 = [dictionaryCopy objectForKeyedSubscript:@"ExposureTime"];
      [v19 doubleValue];
      v5->_exposureDuration = v20;

      v5->_deviceOrientation = 0;
      *&v5->_secondary = 0;

      goto LABEL_16;
    }

LABEL_12:
    v16 = _ARLogGeneral_21();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      LODWORD(v23.value) = 138543618;
      *(&v23.value + 4) = v18;
      LOWORD(v23.flags) = 2048;
      *(&v23.flags + 2) = v5;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Creating imageData without cameraIntrinsics", &v23, 0x16u);
    }

    goto LABEL_15;
  }

LABEL_16:

  return v5;
}

- (id)encodeToDictionary
{
  v17[3] = *MEMORY[0x1E69E9840];
  memset(&v15, 0, sizeof(v15));
  [(ARImageData *)self timestamp];
  CMTimeMakeWithSeconds(&v15, v3, 1000000);
  v4 = *MEMORY[0x1E695E480];
  v14 = v15;
  v5 = CMTimeCopyAsDictionary(&v14, v4);
  v17[0] = v5;
  v16[0] = @"CMSampleBufferPresentationTime";
  v16[1] = @"IntrinsicsMatrix";
  [(ARImageData *)self cameraIntrinsics];
  v9 = ARMatrix3x3ToColumnMajorFlatArray(v6, v7, v8);
  v17[1] = v9;
  v16[2] = @"ExposureTime";
  v10 = MEMORY[0x1E696AD98];
  [(ARImageData *)self exposureDuration];
  v11 = [v10 numberWithDouble:?];
  v17[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithImageData:self];
}

- (__n128)extrinsicMatrix4x4ToDeviceType:(uint64_t)type
{
  v1 = [*(type + 184) objectForKeyedSubscript:?];
  v2 = v1;
  if (v1)
  {
    [v1 matrix];
    v5 = v3;
  }

  else
  {
    v5 = *MEMORY[0x1E69E9B18];
  }

  return v5;
}

- (uint64_t)extrinsicMatrixToDeviceType:(void *)type
{
  [type extrinsicMatrix4x4ToDeviceType:?];

  return ARMatrix4x3FromMatrix4x4(v1, v2, v3, v4);
}

- (void)addExtrinsicMatrix:(void *)matrix toDeviceType:
{
  matrixCopy = matrix;
  ARMatrix4x4FromMatrix4x3();
  [self addExtrinsicMatrix4x4:matrixCopy toDeviceType:?];
}

- (void)addExtrinsicMatrix4x4:(double)matrix4x4 toDeviceType:(double)type
{
  v8 = a7;
  v13 = [[ARExtrinsicsWrapper alloc] initWithMatrix:a2, matrix4x4, type, a5];
  [*(self + 184) setObject:v13 forKeyedSubscript:v8];
}

- (NSDictionary)tracingEntry
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = ARQATraceableDefaultEntryForResultData(self);
  v4 = [v3 mutableCopy];

  v15[0] = @"width";
  v5 = MEMORY[0x1E696AD98];
  [(ARImageData *)self imageResolution];
  v6 = [v5 numberWithDouble:?];
  v15[1] = @"height";
  v16[0] = v6;
  v7 = MEMORY[0x1E696AD98];
  [(ARImageData *)self imageResolution];
  v9 = [v7 numberWithDouble:v8];
  v16[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v4 setObject:v10 forKeyedSubscript:@"imageResolution"];

  PixelFormatType = CVPixelBufferGetPixelFormatType([(ARImageData *)self pixelBuffer]);
  v12 = AROSTypeToString(PixelFormatType);
  [v4 setObject:v12 forKeyedSubscript:@"pixelBufferFormat"];

  [(ARImageData *)self cameraIntrinsics];
  v13 = [ARQAHelper arrayWithMatrix3x3:?];
  [v4 setObject:v13 forKeyedSubscript:@"cameraIntrinsics"];

  return v4;
}

- (__n128)setCameraIntrinsics:(__n128)intrinsics
{
  result[18] = a2;
  result[19] = intrinsics;
  result[20] = a4;
  return result;
}

- (__n128)radialDistortion
{
  result = *(self + 256);
  v3 = *(self + 272);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

- (void)setRadialDistortion:(ARImageData *)self
{
  v3 = v2[1];
  *self->_radialDistortion = *v2;
  *&self->_radialDistortion[16] = v3;
}

- (__n128)setVisionTransform:(__n128)transform
{
  result[21] = a2;
  result[22] = transform;
  result[23] = a4;
  result[24] = a5;
  return result;
}

@end