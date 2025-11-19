@interface _SFURLLabelAccessoryItem
- (CGRect)frame;
- (CGSize)size;
- (UIView)viewForLayout;
- (void)setFrame:(CGRect)a3;
@end

@implementation _SFURLLabelAccessoryItem

- (UIView)viewForLayout
{
  effectView = self->_effectView;
  if (!effectView)
  {
    effectView = self->_view;
  }

  v3 = effectView;

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(_SFURLLabelAccessoryItem *)self viewForLayout];
  [(UIImageView *)v9 setFrame:x, y, width, height];
  v8 = v9;
  if (self->_view != v9)
  {
    [(UIImageView *)v9 bounds];
    [(UIImageView *)self->_view setFrame:?];
    v8 = v9;
  }
}

- (CGRect)frame
{
  v2 = [(_SFURLLabelAccessoryItem *)self viewForLayout];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end