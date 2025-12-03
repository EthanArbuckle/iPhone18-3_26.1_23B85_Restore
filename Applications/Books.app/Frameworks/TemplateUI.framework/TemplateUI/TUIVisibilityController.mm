@interface TUIVisibilityController
+ (id)sharedQueue;
- (CGRect)_computeClippedBoundsForProvider:(id)provider;
- (TUIVisibilityController)initWithRootProvider:(id)provider queue:(id)queue;
- (id)newCollectorForProvider:(id)provider withIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier;
- (id)newTrackerWithDefaultThreshold:(double)threshold block:(id)block;
- (void)_appendVisibilityUpdatesAtTime:(double)time forCollector:(id)collector toUpdates:(id)updates;
- (void)_appendVisibleBoundsUpdatesAtTime:(double)time forCollector:(id)collector toUpdates:(id)updates;
- (void)_scheduleUpdate:(id)update;
- (void)_scheduleUpdates:(id)updates;
- (void)q_commitWithTime:(double)time;
- (void)q_processUpdates;
- (void)q_setNeedsUpdateForCollector:(id)collector;
- (void)queueUpdateForCollector:(id)collector time:(double)time block:(id)block;
- (void)queueUpdateVisible:(BOOL)visible forCollector:(id)collector time:(double)time;
- (void)queueUpdateWithBlock:(id)block;
- (void)queueVisibleBoundsUpdateForCollector:(id)collector time:(double)time;
- (void)removeCollector:(id)collector;
- (void)removeTracker:(id)tracker;
- (void)updateVisible;
- (void)updateVisibleAtTime:(double)time;
@end

@implementation TUIVisibilityController

+ (id)sharedQueue
{
  if (qword_2E5FD8 != -1)
  {
    sub_199794();
  }

  v3 = qword_2E5FD0;

  return v3;
}

- (TUIVisibilityController)initWithRootProvider:(id)provider queue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = TUIVisibilityController;
  v8 = [(TUIVisibilityController *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    v9->_lock._os_unfair_lock_opaque = 0;
    v10 = [[TUIVisibilityCollector alloc] initWithController:v9 provider:providerCopy identifier:0];
    rootCollector = v9->_rootCollector;
    v9->_rootCollector = v10;

    v12 = [NSHashTable hashTableWithOptions:0];
    q_trackers = v9->_q_trackers;
    v9->_q_trackers = v12;

    v14 = objc_opt_new();
    l_updates = v9->_l_updates;
    v9->_l_updates = v14;

    v16 = objc_opt_new();
    collectorsMap = v9->_collectorsMap;
    v9->_collectorsMap = v16;
  }

  return v9;
}

- (id)newTrackerWithDefaultThreshold:(double)threshold block:(id)block
{
  blockCopy = block;
  v7 = [[TUIVisibilityTracker alloc] initWithThreshold:blockCopy block:self->_queue queue:threshold];

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1B994;
  v13[3] = &unk_25DCA0;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  dispatch_sync(queue, v13);
  v10 = v14;
  v11 = v9;

  return v11;
}

- (void)_scheduleUpdate:(id)update
{
  updateCopy = update;
  [updateCopy time];
  v6 = v5;
  if ([updateCopy flags])
  {
    flags = [updateCopy flags];
    p_lock = &self->_lock;
    os_unfair_lock_lock_with_options();
    l_processUpdatesScheduled = self->_l_processUpdatesScheduled;
    if (!l_processUpdatesScheduled && (flags & 2) == 0)
    {
      if (v6 - self->_lastUpdate <= 0.1 && [(NSMutableArray *)self->_l_updates count])
      {
        goto LABEL_4;
      }

LABEL_9:
      self->_l_processUpdatesScheduled = 1;
      [(NSMutableArray *)self->_l_updates addObject:updateCopy];
      os_unfair_lock_unlock(p_lock);
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1BAE4;
      block[3] = &unk_25DE30;
      block[4] = self;
      dispatch_async(queue, block);
      goto LABEL_10;
    }
  }

  else
  {
    p_lock = &self->_lock;
    os_unfair_lock_lock_with_options();
    l_processUpdatesScheduled = self->_l_processUpdatesScheduled;
  }

  if (!l_processUpdatesScheduled)
  {
    goto LABEL_9;
  }

LABEL_4:
  [(NSMutableArray *)self->_l_updates addObject:updateCopy];
  os_unfair_lock_unlock(p_lock);
LABEL_10:
}

