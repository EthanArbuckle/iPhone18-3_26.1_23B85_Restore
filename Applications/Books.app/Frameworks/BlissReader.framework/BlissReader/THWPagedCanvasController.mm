@interface THWPagedCanvasController
- (BOOL)allowSelectionPopoverForInteractiveCanvasController:(id)controller;
- (BOOL)createLayerHostIfNeededWithFrame:(CGRect)frame viewScale:(double)scale;
- (BOOL)createViewIfNeededWithFrame:(CGRect)frame viewScale:(double)scale;
- (BOOL)interactiveCanvasController:(id)controller allowsEditMenuForRep:(id)rep;
- (BOOL)interactiveCanvasController:(id)controller allowsHyperlinkWithGesture:(id)gesture forRep:(id)rep;
- (BOOL)interactiveCanvasController:(id)controller canvasViewShouldBecomeFirstResponder:(id)responder;
- (BOOL)interactiveCanvasController:(id)controller shouldBeginEditingTHWPRep:(id)rep withGesture:(id)gesture;
- (BOOL)interactiveCanvasControllerIsRelatedCanvasScrolling:(id)scrolling;
- (BOOL)userInteractionEnabled;
- (CGPoint)interactiveCanvasController:(id)controller restrictedContentOffset:(CGPoint)offset forViewScale:(double)scale;
- (CGRect)interactiveCanvasController:(id)controller expandBoundsForScrollViewHitTesting:(CGRect)testing;
- (CGRect)interactiveCanvasController:(id)controller expandVisibleBoundsForTiling:(CGRect)tiling;
- (CGRect)targetVisibleRect;
- (THWPagedCanvasController)initWithDocumentRoot:(id)root;
- (_NSRange)loadedPageRange;
- (double)p_adjustScale:(double)scale andFrame:(CGRect *)frame;
- (double)p_verticalOverflow;
- (id)bookNavigatorForInteractiveCanvasController:(id)controller;
- (id)documentNavigatorForInteractiveCanvasController:(id)controller;
- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep;
- (id)interactiveCanvasController:(id)controller layoutGeometryProviderForLayout:(id)layout;
- (id)interactiveCanvasController:(id)controller primaryTargetForGesture:(id)gesture;
- (id)p_enclosingInteractiveCanvasController;
- (unint64_t)pageIndex;
- (void)dealloc;
- (void)forceStopScrollingAtCurrentPageIndex;
- (void)interactiveCanvasController:(id)controller willAnimateScrollToVisibleUnscaledRect:(CGRect)rect;
- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)animation stillAnimating:(BOOL)animating;
- (void)interactiveCanvasControllerDidLayout:(id)layout;
- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)thread;
- (void)interactiveCanvasControllerDidScroll:(id)scroll;
- (void)interactiveCanvasControllerDidStopScrolling:(id)scrolling;
- (void)interactiveCanvasControllerWillScroll:(id)scroll;
- (void)invalidateLayoutsAndFrames;
- (void)invalidateViews;
- (void)p_rebuildContentSize;
- (void)p_rebuildWithPageIndex:(unint64_t)index;
- (void)p_setFrame:(CGRect)frame scale:(double)scale pageIndex:(unint64_t)index;
- (void)p_updateContentsScale;
- (void)p_updateInfosToDisplayForced:(BOOL)forced;
- (void)p_updateMostVisiblePageIndex;
- (void)p_updateRasterizeOnLayer;
- (void)p_updateRenderedPageIndexes;
- (void)p_updateWithDelegate;
- (void)popDisableInfoUpdates;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame scale:(double)scale;
- (void)setMinimizeInfoChange:(BOOL)change;
- (void)setPadInfos:(BOOL)infos;
- (void)setPageIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setPageOffset:(unint64_t)offset;
- (void)setPreloadPageIndex:(unint64_t)index;
- (void)setRasterize:(BOOL)rasterize;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setupImmediatePressGestureWithSimultaneousGestures:(id)gestures;
- (void)teardownController;
- (void)teardownView;
@end

@implementation THWPagedCanvasController

- (THWPagedCanvasController)initWithDocumentRoot:(id)root
{
  v9.receiver = self;
  v9.super_class = THWPagedCanvasController;
  v3 = [(THWPagedCanvasController *)&v9 init];
  if (v3)
  {
    objc_opt_class();
    v4 = TSUDynamicCast();
    *(v3 + 136) = xmmword_34A730;
    size = CGRectNull.size;
    *(v3 + 152) = CGRectNull.origin;
    *(v3 + 6) = v4;
    *(v3 + 168) = size;
    *(v3 + 12) = 0x7FFFFFFFFFFFFFFFLL;
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    *(v3 + 7) = vnegq_f64(v6);
    v3[42] = 1;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    *(v3 + 2) = dispatch_queue_create("com.apple.iBooks.PagedCanvasRasterize", v7);
    v3[44] = 1;
  }

  return v3;
}

- (void)dealloc
{
  dispatch_release(self->_rasterizeQueue);
  v3.receiver = self;
  v3.super_class = THWPagedCanvasController;
  [(THWPagedCanvasController *)&v3 dealloc];
}

