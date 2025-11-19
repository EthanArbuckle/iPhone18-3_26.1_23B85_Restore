@interface ATXMissedNotificationRanking
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXMissedNotificationRanking)initWithCoder:(id)a3;
- (ATXMissedNotificationRanking)initWithGroups:(id)a3 modeId:(id)a4 ranker:(id)a5;
- (ATXMissedNotificationRanking)initWithNotificationArrays:(id)a3 modeId:(id)a4 ranker:(id)a5;
- (ATXMissedNotificationRanking)initWithNotifications:(id)a3 modeId:(id)a4;
- (ATXMissedNotificationRanking)initWithNotifications:(id)a3 modeId:(id)a4 ranker:(id)a5;
- (ATXMissedNotificationRanking)initWithProto:(id)a3;
- (ATXMissedNotificationRanking)initWithProtoData:(id)a3;
- (BOOL)doesRankingShareContentWithOtherRanking:(id)a3;
- (id)allNotificationIds;
- (id)encodeAsProto;
- (id)initFromJSON:(id)a3;
- (id)json;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
- (void)logCollapsedPreview;
- (void)logCollapsedViewWithIsUpcoming:(BOOL)a3;
- (void)logExpandedViewWithIsUpcoming:(BOOL)a3;
- (void)logRemoval;
- (void)logView;
@end

@implementation ATXMissedNotificationRanking

- (ATXMissedNotificationRanking)initWithNotifications:(id)a3 modeId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(ATXMissedNotificationRanking *)self initWithNotifications:v7 modeId:v6 ranker:v8];

  return v9;
}

- (ATXMissedNotificationRanking)initWithNotifications:(id)a3 modeId:(id)a4 ranker:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [ATXUserNotificationDigestNotificationGroup groupsFromNotifications:a3 modeId:v9];
  v11 = [(ATXMissedNotificationRanking *)self initWithGroups:v10 modeId:v9 ranker:v8];

  return v11;
}

- (ATXMissedNotificationRanking)initWithNotificationArrays:(id)a3 modeId:(id)a4 ranker:(id)a5
{
  v8 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__ATXMissedNotificationRanking_initWithNotificationArrays_modeId_ranker___block_invoke;
  v14[3] = &unk_1E80C18B8;
  v15 = v8;
  v9 = v8;
  v10 = a5;
  v11 = [a3 _pas_mappedArrayWithTransform:v14];
  v12 = [(ATXMissedNotificationRanking *)self initWithGroups:v11 modeId:v9 ranker:v10];

  return v12;
}

ATXUserNotificationDigestNotificationGroup *__73__ATXMissedNotificationRanking_initWithNotificationArrays_modeId_ranker___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ATXUserNotificationDigestNotificationGroup alloc] initWithNotifications:v3 modeId:*(a1 + 32)];

  return v4;
}

- (ATXMissedNotificationRanking)initWithGroups:(id)a3 modeId:(id)a4 ranker:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = ATXMissedNotificationRanking;
  v11 = [(ATXMissedNotificationRanking *)&v21 init];
  if (v11)
  {
    v12 = [v10 rankNotificationGroups:v8 modeId:v9];
    rankedGroups = v11->_rankedGroups;
    v11->_rankedGroups = v12;

    v11->_creationTimestamp = CFAbsoluteTimeGetCurrent();
    v14 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v11->_uuid;
    v11->_uuid = v14;

    v16 = [objc_opt_class() rankerId];
    rankerId = v11->_rankerId;
    v11->_rankerId = v16;

    v18 = [v9 copy];
    modeIdString = v11->_modeIdString;
    v11->_modeIdString = v18;
  }

  return v11;
}

- (BOOL)doesRankingShareContentWithOtherRanking:(id)a3
{
  v4 = a3;
  v5 = [(ATXMissedNotificationRanking *)self allNotificationIds];
  v6 = [v4 allNotificationIds];

  LOBYTE(v4) = [v5 intersectsSet:v6];
  return v4;
}

