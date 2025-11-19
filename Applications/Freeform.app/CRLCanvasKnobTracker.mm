@interface CRLCanvasKnobTracker
- (CGAffineTransform)transformInRootForStandardKnobs;
- (CGPoint)convertKnobPositionFromUnscaledCanvas:(CGPoint)a3;
- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)a3;
- (CGPoint)currentPosition;
- (CGPoint)knobOffset;
- (CGRect)currentBoundsForStandardKnobs;
- (CRLCanvasKnobTracker)init;
- (CRLCanvasKnobTracker)initWithRep:(id)a3 knob:(id)a4;
- (id)repsToHide;
- (unint64_t)enabledKnobMask;
- (void)changeDynamicLayoutsForReps:(id)a3;
- (void)commitChangesForReps:(id)a3;
- (void)dealloc;
- (void)endMovingKnob;
- (void)i_resetCurrentPositionToKnobPositionIfAppropriate;
- (void)moveKnobToCanvasPosition:(CGPoint)a3;
- (void)setRep:(id)a3;
@end

@implementation CRLCanvasKnobTracker

- (CRLCanvasKnobTracker)initWithRep:(id)a3 knob:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CRLCanvasKnobTracker;
  v8 = [(CRLCanvasKnobTracker *)&v16 init];
  if (v8)
  {
    if (v6)
    {
      if (v7)
      {
LABEL_23:
        [(CRLCanvasKnobTracker *)v8 setKnob:v7];
        [(CRLCanvasKnobTracker *)v8 setRep:v6];
        v8->_inputType = 1;
        goto LABEL_24;
      }
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133F4AC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133F4D4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133F584();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLCanvasKnobTracker initWithRep:knob:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasKnobTracker.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:43 isFatal:0 description:"invalid nil value for '%{public}s'", "rep"];

      if (v7)
      {
        goto LABEL_23;
      }
    }

    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133F5AC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133F5D4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133F684();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLCanvasKnobTracker initWithRep:knob:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasKnobTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:44 isFatal:0 description:"invalid nil value for '%{public}s'", "knob"];

    goto LABEL_23;
  }

LABEL_24:

  return v8;
}

- (CRLCanvasKnobTracker)init
{
  v3.receiver = self;
  v3.super_class = CRLCanvasKnobTracker;
  return [(CRLCanvasKnobTracker *)&v3 init];
}

- (void)dealloc
{
  v3 = [(CRLCanvasRep *)self->_rep currentKnobTracker];

  if (v3 == self)
  {
    [(CRLCanvasRep *)self->_rep setCurrentKnobTracker:0];
  }

  v4.receiver = self;
  v4.super_class = CRLCanvasKnobTracker;
  [(CRLCanvasKnobTracker *)&v4 dealloc];
}

- (void)setRep:(id)a3
{
  v5 = a3;
  rep = self->_rep;
  if (rep != v5)
  {
    v8 = v5;
    v7 = [(CRLCanvasRep *)rep currentKnobTracker];

    if (v7 == self)
    {
      [(CRLCanvasRep *)self->_rep setCurrentKnobTracker:0];
    }

    objc_storeStrong(&self->_rep, a3);
    [(CRLCanvasRep *)self->_rep setCurrentKnobTracker:self];
    v5 = v8;
  }
}

- (void)moveKnobToCanvasPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLCanvasKnobTracker *)self rep];
  if (v6)
  {
    v7 = v6;
    [v6 convertNaturalPointFromUnscaledCanvas:{x, y}];
    [(CRLCanvasKnobTracker *)self moveKnobToRepPosition:?];
    v6 = v7;
  }
}

- (CGPoint)convertKnobPositionToUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLCanvasKnobTracker *)self rep];
  [v5 convertNaturalPointToUnscaledCanvas:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGPoint)convertKnobPositionFromUnscaledCanvas:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CRLCanvasKnobTracker *)self rep];
  [v5 convertNaturalPointFromUnscaledCanvas:{x, y}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)endMovingKnob
{
  v3 = [(CRLCanvasRep *)self->_rep currentKnobTracker];

  if (v3 == self)
  {
    rep = self->_rep;

    [(CRLCanvasRep *)rep setCurrentKnobTracker:0];
  }
}

