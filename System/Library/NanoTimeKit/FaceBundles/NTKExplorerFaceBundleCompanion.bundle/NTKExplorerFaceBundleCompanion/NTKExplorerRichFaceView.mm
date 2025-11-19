@interface NTKExplorerRichFaceView
- (id)_newComplicationFactoryForDevice:(id)a3;
@end

@implementation NTKExplorerRichFaceView

- (id)_newComplicationFactoryForDevice:(id)a3
{
  v4 = a3;
  v5 = [[NTKColorCircularUtilitarianFaceViewComplicationFactory alloc] initWithFaceView:self device:v4 graphicCornerComplications:1];

  return v5;
}

@end