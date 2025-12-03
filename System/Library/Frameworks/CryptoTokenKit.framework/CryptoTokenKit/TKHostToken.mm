@interface TKHostToken
+ (id)keychainItemClasses;
- (BOOL)isRegistered;
- (TKHostToken)initWithCoder:(id)coder;
- (TKHostToken)initWithTokenID:(id)d persistent:(BOOL)persistent;
- (TKHostTokenDriver)driver;
- (TKHostTokenRegistry)registry;
- (id)description;
- (void)acquireTokenConnection:(BOOL)connection canRequireCardInsertion:(BOOL)insertion completion:(id)completion;
- (void)attemptSmartCardRegistrationWithCompletion:(id)completion;
- (void)connectionCanRequireCardInsertion:(BOOL)insertion withCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)handleAcquisitionError:(id)error canRequireCardInsertion:(BOOL)insertion completion:(id)completion;
- (void)isEndpointValidWithCompletion:(id)completion;
- (void)setDriver:(id)driver;
- (void)setKeychainItems:(id)items;
@end

@implementation TKHostToken

- (TKHostTokenDriver)driver
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100001AA4;
  v10 = sub_100001AB4;
  v11 = 0;
  driverQueue = self->_driverQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001ABC;
  v5[3] = &unk_100038738;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(driverQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setDriver:(id)driver
{
  driverCopy = driver;
  driverQueue = self->_driverQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001B68;
  v7[3] = &unk_100038760;
  v7[4] = self;
  v8 = driverCopy;
  v6 = driverCopy;
  dispatch_sync(driverQueue, v7);
}

- (TKHostToken)initWithTokenID:(id)d persistent:(BOOL)persistent
{
  dCopy = d;
  v21.receiver = self;
  v21.super_class = TKHostToken;
  v8 = [(TKHostToken *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_tokenID, d);
    v9->_persistent = persistent;
    keychainItems = v9->_keychainItems;
    v9->_keychainItems = &__NSArray0__struct;

    dCopy = [NSString stringWithFormat:@"hosttoken:%@", dCopy];
    uTF8String = [dCopy UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(uTF8String, v13);
    queue = v9->_queue;
    v9->_queue = v14;

    dCopy2 = [NSString stringWithFormat:@"hosttoken-driver:%@", dCopy];
    v17 = dispatch_queue_create([dCopy2 UTF8String], 0);
    driverQueue = v9->_driverQueue;
    v9->_driverQueue = v17;

    v9->_connectionCount = 0;
    tokenRegistration = v9->_tokenRegistration;
    v9->_tokenRegistration = 0;
  }

  return v9;
}

- (id)description
{
  isRegistered = [(TKHostToken *)self isRegistered];
  v4 = &stru_1000392E8;
  if (isRegistered)
  {
    v4 = @"-REGISTERED";
  }

  v11.receiver = self;
  v11.super_class = TKHostToken;
  v5 = v4;
  v6 = [(TKHostToken *)&v11 description];
  if ([(TKHostToken *)self persistent])
  {
    v7 = "PERS";
  }

  else
  {
    v7 = "TRNS";
  }

  tokenID = [(TKHostToken *)self tokenID];
  v9 = [NSString stringWithFormat:@"%@ %s%@-%@", v6, v7, v5, tokenID, v11.receiver, v11.super_class];

  return v9;
}

- (BOOL)isRegistered
{
  tokenRegistration = [(TKHostToken *)self tokenRegistration];
  v3 = tokenRegistration != 0;

  return v3;
}

- (void)connectionCanRequireCardInsertion:(BOOL)insertion withCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(TKHostToken *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001F1C;
  block[3] = &unk_1000387D8;
  insertionCopy = insertion;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

- (void)isEndpointValidWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  endpoint = [(TKHostToken *)selfCopy endpoint];
  driver = [(TKHostToken *)selfCopy driver];
  valid = [driver valid];

  objc_sync_exit(selfCopy);
  if (((endpoint != 0) & valid) != 0)
  {
    v9 = [[NSXPCConnection alloc] initWithListenerEndpoint:endpoint];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKClientTokenProtocol];
    [v9 setRemoteObjectInterface:v10];

    [v9 resume];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100002394;
    v18[3] = &unk_100038800;
    v11 = completionCopy;
    v20 = v11;
    v18[4] = selfCopy;
    v12 = v9;
    v19 = v12;
    v13 = [v12 remoteObjectProxyWithErrorHandler:v18];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100002414;
    v15[3] = &unk_100038828;
    v16 = v12;
    v17 = v11;
    v14 = v12;
    [v13 endSession:&off_10003A310 reply:v15];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)acquireTokenConnection:(BOOL)connection canRequireCardInsertion:(BOOL)insertion completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  if (connectionCopy)
  {
    registry = [(TKHostToken *)self registry];
    driverCache = [registry driverCache];
    tokenID = [(TKHostToken *)self tokenID];
    classID = [tokenID classID];
    v22 = 0;
    v13 = [driverCache hostTokenDriverWithClassID:classID error:&v22];
    v14 = v22;
    [(TKHostToken *)self setDriver:v13];

    driver = [(TKHostToken *)self driver];

    if (driver)
    {
      driver2 = [(TKHostToken *)self driver];
      tokenID2 = [(TKHostToken *)self tokenID];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100002648;
      v19[3] = &unk_100038878;
      v19[4] = self;
      insertionCopy = insertion;
      v20 = completionCopy;
      [driver2 acquireTokenWithTokenID:tokenID2 completion:v19];
    }

    else if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v14);
    }
  }

  else
  {
    v18 = [[TKHostTokenConnection alloc] initWithToken:self];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v18, 0);
    }
  }
}

