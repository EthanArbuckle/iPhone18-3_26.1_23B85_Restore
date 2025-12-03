@interface PKController
- (id)initWithPixelSize:(uint64_t)size actualSize:(int)actualSize singleComponent:(void *)component sixChannelBlendingMode:(double)mode wantsExtendedDynamicRangeContent:(double)content metalConfig:(double)config;
- (id)renderedStrokes;
- (id)teardown;
- (void)_addNewStrokes:(int)strokes wasAddedEarly:(int)early hidden:(void *)hidden preDrawingChangedBlock:;
- (void)_didUpdateMutableRenderedStrokes;
- (void)_setDrawing:(void *)drawing imageTexture:;
- (void)addLiveStrokeEarly:(void *)early completionBlock:;
- (void)addNewRenderedStrokes:(int)strokes wasAddedEarly:(int)early hidden:(void *)hidden preDrawingChangedBlock:;
- (void)cancelLiveStroke;
- (void)didStartLiveInteraction;
- (void)hideStrokesWithoutUpdating:(void *)updating completion:;
- (void)inputController;
- (void)performAsyncInteractBlock:(uint64_t)block;
- (void)setDrawing:(void *)drawing imageTexture:(void *)texture completion:;
- (void)setDrawing:(void *)drawing tiles:(__int128 *)tiles tileTransform:(void *)transform contentImageTexture:(__int128 *)texture contentImageTextureTransform:(void *)textureTransform completionBlock:;
- (void)setLiveInteractionDrawing:(uint64_t)drawing;
- (void)updateDrawingWithErasedStrokes:(uint64_t)strokes;
@end

@implementation PKController

