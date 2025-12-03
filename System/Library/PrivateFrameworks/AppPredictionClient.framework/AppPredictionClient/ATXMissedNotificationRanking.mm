@interface ATXMissedNotificationRanking
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXMissedNotificationRanking)initWithCoder:(id)coder;
- (ATXMissedNotificationRanking)initWithGroups:(id)groups modeId:(id)id ranker:(id)ranker;
- (ATXMissedNotificationRanking)initWithNotificationArrays:(id)arrays modeId:(id)id ranker:(id)ranker;
- (ATXMissedNotificationRanking)initWithNotifications:(id)notifications modeId:(id)id;
- (ATXMissedNotificationRanking)initWithNotifications:(id)notifications modeId:(id)id ranker:(id)ranker;
- (ATXMissedNotificationRanking)initWithProto:(id)proto;
- (ATXMissedNotificationRanking)initWithProtoData:(id)data;
- (BOOL)doesRankingShareContentWithOtherRanking:(id)ranking;
- (id)allNotificationIds;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)json;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
- (void)logCollapsedPreview;
- (void)logCollapsedViewWithIsUpcoming:(BOOL)upcoming;
- (void)logExpandedViewWithIsUpcoming:(BOOL)upcoming;
- (void)logRemoval;
- (void)logView;
@end

@implementation ATXMissedNotificationRanking

- (ATXMissedNotificationRanking)initWithNotifications:(id)notifications modeId:(id)id
{
  idCopy = id;
  notificationsCopy = notifications;
  v8 = objc_opt_new();
  v9 = [(ATXMissedNotificationRanking *)self initWithNotifications:notificationsCopy modeId:idCopy ranker:v8];

  return v9;
}

- (ATXMissedNotificationRanking)initWithNotifications:(id)notifications modeId:(id)id ranker:(id)ranker
{
  rankerCopy = ranker;
  idCopy = id;
  v10 = [ATXUserNotificationDigestNotificationGroup groupsFromNotifications:notifications modeId:idCopy];
  v11 = [(ATXMissedNotificationRanking *)self initWithGroups:v10 modeId:idCopy ranker:rankerCopy];

  return v11;
}

- (ATXMissedNotificationRanking)initWithNotificationArrays:(id)arrays modeId:(id)id ranker:(id)ranker
{
  idCopy = id;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__ATXMissedNotificationRanking_initWithNotificationArrays_modeId_ranker___block_invoke;
  v14[3] = &unk_1E80C18B8;
  v15 = idCopy;
  v9 = idCopy;
  rankerCopy = ranker;
  v11 = [arrays _pas_mappedArrayWithTransform:v14];
  v12 = [(ATXMissedNotificationRanking *)self initWithGroups:v11 modeId:v9 ranker:rankerCopy];

  return v12;
}

ATXUserNotificationDigestNotificationGroup *__73__ATXMissedNotificationRanking_initWithNotificationArrays_modeId_ranker___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ATXUserNotificationDigestNotificationGroup alloc] initWithNotifications:v3 modeId:*(a1 + 32)];

  return v4;
}

- (ATXMissedNotificationRanking)initWithGroups:(id)groups modeId:(id)id ranker:(id)ranker
{
  groupsCopy = groups;
  idCopy = id;
  rankerCopy = ranker;
  v21.receiver = self;
  v21.super_class = ATXMissedNotificationRanking;
  v11 = [(ATXMissedNotificationRanking *)&v21 init];
  if (v11)
  {
    v12 = [rankerCopy rankNotificationGroups:groupsCopy modeId:idCopy];
    rankedGroups = v11->_rankedGroups;
    v11->_rankedGroups = v12;

    v11->_creationTimestamp = CFAbsoluteTimeGetCurrent();
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v11->_uuid;
    v11->_uuid = uUID;

    rankerId = [objc_opt_class() rankerId];
    rankerId = v11->_rankerId;
    v11->_rankerId = rankerId;

    v18 = [idCopy copy];
    modeIdString = v11->_modeIdString;
    v11->_modeIdString = v18;
  }

  return v11;
}

- (BOOL)doesRankingShareContentWithOtherRanking:(id)ranking
{
  rankingCopy = ranking;
  allNotificationIds = [(ATXMissedNotificationRanking *)self allNotificationIds];
  allNotificationIds2 = [rankingCopy allNotificationIds];

  LOBYTE(rankingCopy) = [allNotificationIds intersectsSet:allNotificationIds2];
  return rankingCopy;
}