- (void)_scheduleUpdates:(id)updates
{
  updatesCopy = updates;
  os_unfair_lock_lock_with_options();
  if (self->_l_processUpdatesScheduled)
  {
    [(NSMutableArray *)self->_l_updates addObjectsFromArray:updatesCopy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_l_processUpdatesScheduled = 1;
    [(NSMutableArray *)self->_l_updates addObjectsFromArray:updatesCopy];

    os_unfair_lock_unlock(&self->_lock);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1BBD8;
    block[3] = &unk_25DE30;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)q_processUpdates
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_l_updates copy];
  [(NSMutableArray *)self->_l_updates removeAllObjects];
  v4 = 0;
  v5 = 0.0;
  if (![v3 count])
  {
    goto LABEL_24;
  }

  do
  {
    os_unfair_lock_unlock(&self->_lock);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v7)
    {
      goto LABEL_23;
    }

    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        [v11 time];
        v13 = v12;
        if (([v11 flags] & 2) != 0)
        {
          if (v4)
          {
            [(TUIVisibilityController *)self q_commitWithTime:v5];
          }

          block = [v11 block];
          block[2]();

          goto LABEL_19;
        }

        if ((v4 & 1) == 0)
        {
          v5 = v13;
        }

        if ((v4 & 1 & (v13 - v5 > 0.01)) == 1)
        {
          [(TUIVisibilityController *)self q_commitWithTime:v5];
          v4 = 0;
        }

        block2 = [v11 block];
        block2[2]();

        if ((v4 & 1) == 0)
        {
          v5 = v13;
        }

        if (([v11 flags] & 1) == 0)
        {
          [(TUIVisibilityController *)self q_commitWithTime:v5];
LABEL_19:
          v4 = 0;
          continue;
        }

        v4 = 1;
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
LABEL_23:

    os_unfair_lock_lock_with_options();
    v3 = [(NSMutableArray *)self->_l_updates copy];
    [(NSMutableArray *)self->_l_updates removeAllObjects];
  }

  while ([v3 count]);
LABEL_24:
  self->_l_processUpdatesScheduled = 0;
  os_unfair_lock_unlock(&self->_lock);

  if (v4)
  {
    [(TUIVisibilityController *)self q_commitWithTime:v5];
  }
}

- (void)q_commitWithTime:(double)time
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_q_trackers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v16 = 0;
        rootCollector = self->_rootCollector;
        [(TUIVisibilityCollector *)rootCollector q_visibleBoundsSize];
        v12 = [(TUIVisibilityCollector *)rootCollector q_computeChangeNodeForTracker:v10 anyChange:&v16 rootVisibleSize:0 needsUpdate:self->_q_needsUpdate needUpdateSet:?];
        v13 = v12;
        if (v16 == 1 && v12 != 0)
        {
          [v10 q_notifyObserversWithRootNode:v12 time:time];
        }
      }

      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  q_needsUpdate = self->_q_needsUpdate;
  self->_q_needsUpdate = 0;
}

- (void)removeTracker:(id)tracker
{
  trackerCopy = tracker;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1C038;
  v7[3] = &unk_25DCA0;
  v7[4] = self;
  v8 = trackerCopy;
  v6 = trackerCopy;
  dispatch_sync(queue, v7);
}

- (void)queueUpdateWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[_TUIVisibilityUpdate alloc] initWithTime:2 flags:blockCopy block:0.0];

  [(TUIVisibilityController *)self _scheduleUpdate:v5];
}

- (void)q_setNeedsUpdateForCollector:(id)collector
{
  collectorCopy = collector;
  q_needsUpdate = self->_q_needsUpdate;
  v8 = collectorCopy;
  if (!q_needsUpdate)
  {
    v6 = [NSHashTable hashTableWithOptions:512];
    v7 = self->_q_needsUpdate;
    self->_q_needsUpdate = v6;

    collectorCopy = v8;
    q_needsUpdate = self->_q_needsUpdate;
  }

  [(NSHashTable *)q_needsUpdate addObject:collectorCopy];
}

