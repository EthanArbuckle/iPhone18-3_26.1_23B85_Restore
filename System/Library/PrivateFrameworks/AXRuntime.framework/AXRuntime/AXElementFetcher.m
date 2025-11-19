@interface AXElementFetcher
+ (id)springBoardElement;
- (AXElement)nativeFocusElement;
- (AXElementFetcher)initWithDelegate:(id)a3 fetchEvents:(unint64_t)a4 enableEventManagement:(BOOL)a5 enableGrouping:(BOOL)a6 shouldIncludeNonScannerElements:(BOOL)a7 beginEnabled:(BOOL)a8;
- (AXElementFetcherDelegate)delegate;
- (AXElementGroup)elementCommunityGroup;
- (AXElementGroup)firstKeyboardRow;
- (AXElementGroup)keyboardGroup;
- (AXElementGroup)lastKeyboardRow;
- (AXElementGroup)rootGroup;
- (AXElementGroupPruner)elementGroupPruner;
- (BOOL)_fetchElements:(BOOL)a3;
- (BOOL)_fetchGroups:(BOOL)a3;
- (BOOL)_updateCurrentApps;
- (NSArray)availableElements;
- (NSArray)currentApps;
- (double)_delayForFetchEvent:(unint64_t)a3;
- (id)_debugStringForFetchEvents:(unint64_t)a3;
- (id)_fetchUnprocessedAppGroups;
- (id)_fetchUnprocessedElements:(id)a3;
- (id)_filterElements:(id)a3 withFilter:(id)a4;
- (id)_filterGroup:(id)a3 withFilter:(id)a4;
- (id)_findElementsMatchingBlock:(id)a3 internalRequest:(BOOL)a4;
- (id)_findGroupableMatchingBlock:(id)a3 inElementGroup:(id)a4;
- (id)_findGroupableMatchingGroupable:(id)a3 inElementGroup:(id)a4;
- (id)_groupWithDictionary:(id)a3 currentPid:(int)a4;
- (id)_groupWithItems:(id)a3 groupTraits:(unint64_t)a4 scanningBehaviorTraits:(unint64_t)a5 label:(id)a6 identifier:(id)a7 currentPid:(int)a8;
- (id)_occludedAppSceneIdentifiers;
- (id)_processAppGroup:(id)a3 keyboardGroup:(id *)a4;
- (id)_siblingOfGroupable:(id)a3 forDirection:(BOOL)a4 didWrap:(BOOL *)a5;
- (id)closestElementToElement:(id)a3;
- (id)closestElementToPoint:(CGPoint)a3;
- (id)description;
- (id)findElementMatchingBlock:(id)a3;
- (id)findElementMatchingElement:(id)a3;
- (id)findGroupableMatchingBlock:(id)a3;
- (id)findGroupableMatchingGroupable:(id)a3;
- (id)firstElement;
- (id)inCallServiceApplication;
- (id)lastElement;
- (id)nextSiblingOfElement:(id)a3 didWrap:(BOOL *)a4;
- (id)previousSiblingOfElement:(id)a3 didWrap:(BOOL *)a4;
- (int64_t)_priorityForFetchEvent:(unint64_t)a3;
- (void)_debugLogElementCache;
- (void)_fetchEventOccurred:(unint64_t)a3;
- (void)_handleApplicationWasActivated:(id)a3;
- (void)_handleMediaDidBegin:(__CFData *)a3;
- (void)_handleNativeFocusItemDidChange:(__CFData *)a3;
- (void)_handleScreenWillChange:(__CFData *)a3;
- (void)_handleUpdateElementVisuals:(__CFData *)a3;
- (void)_notifyObserversApplicationWasActivated:(id)a3;
- (void)_notifyObserversDidFetchElementsForEvent:(unint64_t)a3 foundNewElements:(BOOL)a4;
- (void)_notifyObserversDidScheduleFetchEvent:(unint64_t)a3;
- (void)_notifyObserversMediaDidBegin:(__CFData *)a3;
- (void)_notifyObserversNativeFocusElementDidChange:(id)a3;
- (void)_notifyObserversScreenWillChange:(__CFData *)a3;
- (void)_notifyObserversUpdateElementVisuals:(id)a3;
- (void)_notifyObserversWillFetchElementsForEvent:(unint64_t)a3;
- (void)_scheduleFetchEvent:(unint64_t)a3;
- (void)_sendFakeScreenChangeIfNecessaryForGroups:(id)a3 orElements:(id)a4 appsDidChange:(BOOL)a5;
- (void)_tearDownEventCoalesceTimer;
- (void)addFetchEvents:(unint64_t)a3;
- (void)addPostFetchFilter:(id)a3 withIdentifier:(id)a4;
- (void)clearCache;
- (void)dealloc;
- (void)disableEventManagement;
- (void)enableEventManagement;
- (void)fetchEventOccurred:(unint64_t)a3;
- (void)registerFetchObserver:(id)a3 targetQueue:(id)a4;
- (void)removeAllPostFetchFilters;
- (void)removeFetchEvents:(unint64_t)a3;
- (void)removePostFetchFilterWithIdentifier:(id)a3;
- (void)unregisterAllFetchObservers;
- (void)unregisterFetchObserver:(id)a3;
@end

@implementation AXElementFetcher

+ (id)springBoardElement
{
  v2 = +[AXElementFetcher systemWideElement];
  v3 = [v2 elementForAttribute:1000];

  return v3;
}

