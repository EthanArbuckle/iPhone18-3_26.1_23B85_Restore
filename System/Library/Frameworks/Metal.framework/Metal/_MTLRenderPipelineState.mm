@interface _MTLRenderPipelineState
- (_MTLRenderPipelineState)initWithDevice:(id)device meshRenderPipelineStateDescriptor:(id)descriptor objectThreadExecutionWidth:(unint64_t)width meshThreadExecutionWidth:(unint64_t)executionWidth;
- (_MTLRenderPipelineState)initWithDevice:(id)device meshRenderPipelineStateDescriptor:(id)descriptor objectThreadExecutionWidth:(unint64_t)width meshThreadExecutionWidth:(unint64_t)executionWidth maxTotalThreadgroupsPerMeshGrid:(unint64_t)grid;
- (_MTLRenderPipelineState)initWithDevice:(id)device pipelineStateDescriptor:(id)descriptor;
- (_MTLRenderPipelineState)initWithDeviceAndTileDesc:(id)desc tilePipelineStateDescriptor:(id)descriptor;
- (_MTLRenderPipelineState)initWithParent:(id)parent;
- (_MTLRenderPipelineState)initWithTileParent:(id)parent;
- (id)functionHandleWithFunction:(id)function stage:(unint64_t)stage;
- (id)newFragmentIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage;
- (id)newMeshIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newObjectIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error;
- (id)newTileIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newVertexIntersectionFunctionTableWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableFromFragmentStageWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableFromMeshStageWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableFromObjectStageWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableFromTileStageWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableFromVertexStageWithDescriptor:(id)descriptor;
- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage;
- (void)dealloc;
- (void)setDebugInstrumentationDataForstage:(id)forstage stage:(unint64_t)stage;
@end

@implementation _MTLRenderPipelineState

- (void)dealloc
{
  self->_vertexDebugInstrumentationData = 0;

  self->_fragmentDebugInstrumentationData = 0;
  self->_tileDebugInstrumentationData = 0;

  self->_objectDebugInstrumentationData = 0;
  self->_meshDebugInstrumentationData = 0;

  v3.receiver = self;
  v3.super_class = _MTLRenderPipelineState;
  [(_MTLObjectWithLabel *)&v3 dealloc];
}

- (_MTLRenderPipelineState)initWithDevice:(id)device pipelineStateDescriptor:(id)descriptor
{
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  _MTLMessageContextBegin_(v28, "[_MTLRenderPipelineState initWithDevice:pipelineStateDescriptor:]", 5875, device, 3, "Render Pipeline Descriptor Validation");
  if (device)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (descriptor)
      {
        goto LABEL_4;
      }

LABEL_24:
      v23 = @"desc must not be nil.";
LABEL_26:
      _MTLMessageContextPush_(v28, 4, v23, v7, v8, v9, v10, v11, v24);
      goto LABEL_5;
    }

    v21 = @"device is not a MTLDevice.";
    v22 = 8;
  }

  else
  {
    v21 = @"device must not be nil.";
    v22 = 4;
  }

  _MTLMessageContextPush_(v28, v22, v21, v7, v8, v9, v10, v11, v24);
  if (!descriptor)
  {
    goto LABEL_24;
  }

LABEL_4:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = @"desc is not a MTLRenderPipelineDescriptor.";
    goto LABEL_26;
  }

