@interface PKSelectionInteraction
- (BOOL)_didLongPressExternalElementAtLocation:(CGPoint)a3;
- (BOOL)_dragShouldBeginForSession:(id)a3;
- (BOOL)_insertSpaceAffordanceEnabled;
- (BOOL)_isLassoAddingSpace:(CGPoint)a3;
- (BOOL)_isRepeatedTap:(id)a3;
- (BOOL)_liveSelectionGestureStillActive;
- (BOOL)_locationShouldFlipOverLeftKnob:(CGPoint)a3;
- (BOOL)_locationShouldFlipOverLeftKnob_LTR:(CGPoint)a3;
- (BOOL)_locationShouldFlipOverLeftKnob_RTL:(CGPoint)a3;
- (BOOL)_locationShouldFlipOverRightKnob:(CGPoint)a3;
- (BOOL)_locationShouldFlipOverRightKnob_LTR:(CGPoint)a3;
- (BOOL)_locationShouldFlipOverRightKnob_RTL:(CGPoint)a3;
- (BOOL)_selectionInteractionShouldBeginAtPoint:(CGPoint)a3 forEvent:(id)a4 orGestureRecognizer:(id)a5;
- (BOOL)_selectionInteractionShouldForwardAtPoint:(CGPoint)a3 forEvent:(id)a4;
- (BOOL)_selectionShouldReceiveTouchForPoint:(CGPoint)a3;
- (BOOL)currentSelectionHasStrokes;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)gesturesAllowedForPaletteState;
- (BOOL)hasCurrentSelection;
- (BOOL)hasStrokesAtLocation:(CGPoint)a3;
- (BOOL)hasStrokesOrElementsSelection;
- (BOOL)isLTR;
- (BOOL)knobsContainPoint:(CGPoint)a3 forInputType:(int64_t)a4;
- (CGPoint)_drawingBeganLocation;
- (CGPoint)_pointFromViewToStrokeSpace:(CGPoint)a3 inDrawing:(id)a4;
- (CGPoint)_undraggedKnobLocation:(int64_t)a3 forInitialStrokeBounds:(CGRect)a4;
- (CGPoint)clampInputPointForSelection:(CGPoint)a3 forDrawing:(id)a4;
- (PKSelectionController)selectionController;
- (PKSelectionInteraction)initWithSelectionController:(id)a3;
- (PKSelectionInteractionDelegate)delegate;
- (UIView)view;
- (double)_timestampForGestureRecognizer:(id)a3;
- (double)_timestampForTouch:(id)a3;
- (double)_updateVelocityWindowWithTimestamp:(double)a3 location:(CGPoint)a4;
- (double)_updateVelocityWindowWithTouch:(id)a3 location:(CGPoint)a4;
- (id)_adornmentLayers;
- (id)_closestStrokesToCorner:(unint64_t)a3 fromStrokes:(id)a4;
- (id)_drawingForLocation:(CGPoint)a3;
- (id)_firstStrokesInStrokes:(id)a3;
- (id)_gestures;
- (id)_gesturesForLiveSelection;
- (id)_knobForLocation:(CGPoint)a3 forInputType:(int64_t)a4;
- (id)_lastStrokesInStrokes:(id)a3;
- (id)_selectionModifierGestures;
- (id)_visibleOnscreenStrokesForDrawing:(id)a3;
- (id)firstStrokeAtLocation:(CGPoint)a3;
- (int64_t)_selectionTypeForTapCount:(int64_t)a3;
- (int64_t)_selectionTypeForVelocity:(double)a3;
- (int64_t)_updateSmartSelectionWithInput:(id)a3 modificationType:(int64_t)a4 liveScrollOffset:(CGPoint)a5 completion:(id)a6;
- (void)_addInsertSpaceAffordance;
- (void)_addInsertSpaceAffordanceGestureIfNecessary;
- (void)_calculateFirstAndLastStrokeForKnobPlacement;
- (void)_cleanupInsertSpaceAffordance;
- (void)_clearLiveSelectionPath;
- (void)_didAddSelectionView:(id)a3;
- (void)_didBeginDraggingSelection:(id)a3;
- (void)_didBeginSelection:(id)a3;
- (void)_didBrushWithKnob:(id)a3;
- (void)_didDragKnob:(id)a3;
- (void)_didEndDraggingSelection:(id)a3;
- (void)_didEndLassoAddingSpaceAtLocation:(CGPoint)a3;
- (void)_didEndLassoSelectionWithPath:(id)a3;
- (void)_didGrabInsertSpaceAffordance:(id)a3;
- (void)_didSmartSelectTap:(id)a3;
- (void)_didTapAndDrag:(id)a3;
- (void)_dismissEditMenuIfNecessary;
- (void)_handleSingleTap:(id)a3;
- (void)_intersectedStrokesInDrawing:(id)a3 forSelectionInput:(id)a4 existingSelection:(id)a5 completion:(id)a6;
- (void)_pressAndHoldLinearExpand:(id)a3;
- (void)_resetVelocityWindow;
- (void)_selectViaContinuousTapWithInput:(id)a3;
- (void)_setupGestures;
- (void)_toolPickerDidShowHide:(id)a3;
- (void)_updateAllowedTouchTypesForLassoGR;
- (void)_updateAllowedTouchTypesForSelectedInk:(id)a3;
- (void)_updateAllowedTouchTypesForSelectedInk:(id)a3 hasCurrentSelection:(BOOL)a4;
- (void)_updateInsertSpaceAffordancePosition;
- (void)_updateLiveLassoPath:(CGPath *)a3;
- (void)_updateProgressiveTapSelectionWithSelectionInput:(id)a3 existingSelection:(id)a4;
- (void)_updateSmartSelectionWithDragToLocation:(CGPoint)a3 liveScrollOffset:(CGPoint)a4 initialSelectedWord:(id)a5 completion:(id)a6;
- (void)_updateStateIfNecessaryWithOldModificationType:(int64_t)a3 newModificationType:(int64_t)a4;
- (void)_updateTapGestureHistoryWithLocation:(CGPoint)a3 gesture:(id)a4;
- (void)_updateUndraggedKnobLocationForKnobDrag;
- (void)_willRemoveSelectionView:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)didResizeExternalElements;
- (void)dismissEditMenuIfNecessary;
- (void)setEnabled:(BOOL)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation PKSelectionInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (id)_adornmentLayers
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [(PKSelectionRendering *)self->_lassoRenderer adornmentLayer];
  v7[0] = v3;
  v4 = [(PKSelectionGlowRenderer *)self->_glowRenderer adornmentLayer];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

- (void)_setupGestures
{
  v3 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__didBeginSelection_];
  lassoGestureRecognizer = self->_lassoGestureRecognizer;
  self->_lassoGestureRecognizer = v3;

  [(UIPanGestureRecognizer *)self->_lassoGestureRecognizer setName:@"com.apple.PencilKit.lasso"];
  [(UIPanGestureRecognizer *)self->_lassoGestureRecognizer setDelegate:self];
  [(UIPanGestureRecognizer *)self->_lassoGestureRecognizer setMaximumNumberOfTouches:1];
  v5 = [(PKSelectionInteraction *)self view];
  [v5 addGestureRecognizer:self->_lassoGestureRecognizer];

  v6 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__didBrushWithKnob_];
  knobBrushGestureRecognizer = self->_knobBrushGestureRecognizer;
  self->_knobBrushGestureRecognizer = v6;

  [(UILongPressGestureRecognizer *)self->_knobBrushGestureRecognizer setName:@"com.apple.PencilKit.knobBrush"];
  [(UILongPressGestureRecognizer *)self->_knobBrushGestureRecognizer setDelegate:self];
  v8 = [(PKSelectionInteraction *)self view];
  [v8 addGestureRecognizer:self->_knobBrushGestureRecognizer];

  v9 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__didDragKnob_];
  knobDragGestureRecognizer = self->_knobDragGestureRecognizer;
  self->_knobDragGestureRecognizer = v9;

  [(UIPanGestureRecognizer *)self->_knobDragGestureRecognizer setName:@"com.apple.PencilKit.knobDrag"];
  [(UIPanGestureRecognizer *)self->_knobDragGestureRecognizer setDelegate:self];
  v11 = [(PKSelectionInteraction *)self view];
  [v11 addGestureRecognizer:self->_knobDragGestureRecognizer];

  v12 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__eatGesture_];
  noOpTapGestureRecognizer = self->_noOpTapGestureRecognizer;
  self->_noOpTapGestureRecognizer = v12;

  [(UITapGestureRecognizer *)self->_noOpTapGestureRecognizer setName:@"com.apple.PencilKit.noOpTap"];
  [(UITapGestureRecognizer *)self->_noOpTapGestureRecognizer setDelegate:self];
  v14 = [(PKSelectionInteraction *)self view];
  [v14 addGestureRecognizer:self->_noOpTapGestureRecognizer];

  v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__didSmartSelectTap_];
  progressiveTapGestureRecognizer = self->_progressiveTapGestureRecognizer;
  self->_progressiveTapGestureRecognizer = v15;

  [(UITapGestureRecognizer *)self->_progressiveTapGestureRecognizer setName:@"com.apple.PencilKit.progressiveTaps"];
  [(UITapGestureRecognizer *)self->_progressiveTapGestureRecognizer setDelegate:self];
  [(UITapGestureRecognizer *)self->_progressiveTapGestureRecognizer setNumberOfTouchesRequired:1];
  [(UITapGestureRecognizer *)self->_progressiveTapGestureRecognizer setNumberOfTapsRequired:1];
  [(UITapGestureRecognizer *)self->_progressiveTapGestureRecognizer setAllowableMovement:10.0];
  v17 = [(PKSelectionInteraction *)self view];
  [v17 addGestureRecognizer:self->_progressiveTapGestureRecognizer];

  v18 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:self action:sel__pressAndHoldLinearExpand_];
  tapAndHoldToSelectLongPressGestureRecognizer = self->_tapAndHoldToSelectLongPressGestureRecognizer;
  self->_tapAndHoldToSelectLongPressGestureRecognizer = v18;

  [(UILongPressGestureRecognizer *)self->_tapAndHoldToSelectLongPressGestureRecognizer setName:@"com.apple.PencilKit.longPressToSelectToken"];
  [(UILongPressGestureRecognizer *)self->_tapAndHoldToSelectLongPressGestureRecognizer setDelegate:self];
  v20 = [(PKSelectionInteraction *)self view];
  [v20 addGestureRecognizer:self->_tapAndHoldToSelectLongPressGestureRecognizer];

  v21 = [objc_alloc(NSClassFromString(&cfstr_Uitapandahalfr.isa)) initWithTarget:self action:sel__didTapAndDrag_];
  modifySelectionRecognizer = self->_modifySelectionRecognizer;
  self->_modifySelectionRecognizer = v21;

  [(UITapAndAHalfRecognizer *)self->_modifySelectionRecognizer setName:@"com.apple.PencilKit.modifySelection"];
  [(UITapAndAHalfRecognizer *)self->_modifySelectionRecognizer setDelegate:self];
  [(UITapAndAHalfRecognizer *)self->_modifySelectionRecognizer setNumberOfFullTaps:1];
  v23 = [(PKSelectionInteraction *)self view];
  [v23 addGestureRecognizer:self->_modifySelectionRecognizer];

  if ([(PKSelectionInteraction *)self _insertSpaceAffordanceEnabled])
  {

    [(PKSelectionInteraction *)self _addInsertSpaceAffordanceGestureIfNecessary];
  }
}

- (BOOL)_insertSpaceAffordanceEnabled
{
  v3 = [(PKSelectionInteraction *)self selectionController];
  v4 = v3;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(PKSelectionInteraction *)self selectionController];
    if (v6)
    {
      v7 = v6[114];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (PKSelectionController)selectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);

  return WeakRetained;
}

- (id)_gestures
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  knobBrushGestureRecognizer = self->_knobBrushGestureRecognizer;
  knobDragGestureRecognizer = self->_knobDragGestureRecognizer;
  v9[0] = self->_lassoGestureRecognizer;
  v9[1] = knobDragGestureRecognizer;
  v9[2] = knobBrushGestureRecognizer;
  v10 = *&self->_noOpTapGestureRecognizer;
  tapAndHoldToSelectLongPressGestureRecognizer = self->_tapAndHoldToSelectLongPressGestureRecognizer;
  modifySelectionRecognizer = self->_modifySelectionRecognizer;
  v12 = tapAndHoldToSelectLongPressGestureRecognizer;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:7];
  [v3 addObjectsFromArray:v7];
  if (self->_insertSpaceEnabled && self->_insertSpaceAffordanceGesture)
  {
    [v3 addObject:?];
  }

  [v3 addObjectsFromArray:self->_selectionViewGestures];

  return v3;
}

- (void)_updateAllowedTouchTypesForLassoGR
{
  v3 = [(PKSelectionInteraction *)self selectionController];
  v4 = v3;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained ink];
  v7 = [v6 _isLassoInk];

  if (v7)
  {
    if (!PKIsVisionDevice())
    {
      v10 = [(PKSelectionInteraction *)self selectionController];
      v13 = v10;
      if (v10)
      {
        v11 = objc_loadWeakRetained((v10 + 120));
      }

      else
      {
        v11 = 0;
      }

      if ([v11 allowsFingerDrawing])
      {
        v12 = &unk_1F47C1AA8;
      }

      else
      {
        v12 = &unk_1F47C1A90;
      }

      [(UIPanGestureRecognizer *)self->_lassoGestureRecognizer setAllowedTouchTypes:v12];
    }
  }

  else
  {
    lassoGestureRecognizer = self->_lassoGestureRecognizer;
    v9 = MEMORY[0x1E695E0F0];

    [(UIPanGestureRecognizer *)lassoGestureRecognizer setAllowedTouchTypes:v9];
  }
}

- (void)_addInsertSpaceAffordanceGestureIfNecessary
{
  v3 = [(PKSelectionInteraction *)self selectionController];
  if (v3 && v3[114] == 1)
  {
    insertSpaceAffordanceGesture = self->_insertSpaceAffordanceGesture;

    if (insertSpaceAffordanceGesture)
    {
      return;
    }

    v5 = objc_alloc_init(MEMORY[0x1E69DCD28]);
    v6 = self->_insertSpaceAffordanceGesture;
    self->_insertSpaceAffordanceGesture = v5;

    [(UIPanGestureRecognizer *)self->_insertSpaceAffordanceGesture setDelegate:self];
    [(UIPanGestureRecognizer *)self->_insertSpaceAffordanceGesture addTarget:self action:sel__didGrabInsertSpaceAffordance_];
    v7 = [(PKSelectionInteraction *)self view];
    [v7 addGestureRecognizer:self->_insertSpaceAffordanceGesture];
    v3 = v7;
  }
}

- (PKSelectionInteraction)initWithSelectionController:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKSelectionInteraction;
  v5 = [(PKSelectionInteraction *)&v13 init];
  if (v5)
  {
    v6 = [[PKLassoRenderer alloc] initForLiveSelectionWithRenderingDelegate:v4];
    lassoRenderer = v5->_lassoRenderer;
    v5->_lassoRenderer = v6;

    v8 = [[PKSelectionGlowRenderer alloc] initForLiveSelectionWithRenderingDelegate:v4];
    glowRenderer = v5->_glowRenderer;
    v5->_glowRenderer = v8;

    objc_storeWeak(&v5->_selectionController, v4);
    v10 = [MEMORY[0x1E695DF70] array];
    selectionViewGestures = v5->_selectionViewGestures;
    v5->_selectionViewGestures = v10;

    v5->_enabled = 1;
  }

  return v5;
}

- (void)willMoveToView:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = [(PKSelectionInteraction *)self _adornmentLayers];
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v22 + 1) + 8 * v8++) removeFromSuperlayer];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [(PKSelectionInteraction *)self _gestures];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          v15 = [(PKSelectionInteraction *)self view];
          [v15 removeGestureRecognizer:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v11);
    }

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 removeObserver:self name:@"PKToolPickerDidShowNotification" object:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 removeObserver:self name:@"PKToolPickerDidHideNotification" object:0];
  }
}