- (AXElementFetcher)initWithDelegate:(id)a3 fetchEvents:(unint64_t)a4 enableEventManagement:(BOOL)a5 enableGrouping:(BOOL)a6 shouldIncludeNonScannerElements:(BOOL)a7 beginEnabled:(BOOL)a8
{
  v11 = a5;
  v14 = a3;
  v34.receiver = self;
  v34.super_class = AXElementFetcher;
  v15 = [(AXElementFetcher *)&v34 init];
  v16 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  objc_storeWeak(&v15->_delegate, v14);
  v16->_enabled = a8;
  v17 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  fetchObservers = v16->_fetchObservers;
  v16->_fetchObservers = v17;

  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  postFetchFilters = v16->_postFetchFilters;
  v16->_postFetchFilters = v19;

  [(AXElementFetcher *)v16 addFetchEvents:a4];
  v16->_groupingEnabled = a6;
  v16->_shouldIncludeNonScannerElements = a7;
  v21 = dispatch_queue_create("ax-element-fetch", 0);
  elementFetchQueue = v16->_elementFetchQueue;
  v16->_elementFetchQueue = v21;

  v23 = dispatch_queue_create("ax-element-access", 0);
  elementAccessQueue = v16->_elementAccessQueue;
  v16->_elementAccessQueue = v23;

  v25 = dispatch_queue_create("ax-filter-access", 0);
  filterAccessQueue = v16->_filterAccessQueue;
  v16->_filterAccessQueue = v25;

  if (!v16->_elementFetchQueue || !v16->_elementAccessQueue || !v16->_filterAccessQueue)
  {
    NSLog(@"Error: AXElementFetcher was not able to create its queues");
LABEL_9:
    v32 = 0;
    goto LABEL_10;
  }

  if (v11)
  {
    [(AXElementFetcher *)v16 enableEventManagement];
  }

  *&v16->_fetchEventDefaultDelay = xmmword_1BF7DE7C0;
  __asm { FMOV            V0.4S, #1.0 }

  *&v16->_fetchEventAlertAppearedDelay = _Q0;
  v32 = v16;
LABEL_10:

  return v32;
}

- (void)dealloc
{
  [(AXElementFetcher *)self _tearDownEventCoalesceTimer];
  [(AXElementFetcher *)self disableEventManagement];
  [(AXElementFetcher *)self unregisterAllFetchObservers];
  v3.receiver = self;
  v3.super_class = AXElementFetcher;
  [(AXElementFetcher *)&v3 dealloc];
}

- (id)description
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  elementFetchQueue = self->_elementFetchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__AXElementFetcher_description__block_invoke;
  v5[3] = &unk_1E80D4330;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(elementFetchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__AXElementFetcher_description__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v10 = [v3 _debugStringForFetchEvents:{objc_msgSend(v3, "activeFetchEvents")}];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isFetchingElements")}];
  v5 = [*(a1 + 32) currentApps];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isGroupingEnabled")}];
  v7 = [v2 stringWithFormat:@"AXElementFetcher<%p>. FetchEvents:%@. IsFetching:%@ CurrentApp:%@ UsingGroups:%@", v3, v10, v4, v5, v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (AXElement)nativeFocusElement
{
  v2 = +[AXElement primaryApp];
  v3 = [v2 nativeFocusPreferredElement];

  v4 = [v3 application];
  v5 = [v4 isEqual:v3];

  if (v5)
  {
    v6 = [v3 nativeFocusPreferredElement];

    v3 = v6;
  }

  return v3;
}

- (id)inCallServiceApplication
{
  v2 = [AXElement elementWithAXUIElement:AXUIElementSharedSystemApp()];
  v3 = [v2 elementForAttribute:91510 parameter:*MEMORY[0x1E6988340]];
  if ([v3 isVisible])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)currentApps
{
  currentApps = self->_currentApps;
  if (!currentApps)
  {
    [(AXElementFetcher *)self _updateCurrentApps];
    currentApps = self->_currentApps;
  }

  return currentApps;
}

- (BOOL)_updateCurrentApps
{
  v3 = +[AXElement systemWideElement];
  v4 = [v3 systemApplication];

  v5 = [v4 currentApplications];
  v6 = [v5 mutableCopy];

  if ([v4 isSpringBoard])
  {
    v7 = [v4 uiElement];
    v8 = [v7 arrayWithAXAttribute:1111];

    if ([v8 count])
    {
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __38__AXElementFetcher__updateCurrentApps__block_invoke;
      v19 = &unk_1E80D4558;
      v20 = v8;
      v9 = v6;
      v21 = v9;
      [v9 enumerateObjectsUsingBlock:&v16];
      if (![v9 count])
      {
        v10 = [objc_opt_class() springBoardElement];

        if (v10)
        {
          v11 = [objc_opt_class() springBoardElement];
          [v9 addObject:v11];
        }
      }
    }
  }

  customCurrentApps = self->_customCurrentApps;
  if (customCurrentApps)
  {
    v13 = [(NSArray *)customCurrentApps mutableCopy];

    v6 = v13;
  }

  v14 = [(NSArray *)self->_currentApps isEqual:v6];
  [(AXElementFetcher *)self setCurrentApps:v6];

  return v14 ^ 1;
}

void __38__AXElementFetcher__updateCurrentApps__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "pid")}];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(a1 + 40) removeObject:v6];
  }
}

- (NSArray)availableElements
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  elementAccessQueue = self->_elementAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__AXElementFetcher_availableElements__block_invoke;
  v5[3] = &unk_1E80D4330;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(elementAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __37__AXElementFetcher_availableElements__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) elementCache];

  return MEMORY[0x1EEE66BB8]();
}

- (AXElementGroup)rootGroup
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  elementAccessQueue = self->_elementAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__AXElementFetcher_rootGroup__block_invoke;
  v5[3] = &unk_1E80D4330;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(elementAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __29__AXElementFetcher_rootGroup__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) rootGroupCache];

  return MEMORY[0x1EEE66BB8]();
}

- (AXElementGroup)keyboardGroup
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  elementAccessQueue = self->_elementAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__AXElementFetcher_keyboardGroup__block_invoke;
  v5[3] = &unk_1E80D4330;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(elementAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __33__AXElementFetcher_keyboardGroup__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) keyboardGroupCache];

  return MEMORY[0x1EEE66BB8]();
}

- (AXElementGroup)firstKeyboardRow
{
  v2 = [(AXElementFetcher *)self keyboardGroup];
  v3 = [v2 firstChildPassingTest:&__block_literal_global_12];

  return v3;
}

uint64_t __36__AXElementFetcher_firstKeyboardRow__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isGroup])
  {
    v3 = [v2 isKeyboardRow];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (AXElementGroup)lastKeyboardRow
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(AXElementFetcher *)self keyboardGroup];
  v3 = [v2 descendantsPassingTest:&__block_literal_global_300];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isKeyboardRow])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

uint64_t __35__AXElementFetcher_lastKeyboardRow__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isGroup])
  {
    v3 = [v2 isKeyboardRow];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (AXElementGroup)elementCommunityGroup
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  elementAccessQueue = self->_elementAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__AXElementFetcher_elementCommunityGroup__block_invoke;
  v5[3] = &unk_1E80D4330;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(elementAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __41__AXElementFetcher_elementCommunityGroup__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) elementCommunityGroupCache];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_occludedAppSceneIdentifiers
{
  v2 = +[AXElement systemWideElement];
  v3 = [v2 springBoardApplication];
  v4 = [v3 focusedOccludedAppSceneIdentifiers];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v7 = v6;

  return v6;
}

- (void)registerFetchObserver:(id)a3 targetQueue:(id)a4
{
  v9 = a4;
  if (!v9)
  {
    v9 = MEMORY[0x1E69E96A0];
    v6 = MEMORY[0x1E69E96A0];
  }

  v7 = a3;
  v8 = [(AXElementFetcher *)self fetchObservers];
  [v8 setObject:v9 forKey:v7];
}

- (void)unregisterFetchObserver:(id)a3
{
  v4 = a3;
  v5 = [(AXElementFetcher *)self fetchObservers];
  [v5 removeObjectForKey:v4];
}

- (void)unregisterAllFetchObservers
{
  v2 = [(AXElementFetcher *)self fetchObservers];
  [v2 removeAllObjects];
}

