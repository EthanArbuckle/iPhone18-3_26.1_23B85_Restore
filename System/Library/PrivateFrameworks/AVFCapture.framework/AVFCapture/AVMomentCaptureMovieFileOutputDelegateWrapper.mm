@interface AVMomentCaptureMovieFileOutputDelegateWrapper
+ (id)wrapperWithSettings:(id)settings delegate:(id)delegate connections:(id)connections;
- (AVMomentCaptureMovieFileOutputDelegateWrapper)initWithSettings:(id)settings delegate:(id)delegate connections:(id)connections;
- (void)dealloc;
@end

@implementation AVMomentCaptureMovieFileOutputDelegateWrapper

+ (id)wrapperWithSettings:(id)settings delegate:(id)delegate connections:(id)connections
{
  v5 = [objc_alloc(objc_opt_class()) initWithSettings:settings delegate:delegate connections:connections];

  return v5;
}

- (AVMomentCaptureMovieFileOutputDelegateWrapper)initWithSettings:(id)settings delegate:(id)delegate connections:(id)connections
{
  v11.receiver = self;
  v11.super_class = AVMomentCaptureMovieFileOutputDelegateWrapper;
  v7 = -[AVCaptureFileOutputDelegateWrapper initWithURL:delegate:settingsID:connections:](&v11, sel_initWithURL_delegate_settingsID_connections_, [settings movieFileURL], 0, objc_msgSend(settings, "uniqueID"), connections);
  v8 = v7;
  if (v7)
  {
    delegateStorage = [(AVCaptureFileOutputDelegateWrapper *)v7 delegateStorage];
    [(AVWeakReferencingDelegateStorage *)delegateStorage setDelegate:delegate queue:MEMORY[0x1E69E96A0]];
    v8->_videoCodecType = [settings videoCodecType];
    -[AVCaptureFileOutputDelegateWrapper setMetadata:](v8, "setMetadata:", [settings movieMetadata]);
    if ([settings isAutoSpatialOverCaptureEnabled])
    {
      v8->_spatialOverCaptureMovieFileURL = [settings spatialOverCaptureMovieFileURL];
      v8->_spatialOverCaptureMovieMetadata = [settings spatialOverCaptureMovieMetadata];
    }

    if (!v8->_spatialOverCaptureMovieFileURL)
    {
      v8->_didFinishWritingSpatialOverCaptureMovieCallbackFired = 1;
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMomentCaptureMovieFileOutputDelegateWrapper;
  [(AVCaptureFileOutputDelegateWrapper *)&v3 dealloc];
}

@end