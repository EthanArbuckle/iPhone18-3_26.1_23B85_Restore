@interface AXFocusManager
- (AXElement)currentApplication;
- (AXFocusManager)init;
- (BOOL)_focusOnFocusContainer:(id)a3;
- (BOOL)_moveFocusInFocusContainer:(id)a3 withHeading:(unint64_t)a4 queryString:(id)a5;
- (BOOL)_recursiveMoveFocusInFocusContainer:(id)a3 withHeading:(unint64_t)a4 queryString:(id)a5;
- (id)_currentFocusContainers;
- (id)_moveFocusContainerFocusInDirection:(int64_t)a3;
- (id)currentElement;
- (id)currentFocusContainer;
- (unint64_t)_indexOfTypeaheadPIDInFocusContainers:(id)a3;
- (void)_currentFocusContainers;
- (void)_enumerateObservers:(id)a3;
- (void)_moveToElementWithHeading:(unint64_t)a3 queryString:(id)a4;
- (void)_verifyPIDForTypeahead;
- (void)addObserver:(id)a3;
- (void)focusOnSceneForTypeahead;
- (void)moveFocusInsideForward:(BOOL)a3 shouldWrap:(BOOL)a4;
- (void)moveFocusWithHeading:(unint64_t)a3 byGroup:(BOOL)a4;
- (void)removeObserver:(id)a3;
@end

@implementation AXFocusManager

- (AXFocusManager)init
{
  v8.receiver = self;
  v8.super_class = AXFocusManager;
  v2 = [(AXFocusManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("AXFocusMovementQueue", v3);
    [(AXFocusManager *)v2 setMovementQueue:v4];

    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(AXFocusManager *)v2 setObservers:v5];

    [(AXFocusManager *)v2 setObserversLock:0];
    v6 = dispatch_queue_create("com.apple.AXFocusManager.ObserversQueue", v3);
    [(AXFocusManager *)v2 setObserversQueue:v6];
  }

  return v2;
}

- (id)_moveFocusContainerFocusInDirection:(int64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(AXFocusManager *)self currentFocusContainer];
  v6 = [(AXFocusManager *)self _currentFocusContainers];
  v7 = AXLogFocusEngine();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(AXFocusManager *)a3 _moveFocusContainerFocusInDirection:v6, v7];
  }

  if ([v6 count]< 2)
  {
    v9 = AXLogFocusEngine();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_23D73A000, v9, OS_LOG_TYPE_INFO, "Not able to switch native focused container because we didn't have more than 1: %@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v8 = [v6 indexOfObject:v5];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = AXLogFocusEngine();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [AXFocusManager _moveFocusContainerFocusInDirection:];
    }

LABEL_9:
    v10 = v5;
    goto LABEL_34;
  }

  v11 = v8;
  v12 = v8;
  while (1)
  {
    v13 = v6;
    v14 = v13;
    if (a3 == 1)
    {
      if ([v13 count]- 1 == v12)
      {
        v12 = 0;
      }

      else
      {
        ++v12;
      }
    }

    else if (v12)
    {
      --v12;
    }

    else
    {
      v12 = [v13 count]- 1;
    }

    v9 = [v14 objectAtIndexedSubscript:v12];
    if ([(AXFocusManager *)self _focusOnFocusContainer:v9])
    {
      break;
    }

    v15 = AXLogFocusEngine();
    v16 = v15;
    if (v12 == v11)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23D73A000, v16, OS_LOG_TYPE_DEFAULT, "Giving up on switching focus containers, because we wrapped around to our original.", buf, 2u);
      }

      v10 = v5;
      goto LABEL_33;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v9;
      _os_log_debug_impl(&dword_23D73A000, v16, OS_LOG_TYPE_DEBUG, "Skipping empty focus container: %@", buf, 0xCu);
    }
  }

  if (([v5 isEqual:v9]& 1) == 0)
  {
    v17 = AXLogFocusEngine();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [AXFocusManager _moveFocusContainerFocusInDirection:];
    }

    [v5 disableFocus];
  }

  v18 = AXLogFocusEngine();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [AXFocusManager _moveFocusContainerFocusInDirection:];
  }

  v10 = v9;
  v16 = v5;
LABEL_33:

LABEL_34:
  v19 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)moveFocusWithHeading:(unint64_t)a3 byGroup:(BOOL)a4
{
  v7 = [(AXFocusManager *)self movementQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__AXFocusManager_moveFocusWithHeading_byGroup___block_invoke;
  block[3] = &unk_278BE5830;
  block[4] = self;
  block[5] = a3;
  v9 = a4;
  dispatch_async(v7, block);
}

uint64_t __47__AXFocusManager_moveFocusWithHeading_byGroup___block_invoke(uint64_t a1)
{
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 typeaheadString];
  [v2 _moveFocusWithHeading:v3 byGroup:v4 queryString:v5 shouldWrap:1];

  return MEMORY[0x2821390A0]();
}

