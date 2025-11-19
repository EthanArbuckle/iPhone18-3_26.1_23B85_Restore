@interface NWConcrete_nw_protocol_data_array
- (NWConcrete_nw_protocol_data_array)init;
- (void)dealloc;
@end

@implementation NWConcrete_nw_protocol_data_array

- (void)dealloc
{
  tqh_first = self->frame_array.tqh_first;
  if (tqh_first)
  {
    *(tqh_first + 5) = &v14;
    tqh_last = self->frame_array.tqh_last;
    v14 = tqh_first;
    v15 = tqh_last;
    self->frame_array.tqh_first = 0;
    self->frame_array.tqh_last = &self->frame_array.tqh_first;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v11 = ___ZL25__nw_frame_array_finalizeP16nw_frame_array_sbb_block_invoke;
    v12 = &__block_descriptor_tmp_21_49595;
    v13 = 0;
    do
    {
      v5 = v14;
      if (!v14)
      {
        break;
      }

      v6 = *(v14 + 4);
      v7 = *(v14 + 5);
      v8 = (v6 + 40);
      if (!v6)
      {
        v8 = &v15;
      }

      *v8 = v7;
      *v7 = v6;
      *(v5 + 4) = 0;
      *(v5 + 5) = 0;
    }

    while (((v11)(v10) & 1) != 0);
  }

  v9.receiver = self;
  v9.super_class = NWConcrete_nw_protocol_data_array;
  [(NWConcrete_nw_protocol_data_array *)&v9 dealloc];
}

- (NWConcrete_nw_protocol_data_array)init
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = NWConcrete_nw_protocol_data_array;
  v2 = [(NWConcrete_nw_protocol_data_array *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    v4->frame_array.tqh_first = 0;
    v4->frame_array.tqh_last = &v4->frame_array.tqh_first;
    v4->frame_count = 0;

    v5 = v4;
    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v19 = "[NWConcrete_nw_protocol_data_array init]";
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v8, &type, &v15))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v19 = "[NWConcrete_nw_protocol_data_array init]";
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s [super init] failed", buf, 0xCu);
      }
    }

    else if (v15 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v9 = __nwlog_obj();
      v12 = type;
      v13 = os_log_type_enabled(v9, type);
      if (backtrace_string)
      {
        if (v13)
        {
          *buf = 136446466;
          v19 = "[NWConcrete_nw_protocol_data_array init]";
          v20 = 2082;
          v21 = backtrace_string;
          _os_log_impl(&dword_181A37000, v9, v12, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v13)
      {
        *buf = 136446210;
        v19 = "[NWConcrete_nw_protocol_data_array init]";
        _os_log_impl(&dword_181A37000, v9, v12, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v9 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v9, type))
      {
        *buf = 136446210;
        v19 = "[NWConcrete_nw_protocol_data_array init]";
        _os_log_impl(&dword_181A37000, v9, v14, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v8)
  {
    free(v8);
  }

LABEL_3:

  return v3;
}

@end