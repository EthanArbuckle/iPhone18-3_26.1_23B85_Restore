@interface RCDisplayLinkManager
+ (RCDisplayLinkManager)sharedManager;
- (RCDisplayLinkManager)init;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_displayLinkDidUpdate:(id)a3;
- (void)addDisplayLinkObserver:(id)a3;
- (void)removeDisplayLinkObserver:(id)a3;
@end

@implementation RCDisplayLinkManager

+ (RCDisplayLinkManager)sharedManager
{
  if (qword_82408 != -1)
  {
    sub_42578();
  }

  v3 = qword_82400;

  return v3;
}

- (RCDisplayLinkManager)init
{
  v11.receiver = self;
  v11.super_class = RCDisplayLinkManager;
  v2 = [(RCDisplayLinkManager *)&v11 init];
  if (v2)
  {
    v3 = [CADisplayLink displayLinkWithTarget:v2 selector:"_displayLinkDidUpdate:"];
    displayLink = v2->_displayLink;
    v2->_displayLink = v3;

    v5 = v2->_displayLink;
    v6 = +[NSRunLoop mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:v6 forMode:NSRunLoopCommonModes];

    [(CADisplayLink *)v2->_displayLink setPaused:1];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
    [v7 addObserver:v2 selector:"_applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];
    v8 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v8;
  }

  return v2;
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v4 = [(NSHashTable *)self->_observers count]== 0;
  displayLink = self->_displayLink;

  [(CADisplayLink *)displayLink setPaused:v4];
}

- (void)addDisplayLinkObserver:(id)a3
{
  observers = self->_observers;
  v5 = a3;
  v6 = [(NSHashTable *)observers count];
  [(NSHashTable *)self->_observers addObject:v5];

  if (!v6)
  {
    displayLink = self->_displayLink;

    [(CADisplayLink *)displayLink setPaused:0];
  }
}

- (void)removeDisplayLinkObserver:(id)a3
{
  [(NSHashTable *)self->_observers removeObject:a3];
  if (![(NSHashTable *)self->_observers count])
  {
    displayLink = self->_displayLink;

    [(CADisplayLink *)displayLink setPaused:1];
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

@end