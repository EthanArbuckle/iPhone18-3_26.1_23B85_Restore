@interface PKTextInputCanvasController
+ (id)defaultInkWithColor:(uint64_t)a1;
+ (void)prewarmFutureCanvasesIfNecessarySecureRendering:(uint64_t)a1;
- (PKTextInputCanvasController)init;
- (double)convertRect:(double)a3 toCanvasFromCoordinateSpace:(double)a4;
- (double)renderedStrokesBounds;
- (id).cxx_construct;
- (id)_containerView;
- (id)canvasCoordinateSpace;
- (id)canvasView:(id)a3 inkForStroke:(id)a4;
- (id)canvasViewTouchView:(id)a3;
- (id)defaultStrokeColor;
- (id)inProgressStroke;
- (uint64_t)canvasHasVisibleStrokes;
- (void)_clearRecordedColorForStroke:(uint64_t)a1;
- (void)_recordColorForStroke:(uint64_t)a1;
- (void)_trackRecentlyRemovedStrokes:(uint64_t)a1;
- (void)_updateCanvasView;
- (void)_updateCanvasViewInkAnimated:(uint64_t)a1;
- (void)_updateCanvasViewOffsetFromTouch:(uint64_t)a1;
- (void)_updateFloatingBackground;
- (void)animateAndRemoveStrokes:(uint64_t)a3 destinationFrame:(CGFloat)a4 animationDuration:(CGFloat)a5 useImpreciseAnimation:(CGFloat)a6;
- (void)canvasView:(id)a3 beganStroke:(id)a4;
- (void)canvasView:(id)a3 cancelledStroke:(id)a4;
- (void)canvasView:(id)a3 didPresentWithCanvasOffset:(CGPoint)a4;
- (void)canvasView:(id)a3 drawingDidChange:(id)a4;
- (void)canvasView:(id)a3 endedStroke:(id)a4;
- (void)canvasViewDidBeginDrawing:(id)a3;
- (void)canvasViewDidEndDrawing:(id)a3;
- (void)canvasViewDidFinishAnimatingStrokes:(id)a3;
- (void)canvasViewDrawingMoved:(id)a3 withTouch:(id)a4;
- (void)canvasViewHasVisibleStrokesChanged:(id)a3;
- (void)canvasViewWillBeginNewStroke:(id)a3 withTouch:(id)a4 location:(CGPoint)a5;
- (void)dealloc;
- (void)reloadPreferredStrokeColor;
- (void)removeStrokes:(double)a3 animationDuration:;
- (void)reportDebugStateDescription:(id)a3;
- (void)setDelegate:(uint64_t)a1;
- (void)setFloatingBackgroundRect:(double)a3;
@end

@implementation PKTextInputCanvasController

- (PKTextInputCanvasController)init
{
  v9.receiver = self;
  v9.super_class = PKTextInputCanvasController;
  v2 = [(PKTextInputCanvasController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    recentlyRemovedStrokeIDs = v2->_recentlyRemovedStrokeIDs;
    v2->_recentlyRemovedStrokeIDs = v3;

    v5 = +[PKTextInputSettings sharedSettings];
    v2->_useSlidingCanvas = [v5 useSlidingCanvas];

    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    strokeColorForStrokeUUID = v2->_strokeColorForStrokeUUID;
    v2->_strokeColorForStrokeUUID = v6;
  }

  return v2;
}

- (void)dealloc
{
  v2 = self;
  if (self)
  {
    self = self->__canvasView;
  }

  v3 = [(PKTextInputCanvasController *)self drawingGestureRecognizer];
  [v3 setDrawingTarget:0];

  v4.receiver = v2;
  v4.super_class = PKTextInputCanvasController;
  [(PKTextInputCanvasController *)&v4 dealloc];
}

+ (void)prewarmFutureCanvasesIfNecessarySecureRendering:(uint64_t)a1
{
  v3 = objc_opt_self();
  [PKTiledCanvasView prewarmFutureCanvasesIfNecessarySecureRendering:a2 prewarmSharedResourceHandler:0];
  v5 = [MEMORY[0x1E69DC888] blackColor];
  v4 = [(PKTextInputCanvasController *)v3 defaultInkWithColor:v5];
}

+ (id)defaultInkWithColor:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v3 = +[PKTextInputSettings sharedSettings];
    [v3 inkWeightForIncreasedContrast];
  }

  else
  {
    v3 = +[PKTextInputSettings sharedSettings];
    [v3 inkWeight];
  }

  v5 = v4;

  v6 = [PKInk inkWithIdentifier:@"com.apple.ink.pen" color:v2 weight:v5];

  return v6;
}

