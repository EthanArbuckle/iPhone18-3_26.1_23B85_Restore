@interface PKTileController
- (id)initWithPixelSize:(int)size actualSize:(int)actualSize pixelFormat:(int)format sixChannelBlending:(void *)blending transparentBlending:(double)transparentBlending wantsExtendedDynamicRangeContent:(double)content metalConfig:(double)config;
- (void)callbackAfterTileGeneration:(uint64_t)generation;
- (void)renderStrokes:(void *)strokes additionalStrokes:(void *)additionalStrokes intoTile:(void *)tile completionBlock:;
- (void)renderTilesIntoTiles:(void *)tiles completion:;
- (void)resumePreviews;
- (void)runTasks;
- (void)setContentZoomScale:(uint64_t)scale;
- (void)setSixChannelBlending:(uint64_t)blending;
- (void)setTransparentBlending:(uint64_t)blending;
- (void)setWantsExtendedDynamicRangeContent:(uint64_t)content;
- (void)suspendPreviews;
- (void)teardown;
@end

@implementation PKTileController

- (void)resumePreviews
{
  if (self)
  {
    v2 = os_log_create("com.apple.pencilkit", "Tiles");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "resume tile previews", v3, 2u);
    }

    if (*(self + 11) == 1)
    {
      dispatch_resume(*(self + 48));
      *(self + 11) = 0;
    }
  }
}

- (id)initWithPixelSize:(int)size actualSize:(int)actualSize pixelFormat:(int)format sixChannelBlending:(void *)blending transparentBlending:(double)transparentBlending wantsExtendedDynamicRangeContent:(double)content metalConfig:(double)config
{
  blendingCopy = blending;
  if (self && +[PKMetalUtility isMetalAvailable])
  {
    v36.receiver = self;
    v36.super_class = PKTileController;
    v20 = objc_msgSendSuper2(&v36, sel_init);
    if (v20)
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v22 = v20[4];
      v20[4] = v21;

      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v24 = v20[5];
      v20[5] = v23;

      *(v20 + 9) = size;
      *(v20 + 10) = actualSize;
      v20[2] = 0x3FF0000000000000;
      v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v26 = dispatch_queue_attr_make_with_qos_class(v25, QOS_CLASS_USER_INTERACTIVE, 0);

      v27 = dispatch_queue_create("com.apple.pencilkit.draw-previews", v26);
      v28 = v20[6];
      v20[6] = v27;

      v29 = [PKMetalRendererController alloc];
      v30 = 4;
      if (size ^ 1 | actualSize)
      {
        v30 = 0;
      }

      if ((size & actualSize) != 0)
      {
        v31 = 5;
      }

      else
      {
        v31 = v30;
      }

      v32 = [(PKMetalRendererController *)v29 initWithPixelSize:a2 actualSize:v31 pixelFormat:format sixChannelBlendingMode:blendingCopy wantsExtendedDynamicRangeContent:transparentBlending metalConfig:content, config, a10];
      v33 = v20[3];
      v20[3] = v32;

      [(PKMetalRendererController *)v20[3] setup];
    }

    self = v20;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)teardown
{
  if (self)
  {
    [(PKMetalRendererController *)*(self + 24) cancelAllRendering];
    [(PKTileController *)self resumePreviews];
    v2 = *(self + 24);

    [(PKMetalRendererController *)v2 teardown];
  }
}

- (void)suspendPreviews
{
  if (self)
  {
    v2 = os_log_create("com.apple.pencilkit", "Tiles");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v2, OS_LOG_TYPE_DEBUG, "suspend tile previews", v3, 2u);
    }

    if ((*(self + 11) & 1) == 0)
    {
      dispatch_suspend(*(self + 48));
      *(self + 11) = 1;
    }
  }
}

- (void)setSixChannelBlending:(uint64_t)blending
{
  if (blending && *(blending + 9) != a2)
  {
    *(blending + 9) = a2;
    v2 = *(blending + 10);
    v3 = 4;
    if (v2 & 1 | ((a2 & 1) == 0))
    {
      v3 = 0;
    }

    if ((v2 & a2) != 0)
    {
      v4 = 5;
    }

    else
    {
      v4 = v3;
    }

    [(PKMetalRendererController *)*(blending + 24) setSixChannelBlendingMode:v4];
  }
}

- (void)setTransparentBlending:(uint64_t)blending
{
  if (blending && *(blending + 10) != a2)
  {
    *(blending + 10) = a2;
    v2 = *(blending + 9);
    v3 = 4;
    if (a2 & 1 | ((v2 & 1) == 0))
    {
      v3 = 0;
    }

    if ((v2 & a2) != 0)
    {
      v4 = 5;
    }

    else
    {
      v4 = v3;
    }

    [(PKMetalRendererController *)*(blending + 24) setSixChannelBlendingMode:v4];
  }
}