- (void)invalidateViews
{
  if (+[NSThread isMainThread]&& !self->_scrollView)
  {
    interactiveCanvasController = self->_interactiveCanvasController;

    [(TSDInteractiveCanvasController *)interactiveCanvasController invalidateRepsIfSynced];
  }
}

- (id)bookNavigatorForInteractiveCanvasController:(id)controller
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(THWPagedCanvasControllerDelegate *)delegate bookNavigationForPagedCanvasController:self];
}

- (id)documentNavigatorForInteractiveCanvasController:(id)controller
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(THWPagedCanvasControllerDelegate *)delegate documentNavigatorForPagedCanvasController:self];
}

- (BOOL)createViewIfNeededWithFrame:(CGRect)frame viewScale:(double)scale
{
  if (self->_wrapperView)
  {
    return 0;
  }

  p_scrollView = &self->_scrollView;
  if (self->_scrollView)
  {
    return 0;
  }

  if (self->_layerHost)
  {
    return 0;
  }

  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (([(THWPagedCanvasControllerDelegate *)self->_delegate pagedCanvasControllerDeferViewCreation:self]& 1) != 0)
  {
    return 0;
  }

  [(THWPagedCanvasController *)self pushDisableInfoUpdates];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  THCanvasAndScrollViewCreateWithClass(self, &self->_interactiveCanvasController, &self->_layerHost, p_scrollView, v13, 0, v14);
  if (self->_clippingLayerHost)
  {
    pageIndex = [(THWPagedCanvasController *)self pageIndex];
    [(THWClippingLayerHost *)self->_clippingLayerHost setInteractiveCanvasController:0];
    [(THWClippingLayerHost *)self->_clippingLayerHost teardownAndTransferCanvasLayersToHost:[(THWPagedCanvasController *)self layerHost]];

    self->_clippingLayerHost = 0;
  }

  else
  {
    pageIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = 1;
  [(THScrollView *)self->_scrollView setPagingEnabled:1];
  v16 = [[UIView alloc] initWithFrame:{x, y, width, height}];
  self->_wrapperView = v16;
  [(UIView *)v16 addSubview:self->_scrollView];
  [(THScrollView *)self->_scrollView hideScrollIndicators];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController disableAllGestures];
  [objc_msgSend(-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setNestedCanvasAllowLayoutAndRenderOnThread:0];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setAllowLayoutAndRenderOnThread:1];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setCreateRepsForOffscreenLayouts:1];
  [(THWPagedCanvasController *)self p_setFrame:pageIndex scale:x pageIndex:y, width, height, scale];
  [(THWPagedCanvasController *)self p_updateWithDelegate];
  [(THWPagedCanvasController *)self popDisableInfoUpdates];
  [(THWPagedCanvasController *)self p_updateRasterizeOnLayer];
  return v11;
}

- (void)p_updateWithDelegate
{
  if (self->_delegate)
  {
    if (self->_scrollView)
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(THWPagedCanvasControllerDelegate *)self->_delegate pagedCanvasController:self shouldDisableScrollingAtContentEdgesForScrollView:self->_scrollView];
        self->_mayPassScrollEventsToNextResponder = v3;
        [(THScrollView *)self->_scrollView setMayPassScrollEventsToNextResponder:v3];
      }

      if (objc_opt_respondsToSelector())
      {
        [(THScrollView *)self->_scrollView setShouldDisableScrollingWhenCursorIsHidden:[(THWPagedCanvasControllerDelegate *)self->_delegate pagedCanvasController:self shouldDisableScrollingWhenCursorIsHiddenForScrollView:self->_scrollView]];
      }
    }

    [(THWPagedCanvasController *)self p_rebuildContentSize];
    if (objc_opt_respondsToSelector())
    {
      [(THWPagedCanvasControllerDelegate *)self->_delegate pagedCanvasController:self customizeLayerHost:[(TSDInteractiveCanvasController *)self->_interactiveCanvasController layerHost]];
    }

    [(THWPagedCanvasController *)self p_updateContentsScale];
    [(THWPagedCanvasController *)self p_rebuild];
    interactiveCanvasController = self->_interactiveCanvasController;

    [(TSDInteractiveCanvasController *)interactiveCanvasController layoutIfNeeded];
  }
}

- (void)p_updateContentsScale
{
  if (self->_clippingLayerHost)
  {
    canvas = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController canvas];
    [(THWPagedCanvasControllerDelegate *)self->_delegate pagedCanvasControllerContentsScale:self];

    [canvas i_setContentsScale:?];
  }
}

- (BOOL)createLayerHostIfNeededWithFrame:(CGRect)frame viewScale:(double)scale
{
  if (self->_scrollView || self->_layerHost || self->_interactiveCanvasController || self->_clippingLayerHost)
  {
    return 0;
  }

  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  THCanvasAndClippingLayerHostCreateWithClass(self, &self->_interactiveCanvasController, &self->_clippingLayerHost, 0);
  v5 = 1;
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setNestedCanvasAllowLayoutAndRenderOnThread:1];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController setCreateRepsForOffscreenLayouts:1];
  [(THWPagedCanvasController *)self setFrame:x scale:y, width, height, scale];
  [(THWPagedCanvasController *)self p_updateWithDelegate];
  [(THWPagedCanvasController *)self p_updateRasterizeOnLayer];
  return v5;
}

