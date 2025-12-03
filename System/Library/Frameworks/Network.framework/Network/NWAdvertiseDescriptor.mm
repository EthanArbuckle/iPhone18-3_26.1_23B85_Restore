@interface NWAdvertiseDescriptor
- (NSData)txtRecord;
- (NSString)bonjourServiceDomain;
- (NSString)bonjourServiceName;
- (NSString)bonjourServiceType;
- (NWAdvertiseDescriptor)initWithDescriptor:(id)descriptor;
- (NWAdvertiseDescriptor)initWithName:(id)name type:(id)type domain:(id)domain;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content;
- (void)setTxtRecord:(id)record;
@end

@implementation NWAdvertiseDescriptor

- (void)setTxtRecord:(id)record
{
  recordCopy = record;
  internalDescriptor = [(NWAdvertiseDescriptor *)self internalDescriptor];
  nw_advertise_descriptor_set_txt_record(internalDescriptor, [recordCopy bytes], objc_msgSend(recordCopy, "length"));
}

- (NSData)txtRecord
{
  v7 = 0;
  internalDescriptor = [(NWAdvertiseDescriptor *)self internalDescriptor];
  txt_record = nw_advertise_descriptor_get_txt_record(internalDescriptor, &v7);

  if (txt_record)
  {
    v4 = objc_alloc(MEMORY[0x1E695DEF0]);
    v5 = [v4 initWithBytes:txt_record length:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(NWAdvertiseDescriptor *)self internalDescriptor:*&indent];
  v6 = [v4 stringWithFormat:@"%@", v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  internalDescriptor = [(NWAdvertiseDescriptor *)self internalDescriptor];
  v6 = [v4 initWithDescriptor:internalDescriptor];

  return v6;
}

- (NWAdvertiseDescriptor)initWithDescriptor:(id)descriptor
{
  v30 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    v23.receiver = self;
    v23.super_class = NWAdvertiseDescriptor;
    v6 = [(NWAdvertiseDescriptor *)&v23 init];
    if (v6)
    {
      v7 = v6;
      objc_storeStrong(&v6->_internalDescriptor, descriptor);
      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v27 = "[NWAdvertiseDescriptor initWithDescriptor:]";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v15, &type, &v24))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v27 = "[NWAdvertiseDescriptor initWithDescriptor:]";
        v18 = "%{public}s [super init] failed";
LABEL_36:
        _os_log_impl(&dword_181A37000, v16, v17, v18, buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v16 = __nwlog_obj();
      v17 = type;
      v22 = os_log_type_enabled(v16, type);
      if (backtrace_string)
      {
        if (v22)
        {
          *buf = 136446466;
          v27 = "[NWAdvertiseDescriptor initWithDescriptor:]";
          v28 = 2082;
          v29 = backtrace_string;
          _os_log_impl(&dword_181A37000, v16, v17, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_38;
      }

      if (v22)
      {
        *buf = 136446210;
        v27 = "[NWAdvertiseDescriptor initWithDescriptor:]";
        v18 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v27 = "[NWAdvertiseDescriptor initWithDescriptor:]";
        v18 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_38:
    if (v15)
    {
      free(v15);
    }

    v7 = 0;
    goto LABEL_4;
  }

  v9 = __nwlog_obj();
  *buf = 136446210;
  v27 = "[NWAdvertiseDescriptor initWithDescriptor:]";
  v10 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v10, &type, &v24))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v27 = "[NWAdvertiseDescriptor initWithDescriptor:]";
        v13 = "%{public}s called with null internalDescriptor";
LABEL_29:
        _os_log_impl(&dword_181A37000, v11, v12, v13, buf, 0xCu);
      }
    }

    else
    {
      if (v24 == 1)
      {
        v19 = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v12 = type;
        v20 = os_log_type_enabled(v11, type);
        if (v19)
        {
          if (v20)
          {
            *buf = 136446466;
            v27 = "[NWAdvertiseDescriptor initWithDescriptor:]";
            v28 = 2082;
            v29 = v19;
            _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null internalDescriptor, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v19);
          goto LABEL_31;
        }

        if (!v20)
        {
          goto LABEL_30;
        }

        *buf = 136446210;
        v27 = "[NWAdvertiseDescriptor initWithDescriptor:]";
        v13 = "%{public}s called with null internalDescriptor, no backtrace";
        goto LABEL_29;
      }

      v11 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v11, type))
      {
        *buf = 136446210;
        v27 = "[NWAdvertiseDescriptor initWithDescriptor:]";
        v13 = "%{public}s called with null internalDescriptor, backtrace limit exceeded";
        goto LABEL_29;
      }
    }

LABEL_30:
  }

LABEL_31:
  if (v10)
  {
    free(v10);
  }

  v7 = 0;
LABEL_4:

  return v7;
}

