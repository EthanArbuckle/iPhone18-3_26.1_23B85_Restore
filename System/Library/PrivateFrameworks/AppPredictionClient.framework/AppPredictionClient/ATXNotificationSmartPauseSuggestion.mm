@interface ATXNotificationSmartPauseSuggestion
- (ATXNotificationSmartPauseSuggestion)initWithCoder:(id)a3;
- (ATXNotificationSmartPauseSuggestion)initWithProto:(id)a3;
- (ATXNotificationSmartPauseSuggestion)initWithProtoData:(id)a3;
- (ATXNotificationSmartPauseSuggestion)initWithSuggestionExpiration:(id)a3 pauseDuration:(double)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXNotificationSmartPauseSuggestion:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXNotificationSmartPauseSuggestion

- (ATXNotificationSmartPauseSuggestion)initWithSuggestionExpiration:(id)a3 pauseDuration:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ATXNotificationSmartPauseSuggestion;
  v8 = [(ATXNotificationSmartPauseSuggestion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_suggestionExpiration, a3);
    v9->_suggestionDuration = a4;
  }

  return v9;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXNotificationSmartPauseSuggestion *)self isEqualToATXNotificationSmartPauseSuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXNotificationSmartPauseSuggestion:(id)a3
{
  v4 = a3;
  [(NSDate *)self->_suggestionExpiration timeIntervalSinceReferenceDate];
  v6 = v5;
  [v4[1] timeIntervalSinceReferenceDate];
  v8 = v6 - v7;
  v9 = -v8;
  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  if (v9 <= 300.0)
  {
    v11 = self->_suggestionDuration - *(v4 + 2);
    if (v11 < 0.0)
    {
      v11 = -v11;
    }

    v10 = v11 <= 300.0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Smart Pause:   Expiration: %@, Duration: %f", self->_suggestionExpiration, *&self->_suggestionDuration];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXNotificationSmartPauseSuggestion allocWithZone:a3];
  suggestionExpiration = self->_suggestionExpiration;
  suggestionDuration = self->_suggestionDuration;

  return [(ATXNotificationSmartPauseSuggestion *)v4 initWithSuggestionExpiration:suggestionExpiration pauseDuration:suggestionDuration];
}

- (id)encodeAsProto
{
  v2 = [(ATXNotificationSmartPauseSuggestion *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXNotificationSmartPauseSuggestion)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBNotificationSmartPauseSuggestion alloc] initWithData:v4];

    self = [(ATXNotificationSmartPauseSuggestion *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXNotificationSmartPauseSuggestion)initWithProto:(id)a3
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
        [ATXNotificationSmartPauseSuggestion initWithProto:];
      }

      v8 = 0;
      goto LABEL_17;
    }

    v5 = v4;
    if (([v5 hasExpirationTimestamp]& 1) != 0)
    {
      v6 = MEMORY[0x1E695DF00];
      [v5 expirationTimestamp];
      v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
      if (([v5 hasPauseDuration]& 1) != 0)
      {
        [v5 pauseDuration];
        self = [(ATXNotificationSmartPauseSuggestion *)self initWithSuggestionExpiration:v7 pauseDuration:?];
        v8 = self;
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v9 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationSmartPauseSuggestion initWithProto:];
      }
    }

    else
    {
      v7 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationSmartPauseSuggestion initWithProto:];
      }
    }

    v8 = 0;
    goto LABEL_16;
  }

  v8 = 0;
LABEL_18:

  return v8;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(NSDate *)self->_suggestionExpiration timeIntervalSinceReferenceDate];
  [v3 setExpirationTimestamp:?];
  [v3 setPauseDuration:self->_suggestionDuration];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXNotificationSmartPauseSuggestion *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXNotificationSmartPauseSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXNotificationSmartPauseSuggestion *)self initWithProtoData:v5];
  return v6;
}

- (void)initWithProto:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0(&dword_1BF549000, v2, v3, "%@: Unable to construct class from ProtoBuf object", v4, v5, v6, v7, 2u);
}

- (void)initWithProto:.cold.2()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0(&dword_1BF549000, v2, v3, "%@: missing expirationTimestamp.", v4, v5, v6, v7, 2u);
}

- (void)initWithProto:.cold.3()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0(&dword_1BF549000, v2, v3, "%@: missing pauseDuration.", v4, v5, v6, v7, 2u);
}

@end