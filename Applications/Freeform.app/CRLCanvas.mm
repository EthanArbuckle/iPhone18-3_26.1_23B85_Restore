@interface CRLCanvas
+ (CGPoint)p_transformedUnscaledPoint:(CGPoint)result forTestingHitRep:(id)rep withTransformFromBlock:(id)block;
+ (id)p_hitRep:(CGPoint)rep withPrecision:(BOOL)precision inTopLevelReps:(id)reps smallRepOutset:(double)outset unscaledPointTransformForRep:(id)forRep passingTest:(id)test;
+ (void)p_recursivelyAddOrderedChildrenOfRep:(id)rep toArray:(id)array;
- (BOOL)i_areContentLayersInvalidForRep:(id)rep;
- (BOOL)i_areOverlayLayersInvalidForRep:(id)rep;
- (BOOL)i_needsLayout;
- (BOOL)isCanvasInteractive;
- (BOOL)isDrawingIntoPDF;
- (BOOL)isPrinting;
- (BOOL)p_canvasShouldAlwaysUpdateLayers;
- (BOOL)p_isLayoutCompleteIncludingLayers:(BOOL)layers;
- (BOOL)p_updateRepsFromLayouts;
- (BOOL)shouldShowInstructionalTextForLayout:(id)layout;
- (BOOL)shouldShowTextOverflowGlyphs;
- (BOOL)shouldSuppressBackgrounds;
- (BOOL)spellCheckingSupported;
- (BOOL)spellCheckingSuppressed;
- (BOOL)textLayoutMustIncludeAdornments;
- (CGContext)i_createContextToDrawImageInScaledRect:(CGRect)rect withTargetIntegralSize:(CGSize)size distortedToMatch:(BOOL)match returningBounds:(CGRect *)bounds integralBounds:(CGRect *)integralBounds;
- (CGImage)i_imageInScaledRect:(CGRect)rect withTargetIntegralSize:(CGSize)size distortedToMatch:(BOOL)match keepingChildrenPassingTest:(id)test;
- (CGImage)i_newImageInContext:(CGContext *)context bounds:(CGRect)bounds integralBounds:(CGRect)integralBounds distortedToMatch:(BOOL)match keepingChildrenPassingTest:(id)test;
- (CGPoint)convertBoundsToUnscaledPoint:(CGPoint)point;
- (CGPoint)convertUnscaledToBoundsPoint:(CGPoint)point;
- (CGRect)convertBoundsToUnscaledRect:(CGRect)rect;
- (CGRect)convertUnscaledToBoundsRect:(CGRect)rect;
- (CGRect)i_approximateScaledFrameOfEditingMenuAtPoint:(CGPoint)point;
- (CGRect)i_clipRectForCreatingRepsFromLayouts;
- (CGRect)p_bounds;
- (CGRect)unscaledRectOfLayouts;
- (CGRect)visibleUnscaledRectForClippingReps;
- (CGSize)convertBoundsToUnscaledSize:(CGSize)size;
- (CGSize)convertUnscaledToBoundsSize:(CGSize)size;
- (CGSize)unscaledSize;
- (CRLBoardItemOwning)boardItemOwner;
- (CRLCanvas)init;
- (CRLCanvas)initWithLayoutControllerClass:(Class)class delegate:(id)delegate;
- (CRLCanvasDelegate)delegate;
- (CRLChangeNotifier)changeNotifier;
- (CRLInteractiveCanvasController)canvasController;
- (Class)rootLayoutClass;
- (NSArray)allRepsOrdered;
- (UIEdgeInsets)contentInset;
- (id)initForTemporaryLayout;
- (id)repForLayout:(id)layout;
- (id)textRendererForLayer:(id)layer context:(CGContext *)context;
- (void)addBitmapsToRenderingQualityInfo:(id)info inContext:(CGContext *)context;
- (void)afterLayoutIncludingLayers:(BOOL)layers performBlock:(id)block;
- (void)canvasInvalidatedForLayout:(id)layout;
- (void)canvasInvalidatedForRep:(id)rep;
- (void)dealloc;
- (void)i_drawBackgroundInContext:(CGContext *)context;
- (void)i_drawBackgroundInContext:(CGContext *)context bounds:(CGRect)bounds;
- (void)i_drawRepsInContext:(CGContext *)context passingTest:(id)test;
- (void)i_drawRepsInContext:(CGContext *)context passingTest:(id)test distort:(CGAffineTransform *)distort;
- (void)i_layoutIfNeededUpdatingLayerTree;
- (void)i_performBlockWhileIgnoringClickThrough:(id)through;
- (void)i_registerRep:(id)rep;
- (void)i_setCanvasController:(id)controller;
- (void)i_setInfosToDisplay:(id)display updatingLayoutController:(BOOL)controller;
- (void)i_setLayersInvalidWithoutInvalidatingAnySpecificLayers;
- (void)i_unregisterRep:(id)rep;
- (void)i_updateInfosInLayoutController;
- (void)invalidateAllLayers;
- (void)invalidateContentLayersForRep:(id)rep;
- (void)invalidateOverlayLayersForRep:(id)rep;
- (void)invalidateReps;
- (void)invalidateVisibleBounds;
- (void)nonInteractiveLayoutIfNeeded;
- (void)orderRepsForLayout:(id)layout;
- (void)p_layoutWithReadLock;
- (void)p_removeAllReps;
- (void)p_setInvalidLayoutFlagAndCallDelegate;
- (void)recreateAllLayoutsAndReps;
- (void)setEnableInstructionalText:(BOOL)text;
- (void)setSuppressesShadowsAndReflections:(BOOL)reflections;
- (void)setViewScale:(double)scale;
- (void)teardown;
@end

@implementation CRLCanvas

- (CRLCanvas)init
{
  v3 = objc_opt_class();

  return [(CRLCanvas *)self initWithLayoutControllerClass:v3 delegate:0];
}

- (CRLCanvas)initWithLayoutControllerClass:(Class)class delegate:(id)delegate
{
  delegateCopy = delegate;
  v27.receiver = self;
  v27.super_class = CRLCanvas;
  v7 = [(CRLCanvas *)&v27 init];
  v8 = v7;
  if (v7)
  {
    *(v7 + 12) = 0x3FF0000000000000;
    *(v7 + 5) = vdupq_n_s64(0x4059000000000000uLL);
    v9 = *&UIEdgeInsetsZero.bottom;
    *(v7 + 200) = *&UIEdgeInsetsZero.top;
    *(v7 + 216) = v9;
    v10 = objc_alloc_init(NSArray);
    mInfos = v8->mInfos;
    v8->mInfos = v10;

    v12 = objc_alloc_init(NSArray);
    mTopLevelReps = v8->mTopLevelReps;
    v8->mTopLevelReps = v12;

    v14 = objc_alloc_init(NSSet);
    mAllReps = v8->mAllReps;
    v8->mAllReps = v14;

    v16 = [[NSMapTable alloc] initWithKeyOptions:517 valueOptions:517 capacity:0];
    mRepsByLayout = v8->mRepsByLayout;
    v8->mRepsByLayout = v16;

    objc_storeWeak(&v8->mDelegate, delegateCopy);
    v18 = [[class alloc] initWithCanvas:v8];
    mLayoutController = v8->mLayoutController;
    v8->mLayoutController = v18;

    v8->mContentsScale = 1.0;
    v8->mWideGamut = 1;
    v8->mAllowsFontSubpixelQuantization = 1;
    v8->mBlocksToPerformLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v20 = +[NSHashTable weakObjectsHashTable];
    mCanvasLayoutObservers = v8->mCanvasLayoutObservers;
    v8->mCanvasLayoutObservers = v20;

    [(CRLCanvas *)v8 setI_viewScaleForAudioObjectsInNonInteractiveCanvas:1.0];
    v22 = +[NSMutableSet set];
    mRepsWithInvalidContentLayers = v8->mRepsWithInvalidContentLayers;
    v8->mRepsWithInvalidContentLayers = v22;

    v24 = +[NSMutableSet set];
    mRepsWithInvalidOverlayLayers = v8->mRepsWithInvalidOverlayLayers;
    v8->mRepsWithInvalidOverlayLayers = v24;
  }

  return v8;
}