- (void)moveFocusInsideForward:(BOOL)a3 shouldWrap:(BOOL)a4
{
  if (a3)
  {
    v6 = 16;
  }

  else
  {
    v6 = 32;
  }

  v7 = [(AXFocusManager *)self movementQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__AXFocusManager_moveFocusInsideForward_shouldWrap___block_invoke;
  block[3] = &unk_278BE5830;
  block[4] = self;
  block[5] = v6;
  v9 = a4;
  dispatch_async(v7, block);
}

uint64_t __52__AXFocusManager_moveFocusInsideForward_shouldWrap___block_invoke(uint64_t a1)
{
  _AXShouldDispatchNonMainThreadCallbacksOnMainThreadPushReason();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 typeaheadString];
  [v2 _moveFocusWithHeading:v3 byGroup:0 queryString:v4 shouldWrap:*(a1 + 48)];

  return MEMORY[0x2821390A0]();
}

void __71__AXFocusManager__moveFocusWithHeading_byGroup_queryString_shouldWrap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 focusManager:*(a1 + 32) didHitBoundaryWithHeading:*(a1 + 40)];
  }
}

void __71__AXFocusManager__moveFocusWithHeading_byGroup_queryString_shouldWrap___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 focusManager:*(a1 + 32) didMoveToElement:*(a1 + 40)];
  }
}

- (void)focusOnSceneForTypeahead
{
  [(AXFocusManager *)self setTypeaheadString:0];
  [(AXFocusManager *)self _verifyPIDForTypeahead];
  v3 = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];

  if (v3)
  {
    v4 = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];
    [(AXFocusManager *)self _focusOnFocusContainer:v4];
  }
}

- (BOOL)_focusOnFocusContainer:(id)a3
{
  v3 = a3;
  if (![v3 hasNativeFocusElements])
  {
    goto LABEL_7;
  }

  v4 = [MEMORY[0x277CE6BA0] systemWideElement];
  v5 = [v4 systemApplication];
  v6 = MEMORY[0x277CBEA60];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "pid")}];
  v8 = [v3 fbSceneIdentifier];
  v9 = [v6 axArrayByIgnoringNilElementsWithCount:{2, v7, v8}];
  v10 = [v5 performAction:5303 withValue:v9];

  if (v10)
  {
    v11 = [v3 currentFocusElement];
    if ([v11 hasRemoteFocusSystem])
    {
      v12 = [v11 elementForRemoteFocusSystem];
      v13 = [v12 hasNativeFocusElements];
      if (v13)
      {
        [v11 focusOnApplication];
      }
    }

    else
    {
      [v3 didFocus];
      LOBYTE(v13) = 1;
    }
  }

  else
  {
LABEL_7:
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (unint64_t)_indexOfTypeaheadPIDInFocusContainers:(id)a3
{
  v4 = a3;
  v5 = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];

  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__AXFocusManager__indexOfTypeaheadPIDInFocusContainers___block_invoke;
    v8[3] = &unk_278BE58A8;
    v8[4] = self;
    v6 = [v4 indexOfObjectPassingTest:v8];
  }

  else
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

uint64_t __56__AXFocusManager__indexOfTypeaheadPIDInFocusContainers___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 focusContainerForSuccessfulTypeaheadMovement];
  v5 = [v4 isEqual:v3];

  return v5;
}

- (void)_verifyPIDForTypeahead
{
  v3 = [(AXFocusManager *)self _currentFocusContainers];
  v4 = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];
  v5 = [v3 containsObject:v4];

  if ((v5 & 1) == 0)
  {

    [(AXFocusManager *)self setFocusContainerForSuccessfulTypeaheadMovement:0];
  }
}

