@interface CBServiceUUIDParamInfo
- (BOOL)isEqual:(id)equal;
- (CBServiceUUIDParamInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBServiceUUIDParamInfo

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  serviceUUID = self->_serviceUUID;
  xdict = objectCopy;
  if (serviceUUID)
  {
    v6 = serviceUUID;
    bytes = [(NSData *)v6 bytes];
    if (bytes)
    {
      v8 = bytes;
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
    bytes2 = [(NSData *)v13 bytes];
    if (bytes2)
    {
      v15 = bytes2;
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
    bytes3 = [(NSData *)v21 bytes];
    if (bytes3)
    {
      v23 = bytes3;
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
  serviceUUID = [(CBServiceUUIDParamInfo *)self serviceUUID];
  v4 = [serviceUUID hash];
  blobData = [(CBServiceUUIDParamInfo *)self blobData];
  v6 = [blobData hash] ^ v4;
  maskData = [(CBServiceUUIDParamInfo *)self maskData];
  v8 = [maskData hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (equalCopy == self)
    {
      v13 = 1;
      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      serviceUUID = [(CBServiceUUIDParamInfo *)self serviceUUID];
      serviceUUID2 = [(CBServiceUUIDParamInfo *)v6 serviceUUID];
      v9 = serviceUUID;
      v10 = serviceUUID2;
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

      blobData = [(CBServiceUUIDParamInfo *)self blobData];
      blobData2 = [(CBServiceUUIDParamInfo *)v6 blobData];
      v9 = blobData;
      v16 = blobData2;
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

      maskData = [(CBServiceUUIDParamInfo *)self maskData];
      maskData2 = [(CBServiceUUIDParamInfo *)v6 maskData];
      v9 = maskData;
      v20 = maskData2;
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

- (CBServiceUUIDParamInfo)initWithXPCObject:(id)object error:(id *)error
{
  OUTLINED_FUNCTION_19(self, a2, object);
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