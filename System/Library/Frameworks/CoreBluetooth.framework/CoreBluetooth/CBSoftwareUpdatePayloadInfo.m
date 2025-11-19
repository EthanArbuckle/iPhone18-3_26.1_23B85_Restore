@interface CBSoftwareUpdatePayloadInfo
- (CBSoftwareUpdatePayloadInfo)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)description;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation CBSoftwareUpdatePayloadInfo

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  xdict = v4;
  if (self->_softwareUpdateActionType)
  {
    xpc_dictionary_set_uint64(v4, "suA", self->_softwareUpdateActionType);
  }

  softwareUpdateDataBlob = self->_softwareUpdateDataBlob;
  if (softwareUpdateDataBlob)
  {
    v6 = softwareUpdateDataBlob;
    v7 = xdict;
    v8 = softwareUpdateDataBlob;
    v9 = [(NSData *)v8 bytes];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    v11 = [(NSData *)v8 length];

    xpc_dictionary_set_data(v7, "blb", v10, v11);
  }

  softwareUpdateDataMask = self->_softwareUpdateDataMask;
  v13 = xdict;
  if (softwareUpdateDataMask)
  {
    v14 = softwareUpdateDataMask;
    v15 = xdict;
    v16 = softwareUpdateDataMask;
    v17 = [(NSData *)v16 bytes];
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = "";
    }

    v19 = [(NSData *)v16 length];

    xpc_dictionary_set_data(v15, "msk", v18, v19);
    v13 = xdict;
  }
}

- (id)description
{
  softwareUpdateActionType = self->_softwareUpdateActionType;
  if (softwareUpdateActionType > 3)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_1E811FC10[softwareUpdateActionType];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"ActionType: %s, DataBlob: %@, DataMask: %@", v3, self->_softwareUpdateDataBlob, self->_softwareUpdateDataMask];
}

- (CBSoftwareUpdatePayloadInfo)initWithXPCObject:(id)a3 error:(id *)a4
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
      *v5 = CBErrorF(-6756, "%@ init failed", v23, v24, v25, v26, v27, v28, v30);
    }

    goto LABEL_12;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v29 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v30);
      OUTLINED_FUNCTION_16(v29);
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  OUTLINED_FUNCTION_0();
  v14 = OUTLINED_FUNCTION_3_1();
  if (v14 != 6)
  {
    if (v14 != 5)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_4(v14, v15, v16, v17, v18, v19, v20, v21, v30, 0);
LABEL_6:
  CUXPCDecodeNSData();
  CUXPCDecodeNSData();
  v6 = v7;
LABEL_7:

  return v6;
}

@end