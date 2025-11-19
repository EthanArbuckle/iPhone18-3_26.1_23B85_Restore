@interface ATXUserNotificationDigestNotificationGroup
+ (id)groupsFromNotifications:(id)a3 modeId:(id)a4;
+ (id)groupsFromProtos:(id)a3;
+ (id)protosFromGroups:(id)a3;
- (ATXUserNotificationDigestNotificationGroup)initWithCoder:(id)a3;
- (ATXUserNotificationDigestNotificationGroup)initWithNotifications:(id)a3 modeId:(id)a4;
- (ATXUserNotificationDigestNotificationGroup)initWithNotifications:(id)a3 useDigestOrder:(BOOL)a4;
- (ATXUserNotificationDigestNotificationGroup)initWithProto:(id)a3;
- (ATXUserNotificationDigestNotificationGroup)initWithProtoData:(id)a3;
- (BOOL)hasPreviewableAttachment;
- (BOOL)isCommunicationGroup;
- (NSString)bundleId;
- (double)appSpecifiedScore;
- (id)encodeAsProto;
- (id)initFromJSON:(id)a3;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUserNotificationDigestNotificationGroup

+ (id)groupsFromNotifications:(id)a3 modeId:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = v5;
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
        v14 = [v13 groupId];
        v15 = [v7 objectForKeyedSubscript:v14];

        if (!v15)
        {
          v16 = objc_opt_new();
          [v7 setObject:v16 forKeyedSubscript:v14];
        }

        v17 = [v7 objectForKeyedSubscript:v14];
        [v17 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v18 = [v7 allValues];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __77__ATXUserNotificationDigestNotificationGroup_groupsFromNotifications_modeId___block_invoke;
  v22[3] = &unk_1E80C18B8;
  v23 = v6;
  v19 = v6;
  v20 = [v18 _pas_mappedArrayWithTransform:v22];

  return v20;
}

ATXUserNotificationDigestNotificationGroup *__77__ATXUserNotificationDigestNotificationGroup_groupsFromNotifications_modeId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ATXUserNotificationDigestNotificationGroup alloc] initWithNotifications:v3 modeId:*(a1 + 32)];

  return v4;
}

- (ATXUserNotificationDigestNotificationGroup)initWithNotifications:(id)a3 useDigestOrder:(BOOL)a4
{
  v4 = a4;
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v58.receiver = self;
  v58.super_class = ATXUserNotificationDigestNotificationGroup;
  v7 = [(ATXUserNotificationDigestNotificationGroup *)&v58 init];
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && [v6 count])
  {
    if (v4 && ([v6 firstObject], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isMessage"), v9, (v10 & 1) == 0))
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v13 = v6;
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
      v11 = [v6 sortedArrayUsingComparator:&__block_literal_global_20_1];
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
    v31 = [v6 _pas_mappedArrayWithTransform:&v47];
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
    v38 = [v37 groupId];
    groupId = v30->_groupId;
    v30->_groupId = v38;

    v40 = [v37 title];
    title = v30->_title;
    v30->_title = v40;

    v42 = [v37 subtitle];
    groupDescription = v30->_groupDescription;
    v30->_groupDescription = v42;

    v44 = [v37 uuid];
    representativeNotificationUUID = v30->_representativeNotificationUUID;
    v30->_representativeNotificationUUID = v44;
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

- (ATXUserNotificationDigestNotificationGroup)initWithNotifications:(id)a3 modeId:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = ATXUserNotificationDigestNotificationGroup;
  v8 = [(ATXUserNotificationDigestNotificationGroup *)&v23 init];
  if (v8)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && [v6 count])
  {
    v10 = [v6 sortedArrayUsingComparator:&__block_literal_global_25_1];
    rankedNotifications = v8->_rankedNotifications;
    v8->_rankedNotifications = v10;

    v12 = [(NSArray *)v8->_rankedNotifications objectAtIndexedSubscript:0];
    v13 = [v12 groupId];
    groupId = v8->_groupId;
    v8->_groupId = v13;

    v15 = [v12 title];
    title = v8->_title;
    v8->_title = v15;

    v17 = [v12 subtitle];
    groupDescription = v8->_groupDescription;
    v8->_groupDescription = v17;

    [v12 finalDigestScoreForMode:v7];
    v8->_priority = v19;
    v20 = [v12 uuid];
    representativeNotificationUUID = v8->_representativeNotificationUUID;
    v8->_representativeNotificationUUID = v20;
  }

  return v8;
}

- (NSString)bundleId
{
  v2 = [(NSArray *)self->_rankedNotifications firstObject];
  v3 = [v2 bundleID];

  return v3;
}

- (double)appSpecifiedScore
{
  v3 = [(ATXUserNotificationDigestNotificationGroup *)self rankedNotifications];
  v4 = [v3 firstObject];
  if (v4)
  {
    v5 = [(ATXUserNotificationDigestNotificationGroup *)self rankedNotifications];
    v6 = [v5 firstObject];
    [v6 appSpecifiedScore];
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
  v3 = [(ATXUserNotificationDigestNotificationGroup *)self rankedNotifications];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(ATXUserNotificationDigestNotificationGroup *)self rankedNotifications];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 isMessage];

  return v7;
}

