@interface NEProvider
+ (BOOL)isNEProviderBundle:(id)a3 forExtensionPoint:(id)a4;
+ (BOOL)isRunningInProvider;
+ (void)startSystemExtensionMode;
- (NWUDPSession)createUDPSessionToEndpoint:(NWEndpoint *)remoteEndpoint fromEndpoint:(NWHostEndpoint *)localEndpoint;
- (id)initAllowUnentitled:(BOOL)a3;
- (int64_t)_callSwiftHandleNewUDPFlow:(id)a3 initialRemoteFlowEndpoint:(id)a4;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)dealloc;
- (void)displayMessage:(NSString *)message completionHandler:(void *)completionHandler;
- (void)observerHelperHandler:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setdefaultPathObserver:(id)a3;
- (void)sleepWithCompletionHandler:(void *)completionHandler;
- (void)wake;
@end

@implementation NEProvider

- (int64_t)_callSwiftHandleNewUDPFlow:(id)a3 initialRemoteFlowEndpoint:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_1BA854638(v5);

  swift_unknownObjectRelease();
  return v7;
}

- (void)displayMessage:(NSString *)message completionHandler:(void *)completionHandler
{
  v11 = message;
  v6 = completionHandler;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v11 && (isKindOfClass & 1) == 0 && ([(NEProvider *)self appName], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [(NEProvider *)self context];
    v10 = [(NEProvider *)self appName];
    [v9 displayMessage:v10 message:v11 completionHandler:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (NWUDPSession)createUDPSessionToEndpoint:(NWEndpoint *)remoteEndpoint fromEndpoint:(NWHostEndpoint *)localEndpoint
{
  v5 = localEndpoint;
  v6 = MEMORY[0x1E6977E40];
  v7 = remoteEndpoint;
  v8 = objc_alloc_init(v6);
  if (v5)
  {
    v9 = MEMORY[0x1E6977E08];
    v10 = [(NWHostEndpoint *)v5 hostname];
    v11 = [(NWHostEndpoint *)v5 port];
    v12 = [v9 endpointWithHostname:v10 port:v11];
    [v8 setLocalAddress:v12];
  }

  v13 = [objc_alloc(MEMORY[0x1E6977E70]) initWithEndpoint:v7 parameters:v8];

  return v13;
}

- (void)wake
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@: Waking", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)sleepWithCompletionHandler:(void *)completionHandler
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = completionHandler;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = self;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "%@: Sleeping", &v7, 0xCu);
  }

  v4[2](v4);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)observerHelperHandler:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v16 = a3;
  v9 = a4;
  v11 = a5;
  if (self)
  {
    Property = objc_getProperty(self, v10, 16, 1);
  }

  else
  {
    Property = 0;
  }

  if (Property == v9 && [v16 isEqualToString:@"path"])
  {
    if (self)
    {
      v14 = objc_getProperty(self, v13, 16, 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = [v14 path];
    [(NEProvider *)self setDefaultPath:v15];
  }
}

- (void)setdefaultPathObserver:(id)a3
{
  Property = a3;
  v5 = Property;
  if (self)
  {
    v6 = Property;
    Property = objc_getProperty(self, Property, 16, 1);
    v5 = v6;
    if (v6)
    {
      if (Property)
      {
        Property = [(NWPathEvaluator *)self->_defaultPathEvaluator addObserver:v6 forKeyPath:@"path" options:5 context:0];
        v5 = v6;
      }
    }
  }

  MEMORY[0x1EEE66BB8](Property, v5);
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  [(NEProvider *)self setContext:a3];
  if (self)
  {
    v5 = objc_getProperty(self, v4, 16, 1);
    if (v5)
    {
      v6 = v5;
      v7 = [(NEProvider *)self context];

      if (v7)
      {
        defaultPathEvaluator = self->_defaultPathEvaluator;
        v9 = [(NEProvider *)self context];
        [(NWPathEvaluator *)defaultPathEvaluator addObserver:v9 forKeyPath:@"path" options:5 context:0];
      }
    }
  }
}

- (void)dealloc
{
  [(NEProvider *)self setDefaultPath:0];
  if (self && objc_getProperty(self, v3, 16, 1))
  {
    v4 = [(NEProvider *)self context];

    if (v4)
    {
      v6 = objc_getProperty(self, v5, 16, 1);
      v7 = [(NEProvider *)self context];
      [v6 removeObserver:v7 forKeyPath:@"path"];
    }

    objc_setProperty_atomic(self, v5, 0, 16);
  }

  v8.receiver = self;
  v8.super_class = NEProvider;
  [(NEProvider *)&v8 dealloc];
}

- (id)initAllowUnentitled:(BOOL)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = SecTaskCreateFromSelf(0);
  if (!v5)
  {
    if (!a3)
    {
      goto LABEL_11;
    }

LABEL_14:
    if (!+[NEProvider isRunningInProvider])
    {
      v11 = ne_log_obj();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v12 = "NEProvider objects cannot be instantiated from non-extension processes";
        v13 = v11;
        v14 = 2;
        goto LABEL_24;
      }

LABEL_18:

LABEL_19:
      v16 = 0;
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v6 = v5;
  v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.developer.networking.networkextension", 0);
  v8 = v7;
  if (v7)
  {
    CFRelease(v7);
  }

  v9 = SecTaskCopyValueForEntitlement(v6, @"com.apple.private.neagent", 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v6);

  if (!v8 && !a3)
  {
LABEL_11:
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "com.apple.developer.networking.networkextension";
      v12 = "NEProvider creation failed, caller does not have the %s entitlement";
      v13 = v11;
      v14 = 12;
LABEL_24:
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_15:
  v20.receiver = self;
  v20.super_class = NEProvider;
  v15 = [(NEProvider *)&v20 init];
  if (!v15)
  {
    self = ne_log_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, &self->super, OS_LOG_TYPE_INFO, "Failed to init NEProvider", buf, 2u);
    }

    goto LABEL_19;
  }

  v16 = v15;
  v17 = [MEMORY[0x1E6977E50] sharedDefaultEvaluator];
  self = v16[2];
  v16[2] = v17;
LABEL_20:

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (BOOL)isNEProviderBundle:(id)a3 forExtensionPoint:(id)a4
{
  v5 = a4;
  v6 = [a3 infoDictionary];
  if (isa_nsdictionary(v6))
  {
    v7 = [v6 objectForKeyedSubscript:@"CFBundlePackageType"];
    if (!isa_nsstring(v7) || ![v7 isEqualToString:@"XPC!"])
    {
      v10 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v8 = [v6 objectForKeyedSubscript:@"NSExtension"];
    if (!isa_nsdictionary(v8))
    {
      v10 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v9 = [v8 objectForKeyedSubscript:@"NSExtensionPointIdentifier"];
    if (isa_nsstring(v9))
    {
      if (v5)
      {
        if ([v9 isEqualToString:v5])
        {
LABEL_8:
          v10 = 1;
LABEL_14:

          goto LABEL_15;
        }
      }

      else if ([v9 hasPrefix:@"com.apple.networkextension."])
      {
        goto LABEL_8;
      }
    }

    v10 = 0;
    goto LABEL_14;
  }

  v10 = 0;
LABEL_17:

  return v10;
}

+ (BOOL)isRunningInProvider
{
  if (isRunningInProvider_check_init != -1)
  {
    dispatch_once(&isRunningInProvider_check_init, &__block_literal_global_22660);
  }

  return isRunningInProvider_callerIsProvider;
}

void __33__NEProvider_isRunningInProvider__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  isRunningInProvider_callerIsProvider = [NEProvider isNEProviderBundle:v0 forExtensionPoint:0];
}

+ (void)startSystemExtensionMode
{
  v2 = +[NEProviderServer sharedServer];
  [v2 start];
}

@end