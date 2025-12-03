@interface ATXPredictionContext
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXPredictionContext)initWithCoder:(id)coder;
- (ATXPredictionContext)initWithDeviceStateContext:(id)context timeContext:(id)timeContext locationMotionContext:(id)motionContext ambientLightContext:(id)lightContext userContext:(id)userContext isOverridden:(BOOL)overridden;
- (ATXPredictionContext)initWithProto:(id)proto;
- (ATXPredictionContext)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPredictionContext:(id)context;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
- (void)updateTimeContextWithDate:(id)date;
- (void)updateWithInjectedContext:(id)context;
@end

@implementation ATXPredictionContext

- (ATXPredictionContext)initWithDeviceStateContext:(id)context timeContext:(id)timeContext locationMotionContext:(id)motionContext ambientLightContext:(id)lightContext userContext:(id)userContext isOverridden:(BOOL)overridden
{
  contextCopy = context;
  timeContextCopy = timeContext;
  motionContextCopy = motionContext;
  lightContextCopy = lightContext;
  userContextCopy = userContext;
  v23.receiver = self;
  v23.super_class = ATXPredictionContext;
  v18 = [(ATXPredictionContext *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_deviceStateContext, context);
    objc_storeStrong(&v19->_timeContext, timeContext);
    objc_storeStrong(&v19->_locationMotionContext, motionContext);
    objc_storeStrong(&v19->_ambientLightContext, lightContext);
    objc_storeStrong(&v19->_userContext, userContext);
    v19->_isOverridden = overridden;
  }

  return v19;
}

- (NSString)description
{
  jsonDict = [(ATXPredictionContext *)self jsonDict];
  v3 = [jsonDict description];

  return v3;
}

- (void)updateWithInjectedContext:(id)context
{
  contextCopy = context;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    p_deviceStateContext = &self->_deviceStateContext;
LABEL_14:
    objc_storeStrong(p_deviceStateContext, context);
    goto LABEL_15;
  }

  if (v6 == objc_opt_class())
  {
    p_deviceStateContext = &self->_timeContext;
    goto LABEL_14;
  }

  if (v6 == objc_opt_class())
  {
    p_deviceStateContext = &self->_locationMotionContext;
    goto LABEL_14;
  }

  if (v6 == objc_opt_class())
  {
    p_deviceStateContext = &self->_ambientLightContext;
    goto LABEL_14;
  }

  if (v6 == objc_opt_class())
  {
    p_deviceStateContext = &self->_userContext;
    goto LABEL_14;
  }

  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(ATXPredictionContext *)v6 updateWithInjectedContext:v7];
  }

  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = [v6 description];
  [v8 raise:v9 format:{@"Unexpected context injected %@", v10}];

LABEL_15:
}

- (void)updateTimeContextWithDate:(id)date
{
  if (date)
  {
    dateCopy = date;
    v5 = [[ATXPredictionTimeContext alloc] initWithDate:dateCopy];

    [(ATXPredictionContext *)self updateWithInjectedContext:v5];
  }
}

- (ATXPredictionContext)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBPredictionContext alloc] initWithData:dataCopy];

    self = [(ATXPredictionContext *)self initWithProto:v5];
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
  proto = [(ATXPredictionContext *)self proto];
  data = [proto data];

  return data;
}

