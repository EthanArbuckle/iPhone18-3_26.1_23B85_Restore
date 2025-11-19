@interface ATXInterruptionManagerTuningSuggestion
- (ATXInterruptionManagerTuningSuggestion)initWithCoder:(id)a3;
- (ATXInterruptionManagerTuningSuggestion)initWithProto:(id)a3;
- (ATXInterruptionManagerTuningSuggestion)initWithProtoData:(id)a3;
- (ATXInterruptionManagerTuningSuggestion)initWithSuggestionType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeAsProto;
- (id)feedbackKeyComponent;
- (id)jsonRawData;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXInterruptionManagerTuningSuggestion

- (ATXInterruptionManagerTuningSuggestion)initWithSuggestionType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = ATXInterruptionManagerTuningSuggestion;
  v4 = [(ATXInterruptionManagerTuningSuggestion *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_tuningSuggestionType = a3;
    v4->_suggestionType = a3;
    if (a3 == 5)
    {
      v6 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [ATXInterruptionManagerTuningSuggestion initWithSuggestionType:v6];
      }

      goto LABEL_8;
    }

    if (!a3)
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXInterruptionManagerTuningSuggestion *)self isEqualToATXInterruptionManagerTuningSuggestion:v5];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXInterruptionManagerTuningSuggestion allocWithZone:a3];
  tuningSuggestionType = self->_tuningSuggestionType;

  return [(ATXInterruptionManagerTuningSuggestion *)v4 initWithSuggestionType:tuningSuggestionType];
}

- (id)encodeAsProto
{
  v2 = [(ATXInterruptionManagerTuningSuggestion *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXInterruptionManagerTuningSuggestion)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBInterruptionManagerTuningSuggestion alloc] initWithData:v4];

    self = [(ATXInterruptionManagerTuningSuggestion *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXInterruptionManagerTuningSuggestion)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (([v5 hasType]& 1) != 0)
      {
        self = [(ATXInterruptionManagerTuningSuggestion *)self initWithSuggestionType:[v5 type]];
        v6 = self;
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

    v6 = 0;
    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setType:LODWORD(self->_tuningSuggestionType)];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXInterruptionManagerTuningSuggestion *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXInterruptionManagerTuningSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

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