- (void)_updateCanvasViewInkAnimated:(uint64_t)a1
{
  if (*(a1 + 96))
  {
    v4 = *(a1 + 88);
    if (!v4)
    {
      v4 = [MEMORY[0x1E69DC888] whiteColor];
    }

    v8 = v4;
    v5 = [PKTextInputCanvasController defaultInkWithColor:v4];
    [*(a1 + 96) setInk:v5];

    v6 = *(a1 + 88);
    v7 = *(a1 + 56);
    if (v7)
    {
      [(PKTextInputCanvasController *)a1 _recordColorForStroke:v7];
    }

    [*(a1 + 96) setLiveRenderingOverrideColor:v6 animated:a2];
  }
}

- (id)defaultStrokeColor
{
  if (a1)
  {
    a1 = [MEMORY[0x1E69DC888] whiteColor];
    v1 = vars8;
  }

  return a1;
}

- (id)_containerView
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 9);
    v1 = [WeakRetained canvasControllerContainerView:v1];
  }

  return v1;
}

- (void)_updateCanvasView
{
  v59[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 64) & 1) != 0 || (*(a1 + 65))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v3 = WeakRetained != 0;

      v5 = (a1 + 96);
      v4 = *(a1 + 96);
      v6 = v4 == 0;
      if (WeakRetained && !v4)
      {
        v7 = +[PKTextInputSettings sharedSettings];
        *(a1 + 16) = [v7 useSlidingCanvas];

        v8 = +[PKTextInputSettings sharedSettings];
        [v8 slidingCanvasWidth];
        v10 = v9;

        v11 = +[PKTextInputSettings sharedSettings];
        [v11 slidingCanvasHeight];
        v13 = v12;

        v14 = +[PKTextInputSettings sharedSettings];
        v15 = [v14 useSingleComponentCanvas];

        v16 = [PKTiledCanvasView alloc];
        v17 = [(PKTiledCanvasView *)v16 initWithFrame:1 usePrivateResourceHandler:v15 singleComponent:0 sixChannelBlending:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        [(PKTiledCanvasView *)v17 setResourceCacheSize:0x800000];
        [(PKTiledCanvasView *)v17 setDisableAXDrawingAnnouncements:1];
        [(PKTiledCanvasView *)v17 setOverrideUserInterfaceStyle:1];
        [(PKTiledCanvasView *)v17 setAccessibilityIgnoresInvertColors:1];
        if (PK_UIApplicationIsSystemShell_onceToken != -1)
        {
          dispatch_once(&PK_UIApplicationIsSystemShell_onceToken, &__block_literal_global_71);
        }

        v18 = v10;
        v19 = v13;
        if ((PK_UIApplicationIsSystemShell___result & 1) == 0)
        {
          v20 = MEMORY[0x1CCA6F790]();
          if (*(a1 + 16) == 1)
          {
            +[PKMetalUtility layerContentsScale];
            v22 = 18;
            if (v15)
            {
              v22 = 12;
            }

            v23 = ((v19 * v18 * v22) * v21 + 54457280.0);
          }

          else
          {
            v23 = 188743680;
          }

          if (v20 < v23)
          {
            [(PKTiledCanvasView *)v17 setMetalLayerContentsScaleOverride:1.0];
          }
        }

        [(PKTiledCanvasView *)v17 setDelegate:a1];
        [(PKTiledCanvasView *)v17 setOpaque:0];
        [(PKTiledCanvasView *)v17 setLiveStrokeMode:1];
        [(PKTiledCanvasView *)v17 setUseLuminanceColorFilter:1];
        objc_storeStrong((a1 + 96), v17);
        [(PKTextInputCanvasController *)a1 _updateCanvasViewInkAnimated:?];
        v29 = objc_loadWeakRetained((a1 + 72));
        v30 = [v29 canvasControllerContainerView:a1];

        v58 = v30;
        [v30 addSubview:v17];
        [(PKTiledCanvasView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
        if (*(a1 + 16) == 1)
        {
          v31 = +[PKTextInputSettings sharedSettings];
          v32 = [v31 slidingCanvasDebugBorder];

          if (v32)
          {
            v33 = [MEMORY[0x1E69DC888] labelColor];
            v34 = [v33 CGColor];
            v35 = [(PKTiledCanvasView *)v17 layer];
            [v35 setBorderColor:v34];

            v36 = [(PKTiledCanvasView *)v17 layer];
            [v36 setBorderWidth:1.0];
          }

          v37 = +[PKTextInputSettings sharedSettings];
          [v37 slidingCanvasWidth];
          v39 = v38;
          v40 = +[PKTextInputSettings sharedSettings];
          [v40 slidingCanvasHeight];
          v42 = v41;

          [(PKTiledCanvasView *)v17 setLiveStrokeMaxSize:v39, v42];
          [(PKTiledCanvasView *)v17 setEnableCanvasOffsetSupport:1];
          [(PKTiledCanvasView *)v17 setFrame:0.0, 0.0, v18, v19];
        }

        else
        {
          v56 = [(PKTiledCanvasView *)v17 leadingAnchor];
          v55 = [v30 leadingAnchor];
          v54 = [v56 constraintEqualToAnchor:v55];
          v59[0] = v54;
          v57 = [(PKTiledCanvasView *)v17 trailingAnchor];
          v53 = [v30 trailingAnchor];
          v43 = [v57 constraintEqualToAnchor:?];
          v59[1] = v43;
          v44 = [(PKTiledCanvasView *)v17 topAnchor];
          v45 = [v30 topAnchor];
          v46 = [v44 constraintEqualToAnchor:v45];
          v59[2] = v46;
          v47 = [(PKTiledCanvasView *)v17 bottomAnchor];
          v48 = [v58 bottomAnchor];
          v49 = [v47 constraintEqualToAnchor:v48];
          v59[3] = v49;
          v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];

          [MEMORY[0x1E696ACD8] activateConstraints:v50];
        }

        v51 = objc_loadWeakRetained((a1 + 72));
        v52 = [v51 canvasControllerDrawingGestureRecognizer:a1];

        [(PKTiledCanvasView *)v17 setDrawingGestureRecognizer:v52];
        [v52 setDrawingTarget:v17];
        +[PKTextInputDebugStateIntrospector debugStateDidChange];

LABEL_28:
        [*(a1 + 96) setHidden:(*(a1 + 64) & 1) == 0];
        [(PKTextInputCanvasController *)a1 _updateFloatingBackground];
        return;
      }
    }

    else
    {
      v3 = 0;
      v5 = (a1 + 96);
      v4 = *(a1 + 96);
      v6 = v4 == 0;
    }

    if (!v3 && !v6)
    {
      v24 = v4;
      v25 = [v24 drawingGestureRecognizer];
      v26 = [v25 drawingTarget];
      v27 = *v5;

      if (v26 == v27)
      {
        v28 = [*v5 drawingGestureRecognizer];
        [v28 setDrawingTarget:0];
      }

      [*v5 removeFromSuperview];
      [*v5 setDelegate:0];
      objc_storeStrong(v5, 0);
      +[PKTextInputDebugStateIntrospector debugStateDidChange];
    }

    goto LABEL_28;
  }
}

