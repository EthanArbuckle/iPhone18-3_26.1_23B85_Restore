@interface NSMutableDictionary(UserNotifications)
- (uint64_t)un_safeSetObject:()UserNotifications forKey:;
@end

@implementation NSMutableDictionary(UserNotifications)

- (uint64_t)un_safeSetObject:()UserNotifications forKey:
{
  if (a3)
  {
    return [self setObject:? forKey:?];
  }

  else
  {
    return [self removeObjectForKey:a4];
  }
}

@end