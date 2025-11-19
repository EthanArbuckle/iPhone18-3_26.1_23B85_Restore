@interface THInteractiveCanvasController
- ($D7BD07022F54D45CA7A70F04692339C3)wordMetricsAtPoint:(SEL)a3;
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)gestureHitLink:(id)a3;
- (BOOL)handleGesture:(id)a3;
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3;
- (BOOL)hasCurrentSelection;
- (BOOL)isCompactHeight;
- (BOOL)isCompactWidth;
- (BOOL)p_allowPaging;
- (BOOL)p_handleLongPress:(id)a3;
- (BOOL)p_handleSingleTap:(id)a3;
- (BOOL)p_handleTapAtPoint:(CGPoint)a3;
- (BOOL)p_pointIsInLeftMargin:(CGPoint)a3;
- (BOOL)p_pointIsInRightMargin:(CGPoint)a3;
- (BOOL)p_zoomColumnAtPoint:(CGPoint)a3 forceWpRep:(BOOL)a4;
- (BOOL)shouldShowTextOverflowGlyphs;
- (BOOL)supportsReadingHighlights;
- (BOOL)supportsWritingHighlights;
- (BOOL)suppressDoubleTapForSelection;
- (BOOL)zoomColumnAtPoint:(CGPoint)a3;
- (BOOL)zoomToColumnWithFrame:(CGRect)a3;
- (CGPoint)maskLayerOrigin;
- (CGRect)visibleUnscaledRectForContent;
- (THAnnotationStorageController)bookAnnotationController;
- (THTextInputResponder)th_textInputResponder;
- (double)visibleHeight;
- (id)activityItemProviderForCurrentSelection;
- (id)annotationForCurrentSelection;
- (id)annotationForUUID:(id)a3;
- (id)annotationFromCurrentSelection;
- (id)bookNavigator;
- (id)canvasEditor;
- (id)documentNavigator;
- (id)hitRep:(CGPoint)a3 allowsAllReps:(BOOL)a4;
- (id)linkForHyperlinkField:(id)a3;
- (id)menuForHighlightAtLocation:(CGPoint)a3;
- (id)p_gestureHitLink:(id)a3;
- (id)textInputResponder;
- (void)addHighlight:(id)a3;
- (void)addNote:(id)a3;
- (void)beginStaticLayoutAndRender;
- (void)canvasDidLayout:(id)a3;
- (void)changeAnnotationStyle:(id)a3;
- (void)dealloc;
- (void)didBeginFreeTransform;
- (void)didEndFreeTransform;
- (void)didLayoutAndRenderOnThread;
- (void)didSetDocumentToMode:(int64_t)a3 fromMode:(int64_t)a4 animated:(BOOL)a5;
- (void)endStaticLayoutAndRender:(BOOL)a3;
- (void)handleHyperlink:(id)a3 hitRep:(id)a4;
- (void)handleHyperlinkGesture:(id)a3;
- (void)handleHyperlinkWithURL:(id)a3;
- (void)i_handleGlossaryHyperlink:(id)a3 rep:(id)a4 anchor:(id)a5;
- (void)makeRepsRecursivelyPerformSelectorIfImplemented:(SEL)a3;
- (void)navigateToNextChapter;
- (void)navigateToNextPage;
- (void)navigateToPreviousChapter;
- (void)navigateToPreviousPage;
- (void)p_adjustMaskLayerOnScrollView:(id)a3;
- (void)p_editorControllerDidChangeTextInputEditor:(id)a3;
- (void)p_handleOverscroll:(id)a3 state:(int)a4;
- (void)p_hoistMaskLayer;
- (void)p_moveMaskFromLayer:(id)a3 toLayer:(id)a4;
- (void)p_releaseOutlets;
- (void)p_trackProgressForRep:(id)a3;
- (void)p_unhoistMaskLayer;
- (void)p_updateMaskLayer;
- (void)pageLeft;
- (void)pageRight;
- (void)presentMenuAtCanvasPoint:(CGPoint)a3 forAnnotationUUID:(id)a4;
- (void)pressableRepWasPressed:(id)a3 atPoint:(CGPoint)a4;
- (void)progressDidChangeForRep:(id)a3 percent:(id)a4;
- (void)removeNote:(id)a3;
- (void)removeNoteAndHighlight:(id)a3;
- (void)resetAttemptForRep:(id)a3;
- (void)scoreDidChangeForRep:(id)a3 score:(id)a4 total:(id)a5;
- (void)scrollView:(id)a3 willAnimateToContentOffset:(CGPoint)a4;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidLayoutSubviews:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewDidScrollToTop:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)searchSelection:(id)a3;
- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)setITunesMobileContext:(id)a3;
- (void)setSelection:(id)a3 onModel:(id)a4 withFlags:(unint64_t)a5;
- (void)showDictionary:(id)a3;
- (void)showHyperlinkInfoForField:(id)a3 inRep:(id)a4 openInEditMode:(BOOL)a5;
- (void)updateBookmarkStatusAnimated:(BOOL)a3;
- (void)willBeginHandlingGesture:(id)a3;
- (void)willSetDocumentToMode:(int64_t)a3 fromMode:(int64_t)a4 animated:(BOOL)a5;
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
  v3 = [(THInteractiveCanvasController *)self textInputResponder];
  v4 = TSUDynamicCast();

  return v4;
}

- (id)textInputResponder
{
  v3 = OBJC_IVAR___TSDInteractiveCanvasController_mTextInputResponder;
  if (!*&self->TSAInteractiveCanvasController_opaque[OBJC_IVAR___TSDInteractiveCanvasController_mTextInputResponder])
  {
    v4 = [(THInteractiveCanvasController *)self layerHost];
    v5 = [v4 canvasView];

    if (v5)
    {
      v6 = [THTextInputResponder alloc];
      v7 = [(THInteractiveCanvasController *)self layerHost];
      v8 = [v7 canvasView];
      v9 = [(THTextInputResponder *)v6 initWithNextResponder:v8];
      v10 = *&self->TSAInteractiveCanvasController_opaque[v3];
      *&self->TSAInteractiveCanvasController_opaque[v3] = v9;
    }
  }

  v11 = *&self->TSAInteractiveCanvasController_opaque[v3];

  return v11;
}

