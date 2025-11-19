@interface ATXUserNotificationModelScore
- (ATXUserNotificationModelScore)initWithCoder:(id)a3;
- (ATXUserNotificationModelScore)initWithProto:(id)a3;
- (ATXUserNotificationModelScore)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXUserNotificationModelScore:(id)a3;
- (id)encodeAsProto;
- (id)initFromJSON:(id)a3;
- (id)initFromModelScoreData:(id)a3 modelVersion:(unint64_t)a4 score:(double)a5 scoreTimestamp:(double)a6 scoreUUID:(id)a7 scoreInfo:(id)a8;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUserNotificationModelScore

- (id)initFromModelScoreData:(id)a3 modelVersion:(unint64_t)a4 score:(double)a5 scoreTimestamp:(double)a6 scoreUUID:(id)a7 scoreInfo:(id)a8
{
  v15 = a3;
  v16 = a7;
  v17 = a8;
  v21.receiver = self;
  v21.super_class = ATXUserNotificationModelScore;
  v18 = [(ATXUserNotificationModelScore *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_modelId, a3);
    v19->_modelVersion = a4;
    v19->_score = a5;
    v19->_scoreTimestamp = a6;
    objc_storeStrong(&v19->_scoreUUID, a7);
    objc_storeStrong(&v19->_scoreInfo, a8);
  }

  return v19;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUserNotificationModelScore *)self isEqualToATXUserNotificationModelScore:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUserNotificationModelScore:(id)a3
{
  v4 = a3;
  v5 = self->_modelId;
  v6 = v5;
  if (v5 == v4[1])
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

  if (self->_modelVersion != v4[2] || self->_score != *(v4 + 3) || self->_scoreTimestamp != *(v4 + 4))
  {
    goto LABEL_8;
  }

  v10 = self->_scoreUUID;
  v11 = v10;
  if (v10 == v4[5])
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
  if (v13 == v4[6])
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

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBUserNotificationModelScore alloc] initFromJSON:v4];

  v6 = [(ATXUserNotificationModelScore *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(ATXUserNotificationModelScore *)self proto];
  v3 = [v2 jsonRepresentation];

  return v3;
}

- (ATXUserNotificationModelScore)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBUserNotificationModelScore alloc] initWithData:v4];

    self = [(ATXUserNotificationModelScore *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXUserNotificationModelScore *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXUserNotificationModelScore)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v16 = 0;
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

  v5 = v4;
  v6 = [v5 modelId];
  v7 = [v5 modelVersion];
  [v5 score];
  v9 = v8;
  [v5 scoreTimestamp];
  v11 = v10;
  v12 = objc_alloc(MEMORY[0x1E696AFB0]);
  v13 = [v5 scoreUUID];
  v14 = [v12 initWithUUIDString:v13];
  v15 = [v5 scoreInfo];

  self = [(ATXUserNotificationModelScore *)self initFromModelScoreData:v6 modelVersion:v7 score:v14 scoreTimestamp:v15 scoreUUID:v9 scoreInfo:v11];
  v16 = self;
LABEL_8:

  return v16;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setModelId:self->_modelId];
  [v3 setModelVersion:self->_modelVersion];
  [v3 setScore:self->_score];
  [v3 setScoreTimestamp:self->_scoreTimestamp];
  v4 = [(NSUUID *)self->_scoreUUID UUIDString];
  [v3 setScoreUUID:v4];

  [v3 setScoreInfo:self->_scoreInfo];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXUserNotificationModelScore *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXUserNotificationModelScore)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUserNotificationModelScore *)self initWithProtoData:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end