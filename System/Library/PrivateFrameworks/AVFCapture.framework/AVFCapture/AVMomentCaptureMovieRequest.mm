@interface AVMomentCaptureMovieRequest
+ (id)requestWithDelegate:(id)a3 movieRecordingSettings:(id)a4 momentSettings:(id)a5;
- (AVMomentCaptureMovieRecordingResolvedSettings)resolvedSettings;
- (id)_initWithDelegate:(id)a3 movieRecordingSettings:(id)a4 momentSettings:(id)a5;
- (void)dealloc;
- (void)setResolvedSettings:(id)a3;
@end

@implementation AVMomentCaptureMovieRequest

+ (id)requestWithDelegate:(id)a3 movieRecordingSettings:(id)a4 momentSettings:(id)a5
{
  v5 = [objc_alloc(objc_opt_class()) _initWithDelegate:a3 movieRecordingSettings:a4 momentSettings:a5];

  return v5;
}

- (id)_initWithDelegate:(id)a3 movieRecordingSettings:(id)a4 momentSettings:(id)a5
{
  v11.receiver = self;
  v11.super_class = AVMomentCaptureMovieRequest;
  v8 = [(AVMomentCaptureMovieRequest *)&v11 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69881A0]);
    v8->_delegateStorage = v9;
    [(AVWeakReferencingDelegateStorage *)v9 setDelegate:a3 queue:MEMORY[0x1E69E96A0]];
    v8->_unresolvedSettings = a4;
    v8->_momentCaptureSettings = a5;
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

- (void)setResolvedSettings:(id)a3
{
  self->_expectedMovieCount = 0;
  if ([a3 movieURL])
  {
    ++self->_expectedMovieCount;
  }

  if ([a3 spatialOverCaptureURL])
  {
    ++self->_expectedMovieCount;
  }

  self->_resolvedSettings = a3;
}

@end