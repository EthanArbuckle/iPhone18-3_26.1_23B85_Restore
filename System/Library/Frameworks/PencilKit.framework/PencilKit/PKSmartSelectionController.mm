@interface PKSmartSelectionController
- (BOOL)canTranslate;
- (BOOL)selectionInteraction:(id)a3 handleTapOnCanvasAtLocation:(CGPoint)a4 inAttachment:(id)a5;
- (NSArray)currentSelectedStrokes;
- (PKSmartSelectionController)initWithDelegate:(id)a3 canvasView:(id)a4 drawing:(id)a5 gestureRecognizer:(id)a6;
- (PKSmartSelectionController)initWithDelegate:(id)a3 canvasView:(id)a4 gestureRecognizer:(id)a5 recognitionController:(id)a6;
- (UIView)selectionView;
- (id)strokeSpatialCacheForAttachment:(id)a3;
- (int64_t)currentSelectionType;
- (int64_t)selectionTypeForTapCount:(int64_t)a3;
- (void)clearSelectionIfNecessaryWithCompletion:(id)a3;
- (void)dealloc;
- (void)didFinishCalculatingVisibleOnscreenStrokes:(id)a3 drawing:(id)a4;
- (void)handleDoubleTapInputAtPoint:(CGPoint)a3;
- (void)handleDoubleTapInputAtPoint:(CGPoint)a3 inSelectionView:(id)a4;
- (void)invalidateCacheForBounds:(CGRect)a3 inDrawing:(id)a4;
- (void)selectStrokes:(id)a3 forSelectionType:(int64_t)a4 inDrawing:(id)a5;
- (void)selectStrokesWithoutDidSelectStrokesUpdate:(id)a3 inDrawing:(id)a4;
- (void)selectionInteraction:(id)a3 didSelectStrokes:(id)a4 selectionType:(int64_t)a5 inAttachment:(id)a6;
- (void)setExternalAttachment:(id)a3;
- (void)straighten:(id)a3 completion:(id)a4;
- (void)updateGestureHistoryWithLocation:(CGPoint)a3 gesture:(id)a4;
@end

@implementation PKSmartSelectionController

- (PKSmartSelectionController)initWithDelegate:(id)a3 canvasView:(id)a4 drawing:(id)a5 gestureRecognizer:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [PKRecognitionController alloc];
  v15 = [v11 strokes];
  v16 = [(PKRecognitionController *)v14 initWithDrawing:v11 visibleOnscreenStrokes:v15 useSessionCache:1];

  v17 = [(PKSmartSelectionController *)self initWithDelegate:v13 canvasView:v12 gestureRecognizer:v10 recognitionController:v16];
  return v17;
}

- (PKSmartSelectionController)initWithDelegate:(id)a3 canvasView:(id)a4 gestureRecognizer:(id)a5 recognitionController:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v26.receiver = self;
  v26.super_class = PKSmartSelectionController;
  v14 = [(PKSmartSelectionController *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, v10);
    objc_storeStrong(&v15->_recognitionController, a6);
    v16 = [v11 _tiledView];
    tiledView = v15->_tiledView;
    v15->_tiledView = v16;

    recognitionController = v15->_recognitionController;
    if (recognitionController)
    {
      sessionManager = recognitionController->_sessionManager;
    }

    else
    {
      sessionManager = 0;
    }

    objc_storeStrong(&v15->_sessionManager, sessionManager);
    v20 = [[PKSelectionController alloc] initWithTiledView:?];
    selectionController = v15->_selectionController;
    v15->_selectionController = v20;

    v22 = [(PKSelectionController *)&v15->_selectionController->super.isa selectionInteraction];
    [v22 setDelegate:v15];

    objc_storeStrong(&v15->_gestureRecognizer, a5);
    v23 = [MEMORY[0x1E695DF90] dictionary];
    uuidToStrokeSpatialCacheDict = v15->_uuidToStrokeSpatialCacheDict;
    v15->_uuidToStrokeSpatialCacheDict = v23;
  }

  return v15;
}

- (void)dealloc
{
  selectionController = self->_selectionController;
  self->_selectionController = 0;

  recognitionController = self->_recognitionController;
  self->_recognitionController = 0;

  sessionManager = self->_sessionManager;
  self->_sessionManager = 0;

  currentAttachment = self->_currentAttachment;
  self->_currentAttachment = 0;

  v7.receiver = self;
  v7.super_class = PKSmartSelectionController;
  [(PKSmartSelectionController *)&v7 dealloc];
}