- (uint64_t)canvasHasVisibleStrokes
{
  if (result)
  {
    v1 = result;
    if ([*(result + 96) isDrawing])
    {
      return 1;
    }

    else
    {
      v2 = *(v1 + 96);

      return [v2 hasVisibleStrokes];
    }
  }

  return result;
}

- (double)renderedStrokesBounds
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    [*(a1 + 96) renderedStrokesBounds];
    v4 = v3;
  }

  else
  {
    v4 = *MEMORY[0x1E695F050];
  }

  return v4;
}

- (id)inProgressStroke
{
  if (a1)
  {
    v1 = [*(a1 + 96) currentStrokeWithStrokeDataCopy];
    [v1 _setIsInProgressScribbleStroke:1];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (void)setDelegate:(uint64_t)a1
{
  obj = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));

    if (WeakRetained != obj)
    {
      objc_storeWeak((a1 + 72), obj);
      [(PKTextInputCanvasController *)a1 _updateCanvasView];
    }
  }
}

- (void)reloadPreferredStrokeColor
{
  if (a1)
  {
    v11 = 0;
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v3 = [WeakRetained canvasControllerPreferredStrokeColor:a1 animated:&v11];

    if (!v3)
    {
      v3 = [MEMORY[0x1E69DC888] whiteColor];
    }

    v4 = v11;
    v5 = v3;
    v6 = *(a1 + 88);
    if (v6 == v5)
    {
      goto LABEL_12;
    }

    v7 = v6;
    v8 = v5;
    if (!(v8 | v7))
    {
      goto LABEL_12;
    }

    v9 = v8;
    if (v8 && v7)
    {
      v10 = [v7 isEqual:v8];

      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    objc_storeStrong((a1 + 88), v3);
    [(PKTextInputCanvasController *)a1 _updateCanvasViewInkAnimated:v4];
LABEL_12:
  }
}

- (double)convertRect:(double)a3 toCanvasFromCoordinateSpace:(double)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (a1)
  {
    v12 = [(PKTextInputCanvasController *)a1 _containerView];
    if (v12)
    {
      a3 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v11, v12, a3, a4, a5, a6);
    }

    else
    {
      v13 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        v16 = a1;
        _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Trying to convert a rect from a canvas view that has no container view. Canvas controller: %@", &v15, 0xCu);
      }
    }
  }

  else
  {
    a3 = 0.0;
  }

  return a3;
}

