@interface CRLFreehandDrawingsAttachment
- (BOOL)hitByTouchLocation:(CGPoint)location bounds:(CGRect)bounds;
- (CGAffineTransform)drawingTransform;
- (CRLFreehandDrawingsAttachment)initWithDelegate:(id)delegate drawing:(id)drawing;
- (PKRecognitionController)recognitionController;
- (PKStrokeSpatialCache)strokeSpatialCache;
- (double)viewScaleForExternalAttachment;
- (id)_firstStrokesInSelectedStrokes:(id)strokes;
- (id)_lastStrokesInSelectedStrokes:(id)strokes;
- (id)contentScaledCoordinateSpace;
- (id)contentUnscaledCoordinateSpace;
- (id)contentWindowCoordinateSpace;
- (id)strokeDataUUIDsNonInteractiveFromAttachment;
- (void)dealloc;
- (void)didDeselectAllStrokes;
- (void)didSelectPreviouslySelectedStrokes:(id)strokes;
- (void)fetchIntersectedStrokesAtPoint:(CGPoint)point selectionType:(int64_t)type inputType:(int64_t)inputType visibleOnscreenStrokes:(id)strokes completion:(id)completion;
- (void)fetchIntersectedStrokesBetweenTopPoint:(CGPoint)point bottomPoint:(CGPoint)bottomPoint liveScrollOffset:(CGPoint)offset completion:(id)completion;
- (void)installSelectionView:(id)view;
- (void)invalidateStrokeCacheForVisibleUnscaledBounds:(CGRect)bounds force:(BOOL)force;
- (void)teardown;
- (void)translationDidFinishedInViewController:(id)controller;
- (void)updateAttachmentBoundsAfterCanvasVisibleBoundsChanged;
- (void)updateLiveSelectionForStrokesInLayer:(id)layer inDrawing:(id)drawing;
@end

@implementation CRLFreehandDrawingsAttachment

- (CRLFreehandDrawingsAttachment)initWithDelegate:(id)delegate drawing:(id)drawing
{
  delegateCopy = delegate;
  drawingCopy = drawing;
  v12.receiver = self;
  v12.super_class = CRLFreehandDrawingsAttachment;
  v8 = [(CRLFreehandDrawingsAttachment *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_drawing, drawing);
    size = CGRectZero.size;
    v9->mCachedVisibleBounds.origin = CGRectZero.origin;
    v9->mCachedVisibleBounds.size = size;
    [(CRLFreehandDrawingsAttachment *)v9 updateAttachmentBoundsAfterCanvasVisibleBoundsChanged];
  }

  return v9;
}

- (void)teardown
{
  if (self->_isTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131E048();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131E05C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131E0F0();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v2);
    }

    v3 = [NSString stringWithUTF8String:"[CRLFreehandDrawingsAttachment teardown]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingsAttachment.m"];
    [CRLAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:56 isFatal:0 description:"attempting to call teardown on an instance of CRLFreehandDrawingsAttachment that has already been torn down."];
  }

  else
  {
    self->_isTornDown = 1;
  }
}

- (void)dealloc
{
  if (!self->_isTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131E118();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10131E12C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10131E1C0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLFreehandDrawingsAttachment dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingsAttachment.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:61 isFatal:0 description:"teardown not called for CRLFreehandDrawingsAttachment."];
  }

  v6.receiver = self;
  v6.super_class = CRLFreehandDrawingsAttachment;
  [(CRLFreehandDrawingsAttachment *)&v6 dealloc];
}

- (void)updateAttachmentBoundsAfterCanvasVisibleBoundsChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  canvasView = [interactiveCanvasController canvasView];
  unscaledCoordinateSpace = [canvasView unscaledCoordinateSpace];
  [(PKDrawing *)self->_drawing bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  canvasView2 = [interactiveCanvasController canvasView];
  window = [canvasView2 window];
  coordinateSpace = [window coordinateSpace];
  [unscaledCoordinateSpace convertRect:coordinateSpace toCoordinateSpace:{v7, v9, v11, v13}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [[UIView alloc] initWithFrame:{v18, v20, v22, v24}];
  mViewRep = self->mViewRep;
  self->mViewRep = v25;
}

- (void)invalidateStrokeCacheForVisibleUnscaledBounds:(CGRect)bounds force:(BOOL)force
{
  forceCopy = force;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (!sub_10011EE4C(self->mCachedVisibleBounds.origin.x, self->mCachedVisibleBounds.origin.y, self->mCachedVisibleBounds.size.width, self->mCachedVisibleBounds.size.height, bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height) || forceCopy)
  {
    self->mCachedVisibleBounds.origin.x = x;
    self->mCachedVisibleBounds.origin.y = y;
    self->mCachedVisibleBounds.size.width = width;
    self->mCachedVisibleBounds.size.height = height;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [WeakRetained smartSelectionControllerForAttachment:self];

    [v12 invalidateCacheForBounds:self->_drawing inDrawing:{self->mCachedVisibleBounds.origin.x, self->mCachedVisibleBounds.origin.y, self->mCachedVisibleBounds.size.width, self->mCachedVisibleBounds.size.height}];
  }
}

- (PKStrokeSpatialCache)strokeSpatialCache
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained smartSelectionControllerForAttachment:self];

  v5 = [v4 strokeSpatialCacheForAttachment:self];

  return v5;
}

