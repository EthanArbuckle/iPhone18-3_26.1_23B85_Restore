@interface EKPersistentObject
+ (BOOL)_shouldRetainPropertyForKey:(id)key;
+ (Class)alternateUniverseClass;
+ (Class)meltedClass;
+ (id)_relationForKey:(id)key;
+ (id)allObjectsWithChangesRelatedToObjects:(id)objects;
+ (id)propertiesToUnloadOnCommit;
+ (void)_takeDefaultValuesForObjects:(id)objects inEventStore:(id)store;
+ (void)alternateUniverseClass;
- (BOOL)_areDefaultPropertiesLoaded;
- (BOOL)_isNew;
- (BOOL)_isPendingDelete;
- (BOOL)_isPendingInsert;
- (BOOL)_isPendingUpdate;
- (BOOL)_loadChildIdentifiersForKey:(id)key values:(id *)values;
- (BOOL)_loadRelationForKey:(id)key value:(id *)value;
- (BOOL)existsInStore;
- (BOOL)isDirty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPropertyDirty:(id)dirty;
- (BOOL)isPropertyLoaded:(id)loaded;
- (BOOL)isPropertyUnavailable:(id)unavailable;
- (BOOL)primitiveBoolValueForKey:(id)key;
- (BOOL)refresh;
- (CADGenerationStampedObjectID)CADObjectID;
- (Class)frozenClass;
- (EKEventStore)eventStore;
- (EKObjectID)objectID;
- (EKPersistentObject)init;
- (NSString)uniqueIdentifier;
- (double)primitiveDoubleValueForKey:(id)key;
- (id)_loadStringValueForKey:(id)key;
- (id)_loadedPropertyForKey:(id)key;
- (id)_primitiveValueForKey:(id)key loader:(id)loader;
- (id)_propertyForKey:(id)key;
- (id)coCommitObjects;
- (id)dirtyPropertiesAndValues;
- (id)dump;
- (id)frozenObjectInStore:(id)store;
- (id)loadedOrUpdatedPropertyValue:(id)value wasAvailable:(BOOL *)available;
- (id)loadedPropertyForKey:(id)key;
- (id)meltedObjectInStore:(id)store;
- (id)ownedObjects;
- (id)primitiveDataValueForKey:(id)key;
- (id)primitiveDateValueForKey:(id)key;
- (id)primitiveNumberValueForKey:(id)key;
- (id)primitiveRelationValueForKey:(id)key;
- (id)primitiveSecurityScopedURLWrapperValueForKey:(id)key;
- (id)primitiveStringValueForKey:(id)key;
- (id)primitiveURLWrapperValueForKey:(id)key;
- (id)updatedPropertiesWithOnlyPersistentObjects;
- (int)databaseRestoreGeneration;
- (int)entityType;
- (int)primitiveIntValueForKey:(id)key;
- (void)_addObjectCore:(id)core toValues:(id)values relation:(id)relation;
- (void)_createLoadedPropertiesIfNeeded;
- (void)_createUpdatedPropertiesIfNeeded;
- (void)_loadDefaultPropertiesIfNeeded;
- (void)_loadPropertiesIfNeeded:(id)needed;
- (void)_primitiveSetValue:(id)value forKey:(id)key;
- (void)_releaseLoadedProperties;
- (void)_removeObjectCore:(id)core fromValues:(id)values relation:(id)relation;
- (void)_setDefaultPropertiesLoaded:(BOOL)loaded;
- (void)_setEventStore:(id)store;
- (void)_setObjectID:(id)d inDatabaseRestoreGeneration:(int)generation;
- (void)_setPendingDelete:(BOOL)delete;
- (void)_setPendingInsert:(BOOL)insert;
- (void)_setPendingUpdate:(BOOL)update;
- (void)_setProperty:(id)property forKey:(id)key forRelation:(id)relation isUpdatedProperty:(BOOL)updatedProperty;
- (void)_takeValues:(id)values forKeys:(id)keys relatedObjectValues:(id)objectValues;
- (void)_takeValues:(id)values relatedObjectValues:(id)objectValues;
- (void)_takeValuesForDefaultPropertyKeys:(id)keys values:(id)values relatedObjectValues:(id)objectValues;
- (void)addCoCommitObject:(id)object;
- (void)changed;
- (void)dealloc;
- (void)didCommit;
- (void)internalAddCoCommitObject:(id)object;
- (void)internalRemoveCoCommitObject:(id)object;
- (void)loadPropertiesIfNeeded:(id)needed;
- (void)primitiveAddRelatedObject:(id)object forKey:(id)key;
- (void)primitiveRemoveRelatedObject:(id)object forKey:(id)key;
- (void)primitiveSetDataValue:(id)value forKey:(id)key;
- (void)primitiveSetDateValue:(id)value forKey:(id)key;
- (void)primitiveSetDoubleValue:(double)value forKey:(id)key;
- (void)primitiveSetNumberValue:(id)value forKey:(id)key;
- (void)primitiveSetRelationValue:(id)value forKey:(id)key;
- (void)primitiveSetSecurityScopedURLWrapperValue:(id)value forKey:(id)key;
- (void)primitiveSetStringValue:(id)value forKey:(id)key;
- (void)primitiveSetURLWrapperValue:(id)value forKey:(id)key;
- (void)removeCoCommitObject:(id)object;
- (void)reset:(id)reset;
- (void)rollback;
- (void)takeDefaultValues:(id)values;
- (void)takeValues:(id)values forKeys:(id)keys;
- (void)takeValuesForDefaultPropertyKeys:(id)keys values:(id)values;
- (void)unloadPropertyForKey:(id)key;
@end

@implementation EKPersistentObject

- (BOOL)_isNew
{
  pthread_mutex_lock(&self->_lock);
  objectID = self->_objectID;
  if (objectID)
  {
    isTemporary = [(EKObjectID *)objectID isTemporary];
  }

  else
  {
    isTemporary = 1;
  }

  pthread_mutex_unlock(&self->_lock);
  return isTemporary;
}

- (void)_loadDefaultPropertiesIfNeeded
{
  defaultPropertiesToLoad = [objc_opt_class() defaultPropertiesToLoad];
  if ([defaultPropertiesToLoad count] && !-[EKPersistentObject _areDefaultPropertiesLoaded](self, "_areDefaultPropertiesLoaded"))
  {
    [(EKPersistentObject *)self _loadPropertiesIfNeeded:defaultPropertiesToLoad];
  }
}

- (BOOL)_areDefaultPropertiesLoaded
{
  pthread_mutex_lock(&self->_lock);
  v3 = (self->_flags >> 3) & 1;
  pthread_mutex_unlock(&self->_lock);
  return v3;
}

- (EKEventStore)eventStore
{
  pthread_mutex_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);
  pthread_mutex_unlock(&self->_lock);

  return WeakRetained;
}

- (CADGenerationStampedObjectID)CADObjectID
{
  pthread_mutex_lock(&self->_lock);
  _CADObjectID = [(EKPersistentObject *)self _CADObjectID];
  pthread_mutex_unlock(&self->_lock);

  return _CADObjectID;
}

