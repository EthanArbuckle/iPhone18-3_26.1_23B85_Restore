@interface AMSUIWebFlowOptions
- (CGSize)modalWindowSize;
@end

@implementation AMSUIWebFlowOptions

- (CGSize)modalWindowSize
{
  width = self->_modalWindowSize.width;
  height = self->_modalWindowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end