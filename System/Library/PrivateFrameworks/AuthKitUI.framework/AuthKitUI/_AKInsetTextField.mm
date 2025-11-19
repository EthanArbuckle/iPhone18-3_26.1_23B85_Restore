@interface _AKInsetTextField
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)leftViewRectForBounds:(CGRect)a3;
- (CGRect)rightViewRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (CGSize)insetSize;
- (_AKInsetTextField)initWithFrame:(CGRect)a3;
@end

@implementation _AKInsetTextField

- (_AKInsetTextField)initWithFrame:(CGRect)a3
{
  v8 = a3;
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = _AKInsetTextField;
  v7 = [(_AKInsetTextField *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v7, v7);
  if (v7)
  {
    *(v7 + 1064) = COERCE_UNSIGNED_INT64(12.0);
  }

  v4 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v4;
}

- (CGRect)textRectForBounds:(CGRect)a3
{
  v7 = a3;
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _AKInsetTextField;
  [(_AKInsetTextField *)&v3 textRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  rect = v8;
  return CGRectInset(v8, v6->_insetSize.width, v6->_insetSize.height);
}

- (CGRect)editingRectForBounds:(CGRect)a3
{
  v7 = a3;
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _AKInsetTextField;
  [(_AKInsetTextField *)&v3 editingRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  rect = v8;
  return CGRectInset(v8, v6->_insetSize.width, v6->_insetSize.height);
}

- (CGRect)leftViewRectForBounds:(CGRect)a3
{
  v7 = a3;
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _AKInsetTextField;
  [(_AKInsetTextField *)&v3 leftViewRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  rect = v8;
  return CGRectOffset(v8, v6->_insetSize.width, v6->_insetSize.height);
}

- (CGRect)rightViewRectForBounds:(CGRect)a3
{
  v7 = a3;
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _AKInsetTextField;
  [(_AKInsetTextField *)&v3 rightViewRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  rect = v8;
  return CGRectOffset(v8, -v6->_insetSize.width, v6->_insetSize.height);
}

- (CGSize)insetSize
{
  height = self->_insetSize.height;
  width = self->_insetSize.width;
  result.height = height;
  result.width = width;
  return result;
}

@end