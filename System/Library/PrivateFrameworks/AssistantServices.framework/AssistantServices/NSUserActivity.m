@interface NSUserActivity
- (BOOL)hasLocationData;
- (BOOL)hasPhoneNumber;
@end

@implementation NSUserActivity

- (BOOL)hasPhoneNumber
{
  v2 = [(NSUserActivity *)self contentAttributeSet];
  v3 = [v2 phoneNumbers];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)hasLocationData
{
  v2 = [(NSUserActivity *)self contentAttributeSet];
  v3 = [v2 hasLocationData];

  return v3;
}

@end