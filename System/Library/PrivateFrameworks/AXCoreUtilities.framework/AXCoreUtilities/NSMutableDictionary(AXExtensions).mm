@interface NSMutableDictionary(AXExtensions)
- (void)axSafelyAddEntriesFromDictionary:()AXExtensions;
@end

@implementation NSMutableDictionary(AXExtensions)

- (void)axSafelyAddEntriesFromDictionary:()AXExtensions
{
  if (a3)
  {
    return [a1 addEntriesFromDictionary:?];
  }

  return a1;
}

@end