@interface PKOverlayDrawingController
- (BOOL)hasVisibleTokensForItem:(uint64_t)a1;
- (PKOverlayDrawingView)viewForUUID:(double)a3 estimatedFrameForNewView:(double)a4;
- (double)timestampForVisibleTokensForItem:(uint64_t)a1;
- (id)allViews;
- (id)drawingForAllResultsForSourceDrawing:(id *)a1;
- (id)drawingViewAtLocation:(double)a3;
- (id)existingViewForUUID:(id *)a1;
- (id)initForView:(void *)a3 delegate:;
- (id)tokenAtLocation:(CGFloat)a3;
- (uint64_t)removeAllTokens;
- (uint64_t)removedFromView;
- (void)_removeActiveTokensForItem:(uint64_t)a1;
- (void)_removeOldTokenViewsExcludeItems:(uint64_t)a1;
- (void)_updateDrawingViews;
- (void)didBeginDrawing;
- (void)hideImageForUUID:(uint64_t)a1;
- (void)removeToken:(uint64_t)a1;
- (void)removeTokensFor:(uint64_t)a1;
- (void)removeViewForUUID:(int)a3 animated:;
- (void)setTokens:(void *)a3 item:;
- (void)showDetectionAnimationWithImage:(double)a3 frame:(double)a4;
- (void)updateDrawingView:(void *)a3 strokes:(void *)a4 animationType:(void *)a5 result:(void *)a6 imageView:;
- (void)updateImageView:(void *)a3 overlayView:(uint64_t)a4 animationType:;
- (void)viewDidLayout;
@end

@implementation PKOverlayDrawingController

- (id)initForView:(void *)a3 delegate:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = PKOverlayDrawingController;
    v7 = objc_msgSendSuper2(&v22, sel_init);
    a1 = v7;
    if (v7)
    {
      objc_storeWeak(v7 + 11, v5);
      objc_storeWeak(a1 + 1, v6);
      v8 = objc_opt_new();
      v9 = a1[8];
      a1[8] = v8;

      v10 = objc_opt_new();
      v11 = a1[9];
      a1[9] = v10;

      v12 = objc_opt_new();
      v13 = a1[10];
      a1[10] = v12;

      [v5 frame];
      a1[2] = v14;
      a1[3] = v15;
      a1[4] = v16;
      a1[5] = v17;
      [v5 frame];
      a1[6] = v18;
      v19 = [MEMORY[0x1E695DF90] dictionary];
      v20 = a1[7];
      a1[7] = v19;
    }
  }

  return a1;
}

- (void)viewDidLayout
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    [WeakRetained frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    *(a1 + 16) = v4;
    *(a1 + 24) = v6;
    *(a1 + 32) = v8;
    *(a1 + 40) = v10;
    if (vabdd_f64(v8, *(a1 + 48)) >= 0.00999999978)
    {
      *(a1 + 48) = v8;
      [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:a1 selector:sel__updateDrawingViews object:0];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v11 = [*(a1 + 64) allValues];
      v12 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v37;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v37 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [(PKOverlayDrawingView *)*(*(&v36 + 1) + 8 * i) imageView];
            [v16 setHidden:1];
          }

          v13 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v13);
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v17 = [*(a1 + 56) allValues];
      v18 = [v17 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v33;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v33 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v32 + 1) + 8 * j);
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v23 = v22;
            v24 = [v23 countByEnumeratingWithState:&v28 objects:v40 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v29;
              do
              {
                for (k = 0; k != v25; ++k)
                {
                  if (*v29 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  [*(*(&v28 + 1) + 8 * k) setHidden:1];
                }

                v25 = [v23 countByEnumeratingWithState:&v28 objects:v40 count:16];
              }

              while (v25);
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v19);
      }

      [a1 performSelector:sel__updateDrawingViews withObject:0 afterDelay:0.1];
    }
  }
}

- (uint64_t)removedFromView
{
  v33 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v2 = [*(result + 56) allValues];
    v3 = [v2 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v27;
      do
      {
        v6 = 0;
        do
        {
          if (*v27 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v26 + 1) + 8 * v6);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v23;
            do
            {
              v12 = 0;
              do
              {
                if (*v23 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                [*(*(&v22 + 1) + 8 * v12++) removeFromSuperview];
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v22 objects:v31 count:16];
            }

            while (v10);
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = [v2 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v4);
    }

    [v1[7] removeAllObjects];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = [v1[8] allValues];
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v18 + 1) + 8 * v17++) removeFromSuperview];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v18 objects:v30 count:16];
      }

      while (v15);
    }

    [v1[8] removeAllObjects];
    [v1[9] removeAllObjects];
    return [v1[10] removeAllObjects];
  }

  return result;
}

