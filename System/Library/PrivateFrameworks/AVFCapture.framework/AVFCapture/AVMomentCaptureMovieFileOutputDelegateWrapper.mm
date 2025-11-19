@interface AVMomentCaptureMovieFileOutputDelegateWrapper
+ (id)wrapperWithSettings:(id)a3 delegate:(id)a4 connections:(id)a5;
- (AVMomentCaptureMovieFileOutputDelegateWrapper)initWithSettings:(id)a3 delegate:(id)a4 connections:(id)a5;
- (void)dealloc;
@end

@implementation AVMomentCaptureMovieFileOutputDelegateWrapper

+ (id)wrapperWithSettings:(id)a3 delegate:(id)a4 connections:(id)a5
{
  v5 = [objc_alloc(objc_opt_class()) initWithSettings:a3 delegate:a4 connections:a5];

  return v5;
}

- (AVMomentCaptureMovieFileOutputDelegateWrapper)initWithSettings:(id)a3 delegate:(id)a4 connections:(id)a5
{
  v11.receiver = self;
  v11.super_class = AVMomentCaptureMovieFileOutputDelegateWrapper;
  v7 = -[AVCaptureFileOutputDelegateWrapper initWithURL:delegate:settingsID:connections:](&v11, sel_initWithURL_delegate_settingsID_connections_, [a3 movieFileURL], 0, objc_msgSend(a3, "uniqueID"), a5);
  v8 = v7;
  if (v7)
  {
    v9 = [(AVCaptureFileOutputDelegateWrapper *)v7 delegateStorage];
    [(AVWeakReferencingDelegateStorage *)v9 setDelegate:a4 queue:MEMORY[0x1E69E96A0]];
    v8->_videoCodecType = [a3 videoCodecType];
    -[AVCaptureFileOutputDelegateWrapper setMetadata:](v8, "setMetadata:", [a3 movieMetadata]);
    if ([a3 isAutoSpatialOverCaptureEnabled])
    {
      v8->_spatialOverCaptureMovieFileURL = [a3 spatialOverCaptureMovieFileURL];
      v8->_spatialOverCaptureMovieMetadata = [a3 spatialOverCaptureMovieMetadata];
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