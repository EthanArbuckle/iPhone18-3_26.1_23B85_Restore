@interface NEVPN
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEVPN)init;
- (NEVPN)initWithCoder:(id)coder;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromLegacyDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEVPN

- (id)initFromLegacyDictionary:(id)dictionary
{
  v34 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = NEVPN;
  v5 = [(NEVPN *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"__NEVPNProtocolType"];
    intValue = [v6 intValue];
    if (intValue > 2)
    {
      if (intValue == 3)
      {
        v15 = ne_log_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "PPTP is not supported", buf, 2u);
        }

        v9 = 0;
        v12 = v6;
        goto LABEL_29;
      }

      if (intValue == 4)
      {
        v8 = off_1E7F04E40;
        goto LABEL_11;
      }
    }

    else
    {
      if (intValue == 1)
      {
        v8 = off_1E7F04ED0;
        goto LABEL_11;
      }

      if (intValue == 2)
      {
        v8 = off_1E7F04ED8;
LABEL_11:
        v10 = [objc_alloc(*v8) initFromLegacyDictionary:dictionaryCopy];
        protocol = v5->_protocol;
        v5->_protocol = v10;
      }
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E69827B8]];

    if (v12)
    {
      v5->_onDemandEnabled = [v12 BOOLValue];
    }

    v13 = [NEOnDemandRule createOnDemandRulesFromLegacyDictionary:dictionaryCopy];
    onDemandRules = v5->_onDemandRules;
    v5->_onDemandRules = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"ExceptionApps"];
    if (isa_nsarray(v15) && [v15 count])
    {
      v26 = v12;
      array = [MEMORY[0x1E695DF70] array];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v28;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v27 + 1) + 8 * i);
            if (isa_nsstring(v22))
            {
              v23 = [[NEAppRule alloc] initWithSigningIdentifier:v22];
              if (v23)
              {
                [array addObject:v23];
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v19);
      }

      v12 = v26;
    }

    v9 = v5;
LABEL_29:

    goto LABEL_30;
  }

  v9 = 0;
