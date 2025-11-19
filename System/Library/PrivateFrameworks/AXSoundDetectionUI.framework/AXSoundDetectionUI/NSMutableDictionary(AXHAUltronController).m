@interface NSMutableDictionary(AXHAUltronController)
- (void)setSafeObject:()AXHAUltronController forKey:;
@end

@implementation NSMutableDictionary(AXHAUltronController)

- (void)setSafeObject:()AXHAUltronController forKey:
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v8;
    if (!v8)
    {
      v7 = [MEMORY[0x277CBEB68] null];
    }

    v8 = v7;
    [a1 setObject:v7 forKey:v6];
  }
}

@end