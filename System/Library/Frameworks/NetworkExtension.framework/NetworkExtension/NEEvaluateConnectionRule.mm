@interface NEEvaluateConnectionRule
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)isEqual:(id)equal;
- (NEEvaluateConnectionRule)initWithCoder:(id)coder;
- (NEEvaluateConnectionRule)initWithMatchDomains:(NSArray *)domains andAction:(NEEvaluateConnectionRuleAction)action;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEEvaluateConnectionRule

- (id)initFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = NEEvaluateConnectionRule;
  v5 = [(NEEvaluateConnectionRule *)&v27 init];
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69827F0]];
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
  v9 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69827F8]];
  v10 = isa_nsarray(v9);

  if (v10)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:v8];
    matchDomains = v5->_matchDomains;
    v5->_matchDomains = v11;
  }

  v13 = *MEMORY[0x1E6982800];
  v14 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982800]];
  v15 = isa_nsarray(v14);

  if (v15)
  {
    v16 = [dictionaryCopy objectForKeyedSubscript:v13];
    useDNSServers = v5->_useDNSServers;
    v5->_useDNSServers = v16;
  }

  v18 = *MEMORY[0x1E6982808];
  v19 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E6982808]];
  v20 = isa_nsstring(v19);

  if (v20)
  {
    v21 = MEMORY[0x1E695DFF8];
    v22 = [dictionaryCopy objectForKeyedSubscript:v18];
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
  action = [(NEEvaluateConnectionRule *)self action];
  if (action == NEEvaluateConnectionRuleActionConnectIfNeeded)
  {
    v5 = MEMORY[0x1E6982990];
  }

  else
  {
    if (action != NEEvaluateConnectionRuleActionNeverConnect)
    {
      goto LABEL_6;
    }

    v5 = MEMORY[0x1E6982998];
  }

  [v3 setObject:*v5 forKeyedSubscript:*MEMORY[0x1E69827F0]];
LABEL_6:
  matchDomains = [(NEEvaluateConnectionRule *)self matchDomains];

  if (matchDomains)
  {
    matchDomains2 = [(NEEvaluateConnectionRule *)self matchDomains];
    [v3 setObject:matchDomains2 forKeyedSubscript:*MEMORY[0x1E69827F8]];
  }

  useDNSServers = [(NEEvaluateConnectionRule *)self useDNSServers];

  if (useDNSServers)
  {
    useDNSServers2 = [(NEEvaluateConnectionRule *)self useDNSServers];
    [v3 setObject:useDNSServers2 forKeyedSubscript:*MEMORY[0x1E6982800]];
  }

  probeURL = [(NEEvaluateConnectionRule *)self probeURL];

  if (probeURL)
  {
    probeURL2 = [(NEEvaluateConnectionRule *)self probeURL];
    absoluteString = [probeURL2 absoluteString];
    [v3 setObject:absoluteString forKeyedSubscript:*MEMORY[0x1E6982808]];
  }

  return v3;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v33 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  if ([(NEEvaluateConnectionRule *)self action]>= NEEvaluateConnectionRuleActionConnectIfNeeded && [(NEEvaluateConnectionRule *)self action]< (NEEvaluateConnectionRuleActionNeverConnect|NEEvaluateConnectionRuleActionConnectIfNeeded))
  {
    v5 = 1;
  }

  else
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v5 = 0;
  }

  matchDomains = [(NEEvaluateConnectionRule *)self matchDomains];
  if (matchDomains && (v7 = matchDomains, -[NEEvaluateConnectionRule matchDomains](self, "matchDomains"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7, v9))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    matchDomains2 = [(NEEvaluateConnectionRule *)self matchDomains];
    v11 = [matchDomains2 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(matchDomains2);
          }

          if ((isa_nsstring(*(*(&v27 + 1) + 8 * v14)) & 1) == 0)
          {
            [NEConfiguration addError:errorsCopy toList:?];
            v5 = 0;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [matchDomains2 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v12);
    }
  }

  else
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v5 = 0;
  }

  useDNSServers = [(NEEvaluateConnectionRule *)self useDNSServers];

  if (useDNSServers)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    useDNSServers2 = [(NEEvaluateConnectionRule *)self useDNSServers];
    v17 = [useDNSServers2 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
            objc_enumerationMutation(useDNSServers2);
          }

          if ((isa_nsstring(*(*(&v23 + 1) + 8 * v20)) & 1) == 0)
          {
            [NEConfiguration addError:errorsCopy toList:?];
            v5 = 0;
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [useDNSServers2 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v18);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[NEEvaluateConnectionRule action](self forKey:{"action"), @"Action"}];
  matchDomains = [(NEEvaluateConnectionRule *)self matchDomains];
  [coderCopy encodeObject:matchDomains forKey:@"MatchDomains"];

  useDNSServers = [(NEEvaluateConnectionRule *)self useDNSServers];
  [coderCopy encodeObject:useDNSServers forKey:@"UseDNSServers"];

  probeURL = [(NEEvaluateConnectionRule *)self probeURL];
  [coderCopy encodeObject:probeURL forKey:@"ProbeURL"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NEEvaluateConnectionRule allocWithZone:zone];
  matchDomains = [(NEEvaluateConnectionRule *)self matchDomains];
  v6 = [(NEEvaluateConnectionRule *)v4 initWithMatchDomains:matchDomains andAction:[(NEEvaluateConnectionRule *)self action]];

  useDNSServers = [(NEEvaluateConnectionRule *)self useDNSServers];
  [(NEEvaluateConnectionRule *)v6 setUseDNSServers:useDNSServers];

  probeURL = [(NEEvaluateConnectionRule *)self probeURL];
  [(NEEvaluateConnectionRule *)v6 setProbeURL:probeURL];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[NEEvaluateConnectionRule action](self, "action"), v5 == [equalCopy action]))
  {
    matchDomains = [(NEEvaluateConnectionRule *)self matchDomains];
    matchDomains2 = [equalCopy matchDomains];
    if ([matchDomains isEqualToArray:matchDomains2])
    {
      useDNSServers = [(NEEvaluateConnectionRule *)self useDNSServers];
      useDNSServers2 = [equalCopy useDNSServers];
      if ([useDNSServers isEqualToArray:useDNSServers2])
      {
        probeURL = [(NEEvaluateConnectionRule *)self probeURL];
        probeURL2 = [equalCopy probeURL];
        v12 = [probeURL isEqual:probeURL2];
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

- (NEEvaluateConnectionRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = NEEvaluateConnectionRule;
  v5 = [(NEEvaluateConnectionRule *)&v19 init];
  if (v5)
  {
    v5->_action = [coderCopy decodeInt32ForKey:@"Action"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"MatchDomains"];
    matchDomains = v5->_matchDomains;
    v5->_matchDomains = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"UseDNSServers"];
    useDNSServers = v5->_useDNSServers;
    v5->_useDNSServers = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProbeURL"];
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