- (void)_updateDrawingViews
{
  v2 = self;
  v46 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  if (self)
  {
    self = self->_drawingViews;
  }

  obj = [(PKOverlayDrawingController *)self allValues];
  v3 = [obj countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * v6);
        if (v7)
        {
          v8 = v7[52];
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v2)
          {
            drawingViewStrokesMap = v2->_drawingViewStrokesMap;
          }

          else
          {
            drawingViewStrokesMap = 0;
          }

          v11 = [(NSMutableDictionary *)drawingViewStrokesMap objectForKeyedSubscript:v9];
          if (v2)
          {
            drawingViewResultMap = v2->_drawingViewResultMap;
          }

          else
          {
            drawingViewResultMap = 0;
          }

          v13 = [(NSMutableDictionary *)drawingViewResultMap objectForKeyedSubscript:v9];
          [(PKOverlayDrawingController *)&v2->super.isa updateDrawingView:v7 strokes:v11 animationType:2 result:v13 imageView:0];
        }

        ++v6;
      }

      while (v4 != v6);
      v14 = [obj countByEnumeratingWithState:&v30 objects:v43 count:16];
      v4 = v14;
    }

    while (v14);
  }

  if (v2)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obja = [(NSMutableDictionary *)v2->_activeTokens allValues];
    v15 = [obja countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(obja);
          }

          v19 = *(*(&v39 + 1) + 8 * i);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v20 = v19;
          v21 = [v20 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v36;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v36 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v35 + 1) + 8 * j);
                WeakRetained = objc_loadWeakRetained(&v2->_delegate);
                v27 = WeakRetained;
                if (WeakRetained)
                {
                  [WeakRetained overlayControllerDrawingTransform:v2];
                }

                else
                {
                  memset(v34, 0, sizeof(v34));
                }

                [(PKMathRecognitionTokenView *)v25 updateFrameForDrawingTransform:v34];

                [v25 setHidden:0];
              }

              v22 = [v20 countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v22);
          }
        }

        v16 = [obja countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v16);
    }
  }
}

- (void)updateDrawingView:(void *)a3 strokes:(void *)a4 animationType:(void *)a5 result:(void *)a6 imageView:
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v15 = [v12 copy];
    v16 = a1[9];
    if (v11)
    {
      v17 = v11[52];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    [v16 setObject:v15 forKeyedSubscript:v18];

    v19 = [v13 copy];
    v20 = a1[10];
    if (v11)
    {
      v21 = v11[52];
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    [v20 setObject:v19 forKeyedSubscript:v22];

    if ([v12 count])
    {
      if (v14)
      {
        [v14 setAccessibilityValue:v13];
        [(PKOverlayDrawingController *)a1 updateImageView:v14 overlayView:v11 animationType:a4];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(a1 + 1);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __87__PKOverlayDrawingController_updateDrawingView_strokes_animationType_result_imageView___block_invoke;
        v26[3] = &unk_1E82DBA48;
        objc_copyWeak(v29, &location);
        v27 = v13;
        v28 = v11;
        v29[1] = a4;
        [WeakRetained overlayController:a1 imageViewForStrokes:v12 completion:v26];

        objc_destroyWeak(v29);
      }
    }

    else
    {
      v24 = 0.2;
      if (!a4)
      {
        v24 = 0.0;
      }

      [(PKOverlayDrawingView *)v11 hideImageViewWithDuration:v23, v24];
    }

    objc_destroyWeak(&location);
  }
}

- (void)hideImageForUUID:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 72);
    v4 = a2;
    [v3 setObject:0 forKeyedSubscript:v4];
    v7 = [*(a1 + 64) objectForKeyedSubscript:v4];

    v6 = v7;
    if (v7)
    {
      [(PKOverlayDrawingView *)v7 hideImageViewWithDuration:v5, 0.0];
      v6 = v7;
    }
  }
}

