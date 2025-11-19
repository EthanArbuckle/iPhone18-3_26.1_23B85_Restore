@interface NSString(UserNotificationsInternal)
- (id)un_stringWithMaxLength:()UserNotificationsInternal;
- (uint64_t)un_unsignedLongLongValue;
@end

@implementation NSString(UserNotificationsInternal)

- (uint64_t)un_unsignedLongLongValue
{
  v4 = 0;
  v1 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:a1];
  [v1 scanUnsignedLongLong:&v4];
  v2 = v4;

  return v2;
}

- (id)un_stringWithMaxLength:()UserNotificationsInternal
{
  if ([a1 length] <= a3)
  {
    v5 = a1;
  }

  else
  {
    v5 = [a1 substringToIndex:a3];
  }

  return v5;
}

@end