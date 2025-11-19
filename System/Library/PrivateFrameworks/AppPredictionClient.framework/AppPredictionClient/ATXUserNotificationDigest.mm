@interface ATXUserNotificationDigest
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)getFlattenedGroupsFromAppDigests:(id)a3;
- (ATXUserNotificationDigest)initWithAppDigests:(id)a3 highlightedGroups:(id)a4 messageGroups:(id)a5 rankerId:(id)a6;
- (ATXUserNotificationDigest)initWithCoder:(id)a3;
- (ATXUserNotificationDigest)initWithGroups:(id)a3 modeId:(id)a4 ranker:(id)a5;
- (ATXUserNotificationDigest)initWithMessageGroups:(id)a3 highlightedGroups:(id)a4 otherGroups:(id)a5 rankerId:(id)a6;
- (ATXUserNotificationDigest)initWithNotificationArrays:(id)a3 modeId:(id)a4 ranker:(id)a5;
- (ATXUserNotificationDigest)initWithNotifications:(id)a3 modeId:(id)a4;
- (ATXUserNotificationDigest)initWithNotifications:(id)a3 modeId:(id)a4 ranker:(id)a5;
- (ATXUserNotificationDigest)initWithProto:(id)a3;
- (ATXUserNotificationDigest)initWithProtoData:(id)a3;
- (BOOL)doesDigestShareContentWithOtherDigest:(id)a3;
- (id)allNotificationIds;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProto;
- (id)initFromJSON:(id)a3;
- (id)json;
- (id)jsonRepresentation;
- (id)proto;
- (id)viewFlattenedGroups;
- (void)allNotificationIds;
- (void)encodeWithCoder:(id)a3;
- (void)logCollapsedPreview;
- (void)logCollapsedPreviewWithTimestamp:(double)a3;
- (void)logScheduledView;
- (void)logScheduledViewWithTimestamp:(double)a3;
- (void)logUpcomingView;
- (void)logUpcomingViewWithTimestamp:(double)a3;
@end

@implementation ATXUserNotificationDigest

- (ATXUserNotificationDigest)initWithMessageGroups:(id)a3 highlightedGroups:(id)a4 otherGroups:(id)a5 rankerId:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = ATXUserNotificationDigest;
  v14 = [(ATXUserNotificationDigest *)&v28 init];
  v15 = v14;
  if (v14)
  {
    appDigests = v14->_appDigests;
    v14->_appDigests = MEMORY[0x1E695E0F0];

    v17 = [v10 copy];
    messageGroups = v15->_messageGroups;
    v15->_messageGroups = v17;

    v19 = [v11 copy];
    highlightedGroups = v15->_highlightedGroups;
    v15->_highlightedGroups = v19;

    v21 = [v12 copy];
    rankedGroups = v15->_rankedGroups;
    v15->_rankedGroups = v21;

    v23 = [v13 copy];
    rankerId = v15->_rankerId;
    v15->_rankerId = v23;

    v15->_creationTimestamp = CFAbsoluteTimeGetCurrent();
    v25 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v15->_uuid;
    v15->_uuid = v25;
  }

  return v15;
}

- (ATXUserNotificationDigest)initWithNotifications:(id)a3 modeId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(ATXUserNotificationDigest *)self initWithNotifications:v7 modeId:v6 ranker:v8];

  return v9;
}

- (ATXUserNotificationDigest)initWithNotifications:(id)a3 modeId:(id)a4 ranker:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [ATXUserNotificationDigestNotificationGroup groupsFromNotifications:a3 modeId:v9];
  v11 = [(ATXUserNotificationDigest *)self initWithGroups:v10 modeId:v9 ranker:v8];

  return v11;
}

- (ATXUserNotificationDigest)initWithNotificationArrays:(id)a3 modeId:(id)a4 ranker:(id)a5
{
  v8 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__ATXUserNotificationDigest_initWithNotificationArrays_modeId_ranker___block_invoke;
  v14[3] = &unk_1E80C18B8;
  v15 = v8;
  v9 = v8;
  v10 = a5;
  v11 = [a3 _pas_mappedArrayWithTransform:v14];
  v12 = [(ATXUserNotificationDigest *)self initWithGroups:v11 modeId:v9 ranker:v10];

  return v12;
}

