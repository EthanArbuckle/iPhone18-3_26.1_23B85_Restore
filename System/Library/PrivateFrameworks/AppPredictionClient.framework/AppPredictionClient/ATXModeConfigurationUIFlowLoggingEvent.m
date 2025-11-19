@interface ATXModeConfigurationUIFlowLoggingEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXModeConfigurationUIFlowLoggingEvent)initWithDndModeUUID:(id)a3 modeConfigurationUI:(int)a4 modeConfigurationEntityType:(int)a5 modeConfigurationType:(int64_t)a6 suggestedEntityIdentifiers:(id)a7 candidateEntityIdentifiers:(id)a8 previousEntityIdentifiers:(id)a9 currentEntityIdentifiers:(id)a10 eventDate:(id)a11;
- (ATXModeConfigurationUIFlowLoggingEvent)initWithProto:(id)a3;
- (ATXModeConfigurationUIFlowLoggingEvent)initWithProtoData:(id)a3;
- (id)encodeAsProto;
- (id)initFromJSON:(id)a3;
- (id)json;
- (id)jsonRawData;
- (id)jsonRepresentation;
- (id)proto;
@end

@implementation ATXModeConfigurationUIFlowLoggingEvent

- (ATXModeConfigurationUIFlowLoggingEvent)initWithDndModeUUID:(id)a3 modeConfigurationUI:(int)a4 modeConfigurationEntityType:(int)a5 modeConfigurationType:(int64_t)a6 suggestedEntityIdentifiers:(id)a7 candidateEntityIdentifiers:(id)a8 previousEntityIdentifiers:(id)a9 currentEntityIdentifiers:(id)a10 eventDate:(id)a11
{
  v15 = a3;
  v16 = a7;
  v28 = a8;
  v27 = a9;
  v26 = a10;
  v17 = a11;
  if (!v15)
  {
    v22 = v16;
    v18 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [ATXModeConfigurationUIFlowLoggingEvent initWithDndModeUUID:v18 modeConfigurationUI:? modeConfigurationEntityType:? modeConfigurationType:? suggestedEntityIdentifiers:? candidateEntityIdentifiers:? previousEntityIdentifiers:? currentEntityIdentifiers:? eventDate:?];
    }

    v16 = v22;
  }

  v29.receiver = self;
  v29.super_class = ATXModeConfigurationUIFlowLoggingEvent;
  v19 = [(ATXModeConfigurationUIFlowLoggingEvent *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_dndModeUUID, a3);
    v20->_modeConfigurationEntityType = a5;
    v20->_modeConfigurationUI = a4;
    objc_storeStrong(&v20->_suggestedEntityIdentifiers, a7);
    objc_storeStrong(&v20->_candidateEntityIdentifiers, a8);
    objc_storeStrong(&v20->_previousEntityIdentifiers, a9);
    objc_storeStrong(&v20->_currentEntityIdentifiers, a10);
    objc_storeStrong(&v20->_eventDate, a11);
    v20->_modeConfigurationType = a6;
  }

  return v20;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)jsonRawData
{
  v21 = *MEMORY[0x1E69E9840];
  v15[0] = @"dndModeUUID";
  v3 = [(NSUUID *)self->_dndModeUUID UUIDString];
  v16[0] = v3;
  v15[1] = @"modeConfigurationUI";
  modeConfigurationUI = self->_modeConfigurationUI;
  if (modeConfigurationUI >= 4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modeConfigurationUI];
  }

  else
  {
    v5 = off_1E80C4030[modeConfigurationUI];
  }

  v16[1] = v5;
  v15[2] = @"modeConfigurationEntityType";
  modeConfigurationEntityType = self->_modeConfigurationEntityType;
  if (modeConfigurationEntityType >= 3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modeConfigurationEntityType];
  }

  else
  {
    v7 = off_1E80C4050[modeConfigurationEntityType];
  }

  v16[2] = v7;
  v15[3] = @"modeConfigurationType";
  if (self->_modeConfigurationType >= 3)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modeConfigurationType];
  }

  else
  {
    v8 = off_1E80C4068[self->_modeConfigurationType & 3];
  }

  v9 = vdupq_n_s64(MEMORY[0x1E695E0F0]);
  v15[4] = @"suggestedEntityIdentifiers";
  v15[5] = @"candidateEntityIdentifiers";
  v15[6] = @"currentEntityIdentifiers";
  v15[7] = @"previousEntityIdentifiers";
  previousEntityIdentifiers = self->_previousEntityIdentifiers;
  currentEntityIdentifiers = self->_currentEntityIdentifiers;
  if (!currentEntityIdentifiers)
  {
    currentEntityIdentifiers = MEMORY[0x1E695E0F0];
  }

  if (!previousEntityIdentifiers)
  {
    previousEntityIdentifiers = MEMORY[0x1E695E0F0];
  }

  v16[3] = v8;
  v17 = vbslq_s8(vceqzq_s64(*&self->_suggestedEntityIdentifiers), v9, *&self->_suggestedEntityIdentifiers);
  v18 = currentEntityIdentifiers;
  v19 = previousEntityIdentifiers;
  v15[8] = @"eventTime";
  v12 = [(NSDate *)self->_eventDate description];
  v20 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:9];

  return v13;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXModeConfigurationUIFlowLoggingEvent *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (ATXModeConfigurationUIFlowLoggingEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBModeConfigurationUIFlowLoggingEvent alloc] initWithData:v4];

    self = [(ATXModeConfigurationUIFlowLoggingEvent *)self initWithProto:v5];
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
  v2 = [(ATXModeConfigurationUIFlowLoggingEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXModeConfigurationUIFlowLoggingEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_19:
    v33 = 0;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v34];
    }

    goto LABEL_19;
  }

  v5 = MEMORY[0x1E696AFB0];
  v6 = v4;
  v7 = [v5 alloc];
  v8 = [v6 dndModeUUID];
  v9 = [v7 initWithUUIDString:v8];

  v37 = [v6 modeConfigurationUI];
  v36 = [v6 modeConfigurationEntityType];
  v10 = [v6 modeConfigurationType];
  v11 = [v6 suggestedEntityIdentifiers];
  v12 = v11;
  v13 = MEMORY[0x1E695E0F0];
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v15 = v14;

  v16 = [v6 candidateEntityIdentifiers];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v13;
  }

  v19 = v18;

  v20 = [v6 previousEntityIdentifiers];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v13;
  }

  v23 = v22;

  v24 = [v6 currentEntityIdentifiers];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v13;
  }

  v27 = v26;

  v28 = MEMORY[0x1E695DF00];
  [v6 secondsSinceReferenceDate];
  v30 = v29;

  v31 = [v28 dateWithTimeIntervalSinceReferenceDate:v30];
  v32 = [(ATXModeConfigurationUIFlowLoggingEvent *)self initWithDndModeUUID:v9 modeConfigurationUI:v37 modeConfigurationEntityType:v36 modeConfigurationType:v10 suggestedEntityIdentifiers:v15 candidateEntityIdentifiers:v19 previousEntityIdentifiers:v23 currentEntityIdentifiers:v27 eventDate:v31];

  self = v32;
  v33 = self;
