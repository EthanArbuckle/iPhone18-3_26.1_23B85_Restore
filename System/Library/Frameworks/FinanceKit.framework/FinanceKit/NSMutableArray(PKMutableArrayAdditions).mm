@interface NSMutableArray(PKMutableArrayAdditions)
- (void)safelyAddObject:()PKMutableArrayAdditions;
@end

@implementation NSMutableArray(PKMutableArrayAdditions)

- (void)safelyAddObject:()PKMutableArrayAdditions
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end