@interface ATXPredictionDeviceStateContext
- (ATXPredictionDeviceStateContext)initWithProto:(id)proto;
- (ATXPredictionDeviceStateContext)initWithProtoData:(id)data;
- (ATXPredictionDeviceStateContext)initWithWifiSSID:(id)d onWifi:(BOOL)wifi inAirplaneMode:(BOOL)mode;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPredictionDeviceStateContext:(id)context;
- (id)description;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
@end

@implementation ATXPredictionDeviceStateContext

- (ATXPredictionDeviceStateContext)initWithWifiSSID:(id)d onWifi:(BOOL)wifi inAirplaneMode:(BOOL)mode
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = ATXPredictionDeviceStateContext;
  v9 = [(ATXPredictionDeviceStateContext *)&v13 init];
  if (v9)
  {
    v10 = [dCopy copy];
    wifiSSID = v9->_wifiSSID;
    v9->_wifiSSID = v10;

    v9->_onWifi = wifi;
    v9->_inAirplaneMode = mode;
  }

  return v9;
}

- (id)description
{
  jsonDict = [(ATXPredictionDeviceStateContext *)self jsonDict];
  v3 = [jsonDict description];

  return v3;
}

- (id)jsonDict
{
  v10[3] = *MEMORY[0x277D85DE8];
  wifiSSID = self->_wifiSSID;
  v9[0] = @"wifiSSID";
  v9[1] = @"onWifi";
  if (self->_onWifi)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v10[0] = wifiSSID;
  v10[1] = v3;
  inAirplaneMode = self->_inAirplaneMode;
  v9[2] = @"inAirplaneMode";
  if (inAirplaneMode)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (ATXPredictionDeviceStateContext)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBPredictionDeviceStateContext alloc] initWithData:dataCopy];

    self = [(ATXPredictionDeviceStateContext *)self initWithProto:v5];
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
  proto = [(ATXPredictionDeviceStateContext *)self proto];
  data = [proto data];

  return data;
}

- (ATXPredictionDeviceStateContext)initWithProto:(id)proto
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
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [(ATXPredictionDeviceStateContext *)self initWithProto:v10];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  wifiSSID = [v5 wifiSSID];
  onWifi = [v5 onWifi];
  inAirplaneMode = [v5 inAirplaneMode];

  self = [(ATXPredictionDeviceStateContext *)self initWithWifiSSID:wifiSSID onWifi:onWifi inAirplaneMode:inAirplaneMode];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setWifiSSID:self->_wifiSSID];
  [v3 setOnWifi:self->_onWifi];
  [v3 setInAirplaneMode:self->_inAirplaneMode];

  return v3;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPredictionDeviceStateContext *)self isEqualToATXPredictionDeviceStateContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPredictionDeviceStateContext:(id)context
{
  contextCopy = context;
  v5 = self->_wifiSSID;
  v6 = v5;
  if (v5 == contextCopy[2])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (self->_onWifi != *(contextCopy + 8))
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = self->_inAirplaneMode == *(contextCopy + 9);
LABEL_8:

  return v8;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBPredictionDeviceStateContext proto", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end