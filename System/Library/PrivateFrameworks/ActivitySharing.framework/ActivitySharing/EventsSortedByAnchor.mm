@interface EventsSortedByAnchor
@end

@implementation EventsSortedByAnchor

uint64_t ___EventsSortedByAnchor_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 anchor];
  if (v6 >= [v5 anchor])
  {
    v8 = [v4 anchor];
    if (v8 <= [v5 anchor])
    {
      v9 = [v4 timestamp];
      v10 = [v5 timestamp];
      v7 = [v9 compare:v10];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end