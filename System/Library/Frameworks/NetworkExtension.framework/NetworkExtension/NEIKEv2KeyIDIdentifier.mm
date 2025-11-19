@interface NEIKEv2KeyIDIdentifier
- (NEIKEv2KeyIDIdentifier)initWithKeyID:(id)a3;
- (NEIKEv2KeyIDIdentifier)initWithKeyIDString:(id)a3;
@end

@implementation NEIKEv2KeyIDIdentifier

- (NEIKEv2KeyIDIdentifier)initWithKeyIDString:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];
  v5 = [(NEIKEv2KeyIDIdentifier *)self initWithKeyID:v4];

  return v5;
}

- (NEIKEv2KeyIDIdentifier)initWithKeyID:(id)a3
{
  v3 = self;
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [(NEIKEv2Identifier *)self initWithIdentifierData:a3];
    v4 = v3;
  }

  else
  {
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = "[NEIKEv2KeyIDIdentifier initWithKeyID:]";
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "%s called with null keyID", &v8, 0xCu);
    }

    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

@end