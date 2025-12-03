@interface ATXSendMessagesToDigestSuggestion
- (ATXSendMessagesToDigestSuggestion)init;
- (ATXSendMessagesToDigestSuggestion)initWithCoder:(id)coder;
- (ATXSendMessagesToDigestSuggestion)initWithProto:(id)proto;
- (ATXSendMessagesToDigestSuggestion)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSendMessagesToDigestSuggestion

- (ATXSendMessagesToDigestSuggestion)init
{
  v3.receiver = self;
  v3.super_class = ATXSendMessagesToDigestSuggestion;
  return [(ATXSendMessagesToDigestSuggestion *)&v3 init];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSendMessagesToDigestSuggestion *)self isEqualToATXSendMessagesToDigestSuggestion:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [ATXSendMessagesToDigestSuggestion allocWithZone:zone];

  return [(ATXSendMessagesToDigestSuggestion *)v3 init];
}

- (id)encodeAsProto
{
  proto = [(ATXSendMessagesToDigestSuggestion *)self proto];
  data = [proto data];

  return data;
}

- (ATXSendMessagesToDigestSuggestion)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBSendMessagesToDigestSuggestion alloc] initWithData:dataCopy];

    self = [(ATXSendMessagesToDigestSuggestion *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXSendMessagesToDigestSuggestion)initWithProto:(id)proto
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

  self = [(ATXSendMessagesToDigestSuggestion *)self init];
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
  encodeAsProto = [(ATXSendMessagesToDigestSuggestion *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXSendMessagesToDigestSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSendMessagesToDigestSuggestion *)self initWithProtoData:v5];
  return v6;
}

@end