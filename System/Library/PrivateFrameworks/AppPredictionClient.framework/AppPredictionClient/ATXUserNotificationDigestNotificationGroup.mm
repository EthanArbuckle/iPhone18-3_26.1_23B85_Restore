@interface ATXUserNotificationDigestNotificationGroup
+ (id)groupsFromNotifications:(id)notifications modeId:(id)id;
+ (id)groupsFromProtos:(id)protos;
+ (id)protosFromGroups:(id)groups;
- (ATXUserNotificationDigestNotificationGroup)initWithCoder:(id)coder;
- (ATXUserNotificationDigestNotificationGroup)initWithNotifications:(id)notifications modeId:(id)id;
- (ATXUserNotificationDigestNotificationGroup)initWithNotifications:(id)notifications useDigestOrder:(BOOL)order;
- (ATXUserNotificationDigestNotificationGroup)initWithProto:(id)proto;
- (ATXUserNotificationDigestNotificationGroup)initWithProtoData:(id)data;
- (BOOL)hasPreviewableAttachment;
- (BOOL)isCommunicationGroup;
- (NSString)bundleId;
- (double)appSpecifiedScore;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUserNotificationDigestNotificationGroup

+ (id)groupsFromNotifications:(id)notifications modeId:(id)id
{
  v29 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  idCopy = id;
  v7 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = notificationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        groupId = [v13 groupId];
        v15 = [v7 objectForKeyedSubscript:groupId];

        if (!v15)
        {
          v16 = objc_opt_new();
          [v7 setObject:v16 forKeyedSubscript:groupId];
        }

        v17 = [v7 objectForKeyedSubscript:groupId];
        [v17 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  allValues = [v7 allValues];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __77__ATXUserNotificationDigestNotificationGroup_groupsFromNotifications_modeId___block_invoke;
  v22[3] = &unk_1E80C18B8;
  v23 = idCopy;
  v19 = idCopy;
  v20 = [allValues _pas_mappedArrayWithTransform:v22];

  return v20;
}

ATXUserNotificationDigestNotificationGroup *__77__ATXUserNotificationDigestNotificationGroup_groupsFromNotifications_modeId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ATXUserNotificationDigestNotificationGroup alloc] initWithNotifications:v3 modeId:*(a1 + 32)];

  return v4;
}

- (ATXUserNotificationDigestNotificationGroup)initWithNotifications:(id)notifications useDigestOrder:(BOOL)order
{
  orderCopy = order;
  v65 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  v58.receiver = self;
  v58.super_class = ATXUserNotificationDigestNotificationGroup;
  v7 = [(ATXUserNotificationDigestNotificationGroup *)&v58 init];
  if (v7)
  {
    v8 = notificationsCopy == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && [notificationsCopy count])
  {
    if (orderCopy && ([notificationsCopy firstObject], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isMessage"), v9, (v10 & 1) == 0))
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v13 = notificationsCopy;
      v14 = [v13 countByEnumeratingWithState:&v54 objects:v64 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v17 = *v55;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v55 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v19 = *(*(&v54 + 1) + 8 * i);
            if ([v19 hasPreviewableAttachment])
            {
              if (!v16 || ([v16 appSpecifiedScore], v21 = v20, objc_msgSend(v19, "appSpecifiedScore"), v21 < v22))
              {
                v23 = v19;

                v16 = v23;
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v54 objects:v64 count:16];
        }

        while (v15);
      }

      else
      {
        v16 = 0;
      }

      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __83__ATXUserNotificationDigestNotificationGroup_initWithNotifications_useDigestOrder___block_invoke;
      v52[3] = &unk_1E80C64E8;
      v12 = v16;
      v53 = v12;
      v24 = [v13 _pas_filteredArrayWithTest:v52];
      v25 = [v24 sortedArrayUsingComparator:&__block_literal_global_103];
      if (v12)
      {
        v63 = v12;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
      }

      else
      {
        v26 = MEMORY[0x1E695E0F0];
      }

      v27 = [v26 arrayByAddingObjectsFromArray:v25];
      rankedNotifications = v7->_rankedNotifications;
      v7->_rankedNotifications = v27;
    }

    else
    {
      v11 = [notificationsCopy sortedArrayUsingComparator:&__block_literal_global_20_1];
      v12 = v7->_rankedNotifications;
      v7->_rankedNotifications = v11;
    }

    v29 = MEMORY[0x1E695DFD8];
    v47 = MEMORY[0x1E69E9820];
    v48 = 3221225472;
    v49 = __83__ATXUserNotificationDigestNotificationGroup_initWithNotifications_useDigestOrder___block_invoke_4;
    v50 = &unk_1E80C6530;
    v30 = v7;
    v51 = v30;
    v31 = [notificationsCopy _pas_mappedArrayWithTransform:&v47];
    v32 = [v29 setWithArray:{v31, v47, v48, v49, v50}];

    if ([v32 count] != 1)
    {
      v33 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = [v32 count];
        *buf = 138412546;
        v60 = v35;
        v61 = 2048;
        v62 = v36;
        _os_log_impl(&dword_1BF549000, v33, OS_LOG_TYPE_INFO, "[%@] Expected 1 bundleId in notification stack, but found %lu. Proceeding with first bundleId.", buf, 0x16u);
      }
    }

    v37 = [(NSArray *)v30->_rankedNotifications objectAtIndexedSubscript:0];
    groupId = [v37 groupId];
    groupId = v30->_groupId;
    v30->_groupId = groupId;

    title = [v37 title];
    title = v30->_title;
    v30->_title = title;

    subtitle = [v37 subtitle];
    groupDescription = v30->_groupDescription;
    v30->_groupDescription = subtitle;

    uuid = [v37 uuid];
    representativeNotificationUUID = v30->_representativeNotificationUUID;
    v30->_representativeNotificationUUID = uuid;
  }

  return v7;
}

