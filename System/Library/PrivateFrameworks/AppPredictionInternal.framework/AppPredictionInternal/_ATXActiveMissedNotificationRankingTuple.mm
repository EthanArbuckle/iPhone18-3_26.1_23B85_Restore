@interface _ATXActiveMissedNotificationRankingTuple
- (_ATXActiveMissedNotificationRankingTuple)initWithActiveUpcomingRanking:(id)a3 activeDeliveredRanking:(id)a4 justCompletedRanking:(id)a5;
- (_ATXActiveMissedNotificationRankingTuple)initWithCoder:(id)a3;
- (_ATXActiveMissedNotificationRankingTuple)initWithPreviousTuple:(id)a3 nextRankingEvent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ATXActiveMissedNotificationRankingTuple

- (_ATXActiveMissedNotificationRankingTuple)initWithActiveUpcomingRanking:(id)a3 activeDeliveredRanking:(id)a4 justCompletedRanking:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _ATXActiveMissedNotificationRankingTuple;
  v12 = [(_ATXActiveMissedNotificationRankingTuple *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activeUpcomingRanking, a3);
    objc_storeStrong(&v13->_activeDeliveredRanking, a4);
    objc_storeStrong(&v13->_justCompletedRanking, a5);
  }

  return v13;
}

- (_ATXActiveMissedNotificationRankingTuple)initWithPreviousTuple:(id)a3 nextRankingEvent:(id)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAA8];
  [v7 timestamp];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = [v7 eventType];
  if (v10 <= 3)
  {
    if (v10 < 2)
    {
      v20 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = [v7 eventType];
        v24 = [v7 missedNotificationRanking];
        v25 = [v24 uuid];
        v26 = [v25 UUIDString];
        v72 = 138412802;
        v73 = v22;
        v74 = 2048;
        v75 = v23;
        v76 = 2112;
        v77 = v26;
        _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_INFO, "%@ - Received unsupported deprecated event type %ld on ranking with UUID %@", &v72, 0x20u);
      }

      v27 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:0 activeDeliveredRanking:0 justCompletedRanking:0];
      goto LABEL_28;
    }

    if (v10 != 2)
    {
      if (v10 != 3)
      {
        goto LABEL_25;
      }

LABEL_15:
      v28 = [v6 activeUpcomingRanking];
      if (v28)
      {
        v29 = v28;
        v30 = [v6 activeUpcomingRanking];
        v31 = [v7 missedNotificationRanking];
        v32 = [v30 doesRankingShareContentWithOtherRanking:v31];

        if (v32)
        {
          v15 = [v7 missedNotificationRanking];
          v33 = [v6 activeUpcomingRanking];
          v34 = [v33 digestTimeline];
          [v15 setDigestTimeline:v34];

          v35 = [v15 digestTimeline];
          [v35 setFirstScheduledViewTimestamp:v9];

          v36 = [v6 activeDeliveredRanking];
          v18 = v36;
          if (v36)
          {
            v37 = [v36 digestTimeline];
            [v37 setDigestRemovedTimestamp:v9];
          }

          v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:0 activeDeliveredRanking:v15 justCompletedRanking:v18];
          goto LABEL_41;
        }
      }

      v38 = [v6 activeDeliveredRanking];
      if (v38)
      {
        v39 = v38;
        v40 = [v6 activeDeliveredRanking];
        v41 = [v7 missedNotificationRanking];
        v42 = [v40 doesRankingShareContentWithOtherRanking:v41];

        if (v42)
        {
          v15 = [v7 missedNotificationRanking];
          v43 = [v6 activeDeliveredRanking];
          v44 = [v43 digestTimeline];
          [v15 setDigestTimeline:v44];

          v18 = [v6 activeUpcomingRanking];
          v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:v18 activeDeliveredRanking:v15 justCompletedRanking:0];
          goto LABEL_41;
        }
      }

      v15 = [v7 missedNotificationRanking];
      v51 = objc_opt_new();
      [v15 setDigestTimeline:v51];

      v52 = [v15 digestTimeline];
      [v52 setFirstScheduledViewTimestamp:v9];

      v53 = [v6 activeDeliveredRanking];
      v18 = v53;
      if (v53)
      {
        v54 = [v53 digestTimeline];
        [v54 setDigestRemovedTimestamp:v9];
      }

      v55 = [v6 activeUpcomingRanking];
      v56 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:v55 activeDeliveredRanking:v15 justCompletedRanking:v18];
      goto LABEL_36;
    }

    goto LABEL_9;
  }

  switch(v10)
  {
    case 6:
      v45 = [v6 activeUpcomingRanking];
      v46 = [v7 missedNotificationRanking];
      v47 = [v45 doesRankingShareContentWithOtherRanking:v46];

      if (v47)
      {
        v15 = [v6 activeUpcomingRanking];
        v48 = [v15 digestTimeline];
        [v48 setDigestRemovedTimestamp:v9];

        v18 = [v6 activeDeliveredRanking];
        v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:0 activeDeliveredRanking:v18 justCompletedRanking:v15];
      }

      else
      {
        v64 = [v6 activeDeliveredRanking];
        if (!v64)
        {
          goto LABEL_40;
        }

        v65 = v64;
        v66 = [v6 activeDeliveredRanking];
        v67 = [v7 missedNotificationRanking];
        v68 = [v66 doesRankingShareContentWithOtherRanking:v67];

        if (v68)
        {
          v15 = [v6 activeDeliveredRanking];
          v69 = [v15 digestTimeline];
          [v69 setDigestRemovedTimestamp:v9];

          v18 = [v6 activeUpcomingRanking];
          v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:v18 activeDeliveredRanking:0 justCompletedRanking:v15];
        }

        else
        {
LABEL_40:
          v15 = [v6 activeUpcomingRanking];
          v18 = [v6 activeDeliveredRanking];
          v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:v15 activeDeliveredRanking:v18 justCompletedRanking:0];
        }
      }

      goto LABEL_41;
    case 5:
      goto LABEL_15;
    case 4:
LABEL_9:
      v11 = [v6 activeUpcomingRanking];

      if (!v11)
      {
        v15 = [v7 missedNotificationRanking];
        v57 = objc_opt_new();
        [v15 setDigestTimeline:v57];

        v58 = [v15 digestTimeline];
        [v58 setFirstUpcomingViewTimestamp:v9];

        v18 = [v6 activeDeliveredRanking];
        v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:v15 activeDeliveredRanking:v18 justCompletedRanking:0];
        goto LABEL_41;
      }

      v12 = [v6 activeUpcomingRanking];
      v13 = [v7 missedNotificationRanking];
      v14 = [v12 doesRankingShareContentWithOtherRanking:v13];

      v15 = [v7 missedNotificationRanking];
      if (v14)
      {
        v16 = [v6 activeUpcomingRanking];
        v17 = [v16 digestTimeline];
        [v15 setDigestTimeline:v17];

        v18 = [v6 activeDeliveredRanking];
        v19 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:v15 activeDeliveredRanking:v18 justCompletedRanking:0];
LABEL_41:
        v50 = v19;
        goto LABEL_42;
      }

      v59 = objc_opt_new();
      [v15 setDigestTimeline:v59];

      v60 = [v15 digestTimeline];
      [v60 setFirstUpcomingViewTimestamp:v9];

      v18 = [v6 activeUpcomingRanking];
      v61 = [v18 digestTimeline];
      [v61 setFirstScheduledViewTimestamp:v9];

      v62 = [v6 activeDeliveredRanking];
      v55 = v62;
      if (v62)
      {
        v63 = [v62 digestTimeline];
        [v63 setDigestRemovedTimestamp:v9];
      }

      v56 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:v15 activeDeliveredRanking:v18 justCompletedRanking:v55];
LABEL_36:
      v50 = v56;

LABEL_42:
      goto LABEL_43;
  }

LABEL_25:
  v49 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    [(_ATXActiveMissedNotificationRankingTuple *)self initWithPreviousTuple:v7 nextRankingEvent:v49];
  }

  v27 = [(_ATXActiveMissedNotificationRankingTuple *)self initWithActiveUpcomingRanking:0 activeDeliveredRanking:0 justCompletedRanking:0];
LABEL_28:
  v50 = v27;
LABEL_43:

  v70 = *MEMORY[0x277D85DE8];
  return v50;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_ATXActiveMissedNotificationRankingTuple *)self activeUpcomingRanking];
  [v4 encodeObject:v5 forKey:@"codingKeyForActiveUpcomingMNR"];

  v6 = [(_ATXActiveMissedNotificationRankingTuple *)self activeDeliveredRanking];
  [v4 encodeObject:v6 forKey:@"codingKeyForActiveDeliveredMNR"];

  v7 = [(_ATXActiveMissedNotificationRankingTuple *)self justCompletedRanking];
  [v4 encodeObject:v7 forKey:@"codingKeyForJustCompletedMNR"];
}

- (_ATXActiveMissedNotificationRankingTuple)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277D42620];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_management();
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForActiveUpcomingMNR" withCoder:v5 expectNonNull:0 errorDomain:@"com.apple.ATXCompletedMNRBiomeStream" errorCode:-1 logHandle:v7];

  v9 = MEMORY[0x277D42620];
  v10 = objc_opt_class();
  v11 = __atxlog_handle_notification_management();
  v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"codingKeyForActiveDeliveredMNR" withCoder:v5 expectNonNull:0 errorDomain:@"com.apple.ATXCompletedMNRBiomeStream" errorCode:-1 logHandle:v11];

  v13 = MEMORY[0x277D42620];
  v14 = objc_opt_class();
  v15 = __atxlog_handle_notification_management();
  v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"codingKeyForJustCompletedMNR" withCoder:v5 expectNonNull:0 errorDomain:@"com.apple.ATXCompletedMNRBiomeStream" errorCode:-1 logHandle:v15];

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