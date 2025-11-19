@interface RCDisplayLinkManager
+ (RCDisplayLinkManager)sharedManager;
- (CAFrameRateRange)preferredFrameRateRange;
- (RCDisplayLinkManager)init;
- (void)_displayLinkDidUpdate:(id)a3;
- (void)_pauseDisplayLink;
- (void)_startDisplayLinkIfNeeded;
- (void)addDisplayLinkObserver:(id)a3;
- (void)removeDisplayLinkObserver:(id)a3;
- (void)setPaused:(BOOL)a3;
- (void)setPreferredFrameRateRange:(CAFrameRateRange)a3;
@end

@implementation RCDisplayLinkManager

- (void)_pauseDisplayLink
{
  if (![(CADisplayLink *)self->_displayLink isPaused])
  {
    v3 = OSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B8C14(v3);
    }

    [(CADisplayLink *)self->_displayLink setPaused:1];
  }
}

+ (RCDisplayLinkManager)sharedManager
{
  if (qword_1002D7098 != -1)
  {
    sub_100004A30();
  }

  v3 = qword_1002D7090;

  return v3;
}

- (RCDisplayLinkManager)init
{
  v12.receiver = self;
  v12.super_class = RCDisplayLinkManager;
  v2 = [(RCDisplayLinkManager *)&v12 init];
  if (v2)
  {
    v3 = [CADisplayLink displayLinkWithTarget:v2 selector:"_displayLinkDidUpdate:"];
    displayLink = v2->_displayLink;
    v2->_displayLink = v3;

    v5 = v2->_displayLink;
    v6 = +[NSRunLoop mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:v6 forMode:NSRunLoopCommonModes];

    [(RCDisplayLinkManager *)v2 _pauseDisplayLink];
    v7 = +[NSNotificationCenter defaultCenter];
    v8 = +[UIApplication sharedApplication];
    [v7 addObserver:v2 selector:"_applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:v8];
    [v7 addObserver:v2 selector:"_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:v8];
    v9 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v9;
  }

  return v2;
}

- (void)_startDisplayLinkIfNeeded
{
  if ([(NSHashTable *)self->_observers count]&& [(CADisplayLink *)self->_displayLink isPaused])
  {
    v3 = OSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B8C98(v3);
    }

    [(CADisplayLink *)self->_displayLink setPaused:0];
  }
}

- (void)setPaused:(BOOL)a3
{
  if (a3)
  {
    [(RCDisplayLinkManager *)self _pauseDisplayLink];
  }

  else
  {
    [(RCDisplayLinkManager *)self _startDisplayLinkIfNeeded];
  }
}

- (void)addDisplayLinkObserver:(id)a3
{
  [(NSHashTable *)self->_observers addObject:a3];

  [(RCDisplayLinkManager *)self _startDisplayLinkIfNeeded];
}

- (void)removeDisplayLinkObserver:(id)a3
{
  [(NSHashTable *)self->_observers removeObject:a3];
  if (![(NSHashTable *)self->_observers count])
  {

    [(RCDisplayLinkManager *)self _pauseDisplayLink];
  }
}

- (void)_displayLinkDidUpdate:(id)a3
{
  v4 = a3;
  v5 = self->_timeController;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSHashTable *)self->_observers allObjects];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) displayLinkDidUpdate:v4 withTimeController:v5];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)setPreferredFrameRateRange:(CAFrameRateRange)a3
{
  preferred = a3.preferred;
  maximum = a3.maximum;
  minimum = a3.minimum;
  [(CADisplayLink *)self->_displayLink preferredFrameRateRange];
  v12.minimum = minimum;
  v12.maximum = maximum;
  v12.preferred = preferred;
  if (!CAFrameRateRangeIsEqualToRange(v11, v12))
  {
    *&v7 = minimum;
    *&v8 = maximum;
    *&v9 = preferred;
    [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:v7, v8, v9];
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1001B8D1C(v10, preferred);
    }
  }
}

- (CAFrameRateRange)preferredFrameRateRange
{
  [(CADisplayLink *)self->_displayLink preferredFrameRateRange];
  result.preferred = v4;
  result.maximum = v3;
  result.minimum = v2;
  return result;
}

@end