@interface BCCardSetViewControllerViewState
- (BCCardSetViewControllerViewState)initWithIsExpanded:(BOOL)expanded viewSize:(CGSize)size;
- (CGSize)viewSize;
@end

@implementation BCCardSetViewControllerViewState

- (BCCardSetViewControllerViewState)initWithIsExpanded:(BOOL)expanded viewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = BCCardSetViewControllerViewState;
  result = [(BCCardSetViewControllerViewState *)&v8 init];
  if (result)
  {
    result->_isExpanded = expanded;
    result->_viewSize.width = width;
    result->_viewSize.height = height;
  }

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