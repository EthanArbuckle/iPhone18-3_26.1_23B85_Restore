@interface TUITriggerStateManager
- (TUITriggerStateManager)init;
- (unint64_t)stateForTriggerWithName:(id)name;
- (void)_updateTriggerStatesWithNewStates:(id)states updateEvent:(unint64_t)event;
- (void)addObserver:(id)observer forTrigger:(id)trigger;
- (void)removeObserver:(id)observer forTrigger:(id)trigger;
- (void)updateTriggerStatesWithNewStates:(id)states updateEvent:(unint64_t)event;
@end

@implementation TUITriggerStateManager

- (TUITriggerStateManager)init
{
  v14.receiver = self;
  v14.super_class = TUITriggerStateManager;
  v2 = [(TUITriggerStateManager *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    triggerStates = v2->_triggerStates;
    v2->_triggerStates = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    triggerValues = v2->_triggerValues;
    v2->_triggerValues = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    lastUpdateEventForTrigger = v2->_lastUpdateEventForTrigger;
    v2->_lastUpdateEventForTrigger = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    observers = v2->_observers;
    v2->_observers = v9;

    v11 = objc_alloc_init(NSMutableSet);
    embeddedCollectionDelegates = v2->_embeddedCollectionDelegates;
    v2->_embeddedCollectionDelegates = v11;
  }

  return v2;
}

- (void)addObserver:(id)observer forTrigger:(id)trigger
{
  observerCopy = observer;
  triggerCopy = trigger;
  observers = [(TUITriggerStateManager *)self observers];
  v8 = [observers objectForKey:triggerCopy];

  if (!v8)
  {
    v8 = +[NSHashTable weakObjectsHashTable];
  }

  [v8 addObject:observerCopy];
  observers2 = [(TUITriggerStateManager *)self observers];
  [observers2 setObject:v8 forKey:triggerCopy];
}

- (void)removeObserver:(id)observer forTrigger:(id)trigger
{
  observerCopy = observer;
  triggerCopy = trigger;
  observers = [(TUITriggerStateManager *)self observers];
  v8 = [observers objectForKey:triggerCopy];

  if (v8)
  {
    [v8 removeObject:observerCopy];
    observers2 = [(TUITriggerStateManager *)self observers];
    [observers2 setObject:v8 forKey:triggerCopy];
  }
}

- (void)updateTriggerStatesWithNewStates:(id)states updateEvent:(unint64_t)event
{
  [(TUITriggerStateManager *)self _updateTriggerStatesWithNewStates:states updateEvent:?];
  embeddedCollectionDelegates = self->_embeddedCollectionDelegates;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1355B4;
  v7[3] = &unk_262608;
  v7[4] = event;
  [(NSMutableSet *)embeddedCollectionDelegates enumerateObjectsUsingBlock:v7];
}

- (unint64_t)stateForTriggerWithName:(id)name
{
  v3 = [(NSMutableDictionary *)self->_triggerStates objectForKey:name];
  intValue = [v3 intValue];

  return intValue;
}

- (void)_updateTriggerStatesWithNewStates:(id)states updateEvent:(unint64_t)event
{
  statesCopy = states;
  namesForTriggersInUpdate = [statesCopy namesForTriggersInUpdate];
  selfCopy = self;
  v49 = [NSMutableDictionary dictionaryWithCapacity:[(NSMutableDictionary *)self->_triggerValues count]];
  v44 = +[NSMutableSet set];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = namesForTriggersInUpdate;
  v8 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v60;
    v45 = *v60;
    v46 = statesCopy;
    do
    {
      v11 = 0;
      v47 = v9;
      do
      {
        if (*v60 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v59 + 1) + 8 * v11);
        v13 = [statesCopy observationModeForTriggerWithName:v12];
        v14 = v13;
        if (event < 2)
        {
          if ((v13 & 0xFFFFFFFFFFFFFFFDLL) != 0)
          {
            goto LABEL_34;
          }
        }

        else if (event != 2)
        {
          if (event != 3)
          {
            goto LABEL_34;
          }

          if (v13 > 3 || v13 == 2)
          {
            goto LABEL_34;
          }
        }

        v16 = [(NSMutableDictionary *)selfCopy->_triggerStates objectForKey:v12];
        intValue = [v16 intValue];

        v18 = [statesCopy stateForTriggerWithName:v12];
        v19 = [(NSMutableDictionary *)selfCopy->_lastUpdateEventForTrigger objectForKey:v12];
        intValue2 = [v19 intValue];

        if (v18 != intValue || intValue2 != event)
        {
          triggerStates = selfCopy->_triggerStates;
          v23 = [NSNumber numberWithUnsignedInteger:v18];
          [(NSMutableDictionary *)triggerStates setObject:v23 forKey:v12];

          lastUpdateEventForTrigger = selfCopy->_lastUpdateEventForTrigger;
          v25 = [NSNumber numberWithUnsignedInteger:event];
          [(NSMutableDictionary *)lastUpdateEventForTrigger setObject:v25 forKey:v12];

          observers = [(TUITriggerStateManager *)selfCopy observers];
          v27 = [observers objectForKey:v12];

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          allObjects = [v27 allObjects];
          v29 = [allObjects countByEnumeratingWithState:&v55 objects:v64 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v56;
            do
            {
              for (i = 0; i != v30; i = i + 1)
              {
                if (*v56 != v31)
                {
                  objc_enumerationMutation(allObjects);
                }

                [*(*(&v55 + 1) + 8 * i) handleTrigger:v12 didChangeState:v18 updateEvent:event];
              }

              v30 = [allObjects countByEnumeratingWithState:&v55 objects:v64 count:16];
            }

            while (v30);
          }

          v10 = v45;
          statesCopy = v46;
        }

        if (v14 == 3)
        {
          v33 = [statesCopy valueForTriggerWithName:v12];
          [(NSMutableDictionary *)selfCopy->_triggerValues setObject:v33 forKeyedSubscript:v12];
          [v49 setObject:v33 forKeyedSubscript:v12];
          observers2 = [(TUITriggerStateManager *)selfCopy observers];
          v35 = [observers2 objectForKey:v12];

          if ([v35 count])
          {
            allObjects2 = [v35 allObjects];
            [v44 addObjectsFromArray:allObjects2];
          }
        }

        else
        {
          [(NSMutableDictionary *)selfCopy->_triggerValues removeObjectForKey:v12];
        }

        v9 = v47;
LABEL_34:
        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v9);
  }

  if ([v49 count])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v37 = v44;
    v38 = [v37 countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v52;
      do
      {
        for (j = 0; j != v39; j = j + 1)
        {
          if (*v52 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v51 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            v43 = [v49 copy];
            [v42 triggerStateManager:selfCopy triggersDidChangeValues:v43];
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v39);
    }
  }
}

@end