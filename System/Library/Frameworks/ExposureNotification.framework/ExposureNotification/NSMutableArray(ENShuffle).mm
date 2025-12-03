@interface NSMutableArray(ENShuffle)
- (unint64_t)enRandomlyShuffle;
@end

@implementation NSMutableArray(ENShuffle)

- (unint64_t)enRandomlyShuffle
{
  result = [self count];
  if (result >= 2)
  {
    v3 = result;
    v4 = 0;
    do
    {
      result = [self exchangeObjectAtIndex:v4 withObjectAtIndex:v4 + arc4random_uniform(v3)];
      ++v4;
      --v3;
    }

    while (v3 != 1);
  }

  return result;
}

@end