- (id)initWithPixelSize:(uint64_t)size actualSize:(int)actualSize singleComponent:(void *)component sixChannelBlendingMode:(double)mode wantsExtendedDynamicRangeContent:(double)content metalConfig:(double)config
{
  componentCopy = component;
  if (self && +[PKMetalUtility isMetalAvailable])
  {
    v44.receiver = self;
    v44.super_class = PKController;
    v19 = objc_msgSendSuper2(&v44, sel_init);
    if (v19)
    {
      v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_USER_INTERACTIVE, 0);

      objc_storeStrong(v19 + 3, component);
      v22 = dispatch_queue_create("com.apple.pencilkit.draw-interact", v21);
      v23 = *(v19 + 11);
      *(v19 + 11) = v22;

      v24 = dispatch_queue_create("com.apple.pencilkit.draw", v21);
      v25 = *(v19 + 12);
      *(v19 + 12) = v24;

      array = [MEMORY[0x1E695DF70] array];
      v27 = *(v19 + 5);
      *(v19 + 5) = array;

      v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v29 = dispatch_queue_attr_make_with_qos_class(v28, QOS_CLASS_UTILITY, 0);

      v30 = dispatch_queue_create("com.apple.pencilkit.draw-background", v29);
      v31 = *(v19 + 13);
      *(v19 + 13) = v30;

      v32 = dispatch_semaphore_create(0);
      v33 = *(v19 + 10);
      *(v19 + 10) = v32;

      *(v19 + 49) = 0;
      objc_storeStrong(v19 + 3, component);
      v34 = [PKMetalRendererController alloc];
      if (a2)
      {
        v35 = 10;
      }

      else
      {
        v35 = 80;
      }

      v36 = [(PKMetalRendererController *)v34 initWithPixelSize:v35 actualSize:size pixelFormat:actualSize sixChannelBlendingMode:componentCopy wantsExtendedDynamicRangeContent:mode metalConfig:content, config, a9];
      v37 = *(v19 + 8);
      *(v19 + 8) = v36;

      v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v39 = *(v19 + 2);
      *(v19 + 2) = v38;

      v40 = objc_alloc_init(PKDrawing);
      v41 = *(v19 + 9);
      *(v19 + 9) = v40;

      [(PKMetalRendererController *)*(v19 + 8) setup];
      [(PKController *)v19 _didUpdateMutableRenderedStrokes];
    }

    self = v19;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_didUpdateMutableRenderedStrokes
{
  if (self)
  {
    obj = self;
    objc_sync_enter(obj);
    v1 = [obj[2] copy];
    v2 = obj[1];
    obj[1] = v1;

    objc_sync_exit(obj);
  }
}

- (id)teardown
{
  if (result)
  {
    v1 = result;
    [(PKMetalRendererController *)result[8] cancelAllRendering];
    [(PKMetalRendererController *)v1[8] teardown];

    return objc_storeWeak(v1 + 7, 0);
  }

  return result;
}

- (id)renderedStrokes
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = [selfCopy[1] copy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)inputController
{
  if (self)
  {
    v2 = self[8];
    if (v2)
    {
      v2 = v2[70];
    }

    self = v2;
    v1 = vars8;
  }

  return self;
}

- (void)didStartLiveInteraction
{
  if (self)
  {
    v1 = *(self + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PKController_didStartLiveInteraction__block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

intptr_t __39__PKController_didStartLiveInteraction__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 48) = 1;
  result = dispatch_semaphore_wait(*(*(a1 + 32) + 80), 0xFFFFFFFFFFFFFFFFLL);
  v3 = *(a1 + 32);
  if (v3)
  {
    *(v3 + 48) = 0;
  }

  return result;
}

- (void)setLiveInteractionDrawing:(uint64_t)drawing
{
  v3 = a2;
  v4 = v3;
  if (drawing)
  {
    v5 = [v3 copy];

    v6 = *(drawing + 96);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__PKController_setLiveInteractionDrawing___block_invoke;
    v7[3] = &unk_1E82D6890;
    v7[4] = drawing;
    v4 = v5;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

- (void)setDrawing:(void *)drawing tiles:(__int128 *)tiles tileTransform:(void *)transform contentImageTexture:(__int128 *)texture contentImageTextureTransform:(void *)textureTransform completionBlock:
{
  v13 = a2;
  drawingCopy = drawing;
  transformCopy = transform;
  textureTransformCopy = textureTransform;
  if (self)
  {
    objc_initWeak(location, self);
    v17 = [v13 copy];

    v18 = self[11];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__PKController_setDrawing_tiles_tileTransform_contentImageTexture_contentImageTextureTransform_completionBlock___block_invoke;
    block[3] = &unk_1E82D6660;
    objc_copyWeak(&v26, location);
    v13 = v17;
    v22 = v13;
    v23 = transformCopy;
    v19 = texture[1];
    v27 = *texture;
    v28 = v19;
    v29 = texture[2];
    v24 = drawingCopy;
    v20 = tiles[1];
    v30 = *tiles;
    v31 = v20;
    v32 = tiles[2];
    v25 = textureTransformCopy;
    dispatch_async(v18, block);

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }
}

uint64_t __112__PKController_setDrawing_tiles_tileTransform_contentImageTexture_contentImageTextureTransform_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [(PKController *)WeakRetained _setDrawing:0 imageTexture:?];

  v3 = objc_loadWeakRetained((a1 + 64));
  v4 = v3;
  if (v3)
  {
    v3 = *(v3 + 8);
  }

  v5 = *(a1 + 88);
  v12[0] = *(a1 + 72);
  v12[1] = v5;
  v12[2] = *(a1 + 104);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 136);
  v11[0] = *(a1 + 120);
  v11[1] = v8;
  v11[2] = *(a1 + 152);
  [(PKMetalRendererController *)v3 renderImageTexture:v6 imageTextureTransform:v12 withTiles:v7 tileTransform:v11];

  v9 = *(*(a1 + 56) + 16);

  return v9();
}

- (void)_setDrawing:(void *)drawing imageTexture:
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  drawingCopy = drawing;
  if (self)
  {
    v7 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v12 = v5;
      _os_log_debug_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_DEBUG, "Set async drawing %p", buf, 0xCu);
    }

    v8 = *(self + 96);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__PKController__setDrawing_imageTexture___block_invoke;
    v9[3] = &unk_1E82D6890;
    v9[4] = self;
    v10 = v5;
    dispatch_sync(v8, v9);
    if (drawingCopy)
    {
      [(PKMetalRendererController *)*(self + 64) drawTexture:drawingCopy];
    }
  }
}

- (void)setDrawing:(void *)drawing imageTexture:(void *)texture completion:
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  drawingCopy = drawing;
  textureCopy = texture;
  if (self)
  {
    v10 = os_log_create("com.apple.pencilkit", "Sketching");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v18 = v7;
      _os_log_debug_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEBUG, "Set drawing %p", buf, 0xCu);
    }

    v11 = [v7 copy];
    v12 = *(self + 88);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__PKController_setDrawing_imageTexture_completion___block_invoke;
    v13[3] = &unk_1E82D67F0;
    v13[4] = self;
    v7 = v11;
    v14 = v7;
    v15 = drawingCopy;
    v16 = textureCopy;
    dispatch_async(v12, v13);
  }
}