- (void)_notifyObserversWillFetchElementsForEvent:(unint64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v14 = [(AXElementFetcher *)self currentApps];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(AXElementFetcher *)self fetchObservers];
  v5 = [v4 keyEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(AXElementFetcher *)self fetchObservers];
          v12 = [v11 objectForKey:v10];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __62__AXElementFetcher__notifyObserversWillFetchElementsForEvent___block_invoke;
          block[3] = &unk_1E80D45A0;
          block[4] = v10;
          block[5] = self;
          v17 = a3;
          v16 = v14;
          dispatch_sync(v12, block);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversNativeFocusElementDidChange:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(AXElementFetcher *)self fetchObservers];
  v5 = [v4 keyEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(AXElementFetcher *)self fetchObservers];
          v12 = [v11 objectForKey:v10];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __64__AXElementFetcher__notifyObserversNativeFocusElementDidChange___block_invoke;
          block[3] = &unk_1E80D4380;
          block[4] = v10;
          block[5] = self;
          v15 = v13;
          dispatch_sync(v12, block);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversUpdateElementVisuals:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(AXElementFetcher *)self fetchObservers];
  v5 = [v4 keyEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(AXElementFetcher *)self fetchObservers];
          v12 = [v11 objectForKey:v10];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __57__AXElementFetcher__notifyObserversUpdateElementVisuals___block_invoke;
          block[3] = &unk_1E80D4380;
          block[4] = v10;
          block[5] = self;
          v15 = v13;
          dispatch_sync(v12, block);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversApplicationWasActivated:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(AXElementFetcher *)self fetchObservers];
  v5 = [v4 keyEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(AXElementFetcher *)self fetchObservers];
          v12 = [v11 objectForKey:v10];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __60__AXElementFetcher__notifyObserversApplicationWasActivated___block_invoke;
          block[3] = &unk_1E80D4380;
          block[4] = v10;
          block[5] = self;
          v15 = v13;
          dispatch_sync(v12, block);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversScreenWillChange:(__CFData *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(AXElementFetcher *)self fetchObservers];
  v5 = [v4 keyEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(AXElementFetcher *)self fetchObservers];
          v12 = [v11 objectForKey:v10];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __53__AXElementFetcher__notifyObserversScreenWillChange___block_invoke;
          block[3] = &unk_1E80D45C8;
          block[4] = v10;
          block[5] = self;
          block[6] = a3;
          dispatch_sync(v12, block);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversMediaDidBegin:(__CFData *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(AXElementFetcher *)self fetchObservers];
  v5 = [v4 keyEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(AXElementFetcher *)self fetchObservers];
          v12 = [v11 objectForKey:v10];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __50__AXElementFetcher__notifyObserversMediaDidBegin___block_invoke;
          block[3] = &unk_1E80D45C8;
          block[4] = v10;
          block[5] = self;
          block[6] = a3;
          dispatch_sync(v12, block);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversDidFetchElementsForEvent:(unint64_t)a3 foundNewElements:(BOOL)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(AXElementFetcher *)self fetchObservers];
  v6 = [v5 keyEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v12 = [(AXElementFetcher *)self fetchObservers];
          v13 = [v12 objectForKey:v11];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __78__AXElementFetcher__notifyObserversDidFetchElementsForEvent_foundNewElements___block_invoke;
          block[3] = &unk_1E80D45F0;
          block[4] = v11;
          block[5] = self;
          block[6] = a3;
          v17 = a4;
          dispatch_sync(v13, block);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

- (void)_notifyObserversDidScheduleFetchEvent:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(AXElementFetcher *)self fetchObservers];
  v5 = [v4 keyEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(AXElementFetcher *)self fetchObservers];
          v12 = [v11 objectForKey:v10];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __58__AXElementFetcher__notifyObserversDidScheduleFetchEvent___block_invoke;
          block[3] = &unk_1E80D45C8;
          block[4] = v10;
          block[5] = self;
          block[6] = a3;
          dispatch_async(v12, block);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)addFetchEvents:(unint64_t)a3
{
  v4 = [(AXElementFetcher *)self activeFetchEvents]| a3 | 1;

  [(AXElementFetcher *)self setActiveFetchEvents:v4];
}

- (void)removeFetchEvents:(unint64_t)a3
{
  v4 = [(AXElementFetcher *)self activeFetchEvents]& ~a3 | 1;

  [(AXElementFetcher *)self setActiveFetchEvents:v4];
}

- (void)fetchEventOccurred:(unint64_t)a3
{
  if (![(AXElementFetcher *)self isEventManagementEnabled]|| ![(AXElementFetcher *)self _fetchEventCanBeManaged:a3])
  {

    [(AXElementFetcher *)self _fetchEventOccurred:a3];
  }
}

- (void)_fetchEventOccurred:(unint64_t)a3
{
  if (self->_enabled)
  {
    v5 = [(AXElementFetcher *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [(AXElementFetcher *)self delegate];
      v7 = [v6 isSystemSleeping:self];

      if (v7)
      {
        return;
      }
    }

    else
    {
    }

    v8 = [(AXElementFetcher *)self _priorityForFetchEvent:a3];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = v8;
      if (([(AXElementFetcher *)self activeFetchEvents]& a3) != 0 && v9 >= [(AXElementFetcher *)self _priorityForFetchEvent:self->_scheduledFetchEvent])
      {

        [(AXElementFetcher *)self _scheduleFetchEvent:a3];
      }
    }
  }
}

- (void)_handleNativeFocusItemDidChange:(__CFData *)a3
{
  elementFetchQueue = self->_elementFetchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__AXElementFetcher__handleNativeFocusItemDidChange___block_invoke;
  block[3] = &unk_1E80D4250;
  block[4] = self;
  dispatch_async(elementFetchQueue, block);
}

void __52__AXElementFetcher__handleNativeFocusItemDidChange___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 nativeFocusElement];
  [v1 _notifyObserversNativeFocusElementDidChange:v2];
}

- (void)_handleUpdateElementVisuals:(__CFData *)a3
{
  elementFetchQueue = self->_elementFetchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__AXElementFetcher__handleUpdateElementVisuals___block_invoke;
  v4[3] = &unk_1E80D4618;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(elementFetchQueue, v4);
}

- (void)_handleApplicationWasActivated:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    elementFetchQueue = self->_elementFetchQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __51__AXElementFetcher__handleApplicationWasActivated___block_invoke;
    v6[3] = &unk_1E80D3DA8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(elementFetchQueue, v6);
  }
}

- (void)_handleScreenWillChange:(__CFData *)a3
{
  elementFetchQueue = self->_elementFetchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AXElementFetcher__handleScreenWillChange___block_invoke;
  v4[3] = &unk_1E80D4618;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(elementFetchQueue, v4);
}

- (void)_handleMediaDidBegin:(__CFData *)a3
{
  elementFetchQueue = self->_elementFetchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__AXElementFetcher__handleMediaDidBegin___block_invoke;
  v4[3] = &unk_1E80D4618;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(elementFetchQueue, v4);
}

- (void)_tearDownEventCoalesceTimer
{
  eventCoalesceTimer = self->_eventCoalesceTimer;
  if (eventCoalesceTimer)
  {
    dispatch_source_cancel(eventCoalesceTimer);
    v4 = self->_eventCoalesceTimer;
    self->_eventCoalesceTimer = 0;
  }
}

- (void)_scheduleFetchEvent:(unint64_t)a3
{
  [(AXElementFetcher *)self _notifyObserversDidScheduleFetchEvent:self->_scheduledFetchEvent];
  [(AXElementFetcher *)self _delayForFetchEvent:a3];
  v6 = v5;
  self->_scheduledFetchEvent = a3;
  eventCoalesceTimer = self->_eventCoalesceTimer;
  if (eventCoalesceTimer)
  {
    v8 = dispatch_time(0, (v5 * 1000000000.0));

    dispatch_source_set_timer(eventCoalesceTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v9);
    v11 = self->_eventCoalesceTimer;
    self->_eventCoalesceTimer = v10;

    v12 = self->_eventCoalesceTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __40__AXElementFetcher__scheduleFetchEvent___block_invoke;
    handler[3] = &unk_1E80D4250;
    handler[4] = self;
    dispatch_source_set_event_handler(v12, handler);
    v13 = self->_eventCoalesceTimer;
    v14 = dispatch_time(0, (v6 * 1000000000.0));
    dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_eventCoalesceTimer);
  }
}

uint64_t __40__AXElementFetcher__scheduleFetchEvent___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 65) = 1;
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__AXElementFetcher__scheduleFetchEvent___block_invoke_2;
  v7[3] = &unk_1E80D4618;
  v7[4] = v4;
  v7[5] = v3;
  dispatch_async(v5, v7);
  return [*(a1 + 32) _tearDownEventCoalesceTimer];
}

uint64_t __40__AXElementFetcher__scheduleFetchEvent___block_invoke_2(uint64_t a1)
{
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
  v2 = [*(a1 + 32) _updateCurrentApps];
  [*(a1 + 32) _notifyObserversWillFetchElementsForEvent:*(a1 + 40)];
  v3 = [*(a1 + 32) isGroupingEnabled];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 _fetchGroups:v2];
  }

  else
  {
    v5 = [v4 _fetchElements:v2];
  }

  v6 = v5;
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPopReason();
  result = [*(a1 + 32) _notifyObserversDidFetchElementsForEvent:*(a1 + 40) foundNewElements:v6];
  *(*(a1 + 32) + 65) = 0;
  return result;
}

