@interface NENexusAgent
+ (id)agentFromData:(id)data;
- (BOOL)assertAgentWithOptions:(id)options;
- (BOOL)requestNexusWithOptions:(id)options;
- (BOOL)startAgentWithOptions:(id)options;
- (id)copyAgentData;
- (void)closeNexusWithOptions:(id)options;
- (void)unassertAgentWithOptions:(id)options;
@end

@implementation NENexusAgent

- (void)unassertAgentWithOptions:(id)options
{
  v4 = [options objectForKeyedSubscript:*MEMORY[0x1E6977DF0]];
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  [(NENexusAgent *)self handleUnassertFromClient:v4];
}

- (BOOL)assertAgentWithOptions:(id)options
{
  v4 = [options objectForKeyedSubscript:*MEMORY[0x1E6977DF0]];
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  [(NENexusAgent *)self handleAssertFromClient:v4];

  return 1;
}

- (BOOL)startAgentWithOptions:(id)options
{
  v4 = [options objectForKeyedSubscript:*MEMORY[0x1E6977DF0]];
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  [(NENexusAgent *)self handleStartFromClient:v4];

  return 1;
}

- (void)closeNexusWithOptions:(id)options
{
  v4 = [options objectForKeyedSubscript:*MEMORY[0x1E6977DF0]];
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  [(NENexusAgent *)self closeFlowWithClientIdentifier:v4];
}

- (BOOL)requestNexusWithOptions:(id)options
{
  v4 = [options objectForKeyedSubscript:*MEMORY[0x1E6977DF0]];
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  v5 = [(NENexusAgent *)self handleRequestNexusFromClient:v4];

  return v5;
}

- (id)copyAgentData
{
  v8 = 0u;
  memset(v9, 0, 188);
  if (!self)
  {
    DWORD1(v8) = 1;
    goto LABEL_5;
  }

  v2 = 1;
  LODWORD(v8) = self->_frameType;
  DWORD1(v8) = 1;
  if (v8 != 2)
  {
LABEL_5:
    v4 = v9;
    v3 = (&v8 | 0xC);
    v6 = 3;
    v5 = 1;
    v2 = 2;
    goto LABEL_6;
  }

  v3 = &v9[3] + 2;
  v4 = &v9[3] + 3;
  v5 = 2;
  v6 = 1;
LABEL_6:
  DWORD2(v8) = v2;
  *v3 = v5;
  *v4 = v6;
  [MEMORY[0x1E695DEF0] dataWithBytes:&v8 length:204];
  return objc_claimAutoreleasedReturnValue();
}

+ (id)agentFromData:(id)data
{
  v11 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = objc_alloc_init(NENexusAgent);
  if ([dataCopy length] < 0xCC)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      v10 = [dataCopy length];
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "data.length is invalid (%lu)", &v9, 0xCu);
    }
  }

  else
  {
    bytes = [dataCopy bytes];
    if (bytes && v4)
    {
      v4->_frameType = *bytes;
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

@end