uint64_t __51__PKController_setDrawing_imageTexture_completion___block_invoke(uint64_t a1)
{
  [(PKController *)*(a1 + 32) _setDrawing:*(a1 + 48) imageTexture:?];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __41__PKController__setDrawing_imageTexture___block_invoke(uint64_t a1)
{
  v7 = [*(*(a1 + 32) + 72) uuid];
  v2 = [*(a1 + 40) uuid];
  v3 = [v7 isEqual:v2];

  if (v3)
  {
    [*(*(a1 + 32) + 72) mergeWithDrawing:*(a1 + 40)];
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 72), *(a1 + 40));
  }

  v8 = [*(*(a1 + 32) + 72) strokes];
  v4 = [v8 mutableCopy];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;
}

- (void)performAsyncInteractBlock:(uint64_t)block
{
  v3 = a2;
  v4 = v3;
  if (block)
  {
    v5 = *(block + 88);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __42__PKController_performAsyncInteractBlock___block_invoke;
    v6[3] = &unk_1E82D63D8;
    v6[4] = block;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

intptr_t __42__PKController_performAsyncInteractBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __42__PKController_performAsyncInteractBlock___block_invoke_2;
  v7 = &unk_1E82D6388;
  v8 = *(a1 + 32);
  (*(v2 + 16))();
  return dispatch_semaphore_wait(*(*(a1 + 32) + 80), 0xFFFFFFFFFFFFFFFFLL);
}

- (void)hideStrokesWithoutUpdating:(void *)updating completion:
{
  v5 = a2;
  updatingCopy = updating;
  if (self)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __54__PKController_hideStrokesWithoutUpdating_completion___block_invoke;
    v7[3] = &unk_1E82D6688;
    v7[4] = self;
    v8 = v5;
    v9 = updatingCopy;
    [(PKController *)self performAsyncInteractBlock:v7];
  }
}

void __54__PKController_hideStrokesWithoutUpdating_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 96);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PKController_hideStrokesWithoutUpdating_completion___block_invoke_2;
  v12[3] = &unk_1E82D6890;
  v12[4] = v5;
  v13 = v4;
  dispatch_sync(v6, v12);
  [(PKController *)*(a1 + 32) _didUpdateMutableRenderedStrokes];
  v3[2](v3);
  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, v7, v8, v9, v10);
  }
}

void __54__PKController_hideStrokesWithoutUpdating_completion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 72) setStrokes:*(a1 + 40) hidden:1];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained drawingChanged:*(*(a1 + 32) + 72)];

  v6 = [*(*(a1 + 32) + 72) strokes];
  v2 = [v6 mutableCopy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

- (void)updateDrawingWithErasedStrokes:(uint64_t)strokes
{
  v3 = a2;
  v4 = v3;
  if (strokes)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __47__PKController_updateDrawingWithErasedStrokes___block_invoke;
    v5[3] = &unk_1E82D66B0;
    v6 = v3;
    strokesCopy = strokes;
    [(PKController *)strokes performAsyncInteractBlock:v5];
  }
}

void __47__PKController_updateDrawingWithErasedStrokes___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v35 = a2;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = *(a1 + 32);
  v9 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v9)
  {
    v10 = *v46;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        v13 = [v12 _strokeUUID];
        [v7 addObject:v13];

        [v12 _bounds];
        v55.origin.x = v14;
        v55.origin.y = v15;
        v55.size.width = v16;
        v55.size.height = v17;
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v52.size.height = height;
        v53 = CGRectUnion(v52, v55);
        x = v53.origin.x;
        y = v53.origin.y;
        width = v53.size.width;
        height = v53.size.height;
      }

      v9 = [v8 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v9);
  }

  v18 = MEMORY[0x1E695DF70];
  v19 = [*(*(a1 + 40) + 72) strokes];
  v20 = [v18 arrayWithCapacity:{objc_msgSend(v19, "count")}];

  v44 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v21 = [*(*(a1 + 40) + 72) strokes];
  v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v22)
  {
    v23 = *v42;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v42 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v41 + 1) + 8 * j);
        v26 = [v25 _strokeUUID];
        v27 = [v7 containsObject:v26];

        if ((v27 & 1) == 0)
        {
          [v25 _bounds];
          v56.origin.x = v28;
          v56.origin.y = v29;
          v56.size.width = v30;
          v56.size.height = v31;
          v54.origin.x = x;
          v54.origin.y = y;
          v54.size.width = width;
          v54.size.height = height;
          if (CGRectIntersectsRect(v54, v56))
          {
            [v20 addObject:v25];
          }
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v22);
  }

  v32 = *(*(a1 + 40) + 64);
  if (v32)
  {
    v33 = v32[45];
    v38 = v32[44];
    v39 = v33;
    v40 = v32[46];
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __47__PKController_updateDrawingWithErasedStrokes___block_invoke_2;
  v36[3] = &unk_1E82D6818;
  v34 = v35;
  v37 = v34;
  [(PKMetalRendererController *)v32 drawStrokesAfterClear:v20 clippedToStrokeSpaceRect:&v38 strokeTransform:1 useLayerContext:v36 completion:x, y, width, height];
}