- (void)updateImageView:(void *)a3 overlayView:(uint64_t)a4 animationType:
{
  v21 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = 0.3;
    if (a4 == 2)
    {
      v8 = 0.5;
    }

    if (a4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0.0;
    }

    [v21 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    [WeakRetained addSubview:v7];

    [v21 setUserInteractionEnabled:0];
    [v21 setAlpha:0.0];
    [v21 setAccessibilityIdentifier:@"com.apple.pencilkit.synthesizedMathView"];
    [v21 setFrame:{0.0, 0.0, v15, v17}];
    [v7 setHidden:0];
    [v21 setHidden:0];
    [v7 addSubview:v21];
    v19 = [(PKOverlayDrawingView *)v7 imageView];

    if (!v19)
    {
      [v7 setFrame:{v11, v13, v15, v17}];
    }

    v20 = objc_loadWeakRetained((a1 + 8));
    [v20 overlayController:a1 willUpdateView:v7 animationDuration:v9];

    [(PKOverlayDrawingView *)v7 showImageView:v21 frame:a4 animationType:v11 animationDuration:v13, v15, v17, v9];
  }
}

void __87__PKOverlayDrawingController_updateDrawingView_strokes_animationType_result_imageView___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [v4 setAccessibilityValue:*(a1 + 32)];
    [(PKOverlayDrawingController *)WeakRetained updateImageView:v4 overlayView:*(a1 + 40) animationType:*(a1 + 56)];
  }
}

- (PKOverlayDrawingView)viewForUUID:(double)a3 estimatedFrameForNewView:(double)a4
{
  if (a1)
  {
    v11 = *(a1 + 64);
    v12 = a2;
    v13 = [v11 objectForKeyedSubscript:v12];
    if (v13)
    {
      v14 = v13;
      WeakRetained = objc_loadWeakRetained((a1 + 88));
      [WeakRetained addSubview:v14];
    }

    else
    {
      v14 = [[PKOverlayDrawingView alloc] initWithFrame:a3, a4, a5, a6];
      v17 = objc_loadWeakRetained((a1 + 88));
      [v17 addSubview:v14];

      [*(a1 + 64) setObject:v14 forKeyedSubscript:v12];
      if (!v14)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    objc_setProperty_nonatomic_copy(v14, v16, v12, 416);
    goto LABEL_6;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)_removeActiveTokensForItem:(uint64_t)a1
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [*(a1 + 56) objectForKeyedSubscript:{v3, 0}];
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) removeFromSuperview];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [*(a1 + 56) removeObjectForKey:v3];
  }
}

- (id)existingViewForUUID:(id *)a1
{
  if (a1)
  {
    a1 = [a1[8] objectForKeyedSubscript:a2];
    v2 = vars8;
  }

  return a1;
}

- (void)removeViewForUUID:(int)a3 animated:
{
  v5 = a2;
  if (a1)
  {
    v6 = a1[8];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (v7)
    {
      if (a3)
      {
        v8 = 0.3;
      }

      else
      {
        v8 = 0.0;
      }

      WeakRetained = objc_loadWeakRetained(a1 + 1);
      [WeakRetained overlayController:a1 willUpdateView:v7 animationDuration:v8];

      [a1[8] removeObjectForKey:v5];
      v10 = MEMORY[0x1E69DD250];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __57__PKOverlayDrawingController_removeViewForUUID_animated___block_invoke;
      v16[3] = &unk_1E82D7148;
      v17 = v7;
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __57__PKOverlayDrawingController_removeViewForUUID_animated___block_invoke_2;
      v14 = &unk_1E82D8F30;
      v15 = v17;
      [v10 animateWithDuration:v16 animations:&v11 completion:v8];
    }

    [a1[9] setObject:0 forKeyedSubscript:{v5, v11, v12, v13, v14}];
    [(PKOverlayDrawingController *)a1 _removeActiveTokensForItem:v5];
  }
}

