@interface ATXUnifiedInferredActivitySession
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXUnifiedInferredActivitySession)initWithCoder:(id)coder;
- (ATXUnifiedInferredActivitySession)initWithProto:(id)proto;
- (ATXUnifiedInferredActivitySession)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXUnifiedInferredActivitySession:(id)session;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)initFromStartTime:(double)time endTime:(double)endTime source:(id)source activityType:(unint64_t)type confidence:(double)confidence;
- (id)json;
- (id)jsonRepresentation;
- (id)prettyRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUnifiedInferredActivitySession

- (id)initFromStartTime:(double)time endTime:(double)endTime source:(id)source activityType:(unint64_t)type confidence:(double)confidence
{
  sourceCopy = source;
  v17.receiver = self;
  v17.super_class = ATXUnifiedInferredActivitySession;
  v14 = [(ATXUnifiedInferredActivitySession *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_source, source);
    v15->_startTime = time;
    v15->_endTime = endTime;
    v15->_inferredActivityType = type;
    v15->_confidence = confidence;
  }

  return v15;
}

- (id)prettyRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  v4 = MEMORY[0x277CCA968];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v4 dateFormatFromTemplate:@"EMMMd HH:mm ss ZZZZ" options:0 locale:currentLocale];

  [v3 setDateFormat:v6];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_startTime];
  v8 = [v3 stringFromDate:v7];

  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_endTime];
  v10 = [v3 stringFromDate:v9];

  v11 = MEMORY[0x277CCACA8];
  source = self->_source;
  [(ATXUnifiedInferredActivitySession *)self inferredActivityType];
  v13 = ATXActivityTypeToString();
  [(ATXUnifiedInferredActivitySession *)self confidence];
  v15 = [v11 stringWithFormat:@"%@: (%@, %@), %@.  Confidence %.2f", source, v8, v10, v13, v14];

  return v15;
}

- (id)json
{
  v2 = MEMORY[0x277CCAAA0];
  jsonRepresentation = [(ATXUnifiedInferredActivitySession *)self jsonRepresentation];
  v4 = [v2 dataWithJSONObject:jsonRepresentation options:2 error:0];

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 3)
  {
    v7 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v12 = 0;
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:self fromData:dataCopy error:&v12];
    v10 = v12;
    objc_autoreleasePoolPop(v8);
    v7 = 0;
    if (!v10)
    {
      v7 = v9;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXUnifiedInferredActivitySession *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXUnifiedInferredActivitySession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUnifiedInferredActivitySession *)self initWithProtoData:v5];
    selfCopy = self;
  }

  else
  {
    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXUnifiedInferredActivitySession initWithCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUnifiedInferredActivitySession *)self isEqualToATXUnifiedInferredActivitySession:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUnifiedInferredActivitySession:(id)session
{
  sessionCopy = session;
  [(ATXUnifiedInferredActivitySession *)self startTime];
  v6 = v5;
  [sessionCopy startTime];
  v8 = v6 - v7;
  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  [(ATXUnifiedInferredActivitySession *)self endTime];
  v11 = v10;
  [sessionCopy endTime];
  v13 = v12;
  inferredActivityType = [(ATXUnifiedInferredActivitySession *)self inferredActivityType];
  inferredActivityType2 = [sessionCopy inferredActivityType];
  source = [(ATXUnifiedInferredActivitySession *)self source];
  source2 = [sessionCopy source];
  v18 = [source isEqualToString:source2];

  inferredActivityType3 = [(ATXUnifiedInferredActivitySession *)self inferredActivityType];
  inferredActivityType4 = [sessionCopy inferredActivityType];
  [(ATXUnifiedInferredActivitySession *)self confidence];
  v22 = v21;
  [sessionCopy confidence];
  v24 = v23;

  if (v9 >= 0.1)
  {
    return 0;
  }

  v25 = v22 - v24;
  if (v22 - v24 < 0.0)
  {
    v25 = -(v22 - v24);
  }

  v26 = v11 - v13;
  if (v11 - v13 < 0.0)
  {
    v26 = -(v11 - v13);
  }

  v28 = v26 < 0.1 && inferredActivityType == inferredActivityType2;
  v29 = v28 & v18;
  if (inferredActivityType3 != inferredActivityType4)
  {
    v29 = 0;
  }

  return v25 < 0.01 && v29;
}

- (id)encodeAsProto
{
  proto = [(ATXUnifiedInferredActivitySession *)self proto];
  data = [proto data];

  return data;
}

- (ATXUnifiedInferredActivitySession)initWithProto:(id)proto
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
    v15 = __atxlog_handle_modes();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [ATXUnifiedInferredActivitySession initWithProto:];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  [v5 startTime];
  v7 = v6;
  [v5 endTime];
  v9 = v8;
  source = [v5 source];
  inferredActivity = [v5 inferredActivity];
  [v5 confidence];
  v13 = v12;

  self = [(ATXUnifiedInferredActivitySession *)self initFromStartTime:source endTime:inferredActivity source:v7 activityType:v9 confidence:v13];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (ATXUnifiedInferredActivitySession)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBUnifiedInferredActivitySession alloc] initWithData:dataCopy];

    self = [(ATXUnifiedInferredActivitySession *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXUnifiedInferredActivitySession *)self confidence];
  [v3 setConfidence:?];
  [v3 setInferredActivity:{-[ATXUnifiedInferredActivitySession inferredActivityType](self, "inferredActivityType")}];
  [(ATXUnifiedInferredActivitySession *)self startTime];
  [v3 setStartTime:?];
  [(ATXUnifiedInferredActivitySession *)self endTime];
  [v3 setEndTime:?];
  source = [(ATXUnifiedInferredActivitySession *)self source];
  [v3 setSource:source];

  return v3;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBUnifiedInferredActivitySession alloc] initFromJSON:nCopy];

  v6 = [(ATXUnifiedInferredActivitySession *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXUnifiedInferredActivitySession *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

- (void)initWithCoder:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v2, v3, "Unable to construct class %@ from coder", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithProto:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_10(&dword_2263AA000, v2, v3, "Unable to construct class %@ from ProtoBuf object", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end