- (void)addLiveStrokeEarly:(void *)early completionBlock:
{
  v5 = a2;
  earlyCopy = early;
  if (self)
  {
    v7 = *(self + 96);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__PKController_addLiveStrokeEarly_completionBlock___block_invoke;
    block[3] = &unk_1E82D6840;
    block[4] = self;
    v9 = v5;
    v10 = earlyCopy;
    dispatch_async(v7, block);
  }
}

void __51__PKController_addLiveStrokeEarly_completionBlock___block_invoke(void *a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1[4] + 72);
  v5[0] = a1[5];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v4 = [v2 undoableAddNewStrokes:v3];

  if (v4)
  {
    [*(a1[4] + 40) addObject:v4];
  }

  (*(a1[6] + 16))();
}

- (void)cancelLiveStroke
{
  if (self)
  {
    v1 = *(self + 96);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __32__PKController_cancelLiveStroke__block_invoke;
    block[3] = &unk_1E82D6388;
    block[4] = self;
    dispatch_async(v1, block);
  }
}

void __32__PKController_cancelLiveStroke__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 40) count])
  {
    v3 = [*(*(a1 + 32) + 40) firstObject];
    [*(*(a1 + 32) + 40) removeObjectAtIndex:0];
    [v3 applyToDrawing:*(*(a1 + 32) + 72)];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
    [WeakRetained drawingChanged:*(*(a1 + 32) + 72)];
  }
}

- (void)addNewRenderedStrokes:(int)strokes wasAddedEarly:(int)early hidden:(void *)hidden preDrawingChangedBlock:
{
  v9 = a2;
  hiddenCopy = hidden;
  if (self)
  {
    if (*(self + 50))
    {
      [(PKController *)self _addNewStrokes:v9 wasAddedEarly:strokes hidden:early preDrawingChangedBlock:hiddenCopy];
    }

    else
    {
      if (*(self + 48))
      {
        v11 = *(self + 96);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __82__PKController_addNewRenderedStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke;
        block[3] = &unk_1E82D66D8;
        block[4] = self;
        v12 = &v20;
        v20 = v9;
        strokesCopy = strokes;
        earlyCopy = early;
        v13 = &v21;
        v21 = hiddenCopy;
        dispatch_sync(v11, block);
      }

      else
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __82__PKController_addNewRenderedStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_2;
        v14[3] = &unk_1E82D6778;
        v14[4] = self;
        v12 = &v15;
        v15 = v9;
        strokesCopy2 = strokes;
        earlyCopy2 = early;
        v13 = &v16;
        v16 = hiddenCopy;
        [(PKController *)self performAsyncInteractBlock:v14];
      }
    }
  }
}

- (void)_addNewStrokes:(int)strokes wasAddedEarly:(int)early hidden:(void *)hidden preDrawingChangedBlock:
{
  v48 = *MEMORY[0x1E69E9840];
  v32 = a2;
  hiddenCopy = hidden;
  if (self)
  {
    if (!strokes)
    {
      goto LABEL_7;
    }

    if ([v32 count] == 1)
    {
      v8 = *(self + 72);
      v9 = [v32 objectAtIndexedSubscript:0];
      [v8 updateStroke:v9 indexHint:{objc_msgSend(*(self + 72), "_rootStrokesCount") - 1}];
    }

    if ([*(self + 40) count])
    {
      firstObject = [*(self + 40) firstObject];
      [*(self + 40) removeObjectAtIndex:0];
    }

    else
    {
LABEL_7:
      firstObject = 0;
    }

    v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v32, "count")}];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v10 = v32;
    v11 = [v10 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v11)
    {
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v39 + 1) + 8 * i);
          _strokeUUID = [v14 _strokeUUID];
          v16 = _strokeUUID == 0;

          if (!v16)
          {
            v17 = [*(self + 72) visibleStrokeForInsertingStroke:v14];
            if (v17)
            {
              [v34 addObject:v17];
              v18 = os_log_create("com.apple.pencilkit", "");
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                selfCopy = self;
                v45 = 2112;
                v46 = v14;
                _os_log_debug_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEBUG, "Drawing %@ add stroke %@", buf, 0x16u);
              }

              v19 = [v14 ink];
              behavior = [v19 behavior];
              isEraser = [behavior isEraser];

              if (isEraser)
              {
                v22 = *(self + 104);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke;
                block[3] = &unk_1E82D6840;
                block[4] = self;
                v37 = v17;
                v38 = hiddenCopy;
                dispatch_async(v22, block);
              }
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v11);
    }

    if ([v34 count])
    {
      v23 = firstObject;
      if (!v23)
      {
        v23 = [*(self + 72) undoableAddNewStrokes:v34];
      }

      v24 = v23;
      if (early)
      {
        v25 = [*(self + 72) undoableDeleteStrokes:v34];
      }

      else
      {
        v25 = 0;
      }

      v26 = *(self + 72);
      v27 = *(self + 104);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_4;
      v35[3] = &unk_1E82D67C8;
      v35[4] = self;
      [v26 clipStrokesIfNeededOnQueue:v27 completion:v35];
      v28 = v34;
      if ([v28 count])
      {
        [*(self + 16) addObjectsFromArray:v28];
        [(PKController *)self _didUpdateMutableRenderedStrokes];
      }

      *(self + 50) = 1;
      (*(hiddenCopy + 2))(hiddenCopy, v24, v25, 0);
      *(self + 50) = 0;
    }

    WeakRetained = objc_loadWeakRetained((self + 56));
    [WeakRetained drawingChanged:*(self + 72)];
  }
}

