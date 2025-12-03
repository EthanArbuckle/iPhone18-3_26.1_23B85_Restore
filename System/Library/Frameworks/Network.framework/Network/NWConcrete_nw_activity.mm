@interface NWConcrete_nw_activity
- (NSString)description;
- (char)initWithToken:(void *)token;
- (id).cxx_construct;
- (void)dealloc;
@end

@implementation NWConcrete_nw_activity

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 64) &= ~1u;
  *(self + 20) = 0;
  *(self + 11) = 0;
  *(self + 96) &= ~1u;
  *(self + 26) = 0;
  return self;
}

- (NSString)description
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__NWConcrete_nw_activity_description__block_invoke;
  v11[3] = &unk_1E6A360A8;
  v11[4] = self;
  v3 = _Block_copy(v11);
  os_unfair_lock_lock(&self->description_cache.mutex.m_mutex);
  m_obj = self->description_cache.description.m_obj;
  if (!m_obj)
  {
    v3[2](__p, v3);
    if (v13 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    v6 = CFStringCreateWithCString(0, v5, 0x8000100u);
    v7 = self->description_cache.description.m_obj;
    if ((*(&self->description_cache.description + 8) & 1) != 0 && v7)
    {
      self->description_cache.description.m_obj = 0;

      v7 = self->description_cache.description.m_obj;
    }

    self->description_cache.description.m_obj = 0;

    v8 = self->description_cache.description.m_obj;
    self->description_cache.description.m_obj = v6;

    *(&self->description_cache.description + 8) |= 1u;
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    m_obj = self->description_cache.description.m_obj;
  }

  v9 = m_obj;
  os_unfair_lock_unlock(&self->description_cache.mutex.m_mutex);

  return v9;
}

- (void)dealloc
{
  underlying_error_domain_string = self->underlying_error_domain_string;
  if (underlying_error_domain_string)
  {
    free(underlying_error_domain_string);
    self->underlying_error_domain_string = 0;
  }

  v4.receiver = self;
  v4.super_class = NWConcrete_nw_activity;
  [(NWConcrete_nw_activity *)&v4 dealloc];
}

- (char)initWithToken:(void *)token
{
  v20 = *MEMORY[0x1E69E9840];
  if (!token)
  {
    return 0;
  }

  v17.receiver = token;
  v17.super_class = NWConcrete_nw_activity;
  v3 = objc_msgSendSuper2(&v17, sel_init);
  v4 = v3;
  if (!v3)
  {
    v7 = __nwlog_obj();
    *buf = 136446210;
    *v19 = "[NWConcrete_nw_activity initWithToken:]";
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
          *v19 = "[NWConcrete_nw_activity initWithToken:]";
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
            *v19 = "[NWConcrete_nw_activity initWithToken:]";
            *&v19[8] = 2082;
            *&v19[10] = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v12, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_26;
        }

        if (v13)
        {
          *buf = 136446210;
          *v19 = "[NWConcrete_nw_activity initWithToken:]";
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
          *v19 = "[NWConcrete_nw_activity initWithToken:]";
          _os_log_impl(&dword_181A37000, v9, v14, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_26:
    if (v8)
    {
      free(v8);
    }

    return 0;
  }

  *(v3 + 8) = *a2;
  v3[140] |= 6u;
  if (nw_activity_should_log(v3))
  {
    if (__nwlog_activity_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_activity_log::onceToken, &__block_literal_global_16_47419);
    }

    v5 = gactivityLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *v19 = 16;
      *&v19[4] = 2098;
      *&v19[6] = v4 + 8;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEFAULT, "Create activity <nw_activity [%{public,uuid_t}.16P] (lightweight)>", buf, 0x12u);
    }
  }

  return v4;
}

@end