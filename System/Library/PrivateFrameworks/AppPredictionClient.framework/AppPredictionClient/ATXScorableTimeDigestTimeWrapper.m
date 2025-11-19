@interface ATXScorableTimeDigestTimeWrapper
- (ATXScorableTimeDigestTimeWrapper)initWithDigestTime:(int64_t)a3;
- (NSString)legacyScorableTimeIdentifier;
- (NSString)scorableTimeIdentifier;
@end

@implementation ATXScorableTimeDigestTimeWrapper

- (ATXScorableTimeDigestTimeWrapper)initWithDigestTime:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = ATXScorableTimeDigestTimeWrapper;
  result = [(ATXScorableTimeDigestTimeWrapper *)&v5 init];
  if (result)
  {
    result->_digestTime = a3;
  }

  return result;
}

- (NSString)scorableTimeIdentifier
{
  v2 = [(ATXScorableTimeDigestTimeWrapper *)self digestTime];

  return ATXUserNotificationDigestDeliveryTimeToString(v2);
}

- (NSString)legacyScorableTimeIdentifier
{
  v2 = [[ATXScorableTimeATXModeWrapper alloc] initWithATXMode:digestTimeToMode([(ATXScorableTimeDigestTimeWrapper *)self digestTime])];
  v3 = [(ATXScorableTimeATXModeWrapper *)v2 scorableTimeIdentifier];

  return v3;
}

@end