@interface NWMonitor
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (NWMonitor)monitorWithNetworkDescription:(id)description endpoint:(id)endpoint parameters:(id)parameters;
+ (NWMonitor)monitorWithNetworkDescriptionArray:(id)array endpoint:(id)endpoint parameters:(id)parameters;
+ (id)copySavedMonitorForNetworkDescriptionArray:(id)array endpoint:(id)endpoint parameters:(id)parameters;
+ (id)mainOperationQueue;
+ (id)queue;
+ (void)initialize;
+ (void)saveMonitor:(id)monitor;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesNetworkDescriptionArray:(id)array endpoint:(id)endpoint parameters:(id)parameters;
- (NSString)description;
- (NSString)privateDescription;
- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content;
- (unint64_t)hash;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)dealloc;
- (void)evaluateStartingAtIndex:(unint64_t)index probeUUID:(id)d probeWasSuccessful:(BOOL)successful;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation NWMonitor

+ (id)queue
{
  if (queue_onceToken != -1)
  {
    dispatch_once(&queue_onceToken, &__block_literal_global_11189);
  }

  v3 = queue_mQueue;

  return v3;
}

void __18__NWMonitor_queue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.network.monitor_queue", v2);
  v1 = queue_mQueue;
  queue_mQueue = v0;
}

+ (id)mainOperationQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__NWMonitor_mainOperationQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (mainOperationQueue_opQueueToken != -1)
  {
    dispatch_once(&mainOperationQueue_opQueueToken, block);
  }

  v2 = mainOperationQueue_opQueue;

  return v2;
}

void __31__NWMonitor_mainOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = mainOperationQueue_opQueue;
  mainOperationQueue_opQueue = v0;

  v2 = [objc_opt_class() queue];
  [mainOperationQueue_opQueue setUnderlyingQueue:v2];
}