- (id)initForTemporaryLayout
{
  result = [(CRLCanvas *)self init];
  if (result)
  {
    *(result + 72) = 1;
  }

  return result;
}

- (void)teardown
{
  mInfos = self->mInfos;
  self->mInfos = 0;

  layoutController = [(CRLCanvas *)self layoutController];
  [layoutController i_removeAllLayouts];

  [(CRLCanvas *)self p_removeAllReps];
  if ([(CRLCanvas *)self isCanvasInteractive])
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->mDelegate);
      [v7 updateLayerTreeForInteractiveCanvas:self];
    }
  }

  os_unfair_lock_lock(&self->mBlocksToPerformLock);
  mBlocksToPerformAfterLayout = self->mBlocksToPerformAfterLayout;
  self->mBlocksToPerformAfterLayout = 0;

  mBlocksToPerformAfterLayoutAndLayerUpdating = self->mBlocksToPerformAfterLayoutAndLayerUpdating;
  self->mBlocksToPerformAfterLayoutAndLayerUpdating = 0;

  os_unfair_lock_unlock(&self->mBlocksToPerformLock);
}

- (void)dealloc
{
  if (self->mInfos)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101396ADC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101396AF0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101396B80();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvas dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvas.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:184 isFatal:0 description:"Canvas must be torn down before being deallocated"];
  }

  if (self->mBlocksToPerformAfterLayout)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101396BA8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101396BD0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101396C6C();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCanvas dealloc]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvas.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:188 isFatal:0 description:"expected nil value for '%{public}s'", "mBlocksToPerformAfterLayout"];
  }

  if (self->mBlocksToPerformAfterLayoutAndLayerUpdating)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101396C94();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101396CBC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101396D58();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLCanvas dealloc]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvas.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:189 isFatal:0 description:"expected nil value for '%{public}s'", "mBlocksToPerformAfterLayoutAndLayerUpdating"];
  }

  [(CRLCanvasLayoutController *)self->mLayoutController setInfos:&__NSArray0__struct];
  v12.receiver = self;
  v12.super_class = CRLCanvas;
  [(CRLCanvas *)&v12 dealloc];
}

- (Class)rootLayoutClass
{
  canvasRootLayoutClass = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->mDelegate);
    canvasRootLayoutClass = [v6 canvasRootLayoutClass];
  }

  return canvasRootLayoutClass;
}

- (BOOL)p_isLayoutCompleteIncludingLayers:(BOOL)layers
{
  if (self->mInLayout)
  {
    return 0;
  }

  if (layers)
  {
    v6 = [(CRLCanvas *)self i_needsLayout:v3];
  }

  else
  {
    v6 = [(CRLCanvas *)self p_needsLayoutNotIncludingLayers:v3];
  }

  return v6 ^ 1;
}

- (void)afterLayoutIncludingLayers:(BOOL)layers performBlock:(id)block
{
  layersCopy = layers;
  blockCopy = block;
  if (blockCopy)
  {
    v14 = blockCopy;
    if ([(CRLCanvas *)self p_isLayoutCompleteIncludingLayers:layersCopy])
    {
      v14[2]();
LABEL_10:
      blockCopy = v14;
      goto LABEL_11;
    }

    os_unfair_lock_lock(&self->mBlocksToPerformLock);
    if (layersCopy)
    {
      p_mBlocksToPerformAfterLayoutAndLayerUpdating = &self->mBlocksToPerformAfterLayoutAndLayerUpdating;
      mBlocksToPerformAfterLayoutAndLayerUpdating = self->mBlocksToPerformAfterLayoutAndLayerUpdating;
      if (mBlocksToPerformAfterLayoutAndLayerUpdating)
      {
LABEL_6:
        v9 = mBlocksToPerformAfterLayoutAndLayerUpdating;
LABEL_9:
        v10 = *p_mBlocksToPerformAfterLayoutAndLayerUpdating;
        *p_mBlocksToPerformAfterLayoutAndLayerUpdating = v9;

        v11 = *p_mBlocksToPerformAfterLayoutAndLayerUpdating;
        v12 = [v14 copy];
        v13 = objc_retainBlock(v12);
        [(NSMutableArray *)v11 addObject:v13];

        os_unfair_lock_unlock(&self->mBlocksToPerformLock);
        goto LABEL_10;
      }
    }

    else
    {
      p_mBlocksToPerformAfterLayoutAndLayerUpdating = &self->mBlocksToPerformAfterLayout;
      mBlocksToPerformAfterLayoutAndLayerUpdating = self->mBlocksToPerformAfterLayout;
      if (mBlocksToPerformAfterLayoutAndLayerUpdating)
      {
        goto LABEL_6;
      }
    }

    v9 = objc_alloc_init(NSMutableArray);
    goto LABEL_9;
  }

LABEL_11:
}

- (CRLBoardItemOwning)boardItemOwner
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = [WeakRetained boardItemOwnerForCanvas:self];

  return v4;
}

- (CRLChangeNotifier)changeNotifier
{
  canvasController = [(CRLCanvas *)self canvasController];
  editingCoordinator = [canvasController editingCoordinator];
  changeNotifier = [editingCoordinator changeNotifier];

  return changeNotifier;
}

- (void)i_setCanvasController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->mCanvasController);

  if (WeakRetained)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101396D80();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101396D94();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101396E30();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLCanvas i_setCanvasController:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvas.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:260 isFatal:0 description:"expected nil value for '%{public}s'", "mCanvasController"];
  }

  if (!controllerCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101396E58();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101396E80();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101396F1C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLCanvas i_setCanvasController:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvas.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:261 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];
  }

  v12 = objc_loadWeakRetained(&self->mCanvasController);

  if (!v12)
  {
    objc_storeWeak(&self->mCanvasController, controllerCopy);
  }
}

- (CRLInteractiveCanvasController)canvasController
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasController);

  return WeakRetained;
}