- (CGRect)currentBoundsForStandardKnobs
{
  [(CRLCanvasRep *)self->_rep boundsForStandardKnobs];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGAffineTransform)transformInRootForStandardKnobs
{
  v4 = [(CRLCanvasRep *)self->_rep layout];
  if (v4)
  {
    v6 = v4;
    [v4 transformInRoot];
    v4 = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (unint64_t)enabledKnobMask
{
  if (![(CRLCanvasKnobTracker *)self shouldHideOtherKnobs])
  {
    return -1;
  }

  v3 = [(CRLCanvasKnobTracker *)self knob];
  v4 = sub_100345928([v3 tag]);

  return v4;
}

- (void)i_resetCurrentPositionToKnobPositionIfAppropriate
{
  if (![(CRLCanvasKnobTracker *)self didDrag]&& [(CRLCanvasKnobTracker *)self dragEnding])
  {
    v4 = [(CRLCanvasKnobTracker *)self rep];
    v3 = [(CRLCanvasKnobTracker *)self knob];
    [v3 position];
    [v4 convertNaturalPointToUnscaledCanvas:?];
    [(CRLCanvasKnobTracker *)self setCurrentPosition:?];
  }
}

- (void)changeDynamicLayoutsForReps:(id)a3
{
  [(CRLCanvasKnobTracker *)self i_resetCurrentPositionToKnobPositionIfAppropriate];
  didBegin = self->_didBegin;
  if (!didBegin)
  {
    self->_didBegin = 1;
    [(CRLCanvasKnobTracker *)self beginMovingKnob];
  }

  if ([(CRLCanvasKnobTracker *)self didDrag]|| [(CRLCanvasKnobTracker *)self dragEnding])
  {
LABEL_7:
    if (didBegin)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  v5 = [(CRLCanvasKnobTracker *)self knob];
  [v5 position];
  v7 = v6;
  v9 = v8;
  v10 = [(CRLCanvasKnobTracker *)self rep];
  [(CRLCanvasKnobTracker *)self currentPosition];
  [v10 convertNaturalPointFromUnscaledCanvas:?];
  if (sub_10011ECC8(v7, v9, v11, v12))
  {
    v13 = [(CRLCanvasKnobTracker *)self i_shouldForceDrag];

    if (!v13)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  [(CRLCanvasKnobTracker *)self setDidDrag:1];
  if (didBegin)
  {
LABEL_8:
    if (![(CRLCanvasKnobTracker *)self didDrag])
    {
      return;
    }
  }

LABEL_12:
  [(CRLCanvasKnobTracker *)self currentPosition];

  [(CRLCanvasKnobTracker *)self moveKnobToCanvasPosition:?];
}

- (void)commitChangesForReps:(id)a3
{
  if (self->_didBegin)
  {
    [(CRLCanvasKnobTracker *)self endMovingKnob];
  }
}

- (id)repsToHide
{
  v3 = objc_opt_new();
  v4 = [(CRLCanvasKnobTracker *)self rep];
  v5 = [v4 parentRep];

  v6 = [v5 layout];
  v7 = [(CRLCanvasKnobTracker *)self rep];
  v8 = [v7 layout];
  v9 = [v6 childLayoutIsCurrentlyHiddenWhileManipulating:v8];

  if (v9)
  {
    v10 = [(CRLCanvasKnobTracker *)self rep];
    v11 = [NSSet setWithObject:v10];

    v3 = v11;
  }

  return v3;
}

- (CGPoint)currentPosition
{
  x = self->_currentPosition.x;
  y = self->_currentPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)knobOffset
{
  x = self->_knobOffset.x;
  y = self->_knobOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end