+ (NWMonitor)monitorWithNetworkDescriptionArray:(id)array endpoint:(id)endpoint parameters:(id)parameters
{
  v84 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  endpointCopy = endpoint;
  parametersCopy = parameters;
  nw_allow_use_of_dispatch_internal();
  if (!arrayCopy)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v17 = gLogObj;
    *buf = 136446210;
    v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v75 = 0;
    if (!__nwlog_fault(v18, &type, &v75))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
      v21 = "%{public}s called with null networkDescriptionArray";
    }

    else
    {
      if (v75 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v31 = type;
        v32 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (v32)
          {
            *buf = 136446466;
            v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
            v79 = 2082;
            v80 = backtrace_string;
            v33 = "%{public}s called with null networkDescriptionArray, dumping backtrace:%{public}s";
LABEL_39:
            v37 = v19;
            v38 = v31;
            v39 = 22;
LABEL_40:
            _os_log_impl(&dword_181A37000, v37, v38, v33, buf, v39);
          }

LABEL_41:

          free(backtrace_string);
          goto LABEL_71;
        }

        if (!v32)
        {
LABEL_49:

          if (!v18)
          {
            goto LABEL_73;
          }

          goto LABEL_72;
        }

        *buf = 136446210;
        v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
        v21 = "%{public}s called with null networkDescriptionArray, no backtrace";
        v42 = v19;
        v43 = v31;
LABEL_48:
        _os_log_impl(&dword_181A37000, v42, v43, v21, buf, 0xCu);
        goto LABEL_49;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_49;
      }

      *buf = 136446210;
      v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
      v21 = "%{public}s called with null networkDescriptionArray, backtrace limit exceeded";
    }

    v42 = v19;
    v43 = v20;
    goto LABEL_48;
  }

  if (![arrayCopy count])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v27 = gLogObj;
    *buf = 136446210;
    v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v75 = 0;
    if (!__nwlog_fault(v18, &type, &v75))
    {
      goto LABEL_71;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v28 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
      v29 = "%{public}s called with null networkDescriptionArray (empty)";
      goto LABEL_57;
    }

    if (v75 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v28 = type;
      if (!os_log_type_enabled(v19, type))
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
      v29 = "%{public}s called with null networkDescriptionArray (empty), backtrace limit exceeded";
LABEL_57:
      v46 = v19;
      v47 = v28;
      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v31 = type;
    v36 = os_log_type_enabled(v19, type);
    if (!backtrace_string)
    {
      if (!v36)
      {
        goto LABEL_70;
      }

      *buf = 136446210;
      v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
      v29 = "%{public}s called with null networkDescriptionArray (empty), no backtrace";
      v46 = v19;
      v47 = v31;
LABEL_58:
      v48 = 12;
LABEL_69:
      _os_log_impl(&dword_181A37000, v46, v47, v29, buf, v48);
      goto LABEL_70;
    }

    if (v36)
    {
      *buf = 136446466;
      v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
      v79 = 2082;
      v80 = backtrace_string;
      v33 = "%{public}s called with null networkDescriptionArray (empty), dumping backtrace:%{public}s";
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v11 = arrayCopy;
  v12 = [v11 countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  v14 = *v72;
  while (2)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v72 != v14)
      {
        objc_enumerationMutation(v11);
      }

      ssidOptions = [*(*(&v71 + 1) + 8 * i) ssidOptions];

      if (ssidOptions)
      {

        if (currentProcessHasSSIDEntitlement_onceToken != -1)
        {
          dispatch_once(&currentProcessHasSSIDEntitlement_onceToken, &__block_literal_global_229);
        }

        if (currentProcessHasSSIDEntitlement_hasSSIDEntitlement)
        {
          goto LABEL_19;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        *buf = 136446466;
        v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
        v79 = 2114;
        v80 = @"com.apple.private.corewifi";
        v18 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v75 = 0;
        if (!__nwlog_fault(v18, &type, &v75))
        {
          goto LABEL_71;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v19 = gLogObj;
          v35 = type;
          if (!os_log_type_enabled(v19, type))
          {
            goto LABEL_70;
          }

          *buf = 136446466;
          v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
          v79 = 2114;
          v80 = @"com.apple.private.corewifi";
          v29 = "%{public}s This process does not have the %{public}@ entitlement required to monitor SSID";
LABEL_67:
          v46 = v19;
          v47 = v35;
LABEL_68:
          v48 = 22;
          goto LABEL_69;
        }

        if (v75 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v19 = gLogObj;
          v35 = type;
          if (!os_log_type_enabled(v19, type))
          {
            goto LABEL_70;
          }

          *buf = 136446466;
          v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
          v79 = 2114;
          v80 = @"com.apple.private.corewifi";
          v29 = "%{public}s This process does not have the %{public}@ entitlement required to monitor SSID, backtrace limit exceeded";
          goto LABEL_67;
        }

        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v44 = type;
        v45 = os_log_type_enabled(v19, type);
        if (backtrace_string)
        {
          if (!v45)
          {
            goto LABEL_41;
          }

          *buf = 136446722;
          v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
          v79 = 2114;
          v80 = @"com.apple.private.corewifi";
          v81 = 2082;
          v82 = backtrace_string;
          v33 = "%{public}s This process does not have the %{public}@ entitlement required to monitor SSID, dumping backtrace:%{public}s";
          v37 = v19;
          v38 = v44;
          v39 = 32;
          goto LABEL_40;
        }

        if (v45)
        {
          *buf = 136446466;
          v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
          v79 = 2114;
          v80 = @"com.apple.private.corewifi";
          v29 = "%{public}s This process does not have the %{public}@ entitlement required to monitor SSID, no backtrace";
          v46 = v19;
          v47 = v44;
          goto LABEL_68;
        }

LABEL_70:

LABEL_71:
        if (!v18)
        {
LABEL_73:
          v26 = 0;
          goto LABEL_111;
        }

LABEL_72:
        free(v18);
        goto LABEL_73;
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v71 objects:v83 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_11:

LABEL_19:
  v22 = [NWMonitor copySavedMonitorForNetworkDescriptionArray:v11 endpoint:endpointCopy parameters:parametersCopy];
  v23 = v22;
  if (v22)
  {
    privateDescription = [v22 privateDescription];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v25 = gLogObj;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
      v79 = 2114;
      v80 = privateDescription;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s found matching monitor %{public}@", buf, 0x16u);
    }

    v26 = v23;
    goto LABEL_110;
  }

  v70.receiver = self;
  v70.super_class = &OBJC_METACLASS___NWMonitor;
  v40 = [objc_msgSendSuper2(&v70 alloc)];
  privateDescription = v40;
  if (!self)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v49 = gLogObj;
    *buf = 136446210;
    v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
    v50 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v75 = 0;
    if (!__nwlog_fault(v50, &type, &v75))
    {
      goto LABEL_107;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v51, type))
      {
        *buf = 136446210;
        v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
        v53 = "%{public}s super alloc init failed";
        goto LABEL_105;
      }

      goto LABEL_106;
    }

    if (v75 == 1)
    {
      v65 = __nw_create_backtrace_string();
      v51 = __nwlog_obj();
      v52 = type;
      v66 = os_log_type_enabled(v51, type);
      if (v65)
      {
        if (v66)
        {
          *buf = 136446466;
          v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
          v79 = 2082;
          v80 = v65;
          v67 = "%{public}s super alloc init failed, dumping backtrace:%{public}s";
LABEL_93:
          _os_log_impl(&dword_181A37000, v51, v52, v67, buf, 0x16u);
        }

LABEL_94:

        free(v65);
        goto LABEL_107;
      }

      if (!v66)
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
      v53 = "%{public}s super alloc init failed, no backtrace";
    }

    else
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
      v53 = "%{public}s super alloc init failed, backtrace limit exceeded";
    }

