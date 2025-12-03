@interface CRLPKDrawingProvider
+ (id)allDrawingItemsDescendedFromContainer:(id)container;
+ (void)p_recursivelyAddFreehandDrawingItemsFromGroup:(id)group drawingItems:(id)items;
- (CRLBidirectionalMap)drawingShapeItemUUIDToStrokeUUIDBidirectionalMap;
- (CRLPKDrawingProvider)initWithICC:(id)c;
- (NSArray)pkStrokesContainingAllDrawingsForEntireCanvas;
- (NSDictionary)strokeUUIDsToDrawingItems;
- (NSDictionary)strokeUUIDsToDrawingShapeItems;
- (NSDictionary)strokeUUIDsToStrokes;
- (NSSet)strokeDataUUIDsForNonInteractiveDrawings;
- (NSSet)strokeUUIDsForNonInteractiveDrawings;
- (PKDrawing)unifiedDrawing;
- (id)p_createUUIDFromHashingStrokeTransformForShapeItem:(id)item;
- (id)p_fetchAllDrawingItemsFromCanvas;
- (id)p_fetchAllShapeItemsFromDrawingItem:(id)item;
- (id)p_observersWithChangedDrawings;
- (id)pkStrokesForDrawingShapeItemUUID:(id)d;
- (id)pkStrokesForFreehandDrawingItemUUID:(id)d;
- (id)strokeDataUUIDForDrawingShapeItemUUID:(id)d;
- (void)activeDrawingDidBegin;
- (void)activeDrawingWillEndAfterInsertingFinalizedDrawingItem;
- (void)addConsolidatedPKDrawingObserver:(id)observer;
- (void)addPKDrawingsObserver:(id)observer;
- (void)dealloc;
- (void)p_addSubscriptionsForDrawingItemChanges;
- (void)p_checkIfNeededAndRegisterRecentlyCreatedLocalStroke:(id)stroke drawingShapeItemUUID:(id)d updatedDrawingItemUUID:(id)iD;
- (void)p_cleanPKStrokeCachesIfNecessary;
- (void)p_runStrokeUpdateIfNeeded;
- (void)p_setUp;
- (void)p_setUpUpdateLink;
- (void)p_updateConsolidatedObserversIfNeeded;
- (void)p_updateObservers;
- (void)p_updateObserversWithNewPKStrokesIfNeeded;
- (void)p_updateObserversWithUpdatedPKStrokesSynchronously:(BOOL)synchronously;
- (void)p_updatePKStrokesForShapeItemsIfNeeded:(id)needed boardIdentifier:(id)identifier;
- (void)processChanges:(id)changes forChangeSource:(id)source;
- (void)teardown;
@end

@implementation CRLPKDrawingProvider

- (CRLPKDrawingProvider)initWithICC:(id)c
{
  cCopy = c;
  v44.receiver = self;
  v44.super_class = CRLPKDrawingProvider;
  v5 = [(CRLPKDrawingProvider *)&v44 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_icc, cCopy);
    v6->_isTornDown = 0;
    v7 = objc_alloc_init(NSMutableSet);
    observers = v6->_observers;
    v6->_observers = v7;

    v9 = objc_alloc_init(NSMutableSet);
    observersWantingConsolidatedPKDrawing = v6->_observersWantingConsolidatedPKDrawing;
    v6->_observersWantingConsolidatedPKDrawing = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    drawingParentIdsToShapeItemsBeingListenedTo = v6->_drawingParentIdsToShapeItemsBeingListenedTo;
    v6->_drawingParentIdsToShapeItemsBeingListenedTo = v11;

    v13 = objc_alloc_init(NSMutableSet);
    uuidsForDrawingItems = v6->_uuidsForDrawingItems;
    v6->_uuidsForDrawingItems = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    shapeItemIdToParentItemId = v6->_shapeItemIdToParentItemId;
    v6->_shapeItemIdToParentItemId = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    cachedPKStrokesForDrawingItems = v6->_cachedPKStrokesForDrawingItems;
    v6->_cachedPKStrokesForDrawingItems = v17;

    v19 = objc_alloc_init(NSMutableOrderedSet);
    cachedPKStrokesForDrawingItemsOrderedKeys = v6->_cachedPKStrokesForDrawingItemsOrderedKeys;
    v6->_cachedPKStrokesForDrawingItemsOrderedKeys = v19;

    v21 = objc_alloc_init(NSMutableDictionary);
    changedPKStrokesForDrawingItemIds = v6->_changedPKStrokesForDrawingItemIds;
    v6->_changedPKStrokesForDrawingItemIds = v21;

    v23 = objc_alloc_init(NSMutableSet);
    drawingItemsNeedingUpdatedPKStrokes = v6->_drawingItemsNeedingUpdatedPKStrokes;
    v6->_drawingItemsNeedingUpdatedPKStrokes = v23;

    v25 = objc_alloc_init(NSMutableSet);
    drawingItemsNeedingRemovedPKStrokes = v6->_drawingItemsNeedingRemovedPKStrokes;
    v6->_drawingItemsNeedingRemovedPKStrokes = v25;

    v27 = objc_alloc_init(CRLBidirectionalMap);
    cachedDrawingShapeItemUUIDToStrokeDataUUIDDict = v6->_cachedDrawingShapeItemUUIDToStrokeDataUUIDDict;
    v6->_cachedDrawingShapeItemUUIDToStrokeDataUUIDDict = v27;

    v29 = objc_alloc_init(CRLBidirectionalMap);
    cachedDrawingShapeItemUUIDToStrokeUUIDDict = v6->_cachedDrawingShapeItemUUIDToStrokeUUIDDict;
    v6->_cachedDrawingShapeItemUUIDToStrokeUUIDDict = v29;

    v31 = objc_alloc_init(NSMutableDictionary);
    updatedParentUUIDToDrawingShapeItemUUIDsDict = v6->_updatedParentUUIDToDrawingShapeItemUUIDsDict;
    v6->_updatedParentUUIDToDrawingShapeItemUUIDsDict = v31;

    v33 = objc_alloc_init(NSMutableDictionary);
    strokeUUIDsToDrawingItems = v6->_strokeUUIDsToDrawingItems;
    v6->_strokeUUIDsToDrawingItems = v33;

    v35 = objc_alloc_init(NSMutableDictionary);
    strokeUUIDsToDrawingShapeItems = v6->_strokeUUIDsToDrawingShapeItems;
    v6->_strokeUUIDsToDrawingShapeItems = v35;

    v37 = objc_alloc_init(NSMutableDictionary);
    strokeUUIDsToStrokes = v6->_strokeUUIDsToStrokes;
    v6->_strokeUUIDsToStrokes = v37;

    v39 = objc_alloc_init(NSMutableSet);
    uuidsForDrawingShapeItemsFromLockedParentItems = v6->_uuidsForDrawingShapeItemsFromLockedParentItems;
    v6->_uuidsForDrawingShapeItemsFromLockedParentItems = v39;

    v6->_shouldUpdateObservers = 1;
    v6->_updatePKStrokesLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    v41 = [[_TtC8Freeform25CRLLastSubmittedTaskQueue alloc] initWithLabel:@"com.apple.freeform.pk-drawing-provider.task.queue"];
    taskQueue = v6->_taskQueue;
    v6->_taskQueue = v41;

    v6->_isStrokeUpdatePending = 0;
    v6->_completionTimeOfLastLocalStroke = 0.0;
    [(CRLPKDrawingProvider *)v6 p_setUp];
  }

  return v6;
}

- (NSDictionary)strokeUUIDsToDrawingItems
{
  os_unfair_lock_lock(&self->_updatePKStrokesLock);
  v3 = [(NSMutableDictionary *)self->_strokeUUIDsToDrawingItems copy];
  os_unfair_lock_unlock(&self->_updatePKStrokesLock);

  return v3;
}