- (void)i_setInfosToDisplay:(id)display updatingLayoutController:(BOOL)controller
{
  controllerCopy = controller;
  displayCopy = display;
  v9 = displayCopy;
  if (displayCopy)
  {
    v7 = [displayCopy copy];
  }

  else
  {
    v7 = objc_alloc_init(NSArray);
  }

  mInfos = self->mInfos;
  self->mInfos = v7;

  if (controllerCopy)
  {
    [(CRLCanvas *)self i_updateInfosInLayoutController];
  }
}

- (void)i_updateInfosInLayoutController
{
  layoutController = [(CRLCanvas *)self layoutController];
  [layoutController setInfos:self->mInfos];
}

- (id)repForLayout:(id)layout
{
  if (layout)
  {
    v4 = [(NSMapTable *)self->mRepsByLayout objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)recreateAllLayoutsAndReps
{
  layoutController = [(CRLCanvas *)self layoutController];
  [layoutController i_removeAllLayouts];

  [(CRLCanvas *)self p_updateRepsFromLayouts];
  if ([(CRLCanvas *)self isCanvasInteractive])
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->mDelegate);
      [v6 updateLayerTreeForInteractiveCanvas:self];
    }
  }

  layoutController2 = [(CRLCanvas *)self layoutController];
  [layoutController2 setInfos:self->mInfos];

  [(CRLCanvas *)self layoutInvalidated];
}

- (void)canvasInvalidatedForRep:(id)rep
{
  repCopy = rep;
  [(CRLCanvas *)self p_setInvalidLayoutFlagAndCallDelegate];
  [(CRLCanvas *)self invalidateContentLayersForRep:repCopy];
  [(CRLCanvas *)self invalidateOverlayLayersForRep:repCopy];
}

- (void)canvasInvalidatedForLayout:(id)layout
{
  v4 = [(CRLCanvas *)self repForLayout:layout];
  v5 = v4;
  if (v4)
  {
    [(CRLCanvas *)self canvasInvalidatedForRep:v4];
  }

  else
  {
    [(CRLCanvas *)self p_setInvalidLayoutFlagAndCallDelegate];
  }
}

- (void)p_setInvalidLayoutFlagAndCallDelegate
{
  self->mInvalidFlags.layout = 1;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->mDelegate);
    [v5 canvasLayoutInvalidated:self];
  }
}

- (void)invalidateReps
{
  self->mInvalidFlags.reps = 1;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->mDelegate);
    [v5 canvasLayoutInvalidated:self];
  }
}

- (void)invalidateVisibleBounds
{
  self->mInvalidFlags.visibleBounds = 1;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->mDelegate);
    [v5 canvasLayoutInvalidated:self];
  }
}

- (void)invalidateAllLayers
{
  self->mInvalidFlags.allContentAndOverlayLayers = 1;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->mDelegate);
    [v5 canvasDidInvalidateAllLayers:self];
  }

  [(CRLCanvas *)self i_setLayersInvalidWithoutInvalidatingAnySpecificLayers];
}

- (void)invalidateContentLayersForRep:(id)rep
{
  [(NSMutableSet *)self->mRepsWithInvalidContentLayers addObject:rep];

  [(CRLCanvas *)self i_setLayersInvalidWithoutInvalidatingAnySpecificLayers];
}

- (void)invalidateOverlayLayersForRep:(id)rep
{
  [(NSMutableSet *)self->mRepsWithInvalidOverlayLayers addObject:rep];

  [(CRLCanvas *)self i_setLayersInvalidWithoutInvalidatingAnySpecificLayers];
}

- (void)i_setLayersInvalidWithoutInvalidatingAnySpecificLayers
{
  self->mInvalidFlags.layers = 1;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->mDelegate);
    [v5 canvasLayoutInvalidated:self];
  }
}

- (void)nonInteractiveLayoutIfNeeded
{
  if ([(CRLCanvas *)self isCanvasInteractive])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101396F44();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101396F58();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101396FE8();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCanvas nonInteractiveLayoutIfNeeded]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvas.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:476 isFatal:0 description:"Interactive canvases should not be laid out directly!"];
  }

  [(CRLCanvas *)self i_layoutIfNeeded];
}

- (void)i_layoutIfNeededUpdatingLayerTree
{
  if (self->mInLayout)
  {
    if ([(CRLCanvas *)self i_needsLayout]&& !self->mShouldUpdateLayersDuringLayout && ![(CRLCanvas *)self p_canvasShouldAlwaysUpdateLayers])
    {
      v3[0] = _NSConcreteStackBlock;
      v3[1] = 3221225472;
      v3[2] = sub_100589750;
      v3[3] = &unk_10183AB38;
      v3[4] = self;
      [(CRLCanvas *)self performBlockAfterLayoutIfNecessary:v3];
    }
  }

  else
  {
    self->mShouldUpdateLayersDuringLayout = 1;
    [(CRLCanvas *)self p_layoutWithReadLock];
    self->mShouldUpdateLayersDuringLayout = 0;
  }
}

- (BOOL)p_canvasShouldAlwaysUpdateLayers
{
  if ([(CRLCanvas *)self isCanvasInteractive])
  {
    return !+[NSThread isMainThread];
  }

  else
  {
    return 1;
  }
}

- (BOOL)i_needsLayout
{
  if (self->mInvalidFlags.layers)
  {
    return 1;
  }

  else
  {
    return [(CRLCanvas *)self p_needsLayoutNotIncludingLayers];
  }
}

- (BOOL)spellCheckingSupported
{
  if ([(CRLCanvas *)self isCanvasInteractive])
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v4 = objc_loadWeakRetained(&self->mDelegate);
      spellCheckingSupported = [v4 spellCheckingSupported];
    }

    else
    {
      spellCheckingSupported = 1;
    }
  }

  else
  {
    spellCheckingSupported = 0;
  }

  return spellCheckingSupported & 1;
}

- (BOOL)spellCheckingSuppressed
{
  spellCheckingSupported = [(CRLCanvas *)self spellCheckingSupported];
  if (spellCheckingSupported)
  {
    WeakRetained = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->mDelegate);
      spellCheckingSuppressed = [v5 spellCheckingSuppressed];
    }

    else
    {
      spellCheckingSuppressed = 0;
    }
  }

  else
  {
    spellCheckingSuppressed = 0;
  }

  return spellCheckingSuppressed | spellCheckingSupported ^ 1;
}

- (BOOL)isCanvasInteractive
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->mDelegate);
      isCanvasInteractive = [v5 isCanvasInteractive];
    }

    else
    {
      isCanvasInteractive = 0;
    }
  }

  else
  {
    isCanvasInteractive = 0;
  }

  return isCanvasInteractive;
}

- (BOOL)isPrinting
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->mDelegate);
      isPrintingCanvas = [v5 isPrintingCanvas];
    }

    else
    {
      isPrintingCanvas = 0;
    }
  }

  else
  {
    isPrintingCanvas = 0;
  }

  return isPrintingCanvas;
}

- (BOOL)shouldShowTextOverflowGlyphs
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (!WeakRetained)
  {
    return 1;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = objc_loadWeakRetained(&self->mDelegate);
  shouldShowTextOverflowGlyphs = [v7 shouldShowTextOverflowGlyphs];

  return shouldShowTextOverflowGlyphs;
}

