@interface ATXModeConfigurationUIFlowLoggingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXModeConfigurationUIFlowLoggingEvent)initWithDndModeUUID:(id)d modeConfigurationUI:(int)i modeConfigurationEntityType:(int)type modeConfigurationType:(int64_t)configurationType suggestedEntityIdentifiers:(id)identifiers candidateEntityIdentifiers:(id)entityIdentifiers previousEntityIdentifiers:(id)previousEntityIdentifiers currentEntityIdentifiers:(id)self0 eventDate:(id)self1;
- (ATXModeConfigurationUIFlowLoggingEvent)initWithProto:(id)proto;
- (ATXModeConfigurationUIFlowLoggingEvent)initWithProtoData:(id)data;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)json;
- (id)jsonRawData;
- (id)jsonRepresentation;
- (id)proto;
@end

@implementation ATXModeConfigurationUIFlowLoggingEvent

- (ATXModeConfigurationUIFlowLoggingEvent)initWithDndModeUUID:(id)d modeConfigurationUI:(int)i modeConfigurationEntityType:(int)type modeConfigurationType:(int64_t)configurationType suggestedEntityIdentifiers:(id)identifiers candidateEntityIdentifiers:(id)entityIdentifiers previousEntityIdentifiers:(id)previousEntityIdentifiers currentEntityIdentifiers:(id)self0 eventDate:(id)self1
{
  dCopy = d;
  identifiersCopy = identifiers;
  entityIdentifiersCopy = entityIdentifiers;
  previousEntityIdentifiersCopy = previousEntityIdentifiers;
  currentEntityIdentifiersCopy = currentEntityIdentifiers;
  dateCopy = date;
  if (!dCopy)
  {
    v22 = identifiersCopy;
    v18 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [ATXModeConfigurationUIFlowLoggingEvent initWithDndModeUUID:v18 modeConfigurationUI:? modeConfigurationEntityType:? modeConfigurationType:? suggestedEntityIdentifiers:? candidateEntityIdentifiers:? previousEntityIdentifiers:? currentEntityIdentifiers:? eventDate:?];
    }

    identifiersCopy = v22;
  }

  v29.receiver = self;
  v29.super_class = ATXModeConfigurationUIFlowLoggingEvent;
  v19 = [(ATXModeConfigurationUIFlowLoggingEvent *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_dndModeUUID, d);
    v20->_modeConfigurationEntityType = type;
    v20->_modeConfigurationUI = i;
    objc_storeStrong(&v20->_suggestedEntityIdentifiers, identifiers);
    objc_storeStrong(&v20->_candidateEntityIdentifiers, entityIdentifiers);
    objc_storeStrong(&v20->_previousEntityIdentifiers, previousEntityIdentifiers);
    objc_storeStrong(&v20->_currentEntityIdentifiers, currentEntityIdentifiers);
    objc_storeStrong(&v20->_eventDate, date);
    v20->_modeConfigurationType = configurationType;
  }

  return v20;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)jsonRawData
{
  v21 = *MEMORY[0x1E69E9840];
  v15[0] = @"dndModeUUID";
  uUIDString = [(NSUUID *)self->_dndModeUUID UUIDString];
  v16[0] = uUIDString;
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
  jsonRawData = [(ATXModeConfigurationUIFlowLoggingEvent *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:jsonRawData options:1 error:0];

  return v4;
}

- (ATXModeConfigurationUIFlowLoggingEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBModeConfigurationUIFlowLoggingEvent alloc] initWithData:dataCopy];

    self = [(ATXModeConfigurationUIFlowLoggingEvent *)self initWithProto:v5];
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
  proto = [(ATXModeConfigurationUIFlowLoggingEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXModeConfigurationUIFlowLoggingEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_19:
    selfCopy = 0;
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
  v6 = protoCopy;
  v7 = [v5 alloc];
  dndModeUUID = [v6 dndModeUUID];
  v9 = [v7 initWithUUIDString:dndModeUUID];

  modeConfigurationUI = [v6 modeConfigurationUI];
  modeConfigurationEntityType = [v6 modeConfigurationEntityType];
  modeConfigurationType = [v6 modeConfigurationType];
  suggestedEntityIdentifiers = [v6 suggestedEntityIdentifiers];
  v12 = suggestedEntityIdentifiers;
  v13 = MEMORY[0x1E695E0F0];
  if (suggestedEntityIdentifiers)
  {
    v14 = suggestedEntityIdentifiers;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v15 = v14;

  candidateEntityIdentifiers = [v6 candidateEntityIdentifiers];
  v17 = candidateEntityIdentifiers;
  if (candidateEntityIdentifiers)
  {
    v18 = candidateEntityIdentifiers;
  }

  else
  {
    v18 = v13;
  }

  v19 = v18;

  previousEntityIdentifiers = [v6 previousEntityIdentifiers];
  v21 = previousEntityIdentifiers;
  if (previousEntityIdentifiers)
  {
    v22 = previousEntityIdentifiers;
  }

  else
  {
    v22 = v13;
  }

  v23 = v22;

  currentEntityIdentifiers = [v6 currentEntityIdentifiers];
  v25 = currentEntityIdentifiers;
  if (currentEntityIdentifiers)
  {
    v26 = currentEntityIdentifiers;
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
  v32 = [(ATXModeConfigurationUIFlowLoggingEvent *)self initWithDndModeUUID:v9 modeConfigurationUI:modeConfigurationUI modeConfigurationEntityType:modeConfigurationEntityType modeConfigurationType:modeConfigurationType suggestedEntityIdentifiers:v15 candidateEntityIdentifiers:v19 previousEntityIdentifiers:v23 currentEntityIdentifiers:v27 eventDate:v31];

  self = v32;
  selfCopy = self;
LABEL_20:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_dndModeUUID UUIDString];
  [v3 setDndModeUUID:uUIDString];

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

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBModeConfigurationUIFlowLoggingEvent alloc] initFromJSON:nCopy];

  v6 = [(ATXModeConfigurationUIFlowLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXModeConfigurationUIFlowLoggingEvent *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

@end