LABEL_5:
  if ([descriptor isTessellationFactorScaleEnabled] && objc_msgSend(descriptor, "supportIndirectCommandBuffers"))
  {
    _MTLMessageContextPush_(v28, 4, @"pipelines with tessellationFactorScaleEnabled = YES are not compatible with indirect command buffers", v12, v13, v14, v15, v16, v24);
  }

  _MTLMessageContextEnd(v28);
  v27.receiver = self;
  v27.super_class = _MTLRenderPipelineState;
  v17 = [(_MTLAllocation *)&v27 initWithAllocationType:3];
  if (v17)
  {
    if ([descriptor label])
    {
      [v17 setLabel:{objc_msgSend(descriptor, "label")}];
    }

    *(v17 + 4) = device;
    v17[109] = [descriptor supportIndirectCommandBuffers];
    *(v17 + 12) = [descriptor textureWriteRoundingMode];
    if ([descriptor meshFunction])
    {
      maxTotalThreadsPerObjectThreadgroup = [descriptor maxTotalThreadsPerObjectThreadgroup];
      if (!maxTotalThreadsPerObjectThreadgroup)
      {
        maxTotalThreadsPerObjectThreadgroup = [device maxTotalComputeThreadsPerThreadgroup];
      }

      *(v17 + 16) = maxTotalThreadsPerObjectThreadgroup;
      maxTotalThreadsPerMeshThreadgroup = [descriptor maxTotalThreadsPerMeshThreadgroup];
      if (!maxTotalThreadsPerMeshThreadgroup)
      {
        maxTotalThreadsPerMeshThreadgroup = [device maxTotalComputeThreadsPerThreadgroup];
      }

      *(v17 + 17) = maxTotalThreadsPerMeshThreadgroup;
      *(v17 + 18) = -1;
      *(v17 + 15) = -1;
      *(v17 + 14) = -1;
      if (descriptor)
      {
        [descriptor requiredThreadsPerObjectThreadgroup];
        *(v17 + 12) = v25;
        *(v17 + 26) = v26;
        [descriptor requiredThreadsPerMeshThreadgroup];
      }

      else
      {
        *(v17 + 25) = 0;
        *(v17 + 26) = 0;
        *(v17 + 24) = 0;
        v25 = 0uLL;
        v26 = 0;
      }

      *(v17 + 216) = v25;
      *(v17 + 29) = v26;
    }
  }

  return v17;
}

- (_MTLRenderPipelineState)initWithDevice:(id)device meshRenderPipelineStateDescriptor:(id)descriptor objectThreadExecutionWidth:(unint64_t)width meshThreadExecutionWidth:(unint64_t)executionWidth
{
  maxTotalThreadgroupsPerMeshGrid = [descriptor maxTotalThreadgroupsPerMeshGrid];
  if (maxTotalThreadgroupsPerMeshGrid)
  {
    v12 = maxTotalThreadgroupsPerMeshGrid;
  }

  else
  {
    v12 = -1;
  }

  return [(_MTLRenderPipelineState *)self initWithDevice:device meshRenderPipelineStateDescriptor:descriptor objectThreadExecutionWidth:width meshThreadExecutionWidth:executionWidth maxTotalThreadgroupsPerMeshGrid:v12];
}

- (_MTLRenderPipelineState)initWithDevice:(id)device meshRenderPipelineStateDescriptor:(id)descriptor objectThreadExecutionWidth:(unint64_t)width meshThreadExecutionWidth:(unint64_t)executionWidth maxTotalThreadgroupsPerMeshGrid:(unint64_t)grid
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  _MTLMessageContextBegin_(v29, "[_MTLRenderPipelineState initWithDevice:meshRenderPipelineStateDescriptor:objectThreadExecutionWidth:meshThreadExecutionWidth:maxTotalThreadgroupsPerMeshGrid:]", 5950, device, 3, "Render Pipeline Descriptor Validation");
  if (!device)
  {
    v22 = @"device must not be nil.";
    v23 = 4;
    goto LABEL_19;
  }

  if (([device conformsToProtocol:&unk_1EF502428] & 1) == 0)
  {
    v22 = @"device is not a MTLDevice.";
    v23 = 8;
LABEL_19:
    _MTLMessageContextPush_(v29, v23, v22, v13, v14, v15, v16, v17, v25);
    if (descriptor)
    {
      goto LABEL_4;
    }

LABEL_20:
    v24 = @"desc must not be nil.";
    goto LABEL_22;
  }

  if (!descriptor)
  {
    goto LABEL_20;
  }

LABEL_4:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  v24 = @"desc is not a MTLMeshRenderPipelineDescriptor.";
LABEL_22:
  _MTLMessageContextPush_(v29, 4, v24, v13, v14, v15, v16, v17, v25);
