@interface ATXUnifiedInferredActivitySession
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXUnifiedInferredActivitySession)initWithCoder:(id)a3;
- (ATXUnifiedInferredActivitySession)initWithProto:(id)a3;
- (ATXUnifiedInferredActivitySession)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXUnifiedInferredActivitySession:(id)a3;
- (id)encodeAsProto;
- (id)initFromJSON:(id)a3;
- (id)initFromStartTime:(double)a3 endTime:(double)a4 source:(id)a5 activityType:(unint64_t)a6 confidence:(double)a7;
- (id)json;
- (id)jsonRepresentation;
- (id)prettyRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUnifiedInferredActivitySession

- (id)initFromStartTime:(double)a3 endTime:(double)a4 source:(id)a5 activityType:(unint64_t)a6 confidence:(double)a7
{
  v13 = a5;
  v17.receiver = self;
  v17.super_class = ATXUnifiedInferredActivitySession;
  v14 = [(ATXUnifiedInferredActivitySession *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_source, a5);
    v15->_startTime = a3;
    v15->_endTime = a4;
    v15->_inferredActivityType = a6;
    v15->_confidence = a7;
  }

  return v15;
}

- (id)prettyRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  v4 = MEMORY[0x277CCA968];
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v4 dateFormatFromTemplate:@"EMMMd HH:mm ss ZZZZ" options:0 locale:v5];

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
  v3 = [(ATXUnifiedInferredActivitySession *)self jsonRepresentation];
  v4 = [v2 dataWithJSONObject:v3 options:2 error:0];

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 3)
  {
    v7 = [[a1 alloc] initWithProtoData:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v12 = 0;
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a1 fromData:v6 error:&v12];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXUnifiedInferredActivitySession *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXUnifiedInferredActivitySession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUnifiedInferredActivitySession *)self initWithProtoData:v5];
    v6 = self;
  }

  else
  {
    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXUnifiedInferredActivitySession initWithCoder:];
    }

    v6 = 0;
  }

  return v6;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUnifiedInferredActivitySession *)self isEqualToATXUnifiedInferredActivitySession:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUnifiedInferredActivitySession:(id)a3
{
  v4 = a3;
  [(ATXUnifiedInferredActivitySession *)self startTime];
  v6 = v5;
  [v4 startTime];
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
  [v4 endTime];
  v13 = v12;
  v14 = [(ATXUnifiedInferredActivitySession *)self inferredActivityType];
  v15 = [v4 inferredActivityType];
  v16 = [(ATXUnifiedInferredActivitySession *)self source];
  v17 = [v4 source];
  v18 = [v16 isEqualToString:v17];

  v19 = [(ATXUnifiedInferredActivitySession *)self inferredActivityType];
  v20 = [v4 inferredActivityType];
  [(ATXUnifiedInferredActivitySession *)self confidence];
  v22 = v21;
  [v4 confidence];
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

  v28 = v26 < 0.1 && v14 == v15;
  v29 = v28 & v18;
  if (v19 != v20)
  {
    v29 = 0;
  }

  return v25 < 0.01 && v29;
}

- (id)encodeAsProto
{
  v2 = [(ATXUnifiedInferredActivitySession *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXUnifiedInferredActivitySession)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v14 = 0;
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

  v5 = v4;
  [v5 startTime];
  v7 = v6;
  [v5 endTime];
  v9 = v8;
  v10 = [v5 source];
  v11 = [v5 inferredActivity];
  [v5 confidence];
  v13 = v12;

  self = [(ATXUnifiedInferredActivitySession *)self initFromStartTime:v10 endTime:v11 source:v7 activityType:v9 confidence:v13];
  v14 = self;
LABEL_8:

  return v14;
}

- (ATXUnifiedInferredActivitySession)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBUnifiedInferredActivitySession alloc] initWithData:v4];

    self = [(ATXUnifiedInferredActivitySession *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
  v4 = [(ATXUnifiedInferredActivitySession *)self source];
  [v3 setSource:v4];

  return v3;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBUnifiedInferredActivitySession alloc] initFromJSON:v4];

  v6 = [(ATXUnifiedInferredActivitySession *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(ATXUnifiedInferredActivitySession *)self proto];
  v3 = [v2 jsonRepresentation];

  return v3;
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