- (void)queueUpdateForCollector:(id)collector time:(double)time block:(id)block
{
  collectorCopy = collector;
  blockCopy = block;
  provider = [collectorCopy provider];
  [(TUIVisibilityController *)self _computeClippedBoundsForProvider:provider];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [_TUIVisibilityUpdate alloc];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1C288;
  v23[3] = &unk_25E0F8;
  v27 = v12;
  v28 = v14;
  v29 = v16;
  v30 = v18;
  selfCopy = self;
  v26 = blockCopy;
  v24 = collectorCopy;
  v20 = blockCopy;
  v21 = collectorCopy;
  v22 = [(_TUIVisibilityUpdate *)v19 initWithTime:1 flags:v23 block:time];
  [(TUIVisibilityController *)self _scheduleUpdate:v22];
}

- (void)queueVisibleBoundsUpdateForCollector:(id)collector time:(double)time
{
  collectorCopy = collector;
  v7 = objc_opt_new();
  [(TUIVisibilityController *)self _appendVisibleBoundsUpdatesAtTime:collectorCopy forCollector:v7 toUpdates:time];

  [(TUIVisibilityController *)self _scheduleUpdates:v7];
}

- (void)queueUpdateVisible:(BOOL)visible forCollector:(id)collector time:(double)time
{
  collectorCopy = collector;
  provider = [collectorCopy provider];
  [(TUIVisibilityController *)self _computeClippedBoundsForProvider:provider];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [_TUIVisibilityUpdate alloc];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1C490;
  v21[3] = &unk_25E120;
  v24 = v11;
  v25 = v13;
  v26 = v15;
  v27 = v17;
  visibleCopy = visible;
  v22 = collectorCopy;
  selfCopy = self;
  v19 = collectorCopy;
  v20 = [(_TUIVisibilityUpdate *)v18 initWithTime:0 flags:v21 block:time];
  [(TUIVisibilityController *)self _scheduleUpdate:v20];
}

