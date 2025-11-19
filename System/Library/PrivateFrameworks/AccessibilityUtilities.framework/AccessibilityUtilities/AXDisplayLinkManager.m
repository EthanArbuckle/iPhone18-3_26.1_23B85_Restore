@interface AXDisplayLinkManager
+ (id)currentDisplayLinkManager;
+ (void)_releaseCurrentDisplayLinkManager;
- (AXDisplayLinkManager)init;
- (BOOL)isPaused;
- (CADisplayLink)displayLink;
- (double)duration;
- (double)timestamp;
- (id)_prepareUpdatedTargetActionsForModification;
- (void)_didAddFirstTargetAction;
- (void)_didRemoveLastTargetAction;
- (void)_displayDidRefresh:(id)a3;
- (void)addTarget:(id)a3 selector:(SEL)a4;
- (void)beginRequiringWarmUpMode;
- (void)endRequiringWarmUpMode;
- (void)removeTarget:(id)a3 selector:(SEL)a4;
- (void)setDisplayLink:(id)a3;
@end

@implementation AXDisplayLinkManager

+ (id)currentDisplayLinkManager
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  if (v3)
  {
    v4 = [MEMORY[0x1E696AF00] currentThread];
    v5 = [v4 threadDictionary];

    v6 = [v5 objectForKey:v3];
    if (!v6)
    {
      v6 = objc_opt_new();
      if (v6)
      {
        [v5 setObject:v6 forKey:v3];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)_releaseCurrentDisplayLinkManager
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  if (v3)
  {
    v6 = v3;
    v4 = [MEMORY[0x1E696AF00] currentThread];
    v5 = [v4 threadDictionary];

    [v5 removeObjectForKey:v6];
    v3 = v6;
  }
}

- (AXDisplayLinkManager)init
{
  v8.receiver = self;
  v8.super_class = AXDisplayLinkManager;
  v2 = [(AXDisplayLinkManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = objc_opt_new();
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {

      v2 = 0;
    }

    else
    {
      [(AXDisplayLinkManager *)v2 setActiveTargetActions:v3];
      [(AXDisplayLinkManager *)v2 setUpdatedTargetActions:v5];
    }
  }

  return v2;
}

- (BOOL)isPaused
{
  v2 = [(AXDisplayLinkManager *)self storedDisplayLink];
  v3 = [v2 isPaused];

  return v3;
}

- (double)duration
{
  v2 = [(AXDisplayLinkManager *)self storedDisplayLink];
  [v2 duration];
  v4 = v3;

  return v4;
}

- (double)timestamp
{
  v2 = [(AXDisplayLinkManager *)self storedDisplayLink];
  [v2 timestamp];
  v4 = v3;

  return v4;
}

- (CADisplayLink)displayLink
{
  v3 = [(AXDisplayLinkManager *)self storedDisplayLink];
  if (!v3)
  {
    v3 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__displayDidRefresh_];
    v4 = [MEMORY[0x1E695DFD0] currentRunLoop];
    [v3 addToRunLoop:v4 forMode:*MEMORY[0x1E695D918]];

    [v3 setPaused:1];
    [(AXDisplayLinkManager *)self setStoredDisplayLink:v3];
  }

  return v3;
}

- (void)setDisplayLink:(id)a3
{
  v5 = a3;
  v4 = [(AXDisplayLinkManager *)self storedDisplayLink];
  if (v4 != v5)
  {
    [v4 invalidate];
    [(AXDisplayLinkManager *)self setStoredDisplayLink:v5];
  }
}

- (void)addTarget:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v9 = [[AXDisplayLinkManagerTargetAction alloc] initWithTarget:v6 actionSelector:a4];

  if ([(AXDisplayLinkManager *)self isHandlingDisplayRefresh])
  {
    v7 = [(AXDisplayLinkManager *)self _prepareUpdatedTargetActionsForModification];
    [v7 addObject:v9];
  }

  else
  {
    v7 = [(AXDisplayLinkManager *)self activeTargetActions];
    v8 = [v7 count];
    [v7 addObject:v9];
    if (!v8)
    {
      [(AXDisplayLinkManager *)self _didAddFirstTargetAction];
    }
  }
}