LABEL_30:

  v24 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)copyLegacyDictionary
{
  v35 = *MEMORY[0x1E69E9840];
  protocol = [(NEVPN *)self protocol];

  if (protocol)
  {
    protocol2 = [(NEVPN *)self protocol];
    copyLegacyDictionary = [protocol2 copyLegacyDictionary];
  }

  else
  {
    copyLegacyDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPN isOnDemandEnabled](self, "isOnDemandEnabled")}];
  [copyLegacyDictionary setObject:v6 forKeyedSubscript:*MEMORY[0x1E69827B8]];

  onDemandRules = [(NEVPN *)self onDemandRules];

  if (onDemandRules)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    onDemandRules2 = [(NEVPN *)self onDemandRules];
    v9 = [onDemandRules2 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (!v9)
    {
      v11 = onDemandRules2;
      goto LABEL_17;
    }

    v10 = v9;
    v11 = 0;
    v12 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(onDemandRules2);
        }

        copyLegacyDictionary2 = [*(*(&v29 + 1) + 8 * i) copyLegacyDictionary];
        if (!v11)
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v11 addObject:copyLegacyDictionary2];
      }

      v10 = [onDemandRules2 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);

    if (v11)
    {
      [copyLegacyDictionary setObject:v11 forKeyedSubscript:*MEMORY[0x1E6982838]];
LABEL_17:
    }
  }

  exceptionApps = [(NEVPN *)self exceptionApps];

  if (exceptionApps)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    exceptionApps2 = [(NEVPN *)self exceptionApps];
    v18 = [exceptionApps2 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(exceptionApps2);
          }

          matchSigningIdentifier = [*(*(&v25 + 1) + 8 * j) matchSigningIdentifier];
          [v16 addObject:matchSigningIdentifier];
        }

        v19 = [exceptionApps2 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    [copyLegacyDictionary setObject:v16 forKeyedSubscript:@"ExceptionApps"];
  }

  v23 = *MEMORY[0x1E69E9840];
  return copyLegacyDictionary;
}

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v30 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  onDemandRules = [(NEVPN *)self onDemandRules];

  if (onDemandRules)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    selfCopy = self;
    onDemandRules2 = [(NEVPN *)self onDemandRules];
    v7 = [onDemandRules2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      v10 = 1;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(onDemandRules2);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 &= [v12 checkValidityAndCollectErrors:errorsCopy];
          }

          else
          {
            [NEConfiguration addError:errorsCopy toList:?];
            v10 = 0;
          }
        }

        v8 = [onDemandRules2 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);
    }

    else
    {
      LOBYTE(v10) = 1;
    }

    self = selfCopy;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  protocol = [(NEVPN *)self protocol];

  if (protocol)
  {
    protocol = [(NEVPN *)self protocol];
    v14 = [protocol checkValidityAndCollectErrors:errorsCopy];

    LOBYTE(protocol) = v14 & v10;
  }

  else
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  exceptionApps = [(NEVPN *)self exceptionApps];
  if (exceptionApps)
  {
    v16 = exceptionApps;
    v17 = ne_session_disable_restrictions();

    if ((v17 & 1) == 0)
    {
      [NEConfiguration addError:errorsCopy toList:?];
      LOBYTE(protocol) = 0;
    }
  }

  if ([(NEVPN *)self tunnelType]== 2)
  {
    protocol2 = [(NEVPN *)self protocol];
    if (protocol2)
    {
      v19 = protocol2;
      protocol3 = [(NEVPN *)self protocol];
      type = [protocol3 type];

      if (type != 4)
      {
        [NEConfiguration addError:errorsCopy toList:?];
        LOBYTE(protocol) = 0;
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return protocol;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setEnabled:{-[NEVPN isEnabled](self, "isEnabled")}];
  [v4 setOnDemandEnabled:{-[NEVPN isOnDemandEnabled](self, "isOnDemandEnabled")}];
  [v4 setDisconnectOnDemandEnabled:{-[NEVPN isDisconnectOnDemandEnabled](self, "isDisconnectOnDemandEnabled")}];
  [v4 setOnDemandUserOverrideDisabled:{-[NEVPN isOnDemandUserOverrideDisabled](self, "isOnDemandUserOverrideDisabled")}];
  onDemandRules = [(NEVPN *)self onDemandRules];

  if (onDemandRules)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    onDemandRules2 = [(NEVPN *)self onDemandRules];
    v8 = [v6 initWithArray:onDemandRules2 copyItems:1];
    [v4 setOnDemandRules:v8];
  }

  protocol = [(NEVPN *)self protocol];
  [v4 setProtocol:protocol];

  exceptionApps = [(NEVPN *)self exceptionApps];

  if (exceptionApps)
  {
    v11 = objc_alloc(MEMORY[0x1E695DEC8]);
    exceptionApps2 = [(NEVPN *)self exceptionApps];
    v13 = [v11 initWithArray:exceptionApps2 copyItems:1];
    [v4 setExceptionApps:v13];
  }

  [v4 setTunnelType:{-[NEVPN tunnelType](self, "tunnelType")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NEVPN isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  [coderCopy encodeBool:-[NEVPN isOnDemandEnabled](self forKey:{"isOnDemandEnabled"), @"OnDemandEnabled"}];
  [coderCopy encodeBool:-[NEVPN isDisconnectOnDemandEnabled](self forKey:{"isDisconnectOnDemandEnabled"), @"DisconnectOnDemandEnabled"}];
  [coderCopy encodeBool:-[NEVPN isOnDemandUserOverrideDisabled](self forKey:{"isOnDemandUserOverrideDisabled"), @"OnDemandUserOverrideDisabled"}];
  onDemandRules = [(NEVPN *)self onDemandRules];
  [coderCopy encodeObject:onDemandRules forKey:@"OnDemandRules"];

  protocol = [(NEVPN *)self protocol];
  [coderCopy encodeObject:protocol forKey:@"Protocol"];

  exceptionApps = [(NEVPN *)self exceptionApps];
  [coderCopy encodeObject:exceptionApps forKey:@"ExceptionApps"];

  [coderCopy encodeInteger:-[NEVPN tunnelType](self forKey:{"tunnelType"), @"TunnelType"}];
}

- (NEVPN)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NEVPN *)self init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"Enabled"];
    v5->_onDemandEnabled = [coderCopy decodeBoolForKey:@"OnDemandEnabled"];
    v5->_disconnectOnDemandEnabled = [coderCopy decodeBoolForKey:@"DisconnectOnDemandEnabled"];
    v5->_onDemandUserOverrideDisabled = [coderCopy decodeBoolForKey:@"OnDemandUserOverrideDisabled"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"OnDemandRules"];
    onDemandRules = v5->_onDemandRules;
    v5->_onDemandRules = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Protocol"];
    protocol = v5->_protocol;
    v5->_protocol = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"ExceptionApps"];
    exceptionApps = v5->_exceptionApps;
    v5->_exceptionApps = v16;

    v18 = [coderCopy decodeIntegerForKey:@"TunnelType"];
    v5->_tunnelType = v18;
    if (!v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (-[NEVPN protocol](v5, "protocol"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 type], v19, v20 == 4))
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      v5->_tunnelType = v21;
    }
  }

  return v5;
}

- (NEVPN)init
{
  v3.receiver = self;
  v3.super_class = NEVPN;
  result = [(NEVPN *)&v3 init];
  if (result)
  {
    result->_tunnelType = 1;
  }

  return result;
}

@end