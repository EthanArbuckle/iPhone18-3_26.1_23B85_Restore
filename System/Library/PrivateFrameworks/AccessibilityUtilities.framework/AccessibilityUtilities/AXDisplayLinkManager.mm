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
- (void)_displayDidRefresh:(id)refresh;
- (void)addTarget:(id)target selector:(SEL)selector;
- (void)beginRequiringWarmUpMode;
- (void)endRequiringWarmUpMode;
- (void)removeTarget:(id)target selector:(SEL)selector;
- (void)setDisplayLink:(id)link;
@end

@implementation AXDisplayLinkManager

+ (id)currentDisplayLinkManager
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  if (v3)
  {
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v6 = [threadDictionary objectForKey:v3];
    if (!v6)
    {
      v6 = objc_opt_new();
      if (v6)
      {
        [threadDictionary setObject:v6 forKey:v3];
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
    currentThread = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary = [currentThread threadDictionary];

    [threadDictionary removeObjectForKey:v6];
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
  storedDisplayLink = [(AXDisplayLinkManager *)self storedDisplayLink];
  isPaused = [storedDisplayLink isPaused];

  return isPaused;
}

- (double)duration
{
  storedDisplayLink = [(AXDisplayLinkManager *)self storedDisplayLink];
  [storedDisplayLink duration];
  v4 = v3;

  return v4;
}

- (double)timestamp
{
  storedDisplayLink = [(AXDisplayLinkManager *)self storedDisplayLink];
  [storedDisplayLink timestamp];
  v4 = v3;

  return v4;
}

- (CADisplayLink)displayLink
{
  storedDisplayLink = [(AXDisplayLinkManager *)self storedDisplayLink];
  if (!storedDisplayLink)
  {
    storedDisplayLink = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__displayDidRefresh_];
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [storedDisplayLink addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695D918]];

    [storedDisplayLink setPaused:1];
    [(AXDisplayLinkManager *)self setStoredDisplayLink:storedDisplayLink];
  }

  return storedDisplayLink;
}

- (void)setDisplayLink:(id)link
{
  linkCopy = link;
  storedDisplayLink = [(AXDisplayLinkManager *)self storedDisplayLink];
  if (storedDisplayLink != linkCopy)
  {
    [storedDisplayLink invalidate];
    [(AXDisplayLinkManager *)self setStoredDisplayLink:linkCopy];
  }
}

- (void)addTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v9 = [[AXDisplayLinkManagerTargetAction alloc] initWithTarget:targetCopy actionSelector:selector];

  if ([(AXDisplayLinkManager *)self isHandlingDisplayRefresh])
  {
    _prepareUpdatedTargetActionsForModification = [(AXDisplayLinkManager *)self _prepareUpdatedTargetActionsForModification];
    [_prepareUpdatedTargetActionsForModification addObject:v9];
  }

  else
  {
    _prepareUpdatedTargetActionsForModification = [(AXDisplayLinkManager *)self activeTargetActions];
    v8 = [_prepareUpdatedTargetActionsForModification count];
    [_prepareUpdatedTargetActionsForModification addObject:v9];
    if (!v8)
    {
      [(AXDisplayLinkManager *)self _didAddFirstTargetAction];
    }
  }
}

- (void)removeTarget:(id)target selector:(SEL)selector
{
  targetCopy = target;
  v9 = [[AXDisplayLinkManagerTargetAction alloc] initWithTarget:targetCopy actionSelector:selector];

  if ([(AXDisplayLinkManager *)self isHandlingDisplayRefresh])
  {
    _prepareUpdatedTargetActionsForModification = [(AXDisplayLinkManager *)self _prepareUpdatedTargetActionsForModification];
    [_prepareUpdatedTargetActionsForModification removeObject:v9];
  }

  else
  {
    _prepareUpdatedTargetActionsForModification = [(AXDisplayLinkManager *)self activeTargetActions];
    v8 = [_prepareUpdatedTargetActionsForModification count];
    [_prepareUpdatedTargetActionsForModification removeObject:v9];
    if (v8 && ![_prepareUpdatedTargetActionsForModification count])
    {
      [(AXDisplayLinkManager *)self _didRemoveLastTargetAction];
    }
  }
}

- (id)_prepareUpdatedTargetActionsForModification
{
  v15 = *MEMORY[0x1E69E9840];
  updatedTargetActions = [(AXDisplayLinkManager *)self updatedTargetActions];
  if (![(AXDisplayLinkManager *)self hasUpdatedTargetActions])
  {
    activeTargetActions = [(AXDisplayLinkManager *)self activeTargetActions];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [activeTargetActions countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(activeTargetActions);
          }

          [updatedTargetActions addObject:*(*(&v10 + 1) + 8 * i)];
        }

        v6 = [activeTargetActions countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    [(AXDisplayLinkManager *)self setHasUpdatedTargetActions:1];
  }

  return updatedTargetActions;
}

- (void)_didAddFirstTargetAction
{
  displayLink = [(AXDisplayLinkManager *)self displayLink];
  [displayLink setPaused:0];
}

- (void)_didRemoveLastTargetAction
{
  storedDisplayLink = [(AXDisplayLinkManager *)self storedDisplayLink];
  [storedDisplayLink setPaused:1];

  if (![(AXDisplayLinkManager *)self isWarmUpModeEnabled])
  {
    [(AXDisplayLinkManager *)self setDisplayLink:0];
    v4 = objc_opt_class();

    [v4 _releaseCurrentDisplayLinkManager];
  }
}

- (void)beginRequiringWarmUpMode
{
  warmUpModeRequirementsCount = [(AXDisplayLinkManager *)self warmUpModeRequirementsCount];
  [(AXDisplayLinkManager *)self setWarmUpModeRequirementsCount:warmUpModeRequirementsCount + 1];
  if (!warmUpModeRequirementsCount && ![(AXDisplayLinkManager *)self isHandlingDisplayRefresh])
  {
    if ([(AXDisplayLinkManager *)self hasUpdatedTargetActions])
    {
      _AXAssert();
    }

    activeTargetActions = [(AXDisplayLinkManager *)self activeTargetActions];
    v5 = [activeTargetActions count];

    if (!v5)
    {
      displayLink = [(AXDisplayLinkManager *)self displayLink];
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

    activeTargetActions = [(AXDisplayLinkManager *)self activeTargetActions];
    v5 = [activeTargetActions count];

    if (!v5)
    {

      [(AXDisplayLinkManager *)self _didRemoveLastTargetAction];
    }
  }
}

- (void)_displayDidRefresh:(id)refresh
{
  v18 = *MEMORY[0x1E69E9840];
  isHandlingDisplayRefresh = [(AXDisplayLinkManager *)self isHandlingDisplayRefresh];
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

  [(AXDisplayLinkManager *)self setHandlingDisplayRefresh:isHandlingDisplayRefresh];
  if (isHandlingDisplayRefresh || ![(AXDisplayLinkManager *)self hasUpdatedTargetActions])
  {
    v11 = v5;
  }

  else
  {
    [v5 removeAllObjects];
    updatedTargetActions = [(AXDisplayLinkManager *)self updatedTargetActions];
    [(AXDisplayLinkManager *)self setUpdatedTargetActions:v5];
    [(AXDisplayLinkManager *)self setActiveTargetActions:updatedTargetActions];
    [(AXDisplayLinkManager *)self setHasUpdatedTargetActions:0];
    v11 = updatedTargetActions;

    v12 = [v11 count];
    if (!v12)
    {
      [(AXDisplayLinkManager *)self _didRemoveLastTargetAction];
    }
  }
}

@end