- (void)handleAcquisitionError:(id)error canRequireCardInsertion:(BOOL)insertion completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  if ([(TKHostToken *)self isRegistered])
  {
    if (insertion)
    {
      [(TKHostToken *)self attemptSmartCardRegistrationWithCompletion:completionCopy];
    }

    else
    {
      v10 = [NSError errorWithDomain:TKErrorDomain code:TKTokenNotFoundAndRegistered userInfo:0];
      v11 = sub_1000017C0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10001D884(self, v11);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v10);
      }
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, errorCopy);
  }
}

- (void)attemptSmartCardRegistrationWithCompletion:(id)completion
{
  completionCopy = completion;
  driver = [(TKHostToken *)self driver];
  context = [driver context];
  smartCardRegistrationRegistry = [context smartCardRegistrationRegistry];

  if (!smartCardRegistrationRegistry)
  {
    v8 = [TKSmartCardTokenRegistrationRegistry alloc];
    driver2 = [(TKHostToken *)self driver];
    context2 = [driver2 context];
    registry = [context2 registry];
    smartCardRegistrationRegistry = [(TKSmartCardTokenRegistrationRegistry *)v8 initWithHostTokenRegistry:registry];
  }

  tokenID = [(TKHostToken *)self tokenID];
  tokenRegistration = [(TKHostToken *)self tokenRegistration];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002A60;
  v15[3] = &unk_1000388A0;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  [(TKSmartCardTokenRegistrationRegistry *)smartCardRegistrationRegistry createNFCSlotForTokenID:tokenID tokenRegistration:tokenRegistration completion:v15];
}

- (void)setKeychainItems:(id)items
{
  itemsCopy = items;
  if (![(NSArray *)self->_keychainItems isEqualToArray:itemsCopy])
  {
    obj = items;
    v6 = [&__NSArray0__struct mutableCopy];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = itemsCopy;
    v7 = itemsCopy;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v23 + 1) + 8 * v11) mutableCopy];
          [v12 removeObjectForKey:@"pubk"];
          [v12 removeObjectForKey:@"keyUsage"];
          [v6 addObject:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    registry = [(TKHostToken *)self registry];
    keychain = [registry keychain];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100002DEC;
    v21[3] = &unk_1000388C8;
    v21[4] = self;
    v22 = v6;
    v15 = v6;
    [keychain accessKeychainWithBlock:v21];

    objc_storeStrong(&self->_keychainItems, obj);
    registry2 = [(TKHostToken *)self registry];
    v17 = [registry2 beginTransaction:@"setKeychainItems"];
    markModified = [v17 markModified];
    [markModified commit];

    itemsCopy = v20;
  }
}

+ (id)keychainItemClasses
{
  if (qword_100043300 != -1)
  {
    sub_10001D9C0();
  }

  v3 = qword_100043308;

  return v3;
}

- (TKHostToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tokenid"];
  v6 = [coderCopy decodeBoolForKey:@"persistent"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tokenregistration"];
  v8 = [(TKHostToken *)self initWithTokenID:v5 persistent:v6 tokenRegistration:v7];
  if ((v6 & 1) != 0 || v7)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    configurationData = v8->_configurationData;
    v8->_configurationData = v9;

    keychainItemClasses = [objc_opt_class() keychainItemClasses];
    v12 = [coderCopy decodeObjectOfClasses:keychainItemClasses forKey:@"items"];
    keychainItems = v8->_keychainItems;
    v8->_keychainItems = v12;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  tokenID = [(TKHostToken *)self tokenID];
  [coderCopy encodeObject:tokenID forKey:@"tokenid"];

  [coderCopy encodeBool:-[TKHostToken persistent](self forKey:{"persistent"), @"persistent"}];
  tokenRegistration = [(TKHostToken *)self tokenRegistration];
  [coderCopy encodeObject:tokenRegistration forKey:@"tokenregistration"];

  if ([(TKHostToken *)self persistent]|| [(TKHostToken *)self isRegistered])
  {
    configurationData = [(TKHostToken *)self configurationData];
    [coderCopy encodeObject:configurationData forKey:@"data"];

    keychainItems = [(TKHostToken *)self keychainItems];
    [coderCopy encodeObject:keychainItems forKey:@"items"];
  }
}

- (TKHostTokenRegistry)registry
{
  WeakRetained = objc_loadWeakRetained(&self->_registry);

  return WeakRetained;
}

@end