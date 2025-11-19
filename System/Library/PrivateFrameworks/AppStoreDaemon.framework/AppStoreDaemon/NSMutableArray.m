@interface NSMutableArray
- (id)asd_pop;
@end

@implementation NSMutableArray

- (id)asd_pop
{
  if (a1)
  {
    v2 = [a1 lastObject];
    [a1 removeLastObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end