@interface _ATXActiveMissedNotificationRankingTuple
- (_ATXActiveMissedNotificationRankingTuple)initWithActiveUpcomingRanking:(id)ranking activeDeliveredRanking:(id)deliveredRanking justCompletedRanking:(id)completedRanking;
- (_ATXActiveMissedNotificationRankingTuple)initWithCoder:(id)coder;
- (_ATXActiveMissedNotificationRankingTuple)initWithPreviousTuple:(id)tuple nextRankingEvent:(id)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ATXActiveMissedNotificationRankingTuple

- (_ATXActiveMissedNotificationRankingTuple)initWithActiveUpcomingRanking:(id)ranking activeDeliveredRanking:(id)deliveredRanking justCompletedRanking:(id)completedRanking
{
  rankingCopy = ranking;
  deliveredRankingCopy = deliveredRanking;
  completedRankingCopy = completedRanking;
  v15.receiver = self;
  v15.super_class = _ATXActiveMissedNotificationRankingTuple;
  v12 = [(_ATXActiveMissedNotificationRankingTuple *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activeUpcomingRanking, ranking);
    objc_storeStrong(&v13->_activeDeliveredRanking, deliveredRanking);
    objc_storeStrong(&v13->_justCompletedRanking, completedRanking);
  }

  return v13;
}

