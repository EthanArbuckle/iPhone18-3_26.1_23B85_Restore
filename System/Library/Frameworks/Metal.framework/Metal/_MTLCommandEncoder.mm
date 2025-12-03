@interface _MTLCommandEncoder
- (_MTLCommandEncoder)initWithCommandBuffer:(id)buffer;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup;
- (void)endEncoding;
- (void)insertDebugSignpost:(id)signpost;
- (void)optimizeContentsForCPUAccess:(id)access;
- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)optimizeContentsForGPUAccess:(id)access;
- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level;
- (void)preEndEncoding;
- (void)pushDebugGroup:(id)group;
- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
- (void)setVertexAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index;
@end

@implementation _MTLCommandEncoder

- (void)endEncoding
{
  [(MTLCommandBuffer *)self->_commandBuffer executeSynchronizationNotifications:1];
  [(MTLCommandBuffer *)self->_commandBuffer setCurrentCommandEncoder:0];
  if (!self->_isProgressTrackingEncoder)
  {
    if (([(MTLCommandBuffer *)self->_commandBuffer errorOptions]& 1) != 0 && self->_needsFrameworkAssistedErrorTracking)
    {
      if ([(_MTLCommandEncoder *)self getType]|| *(self->_device + 328) != 1)
      {
        if ([(_MTLCommandEncoder *)self getType]== 1 && *(self->_device + 328) == 1)
        {
          progressTrackingComputeCommandEncoder = [(MTLCommandBuffer *)self->_commandBuffer progressTrackingComputeCommandEncoder];
          [progressTrackingComputeCommandEncoder waitForFence:self->_progressFence];
          [progressTrackingComputeCommandEncoder setComputePipelineState:*(self->_device + 43)];
          commandBuffer = self->_commandBuffer;
          v8 = *(commandBuffer + 64);
          v9 = *(commandBuffer + 130);
          *(commandBuffer + 130) = v9 + 1;
          [progressTrackingComputeCommandEncoder setBuffer:v8 offset:(4 * v9) atIndex:0];
          v19 = vdupq_n_s64(1uLL);
          v20 = 1;
          v17 = v19;
          v18 = 1;
          [progressTrackingComputeCommandEncoder dispatchThreadgroups:&v19 threadsPerThreadgroup:&v17];
        }

        else
        {
          progressTrackingComputeCommandEncoder = [(MTLCommandBuffer *)self->_commandBuffer progressTrackingBlitCommandEncoder];
          [progressTrackingComputeCommandEncoder waitForFence:self->_progressFence];
          v10 = self->_commandBuffer;
          v11 = *(v10 + 64);
          v12 = *(v10 + 130);
          *(v10 + 130) = v12 + 1;
          [progressTrackingComputeCommandEncoder fillBuffer:v11 range:(4 * v12) value:{4, 255}];
        }
      }

      else
      {
        progressTrackingComputeCommandEncoder = [(MTLCommandBuffer *)self->_commandBuffer progressTrackingRenderCommandEncoder];
        [progressTrackingComputeCommandEncoder waitForFence:self->_progressFence beforeStages:1];
        [progressTrackingComputeCommandEncoder setRenderPipelineState:*(self->_device + 42)];
        v4 = self->_commandBuffer;
        v5 = *(v4 + 64);
        v6 = *(v4 + 130);
        *(v4 + 130) = v6 + 1;
        [progressTrackingComputeCommandEncoder setVertexBuffer:v5 offset:(4 * v6) atIndex:0];
        [progressTrackingComputeCommandEncoder drawPrimitives:0 vertexStart:0 vertexCount:1];
      }

      [progressTrackingComputeCommandEncoder endEncoding];
      progressFence = self->_progressFence;
      if (([(MTLCommandBuffer *)self->_commandBuffer retainedReferences]& 1) != 0)
      {
      }

      else
      {
        v14 = self->_commandBuffer;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __33___MTLCommandEncoder_endEncoding__block_invoke;
        v16[3] = &unk_1E6EEA880;
        v16[4] = progressFence;
        [(MTLCommandBuffer *)v14 addCompletedHandler:v16];
      }

      self->_progressFence = 0;
    }

    if (([(MTLCommandBuffer *)self->_commandBuffer errorOptions]& 1) != 0)
    {
      v15 = objc_opt_new();
      [v15 setUniqueID:{-[_MTLCommandEncoder getDriverUniqueID](self, "getDriverUniqueID")}];
      [v15 setLabel:{-[_MTLObjectWithLabel label](self, "label")}];
      [v15 setDebugSignposts:self->_debugSignposts];

      self->_debugSignposts = 0;
      [v15 setErrorState:0];
      [*(self->_commandBuffer + 66) addObject:v15];
    }
  }

  self->_commandBuffer = 0;
}

