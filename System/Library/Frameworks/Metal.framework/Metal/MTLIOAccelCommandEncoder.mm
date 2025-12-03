@interface MTLIOAccelCommandEncoder
- (MTLIOAccelCommandEncoder)initWithCommandBuffer:(id)buffer;
- (unint64_t)globalTraceObjectID;
- (void)endEncoding;
- (void)popDebugGroup;
- (void)pushDebugGroup:(id)group;
- (void)setLabel:(id)label;
@end

@implementation MTLIOAccelCommandEncoder

- (MTLIOAccelCommandEncoder)initWithCommandBuffer:(id)buffer
{
  v7.receiver = self;
  v7.super_class = MTLIOAccelCommandEncoder;
  v4 = [(_MTLCommandEncoder *)&v7 initWithCommandBuffer:?];
  v5 = v4;
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)v4->super._device deviceRef];
    [buffer globalTraceObjectID];
    [(MTLIOAccelCommandEncoder *)v5 globalTraceObjectID];
    [(_MTLCommandEncoder *)v5 getType];
    IOAccelDeviceTraceEvent();
  }

  return v5;
}

- (void)endEncoding
{
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->super._device deviceRef];
    [(MTLCommandBuffer *)self->super._commandBuffer globalTraceObjectID];
    [(MTLIOAccelCommandEncoder *)self globalTraceObjectID];
    [(_MTLCommandEncoder *)self getType];
    IOAccelDeviceTraceEvent();
  }

  v3.receiver = self;
  v3.super_class = MTLIOAccelCommandEncoder;
  [(_MTLCommandEncoder *)&v3 endEncoding];
}

- (void)setLabel:(id)label
{
  v6.receiver = self;
  v6.super_class = MTLIOAccelCommandEncoder;
  [(_MTLObjectWithLabel *)&v6 setLabel:?];
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->super._device deviceRef];
    [(MTLIOAccelCommandEncoder *)self globalTraceObjectID];
    labelTraceID = self->super._labelTraceID;
    [label cStringUsingEncoding:1];
    self->super._labelTraceID = IOAccelDeviceTraceObjectLabel();
  }
}

- (void)pushDebugGroup:(id)group
{
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->super._device deviceRef];
    [(MTLIOAccelCommandEncoder *)self globalTraceObjectID];
    [group cStringUsingEncoding:1];
    IOAccelDeviceTraceObjectLabel();
  }

  v5.receiver = self;
  v5.super_class = MTLIOAccelCommandEncoder;
  [(_MTLCommandEncoder *)&v5 pushDebugGroup:group];
}

- (void)popDebugGroup
{
  if (**MEMORY[0x1E69A8488])
  {
    [(MTLDevice *)self->super._device deviceRef];
    [(MTLIOAccelCommandEncoder *)self globalTraceObjectID];
    IOAccelDeviceTraceEvent();
  }

  v3.receiver = self;
  v3.super_class = MTLIOAccelCommandEncoder;
  [(_MTLCommandEncoder *)&v3 popDebugGroup];
}

- (unint64_t)globalTraceObjectID
{
  result = self->super._globalTraceObjectID;
  if (!result)
  {
    [(MTLDevice *)self->super._device deviceRef];
    result = IOAccelDeviceGetNextGlobalTraceID();
    self->super._globalTraceObjectID = result;
  }

  return result;
}

@end