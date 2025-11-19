@interface ATXSendToDigestSuggestion
- (ATXSendToDigestSuggestion)init;
- (ATXSendToDigestSuggestion)initWithCoder:(id)a3;
- (ATXSendToDigestSuggestion)initWithProto:(id)a3;
- (ATXSendToDigestSuggestion)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSendToDigestSuggestion

- (ATXSendToDigestSuggestion)init
{
  v3.receiver = self;
  v3.super_class = ATXSendToDigestSuggestion;
  return [(ATXSendToDigestSuggestion *)&v3 init];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSendToDigestSuggestion *)self isEqualToATXSendToDigestSuggestion:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [ATXSendToDigestSuggestion allocWithZone:a3];

  return [(ATXSendToDigestSuggestion *)v3 init];
}

- (id)encodeAsProto
{
  v2 = [(ATXSendToDigestSuggestion *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXSendToDigestSuggestion)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBSendToDigestSuggestion alloc] initWithData:v4];

    self = [(ATXSendToDigestSuggestion *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXSendToDigestSuggestion)initWithProto:(id)a3
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

  self = [(ATXSendToDigestSuggestion *)self init];
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
  v5 = [(ATXSendToDigestSuggestion *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXSendToDigestSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSendToDigestSuggestion *)self initWithProtoData:v5];
  return v6;
}

@end