- (void)didMoveToView:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  [(PKSelectionInteraction *)self setView:?];
  if (a3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(PKSelectionInteraction *)self _adornmentLayers];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v11 = [(PKSelectionInteraction *)self view];
          v12 = [v11 layer];
          [v12 addSublayer:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [(PKSelectionInteraction *)self _setupGestures];
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:self selector:sel__toolPickerDidShowHide_ name:@"PKToolPickerDidShowNotification" object:0];

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:self selector:sel__toolPickerDidShowHide_ name:@"PKToolPickerDidHideNotification" object:0];
  }
}

- (BOOL)hasCurrentSelection
{
  v2 = [(PKSelectionInteraction *)self selectionController];
  if (v2)
  {
    v3 = v2[16] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)currentSelectionHasStrokes
{
  v2 = [(PKSelectionInteraction *)self selectionController];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 128);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 strokes];
  v7 = [v6 count] != 0;

  return v7;
}

- (BOOL)hasStrokesOrElementsSelection
{
  v3 = [(PKSelectionInteraction *)self selectionController];
  v4 = v3;
  if (v3 && *(v3 + 128))
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PKSelectionInteraction *)self selectionController];
    v5 = [(PKSelectionController *)v6 _hasExternalElementsSelectedInAttachment:?];
  }

  return v5;
}

- (id)firstStrokeAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v4 = [(PKSelectionInteraction *)self _drawingForLocation:?];
  v5 = [(PKSelectionInteraction *)self selectionController];
  v6 = v5;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v8 = [v4 uuid];
  v9 = [WeakRetained _attachmentForUUID:v8];

  v10 = [v9 strokeSpatialCache];
  v11 = v10;
  if (v10 && (*(v10 + 8) & 1) != 0)
  {
    v12 = [v9 strokeSpatialCache];
    v13 = v12;
    if (v12)
    {
      v14 = *(v12 + 24);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = [v4 strokes];
  }

  v16 = [(PKSelectionInteraction *)self selectionController];
  v17 = v16;
  if (v16)
  {
    v18 = objc_loadWeakRetained((v16 + 120));
    v19 = v18;
    if (v18)
    {
      [v18 transformFromViewToStrokeSpaceInDrawing:v4];
      v20 = v28;
      v21 = v29;
      v22 = v30;
      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = 0uLL;
  v21 = 0uLL;
  v22 = 0uLL;
LABEL_15:
  v27 = vaddq_f64(v22, vmlaq_n_f64(vmulq_n_f64(v21, y), v20, x));

  v23 = [v4 firstIntersectedStrokeAtPoint:0 inputType:v15 visibleOnscreenStrokes:*&v27];

  return v23;
}

- (BOOL)hasStrokesAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v4 = [(PKSelectionInteraction *)self _drawingForLocation:?];
  v5 = [(PKSelectionInteraction *)self selectionController];
  v6 = v5;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v8 = [v4 uuid];
  v9 = [WeakRetained _attachmentForUUID:v8];

  v10 = [v9 strokeSpatialCache];
  v11 = v10;
  if (v10 && (*(v10 + 8) & 1) != 0)
  {
    v12 = [v9 strokeSpatialCache];
    v13 = v12;
    if (v12)
    {
      v14 = *(v12 + 24);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = [v4 strokes];
  }

  v16 = [(PKSelectionInteraction *)self selectionController];
  v17 = v16;
  if (!v16)
  {
    v19 = 0;
    goto LABEL_14;
  }

  v18 = objc_loadWeakRetained((v16 + 120));
  v19 = v18;
  if (!v18)
  {
LABEL_14:
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    goto LABEL_15;
  }

  [v18 transformFromViewToStrokeSpaceInDrawing:v4];
  v20 = v29;
  v21 = v30;
  v22 = v31;
LABEL_15:
  v28 = vaddq_f64(v22, vmlaq_n_f64(vmulq_n_f64(v21, y), v20, x));

  v23 = [v4 intersectedStrokesAtPoint:1 selectionType:0 inputType:v15 visibleOnscreenStrokes:*&v28];
  v24 = [v23 count] != 0;

  return v24;
}

- (void)didResizeExternalElements
{
  v2 = [(PKSelectionInteraction *)self selectionController];
  [(PKSelectionController *)v2 _didResizeExternalElements];
}

- (id)_gesturesForLiveSelection
{
  v7[4] = *MEMORY[0x1E69E9840];
  knobDragGestureRecognizer = self->_knobDragGestureRecognizer;
  tapAndHoldToSelectLongPressGestureRecognizer = self->_tapAndHoldToSelectLongPressGestureRecognizer;
  modifySelectionRecognizer = self->_modifySelectionRecognizer;
  v7[0] = self->_knobBrushGestureRecognizer;
  v7[1] = modifySelectionRecognizer;
  v7[2] = knobDragGestureRecognizer;
  v7[3] = tapAndHoldToSelectLongPressGestureRecognizer;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];

  return v5;
}

- (BOOL)_liveSelectionGestureStillActive
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(PKSelectionInteraction *)self _gesturesForLiveSelection];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 state] == 1 || objc_msgSend(v7, "state") == 2)
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v8 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (void)_didGrabInsertSpaceAffordance:(id)a3
{
  v9 = a3;
  v4 = [v9 state];
  if (v4 == 1 || [v9 state] == 3 || objc_msgSend(v9, "state") == 4 || objc_msgSend(v9, "state") == 5)
  {
    [(PKDrawingAdjustmentKnob *)self->_insertSpaceAffordance setHidden:v4 == 1];
  }

  v5 = [(PKSelectionInteraction *)self selectionController];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 144);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v8 _didGrabInsertSpaceAffordance:v9];
}

- (id)_selectionModifierGestures
{
  v5[2] = *MEMORY[0x1E69E9840];
  knobBrushGestureRecognizer = self->_knobBrushGestureRecognizer;
  v5[0] = self->_knobDragGestureRecognizer;
  v5[1] = knobBrushGestureRecognizer;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

- (void)_didAddSelectionView:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKSelectionInteraction *)self view];
  v6 = [v5 window];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __47__PKSelectionInteraction__didAddSelectionView___block_invoke;
  v31[3] = &unk_1E82D6E70;
  v31[4] = self;
  v7 = v4;
  v32 = v7;
  [PKToolPicker _performWithVisibilityUpdatesEnabled:0 window:v6 block:v31];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v7 _selectionViewGestures];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        [v13 setDelegate:self];
        [(NSMutableArray *)self->_selectionViewGestures addObject:v13];
        v14 = [(PKSelectionInteraction *)self view];
        [v14 addGestureRecognizer:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v10);
  }

  if ([(PKSelectionInteraction *)self _insertSpaceAffordanceEnabled])
  {
    [(PKSelectionInteraction *)self _cleanupInsertSpaceAffordance];
    [(PKSelectionInteraction *)self _addInsertSpaceAffordance];
  }

  v15 = [(PKSelectionInteraction *)self selectionController];
  v16 = v15;
  if (v15)
  {
    WeakRetained = objc_loadWeakRetained((v15 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v18 = [WeakRetained ink];
  [(PKSelectionInteraction *)self _updateAllowedTouchTypesForSelectedInk:v18 hasCurrentSelection:1];

  v19 = [(PKSelectionInteraction *)self selectionController];
  v20 = v19;
  if (v19)
  {
    v21 = objc_loadWeakRetained((v19 + 120));
  }

  else
  {
    v21 = 0;
  }

  v22 = [v21 allowsFingerDrawing];

  if ((v22 & 1) == 0)
  {
    [(UIPanGestureRecognizer *)self->_lassoGestureRecognizer setAllowedTouchTypes:&unk_1F47C1A48];
  }

  v23 = [(PKSelectionInteraction *)self view];
  v24 = [v23 window];
  v25 = [PKToolPicker activeToolPickerForWindow:v24];

  if (v25)
  {
    v26 = [v25 _selectionContext];
    [v26 setSelectionMask:{objc_msgSend(v26, "selectionMask") | 1}];
  }
}

void __47__PKSelectionInteraction__didAddSelectionView___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 addSubview:*(a1 + 40)];
}

