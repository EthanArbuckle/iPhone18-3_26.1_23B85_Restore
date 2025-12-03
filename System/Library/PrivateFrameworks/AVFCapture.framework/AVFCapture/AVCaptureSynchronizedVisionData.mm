@interface AVCaptureSynchronizedVisionData
- (id)_initWithVisionDataPixelBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp visionDataWasDropped:(BOOL)dropped droppedReason:(int64_t)reason;
- (void)dealloc;
@end

@implementation AVCaptureSynchronizedVisionData

- (id)_initWithVisionDataPixelBuffer:(__CVBuffer *)buffer timestamp:(id *)timestamp visionDataWasDropped:(BOOL)dropped droppedReason:(int64_t)reason
{
  v13.receiver = self;
  v13.super_class = AVCaptureSynchronizedVisionData;
  v12 = *timestamp;
  v9 = [(AVCaptureSynchronizedData *)&v13 _initWithTimestamp:&v12];
  if (v9)
  {
    v10 = objc_alloc_init(AVCaptureSynchronizedVisionDataInternal);
    v9[2] = v10;
    if (v10)
    {
      *(v9[2] + 8) = CVPixelBufferRetain(buffer);
      *(v9[2] + 16) = dropped;
      *(v9[2] + 24) = reason;
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    CVPixelBufferRelease(internal->visionDataPixelBuffer);
  }

  v4.receiver = self;
  v4.super_class = AVCaptureSynchronizedVisionData;
  [(AVCaptureSynchronizedData *)&v4 dealloc];
}

@end