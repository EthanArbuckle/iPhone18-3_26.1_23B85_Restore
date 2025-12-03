@interface PKSmartSelectionController
- (BOOL)canTranslate;
- (BOOL)selectionInteraction:(id)interaction handleTapOnCanvasAtLocation:(CGPoint)location inAttachment:(id)attachment;
- (NSArray)currentSelectedStrokes;
- (PKSmartSelectionController)initWithDelegate:(id)delegate canvasView:(id)view drawing:(id)drawing gestureRecognizer:(id)recognizer;
- (PKSmartSelectionController)initWithDelegate:(id)delegate canvasView:(id)view gestureRecognizer:(id)recognizer recognitionController:(id)controller;
- (UIView)selectionView;
- (id)strokeSpatialCacheForAttachment:(id)attachment;
- (int64_t)currentSelectionType;
- (int64_t)selectionTypeForTapCount:(int64_t)count;
- (void)clearSelectionIfNecessaryWithCompletion:(id)completion;
- (void)dealloc;
- (void)didFinishCalculatingVisibleOnscreenStrokes:(id)strokes drawing:(id)drawing;
- (void)handleDoubleTapInputAtPoint:(CGPoint)point;
- (void)handleDoubleTapInputAtPoint:(CGPoint)point inSelectionView:(id)view;
- (void)invalidateCacheForBounds:(CGRect)bounds inDrawing:(id)drawing;
- (void)selectStrokes:(id)strokes forSelectionType:(int64_t)type inDrawing:(id)drawing;
- (void)selectStrokesWithoutDidSelectStrokesUpdate:(id)update inDrawing:(id)drawing;
- (void)selectionInteraction:(id)interaction didSelectStrokes:(id)strokes selectionType:(int64_t)type inAttachment:(id)attachment;
- (void)setExternalAttachment:(id)attachment;
- (void)straighten:(id)straighten completion:(id)completion;
- (void)updateGestureHistoryWithLocation:(CGPoint)location gesture:(id)gesture;
@end

@implementation PKSmartSelectionController

- (PKSmartSelectionController)initWithDelegate:(id)delegate canvasView:(id)view drawing:(id)drawing gestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  drawingCopy = drawing;
  viewCopy = view;
  delegateCopy = delegate;
  v14 = [PKRecognitionController alloc];
  strokes = [drawingCopy strokes];
  v16 = [(PKRecognitionController *)v14 initWithDrawing:drawingCopy visibleOnscreenStrokes:strokes useSessionCache:1];

  v17 = [(PKSmartSelectionController *)self initWithDelegate:delegateCopy canvasView:viewCopy gestureRecognizer:recognizerCopy recognitionController:v16];
  return v17;
}

- (PKSmartSelectionController)initWithDelegate:(id)delegate canvasView:(id)view gestureRecognizer:(id)recognizer recognitionController:(id)controller
{
  delegateCopy = delegate;
  viewCopy = view;
  recognizerCopy = recognizer;
  controllerCopy = controller;
  v26.receiver = self;
  v26.super_class = PKSmartSelectionController;
  v14 = [(PKSmartSelectionController *)&v26 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_delegate, delegateCopy);
    objc_storeStrong(&v15->_recognitionController, controller);
    _tiledView = [viewCopy _tiledView];
    tiledView = v15->_tiledView;
    v15->_tiledView = _tiledView;

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

    selectionInteraction = [(PKSelectionController *)&v15->_selectionController->super.isa selectionInteraction];
    [selectionInteraction setDelegate:v15];

    objc_storeStrong(&v15->_gestureRecognizer, recognizer);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    uuidToStrokeSpatialCacheDict = v15->_uuidToStrokeSpatialCacheDict;
    v15->_uuidToStrokeSpatialCacheDict = dictionary;
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
      strokes = [(PKStrokeSelection *)v3 strokes];
      array = [strokes array];

      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
  }

  array = 0;
LABEL_6:

  return array;
}