- (ATXPredictionContext)initWithProto:(id)proto
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
    v23 = __atxlog_handle_default();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      [(ATXMinimalAction *)self initWithProto:v23];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  v6 = [ATXPredictionDeviceStateContext alloc];
  deviceStateContext = [v5 deviceStateContext];
  v8 = [(ATXPredictionDeviceStateContext *)v6 initWithProto:deviceStateContext];

  v9 = [ATXPredictionTimeContext alloc];
  timeContext = [v5 timeContext];
  v11 = [(ATXPredictionTimeContext *)v9 initWithProto:timeContext];

  v12 = [ATXPredictionLocationMotionContext alloc];
  locationMotionContext = [v5 locationMotionContext];
  v14 = [(ATXPredictionLocationMotionContext *)v12 initWithProto:locationMotionContext];

  v15 = [ATXPredictionAmbientLightContext alloc];
  ambientLightContext = [v5 ambientLightContext];
  v17 = [(ATXPredictionAmbientLightContext *)v15 initWithProto:ambientLightContext];

  v18 = [ATXPredictionUserContext alloc];
  userContext = [v5 userContext];
  v20 = [(ATXPredictionUserContext *)v18 initWithProto:userContext];

  isOverridden = [v5 isOverridden];
  self = [(ATXPredictionContext *)self initWithDeviceStateContext:v8 timeContext:v11 locationMotionContext:v14 ambientLightContext:v17 userContext:v20 isOverridden:isOverridden];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  proto = [(ATXPredictionDeviceStateContext *)self->_deviceStateContext proto];
  [v3 setDeviceStateContext:proto];

  proto2 = [(ATXPredictionTimeContext *)self->_timeContext proto];
  [v3 setTimeContext:proto2];

  proto3 = [(ATXPredictionLocationMotionContext *)self->_locationMotionContext proto];
  [v3 setLocationMotionContext:proto3];

  proto4 = [(ATXPredictionAmbientLightContext *)self->_ambientLightContext proto];
  [v3 setAmbientLightContext:proto4];

  proto5 = [(ATXPredictionUserContext *)self->_userContext proto];
  [v3 setUserContext:proto5];

  [v3 setIsOverridden:self->_isOverridden];

  return v3;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)jsonDict
{
  v25 = *MEMORY[0x277D85DE8];
  v19[0] = @"deviceStateContext";
  jsonDict = [(ATXPredictionDeviceStateContext *)self->_deviceStateContext jsonDict];
  v20[0] = jsonDict;
  v19[1] = @"timeContext";
  jsonDict2 = [(ATXPredictionTimeContext *)self->_timeContext jsonDict];
  v20[1] = jsonDict2;
  v19[2] = @"locationMotionContext";
  jsonDict3 = [(ATXPredictionLocationMotionContext *)self->_locationMotionContext jsonDict];
  v20[2] = jsonDict3;
  v19[3] = @"ambientLightContext";
  jsonDict4 = [(ATXPredictionAmbientLightContext *)self->_ambientLightContext jsonDict];
  v20[3] = jsonDict4;
  v19[4] = @"userContext";
  jsonDict5 = [(ATXPredictionUserContext *)self->_userContext jsonDict];
  v8 = jsonDict5;
  v9 = @"nil";
  v10 = vdupq_n_s64(@"nil");
  v11 = vbslq_s8(vceqzq_s64(*&self->_candidateIdentifiersLaunchAge), v10, *&self->_candidateIdentifiersLaunchAge);
  v12 = vbslq_s8(vceqzq_s64(*&self->_userFocusComputedModeEvent), v10, *&self->_userFocusComputedModeEvent);
  v13 = @"NO";
  if (self->_isOverridden)
  {
    v13 = @"YES";
  }

  v20[4] = jsonDict5;
  v20[5] = v13;
  v19[5] = @"isOverridden";
  v19[6] = @"candidateIdentifiersLaunchAge";
  v19[7] = @"inferredModeEvent";
  v19[8] = @"userFocusComputedModeEvent";
  v21 = v11;
  v22 = v12;
  v19[9] = @"poiCategory";
  v19[10] = @"bluetoothEvent";
  microlocationVisitEvent = self->_microlocationVisitEvent;
  bluetoothEvent = self->_bluetoothEvent;
  if (!bluetoothEvent)
  {
    bluetoothEvent = @"nil";
  }

  v19[11] = @"microlocationVisitEvent";
  if (microlocationVisitEvent)
  {
    v9 = microlocationVisitEvent;
  }

  v23 = bluetoothEvent;
  v24 = v9;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:12];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)json
{
  v2 = MEMORY[0x277CCAAA0];
  jsonDict = [(ATXPredictionContext *)self jsonDict];
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:0];

  return v4;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", keyCopy, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXPredictionContext *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"predictionContext"];
}

