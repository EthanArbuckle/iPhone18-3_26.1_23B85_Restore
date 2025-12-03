@interface NSUserActivity
- (BOOL)hasLocationData;
- (BOOL)hasPhoneNumber;
@end

@implementation NSUserActivity

- (BOOL)hasPhoneNumber
{
  contentAttributeSet = [(NSUserActivity *)self contentAttributeSet];
  phoneNumbers = [contentAttributeSet phoneNumbers];
  v4 = [phoneNumbers count] != 0;

  return v4;
}

- (BOOL)hasLocationData
{
  contentAttributeSet = [(NSUserActivity *)self contentAttributeSet];
  hasLocationData = [contentAttributeSet hasLocationData];

  return hasLocationData;
}

@end