ATXUserNotificationDigestNotificationGroup *__70__ATXUserNotificationDigest_initWithNotificationArrays_modeId_ranker___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ATXUserNotificationDigestNotificationGroup alloc] initWithNotifications:v3 modeId:*(a1 + 32)];

  return v4;
}

- (ATXUserNotificationDigest)initWithGroups:(id)a3 modeId:(id)a4 ranker:(id)a5
{
  v49 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v47.receiver = self;
  v47.super_class = ATXUserNotificationDigest;
  v11 = [(ATXUserNotificationDigest *)&v47 init];
  if (v11)
  {
    obj = a4;
    v39 = [v8 _pas_filteredArrayWithTest:&__block_literal_global_34];
    v12 = [v10 rankNotificationGroups:? modeId:?];
    messageGroups = v11->_messageGroups;
    v11->_messageGroups = v12;

    v42 = v8;
    v14 = [v8 _pas_filteredArrayWithTest:&__block_literal_global_39];
    v41 = v9;
    v15 = [v10 rankNotificationGroups:v14 modeId:v9];

    v16 = [v15 _pas_filteredArrayWithTest:&__block_literal_global_41];
    v17 = [v16 count];
    if (v17 >= 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v17;
    }

    v19 = [v16 subarrayWithRange:{0, v18}];
    v20 = [v19 mutableCopy];

    v21 = objc_opt_new();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v22 = v15;
    v23 = [v22 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v43 + 1) + 8 * i);
          if (![(NSArray *)v20 containsObject:v27])
          {
            if ([(NSArray *)v20 count]>= 2)
            {
              v28 = v21;
            }

            else
            {
              v28 = v20;
            }

            [(NSArray *)v28 addObject:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v24);
    }

    highlightedGroups = v11->_highlightedGroups;
    v11->_highlightedGroups = v20;
    v30 = v20;

    rankedGroups = v11->_rankedGroups;
    v11->_rankedGroups = v21;
    v32 = v21;

    appDigests = v11->_appDigests;
    v11->_appDigests = MEMORY[0x1E695E0F0];

    v11->_creationTimestamp = CFAbsoluteTimeGetCurrent();
    v34 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v11->_uuid;
    v11->_uuid = v34;

    v36 = [objc_opt_class() rankerId];
    rankerId = v11->_rankerId;
    v11->_rankerId = v36;

    objc_storeStrong(&v11->_modeIdString, obj);
    v9 = v41;
    v8 = v42;
  }

  return v11;
}

- (ATXUserNotificationDigest)initWithAppDigests:(id)a3 highlightedGroups:(id)a4 messageGroups:(id)a5 rankerId:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [objc_opt_class() getFlattenedGroupsFromAppDigests:v10];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __89__ATXUserNotificationDigest_initWithAppDigests_highlightedGroups_messageGroups_rankerId___block_invoke;
  v25 = &unk_1E80C2918;
  v15 = v11;
  v26 = v15;
  v16 = v12;
  v27 = v16;
  v17 = [v14 _pas_filteredArrayWithTest:&v22];
  v18 = [(ATXUserNotificationDigest *)self initWithMessageGroups:v16 highlightedGroups:v15 otherGroups:v17 rankerId:v13, v22, v23, v24, v25];

  if (v18)
  {
    v19 = [v10 copy];
    appDigests = v18->_appDigests;
    v18->_appDigests = v19;
  }

  return v18;
}

uint64_t __89__ATXUserNotificationDigest_initWithAppDigests_highlightedGroups_messageGroups_rankerId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = [*(a1 + 40) containsObject:v3] ^ 1;
  }

  return v4;
}

- (BOOL)doesDigestShareContentWithOtherDigest:(id)a3
{
  v4 = a3;
  v5 = [(ATXUserNotificationDigest *)self allNotificationIds];
  v6 = [v4 allNotificationIds];

  LOBYTE(v4) = [v5 intersectsSet:v6];
  return v4;
}

