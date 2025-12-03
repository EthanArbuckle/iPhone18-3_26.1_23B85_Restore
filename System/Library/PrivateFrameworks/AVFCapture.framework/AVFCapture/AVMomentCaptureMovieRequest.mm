@interface AVMomentCaptureMovieRequest
+ (id)requestWithDelegate:(id)delegate movieRecordingSettings:(id)settings momentSettings:(id)momentSettings;
- (AVMomentCaptureMovieRecordingResolvedSettings)resolvedSettings;
- (id)_initWithDelegate:(id)delegate movieRecordingSettings:(id)settings momentSettings:(id)momentSettings;
- (void)dealloc;
- (void)setResolvedSettings:(id)settings;
@end

@implementation AVMomentCaptureMovieRequest

+ (id)requestWithDelegate:(id)delegate movieRecordingSettings:(id)settings momentSettings:(id)momentSettings
{
  v5 = [objc_alloc(objc_opt_class()) _initWithDelegate:delegate movieRecordingSettings:settings momentSettings:momentSettings];

  return v5;
}

- (id)_initWithDelegate:(id)delegate movieRecordingSettings:(id)settings momentSettings:(id)momentSettings
{
  v11.receiver = self;
  v11.super_class = AVMomentCaptureMovieRequest;
  v8 = [(AVMomentCaptureMovieRequest *)&v11 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69881A0]);
    v8->_delegateStorage = v9;
    [(AVWeakReferencingDelegateStorage *)v9 setDelegate:delegate queue:MEMORY[0x1E69E96A0]];
    v8->_unresolvedSettings = settings;
    v8->_momentCaptureSettings = momentSettings;
    if ([(AVMomentCaptureMovieRecordingSettings *)v8->_unresolvedSettings movieFileURL])
    {
      v8->_expectedMovieCount = 1;
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMomentCaptureMovieRequest;
  [(AVMomentCaptureMovieRequest *)&v3 dealloc];
}

- (AVMomentCaptureMovieRecordingResolvedSettings)resolvedSettings
{
  v2 = self->_resolvedSettings;

  return v2;
}

- (void)setResolvedSettings:(id)settings
{
  self->_expectedMovieCount = 0;
  if ([settings movieURL])
  {
    ++self->_expectedMovieCount;
  }

  if ([settings spatialOverCaptureURL])
  {
    ++self->_expectedMovieCount;
  }

  self->_resolvedSettings = settings;
}

@end