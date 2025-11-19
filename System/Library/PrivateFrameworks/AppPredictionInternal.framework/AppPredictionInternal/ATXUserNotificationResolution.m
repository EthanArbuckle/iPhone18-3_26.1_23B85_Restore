@interface ATXUserNotificationResolution
- (ATXUserNotificationResolution)initWithNotificationUUID:(id)a3 numExpansions:(unint64_t)a4 resolutionType:(int64_t)a5 resolutionTimestamp:(id)a6;
@end

@implementation ATXUserNotificationResolution

- (ATXUserNotificationResolution)initWithNotificationUUID:(id)a3 numExpansions:(unint64_t)a4 resolutionType:(int64_t)a5 resolutionTimestamp:(id)a6
{
  v11 = a3;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = ATXUserNotificationResolution;
  v13 = [(ATXUserNotificationResolution *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_notificationUUID, a3);
    v14->_numExpansions = a4;
    v14->_resolutionType = a5;
    if (a5 == 3)
    {
      v15 = [MEMORY[0x277CBEAA8] date];
    }

    else
    {
      v15 = v12;
    }

    resolutionTimestamp = v14->_resolutionTimestamp;
    v14->_resolutionTimestamp = v15;
  }

  return v14;
}

@end