- (void)removeTarget:(id)a3 selector:(SEL)a4
{
  v6 = a3;
  v9 = [[AXDisplayLinkManagerTargetAction alloc] initWithTarget:v6 actionSelector:a4];

  if ([(AXDisplayLinkManager *)self isHandlingDisplayRefresh])
  {
    v7 = [(AXDisplayLinkManager *)self _prepareUpdatedTargetActionsForModification];
    [v7 removeObject:v9];
  }

  else
  {
    v7 = [(AXDisplayLinkManager *)self activeTargetActions];
    v8 = [v7 count];
    [v7 removeObject:v9];
    if (v8 && ![v7 count])
    {
      [(AXDisplayLinkManager *)self _didRemoveLastTargetAction];
    }
  }
}

- (id)_prepareUpdatedTargetActionsForModification
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(AXDisplayLinkManager *)self updatedTargetActions];
  if (![(AXDisplayLinkManager *)self hasUpdatedTargetActions])
  {
    v4 = [(AXDisplayLinkManager *)self activeTargetActions];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [v3 addObject:*(*(&v10 + 1) + 8 * i)];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(AXDisplayLinkManager *)self setHasUpdatedTargetActions:1];
  }

  return v3;
}

- (void)_didAddFirstTargetAction
{
  v2 = [(AXDisplayLinkManager *)self displayLink];
  [v2 setPaused:0];
}

- (void)_didRemoveLastTargetAction
{
  v3 = [(AXDisplayLinkManager *)self storedDisplayLink];
  [v3 setPaused:1];

  if (![(AXDisplayLinkManager *)self isWarmUpModeEnabled])
  {
    [(AXDisplayLinkManager *)self setDisplayLink:0];
    v4 = objc_opt_class();

    [v4 _releaseCurrentDisplayLinkManager];
  }
}

- (void)beginRequiringWarmUpMode
{
  v3 = [(AXDisplayLinkManager *)self warmUpModeRequirementsCount];
  [(AXDisplayLinkManager *)self setWarmUpModeRequirementsCount:v3 + 1];
  if (!v3 && ![(AXDisplayLinkManager *)self isHandlingDisplayRefresh])
  {
    if ([(AXDisplayLinkManager *)self hasUpdatedTargetActions])
    {
      _AXAssert();
    }

    v4 = [(AXDisplayLinkManager *)self activeTargetActions];
    v5 = [v4 count];

    if (!v5)
    {
      v6 = [(AXDisplayLinkManager *)self displayLink];
    }
  }
}

- (void)endRequiringWarmUpMode
{
  v3 = [(AXDisplayLinkManager *)self warmUpModeRequirementsCount]- 1;
  [(AXDisplayLinkManager *)self setWarmUpModeRequirementsCount:v3];
  if (!v3 && ![(AXDisplayLinkManager *)self isHandlingDisplayRefresh])
  {
    if ([(AXDisplayLinkManager *)self hasUpdatedTargetActions])
    {
      _AXAssert();
    }

    v4 = [(AXDisplayLinkManager *)self activeTargetActions];
    v5 = [v4 count];

    if (!v5)
    {

      [(AXDisplayLinkManager *)self _didRemoveLastTargetAction];
    }
  }
}

- (void)_displayDidRefresh:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(AXDisplayLinkManager *)self isHandlingDisplayRefresh];
  [(AXDisplayLinkManager *)self setHandlingDisplayRefresh:1];
  [(AXDisplayLinkManager *)self activeTargetActions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * v9++) displayDidRefresh:{self, v13}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(AXDisplayLinkManager *)self setHandlingDisplayRefresh:v4];
  if (v4 || ![(AXDisplayLinkManager *)self hasUpdatedTargetActions])
  {
    v11 = v5;
  }

  else
  {
    [v5 removeAllObjects];
    v10 = [(AXDisplayLinkManager *)self updatedTargetActions];
    [(AXDisplayLinkManager *)self setUpdatedTargetActions:v5];
    [(AXDisplayLinkManager *)self setActiveTargetActions:v10];
    [(AXDisplayLinkManager *)self setHasUpdatedTargetActions:0];
    v11 = v10;

    v12 = [v11 count];
    if (!v12)
    {
      [(AXDisplayLinkManager *)self _didRemoveLastTargetAction];
    }
  }
}

@end