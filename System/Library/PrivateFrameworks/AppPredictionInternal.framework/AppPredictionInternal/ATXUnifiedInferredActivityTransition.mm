@interface ATXUnifiedInferredActivityTransition
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXUnifiedInferredActivityTransition)initWithCoder:(id)coder;
- (ATXUnifiedInferredActivityTransition)initWithCoder_v1:(id)coder_v1;
- (ATXUnifiedInferredActivityTransition)initWithCoder_v2:(id)coder_v2;
- (ATXUnifiedInferredActivityTransition)initWithProto:(id)proto;
- (ATXUnifiedInferredActivityTransition)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXUnifiedInferredActivityTransition:(id)transition;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)initFromTransitionTime:(double)time isEntryEvent:(BOOL)event source:(id)source activityType:(unint64_t)type confidence:(double)confidence;
- (id)initFromTransitionTime:(double)time isEntryEvent:(BOOL)event source:(id)source mode:(id)mode;
- (id)json;
- (id)jsonRepresentation;
- (id)prettyRepresentation;
- (id)proto;
- (unint64_t)activityTypeAfterTransition;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXUnifiedInferredActivityTransition

- (id)initFromTransitionTime:(double)time isEntryEvent:(BOOL)event source:(id)source mode:(id)mode
{
  sourceCopy = source;
  modeCopy = mode;
  v16.receiver = self;
  v16.super_class = ATXUnifiedInferredActivityTransition;
  v13 = [(ATXUnifiedInferredActivityTransition *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_mode, mode);
    objc_storeStrong(&v14->_source, source);
    v14->_transitionTime = time;
    v14->_isEntryEvent = event;
    v14->_confidence = 1.0;
    ATXStringToMode();
    v14->_inferredActivityType = ATXActivityTypeFromMode();
  }

  return v14;
}

