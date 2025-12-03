@interface TKDataSource
- (NSData)data;
- (TKDataSource)initWithData:(id)data;
- (id)dataFromPtr:(const char *)ptr;
- (id)fetchDataWithLength:(int64_t)length;
- (unsigned)fetchByte;
@end

@implementation TKDataSource

- (unsigned)fetchByte
{
  ptr = self->_ptr;
  self->_ptr = ptr + 1;
  return *ptr;
}

- (TKDataSource)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = TKDataSource;
  v6 = [(TKDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    v7->_ptr = [dataCopy bytes];
  }

  return v7;
}

- (id)fetchDataWithLength:(int64_t)length
{
  if ([(TKDataSource *)self bytesSafeToRead:?])
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_ptr length:length];
    self->_ptr += length;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSData)data
{
  v3 = MEMORY[0x1E695DEF0];
  bytes = [(NSData *)self->_data bytes];
  ptr = self->_ptr;
  v6 = &ptr[[(NSData *)self->_data]];

  return [v3 dataWithBytes:bytes length:v6];
}

- (id)dataFromPtr:(const char *)ptr
{
  if ([(NSData *)self->_data bytes]> ptr || self->_ptr < ptr)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid argument ptr"];
  }

  data = self->_data;
  v6 = &ptr[[(NSData *)data]];
  v7 = self->_ptr - ptr;

  return [(NSData *)data subdataWithRange:v6, v7];
}

@end