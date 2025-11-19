@interface AFAnalyticsEvent
+ (id)eventsReferenceTime;
- (AFAnalyticsEvent)initWithCoder:(id)a3;
- (AFAnalyticsEvent)initWithDeliveryStream:(unint64_t)a3 type:(int64_t)a4 timestamp:(unint64_t)a5 contextDataType:(int64_t)a6 contextData:(id)a7;
- (BOOL)isEqual:(id)a3;
- (id)contextDataAsDictionary;
- (id)contextDataAsProtobuf;
- (id)dateStamp;
- (id)legacyTypeName;
- (id)typeName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFAnalyticsEvent

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_contextDataType];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(NSData *)self->_contextData hash];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_deliveryStream];
  v11 = [v10 hash];
  v12 = v11 ^ [(NSString *)self->_assistantId hash];
  v13 = v12 ^ [(NSString *)self->_speechId hash];

  return v9 ^ v13;
}

- (AFAnalyticsEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = AFAnalyticsEvent;
  v5 = [(AFAnalyticsEvent *)&v14 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v5->_deliveryStream = [v4 decodeIntegerForKey:@"_deliveryStream"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timestamp"];
    v5->_timestamp = [v6 unsignedLongLongValue];

    v5->_contextDataType = [v4 decodeIntegerForKey:@"_contextDataType"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contextData"];
    contextData = v5->_contextData;
    v5->_contextData = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_assistantId"];
    assistantId = v5->_assistantId;
    v5->_assistantId = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_speechId"];
    speechId = v5->_speechId;
    v5->_speechId = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v6 = a3;
  [v6 encodeInteger:type forKey:@"_type"];
  [v6 encodeInteger:self->_deliveryStream forKey:@"_deliveryStream"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
  [v6 encodeObject:v5 forKey:@"_timestamp"];

  [v6 encodeInteger:self->_contextDataType forKey:@"_contextDataType"];
  [v6 encodeObject:self->_contextData forKey:@"_contextData"];
  [v6 encodeObject:self->_assistantId forKey:@"_assistantId"];
  [v6 encodeObject:self->_speechId forKey:@"_speechId"];
}

- (id)dateStamp
{
  v2 = MEMORY[0x1E695DF00];
  v3 = self->_timestamp / 1000000000.0;
  v4 = +[AFAnalyticsEvent eventsReferenceTime];
  v5 = [v2 dateWithTimeInterval:v4 sinceDate:v3];

  return v5;
}

- (id)contextDataAsProtobuf
{
  if (self->_contextDataType == 4)
  {
    deliveryStream = self->_deliveryStream;
    if (deliveryStream == 2)
    {
      p_contextData = &self->_contextData;
      if (self->_contextData)
      {
        v5 = 0x1E69CF568;
        goto LABEL_11;
      }
    }

    else if (deliveryStream == 1)
    {
      p_contextData = &self->_contextData;
      if (self->_contextData)
      {
        v5 = off_1E7340640;
LABEL_11:
        v6 = [objc_alloc(*v5) initWithData:*p_contextData];
        goto LABEL_13;
      }
    }

    v6 = 0;
LABEL_13:

    return v6;
  }

  v6 = 0;

  return v6;
}

- (id)contextDataAsDictionary
{
  contextDataType = self->_contextDataType;
  switch(contextDataType)
  {
    case 4:
      v8 = [(AFAnalyticsEvent *)self contextDataAsProtobuf];
      v9 = [v8 si_dictionaryRepresentation];
      v4 = AFAnalyticsSafeContextForJson(v9);

      v7 = 0;
      goto LABEL_11;
    case 2:
      contextData = self->_contextData;
      v11 = 0;
      v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:contextData options:0 error:&v11];
      v5 = v11;
      goto LABEL_6;
    case 1:
      v3 = self->_contextData;
      v12 = 0;
      v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v12];
      v5 = v12;
LABEL_6:
      v7 = v5;
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  v4 = 0;
LABEL_11:

  return v4;
}

- (id)legacyTypeName
{
  deliveryStream = self->_deliveryStream;
  if (deliveryStream - 1 >= 2)
  {
    if (deliveryStream)
    {
      goto LABEL_6;
    }

    v3 = AFAnalyticsEventTypeGetLegacyName(self->_type);
  }

  else
  {
    v3 = [(AFAnalyticsEvent *)self typeName];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (id)typeName
{
  deliveryStream = self->_deliveryStream;
  switch(deliveryStream)
  {
    case 2uLL:
      v7 = [(AFAnalyticsEvent *)self contextDataAsProtobuf];
      v8 = [(__CFString *)v7 anyEventType]- 1;
      if (v8 > 0x70)
      {
        v9 = @"UNKNOWN_EVENT";
      }

      else
      {
        v9 = off_1E7348B18[v8];
      }

LABEL_12:
      v2 = [@"instrumentation." stringByAppendingString:v9];

      break;
    case 1uLL:
      type_low = LODWORD(self->_type);
      v6 = SIReflectionInferClassFromEventType();
      if (v6)
      {
        NSStringFromClass(v6);
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown.%ld", self->_type];
      }
      v7 = ;
      v9 = v7;
      goto LABEL_12;
    case 0uLL:
      v2 = AFAnalyticsEventTypeGetName(self->_type);
      break;
  }

  return v2;
}

- (AFAnalyticsEvent)initWithDeliveryStream:(unint64_t)a3 type:(int64_t)a4 timestamp:(unint64_t)a5 contextDataType:(int64_t)a6 contextData:(id)a7
{
  v12 = a7;
  v18.receiver = self;
  v18.super_class = AFAnalyticsEvent;
  v13 = [(AFAnalyticsEvent *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_deliveryStream = a3;
    v13->_type = a4;
    v13->_timestamp = a5;
    v13->_contextDataType = a6;
    v15 = [v12 copy];
    contextData = v14->_contextData;
    v14->_contextData = v15;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    type = self->_type;
    if (type == [v5 type] && (timestamp = self->_timestamp, timestamp == objc_msgSend(v5, "timestamp")) && (contextDataType = self->_contextDataType, contextDataType == objc_msgSend(v5, "contextDataType")))
    {
      contextData = self->_contextData;
      v10 = [v5 contextData];
      if (-[NSData isEqualToData:](contextData, "isEqualToData:", v10) && (deliveryStream = self->_deliveryStream, deliveryStream == [v5 deliveryStream]))
      {
        assistantId = self->_assistantId;
        v13 = [v5 assistantId];
        if ([(NSString *)assistantId isEqualToString:v13])
        {
          speechId = self->_speechId;
          v15 = [v5 speechId];
          v16 = [(NSString *)speechId isEqualToString:v15];
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)eventsReferenceTime
{
  v2 = _eventsReferenceTime;
  if (!_eventsReferenceTime)
  {
    v3 = MEMORY[0x1E695DF00];
    if (AFSystemGetBootTimeInMicroseconds_onceToken != -1)
    {
      dispatch_once(&AFSystemGetBootTimeInMicroseconds_onceToken, &__block_literal_global_515);
    }

    v4 = [v3 dateWithTimeIntervalSince1970:AFSystemGetBootTimeInMicroseconds_bootTime / 1000000.0];
    v5 = _eventsReferenceTime;
    _eventsReferenceTime = v4;

    v2 = _eventsReferenceTime;
  }

  return v2;
}

@end