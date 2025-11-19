@interface _ATXActiveDigestsTuple
- (_ATXActiveDigestsTuple)initWithActiveUpcomingDigest:(id)a3 activeScheduledDigest:(id)a4 justCompletedDigest:(id)a5;
- (_ATXActiveDigestsTuple)initWithCoder:(id)a3;
- (_ATXActiveDigestsTuple)initWithPreviousTuple:(id)a3 nextDigestEvent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ATXActiveDigestsTuple

- (_ATXActiveDigestsTuple)initWithActiveUpcomingDigest:(id)a3 activeScheduledDigest:(id)a4 justCompletedDigest:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = _ATXActiveDigestsTuple;
  v12 = [(_ATXActiveDigestsTuple *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activeUpcomingDigest, a3);
    objc_storeStrong(&v13->_activeScheduledDigest, a4);
    objc_storeStrong(&v13->_justCompletedDigest, a5);
  }

  return v13;
}

- (_ATXActiveDigestsTuple)initWithPreviousTuple:(id)a3 nextDigestEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEAA8];
  [v7 timestamp];
  v9 = [v8 dateWithTimeIntervalSinceReferenceDate:?];
  v10 = [v7 eventType];
  if (v10 > 1)
  {
    if (v10 == 3)
    {
      v44 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [_ATXActiveDigestsTuple initWithPreviousTuple:v44 nextDigestEvent:?];
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Received ATXUserNotificationDigestEventTypeTotal in digest Biome stream."];
      v24 = [v6 activeUpcomingDigest];
      v26 = [v6 activeScheduledDigest];
      v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:v24 activeScheduledDigest:v26 justCompletedDigest:0];
      goto LABEL_34;
    }

    if (v10 != 2)
    {
      goto LABEL_36;
    }

    v28 = [v6 activeUpcomingDigest];
    if (v28)
    {
      v29 = v28;
      v30 = [v6 activeUpcomingDigest];
      v31 = [v7 notificationDigest];
      v32 = [v30 doesDigestShareContentWithOtherDigest:v31];

      if (v32)
      {
        v24 = [v7 notificationDigest];
        v33 = [v6 activeUpcomingDigest];
        v34 = [v33 digestTimeline];
        [v24 setDigestTimeline:v34];

        v26 = [v6 activeScheduledDigest];
        v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:v24 activeScheduledDigest:v26 justCompletedDigest:0];
        goto LABEL_34;
      }
    }

    v24 = [v7 notificationDigest];
    v45 = objc_opt_new();
    [v24 setDigestTimeline:v45];

    v46 = [v24 digestTimeline];
    [v46 setFirstUpcomingViewTimestamp:v9];

    v47 = [v6 activeUpcomingDigest];
    v26 = v47;
    if (v47)
    {
      v48 = [v47 digestTimeline];
      [v48 setDigestRemovedTimestamp:v9];
    }

    v49 = [v6 activeScheduledDigest];
    v50 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:v24 activeScheduledDigest:v49 justCompletedDigest:v26];
LABEL_30:
    self = v50;

