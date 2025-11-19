@interface NETransparentProxyNetworkSettings
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NETransparentProxyNetworkSettings)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)validateNetworkRule:(int)a3 isInclude:(void *)a4 collectErrors:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NETransparentProxyNetworkSettings

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = NETransparentProxyNetworkSettings;
  v5 = [(NETunnelNetworkSettings *)&v26 checkValidityAndCollectErrors:v4];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [(NETransparentProxyNetworkSettings *)self includedNetworkRules];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
          objc_enumerationMutation(v6);
        }

        v5 &= [(NETransparentProxyNetworkSettings *)self validateNetworkRule:1 isInclude:v4 collectErrors:?];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [(NETransparentProxyNetworkSettings *)self excludedNetworkRules];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
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
          objc_enumerationMutation(v11);
        }

        v5 &= [(NETransparentProxyNetworkSettings *)self validateNetworkRule:0 isInclude:v4 collectErrors:?];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (uint64_t)validateNetworkRule:(int)a3 isInclude:(void *)a4 collectErrors:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    a1 = [v7 checkValidityAndCollectErrors:v8];
    v9 = [v7 matchRemoteHostOrNetworkEndpoint];
    if (v9)
    {
      v10 = v9;
      v11 = [v7 matchRemoteHostOrNetworkEndpoint];
      type = nw_endpoint_get_type(v11);

      if (type == nw_endpoint_type_address)
      {
        v13 = [v7 matchRemoteHostOrNetworkEndpoint];
        port = nw_endpoint_get_port(v13);

        if (!port)
        {
          v15 = [v7 matchRemoteHostOrNetworkEndpoint];
          address = nw_endpoint_get_address(v15);
          v17 = NEIsWildcardAddress(&address->sa_len);

          if (v17)
          {
            v18 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_INVALID_ADDRESS", @"NETWORK_RULE_ERROR_INVALID_ADDRESS");
            [v8 addObject:v18];

            a1 = 0;
          }
        }

        v19 = [v7 matchRemoteHostOrNetworkEndpoint];
        v20 = nw_endpoint_get_port(v19);

        if (v20 == 53 && a3)
        {
          v21 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_INVALID_PORT", @"NETWORK_RULE_ERROR_INVALID_PORT");
          [v8 addObject:v21];

          a1 = 0;
        }
      }
    }

    v22 = [v7 matchLocalNetworkEndpoint];

    if (v22)
    {
      v23 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_INVALID_LOCAL_NETWORK", @"NETWORK_RULE_ERROR_INVALID_LOCAL_NETWORK");
      [v8 addObject:v23];

      a1 = 0;
    }

    if ([v7 matchDirection] != 2)
    {
      v24 = NEResourcesCopyLocalizedNSString(@"NETWORK_RULE_ERROR_UNSUPPORTED_DIRECTION", @"NETWORK_RULE_ERROR_UNSUPPORTED_DIRECTION");
      [v8 addObject:v24];

      a1 = 0;
    }
  }

  return a1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NETransparentProxyNetworkSettings;
  v4 = [(NETunnelNetworkSettings *)&v8 copyWithZone:a3];
  v5 = [(NETransparentProxyNetworkSettings *)self includedNetworkRules];
  [v4 setIncludedNetworkRules:v5];

  v6 = [(NETransparentProxyNetworkSettings *)self excludedNetworkRules];
  [v4 setExcludedNetworkRules:v6];

  [v4 setIsFullyTransparent:{-[NETransparentProxyNetworkSettings isFullyTransparent](self, "isFullyTransparent")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = NETransparentProxyNetworkSettings;
  v4 = a3;
  [(NETunnelNetworkSettings *)&v7 encodeWithCoder:v4];
  v5 = [(NETransparentProxyNetworkSettings *)self includedNetworkRules:v7.receiver];
  [v4 encodeObject:v5 forKey:@"included-rules"];

  v6 = [(NETransparentProxyNetworkSettings *)self excludedNetworkRules];
  [v4 encodeObject:v6 forKey:@"excluded-rules"];

  [v4 encodeBool:-[NETransparentProxyNetworkSettings isFullyTransparent](self forKey:{"isFullyTransparent"), @"is-fully-transparent"}];
}

- (NETransparentProxyNetworkSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = NETransparentProxyNetworkSettings;
  v5 = [(NETunnelNetworkSettings *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"included-rules"];
    includedNetworkRules = v5->_includedNetworkRules;
    v5->_includedNetworkRules = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"excluded-rules"];
    excludedNetworkRules = v5->_excludedNetworkRules;
    v5->_excludedNetworkRules = v14;

    v5->_isFullyTransparent = [v4 decodeBoolForKey:@"is-fully-transparent"];
  }

  return v5;
}

@end