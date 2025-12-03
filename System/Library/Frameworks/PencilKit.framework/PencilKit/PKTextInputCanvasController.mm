@interface PKTextInputCanvasController
+ (id)defaultInkWithColor:(uint64_t)color;
+ (void)prewarmFutureCanvasesIfNecessarySecureRendering:(uint64_t)rendering;
- (PKTextInputCanvasController)init;
- (double)convertRect:(double)rect toCanvasFromCoordinateSpace:(double)space;
- (double)renderedStrokesBounds;
- (id).cxx_construct;
- (id)_containerView;
- (id)canvasCoordinateSpace;
- (id)canvasView:(id)view inkForStroke:(id)stroke;
- (id)canvasViewTouchView:(id)view;
- (id)defaultStrokeColor;
- (id)inProgressStroke;
- (uint64_t)canvasHasVisibleStrokes;
- (void)_clearRecordedColorForStroke:(uint64_t)stroke;
- (void)_recordColorForStroke:(uint64_t)stroke;
- (void)_trackRecentlyRemovedStrokes:(uint64_t)strokes;
- (void)_updateCanvasView;
- (void)_updateCanvasViewInkAnimated:(uint64_t)animated;
- (void)_updateCanvasViewOffsetFromTouch:(uint64_t)touch;
- (void)_updateFloatingBackground;
- (void)animateAndRemoveStrokes:(uint64_t)strokes destinationFrame:(CGFloat)frame animationDuration:(CGFloat)duration useImpreciseAnimation:(CGFloat)animation;
- (void)canvasView:(id)view beganStroke:(id)stroke;
- (void)canvasView:(id)view cancelledStroke:(id)stroke;
- (void)canvasView:(id)view didPresentWithCanvasOffset:(CGPoint)offset;
- (void)canvasView:(id)view drawingDidChange:(id)change;
- (void)canvasView:(id)view endedStroke:(id)stroke;
- (void)canvasViewDidBeginDrawing:(id)drawing;
- (void)canvasViewDidEndDrawing:(id)drawing;
- (void)canvasViewDidFinishAnimatingStrokes:(id)strokes;
- (void)canvasViewDrawingMoved:(id)moved withTouch:(id)touch;
- (void)canvasViewHasVisibleStrokesChanged:(id)changed;
- (void)canvasViewWillBeginNewStroke:(id)stroke withTouch:(id)touch location:(CGPoint)location;
- (void)dealloc;
- (void)reloadPreferredStrokeColor;
- (void)removeStrokes:(double)strokes animationDuration:;
- (void)reportDebugStateDescription:(id)description;
- (void)setDelegate:(uint64_t)delegate;
- (void)setFloatingBackgroundRect:(double)rect;
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
  selfCopy = self;
  if (self)
  {
    self = self->__canvasView;
  }

  drawingGestureRecognizer = [(PKTextInputCanvasController *)self drawingGestureRecognizer];
  [drawingGestureRecognizer setDrawingTarget:0];

  v4.receiver = selfCopy;
  v4.super_class = PKTextInputCanvasController;
  [(PKTextInputCanvasController *)&v4 dealloc];
}

+ (void)prewarmFutureCanvasesIfNecessarySecureRendering:(uint64_t)rendering
{
  v3 = objc_opt_self();
  [PKTiledCanvasView prewarmFutureCanvasesIfNecessarySecureRendering:a2 prewarmSharedResourceHandler:0];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v4 = [(PKTextInputCanvasController *)v3 defaultInkWithColor:blackColor];
}

+ (id)defaultInkWithColor:(uint64_t)color
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

- (void)_updateCanvasViewInkAnimated:(uint64_t)animated
{
  if (*(animated + 96))
  {
    whiteColor = *(animated + 88);
    if (!whiteColor)
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    }

    v8 = whiteColor;
    v5 = [PKTextInputCanvasController defaultInkWithColor:whiteColor];
    [*(animated + 96) setInk:v5];

    v6 = *(animated + 88);
    v7 = *(animated + 56);
    if (v7)
    {
      [(PKTextInputCanvasController *)animated _recordColorForStroke:v7];
    }

    [*(animated + 96) setLiveRenderingOverrideColor:v6 animated:a2];
  }
}

- (id)defaultStrokeColor
{
  if (self)
  {
    self = [MEMORY[0x1E69DC888] whiteColor];
    v1 = vars8;
  }

  return self;
}

- (id)_containerView
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 9);
    selfCopy = [WeakRetained canvasControllerContainerView:selfCopy];
  }

  return selfCopy;
}

