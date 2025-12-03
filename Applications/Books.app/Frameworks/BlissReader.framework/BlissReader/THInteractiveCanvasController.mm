@interface THInteractiveCanvasController
- ($D7BD07022F54D45CA7A70F04692339C3)wordMetricsAtPoint:(SEL)point;
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)gestureHitLink:(id)link;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)handleSingleTapAtPoint:(CGPoint)point;
- (BOOL)hasCurrentSelection;
- (BOOL)isCompactHeight;
- (BOOL)isCompactWidth;
- (BOOL)p_allowPaging;
- (BOOL)p_handleLongPress:(id)press;
- (BOOL)p_handleSingleTap:(id)tap;
- (BOOL)p_handleTapAtPoint:(CGPoint)point;
- (BOOL)p_pointIsInLeftMargin:(CGPoint)margin;
- (BOOL)p_pointIsInRightMargin:(CGPoint)margin;
- (BOOL)p_zoomColumnAtPoint:(CGPoint)point forceWpRep:(BOOL)rep;
- (BOOL)shouldShowTextOverflowGlyphs;
- (BOOL)supportsReadingHighlights;
- (BOOL)supportsWritingHighlights;
- (BOOL)suppressDoubleTapForSelection;
- (BOOL)zoomColumnAtPoint:(CGPoint)point;
- (BOOL)zoomToColumnWithFrame:(CGRect)frame;
- (CGPoint)maskLayerOrigin;
- (CGRect)visibleUnscaledRectForContent;
- (THAnnotationStorageController)bookAnnotationController;
- (THTextInputResponder)th_textInputResponder;
- (double)visibleHeight;
- (id)activityItemProviderForCurrentSelection;
- (id)annotationForCurrentSelection;
- (id)annotationForUUID:(id)d;
- (id)annotationFromCurrentSelection;
- (id)bookNavigator;
- (id)canvasEditor;
- (id)documentNavigator;
- (id)hitRep:(CGPoint)rep allowsAllReps:(BOOL)reps;
- (id)linkForHyperlinkField:(id)field;
- (id)menuForHighlightAtLocation:(CGPoint)location;
- (id)p_gestureHitLink:(id)link;
- (id)textInputResponder;
- (void)addHighlight:(id)highlight;
- (void)addNote:(id)note;
- (void)beginStaticLayoutAndRender;
- (void)canvasDidLayout:(id)layout;
- (void)changeAnnotationStyle:(id)style;
- (void)dealloc;
- (void)didBeginFreeTransform;
- (void)didEndFreeTransform;
- (void)didLayoutAndRenderOnThread;
- (void)didSetDocumentToMode:(int64_t)mode fromMode:(int64_t)fromMode animated:(BOOL)animated;
- (void)endStaticLayoutAndRender:(BOOL)render;
- (void)handleHyperlink:(id)hyperlink hitRep:(id)rep;
- (void)handleHyperlinkGesture:(id)gesture;
- (void)handleHyperlinkWithURL:(id)l;
- (void)i_handleGlossaryHyperlink:(id)hyperlink rep:(id)rep anchor:(id)anchor;
- (void)makeRepsRecursivelyPerformSelectorIfImplemented:(SEL)implemented;
- (void)navigateToNextChapter;
- (void)navigateToNextPage;
- (void)navigateToPreviousChapter;
- (void)navigateToPreviousPage;
- (void)p_adjustMaskLayerOnScrollView:(id)view;
- (void)p_editorControllerDidChangeTextInputEditor:(id)editor;
- (void)p_handleOverscroll:(id)overscroll state:(int)state;
- (void)p_hoistMaskLayer;
- (void)p_moveMaskFromLayer:(id)layer toLayer:(id)toLayer;
- (void)p_releaseOutlets;
- (void)p_trackProgressForRep:(id)rep;
- (void)p_unhoistMaskLayer;
- (void)p_updateMaskLayer;
- (void)pageLeft;
- (void)pageRight;
- (void)presentMenuAtCanvasPoint:(CGPoint)point forAnnotationUUID:(id)d;
- (void)pressableRepWasPressed:(id)pressed atPoint:(CGPoint)point;
- (void)progressDidChangeForRep:(id)rep percent:(id)percent;
- (void)removeNote:(id)note;
- (void)removeNoteAndHighlight:(id)highlight;
- (void)resetAttemptForRep:(id)rep;
- (void)scoreDidChangeForRep:(id)rep score:(id)score total:(id)total;
- (void)scrollView:(id)view willAnimateToContentOffset:(CGPoint)offset;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidLayoutSubviews:(id)subviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewDidScrollToTop:(id)top;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)searchSelection:(id)selection;
- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)setITunesMobileContext:(id)context;
- (void)setSelection:(id)selection onModel:(id)model withFlags:(unint64_t)flags;
- (void)showDictionary:(id)dictionary;
- (void)showHyperlinkInfoForField:(id)field inRep:(id)rep openInEditMode:(BOOL)mode;
- (void)updateBookmarkStatusAnimated:(BOOL)animated;
- (void)willBeginHandlingGesture:(id)gesture;
- (void)willSetDocumentToMode:(int64_t)mode fromMode:(int64_t)fromMode animated:(BOOL)animated;
@end

@implementation THInteractiveCanvasController

- (void)dealloc
{
  [(THInteractiveCanvasController *)self p_releaseOutlets];
  v3.receiver = self;
  v3.super_class = THInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v3 dealloc];
}

- (void)p_releaseOutlets
{
  [(THInteractiveCanvasController *)self setITunesMobileContext:0];

  [(THInteractiveCanvasController *)self setMaskLayer:0];
}

- (THTextInputResponder)th_textInputResponder
{
  objc_opt_class();
  textInputResponder = [(THInteractiveCanvasController *)self textInputResponder];
  v4 = TSUDynamicCast();

  return v4;
}

- (id)textInputResponder
{
  v3 = OBJC_IVAR___TSDInteractiveCanvasController_mTextInputResponder;
  if (!*&self->TSAInteractiveCanvasController_opaque[OBJC_IVAR___TSDInteractiveCanvasController_mTextInputResponder])
  {
    layerHost = [(THInteractiveCanvasController *)self layerHost];
    canvasView = [layerHost canvasView];

    if (canvasView)
    {
      v6 = [THTextInputResponder alloc];
      layerHost2 = [(THInteractiveCanvasController *)self layerHost];
      canvasView2 = [layerHost2 canvasView];
      v9 = [(THTextInputResponder *)v6 initWithNextResponder:canvasView2];
      v10 = *&self->TSAInteractiveCanvasController_opaque[v3];
      *&self->TSAInteractiveCanvasController_opaque[v3] = v9;
    }
  }

  v11 = *&self->TSAInteractiveCanvasController_opaque[v3];

  return v11;
}

