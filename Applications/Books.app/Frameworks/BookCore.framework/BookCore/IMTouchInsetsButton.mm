@interface IMTouchInsetsButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIEdgeInsets)touchInsets;
- (void)tintColorDidChange;
@end

@implementation IMTouchInsetsButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(IMTouchInsetsButton *)self bounds];
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  v10 = v9 + left;
  v12 = v11 + top;
  v14 = v13 - (left + self->_touchInsets.right);
  v16 = v15 - (top + self->_touchInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = IMTouchInsetsButton;
  [(IMTouchInsetsButton *)&v4 tintColorDidChange];
  if (!self->_titleDoesNotFollowTintColor)
  {
    tintColor = [(IMTouchInsetsButton *)self tintColor];
    [(IMTouchInsetsButton *)self setTitleColor:tintColor forState:0];
  }
}

- (UIEdgeInsets)touchInsets
{
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  bottom = self->_touchInsets.bottom;
  right = self->_touchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end