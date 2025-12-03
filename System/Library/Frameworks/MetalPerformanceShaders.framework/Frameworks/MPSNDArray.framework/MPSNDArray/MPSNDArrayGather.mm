@interface MPSNDArrayGather
- (MPSNDArrayGather)initWithDevice:(id)device;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (id)encodeToCommandBuffer:(id)buffer primarySourceArray:(id)array secondarySourceArray:(id)sourceArray;
- (void)encodeToCommandBuffer:(id)buffer primarySourceArray:(id)array secondarySourceArray:(id)sourceArray destinationArray:(id)destinationArray;
@end

@implementation MPSNDArrayGather

- (MPSNDArrayGather)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGather;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:device];
  result->_axis = 0;
  result->super.super._encode = EncodeGather;
  result->super.super.super._encodeData = result;
  return result;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v27[16] = *MEMORY[0x277D85DE8];
  v6 = [arrays objectAtIndexedSubscript:{0, state}];
  v7 = [arrays objectAtIndexedSubscript:1];
  v8 = MEMORY[0x277CD73F0];
  v9 = *MEMORY[0x277CD73F0];
  if (self->_axis >= *(v6 + v9))
  {
    v19 = v7;
    v20 = MTLReportFailureTypeEnabled();
    v7 = v19;
    LODWORD(v9) = *v8;
    if (v20)
    {
      axis = self->_axis;
      v22 = *(v6 + v9);
      MTLReportFailure();
      v7 = v19;
      LODWORD(v9) = *v8;
    }
  }

  v10 = *(v6 + v9);
  v11 = *MEMORY[0x277CD7410];
  if (v10)
  {
    v12 = 0;
    v14 = *(v6 + v11 + 32);
    v13 = *(v6 + v11 + 48);
    v16 = *(v6 + v11);
    v15 = *(v6 + v11 + 16);
    do
    {
      v23 = v16;
      v24 = v15;
      v25 = v14;
      v26 = v13;
      v27[v12] = *(&v23 + (v12 & 0xF));
      ++v12;
    }

    while (v10 != v12);
  }

  v27[self->_axis] = *(v7 + v11);
  result = [MEMORY[0x277CD7268] descriptorWithDataType:*(v6 + *MEMORY[0x277CD73C8]) dimensionCount:axis dimensionSizes:{v22, v23, v24, v25, v26}];
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)encodeToCommandBuffer:(id)buffer primarySourceArray:(id)array secondarySourceArray:(id)sourceArray destinationArray:(id)destinationArray
{
  arrayCopy = array;
  v11 = MEMORY[0x277CD73F0];
  v12 = *MEMORY[0x277CD73F0];
  if (self->_axis >= *(array + v12))
  {
    v16 = MTLReportFailureTypeEnabled();
    LODWORD(v12) = *v11;
    if (v16)
    {
      axis = self->_axis;
      v18 = *&arrayCopy[v12];
      MTLReportFailure();
      LODWORD(v12) = *v11;
    }
  }

  if (*(sourceArray + v12) >= 2uLL && MTLReportFailureTypeEnabled())
  {
    axis = *(sourceArray + *v11);
    MTLReportFailure();
  }

  v13 = objc_autoreleasePoolPush();
  if (self->_axis)
  {
    descriptor = [arrayCopy descriptor];
    descriptor2 = [destinationArray descriptor];
    [descriptor transposeDimension:0 withDimension:self->_axis];
    [descriptor2 transposeDimension:0 withDimension:self->_axis];
    arrayCopy = [arrayCopy arrayViewWithCommandBuffer:buffer descriptor:descriptor aliasing:1];
    destinationArray = [destinationArray arrayViewWithCommandBuffer:buffer descriptor:descriptor2 aliasing:1];
  }

  v19.receiver = self;
  v19.super_class = MPSNDArrayGather;
  [(MPSNDArrayBinaryKernel *)&v19 encodeToCommandBuffer:buffer primarySourceArray:arrayCopy secondarySourceArray:sourceArray destinationArray:destinationArray, axis, v18];
  objc_autoreleasePoolPop(v13);
}

- (id)encodeToCommandBuffer:(id)buffer primarySourceArray:(id)array secondarySourceArray:(id)sourceArray
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = array;
  v12[1] = sourceArray;
  v9 = -[MPSNDArrayAllocator arrayForCommandBuffer:arrayDescriptor:kernel:](self->super.super.super._destinationArrayAllocator, "arrayForCommandBuffer:arrayDescriptor:kernel:", buffer, -[MPSNDArrayGather destinationArrayDescriptorForSourceArrays:sourceState:](self, "destinationArrayDescriptorForSourceArrays:sourceState:", [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2], 0), self);
  [(MPSNDArrayGather *)self encodeToCommandBuffer:buffer primarySourceArray:array secondarySourceArray:sourceArray destinationArray:v9];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end