@interface CRLBaseGesture
- (CGPoint)unscaledLocation;
- (CGPoint)unscaledLocationForICC:(id)c;
- (CRLBaseGesture)init;
- (CRLBaseGesture)initWithGestureDispatcher:(id)dispatcher gestureKind:(id)kind;
- (CRLBaseGesture)initWithTarget:(id)target action:(SEL)action;
- (CRLGestureDelegate)gestureDelegate;
- (NSString)description;
- (id)cachedGestureTarget;
- (void)gestureBeganAtLocation:(CGPoint)location;
- (void)gestureCancelledAtLocation:(CGPoint)location;
- (void)gestureEndedAtLocation:(CGPoint)location;
- (void)gestureMovedToLocation:(CGPoint)location;
- (void)gestureRecognizedAtLocation:(CGPoint)location;
@end

@implementation CRLBaseGesture

- (CRLBaseGesture)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v12.receiver = self;
  v12.super_class = CRLBaseGesture;
  v8 = [(CRLBaseGesture *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->mGestureState = 0;
    objc_storeStrong(&v8->mTarget, target);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v9->mAction = actionCopy;
  }

  return v9;
}

- (CRLBaseGesture)initWithGestureDispatcher:(id)dispatcher gestureKind:(id)kind
{
  dispatcherCopy = dispatcher;
  kindCopy = kind;
  v8 = [(CRLBaseGesture *)self initWithTarget:dispatcherCopy action:"handleGesture:"];
  v9 = v8;
  if (v8)
  {
    [(CRLBaseGesture *)v8 setGestureDelegate:dispatcherCopy];
    [(CRLBaseGesture *)v9 setGestureKind:kindCopy];
    [(CRLBaseGesture *)v9 setInputType:1];
  }

  return v9;
}

- (CRLBaseGesture)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186FCF0);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLBaseGesture init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBaseGesture.m";
    v18 = 1024;
    v19 = 72;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_10186FD10);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v7 = [NSString stringWithUTF8String:"[CRLBaseGesture init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBaseGesture.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:72 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLBaseGesture init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)cachedGestureTarget
{
  WeakRetained = objc_loadWeakRetained(&self->mWeaklyCachedGestureTarget);

  return WeakRetained;
}

- (void)gestureBeganAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if ([(CRLBaseGesture *)self gestureState])
  {
    v6 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139525C();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101395270(v7, self, v6);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101395384();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EE10(v8, v6);
    }

    v9 = [NSString stringWithUTF8String:"[CRLBaseGesture gestureBeganAtLocation:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLBaseGesture.m"];
    gestureKind = [(CRLBaseGesture *)self gestureKind];
    v12 = sub_1003EB144([(CRLBaseGesture *)self gestureState]);
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:85 isFatal:0 description:"Gesture %@ in invalid state %@", gestureKind, v12];
  }

  [(CRLBaseGesture *)self setUnscaledLocation:x, y];
  gestureDelegate = [(CRLBaseGesture *)self gestureDelegate];
  v14 = objc_opt_respondsToSelector();

  if ((v14 & 1) != 0 && (-[CRLBaseGesture gestureDelegate](self, "gestureDelegate"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 gestureActionShouldBegin:self], v15, v16))
  {
    [(CRLBaseGesture *)self setGestureState:1];
    mAction = self->mAction;
    mTarget = self->mTarget;
    if (mAction)
    {
      [mTarget mAction];
    }

    else
    {
      [mTarget 0];
    }
  }

  else
  {
    [(CRLBaseGesture *)self setGestureState:5];
  }
}

- (void)gestureMovedToLocation:(CGPoint)location
{
  [(CRLBaseGesture *)self setUnscaledLocation:location.x, location.y];
  if ([(CRLBaseGesture *)self isDone])
  {

    [(CRLBaseGesture *)self setGestureState:5];
  }

  else
  {
    [(CRLBaseGesture *)self setGestureState:2];
    mTarget = self->mTarget;
    if (self->mAction)
    {
      mAction = self->mAction;
    }

    else
    {
      mAction = 0;
    }

    [mTarget mAction];
  }
}

- (void)gestureEndedAtLocation:(CGPoint)location
{
  [(CRLBaseGesture *)self setUnscaledLocation:location.x, location.y];
  if ([(CRLBaseGesture *)self isDone])
  {

    [(CRLBaseGesture *)self setGestureState:5];
  }

  else
  {
    [(CRLBaseGesture *)self setGestureState:3];
    mTarget = self->mTarget;
    if (self->mAction)
    {
      mAction = self->mAction;
    }

    else
    {
      mAction = 0;
    }

    [mTarget mAction];
  }
}

- (void)gestureRecognizedAtLocation:(CGPoint)location
{
  [(CRLBaseGesture *)self setUnscaledLocation:location.x, location.y];
  if (![(CRLBaseGesture *)self isDone])
  {
    gestureDelegate = [(CRLBaseGesture *)self gestureDelegate];
    if (objc_opt_respondsToSelector())
    {
      gestureDelegate2 = [(CRLBaseGesture *)self gestureDelegate];
      v6 = [gestureDelegate2 gestureActionShouldBegin:self];

      if (v6)
      {
        [(CRLBaseGesture *)self setGestureState:3];
        mTarget = self->mTarget;
        if (self->mAction)
        {
          mAction = self->mAction;
        }

        else
        {
          mAction = 0;
        }

        [mTarget mAction];
        return;
      }
    }

    else
    {
    }
  }

  [(CRLBaseGesture *)self setGestureState:5];
}

- (void)gestureCancelledAtLocation:(CGPoint)location
{
  [(CRLBaseGesture *)self setUnscaledLocation:location.x, location.y];
  [(CRLBaseGesture *)self setGestureState:4];
  mTarget = self->mTarget;
  if (self->mAction)
  {
    mAction = self->mAction;
  }

  else
  {
    mAction = 0;
  }

  [mTarget mAction];
}

- (CGPoint)unscaledLocationForICC:(id)c
{
  [(CRLBaseGesture *)self unscaledLocation];
  result.y = v4;
  result.x = v3;
  return result;
}

- (NSString)description
{
  mGestureKind = self->mGestureKind;
  v4 = sub_1003EB144(self->mState);
  mTarget = self->mTarget;
  if (self->mAction)
  {
    mAction = self->mAction;
  }

  else
  {
    mAction = 0;
  }

  v7 = NSStringFromSelector(mAction);
  v8 = [CRLDescription descriptionWithObject:self format:@" { gestureKind:%@ state:%@ target:%p action:%@ }", mGestureKind, v4, mTarget, v7];

  descriptionString = [v8 descriptionString];

  return descriptionString;
}

- (CRLGestureDelegate)gestureDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->mGestureDelegate);

  return WeakRetained;
}

- (CGPoint)unscaledLocation
{
  x = self->mUnscaledLocation.x;
  y = self->mUnscaledLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end