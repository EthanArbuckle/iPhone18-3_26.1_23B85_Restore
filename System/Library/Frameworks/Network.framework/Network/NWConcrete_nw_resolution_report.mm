@interface NWConcrete_nw_resolution_report
- (NSString)description;
- (NWConcrete_nw_resolution_report)init;
- (void)dealloc;
@end

@implementation NWConcrete_nw_resolution_report

- (NSString)description
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = Mutable;
  protocol = self->protocol;
  if (protocol > 4)
  {
    v6 = "invalid";
  }

  else
  {
    v6 = off_1E6A2C890[protocol];
  }

  v7 = self->source - 1;
  if (v7 > 2)
  {
    v8 = "invalid";
  }

  else
  {
    v8 = off_1E6A2C8B8[v7];
  }

  CFStringAppendFormat(Mutable, 0, @"Resolved %u endpoints in %llums using %s from %s", self->endpoint_count, self->milliseconds, v6, v8);
  if (self->provider_name)
  {
    CFStringAppendFormat(v4, 0, @", provider %s", self->provider_name);
  }

  if (self->successful_endpoint)
  {
    CFStringAppendFormat(v4, 0, @", chose %@", self->successful_endpoint);
  }

  if (self->preferred_endpoint)
  {
    CFStringAppendFormat(v4, 0, @", preferred %@", self->preferred_endpoint);
  }

  if (*(self + 70))
  {
    CFStringAppendFormat(v4, 0, @", received SVCB");
  }

  if (self->extended_dns_error_code)
  {
    CFStringAppendFormat(v4, 0, @", Extended DNS Error %u", self->extended_dns_error_code);
    extended_dns_error_code = self->extended_dns_error_code;
    if (extended_dns_error_code > 0xF)
    {
      if (extended_dns_error_code == 17)
      {
        v10 = "Filtered";
      }

      else
      {
        if (extended_dns_error_code != 16)
        {
          goto LABEL_25;
        }

        v10 = "Censored";
      }
    }

    else
    {
      v10 = "Blocked";
      if (extended_dns_error_code != 4 && extended_dns_error_code != 15)
      {
        goto LABEL_25;
      }
    }

    CFStringAppendFormat(v4, 0, @" (%s)", v10);
  }

LABEL_25:

  return v4;
}

- (void)dealloc
{
  provider_name = self->provider_name;
  if (provider_name)
  {
    free(provider_name);
    self->provider_name = 0;
  }

  extended_dns_error_extra_text = self->extended_dns_error_extra_text;
  if (extended_dns_error_extra_text)
  {
    free(extended_dns_error_extra_text);
    self->extended_dns_error_extra_text = 0;
  }

  v5.receiver = self;
  v5.super_class = NWConcrete_nw_resolution_report;
  [(NWConcrete_nw_resolution_report *)&v5 dealloc];
}

- (NWConcrete_nw_resolution_report)init
{
  v21 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NWConcrete_nw_resolution_report;
  v2 = [(NWConcrete_nw_resolution_report *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    goto LABEL_3;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v18 = "[NWConcrete_nw_resolution_report init]";
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
        v18 = "[NWConcrete_nw_resolution_report init]";
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
          v18 = "[NWConcrete_nw_resolution_report init]";
          v19 = 2082;
          v20 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v11, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v12)
      {
        *buf = 136446210;
        v18 = "[NWConcrete_nw_resolution_report init]";
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
        v18 = "[NWConcrete_nw_resolution_report init]";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v7)
  {
    free(v7);
  }

LABEL_3:

  return v3;
}

@end