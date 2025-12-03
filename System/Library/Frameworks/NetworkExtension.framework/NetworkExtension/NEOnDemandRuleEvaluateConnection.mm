@interface NEOnDemandRuleEvaluateConnection
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (BOOL)isEqual:(id)equal;
- (NEOnDemandRuleEvaluateConnection)init;
- (NEOnDemandRuleEvaluateConnection)initWithCoder:(id)coder;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEOnDemandRuleEvaluateConnection

- (id)initFromLegacyDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = NEOnDemandRuleEvaluateConnection;
  v5 = [(NEOnDemandRule *)&v24 initFromLegacyDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69827E8]];
    if (isa_nsarray(v6))
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v8)
      {
        v9 = v8;
        v19 = v6;
        v10 = 0;
        v11 = *v21;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            if (isa_nsdictionary(v13))
            {
              v14 = [[NEEvaluateConnectionRule alloc] initFromLegacyDictionary:v13];
              if (!v10)
              {
                v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [v10 addObject:v14];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v9);

        v6 = v19;
        if (!v10)
        {
          goto LABEL_17;
        }

        v15 = v5[7];
        v5[7] = v10;
        v7 = v10;
      }
    }

LABEL_17:
    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyLegacyDictionary
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = NEOnDemandRuleEvaluateConnection;
  copyLegacyDictionary = [(NEOnDemandRule *)&v18 copyLegacyDictionary];
  connectionRules = [(NEOnDemandRuleEvaluateConnection *)self connectionRules];

  if (connectionRules)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    connectionRules2 = [(NEOnDemandRuleEvaluateConnection *)self connectionRules];
    v7 = [connectionRules2 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(connectionRules2);
          }

          copyLegacyDictionary2 = [*(*(&v14 + 1) + 8 * v10) copyLegacyDictionary];
          [v5 addObject:copyLegacyDictionary2];

          ++v10;
        }

        while (v8 != v10);
        v8 = [connectionRules2 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }

    [copyLegacyDictionary setObject:v5 forKeyedSubscript:*MEMORY[0x1E69827E8]];
  }

  v12 = *MEMORY[0x1E69E9840];
  return copyLegacyDictionary;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v21 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  v19.receiver = self;
  v19.super_class = NEOnDemandRuleEvaluateConnection;
  v5 = [(NEOnDemandRule *)&v19 checkValidityAndCollectErrors:errorsCopy];
  connectionRules = [(NEOnDemandRuleEvaluateConnection *)self connectionRules];

  if (connectionRules)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    connectionRules2 = [(NEOnDemandRuleEvaluateConnection *)self connectionRules];
    v8 = [connectionRules2 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(connectionRules2);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v5 = [v12 checkValidityAndCollectErrors:errorsCopy];
          }

          else
          {
            [NEConfiguration addError:errorsCopy toList:?];
            v5 = 0;
          }
        }

        v9 = [connectionRules2 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [NEConfiguration addError:errorsCopy toList:?];
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = NEOnDemandRuleEvaluateConnection;
  v4 = [(NEOnDemandRule *)&v10 copyWithZone:zone];
  connectionRules = [(NEOnDemandRuleEvaluateConnection *)self connectionRules];

  if (connectionRules)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    connectionRules2 = [(NEOnDemandRuleEvaluateConnection *)self connectionRules];
    v8 = [v6 initWithArray:connectionRules2 copyItems:1];
    [v4 setConnectionRules:v8];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = NEOnDemandRuleEvaluateConnection;
  coderCopy = coder;
  [(NEOnDemandRule *)&v6 encodeWithCoder:coderCopy];
  v5 = [(NEOnDemandRuleEvaluateConnection *)self connectionRules:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"Rules"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = NEOnDemandRuleEvaluateConnection;
  if ([(NEOnDemandRule *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      connectionRules = [(NEOnDemandRuleEvaluateConnection *)self connectionRules];
      connectionRules2 = [v5 connectionRules];
      v8 = [connectionRules isEqualToArray:connectionRules2];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NEOnDemandRuleEvaluateConnection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NEOnDemandRuleEvaluateConnection;
  v5 = [(NEOnDemandRule *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Rules"];
    connectionRules = v5->_connectionRules;
    v5->_connectionRules = v9;
  }

  return v5;
}

- (NEOnDemandRuleEvaluateConnection)init
{
  v3.receiver = self;
  v3.super_class = NEOnDemandRuleEvaluateConnection;
  return [(NEOnDemandRule *)&v3 initWithAction:3];
}

@end