@interface NEIKEv2AddressIdentifier
- (NEIKEv2AddressIdentifier)initWithAddress:(id)a3;
- (id)stringValue;
@end

@implementation NEIKEv2AddressIdentifier

- (id)stringValue
{
  v2 = [(NEIKEv2AddressIdentifier *)self address];
  v3 = [v2 hostname];

  return v3;
}

- (NEIKEv2AddressIdentifier)initWithAddress:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v18 = 136315138;
      v19 = "[NEIKEv2AddressIdentifier initWithAddress:]";
      _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "%s called with null address", &v18, 0xCu);
    }

    goto LABEL_11;
  }

  v7 = [v5 addressFamily];
  if (v7 == 2)
  {
    v8 = 1;
    v10 = 4;
    v9 = 4;
    goto LABEL_6;
  }

  if (v7 != 30)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      LODWORD(v19) = [v6 addressFamily];
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Unknown address family %u", &v18, 8u);
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  v8 = 5;
  v9 = 16;
  v10 = 8;
LABEL_6:
  v11 = [v6 address];
  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v11 + v10 length:v9];
  v13 = [(NEIKEv2Identifier *)self initWithIdentifierData:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 3, a3);
    v14[2] = v8;
  }

  self = v14;
  v15 = self;
LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

@end