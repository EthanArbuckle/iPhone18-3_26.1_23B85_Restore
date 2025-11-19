@interface _MTL4CommandBuffer
- (_MTL4CommandBuffer)initWithDevice:(id)a3;
- (id)machineLearningCommandEncoder;
- (void)beginCommandBufferWithAllocator:(id)a3;
- (void)beginCommandBufferWithAllocator:(id)a3 options:(id)a4;
- (void)dealloc;
- (void)registerMLEncoder:(id)a3;
- (void)resetCommandBuffer;
- (void)setUpPrivateData:(id)a3;
- (void)setupShaderLoggingWithLogState:(id)a3 allocator:(id)a4;
@end

@implementation _MTL4CommandBuffer

- (_MTL4CommandBuffer)initWithDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = _MTL4CommandBuffer;
  v4 = [(_MTLObjectWithLabel *)&v6 init];
  if (v4)
  {
    v4->_device = a3;
    v4->_privateData = 0;
    v4->_privateDataOffset = 0;
    v4->_logState = 0;
    if (*(a3 + 45))
    {
      [a3 initDefaultLogState];
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

- (void)setUpPrivateData:(id)a3
{
  if (!self->_privateData)
  {
    [a3 getPrivateDataAndOffset:&self->_privateData privateDataOffset:&self->_privateDataOffset];
  }
}

- (void)beginCommandBufferWithAllocator:(id)a3
{
  [(_MTL4CommandBuffer *)self setupShaderLoggingWithLogState:0 allocator:a3];
  if (MTLGPUDebugEnabled())
  {
    [(_MTL4CommandBuffer *)self setUpPrivateData:a3];
  }

  ++self->_currentGeneration;
}

- (void)beginCommandBufferWithAllocator:(id)a3 options:(id)a4
{
  -[_MTL4CommandBuffer setupShaderLoggingWithLogState:allocator:](self, "setupShaderLoggingWithLogState:allocator:", [a4 logState], a3);
  if (MTLGPUDebugEnabled())
  {
    [(_MTL4CommandBuffer *)self setUpPrivateData:a3];
  }

  ++self->_currentGeneration;
}

- (void)setupShaderLoggingWithLogState:(id)a3 allocator:(id)a4
{
  logState = self->_logState;
  if (logState)
  {

    self->_logState = 0;
  }

  v8 = [(_MTL4CommandBuffer *)self device];
  v9 = [(MTLDevice *)v8 defaultLogState];
  if (a3 || (a3 = v9) != 0)
  {
    self->_logState = a3;
    [(_MTL4CommandBuffer *)self setUpPrivateData:a4];
    [a4 setPrivateData:self->_privateData privateDataOffset:self->_privateDataOffset logState:self->_logState];
    v10 = [(MTLDevice *)v8 internalLogBufferResidencySet];

    [(_MTL4CommandBuffer *)self useInternalResidencySet:v10];
  }
}

- (void)registerMLEncoder:(id)a3
{
  mlCommandEncoders = self->_mlCommandEncoders;
  if (!mlCommandEncoders)
  {
    mlCommandEncoders = objc_opt_new();
    self->_mlCommandEncoders = mlCommandEncoders;
  }

  [(NSMutableArray *)mlCommandEncoders addObject:a3];
}

- (id)machineLearningCommandEncoder
{
  v3 = [[_MTL4MachineLearningCommandEncoder alloc] initWithDevice:self->_device];
  [(_MTL4CommandBuffer *)self registerMLEncoder:v3];
  v4 = [(_MTL4MachineLearningCommandEncoder *)v3 event];
  [(_MTL4CommandBuffer *)self encodeSignalEvent:v4 value:[(_MTL4MachineLearningCommandEncoder *)v3 startEventValue]];
  [(_MTL4CommandBuffer *)self encodeWaitForEvent:v4 value:[(_MTL4MachineLearningCommandEncoder *)v3 endEventValue]];
  return v3;
}

- (void)resetCommandBuffer
{
  self->_privateData = 0;

  [(_MTL4CommandBuffer *)self clearMLCommandEncoderList];
}

@end