- (NSArray)currentSelectedStrokes
{
  selectionController = self->_selectionController;
  if (selectionController)
  {
    v3 = selectionController->_currentStrokeSelection;
    v4 = v3;
    if (v3)
    {
      v5 = [(PKStrokeSelection *)v3 strokes];
      v6 = [v5 array];

      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (int64_t)currentSelectionType
{
  selectionController = self->_selectionController;
  if (selectionController)
  {
    selectionController = selectionController->_selectionView;
  }

  v3 = selectionController;
  v4 = [(PKSelectionController *)v3 selectionType];

  return v4;
}

- (UIView)selectionView
{
  selectionController = self->_selectionController;
  if (selectionController)
  {
    return &selectionController->_selectionView->super.super;
  }

  else
  {
    return 0;
  }
}

- (void)setExternalAttachment:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 drawing];
  currentAttachment = self->_currentAttachment;
  self->_currentAttachment = v4;
  v7 = v4;

  v8 = objc_alloc_init(PKStrokeSpatialCache);
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, self);
  }

  uuidToStrokeSpatialCacheDict = self->_uuidToStrokeSpatialCacheDict;
  v11 = [v5 uuid];
  [(NSMutableDictionary *)uuidToStrokeSpatialCacheDict setObject:v9 forKey:v11];

  tiledView = self->_tiledView;
  v19[0] = v7;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [(PKTiledView *)tiledView _setExternalAttachments:v13];

  v14 = self->_tiledView;
  v15 = [(PKTiledView *)v14 canvasView];
  [(PKTiledView *)v14 canvasView:v15 drawingDidChange:v5];

  v16 = self->_tiledView;
  v18 = v5;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [(PKTiledView *)v16 _selectionRefreshWithChangeToDrawings:v17 completion:&__block_literal_global_78];
}

- (id)strokeSpatialCacheForAttachment:(id)a3
{
  v4 = [a3 drawing];
  v5 = [v4 uuid];

  v6 = [(NSMutableDictionary *)self->_uuidToStrokeSpatialCacheDict objectForKey:v5];

  return v6;
}

- (void)invalidateCacheForBounds:(CGRect)a3 inDrawing:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  uuidToStrokeSpatialCacheDict = self->_uuidToStrokeSpatialCacheDict;
  v9 = a4;
  v10 = [v9 uuid];
  v11 = [(NSMutableDictionary *)uuidToStrokeSpatialCacheDict objectForKey:v10];

  [(PKStrokeSpatialCache *)v11 _invalidateCacheForBounds:v9 inDrawing:1 force:x, y, width, height];
}

- (void)handleDoubleTapInputAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(PKSelectionController *)self->_selectionController _drawingForSelectionRect:a3.y + -22.0, 44.0, 44.0];
  v7 = [(PKSmartSelectionController *)self interaction];
  [v7 setCurrentDrawing:v6];

  if ([(UIGestureRecognizer *)self->_gestureRecognizer state]== UIGestureRecognizerStateEnded)
  {
    v8 = [PKSelectionInput inputWithType:[(PKSmartSelectionController *)self selectionTypeForTapCount:2] location:1 inputType:x, y];
    v9 = [(PKSmartSelectionController *)self interaction];
    selectionController = self->_selectionController;
    if (selectionController)
    {
      selectionController = selectionController->_currentStrokeSelection;
    }

    v11 = selectionController;
    v12 = [(PKSelectionController *)v11 strokes];
    v13 = [v12 array];
    [v9 _updateProgressiveTapSelectionWithSelectionInput:v8 existingSelection:v13];

    v14 = [(PKSmartSelectionController *)self interaction];
    [v14 _cancelDeferredPasteFromTappingAction];

    v15 = [(PKSmartSelectionController *)self interaction];
    [v15 performSelector:sel__selectViaContinuousTapWithInput_ withObject:v8 afterDelay:0.35];
  }

  gestureRecognizer = self->_gestureRecognizer;

  [(PKSmartSelectionController *)self updateGestureHistoryWithLocation:gestureRecognizer gesture:x, y];
}

