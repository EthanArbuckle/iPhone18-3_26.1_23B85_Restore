@interface _MTLRenderPipelineState
- (_MTLRenderPipelineState)initWithDevice:(id)a3 meshRenderPipelineStateDescriptor:(id)a4 objectThreadExecutionWidth:(unint64_t)a5 meshThreadExecutionWidth:(unint64_t)a6;
- (_MTLRenderPipelineState)initWithDevice:(id)a3 meshRenderPipelineStateDescriptor:(id)a4 objectThreadExecutionWidth:(unint64_t)a5 meshThreadExecutionWidth:(unint64_t)a6 maxTotalThreadgroupsPerMeshGrid:(unint64_t)a7;
- (_MTLRenderPipelineState)initWithDevice:(id)a3 pipelineStateDescriptor:(id)a4;
- (_MTLRenderPipelineState)initWithDeviceAndTileDesc:(id)a3 tilePipelineStateDescriptor:(id)a4;
- (_MTLRenderPipelineState)initWithParent:(id)a3;
- (_MTLRenderPipelineState)initWithTileParent:(id)a3;
- (id)functionHandleWithFunction:(id)a3 stage:(unint64_t)a4;
- (id)newFragmentIntersectionFunctionTableWithDescriptor:(id)a3;
- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4;
- (id)newMeshIntersectionFunctionTableWithDescriptor:(id)a3;
- (id)newObjectIntersectionFunctionTableWithDescriptor:(id)a3;
- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4;
- (id)newTileIntersectionFunctionTableWithDescriptor:(id)a3;
- (id)newVertexIntersectionFunctionTableWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableFromFragmentStageWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableFromMeshStageWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableFromObjectStageWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableFromTileStageWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableFromVertexStageWithDescriptor:(id)a3;
- (id)newVisibleFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4;
- (void)dealloc;
- (void)setDebugInstrumentationDataForstage:(id)a3 stage:(unint64_t)a4;
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

