@interface WKScrollGeometry
- (BOOL)isEqual:(id)a3;
- (CGPoint)contentOffset;
- (CGSize)containerSize;
- (CGSize)contentSize;
- (UIEdgeInsets)contentInsets;
- (WKScrollGeometry)initWithContainerSize:(CGSize)a3 contentInsets:(UIEdgeInsets)a4 contentOffset:(CGPoint)a5 contentSize:(CGSize)a6;
@end

@implementation WKScrollGeometry

- (WKScrollGeometry)initWithContainerSize:(CGSize)a3 contentInsets:(UIEdgeInsets)a4 contentOffset:(CGPoint)a5 contentSize:(CGSize)a6
{
  y = a5.y;
  x = a5.x;
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  height = a3.height;
  width = a3.width;
  result = [(WKScrollGeometry *)self init:*&a6.width];
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

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = a3;
  v6 = self->_containerSize.width == *(a3 + 1) && self->_containerSize.height == *(a3 + 2);
  if (v6 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, *(a3 + 56)), vceqq_f64(*&self->_contentInsets.bottom, *(a3 + 72))))) & 1) != 0)
  {
    v7 = 0;
    if (self->_contentOffset.x == *(a3 + 3) && self->_contentOffset.y == *(a3 + 4))
    {
      v7 = self->_contentSize.height == *(a3 + 6) && self->_contentSize.width == *(a3 + 5);
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