uint64_t __83__ATXUserNotificationDigestNotificationGroup_initWithNotifications_useDigestOrder___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  [a3 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

id __83__ATXUserNotificationDigestNotificationGroup_initWithNotifications_useDigestOrder___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 bundleID];

  if (!v3)
  {
    v4 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1BF549000, v4, OS_LOG_TYPE_INFO, "[%@] Found nil bundleId in notification stack", &v9, 0xCu);
    }
  }

  v7 = [v2 bundleID];

  return v7;
}

- (ATXUserNotificationDigestNotificationGroup)initWithNotifications:(id)notifications modeId:(id)id
{
  notificationsCopy = notifications;
  idCopy = id;
  v23.receiver = self;
  v23.super_class = ATXUserNotificationDigestNotificationGroup;
  v8 = [(ATXUserNotificationDigestNotificationGroup *)&v23 init];
  if (v8)
  {
    v9 = notificationsCopy == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && [notificationsCopy count])
  {
    v10 = [notificationsCopy sortedArrayUsingComparator:&__block_literal_global_25_1];
    rankedNotifications = v8->_rankedNotifications;
    v8->_rankedNotifications = v10;

    v12 = [(NSArray *)v8->_rankedNotifications objectAtIndexedSubscript:0];
    groupId = [v12 groupId];
    groupId = v8->_groupId;
    v8->_groupId = groupId;

    title = [v12 title];
    title = v8->_title;
    v8->_title = title;

    subtitle = [v12 subtitle];
    groupDescription = v8->_groupDescription;
    v8->_groupDescription = subtitle;

    [v12 finalDigestScoreForMode:idCopy];
    v8->_priority = v19;
    uuid = [v12 uuid];
    representativeNotificationUUID = v8->_representativeNotificationUUID;
    v8->_representativeNotificationUUID = uuid;
  }

  return v8;
}

- (NSString)bundleId
{
  firstObject = [(NSArray *)self->_rankedNotifications firstObject];
  bundleID = [firstObject bundleID];

  return bundleID;
}

- (double)appSpecifiedScore
{
  rankedNotifications = [(ATXUserNotificationDigestNotificationGroup *)self rankedNotifications];
  firstObject = [rankedNotifications firstObject];
  if (firstObject)
  {
    rankedNotifications2 = [(ATXUserNotificationDigestNotificationGroup *)self rankedNotifications];
    firstObject2 = [rankedNotifications2 firstObject];
    [firstObject2 appSpecifiedScore];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (BOOL)isCommunicationGroup
{
  rankedNotifications = [(ATXUserNotificationDigestNotificationGroup *)self rankedNotifications];
  v4 = [rankedNotifications count];

  if (!v4)
  {
    return 0;
  }

  rankedNotifications2 = [(ATXUserNotificationDigestNotificationGroup *)self rankedNotifications];
  v6 = [rankedNotifications2 objectAtIndexedSubscript:0];
  isMessage = [v6 isMessage];

  return isMessage;
}

- (BOOL)hasPreviewableAttachment
{
  rankedNotifications = [(ATXUserNotificationDigestNotificationGroup *)self rankedNotifications];
  firstObject = [rankedNotifications firstObject];
  hasPreviewableAttachment = [firstObject hasPreviewableAttachment];

  return hasPreviewableAttachment;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBUserNotificationDigestNotificationGroup alloc] initFromJSON:nCopy];

  v6 = [(ATXUserNotificationDigestNotificationGroup *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXUserNotificationDigestNotificationGroup *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

- (ATXUserNotificationDigestNotificationGroup)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBUserNotificationDigestNotificationGroup alloc] initWithData:dataCopy];

    self = [(ATXUserNotificationDigestNotificationGroup *)self initWithProto:v5];
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
  proto = [(ATXUserNotificationDigestNotificationGroup *)self proto];
  data = [proto data];

  return data;
}

