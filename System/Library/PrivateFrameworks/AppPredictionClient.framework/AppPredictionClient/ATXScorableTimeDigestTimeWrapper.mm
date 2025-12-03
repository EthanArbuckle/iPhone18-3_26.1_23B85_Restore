@interface ATXScorableTimeDigestTimeWrapper
- (ATXScorableTimeDigestTimeWrapper)initWithDigestTime:(int64_t)time;
- (NSString)legacyScorableTimeIdentifier;
- (NSString)scorableTimeIdentifier;
@end

@implementation ATXScorableTimeDigestTimeWrapper

- (ATXScorableTimeDigestTimeWrapper)initWithDigestTime:(int64_t)time
{
  v5.receiver = self;
  v5.super_class = ATXScorableTimeDigestTimeWrapper;
  result = [(ATXScorableTimeDigestTimeWrapper *)&v5 init];
  if (result)
  {
    result->_digestTime = time;
  }

  return result;
}

- (NSString)scorableTimeIdentifier
{
  digestTime = [(ATXScorableTimeDigestTimeWrapper *)self digestTime];

  return ATXUserNotificationDigestDeliveryTimeToString(digestTime);
}

- (NSString)legacyScorableTimeIdentifier
{
  v2 = [[ATXScorableTimeATXModeWrapper alloc] initWithATXMode:digestTimeToMode([(ATXScorableTimeDigestTimeWrapper *)self digestTime])];
  scorableTimeIdentifier = [(ATXScorableTimeATXModeWrapper *)v2 scorableTimeIdentifier];

  return scorableTimeIdentifier;
}

@end