- (double)p_verticalOverflow
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0.0;
  }

  delegate = self->_delegate;

  [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasControllerVerticalOverflow:self];
  return result;
}

- (double)p_adjustScale:(double)scale andFrame:(CGRect *)frame
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return scale;
  }

  delegate = self->_delegate;

  [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasController:self adjustScale:frame andFrame:scale];
  return result;
}

- (void)setFrame:(CGRect)frame scale:(double)scale
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  pageIndex = [(THWPagedCanvasController *)self pageIndex];

  [(THWPagedCanvasController *)self p_setFrame:pageIndex scale:x pageIndex:y, width, height, scale];
}

- (void)p_setFrame:(CGRect)frame scale:(double)scale pageIndex:(unint64_t)index
{
  frameCopy = frame;
  [(THWPagedCanvasController *)self p_adjustScale:&frameCopy andFrame:scale];
  v8 = v7;
  if (self->_clippingLayerHost)
  {
    [(THWPagedCanvasController *)self p_verticalOverflow];
    *&v9 = v8 * v9;
    frameCopy = CGRectInset(frameCopy, 0.0, -ceilf(*&v9));
    [(CALayer *)[(THWClippingLayerHost *)self->_clippingLayerHost clippingLayer] bounds];
    v11 = v10;
    v13 = v12;
    [(THWClippingLayerHost *)self->_clippingLayerHost setFrame:frameCopy.origin.x, frameCopy.origin.y, frameCopy.size.width, frameCopy.size.height];
    [(CALayer *)[(THWClippingLayerHost *)self->_clippingLayerHost clippingLayer] bounds];
    if (v11 != v15 || v13 != v14)
    {
      interactiveCanvasController = self->_interactiveCanvasController;
      x = frameCopy.origin.x;
      y = frameCopy.origin.y;
      width = frameCopy.size.width;
      height = frameCopy.size.height;
      v22 = v8;
LABEL_7:
      [(TSDInteractiveCanvasController *)interactiveCanvasController setViewScale:0 andScrollViewFrame:0 maintainPosition:v22 animated:x, y, width, height];
      [(THWPagedCanvasController *)self p_rebuildWithPageIndex:index];
    }
  }

  else if (self->_wrapperView)
  {
    if (self->_scrollView)
    {
      if (+[NSThread isMainThread])
      {
        [(THWPagedCanvasController *)self p_verticalOverflow];
        *&v23 = v8 * v23;
        v37 = CGRectInset(frameCopy, 0.0, -ceilf(*&v23));
        frameCopy = v37;
        [(UIView *)self->_wrapperView setFrame:*&v37.origin.x, *&v37.origin.y, *&v37.size.width, *&v37.size.height];
        TSDRectWithSize();
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        [(THScrollView *)self->_scrollView frame];
        v39.origin.x = v32;
        v39.origin.y = v33;
        v39.size.width = v34;
        v39.size.height = v35;
        v38.origin.x = v25;
        v38.origin.y = v27;
        v38.size.width = v29;
        v38.size.height = v31;
        if (!CGRectEqualToRect(v38, v39))
        {
          interactiveCanvasController = self->_interactiveCanvasController;
          v22 = v8;
          x = v25;
          y = v27;
          width = v29;
          height = v31;
          goto LABEL_7;
        }
      }
    }
  }
}

- (void)setDelegate:(id)delegate
{
  self->_delegate = delegate;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_156008;
  v6 = &unk_45AE00;
  selfCopy = self;
  if (+[NSThread isMainThread])
  {
    v5(v4);
  }

  else
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_156010;
    v3[3] = &unk_45B8B0;
    v3[4] = v4;
    dispatch_async(&_dispatch_main_q, v3);
  }
}

