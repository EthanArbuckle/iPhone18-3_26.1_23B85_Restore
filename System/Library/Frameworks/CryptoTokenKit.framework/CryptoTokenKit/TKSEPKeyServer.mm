@interface TKSEPKeyServer
- (id)serverAttributesOfKey:(id)a3 error:(id *)a4;
- (void)generateKeyType:(id)a3 keySize:(int64_t)a4 accessControl:(id)a5 options:(id)a6 authContext:(id)a7 forceSystemSession:(BOOL)a8 reply:(id)a9;
@end

@implementation TKSEPKeyServer

- (id)serverAttributesOfKey:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 publicKeyWithError:a4];
    if (v7)
    {
      v15[0] = @"keyType";
      v8 = [v6 keyType];
      v16[0] = v8;
      v15[1] = @"keySize";
      v9 = [v6 keySize];
      v16[1] = v9;
      v15[2] = @"systemKey";
      v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 systemKey]);
      v16[2] = v10;
      v15[3] = @"systemSessionKey";
      v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 systemSessionKey]);
      v16[3] = v11;
      v16[4] = v7;
      v15[4] = @"publicKey";
      v15[5] = @"accessControl";
      [v6 accessControl];
      v12 = SecAccessControlCopyData();
      v16[5] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:6];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)generateKeyType:(id)a3 keySize:(int64_t)a4 accessControl:(id)a5 options:(id)a6 authContext:(id)a7 forceSystemSession:(BOOL)a8 reply:(id)a9
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a9;
  location = 0;
  v18 = SecAccessControlCreateFromData();
  if (v18)
  {
    v19 = [TKSEPKey alloc];
    v20 = +[NSXPCConnection currentConnection];
    obj = location;
    LOBYTE(v28) = a8;
    v21 = [v19 initLocalWithKeyType:v14 keySize:a4 accessControl:v18 options:v15 authContext:v16 caller:v20 forceSystemSession:v28 error:&obj];
    objc_storeStrong(&location, obj);

    if (v21 && (v29 = location, [(TKSEPKeyServer *)self serverAttributesOfKey:v21 error:&v29], v22 = objc_claimAutoreleasedReturnValue(), objc_storeStrong(&location, v29), v22))
    {
      v23 = self;
      objc_sync_enter(v23);
      objc_storeStrong(&v23->_cachedKey, v21);
      objc_sync_exit(v23);

      v24 = [TKBERTLVRecord alloc];
      v25 = [v21 objectID];
      v26 = [v24 initWithPropertyList:v25];
      v27 = [v26 data];
      v17[2](v17, v27, v22, 0);
    }

    else
    {
      (v17)[2](v17, 0, 0, location);
    }
  }

  else
  {
    (v17)[2](v17, 0, 0, location);
  }
}

@end