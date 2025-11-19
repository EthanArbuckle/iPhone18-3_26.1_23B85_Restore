@interface BCManagedObjectIDMonitor
- (BCManagedObjectIDMonitor)initWithContext:(id)a3 coordinator:(id)a4 entityName:(id)a5 predicate:(id)a6 mapProperty:(id)a7 propertiesOfInterest:(id)a8 observer:(id)a9;
- (BCManagedObjectIDMonitorObserver)observer;
- (BOOL)_objectHasChangesOfInterest:(id)a3;
- (NSSet)currentIdentifiers;
- (void)_managedObjectContextDidSave:(id)a3;
- (void)_managedObjectContextWillSave:(id)a3;
- (void)dealloc;
@end

@implementation BCManagedObjectIDMonitor

- (BCManagedObjectIDMonitor)initWithContext:(id)a3 coordinator:(id)a4 entityName:(id)a5 predicate:(id)a6 mapProperty:(id)a7 propertiesOfInterest:(id)a8 observer:(id)a9
{
  v16 = a3;
  v48 = a4;
  v49 = a5;
  v47 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = BCSignpostLibrary();
  v21 = os_signpost_id_generate(v20);

  v22 = BCSignpostLibrary();
  v23 = v22;
  spid = v21;
  v24 = v21 - 1;
  if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 138412290;
    v55 = v49;
    _os_signpost_emit_with_name_impl(&dword_0, v23, OS_SIGNPOST_INTERVAL_BEGIN, spid, "BCManagedObjectIDMonitor initial fetch", "%@", buf, 0xCu);
  }

  v53.receiver = self;
  v53.super_class = BCManagedObjectIDMonitor;
  v25 = [(BCManagedObjectIDMonitor *)&v53 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_context, a3);
    objc_storeStrong(&v26->_coordinator, a4);
    v27 = [v49 copy];
    entityName = v26->_entityName;
    v26->_entityName = v27;

    objc_storeStrong(&v26->_predicate, a6);
    v29 = v17;
    v30 = [v17 copy];
    mapProperty = v26->_mapProperty;
    v26->_mapProperty = v30;

    v32 = v18;
    v33 = [v18 copy];
    propertiesOfInterest = v26->_propertiesOfInterest;
    v26->_propertiesOfInterest = v33;

    objc_storeWeak(&v26->_observer, v19);
    v35 = dispatch_queue_create("BCManagedObjectIDMonitor.sync", 0);
    sync = v26->_sync;
    v26->_sync = v35;

    dispatch_suspend(v26->_sync);
    v37 = objc_alloc_init(NSMutableSet);
    currentObjectIdentifiers = v26->_currentObjectIdentifiers;
    v26->_currentObjectIdentifiers = v37;

    v39 = +[NSMapTable strongToStrongObjectsMapTable];
    mocToChangesMap = v26->_mocToChangesMap;
    v26->_mocToChangesMap = v39;

    v41 = +[NSNotificationCenter defaultCenter];
    [v41 addObserver:v26 selector:"_managedObjectContextWillSave:" name:NSManagedObjectContextWillSaveNotification object:0];

    v42 = +[NSNotificationCenter defaultCenter];
    [v42 addObserver:v26 selector:"_managedObjectContextDidSave:" name:NSManagedObjectContextDidSaveNotification object:0];

    if (!v16)
    {
      v16 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
      [v16 setPersistentStoreCoordinator:v26->_coordinator];
      [v16 setUndoManager:0];
      [v16 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    }

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_178084;
    v50[3] = &unk_2C7BE8;
    v51 = v26;
    v16 = v16;
    v52 = v16;
    [v16 performBlockAndWait:v50];
  }

  else
  {
    v29 = v17;
    v32 = v18;
  }

  v43 = BCSignpostLibrary();
  v44 = v43;
  if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *buf = 138412290;
    v55 = v49;
    _os_signpost_emit_with_name_impl(&dword_0, v44, OS_SIGNPOST_INTERVAL_BEGIN, spid, "BCManagedObjectIDMonitor initial fetch", "%@", buf, 0xCu);
  }

  return v26;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSManagedObjectContextWillSaveNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:NSManagedObjectContextDidSaveNotification object:0];

  v5.receiver = self;
  v5.super_class = BCManagedObjectIDMonitor;
  [(BCManagedObjectIDMonitor *)&v5 dealloc];
}

- (BOOL)_objectHasChangesOfInterest:(id)a3
{
  v4 = [a3 changedValues];
  v5 = [v4 allKeys];
  v6 = [NSSet setWithArray:v5];

  LOBYTE(self) = [v6 intersectsSet:self->_propertiesOfInterest];
  return self;
}

