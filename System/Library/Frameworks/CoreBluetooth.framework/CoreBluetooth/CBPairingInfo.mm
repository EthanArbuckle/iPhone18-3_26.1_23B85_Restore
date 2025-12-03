@interface CBPairingInfo
- (CBPairingInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBPairingInfo

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  device = self->_device;
  CUXPCEncodeObject();
  if (self->_error)
  {
    CUXPCEncodeNSError();
  }

  flags = self->_flags;
  if (flags)
  {
    xpc_dictionary_set_uint64(objectCopy, "prFl", flags);
  }

  pin = self->_pin;
  xdict = objectCopy;
  uTF8String = [(NSString *)pin UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(xdict, "prPN", uTF8String);
  }

  pairingType = self->_pairingType;
  if (pairingType)
  {
    xpc_dictionary_set_int64(xdict, "prTy", pairingType);
  }
}

- (id)description
{
  v3 = [objc_opt_class() description];
  device = self->_device;
  pin = self->_pin;
  flags = self->_flags;
  v7 = CUPrintFlags32();
  pairingType = self->_pairingType;
  if (pairingType <= 5)
  {
    v9 = off_1E811FC30[pairingType];
  }

  error = self->_error;
  v15 = CUPrintNSError();
  NSAppendPrintF_safe();
  v11 = 0;

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"?";
  }

  v13 = v12;

  return v12;
}

- (CBPairingInfo)initWithXPCObject:(id)object error:(id *)error
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
      *v5 = CBErrorF(-6756, "%@ init failed", v20, v21, v22, v23, v24, v25, v26);
    }

    goto LABEL_20;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v26);
      *v5 = v18 = 0;
      goto LABEL_14;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_20;
  }

  v14 = CUXPCDecodeNSError();
  v15 = 0;
  if (!v14)
  {
    goto LABEL_15;
  }

  objc_storeStrong((v7 + 24), 0);
  v16 = OUTLINED_FUNCTION_5();
  if (v16 == 6)
  {
    *(v7 + 8) = 0;
  }

  else if (v16 == 5)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_15;
  }

  v17 = CUXPCDecodeSInt64RangedEx();
  if (v17 != 6)
  {
    if (v17 != 5)
    {
      goto LABEL_12;
    }

LABEL_15:
    v18 = 0;
    goto LABEL_13;
  }

  *(v7 + 32) = 0;
LABEL_12:
  v18 = v7;
LABEL_13:

LABEL_14:
  return v18;
}

@end