- (id)allNotificationIds
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(ATXMissedNotificationRanking *)self rankedGroups];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [v9 rankedNotifications];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v17 + 1) + 8 * j) uuid];
              [v3 addObject:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)logCollapsedPreview
{
  if (!self->_hasLoggedCollapsed)
  {
    self->_hasLoggedCollapsed = 1;
    v4 = [ATXMissedNotificationRankingLoggingEvent alloc];
    v5 = [MEMORY[0x1E695DF00] now];
    [v5 timeIntervalSinceReferenceDate];
    v7 = [(ATXMissedNotificationRankingLoggingEvent *)v4 initWithMissedNotificationRanking:self eventType:1 timestamp:?];

    loggingStream = self->_loggingStream;
    if (loggingStream)
    {
      [(ATXMissedNotificationRankingBiomeStream *)loggingStream sendEvent:v7];
    }
  }
}

- (void)logView
{
  if (!self->_hasLoggedExpanded)
  {
    self->_hasLoggedExpanded = 1;
    v4 = [ATXMissedNotificationRankingLoggingEvent alloc];
    v5 = [MEMORY[0x1E695DF00] now];
    [v5 timeIntervalSinceReferenceDate];
    v7 = [(ATXMissedNotificationRankingLoggingEvent *)v4 initWithMissedNotificationRanking:self eventType:0 timestamp:?];

    loggingStream = self->_loggingStream;
    if (loggingStream)
    {
      [(ATXMissedNotificationRankingBiomeStream *)loggingStream sendEvent:v7];
    }
  }
}

- (void)logExpandedViewWithIsUpcoming:(BOOL)a3
{
  if (a3)
  {
    if (self->_hasLoggedUpcomingExpanded)
    {
      return;
    }

    self->_hasLoggedUpcomingExpanded = 1;
    v4 = [ATXMissedNotificationRankingLoggingEvent alloc];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v4;
    v6 = self;
    v7 = 2;
  }

  else
  {
    if (self->_hasLoggedDeliveredExpanded)
    {
      return;
    }

    self->_hasLoggedDeliveredExpanded = 1;
    v8 = [ATXMissedNotificationRankingLoggingEvent alloc];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v8;
    v6 = self;
    v7 = 3;
  }

  v9 = [(ATXMissedNotificationRankingLoggingEvent *)v5 initWithMissedNotificationRanking:v6 eventType:v7 timestamp:?];
  loggingStream = self->_loggingStream;
  if (loggingStream)
  {
    v11 = v9;
    loggingStream = [(ATXMissedNotificationRankingBiomeStream *)loggingStream sendEvent:v9];
    v9 = v11;
  }

  MEMORY[0x1EEE66BB8](loggingStream, v9);
}

- (void)logCollapsedViewWithIsUpcoming:(BOOL)a3
{
  if (a3)
  {
    if (self->_hasLoggedUpcomingCollapsed)
    {
      return;
    }

    self->_hasLoggedUpcomingCollapsed = 1;
    v4 = [ATXMissedNotificationRankingLoggingEvent alloc];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v4;
    v6 = self;
    v7 = 4;
  }

  else
  {
    if (self->_hasLoggedDeliveredCollapsed)
    {
      return;
    }

    self->_hasLoggedDeliveredCollapsed = 1;
    v8 = [ATXMissedNotificationRankingLoggingEvent alloc];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v8;
    v6 = self;
    v7 = 5;
  }

  v9 = [(ATXMissedNotificationRankingLoggingEvent *)v5 initWithMissedNotificationRanking:v6 eventType:v7 timestamp:?];
  loggingStream = self->_loggingStream;
  if (loggingStream)
  {
    v11 = v9;
    loggingStream = [(ATXMissedNotificationRankingBiomeStream *)loggingStream sendEvent:v9];
    v9 = v11;
  }

  MEMORY[0x1EEE66BB8](loggingStream, v9);
}

- (void)logRemoval
{
  if (!self->_hasLoggedRemoval)
  {
    self->_hasLoggedRemoval = 1;
    v4 = [ATXMissedNotificationRankingLoggingEvent alloc];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = [(ATXMissedNotificationRankingLoggingEvent *)v4 initWithMissedNotificationRanking:self eventType:6 timestamp:?];
    loggingStream = self->_loggingStream;
    if (loggingStream)
    {
      v7 = v5;
      loggingStream = [(ATXMissedNotificationRankingBiomeStream *)loggingStream sendEvent:v5];
      v5 = v7;
    }

    MEMORY[0x1EEE66BB8](loggingStream, v5);
  }
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBMissedNotificationRanking alloc] initFromJSON:v4];

  v6 = [(ATXMissedNotificationRanking *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(ATXMissedNotificationRanking *)self proto];
  v3 = [v2 jsonRepresentation];

  return v3;
}

