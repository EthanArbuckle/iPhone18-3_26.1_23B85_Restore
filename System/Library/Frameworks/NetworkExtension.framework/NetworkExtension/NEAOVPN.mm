@interface NEAOVPN
- (BOOL)checkValidityAndCollectErrors:(id)errors;
- (NEAOVPN)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEAOVPN

- (BOOL)checkValidityAndCollectErrors:(id)errors
{
  v67 = *MEMORY[0x1E69E9840];
  errorsCopy = errors;
  interfaceProtocolMapping = [(NEAOVPN *)self interfaceProtocolMapping];

  if (interfaceProtocolMapping)
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
      LODWORD(interfaceProtocolMapping) = 1;
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
            [NEConfiguration addError:errorsCopy toList:?];
            LODWORD(interfaceProtocolMapping) = 0;
          }

          interfaceProtocolMapping2 = [(NEAOVPN *)self interfaceProtocolMapping];
          v12 = [interfaceProtocolMapping2 objectForKeyedSubscript:v10];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LODWORD(interfaceProtocolMapping) = [v12 checkValidityAndCollectErrors:errorsCopy] & interfaceProtocolMapping;
          }

          else
          {
            [NEConfiguration addError:errorsCopy toList:?];
            LODWORD(interfaceProtocolMapping) = 0;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
      }

      while (v7);
    }

    else
    {
      LODWORD(interfaceProtocolMapping) = 1;
    }
  }

  else
  {
    [NEConfiguration addError:errorsCopy toList:?];
  }

  serviceExceptions = [(NEAOVPN *)self serviceExceptions];

  if (serviceExceptions)
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
            [NEConfiguration addError:errorsCopy toList:?];
            LODWORD(interfaceProtocolMapping) = 0;
          }

          serviceExceptions2 = [(NEAOVPN *)self serviceExceptions];
          v20 = [serviceExceptions2 objectForKeyedSubscript:v18];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LODWORD(interfaceProtocolMapping) = [v20 checkValidityAndCollectErrors:errorsCopy] & interfaceProtocolMapping;
          }

          else
          {
            [NEConfiguration addError:errorsCopy toList:?];
            LODWORD(interfaceProtocolMapping) = 0;
          }
        }

        v15 = [obja countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v15);
    }
  }

  applicationExceptions = [(NEAOVPN *)self applicationExceptions];

  if (applicationExceptions)
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
            [NEConfiguration addError:errorsCopy toList:?];
            LODWORD(interfaceProtocolMapping) = 0;
          }

          applicationExceptions2 = [(NEAOVPN *)self applicationExceptions];
          v28 = [applicationExceptions2 objectForKeyedSubscript:v26];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LODWORD(interfaceProtocolMapping) = [v28 checkValidityAndCollectErrors:errorsCopy] & interfaceProtocolMapping;
          }

          else
          {
            [NEConfiguration addError:errorsCopy toList:?];
            LODWORD(interfaceProtocolMapping) = 0;
          }

          limitToProtocols = [v28 limitToProtocols];
          if (limitToProtocols)
          {
            v30 = limitToProtocols;
            limitToProtocols2 = [v28 limitToProtocols];
            if ([limitToProtocols2 count])
            {
              isLimitedToUDP = [v28 isLimitedToUDP];

              if ((isLimitedToUDP & 1) == 0)
              {
                [NEConfiguration addError:errorsCopy toList:?];
                LODWORD(interfaceProtocolMapping) = 0;
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

  allowedCaptiveNetworkPlugins = [(NEAOVPN *)self allowedCaptiveNetworkPlugins];

  if (allowedCaptiveNetworkPlugins)
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
            [NEConfiguration addError:errorsCopy toList:?];
            LODWORD(interfaceProtocolMapping) = 0;
          }

          allowedCaptiveNetworkPlugins2 = [(NEAOVPN *)self allowedCaptiveNetworkPlugins];
          v40 = [allowedCaptiveNetworkPlugins2 objectForKeyedSubscript:v38];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            LODWORD(interfaceProtocolMapping) = [v40 checkValidityAndCollectErrors:errorsCopy] & interfaceProtocolMapping;
          }

          else
          {
            [NEConfiguration addError:errorsCopy toList:?];
            LODWORD(interfaceProtocolMapping) = 0;
          }
        }

        v35 = [objc countByEnumeratingWithState:&v47 objects:v63 count:16];
      }

      while (v35);
    }
  }

  v41 = *MEMORY[0x1E69E9840];
  return interfaceProtocolMapping;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEAOVPN allocWithZone:?]];
  [(NEAOVPN *)v4 setEnabled:[(NEAOVPN *)self isEnabled]];
  [(NEAOVPN *)v4 setToggleEnabled:[(NEAOVPN *)self isToggleEnabled]];
  [(NEAOVPN *)v4 setAllowCaptiveWebSheet:[(NEAOVPN *)self isAllowCaptiveWebSheet]];
  [(NEAOVPN *)v4 setAllowAllCaptiveNetworkPlugins:[(NEAOVPN *)self isAllowAllCaptiveNetworkPlugins]];
  interfaceProtocolMapping = [(NEAOVPN *)self interfaceProtocolMapping];
  [(NEAOVPN *)v4 setInterfaceProtocolMapping:interfaceProtocolMapping];

  activeInterfaceProtocolKey = [(NEAOVPN *)self activeInterfaceProtocolKey];
  [(NEAOVPN *)v4 setActiveInterfaceProtocolKey:activeInterfaceProtocolKey];

  serviceExceptions = [(NEAOVPN *)self serviceExceptions];
  [(NEAOVPN *)v4 setServiceExceptions:serviceExceptions];

  applicationExceptions = [(NEAOVPN *)self applicationExceptions];
  [(NEAOVPN *)v4 setApplicationExceptions:applicationExceptions];

  allowedCaptiveNetworkPlugins = [(NEAOVPN *)self allowedCaptiveNetworkPlugins];
  [(NEAOVPN *)v4 setAllowedCaptiveNetworkPlugins:allowedCaptiveNetworkPlugins];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[NEAOVPN isEnabled](self forKey:{"isEnabled"), @"Enabled"}];
  [coderCopy encodeBool:-[NEAOVPN isToggleEnabled](self forKey:{"isToggleEnabled"), @"ToggleEnabled"}];
  [coderCopy encodeBool:-[NEAOVPN isAllowCaptiveWebSheet](self forKey:{"isAllowCaptiveWebSheet"), @"AllowCaptiveWebSheet"}];
  [coderCopy encodeBool:-[NEAOVPN isAllowAllCaptiveNetworkPlugins](self forKey:{"isAllowAllCaptiveNetworkPlugins"), @"AllowAllCaptiveNetworkPlugins"}];
  interfaceProtocolMapping = [(NEAOVPN *)self interfaceProtocolMapping];
  [coderCopy encodeObject:interfaceProtocolMapping forKey:@"InterfaceProtocolMapping"];

  activeInterfaceProtocolKey = [(NEAOVPN *)self activeInterfaceProtocolKey];
  [coderCopy encodeObject:activeInterfaceProtocolKey forKey:@"ActiveInterfaceProtocolKey"];

  serviceExceptions = [(NEAOVPN *)self serviceExceptions];
  [coderCopy encodeObject:serviceExceptions forKey:@"ServiceExceptions"];

  applicationExceptions = [(NEAOVPN *)self applicationExceptions];
  [coderCopy encodeObject:applicationExceptions forKey:@"ApplicationExceptions"];

  allowedCaptiveNetworkPlugins = [(NEAOVPN *)self allowedCaptiveNetworkPlugins];
  [coderCopy encodeObject:allowedCaptiveNetworkPlugins forKey:@"AllowedCaptiveNetworkPlugins"];
}