LABEL_5:
  _MTLMessageContextEnd(v29);
  v28.receiver = self;
  v28.super_class = _MTLRenderPipelineState;
  v18 = [(_MTLAllocation *)&v28 initWithAllocationType:3];
  if (v18)
  {
    if ([descriptor label])
    {
      [v18 setLabel:{objc_msgSend(descriptor, "label")}];
    }

    *(v18 + 4) = device;
    v18[109] = [descriptor supportIndirectCommandBuffers];
    *(v18 + 12) = [descriptor textureWriteRoundingMode];
    maxTotalThreadsPerObjectThreadgroup = [descriptor maxTotalThreadsPerObjectThreadgroup];
    if (!maxTotalThreadsPerObjectThreadgroup)
    {
      maxTotalThreadsPerObjectThreadgroup = [device maxTotalComputeThreadsPerThreadgroup];
    }

    *(v18 + 16) = maxTotalThreadsPerObjectThreadgroup;
    maxTotalThreadsPerMeshThreadgroup = [descriptor maxTotalThreadsPerMeshThreadgroup];
    if (!maxTotalThreadsPerMeshThreadgroup)
    {
      maxTotalThreadsPerMeshThreadgroup = [device maxTotalComputeThreadsPerThreadgroup];
    }

    *(v18 + 17) = maxTotalThreadsPerMeshThreadgroup;
    *(v18 + 14) = width;
    *(v18 + 15) = executionWidth;
    *(v18 + 18) = grid;
    if (descriptor)
    {
      [descriptor requiredThreadsPerObjectThreadgroup];
      *(v18 + 12) = v26;
      *(v18 + 26) = v27;
      [descriptor requiredThreadsPerMeshThreadgroup];
    }

    else
    {
      *(v18 + 25) = 0;
      *(v18 + 26) = 0;
      *(v18 + 24) = 0;
      v26 = 0uLL;
      v27 = 0;
    }

    *(v18 + 216) = v26;
    *(v18 + 29) = v27;
  }

  return v18;
}

- (_MTLRenderPipelineState)initWithDeviceAndTileDesc:(id)desc tilePipelineStateDescriptor:(id)descriptor
{
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  _MTLMessageContextBegin_(v22, "[_MTLRenderPipelineState initWithDeviceAndTileDesc:tilePipelineStateDescriptor:]", 6007, desc, 3, "Render Pipeline Descriptor Validation");
  if (!desc)
  {
    v14 = @"device must not be nil.";
    v15 = 4;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = @"device is not a MTLDevice.";
    v15 = 8;
LABEL_15:
    _MTLMessageContextPush_(v22, v15, v14, v7, v8, v9, v10, v11, v18);
    if (descriptor)
    {
      goto LABEL_4;
    }

LABEL_16:
    v16 = @"desc must not be nil.";
    v17 = 4;
    goto LABEL_18;
  }

  if (!descriptor)
  {
    goto LABEL_16;
  }

LABEL_4:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_5;
  }

  v16 = @"desc is not a MTLRenderPipelineDescriptor.";
  v17 = 8;
LABEL_18:
  _MTLMessageContextPush_(v22, v17, v16, v7, v8, v9, v10, v11, v18);
LABEL_5:
  _MTLMessageContextEnd(v22);
  v21.receiver = self;
  v21.super_class = _MTLRenderPipelineState;
  v12 = [(_MTLAllocation *)&v21 initWithAllocationType:3];
  if (v12)
  {
    if ([descriptor label])
    {
      [v12 setLabel:{objc_msgSend(descriptor, "label")}];
    }

    *(v12 + 4) = desc;
    v12[108] = [descriptor threadgroupSizeMatchesTileSize];
    if (descriptor)
    {
      [descriptor requiredThreadsPerThreadgroup];
    }

    else
    {
      v19 = 0uLL;
      v20 = 0;
    }

    *(v12 + 168) = v19;
    *(v12 + 23) = v20;
  }

  return v12;
}

- (_MTLRenderPipelineState)initWithParent:(id)parent
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  _MTLMessageContextBegin_(v18, "[_MTLRenderPipelineState initWithParent:]", 6056, 0, 3, "Render Pipeline State Validation");
  if (parent)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v12 = @"parent is not a _MTLRenderPipelineState.";
    v13 = 8;
  }

  else
  {
    v12 = @"parent must not be nil.";
    v13 = 4;
  }

  _MTLMessageContextPush_(v18, v13, v12, v5, v6, v7, v8, v9, v14);
