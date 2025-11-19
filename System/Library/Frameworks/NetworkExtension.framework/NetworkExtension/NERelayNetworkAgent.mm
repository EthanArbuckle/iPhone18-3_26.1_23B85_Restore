@interface NERelayNetworkAgent
+ (id)agentDomain;
+ (id)agentType;
- (id)agentDescription;
- (id)copyAgentData;
@end

@implementation NERelayNetworkAgent

- (id)copyAgentData
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [(NERelayNetworkAgent *)self proxyConfig];

  if (v3)
  {
    v10[0] = 0;
    v10[1] = 0;
    v4 = [(NENetworkAgent *)self configurationUUID];
    [v4 getUUIDBytes:v10];

    v5 = [(NERelayNetworkAgent *)self proxyConfig];
    nw_proxy_config_set_identifier();

    v6 = [(NERelayNetworkAgent *)self proxyConfig];
    v7 = nw_proxy_config_copy_agent_data();
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)agentDescription
{
  v4.receiver = self;
  v4.super_class = NERelayNetworkAgent;
  v2 = [(NENetworkAgent *)&v4 agentDescription];

  return v2;
}

+ (id)agentType
{
  v2 = MEMORY[0x1E696AEC0];
  agent_type = nw_proxy_config_get_agent_type();

  return [v2 stringWithUTF8String:agent_type];
}

+ (id)agentDomain
{
  v2 = MEMORY[0x1E696AEC0];
  agent_domain = nw_proxy_config_get_agent_domain();

  return [v2 stringWithUTF8String:agent_domain];
}

@end