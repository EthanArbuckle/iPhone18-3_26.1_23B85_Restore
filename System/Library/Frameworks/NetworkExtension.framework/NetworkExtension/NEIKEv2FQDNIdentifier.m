@interface NEIKEv2FQDNIdentifier
- (NEIKEv2FQDNIdentifier)initWithFQDN:(id)a3;
@end

@implementation NEIKEv2FQDNIdentifier

- (NEIKEv2FQDNIdentifier)initWithFQDN:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [a3 dataUsingEncoding:4];
    self = [(NEIKEv2Identifier *)self initWithIdentifierData:v4];

    v5 = self;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "[NEIKEv2FQDNIdentifier initWithFQDN:]";
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "%s called with null fqdn", &v9, 0xCu);
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

@end