- (int64_t)currentSelectionType
{
  selectionController = self->_selectionController;
  if (selectionController)
  {
    selectionController = selectionController->_selectionView;
  }

  v3 = selectionController;
  selectionType = [(PKSelectionController *)v3 selectionType];

  return selectionType;
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

- (void)setExternalAttachment:(id)attachment
{
  v19[1] = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  drawing = [attachmentCopy drawing];
  currentAttachment = self->_currentAttachment;
  self->_currentAttachment = attachmentCopy;
  v7 = attachmentCopy;

  v8 = objc_alloc_init(PKStrokeSpatialCache);
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, self);
  }

  uuidToStrokeSpatialCacheDict = self->_uuidToStrokeSpatialCacheDict;
  uuid = [drawing uuid];
  [(NSMutableDictionary *)uuidToStrokeSpatialCacheDict setObject:v9 forKey:uuid];

  tiledView = self->_tiledView;
  v19[0] = v7;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [(PKTiledView *)tiledView _setExternalAttachments:v13];

  v14 = self->_tiledView;
  canvasView = [(PKTiledView *)v14 canvasView];
  [(PKTiledView *)v14 canvasView:canvasView drawingDidChange:drawing];

  v16 = self->_tiledView;
  v18 = drawing;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [(PKTiledView *)v16 _selectionRefreshWithChangeToDrawings:v17 completion:&__block_literal_global_78];
}

- (id)strokeSpatialCacheForAttachment:(id)attachment
{
  drawing = [attachment drawing];
  uuid = [drawing uuid];

  v6 = [(NSMutableDictionary *)self->_uuidToStrokeSpatialCacheDict objectForKey:uuid];

  return v6;
}

- (void)invalidateCacheForBounds:(CGRect)bounds inDrawing:(id)drawing
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  uuidToStrokeSpatialCacheDict = self->_uuidToStrokeSpatialCacheDict;
  drawingCopy = drawing;
  uuid = [drawingCopy uuid];
  v11 = [(NSMutableDictionary *)uuidToStrokeSpatialCacheDict objectForKey:uuid];

  [(PKStrokeSpatialCache *)v11 _invalidateCacheForBounds:drawingCopy inDrawing:1 force:x, y, width, height];
}

- (void)handleDoubleTapInputAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(PKSelectionController *)self->_selectionController _drawingForSelectionRect:point.y + -22.0, 44.0, 44.0];
  interaction = [(PKSmartSelectionController *)self interaction];
  [interaction setCurrentDrawing:v6];

  if ([(UIGestureRecognizer *)self->_gestureRecognizer state]== UIGestureRecognizerStateEnded)
  {
    v8 = [PKSelectionInput inputWithType:[(PKSmartSelectionController *)self selectionTypeForTapCount:2] location:1 inputType:x, y];
    interaction2 = [(PKSmartSelectionController *)self interaction];
    selectionController = self->_selectionController;
    if (selectionController)
    {
      selectionController = selectionController->_currentStrokeSelection;
    }

    v11 = selectionController;
    strokes = [(PKSelectionController *)v11 strokes];
    array = [strokes array];
    [interaction2 _updateProgressiveTapSelectionWithSelectionInput:v8 existingSelection:array];

    interaction3 = [(PKSmartSelectionController *)self interaction];
    [interaction3 _cancelDeferredPasteFromTappingAction];

    interaction4 = [(PKSmartSelectionController *)self interaction];
    [interaction4 performSelector:sel__selectViaContinuousTapWithInput_ withObject:v8 afterDelay:0.35];
  }

  gestureRecognizer = self->_gestureRecognizer;

  [(PKSmartSelectionController *)self updateGestureHistoryWithLocation:gestureRecognizer gesture:x, y];
}

- (void)handleDoubleTapInputAtPoint:(CGPoint)point inSelectionView:(id)view
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  v7 = objc_opt_class();
  v9 = PKDynamicCast(v7, viewCopy);

  v8 = v9;
  if (v9)
  {
    [v9 _handleDoubleTapInputAtPoint:{x, y}];
    v8 = v9;
  }
}

