@interface CBOOBKeyInfo
- (BOOL)isEqual:(id)equal;
- (CBOOBKeyInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (unint64_t)hash;
- (unint64_t)proxyHash;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBOOBKeyInfo

- (unint64_t)hash
{
  if ([(CBOOBKeyInfo *)self keyType])
  {

    return [(CBOOBKeyInfo *)self proxyHash];
  }

  else
  {
    btAddressData = [(CBOOBKeyInfo *)self btAddressData];
    v5 = [btAddressData hash];
    irkData = [(CBOOBKeyInfo *)self irkData];
    v7 = [irkData hash];

    return v7 ^ v5;
  }
}

- (unint64_t)proxyHash
{
  irkData = [(CBOOBKeyInfo *)self irkData];
  v4 = [irkData hash];
  keyType = [(CBOOBKeyInfo *)self keyType];

  return v4 ^ keyType;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  btAddressData = self->_btAddressData;
  xdict = objectCopy;
  if (btAddressData)
  {
    v6 = btAddressData;
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

    xpc_dictionary_set_data(xdict, "btAd", v8, v9);
  }

  if (self->_btAddressType && (xpc_dictionary_set_uint64(xdict, "btAT", self->_btAddressType), (btAddressType = self->_btAddressType) != 0) || (btAddressType = self->_addressType) != 0)
  {
    xpc_dictionary_set_uint64(xdict, "btAT", btAddressType);
  }

  irkData = self->_irkData;
  if (irkData)
  {
    v12 = irkData;
    v13 = xdict;
    v14 = irkData;
    bytes2 = [(NSData *)v14 bytes];
    if (bytes2)
    {
      v16 = bytes2;
    }

    else
    {
      v16 = "";
    }

    v17 = [(NSData *)v14 length];

    xpc_dictionary_set_data(v13, "irkD", v16, v17);
  }

  v18 = xdict;
  if (self->_keyType)
  {
    xpc_dictionary_set_uint64(xdict, "irkT", self->_keyType);
    v18 = xdict;
  }
}

- (id)description
{
  btAddressData = [(CBOOBKeyInfo *)self btAddressData];
  v4 = [btAddressData length];
  btAddressData2 = [(CBOOBKeyInfo *)self btAddressData];
  v6 = btAddressData2;
  if (v4 == 7)
  {
    v7 = [btAddressData2 subdataWithRange:{1, 6}];

    v6 = v7;
  }

  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = CUPrintNSDataAddress();
  v10 = self->_addressType | self->_btAddressType;
  irkData = [(CBOOBKeyInfo *)self irkData];
  v12 = CUPrintNSObjectMasked();
  keyType = self->_keyType;
  v14 = CUPrintFlags32();
  v15 = [v8 initWithFormat:@"Addr %@, AddrType: %x, IRK %@, keyUsage: %@", v9, v10, v12, v14];

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (equalCopy == self)
    {
      v14 = 1;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      addressType = [(CBOOBKeyInfo *)self addressType];
      if (addressType != [(CBOOBKeyInfo *)v6 addressType])
      {
        goto LABEL_18;
      }

      btAddressData = [(CBOOBKeyInfo *)self btAddressData];
      btAddressData2 = [(CBOOBKeyInfo *)v6 btAddressData];
      v10 = btAddressData;
      v11 = btAddressData2;
      v12 = v11;
      if (v10 == v11)
      {
      }

      else
      {
        if ((v10 != 0) == (v11 == 0))
        {
          goto LABEL_17;
        }

        v13 = [v10 isEqual:v11];

        if ((v13 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      btAddressType = [(CBOOBKeyInfo *)self btAddressType];
      if (btAddressType != [(CBOOBKeyInfo *)v6 btAddressType])
      {
        goto LABEL_18;
      }

      irkData = [(CBOOBKeyInfo *)self irkData];
      irkData2 = [(CBOOBKeyInfo *)v6 irkData];
      v10 = irkData;
      v18 = irkData2;
      v12 = v18;
      if (v10 == v18)
      {

LABEL_22:
        keyType = [(CBOOBKeyInfo *)self keyType];
        v14 = keyType == [(CBOOBKeyInfo *)v6 keyType];
        goto LABEL_19;
      }

      if ((v10 != 0) != (v18 == 0))
      {
        v19 = [v10 isEqual:v18];

        if (v19)
        {
          goto LABEL_22;
        }

LABEL_18:
        v14 = 0;
LABEL_19:

        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }
  }

  v14 = 0;
LABEL_20:

  return v14;
}

- (CBOOBKeyInfo)initWithXPCObject:(id)object error:(id *)error
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
      *v5 = CBErrorF(-6756, "%@ init failed", v47, v48, v49, v50, v51, v52, v54);
    }

    goto LABEL_13;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v53 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v54);
      OUTLINED_FUNCTION_16(v53);
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0();
  v14 = OUTLINED_FUNCTION_3_1();
  if (v14 == 6)
  {
    OUTLINED_FUNCTION_5_4(v14, v15, v16, v17, v18, v19, v20, v21, v54, 0);
  }

  else if (v14 == 5)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0();
  v22 = OUTLINED_FUNCTION_3_1();
  if (v22 == 6)
  {
    OUTLINED_FUNCTION_5_4(v22, v23, v24, v25, v26, v27, v28, v29, v54, 0);
  }

  else if (v22 == 5)
  {
    OUTLINED_FUNCTION_0();
    v30 = OUTLINED_FUNCTION_3_1();
    if (v30 == 6)
    {
      OUTLINED_FUNCTION_11(v30, v31, v32, v33, v34, v35, v36, v37, v54, 0);
    }

    else if (v30 == 5)
    {
      goto LABEL_13;
    }
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0();
  v38 = OUTLINED_FUNCTION_3_1();
  if (v38 == 6)
  {
    OUTLINED_FUNCTION_10_1(v38, v39, v40, v41, v42, v43, v44, v45, v54, 0);
    goto LABEL_18;
  }

  if (v38 == 5)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_22;
  }

LABEL_18:
  if ([*(v7 + 16) length] == 7 && !(*(v7 + 9) | *(v7 + 8)))
  {
    *(v7 + 9) = *[*(v7 + 16) bytes];
  }

  v6 = v7;
LABEL_22:

  return v6;
}

@end