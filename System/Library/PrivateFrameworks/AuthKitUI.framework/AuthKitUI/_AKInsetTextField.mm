@interface _AKInsetTextField
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)leftViewRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGSize)insetSize;
- (_AKInsetTextField)initWithFrame:(CGRect)frame;
@end

@implementation _AKInsetTextField

- (_AKInsetTextField)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = _AKInsetTextField;
  v7 = [(_AKInsetTextField *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v7, v7);
  if (v7)
  {
    *(v7 + 1064) = COERCE_UNSIGNED_INT64(12.0);
  }

  v4 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v4;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  boundsCopy = bounds;
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _AKInsetTextField;
  [(_AKInsetTextField *)&v3 textRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  rect = v8;
  return CGRectInset(v8, selfCopy->_insetSize.width, selfCopy->_insetSize.height);
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  boundsCopy = bounds;
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _AKInsetTextField;
  [(_AKInsetTextField *)&v3 editingRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  rect = v8;
  return CGRectInset(v8, selfCopy->_insetSize.width, selfCopy->_insetSize.height);
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
  boundsCopy = bounds;
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _AKInsetTextField;
  [(_AKInsetTextField *)&v3 leftViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  rect = v8;
  return CGRectOffset(v8, selfCopy->_insetSize.width, selfCopy->_insetSize.height);
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  boundsCopy = bounds;
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _AKInsetTextField;
  [(_AKInsetTextField *)&v3 rightViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  rect = v8;
  return CGRectOffset(v8, -selfCopy->_insetSize.width, selfCopy->_insetSize.height);
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