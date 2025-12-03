@interface NEFilterRule
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEFilterRule)initWithCoder:(id)coder;
- (NEFilterRule)initWithNetworkRule:(NENetworkRule *)networkRule action:(NEFilterAction)action;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEFilterRule

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NEFilterRule allocWithZone:zone];
  networkRule = self->_networkRule;
  action = self->_action;

  return [(NEFilterRule *)v4 initWithNetworkRule:networkRule action:action];
}

- (NEFilterRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NEFilterRule;
  v5 = [(NEFilterRule *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rule"];
    networkRule = v5->_networkRule;
    v5->_networkRule = v6;

    v5->_action = [coderCopy decodeIntegerForKey:@"action"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  networkRule = self->_networkRule;
  coderCopy = coder;
  [coderCopy encodeObject:networkRule forKey:@"rule"];
  [coderCopy encodeInteger:self->_action forKey:@"action"];
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  errorsCopy = errors;
  v5 = [(NENetworkRule *)self->_networkRule checkValidityAndCollectErrors:errorsCopy];
  matchRemoteHostOrNetworkEndpoint = [(NENetworkRule *)self->_networkRule matchRemoteHostOrNetworkEndpoint];
  if (matchRemoteHostOrNetworkEndpoint)
  {
    v7 = matchRemoteHostOrNetworkEndpoint;
    matchRemoteHostOrNetworkEndpoint2 = [(NENetworkRule *)self->_networkRule matchRemoteHostOrNetworkEndpoint];
    type = nw_endpoint_get_type(matchRemoteHostOrNetworkEndpoint2);

    if (type == nw_endpoint_type_address)
    {
      matchRemoteHostOrNetworkEndpoint3 = [(NENetworkRule *)self->_networkRule matchRemoteHostOrNetworkEndpoint];
      port = nw_endpoint_get_port(matchRemoteHostOrNetworkEndpoint3);

      if (!port)
      {
        matchRemoteHostOrNetworkEndpoint4 = [(NENetworkRule *)self->_networkRule matchRemoteHostOrNetworkEndpoint];
        address = nw_endpoint_get_address(matchRemoteHostOrNetworkEndpoint4);
        if (NEIsWildcardAddress(&address->sa_len) && [(NENetworkRule *)self->_networkRule matchProtocol]== NENetworkRuleProtocolAny)
        {
          matchDirection = [(NENetworkRule *)self->_networkRule matchDirection];

          if (matchDirection)
          {
            goto LABEL_7;
          }

          matchRemoteHostOrNetworkEndpoint4 = NEResourcesCopyLocalizedNSString(@"FILTER_RULE_INVALID_NETWORK_RULE", @"FILTER_RULE_INVALID_NETWORK_RULE");
          [errorsCopy addObject:matchRemoteHostOrNetworkEndpoint4];
          v5 = 0;
        }
      }
    }
  }

LABEL_7:

  return v5;
}

- (NEFilterRule)initWithNetworkRule:(NENetworkRule *)networkRule action:(NEFilterAction)action
{
  v6 = networkRule;
  v11.receiver = self;
  v11.super_class = NEFilterRule;
  v7 = [(NEFilterRule *)&v11 init];
  if (v7)
  {
    v8 = [(NENetworkRule *)v6 copy];
    v9 = v7->_networkRule;
    v7->_networkRule = v8;

    v7->_action = action;
  }

  return v7;
}

@end