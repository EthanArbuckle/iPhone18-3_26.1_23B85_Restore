@interface TKDataView
- (NSData)buffer;
- (NSMutableData)mutableBuffer;
- (TKDataView)initWithData:(id)data;
- (TKDataView)initWithLength:(unint64_t)length;
- (unsigned)uint16:(unint64_t)uint16;
- (unsigned)uint32:(unint64_t)uint32;
- (unsigned)uint8:(unint64_t)uint8;
- (void)setUint16:(unsigned __int16)uint16 at:(unint64_t)at;
- (void)setUint32:(unsigned int)uint32 at:(unint64_t)at;
- (void)setUint8:(unsigned __int8)uint8 at:(unint64_t)at;
@end

@implementation TKDataView

- (TKDataView)initWithLength:(unint64_t)length
{
  v8.receiver = self;
  v8.super_class = TKDataView;
  v4 = [(TKDataView *)&v8 init];
  if (v4)
  {
    v5 = [[NSMutableData alloc] initWithLength:length];
    mutableBuffer = v4->_mutableBuffer;
    v4->_mutableBuffer = v5;
  }

  return v4;
}

- (TKDataView)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = TKDataView;
  v6 = [(TKDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_buffer, data);
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

- (unsigned)uint8:(unint64_t)uint8
{
  v6 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v6 range:{uint8, 1}];

  return v6;
}

- (void)setUint8:(unsigned __int8)uint8 at:(unint64_t)at
{
  uint8Copy = uint8;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:at withBytes:{1, &uint8Copy}];
}

- (unsigned)uint16:(unint64_t)uint16
{
  v6 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v6 range:{uint16, 2}];

  return v6;
}

- (void)setUint16:(unsigned __int16)uint16 at:(unint64_t)at
{
  uint16Copy = uint16;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:at withBytes:{2, &uint16Copy}];
}

- (unsigned)uint32:(unint64_t)uint32
{
  v6 = 0;
  buffer = [(TKDataView *)self buffer];
  [buffer getBytes:&v6 range:{uint32, 4}];

  return v6;
}

- (void)setUint32:(unsigned int)uint32 at:(unint64_t)at
{
  uint32Copy = uint32;
  mutableBuffer = [(TKDataView *)self mutableBuffer];
  [mutableBuffer replaceBytesInRange:at withBytes:{4, &uint32Copy}];
}

@end