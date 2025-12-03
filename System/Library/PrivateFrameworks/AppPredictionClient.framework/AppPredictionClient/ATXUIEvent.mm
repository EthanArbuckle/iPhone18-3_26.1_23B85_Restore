@interface ATXUIEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)uiEventWithAppDirectoryEvent:(id)event;
+ (id)uiEventWithHomeScreenEvent:(id)event;
+ (id)uiEventWithLockscreenEvent:(id)event;
+ (id)uiEventWithShortcutsEditorEvent:(id)event;
+ (id)uiEventWithSpotlightEvent:(id)event;
- (ATXUIEvent)initWithCoder:(id)coder;
- (ATXUIEvent)initWithConsumerSubType:(unsigned __int8)type event:(id)event;
- (ATXUIEvent)initWithProto:(id)proto;
- (ATXUIEvent)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXUIEvent:(id)event;
- (id)appDirectoryEvent;
- (id)encodeAsProto;
- (id)homeScreenEvent;
- (id)json;
- (id)jsonDict;
- (id)lockscreenEvent;
- (id)proto;
- (id)shortcutsEditorEvent;
- (id)spotlightEvent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUIEvent

- (id)encodeAsProto
{
  proto = [(ATXUIEvent *)self proto];
  data = [proto data];

  return data;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  [(ATXPBUIEvent *)v3 setConsumerSubType:v4];

  encodeAsProto = [(ATXProactiveSuggestionUIInteractionProtocol *)self->_event encodeAsProto];
  [(ATXPBUIEvent *)v3 setEvent:encodeAsProto];

  return v3;
}

+ (id)uiEventWithHomeScreenEvent:(id)event
{
  eventCopy = event;
  v4 = [[ATXUIEvent alloc] initWithConsumerSubType:34 event:eventCopy];

  return v4;
}

+ (id)uiEventWithSpotlightEvent:(id)event
{
  eventCopy = event;
  v4 = [[ATXUIEvent alloc] initWithConsumerSubType:9 event:eventCopy];

  return v4;
}

+ (id)uiEventWithAppDirectoryEvent:(id)event
{
  eventCopy = event;
  v4 = [[ATXUIEvent alloc] initWithConsumerSubType:35 event:eventCopy];

  return v4;
}

+ (id)uiEventWithLockscreenEvent:(id)event
{
  eventCopy = event;
  v4 = [[ATXUIEvent alloc] initWithConsumerSubType:22 event:eventCopy];

  return v4;
}

+ (id)uiEventWithShortcutsEditorEvent:(id)event
{
  eventCopy = event;
  v4 = [[ATXUIEvent alloc] initWithConsumerSubType:43 event:eventCopy];

  return v4;
}

- (ATXUIEvent)initWithConsumerSubType:(unsigned __int8)type event:(id)event
{
  typeCopy = type;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = ATXUIEvent;
  v8 = [(ATXUIEvent *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_consumerSubType = typeCopy;
    objc_storeStrong(&v8->_event, event);
  }

  if (typeCopy > 0x2B || ((1 << typeCopy) & 0x80C00600200) == 0)
  {
    v11 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXUIEvent initWithConsumerSubType:typeCopy event:?];
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

- (ATXUIEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBUIEvent alloc] initWithData:dataCopy];

    self = [(ATXUIEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXUIEvent)initWithProto:(id)proto
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
        [ATXUIEvent initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_29;
    }

    v5 = protoCopy;
    consumerSubType = [(ATXPBUIEvent *)v5 consumerSubType];
    v15 = 0;
    v7 = [MEMORY[0x1E698B028] consumerSubtypeForString:consumerSubType found:&v15];
    if (v15 == 1)
    {
      v8 = v7;
      selfCopy = 0;
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

          selfCopy = 0;
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
            event = [(ATXPBUIEvent *)v5 event];
            v11 = [v12 initWithProtoData:event];

            self = [(ATXUIEvent *)self initWithConsumerSubType:v8 event:v11];
            selfCopy = self;
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
      selfCopy = 0;
    }

LABEL_28:

LABEL_29:
    goto LABEL_30;
  }

  selfCopy = 0;
LABEL_30:

  return selfCopy;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXUIEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXUIEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXUIEvent *)self initWithProtoData:v5];
  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
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
  v15[2] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  event = self->_event;
  if (isKindOfClass & 1) != 0 || (objc_opt_class(), v5 = objc_opt_isKindOfClass(), event = self->_event, (v5) || (objc_opt_class(), v6 = objc_opt_isKindOfClass(), event = self->_event, (v6) || (objc_opt_class(), v7 = objc_opt_isKindOfClass(), event = self->_event, (v7))
  {
    v8 = event;
LABEL_6:
    jsonDict = [(ATXProactiveSuggestionUIInteractionProtocol *)v8 jsonDict];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self->_event;
    goto LABEL_6;
  }

  jsonDict = objc_opt_new();
LABEL_7:
  v10 = jsonDict;
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
  jsonDict = [(ATXUIEvent *)self jsonDict];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUIEvent *)self isEqualToATXUIEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUIEvent:(id)event
{
  eventCopy = event;
  consumerSubType = self->_consumerSubType;
  if (consumerSubType == [eventCopy consumerSubType])
  {
    v6 = self->_event;
    v7 = v6;
    if (v6 == eventCopy[2])
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