- (id)canvasCoordinateSpace
{
  if (a1)
  {
    a1 = [(PKTextInputCanvasController *)a1 _containerView];
    v1 = vars8;
  }

  return a1;
}

- (void)removeStrokes:(double)a3 animationDuration:
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a1)
  {
    v6 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [PKDrawing _uuidDescriptionForStrokes:v5];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_INFO, "Fade out strokes from canvas: %@", &v8, 0xCu);
    }

    [*(a1 + 96) fadeOutAndHideStrokes:v5 duration:a3];
    [(PKTextInputCanvasController *)a1 _trackRecentlyRemovedStrokes:v5];
  }
}

- (void)_trackRecentlyRemovedStrokes:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a2;
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

        v7 = [*(*(&v8 + 1) + 8 * v6) _strokeUUID];
        if (v7)
        {
          [*(a1 + 8) addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)animateAndRemoveStrokes:(uint64_t)a3 destinationFrame:(CGFloat)a4 animationDuration:(CGFloat)a5 useImpreciseAnimation:(CGFloat)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v15 = a2;
  if (a1)
  {
    v16 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v24.origin.x = a4;
      v24.origin.y = a5;
      v24.size.width = a6;
      v24.size.height = a7;
      v17 = NSStringFromCGRect(v24);
      v18 = [PKDrawing _uuidDescriptionForStrokes:v15];
      v19 = 138412546;
      v20 = v17;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_INFO, "Animate out strokes from canvas. Frame: %@, strokes: %@", &v19, 0x16u);
    }

    [*(a1 + 96) animateStrokes:v15 destinationFrame:a3 duration:a4 particles:{a5, a6, a7, a8}];
    [(PKTextInputCanvasController *)a1 _trackRecentlyRemovedStrokes:v15];
  }
}