LABEL_105:
    _os_log_impl(&dword_181A37000, v51, v52, v53, buf, 0xCu);
    goto LABEL_106;
  }

  [(__CFString *)v40 setEndpoint:endpointCopy];
  if (parametersCopy)
  {
    v41 = [parametersCopy copy];
  }

  else
  {
    v41 = objc_alloc_init(NWParameters);
  }

  v54 = v41;
  [(__CFString *)privateDescription setParameters:v41];

  v55 = [NWPathEvaluator alloc];
  endpoint = [(__CFString *)privateDescription endpoint];
  parameters = [(__CFString *)privateDescription parameters];
  v58 = [(NWPathEvaluator *)v55 initWithEndpoint:endpoint parameters:parameters];
  [(__CFString *)privateDescription setPathEvaluator:v58];

  pathEvaluator = [(__CFString *)privateDescription pathEvaluator];

  if (pathEvaluator)
  {
    v60 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v11 copyItems:1];
    [(__CFString *)privateDescription setNetworkDescriptionArray:v60];

    [(__CFString *)privateDescription setStatus:0];
    [(__CFString *)privateDescription setBestAvailableNetworkDescription:0];
    [NWMonitor saveMonitor:privateDescription];
    pathEvaluator2 = [(__CFString *)privateDescription pathEvaluator];
    [pathEvaluator2 addObserver:privateDescription forKeyPath:@"path" options:5 context:0];

    privateDescription2 = [0 privateDescription];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v63 = gLogObj;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
      v79 = 2114;
      v80 = privateDescription2;
      _os_log_impl(&dword_181A37000, v63, OS_LOG_TYPE_DEBUG, "%{public}s created monitor %{public}@", buf, 0x16u);
    }

    privateDescription = privateDescription;
    v26 = privateDescription;
    goto LABEL_110;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v64 = gLogObj;
  *buf = 136446210;
  v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
  v50 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v75 = 0;
  if (!__nwlog_fault(v50, &type, &v75))
  {
    goto LABEL_107;
  }

  if (type != OS_LOG_TYPE_FAULT)
  {
    if (v75 == 1)
    {
      v65 = __nw_create_backtrace_string();
      v51 = __nwlog_obj();
      v52 = type;
      v68 = os_log_type_enabled(v51, type);
      if (v65)
      {
        if (v68)
        {
          *buf = 136446466;
          v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
          v79 = 2082;
          v80 = v65;
          v67 = "%{public}s NWPathEvaluator alloc initWithEndpoint:parameters: failed, dumping backtrace:%{public}s";
          goto LABEL_93;
        }

        goto LABEL_94;
      }

      if (!v68)
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
      v53 = "%{public}s NWPathEvaluator alloc initWithEndpoint:parameters: failed, no backtrace";
    }

    else
    {
      v51 = __nwlog_obj();
      v52 = type;
      if (!os_log_type_enabled(v51, type))
      {
        goto LABEL_106;
      }

      *buf = 136446210;
      v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
      v53 = "%{public}s NWPathEvaluator alloc initWithEndpoint:parameters: failed, backtrace limit exceeded";
    }

    goto LABEL_105;
  }

  v51 = __nwlog_obj();
  v52 = type;
  if (os_log_type_enabled(v51, type))
  {
    *buf = 136446210;
    v78 = "+[NWMonitor monitorWithNetworkDescriptionArray:endpoint:parameters:]";
    v53 = "%{public}s NWPathEvaluator alloc initWithEndpoint:parameters: failed";
    goto LABEL_105;
  }

LABEL_106:

LABEL_107:
  if (v50)
  {
    free(v50);
  }

  v26 = 0;
LABEL_110:

LABEL_111:

  return v26;
}

- (NSString)privateDescription
{
  v2 = [(NWMonitor *)self descriptionWithIndent:0 showFullContent:1];

  return v2;
}