- (id)_currentFocusContainers
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CE6BA0] systemWideElement];
  v4 = [v3 systemApplication];
  v5 = [v4 currentApplications];

  v6 = [MEMORY[0x277CE6BA0] systemWideElement];
  v7 = [v6 elementForAttribute:1006 shouldFetchAttributes:0];

  if (v7 && [v7 pid])
  {
    v8 = [v5 arrayByAddingObject:v7];

    v5 = v8;
  }

  v9 = [MEMORY[0x277CE6BA0] systemWideElement];
  v10 = [v9 elementForAttribute:1010 shouldFetchAttributes:0];

  if (v10 && [v10 pid])
  {
    v11 = [v5 arrayByAddingObject:v10];

    v5 = v11;
  }

  v12 = [MEMORY[0x277CE6BA0] systemWideElement];
  v13 = [v12 elementForAttribute:1005 shouldFetchAttributes:0];

  if (v13 && [v13 pid])
  {
    v14 = [v5 arrayByAddingObject:v13];

    v5 = v14;
  }

  v15 = [MEMORY[0x277CE6BA0] systemWideElement];
  v16 = [v15 elementForAttribute:1000 shouldFetchAttributes:0];

  v37 = v10;
  v38 = v7;
  v34 = v16;
  v36 = v13;
  if (([v5 containsObject:v16] & 1) == 0)
  {
    v17 = [MEMORY[0x277CE7E40] server];
    v18 = [v17 isPIPWindowVisible];

    if (v18)
    {
      v19 = [v5 arrayByAddingObject:v16];

      v5 = v19;
    }
  }

  v20 = [(AXFocusManager *)self currentFocusContainer];
  v21 = [v20 windowSceneIdentifier];

  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v23 = v5;
  v24 = [v23 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v44;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v44 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v43 + 1) + 8 * i) focusContainersForCurrentSceneIdentifier:v21];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __41__AXFocusManager__currentFocusContainers__block_invoke;
        v41[3] = &unk_278BE58D0;
        v42 = v22;
        [v28 enumerateKeysAndObjectsUsingBlock:v41];
      }

      v25 = [v23 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v25);
  }

  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __41__AXFocusManager__currentFocusContainers__block_invoke_2;
  v39[3] = &unk_278BE58F8;
  v30 = v29;
  v40 = v30;
  [v22 enumerateKeysAndObjectsUsingBlock:v39];
  v31 = AXLogFocusEngine();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    [AXFocusManager _currentFocusContainers];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

void __41__AXFocusManager__currentFocusContainers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v8];
    [v7 axSafelyAddObjectsFromArray:v5];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithArray:v5];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

- (void)_moveToElementWithHeading:(unint64_t)a3 queryString:(id)a4
{
  v27 = a4;
  [(AXFocusManager *)self _verifyPIDForTypeahead];
  v6 = [(AXFocusManager *)self _currentFocusContainers];
  v7 = v6;
  if ((a3 & 0x110) == 0)
  {
    v8 = [v6 reverseObjectEnumerator];
    v9 = [v8 allObjects];

    v7 = v9;
  }

  v10 = [(AXFocusManager *)self _indexOfTypeaheadPIDInFocusContainers:v7];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  v12 = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];
  [(AXFocusManager *)self setFocusContainerForSuccessfulTypeaheadMovement:0];
  if (v11 < [v7 count])
  {
    if ((a3 & 0x110) != 0)
    {
      v13 = 256;
    }

    else
    {
      v13 = 512;
    }

    if ((a3 & 0x300) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = a3;
    }

    v15 = v11;
    while (1)
    {
      v16 = [v7 objectAtIndex:v15];
      v17 = [v16 currentFocusElement];
      v18 = [(AXFocusManager *)self _moveFocusInFocusContainer:v16 withHeading:v14 queryString:v27];
      v19 = [v16 currentFocusElement];
      if (v18 && (![v17 isEqual:v19] || objc_msgSend(v19, "hasRemoteFocusSystem")))
      {
        break;
      }

      ++v15;
      v14 = v13;
      if (v15 >= [v7 count])
      {
        goto LABEL_20;
      }
    }

    [(AXFocusManager *)self setFocusContainerForSuccessfulTypeaheadMovement:v16];
  }

LABEL_20:
  v20 = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v12;
  }

  [(AXFocusManager *)self setFocusContainerForSuccessfulTypeaheadMovement:v22];

  while (v11 < [v7 count])
  {
    v23 = [v7 objectAtIndex:v11];
    v24 = [v23 pid];
    v25 = [(AXFocusManager *)self focusContainerForSuccessfulTypeaheadMovement];
    v26 = [v25 pid];

    if (v24 != v26)
    {
      [v23 disableFocus];
    }

    ++v11;
  }
}