- (NSDictionary)strokeUUIDsToDrawingShapeItems
{
  os_unfair_lock_lock(&self->_updatePKStrokesLock);
  v3 = [(NSMutableDictionary *)self->_strokeUUIDsToDrawingShapeItems copy];
  os_unfair_lock_unlock(&self->_updatePKStrokesLock);

  return v3;
}

- (NSDictionary)strokeUUIDsToStrokes
{
  os_unfair_lock_lock(&self->_updatePKStrokesLock);
  v3 = [(NSMutableDictionary *)self->_strokeUUIDsToStrokes copy];
  os_unfair_lock_unlock(&self->_updatePKStrokesLock);

  return v3;
}

- (CRLBidirectionalMap)drawingShapeItemUUIDToStrokeUUIDBidirectionalMap
{
  os_unfair_lock_lock(&self->_updatePKStrokesLock);
  v3 = [(CRLBidirectionalMap *)self->_cachedDrawingShapeItemUUIDToStrokeUUIDDict copy];
  os_unfair_lock_unlock(&self->_updatePKStrokesLock);

  return v3;
}

- (NSSet)strokeUUIDsForNonInteractiveDrawings
{
  v3 = +[NSMutableSet set];
  os_unfair_lock_lock(&self->_updatePKStrokesLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_uuidsForDrawingShapeItemsFromLockedParentItems;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(CRLBidirectionalMap *)self->_cachedDrawingShapeItemUUIDToStrokeUUIDDict objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];
        [v3 crl_addNonNilObject:v9];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_updatePKStrokesLock);
  v10 = [v3 copy];

  return v10;
}

- (NSSet)strokeDataUUIDsForNonInteractiveDrawings
{
  v3 = +[NSMutableSet set];
  os_unfair_lock_lock(&self->_updatePKStrokesLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_uuidsForDrawingShapeItemsFromLockedParentItems;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(CRLBidirectionalMap *)self->_cachedDrawingShapeItemUUIDToStrokeDataUUIDDict objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];
        [v3 crl_addNonNilObject:v9];
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_updatePKStrokesLock);
  v10 = [v3 copy];

  return v10;
}

- (void)p_setUp
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  changeNotifier = [WeakRetained changeNotifier];

  if (!changeNotifier)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101349A1C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101349A30();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101349ACC();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLPKDrawingProvider p_setUp]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPKDrawingProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:256 isFatal:0 description:"invalid nil value for '%{public}s'", "changeNotifier"];
  }

  [changeNotifier addObserver:self forChangeSourceOfClass:objc_opt_class()];
  [changeNotifier addObserver:self forChangeSourceOfClass:objc_opt_class()];
  [changeNotifier addObserver:self forChangeSourceOfClass:objc_opt_class()];
  [(CRLPKDrawingProvider *)self p_addSubscriptionsForDrawingItemChanges];
  [(CRLPKDrawingProvider *)self p_updateObserversWithUpdatedPKStrokesSynchronously:1];
  [(CRLPKDrawingProvider *)self p_setUpUpdateLink];
}

- (void)p_setUpUpdateLink
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  canvasView = [WeakRetained canvasView];

  if (canvasView)
  {
    v5 = [UIUpdateLink updateLinkForView:canvasView];
    updateLink = self->_updateLink;
    self->_updateLink = v5;

    objc_initWeak(&location, self);
    v7 = self->_updateLink;
    v8 = +[UIUpdateActionPhase afterCATransactionCommit];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1002BEB14;
    v13[3] = &unk_101851ED0;
    objc_copyWeak(&v14, &location);
    [(UIUpdateLink *)v7 addActionToPhase:v8 handler:v13];

    [(UIUpdateLink *)self->_updateLink setRequiresContinuousUpdates:1];
    [(UIUpdateLink *)self->_updateLink setEnabled:1];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101349AF4();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101349B08();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101349BA4();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101349BCC(v10, v9);
    }

    v11 = [NSString stringWithUTF8String:"[CRLPKDrawingProvider p_setUpUpdateLink]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPKDrawingProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:291 isFatal:0 description:"invalid nil value for '%{public}s'", "canvasView"];
  }
}

- (void)addPKDrawingsObserver:(id)observer
{
  if (observer)
  {
    observers = self->_observers;

    [(NSMutableSet *)observers addObject:?];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101349C94();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101349CA8();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101349D38();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLPKDrawingProvider addPKDrawingsObserver:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPKDrawingProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:323 isFatal:0 description:"Trying to add a nil observer with addObserver:"];
  }
}

- (void)addConsolidatedPKDrawingObserver:(id)observer
{
  if (observer)
  {
    observersWantingConsolidatedPKDrawing = self->_observersWantingConsolidatedPKDrawing;

    [(NSMutableSet *)observersWantingConsolidatedPKDrawing addObject:?];
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101349D60();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101349D74();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101349E04();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLPKDrawingProvider addConsolidatedPKDrawingObserver:]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPKDrawingProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:335 isFatal:0 description:"Trying to add a nil observer with addConsolidatedPKDrawingObserver:"];
  }
}

- (void)activeDrawingDidBegin
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  freehandDrawingToolkit = [WeakRetained freehandDrawingToolkit];
  currentTool = [freehandDrawingToolkit currentTool];
  type = [currentTool type];

  if (type != 10)
  {
    self->_shouldUpdateObservers = 0;
  }
}

- (void)activeDrawingWillEndAfterInsertingFinalizedDrawingItem
{
  self->_shouldUpdateObservers = 1;
  [(UIUpdateLink *)self->_updateLink setEnabled:1];
  v4 = +[NSDate now];
  [v4 timeIntervalSinceReferenceDate];
  self->_completionTimeOfLastLocalStroke = v3;
}