- (NEAOVPN)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = NEAOVPN;
  v5 = [(NEAOVPN *)&v33 init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"Enabled"];
    v5->_toggleEnabled = [coderCopy decodeBoolForKey:@"ToggleEnabled"];
    v5->_allowCaptiveWebSheet = [coderCopy decodeBoolForKey:@"AllowCaptiveWebSheet"];
    v5->_allowAllCaptiveNetworkPlugins = [coderCopy decodeBoolForKey:@"AllowAllCaptiveNetworkPlugins"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"InterfaceProtocolMapping"];
    interfaceProtocolMapping = v5->_interfaceProtocolMapping;
    v5->_interfaceProtocolMapping = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ActiveInterfaceProtocolKey"];
    activeInterfaceProtocolKey = v5->_activeInterfaceProtocolKey;
    v5->_activeInterfaceProtocolKey = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"ServiceExceptions"];
    serviceExceptions = v5->_serviceExceptions;
    v5->_serviceExceptions = v18;

    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"ApplicationExceptions"];
    applicationExceptions = v5->_applicationExceptions;
    v5->_applicationExceptions = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = [v26 setWithObjects:{v27, v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"AllowedCaptiveNetworkPlugins"];
    allowedCaptiveNetworkPlugins = v5->_allowedCaptiveNetworkPlugins;
    v5->_allowedCaptiveNetworkPlugins = v30;
  }

  return v5;
}

@end