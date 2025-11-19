@interface NSMutableArray(AAAFoundation)
- (id)aaf_removeFirstObject;
- (id)aaf_removeLastObject;
@end

@implementation NSMutableArray(AAAFoundation)

- (id)aaf_removeFirstObject
{
  if ([a1 count])
  {
    v2 = [a1 firstObject];
    [a1 removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)aaf_removeLastObject
{
  if ([a1 count])
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