- (_MTLRenderPipelineState)initWithDevice:(id)a3 pipelineStateDescriptor:(id)a4
{
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  _MTLMessageContextBegin_(v28, "[_MTLRenderPipelineState initWithDevice:pipelineStateDescriptor:]", 5875, a3, 3, "Render Pipeline Descriptor Validation");
  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a4)
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
  if (!a4)
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
  if ([a4 isTessellationFactorScaleEnabled] && objc_msgSend(a4, "supportIndirectCommandBuffers"))
  {
    _MTLMessageContextPush_(v28, 4, @"pipelines with tessellationFactorScaleEnabled = YES are not compatible with indirect command buffers", v12, v13, v14, v15, v16, v24);
  }

  _MTLMessageContextEnd(v28);
  v27.receiver = self;
  v27.super_class = _MTLRenderPipelineState;
  v17 = [(_MTLAllocation *)&v27 initWithAllocationType:3];
  if (v17)
  {
    if ([a4 label])
    {
      [v17 setLabel:{objc_msgSend(a4, "label")}];
    }

    *(v17 + 4) = a3;
    v17[109] = [a4 supportIndirectCommandBuffers];
    *(v17 + 12) = [a4 textureWriteRoundingMode];
    if ([a4 meshFunction])
    {
      v18 = [a4 maxTotalThreadsPerObjectThreadgroup];
      if (!v18)
      {
        v18 = [a3 maxTotalComputeThreadsPerThreadgroup];
      }

      *(v17 + 16) = v18;
      v19 = [a4 maxTotalThreadsPerMeshThreadgroup];
      if (!v19)
      {
        v19 = [a3 maxTotalComputeThreadsPerThreadgroup];
      }

      *(v17 + 17) = v19;
      *(v17 + 18) = -1;
      *(v17 + 15) = -1;
      *(v17 + 14) = -1;
      if (a4)
      {
        [a4 requiredThreadsPerObjectThreadgroup];
        *(v17 + 12) = v25;
        *(v17 + 26) = v26;
        [a4 requiredThreadsPerMeshThreadgroup];
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

- (_MTLRenderPipelineState)initWithDevice:(id)a3 meshRenderPipelineStateDescriptor:(id)a4 objectThreadExecutionWidth:(unint64_t)a5 meshThreadExecutionWidth:(unint64_t)a6
{
  v11 = [a4 maxTotalThreadgroupsPerMeshGrid];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = -1;
  }

  return [(_MTLRenderPipelineState *)self initWithDevice:a3 meshRenderPipelineStateDescriptor:a4 objectThreadExecutionWidth:a5 meshThreadExecutionWidth:a6 maxTotalThreadgroupsPerMeshGrid:v12];
}

- (_MTLRenderPipelineState)initWithDevice:(id)a3 meshRenderPipelineStateDescriptor:(id)a4 objectThreadExecutionWidth:(unint64_t)a5 meshThreadExecutionWidth:(unint64_t)a6 maxTotalThreadgroupsPerMeshGrid:(unint64_t)a7
{
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  _MTLMessageContextBegin_(v29, "[_MTLRenderPipelineState initWithDevice:meshRenderPipelineStateDescriptor:objectThreadExecutionWidth:meshThreadExecutionWidth:maxTotalThreadgroupsPerMeshGrid:]", 5950, a3, 3, "Render Pipeline Descriptor Validation");
  if (!a3)
  {
    v22 = @"device must not be nil.";
    v23 = 4;
    goto LABEL_19;
  }

  if (([a3 conformsToProtocol:&unk_1EF502428] & 1) == 0)
  {
    v22 = @"device is not a MTLDevice.";
    v23 = 8;
LABEL_19:
    _MTLMessageContextPush_(v29, v23, v22, v13, v14, v15, v16, v17, v25);
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_20:
    v24 = @"desc must not be nil.";
    goto LABEL_22;
  }

  if (!a4)
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
    if ([a4 label])
    {
      [v18 setLabel:{objc_msgSend(a4, "label")}];
    }

    *(v18 + 4) = a3;
    v18[109] = [a4 supportIndirectCommandBuffers];
    *(v18 + 12) = [a4 textureWriteRoundingMode];
    v19 = [a4 maxTotalThreadsPerObjectThreadgroup];
    if (!v19)
    {
      v19 = [a3 maxTotalComputeThreadsPerThreadgroup];
    }

    *(v18 + 16) = v19;
    v20 = [a4 maxTotalThreadsPerMeshThreadgroup];
    if (!v20)
    {
      v20 = [a3 maxTotalComputeThreadsPerThreadgroup];
    }

    *(v18 + 17) = v20;
    *(v18 + 14) = a5;
    *(v18 + 15) = a6;
    *(v18 + 18) = a7;
    if (a4)
    {
      [a4 requiredThreadsPerObjectThreadgroup];
      *(v18 + 12) = v26;
      *(v18 + 26) = v27;
      [a4 requiredThreadsPerMeshThreadgroup];
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

- (_MTLRenderPipelineState)initWithDeviceAndTileDesc:(id)a3 tilePipelineStateDescriptor:(id)a4
{
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  _MTLMessageContextBegin_(v22, "[_MTLRenderPipelineState initWithDeviceAndTileDesc:tilePipelineStateDescriptor:]", 6007, a3, 3, "Render Pipeline Descriptor Validation");
  if (!a3)
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
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_16:
    v16 = @"desc must not be nil.";
    v17 = 4;
    goto LABEL_18;
  }

  if (!a4)
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
    if ([a4 label])
    {
      [v12 setLabel:{objc_msgSend(a4, "label")}];
    }

    *(v12 + 4) = a3;
    v12[108] = [a4 threadgroupSizeMatchesTileSize];
    if (a4)
    {
      [a4 requiredThreadsPerThreadgroup];
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

- (_MTLRenderPipelineState)initWithParent:(id)a3
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  _MTLMessageContextBegin_(v18, "[_MTLRenderPipelineState initWithParent:]", 6056, 0, 3, "Render Pipeline State Validation");
  if (a3)
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
    if ([a3 label])
    {
      [v10 setLabel:{objc_msgSend(a3, "label")}];
    }

    *(v10 + 4) = [a3 device];
    v10[109] = [a3 supportIndirectCommandBuffers];
    *(v10 + 12) = [a3 textureWriteRoundingMode];
    *(v10 + 14) = [a3 objectThreadExecutionWidth];
    *(v10 + 15) = [a3 meshThreadExecutionWidth];
    *(v10 + 16) = [a3 maxTotalThreadsPerObjectThreadgroup];
    *(v10 + 17) = [a3 maxTotalThreadsPerMeshThreadgroup];
    if (a3)
    {
      [a3 requiredThreadsPerObjectThreadgroup];
      *(v10 + 12) = v15;
      *(v10 + 26) = v16;
      [a3 requiredThreadsPerMeshThreadgroup];
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

- (_MTLRenderPipelineState)initWithTileParent:(id)a3
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  _MTLMessageContextBegin_(v18, "[_MTLRenderPipelineState initWithTileParent:]", 6107, 0, 3, "Render Pipeline State Validation");
  if (a3)
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
    if ([a3 label])
    {
      [v10 setLabel:{objc_msgSend(a3, "label")}];
    }

    *(v10 + 4) = [a3 device];
    v10[108] = [a3 threadgroupSizeMatchesTileSize];
    v10[109] = [a3 supportIndirectCommandBuffers];
    *(v10 + 12) = [a3 textureWriteRoundingMode];
    if (a3)
    {
      [a3 requiredThreadsPerTileThreadgroup];
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

- (void)setDebugInstrumentationDataForstage:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      v4 = &OBJC_IVAR____MTLRenderPipelineState__vertexDebugInstrumentationData;
    }

    else
    {
      if (a4 != 2)
      {
        return;
      }

      v4 = &OBJC_IVAR____MTLRenderPipelineState__fragmentDebugInstrumentationData;
    }
  }

  else
  {
    switch(a4)
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

  *(&self->super.super.super.isa + *v4) = a3;
}

- (id)functionHandleWithFunction:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      return [(_MTLRenderPipelineState *)self vertexFunctionHandleWithFunction:a3];
    }

    if (a4 == 2)
    {
      return [(_MTLRenderPipelineState *)self fragmentFunctionHandleWithFunction:a3];
    }
  }

  else
  {
    switch(a4)
    {
      case 4uLL:
        return [(_MTLRenderPipelineState *)self tileFunctionHandleWithFunction:a3];
      case 8uLL:
        return [(_MTLRenderPipelineState *)self objectFunctionHandleWithFunction:a3];
      case 0x10uLL:
        return [(_MTLRenderPipelineState *)self meshFunctionHandleWithFunction:a3];
    }
  }

  return 0;
}

- (id)newVisibleFunctionTableFromVertexStageWithDescriptor:(id)a3
{
  v4 = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)v4 newVisibleFunctionTableWithDescriptor:a3];
}