- (void)setWantsExtendedDynamicRangeContent:(uint64_t)content
{
  if (content)
  {
    [(PKMetalRendererController *)*(content + 24) setWantsExtendedDynamicRangeContent:a2];
  }
}

- (void)setContentZoomScale:(uint64_t)scale
{
  if (scale)
  {
    if (*(scale + 16) != a2)
    {
      *(scale + 16) = a2;
      [(PKMetalRendererController *)*(scale + 24) setContentZoomScale:a2];
    }
  }
}

- (void)renderTilesIntoTiles:(void *)tiles completion:
{
  v5 = a2;
  tilesCopy = tiles;
  if (self)
  {
    v7 = *(self + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__PKTileController_renderTilesIntoTiles_completion___block_invoke;
    block[3] = &unk_1E82D7930;
    block[4] = self;
    v9 = v5;
    v10 = tilesCopy;
    dispatch_async(v7, block);
  }
}

uint64_t __52__PKTileController_renderTilesIntoTiles_completion___block_invoke(uint64_t a1)
{
  [(PKMetalRendererController *)*(*(a1 + 32) + 24) renderTilesIntoTiles:?];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)callbackAfterTileGeneration:(uint64_t)generation
{
  if (generation)
  {
    v3 = a2;
    v4 = os_log_create("com.apple.pencilkit", "Tiles");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "queue tile completion", v7, 2u);
    }

    v5 = *(generation + 40);
    v6 = _Block_copy(v3);

    [v5 addObject:v6];
    [(PKTileController *)generation runTasks];
  }
}

- (void)runTasks
{
  v1 = *(self + 48);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __28__PKTileController_runTasks__block_invoke;
  v2[3] = &unk_1E82D90B8;
  v2[4] = self;
  v3 = 0;
  dispatch_async(v1, v2);
}

- (void)renderStrokes:(void *)strokes additionalStrokes:(void *)additionalStrokes intoTile:(void *)tile completionBlock:
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    tileCopy = tile;
    additionalStrokesCopy = additionalStrokes;
    strokesCopy = strokes;
    v12 = a2;
    v13 = [[PKTileTask alloc] initWithStrokes:v12 additionalStrokes:strokesCopy intoTile:additionalStrokesCopy completionBlock:tileCopy];

    v14 = os_log_create("com.apple.pencilkit", "Tiles");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = v13;
      _os_log_debug_impl(&dword_1C7CCA000, v14, OS_LOG_TYPE_DEBUG, "queue %@", &v15, 0xCu);
    }

    os_unfair_lock_lock(&tasks_lock);
    [*(self + 32) addObject:v13];
    os_unfair_lock_unlock(&tasks_lock);
    [(PKTileController *)self runTasks];
  }
}

