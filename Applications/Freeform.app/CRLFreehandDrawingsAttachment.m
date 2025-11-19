@interface CRLFreehandDrawingsAttachment
- (BOOL)hitByTouchLocation:(CGPoint)a3 bounds:(CGRect)a4;
- (CGAffineTransform)drawingTransform;
- (CRLFreehandDrawingsAttachment)initWithDelegate:(id)a3 drawing:(id)a4;
- (PKRecognitionController)recognitionController;
- (PKStrokeSpatialCache)strokeSpatialCache;
- (double)viewScaleForExternalAttachment;
- (id)_firstStrokesInSelectedStrokes:(id)a3;
- (id)_lastStrokesInSelectedStrokes:(id)a3;
- (id)contentScaledCoordinateSpace;
- (id)contentUnscaledCoordinateSpace;
- (id)contentWindowCoordinateSpace;
- (id)strokeDataUUIDsNonInteractiveFromAttachment;
- (void)dealloc;
- (void)didDeselectAllStrokes;
- (void)didSelectPreviouslySelectedStrokes:(id)a3;
- (void)fetchIntersectedStrokesAtPoint:(CGPoint)a3 selectionType:(int64_t)a4 inputType:(int64_t)a5 visibleOnscreenStrokes:(id)a6 completion:(id)a7;
- (void)fetchIntersectedStrokesBetweenTopPoint:(CGPoint)a3 bottomPoint:(CGPoint)a4 liveScrollOffset:(CGPoint)a5 completion:(id)a6;
- (void)installSelectionView:(id)a3;
- (void)invalidateStrokeCacheForVisibleUnscaledBounds:(CGRect)a3 force:(BOOL)a4;
- (void)teardown;
- (void)translationDidFinishedInViewController:(id)a3;
- (void)updateAttachmentBoundsAfterCanvasVisibleBoundsChanged;
- (void)updateLiveSelectionForStrokesInLayer:(id)a3 inDrawing:(id)a4;
@end

@implementation CRLFreehandDrawingsAttachment

- (CRLFreehandDrawingsAttachment)initWithDelegate:(id)a3 drawing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CRLFreehandDrawingsAttachment;
  v8 = [(CRLFreehandDrawingsAttachment *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_drawing, a4);
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
  v27 = [WeakRetained interactiveCanvasController];

  v4 = [v27 canvasView];
  v5 = [v4 unscaledCoordinateSpace];
  [(PKDrawing *)self->_drawing bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v27 canvasView];
  v15 = [v14 window];
  v16 = [v15 coordinateSpace];
  [v5 convertRect:v16 toCoordinateSpace:{v7, v9, v11, v13}];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = [[UIView alloc] initWithFrame:{v18, v20, v22, v24}];
  mViewRep = self->mViewRep;
  self->mViewRep = v25;
}

- (void)invalidateStrokeCacheForVisibleUnscaledBounds:(CGRect)a3 force:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!sub_10011EE4C(self->mCachedVisibleBounds.origin.x, self->mCachedVisibleBounds.origin.y, self->mCachedVisibleBounds.size.width, self->mCachedVisibleBounds.size.height, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height) || v4)
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

  v5 = [v4 recognitionController];

  return v5;
}

- (CGAffineTransform)drawingTransform
{
  v3 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v3;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return self;
}

- (void)fetchIntersectedStrokesBetweenTopPoint:(CGPoint)a3 bottomPoint:(CGPoint)a4 liveScrollOffset:(CGPoint)a5 completion:(id)a6
{
  y = a5.y;
  x = a5.x;
  v8 = a4.y;
  v9 = a4.x;
  v10 = a3.y;
  v11 = a3.x;
  v13 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [WeakRetained smartSelectionControllerForAttachment:self];

  [v15 fetchIntersectedStrokesBetweenTopPoint:v13 bottomPoint:v11 liveScrollOffset:v10 completion:{v9, v8, x, y}];
}

- (void)fetchIntersectedStrokesAtPoint:(CGPoint)a3 selectionType:(int64_t)a4 inputType:(int64_t)a5 visibleOnscreenStrokes:(id)a6 completion:(id)a7
{
  y = a3.y;
  x = a3.x;
  v13 = a7;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v16 = [WeakRetained smartSelectionControllerForAttachment:self];

  [v16 fetchIntersectedStrokesAtPoint:a4 selectionType:a5 inputType:v14 visibleOnscreenStrokes:v13 completion:{x, y}];
}

- (id)contentWindowCoordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained interactiveCanvasController];

  v4 = [v3 canvasView];
  v5 = [v4 window];
  v6 = [v5 coordinateSpace];

  return v6;
}

- (id)contentScaledCoordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained interactiveCanvasController];

  v4 = [v3 canvasView];

  return v4;
}

- (id)contentUnscaledCoordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained interactiveCanvasController];

  v4 = [v3 canvasView];
  v5 = [v4 unscaledCoordinateSpace];

  return v5;
}

- (double)viewScaleForExternalAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained interactiveCanvasController];

  [v3 viewScale];
  v5 = v4;

  return v5;
}

- (void)installSelectionView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [(CRLFreehandDrawingsAttachment *)self viewRep];
  [WeakRetained installSelectionView:v4 fromView:v5];
}

- (BOOL)hitByTouchLocation:(CGPoint)a3 bounds:(CGRect)a4
{
  y = a3.y;
  x = a3.x;
  v7.x = x;
  v7.y = y;
  return CGRectContainsPoint(a4, v7);
}

- (id)_firstStrokesInSelectedStrokes:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained smartSelectionControllerForAttachment:self];

  v7 = [v6 firstStrokesInSelectedStrokes:v4 isRTL:sub_1004A48FC()];

  return v7;
}

- (id)_lastStrokesInSelectedStrokes:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained smartSelectionControllerForAttachment:self];

  v7 = [v6 lastStrokesInSelectedStrokes:v4 isRTL:sub_1004A48FC()];

  return v7;
}

- (void)updateLiveSelectionForStrokesInLayer:(id)a3 inDrawing:(id)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = sub_100014370(v6, WeakRetained);

  v8 = [v9 selectionDecorator];
  [v8 setDecoratorLayer:v5];
}

- (void)translationDidFinishedInViewController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained installTranslationViewController:v4];
}

- (void)didSelectPreviouslySelectedStrokes:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pencilKitDidSmartSelectPreviouslySelectedStrokes:v4];
}

- (void)didDeselectAllStrokes
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained pencilKitDidDeselectAllStrokes];
}

- (id)strokeDataUUIDsNonInteractiveFromAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = [WeakRetained strokeDataUUIDsForNonInteractiveDrawings];

  return v3;
}

@end