- (void)_willRemoveSelectionView:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [a3 _selectionViewGestures];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        [(NSMutableArray *)self->_selectionViewGestures removeObject:v9];
        v10 = [(PKSelectionInteraction *)self view];
        [v10 removeGestureRecognizer:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v11 = [(PKSelectionInteraction *)self selectionController];
  v12 = v11;
  if (v11)
  {
    WeakRetained = objc_loadWeakRetained((v11 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v14 = [WeakRetained ink];
  [(PKSelectionInteraction *)self _updateAllowedTouchTypesForSelectedInk:v14 hasCurrentSelection:0];

  if ([(PKSelectionInteraction *)self _insertSpaceAffordanceEnabled])
  {
    [(PKSelectionInteraction *)self _cleanupInsertSpaceAffordance];
  }

  v15 = [(PKSelectionInteraction *)self view];
  v16 = [v15 window];
  v17 = [PKToolPicker activeToolPickerForWindow:v16];

  if (v17)
  {
    v18 = [v17 _selectionContext];
    [v18 setSelectionMask:{objc_msgSend(v18, "selectionMask") & 0xFFFFFFFFFFFFFFFELL}];
  }
}

- (void)_toolPickerDidShowHide:(id)a3
{
  v24 = a3;
  v4 = [v24 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"PKToolPickerNotificationWindowSceneUserInfoKey"];
  v6 = [(PKSelectionInteraction *)self view];
  v7 = [v6 window];
  v8 = [v7 windowScene];

  v9 = v24;
  if (v5 == v8)
  {
    v10 = [v24 object];
    v11 = [(PKSelectionInteraction *)self selectionController];
    if (v11)
    {
      v12 = v11[16];

      if (!v12)
      {
LABEL_13:

        v9 = v24;
        goto LABEL_14;
      }

      v13 = [(PKSelectionInteraction *)self selectionController];
      v14 = v13;
      if (v13)
      {
        v15 = *(v13 + 128);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v17 = [v16 drawing];

      v18 = [(PKSelectionInteraction *)self selectionController];
      v19 = v18;
      if (v18)
      {
        WeakRetained = objc_loadWeakRetained((v18 + 120));
      }

      else
      {
        WeakRetained = 0;
      }

      v21 = [v17 uuid];
      v22 = [WeakRetained _attachmentForUUID:v21];

      if (v22 && ([v22 isExternalAttachment] & 1) == 0)
      {
        v23 = [v10 _selectionContext];
        [v23 setSelectionMask:{objc_msgSend(v23, "selectionMask") | 1}];
      }
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)_didBeginDraggingSelection:(id)a3
{
  [(PKDrawingAdjustmentKnob *)self->_insertSpaceAffordance setAlpha:a3, 0.0];
  v4 = [(PKSelectionInteraction *)self selectionController];
  v7 = v4;
  if (v4)
  {
    v5 = *(v4 + 144);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v6 invalidateCachedStrokes];
}

- (void)_didEndDraggingSelection:(id)a3
{
  [(PKDrawingAdjustmentKnob *)self->_insertSpaceAffordance setAlpha:a3, 1.0];

  [(PKSelectionInteraction *)self _updateInsertSpaceAffordancePosition];
}

- (void)setEnabled:(BOOL)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_enabled != a3)
  {
    v3 = a3;
    self->_enabled = a3;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [(PKSelectionInteraction *)self _gestures];
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

          [*(*(&v9 + 1) + 8 * v8++) setEnabled:v3];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_cleanupInsertSpaceAffordance
{
  [(PKDrawingAdjustmentKnob *)self->_insertSpaceAffordance removeFromSuperview];
  insertSpaceAffordance = self->_insertSpaceAffordance;
  self->_insertSpaceAffordance = 0;
}

- (void)_addInsertSpaceAffordance
{
  v3 = objc_alloc_init(PKDrawingAdjustmentKnob);
  insertSpaceAffordance = self->_insertSpaceAffordance;
  self->_insertSpaceAffordance = v3;

  v5 = self->_insertSpaceAffordance;
  v6 = [(PKSelectionInteraction *)self view];
  v7 = [v6 tintColor];
  [(PKDrawingAdjustmentKnob *)v5 setTintColor:v7];

  [(PKSelectionInteraction *)self _updateInsertSpaceAffordancePosition];
  v8 = [(PKSelectionInteraction *)self view];
  [v8 addSubview:self->_insertSpaceAffordance];
}

- (void)_updateInsertSpaceAffordancePosition
{
  v3 = [(PKSelectionInteraction *)self view];
  v4 = [v3 effectiveUserInterfaceLayoutDirection];
  v5 = [(PKSelectionInteraction *)self selectionController];
  v6 = [(PKSelectionController *)v5 topView];
  [v6 frame];
  v11 = v7;
  if (v4)
  {
    MaxX = CGRectGetMaxX(*&v7);
    +[PKDrawingAdjustmentKnob leftMargin];
    v14 = MaxX - v13 + -15.0;
  }

  else
  {
    +[PKDrawingAdjustmentKnob leftMargin];
    v14 = v11 + v15;
  }

  v16 = [(PKSelectionInteraction *)self selectionController];
  v17 = v16;
  if (v16)
  {
    v18 = *(v16 + 152);
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  [v19 frame];
  v21 = v20 + -10.0;

  insertSpaceAffordance = self->_insertSpaceAffordance;

  [(PKDrawingAdjustmentKnob *)insertSpaceAffordance setFrame:v14, v21, 15.0, 16.0];
}

- (id)_drawingForLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(PKSelectionInteraction *)self selectionController];
  v6 = [(PKSelectionController *)v5 _drawingForSelectionRect:y + -22.0, 44.0, 44.0];

  return v6;
}

- (double)_timestampForGestureRecognizer:(id)a3
{
  v4 = [a3 touches];
  v5 = [v4 lastObject];

  [(PKSelectionInteraction *)self _timestampForTouch:v5];
  v7 = v6;

  return v7;
}

- (double)_timestampForTouch:(id)a3
{
  if (a3)
  {

    [a3 timestamp];
  }

  else
  {
    v5 = [MEMORY[0x1E696AE30] processInfo];
    [v5 systemUptime];
    v7 = v6;

    return v7;
  }

  return result;
}

- (void)_clearLiveSelectionPath
{
  [(PKSelectionGlowRenderer *)self->_glowRenderer _renderLiveSelectionPath:0 forStrokes:0 inDrawing:0 liveScrollOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  smartSelectedStrokes = self->_smartSelectedStrokes;
  self->_smartSelectedStrokes = 0;
}

- (void)_didSmartSelectTap:(id)a3
{
  v44[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKSelectionInteraction *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(PKSelectionInteraction *)self _drawingForLocation:v7, v9];
  [(PKSelectionInteraction *)self setCurrentDrawing:v10];

  v11 = [v4 touches];
  v12 = [v11 firstObject];

  v13 = [v12 type] == 2;
  if ([v4 state] == 3)
  {
    if (![(PKSelectionInteraction *)self _isRepeatedTap:v4])
    {
      self->_currentTapCount = 1;
      v43[0] = @"locationValue";
      v25 = [MEMORY[0x1E696B098] valueWithCGPoint:{v7, v9}];
      v43[1] = @"gestureRecognizer";
      v44[0] = v25;
      v44[1] = v4;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];

      v27 = sel__handleSingleTap_;
      goto LABEL_19;
    }

    if (self->_currentTapCount != 1)
    {
LABEL_15:
      if (![(PKSelectionInteraction *)self gesturesAllowedForPaletteState])
      {
        goto LABEL_20;
      }

      [(PKSelectionInteraction *)self _dismissEditMenuIfNecessary];
      ++self->_currentTapCount;
      v26 = [PKSelectionInput inputWithType:[(PKSelectionInteraction *)self _selectionTypeForTapCount:?] location:v13 inputType:v7, v9];
      v31 = [(PKSelectionInteraction *)self selectionController];
      v32 = v31;
      if (v31)
      {
        v33 = *(v31 + 128);
      }

      else
      {
        v33 = 0;
      }

      v34 = v33;
      v35 = [v34 strokes];
      v36 = [v35 array];
      [(PKSelectionInteraction *)self _updateProgressiveTapSelectionWithSelectionInput:v26 existingSelection:v36];

      [(PKSelectionInteraction *)self _cancelDeferredPasteFromTappingAction];
      v27 = sel__selectViaContinuousTapWithInput_;
LABEL_19:
      [(PKSelectionInteraction *)self performSelector:v27 withObject:v26 afterDelay:0.35];

      [(PKSelectionInteraction *)self _updateTapGestureHistoryWithLocation:v4 gesture:v7, v9];
      goto LABEL_20;
    }

    v14 = [(PKSelectionInteraction *)self _drawingForLocation:v7, v9];
    v15 = [(PKSelectionInteraction *)self selectionController];
    v16 = v15;
    v17 = 0.0;
    if (v15)
    {
      WeakRetained = objc_loadWeakRetained((v15 + 120));
      v19 = WeakRetained;
      if (WeakRetained)
      {
        [WeakRetained transformFromViewToStrokeSpaceInDrawing:v14];
        v21 = v37;
        v20 = v38;
        v23 = v39;
        v22 = v40;
        v24 = v41;
        v17 = v42;
LABEL_10:

        v28 = [(PKSelectionInteraction *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v29 = [(PKSelectionInteraction *)self delegate];
          v30 = [v29 selectionInteraction:self handleDoubleTapOnCanvasAtLocation:{v24 + v9 * v23 + v21 * v7, v17 + v9 * v22 + v20 * v7}];

          if (v30)
          {
            [(PKSelectionInteraction *)self _cancelDeferredPasteFromTappingAction];
            self->_currentTapCount = 1;

            goto LABEL_20;
          }
        }

        else
        {
        }

        goto LABEL_15;
      }
    }

    else
    {
      v19 = 0;
    }

    v22 = 0.0;
    v20 = 0.0;
    v24 = 0.0;
    v23 = 0.0;
    v21 = 0.0;
    goto LABEL_10;
  }

LABEL_20:
}

- (int64_t)_selectionTypeForTapCount:(int64_t)a3
{
  v3 = 2;
  if (a3 > 2)
  {
    v3 = a3;
  }

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

- (void)_updateTapGestureHistoryWithLocation:(CGPoint)a3 gesture:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(PKSelectionInteraction *)self _timestampForGestureRecognizer:a4];
  self->_lastTapLocation.y = y;
  self->_lastTapTimestamp = v7;
  self->_lastTapLocation.x = x;
}

- (BOOL)_isRepeatedTap:(id)a3
{
  v4 = a3;
  v5 = [(PKSelectionInteraction *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  LODWORD(v5) = [(PKSelectionInteraction *)self _isWithinRepeatedTapTimeForGesture:v4];
  if (!v5)
  {
    return 0;
  }

  v10 = sqrt((v9 - self->_lastTapLocation.y) * (v9 - self->_lastTapLocation.y) + (v7 - self->_lastTapLocation.x) * (v7 - self->_lastTapLocation.x));
  return v10 * v10 < 625.0;
}

- (void)_handleSingleTap:(id)a3
{
  v86[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 valueForKey:@"locationValue"];
  [v5 CGPointValue];
  v81 = v6;
  v82 = v7;

  v8 = [v4 valueForKey:@"gestureRecognizer"];

  v9 = [(PKSelectionInteraction *)self selectionController];
  v10 = v9;
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((v9 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v13 = [(PKSelectionInteraction *)self selectionController];
  v14 = v13;
  if (v13)
  {
    v15 = objc_loadWeakRetained((v13 + 120));
  }

  else
  {
    v15 = 0;
  }

  v16 = [(PKSelectionInteraction *)self currentDrawing];
  v17 = [v16 uuid];
  v18 = [v15 _attachmentForUUID:v17];

  if (isKindOfClass)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (isKindOfClass)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  if (v20 | v19)
  {
    v21 = objc_opt_class();
    v22 = PKDynamicCast(v21, v20);
    v23 = objc_opt_class();
    v24 = PKDynamicCast(v23, v19);
    v25 = [(PKSelectionInteraction *)self selectionController];
    v26 = v25;
    if (v25)
    {
      v27 = objc_loadWeakRetained((v25 + 120));
    }

    else
    {
      v27 = 0;
    }

    v28 = [(PKSelectionInteraction *)self currentDrawing];
    if (v27)
    {
      [v27 transformFromViewToStrokeSpaceInDrawing:v28];
      v72 = v84;
      v74 = v83;
      v76 = v85;
    }

    else
    {
      v74 = 0u;
      v76 = 0u;
      v72 = 0u;
    }

    if (v22)
    {
      v29 = v22;
    }

    else
    {
      v29 = v24;
    }

    v80 = v29;
    v30 = [(PKSelectionInteraction *)self firstStrokeAtLocation:v81, v82];
    v79 = v24;
    if (v30)
    {
      v31 = [(PKSelectionInteraction *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v32 = [v80 recognitionManager];
        v33 = [v30 _strokeUUID];
        v34 = [(PKRecognitionSessionManager *)v32 didHitHandwritingStroke:v33];

        v24 = v79;
        if (v34)
        {
          v35 = [(PKSelectionInteraction *)self delegate:v72];
          v86[0] = v30;
          v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:1];
          v37 = [v20 attachmentView];
          [v35 selectionInteraction:self handleTapOnCanvasAtLocation:v36 hitStrokes:v37 inAttachment:{v81, v82}];
LABEL_44:

LABEL_45:
          v24 = v79;
LABEL_46:

          goto LABEL_47;
        }
      }

      else
      {
      }
    }

    v38 = [(PKSelectionInteraction *)self delegate:v72];
    v39 = objc_opt_respondsToSelector();

    if (v39)
    {
      if (v20 && [v20 isExternalAttachment])
      {
        v40 = [(PKSelectionInteraction *)self delegate];
        v41 = [v20 attachmentView];
        v42 = [v40 selectionInteraction:self handleTapOnCanvasAtLocation:v41 inAttachment:{v81, v82}];

        if (v42)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v43 = [(PKSelectionInteraction *)self view];
        [v80 convertPoint:v43 fromView:{v81, v82}];
        v45 = v44;
        v47 = v46;

        v48 = [(PKSelectionInteraction *)self delegate];
        v49 = [v48 selectionInteraction:self handleTapOnCanvasAtLocation:v80 inAttachment:{v45, v47}];

        if (v49)
        {
LABEL_47:

          goto LABEL_48;
        }
      }
    }

    v77 = vaddq_f64(v76, vmlaq_n_f64(vmulq_n_f64(v73, v82), v75, v81));
    v50 = [(PKSelectionInteraction *)self selectionController];
    v35 = [(PKSelectionController *)v50 _externalElementsAtLocation:v20 inAttachment:v77.f64[0], v77.f64[1]];

    v51 = [v35 count];
    v52 = [(PKSelectionInteraction *)self selectionController];
    v53 = v52;
    if (v51)
    {
      v36 = [(PKSelectionController *)v52 _selectedExternalElementsInAttachment:v20];

      if (([v35 isEqualToOrderedSet:v36] & 1) == 0)
      {
        v54 = [(PKSelectionInteraction *)self selectionController];
        v55 = v54;
        if (v54)
        {
          [(PKSelectionController *)v54 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
        }
      }

      v37 = [(PKSelectionInteraction *)self selectionController];
      v56 = [v35 firstObject];
      [(PKSelectionController *)v37 _didTapElement:v56 withGesture:v8 inAttachment:v20];
LABEL_37:

      goto LABEL_44;
    }

    v57 = [(PKSelectionController *)v52 _hasStrokesOrExternalElementsSelectedInAttachment:v20];

    if (v57)
    {
      v58 = [(PKSelectionInteraction *)self selectionController];
      v59 = v58;
      if (v58)
      {
        [(PKSelectionController *)v58 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
      }

      v60 = [(PKSelectionInteraction *)self selectionController];
      v36 = v60;
      if (v60)
      {
        v61 = *(v60 + 144);
      }

      else
      {
        v61 = 0;
      }

      v37 = v61;
      [v37 invalidateCachedStrokes];
      goto LABEL_44;
    }

    if (v20)
    {
      v62 = [(PKSelectionInteraction *)self selectionController];
      v63 = v62;
      if (v62)
      {
        v64 = objc_loadWeakRetained((v62 + 120));
      }

      else
      {
        v64 = 0;
      }

      v65 = [v64 editMenuVisible];

      if (!v65)
      {
        v70 = objc_opt_class();
        v36 = PKDynamicCast(v70, v20);
        v71 = [(PKSelectionInteraction *)self delegate];

        if (!v36 || !v71)
        {
          goto LABEL_45;
        }

        v37 = [(PKSelectionInteraction *)self selectionController];
        v56 = [(PKSelectionController *)v37 topView];
        [v56 _showEditMenuFromLocation:v36 forAttachment:{v81, v82}];
        goto LABEL_37;
      }

      [(PKSelectionInteraction *)self dismissEditMenuIfNecessary];
      v66 = [v20 viewRep];
      v36 = v66;
    }

    else
    {
      if (!v19)
      {
        goto LABEL_46;
      }

      v67 = [v19 attachmentContainerView];
      v36 = v67;
      if (!v67 || ([v67 isFirstResponder] & 1) != 0 || (objc_msgSend(v36, "_isAncestorOfFirstResponder") & 1) != 0)
      {
        v68 = [(PKSelectionInteraction *)self selectionController];
        v69 = [(PKSelectionController *)v68 topView];
        v78 = [v69 editMenuVisible];

        if (v78)
        {
          [(PKSelectionInteraction *)self dismissEditMenuIfNecessary];
          v37 = [v19 viewRep];
          [v37 becomeFirstResponder];
          goto LABEL_44;
        }

        if (![(PKSelectionInteraction *)self gesturesAllowedForPaletteState])
        {
          goto LABEL_45;
        }

        v37 = [(PKSelectionInteraction *)self selectionController];
        v56 = [(PKSelectionController *)v37 topView];
        [v56 _handleSingleTapAtLocation:v19 forAttachment:{v81, v82}];
        goto LABEL_37;
      }

      v66 = v36;
    }

    [v66 becomeFirstResponder];
    goto LABEL_45;
  }

LABEL_48:
}

- (void)dismissEditMenuIfNecessary
{
  v3 = [(PKSelectionInteraction *)self selectionController];
  v4 = v3;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained editMenuVisible];

  if (v6)
  {
    v7 = [(PKSelectionInteraction *)self selectionController];
    v8 = v7;
    if (v7)
    {
      [(PKSelectionController *)v7 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
    }

    v9 = [(PKSelectionInteraction *)self selectionController];
    v12 = v9;
    if (v9)
    {
      v10 = objc_loadWeakRetained((v9 + 120));
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 editMenuInteraction];
    [v11 dismissMenu];
  }
}

- (void)_didBeginSelection:(id)a3
{
  v4 = a3;
  v5 = [(PKSelectionInteraction *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [v4 state];
  switch(v10)
  {
    case 3:
      if ([(PKSelectionInteraction *)self _isLassoAddingSpace:v7, v9]&& ([(PKSelectionInteraction *)self selectionController], (v19 = objc_claimAutoreleasedReturnValue()) != 0) && (v20 = v19[114], v19, (v20 & 1) != 0))
      {
        [(PKSelectionInteraction *)self _didEndLassoAddingSpaceAtLocation:v7, v9];
      }

      else
      {
        lassoPath = self->_lassoPath;
        [(PKSelectionInteraction *)self _drawingBeganLocation];
        [(UIBezierPath *)lassoPath addLineToPoint:?];
        [(UIBezierPath *)self->_lassoPath closePath];
        [(PKSelectionInteraction *)self _updateLiveLassoPath:[(UIBezierPath *)self->_lassoPath CGPath]];
        [(PKSelectionInteraction *)self _didEndLassoSelectionWithPath:self->_lassoPath];
      }

      v24 = self->_lassoPath;
      self->_lassoPath = 0;

      goto LABEL_14;
    case 2:
      v14 = [(PKSelectionInteraction *)self currentDrawing];
      [(PKSelectionInteraction *)self clampInputPointForSelection:v14 forDrawing:v7, v9];
      v16 = v15;
      v18 = v17;

      [(UIBezierPath *)self->_lassoPath addLineToPoint:v16, v18];
LABEL_14:
      v22 = [(UIBezierPath *)self->_lassoPath CGPath];
      v21 = self;
      goto LABEL_15;
    case 1:
      [(PKSelectionInteraction *)self set_drawingBeganLocation:v7, v9];
      v11 = [MEMORY[0x1E69DC728] bezierPath];
      v12 = self->_lassoPath;
      self->_lassoPath = v11;

      [(UIBezierPath *)self->_lassoPath moveToPoint:v7, v9];
      [(PKSelectionInteraction *)self _updateLiveLassoPath:[(UIBezierPath *)self->_lassoPath CGPath]];
      v13 = [(PKSelectionInteraction *)self _drawingForLocation:v7, v9];
      [(PKSelectionInteraction *)self setCurrentDrawing:v13];

      goto LABEL_16;
  }

  if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v21 = self;
    v22 = 0;
LABEL_15:
    [(PKSelectionInteraction *)v21 _updateLiveLassoPath:v22];
  }

LABEL_16:
  v25 = [(PKSelectionInteraction *)self selectionController];
  v26 = v25;
  if (v25)
  {
    WeakRetained = objc_loadWeakRetained((v25 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  if ((v10 - 3) < 3)
  {
    v27 = [WeakRetained delegate];
    v28 = objc_opt_respondsToSelector();

    v29 = WeakRetained;
    if ((v28 & 1) == 0)
    {
      goto LABEL_25;
    }

    v30 = [WeakRetained delegate];
    [v30 canvasViewDidEndLasso:WeakRetained];
    goto LABEL_24;
  }

  v29 = WeakRetained;
  if (v10 == 1)
  {
    v31 = [WeakRetained delegate];
    v32 = objc_opt_respondsToSelector();

    v29 = WeakRetained;
    if (v32)
    {
      v30 = [WeakRetained delegate];
      [v30 canvasViewDidBeginLasso:WeakRetained];
LABEL_24:

      v29 = WeakRetained;
    }
  }

LABEL_25:
}

- (void)_updateLiveLassoPath:(CGPath *)a3
{
  lassoRenderer = self->_lassoRenderer;
  v5 = [(PKSelectionInteraction *)self currentDrawing];
  [(PKSelectionRendering *)lassoRenderer _renderLiveSelectionPath:a3 forStrokes:0 inDrawing:v5 liveScrollOffset:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
}

- (void)_didEndLassoSelectionWithPath:(id)a3
{
  v4 = a3;
  v6 = [(PKSelectionInteraction *)self currentDrawing];
  v5 = [(PKSelectionInteraction *)self selectionController];
  [(PKSelectionController *)v5 lassoSelectStrokesInDrawing:v6 withPath:v4];
}

- (BOOL)_isLassoAddingSpace:(CGPoint)a3
{
  x = a3.x;
  v5 = [(PKSelectionInteraction *)self view:a3.x];
  [v5 frame];
  v7 = v6 * 0.1;

  v8 = [(PKSelectionInteraction *)self view];
  [v8 frame];
  v10 = v9;
  v11 = [(PKSelectionInteraction *)self view];
  [v11 frame];
  v13 = v10 + v12 - v7;

  [(PKSelectionInteraction *)self _drawingBeganLocation];
  v15 = v14 >= v7 || x <= v13;
  result = 1;
  if (v15)
  {
    if (x >= v7)
    {
      return 0;
    }

    [(PKSelectionInteraction *)self _drawingBeganLocation];
    if (v16 <= v13)
    {
      return 0;
    }
  }

  return result;
}

- (void)_didEndLassoAddingSpaceAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = +[PKStatisticsManager sharedStatisticsManager];
  [(PKStatisticsManager *)v6 recordInsertSpaceWithType:?];

  v7 = [(PKSelectionInteraction *)self selectionController];
  [(PKSelectionController *)v7 didBeginSpaceInsertionWithLassoPath:x atLocation:y];
}

- (CGPoint)clampInputPointForSelection:(CGPoint)a3 forDrawing:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v9 = [(PKSelectionController *)WeakRetained shouldClampInputPoints];

  if (v7 && v9)
  {
    v10 = [(PKSelectionInteraction *)self selectionController];
    v11 = v10;
    if (v10)
    {
      v12 = objc_loadWeakRetained((v10 + 120));
    }

    else
    {
      v12 = 0;
    }

    v13 = [v7 uuid];
    v14 = [v12 _attachmentForUUID:v13];

    v15 = [v14 viewRep];
    v16 = [v14 viewRep];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = [(PKSelectionInteraction *)self selectionController];
    v26 = v25;
    if (v25)
    {
      v27 = objc_loadWeakRetained((v25 + 120));
    }

    else
    {
      v27 = 0;
    }

    [v15 convertRect:v27 toView:{v18, v20, v22, v24}];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v44.origin.x = v29;
    v44.origin.y = v31;
    v44.size.width = v33;
    v44.size.height = v35;
    MinY = CGRectGetMinY(v44);
    v45.origin.x = v29;
    v45.origin.y = v31;
    v45.size.width = v33;
    v45.size.height = v35;
    MaxY = CGRectGetMaxY(v45);
    v38 = fabs(MaxY) != INFINITY;
    if (fabs(MinY) != INFINITY && v38)
    {
      if (y >= MinY)
      {
        v39 = objc_loadWeakRetained(&self->_selectionController);
        v40 = [(PKSelectionController *)v39 _liveDrawingIsAtEndOfDocument];

        if ((v40 & 1) == 0 && y > MaxY + -8.0)
        {
          y = MaxY + -8.0;
        }
      }

      else
      {
        y = MinY + 2.0;
      }
    }
  }

  v41 = x;
  v42 = y;
  result.y = v42;
  result.x = v41;
  return result;
}

- (void)_dismissEditMenuIfNecessary
{
  v2 = [(PKSelectionInteraction *)self selectionController];
  v5 = v2;
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained editMenuInteraction];
  [v4 dismissMenu];
}

- (void)_selectViaContinuousTapWithInput:(id)a3
{
  v4 = a3;
  [v4 location];
  v5 = [(PKSelectionInteraction *)self _drawingForLocation:?];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__PKSelectionInteraction__selectViaContinuousTapWithInput___block_invoke;
  v8[3] = &unk_1E82D9140;
  v9 = v4;
  v10 = self;
  v11 = v5;
  v6 = v5;
  v7 = v4;
  [(PKSelectionInteraction *)self _intersectedStrokesInDrawing:v6 forSelectionInput:v7 existingSelection:0 completion:v8];
}

void __59__PKSelectionInteraction__selectViaContinuousTapWithInput___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  [v4 recordSmartSelectionEventWithType:objc_msgSend(*(a1 + 32) contentType:"selectionType") gestureInvoked:{objc_msgSend(v3, "contentType"), 1}];

  v5 = [*(a1 + 40) selectionController];
  v6 = [v3 intersectedStrokes];

  v7 = [*(a1 + 32) selectionType];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PKSelectionInteraction__selectViaContinuousTapWithInput___block_invoke_2;
  v9[3] = &unk_1E82D7148;
  v8 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  [(PKSelectionController *)v5 selectStrokes:v6 externalElements:0 forSelectionType:v7 inDrawing:v8 completion:v9];
}

- (void)_didTapAndDrag:(id)a3
{
  v4 = a3;
  [(PKSelectionInteraction *)self _dismissEditMenuIfNecessary];
  v5 = [(UITapAndAHalfRecognizer *)self->_modifySelectionRecognizer touch];
  v6 = [(PKSelectionInteraction *)self view];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [v5 type] == 2;
  if ([v4 state] == 1)
  {
    [(UIPanGestureRecognizer *)self->_lassoGestureRecognizer setState:4];
    [(PKSelectionInteraction *)self _cancelDeferredPasteFromTappingAction];
    v12 = [(PKSelectionInteraction *)self _drawingForLocation:v8, v10];
    [(PKSelectionInteraction *)self setCurrentDrawing:v12];

    [(PKSelectionInteraction *)self _resetVelocityWindow];
    [(PKSelectionGlowRenderer *)self->_glowRenderer _willBeginDragKnobLocation:0 atPoint:v8 knobDragMode:v10];
    WeakRetained = objc_loadWeakRetained(&self->_selectionController);
    if (WeakRetained && (v14 = WeakRetained[16], WeakRetained, v14))
    {
      v15 = objc_loadWeakRetained(&self->_selectionController);
      v16 = v15;
      if (v15)
      {
        v17 = *(v15 + 19);
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      [v5 locationInView:v18];
      v20 = v19;
      v22 = v21;

      v23 = objc_loadWeakRetained(&self->_selectionController);
      v24 = v23;
      if (v23)
      {
        v25 = *(v23 + 19);
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      v27 = [v26 containsPoint:v11 forInputType:{v20, v22}];

      v28 = os_log_create("com.apple.pencilkit", "Selection");
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
      if (v27)
      {
        if (v29)
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1C7CCA000, v28, OS_LOG_TYPE_DEBUG, "Should be adding to a current selection", buf, 2u);
        }

        v30 = 1;
      }

      else if (v29)
      {
        *buf = 0;
        v30 = 2;
        _os_log_debug_impl(&dword_1C7CCA000, v28, OS_LOG_TYPE_DEBUG, "Should be removing from a current selection", buf, 2u);
      }

      else
      {
        v30 = 2;
      }

      self->_modificationType = v30;
      v40 = objc_loadWeakRetained(&self->_selectionController);
      v41 = v40;
      if (v40)
      {
        v42 = *(v40 + 16);
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;
      v44 = [v43 strokes];
      initialStrokeSelectionBeforeModification = self->_initialStrokeSelectionBeforeModification;
      self->_initialStrokeSelectionBeforeModification = v44;

      v46 = objc_loadWeakRetained(&self->_selectionController);
      v47 = v46;
      if (v46)
      {
        v48 = *(v46 + 16);
      }

      else
      {
        v48 = 0;
      }

      v49 = v48;
      v50 = [v49 strokes];
      v51 = [v50 mutableCopy];
      smartSelectedStrokes = self->_smartSelectedStrokes;
      self->_smartSelectedStrokes = v51;

      v53 = objc_loadWeakRetained(&self->_selectionController);
      v54 = v53;
      if (v53)
      {
        [(PKSelectionController *)v53 clearSelectionIfNecessaryAnimated:0 withCompletion:?];
      }
    }

    else
    {
      self->_modificationType = 1;
      v55 = [MEMORY[0x1E695DFA0] orderedSet];
      v56 = self->_smartSelectedStrokes;
      self->_smartSelectedStrokes = v55;
    }

    v32 = [PKSelectionInput inputWithType:1 location:v11 inputType:v8, v10];
    [(PKSelectionInteraction *)self _updateSmartSelectionWithInput:v32 modificationType:self->_modificationType];
    goto LABEL_38;
  }

  if ([v4 state] == 2)
  {
    [(PKSelectionInteraction *)self _updateVelocityWindowWithTouch:v5 location:v8, v10];
    v31 = [(PKSelectionInteraction *)self _selectionTypeForVelocity:?];
    v32 = [PKSelectionInput inputWithType:v31 location:v11 inputType:v8, v10];
    [(PKSelectionInteraction *)self _updateSmartSelectionWithInput:v32 modificationType:self->_modificationType];
    modificationType = self->_modificationType;
    glowRenderer = self->_glowRenderer;
    v35 = [v5 type];
    if (glowRenderer)
    {
      if (modificationType == 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = 2;
      }

      glowRenderer->_knobDragMode = v36;
      [(PKSelectionGlowRenderer *)glowRenderer _updateKnobAppearanceForDragAtKnobLocation:v36 point:v31 knobDragMode:v35 selectionType:v8 touchType:v10];
    }

    goto LABEL_38;
  }

  if ([v4 state] == 3)
  {
    if (self->_modificationType == 1)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    [(PKSelectionGlowRenderer *)self->_glowRenderer _didEndDragKnobLocation:v37 knobDragMode:0, v38];
    v32 = [PKSelectionInput inputWithType:1 location:v11 inputType:v8, v10];
    v39 = self->_modificationType;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __41__PKSelectionInteraction__didTapAndDrag___block_invoke;
    v57[3] = &unk_1E82D7170;
    v57[4] = self;
    v57[5] = 1;
    [(PKSelectionInteraction *)self _updateSmartSelectionWithInput:v32 modificationType:v39 completion:v57];
LABEL_38:

    goto LABEL_39;
  }

  if ([v4 state] == 5 || objc_msgSend(v4, "state") == 4)
  {
    [(PKSelectionInteraction *)self _clearLiveSelectionPath];
  }

LABEL_39:
}

void __41__PKSelectionInteraction__didTapAndDrag___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionController];
  v3 = *(a1 + 32);
  v4 = v3[40];
  v5 = [v3 currentDrawing];
  v6 = [(PKSelectionController *)v2 contentTypeForIntersectedStrokes:v4 inDrawing:v5];

  v7 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  [v7 recordSmartSelectionEventWithType:*(a1 + 40) contentType:v6 gestureInvoked:2];

  v8 = [*(a1 + 32) selectionController];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v9[40];
  v12 = [v9 currentDrawing];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__PKSelectionInteraction__didTapAndDrag___block_invoke_2;
  v13[3] = &unk_1E82D7148;
  v13[4] = *(a1 + 32);
  [(PKSelectionController *)v8 selectStrokes:v11 externalElements:0 forSelectionType:v10 inDrawing:v12 completion:v13];
}

- (void)_resetVelocityWindow
{
  self->_tapAndDragVelocityCount = 0;
  v3 = [MEMORY[0x1E695DF70] array];
  tapAndDragVelocityArray = self->_tapAndDragVelocityArray;
  self->_tapAndDragVelocityArray = v3;
}

- (double)_updateVelocityWindowWithTouch:(id)a3 location:(CGPoint)a4
{
  [(PKSelectionInteraction *)self _timestampForTouch:a3];

  [PKSelectionInteraction _updateVelocityWindowWithTimestamp:"_updateVelocityWindowWithTimestamp:location:" location:?];
  return result;
}

- (double)_updateVelocityWindowWithTimestamp:(double)a3 location:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v28 = *MEMORY[0x1E69E9840];
  v8 = sqrt((a4.y - self->_lastDoubleTapAndDragLocation.y) * (a4.y - self->_lastDoubleTapAndDragLocation.y) + (a4.x - self->_lastDoubleTapAndDragLocation.x) * (a4.x - self->_lastDoubleTapAndDragLocation.x)) / (a3 - self->_lastDoubleTapAndDragTimestamp);
  tapAndDragVelocityCount = self->_tapAndDragVelocityCount;
  self->_tapAndDragVelocityCount = tapAndDragVelocityCount + 1;
  if (tapAndDragVelocityCount < 20)
  {
    tapAndDragVelocityArray = self->_tapAndDragVelocityArray;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    [(NSMutableArray *)tapAndDragVelocityArray addObject:v12];
  }

  else
  {
    v10 = (tapAndDragVelocityCount + 1) % 0x14uLL;
    v11 = self->_tapAndDragVelocityArray;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    [(NSMutableArray *)v11 replaceObjectAtIndex:v10 withObject:v12];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_tapAndDragVelocityArray;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    v18 = 0.0;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v23 + 1) + 8 * i) floatValue];
        v18 = v18 + v20;
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = 0.0;
  }

  v21 = self->_tapAndDragVelocityCount;
  result = v18 / fmin(v21, 20.0);
  if (v21 < 10)
  {
    result = 500.0;
  }

  self->_lastDoubleTapAndDragLocation.x = x;
  self->_lastDoubleTapAndDragLocation.y = y;
  self->_lastDoubleTapAndDragTimestamp = a3;
  return result;
}

- (int64_t)_selectionTypeForVelocity:(double)a3
{
  if (a3 <= 500.0)
  {
    return 1;
  }

  if (a3 <= 1200.0)
  {
    return 2;
  }

  return 3;
}

- (id)_visibleOnscreenStrokesForDrawing:(id)a3
{
  v4 = a3;
  v5 = [(PKSelectionInteraction *)self selectionController];
  v6 = v5;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((v5 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v8 = [v4 uuid];

  v9 = [WeakRetained _attachmentForUUID:v8];

  v10 = [v9 strokeSpatialCache];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 24);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (int64_t)_updateSmartSelectionWithInput:(id)a3 modificationType:(int64_t)a4 liveScrollOffset:(CGPoint)a5 completion:(id)a6
{
  y = a5.y;
  x = a5.x;
  v48 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  [v11 location];
  v14 = v13;
  v16 = v15;
  v17 = [(PKSelectionInteraction *)self currentDrawing];
  [(PKSelectionInteraction *)self _pointFromViewToStrokeSpace:v17 inDrawing:v14, v16];
  v19 = v18;
  v21 = v20;

  v22 = [(PKSelectionInteraction *)self currentDrawing];
  v23 = [(PKSelectionInteraction *)self _visibleOnscreenStrokesForDrawing:v22];
  v24 = +[PKClusteringUtility _geometricBasedStrokeClusteringFromPoint:visibleStrokes:selectionType:inputType:](PKClusteringUtility, "_geometricBasedStrokeClusteringFromPoint:visibleStrokes:selectionType:inputType:", v23, 1, [v11 inputType], v19, v21);

  if (a4 == 3)
  {
    if (![v24 count])
    {
      v30 = 0;
      a4 = 3;
      goto LABEL_16;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v44;
      a4 = 2;
LABEL_5:
      v29 = 0;
      while (1)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v25);
        }

        if (([(NSMutableOrderedSet *)self->_smartSelectedStrokes containsObject:*(*(&v43 + 1) + 8 * v29)]& 1) != 0)
        {
          break;
        }

        if (v27 == ++v29)
        {
          v27 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v27)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      a4 = 1;
    }
  }

  if ((a4 - 1) >= 2)
  {
    v30 = 0;
  }

  else
  {
    v30 = a4;
  }

LABEL_16:
  glowRenderer = self->_glowRenderer;
  smartSelectedStrokes = self->_smartSelectedStrokes;
  v33 = [(PKSelectionInteraction *)self currentDrawing];
  [(PKSelectionGlowRenderer *)glowRenderer _renderLiveSelectionPath:0 forStrokes:smartSelectedStrokes inDrawing:v33 liveScrollOffset:x, y];

  v34 = [(PKSelectionInteraction *)self currentDrawing];
  v35 = [(NSMutableOrderedSet *)self->_smartSelectedStrokes array];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __102__PKSelectionInteraction__updateSmartSelectionWithInput_modificationType_liveScrollOffset_completion___block_invoke;
  v38[3] = &unk_1E82D9168;
  v39 = v12;
  v40 = a4;
  v41 = x;
  v42 = y;
  v38[4] = self;
  v36 = v12;
  [(PKSelectionInteraction *)self _intersectedStrokesInDrawing:v34 forSelectionInput:v11 existingSelection:v35 completion:v38];

  return v30;
}

void __102__PKSelectionInteraction__updateSmartSelectionWithInput_modificationType_liveScrollOffset_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  if (!*(*(a1 + 32) + 320))
  {
    v3 = [MEMORY[0x1E695DFA0] orderedSet];
    v4 = *(a1 + 32);
    v5 = *(v4 + 320);
    *(v4 + 320) = v3;
  }

  v6 = *(a1 + 48);
  if (v6 == 2)
  {
    v9 = *(*(a1 + 32) + 320);
    v8 = [v16 intersectedStrokes];
    [v9 minusOrderedSet:v8];
    goto LABEL_7;
  }

  if (v6 == 1)
  {
    v7 = *(*(a1 + 32) + 320);
    v8 = [v16 intersectedStrokes];
    [v7 unionOrderedSet:v8];
LABEL_7:
  }

  v10 = *(a1 + 32);
  if (v10[40] && [v10 _liveSelectionGestureStillActive])
  {
    v11 = *(a1 + 32);
    v12 = v11[2];
    v13 = v11[40];
    v14 = [v11 currentDrawing];
    [v12 _renderLiveSelectionPath:0 forStrokes:v13 inDrawing:v14 liveScrollOffset:{*(a1 + 56), *(a1 + 64)}];
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))();
  }
}

- (void)_updateProgressiveTapSelectionWithSelectionInput:(id)a3 existingSelection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKSelectionInteraction *)self currentDrawing];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __93__PKSelectionInteraction__updateProgressiveTapSelectionWithSelectionInput_existingSelection___block_invoke;
  v9[3] = &unk_1E82D9190;
  v9[4] = self;
  [(PKSelectionInteraction *)self _intersectedStrokesInDrawing:v8 forSelectionInput:v7 existingSelection:v6 completion:v9];
}

void __93__PKSelectionInteraction__updateProgressiveTapSelectionWithSelectionInput_existingSelection___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 intersectedStrokes];
  v4 = [v3 count];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 16);
    v6 = [v8 intersectedStrokes];
    v7 = [*(a1 + 32) currentDrawing];
    [v5 _renderLiveSelectionPath:0 forStrokes:v6 inDrawing:v7 liveScrollOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  }
}

