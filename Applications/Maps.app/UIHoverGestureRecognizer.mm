@interface UIHoverGestureRecognizer
- (BOOL)_maps_isHovering;
@end

@implementation UIHoverGestureRecognizer

- (BOOL)_maps_isHovering
{
  state = [(UIHoverGestureRecognizer *)self state];
  if (state != 1)
  {
    LOBYTE(state) = [(UIHoverGestureRecognizer *)self state]== 2;
  }

  return state;
}

@end