- (PKRecognitionController)recognitionController
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [WeakRetained smartSelectionControllerForAttachment:self];

  recognitionController = [v4 recognitionController];

  return recognitionController;
}

- (CGAffineTransform)drawingTransform
{
  v3 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v3;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return self;
}

- (void)fetchIntersectedStrokesBetweenTopPoint:(CGPoint)point bottomPoint:(CGPoint)bottomPoint liveScrollOffset:(CGPoint)offset completion:(id)completion
{
  y = offset.y;
  x = offset.x;
  v8 = bottomPoint.y;
  v9 = bottomPoint.x;
  v10 = point.y;
  v11 = point.x;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [WeakRetained smartSelectionControllerForAttachment:self];

  [v15 fetchIntersectedStrokesBetweenTopPoint:completionCopy bottomPoint:v11 liveScrollOffset:v10 completion:{v9, v8, x, y}];
}

- (void)fetchIntersectedStrokesAtPoint:(CGPoint)point selectionType:(int64_t)type inputType:(int64_t)inputType visibleOnscreenStrokes:(id)strokes completion:(id)completion
{
  y = point.y;
  x = point.x;
  completionCopy = completion;
  strokesCopy = strokes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = [WeakRetained smartSelectionControllerForAttachment:self];

  [v16 fetchIntersectedStrokesAtPoint:type selectionType:inputType inputType:strokesCopy visibleOnscreenStrokes:completionCopy completion:{x, y}];
}

- (id)contentWindowCoordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  canvasView = [interactiveCanvasController canvasView];
  window = [canvasView window];
  coordinateSpace = [window coordinateSpace];

  return coordinateSpace;
}

- (id)contentScaledCoordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  canvasView = [interactiveCanvasController canvasView];

  return canvasView;
}

- (id)contentUnscaledCoordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  canvasView = [interactiveCanvasController canvasView];
  unscaledCoordinateSpace = [canvasView unscaledCoordinateSpace];

  return unscaledCoordinateSpace;
}

- (double)viewScaleForExternalAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  interactiveCanvasController = [WeakRetained interactiveCanvasController];

  [interactiveCanvasController viewScale];
  v5 = v4;

  return v5;
}

- (void)installSelectionView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  viewRep = [(CRLFreehandDrawingsAttachment *)self viewRep];
  [WeakRetained installSelectionView:viewCopy fromView:viewRep];
}

- (BOOL)hitByTouchLocation:(CGPoint)location bounds:(CGRect)bounds
{
  y = location.y;
  x = location.x;
  v7.x = x;
  v7.y = y;
  return CGRectContainsPoint(bounds, v7);
}

- (id)_firstStrokesInSelectedStrokes:(id)strokes
{
  strokesCopy = strokes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained smartSelectionControllerForAttachment:self];

  v7 = [v6 firstStrokesInSelectedStrokes:strokesCopy isRTL:sub_1004A48FC()];

  return v7;
}

- (id)_lastStrokesInSelectedStrokes:(id)strokes
{
  strokesCopy = strokes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained smartSelectionControllerForAttachment:self];

  v7 = [v6 lastStrokesInSelectedStrokes:strokesCopy isRTL:sub_1004A48FC()];

  return v7;
}

- (void)updateLiveSelectionForStrokesInLayer:(id)layer inDrawing:(id)drawing
{
  layerCopy = layer;
  v6 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = sub_100014370(v6, WeakRetained);

  selectionDecorator = [v9 selectionDecorator];
  [selectionDecorator setDecoratorLayer:layerCopy];
}

- (void)translationDidFinishedInViewController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained installTranslationViewController:controllerCopy];
}

- (void)didSelectPreviouslySelectedStrokes:(id)strokes
{
  strokesCopy = strokes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pencilKitDidSmartSelectPreviouslySelectedStrokes:strokesCopy];
}

- (void)didDeselectAllStrokes
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pencilKitDidDeselectAllStrokes];
}

- (id)strokeDataUUIDsNonInteractiveFromAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  strokeDataUUIDsForNonInteractiveDrawings = [WeakRetained strokeDataUUIDsForNonInteractiveDrawings];

  return strokeDataUUIDsForNonInteractiveDrawings;
}

@end