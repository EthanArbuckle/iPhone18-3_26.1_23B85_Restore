@interface ATXCoreAnalyticsFieldUtilities
+ (id)_getSalt;
+ (id)hashBoundString:(id)string hashSpaceSize:(unint64_t)size;
@end

@implementation ATXCoreAnalyticsFieldUtilities

+ (id)_getSalt
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CEBD00]];
  uUIDString = [v3 stringForKey:@"coreAnalyticsFieldHashSaltKey"];
  if (!uUIDString)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    [v3 setObject:uUIDString forKey:@"coreAnalyticsFieldHashSaltKey"];
  }

  return uUIDString;
}

+ (id)hashBoundString:(id)string hashSpaceSize:(unint64_t)size
{
  stringCopy = string;
  _getSalt = [self _getSalt];
  stringCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", _getSalt, stringCopy];

  v9 = [stringCopy hash];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v9 % size];

  return v10;
}

@end