@interface ATXUIEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)uiEventWithAppDirectoryEvent:(id)a3;
+ (id)uiEventWithHomeScreenEvent:(id)a3;
+ (id)uiEventWithLockscreenEvent:(id)a3;
+ (id)uiEventWithShortcutsEditorEvent:(id)a3;
+ (id)uiEventWithSpotlightEvent:(id)a3;
- (ATXUIEvent)initWithCoder:(id)a3;
- (ATXUIEvent)initWithConsumerSubType:(unsigned __int8)a3 event:(id)a4;
- (ATXUIEvent)initWithProto:(id)a3;
- (ATXUIEvent)initWithProtoData:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXUIEvent:(id)a3;
- (id)appDirectoryEvent;
- (id)encodeAsProto;
- (id)homeScreenEvent;
- (id)json;
- (id)jsonDict;
- (id)lockscreenEvent;
- (id)proto;
- (id)shortcutsEditorEvent;
- (id)spotlightEvent;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUIEvent

- (id)encodeAsProto
{
  v2 = [(ATXUIEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  [(ATXPBUIEvent *)v3 setConsumerSubType:v4];

  v5 = [(ATXProactiveSuggestionUIInteractionProtocol *)self->_event encodeAsProto];
  [(ATXPBUIEvent *)v3 setEvent:v5];

  return v3;
}

+ (id)uiEventWithHomeScreenEvent:(id)a3
{
  v3 = a3;
  v4 = [[ATXUIEvent alloc] initWithConsumerSubType:34 event:v3];

  return v4;
}

+ (id)uiEventWithSpotlightEvent:(id)a3
{
  v3 = a3;
  v4 = [[ATXUIEvent alloc] initWithConsumerSubType:9 event:v3];

  return v4;
}

+ (id)uiEventWithAppDirectoryEvent:(id)a3
{
  v3 = a3;
  v4 = [[ATXUIEvent alloc] initWithConsumerSubType:35 event:v3];

  return v4;
}

+ (id)uiEventWithLockscreenEvent:(id)a3
{
  v3 = a3;
  v4 = [[ATXUIEvent alloc] initWithConsumerSubType:22 event:v3];

  return v4;
}

+ (id)uiEventWithShortcutsEditorEvent:(id)a3
{
  v3 = a3;
  v4 = [[ATXUIEvent alloc] initWithConsumerSubType:43 event:v3];

  return v4;
}

- (ATXUIEvent)initWithConsumerSubType:(unsigned __int8)a3 event:(id)a4
{
  v5 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = ATXUIEvent;
  v8 = [(ATXUIEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_consumerSubType = v5;
    objc_storeStrong(&v8->_event, a4);
  }

  if (v5 > 0x2B || ((1 << v5) & 0x80C00600200) == 0)
  {
    v11 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXUIEvent initWithConsumerSubType:v5 event:?];
    }
  }

  return v9;
}

- (id)homeScreenEvent
{
  if (self->_consumerSubType == 34)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = self->_event;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)spotlightEvent
{
  if (self->_consumerSubType == 9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = self->_event;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)appDirectoryEvent
{
  if (self->_consumerSubType == 35)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = self->_event;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)lockscreenEvent
{
  if (self->_consumerSubType == 22)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = self->_event;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)shortcutsEditorEvent
{
  if (self->_consumerSubType == 43)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = self->_event;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ATXUIEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBUIEvent alloc] initWithData:v4];

    self = [(ATXUIEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXUIEvent)initWithProto:(id)a3
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
        [ATXUIEvent initWithProto:];
      }

      v9 = 0;
      goto LABEL_29;
    }

    v5 = v4;
    v6 = [(ATXPBUIEvent *)v5 consumerSubType];
    v15 = 0;
    v7 = [MEMORY[0x1E698B028] consumerSubtypeForString:v6 found:&v15];
    if (v15 == 1)
    {
      v8 = v7;
      v9 = 0;
      if (v7 <= 33)
      {
        if (v7)
        {
          if (v7 == 9)
          {
            v10 = off_1E80BF9D0;
            goto LABEL_26;
          }

          if (v7 == 22)
          {
            v10 = off_1E80BF510;
            goto LABEL_26;
          }

LABEL_20:
          v11 = __atxlog_handle_default();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
          {
            [(ATXUIEvent *)self initWithProto:v8];
          }

          v9 = 0;
          goto LABEL_27;
        }
      }

      else
      {
        if (v7 <= 42)
        {
          if (v7 == 34)
          {
            v10 = off_1E80BF400;
            goto LABEL_26;
          }

          if (v7 == 35)
          {
            v10 = off_1E80BF0D0;
LABEL_26:
            v12 = objc_alloc(*v10);
            v13 = [(ATXPBUIEvent *)v5 event];
            v11 = [v12 initWithProtoData:v13];

            self = [(ATXUIEvent *)self initWithConsumerSubType:v8 event:v11];
            v9 = self;
LABEL_27:

            goto LABEL_28;
          }

          goto LABEL_20;
        }

        if (v7 == 43)
        {
          v10 = 0x1E69C5BE8;
          goto LABEL_26;
        }

        if (v7 != 50)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_28:

LABEL_29:
    goto LABEL_30;
  }

  v9 = 0;
LABEL_30:

  return v9;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v22[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXUIEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXUIEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXUIEvent *)self initWithProtoData:v5];
  return v6;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 2)
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
  v15[2] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  event = self->_event;
  if (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = objc_opt_isKindOfClass(), event = self->_event, (v5) || (objc_opt_class(), v6 = objc_opt_isKindOfClass(), event = self->_event, (v6) || (objc_opt_class(), v7 = objc_opt_isKindOfClass(), event = self->_event, (v7))
  {
    v8 = event;
LABEL_6:
    v9 = [(ATXProactiveSuggestionUIInteractionProtocol *)v8 jsonDict];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self->_event;
    goto LABEL_6;
  }

  v9 = objc_opt_new();
LABEL_7:
  v10 = v9;
  v14[0] = @"consumerSubType";
  v11 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  v14[1] = @"event";
  v15[0] = v11;
  v15[1] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v12;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXUIEvent *)self jsonDict];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUIEvent *)self isEqualToATXUIEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUIEvent:(id)a3
{
  v4 = a3;
  consumerSubType = self->_consumerSubType;
  if (consumerSubType == [v4 consumerSubType])
  {
    v6 = self->_event;
    v7 = v6;
    if (v6 == v4[2])
    {
      v8 = 1;
    }

    else
    {
      v8 = [(ATXProactiveSuggestionUIInteractionProtocol *)v6 isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)initWithConsumerSubType:(unsigned __int8)a1 event:.cold.1(unsigned __int8 a1)
{
  v6 = [MEMORY[0x1E698B028] stringForConsumerSubtype:a1];
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)initWithProto:.cold.1()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)initWithProto:(uint64_t)a1 .cold.2(uint64_t a1, unsigned __int8 a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v10 = [MEMORY[0x1E698B028] stringForConsumerSubtype:a2];
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

@end