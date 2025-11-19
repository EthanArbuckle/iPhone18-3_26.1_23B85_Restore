@interface ATXNotificationDigestFeedbackLogger
- (ATXNotificationDigestFeedbackLogger)init;
- (ATXNotificationDigestFeedbackLogger)initWithDigestFeedback:(id)a3;
- (id)_getBundleIdAndEngagementsForDigestGroup:(id)a3 onDigest:(id)a4;
- (void)logFeedbackForAnnotatedDigest:(id)a3;
@end

@implementation ATXNotificationDigestFeedbackLogger

- (ATXNotificationDigestFeedbackLogger)init
{
  v3 = objc_opt_new();
  v4 = [(ATXNotificationDigestFeedbackLogger *)self initWithDigestFeedback:v3];

  return v4;
}

- (ATXNotificationDigestFeedbackLogger)initWithDigestFeedback:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXNotificationDigestFeedbackLogger;
  v6 = [(ATXNotificationDigestFeedbackLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_digestFeedback, a3);
  }

  return v7;
}

- (void)logFeedbackForAnnotatedDigest:(id)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v6 = [v4 highlightedGroups];
  v7 = [v6 countByEnumeratingWithState:&v53 objects:v64 count:16];
  v46 = v5;
  if (v7)
  {
    v9 = v7;
    v10 = *v54;
    *&v8 = 138412802;
    v42 = v8;
    v47 = *v54;
    v44 = v6;
    do
    {
      v11 = 0;
      do
      {
        if (*v54 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [(ATXNotificationDigestFeedbackLogger *)self _getBundleIdAndEngagementsForDigestGroup:*(*(&v53 + 1) + 8 * v11) onDigest:v4, v42];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 first];
          if ([v5 containsObject:v14])
          {
            v15 = __atxlog_handle_notification_management();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              v18 = [v4 uuid];
              v19 = [v18 UUIDString];
              *buf = v42;
              v59 = v17;
              v60 = 2112;
              v61 = v14;
              v62 = 2112;
              v63 = v19;
              _os_log_impl(&dword_2263AA000, v15, OS_LOG_TYPE_INFO, "[%@] Found unexpected duplicate bundle ID %@ in marquee spots for digest %@", buf, 0x20u);

              v10 = v47;
              v5 = v46;

              v6 = v44;
            }
          }

          else
          {
            v15 = [v13 second];
            [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback logMarqueeAppearanceForBundleId:v14];
            v20 = [v15 numEngagementsInUpcoming];
            v21 = [v15 numEngagementsInScheduled]+ v20;
            if (v21 + [v15 numEngagementsAfterExpiration])
            {
              [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback logMarqueeEngagementForBundleId:v14];
            }

            [v5 addObject:v14];
            v10 = v47;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v9);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v22 = [v4 messageGroups];
  v23 = [v4 rankedGroups];
  v24 = [v22 arrayByAddingObjectsFromArray:v23];

  v25 = v24;
  v26 = [v24 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v26)
  {
    v28 = v26;
    v29 = *v50;
    *&v27 = 138412802;
    v43 = v27;
    v48 = *v50;
    v45 = v24;
    do
    {
      v30 = 0;
      do
      {
        if (*v50 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = [(ATXNotificationDigestFeedbackLogger *)self _getBundleIdAndEngagementsForDigestGroup:*(*(&v49 + 1) + 8 * v30) onDigest:v4, v43];
        v32 = v31;
        if (v31)
        {
          v33 = [v31 first];
          if ([v5 containsObject:v33])
          {
            v34 = __atxlog_handle_notification_management();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v35 = objc_opt_class();
              v36 = NSStringFromClass(v35);
              v37 = [v4 uuid];
              v38 = [v37 UUIDString];
              *buf = v43;
              v59 = v36;
              v60 = 2112;
              v61 = v33;
              v62 = 2112;
              v63 = v38;
              _os_log_impl(&dword_2263AA000, v34, OS_LOG_TYPE_INFO, "[%@] Skipping duplicate bundle ID %@ in digest %@", buf, 0x20u);

              v29 = v48;
              v5 = v46;

              v25 = v45;
            }
          }

          else
          {
            v34 = [v32 second];
            [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback logNonMarqueeAppearanceForBundleId:v33];
            v39 = [v34 numEngagementsInUpcoming];
            v40 = [v34 numEngagementsInScheduled]+ v39;
            if (v40 + [v34 numEngagementsAfterExpiration])
            {
              [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback logNonMarqueeEngagementForBundleId:v33];
            }

            [v5 addObject:v33];
            v29 = v48;
          }
        }

        ++v30;
      }

      while (v28 != v30);
      v28 = [v25 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v28);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (id)_getBundleIdAndEngagementsForDigestGroup:(id)a3 onDigest:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 bundleId];
  if (v7)
  {
    v8 = [v5 digestEngagementTrackingMetrics];
    if (v8)
    {
      v9 = [MEMORY[0x277D42648] tupleWithFirst:v7 second:v8];
      goto LABEL_9;
    }

    v11 = __atxlog_handle_notification_management();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = objc_opt_class();
    v12 = NSStringFromClass(v17);
    v13 = [v5 groupId];
    v14 = [v6 uuid];
    v18 = [v14 UUIDString];
    v19 = 138412802;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v18;
    _os_log_error_impl(&dword_2263AA000, v11, OS_LOG_TYPE_ERROR, "[%@] Could not get engagement metrics for digest group with group ID %@ on digest %@", &v19, 0x20u);

LABEL_13:
LABEL_7:

    goto LABEL_8;
  }

  v8 = __atxlog_handle_notification_management();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v5 groupId];
    v13 = [v6 uuid];
    v14 = [v13 UUIDString];
    v19 = 138412802;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v14;
    _os_log_error_impl(&dword_2263AA000, v8, OS_LOG_TYPE_ERROR, "[%@] Could not get bundle ID for digest group with group ID %@ on digest %@", &v19, 0x20u);
    goto LABEL_13;
  }

LABEL_8:
  v9 = 0;
LABEL_9:

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

@end