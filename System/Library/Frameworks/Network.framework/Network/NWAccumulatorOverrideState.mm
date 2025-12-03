@interface NWAccumulatorOverrideState
- (NWAccumulatorOverrideState)init;
- (id)description;
- (void)updateWithState:(id)state;
@end

@implementation NWAccumulatorOverrideState

- (void)updateWithState:(id)state
{
  v21 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__NWAccumulatorOverrideState_updateWithState___block_invoke;
    v13[3] = &unk_1E6A3D760;
    v13[4] = self;
    v14 = stateCopy;
    os_unfair_lock_lock(&self->_lock);
    __46__NWAccumulatorOverrideState_updateWithState___block_invoke(v13);
    os_unfair_lock_unlock(&self->_lock);

    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWAccumulatorOverrideState updateWithState:]";
  v7 = _os_log_send_and_compose_impl();

  v16 = OS_LOG_TYPE_ERROR;
  v15 = 0;
  if (__nwlog_fault(v7, &v16, &v15))
  {
    if (v16 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v16;
      if (os_log_type_enabled(v8, v16))
      {
        *buf = 136446210;
        v18 = "[NWAccumulatorOverrideState updateWithState:]";
        v10 = "%{public}s called with null state";
LABEL_17:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v15 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = v16;
        v12 = os_log_type_enabled(v8, v16);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v18 = "[NWAccumulatorOverrideState updateWithState:]";
            v19 = 2082;
            v20 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null state, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v12)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v18 = "[NWAccumulatorOverrideState updateWithState:]";
        v10 = "%{public}s called with null state, no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = v16;
      if (os_log_type_enabled(v8, v16))
      {
        *buf = 136446210;
        v18 = "[NWAccumulatorOverrideState updateWithState:]";
        v10 = "%{public}s called with null state, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v7)
  {
    free(v7);
  }

LABEL_3:
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  name = [(NWAccumulatorOverrideState *)self name];
  state = [(NWAccumulatorOverrideState *)self state];
  v6 = [v3 initWithFormat:@"<NWAccumulatorOverrideState %@, state: %@>", name, state];

  return v6;
}

- (NWAccumulatorOverrideState)init
{
  v3.receiver = self;
  v3.super_class = NWAccumulatorOverrideState;
  result = [(NWAccumulatorOverrideState *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end