- (void)dealloc
{
  self->_device = 0;

  self->_progressFence = 0;
  self->_debugSignposts = 0;
  if (self->_commandBuffer)
  {
    MTLReportFailure(0, "[_MTLCommandEncoder dealloc]", 134, @"Command encoder released without endEncoding", v3, v4, v5, v6, v7.receiver);
  }

  v7.receiver = self;
  v7.super_class = _MTLCommandEncoder;
  [(_MTLObjectWithLabel *)&v7 dealloc];
}

- (_MTLCommandEncoder)initWithCommandBuffer:(id)buffer
{
  if (buffer)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(_MTLCommandEncoder *)isKindOfClass initWithCommandBuffer:v11, v12, v13, v14, v15, v16, v17, v30.i64[0]];
    }
  }

  else
  {
    [(_MTLCommandEncoder *)self initWithCommandBuffer:a2, 0, v3, v4, v5, v6, v7, v30.i64[0]];
  }

  v34.receiver = self;
  v34.super_class = _MTLCommandEncoder;
  v18 = [(_MTLObjectWithLabel *)&v34 init];
  if (v18)
  {
    v18->_device = [buffer device];
    v18->_commandBuffer = buffer;
    v18->_needsFrameworkAssistedErrorTracking = [(MTLDevice *)v18->_device getSupportedCommandBufferErrorOptions]== 0;
    v18->_isProgressTrackingEncoder = *(buffer + 524);
    if (([(MTLCommandBuffer *)v18->_commandBuffer errorOptions]& 1) != 0 && !v18->_isProgressTrackingEncoder)
    {
      [(MTLCommandBuffer *)v18->_commandBuffer initProgressTracking];
      if (v18->_needsFrameworkAssistedErrorTracking)
      {
        v18->_progressFence = [(MTLDevice *)v18->_device newFence];
        if ([(_MTLCommandEncoder *)v18 getType]|| *(v18->_device + 328) != 1)
        {
          if ([(_MTLCommandEncoder *)v18 getType]== 1 && *(v18->_device + 328) == 1)
          {
            progressTrackingComputeCommandEncoder = [(MTLCommandBuffer *)v18->_commandBuffer progressTrackingComputeCommandEncoder];
            [progressTrackingComputeCommandEncoder setComputePipelineState:*(v18->_device + 43)];
            commandBuffer = v18->_commandBuffer;
            v24 = *(commandBuffer + 64);
            v25 = *(commandBuffer + 130);
            *(commandBuffer + 130) = v25 + 1;
            [progressTrackingComputeCommandEncoder setBuffer:v24 offset:(4 * v25) atIndex:0];
            v32 = vdupq_n_s64(1uLL);
            v33 = 1;
            v30 = v32;
            v31 = 1;
            [progressTrackingComputeCommandEncoder dispatchThreadgroups:&v32 threadsPerThreadgroup:&v30];
          }

          else
          {
            progressTrackingComputeCommandEncoder = [(MTLCommandBuffer *)v18->_commandBuffer progressTrackingBlitCommandEncoder];
            v26 = v18->_commandBuffer;
            v27 = *(v26 + 64);
            v28 = *(v26 + 130);
            *(v26 + 130) = v28 + 1;
            [progressTrackingComputeCommandEncoder fillBuffer:v27 range:(4 * v28) value:{4, 255}];
          }

          [progressTrackingComputeCommandEncoder updateFence:v18->_progressFence];
        }

        else
        {
          progressTrackingComputeCommandEncoder = [(MTLCommandBuffer *)v18->_commandBuffer progressTrackingRenderCommandEncoder];
          [progressTrackingComputeCommandEncoder setRenderPipelineState:*(v18->_device + 42)];
          v20 = v18->_commandBuffer;
          v21 = *(v20 + 64);
          v22 = *(v20 + 130);
          *(v20 + 130) = v22 + 1;
          [progressTrackingComputeCommandEncoder setVertexBuffer:v21 offset:(4 * v22) atIndex:0];
          [progressTrackingComputeCommandEncoder drawPrimitives:0 vertexStart:0 vertexCount:1];
          [progressTrackingComputeCommandEncoder updateFence:v18->_progressFence afterStages:2];
        }

        [progressTrackingComputeCommandEncoder endEncoding];
      }
    }

    [(MTLCommandBuffer *)v18->_commandBuffer setCurrentCommandEncoder:v18];
    if ([(MTLCommandBuffer *)v18->_commandBuffer isStatEnabled])
    {
      v18->_numThisEncoder = [(MTLCommandBuffer *)v18->_commandBuffer getAndIncrementNumEncoders];
    }
  }

  return v18;
}

