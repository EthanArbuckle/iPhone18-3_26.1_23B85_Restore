@interface ENScanInstance
- (ENScanInstance)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)description;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation ENScanInstance

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  xdict = v4;
  if (self->_minimumAttenuation)
  {
    xpc_dictionary_set_uint64(v4, "minAttn", self->_minimumAttenuation);
    v4 = xdict;
  }

  if (self->_typicalAttenuation)
  {
    xpc_dictionary_set_uint64(xdict, "typAttn", self->_typicalAttenuation);
    v4 = xdict;
  }

  secondsSinceLastScan = self->_secondsSinceLastScan;
  if (secondsSinceLastScan)
  {
    xpc_dictionary_set_int64(xdict, "secsLS", secondsSinceLastScan);
    v4 = xdict;
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

- (ENScanInstance)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ENScanInstance *)self init];
  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_18;
    }

LABEL_17:
    ENErrorF(2);
    *a4 = v11 = 0;
    goto LABEL_13;
  }

  if (MEMORY[0x2383EE9C0](v6) != MEMORY[0x277D86468])
  {
    if (!a4)
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