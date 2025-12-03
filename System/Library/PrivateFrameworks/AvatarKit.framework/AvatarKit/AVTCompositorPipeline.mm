@interface AVTCompositorPipeline
- (AVTCompositorPipeline)initWithFunction:(id)function;
- (void)compositeTexture:(id)texture forMemoji:(id)memoji considerSkin:(BOOL)skin componentsToConsider:(unint64_t)consider computeCommandHandler:(id)handler blitCommandHandler:(id)commandHandler completionHandler:(id)completionHandler helper:(id)self0 helperTokens:(id)self1;
@end

@implementation AVTCompositorPipeline

- (AVTCompositorPipeline)initWithFunction:(id)function
{
  v77 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  v75.receiver = self;
  v75.super_class = AVTCompositorPipeline;
  v58 = [(AVTCompositorPipeline *)&v75 init];
  if (v58)
  {
    if (!functionCopy)
    {
      [AVTCompositorPipeline initWithFunction:];
    }

    device = [functionCopy device];
    v6 = objc_alloc_init(MEMORY[0x1E6974038]);
    [v6 setComputeFunction:functionCopy];
    name = [functionCopy name];
    [v6 setLabel:name];

    v73 = 0;
    v74 = 0;
    v55 = v6;
    v56 = device;
    v8 = [device newComputePipelineStateWithDescriptor:v6 options:1 reflection:&v74 error:&v73];
    v9 = v74;
    v10 = v73;
    pipelineState = v58->_pipelineState;
    v58->_pipelineState = v8;

    if (!v58->_pipelineState)
    {
      v12 = avt_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(AVTCompositorPipeline *)functionCopy initWithFunction:v10, v12];
      }
    }

    v53 = v10;
    v57 = functionCopy;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v54 = v9;
    arguments = [v9 arguments];
    v15 = [arguments countByEnumeratingWithState:&v69 objects:v76 count:16];
    v16 = v58;
    if (v15)
    {
      v17 = v15;
      v18 = *v70;
      v59 = arguments;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v70 != v18)
          {
            objc_enumerationMutation(arguments);
          }

          v20 = *(*(&v69 + 1) + 8 * i);
          name2 = [v20 name];
          v22 = [name2 isEqualToString:@"dst"];

          if (!v22)
          {
            name3 = [v20 name];
            v24 = [name3 isEqualToString:@"builtin_skinColor"];

            if (v24)
            {
              if ([v20 type])
              {
                [AVTCompositorPipeline initWithFunction:];
              }

              if ([v20 bufferDataType] != 6)
              {
                [AVTCompositorPipeline initWithFunction:];
              }

              v16->_isAffectedBySkin = 1;
              v68[0] = MEMORY[0x1E69E9820];
              v68[1] = 3221225472;
              v68[2] = __42__AVTCompositorPipeline_initWithFunction___block_invoke;
              v68[3] = &unk_1E7F47C50;
              v68[4] = v20;
              v25 = v68;
LABEL_23:
              v28 = MEMORY[0x1BFB0EC20](v25);
              [v13 addObject:v28];

              continue;
            }

            name4 = [v20 name];
            v27 = [name4 isEqualToString:@"builtin_mouthInside"];

            if (v27)
            {
              if ([v20 type] != 2)
              {
                [AVTCompositorPipeline initWithFunction:];
              }

              v67[0] = MEMORY[0x1E69E9820];
              v67[1] = 3221225472;
              v67[2] = __42__AVTCompositorPipeline_initWithFunction___block_invoke_2;
              v67[3] = &unk_1E7F47C50;
              v67[4] = v20;
              v25 = v67;
              goto LABEL_23;
            }

            v29 = v13;
            name5 = [v20 name];
            v31 = [name5 componentsSeparatedByString:@"_"];

            v32 = [v31 count];
            v33 = [v31 objectAtIndexedSubscript:0];
            v34 = AVTComponentTypeFromString(v33);

            if (v34 == 42)
            {
              [AVTCompositorPipeline initWithFunction:];
            }

            v16->_affectingComponentsMask |= 1 << v34;
            switch(v32)
            {
              case 3:
                if ([v20 type] != 2)
                {
                  [AVTCompositorPipeline initWithFunction:];
                }

                v42 = [v31 objectAtIndexedSubscript:1];
                if (([v42 isEqualToString:@"layer"] & 1) == 0)
                {
                  [AVTCompositorPipeline initWithFunction:];
                }

                v43 = [v31 objectAtIndexedSubscript:2];
                v60[0] = MEMORY[0x1E69E9820];
                v60[1] = 3221225472;
                v60[2] = __42__AVTCompositorPipeline_initWithFunction___block_invoke_6;
                v60[3] = &unk_1E7F47CC8;
                v62 = v20;
                v63 = v34;
                v61 = v43;
                v44 = v43;
                v45 = MEMORY[0x1BFB0EC20](v60);
                v13 = v29;
                [v29 addObject:v45];

                break;
              case 2:
                v36 = [v31 objectAtIndexedSubscript:1];
                if ([v36 hasPrefix:@"color"])
                {
                  if ([v20 type])
                  {
                    [AVTCompositorPipeline initWithFunction:];
                  }

                  if ([v20 bufferDataType] != 6)
                  {
                    [AVTCompositorPipeline initWithFunction:];
                  }

                  v37 = [v36 substringFromIndex:{objc_msgSend(@"color", "length")}];
                  integerValue = [v37 integerValue];

                  v39 = [v31 objectAtIndexedSubscript:0];
                  v40 = AVTPresetCategoryFromString(v39);

                  if (v40 == 40)
                  {
                    [AVTCompositorPipeline initWithFunction:];
                  }

                  v41 = v65;
                  v65[0] = MEMORY[0x1E69E9820];
                  v65[1] = 3221225472;
                  v65[2] = __42__AVTCompositorPipeline_initWithFunction___block_invoke_4;
                  v65[3] = &unk_1E7F47CA0;
                  v65[5] = v40;
                  v65[6] = integerValue - 1;
                }

                else
                {
                  if (![v36 isEqualToString:@"uvRemapping"])
                  {
                    [AVTCompositorPipeline initWithFunction:];
                  }

                  if ([v20 type])
                  {
                    [AVTCompositorPipeline initWithFunction:];
                  }

                  if ([v20 bufferDataType] != 1)
                  {
                    [AVTCompositorPipeline initWithFunction:];
                  }

                  v46 = [v31 objectAtIndexedSubscript:0];
                  v47 = AVTPresetCategoryFromString(v46);

                  if (v47 == 40)
                  {
                    [AVTCompositorPipeline initWithFunction:];
                  }

                  v41 = v64;
                  v64[0] = MEMORY[0x1E69E9820];
                  v64[1] = 3221225472;
                  v64[2] = __42__AVTCompositorPipeline_initWithFunction___block_invoke_5;
                  v64[3] = &unk_1E7F47C78;
                  v64[5] = v34;
                }

                v41[4] = v20;
                v48 = MEMORY[0x1BFB0EC20]();
                v13 = v29;
                [v29 addObject:v48];

                break;
              case 1:
                if ([v20 type] != 2)
                {
                  [AVTCompositorPipeline initWithFunction:];
                }

                v66[0] = MEMORY[0x1E69E9820];
                v66[1] = 3221225472;
                v66[2] = __42__AVTCompositorPipeline_initWithFunction___block_invoke_3;
                v66[3] = &unk_1E7F47C78;
                v66[4] = v20;
                v66[5] = v34;
                v35 = MEMORY[0x1BFB0EC20](v66);
                v13 = v29;
                [v29 addObject:v35];

                goto LABEL_45;
              default:
                [AVTCompositorPipeline initWithFunction:];
            }

            v16 = v58;
LABEL_45:

            arguments = v59;
            continue;
          }

          if ([v20 type] != 2)
          {
            [AVTCompositorPipeline initWithFunction:];
          }

          if ([v20 index])
          {
            [AVTCompositorPipeline initWithFunction:];
          }
        }

        v17 = [arguments countByEnumeratingWithState:&v69 objects:v76 count:16];
      }

      while (v17);
    }

    v49 = [v13 copy];
    bindings = v16->_bindings;
    v16->_bindings = v49;

    functionCopy = v57;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v58;
}