+ (id)allDrawingItemsDescendedFromContainer:(id)container
{
  containerCopy = container;
  v5 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = containerCopy;
  childInfos = [containerCopy childInfos];
  v7 = [childInfos countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(childInfos);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = objc_opt_class();
        v13 = sub_100014370(v12, v11);
        v14 = objc_opt_class();
        v15 = sub_100014370(v14, v11);
        v16 = v15;
        if (v13)
        {
          [v5 addObject:v13];
        }

        else if (v15)
        {
          [self p_recursivelyAddFreehandDrawingItemsFromGroup:v15 drawingItems:v5];
        }
      }

      v8 = [childInfos countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)processChanges:(id)changes forChangeSource:(id)source
{
  sourceCopy = source;
  v6 = objc_opt_class();
  v7 = sub_100014370(v6, sourceCopy);
  v8 = objc_opt_class();
  v9 = sub_100014370(v8, sourceCopy);
  v10 = objc_opt_class();
  v11 = sub_100014370(v10, sourceCopy);
  if (v7 && ([v7 prohibitsClustering] & 1) == 0)
  {
    v91 = v11;
    if (![v7 isInBoard])
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      childItems = [v7 childItems];
      v72 = [childItems countByEnumeratingWithState:&v97 objects:v114 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v98;
        do
        {
          for (i = 0; i != v73; i = i + 1)
          {
            if (*v98 != v74)
            {
              objc_enumerationMutation(childItems);
            }

            shapeItemIdToParentItemId = self->_shapeItemIdToParentItemId;
            v77 = [*(*(&v97 + 1) + 8 * i) id];
            [(NSMutableDictionary *)shapeItemIdToParentItemId setObject:0 forKeyedSubscript:v77];
          }

          v73 = [childItems countByEnumeratingWithState:&v97 objects:v114 count:16];
        }

        while (v73);
      }

      drawingParentIdsToShapeItemsBeingListenedTo = self->_drawingParentIdsToShapeItemsBeingListenedTo;
      v79 = [v7 id];
      [(NSMutableDictionary *)drawingParentIdsToShapeItemsBeingListenedTo setObject:0 forKeyedSubscript:v79];

      uuidsForDrawingItems = self->_uuidsForDrawingItems;
      v81 = [v7 id];
      [(NSMutableSet *)uuidsForDrawingItems removeObject:v81];

      [(NSMutableSet *)self->_drawingItemsNeedingRemovedPKStrokes addObject:v7];
      v11 = v91;
      goto LABEL_67;
    }

    v23 = self->_drawingParentIdsToShapeItemsBeingListenedTo;
    v24 = [v7 id];
    v25 = [(NSMutableDictionary *)v23 objectForKeyedSubscript:v24];

    if (!v25)
    {
      v90 = sourceCopy;
      childItems2 = [v7 childItems];
      v27 = [NSMutableSet setWithArray:childItems2];
      v28 = self->_drawingParentIdsToShapeItemsBeingListenedTo;
      v29 = [v7 id];
      [(NSMutableDictionary *)v28 setObject:v27 forKeyedSubscript:v29];

      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      childItems3 = [v7 childItems];
      v31 = [childItems3 countByEnumeratingWithState:&v109 objects:v117 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v110;
        do
        {
          for (j = 0; j != v32; j = j + 1)
          {
            if (*v110 != v33)
            {
              objc_enumerationMutation(childItems3);
            }

            v35 = *(*(&v109 + 1) + 8 * j);
            v36 = [v7 id];
            v37 = self->_shapeItemIdToParentItemId;
            v38 = [v35 id];
            [(NSMutableDictionary *)v37 setObject:v36 forKeyedSubscript:v38];
          }

          v32 = [childItems3 countByEnumeratingWithState:&v109 objects:v117 count:16];
        }

        while (v32);
      }

      sourceCopy = v90;
      v11 = v91;
    }

    v39 = self->_uuidsForDrawingItems;
    v40 = [v7 id];
    [(NSMutableSet *)v39 addObject:v40];

    if ([v7 locked])
    {
      v107 = 0uLL;
      v108 = 0uLL;
      v105 = 0uLL;
      v106 = 0uLL;
      childItems4 = [v7 childItems];
      v42 = [childItems4 countByEnumeratingWithState:&v105 objects:v116 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v106;
        do
        {
          for (k = 0; k != v43; k = k + 1)
          {
            if (*v106 != v44)
            {
              objc_enumerationMutation(childItems4);
            }

            uuidsForDrawingShapeItemsFromLockedParentItems = self->_uuidsForDrawingShapeItemsFromLockedParentItems;
            v47 = [*(*(&v105 + 1) + 8 * k) id];
            [(NSMutableSet *)uuidsForDrawingShapeItemsFromLockedParentItems crl_addNonNilObject:v47];
          }

          v43 = [childItems4 countByEnumeratingWithState:&v105 objects:v116 count:16];
        }

        while (v43);
LABEL_65:
        v11 = v91;
      }
    }

    else
    {
      v103 = 0uLL;
      v104 = 0uLL;
      v101 = 0uLL;
      v102 = 0uLL;
      childItems4 = [v7 childItems];
      v82 = [childItems4 countByEnumeratingWithState:&v101 objects:v115 count:16];
      if (v82)
      {
        v83 = v82;
        v84 = *v102;
        do
        {
          for (m = 0; m != v83; m = m + 1)
          {
            if (*v102 != v84)
            {
              objc_enumerationMutation(childItems4);
            }

            v86 = self->_uuidsForDrawingShapeItemsFromLockedParentItems;
            v87 = [*(*(&v101 + 1) + 8 * m) id];
            [(NSMutableSet *)v86 removeObject:v87];
          }

          v83 = [childItems4 countByEnumeratingWithState:&v101 objects:v115 count:16];
        }

        while (v83);
        goto LABEL_65;
      }
    }

    os_unfair_lock_lock(&self->_updatePKStrokesLock);
    [(NSMutableSet *)self->_drawingItemsNeedingUpdatedPKStrokes addObject:v7];
    os_unfair_lock_unlock(&self->_updatePKStrokesLock);
    goto LABEL_67;
  }

  if (v9)
  {
    v12 = objc_opt_class();
    parentItem = [v9 parentItem];
    v14 = sub_100014370(v12, parentItem);

    if (!v14)
    {
      goto LABEL_34;
    }

    if ([v14 prohibitsClustering])
    {
LABEL_49:

      goto LABEL_67;
    }

    if (![v14 isInBoard] || (objc_msgSend(v9, "isInBoard") & 1) == 0 && !objc_msgSend(v9, "isTreatedAsFillForFreehandDrawing"))
    {
LABEL_34:
      v89 = v14;
      v92 = v11;
      v49 = self->_shapeItemIdToParentItemId;
      v50 = [v9 id];
      v51 = [(NSMutableDictionary *)v49 objectForKeyedSubscript:v50];

      v52 = self->_shapeItemIdToParentItemId;
      v53 = [v9 id];
      [(NSMutableDictionary *)v52 setObject:0 forKeyedSubscript:v53];

      if (v51)
      {
        v54 = [(NSMutableDictionary *)self->_drawingParentIdsToShapeItemsBeingListenedTo objectForKeyedSubscript:v51];
        [v54 removeObject:v9];

        v55 = [(NSMutableDictionary *)self->_drawingParentIdsToShapeItemsBeingListenedTo objectForKeyedSubscript:v51];
        v56 = [v55 count];

        if (!v56)
        {
          [(NSMutableDictionary *)self->_drawingParentIdsToShapeItemsBeingListenedTo setObject:0 forKeyedSubscript:v51];
        }
      }

      v88 = v51;
      os_unfair_lock_lock(&self->_updatePKStrokesLock);
      cachedDrawingShapeItemUUIDToStrokeDataUUIDDict = self->_cachedDrawingShapeItemUUIDToStrokeDataUUIDDict;
      v58 = [v9 id];
      [(CRLBidirectionalMap *)cachedDrawingShapeItemUUIDToStrokeDataUUIDDict setObject:0 forKeyedSubscript:v58];

      cachedDrawingShapeItemUUIDToStrokeUUIDDict = self->_cachedDrawingShapeItemUUIDToStrokeUUIDDict;
      v60 = [v9 id];
      v61 = [(CRLBidirectionalMap *)cachedDrawingShapeItemUUIDToStrokeUUIDDict objectForKeyedSubscript:v60];

      if (v61)
      {
        [(NSMutableDictionary *)self->_strokeUUIDsToDrawingItems setObject:0 forKeyedSubscript:v61];
        [(NSMutableDictionary *)self->_strokeUUIDsToDrawingShapeItems setObject:0 forKeyedSubscript:v61];
        [(NSMutableDictionary *)self->_strokeUUIDsToStrokes setObject:0 forKeyedSubscript:v61];
        v62 = self->_cachedDrawingShapeItemUUIDToStrokeUUIDDict;
        v63 = [v9 id];
        [(CRLBidirectionalMap *)v62 setObject:0 forKeyedSubscript:v63];
      }

      os_unfair_lock_unlock(&self->_updatePKStrokesLock);
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v64 = self->_observers;
      v65 = [(NSMutableSet *)v64 countByEnumeratingWithState:&v93 objects:v113 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v94;
        do
        {
          for (n = 0; n != v66; n = n + 1)
          {
            if (*v94 != v67)
            {
              objc_enumerationMutation(v64);
            }

            v69 = *(*(&v93 + 1) + 8 * n);
            if (objc_opt_respondsToSelector())
            {
              v70 = [v9 id];
              [v69 removeDrawingShapeItemUUIDToStrokeDataUUIDPair:v70];
            }
          }

          v66 = [(NSMutableSet *)v64 countByEnumeratingWithState:&v93 objects:v113 count:16];
        }

        while (v66);
      }

      v11 = v92;
      v14 = v89;
      goto LABEL_49;
    }

    if ([v9 isTreatedAsFillForFreehandDrawing])
    {
LABEL_71:
      os_unfair_lock_lock(&self->_updatePKStrokesLock);
      [(NSMutableSet *)self->_drawingItemsNeedingUpdatedPKStrokes addObject:v14];
      os_unfair_lock_unlock(&self->_updatePKStrokesLock);
      goto LABEL_49;
    }

    v15 = v11;
    parentUUID = [v9 parentUUID];
    v17 = self->_shapeItemIdToParentItemId;
    v18 = [v9 id];
    [(NSMutableDictionary *)v17 setObject:parentUUID forKeyedSubscript:v18];

    v19 = [(NSMutableDictionary *)self->_drawingParentIdsToShapeItemsBeingListenedTo objectForKeyedSubscript:parentUUID];

    if (v19)
    {
      v20 = [(NSMutableDictionary *)self->_drawingParentIdsToShapeItemsBeingListenedTo objectForKeyedSubscript:parentUUID];
      v21 = [v20 containsObject:v9];

      if (v21)
      {
LABEL_70:

        v11 = v15;
        goto LABEL_71;
      }

      v22 = [(NSMutableDictionary *)self->_drawingParentIdsToShapeItemsBeingListenedTo objectForKeyedSubscript:parentUUID];
      [v22 addObject:v9];
    }

    else
    {
      v22 = [NSMutableSet setWithObject:v9];
      [(NSMutableDictionary *)self->_drawingParentIdsToShapeItemsBeingListenedTo setObject:v22 forKeyedSubscript:parentUUID];
    }

    goto LABEL_70;
  }

  if (v11)
  {
    v48 = +[NSMutableArray array];
    [objc_opt_class() p_recursivelyAddFreehandDrawingItemsFromGroup:v11 drawingItems:v48];
    os_unfair_lock_lock(&self->_updatePKStrokesLock);
    [(NSMutableSet *)self->_drawingItemsNeedingUpdatedPKStrokes addObjectsFromArray:v48];
    os_unfair_lock_unlock(&self->_updatePKStrokesLock);
  }

LABEL_67:
}

