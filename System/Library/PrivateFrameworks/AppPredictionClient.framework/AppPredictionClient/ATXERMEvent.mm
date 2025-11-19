@interface ATXERMEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXERMEvent)initWithEventDate:(id)a3 eventType:(unint64_t)a4 recordEntry:(id)a5 clientModelIds:(id)a6;
- (ATXERMEvent)initWithProto:(id)a3;
- (ATXERMEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXERMEvent:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation ATXERMEvent

- (ATXERMEvent)initWithEventDate:(id)a3 eventType:(unint64_t)a4 recordEntry:(id)a5 clientModelIds:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = ATXERMEvent;
  v14 = [(ATXERMEvent *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_eventDate, a3);
    v15->_eventType = a4;
    objc_storeStrong(&v15->_entry, a5);
    v16 = [v13 copy];
    clientModelIds = v15->_clientModelIds;
    v15->_clientModelIds = v16;
  }

  return v15;
}

- (ATXERMEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBERMEvent alloc] initWithData:v4];

    self = [(ATXERMEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXERMEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXERMEvent *)self initWithProto:v5];
      }

      v13 = 0;
      goto LABEL_25;
    }

    v5 = v4;
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
            v8 = [(ATXPBERMEvent *)v5 engagementType];
            v9 = [(ATXPBERMEvent *)v5 executable];
            v10 = [(ATXPBERMEvent *)v5 executableType];
            if (v10 > 2)
            {
              if (v10 == 3)
              {
                v11 = [objc_alloc(MEMORY[0x1E69A45D0]) initWithProtoData:v9];
                v12 = [[ATXExecutableIdentifier alloc] initWithHeroAppPrediction:v11];
                goto LABEL_35;
              }

              if (v10 == 4)
              {
                v11 = [objc_alloc(MEMORY[0x1E69C5B88]) initWithProtoData:v9];
                v12 = [[ATXExecutableIdentifier alloc] initWithInfoSuggestion:v11];
                goto LABEL_35;
              }
            }

            else
            {
              if (v10 == 1)
              {
                v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v9 encoding:4];
                v12 = [[ATXExecutableIdentifier alloc] initWithString:v11];
                goto LABEL_35;
              }

              if (v10 == 2)
              {
                v11 = [[ATXAction alloc] initWithProtoData:v9];
                v12 = [[ATXExecutableIdentifier alloc] initWithAction:v11];
LABEL_35:
                p_super = &v12->super;

                v16 = [[ATXEngagementRecordEntry alloc] initWithExecutable:p_super dateEngaged:v7 engagementRecordType:v8];
                v17 = [(ATXPBERMEvent *)v5 eventType];
                v18 = [(ATXPBERMEvent *)v5 clientModelIds];
                self = [(ATXERMEvent *)self initWithEventDate:v6 eventType:v17 recordEntry:v16 clientModelIds:v18];

                v13 = self;
LABEL_36:

                goto LABEL_24;
              }
            }

            p_super = __atxlog_handle_default();
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              [(ATXERMEvent *)v5 initWithProto:?];
            }

            v13 = 0;
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

    v13 = 0;
LABEL_24:

LABEL_25:
    goto LABEL_26;
  }

  v13 = 0;
LABEL_26:

  return v13;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(NSArray *)self->_clientModelIds mutableCopy];
  [(ATXPBERMEvent *)v3 setClientModelIds:v4];

  v5 = [(ATXEngagementRecordEntry *)self->_entry dateEngaged];
  [v5 timeIntervalSinceReferenceDate];
  [(ATXPBERMEvent *)v3 setDateEngaged:v6];

  [(ATXPBERMEvent *)v3 setEngagementType:?];
  [(NSDate *)self->_eventDate timeIntervalSinceReferenceDate];
  [(ATXPBERMEvent *)v3 setEventDate:v7];
  [(ATXPBERMEvent *)v3 setEventType:?];
  v8 = [(ATXEngagementRecordEntry *)self->_entry executable];
  v9 = [v8 type];

  if (v9 <= 1)
  {
    if (!v9)
    {
      [(ATXPBERMEvent *)v3 setExecutableType:?];
      v12 = [(ATXEngagementRecordEntry *)self->_entry executable];
      v13 = [v12 object];
      v14 = [v13 dataUsingEncoding:4];
      goto LABEL_12;
    }

    if (v9 != 1)
    {
      goto LABEL_13;
    }

    v10 = v3;
    v11 = 2;
  }

  else
  {
    switch(v9)
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
  v12 = [(ATXEngagementRecordEntry *)self->_entry executable];
  v13 = [v12 object];
  v14 = [v13 encodeAsProto];
LABEL_12:
  v15 = v14;
  [(ATXPBERMEvent *)v3 setExecutable:v14];

LABEL_13:

  return v3;
}

- (id)encodeAsProto
{
  v2 = [(ATXERMEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v5 = a3;
    v6 = [[a1 alloc] initWithProtoData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)jsonDict
{
  v3 = [(ATXEngagementRecordEntry *)self->_entry jsonDict];
  v4 = [v3 mutableCopy];

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
  v3 = [(ATXERMEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXERMEvent *)self isEqualToATXERMEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXERMEvent:(id)a3
{
  v4 = a3;
  eventType = self->_eventType;
  if (eventType == [v4 eventType])
  {
    entry = self->_entry;
    v7 = [v4 entry];
    if ([(ATXEngagementRecordEntry *)entry isEqual:v7])
    {
      clientModelIds = self->_clientModelIds;
      v9 = [v4 clientModelIds];
      v10 = [(NSArray *)clientModelIds isEqualToArray:v9];
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