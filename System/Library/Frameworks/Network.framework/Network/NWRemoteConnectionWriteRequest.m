@interface NWRemoteConnectionWriteRequest
- (NWRemoteConnectionWriteRequest)initWithData:(id)a3 clientID:(id)a4;
@end

@implementation NWRemoteConnectionWriteRequest

- (NWRemoteConnectionWriteRequest)initWithData:(id)a3 clientID:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = NWRemoteConnectionWriteRequest;
  v9 = [(NWRemoteConnectionWriteRequest *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_clientID, a4);
    v11 = v10;
    goto LABEL_3;
  }

  v13 = __nwlog_obj();
  *buf = 136446210;
  v24 = "[NWRemoteConnectionWriteRequest initWithData:clientID:]";
  v14 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (__nwlog_fault(v14, &type, &v20))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v24 = "[NWRemoteConnectionWriteRequest initWithData:clientID:]";
        v17 = "%{public}s [super init] failed";
LABEL_17:
        _os_log_impl(&dword_181A37000, v15, v16, v17, buf, 0xCu);
      }
    }

    else
    {
      if (v20 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v16 = type;
        v19 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v19)
          {
            *buf = 136446466;
            v24 = "[NWRemoteConnectionWriteRequest initWithData:clientID:]";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v16, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v19)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v24 = "[NWRemoteConnectionWriteRequest initWithData:clientID:]";
        v17 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_17;
      }

      v15 = __nwlog_obj();
      v16 = type;
      if (os_log_type_enabled(v15, type))
      {
        *buf = 136446210;
        v24 = "[NWRemoteConnectionWriteRequest initWithData:clientID:]";
        v17 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v14)
  {
    free(v14);
  }

LABEL_3:

  return v10;
}

@end