void __42__AVTCompositorPipeline_initWithFunction___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = [a4 skinColor];
  *&v9 = AVTGetColorComponents(v7, v8);
  v10 = v9;

  v11 = v10;
  [v6 setBytes:&v11 length:16 atIndex:{objc_msgSend(*(a1 + 32), "index")}];
}

void __42__AVTCompositorPipeline_initWithFunction___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a3;
  v10 = a2;
  v11 = +[AVTResourceLocator sharedResourceLocator];
  v12 = [AVTResourceLocator pathForMemojiResource:v11 ofType:? inDirectory:? isDirectory:?];

  v18 = 0;
  v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12 isDirectory:0];
  v17 = 0;
  v14 = [v9 cachedTextureWithURL:v13 token:&v17 didFallbackToDefaultTexture:&v18];

  v15 = v17;
  v16 = 0;
  if ((v18 & 1) == 0)
  {
    v16 = v14;
    if (v15)
    {
      [v8 addObject:v15];
      v16 = v14;
    }
  }

  [v10 setTexture:v16 atIndex:{objc_msgSend(*(a1 + 32), "index")}];
}

void __42__AVTCompositorPipeline_initWithFunction___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = [a4 componentInstanceForType:*(a1 + 40)];
  v13 = [v12 assetImage];
  if (v13)
  {
    v19 = 0;
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:0];
    v18 = 0;
    v15 = [v10 cachedTextureWithURL:v14 token:&v18 didFallbackToDefaultTexture:&v19];
    v16 = v18;

    v17 = 0;
    if ((v19 & 1) == 0)
    {
      v17 = v15;
      if (v16)
      {
        [v11 addObject:v16];
        v17 = v15;
      }
    }

    [v9 setTexture:v17 atIndex:{objc_msgSend(*(a1 + 32), "index")}];
  }

  else
  {
    [v9 setTexture:0 atIndex:{objc_msgSend(*(a1 + 32), "index")}];
  }
}