- (id)hitRep:(CGPoint)rep allowsAllReps:(BOOL)reps
{
  v10.receiver = self;
  v10.super_class = THInteractiveCanvasController;
  v6 = [(THInteractiveCanvasController *)&v10 hitRep:rep.x, rep.y];
  [(THInteractiveCanvasController *)self p_trackProgressForRep:v6];
  if (reps || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (BOOL)supportsReadingHighlights
{
  bookAnnotationController = [(THInteractiveCanvasController *)self bookAnnotationController];
  canReadAnnotations = [bookAnnotationController canReadAnnotations];

  return canReadAnnotations;
}

- (BOOL)supportsWritingHighlights
{
  bookAnnotationController = [(THInteractiveCanvasController *)self bookAnnotationController];
  canModifyAnnotations = [bookAnnotationController canModifyAnnotations];

  return canModifyAnnotations;
}

- (BOOL)isCompactHeight
{
  objc_opt_class();
  layerHost = [(THInteractiveCanvasController *)self layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  v5 = TSUDynamicCast();

  traitsCache = [v5 traitsCache];
  LOBYTE(asiOSCVC) = [traitsCache isCompactHeight];

  return asiOSCVC;
}

- (BOOL)isCompactWidth
{
  objc_opt_class();
  layerHost = [(THInteractiveCanvasController *)self layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  v5 = TSUDynamicCast();

  traitsCache = [v5 traitsCache];
  LOBYTE(asiOSCVC) = [traitsCache isCompactWidth];

  return asiOSCVC;
}

- (void)p_adjustMaskLayerOnScrollView:(id)view
{
  if (!self->mHoistedMaskLayer)
  {
    layerHost = [(THInteractiveCanvasController *)self layerHost];
    canvasLayer = [layerHost canvasLayer];
    mask = [canvasLayer mask];
    [mask frame];
    v9 = v8;
    v11 = v10;

    layerHost2 = [(THInteractiveCanvasController *)self layerHost];
    canvasLayer2 = [layerHost2 canvasLayer];
    layerHost3 = [(THInteractiveCanvasController *)self layerHost];
    clippingLayer = [layerHost3 clippingLayer];
    [clippingLayer bounds];
    v17 = v16;
    v19 = v18;
    layerHost4 = [(THInteractiveCanvasController *)self layerHost];
    clippingLayer2 = [layerHost4 clippingLayer];
    [canvasLayer2 convertPoint:clippingLayer2 toLayer:{v17, v19}];

    [(THInteractiveCanvasController *)self maskLayerOrigin];
    TSDAddPoints();
    v23 = v22;
    v25 = v24;
    layerHost5 = [(THInteractiveCanvasController *)self layerHost];
    canvasLayer3 = [layerHost5 canvasLayer];
    layerHost6 = [(THInteractiveCanvasController *)self layerHost];
    clippingLayer3 = [layerHost6 clippingLayer];
    [canvasLayer3 convertRect:clippingLayer3 fromLayer:{v23, v25, v9, v11}];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    layerHost7 = [(THInteractiveCanvasController *)self layerHost];
    canvasLayer4 = [layerHost7 canvasLayer];
    mask2 = [canvasLayer4 mask];
    [mask2 setFrame:{v31, v33, v35, v37}];
  }
}

- (void)p_updateMaskLayer
{
  if (!self->mHoistedMaskLayer)
  {
    delegate = [(THInteractiveCanvasController *)self delegate];
    v14 = TSUProtocolCast();

    if (objc_opt_respondsToSelector())
    {
      layerHost = [(THInteractiveCanvasController *)self layerHost];
      clippingLayer = [layerHost clippingLayer];
      [clippingLayer bounds];
      TSDRectWithSize();
      v7 = [v14 interactiveCanvasController:self maskLayerForBounds:?];

      v8 = +[THNoAnimationLayerDelegate sharedInstance];
      [v7 setDelegate:v8];
    }

    else
    {
      v7 = 0;
    }

    maskLayer = [(THInteractiveCanvasController *)self maskLayer];

    if (v7 != maskLayer)
    {
      [(THInteractiveCanvasController *)self setMaskLayer:v7];
      if (v7)
      {
        [v7 frame];
        [(THInteractiveCanvasController *)self setMaskLayerOrigin:?];
        layerHost2 = [(THInteractiveCanvasController *)self layerHost];
        canvasLayer = [layerHost2 canvasLayer];
        [canvasLayer setMask:v7];

        canvasView = [(THInteractiveCanvasController *)self canvasView];
        enclosingScrollView = [canvasView enclosingScrollView];
        [(THInteractiveCanvasController *)self p_adjustMaskLayerOnScrollView:enclosingScrollView];
      }

      else
      {
        [(THInteractiveCanvasController *)self setMaskLayerOrigin:CGPointZero.x, CGPointZero.y];
        canvasView = [(THInteractiveCanvasController *)self layerHost];
        enclosingScrollView = [canvasView canvasLayer];
        [enclosingScrollView setMask:0];
      }
    }
  }
}

- (void)p_hoistMaskLayer
{
  if (!self->mHoistedMaskLayer || (+[TSUAssertionHandler currentHandler](TSUAssertionHandler, "currentHandler"), v3 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "-[THInteractiveCanvasController p_hoistMaskLayer]"), v4 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"), v5 = objc_claimAutoreleasedReturnValue(), [v3 handleFailureInFunction:v4 file:v5 lineNumber:291 description:@"mask layer has already been hoisted"], v5, v4, v3, !self->mHoistedMaskLayer))
  {
    self->mHoistedMaskLayer = 1;
    layerHost = [(THInteractiveCanvasController *)self layerHost];
    canvasLayer = [layerHost canvasLayer];
    layerHost2 = [(THInteractiveCanvasController *)self layerHost];
    clippingLayer = [layerHost2 clippingLayer];
    superlayer = [clippingLayer superlayer];
    [(THInteractiveCanvasController *)self p_moveMaskFromLayer:canvasLayer toLayer:superlayer];
  }
}

- (void)p_unhoistMaskLayer
{
  if (self->mHoistedMaskLayer || (+[TSUAssertionHandler currentHandler](TSUAssertionHandler, "currentHandler"), v3 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "-[THInteractiveCanvasController p_unhoistMaskLayer]"), v4 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"), v5 = objc_claimAutoreleasedReturnValue(), [v3 handleFailureInFunction:v4 file:v5 lineNumber:303 description:@"mask layer hasn't been hoisted"], v5, v4, v3, self->mHoistedMaskLayer))
  {
    layerHost = [(THInteractiveCanvasController *)self layerHost];
    clippingLayer = [layerHost clippingLayer];
    superlayer = [clippingLayer superlayer];
    layerHost2 = [(THInteractiveCanvasController *)self layerHost];
    canvasLayer = [layerHost2 canvasLayer];
    [(THInteractiveCanvasController *)self p_moveMaskFromLayer:superlayer toLayer:canvasLayer];

    self->mHoistedMaskLayer = 0;
  }
}

- (void)p_moveMaskFromLayer:(id)layer toLayer:(id)toLayer
{
  layerCopy = layer;
  toLayerCopy = toLayer;
  if (layerCopy && toLayerCopy)
  {
    mask = [layerCopy mask];

    if (!mask)
    {
      v7 = +[TSUAssertionHandler currentHandler];
      v8 = [NSString stringWithUTF8String:"[THInteractiveCanvasController p_moveMaskFromLayer:toLayer:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
      [v7 handleFailureInFunction:v8 file:v9 lineNumber:316 description:@"source layer should have a mask"];
    }

    mask2 = [toLayerCopy mask];

    if (mask2)
    {
      v11 = +[TSUAssertionHandler currentHandler];
      v12 = [NSString stringWithUTF8String:"[THInteractiveCanvasController p_moveMaskFromLayer:toLayer:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
      [v11 handleFailureInFunction:v12 file:v13 lineNumber:317 description:@"destination layer should not have a mask"];
    }

    mask3 = [layerCopy mask];
    [mask3 frame];
    [toLayerCopy convertRect:layerCopy fromLayer:?];
    [mask3 setFrame:?];
    [toLayerCopy setMask:mask3];
    [layerCopy setMask:0];
  }

  else
  {
    mask3 = +[TSUAssertionHandler currentHandler];
    v15 = [NSString stringWithUTF8String:"[THInteractiveCanvasController p_moveMaskFromLayer:toLayer:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
    [mask3 handleFailureInFunction:v15 file:v16 lineNumber:313 description:{@"Invalid parameter not satisfying: %s", "sourceLayer != nil && destinationLayer != nil"}];
  }
}

- (void)canvasDidLayout:(id)layout
{
  v4.receiver = self;
  v4.super_class = THInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v4 canvasDidLayout:layout];
  [(THInteractiveCanvasController *)self p_updateMaskLayer];
}

- (BOOL)suppressDoubleTapForSelection
{
  if ([(THInteractiveCanvasController *)self isCompactWidth])
  {
    return 1;
  }

  return [(THInteractiveCanvasController *)self isCompactHeight];
}

- (BOOL)zoomColumnAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  delegate = [(THInteractiveCanvasController *)self delegate];
  v7 = TSUProtocolCast();

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 interactiveCanvasControllerShouldAllowZoomToColumn:self])
  {
    v8 = [(THInteractiveCanvasController *)self p_zoomColumnAtPoint:0 forceWpRep:x, y];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)zoomToColumnWithFrame:(CGRect)frame
{
  TSDCenterOfRect();

  return [(THInteractiveCanvasController *)self p_zoomColumnAtPoint:1 forceWpRep:?];
}

- (id)linkForHyperlinkField:(id)field
{
  v4 = [field url];
  documentRoot = [(THInteractiveCanvasController *)self documentRoot];
  scheme = [v4 scheme];

  if (scheme)
  {
    v7 = [THModelLink alloc];
    absoluteString = [v4 absoluteString];
    context = [documentRoot context];
    v10 = [(THModelLink *)v7 initWithTarget:absoluteString context:context];
  }

  else
  {
    absoluteString = [v4 absoluteString];
    if ([absoluteString hasPrefix:@"OPS/"])
    {
      v11 = [absoluteString substringFromIndex:4];

      absoluteString = v11;
    }

    context = [@"/OPS/" stringByAppendingString:absoluteString];
    v12 = [NSString stringWithFormat:@"apub:///0/0/0%@", context];
    v13 = [THModelLink alloc];
    context2 = [documentRoot context];
    v10 = [(THModelLink *)v13 initWithTarget:v12 context:context2];
  }

  return v10;
}

- (void)handleHyperlinkGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == &dword_0 + 3)
  {
    if ([gestureCopy wasTapHold])
    {
      +[TSWPEditMenuController hideEditMenu];
    }

    objc_opt_class();
    hitRep = [gestureCopy hitRep];
    v5 = TSUDynamicCast();

    hitField = [gestureCopy hitField];
    [(THInteractiveCanvasController *)self handleHyperlink:hitField hitRep:v5];
  }
}

- (id)bookNavigator
{
  delegate = [(THInteractiveCanvasController *)self delegate];
  v4 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 bookNavigatorForInteractiveCanvasController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)documentNavigator
{
  delegate = [(THInteractiveCanvasController *)self delegate];
  v4 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 documentNavigatorForInteractiveCanvasController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)handleHyperlink:(id)hyperlink hitRep:(id)rep
{
  hyperlinkCopy = hyperlink;
  repCopy = rep;
  v7 = [hyperlinkCopy url];
  if ([v7 th_shouldSharedAppDelegateHandleURL])
  {
    bookNavigator = +[TSKApplicationDelegate sharedDelegate];
    documentRoot = [(THInteractiveCanvasController *)self documentRoot];
    [bookNavigator openURL:v7 sourceDocumentRoot:documentRoot];
  }

  else
  {
    bookNavigator = [(THInteractiveCanvasController *)self bookNavigator];
    documentNavigator = [(THInteractiveCanvasController *)self documentNavigator];
    documentRoot = documentNavigator;
    if (bookNavigator && documentNavigator)
    {
      parentStorage = [hyperlinkCopy parentStorage];
      v12 = [documentRoot linkForURL:v7 inStorage:parentStorage];

      v13 = [bookNavigator anchorFromLink:v12];
      objc_opt_class();
      v14 = TSUDynamicCast();
      glossaryEntry = [v14 glossaryEntry];

      if (glossaryEntry)
      {
        [(THInteractiveCanvasController *)self i_handleGlossaryHyperlink:hyperlinkCopy rep:repCopy anchor:v14];
      }

      else
      {
        v16 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];
        [v16 endUISession];

        [bookNavigator recordOutgoingMajorNavigationJump];
        [bookNavigator followLink:v12];
      }
    }
  }
}

- (void)handleHyperlinkWithURL:(id)l
{
  lCopy = l;
  if ([lCopy th_shouldSharedAppDelegateHandleURL])
  {
    bookNavigator = +[TSKApplicationDelegate sharedDelegate];
    [bookNavigator openURL:lCopy];
  }

  else
  {
    bookNavigator = [(THInteractiveCanvasController *)self bookNavigator];
    documentNavigator = [(THInteractiveCanvasController *)self documentNavigator];
    v6 = documentNavigator;
    if (bookNavigator && documentNavigator)
    {
      documentNavigator2 = [(THInteractiveCanvasController *)self documentNavigator];
      currentContentNode = [documentNavigator2 currentContentNode];

      v9 = [v6 linkForURL:lCopy inContentNode:currentContentNode];
      v10 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];
      [v10 endUISession];

      [bookNavigator recordOutgoingMajorNavigationJump];
      [bookNavigator followLink:v9];
    }
  }
}

- (BOOL)gestureHitLink:(id)link
{
  v3 = [(THInteractiveCanvasController *)self p_gestureHitLink:link];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)shouldShowTextOverflowGlyphs
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:kTHShowTextOverflowIndicator[0]];

  return v3;
}