LABEL_3:
  _MTLMessageContextEnd(v18);
  v17.receiver = self;
  v17.super_class = _MTLRenderPipelineState;
  v10 = [(_MTLAllocation *)&v17 initWithAllocationType:3];
  if (v10)
  {
    if ([parent label])
    {
      [v10 setLabel:{objc_msgSend(parent, "label")}];
    }

    *(v10 + 4) = [parent device];
    v10[109] = [parent supportIndirectCommandBuffers];
    *(v10 + 12) = [parent textureWriteRoundingMode];
    *(v10 + 14) = [parent objectThreadExecutionWidth];
    *(v10 + 15) = [parent meshThreadExecutionWidth];
    *(v10 + 16) = [parent maxTotalThreadsPerObjectThreadgroup];
    *(v10 + 17) = [parent maxTotalThreadsPerMeshThreadgroup];
    if (parent)
    {
      [parent requiredThreadsPerObjectThreadgroup];
      *(v10 + 12) = v15;
      *(v10 + 26) = v16;
      [parent requiredThreadsPerMeshThreadgroup];
    }

    else
    {
      *(v10 + 25) = 0;
      *(v10 + 26) = 0;
      *(v10 + 24) = 0;
      v15 = 0uLL;
      v16 = 0;
    }

    *(v10 + 216) = v15;
    *(v10 + 29) = v16;
  }

  return v10;
}

- (_MTLRenderPipelineState)initWithTileParent:(id)parent
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  _MTLMessageContextBegin_(v18, "[_MTLRenderPipelineState initWithTileParent:]", 6107, 0, 3, "Render Pipeline State Validation");
  if (parent)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v12 = @"parent is not a _MTLRenderPipelineState.";
    v13 = 8;
  }

  else
  {
    v12 = @"parent must not be nil.";
    v13 = 4;
  }

  _MTLMessageContextPush_(v18, v13, v12, v5, v6, v7, v8, v9, v14);
LABEL_3:
  _MTLMessageContextEnd(v18);
  v17.receiver = self;
  v17.super_class = _MTLRenderPipelineState;
  v10 = [(_MTLAllocation *)&v17 initWithAllocationType:3];
  if (v10)
  {
    if ([parent label])
    {
      [v10 setLabel:{objc_msgSend(parent, "label")}];
    }

    *(v10 + 4) = [parent device];
    v10[108] = [parent threadgroupSizeMatchesTileSize];
    v10[109] = [parent supportIndirectCommandBuffers];
    *(v10 + 12) = [parent textureWriteRoundingMode];
    if (parent)
    {
      [parent requiredThreadsPerTileThreadgroup];
    }

    else
    {
      v15 = 0uLL;
      v16 = 0;
    }

    *(v10 + 168) = v15;
    *(v10 + 23) = v16;
  }

  return v10;
}

- (void)setDebugInstrumentationDataForstage:(id)forstage stage:(unint64_t)stage
{
  if (stage <= 3)
  {
    if (stage == 1)
    {
      v4 = &OBJC_IVAR____MTLRenderPipelineState__vertexDebugInstrumentationData;
    }

    else
    {
      if (stage != 2)
      {
        return;
      }

      v4 = &OBJC_IVAR____MTLRenderPipelineState__fragmentDebugInstrumentationData;
    }
  }

  else
  {
    switch(stage)
    {
      case 4uLL:
        v4 = &OBJC_IVAR____MTLRenderPipelineState__tileDebugInstrumentationData;
        break;
      case 8uLL:
        v4 = &OBJC_IVAR____MTLRenderPipelineState__objectDebugInstrumentationData;
        break;
      case 0x10uLL:
        v4 = &OBJC_IVAR____MTLRenderPipelineState__meshDebugInstrumentationData;
        break;
      default:
        return;
    }
  }

  *(&self->super.super.super.isa + *v4) = forstage;
}

- (id)functionHandleWithFunction:(id)function stage:(unint64_t)stage
{
  if (stage <= 3)
  {
    if (stage == 1)
    {
      return [(_MTLRenderPipelineState *)self vertexFunctionHandleWithFunction:function];
    }

    if (stage == 2)
    {
      return [(_MTLRenderPipelineState *)self fragmentFunctionHandleWithFunction:function];
    }
  }

  else
  {
    switch(stage)
    {
      case 4uLL:
        return [(_MTLRenderPipelineState *)self tileFunctionHandleWithFunction:function];
      case 8uLL:
        return [(_MTLRenderPipelineState *)self objectFunctionHandleWithFunction:function];
      case 0x10uLL:
        return [(_MTLRenderPipelineState *)self meshFunctionHandleWithFunction:function];
    }
  }

  return 0;
}

