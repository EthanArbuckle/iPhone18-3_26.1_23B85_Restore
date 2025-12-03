@interface _ATXActiveDigestsTuple
- (_ATXActiveDigestsTuple)initWithActiveUpcomingDigest:(id)digest activeScheduledDigest:(id)scheduledDigest justCompletedDigest:(id)completedDigest;
- (_ATXActiveDigestsTuple)initWithCoder:(id)coder;
- (_ATXActiveDigestsTuple)initWithPreviousTuple:(id)tuple nextDigestEvent:(id)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ATXActiveDigestsTuple

- (_ATXActiveDigestsTuple)initWithActiveUpcomingDigest:(id)digest activeScheduledDigest:(id)scheduledDigest justCompletedDigest:(id)completedDigest
{
  digestCopy = digest;
  scheduledDigestCopy = scheduledDigest;
  completedDigestCopy = completedDigest;
  v15.receiver = self;
  v15.super_class = _ATXActiveDigestsTuple;
  v12 = [(_ATXActiveDigestsTuple *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activeUpcomingDigest, digest);
    objc_storeStrong(&v13->_activeScheduledDigest, scheduledDigest);
    objc_storeStrong(&v13->_justCompletedDigest, completedDigest);
  }

  return v13;
}

- (_ATXActiveDigestsTuple)initWithPreviousTuple:(id)tuple nextDigestEvent:(id)event
{
  tupleCopy = tuple;
  eventCopy = event;
  v8 = MEMORY[0x277CBEAA8];
  [eventCopy timestamp];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  eventType = [eventCopy eventType];
  if (eventType > 1)
  {
    if (eventType == 3)
    {
      v44 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [_ATXActiveDigestsTuple initWithPreviousTuple:v44 nextDigestEvent:?];
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Received ATXUserNotificationDigestEventTypeTotal in digest Biome stream."];
      activeUpcomingDigest = [tupleCopy activeUpcomingDigest];
      activeScheduledDigest = [tupleCopy activeScheduledDigest];
      v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:activeUpcomingDigest activeScheduledDigest:activeScheduledDigest justCompletedDigest:0];
      goto LABEL_34;
    }

    if (eventType != 2)
    {
      goto LABEL_36;
    }

    activeUpcomingDigest2 = [tupleCopy activeUpcomingDigest];
    if (activeUpcomingDigest2)
    {
      v29 = activeUpcomingDigest2;
      activeUpcomingDigest3 = [tupleCopy activeUpcomingDigest];
      notificationDigest = [eventCopy notificationDigest];
      v32 = [activeUpcomingDigest3 doesDigestShareContentWithOtherDigest:notificationDigest];

      if (v32)
      {
        activeUpcomingDigest = [eventCopy notificationDigest];
        activeUpcomingDigest4 = [tupleCopy activeUpcomingDigest];
        digestTimeline = [activeUpcomingDigest4 digestTimeline];
        [activeUpcomingDigest setDigestTimeline:digestTimeline];

        activeScheduledDigest = [tupleCopy activeScheduledDigest];
        v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:activeUpcomingDigest activeScheduledDigest:activeScheduledDigest justCompletedDigest:0];
        goto LABEL_34;
      }
    }

    activeUpcomingDigest = [eventCopy notificationDigest];
    v45 = objc_opt_new();
    [activeUpcomingDigest setDigestTimeline:v45];

    digestTimeline2 = [activeUpcomingDigest digestTimeline];
    [digestTimeline2 setFirstUpcomingViewTimestamp:v9];

    activeUpcomingDigest5 = [tupleCopy activeUpcomingDigest];
    activeScheduledDigest = activeUpcomingDigest5;
    if (activeUpcomingDigest5)
    {
      digestTimeline3 = [activeUpcomingDigest5 digestTimeline];
      [digestTimeline3 setDigestRemovedTimestamp:v9];
    }

    activeScheduledDigest2 = [tupleCopy activeScheduledDigest];
    v50 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:activeUpcomingDigest activeScheduledDigest:activeScheduledDigest2 justCompletedDigest:activeScheduledDigest];
