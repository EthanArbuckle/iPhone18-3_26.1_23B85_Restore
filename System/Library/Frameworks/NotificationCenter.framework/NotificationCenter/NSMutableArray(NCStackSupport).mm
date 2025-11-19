@interface NSMutableArray(NCStackSupport)
- (id)nc_pop;
@end

@implementation NSMutableArray(NCStackSupport)

- (id)nc_pop
{
  v2 = [a1 lastObject];
  [a1 removeLastObject];

  return v2;
}

@end