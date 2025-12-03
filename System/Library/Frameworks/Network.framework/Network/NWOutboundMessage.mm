@interface NWOutboundMessage
- (NWOutboundMessage)initWithContent:(id)content;
- (double)relativePriority;
- (unint64_t)expirationMilliseconds;
- (void)addAntecedent:(id)antecedent;
- (void)setExpirationMilliseconds:(unint64_t)milliseconds;
- (void)setRelativePriority:(double)priority;
@end

@implementation NWOutboundMessage

- (void)addAntecedent:(id)antecedent
{
  antecedentCopy = antecedent;
  context = [(NWMessage *)self internalContext];
  internalContext = [antecedentCopy internalContext];

  nw_content_context_set_antecedent(context, internalContext);
}

- (void)setRelativePriority:(double)priority
{
  internalContext = [(NWMessage *)self internalContext];
  nw_content_context_set_relative_priority(internalContext, priority);
}

- (double)relativePriority
{
  internalContext = [(NWMessage *)self internalContext];
  relative_priority = nw_content_context_get_relative_priority(internalContext);

  return relative_priority;
}

- (void)setExpirationMilliseconds:(unint64_t)milliseconds
{
  internalContext = [(NWMessage *)self internalContext];
  nw_content_context_set_expiration_milliseconds(internalContext, milliseconds);
}

- (unint64_t)expirationMilliseconds
{
  internalContext = [(NWMessage *)self internalContext];
  expiration_milliseconds = nw_content_context_get_expiration_milliseconds(internalContext);

  return expiration_milliseconds;
}

- (NWOutboundMessage)initWithContent:(id)content
{
  v31 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  if (contentCopy)
  {
    v24.receiver = self;
    v24.super_class = NWOutboundMessage;
    v5 = [(NWOutboundMessage *)&v24 init];
    if (v5)
    {
      self = v5;
      _createDispatchData = [contentCopy _createDispatchData];
      [(NWMessage *)self setInternalContent:_createDispatchData];

      v7 = nw_content_context_create("NWMessage");
      [(NWMessage *)self setInternalContext:v7];

      selfCopy = [(NWMessage *)self internalContext];

      if (selfCopy)
      {
        self = self;
        selfCopy = self;
      }

      goto LABEL_5;
    }

    v15 = __nwlog_obj();
    *buf = 136446210;
    v28 = "[NWOutboundMessage initWithContent:]";
    v16 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v16, &type, &v25))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v28 = "[NWOutboundMessage initWithContent:]";
        v19 = "%{public}s [super init] failed";
LABEL_37:
        _os_log_impl(&dword_181A37000, v17, v18, v19, buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v17 = __nwlog_obj();
      v18 = type;
      v23 = os_log_type_enabled(v17, type);
      if (backtrace_string)
      {
        if (v23)
        {
          *buf = 136446466;
          v28 = "[NWOutboundMessage initWithContent:]";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v17, v18, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_39;
      }

      if (v23)
      {
        *buf = 136446210;
        v28 = "[NWOutboundMessage initWithContent:]";
        v19 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_37;
      }
    }

    else
    {
      v17 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v17, type))
      {
        *buf = 136446210;
        v28 = "[NWOutboundMessage initWithContent:]";
        v19 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_37;
      }
    }

LABEL_39:
    if (v16)
    {
      free(v16);
    }

    self = 0;
    selfCopy = 0;
    goto LABEL_5;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v28 = "[NWOutboundMessage initWithContent:]";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (__nwlog_fault(v11, &type, &v25))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v28 = "[NWOutboundMessage initWithContent:]";
        v14 = "%{public}s called with null content";
LABEL_30:
        _os_log_impl(&dword_181A37000, v12, v13, v14, buf, 0xCu);
      }
    }

    else
    {
      if (v25 == 1)
      {
        v20 = __nw_create_backtrace_string();
        v12 = __nwlog_obj();
        v13 = type;
        v21 = os_log_type_enabled(v12, type);
        if (v20)
        {
          if (v21)
          {
            *buf = 136446466;
            v28 = "[NWOutboundMessage initWithContent:]";
            v29 = 2082;
            v30 = v20;
            _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null content, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v20);
          goto LABEL_32;
        }

        if (!v21)
        {
          goto LABEL_31;
        }

        *buf = 136446210;
        v28 = "[NWOutboundMessage initWithContent:]";
        v14 = "%{public}s called with null content, no backtrace";
        goto LABEL_30;
      }

      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        v28 = "[NWOutboundMessage initWithContent:]";
        v14 = "%{public}s called with null content, backtrace limit exceeded";
        goto LABEL_30;
      }
    }

LABEL_31:
  }

LABEL_32:
  if (v11)
  {
    free(v11);
  }

  selfCopy = 0;
LABEL_5:

  return selfCopy;
}

@end