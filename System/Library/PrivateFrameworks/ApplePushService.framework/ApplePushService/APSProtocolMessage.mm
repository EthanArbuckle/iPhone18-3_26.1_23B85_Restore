@interface APSProtocolMessage
- (APSProtocolMessage)initWithCommand:(int)command;
- (id)copyMessageData;
- (void)_appendEightBytes:(unint64_t)bytes;
- (void)_appendFourBytes:(unsigned int)bytes;
- (void)_appendOneByte:(unsigned __int8)byte;
- (void)_appendTwoBytes:(unsigned __int16)bytes;
@end

@implementation APSProtocolMessage

- (APSProtocolMessage)initWithCommand:(int)command
{
  v9.receiver = self;
  v9.super_class = APSProtocolMessage;
  v4 = [(APSProtocolMessage *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_command = command;
    v6 = objc_alloc_init(NSMutableData);
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (void)_appendOneByte:(unsigned __int8)byte
{
  data = self->_data;
  byteCopy = byte;
  [(NSMutableData *)data appendBytes:&byteCopy length:1];
}

- (void)_appendTwoBytes:(unsigned __int16)bytes
{
  data = self->_data;
  v4 = __rev16(bytes);
  [(NSMutableData *)data appendBytes:&v4 length:2];
}

- (void)_appendFourBytes:(unsigned int)bytes
{
  data = self->_data;
  v4 = bswap32(bytes);
  [(NSMutableData *)data appendBytes:&v4 length:4];
}

- (void)_appendEightBytes:(unint64_t)bytes
{
  data = self->_data;
  v4 = bswap64(bytes);
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