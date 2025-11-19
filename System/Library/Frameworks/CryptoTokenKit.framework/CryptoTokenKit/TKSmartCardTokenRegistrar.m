@interface TKSmartCardTokenRegistrar
- (BOOL)_canTokenBeRegistered:(id)a3 error:(id *)a4;
- (BOOL)registerSmartCardWithTokenID:(id)a3 promptMessage:(id)a4 callerBundleID:(id)a5 error:(id *)a6;
- (BOOL)unregisterSmartCardWithTokenID:(id)a3 callerBundleID:(id)a4 error:(id *)a5;
- (TKSmartCardTokenRegistrar)initWithHostTokenRegistry:(id)a3;
- (id)registeredSmartCardTokens;
@end

@implementation TKSmartCardTokenRegistrar

- (TKSmartCardTokenRegistrar)initWithHostTokenRegistry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TKSmartCardTokenRegistrar;
  v6 = [(TKSmartCardTokenRegistrar *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokenRegistry, a3);
  }

  return v7;
}

- (id)registeredSmartCardTokens
{
  v3 = +[NSMutableArray array];
  v4 = [(TKHostTokenRegistry *)self->_tokenRegistry registeredTokens];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) tokenID];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)registerSmartCardWithTokenID:(id)a3 promptMessage:(id)a4 callerBundleID:(id)a5 error:(id *)a6
{
  v10 = a3;
  v28 = a4;
  v11 = a5;
  v12 = self;
  objc_sync_enter(v12);
  v13 = sub_10001C2A4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v31 = v10;
    v32 = 2112;
    v33 = v28;
    v34 = 2112;
    v35 = v11;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Registering card with tokenID: %@ prompt: %@, bundleID: %@", buf, 0x20u);
  }

  v14 = [(TKHostTokenRegistry *)v12->_tokenRegistry tokenWithTokenID:v10];
  if (v14)
  {
    v29 = 0;
    v15 = [(TKSmartCardTokenRegistrar *)v12 _canTokenBeRegistered:v14 error:&v29];
    v16 = v29;
    v17 = v16;
    if (v15)
    {
      v18 = [(TKHostTokenRegistry *)v12->_tokenRegistry beginTransaction:@"registerSmartCardWithTokenID"];
      v19 = [[TKHostTokenRegistration alloc] initWithPromptMessage:v28 creatorBundleID:v11];
      v20 = [v14 tokenRegistration];
      v21 = v20 == 0;

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
      v26 = [v18 markModified];
      [v18 commit];
    }

    else if (a6 && v16)
    {
      v25 = v16;
      *a6 = v17;
    }

    goto LABEL_17;
  }

  if (a6)
  {
    v24 = [v10 stringRepresentation];
    v17 = [NSString stringWithFormat:@"Token with ID: %@ wasn’t found in the system", v24];

    [NSError errorWithCode:-6 debugDescription:v17];
    *a6 = v15 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v15 = 0;
LABEL_18:

  objc_sync_exit(v12);
  return v15;
}

- (BOOL)unregisterSmartCardWithTokenID:(id)a3 callerBundleID:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  v11 = sub_10001C2A4();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000219CC();
  }

  v12 = [(TKHostTokenRegistry *)v10->_tokenRegistry tokenWithTokenID:v8];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 tokenRegistration];

    if (v14)
    {
      v15 = [(TKHostTokenRegistry *)v10->_tokenRegistry beginTransaction:@"unregisterSmartCardWithTokenID"];
      [v13 setTokenRegistration:0];
      v16 = [v15 markModified];
      [v15 commit];
      [(TKHostTokenRegistry *)v10->_tokenRegistry removeTokenWithTokenID:v8];
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
        sub_100021A9C(v8, v15);
      }
    }

    goto LABEL_12;
  }

  if (a5)
  {
    v18 = [v8 stringRepresentation];
    v15 = [NSString stringWithFormat:@"Token with ID: %@ wasn’t found", v18];

    *a5 = [NSError errorWithCode:-6 debugDescription:v15];
LABEL_12:
  }

  objc_sync_exit(v10);
  return v13 != 0;
}

- (BOOL)_canTokenBeRegistered:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 persistent])
  {
    if (a4)
    {
      v6 = [v5 tokenID];
      v7 = [v6 stringRepresentation];
      v8 = [NSString stringWithFormat:@"Persistent tokens can't be registered, tokenID: %@", v7];
LABEL_8:

      *a4 = [NSError errorWithCode:-8 debugDescription:v8];

      LOBYTE(a4) = 0;
    }
  }

  else
  {
    v9 = [v5 slotName];
    v10 = [v9 isEqualToString:TKNFCSlotName];

    if (v10)
    {
      LOBYTE(a4) = 1;
    }

    else if (a4)
    {
      v6 = [v5 tokenID];
      v7 = [v6 stringRepresentation];
      v11 = [v5 slotName];
      v8 = [NSString stringWithFormat:@"Tokens can be registered only using built-in NFC slot, tokenID: %@, current slot: %@", v7, v11];

      goto LABEL_8;
    }
  }

  return a4;
}

@end