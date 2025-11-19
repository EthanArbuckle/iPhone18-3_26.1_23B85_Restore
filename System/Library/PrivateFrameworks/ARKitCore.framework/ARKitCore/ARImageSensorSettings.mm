@interface ARImageSensorSettings
- (ARImageSensorSettings)initWithVideoFormat:(id)a3;
- (BOOL)isBravoCameraEnabled;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)setCalibrationDataOutputEnabled:(BOOL)a3;
- (void)setVisionDataOutputEnabled:(BOOL)a3;
@end

@implementation ARImageSensorSettings

- (ARImageSensorSettings)initWithVideoFormat:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = ARImageSensorSettings;
  v6 = [(ARImageSensorSettings *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_videoFormat, a3);
    *&v7->_autoFocusEnabled = 0;
    v7->_visionDataOutputEnabled = 0;
    v8 = [v5 deviceFormat];
    v7->_calibrationDataOutputEnabled = [v8 isCameraCalibrationDataDeliverySupported];

    v7->_maxGainOverride = 0.0;
    *&v7->_videoHDRAllowed = 0;
    v7->_enabled = 1;
    v7->_backFacingCameraGeometricDistortionCorrectionEnabled = 0;
    v7->_maximumNumberOfTrackedFaces = 0;
    v9 = [v5 captureDeviceType];
    v10 = *MEMORY[0x1E6986948];

    if (v9 == v10)
    {
      v7->_backFacingCameraGeometricDistortionCorrectionEnabled = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.back.ultrawide.geometricDistortionCorrection"];
    }

    [ARKitUserDefaults doubleForKey:@"com.apple.arkit.imagesensor.initialFrameDrop.negativeExposureTargetOffsetThreshold"];
    *&v11 = v11;
    v7->_negativeExposureTargetOffsetThreshold = *&v11;
    [ARKitUserDefaults doubleForKey:@"com.apple.arkit.imagesensor.initialFrameDrop.positiveExposureTargetOffsetThreshold"];
    *&v12 = v12;
    v7->_positiveExposureTargetOffsetThreshold = *&v12;
    v7->_maximumNumberOfInitialFramesDropped = [ARKitUserDefaults integerForKey:@"com.apple.arkit.imagesensor.initialFrameDrop.maxDroppedFramesCount"];
  }

  return v7;
}

- (void)setVisionDataOutputEnabled:(BOOL)a3
{
  v5 = [(ARVideoFormat *)self->_videoFormat deviceFormat];
  self->_visionDataOutputEnabled = [v5 isVisionDataDeliverySupported] & a3;
}

- (void)setCalibrationDataOutputEnabled:(BOOL)a3
{
  v5 = [(ARVideoFormat *)self->_videoFormat deviceFormat];
  self->_calibrationDataOutputEnabled = [v5 isCameraCalibrationDataDeliverySupported] & a3;
}