- (void)setFloatingBackgroundRect:(double)a3
{
  if (a1 && !CGRectEqualToRect(*&a2, *(a1 + 112)))
  {
    *(a1 + 112) = a2;
    *(a1 + 120) = a3;
    *(a1 + 128) = a4;
    *(a1 + 136) = a5;

    [(PKTextInputCanvasController *)a1 _updateFloatingBackground];
  }
}

- (void)_updateFloatingBackground
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 96);
  v3 = [v2 superview];
  v4 = v3 && !CGRectIsEmpty(*(a1 + 112)) && !CGRectIsNull(*(a1 + 112));

  v5 = *(a1 + 104);
  if (v4 && !v5)
  {
    v6 = [PKTextInputFloatingBackgroundView alloc];
    v7 = [(PKTextInputFloatingBackgroundView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v8 = *(a1 + 104);
    *(a1 + 104) = v7;

    v9 = *(a1 + 96);
    v10 = [v9 superview];
    [v10 insertSubview:v7 belowSubview:*(a1 + 96)];

    [(PKTextInputFloatingBackgroundView *)v7 setAlpha:0.0];
    v11 = MEMORY[0x1E69DD250];
    v12 = v39;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __56__PKTextInputCanvasController__updateFloatingBackground__block_invoke;
    v39[3] = &unk_1E82D6388;
    v13 = v7;
    v39[4] = v13;
    [v11 animateWithDuration:v39 animations:0.15];
LABEL_14:

    goto LABEL_15;
  }

  if (v5)
  {
    v14 = v4;
  }

  else
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    v15 = v5;
    v16 = *(a1 + 104);
    *(a1 + 104) = 0;

    v17 = +[PKTextInputSettings sharedSettings];
    [v17 textInputStrokeFadeOutDuration];
    v19 = v18;

    v20 = MEMORY[0x1E69DD250];
    v12 = v37;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __56__PKTextInputCanvasController__updateFloatingBackground__block_invoke_2;
    v37[3] = &unk_1E82D6388;
    v38 = v15;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __56__PKTextInputCanvasController__updateFloatingBackground__block_invoke_3;
    v35[3] = &unk_1E82D6548;
    v13 = v38;
    v36 = v13;
    [v20 animateWithDuration:v37 animations:v35 completion:v19];

    goto LABEL_14;
  }

LABEL_15:
  if (v4)
  {
    v22 = *(a1 + 112);
    v21 = *(a1 + 120);
    v24 = *(a1 + 128);
    v23 = *(a1 + 136);
    v25 = *(a1 + 104);
    v26 = [v25 superview];
    v27 = [(PKTextInputCanvasController *)a1 _containerView];
    v28 = v27;
    if (v27)
    {
      v22 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v27, v26, v22, v21, v24, v23);
      v21 = v29;
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v32 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v41 = a1;
        _os_log_error_impl(&dword_1C7CCA000, v32, OS_LOG_TYPE_ERROR, "Trying to convert a rect to a canvas view that has no container view. Canvas controller: %@", buf, 0xCu);
      }
    }

    v33 = 0.2;
    v34[1] = 3221225472;
    v34[0] = MEMORY[0x1E69E9820];
    v34[2] = __56__PKTextInputCanvasController__updateFloatingBackground__block_invoke_4;
    v34[3] = &unk_1E82D8330;
    if (!v5)
    {
      v33 = 0.0;
    }

    v34[4] = a1;
    *&v34[5] = v22;
    *&v34[6] = v21;
    *&v34[7] = v24;
    *&v34[8] = v23;
    [MEMORY[0x1E69DD250] animateWithDuration:131073 delay:v34 options:0 animations:v33 completion:?];
  }
}

uint64_t __56__PKTextInputCanvasController__updateFloatingBackground__block_invoke_4(double *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  v5 = *(a1 + 4);
  if (v5)
  {
    v6 = *(v5 + 104);
  }

  else
  {
    v6 = 0;
  }

  return [v6 setFrame:{v1, v2, v3, v4}];
}

