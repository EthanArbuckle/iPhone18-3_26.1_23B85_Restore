@interface ARImageTrackingTechnique
- (ARImageTrackingTechnique)initWithReferenceImages:(id)a3 maximumNumberOfTrackedImages:(int64_t)a4 deterministicMode:(BOOL)a5;
@end

@implementation ARImageTrackingTechnique

- (ARImageTrackingTechnique)initWithReferenceImages:(id)a3 maximumNumberOfTrackedImages:(int64_t)a4 deterministicMode:(BOOL)a5
{
  v7 = a3;
  v8 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.ARImageTrackingTechnique");
  v12.receiver = self;
  v12.super_class = ARImageTrackingTechnique;
  v9 = [(ARImageDetectionTechnique *)&v12 initWithReferenceImages:v7 maximumNumberOfTrackedImages:a4 continuousDetection:0 processingQueue:v8];
  v10 = v9;
  if (v9)
  {
    v9->super._needsWorldTrackingPoseData = 0;
  }

  return v10;
}

@end