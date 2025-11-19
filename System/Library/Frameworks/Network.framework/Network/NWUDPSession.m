@interface NWUDPSession
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
- (NSString)localPort;
- (NSString)privateDescription;
- (NSUInteger)maximumDatagramLength;
- (NWUDPSession)initWithConnection:(id)a3;
- (NWUDPSession)initWithEndpoint:(id)a3 parameters:(id)a4;
- (NWUDPSession)initWithUpgradeForSession:(NWUDPSession *)session;
- (id)description;
- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4;
- (void)cancel;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)readInternal;
- (void)setReadHandler:(void *)handler maxDatagrams:(NSUInteger)maxDatagrams;
- (void)setupEventHandler;
- (void)tryNextResolvedEndpoint;
- (void)writeDatagram:(NSData *)datagram completionHandler:(void *)completionHandler;
- (void)writeMultipleDatagrams:(NSArray *)datagramArray completionHandler:(void *)completionHandler;
@end

@implementation NWUDPSession

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"maximumDatagramLength"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___NWUDPSession;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, v4);
  }

  return v5;
}

- (NSString)localPort
{
  v2 = [(NWUDPSession *)self connection];
  v3 = [v2 connectedLocalEndpoint];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 port];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)cancel
{
  v2 = [(NWUDPSession *)self connection];
  [v2 cancel];
}

- (void)writeDatagram:(NSData *)datagram completionHandler:(void *)completionHandler
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = completionHandler;
  v7 = datagram;
  v8 = [(NWUDPSession *)self connection];
  v10[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  [v8 writeDatagrams:v9 completionHandler:v6];
}

- (void)writeMultipleDatagrams:(NSArray *)datagramArray completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = datagramArray;
  v8 = [(NWUDPSession *)self connection];
  [v8 writeDatagrams:v7 completionHandler:v6];
}

- (void)setReadHandler:(void *)handler maxDatagrams:(NSUInteger)maxDatagrams
{
  v19 = *MEMORY[0x1E69E9840];
  if (handler)
  {
    [(NWUDPSession *)self setReadHandler:?];
    [(NWUDPSession *)self setMaxReadDatagrams:maxDatagrams];

    [(NWUDPSession *)self readInternal];
    return;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "[NWUDPSession setReadHandler:maxDatagrams:]";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "[NWUDPSession setReadHandler:maxDatagrams:]";
        v10 = "%{public}s called with null handler";
LABEL_18:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v16 = "[NWUDPSession setReadHandler:maxDatagrams:]";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (!v12)
        {
          goto LABEL_19;
        }

        *buf = 136446210;
        v16 = "[NWUDPSession setReadHandler:maxDatagrams:]";
        v10 = "%{public}s called with null handler, no backtrace";
        goto LABEL_18;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "[NWUDPSession setReadHandler:maxDatagrams:]";
        v10 = "%{public}s called with null handler, backtrace limit exceeded";
        goto LABEL_18;
      }
    }

LABEL_19:
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }
}

- (void)readInternal
{
  v3 = [(NWUDPSession *)self readHandler];
  if (v3)
  {
    v4 = v3;
    v5 = [(NWUDPSession *)self connection];
    v6 = [v5 connectionState];

    if (v6 == 3)
    {
      v7 = [(NWUDPSession *)self connection];
      v8 = [(NWUDPSession *)self maxReadDatagrams];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __28__NWUDPSession_readInternal__block_invoke;
      v9[3] = &unk_1E6A33390;
      v9[4] = self;
      [v7 readDatagramsWithMinimumCount:0 maximumCount:v8 completionHandler:v9];
    }
  }
}

void __28__NWUDPSession_readInternal__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) readHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) readHandler];
    (v7)[2](v7, v8, v5);

    [*(a1 + 32) readInternal];
  }
}

- (NSUInteger)maximumDatagramLength
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NWUDPSession *)v2 internalMTU];
  objc_sync_exit(v2);

  return v3;
}

- (void)tryNextResolvedEndpoint
{
  v2 = [(NWUDPSession *)self connection];
  [v2 cancelCurrentEndpoint];
}

- (NSString)privateDescription
{
  v2 = [(NWUDPSession *)self descriptionWithIndent:0 showFullContent:1];

  return v2;
}

- (id)description
{
  v2 = [(NWUDPSession *)self descriptionWithIndent:0 showFullContent:0];

  return v2;
}

