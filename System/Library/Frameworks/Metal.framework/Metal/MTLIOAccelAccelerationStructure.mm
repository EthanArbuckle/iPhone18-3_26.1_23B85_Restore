@interface MTLIOAccelAccelerationStructure
- (MTLIOAccelAccelerationStructure)initWithBuffer:(id)buffer offset:(unint64_t)offset;
- (MTLIOAccelAccelerationStructure)initWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (unint64_t)gpuHandle;
- (void)copyPropertiesFromBuffer:(id)buffer;
- (void)dealloc;
@end

@implementation MTLIOAccelAccelerationStructure

- (void)copyPropertiesFromBuffer:(id)buffer
{
  v4 = buffer + 32;
  v5 = *(buffer + 30);
  v6 = *(v4 + 27);
  *&self->super._anon_50[160] = v5;
  *&self->super._anon_50[168] = v6;
  *&self->super._anon_50[176] = *(v4 + 14);
  self->super._anon_50[192] = v4[240];
  *&self->super._anon_50[24] = *(v4 + 9);
  *&self->super._anon_50[88] = *(v4 + 17);
}

- (MTLIOAccelAccelerationStructure)initWithBuffer:(id)buffer offset:(unint64_t)offset
{
  v8.receiver = self;
  v8.super_class = MTLIOAccelAccelerationStructure;
  v6 = [(MTLIOAccelResource *)&v8 initWithResource:?];
  if (v6)
  {
    v6->_buffer = buffer;
    v6->_bufferOffset = offset;
    [(MTLIOAccelAccelerationStructure *)v6 copyPropertiesFromBuffer:buffer];
  }

  return v6;
}

- (MTLIOAccelAccelerationStructure)initWithBuffer:(id)buffer offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  v10.receiver = self;
  v10.super_class = MTLIOAccelAccelerationStructure;
  v8 = [(MTLIOAccelResource *)&v10 initWithResource:?];
  if (v8)
  {
    v8->_buffer = buffer;
    v8->_bufferOffset = offset;
    v8->_resourceIndex = index;
    [(MTLIOAccelAccelerationStructure *)v8 copyPropertiesFromBuffer:buffer];
  }

  return v8;
}

- (void)dealloc
{
  *&self->super._anon_50[160] = 0;
  v3.receiver = self;
  v3.super_class = MTLIOAccelAccelerationStructure;
  [(MTLIOAccelResource *)&v3 dealloc];
}

- (unint64_t)gpuHandle
{
  if (([(MTLDevice *)[(MTLIOAccelResource *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    buffer = [(MTLIOAccelAccelerationStructure *)self buffer];

    return [(MTLBuffer *)buffer gpuAddress];
  }

  else
  {

    return [(MTLIOAccelAccelerationStructure *)self resourceIndex];
  }
}

@end