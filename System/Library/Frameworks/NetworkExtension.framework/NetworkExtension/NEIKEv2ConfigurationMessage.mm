@interface NEIKEv2ConfigurationMessage
- (NEIKEv2ConfigurationMessage)initWithWithAttributes:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NEIKEv2ConfigurationMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (self)
  {
    configurationType = self->_configurationType;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  configurationType = 0;
  if (v4)
  {
LABEL_3:
    *(v4 + 8) = configurationType;
  }

LABEL_4:
  v8 = objc_alloc(MEMORY[0x1E695DEC8]);
  if (self)
  {
    Property = objc_getProperty(self, v7, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = [v8 initWithArray:Property copyItems:1];
  if (v5)
  {
    objc_setProperty_atomic(v5, v10, v11, 16);
  }

  return v5;
}

- (NEIKEv2ConfigurationMessage)initWithWithAttributes:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NEIKEv2ConfigurationMessage;
  v5 = [(NEIKEv2ConfigurationMessage *)&v12 init];
  v7 = v5;
  if (v5)
  {
    objc_setProperty_atomic(v5, v6, v4, 16);
    v8 = v7;
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_FAULT, "[super init] failed", v11, 2u);
    }
  }

  return v7;
}

@end