@interface THHighlightGestureController
- (BOOL)_shouldBeginImmediateHighlightForGesture:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)p_canHighlightAtPoint:(CGPoint)a3 inView:(id)a4;
- (BOOL)p_isLikelyHighlightTouchAtPoint:(CGPoint)a3 inView:(id)a4;
- (BOOL)p_shouldDragOwnInteraction:(CGPoint)a3 rep:(id)a4;
- (CGPoint)dragGestureRecognizer:(id)a3 requiredMovementForTouch:(id)a4;
- (CGPoint)p_clampPointToLine:(CGPoint)a3;
- (id)p_marginNoteHitRep:(CGPoint)a3;
- (void)dealloc;
- (void)handleHighlightState:(int64_t)a3 atPoint:(CGPoint)a4;
- (void)p_beginMagnification:(id)a3 atPoint:(CGPoint)a4;
- (void)p_catalystNoteGesture:(id)a3;
- (void)p_highlightGesture:(id)a3;
- (void)p_likelyHighlightGesture:(id)a3;
- (void)p_marginNoteGesture:(id)a3;
- (void)p_moveLoupe:(CGPoint)a3 inRep:(id)a4;
- (void)p_stopMagnification:(id)a3;
- (void)setEnabled:(BOOL)a3;
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
  v6 = [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] canvasView];
  v7 = [(THHighlightGestureController *)self marginNotesGestureRecognizer];

  [v6 addGestureRecognizer:v7];
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

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  [(THTimeoutDragGestureRecognizer *)[(THHighlightGestureController *)self highlightGestureRecognizer] setEnabled:a3];
  [(THTimeoutLongPressGestureRecognizer *)[(THHighlightGestureController *)self likelyHighlightGestureRecognizer] setEnabled:v3];
  [(UILongPressGestureRecognizer *)[(THHighlightGestureController *)self marginNotesGestureRecognizer] setEnabled:v3];
  v5 = [(THHighlightGestureController *)self catalystNotesGestureRecognizer];

  [(UILongPressGestureRecognizer *)v5 setEnabled:v3];
}

- (CGPoint)p_clampPointToLine:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(THHighlightGestureController *)self trackingRep];
  [(THWPRep *)[(THHighlightGestureController *)self trackingRep] convertNaturalPointFromUnscaledCanvas:x, y];
  [(THWPRep *)v6 pinToNaturalBounds:1 andLastLineFragment:?];
  v8 = v7;
  v10 = v9;
  v18 = 0u;
  v19 = 0u;
  v11 = [(THHighlightGestureController *)self trackingRep];
  if (v11)
  {
    [(THWPRep *)v11 lineMetricsAtPoint:v8, v10];
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

- (void)p_beginMagnification:(id)a3 atPoint:(CGPoint)a4
{
  [(THHighlightGestureController *)self p_clampPointToLine:a4.x, a4.y];
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertUnscaledToBoundsPoint:v6, v7];
  self->mMagnifying = 1;
  [+[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier](TSWPTextMagnifierHorizontalRanged "sharedRangedMagnifier")];
  v10 = +[TSWPHyperlinkUIController sharedHyperlinkUIController];

  [v10 endUISession];
}

- (void)p_moveLoupe:(CGPoint)a3 inRep:(id)a4
{
  [(THHighlightGestureController *)self p_clampPointToLine:a4, a3.x, a3.y];
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertUnscaledToBoundsPoint:v5, v6];
  v8 = v7;
  v10 = v9;
  v11 = +[TSWPTextMagnifierHorizontalRanged sharedRangedMagnifier];

  [v11 setMagnificationPoint:{v8, v10}];
}

- (void)p_stopMagnification:(id)a3
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

