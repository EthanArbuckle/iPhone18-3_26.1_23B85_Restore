@interface ATXNotificationDeliverySuggestion
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXNotificationDeliverySuggestion)initWithCoder:(id)a3;
- (ATXNotificationDeliverySuggestion)initWithInterruptionManagerTuningSuggestion:(id)a3 scope:(int64_t)a4 entityIdentifier:(id)a5 uuid:(id)a6 timestamp:(id)a7 triggerNotificationUUID:(id)a8;
- (ATXNotificationDeliverySuggestion)initWithProto:(id)a3;
- (ATXNotificationDeliverySuggestion)initWithProtoData:(id)a3;
- (ATXNotificationDeliverySuggestion)initWithSmartPauseSuggestion:(id)a3 uuid:(id)a4 scope:(int64_t)a5 entityIdentifier:(id)a6 timestamp:(id)a7 triggerNotificationUUID:(id)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXNotificationDeliverySuggestion:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProto;
- (id)initPromotingSuggestionWithUUID:(id)a3 scope:(int64_t)a4 entityIdentifier:(id)a5 timestamp:(id)a6 triggerNotificationUUID:(id)a7;
- (id)initQuietingSuggestionWithUUID:(id)a3 scope:(int64_t)a4 entityIdentifier:(id)a5 timestamp:(id)a6 triggerNotificationUUID:(id)a7;
- (id)initSendToDigestSuggestionWithUUID:(id)a3 bundleID:(id)a4 timestamp:(id)a5 triggerNotificationUUID:(id)a6;
- (id)initSendToMessagesDigestSuggestionWithUUID:(id)a3 bundleID:(id)a4 timestamp:(id)a5 triggerNotificationUUID:(id)a6;
- (id)initTurnOffNotificationsForAppSuggestionWithUUID:(id)a3 bundleID:(id)a4 timestamp:(id)a5 triggerNotificationUUID:(id)a6;
- (id)initUrgencyTuningSuggestionWithUUID:(id)a3 bundleID:(id)a4 timestamp:(id)a5 triggerNotificationUUID:(id)a6;
- (id)json;
- (id)jsonRawData;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)proto;
@end

@implementation ATXNotificationDeliverySuggestion

- (ATXNotificationDeliverySuggestion)initWithSmartPauseSuggestion:(id)a3 uuid:(id)a4 scope:(int64_t)a5 entityIdentifier:(id)a6 timestamp:(id)a7 triggerNotificationUUID:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v28.receiver = self;
  v28.super_class = ATXNotificationDeliverySuggestion;
  v20 = [(ATXNotificationDeliverySuggestion *)&v28 init];
  if (v20)
  {
    v21 = [v16 copy];
    uuid = v20->_uuid;
    v20->_uuid = v21;

    v20->_scope = a5;
    v23 = [v17 copy];
    entityIdentifier = v20->_entityIdentifier;
    v20->_entityIdentifier = v23;

    objc_storeStrong(&v20->_timestamp, a7);
    v25 = [v19 copy];
    triggerNotificationUUID = v20->_triggerNotificationUUID;
    v20->_triggerNotificationUUID = v25;

    v20->_subtype = 4;
    objc_storeStrong(&v20->_subObject, a3);
  }

  return v20;
}

- (id)initQuietingSuggestionWithUUID:(id)a3 scope:(int64_t)a4 entityIdentifier:(id)a5 timestamp:(id)a6 triggerNotificationUUID:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = ATXNotificationDeliverySuggestion;
  v16 = [(ATXNotificationDeliverySuggestion *)&v25 init];
  if (v16)
  {
    v17 = [v12 copy];
    uuid = v16->_uuid;
    v16->_uuid = v17;

    v16->_scope = a4;
    v19 = [v13 copy];
    entityIdentifier = v16->_entityIdentifier;
    v16->_entityIdentifier = v19;

    objc_storeStrong(&v16->_timestamp, a6);
    v21 = [v15 copy];
    triggerNotificationUUID = v16->_triggerNotificationUUID;
    v16->_triggerNotificationUUID = v21;

    subObject = v16->_subObject;
    v16->_subtype = 1;
    v16->_subObject = 0;
  }

  return v16;
}