- (THAnnotationStorageController)bookAnnotationController
{
  documentRoot = [(THInteractiveCanvasController *)self documentRoot];
  annotationController = [documentRoot annotationController];

  return annotationController;
}

- (void)setSelection:(id)selection onModel:(id)model withFlags:(unint64_t)flags
{
  v5.receiver = self;
  v5.super_class = THInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v5 setSelection:selection onModel:model withFlags:flags & 0xFFFFFFFFFFFFFFAFLL];
}

- (void)updateBookmarkStatusAnimated:(BOOL)animated
{
  v3 = &selRef_updateBookmarkStatusAnimated;
  if (!animated)
  {
    v3 = &selRef_updateBookmarkStatus;
  }

  [(THInteractiveCanvasController *)self makeRepsRecursivelyPerformSelectorIfImplemented:*v3];
}

- (void)makeRepsRecursivelyPerformSelectorIfImplemented:(SEL)implemented
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  canvas = [(THInteractiveCanvasController *)self canvas];
  topLevelReps = [canvas topLevelReps];

  v6 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(topLevelReps);
        }

        [*(*(&v10 + 1) + 8 * v9) recursivelyPerformSelectorIfImplemented:implemented];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [topLevelReps countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (CGRect)visibleUnscaledRectForContent
{
  [(THInteractiveCanvasController *)self visibleBoundsRect];
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  if (!CGRectIsEmpty(v25))
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v27 = CGRectInset(v26, -width, -height);
    v7 = v27.origin.x;
    v8 = v27.origin.y;
    v9 = v27.size.width;
    v10 = v27.size.height;
    layerHost = [(THInteractiveCanvasController *)self layerHost];
    canvasLayer = [layerHost canvasLayer];
    [canvasLayer bounds];
    v32.origin.x = v13;
    v32.origin.y = v14;
    v32.size.width = v15;
    v32.size.height = v16;
    v28.origin.x = v7;
    v28.origin.y = v8;
    v28.size.width = v9;
    v28.size.height = v10;
    v29 = CGRectIntersection(v28, v32);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;

    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    if (CGRectIsEmpty(v30))
    {
      v17 = +[TSUAssertionHandler currentHandler];
      v18 = [NSString stringWithUTF8String:"[THInteractiveCanvasController visibleUnscaledRectForContent]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
      [v17 handleFailureInFunction:v18 file:v19 lineNumber:583 description:@"shouldn't result in an empty rect"];
    }
  }

  [(THInteractiveCanvasController *)self convertBoundsToUnscaledRect:x, y, width, height];
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (double)visibleHeight
{
  canvasView = [(THInteractiveCanvasController *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  layer = [enclosingScrollView layer];
  [layer bounds];
  Height = CGRectGetHeight(v7);

  return Height;
}

- (void)beginStaticLayoutAndRender
{
  self->mWasThreadedLayoutAndRenderEnabled = [(THInteractiveCanvasController *)self allowLayoutAndRenderOnThread];
  [(THInteractiveCanvasController *)self setAllowLayoutAndRenderOnThread:1];
  [(THInteractiveCanvasController *)self setStaticLayoutAndRenderOnThread:1];
  canvasView = [(THInteractiveCanvasController *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  layer = [enclosingScrollView layer];
  [layer setOpacity:0.0];
}

- (void)endStaticLayoutAndRender:(BOOL)render
{
  renderCopy = render;
  if (([(THInteractiveCanvasController *)self staticLayoutAndRenderOnThread]& 1) == 0)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[THInteractiveCanvasController endStaticLayoutAndRender:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:611 description:@"didn't begin static layout and render"];
  }

  if ([(THInteractiveCanvasController *)self staticLayoutAndRenderOnThread])
  {
    [(THInteractiveCanvasController *)self setAllowLayoutAndRenderOnThread:self->mWasThreadedLayoutAndRenderEnabled];
    [(THInteractiveCanvasController *)self setStaticLayoutAndRenderOnThread:0];
    [(THInteractiveCanvasController *)self layoutIfNeeded];
    if (renderCopy)
    {
      +[CATransaction flush];
    }

    canvasView = [(THInteractiveCanvasController *)self canvasView];
    enclosingScrollView = [canvasView enclosingScrollView];
    layer = [enclosingScrollView layer];
    LODWORD(v10) = 1.0;
    [layer setOpacity:v10];
  }
}

- (void)didBeginFreeTransform
{
  [(THInteractiveCanvasController *)self endEditing];
  canvas = [(THInteractiveCanvasController *)self canvas];
  topLevelReps = [canvas topLevelReps];
  v5 = [topLevelReps copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:{"canvasDidBeginFreeTransform", v13}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  delegate = [(THInteractiveCanvasController *)self delegate];
  v12 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v12 interactiveCanvasControllerFreeTransformWillBegin:self];
  }
}

- (void)didEndFreeTransform
{
  canvas = [(THInteractiveCanvasController *)self canvas];
  topLevelReps = [canvas topLevelReps];
  v5 = [topLevelReps copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * i) recursivelyPerformSelectorIfImplemented:{"canvasDidEndFreeTransform", v13}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  delegate = [(THInteractiveCanvasController *)self delegate];
  v12 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v12 interactiveCanvasControllerFreeTransformDidEnd:self];
  }
}

- (void)didLayoutAndRenderOnThread
{
  if ([(THInteractiveCanvasController *)self staticLayoutAndRenderOnThread]&& ![(THInteractiveCanvasController *)self suppressRevealScrollViewOnLayoutAndRender])
  {
    canvasView = [(THInteractiveCanvasController *)self canvasView];
    enclosingScrollView = [canvasView enclosingScrollView];
    layer = [enclosingScrollView layer];
    LODWORD(v6) = 1.0;
    [layer setOpacity:v6];

    +[CATransaction flush];
  }
}

- (id)canvasEditor
{
  v3 = OBJC_IVAR___TSDInteractiveCanvasController_mCanvasEditor;
  if (!*&self->TSAInteractiveCanvasController_opaque[OBJC_IVAR___TSDInteractiveCanvasController_mCanvasEditor])
  {
    documentRoot = [(THInteractiveCanvasController *)self documentRoot];
    if (documentRoot)
    {
      v7 = self->TSAInteractiveCanvasController_opaque[OBJC_IVAR___TSDInteractiveCanvasController_mHasBeenTornDown];

      if ((v7 & 1) == 0)
      {
        v8 = [[THCanvasEditor alloc] initWithInteractiveCanvasController:self];
        v9 = *&self->TSAInteractiveCanvasController_opaque[v3];
        *&self->TSAInteractiveCanvasController_opaque[v3] = v8;
      }
    }
  }

  v4 = *&self->TSAInteractiveCanvasController_opaque[v3];

  return v4;
}

- (void)setITunesMobileContext:(id)context
{
  contextCopy = context;
  if (contextCopy && self->miTunesMobileContext)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[THInteractiveCanvasController setITunesMobileContext:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:677 description:@"context does not support simultaneous uses"];
  }

  miTunesMobileContext = self->miTunesMobileContext;
  self->miTunesMobileContext = contextCopy;
}

- ($D7BD07022F54D45CA7A70F04692339C3)wordMetricsAtPoint:(SEL)point
{
  y = a4.y;
  x = a4.x;
  v8 = *(&TSWPEmptyWordMetrics + 3);
  *&retstr->var1 = *(&TSWPEmptyWordMetrics + 2);
  *&retstr->var3 = v8;
  *&retstr->var5 = *(&TSWPEmptyWordMetrics + 8);
  v9 = *(&TSWPEmptyWordMetrics + 1);
  retstr->var0.origin = *&TSWPEmptyWordMetrics;
  retstr->var0.size = v9;
  objc_opt_class();
  v10 = [(THInteractiveCanvasController *)self hitRep:x, y];
  v18 = TSUDynamicCast();

  if (v18)
  {
    [v18 convertNaturalPointFromUnscaledCanvas:{x, y}];
    v11 = [v18 charIndexFromPoint:0 allowPastBreak:1 allowNotFound:0 pastCenterGoesToNextChar:0 isAtEndOfLine:0 leadingEdge:?];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v18 wordMetricsAtCharIndex:v11];
      [v18 convertNaturalRectToUnscaledCanvas:{retstr->var0.origin.x, retstr->var0.origin.y, retstr->var0.size.width, retstr->var0.size.height}];
      retstr->var0.origin.x = v12;
      retstr->var0.origin.y = v13;
      retstr->var0.size.width = v14;
      retstr->var0.size.height = v15;
      [v18 convertNaturalPointToUnscaledCanvas:{0.0, retstr->var1}];
      retstr->var1 = v16;
    }
  }

  return result;
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  objc_opt_class();
  v6 = [(THInteractiveCanvasController *)self hitRep:x, y];
  v7 = TSUDynamicCast();

  highlightController = [v7 highlightController];
  v9 = [highlightController isCanvasPointOnHighlight:{x, y}];

  if (v9)
  {
    highlightController2 = [v7 highlightController];
    [highlightController2 showHighlightEditorForHighlightAtPoint:{x, y}];
  }

  else
  {
    delegate = [(THInteractiveCanvasController *)self delegate];
    highlightController2 = TSUProtocolCast();

    if (objc_opt_respondsToSelector())
    {
      [highlightController2 interactiveCanvasControllerWasTapped:self];
    }
  }

  [(THInteractiveCanvasController *)self endEditing];
  return 1;
}

