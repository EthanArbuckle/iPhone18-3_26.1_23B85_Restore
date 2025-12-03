@interface NSString(UserNotificationsInternal)
- (id)un_stringWithMaxLength:()UserNotificationsInternal;
- (uint64_t)un_unsignedLongLongValue;
@end

@implementation NSString(UserNotificationsInternal)

- (uint64_t)un_unsignedLongLongValue
{
  v4 = 0;
  v1 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:self];
  [v1 scanUnsignedLongLong:&v4];
  v2 = v4;

  return v2;
}

- (id)un_stringWithMaxLength:()UserNotificationsInternal
{
  if ([self length] <= a3)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self substringToIndex:a3];
  }

  return selfCopy;
}

@end