- (id)allNotificationIds
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = [(ATXUserNotificationDigest *)self messageGroups];
  v48[0] = v4;
  v5 = [(ATXUserNotificationDigest *)self highlightedGroups];
  v48[1] = v5;
  v6 = [(ATXUserNotificationDigest *)self rankedGroups];
  v48[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];

  obj = v7;
  v25 = [v7 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v25)
  {
    v24 = *v43;
    do
    {
      v8 = 0;
      do
      {
        if (*v43 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v8;
        v9 = *(*(&v42 + 1) + 8 * v8);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v27 = v9;
        v29 = [v27 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v29)
        {
          v28 = *v39;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v39 != v28)
              {
                objc_enumerationMutation(v27);
              }

              v11 = *(*(&v38 + 1) + 8 * i);
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v12 = [v11 rankedNotifications];
              v13 = [v12 countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v35;
                do
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v35 != v15)
                    {
                      objc_enumerationMutation(v12);
                    }

                    v17 = *(*(&v34 + 1) + 8 * j);
                    v18 = [v17 uuid];

                    if (v18)
                    {
                      v19 = [v17 uuid];
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();

                      if (isKindOfClass)
                      {
                        v21 = [v17 uuid];
                        [v3 addObject:v21];
                      }

                      else
                      {
                        v21 = __atxlog_handle_modes();
                        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
                        {
                          [(ATXUserNotificationDigest *)&buf allNotificationIds];
                        }
                      }
                    }

                    else
                    {
                      v21 = __atxlog_handle_modes();
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
                      {
                        [(ATXUserNotificationDigest *)&v32 allNotificationIds];
                      }
                    }
                  }

                  v14 = [v12 countByEnumeratingWithState:&v34 objects:v46 count:16];
                }

                while (v14);
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v29);
        }

        v8 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v25);
  }

  return v3;
}

+ (id)getFlattenedGroupsFromAppDigests:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) groups];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)viewFlattenedGroups
{
  if ([(NSArray *)self->_appDigests count])
  {
    v3 = [objc_opt_class() getFlattenedGroupsFromAppDigests:self->_appDigests];
  }

  else
  {
    v4 = [(NSArray *)self->_messageGroups arrayByAddingObjectsFromArray:self->_highlightedGroups];
    v3 = [v4 arrayByAddingObjectsFromArray:self->_rankedGroups];
  }

  return v3;
}

- (void)logScheduledView
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];

  [(ATXUserNotificationDigest *)self logScheduledViewWithTimestamp:?];
}

- (void)logCollapsedPreview
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];

  [(ATXUserNotificationDigest *)self logCollapsedPreviewWithTimestamp:?];
}

- (void)logUpcomingView
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];

  [(ATXUserNotificationDigest *)self logScheduledViewWithTimestamp:?];
}

- (void)logScheduledViewWithTimestamp:(double)a3
{
  if (!self->_hasLoggedScheduled)
  {
    self->_hasLoggedScheduled = 1;
    v5 = [[ATXUserNotificationDigestLoggingEvent alloc] initWithNotificationDigest:self eventType:0 timestamp:a3];
    loggingStream = self->_loggingStream;
    if (loggingStream)
    {
      v7 = v5;
      loggingStream = [(ATXUserNotificationDigestBiomeStream *)loggingStream sendEvent:v5];
      v5 = v7;
    }

    MEMORY[0x1EEE66BB8](loggingStream, v5);
  }
}

- (void)logCollapsedPreviewWithTimestamp:(double)a3
{
  if (!self->_hasLoggedCollapsed)
  {
    self->_hasLoggedCollapsed = 1;
    v5 = [[ATXUserNotificationDigestLoggingEvent alloc] initWithNotificationDigest:self eventType:1 timestamp:a3];
    loggingStream = self->_loggingStream;
    if (loggingStream)
    {
      v7 = v5;
      loggingStream = [(ATXUserNotificationDigestBiomeStream *)loggingStream sendEvent:v5];
      v5 = v7;
    }

    MEMORY[0x1EEE66BB8](loggingStream, v5);
  }
}