- (id)descriptionWithIndent:(int)a3 showFullContent:(BOOL)a4
{
  v4 = a4;
  v5 = *&a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v7 appendString:@"{"];
  v8 = [(NWUDPSession *)self parameters];
  [v7 appendPrettyObject:v8 withName:@"parameters" indent:v5 showFullContent:v4];

  v9 = [(NWUDPSession *)self endpoint];
  [v7 appendPrettyObject:v9 withName:@"endpoint" indent:v5 showFullContent:v4];

  [v7 appendString:@"\n}"];
  return v7;
}

- (void)dealloc
{
  v3 = [(NWUDPSession *)self connection];
  [v3 removeObserver:self forKeyPath:@"connectionState"];

  v4 = [(NWUDPSession *)self connection];
  [v4 removeObserver:self forKeyPath:@"viable"];

  v5 = [(NWUDPSession *)self connection];
  [v5 removeObserver:self forKeyPath:@"hasBetterPath"];

  v6 = [(NWUDPSession *)self connection];
  [v6 removeObserver:self forKeyPath:@"currentPath"];

  v7.receiver = self;
  v7.super_class = NWUDPSession;
  [(NWUDPSession *)&v7 dealloc];
}

- (NWUDPSession)initWithUpgradeForSession:(NWUDPSession *)session
{
  v4 = session;
  v5 = [(NWUDPSession *)v4 endpoint];
  v6 = [(NWUDPSession *)v4 parameters];

  v7 = [(NWUDPSession *)self initWithEndpoint:v5 parameters:v6];
  return v7;
}