- (EKPersistentObject)init
{
  v9 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = EKPersistentObject;
  v2 = [(EKPersistentObject *)&v7 init];
  if (v2)
  {
    v8.__sig = 0;
    *v8.__opaque = 0;
    pthread_mutexattr_init(&v8);
    pthread_mutexattr_settype(&v8, 2);
    pthread_mutex_init(&v2->_lock, &v8);
    v3 = [EKObjectID temporaryObjectIDWithEntityType:[(EKPersistentObject *)v2 entityType]];
    objectID = v2->_objectID;
    v2->_objectID = v3;

    v2->_databaseRestoreGeneration = -1;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_createLoadedPropertiesIfNeeded
{
  if (!self->_loadedProperties)
  {
    v4 = objc_opt_new();
    loadedProperties = self->_loadedProperties;
    self->_loadedProperties = v4;

    MEMORY[0x1EEE66BB8]();
  }
}

- (EKObjectID)objectID
{
  pthread_mutex_lock(&self->_lock);
  v3 = self->_objectID;
  pthread_mutex_unlock(&self->_lock);

  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = EKPersistentObject;
  [(EKPersistentObject *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_7;
  }

  if (self == equalCopy)
  {
    v8 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objectID = [(EKPersistentObject *)v5 objectID];
    if (objectID)
    {
      pthread_mutex_lock(&self->_lock);
      v7 = self->_objectID;
      pthread_mutex_unlock(&self->_lock);
      if (v7)
      {
        v8 = [objectID isEqual:v7];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

+ (Class)alternateUniverseClass
{
  v4 = +[EKReminderStore log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[(EKPersistentObject *)self];
  }

  [self doesNotRecognizeSelector:a2];
  v5 = objc_opt_class();

  return v5;
}

- (BOOL)isPropertyUnavailable:(id)unavailable
{
  v5 = 0;
  v3 = [(EKPersistentObject *)self loadedOrUpdatedPropertyValue:unavailable wasAvailable:&v5];
  return (v5 & 1) == 0;
}

- (id)loadedOrUpdatedPropertyValue:(id)value wasAvailable:(BOOL *)available
{
  valueCopy = value;
  pthread_mutex_lock(&self->_lock);
  v7 = [(EKPersistentObject *)self _propertyForKey:valueCopy];

  pthread_mutex_unlock(&self->_lock);
  if (available)
  {
    *available = v7 != 0;
  }

  null = [MEMORY[0x1E695DFB0] null];

  if (v7 == null)
  {

    v7 = 0;
  }

  return v7;
}

- (NSString)uniqueIdentifier
{
  propertyKeyForUniqueIdentifier = [objc_opt_class() propertyKeyForUniqueIdentifier];
  if ([propertyKeyForUniqueIdentifier isEqualToString:@"uniqueIdentifier"])
  {
    objectID = [(EKPersistentObject *)self objectID];
    stringRepresentation = [objectID stringRepresentation];
  }

  else
  {
    stringRepresentation = [(EKPersistentObject *)self valueForKey:propertyKeyForUniqueIdentifier];
  }

  return stringRepresentation;
}

- (Class)frozenClass
{
  v2 = objc_opt_class();

  return [v2 frozenClass];
}

- (id)frozenObjectInStore:(id)store
{
  storeCopy = store;
  eventStore = [(EKPersistentObject *)self eventStore];
  v6 = eventStore;
  if (storeCopy && eventStore && eventStore != storeCopy)
  {
    eventStoreIdentifier = [eventStore eventStoreIdentifier];
    eventStoreIdentifier2 = [storeCopy eventStoreIdentifier];
    v9 = [eventStoreIdentifier isEqualToString:eventStoreIdentifier2];

    if ((v9 & 1) == 0)
    {
      [EKPersistentObject frozenObjectInStore:];
    }

    if ([(EKPersistentObject *)self isNew])
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [(EKPersistentObject *)self copy];
      }

      else
      {
        v10 = objc_alloc_init(objc_opt_class());
      }

      selfCopy = v10;
      [(EKPersistentObject *)v10 _setEventStore:storeCopy];
    }

    else
    {
      objectID = [(EKPersistentObject *)self objectID];
      selfCopy = [storeCopy registerFetchedObjectWithID:objectID withDefaultLoadedPropertyKeys:0 values:0];
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)meltedObjectInStore:(id)store
{
  storeCopy = store;
  v5 = [(EKPersistentObject *)self frozenObjectInStore:storeCopy];
  v6 = [storeCopy publicObjectWithPersistentObject:v5];

  return v6;
}

- (void)_setEventStore:(id)store
{
  obj = store;
  if (obj)
  {
    pthread_mutex_lock(&self->_lock);
    objc_storeWeak(&self->_eventStore, obj);
    pthread_mutex_unlock(&self->_lock);
  }

  else
  {
    objc_storeWeak(&self->_eventStore, 0);
  }
}

- (void)_setObjectID:(id)d inDatabaseRestoreGeneration:(int)generation
{
  dCopy = d;
  pthread_mutex_lock(&self->_lock);
  objectID = self->_objectID;
  if (objectID && ![(EKObjectID *)objectID isTemporary])
  {
    [EKPersistentObject _setObjectID:inDatabaseRestoreGeneration:];
  }

  if (self->_objectID != dCopy)
  {
    v7 = [(EKObjectID *)dCopy copy];
    v8 = self->_objectID;
    self->_objectID = v7;
  }

  self->_databaseRestoreGeneration = generation;
  pthread_mutex_unlock(&self->_lock);
}

- (int)databaseRestoreGeneration
{
  pthread_mutex_lock(&self->_lock);
  databaseRestoreGeneration = self->_databaseRestoreGeneration;
  pthread_mutex_unlock(&self->_lock);
  return databaseRestoreGeneration;
}

- (BOOL)existsInStore
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  pthread_mutex_lock(&self->_lock);
  _CADObjectID = [(EKPersistentObject *)self _CADObjectID];
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);
  pthread_mutex_unlock(&self->_lock);
  if (WeakRetained && _CADObjectID && ([_CADObjectID isTemporary] & 1) == 0)
  {
    connection = [WeakRetained connection];
    cADOperationProxySync = [connection CADOperationProxySync];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__EKPersistentObject_existsInStore__block_invoke;
    v9[3] = &unk_1E77FED00;
    v10 = _CADObjectID;
    v11 = &v12;
    [cADOperationProxySync CADObjectExists:v10 reply:v9];
  }

  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __35__EKPersistentObject_existsInStore__block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    NSLog(&cfstr_ErrorCheckingW_0.isa, v3, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }
}

- (BOOL)isDirty
{
  pthread_mutex_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_updatedProperties count]!= 0;
  pthread_mutex_unlock(&self->_lock);
  return v3;
}

- (void)changed
{
  pthread_mutex_lock(&self->_lock);
  objectID = self->_objectID;
  if (objectID && ![(EKObjectID *)objectID isTemporary]&& ![(EKPersistentObject *)self _isPendingUpdate]&& ![(EKPersistentObject *)self _isPendingInsert]&& ![(EKPersistentObject *)self _isPendingDelete])
  {
    WeakRetained = objc_loadWeakRetained(&self->_eventStore);
    [WeakRetained _trackModifiedObject:self];
  }

  pthread_mutex_unlock(&self->_lock);
}

- (BOOL)refresh
{
  v20 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_lock);
  _loadedPropertyKeys = [(EKPersistentObject *)self _loadedPropertyKeys];
  propertyKeyForUniqueIdentifier = [objc_opt_class() propertyKeyForUniqueIdentifier];
  v5 = [(NSMutableDictionary *)self->_loadedProperties objectForKeyedSubscript:propertyKeyForUniqueIdentifier];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = _loadedPropertyKeys;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_updatedProperties objectForKey:v11, v15];

        if (!v12)
        {
          [(EKPersistentObject *)self unloadPropertyForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (v5)
  {
    [(NSMutableDictionary *)self->_loadedProperties setObject:v5 forKeyedSubscript:propertyKeyForUniqueIdentifier];
  }

  pthread_mutex_unlock(&self->_lock);

  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)isPropertyDirty:(id)dirty
{
  dirtyCopy = dirty;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_updatedProperties objectForKey:dirtyCopy];

  pthread_mutex_unlock(&self->_lock);
  return v5 != 0;
}

- (BOOL)isPropertyLoaded:(id)loaded
{
  loadedCopy = loaded;
  pthread_mutex_lock(&self->_lock);
  v5 = [(EKPersistentObject *)self _loadedPropertyForKey:loadedCopy];

  pthread_mutex_unlock(&self->_lock);
  return v5 != 0;
}

- (id)dirtyPropertiesAndValues
{
  v26 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_updatedProperties count];
  if (!v3)
  {
    goto LABEL_20;
  }

  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [(NSMutableDictionary *)self->_updatedProperties allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [(EKPersistentObject *)self _propertyForKey:v9];
        if (v10)
        {
          v11 = [objc_opt_class() _relationForKey:v9];
          v12 = v11;
          if (v11)
          {
            if ([v11 toMany])
            {
LABEL_13:

              goto LABEL_14;
            }

            null = [MEMORY[0x1E695DFB0] null];

            if (v10 != null)
            {
              cADObjectID = [v10 CADObjectID];
              [v3 setObject:cADObjectID forKey:v9];

              goto LABEL_13;
            }
          }

          [v3 setObject:v10 forKey:v9];
          goto LABEL_13;
        }

LABEL_14:
      }

      v6 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  if ([v3 count] && (-[EKPersistentObject objectID](self, "objectID"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = v15;
    WeakRetained = objc_loadWeakRetained(&self->_eventStore);

    pthread_mutex_unlock(&self->_lock);
    if (WeakRetained)
    {
      v3 = v3;
      v18 = v3;
      goto LABEL_22;
    }
  }

  else
  {
LABEL_20:
    pthread_mutex_unlock(&self->_lock);
  }

  v18 = 0;
LABEL_22:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)propertiesToUnloadOnCommit
{
  if (propertiesToUnloadOnCommit_onceToken_1 != -1)
  {
    +[EKPersistentObject propertiesToUnloadOnCommit];
  }

  v3 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_1;

  return v3;
}

void __48__EKPersistentObject_propertiesToUnloadOnCommit__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992B20];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_1;
  propertiesToUnloadOnCommit_propertiesToUnloadOnCommit_1 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (void)didCommit
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->_lock);
  coCommitObjects = self->_coCommitObjects;
  self->_coCommitObjects = 0;

  [(NSMutableDictionary *)self->_loadedProperties addEntriesFromDictionary:self->_updatedProperties];
  updatedProperties = self->_updatedProperties;
  self->_updatedProperties = 0;

  pthread_mutex_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  propertiesToUnloadOnCommit = [objc_opt_class() propertiesToUnloadOnCommit];
  v6 = [propertiesToUnloadOnCommit countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(propertiesToUnloadOnCommit);
        }

        [(EKPersistentObject *)self unloadPropertyForKey:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [propertiesToUnloadOnCommit countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)reset:(id)reset
{
  v25 = *MEMORY[0x1E69E9840];
  resetCopy = reset;
  pthread_mutex_lock(&self->_lock);
  if ([resetCopy containsObject:self->_objectID])
  {
    pthread_mutex_unlock(&self->_lock);
  }

  else
  {
    [(EKPersistentObject *)self _releaseLoadedProperties];
    updatedProperties = self->_updatedProperties;
    propertyKeyForUniqueIdentifier = [objc_opt_class() propertyKeyForUniqueIdentifier];
    v7 = [(NSMutableDictionary *)updatedProperties objectForKeyedSubscript:propertyKeyForUniqueIdentifier];

    if (v7)
    {
      uniqueIdentifier = [(EKPersistentObject *)self uniqueIdentifier];
      [(NSMutableDictionary *)self->_updatedProperties removeAllObjects];
      if (uniqueIdentifier)
      {
        propertyKeyForUniqueIdentifier2 = [objc_opt_class() propertyKeyForUniqueIdentifier];
        [(EKPersistentObject *)self setValue:uniqueIdentifier forKey:propertyKeyForUniqueIdentifier2];
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_updatedProperties removeAllObjects];
    }

    [(EKPersistentObject *)self _setDefaultPropertiesLoaded:0];
    v10 = self->_coCommitObjects;
    v11 = [(NSHashTable *)v10 count];
    if (v11)
    {
      if (!resetCopy)
      {
        resetCopy = [MEMORY[0x1E695DFA8] setWithCapacity:v11 + 1];
      }

      [resetCopy addObject:self->_objectID];
      coCommitObjects = self->_coCommitObjects;
      self->_coCommitObjects = 0;
    }

    [(EKPersistentObject *)self _setPendingUpdate:0];
    WeakRetained = objc_loadWeakRetained(&self->_eventStore);
    pthread_mutex_unlock(&self->_lock);
    [WeakRetained _objectDidReset:self];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v10;
    v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * v18++) reset:{resetCopy, v20}];
        }

        while (v16 != v18);
        v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)rollback
{
  pthread_mutex_lock(&self->_lock);
  [(NSHashTable *)self->_coCommitObjects removeAllObjects];
  [(NSMutableDictionary *)self->_updatedProperties removeAllObjects];
  [(EKPersistentObject *)self _setPendingUpdate:0];

  pthread_mutex_unlock(&self->_lock);
}

- (void)_setPendingInsert:(BOOL)insert
{
  insertCopy = insert;
  pthread_mutex_lock(&self->_lock);
  self->_flags = self->_flags & 0xFFFFFFFE | insertCopy;

  pthread_mutex_unlock(&self->_lock);
}

- (BOOL)_isPendingInsert
{
  pthread_mutex_lock(&self->_lock);
  flags = self->_flags;
  pthread_mutex_unlock(&self->_lock);
  return flags & 1;
}

- (void)_setPendingUpdate:(BOOL)update
{
  updateCopy = update;
  pthread_mutex_lock(&self->_lock);
  if (updateCopy)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFD | v5;

  pthread_mutex_unlock(&self->_lock);
}

- (BOOL)_isPendingUpdate
{
  pthread_mutex_lock(&self->_lock);
  v3 = (self->_flags >> 1) & 1;
  pthread_mutex_unlock(&self->_lock);
  return v3;
}

- (void)_setPendingDelete:(BOOL)delete
{
  deleteCopy = delete;
  pthread_mutex_lock(&self->_lock);
  if (deleteCopy)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFB | v5;

  pthread_mutex_unlock(&self->_lock);
}

- (BOOL)_isPendingDelete
{
  pthread_mutex_lock(&self->_lock);
  v3 = (self->_flags >> 2) & 1;
  pthread_mutex_unlock(&self->_lock);
  return v3;
}

- (void)_setDefaultPropertiesLoaded:(BOOL)loaded
{
  loadedCopy = loaded;
  pthread_mutex_lock(&self->_lock);
  if (loadedCopy)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFF7 | v5;

  pthread_mutex_unlock(&self->_lock);
}

+ (id)_relationForKey:(id)key
{
  keyCopy = key;
  relations = [self relations];
  v6 = [relations objectForKey:keyCopy];

  return v6;
}

+ (BOOL)_shouldRetainPropertyForKey:(id)key
{
  v3 = [self _relationForKey:key];
  v4 = v3;
  if (v3)
  {
    ownsRelatedObject = [v3 ownsRelatedObject];
  }

  else
  {
    ownsRelatedObject = 1;
  }

  return ownsRelatedObject;
}

- (id)coCommitObjects
{
  pthread_mutex_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_coCommitObjects allObjects];
  pthread_mutex_unlock(&self->_lock);

  return allObjects;
}

