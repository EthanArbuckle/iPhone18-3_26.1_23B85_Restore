@interface SiriGKView
- (BOOL)isSelectable;
- (UIEdgeInsets)edgeInsets;
@end

@implementation SiriGKView

- (BOOL)isSelectable
{
  v2 = [(SiriGKView *)self command];
  v3 = v2 != 0;

  return v3;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end