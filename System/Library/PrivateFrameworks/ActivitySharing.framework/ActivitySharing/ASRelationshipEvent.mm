@interface ASRelationshipEvent
+ (id)_relationshipEventWithCodable:(id)a3;
+ (id)relationshipEventWithRecord:(id)a3;
- (ASRelationshipEvent)initWithType:(unsigned __int16)a3 anchor:(unsigned __int16)a4 timestamp:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRelationshipEvent:(id)a3;
- (id)_codableRelationshipEvent;
- (id)description;
@end

@implementation ASRelationshipEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  anchor = self->_anchor;
  v5 = NSStringFromASRelationshipEventType(self->_type);
  v6 = [v3 stringWithFormat:@"[%d: %@ at %@]", anchor, v5, self->_timestamp];

  return v6;
}

- (id)_codableRelationshipEvent
{
  v3 = objc_alloc_init(ASCodableCloudKitRelationshipEvent);
  [(ASCodableCloudKitRelationshipEvent *)v3 setAnchor:[(ASRelationshipEvent *)self anchor]];
  [(ASCodableCloudKitRelationshipEvent *)v3 setType:[(ASRelationshipEvent *)self type]];
  v4 = [(ASRelationshipEvent *)self timestamp];
  [v4 timeIntervalSinceReferenceDate];
  [(ASCodableCloudKitRelationshipEvent *)v3 setDate:?];

  return v3;
}

+ (id)_relationshipEventWithCodable:(id)a3
{
  v3 = a3;
  v4 = [v3 anchor];
  v5 = [v3 type];
  v6 = MEMORY[0x277CBEAA8];
  [v3 date];
  v8 = v7;

  v9 = [v6 dateWithTimeIntervalSinceReferenceDate:v8];
  v10 = [[ASRelationshipEvent alloc] initWithType:v5 anchor:v4 timestamp:v9];

  return v10;
}

+ (id)relationshipEventWithRecord:(id)a3
{
  v3 = a3;
  if (_ASCloudKitSchemaVersionForRecord(v3) == 2)
  {
    v4 = [v3 encryptedValues];
    v5 = [v4 objectForKeyedSubscript:@"EncryptedData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v8 = [[ASCodableCloudKitRelationshipEvent alloc] initWithData:v6];
      v9 = [(ASCodableCloudKitRelationshipEvent *)v8 anchor];
      v10 = [(ASCodableCloudKitRelationshipEvent *)v8 type];
      v11 = [v3 creationDate];
      v7 = [[ASRelationshipEvent alloc] initWithType:v10 anchor:v9 timestamp:v11];
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        +[ASRelationshipEvent(CloudKitCoding) relationshipEventWithRecord:];
      }

      v7 = 0;
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[ASRelationshipEvent(CloudKitCoding) relationshipEventWithRecord:];
    }

    v7 = 0;
  }

  return v7;
}

- (ASRelationshipEvent)initWithType:(unsigned __int16)a3 anchor:(unsigned __int16)a4 timestamp:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ASRelationshipEvent;
  v10 = [(ASRelationshipEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v10->_anchor = a4;
    objc_storeStrong(&v10->_timestamp, a5);
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ASRelationshipEvent *)self isEqualToRelationshipEvent:v4];
  }

  return v5;
}

- (BOOL)isEqualToRelationshipEvent:(id)a3
{
  v4 = a3;
  anchor = self->_anchor;
  if (anchor == [v4 anchor] && (type = self->_type, type == objc_msgSend(v4, "type")))
  {
    timestamp = self->_timestamp;
    v8 = [v4 timestamp];
    v9 = [(NSDate *)timestamp isEqualToDate:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end