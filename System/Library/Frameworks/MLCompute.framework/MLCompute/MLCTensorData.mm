@interface MLCTensorData
+ (MLCTensorData)dataWithBytes:(void *)bytes length:(unint64_t)length;
+ (MLCTensorData)dataWithBytesNoCopy:(void *)bytes length:(NSUInteger)length deallocator:(void *)deallocator;
- (MLCTensorData)initWithData:(void *)data length:(unint64_t)length;
- (MLCTensorData)initWithDataNoCopy:(void *)copy length:(unint64_t)length deallocator:(id)deallocator;
- (NSUInteger)length;
- (void)bytes;
@end

@implementation MLCTensorData

- (MLCTensorData)initWithDataNoCopy:(void *)copy length:(unint64_t)length deallocator:(id)deallocator
{
  deallocatorCopy = deallocator;
  v13.receiver = self;
  v13.super_class = MLCTensorData;
  v9 = [(MLCTensorData *)&v13 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:copy length:length deallocator:deallocatorCopy];
    data = v9->_data;
    v9->_data = v10;
  }

  return v9;
}

- (MLCTensorData)initWithData:(void *)data length:(unint64_t)length
{
  v10.receiver = self;
  v10.super_class = MLCTensorData;
  v6 = [(MLCTensorData *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:data length:length];
    data = v6->_data;
    v6->_data = v7;
  }

  return v6;
}

+ (MLCTensorData)dataWithBytes:(void *)bytes length:(unint64_t)length
{
  v4 = [[self alloc] initWithData:bytes length:length];

  return v4;
}

+ (MLCTensorData)dataWithBytesNoCopy:(void *)bytes length:(NSUInteger)length deallocator:(void *)deallocator
{
  v8 = deallocator;
  v9 = [[self alloc] initWithDataNoCopy:bytes length:length deallocator:v8];

  return v9;
}

- (void)bytes
{
  data = [(MLCTensorData *)self data];
  bytes = [data bytes];

  return bytes;
}

- (NSUInteger)length
{
  data = [(MLCTensorData *)self data];
  v3 = [data length];

  return v3;
}

@end