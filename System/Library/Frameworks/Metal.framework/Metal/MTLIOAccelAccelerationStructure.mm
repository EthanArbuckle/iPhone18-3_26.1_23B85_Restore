@interface MTLIOAccelAccelerationStructure
- (MTLIOAccelAccelerationStructure)initWithBuffer:(id)a3 offset:(unint64_t)a4;
- (MTLIOAccelAccelerationStructure)initWithBuffer:(id)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5;
- (unint64_t)gpuHandle;
- (void)copyPropertiesFromBuffer:(id)a3;
- (void)dealloc;
@end

@implementation MTLIOAccelAccelerationStructure

- (void)copyPropertiesFromBuffer:(id)a3
{
  v4 = a3 + 32;
  v5 = *(a3 + 30);
  v6 = *(v4 + 27);
  *&self->super._anon_50[160] = v5;
  *&self->super._anon_50[168] = v6;
  *&self->super._anon_50[176] = *(v4 + 14);
  self->super._anon_50[192] = v4[240];
  *&self->super._anon_50[24] = *(v4 + 9);
  *&self->super._anon_50[88] = *(v4 + 17);
}

- (MTLIOAccelAccelerationStructure)initWithBuffer:(id)a3 offset:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = MTLIOAccelAccelerationStructure;
  v6 = [(MTLIOAccelResource *)&v8 initWithResource:?];
  if (v6)
  {
    v6->_buffer = a3;
    v6->_bufferOffset = a4;
    [(MTLIOAccelAccelerationStructure *)v6 copyPropertiesFromBuffer:a3];
  }

  return v6;
}

- (MTLIOAccelAccelerationStructure)initWithBuffer:(id)a3 offset:(unint64_t)a4 resourceIndex:(unint64_t)a5
{
  v10.receiver = self;
  v10.super_class = MTLIOAccelAccelerationStructure;
  v8 = [(MTLIOAccelResource *)&v10 initWithResource:?];
  if (v8)
  {
    v8->_buffer = a3;
    v8->_bufferOffset = a4;
    v8->_resourceIndex = a5;
    [(MTLIOAccelAccelerationStructure *)v8 copyPropertiesFromBuffer:a3];
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
    v3 = [(MTLIOAccelAccelerationStructure *)self buffer];

    return [(MTLBuffer *)v3 gpuAddress];
  }

  else
  {

    return [(MTLIOAccelAccelerationStructure *)self resourceIndex];
  }
}

@end