- (double)_delayForFetchEvent:(unint64_t)a3
{
  if (a3 > 15)
  {
    if (a3 > 127)
    {
      if (a3 == 128)
      {
        v3 = 80;
        return *(&self->super.isa + v3);
      }

      if (a3 == 256)
      {
        return 0.0500000007;
      }
    }

    else
    {
      if (a3 == 16)
      {
        v3 = 92;
        return *(&self->super.isa + v3);
      }

      if (a3 == 64)
      {
        v3 = 88;
        return *(&self->super.isa + v3);
      }
    }

LABEL_20:
    v3 = 72;
    return *(&self->super.isa + v3);
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v3 = 84;
      return *(&self->super.isa + v3);
    }

    if (a3 == 8)
    {
      v3 = 96;
      return *(&self->super.isa + v3);
    }

    goto LABEL_20;
  }

  if (a3 == 1)
  {
    v3 = 76;
    return *(&self->super.isa + v3);
  }

  if (a3 != 2)
  {
    goto LABEL_20;
  }

  v3 = 100;
  return *(&self->super.isa + v3);
}

- (int64_t)_priorityForFetchEvent:(unint64_t)a3
{
  result = -1;
  if (a3 > 15)
  {
    if (a3 > 63)
    {
      switch(a3)
      {
        case 0x40uLL:
          return 4;
        case 0x80uLL:
          return 2;
        case 0x100uLL:
          return 8;
      }

      return 0;
    }

    if (a3 == 16)
    {
      return 5;
    }

    if (a3 != 32)
    {
      return 0;
    }
  }

  else
  {
    if (a3 > 1)
    {
      switch(a3)
      {
        case 2uLL:
          return 7;
        case 4uLL:
          return 3;
        case 8uLL:
          return 6;
      }

      return 0;
    }

    if (a3)
    {
      return a3 == 1;
    }
  }

  return result;
}

- (void)enableEventManagement
{
  v25 = *MEMORY[0x1E69E9840];
  if (![(AXElementFetcher *)self isEventManagementEnabled])
  {
    v3 = +[AXElementFetcher systemWideElement];
    v4 = [v3 elementRef];

    pid = 0;
    v5 = AXUIElementGetPid(v4, &pid);
    if (v5)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:v5];
      NSLog(@"AXError: Not able to get pid for systemElement. error:%@. systemElementRef:%@", v6, v4);
LABEL_6:

      return;
    }

    v7 = AXObserverCreate(pid, _accessibilityEventsHandler_0, &self->_axRuntimeNotificationObserver);
    if (v7)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:v7];
      NSLog(@"AXError: Not able to create ax observer. error:%@", v6);
      goto LABEL_6;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [(AXElementFetcher *)self _axNotificationsForManagedEvents];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = AXObserverAddNotification(self->_axRuntimeNotificationObserver, v4, [v13 intValue], self);
          if (v14)
          {
            v15 = [MEMORY[0x1E696AD98] numberWithInt:v14];
            NSLog(@"Not able to register for axNotification:%@. error:%@", v13, v15);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    RunLoopSource = AXObserverGetRunLoopSource(self->_axRuntimeNotificationObserver);
    if (RunLoopSource)
    {
      v17 = RunLoopSource;
      Current = CFRunLoopGetCurrent();
      CFRunLoopAddSource(Current, v17, *MEMORY[0x1E695E8E0]);
      [(AXElementFetcher *)self setEventManagementEnabled:1];
    }
  }
}

- (void)disableEventManagement
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(AXElementFetcher *)self isEventManagementEnabled])
  {
    if (self->_axRuntimeNotificationObserver)
    {
      v3 = +[AXElementFetcher systemWideElement];
      v4 = [v3 elementRef];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v5 = [(AXElementFetcher *)self _axNotificationsForManagedEvents];
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v14 + 1) + 8 * i);
            v11 = AXObserverRemoveNotification(self->_axRuntimeNotificationObserver, v4, [v10 intValue]);
            if (v11)
            {
              v12 = [MEMORY[0x1E696AD98] numberWithInt:v11];
              NSLog(@"Not able to unregister for axNotification:%@. error:%@", v10, v12);
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v7);
      }

      axRuntimeNotificationObserver = self->_axRuntimeNotificationObserver;
      if (axRuntimeNotificationObserver)
      {
        CFRelease(axRuntimeNotificationObserver);
      }

      self->_axRuntimeNotificationObserver = 0;
    }

    [(AXElementFetcher *)self setEventManagementEnabled:0];
  }
}

- (void)_sendFakeScreenChangeIfNecessaryForGroups:(id)a3 orElements:(id)a4 appsDidChange:(BOOL)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (![(AXElementFetcher *)self didSendFakeScreenChangeOnLastFetch])
  {
    if (a5)
    {
      goto LABEL_21;
    }

    v10 = [(AXElementFetcher *)self currentApps];
    if ([v10 count] == 1)
    {
      v11 = [(AXElementFetcher *)self currentApps];
      v12 = [v11 firstObject];
      v13 = [v12 isSpringBoard];

      if (!v13)
      {
        goto LABEL_21;
      }

      if (v8)
      {
        v14 = [v8 firstObject];
        v15 = [v14 firstDescendantPassingTest:&__block_literal_global_350];

        if (!v15)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      if (![v9 count])
      {
LABEL_20:
        [(AXElementFetcher *)self setDidSendFakeScreenChangeOnLastFetch:1];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __87__AXElementFetcher__sendFakeScreenChangeIfNecessaryForGroups_orElements_appsDidChange___block_invoke_2;
        block[3] = &unk_1E80D4250;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
        goto LABEL_21;
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v9;
      v16 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v22;
        while (2)
        {
          v19 = 0;
          do
          {
            if (*v22 != v18)
            {
              objc_enumerationMutation(v10);
            }

            if (([*(*(&v21 + 1) + 8 * v19) traits] & 0x800000) != 0)
            {

              goto LABEL_20;
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }
    }

    goto LABEL_21;
  }

  [(AXElementFetcher *)self setDidSendFakeScreenChangeOnLastFetch:0];
LABEL_21:
}

BOOL __87__AXElementFetcher__sendFakeScreenChangeIfNecessaryForGroups_orElements_appsDidChange___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 isGroup] & 1) == 0 && (objc_msgSend(v2, "traits") & 0x800000) != 0;

  return v3;
}

- (BOOL)_fetchElements:(BOOL)a3
{
  v3 = a3;
  v40 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [(AXElementFetcher *)self _fetchUnprocessedElements:v5];
  v7 = [AXElementGroup groupWithElements:v5];
  [(AXElementFetcher *)self _sendFakeScreenChangeIfNecessaryForGroups:0 orElements:v6 appsDidChange:v3];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v34 = 0;
  filterAccessQueue = self->_filterAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AXElementFetcher__fetchElements___block_invoke;
  block[3] = &unk_1E80D4330;
  block[4] = self;
  block[5] = &v29;
  dispatch_sync(filterAccessQueue, block);
  v9 = v6;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v30[5];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v39 count:16];
  v12 = v9;
  if (v11)
  {
    v13 = *v25;
    v12 = v9;
    do
    {
      v14 = 0;
      v15 = v12;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v12 = [(AXElementFetcher *)self _filterElements:v15 withFilter:*(*(&v24 + 1) + 8 * v14)];

        ++v14;
        v15 = v12;
      }

      while (v11 != v14);
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v39 count:16];
    }

    while (v11);
  }

  elementAccessQueue = self->_elementAccessQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __35__AXElementFetcher__fetchElements___block_invoke_2;
  v20[3] = &unk_1E80D4640;
  v20[4] = self;
  v21 = v12;
  v22 = v7;
  v23 = &v35;
  v17 = v7;
  v18 = v12;
  dispatch_sync(elementAccessQueue, v20);
  LOBYTE(elementAccessQueue) = *(v36 + 24);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return elementAccessQueue & 1;
}

void __35__AXElementFetcher__fetchElements___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) postFetchFilters];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __35__AXElementFetcher__fetchElements___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) elementCache];
  *(*(*(a1 + 56) + 8) + 24) = [v2 isEqualToArray:*(a1 + 40)] ^ 1;

  [*(a1 + 32) setElementCache:*(a1 + 40)];
  [*(a1 + 32) setElementCommunityGroupCache:*(a1 + 48)];
  [*(a1 + 32) setRootGroupCache:0];
  v3 = *(a1 + 32);

  return [v3 setKeyboardGroupCache:0];
}

