@interface AVSampleBufferDisplayLayer(AVPictureInPictureSuppport)
- (AVSampleBufferDisplayLayerPlayerController)avkit_sampleBufferDisplayLayerPlayerController;
@end

@implementation AVSampleBufferDisplayLayer(AVPictureInPictureSuppport)

- (AVSampleBufferDisplayLayerPlayerController)avkit_sampleBufferDisplayLayerPlayerController
{
  v2 = objc_getAssociatedObject(self, "AVSBDLPlayerControllerKey");
  if (!v2)
  {
    v2 = objc_alloc_init(AVSampleBufferDisplayLayerPlayerController);
    objc_setAssociatedObject(self, "AVSBDLPlayerControllerKey", v2, 0);
  }

  return v2;
}

@end