- (void)i_handleGlossaryHyperlink:(id)hyperlink rep:(id)rep anchor:(id)anchor
{
  anchorCopy = anchor;
  repCopy = rep;
  hyperlinkCopy = hyperlink;
  layerHost = [(THInteractiveCanvasController *)self layerHost];
  v17 = TSUProtocolCast();

  glossaryEntry = [anchorCopy glossaryEntry];

  term = [glossaryEntry term];
  range = [hyperlinkCopy range];
  v16 = v15;

  [v17 presentGlossaryPopoverOfType:0 withTerm:term rangeInRep:range rep:{v16, repCopy}];
  [(THInteractiveCanvasController *)self endEditing];
}

- (BOOL)p_handleTapAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  objc_opt_class();
  v6 = [(THInteractiveCanvasController *)self hitRep:1 allowsAllReps:x, y];
  v7 = TSUDynamicCast();

  highlightController = [v7 highlightController];
  v9 = [highlightController isCanvasPointOnHighlight:{x, y}];
  if (v9)
  {
    supportsWritingHighlights = [(THInteractiveCanvasController *)self supportsWritingHighlights];

    if (!supportsWritingHighlights)
    {
      LOBYTE(v9) = 0;
      goto LABEL_6;
    }

    highlightController = [v7 highlightController];
    [highlightController showHighlightMenuForHighlightAtPoint:{x, y}];
  }

LABEL_6:
  return v9;
}

- (id)menuForHighlightAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  objc_opt_class();
  v6 = [(THInteractiveCanvasController *)self hitRep:1 allowsAllReps:x, y];
  v7 = TSUDynamicCast();

  highlightController = [v7 highlightController];
  if (![highlightController isCanvasPointOnHighlight:{x, y}])
  {
    v10 = 0;
    goto LABEL_5;
  }

  supportsWritingHighlights = [(THInteractiveCanvasController *)self supportsWritingHighlights];

  if (supportsWritingHighlights)
  {
    highlightController = [v7 highlightController];
    v10 = [highlightController editMenuForHighlightAtPoint:{x, y}];
LABEL_5:

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (BOOL)p_handleLongPress:(id)press
{
  pressCopy = press;
  gestureState = [pressCopy gestureState];
  switch(gestureState)
  {
    case 3u:
      if (![(THInteractiveCanvasController *)self selectOnLongPress])
      {
        break;
      }

      [pressCopy unscaledLocationForICC:self];
      v15 = v14;
      v17 = v16;
      objc_opt_class();
      v18 = [(THInteractiveCanvasController *)self hitRep:1 allowsAllReps:v15, v17];
      v11 = TSUDynamicCast();

      if ([v11 shouldBeginEditingWithGesture:pressCopy])
      {
        highlightController = [v11 highlightController];
        v20 = [highlightController isCanvasPointOnHighlight:{v15, v17}];

        if ((v20 & 1) == 0)
        {
          objc_opt_class();
          v21 = [(THInteractiveCanvasController *)self beginEditingRep:v11];
          v22 = TSUDynamicCast();

          if (v22)
          {
            [v11 convertNaturalPointFromUnscaledCanvas:{v15, v17}];
            [v22 tappedInRep:v11 point:1 tapCount:1 isTapHold:0 precise:?];
          }
        }
      }

      goto LABEL_6;
    case 2u:
      [pressCopy unscaledLocationForICC:self];
      v7 = v6;
      v9 = v8;
      objc_opt_class();
      v10 = [(THInteractiveCanvasController *)self hitRep:1 allowsAllReps:v7, v9];
      v11 = TSUDynamicCast();

      highlightController2 = [v11 highlightController];
      currentDragAnnotation = [highlightController2 currentDragAnnotation];
      [(THInteractiveCanvasController *)self setSelectOnLongPress:currentDragAnnotation == 0];

LABEL_6:
      break;
    case 1u:
      [(THInteractiveCanvasController *)self setSelectOnLongPress:1];
      break;
  }

  return 1;
}

- (void)willSetDocumentToMode:(int64_t)mode fromMode:(int64_t)fromMode animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_opt_class();
  layerHost = [(THInteractiveCanvasController *)self layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  v11 = TSUDynamicCast();

  hyperlinkGestureRecognizer = [v11 hyperlinkGestureRecognizer];
  isEnabled = [hyperlinkGestureRecognizer isEnabled];

  v15.receiver = self;
  v15.super_class = THInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v15 willSetDocumentToMode:mode fromMode:fromMode animated:animatedCopy];
  hyperlinkGestureRecognizer2 = [v11 hyperlinkGestureRecognizer];
  [hyperlinkGestureRecognizer2 setEnabled:isEnabled];
}

- (void)didSetDocumentToMode:(int64_t)mode fromMode:(int64_t)fromMode animated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = THInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v6 didSetDocumentToMode:mode fromMode:fromMode animated:animated];
  [(THInteractiveCanvasController *)self disableNormalGestures];
}