- (void)_intersectedStrokesInDrawing:(id)a3 forSelectionInput:(id)a4 existingSelection:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 strokes];
  v15 = [v14 count];

  if (v15)
  {
    [v11 location];
    [(PKSelectionInteraction *)self _pointFromViewToStrokeSpace:v10 inDrawing:?];
    v17 = v16;
    v19 = v18;
    v20 = [(PKSelectionInteraction *)self selectionController];
    v21 = [v11 selectionType];
    v22 = [v11 inputType];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __102__PKSelectionInteraction__intersectedStrokesInDrawing_forSelectionInput_existingSelection_completion___block_invoke;
    v24[3] = &unk_1E82D91B8;
    v25 = v13;
    [(PKSelectionController *)v20 fetchStrokesToSelectAtPoint:v10 inDrawing:v21 withSelectionType:v22 inputType:v12 existingSelection:v24 completion:v17, v19];
  }

  else
  {
    v23 = +[PKIntersectionResult noResult];
    (*(v13 + 2))(v13, v23);
  }
}

- (void)_pressAndHoldLinearExpand:(id)a3
{
  v4 = a3;
  [(PKSelectionInteraction *)self _dismissEditMenuIfNecessary];
  v5 = [(UILongPressGestureRecognizer *)self->_tapAndHoldToSelectLongPressGestureRecognizer touches];
  v6 = [v5 firstObject];

  v7 = [(PKSelectionInteraction *)self view];
  [v6 locationInView:v7];
  v9 = v8;
  v11 = v10;

  v12 = [v6 type] == 2;
  if ([v4 state] == 1)
  {
    if ([(PKSelectionInteraction *)self _didLongPressExternalElementAtLocation:v9, v11]|| ![(PKSelectionInteraction *)self hasStrokesAtLocation:v9, v11])
    {
      [v4 setState:5];
    }

    else
    {
      [(UIPanGestureRecognizer *)self->_lassoGestureRecognizer setState:4];
      v13 = [(PKSelectionInteraction *)self _drawingForLocation:v9, v11];
      [(PKSelectionInteraction *)self setCurrentDrawing:v13];

      [(PKSelectionInteraction *)self _resetVelocityWindow];
      *&self->_currentlyDraggedKnob = xmmword_1C801D5C0;
      v14 = [(PKSelectionInteraction *)self currentDrawing];
      [(PKSelectionInteraction *)self _pointFromViewToStrokeSpace:v14 inDrawing:v9, v11];
      self->_undraggedKnobLocationInStrokeSpace.x = v15;
      self->_undraggedKnobLocationInStrokeSpace.y = v16;

      [(PKSelectionGlowRenderer *)self->_glowRenderer _willBeginDragKnobLocation:self->_knobDragMode atPoint:v9 knobDragMode:v11];
      v17 = [MEMORY[0x1E695DFA0] orderedSet];
      smartSelectedStrokes = self->_smartSelectedStrokes;
      self->_smartSelectedStrokes = v17;

      self->_modificationType = 1;
      self->_currentScrollOffset = *MEMORY[0x1E695EFF8];
      v19 = [PKSelectionInput inputWithType:2 location:v12 inputType:v9, v11];
      modificationType = self->_modificationType;
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __52__PKSelectionInteraction__pressAndHoldLinearExpand___block_invoke;
      v84[3] = &unk_1E82D7148;
      v84[4] = self;
      [(PKSelectionInteraction *)self _updateSmartSelectionWithInput:v19 modificationType:modificationType completion:v84];
    }

    goto LABEL_35;
  }

  if ([v4 state] == 2)
  {
    v21 = [(PKSelectionInteraction *)self selectionController];
    v22 = [(PKSelectionController *)v21 autoscrollForPointIfNecessary:v9, v11];
    v77 = v23;
    v80 = v22;

    v24.f64[0] = v80;
    v24.f64[1] = v77;
    self->_currentScrollOffset = vaddq_f64(v24, self->_currentScrollOffset);
    if (!self->_initialStrokeSelectionBeforeModification)
    {
      goto LABEL_35;
    }

    [PKDrawing _boundingBoxForStrokes:?];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    if ([(PKSelectionInteraction *)self _locationShouldFlipOverLeftKnob:v9, v11])
    {
      v33 = 0;
      v34 = 1;
    }

    else
    {
      if (![(PKSelectionInteraction *)self _locationShouldFlipOverRightKnob:v9, v11])
      {
LABEL_18:
        [PKDrawing _boundingBoxForStrokeArray:self->_firstStrokesInInitialStrokes];
        v81 = v39;
        v41 = v40;
        v43 = v42;
        v76 = v44;
        [PKDrawing _boundingBoxForStrokeArray:self->_lastStrokesInInitialStrokes];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v74 = v51;
        v75 = v41;
        v72 = v45;
        v73 = v47;
        if ([(PKSelectionInteraction *)self isLTR])
        {
          v85.origin.x = v46;
          v85.origin.y = v48;
          v85.size.width = v50;
          v85.size.height = v52;
          MaxX = CGRectGetMaxX(v85);
          v86.origin.x = v46;
          v86.origin.y = v48;
          v86.size.width = v50;
          v86.size.height = v52;
          MaxY = CGRectGetMaxY(v86);
        }

        else
        {
          v71 = v50;
          v87.origin.x = v81;
          v87.origin.y = v41;
          v87.size.width = v43;
          v87.size.height = v76;
          MaxX = CGRectGetMaxX(v87);
          v88.origin.x = v81;
          v88.size.height = v76;
          v88.origin.y = v41;
          v88.size.width = v43;
          MaxY = CGRectGetMinY(v88);
        }

        v54 = MaxY;
        v55 = v43;
        if ([(PKSelectionInteraction *)self isLTR])
        {
          v89.origin.x = v81;
          v89.origin.y = v75;
          v89.size.width = v43;
          v89.size.height = v76;
          MinX = CGRectGetMinX(v89);
          v90.origin.x = v81;
          v90.origin.y = v75;
          v90.size.width = v55;
          v90.size.height = v76;
          MinY = CGRectGetMinY(v90);
        }

        else
        {
          v91.origin.x = v72;
          v91.origin.y = v73;
          v91.size.width = v50;
          v91.size.height = v74;
          MinX = CGRectGetMinX(v91);
          v92.origin.x = v72;
          v92.origin.y = v73;
          v92.size.width = v50;
          v92.size.height = v74;
          MinY = CGRectGetMaxY(v92);
        }

        currentlyDraggedKnob = self->_currentlyDraggedKnob;
        if (!currentlyDraggedKnob)
        {
          MinY = v54;
        }

        v82 = MinY;
        v59 = MaxX;
        if (currentlyDraggedKnob)
        {
          v59 = MinX;
        }

        v79 = v59;
        v60 = [(PKSelectionInteraction *)self selectionController];
        v61 = v60;
        if (v60)
        {
          WeakRetained = objc_loadWeakRetained((v60 + 120));
        }

        else
        {
          WeakRetained = 0;
        }

        v63 = [(PKSelectionInteraction *)self currentDrawing];
        if (WeakRetained)
        {
          [WeakRetained transformFromStrokeSpaceToViewInDrawing:v63];
          v65 = *&v83[5];
          v64 = *&v83[6];
          v66 = *&v83[7];
          v67 = *&v83[8];
          v68 = *&v83[9];
          v69 = *&v83[10];
        }

        else
        {
          v69 = 0.0;
          v67 = 0.0;
          v64 = 0.0;
          v68 = 0.0;
          v66 = 0.0;
          v65 = 0.0;
        }

        [(PKSelectionInteraction *)self _updateSmartSelectionWithDragToLocation:self->_initialStrokeSelectionBeforeModification liveScrollOffset:0 initialSelectedWord:v9 completion:v11, self->_currentScrollOffset.x, self->_currentScrollOffset.y];
        glowRenderer = self->_glowRenderer;
        if (glowRenderer)
        {
          [(PKSelectionGlowRenderer *)glowRenderer _updateKnobAppearanceForDragAtKnobLocation:v9 point:v11 otherKnobPoint:v68 + v82 * v66 + v65 * v79 selectionType:v69 + v82 * v67 + v64 * v79 touchType:?];
        }

        goto LABEL_35;
      }

      v34 = 0;
      v33 = 1;
    }

    self->_currentlyDraggedKnob = v33;
    [(PKSelectionInteraction *)self _undraggedKnobLocation:v34 forInitialStrokeBounds:v26, v28, v30, v32];
    self->_undraggedKnobLocationInStrokeSpace.x = v37;
    self->_undraggedKnobLocationInStrokeSpace.y = v38;
    goto LABEL_18;
  }

  if ([v4 state] == 3)
  {
    [(PKSelectionGlowRenderer *)self->_glowRenderer _didEndDragKnobLocation:v35 knobDragMode:self->_currentlyDraggedKnob, self->_knobDragMode];
    initialStrokeSelectionBeforeModification = self->_initialStrokeSelectionBeforeModification;
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __52__PKSelectionInteraction__pressAndHoldLinearExpand___block_invoke_2;
    v83[3] = &unk_1E82D91E0;
    v83[4] = self;
    [(PKSelectionInteraction *)self _updateSmartSelectionWithDragToLocation:initialStrokeSelectionBeforeModification liveScrollOffset:v83 initialSelectedWord:v9 completion:v11, self->_currentScrollOffset.x, self->_currentScrollOffset.y];
  }

  else if ([v4 state] == 5 || objc_msgSend(v4, "state") == 4)
  {
    [(PKSelectionInteraction *)self _clearLiveSelectionPath];
  }

LABEL_35:
}