- (BOOL)hasPreviewableAttachment
{
  v2 = [(ATXUserNotificationDigestNotificationGroup *)self rankedNotifications];
  v3 = [v2 firstObject];
  v4 = [v3 hasPreviewableAttachment];

  return v4;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBUserNotificationDigestNotificationGroup alloc] initFromJSON:v4];

  v6 = [(ATXUserNotificationDigestNotificationGroup *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(ATXUserNotificationDigestNotificationGroup *)self proto];
  v3 = [v2 jsonRepresentation];

  return v3;
}

- (ATXUserNotificationDigestNotificationGroup)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBUserNotificationDigestNotificationGroup alloc] initWithData:v4];

    self = [(ATXUserNotificationDigestNotificationGroup *)self initWithProto:v5];
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
  v2 = [(ATXUserNotificationDigestNotificationGroup *)self proto];
  v3 = [v2 data];

  return v3;
}

+ (id)groupsFromProtos:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__ATXUserNotificationDigestNotificationGroup_groupsFromProtos___block_invoke;
  v5[3] = &__block_descriptor_40_e63___ATXUserNotificationDigestNotificationGroup_16__0__PBCodable_8l;
  v5[4] = a1;
  v3 = [a3 _pas_mappedArrayWithTransform:v5];

  return v3;
}

id __63__ATXUserNotificationDigestNotificationGroup_groupsFromProtos___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[v2 alloc] initWithProto:v3];

  return v4;
}

+ (id)protosFromGroups:(id)a3
{
  v3 = [a3 _pas_mappedArrayWithTransform:&__block_literal_global_30];
  v4 = [v3 mutableCopy];

  return v4;
}

- (ATXUserNotificationDigestNotificationGroup)initWithProto:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = ATXUserNotificationDigestNotificationGroup;
  v5 = [(ATXUserNotificationDigestNotificationGroup *)&v30 init];
  if (!v5)
  {
LABEL_15:
    v28 = v5;
    goto LABEL_16;
  }

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [v6 rankedNotifications];
      v8 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_33_2];
      rankedNotifications = v5->_rankedNotifications;
      v5->_rankedNotifications = v8;

      v10 = [v6 groupId];
      groupId = v5->_groupId;
      v5->_groupId = v10;

      v12 = [v6 title];
      title = v5->_title;
      v5->_title = v12;

      v14 = [v6 groupDescription];
      groupDescription = v5->_groupDescription;
      v5->_groupDescription = v14;

      [v6 priority];
      v5->_priority = v16;
      v17 = objc_alloc(MEMORY[0x1E696AFB0]);
      v18 = [v6 representativeNotificationUUID];
      v19 = [v17 initWithUUIDString:v18];
      representativeNotificationUUID = v5->_representativeNotificationUUID;
      v5->_representativeNotificationUUID = v19;

      v21 = [v6 sharedEngagementTracker];

      if (v21)
      {
        v22 = [v6 sharedEngagementTracker];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v24 = [ATXSharedDigestEngagementTrackingMetrics alloc];
          v25 = [v6 sharedEngagementTracker];
          v26 = [(ATXSharedDigestEngagementTrackingMetrics *)v24 initWithProto:v25];
          [(ATXUserNotificationDigestNotificationGroup *)v5 setDigestEngagementTrackingMetrics:v26];
        }

        else
        {
          v25 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
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
  v4 = [(NSUUID *)self->_representativeNotificationUUID UUIDString];
  [v3 setRepresentativeNotificationUUID:v4];

  v5 = [(ATXUserNotificationDigestNotificationGroup *)self digestEngagementTrackingMetrics];
  v6 = [v5 proto];
  [v3 setSharedEngagementTracker:v6];

  v7 = [(NSArray *)self->_rankedNotifications _pas_mappedArrayWithTransform:&__block_literal_global_40_1];
  v8 = objc_opt_new();
  [v3 setRankedNotifications:v8];

  if (v7 && [v7 count])
  {
    v9 = [v3 rankedNotifications];
    [v9 addObjectsFromArray:v7];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXUserNotificationDigestNotificationGroup *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXUserNotificationDigestNotificationGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUserNotificationDigestNotificationGroup *)self initWithProtoData:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end