- (void)navigateToPreviousChapter
{
  documentNavigator = [(THInteractiveCanvasController *)self documentNavigator];
  [documentNavigator navigateByBookDirection:2 bookGranularity:3];
}

- (void)navigateToNextChapter
{
  documentNavigator = [(THInteractiveCanvasController *)self documentNavigator];
  [documentNavigator navigateByBookDirection:1 bookGranularity:3];
}

- (void)navigateToPreviousPage
{
  documentNavigator = [(THInteractiveCanvasController *)self documentNavigator];
  [documentNavigator navigateByBookDirection:2 bookGranularity:1];
}

- (void)navigateToNextPage
{
  documentNavigator = [(THInteractiveCanvasController *)self documentNavigator];
  [documentNavigator navigateByBookDirection:1 bookGranularity:1];
}

- (void)showDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  editorController = [(THInteractiveCanvasController *)self editorController];
  textInputEditor = [editorController textInputEditor];
  v7 = TSUDynamicCast();

  [v7 showDictionary:dictionaryCopy];
}

- (void)searchSelection:(id)selection
{
  selectionCopy = selection;
  objc_opt_class();
  editorController = [(THInteractiveCanvasController *)self editorController];
  textInputEditor = [editorController textInputEditor];
  v7 = TSUDynamicCast();

  [v7 searchSelection:selectionCopy];
}

- (void)addNote:(id)note
{
  noteCopy = note;
  objc_opt_class();
  editorController = [(THInteractiveCanvasController *)self editorController];
  textInputEditor = [editorController textInputEditor];
  v7 = TSUDynamicCast();

  [v7 addNote:noteCopy];
}

- (void)addHighlight:(id)highlight
{
  highlightCopy = highlight;
  objc_opt_class();
  editorController = [(THInteractiveCanvasController *)self editorController];
  textInputEditor = [editorController textInputEditor];
  v8 = TSUDynamicCast();

  bookAnnotationController = [(THInteractiveCanvasController *)self bookAnnotationController];
  [v8 addHighlightWithStyle:objc_msgSend(bookAnnotationController forSender:{"currentAnnotationStyle"), highlightCopy}];
}

- (void)removeNote:(id)note
{
  noteCopy = note;
  objc_opt_class();
  editorController = [(THInteractiveCanvasController *)self editorController];
  textInputEditor = [editorController textInputEditor];
  v7 = TSUDynamicCast();

  [v7 removeNote:noteCopy];
}

- (void)removeNoteAndHighlight:(id)highlight
{
  highlightCopy = highlight;
  objc_opt_class();
  editorController = [(THInteractiveCanvasController *)self editorController];
  textInputEditor = [editorController textInputEditor];
  v7 = TSUDynamicCast();

  [v7 removeNoteAndHighlight:highlightCopy];
}

- (void)changeAnnotationStyle:(id)style
{
  styleCopy = style;
  objc_opt_class();
  editorController = [(THInteractiveCanvasController *)self editorController];
  textInputEditor = [editorController textInputEditor];
  v6 = TSUDynamicCast();

  objc_opt_class();
  v7 = TSUDynamicCast();
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    propertyList = [v7 propertyList];
    v11 = [propertyList objectForKeyedSubscript:@"style"];

    if (v11)
    {
      v12 = [v11 integerValue] - 1;
      if (v12 > 5)
      {
        v13 = 0;
      }

      else
      {
        v13 = dword_349F18[v12];
      }

      [v6 addHighlightWithStyle:v13 forSender:styleCopy];
      [v6 setSelection:0];
    }
  }
}

- (void)presentMenuAtCanvasPoint:(CGPoint)point forAnnotationUUID:(id)d
{
  y = point.y;
  x = point.x;
  dCopy = d;
  delegate = [(THInteractiveCanvasController *)self delegate];
  v8 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v8 interactiveCanvasController:self wantsToPresentContextMenuAtCanvasPoint:dCopy forAnnotationUUID:{x, y}];
  }
}

