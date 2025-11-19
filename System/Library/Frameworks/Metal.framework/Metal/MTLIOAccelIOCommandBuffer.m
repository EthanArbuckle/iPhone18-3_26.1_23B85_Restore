@interface MTLIOAccelIOCommandBuffer
- (MTLIOAccelIOCommandBuffer)initWithQueue:(id)a3;
- (void)setLabel:(id)a3;
@end

@implementation MTLIOAccelIOCommandBuffer

- (MTLIOAccelIOCommandBuffer)initWithQueue:(id)a3
{
  v4.receiver = self;
  v4.super_class = MTLIOAccelIOCommandBuffer;
  return [(_MTLIOCommandBuffer *)&v4 initWithQueue:a3];
}

- (void)setLabel:(id)a3
{
  v6.receiver = self;
  v6.super_class = MTLIOAccelIOCommandBuffer;
  [(_MTLObjectWithLabel *)&v6 setLabel:?];
  if (**MEMORY[0x1E69A8488])
  {
    [(_MTLIOCommandBuffer *)self globalTraceObjectID];
    labelTraceID = self->super._labelTraceID;
    [a3 cStringUsingEncoding:1];
    self->super._labelTraceID = IOAccelDeviceTraceObjectLabel();
  }
}

@end