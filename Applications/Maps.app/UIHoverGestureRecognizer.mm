@interface UIHoverGestureRecognizer
- (BOOL)_maps_isHovering;
@end

@implementation UIHoverGestureRecognizer

- (BOOL)_maps_isHovering
{
  v3 = [(UIHoverGestureRecognizer *)self state];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(UIHoverGestureRecognizer *)self state]== 2;
  }

  return v3;
}

@end