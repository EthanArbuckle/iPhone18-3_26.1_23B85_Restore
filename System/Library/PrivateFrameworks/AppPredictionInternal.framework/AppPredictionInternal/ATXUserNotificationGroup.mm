@interface ATXUserNotificationGroup
- (ATXUserNotificationGroup)initWithNotifications:(id)notifications;
- (BOOL)runCachedCheckOnNotificationsWithIvar:(int64_t *)ivar block:(id)block;
- (double)latestNotificationTimestamp;
- (int64_t)compare:(id)compare;
@end

@implementation ATXUserNotificationGroup

- (ATXUserNotificationGroup)initWithNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v9.receiver = self;
  v9.super_class = ATXUserNotificationGroup;
  v5 = [(ATXUserNotificationGroup *)&v9 init];
  if (v5)
  {
    v6 = [notificationsCopy sortedArrayUsingComparator:&__block_literal_global_194];
    notifications = v5->_notifications;
    v5->_notifications = v6;
  }

  return v5;
}

uint64_t __50__ATXUserNotificationGroup_initWithNotifications___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  [a3 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (BOOL)runCachedCheckOnNotificationsWithIvar:(int64_t *)ivar block:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (*ivar)
  {
    LOBYTE(v7) = *ivar == 2;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_notifications;
    v7 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v9 = *v15;
      v10 = 2;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v8);
          }

          if (blockCopy[2](blockCopy, *(*(&v14 + 1) + 8 * i)))
          {
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }

        v7 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_13:

    *ivar = v10;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (double)latestNotificationTimestamp
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_notifications;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * i) timestamp];
        if (v8 >= v6)
        {
          v6 = v8;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  hasCriticalNotifications = [(ATXUserNotificationGroup *)self hasCriticalNotifications];
  if (hasCriticalNotifications != [compareCopy hasCriticalNotifications])
  {
    hasCriticalNotifications2 = [(ATXUserNotificationGroup *)self hasCriticalNotifications];
    goto LABEL_9;
  }

  hasTimeSensitiveNotifications = [(ATXUserNotificationGroup *)self hasTimeSensitiveNotifications];
  if (hasTimeSensitiveNotifications != [compareCopy hasTimeSensitiveNotifications])
  {
    hasCriticalNotifications2 = [(ATXUserNotificationGroup *)self hasTimeSensitiveNotifications];
    goto LABEL_9;
  }

  hasCommunicationsNotifications = [(ATXUserNotificationGroup *)self hasCommunicationsNotifications];
  if (hasCommunicationsNotifications != [compareCopy hasCommunicationsNotifications])
  {
    hasCriticalNotifications2 = [(ATXUserNotificationGroup *)self hasCommunicationsNotifications];
    goto LABEL_9;
  }

  qualifiesForHighEngagement = [(ATXUserNotificationGroup *)self qualifiesForHighEngagement];
  if (qualifiesForHighEngagement != [compareCopy qualifiesForHighEngagement])
  {
    hasCriticalNotifications2 = [(ATXUserNotificationGroup *)self qualifiesForHighEngagement];
LABEL_9:
    if (hasCriticalNotifications2)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }

    goto LABEL_12;
  }

  [(ATXUserNotificationGroup *)self latestNotificationTimestamp];
  v13 = v12;
  [compareCopy latestNotificationTimestamp];
  if (v13 == v14)
  {
    v10 = 0;
  }

  else
  {
    [(ATXUserNotificationGroup *)self latestNotificationTimestamp];
    v16 = v15;
    [compareCopy latestNotificationTimestamp];
    if (v16 > v17)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }
  }

LABEL_12:

  return v10;
}

@end