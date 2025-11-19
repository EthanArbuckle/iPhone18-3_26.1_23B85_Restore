@interface TKDataView
- (NSData)buffer;
- (NSMutableData)mutableBuffer;
- (TKDataView)initWithData:(id)a3;
- (TKDataView)initWithLength:(unint64_t)a3;
- (unsigned)uint16:(unint64_t)a3;
- (unsigned)uint32:(unint64_t)a3;
- (unsigned)uint8:(unint64_t)a3;
- (void)setUint16:(unsigned __int16)a3 at:(unint64_t)a4;
- (void)setUint32:(unsigned int)a3 at:(unint64_t)a4;
- (void)setUint8:(unsigned __int8)a3 at:(unint64_t)a4;
@end

@implementation TKDataView

- (TKDataView)initWithLength:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = TKDataView;
  v4 = [(TKDataView *)&v8 init];
  if (v4)
  {
    v5 = [[NSMutableData alloc] initWithLength:a3];
    mutableBuffer = v4->_mutableBuffer;
    v4->_mutableBuffer = v5;
  }

  return v4;
}

- (TKDataView)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TKDataView;
  v6 = [(TKDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_buffer, a3);
  }

  return v7;
}

- (NSData)buffer
{
  buffer = self->_buffer;
  if (!buffer)
  {
    buffer = self->_mutableBuffer;
  }

  return buffer;
}

- (NSMutableData)mutableBuffer
{
  mutableBuffer = self->_mutableBuffer;
  if (!mutableBuffer)
  {
    v4 = [NSMutableData dataWithData:self->_buffer];
    v5 = self->_mutableBuffer;
    self->_mutableBuffer = v4;

    buffer = self->_buffer;
    self->_buffer = 0;

    mutableBuffer = self->_mutableBuffer;
  }

  return mutableBuffer;
}

- (unsigned)uint8:(unint64_t)a3
{
  v6 = 0;
  v4 = [(TKDataView *)self buffer];
  [v4 getBytes:&v6 range:{a3, 1}];

  return v6;
}

- (void)setUint8:(unsigned __int8)a3 at:(unint64_t)a4
{
  v6 = a3;
  v5 = [(TKDataView *)self mutableBuffer];
  [v5 replaceBytesInRange:a4 withBytes:{1, &v6}];
}

- (unsigned)uint16:(unint64_t)a3
{
  v6 = 0;
  v4 = [(TKDataView *)self buffer];
  [v4 getBytes:&v6 range:{a3, 2}];

  return v6;
}

- (void)setUint16:(unsigned __int16)a3 at:(unint64_t)a4
{
  v6 = a3;
  v5 = [(TKDataView *)self mutableBuffer];
  [v5 replaceBytesInRange:a4 withBytes:{2, &v6}];
}

- (unsigned)uint32:(unint64_t)a3
{
  v6 = 0;
  v4 = [(TKDataView *)self buffer];
  [v4 getBytes:&v6 range:{a3, 4}];

  return v6;
}

- (void)setUint32:(unsigned int)a3 at:(unint64_t)a4
{
  v6 = a3;
  v5 = [(TKDataView *)self mutableBuffer];
  [v5 replaceBytesInRange:a4 withBytes:{4, &v6}];
}

@end