- (void)addCoCommitObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    [(EKPersistentObject *)self internalAddCoCommitObject:objectCopy];
    [objectCopy internalAddCoCommitObject:self];
  }
}

- (void)internalAddCoCommitObject:(id)object
{
  objectCopy = object;
  pthread_mutex_lock(&self->_lock);
  coCommitObjects = self->_coCommitObjects;
  if (!coCommitObjects)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:1];
    v6 = self->_coCommitObjects;
    self->_coCommitObjects = v5;

    coCommitObjects = self->_coCommitObjects;
  }

  [(NSHashTable *)coCommitObjects addObject:objectCopy];
  pthread_mutex_unlock(&self->_lock);
}

- (void)removeCoCommitObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    [(EKPersistentObject *)self internalRemoveCoCommitObject:objectCopy];
    [objectCopy internalRemoveCoCommitObject:self];
  }
}

- (void)internalRemoveCoCommitObject:(id)object
{
  objectCopy = object;
  pthread_mutex_lock(&self->_lock);
  [(NSHashTable *)self->_coCommitObjects removeObject:objectCopy];

  pthread_mutex_unlock(&self->_lock);
}

- (id)loadedPropertyForKey:(id)key
{
  v30[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _loadDefaultPropertiesIfNeeded];
  v5 = [(EKPersistentObject *)self _loadedPropertyForKey:keyCopy];
  if (!v5)
  {
    _CADObjectID = [(EKPersistentObject *)self _CADObjectID];
    v7 = _CADObjectID;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__16;
    v26 = __Block_byref_object_dispose__16;
    v27 = 0;
    if (_CADObjectID)
    {
      if (([_CADObjectID isTemporary] & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_eventStore);
        v9 = WeakRetained == 0;

        if (!v9)
        {
          v10 = objc_autoreleasePoolPush();
          v11 = objc_loadWeakRetained(&self->_eventStore);
          connection = [v11 connection];
          cADOperationProxySync = [connection CADOperationProxySync];
          v30[0] = keyCopy;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __43__EKPersistentObject_loadedPropertyForKey___block_invoke;
          v19[3] = &unk_1E77FED28;
          v20 = v7;
          v21 = &v22;
          [cADOperationProxySync CADObject:v20 getPropertiesWithNames:v14 reply:v19];

          objc_autoreleasePoolPop(v10);
        }
      }
    }

    if (v23[5])
    {
      v29 = v23[5];
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      v28 = keyCopy;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      [(EKPersistentObject *)self _takeValues:v15 forKeys:v16 relatedObjectValues:0];

      v5 = [(EKPersistentObject *)self _loadedPropertyForKey:keyCopy];
    }

    else
    {
      v5 = 0;
    }

    _Block_object_dispose(&v22, 8);
  }

  pthread_mutex_unlock(&self->_lock);

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __43__EKPersistentObject_loadedPropertyForKey___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v9 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    NSLog(&cfstr_ErrorLoadingDe.isa, v4, v9);
  }

  else
  {
    v5 = [a3 firstObject];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return MEMORY[0x1EEE66BB8]();
}

- (id)_loadedPropertyForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_loadedProperties objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [v5 value];
    if (!value)
    {
      [(NSMutableDictionary *)self->_loadedProperties removeObjectForKey:keyCopy];
    }

    v5 = value;
  }

  return v5;
}

