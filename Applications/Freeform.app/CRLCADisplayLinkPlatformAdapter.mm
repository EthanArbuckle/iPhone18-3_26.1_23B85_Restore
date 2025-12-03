@interface CRLCADisplayLinkPlatformAdapter
- (BOOL)paused;
- (CRLCADisplayLinkPlatformAdapter)initWithTarget:(id)target action:(SEL)action;
- (void)dealloc;
- (void)invalidate;
- (void)p_displayLinkDidTrigger:(id)trigger;
- (void)setPaused:(BOOL)paused;
@end

@implementation CRLCADisplayLinkPlatformAdapter

- (CRLCADisplayLinkPlatformAdapter)initWithTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v15.receiver = self;
  v15.super_class = CRLCADisplayLinkPlatformAdapter;
  v7 = [(CRLCADisplayLinkPlatformAdapter *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_target, targetCopy);
    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v8->_action = actionCopy;
    v10 = [CADisplayLink displayLinkWithTarget:v8 selector:"p_displayLinkDidTrigger:"];
    displayLink = v8->_displayLink;
    v8->_displayLink = v10;

    [(CADisplayLink *)v8->_displayLink setPaused:1];
    v12 = v8->_displayLink;
    v13 = +[NSRunLoop mainRunLoop];
    [(CADisplayLink *)v12 addToRunLoop:v13 forMode:NSRunLoopCommonModes];
  }

  return v8;
}

- (void)dealloc
{
  if (self->_displayLink)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133E438();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133E44C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133E4FC();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLCADisplayLinkPlatformAdapter dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDisplayLinkPlatformAdapter.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:40 isFatal:0 description:"expected nil value for '%{public}s'", "_displayLink"];
  }

  v6.receiver = self;
  v6.super_class = CRLCADisplayLinkPlatformAdapter;
  [(CRLCADisplayLinkPlatformAdapter *)&v6 dealloc];
}

- (void)invalidate
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    goto LABEL_11;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10133E524();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10133E538();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10133E5C0();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v4);
  }

  v5 = [NSString stringWithUTF8String:"[CRLCADisplayLinkPlatformAdapter invalidate]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDisplayLinkPlatformAdapter.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:44 isFatal:0 description:"Trying to manipulate an invalid display link"];

  displayLink = self->_displayLink;
  if (displayLink)
  {
LABEL_11:
    [(CADisplayLink *)displayLink invalidate];
    v7 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (BOOL)paused
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    goto LABEL_11;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10133E5E8();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10133E5FC();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10133E684();
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v4);
  }

  v5 = [NSString stringWithUTF8String:"[CRLCADisplayLinkPlatformAdapter paused]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDisplayLinkPlatformAdapter.m"];
  [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:54 isFatal:0 description:"Trying to manipulate an invalid display link"];

  displayLink = self->_displayLink;
  if (displayLink)
  {
LABEL_11:
    LOBYTE(displayLink) = [(CADisplayLink *)displayLink isPaused];
  }

  return displayLink;
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  displayLink = self->_displayLink;
  if (displayLink)
  {
    goto LABEL_11;
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_10133E6AC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10133E6C0();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_10133E748();
  }

  v6 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v6);
  }

  v7 = [NSString stringWithUTF8String:"[CRLCADisplayLinkPlatformAdapter setPaused:]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDisplayLinkPlatformAdapter.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:63 isFatal:0 description:"Trying to manipulate an invalid display link"];

  displayLink = self->_displayLink;
  if (displayLink)
  {
LABEL_11:
    [(CADisplayLink *)displayLink setPaused:pausedCopy];
  }
}

- (void)p_displayLinkDidTrigger:(id)trigger
{
  triggerCopy = trigger;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (self->_action)
  {
    action = self->_action;
  }

  else
  {
    action = 0;
  }

  [triggerCopy timestamp];
  v7 = v6;
  [triggerCopy targetTimestamp];
  [WeakRetained action];
}

@end