+ (id)groupsFromProtos:(id)protos
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__ATXUserNotificationDigestNotificationGroup_groupsFromProtos___block_invoke;
  v5[3] = &__block_descriptor_40_e63___ATXUserNotificationDigestNotificationGroup_16__0__PBCodable_8l;
  v5[4] = self;
  v3 = [protos _pas_mappedArrayWithTransform:v5];

  return v3;
}

id __63__ATXUserNotificationDigestNotificationGroup_groupsFromProtos___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[v2 alloc] initWithProto:v3];

  return v4;
}

+ (id)protosFromGroups:(id)groups
{
  v3 = [groups _pas_mappedArrayWithTransform:&__block_literal_global_30];
  v4 = [v3 mutableCopy];

  return v4;
}

- (ATXUserNotificationDigestNotificationGroup)initWithProto:(id)proto
{
  protoCopy = proto;
  v30.receiver = self;
  v30.super_class = ATXUserNotificationDigestNotificationGroup;
  v5 = [(ATXUserNotificationDigestNotificationGroup *)&v30 init];
  if (!v5)
  {
LABEL_15:
    v28 = v5;
    goto LABEL_16;
  }

  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = protoCopy;
      rankedNotifications = [v6 rankedNotifications];
      v8 = [rankedNotifications _pas_mappedArrayWithTransform:&__block_literal_global_33_2];
      rankedNotifications = v5->_rankedNotifications;
      v5->_rankedNotifications = v8;

      groupId = [v6 groupId];
      groupId = v5->_groupId;
      v5->_groupId = groupId;

      title = [v6 title];
      title = v5->_title;
      v5->_title = title;

      groupDescription = [v6 groupDescription];
      groupDescription = v5->_groupDescription;
      v5->_groupDescription = groupDescription;

      [v6 priority];
      v5->_priority = v16;
      v17 = objc_alloc(MEMORY[0x1E696AFB0]);
      representativeNotificationUUID = [v6 representativeNotificationUUID];
      v19 = [v17 initWithUUIDString:representativeNotificationUUID];
      representativeNotificationUUID = v5->_representativeNotificationUUID;
      v5->_representativeNotificationUUID = v19;

      sharedEngagementTracker = [v6 sharedEngagementTracker];

      if (sharedEngagementTracker)
      {
        sharedEngagementTracker2 = [v6 sharedEngagementTracker];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v24 = [ATXSharedDigestEngagementTrackingMetrics alloc];
          sharedEngagementTracker3 = [v6 sharedEngagementTracker];
          v26 = [(ATXSharedDigestEngagementTrackingMetrics *)v24 initWithProto:sharedEngagementTracker3];
          [(ATXUserNotificationDigestNotificationGroup *)v5 setDigestEngagementTrackingMetrics:v26];
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

      goto LABEL_15;
    }

    v27 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      [ATXMissedNotificationRanking initWithProto:];
    }
  }

  v28 = 0;
LABEL_16:

  return v28;
}

ATXUserNotification *__60__ATXUserNotificationDigestNotificationGroup_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXUserNotification alloc] initWithProto:v2];

  return v3;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setGroupId:self->_groupId];
  [v3 setTitle:self->_title];
  [v3 setGroupDescription:self->_groupDescription];
  [v3 setPriority:self->_priority];
  uUIDString = [(NSUUID *)self->_representativeNotificationUUID UUIDString];
  [v3 setRepresentativeNotificationUUID:uUIDString];

  digestEngagementTrackingMetrics = [(ATXUserNotificationDigestNotificationGroup *)self digestEngagementTrackingMetrics];
  proto = [digestEngagementTrackingMetrics proto];
  [v3 setSharedEngagementTracker:proto];

  v7 = [(NSArray *)self->_rankedNotifications _pas_mappedArrayWithTransform:&__block_literal_global_40_1];
  v8 = objc_opt_new();
  [v3 setRankedNotifications:v8];

  if (v7 && [v7 count])
  {
    rankedNotifications = [v3 rankedNotifications];
    [rankedNotifications addObjectsFromArray:v7];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXUserNotificationDigestNotificationGroup *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXUserNotificationDigestNotificationGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUserNotificationDigestNotificationGroup *)self initWithProtoData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end