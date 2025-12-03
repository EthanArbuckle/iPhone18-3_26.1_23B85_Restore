@interface THHighlightGestureController
- (BOOL)_shouldBeginImmediateHighlightForGesture:(id)gesture;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)p_canHighlightAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)p_isLikelyHighlightTouchAtPoint:(CGPoint)point inView:(id)view;
- (BOOL)p_shouldDragOwnInteraction:(CGPoint)interaction rep:(id)rep;
- (CGPoint)dragGestureRecognizer:(id)recognizer requiredMovementForTouch:(id)touch;
- (CGPoint)p_clampPointToLine:(CGPoint)line;
- (id)p_marginNoteHitRep:(CGPoint)rep;
- (void)dealloc;
- (void)handleHighlightState:(int64_t)state atPoint:(CGPoint)point;
- (void)p_beginMagnification:(id)magnification atPoint:(CGPoint)point;
- (void)p_catalystNoteGesture:(id)gesture;
- (void)p_highlightGesture:(id)gesture;
- (void)p_likelyHighlightGesture:(id)gesture;
- (void)p_marginNoteGesture:(id)gesture;
- (void)p_moveLoupe:(CGPoint)loupe inRep:(id)rep;
- (void)p_stopMagnification:(id)magnification;
- (void)setEnabled:(BOOL)enabled;
- (void)setUpGestureRecognizers;
@end

@implementation THHighlightGestureController

- (void)setUpGestureRecognizers
{
  if ((TSUSupportsTextInteraction() & 1) == 0)
  {
    v3 = [[THTimeoutDragGestureRecognizer alloc] initWithTarget:self action:"p_highlightGesture:"];
    [(THTimeoutDragGestureRecognizer *)v3 setMinimumPressDuration:0.0];
    [(THTimeoutDragGestureRecognizer *)v3 setMaximumPressDuration:1.60000002];
    [(THTimeoutDragGestureRecognizer *)v3 setAllowedTouchTypes:&off_49D8D8];
    [(THTimeoutDragGestureRecognizer *)v3 setStylus:1];
    [(THTimeoutDragGestureRecognizer *)v3 setDelegate:self];
    [-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self "interactiveCanvasController")];
    [(THHighlightGestureController *)self setStylusHighlightGestureRecognizer:v3];
    v4 = [[THTimeoutDragGestureRecognizer alloc] initWithTarget:self action:"p_highlightGesture:"];
    [(THTimeoutDragGestureRecognizer *)v4 setMinimumPressDuration:0.25];
    [(THTimeoutDragGestureRecognizer *)v4 setMaximumPressDuration:0.600000024];
    [(THTimeoutDragGestureRecognizer *)v4 setAllowableMovement:8.0];
    [(THTimeoutDragGestureRecognizer *)v4 setDelegate:self];
    [-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self "interactiveCanvasController")];
    [(THHighlightGestureController *)self setHighlightGestureRecognizer:v4];
    [(THTimeoutDragGestureRecognizer *)[(THHighlightGestureController *)self highlightGestureRecognizer] requireGestureRecognizerToFail:[(THHighlightGestureController *)self stylusHighlightGestureRecognizer]];
    [objc_msgSend(objc_msgSend(-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self "interactiveCanvasController")];
    v5 = [[THTimeoutLongPressGestureRecognizer alloc] initWithTarget:self action:"p_likelyHighlightGesture:"];
    [(THTimeoutLongPressGestureRecognizer *)v5 setAllowedTouchTypes:&off_49D8F0];
    [(THTimeoutLongPressGestureRecognizer *)v5 setMinimumPressDuration:0.25];
    [(THTimeoutLongPressGestureRecognizer *)v5 setMaximumPressDuration:1.60000002];
    [(THTimeoutLongPressGestureRecognizer *)v5 setAllowableMovement:8.0];
    [(THTimeoutLongPressGestureRecognizer *)v5 setAllowedTouchTypes:&off_49D908];
    [(THTimeoutLongPressGestureRecognizer *)v5 setDelegate:self];
    [-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self "interactiveCanvasController")];
    [(THHighlightGestureController *)self setLikelyHighlightGestureRecognizer:v5];
    [(THTimeoutLongPressGestureRecognizer *)[(THHighlightGestureController *)self likelyHighlightGestureRecognizer] requireGestureRecognizerToFail:[(THHighlightGestureController *)self stylusHighlightGestureRecognizer]];
    [(THTimeoutDragGestureRecognizer *)v4 setDependentGestureRecognizer:v5];
    [(THTimeoutDragGestureRecognizer *)v3 setDependentGestureRecognizer:v5];
  }

  -[THHighlightGestureController setMarginNotesGestureRecognizer:](self, "setMarginNotesGestureRecognizer:", [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"p_marginNoteGesture:"]);
  [(UILongPressGestureRecognizer *)[(THHighlightGestureController *)self marginNotesGestureRecognizer] setMinimumPressDuration:0.0];
  [(UILongPressGestureRecognizer *)[(THHighlightGestureController *)self marginNotesGestureRecognizer] setDelegate:self];
  [(THTimeoutDragGestureRecognizer *)[(THHighlightGestureController *)self highlightGestureRecognizer] requireGestureRecognizerToFail:[(THHighlightGestureController *)self marginNotesGestureRecognizer]];
  [(THTimeoutDragGestureRecognizer *)[(THHighlightGestureController *)self stylusHighlightGestureRecognizer] requireGestureRecognizerToFail:[(THHighlightGestureController *)self marginNotesGestureRecognizer]];
  canvasView = [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] canvasView];
  marginNotesGestureRecognizer = [(THHighlightGestureController *)self marginNotesGestureRecognizer];

  [canvasView addGestureRecognizer:marginNotesGestureRecognizer];
}

