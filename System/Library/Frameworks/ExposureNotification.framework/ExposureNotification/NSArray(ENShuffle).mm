@interface NSArray(ENShuffle)
- (id)enRandomlyShuffled;
@end

@implementation NSArray(ENShuffle)

- (id)enRandomlyShuffled
{
  if ([self count] > 1)
  {
    v3 = [self mutableCopy];
    [v3 enRandomlyShuffle];
    v2 = [v3 copy];
  }

  else
  {
    v2 = [self copy];
  }

  return v2;
}

@end