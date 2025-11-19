@interface ATXTurnOffNotificationsForAppSuggestion
- (ATXTurnOffNotificationsForAppSuggestion)initWithCoder:(id)a3;
- (ATXTurnOffNotificationsForAppSuggestion)initWithProto:(id)a3;
- (ATXTurnOffNotificationsForAppSuggestion)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTurnOffNotificationsForAppSuggestion

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXTurnOffNotificationsForAppSuggestion *)self isEqualToATXTurnOffNotificationsForAppSuggestion:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [ATXTurnOffNotificationsForAppSuggestion allocWithZone:a3];

  return [(ATXTurnOffNotificationsForAppSuggestion *)v3 init];
}

- (id)encodeAsProto
{
  v2 = [(ATXTurnOffNotificationsForAppSuggestion *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXTurnOffNotificationsForAppSuggestion)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBTurnOffNotificationsForAppSuggestion alloc] initWithData:v4];

    self = [(ATXTurnOffNotificationsForAppSuggestion *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXTurnOffNotificationsForAppSuggestion)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(ATXUrgencyTuningSuggestion *)self initWithProto:v6];
    }

    goto LABEL_7;
  }

  self = [(ATXTurnOffNotificationsForAppSuggestion *)self init];
  v5 = self;
LABEL_8:

  return v5;
}

- (id)proto
{
  v2 = objc_opt_new();

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXTurnOffNotificationsForAppSuggestion *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXTurnOffNotificationsForAppSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXTurnOffNotificationsForAppSuggestion *)self initWithProtoData:v5];
  return v6;
}

@end