- (void)_managedObjectContextWillSave:(id)a3
{
  v49 = a3;
  v4 = [v49 object];
  v50 = v4;
  context = self->_context;
  v6 = v4;
  if (context == v4 || !context && self->_coordinator && (-[NSManagedObjectContext persistentStoreCoordinator](v4, "persistentStoreCoordinator"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasStoreInCommonWith:self->_coordinator], v7, v6 = v50, v8))
  {
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = sub_178A24;
    v74 = sub_178A34;
    v75 = 0;
    sync = self->_sync;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_178A3C;
    block[3] = &unk_2C7AE0;
    block[4] = self;
    block[5] = &v70;
    dispatch_sync(sync, block);
    v53 = +[NSMutableArray array];
    v52 = +[NSMutableArray array];
    v51 = +[NSMutableArray array];
    mapProperty = self->_mapProperty;
    if (!mapProperty)
    {
      mapProperty = @"objectID";
    }

    v11 = mapProperty;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v12 = [(NSManagedObjectContext *)v6 deletedObjects];
    v13 = [v12 countByEnumeratingWithState:&v65 objects:v78 count:16];
    if (v13)
    {
      v14 = *v66;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v66 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v65 + 1) + 8 * i);
          v17 = [v16 entity];
          v18 = [v17 name];
          v19 = [v18 isEqualToString:self->_entityName];

          if (v19)
          {
            v20 = [v16 valueForKey:v11];
            if (v20 && [v71[5] containsObject:v20])
            {
              [v52 addObject:v20];
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v65 objects:v78 count:16];
      }

      while (v13);
    }

    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v61 = 0u;
    v21 = [(NSManagedObjectContext *)v50 insertedObjects];
    v22 = [v21 countByEnumeratingWithState:&v61 objects:v77 count:16];
    if (v22)
    {
      v23 = *v62;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v62 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v61 + 1) + 8 * j);
          v26 = [v25 entity];
          v27 = [v26 name];
          v28 = [v27 isEqualToString:self->_entityName];

          if (v28)
          {
            v29 = [v25 valueForKey:v11];
            if (v29)
            {
              predicate = self->_predicate;
              if (!predicate || [(NSPredicate *)predicate evaluateWithObject:v25])
              {
                [v53 addObject:v29];
              }
            }
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v61 objects:v77 count:16];
      }

      while (v22);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v31 = [(NSManagedObjectContext *)v50 updatedObjects];
    v32 = [v31 countByEnumeratingWithState:&v57 objects:v76 count:16];
    if (v32)
    {
      v33 = *v58;
      do
      {
        for (k = 0; k != v32; k = k + 1)
        {
          if (*v58 != v33)
          {
            objc_enumerationMutation(v31);
          }

          v35 = *(*(&v57 + 1) + 8 * k);
          v36 = [v35 entity];
          v37 = [v36 name];
          v38 = [v37 isEqualToString:self->_entityName];

          if (v38)
          {
            v39 = [v35 valueForKey:v11];
            if (v39 && (!self->_propertiesOfInterest || [(BCManagedObjectIDMonitor *)self _objectHasChangesOfInterest:v35]))
            {
              v40 = self->_predicate;
              v41 = !v40 || [(NSPredicate *)v40 evaluateWithObject:v35];
              v42 = [v71[5] containsObject:v39];
              v43 = v53;
              if (((v41 ^ 1 | v42) & 1) == 0 || (v44 = v42 ^ 1, v43 = v52, ((v41 | v44) & 1) == 0) || (v43 = v51, ((v41 ^ 1 | v44) & 1) == 0))
              {
                [v43 addObject:v39];
              }
            }
          }
        }

        v32 = [v31 countByEnumeratingWithState:&v57 objects:v76 count:16];
      }

      while (v32);
    }

    if ([v53 count] || objc_msgSend(v52, "count") || objc_msgSend(v51, "count"))
    {
      v45 = [[BCManagedObjectIDChanges alloc] initWithAdded:v53 updated:v51 deleted:v52 context:v50];
      v46 = self->_sync;
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_178A88;
      v54[3] = &unk_2C89F8;
      v54[4] = self;
      v47 = v45;
      v55 = v47;
      v56 = v50;
      dispatch_sync(v46, v54);
      WeakRetained = objc_loadWeakRetained(&self->_observer);
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained managedObjectBackgroundMonitor:self willSaveNotify:v47];
      }
    }

    _Block_object_dispose(&v70, 8);
    v6 = v50;
  }
}

- (void)_managedObjectContextDidSave:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = v5;
  context = self->_context;
  if (context == v5 || !context && self->_coordinator && (-[NSManagedObjectContext persistentStoreCoordinator](v5, "persistentStoreCoordinator"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 hasStoreInCommonWith:self->_coordinator], v8, v9))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_178A24;
    v23 = sub_178A34;
    v24 = 0;
    sync = self->_sync;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_178C98;
    block[3] = &unk_2C7BC0;
    v18 = &v19;
    block[4] = self;
    v17 = v6;
    dispatch_sync(sync, block);
    v11 = [v20[5] addedObjects];
    if (![v11 count])
    {
      v12 = [v20[5] deletedObjects];
      if (![v12 count])
      {
        v14 = [v20[5] updatedObjects];
        v15 = [v14 count];

        if (!v15)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

LABEL_9:
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    [WeakRetained managedObjectBackgroundMonitor:self didSaveNotify:v20[5]];

LABEL_10:
    _Block_object_dispose(&v19, 8);
  }
}

- (NSSet)currentIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_178A24;
  v10 = sub_178A34;
  v11 = 0;
  sync = self->_sync;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_178EDC;
  v5[3] = &unk_2C7AE0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sync, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BCManagedObjectIDMonitorObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end