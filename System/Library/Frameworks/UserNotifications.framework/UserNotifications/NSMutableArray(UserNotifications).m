@interface NSMutableArray(UserNotifications)
- (uint64_t)un_safeAddObject:()UserNotifications class:;
- (uint64_t)un_safeAddObject:()UserNotifications classes:;
@end

@implementation NSMutableArray(UserNotifications)

- (uint64_t)un_safeAddObject:()UserNotifications class:
{
  v5 = UNSafeCast(a4, a3);
  if (v5)
  {
    [a1 addObject:v5];
  }

  return MEMORY[0x1EEE66BB8]();
}

- (uint64_t)un_safeAddObject:()UserNotifications classes:
{
  v5 = UNSafeCastAny(a4, a3);
  if (v5)
  {
    [a1 addObject:v5];
  }

  return MEMORY[0x1EEE66BB8]();
}

@end