- (id)_propertyForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_updatedProperties objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [v5 value];
    if (!value)
    {
      [(NSMutableDictionary *)self->_updatedProperties removeObjectForKey:keyCopy];
    }

    v5 = value;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(EKPersistentObject *)self _loadedPropertyForKey:keyCopy];
  }

  v8 = v7;

  return v8;
}

- (void)_createUpdatedPropertiesIfNeeded
{
  if (!self->_updatedProperties)
  {
    v4 = objc_opt_new();
    updatedProperties = self->_updatedProperties;
    self->_updatedProperties = v4;

    MEMORY[0x1EEE66BB8]();
  }
}

- (id)updatedPropertiesWithOnlyPersistentObjects
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_updatedProperties;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_updatedProperties objectForKey:v9, v14];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          value = [v10 value];

          v10 = value;
        }

        if (v10)
        {
          [dictionary setValue:v10 forKey:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)_setProperty:(id)property forKey:(id)key forRelation:(id)relation isUpdatedProperty:(BOOL)updatedProperty
{
  updatedPropertyCopy = updatedProperty;
  propertyCopy = property;
  keyCopy = key;
  relationCopy = relation;
  null = propertyCopy;
  if (propertyCopy)
  {
    if (relationCopy)
    {
      if ([relationCopy ownsRelatedObject])
      {
        null = propertyCopy;
      }

      else
      {
        v13 = [[EKWeakReference alloc] initWithValue:propertyCopy];

        null = v13;
      }
    }
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15 = null;
  if (updatedPropertyCopy)
  {
    [(EKPersistentObject *)self _createUpdatedPropertiesIfNeeded];
    [(NSMutableDictionary *)self->_updatedProperties setObject:v15 forKey:keyCopy];
    [(EKPersistentObject *)self changed];
  }

  else
  {
    [(EKPersistentObject *)self _createLoadedPropertiesIfNeeded];
    [(NSMutableDictionary *)self->_loadedProperties setObject:v15 forKey:keyCopy];
  }
}

- (void)_releaseLoadedProperties
{
  propertyKeyForUniqueIdentifier = [objc_opt_class() propertyKeyForUniqueIdentifier];
  v3 = [(NSMutableDictionary *)self->_loadedProperties objectForKeyedSubscript:?];
  loadedProperties = self->_loadedProperties;
  if (v3)
  {
    [(NSMutableDictionary *)loadedProperties removeAllObjects];
    [(NSMutableDictionary *)self->_loadedProperties setObject:v3 forKeyedSubscript:propertyKeyForUniqueIdentifier];
  }

  else
  {
    self->_loadedProperties = 0;
  }
}

- (void)unloadPropertyForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_updatedProperties removeObjectForKey:keyCopy];
  v4 = [(EKPersistentObject *)self _loadedPropertyForKey:keyCopy];
  if (v4)
  {
    [(NSMutableDictionary *)self->_loadedProperties removeObjectForKey:keyCopy];
    defaultPropertiesToLoad = [objc_opt_class() defaultPropertiesToLoad];
    v6 = [defaultPropertiesToLoad containsObject:keyCopy];

    if (v6)
    {
      [(EKPersistentObject *)self _setDefaultPropertiesLoaded:0];
    }
  }

  pthread_mutex_unlock(&self->_lock);
}