void __28__PKTileController_runTasks__block_invoke(uint64_t a1)
{
  v86 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&tasks_lock);
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 count])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v4 = v4[4];
    }

    v5 = v4;
    v6 = [v5 firstObject];

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 32);
    }

    else
    {
      v8 = 0;
    }

    [v8 removeObjectAtIndex:0];
    os_unfair_lock_unlock(&tasks_lock);
    if (v6)
    {
      v9 = *(v6 + 24);
      v10 = v9;
      if (v9)
      {
        v11 = atomic_load(v9 + 2);
      }

      else
      {
        v11 = 0;
      }

      if (*(v6 + 32) == v11)
      {
        v13 = *(v6 + 8);
        v14 = *(v6 + 16);
        if (v14)
        {
          v65 = v10;
          v66 = v6;
          v64 = a1;
          v15 = *(a1 + 32);
          v16 = v14;
          v17 = v13;
          v67 = v16;
          if (v15)
          {
            v13 = [v17 mutableCopy];
            v18 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSObject count](v17, "count")}];
            v76 = 0u;
            v77 = 0u;
            v78 = 0u;
            v79 = 0u;
            v63 = v17;
            v19 = v17;
            v20 = [v19 countByEnumeratingWithState:&v76 objects:&buf count:16];
            if (v20)
            {
              v21 = v20;
              v22 = 0;
              v23 = *v77;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v77 != v23)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v25 = *(*(&v76 + 1) + 8 * i);
                  v26 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
                  v27 = [v25 _strokeUUID];
                  [v18 setObject:v26 forKeyedSubscript:v27];

                  ++v22;
                }

                v21 = [v19 countByEnumeratingWithState:&v76 objects:&buf count:16];
              }

              while (v21);
            }

            v28 = objc_alloc_init(MEMORY[0x1E696AD50]);
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v29 = v67;
            v30 = [v29 countByEnumeratingWithState:&v72 objects:v81 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v73;
              do
              {
                for (j = 0; j != v31; ++j)
                {
                  if (*v73 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v34 = *(*(&v72 + 1) + 8 * j);
                  v35 = [v34 _strokeUUID];
                  v36 = [v18 objectForKeyedSubscript:v35];

                  v37 = [v34 _isHidden];
                  v38 = v37;
                  if (v36)
                  {
                    v39 = [v36 integerValue];
                    if (v38)
                    {
                      [v28 addIndex:v39];
                    }

                    else
                    {
                      [v13 setObject:v34 atIndexedSubscript:v39];
                    }
                  }

                  else if ((v37 & 1) == 0)
                  {
                    [v13 addObject:v34];
                  }
                }

                v31 = [v29 countByEnumeratingWithState:&v72 objects:v81 count:16];
              }

              while (v31);
            }

            [v13 removeObjectsAtIndexes:v28];
            v6 = v66;
            v17 = v63;
          }

          else
          {
            v13 = 0;
          }

          a1 = v64;
          v10 = v65;
        }

        if (v10)
        {
          Property = objc_getProperty(v10, v12, 136, 1);
        }

        else
        {
          Property = 0;
        }

        v41 = Property;
        v42 = [v41 isEqualToArray:v13];

        if (v42)
        {
          (*(*(v6 + 40) + 16))();
          v43 = os_log_create("com.apple.pencilkit", "Tiles");
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v6;
            _os_log_debug_impl(&dword_1C7CCA000, v43, OS_LOG_TYPE_DEBUG, "nothing to do %@", &buf, 0xCu);
          }
        }

        else
        {
          v45 = os_log_create("com.apple.pencilkit", "Tiles");
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v6;
            _os_log_debug_impl(&dword_1C7CCA000, v45, OS_LOG_TYPE_DEBUG, "render %@", &buf, 0xCu);
          }

          v43 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSObject count](v13, "count")}];
          if (v10)
          {
            v47 = v10[23];
            v46 = v10[24];
            v48 = v10[25];
            v49 = v10[26];
          }

          else
          {
            v46 = 0.0;
            v48 = 0.0;
            v49 = 0.0;
            v47 = 0.0;
          }

          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v50 = v13;
          v51 = [v50 countByEnumeratingWithState:&v68 objects:v80 count:16];
          if (v51)
          {
            v52 = v51;
            v53 = *v69;
            do
            {
              for (k = 0; k != v52; ++k)
              {
                if (*v69 != v53)
                {
                  objc_enumerationMutation(v50);
                }

                v55 = *(*(&v68 + 1) + 8 * k);
                [v55 _bounds];
                v88.origin.x = v56;
                v88.origin.y = v57;
                v88.size.width = v58;
                v88.size.height = v59;
                v87.origin.x = v47;
                v87.origin.y = v46;
                v87.size.width = v48;
                v87.size.height = v49;
                if (CGRectIntersectsRect(v87, v88))
                {
                  [v43 addObject:v55];
                }
              }

              v52 = [v50 countByEnumeratingWithState:&v68 objects:v80 count:16];
            }

            while (v52);
          }

          v60 = [(PKMetalRendererController *)*(*(a1 + 32) + 24) drawStrokes:v43 intoTile:v10 renderCount:*(v6 + 32) offscreen:*(a1 + 40)];
          v61 = *(*(v6 + 40) + 16);
          if (v60)
          {
            v61();
            if (v10)
            {
              objc_setProperty_atomic_copy(v10, v62, v50, 136);
            }
          }

          else
          {
            v61();
          }
        }
      }

      else
      {
        (*(*(v6 + 40) + 16))();
        v13 = os_log_create("com.apple.pencilkit", "Tiles");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v6;
          _os_log_debug_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_DEBUG, "skip %@", &buf, 0xCu);
        }
      }

      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(&tasks_lock);
  }

  v44 = *(a1 + 32);
  if (v44)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v83 = __31__PKTileController_didComplete__block_invoke;
    v84 = &unk_1E82D7148;
    v85 = v44;
    dispatch_sync(MEMORY[0x1E69E96A0], &buf);
  }
}

void __31__PKTileController_didComplete__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 40);
  }

  else
  {
    v3 = 0;
  }

  if ([v3 count])
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 40);
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 copy];
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 40);
    }

    else
    {
      v8 = 0;
    }

    [v8 removeAllObjects];
    v9 = os_log_create("com.apple.pencilkit", "Tiles");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v21 = [v6 count];
      _os_log_debug_impl(&dword_1C7CCA000, v9, OS_LOG_TYPE_DEBUG, "did complete %ld", buf, 0xCu);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(v10);
          }

          (*(*(*(&v15 + 1) + 8 * v14) + 16))(*(*(&v15 + 1) + 8 * v14));
          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

@end