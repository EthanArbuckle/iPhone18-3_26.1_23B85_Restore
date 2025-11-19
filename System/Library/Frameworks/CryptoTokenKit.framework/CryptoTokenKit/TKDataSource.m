@interface TKDataSource
- (NSData)data;
- (TKDataSource)initWithData:(id)a3;
- (id)dataFromPtr:(const char *)a3;
- (id)fetchDataWithLength:(int64_t)a3;
- (unsigned)fetchByte;
@end

@implementation TKDataSource

- (unsigned)fetchByte
{
  ptr = self->_ptr;
  self->_ptr = ptr + 1;
  return *ptr;
}

- (TKDataSource)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TKDataSource;
  v6 = [(TKDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    v7->_ptr = [v5 bytes];
  }

  return v7;
}

- (id)fetchDataWithLength:(int64_t)a3
{
  if ([(TKDataSource *)self bytesSafeToRead:?])
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_ptr length:a3];
    self->_ptr += a3;
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
  v4 = [(NSData *)self->_data bytes];
  ptr = self->_ptr;
  v6 = &ptr[[(NSData *)self->_data]];

  return [v3 dataWithBytes:v4 length:v6];
}

- (id)dataFromPtr:(const char *)a3
{
  if ([(NSData *)self->_data bytes]> a3 || self->_ptr < a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Invalid argument ptr"];
  }

  data = self->_data;
  v6 = &a3[[(NSData *)data]];
  v7 = self->_ptr - a3;

  return [(NSData *)data subdataWithRange:v6, v7];
}

@end