- (BOOL)isBravoCameraEnabled
{
  v2 = [(ARImageSensorSettings *)self videoFormat];
  v3 = [v2 captureDeviceType];

  LOBYTE(v2) = ARIsBravoCamera(v3);
  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v12.receiver = self;
  v12.super_class = ARImageSensorSettings;
  v4 = [(ARImageSensorSettings *)&v12 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  if (self->_enabled)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v5 appendFormat:@"Enabled: %@\n", v6];
  [v5 appendFormat:@"Video Format: %@\n", self->_videoFormat];
  if (self->_visionDataOutputEnabled)
  {
    v7 = @"Enabled";
  }

  else
  {
    v7 = @"Disabled";
  }

  [v5 appendFormat:@"VisionData: %@\n", v7];
  if (self->_calibrationDataOutputEnabled)
  {
    v8 = @"Enabled";
  }

  else
  {
    v8 = @"Disabled";
  }

  [v5 appendFormat:@"CalibrationData: %@\n", v8];
  if (self->_backFacingCameraGeometricDistortionCorrectionEnabled)
  {
    v9 = @"Enabled";
  }

  else
  {
    v9 = @"Disabled";
  }

  [v5 appendFormat:@"GeometricDistortionCorrection: %@\n", v9];
  [v5 appendFormat:@"Metadata: %@\n", self->_metaData];
  if (self->_supportsCapturingHighResolutionFrames)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v5 appendFormat:@"Supports Capturing High Resolution Frames: %@\n", v10];

  return v5;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(ARVideoFormat *)self->_videoFormat description];
  v5 = [v3 stringWithFormat:@"%@|%li|%i", v4, self->_autoFocusEnabled, self->_mirrorVideoOutput];

  v6 = [v5 hash];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if ([v6 isMemberOfClass:objc_opt_class()])
  {
    v7 = v6;
    v8 = [(ARImageSensorSettings *)self videoFormat];
    v9 = [v7 videoFormat];
    if (v8 != v9)
    {
      v3 = [(ARImageSensorSettings *)self videoFormat];
      v4 = [v7 videoFormat];
      if (![v3 isEqual:v4])
      {
        LOBYTE(v10) = 0;
        goto LABEL_14;
      }
    }

    v12 = [(ARImageSensorSettings *)self autoFocusEnabled];
    if (v12 != [v7 autoFocusEnabled] || (v13 = -[ARImageSensorSettings mirrorVideoOutput](self, "mirrorVideoOutput"), v13 != objc_msgSend(v7, "mirrorVideoOutput")) || (v14 = -[ARImageSensorSettings visionDataOutputEnabled](self, "visionDataOutputEnabled"), v14 != objc_msgSend(v7, "visionDataOutputEnabled")) || (-[ARImageSensorSettings maxGainOverride](self, "maxGainOverride"), v16 = v15, objc_msgSend(v7, "maxGainOverride"), v16 != v17) || (v18 = -[ARImageSensorSettings videoHDRAllowed](self, "videoHDRAllowed"), v18 != objc_msgSend(v7, "videoHDRAllowed")) || (v19 = -[ARImageSensorSettings focusPixelBlurScoreDeliveryEnabled](self, "focusPixelBlurScoreDeliveryEnabled"), v19 != objc_msgSend(v7, "focusPixelBlurScoreDeliveryEnabled")))
    {
      LOBYTE(v10) = 0;
      v11 = 0;
      goto LABEL_13;
    }

    v21 = [(ARImageSensorSettings *)self visionDataOutputParameters];
    v22 = [v7 visionDataOutputParameters];
    if (v21 != v22)
    {
      v23 = [(ARImageSensorSettings *)self visionDataOutputParameters];
      v46 = [v7 visionDataOutputParameters];
      v47 = v23;
      if (![v23 isEqual:?])
      {
        LOBYTE(v10) = 0;
        goto LABEL_40;
      }
    }

    v24 = [(ARImageSensorSettings *)self calibrationDataOutputEnabled];
    if (v24 != [v7 calibrationDataOutputEnabled])
    {
      LOBYTE(v10) = 0;
      goto LABEL_39;
    }

    v10 = [(ARImageSensorSettings *)self metaData];
    [v7 metaData];
    v45 = v44 = v21;
    if (v10 == v45)
    {
      v43 = v10;
    }

    else
    {
      v40 = v22;
      v25 = [(ARImageSensorSettings *)self metaData];
      v41 = [v7 metaData];
      v42 = v25;
      if (![v25 isEqualToString:?])
      {
        v38 = v10;
        LOBYTE(v10) = 0;
        v39 = v45;
        v22 = v40;
        goto LABEL_37;
      }

      v43 = v10;
      v22 = v40;
    }

    v26 = [(ARImageSensorSettings *)self isEnabled];
    if (v26 == [v7 isEnabled] && (v27 = -[ARImageSensorSettings backFacingCameraGeometricDistortionCorrectionEnabled](self, "backFacingCameraGeometricDistortionCorrectionEnabled"), v27 == objc_msgSend(v7, "backFacingCameraGeometricDistortionCorrectionEnabled")) && (v28 = -[ARImageSensorSettings dropsInitialFramesOutsideExposureTargetOffsetThreshold](self, "dropsInitialFramesOutsideExposureTargetOffsetThreshold"), v28 == objc_msgSend(v7, "dropsInitialFramesOutsideExposureTargetOffsetThreshold")) && (-[ARImageSensorSettings positiveExposureTargetOffsetThreshold](self, "positiveExposureTargetOffsetThreshold"), v30 = v29, objc_msgSend(v7, "positiveExposureTargetOffsetThreshold"), v30 == v31) && (-[ARImageSensorSettings negativeExposureTargetOffsetThreshold](self, "negativeExposureTargetOffsetThreshold"), v33 = v32, objc_msgSend(v7, "negativeExposureTargetOffsetThreshold"), v33 == v34) && (v35 = -[ARImageSensorSettings maximumNumberOfInitialFramesDropped](self, "maximumNumberOfInitialFramesDropped"), v35 == objc_msgSend(v7, "maximumNumberOfInitialFramesDropped")))
    {
      v36 = [(ARImageSensorSettings *)self supportsCapturingHighResolutionFrames];
      LODWORD(v10) = v36 ^ [v7 supportsCapturingHighResolutionFrames] ^ 1;
      v37 = v10;
    }

    else
    {
      LOBYTE(v10) = 0;
      v37 = 0;
    }

    v38 = v43;
    v39 = v45;
    if (v43 == v45)
    {
      LOBYTE(v10) = v37;
LABEL_38:

      v21 = v44;
LABEL_39:
      if (v21 == v22)
      {
LABEL_41:

        v11 = v10;
LABEL_13:
        if (v8 == v9)
        {
LABEL_15:

          goto LABEL_16;
        }

LABEL_14:

        v11 = v10;
        goto LABEL_15;
      }

LABEL_40:

      goto LABEL_41;
    }

LABEL_37:

    goto LABEL_38;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(ARVideoFormat *)self->_videoFormat copyWithZone:a3];
  v7 = [v5 initWithVideoFormat:v6];

  *(v7 + 8) = self->_autoFocusEnabled;
  *(v7 + 9) = self->_mirrorVideoOutput;
  *(v7 + 10) = self->_visionDataOutputEnabled;
  *(v7 + 11) = self->_calibrationDataOutputEnabled;
  *(v7 + 20) = self->_maxGainOverride;
  *(v7 + 12) = self->_videoHDRAllowed;
  *(v7 + 13) = self->_focusPixelBlurScoreDeliveryEnabled;
  v8 = [(NSDictionary *)self->_visionDataOutputParameters copyWithZone:a3];
  v9 = *(v7 + 56);
  *(v7 + 56) = v8;

  v10 = [(NSString *)self->_metaData copyWithZone:a3];
  v11 = *(v7 + 48);
  *(v7 + 48) = v10;

  *(v7 + 17) = self->_enabled;
  *(v7 + 15) = self->_backFacingCameraGeometricDistortionCorrectionEnabled;
  *(v7 + 64) = self->_maximumNumberOfTrackedFaces;
  *(v7 + 14) = self->_dropsInitialFramesOutsideExposureTargetOffsetThreshold;
  *(v7 + 28) = self->_positiveExposureTargetOffsetThreshold;
  *(v7 + 24) = self->_negativeExposureTargetOffsetThreshold;
  *(v7 + 40) = self->_maximumNumberOfInitialFramesDropped;
  *(v7 + 16) = self->_supportsCapturingHighResolutionFrames;
  return v7;
}

@end