- (_ATXActiveMissedNotificationRankingTuple)initWithPreviousTuple:(id)tuple nextRankingEvent:(id)event
{
  v78 = *MEMORY[0x277D85DE8];
  tupleCopy = tuple;
  eventCopy = event;
  v8 = MEMORY[0x277CBEAA8];
  [eventCopy timestamp];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  eventType = [eventCopy eventType];
  if (eventType <= 3)
  {
    if (eventType < 2)
    {
      v20 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        eventType2 = [eventCopy eventType];
        missedNotificationRanking = [eventCopy missedNotificationRanking];
        uuid = [missedNotificationRanking uuid];
        uUIDString = [uuid UUIDString];
        v72 = 138412802;
        v73 = v22;
        v74 = 2048;
        v75 = eventType2;
        v76 = 2112;
        v77 = uUIDString;
        _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_INFO, "%@ - Received unsupported deprecated event type %ld on ranking with UUID %@", &v72, 0x20u);
      }

      v27 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:0 activeDeliveredRanking:0 justCompletedRanking:0];
      goto LABEL_28;
    }

    if (eventType != 2)
    {
      if (eventType != 3)
      {
        goto LABEL_25;
      }

LABEL_15:
      activeUpcomingRanking = [tupleCopy activeUpcomingRanking];
      if (activeUpcomingRanking)
      {
        v29 = activeUpcomingRanking;
        activeUpcomingRanking2 = [tupleCopy activeUpcomingRanking];
        missedNotificationRanking2 = [eventCopy missedNotificationRanking];
        v32 = [activeUpcomingRanking2 doesRankingShareContentWithOtherRanking:missedNotificationRanking2];

        if (v32)
        {
          missedNotificationRanking3 = [eventCopy missedNotificationRanking];
          activeUpcomingRanking3 = [tupleCopy activeUpcomingRanking];
          digestTimeline = [activeUpcomingRanking3 digestTimeline];
          [missedNotificationRanking3 setDigestTimeline:digestTimeline];

          digestTimeline2 = [missedNotificationRanking3 digestTimeline];
          [digestTimeline2 setFirstScheduledViewTimestamp:v9];

          activeDeliveredRanking = [tupleCopy activeDeliveredRanking];
          activeUpcomingRanking4 = activeDeliveredRanking;
          if (activeDeliveredRanking)
          {
            digestTimeline3 = [activeDeliveredRanking digestTimeline];
            [digestTimeline3 setDigestRemovedTimestamp:v9];
          }

          v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:0 activeDeliveredRanking:missedNotificationRanking3 justCompletedRanking:activeUpcomingRanking4];
          goto LABEL_41;
        }
      }

      activeDeliveredRanking2 = [tupleCopy activeDeliveredRanking];
      if (activeDeliveredRanking2)
      {
        v39 = activeDeliveredRanking2;
        activeDeliveredRanking3 = [tupleCopy activeDeliveredRanking];
        missedNotificationRanking4 = [eventCopy missedNotificationRanking];
        v42 = [activeDeliveredRanking3 doesRankingShareContentWithOtherRanking:missedNotificationRanking4];

        if (v42)
        {
          missedNotificationRanking3 = [eventCopy missedNotificationRanking];
          activeDeliveredRanking4 = [tupleCopy activeDeliveredRanking];
          digestTimeline4 = [activeDeliveredRanking4 digestTimeline];
          [missedNotificationRanking3 setDigestTimeline:digestTimeline4];

          activeUpcomingRanking4 = [tupleCopy activeUpcomingRanking];
          v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:activeUpcomingRanking4 activeDeliveredRanking:missedNotificationRanking3 justCompletedRanking:0];
          goto LABEL_41;
        }
      }

      missedNotificationRanking3 = [eventCopy missedNotificationRanking];
      v51 = objc_opt_new();
      [missedNotificationRanking3 setDigestTimeline:v51];

      digestTimeline5 = [missedNotificationRanking3 digestTimeline];
      [digestTimeline5 setFirstScheduledViewTimestamp:v9];

      activeDeliveredRanking5 = [tupleCopy activeDeliveredRanking];
      activeUpcomingRanking4 = activeDeliveredRanking5;
      if (activeDeliveredRanking5)
      {
        digestTimeline6 = [activeDeliveredRanking5 digestTimeline];
        [digestTimeline6 setDigestRemovedTimestamp:v9];
      }

      activeUpcomingRanking5 = [tupleCopy activeUpcomingRanking];
      v56 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:activeUpcomingRanking5 activeDeliveredRanking:missedNotificationRanking3 justCompletedRanking:activeUpcomingRanking4];
      goto LABEL_36;
    }

    goto LABEL_9;
  }

  switch(eventType)
  {
    case 6:
      activeUpcomingRanking6 = [tupleCopy activeUpcomingRanking];
      missedNotificationRanking5 = [eventCopy missedNotificationRanking];
      v47 = [activeUpcomingRanking6 doesRankingShareContentWithOtherRanking:missedNotificationRanking5];

      if (v47)
      {
        missedNotificationRanking3 = [tupleCopy activeUpcomingRanking];
        digestTimeline7 = [missedNotificationRanking3 digestTimeline];
        [digestTimeline7 setDigestRemovedTimestamp:v9];

        activeUpcomingRanking4 = [tupleCopy activeDeliveredRanking];
        v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:0 activeDeliveredRanking:activeUpcomingRanking4 justCompletedRanking:missedNotificationRanking3];
      }

      else
      {
        activeDeliveredRanking6 = [tupleCopy activeDeliveredRanking];
        if (!activeDeliveredRanking6)
        {
          goto LABEL_40;
        }

        v65 = activeDeliveredRanking6;
        activeDeliveredRanking7 = [tupleCopy activeDeliveredRanking];
        missedNotificationRanking6 = [eventCopy missedNotificationRanking];
        v68 = [activeDeliveredRanking7 doesRankingShareContentWithOtherRanking:missedNotificationRanking6];

        if (v68)
        {
          missedNotificationRanking3 = [tupleCopy activeDeliveredRanking];
          digestTimeline8 = [missedNotificationRanking3 digestTimeline];
          [digestTimeline8 setDigestRemovedTimestamp:v9];

          activeUpcomingRanking4 = [tupleCopy activeUpcomingRanking];
          v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:activeUpcomingRanking4 activeDeliveredRanking:0 justCompletedRanking:missedNotificationRanking3];
        }

        else
        {
LABEL_40:
          missedNotificationRanking3 = [tupleCopy activeUpcomingRanking];
          activeUpcomingRanking4 = [tupleCopy activeDeliveredRanking];
          v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:missedNotificationRanking3 activeDeliveredRanking:activeUpcomingRanking4 justCompletedRanking:0];
        }
      }

      goto LABEL_41;
    case 5:
      goto LABEL_15;
    case 4:
LABEL_9:
      activeUpcomingRanking7 = [tupleCopy activeUpcomingRanking];

      if (!activeUpcomingRanking7)
      {
        missedNotificationRanking3 = [eventCopy missedNotificationRanking];
        v57 = objc_opt_new();
        [missedNotificationRanking3 setDigestTimeline:v57];

        digestTimeline9 = [missedNotificationRanking3 digestTimeline];
        [digestTimeline9 setFirstUpcomingViewTimestamp:v9];

        activeUpcomingRanking4 = [tupleCopy activeDeliveredRanking];
        v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:missedNotificationRanking3 activeDeliveredRanking:activeUpcomingRanking4 justCompletedRanking:0];
        goto LABEL_41;
      }

      activeUpcomingRanking8 = [tupleCopy activeUpcomingRanking];
      missedNotificationRanking7 = [eventCopy missedNotificationRanking];
      v14 = [activeUpcomingRanking8 doesRankingShareContentWithOtherRanking:missedNotificationRanking7];

      missedNotificationRanking3 = [eventCopy missedNotificationRanking];
      if (v14)
      {
        activeUpcomingRanking9 = [tupleCopy activeUpcomingRanking];
        digestTimeline10 = [activeUpcomingRanking9 digestTimeline];
        [missedNotificationRanking3 setDigestTimeline:digestTimeline10];

        activeUpcomingRanking4 = [tupleCopy activeDeliveredRanking];
        v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:missedNotificationRanking3 activeDeliveredRanking:activeUpcomingRanking4 justCompletedRanking:0];
LABEL_41:
        v50 = v19;
        goto LABEL_42;
      }

      v59 = objc_opt_new();
      [missedNotificationRanking3 setDigestTimeline:v59];

      digestTimeline11 = [missedNotificationRanking3 digestTimeline];
      [digestTimeline11 setFirstUpcomingViewTimestamp:v9];

      activeUpcomingRanking4 = [tupleCopy activeUpcomingRanking];
      digestTimeline12 = [activeUpcomingRanking4 digestTimeline];
      [digestTimeline12 setFirstScheduledViewTimestamp:v9];

      activeDeliveredRanking8 = [tupleCopy activeDeliveredRanking];
      activeUpcomingRanking5 = activeDeliveredRanking8;
      if (activeDeliveredRanking8)
      {
        digestTimeline13 = [activeDeliveredRanking8 digestTimeline];
        [digestTimeline13 setDigestRemovedTimestamp:v9];
      }

      v56 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:missedNotificationRanking3 activeDeliveredRanking:activeUpcomingRanking4 justCompletedRanking:activeUpcomingRanking5];
LABEL_36:
      v50 = v56;

LABEL_42:
      goto LABEL_43;
  }

LABEL_25:
  v49 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    [(_ATXActiveMissedNotificationRankingTuple *)self initWithPreviousTuple:eventCopy nextRankingEvent:v49];
  }

  v27 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:0 activeDeliveredRanking:0 justCompletedRanking:0];
LABEL_28:
  v50 = v27;
LABEL_43:

  v70 = *MEMORY[0x277D85DE8];
  return v50;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activeUpcomingRanking = [(_ATXActiveMissedNotificationRankingTuple *)self activeUpcomingRanking];
  [coderCopy encodeObject:activeUpcomingRanking forKey:@"codingKeyForActiveUpcomingMNR"];

  activeDeliveredRanking = [(_ATXActiveMissedNotificationRankingTuple *)self activeDeliveredRanking];
  [coderCopy encodeObject:activeDeliveredRanking forKey:@"codingKeyForActiveDeliveredMNR"];

  justCompletedRanking = [(_ATXActiveMissedNotificationRankingTuple *)self justCompletedRanking];
  [coderCopy encodeObject:justCompletedRanking forKey:@"codingKeyForJustCompletedMNR"];
}

- (_ATXActiveMissedNotificationRankingTuple)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277D42620];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_management();
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForActiveUpcomingMNR" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.ATXCompletedMNRBiomeStream" errorCode:-1 logHandle:v7];

  v9 = MEMORY[0x277D42620];
  v10 = objc_opt_class();
  v11 = __atxlog_handle_notification_management();
  v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"codingKeyForActiveDeliveredMNR" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.ATXCompletedMNRBiomeStream" errorCode:-1 logHandle:v11];

  v13 = MEMORY[0x277D42620];
  v14 = objc_opt_class();
  v15 = __atxlog_handle_notification_management();
  v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"codingKeyForJustCompletedMNR" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.ATXCompletedMNRBiomeStream" errorCode:-1 logHandle:v15];

  v17 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:v8 activeDeliveredRanking:v12 justCompletedRanking:v16];
  return v17;
}

- (void)initWithPreviousTuple:(NSObject *)a3 nextRankingEvent:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 eventType];
  v8 = [a2 missedNotificationRanking];
  v9 = [v8 uuid];
  v10 = [v9 UUIDString];
  v12 = 138412802;
  v13 = v6;
  v14 = 2048;
  v15 = v7;
  v16 = 2112;
  v17 = v10;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "%@ - Received unknown event type %ld on ranking with UUID %@", &v12, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

@end