void __42__AVTCompositorPipeline_initWithFunction___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = a2;
  v9 = [a4 colorPresetForCategory:v6 colorIndex:v7];
  v10 = [v9 baseColor];
  *&v12 = AVTGetColorComponents(v10, v11);
  v13 = v12;

  v14 = v13;
  [v8 setBytes:&v14 length:16 atIndex:{objc_msgSend(*(a1 + 32), "index")}];
}

void __42__AVTCompositorPipeline_initWithFunction___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [a4 componentInstanceForType:v6];
  v9 = v8;
  v10 = 0u;
  v11 = 0u;
  if (v8)
  {
    [v8 uvRemappingInfo];
  }

  else
  {
    *(&v10 + 1) = 1065353216;
    v11 = 0x3F80000000000000uLL;
  }

  [v7 setBytes:&v10 length:32 atIndex:{objc_msgSend(*(a1 + 32), "index", v10, v11)}];
}

void __42__AVTCompositorPipeline_initWithFunction___block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = [a4 componentInstanceForType:*(a1 + 48)];
  v13 = [v12 assetImageWithLayerNamed:*(a1 + 32)];
  if (v13)
  {
    v19 = 0;
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:0];
    v18 = 0;
    v15 = [v10 cachedTextureWithURL:v14 token:&v18 didFallbackToDefaultTexture:&v19];
    v16 = v18;

    v17 = 0;
    if ((v19 & 1) == 0)
    {
      v17 = v15;
      if (v16)
      {
        [v11 addObject:v16];
        v17 = v15;
      }
    }

    [v9 setTexture:v17 atIndex:{objc_msgSend(*(a1 + 40), "index")}];
  }

  else
  {
    [v9 setTexture:0 atIndex:{objc_msgSend(*(a1 + 40), "index")}];
  }
}

