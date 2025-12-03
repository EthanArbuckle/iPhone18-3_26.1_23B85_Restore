@interface CRLCanvasAnimation
- (CRLCanvasAnimation)initWithAnimationID:(id)d;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)setAnimation:(id)animation forLayer:(id)layer forKey:(id)key;
@end

@implementation CRLCanvasAnimation

- (CRLCanvasAnimation)initWithAnimationID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = CRLCanvasAnimation;
  v6 = [(CRLCanvasAnimation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animationID, d);
    v7->_duration = 0.2;
    v8 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    timingFunction = v7->_timingFunction;
    v7->_timingFunction = v8;

    v7->_allAnimationsFinishedBeforeStopping = 1;
  }

  return v7;
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  keyCopy = key;
  v7 = [(NSMapTable *)self->_animationDictionariesForLayers objectForKeyedSubscript:layer];
  v8 = [v7 objectForKeyedSubscript:keyCopy];
  if (!v8)
  {
    if (self->_firstAnimationDidStart)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10133DB9C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10133DBB0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10133DC38();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v9);
      }

      v10 = [NSString stringWithUTF8String:"[CRLCanvasAnimation actionForLayer:forKey:]"];
      v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasAnimation.m"];
      [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:53 isFatal:0 description:"shouldn't be adding animations after we've started showing them"];
    }

    v8 = [CABasicAnimation animationWithKeyPath:keyCopy];
    [v8 setDuration:self->_duration];
    [v8 setTimingFunction:self->_timingFunction];
  }

  [v8 setDelegate:self];
  ++self->_outstandingAnimationCount;

  return v8;
}

- (void)setAnimation:(id)animation forLayer:(id)layer forKey:(id)key
{
  animationCopy = animation;
  layerCopy = layer;
  keyCopy = key;
  animationDictionariesForLayers = self->_animationDictionariesForLayers;
  if (!animationDictionariesForLayers)
  {
    v11 = [[NSMapTable alloc] initWithKeyOptions:5 valueOptions:0 capacity:0];
    v12 = self->_animationDictionariesForLayers;
    self->_animationDictionariesForLayers = v11;

    animationDictionariesForLayers = self->_animationDictionariesForLayers;
  }

  v13 = [(NSMapTable *)animationDictionariesForLayers objectForKeyedSubscript:layerCopy];
  if (!v13)
  {
    v13 = +[NSMapTable strongToWeakObjectsMapTable];
    [(NSMapTable *)self->_animationDictionariesForLayers setObject:v13 forKeyedSubscript:layerCopy];
  }

  [v13 setObject:animationCopy forKeyedSubscript:keyCopy];
}

- (void)animationDidStart:(id)start
{
  startCopy = start;
  if (!self->_outstandingAnimationCount)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133DC60();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133DC74();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133DCFC();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLCanvasAnimation animationDidStart:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasAnimation.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:87 isFatal:0 description:"unexpected animation started"];
  }

  if (!self->_firstAnimationDidStart)
  {
    self->_firstAnimationDidStart = 1;
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  if (!self->_outstandingAnimationCount)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133DD24();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133DD38();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133DDC0();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLCanvasAnimation animationDidStop:finished:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasAnimation.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:95 isFatal:0 description:"unexpected animation stopped"];
  }

  if (!self->_firstAnimationDidStart)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10133DDE8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10133DE10();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10133DE98();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLCanvasAnimation animationDidStop:finished:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasAnimation.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:96 isFatal:0 description:"animation stopped before starting"];
  }

  outstandingAnimationCount = self->_outstandingAnimationCount;
  self->_allAnimationsFinishedBeforeStopping |= finished;
  self->_outstandingAnimationCount = --outstandingAnimationCount;
  if (!outstandingAnimationCount)
  {
    completionBlock = self->_completionBlock;
    if (completionBlock)
    {
      completionBlock[2]();
    }
  }
}

@end