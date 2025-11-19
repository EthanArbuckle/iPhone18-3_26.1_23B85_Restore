@interface NEFilterRule
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NEFilterRule)initWithCoder:(id)a3;
- (NEFilterRule)initWithNetworkRule:(NENetworkRule *)networkRule action:(NEFilterAction)action;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEFilterRule

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEFilterRule allocWithZone:a3];
  networkRule = self->_networkRule;
  action = self->_action;

  return [(NEFilterRule *)v4 initWithNetworkRule:networkRule action:action];
}

- (NEFilterRule)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NEFilterRule;
  v5 = [(NEFilterRule *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rule"];
    networkRule = v5->_networkRule;
    v5->_networkRule = v6;

    v5->_action = [v4 decodeIntegerForKey:@"action"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  networkRule = self->_networkRule;
  v5 = a3;
  [v5 encodeObject:networkRule forKey:@"rule"];
  [v5 encodeInteger:self->_action forKey:@"action"];
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v4 = a3;
  v5 = [(NENetworkRule *)self->_networkRule checkValidityAndCollectErrors:v4];
  v6 = [(NENetworkRule *)self->_networkRule matchRemoteHostOrNetworkEndpoint];
  if (v6)
  {
    v7 = v6;
    v8 = [(NENetworkRule *)self->_networkRule matchRemoteHostOrNetworkEndpoint];
    type = nw_endpoint_get_type(v8);

    if (type == nw_endpoint_type_address)
    {
      v10 = [(NENetworkRule *)self->_networkRule matchRemoteHostOrNetworkEndpoint];
      port = nw_endpoint_get_port(v10);

      if (!port)
      {
        v12 = [(NENetworkRule *)self->_networkRule matchRemoteHostOrNetworkEndpoint];
        address = nw_endpoint_get_address(v12);
        if (NEIsWildcardAddress(&address->sa_len) && [(NENetworkRule *)self->_networkRule matchProtocol]== NENetworkRuleProtocolAny)
        {
          v15 = [(NENetworkRule *)self->_networkRule matchDirection];

          if (v15)
          {
            goto LABEL_7;
          }

          v12 = NEResourcesCopyLocalizedNSString(@"FILTER_RULE_INVALID_NETWORK_RULE", @"FILTER_RULE_INVALID_NETWORK_RULE");
          [v4 addObject:v12];
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