- (void)setEnableInstructionalText:(BOOL)text
{
  if ([(CRLCanvas *)self isCanvasInteractive])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101397010();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101397024();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013970B4();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCanvas setEnableInstructionalText:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvas.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:572 isFatal:0 description:"Setting enableInstructionalText on an interactive canvas is not allowed."];
  }

  self->mEnableInstructionalText = text;
}

- (BOOL)shouldShowInstructionalTextForLayout:(id)layout
{
  layoutCopy = layout;
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained && (v6 = WeakRetained, v7 = objc_loadWeakRetained(&self->mDelegate), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = objc_loadWeakRetained(&self->mDelegate);
    enableInstructionalText = [v9 shouldShowInstructionalTextForLayout:layoutCopy];
  }

  else if ([(CRLCanvas *)self isCanvasInteractive]|| [(CRLCanvas *)self isTemporaryForLayout])
  {
    enableInstructionalText = 1;
  }

  else
  {
    enableInstructionalText = [(CRLCanvas *)self enableInstructionalText];
  }

  return enableInstructionalText;
}

- (BOOL)shouldSuppressBackgrounds
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->mDelegate);
    if (objc_opt_respondsToSelector())
    {
      v5 = objc_loadWeakRetained(&self->mDelegate);
      shouldSuppressBackgrounds = [v5 shouldSuppressBackgrounds];
    }

    else
    {
      shouldSuppressBackgrounds = 0;
    }
  }

  else
  {
    shouldSuppressBackgrounds = 0;
  }

  return shouldSuppressBackgrounds;
}

- (BOOL)isDrawingIntoPDF
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (!WeakRetained)
  {
    return 0;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->mDelegate);
  v8 = [v7 isCanvasDrawingIntoPDF:self];

  return v8;
}

- (BOOL)textLayoutMustIncludeAdornments
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (!WeakRetained)
  {
    return 0;
  }

  v4 = WeakRetained;
  v5 = objc_loadWeakRetained(&self->mDelegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = objc_loadWeakRetained(&self->mDelegate);
  textLayoutMustIncludeAdornments = [v7 textLayoutMustIncludeAdornments];

  return textLayoutMustIncludeAdornments;
}

- (void)setSuppressesShadowsAndReflections:(BOOL)reflections
{
  if ([(CRLCanvas *)self isCanvasInteractive])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013970DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013970F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101397180();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCanvas setSuppressesShadowsAndReflections:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvas.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:638 isFatal:0 description:"Caller is trying to suppress shadows and reflections on an interactive canvas; this is not supported"];
  }

  self->mSuppressesShadowsAndReflections = reflections;
}

- (void)setViewScale:(double)scale
{
  if (scale <= 0.0)
  {
    v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013971A8();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      mViewScale = self->mViewScale;
      *buf = 67110402;
      v12 = v5;
      v13 = 2082;
      v14 = "[CRLCanvas setViewScale:]";
      v15 = 2082;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvas.m";
      v17 = 1024;
      v18 = 651;
      v19 = 2048;
      scaleCopy = scale;
      v21 = 2048;
      v22 = mViewScale;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Caller is trying to set the canvas view scale to invalid value: %f (Falling back to current value: %f)", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013971BC();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLCanvas setViewScale:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvas.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:651 isFatal:0 description:"Caller is trying to set the canvas view scale to invalid value: %f (Falling back to current value: %f)", *&scale, *&self->mViewScale];
  }

  else
  {
    self->mViewScale = scale;
  }
}

- (CGRect)convertUnscaledToBoundsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(CRLCanvas *)self viewScale];

  v8 = sub_10011FFD8(x, y, width, height, v7);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)convertBoundsToUnscaledRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(CRLCanvas *)self viewScale];

  v8 = sub_10011FFD8(x, y, width, height, 1.0 / v7);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGPoint)convertUnscaledToBoundsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CRLCanvas *)self viewScale];

  v6 = sub_10011F340(x, y, v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)convertBoundsToUnscaledPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(CRLCanvas *)self viewScale];

  v6 = sub_10011F340(x, y, 1.0 / v5);
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGSize)convertUnscaledToBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(CRLCanvas *)self viewScale];

  v6 = sub_10011F340(width, height, v5);
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)convertBoundsToUnscaledSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(CRLCanvas *)self viewScale];

  v6 = sub_10011F340(width, height, 1.0 / v5);
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGRect)visibleUnscaledRectForClippingReps
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained && (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->mDelegate), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = objc_loadWeakRetained(&self->mDelegate);
    [v7 visibleScaledBoundsForClippingRepsOnCanvas:self];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [(CRLCanvas *)self convertBoundsToUnscaledRect:v9, v11, v13, v15];
  }

  else
  {
    [(CRLCanvas *)self p_bounds];
  }

  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (id)p_hitRep:(CGPoint)rep withPrecision:(BOOL)precision inTopLevelReps:(id)reps smallRepOutset:(double)outset unscaledPointTransformForRep:(id)forRep passingTest:(id)test
{
  precisionCopy = precision;
  y = rep.y;
  x = rep.x;
  repsCopy = reps;
  forRepCopy = forRep;
  testCopy = test;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  reverseObjectEnumerator = [repsCopy reverseObjectEnumerator];
  v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v49;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v49 != v20)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v22 = *(*(&v48 + 1) + 8 * i);
        [self p_transformedUnscaledPoint:v22 forTestingHitRep:forRepCopy withTransformFromBlock:{x, y}];
        [v22 convertNaturalPointFromUnscaledCanvas:?];
        v23 = [v22 hitRepChrome:testCopy passingTest:?];
        if (v23)
        {
          v32 = v23;
          goto LABEL_34;
        }
      }

      v19 = [reverseObjectEnumerator countByEnumeratingWithState:&v48 objects:v53 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v40 = repsCopy;
  reverseObjectEnumerator2 = [repsCopy reverseObjectEnumerator];
  v25 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (!v25)
  {

    reverseObjectEnumerator = 0;
    v32 = 0;
LABEL_33:
    repsCopy = v40;
    goto LABEL_34;
  }

  v26 = v25;
  reverseObjectEnumerator = 0;
  v27 = *v45;
  v28 = INFINITY;
  v29 = precisionCopy;
  obj = reverseObjectEnumerator2;
  while (2)
  {
    for (j = 0; j != v26; j = j + 1)
    {
      if (*v45 != v27)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v44 + 1) + 8 * j);
      [self p_transformedUnscaledPoint:v31 forTestingHitRep:forRepCopy withTransformFromBlock:{x, y}];
      [v31 convertNaturalPointFromUnscaledCanvas:?];
      v32 = [v31 hitRep:v29 withPrecision:testCopy passingTest:?];
      if (v32)
      {
        v37 = obj;
        goto LABEL_28;
      }

      if (([v31 shouldHitTestChildrenLikeTopLevelReps] & 1) == 0)
      {
        [v31 convertNaturalPointFromUnscaledCanvas:{x, y}];
        v43 = v28;
        v33 = [v31 i_smallHitRepNearPoint:&v43 smallRepOutset:forRepCopy forShortestDistance:testCopy unscaledPointTransformForRep:? passingTest:?];
        v34 = v33;
        if (v33)
        {
          v35 = v43 < v28;
        }

        else
        {
          v35 = 0;
        }

        if (v35)
        {
          v36 = v33;

          v28 = v43;
          reverseObjectEnumerator = v36;
          v29 = precisionCopy;
        }
      }
    }

    v37 = obj;
    v26 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v26)
    {
      continue;
    }

    break;
  }

