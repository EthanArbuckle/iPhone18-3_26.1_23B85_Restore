@interface NWBrowser
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
- (NSSet)discoveredEndpoints;
- (NWBrowser)initWithDescriptor:(id)descriptor parameters:(id)parameters;
- (id)copyDiscoveredEndpoints;
- (void)cancel;
- (void)dealloc;
- (void)setUpdateHandler;
@end

@implementation NWBrowser

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"discoveredEndpoints"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NWBrowser;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

- (NSSet)discoveredEndpoints
{
  copyDiscoveredEndpoints = [(NWBrowser *)self copyDiscoveredEndpoints];

  return copyDiscoveredEndpoints;
}

- (id)copyDiscoveredEndpoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  internalDiscoveredEndpoints = [(NWBrowser *)selfCopy internalDiscoveredEndpoints];
  objc_sync_exit(selfCopy);

  return internalDiscoveredEndpoints;
}

- (void)dealloc
{
  [(NWBrowser *)self cancel];
  v3.receiver = self;
  v3.super_class = NWBrowser;
  [(NWBrowser *)&v3 dealloc];
}

- (void)cancel
{
  internalBrowser = [(NWBrowser *)self internalBrowser];

  if (internalBrowser)
  {
    internalBrowser2 = [(NWBrowser *)self internalBrowser];
    nw_browser_cancel(internalBrowser2);
  }
}

- (NWBrowser)initWithDescriptor:(id)descriptor parameters:(id)parameters
{
  v34 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  parametersCopy = parameters;
  v27.receiver = self;
  v27.super_class = NWBrowser;
  v9 = [(NWBrowser *)&v27 init];
  v10 = v9;
  if (!v9)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v29 = "[NWBrowser initWithDescriptor:parameters:]";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v19, &type, &v25))
    {
      goto LABEL_24;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v29 = "[NWBrowser initWithDescriptor:parameters:]";
        v22 = "%{public}s [super init] failed";
LABEL_22:
        _os_log_impl(&dword_181A37000, v20, v21, v22, buf, 0xCu);
      }
    }

    else
    {
      if (v25 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v20 = __nwlog_obj();
        v21 = type;
        v24 = os_log_type_enabled(v20, type);
        if (backtrace_string)
        {
          if (v24)
          {
            *buf = 136446466;
            v29 = "[NWBrowser initWithDescriptor:parameters:]";
            v30 = 2082;
            v31 = backtrace_string;
            _os_log_impl(&dword_181A37000, v20, v21, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_24;
        }

        if (!v24)
        {
          goto LABEL_23;
        }

        *buf = 136446210;
        v29 = "[NWBrowser initWithDescriptor:parameters:]";
        v22 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_22;
      }

      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v29 = "[NWBrowser initWithDescriptor:parameters:]";
        v22 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_22;
      }
    }

LABEL_23:

LABEL_24:
    if (v19)
    {
      free(v19);
    }

    goto LABEL_7;
  }

  objc_storeStrong(&v9->_descriptor, descriptor);
  objc_storeStrong(&v10->_parameters, parameters);
  internalDescriptor = [descriptorCopy internalDescriptor];
  internalParameters = [parametersCopy internalParameters];
  v13 = nw_browser_create(internalDescriptor, internalParameters);
  internalBrowser = v10->_internalBrowser;
  v10->_internalBrowser = v13;

  if (!v10->_internalBrowser)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v29 = "[NWBrowser initWithDescriptor:parameters:]";
      v30 = 2114;
      v31 = descriptorCopy;
      v32 = 2114;
      v33 = parametersCopy;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s nw_browser_create failed with descriptor %{public}@ and parameters %{public}@", buf, 0x20u);
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  [(NWBrowser *)v10 setUpdateHandler];
  v15 = v10;
LABEL_8:

  return v15;
}

- (void)setUpdateHandler
{
  objc_initWeak(&location, self);
  internalBrowser = [(NWBrowser *)self internalBrowser];
  if (NWCopyInternalQueue_init_once != -1)
  {
    dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
  }

  v4 = NWCopyInternalQueue_nwQueue;
  nw_browser_set_queue(internalBrowser, v4);

  internalBrowser2 = [(NWBrowser *)self internalBrowser];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __29__NWBrowser_setUpdateHandler__block_invoke;
  handler[3] = &unk_1E6A397D0;
  objc_copyWeak(&v8, &location);
  handler[4] = self;
  nw_browser_set_browse_results_changed_handler(internalBrowser2, handler);

  internalBrowser3 = [(NWBrowser *)self internalBrowser];
  nw_browser_start(internalBrowser3);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __29__NWBrowser_setUpdateHandler__block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v7 = a2;
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = WeakRetained;
  if (WeakRetained && a4)
  {
    v11 = WeakRetained;
    objc_sync_enter(v11);
    [v11 willChangeValueForKey:@"discoveredEndpoints"];
    v12 = [MEMORY[0x1E695DF70] array];
    v13 = [*(a1 + 32) internalBrowser];
    v14 = nw_browser_copy_browse_results(v13);

    if (v14)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __29__NWBrowser_setUpdateHandler__block_invoke_2;
      aBlock[3] = &unk_1E6A3CCB8;
      v15 = v12;
      v18 = v15;
      _nw_array_apply(v14, aBlock);
      v16 = [MEMORY[0x1E695DFD8] setWithArray:v15];
      [v11 setInternalDiscoveredEndpoints:v16];
    }

    else
    {
      [v11 setInternalDiscoveredEndpoints:0];
    }

    [v11 didChangeValueForKey:@"discoveredEndpoints"];

    objc_sync_exit(v11);
  }
}

uint64_t __29__NWBrowser_setUpdateHandler__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  endpoint = nw_browse_result_get_endpoint(a3);
  v5 = [NWEndpoint endpointWithInternalEndpoint:endpoint];
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }

  return 1;
}

@end