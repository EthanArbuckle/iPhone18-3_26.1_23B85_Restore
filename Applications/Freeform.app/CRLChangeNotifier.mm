@interface CRLChangeNotifier
- (CRLChangeNotifier)init;
- (id)p_findCountedObserverForObserver:(id)a3 inArray:(id)a4;
- (void)p_addObserver:(id)a3 forChangeSource:(id)a4 isClass:(BOOL)a5;
- (void)p_processChanges:(id)a3 preprocessing:(BOOL)a4;
- (void)p_removeDeallocatedObserversFromArray:(id)a3;
- (void)p_removeObserver:(id)a3 forChangeSource:(id)a4 isClass:(BOOL)a5;
- (void)p_removeZeroCountObserversInMap:(id)a3 fromCountedObserversByChangeSourceMap:(id)a4;
- (void)p_trimChangeSourceToCountedObserversMap:(id)a3;
@end

@implementation CRLChangeNotifier

- (CRLChangeNotifier)init
{
  v10.receiver = self;
  v10.super_class = CRLChangeNotifier;
  v2 = [(CRLChangeNotifier *)&v10 init];
  if (v2)
  {
    v3 = [[NSMapTable alloc] initWithKeyOptions:517 valueOptions:0 capacity:0];
    changeSourceOfObjectObservers = v2->_changeSourceOfObjectObservers;
    v2->_changeSourceOfObjectObservers = v3;

    v5 = [[NSMapTable alloc] initWithKeyOptions:517 valueOptions:0 capacity:0];
    changeSourceOfClassObservers = v2->_changeSourceOfClassObservers;
    v2->_changeSourceOfClassObservers = v5;

    v7 = dispatch_queue_create("com.apple.freeform.CRLChangeNotifier.notifyingLock", 0);
    currentlyNotifyingLock = v2->_currentlyNotifyingLock;
    v2->_currentlyNotifyingLock = v7;
  }

  return v2;
}

- (id)p_findCountedObserverForObserver:(id)a3 inArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1002C4E08;
  v11[3] = &unk_101852420;
  v7 = v5;
  v12 = v7;
  v8 = [v6 indexOfObjectPassingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 objectAtIndexedSubscript:v8];
  }

  return v9;
}

- (void)p_addObserver:(id)a3 forChangeSource:(id)a4 isClass:(BOOL)a5
{
  v5 = a5;
  v15 = a3;
  v8 = a4;
  v9 = self;
  objc_sync_enter(v9);
  v10 = 8;
  if (v5)
  {
    v10 = 16;
  }

  v11 = *(&v9->super.isa + v10);
  v12 = [v11 objectForKey:v8];
  if (!v12)
  {
    v12 = objc_alloc_init(NSMutableArray);
    [v11 setObject:v12 forKey:v8];
  }

  v13 = [(CRLChangeNotifier *)v9 p_findCountedObserverForObserver:v15 inArray:v12];
  v14 = v13;
  if (v13)
  {
    [(CRLCountedObserver *)v13 incrementCount];
  }

  else
  {
    v14 = [[CRLCountedObserver alloc] initWithObserver:v15];
    [v12 addObject:v14];
  }

  objc_sync_exit(v9);
}

- (void)p_removeObserver:(id)a3 forChangeSource:(id)a4 isClass:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = self;
  objc_sync_enter(v10);
  v11 = 8;
  if (v5)
  {
    v11 = 16;
  }

  v12 = *(&v10->super.isa + v11);
  v13 = [v12 objectForKey:v9];
  if (v13)
  {
    v14 = [(CRLChangeNotifier *)v10 p_findCountedObserverForObserver:v8 inArray:v13];
    if (v14)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      currentlyNotifyingLock = v10->_currentlyNotifyingLock;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1002C51E4;
      block[3] = &unk_101839FF8;
      block[4] = v10;
      block[5] = &v27;
      dispatch_sync(currentlyNotifyingLock, block);
      v16 = v14;
      objc_sync_enter(v16);
      if (![v16 decrementCount])
      {
        if (*(v28 + 24) == 1)
        {
          v17 = v10->_currentlyNotifyingLock;
          v18 = _NSConcreteStackBlock;
          v19 = 3221225472;
          v20 = sub_1002C5200;
          v21 = &unk_101852448;
          v25 = v5;
          v22 = v10;
          v23 = v9;
          v24 = v16;
          dispatch_sync(v17, &v18);
        }

        else
        {
          [v13 removeObject:v16];
        }
      }

      if (![v13 count])
      {
        [v12 removeObjectForKey:v9];
      }

      objc_sync_exit(v16);

      _Block_object_dispose(&v27, 8);
    }
  }

  objc_sync_exit(v10);
}

