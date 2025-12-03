@interface NSMutableArray(AAAFoundation)
- (id)aaf_removeFirstObject;
- (id)aaf_removeLastObject;
@end

@implementation NSMutableArray(AAAFoundation)

- (id)aaf_removeFirstObject
{
  if ([self count])
  {
    firstObject = [self firstObject];
    [self removeObjectAtIndex:0];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)aaf_removeLastObject
{
  if ([self count])
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