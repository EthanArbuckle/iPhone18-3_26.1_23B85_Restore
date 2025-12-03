@interface AKPrivateEmailInformation
- (AKPrivateEmailInformation)initWithResponseBody:(id)body;
- (void)_processDictionary:(id)dictionary addedPrivateEmails:(id *)emails removedPrivateEmails:(id *)privateEmails;
@end

@implementation AKPrivateEmailInformation

- (AKPrivateEmailInformation)initWithResponseBody:(id)body
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, body);
  v3 = selfCopy;
  selfCopy = 0;
  v28.receiver = v3;
  v28.super_class = AKPrivateEmailInformation;
  v16 = [(AKPrivateEmailInformation *)&v28 init];
  selfCopy = v16;
  objc_storeStrong(&selfCopy, v16);
  if (v16)
  {
    selfCopy->_shouldSyncWithServer = 0;
    v27 = [location[0] objectForKeyedSubscript:AKPrivateEmailListVersionKey];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&selfCopy->_privateEmailListVersion, v27);
    }

    else
    {
      objc_storeStrong(&selfCopy->_privateEmailListVersion, 0);
    }

    v26 = [location[0] objectForKeyedSubscript:@"invalidListVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy->_invalidListVersionSupplied = [v26 BOOLValue];
    }

    else
    {
      selfCopy->_invalidListVersionSupplied = 0;
    }

    v25 = [location[0] objectForKeyedSubscript:@"hmeProtocolVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy->_protocolVersion = [v25 intValue];
    }

    else
    {
      selfCopy->_protocolVersion = AKPrivateEmailInitialProtocolVersion;
    }

    v24 = objc_alloc_init(NSMutableArray);
    v23 = objc_alloc_init(NSMutableArray);
    v22 = [location[0] objectForKeyedSubscript:@"hmeMappings"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      memset(__b, 0, sizeof(__b));
      v14 = _objc_retain(v22);
      v15 = [v14 countByEnumeratingWithState:__b objects:v32 count:16];
      if (v15)
      {
        v11 = *__b[2];
        v12 = 0;
        v13 = v15;
        while (1)
        {
          v10 = v12;
          if (*__b[2] != v11)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(__b[1] + 8 * v12);
          v19 = v24;
          v18 = v23;
          [(AKPrivateEmailInformation *)selfCopy _processDictionary:v21 addedPrivateEmails:&v19 removedPrivateEmails:&v18];
          objc_storeStrong(&v24, v19);
          objc_storeStrong(&v23, v18);
          ++v12;
          if (v10 + 1 >= v13)
          {
            v12 = 0;
            v13 = [v14 countByEnumeratingWithState:__b objects:v32 count:16];
            if (!v13)
            {
              break;
            }
          }
        }
      }

      _objc_release(v14);
    }

    else if (!selfCopy->_privateEmailListVersion || v22)
    {
      oslog = _AKLogHme();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        sub_10001B098(v31, v22, selfCopy->_privateEmailListVersion);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Got unexpected combination, mappings=%@, hmeListVersion=%@", v31, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
    }

    else
    {
      selfCopy->_shouldSyncWithServer = 1;
    }

    v4 = [v24 copy];
    addedPrivateEmails = selfCopy->_addedPrivateEmails;
    selfCopy->_addedPrivateEmails = v4;
    _objc_release(addedPrivateEmails);
    v6 = [v23 copy];
    removedPrivateEmails = selfCopy->_removedPrivateEmails;
    selfCopy->_removedPrivateEmails = v6;
    _objc_release(removedPrivateEmails);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v27, 0);
  }

  v9 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)_processDictionary:(id)dictionary addedPrivateEmails:(id *)emails removedPrivateEmails:(id *)privateEmails
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  emailsCopy = emails;
  privateEmailsCopy = privateEmails;
  v15 = [location[0] objectForKeyedSubscript:@"d"];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass() & 1;
  v14 = v13 != 0;
  v12 = [location[0] objectForKeyedSubscript:@"op"];
  if (v13)
  {
    if (v12)
    {
      objc_opt_class();
      if (!(objc_opt_isKindOfClass() & 1))
      {
        v14 = 0;
      }
    }

    else
    {
      objc_storeStrong(&v12, @"A");
    }
  }

  v10 = [location[0] objectForKeyedSubscript:@"hme"];
  if (v14 && ([v12 isEqualToString:@"A"] & 1) != 0)
  {
    objc_opt_class();
    if (!(objc_opt_isKindOfClass() & 1))
    {
      v14 = 0;
    }
  }

  else if ([v12 isEqualToString:@"D"])
  {
    objc_storeStrong(&v10, &stru_100330538);
  }

  if (v14)
  {
    v5 = [AKPrivateEmail alloc];
    v8 = [v5 initWithAddress:v10 forKey:v15];
    if ([v12 isEqualToString:@"D"])
    {
      [*privateEmailsCopy addObject:v8];
    }

    else if ([v12 isEqualToString:@"A"])
    {
      [*emailsCopy addObject:v8];
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

@end