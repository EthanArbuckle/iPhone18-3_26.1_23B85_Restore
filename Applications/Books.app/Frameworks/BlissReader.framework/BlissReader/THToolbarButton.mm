@interface THToolbarButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (UIEdgeInsets)touchPadding;
@end

@implementation THToolbarButton

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(THToolbarButton *)self touchPadding];
  v8 = v7;
  v10 = v9;
  v12 = -v11;
  v14 = -v13;
  [(THToolbarButton *)self bounds];
  v16 = v15 - v10;
  v18 = v17 - v8;
  v20 = v19 - (v14 - v10);
  v22 = v21 - (v12 - v8);
  v23 = x;
  v24 = y;

  return CGRectContainsPoint(*&v16, *&v23);
}

- (UIEdgeInsets)touchPadding
{
  top = self->_touchPadding.top;
  left = self->_touchPadding.left;
  bottom = self->_touchPadding.bottom;
  right = self->_touchPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end