- (id)newVisibleFunctionTableFromVertexStageWithDescriptor:(id)descriptor
{
  device = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)device newVisibleFunctionTableWithDescriptor:descriptor];
}

- (id)newVisibleFunctionTableFromFragmentStageWithDescriptor:(id)descriptor
{
  device = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)device newVisibleFunctionTableWithDescriptor:descriptor];
}

- (id)newVisibleFunctionTableFromTileStageWithDescriptor:(id)descriptor
{
  device = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)device newVisibleFunctionTableWithDescriptor:descriptor];
}

- (id)newVisibleFunctionTableFromObjectStageWithDescriptor:(id)descriptor
{
  device = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)device newVisibleFunctionTableWithDescriptor:descriptor];
}

- (id)newVisibleFunctionTableFromMeshStageWithDescriptor:(id)descriptor
{
  device = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)device newVisibleFunctionTableWithDescriptor:descriptor];
}

- (id)newVisibleFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage
{
  if (stage <= 3)
  {
    if (stage == 1)
    {
      return [(_MTLRenderPipelineState *)self newVisibleFunctionTableFromVertexStageWithDescriptor:descriptor];
    }

    if (stage == 2)
    {
      return [(_MTLRenderPipelineState *)self newVisibleFunctionTableFromFragmentStageWithDescriptor:descriptor];
    }
  }

  else
  {
    switch(stage)
    {
      case 4uLL:
        return [(_MTLRenderPipelineState *)self newVisibleFunctionTableFromTileStageWithDescriptor:descriptor];
      case 8uLL:
        return [(_MTLRenderPipelineState *)self newVisibleFunctionTableFromObjectStageWithDescriptor:descriptor];
      case 0x10uLL:
        return [(_MTLRenderPipelineState *)self newVisibleFunctionTableFromMeshStageWithDescriptor:descriptor];
    }
  }

  return 0;
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)functions error:(id *)error
{
  if ([objc_msgSend(functions "tileAdditionalBinaryFunctions")])
  {
    tileAdditionalBinaryFunctions = [functions tileAdditionalBinaryFunctions];

    return [(_MTLRenderPipelineState *)self newTileRenderPipelineStateWithAdditionalBinaryFunctions:tileAdditionalBinaryFunctions error:error];
  }

  else
  {
    vertexAdditionalBinaryFunctions = [functions vertexAdditionalBinaryFunctions];
    fragmentAdditionalBinaryFunctions = [functions fragmentAdditionalBinaryFunctions];

    return [(_MTLRenderPipelineState *)self newRenderPipelineStateWithAdditionalBinaryFunctions:vertexAdditionalBinaryFunctions fragmentAdditionalBinaryFunctions:fragmentAdditionalBinaryFunctions error:error];
  }
}

- (id)newVertexIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  device = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)device newIntersectionFunctionTableWithDescriptor:descriptor];
}

- (id)newFragmentIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  device = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)device newIntersectionFunctionTableWithDescriptor:descriptor];
}

- (id)newTileIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  device = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)device newIntersectionFunctionTableWithDescriptor:descriptor];
}

- (id)newObjectIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  device = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)device newIntersectionFunctionTableWithDescriptor:descriptor];
}

- (id)newMeshIntersectionFunctionTableWithDescriptor:(id)descriptor
{
  device = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)device newIntersectionFunctionTableWithDescriptor:descriptor];
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)descriptor stage:(unint64_t)stage
{
  if (stage <= 3)
  {
    if (stage == 1)
    {
      return [(_MTLRenderPipelineState *)self newVertexIntersectionFunctionTableWithDescriptor:descriptor];
    }

    if (stage == 2)
    {
      return [(_MTLRenderPipelineState *)self newFragmentIntersectionFunctionTableWithDescriptor:descriptor];
    }
  }

  else
  {
    switch(stage)
    {
      case 4uLL:
        return [(_MTLRenderPipelineState *)self newTileIntersectionFunctionTableWithDescriptor:descriptor];
      case 8uLL:
        return [(_MTLRenderPipelineState *)self newObjectIntersectionFunctionTableWithDescriptor:descriptor];
      case 0x10uLL:
        return [(_MTLRenderPipelineState *)self newMeshIntersectionFunctionTableWithDescriptor:descriptor];
    }
  }

  return 0;
}

@end