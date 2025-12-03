@interface ATXTurnOffNotificationsForAppSuggestion
- (ATXTurnOffNotificationsForAppSuggestion)initWithCoder:(id)coder;
- (ATXTurnOffNotificationsForAppSuggestion)initWithProto:(id)proto;
- (ATXTurnOffNotificationsForAppSuggestion)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTurnOffNotificationsForAppSuggestion

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXTurnOffNotificationsForAppSuggestion *)self isEqualToATXTurnOffNotificationsForAppSuggestion:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [ATXTurnOffNotificationsForAppSuggestion allocWithZone:zone];

  return [(ATXTurnOffNotificationsForAppSuggestion *)v3 init];
}

- (id)encodeAsProto
{
  proto = [(ATXTurnOffNotificationsForAppSuggestion *)self proto];
  data = [proto data];

  return data;
}

- (ATXTurnOffNotificationsForAppSuggestion)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBTurnOffNotificationsForAppSuggestion alloc] initWithData:dataCopy];

    self = [(ATXTurnOffNotificationsForAppSuggestion *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXTurnOffNotificationsForAppSuggestion)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
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
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v2 = objc_opt_new();

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXTurnOffNotificationsForAppSuggestion *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXTurnOffNotificationsForAppSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXTurnOffNotificationsForAppSuggestion *)self initWithProtoData:v5];
  return v6;
}

@end