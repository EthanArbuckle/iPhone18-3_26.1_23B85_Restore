@interface CIQRCodeDescriptor
+ (CIQRCodeDescriptor)descriptorWithPayload:(NSData *)errorCorrectedPayload symbolVersion:(NSInteger)symbolVersion maskPattern:(uint8_t)maskPattern errorCorrectionLevel:(CIQRCodeErrorCorrectionLevel)errorCorrectionLevel;
- (BOOL)isValid;
- (CIQRCodeDescriptor)initWithCoder:(id)a3;
- (CIQRCodeDescriptor)initWithPayload:(NSData *)errorCorrectedPayload symbolVersion:(NSInteger)symbolVersion maskPattern:(uint8_t)maskPattern errorCorrectionLevel:(CIQRCodeErrorCorrectionLevel)errorCorrectionLevel;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)isValid;
@end

@implementation CIQRCodeDescriptor

- (BOOL)isValid
{
  if ((self->symbolVersion - 41) <= 0xFFFFFFFFFFFFFFD7)
  {
    v2 = ci_logger_api();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    [CIQRCodeDescriptor isValid];
    goto LABEL_10;
  }

  v4 = self->errorCorrectionLevel - 72;
  if (v4 >= 0xA || ((0x231u >> v4) & 1) == 0)
  {
    v5 = ci_logger_api();
    v3 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    [CIQRCodeDescriptor isValid];
LABEL_10:
    LOBYTE(v3) = 0;
    return v3;
  }

  LOBYTE(v3) = 1;
  return v3;
}

- (CIQRCodeDescriptor)initWithPayload:(NSData *)errorCorrectedPayload symbolVersion:(NSInteger)symbolVersion maskPattern:(uint8_t)maskPattern errorCorrectionLevel:(CIQRCodeErrorCorrectionLevel)errorCorrectionLevel
{
  v12.receiver = self;
  v12.super_class = CIQRCodeDescriptor;
  v10 = [(CIBarcodeDescriptor *)&v12 init];
  if (v10)
  {
    v10->errorCorrectedPayload = errorCorrectedPayload;
    v10->symbolVersion = symbolVersion;
    v10->maskPattern = maskPattern;
    v10->errorCorrectionLevel = errorCorrectionLevel;
  }

  if (![(CIQRCodeDescriptor *)v10 isValid])
  {

    return 0;
  }

  return v10;
}

+ (CIQRCodeDescriptor)descriptorWithPayload:(NSData *)errorCorrectedPayload symbolVersion:(NSInteger)symbolVersion maskPattern:(uint8_t)maskPattern errorCorrectionLevel:(CIQRCodeErrorCorrectionLevel)errorCorrectionLevel
{
  v6 = [[CIQRCodeDescriptor alloc] initWithPayload:errorCorrectedPayload symbolVersion:symbolVersion maskPattern:maskPattern errorCorrectionLevel:errorCorrectionLevel];

  return v6;
}

- (void)dealloc
{
  errorCorrectedPayload = self->errorCorrectedPayload;
  if (errorCorrectedPayload)
  {
  }

  v4.receiver = self;
  v4.super_class = CIQRCodeDescriptor;
  [(CIQRCodeDescriptor *)&v4 dealloc];
}

- (CIQRCodeDescriptor)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CIQRCodeDescriptor;
  v4 = [(CIBarcodeDescriptor *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->errorCorrectedPayload = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"errorCorrectedPayload"];
    v4->symbolVersion = [a3 decodeIntegerForKey:@"symbolVersion"];
    v4->maskPattern = [a3 decodeIntegerForKey:@"maskPattern"];
    v4->errorCorrectionLevel = [a3 decodeIntegerForKey:@"errorCorrectionLevel"];
  }

  if (![(CIQRCodeDescriptor *)v4 isValid])
  {

    return 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CIQRCodeDescriptor;
  [(CIBarcodeDescriptor *)&v5 encodeWithCoder:?];
  [a3 encodeObject:self->errorCorrectedPayload forKey:@"errorCorrectedPayload"];
  [a3 encodeInteger:self->symbolVersion forKey:@"symbolVersion"];
  [a3 encodeInteger:self->maskPattern forKey:@"maskPattern"];
  [a3 encodeInteger:self->errorCorrectionLevel forKey:@"errorCorrectionLevel"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CIQRCodeDescriptor allocWithZone:?];
  v6 = [(NSData *)self->errorCorrectedPayload copyWithZone:a3];
  v7 = [(CIQRCodeDescriptor *)v5 initWithPayload:v6 symbolVersion:self->symbolVersion maskPattern:self->maskPattern errorCorrectionLevel:self->errorCorrectionLevel];

  return v7;
}

- (void)isValid
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v0, v1, "%{public}s %{public}@: symbolVersion must be in the range of [1,40]", v2, v3, v4, v5, 2u);
}

@end