- (void)dealloc
{
  [(THHighlightGestureController *)self setHighlightGestureRecognizer:0];
  [(THHighlightGestureController *)self setLikelyHighlightGestureRecognizer:0];
  [(THHighlightGestureController *)self setMarginNotesGestureRecognizer:0];
  [(THHighlightGestureController *)self setCatalystNotesGestureRecognizer:0];
  [(THHighlightGestureController *)self setInteractiveCanvasController:0];
  [(THHighlightGestureController *)self setStylusHighlightGestureRecognizer:0];
  if ([(THHighlightGestureController *)self trackingRep])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THHighlightGestureController *)self trackingMarginNote])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if ([(THHighlightGestureController *)self trackingNotesOwner])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3.receiver = self;
  v3.super_class = THHighlightGestureController;
  [(THHighlightGestureController *)&v3 dealloc];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(THTimeoutDragGestureRecognizer *)[(THHighlightGestureController *)self highlightGestureRecognizer] setEnabled:enabled];
  [(THTimeoutLongPressGestureRecognizer *)[(THHighlightGestureController *)self likelyHighlightGestureRecognizer] setEnabled:enabledCopy];
  [(UILongPressGestureRecognizer *)[(THHighlightGestureController *)self marginNotesGestureRecognizer] setEnabled:enabledCopy];
  catalystNotesGestureRecognizer = [(THHighlightGestureController *)self catalystNotesGestureRecognizer];

  [(UILongPressGestureRecognizer *)catalystNotesGestureRecognizer setEnabled:enabledCopy];
}

- (CGPoint)p_clampPointToLine:(CGPoint)line
{
  y = line.y;
  x = line.x;
  trackingRep = [(THHighlightGestureController *)self trackingRep];
  [(THWPRep *)[(THHighlightGestureController *)self trackingRep] convertNaturalPointFromUnscaledCanvas:x, y];
  [(THWPRep *)trackingRep pinToNaturalBounds:1 andLastLineFragment:?];
  v8 = v7;
  v10 = v9;
  v18 = 0u;
  v19 = 0u;
  trackingRep2 = [(THHighlightGestureController *)self trackingRep];
  if (trackingRep2)
  {
    [(THWPRep *)trackingRep2 lineMetricsAtPoint:v8, v10];
    v13 = 0;
    v12 = 0;
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  if (!CGRectIsEmpty(*&v12))
  {
    [(THWPRep *)[(THHighlightGestureController *)self trackingRep] convertNaturalRectToUnscaledCanvas:v18, v19];
    y = CGRectGetMidY(v21);
  }

  v16 = x;
  v17 = y;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)p_beginMagnification:(id)magnification atPoint:(CGPoint)point
{
  [(THHighlightGestureController *)self p_clampPointToLine:point.x, point.y];
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertUnscaledToBoundsPoint:v6, v7];
  self->mMagnifying = 1;
  [+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged "sharedRangedMagnifier")];
  v10 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];

  [v10 endUISession];
}

