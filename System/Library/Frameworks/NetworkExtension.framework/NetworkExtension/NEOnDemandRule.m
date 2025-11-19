@interface NEOnDemandRule
+ (id)createOnDemandRulesFromLegacyDictionary:(uint64_t)a1;
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NEOnDemandRule)initWithAction:(int64_t)a3;
- (NEOnDemandRule)initWithCoder:(id)a3;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEOnDemandRule

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = NEOnDemandRule;
  v5 = [(NEOnDemandRule *)&v37 init];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69827E0]];
  if (isa_nsstring(v6))
  {
    if ([v6 isEqualToString:*MEMORY[0x1E6982988]])
    {
      v7 = 4;
LABEL_12:
      v5->_action = v7;
      goto LABEL_13;
    }

    if ([v6 isEqualToString:*MEMORY[0x1E6982970]])
    {
      v7 = 1;
      goto LABEL_12;
    }

    if ([v6 isEqualToString:*MEMORY[0x1E6982978]])
    {
      v7 = 2;
      goto LABEL_12;
    }

    if (([v6 isEqualToString:*MEMORY[0x1E6982980]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E6982968]))
    {
      v7 = 3;
      goto LABEL_12;
    }
  }

LABEL_13:
  v8 = *MEMORY[0x1E6982810];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982810]];
  v10 = isa_nsarray(v9);

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:v8];
    v12 = [v11 copy];
    DNSSearchDomainMatch = v5->_DNSSearchDomainMatch;
    v5->_DNSSearchDomainMatch = v12;
  }

  v14 = *MEMORY[0x1E6982818];
  v15 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982818]];
  v16 = isa_nsarray(v15);

  if (v16)
  {
    v17 = [v4 objectForKeyedSubscript:v14];
    v18 = [v17 copy];
    DNSServerAddressMatch = v5->_DNSServerAddressMatch;
    v5->_DNSServerAddressMatch = v18;
  }

  v20 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982820]];
  if (!isa_nsstring(v20))
  {
    goto LABEL_24;
  }

  if ([v20 isEqualToString:@"Cellular"])
  {
    v21 = 3;
  }

  else
  {
    if (([v20 isEqualToString:*MEMORY[0x1E69829A0]] & 1) != 0 || !objc_msgSend(v20, "isEqualToString:", *MEMORY[0x1E69829A8]))
    {
      goto LABEL_24;
    }

    v21 = 2;
  }

  v5->_interfaceTypeMatch = v21;
LABEL_24:
  v22 = *MEMORY[0x1E6982828];
  v23 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982828]];
  v24 = isa_nsarray(v23);

  if (v24)
  {
    v25 = [v4 objectForKeyedSubscript:v22];
    v26 = [v25 copy];
    SSIDMatch = v5->_SSIDMatch;
    v5->_SSIDMatch = v26;
  }

  v28 = *MEMORY[0x1E6982830];
  v29 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982830]];
  v30 = isa_nsstring(v29);

  if (v30)
  {
    v31 = MEMORY[0x1E695DFF8];
    v32 = [v4 objectForKeyedSubscript:v28];
    v33 = [v31 URLWithString:v32];
    probeURL = v5->_probeURL;
    v5->_probeURL = v33;
  }

  v35 = v5;

LABEL_29:
  return v5;
}

- (id)copyLegacyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NEOnDemandRule *)self action]- 1;
  if (v4 <= 3)
  {
    [v3 setObject:**(&unk_1E7F09838 + v4) forKeyedSubscript:*MEMORY[0x1E69827E0]];
  }

  v5 = [(NEOnDemandRule *)self DNSSearchDomainMatch];

  if (v5)
  {
    v6 = [(NEOnDemandRule *)self DNSSearchDomainMatch];
    [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E6982810]];
  }

  v7 = [(NEOnDemandRule *)self DNSServerAddressMatch];

  if (v7)
  {
    v8 = [(NEOnDemandRule *)self DNSServerAddressMatch];
    [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6982818]];
  }

  v9 = [(NEOnDemandRule *)self interfaceTypeMatch];
  if (v9 == NEOnDemandRuleInterfaceTypeCellular)
  {
    v11 = *MEMORY[0x1E6982820];
    v10 = @"Cellular";
  }

  else
  {
    if (v9 != NEOnDemandRuleInterfaceTypeWiFi)
    {
      goto LABEL_12;
    }

    v10 = *MEMORY[0x1E69829A8];
    v11 = *MEMORY[0x1E6982820];
  }

  [v3 setObject:v10 forKeyedSubscript:v11];
