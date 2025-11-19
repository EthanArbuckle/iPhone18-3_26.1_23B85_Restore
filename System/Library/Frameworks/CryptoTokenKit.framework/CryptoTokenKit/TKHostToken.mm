@interface TKHostToken
+ (id)keychainItemClasses;
- (BOOL)isRegistered;
- (TKHostToken)initWithCoder:(id)a3;
- (TKHostToken)initWithTokenID:(id)a3 persistent:(BOOL)a4;
- (TKHostTokenDriver)driver;
- (TKHostTokenRegistry)registry;
- (id)description;
- (void)acquireTokenConnection:(BOOL)a3 canRequireCardInsertion:(BOOL)a4 completion:(id)a5;
- (void)attemptSmartCardRegistrationWithCompletion:(id)a3;
- (void)connectionCanRequireCardInsertion:(BOOL)a3 withCompletion:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)handleAcquisitionError:(id)a3 canRequireCardInsertion:(BOOL)a4 completion:(id)a5;
- (void)isEndpointValidWithCompletion:(id)a3;
- (void)setDriver:(id)a3;
- (void)setKeychainItems:(id)a3;
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

- (void)setDriver:(id)a3
{
  v4 = a3;
  driverQueue = self->_driverQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001B68;
  v7[3] = &unk_100038760;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(driverQueue, v7);
}

- (TKHostToken)initWithTokenID:(id)a3 persistent:(BOOL)a4
{
  v7 = a3;
  v21.receiver = self;
  v21.super_class = TKHostToken;
  v8 = [(TKHostToken *)&v21 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_tokenID, a3);
    v9->_persistent = a4;
    keychainItems = v9->_keychainItems;
    v9->_keychainItems = &__NSArray0__struct;

    v11 = [NSString stringWithFormat:@"hosttoken:%@", v7];
    v12 = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v12, v13);
    queue = v9->_queue;
    v9->_queue = v14;

    v16 = [NSString stringWithFormat:@"hosttoken-driver:%@", v7];
    v17 = dispatch_queue_create([v16 UTF8String], 0);
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
  v3 = [(TKHostToken *)self isRegistered];
  v4 = &stru_1000392E8;
  if (v3)
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

  v8 = [(TKHostToken *)self tokenID];
  v9 = [NSString stringWithFormat:@"%@ %s%@-%@", v6, v7, v5, v8, v11.receiver, v11.super_class];

  return v9;
}

- (BOOL)isRegistered
{
  v2 = [(TKHostToken *)self tokenRegistration];
  v3 = v2 != 0;

  return v3;
}

- (void)connectionCanRequireCardInsertion:(BOOL)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = [(TKHostToken *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001F1C;
  block[3] = &unk_1000387D8;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)isEndpointValidWithCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(TKHostToken *)v5 endpoint];
  v7 = [(TKHostToken *)v5 driver];
  v8 = [v7 valid];

  objc_sync_exit(v5);
  if (((v6 != 0) & v8) != 0)
  {
    v9 = [[NSXPCConnection alloc] initWithListenerEndpoint:v6];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TKClientTokenProtocol];
    [v9 setRemoteObjectInterface:v10];

    [v9 resume];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100002394;
    v18[3] = &unk_100038800;
    v11 = v4;
    v20 = v11;
    v18[4] = v5;
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
    (*(v4 + 2))(v4, 0);
  }
}

- (void)acquireTokenConnection:(BOOL)a3 canRequireCardInsertion:(BOOL)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a5;
  if (v6)
  {
    v9 = [(TKHostToken *)self registry];
    v10 = [v9 driverCache];
    v11 = [(TKHostToken *)self tokenID];
    v12 = [v11 classID];
    v22 = 0;
    v13 = [v10 hostTokenDriverWithClassID:v12 error:&v22];
    v14 = v22;
    [(TKHostToken *)self setDriver:v13];

    v15 = [(TKHostToken *)self driver];

    if (v15)
    {
      v16 = [(TKHostToken *)self driver];
      v17 = [(TKHostToken *)self tokenID];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100002648;
      v19[3] = &unk_100038878;
      v19[4] = self;
      v21 = a4;
      v20 = v8;
      [v16 acquireTokenWithTokenID:v17 completion:v19];
    }

    else if (v8)
    {
      (*(v8 + 2))(v8, 0, v14);
    }
  }

  else
  {
    v18 = [[TKHostTokenConnection alloc] initWithToken:self];
    if (v8)
    {
      (*(v8 + 2))(v8, v18, 0);
    }
  }
}