- (void)p_moveLoupe:(CGPoint)loupe inRep:(id)rep
{
  [(THHighlightGestureController *)self p_clampPointToLine:rep, loupe.x, loupe.y];
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertUnscaledToBoundsPoint:v5, v6];
  v8 = v7;
  v10 = v9;
  v11 = +[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier];

  [v11 setMagnificationPoint:{v8, v10}];
}

- (void)p_stopMagnification:(id)magnification
{
  if (self->mMagnifying)
  {
    if ([+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier])
    {
      [+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged "sharedRangedMagnifier")];
      self->mMagnifying = 0;
    }
  }
}

- (void)handleHighlightState:(int64_t)state atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] endEditing];
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:x, y];
  v10 = v8;
  v11 = v9;
  if (state > 3)
  {
    if ((state - 4) < 2)
    {
      [(THHighlightGestureController *)self p_stopMagnification:[(THHighlightGestureController *)self trackingRep]];
      if (!self->mTrackingHighlight)
      {
LABEL_11:
        *&self->mHighlighting = 0;

        [(THHighlightGestureController *)self setTrackingRep:0];
        return;
      }

      highlightController = [(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController];
      v14 = v10;
      v15 = v11;
      v16 = 0;
LABEL_10:
      [(THWPHighlightController *)highlightController endDragHighlightAtPoint:v16 accept:v14, v15];
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if (state == 1)
  {
    self->mHighlighting = 1;
    self->mLongPressGestureStartPoint.x = v8;
    self->mLongPressGestureStartPoint.y = v9;
    if ([(THHighlightGestureController *)self trackingRep])
    {
      return;
    }

    objc_opt_class();
    [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] hitRep:v10, v11];
    [(THHighlightGestureController *)self setTrackingRep:TSUDynamicCast()];
    if (![(THHighlightGestureController *)self trackingRep])
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

LABEL_25:
    self->mTrackingHighlight = 1;
    [(THWPHighlightController *)[(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController] beginDragHighlightAtPoint:self->mLongPressGestureStartPoint.x, self->mLongPressGestureStartPoint.y];
    goto LABEL_26;
  }

  if (state != 2)
  {
    if (state == 3)
    {
      mTrackingHighlight = self->mTrackingHighlight;
      highlightController = [(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController];
      v14 = v10;
      v15 = v11;
      if (!mTrackingHighlight)
      {
        if ([(THWPHighlightController *)highlightController isCanvasPointOnHighlight:v10, v11])
        {
          objc_opt_class();
          [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] beginEditingRep:[(THHighlightGestureController *)self trackingRep]];
          TSUDynamicCast();
        }

        goto LABEL_11;
      }

      v16 = 1;
      goto LABEL_10;
    }

LABEL_18:
    v17 = +[TSUAssertionHandler currentHandler];
    v18 = [NSString stringWithUTF8String:"[THHighlightGestureController handleHighlightState:atPoint:]"];
    v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THHighlightGestureController.m"];

    [v17 handleFailureInFunction:v18 file:v19 lineNumber:285 description:@"Unexpected gesture state"];
    return;
  }

  if (!self->mTrackingHighlight)
  {
    goto LABEL_25;
  }

LABEL_26:
  highlightController2 = [(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController];

  [(THWPHighlightController *)highlightController2 moveDragHighlightToPoint:v10, v11];
}

- (void)p_highlightGesture:(id)gesture
{
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] endEditing];
  state = [gesture state];
  [gesture locationInView:{-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController"), "canvasView")}];
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v6, v7];
  v10 = v8;
  v11 = v9;
  if (state > 3)
  {
    if ((state - 4) < 2)
    {
      [(THHighlightGestureController *)self p_stopMagnification:[(THHighlightGestureController *)self trackingRep]];
      if (!self->mTrackingHighlight)
      {
LABEL_13:
        *&self->mHighlighting = 0;

        [(THHighlightGestureController *)self setTrackingRep:0];
        return;
      }

      highlightController = [(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController];
      v14 = v10;
      v15 = v11;
      v16 = 0;
LABEL_12:
      [(THWPHighlightController *)highlightController endDragHighlightAtPoint:v16 accept:v14, v15];
      goto LABEL_13;
    }

    goto LABEL_32;
  }

  if (state == &dword_0 + 1)
  {
    self->mHighlighting = 1;
    self->mLongPressGestureStartPoint.x = v8;
    self->mLongPressGestureStartPoint.y = v9;
    if (![(THHighlightGestureController *)self trackingRep])
    {
      objc_opt_class();
      [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] hitRep:v10, v11];
      [(THHighlightGestureController *)self setTrackingRep:TSUDynamicCast()];
      if (![(THHighlightGestureController *)self trackingRep])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      if ([(THHighlightGestureController *)self _shouldShowMagnifierForGesture:gesture])
      {
        [(THHighlightGestureController *)self p_beginMagnification:[(THHighlightGestureController *)self trackingRep] atPoint:v10, v11];
      }

      if ([(THHighlightGestureController *)self _shouldBeginImmediateHighlightForGesture:gesture])
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    if (state != &dword_0 + 2)
    {
      if (state == &dword_0 + 3)
      {
        if ([(THHighlightGestureController *)self _shouldShowMagnifierForGesture:gesture])
        {
          [(THHighlightGestureController *)self p_stopMagnification:[(THHighlightGestureController *)self trackingRep]];
        }

        mTrackingHighlight = self->mTrackingHighlight;
        highlightController = [(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController];
        if (!mTrackingHighlight)
        {
          if ([(THWPHighlightController *)highlightController isCanvasPointOnHighlight:v10, v11])
          {
            objc_opt_class();
            v21 = (objc_opt_isKindOfClass() & 1) != 0 ? [gesture isStylus] : 0;
            objc_opt_class();
            [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] beginEditingRep:[(THHighlightGestureController *)self trackingRep]];
            v22 = TSUDynamicCast();
            if (v22)
            {
              if ((v21 & 1) == 0)
              {
                v23 = v22;
                [(THWPRep *)[(THHighlightGestureController *)self trackingRep] convertNaturalPointFromUnscaledCanvas:v10, v11];
                [v23 tappedInRep:-[THHighlightGestureController trackingRep](self point:"trackingRep") tapCount:2 isTapHold:0 precise:{0, v24, v25}];
              }
            }
          }

          goto LABEL_13;
        }

        v14 = v10;
        v15 = v11;
        v16 = 1;
        goto LABEL_12;
      }

LABEL_32:
      v18 = +[TSUAssertionHandler currentHandler];
      v19 = [NSString stringWithUTF8String:"[THHighlightGestureController p_highlightGesture:]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THHighlightGestureController.m"];

      [v18 handleFailureInFunction:v19 file:v20 lineNumber:391 description:@"Unexpected gesture state"];
      return;
    }

    if ([(THHighlightGestureController *)self _shouldShowMagnifierForGesture:gesture])
    {
      [(THHighlightGestureController *)self p_moveLoupe:[(THHighlightGestureController *)self trackingRep] inRep:v10, v11];
    }

    objc_opt_class();
    if (([TSUDynamicCast() hasMovedDistance:{10.6400003, 16.0}] & 1) != 0 || -[THHighlightGestureController _shouldBeginImmediateHighlightForGesture:](self, "_shouldBeginImmediateHighlightForGesture:", gesture))
    {
      if (self->mTrackingHighlight)
      {
LABEL_29:
        highlightController2 = [(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController];

        [(THWPHighlightController *)highlightController2 moveDragHighlightToPoint:v10, v11];
        return;
      }

LABEL_28:
      self->mTrackingHighlight = 1;
      [(THWPHighlightController *)[(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController] beginDragHighlightAtPoint:self->mLongPressGestureStartPoint.x, self->mLongPressGestureStartPoint.y];
      goto LABEL_29;
    }

    if (self->mTrackingHighlight)
    {
      [(THWPHighlightController *)[(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController] endDragHighlightAtPoint:0 accept:v10, v11];
      self->mTrackingHighlight = 0;
    }
  }
}

- (BOOL)_shouldBeginImmediateHighlightForGesture:(id)gesture
{
  objc_opt_class();
  v3 = TSUDynamicCast();

  return [v3 isStylus];
}

- (void)p_likelyHighlightGesture:(id)gesture
{
  state = [gesture state];
  if ((state - 3) >= 3)
  {
    if (state == &dword_0 + 1)
    {
      [gesture locationInView:{-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController"), "canvasView")}];
      [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v6, v7];
      v9 = v8;
      v11 = v10;
      objc_opt_class();
      [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] hitRep:v9, v11];
      [(THHighlightGestureController *)self setTrackingRep:TSUDynamicCast()];
      if ([(THHighlightGestureController *)self _shouldShowMagnifierForGesture:gesture])
      {
        [(THHighlightGestureController *)self p_beginMagnification:[(THHighlightGestureController *)self trackingRep] atPoint:v9, v11];
      }

      mHighlightGestureRecognizer = self->mHighlightGestureRecognizer;
      [(THTimeoutLongPressGestureRecognizer *)[(THHighlightGestureController *)self likelyHighlightGestureRecognizer] maximumPressDuration];
      v14 = v13;
      [(THTimeoutLongPressGestureRecognizer *)[(THHighlightGestureController *)self likelyHighlightGestureRecognizer] minimumPressDuration];
      v16 = v14 - v15;

      [(THTimeoutDragGestureRecognizer *)mHighlightGestureRecognizer resetCancelTimerWithTimeout:v16];
    }
  }

  else if (!self->mHighlighting)
  {
    [(THHighlightGestureController *)self p_stopMagnification:[(THHighlightGestureController *)self trackingRep]];

    [(THHighlightGestureController *)self setTrackingRep:0];
  }
}

- (id)p_marginNoteHitRep:(CGPoint)rep
{
  y = rep.y;
  x = rep.x;
  interactiveCanvasController = [(THHighlightGestureController *)self interactiveCanvasController];

  return [(THInteractiveCanvasController *)interactiveCanvasController hitRep:0 withGesture:&stru_45D040 passingTest:x, y];
}

- (void)p_marginNoteGesture:(id)gesture
{
  [gesture locationInView:{-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController"), "canvasView")}];
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v5, v6];
  v8 = v7;
  v10 = v9;
  state = [gesture state];
  if ((state - 3) < 2)
  {
    [(THMarginNotesOwner *)[(THHighlightGestureController *)self trackingNotesOwner] convertCanvasPointToOwnerPoint:v8, v10];
    v19 = [-[THMarginNotesOwner marginNotesController](-[THHighlightGestureController trackingNotesOwner](self "trackingNotesOwner")];
    annotation = [v19 annotation];
    if (annotation == [(AEMarginNote *)[(THHighlightGestureController *)self trackingMarginNote] annotation])
    {
      [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] delegate];
      [TSUProtocolCast() interactiveCanvasControllerWillShowNoteEditor:{-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController")}];
      [(THMarginNotesOwner *)[(THHighlightGestureController *)self trackingNotesOwner] showEditorForMarginNote:v19];
    }

    [-[THMarginNotesOwner marginNotesController](-[THHighlightGestureController trackingNotesOwner](self "trackingNotesOwner")];
    [(THHighlightGestureController *)self setTrackingMarginNote:0];

    [(THHighlightGestureController *)self setTrackingNotesOwner:0];
  }

  else if (state == &dword_0 + 2)
  {
    [(THMarginNotesOwner *)[(THHighlightGestureController *)self trackingNotesOwner] convertCanvasPointToOwnerPoint:v8, v10];
    v23 = [-[THMarginNotesOwner marginNotesController](-[THHighlightGestureController trackingNotesOwner](self "trackingNotesOwner")];
    annotation2 = [v23 annotation];
    annotation3 = [(AEMarginNote *)[(THHighlightGestureController *)self trackingMarginNote] annotation];
    marginNotesController = [(THMarginNotesOwner *)[(THHighlightGestureController *)self trackingNotesOwner] marginNotesController];
    if (annotation2 == annotation3)
    {
      trackingMarginNote = v23;
LABEL_20:

      [marginNotesController highlightMarginNote:trackingMarginNote];
      return;
    }

    [marginNotesController unhighlightAllMarginNotes];
  }

  else
  {
    if (state == &dword_0 + 1)
    {
      [(THHighlightGestureController *)self p_marginNoteHitRep:v8, v10];
      -[THHighlightGestureController setTrackingNotesOwner:](self, "setTrackingNotesOwner:", [TSUProtocolCast() marginNotesOwner]);
      if (![(THHighlightGestureController *)self trackingNotesOwner])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      [(THMarginNotesOwner *)[(THHighlightGestureController *)self trackingNotesOwner] convertCanvasPointToOwnerPoint:v8, v10];
      -[THHighlightGestureController setTrackingMarginNote:](self, "setTrackingMarginNote:", [-[THMarginNotesOwner marginNotesController](-[THHighlightGestureController trackingNotesOwner](self "trackingNotesOwner")]);
      marginNotesController2 = [(THMarginNotesOwner *)[(THHighlightGestureController *)self trackingNotesOwner] marginNotesController];
      trackingMarginNote = [(THHighlightGestureController *)self trackingMarginNote];
      marginNotesController = marginNotesController2;
      goto LABEL_20;
    }

    v26 = +[TSUAssertionHandler currentHandler];
    v27 = [NSString stringWithUTF8String:"[THHighlightGestureController p_marginNoteGesture:]"];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THHighlightGestureController.m"];

    [v26 handleFailureInFunction:v27 file:v28 lineNumber:492 description:@"Unexpected gesture state"];
  }
}

- (void)p_catalystNoteGesture:(id)gesture
{
  [gesture locationInView:{-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController"), "canvasView")}];
  v6 = v5;
  v8 = v7;
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v5, v7];
  v10 = v9;
  v12 = v11;
  objc_opt_class();
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] hitRep:v10, v12];
  v13 = TSUDynamicCast();
  v14 = [objc_msgSend(v13 "highlightController")];
  v15 = [objc_msgSend(v13 "highlightController")];
  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = v15;
    state = [gesture state];
    if (state - 1 >= 2 && state != &dword_4)
    {
      if (state == (&dword_0 + 3))
      {
        interactiveCanvasController = [(THHighlightGestureController *)self interactiveCanvasController];
        annotationUuid = [v17 annotationUuid];

        [(THInteractiveCanvasController *)interactiveCanvasController presentMenuAtCanvasPoint:annotationUuid forAnnotationUUID:v6, v8];
      }

      else
      {
        v21 = +[TSUAssertionHandler currentHandler];
        v22 = [NSString stringWithUTF8String:"[THHighlightGestureController p_catalystNoteGesture:]"];
        v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THHighlightGestureController.m"];

        [v21 handleFailureInFunction:v22 file:v23 lineNumber:521 description:@"Unexpected gesture state"];
      }
    }
  }
}

- (BOOL)p_shouldDragOwnInteraction:(CGPoint)interaction rep:(id)rep
{
  [rep convertNaturalPointFromUnscaledCanvas:{interaction.x, interaction.y}];

  return [rep isPointInSelectedArea:?];
}

- (BOOL)p_canHighlightAtPoint:(CGPoint)point inView:(id)view
{
  y = point.y;
  x = point.x;
  interactiveCanvasController = [(THHighlightGestureController *)self interactiveCanvasController];
  if (![(THInteractiveCanvasController *)interactiveCanvasController supportsWritingHighlights])
  {
    return 0;
  }

  [view convertPoint:-[THInteractiveCanvasController canvasView](interactiveCanvasController toView:{"canvasView"), x, y}];
  [(THInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:?];
  v10 = v9;
  v12 = v11;
  objc_opt_class();
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] hitRep:v10, v12];
  v13 = TSUDynamicCast();
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  if ([(THHighlightGestureController *)self p_shouldDragOwnInteraction:v13 rep:v10, v12])
  {
    return 0;
  }

  highlightController = [v14 highlightController];

  return [highlightController shouldBeginDragHighlightAtPoint:{v10, v12}];
}

- (BOOL)p_isLikelyHighlightTouchAtPoint:(CGPoint)point inView:(id)view
{
  y = point.y;
  x = point.x;
  interactiveCanvasController = [(THHighlightGestureController *)self interactiveCanvasController];
  [view convertPoint:-[THInteractiveCanvasController canvasView](interactiveCanvasController toView:{"canvasView"), x, y}];
  [(THInteractiveCanvasController *)interactiveCanvasController convertBoundsToUnscaledPoint:?];
  v10 = v8;
  v11 = v9;
  if (interactiveCanvasController)
  {
    [(THInteractiveCanvasController *)interactiveCanvasController wordMetricsAtPoint:v8, v9];
    v13 = 0;
    v12 = 0;
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
  }

  MinX = CGRectGetMinX(*&v12);
  v20.size.height = 0.0;
  v20.origin = 0u;
  v20.size.width = 0.0;
  Width = CGRectGetWidth(v20);
  v21.origin.x = MinX + -10.0;
  v21.origin.y = 0.0 - fmaxf(0.0, 10.0);
  *&Width = Width + -15.0;
  v21.size.width = fmaxf(*&Width, 35.0) + 10.0;
  v21.size.height = fmaxf(0.0, 8.0) + 0.0 - v21.origin.y;
  v19.x = v10;
  v19.y = v11;
  return CGRectContainsPoint(v21, v19);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (![(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] supportsReadingHighlights]|| ([(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] currentlyScrolling]& 1) != 0 || ([(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] currentlyWaitingOnThreadedLayoutAndRender]& 1) != 0)
  {
    return 0;
  }

  [touch locationInView:{-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController"), "canvasView")}];
  v9 = v8;
  v11 = v10;
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v8, v10];
  v13 = v12;
  v15 = v14;
  if ([(THHighlightGestureController *)self highlightGestureRecognizer]== recognizer)
  {
LABEL_12:
    canvasView = [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] canvasView];

    return [(THHighlightGestureController *)self p_canHighlightAtPoint:canvasView inView:v9, v11];
  }

  if ([(THHighlightGestureController *)self stylusHighlightGestureRecognizer]== recognizer)
  {
    objc_opt_class();
    [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] hitRep:v9, v11];
    if ([objc_msgSend(TSUDynamicCast() "highlightController")])
    {
      return 0;
    }

    goto LABEL_12;
  }

  if ([(THHighlightGestureController *)self likelyHighlightGestureRecognizer]!= recognizer)
  {
    if ([(THHighlightGestureController *)self marginNotesGestureRecognizer]!= recognizer)
    {
      if ([(THHighlightGestureController *)self catalystNotesGestureRecognizer]!= recognizer)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      return 0;
    }

    [(THHighlightGestureController *)self p_marginNoteHitRep:v13, v15];
    marginNotesOwner = [TSUProtocolCast() marginNotesOwner];
    [marginNotesOwner convertCanvasPointToOwnerPoint:{v13, v15}];
    if (marginNotesOwner)
    {
      v20 = v18;
      v21 = v19;
      marginNotesController = [marginNotesOwner marginNotesController];

      return [marginNotesController hasMarginNoteAtPoint:{v20, v21}];
    }

    return 0;
  }

  if (![(THHighlightGestureController *)self p_canHighlightAtPoint:[(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] canvasView] inView:v9, v11])
  {
    return 0;
  }

  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] canvasView];

  return [(THHighlightGestureController *)self p_isLikelyHighlightTouchAtPoint:v9 inView:v11];
}

- (CGPoint)dragGestureRecognizer:(id)recognizer requiredMovementForTouch:(id)touch
{
  [touch locationInView:{-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController"), "canvasView")}];
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v6, v7];
  v9 = v8;
  v11 = v10;
  objc_opt_class();
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] hitRep:v9, v11];
  if (([objc_msgSend(TSUDynamicCast() "highlightController")] & 1) != 0 || -[THHighlightGestureController _shouldBeginImmediateHighlightForGesture:](self, "_shouldBeginImmediateHighlightForGesture:", recognizer))
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  else
  {
    y = 16.0;
    x = 10.6400003;
  }

  result.y = y;
  result.x = x;
  return result;
}

@end