- (id)primitiveRelationValueForKey:(id)key
{
  v36 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _loadDefaultPropertiesIfNeeded];
  v5 = [(EKPersistentObject *)self _propertyForKey:keyCopy];
  null = [MEMORY[0x1E695DFB0] null];

  if (v5 == null)
  {

    v5 = 0;
  }

  else if (!v5)
  {
    v7 = [objc_opt_class() _relationForKey:keyCopy];
    v8 = v7;
    if (v7)
    {
      if ([v7 toMany])
      {
        v34 = 0;
        v9 = [(EKPersistentObject *)self _loadChildIdentifiersForKey:keyCopy values:&v34];
        v10 = v34;
        v11 = v10;
        v5 = 0;
        if (v9)
        {
          if (v10)
          {
            v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v10, "count")}];
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v28 = v11;
            v13 = v11;
            v14 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v31;
              do
              {
                for (i = 0; i != v15; ++i)
                {
                  if (*v31 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v30 + 1) + 8 * i);
                  eventStore = [(EKPersistentObject *)self eventStore];
                  v20 = [eventStore registerFetchedObjectWithID:v18];

                  if (v20)
                  {
                    [v12 addObject:v20];
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
              }

              while (v15);
            }

            v5 = [MEMORY[0x1E695DFA8] setWithSet:v12];
            [(EKPersistentObject *)self _setProperty:v5 forKey:keyCopy isUpdatedProperty:0];

            v11 = v28;
          }

          else
          {
            [(EKPersistentObject *)self _setProperty:0 forKey:keyCopy isUpdatedProperty:0];
            v5 = 0;
          }
        }
      }

      else
      {
        v29 = 0;
        v23 = [(EKPersistentObject *)self _loadRelationForKey:keyCopy value:&v29];
        v24 = v29;
        v11 = v24;
        v5 = 0;
        if (v23 && v24)
        {
          WeakRetained = objc_loadWeakRetained(&self->_eventStore);
          v5 = [WeakRetained registerFetchedObjectWithID:v11];
        }

        [(EKPersistentObject *)self _setProperty:v5 forKey:keyCopy isUpdatedProperty:0];
      }
    }

    else
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      NSLog(&cfstr_IsNotARelation.isa, keyCopy, v22);

      v5 = 0;
    }
  }

  pthread_mutex_unlock(&self->_lock);

  v26 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_addObjectCore:(id)core toValues:(id)values relation:(id)relation
{
  v27 = *MEMORY[0x1E69E9840];
  coreCopy = core;
  valuesCopy = values;
  relationCopy = relation;
  eventStore = [coreCopy eventStore];
  if (!eventStore)
  {
LABEL_4:
    WeakRetained = objc_loadWeakRetained(&self->_eventStore);
    [WeakRetained _insertObject:coreCopy];

    [(EKPersistentObject *)self addCoCommitObject:coreCopy];
    goto LABEL_6;
  }

  v12 = eventStore;
  if ([coreCopy isNew])
  {
    _isPendingInsert = [coreCopy _isPendingInsert];

    if (_isPendingInsert)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:
  [valuesCopy addObject:coreCopy];
  inversePropertyNames = [relationCopy inversePropertyNames];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [inversePropertyNames countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(inversePropertyNames);
        }

        v20 = *(*(&v22 + 1) + 8 * i);
        if ([relationCopy shouldSetInverseProperty:v20 onObject:coreCopy forObject:self])
        {
          [coreCopy _setProperty:self forKey:v20 isUpdatedProperty:1];
        }
      }

      v17 = [inversePropertyNames countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_removeObjectCore:(id)core fromValues:(id)values relation:(id)relation
{
  v24 = *MEMORY[0x1E69E9840];
  coreCopy = core;
  valuesCopy = values;
  relationCopy = relation;
  inversePropertyNames = [relationCopy inversePropertyNames];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [inversePropertyNames countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(inversePropertyNames);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ([relationCopy shouldSetInverseProperty:v16 onObject:coreCopy forObject:self])
        {
          [coreCopy _setProperty:0 forKey:v16 isUpdatedProperty:1];
        }
      }

      v13 = [inversePropertyNames countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [valuesCopy removeObject:coreCopy];
  if ([coreCopy isNew])
  {
    [(EKPersistentObject *)self removeCoCommitObject:coreCopy];
  }

  else
  {
    [(EKPersistentObject *)self addCoCommitObject:coreCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_eventStore);
  [WeakRetained _deleteObject:coreCopy];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)primitiveAddRelatedObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  v8 = [objc_opt_class() _relationForKey:keyCopy];
  v9 = v8;
  if (v8 && ([v8 toMany] & 1) != 0)
  {
    eventStore = [objectCopy eventStore];

    if (!eventStore)
    {
      WeakRetained = objc_loadWeakRetained(&self->_eventStore);
      [WeakRetained _insertObject:objectCopy];

      [(EKPersistentObject *)self addCoCommitObject:objectCopy];
    }

    currentHandler = [(EKPersistentObject *)self primitiveRelationValueForKey:keyCopy];
    if (!currentHandler)
    {
      currentHandler = [MEMORY[0x1E695DFA8] setWithCapacity:1];
      [(EKPersistentObject *)self _setProperty:currentHandler forKey:keyCopy isUpdatedProperty:1];
    }

    [(EKPersistentObject *)self _addObjectCore:objectCopy toValues:currentHandler relation:v9];
    pthread_mutex_unlock(&self->_lock);
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [currentHandler handleFailureInMethod:a2 object:self file:@"EKPersistentObject.m" lineNumber:1020 description:{@"Trying to add an object as a related object for property %@ on %@, but it's not a relation or not to-many", keyCopy, v14}];
  }
}

- (void)primitiveRemoveRelatedObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  v8 = [objc_opt_class() _relationForKey:keyCopy];
  v9 = v8;
  if (!v8 || ([v8 toMany] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"EKPersistentObject.m" lineNumber:1053 description:{@"Trying to remove an object as a related object for property %@ on %@, but it's not a relation or not to-many", keyCopy, v12}];
  }

  v13 = [(EKPersistentObject *)self _propertyForKey:keyCopy];
  if (v13)
  {
    [(EKPersistentObject *)self _removeObjectCore:objectCopy fromValues:v13 relation:v9];
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)primitiveSetRelationValue:(id)value forKey:(id)key
{
  v83 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  v9 = [objc_opt_class() _relationForKey:keyCopy];
  if (!v9)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInMethod:a2 object:self file:@"EKPersistentObject.m" lineNumber:1069 description:{@"Requested set of relation called %@ on a %@, but that doesn't exist.", keyCopy, v12}];
  }

  if ([v9 toMany])
  {
    if (valueCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [EKPersistentObject primitiveSetRelationValue:forKey:];
      }
    }

    v13 = [(EKPersistentObject *)self primitiveRelationValueForKey:keyCopy];
    v14 = valueCopy;
    v59 = v13;
    if (!v13)
    {
      v59 = [MEMORY[0x1E695DFA8] set];
    }

    v15 = keyCopy;
    v60 = v14;
    if ([v14 count])
    {
      v16 = [v14 mutableCopy];
      v17 = v59;
      if ([v59 count])
      {
        [v16 minusSet:v59];
      }
    }

    else
    {
      v16 = 0;
      v17 = v59;
    }

    if ([v17 count])
    {
      v31 = [v17 mutableCopy];
      if ([v14 count])
      {
        [v31 minusSet:v14];
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = [MEMORY[0x1E695DFA8] setWithSet:v59];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    obj = v16;
    v33 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
    keyCopy = v15;
    if (v33)
    {
      v34 = v33;
      v35 = *v76;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v76 != v35)
          {
            objc_enumerationMutation(obj);
          }

          [(EKPersistentObject *)self _addObjectCore:*(*(&v75 + 1) + 8 * i) toValues:v32 relation:v9];
        }

        v34 = [obj countByEnumeratingWithState:&v75 objects:v82 count:16];
      }

      while (v34);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v37 = v31;
    v38 = [v37 countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v72;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v72 != v40)
          {
            objc_enumerationMutation(v37);
          }

          [(EKPersistentObject *)self _removeObjectCore:*(*(&v71 + 1) + 8 * j) fromValues:v32 relation:v9];
        }

        v39 = [v37 countByEnumeratingWithState:&v71 objects:v81 count:16];
      }

      while (v39);
    }

    [(EKPersistentObject *)self _setProperty:v32 forKey:keyCopy isUpdatedProperty:1];
    goto LABEL_77;
  }

  if (valueCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [EKPersistentObject primitiveSetRelationValue:forKey:];
    }
  }

  v18 = valueCopy;
  v19 = [(EKPersistentObject *)self primitiveRelationValueForKey:keyCopy];
  v59 = v18;
  v60 = v19;
  if (v19 != v18)
  {
    v20 = v19;
    obj = [v9 inversePropertyNames];
    v57 = keyCopy;
    v58 = valueCopy;
    if (v20)
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v21 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
      v22 = v60;
      if (v21)
      {
        v23 = v21;
        v24 = *v68;
        do
        {
          for (k = 0; k != v23; ++k)
          {
            if (*v68 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v67 + 1) + 8 * k);
            if ([v9 shouldSetInverseProperty:v26 onObject:v22 forObject:self])
            {
              v27 = [objc_opt_class() _relationForKey:v26];
              if ([v27 toMany])
              {
                v28 = [v22 _propertyForKey:v26];
                if (v28)
                {
                  v29 = [MEMORY[0x1E695DFA8] setWithSet:v28];
                  [v29 removeObject:self];
                  v30 = [MEMORY[0x1E695DFA8] setWithSet:v29];
                  [v60 _setProperty:v30 forKey:v26 isUpdatedProperty:1];

                  v22 = v60;
                }
              }

              else
              {
                [v22 _setProperty:0 forKey:v26 isUpdatedProperty:1];
              }
            }
          }

          v23 = [obj countByEnumeratingWithState:&v67 objects:v80 count:16];
        }

        while (v23);
      }

      keyCopy = v57;
      valueCopy = v58;
      if ([v9 ownsRelatedObject])
      {
        if ([v60 _isPendingInsert])
        {
          [(EKPersistentObject *)self removeCoCommitObject:v60];
        }

        else
        {
          [(EKPersistentObject *)self addCoCommitObject:v60];
        }

        WeakRetained = objc_loadWeakRetained(&self->_eventStore);
        [WeakRetained _deleteObject:v60];
      }
    }

    if ([v9 ownsRelatedObject] && objc_msgSend(v59, "isNew") && (objc_msgSend(v59, "_isPendingInsert") & 1) == 0)
    {
      v43 = objc_loadWeakRetained(&self->_eventStore);
      [v43 _insertObject:v59];
    }

    [(EKPersistentObject *)self _setProperty:v59 forKey:keyCopy isUpdatedProperty:1];
    if (!valueCopy)
    {
      goto LABEL_78;
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v37 = obj;
    v44 = [v37 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v64;
      v47 = 0x1E695D000uLL;
      v48 = v59;
      obja = *v64;
      do
      {
        for (m = 0; m != v45; ++m)
        {
          if (*v64 != v46)
          {
            objc_enumerationMutation(v37);
          }

          v50 = *(*(&v63 + 1) + 8 * m);
          if ([v9 shouldSetInverseProperty:v50 onObject:v48 forObject:self])
          {
            v51 = [objc_opt_class() _relationForKey:v50];
            if ([v51 toMany])
            {
              v52 = [v48 _propertyForKey:v50];
              v53 = *(v47 + 4008);
              if (v52)
              {
                v54 = [v53 setWithSet:v52];
                [v54 addObject:self];
                v55 = [*(v47 + 4008) setWithSet:v54];

                v48 = v59;
              }

              else
              {
                v55 = [v53 setWithObject:self];
              }

              [v48 _setProperty:v55 forKey:v50 isUpdatedProperty:1];

              v46 = obja;
              v47 = 0x1E695D000;
            }

            else
            {
              [v48 _setProperty:self forKey:v50 isUpdatedProperty:1];
            }
          }
        }

        v45 = [v37 countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v45);
    }

    obj = v37;
    keyCopy = v57;
    valueCopy = v58;
LABEL_77:

LABEL_78:
  }

  pthread_mutex_unlock(&self->_lock);
  v56 = *MEMORY[0x1E69E9840];
}

- (id)_primitiveValueForKey:(id)key loader:(id)loader
{
  keyCopy = key;
  loaderCopy = loader;
  [(EKPersistentObject *)self _loadDefaultPropertiesIfNeeded];
  v8 = [(EKPersistentObject *)self _propertyForKey:keyCopy];
  null = [MEMORY[0x1E695DFB0] null];

  if (v8 == null)
  {

    v8 = 0;
  }

  else if (!v8)
  {
    v8 = loaderCopy[2](loaderCopy, keyCopy);
    [(EKPersistentObject *)self _setProperty:v8 forKey:keyCopy isUpdatedProperty:0];
  }

  return v8;
}

- (void)_primitiveSetValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  null = valueCopy;
  v8 = keyCopy;
  if (!valueCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10 = null;
  [(EKPersistentObject *)self _setProperty:null forKey:v8 isUpdatedProperty:1];
}

- (id)primitiveNumberValueForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  _CADObjectID = [(EKPersistentObject *)self _CADObjectID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__EKPersistentObject_primitiveNumberValueForKey___block_invoke;
  v11[3] = &unk_1E77FED78;
  v12 = _CADObjectID;
  selfCopy = self;
  v14 = keyCopy;
  v6 = keyCopy;
  v7 = _CADObjectID;
  v8 = [(EKPersistentObject *)self _primitiveValueForKey:v6 loader:v11];
  v9 = [v8 copy];

  pthread_mutex_unlock(&self->_lock);

  return v9;
}

id __49__EKPersistentObject_primitiveNumberValueForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__16;
  v19 = __Block_byref_object_dispose__16;
  v20 = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (([v4 isTemporary] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));

      if (WeakRetained)
      {
        v6 = objc_loadWeakRetained((*(a1 + 40) + 72));
        v7 = [v6 connection];
        v8 = [v7 CADOperationProxySync];
        v9 = *(a1 + 32);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __49__EKPersistentObject_primitiveNumberValueForKey___block_invoke_2;
        v12[3] = &unk_1E77FED50;
        v13 = *(a1 + 48);
        v14 = &v15;
        [v8 CADObject:v9 getNumberPropertyWithName:v3 reply:v12];
      }
    }
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __49__EKPersistentObject_primitiveNumberValueForKey___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __49__EKPersistentObject_primitiveNumberValueForKey___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (void)primitiveSetNumberValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _primitiveSetValue:valueCopy forKey:keyCopy];

  pthread_mutex_unlock(&self->_lock);
}