uint64_t __52__PKSelectionInteraction__pressAndHoldLinearExpand___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _liveSelectionGestureStillActive];
  if (result)
  {
    objc_storeStrong((*(a1 + 32) + 328), *(*(a1 + 32) + 320));
    [*(a1 + 32) _calculateFirstAndLastStrokeForKnobPlacement];
    [PKDrawing _boundingBoxForStrokes:*(*(a1 + 32) + 328)];
    v3 = *(a1 + 32);
    result = [v3 _undraggedKnobLocation:0 forInitialStrokeBounds:?];
    v3[18] = v4;
    v3[19] = v5;
  }

  return result;
}

void __52__PKSelectionInteraction__pressAndHoldLinearExpand___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 selectionController];
  v6 = [*(a1 + 32) currentDrawing];
  v7 = [(PKSelectionController *)v5 contentTypeForIntersectedStrokes:v4 inDrawing:v6];

  v8 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  [v8 recordSmartSelectionEventWithType:2 contentType:v7 gestureInvoked:3];

  v9 = [*(a1 + 32) selectionController];
  v10 = [*(a1 + 32) currentDrawing];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PKSelectionInteraction__pressAndHoldLinearExpand___block_invoke_3;
  v11[3] = &unk_1E82D7148;
  v11[4] = *(a1 + 32);
  [(PKSelectionController *)v9 selectStrokes:v4 externalElements:0 forSelectionType:2 inDrawing:v10 completion:v11];
}

void __52__PKSelectionInteraction__pressAndHoldLinearExpand___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _cancelDeferredPasteFromTappingAction];
  v2 = [*(a1 + 32) selectionController];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 152);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v5 toggleEditMenu];

  [*(a1 + 32) _clearLiveSelectionPath];
  v6 = *(a1 + 32);
  v7 = *(v6 + 328);
  *(v6 + 328) = 0;
}

- (CGPoint)_undraggedKnobLocation:(int64_t)a3 forInitialStrokeBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(PKSelectionInteraction *)self isLTR];
  v10 = v9;
  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  if (a3 == 1)
  {
    MaxX = CGRectGetMaxX(*&v11);
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v9)
    {
      MaxX = CGRectGetMinX(*&v11);
LABEL_8:
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      MaxY = CGRectGetMaxY(v21);
      goto LABEL_9;
    }

    MaxX = CGRectGetMinX(*&v11);
  }

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MaxY = CGRectGetMinY(v20);
LABEL_9:
  v17 = MaxY;
  v18 = MaxX;
  result.y = v17;
  result.x = v18;
  return result;
}

