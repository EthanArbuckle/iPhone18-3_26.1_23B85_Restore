@interface CIAztecCodeDescriptor
+ (CIAztecCodeDescriptor)descriptorWithPayload:(NSData *)errorCorrectedPayload isCompact:(BOOL)isCompact layerCount:(NSInteger)layerCount dataCodewordCount:(NSInteger)dataCodewordCount;
- (BOOL)isValid;
- (CIAztecCodeDescriptor)initWithCoder:(id)coder;
- (CIAztecCodeDescriptor)initWithPayload:(NSData *)errorCorrectedPayload isCompact:(BOOL)isCompact layerCount:(NSInteger)layerCount dataCodewordCount:(NSInteger)dataCodewordCount;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)isValid;
@end

@implementation CIAztecCodeDescriptor

- (BOOL)isValid
{
  if ((self->layerCount - 33) > 0xFFFFFFFFFFFFFFDFLL)
  {
    if ((self->dataCodewordCount - 2049) > 0xFFFFFFFFFFFFF7FFLL)
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    v4 = ci_logger_api();
    v3 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [CIAztecCodeDescriptor isValid];
      goto LABEL_7;
    }
  }

  else
  {
    v2 = ci_logger_api();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [CIAztecCodeDescriptor isValid];
LABEL_7:
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (CIAztecCodeDescriptor)initWithPayload:(NSData *)errorCorrectedPayload isCompact:(BOOL)isCompact layerCount:(NSInteger)layerCount dataCodewordCount:(NSInteger)dataCodewordCount
{
  v12.receiver = self;
  v12.super_class = CIAztecCodeDescriptor;
  v10 = [(CIBarcodeDescriptor *)&v12 init];
  if (v10)
  {
    v10->errorCorrectedPayload = errorCorrectedPayload;
    v10->isCompact = isCompact;
    v10->layerCount = layerCount;
    v10->dataCodewordCount = dataCodewordCount;
  }

  if (![(CIAztecCodeDescriptor *)v10 isValid])
  {

    return 0;
  }

  return v10;
}

+ (CIAztecCodeDescriptor)descriptorWithPayload:(NSData *)errorCorrectedPayload isCompact:(BOOL)isCompact layerCount:(NSInteger)layerCount dataCodewordCount:(NSInteger)dataCodewordCount
{
  v6 = [[CIAztecCodeDescriptor alloc] initWithPayload:errorCorrectedPayload isCompact:isCompact layerCount:layerCount dataCodewordCount:dataCodewordCount];

  return v6;
}

- (void)dealloc
{
  errorCorrectedPayload = self->errorCorrectedPayload;
  if (errorCorrectedPayload)
  {
  }

  v4.receiver = self;
  v4.super_class = CIAztecCodeDescriptor;
  [(CIAztecCodeDescriptor *)&v4 dealloc];
}

- (CIAztecCodeDescriptor)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CIAztecCodeDescriptor;
  v4 = [(CIBarcodeDescriptor *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->errorCorrectedPayload = [coder decodeObjectOfClass:objc_opt_class() forKey:@"errorCorrectedPayload"];
    v4->isCompact = [coder decodeBoolForKey:@"isCompact"];
    v4->layerCount = [coder decodeIntegerForKey:@"layerCount"];
    v4->dataCodewordCount = [coder decodeIntegerForKey:@"dataCodewordCount"];
  }

  if (![(CIAztecCodeDescriptor *)v4 isValid])
  {

    return 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CIAztecCodeDescriptor;
  [(CIBarcodeDescriptor *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->errorCorrectedPayload forKey:@"errorCorrectedPayload"];
  [coder encodeBool:self->isCompact forKey:@"isCompact"];
  [coder encodeInteger:self->layerCount forKey:@"layerCount"];
  [coder encodeInteger:self->dataCodewordCount forKey:@"dataCodewordCount"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CIAztecCodeDescriptor allocWithZone:?];
  v6 = [(NSData *)self->errorCorrectedPayload copyWithZone:zone];
  v7 = [(CIAztecCodeDescriptor *)v5 initWithPayload:v6 isCompact:self->isCompact layerCount:self->layerCount dataCodewordCount:self->dataCodewordCount];

  return v7;
}

- (void)isValid
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v0, v1, "%{public}s %{public}@: layerCount must be in the range of [1,32]", v2, v3, v4, v5, 2u);
}

@end