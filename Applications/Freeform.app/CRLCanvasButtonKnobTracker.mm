@interface CRLCanvasButtonKnobTracker
- (BOOL)p_knobContainsCurrentPosition;
- (BOOL)traceIfDesiredForBeginOperation;
- (BOOL)traceIfDesiredForEndOperation;
- (CRLCanvasButtonKnobTracker)initWithRep:(id)rep knob:(id)knob;
- (SEL)action;
- (id)target;
- (void)endMovingKnob;
- (void)moveKnobToRepPosition:(CGPoint)position;
- (void)setAction:(SEL)action;
@end

@implementation CRLCanvasButtonKnobTracker

- (CRLCanvasButtonKnobTracker)initWithRep:(id)rep knob:(id)knob
{
  repCopy = rep;
  knobCopy = knob;
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
  v13 = [(CRLCanvasKnobTracker *)&v15 initWithRep:repCopy knob:knobCopy];

  return v13;
}

- (BOOL)p_knobContainsCurrentPosition
{
  selfCopy = self;
  knob = [(CRLCanvasKnobTracker *)self knob];
  [(CRLCanvasKnobTracker *)selfCopy currentPosition];
  LOBYTE(selfCopy) = [knob isHitByUnscaledPoint:1 inputType:?];

  return selfCopy;
}

- (void)moveKnobToRepPosition:(CGPoint)position
{
  v4 = objc_opt_class();
  knob = [(CRLCanvasKnobTracker *)self knob];
  v6 = sub_100014370(v4, knob);

  if ([v6 isEnabled])
  {
    [v6 setHighlighted:{-[CRLCanvasButtonKnobTracker p_knobContainsCurrentPosition](self, "p_knobContainsCurrentPosition")}];
  }
}

- (void)endMovingKnob
{
  v3 = objc_opt_class();
  knob = [(CRLCanvasKnobTracker *)self knob];
  v5 = sub_100014370(v3, knob);

  [v5 setHighlighted:0];
  selfCopy = self;
  if ([v5 isEnabled] && -[CRLCanvasButtonKnobTracker p_knobContainsCurrentPosition](selfCopy, "p_knobContainsCurrentPosition"))
  {
    target = [(CRLCanvasButtonKnobTracker *)selfCopy target];
    [target -[CRLCanvasButtonKnobTracker action](selfCopy];
  }

  v8.receiver = selfCopy;
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

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->mAction = actionCopy;
}

@end