LABEL_12:
  v12 = [(NEOnDemandRule *)self SSIDMatch];

  if (v12)
  {
    v13 = [(NEOnDemandRule *)self SSIDMatch];
    [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6982828]];
  }

  v14 = [(NEOnDemandRule *)self probeURL];

  if (v14)
  {
    v15 = [(NEOnDemandRule *)self probeURL];
    v16 = [v15 absoluteString];
    [v3 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6982830]];
  }

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NEOnDemandRule *)self action]>= NEOnDemandRuleActionConnect && [(NEOnDemandRule *)self action]< (NEOnDemandRuleActionIgnore|NEOnDemandRuleActionConnect))
  {
    v5 = 1;
  }

  else
  {
    [NEConfiguration addError:v4 toList:?];
    v5 = 0;
  }

  v6 = [(NEOnDemandRule *)self DNSSearchDomainMatch];

  if (v6)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [(NEOnDemandRule *)self DNSSearchDomainMatch];
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          if ((isa_nsstring(*(*(&v24 + 1) + 8 * v11)) & 1) == 0)
          {
            [NEConfiguration addError:v4 toList:?];
            v5 = 0;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }
  }

  v12 = [(NEOnDemandRule *)self DNSServerAddressMatch];

  if (v12)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = [(NEOnDemandRule *)self DNSServerAddressMatch];
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if ((isa_nsstring(*(*(&v20 + 1) + 8 * v17)) & 1) == 0)
          {
            [NEConfiguration addError:v4 toList:?];
            v5 = 0;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithAction:", -[NEOnDemandRule action](self, "action")}];
  v5 = [(NEOnDemandRule *)self DNSSearchDomainMatch];
  [v4 setDNSSearchDomainMatch:v5];

  v6 = [(NEOnDemandRule *)self DNSServerAddressMatch];
  [v4 setDNSServerAddressMatch:v6];

  [v4 setInterfaceTypeMatch:{-[NEOnDemandRule interfaceTypeMatch](self, "interfaceTypeMatch")}];
  v7 = [(NEOnDemandRule *)self SSIDMatch];
  [v4 setSSIDMatch:v7];

  v8 = [(NEOnDemandRule *)self probeURL];
  [v4 setProbeURL:v8];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[NEOnDemandRule action](self forKey:{"action"), @"Action"}];
  v5 = [(NEOnDemandRule *)self DNSSearchDomainMatch];
  [v4 encodeObject:v5 forKey:@"DNSSearchDomainMatch"];

  v6 = [(NEOnDemandRule *)self DNSServerAddressMatch];
  [v4 encodeObject:v6 forKey:@"DNSServerAddressMatch"];

  [v4 encodeInt32:-[NEOnDemandRule interfaceTypeMatch](self forKey:{"interfaceTypeMatch"), @"InterfaceTypeMatch"}];
  v7 = [(NEOnDemandRule *)self SSIDMatch];
  [v4 encodeObject:v7 forKey:@"SSIDMatch"];

  v8 = [(NEOnDemandRule *)self probeURL];
  [v4 encodeObject:v8 forKey:@"ProbeURL"];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(NEOnDemandRule *)self action];
    if (v6 == [v5 action])
    {
      v7 = [(NEOnDemandRule *)self DNSSearchDomainMatch];
      v8 = [v5 DNSSearchDomainMatch];
      if (v7 != v8)
      {
        v9 = [(NEOnDemandRule *)self DNSSearchDomainMatch];
        v32 = [v5 DNSSearchDomainMatch];
        v33 = v9;
        if (![v9 isEqualToArray:?])
        {
          v10 = 0;
          goto LABEL_27;
        }
      }

      v11 = [(NEOnDemandRule *)self DNSServerAddressMatch];
      v12 = [v5 DNSServerAddressMatch];
      if (v11 != v12)
      {
        v3 = [(NEOnDemandRule *)self DNSServerAddressMatch];
        v13 = [v5 DNSServerAddressMatch];
        if (![v3 isEqualToArray:v13])
        {
          v10 = 0;
          goto LABEL_25;
        }

        v31 = v13;
      }

      v14 = [(NEOnDemandRule *)self interfaceTypeMatch];
      if (v14 == [v5 interfaceTypeMatch])
      {
        v15 = [(NEOnDemandRule *)self SSIDMatch];
        v16 = [v5 SSIDMatch];
        v30 = v15;
        v17 = v15 == v16;
        v13 = v31;
        if (v17)
        {
          v29 = v3;
        }

        else
        {
          v18 = [(NEOnDemandRule *)self SSIDMatch];
          v26 = [v5 SSIDMatch];
          v27 = v18;
          if (![v18 isEqualToArray:?])
          {
            v10 = 0;
            v24 = v30;
            goto LABEL_23;
          }

          v29 = v3;
        }

        v28 = v16;
        v19 = [(NEOnDemandRule *)self probeURL];
        v20 = [v5 probeURL];
        v21 = v20;
        if (v19 == v20)
        {

          v10 = 1;
        }

        else
        {
          v22 = [(NEOnDemandRule *)self probeURL];
          v23 = [v5 probeURL];
          v10 = [v22 isEqual:v23];
        }

        v3 = v29;
        v24 = v30;
        v16 = v28;
        v13 = v31;
        if (v30 == v28)
        {
LABEL_24:

          if (v11 == v12)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

LABEL_23:

        goto LABEL_24;
      }

      v10 = 0;
      v13 = v31;
      if (v11 == v12)
      {
LABEL_26:

        if (v7 == v8)
        {
LABEL_28:

          goto LABEL_29;
        }

LABEL_27:

        goto LABEL_28;
      }

LABEL_25:

      goto LABEL_26;
    }
  }

  v10 = 0;