- (unint64_t)pageIndex
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController visibleBoundsRect];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (CGRectIsEmpty(v12))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  MidX = CGRectGetMidX(v13);
  pageOffset = self->_pageOffset;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = MidX + pageOffset * CGRectGetWidth(v14);
  if (v10 >= 0.0)
  {
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v11 = (v10 / CGRectGetWidth(v15));
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= [(THWPagedCanvasControllerDelegate *)[(THWPagedCanvasController *)self delegate] pageCountForPagedCanvasController:self]- 1)
  {
    return v11;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)setPageIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  scrollView = [(THWPagedCanvasController *)self scrollView];
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController visibleBoundsRect];
  if (self->_clippingLayerHost)
  {
    interactiveCanvasController = self->_interactiveCanvasController;
    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](interactiveCanvasController "layerHost")];
    [(TSDInteractiveCanvasController *)interactiveCanvasController convertUnscaledToBoundsSize:?];
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController visibleBoundsRect];
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    CGRectGetWidth(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    CGRectGetWidth(v30);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    CGRectGetWidth(v31);
    TSUClamp();
    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")];
    TSDRectWithOriginAndSize();
    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")];

    [(THWPagedCanvasController *)self p_updateInfosToDisplay];
  }

  else if (scrollView)
  {
    v20 = v7;
    v21 = v8;
    v22 = v9;
    v23 = v10;
    if (!CGRectIsEmpty(*&v7))
    {
      [(THScrollView *)scrollView contentSize];
      v32.origin.x = v20;
      v32.origin.y = v21;
      v32.size.width = v22;
      v32.size.height = v23;
      CGRectGetWidth(v32);
      v33.origin.x = v20;
      v33.origin.y = v21;
      v33.size.width = v22;
      v33.size.height = v23;
      CGRectGetWidth(v33);
      v34.origin.x = v20;
      v34.origin.y = v21;
      v34.size.width = v22;
      v34.size.height = v23;
      CGRectGetWidth(v34);
      TSUClamp();
      v25 = v24;
      [(THScrollView *)scrollView contentOffset];
      if (v25 != v27 || v26 != 0.0)
      {

        [(THScrollView *)scrollView setContentOffset:animatedCopy animated:v25, 0.0];
      }
    }
  }
}

- (void)setMinimizeInfoChange:(BOOL)change
{
  if (self->_minimizeInfoChange != change)
  {
    self->_minimizeInfoChange = change;
    if (!change)
    {
      [(THWPagedCanvasController *)self p_updateInfosToDisplayForced:1];
    }
  }
}

- (void)setPadInfos:(BOOL)infos
{
  if (self->_padInfos != infos)
  {
    self->_padInfos = infos;
    [(THWPagedCanvasController *)self p_updateInfosToDisplayForced:1];
  }
}

- (void)teardownController
{
  [(TSDInteractiveCanvasController *)self->_interactiveCanvasController teardown];
  clippingLayerHost = self->_clippingLayerHost;

  [(THWClippingLayerHost *)clippingLayerHost teardown];
}

- (void)teardownView
{
  [(THScrollView *)self->_scrollView setDelegate:0];
  layerHost = self->_layerHost;

  [(TSDCanvasLayerHosting *)layerHost teardown];
}

