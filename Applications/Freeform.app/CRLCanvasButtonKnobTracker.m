@interface CRLCanvasButtonKnobTracker
- (BOOL)p_knobContainsCurrentPosition;
- (BOOL)traceIfDesiredForBeginOperation;
- (BOOL)traceIfDesiredForEndOperation;
- (CRLCanvasButtonKnobTracker)initWithRep:(id)a3 knob:(id)a4;
- (SEL)action;
- (id)target;
- (void)endMovingKnob;
- (void)moveKnobToRepPosition:(CGPoint)a3;
- (void)setAction:(SEL)a3;
@end

@implementation CRLCanvasButtonKnobTracker

- (CRLCanvasButtonKnobTracker)initWithRep:(id)a3 knob:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10138035C();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101380370(v8, v9);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138041C();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v10, v8);
    }

    v11 = [NSString stringWithUTF8String:"[CRLCanvasButtonKnobTracker initWithRep:knob:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasButtonKnobTracker.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:27 isFatal:0 description:"button knob tracker made without a button knob"];
  }

  v15.receiver = self;
  v15.super_class = CRLCanvasButtonKnobTracker;
  v13 = [(CRLCanvasKnobTracker *)&v15 initWithRep:v6 knob:v7];

  return v13;
}

- (BOOL)p_knobContainsCurrentPosition
{
  v2 = self;
  v3 = [(CRLCanvasKnobTracker *)self knob];
  [(CRLCanvasKnobTracker *)v2 currentPosition];
  LOBYTE(v2) = [v3 isHitByUnscaledPoint:1 inputType:?];

  return v2;
}

- (void)moveKnobToRepPosition:(CGPoint)a3
{
  v4 = objc_opt_class();
  v5 = [(CRLCanvasKnobTracker *)self knob];
  v6 = sub_100014370(v4, v5);

  if ([v6 isEnabled])
  {
    [v6 setHighlighted:{-[CRLCanvasButtonKnobTracker p_knobContainsCurrentPosition](self, "p_knobContainsCurrentPosition")}];
  }
}

- (void)endMovingKnob
{
  v3 = objc_opt_class();
  v4 = [(CRLCanvasKnobTracker *)self knob];
  v5 = sub_100014370(v3, v4);

  [v5 setHighlighted:0];
  v6 = self;
  if ([v5 isEnabled] && -[CRLCanvasButtonKnobTracker p_knobContainsCurrentPosition](v6, "p_knobContainsCurrentPosition"))
  {
    v7 = [(CRLCanvasButtonKnobTracker *)v6 target];
    [v7 -[CRLCanvasButtonKnobTracker action](v6];
  }

  v8.receiver = v6;
  v8.super_class = CRLCanvasButtonKnobTracker;
  [(CRLCanvasKnobTracker *)&v8 endMovingKnob];
}

- (BOOL)traceIfDesiredForBeginOperation
{
  if (qword_101AD5A08 != -1)
  {
    sub_101380444();
  }

  v2 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "begin button knob interaction", v4, 2u);
  }

  return 1;
}

- (BOOL)traceIfDesiredForEndOperation
{
  if (qword_101AD5A08 != -1)
  {
    sub_101380458();
  }

  v2 = off_1019EDA60;
  if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "end button knob interaction", v4, 2u);
  }

  return 1;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->mTarget);

  return WeakRetained;
}

- (SEL)action
{
  if (self->mAction)
  {
    return self->mAction;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->mAction = v3;
}

@end