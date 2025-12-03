@interface ATXLockscreenEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXLockscreenEvent)initWithAbsoluteDate:(double)date eventType:(int)type blendingCacheId:(id)id suggestionIds:(id)ids;
- (ATXLockscreenEvent)initWithCoder:(id)coder;
- (ATXLockscreenEvent)initWithDate:(id)date eventType:(int)type blendingCacheId:(id)id suggestionIds:(id)ids;
- (ATXLockscreenEvent)initWithProto:(id)proto;
- (ATXLockscreenEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXLockscreenEvent:(id)event;
- (NSDate)date;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
- (id)sessionProcessingOptionsForSessionType:(int64_t)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateUIFeedbackSession:(id)session uiCacheConsumerSubType:(unsigned __int8)type;
@end

@implementation ATXLockscreenEvent

- (ATXLockscreenEvent)initWithDate:(id)date eventType:(int)type blendingCacheId:(id)id suggestionIds:(id)ids
{
  v7 = *&type;
  idsCopy = ids;
  idCopy = id;
  [date timeIntervalSince1970];
  v12 = [(ATXLockscreenEvent *)self initWithAbsoluteDate:v7 eventType:idCopy blendingCacheId:idsCopy suggestionIds:?];

  return v12;
}

- (ATXLockscreenEvent)initWithAbsoluteDate:(double)date eventType:(int)type blendingCacheId:(id)id suggestionIds:(id)ids
{
  idCopy = id;
  idsCopy = ids;
  v16.receiver = self;
  v16.super_class = ATXLockscreenEvent;
  v13 = [(ATXLockscreenEvent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_absoluteDate = date;
    v13->_eventType = type;
    objc_storeStrong(&v13->_blendingCacheId, id);
    objc_storeStrong(&v14->_suggestionIds, ids);
  }

  return v14;
}

- (NSDate)date
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_absoluteDate];

  return v2;
}

- (id)sessionProcessingOptionsForSessionType:(int64_t)type
{
  v3 = self->_eventType - 2;
  if (v3 > 2)
  {
    return &unk_1F3E607E0;
  }

  else
  {
    return qword_1E80C3C20[v3];
  }
}

- (void)updateUIFeedbackSession:(id)session uiCacheConsumerSubType:(unsigned __int8)type
{
  sessionCopy = session;
  eventType = self->_eventType;
  v10 = sessionCopy;
  if (eventType == 3)
  {
    suggestionIds = self->_suggestionIds;
    v8 = 0;
    goto LABEL_7;
  }

  if (eventType == 2)
  {
    v8 = self->_suggestionIds;
    suggestionIds = 0;
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (eventType != 1)
  {
    goto LABEL_9;
  }

  v7 = self->_suggestionIds;
  v8 = 0;
  suggestionIds = 0;
LABEL_8:
  [sessionCopy updateEngagedUUIDs:v8 rejectedUUIDs:suggestionIds shownUUIDs:v7];
  sessionCopy = v10;
LABEL_9:
  [sessionCopy updateConsumerSubTypeIfUnset:22];
  [v10 updateBlendingUICacheUpdateUUIDIfUnset:self->_blendingCacheId];
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    dataCopy = data;
    v6 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)jsonDict
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_suggestionIds _pas_mappedArrayWithTransform:&__block_literal_global_57];
  v15[0] = @"date";
  v4 = MEMORY[0x1E696AD98];
  date = [(ATXLockscreenEvent *)self date];
  [date timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  v16[0] = v6;
  v15[1] = @"eventType";
  v7 = self->_eventType - 1;
  if (v7 >= 4)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_eventType];
  }

  else
  {
    v8 = off_1E80C3C38[v7];
  }

  v16[1] = v8;
  v15[2] = @"blendingCacheId";
  uUIDString = [(NSUUID *)self->_blendingCacheId UUIDString];
  v10 = uUIDString;
  v11 = @"nil";
  if (uUIDString)
  {
    v12 = uUIDString;
  }

  else
  {
    v12 = @"nil";
  }

  v15[3] = @"suggestionIds";
  if (v3)
  {
    v11 = v3;
  }

  v16[2] = v12;
  v16[3] = v11;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  return v13;
}