- (BOOL)_didLongPressExternalElementAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PKSelectionInteraction *)self _drawingForLocation:?];
  v7 = [(PKSelectionInteraction *)self selectionController];
  v8 = v7;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((v7 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v10 = [v6 uuid];
  v11 = [WeakRetained _attachmentForUUID:v10];

  [(PKSelectionInteraction *)self _pointFromViewToStrokeSpace:v6 inDrawing:x, y];
  v13 = v12;
  v15 = v14;
  v16 = [(PKSelectionInteraction *)self selectionController];
  v17 = [(PKSelectionController *)v16 _externalElementsAtLocation:v11 inAttachment:v13, v15];

  if ([v17 count])
  {
    v18 = [(PKSelectionInteraction *)self selectionController];
    v19 = [v17 firstObject];
    v20 = [(PKSelectionController *)v18 _didLongPressElement:v19 withGesture:0 inAttachment:v11];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_calculateFirstAndLastStrokeForKnobPlacement
{
  v3 = [(PKSelectionInteraction *)self _firstStrokesInStrokes:self->_initialStrokeSelectionBeforeModification];
  firstStrokesInInitialStrokes = self->_firstStrokesInInitialStrokes;
  self->_firstStrokesInInitialStrokes = v3;

  v5 = [(PKSelectionInteraction *)self _lastStrokesInStrokes:self->_initialStrokeSelectionBeforeModification];
  lastStrokesInInitialStrokes = self->_lastStrokesInInitialStrokes;
  self->_lastStrokesInInitialStrokes = v5;

  v7 = self->_firstStrokesInInitialStrokes;
  if (!v7 || ![(NSArray *)v7 count])
  {
    if ([(PKSelectionInteraction *)self isLTR])
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    v9 = [(PKSelectionInteraction *)self _closestStrokesToCorner:v8 fromStrokes:self->_initialStrokeSelectionBeforeModification];
    v10 = self->_firstStrokesInInitialStrokes;
    self->_firstStrokesInInitialStrokes = v9;
  }

  v11 = self->_lastStrokesInInitialStrokes;
  if (!v11 || ![(NSArray *)v11 count])
  {
    if ([(PKSelectionInteraction *)self isLTR])
    {
      v12 = 8;
    }

    else
    {
      v12 = 4;
    }

    v13 = [(PKSelectionInteraction *)self _closestStrokesToCorner:v12 fromStrokes:self->_initialStrokeSelectionBeforeModification];
    v14 = self->_lastStrokesInInitialStrokes;
    self->_lastStrokesInInitialStrokes = v13;
  }
}

- (id)_closestStrokesToCorner:(unint64_t)a3 fromStrokes:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [PKDrawing _boundingBoxForStrokes:v5];
  PointFromCorner = DKDRectGetPointFromCorner(a3, v7, v8, v9, v10);
  v13 = v12;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v32;
    v19 = 1.79769313e308;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        [v21 _bounds];
        v26 = DKDRectGetPointFromCorner(a3, v22, v23, v24, v25);
        v28 = (v27 - v13) * (v27 - v13) + (v26 - PointFromCorner) * (v26 - PointFromCorner);
        if (v28 < v19)
        {
          v29 = v21;

          v17 = v29;
          v19 = v28;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);

    if (v17)
    {
      [v6 addObject:v17];
    }
  }

  else
  {

    v17 = 0;
  }

  return v6;
}

- (void)_updateUndraggedKnobLocationForKnobDrag
{
  [PKDrawing _boundingBoxForStrokeArray:self->_firstStrokesInInitialStrokes];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [PKDrawing _boundingBoxForStrokeArray:self->_lastStrokesInInitialStrokes];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  currentlyDraggedKnob = self->_currentlyDraggedKnob;
  if (currentlyDraggedKnob == 1)
  {
    knobDragMode = self->_knobDragMode;
    v24 = [(PKSelectionInteraction *)self isLTR];
    if (knobDragMode != 4)
    {
      if (!v24)
      {
        v47.origin.x = v4;
        v47.origin.y = v6;
        v47.size.width = v8;
        v47.size.height = v10;
        MaxX = CGRectGetMaxX(v47);
        goto LABEL_21;
      }

      v43.origin.x = v12;
      v43.origin.y = v14;
      v43.size.width = v16;
      v43.size.height = v18;
      v27 = CGRectGetMaxX(v43);
      goto LABEL_14;
    }

    if (!v24)
    {
      v46.origin.x = v12;
      v46.origin.y = v14;
      v46.size.width = v16;
      v46.size.height = v18;
      MinX = CGRectGetMinX(v46);
      goto LABEL_19;
    }

    v41.origin.x = v4;
    v41.origin.y = v6;
    v41.size.width = v8;
    v41.size.height = v10;
    v25 = CGRectGetMinX(v41);
LABEL_16:
    v33 = v25;
    v29 = v4;
    v30 = v6;
    v31 = v8;
    v32 = v10;
    v28 = v33;
    goto LABEL_17;
  }

  if (currentlyDraggedKnob)
  {
    return;
  }

  v20 = self->_knobDragMode;
  v21 = [(PKSelectionInteraction *)self isLTR];
  if (v20 != 4)
  {
    if (v21)
    {
      v42.origin.x = v12;
      v42.origin.y = v14;
      v42.size.width = v16;
      v42.size.height = v18;
      MinX = CGRectGetMaxX(v42);
LABEL_19:
      v28 = MinX;
      v35 = v12;
      v36 = v14;
      v37 = v16;
      v38 = v18;
LABEL_22:
      MaxY = CGRectGetMaxY(*&v35);
      goto LABEL_23;
    }

    v45.origin.x = v4;
    v45.origin.y = v6;
    v45.size.width = v8;
    v45.size.height = v10;
    v25 = CGRectGetMaxX(v45);
    goto LABEL_16;
  }

  if (v21)
  {
    v40.origin.x = v4;
    v40.origin.y = v6;
    v40.size.width = v8;
    v40.size.height = v10;
    MaxX = CGRectGetMinX(v40);
LABEL_21:
    v39 = MaxX;
    v35 = v4;
    v36 = v6;
    v37 = v8;
    v38 = v10;
    v28 = v39;
    goto LABEL_22;
  }

  v44.origin.x = v12;
  v44.origin.y = v14;
  v44.size.width = v16;
  v44.size.height = v18;
  v27 = CGRectGetMinX(v44);
LABEL_14:
  v28 = v27;
  v29 = v12;
  v30 = v14;
  v31 = v16;
  v32 = v18;
LABEL_17:
  MaxY = CGRectGetMinY(*&v29);
LABEL_23:
  self->_undraggedKnobLocationInStrokeSpace.x = v28;
  self->_undraggedKnobLocationInStrokeSpace.y = MaxY;
}

- (void)_didDragKnob:(id)a3
{
  v4 = a3;
  v5 = [(PKSelectionInteraction *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  if ([v4 state] == 1)
  {
    v10 = 3;
    if (self->_currentlyDraggedKnob)
    {
      v10 = 4;
    }

    self->_knobDragMode = v10;
    v11 = [(PKSelectionInteraction *)self _drawingForLocation:v7, v9];
    [(PKSelectionInteraction *)self setCurrentDrawing:v11];

    WeakRetained = objc_loadWeakRetained(&self->_selectionController);
    v13 = WeakRetained;
    if (WeakRetained)
    {
      v14 = *(WeakRetained + 16);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = [v15 strokes];
    initialStrokeSelectionBeforeModification = self->_initialStrokeSelectionBeforeModification;
    self->_initialStrokeSelectionBeforeModification = v16;

    v18 = objc_loadWeakRetained(&self->_selectionController);
    v19 = v18;
    if (v18)
    {
      v20 = *(v18 + 16);
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = [v21 strokes];
    v23 = [v22 mutableCopy];
    smartSelectedStrokes = self->_smartSelectedStrokes;
    self->_smartSelectedStrokes = v23;

    v25 = objc_loadWeakRetained(&self->_selectionController);
    [(PKSelectionController *)v25 clearSelectionIfNecessaryAnimated:1 toBeginSelectionGesture:0 withCompletion:?];

    [(PKSelectionInteraction *)self _calculateFirstAndLastStrokeForKnobPlacement];
    [(PKSelectionInteraction *)self _updateUndraggedKnobLocationForKnobDrag];
    self->_currentScrollOffset = *MEMORY[0x1E695EFF8];
    [(PKSelectionGlowRenderer *)self->_glowRenderer _willBeginDragKnobLocation:self->_knobDragMode atPoint:v7 knobDragMode:v9];
    x = self->_currentScrollOffset.x;
    y = self->_currentScrollOffset.y;
    v28 = self;
    v29 = v7;
    v30 = v9;
    v31 = 0;
    goto LABEL_9;
  }

  if ([v4 state] == 2)
  {
    currentlyDraggedKnob = self->_currentlyDraggedKnob;
    if (currentlyDraggedKnob == 1)
    {
      if ([(PKSelectionInteraction *)self _locationShouldFlipOverLeftKnob:v7, v9])
      {
        v33 = 0;
        goto LABEL_23;
      }

      currentlyDraggedKnob = self->_currentlyDraggedKnob;
    }

    if (currentlyDraggedKnob || ![(PKSelectionInteraction *)self _locationShouldFlipOverRightKnob:v7, v9])
    {
      goto LABEL_24;
    }

    v33 = 1;
LABEL_23:
    self->_currentlyDraggedKnob = v33;
    [(PKSelectionInteraction *)self _updateUndraggedKnobLocationForKnobDrag];
LABEL_24:
    v35 = [(PKSelectionInteraction *)self selectionController];
    v36 = v35;
    if (v35)
    {
      v37 = objc_loadWeakRetained((v35 + 120));
    }

    else
    {
      v37 = 0;
    }

    v38 = [(PKSelectionInteraction *)self currentDrawing];
    if (v37)
    {
      [v37 transformFromStrokeSpaceToViewInDrawing:v38];
      v39 = *&v53[7];
      v49 = *&v53[5];
      v50 = *&v53[8];
      v40 = *&v53[9];
      v51 = *&v53[6];
      v52 = *&v53[10];
    }

    else
    {
      v51 = 0.0;
      v52 = 0.0;
      v49 = 0.0;
      v50 = 0.0;
      v40 = 0.0;
      v39 = 0.0;
    }

    v41 = self->_undraggedKnobLocationInStrokeSpace.x;
    v42 = self->_undraggedKnobLocationInStrokeSpace.y;

    v43 = [(PKSelectionInteraction *)self selectionController];
    v44 = [(PKSelectionController *)v43 autoscrollForPointIfNecessary:v7, v9];
    v46 = v45;

    v47 = v46 + self->_currentScrollOffset.y;
    self->_currentScrollOffset.x = v44 + self->_currentScrollOffset.x;
    self->_currentScrollOffset.y = v47;
    [(PKSelectionInteraction *)self _updateSmartSelectionWithDragToLocation:0 liveScrollOffset:v7 completion:v9];
    glowRenderer = self->_glowRenderer;
    if (glowRenderer)
    {
      [(PKSelectionGlowRenderer *)glowRenderer _updateKnobAppearanceForDragAtKnobLocation:v7 point:v9 otherKnobPoint:v40 + v39 * v42 + v49 * v41 selectionType:v52 + v50 * v42 + v51 * v41 touchType:?];
    }

    goto LABEL_31;
  }

  if ([v4 state] == 3)
  {
    [(PKSelectionGlowRenderer *)self->_glowRenderer _didEndDragKnobLocation:v34 knobDragMode:self->_currentlyDraggedKnob, self->_knobDragMode];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __39__PKSelectionInteraction__didDragKnob___block_invoke;
    v53[3] = &unk_1E82D91E0;
    v53[4] = self;
    x = self->_currentScrollOffset.x;
    y = self->_currentScrollOffset.y;
    v31 = v53;
    v28 = self;
    v29 = v7;
    v30 = v9;
LABEL_9:
    [(PKSelectionInteraction *)v28 _updateSmartSelectionWithDragToLocation:v31 liveScrollOffset:v29 completion:v30, x, y];
    goto LABEL_31;
  }

  if ([v4 state] == 4 || objc_msgSend(v4, "state") == 5)
  {
    [(PKSelectionInteraction *)self _clearLiveSelectionPath];
  }

LABEL_31:
}

void __39__PKSelectionInteraction__didDragKnob___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 selectionController];
  v6 = [*(a1 + 32) currentDrawing];
  v7 = [(PKSelectionController *)v5 contentTypeForIntersectedStrokes:v4 inDrawing:v6];

  v8 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  [v8 recordSmartSelectionEventWithType:1 contentType:v7 gestureInvoked:4];

  v9 = [*(a1 + 32) selectionController];
  v10 = [*(a1 + 32) currentDrawing];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __39__PKSelectionInteraction__didDragKnob___block_invoke_2;
  v11[3] = &unk_1E82D7148;
  v11[4] = *(a1 + 32);
  [(PKSelectionController *)v9 selectStrokes:v4 externalElements:0 forSelectionType:1 inDrawing:v10 completion:v11];
}

- (BOOL)isLTR
{
  v2 = [(PKSelectionInteraction *)self view];
  v3 = [v2 effectiveUserInterfaceLayoutDirection] == 0;

  return v3;
}

- (BOOL)_locationShouldFlipOverLeftKnob:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(PKSelectionInteraction *)self isLTR])
  {

    return [(PKSelectionInteraction *)self _locationShouldFlipOverLeftKnob_LTR:x, y];
  }

  else
  {

    return [(PKSelectionInteraction *)self _locationShouldFlipOverLeftKnob_RTL:x, y];
  }
}

- (BOOL)_locationShouldFlipOverLeftKnob_LTR:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PKSelectionInteraction *)self selectionController];
  v7 = v6;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  memset(&v19, 0, sizeof(v19));
  v9 = [(PKSelectionInteraction *)self currentDrawing];
  if (WeakRetained)
  {
    [WeakRetained transformFromStrokeSpaceToViewInDrawing:v9];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  [PKDrawing _boundingBoxForStrokeArray:self->_firstStrokesInInitialStrokes];
  v18 = v19;
  v21 = CGRectApplyAffineTransform(v20, &v18);
  v10 = v21.origin.x;
  v11 = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  CGRectGetMinX(v21);
  v22.origin.x = v10;
  v22.origin.y = v11;
  v22.size.width = width;
  v22.size.height = height;
  MinY = CGRectGetMinY(v22);
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = width;
  v23.size.height = height;
  MinX = CGRectGetMinX(v23);
  v24.origin.x = v10;
  v24.origin.y = v11;
  v24.size.width = width;
  v24.size.height = height;
  CGRectGetMinY(v24);
  if (x >= MinX)
  {
    v16 = 0;
  }

  else
  {
    v25.origin.x = v10;
    v25.origin.y = v11;
    v25.size.width = width;
    v25.size.height = height;
    CGRectGetMinX(v25);
    v26.origin.x = v10;
    v26.origin.y = v11;
    v26.size.width = width;
    v26.size.height = height;
    v16 = y < height + CGRectGetMinY(v26);
  }

  return y < MinY + -38.0 || v16;
}

- (BOOL)_locationShouldFlipOverLeftKnob_RTL:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PKSelectionInteraction *)self selectionController];
  v7 = v6;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  memset(&v19, 0, sizeof(v19));
  v9 = [(PKSelectionInteraction *)self currentDrawing];
  if (WeakRetained)
  {
    [WeakRetained transformFromStrokeSpaceToViewInDrawing:v9];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  [PKDrawing _boundingBoxForStrokeArray:self->_lastStrokesInInitialStrokes];
  v18 = v19;
  v21 = CGRectApplyAffineTransform(v20, &v18);
  v10 = v21.origin.x;
  v11 = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  CGRectGetMaxX(v21);
  v22.origin.x = v10;
  v22.origin.y = v11;
  v22.size.width = width;
  v22.size.height = height;
  MaxY = CGRectGetMaxY(v22);
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = width;
  v23.size.height = height;
  MinX = CGRectGetMinX(v23);
  v24.origin.x = v10;
  v24.origin.y = v11;
  v24.size.width = width;
  v24.size.height = height;
  CGRectGetMinY(v24);
  v16 = x < MinX;
  if (y <= MaxY - height)
  {
    v16 = 0;
  }

  return y > MaxY + 38.0 || v16;
}

- (BOOL)_locationShouldFlipOverRightKnob:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(PKSelectionInteraction *)self isLTR])
  {

    return [(PKSelectionInteraction *)self _locationShouldFlipOverRightKnob_LTR:x, y];
  }

  else
  {

    return [(PKSelectionInteraction *)self _locationShouldFlipOverRightKnob_RTL:x, y];
  }
}

- (BOOL)_locationShouldFlipOverRightKnob_LTR:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PKSelectionInteraction *)self selectionController];
  v7 = v6;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  memset(&v19, 0, sizeof(v19));
  v9 = [(PKSelectionInteraction *)self currentDrawing];
  if (WeakRetained)
  {
    [WeakRetained transformFromStrokeSpaceToViewInDrawing:v9];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  [PKDrawing _boundingBoxForStrokeArray:self->_lastStrokesInInitialStrokes];
  v18 = v19;
  v21 = CGRectApplyAffineTransform(v20, &v18);
  v10 = v21.origin.x;
  v11 = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  MaxX = CGRectGetMaxX(v21);
  v22.origin.x = v10;
  v22.origin.y = v11;
  v22.size.width = width;
  v22.size.height = height;
  MaxY = CGRectGetMaxY(v22);
  v16 = x > MaxX;
  if (y <= MaxY - height)
  {
    v16 = 0;
  }

  return y > MaxY + 38.0 || v16;
}

- (BOOL)_locationShouldFlipOverRightKnob_RTL:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PKSelectionInteraction *)self selectionController];
  v7 = v6;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  memset(&v19, 0, sizeof(v19));
  v9 = [(PKSelectionInteraction *)self currentDrawing];
  if (WeakRetained)
  {
    [WeakRetained transformFromStrokeSpaceToViewInDrawing:v9];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  [PKDrawing _boundingBoxForStrokeArray:self->_firstStrokesInInitialStrokes];
  v18 = v19;
  v21 = CGRectApplyAffineTransform(v20, &v18);
  v10 = v21.origin.x;
  v11 = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  CGRectGetMinX(v21);
  v22.origin.x = v10;
  v22.origin.y = v11;
  v22.size.width = width;
  v22.size.height = height;
  MinY = CGRectGetMinY(v22);
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = width;
  v23.size.height = height;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = v10;
  v24.origin.y = v11;
  v24.size.width = width;
  v24.size.height = height;
  CGRectGetMaxY(v24);
  if (x <= MaxX)
  {
    v16 = 0;
  }

  else
  {
    v25.origin.x = v10;
    v25.origin.y = v11;
    v25.size.width = width;
    v25.size.height = height;
    CGRectGetMinX(v25);
    v26.origin.x = v10;
    v26.origin.y = v11;
    v26.size.width = width;
    v26.size.height = height;
    v16 = y < height + CGRectGetMinY(v26);
  }

  return y < MinY + -38.0 || v16;
}

- (void)_updateStateIfNecessaryWithOldModificationType:(int64_t)a3 newModificationType:(int64_t)a4
{
  if (a3 == 3 && a4)
  {
    self->_modificationType = a4;
    v4 = 1;
    if (a4 != 1)
    {
      v4 = 2;
    }

    self->_knobDragMode = v4;
  }
}

