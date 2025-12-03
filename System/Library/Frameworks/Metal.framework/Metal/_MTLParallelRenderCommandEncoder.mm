@interface _MTLParallelRenderCommandEncoder
- (_MTLParallelRenderCommandEncoder)initWithCommandBuffer:(id)buffer renderPassDescriptor:(id)descriptor;
- (id)_renderCommandEncoderCommon;
- (id)formattedDescription:(unint64_t)description;
- (id)renderCommandEncoder;
- (id)sampledRenderCommandEncoderWithProgramInfoBuffer:(id *)buffer capacity:(unint64_t)capacity;
- (void)dealloc;
- (void)endEncoding;
- (void)initializeEnhancedCommandBufferErrors;
- (void)insertDebugSignpost:(id)signpost;
- (void)preEndEncoding;
@end

@implementation _MTLParallelRenderCommandEncoder

- (_MTLParallelRenderCommandEncoder)initWithCommandBuffer:(id)buffer renderPassDescriptor:(id)descriptor
{
  if (buffer)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      [(_MTLParallelRenderCommandEncoder *)isKindOfClass initWithCommandBuffer:v12 renderPassDescriptor:v13, v14, v15, v16, v17, v18, v30.receiver];
    }
  }

  else
  {
    [(_MTLParallelRenderCommandEncoder *)self initWithCommandBuffer:a2 renderPassDescriptor:0, descriptor, v4, v5, v6, v7, v30.receiver];
  }

  if (descriptor)
  {
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();
    if ((v19 & 1) == 0)
    {
      [(_MTLParallelRenderCommandEncoder *)v19 initWithCommandBuffer:v20 renderPassDescriptor:v21, v22, v23, v24, v25, v26, v30.receiver];
    }
  }

  else
  {
    [(_MTLParallelRenderCommandEncoder *)isKindOfClass initWithCommandBuffer:v12 renderPassDescriptor:v13, v14, v15, v16, v17, v18, v30.receiver];
  }

  v30.receiver = self;
  v30.super_class = _MTLParallelRenderCommandEncoder;
  v27 = [(_MTLObjectWithLabel *)&v30 init];
  if (v27)
  {
    v27->_device = [buffer device];
    v27->_queue = [buffer commandQueue];
    v27->_commandBuffer = buffer;
    v27->_renderPassDescriptor = [descriptor copy];
    [(_MTLParallelRenderCommandEncoder *)v27 initializeEnhancedCommandBufferErrors];
    [(MTLCommandBuffer *)v27->_commandBuffer setCurrentCommandEncoder:v27];
    pthread_mutex_init(&v27->_lock, 0);
    v27->_retainedReferences = [(MTLCommandBuffer *)v27->_commandBuffer retainedReferences];
    v27->_commandBuffersSize = 16;
    v27->_commandBuffers = malloc_type_malloc(0x80uLL, 0x80040B8603338uLL);
    isStatEnabled = [(MTLCommandBuffer *)v27->_commandBuffer isStatEnabled];
    v27->_StatEnabled = isStatEnabled;
    if (isStatEnabled)
    {
      v27->_numThisEncoder = [(MTLCommandBuffer *)v27->_commandBuffer getAndIncrementNumEncoders];
    }
  }

  return v27;
}

- (void)initializeEnhancedCommandBufferErrors
{
  self->_needsFrameworkAssistedErrorTracking = [(MTLDevice *)self->_device getSupportedCommandBufferErrorOptions]== 0;
  if (([(MTLCommandBuffer *)self->_commandBuffer errorOptions]& 1) != 0)
  {
    [(MTLCommandBuffer *)self->_commandBuffer initProgressTracking];
    if (self->_needsFrameworkAssistedErrorTracking)
    {
      self->_progressFence = [(MTLDevice *)self->_device newFence];
      commandBuffer = self->_commandBuffer;
      if (*(self->_device + 328) == 1)
      {
        progressTrackingRenderCommandEncoder = [(MTLCommandBuffer *)commandBuffer progressTrackingRenderCommandEncoder];
        [progressTrackingRenderCommandEncoder setRenderPipelineState:*(self->_device + 42)];
        v5 = self->_commandBuffer;
        v6 = *(v5 + 64);
        v7 = *(v5 + 130);
        *(v5 + 130) = v7 + 1;
        [progressTrackingRenderCommandEncoder setVertexBuffer:v6 offset:(4 * v7) atIndex:0];
        [progressTrackingRenderCommandEncoder drawPrimitives:0 vertexStart:0 vertexCount:1];
        [progressTrackingRenderCommandEncoder updateFence:self->_progressFence afterStages:1];
      }

      else
      {
        progressTrackingRenderCommandEncoder = [(MTLCommandBuffer *)commandBuffer progressTrackingBlitCommandEncoder];
        v8 = self->_commandBuffer;
        v9 = *(v8 + 64);
        v10 = *(v8 + 130);
        *(v8 + 130) = v10 + 1;
        [progressTrackingRenderCommandEncoder fillBuffer:v9 range:(4 * v10) value:{4, 255}];
        [progressTrackingRenderCommandEncoder updateFence:self->_progressFence];
      }

      [progressTrackingRenderCommandEncoder endEncoding];
    }
  }
}

