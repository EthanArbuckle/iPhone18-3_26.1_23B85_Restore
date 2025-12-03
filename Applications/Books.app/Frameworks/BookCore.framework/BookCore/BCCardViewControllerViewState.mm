@interface BCCardViewControllerViewState
- (BCCardViewControllerViewState)initWithContentOffset:(CGPoint)offset contentScrollViewContentOffset:(CGPoint)contentOffset viewSize:(CGSize)size;
- (CGPoint)cardScrollViewContentOffset;
- (CGPoint)contentScrollViewContentOffset;
- (CGSize)viewSize;
- (id)description;
@end

@implementation BCCardViewControllerViewState

- (BCCardViewControllerViewState)initWithContentOffset:(CGPoint)offset contentScrollViewContentOffset:(CGPoint)contentOffset viewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = contentOffset.y;
  x = contentOffset.x;
  v9 = offset.y;
  v10 = offset.x;
  v12.receiver = self;
  v12.super_class = BCCardViewControllerViewState;
  result = [(BCCardViewControllerViewState *)&v12 init];
  if (result)
  {
    result->_cardScrollViewContentOffset.x = v10;
    result->_cardScrollViewContentOffset.y = v9;
    result->_contentScrollViewContentOffset.x = x;
    result->_contentScrollViewContentOffset.y = y;
    result->_viewSize.width = width;
    result->_viewSize.height = height;
  }

  return result;
}

- (id)description
{
  v3 = NSStringFromCGPoint(self->_cardScrollViewContentOffset);
  v4 = NSStringFromCGPoint(self->_contentScrollViewContentOffset);
  v5 = NSStringFromCGSize(self->_viewSize);
  v6 = [NSString stringWithFormat:@"<BCCardViewControllerViewState: %p> contentOffset: %@, contentScrollViewContentOffset: %@, viewSize: %@", self, v3, v4, v5];

  return v6;
}

- (CGPoint)cardScrollViewContentOffset
{
  x = self->_cardScrollViewContentOffset.x;
  y = self->_cardScrollViewContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)contentScrollViewContentOffset
{
  x = self->_contentScrollViewContentOffset.x;
  y = self->_contentScrollViewContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end