- (id)hitRep:(CGPoint)a3 allowsAllReps:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = THInteractiveCanvasController;
  v6 = [(THInteractiveCanvasController *)&v10 hitRep:a3.x, a3.y];
  [(THInteractiveCanvasController *)self p_trackProgressForRep:v6];
  if (a4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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
  v2 = [(THInteractiveCanvasController *)self bookAnnotationController];
  v3 = [v2 canReadAnnotations];

  return v3;
}

- (BOOL)supportsWritingHighlights
{
  v2 = [(THInteractiveCanvasController *)self bookAnnotationController];
  v3 = [v2 canModifyAnnotations];

  return v3;
}

- (BOOL)isCompactHeight
{
  objc_opt_class();
  v3 = [(THInteractiveCanvasController *)self layerHost];
  v4 = [v3 asiOSCVC];
  v5 = TSUDynamicCast();

  v6 = [v5 traitsCache];
  LOBYTE(v4) = [v6 isCompactHeight];

  return v4;
}

- (BOOL)isCompactWidth
{
  objc_opt_class();
  v3 = [(THInteractiveCanvasController *)self layerHost];
  v4 = [v3 asiOSCVC];
  v5 = TSUDynamicCast();

  v6 = [v5 traitsCache];
  LOBYTE(v4) = [v6 isCompactWidth];

  return v4;
}

- (void)p_adjustMaskLayerOnScrollView:(id)a3
{
  if (!self->mHoistedMaskLayer)
  {
    v5 = [(THInteractiveCanvasController *)self layerHost];
    v6 = [v5 canvasLayer];
    v7 = [v6 mask];
    [v7 frame];
    v9 = v8;
    v11 = v10;

    v12 = [(THInteractiveCanvasController *)self layerHost];
    v13 = [v12 canvasLayer];
    v14 = [(THInteractiveCanvasController *)self layerHost];
    v15 = [v14 clippingLayer];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v20 = [(THInteractiveCanvasController *)self layerHost];
    v21 = [v20 clippingLayer];
    [v13 convertPoint:v21 toLayer:{v17, v19}];

    [(THInteractiveCanvasController *)self maskLayerOrigin];
    TSDAddPoints();
    v23 = v22;
    v25 = v24;
    v26 = [(THInteractiveCanvasController *)self layerHost];
    v27 = [v26 canvasLayer];
    v28 = [(THInteractiveCanvasController *)self layerHost];
    v29 = [v28 clippingLayer];
    [v27 convertRect:v29 fromLayer:{v23, v25, v9, v11}];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v40 = [(THInteractiveCanvasController *)self layerHost];
    v38 = [v40 canvasLayer];
    v39 = [v38 mask];
    [v39 setFrame:{v31, v33, v35, v37}];
  }
}

- (void)p_updateMaskLayer
{
  if (!self->mHoistedMaskLayer)
  {
    v4 = [(THInteractiveCanvasController *)self delegate];
    v14 = TSUProtocolCast();

    if (objc_opt_respondsToSelector())
    {
      v5 = [(THInteractiveCanvasController *)self layerHost];
      v6 = [v5 clippingLayer];
      [v6 bounds];
      TSDRectWithSize();
      v7 = [v14 interactiveCanvasController:self maskLayerForBounds:?];

      v8 = +[THNoAnimationLayerDelegate sharedInstance];
      [v7 setDelegate:v8];
    }

    else
    {
      v7 = 0;
    }

    v9 = [(THInteractiveCanvasController *)self maskLayer];

    if (v7 != v9)
    {
      [(THInteractiveCanvasController *)self setMaskLayer:v7];
      if (v7)
      {
        [v7 frame];
        [(THInteractiveCanvasController *)self setMaskLayerOrigin:?];
        v10 = [(THInteractiveCanvasController *)self layerHost];
        v11 = [v10 canvasLayer];
        [v11 setMask:v7];

        v12 = [(THInteractiveCanvasController *)self canvasView];
        v13 = [v12 enclosingScrollView];
        [(THInteractiveCanvasController *)self p_adjustMaskLayerOnScrollView:v13];
      }

      else
      {
        [(THInteractiveCanvasController *)self setMaskLayerOrigin:CGPointZero.x, CGPointZero.y];
        v12 = [(THInteractiveCanvasController *)self layerHost];
        v13 = [v12 canvasLayer];
        [v13 setMask:0];
      }
    }
  }
}