- (id)encodeAsProto
{
  proto = [(ATXLockscreenEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXLockscreenEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_10:
    selfCopy = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(ATXLockscreenEvent *)self initWithProto:v11];
    }

    goto LABEL_10;
  }

  v5 = protoCopy;
  if ([(ATXPBLockscreenEvent *)v5 hasDate]&& (v6 = [(ATXPBLockscreenEvent *)v5 date], [(ATXPBLockscreenEvent *)v5 hasEventType]))
  {
    eventType = [(ATXPBLockscreenEvent *)v5 eventType];
    if ([(ATXPBLockscreenEvent *)v5 hasBlendingCacheId])
    {
      v8 = objc_alloc(MEMORY[0x1E696AFB0]);
      blendingCacheId = [(ATXPBLockscreenEvent *)v5 blendingCacheId];
      v10 = [v8 initWithUUIDString:blendingCacheId];
    }

    else
    {
      v10 = 0;
    }

    suggestionIds = [(ATXPBLockscreenEvent *)v5 suggestionIds];
    v14 = [suggestionIds _pas_mappedArrayWithTransform:&__block_literal_global_46_1];

    self = [(ATXLockscreenEvent *)self initWithAbsoluteDate:eventType eventType:v10 blendingCacheId:v14 suggestionIds:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_15:
  return selfCopy;
}

id __36__ATXLockscreenEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (ATXLockscreenEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBLockscreenEvent alloc] initWithData:dataCopy];

    self = [(ATXLockscreenEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(ATXPBLockscreenEvent *)v3 setDate:?];
  [(ATXPBLockscreenEvent *)v3 setEventType:?];
  blendingCacheId = self->_blendingCacheId;
  if (blendingCacheId)
  {
    uUIDString = [(NSUUID *)blendingCacheId UUIDString];
    [(ATXPBLockscreenEvent *)v3 setBlendingCacheId:uUIDString];
  }

  if (self->_suggestionIds)
  {
    v6 = objc_opt_new();
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self->_suggestionIds;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          uUIDString2 = [*(*(&v14 + 1) + 8 * i) UUIDString];
          [v6 addObject:uUIDString2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [(ATXPBLockscreenEvent *)v3 setSuggestionIds:v6];
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXLockscreenEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXLockscreenEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_default();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"protobufData" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.duetexpertd.ATXLockscreenEvent" errorCode:-1 logHandle:v7];

  if (v8 && ([coderCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    self = [(ATXLockscreenEvent *)self initWithProtoData:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXLockscreenEvent *)self isEqualToATXLockscreenEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXLockscreenEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  v6 = self->_absoluteDate - *(eventCopy + 1);
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 2.22044605e-16 || self->_eventType != *(eventCopy + 4))
  {
    goto LABEL_7;
  }

  v7 = self->_blendingCacheId;
  v8 = v7;
  if (v7 == v5[3])
  {
  }

  else
  {
    v9 = [(NSUUID *)v7 isEqual:?];

    if ((v9 & 1) == 0)
    {
LABEL_7:
      v10 = 0;
      goto LABEL_8;
    }
  }

  v12 = self->_suggestionIds;
  v13 = v12;
  if (v12 == v5[4])
  {
    v10 = 1;
  }

  else
  {
    v10 = [(NSArray *)v12 isEqual:?];
  }

LABEL_8:
  return v10;
}

- (unint64_t)hash
{
  v3 = self->_eventType - self->_absoluteDate + 32 * self->_absoluteDate;
  v4 = [(NSUUID *)self->_blendingCacheId hash]- v3 + 32 * v3;
  return [(NSArray *)self->_suggestionIds hash]- v4 + 32 * v4;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBLockscreenEvent proto", &v5, 0xCu);
}

@end