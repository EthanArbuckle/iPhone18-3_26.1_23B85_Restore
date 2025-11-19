@interface MLCTensorData
+ (MLCTensorData)dataWithBytes:(void *)a3 length:(unint64_t)a4;
+ (MLCTensorData)dataWithBytesNoCopy:(void *)bytes length:(NSUInteger)length deallocator:(void *)deallocator;
- (MLCTensorData)initWithData:(void *)a3 length:(unint64_t)a4;
- (MLCTensorData)initWithDataNoCopy:(void *)a3 length:(unint64_t)a4 deallocator:(id)a5;
- (NSUInteger)length;
- (void)bytes;
@end

@implementation MLCTensorData

- (MLCTensorData)initWithDataNoCopy:(void *)a3 length:(unint64_t)a4 deallocator:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = MLCTensorData;
  v9 = [(MLCTensorData *)&v13 init];
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:a3 length:a4 deallocator:v8];
    data = v9->_data;
    v9->_data = v10;
  }

  return v9;
}

- (MLCTensorData)initWithData:(void *)a3 length:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = MLCTensorData;
  v6 = [(MLCTensorData *)&v10 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
    data = v6->_data;
    v6->_data = v7;
  }

  return v6;
}

+ (MLCTensorData)dataWithBytes:(void *)a3 length:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithData:a3 length:a4];

  return v4;
}

+ (MLCTensorData)dataWithBytesNoCopy:(void *)bytes length:(NSUInteger)length deallocator:(void *)deallocator
{
  v8 = deallocator;
  v9 = [[a1 alloc] initWithDataNoCopy:bytes length:length deallocator:v8];

  return v9;
}

- (void)bytes
{
  v2 = [(MLCTensorData *)self data];
  v3 = [v2 bytes];

  return v3;
}

- (NSUInteger)length
{
  v2 = [(MLCTensorData *)self data];
  v3 = [v2 length];

  return v3;
}

@end