- (id)formattedDescription:(unint64_t)description
{
  v16[6] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  retainedLabel = [(_MTLObjectWithLabel *)self retainedLabel];
  v7 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = _MTLCommandEncoder;
  v8 = [(_MTLCommandEncoder *)&v15 description];
  v16[0] = v5;
  v16[1] = @"label =";
  if (retainedLabel)
  {
    v9 = retainedLabel;
  }

  else
  {
    v9 = @"<none>";
  }

  v16[2] = v9;
  v16[3] = v5;
  v16[4] = @"device =";
  device = self->_device;
  if (device)
  {
    v11 = [(MTLDevice *)device formattedDescription:description + 4];
  }

  else
  {
    v11 = @"<null>";
  }

  v16[5] = v11;
  v12 = [v7 stringWithFormat:@"%@%@", v8, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 6), "componentsJoinedByString:", @" "];

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)preEndEncoding
{
  if (([(MTLCommandBuffer *)self->_commandBuffer errorOptions]& 1) != 0 && !self->_isProgressTrackingEncoder && self->_needsFrameworkAssistedErrorTracking)
  {
    getType = [(_MTLCommandEncoder *)self getType];
    progressFence = self->_progressFence;
    if (getType)
    {
      [(_MTLCommandEncoder *)self waitForFence:progressFence];
      v5 = self->_progressFence;

      [(_MTLCommandEncoder *)self updateFence:v5];
    }

    else
    {
      [(_MTLCommandEncoder *)self waitForFence:progressFence beforeStages:1];
      v6 = self->_progressFence;

      [(_MTLCommandEncoder *)self updateFence:v6 afterStages:2];
    }
  }
}

- (void)insertDebugSignpost:(id)signpost
{
  if (signpost)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(_MTLCommandEncoder *)isKindOfClass insertDebugSignpost:v11, v12, v13, v14, v15, v16, v17, v19];
    }
  }

  else
  {
    [(_MTLCommandEncoder *)self insertDebugSignpost:a2, 0, v3, v4, v5, v6, v7, v19];
  }

  if (([(MTLCommandBuffer *)self->_commandBuffer errorOptions]& 1) != 0)
  {
    debugSignposts = self->_debugSignposts;
    if (!debugSignposts)
    {
      debugSignposts = objc_opt_new();
      self->_debugSignposts = debugSignposts;
    }

    [(NSMutableArray *)debugSignposts addObject:signpost];
  }
}

- (void)pushDebugGroup:(id)group
{
  if (group)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(_MTLCommandEncoder *)isKindOfClass pushDebugGroup:v9, v10, v11, v12, v13, v14, v15, v16];
    }
  }

  else
  {
    [(_MTLCommandEncoder *)self pushDebugGroup:a2, 0, v3, v4, v5, v6, v7, v16];
  }
}

- (void)setAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if ([(_MTLCommandEncoder *)self getType]== 1 && ([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) != 0)
  {
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];

    [(_MTLCommandEncoder *)self setBuffer:buffer offset:bufferOffset atIndex:index];
  }

  else
  {

    [(_MTLCommandEncoder *)self doesNotRecognizeSelector:a2];
  }
}

