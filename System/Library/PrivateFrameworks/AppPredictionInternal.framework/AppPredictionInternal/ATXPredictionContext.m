@interface ATXPredictionContext
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXPredictionContext)initWithCoder:(id)a3;
- (ATXPredictionContext)initWithDeviceStateContext:(id)a3 timeContext:(id)a4 locationMotionContext:(id)a5 ambientLightContext:(id)a6 userContext:(id)a7 isOverridden:(BOOL)a8;
- (ATXPredictionContext)initWithProto:(id)a3;
- (ATXPredictionContext)initWithProtoData:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXPredictionContext:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
- (void)updateTimeContextWithDate:(id)a3;
- (void)updateWithInjectedContext:(id)a3;
@end

@implementation ATXPredictionContext

- (ATXPredictionContext)initWithDeviceStateContext:(id)a3 timeContext:(id)a4 locationMotionContext:(id)a5 ambientLightContext:(id)a6 userContext:(id)a7 isOverridden:(BOOL)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = ATXPredictionContext;
  v18 = [(ATXPredictionContext *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_deviceStateContext, a3);
    objc_storeStrong(&v19->_timeContext, a4);
    objc_storeStrong(&v19->_locationMotionContext, a5);
    objc_storeStrong(&v19->_ambientLightContext, a6);
    objc_storeStrong(&v19->_userContext, a7);
    v19->_isOverridden = a8;
  }

  return v19;
}

- (NSString)description
{
  v2 = [(ATXPredictionContext *)self jsonDict];
  v3 = [v2 description];

  return v3;
}

- (void)updateWithInjectedContext:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    p_deviceStateContext = &self->_deviceStateContext;
LABEL_14:
    objc_storeStrong(p_deviceStateContext, a3);
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

- (void)updateTimeContextWithDate:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPredictionTimeContext alloc] initWithDate:v4];

    [(ATXPredictionContext *)self updateWithInjectedContext:v5];
  }
}

- (ATXPredictionContext)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBPredictionContext alloc] initWithData:v4];

    self = [(ATXPredictionContext *)self initWithProto:v5];
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
  v2 = [(ATXPredictionContext *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXPredictionContext)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v22 = 0;
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

  v5 = v4;
  v6 = [ATXPredictionDeviceStateContext alloc];
  v7 = [v5 deviceStateContext];
  v8 = [(ATXPredictionDeviceStateContext *)v6 initWithProto:v7];

  v9 = [ATXPredictionTimeContext alloc];
  v10 = [v5 timeContext];
  v11 = [(ATXPredictionTimeContext *)v9 initWithProto:v10];

  v12 = [ATXPredictionLocationMotionContext alloc];
  v13 = [v5 locationMotionContext];
  v14 = [(ATXPredictionLocationMotionContext *)v12 initWithProto:v13];

  v15 = [ATXPredictionAmbientLightContext alloc];
  v16 = [v5 ambientLightContext];
  v17 = [(ATXPredictionAmbientLightContext *)v15 initWithProto:v16];

  v18 = [ATXPredictionUserContext alloc];
  v19 = [v5 userContext];
  v20 = [(ATXPredictionUserContext *)v18 initWithProto:v19];

  v21 = [v5 isOverridden];
  self = [(ATXPredictionContext *)self initWithDeviceStateContext:v8 timeContext:v11 locationMotionContext:v14 ambientLightContext:v17 userContext:v20 isOverridden:v21];

  v22 = self;
LABEL_8:

  return v22;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(ATXPredictionDeviceStateContext *)self->_deviceStateContext proto];
  [v3 setDeviceStateContext:v4];

  v5 = [(ATXPredictionTimeContext *)self->_timeContext proto];
  [v3 setTimeContext:v5];

  v6 = [(ATXPredictionLocationMotionContext *)self->_locationMotionContext proto];
  [v3 setLocationMotionContext:v6];

  v7 = [(ATXPredictionAmbientLightContext *)self->_ambientLightContext proto];
  [v3 setAmbientLightContext:v7];

  v8 = [(ATXPredictionUserContext *)self->_userContext proto];
  [v3 setUserContext:v8];

  [v3 setIsOverridden:self->_isOverridden];

  return v3;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)jsonDict
{
  v25 = *MEMORY[0x277D85DE8];
  v19[0] = @"deviceStateContext";
  v3 = [(ATXPredictionDeviceStateContext *)self->_deviceStateContext jsonDict];
  v20[0] = v3;
  v19[1] = @"timeContext";
  v4 = [(ATXPredictionTimeContext *)self->_timeContext jsonDict];
  v20[1] = v4;
  v19[2] = @"locationMotionContext";
  v5 = [(ATXPredictionLocationMotionContext *)self->_locationMotionContext jsonDict];
  v20[2] = v5;
  v19[3] = @"ambientLightContext";
  v6 = [(ATXPredictionAmbientLightContext *)self->_ambientLightContext jsonDict];
  v20[3] = v6;
  v19[4] = @"userContext";
  v7 = [(ATXPredictionUserContext *)self->_userContext jsonDict];
  v8 = v7;
  v9 = @"nil";
  v10 = vdupq_n_s64(@"nil");
  v11 = vbslq_s8(vceqzq_s64(*&self->_candidateIdentifiersLaunchAge), v10, *&self->_candidateIdentifiersLaunchAge);
  v12 = vbslq_s8(vceqzq_s64(*&self->_userFocusComputedModeEvent), v10, *&self->_userFocusComputedModeEvent);
  v13 = @"NO";
  if (self->_isOverridden)
  {
    v13 = @"YES";
  }

  v20[4] = v7;
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
  v3 = [(ATXPredictionContext *)self jsonDict];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v22 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXPredictionContext *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"predictionContext"];
}

