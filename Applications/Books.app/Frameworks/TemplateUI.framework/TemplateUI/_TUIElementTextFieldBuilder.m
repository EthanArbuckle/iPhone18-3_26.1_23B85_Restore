@interface _TUIElementTextFieldBuilder
- (UIEdgeInsets)editingInsets;
@end

@implementation _TUIElementTextFieldBuilder

- (UIEdgeInsets)editingInsets
{
  top = self->_editingInsets.top;
  left = self->_editingInsets.left;
  bottom = self->_editingInsets.bottom;
  right = self->_editingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end