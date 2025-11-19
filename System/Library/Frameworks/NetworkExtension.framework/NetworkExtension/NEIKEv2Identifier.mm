@interface NEIKEv2Identifier
+ (NEIKEv2NULLIdentifier)createIdentifierWithType:(void *)a3 data:;
- (BOOL)isEqual:(id)a3;
- (NSString)stringValue;
- (id)copyShortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initWithIdentifierData:(void *)a1;
- (unint64_t)hash;
@end

@implementation NEIKEv2Identifier

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && [v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(NEIKEv2Identifier *)self identifierType];
    if (v6 == [v5 identifierType])
    {
      v7 = [(NEIKEv2Identifier *)self identifierData];
      v8 = [v5 identifierData];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NEIKEv2Identifier *)self identifierData];
  v4 = [v3 hash];
  v5 = [(NEIKEv2Identifier *)self identifierType];

  return v5 ^ v4;
}

- (NSString)stringValue
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(NEIKEv2Identifier *)self identifierData];
  v5 = [v3 initWithData:v4 encoding:4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(NEIKEv2Identifier *)self identifierType];
  v5 = [(NEIKEv2Identifier *)self identifierData];
  v6 = [NEIKEv2Identifier createIdentifierWithType:v4 data:v5];

  return v6;
}

+ (NEIKEv2NULLIdentifier)createIdentifierWithType:(void *)a3 data:
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_self();
  if (a2 <= 4)
  {
    switch(a2)
    {
      case 1:
        goto LABEL_15;
      case 2:
        v21 = [NEIKEv2FQDNIdentifier alloc];
        v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
        v7 = [(NEIKEv2FQDNIdentifier *)v21 initWithFQDN:v6];
        goto LABEL_24;
      case 3:
        v8 = [NEIKEv2UserFQDNIdentifier alloc];
        v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
        v7 = [(NEIKEv2UserFQDNIdentifier *)v8 initWithUserFQDN:v6];
        goto LABEL_24;
    }
  }

  else
  {
    if (a2 <= 10)
    {
      if (a2 != 5)
      {
        if (a2 == 9)
        {
          v5 = [NEIKEv2ASN1DNIdentifier alloc];
          v6 = [v4 copy];
          v7 = [(NEIKEv2ASN1DNIdentifier *)v5 initWithData:v6];
LABEL_24:
          v19 = v7;

          goto LABEL_37;
        }

        goto LABEL_20;
      }

LABEL_15:
      v13 = [NEIKEv2AddressIdentifier alloc];
      v14 = v4;
      v15 = v14;
      if (!v13)
      {
        v19 = 0;
        goto LABEL_36;
      }

      if (!v14)
      {
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          *v28 = 136315138;
          *&v28[4] = "[NEIKEv2AddressIdentifier initWithAddressData:identifierType:]";
          _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, "%s called with null addressData", v28, 0xCu);
        }

        goto LABEL_34;
      }

      if (a2 == 5)
      {
        LODWORD(v29) = 0;
        if ([v14 length] == 16)
        {
          *v28 = 7708;
          v16 = &v28[8];
          v17 = v15;
          v18 = 16;
          goto LABEL_27;
        }

        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }
      }

      else
      {
        if ([v14 length] == 4)
        {
          *v28 = 528;
          v16 = &v28[4];
          v17 = v15;
          v18 = 4;
LABEL_27:
          [v17 getBytes:v16 length:{v18, *v28}];
          v22 = [MEMORY[0x1E6977E08] endpointWithAddress:v28];
          v23 = [(NEIKEv2Identifier *)v13 initWithIdentifierData:v15];
          v24 = v23;
          if (v23)
          {
            objc_storeStrong(v23 + 3, v22);
            v24[2] = a2;
          }

          v13 = v24;

          v19 = v13;
          goto LABEL_35;
        }

        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
LABEL_40:
          *buf = 134217984;
          v31 = [v15 length];
          _os_log_error_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_ERROR, "Invalid address length %zu", buf, 0xCu);
        }
      }

LABEL_34:

      v19 = 0;
LABEL_35:

LABEL_36:
      goto LABEL_37;
    }

    if (a2 == 11)
    {
      v20 = [NEIKEv2KeyIDIdentifier alloc];
      v6 = [v4 copy];
      v7 = [(NEIKEv2KeyIDIdentifier *)v20 initWithKeyID:v6];
      goto LABEL_24;
    }

    if (a2 == 13)
    {
      if (![v4 length])
      {
        v19 = objc_alloc_init(NEIKEv2NULLIdentifier);
        goto LABEL_37;
      }

      v9 = ne_log_obj();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      *v28 = 0;
      v10 = "NULL identifier should not contain data";
      v11 = v9;
      v12 = 2;
      goto LABEL_39;
    }
  }

LABEL_20:
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v28 = 67109120;
    *&v28[4] = a2;
    v10 = "Unknown identifier type %u";
    v11 = v9;
    v12 = 8;
LABEL_39:
    _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, v10, v28, v12);
  }

LABEL_21:

  v19 = 0;
LABEL_37:

  v26 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)initWithIdentifierData:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = NEIKEv2Identifier;
    v4 = objc_msgSendSuper2(&v10, sel_init);
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      v7 = *(v5 + 1);
      *(v5 + 1) = v6;
    }

    else
    {
      v7 = ne_log_obj();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        v9[0] = 0;
        _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "[super init] failed", v9, 2u);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyShortDescription
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 typeDescription];
    if ([v1 identifierType] == 13)
    {
      v1 = v2;
    }

    else
    {
      v3 = [v1 stringValue];
      if (!v3)
      {
        v4 = [v1 identifierData];
        v3 = [v4 base64EncodedStringWithOptions:0];
      }

      v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@", v2, v3];
    }
  }

  return v1;
}

@end