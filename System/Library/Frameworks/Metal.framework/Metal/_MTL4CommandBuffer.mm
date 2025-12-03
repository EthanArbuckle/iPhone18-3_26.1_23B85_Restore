@interface _MTL4CommandBuffer
- (_MTL4CommandBuffer)initWithDevice:(id)device;
- (id)machineLearningCommandEncoder;
- (void)beginCommandBufferWithAllocator:(id)allocator;
- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options;
- (void)dealloc;
- (void)registerMLEncoder:(id)encoder;
- (void)resetCommandBuffer;
- (void)setUpPrivateData:(id)data;
- (void)setupShaderLoggingWithLogState:(id)state allocator:(id)allocator;
@end

@implementation _MTL4CommandBuffer

- (_MTL4CommandBuffer)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = _MTL4CommandBuffer;
  v4 = [(_MTLObjectWithLabel *)&v6 init];
  if (v4)
  {
    v4->_device = device;
    v4->_privateData = 0;
    v4->_privateDataOffset = 0;
    v4->_logState = 0;
    if (*(device + 45))
    {
      [device initDefaultLogState];
    }
  }

  return v4;
}

- (void)dealloc
{
  self->_device = 0;

  self->_logState = 0;
  self->_mlCommandEncoders = 0;
  v3.receiver = self;
  v3.super_class = _MTL4CommandBuffer;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

- (void)setUpPrivateData:(id)data
{
  if (!self->_privateData)
  {
    [data getPrivateDataAndOffset:&self->_privateData privateDataOffset:&self->_privateDataOffset];
  }
}

- (void)beginCommandBufferWithAllocator:(id)allocator
{
  [(_MTL4CommandBuffer *)self setupShaderLoggingWithLogState:0 allocator:allocator];
  if (MTLGPUDebugEnabled())
  {
    [(_MTL4CommandBuffer *)self setUpPrivateData:allocator];
  }

  ++self->_currentGeneration;
}

- (void)beginCommandBufferWithAllocator:(id)allocator options:(id)options
{
  -[_MTL4CommandBuffer setupShaderLoggingWithLogState:allocator:](self, "setupShaderLoggingWithLogState:allocator:", [options logState], allocator);
  if (MTLGPUDebugEnabled())
  {
    [(_MTL4CommandBuffer *)self setUpPrivateData:allocator];
  }

  ++self->_currentGeneration;
}

- (void)setupShaderLoggingWithLogState:(id)state allocator:(id)allocator
{
  logState = self->_logState;
  if (logState)
  {

    self->_logState = 0;
  }

  device = [(_MTL4CommandBuffer *)self device];
  defaultLogState = [(MTLDevice *)device defaultLogState];
  if (state || (state = defaultLogState) != 0)
  {
    self->_logState = state;
    [(_MTL4CommandBuffer *)self setUpPrivateData:allocator];
    [allocator setPrivateData:self->_privateData privateDataOffset:self->_privateDataOffset logState:self->_logState];
    internalLogBufferResidencySet = [(MTLDevice *)device internalLogBufferResidencySet];

    [(_MTL4CommandBuffer *)self useInternalResidencySet:internalLogBufferResidencySet];
  }
}

- (void)registerMLEncoder:(id)encoder
{
  mlCommandEncoders = self->_mlCommandEncoders;
  if (!mlCommandEncoders)
  {
    mlCommandEncoders = objc_opt_new();
    self->_mlCommandEncoders = mlCommandEncoders;
  }

  [(NSMutableArray *)mlCommandEncoders addObject:encoder];
}

- (id)machineLearningCommandEncoder
{
  v3 = [[_MTL4MachineLearningCommandEncoder alloc] initWithDevice:self->_device];
  [(_MTL4CommandBuffer *)self registerMLEncoder:v3];
  event = [(_MTL4MachineLearningCommandEncoder *)v3 event];
  [(_MTL4CommandBuffer *)self encodeSignalEvent:event value:[(_MTL4MachineLearningCommandEncoder *)v3 startEventValue]];
  [(_MTL4CommandBuffer *)self encodeWaitForEvent:event value:[(_MTL4MachineLearningCommandEncoder *)v3 endEventValue]];
  return v3;
}

- (void)resetCommandBuffer
{
  self->_privateData = 0;

  [(_MTL4CommandBuffer *)self clearMLCommandEncoderList];
}

@end