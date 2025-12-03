@interface AVCaptureDeferredPhotoSettings
- (AVCaptureDeferredPhotoSettings)initWithCoder:(id)coder;
- (id)_initWithCaptureSettings:(id)settings serializedProcessingSettings:(id)processingSettings;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVCaptureDeferredPhotoSettings

- (id)_initWithCaptureSettings:(id)settings serializedProcessingSettings:(id)processingSettings
{
  v8.receiver = self;
  v8.super_class = AVCaptureDeferredPhotoSettings;
  v6 = [(AVCaptureDeferredPhotoSettings *)&v8 init];
  if (v6)
  {
    v6->_captureSettings = settings;
    v6->_serializedProcessingSettings = [processingSettings copy];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureDeferredPhotoSettings;
  [(AVCaptureDeferredPhotoSettings *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_captureSettings forKey:@"FigCaptureStillImageSettings"];
  serializedProcessingSettings = self->_serializedProcessingSettings;

  [coder encodeObject:serializedProcessingSettings forKey:@"SerializedProcessingSettings"];
}

- (AVCaptureDeferredPhotoSettings)initWithCoder:(id)coder
{
  v5 = MEMORY[0x1E695DFD8];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  result = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", v6, v9[0]), @"FigCaptureStillImageSettings"}];
  if (result)
  {
    v8 = result;
    result = [coder decodeObjectOfClass:objc_opt_class() forKey:@"SerializedProcessingSettings"];
    if (result)
    {
      return [(AVCaptureDeferredPhotoSettings *)self _initWithCaptureSettings:v8 serializedProcessingSettings:result];
    }
  }

  return result;
}

@end