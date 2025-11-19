@interface NSArray(ENShuffle)
- (id)enRandomlyShuffled;
@end

@implementation NSArray(ENShuffle)

- (id)enRandomlyShuffled
{
  if ([a1 count] > 1)
  {
    v3 = [a1 mutableCopy];
    [v3 enRandomlyShuffle];
    v2 = [v3 copy];
  }

  else
  {
    v2 = [a1 copy];
  }

  return v2;
}

@end