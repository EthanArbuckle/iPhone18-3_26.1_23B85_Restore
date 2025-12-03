@interface ATXNotificationDigestFeedbackLogger
- (ATXNotificationDigestFeedbackLogger)init;
- (ATXNotificationDigestFeedbackLogger)initWithDigestFeedback:(id)feedback;
- (id)_getBundleIdAndEngagementsForDigestGroup:(id)group onDigest:(id)digest;
- (void)logFeedbackForAnnotatedDigest:(id)digest;
@end

@implementation ATXNotificationDigestFeedbackLogger

- (ATXNotificationDigestFeedbackLogger)init
{
  v3 = objc_opt_new();
  v4 = [(ATXNotificationDigestFeedbackLogger *)self initWithDigestFeedback:v3];

  return v4;
}

- (ATXNotificationDigestFeedbackLogger)initWithDigestFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v9.receiver = self;
  v9.super_class = ATXNotificationDigestFeedbackLogger;
  v6 = [(ATXNotificationDigestFeedbackLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_digestFeedback, feedback);
  }

  return v7;
}

- (void)logFeedbackForAnnotatedDigest:(id)digest
{
  v65 = *MEMORY[0x277D85DE8];
  digestCopy = digest;
  v5 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  highlightedGroups = [digestCopy highlightedGroups];
  v7 = [highlightedGroups countByEnumeratingWithState:&v53 objects:v64 count:16];
  v46 = v5;
  if (v7)
  {
    v9 = v7;
    v10 = *v54;
    *&v8 = 138412802;
    v42 = v8;
    v47 = *v54;
    v44 = highlightedGroups;
    do
    {
      v11 = 0;
      do
      {
        if (*v54 != v10)
        {
          objc_enumerationMutation(highlightedGroups);
        }

        v12 = [(ATXNotificationDigestFeedbackLogger *)self _getBundleIdAndEngagementsForDigestGroup:*(*(&v53 + 1) + 8 * v11) onDigest:digestCopy, v42];
        v13 = v12;
        if (v12)
        {
          first = [v12 first];
          if ([v5 containsObject:first])
          {
            second = __atxlog_handle_notification_management();
            if (os_log_type_enabled(second, OS_LOG_TYPE_INFO))
            {
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              uuid = [digestCopy uuid];
              uUIDString = [uuid UUIDString];
              *buf = v42;
              v59 = v17;
              v60 = 2112;
              v61 = first;
              v62 = 2112;
              v63 = uUIDString;
              _os_log_impl(&dword_2263AA000, second, OS_LOG_TYPE_INFO, "[%@] Found unexpected duplicate bundle ID %@ in marquee spots for digest %@", buf, 0x20u);

              v10 = v47;
              v5 = v46;

              highlightedGroups = v44;
            }
          }

          else
          {
            second = [v13 second];
            [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback logMarqueeAppearanceForBundleId:first];
            numEngagementsInUpcoming = [second numEngagementsInUpcoming];
            v21 = [second numEngagementsInScheduled]+ numEngagementsInUpcoming;
            if (v21 + [second numEngagementsAfterExpiration])
            {
              [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback logMarqueeEngagementForBundleId:first];
            }

            [v5 addObject:first];
            v10 = v47;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [highlightedGroups countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v9);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  messageGroups = [digestCopy messageGroups];
  rankedGroups = [digestCopy rankedGroups];
  v24 = [messageGroups arrayByAddingObjectsFromArray:rankedGroups];

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

        v31 = [(ATXNotificationDigestFeedbackLogger *)self _getBundleIdAndEngagementsForDigestGroup:*(*(&v49 + 1) + 8 * v30) onDigest:digestCopy, v43];
        v32 = v31;
        if (v31)
        {
          first2 = [v31 first];
          if ([v5 containsObject:first2])
          {
            second2 = __atxlog_handle_notification_management();
            if (os_log_type_enabled(second2, OS_LOG_TYPE_INFO))
            {
              v35 = objc_opt_class();
              v36 = NSStringFromClass(v35);
              uuid2 = [digestCopy uuid];
              uUIDString2 = [uuid2 UUIDString];
              *buf = v43;
              v59 = v36;
              v60 = 2112;
              v61 = first2;
              v62 = 2112;
              v63 = uUIDString2;
              _os_log_impl(&dword_2263AA000, second2, OS_LOG_TYPE_INFO, "[%@] Skipping duplicate bundle ID %@ in digest %@", buf, 0x20u);

              v29 = v48;
              v5 = v46;

              v25 = v45;
            }
          }

          else
          {
            second2 = [v32 second];
            [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback logNonMarqueeAppearanceForBundleId:first2];
            numEngagementsInUpcoming2 = [second2 numEngagementsInUpcoming];
            v40 = [second2 numEngagementsInScheduled]+ numEngagementsInUpcoming2;
            if (v40 + [second2 numEngagementsAfterExpiration])
            {
              [(ATXNotificationDigestFeedbackProtocol *)self->_digestFeedback logNonMarqueeEngagementForBundleId:first2];
            }

            [v5 addObject:first2];
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

- (id)_getBundleIdAndEngagementsForDigestGroup:(id)group onDigest:(id)digest
{
  v25 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  digestCopy = digest;
  bundleId = [groupCopy bundleId];
  if (bundleId)
  {
    digestEngagementTrackingMetrics = [groupCopy digestEngagementTrackingMetrics];
    if (digestEngagementTrackingMetrics)
    {
      v9 = [MEMORY[0x277D42648] tupleWithFirst:bundleId second:digestEngagementTrackingMetrics];
      goto LABEL_9;
    }

    v11 = __atxlog_handle_notification_management();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v17 = objc_opt_class();
    groupId2 = NSStringFromClass(v17);
    groupId = [groupCopy groupId];
    uuid = [digestCopy uuid];
    uUIDString = [uuid UUIDString];
    v19 = 138412802;
    v20 = groupId2;
    v21 = 2112;
    v22 = groupId;
    v23 = 2112;
    v24 = uUIDString;
    _os_log_error_impl(&dword_2263AA000, v11, OS_LOG_TYPE_ERROR, "[%@] Could not get engagement metrics for digest group with group ID %@ on digest %@", &v19, 0x20u);

LABEL_13:
LABEL_7:

    goto LABEL_8;
  }

  digestEngagementTrackingMetrics = __atxlog_handle_notification_management();
  if (os_log_type_enabled(digestEngagementTrackingMetrics, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    groupId2 = [groupCopy groupId];
    groupId = [digestCopy uuid];
    uuid = [groupId UUIDString];
    v19 = 138412802;
    v20 = v11;
    v21 = 2112;
    v22 = groupId2;
    v23 = 2112;
    v24 = uuid;
    _os_log_error_impl(&dword_2263AA000, digestEngagementTrackingMetrics, OS_LOG_TYPE_ERROR, "[%@] Could not get bundle ID for digest group with group ID %@ on digest %@", &v19, 0x20u);
    goto LABEL_13;
  }

LABEL_8:
  v9 = 0;
LABEL_9:

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

@end