- (void)_didBrushWithKnob:(id)a3
{
  v4 = a3;
  v5 = [(PKSelectionInteraction *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [v4 touches];
  v11 = [v10 firstObject];

  v12 = [v11 type] == 2;
  if ([v4 state] == 1)
  {
    self->_knobDragMode = 0;
    v13 = [(PKSelectionInteraction *)self _drawingForLocation:v7, v9];
    [(PKSelectionInteraction *)self setCurrentDrawing:v13];

    [(PKSelectionInteraction *)self _resetVelocityWindow];
    WeakRetained = objc_loadWeakRetained(&self->_selectionController);
    v15 = WeakRetained;
    if (WeakRetained)
    {
      v16 = *(WeakRetained + 16);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v18 = [v17 strokes];
    initialStrokeSelectionBeforeModification = self->_initialStrokeSelectionBeforeModification;
    self->_initialStrokeSelectionBeforeModification = v18;

    v20 = objc_loadWeakRetained(&self->_selectionController);
    v21 = v20;
    if (v20)
    {
      v22 = *(v20 + 16);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    v24 = [v23 strokes];
    v25 = [v24 mutableCopy];
    smartSelectedStrokes = self->_smartSelectedStrokes;
    self->_smartSelectedStrokes = v25;

    v27 = objc_loadWeakRetained(&self->_selectionController);
    [(PKSelectionController *)v27 clearSelectionIfNecessaryAnimated:1 toBeginSelectionGesture:0 withCompletion:?];

    self->_modificationType = 3;
    v28 = [PKSelectionInput inputWithType:1 location:v12 inputType:v7, v9];
    [(PKSelectionInteraction *)self _updateStateIfNecessaryWithOldModificationType:self->_modificationType newModificationType:[(PKSelectionInteraction *)self _updateSmartSelectionWithInput:v28 modificationType:self->_modificationType]];
    [(PKSelectionGlowRenderer *)self->_glowRenderer _willBeginDragKnobLocation:self->_knobDragMode atPoint:v7 knobDragMode:v9];
    goto LABEL_12;
  }

  if ([v4 state] == 2)
  {
    v29 = [(PKSelectionInteraction *)self selectionController];
    v30 = [(PKSelectionController *)v29 autoscrollForPointIfNecessary:v7, v9];
    v32 = v31;

    [v4 lastTouchTimestamp];
    [PKSelectionInteraction _updateVelocityWindowWithTimestamp:"_updateVelocityWindowWithTimestamp:location:" location:?];
    v33 = [(PKSelectionInteraction *)self _selectionTypeForVelocity:?];
    v34 = [v4 touches];
    v35 = [v34 firstObject];
    v36 = [v35 type];

    v28 = [PKSelectionInput inputWithType:v33 location:v12 inputType:v7, v9];
    [(PKSelectionInteraction *)self _updateStateIfNecessaryWithOldModificationType:self->_modificationType newModificationType:[(PKSelectionInteraction *)self _updateSmartSelectionWithInput:v28 modificationType:self->_modificationType liveScrollOffset:0 completion:v30, v32]];
    glowRenderer = self->_glowRenderer;
    if (glowRenderer)
    {
      currentlyDraggedKnob = self->_currentlyDraggedKnob;
      knobDragMode = self->_knobDragMode;
      glowRenderer->_knobDragMode = knobDragMode;
      [(PKSelectionGlowRenderer *)glowRenderer _updateKnobAppearanceForDragAtKnobLocation:knobDragMode point:v33 knobDragMode:v36 selectionType:v7 touchType:v9];
    }

    goto LABEL_12;
  }

  if ([v4 state] == 3)
  {
    [(PKSelectionGlowRenderer *)self->_glowRenderer _didEndDragKnobLocation:v40 knobDragMode:self->_currentlyDraggedKnob, self->_knobDragMode];
    [v4 lastTouchTimestamp];
    [PKSelectionInteraction _updateVelocityWindowWithTimestamp:"_updateVelocityWindowWithTimestamp:location:" location:?];
    v41 = [(PKSelectionInteraction *)self _selectionTypeForVelocity:?];
    v28 = [PKSelectionInput inputWithType:v41 location:v12 inputType:v7, v9];
    modificationType = self->_modificationType;
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __44__PKSelectionInteraction__didBrushWithKnob___block_invoke;
    v43[3] = &unk_1E82D7170;
    v43[4] = self;
    v43[5] = v41;
    [(PKSelectionInteraction *)self _updateSmartSelectionWithInput:v28 modificationType:modificationType liveScrollOffset:v43 completion:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
LABEL_12:

    goto LABEL_13;
  }

  if ([v4 state] == 4 || objc_msgSend(v4, "state") == 5)
  {
    [(PKSelectionInteraction *)self _clearLiveSelectionPath];
  }

LABEL_13:
}

void __44__PKSelectionInteraction__didBrushWithKnob___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) selectionController];
  v3 = *(a1 + 32);
  v4 = v3[40];
  v5 = [v3 currentDrawing];
  v6 = [(PKSelectionController *)v2 contentTypeForIntersectedStrokes:v4 inDrawing:v5];

  v7 = +[PKSelectionStatisticsManager sharedStatisticsManager];
  [v7 recordSmartSelectionEventWithType:*(a1 + 40) contentType:v6 gestureInvoked:5];

  v8 = [*(a1 + 32) selectionController];
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v9[40];
  v12 = [v9 currentDrawing];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__PKSelectionInteraction__didBrushWithKnob___block_invoke_2;
  v13[3] = &unk_1E82D7148;
  v13[4] = *(a1 + 32);
  [(PKSelectionController *)v8 selectStrokes:v11 externalElements:0 forSelectionType:v10 inDrawing:v12 completion:v13];
}

- (void)_updateSmartSelectionWithDragToLocation:(CGPoint)a3 liveScrollOffset:(CGPoint)a4 initialSelectedWord:(id)a5 completion:(id)a6
{
  y = a4.y;
  x = a4.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = a5;
  v13 = a6;
  v14 = [(PKSelectionInteraction *)self currentDrawing];
  [(PKSelectionInteraction *)self _pointFromViewToStrokeSpace:v14 inDrawing:v10, v9];
  v16 = v15;
  v18 = v17;

  v19 = [(PKSelectionInteraction *)self isLTR];
  currentlyDraggedKnob = self->_currentlyDraggedKnob;
  v21 = !v19;
  if (currentlyDraggedKnob == v21)
  {
    v22 = v16;
  }

  else
  {
    v22 = self->_undraggedKnobLocationInStrokeSpace.x;
  }

  if (currentlyDraggedKnob == v21)
  {
    v23 = v18;
  }

  else
  {
    v23 = self->_undraggedKnobLocationInStrokeSpace.y;
  }

  if (currentlyDraggedKnob == v21)
  {
    v16 = self->_undraggedKnobLocationInStrokeSpace.x;
    v18 = self->_undraggedKnobLocationInStrokeSpace.y;
  }

  v24 = [(PKSelectionInteraction *)self currentDrawing];
  [(PKSelectionGlowRenderer *)self->_glowRenderer _renderLiveSelectionPath:0 forStrokes:self->_smartSelectedStrokes inDrawing:v24 liveScrollOffset:x, y];
  v25 = [(PKSelectionInteraction *)self selectionController];
  v26 = [(NSOrderedSet *)self->_initialStrokeSelectionBeforeModification array];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __114__PKSelectionInteraction__updateSmartSelectionWithDragToLocation_liveScrollOffset_initialSelectedWord_completion___block_invoke;
  v30[3] = &unk_1E82D9208;
  v30[4] = self;
  v31 = v12;
  v34 = x;
  v35 = y;
  v32 = v24;
  v33 = v13;
  v27 = v13;
  v28 = v24;
  v29 = v12;
  [(PKSelectionController *)v25 fetchStrokesToSelectBetweenTopPoint:v28 bottomPoint:v26 inDrawing:v30 liveScrollOffset:v22 existingSelection:v23 completion:v16, v18, x, y];
}

void __114__PKSelectionInteraction__updateSmartSelectionWithDragToLocation_liveScrollOffset_initialSelectedWord_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([*(a1 + 32) _liveSelectionGestureStillActive])
  {
    v3 = [v10 intersectedStrokes];
    v4 = [v3 mutableCopy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 320);
    *(v5 + 320) = v4;

    if (*(a1 + 40))
    {
      [*(*(a1 + 32) + 320) unionOrderedSet:?];
    }

    v7 = [v10 intersectedStrokes];
    v8 = [v7 count];

    if (v8)
    {
      [*(*(a1 + 32) + 16) _renderLiveSelectionPath:0 forStrokes:*(*(a1 + 32) + 320) inDrawing:*(a1 + 48) liveScrollOffset:{*(a1 + 64), *(a1 + 72)}];
    }
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(a1 + 32) + 320));
  }
}

- (id)_knobForLocation:(CGPoint)a3 forInputType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v9 = WeakRetained;
  if (!WeakRetained || !*(WeakRetained + 16))
  {
    goto LABEL_15;
  }

  v10 = objc_loadWeakRetained(&self->_selectionController);
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 19);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  if (![v13 selectionType])
  {

LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  v14 = objc_loadWeakRetained(&self->_selectionController);
  v15 = v14;
  if (v14)
  {
    v16 = *(v14 + 19);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [v17 selectionType];

  if (v18 == 6)
  {
    v19 = 0;
    goto LABEL_17;
  }

  v20 = objc_loadWeakRetained(&self->_selectionController);
  v21 = v20;
  if (v20)
  {
    v22 = *(v20 + 19);
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  v9 = [v23 selectionRenderer];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v19 = [(PKSelectionGlowRenderer *)v9 _affordanceForLocationInSelectionView:a4 inputType:x, y];
LABEL_16:

LABEL_17:

  return v19;
}

- (id)_firstStrokesInStrokes:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKSelectionInteraction *)self selectionController];
    v6 = v5;
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained((v5 + 120));
    }

    else
    {
      WeakRetained = 0;
    }

    v8 = [(PKSelectionInteraction *)self currentDrawing];
    v9 = [v8 uuid];
    v10 = [WeakRetained _attachmentForUUID:v9];

    v11 = [v10 _firstStrokesInSelectedStrokes:v4];
    v12 = v11;
    if (!v11 || ![v11 count])
    {
      if ([(PKSelectionInteraction *)self isLTR])
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v14 = [(PKSelectionInteraction *)self _closestStrokesToCorner:v13 fromStrokes:v4];

      v12 = v14;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_lastStrokesInStrokes:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(PKSelectionInteraction *)self selectionController];
    v6 = v5;
    if (v5)
    {
      WeakRetained = objc_loadWeakRetained((v5 + 120));
    }

    else
    {
      WeakRetained = 0;
    }

    v8 = [(PKSelectionInteraction *)self currentDrawing];
    v9 = [v8 uuid];
    v10 = [WeakRetained _attachmentForUUID:v9];

    v11 = [v10 _lastStrokesInSelectedStrokes:v4];
    v12 = v11;
    if (!v11 || ![v11 count])
    {
      if ([(PKSelectionInteraction *)self isLTR])
      {
        v13 = 8;
      }

      else
      {
        v13 = 4;
      }

      v14 = [(PKSelectionInteraction *)self _closestStrokesToCorner:v13 fromStrokes:v4];

      v12 = v14;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)knobsContainPoint:(CGPoint)a3 forInputType:(int64_t)a4
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 19);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 isHidden];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v14 = [(PKSelectionInteraction *)self _knobForLocation:a4 forInputType:x, y];
    v15 = [(PKSelectionInteraction *)self view];
    v16 = [(PKSelectionInteraction *)self selectionController];
    v17 = v16;
    if (v16)
    {
      v18 = *(v16 + 152);
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    [v15 convertPoint:v19 fromView:{x, y}];
    v21 = v20;
    v23 = v22;

    [(PKDrawingAdjustmentKnob *)self->_insertSpaceAffordance frame];
    v24 = v31.origin.x;
    v25 = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    MidX = CGRectGetMidX(v31);
    v32.origin.x = v24;
    v32.origin.y = v25;
    v32.size.width = width;
    v32.size.height = height;
    v33.origin.y = CGRectGetMidY(v32) + -20.0;
    v33.size.height = 40.0;
    v33.origin.x = MidX + -20.0;
    v33.size.width = 40.0;
    v30.x = v21;
    v30.y = v23;
    v13 = (v14 != 0) | CGRectContainsPoint(v33, v30);
  }

  return v13 & 1;
}

- (void)_updateAllowedTouchTypesForSelectedInk:(id)a3
{
  v4 = a3;
  v5 = [(PKSelectionInteraction *)self selectionController];
  v7 = v5;
  if (v5)
  {
    v6 = *(v5 + 128) != 0;
  }

  else
  {
    v6 = 0;
  }

  [(PKSelectionInteraction *)self _updateAllowedTouchTypesForSelectedInk:v4 hasCurrentSelection:v6];
}

- (void)_updateAllowedTouchTypesForSelectedInk:(id)a3 hasCurrentSelection:(BOOL)a4
{
  v4 = a4;
  v69 = *MEMORY[0x1E69E9840];
  if ([a3 _isLassoInk])
  {
    v63 = 0uLL;
    v64 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
    v6 = [(PKSelectionInteraction *)self _gestures];
    v7 = [v6 countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v62;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v62 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v61 + 1) + 8 * i) setAllowedTouchTypes:&unk_1F47C1A60];
        }

        v8 = [v6 countByEnumeratingWithState:&v61 objects:v68 count:16];
      }

      while (v8);
    }
  }

  else if (v4)
  {
    v59 = 0uLL;
    v60 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    v11 = [(PKSelectionInteraction *)self selectionController];
    v12 = v11;
    if (v11)
    {
      v13 = *(v11 + 152);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = [v14 _selectionViewGestures];

    v16 = [v15 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v58;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v58 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v57 + 1) + 8 * j) setAllowedTouchTypes:&unk_1F47C1A60];
        }

        v17 = [v15 countByEnumeratingWithState:&v57 objects:v67 count:16];
      }

      while (v17);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v20 = [(PKSelectionInteraction *)self _selectionModifierGestures];
    v21 = [v20 countByEnumeratingWithState:&v53 objects:v66 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v54;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v54 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v53 + 1) + 8 * k) setAllowedTouchTypes:&unk_1F47C1A60];
        }

        v22 = [v20 countByEnumeratingWithState:&v53 objects:v66 count:16];
      }

      while (v22);
    }

    [(UIPanGestureRecognizer *)self->_insertSpaceAffordanceGesture setAllowedTouchTypes:&unk_1F47C1A60];
  }

  else
  {
    v51 = 0uLL;
    v52 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    obj = [(PKSelectionInteraction *)self _gestures];
    v25 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v50;
      v28 = &unk_1F47C1A78;
      v29 = MEMORY[0x1E695E0F0];
      do
      {
        v30 = 0;
        v47 = v26;
        do
        {
          if (*v50 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v49 + 1) + 8 * v30);
          v32 = [(PKSelectionInteraction *)self selectionController];
          v33 = v32;
          if (v32)
          {
            WeakRetained = objc_loadWeakRetained((v32 + 120));
          }

          else
          {
            WeakRetained = 0;
          }

          if ([WeakRetained allowsFingerDrawing])
          {
            v35 = v29;
          }

          else
          {
            v35 = v28;
          }

          [v31 setAllowedTouchTypes:v35];

          v36 = [v31 name];

          if (v36 == @"com.apple.PencilKit.knobDrag")
          {
            v37 = v27;
            v38 = v28;
            v39 = [(PKSelectionInteraction *)self selectionController];
            v40 = v39;
            if (v39)
            {
              v41 = objc_loadWeakRetained((v39 + 120));
            }

            else
            {
              v41 = 0;
            }

            v42 = self;
            v43 = [(PKSelectionInteraction *)self currentDrawing];
            v44 = [v43 uuid];
            v45 = [v41 _attachmentForUUID:v44];

            if ([v45 isExternalAttachment])
            {
              [v31 setAllowedTouchTypes:&unk_1F47C1A60];
            }

            v28 = v38;
            self = v42;
            v27 = v37;
            v29 = MEMORY[0x1E695E0F0];
            v26 = v47;
          }

          ++v30;
        }

        while (v26 != v30);
        v46 = [obj countByEnumeratingWithState:&v49 objects:v65 count:16];
        v26 = v46;
      }

      while (v46);
    }
  }

  [(PKSelectionInteraction *)self _updateAllowedTouchTypesForLassoGR];
}