- (NWUDPSession)initWithEndpoint:(id)a3 parameters:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = NWUDPSession;
  v9 = [(NWUDPSession *)&v24 init];
  v10 = v9;
  if (!v9)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v26 = "[NWUDPSession initWithEndpoint:parameters:]";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v22 = 0;
    if (!__nwlog_fault(v15, &type, &v22))
    {
      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v26 = "[NWUDPSession initWithEndpoint:parameters:]";
        v18 = "%{public}s [super init] failed";
LABEL_17:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      }
    }

    else
    {
      if (v22 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v16 = __nwlog_obj();
        v17 = type;
        v20 = os_log_type_enabled(v16, type);
        if (backtrace_string)
        {
          if (v20)
          {
            *buf = 136446466;
            v26 = "[NWUDPSession initWithEndpoint:parameters:]";
            v27 = 2082;
            v28 = backtrace_string;
            _os_log_impl(&dword_181A37000, v16, v17, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v20)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v26 = "[NWUDPSession initWithEndpoint:parameters:]";
        v18 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_17;
      }

      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v26 = "[NWUDPSession initWithEndpoint:parameters:]";
        v18 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:

LABEL_19:
    if (v15)
    {
      free(v15);
    }

    goto LABEL_21;
  }

  v9->_internalMTU = 1500;
  objc_storeStrong(&v9->_endpoint, a3);
  [v8 setDataMode:1];
  objc_storeStrong(&v10->_parameters, a4);
  v11 = [(NWConnection *)NWDatagramConnection connectionWithEndpoint:v7 parameters:v8];
  connection = v10->_connection;
  v10->_connection = v11;

  if (!v10->_connection)
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  [(NWUDPSession *)v10 setupEventHandler];
  v13 = v10;
LABEL_22:

  return v13;
}

- (void)setupEventHandler
{
  v3 = [(NWUDPSession *)self connection];
  [v3 addObserver:self forKeyPath:@"connectionState" options:5 context:0];

  v4 = [(NWUDPSession *)self connection];
  [v4 addObserver:self forKeyPath:@"hasBetterPath" options:5 context:0];

  v5 = [(NWUDPSession *)self connection];
  [v5 addObserver:self forKeyPath:@"viable" options:5 context:0];

  v6 = [(NWUDPSession *)self connection];
  [v6 addObserver:self forKeyPath:@"currentPath" options:5 context:0];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v22 = a3;
  v9 = a4;
  v10 = a5;
  if ([v22 isEqualToString:@"connectionState"])
  {
    v11 = [(NWUDPSession *)self connection];
    v12 = [v11 connectionState];

    if (v12 == 3)
    {
      v13 = [(NWUDPSession *)self connection];
      v14 = [v13 connectedRemoteEndpoint];
      [(NWUDPSession *)self setResolvedEndpoint:v14];

      [(NWUDPSession *)self setState:3];
      [(NWUDPSession *)self readInternal];
    }

    else
    {
      [(NWUDPSession *)self setState:v12];
    }
  }

  else if ([v22 isEqualToString:@"hasBetterPath"])
  {
    v15 = [(NWUDPSession *)self connection];
    -[NWUDPSession setHasBetterPath:](self, "setHasBetterPath:", [v15 hasBetterPath]);
  }

  else if ([v22 isEqualToString:@"viable"])
  {
    v16 = [(NWUDPSession *)self connection];
    -[NWUDPSession setViable:](self, "setViable:", [v16 isViable]);
  }

  else if ([v22 isEqualToString:@"currentPath"])
  {
    v17 = [(NWUDPSession *)self connection];
    v18 = [v17 currentPath];
    [(NWUDPSession *)self setCurrentPath:v18];

    v19 = [(NWUDPSession *)self currentPath];
    v20 = [v19 maximumDatagramSize];

    v21 = self;
    objc_sync_enter(v21);
    if (v20 == [(NWUDPSession *)v21 internalMTU])
    {
      objc_sync_exit(v21);
    }

    else
    {
      [(NWUDPSession *)v21 willChangeValueForKey:@"maximumDatagramLength"];
      [(NWUDPSession *)v21 setInternalMTU:v20];
      objc_sync_exit(v21);

      [(NWUDPSession *)v21 didChangeValueForKey:@"maximumDatagramLength"];
    }
  }
}

- (NWUDPSession)initWithConnection:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v15 = __nwlog_obj();
    *buf = 136446210;
    v34 = "[NWUDPSession initWithConnection:]";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v16, &type, &v31))
    {
      goto LABEL_31;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v34 = "[NWUDPSession initWithConnection:]";
        v19 = "%{public}s called with null internalConnection";
LABEL_29:
        _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
      }
    }

    else
    {
      if (v31 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v17 = __nwlog_obj();
        v18 = type;
        v26 = os_log_type_enabled(v17, type);
        if (backtrace_string)
        {
          if (v26)
          {
            *buf = 136446466;
            v34 = "[NWUDPSession initWithConnection:]";
            v35 = 2082;
            v36 = backtrace_string;
            _os_log_impl(&dword_181A37000, v17, v18, "%{public}s called with null internalConnection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_31;
        }

        if (!v26)
        {
          goto LABEL_30;
        }

        *buf = 136446210;
        v34 = "[NWUDPSession initWithConnection:]";
        v19 = "%{public}s called with null internalConnection, no backtrace";
        goto LABEL_29;
      }

      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v34 = "[NWUDPSession initWithConnection:]";
        v19 = "%{public}s called with null internalConnection, backtrace limit exceeded";
        goto LABEL_29;
      }
    }

LABEL_30:

LABEL_31:
    if (v16)
    {
      free(v16);
    }

    goto LABEL_40;
  }

  v30.receiver = self;
  v30.super_class = NWUDPSession;
  v5 = [(NWUDPSession *)&v30 init];
  if (!v5)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v34 = "[NWUDPSession initWithConnection:]";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v21, &type, &v31))
    {
LABEL_37:
      if (v21)
      {
        free(v21);
      }

      self = 0;
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v34 = "[NWUDPSession initWithConnection:]";
        v24 = "%{public}s [super init] failed";
LABEL_35:
        _os_log_impl(&dword_181A37000, v22, v23, v24, buf, 0xCu);
      }
    }

    else
    {
      if (v31 == 1)
      {
        v27 = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v23 = type;
        v28 = os_log_type_enabled(v22, type);
        if (v27)
        {
          if (v28)
          {
            *buf = 136446466;
            v34 = "[NWUDPSession initWithConnection:]";
            v35 = 2082;
            v36 = v27;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v27);
          goto LABEL_37;
        }

        if (!v28)
        {
          goto LABEL_36;
        }

        *buf = 136446210;
        v34 = "[NWUDPSession initWithConnection:]";
        v24 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_35;
      }

      v22 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v22, type))
      {
        *buf = 136446210;
        v34 = "[NWUDPSession initWithConnection:]";
        v24 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_35;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  self = v5;
  v6 = [(NWConnection *)NWDatagramConnection connectionWithInternalConnection:v4];
  connection = self->_connection;
  self->_connection = v6;

  if (!self->_connection)
  {
LABEL_40:
    v14 = 0;
    goto LABEL_41;
  }

  v8 = [(NWUDPSession *)self connection];
  v9 = [v8 endpoint];
  endpoint = self->_endpoint;
  self->_endpoint = v9;

  v11 = [(NWUDPSession *)self connection];
  v12 = [v11 parameters];
  parameters = self->_parameters;
  self->_parameters = v12;

  [(NWUDPSession *)self setupEventHandler];
  self = self;
  v14 = self;
LABEL_41:

  return v14;
}

@end