@interface PKMetalRenderState
- (id)commandBufferCreateIfNecessary;
- (id)computeCommandBufferCreateIfNecessary;
- (id)initWithCommandQueue:(char)queue liveRendering:(void *)rendering defaultPipelineConfig:;
- (id)lastCommandBuffer;
- (id)maskCommandBufferCreateIfNecessary;
- (uint64_t)pipelineConfig;
- (void)addCommandBuffer:(uint64_t)buffer;
- (void)addPurgeableFramebuffer:(uint64_t)framebuffer;
- (void)commitAndPurgeResourceSet:(uint64_t)set;
- (void)dealloc;
- (void)extendLifetimeUntilCompleted:(uint64_t)completed;
- (void)pushDebugGroup:(uint64_t)group;
- (void)setComputeEncoder:(uint64_t)encoder;
- (void)setDestinationTexture:(uint64_t)texture;
- (void)setMaskRenderEncoder:(uint64_t)encoder;
- (void)setMultiplyDestinationTexture:(uint64_t)texture;
- (void)setRenderEncoder:(uint64_t)encoder;
- (void)setSixChannelContentTexture:(uint64_t)texture;
@end

@implementation PKMetalRenderState

- (id)initWithCommandQueue:(char)queue liveRendering:(void *)rendering defaultPipelineConfig:
{
  v8 = a2;
  if (self)
  {
    v19.receiver = self;
    v19.super_class = PKMetalRenderState;
    v9 = objc_msgSendSuper2(&v19, sel_init);
    self = v9;
    if (v9)
    {
      *(v9 + 40) = queue;
      objc_storeStrong(v9 + 6, a2);
      *(self + 8) = xmmword_1C801CB00;
      array = [MEMORY[0x1E695DF70] array];
      v11 = self[1];
      self[1] = array;

      v12 = [MEMORY[0x1E695DFA8] set];
      v13 = self[3];
      self[3] = v12;

      v14 = MEMORY[0x1E695EFD0];
      v15 = *(MEMORY[0x1E695EFD0] + 16);
      *(self + 13) = *MEMORY[0x1E695EFD0];
      *(self + 14) = v15;
      *(self + 15) = *(v14 + 32);
      v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:8];
      v17 = self[2];
      self[2] = v16;

      self[21] = 1;
      self[4] = rendering;
    }
  }

  return self;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  [(NSMutableSet *)self->_purgeableFramebuffers allObjects];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v3 = v9 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [(PKMetalFramebuffer *)*(*(&v8 + 1) + 8 * v6++) decrementNonPurgeableCount];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7.receiver = self;
  v7.super_class = PKMetalRenderState;
  [(PKMetalRenderState *)&v7 dealloc];
}

- (id)commandBufferCreateIfNecessary
{
  if (self)
  {
    selfCopy = self;
    v3 = self[7];
    if (!v3)
    {
      commandBuffer = [self[6] commandBuffer];
      v5 = selfCopy[7];
      selfCopy[7] = commandBuffer;

      [selfCopy[7] setLabel:@"Main render command buffer"];
      v3 = selfCopy[7];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)computeCommandBufferCreateIfNecessary
{
  if (self)
  {
    selfCopy = self;
    v3 = self[8];
    if (!v3)
    {
      commandBuffer = [self[6] commandBuffer];
      v5 = selfCopy[8];
      selfCopy[8] = commandBuffer;

      [selfCopy[8] setLabel:@"Compute command buffer"];
      v3 = selfCopy[8];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)maskCommandBufferCreateIfNecessary
{
  if (self)
  {
    selfCopy = self;
    v3 = self[9];
    if (!v3)
    {
      commandBuffer = [self[6] commandBuffer];
      v5 = selfCopy[9];
      selfCopy[9] = commandBuffer;

      [selfCopy[9] setLabel:@"Mask command buffer"];
      v3 = selfCopy[9];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)commitAndPurgeResourceSet:(uint64_t)set
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (set)
  {
    [objc_opt_class() renderTargetBarrierForRenderEncoder:*(set + 80)];
    v4 = *(set + 96);
    [v4 endEncoding];
    v5 = *(set + 96);
    *(set + 96) = 0;

    [*(set + 72) enqueue];
    [*(set + 72) commit];
    v6 = *(set + 72);
    *(set + 72) = 0;

    [*(set + 88) endEncoding];
    v7 = *(set + 88);
    *(set + 88) = 0;

    [*(set + 64) enqueue];
    [*(set + 64) commit];
    v8 = *(set + 64);
    *(set + 64) = 0;

    [*(set + 80) endEncoding];
    v9 = *(set + 80);
    *(set + 80) = 0;

    if ([*(set + 8) count])
    {
      lastObject = [*(set + 8) lastObject];
    }

    else
    {
      lastObject = *(set + 56);
    }

    v11 = lastObject;
    allObjects = [*(set + 16) allObjects];
    [*(set + 16) removeAllObjects];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__6;
    v33 = __Block_byref_object_dispose__6;
    v34 = [*(set + 24) copy];
    [*(set + 24) removeAllObjects];
    if ([v3 count] || objc_msgSend(allObjects, "count") || objc_msgSend(v30[5], "count"))
    {
      v13 = [v3 copy];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __48__PKMetalRenderState_commitAndPurgeResourceSet___block_invoke;
      v25[3] = &unk_1E82D8080;
      v26 = v13;
      v27 = allObjects;
      v28 = &v29;
      v14 = v13;
      [v11 addCompletedHandler:v25];
    }

    [*(set + 56) enqueue];
    [*(set + 56) commit];
    v15 = *(set + 56);
    *(set + 56) = 0;

    *(set + 104) = 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = *(set + 8);
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v35 count:16];
    if (v17)
    {
      v18 = *v22;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v21 + 1) + 8 * i);
          [v20 enqueue];
          [v20 commit];
        }

        v17 = [v16 countByEnumeratingWithState:&v21 objects:v35 count:16];
      }

      while (v17);
    }

    [*(set + 8) removeAllObjects];
    if (v4)
    {
      [v11 waitUntilScheduled];
    }

    if (*(set + 41) == 1)
    {
      [v11 waitUntilCompleted];
    }

    _Block_object_dispose(&v29, 8);
  }
}

