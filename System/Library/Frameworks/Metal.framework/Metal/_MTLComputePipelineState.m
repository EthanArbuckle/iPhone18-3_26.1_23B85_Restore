@interface _MTLComputePipelineState
- (_MTLComputePipelineState)initWithDevice:(id)a3 pipelineStateDescriptor:(id)a4;
- (_MTLComputePipelineState)initWithParent:(id)a3;
- (id)formattedDescription:(unint64_t)a3;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3;
- (void)dealloc;
@end

@implementation _MTLComputePipelineState

- (void)dealloc
{
  self->_debugInstrumentationData = 0;

  v3.receiver = self;
  v3.super_class = _MTLComputePipelineState;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

- (_MTLComputePipelineState)initWithDevice:(id)a3 pipelineStateDescriptor:(id)a4
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(_MTLComputePipelineState *)isKindOfClass initWithDevice:v12 pipelineStateDescriptor:v13, v14, v15, v16, v17, v18, v29];
    }
  }

  else
  {
    [(_MTLComputePipelineState *)self initWithDevice:a2 pipelineStateDescriptor:0, a4, v4, v5, v6, v7, v29];
  }

  if (a4)
  {
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();
    if ((v19 & 1) == 0)
    {
      [(_MTLComputePipelineState *)v19 initWithDevice:v20 pipelineStateDescriptor:v21, v22, v23, v24, v25, v26, v29];
    }
  }

  else
  {
    [(_MTLComputePipelineState *)isKindOfClass initWithDevice:v12 pipelineStateDescriptor:v13, v14, v15, v16, v17, v18, v29];
  }

  v32.receiver = self;
  v32.super_class = _MTLComputePipelineState;
  v27 = [(_MTLAllocation *)&v32 initWithAllocationType:4];
  if (v27)
  {
    if ([a4 label])
    {
      [v27 setLabel:{objc_msgSend(a4, "label")}];
    }

    *(v27 + 4) = a3;
    v27[48] = [a4 supportIndirectCommandBuffers];
    *(v27 + 7) = [a4 textureWriteRoundingMode];
    if (a4)
    {
      [a4 requiredThreadsPerThreadgroup];
    }

    else
    {
      v30 = 0uLL;
      v31 = 0;
    }

    *(v27 + 88) = v30;
    *(v27 + 13) = v31;
  }

  return v27;
}

- (_MTLComputePipelineState)initWithParent:(id)a3
{
  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(_MTLComputePipelineState *)isKindOfClass initWithParent:v11, v12, v13, v14, v15, v16, v17, v20];
    }
  }

  else
  {
    [(_MTLComputePipelineState *)self initWithParent:a2, 0, v3, v4, v5, v6, v7, v20];
  }

  v23.receiver = self;
  v23.super_class = _MTLComputePipelineState;
  v18 = [(_MTLAllocation *)&v23 initWithAllocationType:4];
  if (v18)
  {
    if ([a3 label])
    {
      [v18 setLabel:{objc_msgSend(a3, "label")}];
    }

    *(v18 + 4) = [a3 device];
    v18[48] = [a3 supportIndirectCommandBuffers];
    *(v18 + 7) = [a3 textureWriteRoundingMode];
    *(v18 + 5) = *(a3 + 5);
    [a3 requiredThreadsPerThreadgroup];
    *(v18 + 88) = v21;
    *(v18 + 13) = v22;
  }

  return v18;
}

- (id)formattedDescription:(unint64_t)a3
{
  v14[6] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:a3 + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = _MTLComputePipelineState;
  v7 = [(_MTLComputePipelineState *)&v13 description];
  v14[0] = v5;
  v14[1] = @"label =";
  if ([(_MTLObjectWithLabel *)self label])
  {
    v8 = [(_MTLObjectWithLabel *)self label];
  }

  else
  {
    v8 = @"<none>";
  }

  v14[2] = v8;
  v14[3] = v5;
  v14[4] = @"device =";
  device = self->_device;
  if (device)
  {
    v10 = [(MTLDevice *)device formattedDescription:a3 + 4];
  }

  else
  {
    v10 = @"<null>";
  }

  v14[5] = v10;
  result = [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 6), "componentsJoinedByString:", @" "];
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)newVisibleFunctionTableWithDescriptor:(id)a3
{
  v4 = [(_MTLComputePipelineState *)self device];

  return [(MTLDevice *)v4 newVisibleFunctionTableWithDescriptor:a3];
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3
{
  v4 = [(_MTLComputePipelineState *)self device];

  return [(MTLDevice *)v4 newIntersectionFunctionTableWithDescriptor:a3];
}

@end