- (void)p_hoistMaskLayer
{
  if (!self->mHoistedMaskLayer || (+[TSUAssertionHandler currentHandler](TSUAssertionHandler, "currentHandler"), v3 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "-[THInteractiveCanvasController p_hoistMaskLayer]"), v4 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"), v5 = objc_claimAutoreleasedReturnValue(), [v3 handleFailureInFunction:v4 file:v5 lineNumber:291 description:@"mask layer has already been hoisted"], v5, v4, v3, !self->mHoistedMaskLayer))
  {
    self->mHoistedMaskLayer = 1;
    v10 = [(THInteractiveCanvasController *)self layerHost];
    v6 = [v10 canvasLayer];
    v7 = [(THInteractiveCanvasController *)self layerHost];
    v8 = [v7 clippingLayer];
    v9 = [v8 superlayer];
    [(THInteractiveCanvasController *)self p_moveMaskFromLayer:v6 toLayer:v9];
  }
}

- (void)p_unhoistMaskLayer
{
  if (self->mHoistedMaskLayer || (+[TSUAssertionHandler currentHandler](TSUAssertionHandler, "currentHandler"), v3 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "-[THInteractiveCanvasController p_unhoistMaskLayer]"), v4 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"), v5 = objc_claimAutoreleasedReturnValue(), [v3 handleFailureInFunction:v4 file:v5 lineNumber:303 description:@"mask layer hasn't been hoisted"], v5, v4, v3, self->mHoistedMaskLayer))
  {
    v6 = [(THInteractiveCanvasController *)self layerHost];
    v7 = [v6 clippingLayer];
    v8 = [v7 superlayer];
    v9 = [(THInteractiveCanvasController *)self layerHost];
    v10 = [v9 canvasLayer];
    [(THInteractiveCanvasController *)self p_moveMaskFromLayer:v8 toLayer:v10];

    self->mHoistedMaskLayer = 0;
  }
}

- (void)p_moveMaskFromLayer:(id)a3 toLayer:(id)a4
{
  v17 = a3;
  v5 = a4;
  if (v17 && v5)
  {
    v6 = [v17 mask];

    if (!v6)
    {
      v7 = +[TSUAssertionHandler currentHandler];
      v8 = [NSString stringWithUTF8String:"[THInteractiveCanvasController p_moveMaskFromLayer:toLayer:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
      [v7 handleFailureInFunction:v8 file:v9 lineNumber:316 description:@"source layer should have a mask"];
    }

    v10 = [v5 mask];

    if (v10)
    {
      v11 = +[TSUAssertionHandler currentHandler];
      v12 = [NSString stringWithUTF8String:"[THInteractiveCanvasController p_moveMaskFromLayer:toLayer:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
      [v11 handleFailureInFunction:v12 file:v13 lineNumber:317 description:@"destination layer should not have a mask"];
    }

    v14 = [v17 mask];
    [v14 frame];
    [v5 convertRect:v17 fromLayer:?];
    [v14 setFrame:?];
    [v5 setMask:v14];
    [v17 setMask:0];
  }

  else
  {
    v14 = +[TSUAssertionHandler currentHandler];
    v15 = [NSString stringWithUTF8String:"[THInteractiveCanvasController p_moveMaskFromLayer:toLayer:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
    [v14 handleFailureInFunction:v15 file:v16 lineNumber:313 description:{@"Invalid parameter not satisfying: %s", "sourceLayer != nil && destinationLayer != nil"}];
  }
}

- (void)canvasDidLayout:(id)a3
{
  v4.receiver = self;
  v4.super_class = THInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v4 canvasDidLayout:a3];
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

- (BOOL)zoomColumnAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(THInteractiveCanvasController *)self delegate];
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

- (BOOL)zoomToColumnWithFrame:(CGRect)a3
{
  TSDCenterOfRect();

  return [(THInteractiveCanvasController *)self p_zoomColumnAtPoint:1 forceWpRep:?];
}

- (id)linkForHyperlinkField:(id)a3
{
  v4 = [a3 url];
  v5 = [(THInteractiveCanvasController *)self documentRoot];
  v6 = [v4 scheme];

  if (v6)
  {
    v7 = [THModelLink alloc];
    v8 = [v4 absoluteString];
    v9 = [v5 context];
    v10 = [(THModelLink *)v7 initWithTarget:v8 context:v9];
  }

  else
  {
    v8 = [v4 absoluteString];
    if ([v8 hasPrefix:@"OPS/"])
    {
      v11 = [v8 substringFromIndex:4];

      v8 = v11;
    }

    v9 = [@"/OPS/" stringByAppendingString:v8];
    v12 = [NSString stringWithFormat:@"apub:///0/0/0%@", v9];
    v13 = [THModelLink alloc];
    v14 = [v5 context];
    v10 = [(THModelLink *)v13 initWithTarget:v12 context:v14];
  }

  return v10;
}

- (void)handleHyperlinkGesture:(id)a3
{
  v7 = a3;
  if ([v7 state] == &dword_0 + 3)
  {
    if ([v7 wasTapHold])
    {
      +[TSWPEditMenuController hideEditMenu];
    }

    objc_opt_class();
    v4 = [v7 hitRep];
    v5 = TSUDynamicCast();

    v6 = [v7 hitField];
    [(THInteractiveCanvasController *)self handleHyperlink:v6 hitRep:v5];
  }
}

- (id)bookNavigator
{
  v3 = [(THInteractiveCanvasController *)self delegate];
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
  v3 = [(THInteractiveCanvasController *)self delegate];
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

- (void)handleHyperlink:(id)a3 hitRep:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [v17 url];
  if ([v7 th_shouldSharedAppDelegateHandleURL])
  {
    v8 = +[TSKApplicationDelegate sharedDelegate];
    v9 = [(THInteractiveCanvasController *)self documentRoot];
    [v8 openURL:v7 sourceDocumentRoot:v9];
  }

  else
  {
    v8 = [(THInteractiveCanvasController *)self bookNavigator];
    v10 = [(THInteractiveCanvasController *)self documentNavigator];
    v9 = v10;
    if (v8 && v10)
    {
      v11 = [v17 parentStorage];
      v12 = [v9 linkForURL:v7 inStorage:v11];

      v13 = [v8 anchorFromLink:v12];
      objc_opt_class();
      v14 = TSUDynamicCast();
      v15 = [v14 glossaryEntry];

      if (v15)
      {
        [(THInteractiveCanvasController *)self i_handleGlossaryHyperlink:v17 rep:v6 anchor:v14];
      }

      else
      {
        v16 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];
        [v16 endUISession];

        [v8 recordOutgoingMajorNavigationJump];
        [v8 followLink:v12];
      }
    }
  }
}

- (void)handleHyperlinkWithURL:(id)a3
{
  v11 = a3;
  if ([v11 th_shouldSharedAppDelegateHandleURL])
  {
    v4 = +[TSKApplicationDelegate sharedDelegate];
    [v4 openURL:v11];
  }

  else
  {
    v4 = [(THInteractiveCanvasController *)self bookNavigator];
    v5 = [(THInteractiveCanvasController *)self documentNavigator];
    v6 = v5;
    if (v4 && v5)
    {
      v7 = [(THInteractiveCanvasController *)self documentNavigator];
      v8 = [v7 currentContentNode];

      v9 = [v6 linkForURL:v11 inContentNode:v8];
      v10 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];
      [v10 endUISession];

      [v4 recordOutgoingMajorNavigationJump];
      [v4 followLink:v9];
    }
  }
}

- (BOOL)gestureHitLink:(id)a3
{
  v3 = [(THInteractiveCanvasController *)self p_gestureHitLink:a3];
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
  v2 = [(THInteractiveCanvasController *)self documentRoot];
  v3 = [v2 annotationController];

  return v3;
}

- (void)setSelection:(id)a3 onModel:(id)a4 withFlags:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = THInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v5 setSelection:a3 onModel:a4 withFlags:a5 & 0xFFFFFFFFFFFFFFAFLL];
}