- (void)p_processChanges:(id)a3 preprocessing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v56 = v4;
  v7 = objc_alloc_init(NSMutableArray);
  v53 = objc_alloc_init(NSMutableOrderedSet);
  currentlyNotifyingLock = self->_currentlyNotifyingLock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002C5B64;
  block[3] = &unk_10183AB38;
  block[4] = self;
  dispatch_sync(currentlyNotifyingLock, block);
  v48 = self;
  v54 = self;
  objc_sync_enter(v54);
  v47 = v6;
  v9 = [v6 changesArray];
  v10 = [v9 copy];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v10;
  v49 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v49)
  {
    v50 = *v80;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v80 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v79 + 1) + 8 * i);
        v12 = [v11 changeSource];
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v58 = v12;
        v13 = [(NSMapTable *)v54->_changeSourceOfObjectObservers objectForKey:?];
        v14 = [v13 countByEnumeratingWithState:&v75 objects:v87 count:16];
        if (v14)
        {
          v15 = *v76;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v76 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v75 + 1) + 8 * j);
              v18 = [v17 observer];
              v19 = objc_opt_respondsToSelector();

              if (v19)
              {
                v20 = [[TSKChangeNotificationInfo alloc] initWithCountedObserver:v17 changeEntry:v11];
                [v7 addObject:v20];
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v75 objects:v87 count:16];
          }

          while (v14);
        }

        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v55 = v54->_changeSourceOfClassObservers;
        v59 = [(NSMapTable *)v55 countByEnumeratingWithState:&v71 objects:v86 count:16];
        if (v59)
        {
          v57 = *v72;
          do
          {
            for (k = 0; k != v59; k = k + 1)
            {
              if (*v72 != v57)
              {
                objc_enumerationMutation(v55);
              }

              v21 = *(*(&v71 + 1) + 8 * k);
              if (objc_opt_isKindOfClass())
              {
                v69 = 0u;
                v70 = 0u;
                v67 = 0u;
                v68 = 0u;
                v22 = [(NSMapTable *)v54->_changeSourceOfClassObservers objectForKey:v21];
                v23 = [v22 countByEnumeratingWithState:&v67 objects:v85 count:16];
                if (v23)
                {
                  v24 = *v68;
                  do
                  {
                    for (m = 0; m != v23; m = m + 1)
                    {
                      if (*v68 != v24)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v26 = *(*(&v67 + 1) + 8 * m);
                      v27 = [v26 observer];
                      v28 = objc_opt_respondsToSelector();

                      if (v28)
                      {
                        v29 = [[TSKChangeNotificationInfo alloc] initWithCountedObserver:v26 changeEntry:v11];
                        [v7 addObject:v29];
                      }
                    }

                    v23 = [v22 countByEnumeratingWithState:&v67 objects:v85 count:16];
                  }

                  while (v23);
                }
              }
            }

            v59 = [(NSMapTable *)v55 countByEnumeratingWithState:&v71 objects:v86 count:16];
          }

          while (v59);
        }
      }

      v49 = [obj countByEnumeratingWithState:&v79 objects:v88 count:16];
    }

    while (v49);
  }

  objc_sync_exit(v54);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = v7;
  v30 = [v61 countByEnumeratingWithState:&v63 objects:v84 count:16];
  if (v30)
  {
    v31 = *v64;
    do
    {
      for (n = 0; n != v30; n = n + 1)
      {
        if (*v64 != v31)
        {
          objc_enumerationMutation(v61);
        }

        v33 = *(*(&v63 + 1) + 8 * n);
        v34 = [v33 countedObserver];
        objc_sync_enter(v34);
        v35 = [v34 observer];
        if (v56)
        {
          v36 = [v33 entry];
          v37 = [v36 changes];
          v38 = [v33 entry];
          v39 = [v38 changeSource];
          [v35 preprocessChanges:v37 forChangeSource:v39];
        }

        else
        {
          v40 = [v33 entry];
          v41 = [v40 changes];
          v42 = [v33 entry];
          v43 = [v42 changeSource];
          [v35 processChanges:v41 forChangeSource:v43];

          if (objc_opt_respondsToSelector())
          {
            [v53 addObject:v35];
          }
        }

        objc_sync_exit(v34);
      }

      v30 = [v61 countByEnumeratingWithState:&v63 objects:v84 count:16];
    }

    while (v30);
  }

  v44 = [v53 array];
  [v44 makeObjectsPerformSelector:"didProcessAllChanges"];

  v45 = v54;
  objc_sync_enter(v45);
  v46 = v48->_currentlyNotifyingLock;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1002C6168;
  v62[3] = &unk_10183AB38;
  v62[4] = v45;
  dispatch_sync(v46, v62);
  objc_sync_exit(v45);
}

- (void)p_removeZeroCountObserversInMap:(id)a3 fromCountedObserversByChangeSourceMap:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        objc_sync_enter(v11);
        if (![v11 currentCount])
        {
          v12 = [v7 objectForKey:v11];
          v13 = [v6 objectForKey:v12];
          [v13 removeObject:v11];
        }

        objc_sync_exit(v11);

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)p_removeDeallocatedObserversFromArray:(id)a3
{
  v3 = a3;
  v4 = [NSPredicate predicateWithBlock:&stru_1018525C8];
  [v3 filterUsingPredicate:v4];
}

- (void)p_trimChangeSourceToCountedObserversMap:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v6 objectForKey:v11];
        [(CRLChangeNotifier *)self p_removeDeallocatedObserversFromArray:v12];
        if (![v12 count])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v6 removeObjectForKey:{*(*(&v18 + 1) + 8 * j), v18}];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

@end