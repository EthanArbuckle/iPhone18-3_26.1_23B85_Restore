@interface NETransparentProxyNetworkSettings
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NETransparentProxyNetworkSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)validateNetworkRule:(int)rule isInclude:(void *)include collectErrors:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NETransparentProxyNetworkSettings

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v29 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v26.receiver = self;
  v26.super_class = NETransparentProxyNetworkSettings;
  v5 = [(NETunnelNetworkSettings *)&v26 checkValidityAndCollectErrors:errorsCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  includedNetworkRules = [(NETransparentProxyNetworkSettings *)self includedNetworkRules];
  v7 = [includedNetworkRules countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(includedNetworkRules);
        }

        v5 &= [(NETransparentProxyNetworkSettings *)self validateNetworkRule:1 isInclude:errorsCopy collectErrors:?];
      }

      v8 = [includedNetworkRules countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  excludedNetworkRules = [(NETransparentProxyNetworkSettings *)self excludedNetworkRules];
  v12 = [excludedNetworkRules countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(excludedNetworkRules);
        }

        v5 &= [(NETransparentProxyNetworkSettings *)self validateNetworkRule:0 isInclude:errorsCopy collectErrors:?];
      }

      v13 = [excludedNetworkRules countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (uint64_t)validateNetworkRule:(int)rule isInclude:(void *)include collectErrors:
{
  v7 = a2;
  includeCopy = include;
  if (self)
  {
    self = [v7 checkValidityAndCollectErrors:includeCopy];
    matchRemoteHostOrNetworkEndpoint = [v7 matchRemoteHostOrNetworkEndpoint];
    if (matchRemoteHostOrNetworkEndpoint)
    {
      v10 = matchRemoteHostOrNetworkEndpoint;
      matchRemoteHostOrNetworkEndpoint2 = [v7 matchRemoteHostOrNetworkEndpoint];
      type = nw_endpoint_get_type(matchRemoteHostOrNetworkEndpoint2);

      if (type == nw_endpoint_type_address)
      {
        matchRemoteHostOrNetworkEndpoint3 = [v7 matchRemoteHostOrNetworkEndpoint];
        port = nw_endpoint_get_port(matchRemoteHostOrNetworkEndpoint3);

        if (!port)
        {
          matchRemoteHostOrNetworkEndpoint4 = [v7 matchRemoteHostOrNetworkEndpoint];
          address = nw_endpoint_get_address(matchRemoteHostOrNetworkEndpoint4);
          v17 = NEIsWildcardAddress(&address->sa_len);

          if (v17)
          {
            v18 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_INVALID_ADDRESS", @"NETWORK_RULE_ERROR_INVALID_ADDRESS");
            [includeCopy addObject:v18];

            self = 0;
          }
        }

        matchRemoteHostOrNetworkEndpoint5 = [v7 matchRemoteHostOrNetworkEndpoint];
        v20 = nw_endpoint_get_port(matchRemoteHostOrNetworkEndpoint5);

        if (v20 == 53 && rule)
        {
          v21 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_INVALID_PORT", @"NETWORK_RULE_ERROR_INVALID_PORT");
          [includeCopy addObject:v21];

          self = 0;
        }
      }
    }

    matchLocalNetworkEndpoint = [v7 matchLocalNetworkEndpoint];

    if (matchLocalNetworkEndpoint)
    {
      v23 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_INVALID_LOCAL_NETWORK", @"NETWORK_RULE_ERROR_INVALID_LOCAL_NETWORK");
      [includeCopy addObject:v23];

      self = 0;
    }

    if ([v7 matchDirection] != 2)
    {
      v24 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_UNSUPPORTED_DIRECTION", @"NETWORK_RULE_ERROR_UNSUPPORTED_DIRECTION");
      [includeCopy addObject:v24];

      self = 0;
    }
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = NETransparentProxyNetworkSettings;
  v4 = [(NETunnelNetworkSettings *)&v8 copyWithZone:zone];
  includedNetworkRules = [(NETransparentProxyNetworkSettings *)self includedNetworkRules];
  [v4 setIncludedNetworkRules:includedNetworkRules];

  excludedNetworkRules = [(NETransparentProxyNetworkSettings *)self excludedNetworkRules];
  [v4 setExcludedNetworkRules:excludedNetworkRules];

  [v4 setIsFullyTransparent:{-[NETransparentProxyNetworkSettings isFullyTransparent](self, "isFullyTransparent")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NETransparentProxyNetworkSettings;
  coderCopy = coder;
  [(NETunnelNetworkSettings *)&v7 encodeWithCoder:coderCopy];
  v5 = [(NETransparentProxyNetworkSettings *)self includedNetworkRules:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"included-rules"];

  excludedNetworkRules = [(NETransparentProxyNetworkSettings *)self excludedNetworkRules];
  [coderCopy encodeObject:excludedNetworkRules forKey:@"excluded-rules"];

  [coderCopy encodeBool:-[NETransparentProxyNetworkSettings isFullyTransparent](self forKey:{"isFullyTransparent"), @"is-fully-transparent"}];
}

- (NETransparentProxyNetworkSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = NETransparentProxyNetworkSettings;
  v5 = [(NETunnelNetworkSettings *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"included-rules"];
    includedNetworkRules = v5->_includedNetworkRules;
    v5->_includedNetworkRules = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"excluded-rules"];
    excludedNetworkRules = v5->_excludedNetworkRules;
    v5->_excludedNetworkRules = v14;

    v5->_isFullyTransparent = [coderCopy decodeBoolForKey:@"is-fully-transparent"];
  }

  return v5;
}

@end