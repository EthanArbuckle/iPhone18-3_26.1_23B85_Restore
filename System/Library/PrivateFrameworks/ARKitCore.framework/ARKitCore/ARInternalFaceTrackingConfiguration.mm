@interface ARInternalFaceTrackingConfiguration
+ (BOOL)isSupported;
- (ARInternalFaceTrackingConfiguration)init;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)imageSensorSettings;
- (void)createTechniques:(id)a3;
- (void)setCameraPosition:(int64_t)a3;
- (void)setLightEstimationEnabled:(BOOL)a3;
- (void)setMaximumNumberOfTrackedFaces:(int64_t)a3;
@end

@implementation ARInternalFaceTrackingConfiguration

- (ARInternalFaceTrackingConfiguration)init
{
  v5.receiver = self;
  v5.super_class = ARInternalFaceTrackingConfiguration;
  v2 = [(ARConfiguration *)&v5 initPrivate];
  v3 = v2;
  if (v2)
  {
    [(ARInternalFaceTrackingConfiguration *)v2 setLightEstimationEnabled:1];
    [(ARInternalFaceTrackingConfiguration *)v3 setMaximumNumberOfTrackedFaces:1];
  }

  return v3;
}

- (void)setLightEstimationEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(ARConfiguration *)self setLightEstimation:v3];
}

- (void)setCameraPosition:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.faceTracking.backCamera.allowed"])
  {
    if (a3 && (-[ARConfiguration videoFormat](self, "videoFormat"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 captureDevicePosition], v5, v6 != a3))
    {
      v14.receiver = self;
      v14.super_class = ARInternalFaceTrackingConfiguration;
      [(ARConfiguration *)&v14 setCameraPosition:a3];
    }

    else
    {
      v7 = [objc_opt_class() supportedVideoFormats];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __57__ARInternalFaceTrackingConfiguration_setCameraPosition___block_invoke;
      v13[3] = &__block_descriptor_40_e30_B32__0__ARVideoFormat_8Q16_B24l;
      v13[4] = a3;
      v8 = [v7 ar_firstObjectPassingTest:v13];
      videoFormat = self->super._videoFormat;
      self->super._videoFormat = v8;

      self->super._cameraPosition = a3;
    }
  }

  else
  {
    v10 = _ARLogGeneral_12();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543618;
      v16 = v12;
      v17 = 2048;
      v18 = self;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: setCameraPosition failed: The camera position for face tracking cannot be changed.", buf, 0x16u);
    }
  }
}

+ (BOOL)isSupported
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___ARInternalFaceTrackingConfiguration;
  v2 = objc_msgSendSuper2(&v4, sel_isSupported);
  if (v2)
  {
    LOBYTE(v2) = +[ARFaceTrackingInternalTechnique isSupported];
  }

  return v2;
}

- (void)createTechniques:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(ARInternalFaceTrackingConfiguration *)self maximumNumberOfTrackedFaces]< 1)
  {
    goto LABEL_4;
  }

  v5 = [[ARFaceTrackingInternalTechnique alloc] initWithMaximumNumberOfTrackedFaces:[(ARInternalFaceTrackingConfiguration *)self maximumNumberOfTrackedFaces] options:0];
  if (v5)
  {
    v6 = v5;
    v7 = [ARParentTechnique alloc];
    v11[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [(ARParentTechnique *)v7 initWithParallelTechniques:v8];

    [v4 addObject:v9];
LABEL_4:
    v10.receiver = self;
    v10.super_class = ARInternalFaceTrackingConfiguration;
    [(ARConfiguration *)&v10 createTechniques:v4];
  }
}

- (void)setMaximumNumberOfTrackedFaces:(int64_t)a3
{
  if (ARLinkedOnOrAfterYukon())
  {
    v5 = +[ARFaceTrackingConfiguration supportedNumberOfTrackedFaces];
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    self->_maximumNumberOfTrackedFaces = 0;
    return;
  }

  v5 = 1;
  if (a3 < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5 >= a3)
  {
    self->_maximumNumberOfTrackedFaces = a3;
  }

  else
  {
    self->_maximumNumberOfTrackedFaces = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ARInternalFaceTrackingConfiguration;
  if ([(ARConfiguration *)&v10 isEqual:v4])
  {
    v5 = v4;
    v6 = [(ARInternalFaceTrackingConfiguration *)self useAlternativeResources];
    if (v6 == [v5 useAlternativeResources])
    {
      v8 = [(ARInternalFaceTrackingConfiguration *)self maximumNumberOfTrackedFaces];
      v7 = v8 == [v5 maximumNumberOfTrackedFaces];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = ARInternalFaceTrackingConfiguration;
  v4 = [(ARConfiguration *)&v6 copyWithZone:a3];
  [v4 setUseAlternativeResources:{-[ARInternalFaceTrackingConfiguration useAlternativeResources](self, "useAlternativeResources")}];
  v4[15] = self->_maximumNumberOfTrackedFaces;
  return v4;
}

- (id)imageSensorSettings
{
  v4.receiver = self;
  v4.super_class = ARInternalFaceTrackingConfiguration;
  v2 = [(ARConfiguration *)&v4 imageSensorSettings];
  [v2 setMetaData:*MEMORY[0x1E6986FE8]];

  return v2;
}

@end