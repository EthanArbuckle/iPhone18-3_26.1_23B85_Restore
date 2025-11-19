@interface BCCardSetViewControllerViewState
- (BCCardSetViewControllerViewState)initWithIsExpanded:(BOOL)a3 viewSize:(CGSize)a4;
- (CGSize)viewSize;
@end

@implementation BCCardSetViewControllerViewState

- (BCCardSetViewControllerViewState)initWithIsExpanded:(BOOL)a3 viewSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8.receiver = self;
  v8.super_class = BCCardSetViewControllerViewState;
  result = [(BCCardSetViewControllerViewState *)&v8 init];
  if (result)
  {
    result->_isExpanded = a3;
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