@interface UIHoverGestureRecognizer
- (BOOL)_maps_isHovering;
@end

@implementation UIHoverGestureRecognizer

- (BOOL)_maps_isHovering
{
  state = [(UIHoverGestureRecognizer *)self state];
  if (state != &dword_0 + 1)
  {
    LOBYTE(state) = [(UIHoverGestureRecognizer *)self state]== &dword_0 + 2;
  }

  return state;
}

@end