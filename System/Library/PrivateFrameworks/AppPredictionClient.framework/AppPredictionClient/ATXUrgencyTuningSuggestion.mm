@interface ATXUrgencyTuningSuggestion
- (ATXUrgencyTuningSuggestion)init;
- (ATXUrgencyTuningSuggestion)initWithCoder:(id)coder;
- (ATXUrgencyTuningSuggestion)initWithProto:(id)proto;
- (ATXUrgencyTuningSuggestion)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUrgencyTuningSuggestion

- (ATXUrgencyTuningSuggestion)init
{
  v3.receiver = self;
  v3.super_class = ATXUrgencyTuningSuggestion;
  return [(ATXUrgencyTuningSuggestion *)&v3 init];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUrgencyTuningSuggestion *)self isEqualToATXUrgencyTuningSuggestion:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [ATXUrgencyTuningSuggestion allocWithZone:zone];

  return [(ATXUrgencyTuningSuggestion *)v3 init];
}

- (id)encodeAsProto
{
  proto = [(ATXUrgencyTuningSuggestion *)self proto];
  data = [proto data];

  return data;
}

- (ATXUrgencyTuningSuggestion)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBUrgencyTuningSuggestion alloc] initWithData:dataCopy];

    self = [(ATXUrgencyTuningSuggestion *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXUrgencyTuningSuggestion)initWithProto:(id)proto
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

  self = [(ATXUrgencyTuningSuggestion *)self init];
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
  encodeAsProto = [(ATXUrgencyTuningSuggestion *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXUrgencyTuningSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXUrgencyTuningSuggestion *)self initWithProtoData:v5];
  return v6;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "%@: Unable to construct class from ProtoBuf object", &v5, 0xCu);
}

@end