- (void)logUpcomingViewWithTimestamp:(double)a3
{
  if (!self->_hasLoggedUpcoming)
  {
    self->_hasLoggedUpcoming = 1;
    v5 = [[ATXUserNotificationDigestLoggingEvent alloc] initWithNotificationDigest:self eventType:2 timestamp:a3];
    loggingStream = self->_loggingStream;
    if (loggingStream)
    {
      v7 = v5;
      loggingStream = [(ATXUserNotificationDigestBiomeStream *)loggingStream sendEvent:v5];
      v5 = v7;
    }

    MEMORY[0x1EEE66BB8](loggingStream, v5);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXUserNotificationDigest allocWithZone:a3];
  v5 = [(ATXUserNotificationDigest *)self proto];
  v6 = [(ATXUserNotificationDigest *)v4 initWithProto:v5];

  return v6;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBUserNotificationDigest alloc] initFromJSON:v4];

  v6 = [(ATXUserNotificationDigest *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(ATXUserNotificationDigest *)self proto];
  v3 = [v2 jsonRepresentation];

  return v3;
}

- (ATXUserNotificationDigest)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBUserNotificationDigest alloc] initWithData:v4];

    self = [(ATXUserNotificationDigest *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXUserNotificationDigest *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXUserNotificationDigest)initWithProto:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = ATXUserNotificationDigest;
  v5 = [(ATXUserNotificationDigest *)&v47 init];
  if (!v5)
  {
LABEL_33:
    v12 = v5;
    goto LABEL_34;
  }

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [v6 messageGroups];
      if (v7)
      {
        v8 = [v6 messageGroups];
        v9 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_51];
        messageGroups = v5->_messageGroups;
        v5->_messageGroups = v9;
      }

      else
      {
        v8 = v5->_messageGroups;
        v5->_messageGroups = MEMORY[0x1E695E0F0];
      }

      v13 = [v6 highlightedGroups];
      if (v13)
      {
        v14 = [v6 highlightedGroups];
        v15 = [v14 _pas_mappedArrayWithTransform:&__block_literal_global_53];
        highlightedGroups = v5->_highlightedGroups;
        v5->_highlightedGroups = v15;
      }

      else
      {
        v14 = v5->_highlightedGroups;
        v5->_highlightedGroups = MEMORY[0x1E695E0F0];
      }

      v17 = [v6 rankedGroups];
      if (v17)
      {
        v18 = [v6 rankedGroups];
        v19 = [v18 _pas_mappedArrayWithTransform:&__block_literal_global_55];
        rankedGroups = v5->_rankedGroups;
        v5->_rankedGroups = v19;
      }

      else
      {
        v18 = v5->_rankedGroups;
        v5->_rankedGroups = MEMORY[0x1E695E0F0];
      }

      v21 = [v6 appDigests];
      if (v21)
      {
        v22 = [v6 appDigests];
        v23 = [v22 _pas_mappedArrayWithTransform:&__block_literal_global_58];
        appDigests = v5->_appDigests;
        v5->_appDigests = v23;
      }

      else
      {
        v22 = v5->_appDigests;
        v5->_appDigests = MEMORY[0x1E695E0F0];
      }

      [v6 timestamp];
      v5->_creationTimestamp = v25;
      v26 = objc_alloc(MEMORY[0x1E696AFB0]);
      v27 = [v6 uuid];
      v28 = [v26 initWithUUIDString:v27];
      uuid = v5->_uuid;
      v5->_uuid = v28;

      v30 = [v6 rankerId];
      rankerId = v5->_rankerId;
      v5->_rankerId = v30;

      v32 = [v6 modeId];
      modeIdString = v5->_modeIdString;
      v5->_modeIdString = v32;

      v34 = [v6 sharedEngagementTracker];

      if (v34)
      {
        v35 = [v6 sharedEngagementTracker];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v37 = [ATXSharedDigestEngagementTrackingMetrics alloc];
          v38 = [v6 sharedEngagementTracker];
          v39 = [(ATXSharedDigestEngagementTrackingMetrics *)v37 initWithProto:v38];
          [(ATXUserNotificationDigest *)v5 setDigestEngagementTrackingMetrics:v39];
        }

        else
        {
          v38 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            [ATXMissedNotificationRanking initWithProto:];
          }
        }
      }

      v40 = [v6 digestTimeline];

      if (v40)
      {
        v41 = [v6 digestTimeline];
        objc_opt_class();
        v42 = objc_opt_isKindOfClass();

        if (v42)
        {
          v43 = [ATXDigestTimeline alloc];
          v44 = [v6 digestTimeline];
          v45 = [(ATXDigestTimeline *)v43 initWithProto:v44];
          [(ATXUserNotificationDigest *)v5 setDigestTimeline:v45];
        }

        else
        {
          v44 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
          {
            [ATXMissedNotificationRanking initWithProto:];
          }
        }
      }

      goto LABEL_33;
    }

    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXMissedNotificationRanking initWithProto:];
    }
  }

  v12 = 0;
