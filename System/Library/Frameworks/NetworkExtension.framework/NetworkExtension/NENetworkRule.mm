@interface NENetworkRule
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NENetworkRule)initWithCoder:(id)coder;
- (NENetworkRule)initWithDestinationHost:(NWHostEndpoint *)hostEndpoint protocol:(NENetworkRuleProtocol)protocol;
- (NENetworkRule)initWithDestinationHostEndpoint:(id)endpoint protocol:(int64_t)protocol;
- (NENetworkRule)initWithDestinationNetwork:(NWHostEndpoint *)networkEndpoint prefix:(NSUInteger)destinationPrefix protocol:(NENetworkRuleProtocol)protocol;
- (NENetworkRule)initWithDestinationNetworkEndpoint:(id)endpoint prefix:(unint64_t)prefix protocol:(int64_t)protocol;
- (NENetworkRule)initWithRemoteNetwork:(NWHostEndpoint *)remoteNetwork remotePrefix:(NSUInteger)remotePrefix localNetwork:(NWHostEndpoint *)localNetwork localPrefix:(NSUInteger)localPrefix protocol:(NENetworkRuleProtocol)protocol direction:(NETrafficDirection)direction;
- (NENetworkRule)initWithRemoteNetworkEndpoint:(id)endpoint remotePrefix:(unint64_t)prefix localNetworkEndpoint:(id)networkEndpoint localPrefix:(unint64_t)localPrefix protocol:(int64_t)protocol direction:(int64_t)direction;
- (NWHostEndpoint)matchLocalNetwork;
- (NWHostEndpoint)matchRemoteEndpoint;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NENetworkRule

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NENetworkRule allocWithZone:?]];
  objc_storeStrong(&v4->_matchRemoteHostOrNetworkEndpoint, self->_matchRemoteHostOrNetworkEndpoint);
  v4->_matchRemotePrefix = self->_matchRemotePrefix;
  objc_storeStrong(&v4->_matchLocalNetworkEndpoint, self->_matchLocalNetworkEndpoint);
  v4->_matchLocalPrefix = self->_matchLocalPrefix;
  v4->_matchProtocol = self->_matchProtocol;
  v4->_matchDirection = self->_matchDirection;
  v4->_appliesToLoopback = self->_appliesToLoopback;
  return v4;
}