- (id)initPromotingSuggestionWithUUID:(id)a3 scope:(int64_t)a4 entityIdentifier:(id)a5 timestamp:(id)a6 triggerNotificationUUID:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v25.receiver = self;
  v25.super_class = ATXNotificationDeliverySuggestion;
  v16 = [(ATXNotificationDeliverySuggestion *)&v25 init];
  if (v16)
  {
    v17 = [v12 copy];
    uuid = v16->_uuid;
    v16->_uuid = v17;

    v16->_scope = a4;
    v19 = [v13 copy];
    entityIdentifier = v16->_entityIdentifier;
    v16->_entityIdentifier = v19;

    objc_storeStrong(&v16->_timestamp, a6);
    v21 = [v15 copy];
    triggerNotificationUUID = v16->_triggerNotificationUUID;
    v16->_triggerNotificationUUID = v21;

    subObject = v16->_subObject;
    v16->_subtype = 2;
    v16->_subObject = 0;
  }

  return v16;
}

- (ATXNotificationDeliverySuggestion)initWithInterruptionManagerTuningSuggestion:(id)a3 scope:(int64_t)a4 entityIdentifier:(id)a5 uuid:(id)a6 timestamp:(id)a7 triggerNotificationUUID:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v28.receiver = self;
  v28.super_class = ATXNotificationDeliverySuggestion;
  v20 = [(ATXNotificationDeliverySuggestion *)&v28 init];
  if (v20)
  {
    v21 = [v17 copy];
    uuid = v20->_uuid;
    v20->_uuid = v21;

    v20->_scope = a4;
    v23 = [v16 copy];
    entityIdentifier = v20->_entityIdentifier;
    v20->_entityIdentifier = v23;

    objc_storeStrong(&v20->_timestamp, a7);
    v25 = [v19 copy];
    triggerNotificationUUID = v20->_triggerNotificationUUID;
    v20->_triggerNotificationUUID = v25;

    v20->_subtype = 5;
    objc_storeStrong(&v20->_subObject, a3);
  }

  return v20;
}

- (id)initSendToDigestSuggestionWithUUID:(id)a3 bundleID:(id)a4 timestamp:(id)a5 triggerNotificationUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = ATXNotificationDeliverySuggestion;
  v14 = [(ATXNotificationDeliverySuggestion *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v14->_scope = 1;
    v17 = [v11 copy];
    entityIdentifier = v14->_entityIdentifier;
    v14->_entityIdentifier = v17;

    objc_storeStrong(&v14->_timestamp, a5);
    v19 = [v13 copy];
    triggerNotificationUUID = v14->_triggerNotificationUUID;
    v14->_triggerNotificationUUID = v19;

    v14->_subtype = 6;
    v21 = objc_opt_new();
    subObject = v14->_subObject;
    v14->_subObject = v21;
  }

  return v14;
}

- (id)initSendToMessagesDigestSuggestionWithUUID:(id)a3 bundleID:(id)a4 timestamp:(id)a5 triggerNotificationUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = ATXNotificationDeliverySuggestion;
  v14 = [(ATXNotificationDeliverySuggestion *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v14->_scope = 1;
    v17 = [v11 copy];
    entityIdentifier = v14->_entityIdentifier;
    v14->_entityIdentifier = v17;

    objc_storeStrong(&v14->_timestamp, a5);
    v19 = [v13 copy];
    triggerNotificationUUID = v14->_triggerNotificationUUID;
    v14->_triggerNotificationUUID = v19;

    v14->_subtype = 8;
    v21 = objc_opt_new();
    subObject = v14->_subObject;
    v14->_subObject = v21;
  }

  return v14;
}

- (id)initUrgencyTuningSuggestionWithUUID:(id)a3 bundleID:(id)a4 timestamp:(id)a5 triggerNotificationUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = ATXNotificationDeliverySuggestion;
  v14 = [(ATXNotificationDeliverySuggestion *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v14->_scope = 1;
    v17 = [v11 copy];
    entityIdentifier = v14->_entityIdentifier;
    v14->_entityIdentifier = v17;

    objc_storeStrong(&v14->_timestamp, a5);
    v19 = [v13 copy];
    triggerNotificationUUID = v14->_triggerNotificationUUID;
    v14->_triggerNotificationUUID = v19;

    v14->_subtype = 7;
    v21 = objc_opt_new();
    subObject = v14->_subObject;
    v14->_subObject = v21;
  }

  return v14;
}