- (void)p_runStrokeUpdateIfNeeded
{
  if (self->_isStrokeUpdatePending && self->_shouldUpdateObservers)
  {
    v3 = +[NSDate now];
    [v3 timeIntervalSinceReferenceDate];
    v5 = v4 - self->_completionTimeOfLastLocalStroke;

    if (v5 >= 0.25)
    {

      [(CRLPKDrawingProvider *)self p_updateObserversWithUpdatedPKStrokesSynchronously:0];
    }
  }

  else
  {
    updateLink = self->_updateLink;

    [(UIUpdateLink *)updateLink setEnabled:0];
  }
}

- (void)teardown
{
  if (self->_isTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101349F04();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101349F18();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101349FA8();
    }

    v2 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v2);
    }

    changeNotifier = [NSString stringWithUTF8String:"[CRLPKDrawingProvider teardown]"];
    v4 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPKDrawingProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:changeNotifier file:v4 lineNumber:530 isFatal:0 description:"attempting to call teardown on an instance of CRLPKDrawingProvider that has already been torn down"];
  }

  else
  {
    self->_isTornDown = 1;
    [(UIUpdateLink *)self->_updateLink setEnabled:0];
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    changeNotifier = [WeakRetained changeNotifier];

    if (!changeNotifier)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101349E2C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101349E40();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101349EDC();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v7);
      }

      v8 = [NSString stringWithUTF8String:"[CRLPKDrawingProvider teardown]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPKDrawingProvider.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:517 isFatal:0 description:"invalid nil value for '%{public}s'", "changeNotifier"];
    }

    [changeNotifier removeObserver:self forChangeSourceOfClass:objc_opt_class()];
    [changeNotifier removeObserver:self forChangeSourceOfClass:objc_opt_class()];
    [changeNotifier removeObserver:self forChangeSourceOfClass:objc_opt_class()];
    [(NSMutableSet *)self->_observers removeAllObjects];
    [(NSMutableSet *)self->_observersWantingConsolidatedPKDrawing removeAllObjects];
    [(NSMutableDictionary *)self->_drawingParentIdsToShapeItemsBeingListenedTo removeAllObjects];
    [(NSMutableSet *)self->_uuidsForDrawingItems removeAllObjects];
    [(NSMutableDictionary *)self->_shapeItemIdToParentItemId removeAllObjects];
    [(NSMutableSet *)self->_uuidsForDrawingShapeItemsFromLockedParentItems removeAllObjects];
  }
}

- (void)dealloc
{
  if (!self->_isTornDown)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101349FD0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101349FE4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134A074();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v3);
    }

    v4 = [NSString stringWithUTF8String:"[CRLPKDrawingProvider dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPKDrawingProvider.m"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:535 isFatal:0 description:"teardown not called for CRLPKDrawingProvider"];
  }

  v6.receiver = self;
  v6.super_class = CRLPKDrawingProvider;
  [(CRLPKDrawingProvider *)&v6 dealloc];
}

- (id)pkStrokesForFreehandDrawingItemUUID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(NSArray);
  os_unfair_lock_lock(&self->_updatePKStrokesLock);
  v6 = [(NSMutableDictionary *)self->_cachedPKStrokesForDrawingItems objectForKeyedSubscript:dCopy];

  if (v6)
  {
    v7 = v6;

    v5 = v7;
  }

  os_unfair_lock_unlock(&self->_updatePKStrokesLock);

  return v5;
}

- (id)pkStrokesForDrawingShapeItemUUID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(NSArray);
  os_unfair_lock_lock(&self->_updatePKStrokesLock);
  v6 = [(CRLBidirectionalMap *)self->_cachedDrawingShapeItemUUIDToStrokeUUIDDict objectForKeyedSubscript:dCopy];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_strokeUUIDsToStrokes objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      v11 = v7;
      v9 = [NSArray arrayWithObjects:&v11 count:1];

      v5 = v9;
    }
  }

  os_unfair_lock_unlock(&self->_updatePKStrokesLock);

  return v5;
}

- (NSArray)pkStrokesContainingAllDrawingsForEntireCanvas
{
  v18 = objc_alloc_init(NSMutableArray);
  os_unfair_lock_lock(&self->_updatePKStrokesLock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_cachedPKStrokesForDrawingItemsOrderedKeys;
  v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v19 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        if ([(NSMutableSet *)self->_uuidsForDrawingItems containsObject:v8])
        {
          v9 = [(NSMutableDictionary *)self->_cachedPKStrokesForDrawingItems objectForKeyedSubscript:v8];
          if (v9)
          {
            [v18 addObjectsFromArray:v9];
          }

          else
          {
            v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10134A09C();
            }

            v11 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v24 = v10;
              v25 = 2082;
              v26 = "[CRLPKDrawingProvider pkStrokesContainingAllDrawingsForEntireCanvas]";
              v27 = 2082;
              v28 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPKDrawingProvider.m";
              v29 = 1024;
              v30 = 572;
              v31 = 2082;
              v32 = "strokes";
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_10134A0C4();
            }

            v12 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v15 = v12;
              v16 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v24 = v10;
              v25 = 2114;
              v26 = v16;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v13 = [NSString stringWithUTF8String:"[CRLPKDrawingProvider pkStrokesContainingAllDrawingsForEntireCanvas]"];
            v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPKDrawingProvider.m"];
            [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:572 isFatal:0 description:"invalid nil value for '%{public}s'", "strokes"];
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v19 objects:v33 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_updatePKStrokesLock);

  return v18;
}

