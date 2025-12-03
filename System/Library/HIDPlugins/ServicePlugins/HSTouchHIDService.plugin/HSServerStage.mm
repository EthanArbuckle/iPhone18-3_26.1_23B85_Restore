@interface HSServerStage
+ (BOOL)matchesService:(id)service;
+ (id)clientWithService:(id)service directory:(id)directory config:(const HSServerStageClientConfig *)config;
- (HSServerStage)initWithName:(id)name description:(id)description queue:(id)queue;
- (id)stages;
- (void)_handleConnectionClosed;
- (void)_handleConnectionOpened;
- (void)addClient:(FileDescriptor *)client config:(id)config;
- (void)dealloc;
@end

@implementation HSServerStage

+ (BOOL)matchesService:(id)service
{
  serviceCopy = service;
  if (!serviceCopy)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HSServerStage.mm" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"service"}];
  }

  serviceProtocol = [serviceCopy serviceProtocol];
  v7 = [serviceProtocol isEqualToString:@"HSServerStage"];

  v8 = (v7 & 1) != 0 && [serviceCopy serviceVersion] == 0;
  return v8;
}

+ (id)clientWithService:(id)service directory:(id)directory config:(const HSServerStageClientConfig *)config
{
  serviceCopy = service;
  directoryCopy = directory;
  v11 = directoryCopy;
  if (serviceCopy)
  {
    if (directoryCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HSServerStage.mm" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v17 = +[NSAssertionHandler currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"HSServerStage.mm" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"directory"}];

LABEL_3:
  var1 = config->var1;
  if (var1)
  {
    v21 = @"async";
    v22 = &__kCFBooleanTrue;
    v13 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    if (!v11)
    {
LABEL_5:
      v18[0] = 0;
      v18[1] = 0;
      v19 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  [v11 openService:serviceCopy config:v13];
LABEL_8:
  if (var1)
  {
  }

  if ((v19 & 0x80000000) != 0)
  {
    basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServerStage.mm", v20);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      +[HSServerStage clientWithService:directory:config:];
    }

    v14 = 0;
  }

  else
  {
    v14 = [[HSObjectClient alloc] initWithSocket:v18 config:config];
  }

  HSUtil::FileDescriptor::~FileDescriptor(v18);

  return v14;
}

- (HSServerStage)initWithName:(id)name description:(id)description queue:(id)queue
{
  nameCopy = name;
  descriptionCopy = description;
  queueCopy = queue;
  if (nameCopy)
  {
    if (descriptionCopy)
    {
      goto LABEL_3;
    }

LABEL_14:
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HSServerStage.mm" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"description"}];

    if (queueCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v18 = +[NSAssertionHandler currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"HSServerStage.mm" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"name"}];

  if (!descriptionCopy)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (queueCopy)
  {
    goto LABEL_4;
  }

LABEL_15:
  v20 = +[NSAssertionHandler currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"HSServerStage.mm" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"queue"}];

LABEL_4:
  objc_storeStrong(&self->_name, name);
  objc_storeStrong(&self->_description, description);
  v30.receiver = self;
  v30.super_class = HSServerStage;
  v13 = [(HSStage *)&v30 init];
  if (v13)
  {
    objc_initWeak(&location, v13);
    objc_initWeak(&v25, v13);
    v26 = queueCopy;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __48__HSServerStage_initWithName_description_queue___block_invoke;
    v23[3] = &unk_1091A0;
    objc_copyWeak(&v24, &location);
    v27 = objc_retainBlock(v23);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = __48__HSServerStage_initWithName_description_queue___block_invoke_2;
    v21[3] = &unk_1091A0;
    objc_copyWeak(&v22, &location);
    v28 = objc_retainBlock(v21);
    v14 = [[HSObjectServer alloc] initWithConfig:&v25];
    server = v13->_server;
    v13->_server = v14;

    if (v13->_server)
    {
      v16 = v13;
    }

    else
    {
      basename_r("/Library/Caches/com.apple.xbs/Sources/HIDSensingPipeline/HIDSensingPipeline/HSServerStage.mm", v31);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [HSServerStage initWithName:description:queue:];
      }

      v16 = 0;
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __48__HSServerStage_initWithName_description_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionOpened];
}

void __48__HSServerStage_initWithName_description_queue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleConnectionClosed];
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    [HSServerStage dealloc];
  }

  v3.receiver = self;
  v3.super_class = HSServerStage;
  [(HSStage *)&v3 dealloc];
}

- (void)_handleConnectionOpened
{
  v3 = objc_opt_new();
  collectStages(v3, &self->super);
  v4 = v3;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v5 addObject:{v10, v14}];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  HSUtil::ObjectLock::ObjectLock(v18, self);
  stages = self->_state.stages;
  if (!stages)
  {
    v12 = objc_opt_new();
    v13 = self->_state.stages;
    self->_state.stages = v12;

    stages = self->_state.stages;
  }

  [(NSMutableSet *)stages unionSet:v5, v14];
  HSUtil::ObjectLock::~ObjectLock(v18);
}

- (void)_handleConnectionClosed
{
  HSUtil::ObjectLock::ObjectLock(v21, self);
  v13 = [(NSMutableSet *)self->_state.stages copy];
  [v21[1] unlock];
  LOBYTE(v21[0]) = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v13;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v3)
  {
    v15 = *v18;
    do
    {
      v16 = v3;
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v17 + 1) + 8 * i);
        consumers = [v5 consumers];
        v7 = objc_opt_new();
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v8 = consumers;
        v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v9)
        {
          v10 = *v23;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v22 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) == 0 || ([v12 hsProxyAlive])
              {
                [v7 addObject:v12];
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
          }

          while (v9);
        }

        [v5 setConsumers:v7];
      }

      v3 = [obj countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v3);
  }

  HSUtil::ObjectLock::~ObjectLock(v21);
}

- (id)stages
{
  HSUtil::ObjectLock::ObjectLock(v5, self);
  allObjects = [(NSMutableSet *)self->_state.stages allObjects];
  HSUtil::ObjectLock::~ObjectLock(v5);

  return allObjects;
}

- (void)addClient:(FileDescriptor *)client config:(id)config
{
  configCopy = config;
  server = self->_server;
  v8 = [configCopy objectForKeyedSubscript:@"async"];
  bOOLValue = [v8 BOOLValue];
  [(HSObjectServer *)server addClient:client config:&bOOLValue];
}

+ (void)clientWithService:directory:config:.cold.1()
{
  v1[0] = 136315906;
  OUTLINED_FUNCTION_0();
  v2 = 38;
  v3 = v0;
  v4 = "socket";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", v1, 0x2Au);
}

- (void)initWithName:description:queue:.cold.1()
{
  v1[0] = 136315906;
  OUTLINED_FUNCTION_0();
  v2 = 65;
  v3 = v0;
  v4 = "_server";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", v1, 0x2Au);
}

@end