LABEL_34:

  return v12;
}

ATXUserNotificationDigestNotificationGroup *__43__ATXUserNotificationDigest_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXUserNotificationDigestNotificationGroup alloc] initWithProto:v2];

  return v3;
}

ATXUserNotificationDigestNotificationGroup *__43__ATXUserNotificationDigest_initWithProto___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXUserNotificationDigestNotificationGroup alloc] initWithProto:v2];

  return v3;
}

ATXUserNotificationDigestNotificationGroup *__43__ATXUserNotificationDigest_initWithProto___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXUserNotificationDigestNotificationGroup alloc] initWithProto:v2];

  return v3;
}

ATXUserNotificationAppDigest *__43__ATXUserNotificationDigest_initWithProto___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXUserNotificationAppDigest alloc] initWithProto:v2];

  return v3;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setTimestamp:self->_creationTimestamp];
  v4 = [(NSUUID *)self->_uuid UUIDString];
  [v3 setUuid:v4];

  [v3 setRankerId:self->_rankerId];
  [v3 setModeId:self->_modeIdString];
  v5 = [(ATXUserNotificationDigest *)self digestEngagementTrackingMetrics];
  v6 = [v5 proto];
  [v3 setSharedEngagementTracker:v6];

  v7 = [(ATXUserNotificationDigest *)self digestTimeline];
  v8 = [v7 proto];
  [v3 setDigestTimeline:v8];

  v9 = [(NSArray *)self->_messageGroups _pas_mappedArrayWithTransform:&__block_literal_global_66];
  v10 = objc_opt_new();
  [v3 setMessageGroups:v10];

  if (v9 && [v9 count])
  {
    v11 = [v3 messageGroups];
    [v11 addObjectsFromArray:v9];
  }

  v12 = [(NSArray *)self->_highlightedGroups _pas_mappedArrayWithTransform:&__block_literal_global_68_0];
  v13 = objc_opt_new();
  [v3 setHighlightedGroups:v13];

  if (v12 && [v12 count])
  {
    v14 = [v3 highlightedGroups];
    [v14 addObjectsFromArray:v12];
  }

  v15 = [(NSArray *)self->_rankedGroups _pas_mappedArrayWithTransform:&__block_literal_global_70_0];
  v16 = objc_opt_new();
  [v3 setRankedGroups:v16];

  if (v15 && [v15 count])
  {
    v17 = [v3 rankedGroups];
    [v17 addObjectsFromArray:v15];
  }

  v18 = [(NSArray *)self->_appDigests _pas_mappedArrayWithTransform:&__block_literal_global_73];
  v19 = [v18 mutableCopy];
  [v3 setAppDigests:v19];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXUserNotificationDigest *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXUserNotificationDigest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUserNotificationDigest *)self initWithProtoData:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
    v8 = +[_ATXNotificationGroupBaseRanker rankerId];
    [v7 setRankerId:v8];
  }

  else if (a4 == 2)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXUserNotificationDigest *)self jsonDict];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (void)allNotificationIds
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_1BF549000, log, OS_LOG_TYPE_FAULT, "User notification does not have a UUID", buf, 2u);
}

@end