LABEL_28:

  if (!reverseObjectEnumerator)
  {
    goto LABEL_33;
  }

  repsCopy = v40;
  if (([v32 i_shouldCountAsClosestSmallRepForSizeLimit:outset] & 1) == 0)
  {
    [self p_transformedUnscaledPoint:v32 forTestingHitRep:forRepCopy withTransformFromBlock:{x, y}];
    LOBYTE(v43) = 0;
    [v32 convertNaturalPointFromUnscaledCanvas:?];
    [v32 shortestDistanceToPoint:&v43 countAsHit:?];
    if ((LOBYTE(v43) & 1) == 0)
    {
      v38 = reverseObjectEnumerator;

      v32 = v38;
    }
  }

LABEL_34:

  return v32;
}

+ (CGPoint)p_transformedUnscaledPoint:(CGPoint)result forTestingHitRep:(id)rep withTransformFromBlock:(id)block
{
  y = result.y;
  if (rep && block)
  {
    x = result.x;
    v9 = result;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    (*(block + 2))(&v10, block, rep);
    result = vaddq_f64(v12, vmlaq_n_f64(vmulq_laneq_f64(v11, v9, 1), v10, x));
  }

  v7 = v6;
  result.y = v7;
  return result;
}

- (void)i_performBlockWhileIgnoringClickThrough:(id)through
{
  mIgnoringClickThrough = self->mIgnoringClickThrough;
  self->mIgnoringClickThrough = 1;
  (*(through + 2))(through, a2);
  self->mIgnoringClickThrough = mIgnoringClickThrough;
}

- (void)i_registerRep:(id)rep
{
  repCopy = rep;
  if (repCopy && self->mRepsByLayout)
  {
    v6 = repCopy;
    layout = [repCopy layout];
    if (layout)
    {
      [(NSMapTable *)self->mRepsByLayout setObject:v6 forKey:layout];
    }

    repCopy = v6;
  }
}

- (void)i_unregisterRep:(id)rep
{
  repCopy = rep;
  if (repCopy && self->mRepsByLayout)
  {
    v7 = repCopy;
    layout = [repCopy layout];
    if (layout)
    {
      v6 = [(NSMapTable *)self->mRepsByLayout objectForKey:layout];

      if (v6 == v7)
      {
        [(NSMapTable *)self->mRepsByLayout removeObjectForKey:layout];
      }
    }

    repCopy = v7;
  }
}

- (BOOL)i_areContentLayersInvalidForRep:(id)rep
{
  if (self->mInvalidFlags.allContentAndOverlayLayers)
  {
    return 1;
  }

  else
  {
    return [(NSMutableSet *)self->mRepsWithInvalidContentLayers containsObject:rep];
  }
}

- (BOOL)i_areOverlayLayersInvalidForRep:(id)rep
{
  if (self->mInvalidFlags.allContentAndOverlayLayers)
  {
    return 1;
  }

  else
  {
    return [(NSMutableSet *)self->mRepsWithInvalidOverlayLayers containsObject:rep];
  }
}

- (CGRect)i_approximateScaledFrameOfEditingMenuAtPoint:(CGPoint)point
{
  v3 = sub_10011EC70(point.x, point.y + -30.0, 200.0);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)i_clipRectForCreatingRepsFromLayouts
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  if (WeakRetained && (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->mDelegate), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = objc_loadWeakRetained(&self->mDelegate);
    [v7 visibleScaledBoundsForClippingRepsOnCanvas:self];
    x = v8;
    y = v10;
    width = v12;
    height = v14;
  }

  else
  {
    x = CGRectInfinite.origin.x;
    y = CGRectInfinite.origin.y;
    width = CGRectInfinite.size.width;
    height = CGRectInfinite.size.height;
  }

  [(CRLCanvas *)self convertBoundsToUnscaledRect:x, y, width, height];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)i_drawBackgroundInContext:(CGContext *)context
{
  ClipBoundingBox = CGContextGetClipBoundingBox(context);
  v7 = CGRectIntegral(ClipBoundingBox);

  [(CRLCanvas *)self i_drawBackgroundInContext:context bounds:v7.origin.x, v7.origin.y, v7.size.width, v7.size.height];
}

- (void)i_drawBackgroundInContext:(CGContext *)context bounds:(CGRect)bounds
{
  if (self->mBackgroundColor)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    y = bounds.origin.y;
    x = bounds.origin.x;
    CGContextSaveGState(context);
    CGContextSetFillColorWithColor(context, [(CRLColor *)self->mBackgroundColor CGColor]);
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    CGContextFillRect(context, v11);

    CGContextRestoreGState(context);
  }
}

- (void)addBitmapsToRenderingQualityInfo:(id)info inContext:(CGContext *)context
{
  infoCopy = info;
  if (infoCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->mTopLevelReps;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * i) recursivelyPerformSelector:"addBitmapsToRenderingQualityInfo:inContext:" withObject:infoCopy withObject:{context, v12}];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)i_drawRepsInContext:(CGContext *)context passingTest:(id)test distort:(CGAffineTransform *)distort
{
  testCopy = test;
  if (context)
  {
    CGContextSaveGState(context);
    CGContextScaleCTM(context, self->mViewScale, self->mViewScale);
    v9 = distort->b == 0.0 && distort->c == 0.0 && distort->tx == 0.0 && distort->ty == 0.0 && fabs(distort->a + -1.0) < 0.001 && fabs(distort->d + -1.0) < 0.001;
    sub_100510D7C(context);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    selfCopy = self;
    v10 = self->mTopLevelReps;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * v14);
          if (!testCopy || testCopy[2](testCopy, *(*(&v22 + 1) + 8 * v14)))
          {
            CGContextSaveGState(context);
            if (!v9 || [v15 wantsToDistortWithImagerContext])
            {
              v16 = *&distort->c;
              *&transform.a = *&distort->a;
              *&transform.c = v16;
              *&transform.tx = *&distort->tx;
              CGContextConcatCTM(context, &transform);
            }

            [v15 recursivelyDrawInContext:context keepingChildrenPassingTest:testCopy];
            CGContextRestoreGState(context);
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    v17 = sub_1005113C0(context);
    v18 = [v17 copy];
    mPreviousRenderDatasNeedingDownload = selfCopy->mPreviousRenderDatasNeedingDownload;
    selfCopy->mPreviousRenderDatasNeedingDownload = v18;

    CGContextRestoreGState(context);
  }
}

- (void)i_drawRepsInContext:(CGContext *)context passingTest:(id)test
{
  v4 = *&CGAffineTransformIdentity.c;
  v5[0] = *&CGAffineTransformIdentity.a;
  v5[1] = v4;
  v5[2] = *&CGAffineTransformIdentity.tx;
  [(CRLCanvas *)self i_drawRepsInContext:context passingTest:test distort:v5];
}

