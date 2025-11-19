@interface ATXUnifiedInferredActivityTransition
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXUnifiedInferredActivityTransition)initWithCoder:(id)a3;
- (ATXUnifiedInferredActivityTransition)initWithCoder_v1:(id)a3;
- (ATXUnifiedInferredActivityTransition)initWithCoder_v2:(id)a3;
- (ATXUnifiedInferredActivityTransition)initWithProto:(id)a3;
- (ATXUnifiedInferredActivityTransition)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXUnifiedInferredActivityTransition:(id)a3;
- (id)encodeAsProto;
- (id)initFromJSON:(id)a3;
- (id)initFromTransitionTime:(double)a3 isEntryEvent:(BOOL)a4 source:(id)a5 activityType:(unint64_t)a6 confidence:(double)a7;
- (id)initFromTransitionTime:(double)a3 isEntryEvent:(BOOL)a4 source:(id)a5 mode:(id)a6;
- (id)json;
- (id)jsonRepresentation;
- (id)prettyRepresentation;
- (id)proto;
- (unint64_t)activityTypeAfterTransition;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXUnifiedInferredActivityTransition

- (id)initFromTransitionTime:(double)a3 isEntryEvent:(BOOL)a4 source:(id)a5 mode:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = ATXUnifiedInferredActivityTransition;
  v13 = [(ATXUnifiedInferredActivityTransition *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_mode, a6);
    objc_storeStrong(&v14->_source, a5);
    v14->_transitionTime = a3;
    v14->_isEntryEvent = a4;
    v14->_confidence = 1.0;
    ATXStringToMode();
    v14->_inferredActivityType = ATXActivityTypeFromMode();
  }

  return v14;
}

- (id)initFromTransitionTime:(double)a3 isEntryEvent:(BOOL)a4 source:(id)a5 activityType:(unint64_t)a6 confidence:(double)a7
{
  v13 = a5;
  v19.receiver = self;
  v19.super_class = ATXUnifiedInferredActivityTransition;
  v14 = [(ATXUnifiedInferredActivityTransition *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_source, a5);
    v15->_transitionTime = a3;
    v15->_isEntryEvent = a4;
    v15->_inferredActivityType = a6;
    v15->_confidence = a7;
    ATXModeFromActivityType();
    v16 = ATXModeToString();
    mode = v15->_mode;
    v15->_mode = v16;
  }

  return v15;
}

- (unint64_t)activityTypeAfterTransition
{
  if (![(ATXUnifiedInferredActivityTransition *)self isEntryEvent])
  {
    return 14;
  }

  return [(ATXUnifiedInferredActivityTransition *)self inferredActivityType];
}

- (id)json
{
  v2 = MEMORY[0x277CCAAA0];
  v3 = [(ATXUnifiedInferredActivityTransition *)self jsonRepresentation];
  v4 = [v2 dataWithJSONObject:v3 options:2 error:0];

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 2)
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
  v5 = [(ATXUnifiedInferredActivityTransition *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXUnifiedInferredActivityTransition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXUnifiedInferredActivityTransition *)self initWithCoder_v2:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [0 initWithCoder_v1:v4];
    v7 = v8;
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v10 = __atxlog_handle_modes();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [ATXUnifiedInferredActivityTransition initWithCoder:];
      }
    }
  }

  return v7;
}

