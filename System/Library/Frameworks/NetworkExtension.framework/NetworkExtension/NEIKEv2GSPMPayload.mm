@interface NEIKEv2GSPMPayload
- (BOOL)generatePayloadData;
- (BOOL)hasRequiredFields;
- (BOOL)parsePayloadData:(id)a3;
- (void)setGspmData:(uint64_t)a1;
@end

@implementation NEIKEv2GSPMPayload

- (BOOL)parsePayloadData:(id)a3
{
  v4 = [a3 copy];
  [(NEIKEv2GSPMPayload *)self setGspmData:v4];

  return [(NEIKEv2GSPMPayload *)self hasRequiredFields];
}

- (void)setGspmData:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

- (BOOL)generatePayloadData
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    v8 = [0 hasRequiredFields];
    gspmData = 0;
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (!self->super._payloadDataVector)
  {
    if ([(NEIKEv2GSPMPayload *)self hasRequiredFields])
    {
      gspmData = self->_gspmData;
LABEL_6:
      v12[0] = gspmData;
      v5 = MEMORY[0x1E695DEC8];
      v6 = gspmData;
      v3 = 1;
      v7 = [v5 arrayWithObjects:v12 count:1];
      [(NEIKEv2KeyExchangeHandler *)self setSharedSecret:v7];

LABEL_11:
      goto LABEL_12;
    }

LABEL_8:
    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_ERROR, "GSPM payload missing required fields", v11, 2u);
    }

    v3 = 0;
    goto LABEL_11;
  }

  v3 = 1;
LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)hasRequiredFields
{
  if (self)
  {
    gspmData = self->_gspmData;
  }

  else
  {
    gspmData = 0;
  }

  return gspmData != 0;
}

@end