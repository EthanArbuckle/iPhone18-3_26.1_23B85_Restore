@interface WKScrollGeometry
- (BOOL)isEqual:(id)equal;
- (CGPoint)contentOffset;
- (CGSize)containerSize;
- (CGSize)contentSize;
- (UIEdgeInsets)contentInsets;
- (WKScrollGeometry)initWithContainerSize:(CGSize)size contentInsets:(UIEdgeInsets)insets contentOffset:(CGPoint)offset contentSize:(CGSize)contentSize;
@end

@implementation WKScrollGeometry

- (WKScrollGeometry)initWithContainerSize:(CGSize)size contentInsets:(UIEdgeInsets)insets contentOffset:(CGPoint)offset contentSize:(CGSize)contentSize
{
  y = offset.y;
  x = offset.x;
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  height = size.height;
  width = size.width;
  result = [(WKScrollGeometry *)self init:*&contentSize.width];
  if (result)
  {
    result->_containerSize.width = width;
    result->_containerSize.height = height;
    result->_contentInsets.top = top;
    result->_contentInsets.left = left;
    result->_contentInsets.bottom = bottom;
    result->_contentInsets.right = right;
    result->_contentOffset.x = x;
    result->_contentOffset.y = y;
    result->_contentSize.width = v15;
    result->_contentSize.height = v16;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  equalCopy = equal;
  v6 = self->_containerSize.width == *(equal + 1) && self->_containerSize.height == *(equal + 2);
  if (v6 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, *(equal + 56)), vceqq_f64(*&self->_contentInsets.bottom, *(equal + 72))))) & 1) != 0)
  {
    v7 = 0;
    if (self->_contentOffset.x == *(equal + 3) && self->_contentOffset.y == *(equal + 4))
    {
      v7 = self->_contentSize.height == *(equal + 6) && self->_contentSize.width == *(equal + 5);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGSize)containerSize
{
  width = self->_containerSize.width;
  height = self->_containerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end