- (id)initTurnOffNotificationsForAppSuggestionWithUUID:(id)a3 bundleID:(id)a4 timestamp:(id)a5 triggerNotificationUUID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = ATXNotificationDeliverySuggestion;
  v14 = [(ATXNotificationDeliverySuggestion *)&v26 init];
  if (v14)
  {
    v15 = [v10 copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v14->_scope = 1;
    v17 = [v11 copy];
    entityIdentifier = v14->_entityIdentifier;
    v14->_entityIdentifier = v17;

    v19 = [v12 copy];
    timestamp = v14->_timestamp;
    v14->_timestamp = v19;

    v21 = [v13 copy];
    triggerNotificationUUID = v14->_triggerNotificationUUID;
    v14->_triggerNotificationUUID = v21;

    v14->_subtype = 9;
    v23 = objc_opt_new();
    subObject = v14->_subObject;
    v14->_subObject = v23;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXNotificationDeliverySuggestion *)self isEqualToATXNotificationDeliverySuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXNotificationDeliverySuggestion:(id)a3
{
  v4 = a3;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSUUID *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (self->_scope != v4[4])
  {
    goto LABEL_21;
  }

  v8 = self->_entityIdentifier;
  v9 = v8;
  if (v8 == v4[5])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v11 = self->_timestamp;
  v12 = v11;
  if (v11 == v4[2])
  {
  }

  else
  {
    v13 = [(NSDate *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v14 = self->_triggerNotificationUUID;
  v15 = v14;
  if (v14 == v4[3])
  {
  }

  else
  {
    v16 = [(NSUUID *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (self->_subtype != v4[6])
  {
LABEL_21:
    v19 = 0;
    goto LABEL_22;
  }

  v17 = self->_subObject;
  v18 = v17;
  if (v17 == v4[7])
  {
    v19 = 1;
  }

  else
  {
    v19 = [v17 isEqual:?];
  }

LABEL_22:
  return v19;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_uuid hash];
  v4 = self->_scope - v3 + 32 * v3;
  v5 = [(NSString *)self->_entityIdentifier hash]- v4 + 32 * v4;
  v6 = [(NSDate *)self->_timestamp hash]- v5 + 32 * v5;
  v7 = [(NSUUID *)self->_triggerNotificationUUID hash];
  subtype = self->_subtype;
  v9 = subtype - (v7 - v6 + 32 * v6) + 32 * (v7 - v6 + 32 * v6);
  if (subtype == 4)
  {
    v9 = [self->_subObject hash] - v9 + 32 * v9;
    subtype = self->_subtype;
  }

  if (subtype == 5)
  {
    return [self->_subObject hash] - v9 + 32 * v9;
  }

  return v9;
}

- (NSString)description
{
  if ((self->_subtype & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v3 = self->_subObject;
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  uuid = self->_uuid;
  v6 = ATXNotificationSuggestionScopeToString(self->_scope);
  timestamp = self->_timestamp;
  triggerNotificationUUID = self->_triggerNotificationUUID;
  entityIdentifier = self->_entityIdentifier;
  v10 = ATXSuggestionTypeToString(self->_subtype);
  v11 = [v4 initWithFormat:@"UUID: %@ Scope: %@, Entity ID: %@, Timestamp: %@, Trigger UUID: %@, Sub type: %@, Sub object: %@", uuid, v6, entityIdentifier, timestamp, triggerNotificationUUID, v10, v3];

  return v11;
}

- (id)encodeAsProto
{
  v2 = [(ATXNotificationDeliverySuggestion *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXNotificationDeliverySuggestion)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBNotificationDeliverySuggestion alloc] initWithData:v4];

    self = [(ATXNotificationDeliverySuggestion *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXNotificationDeliverySuggestion)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationDeliverySuggestion initWithProto:];
      }

      v14 = 0;
      goto LABEL_27;
    }

    v5 = v4;
    if (([v5 hasUuid]& 1) != 0)
    {
      if (([v5 hasScope]& 1) != 0)
      {
        if (([v5 hasEntityIdentifier]& 1) != 0)
        {
          if (([v5 hasTimestamp]& 1) != 0)
          {
            if (([v5 hasOneofNotificationDeliverySuggestion]& 1) != 0)
            {
              v6 = objc_alloc(MEMORY[0x1E696AFB0]);
              v7 = [v5 uuid];
              v8 = [v6 initWithUUIDString:v7];

              if (!v8)
              {
                v10 = __atxlog_handle_notification_management();
                if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
                {
                  [ATXNotificationDeliverySuggestion initWithProto:];
                }

                v14 = 0;
                goto LABEL_44;
              }

              v9 = MEMORY[0x1E695DF00];
              [v5 timestamp];
              v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
              if ([v5 hasTriggerNotificationUUID])
              {
                v11 = objc_alloc(MEMORY[0x1E696AFB0]);
                v12 = [v5 triggerNotificationUUID];
                v13 = [v11 initWithUUIDString:v12];
              }

              else
              {
                v13 = 0;
              }

              if ([v5 hasSmartPause])
              {
                v16 = [ATXNotificationSmartPauseSuggestion alloc];
                v17 = [v5 smartPause];
                v18 = [(ATXNotificationSmartPauseSuggestion *)v16 initWithProto:v17];

                v19 = [v5 scope];
                v20 = [v5 entityIdentifier];
                v21 = [(ATXNotificationDeliverySuggestion *)self initWithSmartPauseSuggestion:v18 uuid:v8 scope:v19 entityIdentifier:v20 timestamp:v10 triggerNotificationUUID:v13];
                goto LABEL_35;
              }

              if ([v5 hasQuieting])
              {
                v22 = [v5 scope];
                v23 = [v5 entityIdentifier];
                v24 = [(ATXNotificationDeliverySuggestion *)self initQuietingSuggestionWithUUID:v8 scope:v22 entityIdentifier:v23 timestamp:v10 triggerNotificationUUID:v13];
              }

              else
              {
                if (![v5 hasPromoting])
                {
                  if (![v5 hasInterruptionManagerTuning])
                  {
                    if ([v5 hasSendToDigest])
                    {
                      v18 = [v5 entityIdentifier];
                      v29 = [(ATXNotificationDeliverySuggestion *)self initSendToDigestSuggestionWithUUID:v8 bundleID:v18 timestamp:v10 triggerNotificationUUID:v13];
                    }

                    else if ([v5 hasUrgencyTuning])
                    {
                      v18 = [v5 entityIdentifier];
                      v29 = [(ATXNotificationDeliverySuggestion *)self initUrgencyTuningSuggestionWithUUID:v8 bundleID:v18 timestamp:v10 triggerNotificationUUID:v13];
                    }

                    else if ([v5 hasSendMessagesToDigest])
                    {
                      v18 = [v5 entityIdentifier];
                      v29 = [(ATXNotificationDeliverySuggestion *)self initSendToMessagesDigestSuggestionWithUUID:v8 bundleID:v18 timestamp:v10 triggerNotificationUUID:v13];
                    }

                    else
                    {
                      if (![v5 hasTurnOffNotificationsForApp])
                      {
                        v30 = __atxlog_handle_notifications();
                        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
                        {
                          [ATXNotificationDeliverySuggestion initWithProto:];
                        }

                        v14 = 0;
                        goto LABEL_43;
                      }

                      v18 = [v5 entityIdentifier];
                      v29 = [(ATXNotificationDeliverySuggestion *)self initTurnOffNotificationsForAppSuggestionWithUUID:v8 bundleID:v18 timestamp:v10 triggerNotificationUUID:v13];
                    }

                    self = v29;
                    goto LABEL_36;
                  }

                  v26 = [ATXInterruptionManagerTuningSuggestion alloc];
                  v27 = [v5 interruptionManagerTuning];
                  v18 = [(ATXInterruptionManagerTuningSuggestion *)v26 initWithProto:v27];

                  v28 = [v5 scope];
                  v20 = [v5 entityIdentifier];
                  v21 = [(ATXNotificationDeliverySuggestion *)self initWithInterruptionManagerTuningSuggestion:v18 scope:v28 entityIdentifier:v20 uuid:v8 timestamp:v10 triggerNotificationUUID:v13];
LABEL_35:
                  self = v21;

LABEL_36:
LABEL_42:
                  v14 = self;
LABEL_43:

LABEL_44:
                  goto LABEL_26;
                }

                v25 = [v5 scope];
                v23 = [v5 entityIdentifier];
                v24 = [(ATXNotificationDeliverySuggestion *)self initPromotingSuggestionWithUUID:v8 scope:v25 entityIdentifier:v23 timestamp:v10 triggerNotificationUUID:v13];
              }

              self = v24;

              goto LABEL_42;
            }

            v8 = __atxlog_handle_notification_management();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
            {
              [ATXNotificationDeliverySuggestion initWithProto:];
            }
          }

          else
          {
            v8 = __atxlog_handle_notification_management();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
            {
              [ATXNotificationDeliverySuggestion initWithProto:];
            }
          }
        }

        else
        {
          v8 = __atxlog_handle_notification_management();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
          {
            [ATXNotificationDeliverySuggestion initWithProto:];
          }
        }
      }

      else
      {
        v8 = __atxlog_handle_notification_management();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion initWithProto:];
        }
      }
    }

    else
    {
      v8 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationDeliverySuggestion initWithProto:];
      }
    }

    v14 = 0;
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  v14 = 0;
LABEL_28:

  return v14;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_uuid UUIDString];
  [v3 setUuid:v4];

  [v3 setScope:LODWORD(self->_scope)];
  [v3 setEntityIdentifier:self->_entityIdentifier];
  [(NSDate *)self->_timestamp timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];
  triggerNotificationUUID = self->_triggerNotificationUUID;
  if (triggerNotificationUUID)
  {
    v6 = [(NSUUID *)triggerNotificationUUID UUIDString];
    [v3 setTriggerNotificationUUID:v6];
  }

  p_subtype = &self->_subtype;
  subtype = self->_subtype;
  if (subtype <= 4)
  {
    if (subtype <= 1)
    {
      if (subtype)
      {
        if (subtype != 1)
        {
LABEL_47:
          v3 = v3;
          v13 = v3;
          goto LABEL_48;
        }

        v10 = objc_opt_new();
        [v3 setQuieting:v10];
LABEL_33:

        goto LABEL_47;
      }
    }

    else
    {
      if (subtype == 2)
      {
        v10 = objc_opt_new();
        [v3 setPromoting:v10];
        goto LABEL_33;
      }

      if (subtype != 3)
      {
        p_subObject = &self->_subObject;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [*p_subObject proto];
          [v3 setSmartPause:v10];
          goto LABEL_33;
        }

        v18 = __atxlog_handle_notifications();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }

        goto LABEL_46;
      }
    }
  }

  else
  {
    if (subtype <= 7)
    {
      if (subtype == 5)
      {
        v16 = &self->_subObject;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [*v16 proto];
          [v3 setInterruptionManagerTuning:v10];
          goto LABEL_33;
        }

        v18 = __atxlog_handle_notifications();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }

        goto LABEL_46;
      }

      if (subtype != 6)
      {
        v9 = &self->_subObject;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [*v9 proto];
          [v3 setUrgencyTuning:v10];
          goto LABEL_33;
        }

        v18 = __atxlog_handle_notifications();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }

