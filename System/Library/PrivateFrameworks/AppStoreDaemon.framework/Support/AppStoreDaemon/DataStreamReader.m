@interface DataStreamReader
- (int64_t)readBytes:(char *)a3 length:(unint64_t)a4 error:(id *)a5;
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

- (int64_t)readBytes:(char *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v5 = a4;
  v8 = [(NSData *)self->_data length:a3];
  cursor = self->_cursor;
  if (v8 - cursor < v5)
  {
    v5 = v8 - cursor;
  }

  if (v5 >= 1)
  {
    [(NSData *)self->_data getBytes:a3 range:self->_cursor, v5];
    cursor = (self->_cursor + v5);
    self->_cursor = cursor;
  }

  if (cursor == [(NSData *)self->_data length])
  {
    sub_1002BB2AC(self, 5);
    dispatch_source_merge_data(self->super._delegateSource, 0x10uLL);
  }

  return v5;
}

@end