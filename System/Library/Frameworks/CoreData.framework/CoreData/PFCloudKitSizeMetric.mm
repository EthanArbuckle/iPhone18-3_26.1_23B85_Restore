@interface PFCloudKitSizeMetric
- (PFCloudKitSizeMetric)initWithContainerIdentifier:(id)a3;
- (id)createPayload;
- (uint64_t)addByteSize:(uint64_t)result;
- (void)dealloc;
@end

@implementation PFCloudKitSizeMetric

- (PFCloudKitSizeMetric)initWithContainerIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = PFCloudKitSizeMetric;
  v3 = [(PFCloudKitBaseMetric *)&v5 initWithContainerIdentifier:a3];
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
    v4 = [*(result + 24) unsignedIntegerValue];

    result = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInteger:v4 + a2];
    *(v3 + 24) = result;
  }

  return result;
}

- (id)createPayload
{
  v6.receiver = self;
  v6.super_class = PFCloudKitSizeMetric;
  v3 = [(PFCloudKitBaseMetric *)&v6 createPayload];
  sizeInBytes = self->_sizeInBytes;
  if (!sizeInBytes)
  {
    sizeInBytes = [MEMORY[0x1E695DFB0] null];
  }

  [v3 setValue:sizeInBytes forKey:@"sizeInBytes"];
  return v3;
}

@end