- (NSString)description
{
  v2 = [(NWMonitor *)self descriptionWithIndent:0 showFullContent:0];

  return v2;
}

- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content
{
  contentCopy = content;
  v5 = *&indent;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (contentCopy)
  {
    [v7 appendPrettyInt:-[NWMonitor mID](self withName:"mID") indent:{@"monitorID", v5}];
  }

  status = [(NWMonitor *)self status];
  if (status >= 3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown[%ld]", status];
  }

  else
  {
    v9 = *(&off_1E6A2CCB8 + status);
  }

  [v7 appendPrettyObject:v9 withName:@"status" indent:v5 showFullContent:contentCopy];

  endpoint = [(NWMonitor *)self endpoint];
  [v7 appendPrettyObject:endpoint withName:@"endpoint" indent:v5 showFullContent:contentCopy];

  parameters = [(NWMonitor *)self parameters];
  [v7 appendPrettyObject:parameters withName:@"parameters" indent:v5 showFullContent:contentCopy];

  networkDescriptionArray = [(NWMonitor *)self networkDescriptionArray];
  [v7 appendPrettyObject:networkDescriptionArray withName:@"descriptions" indent:v5 showFullContent:contentCopy];

  bestAvailableNetworkDescription = [(NWMonitor *)self bestAvailableNetworkDescription];
  [v7 appendPrettyObject:bestAvailableNetworkDescription withName:@"current" indent:v5 showFullContent:contentCopy];

  return v7;
}