- (BOOL)_moveFocusInFocusContainer:(id)a3 withHeading:(unint64_t)a4 queryString:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 currentFocusElement];
  if (![v10 hasRemoteFocusSystem])
  {
    goto LABEL_5;
  }

  [v10 focusOnRemoteSceneID];
  v11 = [v10 elementForRemoteFocusSystem];
  if (![(AXFocusManager *)self _recursiveMoveFocusInFocusContainer:v11 withHeading:a4 queryString:v9])
  {

LABEL_5:
    v12 = [(AXFocusManager *)self _recursiveMoveFocusInFocusContainer:v8 withHeading:a4 queryString:v9];
    goto LABEL_6;
  }

  [v10 focusOnApplication];

  v12 = 1;
LABEL_6:

  return v12;
}

- (BOOL)_recursiveMoveFocusInFocusContainer:(id)a3 withHeading:(unint64_t)a4 queryString:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 currentFocusElement];
  v11 = [v8 moveFocusWithHeading:a4 withQueryString:v9];
  v12 = [v8 currentFocusElement];
  if (v11)
  {
    if (([v10 isEqual:v12] & 1) != 0 || !objc_msgSend(v12, "hasRemoteFocusSystem"))
    {
      v16 = 1;
    }

    else
    {
      v13 = a4 & 0x220;
      if ((a4 & 0x220) != 0)
      {
        v14 = 512;
      }

      else
      {
        v14 = 256;
      }

      v15 = [v12 elementForRemoteFocusSystem];
      [v12 focusOnRemoteSceneID];
      if ([v15 moveFocusWithHeading:v14 withQueryString:v9])
      {
        v16 = 1;
      }

      else
      {
        v17 = [v15 currentFocusElement];

        if (v17)
        {
          v16 = 0;
        }

        else
        {
          if (v13)
          {
            v18 = 32;
          }

          else
          {
            v18 = 16;
          }

          v16 = [(AXFocusManager *)self _recursiveMoveFocusInFocusContainer:v8 withHeading:v18 queryString:v9];
        }
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void __59__AXFocusManager__moveFocusWithHeading_byGroup_shouldWrap___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) _focusOnFocusContainer:v7])
  {
    v8 = AXLogFocusEngine();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __59__AXFocusManager__moveFocusWithHeading_byGroup_shouldWrap___block_invoke_cold_1();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  v9 = AXLogFocusEngine();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __59__AXFocusManager__moveFocusWithHeading_byGroup_shouldWrap___block_invoke_cold_2();
  }
}

BOOL __64__AXFocusManager__handleFailedFocusMovementWithHeading_byGroup___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _currentFocusContainers];
  v2 = [v1 count] > 1;

  return v2;
}

- (id)currentElement
{
  v2 = [(AXFocusManager *)self currentApplication];
  v3 = [v2 currentFocusElement];

  return v3;
}

