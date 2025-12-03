@interface NSIndexSet(AvatarUI)
- (uint64_t)closestIndexToIndex:()AvatarUI greaterIndexesFirst:;
@end

@implementation NSIndexSet(AvatarUI)

- (uint64_t)closestIndexToIndex:()AvatarUI greaterIndexesFirst:
{
  v7 = [self indexGreaterThanOrEqualToIndex:?];
  v8 = [self indexLessThanOrEqualToIndex:a3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (a4)
  {
    return v9;
  }

  else
  {
    return v10;
  }
}

@end