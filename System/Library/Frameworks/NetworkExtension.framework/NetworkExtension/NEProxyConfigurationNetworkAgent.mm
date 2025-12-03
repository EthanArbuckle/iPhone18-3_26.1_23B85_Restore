@interface NEProxyConfigurationNetworkAgent
+ (id)agentFromData:(id)data;
- (NEProxyConfigurationNetworkAgent)initWithProxyConfiguration:(id)configuration;
- (id)agentDescription;
- (id)copyAgentData;
@end

@implementation NEProxyConfigurationNetworkAgent

- (id)copyAgentData
{
  if (self)
  {
    self = objc_getProperty(self, a2, 80, 1);
    v2 = vars8;
  }

  return [(NEProxyConfigurationNetworkAgent *)self copy];
}

- (NEProxyConfigurationNetworkAgent)initWithProxyConfiguration:(id)configuration
{
  v15 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = NEProxyConfigurationNetworkAgent;
  v5 = [(NEProxyConfigurationNetworkAgent *)&v12 init];
  if (!v5)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  ProxyAgentData = SCNetworkProxiesCreateProxyAgentData();
  if (!ProxyAgentData)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = configurationCopy;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "Failed to turn proxy configuration into agent data: %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  agentData = v5->_agentData;
  v5->_agentData = ProxyAgentData;

  v8 = v5;
LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)agentDescription
{
  v2 = objc_opt_class();

  return [v2 agentType];
}

+ (id)agentFromData:(id)data
{
  dataCopy = data;
  v4 = objc_alloc_init(NEProxyConfigurationNetworkAgent);
  v6 = v4;
  if (v4)
  {
    objc_setProperty_atomic(v4, v5, dataCopy, 80);
  }

  return v6;
}

@end