LABEL_30:
    self = v50;

LABEL_35:
    goto LABEL_36;
  }

  if (!eventType)
  {
    activeUpcomingDigest6 = [tupleCopy activeUpcomingDigest];
    if (activeUpcomingDigest6)
    {
      v36 = activeUpcomingDigest6;
      activeUpcomingDigest7 = [tupleCopy activeUpcomingDigest];
      notificationDigest2 = [eventCopy notificationDigest];
      v39 = [activeUpcomingDigest7 doesDigestShareContentWithOtherDigest:notificationDigest2];

      if (v39)
      {
        activeUpcomingDigest = [eventCopy notificationDigest];
        activeUpcomingDigest8 = [tupleCopy activeUpcomingDigest];
        digestTimeline4 = [activeUpcomingDigest8 digestTimeline];
        [activeUpcomingDigest setDigestTimeline:digestTimeline4];

        digestTimeline5 = [activeUpcomingDigest digestTimeline];
        [digestTimeline5 setFirstScheduledViewTimestamp:v9];

        activeScheduledDigest = [tupleCopy activeScheduledDigest];
        digestTimeline6 = [activeScheduledDigest digestTimeline];
        [digestTimeline6 setDigestRemovedTimestamp:v9];

        v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:0 activeScheduledDigest:activeUpcomingDigest justCompletedDigest:activeScheduledDigest];
        goto LABEL_34;
      }
    }

    activeScheduledDigest3 = [tupleCopy activeScheduledDigest];
    if (activeScheduledDigest3)
    {
      v52 = activeScheduledDigest3;
      activeScheduledDigest4 = [tupleCopy activeScheduledDigest];
      notificationDigest3 = [eventCopy notificationDigest];
      v55 = [activeScheduledDigest4 doesDigestShareContentWithOtherDigest:notificationDigest3];

      if (v55)
      {
        activeUpcomingDigest = [eventCopy notificationDigest];
        activeScheduledDigest5 = [tupleCopy activeScheduledDigest];
        digestTimeline7 = [activeScheduledDigest5 digestTimeline];
        [activeUpcomingDigest setDigestTimeline:digestTimeline7];

        activeScheduledDigest = [tupleCopy activeUpcomingDigest];
        v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:activeScheduledDigest activeScheduledDigest:activeUpcomingDigest justCompletedDigest:0];
        goto LABEL_34;
      }
    }

    activeUpcomingDigest = [eventCopy notificationDigest];
    v58 = objc_opt_new();
    [activeUpcomingDigest setDigestTimeline:v58];

    digestTimeline8 = [activeUpcomingDigest digestTimeline];
    [digestTimeline8 setFirstScheduledViewTimestamp:v9];

    activeScheduledDigest6 = [tupleCopy activeScheduledDigest];
    activeScheduledDigest = activeScheduledDigest6;
    if (activeScheduledDigest6)
    {
      digestTimeline9 = [activeScheduledDigest6 digestTimeline];
      [digestTimeline9 setDigestRemovedTimestamp:v9];
    }

    activeScheduledDigest2 = [tupleCopy activeUpcomingDigest];
    v50 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:activeScheduledDigest2 activeScheduledDigest:activeUpcomingDigest justCompletedDigest:activeScheduledDigest];
    goto LABEL_30;
  }

  if (eventType == 1)
  {
    activeUpcomingDigest9 = [tupleCopy activeUpcomingDigest];
    if (!activeUpcomingDigest9)
    {
      goto LABEL_6;
    }

    v12 = activeUpcomingDigest9;
    activeUpcomingDigest10 = [tupleCopy activeUpcomingDigest];
    digestTimeline10 = [activeUpcomingDigest10 digestTimeline];
    firstCollapsedViewTimestamp = [digestTimeline10 firstCollapsedViewTimestamp];

    if (!firstCollapsedViewTimestamp)
    {
      activeUpcomingDigest11 = [tupleCopy activeUpcomingDigest];
      notificationDigest4 = [eventCopy notificationDigest];
      v64 = [activeUpcomingDigest11 doesDigestShareContentWithOtherDigest:notificationDigest4];

      if (v64)
      {
        activeUpcomingDigest = [eventCopy notificationDigest];
        digestTimeline11 = [activeUpcomingDigest digestTimeline];
        [digestTimeline11 setFirstCollapsedViewTimestamp:v9];

        activeScheduledDigest = [tupleCopy activeScheduledDigest];
        v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:activeUpcomingDigest activeScheduledDigest:activeScheduledDigest justCompletedDigest:0];
        goto LABEL_34;
      }
    }

    else
    {
LABEL_6:
      activeScheduledDigest7 = [tupleCopy activeScheduledDigest];
      if (activeScheduledDigest7)
      {
        v17 = activeScheduledDigest7;
        activeScheduledDigest8 = [tupleCopy activeScheduledDigest];
        digestTimeline12 = [activeScheduledDigest8 digestTimeline];
        firstCollapsedViewTimestamp2 = [digestTimeline12 firstCollapsedViewTimestamp];

        if (!firstCollapsedViewTimestamp2)
        {
          activeScheduledDigest9 = [tupleCopy activeScheduledDigest];
          notificationDigest5 = [eventCopy notificationDigest];
          v23 = [activeScheduledDigest9 doesDigestShareContentWithOtherDigest:notificationDigest5];

          if (v23)
          {
            activeUpcomingDigest = [eventCopy notificationDigest];
            digestTimeline13 = [activeUpcomingDigest digestTimeline];
            [digestTimeline13 setFirstCollapsedViewTimestamp:v9];

            activeScheduledDigest = [tupleCopy activeUpcomingDigest];
            v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:activeScheduledDigest activeScheduledDigest:activeUpcomingDigest justCompletedDigest:0];
LABEL_34:
            self = v27;
            goto LABEL_35;
          }
        }
      }
    }

    activeUpcomingDigest = [tupleCopy activeUpcomingDigest];
    activeScheduledDigest = [tupleCopy activeScheduledDigest];
    v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:activeUpcomingDigest activeScheduledDigest:activeScheduledDigest justCompletedDigest:0];
    goto LABEL_34;
  }

