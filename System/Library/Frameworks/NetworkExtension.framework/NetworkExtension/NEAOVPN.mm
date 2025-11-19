@interface NEAOVPN
- (BOOL)checkValidityAndCollectErrors:(id)a3;
- (NEAOVPN)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEAOVPN

- (BOOL)checkValidityAndCollectErrors:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NEAOVPN *)self interfaceProtocolMapping];

  if (v5)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = [(NEAOVPN *)self interfaceProtocolMapping];
    v6 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v60;
      LODWORD(v5) = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v60 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v59 + 1) + 8 * i);
          if ((isa_nsstring(v10) & 1) == 0)
          {
            [NEConfiguration addError:v4 toList:?];
            LODWORD(v5) = 0;
          }

          v11 = [(NEAOVPN *)self interfaceProtocolMapping];
          v12 = [v11 objectForKeyedSubscript:v10];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LODWORD(v5) = [v12 checkValidityAndCollectErrors:v4] & v5;
          }

          else
          {
            [NEConfiguration addError:v4 toList:?];
            LODWORD(v5) = 0;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
      }

      while (v7);
    }

    else
    {
      LODWORD(v5) = 1;
    }
  }

  else
  {
    [NEConfiguration addError:v4 toList:?];
  }

  v13 = [(NEAOVPN *)self serviceExceptions];

  if (v13)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obja = [(NEAOVPN *)self serviceExceptions];
    v14 = [obja countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v56;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v56 != v16)
          {
            objc_enumerationMutation(obja);
          }

          v18 = *(*(&v55 + 1) + 8 * j);
          if ((isa_nsstring(v18) & 1) == 0)
          {
            [NEConfiguration addError:v4 toList:?];
            LODWORD(v5) = 0;
          }

          v19 = [(NEAOVPN *)self serviceExceptions];
          v20 = [v19 objectForKeyedSubscript:v18];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LODWORD(v5) = [v20 checkValidityAndCollectErrors:v4] & v5;
          }

          else
          {
            [NEConfiguration addError:v4 toList:?];
            LODWORD(v5) = 0;
          }
        }

        v15 = [obja countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v15);
    }
  }

  v21 = [(NEAOVPN *)self applicationExceptions];

  if (v21)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    objb = [(NEAOVPN *)self applicationExceptions];
    v22 = [objb countByEnumeratingWithState:&v51 objects:v64 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v52;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v52 != v24)
          {
            objc_enumerationMutation(objb);
          }

          v26 = *(*(&v51 + 1) + 8 * k);
          if ((isa_nsstring(v26) & 1) == 0)
          {
            [NEConfiguration addError:v4 toList:?];
            LODWORD(v5) = 0;
          }

          v27 = [(NEAOVPN *)self applicationExceptions];
          v28 = [v27 objectForKeyedSubscript:v26];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LODWORD(v5) = [v28 checkValidityAndCollectErrors:v4] & v5;
          }

          else
          {
            [NEConfiguration addError:v4 toList:?];
            LODWORD(v5) = 0;
          }

          v29 = [v28 limitToProtocols];
          if (v29)
          {
            v30 = v29;
            v31 = [v28 limitToProtocols];
            if ([v31 count])
            {
              v32 = [v28 isLimitedToUDP];

              if ((v32 & 1) == 0)
              {
                [NEConfiguration addError:v4 toList:?];
                LODWORD(v5) = 0;
              }
            }

            else
            {
            }
          }
        }

        v23 = [objb countByEnumeratingWithState:&v51 objects:v64 count:16];
      }

      while (v23);
    }
  }

  v33 = [(NEAOVPN *)self allowedCaptiveNetworkPlugins];

  if (v33)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    objc = [(NEAOVPN *)self allowedCaptiveNetworkPlugins];
    v34 = [objc countByEnumeratingWithState:&v47 objects:v63 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v48;
      do
      {
        for (m = 0; m != v35; ++m)
        {
          if (*v48 != v36)
          {
            objc_enumerationMutation(objc);
          }

          v38 = *(*(&v47 + 1) + 8 * m);
          if ((isa_nsstring(v38) & 1) == 0)
          {
            [NEConfiguration addError:v4 toList:?];
            LODWORD(v5) = 0;
          }

          v39 = [(NEAOVPN *)self allowedCaptiveNetworkPlugins];
          v40 = [v39 objectForKeyedSubscript:v38];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LODWORD(v5) = [v40 checkValidityAndCollectErrors:v4] & v5;
          }

          else
          {
            [NEConfiguration addError:v4 toList:?];
            LODWORD(v5) = 0;
          }
        }

        v35 = [objc countByEnumeratingWithState:&v47 objects:v63 count:16];
      }

      while (v35);
    }
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NEAOVPN allocWithZone:?]];
  [(NEAOVPN *)v4 setEnabled:[(NEAOVPN *)self isEnabled]];
  [(NEAOVPN *)v4 setToggleEnabled:[(NEAOVPN *)self isToggleEnabled]];
  [(NEAOVPN *)v4 setAllowCaptiveWebSheet:[(NEAOVPN *)self isAllowCaptiveWebSheet]];
  [(NEAOVPN *)v4 setAllowAllCaptiveNetworkPlugins:[(NEAOVPN *)self isAllowAllCaptiveNetworkPlugins]];
  v5 = [(NEAOVPN *)self interfaceProtocolMapping];
  [(NEAOVPN *)v4 setInterfaceProtocolMapping:v5];

  v6 = [(NEAOVPN *)self activeInterfaceProtocolKey];
  [(NEAOVPN *)v4 setActiveInterfaceProtocolKey:v6];

  v7 = [(NEAOVPN *)self serviceExceptions];
  [(NEAOVPN *)v4 setServiceExceptions:v7];

  v8 = [(NEAOVPN *)self applicationExceptions];
  [(NEAOVPN *)v4 setApplicationExceptions:v8];

  v9 = [(NEAOVPN *)self allowedCaptiveNetworkPlugins];
  [(NEAOVPN *)v4 setAllowedCaptiveNetworkPlugins:v9];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[NEAOVPN isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  [v4 encodeBool:-[NEAOVPN isToggleEnabled](self forKey:{"isToggleEnabled"), @"ToggleEnabled"}];
  [v4 encodeBool:-[NEAOVPN isAllowCaptiveWebSheet](self forKey:{"isAllowCaptiveWebSheet"), @"AllowCaptiveWebSheet"}];
  [v4 encodeBool:-[NEAOVPN isAllowAllCaptiveNetworkPlugins](self forKey:{"isAllowAllCaptiveNetworkPlugins"), @"AllowAllCaptiveNetworkPlugins"}];
  v5 = [(NEAOVPN *)self interfaceProtocolMapping];
  [v4 encodeObject:v5 forKey:@"InterfaceProtocolMapping"];

  v6 = [(NEAOVPN *)self activeInterfaceProtocolKey];
  [v4 encodeObject:v6 forKey:@"ActiveInterfaceProtocolKey"];

  v7 = [(NEAOVPN *)self serviceExceptions];
  [v4 encodeObject:v7 forKey:@"ServiceExceptions"];

  v8 = [(NEAOVPN *)self applicationExceptions];
  [v4 encodeObject:v8 forKey:@"ApplicationExceptions"];

  v9 = [(NEAOVPN *)self allowedCaptiveNetworkPlugins];
  [v4 encodeObject:v9 forKey:@"AllowedCaptiveNetworkPlugins"];
}

