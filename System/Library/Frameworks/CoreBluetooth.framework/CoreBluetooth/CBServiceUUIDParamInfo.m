@interface CBServiceUUIDParamInfo
- (BOOL)isEqual:(id)a3;
- (CBServiceUUIDParamInfo)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation CBServiceUUIDParamInfo

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  serviceUUID = self->_serviceUUID;
  xdict = v4;
  if (serviceUUID)
  {
    v6 = serviceUUID;
    v7 = [(NSData *)v6 bytes];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = "";
    }

    v9 = [(NSData *)v6 length];

    xpc_dictionary_set_data(xdict, "sUID", v8, v9);
  }

  blobData = self->_blobData;
  if (blobData)
  {
    v11 = blobData;
    v12 = xdict;
    v13 = blobData;
    v14 = [(NSData *)v13 bytes];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = "";
    }

    v16 = [(NSData *)v13 length];

    xpc_dictionary_set_data(v12, "uBlb", v15, v16);
  }

  maskData = self->_maskData;
  v18 = xdict;
  if (maskData)
  {
    v19 = maskData;
    v20 = xdict;
    v21 = maskData;
    v22 = [(NSData *)v21 bytes];
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = "";
    }

    v24 = [(NSData *)v21 length];

    xpc_dictionary_set_data(v20, "uMsk", v23, v24);
    v18 = xdict;
  }
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"ServiceUUID %@, blob %@, mask: %@", self->_serviceUUID, self->_blobData, self->_maskData];

  return v2;
}

- (unint64_t)hash
{
  v3 = [(CBServiceUUIDParamInfo *)self serviceUUID];
  v4 = [v3 hash];
  v5 = [(CBServiceUUIDParamInfo *)self blobData];
  v6 = [v5 hash] ^ v4;
  v7 = [(CBServiceUUIDParamInfo *)self maskData];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v13 = 1;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(CBServiceUUIDParamInfo *)self serviceUUID];
      v8 = [(CBServiceUUIDParamInfo *)v6 serviceUUID];
      v9 = v7;
      v10 = v8;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        if ((v9 != 0) == (v10 == 0))
        {
          goto LABEL_19;
        }

        v12 = [v9 isEqual:v10];

        if ((v12 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v14 = [(CBServiceUUIDParamInfo *)self blobData];
      v15 = [(CBServiceUUIDParamInfo *)v6 blobData];
      v9 = v14;
      v16 = v15;
      v11 = v16;
      if (v9 == v16)
      {
      }

      else
      {
        if ((v9 != 0) == (v16 == 0))
        {
          goto LABEL_19;
        }

        v17 = [v9 isEqual:v16];

        if ((v17 & 1) == 0)
        {
LABEL_14:
          v13 = 0;
LABEL_21:

          goto LABEL_22;
        }
      }

      v18 = [(CBServiceUUIDParamInfo *)self maskData];
      v19 = [(CBServiceUUIDParamInfo *)v6 maskData];
      v9 = v18;
      v20 = v19;
      v11 = v20;
      if (v9 == v20)
      {
        v13 = 1;
        goto LABEL_20;
      }

      if ((v9 != 0) != (v20 == 0))
      {
        v13 = [v9 isEqual:v20];
LABEL_20:

        goto LABEL_21;
      }

LABEL_19:
      v13 = 0;
      goto LABEL_20;
    }
  }

  v13 = 0;
LABEL_22:

  return v13;
}

- (CBServiceUUIDParamInfo)initWithXPCObject:(id)a3 error:(id *)a4
{
  OUTLINED_FUNCTION_19(self, a2, a3);
  v7 = OUTLINED_FUNCTION_18();
  if (!v7)
  {
    if (v5)
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_3_4();
      *v5 = CBErrorF(-6756, "%@ init failed", v15, v16, v17, v18, v19, v20, v22);
    }

    goto LABEL_12;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v21 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v22);
      OUTLINED_FUNCTION_16(v21);
      goto LABEL_7;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_12;
  }

  v6 = v7;
LABEL_7:

  return v6;
}

@end