- (PKDrawing)unifiedDrawing
{
  if (!self->_cachedUnifiedDrawing)
  {
    v3 = objc_alloc_init(PKDrawing);
    cachedUnifiedDrawing = self->_cachedUnifiedDrawing;
    self->_cachedUnifiedDrawing = v3;

    WeakRetained = objc_loadWeakRetained(&self->_icc);
    board = [WeakRetained board];
    v7 = [board id];

    if (v7)
    {
      [(PKDrawing *)self->_cachedUnifiedDrawing _setUUID:v7];
    }

    else
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10134A0EC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134A100();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134A19C();
      }

      v8 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v8);
      }

      v9 = [NSString stringWithUTF8String:"[CRLPKDrawingProvider unifiedDrawing]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPKDrawingProvider.m"];
      [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:589 isFatal:0 description:"invalid nil value for '%{public}s'", "boardUUID"];
    }
  }

  pkStrokesContainingAllDrawingsForEntireCanvas = [(CRLPKDrawingProvider *)self pkStrokesContainingAllDrawingsForEntireCanvas];
  if (![pkStrokesContainingAllDrawingsForEntireCanvas count])
  {
    v12 = +[UIColor blackColor];
    v13 = [[PKInk alloc] initWithInkType:PKInkTypePen color:v12];
    v14 = [PKStrokePath alloc];
    v15 = +[NSDate now];
    v16 = [v14 initWithControlPoints:&__NSArray0__struct creationDate:v15];

    v17 = [PKStroke alloc];
    v18 = *&CGAffineTransformIdentity.c;
    v28[0] = *&CGAffineTransformIdentity.a;
    v28[1] = v18;
    v28[2] = *&CGAffineTransformIdentity.tx;
    v19 = [v17 initWithInk:v13 strokePath:v16 transform:v28 mask:0];
    v20 = self->_cachedUnifiedDrawing;
    v29 = v19;
    v21 = [NSArray arrayWithObjects:&v29 count:1];
    v22 = [(PKDrawing *)v20 undoableAddNewStrokes:v21];
  }

  v23 = self->_cachedUnifiedDrawing;
  v24 = +[NSMutableArray array];
  [(PKDrawing *)v23 _setAllStrokes:v24];

  [(PKDrawing *)self->_cachedUnifiedDrawing invalidateVisibleStrokes];
  v25 = [(PKDrawing *)self->_cachedUnifiedDrawing undoableAddNewStrokes:pkStrokesContainingAllDrawingsForEntireCanvas];
  v26 = [(PKDrawing *)self->_cachedUnifiedDrawing copy];

  return v26;
}

- (id)strokeDataUUIDForDrawingShapeItemUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_updatePKStrokesLock);
  v5 = [(CRLBidirectionalMap *)self->_cachedDrawingShapeItemUUIDToStrokeDataUUIDDict objectForKeyedSubscript:dCopy];

  os_unfair_lock_unlock(&self->_updatePKStrokesLock);

  return v5;
}

- (void)p_updateObserversWithUpdatedPKStrokesSynchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  if (qword_101AD5C88 != -1)
  {
    sub_10134A1C4();
  }

  v3 = off_1019EF208;
  if (os_log_type_enabled(off_1019EF208, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = synchronouslyCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "About to update PKStrokes (synchronously: %{public}d)", buf, 8u);
  }

  self->_isStrokeUpdatePending = 0;
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  board = [WeakRetained board];
  v36 = [board id];

  v33 = +[NSMutableArray array];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = self->_drawingItemsNeedingUpdatedPKStrokes;
  v34 = [(NSMutableSet *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v34)
  {
    v32 = *v51;
    do
    {
      v6 = 0;
      do
      {
        if (*v51 != v32)
        {
          v7 = v6;
          objc_enumerationMutation(obj);
          v6 = v7;
        }

        v35 = v6;
        v37 = *(*(&v50 + 1) + 8 * v6);
        childItems = [v37 childItems];
        v9 = [childItems count];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1002C10A4;
        block[3] = &unk_1018520D8;
        block[4] = childItems;
        dispatch_apply(v9, 0, block);
        v38 = +[NSMutableArray array];
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v10 = childItems;
        v11 = [v10 countByEnumeratingWithState:&v45 objects:v55 count:16];
        if (v11)
        {
          v12 = *v46;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v46 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v45 + 1) + 8 * i);
              v15 = objc_opt_class();
              v16 = sub_100014370(v15, v14);
              v17 = v16;
              if (v16 && ([v16 isTreatedAsFillForFreehandDrawing] & 1) == 0)
              {
                v18 = [(CRLPKDrawingProvider *)self p_createUUIDFromHashingStrokeTransformForShapeItem:v17];
                v19 = [CRLShapeItemNeedingPKStrokeUpdate alloc];
                v20 = [v14 id];
                [v17 transformInRoot];
                pencilKitStrokesInRootSpace = [v17 pencilKitStrokesInRootSpace];
                v22 = [(CRLShapeItemNeedingPKStrokeUpdate *)v19 initWithID:v20 strokeTransformInfoUUID:v18 transformInRoot:buf pencilKitStrokesInRootSpace:pencilKitStrokesInRootSpace];

                [v38 addObject:v22];
                v23 = [v17 id];
                v24 = [v23 combineUUIDWithUUID:v18];
                pencilKitStrokes = [v17 pencilKitStrokes];
                v44[0] = _NSConcreteStackBlock;
                v44[1] = 3221225472;
                v44[2] = sub_1002C127C;
                v44[3] = &unk_101852100;
                v44[4] = v24;
                v44[5] = v36;
                v44[6] = self;
                v44[7] = v17;
                v44[8] = v37;
                [pencilKitStrokes enumerateObjectsUsingBlock:v44];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v45 objects:v55 count:16];
          }

          while (v11);
        }

        v26 = [CRLDrawingItemNeedingPKStrokeUpdate alloc];
        v27 = [v37 id];
        v28 = [(CRLDrawingItemNeedingPKStrokeUpdate *)v26 initWithID:v27 shapeItems:v38];
        [v33 addObject:v28];

        v6 = v35 + 1;
      }

      while ((v35 + 1) != v34);
      v34 = [(NSMutableSet *)obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v34);
  }

  if (synchronouslyCopy)
  {
    [(CRLPKDrawingProvider *)self p_updatePKStrokesForShapeItemsIfNeeded:v33 boardIdentifier:v36];
    [(CRLPKDrawingProvider *)self p_updateObservers];
  }

  else
  {
    objc_initWeak(buf, self);
    taskQueue = self->_taskQueue;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1002C13A4;
    v40[3] = &unk_10183C0A0;
    objc_copyWeak(&v43, buf);
    v41 = v33;
    v42 = v36;
    [(CRLLastSubmittedTaskQueue *)taskQueue performAsync:v40];

    objc_destroyWeak(&v43);
    objc_destroyWeak(buf);
  }
}

