@interface OS_nw_parallel_array
- (void)dealloc;
@end

@implementation OS_nw_parallel_array

- (void)dealloc
{
  v28 = *MEMORY[0x1E69E9840];
  if (self)
  {
    isa = self[2].super.super.isa;
    if (isa)
    {
      v4 = self[3].super.super.isa;
      v5 = self[2].super.super.isa;
      if (v4 != isa)
      {
        do
        {
          v7 = *(v4 - 1);
          v4 = (v4 - 8);
          v6 = v7;
          if (v7)
          {
            os_release(v6);
          }

          *v4 = 0;
        }

        while (v4 != isa);
        v5 = self[2].super.super.isa;
      }

      self[3].super.super.isa = isa;
      operator delete(v5);
    }

    v8 = self[5].super.super.isa;
    if (v8)
    {
      v9 = self[6].super.super.isa;
      v10 = self[5].super.super.isa;
      if (v9 != v8)
      {
        do
        {
          v12 = *(v9 - 1);
          v9 = (v9 - 8);
          v11 = v12;
          if (v12)
          {
            os_release(v11);
          }

          *v9 = 0;
        }

        while (v9 != v8);
        v10 = self[5].super.super.isa;
      }

      self[6].super.super.isa = v8;
      operator delete(v10);
    }

    goto LABEL_18;
  }

  __nwlog_obj();
  *buf = 136446210;
  v25 = "nw_parallel_array_dispose";
  v20 = 12;
  v19 = buf;
  v13 = _os_log_send_and_compose_impl();
  type = OS_LOG_TYPE_ERROR;
  v22 = 0;
  if (__nwlog_fault(v13, &type, &v22))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v25 = "nw_parallel_array_dispose";
      v16 = "%{public}s called with null object";
      goto LABEL_32;
    }

    if (v22 != 1)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (!os_log_type_enabled(v14, type))
      {
        goto LABEL_33;
      }

      *buf = 136446210;
      v25 = "nw_parallel_array_dispose";
      v16 = "%{public}s called with null object, backtrace limit exceeded";
      goto LABEL_32;
    }

    backtrace_string = __nw_create_backtrace_string();
    v14 = __nwlog_obj();
    v15 = type;
    v18 = os_log_type_enabled(v14, type);
    if (backtrace_string)
    {
      if (v18)
      {
        *buf = 136446466;
        v25 = "nw_parallel_array_dispose";
        v26 = 2082;
        v27 = backtrace_string;
        _os_log_impl(&dword_181A37000, v14, v15, "%{public}s called with null object, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_33;
    }

    if (v18)
    {
      *buf = 136446210;
      v25 = "nw_parallel_array_dispose";
      v16 = "%{public}s called with null object, no backtrace";
LABEL_32:
      _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
    }
  }

LABEL_33:
  if (v13)
  {
    free(v13);
  }

LABEL_18:
  v21.receiver = self;
  v21.super_class = OS_nw_parallel_array;
  [(OS_nw_parallel_array *)&v21 dealloc:v19];
}

@end