- (void)handleAcquisitionError:(id)a3 canRequireCardInsertion:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([(TKHostToken *)self isRegistered])
  {
    if (a4)
    {
      [(TKHostToken *)self attemptSmartCardRegistrationWithCompletion:v9];
    }

    else
    {
      v10 = [NSError errorWithDomain:TKErrorDomain code:TKTokenNotFoundAndRegistered userInfo:0];
      v11 = sub_1000017C0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10001D884(self, v11);
      }

      if (v9)
      {
        v9[2](v9, 0, v10);
      }
    }
  }

  else if (v9)
  {
    v9[2](v9, 0, v8);
  }
}

- (void)attemptSmartCardRegistrationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TKHostToken *)self driver];
  v6 = [v5 context];
  v7 = [v6 smartCardRegistrationRegistry];

  if (!v7)
  {
    v8 = [TKSmartCardTokenRegistrationRegistry alloc];
    v9 = [(TKHostToken *)self driver];
    v10 = [v9 context];
    v11 = [v10 registry];
    v7 = [(TKSmartCardTokenRegistrationRegistry *)v8 initWithHostTokenRegistry:v11];
  }

  v12 = [(TKHostToken *)self tokenID];
  v13 = [(TKHostToken *)self tokenRegistration];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100002A60;
  v15[3] = &unk_1000388A0;
  v15[4] = self;
  v16 = v4;
  v14 = v4;
  [(TKSmartCardTokenRegistrationRegistry *)v7 createNFCSlotForTokenID:v12 tokenRegistration:v13 completion:v15];
}

- (void)setKeychainItems:(id)a3
{
  v5 = a3;
  if (![(NSArray *)self->_keychainItems isEqualToArray:v5])
  {
    obj = a3;
    v6 = [&__NSArray0__struct mutableCopy];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = v5;
    v7 = v5;
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

    v13 = [(TKHostToken *)self registry];
    v14 = [v13 keychain];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100002DEC;
    v21[3] = &unk_1000388C8;
    v21[4] = self;
    v22 = v6;
    v15 = v6;
    [v14 accessKeychainWithBlock:v21];

    objc_storeStrong(&self->_keychainItems, obj);
    v16 = [(TKHostToken *)self registry];
    v17 = [v16 beginTransaction:@"setKeychainItems"];
    v18 = [v17 markModified];
    [v18 commit];

    v5 = v20;
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

- (TKHostToken)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tokenid"];
  v6 = [v4 decodeBoolForKey:@"persistent"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tokenregistration"];
  v8 = [(TKHostToken *)self initWithTokenID:v5 persistent:v6 tokenRegistration:v7];
  if ((v6 & 1) != 0 || v7)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    configurationData = v8->_configurationData;
    v8->_configurationData = v9;

    v11 = [objc_opt_class() keychainItemClasses];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"items"];
    keychainItems = v8->_keychainItems;
    v8->_keychainItems = v12;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(TKHostToken *)self tokenID];
  [v8 encodeObject:v4 forKey:@"tokenid"];

  [v8 encodeBool:-[TKHostToken persistent](self forKey:{"persistent"), @"persistent"}];
  v5 = [(TKHostToken *)self tokenRegistration];
  [v8 encodeObject:v5 forKey:@"tokenregistration"];

  if ([(TKHostToken *)self persistent]|| [(TKHostToken *)self isRegistered])
  {
    v6 = [(TKHostToken *)self configurationData];
    [v8 encodeObject:v6 forKey:@"data"];

    v7 = [(TKHostToken *)self keychainItems];
    [v8 encodeObject:v7 forKey:@"items"];
  }
}

- (TKHostTokenRegistry)registry
{
  WeakRetained = objc_loadWeakRetained(&self->_registry);

  return WeakRetained;
}

@end