- (void)dealloc
{
  self->_device = 0;

  self->_queue = 0;
  self->_renderPassDescriptor = 0;
  if (self->_commandBuffersCount)
  {
    v3 = 0;
    do
    {
    }

    while (v3 < self->_commandBuffersCount);
  }

  free(self->_commandBuffers);
  v4.receiver = self;
  v4.super_class = _MTLParallelRenderCommandEncoder;
  [(_MTLObjectWithLabel *)&v4 dealloc];
}

- (id)formattedDescription:(unint64_t)description
{
  v16[6] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  retainedLabel = [(_MTLObjectWithLabel *)self retainedLabel];
  v7 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = _MTLParallelRenderCommandEncoder;
  v8 = [(_MTLParallelRenderCommandEncoder *)&v15 description];
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

- (id)_renderCommandEncoderCommon
{
  retainedReferences = self->_retainedReferences;
  queue = self->_queue;
  if (retainedReferences)
  {
    commandBuffer = [(MTLCommandQueue *)queue commandBuffer];
  }

  else
  {
    commandBuffer = [(MTLCommandQueue *)queue commandBufferWithUnretainedReferences];
  }

  v6 = commandBuffer;
  [v6 signalCommandBufferAvailable];
  [v6 setOwnedByParallelEncoder:1];
  [v6 setErrorOptions:0];
  commandBuffer = self->_commandBuffer;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63___MTLParallelRenderCommandEncoder__renderCommandEncoderCommon__block_invoke;
  v11[3] = &unk_1E6EEA880;
  v11[4] = v6;
  [(MTLCommandBuffer *)commandBuffer addCompletedHandler:v11];
  if (self->_StatEnabled)
  {
    [v6 setNumEncoders:{-[MTLCommandBuffer getAndIncrementNumEncoders](self->_commandBuffer, "getAndIncrementNumEncoders") - 1}];
    [v6 setNumThisCommandBuffer:{-[MTLCommandBuffer numThisCommandBuffer](self->_commandBuffer, "numThisCommandBuffer")}];
  }

  pthread_mutex_lock(&self->_lock);
  commandBuffersCount = self->_commandBuffersCount;
  if (commandBuffersCount == self->_commandBuffersSize)
  {
    self->_commandBuffersSize = 2 * commandBuffersCount;
    commandBuffers = malloc_type_realloc(self->_commandBuffers, 16 * commandBuffersCount, 0x80040B8603338uLL);
    self->_commandBuffers = commandBuffers;
    commandBuffersCount = self->_commandBuffersCount;
  }

  else
  {
    commandBuffers = self->_commandBuffers;
  }

  self->_commandBuffersCount = commandBuffersCount + 1;
  commandBuffers[commandBuffersCount] = v6;
  pthread_mutex_unlock(&self->_lock);
  return v6;
}

- (id)renderCommandEncoder
{
  v3 = [-[_MTLParallelRenderCommandEncoder _renderCommandEncoderCommon](self "_renderCommandEncoderCommon")];
  if (MTLTraceEnabled())
  {
    [(_MTLParallelRenderCommandEncoder *)self globalTraceObjectID];
    [v3 globalTraceObjectID];
    kdebug_trace();
  }

  return v3;
}

- (id)sampledRenderCommandEncoderWithProgramInfoBuffer:(id *)buffer capacity:(unint64_t)capacity
{
  v5 = [-[_MTLParallelRenderCommandEncoder _renderCommandEncoderCommon](self "_renderCommandEncoderCommon")];
  if (MTLTraceEnabled())
  {
    [(_MTLParallelRenderCommandEncoder *)self globalTraceObjectID];
    [v5 globalTraceObjectID];
    kdebug_trace();
  }

  return v5;
}

- (void)preEndEncoding
{
  if (([(MTLCommandBuffer *)self->_commandBuffer errorOptions]& 1) != 0 && self->_needsFrameworkAssistedErrorTracking)
  {
    renderCommandEncoder = [(_MTLParallelRenderCommandEncoder *)self renderCommandEncoder];
    [renderCommandEncoder waitForFence:self->_progressFence beforeStages:1];
    [renderCommandEncoder updateFence:self->_progressFence afterStages:2];

    [renderCommandEncoder endEncoding];
  }
}

- (void)endEncoding
{
  [(MTLCommandBuffer *)self->_commandBuffer setCurrentCommandEncoder:0];
  if (([(MTLCommandBuffer *)self->_commandBuffer errorOptions]& 1) != 0 && self->_needsFrameworkAssistedErrorTracking)
  {
    commandBuffer = self->_commandBuffer;
    if (*(self->_device + 328) == 1)
    {
      progressTrackingRenderCommandEncoder = [(MTLCommandBuffer *)commandBuffer progressTrackingRenderCommandEncoder];
      [progressTrackingRenderCommandEncoder waitForFence:self->_progressFence beforeStages:1];
      [progressTrackingRenderCommandEncoder setRenderPipelineState:*(self->_device + 42)];
      v5 = self->_commandBuffer;
      v6 = *(v5 + 64);
      v7 = *(v5 + 130);
      *(v5 + 130) = v7 + 1;
      [progressTrackingRenderCommandEncoder setVertexBuffer:v6 offset:(4 * v7) atIndex:0];
      [progressTrackingRenderCommandEncoder drawPrimitives:0 vertexStart:0 vertexCount:1];
    }

    else
    {
      progressTrackingRenderCommandEncoder = [(MTLCommandBuffer *)commandBuffer progressTrackingBlitCommandEncoder];
      [progressTrackingRenderCommandEncoder waitForFence:self->_progressFence];
      v8 = self->_commandBuffer;
      v9 = *(v8 + 64);
      v10 = *(v8 + 130);
      *(v8 + 130) = v10 + 1;
      [progressTrackingRenderCommandEncoder fillBuffer:v9 range:(4 * v10) value:{4, 255}];
    }

    [progressTrackingRenderCommandEncoder endEncoding];
    progressFence = self->_progressFence;
    if (([(MTLCommandBuffer *)self->_commandBuffer retainedReferences]& 1) != 0)
    {
    }

    else
    {
      v12 = self->_commandBuffer;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __47___MTLParallelRenderCommandEncoder_endEncoding__block_invoke;
      v14[3] = &unk_1E6EEA880;
      v14[4] = progressFence;
      [(MTLCommandBuffer *)v12 addCompletedHandler:v14];
    }

    self->_progressFence = 0;
  }

  if (([(MTLCommandBuffer *)self->_commandBuffer errorOptions]& 1) != 0)
  {
    v13 = objc_opt_new();
    [v13 setUniqueID:{-[_MTLParallelRenderCommandEncoder getDriverUniqueID](self, "getDriverUniqueID")}];
    [v13 setLabel:{-[_MTLObjectWithLabel label](self, "label")}];
    [v13 setDebugSignposts:self->_debugSignposts];
    [v13 setErrorState:0];
    [*(self->_commandBuffer + 66) addObject:v13];
  }

  self->_commandBuffer = 0;
}

- (void)insertDebugSignpost:(id)signpost
{
  if (([(MTLCommandBuffer *)self->_commandBuffer errorOptions]& 1) != 0)
  {
    debugSignposts = self->_debugSignposts;
    if (!debugSignposts)
    {
      debugSignposts = [MEMORY[0x1E695DF70] array];
      self->_debugSignposts = debugSignposts;
    }

    [(NSMutableArray *)debugSignposts addObject:signpost];
  }
}

@end