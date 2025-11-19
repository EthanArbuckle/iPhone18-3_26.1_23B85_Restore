@interface NSDictionary(NullSupport)
- (void)setValueWithNilHandling:()NullSupport forKey:;
- (void)valueWithNilHandlingForKey:()NullSupport;
@end

@implementation NSDictionary(NullSupport)

- (void)setValueWithNilHandling:()NullSupport forKey:
{
  v8 = a3;
  v6 = a4;
  v7 = v8;
  if (!v8)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  [a1 setValue:v7 forKey:v6];
  if (!v8)
  {
  }
}

- (void)valueWithNilHandlingForKey:()NullSupport
{
  v1 = [a1 valueForKey:?];
  v2 = [MEMORY[0x277CBEB68] null];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3;

  return v3;
}

@end