- (CGRect)_computeClippedBoundsForProvider:(id)provider
{
  providerCopy = provider;
  [providerCopy visibilityProviderVisibleBounds];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  provider = [(TUIVisibilityCollector *)self->_rootCollector provider];
  visibilityProviderHostingLayer = [provider visibilityProviderHostingLayer];

  visibilityProviderHostingLayer2 = [providerCopy visibilityProviderHostingLayer];
  v16 = visibilityProviderHostingLayer2;
  if (visibilityProviderHostingLayer)
  {
    v17 = visibilityProviderHostingLayer2 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17 && visibilityProviderHostingLayer != visibilityProviderHostingLayer2)
  {
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    if (!CGRectIsEmpty(v49))
    {
      provider2 = [(TUIVisibilityCollector *)self->_rootCollector provider];
      [provider2 visibilityProviderVisibleBounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      [visibilityProviderHostingLayer convertRect:v16 toLayer:{v21, v23, v25, v27}];
      v59.origin.x = v28;
      v59.origin.y = v29;
      v59.size.width = v30;
      v59.size.height = v31;
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v51 = CGRectIntersection(v50, v59);
      x = v51.origin.x;
      y = v51.origin.y;
      width = v51.size.width;
      height = v51.size.height;
    }

    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    if (!CGRectIsEmpty(v52))
    {
      superlayer = [v16 superlayer];
      if (superlayer)
      {
        v33 = superlayer;
        do
        {
          if ([v33 masksToBounds])
          {
            [v33 bounds];
            [v33 convertRect:v16 toLayer:?];
            v60.origin.x = v34;
            v60.origin.y = v35;
            v60.size.width = v36;
            v60.size.height = v37;
            v53.origin.x = x;
            v53.origin.y = y;
            v53.size.width = width;
            v53.size.height = height;
            v54 = CGRectIntersection(v53, v60);
            x = v54.origin.x;
            y = v54.origin.y;
            width = v54.size.width;
            height = v54.size.height;
            if (CGRectIsEmpty(v54))
            {
              break;
            }
          }

          if (v33 == visibilityProviderHostingLayer)
          {
            break;
          }

          superlayer2 = [v33 superlayer];

          v33 = superlayer2;
        }

        while (superlayer2);
      }
    }
  }

  provider3 = [(TUIVisibilityCollector *)self->_rootCollector provider];
  visibilityProviderWindowLayer = [provider3 visibilityProviderWindowLayer];

  if (visibilityProviderWindowLayer)
  {
    if (v16)
    {
      v55.origin.x = x;
      v55.origin.y = y;
      v55.size.width = width;
      v55.size.height = height;
      if (!CGRectIsEmpty(v55))
      {
        [visibilityProviderWindowLayer bounds];
        [visibilityProviderWindowLayer convertRect:v16 toLayer:?];
        v61.origin.x = v41;
        v61.origin.y = v42;
        v61.size.width = v43;
        v61.size.height = v44;
        v56.origin.x = x;
        v56.origin.y = y;
        v56.size.width = width;
        v56.size.height = height;
        v57 = CGRectIntersection(v56, v61);
        x = v57.origin.x;
        y = v57.origin.y;
        width = v57.size.width;
        height = v57.size.height;
      }
    }
  }

  v45 = x;
  v46 = y;
  v47 = width;
  v48 = height;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (id)newCollectorForProvider:(id)provider withIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier
{
  providerCopy = provider;
  identifierCopy = identifier;
  if (parentIdentifier)
  {
    v10 = [(NSMutableDictionary *)self->_collectorsMap objectForKeyedSubscript:parentIdentifier];
  }

  else
  {
    v10 = self->_rootCollector;
  }

  v11 = v10;
  v12 = [[TUIVisibilityCollector alloc] initWithController:self provider:providerCopy identifier:identifierCopy];
  [(NSMutableDictionary *)self->_collectorsMap setObject:v12 forKeyedSubscript:identifierCopy];
  [(TUIVisibilityCollector *)v11 _addChild:v12];

  return v12;
}

- (void)removeCollector:(id)collector
{
  identifier = [collector identifier];
  [(NSMutableDictionary *)self->_collectorsMap removeObjectForKey:identifier];
}

- (void)updateVisible
{
  v3 = sub_19F7C();

  [(TUIVisibilityController *)self updateVisibleAtTime:v3];
}

- (void)_appendVisibleBoundsUpdatesAtTime:(double)time forCollector:(id)collector toUpdates:(id)updates
{
  collectorCopy = collector;
  updatesCopy = updates;
  provider = [collectorCopy provider];
  [(TUIVisibilityController *)self _computeClippedBoundsForProvider:provider];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [_TUIVisibilityUpdate alloc];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1CACC;
  v31[3] = &unk_25E148;
  v20 = collectorCopy;
  v34 = v12;
  v35 = v14;
  v36 = v16;
  v37 = v18;
  v32 = v20;
  selfCopy = self;
  v21 = [(_TUIVisibilityUpdate *)v19 initWithTime:1 flags:v31 block:time];
  [updatesCopy addObject:v21];
  children = [v20 children];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = [children countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v28;
    do
    {
      v26 = 0;
      do
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(children);
        }

        [(TUIVisibilityController *)self _appendVisibleBoundsUpdatesAtTime:*(*(&v27 + 1) + 8 * v26) forCollector:updatesCopy toUpdates:time];
        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [children countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v24);
  }
}

- (void)_appendVisibilityUpdatesAtTime:(double)time forCollector:(id)collector toUpdates:(id)updates
{
  collectorCopy = collector;
  updatesCopy = updates;
  provider = [collectorCopy provider];
  [(TUIVisibilityController *)self _computeClippedBoundsForProvider:provider];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  LOBYTE(provider) = [collectorCopy _computeVisible];
  v19 = [_TUIVisibilityUpdate alloc];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1CD30;
  v31[3] = &unk_25E120;
  v20 = collectorCopy;
  v34 = v12;
  v35 = v14;
  v36 = v16;
  v37 = v18;
  v38 = provider;
  v32 = v20;
  selfCopy = self;
  v21 = [(_TUIVisibilityUpdate *)v19 initWithTime:1 flags:v31 block:time];
  [updatesCopy addObject:v21];
  children = [v20 children];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = [children countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v28;
    do
    {
      v26 = 0;
      do
      {
        if (*v28 != v25)
        {
          objc_enumerationMutation(children);
        }

        [(TUIVisibilityController *)self _appendVisibilityUpdatesAtTime:*(*(&v27 + 1) + 8 * v26) forCollector:updatesCopy toUpdates:time];
        v26 = v26 + 1;
      }

      while (v24 != v26);
      v24 = [children countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v24);
  }
}

- (void)updateVisibleAtTime:(double)time
{
  v5 = objc_opt_new();
  [(TUIVisibilityController *)self _appendVisibilityUpdatesAtTime:self->_rootCollector forCollector:v5 toUpdates:time];
  [(TUIVisibilityController *)self _scheduleUpdates:v5];
}

@end