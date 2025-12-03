@interface ATXUserNotificationModelScore
- (ATXUserNotificationModelScore)initWithCoder:(id)coder;
- (ATXUserNotificationModelScore)initWithProto:(id)proto;
- (ATXUserNotificationModelScore)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXUserNotificationModelScore:(id)score;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)initFromModelScoreData:(id)data modelVersion:(unint64_t)version score:(double)score scoreTimestamp:(double)timestamp scoreUUID:(id)d scoreInfo:(id)info;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUserNotificationModelScore

- (id)initFromModelScoreData:(id)data modelVersion:(unint64_t)version score:(double)score scoreTimestamp:(double)timestamp scoreUUID:(id)d scoreInfo:(id)info
{
  dataCopy = data;
  dCopy = d;
  infoCopy = info;
  v21.receiver = self;
  v21.super_class = ATXUserNotificationModelScore;
  v18 = [(ATXUserNotificationModelScore *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_modelId, data);
    v19->_modelVersion = version;
    v19->_score = score;
    v19->_scoreTimestamp = timestamp;
    objc_storeStrong(&v19->_scoreUUID, d);
    objc_storeStrong(&v19->_scoreInfo, info);
  }

  return v19;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUserNotificationModelScore *)self isEqualToATXUserNotificationModelScore:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUserNotificationModelScore:(id)score
{
  scoreCopy = score;
  v5 = self->_modelId;
  v6 = v5;
  if (v5 == scoreCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (self->_modelVersion != scoreCopy[2] || self->_score != *(scoreCopy + 3) || self->_scoreTimestamp != *(scoreCopy + 4))
  {
    goto LABEL_8;
  }

  v10 = self->_scoreUUID;
  v11 = v10;
  if (v10 == scoreCopy[5])
  {
  }

  else
  {
    v12 = [(NSUUID *)v10 isEqual:?];

    if ((v12 & 1) == 0)
    {
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }
  }

  v13 = self->_scoreInfo;
  v14 = v13;
  if (v13 == scoreCopy[6])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSData *)v13 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBUserNotificationModelScore alloc] initFromJSON:nCopy];

  v6 = [(ATXUserNotificationModelScore *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXUserNotificationModelScore *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

- (ATXUserNotificationModelScore)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBUserNotificationModelScore alloc] initWithData:dataCopy];

    self = [(ATXUserNotificationModelScore *)self initWithProto:v5];
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
  proto = [(ATXUserNotificationModelScore *)self proto];
  data = [proto data];

  return data;
}

- (ATXUserNotificationModelScore)initWithProto:(id)proto
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
    v17 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v17];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  modelId = [v5 modelId];
  modelVersion = [v5 modelVersion];
  [v5 score];
  v9 = v8;
  [v5 scoreTimestamp];
  v11 = v10;
  v12 = objc_alloc(MEMORY[0x1E696AFB0]);
  scoreUUID = [v5 scoreUUID];
  v14 = [v12 initWithUUIDString:scoreUUID];
  scoreInfo = [v5 scoreInfo];

  self = [(ATXUserNotificationModelScore *)self initFromModelScoreData:modelId modelVersion:modelVersion score:v14 scoreTimestamp:scoreInfo scoreUUID:v9 scoreInfo:v11];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setModelId:self->_modelId];
  [v3 setModelVersion:self->_modelVersion];
  [v3 setScore:self->_score];
  [v3 setScoreTimestamp:self->_scoreTimestamp];
  uUIDString = [(NSUUID *)self->_scoreUUID UUIDString];
  [v3 setScoreUUID:uUIDString];

  [v3 setScoreInfo:self->_scoreInfo];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXUserNotificationModelScore *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXUserNotificationModelScore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUserNotificationModelScore *)self initWithProtoData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end