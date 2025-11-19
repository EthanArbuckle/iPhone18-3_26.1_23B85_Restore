@interface PKMetalRenderState
- (id)commandBufferCreateIfNecessary;
- (id)computeCommandBufferCreateIfNecessary;
- (id)initWithCommandQueue:(char)a3 liveRendering:(void *)a4 defaultPipelineConfig:;
- (id)lastCommandBuffer;
- (id)maskCommandBufferCreateIfNecessary;
- (uint64_t)pipelineConfig;
- (void)addCommandBuffer:(uint64_t)a1;
- (void)addPurgeableFramebuffer:(uint64_t)a1;
- (void)commitAndPurgeResourceSet:(uint64_t)a1;
- (void)dealloc;
- (void)extendLifetimeUntilCompleted:(uint64_t)a1;
- (void)pushDebugGroup:(uint64_t)a1;
- (void)setComputeEncoder:(uint64_t)a1;
- (void)setDestinationTexture:(uint64_t)a1;
- (void)setMaskRenderEncoder:(uint64_t)a1;
- (void)setMultiplyDestinationTexture:(uint64_t)a1;
- (void)setRenderEncoder:(uint64_t)a1;
- (void)setSixChannelContentTexture:(uint64_t)a1;
@end

@implementation PKMetalRenderState

- (id)initWithCommandQueue:(char)a3 liveRendering:(void *)a4 defaultPipelineConfig:
{
  v8 = a2;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = PKMetalRenderState;
    v9 = objc_msgSendSuper2(&v19, sel_init);
    a1 = v9;
    if (v9)
    {
      *(v9 + 40) = a3;
      objc_storeStrong(v9 + 6, a2);
      *(a1 + 8) = xmmword_1C801CB00;
      v10 = [MEMORY[0x1E695DF70] array];
      v11 = a1[1];
      a1[1] = v10;

      v12 = [MEMORY[0x1E695DFA8] set];
      v13 = a1[3];
      a1[3] = v12;

      v14 = MEMORY[0x1E695EFD0];
      v15 = *(MEMORY[0x1E695EFD0] + 16);
      *(a1 + 13) = *MEMORY[0x1E695EFD0];
      *(a1 + 14) = v15;
      *(a1 + 15) = *(v14 + 32);
      v16 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:8];
      v17 = a1[2];
      a1[2] = v16;

      a1[21] = 1;
      a1[4] = a4;
    }
  }

  return a1;
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
  if (a1)
  {
    v2 = a1;
    v3 = a1[7];
    if (!v3)
    {
      v4 = [a1[6] commandBuffer];
      v5 = v2[7];
      v2[7] = v4;

      [v2[7] setLabel:@"Main render command buffer"];
      v3 = v2[7];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (id)computeCommandBufferCreateIfNecessary
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[8];
    if (!v3)
    {
      v4 = [a1[6] commandBuffer];
      v5 = v2[8];
      v2[8] = v4;

      [v2[8] setLabel:@"Compute command buffer"];
      v3 = v2[8];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (id)maskCommandBufferCreateIfNecessary
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[9];
    if (!v3)
    {
      v4 = [a1[6] commandBuffer];
      v5 = v2[9];
      v2[9] = v4;

      [v2[9] setLabel:@"Mask command buffer"];
      v3 = v2[9];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (void)commitAndPurgeResourceSet:(uint64_t)a1
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    [objc_opt_class() renderTargetBarrierForRenderEncoder:*(a1 + 80)];
    v4 = *(a1 + 96);
    [v4 endEncoding];
    v5 = *(a1 + 96);
    *(a1 + 96) = 0;

    [*(a1 + 72) enqueue];
    [*(a1 + 72) commit];
    v6 = *(a1 + 72);
    *(a1 + 72) = 0;

    [*(a1 + 88) endEncoding];
    v7 = *(a1 + 88);
    *(a1 + 88) = 0;

    [*(a1 + 64) enqueue];
    [*(a1 + 64) commit];
    v8 = *(a1 + 64);
    *(a1 + 64) = 0;

    [*(a1 + 80) endEncoding];
    v9 = *(a1 + 80);
    *(a1 + 80) = 0;

    if ([*(a1 + 8) count])
    {
      v10 = [*(a1 + 8) lastObject];
    }

    else
    {
      v10 = *(a1 + 56);
    }

    v11 = v10;
    v12 = [*(a1 + 16) allObjects];
    [*(a1 + 16) removeAllObjects];
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__6;
    v33 = __Block_byref_object_dispose__6;
    v34 = [*(a1 + 24) copy];
    [*(a1 + 24) removeAllObjects];
    if ([v3 count] || objc_msgSend(v12, "count") || objc_msgSend(v30[5], "count"))
    {
      v13 = [v3 copy];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __48__PKMetalRenderState_commitAndPurgeResourceSet___block_invoke;
      v25[3] = &unk_1E82D8080;
      v26 = v13;
      v27 = v12;
      v28 = &v29;
      v14 = v13;
      [v11 addCompletedHandler:v25];
    }

    [*(a1 + 56) enqueue];
    [*(a1 + 56) commit];
    v15 = *(a1 + 56);
    *(a1 + 56) = 0;

    *(a1 + 104) = 0;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = *(a1 + 8);
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

    [*(a1 + 8) removeAllObjects];
    if (v4)
    {
      [v11 waitUntilScheduled];
    }

    if (*(a1 + 41) == 1)
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

- (void)addCommandBuffer:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 56))
    {
      [*(a1 + 8) addObject:v3];
    }

    else
    {
      [v3 enqueue];
      [v3 commit];
      if (*(a1 + 41) == 1)
      {
        [v3 waitUntilCompleted];
      }
    }
  }
}

- (id)lastCommandBuffer
{
  if (a1)
  {
    v2 = a1;
    if ([a1[1] count])
    {
      a1 = [v2[1] lastObject];
    }

    else
    {
      a1 = v2[7];
    }

    v1 = vars8;
  }

  return a1;
}

- (void)addPurgeableFramebuffer:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      if (([*(a1 + 16) containsObject:v3] & 1) == 0)
      {
        [*(a1 + 16) addObject:v4];
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

- (void)extendLifetimeUntilCompleted:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [*(a1 + 24) addObject:v3];
  }
}

- (void)pushDebugGroup:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [*(a1 + 80) pushDebugGroup:v3];
  }
}

- (void)setRenderEncoder:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
    if (v4)
    {
      if (*(a1 + 192) && *(a1 + 200))
      {
        v5 = *(a1 + 192);
        v6[0] = *(a1 + 176);
        v6[1] = v5;
        [v4 setScissorRect:v6];
      }
    }
  }
}

- (uint64_t)pipelineConfig
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 45) == 1)
  {
    __b = 0;
    v1 = 2 * *(a1 + 168);
    if (v1)
    {
      memset(&__b, *(a1 + 33), v1);
    }
  }

  else
  {
    v2 = *(a1 + 168);
    v3 = *(a1 + 32);
    __b = v3;
    if (v2 == 2)
    {
      BYTE4(__b) = BYTE1(v3);
      BYTE5(__b) = BYTE2(v3);
    }
  }

  return __b;
}

- (void)setComputeEncoder:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

- (void)setMaskRenderEncoder:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

- (void)setDestinationTexture:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

- (void)setMultiplyDestinationTexture:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 120), a2);
  }
}

- (void)setSixChannelContentTexture:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 160), a2);
  }
}

@end