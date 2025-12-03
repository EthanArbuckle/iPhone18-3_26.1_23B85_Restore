@interface NSMutableSet(AXExtensions)
- (void)axSafelyAddObject:()AXExtensions;
- (void)axSafelyAddObjectsFromArray:()AXExtensions;
@end

@implementation NSMutableSet(AXExtensions)

- (void)axSafelyAddObjectsFromArray:()AXExtensions
{
  if (a3)
  {
    return [self addObjectsFromArray:?];
  }

  return self;
}

- (void)axSafelyAddObject:()AXExtensions
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end