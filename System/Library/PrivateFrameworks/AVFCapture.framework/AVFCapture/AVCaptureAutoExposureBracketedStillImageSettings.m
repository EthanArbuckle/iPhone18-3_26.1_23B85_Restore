@interface AVCaptureAutoExposureBracketedStillImageSettings
+ (AVCaptureAutoExposureBracketedStillImageSettings)autoExposureSettingsWithExposureTargetBias:(float)exposureTargetBias;
- (id)_initAutoExposureSettingsWithExposureTargetBias:(float)a3;
- (id)description;
@end

@implementation AVCaptureAutoExposureBracketedStillImageSettings

+ (AVCaptureAutoExposureBracketedStillImageSettings)autoExposureSettingsWithExposureTargetBias:(float)exposureTargetBias
{
  v4 = objc_alloc(objc_opt_class());
  *&v5 = exposureTargetBias;
  v6 = [v4 _initAutoExposureSettingsWithExposureTargetBias:v5];

  return v6;
}

- (id)_initAutoExposureSettingsWithExposureTargetBias:(float)a3
{
  v5.receiver = self;
  v5.super_class = AVCaptureAutoExposureBracketedStillImageSettings;
  result = [(AVCaptureBracketedStillImageSettings *)&v5 initSubclass];
  if (result)
  {
    *(result + 2) = a3;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureAutoExposureBracketedStillImageSettings debugDescription](self, "debugDescription")];
}

@end