- (void)_updateCanvasView
{
  v59[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (*(self + 64) & 1) != 0 || (*(self + 65))
    {
      WeakRetained = objc_loadWeakRetained((self + 72));
      v3 = WeakRetained != 0;

      v5 = (self + 96);
      v4 = *(self + 96);
      v6 = v4 == 0;
      if (WeakRetained && !v4)
      {
        v7 = +[PKTextInputSettings sharedSettings];
        *(self + 16) = [v7 useSlidingCanvas];

        v8 = +[PKTextInputSettings sharedSettings];
        [v8 slidingCanvasWidth];
        v10 = v9;

        v11 = +[PKTextInputSettings sharedSettings];
        [v11 slidingCanvasHeight];
        v13 = v12;

        v14 = +[PKTextInputSettings sharedSettings];
        useSingleComponentCanvas = [v14 useSingleComponentCanvas];

        v16 = [PKTiledCanvasView alloc];
        v17 = [(PKTiledCanvasView *)v16 initWithFrame:1 usePrivateResourceHandler:useSingleComponentCanvas singleComponent:0 sixChannelBlending:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
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
          if (*(self + 16) == 1)
          {
            +[PKMetalUtility layerContentsScale];
            v22 = 18;
            if (useSingleComponentCanvas)
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

        [(PKTiledCanvasView *)v17 setDelegate:self];
        [(PKTiledCanvasView *)v17 setOpaque:0];
        [(PKTiledCanvasView *)v17 setLiveStrokeMode:1];
        [(PKTiledCanvasView *)v17 setUseLuminanceColorFilter:1];
        objc_storeStrong((self + 96), v17);
        [(PKTextInputCanvasController *)self _updateCanvasViewInkAnimated:?];
        v29 = objc_loadWeakRetained((self + 72));
        v30 = [v29 canvasControllerContainerView:self];

        v58 = v30;
        [v30 addSubview:v17];
        [(PKTiledCanvasView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
        if (*(self + 16) == 1)
        {
          v31 = +[PKTextInputSettings sharedSettings];
          slidingCanvasDebugBorder = [v31 slidingCanvasDebugBorder];

          if (slidingCanvasDebugBorder)
          {
            labelColor = [MEMORY[0x1E69DC888] labelColor];
            cGColor = [labelColor CGColor];
            layer = [(PKTiledCanvasView *)v17 layer];
            [layer setBorderColor:cGColor];

            layer2 = [(PKTiledCanvasView *)v17 layer];
            [layer2 setBorderWidth:1.0];
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
          leadingAnchor = [(PKTiledCanvasView *)v17 leadingAnchor];
          leadingAnchor2 = [v30 leadingAnchor];
          v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
          v59[0] = v54;
          trailingAnchor = [(PKTiledCanvasView *)v17 trailingAnchor];
          trailingAnchor2 = [v30 trailingAnchor];
          v43 = [trailingAnchor constraintEqualToAnchor:?];
          v59[1] = v43;
          topAnchor = [(PKTiledCanvasView *)v17 topAnchor];
          topAnchor2 = [v30 topAnchor];
          v46 = [topAnchor constraintEqualToAnchor:topAnchor2];
          v59[2] = v46;
          bottomAnchor = [(PKTiledCanvasView *)v17 bottomAnchor];
          bottomAnchor2 = [v58 bottomAnchor];
          v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
          v59[3] = v49;
          v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];

          [MEMORY[0x1E696ACD8] activateConstraints:v50];
        }

        v51 = objc_loadWeakRetained((self + 72));
        v52 = [v51 canvasControllerDrawingGestureRecognizer:self];

        [(PKTiledCanvasView *)v17 setDrawingGestureRecognizer:v52];
        [v52 setDrawingTarget:v17];
        +[PKTextInputDebugStateIntrospector debugStateDidChange];

LABEL_28:
        [*(self + 96) setHidden:(*(self + 64) & 1) == 0];
        [(PKTextInputCanvasController *)self _updateFloatingBackground];
        return;
      }
    }

    else
    {
      v3 = 0;
      v5 = (self + 96);
      v4 = *(self + 96);
      v6 = v4 == 0;
    }

    if (!v3 && !v6)
    {
      v24 = v4;
      drawingGestureRecognizer = [v24 drawingGestureRecognizer];
      drawingTarget = [drawingGestureRecognizer drawingTarget];
      v27 = *v5;

      if (drawingTarget == v27)
      {
        drawingGestureRecognizer2 = [*v5 drawingGestureRecognizer];
        [drawingGestureRecognizer2 setDrawingTarget:0];
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
  if (!self)
  {
    return 0.0;
  }

  v2 = *(self + 96);
  if (v2)
  {
    [*(self + 96) renderedStrokesBounds];
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
  if (self)
  {
    currentStrokeWithStrokeDataCopy = [*(self + 96) currentStrokeWithStrokeDataCopy];
    [currentStrokeWithStrokeDataCopy _setIsInProgressScribbleStroke:1];
  }

  else
  {
    currentStrokeWithStrokeDataCopy = 0;
  }

  return currentStrokeWithStrokeDataCopy;
}

- (void)setDelegate:(uint64_t)delegate
{
  obj = a2;
  if (delegate)
  {
    WeakRetained = objc_loadWeakRetained((delegate + 72));

    if (WeakRetained != obj)
    {
      objc_storeWeak((delegate + 72), obj);
      [(PKTextInputCanvasController *)delegate _updateCanvasView];
    }
  }
}

- (void)reloadPreferredStrokeColor
{
  if (self)
  {
    v11 = 0;
    WeakRetained = objc_loadWeakRetained((self + 72));
    whiteColor = [WeakRetained canvasControllerPreferredStrokeColor:self animated:&v11];

    if (!whiteColor)
    {
      whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    }

    v4 = v11;
    v5 = whiteColor;
    v6 = *(self + 88);
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

    objc_storeStrong((self + 88), whiteColor);
    [(PKTextInputCanvasController *)self _updateCanvasViewInkAnimated:v4];
LABEL_12:
  }
}

- (double)convertRect:(double)rect toCanvasFromCoordinateSpace:(double)space
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = a2;
  if (self)
  {
    _containerView = [(PKTextInputCanvasController *)self _containerView];
    if (_containerView)
    {
      rect = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v11, _containerView, rect, space, a5, a6);
    }

    else
    {
      v13 = os_log_create("com.apple.pencilkit", "PencilTextInput");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 138412290;
        selfCopy = self;
        _os_log_error_impl(&dword_1C7CCA000, v13, OS_LOG_TYPE_ERROR, "Trying to convert a rect from a canvas view that has no container view. Canvas controller: %@", &v15, 0xCu);
      }
    }
  }

  else
  {
    rect = 0.0;
  }

  return rect;
}

- (id)canvasCoordinateSpace
{
  if (self)
  {
    self = [(PKTextInputCanvasController *)self _containerView];
    v1 = vars8;
  }

  return self;
}

- (void)removeStrokes:(double)strokes animationDuration:
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [PKDrawing _uuidDescriptionForStrokes:v5];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_1C7CCA000, v6, OS_LOG_TYPE_INFO, "Fade out strokes from canvas: %@", &v8, 0xCu);
    }

    [*(self + 96) fadeOutAndHideStrokes:v5 duration:strokes];
    [(PKTextInputCanvasController *)self _trackRecentlyRemovedStrokes:v5];
  }
}

- (void)_trackRecentlyRemovedStrokes:(uint64_t)strokes
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

        _strokeUUID = [*(*(&v8 + 1) + 8 * v6) _strokeUUID];
        if (_strokeUUID)
        {
          [*(strokes + 8) addObject:_strokeUUID];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)animateAndRemoveStrokes:(uint64_t)strokes destinationFrame:(CGFloat)frame animationDuration:(CGFloat)duration useImpreciseAnimation:(CGFloat)animation
{
  v23 = *MEMORY[0x1E69E9840];
  v15 = a2;
  if (self)
  {
    v16 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v24.origin.x = frame;
      v24.origin.y = duration;
      v24.size.width = animation;
      v24.size.height = a7;
      v17 = NSStringFromCGRect(v24);
      v18 = [PKDrawing _uuidDescriptionForStrokes:v15];
      v19 = 138412546;
      v20 = v17;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_INFO, "Animate out strokes from canvas. Frame: %@, strokes: %@", &v19, 0x16u);
    }

    [*(self + 96) animateStrokes:v15 destinationFrame:strokes duration:frame particles:{duration, animation, a7, a8}];
    [(PKTextInputCanvasController *)self _trackRecentlyRemovedStrokes:v15];
  }
}

