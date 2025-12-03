@interface THPageRep
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)handleGesture:(id)gesture;
- (BOOL)p_hasBookmark;
- (BOOL)p_isToggleBookmarkGesture:(id)gesture;
- (BOOL)p_shouldShowBookmark;
- (CGRect)p_bookmarkLayerFrame;
- (THPageRep)initWithLayout:(id)layout canvas:(id)canvas;
- (id)childRepsForHitTesting;
- (id)hitRep:(CGPoint)rep;
- (id)hitRep:(CGPoint)rep withGesture:(id)gesture passingTest:(id)test;
- (id)marginNoteForAnnotation:(id)annotation inRep:(id)rep highlightBounds:(CGRect)bounds;
- (int)marginNoteSideForPageRelativeRect:(CGRect)rect;
- (void)addAdditionalChildLayersToArray:(id)array;
- (void)dealloc;
- (void)didUpdateLayer:(id)layer;
- (void)drawInLayerContext:(CGContext *)context;
- (void)insertChildRep:(id)rep atIndex:(unint64_t)index;
- (void)p_setHasBookmark:(BOOL)bookmark;
- (void)p_updateBookmarkStatusAnimated:(BOOL)animated;
- (void)removeChildRep:(id)rep;
- (void)setChildReps:(id)reps;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)showEditorForMarginNote:(id)note;
- (void)updateBookmarkStatus;
- (void)updateBookmarkStatusAnimated;
- (void)updateBookmarkVisibleState;
- (void)updateFromLayout;
- (void)viewScaleDidChange;
@end

@implementation THPageRep

- (THPageRep)initWithLayout:(id)layout canvas:(id)canvas
{
  [layout info];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v13.receiver = self;
  v13.super_class = THPageRep;
  v7 = [(THPageRep *)&v13 initWithLayout:layout canvas:canvas];
  if (v7)
  {
    [(THPageRep *)v7 setMarginNotesController:objc_alloc_init(THMarginNotesController)];
    [objc_msgSend(-[THPageRep layout](v7 "layout")];
    [(THMarginNotesController *)[(THPageRep *)v7 marginNotesController] setOwnerSize:v8, v9];
    [canvas viewScale];
    [(THMarginNotesController *)[(THPageRep *)v7 marginNotesController] setOwnerScale:v10];
    if ([-[THPageRep layout](v7 "layout")] && (objc_msgSend(objc_msgSend(-[THPageRep layout](v7, "layout"), "layoutController"), "isCompactWidth") & 1) != 0)
    {
      v11 = &dword_0 + 1;
    }

    else
    {
      v11 = [-[THPageRep layout](v7 "layout")];
    }

    [(THMarginNotesController *)[(THPageRep *)v7 marginNotesController] setCompactPresentation:v11];
    v7->mBookmarkStatusDirty = 1;
  }

  return v7;
}

- (void)dealloc
{
  [(THPageRep *)self setMarginNotesController:0];

  v3.receiver = self;
  v3.super_class = THPageRep;
  [(THPageRep *)&v3 dealloc];
}

- (void)viewScaleDidChange
{
  [-[THPageRep canvas](self "canvas")];
  [(THMarginNotesController *)[(THPageRep *)self marginNotesController] setOwnerScale:v3];
  v4.receiver = self;
  v4.super_class = THPageRep;
  [(THPageRep *)&v4 viewScaleDidChange];
}

- (void)didUpdateLayer:(id)layer
{
  v7.receiver = self;
  v7.super_class = THPageRep;
  [(THPageRep *)&v7 didUpdateLayer:?];
  if ([(THPageRep *)self drawsPageBackground])
  {
    [layer setOpaque:1];
    if ([objc_msgSend(-[THPageRep interactiveCanvasController](self "interactiveCanvasController")])
    {
      Copy = CGColorCreateCopy([objc_msgSend(objc_msgSend(-[THPageRep interactiveCanvasController](self "interactiveCanvasController")]);
    }

    else
    {
      Copy = TSUCGColorCreateDeviceRGB();
    }

    v6 = Copy;
    [layer setBackgroundColor:Copy];
    CGColorRelease(v6);
  }
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  if (!CGRectIsEmpty(rect))
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[THPageRep setNeedsDisplayInRect:]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THPageRep.mm"];

    [v3 handleFailureInFunction:v4 file:v5 lineNumber:148 description:{@"this method should never be called, and page reps should never get a bitmap allocated"}];
  }
}

- (void)drawInLayerContext:(CGContext *)context
{
  v3 = +[TSUAssertionHandler currentHandler];
  v4 = [NSString stringWithUTF8String:"[THPageRep drawInLayerContext:]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THPageRep.mm"];

  [v3 handleFailureInFunction:v4 file:v5 lineNumber:158 description:{@"this method should never be called, and page reps should never get a bitmap allocated"}];
}

- (id)hitRep:(CGPoint)rep
{
  y = rep.y;
  x = rep.x;
  v21.receiver = self;
  v21.super_class = THPageRep;
  v6 = [(THPageRep *)&v21 hitRep:?];
  if (v6 != self)
  {
    return v6;
  }

  interactiveCanvasController = [(THPageRep *)self interactiveCanvasController];
  [interactiveCanvasController convertBoundsToUnscaledSize:{kTextMarginHitSlop[0], kTextMarginHitSlop[1]}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(THPageRep *)self hitReps:x withSlop:y, v10, v11, 0];
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (!v13)
  {
    return v6;
  }

  v14 = v13;
  v15 = *v18;
LABEL_6:
  v16 = 0;
  while (1)
  {
    if (*v18 != v15)
    {
      objc_enumerationMutation(v12);
    }

    v7 = *(*(&v17 + 1) + 8 * v16);
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 isEditing])
    {
      return v7;
    }

    if (v14 == ++v16)
    {
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v14)
      {
        goto LABEL_6;
      }

      return v6;
    }
  }
}

