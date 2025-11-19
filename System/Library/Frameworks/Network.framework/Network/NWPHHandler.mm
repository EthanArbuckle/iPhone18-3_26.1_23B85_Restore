@interface NWPHHandler
- (NWPHHandler)initWithHandlerFunction:(void *)a3 allowedEntitlementGroup:(id)a4;
@end

@implementation NWPHHandler

- (NWPHHandler)initWithHandlerFunction:(void *)a3 allowedEntitlementGroup:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v20.receiver = self;
  v20.super_class = NWPHHandler;
  v7 = [(NWPHHandler *)&v20 init];
  v8 = v7;
  if (v7)
  {
    [(NWPHHandler *)v7 setHandlerFunction:a3];
    [(NWPHHandler *)v8 setAllowedEntitlementGroup:v6];
    v9 = v8;
    goto LABEL_3;
  }

  v11 = __nwlog_obj();
  *buf = 136446210;
  v22 = "[NWPHHandler initWithHandlerFunction:allowedEntitlementGroup:]";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (__nwlog_fault(v12, &type, &v18))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "[NWPHHandler initWithHandlerFunction:allowedEntitlementGroup:]";
        v15 = "%{public}s [super init] failed";
LABEL_17:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else
    {
      if (v18 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v13 = __nwlog_obj();
        v14 = type;
        v17 = os_log_type_enabled(v13, type);
        if (backtrace_string)
        {
          if (v17)
          {
            *buf = 136446466;
            v22 = "[NWPHHandler initWithHandlerFunction:allowedEntitlementGroup:]";
            v23 = 2082;
            v24 = backtrace_string;
            _os_log_impl(&dword_181A37000, v13, v14, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v17)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v22 = "[NWPHHandler initWithHandlerFunction:allowedEntitlementGroup:]";
        v15 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_17;
      }

      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *buf = 136446210;
        v22 = "[NWPHHandler initWithHandlerFunction:allowedEntitlementGroup:]";
        v15 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v12)
  {
    free(v12);
  }

LABEL_3:

  return v8;
}

@end