- (void)showDetectionAnimationWithImage:(double)a3 frame:(double)a4
{
  v36[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = MEMORY[0x1E69DCAE0];
    v12 = a2;
    v13 = [[v11 alloc] initWithFrame:{a3, a4, a5, a6}];
    [v13 setImage:v12];

    WeakRetained = objc_loadWeakRetained((a1 + 88));
    [WeakRetained addSubview:v13];

    v15 = objc_alloc_init(MEMORY[0x1E6979380]);
    [v15 setStartPoint:{-2.0, -2.0}];
    [v15 setEndPoint:{0.0, 0.0}];
    v16 = [MEMORY[0x1E69DC888] whiteColor];
    v17 = [v16 colorWithAlphaComponent:0.0];

    v18 = [MEMORY[0x1E69DC888] whiteColor];
    v19 = [v18 colorWithAlphaComponent:1.0];

    [v15 setLocations:&unk_1F47C1E20];
    v36[0] = [v17 CGColor];
    v36[1] = [v19 CGColor];
    v36[2] = [v19 CGColor];
    v36[3] = [v17 CGColor];
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:4];
    [v15 setColors:v20];

    [v13 bounds];
    [v15 setFrame:?];
    v21 = [v13 layer];
    [v21 setMask:v15];

    v22 = [v13 layer];
    [v22 setMasksToBounds:1];

    v23 = [MEMORY[0x1E6979318] animationWithKeyPath:@"startPoint"];
    v24 = [MEMORY[0x1E696B098] valueWithCGPoint:{-2.0, -2.0}];
    [v23 setFromValue:v24];

    v25 = [MEMORY[0x1E696B098] valueWithCGPoint:{1.0, 1.0}];
    [v23 setToValue:v25];

    v26 = [MEMORY[0x1E6979318] animationWithKeyPath:@"endPoint"];
    v27 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, 0.0}];
    [v26 setFromValue:v27];

    v28 = [MEMORY[0x1E696B098] valueWithCGPoint:{3.0, 3.0}];
    [v26 setToValue:v28];

    [v23 setDuration:0.5];
    [v26 setDuration:0.5];
    [v23 setRemovedOnCompletion:1];
    [v26 setRemovedOnCompletion:1];
    v29 = [v23 keyPath];
    [v15 addAnimation:v23 forKey:v29];

    v30 = [v26 keyPath];
    [v15 addAnimation:v26 forKey:v30];

    v31 = objc_loadWeakRetained((a1 + 8));
    [v31 overlayController:a1 willUpdateView:0 animationDuration:0.5];

    v32 = dispatch_time(0, 500000000);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __68__PKOverlayDrawingController_showDetectionAnimationWithImage_frame___block_invoke;
    v34[3] = &unk_1E82D7148;
    v35 = v13;
    v33 = v13;
    dispatch_after(v32, MEMORY[0x1E69E96A0], v34);
  }
}

- (void)setTokens:(void *)a3 item:
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 uuid];
    [(PKOverlayDrawingController *)a1 _removeActiveTokensForItem:v8];

    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [PKMathRecognitionTokenView viewForToken:v7 item:?];
          if (v15)
          {
            [v9 addObject:v15];
            WeakRetained = objc_loadWeakRetained((a1 + 88));
            [WeakRetained addSubview:v15];

            v17 = objc_loadWeakRetained((a1 + 8));
            v18 = v17;
            if (v17)
            {
              [v17 overlayControllerDrawingTransform:a1];
            }

            else
            {
              memset(v23, 0, sizeof(v23));
            }

            [(PKMathRecognitionTokenView *)v15 updateFrameForDrawingTransform:v23];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      v19 = [v9 copy];
      v20 = *(a1 + 56);
      v21 = [v7 uuid];
      [v20 setObject:v19 forKeyedSubscript:v21];
    }

    v5 = v22;
  }
}

- (BOOL)hasVisibleTokensForItem:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v2 = [*(a1 + 56) objectForKeyedSubscript:a2];
  v3 = [v2 count] != 0;

  return v3;
}

- (double)timestampForVisibleTokensForItem:(uint64_t)a1
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0.0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 56) objectForKeyedSubscript:{a2, 0}];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = 0.0;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        if (v8)
        {
          v9 = *(v8 + 432);
        }

        else
        {
          v9 = 0.0;
        }

        if (v6 < v9)
        {
          v6 = v9;
        }

        ++v7;
      }

      while (v4 != v7);
      v10 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v4 = v10;
    }

    while (v10);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (void)removeTokensFor:(uint64_t)a1
{
  if (a1)
  {
    v3 = [a2 uuid];
    [(PKOverlayDrawingController *)a1 _removeActiveTokensForItem:v3];
  }
}

