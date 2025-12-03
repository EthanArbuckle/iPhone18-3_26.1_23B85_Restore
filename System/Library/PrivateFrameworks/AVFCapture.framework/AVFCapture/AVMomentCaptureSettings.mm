@interface AVMomentCaptureSettings
+ (id)settingsWithPhotoSettings:(id)settings;
+ (id)settingsWithUserInitiatedCaptureTime:(unint64_t)time;
+ (id)settingsWithUserInitiatedCaptureTime:(unint64_t)time uniqueID:(int64_t)d;
- (AVCapturePhotoSettings)photoSettings;
- (NSString)bravoCameraSelectionBehaviorForRecording;
- (id)_initWithPhotoSettings:(id)settings;
- (id)_initWithUserInitiatedCaptureTime:(unint64_t)time uniqueID:(int64_t)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (int64_t)uniqueID;
- (unint64_t)userInitiatedCaptureTime;
- (void)dealloc;
- (void)setBravoCameraSelectionBehaviorForRecording:(id)recording;
- (void)setDigitalFlashMode:(int64_t)mode;
- (void)setFlashMode:(int64_t)mode;
- (void)setHDRMode:(int64_t)mode;
- (void)setPhotoQualityPrioritization:(int64_t)prioritization;
- (void)setTorchMode:(int64_t)mode;
@end

@implementation AVMomentCaptureSettings

- (id)_initWithPhotoSettings:(id)settings
{
  v6.receiver = self;
  v6.super_class = AVMomentCaptureSettings;
  v4 = [(AVMomentCaptureSettings *)&v6 init];
  if (v4)
  {
    v4->_photoSettings = [settings copy];
    v4->_bravoCameraSelectionBehaviorForRecording = @"AVCaptureBravoCameraSelectionBehaviorEvaluatesOnZoomChange";
  }

  return v4;
}

+ (id)settingsWithPhotoSettings:(id)settings
{
  v3 = [objc_alloc(objc_opt_class()) _initWithPhotoSettings:settings];

  return v3;
}

+ (id)settingsWithUserInitiatedCaptureTime:(unint64_t)time
{
  v3 = [objc_alloc(objc_opt_class()) _initWithUserInitiatedCaptureTime:time uniqueID:{+[AVCapturePhotoSettings uniqueID](AVCapturePhotoSettings, "uniqueID")}];

  return v3;
}

+ (id)settingsWithUserInitiatedCaptureTime:(unint64_t)time uniqueID:(int64_t)d
{
  v4 = [objc_alloc(objc_opt_class()) _initWithUserInitiatedCaptureTime:time uniqueID:d];

  return v4;
}

- (id)_initWithUserInitiatedCaptureTime:(unint64_t)time uniqueID:(int64_t)d
{
  v9.receiver = self;
  v9.super_class = AVMomentCaptureSettings;
  v6 = [(AVMomentCaptureSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_uniqueID = d;
    v6->_userInitiatedCaptureTime = time;
    v6->_photoQualityPrioritization = 3;
    v6->_bravoCameraSelectionBehaviorForRecording = @"AVCaptureBravoCameraSelectionBehaviorEvaluatesOnZoomChange";
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMomentCaptureSettings;
  [(AVMomentCaptureSettings *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  photoSettings = self->_photoSettings;
  v5 = [AVMomentCaptureSettings alloc];
  if (photoSettings)
  {
    v6 = [(AVMomentCaptureSettings *)v5 _initWithPhotoSettings:self->_photoSettings];
  }

  else
  {
    v6 = [(AVMomentCaptureSettings *)v5 _initWithUserInitiatedCaptureTime:self->_userInitiatedCaptureTime uniqueID:self->_uniqueID];
    [v6 setFlashMode:self->_flashMode];
    [v6 setDigitalFlashMode:self->_digitalFlashMode];
    [v6 setPhotoQualityPrioritization:self->_photoQualityPrioritization];
    [v6 setHDRMode:self->_HDRMode];
    [v6 setMaxPhotoDimensions:*&self->_maxPhotoDimensions];
    [v6 setDepthDataDeliveryEnabled:self->_depthDataDeliveryEnabled];
  }

  [v6 setTorchMode:self->_torchMode];
  [v6 setBravoCameraSelectionBehaviorForRecording:self->_bravoCameraSelectionBehaviorForRecording];
  return v6;
}

- (id)debugDescription
{
  if (self->_depthDataDeliveryEnabled)
  {
    v2 = @" depth:1";
  }

  else
  {
    v2 = &stru_1F1CBCFE8;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"uid:%lld torch:%d flash:%d%@ SBQ:%d HDR:%d%@", self->_uniqueID, self->_torchMode, self->_flashMode, @" dflash:%d", self->_photoQualityPrioritization, self->_HDRMode, v2];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVMomentCaptureSettings debugDescription](self, "debugDescription")];
}

- (int64_t)uniqueID
{
  photoSettings = self->_photoSettings;
  if (photoSettings)
  {
    return [(AVCapturePhotoSettings *)photoSettings uniqueID];
  }

  else
  {
    return self->_uniqueID;
  }
}

- (unint64_t)userInitiatedCaptureTime
{
  photoSettings = self->_photoSettings;
  if (photoSettings)
  {
    return [(AVCapturePhotoSettings *)photoSettings userInitiatedPhotoRequestTime];
  }

  else
  {
    return self->_userInitiatedCaptureTime;
  }
}

- (AVCapturePhotoSettings)photoSettings
{
  v2 = [(AVCapturePhotoSettings *)self->_photoSettings copy];

  return v2;
}

- (void)setTorchMode:(int64_t)mode
{
  if (mode >= 3)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    self->_torchMode = mode;
  }
}

- (void)setFlashMode:(int64_t)mode
{
  if (mode >= 3)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    self->_flashMode = mode;
  }
}

- (void)setDigitalFlashMode:(int64_t)mode
{
  if (mode >= 3)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    self->_digitalFlashMode = mode;
  }
}

- (void)setPhotoQualityPrioritization:(int64_t)prioritization
{
  if ((prioritization - 1) >= 3)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    self->_photoQualityPrioritization = prioritization;
  }
}

- (void)setHDRMode:(int64_t)mode
{
  if (mode >= 3)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v3);
    }

    NSLog(&cfstr_SuppressingExc.isa, v3);
  }

  else
  {
    self->_HDRMode = mode;
  }
}

- (NSString)bravoCameraSelectionBehaviorForRecording
{
  v2 = self->_bravoCameraSelectionBehaviorForRecording;

  return v2;
}

- (void)setBravoCameraSelectionBehaviorForRecording:(id)recording
{
  v6[0] = @"AVCaptureBravoCameraSelectionBehaviorEvaluatesContinuously";
  v6[1] = @"AVCaptureBravoCameraSelectionBehaviorEvaluatesOnZoomChange";
  v6[2] = @"AVCaptureBravoCameraSelectionBehaviorEvaluatesNever";
  if ([objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:{3), "containsObject:", recording}])
  {

    self->_bravoCameraSelectionBehaviorForRecording = [recording copy];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, recording}];
    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
  }
}

@end