- (id)newVisibleFunctionTableFromFragmentStageWithDescriptor:(id)a3
{
  v4 = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)v4 newVisibleFunctionTableWithDescriptor:a3];
}

- (id)newVisibleFunctionTableFromTileStageWithDescriptor:(id)a3
{
  v4 = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)v4 newVisibleFunctionTableWithDescriptor:a3];
}

- (id)newVisibleFunctionTableFromObjectStageWithDescriptor:(id)a3
{
  v4 = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)v4 newVisibleFunctionTableWithDescriptor:a3];
}

- (id)newVisibleFunctionTableFromMeshStageWithDescriptor:(id)a3
{
  v4 = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)v4 newVisibleFunctionTableWithDescriptor:a3];
}

- (id)newVisibleFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      return [(_MTLRenderPipelineState *)self newVisibleFunctionTableFromVertexStageWithDescriptor:a3];
    }

    if (a4 == 2)
    {
      return [(_MTLRenderPipelineState *)self newVisibleFunctionTableFromFragmentStageWithDescriptor:a3];
    }
  }

  else
  {
    switch(a4)
    {
      case 4uLL:
        return [(_MTLRenderPipelineState *)self newVisibleFunctionTableFromTileStageWithDescriptor:a3];
      case 8uLL:
        return [(_MTLRenderPipelineState *)self newVisibleFunctionTableFromObjectStageWithDescriptor:a3];
      case 0x10uLL:
        return [(_MTLRenderPipelineState *)self newVisibleFunctionTableFromMeshStageWithDescriptor:a3];
    }
  }

  return 0;
}

- (id)newRenderPipelineStateWithAdditionalBinaryFunctions:(id)a3 error:(id *)a4
{
  if ([objc_msgSend(a3 "tileAdditionalBinaryFunctions")])
  {
    v7 = [a3 tileAdditionalBinaryFunctions];

    return [(_MTLRenderPipelineState *)self newTileRenderPipelineStateWithAdditionalBinaryFunctions:v7 error:a4];
  }

  else
  {
    v9 = [a3 vertexAdditionalBinaryFunctions];
    v10 = [a3 fragmentAdditionalBinaryFunctions];

    return [(_MTLRenderPipelineState *)self newRenderPipelineStateWithAdditionalBinaryFunctions:v9 fragmentAdditionalBinaryFunctions:v10 error:a4];
  }
}

- (id)newVertexIntersectionFunctionTableWithDescriptor:(id)a3
{
  v4 = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)v4 newIntersectionFunctionTableWithDescriptor:a3];
}

- (id)newFragmentIntersectionFunctionTableWithDescriptor:(id)a3
{
  v4 = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)v4 newIntersectionFunctionTableWithDescriptor:a3];
}

- (id)newTileIntersectionFunctionTableWithDescriptor:(id)a3
{
  v4 = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)v4 newIntersectionFunctionTableWithDescriptor:a3];
}

- (id)newObjectIntersectionFunctionTableWithDescriptor:(id)a3
{
  v4 = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)v4 newIntersectionFunctionTableWithDescriptor:a3];
}

- (id)newMeshIntersectionFunctionTableWithDescriptor:(id)a3
{
  v4 = [(_MTLRenderPipelineState *)self device];

  return [(MTLDevice *)v4 newIntersectionFunctionTableWithDescriptor:a3];
}

- (id)newIntersectionFunctionTableWithDescriptor:(id)a3 stage:(unint64_t)a4
{
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      return [(_MTLRenderPipelineState *)self newVertexIntersectionFunctionTableWithDescriptor:a3];
    }

    if (a4 == 2)
    {
      return [(_MTLRenderPipelineState *)self newFragmentIntersectionFunctionTableWithDescriptor:a3];
    }
  }

  else
  {
    switch(a4)
    {
      case 4uLL:
        return [(_MTLRenderPipelineState *)self newTileIntersectionFunctionTableWithDescriptor:a3];
      case 8uLL:
        return [(_MTLRenderPipelineState *)self newObjectIntersectionFunctionTableWithDescriptor:a3];
      case 0x10uLL:
        return [(_MTLRenderPipelineState *)self newMeshIntersectionFunctionTableWithDescriptor:a3];
    }
  }

  return 0;
}

@end