- (BOOL)hasCurrentSelection
{
  objc_opt_class();
  editorController = [(THInteractiveCanvasController *)self editorController];
  textInputEditor = [editorController textInputEditor];
  v5 = TSUDynamicCast();

  if (v5)
  {
    stringFromSelection = [v5 stringFromSelection];
    v7 = [stringFromSelection length] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)annotationForUUID:(id)d
{
  dCopy = d;
  objc_opt_class();
  editorController = [(THInteractiveCanvasController *)self editorController];
  textInputEditor = [editorController textInputEditor];
  v7 = TSUDynamicCast();

  if (v7)
  {
    v8 = [v7 annotationForUUID:dCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)annotationForCurrentSelection
{
  objc_opt_class();
  editorController = [(THInteractiveCanvasController *)self editorController];
  textInputEditor = [editorController textInputEditor];
  v5 = TSUDynamicCast();

  if (v5)
  {
    annotationForCurrentSelection = [v5 annotationForCurrentSelection];
  }

  else
  {
    annotationForCurrentSelection = 0;
  }

  return annotationForCurrentSelection;
}

- (id)annotationFromCurrentSelection
{
  objc_opt_class();
  editorController = [(THInteractiveCanvasController *)self editorController];
  textInputEditor = [editorController textInputEditor];
  v5 = TSUDynamicCast();

  if (v5)
  {
    annotationFromCurrentSelection = [v5 annotationFromCurrentSelection];
  }

  else
  {
    annotationFromCurrentSelection = 0;
  }

  return annotationFromCurrentSelection;
}

- (id)activityItemProviderForCurrentSelection
{
  objc_opt_class();
  editorController = [(THInteractiveCanvasController *)self editorController];
  textInputEditor = [editorController textInputEditor];
  v5 = TSUDynamicCast();

  if (v5)
  {
    activityItemProviderForCurrentSelection = [v5 activityItemProviderForCurrentSelection];
  }

  else
  {
    activityItemProviderForCurrentSelection = 0;
  }

  return activityItemProviderForCurrentSelection;
}

- (id)p_gestureHitLink:(id)link
{
  [link unscaledLocationForICC:self];
  v5 = v4;
  v7 = v6;
  v8 = [(THInteractiveCanvasController *)self hitRep:1 allowsAllReps:?];
  objc_opt_class();
  v9 = TSUDynamicCast();
  [v9 convertNaturalPointFromUnscaledCanvas:{v5, v7}];
  v11 = v10;
  v13 = v12;
  objc_opt_class();
  v14 = [v9 smartFieldAtPoint:{v11, v13}];
  v15 = TSUDynamicCast();

  return v15;
}

- (BOOL)canHandleGesture:(id)gesture
{
  gestureCopy = gesture;
  objc_opt_class();
  editorController = [(THInteractiveCanvasController *)self editorController];
  textInputEditor = [editorController textInputEditor];
  v7 = TSUDynamicCast();

  gestureKind = [gestureCopy gestureKind];
  if (gestureKind == TSWPImmediateSingleTap)
  {
    v10 = [(THInteractiveCanvasController *)self p_gestureHitLink:gestureCopy];
    if (v10)
    {
      v45.receiver = self;
      v45.super_class = THInteractiveCanvasController;
      v9 = [(THInteractiveCanvasController *)&v45 canHandleGesture:gestureCopy];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  gestureKind2 = [gestureCopy gestureKind];
  v12 = gestureKind2;
  if (v7)
  {
    v13 = TSWPLongPress;

    if (v12 != v13)
    {
      v44.receiver = self;
      v44.super_class = THInteractiveCanvasController;
      if (([(THInteractiveCanvasController *)&v44 canHandleGesture:gestureCopy]| v9))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v15 = (gestureKind2 == TSWPTapAndTouch) | v9;

    if (v15)
    {
LABEL_10:
      v14 = 1;
      goto LABEL_33;
    }
  }

  gestureKind3 = [gestureCopy gestureKind];
  if (gestureKind3 == TSDShortTap)
  {
    goto LABEL_18;
  }

  gestureKind4 = [gestureCopy gestureKind];
  v18 = gestureKind4;
  if (gestureKind4 == TSDDelayedShortTap)
  {

LABEL_18:
    goto LABEL_19;
  }

  gestureKind5 = [gestureCopy gestureKind];
  v20 = TSWPLongPress;

  if (gestureKind5 == v20)
  {
LABEL_19:
    delegate = [(THInteractiveCanvasController *)self delegate];
    v24 = TSUProtocolCast();

    [gestureCopy unscaledLocationForICC:self];
    v26 = v25;
    v28 = v27;
    v29 = [(THInteractiveCanvasController *)self hitRep:?];
    objc_opt_class();
    v30 = TSUDynamicCast();
    gestureKind6 = [gestureCopy gestureKind];
    v32 = TSWPLongPress;

    if (gestureKind6 != v32 || !v30)
    {
      if (v30)
      {
        gestureKind7 = [gestureCopy gestureKind];
        v34 = TSDDelayedShortTap;

        if (gestureKind7 != v34)
        {
          v14 = 0;
LABEL_32:

          goto LABEL_33;
        }
      }

      v35 = [(THInteractiveCanvasController *)self p_pointIsInLeftMargin:v26, v28];
      v36 = [(THInteractiveCanvasController *)self p_pointIsInRightMargin:v26, v28];
      if (objc_opt_respondsToSelector())
      {
        v37 = [v24 interactiveCanvasControllerShouldPageLeftOnMarginTap:self];
      }

      else
      {
        v37 = 0;
      }

      if (objc_opt_respondsToSelector())
      {
        v38 = [v24 interactiveCanvasControllerShouldPageRightOnMarginTap:self];
      }

      else
      {
        v38 = 0;
      }

      if ((v35 & v37 & 1) == 0)
      {
        v14 = v36 & v38;
        goto LABEL_32;
      }
    }

    v14 = 1;
    goto LABEL_32;
  }

  gestureKind8 = [gestureCopy gestureKind];
  v22 = TSDFreeTransform;

  if (gestureKind8 == v22)
  {
    if ([(THInteractiveCanvasController *)self isCompactWidth])
    {
      LOBYTE(v40) = 0;
    }

    else
    {
      v40 = ![(THInteractiveCanvasController *)self isCompactHeight];
    }

    [(THInteractiveCanvasController *)self viewScale];
    v42 = v41;
    [(THInteractiveCanvasController *)self fitWidthViewScale];
    v14 = (v42 <= v43) | v40;
  }

  else
  {
    v14 = 0;
  }

LABEL_33:

  return v14 & 1;
}

- (BOOL)handleGesture:(id)gesture
{
  gestureCopy = gesture;
  gestureKind = [gestureCopy gestureKind];
  v6 = gestureKind;
  if (gestureKind == TSDShortTap)
  {
  }

  else
  {
    gestureKind2 = [gestureCopy gestureKind];
    v8 = TSDDelayedShortTap;

    if (gestureKind2 != v8)
    {
      gestureKind3 = [gestureCopy gestureKind];
      v10 = TSWPLongPress;

      if (gestureKind3 == v10)
      {
        if ([(THInteractiveCanvasController *)self p_handleLongPress:gestureCopy])
        {
          goto LABEL_23;
        }
      }

      else
      {
        gestureKind4 = [gestureCopy gestureKind];
        v12 = TSDFreeTransform;

        if (gestureKind4 == v12)
        {
          gestureState = [gestureCopy gestureState];
          objc_opt_class();
          v14 = TSUDynamicCast();
          if (v14)
          {
            objc_opt_class();
            documentRoot = [(THInteractiveCanvasController *)self documentRoot];
            v16 = TSUDynamicCast();

            v17 = +[THApplePubAssetPlugin sharedPlugin];
            v18 = [v17 existingBookViewControllerForDocumentRoot:v16];

            canvasExitFreeTransformController = [v18 canvasExitFreeTransformController];
            v20 = canvasExitFreeTransformController;
            if (gestureState == 1)
            {
              freeTransformDelegate = [v14 freeTransformDelegate];

              if (freeTransformDelegate != v20)
              {
                v22 = +[TSUAssertionHandler currentHandler];
                v23 = [NSString stringWithUTF8String:"[THInteractiveCanvasController handleGesture:]"];
                v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
                [v22 handleFailureInFunction:v23 file:v24 lineNumber:1134 description:@"Expected the gesture free transform delegate to be the canvas exit FTC."];
              }

              canvasExitFreeTransformController2 = [v18 canvasExitFreeTransformController];
              [v14 setFreeTransformDelegate:canvasExitFreeTransformController2];

              [v20 setTransformGR:v14];
              [v20 transformGRChanged:v14];
            }

            else
            {
              [canvasExitFreeTransformController transformGRChanged:v14];
              if (gestureState - 3 <= 1)
              {
                transformGR = [v20 transformGR];
                [transformGR setFreeTransformDelegate:0];

                [v20 setTransformGR:0];
              }
            }
          }

          goto LABEL_23;
        }
      }

      goto LABEL_12;
    }
  }

  if ([(THInteractiveCanvasController *)self p_handleSingleTap:gestureCopy])
  {
    goto LABEL_23;
  }

LABEL_12:
  gestureKind5 = [gestureCopy gestureKind];
  v27 = TSWPImmediateSingleTap;

  if (gestureKind5 == v27)
  {
    [gestureCopy unscaledLocationForICC:self];
    v29 = v28;
    v31 = v30;
    v32 = [(THInteractiveCanvasController *)self p_gestureHitLink:gestureCopy];
    if (v32)
    {

      goto LABEL_15;
    }

    objc_opt_class();
    editorController = [(THInteractiveCanvasController *)self editorController];
    textInputEditor = [editorController textInputEditor];
    v36 = TSUDynamicCast();

    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x3032000000;
    v63[3] = sub_2E368;
    v63[4] = sub_2E378;
    selfCopy = self;
    v64 = selfCopy;
    objc_opt_class();
    layerHost = [(THInteractiveCanvasController *)selfCopy layerHost];
    asiOSCVC = [layerHost asiOSCVC];
    v40 = TSUDynamicCast();

    objc_opt_class();
    v41 = TSUDynamicCast();
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x2020000000;
    v62 = 0;
    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_2E380;
    v56[3] = &unk_45B668;
    v57 = v36;
    v42 = v40;
    v58 = v42;
    v43 = v41;
    v59 = v43;
    v60 = v61;
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_2E424;
    v49[3] = &unk_45B6B0;
    v44 = v57;
    v50 = v44;
    v51 = selfCopy;
    v54 = v29;
    v55 = v31;
    v52 = v63;
    v53 = v61;
    v45 = [TSWPTwoPartAction actionWithStartAction:v56 cancelAction:&stru_45B688 finishAction:v49];
    [v42 startDelayedTapAction:v45];

    _Block_object_dispose(v61, 8);
    _Block_object_dispose(v63, 8);

LABEL_23:
    v33 = 1;
    goto LABEL_24;
  }

LABEL_15:
  v48.receiver = self;
  v48.super_class = THInteractiveCanvasController;
  v33 = [(THInteractiveCanvasController *)&v48 handleGesture:gestureCopy];
LABEL_24:

  return v33;
}

- (void)willBeginHandlingGesture:(id)gesture
{
  gestureCopy = gesture;
  gestureKind = [gestureCopy gestureKind];
  v5 = TSDFreeTransform;

  if (gestureKind == v5)
  {
    objc_opt_class();
    documentRoot = [(THInteractiveCanvasController *)self documentRoot];
    v7 = TSUDynamicCast();

    v8 = +[THApplePubAssetPlugin sharedPlugin];
    v9 = [v8 existingBookViewControllerForDocumentRoot:v7];

    canvasExitFreeTransformController = [v9 canvasExitFreeTransformController];
    objc_opt_class();
    v11 = TSUDynamicCast();
    freeTransformDelegate = [v11 freeTransformDelegate];
    if (freeTransformDelegate)
    {
      v13 = freeTransformDelegate;
      freeTransformDelegate2 = [v11 freeTransformDelegate];

      if (freeTransformDelegate2 != canvasExitFreeTransformController)
      {
        v15 = +[TSUAssertionHandler currentHandler];
        v16 = [NSString stringWithUTF8String:"[THInteractiveCanvasController willBeginHandlingGesture:]"];
        v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
        [v15 handleFailureInFunction:v16 file:v17 lineNumber:1219 description:@"Overriding existing delegate."];
      }
    }

    canvasExitFreeTransformController2 = [v9 canvasExitFreeTransformController];
    [v11 setFreeTransformDelegate:canvasExitFreeTransformController2];
  }
}

- (void)showHyperlinkInfoForField:(id)field inRep:(id)rep openInEditMode:(BOOL)mode
{
  repCopy = rep;
  fieldCopy = field;
  objc_opt_class();
  v9 = TSUDynamicCast();

  [(THInteractiveCanvasController *)self handleHyperlink:fieldCopy hitRep:v9];
}

- (void)pressableRepWasPressed:(id)pressed atPoint:(CGPoint)point
{
  pressedCopy = pressed;
  delegate = [(THInteractiveCanvasController *)self delegate];
  v6 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    pressableAction = [pressedCopy pressableAction];
    if (pressableAction == 3)
    {
      objc_opt_class();
      info = [pressedCopy info];
      v10 = TSUDynamicCast();

      hyperlinkURL = [v10 hyperlinkURL];
      if (hyperlinkURL)
      {
        [(THInteractiveCanvasController *)self performSelectorOnMainThread:"handleHyperlinkWithURL:" withObject:hyperlinkURL waitUntilDone:0];
      }
    }

    else
    {
      v8 = pressableAction;
      if (pressableAction == 2)
      {
        if (!v6)
        {
          goto LABEL_22;
        }

        pressableAnimationLayer = [pressedCopy pressableAnimationLayer];
        [pressableAnimationLayer removeAllAnimations];

        if (objc_opt_respondsToSelector())
        {
          [pressedCopy expandableRep];
        }

        else
        {
          objc_opt_class();
          TSUClassAndProtocolCast();
        }
        v10 = ;
        if (v10)
        {
          [v6 presentRepExpanded:v10];
        }

        goto LABEL_21;
      }

      if (pressableAction != 1)
      {
        v10 = +[TSUAssertionHandler currentHandler];
        v14 = [NSString stringWithUTF8String:"[THInteractiveCanvasController pressableRepWasPressed:atPoint:]"];
        v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
        [v10 handleFailureInFunction:v14 file:v15 lineNumber:1308 description:{@"Unrecognized action type: %d", v8}];

LABEL_21:
        goto LABEL_22;
      }

      if (!v6)
      {
        goto LABEL_22;
      }

      info2 = [pressedCopy info];
      v10 = TSUProtocolCast();

      hyperlinkURL = [v10 popUpInfo];
      if (hyperlinkURL)
      {
        if (objc_opt_respondsToSelector())
        {
          [pressedCopy frameForPopupInUnscaledCanvas];
        }

        else
        {
          [pressedCopy frameInUnscaledCanvas];
        }

        [(THInteractiveCanvasController *)self convertUnscaledToBoundsRect:?];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        canvasView = [(THInteractiveCanvasController *)self canvasView];
        layer = [canvasView layer];
        [v6 presentPopoverForPopUpInfo:hyperlinkURL withFrame:layer inLayer:{v17, v19, v21, v23}];
      }
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (void)progressDidChangeForRep:(id)rep percent:(id)percent
{
  repCopy = rep;
  percentCopy = percent;
  delegate = [(THInteractiveCanvasController *)self delegate];
  v8 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v8 interactiveCanvasController:self progressDidChangeForRep:repCopy percent:percentCopy];
  }
}

- (void)scoreDidChangeForRep:(id)rep score:(id)score total:(id)total
{
  repCopy = rep;
  scoreCopy = score;
  totalCopy = total;
  delegate = [(THInteractiveCanvasController *)self delegate];
  v11 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v11 interactiveCanvasController:self scoreDidChangeForRep:repCopy score:scoreCopy total:totalCopy];
  }
}

- (void)resetAttemptForRep:(id)rep
{
  repCopy = rep;
  delegate = [(THInteractiveCanvasController *)self delegate];
  v5 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v5 interactiveCanvasController:self resetAttemptForRep:repCopy];
  }
}

- (void)p_trackProgressForRep:(id)rep
{
  repCopy = rep;
  v10 = repCopy;
  if (repCopy)
  {
    v5 = repCopy;
    do
    {
      if ([v5 conformsToProtocol:&OBJC_PROTOCOL___BCProgressTracking])
      {
        break;
      }

      parentRep = [v5 parentRep];

      v5 = parentRep;
    }

    while (parentRep);
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  v7 = TSUClassAndProtocolCast();
  if (v7)
  {
    delegate = [(THInteractiveCanvasController *)self delegate];
    v9 = TSUProtocolCast();

    if (objc_opt_respondsToSelector())
    {
      [v9 interactiveCanvasController:self activateProgressForRep:v7];
    }
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v5.receiver = self;
  v5.super_class = THInteractiveCanvasController;
  scrollCopy = scroll;
  [(THInteractiveCanvasController *)&v5 scrollViewDidScroll:scrollCopy];
  [(THInteractiveCanvasController *)self p_handleOverscroll:scrollCopy state:0, v5.receiver, v5.super_class];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(THInteractiveCanvasController *)self p_adjustMaskLayerOnScrollView:scrollCopy];

  +[CATransaction commit];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  if (![(THInteractiveCanvasController *)self isOverscrolling])
  {
    v10.receiver = self;
    v10.super_class = THInteractiveCanvasController;
    [(THInteractiveCanvasController *)&v10 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:x, y];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  decelerateCopy = decelerate;
  v7.receiver = self;
  v7.super_class = THInteractiveCanvasController;
  draggingCopy = dragging;
  [(THInteractiveCanvasController *)&v7 scrollViewDidEndDragging:draggingCopy willDecelerate:decelerateCopy];
  [(THInteractiveCanvasController *)self p_handleOverscroll:draggingCopy state:2, v7.receiver, v7.super_class];
}

- (void)scrollViewDidLayoutSubviews:(id)subviews
{
  subviewsCopy = subviews;
  maskLayer = [(THInteractiveCanvasController *)self maskLayer];
  if (maskLayer)
  {
    v5 = maskLayer;
    layerHost = [(THInteractiveCanvasController *)self layerHost];
    canvasLayer = [layerHost canvasLayer];
    mask = [canvasLayer mask];

    if (mask)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [(THInteractiveCanvasController *)self p_adjustMaskLayerOnScrollView:subviewsCopy];
      +[CATransaction commit];
    }
  }
}

- (void)scrollView:(id)view willAnimateToContentOffset:(CGPoint)offset
{
  v5.receiver = self;
  v5.super_class = THInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v5 scrollView:view willAnimateToContentOffset:offset.x, offset.y];
  [(THInteractiveCanvasController *)self p_hoistMaskLayer];
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  v5.receiver = self;
  v5.super_class = THInteractiveCanvasController;
  animationCopy = animation;
  [(THInteractiveCanvasController *)&v5 scrollViewDidEndScrollingAnimation:animationCopy];
  [(THInteractiveCanvasController *)self p_handleOverscroll:animationCopy state:3, v5.receiver, v5.super_class];

  [(THInteractiveCanvasController *)self p_unhoistMaskLayer];
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  v5.receiver = self;
  v5.super_class = THInteractiveCanvasController;
  deceleratingCopy = decelerating;
  [(THInteractiveCanvasController *)&v5 scrollViewDidEndDecelerating:deceleratingCopy];
  [(THInteractiveCanvasController *)self p_handleOverscroll:deceleratingCopy state:3, v5.receiver, v5.super_class];
}

- (void)scrollViewDidScrollToTop:(id)top
{
  v4.receiver = self;
  v4.super_class = THInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v4 scrollViewDidScrollToTop:top];
  [(THInteractiveCanvasController *)self p_unhoistMaskLayer];
}

- (void)setContentOffset:(CGPoint)offset animated:(BOOL)animated
{
  animatedCopy = animated;
  [(THInteractiveCanvasController *)self convertUnscaledToBoundsPoint:offset.x, offset.y];
  v7 = v6;
  v9 = v8;
  canvasView = [(THInteractiveCanvasController *)self canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  [enclosingScrollView setContentOffset:animatedCopy animated:{v7, v9}];
}

- (void)p_handleOverscroll:(id)overscroll state:(int)state
{
  v4 = *&state;
  overscrollCopy = overscroll;
  delegate = [(THInteractiveCanvasController *)self delegate];
  v7 = TSUProtocolCast();

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v7 interactiveCanvasControllerShouldIgnoreOverscroll:self])
  {
    v8 = 0;
  }

  else
  {
    [overscrollCopy contentOffset];
    v10 = v9;
    v12 = v11;
    [overscrollCopy contentSize];
    v14 = v10 - v13;
    [overscrollCopy frame];
    v16 = v14 + v15;
    [overscrollCopy contentSize];
    v18 = v12 - v17;
    [overscrollCopy frame];
    v20 = v18 + v19;
    [overscrollCopy contentInset];
    v22 = v21;
    v24 = v10 + v23;
    v26 = v16 - v25;
    v28 = v12 + v27;
    if (v24 >= -5.0)
    {
      if (v26 > 5.0 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v7 interactiveCanvasController:self didOverscrollRight:v4 state:v26];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v7 interactiveCanvasController:self didOverscrollLeft:v4 state:fabs(v24)];
    }

    v29 = v20 - v22;
    if (v28 >= -5.0)
    {
      if (v29 > 5.0 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [v7 interactiveCanvasController:self didOverscrollBottom:v4 state:v29];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      [v7 interactiveCanvasController:self didOverscrollTop:v4 state:fabs(v28)];
    }

    v30 = fmax(v26, v29) > 5.0;
    v8 = fmin(v24, v28) < -5.0 || v30;
  }

  [(THInteractiveCanvasController *)self setIsOverscrolling:v8];
}

