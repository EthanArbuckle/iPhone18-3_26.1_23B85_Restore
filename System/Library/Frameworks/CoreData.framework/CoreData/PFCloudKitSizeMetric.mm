@interface PFCloudKitSizeMetric
- (PFCloudKitSizeMetric)initWithContainerIdentifier:(id)identifier;
- (id)createPayload;
- (uint64_t)addByteSize:(uint64_t)result;
- (void)dealloc;
@end

@implementation PFCloudKitSizeMetric

- (PFCloudKitSizeMetric)initWithContainerIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = PFCloudKitSizeMetric;
  v3 = [(PFCloudKitBaseMetric *)&v5 initWithContainerIdentifier:identifier];
  if (v3)
  {
    v3->_sizeInBytes = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFCloudKitSizeMetric;
  [(PFCloudKitBaseMetric *)&v3 dealloc];
}

- (uint64_t)addByteSize:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    unsignedIntegerValue = [*(result + 24) unsignedIntegerValue];

    result = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:unsignedIntegerValue + a2];
    *(v3 + 24) = result;
  }

  return result;
}

- (id)createPayload
{
  v6.receiver = self;
  v6.super_class = PFCloudKitSizeMetric;
  createPayload = [(PFCloudKitBaseMetric *)&v6 createPayload];
  sizeInBytes = self->_sizeInBytes;
  if (!sizeInBytes)
  {
    sizeInBytes = [MEMORY[0x1E695DFB0] null];
  }

  [createPayload setValue:sizeInBytes forKey:@"sizeInBytes"];
  return createPayload;
}

@end