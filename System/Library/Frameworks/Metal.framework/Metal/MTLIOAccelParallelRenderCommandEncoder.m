@interface MTLIOAccelParallelRenderCommandEncoder
- (MTLIOAccelParallelRenderCommandEncoder)initWithCommandBuffer:(id)a3 renderPassDescriptor:(id)a4;
- (void)endEncoding;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)a3;
- (void)setLabel:(id)a3;
@end

@implementation MTLIOAccelParallelRenderCommandEncoder

- (MTLIOAccelParallelRenderCommandEncoder)initWithCommandBuffer:(id)a3 renderPassDescriptor:(id)a4
{
  v9.receiver = self;
  v9.super_class = MTLIOAccelParallelRenderCommandEncoder;
  v5 = [(_MTLParallelRenderCommandEncoder *)&v9 initWithCommandBuffer:a3 renderPassDescriptor:a4];
  v6 = v5;
  if (v5)
  {
    [(MTLDevice *)v5->super._device deviceRef];
    v6->super._globalTraceObjectID = IOAccelDeviceGetNextGlobalTraceID();
    if (**MEMORY[0x1E69A8488])
    {
      [(MTLDevice *)v6->super._device deviceRef];
      [a3 globalTraceObjectID];
      globalTraceObjectID = v6->super._globalTraceObjectID;
      [(MTLIOAccelParallelRenderCommandEncoder *)v6 getType];
      IOAccelDeviceTraceEvent();
    }
  }

  return v6;
}

- (void)setLabel:(id)a3
{
  v7.receiver = self;
  v7.super_class = MTLIOAccelParallelRenderCommandEncoder;
  [(_MTLObjectWithLabel *)&v7 setLabel:?];
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->super._device deviceRef];
    globalTraceObjectID = self->super._globalTraceObjectID;
    labelTraceID = self->super._labelTraceID;
    [a3 cStringUsingEncoding:1];
    self->super._labelTraceID = IOAccelDeviceTraceObjectLabel();
  }
}

- (void)endEncoding
{
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->super._device deviceRef];
    [(MTLCommandBuffer *)self->super._commandBuffer globalTraceObjectID];
    globalTraceObjectID = self->super._globalTraceObjectID;
    [(MTLIOAccelParallelRenderCommandEncoder *)self getType];
    IOAccelDeviceTraceEvent();
  }

  v4.receiver = self;
  v4.super_class = MTLIOAccelParallelRenderCommandEncoder;
  [(_MTLParallelRenderCommandEncoder *)&v4 endEncoding];
}

- (void)pushDebugGroup:(id)a3
{
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->super._device deviceRef];
    globalTraceObjectID = self->super._globalTraceObjectID;
    [a3 cStringUsingEncoding:1];
    IOAccelDeviceTraceObjectLabel();
  }

  v6.receiver = self;
  v6.super_class = MTLIOAccelParallelRenderCommandEncoder;
  [(_MTLParallelRenderCommandEncoder *)&v6 pushDebugGroup:a3];
}

- (void)popDebugGroup
{
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->super._device deviceRef];
    globalTraceObjectID = self->super._globalTraceObjectID;
    IOAccelDeviceTraceEvent();
  }

  v4.receiver = self;
  v4.super_class = MTLIOAccelParallelRenderCommandEncoder;
  [(_MTLParallelRenderCommandEncoder *)&v4 popDebugGroup];
}

@end