- (id)_fetchUnprocessedElements:(id)a3
{
  v58[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v58[0] = MEMORY[0x1E695E110];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXElementFetcher shouldIncludeNonScannerElements](self, "shouldIncludeNonScannerElements")}];
  v58[1] = v5;
  v6 = [(AXElementFetcher *)self _occludedAppSceneIdentifiers];
  v58[2] = v6;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:3];

  [MEMORY[0x1E695DF70] array];
  v47 = v46 = self;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = [(AXElementFetcher *)self currentApps];
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        v13 = [v12 uiElement];
        v14 = [v13 uiElementsWithAttribute:94500 parameter:v48];
        v15 = [AXElement elementsWithUIElements:v14];

        if ([v15 count])
        {
          [v47 addObjectsFromArray:v15];
          v16 = [v15 firstObject];
          v56 = v16;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
          v18 = v17 = v4;
          v19 = [AXElementGroup groupWithElements:v18];

          v4 = v17;
          [v19 setElementCommunity:v12];
          [v17 addObject:v19];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v9);
  }

  v20 = [(AXElementFetcher *)v46 inCallServiceApplication];
  if (v20 && ![v47 count])
  {
    v21 = [v20 uiElement];
    v22 = [v21 uiElementsWithAttribute:94500 parameter:v48];
    v23 = [AXElement elementsWithUIElements:v22];

    if ([v23 count])
    {
      [v47 addObjectsFromArray:v23];
      v24 = [v23 firstObject];
      v55 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
      v26 = [AXElementGroup groupWithElements:v25];

      [v26 setElementCommunity:v20];
      [v4 addObject:v26];
    }
  }

  v27 = +[AXElement systemWideElement];
  v28 = [v27 accessibilityUIServerApplication];

  v29 = [v28 uiElement];
  v30 = [v29 uiElementsWithAttribute:94500 parameter:v48];
  v31 = [AXElement elementsWithUIElements:v30];

  if ([v31 count])
  {
    [v47 addObjectsFromArray:v31];
    v32 = [v31 firstObject];
    v54 = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
    v34 = [AXElementGroup groupWithElements:v33];

    [v34 setElementCommunity:v28];
    [v4 addObject:v34];
  }

  v35 = +[AXElement systemWideElement];
  v36 = [v35 systemApplication];
  v37 = [v36 elementForAttribute:1513];

  v38 = [v37 uiElement];
  v39 = [v38 uiElementsWithAttribute:94500 parameter:v48];
  v40 = [AXElement elementsWithUIElements:v39];

  if ([v40 count])
  {
    [v47 addObjectsFromArray:v40];
    v41 = [v40 firstObject];
    v53 = v41;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    v43 = v42 = v4;
    v44 = [AXElementGroup groupWithElements:v43];

    v4 = v42;
    [v44 setElementCommunity:v37];
    [v42 addObject:v44];
  }

  return v47;
}

- (void)addPostFetchFilter:(id)a3 withIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    filterAccessQueue = self->_filterAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__AXElementFetcher_addPostFetchFilter_withIdentifier___block_invoke;
    block[3] = &unk_1E80D4668;
    block[4] = self;
    v12 = v6;
    v11 = v8;
    dispatch_async(filterAccessQueue, block);
  }
}

void __54__AXElementFetcher_addPostFetchFilter_withIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) postFetchFilters];
  v2 = _Block_copy(*(a1 + 48));
  [v3 setObject:v2 forKey:*(a1 + 40)];
}

- (void)removePostFetchFilterWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    filterAccessQueue = self->_filterAccessQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__AXElementFetcher_removePostFetchFilterWithIdentifier___block_invoke;
    v7[3] = &unk_1E80D3DA8;
    v7[4] = self;
    v8 = v4;
    dispatch_async(filterAccessQueue, v7);
  }
}

void __56__AXElementFetcher_removePostFetchFilterWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) postFetchFilters];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)removeAllPostFetchFilters
{
  filterAccessQueue = self->_filterAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AXElementFetcher_removeAllPostFetchFilters__block_invoke;
  block[3] = &unk_1E80D4250;
  block[4] = self;
  dispatch_async(filterAccessQueue, block);
}

void __45__AXElementFetcher_removeAllPostFetchFilters__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) postFetchFilters];
  [v1 removeAllObjects];
}