- (id)hitRep:(CGPoint)rep withGesture:(id)gesture passingTest:(id)test
{
  y = rep.y;
  x = rep.x;
  [(THPageRep *)self naturalBounds];
  v12.x = x;
  v12.y = y;
  if (!CGRectContainsPoint(v13, v12))
  {
    return 0;
  }

  v11.receiver = self;
  v11.super_class = THPageRep;
  return [(THPageRep *)&v11 hitRep:gesture withGesture:test passingTest:x, y];
}

- (id)childRepsForHitTesting
{
  result = self->mSortedChildRepsForHitTesting;
  if (!result)
  {
    v7.receiver = self;
    v7.super_class = THPageRep;
    v4 = [NSMutableOrderedSet orderedSetWithArray:[(THPageRep *)&v7 childRepsForHitTesting]];
    v5 = [(NSMutableOrderedSet *)v4 indexesOfObjectsPassingTest:&stru_45BA38];
    -[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:](v4, "moveObjectsAtIndexes:toIndex:", v5, -[NSMutableOrderedSet count](v4, "count") - [v5 count]);
    v6 = [(NSMutableOrderedSet *)v4 indexesOfObjectsPassingTest:&stru_45BA58];
    -[NSMutableOrderedSet moveObjectsAtIndexes:toIndex:](v4, "moveObjectsAtIndexes:toIndex:", v6, -[NSMutableOrderedSet count](v4, "count") - [v6 count]);
    result = [-[NSMutableOrderedSet array](v4 "array")];
    self->mSortedChildRepsForHitTesting = result;
  }

  return result;
}

- (void)setChildReps:(id)reps
{
  self->mSortedChildRepsForHitTesting = 0;
  v5.receiver = self;
  v5.super_class = THPageRep;
  [(THPageRep *)&v5 setChildReps:reps];
}

- (void)insertChildRep:(id)rep atIndex:(unint64_t)index
{
  self->mSortedChildRepsForHitTesting = 0;
  v7.receiver = self;
  v7.super_class = THPageRep;
  [(THPageRep *)&v7 insertChildRep:rep atIndex:index];
}

- (void)removeChildRep:(id)rep
{
  self->mSortedChildRepsForHitTesting = 0;
  v5.receiver = self;
  v5.super_class = THPageRep;
  [(THPageRep *)&v5 removeChildRep:rep];
}

- (void)updateBookmarkVisibleState
{
  *&v3 = [(THPageRep *)self p_shouldShowBookmark];
  mBookmarkLayer = self->mBookmarkLayer;

  [(CALayer *)mBookmarkLayer setOpacity:v3];
}