- (ATXPredictionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionContext"];
  v6 = [(ATXPredictionContext *)self checkAndReportDecodingFailureIfNeededForid:v5 key:@"predictionContext" coder:v4 errorDomain:@"com.apple.duetexpertd.ATXPredictionContext" errorCode:-1];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    self = [(ATXPredictionContext *)self initWithProtoData:v5];
    v7 = self;
  }

  return v7;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPredictionContext *)self isEqualToATXPredictionContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPredictionContext:(id)a3
{
  v4 = a3;
  v5 = self->_deviceStateContext;
  v6 = v5;
  if (v5 == v4[2])
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
  if (v8 == v4[3])
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
  if (v11 == v4[4])
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
  if (v14 == v4[5])
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
  if (v17 == v4[6])
  {

    goto LABEL_22;
  }

  v19 = [(ATXPredictionUserContext *)v17 isEqual:?];

  if (v19)
  {
LABEL_22:
    v20 = self->_isOverridden == *(v4 + 8);
    goto LABEL_20;
  }

LABEL_19:
  v20 = 0;
LABEL_20:

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ATXPredictionContext allocWithZone:?]timeContext:"initWithDeviceStateContext:timeContext:locationMotionContext:ambientLightContext:userContext:isOverridden:" locationMotionContext:self->_deviceStateContext ambientLightContext:self->_timeContext userContext:self->_locationMotionContext isOverridden:self->_ambientLightContext, self->_userContext, self->_isOverridden];
  v5 = [(ATXPredictionContext *)self candidateIdentifiersLaunchAge];
  [(ATXPredictionContext *)v4 setCandidateIdentifiersLaunchAge:v5];

  v6 = [(ATXPredictionContext *)self inferredModeEvent];
  [(ATXPredictionContext *)v4 setInferredModeEvent:v6];

  v7 = [(ATXPredictionContext *)self userFocusComputedModeEvent];
  [(ATXPredictionContext *)v4 setUserFocusComputedModeEvent:v7];

  v8 = [(ATXPredictionContext *)self poiCategory];
  [(ATXPredictionContext *)v4 setPoiCategory:v8];

  v9 = [(ATXPredictionContext *)self bluetoothEvent];
  [(ATXPredictionContext *)v4 setBluetoothEvent:v9];

  v10 = [(ATXPredictionContext *)self microlocationVisitEvent];
  [(ATXPredictionContext *)v4 setMicrolocationVisitEvent:v10];

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