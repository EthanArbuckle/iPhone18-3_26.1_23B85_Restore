@interface TKSEPKeyServer
- (id)serverAttributesOfKey:(id)key error:(id *)error;
- (void)generateKeyType:(id)type keySize:(int64_t)size accessControl:(id)control options:(id)options authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
@end

@implementation TKSEPKeyServer

- (id)serverAttributesOfKey:(id)key error:(id *)error
{
  keyCopy = key;
  v6 = keyCopy;
  if (keyCopy)
  {
    v7 = [keyCopy publicKeyWithError:error];
    if (v7)
    {
      v15[0] = @"keyType";
      keyType = [v6 keyType];
      v16[0] = keyType;
      v15[1] = @"keySize";
      keySize = [v6 keySize];
      v16[1] = keySize;
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

- (void)generateKeyType:(id)type keySize:(int64_t)size accessControl:(id)control options:(id)options authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  typeCopy = type;
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  location = 0;
  v18 = SecAccessControlCreateFromData();
  if (v18)
  {
    v19 = [TKSEPKey alloc];
    v20 = +[NSXPCConnection currentConnection];
    obj = location;
    LOBYTE(v28) = session;
    v21 = [v19 initLocalWithKeyType:typeCopy keySize:size accessControl:v18 options:optionsCopy authContext:contextCopy caller:v20 forceSystemSession:v28 error:&obj];
    objc_storeStrong(&location, obj);

    if (v21 && (v29 = location, [(TKSEPKeyServer *)self serverAttributesOfKey:v21 error:&v29], v22 = objc_claimAutoreleasedReturnValue(), objc_storeStrong(&location, v29), v22))
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      objc_storeStrong(&selfCopy->_cachedKey, v21);
      objc_sync_exit(selfCopy);

      v24 = [TKBERTLVRecord alloc];
      objectID = [v21 objectID];
      v26 = [v24 initWithPropertyList:objectID];
      data = [v26 data];
      replyCopy[2](replyCopy, data, v22, 0);
    }

    else
    {
      (replyCopy)[2](replyCopy, 0, 0, location);
    }
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, 0, location);
  }
}

@end