- (void)_recordColorForStroke:(uint64_t)a1
{
  v7 = a2;
  if (a1)
  {
    v3 = *(a1 + 48);
    objc_sync_enter(v3);
    v4 = *(a1 + 88);
    v5 = *(a1 + 48);
    v6 = [v7 _strokeUUID];
    if (v4)
    {
      [v5 setObject:v4 forKeyedSubscript:v6];
    }

    else
    {
      [v5 removeObjectForKey:v6];
    }

    objc_sync_exit(v3);
  }
}

- (void)_updateCanvasViewOffsetFromTouch:(uint64_t)a1
{
  v3 = a2;
  if (a1 && *(a1 + 16) == 1)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x5012000000;
    v30 = __Block_byref_object_copy__17;
    v31 = __Block_byref_object_dispose__17;
    v32 = "";
    v33 = 0u;
    v34 = 0u;
    [*(a1 + 96) frame];
    *&v33 = v4;
    *(&v33 + 1) = v5;
    *&v34 = v6;
    *(&v34 + 1) = v7;
    [*(a1 + 96) visibleStrokesBounds];
    v8 = v28;
    v8[6] = DKDUpdateFixedSizeRectToIncludeRectIfPossible(v28[6], v28[7], v28[8], v28[9], v9, v10, v11, v12, 16.0, 16.0);
    *(v8 + 7) = v13;
    *(v8 + 8) = v14;
    *(v8 + 9) = v15;
    v16 = *(a1 + 96);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __64__PKTextInputCanvasController__updateCanvasViewOffsetFromTouch___block_invoke;
    v26[3] = &unk_1E82D98B0;
    v26[4] = &v27;
    [v16 enumerateRenderedStrokesBounds:v26];
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);
    v19 = v28;
    if (v17 == v18)
    {
      v20 = v28[6];
      v21 = v28[7];
    }

    else
    {
      v20 = v28[6];
      v21 = v28[7];
      v22 = v28[8];
      v23 = v28[9];
      do
      {
        v24 = *v17;
        v25 = v17[1];
        v17 += 2;
        v20 = DKDUpdateFixedSizeRectToIncludePoint(v20, v21, v22, v23, v24, v25, 16.0, 16.0);
        v19[6] = v20;
        v19[7] = v21;
        v19[8] = v22;
        v19[9] = v23;
      }

      while (v17 != v18);
    }

    [*(a1 + 96) setCanvasOffset:{v20, v21}];
    _Block_object_dispose(&v27, 8);
  }
}

void __64__PKTextInputCanvasController__updateCanvasViewOffsetFromTouch___block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = *(*(a1 + 32) + 8);
  v5[6] = DKDUpdateFixedSizeRectToIncludeRectIfPossible(v5[6], v5[7], v5[8], v5[9], a2, a3, a4, a5, 16.0, 16.0);
  *(v5 + 7) = v6;
  *(v5 + 8) = v7;
  *(v5 + 9) = v8;
}

- (void)_clearRecordedColorForStroke:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    v4 = *(a1 + 48);
    objc_sync_enter(v4);
    v5 = *(a1 + 48);
    v6 = [v7 _strokeUUID];
    [v5 removeObjectForKey:v6];

    objc_sync_exit(v4);
    v3 = v7;
  }
}

- (void)canvasView:(id)a3 didPresentWithCanvasOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  if (self)
  {
    [(PKTiledCanvasView *)self->__canvasView frame];
    canvasView = self->__canvasView;
  }

  else
  {
    [0 frame];
    canvasView = 0;
  }

  [(PKTiledCanvasView *)canvasView setFrame:x, y];
}