- (CGImage)i_imageInScaledRect:(CGRect)rect withTargetIntegralSize:(CGSize)size distortedToMatch:(BOOL)match keepingChildrenPassingTest:(id)test
{
  matchCopy = match;
  height = size.height;
  width = size.width;
  v9 = rect.size.height;
  v10 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  testCopy = test;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  height = [(CRLCanvas *)self i_createContextToDrawImageInScaledRect:matchCopy withTargetIntegralSize:&v21 distortedToMatch:&v19 returningBounds:x integralBounds:y, v10, v9, width, height];
  if (height)
  {
    v16 = height;
    v17 = [(CRLCanvas *)self i_newImageInContext:height bounds:matchCopy integralBounds:testCopy distortedToMatch:v21 keepingChildrenPassingTest:v22, v19, v20];
    CGContextRelease(v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (CGContext)i_createContextToDrawImageInScaledRect:(CGRect)rect withTargetIntegralSize:(CGSize)size distortedToMatch:(BOOL)match returningBounds:(CGRect *)bounds integralBounds:(CGRect *)integralBounds
{
  height = size.height;
  width = size.width;
  v12 = rect.size.height;
  v13 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v17 = sub_1001221E0(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  v43 = v18;
  v45 = v17;
  v20 = v19;
  v22 = v21;
  if (width <= 0.0 || height <= 0.0)
  {
    goto LABEL_6;
  }

  v23 = sub_10012211C(width);
  if (match)
  {
    v20 = v23;
LABEL_5:
    v22 = v24;
    goto LABEL_6;
  }

  v41 = v20 - v23;
  v42 = v22 - v24;
  if (v20 - v23 > 0.0 || v42 > 0.0)
  {
    if (v41 > 0.0)
    {
      v20 = v23;
    }

    if (v42 > 0.0)
    {
      goto LABEL_5;
    }
  }

  else if (v41 < 0.0 && v42 < 0.0)
  {
    if (v41 <= v42)
    {
      v22 = v24;
    }

    else
    {
      v20 = v23;
    }
  }

LABEL_6:
  v25 = sub_10011EE4C(x, y, v13, v12, v45, v43, v20, v22);
  if (v25)
  {
    v26 = v45;
  }

  else
  {
    v26 = x;
  }

  if (v25)
  {
    v27 = v43;
  }

  else
  {
    v27 = y;
  }

  if (v25)
  {
    v13 = v20;
    v12 = v22;
    y = v43;
    x = v45;
  }

  v28 = v13;
  v29 = v12;
  v47.origin.x = v45;
  v47.origin.y = v43;
  v47.size.width = v20;
  v47.size.height = v22;
  if (CGRectEqualToRect(*&v26, v47) && (mBackgroundColor = self->mBackgroundColor) != 0 && ([(CRLColor *)mBackgroundColor alphaComponent], v31 == 1.0))
  {
    v32 = 1;
  }

  else
  {
    v32 = 3;
  }

  if ([(CRLCanvas *)self canvasIsWideGamut:*&v43])
  {
    v32 |= 0x20u;
  }

  [(CRLCanvas *)self contentsScale];
  v34 = sub_10011F340(v20, v22, v33);
  v36 = sub_10050DF80(v32, v34, v35);
  [(CRLCanvas *)self contentsScale];
  v38 = v37;
  [(CRLCanvas *)self contentsScale];
  CGContextScaleCTM(v36, v38, v39);
  if (bounds)
  {
    bounds->origin.x = x;
    bounds->origin.y = y;
    bounds->size.width = v13;
    bounds->size.height = v12;
  }

  if (integralBounds)
  {
    integralBounds->origin.x = v46;
    integralBounds->origin.y = v44;
    integralBounds->size.width = v20;
    integralBounds->size.height = v22;
  }

  return v36;
}

- (CGImage)i_newImageInContext:(CGContext *)context bounds:(CGRect)bounds integralBounds:(CGRect)integralBounds distortedToMatch:(BOOL)match keepingChildrenPassingTest:(id)test
{
  if (!context)
  {
    return 0;
  }

  matchCopy = match;
  height = integralBounds.size.height;
  width = integralBounds.size.width;
  y = integralBounds.origin.y;
  x = integralBounds.origin.x;
  v12 = bounds.size.height;
  v13 = bounds.size.width;
  testCopy = test;
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 0.0, height);
  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextTranslateCTM(context, -x, -y);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGContextClipToRect(context, v21);
  v17 = *&CGAffineTransformIdentity.c;
  *&v20.a = *&CGAffineTransformIdentity.a;
  *&v20.c = v17;
  *&v20.tx = *&CGAffineTransformIdentity.tx;
  if (matchCopy)
  {
    CGAffineTransformMakeScale(&v20, width / v13, height / v12);
  }

  [(CRLCanvas *)self i_drawBackgroundInContext:context];
  v19 = v20;
  [(CRLCanvas *)self i_drawRepsInContext:context passingTest:testCopy distort:&v19];

  CGContextRestoreGState(context);
  return CGBitmapContextCreateImage(context);
}

- (CGRect)p_bounds
{
  v3 = sub_10011ECB4();
  top = self->mContentInset.top;
  left = self->mContentInset.left;
  v6 = v3 + left;
  v8 = top + v7;
  v10 = v9 - (left + self->mContentInset.right);
  v12 = v11 - (top + self->mContentInset.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (void)p_layoutWithReadLock
{
  if (self->mInLayout)
  {
    return;
  }

  self->mInLayout = 1;
  crlaxIsPreventingReloadingChildren = [(CRLCanvas *)self crlaxIsPreventingReloadingChildren];
  [(CRLCanvas *)self crlaxPreventReloadingChildren];
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);
  v11 = sub_1003035DC(WeakRetained, 1, v5, v6, v7, v8, v9, v10, &OBJC_PROTOCOL___CRLDynamicCanvasDelegate);

  if (objc_opt_respondsToSelector())
  {
    [v11 i_canvasWillLayout:self];
  }

  layout = self->mInvalidFlags.layout;
  if (layout)
  {
    v13 = objc_loadWeakRetained(&self->mDelegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->mDelegate);
      [v15 canvasWillValidateLayouts:self];
    }

    layoutController = [(CRLCanvas *)self layoutController];
    [layoutController validateLayouts];

    v17 = objc_loadWeakRetained(&self->mDelegate);
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = objc_loadWeakRetained(&self->mDelegate);
      [v19 canvasDidValidateLayouts:self];
    }

LABEL_11:
    v20 = objc_loadWeakRetained(&self->mDelegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->mDelegate);
      [v22 canvasWillUpdateRepsFromLayouts:self];
    }

    p_updateRepsFromLayouts = [(CRLCanvas *)self p_updateRepsFromLayouts];
    *&self->mInvalidFlags.reps = 0;
    v24 = objc_loadWeakRetained(&self->mDelegate);
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      v26 = objc_loadWeakRetained(&self->mDelegate);
      [v26 canvasDidUpdateRepsFromLayouts:self];
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v27 = [(NSHashTable *)self->mCanvasLayoutObservers copy];
    v28 = [v27 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v28)
    {
      v29 = *v42;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v42 != v29)
          {
            objc_enumerationMutation(v27);
          }

          [*(*(&v41 + 1) + 8 * i) canvasDidUpdateReps:self];
        }

        v28 = [v27 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v28);
    }

    if (layout)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (self->mInvalidFlags.reps || self->mInvalidFlags.visibleBounds)
  {
    goto LABEL_11;
  }

  p_updateRepsFromLayouts = 0;
  if (layout)
  {
    goto LABEL_25;
  }

LABEL_23:
  if ((p_updateRepsFromLayouts & 1) == 0 && !self->mInvalidFlags.layers)
  {
    v34 = 0;
    if (!layout)
    {
      goto LABEL_36;
    }

LABEL_34:
    v35 = objc_loadWeakRetained(&self->mDelegate);
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      v37 = objc_loadWeakRetained(&self->mDelegate);
      [v37 canvasDidLayout:self];
    }

    goto LABEL_36;
  }

