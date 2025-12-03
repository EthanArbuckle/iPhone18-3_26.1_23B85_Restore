@interface ARImageTrackingTechnique
- (ARImageTrackingTechnique)initWithReferenceImages:(id)images maximumNumberOfTrackedImages:(int64_t)trackedImages deterministicMode:(BOOL)mode;
@end

@implementation ARImageTrackingTechnique

- (ARImageTrackingTechnique)initWithReferenceImages:(id)images maximumNumberOfTrackedImages:(int64_t)trackedImages deterministicMode:(BOOL)mode
{
  imagesCopy = images;
  v8 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.ARImageTrackingTechnique");
  v12.receiver = self;
  v12.super_class = ARImageTrackingTechnique;
  v9 = [(ARImageDetectionTechnique *)&v12 initWithReferenceImages:imagesCopy maximumNumberOfTrackedImages:trackedImages continuousDetection:0 processingQueue:v8];
  v10 = v9;
  if (v9)
  {
    v9->super._needsWorldTrackingPoseData = 0;
  }

  return v10;
}

@end