- (void)handleHighlightState:(int64_t)a3 atPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] endEditing];
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:x, y];
  v10 = v8;
  v11 = v9;
  if (a3 > 3)
  {
    if ((a3 - 4) < 2)
    {
      [(THHighlightGestureController *)self p_stopMagnification:[(THHighlightGestureController *)self trackingRep]];
      if (!self->mTrackingHighlight)
      {
LABEL_11:
        *&self->mHighlighting = 0;

        [(THHighlightGestureController *)self setTrackingRep:0];
        return;
      }

      v13 = [(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController];
      v14 = v10;
      v15 = v11;
      v16 = 0;
LABEL_10:
      [(THWPHighlightController *)v13 endDragHighlightAtPoint:v16 accept:v14, v15];
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if (a3 == 1)
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

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      mTrackingHighlight = self->mTrackingHighlight;
      v13 = [(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController];
      v14 = v10;
      v15 = v11;
      if (!mTrackingHighlight)
      {
        if ([(THWPHighlightController *)v13 isCanvasPointOnHighlight:v10, v11])
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
  v20 = [(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController];

  [(THWPHighlightController *)v20 moveDragHighlightToPoint:v10, v11];
}

- (void)p_highlightGesture:(id)a3
{
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] endEditing];
  v5 = [a3 state];
  [a3 locationInView:{-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController"), "canvasView")}];
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v6, v7];
  v10 = v8;
  v11 = v9;
  if (v5 > 3)
  {
    if ((v5 - 4) < 2)
    {
      [(THHighlightGestureController *)self p_stopMagnification:[(THHighlightGestureController *)self trackingRep]];
      if (!self->mTrackingHighlight)
      {
LABEL_13:
        *&self->mHighlighting = 0;

        [(THHighlightGestureController *)self setTrackingRep:0];
        return;
      }

      v13 = [(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController];
      v14 = v10;
      v15 = v11;
      v16 = 0;
LABEL_12:
      [(THWPHighlightController *)v13 endDragHighlightAtPoint:v16 accept:v14, v15];
      goto LABEL_13;
    }

    goto LABEL_32;
  }

  if (v5 == &dword_0 + 1)
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

      if ([(THHighlightGestureController *)self _shouldShowMagnifierForGesture:a3])
      {
        [(THHighlightGestureController *)self p_beginMagnification:[(THHighlightGestureController *)self trackingRep] atPoint:v10, v11];
      }

      if ([(THHighlightGestureController *)self _shouldBeginImmediateHighlightForGesture:a3])
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    if (v5 != &dword_0 + 2)
    {
      if (v5 == &dword_0 + 3)
      {
        if ([(THHighlightGestureController *)self _shouldShowMagnifierForGesture:a3])
        {
          [(THHighlightGestureController *)self p_stopMagnification:[(THHighlightGestureController *)self trackingRep]];
        }

        mTrackingHighlight = self->mTrackingHighlight;
        v13 = [(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController];
        if (!mTrackingHighlight)
        {
          if ([(THWPHighlightController *)v13 isCanvasPointOnHighlight:v10, v11])
          {
            objc_opt_class();
            v21 = (objc_opt_isKindOfClass() & 1) != 0 ? [a3 isStylus] : 0;
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

    if ([(THHighlightGestureController *)self _shouldShowMagnifierForGesture:a3])
    {
      [(THHighlightGestureController *)self p_moveLoupe:[(THHighlightGestureController *)self trackingRep] inRep:v10, v11];
    }

    objc_opt_class();
    if (([TSUDynamicCast() hasMovedDistance:{10.6400003, 16.0}] & 1) != 0 || -[THHighlightGestureController _shouldBeginImmediateHighlightForGesture:](self, "_shouldBeginImmediateHighlightForGesture:", a3))
    {
      if (self->mTrackingHighlight)
      {
LABEL_29:
        v17 = [(THWPRep *)[(THHighlightGestureController *)self trackingRep] highlightController];

        [(THWPHighlightController *)v17 moveDragHighlightToPoint:v10, v11];
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

- (BOOL)_shouldBeginImmediateHighlightForGesture:(id)a3
{
  objc_opt_class();
  v3 = TSUDynamicCast();

  return [v3 isStylus];
}

- (void)p_likelyHighlightGesture:(id)a3
{
  v5 = [a3 state];
  if ((v5 - 3) >= 3)
  {
    if (v5 == &dword_0 + 1)
    {
      [a3 locationInView:{-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController"), "canvasView")}];
      [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v6, v7];
      v9 = v8;
      v11 = v10;
      objc_opt_class();
      [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] hitRep:v9, v11];
      [(THHighlightGestureController *)self setTrackingRep:TSUDynamicCast()];
      if ([(THHighlightGestureController *)self _shouldShowMagnifierForGesture:a3])
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

- (id)p_marginNoteHitRep:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(THHighlightGestureController *)self interactiveCanvasController];

  return [(THInteractiveCanvasController *)v5 hitRep:0 withGesture:&stru_45D040 passingTest:x, y];
}

- (void)p_marginNoteGesture:(id)a3
{
  [a3 locationInView:{-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController"), "canvasView")}];
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v5, v6];
  v8 = v7;
  v10 = v9;
  v11 = [a3 state];
  if ((v11 - 3) < 2)
  {
    [(THMarginNotesOwner *)[(THHighlightGestureController *)self trackingNotesOwner] convertCanvasPointToOwnerPoint:v8, v10];
    v19 = [-[THMarginNotesOwner marginNotesController](-[THHighlightGestureController trackingNotesOwner](self "trackingNotesOwner")];
    v20 = [v19 annotation];
    if (v20 == [(AEMarginNote *)[(THHighlightGestureController *)self trackingMarginNote] annotation])
    {
      [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] delegate];
      [TSUProtocolCast() interactiveCanvasControllerWillShowNoteEditor:{-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController")}];
      [(THMarginNotesOwner *)[(THHighlightGestureController *)self trackingNotesOwner] showEditorForMarginNote:v19];
    }

    [-[THMarginNotesOwner marginNotesController](-[THHighlightGestureController trackingNotesOwner](self "trackingNotesOwner")];
    [(THHighlightGestureController *)self setTrackingMarginNote:0];

    [(THHighlightGestureController *)self setTrackingNotesOwner:0];
  }

  else if (v11 == &dword_0 + 2)
  {
    [(THMarginNotesOwner *)[(THHighlightGestureController *)self trackingNotesOwner] convertCanvasPointToOwnerPoint:v8, v10];
    v23 = [-[THMarginNotesOwner marginNotesController](-[THHighlightGestureController trackingNotesOwner](self "trackingNotesOwner")];
    v24 = [v23 annotation];
    v25 = [(AEMarginNote *)[(THHighlightGestureController *)self trackingMarginNote] annotation];
    v16 = [(THMarginNotesOwner *)[(THHighlightGestureController *)self trackingNotesOwner] marginNotesController];
    if (v24 == v25)
    {
      v15 = v23;
LABEL_20:

      [v16 highlightMarginNote:v15];
      return;
    }

    [v16 unhighlightAllMarginNotes];
  }

  else
  {
    if (v11 == &dword_0 + 1)
    {
      [(THHighlightGestureController *)self p_marginNoteHitRep:v8, v10];
      -[THHighlightGestureController setTrackingNotesOwner:](self, "setTrackingNotesOwner:", [TSUProtocolCast() marginNotesOwner]);
      if (![(THHighlightGestureController *)self trackingNotesOwner])
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      [(THMarginNotesOwner *)[(THHighlightGestureController *)self trackingNotesOwner] convertCanvasPointToOwnerPoint:v8, v10];
      -[THHighlightGestureController setTrackingMarginNote:](self, "setTrackingMarginNote:", [-[THMarginNotesOwner marginNotesController](-[THHighlightGestureController trackingNotesOwner](self "trackingNotesOwner")]);
      v14 = [(THMarginNotesOwner *)[(THHighlightGestureController *)self trackingNotesOwner] marginNotesController];
      v15 = [(THHighlightGestureController *)self trackingMarginNote];
      v16 = v14;
      goto LABEL_20;
    }

    v26 = +[TSUAssertionHandler currentHandler];
    v27 = [NSString stringWithUTF8String:"[THHighlightGestureController p_marginNoteGesture:]"];
    v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THHighlightGestureController.m"];

    [v26 handleFailureInFunction:v27 file:v28 lineNumber:492 description:@"Unexpected gesture state"];
  }
}

- (void)p_catalystNoteGesture:(id)a3
{
  [a3 locationInView:{-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController"), "canvasView")}];
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
    v18 = [a3 state];
    if (v18 - 1 >= 2 && v18 != &dword_4)
    {
      if (v18 == (&dword_0 + 3))
      {
        v19 = [(THHighlightGestureController *)self interactiveCanvasController];
        v20 = [v17 annotationUuid];

        [(THInteractiveCanvasController *)v19 presentMenuAtCanvasPoint:v20 forAnnotationUUID:v6, v8];
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

- (BOOL)p_shouldDragOwnInteraction:(CGPoint)a3 rep:(id)a4
{
  [a4 convertNaturalPointFromUnscaledCanvas:{a3.x, a3.y}];

  return [a4 isPointInSelectedArea:?];
}

- (BOOL)p_canHighlightAtPoint:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = [(THHighlightGestureController *)self interactiveCanvasController];
  if (![(THInteractiveCanvasController *)v8 supportsWritingHighlights])
  {
    return 0;
  }

  [a4 convertPoint:-[THInteractiveCanvasController canvasView](v8 toView:{"canvasView"), x, y}];
  [(THInteractiveCanvasController *)v8 convertBoundsToUnscaledPoint:?];
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

  v16 = [v14 highlightController];

  return [v16 shouldBeginDragHighlightAtPoint:{v10, v12}];
}

- (BOOL)p_isLikelyHighlightTouchAtPoint:(CGPoint)a3 inView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = [(THHighlightGestureController *)self interactiveCanvasController];
  [a4 convertPoint:-[THInteractiveCanvasController canvasView](v7 toView:{"canvasView"), x, y}];
  [(THInteractiveCanvasController *)v7 convertBoundsToUnscaledPoint:?];
  v10 = v8;
  v11 = v9;
  if (v7)
  {
    [(THInteractiveCanvasController *)v7 wordMetricsAtPoint:v8, v9];
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  if (![(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] supportsReadingHighlights]|| ([(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] currentlyScrolling]& 1) != 0 || ([(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] currentlyWaitingOnThreadedLayoutAndRender]& 1) != 0)
  {
    return 0;
  }

  [a4 locationInView:{-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController"), "canvasView")}];
  v9 = v8;
  v11 = v10;
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v8, v10];
  v13 = v12;
  v15 = v14;
  if ([(THHighlightGestureController *)self highlightGestureRecognizer]== a3)
  {
LABEL_12:
    v16 = [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] canvasView];

    return [(THHighlightGestureController *)self p_canHighlightAtPoint:v16 inView:v9, v11];
  }

  if ([(THHighlightGestureController *)self stylusHighlightGestureRecognizer]== a3)
  {
    objc_opt_class();
    [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] hitRep:v9, v11];
    if ([objc_msgSend(TSUDynamicCast() "highlightController")])
    {
      return 0;
    }

    goto LABEL_12;
  }

  if ([(THHighlightGestureController *)self likelyHighlightGestureRecognizer]!= a3)
  {
    if ([(THHighlightGestureController *)self marginNotesGestureRecognizer]!= a3)
    {
      if ([(THHighlightGestureController *)self catalystNotesGestureRecognizer]!= a3)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }

      return 0;
    }

    [(THHighlightGestureController *)self p_marginNoteHitRep:v13, v15];
    v17 = [TSUProtocolCast() marginNotesOwner];
    [v17 convertCanvasPointToOwnerPoint:{v13, v15}];
    if (v17)
    {
      v20 = v18;
      v21 = v19;
      v22 = [v17 marginNotesController];

      return [v22 hasMarginNoteAtPoint:{v20, v21}];
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

- (CGPoint)dragGestureRecognizer:(id)a3 requiredMovementForTouch:(id)a4
{
  [a4 locationInView:{-[THInteractiveCanvasController canvasView](-[THHighlightGestureController interactiveCanvasController](self, "interactiveCanvasController"), "canvasView")}];
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] convertBoundsToUnscaledPoint:v6, v7];
  v9 = v8;
  v11 = v10;
  objc_opt_class();
  [(THInteractiveCanvasController *)[(THHighlightGestureController *)self interactiveCanvasController] hitRep:v9, v11];
  if (([objc_msgSend(TSUDynamicCast() "highlightController")] & 1) != 0 || -[THHighlightGestureController _shouldBeginImmediateHighlightForGesture:](self, "_shouldBeginImmediateHighlightForGesture:", a3))
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