- (void)setFloatingBackgroundRect:(double)rect
{
  if (self && !CGRectEqualToRect(*&a2, *(self + 112)))
  {
    *(self + 112) = a2;
    *(self + 120) = rect;
    *(self + 128) = a4;
    *(self + 136) = a5;

    [(PKTextInputCanvasController *)self _updateFloatingBackground];
  }
}

- (void)_updateFloatingBackground
{
  v42 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  v2 = *(self + 96);
  superview = [v2 superview];
  v4 = superview && !CGRectIsEmpty(*(self + 112)) && !CGRectIsNull(*(self + 112));

  v5 = *(self + 104);
  if (v4 && !v5)
  {
    v6 = [PKTextInputFloatingBackgroundView alloc];
    v7 = [(PKTextInputFloatingBackgroundView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v8 = *(self + 104);
    *(self + 104) = v7;

    v9 = *(self + 96);
    superview2 = [v9 superview];
    [superview2 insertSubview:v7 belowSubview:*(self + 96)];

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
    v16 = *(self + 104);
    *(self + 104) = 0;

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
    v22 = *(self + 112);
    v21 = *(self + 120);
    v24 = *(self + 128);
    v23 = *(self + 136);
    v25 = *(self + 104);
    superview3 = [v25 superview];
    _containerView = [(PKTextInputCanvasController *)self _containerView];
    v28 = _containerView;
    if (_containerView)
    {
      v22 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(_containerView, superview3, v22, v21, v24, v23);
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
        selfCopy = self;
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

    v34[4] = self;
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

- (void)_recordColorForStroke:(uint64_t)stroke
{
  v7 = a2;
  if (stroke)
  {
    v3 = *(stroke + 48);
    objc_sync_enter(v3);
    v4 = *(stroke + 88);
    v5 = *(stroke + 48);
    _strokeUUID = [v7 _strokeUUID];
    if (v4)
    {
      [v5 setObject:v4 forKeyedSubscript:_strokeUUID];
    }

    else
    {
      [v5 removeObjectForKey:_strokeUUID];
    }

    objc_sync_exit(v3);
  }
}

- (void)_updateCanvasViewOffsetFromTouch:(uint64_t)touch
{
  v3 = a2;
  if (touch && *(touch + 16) == 1)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x5012000000;
    v30 = __Block_byref_object_copy__17;
    v31 = __Block_byref_object_dispose__17;
    v32 = "";
    v33 = 0u;
    v34 = 0u;
    [*(touch + 96) frame];
    *&v33 = v4;
    *(&v33 + 1) = v5;
    *&v34 = v6;
    *(&v34 + 1) = v7;
    [*(touch + 96) visibleStrokesBounds];
    v8 = v28;
    v8[6] = DKDUpdateFixedSizeRectToIncludeRectIfPossible(v28[6], v28[7], v28[8], v28[9], v9, v10, v11, v12, 16.0, 16.0);
    *(v8 + 7) = v13;
    *(v8 + 8) = v14;
    *(v8 + 9) = v15;
    v16 = *(touch + 96);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __64__PKTextInputCanvasController__updateCanvasViewOffsetFromTouch___block_invoke;
    v26[3] = &unk_1E82D98B0;
    v26[4] = &v27;
    [v16 enumerateRenderedStrokesBounds:v26];
    v17 = *(touch + 24);
    v18 = *(touch + 32);
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

    [*(touch + 96) setCanvasOffset:{v20, v21}];
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

- (void)_clearRecordedColorForStroke:(uint64_t)stroke
{
  v3 = a2;
  if (stroke)
  {
    v7 = v3;
    v4 = *(stroke + 48);
    objc_sync_enter(v4);
    v5 = *(stroke + 48);
    _strokeUUID = [v7 _strokeUUID];
    [v5 removeObjectForKey:_strokeUUID];

    objc_sync_exit(v4);
    v3 = v7;
  }
}

- (void)canvasView:(id)view didPresentWithCanvasOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
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

- (id)canvasView:(id)view inkForStroke:(id)stroke
{
  strokeCopy = stroke;
  v6 = self->_strokeColorForStrokeUUID;
  objc_sync_enter(v6);
  strokeColorForStrokeUUID = self->_strokeColorForStrokeUUID;
  _strokeUUID = [strokeCopy _strokeUUID];
  v9 = [(NSMutableDictionary *)strokeColorForStrokeUUID objectForKeyedSubscript:_strokeUUID];

  objc_sync_exit(v6);
  v10 = [strokeCopy ink];
  v11 = v10;
  if (v9)
  {
    color = [v10 color];
    v13 = [v9 isEqual:color];

    if ((v13 & 1) == 0)
    {
      v14 = [PKInk inkFromInk:v11 color:v9];

      v11 = v14;
    }
  }

  return v11;
}

- (void)canvasViewDidBeginDrawing:(id)drawing
{
  drawingCopy = drawing;
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

- (void)canvasView:(id)view beganStroke:(id)stroke
{
  v11 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  objc_storeStrong(&self->_currentStroke, stroke);
  [(PKTextInputCanvasController *)self _recordColorForStroke:strokeCopy];
  v7 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    _strokeUUID = [strokeCopy _strokeUUID];
    v9 = 138412290;
    v10 = _strokeUUID;
    _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_INFO, "canvasViewBeganStroke: %@", &v9, 0xCu);
  }
}

- (void)canvasView:(id)view endedStroke:(id)stroke
{
  v12 = *MEMORY[0x1E69E9840];
  strokeCopy = stroke;
  v6 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    _strokeUUID = [strokeCopy _strokeUUID];
    v10 = 138412290;
    v11 = _strokeUUID;
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
  [(PKTextInputCanvasController *)self _clearRecordedColorForStroke:strokeCopy];
  currentStroke = self->_currentStroke;
  self->_currentStroke = 0;
}

- (void)canvasView:(id)view cancelledStroke:(id)stroke
{
  v18 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  strokeCopy = stroke;
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
    _strokeUUID = [strokeCopy _strokeUUID];
    v14 = 138412546;
    v15 = _strokeUUID;
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
  [(PKTextInputCanvasController *)self _clearRecordedColorForStroke:strokeCopy];
  currentStroke = self->_currentStroke;
  self->_currentStroke = 0;
}

- (void)canvasViewWillBeginNewStroke:(id)stroke withTouch:(id)touch location:(CGPoint)location
{
  touchCopy = touch;
  currentStroke = self->_currentStroke;
  self->_currentStroke = 0;

  std::vector<CGPoint>::resize(&self->_currentStrokePoints.__begin_, 0);
  std::vector<CGPoint>::reserve(&self->_currentStrokePoints.__begin_, 0x400uLL);
  [(PKTextInputCanvasController *)self _updateCanvasViewOffsetFromTouch:touchCopy];
}

- (void)canvasViewDrawingMoved:(id)moved withTouch:(id)touch
{
  movedCopy = moved;
  touchCopy = touch;
  v7 = touchCopy;
  if (self)
  {
    if (touchCopy)
    {
      _containerView = [(PKTextInputCanvasController *)&self->super.isa _containerView];
      [v7 PK_locationInView:_containerView];
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

- (void)canvasViewDidEndDrawing:(id)drawing
{
  drawingCopy = drawing;
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

- (void)canvasViewHasVisibleStrokesChanged:(id)changed
{
  selfCopy = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_delegate);
  }

  selfCopy2 = self;
  [(PKTextInputCanvasController *)self canvasControllerHasVisibleStrokesChanged:selfCopy];
}

- (void)canvasViewDidFinishAnimatingStrokes:(id)strokes
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

- (void)canvasView:(id)view drawingDidChange:(id)change
{
  v14 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v6 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    strokes = [changeCopy strokes];
    v8 = [PKDrawing _uuidDescriptionForStrokes:strokes];
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

  [WeakRetained canvasController:self drawingDidChange:changeCopy];

  strokes2 = [changeCopy strokes];
  v11 = [strokes2 count] == 0;

  if (v11)
  {
    [(NSMutableSet *)self->_recentlyRemovedStrokeIDs removeAllObjects];
  }

  +[PKTextInputDebugStateIntrospector debugStateDidChange];
}

- (id)canvasViewTouchView:(id)view
{
  _containerView = [(PKTextInputCanvasController *)&self->super.isa _containerView];

  return _containerView;
}

- (void)reportDebugStateDescription:(id)description
{
  descriptionCopy = description;
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
  descriptionCopy[2](descriptionCopy, @"Canvas view", v7);
  if (v5)
  {
  }

  v8 = @"No";
  if (self && self->_wantsCanvasVisible)
  {
    v8 = @"Yes";
  }

  descriptionCopy[2](descriptionCopy, @"wantsCanvasVisible", v8);
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

  descriptionCopy[2](descriptionCopy, @"isDrawing", v9);
  if ([(PKTextInputCanvasController *)self canvasHasVisibleStrokes])
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  descriptionCopy[2](descriptionCopy, @"hasVisibleStrokes", v10);
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end