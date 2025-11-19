@interface NSMutableArray(AppleAccount)
- (id)aa_removeFirstObject;
- (id)aa_removeLastObject;
@end

@implementation NSMutableArray(AppleAccount)

- (id)aa_removeFirstObject
{
  if ([a1 count])
  {
    v2 = [a1 objectAtIndex:0];
    [a1 removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)aa_removeLastObject
{
  v2 = [a1 lastObject];
  [a1 removeLastObject];

  return v2;
}

@end