- (int)primitiveIntValueForKey:(id)key
{
  v3 = [(EKPersistentObject *)self primitiveNumberValueForKey:key];
  intValue = [v3 intValue];

  return intValue;
}

- (double)primitiveDoubleValueForKey:(id)key
{
  v3 = [(EKPersistentObject *)self primitiveNumberValueForKey:key];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)primitiveSetDoubleValue:(double)value forKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  [(EKPersistentObject *)self _primitiveSetValue:v7 forKey:keyCopy];

  pthread_mutex_unlock(&self->_lock);
}

- (BOOL)primitiveBoolValueForKey:(id)key
{
  v3 = [(EKPersistentObject *)self primitiveNumberValueForKey:key];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)primitiveDateValueForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  _CADObjectID = [(EKPersistentObject *)self _CADObjectID];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47__EKPersistentObject_primitiveDateValueForKey___block_invoke;
  v13 = &unk_1E77FEDC8;
  v14 = _CADObjectID;
  selfCopy = self;
  v6 = _CADObjectID;
  v7 = [(EKPersistentObject *)self _primitiveValueForKey:keyCopy loader:&v10];

  v8 = [v7 copy];
  pthread_mutex_unlock(&self->_lock);

  return v8;
}

id __47__EKPersistentObject_primitiveDateValueForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__16;
  v19 = __Block_byref_object_dispose__16;
  v20 = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (([v4 isTemporary] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));

      if (WeakRetained)
      {
        v6 = objc_loadWeakRetained((*(a1 + 40) + 72));
        v7 = [v6 connection];
        v8 = [v7 CADOperationProxySync];
        v9 = *(a1 + 32);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __47__EKPersistentObject_primitiveDateValueForKey___block_invoke_2;
        v12[3] = &unk_1E77FEDA0;
        v13 = v3;
        v14 = &v15;
        [v8 CADObject:v9 getDatePropertyWithName:v13 reply:v12];
      }
    }
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __47__EKPersistentObject_primitiveDateValueForKey___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __47__EKPersistentObject_primitiveDateValueForKey___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (void)primitiveSetDateValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _primitiveSetValue:valueCopy forKey:keyCopy];

  pthread_mutex_unlock(&self->_lock);
}

- (id)_loadStringValueForKey:(id)key
{
  keyCopy = key;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__16;
  v20 = __Block_byref_object_dispose__16;
  v21 = 0;
  _CADObjectID = [(EKPersistentObject *)self _CADObjectID];
  v6 = _CADObjectID;
  if (_CADObjectID)
  {
    if (([_CADObjectID isTemporary] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_eventStore);

      if (WeakRetained)
      {
        v8 = objc_loadWeakRetained(&self->_eventStore);
        connection = [v8 connection];
        cADOperationProxySync = [connection CADOperationProxySync];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __45__EKPersistentObject__loadStringValueForKey___block_invoke;
        v13[3] = &unk_1E77FEDF0;
        v14 = keyCopy;
        v15 = &v16;
        [cADOperationProxySync CADObject:v6 getStringPropertyWithName:v14 reply:v13];
      }
    }
  }

  v11 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v11;
}

void __45__EKPersistentObject__loadStringValueForKey___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __45__EKPersistentObject__loadStringValueForKey___block_invoke_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (id)primitiveStringValueForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__EKPersistentObject_primitiveStringValueForKey___block_invoke;
  v8[3] = &unk_1E77FD048;
  v8[4] = self;
  v5 = [(EKPersistentObject *)self _primitiveValueForKey:keyCopy loader:v8];

  v6 = [v5 copy];
  pthread_mutex_unlock(&self->_lock);

  return v6;
}

- (void)primitiveSetStringValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _primitiveSetValue:valueCopy forKey:keyCopy];

  pthread_mutex_unlock(&self->_lock);
}

- (id)primitiveDataValueForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  _CADObjectID = [(EKPersistentObject *)self _CADObjectID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__EKPersistentObject_primitiveDataValueForKey___block_invoke;
  v11[3] = &unk_1E77FED78;
  v12 = _CADObjectID;
  selfCopy = self;
  v14 = keyCopy;
  v6 = keyCopy;
  v7 = _CADObjectID;
  v8 = [(EKPersistentObject *)self _primitiveValueForKey:v6 loader:v11];
  v9 = [v8 copy];

  pthread_mutex_unlock(&self->_lock);

  return v9;
}

id __47__EKPersistentObject_primitiveDataValueForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__16;
  v19 = __Block_byref_object_dispose__16;
  v20 = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (([v4 isTemporary] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));

      if (WeakRetained)
      {
        v6 = objc_loadWeakRetained((*(a1 + 40) + 72));
        v7 = [v6 connection];
        v8 = [v7 CADOperationProxySync];
        v9 = *(a1 + 32);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __47__EKPersistentObject_primitiveDataValueForKey___block_invoke_2;
        v12[3] = &unk_1E77FEE18;
        v13 = *(a1 + 48);
        v14 = &v15;
        [v8 CADObject:v9 getDataPropertyWithName:v3 reply:v12];
      }
    }
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __47__EKPersistentObject_primitiveDataValueForKey___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __47__EKPersistentObject_primitiveDataValueForKey___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (void)primitiveSetDataValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _primitiveSetValue:valueCopy forKey:keyCopy];

  pthread_mutex_unlock(&self->_lock);
}

- (id)primitiveSecurityScopedURLWrapperValueForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  _CADObjectID = [(EKPersistentObject *)self _CADObjectID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__EKPersistentObject_primitiveSecurityScopedURLWrapperValueForKey___block_invoke;
  v10[3] = &unk_1E77FED78;
  v11 = _CADObjectID;
  selfCopy = self;
  v13 = keyCopy;
  v6 = keyCopy;
  v7 = _CADObjectID;
  v8 = [(EKPersistentObject *)self _primitiveValueForKey:v6 loader:v10];
  pthread_mutex_unlock(&self->_lock);

  return v8;
}

id __67__EKPersistentObject_primitiveSecurityScopedURLWrapperValueForKey___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__16;
  v19 = __Block_byref_object_dispose__16;
  v20 = 0;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (([v4 isTemporary] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));

      if (WeakRetained)
      {
        v6 = objc_loadWeakRetained((*(a1 + 40) + 72));
        v7 = [v6 connection];
        v8 = [v7 CADOperationProxySync];
        v9 = *(a1 + 32);
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __67__EKPersistentObject_primitiveSecurityScopedURLWrapperValueForKey___block_invoke_2;
        v12[3] = &unk_1E77FEE40;
        v13 = *(a1 + 48);
        v14 = &v15;
        [v8 CADObject:v9 getSecurityScopedURLWrapperPropertyWithName:v3 reply:v12];
      }
    }
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __67__EKPersistentObject_primitiveSecurityScopedURLWrapperValueForKey___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __47__EKPersistentObject_primitiveDataValueForKey___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }
}

- (void)primitiveSetSecurityScopedURLWrapperValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _primitiveSetValue:valueCopy forKey:keyCopy];

  pthread_mutex_unlock(&self->_lock);
}

- (id)primitiveURLWrapperValueForKey:(id)key
{
  keyCopy = key;
  pthread_mutex_lock(&self->_lock);
  v5 = [(EKPersistentObject *)self _primitiveValueForKey:keyCopy loader:&__block_literal_global_91];

  pthread_mutex_unlock(&self->_lock);

  return v5;
}

- (void)primitiveSetURLWrapperValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _primitiveSetValue:valueCopy forKey:keyCopy];

  pthread_mutex_unlock(&self->_lock);
}

- (BOOL)_loadRelationForKey:(id)key value:(id *)value
{
  keyCopy = key;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__16;
  v25 = __Block_byref_object_dispose__16;
  v26 = 0;
  _CADObjectID = [(EKPersistentObject *)self _CADObjectID];
  v8 = _CADObjectID;
  if (_CADObjectID)
  {
    if (([_CADObjectID isTemporary] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_eventStore);

      if (WeakRetained)
      {
        v10 = objc_loadWeakRetained(&self->_eventStore);
        connection = [v10 connection];
        cADOperationProxySync = [connection CADOperationProxySync];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __48__EKPersistentObject__loadRelationForKey_value___block_invoke;
        v17[3] = &unk_1E77FEE88;
        v18 = keyCopy;
        v19 = &v21;
        v20 = &v27;
        [cADOperationProxySync CADObject:v8 getRelatedObjectWithRelationName:v18 reply:v17];
      }
    }
  }

  v13 = v28;
  if (*(v28 + 24) == 1 && v22[5])
  {
    v14 = [EKObjectID objectIDWithCADObjectID:?];
    v13 = v28;
  }

  else
  {
    v14 = 0;
  }

  *value = v14;
  v15 = *(v13 + 24);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v15;
}

