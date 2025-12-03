@interface NTKExplorerRichFaceView
- (id)_newComplicationFactoryForDevice:(id)device;
@end

@implementation NTKExplorerRichFaceView

- (id)_newComplicationFactoryForDevice:(id)device
{
  deviceCopy = device;
  v5 = [[NTKColorCircularUtilitarianFaceViewComplicationFactory alloc] initWithFaceView:self device:deviceCopy graphicCornerComplications:1];

  return v5;
}

@end