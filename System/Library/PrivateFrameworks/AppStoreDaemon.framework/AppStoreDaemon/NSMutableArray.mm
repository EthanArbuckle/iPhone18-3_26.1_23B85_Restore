@interface NSMutableArray
- (id)asd_pop;
@end

@implementation NSMutableArray

- (id)asd_pop
{
  if (self)
  {
    lastObject = [self lastObject];
    [self removeLastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

@end