void __48__PKMetalRenderState_commitAndPurgeResourceSet___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = *v17;
    do
    {
      v5 = 0;
      do
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v16 + 1) + 8 * v5++) unlock];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v3);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [(PKMetalFramebuffer *)*(*(&v12 + 1) + 8 * v9++) decrementNonPurgeableCount];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v7);
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

- (void)addCommandBuffer:(uint64_t)buffer
{
  v3 = a2;
  if (buffer)
  {
    if (*(buffer + 56))
    {
      [*(buffer + 8) addObject:v3];
    }

    else
    {
      [v3 enqueue];
      [v3 commit];
      if (*(buffer + 41) == 1)
      {
        [v3 waitUntilCompleted];
      }
    }
  }
}

- (id)lastCommandBuffer
{
  if (self)
  {
    selfCopy = self;
    if ([self[1] count])
    {
      self = [selfCopy[1] lastObject];
    }

    else
    {
      self = selfCopy[7];
    }

    v1 = vars8;
  }

  return self;
}

- (void)addPurgeableFramebuffer:(uint64_t)framebuffer
{
  v3 = a2;
  v4 = v3;
  if (framebuffer)
  {
    if (v3)
    {
      if (([*(framebuffer + 16) containsObject:v3] & 1) == 0)
      {
        [*(framebuffer + 16) addObject:v4];
        [(PKMetalFramebuffer *)v4 incrementNonPurgeableCount];
      }
    }

    else
    {
      v5 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        *v6 = 0;
        _os_log_fault_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_FAULT, "Tried to add a nil framebuffer as a purgeable buffer", v6, 2u);
      }
    }
  }
}

- (void)extendLifetimeUntilCompleted:(uint64_t)completed
{
  v3 = a2;
  if (completed)
  {
    [*(completed + 24) addObject:v3];
  }
}

- (void)pushDebugGroup:(uint64_t)group
{
  v3 = a2;
  if (group)
  {
    [*(group + 80) pushDebugGroup:v3];
  }
}

- (void)setRenderEncoder:(uint64_t)encoder
{
  v4 = a2;
  if (encoder)
  {
    objc_storeStrong((encoder + 80), a2);
    if (v4)
    {
      if (*(encoder + 192) && *(encoder + 200))
      {
        v5 = *(encoder + 192);
        v6[0] = *(encoder + 176);
        v6[1] = v5;
        [v4 setScissorRect:v6];
      }
    }
  }
}

- (uint64_t)pipelineConfig
{
  if (!self)
  {
    return 0;
  }

  if (*(self + 45) == 1)
  {
    __b = 0;
    v1 = 2 * *(self + 168);
    if (v1)
    {
      memset(&__b, *(self + 33), v1);
    }
  }

  else
  {
    v2 = *(self + 168);
    v3 = *(self + 32);
    __b = v3;
    if (v2 == 2)
    {
      BYTE4(__b) = BYTE1(v3);
      BYTE5(__b) = BYTE2(v3);
    }
  }

  return __b;
}

- (void)setComputeEncoder:(uint64_t)encoder
{
  if (encoder)
  {
    objc_storeStrong((encoder + 88), a2);
  }
}

- (void)setMaskRenderEncoder:(uint64_t)encoder
{
  if (encoder)
  {
    objc_storeStrong((encoder + 96), a2);
  }
}

- (void)setDestinationTexture:(uint64_t)texture
{
  if (texture)
  {
    objc_storeStrong((texture + 112), a2);
  }
}

- (void)setMultiplyDestinationTexture:(uint64_t)texture
{
  if (texture)
  {
    objc_storeStrong((texture + 120), a2);
  }
}

- (void)setSixChannelContentTexture:(uint64_t)texture
{
  if (texture)
  {
    objc_storeStrong((texture + 160), a2);
  }
}

@end