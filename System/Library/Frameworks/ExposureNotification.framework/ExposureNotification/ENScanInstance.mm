@interface ENScanInstance
- (ENScanInstance)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ENScanInstance

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  xdict = objectCopy;
  if (self->_minimumAttenuation)
  {
    xpc_dictionary_set_uint64(objectCopy, "minAttn", self->_minimumAttenuation);
    objectCopy = xdict;
  }

  if (self->_typicalAttenuation)
  {
    xpc_dictionary_set_uint64(xdict, "typAttn", self->_typicalAttenuation);
    objectCopy = xdict;
  }

  secondsSinceLastScan = self->_secondsSinceLastScan;
  if (secondsSinceLastScan)
  {
    xpc_dictionary_set_int64(xdict, "secsLS", secondsSinceLastScan);
    objectCopy = xdict;
  }
}

- (id)description
{
  NSAppendPrintF_safe();
  v10 = 0;
  minimumAttenuation = self->_minimumAttenuation;
  NSAppendPrintF_safe();
  v3 = v10;

  typicalAttenuation = self->_typicalAttenuation;
  NSAppendPrintF_safe();
  v4 = v3;

  secondsSinceLastScan = self->_secondsSinceLastScan;
  NSAppendPrintF_safe();
  v5 = v4;

  return v4;
}

- (ENScanInstance)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v7 = [(ENScanInstance *)self init];
  if (!v7)
  {
    if (!error)
    {
      goto LABEL_18;
    }

LABEL_17:
    ENErrorF(2);
    *error = v11 = 0;
    goto LABEL_13;
  }

  if (MEMORY[0x2383EE9C0](objectCopy) != MEMORY[0x277D86468])
  {
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_1();
  v8 = CUXPCDecodeUInt64RangedEx();
  if (v8 == 6)
  {
    v7->_minimumAttenuation = 0;
  }

  else if (v8 == 5)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_1();
  v9 = CUXPCDecodeUInt64RangedEx();
  if (v9 == 6)
  {
    v7->_typicalAttenuation = 0;
  }

  else if (v9 == 5)
  {
    goto LABEL_18;
  }

  v10 = OUTLINED_FUNCTION_4();
  if (v10 != 6)
  {
    if (v10 != 5)
    {
      goto LABEL_12;
    }

LABEL_18:
    v11 = 0;
    goto LABEL_13;
  }

  v7->_secondsSinceLastScan = 0;
LABEL_12:
  v11 = v7;
LABEL_13:

  return v11;
}

@end