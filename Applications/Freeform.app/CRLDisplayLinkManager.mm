@interface CRLDisplayLinkManager
+ (id)sharedManager;
- (CRLDisplayLinkManager)init;
- (id)p_initWithPlatformAdapterClass:(Class)class;
- (void)addLink:(id)link;
- (void)p_createPlatformAdapter;
- (void)p_destroyPlatformAdapter;
- (void)p_linkTriggeredAt:(double)at forTargetTime:(double)time;
- (void)p_updateState;
- (void)removeLink:(id)link;
- (void)updatePausedForLink:(id)link;
@end

@implementation CRLDisplayLinkManager

+ (id)sharedManager
{
  if (qword_101A34C98 != -1)
  {
    sub_1013543BC();
  }

  v3 = qword_101A34C90;

  return v3;
}

- (id)p_initWithPlatformAdapterClass:(Class)class
{
  v10.receiver = self;
  v10.super_class = CRLDisplayLinkManager;
  v4 = [(CRLDisplayLinkManager *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc_init(NSMutableSet);
    registeredLinks = v4->_registeredLinks;
    v4->_registeredLinks = v5;

    v7 = objc_alloc_init(NSMutableSet);
    activeLinks = v4->_activeLinks;
    v4->_activeLinks = v7;

    v4->_adapterClass = class;
  }

  return v4;
}

- (CRLDisplayLinkManager)init
{
  v3 = objc_opt_class();

  return [(CRLDisplayLinkManager *)self p_initWithPlatformAdapterClass:v3];
}

- (void)addLink:(id)link
{
  linkCopy = link;
  [(NSMutableSet *)self->_registeredLinks addObject:linkCopy];
  if (([linkCopy paused] & 1) == 0)
  {
    [(NSMutableSet *)self->_activeLinks addObject:linkCopy];
  }

  [(CRLDisplayLinkManager *)self p_updateState];
}

- (void)removeLink:(id)link
{
  registeredLinks = self->_registeredLinks;
  linkCopy = link;
  [(NSMutableSet *)registeredLinks removeObject:linkCopy];
  [(NSMutableSet *)self->_activeLinks removeObject:linkCopy];

  [(CRLDisplayLinkManager *)self p_updateState];
}

- (void)updatePausedForLink:(id)link
{
  linkCopy = link;
  paused = [linkCopy paused];
  activeLinks = self->_activeLinks;
  if (paused)
  {
    [(NSMutableSet *)activeLinks removeObject:linkCopy];
  }

  else
  {
    [(NSMutableSet *)activeLinks addObject:linkCopy];
  }

  [(CRLDisplayLinkManager *)self p_updateState];
}

- (void)p_updateState
{
  adapter = self->_adapter;
  v4 = [(NSMutableSet *)self->_registeredLinks count];
  v5 = [(NSMutableSet *)self->_activeLinks count];
  if (adapter)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {

    [(CRLDisplayLinkManager *)self p_destroyPlatformAdapter];
  }

  else
  {
    v7 = v5;
    if (v4)
    {
      v8 = adapter == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      [(CRLDisplayLinkManager *)self p_createPlatformAdapter];
    }

    else if (!v4)
    {
      return;
    }

    if ((v7 == 0) != [(CRLDisplayLinkPlatformAdapter *)self->_adapter paused])
    {
      v9 = self->_adapter;

      [(CRLDisplayLinkPlatformAdapter *)v9 setPaused:v7 == 0];
    }
  }
}

- (void)p_createPlatformAdapter
{
  if (self->_adapter)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013543D0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013543E4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101354494();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLDisplayLinkManager p_createPlatformAdapter]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDisplayLink.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:181 isFatal:0 description:"expected nil value for '%{public}s'", "_adapter"];
  }

  v6 = [[(objc_class *)self->_adapterClass alloc] initWithTarget:self action:"p_linkTriggeredAt:forTargetTime:"];
  adapter = self->_adapter;
  self->_adapter = v6;
}

- (void)p_destroyPlatformAdapter
{
  adapter = self->_adapter;
  if (!adapter)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013544BC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013544D0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101354580();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130EFC0(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLDisplayLinkManager p_destroyPlatformAdapter]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLDisplayLink.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:186 isFatal:0 description:"invalid nil value for '%{public}s'", "_adapter"];

    adapter = self->_adapter;
  }

  [(CRLDisplayLinkPlatformAdapter *)adapter invalidate];
  v7 = self->_adapter;
  self->_adapter = 0;
}

- (void)p_linkTriggeredAt:(double)at forTargetTime:(double)time
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSMutableSet *)self->_activeLinks copy];
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

        [*(*(&v11 + 1) + 8 * v10) i_triggerHandlerAtTime:at targetTime:time];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end