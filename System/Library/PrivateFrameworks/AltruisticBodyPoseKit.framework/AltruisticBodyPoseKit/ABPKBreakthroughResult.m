@interface ABPKBreakthroughResult
- (ABPKBreakthroughResult)init;
- (int)overlayResultOnImage:(__CVBuffer *)a3 withResult:(__CVBuffer *)a4 withColor:;
- (void)set2dSkeleton:(id)a3 isPoseValid:(BOOL)a4 trackingId:(unsigned int)a5 isFaceVisible:(BOOL)a6 isRaisingHand:(BOOL)a7 isWavingHand:(BOOL)a8;
@end

@implementation ABPKBreakthroughResult

- (ABPKBreakthroughResult)init
{
  v6.receiver = self;
  v6.super_class = ABPKBreakthroughResult;
  v2 = [(ABPKBreakthroughResult *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ABPK2dSkeleton);
    skeleton2D = v2->_skeleton2D;
    v2->_skeleton2D = v3;

    *&v2->_trackingId = 0;
  }

  return v2;
}

- (void)set2dSkeleton:(id)a3 isPoseValid:(BOOL)a4 trackingId:(unsigned int)a5 isFaceVisible:(BOOL)a6 isRaisingHand:(BOOL)a7 isWavingHand:(BOOL)a8
{
  objc_storeStrong(&self->_skeleton2D, a3);
  self->_isPoseValid = a4;
  self->_trackingId = a5;
  self->_isFaceVisible = a6;
  self->_isRaisingHand = a7;
  self->_isWavingHand = a8;
}

- (int)overlayResultOnImage:(__CVBuffer *)a3 withResult:(__CVBuffer *)a4 withColor:
{
  v13 = v4;
  v8 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_DEBUG, " Overlaying breakthrough results on image ", buf, 2u);
  }

  if (!a4)
  {
    v9 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_23EDDC000, v9, OS_LOG_TYPE_ERROR, " Overlay image not initialized ", v15, 2u);
    }
  }

  skeleton2D = self->_skeleton2D;
  if (skeleton2D)
  {
    [(ABPK2dSkeleton *)skeleton2D printData];
    return [(ABPK2dSkeleton *)self->_skeleton2D overlaySkeletonOnImage:a3 withResult:a4 withColor:v13];
  }

  else
  {
    v12 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_ERROR, " _skeleton2D is nil ", v14, 2u);
    }

    return -6661;
  }
}

@end