- (unint64_t)hash
{
  networkDescriptionArray = [(NWMonitor *)self networkDescriptionArray];
  v4 = [networkDescriptionArray hash];
  endpoint = [(NWMonitor *)self endpoint];
  v6 = [endpoint hash] ^ v4;
  parameters = [(NWMonitor *)self parameters];
  v8 = [parameters hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && [equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    networkDescriptionArray = [v5 networkDescriptionArray];
    endpoint = [v5 endpoint];
    parameters = [v5 parameters];

    v9 = [(NWMonitor *)self matchesNetworkDescriptionArray:networkDescriptionArray endpoint:endpoint parameters:parameters];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)matchesNetworkDescriptionArray:(id)array endpoint:(id)endpoint parameters:(id)parameters
{
  endpointCopy = endpoint;
  parametersCopy = parameters;
  arrayCopy = array;
  networkDescriptionArray = [(NWMonitor *)self networkDescriptionArray];
  v12 = [networkDescriptionArray isEqualToArray:arrayCopy];

  if (v12)
  {
    parameters = [(NWMonitor *)self parameters];
    v14 = parametersCopy;
    v15 = v14;
    if (parameters != v14 && parameters && v14)
    {
      if (![parameters isMemberOfClass:objc_opt_class()])
      {
        goto LABEL_14;
      }

      v16 = [parameters isEqual:v15];

      if (v16)
      {
LABEL_7:
        parameters = [(NWMonitor *)self endpoint];
        v17 = endpointCopy;
        v15 = v17;
        v18 = parameters == v17;
        if (parameters == v17 || !parameters || !v17)
        {
          goto LABEL_15;
        }

        if ([parameters isMemberOfClass:objc_opt_class()])
        {
          v18 = [parameters isEqual:v15];
LABEL_15:

          goto LABEL_16;
        }

LABEL_14:
        v18 = 0;
        goto LABEL_15;
      }
    }

    else
    {

      if (parameters == v15)
      {
        goto LABEL_7;
      }
    }
  }

  v18 = 0;
LABEL_16:

  return v18;
}

- (void)dealloc
{
  pathEvaluator = [(NWMonitor *)self pathEvaluator];
  [pathEvaluator removeObserver:self forKeyPath:@"path"];

  v4.receiver = self;
  v4.super_class = NWMonitor;
  [(NWMonitor *)&v4 dealloc];
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[NWMonitor URLSession:task:willPerformHTTPRedirection:newRequest:completionHandler:]";
    v12 = 1024;
    v13 = [(NWMonitor *)self mID];
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s %u received a redirect on probe URL request, not following redirect", &v10, 0x12u);
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)evaluateStartingAtIndex:(unint64_t)index probeUUID:(id)d probeWasSuccessful:(BOOL)successful
{
  dCopy = d;
  queue = [objc_opt_class() queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__NWMonitor_evaluateStartingAtIndex_probeUUID_probeWasSuccessful___block_invoke;
  v11[3] = &unk_1E6A2CC98;
  v12 = dCopy;
  selfCopy = self;
  indexCopy = index;
  successfulCopy = successful;
  v10 = dCopy;
  dispatch_async(queue, v11);
}

void __66__NWMonitor_evaluateStartingAtIndex_probeUUID_probeWasSuccessful___block_invoke(uint64_t a1)
{
  v91 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3 lastProbeUUID];
    v5 = [v2 isEqual:v4];

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if ((v5 & 1) == 0)
    {
      if (v7)
      {
        v40 = [*(a1 + 40) mID];
        v41 = [v2 UUIDString];
        v42 = [*(a1 + 40) lastProbeUUID];
        v43 = [v42 UUIDString];
        *buf = 136446978;
        v82 = "[NWMonitor evaluateStartingAtIndex:probeUUID:probeWasSuccessful:]_block_invoke";
        v83 = 1024;
        v84 = v40;
        v85 = 2114;
        v86 = v41;
        v87 = 2114;
        v88 = v43;
        _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %u received stale probe %{public}@ (current one is %{public}@)", buf, 0x26u);
      }

      goto LABEL_43;
    }

    if (v7)
    {
      v8 = [*(a1 + 40) mID];
      v9 = [v2 UUIDString];
      *buf = 136446722;
      v82 = "[NWMonitor evaluateStartingAtIndex:probeUUID:probeWasSuccessful:]_block_invoke";
      v83 = 1024;
      v84 = v8;
      v85 = 2114;
      v86 = v9;
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s %u received valid probe %{public}@", buf, 0x1Cu);
    }
  }

  else
  {
    v10 = [v3 pathEvaluator];
    v11 = [v10 path];
    v6 = [v11 privateDescription];

    if (gLogDatapath == 1)
    {
      v67 = __nwlog_obj();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        v68 = [*(a1 + 40) mID];
        *buf = 136446722;
        v82 = "[NWMonitor evaluateStartingAtIndex:probeUUID:probeWasSuccessful:]_block_invoke";
        v83 = 1024;
        v84 = v68;
        v85 = 2114;
        v86 = v6;
        _os_log_impl(&dword_181A37000, v67, OS_LOG_TYPE_DEBUG, "%{public}s %u received path change %{public}@", buf, 0x1Cu);
      }
    }
  }

  v12 = [*(a1 + 40) networkDescriptionArray];
  v13 = [v12 count];

  v14 = [*(a1 + 40) pathEvaluator];
  v6 = [v14 path];

  v72 = [*(a1 + 40) interface];
  v15 = [v6 interface];
  [*(a1 + 40) setInterface:v15];

  v16 = *(a1 + 48);
  if (-[NSObject status](v6, "status") != 1 || ([*(a1 + 40) interface], (v17 = objc_claimAutoreleasedReturnValue()) == 0) || (v18 = v17, objc_msgSend(*(a1 + 40), "interface"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isDeepEqual:", v72), v19, v18, (v20 & 1) == 0))
  {
    v22 = [*(a1 + 40) privateDescription];
    if (gLogDatapath == 1)
    {
      v65 = __nwlog_obj();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        v66 = [*(a1 + 40) mID];
        *buf = 136446722;
        v82 = "[NWMonitor evaluateStartingAtIndex:probeUUID:probeWasSuccessful:]_block_invoke";
        v83 = 1024;
        v84 = v66;
        v85 = 2114;
        v86 = v22;
        _os_log_impl(&dword_181A37000, v65, OS_LOG_TYPE_DEBUG, "%{public}s %u resetting self to unsatisfied: %{public}@", buf, 0x1Cu);
      }
    }

    [*(a1 + 40) setLastProbeUUID:0];
    [*(a1 + 40) setLastProbeURL:0];

    if (v13)
    {
      for (i = 0; i != v13; ++i)
      {
        v24 = [*(a1 + 40) networkDescriptionArray];
        v25 = [v24 objectAtIndexedSubscript:i];

        [v25 setState:0];
      }
    }

    v16 = 0;
    v2 = 0;
  }

  if (v16 >= v13)
  {
LABEL_29:
    v38 = 0;
    v39 = 2;
LABEL_37:
    [*(a1 + 40) setLastProbeUUID:0];
    [*(a1 + 40) setLastProbeURL:0];
    v47 = [*(a1 + 40) bestAvailableNetworkDescription];

    v48 = v38 != v47;
    if (v38 != v47 || v39 != [*(a1 + 40) status])
    {
      if (NWCopyInternalQueue_init_once != -1)
      {
        dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
      }

      v49 = NWCopyInternalQueue_nwQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__NWMonitor_evaluateStartingAtIndex_probeUUID_probeWasSuccessful___block_invoke_39;
      block[3] = &unk_1E6A2CC98;
      v76 = v48;
      block[4] = *(a1 + 40);
      v38 = v38;
      v74 = v38;
      v75 = v39;
      dispatch_async(v49, block);
    }

    goto LABEL_42;
  }

  v26 = &nwlog_legacy_init(void)::init_once;
  v27 = &qword_1ED411000;
  v71 = v6;
  [*(a1 + 40) networkDescriptionArray];
  while (1)
    v28 = {;
    v29 = [v28 objectAtIndexedSubscript:v16];

    [v29 updateStateWithPath:v6];
    v30 = [v29 state];
    if (v30 != 2)
    {
      if (v30 != 1)
      {
        goto LABEL_17;
      }

      v38 = v29;
LABEL_36:

      v39 = 1;
      goto LABEL_37;
    }

    if (!v2)
    {
      break;
    }

    if (*(a1 + 56) == 1)
    {
      [v29 setState:1];
      v38 = v29;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v44 = v27[275];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v45 = [*(a1 + 40) mID];
        v46 = [v2 UUIDString];
        *buf = 136446722;
        v82 = "[NWMonitor evaluateStartingAtIndex:probeUUID:probeWasSuccessful:]_block_invoke";
        v83 = 1024;
        v84 = v45;
        v85 = 2114;
        v86 = v46;
        _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_DEBUG, "%{public}s %u received successful probe %{public}@", buf, 0x1Cu);
      }

      v2 = 0;
      goto LABEL_36;
    }

    [v29 setState:3];
    pthread_once(v26, nwlog_legacy_init_once);
    networkd_settings_init();
    v31 = v27[275];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = v26;
      v33 = v27;
      v34 = [*(a1 + 40) mID];
      v35 = [v2 UUIDString];
      *buf = 136446722;
      v82 = "[NWMonitor evaluateStartingAtIndex:probeUUID:probeWasSuccessful:]_block_invoke";
      v83 = 1024;
      v84 = v34;
      v27 = v33;
      v26 = v32;
      v6 = v71;
      v85 = 2114;
      v86 = v35;
      _os_log_impl(&dword_181A37000, v31, OS_LOG_TYPE_DEBUG, "%{public}s %u received unsuccessful probe %{public}@", buf, 0x1Cu);
    }

LABEL_28:
    v2 = 0;
LABEL_17:

    if (v13 == ++v16)
    {
      goto LABEL_29;
    }

    [*(a1 + 40) networkDescriptionArray];
  }

  v36 = [v29 probeURL];
  if (!v36)
  {
    pthread_once(v26, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = v27[275];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v37 = [*(a1 + 40) mID];
      *buf = v69;
      v82 = "[NWMonitor evaluateStartingAtIndex:probeUUID:probeWasSuccessful:]_block_invoke";
      v83 = 1024;
      v84 = v37;
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_ERROR, "%{public}s %u ERROR: NWNDShouldProbe but nil probeURL", buf, 0x12u);
    }

    goto LABEL_28;
  }

  v50 = v36;
  v51 = [*(a1 + 40) lastProbeURL];
  v52 = v50;
  LODWORD(v50) = [v50 isEqual:v51];

  if (v50)
  {
    if (gLogDatapath == 1)
    {
      v53 = __nwlog_obj();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        v54 = [*(a1 + 40) mID];
        *buf = v69;
        v82 = "[NWMonitor evaluateStartingAtIndex:probeUUID:probeWasSuccessful:]_block_invoke";
        v83 = 1024;
        v84 = v54;
        _os_log_impl(&dword_181A37000, v53, OS_LOG_TYPE_DEBUG, "%{public}s %u already sent probe out", buf, 0x12u);
      }

      v6 = v71;
      goto LABEL_52;
    }
  }

  else
  {
    v55 = [MEMORY[0x1E696AFB0] UUID];
    [*(a1 + 40) setLastProbeUUID:v55];
    [*(a1 + 40) setLastProbeURL:v52];
    v56 = __nwlog_obj();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      v57 = [*(a1 + 40) mID];
      v58 = [v55 UUIDString];
      *buf = 136447234;
      v82 = "[NWMonitor evaluateStartingAtIndex:probeUUID:probeWasSuccessful:]_block_invoke";
      v83 = 1024;
      v84 = v57;
      v85 = 2114;
      v86 = v58;
      v87 = 2114;
      v88 = v52;
      v89 = 2048;
      v90 = v16;
      _os_log_impl(&dword_181A37000, v56, OS_LOG_TYPE_DEBUG, "%{public}s %u sending out probe %{public}@ to %{public}@ for description %lu", buf, 0x30u);
    }

    v59 = MEMORY[0x1E695AC78];
    v60 = [MEMORY[0x1E695AC80] defaultSessionConfiguration];
    v61 = *(a1 + 40);
    v62 = [objc_opt_class() mainOperationQueue];
    v53 = [v59 sessionWithConfiguration:v60 delegate:v61 delegateQueue:v62];

    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __66__NWMonitor_evaluateStartingAtIndex_probeUUID_probeWasSuccessful___block_invoke_36;
    v77[3] = &unk_1E6A2CC70;
    v77[4] = *(a1 + 40);
    v78 = v55;
    v79 = v52;
    v80 = v16;
    v63 = v55;
    v64 = [v53 dataTaskWithURL:v79 completionHandler:v77];
    [v64 resume];
    [v53 finishTasksAndInvalidate];