- (id)canvasView:(id)a3 inkForStroke:(id)a4
{
  v5 = a4;
  v6 = self->_strokeColorForStrokeUUID;
  objc_sync_enter(v6);
  strokeColorForStrokeUUID = self->_strokeColorForStrokeUUID;
  v8 = [v5 _strokeUUID];
  v9 = [(NSMutableDictionary *)strokeColorForStrokeUUID objectForKeyedSubscript:v8];

  objc_sync_exit(v6);
  v10 = [v5 ink];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 color];
    v13 = [v9 isEqual:v12];

    if ((v13 & 1) == 0)
    {
      v14 = [PKInk inkFromInk:v11 color:v9];

      v11 = v14;
    }
  }

  return v11;
}

- (void)canvasViewDidBeginDrawing:(id)a3
{
  v5 = a3;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained canvasControllerDidBeginDrawing:self];

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
}

- (void)canvasView:(id)a3 beganStroke:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a4;
  objc_storeStrong(&self->_currentStroke, a4);
  [(PKTextInputCanvasController *)self _recordColorForStroke:v6];
  v7 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 _strokeUUID];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_INFO, "canvasViewBeganStroke: %@", &v9, 0xCu);
  }
}

- (void)canvasView:(id)a3 endedStroke:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 _strokeUUID];
    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_INFO, "canvasViewEndedStroke: %@", &v10, 0xCu);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained canvasControllerEndedStroke:self];

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
  [(PKTextInputCanvasController *)self _clearRecordedColorForStroke:v5];
  currentStroke = self->_currentStroke;
  self->_currentStroke = 0;
}

- (void)canvasView:(id)a3 cancelledStroke:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  v9 = [WeakRetained canvasControllerDrawingGestureRecognizer:self];

  v10 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 _strokeUUID];
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1C7CCA000, v10, OS_LOG_TYPE_DEFAULT, "canvasViewCancelledStroke: %@, gesture: %@", &v14, 0x16u);
  }

  if (self)
  {
    v12 = objc_loadWeakRetained(&self->_changeObserver);
  }

  else
  {
    v12 = 0;
  }

  [v12 canvasControllerDidCancelStroke:self strokeAcceptanceState:{objc_msgSend(v9, "strokeAcceptanceState")}];

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
  [(PKTextInputCanvasController *)self _clearRecordedColorForStroke:v7];
  currentStroke = self->_currentStroke;
  self->_currentStroke = 0;
}

- (void)canvasViewWillBeginNewStroke:(id)a3 withTouch:(id)a4 location:(CGPoint)a5
{
  v7 = a4;
  currentStroke = self->_currentStroke;
  self->_currentStroke = 0;

  std::vector<CGPoint>::resize(&self->_currentStrokePoints.__begin_, 0);
  std::vector<CGPoint>::reserve(&self->_currentStrokePoints.__begin_, 0x400uLL);
  [(PKTextInputCanvasController *)self _updateCanvasViewOffsetFromTouch:v7];
}