- (AXElement)currentApplication
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CE6BA0] systemWideElement];
  v3 = [v2 elementForAttribute:1007 shouldFetchAttributes:0];
  v4 = [v2 systemApplication];
  v5 = [v4 uiElement];

  v6 = [MEMORY[0x277CE7E40] server];
  v7 = [v6 isContinuitySessionActive];

  if (v7)
  {
    v8 = MEMORY[0x277CBEB18];
    v9 = [v5 arrayWithAXAttribute:1109];
    v10 = [v8 arrayWithArray:v9];

    v11 = [v5 arrayWithAXAttribute:1111];
    if (([v10 isEqualToArray:v11] & 1) == 0)
    {
      [v10 removeObjectsInArray:v11];
    }

    v12 = [v10 firstObject];
    [v12 intValue];
    AppElementWithPid = _AXUIElementCreateAppElementWithPid();
    v14 = [MEMORY[0x277CE6BA0] elementWithAXUIElement:AppElementWithPid];
    if (AppElementWithPid)
    {
      CFRelease(AppElementWithPid);
    }

LABEL_15:

    goto LABEL_16;
  }

  v15 = [v2 uiElement];
  v10 = [v15 numberWithAXAttribute:1110];

  v16 = [v5 arrayWithAXAttribute:1108];
  v11 = [v16 firstObject];

  if (([v11 isEqualToString:*MEMORY[0x277CE6818]] & 1) != 0 || (v17 = objc_msgSend(v3, "pid"), v17 == objc_msgSend(v10, "intValue")) && v10)
  {
LABEL_9:
    v18 = [v5 arrayWithAXAttribute:1109];
    v12 = [v18 firstObject];

    [v12 intValue];
    v19 = _AXUIElementCreateAppElementWithPid();
    v20 = [MEMORY[0x277CE6BA0] elementWithAXUIElement:v19];
    if (v19)
    {
      CFRelease(v19);
    }

    [v20 enableFocus];
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v3;
    }

    v14 = v21;

    goto LABEL_15;
  }

  v24 = [v3 bundleId];
  v25 = *MEMORY[0x277CE7C70];
  if ([v24 isEqualToString:*MEMORY[0x277CE7C70]])
  {
    v26 = [v11 isEqualToString:v25];

    if ((v26 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v27 = [v3 bundleId];
  v28 = [v27 isEqualToString:@"com.apple.AccessibilityUIServer"];

  if (v28)
  {
    v38 = v10;
    v43 = 0;
    objc_opt_class();
    v29 = [v3 safeValueForKey:@"pid"];
    v30 = __UIAccessibilityCastAsClass();

    [v5 arrayWithAXAttribute:1109];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = v42 = 0u;
    v32 = [v31 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v40;
      while (2)
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v40 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v39 + 1) + 8 * i);
          if (([v36 isEqual:v30] & 1) == 0)
          {
            [v36 intValue];
            v37 = _AXUIElementCreateAppElementWithPid();
            v14 = [MEMORY[0x277CE6BA0] elementWithAXUIElement:v37];
            if (v37)
            {
              CFRelease(v37);
            }

            v10 = v38;
            goto LABEL_16;
          }
        }

        v33 = [v31 countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v33)
        {
          continue;
        }

        break;
      }
    }

    v10 = v38;
  }

  v14 = v3;
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)currentFocusContainer
{
  v2 = [(AXFocusManager *)self currentApplication];
  v3 = [v2 currentFocusContainer];

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)_enumerateObservers:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(AXFocusManager *)self observersQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__AXFocusManager__enumerateObservers___block_invoke;
    v6[3] = &unk_278BE5970;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __38__AXFocusManager__enumerateObservers___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(a1 + 32) observers];
  v3 = [v2 allObjects];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_moveFocusContainerFocusInDirection:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithLong:a1];
  OUTLINED_FUNCTION_1();
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_23D73A000, a3, OS_LOG_TYPE_DEBUG, "Moving to focus container in direction %@ in focus containers: %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_moveFocusContainerFocusInDirection:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23D73A000, v0, v1, "Disable focus in old focus container: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_moveFocusContainerFocusInDirection:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23D73A000, v0, v1, "Moved focus to focus container: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_moveFocusContainerFocusInDirection:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_23D73A000, v0, OS_LOG_TYPE_ERROR, "Could not find currently focus container %@ in list %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_moveFocusWithHeading:byGroup:queryString:shouldWrap:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23D73A000, v0, v1, "Moved to new element, disabling focus in previous remote focus container %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_currentFocusContainers
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_23D73A000, v0, v1, "Current apps: %@\nCurrent focus containers: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_moveFocusInRemoteElement:withHeading:byGroup:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23D73A000, v0, v1, "Moving focus in remote element %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_moveFocusInRemoteElement:withHeading:byGroup:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23D73A000, v0, v1, "Moved focus in remote element %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_moveFocusWithHeading:(char)a1 byGroup:shouldWrap:.cold.1(char a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = @"first";
  if ((a1 & 1) == 0)
  {
    v1 = @"last";
  }

  LODWORD(v5) = 138412546;
  *(&v5 + 4) = v1;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_23D73A000, v2, v3, "Moving to %@ element with multiple focusContainers: %@", v5, DWORD2(v5));
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_moveFocusWithHeading:(uint64_t)a1 byGroup:(uint64_t)a2 shouldWrap:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 134218242;
  *&v4[4] = a2;
  *&v4[12] = 2112;
  *&v4[14] = a1;
  OUTLINED_FUNCTION_2(&dword_23D73A000, a2, a3, "Current focusContainer at %lu: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_moveFocusWithHeading:byGroup:shouldWrap:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23D73A000, v0, v1, "Updated focusContainer, disabling focus in previous focusContainer %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_moveFocusWithHeading:byGroup:shouldWrap:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23D73A000, v0, v1, "Handling failed focus movement in focusContainer: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__AXFocusManager__moveFocusWithHeading_byGroup_shouldWrap___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23D73A000, v0, v1, "Moved focus to focusContainer: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__AXFocusManager__moveFocusWithHeading_byGroup_shouldWrap___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23D73A000, v0, v1, "Skipping empty focusContainer: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_recursiveMoveFocusInFocusContainer:withHeading:byGroup:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23D73A000, v0, v1, "Trying to move focus in focusContainer: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_recursiveMoveFocusInFocusContainer:withHeading:byGroup:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23D73A000, v0, v1, "Handing off to remote process, new element is a remote element: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_recursiveMoveFocusInFocusContainer:withHeading:byGroup:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_23D73A000, v0, v1, "Did not hand off to remote process, staying in focusContainer: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end