- (id)_filterElements:(id)a3 withFilter:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if (v7[2](v7, v14))
          {
            [v8 addObject:{v14, v16}];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

- (id)findElementMatchingElement:(id)a3
{
  v4 = a3;
  if (v4 && ![(AXElementFetcher *)self _shouldConsiderCacheAsInvalid])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__2;
    v15 = __Block_byref_object_dispose__2;
    v16 = 0;
    elementAccessQueue = self->_elementAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__AXElementFetcher_findElementMatchingElement___block_invoke;
    block[3] = &unk_1E80D4690;
    block[4] = self;
    v9 = v4;
    v10 = &v11;
    dispatch_sync(elementAccessQueue, block);
    v5 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __47__AXElementFetcher_findElementMatchingElement___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) elementCache];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isEqual:*(a1 + 40)])
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)findElementMatchingBlock:(id)a3
{
  v4 = a3;
  if (v4 && ![(AXElementFetcher *)self _shouldConsiderCacheAsInvalid])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__2;
    v15 = __Block_byref_object_dispose__2;
    v16 = 0;
    elementAccessQueue = self->_elementAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__AXElementFetcher_findElementMatchingBlock___block_invoke;
    block[3] = &unk_1E80D46B8;
    block[4] = self;
    v9 = v4;
    v10 = &v11;
    dispatch_sync(elementAccessQueue, block);
    v5 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __45__AXElementFetcher_findElementMatchingBlock___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) elementCache];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ((*(*(a1 + 40) + 16))())
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)_findElementsMatchingBlock:(id)a3 internalRequest:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6 && (![(AXElementFetcher *)self _shouldConsiderCacheAsInvalid]|| v4))
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    v19 = [MEMORY[0x1E695DF70] array];
    elementAccessQueue = self->_elementAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__AXElementFetcher__findElementsMatchingBlock_internalRequest___block_invoke;
    block[3] = &unk_1E80D46B8;
    block[4] = self;
    v12 = v6;
    v13 = &v14;
    dispatch_sync(elementAccessQueue, block);
    if (![v15[5] count])
    {
      v9 = v15[5];
      v15[5] = 0;
    }

    v7 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __63__AXElementFetcher__findElementsMatchingBlock_internalRequest___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) elementCache];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if ((*(*(a1 + 40) + 16))())
        {
          [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)closestElementToElement:(id)a3
{
  v4 = a3;
  if (v4 && ![(AXElementFetcher *)self _shouldConsiderCacheAsInvalid])
  {
    v5 = [(AXElementFetcher *)self findElementMatchingElement:v4];
    if (!v5)
    {
      [v4 visibleFrame];
      x = v13.origin.x;
      y = v13.origin.y;
      width = v13.size.width;
      height = v13.size.height;
      MidX = CGRectGetMidX(v13);
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      v5 = [(AXElementFetcher *)self closestElementToPoint:MidX, CGRectGetMidY(v14)];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)closestElementToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(AXElementFetcher *)self _shouldConsiderCacheAsInvalid])
  {
    v6 = 0;
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__2;
    v14 = __Block_byref_object_dispose__2;
    v15 = 0;
    elementAccessQueue = self->_elementAccessQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__AXElementFetcher_closestElementToPoint___block_invoke;
    v9[3] = &unk_1E80D40F8;
    *&v9[6] = x;
    *&v9[7] = y;
    v9[4] = self;
    v9[5] = &v10;
    dispatch_sync(elementAccessQueue, v9);
    v6 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return v6;
}

void __42__AXElementFetcher_closestElementToPoint___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) elementCache];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    v6 = 1.79769313e308;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        [v8 distanceToPoint:{*(a1 + 48), *(a1 + 56)}];
        if (v9 < v6)
        {
          v10 = v9;
          objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
          v6 = v10;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (id)firstElement
{
  if ([(AXElementFetcher *)self _shouldConsiderCacheAsInvalid])
  {
    v3 = 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__2;
    v11 = __Block_byref_object_dispose__2;
    v12 = 0;
    elementAccessQueue = self->_elementAccessQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __32__AXElementFetcher_firstElement__block_invoke;
    v6[3] = &unk_1E80D3CD0;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(elementAccessQueue, v6);
    v3 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return v3;
}

void __32__AXElementFetcher_firstElement__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) elementCache];
  v3 = [v2 count];

  if (v3)
  {
    v7 = [*(a1 + 32) elementCache];
    v4 = [v7 firstObject];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)lastElement
{
  if ([(AXElementFetcher *)self _shouldConsiderCacheAsInvalid])
  {
    v3 = 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__2;
    v11 = __Block_byref_object_dispose__2;
    v12 = 0;
    elementAccessQueue = self->_elementAccessQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __31__AXElementFetcher_lastElement__block_invoke;
    v6[3] = &unk_1E80D3CD0;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(elementAccessQueue, v6);
    v3 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return v3;
}

void __31__AXElementFetcher_lastElement__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) elementCache];
  v3 = [v2 count];

  if (v3)
  {
    v7 = [*(a1 + 32) elementCache];
    v4 = [v7 lastObject];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

- (id)nextSiblingOfElement:(id)a3 didWrap:(BOOL *)a4
{
  v6 = a3;
  if (v6 && ![(AXElementFetcher *)self _shouldConsiderCacheAsInvalid])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    v19 = 0;
    elementAccessQueue = self->_elementAccessQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__AXElementFetcher_nextSiblingOfElement_didWrap___block_invoke;
    v10[3] = &unk_1E80D46E0;
    v10[4] = self;
    v12 = &v14;
    v13 = a4;
    v11 = v6;
    dispatch_sync(elementAccessQueue, v10);
    v7 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __49__AXElementFetcher_nextSiblingOfElement_didWrap___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) elementCache];
  v3 = [v2 indexOfObject:*(a1 + 40)];

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [*(a1 + 32) elementCache];
    v5 = [v4 count];

    if (v5 == 1)
    {
      v6 = *(a1 + 56);
      if (v6)
      {
        *v6 = 1;
      }

      v7 = *(a1 + 40);
      v8 = *(*(a1 + 48) + 8);
      *(v8 + 40) = v7;
    }

    else
    {
      v9 = v3 + 1;
      v10 = *(a1 + 56);
      if (v9 == v5)
      {
        if (v10)
        {
          *v10 = 1;
        }

        [*(a1 + 32) elementCache];
        v11 = [objc_claimAutoreleasedReturnValue() firstObject];
      }

      else
      {
        if (v10)
        {
          *v10 = 0;
        }

        [*(a1 + 32) elementCache];
        v11 = [objc_claimAutoreleasedReturnValue() objectAtIndex:v9];
      }

      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)previousSiblingOfElement:(id)a3 didWrap:(BOOL *)a4
{
  v6 = a3;
  if (v6 && ![(AXElementFetcher *)self _shouldConsiderCacheAsInvalid])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    v19 = 0;
    elementAccessQueue = self->_elementAccessQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__AXElementFetcher_previousSiblingOfElement_didWrap___block_invoke;
    v10[3] = &unk_1E80D46E0;
    v10[4] = self;
    v12 = &v14;
    v13 = a4;
    v11 = v6;
    dispatch_sync(elementAccessQueue, v10);
    v7 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __53__AXElementFetcher_previousSiblingOfElement_didWrap___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) elementCache];
  v3 = [v2 indexOfObject:*(a1 + 40)];

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [*(a1 + 32) elementCache];
    v5 = [v4 count];

    if (v5 == 1)
    {
      v6 = *(a1 + 56);
      if (v6)
      {
        *v6 = 1;
      }

      v7 = *(a1 + 40);
      v8 = *(*(a1 + 48) + 8);
      *(v8 + 40) = v7;
    }

    else
    {
      v9 = *(a1 + 56);
      if (v3)
      {
        if (v9)
        {
          *v9 = 0;
        }

        [*(a1 + 32) elementCache];
        v10 = [objc_claimAutoreleasedReturnValue() objectAtIndex:v3 - 1];
      }

      else
      {
        if (v9)
        {
          *v9 = 1;
        }

        [*(a1 + 32) elementCache];
        v10 = [objc_claimAutoreleasedReturnValue() lastObject];
      }

      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)_siblingOfGroupable:(id)a3 forDirection:(BOOL)a4 didWrap:(BOOL *)a5
{
  v6 = a4;
  v8 = a3;
  if (v8)
  {
    v9 = v8;
    v10 = [v8 parentGroup];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v13 = [(AXElementFetcher *)self findGroupableMatchingGroupable:v9];

      v11 = [v13 parentGroup];
      v9 = v13;
    }

    if (v6)
    {
      [v11 nextSiblingOfChild:v9 didWrap:a5];
    }

    else
    {
      [v11 previousSiblingOfChild:v9 didWrap:a5];
    }
    v12 = ;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_findGroupableMatchingGroupable:(id)a3 inElementGroup:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isEqual:{v6, v16}])
        {
          v13 = v12;
LABEL_13:
          v14 = v13;
          goto LABEL_14;
        }

        if ([v12 isGroup])
        {
          v13 = [(AXElementFetcher *)self _findGroupableMatchingGroupable:v6 inElementGroup:v12];
          if (v13)
          {
            goto LABEL_13;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (id)findGroupableMatchingGroupable:(id)a3
{
  v4 = a3;
  if (v4 && ![(AXElementFetcher *)self _shouldConsiderCacheAsInvalid])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__2;
    v15 = __Block_byref_object_dispose__2;
    v16 = 0;
    elementAccessQueue = self->_elementAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__AXElementFetcher_findGroupableMatchingGroupable___block_invoke;
    block[3] = &unk_1E80D4708;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(elementAccessQueue, block);
    v5 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __51__AXElementFetcher_findGroupableMatchingGroupable___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = [v2 rootGroupCache];
  v4 = [v2 _findGroupableMatchingGroupable:v3 inElementGroup:v7];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_findGroupableMatchingBlock:(id)a3 inElementGroup:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (v6[2](v6, v12))
        {
          v13 = v12;
LABEL_13:
          v14 = v13;
          goto LABEL_14;
        }

        if ([v12 isGroup])
        {
          v13 = [(AXElementFetcher *)self _findGroupableMatchingBlock:v6 inElementGroup:v12];
          if (v13)
          {
            goto LABEL_13;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (id)findGroupableMatchingBlock:(id)a3
{
  v4 = a3;
  if (v4 && ![(AXElementFetcher *)self _shouldConsiderCacheAsInvalid])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__2;
    v15 = __Block_byref_object_dispose__2;
    v16 = 0;
    elementAccessQueue = self->_elementAccessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__AXElementFetcher_findGroupableMatchingBlock___block_invoke;
    block[3] = &unk_1E80D4730;
    v10 = &v11;
    block[4] = self;
    v9 = v4;
    dispatch_sync(elementAccessQueue, block);
    v5 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __47__AXElementFetcher_findGroupableMatchingBlock___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = [v2 rootGroupCache];
  v4 = [v2 _findGroupableMatchingBlock:v3 inElementGroup:v7];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (id)_groupWithDictionary:(id)a3 currentPid:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"GroupElements"];
  v8 = [v6 objectForKeyedSubscript:@"GroupTraits"];
  v9 = [v8 intValue];
  v10 = [v6 objectForKeyedSubscript:@"GroupScanBehaviorTraits"];
  v11 = [v10 intValue];
  v12 = [v6 objectForKeyedSubscript:@"GroupLabel"];
  v13 = [v6 objectForKeyedSubscript:@"GroupIdentifier"];

  v14 = [(AXElementFetcher *)self _groupWithItems:v7 groupTraits:v9 scanningBehaviorTraits:v11 label:v12 identifier:v13 currentPid:v4];

  return v14;
}

- (id)_groupWithItems:(id)a3 groupTraits:(unint64_t)a4 scanningBehaviorTraits:(unint64_t)a5 label:(id)a6 identifier:(id)a7 currentPid:(int)a8
{
  v53 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v41 = a6;
  v12 = a7;
  v13 = self;
  v40 = v12;
  v44 = [MEMORY[0x1E695DF70] array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v11;
  v14 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14;
  v16 = *v48;
  v17 = 0x1E80D3000uLL;
  v18 = 0x1E695D000uLL;
  v42 = *v48;
  do
  {
    v19 = 0;
    v43 = v15;
    do
    {
      if (*v48 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v47 + 1) + 8 * v19);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [(AXElementFetcher *)v13 _groupWithDictionary:v20 currentPid:a8];
        if (v22)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v23 = CFGetTypeID(v20);
        if ((v23 == AXUIElementGetTypeID()) | isKindOfClass & 1)
        {
          if (isKindOfClass)
          {
            [AXElement elementWithUIElement:v20];
          }

          else
          {
            [AXElement elementWithAXUIElement:v20];
          }
          v24 = ;
          v25 = [v24 uiElement];
          v26 = [v25 pid];

          if (v26 == a8)
          {
            v22 = v24;
          }

          else
          {
            v27 = [v24 uiElement];
            v51[0] = MEMORY[0x1E695E118];
            v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXElementFetcher shouldIncludeNonScannerElements](v13, "shouldIncludeNonScannerElements")}];
            v51[1] = v28;
            [(AXElementFetcher *)v13 _occludedAppSceneIdentifiers];
            v29 = v18;
            v30 = v17;
            v32 = v31 = v13;
            v51[2] = v32;
            v33 = [v27 objectWithAXAttribute:94500 parameter:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v51, 3)}];

            v13 = v31;
            v17 = v30;
            v18 = v29;
            v15 = v43;

            v16 = v42;
            v22 = [(AXElementFetcher *)v13 _groupWithItems:v33 groupTraits:0 scanningBehaviorTraits:0 label:0 identifier:0 currentPid:v26];
          }

          if (v22)
          {
LABEL_17:
            [v44 addObject:v22];
          }
        }
      }

      ++v19;
    }

    while (v15 != v19);
    v15 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  }

  while (v15);