LABEL_52:
  }

  v2 = 0;
  v38 = 0;
LABEL_42:

LABEL_43:
}

void __66__NWMonitor_evaluateStartingAtIndex_probeUUID_probeWasSuccessful___block_invoke_36(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 domain];
    if (([v11 isEqualToString:*MEMORY[0x1E696A978]]& 1) != 0)
    {
      v12 = [v10 code];

      if (v12 != -1202)
      {
        goto LABEL_7;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v11 = gLogObj;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136446210;
        v20 = "[NWMonitor evaluateStartingAtIndex:probeUUID:probeWasSuccessful:]_block_invoke";
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s probe URL failed due to untrusted server certificate", &v19, 0xCu);
      }
    }
  }

LABEL_7:
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [*(a1 + 32) mID];
    v15 = [*(a1 + 40) UUIDString];
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v19 = 136447746;
    v20 = "[NWMonitor evaluateStartingAtIndex:probeUUID:probeWasSuccessful:]_block_invoke";
    v21 = 1024;
    v22 = v14;
    v23 = 2114;
    v24 = v15;
    v25 = 2114;
    v26 = v16;
    v27 = 2048;
    v28 = v17;
    v29 = 2048;
    v30 = v7;
    v31 = 2114;
    v32 = v8;
    _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s %u received response for probe %{public}@ to %{public}@ for description%lu: data = %p, response = %{public}@", &v19, 0x44u);
  }

  if (v7)
  {
    objc_opt_class();
    v18 = (objc_opt_isKindOfClass() & 1) == 0 || ([v8 statusCode] - 200) < 0x64;
  }

  else
  {
    v18 = 0;
  }

  [*(a1 + 32) evaluateStartingAtIndex:*(a1 + 56) probeUUID:*(a1 + 40) probeWasSuccessful:v18];
}