void __48__EKPersistentObject__loadRelationForKey_value___block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __48__EKPersistentObject__loadRelationForKey_value___block_invoke_cold_1(a1);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)_loadChildIdentifiersForKey:(id)key values:(id *)values
{
  keyCopy = key;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__16;
  v23 = __Block_byref_object_dispose__16;
  v24 = 0;
  _CADObjectID = [(EKPersistentObject *)self _CADObjectID];
  v8 = _CADObjectID;
  if (_CADObjectID)
  {
    if (([_CADObjectID isTemporary] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_eventStore);

      if (WeakRetained)
      {
        v10 = objc_loadWeakRetained(&self->_eventStore);
        connection = [v10 connection];
        cADOperationProxySync = [connection CADOperationProxySync];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __57__EKPersistentObject__loadChildIdentifiersForKey_values___block_invoke;
        v15[3] = &unk_1E77FEEB0;
        v16 = keyCopy;
        v17 = &v19;
        v18 = &v25;
        [cADOperationProxySync CADObject:v8 getRelatedObjectsWithRelationName:v16 reply:v15];
      }
    }
  }

  *values = v20[5];
  v13 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  return v13;
}

void __57__EKPersistentObject__loadChildIdentifiersForKey_values___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __57__EKPersistentObject__loadChildIdentifiersForKey_values___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(*(a1 + 40) + 8) + 40);
          v15 = [EKObjectID objectIDWithCADObjectID:*(*(&v17 + 1) + 8 * v13), v17];
          [v14 addObject:v15];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (void)_takeDefaultValuesForObjects:(id)objects inEventStore:(id)store
{
  storeCopy = store;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__EKPersistentObject__takeDefaultValuesForObjects_inEventStore___block_invoke;
  v7[3] = &unk_1E77FEED8;
  v8 = storeCopy;
  v6 = storeCopy;
  [objects enumerateKeysAndObjectsUsingBlock:v7];
}

void __64__EKPersistentObject__takeDefaultValuesForObjects_inEventStore___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 registerFetchedObjectWithID:a2];
  [v6 takeDefaultValues:v5];
}

- (void)takeDefaultValues:(id)values
{
  valuesCopy = values;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _takeValues:valuesCopy relatedObjectValues:0];

  [(EKPersistentObject *)self _setDefaultPropertiesLoaded:1];

  pthread_mutex_unlock(&self->_lock);
}

- (void)takeValues:(id)values forKeys:(id)keys
{
  keysCopy = keys;
  valuesCopy = values;
  v10 = objc_opt_new();
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _takeValues:valuesCopy forKeys:keysCopy relatedObjectValues:v10];

  pthread_mutex_unlock(&self->_lock);
  v8 = objc_opt_class();
  eventStore = [(EKPersistentObject *)self eventStore];
  [v8 _takeDefaultValuesForObjects:v10 inEventStore:eventStore];
}

- (void)_takeValues:(id)values forKeys:(id)keys relatedObjectValues:(id)objectValues
{
  if (values)
  {
    v8 = MEMORY[0x1E695DF20];
    objectValuesCopy = objectValues;
    v10 = [v8 dictionaryWithObjects:values forKeys:keys];
    [(EKPersistentObject *)self _takeValues:v10 relatedObjectValues:objectValuesCopy];
  }
}

- (void)_takeValues:(id)values relatedObjectValues:(id)objectValues
{
  objectValuesCopy = objectValues;
  v7 = objectValuesCopy;
  if (values)
  {
    v8 = self->_loadedProperties != 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__EKPersistentObject__takeValues_relatedObjectValues___block_invoke;
    v9[3] = &unk_1E77FEF00;
    v9[4] = self;
    v10 = objectValuesCopy;
    v11 = v8;
    [values enumerateKeysAndObjectsUsingBlock:v9];
  }
}

void __54__EKPersistentObject__takeValues_relatedObjectValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = 0x1E695D000uLL;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = 0;
      goto LABEL_37;
    }

    v10 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = v6;
    v12 = [v8 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (!v12)
    {
      goto LABEL_35;
    }

    v13 = v12;
    v33 = v5;
    v34 = v10;
    v32 = v6;
    v14 = *v37;
    v15 = &EKLogHandle;
    v35 = *v37;
LABEL_11:
    v16 = 0;
    while (1)
    {
      if (*v37 != v14)
      {
        objc_enumerationMutation(v8);
      }

      v17 = *(*(&v36 + 1) + 8 * v16);
      v18 = *(v7 + 3872);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      v19 = EKObjectIDFromDictionary();
      if (!v19)
      {
        goto LABEL_22;
      }

      v20 = v15;
      v21 = v7;
      v22 = v8;
      v23 = a1;
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
      v25 = [WeakRetained registerFetchedObjectWithID:v19];

      if (!v25)
      {
        a1 = v23;
        v8 = v22;
        v7 = v21;
        v15 = v20;
        v14 = v35;
        goto LABEL_22;
      }

      [v34 addObject:v25];
      a1 = v23;
      if (*(v23 + 40))
      {
        v26 = CalGetValuesFromFetchedObjectDictionary();
        v8 = v22;
        if (v26)
        {
          [*(a1 + 40) setObject:v26 forKeyedSubscript:v19];
        }
      }

      else
      {
        v8 = v22;
      }

      v7 = v21;
      v15 = v20;
      v14 = v35;
LABEL_25:

      if (v13 == ++v16)
      {
        v28 = [v8 countByEnumeratingWithState:&v36 objects:v42 count:16];
        v13 = v28;
        if (!v28)
        {
          v5 = v33;
          v10 = v34;
          v6 = v32;
          goto LABEL_35;
        }

        goto LABEL_11;
      }
    }

    v19 = 0;
LABEL_22:
    v27 = *v15;
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v41 = v33;
      _os_log_error_impl(&dword_1A805E000, v27, OS_LOG_TYPE_ERROR, "Failed to take value for related object with key %@", buf, 0xCu);
    }

    v25 = 0;
    goto LABEL_25;
  }

  v8 = EKObjectIDFromDictionary();
  if (v8 && (v9 = objc_loadWeakRetained((*(a1 + 32) + 72)), [v9 registerFetchedObjectWithID:v8], v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
  {
    if (*(a1 + 40))
    {
      v11 = CalGetValuesFromFetchedObjectDictionary();
      if (v11)
      {
        [*(a1 + 40) setObject:v11 forKeyedSubscript:v8];
      }
    }
  }

  else
  {
    v29 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __54__EKPersistentObject__takeValues_relatedObjectValues___block_invoke_cold_1(v5, v29);
    }

    v10 = 0;
  }

LABEL_35:

  v30 = 1;
  v6 = v10;
LABEL_37:
  if (*(a1 + 48) != 1 || ([*(a1 + 32) isPropertyLoaded:v5] & 1) == 0)
  {
    [*(a1 + 32) _setProperty:v6 forKey:v5 isRelation:v30 isUpdatedProperty:0];
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)takeValuesForDefaultPropertyKeys:(id)keys values:(id)values
{
  valuesCopy = values;
  keysCopy = keys;
  v10 = objc_opt_new();
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _takeValuesForDefaultPropertyKeys:keysCopy values:valuesCopy relatedObjectValues:v10];

  pthread_mutex_unlock(&self->_lock);
  v8 = objc_opt_class();
  eventStore = [(EKPersistentObject *)self eventStore];
  [v8 _takeDefaultValuesForObjects:v10 inEventStore:eventStore];
}

- (void)_takeValuesForDefaultPropertyKeys:(id)keys values:(id)values relatedObjectValues:(id)objectValues
{
  [(EKPersistentObject *)self _takeValues:values forKeys:keys relatedObjectValues:objectValues];
  if (values)
  {

    [(EKPersistentObject *)self _setDefaultPropertiesLoaded:1];
  }
}

