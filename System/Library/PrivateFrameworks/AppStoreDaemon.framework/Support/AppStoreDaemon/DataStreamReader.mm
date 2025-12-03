@interface DataStreamReader
- (int64_t)readBytes:(char *)bytes length:(unint64_t)length error:(id *)error;
- (void)close;
@end

@implementation DataStreamReader

- (void)close
{
  data = self->_data;
  self->_data = 0;

  v4.receiver = self;
  v4.super_class = DataStreamReader;
  [(Stream *)&v4 close];
}

- (int64_t)readBytes:(char *)bytes length:(unint64_t)length error:(id *)error
{
  lengthCopy = length;
  v8 = [(NSData *)self->_data length:bytes];
  cursor = self->_cursor;
  if (v8 - cursor < lengthCopy)
  {
    lengthCopy = v8 - cursor;
  }

  if (lengthCopy >= 1)
  {
    [(NSData *)self->_data getBytes:bytes range:self->_cursor, lengthCopy];
    cursor = (self->_cursor + lengthCopy);
    self->_cursor = cursor;
  }

  if (cursor == [(NSData *)self->_data length])
  {
    sub_1002BB2AC(self, 5);
    dispatch_source_merge_data(self->super._delegateSource, 0x10uLL);
  }

  return lengthCopy;
}

@end