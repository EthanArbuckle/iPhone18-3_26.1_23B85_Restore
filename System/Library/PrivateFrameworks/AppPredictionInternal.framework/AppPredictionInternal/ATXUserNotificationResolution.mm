@interface ATXUserNotificationResolution
- (ATXUserNotificationResolution)initWithNotificationUUID:(id)d numExpansions:(unint64_t)expansions resolutionType:(int64_t)type resolutionTimestamp:(id)timestamp;
@end

@implementation ATXUserNotificationResolution

- (ATXUserNotificationResolution)initWithNotificationUUID:(id)d numExpansions:(unint64_t)expansions resolutionType:(int64_t)type resolutionTimestamp:(id)timestamp
{
  dCopy = d;
  timestampCopy = timestamp;
  v18.receiver = self;
  v18.super_class = ATXUserNotificationResolution;
  v13 = [(ATXUserNotificationResolution *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_notificationUUID, d);
    v14->_numExpansions = expansions;
    v14->_resolutionType = type;
    if (type == 3)
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    else
    {
      date = timestampCopy;
    }

    resolutionTimestamp = v14->_resolutionTimestamp;
    v14->_resolutionTimestamp = date;
  }

  return v14;
}

@end