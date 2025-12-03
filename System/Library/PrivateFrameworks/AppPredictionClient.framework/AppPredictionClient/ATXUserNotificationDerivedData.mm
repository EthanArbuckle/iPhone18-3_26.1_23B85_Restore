@interface ATXUserNotificationDerivedData
- (ATXUserNotificationDerivedData)init;
- (ATXUserNotificationDerivedData)initWithCoder:(id)coder;
- (ATXUserNotificationDerivedData)initWithProto:(id)proto;
- (ATXUserNotificationDerivedData)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXUserNotificationDerivedData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)initFromModelScores:(id)scores;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUserNotificationDerivedData

- (ATXUserNotificationDerivedData)init
{
  v6.receiver = self;
  v6.super_class = ATXUserNotificationDerivedData;
  v2 = [(ATXUserNotificationDerivedData *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    internalScores = v2->_internalScores;
    v2->_internalScores = v3;
  }

  return v2;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(NSMutableArray *)self->_internalScores _pas_mappedArrayWithTransform:&__block_literal_global_19_0];
  v5 = objc_opt_new();
  [v3 setScores:v5];

  if (v4 && [v4 count])
  {
    scores = [v3 scores];
    [scores addObjectsFromArray:v4];
  }

  return v3;
}

- (id)initFromModelScores:(id)scores
{
  scoresCopy = scores;
  v5 = [(ATXUserNotificationDerivedData *)self init];
  v6 = v5;
  if (v5)
  {
    [(ATXUserNotificationDerivedData *)v5 addScores:scoresCopy];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXUserNotificationDerivedData allocWithZone:zone];
  internalScores = self->_internalScores;

  return [(ATXUserNotificationDerivedData *)v4 initFromModelScores:internalScores];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUserNotificationDerivedData *)self isEqualToATXUserNotificationDerivedData:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUserNotificationDerivedData:(id)data
{
  v4 = self->_internalScores;
  v5 = v4;
  if (v4 == *(data + 1))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSMutableArray *)v4 isEqual:?];
  }

  return v6;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBUserNotificationDerivedData alloc] initFromJSON:nCopy];

  v6 = [(ATXUserNotificationDerivedData *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXUserNotificationDerivedData *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

- (ATXUserNotificationDerivedData)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBUserNotificationDerivedData alloc] initWithData:dataCopy];

    self = [(ATXUserNotificationDerivedData *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXUserNotificationDerivedData *)self proto];
  data = [proto data];

  return data;
}

- (ATXUserNotificationDerivedData)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v8];
    }

    goto LABEL_8;
  }

  scores = [protoCopy scores];
  v6 = [scores _pas_mappedArrayWithTransform:&__block_literal_global_29];

  if (v6)
  {
    v7 = [(ATXUserNotificationDerivedData *)self initFromModelScores:v6];
  }

  else
  {
    v7 = [(ATXUserNotificationDerivedData *)self init];
  }

  self = v7;

  selfCopy = self;
LABEL_11:

  return selfCopy;
}

ATXUserNotificationModelScore *__48__ATXUserNotificationDerivedData_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXUserNotificationModelScore alloc] initWithProto:v2];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXUserNotificationDerivedData *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXUserNotificationDerivedData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUserNotificationDerivedData *)self initWithProtoData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end