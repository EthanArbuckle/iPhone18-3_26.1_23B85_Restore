@interface NEIKEv2ConfigurationAttribute
- (NSString)attributeName;
- (id)initEmptyRequest;
@end

@implementation NEIKEv2ConfigurationAttribute

- (NSString)attributeName
{
  if (self)
  {
    self = objc_getProperty(self, a2, 8, 1);
    v2 = vars8;
  }

  return self;
}

- (id)initEmptyRequest
{
  v8.receiver = self;
  v8.super_class = NEIKEv2ConfigurationAttribute;
  v2 = [(NEIKEv2ConfigurationAttribute *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "[super init] failed", v7, 2u);
    }
  }

  return v3;
}

@end