- (id)allNotificationIds
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  rankedGroups = [(ATXMissedNotificationRanking *)self rankedGroups];
  v5 = [rankedGroups countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(rankedGroups);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        rankedNotifications = [v9 rankedNotifications];
        v11 = [rankedNotifications countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(rankedNotifications);
              }

              uuid = [*(*(&v17 + 1) + 8 * j) uuid];
              [v3 addObject:uuid];
            }

            v12 = [rankedNotifications countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [rankedGroups countByEnumeratingWithState:&v21 objects:v26 count:16];
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

- (void)logExpandedViewWithIsUpcoming:(BOOL)upcoming
{
  if (upcoming)
  {
    if (self->_hasLoggedUpcomingExpanded)
    {
      return;
    }

    self->_hasLoggedUpcomingExpanded = 1;
    v4 = [ATXMissedNotificationRankingLoggingEvent alloc];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v4;
    selfCopy2 = self;
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
    selfCopy2 = self;
    v7 = 3;
  }

  v9 = [(ATXMissedNotificationRankingLoggingEvent *)v5 initWithMissedNotificationRanking:selfCopy2 eventType:v7 timestamp:?];
  loggingStream = self->_loggingStream;
  if (loggingStream)
  {
    v11 = v9;
    loggingStream = [(ATXMissedNotificationRankingBiomeStream *)loggingStream sendEvent:v9];
    v9 = v11;
  }

  MEMORY[0x1EEE66BB8](loggingStream, v9);
}

- (void)logCollapsedViewWithIsUpcoming:(BOOL)upcoming
{
  if (upcoming)
  {
    if (self->_hasLoggedUpcomingCollapsed)
    {
      return;
    }

    self->_hasLoggedUpcomingCollapsed = 1;
    v4 = [ATXMissedNotificationRankingLoggingEvent alloc];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v4;
    selfCopy2 = self;
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
    selfCopy2 = self;
    v7 = 5;
  }

  v9 = [(ATXMissedNotificationRankingLoggingEvent *)v5 initWithMissedNotificationRanking:selfCopy2 eventType:v7 timestamp:?];
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

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBMissedNotificationRanking alloc] initFromJSON:nCopy];

  v6 = [(ATXMissedNotificationRanking *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXMissedNotificationRanking *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

- (ATXMissedNotificationRanking)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBMissedNotificationRanking alloc] initWithData:dataCopy];

    self = [(ATXMissedNotificationRanking *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXMissedNotificationRanking *)self proto];
  data = [proto data];

  return data;
}

- (ATXMissedNotificationRanking)initWithProto:(id)proto
{
  protoCopy = proto;
  v35.receiver = self;
  v35.super_class = ATXMissedNotificationRanking;
  v5 = [(ATXMissedNotificationRanking *)&v35 init];
  if (!v5)
  {
LABEL_24:
    v12 = v5;
    goto LABEL_25;
  }

  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = protoCopy;
      rankedGroups = [v6 rankedGroups];
      if (rankedGroups)
      {
        rankedGroups2 = [v6 rankedGroups];
        v9 = [rankedGroups2 _pas_mappedArrayWithTransform:&__block_literal_global_17];
        rankedGroups = v5->_rankedGroups;
        v5->_rankedGroups = v9;
      }

      else
      {
        rankedGroups2 = v5->_rankedGroups;
        v5->_rankedGroups = MEMORY[0x1E695E0F0];
      }

      [v6 timestamp];
      v5->_creationTimestamp = v13;
      v14 = objc_alloc(MEMORY[0x1E696AFB0]);
      uuid = [v6 uuid];
      v16 = [v14 initWithUUIDString:uuid];
      uuid = v5->_uuid;
      v5->_uuid = v16;

      rankerId = [v6 rankerId];
      rankerId = v5->_rankerId;
      v5->_rankerId = rankerId;

      modeId = [v6 modeId];
      modeIdString = v5->_modeIdString;
      v5->_modeIdString = modeId;

      sharedEngagementTracker = [v6 sharedEngagementTracker];

      if (sharedEngagementTracker)
      {
        sharedEngagementTracker2 = [v6 sharedEngagementTracker];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v25 = [ATXSharedDigestEngagementTrackingMetrics alloc];
          sharedEngagementTracker3 = [v6 sharedEngagementTracker];
          v27 = [(ATXSharedDigestEngagementTrackingMetrics *)v25 initWithProto:sharedEngagementTracker3];
          [(ATXMissedNotificationRanking *)v5 setDigestEngagementTrackingMetrics:v27];
        }

        else
        {
          sharedEngagementTracker3 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(sharedEngagementTracker3, OS_LOG_TYPE_FAULT))
          {
            [ATXMissedNotificationRanking initWithProto:];
          }
        }
      }

      digestTimeline = [v6 digestTimeline];

      if (digestTimeline)
      {
        digestTimeline2 = [v6 digestTimeline];
        objc_opt_class();
        v30 = objc_opt_isKindOfClass();

        if (v30)
        {
          v31 = [ATXDigestTimeline alloc];
          digestTimeline3 = [v6 digestTimeline];
          v33 = [(ATXDigestTimeline *)v31 initWithProto:digestTimeline3];
          [(ATXMissedNotificationRanking *)v5 setDigestTimeline:v33];
        }

        else
        {
          digestTimeline3 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(digestTimeline3, OS_LOG_TYPE_FAULT))
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
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [v3 setUuid:uUIDString];

  [v3 setRankerId:self->_rankerId];
  [v3 setModeId:self->_modeIdString];
  digestEngagementTrackingMetrics = [(ATXMissedNotificationRanking *)self digestEngagementTrackingMetrics];
  proto = [digestEngagementTrackingMetrics proto];
  [v3 setSharedEngagementTracker:proto];

  digestTimeline = [(ATXMissedNotificationRanking *)self digestTimeline];
  proto2 = [digestTimeline proto];
  [v3 setDigestTimeline:proto2];

  v9 = [(NSArray *)self->_rankedGroups _pas_mappedArrayWithTransform:&__block_literal_global_33];
  v10 = objc_opt_new();
  [v3 setRankedGroups:v10];

  if (v9 && [v9 count])
  {
    rankedGroups = [v3 rankedGroups];
    [rankedGroups addObjectsFromArray:v9];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXMissedNotificationRanking *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXMissedNotificationRanking)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXMissedNotificationRanking *)self initWithProtoData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
    v8 = +[_ATXNotificationGroupBaseRanker rankerId];
    [v7 setRankerId:v8];
  }

  else if (version == 2)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
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
  jsonDict = [(ATXMissedNotificationRanking *)self jsonDict];
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:0];

  return v4;
}

- (void)initWithProto:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0(&dword_1BF549000, v2, v3, "Unable to construct class %@ from ProtoBuf object", v4, v5, v6, v7, 2u);
}

@end