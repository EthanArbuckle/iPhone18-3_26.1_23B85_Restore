@interface UIView
- (CALayer)currentLayer;
@end

@implementation UIView

- (CALayer)currentLayer
{
  layer = [(UIView *)self layer];
  presentationLayer = [layer presentationLayer];

  if (presentationLayer)
  {
    layer2 = presentationLayer;
  }

  else
  {
    layer2 = [(UIView *)self layer];
  }

  v6 = layer2;

  return v6;
}

@end