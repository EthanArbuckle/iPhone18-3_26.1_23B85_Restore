@interface AVPictureInPictureCALayerHostView
- (AVPictureInPictureCALayerHostView)initWithFrame:(CGRect)frame;
@end

@implementation AVPictureInPictureCALayerHostView

- (AVPictureInPictureCALayerHostView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = AVPictureInPictureCALayerHostView;
  v3 = [(AVPictureInPictureCALayerHostView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(AVPictureInPictureCALayerHostView *)v3 layer];
    [layer setInheritsTiming:0];
  }

  return v4;
}

@end