LABEL_29:

  return v10;
}

- (NEOnDemandRule)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NEOnDemandRule;
  v5 = [(NEOnDemandRule *)&v24 init];
  if (v5)
  {
    v5->_action = [v4 decodeInt32ForKey:@"Action"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"DNSSearchDomainMatch"];
    DNSSearchDomainMatch = v5->_DNSSearchDomainMatch;
    v5->_DNSSearchDomainMatch = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"DNSServerAddressMatch"];
    DNSServerAddressMatch = v5->_DNSServerAddressMatch;
    v5->_DNSServerAddressMatch = v14;

    v5->_interfaceTypeMatch = [v4 decodeInt32ForKey:@"InterfaceTypeMatch"];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"SSIDMatch"];
    SSIDMatch = v5->_SSIDMatch;
    v5->_SSIDMatch = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProbeURL"];
    probeURL = v5->_probeURL;
    v5->_probeURL = v21;
  }

  return v5;
}

- (NEOnDemandRule)initWithAction:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NEOnDemandRule;
  result = [(NEOnDemandRule *)&v5 init];
  if (result)
  {
    result->_action = a3;
  }

  return result;
}

+ (id)createOnDemandRulesFromLegacyDictionary:(uint64_t)a1
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_self();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69827D0]];
  if (isa_nsarray(v3) && [v3 count])
  {
    v4 = [[NEEvaluateConnectionRule alloc] initWithMatchDomains:v3 andAction:2];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v5 addObject:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69827C8]];

  if (isa_nsarray(v6) && [v6 count])
  {
    v7 = [[NEEvaluateConnectionRule alloc] initWithMatchDomains:v6 andAction:1];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [v5 addObject:v7];
  }

  v8 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69827D8]];

  if (isa_nsarray(v8) && [v8 count])
  {
    v9 = [[NEEvaluateConnectionRule alloc] initWithMatchDomains:v8 andAction:1];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    [v5 addObject:v9];
  }

  v10 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6982838]];

  if (!isa_nsarray(v10))
  {
    v14 = 0;
LABEL_54:
    if (v5)
    {
      v31 = objc_alloc_init(NEOnDemandRuleEvaluateConnection);
      [(NEOnDemandRuleEvaluateConnection *)v31 setConnectionRules:v5];
      if (!v14)
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      }

      [v14 addObject:{v31, v34, v35}];
    }

    goto LABEL_58;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v34 = v10;
    v35 = v2;
    v38 = v5;
    v14 = 0;
    v37 = 0;
    v15 = *v46;
    v16 = *MEMORY[0x1E69827E0];
    v17 = *MEMORY[0x1E6982988];
    v44 = *MEMORY[0x1E6982970];
    v43 = *MEMORY[0x1E6982978];
    v40 = *MEMORY[0x1E6982980];
    v39 = *MEMORY[0x1E6982968];
    v42 = *MEMORY[0x1E69827E0];
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v19 = *(*(&v45 + 1) + 8 * v18);
        if (isa_nsdictionary(v19))
        {
          v20 = [v19 objectForKeyedSubscript:v16];
          if (isa_nsstring(v20))
          {
            if ([v20 isEqualToString:v17])
            {
              v21 = NEOnDemandRuleIgnore;
              goto LABEL_31;
            }

            if ([v20 isEqualToString:v44])
            {
              v21 = NEOnDemandRuleConnect;
              goto LABEL_31;
            }

            if ([v20 isEqualToString:v43])
            {
              v21 = NEOnDemandRuleDisconnect;
              goto LABEL_31;
            }

            if ([v20 isEqualToString:v40])
            {
              v21 = NEOnDemandRuleEvaluateConnection;
LABEL_31:
              v22 = [[v21 alloc] initFromLegacyDictionary:v19];
              if (v22)
              {
LABEL_32:
                v23 = [v22 DNSSearchDomainMatch];
                if (!v23)
                {
                  v24 = v11;
                  v25 = v17;
                  v26 = [v22 DNSServerAddressMatch];
                  if (!v26)
                  {
                    v41 = v14;
                    v27 = [v22 SSIDMatch];
                    if (!v27 && ![v22 interfaceTypeMatch])
                    {
                      v28 = [v22 probeURL];
                      v36 = v28 == 0;

                      v37 |= v36;
                    }

                    v14 = v41;
                  }

                  v17 = v25;
                  v11 = v24;
                  v16 = v42;
                }

                if (!v14)
                {
                  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
                }

                [v14 addObject:v22];
              }
            }

            else if ([v20 isEqualToString:v39])
            {
              if (v38)
              {
                v22 = [[NEOnDemandRuleEvaluateConnection alloc] initFromLegacyDictionary:v19];
                [v22 setConnectionRules:v38];
                if (v22)
                {
                  goto LABEL_32;
                }
              }
            }
          }
        }

        ++v18;
      }

      while (v13 != v18);
      v29 = [v11 countByEnumeratingWithState:&v45 objects:v49 count:16];
      v13 = v29;
      if (!v29)
      {
        v30 = v37 ^ 1;
        v10 = v34;
        v2 = v35;
        v5 = v38;
        goto LABEL_53;
      }
    }
  }

  v14 = 0;
  v30 = 1;
LABEL_53:

  if (v30)
  {
    goto LABEL_54;
  }

LABEL_58:

  v32 = *MEMORY[0x1E69E9840];

  return v14;
}

@end