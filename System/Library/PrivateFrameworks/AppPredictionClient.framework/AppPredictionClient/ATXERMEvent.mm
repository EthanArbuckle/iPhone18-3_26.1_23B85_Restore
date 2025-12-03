@interface ATXERMEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXERMEvent)initWithEventDate:(id)date eventType:(unint64_t)type recordEntry:(id)entry clientModelIds:(id)ids;
- (ATXERMEvent)initWithProto:(id)proto;
- (ATXERMEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXERMEvent:(id)event;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation ATXERMEvent

- (ATXERMEvent)initWithEventDate:(id)date eventType:(unint64_t)type recordEntry:(id)entry clientModelIds:(id)ids
{
  dateCopy = date;
  entryCopy = entry;
  idsCopy = ids;
  v19.receiver = self;
  v19.super_class = ATXERMEvent;
  v14 = [(ATXERMEvent *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_eventDate, date);
    v15->_eventType = type;
    objc_storeStrong(&v15->_entry, entry);
    v16 = [idsCopy copy];
    clientModelIds = v15->_clientModelIds;
    v15->_clientModelIds = v16;
  }

  return v15;
}

- (ATXERMEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBERMEvent alloc] initWithData:dataCopy];

    self = [(ATXERMEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXERMEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXERMEvent *)self initWithProto:v5];
      }

      selfCopy = 0;
      goto LABEL_25;
    }

    v5 = protoCopy;
    if (([(ATXPBERMEvent *)v5 hasEventDate]& 1) != 0)
    {
      if ([(ATXPBERMEvent *)v5 eventType])
      {
        if (([(ATXPBERMEvent *)v5 hasDateEngaged]& 1) != 0)
        {
          if ([(ATXPBERMEvent *)v5 hasExecutable])
          {
            v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:-[ATXPBERMEvent eventDate](v5)];
            v7 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:-[ATXPBERMEvent dateEngaged](v5)];
            engagementType = [(ATXPBERMEvent *)v5 engagementType];
            executable = [(ATXPBERMEvent *)v5 executable];
            executableType = [(ATXPBERMEvent *)v5 executableType];
            if (executableType > 2)
            {
              if (executableType == 3)
              {
                v11 = [objc_alloc(MEMORY[0x1E69A45D0]) initWithProtoData:executable];
                v12 = [[ATXExecutableIdentifier alloc] initWithHeroAppPrediction:v11];
                goto LABEL_35;
              }

              if (executableType == 4)
              {
                v11 = [objc_alloc(MEMORY[0x1E69C5B88]) initWithProtoData:executable];
                v12 = [[ATXExecutableIdentifier alloc] initWithInfoSuggestion:v11];
                goto LABEL_35;
              }
            }

            else
            {
              if (executableType == 1)
              {
                v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:executable encoding:4];
                v12 = [[ATXExecutableIdentifier alloc] initWithString:v11];
                goto LABEL_35;
              }

              if (executableType == 2)
              {
                v11 = [[ATXAction alloc] initWithProtoData:executable];
                v12 = [[ATXExecutableIdentifier alloc] initWithAction:v11];
LABEL_35:
                p_super = &v12->super;

                v16 = [[ATXEngagementRecordEntry alloc] initWithExecutable:p_super dateEngaged:v7 engagementRecordType:engagementType];
                eventType = [(ATXPBERMEvent *)v5 eventType];
                clientModelIds = [(ATXPBERMEvent *)v5 clientModelIds];
                self = [(ATXERMEvent *)self initWithEventDate:v6 eventType:eventType recordEntry:v16 clientModelIds:clientModelIds];

                selfCopy = self;
LABEL_36:

                goto LABEL_24;
              }
            }

            p_super = __atxlog_handle_default();
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              [(ATXERMEvent *)v5 initWithProto:?];
            }

            selfCopy = 0;
            goto LABEL_36;
          }

          v6 = __atxlog_handle_default();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            [ATXERMEvent initWithProto:];
          }
        }

        else
        {
          v6 = __atxlog_handle_default();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            [ATXERMEvent initWithProto:];
          }
        }
      }

      else
      {
        v6 = __atxlog_handle_default();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          [ATXERMEvent initWithProto:];
        }
      }
    }

    else
    {
      v6 = __atxlog_handle_default();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [ATXERMEvent initWithProto:];
      }
    }

    selfCopy = 0;
LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  selfCopy = 0;
LABEL_26:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(NSArray *)self->_clientModelIds mutableCopy];
  [(ATXPBERMEvent *)v3 setClientModelIds:v4];

  dateEngaged = [(ATXEngagementRecordEntry *)self->_entry dateEngaged];
  [dateEngaged timeIntervalSinceReferenceDate];
  [(ATXPBERMEvent *)v3 setDateEngaged:v6];

  [(ATXPBERMEvent *)v3 setEngagementType:?];
  [(NSDate *)self->_eventDate timeIntervalSinceReferenceDate];
  [(ATXPBERMEvent *)v3 setEventDate:v7];
  [(ATXPBERMEvent *)v3 setEventType:?];
  executable = [(ATXEngagementRecordEntry *)self->_entry executable];
  type = [executable type];

  if (type <= 1)
  {
    if (!type)
    {
      [(ATXPBERMEvent *)v3 setExecutableType:?];
      executable2 = [(ATXEngagementRecordEntry *)self->_entry executable];
      object = [executable2 object];
      encodeAsProto = [object dataUsingEncoding:4];
      goto LABEL_12;
    }

    if (type != 1)
    {
      goto LABEL_13;
    }

    v10 = v3;
    v11 = 2;
  }

  else
  {
    switch(type)
    {
      case 2:
        v10 = v3;
        v11 = 3;
        break;
      case 3:
        v10 = v3;
        v11 = 4;
        break;
      case 4:
        v10 = v3;
        v11 = 5;
        break;
      default:
        goto LABEL_13;
    }
  }

  [(ATXPBERMEvent *)v10 setExecutableType:v11];
  executable2 = [(ATXEngagementRecordEntry *)self->_entry executable];
  object = [executable2 object];
  encodeAsProto = [object encodeAsProto];
LABEL_12:
  v15 = encodeAsProto;
  [(ATXPBERMEvent *)v3 setExecutable:encodeAsProto];

LABEL_13:

  return v3;
}

- (id)encodeAsProto
{
  proto = [(ATXERMEvent *)self proto];
  data = [proto data];

  return data;
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
  jsonDict = [(ATXEngagementRecordEntry *)self->_entry jsonDict];
  v4 = [jsonDict mutableCopy];

  v5 = [(NSDate *)self->_eventDate description];
  [v4 setObject:v5 forKeyedSubscript:@"eventDate"];

  [v4 setObject:self->_clientModelIds forKeyedSubscript:@"clientModelIds"];
  if (self->_eventType == 1)
  {
    v6 = @"AddedEntry";
  }

  else
  {
    v6 = @"Unknown";
  }

  [v4 setObject:v6 forKeyedSubscript:@"eventType"];

  return v4;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(ATXERMEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:0];

  return v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXERMEvent *)self isEqualToATXERMEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXERMEvent:(id)event
{
  eventCopy = event;
  eventType = self->_eventType;
  if (eventType == [eventCopy eventType])
  {
    entry = self->_entry;
    entry = [eventCopy entry];
    if ([(ATXEngagementRecordEntry *)entry isEqual:entry])
    {
      clientModelIds = self->_clientModelIds;
      clientModelIds = [eventCopy clientModelIds];
      v10 = [(NSArray *)clientModelIds isEqualToArray:clientModelIds];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBERMEvent proto", &v5, 0xCu);
}

- (void)initWithProto:(uint64_t)a1 .cold.5(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [(ATXPBERMEvent *)a1 executableType];
  _os_log_error_impl(&dword_1BF549000, a2, OS_LOG_TYPE_ERROR, "The ERM event did not have a valid executable type: %ld", &v3, 0xCu);
}

@end