- (void)straighten:(id)straighten completion:(id)completion
{
  selectionController = self->_selectionController;
  completionCopy = completion;
  if (selectionController)
  {
    currentStrokeSelection = selectionController->_currentStrokeSelection;
  }

  else
  {
    currentStrokeSelection = 0;
  }

  v8 = currentStrokeSelection;
  drawing = [(PKStrokeSelection *)v8 drawing];

  v9 = self->_selectionController;
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&v9->_tiledView);
  }

  else
  {
    WeakRetained = 0;
  }

  currentSelectedStrokes = [(PKSmartSelectionController *)self currentSelectedStrokes];
  [WeakRetained _straightenStrokes:currentSelectedStrokes drawing:drawing completionBlock:completionCopy];
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

- (void)selectStrokes:(id)strokes forSelectionType:(int64_t)type inDrawing:(id)drawing
{
  v8 = MEMORY[0x1E695DFB8];
  drawingCopy = drawing;
  v10 = [v8 orderedSetWithArray:strokes];
  [(PKSelectionController *)&self->_selectionController->super.isa selectStrokes:v10 forSelectionType:type inDrawing:drawingCopy];
}

- (void)selectStrokesWithoutDidSelectStrokesUpdate:(id)update inDrawing:(id)drawing
{
  v6 = MEMORY[0x1E695DFB8];
  drawingCopy = drawing;
  v8 = [v6 orderedSetWithArray:update];
  [(PKSelectionController *)self->_selectionController _selectStrokesWithoutDidSelectStrokesUpdate:v8 inDrawing:drawingCopy];
}

- (void)clearSelectionIfNecessaryWithCompletion:(id)completion
{
  selectionController = self->_selectionController;
  completionCopy = completion;
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

  [(PKSelectionController *)self->_selectionController clearSelectionIfNecessaryWithCompletion:completionCopy];
}

- (int64_t)selectionTypeForTapCount:(int64_t)count
{
  countCopy = 2;
  if (count > 2)
  {
    countCopy = count;
  }

  if (countCopy >= 5)
  {
    return 5;
  }

  else
  {
    return countCopy;
  }
}

- (void)updateGestureHistoryWithLocation:(CGPoint)location gesture:(id)gesture
{
  y = location.y;
  x = location.x;
  [(UIGestureRecognizer *)self->_gestureRecognizer lastTouchTimestamp];
  self->_lastTapLocation.y = y;
  self->_lastTapTimestamp = v7;
  self->_lastTapLocation.x = x;
}

- (void)selectionInteraction:(id)interaction didSelectStrokes:(id)strokes selectionType:(int64_t)type inAttachment:(id)attachment
{
  strokesCopy = strokes;
  v11 = PKProtocolCast(&unk_1F47EEDC0, attachment);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didSelectStrokes:strokesCopy selectionType:type inAttachment:v11];
}

- (BOOL)selectionInteraction:(id)interaction handleTapOnCanvasAtLocation:(CGPoint)location inAttachment:(id)attachment
{
  y = location.y;
  x = location.x;
  attachmentCopy = attachment;
  v9 = PKProtocolCast(&unk_1F47EEDC0, attachmentCopy);
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    contentWindowCoordinateSpace = [v9 contentWindowCoordinateSpace];
    contentUnscaledCoordinateSpace = [v9 contentUnscaledCoordinateSpace];
    [contentWindowCoordinateSpace convertPoint:contentUnscaledCoordinateSpace toCoordinateSpace:{x, y}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = [WeakRetained handleSmartSelectionTapAtUnscaledLocation:attachmentCopy inAttachment:{x, y}];

  return v13;
}

- (void)didFinishCalculatingVisibleOnscreenStrokes:(id)strokes drawing:(id)drawing
{
  strokesCopy = strokes;
  drawingCopy = drawing;
  v7 = [strokesCopy count];
  recognitionController = self->_recognitionController;
  if (v7)
  {
    [(PKRecognitionController *)recognitionController setDrawing:drawingCopy withVisibleOnscreenStrokes:strokesCopy];
  }

  else
  {
    [(PKRecognitionController *)recognitionController setDrawing:drawingCopy];
  }
}

@end