- (ATXPredictionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionContext"];
  v6 = [(ATXPredictionContext *)self checkAndReportDecodingFailureIfNeededForid:v5 key:@"predictionContext" coder:coderCopy errorDomain:@"com.apple.duetexpertd.ATXPredictionContext" errorCode:-1];

  if (v6)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ATXPredictionContext *)self initWithProtoData:v5];
    selfCopy = self;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPredictionContext *)self isEqualToATXPredictionContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPredictionContext:(id)context
{
  contextCopy = context;
  v5 = self->_deviceStateContext;
  v6 = v5;
  if (v5 == contextCopy[2])
  {
  }

  else
  {
    v7 = [(ATXPredictionDeviceStateContext *)v5 isEqual:?];

    if (!v7)
    {
      goto LABEL_19;
    }
  }

  v8 = self->_timeContext;
  v9 = v8;
  if (v8 == contextCopy[3])
  {
  }

  else
  {
    v10 = [(ATXPredictionTimeContext *)v8 isEqual:?];

    if (!v10)
    {
      goto LABEL_19;
    }
  }

  v11 = self->_locationMotionContext;
  v12 = v11;
  if (v11 == contextCopy[4])
  {
  }

  else
  {
    v13 = [(ATXPredictionLocationMotionContext *)v11 isEqual:?];

    if (!v13)
    {
      goto LABEL_19;
    }
  }

  v14 = self->_ambientLightContext;
  v15 = v14;
  if (v14 == contextCopy[5])
  {
  }

  else
  {
    v16 = [(ATXPredictionAmbientLightContext *)v14 isEqual:?];

    if (!v16)
    {
      goto LABEL_19;
    }
  }

  v17 = self->_userContext;
  v18 = v17;
  if (v17 == contextCopy[6])
  {

    goto LABEL_22;
  }

  v19 = [(ATXPredictionUserContext *)v17 isEqual:?];

  if (v19)
  {
LABEL_22:
    v20 = self->_isOverridden == *(contextCopy + 8);
    goto LABEL_20;
  }

LABEL_19:
  v20 = 0;
LABEL_20:

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ATXPredictionContext allocWithZone:?]timeContext:"initWithDeviceStateContext:timeContext:locationMotionContext:ambientLightContext:userContext:isOverridden:" locationMotionContext:self->_deviceStateContext ambientLightContext:self->_timeContext userContext:self->_locationMotionContext isOverridden:self->_ambientLightContext, self->_userContext, self->_isOverridden];
  candidateIdentifiersLaunchAge = [(ATXPredictionContext *)self candidateIdentifiersLaunchAge];
  [(ATXPredictionContext *)v4 setCandidateIdentifiersLaunchAge:candidateIdentifiersLaunchAge];

  inferredModeEvent = [(ATXPredictionContext *)self inferredModeEvent];
  [(ATXPredictionContext *)v4 setInferredModeEvent:inferredModeEvent];

  userFocusComputedModeEvent = [(ATXPredictionContext *)self userFocusComputedModeEvent];
  [(ATXPredictionContext *)v4 setUserFocusComputedModeEvent:userFocusComputedModeEvent];

  poiCategory = [(ATXPredictionContext *)self poiCategory];
  [(ATXPredictionContext *)v4 setPoiCategory:poiCategory];

  bluetoothEvent = [(ATXPredictionContext *)self bluetoothEvent];
  [(ATXPredictionContext *)v4 setBluetoothEvent:bluetoothEvent];

  microlocationVisitEvent = [(ATXPredictionContext *)self microlocationVisitEvent];
  [(ATXPredictionContext *)v4 setMicrolocationVisitEvent:microlocationVisitEvent];

  return v4;
}

- (void)updateWithInjectedContext:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Unexpected context injected %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end