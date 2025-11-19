@interface _ASInsetTextField
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)leftViewRectForBounds:(CGRect)a3;
- (CGRect)rightViewRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (CGSize)insetSize;
- (_ASInsetTextField)initWithFrame:(CGRect)a3;
@end

@implementation _ASInsetTextField

- (_ASInsetTextField)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _ASInsetTextField;
  v3 = [(_ASInsetTextField *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    *(v3 + 1064) = xmmword_1B1D84D70;
    v5 = v3;
  }

  return v4;
}

- (CGRect)textRectForBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _ASInsetTextField;
  [(_ASInsetTextField *)&v4 textRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  return CGRectInset(v5, self->_insetSize.width, self->_insetSize.height);
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _ASInsetTextField;
  [(_ASInsetTextField *)&v4 editingRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  return CGRectInset(v5, self->_insetSize.width, self->_insetSize.height);
}

- (CGRect)leftViewRectForBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _ASInsetTextField;
  [(_ASInsetTextField *)&v4 leftViewRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  return CGRectOffset(v5, self->_insetSize.width, self->_insetSize.height);
}

- (CGRect)rightViewRectForBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = _ASInsetTextField;
  [(_ASInsetTextField *)&v4 rightViewRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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