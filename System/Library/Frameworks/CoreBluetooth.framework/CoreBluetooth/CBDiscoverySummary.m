@interface CBDiscoverySummary
- (CBDiscoverySummary)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)descriptionWithLevel:(int)a3;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation CBDiscoverySummary

- (void)encodeWithXPCObject:(id)a3
{
  scanTime = self->_scanTime;
  if (scanTime != 0.0)
  {
    xpc_dictionary_set_double(a3, "scTm", scanTime);
  }
}

- (id)descriptionWithLevel:(int)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v8 = [objc_opt_class() description];
    CUAppendF();
    v4 = 0;
  }

  scanTime = self->_scanTime;
  v9 = CUPrintDurationDouble();
  CUAppendF();
  v6 = v4;

  return v6;
}

- (CBDiscoverySummary)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = CBDiscoverySummary;
  v7 = [(CBDiscoverySummary *)&v24 init];
  if (!v7)
  {
    if (a4)
    {
      v16 = [objc_opt_class() description];
      *a4 = CBErrorF(-6756, "%@ super init failed", v17, v18, v19, v20, v21, v22, v16);
    }

    goto LABEL_10;
  }

  if (MEMORY[0x1C68DFDD0](v6) != MEMORY[0x1E69E9E80])
  {
    if (a4)
    {
      CBErrorF(-6756, "XPC non-dict", v8, v9, v10, v11, v12, v13, v23);
      *a4 = v14 = 0;
      goto LABEL_5;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeDouble())
  {
    goto LABEL_10;
  }

  v14 = v7;
LABEL_5:

  return v14;
}

@end