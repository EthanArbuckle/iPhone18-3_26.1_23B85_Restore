@interface NEIKEv2FQDNIdentifier
- (NEIKEv2FQDNIdentifier)initWithFQDN:(id)n;
@end

@implementation NEIKEv2FQDNIdentifier

- (NEIKEv2FQDNIdentifier)initWithFQDN:(id)n
{
  v11 = *MEMORY[0x1E69E9840];
  if (n)
  {
    v4 = [n dataUsingEncoding:4];
    self = [(NEIKEv2Identifier *)self initWithIdentifierData:v4];

    selfCopy = self;
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

    selfCopy = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end