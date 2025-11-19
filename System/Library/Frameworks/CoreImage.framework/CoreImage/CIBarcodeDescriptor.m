@interface CIBarcodeDescriptor
- (CIBarcodeDescriptor)init;
- (CIBarcodeDescriptor)initWithCoder:(id)a3;
- (void)init;
@end

@implementation CIBarcodeDescriptor

- (CIBarcodeDescriptor)init
{
  v6.receiver = self;
  v6.super_class = CIBarcodeDescriptor;
  v2 = [(CIBarcodeDescriptor *)&v6 init];
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = ci_logger_api();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CIBarcodeDescriptor init];
    }

    return 0;
  }

  return v2;
}

- (CIBarcodeDescriptor)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v4 = ci_logger_api();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CIBarcodeDescriptor initWithCoder:];
    }
  }

  return self;
}

- (void)init
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v0, v1, "%{public}s %{public}@: instantiating abstract barcode descriptor objects is prohibited", v2, v3, v4, v5, 2u);
}

- (void)initWithCoder:.cold.1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v0, v1, "%{public}s %{public}@: requires coder that supports keyed coding of objects", v2, v3, v4, v5, 2u);
}

@end