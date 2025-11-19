@interface NEIKEv2CustomPayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)a3;
- (unint64_t)type;
@end

@implementation NEIKEv2CustomPayload

- (BOOL)parsePayloadData:(id)a3
{
  v5 = [a3 copy];
  if (self)
  {
    objc_setProperty_atomic(self, v4, v5, 40);
  }

  return [(NEIKEv2CustomPayload *)self hasRequiredFields];
}

- (BOOL)generatePayloadData
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v9 = [0 hasRequiredFields];
    Property = 0;
    if (v9)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (!self->super._payloadDataVector)
  {
    if ([(NEIKEv2CustomPayload *)self hasRequiredFields])
    {
      Property = objc_getProperty(self, v4, 40, 1);
LABEL_6:
      v13[0] = Property;
      v6 = MEMORY[0x1E695DEC8];
      v7 = Property;
      v3 = 1;
      v8 = [v6 arrayWithObjects:v13 count:1];

      [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:v8];
LABEL_11:

      goto LABEL_12;
    }

LABEL_8:
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "Custom payload missing required fields", v12, 2u);
    }

    v3 = 0;
    goto LABEL_11;
  }

  v3 = 1;
LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    if (self->_customType)
    {
      LOBYTE(self) = objc_getProperty(self, a2, 40, 1) != 0;
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

- (unint64_t)type
{
  if (self)
  {
    return *(self + 32);
  }

  return self;
}

@end