@interface CIPDF417CodeDescriptor
+ (CIPDF417CodeDescriptor)descriptorWithPayload:(NSData *)errorCorrectedPayload isCompact:(BOOL)isCompact rowCount:(NSInteger)rowCount columnCount:(NSInteger)columnCount;
- (BOOL)isValid;
- (CIPDF417CodeDescriptor)initWithCoder:(id)coder;
- (CIPDF417CodeDescriptor)initWithPayload:(NSData *)errorCorrectedPayload isCompact:(BOOL)isCompact rowCount:(NSInteger)rowCount columnCount:(NSInteger)columnCount;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)isValid;
@end

@implementation CIPDF417CodeDescriptor

- (BOOL)isValid
{
  if ((self->rowCount - 91) > 0xFFFFFFFFFFFFFFA7)
  {
    if ((self->columnCount - 31) > 0xFFFFFFFFFFFFFFE1)
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    v4 = ci_logger_api();
    v3 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [CIPDF417CodeDescriptor isValid];
      goto LABEL_7;
    }
  }

  else
  {
    v2 = ci_logger_api();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (v3)
    {
      [CIPDF417CodeDescriptor isValid];
LABEL_7:
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (CIPDF417CodeDescriptor)initWithPayload:(NSData *)errorCorrectedPayload isCompact:(BOOL)isCompact rowCount:(NSInteger)rowCount columnCount:(NSInteger)columnCount
{
  v12.receiver = self;
  v12.super_class = CIPDF417CodeDescriptor;
  v10 = [(CIBarcodeDescriptor *)&v12 init];
  if (v10)
  {
    v10->errorCorrectedPayload = errorCorrectedPayload;
    v10->isCompact = isCompact;
    v10->rowCount = rowCount;
    v10->columnCount = columnCount;
  }

  if (![(CIPDF417CodeDescriptor *)v10 isValid])
  {

    return 0;
  }

  return v10;
}

+ (CIPDF417CodeDescriptor)descriptorWithPayload:(NSData *)errorCorrectedPayload isCompact:(BOOL)isCompact rowCount:(NSInteger)rowCount columnCount:(NSInteger)columnCount
{
  v6 = [[CIPDF417CodeDescriptor alloc] initWithPayload:errorCorrectedPayload isCompact:isCompact rowCount:rowCount columnCount:columnCount];

  return v6;
}

- (void)dealloc
{
  errorCorrectedPayload = self->errorCorrectedPayload;
  if (errorCorrectedPayload)
  {
  }

  v4.receiver = self;
  v4.super_class = CIPDF417CodeDescriptor;
  [(CIPDF417CodeDescriptor *)&v4 dealloc];
}

- (CIPDF417CodeDescriptor)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CIPDF417CodeDescriptor;
  v4 = [(CIBarcodeDescriptor *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->errorCorrectedPayload = [coder decodeObjectOfClass:objc_opt_class() forKey:@"errorCorrectedPayload"];
    v4->isCompact = [coder decodeBoolForKey:@"isCompact"];
    v4->rowCount = [coder decodeIntegerForKey:@"rowCount"];
    v4->columnCount = [coder decodeIntegerForKey:@"columnCount"];
  }

  if (![(CIPDF417CodeDescriptor *)v4 isValid])
  {

    return 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CIPDF417CodeDescriptor;
  [(CIBarcodeDescriptor *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->errorCorrectedPayload forKey:@"errorCorrectedPayload"];
  [coder encodeBool:self->isCompact forKey:@"isCompact"];
  [coder encodeInteger:self->rowCount forKey:@"rowCount"];
  [coder encodeInteger:self->columnCount forKey:@"columnCount"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CIPDF417CodeDescriptor allocWithZone:zone];
  v5 = [(NSData *)self->errorCorrectedPayload copy];
  v6 = [(CIPDF417CodeDescriptor *)v4 initWithPayload:v5 isCompact:self->isCompact rowCount:self->rowCount columnCount:self->columnCount];

  return v6;
}

- (void)isValid
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v0, v1, "%{public}s %{public}@: rowCount must be in the range of [3,90]", v2, v3, v4, v5, 2u);
}

@end