- (void)p_updateObservers
{
  if (self->_shouldUpdateObservers)
  {
    if (qword_101AD5C88 != -1)
    {
      sub_10134A1EC();
    }

    v3 = off_1019EF208;
    if (os_log_type_enabled(off_1019EF208, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "About to update observers.", buf, 2u);
    }

    atomic_store(0, &self->_isUpdateObserversFromBackgroundPending);
    [(CRLPKDrawingProvider *)self p_updateObserversWithNewPKStrokesIfNeeded];
    [(CRLPKDrawingProvider *)self p_updateConsolidatedObserversIfNeeded];
  }

  else
  {
    if (qword_101AD5C88 != -1)
    {
      sub_10134A1D8();
    }

    v4 = off_1019EF208;
    if (os_log_type_enabled(off_1019EF208, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not updating observers while actively drawing.", v5, 2u);
    }
  }
}

- (void)p_updateConsolidatedObserversIfNeeded
{
  if ([(NSMutableSet *)self->_observersWantingConsolidatedPKDrawing count])
  {
    pkStrokesContainingAllDrawingsForEntireCanvas = [(CRLPKDrawingProvider *)self pkStrokesContainingAllDrawingsForEntireCanvas];
    if (qword_101AD5C88 != -1)
    {
      sub_10134A200();
    }

    v4 = off_1019EF208;
    if (os_log_type_enabled(off_1019EF208, OS_LOG_TYPE_DEFAULT))
    {
      observersWantingConsolidatedPKDrawing = self->_observersWantingConsolidatedPKDrawing;
      v6 = v4;
      *buf = 134218240;
      v18 = [(NSMutableSet *)observersWantingConsolidatedPKDrawing count];
      v19 = 2048;
      v20 = [pkStrokesContainingAllDrawingsForEntireCanvas count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating %zu consolidated observers with %zu strokes.", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_observersWantingConsolidatedPKDrawing;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * i) pkStrokesContainingAllDrawingsForEntireCanvasDidChange:{pkStrokesContainingAllDrawingsForEntireCanvas, v12}];
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)p_updateObserversWithNewPKStrokesIfNeeded
{
  p_observersWithChangedDrawings = [(CRLPKDrawingProvider *)self p_observersWithChangedDrawings];
  keyEnumerator = [p_observersWithChangedDrawings keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  if (qword_101AD5C88 != -1)
  {
    sub_10134A214();
  }

  v6 = off_1019EF208;
  if (os_log_type_enabled(off_1019EF208, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 134217984;
    *v76 = [allObjects count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating %zu observers.", buf, 0xCu);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = allObjects;
  v8 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
  v10 = p_observersWithChangedDrawings;
  if (v8)
  {
    v11 = v8;
    v55 = *v72;
    *&v9 = 67109378;
    v49 = v9;
    v50 = p_observersWithChangedDrawings;
    do
    {
      v12 = 0;
      v51 = v11;
      do
      {
        if (*v72 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v71 + 1) + 8 * v12);
        v14 = [v10 objectForKeyedSubscript:{v13, v49}];
        v15 = v14;
        if (v14 && [v14 count])
        {
          v56 = v13;
          v54 = v12;
          v16 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v15, "count")}];
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v53 = v15;
          v17 = v15;
          v18 = [v17 countByEnumeratingWithState:&v67 objects:v83 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v68;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v68 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v67 + 1) + 8 * i);
                v23 = [(CRLPKDrawingProvider *)self pkStrokesForFreehandDrawingItemUUID:v22];
                if (v23)
                {
                  [v16 setObject:v23 forKeyedSubscript:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v67 objects:v83 count:16];
            }

            while (v19);
          }

          [v56 pkStrokesForFreehandItemsDidChange:v16];
          v24 = objc_alloc_init(CRLBidirectionalMap);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v25 = v16;
          v26 = [v25 countByEnumeratingWithState:&v63 objects:v82 count:16];
          v57 = v25;
          if (v26)
          {
            v27 = v26;
            v58 = *v64;
            do
            {
              for (j = 0; j != v27; j = j + 1)
              {
                if (*v64 != v58)
                {
                  objc_enumerationMutation(v57);
                }

                v29 = *(*(&v63 + 1) + 8 * j);
                os_unfair_lock_lock(&self->_updatePKStrokesLock);
                v30 = [(NSMutableDictionary *)self->_updatedParentUUIDToDrawingShapeItemUUIDsDict objectForKeyedSubscript:v29];

                if (v30)
                {
                  v61 = 0u;
                  v62 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  v31 = [(NSMutableDictionary *)self->_updatedParentUUIDToDrawingShapeItemUUIDsDict objectForKeyedSubscript:v29];
                  v32 = [v31 countByEnumeratingWithState:&v59 objects:v81 count:16];
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *v60;
                    do
                    {
                      for (k = 0; k != v33; k = k + 1)
                      {
                        if (*v60 != v34)
                        {
                          objc_enumerationMutation(v31);
                        }

                        v36 = *(*(&v59 + 1) + 8 * k);
                        v37 = [(CRLPKDrawingProvider *)self p_strokeDataUUIDForDrawingShapeItemUUIDUNSAFE:v36];
                        [(CRLBidirectionalMap *)v24 setObject:v37 forKeyedSubscript:v36];
                      }

                      v33 = [v31 countByEnumeratingWithState:&v59 objects:v81 count:16];
                    }

                    while (v33);
                  }
                }

                os_unfair_lock_unlock(&self->_updatePKStrokesLock);
              }

              v25 = v57;
              v27 = [v57 countByEnumeratingWithState:&v63 objects:v82 count:16];
            }

            while (v27);
          }

          if (objc_opt_respondsToSelector())
          {
            v11 = v51;
            if (qword_101AD5C88 != -1)
            {
              sub_10134A228();
            }

            v38 = off_1019EF208;
            if (os_log_type_enabled(off_1019EF208, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v38;
              forwardKeys = [(CRLBidirectionalMap *)v24 forwardKeys];
              v41 = [forwardKeys count];
              *buf = 134217984;
              *v76 = v41;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Updating observer with %zu strokes.", buf, 0xCu);
            }

            [v56 updateDrawingShapeItemUUIDToStrokeDataUUIDDict:v24];
            v42 = v53;
            v12 = v54;
            v10 = v50;
            v25 = v57;
          }

          else
          {
            v10 = v50;
            v11 = v51;
            v42 = v53;
            v12 = v54;
          }
        }

        else
        {
          v43 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          v44 = v10;
          if (qword_101AD5A10 != -1)
          {
            sub_10134A250();
          }

          v45 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            *v76 = v43;
            *&v76[4] = 2082;
            *&v76[6] = "[CRLPKDrawingProvider p_updateObserversWithNewPKStrokesIfNeeded]";
            v77 = 2082;
            v78 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPKDrawingProvider.m";
            v79 = 1024;
            v80 = 790;
            _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d CRLPKDrawingProvider - p_updateObservers failed to retrieve changedIds for observer", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_10134A278();
          }

          v42 = v15;
          v46 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v47 = v46;
            v48 = +[CRLAssertionHandler packedBacktraceString];
            *buf = v49;
            *v76 = v43;
            *&v76[4] = 2114;
            *&v76[6] = v48;
            _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v25 = [NSString stringWithUTF8String:"[CRLPKDrawingProvider p_updateObserversWithNewPKStrokesIfNeeded]"];
          v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLPKDrawingProvider.m"];
          [CRLAssertionHandler handleFailureInFunction:v25 file:v24 lineNumber:790 isFatal:0 description:"CRLPKDrawingProvider - p_updateObservers failed to retrieve changedIds for observer"];
          v10 = v44;
        }

        v12 = v12 + 1;
      }

      while (v12 != v11);
      v11 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
    }

    while (v11);
  }

  [(CRLPKDrawingProvider *)self p_cleanPKStrokeCachesIfNecessary];
}

- (void)p_cleanPKStrokeCachesIfNecessary
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_drawingItemsNeedingRemovedPKStrokes;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        os_unfair_lock_lock(&self->_updatePKStrokesLock);
        cachedPKStrokesForDrawingItems = self->_cachedPKStrokesForDrawingItems;
        v10 = [v8 id];
        [(NSMutableDictionary *)cachedPKStrokesForDrawingItems removeObjectForKey:v10];

        cachedPKStrokesForDrawingItemsOrderedKeys = self->_cachedPKStrokesForDrawingItemsOrderedKeys;
        v12 = [v8 id];
        [(NSMutableOrderedSet *)cachedPKStrokesForDrawingItemsOrderedKeys removeObject:v12];

        os_unfair_lock_unlock(&self->_updatePKStrokesLock);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  os_unfair_lock_lock(&self->_updatePKStrokesLock);
  [(NSMutableSet *)self->_drawingItemsNeedingUpdatedPKStrokes removeAllObjects];
  [(NSMutableSet *)self->_drawingItemsNeedingRemovedPKStrokes removeAllObjects];
  [(NSMutableDictionary *)self->_changedPKStrokesForDrawingItemIds removeAllObjects];
  os_unfair_lock_unlock(&self->_updatePKStrokesLock);
}

