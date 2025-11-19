@interface NSMapTable(HomeKit)
- (id)hm_allKeys;
@end

@implementation NSMapTable(HomeKit)

- (id)hm_allKeys
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v3 = [a1 keyEnumerator];
  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      [v2 addObject:v5];
      v6 = [v3 nextObject];

      v5 = v6;
    }

    while (v6);
  }

  v7 = [v2 copy];

  return v7;
}

@end