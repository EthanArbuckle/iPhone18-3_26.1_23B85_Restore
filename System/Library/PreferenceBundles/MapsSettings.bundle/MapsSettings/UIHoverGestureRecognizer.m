@interface UIHoverGestureRecognizer
- (BOOL)_maps_isHovering;
@end

@implementation UIHoverGestureRecognizer

- (BOOL)_maps_isHovering
{
  v3 = [(UIHoverGestureRecognizer *)self state];
  if (v3 != &dword_0 + 1)
  {
    LOBYTE(v3) = [(UIHoverGestureRecognizer *)self state]== &dword_0 + 2;
  }

  return v3;
}

@end