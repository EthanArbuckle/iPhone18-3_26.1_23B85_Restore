@interface NEEvaluateConnectionRule
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NEEvaluateConnectionRule)initWithCoder:(id)a3;
- (NEEvaluateConnectionRule)initWithMatchDomains:(NSArray *)domains andAction:(NEEvaluateConnectionRuleAction)action;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEEvaluateConnectionRule

- (id)initFromLegacyDictionary:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = NEEvaluateConnectionRule;
  v5 = [(NEEvaluateConnectionRule *)&v27 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69827F0]];
  if (isa_nsstring(v6))
  {
    if ([v6 isEqualToString:*MEMORY[0x1E6982990]])
    {
      v7 = 1;
LABEL_7:
      v5->_action = v7;
      goto LABEL_8;
    }

    if ([v6 isEqualToString:*MEMORY[0x1E6982998]])
    {
      v7 = 2;
      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = *MEMORY[0x1E69827F8];
  v9 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69827F8]];
  v10 = isa_nsarray(v9);

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:v8];
    matchDomains = v5->_matchDomains;
    v5->_matchDomains = v11;
  }

  v13 = *MEMORY[0x1E6982800];
  v14 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982800]];
  v15 = isa_nsarray(v14);

  if (v15)
  {
    v16 = [v4 objectForKeyedSubscript:v13];
    useDNSServers = v5->_useDNSServers;
    v5->_useDNSServers = v16;
  }

  v18 = *MEMORY[0x1E6982808];
  v19 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6982808]];
  v20 = isa_nsstring(v19);

  if (v20)
  {
    v21 = MEMORY[0x1E695DFF8];
    v22 = [v4 objectForKeyedSubscript:v18];
    v23 = [v21 URLWithString:v22];
    probeURL = v5->_probeURL;
    v5->_probeURL = v23;
  }

  v25 = v5;

LABEL_15:
  return v5;
}

- (id)copyLegacyDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NEEvaluateConnectionRule *)self action];
  if (v4 == NEEvaluateConnectionRuleActionConnectIfNeeded)
  {
    v5 = MEMORY[0x1E6982990];
  }

  else
  {
    if (v4 != NEEvaluateConnectionRuleActionNeverConnect)
    {
      goto LABEL_6;
    }

    v5 = MEMORY[0x1E6982998];
  }

  [v3 setObject:*v5 forKeyedSubscript:*MEMORY[0x1E69827F0]];
LABEL_6:
  v6 = [(NEEvaluateConnectionRule *)self matchDomains];

  if (v6)
  {
    v7 = [(NEEvaluateConnectionRule *)self matchDomains];
    [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69827F8]];
  }

  v8 = [(NEEvaluateConnectionRule *)self useDNSServers];

  if (v8)
  {
    v9 = [(NEEvaluateConnectionRule *)self useDNSServers];
    [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x1E6982800]];
  }

  v10 = [(NEEvaluateConnectionRule *)self probeURL];

  if (v10)
  {
    v11 = [(NEEvaluateConnectionRule *)self probeURL];
    v12 = [v11 absoluteString];
    [v3 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6982808]];
  }

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NEEvaluateConnectionRule *)self action]>= NEEvaluateConnectionRuleActionConnectIfNeeded && [(NEEvaluateConnectionRule *)self action]< (NEEvaluateConnectionRuleActionNeverConnect|NEEvaluateConnectionRuleActionConnectIfNeeded))
  {
    v5 = 1;
  }

  else
  {
    [NEConfiguration addError:v4 toList:?];
    v5 = 0;
  }

  v6 = [(NEEvaluateConnectionRule *)self matchDomains];
  if (v6 && (v7 = v6, -[NEEvaluateConnectionRule matchDomains](self, "matchDomains"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7, v9))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = [(NEEvaluateConnectionRule *)self matchDomains];
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        v14 = 0;
        do
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if ((isa_nsstring(*(*(&v27 + 1) + 8 * v14)) & 1) == 0)
          {
            [NEConfiguration addError:v4 toList:?];
            v5 = 0;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }
  }

  else
  {
    [NEConfiguration addError:v4 toList:?];
    v5 = 0;
  }

  v15 = [(NEEvaluateConnectionRule *)self useDNSServers];

  if (v15)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = [(NEEvaluateConnectionRule *)self useDNSServers];
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        v20 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if ((isa_nsstring(*(*(&v23 + 1) + 8 * v20)) & 1) == 0)
          {
            [NEConfiguration addError:v4 toList:?];
            v5 = 0;
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[NEEvaluateConnectionRule action](self forKey:{"action"), @"Action"}];
  v5 = [(NEEvaluateConnectionRule *)self matchDomains];
  [v4 encodeObject:v5 forKey:@"MatchDomains"];

  v6 = [(NEEvaluateConnectionRule *)self useDNSServers];
  [v4 encodeObject:v6 forKey:@"UseDNSServers"];

  v7 = [(NEEvaluateConnectionRule *)self probeURL];
  [v4 encodeObject:v7 forKey:@"ProbeURL"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEEvaluateConnectionRule allocWithZone:a3];
  v5 = [(NEEvaluateConnectionRule *)self matchDomains];
  v6 = [(NEEvaluateConnectionRule *)v4 initWithMatchDomains:v5 andAction:[(NEEvaluateConnectionRule *)self action]];

  v7 = [(NEEvaluateConnectionRule *)self useDNSServers];
  [(NEEvaluateConnectionRule *)v6 setUseDNSServers:v7];

  v8 = [(NEEvaluateConnectionRule *)self probeURL];
  [(NEEvaluateConnectionRule *)v6 setProbeURL:v8];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[NEEvaluateConnectionRule action](self, "action"), v5 == [v4 action]))
  {
    v6 = [(NEEvaluateConnectionRule *)self matchDomains];
    v7 = [v4 matchDomains];
    if ([v6 isEqualToArray:v7])
    {
      v8 = [(NEEvaluateConnectionRule *)self useDNSServers];
      v9 = [v4 useDNSServers];
      if ([v8 isEqualToArray:v9])
      {
        v10 = [(NEEvaluateConnectionRule *)self probeURL];
        v11 = [v4 probeURL];
        v12 = [v10 isEqual:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NEEvaluateConnectionRule)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = NEEvaluateConnectionRule;
  v5 = [(NEEvaluateConnectionRule *)&v19 init];
  if (v5)
  {
    v5->_action = [v4 decodeInt32ForKey:@"Action"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"MatchDomains"];
    matchDomains = v5->_matchDomains;
    v5->_matchDomains = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"UseDNSServers"];
    useDNSServers = v5->_useDNSServers;
    v5->_useDNSServers = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProbeURL"];
    probeURL = v5->_probeURL;
    v5->_probeURL = v16;
  }

  return v5;
}

- (NEEvaluateConnectionRule)initWithMatchDomains:(NSArray *)domains andAction:(NEEvaluateConnectionRuleAction)action
{
  v6 = domains;
  v12.receiver = self;
  v12.super_class = NEEvaluateConnectionRule;
  v7 = [(NEEvaluateConnectionRule *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_action = action;
    v9 = [(NSArray *)v6 copy];
    matchDomains = v8->_matchDomains;
    v8->_matchDomains = v9;
  }

  return v8;
}

@end