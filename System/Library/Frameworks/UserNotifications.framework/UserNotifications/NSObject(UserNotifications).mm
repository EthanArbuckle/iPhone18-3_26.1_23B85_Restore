@interface NSObject(UserNotifications)
- (uint64_t)un_safeBoolValue;
@end

@implementation NSObject(UserNotifications)

- (uint64_t)un_safeBoolValue
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [self BOOLValue];
}

@end