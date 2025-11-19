@interface TimedBuffer
- (TimedBuffer)initWithBuffer:(__CVBuffer *)a3 atTimestamp:(id *)a4;
- (void)setTimestamp:(id *)a3;
@end

@implementation TimedBuffer

- (TimedBuffer)initWithBuffer:(__CVBuffer *)a3 atTimestamp:(id *)a4
{
  v8.receiver = self;
  v8.super_class = TimedBuffer;
  result = [(TimedBuffer *)&v8 init];
  if (result)
  {
    v7 = *&a4->var0;
    result->_timestamp.epoch = a4->var3;
    *&result->_timestamp.value = v7;
    result->_buffer = a3;
  }

  return result;
}

- (void)setTimestamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_timestamp.epoch = a3->var3;
  *&self->_timestamp.value = v3;
}

@end