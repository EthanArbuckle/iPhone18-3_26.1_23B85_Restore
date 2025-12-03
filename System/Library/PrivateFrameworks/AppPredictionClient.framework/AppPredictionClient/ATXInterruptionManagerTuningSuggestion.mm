@interface ATXInterruptionManagerTuningSuggestion
- (ATXInterruptionManagerTuningSuggestion)initWithCoder:(id)coder;
- (ATXInterruptionManagerTuningSuggestion)initWithProto:(id)proto;
- (ATXInterruptionManagerTuningSuggestion)initWithProtoData:(id)data;
- (ATXInterruptionManagerTuningSuggestion)initWithSuggestionType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsProto;
- (id)feedbackKeyComponent;
- (id)jsonRawData;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInterruptionManagerTuningSuggestion

- (ATXInterruptionManagerTuningSuggestion)initWithSuggestionType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = ATXInterruptionManagerTuningSuggestion;
  v4 = [(ATXInterruptionManagerTuningSuggestion *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_tuningSuggestionType = type;
    v4->_suggestionType = type;
    if (type == 5)
    {
      v6 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [ATXInterruptionManagerTuningSuggestion initWithSuggestionType:v6];
      }

      goto LABEL_8;
    }

    if (!type)
    {
      v6 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [ATXInterruptionManagerTuningSuggestion initWithSuggestionType:v6];
      }

LABEL_8:
    }
  }

  return v5;
}

- (id)feedbackKeyComponent
{
  v2 = MEMORY[0x1E696AEC0];
  if (self->_tuningSuggestionType >= 5)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_tuningSuggestionType];
  }

  else
  {
    v3 = off_1E80C2CA0[self->_tuningSuggestionType & 7];
  }

  v4 = [v2 stringWithFormat:@"suggestion_type:%@", v3];

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXInterruptionManagerTuningSuggestion *)self isEqualToATXInterruptionManagerTuningSuggestion:v5];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_tuningSuggestionType >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_tuningSuggestionType];
  }

  else
  {
    v4 = off_1E80C2CA0[self->_tuningSuggestionType & 7];
  }

  v5 = [v3 initWithFormat:@"Interruption Manager Tuning Suggestion:   Type: %@", v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXInterruptionManagerTuningSuggestion allocWithZone:zone];
  tuningSuggestionType = self->_tuningSuggestionType;

  return [(ATXInterruptionManagerTuningSuggestion *)v4 initWithSuggestionType:tuningSuggestionType];
}

- (id)encodeAsProto
{
  proto = [(ATXInterruptionManagerTuningSuggestion *)self proto];
  data = [proto data];

  return data;
}

- (ATXInterruptionManagerTuningSuggestion)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBInterruptionManagerTuningSuggestion alloc] initWithData:dataCopy];

    self = [(ATXInterruptionManagerTuningSuggestion *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXInterruptionManagerTuningSuggestion)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      if (([v5 hasType]& 1) != 0)
      {
        self = [(ATXInterruptionManagerTuningSuggestion *)self initWithSuggestionType:[v5 type]];
        selfCopy = self;
LABEL_12:

        goto LABEL_13;
      }

      v7 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [ATXInterruptionManagerTuningSuggestion initWithProto:];
      }
    }

    else
    {
      v5 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationSmartPauseSuggestion initWithProto:];
      }
    }

    selfCopy = 0;
    goto LABEL_12;
  }

  selfCopy = 0;
LABEL_13:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setType:LODWORD(self->_tuningSuggestionType)];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXInterruptionManagerTuningSuggestion *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXInterruptionManagerTuningSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXInterruptionManagerTuningSuggestion *)self initWithProtoData:v5];
  return v6;
}

- (id)jsonRawData
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"suggestionType";
  tuningSuggestionType = self->_tuningSuggestionType;
  if (tuningSuggestionType >= 5)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", tuningSuggestionType, v6];
  }

  else
  {
    v3 = off_1E80C2CA0[self->_tuningSuggestionType & 7];
  }

  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (void)initWithProto:.cold.2()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0(&dword_1BF549000, v2, v3, "%@: missing 'type' field on protobuf message. Failed to decode.", v4, v5, v6, v7, 2u);
}

@end