- (BOOL)p_handleSingleTap:(id)tap
{
  [tap unscaledLocationForICC:self];
  v5 = v4;
  v7 = v6;
  v8 = [(THInteractiveCanvasController *)self p_pointIsInLeftMargin:?];
  v9 = [(THInteractiveCanvasController *)self p_pointIsInRightMargin:v5, v7];
  if (v8)
  {
    [(THInteractiveCanvasController *)self pageLeft];
LABEL_5:
    LOBYTE(v9) = 1;
    return v9;
  }

  if (v9)
  {
    [(THInteractiveCanvasController *)self pageRight];
    goto LABEL_5;
  }

  return v9;
}

- (BOOL)p_allowPaging
{
  selfCopy = self;
  delegate = [(THInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate2 = [(THInteractiveCanvasController *)selfCopy delegate];
    LOBYTE(selfCopy) = [delegate2 interactiveCanvasControllerAllowPaging:selfCopy];
  }

  else
  {
    LODWORD(selfCopy) = [(THInteractiveCanvasController *)selfCopy currentlyScrolling]^ 1;
  }

  return selfCopy;
}

- (void)pageLeft
{
  if ([(THInteractiveCanvasController *)self p_allowPaging])
  {
    v3 = +[AETestDriver shared];
    [v3 postEvent:kBETestDriverPageTurnStart sender:self];
    [v3 postEvent:kBETestDriverPageTurnSetupStart sender:self];
    canvasView = [(THInteractiveCanvasController *)self canvasView];
    enclosingScrollView = [canvasView enclosingScrollView];

    [enclosingScrollView contentOffset];
    v7 = v6;
    v9 = v8;
    [enclosingScrollView bounds];
    v11 = v10;
    v12 = v7 - v10;
    [enclosingScrollView contentSize];
    if (v11 > 0.0)
    {
      v14 = v13;
      if ([enclosingScrollView isPagingEnabled])
      {
        v15 = floor(v7 / v11);
        v16 = ceil(v7 / v11);
        v17 = vabdd_f64(v7 + v11, v14) >= 0.00999999978 || v15 == v16;
        if (!v17 && vabdd_f64(v7 / v11, round(v7 / v11)) > 0.1)
        {
          v12 = v12 + v11 * 0.5;
        }
      }
    }

    [v3 postEvent:kBETestDriverPageTurnSetupEnd sender:self];
    [v3 postEvent:kBETestDriverPageTurnAnimationStart sender:self];
    canvasView2 = [(THInteractiveCanvasController *)self canvasView];
    enclosingScrollView2 = [canvasView2 enclosingScrollView];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_2F7A0;
    v21[3] = &unk_45ADB0;
    v22 = v3;
    selfCopy = self;
    v20 = v3;
    [enclosingScrollView2 setContentOffset:1 animated:v21 completionBlock:{v12, v9}];
  }
}

- (void)pageRight
{
  if ([(THInteractiveCanvasController *)self p_allowPaging])
  {
    v3 = +[AETestDriver shared];
    [v3 postEvent:kBETestDriverPageTurnStart sender:self];
    [v3 postEvent:kBETestDriverPageTurnSetupStart sender:self];
    canvasView = [(THInteractiveCanvasController *)self canvasView];
    enclosingScrollView = [canvasView enclosingScrollView];

    [enclosingScrollView contentOffset];
    v7 = v6;
    v9 = v8;
    [enclosingScrollView bounds];
    v11 = v10;
    v12 = v7 + v10;
    [enclosingScrollView contentSize];
    if (v11 > 0.0)
    {
      v14 = v13;
      if ([enclosingScrollView isPagingEnabled])
      {
        v15 = v11 + v12;
        v16 = vabdd_f64(v12, v14) < 0.00999999978 || v15 <= v14;
        v17 = v12 + v14 - v15;
        if (!v16)
        {
          v12 = v17;
        }
      }
    }

    [v3 postEvent:kBETestDriverPageTurnSetupEnd sender:self];
    [v3 postEvent:kBETestDriverPageTurnAnimationStart sender:self];
    canvasView2 = [(THInteractiveCanvasController *)self canvasView];
    enclosingScrollView2 = [canvasView2 enclosingScrollView];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_2F9D8;
    v21[3] = &unk_45ADB0;
    v22 = v3;
    selfCopy = self;
    v20 = v3;
    [enclosingScrollView2 setContentOffset:1 animated:v21 completionBlock:{v12, v9}];
  }
}

- (BOOL)p_pointIsInLeftMargin:(CGPoint)margin
{
  y = margin.y;
  x = margin.x;
  delegate = [(THInteractiveCanvasController *)self delegate];
  v7 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 interactiveCanvasController:self pointIsInLeftMargin:{x, y}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)p_pointIsInRightMargin:(CGPoint)margin
{
  y = margin.y;
  x = margin.x;
  delegate = [(THInteractiveCanvasController *)self delegate];
  v7 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    v8 = [v7 interactiveCanvasController:self pointIsInRightMargin:{x, y}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)p_zoomColumnAtPoint:(CGPoint)point forceWpRep:(BOOL)rep
{
  y = point.y;
  x = point.x;
  if (rep)
  {
    [(THInteractiveCanvasController *)self hitRep:0 withGesture:&stru_45B6F0 passingTest:point.x, point.y];
  }

  else
  {
    [(THInteractiveCanvasController *)self hitRep:1 allowsAllReps:point.x, point.y];
  }
  v7 = ;
  objc_opt_class();
  v8 = TSUDynamicCast();
  [v8 convertNaturalPointFromUnscaledCanvas:{x, y}];
  v9 = [v8 closestColumnForPoint:?];
  v10 = v9;
  if (v9)
  {
    [v9 typographicBounds];
    [v8 convertNaturalRectToUnscaledCanvas:?];
    v12 = v11;
    v14 = v13;
    width = v15;
    v18 = v17;
    delegate = [(THInteractiveCanvasController *)self delegate];
    v20 = TSUProtocolCast();

    height = v18;
    v35 = width;
    v36 = v14;
    v22 = v12;
    if (objc_opt_respondsToSelector())
    {
      [v20 interactiveCanvasControllerPaddingForZoomToColumn:self];
      v24 = -v23;
      v37.origin.x = v12;
      v37.size.width = width;
      v37.origin.y = v14;
      v37.size.height = v18;
      v38 = CGRectInset(v37, v24, v24);
      v22 = v38.origin.x;
      v14 = v38.origin.y;
      width = v38.size.width;
      height = v38.size.height;
    }

    v34 = v12;
    [(THInteractiveCanvasController *)self viewScale];
    v26 = v25;
    [(THInteractiveCanvasController *)self viewScaleForZoomToFitRect:0 outset:1 fitWidthOnly:v22, v14, width, height];
    if (vabdd_f64(v26, v27) >= 0.00999999978)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v20 interactiveCanvasControllerShouldAllowZoomToColumn:self] && ((objc_opt_respondsToSelector() & 1) == 0 || objc_msgSend(v20, "interactiveCanvasController:shouldZoomToColumn:withFrame:tapPoint:", self, v10, v34, v36, v35, v18, x, y)))
      {
        height = [(THInteractiveCanvasController *)self zoomToFitRect:0 outset:1 fitWidthOnly:1 centerHorizontally:0 centerVertically:1 animated:v22, v14, width, height];
        if (objc_opt_respondsToSelector())
        {
          [v20 interactiveCanvasController:self didZoomToColumn:v10 ofRep:v8];
        }

        goto LABEL_19;
      }
    }

    else
    {
      [(THInteractiveCanvasController *)self contentOffset];
      layout = [v8 layout];
      pageLayout = [layout pageLayout];

      if (pageLayout)
      {
        [pageLayout frameInRoot];
      }

      layerHost = [(THInteractiveCanvasController *)self layerHost];
      canvasLayer = [layerHost canvasLayer];
      [canvasLayer minimumPinchViewScale];
      [THInteractiveCanvasController setViewScale:"setViewScale:contentOffset:clampOffset:animated:" contentOffset:1 clampOffset:1 animated:?];
    }

    height = 0;
LABEL_19:

    goto LABEL_20;
  }

  height = 0;
LABEL_20:

  return height;
}

- (void)p_editorControllerDidChangeTextInputEditor:(id)editor
{
  editorCopy = editor;
  if (TSUSupportsTextInteraction())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_3001C;
    v8[3] = &unk_45ADB0;
    v9 = editorCopy;
    selfCopy = self;
    v5 = objc_retainBlock(v8);
    if (v5)
    {
      if (+[NSThread isMainThread])
      {
        (v5[2])(v5);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_30154;
        block[3] = &unk_45B718;
        v7 = v5;
        dispatch_async(&_dispatch_main_q, block);
      }
    }
  }
}

- (CGPoint)maskLayerOrigin
{
  x = self->_maskLayerOrigin.x;
  y = self->_maskLayerOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end