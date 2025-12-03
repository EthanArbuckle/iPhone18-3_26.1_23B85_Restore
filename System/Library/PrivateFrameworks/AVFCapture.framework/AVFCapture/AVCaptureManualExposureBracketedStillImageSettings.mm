@interface AVCaptureManualExposureBracketedStillImageSettings
- (id)_initManualExposureSettingsWithExposureDuration:(id *)duration ISO:(float)o;
- (id)debugDescription;
- (id)description;
@end

@implementation AVCaptureManualExposureBracketedStillImageSettings

- (id)_initManualExposureSettingsWithExposureDuration:(id *)duration ISO:(float)o
{
  v8.receiver = self;
  v8.super_class = AVCaptureManualExposureBracketedStillImageSettings;
  result = [(AVCaptureBracketedStillImageSettings *)&v8 initSubclass];
  if (result)
  {
    var3 = duration->var3;
    *(result + 8) = *&duration->var0;
    *(result + 3) = var3;
    *(result + 8) = o;
  }

  return result;
}

- (id)debugDescription
{
  ISO = self->_ISO;
  time = self->_exposureDuration;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"[ISO:%.2f dur:%.4f]", *&ISO, CMTimeGetSeconds(&time)];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureManualExposureBracketedStillImageSettings debugDescription](self, "debugDescription")];
}

@end