uint64_t __66__NWMonitor_evaluateStartingAtIndex_probeUUID_probeWasSuccessful___block_invoke_39(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) bestAvailableNetworkDescription];
    v3 = [v2 privateDescription];

    v4 = [*(a1 + 40) privateDescription];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 32) mID];
      *buf = 136446978;
      v17 = "[NWMonitor evaluateStartingAtIndex:probeUUID:probeWasSuccessful:]_block_invoke";
      v18 = 1024;
      v19 = v6;
      v20 = 2114;
      v21 = v3;
      v22 = 2114;
      v23 = v4;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s %u updating best description from %{public}@ to %{public}@", buf, 0x26u);
    }

    [*(a1 + 32) willChangeValueForKey:@"bestAvailableNetworkDescription"];
    [*(a1 + 32) setBestAvailableNetworkDescription:*(a1 + 40)];
  }

  v7 = *(a1 + 48);
  result = [*(a1 + 32) status];
  if (v7 != result)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(a1 + 32) mID];
      v11 = [*(a1 + 32) status];
      if (v11 >= 3)
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown[%ld]", v11];
      }

      else
      {
        v12 = *(&off_1E6A2CCB8 + v11);
      }

      v13 = v12;
      v14 = *(a1 + 48);
      if (v14 >= 3)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown[%ld]", *(a1 + 48)];
      }

      else
      {
        v15 = *(&off_1E6A2CCB8 + v14);
      }

      *buf = 136446978;
      v17 = "[NWMonitor evaluateStartingAtIndex:probeUUID:probeWasSuccessful:]_block_invoke";
      v18 = 1024;
      v19 = v10;
      v20 = 2114;
      v21 = v13;
      v22 = 2114;
      v23 = v15;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s %u updating state from %{public}@ to %{public}@", buf, 0x26u);
    }

    [*(a1 + 32) willChangeValueForKey:@"status"];
    [*(a1 + 32) setStatus:*(a1 + 48)];
    result = [*(a1 + 32) didChangeValueForKey:@"status"];
  }

  if (*(a1 + 56) == 1)
  {
    return [*(a1 + 32) didChangeValueForKey:@"bestAvailableNetworkDescription"];
  }

  return result;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446722;
      v13 = "[NWMonitor observeValueForKeyPath:ofObject:change:context:]";
      v14 = 1024;
      v15 = [(NWMonitor *)self mID];
      v16 = 2114;
      v17 = objectCopy;
      v11 = "%{public}s %u invalid object %{public}@";
