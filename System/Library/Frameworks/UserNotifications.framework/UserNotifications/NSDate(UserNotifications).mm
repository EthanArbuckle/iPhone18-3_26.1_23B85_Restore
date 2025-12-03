@interface NSDate(UserNotifications)
- (id)un_logString;
@end

@implementation NSDate(UserNotifications)

- (id)un_logString
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [v2 setTimeZone:localTimeZone];

  v5 = [v2 stringFromDate:self];

  return v5;
}

@end