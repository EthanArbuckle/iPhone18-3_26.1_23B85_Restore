@interface NEIKEv2SPI
- (NEIKEv2SPI)init;
@end

@implementation NEIKEv2SPI

- (NEIKEv2SPI)init
{
  v8.receiver = self;
  v8.super_class = NEIKEv2SPI;
  v2 = [(NEIKEv2SPI *)&v8 init];
  if (!v2)
  {
    v3 = ne_log_obj();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_4;
    }

    *v7 = 0;
    v6 = "[super init] failed";
    goto LABEL_8;
  }

  if (![(NEIKEv2SPI *)v2 isMemberOfClass:objc_opt_class()])
  {
    v4 = v2;
    goto LABEL_6;
  }

  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    v6 = "Cannot instantiate NEIKEv2SPI directly";
LABEL_8:
    _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, v6, v7, 2u);
  }

LABEL_4:

  v4 = 0;
LABEL_6:

  return v4;
}

@end