LABEL_8:
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, v11, &v12, 0x1Cu);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (([pathCopy isEqualToString:@"path"] & 1) == 0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446722;
      v13 = "[NWMonitor observeValueForKeyPath:ofObject:change:context:]";
      v14 = 1024;
      v15 = [(NWMonitor *)self mID];
      v16 = 2114;
      v17 = pathCopy;
      v11 = "%{public}s %u invalid keypath %{public}@";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [(NWMonitor *)self evaluateStartingAtIndex:0 probeUUID:0 probeWasSuccessful:0];
LABEL_10:
}

+ (NWMonitor)monitorWithNetworkDescription:(id)description endpoint:(id)endpoint parameters:(id)parameters
{
  v31 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  endpointCopy = endpoint;
  parametersCopy = parameters;
  nw_allow_use_of_dispatch_internal();
  if (descriptionCopy)
  {
    v26 = descriptionCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v12 = [self monitorWithNetworkDescriptionArray:v11 endpoint:endpointCopy parameters:parametersCopy];

    goto LABEL_15;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v13 = gLogObj;
  *buf = 136446210;
  v28 = "+[NWMonitor monitorWithNetworkDescription:endpoint:parameters:]";
  v14 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v14, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "+[NWMonitor monitorWithNetworkDescription:endpoint:parameters:]";
      v17 = "%{public}s called with null networkDescription";
LABEL_20:
      v22 = v15;
      v23 = v16;
      goto LABEL_21;
    }

    if (v24 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = type;
      if (!os_log_type_enabled(v15, type))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v28 = "+[NWMonitor monitorWithNetworkDescription:endpoint:parameters:]";
      v17 = "%{public}s called with null networkDescription, backtrace limit exceeded";
      goto LABEL_20;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    v19 = type;
    v20 = os_log_type_enabled(v15, type);
    if (!backtrace_string)
    {
      if (!v20)
      {
LABEL_22:

        if (!v14)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      *buf = 136446210;
      v28 = "+[NWMonitor monitorWithNetworkDescription:endpoint:parameters:]";
      v17 = "%{public}s called with null networkDescription, no backtrace";
      v22 = v15;
      v23 = v19;
LABEL_21:
      _os_log_impl(&dword_181A37000, v22, v23, v17, buf, 0xCu);
      goto LABEL_22;
    }

    if (v20)
    {
      *buf = 136446466;
      v28 = "+[NWMonitor monitorWithNetworkDescription:endpoint:parameters:]";
      v29 = 2082;
      v30 = backtrace_string;
      _os_log_impl(&dword_181A37000, v15, v19, "%{public}s called with null networkDescription, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
  }

  if (v14)
  {
LABEL_13:
    free(v14);
  }

LABEL_14:
  v12 = 0;
LABEL_15:

  return v12;
}

+ (void)saveMonitor:(id)monitor
{
  monitorCopy = monitor;
  v3 = savedMonitorsLock;
  objc_sync_enter(v3);
  ++saveMonitor__sMonitorID;
  [monitorCopy setMID:?];
  [savedMonitors addObject:monitorCopy];
  objc_sync_exit(v3);
}

+ (id)copySavedMonitorForNetworkDescriptionArray:(id)array endpoint:(id)endpoint parameters:(id)parameters
{
  v22 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  endpointCopy = endpoint;
  parametersCopy = parameters;
  v10 = savedMonitorsLock;
  objc_sync_enter(v10);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = savedMonitors;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ([v15 matchesNetworkDescriptionArray:arrayCopy endpoint:endpointCopy parameters:{parametersCopy, v17}])
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v10);
  return v12;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v3 = savedMonitors;
    savedMonitors = weakObjectsHashTable;

    v4 = objc_opt_new();
    v5 = savedMonitorsLock;
    savedMonitorsLock = v4;
  }
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"status"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"bestAvailableNetworkDescription"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NWMonitor;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

@end