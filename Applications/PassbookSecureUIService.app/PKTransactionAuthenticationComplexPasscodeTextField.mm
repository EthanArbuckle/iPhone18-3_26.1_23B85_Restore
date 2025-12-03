@interface PKTransactionAuthenticationComplexPasscodeTextField
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)textInsets;
@end

@implementation PKTransactionAuthenticationComplexPasscodeTextField

- (CGRect)textRectForBounds:(CGRect)bounds
{
  top = self->_textInsets.top;
  left = self->_textInsets.left;
  v5 = bounds.origin.x + left;
  v6 = bounds.origin.y + top;
  v7 = bounds.size.width - (left + self->_textInsets.right);
  v8 = bounds.size.height - (top + self->_textInsets.bottom);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  top = self->_textInsets.top;
  left = self->_textInsets.left;
  v5 = bounds.origin.x + left;
  v6 = bounds.origin.y + top;
  v7 = bounds.size.width - (left + self->_textInsets.right);
  v8 = bounds.size.height - (top + self->_textInsets.bottom);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  top = self->_textInsets.top;
  left = self->_textInsets.left;
  v5 = bounds.origin.x + left;
  v6 = bounds.origin.y + top;
  v7 = bounds.size.width - (left + self->_textInsets.right);
  v8 = bounds.size.height - (top + self->_textInsets.bottom);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v7.receiver = self;
  v7.super_class = PKTransactionAuthenticationComplexPasscodeTextField;
  [(PKTransactionAuthenticationComplexPasscodeTextField *)&v7 sizeThatFits:fits.width, fits.height];
  v5 = v4 + v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (UIEdgeInsets)textInsets
{
  top = self->_textInsets.top;
  left = self->_textInsets.left;
  bottom = self->_textInsets.bottom;
  right = self->_textInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end