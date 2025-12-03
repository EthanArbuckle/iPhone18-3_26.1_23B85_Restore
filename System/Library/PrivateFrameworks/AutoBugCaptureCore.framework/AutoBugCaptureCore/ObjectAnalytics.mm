@interface ObjectAnalytics
- (ObjectAnalytics)initWithWorkspace:(id)workspace entityName:(id)name withCache:(BOOL)cache;
- (id)_fetch:(id)_fetch sortDesc:(id)desc limit:(unint64_t)limit;
- (id)_firstLastHappened:(BOOL)happened;
- (id)createEntityForEntityName:(id)name;
- (id)createTemporaryEntityForEntityName:(id)name;
- (id)fetchAllEntityDictionariesWithProperties:(id)properties;
- (id)fetchEntityDictionariesWithProperties:(id)properties predicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit;
- (id)getDescriptionForName:(id)name;
- (int64_t)removeEntitiesMatching:(id)matching;
- (unint64_t)countEntitiesMatching:(id)matching;
- (unint64_t)updateEntitiesMatching:(id)matching properties:(id)properties;
- (void)moveTemporaryEntityToMainContext:(id)context;
- (void)refresh:(id)refresh;
- (void)removeEntities:(id)entities;
@end

@implementation ObjectAnalytics

- (ObjectAnalytics)initWithWorkspace:(id)workspace entityName:(id)name withCache:(BOOL)cache
{
  workspaceCopy = workspace;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = ObjectAnalytics;
  v10 = [(ObjectAnalytics *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->wspace, workspace);
    v11->managedCache = 0;
    objc_storeStrong(&v11->entityName, name);
  }

  return v11;
}

