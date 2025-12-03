@interface _MTLComputePipelineState
- (_MTLComputePipelineState)initWithDevice:(id)device pipelineStateDescriptor:(id)descriptor;
- (_MTLComputePipelineState)initWithParent:(id)parent;
- (id)formattedDescription:(unint64_t)description;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor;
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

- (_MTLComputePipelineState)initWithDevice:(id)device pipelineStateDescriptor:(id)descriptor
{
  if (device)
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
    [(_MTLComputePipelineState *)self initWithDevice:a2 pipelineStateDescriptor:0, descriptor, v4, v5, v6, v7, v29];
  }

  if (descriptor)
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
    if ([descriptor label])
    {
      [v27 setLabel:{objc_msgSend(descriptor, "label")}];
    }

    *(v27 + 4) = device;
    v27[48] = [descriptor supportIndirectCommandBuffers];
    *(v27 + 7) = [descriptor textureWriteRoundingMode];
    if (descriptor)
    {
      [descriptor requiredThreadsPerThreadgroup];
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

- (_MTLComputePipelineState)initWithParent:(id)parent
{
  if (parent)
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
    if ([parent label])
    {
      [v18 setLabel:{objc_msgSend(parent, "label")}];
    }

    *(v18 + 4) = [parent device];
    v18[48] = [parent supportIndirectCommandBuffers];
    *(v18 + 7) = [parent textureWriteRoundingMode];
    *(v18 + 5) = *(parent + 5);
    [parent requiredThreadsPerThreadgroup];
    *(v18 + 88) = v21;
    *(v18 + 13) = v22;
  }

  return v18;
}

- (id)formattedDescription:(unint64_t)description
{
  v14[6] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = _MTLComputePipelineState;
  v7 = [(_MTLComputePipelineState *)&v13 description];
  v14[0] = v5;
  v14[1] = @"label =";
  if ([(_MTLObjectWithLabel *)self label])
  {
    label = [(_MTLObjectWithLabel *)self label];
  }

  else
  {
    label = @"<none>";
  }

  v14[2] = label;
  v14[3] = v5;
  v14[4] = @"device =";
  device = self->_device;
  if (device)
  {
    v10 = [(MTLDevice *)device formattedDescription:description + 4];
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

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor
{
  device = [(_MTLComputePipelineState *)self device];

  return [(MTLDevice *)device newVisibleFunctionTableWithDescriptor:descriptor];
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  device = [(_MTLComputePipelineState *)self device];

  return [(MTLDevice *)device newIntersectionFunctionTableWithDescriptor:descriptor];
}

@end