LABEL_36:

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activeUpcomingDigest = [(_ATXActiveDigestsTuple *)self activeUpcomingDigest];
  [coderCopy encodeObject:activeUpcomingDigest forKey:@"codingKeyForActiveUpcomingDigest"];

  activeScheduledDigest = [(_ATXActiveDigestsTuple *)self activeScheduledDigest];
  [coderCopy encodeObject:activeScheduledDigest forKey:@"codingKeyForActiveScheduledDigest"];

  justCompletedDigest = [(_ATXActiveDigestsTuple *)self justCompletedDigest];
  [coderCopy encodeObject:justCompletedDigest forKey:@"codingKeyForJustCompletedDigest"];
}

- (_ATXActiveDigestsTuple)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277D42620];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_management();
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForActiveUpcomingDigest" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.ATXCompletedDigestBiomeStream" errorCode:-1 logHandle:v7];

  v9 = MEMORY[0x277D42620];
  v10 = objc_opt_class();
  v11 = __atxlog_handle_notification_management();
  v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"codingKeyForActiveScheduledDigest" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.ATXCompletedDigestBiomeStream" errorCode:-1 logHandle:v11];

  v13 = MEMORY[0x277D42620];
  v14 = objc_opt_class();
  v15 = __atxlog_handle_notification_management();
  v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"codingKeyForJustCompletedDigest" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.ATXCompletedDigestBiomeStream" errorCode:-1 logHandle:v15];

  v17 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:v8 activeScheduledDigest:v12 justCompletedDigest:v16];
  return v17;
}

@end