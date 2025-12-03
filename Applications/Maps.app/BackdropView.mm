@interface BackdropView
- (BackdropView)initWithFrame:(CGRect)frame;
@end

@implementation BackdropView

- (BackdropView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = BackdropView;
  v3 = [(BackdropView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BackdropView *)v3 setRenderMode:1];
  }

  return v4;
}

@end