LABEL_25:
  if ((self->mShouldUpdateLayersDuringLayout | [(CRLCanvas *)self p_canvasShouldAlwaysUpdateLayers]))
  {
    if ([(CRLCanvas *)self isCanvasInteractive])
    {
      v31 = objc_loadWeakRetained(&self->mDelegate);
      v32 = objc_opt_respondsToSelector();

      if (v32)
      {
        v33 = objc_loadWeakRetained(&self->mDelegate);
        [v33 updateLayerTreeForInteractiveCanvas:self];
      }
    }

    *&self->mInvalidFlags.layers = 0;
    [(NSMutableSet *)self->mRepsWithInvalidContentLayers removeAllObjects];
    [(NSMutableSet *)self->mRepsWithInvalidOverlayLayers removeAllObjects];
    v34 = 1;
    if (!layout)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v34 = 1;
  self->mInvalidFlags.layers = 1;
  if (layout)
  {
    goto LABEL_34;
  }

LABEL_36:
  self->mInvalidFlags.layout = 0;

  self->mInLayout = 0;
  v38 = +[NSMutableArray array];
  os_unfair_lock_lock(&self->mBlocksToPerformLock);
  if (self->mBlocksToPerformAfterLayout)
  {
    [v38 addObjectsFromArray:?];
    mBlocksToPerformAfterLayout = self->mBlocksToPerformAfterLayout;
    self->mBlocksToPerformAfterLayout = 0;
  }

  if (self->mBlocksToPerformAfterLayoutAndLayerUpdating)
  {
    if (!self->mInvalidFlags.layers)
    {
      [v38 addObjectsFromArray:?];
      mBlocksToPerformAfterLayoutAndLayerUpdating = self->mBlocksToPerformAfterLayoutAndLayerUpdating;
      self->mBlocksToPerformAfterLayoutAndLayerUpdating = 0;
    }
  }

  os_unfair_lock_unlock(&self->mBlocksToPerformLock);
  [v38 makeObjectsPerformSelector:"invoke"];

  [(CRLCanvas *)self crlaxRevertReloadingChildrenTo:crlaxIsPreventingReloadingChildren andReloadForChanges:v34];
}

- (BOOL)p_updateRepsFromLayouts
{
  WeakRetained = objc_loadWeakRetained(&self->mCanvasController);
  v4 = &_s10Foundation9IndexPathVSHAAMc_ptr;
  if (!WeakRetained || (v5 = WeakRetained, v6 = objc_loadWeakRetained(&self->mCanvasController), v7 = [v6 i_currentlySuppressingLayerUpdates], v6, v5, !v7))
  {
    [(CRLCanvas *)self i_clipRectForCreatingRepsFromLayouts];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    layoutController = [(CRLCanvas *)self layoutController];
    v19 = [layoutController layoutsInRect:{v11, v13, v15, v17}];

    v20 = objc_loadWeakRetained(&self->mDelegate);
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = objc_loadWeakRetained(&self->mDelegate);
      v23 = [v22 additionalVisibleInfosForCanvas:self];

      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v112 objects:v122 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v113;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v113 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = sub_100125F34(*(*(&v112 + 1) + 8 * i));
            v30 = [(CRLCanvasLayoutController *)self->mLayoutController layoutForInfo:v29];
            if (v30 && ([v19 containsObject:v30] & 1) == 0)
            {
              v31 = [v19 arrayByAddingObject:v30];

              v19 = v31;
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v112 objects:v122 count:16];
        }

        while (v26);
      }
    }

    v32 = objc_loadWeakRetained(&self->mDelegate);
    v33 = objc_opt_respondsToSelector();

    if (v33)
    {
      v34 = objc_loadWeakRetained(&self->mDelegate);
      v35 = [v34 infosToHideForCanvas:self];

      if ([v35 count])
      {
        v36 = [v19 mutableCopy];
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v37 = v19;
        v38 = [v37 countByEnumeratingWithState:&v108 objects:v121 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v109;
          do
          {
            for (j = 0; j != v39; j = j + 1)
            {
              if (*v109 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v108 + 1) + 8 * j);
              info = [v42 info];
              v44 = [v35 containsObject:info];

              if (v44)
              {
                [v36 removeObject:v42];
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v108 objects:v121 count:16];
          }

          while (v39);
        }

        v19 = v36;
        v4 = &_s10Foundation9IndexPathVSHAAMc_ptr;
      }
    }

    v45 = objc_alloc_init(v4[423]);
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v8 = v19;
    v46 = [(NSArray *)v8 countByEnumeratingWithState:&v104 objects:v120 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v105;
      do
      {
        for (k = 0; k != v47; k = k + 1)
        {
          if (*v105 != v48)
          {
            objc_enumerationMutation(v8);
          }

          additionalLayoutsForRepCreation = [*(*(&v104 + 1) + 8 * k) additionalLayoutsForRepCreation];
          [v45 addObjectsFromArray:additionalLayoutsForRepCreation];
        }

        v47 = [(NSArray *)v8 countByEnumeratingWithState:&v104 objects:v120 count:16];
      }

      while (v47);
    }

    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v51 = v45;
    v52 = [v51 countByEnumeratingWithState:&v100 objects:v119 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v101;
      do
      {
        for (m = 0; m != v53; m = m + 1)
        {
          if (*v101 != v54)
          {
            objc_enumerationMutation(v51);
          }

          v56 = *(*(&v100 + 1) + 8 * m);
          if (![(NSArray *)v8 containsObject:v56])
          {
            v57 = [(NSArray *)v8 arrayByAddingObject:v56];

            v8 = v57;
          }
        }

        v53 = [v51 countByEnumeratingWithState:&v100 objects:v119 count:16];
      }

      while (v53);
    }

    if (!self->mInvalidFlags.layout && !self->mInvalidFlags.reps && [(NSArray *)v8 isEqualToArray:self->mPreviouslyVisibleLayouts])
    {
      v9 = 0;
LABEL_84:

      return v9;
    }

    objc_storeStrong(&self->mPreviouslyVisibleLayouts, v8);