LABEL_20:

  if ([v44 count])
  {
    v34 = v41;
    v35 = [AXElementGroup groupWithElements:v44 label:v41];
    [v35 setGroupTraits:a4];
    [v35 setUserDefinedScanningBehaviorTraits:a5];
    v36 = v40;
    [v35 setIdentifier:v40];
  }

  else
  {
    v35 = 0;
    v36 = v40;
    v34 = v41;
  }

  return v35;
}

- (id)_filterGroup:(id)a3 withFilter:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([v14 isGroup])
        {
          v15 = [(AXElementFetcher *)self _filterGroup:v14 withFilter:v7];
          if (v15)
          {
            [v8 addObject:v15];
          }
        }

        else if (v7[2](v7, v14))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v16 = [v9 label];
    v17 = [AXElementGroup groupWithElements:v8 label:v16];

    [v17 setGroupTraits:{objc_msgSend(v9, "groupTraits")}];
    [v17 setUserDefinedScanningBehaviorTraits:{objc_msgSend(v9, "userDefinedScanningBehaviorTraits")}];
    v18 = [v9 identifier];
    [v17 setIdentifier:v18];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (AXElementGroupPruner)elementGroupPruner
{
  elementGroupPruner = self->_elementGroupPruner;
  if (!elementGroupPruner)
  {
    v4 = objc_alloc_init(AXElementGroupPruner);
    v5 = self->_elementGroupPruner;
    self->_elementGroupPruner = v4;

    elementGroupPruner = self->_elementGroupPruner;
  }

  return elementGroupPruner;
}

- (id)_processAppGroup:(id)a3 keyboardGroup:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v34 = 0;
  filterAccessQueue = self->_filterAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AXElementFetcher__processAppGroup_keyboardGroup___block_invoke;
  block[3] = &unk_1E80D4330;
  block[4] = self;
  block[5] = &v29;
  dispatch_sync(filterAccessQueue, block);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v30[5];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v35 count:16];
  v10 = v6;
  if (v9)
  {
    v11 = *v25;
    v10 = v6;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v10 = [(AXElementFetcher *)self _filterGroup:v13 withFilter:*(*(&v24 + 1) + 8 * v12), v24];

        ++v12;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v35 count:16];
    }

    while (v9);
  }

  v14 = [(AXElementFetcher *)self visualElementGrouper];
  v15 = v14 == 0;

  if (v15)
  {
    v16 = [[AXVisualElementGrouper alloc] initWithHeuristics:[(AXElementFetcher *)self elementGroupingHeuristics]];
    [(AXElementFetcher *)self setVisualElementGrouper:v16];
  }

  v17 = [(AXElementFetcher *)self visualElementGrouper];
  v18 = [v17 groupElementsInRootGroup:v10];

  v19 = [(AXElementFetcher *)self elementGroupPruner];
  v20 = [v19 pruneRootGroup:v18];

  if (a4)
  {
    *a4 = [v20 firstChildPassingTest:&__block_literal_global_373];
  }

  v21 = [v6 elementCommunity];
  [v20 setElementCommunity:v21];

  v22 = v20;
  _Block_object_dispose(&v29, 8);

  return v22;
}

void __51__AXElementFetcher__processAppGroup_keyboardGroup___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) postFetchFilters];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __51__AXElementFetcher__processAppGroup_keyboardGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isGroup])
  {
    v3 = [v2 isKeyboardContainer];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_fetchUnprocessedAppGroups
{
  v57 = *MEMORY[0x1E69E9840];
  v47 = [MEMORY[0x1E695DF70] array];
  v3 = [(AXElementFetcher *)self currentApps];
  v4 = [v3 mutableCopy];

  v5 = +[AXElement systemWideElement];
  v6 = [v5 accessibilityUIServerApplication];

  if (v6)
  {
    v7 = [v6 uiElement];
    [v7 updateCache:14000];

    v8 = [v6 elementsForAttribute:14000];
    [v4 addObjectsFromArray:v8];

    v9 = [v6 uiElement];
    [v9 updateCache:2076];

    v10 = [v6 elementsForAttribute:2076];
    [v4 addObjectsFromArray:v10];
  }

  v11 = +[AXElement systemWideElement];
  v12 = [v11 systemApplication];

  v48 = [v12 elementForAttribute:1513];
  if (v48 && ([v12 isControlCenterVisible] & 1) == 0)
  {
    [v4 addObject:v48];
  }

  v13 = [(AXElementFetcher *)self inCallServiceApplication];
  if (v13)
  {
    v14 = [v4 firstObject];
    v15 = [v14 isSpringBoard];

    if (v15)
    {
      [v4 addObject:v13];
    }
  }

  v43 = v13;
  v44 = v12;
  v45 = v6;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v4;
  v16 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (!v16)
  {
    v50 = 0;
    v46 = 0;
    goto LABEL_28;
  }

  v17 = v16;
  v50 = 0;
  v46 = 0;
  v18 = *v52;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v52 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v51 + 1) + 8 * i);
      v21 = [v20 uiElement];
      v55[0] = MEMORY[0x1E695E118];
      v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[AXElementFetcher shouldIncludeNonScannerElements](self, "shouldIncludeNonScannerElements")}];
      v55[1] = v22;
      v23 = [(AXElementFetcher *)self _occludedAppSceneIdentifiers];
      v55[2] = v23;
      v24 = [v21 objectWithAXAttribute:94500 parameter:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v55, 3)}];

      if ([v24 count])
      {
        v25 = [v20 uiElement];
        v26 = -[AXElementFetcher _groupWithItems:groupTraits:scanningBehaviorTraits:label:identifier:currentPid:](self, "_groupWithItems:groupTraits:scanningBehaviorTraits:label:identifier:currentPid:", v24, 0, 0, 0, 0, [v25 pid]);

        if (v26)
        {
          [v26 setElementCommunity:v20];
          v27 = [v20 label];
          [v26 setLabel:v27];

          if (v20 == v48)
          {
            [v26 setGroupTraits:256];
          }

          if ([v20 isSpringBoard])
          {
            v28 = v46;
            v29 = v50;
            v46 = v26;
            goto LABEL_21;
          }

          v30 = [v20 applicationIsModal];
          v28 = v50;
          v29 = v26;
          if (v30)
          {
LABEL_21:
            v31 = v26;

            v50 = v29;
          }

          [v47 addObject:v26];
        }
      }
    }

    v17 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  }

  while (v17);