- (NENetworkRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NENetworkRule;
  v5 = [(NENetworkRule *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationEndpoint"];
    copyCEndpoint = [v6 copyCEndpoint];
    matchRemoteHostOrNetworkEndpoint = v5->_matchRemoteHostOrNetworkEndpoint;
    v5->_matchRemoteHostOrNetworkEndpoint = copyCEndpoint;

    v5->_matchRemotePrefix = [coderCopy decodeIntegerForKey:@"destinationPrefix"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localNetwork"];
    copyCEndpoint2 = [v9 copyCEndpoint];
    matchLocalNetworkEndpoint = v5->_matchLocalNetworkEndpoint;
    v5->_matchLocalNetworkEndpoint = copyCEndpoint2;

    v5->_matchLocalPrefix = [coderCopy decodeIntegerForKey:@"localPrefix"];
    v5->_matchProtocol = [coderCopy decodeIntegerForKey:@"protocol"];
    v5->_matchDirection = [coderCopy decodeIntegerForKey:@"direction"];
    v5->_appliesToLoopback = [coderCopy decodeBoolForKey:@"loopback"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_matchRemoteHostOrNetworkEndpoint)
  {
    v4 = [MEMORY[0x1E6977E20] endpointWithCEndpoint:?];
    [coderCopy encodeObject:v4 forKey:@"destinationEndpoint"];
  }

  [coderCopy encodeInteger:self->_matchRemotePrefix forKey:@"destinationPrefix"];
  if (self->_matchLocalNetworkEndpoint)
  {
    v5 = [MEMORY[0x1E6977E20] endpointWithCEndpoint:?];
    [coderCopy encodeObject:v5 forKey:@"localNetwork"];
  }

  [coderCopy encodeInteger:self->_matchLocalPrefix forKey:@"localPrefix"];
  [coderCopy encodeInteger:self->_matchProtocol forKey:@"protocol"];
  [coderCopy encodeInteger:self->_matchDirection forKey:@"direction"];
  [coderCopy encodeBool:self->_appliesToLoopback forKey:@"loopback"];
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  matchLocalNetworkEndpoint = self->_matchLocalNetworkEndpoint;
  if (matchLocalNetworkEndpoint)
  {
    type = nw_endpoint_get_type(matchLocalNetworkEndpoint);
    v7 = type == nw_endpoint_type_address;
    if (type != nw_endpoint_type_address)
    {
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_INVALID_LOCAL_NETWORK_ADDRESS", @"NETWORK_RULE_ERROR_INVALID_LOCAL_NETWORK_ADDRESS");
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_endpoint_get_hostname(self->_matchLocalNetworkEndpoint)];
      v11 = [v8 initWithFormat:v9, v10];
      [errorsCopy addObject:v11];
    }

    matchRemoteHostOrNetworkEndpoint = self->_matchRemoteHostOrNetworkEndpoint;
    if (matchRemoteHostOrNetworkEndpoint && nw_endpoint_get_type(matchRemoteHostOrNetworkEndpoint) != nw_endpoint_type_address)
    {
      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      v14 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_INVALID_REMOTE_NETWORK_ADDRESS", @"NETWORK_RULE_ERROR_INVALID_REMOTE_NETWORK_ADDRESS");
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_endpoint_get_hostname(self->_matchRemoteHostOrNetworkEndpoint)];
      v16 = [v13 initWithFormat:v14, v15];
      [errorsCopy addObject:v16];

      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  v17 = self->_matchRemoteHostOrNetworkEndpoint;
  if (v17 && nw_endpoint_get_type(v17) == nw_endpoint_type_host)
  {
    v18 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*."];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_endpoint_get_hostname(self->_matchRemoteHostOrNetworkEndpoint)];
    v20 = [v19 stringByTrimmingCharactersInSet:v18];

    if (![v20 length])
    {
      v21 = objc_alloc(MEMORY[0x1E696AEC0]);
      v22 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_INVALID_DOMAIN", @"NETWORK_RULE_ERROR_INVALID_DOMAIN");
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_endpoint_get_hostname(self->_matchRemoteHostOrNetworkEndpoint)];
      v24 = [v21 initWithFormat:v22, v23];
      [errorsCopy addObject:v24];

      v7 = 0;
    }
  }

  if (self->_matchProtocol >= 3uLL)
  {
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    v26 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_INVALID_PROTOCOL", @"NETWORK_RULE_ERROR_INVALID_PROTOCOL");
    v27 = [v25 initWithFormat:v26, self->_matchProtocol];
    [errorsCopy addObject:v27];

    v7 = 0;
  }

  v28 = self->_matchRemoteHostOrNetworkEndpoint;
  if (v28 && nw_endpoint_get_type(v28) == nw_endpoint_type_address)
  {
    sa_family = nw_endpoint_get_address(self->_matchRemoteHostOrNetworkEndpoint)->sa_family;
    v30 = sa_family == 2 ? 32 : (sa_family == 30) << 7;
    if (self->_matchRemotePrefix > v30)
    {
      v31 = objc_alloc(MEMORY[0x1E696AEC0]);
      v32 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_INVALID_PREFIX", @"NETWORK_RULE_ERROR_INVALID_PREFIX");
      v33 = [v31 initWithFormat:v32, self->_matchRemotePrefix, v30];
      [errorsCopy addObject:v33];

      v7 = 0;
    }
  }

  if (self->_matchDirection >= 3uLL)
  {
    v34 = objc_alloc(MEMORY[0x1E696AEC0]);
    v35 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_INVALID_DIRECTION", @"NETWORK_RULE_ERROR_INVALID_DIRECTION");
    v36 = [v34 initWithFormat:v35, self->_matchDirection];
    [errorsCopy addObject:v36];

    v7 = 0;
  }

  return v7;
}

- (NWHostEndpoint)matchLocalNetwork
{
  matchLocalNetworkEndpoint = [(NENetworkRule *)self matchLocalNetworkEndpoint];
  if (matchLocalNetworkEndpoint)
  {
    v4 = MEMORY[0x1E6977E20];
    matchLocalNetworkEndpoint2 = [(NENetworkRule *)self matchLocalNetworkEndpoint];
    v6 = [v4 endpointWithCEndpoint:matchLocalNetworkEndpoint2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NWHostEndpoint)matchRemoteEndpoint
{
  matchRemoteHostOrNetworkEndpoint = [(NENetworkRule *)self matchRemoteHostOrNetworkEndpoint];
  if (matchRemoteHostOrNetworkEndpoint)
  {
    v4 = MEMORY[0x1E6977E20];
    matchRemoteHostOrNetworkEndpoint2 = [(NENetworkRule *)self matchRemoteHostOrNetworkEndpoint];
    v6 = [v4 endpointWithCEndpoint:matchRemoteHostOrNetworkEndpoint2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NENetworkRule)initWithRemoteNetwork:(NWHostEndpoint *)remoteNetwork remotePrefix:(NSUInteger)remotePrefix localNetwork:(NWHostEndpoint *)localNetwork localPrefix:(NSUInteger)localPrefix protocol:(NENetworkRuleProtocol)protocol direction:(NETrafficDirection)direction
{
  v14 = localNetwork;
  copyCEndpoint = [(NWHostEndpoint *)remoteNetwork copyCEndpoint];
  copyCEndpoint2 = [(NWHostEndpoint *)v14 copyCEndpoint];

  v17 = [(NENetworkRule *)self initWithRemoteNetworkEndpoint:copyCEndpoint remotePrefix:remotePrefix localNetworkEndpoint:copyCEndpoint2 localPrefix:localPrefix protocol:protocol direction:direction];
  return v17;
}

- (NENetworkRule)initWithRemoteNetworkEndpoint:(id)endpoint remotePrefix:(unint64_t)prefix localNetworkEndpoint:(id)networkEndpoint localPrefix:(unint64_t)localPrefix protocol:(int64_t)protocol direction:(int64_t)direction
{
  networkEndpointCopy = networkEndpoint;
  v16 = [(NENetworkRule *)self initWithDestinationNetworkEndpoint:endpoint prefix:prefix protocol:protocol];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_matchLocalNetworkEndpoint, networkEndpoint);
    matchLocalNetworkEndpoint = v17->_matchLocalNetworkEndpoint;
    if (matchLocalNetworkEndpoint)
    {
      v17->_matchLocalPrefix = localPrefix;
      if (!v17->_appliesToLoopback)
      {
        if (nw_endpoint_get_type(matchLocalNetworkEndpoint) == nw_endpoint_type_address)
        {
          address = nw_endpoint_get_address(v17->_matchLocalNetworkEndpoint);
          v20 = NEIsLoopbackAddress(&address->sa_len);
        }

        else
        {
          v20 = 0;
        }

        v17->_appliesToLoopback = v20;
      }
    }

    v17->_matchDirection = direction;
  }

  return v17;
}

- (NENetworkRule)initWithDestinationHost:(NWHostEndpoint *)hostEndpoint protocol:(NENetworkRuleProtocol)protocol
{
  copyCEndpoint = [(NWHostEndpoint *)hostEndpoint copyCEndpoint];
  v7 = [(NENetworkRule *)self initWithDestinationHostEndpoint:copyCEndpoint protocol:protocol];

  return v7;
}

- (NENetworkRule)initWithDestinationHostEndpoint:(id)endpoint protocol:(int64_t)protocol
{
  endpointCopy = endpoint;
  v14.receiver = self;
  v14.super_class = NENetworkRule;
  v8 = [(NENetworkRule *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_matchRemoteHostOrNetworkEndpoint, endpoint);
    v9->_matchRemotePrefix = 0x7FFFFFFFFFFFFFFFLL;
    v9->_matchLocalPrefix = 0x7FFFFFFFFFFFFFFFLL;
    v9->_matchProtocol = protocol;
    v9->_matchDirection = 2;
    matchRemoteHostOrNetworkEndpoint = v9->_matchRemoteHostOrNetworkEndpoint;
    if (matchRemoteHostOrNetworkEndpoint)
    {
      if (nw_endpoint_get_type(matchRemoteHostOrNetworkEndpoint) == nw_endpoint_type_address)
      {
        address = nw_endpoint_get_address(v9->_matchRemoteHostOrNetworkEndpoint);
        v12 = NEIsLoopbackAddress(&address->sa_len);
      }

      else
      {
        v12 = 0;
      }

      v9->_appliesToLoopback = v12;
    }
  }

  return v9;
}

- (NENetworkRule)initWithDestinationNetwork:(NWHostEndpoint *)networkEndpoint prefix:(NSUInteger)destinationPrefix protocol:(NENetworkRuleProtocol)protocol
{
  copyCEndpoint = [(NWHostEndpoint *)networkEndpoint copyCEndpoint];
  v9 = [(NENetworkRule *)self initWithDestinationNetworkEndpoint:copyCEndpoint prefix:destinationPrefix protocol:protocol];

  return v9;
}

- (NENetworkRule)initWithDestinationNetworkEndpoint:(id)endpoint prefix:(unint64_t)prefix protocol:(int64_t)protocol
{
  endpointCopy = endpoint;
  v16.receiver = self;
  v16.super_class = NENetworkRule;
  v10 = [(NENetworkRule *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_matchRemoteHostOrNetworkEndpoint, endpoint);
    v11->_matchRemotePrefix = prefix;
    v11->_matchLocalPrefix = 0x7FFFFFFFFFFFFFFFLL;
    v11->_matchProtocol = protocol;
    v11->_matchDirection = 2;
    matchRemoteHostOrNetworkEndpoint = v11->_matchRemoteHostOrNetworkEndpoint;
    if (matchRemoteHostOrNetworkEndpoint)
    {
      if (nw_endpoint_get_type(matchRemoteHostOrNetworkEndpoint) == nw_endpoint_type_address)
      {
        address = nw_endpoint_get_address(v11->_matchRemoteHostOrNetworkEndpoint);
        v14 = NEIsLoopbackAddress(&address->sa_len);
      }

      else
      {
        v14 = 0;
      }

      v11->_appliesToLoopback = v14;
    }
  }

  return v11;
}

@end