LABEL_51:
    v87 = objc_alloc_init(v4[423]);
    v58 = objc_alloc_init(NSMutableSet);
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v8 = v8;
    v59 = [(NSArray *)v8 countByEnumeratingWithState:&v96 objects:v118 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v97;
      do
      {
        for (n = 0; n != v60; n = n + 1)
        {
          if (*v97 != v61)
          {
            objc_enumerationMutation(v8);
          }

          v63 = *(*(&v96 + 1) + 8 * n);
          v64 = [(CRLCanvas *)self repForLayout:v63];
          if (!v64)
          {
            v64 = [objc_alloc(objc_msgSend(v63 "repClassOverride"))];
            if (!v64)
            {
              continue;
            }
          }

          v65 = v64;
          [v64 setParentRep:0];
          [(NSArray *)v87 addObject:v65];
          [v65 updateChildrenFromLayout];
          [v65 recursivelyPerformSelector:"updateFromLayout"];
          [v65 recursivelyPerformSelector:"addToSet:" withObject:v58];
        }

        v60 = [(NSArray *)v8 countByEnumeratingWithState:&v96 objects:v118 count:16];
      }

      while (v60);
    }

    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v66 = self->mAllReps;
    v67 = [(NSSet *)v66 countByEnumeratingWithState:&v92 objects:v117 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v93;
      do
      {
        for (ii = 0; ii != v68; ii = ii + 1)
        {
          if (*v93 != v69)
          {
            objc_enumerationMutation(v66);
          }

          v71 = *(*(&v92 + 1) + 8 * ii);
          if (![(NSSet *)v58 containsObject:v71])
          {
            [v71 i_willBeRemoved];
          }
        }

        v68 = [(NSSet *)v66 countByEnumeratingWithState:&v92 objects:v117 count:16];
      }

      while (v68);
    }

    v72 = objc_loadWeakRetained(&self->mDelegate);
    v73 = objc_opt_respondsToSelector();

    if (v73)
    {
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v74 = v58;
      v75 = [(NSSet *)v74 countByEnumeratingWithState:&v88 objects:v116 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v89;
        do
        {
          for (jj = 0; jj != v76; jj = jj + 1)
          {
            if (*v89 != v77)
            {
              objc_enumerationMutation(v74);
            }

            v79 = *(*(&v88 + 1) + 8 * jj);
            if (![(NSSet *)self->mAllReps containsObject:v79])
            {
              v80 = objc_loadWeakRetained(&self->mDelegate);
              [v80 canvas:self createdRep:v79];
            }
          }

          v76 = [(NSSet *)v74 countByEnumeratingWithState:&v88 objects:v116 count:16];
        }

        while (v76);
      }
    }

    [(CRLCanvas *)self orderRepsForLayout:v87];
    v51 = [(NSSet *)v58 crl_setBySubtractingSet:self->mAllReps];
    if ([v51 count])
    {
      [(NSMutableSet *)self->mRepsWithInvalidContentLayers unionSet:v51];
      [(NSMutableSet *)self->mRepsWithInvalidOverlayLayers unionSet:v51];
    }

    mAllReps = self->mAllReps;
    self->mAllReps = v58;
    v82 = v58;

    mTopLevelReps = self->mTopLevelReps;
    self->mTopLevelReps = v87;
    v84 = v87;

    mAllRepsOrdered = self->mAllRepsOrdered;
    self->mAllRepsOrdered = 0;

    v9 = 1;
    goto LABEL_84;
  }

  v8 = self->mPreviouslyVisibleLayouts;
  if (v8)
  {
    goto LABEL_51;
  }

  return 0;
}

- (void)orderRepsForLayout:(id)layout
{
  layoutCopy = layout;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [layoutCopy countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v21;
    *&v5 = 67109378;
    v19 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(layoutCopy);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = sub_100014370(v10, v9);
        if ([v11 forcesPlacementOnTop] && objc_msgSend(v11, "forcesPlacementOnBottom"))
        {
          v12 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013971E4();
          }

          v13 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            v25 = v12;
            v26 = 2082;
            v27 = "[CRLCanvas orderRepsForLayout:]";
            v28 = 2082;
            v29 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvas.m";
            v30 = 1024;
            v31 = 1378;
            _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cannot force both top and bottom", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10139720C();
          }

          v14 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v17 = v14;
            v18 = +[CRLAssertionHandler packedBacktraceString];
            *buf = v19;
            v25 = v12;
            v26 = 2114;
            v27 = v18;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v15 = [NSString stringWithUTF8String:"[CRLCanvas orderRepsForLayout:]", v19];
          v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvas.m"];
          [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:1378 isFatal:0 description:"Cannot force both top and bottom"];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [layoutCopy countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v6);
  }

  [layoutCopy sortUsingComparator:{&stru_1018709F0, v19}];
}

- (void)p_removeAllReps
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->mAllReps;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * v7) i_willBeRemoved];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v8 = objc_alloc_init(NSSet);
  mAllReps = self->mAllReps;
  self->mAllReps = v8;

  v10 = objc_alloc_init(NSArray);
  mTopLevelReps = self->mTopLevelReps;
  self->mTopLevelReps = v10;

  mAllRepsOrdered = self->mAllRepsOrdered;
  self->mAllRepsOrdered = 0;

  [(NSMutableSet *)self->mRepsWithInvalidContentLayers removeAllObjects];
  [(NSMutableSet *)self->mRepsWithInvalidOverlayLayers removeAllObjects];
}

- (NSArray)allRepsOrdered
{
  mAllRepsOrdered = self->mAllRepsOrdered;
  if (!mAllRepsOrdered)
  {
    v4 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->mTopLevelReps;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [objc_opt_class() p_recursivelyAddOrderedChildrenOfRep:*(*(&v13 + 1) + 8 * v9) toArray:{v4, v13}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v10 = [v4 copy];
    v11 = self->mAllRepsOrdered;
    self->mAllRepsOrdered = v10;

    mAllRepsOrdered = self->mAllRepsOrdered;
  }

  return mAllRepsOrdered;
}

- (CGRect)unscaledRectOfLayouts
{
  layoutController = [(CRLCanvas *)self layoutController];
  [layoutController rectOfTopLevelLayouts];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

+ (void)p_recursivelyAddOrderedChildrenOfRep:(id)rep toArray:(id)array
{
  repCopy = rep;
  arrayCopy = array;
  [arrayCopy addObject:repCopy];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  childReps = [repCopy childReps];
  v9 = [childReps countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(childReps);
        }

        [self p_recursivelyAddOrderedChildrenOfRep:*(*(&v13 + 1) + 8 * v12) toArray:arrayCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [childReps countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (UIEdgeInsets)contentInset
{
  top = self->mContentInset.top;
  left = self->mContentInset.left;
  bottom = self->mContentInset.bottom;
  right = self->mContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CRLCanvasDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->mDelegate);

  return WeakRetained;
}

- (CGSize)unscaledSize
{
  width = self->mUnscaledSize.width;
  height = self->mUnscaledSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)textRendererForLayer:(id)layer context:(CGContext *)context
{
  v5 = objc_allocWithZone(CRLWPRenderer);
  contextCopy = context;
  result = [v5 initWithContext:contextCopy];
  if (result)
  {
    v8 = result;

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end