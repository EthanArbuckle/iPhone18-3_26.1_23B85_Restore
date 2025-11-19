@interface ATXCoreAnalyticsFieldUtilities
+ (id)_getSalt;
+ (id)hashBoundString:(id)a3 hashSpaceSize:(unint64_t)a4;
@end

@implementation ATXCoreAnalyticsFieldUtilities

+ (id)_getSalt
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v4 = [v3 stringForKey:@"coreAnalyticsFieldHashSaltKey"];
  if (!v4)
  {
    v5 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v5 UUIDString];

    [v3 setObject:v4 forKey:@"coreAnalyticsFieldHashSaltKey"];
  }

  return v4;
}

+ (id)hashBoundString:(id)a3 hashSpaceSize:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 _getSalt];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v7, v6];

  v9 = [v8 hash];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v9 % a4];

  return v10;
}

@end