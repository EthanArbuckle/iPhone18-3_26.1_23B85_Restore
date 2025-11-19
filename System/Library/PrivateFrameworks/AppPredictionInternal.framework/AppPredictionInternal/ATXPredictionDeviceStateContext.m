@interface ATXPredictionDeviceStateContext
- (ATXPredictionDeviceStateContext)initWithProto:(id)a3;
- (ATXPredictionDeviceStateContext)initWithProtoData:(id)a3;
- (ATXPredictionDeviceStateContext)initWithWifiSSID:(id)a3 onWifi:(BOOL)a4 inAirplaneMode:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXPredictionDeviceStateContext:(id)a3;
- (id)description;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
@end

@implementation ATXPredictionDeviceStateContext

- (ATXPredictionDeviceStateContext)initWithWifiSSID:(id)a3 onWifi:(BOOL)a4 inAirplaneMode:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = ATXPredictionDeviceStateContext;
  v9 = [(ATXPredictionDeviceStateContext *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    wifiSSID = v9->_wifiSSID;
    v9->_wifiSSID = v10;

    v9->_onWifi = a4;
    v9->_inAirplaneMode = a5;
  }

  return v9;
}

- (id)description
{
  v2 = [(ATXPredictionDeviceStateContext *)self jsonDict];
  v3 = [v2 description];

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

- (ATXPredictionDeviceStateContext)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBPredictionDeviceStateContext alloc] initWithData:v4];

    self = [(ATXPredictionDeviceStateContext *)self initWithProto:v5];
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
  v2 = [(ATXPredictionDeviceStateContext *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXPredictionDeviceStateContext)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v9 = 0;
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

  v5 = v4;
  v6 = [v5 wifiSSID];
  v7 = [v5 onWifi];
  v8 = [v5 inAirplaneMode];

  self = [(ATXPredictionDeviceStateContext *)self initWithWifiSSID:v6 onWifi:v7 inAirplaneMode:v8];
  v9 = self;
LABEL_8:

  return v9;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setWifiSSID:self->_wifiSSID];
  [v3 setOnWifi:self->_onWifi];
  [v3 setInAirplaneMode:self->_inAirplaneMode];

  return v3;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPredictionDeviceStateContext *)self isEqualToATXPredictionDeviceStateContext:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPredictionDeviceStateContext:(id)a3
{
  v4 = a3;
  v5 = self->_wifiSSID;
  v6 = v5;
  if (v5 == v4[2])
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

  if (self->_onWifi != *(v4 + 8))
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = self->_inAirplaneMode == *(v4 + 9);
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