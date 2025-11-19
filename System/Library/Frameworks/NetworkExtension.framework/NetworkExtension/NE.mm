@interface NE
@end

@implementation NE

void ___NE_DNSMessageExtractDomainNameString_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = dlopen("/usr/lib/libmdns.dylib", 5);
  _NE_DNSMessageExtractDomainNameString_mdnsImage = v0;
  if (!v0)
  {
    v5 = dlerror();
    v1 = ne_log_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      v7 = 136315138;
      v8 = v5;
      v2 = "dlopen libmdns failed: %s";
      v3 = v1;
      v4 = 12;
      goto LABEL_9;
    }

LABEL_6:

    goto LABEL_7;
  }

  _NE_DNSMessageExtractDomainNameString__mdns_DNSMessageExtractDomainNameString = dlsym(v0, "DNSMessageExtractDomainNameString");
  if (!_NE_DNSMessageExtractDomainNameString__mdns_DNSMessageExtractDomainNameString)
  {
    v1 = ne_log_obj();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v7) = 0;
      v2 = "dlsym libmdns DNSMessageExtractDomainNameString";
      v3 = v1;
      v4 = 2;
LABEL_9:
      _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, v2, &v7, v4);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

LABEL_7:
  v6 = *MEMORY[0x1E69E9840];
}

@end