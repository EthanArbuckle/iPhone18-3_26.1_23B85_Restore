@interface ATXCachedNotificationLoggingSources
- (ATXCachedNotificationLoggingSources)init;
@end

@implementation ATXCachedNotificationLoggingSources

- (ATXCachedNotificationLoggingSources)init
{
  v15.receiver = self;
  v15.super_class = ATXCachedNotificationLoggingSources;
  v2 = [(ATXCachedNotificationLoggingSources *)&v15 init];
  if (v2)
  {
    v3 = [ATXStableContactRepresentationDatastore alloc];
    v4 = objc_opt_new();
    v5 = [(ATXStableContactRepresentationDatastore *)v3 initWithContactStore:v4];
    contactRepresentationDatastore = v2->_contactRepresentationDatastore;
    v2->_contactRepresentationDatastore = v5;

    v7 = objc_opt_new();
    userNotificationBiomeStream = v2->_userNotificationBiomeStream;
    v2->_userNotificationBiomeStream = v7;

    v9 = BiomeLibrary();
    notification = [v9 Notification];
    usage = [notification Usage];
    source = [usage source];
    notificationUsageSource = v2->_notificationUsageSource;
    v2->_notificationUsageSource = source;
  }

  return v2;
}

@end