LABEL_20:

  return v33;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(NSUUID *)self->_dndModeUUID UUIDString];
  [v3 setDndModeUUID:v4];

  [v3 setModeConfigurationUI:self->_modeConfigurationUI];
  [v3 setModeConfigurationEntityType:self->_modeConfigurationEntityType];
  [v3 setModeConfigurationType:LODWORD(self->_modeConfigurationType)];
  v5 = [(NSArray *)self->_suggestedEntityIdentifiers mutableCopy];
  [v3 setSuggestedEntityIdentifiers:v5];

  v6 = [(NSArray *)self->_candidateEntityIdentifiers mutableCopy];
  [v3 setCandidateEntityIdentifiers:v6];

  v7 = [(NSArray *)self->_previousEntityIdentifiers mutableCopy];
  [v3 setPreviousEntityIdentifiers:v7];

  v8 = [(NSArray *)self->_currentEntityIdentifiers mutableCopy];
  [v3 setCurrentEntityIdentifiers:v8];

  [(NSDate *)self->_eventDate timeIntervalSinceReferenceDate];
  [v3 setSecondsSinceReferenceDate:?];

  return v3;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBModeConfigurationUIFlowLoggingEvent alloc] initFromJSON:v4];

  v6 = [(ATXModeConfigurationUIFlowLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(ATXModeConfigurationUIFlowLoggingEvent *)self proto];
  v3 = [v2 jsonRepresentation];

  return v3;
}

@end