- (NEAOVPN)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = NEAOVPN;
  v5 = [(NEAOVPN *)&v33 init];
  if (v5)
  {
    v5->_enabled = [v4 decodeBoolForKey:@"Enabled"];
    v5->_toggleEnabled = [v4 decodeBoolForKey:@"ToggleEnabled"];
    v5->_allowCaptiveWebSheet = [v4 decodeBoolForKey:@"AllowCaptiveWebSheet"];
    v5->_allowAllCaptiveNetworkPlugins = [v4 decodeBoolForKey:@"AllowAllCaptiveNetworkPlugins"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"InterfaceProtocolMapping"];
    interfaceProtocolMapping = v5->_interfaceProtocolMapping;
    v5->_interfaceProtocolMapping = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ActiveInterfaceProtocolKey"];
    activeInterfaceProtocolKey = v5->_activeInterfaceProtocolKey;
    v5->_activeInterfaceProtocolKey = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"ServiceExceptions"];
    serviceExceptions = v5->_serviceExceptions;
    v5->_serviceExceptions = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"ApplicationExceptions"];
    applicationExceptions = v5->_applicationExceptions;
    v5->_applicationExceptions = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"AllowedCaptiveNetworkPlugins"];
    allowedCaptiveNetworkPlugins = v5->_allowedCaptiveNetworkPlugins;
    v5->_allowedCaptiveNetworkPlugins = v30;
  }

  return v5;
}

@end