- (NSString)bonjourServiceName
{
  internalDescriptor = [(NWAdvertiseDescriptor *)self internalDescriptor];
  bonjour_name = nw_advertise_descriptor_get_bonjour_name(internalDescriptor);

  if (bonjour_name)
  {
    v4 = nw_nsstring(bonjour_name);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)bonjourServiceType
{
  internalDescriptor = [(NWAdvertiseDescriptor *)self internalDescriptor];
  bonjour_type = nw_advertise_descriptor_get_bonjour_type(internalDescriptor);

  if (bonjour_type)
  {
    v4 = nw_nsstring(bonjour_type);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)bonjourServiceDomain
{
  internalDescriptor = [(NWAdvertiseDescriptor *)self internalDescriptor];
  bonjour_domain = nw_advertise_descriptor_get_bonjour_domain(internalDescriptor);

  if (bonjour_domain)
  {
    v4 = nw_nsstring(bonjour_domain);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NWAdvertiseDescriptor)initWithName:(id)name type:(id)type domain:(id)domain
{
  v37 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  if (typeCopy)
  {
    v30.receiver = self;
    v30.super_class = NWAdvertiseDescriptor;
    v11 = [(NWAdvertiseDescriptor *)&v30 init];
    if (v11)
    {
      v12 = v11;
      bonjour_service = nw_advertise_descriptor_create_bonjour_service([nameCopy UTF8String], objc_msgSend(typeCopy, "UTF8String"), objc_msgSend(domainCopy, "UTF8String"));
      internalDescriptor = v12->_internalDescriptor;
      v12->_internalDescriptor = bonjour_service;

      goto LABEL_4;
    }

    v21 = __nwlog_obj();
    *buf = 136446210;
    v34 = "[NWAdvertiseDescriptor initWithName:type:domain:]";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v31 = 0;
    if (!__nwlog_fault(v22, &type, &v31))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      typeCopy4 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v34 = "[NWAdvertiseDescriptor initWithName:type:domain:]";
        v25 = "%{public}s [super init] failed";
LABEL_36:
        _os_log_impl(&dword_181A37000, v23, typeCopy4, v25, buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      typeCopy4 = type;
      v29 = os_log_type_enabled(v23, type);
      if (backtrace_string)
      {
        if (v29)
        {
          *buf = 136446466;
          v34 = "[NWAdvertiseDescriptor initWithName:type:domain:]";
          v35 = 2082;
          v36 = backtrace_string;
          _os_log_impl(&dword_181A37000, v23, typeCopy4, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_38;
      }

      if (v29)
      {
        *buf = 136446210;
        v34 = "[NWAdvertiseDescriptor initWithName:type:domain:]";
        v25 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_36;
      }
    }

    else
    {
      v23 = __nwlog_obj();
      typeCopy4 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        v34 = "[NWAdvertiseDescriptor initWithName:type:domain:]";
        v25 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_36;
      }
    }

LABEL_38:
    if (v22)
    {
      free(v22);
    }

    v12 = 0;
    goto LABEL_4;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v34 = "[NWAdvertiseDescriptor initWithName:type:domain:]";
  v17 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v31 = 0;
  if (__nwlog_fault(v17, &type, &v31))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v18 = __nwlog_obj();
      typeCopy7 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v34 = "[NWAdvertiseDescriptor initWithName:type:domain:]";
        v20 = "%{public}s called with null type";
LABEL_29:
        _os_log_impl(&dword_181A37000, v18, typeCopy7, v20, buf, 0xCu);
      }
    }

    else
    {
      if (v31 == 1)
      {
        v26 = __nw_create_backtrace_string();
        v18 = __nwlog_obj();
        typeCopy7 = type;
        v27 = os_log_type_enabled(v18, type);
        if (v26)
        {
          if (v27)
          {
            *buf = 136446466;
            v34 = "[NWAdvertiseDescriptor initWithName:type:domain:]";
            v35 = 2082;
            v36 = v26;
            _os_log_impl(&dword_181A37000, v18, typeCopy7, "%{public}s called with null type, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v26);
          goto LABEL_31;
        }

        if (!v27)
        {
          goto LABEL_30;
        }

        *buf = 136446210;
        v34 = "[NWAdvertiseDescriptor initWithName:type:domain:]";
        v20 = "%{public}s called with null type, no backtrace";
        goto LABEL_29;
      }

      v18 = __nwlog_obj();
      typeCopy7 = type;
      if (os_log_type_enabled(v18, type))
      {
        *buf = 136446210;
        v34 = "[NWAdvertiseDescriptor initWithName:type:domain:]";
        v20 = "%{public}s called with null type, backtrace limit exceeded";
        goto LABEL_29;
      }
    }

LABEL_30:
  }

LABEL_31:
  if (v17)
  {
    free(v17);
  }

  v12 = 0;
LABEL_4:

  return v12;
}

@end