- (void)canvasViewDrawingMoved:(id)a3 withTouch:(id)a4
{
  v39 = a3;
  v6 = a4;
  v7 = v6;
  if (self)
  {
    if (v6)
    {
      v8 = [(PKTextInputCanvasController *)&self->super.isa _containerView];
      [v7 PK_locationInView:v8];
      v10 = v9;
      v12 = v11;
    }

    else
    {
      v10 = 0.0;
      v12 = 0.0;
    }

    end = self->_currentStrokePoints.__end_;
    cap = self->_currentStrokePoints.__cap_;
    if (end >= cap)
    {
      begin = self->_currentStrokePoints.__begin_;
      v17 = end - begin;
      v18 = end - begin;
      v19 = v18 + 1;
      if ((v18 + 1) >> 60)
      {
        std::vector<CGPoint>::__throw_length_error[abi:ne200100]();
      }

      v20 = cap - begin;
      if (v20 >> 3 > v19)
      {
        v19 = v20 >> 3;
      }

      v21 = v20 >= 0x7FFFFFFFFFFFFFF0;
      v22 = 0xFFFFFFFFFFFFFFFLL;
      if (!v21)
      {
        v22 = v19;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CGPoint>>(&self->_currentStrokePoints, v22);
      }

      v23 = (16 * v18);
      *v23 = v10;
      v23[1] = v12;
      v15 = (16 * v18 + 16);
      memcpy(0, begin, v17);
      v24 = self->_currentStrokePoints.__begin_;
      self->_currentStrokePoints.__begin_ = 0;
      self->_currentStrokePoints.__end_ = v15;
      self->_currentStrokePoints.__cap_ = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      end->x = v10;
      end->y = v12;
      v15 = end + 1;
    }

    self->_currentStrokePoints.__end_ = v15;
    [(PKTextInputCanvasController *)self _updateCanvasViewOffsetFromTouch:v7];
    WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
    [WeakRetained canvasControllerInProgressStrokeDidChange:self];

    v26 = self->_currentStrokePoints.__begin_;
    v27 = self->_currentStrokePoints.__end_ - 1;
    v28 = 0.0;
    if (v26 < v27)
    {
      p_x = &v26[1].x;
      do
      {
        x = v26->x;
        y = v26->y;
        ++v26;
        v32 = *p_x;
        v33 = p_x[1];
        p_x += 2;
        v28 = v28 + sqrt((y - v33) * (y - v33) + (x - v32) * (x - v32));
      }

      while (v26 < v27);
    }

    v34 = self->__canvasView;
    [(PKTiledCanvasView *)v34 liveStrokeMaxSize];
    v36 = v35;
    [(PKTiledCanvasView *)self->__canvasView liveStrokeMaxSize];
    v38 = (v36 + v37) * 10.0;

    if (v28 > v38)
    {
      [(PKTiledCanvasView *)self->__canvasView cancelCurrentStroke];
    }
  }
}

- (void)canvasViewDidEndDrawing:(id)a3
{
  v5 = a3;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained canvasControllerDidEndDrawing:self];

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
}

- (void)canvasViewHasVisibleStrokesChanged:(id)a3
{
  v3 = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  v4 = self;
  [(PKTextInputCanvasController *)self canvasControllerHasVisibleStrokesChanged:v3];
}

- (void)canvasViewDidFinishAnimatingStrokes:(id)a3
{
  v4 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_INFO, "canvasViewDidFinishAnimatingStrokes", v6, 2u);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained canvasControllerCanvasDidFinishAnimatingStrokes:self];
}

- (void)canvasView:(id)a3 drawingDidChange:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 strokes];
    v8 = [PKDrawing _uuidDescriptionForStrokes:v7];
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_INFO, "canvasViewDrawingDidChange. Visible strokes: %@", &v12, 0xCu);
  }

  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_changeObserver);
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained canvasController:self drawingDidChange:v5];

  v10 = [v5 strokes];
  v11 = [v10 count] == 0;

  if (v11)
  {
    [(NSMutableSet *)self->_recentlyRemovedStrokeIDs removeAllObjects];
  }

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
}

- (id)canvasViewTouchView:(id)a3
{
  v3 = [(PKTextInputCanvasController *)&self->super.isa _containerView];

  return v3;
}

- (void)reportDebugStateDescription:(id)a3
{
  v11 = a3;
  v5 = self != 0;
  if (self)
  {
    v6 = self->__canvasView;
    if (v6)
    {
      v3 = self->__canvasView;
      [(PKTiledCanvasView *)v3 frame];
      v7 = NSStringFromCGRect(v13);
      goto LABEL_6;
    }

    v5 = 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_6:
  v11[2](v11, @"Canvas view", v7);
  if (v5)
  {
  }

  v8 = @"No";
  if (self && self->_wantsCanvasVisible)
  {
    v8 = @"Yes";
  }

  v11[2](v11, @"wantsCanvasVisible", v8);
  if (self)
  {
    if ([(PKTiledCanvasView *)self->__canvasView isDrawing])
    {
      v9 = @"Yes";
    }

    else
    {
      v9 = @"No";
    }
  }

  else
  {
    v9 = @"No";
  }

  v11[2](v11, @"isDrawing", v9);
  if ([(PKTextInputCanvasController *)self canvasHasVisibleStrokes])
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  v11[2](v11, @"hasVisibleStrokes", v10);
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end