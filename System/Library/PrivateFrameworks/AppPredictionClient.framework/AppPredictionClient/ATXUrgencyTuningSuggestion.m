@interface ATXUrgencyTuningSuggestion
- (ATXUrgencyTuningSuggestion)init;
- (ATXUrgencyTuningSuggestion)initWithCoder:(id)a3;
- (ATXUrgencyTuningSuggestion)initWithProto:(id)a3;
- (ATXUrgencyTuningSuggestion)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProto;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUrgencyTuningSuggestion

- (ATXUrgencyTuningSuggestion)init
{
  v3.receiver = self;
  v3.super_class = ATXUrgencyTuningSuggestion;
  return [(ATXUrgencyTuningSuggestion *)&v3 init];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUrgencyTuningSuggestion *)self isEqualToATXUrgencyTuningSuggestion:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [ATXUrgencyTuningSuggestion allocWithZone:a3];

  return [(ATXUrgencyTuningSuggestion *)v3 init];
}

- (id)encodeAsProto
{
  v2 = [(ATXUrgencyTuningSuggestion *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXUrgencyTuningSuggestion)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBUrgencyTuningSuggestion alloc] initWithData:v4];

    self = [(ATXUrgencyTuningSuggestion *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXUrgencyTuningSuggestion)initWithProto:(id)a3
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

  self = [(ATXUrgencyTuningSuggestion *)self init];
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
  v5 = [(ATXUrgencyTuningSuggestion *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXUrgencyTuningSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

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