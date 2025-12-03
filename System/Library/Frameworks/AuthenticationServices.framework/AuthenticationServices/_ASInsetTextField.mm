@interface _ASInsetTextField
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)leftViewRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGSize)insetSize;
- (_ASInsetTextField)initWithFrame:(CGRect)frame;
@end

@implementation _ASInsetTextField

- (_ASInsetTextField)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _ASInsetTextField;
  v3 = [(_ASInsetTextField *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    *(v3 + 1064) = xmmword_1B1D84D70;
    v5 = v3;
  }

  return v4;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _ASInsetTextField;
  [(_ASInsetTextField *)&v4 textRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  return CGRectInset(v5, self->_insetSize.width, self->_insetSize.height);
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _ASInsetTextField;
  [(_ASInsetTextField *)&v4 editingRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  return CGRectInset(v5, self->_insetSize.width, self->_insetSize.height);
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _ASInsetTextField;
  [(_ASInsetTextField *)&v4 leftViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  return CGRectOffset(v5, self->_insetSize.width, self->_insetSize.height);
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = _ASInsetTextField;
  [(_ASInsetTextField *)&v4 rightViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  return CGRectOffset(v5, -self->_insetSize.width, self->_insetSize.height);
}

- (CGSize)insetSize
{
  width = self->_insetSize.width;
  height = self->_insetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end