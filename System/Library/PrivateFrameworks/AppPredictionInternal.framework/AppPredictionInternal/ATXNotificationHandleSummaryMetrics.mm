@interface ATXNotificationHandleSummaryMetrics
- (ATXNotificationHandleSummaryMetrics)initWithDimensions:(id)dimensions;
- (double)acceptedNotificationAverageHandleTime;
- (double)acceptedNotificationsPercentage;
- (double)rejectedNotificationAverageHandleTime;
- (double)rejectedNotificationsPercentage;
- (double)unhandledNotificationsPercentage;
- (id)coreAnalyticsDictionary;
- (id)popReceiveEventForNotification:(id)notification;
- (void)handleNotificationEvent:(id)event;
- (void)handleTelemetryResult:(id)result;
@end

@implementation ATXNotificationHandleSummaryMetrics

- (ATXNotificationHandleSummaryMetrics)initWithDimensions:(id)dimensions
{
  v8.receiver = self;
  v8.super_class = ATXNotificationHandleSummaryMetrics;
  v3 = [(_ATXCoreAnalyticsMetric *)&v8 initWithDimensions:dimensions];
  v4 = v3;
  if (v3)
  {
    v3->_rejectedNotificationTotalHandleTime = 0.0;
    v3->_acceptedNotificationTotalHandleTime = 0.0;
    v3->_rejectedNotificationCount = 0;
    v3->_acceptedNotificationCount = 0;
    v3->_notificationsReceivedCount = 0;
    v5 = objc_opt_new();
    unhandledReceivedNotifications = v4->_unhandledReceivedNotifications;
    v4->_unhandledReceivedNotifications = v5;
  }

  return v4;
}

- (double)rejectedNotificationAverageHandleTime
{
  rejectedNotificationCount = self->_rejectedNotificationCount;
  if (rejectedNotificationCount)
  {
    return self->_rejectedNotificationTotalHandleTime / rejectedNotificationCount;
  }

  else
  {
    return 0.0;
  }
}

- (double)acceptedNotificationAverageHandleTime
{
  acceptedNotificationCount = self->_acceptedNotificationCount;
  if (acceptedNotificationCount)
  {
    return self->_acceptedNotificationTotalHandleTime / acceptedNotificationCount;
  }

  else
  {
    return 0.0;
  }
}

- (double)rejectedNotificationsPercentage
{
  notificationsReceivedCount = self->_notificationsReceivedCount;
  if (notificationsReceivedCount)
  {
    return self->_rejectedNotificationCount / notificationsReceivedCount;
  }

  else
  {
    return 0.0;
  }
}

- (double)acceptedNotificationsPercentage
{
  notificationsReceivedCount = self->_notificationsReceivedCount;
  if (notificationsReceivedCount)
  {
    return self->_acceptedNotificationCount / notificationsReceivedCount;
  }

  else
  {
    return 0.0;
  }
}

- (double)unhandledNotificationsPercentage
{
  if (self->_notificationsReceivedCount)
  {
    return [(NSMutableDictionary *)self->_unhandledReceivedNotifications count]/ self->_notificationsReceivedCount;
  }

  else
  {
    return 0.0;
  }
}

