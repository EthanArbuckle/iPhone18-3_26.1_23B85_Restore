@interface ATXPBUserNotificationDigestNotificationGroup
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)initFromJSON:(id)a3;
- (id)jsonRepresentation;
- (unint64_t)hash;
- (void)addRankedNotifications:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBUserNotificationDigestNotificationGroup

- (void)addRankedNotifications:(id)a3
{
  v4 = a3;
  rankedNotifications = self->_rankedNotifications;
  v8 = v4;
  if (!rankedNotifications)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_rankedNotifications;
    self->_rankedNotifications = v6;

    v4 = v8;
    rankedNotifications = self->_rankedNotifications;
  }

  [(NSMutableArray *)rankedNotifications addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBUserNotificationDigestNotificationGroup;
  v4 = [(ATXPBUserNotificationDigestNotificationGroup *)&v8 description];
  v5 = [(ATXPBUserNotificationDigestNotificationGroup *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  groupId = self->_groupId;
  if (groupId)
  {
    [v3 setObject:groupId forKey:@"groupId"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  groupDescription = self->_groupDescription;
  if (groupDescription)
  {
    [v4 setObject:groupDescription forKey:@"groupDescription"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_priority];
    [v4 setObject:v8 forKey:@"priority"];
  }

  representativeNotificationUUID = self->_representativeNotificationUUID;
  if (representativeNotificationUUID)
  {
    [v4 setObject:representativeNotificationUUID forKey:@"representativeNotificationUUID"];
  }

  if ([(NSMutableArray *)self->_rankedNotifications count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_rankedNotifications, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = self->_rankedNotifications;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"rankedNotifications"];
  }

  sharedEngagementTracker = self->_sharedEngagementTracker;
  if (sharedEngagementTracker)
  {
    v18 = [(ATXPBSharedDigestEngagementTrackingMetrics *)sharedEngagementTracker dictionaryRepresentation];
    [v4 setObject:v18 forKey:@"sharedEngagementTracker"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_groupId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_groupDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_representativeNotificationUUID)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_rankedNotifications;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_sharedEngagementTracker)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_groupId)
  {
    [v4 setGroupId:?];
    v4 = v9;
  }

  if (self->_title)
  {
    [v9 setTitle:?];
    v4 = v9;
  }

  if (self->_groupDescription)
  {
    [v9 setGroupDescription:?];
    v4 = v9;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_priority;
    *(v4 + 64) |= 1u;
  }

  if (self->_representativeNotificationUUID)
  {
    [v9 setRepresentativeNotificationUUID:?];
  }

  if ([(ATXPBUserNotificationDigestNotificationGroup *)self rankedNotificationsCount])
  {
    [v9 clearRankedNotifications];
    v5 = [(ATXPBUserNotificationDigestNotificationGroup *)self rankedNotificationsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ATXPBUserNotificationDigestNotificationGroup *)self rankedNotificationsAtIndex:i];
        [v9 addRankedNotifications:v8];
      }
    }
  }

  if (self->_sharedEngagementTracker)
  {
    [v9 setSharedEngagementTracker:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_groupId copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_title copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_groupDescription copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_priority;
    *(v5 + 64) |= 1u;
  }

  v12 = [(NSString *)self->_representativeNotificationUUID copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_rankedNotifications;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v23 + 1) + 8 * v18) copyWithZone:{a3, v23}];
        [v5 addRankedNotifications:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = [(ATXPBSharedDigestEngagementTrackingMetrics *)self->_sharedEngagementTracker copyWithZone:a3];
  v21 = *(v5 + 48);
  *(v5 + 48) = v20;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  groupId = self->_groupId;
  if (groupId | *(v4 + 3))
  {
    if (![(NSString *)groupId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  title = self->_title;
  if (title | *(v4 + 7))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_19;
    }
  }

  groupDescription = self->_groupDescription;
  if (groupDescription | *(v4 + 2))
  {
    if (![(NSString *)groupDescription isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_priority != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  representativeNotificationUUID = self->_representativeNotificationUUID;
  if (representativeNotificationUUID | *(v4 + 5) && ![(NSString *)representativeNotificationUUID isEqual:?])
  {
    goto LABEL_19;
  }

  rankedNotifications = self->_rankedNotifications;
  if (rankedNotifications | *(v4 + 4))
  {
    if (![(NSMutableArray *)rankedNotifications isEqual:?])
    {
      goto LABEL_19;
    }
  }

  sharedEngagementTracker = self->_sharedEngagementTracker;
  if (sharedEngagementTracker | *(v4 + 6))
  {
    v11 = [(ATXPBSharedDigestEngagementTrackingMetrics *)sharedEngagementTracker isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_20:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_groupId hash];
  v4 = [(NSString *)self->_title hash];
  v5 = [(NSString *)self->_groupDescription hash];
  if (*&self->_has)
  {
    priority = self->_priority;
    if (priority < 0.0)
    {
      priority = -priority;
    }

    *v6.i64 = floor(priority + 0.5);
    v10 = (priority - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = v4 ^ v3 ^ v5 ^ v8;
  v13 = [(NSString *)self->_representativeNotificationUUID hash];
  v14 = v13 ^ [(NSMutableArray *)self->_rankedNotifications hash];
  return v12 ^ v14 ^ [(ATXPBSharedDigestEngagementTrackingMetrics *)self->_sharedEngagementTracker hash];
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 3))
  {
    [(ATXPBUserNotificationDigestNotificationGroup *)self setGroupId:?];
  }

  if (*(v4 + 7))
  {
    [(ATXPBUserNotificationDigestNotificationGroup *)self setTitle:?];
  }

  if (*(v4 + 2))
  {
    [(ATXPBUserNotificationDigestNotificationGroup *)self setGroupDescription:?];
  }

  if (*(v4 + 64))
  {
    self->_priority = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(ATXPBUserNotificationDigestNotificationGroup *)self setRepresentativeNotificationUUID:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(v4 + 4);
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

        [(ATXPBUserNotificationDigestNotificationGroup *)self addRankedNotifications:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  sharedEngagementTracker = self->_sharedEngagementTracker;
  v11 = *(v4 + 6);
  if (sharedEngagementTracker)
  {
    if (v11)
    {
      [(ATXPBSharedDigestEngagementTrackingMetrics *)sharedEngagementTracker mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(ATXPBUserNotificationDigestNotificationGroup *)self setSharedEngagementTracker:?];
  }
}

- (id)initFromJSON:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ATXPBUserNotificationDigestNotificationGroup *)self init];
  if (v5)
  {
    v6 = v4;
    v7 = [v6 objectForKeyedSubscript:@"groupID"];
    v8 = [ATXJSONHelper unwrapObject:v7];
    [(ATXPBUserNotificationDigestNotificationGroup *)v5 setGroupId:v8];

    v9 = [v6 objectForKeyedSubscript:@"title"];
    v10 = [ATXJSONHelper unwrapObject:v9];
    [(ATXPBUserNotificationDigestNotificationGroup *)v5 setTitle:v10];

    v11 = [v6 objectForKeyedSubscript:@"groupDescription"];
    v12 = [ATXJSONHelper unwrapObject:v11];
    [(ATXPBUserNotificationDigestNotificationGroup *)v5 setGroupDescription:v12];

    v13 = [v6 objectForKeyedSubscript:@"representativeNotificationUUID"];
    v14 = [ATXJSONHelper unwrapObject:v13];
    [(ATXPBUserNotificationDigestNotificationGroup *)v5 setRepresentativeNotificationUUID:v14];

    v15 = [v6 objectForKeyedSubscript:@"priority"];
    [v15 doubleValue];
    [(ATXPBUserNotificationDigestNotificationGroup *)v5 setPriority:?];

    v16 = [v6 objectForKeyedSubscript:@"sharedDigestEngagementTracker"];
    v17 = [ATXJSONHelper unwrapObject:v16];

    if (v17)
    {
      v18 = [ATXPBSharedDigestEngagementTrackingMetrics alloc];
      v19 = [v6 objectForKeyedSubscript:@"sharedDigestEngagementTracker"];
      v20 = [ATXJSONHelper unwrapObject:v19];
      v21 = [(ATXPBSharedDigestEngagementTrackingMetrics *)v18 initFromJSON:v20];
      [(ATXPBUserNotificationDigestNotificationGroup *)v5 setSharedEngagementTracker:v21];
    }

    v22 = [v6 objectForKeyedSubscript:@"rankedNotifications"];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v30;
      do
      {
        v26 = 0;
        do
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [[ATXPBUserNotification alloc] initFromJSON:*(*(&v29 + 1) + 8 * v26)];
          [(ATXPBUserNotificationDigestNotificationGroup *)v5 addRankedNotifications:v27];

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v24);
    }
  }

  return v5;
}

- (id)jsonRepresentation
{
  v17[7] = *MEMORY[0x1E69E9840];
  v16[0] = @"groupID";
  v15 = [ATXJSONHelper wrapObject:self->_groupId];
  v17[0] = v15;
  v16[1] = @"title";
  v14 = [ATXJSONHelper wrapObject:self->_title];
  v17[1] = v14;
  v16[2] = @"groupDescription";
  v3 = [ATXJSONHelper wrapObject:self->_groupDescription];
  v17[2] = v3;
  v16[3] = @"priority";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_priority];
  v5 = [ATXJSONHelper wrapObject:v4];
  v17[3] = v5;
  v16[4] = @"representativeNotificationUUID";
  v6 = [ATXJSONHelper wrapObject:self->_representativeNotificationUUID];
  v17[4] = v6;
  v16[5] = @"rankedNotifications";
  v7 = [(NSMutableArray *)self->_rankedNotifications _pas_mappedArrayWithTransform:&__block_literal_global_72];
  v8 = [ATXJSONHelper wrapObject:v7];
  v17[5] = v8;
  v16[6] = @"sharedDigestEngagementTracker";
  v9 = [(ATXPBUserNotificationDigestNotificationGroup *)self sharedEngagementTracker];
  v10 = [v9 jsonRepresentation];
  v11 = [ATXJSONHelper wrapObject:v10];
  v17[6] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:7];

  return v12;
}

@end