- (void)handleDoubleTapInputAtPoint:(CGPoint)a3 inSelectionView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = a4;
  v7 = objc_opt_class();
  v9 = PKDynamicCast(v7, v6);

  v8 = v9;
  if (v9)
  {
    [v9 _handleDoubleTapInputAtPoint:{x, y}];
    v8 = v9;
  }
}

- (void)straighten:(id)a3 completion:(id)a4
{
  selectionController = self->_selectionController;
  v6 = a4;
  if (selectionController)
  {
    currentStrokeSelection = selectionController->_currentStrokeSelection;
  }

  else
  {
    currentStrokeSelection = 0;
  }

  v8 = currentStrokeSelection;
  v12 = [(PKStrokeSelection *)v8 drawing];

  v9 = self->_selectionController;
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&v9->_tiledView);
  }

  else
  {
    WeakRetained = 0;
  }

  v11 = [(PKSmartSelectionController *)self currentSelectedStrokes];
  [WeakRetained _straightenStrokes:v11 drawing:v12 completionBlock:v6];
}

- (BOOL)canTranslate
{
  if (!self->_selectionController)
  {
    return 0;
  }

  LTUITranslationViewControllerClass = getLTUITranslationViewControllerClass();

  return [LTUITranslationViewControllerClass isAvailable];
}

- (void)selectStrokes:(id)a3 forSelectionType:(int64_t)a4 inDrawing:(id)a5
{
  v8 = MEMORY[0x1E695DFB8];
  v9 = a5;
  v10 = [v8 orderedSetWithArray:a3];
  [(PKSelectionController *)&self->_selectionController->super.isa selectStrokes:v10 forSelectionType:a4 inDrawing:v9];
}

- (void)selectStrokesWithoutDidSelectStrokesUpdate:(id)a3 inDrawing:(id)a4
{
  v6 = MEMORY[0x1E695DFB8];
  v7 = a4;
  v8 = [v6 orderedSetWithArray:a3];
  [(PKSelectionController *)self->_selectionController _selectStrokesWithoutDidSelectStrokesUpdate:v8 inDrawing:v7];
}

- (void)clearSelectionIfNecessaryWithCompletion:(id)a3
{
  selectionController = self->_selectionController;
  v7 = a3;
  if (selectionController)
  {
    selectionView = selectionController->_selectionView;
  }

  else
  {
    selectionView = 0;
  }

  v6 = selectionView;
  [(PKSelectionView *)v6 removeFromSuperview];

  [(PKSelectionController *)self->_selectionController clearSelectionIfNecessaryWithCompletion:v7];
}

- (int64_t)selectionTypeForTapCount:(int64_t)a3
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

- (void)updateGestureHistoryWithLocation:(CGPoint)a3 gesture:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(UIGestureRecognizer *)self->_gestureRecognizer lastTouchTimestamp];
  self->_lastTapLocation.y = y;
  self->_lastTapTimestamp = v7;
  self->_lastTapLocation.x = x;
}

- (void)selectionInteraction:(id)a3 didSelectStrokes:(id)a4 selectionType:(int64_t)a5 inAttachment:(id)a6
{
  v9 = a4;
  v11 = PKProtocolCast(&unk_1F47EEDC0, a6);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didSelectStrokes:v9 selectionType:a5 inAttachment:v11];
}

- (BOOL)selectionInteraction:(id)a3 handleTapOnCanvasAtLocation:(CGPoint)a4 inAttachment:(id)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a5;
  v9 = PKProtocolCast(&unk_1F47EEDC0, v8);
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v10 = [v9 contentWindowCoordinateSpace];
    v11 = [v9 contentUnscaledCoordinateSpace];
    [v10 convertPoint:v11 toCoordinateSpace:{x, y}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained handleSmartSelectionTapAtUnscaledLocation:v8 inAttachment:{x, y}];

  return v13;
}

- (void)didFinishCalculatingVisibleOnscreenStrokes:(id)a3 drawing:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 count];
  recognitionController = self->_recognitionController;
  if (v7)
  {
    [(PKRecognitionController *)recognitionController setDrawing:v6 withVisibleOnscreenStrokes:v9];
  }

  else
  {
    [(PKRecognitionController *)recognitionController setDrawing:v6];
  }
}

@end