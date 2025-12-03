@interface CBSpatialMeasurement
- (CBSpatialMeasurement)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation CBSpatialMeasurement

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5 = objectCopy;
  distanceMeters = self->_distanceMeters;
  if (distanceMeters != 0.0)
  {
    xpc_dictionary_set_double(objectCopy, "dM", distanceMeters);
  }

  distanceError = self->_distanceError;
  if (distanceError != 0.0)
  {
    xpc_dictionary_set_double(v5, "dE", distanceError);
  }

  if (self->_error)
  {
    CUXPCEncodeNSError();
  }

  flags = self->_flags;
  if (flags)
  {
    xpc_dictionary_set_uint64(v5, "flgs", flags);
  }

  horizontalAngle = self->_horizontalAngle;
  if (horizontalAngle != 0.0)
  {
    xpc_dictionary_set_double(v5, "hA", horizontalAngle);
  }

  horizontalError = self->_horizontalError;
  if (horizontalError != 0.0)
  {
    xpc_dictionary_set_double(v5, "hE", horizontalError);
  }

  identifier = self->_identifier;
  xdict = v5;
  uTF8String = [(NSString *)identifier UTF8String];
  if (uTF8String)
  {
    xpc_dictionary_set_string(xdict, "id", uTF8String);
  }

  verticalAngle = self->_verticalAngle;
  if (verticalAngle != 0.0)
  {
    xpc_dictionary_set_double(xdict, "vA", verticalAngle);
  }

  verticalError = self->_verticalError;
  if (verticalError != 0.0)
  {
    xpc_dictionary_set_double(xdict, "vE", verticalError);
  }

  timestampTicks = self->_timestampTicks;
  v16 = xdict;
  if (timestampTicks)
  {
    xpc_dictionary_set_uint64(xdict, "ts", timestampTicks);
    v16 = xdict;
  }
}

- (id)description
{
  horizontalAngle = self->_horizontalAngle;
  verticalAngle = self->_verticalAngle;
  distanceMeters = self->_distanceMeters;
  identifier = self->_identifier;
  NSAppendPrintF_safe();
  v3 = 0;
  if (self->_flags)
  {
    v18 = v3;
    v4 = v3;
    v12 = CUPrintFlags32();
    NSAppendPrintF_safe();
    v5 = v18;

    v3 = v5;
  }

  error = self->_error;
  if (error)
  {
    v17 = v3;
    v7 = v3;
    v8 = error;
    v13 = CUPrintNSError();
    NSAppendPrintF_safe();
    v9 = v17;

    v3 = v9;
  }

  return v3;
}

- (CBSpatialMeasurement)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v13 = [(CBSpatialMeasurement *)self init];
  if (!v13)
  {
    if (error)
    {
      v20 = "init failed";
LABEL_25:
      CBErrorF(-6756, v20, v7, v8, v9, v10, v11, v12, v21);
      *error = v18 = 0;
      goto LABEL_19;
    }

LABEL_26:
    v18 = 0;
    goto LABEL_19;
  }

  if (MEMORY[0x1C68DFDD0](objectCopy) != MEMORY[0x1E69E9E80])
  {
    if (error)
    {
      v20 = "XPC non-dict";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_26;
  }

  v14 = CUXPCDecodeNSError();
  v15 = 0;
  if (!v14)
  {
    goto LABEL_20;
  }

  objc_storeStrong(&v13->_error, 0);
  OUTLINED_FUNCTION_0();
  v16 = OUTLINED_FUNCTION_5();
  if (v16 == 6)
  {
    v13->_flags = 0;
  }

  else if (v16 == 5)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0();
  v17 = CUXPCDecodeUInt64RangedEx();
  if (v17 != 6)
  {
    if (v17 != 5)
    {
      goto LABEL_17;
    }

LABEL_20:
    v18 = 0;
    goto LABEL_18;
  }

  v13->_timestampTicks = 0;
LABEL_17:
  v18 = v13;
LABEL_18:

LABEL_19:
  return v18;
}

@end