- (id)coreAnalyticsDictionary
{
  v20[8] = *MEMORY[0x277D85DE8];
  v19[0] = @"rejectedNotificationAverageHandleTime";
  v3 = MEMORY[0x277CCABB0];
  [(ATXNotificationHandleSummaryMetrics *)self rejectedNotificationAverageHandleTime];
  v4 = [v3 numberWithDouble:?];
  v20[0] = v4;
  v19[1] = @"acceptedNotificationAverageHandleTime";
  v5 = MEMORY[0x277CCABB0];
  [(ATXNotificationHandleSummaryMetrics *)self acceptedNotificationAverageHandleTime];
  v6 = [v5 numberWithDouble:?];
  v20[1] = v6;
  v19[2] = @"rejectedNotificationCount";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationHandleSummaryMetrics rejectedNotificationCount](self, "rejectedNotificationCount")}];
  v20[2] = v7;
  v19[3] = @"acceptedNotificationCount";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationHandleSummaryMetrics acceptedNotificationCount](self, "acceptedNotificationCount")}];
  v20[3] = v8;
  v19[4] = @"notificationsReceivedCount";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ATXNotificationHandleSummaryMetrics notificationsReceivedCount](self, "notificationsReceivedCount")}];
  v20[4] = v9;
  v19[5] = @"rejectedNotificationsPercentage";
  v10 = MEMORY[0x277CCABB0];
  [(ATXNotificationHandleSummaryMetrics *)self rejectedNotificationsPercentage];
  v11 = [v10 numberWithDouble:?];
  v20[5] = v11;
  v19[6] = @"acceptedNotificationsPercentage";
  v12 = MEMORY[0x277CCABB0];
  [(ATXNotificationHandleSummaryMetrics *)self acceptedNotificationsPercentage];
  v13 = [v12 numberWithDouble:?];
  v20[6] = v13;
  v19[7] = @"unhandledNotificationsPercentage";
  v14 = MEMORY[0x277CCABB0];
  [(ATXNotificationHandleSummaryMetrics *)self unhandledNotificationsPercentage];
  v15 = [v14 numberWithDouble:?];
  v20[7] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:8];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)handleTelemetryResult:(id)result
{
  resultCopy = result;
  ++self->_notificationsReceivedCount;
  v14 = resultCopy;
  resolution = [resultCopy resolution];
  resolutionType = [resolution resolutionType];

  if (resolutionType)
  {
    resolution2 = [v14 resolution];
    resolutionType2 = [resolution2 resolutionType];

    if (resolutionType2 != 1)
    {
      goto LABEL_6;
    }

    ++self->_rejectedNotificationCount;
    resolution3 = [v14 resolution];
    resolutionTimestamp = [resolution3 resolutionTimestamp];
    receiveTimestamp = [v14 receiveTimestamp];
    [resolutionTimestamp timeIntervalSinceDate:receiveTimestamp];
    self->_rejectedNotificationCount = (v12 + self->_rejectedNotificationCount);
  }

  else
  {
    ++self->_acceptedNotificationCount;
    resolution3 = [v14 resolution];
    resolutionTimestamp = [resolution3 resolutionTimestamp];
    receiveTimestamp = [v14 receiveTimestamp];
    [resolutionTimestamp timeIntervalSinceDate:receiveTimestamp];
    self->_acceptedNotificationTotalHandleTime = v13 + self->_acceptedNotificationTotalHandleTime;
  }

LABEL_6:
}

- (void)handleNotificationEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isReceiveEvent])
  {
    unhandledReceivedNotifications = self->_unhandledReceivedNotifications;
    notificationId = [eventCopy notificationId];
    [(NSMutableDictionary *)unhandledReceivedNotifications setObject:eventCopy forKeyedSubscript:notificationId];

    ++self->_notificationsReceivedCount;
    goto LABEL_10;
  }

  v6 = [(ATXNotificationHandleSummaryMetrics *)self popReceiveEventForNotification:eventCopy];
  if (v6)
  {
    eventTime = [eventCopy eventTime];
    eventTime2 = [v6 eventTime];
    [eventTime timeIntervalSinceDate:eventTime2];
    v10 = v9;

    if ([eventCopy isAcceptEvent])
    {
      v11 = &OBJC_IVAR___ATXNotificationHandleSummaryMetrics__acceptedNotificationCount;
      v12 = &OBJC_IVAR___ATXNotificationHandleSummaryMetrics__acceptedNotificationTotalHandleTime;
LABEL_8:
      *(&self->super.super.isa + *v12) = v10 + *(&self->super.super.isa + *v12);
      ++*(&self->super.super.isa + *v11);
      goto LABEL_9;
    }

    if ([eventCopy isRejectEvent])
    {
      v11 = &OBJC_IVAR___ATXNotificationHandleSummaryMetrics__rejectedNotificationCount;
      v12 = &OBJC_IVAR___ATXNotificationHandleSummaryMetrics__rejectedNotificationTotalHandleTime;
      goto LABEL_8;
    }
  }

LABEL_9:

LABEL_10:
}

- (id)popReceiveEventForNotification:(id)notification
{
  unhandledReceivedNotifications = self->_unhandledReceivedNotifications;
  notificationCopy = notification;
  notificationId = [notificationCopy notificationId];
  v7 = [(NSMutableDictionary *)unhandledReceivedNotifications objectForKeyedSubscript:notificationId];

  v8 = self->_unhandledReceivedNotifications;
  notificationId2 = [notificationCopy notificationId];

  [(NSMutableDictionary *)v8 removeObjectForKey:notificationId2];

  return v7;
}

@end