- (void)invalidateLayoutsAndFrames
{
  v2 = [-[TSDInteractiveCanvasController layoutController](self->_interactiveCanvasController "layoutController")];
  v3 = objc_alloc_init(NSMutableArray);
  [v2 addLayoutsToArray:v3];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        v8 = TSUDynamicCast();
        if (v8)
        {
          v9 = v8;
          [v8 invalidateFrame];
          [v9 invalidateChildren];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)p_updateInfosToDisplayForced:(BOOL)forced
{
  delegate = [(THWPagedCanvasController *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self interactiveCanvasController] visibleBoundsRect];
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
    v49 = CGRectUnion(v48, self->_targetVisibleRect);
    v11 = v49.origin.x;
    v46 = v49.origin.y;
    v12 = v49.size.width;
    v13 = v49.size.height;
    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")];
    v14 = CGRectGetWidth(v50);
    if (v14 > 0.0)
    {
      v15 = v14;
      v16 = [(THWPagedCanvasControllerDelegate *)v6 pageCountForPagedCanvasController:self];
      if (v16)
      {
        v17 = v16;
        v51.origin.x = x;
        v51.origin.y = y;
        v51.size.width = width;
        v51.size.height = height;
        v18 = (fmax(CGRectGetMinX(v51), 0.0) / v15 + self->_pageOffset);
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v52.size.height = height;
        v19 = (fmax(CGRectGetMaxX(v52) + -1.0, 0.0) / v15 + self->_pageOffset) - v18;
        v53.origin.x = v11;
        v53.origin.y = v46;
        v53.size.width = v12;
        v53.size.height = v13;
        v20 = (fmax(CGRectGetMinX(v53), 0.0) / v15 + self->_pageOffset);
        v54.origin.x = v11;
        v54.origin.y = v46;
        v54.size.width = v12;
        v54.size.height = v13;
        v21 = fmax(CGRectGetMaxX(v54) + -1.0, 0.0) / v15 + self->_pageOffset;
        v22 = v20 - 1;
        if (!v20)
        {
          v22 = 0;
        }

        if (v17 >= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v17;
        }

        v24 = v21 + 2;
        if (v24 >= v17)
        {
          v24 = v17;
        }

        v47 = v24;
        v25 = v24 - v23;
        v26 = [TSUPointerSet setWithArray:[(TSDInteractiveCanvasController *)self->_interactiveCanvasController infosToDisplay]];
        if (self->_padInfos)
        {
          v27 = v25;
        }

        else
        {
          v27 = v19 + 1;
        }

        if (self->_padInfos)
        {
          v28 = v23;
        }

        else
        {
          v28 = v18;
        }

        if (!self->_minimizeInfoChange || ((v29 = v19 + 1, v28 == v18) ? (v30 = v27 == v29) : (v30 = 0), v30))
        {
          v34 = v28 != 0x7FFFFFFFFFFFFFFFLL && forced;
          if (!v34 && (v28 == self->_loadedPageRange.location ? (v35 = v27 == self->_loadedPageRange.length) : (v35 = 0), v35))
          {
            v33 = 0;
            v32 = 0;
          }

          else
          {
            v32 = [(THWPagedCanvasControllerDelegate *)v6 pagedCanvasController:self infosToDisplayForPageRange:v28, v27];
            v33 = 1;
          }
        }

        else
        {
          v31 = v26;
          v32 = [-[THWPagedCanvasControllerDelegate pagedCanvasController:infosToDisplayForPageRange:](v6 pagedCanvasController:self infosToDisplayForPageRange:{v28, v27), "tsu_arrayWithObjectsInSet:", -[TSUPointerSet setByAddingObjectsFromArray:](v26, "setByAddingObjectsFromArray:", -[THWPagedCanvasControllerDelegate pagedCanvasController:infosToDisplayForPageRange:](v6, "pagedCanvasController:infosToDisplayForPageRange:", self, v18, v29))}];
          v33 = [[TSUPointerSet setWithArray:?], "isEqualToSet:", v31]^ 1;
          v27 = v29;
          v28 = v18;
        }

        preloadPageIndex = self->_preloadPageIndex;
        if (preloadPageIndex == 0x7FFFFFFFFFFFFFFFLL)
        {
          v37 = 0;
        }

        else
        {
          v37 = v33;
        }

        if ((self->_preloadedPageIndex != preloadPageIndex || v37) && ((self->_preloadedPageIndex = preloadPageIndex, preloadPageIndex >= v28) ? (v38 = preloadPageIndex - v28 >= v27) : (v38 = 1), v38))
        {
          if (!v32)
          {
            v32 = [(THWPagedCanvasControllerDelegate *)v6 pagedCanvasController:self infosToDisplayForPageRange:v28, v27];
            preloadPageIndex = self->_preloadedPageIndex;
          }

          if (preloadPageIndex == 0x7FFFFFFFFFFFFFFFLL)
          {
            v39 = 0;
          }

          else
          {
            v39 = [(THWPagedCanvasControllerDelegate *)v6 pagedCanvasController:self infosToDisplayForPageRange:preloadPageIndex, 1];
          }

          if ([v39 count])
          {
            preloadedPageIndex = self->_preloadedPageIndex;
            if (preloadedPageIndex >= v23)
            {
              v41 = v23;
            }

            else
            {
              v41 = self->_preloadedPageIndex;
            }

            if (preloadedPageIndex + 1 > v47)
            {
              v42 = preloadedPageIndex + 1;
            }

            else
            {
              v42 = v47;
            }

            if (v23 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v43 = preloadedPageIndex + 1;
            }

            else
            {
              v43 = v42;
            }

            v44 = [(THWPagedCanvasControllerDelegate *)v6 pagedCanvasController:self infosToDisplayForPageRange:v41, v43 - v41];
            v45 = [[TSUMutablePointerSet alloc] initWithArray:v32];
            [v45 addObjectsFromArray:v39];
            v32 = [v44 tsu_arrayWithObjectsInSet:v45];
          }
        }

        else if (!v33)
        {
          return;
        }

        if (self->_delegate && !self->_disableInfoUpdates)
        {
          if (objc_opt_respondsToSelector())
          {
            [(THWPagedCanvasControllerDelegate *)v6 pagedCanvasController:self willUpdateWithInfosToDisplay:v32];
          }

          [(TSDInteractiveCanvasController *)[(THWPagedCanvasController *)self interactiveCanvasController] setInfosToDisplay:v32];
          self->_loadedPageRange.location = v28;
          self->_loadedPageRange.length = v27;
        }
      }
    }
  }
}