- (ATXUnifiedInferredActivityTransition)initWithCoder_v2:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUnifiedInferredActivityTransition *)self initWithProtoData:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXUnifiedInferredActivityTransition)initWithCoder_v1:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_modes();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"inferredMode" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.decode.InferredModeSession" errorCode:-1 logHandle:v7];

  v9 = [v4 error];

  if (!v9 && v8)
  {
    v10 = MEMORY[0x277D42620];
    v11 = objc_opt_class();
    v12 = __atxlog_handle_modes();
    v13 = [v10 robustDecodeObjectOfClass:v11 forKey:@"source" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.decode.InferredModeSession" errorCode:-1 logHandle:v12];

    v14 = [v4 error];

    if (v14 || !v13)
    {
      v18 = __atxlog_handle_modes();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }
    }

    else
    {
      [v4 decodeDoubleForKey:@"transitionTime"];
      v16 = v15;
      v17 = [v4 error];

      if (!v17)
      {
        v25 = [v4 decodeBoolForKey:@"isEntryEvent"];
        v26 = [v4 error];

        if (!v26)
        {
          self = [(ATXUnifiedInferredActivityTransition *)self initFromTransitionTime:v25 isEntryEvent:v13 source:v8 mode:v16];
          v22 = self;
          goto LABEL_14;
        }

        v18 = __atxlog_handle_modes();
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v18 = __atxlog_handle_modes();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
LABEL_11:
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138412290;
        v28 = v21;
        _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_INFO, "Unable to construct class %@ from coder using v1 decoding", buf, 0xCu);
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v13 = __atxlog_handle_modes();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v19 = objc_opt_class();
    v18 = NSStringFromClass(v19);
    *buf = 138412290;
    v28 = v18;
    _os_log_impl(&dword_2263AA000, v13, OS_LOG_TYPE_INFO, "Unable to construct class %@ from coder using v1 decoding", buf, 0xCu);
    goto LABEL_12;
  }

LABEL_13:
  v22 = 0;
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)prettyRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  v4 = MEMORY[0x277CCA968];
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v4 dateFormatFromTemplate:@"EMMMd HH:mm ss ZZZZ" options:0 locale:v5];

  [v3 setDateFormat:v6];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_transitionTime];
  v8 = [v3 stringFromDate:v7];

  v9 = @"Exits";
  if (self->_isEntryEvent)
  {
    v9 = @"Enters";
  }

  v10 = MEMORY[0x277CCACA8];
  source = self->_source;
  v12 = v9;
  [(ATXUnifiedInferredActivityTransition *)self inferredActivityType];
  v13 = ATXActivityTypeToString();
  [(ATXUnifiedInferredActivityTransition *)self confidence];
  v15 = [v10 stringWithFormat:@"%@: %@ %@ %@.  Confidence %.2f", v8, source, v12, v13, v14];

  return v15;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUnifiedInferredActivityTransition *)self isEqualToATXUnifiedInferredActivityTransition:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUnifiedInferredActivityTransition:(id)a3
{
  v4 = a3;
  [(ATXUnifiedInferredActivityTransition *)self transitionTime];
  v6 = v5;
  [v4 transitionTime];
  v8 = v6 - v7;
  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  v10 = [(ATXUnifiedInferredActivityTransition *)self isEntryEvent];
  v11 = [v4 isEntryEvent];
  v12 = [(ATXUnifiedInferredActivityTransition *)self mode];
  v13 = [v4 mode];
  v14 = [v12 isEqualToString:v13];

  v15 = [(ATXUnifiedInferredActivityTransition *)self inferredActivityType];
  v16 = [v4 inferredActivityType];
  [(ATXUnifiedInferredActivityTransition *)self confidence];
  v18 = v17;
  [v4 confidence];
  v20 = v19;
  v21 = [(ATXUnifiedInferredActivityTransition *)self source];
  v22 = [v4 source];

  v23 = [v21 isEqualToString:v22];
  result = 0;
  if (v9 < 0.1 && ((v10 ^ v11) & 1) == 0 && v14 && v23)
  {
    v25 = v18 - v20;
    if (v18 - v20 < 0.0)
    {
      v25 = -(v18 - v20);
    }

    return v25 < 0.01 && v15 == v16;
  }

  return result;
}

- (id)encodeAsProto
{
  v2 = [(ATXUnifiedInferredActivityTransition *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXUnifiedInferredActivityTransition)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = __atxlog_handle_modes();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [ATXUnifiedInferredActivitySession initWithProto:];
    }

    goto LABEL_7;
  }

  v5 = v4;
  [v5 transitionTime];
  v7 = v6;
  v8 = [v5 isActivityStart];
  v9 = [v5 source];
  v10 = [v5 inferredActivity];
  [v5 confidence];
  v12 = v11;

  self = [(ATXUnifiedInferredActivityTransition *)self initFromTransitionTime:v8 isEntryEvent:v9 source:v10 activityType:v7 confidence:v12];
  v13 = self;
LABEL_8:

  return v13;
}

- (ATXUnifiedInferredActivityTransition)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBUnifiedInferredActivityTransition alloc] initWithData:v4];

    self = [(ATXUnifiedInferredActivityTransition *)self initWithProto:v5];
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
  [(ATXUnifiedInferredActivityTransition *)self confidence];
  [v3 setConfidence:?];
  [v3 setInferredActivity:{-[ATXUnifiedInferredActivityTransition inferredActivityType](self, "inferredActivityType")}];
  [(ATXUnifiedInferredActivityTransition *)self transitionTime];
  [v3 setTransitionTime:?];
  [v3 setIsActivityStart:{-[ATXUnifiedInferredActivityTransition isEntryEvent](self, "isEntryEvent")}];
  v4 = [(ATXUnifiedInferredActivityTransition *)self source];
  [v3 setSource:v4];

  return v3;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBUnifiedInferredActivityTransition alloc] initFromJSON:v4];

  v6 = [(ATXUnifiedInferredActivityTransition *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(ATXUnifiedInferredActivityTransition *)self proto];
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

@end