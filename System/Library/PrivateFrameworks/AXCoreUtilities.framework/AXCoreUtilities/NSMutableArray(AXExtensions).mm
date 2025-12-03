@interface NSMutableArray(AXExtensions)
- (void)axSafelyAddObject:()AXExtensions;
- (void)axSafelyAddObjectsFromArray:()AXExtensions;
@end

@implementation NSMutableArray(AXExtensions)

- (void)axSafelyAddObject:()AXExtensions
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

- (void)axSafelyAddObjectsFromArray:()AXExtensions
{
  v4 = a3;
  v7 = 0;
  v5 = __UIAccessibilitySafeClass(@"NSArray", v4, 1, &v7);
  if (v7 == 1)
  {
    abort();
  }

  v6 = v5;

  if (v6)
  {
    [self addObjectsFromArray:v4];
  }
}

@end