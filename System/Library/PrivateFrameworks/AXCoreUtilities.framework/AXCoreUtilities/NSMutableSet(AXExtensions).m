@interface NSMutableSet(AXExtensions)
- (void)axSafelyAddObject:()AXExtensions;
- (void)axSafelyAddObjectsFromArray:()AXExtensions;
@end

@implementation NSMutableSet(AXExtensions)

- (void)axSafelyAddObjectsFromArray:()AXExtensions
{
  if (a3)
  {
    return [a1 addObjectsFromArray:?];
  }

  return a1;
}

- (void)axSafelyAddObject:()AXExtensions
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

@end