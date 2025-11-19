@interface AnalysisEngine
- (AnalysisEngine)initWithRecognizer:(id)a3;
- (BOOL)hasRecognizedDeviceInRecentPast:(id *)a3;
- (id)initForType:(unint64_t)a3;
- (void)clearHistory;
- (void)dealloc;
- (void)ingestVideoFrame:(opaqueCMSampleBuffer *)a3;
- (void)preheat;
- (void)processVideoFrame:(__CVBuffer *)a3;
- (void)reset;
@end

@implementation AnalysisEngine

- (id)initForType:(unint64_t)a3
{
  if (a3 == 1)
  {
    +[Recognizer recognizer_B520];
  }

  else
  {
    +[Recognizer recognizer_B238];
  }
  v4 = ;
  v5 = [(AnalysisEngine *)self initWithRecognizer:v4];

  return v5;
}

- (AnalysisEngine)initWithRecognizer:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = AnalysisEngine;
  v6 = [(AnalysisEngine *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v6->_crop_fraction = 0.7;
    v6->_useRecognizer = 1;
    objc_storeStrong(&v6->_dispatchQueue, &_dispatch_main_q);
    objc_storeStrong(&v7->_recognizer, a3);
    CMTimeMakeWithSeconds(&v17, 0.0, 3000000);
    v7->_recognizerInterval = v17;
    CMTimeMakeWithSeconds(&v17, 1.0, 3000000);
    v7->_recognitionExpirationSeconds = v17;
    v8 = dispatch_queue_create("Sauron processing queue", 0);
    processingQueue = v7->_processingQueue;
    v7->_processingQueue = v8;

    v10 = v7->_processingQueue;
    v11 = dispatch_get_global_queue(2, 0);
    dispatch_set_target_queue(v10, v11);

    v12 = objc_alloc_init(MotionDetector);
    motion = v7->_motion;
    v7->_motion = v12;

    LODWORD(v14) = 1045220557;
    [(MotionDetector *)v7->_motion setRotationThreshold:v14];
    LODWORD(v15) = 1024416809;
    [(MotionDetector *)v7->_motion setAccelerationThreshold:v15];
    [(MotionDetector *)v7->_motion stop];
    v7->_isDetectingMotion = 0;
    [(AnalysisEngine *)v7 reset];
  }

  return v7;
}

- (void)clearHistory
{
  [(Recognizer *)self->_recognizer reset];
  LODWORD(v3) = 1024416809;
  if (self->_usingM7Motion)
  {
    *&v3 = 0.11;
  }

  [(MotionDetector *)self->_motion setAccelerationThreshold:v3];
  motion = self->_motion;
  LODWORD(v5) = 1045220557;

  [(MotionDetector *)motion setRotationThreshold:v5];
}

- (void)reset
{
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000049D4;
  block[3] = &unk_1000EDB20;
  block[4] = self;
  dispatch_async(processingQueue, block);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AnalysisEngine;
  [(AnalysisEngine *)&v2 dealloc];
}

- (void)ingestVideoFrame:(opaqueCMSampleBuffer *)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_processingFrame)
  {
    self->_processingFrame = 1;
    CMSampleBufferGetPresentationTimeStamp(&v9, a3);
    self->_currentFrameTime = v9;
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    v6 = CVPixelBufferRetain(ImageBuffer);
    processingQueue = self->_processingQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004B00;
    block[3] = &unk_1000EDB48;
    block[4] = self;
    block[5] = v6;
    dispatch_async(processingQueue, block);
  }
}

- (void)preheat
{
  processingQueue = self->_processingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004BFC;
  block[3] = &unk_1000EDB20;
  block[4] = self;
  dispatch_async(processingQueue, block);
}

- (void)processVideoFrame:(__CVBuffer *)a3
{
  if (!a3)
  {
    goto LABEL_15;
  }

  if (!self->_useRecognizer)
  {
    goto LABEL_15;
  }

  time1 = self->_recognitionExpirationSeconds;
  if ([(AnalysisEngine *)self hasRecognizedDeviceInRecentPast:&time1])
  {
    goto LABEL_15;
  }

  recognizer = self->_recognizer;
  if (recognizer)
  {
    [(Recognizer *)recognizer lastProcessedImageTime];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  lhs = self->_currentFrameTime;
  CMTimeSubtract(&time1, &lhs, &rhs);
  rhs = self->_recognizerInterval;
  if (CMTimeCompare(&time1, &rhs) < 0)
  {
    goto LABEL_15;
  }

  v6 = self->_recognizer;
  time1 = self->_currentFrameTime;
  [(Recognizer *)v6 processImage:a3 withTimestamp:&time1];
  v7 = self->_recognizer;
  if (v7)
  {
    [(Recognizer *)v7 recognitionTime];
    v8 = self->_recognizer;
    if (v8)
    {
      [(Recognizer *)v8 lastProcessedImageTime];
      goto LABEL_13;
    }
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  memset(&rhs, 0, sizeof(rhs));
LABEL_13:
  if ((CMTimeCompare(&time1, &rhs) & 0x80000000) == 0)
  {
    v9 = [(AnalysisEngine *)self recognizingCompletionHandlerBlock];
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004E44;
    block[3] = &unk_1000EDB70;
    block[4] = self;
    block[5] = v9;
    dispatch_async(dispatchQueue, block);

    return;
  }

LABEL_15:
  v11 = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100004E98;
  v12[3] = &unk_1000EDB20;
  v12[4] = self;
  dispatch_async(v11, v12);
}

- (BOOL)hasRecognizedDeviceInRecentPast:(id *)a3
{
  if (!self->_useRecognizer)
  {
    return 0;
  }

  v11 = v3;
  v12 = v4;
  memset(&v10, 0, sizeof(v10));
  lhs = self->_currentFrameTime;
  v8 = *a3;
  CMTimeSubtract(&v10, &lhs, &v8);
  recognizer = self->_recognizer;
  if (recognizer)
  {
    [(Recognizer *)recognizer recognitionTime];
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  v8 = v10;
  return CMTimeCompare(&lhs, &v8) >= 0;
}

@end