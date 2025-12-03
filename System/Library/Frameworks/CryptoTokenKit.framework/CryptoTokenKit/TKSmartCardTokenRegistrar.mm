@interface TKSmartCardTokenRegistrar
- (BOOL)_canTokenBeRegistered:(id)registered error:(id *)error;
- (BOOL)registerSmartCardWithTokenID:(id)d promptMessage:(id)message callerBundleID:(id)iD error:(id *)error;
- (BOOL)unregisterSmartCardWithTokenID:(id)d callerBundleID:(id)iD error:(id *)error;
- (TKSmartCardTokenRegistrar)initWithHostTokenRegistry:(id)registry;
- (id)registeredSmartCardTokens;
@end

@implementation TKSmartCardTokenRegistrar

- (TKSmartCardTokenRegistrar)initWithHostTokenRegistry:(id)registry
{
  registryCopy = registry;
  v9.receiver = self;
  v9.super_class = TKSmartCardTokenRegistrar;
  v6 = [(TKSmartCardTokenRegistrar *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokenRegistry, registry);
  }

  return v7;
}

- (id)registeredSmartCardTokens
{
  v3 = +[NSMutableArray array];
  registeredTokens = [(TKHostTokenRegistry *)self->_tokenRegistry registeredTokens];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [registeredTokens countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(registeredTokens);
        }

        tokenID = [*(*(&v11 + 1) + 8 * i) tokenID];
        [v3 addObject:tokenID];
      }

      v6 = [registeredTokens countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)registerSmartCardWithTokenID:(id)d promptMessage:(id)message callerBundleID:(id)iD error:(id *)error
{
  dCopy = d;
  messageCopy = message;
  iDCopy = iD;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = sub_10001C2A4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v31 = dCopy;
    v32 = 2112;
    v33 = messageCopy;
    v34 = 2112;
    v35 = iDCopy;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Registering card with tokenID: %@ prompt: %@, bundleID: %@", buf, 0x20u);
  }

  v14 = [(TKHostTokenRegistry *)selfCopy->_tokenRegistry tokenWithTokenID:dCopy];
  if (v14)
  {
    v29 = 0;
    v15 = [(TKSmartCardTokenRegistrar *)selfCopy _canTokenBeRegistered:v14 error:&v29];
    v16 = v29;
    v17 = v16;
    if (v15)
    {
      v18 = [(TKHostTokenRegistry *)selfCopy->_tokenRegistry beginTransaction:@"registerSmartCardWithTokenID"];
      v19 = [[TKHostTokenRegistration alloc] initWithPromptMessage:messageCopy creatorBundleID:iDCopy];
      tokenRegistration = [v14 tokenRegistration];
      v21 = tokenRegistration == 0;

      v22 = sub_10001C2A4();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
      if (v21)
      {
        if (v23)
        {
          sub_100021950();
        }
      }

      else if (v23)
      {
        sub_1000218E8();
      }

      [v14 setTokenRegistration:v19];
      markModified = [v18 markModified];
      [v18 commit];
    }

    else if (error && v16)
    {
      v25 = v16;
      *error = v17;
    }

    goto LABEL_17;
  }

  if (error)
  {
    stringRepresentation = [dCopy stringRepresentation];
    v17 = [NSString stringWithFormat:@"Token with ID: %@ wasn’t found in the system", stringRepresentation];

    [NSError errorWithCode:-6 debugDescription:v17];
    *error = v15 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v15 = 0;
LABEL_18:

  objc_sync_exit(selfCopy);
  return v15;
}

- (BOOL)unregisterSmartCardWithTokenID:(id)d callerBundleID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = sub_10001C2A4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000219CC();
  }

  v12 = [(TKHostTokenRegistry *)selfCopy->_tokenRegistry tokenWithTokenID:dCopy];
  v13 = v12;
  if (v12)
  {
    tokenRegistration = [v12 tokenRegistration];

    if (tokenRegistration)
    {
      v15 = [(TKHostTokenRegistry *)selfCopy->_tokenRegistry beginTransaction:@"unregisterSmartCardWithTokenID"];
      [v13 setTokenRegistration:0];
      markModified = [v15 markModified];
      [v15 commit];
      [(TKHostTokenRegistry *)selfCopy->_tokenRegistry removeTokenWithTokenID:dCopy];
      v17 = sub_10001C2A4();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100021A34();
      }
    }

    else
    {
      v15 = sub_10001C2A4();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_100021A9C(dCopy, v15);
      }
    }

    goto LABEL_12;
  }

  if (error)
  {
    stringRepresentation = [dCopy stringRepresentation];
    v15 = [NSString stringWithFormat:@"Token with ID: %@ wasn’t found", stringRepresentation];

    *error = [NSError errorWithCode:-6 debugDescription:v15];
LABEL_12:
  }

  objc_sync_exit(selfCopy);
  return v13 != 0;
}

- (BOOL)_canTokenBeRegistered:(id)registered error:(id *)error
{
  registeredCopy = registered;
  if ([registeredCopy persistent])
  {
    if (error)
    {
      tokenID = [registeredCopy tokenID];
      stringRepresentation = [tokenID stringRepresentation];
      v8 = [NSString stringWithFormat:@"Persistent tokens can't be registered, tokenID: %@", stringRepresentation];
LABEL_8:

      *error = [NSError errorWithCode:-8 debugDescription:v8];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    slotName = [registeredCopy slotName];
    v10 = [slotName isEqualToString:TKNFCSlotName];

    if (v10)
    {
      LOBYTE(error) = 1;
    }

    else if (error)
    {
      tokenID = [registeredCopy tokenID];
      stringRepresentation = [tokenID stringRepresentation];
      slotName2 = [registeredCopy slotName];
      v8 = [NSString stringWithFormat:@"Tokens can be registered only using built-in NFC slot, tokenID: %@, current slot: %@", stringRepresentation, slotName2];

      goto LABEL_8;
    }
  }

  return error;
}

@end