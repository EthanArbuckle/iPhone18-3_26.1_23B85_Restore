@interface LayoutCardInfo
- (LayoutCardInfo)init;
@end

@implementation LayoutCardInfo

- (LayoutCardInfo)init
{
  v3.receiver = self;
  v3.super_class = LayoutCardInfo;
  result = [(LayoutCardInfo *)&v3 init];
  if (result)
  {
    result->_alpha = 1.0;
  }

  return result;
}

@end