- (ATXMissedNotificationRanking)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBMissedNotificationRanking alloc] initWithData:v4];

    self = [(ATXMissedNotificationRanking *)self initWithProto:v5];
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
  v2 = [(ATXMissedNotificationRanking *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXMissedNotificationRanking)initWithProto:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = ATXMissedNotificationRanking;
  v5 = [(ATXMissedNotificationRanking *)&v35 init];
  if (!v5)
  {
LABEL_24:
    v12 = v5;
    goto LABEL_25;
  }

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [v6 rankedGroups];
      if (v7)
      {
        v8 = [v6 rankedGroups];
        v9 = [v8 _pas_mappedArrayWithTransform:&__block_literal_global_17];
        rankedGroups = v5->_rankedGroups;
        v5->_rankedGroups = v9;
      }

      else
      {
        v8 = v5->_rankedGroups;
        v5->_rankedGroups = MEMORY[0x1E695E0F0];
      }

      [v6 timestamp];
      v5->_creationTimestamp = v13;
      v14 = objc_alloc(MEMORY[0x1E696AFB0]);
      v15 = [v6 uuid];
      v16 = [v14 initWithUUIDString:v15];
      uuid = v5->_uuid;
      v5->_uuid = v16;

      v18 = [v6 rankerId];
      rankerId = v5->_rankerId;
      v5->_rankerId = v18;

      v20 = [v6 modeId];
      modeIdString = v5->_modeIdString;
      v5->_modeIdString = v20;

      v22 = [v6 sharedEngagementTracker];

      if (v22)
      {
        v23 = [v6 sharedEngagementTracker];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v25 = [ATXSharedDigestEngagementTrackingMetrics alloc];
          v26 = [v6 sharedEngagementTracker];
          v27 = [(ATXSharedDigestEngagementTrackingMetrics *)v25 initWithProto:v26];
          [(ATXMissedNotificationRanking *)v5 setDigestEngagementTrackingMetrics:v27];
        }

        else
        {
          v26 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            [ATXMissedNotificationRanking initWithProto:];
          }
        }
      }

      v28 = [v6 digestTimeline];

      if (v28)
      {
        v29 = [v6 digestTimeline];
        objc_opt_class();
        v30 = objc_opt_isKindOfClass();

        if (v30)
        {
          v31 = [ATXDigestTimeline alloc];
          v32 = [v6 digestTimeline];
          v33 = [(ATXDigestTimeline *)v31 initWithProto:v32];
          [(ATXMissedNotificationRanking *)v5 setDigestTimeline:v33];
        }

        else
        {
          v32 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            [ATXMissedNotificationRanking initWithProto:];
          }
        }
      }

      goto LABEL_24;
    }

    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXMissedNotificationRanking initWithProto:];
    }
  }

  v12 = 0;
LABEL_25:

  return v12;
}

ATXUserNotificationDigestNotificationGroup *__46__ATXMissedNotificationRanking_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXUserNotificationDigestNotificationGroup alloc] initWithProto:v2];

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
  v5 = [(ATXMissedNotificationRanking *)self digestEngagementTrackingMetrics];
  v6 = [v5 proto];
  [v3 setSharedEngagementTracker:v6];

  v7 = [(ATXMissedNotificationRanking *)self digestTimeline];
  v8 = [v7 proto];
  [v3 setDigestTimeline:v8];

  v9 = [(NSArray *)self->_rankedGroups _pas_mappedArrayWithTransform:&__block_literal_global_33];
  v10 = objc_opt_new();
  [v3 setRankedGroups:v10];

  if (v9 && [v9 count])
  {
    v11 = [v3 rankedGroups];
    [v11 addObjectsFromArray:v9];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXMissedNotificationRanking *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXMissedNotificationRanking)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXMissedNotificationRanking *)self initWithProtoData:v5];
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
  v3 = [(ATXMissedNotificationRanking *)self jsonDict];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (void)initWithProto:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0(&dword_1BF549000, v2, v3, "Unable to construct class %@ from ProtoBuf object", v4, v5, v6, v7, 2u);
}

@end