- (BOOL)gesturesAllowedForPaletteState
{
  v3 = [(PKSelectionInteraction *)self selectionController];
  v4 = v3;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 120));
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = [WeakRetained isInNotesTextView];

  v7 = [(PKSelectionInteraction *)self view];
  v8 = [v7 window];
  v9 = [PKToolPicker isActiveToolPickerVisibleForWindow:v8];

  v10 = [(PKSelectionInteraction *)self selectionController];
  v11 = v10;
  if (v10)
  {
    v12 = objc_loadWeakRetained((v10 + 120));
  }

  else
  {
    v12 = 0;
  }

  v13 = [v12 ink];
  v14 = [v13 _isLassoInk];

  if (v6)
  {
    v15 = [(PKSelectionInteraction *)self selectionController];
    v16 = v15;
    if (v15)
    {
      v17 = objc_loadWeakRetained((v15 + 120));
    }

    else
    {
      v17 = 0;
    }

    v18 = [v17 allowsFingerDrawing];

    v9 = v18 ^ 1;
  }

  return (v9 | v14) & 1;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if (![(PKSelectionInteraction *)self isEnabled])
  {
    v5 = [(PKSelectionInteraction *)self view];
    v6 = [v5 gestureRecognizers];
    v7 = [v6 containsObject:v4];

    if (v7)
    {
      v8 = os_log_create("com.apple.pencilkit", "Selection");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEFAULT, "Selection interaction is disabled", buf, 2u);
      }

LABEL_10:

      goto LABEL_11;
    }
  }

  v9 = [(PKSelectionInteraction *)self view];
  [(UITapGestureRecognizer *)v4 locationInView:v9];
  v11 = v10;
  v13 = v12;

  if ([(PKSelectionInteraction *)self _selectionInteractionShouldBeginAtPoint:0 forEvent:v4 orGestureRecognizer:v11, v13])
  {
    if (![(PKSelectionInteraction *)self gesturesAllowedForPaletteState]&& self->_progressiveTapGestureRecognizer != v4)
    {
      v8 = os_log_create("com.apple.pencilkit", "Selection");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v82 = 0;
        _os_log_debug_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEBUG, "Cannot start gesture with finger if pen is selected unless palette is up", v82, 2u);
      }

      goto LABEL_10;
    }

    v15 = [(PKSelectionInteraction *)self _drawingForLocation:v11, v13];
    WeakRetained = objc_loadWeakRetained(&self->_selectionController);
    if (WeakRetained)
    {
      v17 = WeakRetained[16];

      if (v17)
      {
        v18 = objc_loadWeakRetained(&self->_selectionController);
        v19 = v18;
        if (v18)
        {
          v20 = *(v18 + 19);
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;

        v22 = [v21 _selectionViewGestures];
        [(UITapGestureRecognizer *)v4 locationInView:v21];
        v24 = v23;
        v26 = v25;
        v14 = [v21 containsPoint:0 forInputType:?];
        v27 = [(PKSelectionInteraction *)self _knobForLocation:v24, v26];
        v28 = v27;
        if (v27)
        {
          v29 = *(v27 + 72);
        }

        else
        {
          v29 = 0;
        }

        self->_currentlyDraggedKnob = v29;
        if (self->_insertSpaceAffordanceGesture == v4)
        {
          [(UITapGestureRecognizer *)v4 locationInView:self->_insertSpaceAffordance];
          v39 = v38;
          v41 = v40;
          [(PKDrawingAdjustmentKnob *)self->_insertSpaceAffordance bounds];
          x = v85.origin.x;
          y = v85.origin.y;
          width = v85.size.width;
          height = v85.size.height;
          MidX = CGRectGetMidX(v85);
          v86.origin.x = x;
          v86.origin.y = y;
          v86.size.width = width;
          v86.size.height = height;
          v87.origin.y = CGRectGetMidY(v86) + -20.0;
          v87.size.height = 40.0;
          v87.origin.x = MidX + -20.0;
          v87.size.width = 40.0;
          v84.x = v39;
          v84.y = v41;
          LOBYTE(v14) = CGRectContainsPoint(v87, v84);
          goto LABEL_65;
        }

        if ([v22 containsObject:v4])
        {
          v30 = objc_loadWeakRetained(&self->_selectionController);
          v31 = v30;
          if (v30)
          {
            v32 = *(v30 + 19);
          }

          else
          {
            v32 = 0;
          }

          v33 = v32;
          v34 = [v33 isHidden];

          if ((v34 & 1) == 0)
          {
            v47 = [v21 dragGR];

            if (v28 && v47 == v4 && ((v14 ^ 1) & 1) == 0)
            {
              [v21 bounds];
              v52 = DKDCenterOfRect(v48, v49, v50, v51);
              LOBYTE(v14) = sqrt((v53 - v26) * (v53 - v26) + (v52 - v24) * (v52 - v24)) < [(PKSelectionModificationKnob *)v28 distanceFromKnobCenterToPoint:v24, v26];
            }

            goto LABEL_65;
          }

          goto LABEL_23;
        }

        if (self->_lassoGestureRecognizer == v4)
        {
          if (v15)
          {
            LOBYTE(v14) = (v28 == 0) & ~v14;
          }

          else
          {
            LOBYTE(v14) = 0;
          }

          goto LABEL_65;
        }

        if (self->_progressiveTapGestureRecognizer == v4)
        {
          LOBYTE(v14) = v14 ^ 1;
          goto LABEL_65;
        }

        if (self->_knobBrushGestureRecognizer == v4 || self->_knobDragGestureRecognizer == v4)
        {
          if (v28)
          {
            v65 = objc_loadWeakRetained(&self->_selectionController);
            v66 = v65;
            if (v65)
            {
              v67 = *(v65 + 19);
            }

            else
            {
              v67 = 0;
            }

            v68 = v67;
            v14 = [v68 isHidden] ^ 1;

            goto LABEL_65;
          }

          goto LABEL_23;
        }

        if (self->_tapAndHoldToSelectLongPressGestureRecognizer == v4 || self->_modifySelectionRecognizer == v4 && ![v21 selectionType])
        {
LABEL_23:
          LOBYTE(v14) = 0;
LABEL_65:

LABEL_66:
          goto LABEL_72;
        }

LABEL_56:
        LOBYTE(v14) = 1;
LABEL_72:

        goto LABEL_73;
      }
    }

    if (self->_knobBrushGestureRecognizer != v4 && self->_knobDragGestureRecognizer != v4)
    {
      v35 = [(PKSelectionInteraction *)self selectionController];
      v36 = v35;
      if (v35)
      {
        v37 = objc_loadWeakRetained((v35 + 120));
      }

      else
      {
        v37 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
      }

      else
      {
        noOpTapGestureRecognizer = self->_noOpTapGestureRecognizer;

        if (noOpTapGestureRecognizer == v4)
        {
          goto LABEL_71;
        }
      }

      if (self->_insertSpaceAffordanceGesture != v4)
      {
        v55 = [(PKSelectionInteraction *)self selectionController];
        v56 = v55;
        if (v55)
        {
          v57 = objc_loadWeakRetained((v55 + 120));
        }

        else
        {
          v57 = 0;
        }

        v58 = [v57 allowsFingerDrawing];

        v59 = [(PKSelectionInteraction *)self selectionController];
        v60 = v59;
        if (v59)
        {
          v61 = objc_loadWeakRetained((v59 + 120));
        }

        else
        {
          v61 = 0;
        }

        v62 = [v61 ink];
        v63 = [v62 _isLassoInk];

        v64 = v63 | v58 ^ 1;
        if (self->_progressiveTapGestureRecognizer == v4 || self->_modifySelectionRecognizer == v4)
        {
          LOBYTE(v14) = v64 & (v15 != 0);
          goto LABEL_72;
        }

        if (self->_tapAndHoldToSelectLongPressGestureRecognizer != v4)
        {
          if (v15)
          {
            LOBYTE(v14) = v63;
          }

          else
          {
            LOBYTE(v14) = 0;
          }

          if (self->_lassoGestureRecognizer == v4)
          {
            goto LABEL_72;
          }

          goto LABEL_56;
        }

        if (((v15 != 0) & v64) == 1)
        {
          [(PKSelectionInteraction *)self _pointFromViewToStrokeSpace:v15 inDrawing:v11, v13];
          v70 = v69;
          v72 = v71;
          v73 = [(PKSelectionInteraction *)self _visibleOnscreenStrokesForDrawing:v15];
          v21 = [PKClusteringUtility _geometricBasedStrokeClusteringFromPoint:v73 visibleStrokes:1 selectionType:0 inputType:v70, v72];

          if (v21)
          {
            v74 = [v21 count] != 0;
          }

          else
          {
            v74 = 0;
          }

          v76 = [(PKSelectionInteraction *)self selectionController];
          v77 = [(PKSelectionController *)v76 topView];
          v78 = [v15 uuid];
          v79 = [v77 _attachmentForUUID:v78];

          v80 = [(PKSelectionInteraction *)self selectionController];
          v81 = [(PKSelectionController *)v80 _externalElementsAtLocation:v79 inAttachment:v70, v72];

          if ([v81 count])
          {
            LOBYTE(v14) = 1;
          }

          else
          {
            LOBYTE(v14) = v74;
          }

          goto LABEL_66;
        }
      }
    }

LABEL_71:
    LOBYTE(v14) = 0;
    goto LABEL_72;
  }

LABEL_11:
  LOBYTE(v14) = 0;
LABEL_73:

  return v14;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = *(WeakRetained + 19);
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v11 dragGR];

  if (self->_lassoGestureRecognizer == v6 && v12 == v7)
  {
    goto LABEL_5;
  }

  v14 = objc_loadWeakRetained(&self->_selectionController);
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = v14[16];

  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = objc_loadWeakRetained(&self->_selectionController);
  v17 = v16;
  if (v16)
  {
    v18 = *(v16 + 19);
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = [v19 _selectionViewGestures];
  v21 = [v19 dragGR];
  v22 = v21;
  if (v21 != v6)
  {

LABEL_13:
    if ([v20 containsObject:v6])
    {
      v24 = [v19 dragGR];
      if (v24 == v6)
      {
      }

      else
      {
        modifySelectionRecognizer = self->_modifySelectionRecognizer;

        if (modifySelectionRecognizer == v7)
        {
          goto LABEL_16;
        }
      }
    }

    v26 = [v19 doubleTapGR];

    if (v26 == v7)
    {
      goto LABEL_5;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v23 = [v19 editMenuGR];

  if (v23 != v7)
  {
    goto LABEL_13;
  }

LABEL_16:

LABEL_5:
  v13 = 1;
LABEL_20:

  return v13;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if ((self->_lassoGestureRecognizer != v6 || self->_modifySelectionRecognizer != v7) && (self->_progressiveTapGestureRecognizer != v6 || self->_tapAndHoldToSelectLongPressGestureRecognizer == v7))
  {
    WeakRetained = objc_loadWeakRetained(&self->_selectionController);
    if (WeakRetained)
    {
      v10 = WeakRetained[16];

      if (!v10)
      {
        v16 = 0;
        goto LABEL_22;
      }

      v11 = [(PKSelectionInteraction *)self selectionController];
      v12 = v11;
      if (v11)
      {
        v13 = *(v11 + 152);
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      v15 = [v14 dragGR];
      if (v15 != v6)
      {

LABEL_14:
        v18 = [(PKSelectionInteraction *)self selectionController];
        v19 = v18;
        if (v18)
        {
          v20 = *(v18 + 152);
        }

        else
        {
          v20 = 0;
        }

        v21 = v20;
        v22 = [v21 dragGR];

        if (v22 == v6 && [(UIPanGestureRecognizer *)v22 state]== 2)
        {
          objc_opt_class();
          v16 = objc_opt_isKindOfClass() ^ 1;
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_21;
      }

      modifySelectionRecognizer = self->_modifySelectionRecognizer;

      if (modifySelectionRecognizer != v8)
      {
        goto LABEL_14;
      }

      v16 = 1;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

LABEL_21:

    goto LABEL_22;
  }

  v16 = 1;
LABEL_22:

  return v16 & 1;
}

- (BOOL)_selectionShouldReceiveTouchForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PKSelectionInteraction *)self selectionController];
  if (v6)
  {
    v7 = v6[16];

    if (!v7)
    {
      v19 = 0;
      return v19 & 1;
    }

    WeakRetained = objc_loadWeakRetained(&self->_selectionController);
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v10 = *(WeakRetained + 19);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [(PKSelectionInteraction *)self selectionController];
    v13 = [(PKSelectionController *)v12 topView];
    [v11 convertPoint:v13 fromView:{x, y}];
    v15 = v14;
    v17 = v16;

    LOBYTE(v12) = [v11 containsPoint:0 forInputType:{v15, v17}];
    v18 = [(PKSelectionInteraction *)self _knobForLocation:v15, v17];
    v19 = (v18 != 0) | v12;
  }

  else
  {
    v11 = 0;
    v19 = 0;
  }

  return v19 & 1;
}

- (BOOL)_selectionInteractionShouldBeginAtPoint:(CGPoint)a3 forEvent:(id)a4 orGestureRecognizer:(id)a5
{
  y = a3.y;
  x = a3.x;
  v22 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  v11 = [(PKSelectionInteraction *)self delegate];

  if (v11 && (-[PKSelectionInteraction delegate](self, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_opt_respondsToSelector(), v12, (v13 & 1) != 0) && (-[PKSelectionInteraction delegate](self, "delegate"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 selectionInteractionShouldBegin:self atPoint:v9 forEvent:v10 orGestureRecognizer:{x, y}], v14, (v15 & 1) == 0))
  {
    if (v9)
    {
      v18 = os_log_create("com.apple.pencilkit", "Selection");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v9;
        _os_log_impl(&dword_1C7CCA000, v18, OS_LOG_TYPE_DEFAULT, "Interaction delegate does not want interaction to begin for event: %@", &v20, 0xCu);
      }
    }

    if (v10)
    {
      v19 = os_log_create("com.apple.pencilkit", "Selection");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v10;
        _os_log_impl(&dword_1C7CCA000, v19, OS_LOG_TYPE_DEFAULT, "Interaction delegate does not want interaction to begin for gesture recognizer: %@", &v20, 0xCu);
      }
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)_selectionInteractionShouldForwardAtPoint:(CGPoint)a3 forEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v14 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(PKSelectionInteraction *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(PKSelectionInteraction *)self delegate];
    LODWORD(self) = [v10 selectionInteractionShouldForwardToElements:self atPoint:v7 forEvent:{x, y}];

    if (self)
    {
      self = os_log_create("com.apple.pencilkit", "Selection");
      if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_1C7CCA000, &self->super, OS_LOG_TYPE_DEFAULT, "Interaction delegate will forward event: %@", &v12, 0xCu);
      }

      LOBYTE(self) = 1;
    }
  }

  else
  {
    LOBYTE(self) = 0;
  }

  return self;
}

- (BOOL)_dragShouldBeginForSession:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);
  if (WeakRetained)
  {
    v6 = WeakRetained[16];

    if (!v6)
    {
      v12 = 0;
      goto LABEL_10;
    }

    v7 = objc_loadWeakRetained(&self->_selectionController);
    v8 = v7;
    if (v7)
    {
      v9 = *(v7 + 19);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    [v4 locationInView:v10];
    v11 = [(PKSelectionInteraction *)self _knobForLocation:?];
    v12 = v11 == 0;
    if (v11)
    {
      v13 = v11[9];
    }

    else
    {
      v13 = 0;
    }

    self->_currentlyDraggedKnob = v13;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

LABEL_10:
  return v12;
}

- (CGPoint)_pointFromViewToStrokeSpace:(CGPoint)a3 inDrawing:(id)a4
{
  v13 = *&a3.y;
  v14 = a3;
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v6 = [(PKSelectionInteraction *)self selectionController];
  v7 = v6;
  if (v6 && (WeakRetained = objc_loadWeakRetained((v6 + 120))) != 0)
  {
    v9 = WeakRetained;
    [WeakRetained transformFromViewToStrokeSpaceInDrawing:{v5, v13, v14}];
  }

  else
  {
    v9 = 0;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
  }

  v12 = vaddq_f64(v17, vmlaq_n_f64(vmulq_n_f64(v16, *&v13), v15, v14.x));
  v11 = v12.f64[1];
  v10 = v12.f64[0];
  result.y = v11;
  result.x = v10;
  return result;
}

- (PKSelectionInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)_drawingBeganLocation
{
  x = self->__drawingBeganLocation.x;
  y = self->__drawingBeganLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end