- (void)updateFromLayout
{
  v3.receiver = self;
  v3.super_class = THPageRep;
  [(THPageRep *)&v3 updateFromLayout];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(THPageRep *)self p_bookmarkLayerFrame];
  [(CALayer *)self->mBookmarkLayer setFrame:?];
  +[CATransaction commit];
}

- (CGRect)p_bookmarkLayerFrame
{
  [(THPageRep *)self frameInUnscaledCanvas];
  v3 = CGRectGetWidth(v10) + -48.0;
  canvas = [(THPageRep *)self canvas];

  [canvas convertUnscaledToBoundsRect:{v3, 0.0, 34.0, 44.0}];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (BOOL)p_hasBookmark
{
  [-[THPageRep interactiveCanvasController](self "interactiveCanvasController")];
  v3 = TSUProtocolCast();

  return [v3 isPageBookmarkedForPageRep:self];
}

- (void)p_setHasBookmark:(BOOL)bookmark
{
  bookmarkCopy = bookmark;
  [-[THPageRep interactiveCanvasController](self "interactiveCanvasController")];
  v5 = TSUProtocolCast();

  [v5 setPageBookmarked:bookmarkCopy forPageRep:self];
}

- (BOOL)p_shouldShowBookmark
{
  [-[THPageRep interactiveCanvasController](self "interactiveCanvasController")];
  v2 = TSUProtocolCast();

  return [v2 bookmarksShouldBeVisible];
}

- (void)p_updateBookmarkStatusAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(THPageRep *)self supportsBookmarking])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  contents = [(CALayer *)self->mBookmarkLayer contents];
  p_hasBookmark = [(THPageRep *)self p_hasBookmark];
  if ((((contents == 0) ^ p_hasBookmark) & 1) == 0)
  {
    v7 = p_hasBookmark;
    if (p_hasBookmark)
    {
      -[CALayer setContents:](self->mBookmarkLayer, "setContents:", [+[TSUImage imageNamed:inBundle:](TSUImage imageNamed:@"ib_bookmark_on_page" inBundle:{THBundle()), "CGImage"}]);
      if (!animatedCopy)
      {
        [(THPageRep *)self p_bookmarkLayerFrame];
        mBookmarkLayer = self->mBookmarkLayer;

        [(CALayer *)mBookmarkLayer setFrame:?];
        return;
      }

      goto LABEL_10;
    }

    if (animatedCopy)
    {
LABEL_10:
      [(CALayer *)self->mBookmarkLayer removeAllAnimations];
      +[CATransaction begin];
      if ((v7 & 1) == 0)
      {
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_469C0;
        v25[3] = &unk_45AE00;
        v25[4] = self;
        [CATransaction setCompletionBlock:v25];
      }

      v9 = [CABasicAnimation animationWithKeyPath:@"transform.translation.y"];
      v10 = [NSNumber numberWithFloat:0.0];
      [(CALayer *)self->mBookmarkLayer bounds];
      v12 = v11;
      *&v13 = -v12;
      v14 = [NSNumber numberWithFloat:v13];
      if (v7)
      {
        v15 = v14;
      }

      else
      {
        v15 = v10;
      }

      if (v7)
      {
        v16 = v10;
      }

      else
      {
        v16 = v14;
      }

      [(CABasicAnimation *)v9 setFromValue:v15];
      [(CABasicAnimation *)v9 setToValue:v16];
      [(CALayer *)self->mBookmarkLayer addAnimation:v9 forKey:@"slide"];
      [(CALayer *)self->mBookmarkLayer frame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      objc_opt_class();
      [(CABasicAnimation *)v9 toValue];
      [TSUDynamicCast() floatValue];
      [(CALayer *)self->mBookmarkLayer setFrame:v18, v23, v20, v22];
      +[CATransaction commit];
      return;
    }

    [(CALayer *)self->mBookmarkLayer setContents:0];
    v24 = self->mBookmarkLayer;

    [(CALayer *)v24 setContents:0];
  }
}

- (void)updateBookmarkStatus
{
  if ([(THPageRep *)self supportsBookmarking])
  {

    [(THPageRep *)self p_updateBookmarkStatusAnimated:0];
  }
}

- (void)updateBookmarkStatusAnimated
{
  if ([(THPageRep *)self supportsBookmarking])
  {

    [(THPageRep *)self p_updateBookmarkStatusAnimated:1];
  }
}