void __82__PKController_addNewRenderedStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__PKController_addNewRenderedStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_3;
  block[3] = &unk_1E82D6750;
  block[4] = v5;
  v9 = v4;
  v12 = *(a1 + 56);
  v10 = *(a1 + 48);
  v11 = v3;
  v7 = v3;
  dispatch_sync(v6, block);
}

void __82__PKController_addNewRenderedStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 65);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__PKController_addNewRenderedStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_4;
  v6[3] = &unk_1E82D6728;
  v7 = *(a1 + 48);
  [(PKController *)v2 _addNewStrokes:v3 wasAddedEarly:v4 hidden:v5 preDrawingChangedBlock:v6];
  (*(*(a1 + 56) + 16))();
}

void __82__PKController_addNewRenderedStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_4(uint64_t a1, void *a2, void *a3, char a4)
{
  v7 = a2;
  v8 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PKController_addNewRenderedStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_5;
  v12[3] = &unk_1E82D6700;
  v9 = *(a1 + 32);
  v14 = v8;
  v15 = v9;
  v13 = v7;
  v16 = a4;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

void __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_16;
  block[3] = &unk_1E82D6868;
  block[4] = v2;
  block[5] = &v18;
  dispatch_sync(v3, block);
  v4 = [v19[5] sliceWithEraseStroke:*(a1 + 40)];
  v5 = _PencilKitBundle();
  v6 = [v5 localizedStringForKey:@"Pixel Erase" value:@"Pixel Erase" table:@"Localizable"];
  [v4 setActionName:v6];

  v7 = v19[5];
  v24[0] = *(a1 + 40);
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  [v7 deleteStrokes:v8];

  v9 = *(a1 + 32);
  v10 = *(v9 + 88);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_2;
  v13[3] = &unk_1E82D67A0;
  v13[4] = v9;
  v16 = &v18;
  v11 = *(a1 + 48);
  v14 = v4;
  v15 = v11;
  v12 = v4;
  dispatch_sync(v10, v13);

  _Block_object_dispose(&v18, 8);
}

void __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_16(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_3;
  block[3] = &unk_1E82D67A0;
  block[4] = v2;
  v5 = *(a1 + 48);
  v4 = v5;
  v8 = v5;
  v7 = *(a1 + 40);
  dispatch_sync(v3, block);
}

void __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_3(void *a1)
{
  [*(a1[4] + 72) mergeWithDrawing:*(*(a1[7] + 8) + 40)];
  v2 = a1[4];
  if (v2)
  {
    *(v2 + 50) = 1;
  }

  (*(a1[6] + 16))();
  v3 = a1[4];
  if (v3)
  {
    *(v3 + 50) = 0;
    v3 = a1[4];
  }

  WeakRetained = objc_loadWeakRetained((v3 + 56));
  [WeakRetained drawingChanged:*(a1[4] + 72)];
}

void __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 88);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_5;
  v7[3] = &unk_1E82D6890;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_sync(v5, v7);
}

void __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 96);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_6;
  v4[3] = &unk_1E82D6890;
  v4[4] = v2;
  v5 = v1;
  dispatch_sync(v3, v4);
}

void __75__PKController__addNewStrokes_wasAddedEarly_hidden_preDrawingChangedBlock___block_invoke_6(uint64_t a1)
{
  [*(*(a1 + 32) + 72) mergeWithDrawing:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained drawingChanged:*(*(a1 + 32) + 72)];
}

@end