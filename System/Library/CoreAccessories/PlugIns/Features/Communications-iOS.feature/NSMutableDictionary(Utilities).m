@interface NSMutableDictionary(Utilities)
+ (id)dictionaryOfChangesBetween:()Utilities and:;
- (uint64_t)setObject:()Utilities forKey:objectIfNil:;
- (void)copyToKey:()Utilities fromKey:inDictionary:objectIfNil:;
@end

@implementation NSMutableDictionary(Utilities)

- (uint64_t)setObject:()Utilities forKey:objectIfNil:
{
  if (!a3)
  {
    a3 = a5;
  }

  return [a1 setObject:a3 forKey:?];
}

- (void)copyToKey:()Utilities fromKey:inDictionary:objectIfNil:
{
  v10 = a6;
  v11 = a3;
  v12 = [a5 objectForKey:a4];
  v14 = v12;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  [a1 setObject:v13 forKey:v11];
}

+ (id)dictionaryOfChangesBetween:()Utilities and:
{
  v0 = MEMORY[0x277CBEB38];
  v1 = [MEMORY[0x277CBEAC0] dictionaryOfChangesBetween:? and:?];
  v2 = [v0 dictionaryWithDictionary:v1];

  return v2;
}

@end