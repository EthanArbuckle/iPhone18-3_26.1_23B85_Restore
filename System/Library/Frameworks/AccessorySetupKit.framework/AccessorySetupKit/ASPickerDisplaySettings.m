@interface ASPickerDisplaySettings
+ (ASPickerDisplaySettings)defaultSettings;
- (ASPickerDisplaySettings)initWithCoder:(id)a3;
- (ASPickerDisplaySettings)initWithXPCObject:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation ASPickerDisplaySettings

+ (ASPickerDisplaySettings)defaultSettings
{
  v2 = objc_alloc_init(ASPickerDisplaySettings);
  [(ASPickerDisplaySettings *)v2 setDiscoveryTimeout:30.0];

  return v2;
}

- (ASPickerDisplaySettings)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"dTm"])
  {
    [v4 decodeDoubleForKey:@"dTm"];
    self->_discoveryTimeout = v5;
  }

  v6 = v4;
  if ([v6 containsValueForKey:@"pSOp"])
  {
    self->_options = [v6 decodeIntegerForKey:@"pSOp"];
  }

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_discoveryTimeout != 0.0)
  {
    [v4 encodeDouble:@"dTm" forKey:?];
    v4 = v6;
  }

  options = self->_options;
  if (options)
  {
    [v6 encodeInteger:options forKey:@"pSOp"];
    v4 = v6;
  }
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  discoveryTimeout = self->_discoveryTimeout;
  xdict = v4;
  if (discoveryTimeout != 0.0)
  {
    xpc_dictionary_set_double(v4, "dTm", discoveryTimeout);
    v4 = xdict;
  }

  options = self->_options;
  if (options)
  {
    xpc_dictionary_set_uint64(xdict, "pSOp", options);
    v4 = xdict;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 1) = *&self->_discoveryTimeout;
  *(result + 2) = self->_options;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v6 = v4;
    v8 = [(ASPickerDisplaySettings *)v6 isMemberOfClass:objc_opt_class()]&& ([(ASPickerDisplaySettings *)v6 discoveryTimeout], v7 == self->_discoveryTimeout) && [(ASPickerDisplaySettings *)v6 options]== self->_options;
  }

  return v8;
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    CUAppendF();
    v4 = 0;
  }

  discoveryTimeout = self->_discoveryTimeout;
  if (discoveryTimeout != 0.0)
  {
    CUAppendF();
    v6 = v4;

    v4 = v6;
  }

  if (self->_options)
  {
    v11 = CUPrintFlags64();
    CUAppendF();
    v7 = v4;

    v4 = v7;
  }

  v8 = &stru_28499D698;
  if (v4)
  {
    v8 = v4;
  }

  v9 = v8;

  return v9;
}

- (ASPickerDisplaySettings)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ASPickerDisplaySettings *)self init];
  if (!v7)
  {
    if (a4)
    {
      v17 = [objc_opt_class() description];
      *a4 = ASErrorF(-6756, "%@ init failed", v18, v19, v20, v21, v22, v23, v17);
    }

    goto LABEL_13;
  }

  if (MEMORY[0x2383B4C90](v6) != MEMORY[0x277D86468])
  {
    if (a4)
    {
      ASErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v24);
      *a4 = v15 = 0;
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (!CUXPCDecodeDouble())
  {
    goto LABEL_13;
  }

  v14 = CUXPCDecodeUInt64RangedEx();
  if (v14 != 6)
  {
    if (v14 != 5)
    {
      goto LABEL_7;
    }

LABEL_13:
    v15 = 0;
    goto LABEL_8;
  }

  v7->_options = 0;
LABEL_7:
  v15 = v7;
LABEL_8:

  return v15;
}

@end