- (void)addAdditionalChildLayersToArray:(id)array
{
  v5.receiver = self;
  v5.super_class = THPageRep;
  [(THPageRep *)&v5 addAdditionalChildLayersToArray:?];
  [array addObjectsFromArray:{-[THMarginNotesController layers](-[THPageRep marginNotesController](self, "marginNotesController"), "layers")}];
  if ([(THPageRep *)self supportsBookmarking])
  {
    if (!self->mBookmarkLayer)
    {
      self->mBookmarkLayer = objc_alloc_init(CALayer);
      [(THPageRep *)self p_bookmarkLayerFrame];
      [(CALayer *)self->mBookmarkLayer setFrame:?];
      [(THPageRep *)self updateBookmarkVisibleState];
    }

    if (self->mBookmarkStatusDirty)
    {
      [(THPageRep *)self p_updateBookmarkStatusAnimated:0];
      self->mBookmarkStatusDirty = 0;
    }

    [array addObject:self->mBookmarkLayer];
  }
}

- (BOOL)p_isToggleBookmarkGesture:(id)gesture
{
  [-[THPageRep interactiveCanvasController](self "interactiveCanvasController")];
  v5 = TSUProtocolCast();
  if (v5)
  {
    v6 = v5;
    [gesture naturalLocationForRep:self];
    v8 = v7;
    v10 = v9;
    [v6 bookmarkHotspotRegionForPage:{-[THPageRep info](self, "info")}];
    v13.x = v8;
    v13.y = v10;
    if (CGRectContainsPoint(v15, v13))
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      [(THPageRep *)self p_bookmarkLayerFrame];
      v14.x = v8;
      v14.y = v10;
      LODWORD(v5) = CGRectContainsPoint(v16, v14);
      if (v5)
      {

        LOBYTE(v5) = [(THPageRep *)self p_hasBookmark];
      }
    }
  }

  return v5;
}

- (BOOL)canHandleGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind != TSDShortTap)
  {
    gestureKind2 = [gesture gestureKind];
    if (gestureKind2 != TSDDelayedShortTap)
    {
      return 0;
    }
  }

  return [(THPageRep *)self p_isToggleBookmarkGesture:gesture];
}

- (BOOL)handleGesture:(id)gesture
{
  gestureKind = [gesture gestureKind];
  if (gestureKind == TSDShortTap || (v6 = [gesture gestureKind], v6 == TSDDelayedShortTap))
  {
    if ([(THPageRep *)self p_isToggleBookmarkGesture:gesture])
    {
      [(THPageRep *)self p_setHasBookmark:[(THPageRep *)self p_hasBookmark]^ 1];
    }
  }

  return 1;
}

- (int)marginNoteSideForPageRelativeRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = fabs(CGRectGetMinX(rect));
  [(THPageRep *)self naturalBounds];
  v10 = v9;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  return v8 >= vabdd_f64(v10, CGRectGetMaxX(v12));
}

- (id)marginNoteForAnnotation:(id)annotation inRep:(id)rep highlightBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  [rep convertNaturalRectToUnscaledCanvas:{bounds.origin.x, bounds.origin.y}];
  [(THPageRep *)self frameInUnscaledCanvas];
  [-[THPageRep canvas](self "canvas")];
  TSDRoundForScale();
  v10 = v9;
  TSDRoundForScale();
  v12 = v11;
  v13 = objc_alloc_init(AEMarginNote);
  [v13 setAnnotation:annotation];
  [v13 setTheme:{objc_msgSend(annotation, "theme")}];
  [v13 setSide:{-[THPageRep marginNoteSideForPageRelativeRect:](self, "marginNoteSideForPageRelativeRect:", v10, v12, width, height)}];
  v16.origin.x = v10;
  v16.origin.y = v12;
  v16.size.width = width;
  v16.size.height = height;
  [v13 setYStart:CGRectGetMinY(v16)];

  return v13;
}

- (void)showEditorForMarginNote:(id)note
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(THPageRep *)self childReps:0];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        v10 = TSUDynamicCast();
        if (v10)
        {
          v11 = v10;
          if ([objc_msgSend(v10 "highlightController")])
          {
            [-[THPageRep interactiveCanvasController](self "interactiveCanvasController")];
            [objc_msgSend(v11 "highlightController")];
            return;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }
}

@end