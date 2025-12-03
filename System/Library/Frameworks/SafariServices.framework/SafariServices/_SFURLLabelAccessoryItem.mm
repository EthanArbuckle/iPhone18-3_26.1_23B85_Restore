@interface _SFURLLabelAccessoryItem
- (CGRect)frame;
- (CGSize)size;
- (UIView)viewForLayout;
- (void)setFrame:(CGRect)frame;
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewForLayout = [(_SFURLLabelAccessoryItem *)self viewForLayout];
  [(UIImageView *)viewForLayout setFrame:x, y, width, height];
  v8 = viewForLayout;
  if (self->_view != viewForLayout)
  {
    [(UIImageView *)viewForLayout bounds];
    [(UIImageView *)self->_view setFrame:?];
    v8 = viewForLayout;
  }
}

- (CGRect)frame
{
  viewForLayout = [(_SFURLLabelAccessoryItem *)self viewForLayout];
  [viewForLayout frame];
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