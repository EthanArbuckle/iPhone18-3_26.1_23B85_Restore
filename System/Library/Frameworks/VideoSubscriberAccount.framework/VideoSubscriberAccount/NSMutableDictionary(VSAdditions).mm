@interface NSMutableDictionary(VSAdditions)
- (uint64_t)vs_setObjectUnlessNil:()VSAdditions forKey:;
@end

@implementation NSMutableDictionary(VSAdditions)

- (uint64_t)vs_setObjectUnlessNil:()VSAdditions forKey:
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    v6 = [self setObject:v6 forKey:a4];
    v7 = v9;
  }

  return MEMORY[0x2821F96F8](v6, v7);
}

@end