- (void)removeToken:(uint64_t)a1
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 item];
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 56);
      v8 = [v5 uuid];
      v9 = [v7 objectForKeyedSubscript:v8];
      v10 = [v9 mutableCopy];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v24;
        do
        {
          v15 = 0;
          do
          {
            if (*v24 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v23 + 1) + 8 * v15);
            if (v16)
            {
              v17 = v16[52];
            }

            else
            {
              v17 = 0;
            }

            v18 = v17;

            if (v18 == v4)
            {
              [v16 removeFromSuperview];
              [v11 removeObject:v16];
              v20 = [v11 copy];
              v21 = *(a1 + 56);
              v22 = [v6 uuid];
              [v21 setObject:v20 forKeyedSubscript:v22];

              goto LABEL_17;
            }

            ++v15;
          }

          while (v13 != v15);
          v19 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
          v13 = v19;
        }

        while (v19);
      }

LABEL_17:
    }
  }
}

- (uint64_t)removeAllTokens
{
  v23 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v2 = [*(result + 56) allValues];
    v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v18;
      do
      {
        v6 = 0;
        do
        {
          if (*v18 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v17 + 1) + 8 * v6);
          v13 = 0u;
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v14;
            do
            {
              v12 = 0;
              do
              {
                if (*v14 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                [*(*(&v13 + 1) + 8 * v12++) removeFromSuperview];
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
            }

            while (v10);
          }

          ++v6;
        }

        while (v6 != v4);
        v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v4);
    }

    return [*(v1 + 56) removeAllObjects];
  }

  return result;
}

- (id)tokenAtLocation:(CGFloat)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [*(a1 + 56) allValues];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v21;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v21 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v20 + 1) + 8 * j);
                [v16 frame];
                v32.x = a2;
                v32.y = a3;
                if (CGRectContainsPoint(v33, v32))
                {
                  if (v16)
                  {
                    v18 = v16[52];
                  }

                  else
                  {
                    v18 = 0;
                  }

                  v17 = v18;

                  goto LABEL_22;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
        v17 = 0;
      }

      while (v7);
    }

    else
    {
      v17 = 0;
    }

LABEL_22:
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)allViews
{
  v1 = a1;
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1[8], "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [v1[8] allValues];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          v9 = [v8 superview];
          if (v9)
          {
            v10 = v9;
            [v8 frame];
            IsNull = CGRectIsNull(v20);

            if (!IsNull)
            {
              [v2 addObject:v8];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    v1 = [v2 copy];
  }

  return v1;
}

- (id)drawingViewAtLocation:(double)a3
{
  v3 = a1;
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [(PKOverlayDrawingController *)a1 allViews];
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [(PKOverlayDrawingView *)v11 imageView];

          if (v12)
          {
            WeakRetained = objc_loadWeakRetained(v3 + 11);
            v14 = [(PKOverlayDrawingView *)v11 imageView];
            [WeakRetained convertPoint:v14 toView:{a2, a3, v21}];
            v16 = v15;
            v18 = v17;

            v19 = [(PKOverlayDrawingView *)v11 imageView];
            [v19 bounds];
            v28.x = v16;
            v28.y = v18;
            LOBYTE(v14) = CGRectContainsPoint(v29, v28);

            if (v14)
            {
              v3 = v11;
              goto LABEL_13;
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v3 = 0;
LABEL_13:
  }

  return v3;
}

- (id)drawingForAllResultsForSourceDrawing:(id *)a1
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [a1[9] allValues];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [v4 addObjectsFromArray:*(*(&v11 + 1) + 8 * i)];
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      a1 = [objc_alloc(objc_opt_class()) initWithStrokes:v4 fromDrawing:v3];
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)_removeOldTokenViewsExcludeItems:(uint64_t)a1
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = CACurrentMediaTime();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [*(a1 + 56) allKeys];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          v11 = [(PKOverlayDrawingController *)a1 timestampForVisibleTokensForItem:v10];
          v12 = v11 <= 0.0 || v4 - v11 <= 5.0;
          if (!v12 && ([v3 containsObject:v10] & 1) == 0)
          {
            [(PKOverlayDrawingController *)a1 _removeActiveTokensForItem:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)didBeginDrawing
{
  if (a1)
  {
    v2 = [MEMORY[0x1E695DFD8] set];
    [(PKOverlayDrawingController *)a1 _removeOldTokenViewsExcludeItems:v2];
  }
}

@end