- (id)fetchAllEntityDictionariesWithProperties:(id)properties
{
  v19 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v5 setName:@"objectID"];
  expressionForEvaluatedObject = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
  [v5 setExpression:expressionForEvaluatedObject];

  [v5 setExpressionResultType:2000];
  v7 = [MEMORY[0x277CBEB18] arrayWithObject:v5];
  if ([propertiesCopy count])
  {
    [v7 addObjectsFromArray:propertiesCopy];
  }

  v8 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:self->entityName];
  [v8 setResultType:2];
  [v8 setAllocationType:1];
  [v8 setPropertiesToFetch:v7];
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  v16 = 0;
  v10 = [mainObjectContext executeFetchRequest:v8 error:&v16];
  v11 = v16;

  if (v11)
  {
    v12 = objectanalyticsHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "Failure to fetch object IDs %@", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v13 = v10;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fetchEntityDictionariesWithProperties:(id)properties predicate:(id)predicate sortDescriptors:(id)descriptors limit:(unint64_t)limit
{
  v27 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v13 = objc_alloc_init(MEMORY[0x277CBE410]);
  [v13 setName:@"objectID"];
  expressionForEvaluatedObject = [MEMORY[0x277CCA9C0] expressionForEvaluatedObject];
  [v13 setExpression:expressionForEvaluatedObject];

  [v13 setExpressionResultType:2000];
  v15 = [MEMORY[0x277CBEB18] arrayWithObject:v13];
  if ([propertiesCopy count])
  {
    [v15 addObjectsFromArray:propertiesCopy];
  }

  v16 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:self->entityName];
  [v16 setResultType:2];
  [v16 setAllocationType:1];
  [v16 setPropertiesToFetch:v15];
  if (predicateCopy)
  {
    [v16 setPredicate:predicateCopy];
  }

  if (descriptorsCopy)
  {
    [v16 setSortDescriptors:descriptorsCopy];
  }

  if (limit)
  {
    [v16 setFetchLimit:limit];
  }

  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  v24 = 0;
  v18 = [mainObjectContext executeFetchRequest:v16 error:&v24];
  v19 = v24;

  if (v19)
  {
    v20 = objectanalyticsHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v19;
      _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_ERROR, "Failure to fetch object IDs %@", buf, 0xCu);
    }

    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_firstLastHappened:(BOOL)happened
{
  v4 = [(ObjectAnalytics *)self _fetch:0 sortDesc:0];
  v5 = v4;
  if (v4 && [v4 count])
  {
    if (happened)
    {
      [v5 objectAtIndex:0];
    }

    else
    {
      [v5 lastObject];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createEntityForEntityName:(id)name
{
  nameCopy = name;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (mainObjectContext)
  {
    if (!nameCopy)
    {
      nameCopy = self->entityName;
    }

    v6 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:nameCopy inManagedObjectContext:mainObjectContext];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createTemporaryEntityForEntityName:(id)name
{
  nameCopy = name;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (mainObjectContext)
  {
    if (!nameCopy)
    {
      nameCopy = self->entityName;
    }

    v6 = [MEMORY[0x277CBE408] entityForName:nameCopy inManagedObjectContext:mainObjectContext];
    v7 = [objc_alloc(MEMORY[0x277CBE438]) initWithEntity:v6 insertIntoManagedObjectContext:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)moveTemporaryEntityToMainContext:(id)context
{
  v10 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (contextCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    [mainObjectContext insertObject:contextCopy];
  }

  else
  {
    mainObjectContext = objectanalyticsHandle();
    if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
    {
      v6 = [contextCopy description];
      v8 = 136315138;
      uTF8String = [v6 UTF8String];
      _os_log_impl(&dword_241804000, mainObjectContext, OS_LOG_TYPE_ERROR, "Invalid object %s", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)getDescriptionForName:(id)name
{
  v3 = MEMORY[0x277CBE408];
  wspace = self->wspace;
  nameCopy = name;
  mainObjectContext = [(AnalyticsWorkspace *)wspace mainObjectContext];
  v7 = [v3 entityForName:nameCopy inManagedObjectContext:mainObjectContext];

  return v7;
}

- (void)refresh:(id)refresh
{
  refreshCopy = refresh;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  v6 = mainObjectContext;
  if (mainObjectContext)
  {
    if (refreshCopy)
    {
      [mainObjectContext refreshObject:refreshCopy mergeChanges:0];
    }
  }

  else
  {
    v7 = objectanalyticsHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "moc is nil", v8, 2u);
    }
  }
}

- (void)removeEntities:(id)entities
{
  v19 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (mainObjectContext)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = entitiesCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [mainObjectContext deleteObject:{*(*(&v13 + 1) + 8 * i), v13}];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }

    [(AnalyticsWorkspace *)self->wspace save];
  }

  else
  {
    v11 = objectanalyticsHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)countEntitiesMatching:(id)matching
{
  v19 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  if (self->entityName)
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    if (!mainObjectContext)
    {
      v9 = objectanalyticsHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
      }

      v8 = 0;
      goto LABEL_17;
    }

    v6 = objc_alloc_init(MEMORY[0x277CBE428]);
    v7 = [MEMORY[0x277CBE408] entityForName:self->entityName inManagedObjectContext:mainObjectContext];
    [v6 setEntity:v7];

    [v6 setPredicate:matchingCopy];
    v16 = 0;
    v8 = [mainObjectContext countForFetchRequest:v6 error:&v16];
    v9 = v16;
    if (v9)
    {
      v10 = objectanalyticsHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v9 description];
        uTF8String = [v11 UTF8String];
        *buf = 136315138;
        v18 = uTF8String;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "error counting entities: %s", buf, 0xCu);
      }
    }

    else
    {
      v13 = objectanalyticsHandle();
      v10 = v13;
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v18 = v8;
          _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "counted %ld entities", buf, 0xCu);
        }

        goto LABEL_16;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = matchingCopy;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "an error occrred counting entities matching: %@", buf, 0xCu);
      }
    }

    v8 = 0;
LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  mainObjectContext = objectanalyticsHandle();
  if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, mainObjectContext, OS_LOG_TYPE_ERROR, "entityName is nil", buf, 2u);
  }

  v8 = 0;
