@interface PKStrokeSpatialCache
- (PKStrokeSpatialCache)init;
- (void)_cancelGenerateVisibleStrokesBlockIfNecessary;
- (void)_generateStrokesOnCanvasForVisibleFrame:(double)frame inDrawing:(double)drawing;
- (void)_invalidateCacheForBounds:(int)bounds inDrawing:(CGFloat)drawing force:(CGFloat)force;
- (void)dealloc;
@end

@implementation PKStrokeSpatialCache

- (PKStrokeSpatialCache)init
{
  v8.receiver = self;
  v8.super_class = PKStrokeSpatialCache;
  v2 = [(PKStrokeSpatialCache *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("com.apple.pencilkit.onscreen-visible-strokes", v4);
    onscreenVisibleStrokesQueue = v2->_onscreenVisibleStrokesQueue;
    v2->_onscreenVisibleStrokesQueue = v5;
  }

  return v2;
}

- (void)dealloc
{
  if (self)
  {
    generateOnscreenVisibleStrokesBlock = self->_generateOnscreenVisibleStrokesBlock;
    if (generateOnscreenVisibleStrokesBlock)
    {
      dispatch_block_cancel(generateOnscreenVisibleStrokesBlock);
      objc_setProperty_nonatomic_copy(self, v4, 0, 32);
    }
  }

  v5.receiver = self;
  v5.super_class = PKStrokeSpatialCache;
  [(PKStrokeSpatialCache *)&v5 dealloc];
}

- (void)_invalidateCacheForBounds:(int)bounds inDrawing:(CGFloat)drawing force:(CGFloat)force
{
  v16 = a2;
  if (self)
  {
    v18.origin.x = drawing;
    v18.origin.y = force;
    v18.size.width = a6;
    v18.size.height = a7;
    v13 = !CGRectIsNull(v18);
    v19.origin.x = drawing;
    v19.origin.y = force;
    v19.size.width = a6;
    v19.size.height = a7;
    if (CGRectEqualToRect(v19, *(self + 64)))
    {
      v14 = [v16 isEqual:*(self + 56)] ^ 1;
    }

    else
    {
      v14 = 1;
    }

    v20.origin.x = drawing;
    v20.origin.y = force;
    v20.size.width = a6;
    v20.size.height = a7;
    if (CGRectIsNull(v20))
    {
      [(PKStrokeSpatialCache *)self _cancelGenerateVisibleStrokesBlockIfNecessary];
      *(self + 8) = 1;
      v15 = *(self + 24);
      *(self + 24) = MEMORY[0x1E695E0F0];
    }

    else if ((v13 & (v14 | bounds)) == 1)
    {
      [(PKStrokeSpatialCache *)self _generateStrokesOnCanvasForVisibleFrame:v16 inDrawing:drawing, force, a6, a7];
    }
  }
}

- (void)_cancelGenerateVisibleStrokesBlockIfNecessary
{
  if (self)
  {
    v2 = self[4];
    if (v2)
    {
      ++self[6];
      dispatch_block_cancel(v2);

      objc_setProperty_nonatomic_copy(self, v3, 0, 32);
    }
  }
}

- (void)_generateStrokesOnCanvasForVisibleFrame:(double)frame inDrawing:(double)drawing
{
  v12 = a2;
  if (self)
  {
    [(PKStrokeSpatialCache *)self _cancelGenerateVisibleStrokesBlockIfNecessary];
    strokes = [v12 strokes];
    objc_storeStrong((self + 56), a2);
    *(self + 64) = frame;
    *(self + 72) = drawing;
    *(self + 80) = a5;
    *(self + 88) = a6;
    v14 = [v12 copy];
    objc_initWeak(&location, self);
    v15 = (*(self + 48) + 1);
    *(self + 48) = v15;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PKStrokeSpatialCache__generateStrokesOnCanvasForVisibleFrame_inDrawing___block_invoke;
    block[3] = &unk_1E82DA420;
    block[4] = self;
    v21[1] = *&frame;
    v21[2] = *&drawing;
    v21[3] = *&a5;
    v21[4] = *&a6;
    v16 = v14;
    v20 = v16;
    objc_copyWeak(v21, &location);
    v21[5] = v15;
    v17 = dispatch_block_create(0, block);
    objc_setProperty_nonatomic_copy(self, v18, v17, 32);

    *(self + 8) = 0;
    dispatch_async(*(self + 40), *(self + 32));
    objc_destroyWeak(v21);

    objc_destroyWeak(&location);
  }
}

void __74__PKStrokeSpatialCache__generateStrokesOnCanvasForVisibleFrame_inDrawing___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v26 = __74__PKStrokeSpatialCache__generateStrokesOnCanvasForVisibleFrame_inDrawing___block_invoke_2;
  v27 = &unk_1E82DA3F8;
  objc_copyWeak(v29, (a1 + 48));
  v29[1] = *(a1 + 88);
  v28 = *v3;
  v5 = *(v3 + 16);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = v2;
  v10 = v25;
  if (v4)
  {
    v11 = [MEMORY[0x1E695DF70] array];
    [v9 _eraserStrokeBounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = [v9 strokes];
    v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v21)
    {
      v22 = *v31;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v30 + 1) + 8 * i);
          [v24 _bounds];
          v38.origin.x = v5;
          v38.origin.y = v6;
          v38.size.width = v7;
          v38.size.height = v8;
          if (CGRectIntersectsRect(v36, v38))
          {
            [v24 _bounds];
            v39.origin.x = v13;
            v39.origin.y = v15;
            v39.size.width = v17;
            v39.size.height = v19;
            if (!CGRectIntersectsRect(v37, v39))
            {
              [v11 addObject:v24];
            }
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v21);
    }

    v26(v10, v11);
  }

  objc_destroyWeak(v29);
}

void __74__PKStrokeSpatialCache__generateStrokesOnCanvasForVisibleFrame_inDrawing___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__PKStrokeSpatialCache__generateStrokesOnCanvasForVisibleFrame_inDrawing___block_invoke_3;
  v5[3] = &unk_1E82DA3D0;
  objc_copyWeak(v8, a1 + 5);
  v8[1] = a1[6];
  v6 = v3;
  v7 = a1[4];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(v8);
}

void __74__PKStrokeSpatialCache__generateStrokesOnCanvasForVisibleFrame_inDrawing___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained && *(a1 + 56) == WeakRetained[6])
  {
    v4 = os_log_create("com.apple.pencilkit", "Selection");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 32) count];
      v10 = [*(a1 + 40) strokes];
      v11 = 134218240;
      v12 = v9;
      v13 = 2048;
      v14 = [v10 count];
      _os_log_debug_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_DEBUG, "Found %lu visible onscreen strokes with a drawing of %lu visible strokes", &v11, 0x16u);
    }

    *(v3 + 8) = 1;
    objc_storeStrong(v3 + 3, *(a1 + 32));
    v5 = objc_loadWeakRetained(v3 + 2);

    if (v5)
    {
      v7 = objc_loadWeakRetained(v3 + 2);
      [v7 didFinishCalculatingVisibleOnscreenStrokes:*(a1 + 32) drawing:*(a1 + 40)];
    }

    objc_setProperty_nonatomic_copy(v3, v6, 0, 32);
  }

  else
  {
    v8 = os_log_create("com.apple.pencilkit", "Selection");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11) = 0;
      _os_log_debug_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEBUG, "Did not used cached strokes since another block started running while another one was being processed", &v11, 2u);
    }
  }
}

@end