- (void)compositeTexture:(id)texture forMemoji:(id)memoji considerSkin:(BOOL)skin componentsToConsider:(unint64_t)consider computeCommandHandler:(id)handler blitCommandHandler:(id)commandHandler completionHandler:(id)completionHandler helper:(id)self0 helperTokens:(id)self1
{
  textureCopy = texture;
  memojiCopy = memoji;
  handlerCopy = handler;
  commandHandlerCopy = commandHandler;
  completionHandlerCopy = completionHandler;
  helperCopy = helper;
  tokensCopy = tokens;
  if (self->_isAffectedBySkin && skin || (self->_affectingComponentsMask & consider) != 0 || self->_shouldCompositeAgainDueToGPUError)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __165__AVTCompositorPipeline_compositeTexture_forMemoji_considerSkin_componentsToConsider_computeCommandHandler_blitCommandHandler_completionHandler_helper_helperTokens___block_invoke;
    v30[3] = &unk_1E7F47CF0;
    v30[4] = self;
    v31 = helperCopy;
    v32 = memojiCopy;
    v33 = tokensCopy;
    v24 = textureCopy;
    v34 = v24;
    handlerCopy[2](handlerCopy, v30);
    if ([v24 mipmapLevelCount] >= 2)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __165__AVTCompositorPipeline_compositeTexture_forMemoji_considerSkin_componentsToConsider_computeCommandHandler_blitCommandHandler_completionHandler_helper_helperTokens___block_invoke_2;
      v28[3] = &unk_1E7F47D18;
      v29 = v24;
      commandHandlerCopy[2](commandHandlerCopy, v28);
    }

    objc_initWeak(&location, self);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __165__AVTCompositorPipeline_compositeTexture_forMemoji_considerSkin_componentsToConsider_computeCommandHandler_blitCommandHandler_completionHandler_helper_helperTokens___block_invoke_3;
    v25[3] = &unk_1E7F47D40;
    objc_copyWeak(&v26, &location);
    completionHandlerCopy[2](completionHandlerCopy, v25);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void __165__AVTCompositorPipeline_compositeTexture_forMemoji_considerSkin_componentsToConsider_computeCommandHandler_blitCommandHandler_completionHandler_helper_helperTokens___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 32) threadExecutionWidth];
  v5 = [*(*(a1 + 32) + 32) maxTotalThreadsPerThreadgroup];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = *(*(a1 + 32) + 24);
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 40);
        v12 = *(a1 + 48);
        v13 = *(a1 + 56);
        (*(*(*(&v35 + 1) + 8 * v10++) + 16))();
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v8);
  }

  [v3 setComputePipelineState:*(*(a1 + 32) + 32)];
  [v3 setTexture:*(a1 + 64) atIndex:0];
  v14 = [v3 device];
  v16 = AVTMTLDeviceSupportsNonUniformThreadgroupSize(v14, v15);

  if (v16)
  {
    v17 = v5 / v4;
    v18 = [*(a1 + 64) width];
    v19 = [*(a1 + 64) height];
    v32 = v18;
    v33 = v19;
    v34 = 1;
    v29 = v4;
    v30 = v17;
    v31 = 1;
    [v3 dispatchThreads:&v32 threadsPerThreadgroup:&v29];
  }

  else
  {
    v20 = [*(a1 + 64) width];
    if (v4 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v4;
    }

    v22 = [*(a1 + 64) height];
    if (v4 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v4;
    }

    do
    {
      v24 = v23;
      v25 = v23 * v21;
      v23 >>= 1;
    }

    while (v25 > v5);
    v26 = v21 + [*(a1 + 64) width] - 1;
    v27 = *(a1 + 64);
    v32 = v26 / v21;
    v33 = (v24 + [v27 height] - 1) / v24;
    v34 = 1;
    v29 = v21;
    v30 = v24;
    v31 = 1;
    [v3 dispatchThreadgroups:&v32 threadsPerThreadgroup:&v29];
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __165__AVTCompositorPipeline_compositeTexture_forMemoji_considerSkin_componentsToConsider_computeCommandHandler_blitCommandHandler_completionHandler_helper_helperTokens___block_invoke_3(uint64_t a1, void *a2)
{
  if ([a2 status] != 4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      WeakRetained[9] = 1;
    }
  }
}

- (void)initWithFunction:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 name];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1BB472000, a3, OS_LOG_TYPE_ERROR, "Error: Error compiling '%@' kernel function: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end