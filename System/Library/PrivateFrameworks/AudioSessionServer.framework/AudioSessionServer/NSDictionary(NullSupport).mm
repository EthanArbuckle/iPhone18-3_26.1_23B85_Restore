@interface NSDictionary(NullSupport)
- (void)setValueWithNilHandling:()NullSupport forKey:;
- (void)valueWithNilHandlingForKey:()NullSupport;
@end

@implementation NSDictionary(NullSupport)

- (void)setValueWithNilHandling:()NullSupport forKey:
{
  v8 = a3;
  v6 = a4;
  null = v8;
  if (!v8)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  [self setValue:null forKey:v6];
  if (!v8)
  {
  }
}

- (void)valueWithNilHandlingForKey:()NullSupport
{
  v1 = [self valueForKey:?];
  null = [MEMORY[0x277CBEB68] null];
  if (v1 == null)
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