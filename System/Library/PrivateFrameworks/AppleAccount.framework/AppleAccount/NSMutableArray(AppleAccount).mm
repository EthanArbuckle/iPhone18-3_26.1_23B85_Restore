@interface NSMutableArray(AppleAccount)
- (id)aa_removeFirstObject;
- (id)aa_removeLastObject;
@end

@implementation NSMutableArray(AppleAccount)

- (id)aa_removeFirstObject
{
  if ([self count])
  {
    v2 = [self objectAtIndex:0];
    [self removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)aa_removeLastObject
{
  lastObject = [self lastObject];
  [self removeLastObject];

  return lastObject;
}

@end