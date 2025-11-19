@interface MTLIOAccelIOCommandQueue
- (MTLIOAccelIOCommandQueue)initWithDevice:(id)a3 descriptor:(id)a4;
- (id)commandBuffer;
- (id)commandBufferWithUnretainedReferences;
- (void)setLabel:(id)a3;
@end

@implementation MTLIOAccelIOCommandQueue

- (MTLIOAccelIOCommandQueue)initWithDevice:(id)a3 descriptor:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLIOAccelIOCommandQueue;
  return [(_MTLIOCommandQueue *)&v5 initWithDevice:a3 descriptor:a4];
}

- (id)commandBuffer
{
  v2 = [[MTLIOAccelIOCommandBuffer alloc] initWithQueue:self resourceList:self->super._resourceListPool retained:1];

  return v2;
}

- (id)commandBufferWithUnretainedReferences
{
  v2 = [[MTLIOAccelIOCommandBuffer alloc] initWithQueue:self resourceList:self->super._resourceListPool retained:0];

  return v2;
}

- (void)setLabel:(id)a3
{
  v6.receiver = self;
  v6.super_class = MTLIOAccelIOCommandQueue;
  [(_MTLObjectWithLabel *)&v6 setLabel:?];
  if (**MEMORY[0x1E69A8488])
  {
    [(_MTLIOCommandQueue *)self globalTraceObjectID];
    labelTraceID = self->super._labelTraceID;
    [a3 cStringUsingEncoding:1];
    self->super._labelTraceID = IOAccelDeviceTraceObjectLabel();
  }
}

@end