- (void)setVertexAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if ([(_MTLCommandEncoder *)self getType]|| ([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) == 0)
  {

    [(_MTLCommandEncoder *)self doesNotRecognizeSelector:a2];
  }

  else
  {
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];

    [(_MTLCommandEncoder *)self setVertexBuffer:buffer offset:bufferOffset atIndex:index];
  }
}

- (void)setFragmentAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if ([(_MTLCommandEncoder *)self getType]|| ([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) == 0)
  {

    [(_MTLCommandEncoder *)self doesNotRecognizeSelector:a2];
  }

  else
  {
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];

    [(_MTLCommandEncoder *)self setFragmentBuffer:buffer offset:bufferOffset atIndex:index];
  }
}

- (void)setTileAccelerationStructure:(id)structure atBufferIndex:(unint64_t)index
{
  if ([(_MTLCommandEncoder *)self getType]|| ([(MTLDevice *)[(_MTLCommandEncoder *)self device] requiresRaytracingEmulation]& 1) == 0)
  {

    [(_MTLCommandEncoder *)self doesNotRecognizeSelector:a2];
  }

  else
  {
    buffer = [structure buffer];
    bufferOffset = [structure bufferOffset];

    [(_MTLCommandEncoder *)self setTileBuffer:buffer offset:bufferOffset atIndex:index];
  }
}

- (void)drawMeshThreadgroups:(id *)threadgroups threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  v7 = *threadgroups;
  v6 = *threadgroup;
  v5 = *meshThreadgroup;
  [(_MTLCommandEncoder *)self drawMeshThreadgroups:&v7 threadsPerObjectThreadgroup:&v6 threadsPerMeshThreadgroup:&v5];
}

- (void)drawMeshThreads:(id *)threads threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  v7 = *threads;
  v6 = *threadgroup;
  v5 = *meshThreadgroup;
  [(_MTLCommandEncoder *)self drawMeshThreads:&v7 threadsPerObjectThreadgroup:&v6 threadsPerMeshThreadgroup:&v5];
}

- (void)drawMeshThreadgroupsWithIndirectBuffer:(id)buffer indirectBufferOffset:(unint64_t)offset threadsPerObjectThreadgroup:(id *)threadgroup threadsPerMeshThreadgroup:(id *)meshThreadgroup
{
  v7 = *threadgroup;
  v6 = *meshThreadgroup;
  [(_MTLCommandEncoder *)self drawMeshThreadgroupsWithIndirectBuffer:buffer indirectBufferOffset:offset threadsPerObjectThreadgroup:&v7 threadsPerMeshThreadgroup:&v6];
}

- (void)optimizeContentsForGPUAccess:(id)access
{
  if ([(_MTLCommandEncoder *)self getType]!= 2)
  {
    [(_MTLCommandEncoder *)self doesNotRecognizeSelector:a2];
  }

  [(_MTLCommandEncoder *)self optimizeContentsForTexture:access readAccessPattern:1 readAccessor:2];
}

- (void)optimizeContentsForGPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  if ([(_MTLCommandEncoder *)self getType]!= 2)
  {
    [(_MTLCommandEncoder *)self doesNotRecognizeSelector:a2];
  }

  [(_MTLCommandEncoder *)self optimizeContentsForTexture:access readAccessPattern:1 readAccessor:2 slice:slice level:level];
}

- (void)optimizeContentsForCPUAccess:(id)access
{
  if ([(_MTLCommandEncoder *)self getType]!= 2)
  {
    [(_MTLCommandEncoder *)self doesNotRecognizeSelector:a2];
  }

  [(_MTLCommandEncoder *)self optimizeContentsForTexture:access readAccessPattern:2 readAccessor:1];
}

- (void)optimizeContentsForCPUAccess:(id)access slice:(unint64_t)slice level:(unint64_t)level
{
  if ([(_MTLCommandEncoder *)self getType]!= 2)
  {
    [(_MTLCommandEncoder *)self doesNotRecognizeSelector:a2];
  }

  [(_MTLCommandEncoder *)self optimizeContentsForTexture:access readAccessPattern:2 readAccessor:1 slice:slice level:level];
}

@end