LABEL_46:

        v3 = 0;
        goto LABEL_47;
      }

      v14 = &self->_subObject;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [*v14 proto];
        [v3 setSendToDigest:v10];
        goto LABEL_33;
      }

      v18 = __atxlog_handle_notifications();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_46;
      }

LABEL_45:
      [ATXNotificationDeliverySuggestion proto];
      goto LABEL_46;
    }

    if (subtype == 8)
    {
      v17 = &self->_subObject;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [*v17 proto];
        [v3 setSendMessagesToDigest:v10];
        goto LABEL_33;
      }

      v18 = __atxlog_handle_notifications();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    if (subtype == 9)
    {
      v15 = &self->_subObject;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [*v15 proto];
        [v3 setTurnOffNotificationsForApp:v10];
        goto LABEL_33;
      }

      v18 = __atxlog_handle_notifications();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationDeliverySuggestion proto];
      }

      goto LABEL_46;
    }

    if (subtype != 10)
    {
      goto LABEL_47;
    }
  }

  v12 = __atxlog_handle_notifications();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(ATXNotificationDeliverySuggestion *)p_subtype proto];
  }

  v13 = 0;
LABEL_48:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXNotificationDeliverySuggestion *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXNotificationDeliverySuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXNotificationDeliverySuggestion *)self initWithProtoData:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXNotificationDeliverySuggestion allocWithZone:a3];
  v5 = v4;
  p_subtype = &self->_subtype;
  subtype = self->_subtype;
  if (subtype <= 4)
  {
    if (subtype <= 1)
    {
      if (subtype)
      {
        if (subtype != 1)
        {
LABEL_45:
          v5 = v5;
          v10 = v5;
          goto LABEL_46;
        }

        v8 = [(ATXNotificationDeliverySuggestion *)v4 initQuietingSuggestionWithUUID:self->_uuid scope:self->_scope entityIdentifier:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
LABEL_31:
        v5 = v8;
        goto LABEL_45;
      }
    }

    else
    {
      if (subtype == 2)
      {
        v8 = [(ATXNotificationDeliverySuggestion *)v4 initPromotingSuggestionWithUUID:self->_uuid scope:self->_scope entityIdentifier:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
        goto LABEL_31;
      }

      if (subtype != 3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v5 initWithSmartPauseSuggestion:self->_subObject uuid:self->_uuid scope:self->_scope entityIdentifier:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
          goto LABEL_31;
        }

        v11 = __atxlog_handle_notifications();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }

        goto LABEL_44;
      }
    }
  }

  else
  {
    if (subtype <= 7)
    {
      if (subtype == 5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v5 initWithInterruptionManagerTuningSuggestion:self->_subObject scope:self->_scope entityIdentifier:self->_entityIdentifier uuid:self->_uuid timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
          goto LABEL_31;
        }

        v11 = __atxlog_handle_notifications();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }
      }

      else if (subtype == 6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v5 initSendToDigestSuggestionWithUUID:self->_uuid bundleID:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
          goto LABEL_31;
        }

        v11 = __atxlog_handle_notifications();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v5 initUrgencyTuningSuggestionWithUUID:self->_uuid bundleID:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
          goto LABEL_31;
        }

        v11 = __atxlog_handle_notifications();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }
      }

