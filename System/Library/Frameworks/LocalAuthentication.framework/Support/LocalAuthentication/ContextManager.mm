@interface ContextManager
+ (id)sharedInstance;
- (ContextManager)init;
- (id)_pathForModule:(int64_t)module error:(id *)error;
- (id)_proxiesForContext:(id)context;
- (id)dumpStatus;
- (id)loadModule:(int64_t)module error:(id *)error;
- (void)_logClass:(Class)class tag:(id)tag;
- (void)addContext:(id)context;
- (void)addContextProxy:(id)proxy;
@end

@implementation ContextManager

+ (id)sharedInstance
{
  if (qword_1000630B0 != -1)
  {
    sub_100022EDC();
  }

  v3 = qword_1000630A8;

  return v3;
}

- (ContextManager)init
{
  v12.receiver = self;
  v12.super_class = ContextManager;
  v2 = [(ContextManager *)&v12 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToWeakObjectsMapTable];
    contextMap = v2->_contextMap;
    v2->_contextMap = v3;

    v5 = +[NSMapTable strongToWeakObjectsMapTable];
    contextProxyMap = v2->_contextProxyMap;
    v2->_contextProxyMap = v5;

    v7 = +[NSMapTable strongToWeakObjectsMapTable];
    contextByExternalizedContextMap = v2->_contextByExternalizedContextMap;
    v2->_contextByExternalizedContextMap = v7;

    v9 = objc_opt_new();
    modules = v2->_modules;
    v2->_modules = v9;
  }

  return v2;
}

- (void)addContextProxy:(id)proxy
{
  contextProxyMap = self->_contextProxyMap;
  proxyCopy = proxy;
  v5 = objc_opt_new();
  [(NSMapTable *)contextProxyMap setObject:proxyCopy forKey:v5];
}

- (void)addContext:(id)context
{
  contextMap = self->_contextMap;
  contextCopy = context;
  uuid = [contextCopy uuid];
  [(NSMapTable *)contextMap setObject:contextCopy forKey:uuid];
}

- (id)_pathForModule:(int64_t)module error:(id *)error
{
  if (module != 1)
  {
    v7 = [NSNumber numberWithInteger:?];
    v8 = [NSString stringWithFormat:@"Unknown module: %@", v7];
    v6 = [LAErrorHelper internalErrorWithMessage:v8];

    v5 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = [NSString stringWithFormat:@"/System/Library/Frameworks/LocalAuthentication.framework/Support/ModulePlugins/%@.bundle", @"ModuleACM"];
  v6 = 0;
  if (error)
  {
LABEL_5:
    v9 = v6;
    *error = v6;
  }

LABEL_6:

  return v5;
}

- (void)_logClass:(Class)class tag:(id)tag
{
  tagCopy = tag;
  [ContextManager _logClass:"_logClass:tag:level:" tag:class level:?];
  Superclass = class_getSuperclass(class);
  if (Superclass)
  {
    v7 = Superclass;
    v8 = 1;
    do
    {
      v9 = v8 + 1;
      [(ContextManager *)self _logClass:v7 tag:tagCopy level:?];
      v7 = class_getSuperclass(v7);
      v8 = v9;
    }

    while (v7);
  }
}

- (id)loadModule:(int64_t)module error:(id *)error
{
  v7 = LALogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    moduleCopy = module;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Loading module:%d", buf, 8u);
  }

  modules = self->_modules;
  v9 = [NSNumber numberWithInteger:module];
  principalClass = [(NSMutableDictionary *)modules objectForKeyedSubscript:v9];

  if (principalClass)
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v25 = 0;
  v14 = [(ContextManager *)self _pathForModule:module error:&v25];
  v11 = v25;
  if (!v14)
  {
    v16 = 0;
    principalClass = 0;
    goto LABEL_27;
  }

  v15 = [NSBundle bundleWithPath:v14];
  v16 = v15;
  if (!v15)
  {
    v19 = [NSString stringWithFormat:@"Failed to load plugin: %@", v14];
    v18 = [LAErrorHelper internalErrorWithMessage:v19];

    principalClass = 0;
LABEL_25:

    goto LABEL_26;
  }

  v24 = v11;
  v17 = [v15 loadAndReturnError:&v24];
  v18 = v24;

  if (v17)
  {
    principalClass = [v16 principalClass];
    if (principalClass)
    {
      if ([principalClass isSubclassOfClass:objc_opt_class()])
      {
        principalClass = objc_opt_new();
      }

      else
      {
        v21 = LALogForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          sub_100022EF0(v16, v14, v21);
        }

        [(ContextManager *)self _logClass:principalClass tag:@"cls"];
        -[ContextManager _logClass:tag:](self, "_logClass:tag:", [v16 principalClass], @"bundle.principalClass");
        [(ContextManager *)self _logClass:objc_opt_class() tag:@"Module.class"];
        principalClass = objc_opt_new();
        v22 = LALogForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_100022F78(principalClass, v22);
        }
      }

      v23 = self->_modules;
      v19 = [NSNumber numberWithInteger:module];
      [(NSMutableDictionary *)v23 setObject:principalClass forKey:v19];
    }

    else
    {
      v19 = [NSString stringWithFormat:@"No principal class in bundle: %@", v16];
      v20 = [LAErrorHelper internalErrorWithMessage:v19];

      v18 = v20;
    }

    goto LABEL_25;
  }

  principalClass = 0;
LABEL_26:
  v11 = v18;
LABEL_27:

  if (error)
  {
LABEL_5:
    v12 = v11;
    *error = v11;
  }

LABEL_6:

  return principalClass;
}

- (id)dumpStatus
{
  v20 = objc_opt_new();
  v19 = objc_opt_new();
  [v19 setDateFormat:@"YYYY-MM-dd HH:mm:ss:SSS"];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  obj = [(NSMapTable *)self->_contextMap objectEnumerator];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v25[0] = @"object";
        v8 = [v7 description];
        v26[0] = v8;
        v25[1] = @"created";
        plugin = [v7 plugin];
        creationTime = [plugin creationTime];
        v11 = [v19 stringFromDate:creationTime];
        v26[1] = v11;
        v25[2] = @"proxies";
        v12 = [(ContextManager *)selfCopy _proxiesForContext:v7];
        v26[2] = v12;
        v13 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];

        uuid = [v7 uuid];
        uUIDString = [uuid UUIDString];
        [v20 setObject:v13 forKey:uUIDString];
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v4);
  }

  return v20;
}

- (id)_proxiesForContext:(id)context
{
  contextCopy = context;
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  objectEnumerator = [(NSMapTable *)self->_contextProxyMap objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        managedContext = [v11 managedContext];

        if (managedContext == contextCopy)
        {
          v13 = +[Caller pathFromPid:](Caller, "pathFromPid:", [v11 processId]);
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = @"PID";
          }

          v16 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@ held by %@[%d]", v11, v15, [v11 processId]);

          [v5 addObject:v16];
        }
      }

      v8 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v5;
}

@end