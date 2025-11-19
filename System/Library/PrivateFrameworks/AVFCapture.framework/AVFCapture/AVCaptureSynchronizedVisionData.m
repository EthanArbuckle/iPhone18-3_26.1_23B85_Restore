@interface AVCaptureSynchronizedVisionData
- (id)_initWithVisionDataPixelBuffer:(__CVBuffer *)a3 timestamp:(id *)a4 visionDataWasDropped:(BOOL)a5 droppedReason:(int64_t)a6;
- (void)dealloc;
@end

@implementation AVCaptureSynchronizedVisionData

- (id)_initWithVisionDataPixelBuffer:(__CVBuffer *)a3 timestamp:(id *)a4 visionDataWasDropped:(BOOL)a5 droppedReason:(int64_t)a6
{
  v13.receiver = self;
  v13.super_class = AVCaptureSynchronizedVisionData;
  v12 = *a4;
  v9 = [(AVCaptureSynchronizedData *)&v13 _initWithTimestamp:&v12];
  if (v9)
  {
    v10 = objc_alloc_init(AVCaptureSynchronizedVisionDataInternal);
    v9[2] = v10;
    if (v10)
    {
      *(v9[2] + 8) = CVPixelBufferRetain(a3);
      *(v9[2] + 16) = a5;
      *(v9[2] + 24) = a6;
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