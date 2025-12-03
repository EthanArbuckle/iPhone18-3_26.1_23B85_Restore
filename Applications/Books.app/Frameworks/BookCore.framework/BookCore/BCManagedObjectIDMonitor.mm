@interface BCManagedObjectIDMonitor
- (BCManagedObjectIDMonitor)initWithContext:(id)context coordinator:(id)coordinator entityName:(id)name predicate:(id)predicate mapProperty:(id)property propertiesOfInterest:(id)interest observer:(id)observer;
- (BCManagedObjectIDMonitorObserver)observer;
- (BOOL)_objectHasChangesOfInterest:(id)interest;
- (NSSet)currentIdentifiers;
- (void)_managedObjectContextDidSave:(id)save;
- (void)_managedObjectContextWillSave:(id)save;
- (void)dealloc;
@end

@implementation BCManagedObjectIDMonitor

- (BCManagedObjectIDMonitor)initWithContext:(id)context coordinator:(id)coordinator entityName:(id)name predicate:(id)predicate mapProperty:(id)property propertiesOfInterest:(id)interest observer:(id)observer
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  nameCopy = name;
  predicateCopy = predicate;
  propertyCopy = property;
  interestCopy = interest;
  observerCopy = observer;
  v20 = BCSignpostLibrary();
  v21 = os_signpost_id_generate(v20);

  v22 = BCSignpostLibrary();
  v23 = v22;
  spid = v21;
  v24 = v21 - 1;
  if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 138412290;
    v55 = nameCopy;
    _os_signpost_emit_with_name_impl(&dword_0, v23, OS_SIGNPOST_INTERVAL_BEGIN, spid, "BCManagedObjectIDMonitor initial fetch", "%@", buf, 0xCu);
  }

  v53.receiver = self;
  v53.super_class = BCManagedObjectIDMonitor;
  v25 = [(BCManagedObjectIDMonitor *)&v53 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_context, context);
    objc_storeStrong(&v26->_coordinator, coordinator);
    v27 = [nameCopy copy];
    entityName = v26->_entityName;
    v26->_entityName = v27;

    objc_storeStrong(&v26->_predicate, predicate);
    v29 = propertyCopy;
    v30 = [propertyCopy copy];
    mapProperty = v26->_mapProperty;
    v26->_mapProperty = v30;

    v32 = interestCopy;
    v33 = [interestCopy copy];
    propertiesOfInterest = v26->_propertiesOfInterest;
    v26->_propertiesOfInterest = v33;

    objc_storeWeak(&v26->_observer, observerCopy);
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

    if (!contextCopy)
    {
      contextCopy = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
      [contextCopy setPersistentStoreCoordinator:v26->_coordinator];
      [contextCopy setUndoManager:0];
      [contextCopy setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    }

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_178084;
    v50[3] = &unk_2C7BE8;
    v51 = v26;
    contextCopy = contextCopy;
    v52 = contextCopy;
    [contextCopy performBlockAndWait:v50];
  }

  else
  {
    v29 = propertyCopy;
    v32 = interestCopy;
  }

  v43 = BCSignpostLibrary();
  v44 = v43;
  if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *buf = 138412290;
    v55 = nameCopy;
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

- (BOOL)_objectHasChangesOfInterest:(id)interest
{
  changedValues = [interest changedValues];
  allKeys = [changedValues allKeys];
  v6 = [NSSet setWithArray:allKeys];

  LOBYTE(self) = [v6 intersectsSet:self->_propertiesOfInterest];
  return self;
}

- (void)_managedObjectContextWillSave:(id)save
{
  saveCopy = save;
  object = [saveCopy object];
  v50 = object;
  context = self->_context;
  v6 = object;
  if (context == object || !context && self->_coordinator && (-[NSManagedObjectContext persistentStoreCoordinator](object, "persistentStoreCoordinator"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 hasStoreInCommonWith:self->_coordinator], v7, v6 = v50, v8))
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
    deletedObjects = [(NSManagedObjectContext *)v6 deletedObjects];
    v13 = [deletedObjects countByEnumeratingWithState:&v65 objects:v78 count:16];
    if (v13)
    {
      v14 = *v66;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v66 != v14)
          {
            objc_enumerationMutation(deletedObjects);
          }

          v16 = *(*(&v65 + 1) + 8 * i);
          entity = [v16 entity];
          name = [entity name];
          v19 = [name isEqualToString:self->_entityName];

          if (v19)
          {
            v20 = [v16 valueForKey:v11];
            if (v20 && [v71[5] containsObject:v20])
            {
              [v52 addObject:v20];
            }
          }
        }

        v13 = [deletedObjects countByEnumeratingWithState:&v65 objects:v78 count:16];
      }

      while (v13);
    }

    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    v61 = 0u;
    insertedObjects = [(NSManagedObjectContext *)v50 insertedObjects];
    v22 = [insertedObjects countByEnumeratingWithState:&v61 objects:v77 count:16];
    if (v22)
    {
      v23 = *v62;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v62 != v23)
          {
            objc_enumerationMutation(insertedObjects);
          }

          v25 = *(*(&v61 + 1) + 8 * j);
          entity2 = [v25 entity];
          name2 = [entity2 name];
          v28 = [name2 isEqualToString:self->_entityName];

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

        v22 = [insertedObjects countByEnumeratingWithState:&v61 objects:v77 count:16];
      }

      while (v22);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    updatedObjects = [(NSManagedObjectContext *)v50 updatedObjects];
    v32 = [updatedObjects countByEnumeratingWithState:&v57 objects:v76 count:16];
    if (v32)
    {
      v33 = *v58;
      do
      {
        for (k = 0; k != v32; k = k + 1)
        {
          if (*v58 != v33)
          {
            objc_enumerationMutation(updatedObjects);
          }

          v35 = *(*(&v57 + 1) + 8 * k);
          entity3 = [v35 entity];
          name3 = [entity3 name];
          v38 = [name3 isEqualToString:self->_entityName];

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

        v32 = [updatedObjects countByEnumeratingWithState:&v57 objects:v76 count:16];
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

- (void)_managedObjectContextDidSave:(id)save
{
  saveCopy = save;
  object = [saveCopy object];
  v6 = object;
  context = self->_context;
  if (context == object || !context && self->_coordinator && (-[NSManagedObjectContext persistentStoreCoordinator](object, "persistentStoreCoordinator"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 hasStoreInCommonWith:self->_coordinator], v8, v9))
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
    addedObjects = [v20[5] addedObjects];
    if (![addedObjects count])
    {
      deletedObjects = [v20[5] deletedObjects];
      if (![deletedObjects count])
      {
        updatedObjects = [v20[5] updatedObjects];
        v15 = [updatedObjects count];

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