- (void)_loadPropertiesIfNeeded:(id)needed
{
  v39 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  if ([neededCopy count] && !-[EKPersistentObject isNew](self, "isNew"))
  {
    v5 = neededCopy;
    if ([(NSMutableDictionary *)self->_updatedProperties count]|| [(NSMutableDictionary *)self->_loadedProperties count])
    {
      v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v8)
      {
        v9 = *v35;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v35 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v34 + 1) + 8 * i);
            v12 = [(NSMutableDictionary *)self->_updatedProperties objectForKey:v11];
            if (v12)
            {
            }

            else
            {
              v13 = [(NSMutableDictionary *)self->_loadedProperties objectForKey:v11];
              v14 = v13 == 0;

              if (v14)
              {
                [v6 addObject:v11];
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v6 = v5;
    }

    if ([v6 count])
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x3032000000;
      v31 = __Block_byref_object_copy__16;
      v32 = __Block_byref_object_dispose__16;
      v33 = 0;
      _CADObjectID = [(EKPersistentObject *)self _CADObjectID];
      v16 = _CADObjectID;
      if (_CADObjectID)
      {
        if (([_CADObjectID isTemporary] & 1) == 0)
        {
          WeakRetained = objc_loadWeakRetained(&self->_eventStore);
          v18 = WeakRetained == 0;

          if (!v18)
          {
            v19 = objc_autoreleasePoolPush();
            v20 = objc_loadWeakRetained(&self->_eventStore);
            connection = [v20 connection];
            cADOperationProxySync = [connection CADOperationProxySync];
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __46__EKPersistentObject__loadPropertiesIfNeeded___block_invoke;
            v25[3] = &unk_1E77FED28;
            v26 = v16;
            v27 = &v28;
            [cADOperationProxySync CADObject:v26 getPropertiesWithNames:v6 reply:v25];

            objc_autoreleasePoolPop(v19);
          }
        }
      }

      v23 = v29[5];
      if (v23)
      {
        [(EKPersistentObject *)self _takeValuesForDefaultPropertyKeys:v6 values:v23 relatedObjectValues:0];
      }

      _Block_object_dispose(&v28, 8);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __46__EKPersistentObject__loadPropertiesIfNeeded___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696ABC0] errorWithCADResult:a2];
    NSLog(&cfstr_ErrorLoadingPr.isa, v6, v7);
  }

  else
  {
    v8 = *(*(a1 + 40) + 8);
    v9 = v5;
    v7 = *(v8 + 40);
    *(v8 + 40) = v9;
  }
}

- (void)loadPropertiesIfNeeded:(id)needed
{
  neededCopy = needed;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _loadPropertiesIfNeeded:neededCopy];

  pthread_mutex_unlock(&self->_lock);
}

+ (id)allObjectsWithChangesRelatedToObjects:(id)objects
{
  v34 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v22 = [MEMORY[0x1E695DFA8] set];
  v4 = [MEMORY[0x1E695DFA8] set];
  v21 = objectsCopy;
  allObjects = [objectsCopy allObjects];
  v6 = [allObjects mutableCopy];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__EKPersistentObject_allObjectsWithChangesRelatedToObjects___block_invoke;
  aBlock[3] = &unk_1E77FEF28;
  v7 = v4;
  v31 = v7;
  v8 = v6;
  v32 = v8;
  v9 = _Block_copy(aBlock);
  while ([v8 count])
  {
    lastObject = [v8 lastObject];
    [v8 removeLastObject];
    [v7 addObject:lastObject];
    if (([lastObject isDirty] & 1) != 0 || (objc_msgSend(lastObject, "_isPendingInsert") & 1) != 0 || (objc_msgSend(lastObject, "_isPendingDelete") & 1) != 0 || objc_msgSend(lastObject, "_isPendingUpdate"))
    {
      [v22 addObject:lastObject];
    }

    coCommitObjects = [lastObject coCommitObjects];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [coCommitObjects countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(coCommitObjects);
          }

          v9[2](v9, *(*(&v26 + 1) + 8 * i));
        }

        v13 = [coCommitObjects countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v13);
    }

    relations = [objc_opt_class() relations];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __60__EKPersistentObject_allObjectsWithChangesRelatedToObjects___block_invoke_2;
    v23[3] = &unk_1E77FEF50;
    v24 = lastObject;
    v25 = v9;
    v17 = lastObject;
    [relations enumerateKeysAndObjectsUsingBlock:v23];
  }

  v18 = [v22 copy];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

void __60__EKPersistentObject_allObjectsWithChangesRelatedToObjects___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __60__EKPersistentObject_allObjectsWithChangesRelatedToObjects___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  pthread_mutex_lock((*(a1 + 32) + 8));
  v7 = [*(a1 + 32) _propertyForKey:v5];
  pthread_mutex_unlock((*(a1 + 32) + 8));
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if ([v6 toMany])
      {
        v8 = v7;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            v12 = 0;
            do
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v15 + 1) + 8 * v12);
              (*(*(a1 + 40) + 16))();
              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v10);
        }
      }

      else
      {
        (*(*(a1 + 40) + 16))();
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)ownedObjects
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [MEMORY[0x1E695DF70] arrayWithObject:self];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__EKPersistentObject_ownedObjects__block_invoke;
  aBlock[3] = &unk_1E77FEF28;
  v5 = v4;
  v17 = v5;
  v6 = v3;
  v18 = v6;
  v7 = _Block_copy(aBlock);
  while ([v5 count])
  {
    lastObject = [v5 lastObject];
    [v5 removeLastObject];
    relations = [objc_opt_class() relations];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __34__EKPersistentObject_ownedObjects__block_invoke_2;
    v13[3] = &unk_1E77FEF50;
    v14 = lastObject;
    v15 = v7;
    v10 = lastObject;
    [relations enumerateKeysAndObjectsUsingBlock:v13];
  }

  v11 = [v6 copy];

  return v11;
}

void __34__EKPersistentObject_ownedObjects__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addObject:v4];
  [*(a1 + 40) addObject:v4];
}

void __34__EKPersistentObject_ownedObjects__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 ownsRelatedObject])
  {
    pthread_mutex_lock((*(a1 + 32) + 8));
    v7 = [*(a1 + 32) _propertyForKey:v5];
    pthread_mutex_unlock((*(a1 + 32) + 8));
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if ([v6 toMany])
        {
          v8 = v7;
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v16;
            do
            {
              v12 = 0;
              do
              {
                if (*v16 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v15 + 1) + 8 * v12);
                (*(*(a1 + 40) + 16))();
                ++v12;
              }

              while (v10 != v12);
              v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
            }

            while (v10);
          }
        }

        else
        {
          (*(*(a1 + 40) + 16))();
        }
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)dump
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:0];
  [v3 appendString:@"{\n"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  _loadedPropertyKeys = [(EKPersistentObject *)self _loadedPropertyKeys];
  v5 = [_loadedPropertyKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(_loadedPropertyKeys);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(EKPersistentObject *)self _propertyForKey:v9];
        v11 = [objc_opt_class() _relationForKey:v9];
        v12 = v11;
        if (v11)
        {
          [v3 appendFormat:@"    %@ = %@\n", v9, v11];
        }

        else
        {
          [v3 appendFormat:@"    %@ = %@\n", v9, v10];
        }
      }

      v6 = [_loadedPropertyKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"}"];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%p> {loaded = %@ updated = %@}", objc_opt_class(), self, v3, self->_updatedProperties];;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (Class)meltedClass
{
  OUTLINED_FUNCTION_0_6();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (int)entityType
{
  OUTLINED_FUNCTION_0_6();
  objc_opt_class();
  NSRequestConcreteImplementation();
  return -1;
}

+ (void)alternateUniverseClass
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromClass(self);
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "+alternateUniverseClass called on a class that does not implement it (%{public}@)", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)frozenObjectInStore:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_setObjectID:inDatabaseRestoreGeneration:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)primitiveSetRelationValue:forKey:.cold.1()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)primitiveSetRelationValue:forKey:.cold.2()
{
  OUTLINED_FUNCTION_0_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_5_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __49__EKPersistentObject_primitiveNumberValueForKey___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_2(&dword_1A805E000, v6, v7, "Error loading number %@ from daemon: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __47__EKPersistentObject_primitiveDateValueForKey___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_2(&dword_1A805E000, v6, v7, "Error loading date %@ from daemon: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __45__EKPersistentObject__loadStringValueForKey___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_2(&dword_1A805E000, v6, v7, "Error loading string %@ from daemon: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __47__EKPersistentObject_primitiveDataValueForKey___block_invoke_2_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_2(&dword_1A805E000, v6, v7, "Error loading data %@ from daemon: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __48__EKPersistentObject__loadRelationForKey_value___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_2(&dword_1A805E000, v6, v7, "Error loading to-one relation %@ from daemon: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __57__EKPersistentObject__loadChildIdentifiersForKey_values___block_invoke_cold_1(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_3(a1);
  v4 = v3;
  v5 = [OUTLINED_FUNCTION_1_3() errorWithCADResult:?];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_2_2(&dword_1A805E000, v6, v7, "Error loading to-many relation %@ from daemon: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __54__EKPersistentObject__takeValues_relatedObjectValues___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Failed to take value for related object with key %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end