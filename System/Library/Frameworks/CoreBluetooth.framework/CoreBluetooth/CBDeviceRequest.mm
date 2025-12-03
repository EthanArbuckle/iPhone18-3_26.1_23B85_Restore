@interface CBDeviceRequest
- (CBDeviceRequest)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBDeviceRequest

- (id)description
{
  v3 = [objc_opt_class() description];
  requestFlags = self->_requestFlags;
  v11 = CUPrintFlags32();
  NSAppendPrintF_safe();
  v5 = 0;

  if (self->_timeoutSeconds != 0.0)
  {
    timeoutSeconds = self->_timeoutSeconds;
    NSAppendPrintF_safe();
    v6 = v5;

    v5 = v6;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"?";
  }

  v8 = v7;

  return v7;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  requestFlags = self->_requestFlags;
  xdict = objectCopy;
  if (requestFlags)
  {
    xpc_dictionary_set_uint64(objectCopy, "dvRF", requestFlags);
    objectCopy = xdict;
  }

  timeoutSeconds = self->_timeoutSeconds;
  if (timeoutSeconds != 0.0)
  {
    xpc_dictionary_set_double(xdict, "timO", timeoutSeconds);
    objectCopy = xdict;
  }
}

- (CBDeviceRequest)initWithXPCObject:(id)object error:(id *)error
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
      *v5 = CBErrorF(-6756, "%@ init failed", v16, v17, v18, v19, v20, v21, v23);
    }

    goto LABEL_13;
  }

  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    if (v5)
    {
      v22 = CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v23);
      OUTLINED_FUNCTION_16(v22);
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0();
  v14 = OUTLINED_FUNCTION_5();
  if (v14 == 6)
  {
    v7[2] = 0;
    goto LABEL_6;
  }

  if (v14 == 5)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_13;
  }

  v6 = v7;
LABEL_8:

  return v6;
}

@end