- (id)initFromTransitionTime:(double)time isEntryEvent:(BOOL)event source:(id)source activityType:(unint64_t)type confidence:(double)confidence
{
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = ATXUnifiedInferredActivityTransition;
  v14 = [(ATXUnifiedInferredActivityTransition *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_source, source);
    v15->_transitionTime = time;
    v15->_isEntryEvent = event;
    v15->_inferredActivityType = type;
    v15->_confidence = confidence;
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
  jsonRepresentation = [(ATXUnifiedInferredActivityTransition *)self jsonRepresentation];
  v4 = [v2 dataWithJSONObject:jsonRepresentation options:2 error:0];

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 2)
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
  encodeAsProto = [(ATXUnifiedInferredActivityTransition *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXUnifiedInferredActivityTransition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ATXUnifiedInferredActivityTransition *)self initWithCoder_v2:coderCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [0 initWithCoder_v1:coderCopy];
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

- (ATXUnifiedInferredActivityTransition)initWithCoder_v2:(id)coder_v2
{
  coder_v2Copy = coder_v2;
  v5 = [coder_v2Copy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXUnifiedInferredActivityTransition *)self initWithProtoData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXUnifiedInferredActivityTransition)initWithCoder_v1:(id)coder_v1
{
  v29 = *MEMORY[0x277D85DE8];
  coder_v1Copy = coder_v1;
  v5 = MEMORY[0x277D42620];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_modes();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"inferredMode" withCoder:coder_v1Copy expectNonNull:1 errorDomain:@"com.apple.proactive.decode.InferredModeSession" errorCode:-1 logHandle:v7];

  error = [coder_v1Copy error];

  if (!error && v8)
  {
    v10 = MEMORY[0x277D42620];
    v11 = objc_opt_class();
    v12 = __atxlog_handle_modes();
    v13 = [v10 robustDecodeObjectOfClass:v11 forKey:@"source" withCoder:coder_v1Copy expectNonNull:1 errorDomain:@"com.apple.proactive.decode.InferredModeSession" errorCode:-1 logHandle:v12];

    error2 = [coder_v1Copy error];

    if (error2 || !v13)
    {
      v18 = __atxlog_handle_modes();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }
    }

    else
    {
      [coder_v1Copy decodeDoubleForKey:@"transitionTime"];
      v16 = v15;
      error3 = [coder_v1Copy error];

      if (!error3)
      {
        v25 = [coder_v1Copy decodeBoolForKey:@"isEntryEvent"];
        error4 = [coder_v1Copy error];

        if (!error4)
        {
          self = [(ATXUnifiedInferredActivityTransition *)self initFromTransitionTime:v25 isEntryEvent:v13 source:v8 mode:v16];
          selfCopy = self;
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
  selfCopy = 0;
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)prettyRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  v4 = MEMORY[0x277CCA968];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v4 dateFormatFromTemplate:@"EMMMd HH:mm ss ZZZZ" options:0 locale:currentLocale];

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXUnifiedInferredActivityTransition *)self isEqualToATXUnifiedInferredActivityTransition:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXUnifiedInferredActivityTransition:(id)transition
{
  transitionCopy = transition;
  [(ATXUnifiedInferredActivityTransition *)self transitionTime];
  v6 = v5;
  [transitionCopy transitionTime];
  v8 = v6 - v7;
  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  isEntryEvent = [(ATXUnifiedInferredActivityTransition *)self isEntryEvent];
  isEntryEvent2 = [transitionCopy isEntryEvent];
  mode = [(ATXUnifiedInferredActivityTransition *)self mode];
  mode2 = [transitionCopy mode];
  v14 = [mode isEqualToString:mode2];

  inferredActivityType = [(ATXUnifiedInferredActivityTransition *)self inferredActivityType];
  inferredActivityType2 = [transitionCopy inferredActivityType];
  [(ATXUnifiedInferredActivityTransition *)self confidence];
  v18 = v17;
  [transitionCopy confidence];
  v20 = v19;
  source = [(ATXUnifiedInferredActivityTransition *)self source];
  source2 = [transitionCopy source];

  v23 = [source isEqualToString:source2];
  result = 0;
  if (v9 < 0.1 && ((isEntryEvent ^ isEntryEvent2) & 1) == 0 && v14 && v23)
  {
    v25 = v18 - v20;
    if (v18 - v20 < 0.0)
    {
      v25 = -(v18 - v20);
    }

    return v25 < 0.01 && inferredActivityType == inferredActivityType2;
  }

  return result;
}

- (id)encodeAsProto
{
  proto = [(ATXUnifiedInferredActivityTransition *)self proto];
  data = [proto data];

  return data;
}

- (ATXUnifiedInferredActivityTransition)initWithProto:(id)proto
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
    v14 = __atxlog_handle_modes();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [ATXUnifiedInferredActivitySession initWithProto:];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  [v5 transitionTime];
  v7 = v6;
  isActivityStart = [v5 isActivityStart];
  source = [v5 source];
  inferredActivity = [v5 inferredActivity];
  [v5 confidence];
  v12 = v11;

  self = [(ATXUnifiedInferredActivityTransition *)self initFromTransitionTime:isActivityStart isEntryEvent:source source:inferredActivity activityType:v7 confidence:v12];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (ATXUnifiedInferredActivityTransition)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBUnifiedInferredActivityTransition alloc] initWithData:dataCopy];

    self = [(ATXUnifiedInferredActivityTransition *)self initWithProto:v5];
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
  [(ATXUnifiedInferredActivityTransition *)self confidence];
  [v3 setConfidence:?];
  [v3 setInferredActivity:{-[ATXUnifiedInferredActivityTransition inferredActivityType](self, "inferredActivityType")}];
  [(ATXUnifiedInferredActivityTransition *)self transitionTime];
  [v3 setTransitionTime:?];
  [v3 setIsActivityStart:{-[ATXUnifiedInferredActivityTransition isEntryEvent](self, "isEntryEvent")}];
  source = [(ATXUnifiedInferredActivityTransition *)self source];
  [v3 setSource:source];

  return v3;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBUnifiedInferredActivityTransition alloc] initFromJSON:nCopy];

  v6 = [(ATXUnifiedInferredActivityTransition *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXUnifiedInferredActivityTransition *)self proto];
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

@end