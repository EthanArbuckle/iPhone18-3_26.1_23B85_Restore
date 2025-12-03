@interface NSMutableDictionary(AXExtensions)
- (void)axSafelyAddEntriesFromDictionary:()AXExtensions;
@end

@implementation NSMutableDictionary(AXExtensions)

- (void)axSafelyAddEntriesFromDictionary:()AXExtensions
{
  if (a3)
  {
    return [self addEntriesFromDictionary:?];
  }

  return self;
}

@end