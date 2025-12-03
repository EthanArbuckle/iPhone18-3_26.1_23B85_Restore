@interface ABPK2DDetectionPostprocess
- (id)get2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect;
- (id)getAligned3DSkeleton;
- (id)getRaw2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect;
- (int)extract2DSkeletonfromBuffers:(id)buffers withImagePreProcessingParams:(id)params atTimestamp:(double)timestamp previousSkeleton3D:(id)d;
- (void)getRawTrackedHumanForLiftingSkeleton:(id)skeleton;
- (void)getRawTrackedHumanSkeleton:(id)skeleton;
- (void)getRawTrackedHumanSkeletonVector:(id)vector;
- (void)getTrackedHumanForLiftingSkeleton:(id)skeleton;
- (void)getTrackedHumanSkeleton:(id)skeleton;
@end

@implementation ABPK2DDetectionPostprocess

- (int)extract2DSkeletonfromBuffers:(id)buffers withImagePreProcessingParams:(id)params atTimestamp:(double)timestamp previousSkeleton3D:(id)d
{
  buffersCopy = buffers;
  paramsCopy = params;
  dCopy = d;
  v11 = MEMORY[0x277CBEAD8];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s must be overridden in a subclass/category", "-[ABPK2DDetectionPostprocess extract2DSkeletonfromBuffers:withImagePreProcessingParams:atTimestamp:previousSkeleton3D:]"];
  v13 = [v11 exceptionWithName:*MEMORY[0x277CBE660] reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)getRawTrackedHumanSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  v4 = MEMORY[0x277CBEAD8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s must be overridden in a subclass/category", "-[ABPK2DDetectionPostprocess getRawTrackedHumanSkeleton:]"];
  v6 = [v4 exceptionWithName:*MEMORY[0x277CBE660] reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)getRawTrackedHumanSkeletonVector:(id)vector
{
  vectorCopy = vector;
  v4 = MEMORY[0x277CBEAD8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s must be overridden in a subclass/category", "-[ABPK2DDetectionPostprocess getRawTrackedHumanSkeletonVector:]"];
  v6 = [v4 exceptionWithName:*MEMORY[0x277CBE660] reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)getTrackedHumanSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  v4 = MEMORY[0x277CBEAD8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s must be overridden in a subclass/category", "-[ABPK2DDetectionPostprocess getTrackedHumanSkeleton:]"];
  v6 = [v4 exceptionWithName:*MEMORY[0x277CBE660] reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)getTrackedHumanForLiftingSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  v4 = MEMORY[0x277CBEAD8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s must be overridden in a subclass/category", "-[ABPK2DDetectionPostprocess getTrackedHumanForLiftingSkeleton:]"];
  v6 = [v4 exceptionWithName:*MEMORY[0x277CBE660] reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)getRawTrackedHumanForLiftingSkeleton:(id)skeleton
{
  skeletonCopy = skeleton;
  v4 = MEMORY[0x277CBEAD8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s must be overridden in a subclass/category", "-[ABPK2DDetectionPostprocess getRawTrackedHumanForLiftingSkeleton:]"];
  v6 = [v4 exceptionWithName:*MEMORY[0x277CBE660] reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)getAligned3DSkeleton
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s must be overridden in a subclass/category", "-[ABPK2DDetectionPostprocess getAligned3DSkeleton]"];
  v5 = [v2 exceptionWithName:v3 reason:v4 userInfo:0];
  v6 = v5;

  objc_exception_throw(v5);
}

- (id)get2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s must be overridden in a subclass/category", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, "-[ABPK2DDetectionPostprocess get2DDetectionResultforRotation:croppedRect:]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)getRaw2DDetectionResultforRotation:(int64_t)rotation croppedRect:(CGRect)rect
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s must be overridden in a subclass/category", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, "-[ABPK2DDetectionPostprocess getRaw2DDetectionResultforRotation:croppedRect:]"];
  v7 = [v4 exceptionWithName:v5 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end