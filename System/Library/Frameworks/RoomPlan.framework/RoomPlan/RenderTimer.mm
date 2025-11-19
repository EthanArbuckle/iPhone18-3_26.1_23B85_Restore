@interface RenderTimer
- (void)fire;
@end

@implementation RenderTimer

- (void)fire
{
  v2 = *self->metalLayer;

  [v2 bounds];
  v5.origin.x = 0.0;
  v5.origin.y = 0.0;
  v5.size.width = 0.0;
  v5.size.height = 0.0;
  if (!CGRectEqualToRect(v4, v5))
  {
    sub_23A9546D0();
  }
}

@end