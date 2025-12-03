@interface NSMapTable(HomeKit)
- (id)hm_allKeys;
@end

@implementation NSMapTable(HomeKit)

- (id)hm_allKeys
{
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  keyEnumerator = [self keyEnumerator];
  nextObject = [keyEnumerator nextObject];
  if (nextObject)
  {
    v5 = nextObject;
    do
    {
      [v2 addObject:v5];
      nextObject2 = [keyEnumerator nextObject];

      v5 = nextObject2;
    }

    while (nextObject2);
  }

  v7 = [v2 copy];

  return v7;
}

@end