@interface SecureStorage
- (SecureStorage)init;
- (SecureStorage)initWithConfig:(id)a3;
- (id)_makeStorageRequestWithKey:(int64_t)a3 acl:(id)a4 options:(id)a5 contextUUID:(id)a6 connection:(id)a7;
- (id)acmContextForUUID:(id)a3 error:(id *)a4;
- (void)aclForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 completionHandler:(id)a6;
- (void)objectForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 completionHandler:(id)a6;
- (void)processError:(id)a3 completionHandler:(id)a4;
- (void)removeObjectForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 completionHandler:(id)a6;
- (void)setObject:(id)a3 acl:(id)a4 forKey:(int64_t)a5 options:(id)a6 contextUUID:(id)a7 connection:(id)a8 completionHandler:(id)a9;
@end

@implementation SecureStorage

- (SecureStorage)initWithConfig:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SecureStorage;
  v6 = [(SecureStorage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    v8 = [[LACSecureStorage alloc] initWithConfig:v5];
    coreStorage = v7->_coreStorage;
    v7->_coreStorage = v8;

    [(LACSecureStorage *)v7->_coreStorage setDelegate:v7];
  }

  return v7;
}

- (SecureStorage)init
{
  v3 = objc_alloc_init(LACSecureStorageConfiguration);
  v4 = [(SecureStorage *)self initWithConfig:v3];

  return v4;
}

- (void)setObject:(id)a3 acl:(id)a4 forKey:(int64_t)a5 options:(id)a6 contextUUID:(id)a7 connection:(id)a8 completionHandler:(id)a9
{
  v23 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = +[NSXPCConnection currentConnection];
  }

  v21 = v20;
  v22 = [(SecureStorage *)self _makeStorageRequestWithKey:a5 acl:v15 options:v16 contextUUID:v17 connection:v20];
  [(LACSecureStorage *)self->_coreStorage setObject:v23 forRequest:v22 completionHandler:v19];
}

- (void)objectForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 completionHandler:(id)a6
{
  v15 = a4;
  v10 = a5;
  v11 = a6;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSXPCConnection currentConnection];
  }

  v13 = v12;
  v14 = [(SecureStorage *)self _makeStorageRequestWithKey:a3 contextUUID:v15 connection:v12];
  [(LACSecureStorage *)self->_coreStorage objectForRequest:v14 completionHandler:v11];
}

- (void)removeObjectForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 completionHandler:(id)a6
{
  v15 = a4;
  v10 = a5;
  v11 = a6;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSXPCConnection currentConnection];
  }

  v13 = v12;
  v14 = [(SecureStorage *)self _makeStorageRequestWithKey:a3 contextUUID:v15 connection:v12];
  [(LACSecureStorage *)self->_coreStorage removeObjectForRequest:v14 completionHandler:v11];
}

- (void)aclForKey:(int64_t)a3 contextUUID:(id)a4 connection:(id)a5 completionHandler:(id)a6
{
  v15 = a4;
  v10 = a5;
  v11 = a6;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = +[NSXPCConnection currentConnection];
  }

  v13 = v12;
  v14 = [(SecureStorage *)self _makeStorageRequestWithKey:a3 contextUUID:v15 connection:v12];
  [(LACSecureStorage *)self->_coreStorage aclForRequest:v14 completionHandler:v11];
}

- (void)processError:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 userInfo];
  v9 = [v8 objectForKeyedSubscript:LACStorageErrorInfoKeyRequiredBootMode];
  v10 = [v9 integerValue];

  v11 = +[NSXPCConnection currentConnection];
  v12 = [(SecureStorage *)self _makeStorageRequestWithKey:v10 contextUUID:0 connection:v11];

  [(LACSecureStorage *)self->_coreStorage processError:v7 forRequest:v12 completionHandler:v6];
}

- (id)acmContextForUUID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[ContextManager sharedInstance];
  v7 = [v6 contextForUUID:v5];

  if (v7)
  {
    v8 = [v7 plugin];
    v9 = [v8 module];
    v10 = [v9 type];

    if (v10 == 1)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = sub_100007000;
      v18 = sub_100007010;
      v19 = 0;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100007018;
      v13[3] = &unk_100055098;
      v13[4] = &v14;
      ACMContextGetExternalForm([v8 underlyingPtr], v13);
      v11 = v15[5];
      _Block_object_dispose(&v14, 8);
    }

    else if (a4)
    {
      [LACStorageError errorWithCode:LACStorageErrorCodeGeneral debugDescription:@"No ACM plugin."];
      *a4 = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else if (a4)
  {
    [LACStorageError errorWithCode:LACStorageErrorCodeGeneral debugDescription:@"Context not found."];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_makeStorageRequestWithKey:(int64_t)a3 acl:(id)a4 options:(id)a5 contextUUID:(id)a6 connection:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [[StorageRequest alloc] initWithStorageDomain:0 key:a3 acl:v14 options:v13 contextID:v12 connection:v11];

  return v15;
}

@end