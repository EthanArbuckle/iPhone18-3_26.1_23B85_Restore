@interface NEIKEv2KeyExchangePayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)a3;
@end

@implementation NEIKEv2KeyExchangePayload

- (BOOL)parsePayloadData:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length] <= 3)
  {
    v13 = ne_log_obj();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = "[NEIKEv2KeyExchangePayload parsePayloadData:]";
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "BACKTRACE %s called with null (payloadData.length >= sizeof(ikev2_payload_ke_hdr_t))", &v14, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v14 = 0;
    [v4 getBytes:&v14 length:4];
    v5 = [NEIKEv2KEMProtocol alloc];
    v7 = [(NEIKEv2KEMProtocol *)v5 initWithMethod:bswap32(v14) >> 16];
    if (self)
    {
      objc_setProperty_atomic(self, v6, v7, 32);
    }

    v9 = [v4 subdataWithRange:{4, objc_msgSend(v4, "length") - 4}];
    if (self)
    {
      objc_setProperty_atomic(self, v8, v9, 40);
    }

    v10 = [(NEIKEv2KeyExchangePayload *)self hasRequiredFields];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)generatePayloadData
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (self->super._payloadDataVector)
    {
      v3 = 1;
      goto LABEL_12;
    }

    if ([(NEIKEv2KeyExchangePayload *)self hasRequiredFields])
    {
      *v14 = 0;
      *v14 = bswap32([objc_getProperty(self v4]) >> 16;
      v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v14 length:4];
      objc_storeStrong(&self->super._payloadSubHeader, v5);

      Property = objc_getProperty(self, v6, 40, 1);
LABEL_6:
      v15[0] = Property;
      v8 = MEMORY[0x1E695DEC8];
      v9 = Property;
      v3 = 1;
      v10 = [v8 arrayWithObjects:v15 count:{1, *v14}];

      [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:v10];
      goto LABEL_12;
    }
  }

  else if ([0 hasRequiredFields])
  {
    *v14 = 0;
    *v14 = bswap32([0 method]) >> 16;

    Property = 0;
    goto LABEL_6;
  }

  v11 = ne_log_obj();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v14 = 0;
    _os_log_error_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_ERROR, "KE payload missing required fields", v14, 2u);
  }

  v3 = 0;
LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)hasRequiredFields
{
  v2 = self;
  if (self)
  {
    v3 = objc_getProperty(self, a2, 32, 1);
    if (v3)
    {
      v5 = v3;
      LOBYTE(v2) = objc_getProperty(v2, v4, 40, 1) != 0;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2;
}

@end