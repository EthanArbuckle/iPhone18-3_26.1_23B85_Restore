@interface NSMutableArray(NCStackSupport)
- (id)nc_pop;
@end

@implementation NSMutableArray(NCStackSupport)

- (id)nc_pop
{
  lastObject = [self lastObject];
  [self removeLastObject];

  return lastObject;
}

@end