@interface MIOWriterTimedBuffer
- (MIOWriterTimedBuffer)initWithBuffer:(__CVBuffer *)buffer atTimestamp:(id *)timestamp;
- (void)setTimestamp:(id *)timestamp;
@end

@implementation MIOWriterTimedBuffer

- (MIOWriterTimedBuffer)initWithBuffer:(__CVBuffer *)buffer atTimestamp:(id *)timestamp
{
  v8.receiver = self;
  v8.super_class = MIOWriterTimedBuffer;
  result = [(MIOWriterTimedBuffer *)&v8 init];
  if (result)
  {
    v7 = *&timestamp->var0;
    result->_timestamp.epoch = timestamp->var3;
    *&result->_timestamp.value = v7;
    result->_buffer = buffer;
  }

  return result;
}

- (void)setTimestamp:(id *)timestamp
{
  v3 = *&timestamp->var0;
  self->_timestamp.epoch = timestamp->var3;
  *&self->_timestamp.value = v3;
}

@end