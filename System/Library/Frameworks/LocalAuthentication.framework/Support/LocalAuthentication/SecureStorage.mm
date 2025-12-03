@interface SecureStorage
- (SecureStorage)init;
- (SecureStorage)initWithConfig:(id)config;
- (id)_makeStorageRequestWithKey:(int64_t)key acl:(id)acl options:(id)options contextUUID:(id)d connection:(id)connection;
- (id)acmContextForUUID:(id)d error:(id *)error;
- (void)aclForKey:(int64_t)key contextUUID:(id)d connection:(id)connection completionHandler:(id)handler;
- (void)objectForKey:(int64_t)key contextUUID:(id)d connection:(id)connection completionHandler:(id)handler;
- (void)processError:(id)error completionHandler:(id)handler;
- (void)removeObjectForKey:(int64_t)key contextUUID:(id)d connection:(id)connection completionHandler:(id)handler;
- (void)setObject:(id)object acl:(id)acl forKey:(int64_t)key options:(id)options contextUUID:(id)d connection:(id)connection completionHandler:(id)handler;
@end

@implementation SecureStorage

- (SecureStorage)initWithConfig:(id)config
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = SecureStorage;
  v6 = [(SecureStorage *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    v8 = [[LACSecureStorage alloc] initWithConfig:configCopy];
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

- (void)setObject:(id)object acl:(id)acl forKey:(int64_t)key options:(id)options contextUUID:(id)d connection:(id)connection completionHandler:(id)handler
{
  objectCopy = object;
  aclCopy = acl;
  optionsCopy = options;
  dCopy = d;
  connectionCopy = connection;
  handlerCopy = handler;
  if (connectionCopy)
  {
    v20 = connectionCopy;
  }

  else
  {
    v20 = +[NSXPCConnection currentConnection];
  }

  v21 = v20;
  v22 = [(SecureStorage *)self _makeStorageRequestWithKey:key acl:aclCopy options:optionsCopy contextUUID:dCopy connection:v20];
  [(LACSecureStorage *)self->_coreStorage setObject:objectCopy forRequest:v22 completionHandler:handlerCopy];
}

- (void)objectForKey:(int64_t)key contextUUID:(id)d connection:(id)connection completionHandler:(id)handler
{
  dCopy = d;
  connectionCopy = connection;
  handlerCopy = handler;
  if (connectionCopy)
  {
    v12 = connectionCopy;
  }

  else
  {
    v12 = +[NSXPCConnection currentConnection];
  }

  v13 = v12;
  v14 = [(SecureStorage *)self _makeStorageRequestWithKey:key contextUUID:dCopy connection:v12];
  [(LACSecureStorage *)self->_coreStorage objectForRequest:v14 completionHandler:handlerCopy];
}

- (void)removeObjectForKey:(int64_t)key contextUUID:(id)d connection:(id)connection completionHandler:(id)handler
{
  dCopy = d;
  connectionCopy = connection;
  handlerCopy = handler;
  if (connectionCopy)
  {
    v12 = connectionCopy;
  }

  else
  {
    v12 = +[NSXPCConnection currentConnection];
  }

  v13 = v12;
  v14 = [(SecureStorage *)self _makeStorageRequestWithKey:key contextUUID:dCopy connection:v12];
  [(LACSecureStorage *)self->_coreStorage removeObjectForRequest:v14 completionHandler:handlerCopy];
}

- (void)aclForKey:(int64_t)key contextUUID:(id)d connection:(id)connection completionHandler:(id)handler
{
  dCopy = d;
  connectionCopy = connection;
  handlerCopy = handler;
  if (connectionCopy)
  {
    v12 = connectionCopy;
  }

  else
  {
    v12 = +[NSXPCConnection currentConnection];
  }

  v13 = v12;
  v14 = [(SecureStorage *)self _makeStorageRequestWithKey:key contextUUID:dCopy connection:v12];
  [(LACSecureStorage *)self->_coreStorage aclForRequest:v14 completionHandler:handlerCopy];
}

- (void)processError:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v9 = [userInfo objectForKeyedSubscript:LACStorageErrorInfoKeyRequiredBootMode];
  integerValue = [v9 integerValue];

  v11 = +[NSXPCConnection currentConnection];
  v12 = [(SecureStorage *)self _makeStorageRequestWithKey:integerValue contextUUID:0 connection:v11];

  [(LACSecureStorage *)self->_coreStorage processError:errorCopy forRequest:v12 completionHandler:handlerCopy];
}

- (id)acmContextForUUID:(id)d error:(id *)error
{
  dCopy = d;
  v6 = +[ContextManager sharedInstance];
  v7 = [v6 contextForUUID:dCopy];

  if (v7)
  {
    plugin = [v7 plugin];
    module = [plugin module];
    type = [module type];

    if (type == 1)
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
      ACMContextGetExternalForm([plugin underlyingPtr], v13);
      v11 = v15[5];
      _Block_object_dispose(&v14, 8);
    }

    else if (error)
    {
      [LACStorageError errorWithCode:LACStorageErrorCodeGeneral debugDescription:@"No ACM plugin."];
      *error = v11 = 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else if (error)
  {
    [LACStorageError errorWithCode:LACStorageErrorCodeGeneral debugDescription:@"Context not found."];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_makeStorageRequestWithKey:(int64_t)key acl:(id)acl options:(id)options contextUUID:(id)d connection:(id)connection
{
  connectionCopy = connection;
  dCopy = d;
  optionsCopy = options;
  aclCopy = acl;
  v15 = [[StorageRequest alloc] initWithStorageDomain:0 key:key acl:aclCopy options:optionsCopy contextID:dCopy connection:connectionCopy];

  return v15;
}

@end