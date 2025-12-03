@interface ABPKSinglePerson2DResult
- (ABPKSinglePerson2DResult)init;
- (int)overlayResultOnImage:(__CVBuffer *)image withResult:(__CVBuffer *)result withColor:;
- (void)set2dSkeleton:(id)skeleton isPoseValid:(BOOL)valid trackingId:(unsigned int)id;
@end

@implementation ABPKSinglePerson2DResult

- (ABPKSinglePerson2DResult)init
{
  v6.receiver = self;
  v6.super_class = ABPKSinglePerson2DResult;
  v2 = [(ABPKSinglePerson2DResult *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ABPK2dSkeleton);
    skeleton2D = v2->_skeleton2D;
    v2->_skeleton2D = v3;

    v2->_isPoseValid = 0;
    v2->_trackingId = 0;
  }

  return v2;
}

- (void)set2dSkeleton:(id)skeleton isPoseValid:(BOOL)valid trackingId:(unsigned int)id
{
  objc_storeStrong(&self->_skeleton2D, skeleton);
  self->_isPoseValid = valid;
  self->_trackingId = id;
}

- (int)overlayResultOnImage:(__CVBuffer *)image withResult:(__CVBuffer *)result withColor:
{
  v13 = v4;
  v8 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_DEBUG, " Overlaying multi-person results on image ", buf, 2u);
  }

  if (!result)
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
    return [(ABPK2dSkeleton *)self->_skeleton2D overlaySkeletonOnImage:image withResult:result withColor:v13];
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