LABEL_35:
    goto LABEL_36;
  }

  if (!v10)
  {
    v35 = [v6 activeUpcomingDigest];
    if (v35)
    {
      v36 = v35;
      v37 = [v6 activeUpcomingDigest];
      v38 = [v7 notificationDigest];
      v39 = [v37 doesDigestShareContentWithOtherDigest:v38];

      if (v39)
      {
        v24 = [v7 notificationDigest];
        v40 = [v6 activeUpcomingDigest];
        v41 = [v40 digestTimeline];
        [v24 setDigestTimeline:v41];

        v42 = [v24 digestTimeline];
        [v42 setFirstScheduledViewTimestamp:v9];

        v26 = [v6 activeScheduledDigest];
        v43 = [v26 digestTimeline];
        [v43 setDigestRemovedTimestamp:v9];

        v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:0 activeScheduledDigest:v24 justCompletedDigest:v26];
        goto LABEL_34;
      }
    }

    v51 = [v6 activeScheduledDigest];
    if (v51)
    {
      v52 = v51;
      v53 = [v6 activeScheduledDigest];
      v54 = [v7 notificationDigest];
      v55 = [v53 doesDigestShareContentWithOtherDigest:v54];

      if (v55)
      {
        v24 = [v7 notificationDigest];
        v56 = [v6 activeScheduledDigest];
        v57 = [v56 digestTimeline];
        [v24 setDigestTimeline:v57];

        v26 = [v6 activeUpcomingDigest];
        v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:v26 activeScheduledDigest:v24 justCompletedDigest:0];
        goto LABEL_34;
      }
    }

    v24 = [v7 notificationDigest];
    v58 = objc_opt_new();
    [v24 setDigestTimeline:v58];

    v59 = [v24 digestTimeline];
    [v59 setFirstScheduledViewTimestamp:v9];

    v60 = [v6 activeScheduledDigest];
    v26 = v60;
    if (v60)
    {
      v61 = [v60 digestTimeline];
      [v61 setDigestRemovedTimestamp:v9];
    }

    v49 = [v6 activeUpcomingDigest];
    v50 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:v49 activeScheduledDigest:v24 justCompletedDigest:v26];
    goto LABEL_30;
  }

  if (v10 == 1)
  {
    v11 = [v6 activeUpcomingDigest];
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = v11;
    v13 = [v6 activeUpcomingDigest];
    v14 = [v13 digestTimeline];
    v15 = [v14 firstCollapsedViewTimestamp];

    if (!v15)
    {
      v62 = [v6 activeUpcomingDigest];
      v63 = [v7 notificationDigest];
      v64 = [v62 doesDigestShareContentWithOtherDigest:v63];

      if (v64)
      {
        v24 = [v7 notificationDigest];
        v65 = [v24 digestTimeline];
        [v65 setFirstCollapsedViewTimestamp:v9];

        v26 = [v6 activeScheduledDigest];
        v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:v24 activeScheduledDigest:v26 justCompletedDigest:0];
        goto LABEL_34;
      }
    }

    else
    {
LABEL_6:
      v16 = [v6 activeScheduledDigest];
      if (v16)
      {
        v17 = v16;
        v18 = [v6 activeScheduledDigest];
        v19 = [v18 digestTimeline];
        v20 = [v19 firstCollapsedViewTimestamp];

        if (!v20)
        {
          v21 = [v6 activeScheduledDigest];
          v22 = [v7 notificationDigest];
          v23 = [v21 doesDigestShareContentWithOtherDigest:v22];

          if (v23)
          {
            v24 = [v7 notificationDigest];
            v25 = [v24 digestTimeline];
            [v25 setFirstCollapsedViewTimestamp:v9];

            v26 = [v6 activeUpcomingDigest];
            v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:v26 activeScheduledDigest:v24 justCompletedDigest:0];
LABEL_34:
            self = v27;
            goto LABEL_35;
          }
        }
      }
    }

    v24 = [v6 activeUpcomingDigest];
    v26 = [v6 activeScheduledDigest];
    v27 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:v24 activeScheduledDigest:v26 justCompletedDigest:0];
    goto LABEL_34;
  }

LABEL_36:

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_ATXActiveDigestsTuple *)self activeUpcomingDigest];
  [v4 encodeObject:v5 forKey:@"codingKeyForActiveUpcomingDigest"];

  v6 = [(_ATXActiveDigestsTuple *)self activeScheduledDigest];
  [v4 encodeObject:v6 forKey:@"codingKeyForActiveScheduledDigest"];

  v7 = [(_ATXActiveDigestsTuple *)self justCompletedDigest];
  [v4 encodeObject:v7 forKey:@"codingKeyForJustCompletedDigest"];
}

- (_ATXActiveDigestsTuple)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277D42620];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = __atxlog_handle_notification_management();
  v8 = [v4 robustDecodeObjectOfClass:v6 forKey:@"codingKeyForActiveUpcomingDigest" withCoder:v5 expectNonNull:0 errorDomain:@"com.apple.ATXCompletedDigestBiomeStream" errorCode:-1 logHandle:v7];

  v9 = MEMORY[0x277D42620];
  v10 = objc_opt_class();
  v11 = __atxlog_handle_notification_management();
  v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"codingKeyForActiveScheduledDigest" withCoder:v5 expectNonNull:0 errorDomain:@"com.apple.ATXCompletedDigestBiomeStream" errorCode:-1 logHandle:v11];

  v13 = MEMORY[0x277D42620];
  v14 = objc_opt_class();
  v15 = __atxlog_handle_notification_management();
  v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"codingKeyForJustCompletedDigest" withCoder:v5 expectNonNull:0 errorDomain:@"com.apple.ATXCompletedDigestBiomeStream" errorCode:-1 logHandle:v15];

  v17 = [(_ATXActiveDigestsTuple *)self initWithActiveUpcomingDigest:v8 activeScheduledDigest:v12 justCompletedDigest:v16];
  return v17;
}

@end