- (void)updateBookmarkStatusAnimated:(BOOL)a3
{
  v3 = &selRef_updateBookmarkStatusAnimated;
  if (!a3)
  {
    v3 = &selRef_updateBookmarkStatus;
  }

  [(THInteractiveCanvasController *)self makeRepsRecursivelyPerformSelectorIfImplemented:*v3];
}

- (void)makeRepsRecursivelyPerformSelectorIfImplemented:(SEL)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(THInteractiveCanvasController *)self canvas];
  v5 = [v4 topLevelReps];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) recursivelyPerformSelectorIfImplemented:a3];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
    v11 = [(THInteractiveCanvasController *)self layerHost];
    v12 = [v11 canvasLayer];
    [v12 bounds];
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
  v2 = [(THInteractiveCanvasController *)self canvasView];
  v3 = [v2 enclosingScrollView];
  v4 = [v3 layer];
  [v4 bounds];
  Height = CGRectGetHeight(v7);

  return Height;
}

- (void)beginStaticLayoutAndRender
{
  self->mWasThreadedLayoutAndRenderEnabled = [(THInteractiveCanvasController *)self allowLayoutAndRenderOnThread];
  [(THInteractiveCanvasController *)self setAllowLayoutAndRenderOnThread:1];
  [(THInteractiveCanvasController *)self setStaticLayoutAndRenderOnThread:1];
  v5 = [(THInteractiveCanvasController *)self canvasView];
  v3 = [v5 enclosingScrollView];
  v4 = [v3 layer];
  [v4 setOpacity:0.0];
}

- (void)endStaticLayoutAndRender:(BOOL)a3
{
  v3 = a3;
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
    if (v3)
    {
      +[CATransaction flush];
    }

    v11 = [(THInteractiveCanvasController *)self canvasView];
    v8 = [v11 enclosingScrollView];
    v9 = [v8 layer];
    LODWORD(v10) = 1.0;
    [v9 setOpacity:v10];
  }
}

- (void)didBeginFreeTransform
{
  [(THInteractiveCanvasController *)self endEditing];
  v3 = [(THInteractiveCanvasController *)self canvas];
  v4 = [v3 topLevelReps];
  v5 = [v4 copy];

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

  v11 = [(THInteractiveCanvasController *)self delegate];
  v12 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v12 interactiveCanvasControllerFreeTransformWillBegin:self];
  }
}

- (void)didEndFreeTransform
{
  v3 = [(THInteractiveCanvasController *)self canvas];
  v4 = [v3 topLevelReps];
  v5 = [v4 copy];

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

  v11 = [(THInteractiveCanvasController *)self delegate];
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
    v3 = [(THInteractiveCanvasController *)self canvasView];
    v4 = [v3 enclosingScrollView];
    v5 = [v4 layer];
    LODWORD(v6) = 1.0;
    [v5 setOpacity:v6];

    +[CATransaction flush];
  }
}

- (id)canvasEditor
{
  v3 = OBJC_IVAR___TSDInteractiveCanvasController_mCanvasEditor;
  if (!*&self->TSAInteractiveCanvasController_opaque[OBJC_IVAR___TSDInteractiveCanvasController_mCanvasEditor])
  {
    v6 = [(THInteractiveCanvasController *)self documentRoot];
    if (v6)
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

- (void)setITunesMobileContext:(id)a3
{
  v4 = a3;
  if (v4 && self->miTunesMobileContext)
  {
    v5 = +[TSUAssertionHandler currentHandler];
    v6 = [NSString stringWithUTF8String:"[THInteractiveCanvasController setITunesMobileContext:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:677 description:@"context does not support simultaneous uses"];
  }

  miTunesMobileContext = self->miTunesMobileContext;
  self->miTunesMobileContext = v4;
}

- ($D7BD07022F54D45CA7A70F04692339C3)wordMetricsAtPoint:(SEL)a3
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

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  objc_opt_class();
  v6 = [(THInteractiveCanvasController *)self hitRep:x, y];
  v7 = TSUDynamicCast();

  v8 = [v7 highlightController];
  v9 = [v8 isCanvasPointOnHighlight:{x, y}];

  if (v9)
  {
    v10 = [v7 highlightController];
    [v10 showHighlightEditorForHighlightAtPoint:{x, y}];
  }

  else
  {
    v11 = [(THInteractiveCanvasController *)self delegate];
    v10 = TSUProtocolCast();

    if (objc_opt_respondsToSelector())
    {
      [v10 interactiveCanvasControllerWasTapped:self];
    }
  }

  [(THInteractiveCanvasController *)self endEditing];
  return 1;
}

- (void)i_handleGlossaryHyperlink:(id)a3 rep:(id)a4 anchor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(THInteractiveCanvasController *)self layerHost];
  v17 = TSUProtocolCast();

  v12 = [v8 glossaryEntry];

  v13 = [v12 term];
  v14 = [v10 range];
  v16 = v15;

  [v17 presentGlossaryPopoverOfType:0 withTerm:v13 rangeInRep:v14 rep:{v16, v9}];
  [(THInteractiveCanvasController *)self endEditing];
}

- (BOOL)p_handleTapAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  objc_opt_class();
  v6 = [(THInteractiveCanvasController *)self hitRep:1 allowsAllReps:x, y];
  v7 = TSUDynamicCast();

  v8 = [v7 highlightController];
  v9 = [v8 isCanvasPointOnHighlight:{x, y}];
  if (v9)
  {
    v10 = [(THInteractiveCanvasController *)self supportsWritingHighlights];

    if (!v10)
    {
      LOBYTE(v9) = 0;
      goto LABEL_6;
    }

    v8 = [v7 highlightController];
    [v8 showHighlightMenuForHighlightAtPoint:{x, y}];
  }

LABEL_6:
  return v9;
}

