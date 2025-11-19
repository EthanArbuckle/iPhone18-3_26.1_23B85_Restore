@interface APSProtocolMessage
- (APSProtocolMessage)initWithCommand:(int)a3;
- (id)copyMessageData;
- (void)_appendEightBytes:(unint64_t)a3;
- (void)_appendFourBytes:(unsigned int)a3;
- (void)_appendOneByte:(unsigned __int8)a3;
- (void)_appendTwoBytes:(unsigned __int16)a3;
@end

@implementation APSProtocolMessage

- (APSProtocolMessage)initWithCommand:(int)a3
{
  v9.receiver = self;
  v9.super_class = APSProtocolMessage;
  v4 = [(APSProtocolMessage *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_command = a3;
    v6 = objc_alloc_init(NSMutableData);
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (void)_appendOneByte:(unsigned __int8)a3
{
  data = self->_data;
  v4 = a3;
  [(NSMutableData *)data appendBytes:&v4 length:1];
}

- (void)_appendTwoBytes:(unsigned __int16)a3
{
  data = self->_data;
  v4 = __rev16(a3);
  [(NSMutableData *)data appendBytes:&v4 length:2];
}

- (void)_appendFourBytes:(unsigned int)a3
{
  data = self->_data;
  v4 = bswap32(a3);
  [(NSMutableData *)data appendBytes:&v4 length:4];
}

- (void)_appendEightBytes:(unint64_t)a3
{
  data = self->_data;
  v4 = bswap64(a3);
  [(NSMutableData *)data appendBytes:&v4 length:8];
}

- (id)copyMessageData
{
  v3 = objc_alloc_init(NSMutableData);
  command = self->_command;
  [v3 appendBytes:&command length:1];
  v6 = bswap32([(NSMutableData *)self->_data length]);
  [v3 appendBytes:&v6 length:4];
  [v3 appendData:self->_data];
  return v3;
}

@end