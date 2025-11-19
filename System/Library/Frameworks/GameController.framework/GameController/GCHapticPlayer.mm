@interface GCHapticPlayer
@end

@implementation GCHapticPlayer

uint64_t __35___GCHapticPlayer_scheduleCommand___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 time];
  v7 = v6;
  [v5 time];
  if (v7 >= v8)
  {
    [v4 time];
    v11 = v10;
    [v5 time];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end