@interface ABPKGestureDetectionResult
- (ABPKGestureDetectionResult)init;
- (int)overlayResultOnImage:(__CVBuffer *)image withResult:(__CVBuffer *)result withColor:;
- (void)set2dSkeleton:(id)skeleton isPoseValid:(BOOL)valid trackingId:(unsigned int)id gestureTypes:(id)types;
@end

@implementation ABPKGestureDetectionResult

- (ABPKGestureDetectionResult)init
{
  v5.receiver = self;
  v5.super_class = ABPKGestureDetectionResult;
  v2 = [(ABPKGestureDetectionResult *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(ABPK2dSkeleton);
    [(ABPKGestureDetectionResult *)v2 set2dSkeleton:v3 isPoseValid:0 trackingId:0 gestureTypes:MEMORY[0x277CBEBF8]];
  }

  return v2;
}

- (void)set2dSkeleton:(id)skeleton isPoseValid:(BOOL)valid trackingId:(unsigned int)id gestureTypes:(id)types
{
  skeletonCopy = skeleton;
  typesCopy = types;
  skeleton2D = self->_skeleton2D;
  self->_skeleton2D = skeletonCopy;
  v14 = skeletonCopy;

  self->_isPoseValid = valid;
  self->_trackingId = id;
  gestureTypes = self->_gestureTypes;
  self->_gestureTypes = typesCopy;
}

- (int)overlayResultOnImage:(__CVBuffer *)image withResult:(__CVBuffer *)result withColor:
{
  v13 = v4;
  v8 = __ABPKLogSharedInstance();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v8, OS_LOG_TYPE_DEBUG, " Overlaying Gesture-Detection results on image ", buf, 2u);
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