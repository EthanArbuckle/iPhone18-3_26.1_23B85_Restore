@interface CoordinatorBuilder
- (CoordinatorBuilder)init;
@end

@implementation CoordinatorBuilder

- (CoordinatorBuilder)init
{
  v3.receiver = self;
  v3.super_class = CoordinatorBuilder;
  result = [(CoordinatorBuilder *)&v3 init];
  if (result)
  {
    result->_clientID = 1;
  }

  return result;
}

@end