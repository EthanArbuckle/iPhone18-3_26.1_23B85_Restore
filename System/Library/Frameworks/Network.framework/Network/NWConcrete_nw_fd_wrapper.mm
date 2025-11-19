@interface NWConcrete_nw_fd_wrapper
- (NSString)description;
- (_DWORD)initWithFileDescriptor:(void *)a1;
- (void)dealloc;
@end

@implementation NWConcrete_nw_fd_wrapper

- (void)dealloc
{
  nw_fd_wrapper_close(self);
  v3.receiver = self;
  v3.super_class = NWConcrete_nw_fd_wrapper;
  [(NWConcrete_nw_fd_wrapper *)&v3 dealloc];
}

- (NSString)description
{
  v2 = "true";
  if ((*(self + 24) & 1) == 0)
  {
    v2 = "false";
  }

  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<fd_wrapper %d, guarded: %s>", *(self + 2), v2);

  return v3;
}

- (_DWORD)initWithFileDescriptor:(void *)a1
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v16.receiver = a1;
  v16.super_class = NWConcrete_nw_fd_wrapper;
  v3 = objc_msgSendSuper2(&v16, sel_init);
  v4 = v3;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v18 = "[NWConcrete_nw_fd_wrapper initWithFileDescriptor:]";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v14 = 0;
    if (__nwlog_fault(v7, &type, &v14))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v8 = __nwlog_obj();
        v9 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "[NWConcrete_nw_fd_wrapper initWithFileDescriptor:]";
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v14 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v11 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v18 = "[NWConcrete_nw_fd_wrapper initWithFileDescriptor:]";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_21;
        }

        if (v12)
        {
          *buf = 136446210;
          v18 = "[NWConcrete_nw_fd_wrapper initWithFileDescriptor:]";
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v8 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v8, type))
        {
          *buf = 136446210;
          v18 = "[NWConcrete_nw_fd_wrapper initWithFileDescriptor:]";
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_21:
    if (v7)
    {
      free(v7);
    }

    return 0;
  }

  v3[2] = a2;
  *(v3 + 24) &= ~2u;
  arc4random_buf(v3 + 4, 8uLL);
  return v4;
}

@end