LABEL_18:

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)removeEntitiesMatching:(id)matching
{
  v22 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  if (self->entityName)
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    if (mainObjectContext)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBE428]);
      v7 = [MEMORY[0x277CBE408] entityForName:self->entityName inManagedObjectContext:mainObjectContext];
      [v6 setEntity:v7];

      [v6 setPredicate:matchingCopy];
      v8 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v6];
      [v8 setResultType:2];
      v19 = 0;
      v9 = [mainObjectContext executeRequest:v8 error:&v19];
      v10 = v19;
      if (v10)
      {
        v11 = objectanalyticsHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = [v10 description];
          uTF8String = [v12 UTF8String];
          *buf = 136315138;
          v21 = uTF8String;
          _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "error batch deleting: %s", buf, 0xCu);
        }

        integerValue = 0;
      }

      else
      {
        result = [v9 result];
        integerValue = [result integerValue];

        v16 = objectanalyticsHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v21 = integerValue;
          _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "batch deleted %ld entities", buf, 0xCu);
        }

        [(AnalyticsWorkspace *)self->wspace save];
      }
    }

    else
    {
      v10 = objectanalyticsHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
      }

      integerValue = 0;
    }
  }

  else
  {
    mainObjectContext = objectanalyticsHandle();
    if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, mainObjectContext, OS_LOG_TYPE_ERROR, "entityName is nil", buf, 2u);
    }

    integerValue = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return integerValue;
}

- (unint64_t)updateEntitiesMatching:(id)matching properties:(id)properties
{
  v24 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  propertiesCopy = properties;
  if (self->entityName)
  {
    mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
    if (!mainObjectContext)
    {
      v9 = objectanalyticsHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "moc is nil", buf, 2u);
      }

      unsignedIntegerValue = 0;
      goto LABEL_18;
    }

    v9 = [MEMORY[0x277CBE380] batchUpdateRequestWithEntityName:self->entityName];
    [v9 setPropertiesToUpdate:propertiesCopy];
    [v9 setPredicate:matchingCopy];
    [v9 setResultType:2];
    v21 = 0;
    v10 = [mainObjectContext executeRequest:v9 error:&v21];
    v11 = v21;
    if (v11)
    {
      result = objectanalyticsHandle();
      if (os_log_type_enabled(result, OS_LOG_TYPE_ERROR))
      {
        v13 = [v11 description];
        uTF8String = [v13 UTF8String];
        *buf = 136315138;
        v23 = uTF8String;
        _os_log_impl(&dword_241804000, result, OS_LOG_TYPE_ERROR, "batch update return error: %s", buf, 0xCu);
      }
    }

    else
    {
      result = [v10 result];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        result2 = [v10 result];
        v17 = [result2 count];

        if (v17 != 1)
        {
          unsignedIntegerValue = 0;
          goto LABEL_17;
        }

        result = [v10 result];
        v18 = [result objectAtIndex:0];
        unsignedIntegerValue = [v18 unsignedIntegerValue];

LABEL_16:
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }
    }

    unsignedIntegerValue = 0;
    goto LABEL_16;
  }

  mainObjectContext = objectanalyticsHandle();
  if (os_log_type_enabled(mainObjectContext, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, mainObjectContext, OS_LOG_TYPE_ERROR, "entityName is nil", buf, 2u);
  }

  unsignedIntegerValue = 0;
LABEL_19:

  v19 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue;
}

- (id)_fetch:(id)_fetch sortDesc:(id)desc limit:(unint64_t)limit
{
  v24[1] = *MEMORY[0x277D85DE8];
  _fetchCopy = _fetch;
  descCopy = desc;
  mainObjectContext = [(AnalyticsWorkspace *)self->wspace mainObjectContext];
  if (!mainObjectContext)
  {
    v12 = 0;
    goto LABEL_17;
  }

  if (!descCopy)
  {
    descCopy = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"timeStamp" ascending:1];
  }

  if (self->managedCache)
  {
    v11 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277CBE408] entityForName:self->entityName inManagedObjectContext:mainObjectContext];
    v14 = objc_alloc_init(MEMORY[0x277CBE428]);
    [v14 setEntity:v13];
    if (_fetchCopy)
    {
      [v14 setPredicate:_fetchCopy];
    }

    else
    {
      [v14 setReturnsObjectsAsFaults:0];
    }

    v24[0] = descCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    [v14 setSortDescriptors:v15];

    if (limit)
    {
      [v14 setFetchLimit:limit];
    }

    v21 = 0;
    v12 = [mainObjectContext executeFetchRequest:v14 error:&v21];
    v11 = v21;

    if (v12)
    {
      goto LABEL_16;
    }
  }

  v16 = objectanalyticsHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = [v11 description];
    uTF8String = [v17 UTF8String];
    *buf = 136315138;
    v23 = uTF8String;
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_ERROR, "fetch failed, err %s", buf, 0xCu);
  }

  v12 = 0;
LABEL_16:

LABEL_17:
  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

@end