- (id)menuForHighlightAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  objc_opt_class();
  v6 = [(THInteractiveCanvasController *)self hitRep:1 allowsAllReps:x, y];
  v7 = TSUDynamicCast();

  v8 = [v7 highlightController];
  if (![v8 isCanvasPointOnHighlight:{x, y}])
  {
    v10 = 0;
    goto LABEL_5;
  }

  v9 = [(THInteractiveCanvasController *)self supportsWritingHighlights];

  if (v9)
  {
    v8 = [v7 highlightController];
    v10 = [v8 editMenuForHighlightAtPoint:{x, y}];
LABEL_5:

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (BOOL)p_handleLongPress:(id)a3
{
  v4 = a3;
  v5 = [v4 gestureState];
  switch(v5)
  {
    case 3u:
      if (![(THInteractiveCanvasController *)self selectOnLongPress])
      {
        break;
      }

      [v4 unscaledLocationForICC:self];
      v15 = v14;
      v17 = v16;
      objc_opt_class();
      v18 = [(THInteractiveCanvasController *)self hitRep:1 allowsAllReps:v15, v17];
      v11 = TSUDynamicCast();

      if ([v11 shouldBeginEditingWithGesture:v4])
      {
        v19 = [v11 highlightController];
        v20 = [v19 isCanvasPointOnHighlight:{v15, v17}];

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
      [v4 unscaledLocationForICC:self];
      v7 = v6;
      v9 = v8;
      objc_opt_class();
      v10 = [(THInteractiveCanvasController *)self hitRep:1 allowsAllReps:v7, v9];
      v11 = TSUDynamicCast();

      v12 = [v11 highlightController];
      v13 = [v12 currentDragAnnotation];
      [(THInteractiveCanvasController *)self setSelectOnLongPress:v13 == 0];

LABEL_6:
      break;
    case 1u:
      [(THInteractiveCanvasController *)self setSelectOnLongPress:1];
      break;
  }

  return 1;
}

- (void)willSetDocumentToMode:(int64_t)a3 fromMode:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  objc_opt_class();
  v9 = [(THInteractiveCanvasController *)self layerHost];
  v10 = [v9 asiOSCVC];
  v11 = TSUDynamicCast();

  v12 = [v11 hyperlinkGestureRecognizer];
  v13 = [v12 isEnabled];

  v15.receiver = self;
  v15.super_class = THInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v15 willSetDocumentToMode:a3 fromMode:a4 animated:v5];
  v14 = [v11 hyperlinkGestureRecognizer];
  [v14 setEnabled:v13];
}

- (void)didSetDocumentToMode:(int64_t)a3 fromMode:(int64_t)a4 animated:(BOOL)a5
{
  v6.receiver = self;
  v6.super_class = THInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v6 didSetDocumentToMode:a3 fromMode:a4 animated:a5];
  [(THInteractiveCanvasController *)self disableNormalGestures];
}

- (void)navigateToPreviousChapter
{
  v2 = [(THInteractiveCanvasController *)self documentNavigator];
  [v2 navigateByBookDirection:2 bookGranularity:3];
}

- (void)navigateToNextChapter
{
  v2 = [(THInteractiveCanvasController *)self documentNavigator];
  [v2 navigateByBookDirection:1 bookGranularity:3];
}

- (void)navigateToPreviousPage
{
  v2 = [(THInteractiveCanvasController *)self documentNavigator];
  [v2 navigateByBookDirection:2 bookGranularity:1];
}

- (void)navigateToNextPage
{
  v2 = [(THInteractiveCanvasController *)self documentNavigator];
  [v2 navigateByBookDirection:1 bookGranularity:1];
}

- (void)showDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(THInteractiveCanvasController *)self editorController];
  v6 = [v5 textInputEditor];
  v7 = TSUDynamicCast();

  [v7 showDictionary:v4];
}

- (void)searchSelection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(THInteractiveCanvasController *)self editorController];
  v6 = [v5 textInputEditor];
  v7 = TSUDynamicCast();

  [v7 searchSelection:v4];
}

- (void)addNote:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(THInteractiveCanvasController *)self editorController];
  v6 = [v5 textInputEditor];
  v7 = TSUDynamicCast();

  [v7 addNote:v4];
}

- (void)addHighlight:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(THInteractiveCanvasController *)self editorController];
  v6 = [v5 textInputEditor];
  v8 = TSUDynamicCast();

  v7 = [(THInteractiveCanvasController *)self bookAnnotationController];
  [v8 addHighlightWithStyle:objc_msgSend(v7 forSender:{"currentAnnotationStyle"), v4}];
}

- (void)removeNote:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(THInteractiveCanvasController *)self editorController];
  v6 = [v5 textInputEditor];
  v7 = TSUDynamicCast();

  [v7 removeNote:v4];
}

- (void)removeNoteAndHighlight:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(THInteractiveCanvasController *)self editorController];
  v6 = [v5 textInputEditor];
  v7 = TSUDynamicCast();

  [v7 removeNoteAndHighlight:v4];
}

- (void)changeAnnotationStyle:(id)a3
{
  v14 = a3;
  objc_opt_class();
  v4 = [(THInteractiveCanvasController *)self editorController];
  v5 = [v4 textInputEditor];
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
    v10 = [v7 propertyList];
    v11 = [v10 objectForKeyedSubscript:@"style"];

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

      [v6 addHighlightWithStyle:v13 forSender:v14];
      [v6 setSelection:0];
    }
  }
}

- (void)presentMenuAtCanvasPoint:(CGPoint)a3 forAnnotationUUID:(id)a4
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v7 = [(THInteractiveCanvasController *)self delegate];
  v8 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v8 interactiveCanvasController:self wantsToPresentContextMenuAtCanvasPoint:v9 forAnnotationUUID:{x, y}];
  }
}

