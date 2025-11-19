@interface NEVPN
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NEVPN)init;
- (NEVPN)initWithCoder:(id)a3;
- (id)copyLegacyDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromLegacyDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEVPN

- (id)initFromLegacyDictionary:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32.receiver = self;
  v32.super_class = NEVPN;
  v5 = [(NEVPN *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"__NEVPNProtocolType"];
    v7 = [v6 intValue];
    if (v7 > 2)
    {
      if (v7 == 3)
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

      if (v7 == 4)
      {
        v8 = off_1E7F04E40;
        goto LABEL_11;
      }
    }

    else
    {
      if (v7 == 1)
      {
        v8 = off_1E7F04ED0;
        goto LABEL_11;
      }

      if (v7 == 2)
      {
        v8 = off_1E7F04ED8;
LABEL_11:
        v10 = [objc_alloc(*v8) initFromLegacyDictionary:v4];
        protocol = v5->_protocol;
        v5->_protocol = v10;
      }
    }

    v12 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69827B8]];

    if (v12)
    {
      v5->_onDemandEnabled = [v12 BOOLValue];
    }

    v13 = [NEOnDemandRule createOnDemandRulesFromLegacyDictionary:v4];
    onDemandRules = v5->_onDemandRules;
    v5->_onDemandRules = v13;

    v15 = [v4 objectForKeyedSubscript:@"ExceptionApps"];
    if (isa_nsarray(v15) && [v15 count])
    {
      v26 = v12;
      v16 = [MEMORY[0x1E695DF70] array];
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
                [v16 addObject:v23];
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
  v3 = [(NEVPN *)self protocol];

  if (v3)
  {
    v4 = [(NEVPN *)self protocol];
    v5 = [v4 copyLegacyDictionary];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[NEVPN isOnDemandEnabled](self, "isOnDemandEnabled")}];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69827B8]];

  v7 = [(NEVPN *)self onDemandRules];

  if (v7)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [(NEVPN *)self onDemandRules];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (!v9)
    {
      v11 = v8;
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
          objc_enumerationMutation(v8);
        }

        v14 = [*(*(&v29 + 1) + 8 * i) copyLegacyDictionary];
        if (!v11)
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v11 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);

    if (v11)
    {
      [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6982838]];
LABEL_17:
    }
  }

  v15 = [(NEVPN *)self exceptionApps];

  if (v15)
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [(NEVPN *)self exceptionApps];
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v25 + 1) + 8 * j) matchSigningIdentifier];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v19);
    }

    [v5 setObject:v16 forKeyedSubscript:@"ExceptionApps"];
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NEVPN *)self onDemandRules];

  if (v5)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = self;
    v6 = [(NEVPN *)self onDemandRules];
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 &= [v12 checkValidityAndCollectErrors:v4];
          }

          else
          {
            [NEConfiguration addError:v4 toList:?];
            v10 = 0;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);
    }

    else
    {
      LOBYTE(v10) = 1;
    }

    self = v24;
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v13 = [(NEVPN *)self protocol];

  if (v13)
  {
    v13 = [(NEVPN *)self protocol];
    v14 = [v13 checkValidityAndCollectErrors:v4];

    LOBYTE(v13) = v14 & v10;
  }

  else
  {
    [NEConfiguration addError:v4 toList:?];
  }

  v15 = [(NEVPN *)self exceptionApps];
  if (v15)
  {
    v16 = v15;
    v17 = ne_session_disable_restrictions();

    if ((v17 & 1) == 0)
    {
      [NEConfiguration addError:v4 toList:?];
      LOBYTE(v13) = 0;
    }
  }

  if ([(NEVPN *)self tunnelType]== 2)
  {
    v18 = [(NEVPN *)self protocol];
    if (v18)
    {
      v19 = v18;
      v20 = [(NEVPN *)self protocol];
      v21 = [v20 type];

      if (v21 != 4)
      {
        [NEConfiguration addError:v4 toList:?];
        LOBYTE(v13) = 0;
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setEnabled:{-[NEVPN isEnabled](self, "isEnabled")}];
  [v4 setOnDemandEnabled:{-[NEVPN isOnDemandEnabled](self, "isOnDemandEnabled")}];
  [v4 setDisconnectOnDemandEnabled:{-[NEVPN isDisconnectOnDemandEnabled](self, "isDisconnectOnDemandEnabled")}];
  [v4 setOnDemandUserOverrideDisabled:{-[NEVPN isOnDemandUserOverrideDisabled](self, "isOnDemandUserOverrideDisabled")}];
  v5 = [(NEVPN *)self onDemandRules];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DEC8]);
    v7 = [(NEVPN *)self onDemandRules];
    v8 = [v6 initWithArray:v7 copyItems:1];
    [v4 setOnDemandRules:v8];
  }

  v9 = [(NEVPN *)self protocol];
  [v4 setProtocol:v9];

  v10 = [(NEVPN *)self exceptionApps];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x1E695DEC8]);
    v12 = [(NEVPN *)self exceptionApps];
    v13 = [v11 initWithArray:v12 copyItems:1];
    [v4 setExceptionApps:v13];
  }

  [v4 setTunnelType:{-[NEVPN tunnelType](self, "tunnelType")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeBool:-[NEVPN isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  [v7 encodeBool:-[NEVPN isOnDemandEnabled](self forKey:{"isOnDemandEnabled"), @"OnDemandEnabled"}];
  [v7 encodeBool:-[NEVPN isDisconnectOnDemandEnabled](self forKey:{"isDisconnectOnDemandEnabled"), @"DisconnectOnDemandEnabled"}];
  [v7 encodeBool:-[NEVPN isOnDemandUserOverrideDisabled](self forKey:{"isOnDemandUserOverrideDisabled"), @"OnDemandUserOverrideDisabled"}];
  v4 = [(NEVPN *)self onDemandRules];
  [v7 encodeObject:v4 forKey:@"OnDemandRules"];

  v5 = [(NEVPN *)self protocol];
  [v7 encodeObject:v5 forKey:@"Protocol"];

  v6 = [(NEVPN *)self exceptionApps];
  [v7 encodeObject:v6 forKey:@"ExceptionApps"];

  [v7 encodeInteger:-[NEVPN tunnelType](self forKey:{"tunnelType"), @"TunnelType"}];
}

- (NEVPN)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEVPN *)self init];
  if (v5)
  {
    v5->_enabled = [v4 decodeBoolForKey:@"Enabled"];
    v5->_onDemandEnabled = [v4 decodeBoolForKey:@"OnDemandEnabled"];
    v5->_disconnectOnDemandEnabled = [v4 decodeBoolForKey:@"DisconnectOnDemandEnabled"];
    v5->_onDemandUserOverrideDisabled = [v4 decodeBoolForKey:@"OnDemandUserOverrideDisabled"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"OnDemandRules"];
    onDemandRules = v5->_onDemandRules;
    v5->_onDemandRules = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Protocol"];
    protocol = v5->_protocol;
    v5->_protocol = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"ExceptionApps"];
    exceptionApps = v5->_exceptionApps;
    v5->_exceptionApps = v16;

    v18 = [v4 decodeIntegerForKey:@"TunnelType"];
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