- (void)p_updateRenderedPageIndexes
{
  delegate = [(THWPagedCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    self->_renderedPageIndexes = -[THWPagedCanvasControllerDelegate pagedCanvasController:renderedPageIndexSetFromReps:](delegate, "pagedCanvasController:renderedPageIndexSetFromReps:", self, [-[TSDInteractiveCanvasController canvas](self->_interactiveCanvasController "canvas")]);
  }
}

- (void)p_rebuildContentSize
{
  delegate = [(THWPagedCanvasController *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    [objc_msgSend(-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")];
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController convertBoundsToUnscaledSize:v5, v6];
    height = v7;
    width = v9 * [(THWPagedCanvasControllerDelegate *)v4 pageCountForPagedCanvasController:self];
  }

  else
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  v11 = [-[TSDInteractiveCanvasController layerHost](-[THWPagedCanvasController interactiveCanvasController](self "interactiveCanvasController")];

  [v11 setUnscaledSize:{width, height}];
}

- (void)p_rebuildWithPageIndex:(unint64_t)index
{
  [(THWPagedCanvasController *)self p_rebuildContentSize];
  [objc_msgSend(-[TSDInteractiveCanvasController layerHost](self->_interactiveCanvasController "layerHost")];
  CATransform3DMakeTranslation(&v8, -(v5 * self->_pageOffset), 0.0, 0.0);
  v6 = [-[TSDInteractiveCanvasController layerHost](-[THWPagedCanvasController interactiveCanvasController](self "interactiveCanvasController")];
  v7 = v8;
  [v6 setSublayerTransform:&v7];
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(THWPagedCanvasController *)self setPageIndex:index animated:0];
  }

  [(THWPagedCanvasController *)self p_updateInfosToDisplay];
}

- (void)p_updateMostVisiblePageIndex
{
  pageIndex = [(THWPagedCanvasController *)self pageIndex];
  mostVisiblePageIndex = self->_mostVisiblePageIndex;
  if (pageIndex != mostVisiblePageIndex)
  {
    v5 = pageIndex;
    self->_mostVisiblePageIndex = pageIndex;
    delegate = [(THWPagedCanvasController *)self delegate];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL && mostVisiblePageIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = delegate;
      if (objc_opt_respondsToSelector())
      {
        v8 = self->_mostVisiblePageIndex;

        [(THWPagedCanvasControllerDelegate *)v7 pagedCanvasController:self mostVisiblePageChangedToPageIndex:v8];
      }
    }
  }
}

- (void)interactiveCanvasController:(id)controller willAnimateScrollToVisibleUnscaledRect:(CGRect)rect
{
  self->_targetVisibleRect = rect;
  if (self->_disableThreadedLayoutAndRenderDuringAnimation)
  {
    [controller pushThreadedLayoutAndRenderDisabled];
  }

  [(THWPagedCanvasController *)self p_updateInfosToDisplay];
}

- (void)interactiveCanvasControllerDidEndScrollingAnimation:(id)animation stillAnimating:(BOOL)animating
{
  if (!animating)
  {
    size = CGRectNull.size;
    self->_targetVisibleRect.origin = CGRectNull.origin;
    self->_targetVisibleRect.size = size;
  }

  if (self->_disableThreadedLayoutAndRenderDuringAnimation)
  {
    [animation popThreadedLayoutAndRenderDisabled];
  }
}

- (void)interactiveCanvasControllerDidScroll:(id)scroll
{
  if (([scroll currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0)
  {
    [(THWPagedCanvasController *)self p_updateInfosToDisplay];
  }

  [(THWPagedCanvasController *)self p_updateMostVisiblePageIndex];
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasControllerDidScroll:self];
  }
}

- (id)p_enclosingInteractiveCanvasController
{
  objc_opt_class();
  objc_opt_class();
  [-[THScrollView superview](self->_scrollView "superview")];
  [TSUDynamicCast() controller];

  return TSUDynamicCast();
}

- (CGPoint)interactiveCanvasController:(id)controller restrictedContentOffset:(CGPoint)offset forViewScale:(double)scale
{
  y = offset.y;
  x = offset.x;
  if ([(TSDInteractiveCanvasController *)self->_interactiveCanvasController currentlyScrolling:controller])
  {
    if (objc_opt_respondsToSelector())
    {
      if ([(THWPagedCanvasControllerDelegate *)self->_delegate pagedCanvasControllerRestrictVisibleToRenderedContent:self])
      {
        if (self->_renderedPageIndexes)
        {
          if ([(THWPagedCanvasController *)self pageIndex])
          {
            pageIndex = [(THWPagedCanvasController *)self pageIndex];
            if (pageIndex < [(THWPagedCanvasControllerDelegate *)self->_delegate pageCountForPagedCanvasController:self]- 1)
            {
              [(TSDInteractiveCanvasController *)self->_interactiveCanvasController visibleUnscaledRect];
              width = v24.size.width;
              height = v24.size.height;
              pageOffset = self->_pageOffset;
              v24.origin.x = x;
              v24.origin.y = y;
              v12 = (CGRectGetMinX(v24) / v24.size.width + pageOffset);
              v13 = self->_pageOffset;
              v25.origin.x = x;
              v25.origin.y = y;
              v25.size.width = width;
              v25.size.height = height;
              v14 = ((CGRectGetMaxX(v25) + -1.0) / width + v13);
              if (v12 <= v14)
              {
                v15 = v14 + 1;
                v16 = 0x7FFFFFFFFFFFFFFFLL;
                v17 = 0x7FFFFFFFFFFFFFFFLL;
                do
                {
                  v18 = [(NSIndexSet *)self->_renderedPageIndexes containsIndex:v12];
                  if ((v18 & (v17 == 0x7FFFFFFFFFFFFFFFLL)) != 0)
                  {
                    v17 = v12;
                  }

                  if (v18)
                  {
                    v16 = v12;
                  }

                  ++v12;
                }

                while (v15 != v12);
                if (v17 != 0x7FFFFFFFFFFFFFFFLL && v16 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_21;
                }
              }

              if ([(NSIndexSet *)self->_renderedPageIndexes count])
              {
                [(NSIndexSet *)self->_renderedPageIndexes firstIndex];
                [(NSIndexSet *)self->_renderedPageIndexes lastIndex];
LABEL_21:
                TSUClamp();
                x = v20;
              }
            }
          }
        }
      }
    }
  }

  v21 = x;
  v22 = y;
  result.y = v22;
  result.x = v21;
  return result;
}

- (void)interactiveCanvasControllerWillScroll:(id)scroll
{
  if (!self->_currentlyScrolling)
  {
    [-[THWPagedCanvasController p_enclosingInteractiveCanvasController](self p_enclosingInteractiveCanvasController];
    self->_currentlyScrolling = 1;
    pageIndex = [(THWPagedCanvasController *)self pageIndex];
    if (pageIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = pageIndex;
      delegate = [(THWPagedCanvasController *)self delegate];
      if (objc_opt_respondsToSelector())
      {

        [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasController:self willScrollFromPageIndex:v5];
      }
    }
  }
}

- (void)interactiveCanvasControllerDidStopScrolling:(id)scrolling
{
  if (self->_currentlyScrolling)
  {
    self->_currentlyScrolling = 0;
    [-[THWPagedCanvasController p_enclosingInteractiveCanvasController](self p_enclosingInteractiveCanvasController];
  }

  delegate = [(THWPagedCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasControllerDidStopScrolling:self];
  }

  if (delegate)
  {
    pageIndex = [(THWPagedCanvasController *)self pageIndex];
    if (pageIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasController:self didScrollToPageIndex:pageIndex];
    }
  }

  [(THWPagedCanvasController *)self p_updateMostVisiblePageIndex];
}

- (id)interactiveCanvasController:(id)controller layoutGeometryProviderForLayout:(id)layout
{
  delegate = [(THWPagedCanvasController *)self delegate];

  return [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasController:self geometryProviderForLayout:layout];
}

- (id)interactiveCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep
{
  delegate = [(THWPagedCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {

    return [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasController:self delegateConformingToProtocol:protocol forRep:rep];
  }

  else if ([(THWPagedCanvasControllerDelegate *)delegate conformsToProtocol:protocol])
  {
    return delegate;
  }

  else
  {
    return 0;
  }
}

- (void)interactiveCanvasControllerDidLayout:(id)layout
{
  delegate = [(THWPagedCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasControllerDidLayout:self];
  }

  if (([layout currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0)
  {

    [(THWPagedCanvasController *)self p_updateRenderedPageIndexes];
  }
}

- (void)interactiveCanvasControllerDidLayoutAndRenderOnBackgroundThread:(id)thread
{
  delegate = [(THWPagedCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasControllerDidLayoutAndRenderOnBackgroundThread:self];
  }

  if (([thread currentlyWaitingOnThreadedLayoutAndRender] & 1) == 0)
  {
    [(THWPagedCanvasController *)self p_updateInfosToDisplay];

    [(THWPagedCanvasController *)self p_updateRenderedPageIndexes];
  }
}

- (CGRect)interactiveCanvasController:(id)controller expandBoundsForScrollViewHitTesting:(CGRect)testing
{
  height = testing.size.height;
  width = testing.size.width;
  y = testing.origin.y;
  x = testing.origin.x;
  [(THWPagedCanvasController *)self p_verticalOverflow];
  v11 = v10;
  [controller viewScale];
  *&v12 = v11 * v12;
  v13 = ceilf(*&v12);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v27 = CGRectInset(v26, 0.0, v13);
  v14 = v27.origin.x;
  v15 = v27.origin.y;
  v16 = v27.size.width;
  v17 = v27.size.height;
  [(THWPagedCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [(THWPagedCanvasControllerDelegate *)[(THWPagedCanvasController *)self delegate] pagedCanvasController:self expandBoundsForScrollViewHitTesting:v14, v15, v16, v17];
    v14 = v18;
    v15 = v19;
    v16 = v20;
    v17 = v21;
  }

  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)interactiveCanvasController:(id)controller expandVisibleBoundsForTiling:(CGRect)tiling
{
  x = CGRectInfinite.origin.x;
  y = CGRectInfinite.origin.y;
  width = CGRectInfinite.size.width;
  height = CGRectInfinite.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)interactiveCanvasController:(id)controller primaryTargetForGesture:(id)gesture
{
  delegate = [(THWPagedCanvasController *)self delegate];

  return [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasController:self primaryTargetForGesture:gesture];
}

- (BOOL)interactiveCanvasController:(id)controller canvasViewShouldBecomeFirstResponder:(id)responder
{
  [(THWPagedCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  delegate = [(THWPagedCanvasController *)self delegate];

  return [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasController:self canvasViewShouldBecomeFirstResponder:responder];
}

- (BOOL)interactiveCanvasController:(id)controller allowsEditMenuForRep:(id)rep
{
  delegate = [(THWPagedCanvasController *)self delegate];

  return [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasController:self allowsEditMenuForRep:rep];
}

- (BOOL)interactiveCanvasController:(id)controller allowsHyperlinkWithGesture:(id)gesture forRep:(id)rep
{
  delegate = [(THWPagedCanvasController *)self delegate];

  return [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasController:self allowsHyperlinkWithGesture:gesture forRep:rep];
}

- (BOOL)allowSelectionPopoverForInteractiveCanvasController:(id)controller
{
  delegate = [(THWPagedCanvasController *)self delegate];

  return [(THWPagedCanvasControllerDelegate *)delegate allowSelectionPopoverForPagedCanvasController:self];
}

- (BOOL)interactiveCanvasController:(id)controller shouldBeginEditingTHWPRep:(id)rep withGesture:(id)gesture
{
  delegate = [(THWPagedCanvasController *)self delegate];

  return [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasController:self shouldBeginEditingTHWPRep:rep withGesture:gesture];
}

- (BOOL)interactiveCanvasControllerIsRelatedCanvasScrolling:(id)scrolling
{
  delegate = [(THWPagedCanvasController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [(THWPagedCanvasControllerDelegate *)delegate pagedCanvasControllerIsRelatedCanvasScrolling:self];
}

- (void)setupImmediatePressGestureWithSimultaneousGestures:(id)gestures
{
  if ([(TSDInteractiveCanvasController *)self->_interactiveCanvasController canvasView])
  {
    v5 = TSWPImmediatePress;
    [(TSDInteractiveCanvasController *)self->_interactiveCanvasController enableGestureKinds:[NSArray arrayWithObject:TSWPImmediatePress]];
    v6 = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController gestureRecognizerWithKind:v5];
    [-[TSDInteractiveCanvasController gestureDispatcher](self->_interactiveCanvasController "gestureDispatcher")];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [gestures countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(gestures);
          }

          [-[TSDInteractiveCanvasController gestureDispatcher](self->_interactiveCanvasController "gestureDispatcher")];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [gestures countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [-[TSDInteractiveCanvasController canvasView](self->_interactiveCanvasController "canvasView")];
  [(THScrollView *)self->_scrollView setUserInteractionEnabled:enabledCopy];
  [(THScrollView *)self->_scrollView setScrollEnabled:enabledCopy];
  wrapperView = self->_wrapperView;

  [(UIView *)wrapperView setUserInteractionEnabled:enabledCopy];
}

- (BOOL)userInteractionEnabled
{
  canvasView = [(TSDInteractiveCanvasController *)self->_interactiveCanvasController canvasView];

  return [canvasView isUserInteractionEnabled];
}

- (void)setPreloadPageIndex:(unint64_t)index
{
  if (self->_preloadPageIndex != index)
  {
    self->_preloadPageIndex = index;
    [(THWPagedCanvasController *)self p_updateInfosToDisplay];
  }
}

- (void)setPageOffset:(unint64_t)offset
{
  if (offset != 0x7FFFFFFFFFFFFFFFLL && self->_pageOffset != offset && [(THWPagedCanvasControllerDelegate *)self->_delegate pageCountForPagedCanvasController:self]> offset)
  {
    pageIndex = [(THWPagedCanvasController *)self pageIndex];
    self->_pageOffset = offset;

    [(THWPagedCanvasController *)self p_rebuildWithPageIndex:pageIndex];
  }
}

- (void)p_updateRasterizeOnLayer
{
  rasterize = self->_rasterize;
  clippingLayerHost = self->_clippingLayerHost;
  if (clippingLayerHost)
  {
    clippingLayer = [(THWClippingLayerHost *)clippingLayerHost clippingLayer];
  }

  else
  {
    clippingLayer = [(UIView *)self->_wrapperView layer];
  }

  rasterizeQueue = self->_rasterizeQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15790C;
  block[3] = &unk_45CEE0;
  block[4] = clippingLayer;
  block[5] = self;
  v8 = rasterize;
  dispatch_async(rasterizeQueue, block);
}

- (void)setRasterize:(BOOL)rasterize
{
  if (self->_rasterize != rasterize)
  {
    self->_rasterize = rasterize;
    [(THWPagedCanvasController *)self p_updateRasterizeOnLayer];
  }
}

- (void)popDisableInfoUpdates
{
  disableInfoUpdates = self->_disableInfoUpdates;
  if (disableInfoUpdates)
  {
    v3 = disableInfoUpdates - 1;
    self->_disableInfoUpdates = v3;
    if (!v3)
    {
      [(THWPagedCanvasController *)self p_updateInfosToDisplay];
    }
  }
}

- (void)forceStopScrollingAtCurrentPageIndex
{
  if (self->_currentlyScrolling)
  {
    [(THWPagedCanvasController *)self setPageIndex:[(THWPagedCanvasController *)self pageIndex] animated:0];
    interactiveCanvasController = [(THWPagedCanvasController *)self interactiveCanvasController];

    [(TSDInteractiveCanvasController *)interactiveCanvasController forceStopScrolling];
  }
}

- (_NSRange)loadedPageRange
{
  length = self->_loadedPageRange.length;
  location = self->_loadedPageRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)targetVisibleRect
{
  x = self->_targetVisibleRect.origin.x;
  y = self->_targetVisibleRect.origin.y;
  width = self->_targetVisibleRect.size.width;
  height = self->_targetVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end