@interface CBApplePayloadTypeInfo
- (BOOL)isEqual:(id)equal;
- (CBApplePayloadTypeInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBApplePayloadTypeInfo

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  xdict = objectCopy;
  if (self->_applePayloadType)
  {
    xpc_dictionary_set_uint64(objectCopy, "apTY", self->_applePayloadType);
    objectCopy = xdict;
  }

  if (self->_rssiThreshold)
  {
    xpc_dictionary_set_int64(xdict, "blRS", self->_rssiThreshold);
    objectCopy = xdict;
  }

  if (self->_maxAge)
  {
    xpc_dictionary_set_uint64(xdict, "mxAg", self->_maxAge);
    objectCopy = xdict;
  }
}

- (id)description
{
  maxAge = self->_maxAge;
  applePayloadType = self->_applePayloadType;
  rssiThreshold = self->_rssiThreshold;
  NSAppendPrintF_safe();
  v2 = 0;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"?";
  }

  v5 = v4;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_7;
  }

  if (equalCopy == self)
  {

    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  v6 = v5;
  applePayloadType = [(CBApplePayloadTypeInfo *)self applePayloadType];
  if (applePayloadType == [(CBApplePayloadTypeInfo *)v6 applePayloadType]&& (v8 = [(CBApplePayloadTypeInfo *)self rssiThreshold], v8 == [(CBApplePayloadTypeInfo *)v6 rssiThreshold]))
  {
    maxAge = [(CBApplePayloadTypeInfo *)self maxAge];
    v10 = maxAge == [(CBApplePayloadTypeInfo *)v6 maxAge];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  applePayloadType = [(CBApplePayloadTypeInfo *)self applePayloadType];
  v4 = [(CBApplePayloadTypeInfo *)self rssiThreshold]^ applePayloadType;
  return v4 ^ [(CBApplePayloadTypeInfo *)self maxAge];
}

- (CBApplePayloadTypeInfo)initWithXPCObject:(id)object error:(id *)error
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
      *v5 = CBErrorF(-6756, "%@ init failed", v39, v40, v41, v42, v43, v44, v46);
    }

    goto LABEL_18;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v45 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v46);
      OUTLINED_FUNCTION_16(v45);
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0();
  v14 = OUTLINED_FUNCTION_3_1();
  if (v14 == 6)
  {
    OUTLINED_FUNCTION_5_4(v14, v15, v16, v17, v18, v19, v20, v21, v46, 0);
  }

  else if (v14 == 5)
  {
    goto LABEL_18;
  }

  v22 = OUTLINED_FUNCTION_1_3();
  if (v22 == 6)
  {
    OUTLINED_FUNCTION_11(v22, v23, v24, v25, v26, v27, v28, v29, v46, 0);
  }

  else if (v22 == 5)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0();
  v30 = OUTLINED_FUNCTION_3_1();
  if (v30 != 6)
  {
    if (v30 != 5)
    {
      goto LABEL_12;
    }

LABEL_18:
    v6 = 0;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_10_1(v30, v31, v32, v33, v34, v35, v36, v37, v46, 0);
LABEL_12:
  v6 = v7;
LABEL_13:

  return v6;
}

@end