LABEL_44:

      v5 = 0;
      goto LABEL_45;
    }

    if (subtype == 8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v5 initSendToMessagesDigestSuggestionWithUUID:self->_uuid bundleID:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
        goto LABEL_31;
      }

      v11 = __atxlog_handle_notifications();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationDeliverySuggestion copyWithZone:];
      }

      goto LABEL_44;
    }

    if (subtype == 9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v5 initTurnOffNotificationsForAppSuggestionWithUUID:self->_uuid bundleID:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
        goto LABEL_31;
      }

      v11 = __atxlog_handle_notifications();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationDeliverySuggestion copyWithZone:];
      }

      goto LABEL_44;
    }

    if (subtype != 10)
    {
      goto LABEL_45;
    }
  }

  v9 = __atxlog_handle_notifications();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(ATXNotificationDeliverySuggestion *)p_subtype proto];
  }

  v10 = 0;
LABEL_46:

  return v10;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)jsonRawData
{
  v12[6] = *MEMORY[0x1E69E9840];
  v11[0] = @"uuid";
  v3 = [(NSUUID *)self->_uuid UUIDString];
  v12[0] = v3;
  v11[1] = @"scope";
  v4 = ATXNotificationSuggestionScopeToString(self->_scope);
  timestamp = self->_timestamp;
  triggerNotificationUUID = self->_triggerNotificationUUID;
  v12[1] = v4;
  v12[2] = timestamp;
  v11[2] = @"timestamp";
  v11[3] = @"triggerNotificationUUID";
  v12[3] = triggerNotificationUUID;
  v11[4] = @"subType";
  v7 = ATXSuggestionTypeToString(self->_subtype);
  v11[5] = @"subObject";
  subObject = self->_subObject;
  v12[4] = v7;
  v12[5] = subObject;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXNotificationDeliverySuggestion *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (void)initWithProto:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithProto:.cold.2()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithProto:.cold.3()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithProto:.cold.4()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithProto:.cold.5()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithProto:.cold.6()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithProto:.cold.7()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithProto:.cold.8()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)proto
{
  OUTLINED_FUNCTION_4_0();
  v2 = OUTLINED_FUNCTION_2_12(v1);
  ATXSuggestionTypeToString(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_5_10();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)copyWithZone:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v2 = OUTLINED_FUNCTION_2_12(v1);
  ATXSuggestionTypeToString(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_5_10();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)copyWithZone:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  v2 = OUTLINED_FUNCTION_2_12(v1);
  ATXSuggestionTypeToString(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_5_10();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

@end