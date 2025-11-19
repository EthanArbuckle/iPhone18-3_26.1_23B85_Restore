@interface DataConnectionNetworkAgent
+ (id)agentFromData:(id)a3;
- (BOOL)startAgentWithOptions:(id)a3;
- (DataConnectionAgentData)getAgentData;
- (DataConnectionNetworkAgent)initWithType:(int)a3;
- (NSString)agentDescription;
- (id).cxx_construct;
- (id)copyAgentData;
- (void)dealloc;
- (void)storeAgentData:(DataConnectionAgentData)a3;
@end

@implementation DataConnectionNetworkAgent

- (void)dealloc
{
  agentUUID = self->agentUUID;
  self->agentUUID = 0;

  agentDescription = self->agentDescription;
  self->agentDescription = 0;

  v5.receiver = self;
  v5.super_class = DataConnectionNetworkAgent;
  [(DataConnectionNetworkAgent *)&v5 dealloc];
}

- (DataConnectionNetworkAgent)initWithType:(int)a3
{
  v13.receiver = self;
  v13.super_class = DataConnectionNetworkAgent;
  result = [(DataConnectionNetworkAgent *)&v13 init];
  if (result)
  {
    result->_connectionType = a3;
    v15 = 0;
    *v14 = 0;
    *&v14[6] = a3;
    _X2 = *v14;
    v6 = *&result->_agentData.__a_.__a_value.var0;
    do
    {
      _X7 = *&result->_agentData.__a_.__a_value.var6;
      __asm { CASPAL          X6, X7, X2, X3, [X8] }

      _ZF = _X6 == v6;
      v6 = _X6;
    }

    while (!_ZF);
  }

  return result;
}

+ (id)agentFromData:(id)a3
{
  v3 = a3;
  if ([v3 length] >= 0xB)
  {
    v4 = -[DataConnectionNetworkAgent initWithType:]([DataConnectionNetworkAgent alloc], "initWithType:", *([v3 bytes] + 6));
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)copyAgentData
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  *v10 = _X2;
  *&v10[8] = 0;
  v11 = 0;
  *&v10[6] = self->_connectionType;
  return [[NSData alloc] initWithBytes:v10 length:11];
}

- (NSString)agentDescription
{
  v3 = capabilities::ct::supportsGemini(self);
  v4 = [objc_opt_class() agentType];
  v5 = v4;
  if (v3)
  {
    PersonalitySpecificImpl::simSlot(self->_dataAgent);
    [NSString stringWithFormat:@"%@: %@.%u", @"CommCenter", v5, subscriber::simSlotAsInstance()];
  }

  else
  {
    [NSString stringWithFormat:@"%@: %@", @"CommCenter", v4];
  }
  v6 = ;

  return v6;
}

- (BOOL)startAgentWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(DataConnectionNetworkAgent *)self allowStartAgentForOptions:v4];
  if (v5)
  {
    DataConnectionAgent::startDataAgentWithOptions(self->_dataAgent, v4);
  }

  return v5;
}

- (DataConnectionAgentData)getAgentData
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v9 = 0;
  v10 = _X2;
  result.var6 = v9;
  result.var7 = BYTE4(v9);
  result.var0 = v10;
  result.var1 = BYTE1(v10);
  result.var2 = BYTE2(v10);
  result.var3 = BYTE3(v10);
  result.var4 = BYTE4(v10);
  result.var5 = BYTE5(v10);
  return result;
}

- (void)storeAgentData:(DataConnectionAgentData)a3
{
  v3 = *&self->_agentData.__a_.__a_value.var0;
  do
  {
    _X7 = *&self->_agentData.__a_.__a_value.var6;
    __asm { CASPAL          X6, X7, X2, X3, [X8] }

    _ZF = _X6 == v3;
    v3 = _X6;
  }

  while (!_ZF);
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end