LABEL_28:

  if (v45 | v48)
  {
    v32 = [(AXElementFetcher *)self currentApps];
    v33 = [v32 count];

    if (v33 != 1)
    {
      v35 = +[AXElement systemWideElement];
      v36 = [v35 springBoardApplication];
      v37 = [v36 applicationIsModal];

      if (v37)
      {
        [v47 removeAllObjects];
        if (!v46)
        {
          goto LABEL_38;
        }

        v38 = v47;
        v39 = v46;
      }

      else
      {
        if (!v50)
        {
          goto LABEL_38;
        }

        [v47 removeAllObjects];
        v38 = v47;
        v39 = v50;
      }

      [v38 addObject:{v39, v43}];
      goto LABEL_38;
    }

    if ([v47 count])
    {
      v34 = [AXElementGroup groupWithElements:v47];
      [v47 removeAllObjects];
      [v47 addObject:v34];
    }
  }

LABEL_38:
  if (_AXSClarityBoardEnabled() && [v47 count] >= 2)
  {
    v40 = [AXElementGroup groupWithElements:v47];
    [v47 removeAllObjects];
    [v47 addObject:v40];
  }

  v41 = v47;

  return v47;
}

- (BOOL)_fetchGroups:(BOOL)a3
{
  v3 = a3;
  v49 = *MEMORY[0x1E69E9840];
  v5 = [(AXElementFetcher *)self _fetchUnprocessedAppGroups];
  [(AXElementFetcher *)self _sendFakeScreenChangeIfNecessaryForGroups:v5 orElements:0 appsDidChange:v3];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v33 = [MEMORY[0x1E695DF70] array];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = v5;
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v8)
  {
    v9 = *v41;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        v39 = 0;
        v12 = [(AXElementFetcher *)self _processAppGroup:v11 keyboardGroup:&v39];
        v13 = v39;
        v14 = v13;
        if (v13)
        {
          v15 = v13;

          v7 = v15;
        }

        if ([v6 count] >= 2 && objc_msgSend(v12, "count") == 1 && (objc_msgSend(v12, "elementCommunity"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isSystemApplication"), v16, v17))
        {
          v18 = [v12 firstObject];
          [v33 addObject:v18];
        }

        else if (v12)
        {
          [v33 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v8);
  }

  if ([v33 count] < 2)
  {
    if ([v33 count] == 1)
    {
      v26 = [v33 firstObject];
      v25 = 0;
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }
  }

  else
  {
    if (v7)
    {
      v19 = [v7 parentGroup];
      v20 = [v33 indexOfObject:v19];
      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v21 = [v19 groupByRemovingGroupable:v7];
        v22 = [(AXElementFetcher *)self elementGroupPruner];
        v23 = [v22 pruneRootGroup:v21];

        [v33 replaceObjectAtIndex:v20 withObject:v23];
        v24 = [v23 elementCommunity];
        [v7 setElementCommunity:v24];

        [v33 addObject:v7];
      }
    }

    v25 = [AXElementGroup groupWithElements:v33];
    v26 = v25;
  }

  elementAccessQueue = self->_elementAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__AXElementFetcher__fetchGroups___block_invoke;
  block[3] = &unk_1E80D4758;
  v37 = v25;
  v38 = &v44;
  block[4] = self;
  v35 = v26;
  v36 = v7;
  v28 = v25;
  v29 = v7;
  v30 = v26;
  dispatch_sync(elementAccessQueue, block);
  v31 = *(v45 + 24);

  _Block_object_dispose(&v44, 8);
  return v31 & 1;
}

uint64_t __33__AXElementFetcher__fetchGroups___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) rootGroupCache];
  v4 = *(a1 + 40);
  if (v3 == v4 || ([*(a1 + 32) rootGroupCache], v1 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v1, "isEqualToArray:", *(a1 + 40))))
  {
    v5 = [*(a1 + 32) keyboardGroupCache];
    if (v5 == *(a1 + 48))
    {
      *(*(*(a1 + 64) + 8) + 24) = 0;
    }

    else
    {
      v6 = [*(a1 + 32) keyboardGroupCache];
      *(*(*(a1 + 64) + 8) + 24) = [v6 isEqualToArray:*(a1 + 48)] ^ 1;
    }

    if (v3 == v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

LABEL_9:
  [*(a1 + 40) setRootGroup:1];
  [*(a1 + 32) setRootGroupCache:*(a1 + 40)];
  [*(a1 + 32) setElementCommunityGroupCache:*(a1 + 56)];
  [*(a1 + 32) setKeyboardGroupCache:*(a1 + 48)];
  v7 = *(a1 + 32);

  return [v7 setElementCache:0];
}

- (void)clearCache
{
  [(AXElementFetcher *)self setElementCache:0];
  [(AXElementFetcher *)self setRootGroupCache:0];
  [(AXElementFetcher *)self setKeyboardGroupCache:0];

  [(AXElementFetcher *)self setElementCommunityGroupCache:0];
}

- (id)_debugStringForFetchEvents:(unint64_t)a3
{
  if (AXFetchEventAllEvents == a3)
  {
    v3 = @"AllEvents";
    goto LABEL_12;
  }

  v4 = a3;
  v5 = [MEMORY[0x1E696AD60] string];
  v3 = v5;
  if (v4)
  {
    [(__CFString *)v5 appendFormat:@"UserRequested"];
    if ((v4 & 8) == 0)
    {
LABEL_5:
      if ((v4 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_5;
  }

  [(__CFString *)v3 appendFormat:@" | ScreenChange"];
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [(__CFString *)v3 appendFormat:@" | LayoutChange"];
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(__CFString *)v3 appendFormat:@" | LayoutChange - Immediate"];
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [(__CFString *)v3 appendFormat:@" | OrientationChange"];
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  [(__CFString *)v3 appendFormat:@" | AlertAppeared"];
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_21:
  [(__CFString *)v3 appendFormat:@" | AppTransition"];
  if ((v4 & 0x80) != 0)
  {
LABEL_11:
    [(__CFString *)v3 appendFormat:@" | ScrolledByPage"];
  }

LABEL_12:

  return v3;
}

- (void)_debugLogElementCache
{
  elementAccessQueue = self->_elementAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__AXElementFetcher__debugLogElementCache__block_invoke;
  block[3] = &unk_1E80D4250;
  block[4] = self;
  dispatch_async(elementAccessQueue, block);
}

void __41__AXElementFetcher__debugLogElementCache__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"Element Cache:\n"];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [*(a1 + 32) elementCache];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 appendFormat:@"\t%@\n", *(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  NSLog(@"%@", v2);
}

- (AXElementFetcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end