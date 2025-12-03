@interface CIDataMatrixCodeDescriptor
+ (CIDataMatrixCodeDescriptor)descriptorWithPayload:(NSData *)errorCorrectedPayload rowCount:(NSInteger)rowCount columnCount:(NSInteger)columnCount eccVersion:(CIDataMatrixCodeECCVersion)eccVersion;
- (CIDataMatrixCodeDescriptor)initWithCoder:(id)coder;
- (CIDataMatrixCodeDescriptor)initWithPayload:(NSData *)errorCorrectedPayload rowCount:(NSInteger)rowCount columnCount:(NSInteger)columnCount eccVersion:(CIDataMatrixCodeECCVersion)eccVersion;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CIDataMatrixCodeDescriptor

- (CIDataMatrixCodeDescriptor)initWithPayload:(NSData *)errorCorrectedPayload rowCount:(NSInteger)rowCount columnCount:(NSInteger)columnCount eccVersion:(CIDataMatrixCodeECCVersion)eccVersion
{
  v12.receiver = self;
  v12.super_class = CIDataMatrixCodeDescriptor;
  v10 = [(CIBarcodeDescriptor *)&v12 init];
  if (v10)
  {
    v10->errorCorrectedPayload = errorCorrectedPayload;
    v10->rowCount = rowCount;
    v10->columnCount = columnCount;
    v10->eccVersion = eccVersion;
  }

  return v10;
}

+ (CIDataMatrixCodeDescriptor)descriptorWithPayload:(NSData *)errorCorrectedPayload rowCount:(NSInteger)rowCount columnCount:(NSInteger)columnCount eccVersion:(CIDataMatrixCodeECCVersion)eccVersion
{
  v6 = [[CIDataMatrixCodeDescriptor alloc] initWithPayload:errorCorrectedPayload rowCount:rowCount columnCount:columnCount eccVersion:eccVersion];

  return v6;
}

- (void)dealloc
{
  errorCorrectedPayload = self->errorCorrectedPayload;
  if (errorCorrectedPayload)
  {
  }

  v4.receiver = self;
  v4.super_class = CIDataMatrixCodeDescriptor;
  [(CIDataMatrixCodeDescriptor *)&v4 dealloc];
}

- (CIDataMatrixCodeDescriptor)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CIDataMatrixCodeDescriptor;
  v4 = [(CIBarcodeDescriptor *)&v6 initWithCoder:?];
  if (v4)
  {
    v4->errorCorrectedPayload = [coder decodeObjectOfClass:objc_opt_class() forKey:@"errorCorrectedPayload"];
    v4->rowCount = [coder decodeIntegerForKey:@"rowCount"];
    v4->columnCount = [coder decodeIntegerForKey:@"columnCount"];
    v4->eccVersion = [coder decodeIntegerForKey:@"eccVersion"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CIDataMatrixCodeDescriptor;
  [(CIBarcodeDescriptor *)&v5 encodeWithCoder:?];
  [coder encodeObject:self->errorCorrectedPayload forKey:@"errorCorrectedPayload"];
  [coder encodeInteger:self->rowCount forKey:@"rowCount"];
  [coder encodeInteger:self->columnCount forKey:@"columnCount"];
  [coder encodeInteger:self->eccVersion forKey:@"eccVersion"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CIDataMatrixCodeDescriptor allocWithZone:zone];
  v5 = [(NSData *)self->errorCorrectedPayload copy];
  v6 = [(CIDataMatrixCodeDescriptor *)v4 initWithPayload:v5 rowCount:self->rowCount columnCount:self->columnCount eccVersion:self->eccVersion];

  return v6;
}

@end