- (BOOL)hasCurrentSelection
{
  objc_opt_class();
  v3 = [(THInteractiveCanvasController *)self editorController];
  v4 = [v3 textInputEditor];
  v5 = TSUDynamicCast();

  if (v5)
  {
    v6 = [v5 stringFromSelection];
    v7 = [v6 length] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)annotationForUUID:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(THInteractiveCanvasController *)self editorController];
  v6 = [v5 textInputEditor];
  v7 = TSUDynamicCast();

  if (v7)
  {
    v8 = [v7 annotationForUUID:v4];
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
  v3 = [(THInteractiveCanvasController *)self editorController];
  v4 = [v3 textInputEditor];
  v5 = TSUDynamicCast();

  if (v5)
  {
    v6 = [v5 annotationForCurrentSelection];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)annotationFromCurrentSelection
{
  objc_opt_class();
  v3 = [(THInteractiveCanvasController *)self editorController];
  v4 = [v3 textInputEditor];
  v5 = TSUDynamicCast();

  if (v5)
  {
    v6 = [v5 annotationFromCurrentSelection];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)activityItemProviderForCurrentSelection
{
  objc_opt_class();
  v3 = [(THInteractiveCanvasController *)self editorController];
  v4 = [v3 textInputEditor];
  v5 = TSUDynamicCast();

  if (v5)
  {
    v6 = [v5 activityItemProviderForCurrentSelection];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)p_gestureHitLink:(id)a3
{
  [a3 unscaledLocationForICC:self];
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

- (BOOL)canHandleGesture:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(THInteractiveCanvasController *)self editorController];
  v6 = [v5 textInputEditor];
  v7 = TSUDynamicCast();

  v8 = [v4 gestureKind];
  if (v8 == TSWPImmediateSingleTap)
  {
    v10 = [(THInteractiveCanvasController *)self p_gestureHitLink:v4];
    if (v10)
    {
      v45.receiver = self;
      v45.super_class = THInteractiveCanvasController;
      v9 = [(THInteractiveCanvasController *)&v45 canHandleGesture:v4];
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

  v11 = [v4 gestureKind];
  v12 = v11;
  if (v7)
  {
    v13 = TSWPLongPress;

    if (v12 != v13)
    {
      v44.receiver = self;
      v44.super_class = THInteractiveCanvasController;
      if (([(THInteractiveCanvasController *)&v44 canHandleGesture:v4]| v9))
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v15 = (v11 == TSWPTapAndTouch) | v9;

    if (v15)
    {
LABEL_10:
      v14 = 1;
      goto LABEL_33;
    }
  }

  v16 = [v4 gestureKind];
  if (v16 == TSDShortTap)
  {
    goto LABEL_18;
  }

  v17 = [v4 gestureKind];
  v18 = v17;
  if (v17 == TSDDelayedShortTap)
  {

LABEL_18:
    goto LABEL_19;
  }

  v19 = [v4 gestureKind];
  v20 = TSWPLongPress;

  if (v19 == v20)
  {
LABEL_19:
    v23 = [(THInteractiveCanvasController *)self delegate];
    v24 = TSUProtocolCast();

    [v4 unscaledLocationForICC:self];
    v26 = v25;
    v28 = v27;
    v29 = [(THInteractiveCanvasController *)self hitRep:?];
    objc_opt_class();
    v30 = TSUDynamicCast();
    v31 = [v4 gestureKind];
    v32 = TSWPLongPress;

    if (v31 != v32 || !v30)
    {
      if (v30)
      {
        v33 = [v4 gestureKind];
        v34 = TSDDelayedShortTap;

        if (v33 != v34)
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

  v21 = [v4 gestureKind];
  v22 = TSDFreeTransform;

  if (v21 == v22)
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

- (BOOL)handleGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 gestureKind];
  v6 = v5;
  if (v5 == TSDShortTap)
  {
  }

  else
  {
    v7 = [v4 gestureKind];
    v8 = TSDDelayedShortTap;

    if (v7 != v8)
    {
      v9 = [v4 gestureKind];
      v10 = TSWPLongPress;

      if (v9 == v10)
      {
        if ([(THInteractiveCanvasController *)self p_handleLongPress:v4])
        {
          goto LABEL_23;
        }
      }

      else
      {
        v11 = [v4 gestureKind];
        v12 = TSDFreeTransform;

        if (v11 == v12)
        {
          v13 = [v4 gestureState];
          objc_opt_class();
          v14 = TSUDynamicCast();
          if (v14)
          {
            objc_opt_class();
            v15 = [(THInteractiveCanvasController *)self documentRoot];
            v16 = TSUDynamicCast();

            v17 = +[THApplePubAssetPlugin sharedPlugin];
            v18 = [v17 existingBookViewControllerForDocumentRoot:v16];

            v19 = [v18 canvasExitFreeTransformController];
            v20 = v19;
            if (v13 == 1)
            {
              v21 = [v14 freeTransformDelegate];

              if (v21 != v20)
              {
                v22 = +[TSUAssertionHandler currentHandler];
                v23 = [NSString stringWithUTF8String:"[THInteractiveCanvasController handleGesture:]"];
                v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
                [v22 handleFailureInFunction:v23 file:v24 lineNumber:1134 description:@"Expected the gesture free transform delegate to be the canvas exit FTC."];
              }

              v25 = [v18 canvasExitFreeTransformController];
              [v14 setFreeTransformDelegate:v25];

              [v20 setTransformGR:v14];
              [v20 transformGRChanged:v14];
            }

            else
            {
              [v19 transformGRChanged:v14];
              if (v13 - 3 <= 1)
              {
                v46 = [v20 transformGR];
                [v46 setFreeTransformDelegate:0];

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

  if ([(THInteractiveCanvasController *)self p_handleSingleTap:v4])
  {
    goto LABEL_23;
  }

LABEL_12:
  v26 = [v4 gestureKind];
  v27 = TSWPImmediateSingleTap;

  if (v26 == v27)
  {
    [v4 unscaledLocationForICC:self];
    v29 = v28;
    v31 = v30;
    v32 = [(THInteractiveCanvasController *)self p_gestureHitLink:v4];
    if (v32)
    {

      goto LABEL_15;
    }

    objc_opt_class();
    v34 = [(THInteractiveCanvasController *)self editorController];
    v35 = [v34 textInputEditor];
    v36 = TSUDynamicCast();

    v63[0] = 0;
    v63[1] = v63;
    v63[2] = 0x3032000000;
    v63[3] = sub_2E368;
    v63[4] = sub_2E378;
    v37 = self;
    v64 = v37;
    objc_opt_class();
    v38 = [(THInteractiveCanvasController *)v37 layerHost];
    v39 = [v38 asiOSCVC];
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
    v51 = v37;
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
  v33 = [(THInteractiveCanvasController *)&v48 handleGesture:v4];
LABEL_24:

  return v33;
}

- (void)willBeginHandlingGesture:(id)a3
{
  v19 = a3;
  v4 = [v19 gestureKind];
  v5 = TSDFreeTransform;

  if (v4 == v5)
  {
    objc_opt_class();
    v6 = [(THInteractiveCanvasController *)self documentRoot];
    v7 = TSUDynamicCast();

    v8 = +[THApplePubAssetPlugin sharedPlugin];
    v9 = [v8 existingBookViewControllerForDocumentRoot:v7];

    v10 = [v9 canvasExitFreeTransformController];
    objc_opt_class();
    v11 = TSUDynamicCast();
    v12 = [v11 freeTransformDelegate];
    if (v12)
    {
      v13 = v12;
      v14 = [v11 freeTransformDelegate];

      if (v14 != v10)
      {
        v15 = +[TSUAssertionHandler currentHandler];
        v16 = [NSString stringWithUTF8String:"[THInteractiveCanvasController willBeginHandlingGesture:]"];
        v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THInteractiveCanvasController.m"];
        [v15 handleFailureInFunction:v16 file:v17 lineNumber:1219 description:@"Overriding existing delegate."];
      }
    }

    v18 = [v9 canvasExitFreeTransformController];
    [v11 setFreeTransformDelegate:v18];
  }
}

- (void)showHyperlinkInfoForField:(id)a3 inRep:(id)a4 openInEditMode:(BOOL)a5
{
  v7 = a4;
  v8 = a3;
  objc_opt_class();
  v9 = TSUDynamicCast();

  [(THInteractiveCanvasController *)self handleHyperlink:v8 hitRep:v9];
}

- (void)pressableRepWasPressed:(id)a3 atPoint:(CGPoint)a4
{
  v26 = a3;
  v5 = [(THInteractiveCanvasController *)self delegate];
  v6 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    v7 = [v26 pressableAction];
    if (v7 == 3)
    {
      objc_opt_class();
      v13 = [v26 info];
      v10 = TSUDynamicCast();

      v11 = [v10 hyperlinkURL];
      if (v11)
      {
        [(THInteractiveCanvasController *)self performSelectorOnMainThread:"handleHyperlinkWithURL:" withObject:v11 waitUntilDone:0];
      }
    }

    else
    {
      v8 = v7;
      if (v7 == 2)
      {
        if (!v6)
        {
          goto LABEL_22;
        }

        v12 = [v26 pressableAnimationLayer];
        [v12 removeAllAnimations];

        if (objc_opt_respondsToSelector())
        {
          [v26 expandableRep];
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

      if (v7 != 1)
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

      v9 = [v26 info];
      v10 = TSUProtocolCast();

      v11 = [v10 popUpInfo];
      if (v11)
      {
        if (objc_opt_respondsToSelector())
        {
          [v26 frameForPopupInUnscaledCanvas];
        }

        else
        {
          [v26 frameInUnscaledCanvas];
        }

        [(THInteractiveCanvasController *)self convertUnscaledToBoundsRect:?];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = [(THInteractiveCanvasController *)self canvasView];
        v25 = [v24 layer];
        [v6 presentPopoverForPopUpInfo:v11 withFrame:v25 inLayer:{v17, v19, v21, v23}];
      }
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (void)progressDidChangeForRep:(id)a3 percent:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(THInteractiveCanvasController *)self delegate];
  v8 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v8 interactiveCanvasController:self progressDidChangeForRep:v9 percent:v6];
  }
}

- (void)scoreDidChangeForRep:(id)a3 score:(id)a4 total:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(THInteractiveCanvasController *)self delegate];
  v11 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v11 interactiveCanvasController:self scoreDidChangeForRep:v12 score:v8 total:v9];
  }
}

- (void)resetAttemptForRep:(id)a3
{
  v6 = a3;
  v4 = [(THInteractiveCanvasController *)self delegate];
  v5 = TSUProtocolCast();

  if (objc_opt_respondsToSelector())
  {
    [v5 interactiveCanvasController:self resetAttemptForRep:v6];
  }
}

- (void)p_trackProgressForRep:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4)
  {
    v5 = v4;
    do
    {
      if ([v5 conformsToProtocol:&OBJC_PROTOCOL___BCProgressTracking])
      {
        break;
      }

      v6 = [v5 parentRep];

      v5 = v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  v7 = TSUClassAndProtocolCast();
  if (v7)
  {
    v8 = [(THInteractiveCanvasController *)self delegate];
    v9 = TSUProtocolCast();

    if (objc_opt_respondsToSelector())
    {
      [v9 interactiveCanvasController:self activateProgressForRep:v7];
    }
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v5.receiver = self;
  v5.super_class = THInteractiveCanvasController;
  v4 = a3;
  [(THInteractiveCanvasController *)&v5 scrollViewDidScroll:v4];
  [(THInteractiveCanvasController *)self p_handleOverscroll:v4 state:0, v5.receiver, v5.super_class];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(THInteractiveCanvasController *)self p_adjustMaskLayerOnScrollView:v4];

  +[CATransaction commit];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  if (![(THInteractiveCanvasController *)self isOverscrolling])
  {
    v10.receiver = self;
    v10.super_class = THInteractiveCanvasController;
    [(THInteractiveCanvasController *)&v10 scrollViewWillEndDragging:v9 withVelocity:a5 targetContentOffset:x, y];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = THInteractiveCanvasController;
  v6 = a3;
  [(THInteractiveCanvasController *)&v7 scrollViewDidEndDragging:v6 willDecelerate:v4];
  [(THInteractiveCanvasController *)self p_handleOverscroll:v6 state:2, v7.receiver, v7.super_class];
}

- (void)scrollViewDidLayoutSubviews:(id)a3
{
  v9 = a3;
  v4 = [(THInteractiveCanvasController *)self maskLayer];
  if (v4)
  {
    v5 = v4;
    v6 = [(THInteractiveCanvasController *)self layerHost];
    v7 = [v6 canvasLayer];
    v8 = [v7 mask];

    if (v8)
    {
      +[CATransaction begin];
      [CATransaction setDisableActions:1];
      [(THInteractiveCanvasController *)self p_adjustMaskLayerOnScrollView:v9];
      +[CATransaction commit];
    }
  }
}

- (void)scrollView:(id)a3 willAnimateToContentOffset:(CGPoint)a4
{
  v5.receiver = self;
  v5.super_class = THInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v5 scrollView:a3 willAnimateToContentOffset:a4.x, a4.y];
  [(THInteractiveCanvasController *)self p_hoistMaskLayer];
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v5.receiver = self;
  v5.super_class = THInteractiveCanvasController;
  v4 = a3;
  [(THInteractiveCanvasController *)&v5 scrollViewDidEndScrollingAnimation:v4];
  [(THInteractiveCanvasController *)self p_handleOverscroll:v4 state:3, v5.receiver, v5.super_class];

  [(THInteractiveCanvasController *)self p_unhoistMaskLayer];
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v5.receiver = self;
  v5.super_class = THInteractiveCanvasController;
  v4 = a3;
  [(THInteractiveCanvasController *)&v5 scrollViewDidEndDecelerating:v4];
  [(THInteractiveCanvasController *)self p_handleOverscroll:v4 state:3, v5.receiver, v5.super_class];
}

- (void)scrollViewDidScrollToTop:(id)a3
{
  v4.receiver = self;
  v4.super_class = THInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v4 scrollViewDidScrollToTop:a3];
  [(THInteractiveCanvasController *)self p_unhoistMaskLayer];
}

- (void)setContentOffset:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  [(THInteractiveCanvasController *)self convertUnscaledToBoundsPoint:a3.x, a3.y];
  v7 = v6;
  v9 = v8;
  v11 = [(THInteractiveCanvasController *)self canvasView];
  v10 = [v11 enclosingScrollView];
  [v10 setContentOffset:v4 animated:{v7, v9}];
}

- (void)p_handleOverscroll:(id)a3 state:(int)a4
{
  v4 = *&a4;
  v31 = a3;
  v6 = [(THInteractiveCanvasController *)self delegate];
  v7 = TSUProtocolCast();

  if (objc_opt_respondsToSelector() & 1) != 0 && ([v7 interactiveCanvasControllerShouldIgnoreOverscroll:self])
  {
    v8 = 0;
  }

  else
  {
    [v31 contentOffset];
    v10 = v9;
    v12 = v11;
    [v31 contentSize];
    v14 = v10 - v13;
    [v31 frame];
    v16 = v14 + v15;
    [v31 contentSize];
    v18 = v12 - v17;
    [v31 frame];
    v20 = v18 + v19;
    [v31 contentInset];
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

- (BOOL)p_handleSingleTap:(id)a3
{
  [a3 unscaledLocationForICC:self];
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
  v2 = self;
  v3 = [(THInteractiveCanvasController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(THInteractiveCanvasController *)v2 delegate];
    LOBYTE(v2) = [v4 interactiveCanvasControllerAllowPaging:v2];
  }

  else
  {
    LODWORD(v2) = [(THInteractiveCanvasController *)v2 currentlyScrolling]^ 1;
  }

  return v2;
}

- (void)pageLeft
{
  if ([(THInteractiveCanvasController *)self p_allowPaging])
  {
    v3 = +[AETestDriver shared];
    [v3 postEvent:kBETestDriverPageTurnStart sender:self];
    [v3 postEvent:kBETestDriverPageTurnSetupStart sender:self];
    v4 = [(THInteractiveCanvasController *)self canvasView];
    v5 = [v4 enclosingScrollView];

    [v5 contentOffset];
    v7 = v6;
    v9 = v8;
    [v5 bounds];
    v11 = v10;
    v12 = v7 - v10;
    [v5 contentSize];
    if (v11 > 0.0)
    {
      v14 = v13;
      if ([v5 isPagingEnabled])
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
    v18 = [(THInteractiveCanvasController *)self canvasView];
    v19 = [v18 enclosingScrollView];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_2F7A0;
    v21[3] = &unk_45ADB0;
    v22 = v3;
    v23 = self;
    v20 = v3;
    [v19 setContentOffset:1 animated:v21 completionBlock:{v12, v9}];
  }
}

- (void)pageRight
{
  if ([(THInteractiveCanvasController *)self p_allowPaging])
  {
    v3 = +[AETestDriver shared];
    [v3 postEvent:kBETestDriverPageTurnStart sender:self];
    [v3 postEvent:kBETestDriverPageTurnSetupStart sender:self];
    v4 = [(THInteractiveCanvasController *)self canvasView];
    v5 = [v4 enclosingScrollView];

    [v5 contentOffset];
    v7 = v6;
    v9 = v8;
    [v5 bounds];
    v11 = v10;
    v12 = v7 + v10;
    [v5 contentSize];
    if (v11 > 0.0)
    {
      v14 = v13;
      if ([v5 isPagingEnabled])
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
    v18 = [(THInteractiveCanvasController *)self canvasView];
    v19 = [v18 enclosingScrollView];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_2F9D8;
    v21[3] = &unk_45ADB0;
    v22 = v3;
    v23 = self;
    v20 = v3;
    [v19 setContentOffset:1 animated:v21 completionBlock:{v12, v9}];
  }
}

- (BOOL)p_pointIsInLeftMargin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(THInteractiveCanvasController *)self delegate];
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

- (BOOL)p_pointIsInRightMargin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(THInteractiveCanvasController *)self delegate];
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

- (BOOL)p_zoomColumnAtPoint:(CGPoint)a3 forceWpRep:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  if (a4)
  {
    [(THInteractiveCanvasController *)self hitRep:0 withGesture:&stru_45B6F0 passingTest:a3.x, a3.y];
  }

  else
  {
    [(THInteractiveCanvasController *)self hitRep:1 allowsAllReps:a3.x, a3.y];
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
    v19 = [(THInteractiveCanvasController *)self delegate];
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
        v32 = [(THInteractiveCanvasController *)self zoomToFitRect:0 outset:1 fitWidthOnly:1 centerHorizontally:0 centerVertically:1 animated:v22, v14, width, height];
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
      v28 = [v8 layout];
      v29 = [v28 pageLayout];

      if (v29)
      {
        [v29 frameInRoot];
      }

      v30 = [(THInteractiveCanvasController *)self layerHost];
      v31 = [v30 canvasLayer];
      [v31 minimumPinchViewScale];
      [THInteractiveCanvasController setViewScale:"setViewScale:contentOffset:clampOffset:animated:" contentOffset:1 clampOffset:1 animated:?];
    }

    v32 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v32 = 0;
LABEL_20:

  return v32;
}

- (void)p_editorControllerDidChangeTextInputEditor:(id)a3
{
  v4 = a3;
  if (TSUSupportsTextInteraction())
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_3001C;
    v8[3] = &unk_45ADB0;
    v9 = v4;
    v10 = self;
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