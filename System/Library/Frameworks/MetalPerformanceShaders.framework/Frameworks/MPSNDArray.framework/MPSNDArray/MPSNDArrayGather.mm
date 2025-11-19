@interface MPSNDArrayGather
- (MPSNDArrayGather)initWithDevice:(id)a3;
- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4;
- (id)encodeToCommandBuffer:(id)a3 primarySourceArray:(id)a4 secondarySourceArray:(id)a5;
- (void)encodeToCommandBuffer:(id)a3 primarySourceArray:(id)a4 secondarySourceArray:(id)a5 destinationArray:(id)a6;
@end

@implementation MPSNDArrayGather

- (MPSNDArrayGather)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGather;
  result = [(MPSNDArrayBinaryKernel *)&v4 initWithDevice:a3];
  result->_axis = 0;
  result->super.super._encode = EncodeGather;
  result->super.super.super._encodeData = result;
  return result;
}

- (id)destinationArrayDescriptorForSourceArrays:(id)a3 sourceState:(id)a4
{
  v27[16] = *MEMORY[0x277D85DE8];
  v6 = [a3 objectAtIndexedSubscript:{0, a4}];
  v7 = [a3 objectAtIndexedSubscript:1];
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

- (void)encodeToCommandBuffer:(id)a3 primarySourceArray:(id)a4 secondarySourceArray:(id)a5 destinationArray:(id)a6
{
  v8 = a4;
  v11 = MEMORY[0x277CD73F0];
  v12 = *MEMORY[0x277CD73F0];
  if (self->_axis >= *(a4 + v12))
  {
    v16 = MTLReportFailureTypeEnabled();
    LODWORD(v12) = *v11;
    if (v16)
    {
      axis = self->_axis;
      v18 = *&v8[v12];
      MTLReportFailure();
      LODWORD(v12) = *v11;
    }
  }

  if (*(a5 + v12) >= 2uLL && MTLReportFailureTypeEnabled())
  {
    axis = *(a5 + *v11);
    MTLReportFailure();
  }

  v13 = objc_autoreleasePoolPush();
  if (self->_axis)
  {
    v14 = [v8 descriptor];
    v15 = [a6 descriptor];
    [v14 transposeDimension:0 withDimension:self->_axis];
    [v15 transposeDimension:0 withDimension:self->_axis];
    v8 = [v8 arrayViewWithCommandBuffer:a3 descriptor:v14 aliasing:1];
    a6 = [a6 arrayViewWithCommandBuffer:a3 descriptor:v15 aliasing:1];
  }

  v19.receiver = self;
  v19.super_class = MPSNDArrayGather;
  [(MPSNDArrayBinaryKernel *)&v19 encodeToCommandBuffer:a3 primarySourceArray:v8 secondarySourceArray:a5 destinationArray:a6, axis, v18];
  objc_autoreleasePoolPop(v13);
}

- (id)encodeToCommandBuffer:(id)a3 primarySourceArray:(id)a4 secondarySourceArray:(id)a5
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = a4;
  v12[1] = a5;
  v9 = -[MPSNDArrayAllocator arrayForCommandBuffer:arrayDescriptor:kernel:](self->super.super.super._destinationArrayAllocator, "arrayForCommandBuffer:arrayDescriptor:kernel:", a3, -[MPSNDArrayGather destinationArrayDescriptorForSourceArrays:sourceState:](self, "destinationArrayDescriptorForSourceArrays:sourceState:", [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2], 0), self);
  [(MPSNDArrayGather *)self encodeToCommandBuffer:a3 primarySourceArray:a4 secondarySourceArray:a5 destinationArray:v9];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

@end