- (id)p_observersWithChangedDrawings
{
  v13 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:{-[NSMutableSet count](self->_observers, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_observers;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        subscribedFreehandDrawingIDs = [v7 subscribedFreehandDrawingIDs];
        os_unfair_lock_lock(&self->_updatePKStrokesLock);
        changedPKStrokesForDrawingItemIds = self->_changedPKStrokesForDrawingItemIds;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1002C23A8;
        v15[3] = &unk_101852208;
        v10 = subscribedFreehandDrawingIDs;
        v16 = v10;
        v11 = [(NSMutableDictionary *)changedPKStrokesForDrawingItemIds keysOfEntriesPassingTest:v15];
        os_unfair_lock_unlock(&self->_updatePKStrokesLock);
        if (v11 && [v11 count])
        {
          [v13 setObject:v11 forKeyedSubscript:v7];
        }
      }

      v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  return v13;
}

- (void)p_updatePKStrokesForShapeItemsIfNeeded:(id)needed boardIdentifier:(id)identifier
{
  neededCopy = needed;
  identifierCopy = identifier;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = neededCopy;
  v55 = [neededCopy countByEnumeratingWithState:&v82 objects:v89 count:16];
  if (v55)
  {
    v54 = *v83;
    do
    {
      v7 = 0;
      do
      {
        if (*v83 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v56 = v7;
        v8 = *(*(&v82 + 1) + 8 * v7);
        v63 = objc_alloc_init(NSMutableArray);
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        shapeItems = [v8 shapeItems];
        v59 = [shapeItems countByEnumeratingWithState:&v78 objects:v88 count:16];
        if (v59)
        {
          v58 = *v79;
          do
          {
            v9 = 0;
            do
            {
              if (*v79 != v58)
              {
                objc_enumerationMutation(shapeItems);
              }

              v60 = v9;
              v10 = *(*(&v78 + 1) + 8 * v9);
              v11 = [v10 id];
              strokeTransformInfoUUID = [v10 strokeTransformInfoUUID];
              v65 = [v11 combineUUIDWithUUID:strokeTransformInfoUUID];

              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v69 = v10;
              pencilKitStrokesInRootSpace = [v10 pencilKitStrokesInRootSpace];
              v67 = [pencilKitStrokesInRootSpace countByEnumeratingWithState:&v74 objects:v87 count:16];
              if (v67)
              {
                v13 = 0;
                v64 = *v75;
                do
                {
                  for (i = 0; i != v67; i = i + 1)
                  {
                    if (*v75 != v64)
                    {
                      objc_enumerationMutation(pencilKitStrokesInRootSpace);
                    }

                    v15 = *(*(&v74 + 1) + 8 * i);
                    v16 = [v65 combineUUIDWithUUID:identifierCopy mixValue:v13];
                    v66 = v13;
                    v68 = v13 + 500;
                    v17 = [v65 combineUUIDWithUUID:identifierCopy mixValue:?];
                    v18 = [v15 _strokeWithUUID:v17 dataUUID:v16];
                    os_unfair_lock_lock(&self->_updatePKStrokesLock);
                    [(NSMutableDictionary *)self->_strokeUUIDsToStrokes setObject:v18 forKeyedSubscript:v17];
                    cachedDrawingShapeItemUUIDToStrokeUUIDDict = self->_cachedDrawingShapeItemUUIDToStrokeUUIDDict;
                    v20 = [v69 id];
                    [(CRLBidirectionalMap *)cachedDrawingShapeItemUUIDToStrokeUUIDDict setObject:v17 forKeyedSubscript:v20];

                    cachedDrawingShapeItemUUIDToStrokeDataUUIDDict = self->_cachedDrawingShapeItemUUIDToStrokeDataUUIDDict;
                    v22 = [v69 id];
                    [(CRLBidirectionalMap *)cachedDrawingShapeItemUUIDToStrokeDataUUIDDict setObject:v16 forKeyedSubscript:v22];

                    updatedParentUUIDToDrawingShapeItemUUIDsDict = self->_updatedParentUUIDToDrawingShapeItemUUIDsDict;
                    v24 = [v8 id];
                    v25 = [(NSMutableDictionary *)updatedParentUUIDToDrawingShapeItemUUIDsDict objectForKeyedSubscript:v24];

                    if (v25)
                    {
                      v26 = self->_updatedParentUUIDToDrawingShapeItemUUIDsDict;
                      v27 = [v8 id];
                      v28 = v26;
                      v29 = v69;
                      [(NSMutableDictionary *)v28 objectForKeyedSubscript:v27];
                      v31 = selfCopy = self;
                      v32 = [v69 id];
                      [v31 addObject:v32];
                    }

                    else
                    {
                      v33 = [NSMutableSet alloc];
                      v27 = [v69 id];
                      selfCopy = self;
                      v31 = [v33 initWithObjects:{v27, 0}];
                      v34 = selfCopy->_updatedParentUUIDToDrawingShapeItemUUIDsDict;
                      v32 = [v8 id];
                      v35 = v34;
                      v29 = v69;
                      [(NSMutableDictionary *)v35 setObject:v31 forKeyedSubscript:v32];
                    }

                    os_unfair_lock_unlock(&selfCopy->_updatePKStrokesLock);
                    v36 = [v29 id];
                    v37 = [v8 id];
                    [(CRLPKDrawingProvider *)selfCopy p_checkIfNeededAndRegisterRecentlyCreatedLocalStroke:v18 drawingShapeItemUUID:v36 updatedDrawingItemUUID:v37];

                    [v63 addObject:v18];
                    v13 = (v68 - 499);
                    self = selfCopy;
                  }

                  v13 = (v66 + 1);
                  v67 = [pencilKitStrokesInRootSpace countByEnumeratingWithState:&v74 objects:v87 count:16];
                }

                while (v67);
              }

              v9 = v60 + 1;
            }

            while ((v60 + 1) != v59);
            v59 = [shapeItems countByEnumeratingWithState:&v78 objects:v88 count:16];
          }

          while (v59);
        }

        os_unfair_lock_lock(&self->_updatePKStrokesLock);
        changedPKStrokesForDrawingItemIds = self->_changedPKStrokesForDrawingItemIds;
        v39 = [v8 id];
        [(NSMutableDictionary *)changedPKStrokesForDrawingItemIds setObject:v63 forKeyedSubscript:v39];

        cachedPKStrokesForDrawingItems = self->_cachedPKStrokesForDrawingItems;
        v41 = [v8 id];
        [(NSMutableDictionary *)cachedPKStrokesForDrawingItems setObject:v63 forKeyedSubscript:v41];

        cachedPKStrokesForDrawingItemsOrderedKeys = self->_cachedPKStrokesForDrawingItemsOrderedKeys;
        v43 = [v8 id];
        LOBYTE(cachedPKStrokesForDrawingItemsOrderedKeys) = [(NSMutableOrderedSet *)cachedPKStrokesForDrawingItemsOrderedKeys containsObject:v43];

        if ((cachedPKStrokesForDrawingItemsOrderedKeys & 1) == 0)
        {
          v44 = self->_cachedPKStrokesForDrawingItemsOrderedKeys;
          v45 = [v8 id];
          [(NSMutableOrderedSet *)v44 addObject:v45];
        }

        os_unfair_lock_unlock(&self->_updatePKStrokesLock);

        v7 = v56 + 1;
      }

      while ((v56 + 1) != v55);
      v55 = [obj countByEnumeratingWithState:&v82 objects:v89 count:16];
    }

    while (v55);
  }

  os_unfair_lock_lock(&self->_updatePKStrokesLock);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v46 = self->_drawingItemsNeedingRemovedPKStrokes;
  v47 = [(NSMutableSet *)v46 countByEnumeratingWithState:&v70 objects:v86 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v71;
    do
    {
      for (j = 0; j != v48; j = j + 1)
      {
        if (*v71 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = self->_changedPKStrokesForDrawingItemIds;
        v52 = [*(*(&v70 + 1) + 8 * j) id];
        [(NSMutableDictionary *)v51 setObject:&__NSArray0__struct forKeyedSubscript:v52];
      }

      v48 = [(NSMutableSet *)v46 countByEnumeratingWithState:&v70 objects:v86 count:16];
    }

    while (v48);
  }

  os_unfair_lock_unlock(&self->_updatePKStrokesLock);
}

- (void)p_checkIfNeededAndRegisterRecentlyCreatedLocalStroke:(id)stroke drawingShapeItemUUID:(id)d updatedDrawingItemUUID:(id)iD
{
  strokeCopy = stroke;
  iDCopy = iD;
  dCopy = d;
  v11 = +[CRLFreehandDrawingLocalShapeRegistry sharedInstance];
  v12 = [v11 consumeLocallyDrawnShapeItemUUID:dCopy];

  if (v12)
  {
    WeakRetained = objc_loadWeakRetained(&self->_icc);
    drawingIntelligenceProvider = [WeakRetained drawingIntelligenceProvider];
    [drawingIntelligenceProvider registerRecentlyCreatedLocalStroke:strokeCopy completionHandler:&stru_101852228];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002C2B54;
    block[3] = &unk_10183AE00;
    block[4] = self;
    v16 = iDCopy;
    v17 = strokeCopy;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (id)p_fetchAllShapeItemsFromDrawingItem:(id)item
{
  itemCopy = item;
  v4 = [NSMutableArray alloc];
  childInfos = [itemCopy childInfos];
  v6 = [v4 initWithCapacity:{objc_msgSend(childInfos, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  childInfos2 = [itemCopy childInfos];
  v8 = [childInfos2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(childInfos2);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = sub_100014370(v13, v12);
        if (v14)
        {
          [v6 addObject:v14];
        }
      }

      v9 = [childInfos2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)p_fetchAllDrawingItemsFromCanvas
{
  WeakRetained = objc_loadWeakRetained(&self->_icc);
  board = [WeakRetained board];
  rootContainer = [board rootContainer];
  v5 = [CRLPKDrawingProvider allDrawingItemsDescendedFromContainer:rootContainer];
  v6 = [NSSet setWithArray:v5];

  return v6;
}

+ (void)p_recursivelyAddFreehandDrawingItemsFromGroup:(id)group drawingItems:(id)items
{
  itemsCopy = items;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  childItems = [group childItems];
  v8 = [childItems countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(childItems);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = sub_100014370(v13, v12);
        v15 = objc_opt_class();
        v16 = sub_100014370(v15, v12);
        v17 = v16;
        if (v14)
        {
          [itemsCopy addObject:v14];
        }

        else if (v16)
        {
          [self p_recursivelyAddFreehandDrawingItemsFromGroup:v16 drawingItems:itemsCopy];
        }
      }

      v9 = [childItems countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }
}

- (void)p_addSubscriptionsForDrawingItemChanges
{
  [(CRLPKDrawingProvider *)self p_fetchAllDrawingItemsFromCanvas];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v3 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v3)
  {
    v4 = v3;
    v27 = *v37;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v36 + 1) + 8 * i);
        childItems = [v6 childItems];
        v8 = [NSMutableSet setWithArray:childItems];
        drawingParentIdsToShapeItemsBeingListenedTo = self->_drawingParentIdsToShapeItemsBeingListenedTo;
        v10 = [v6 id];
        [(NSMutableDictionary *)drawingParentIdsToShapeItemsBeingListenedTo setObject:v8 forKeyedSubscript:v10];

        uuidsForDrawingItems = self->_uuidsForDrawingItems;
        v12 = [v6 id];
        [(NSMutableSet *)uuidsForDrawingItems addObject:v12];

        if ([v6 locked])
        {
          v34 = 0uLL;
          v35 = 0uLL;
          v32 = 0uLL;
          v33 = 0uLL;
          childItems2 = [v6 childItems];
          v14 = [childItems2 countByEnumeratingWithState:&v32 objects:v41 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v33;
            do
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v33 != v16)
                {
                  objc_enumerationMutation(childItems2);
                }

                uuidsForDrawingShapeItemsFromLockedParentItems = self->_uuidsForDrawingShapeItemsFromLockedParentItems;
                v19 = [*(*(&v32 + 1) + 8 * j) id];
                [(NSMutableSet *)uuidsForDrawingShapeItemsFromLockedParentItems crl_addNonNilObject:v19];
              }

              v15 = [childItems2 countByEnumeratingWithState:&v32 objects:v41 count:16];
            }

            while (v15);
          }
        }

        else
        {
          v30 = 0uLL;
          v31 = 0uLL;
          v28 = 0uLL;
          v29 = 0uLL;
          childItems2 = [v6 childItems];
          v20 = [childItems2 countByEnumeratingWithState:&v28 objects:v40 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v29;
            do
            {
              for (k = 0; k != v21; k = k + 1)
              {
                if (*v29 != v22)
                {
                  objc_enumerationMutation(childItems2);
                }

                v24 = self->_uuidsForDrawingShapeItemsFromLockedParentItems;
                v25 = [*(*(&v28 + 1) + 8 * k) id];
                [(NSMutableSet *)v24 removeObject:v25];
              }

              v21 = [childItems2 countByEnumeratingWithState:&v28 objects:v40 count:16];
            }

            while (v21);
          }
        }

        os_unfair_lock_lock(&self->_updatePKStrokesLock);
        [(NSMutableSet *)self->_drawingItemsNeedingUpdatedPKStrokes addObject:v6];
        os_unfair_lock_unlock(&self->_updatePKStrokesLock);
      }

      v4 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v4);
  }
}

- (id)p_createUUIDFromHashingStrokeTransformForShapeItem:(id)item
{
  itemCopy = item;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (itemCopy)
  {
    [itemCopy transformInRoot];
  }

  *md = v9;
  v14 = v10;
  v15 = v11;
  data = sub_100139A00(md);
  *md = v9;
  v14 = v10;
  v15 = v11;
  v7 = sub_1001399C0(md);
  CC_SHA256_Update(&c, &v11, 8u);
  CC_SHA256_Update(&c, &v11 + 8, 8u);
  CC_SHA256_Update(&c, &data, 8u);
  CC_SHA256_Update(&c, &v7, 8u);
  CC_SHA256_Final(md, &c);
  md[6] = md[6] & 0xF | 0x50;
  md[8] = md[8] & 0x3F | 0x80;
  v4 = [NSUUID alloc];
  v5 = [v4 initWithUUIDBytes:{md, *&v7, *&data}];

  return v5;
}

@end