@interface EKPersistentObject
+ (BOOL)_shouldRetainPropertyForKey:(id)a3;
+ (Class)alternateUniverseClass;
+ (Class)meltedClass;
+ (id)_relationForKey:(id)a3;
+ (id)allObjectsWithChangesRelatedToObjects:(id)a3;
+ (id)propertiesToUnloadOnCommit;
+ (void)_takeDefaultValuesForObjects:(id)a3 inEventStore:(id)a4;
+ (void)alternateUniverseClass;
- (BOOL)_areDefaultPropertiesLoaded;
- (BOOL)_isNew;
- (BOOL)_isPendingDelete;
- (BOOL)_isPendingInsert;
- (BOOL)_isPendingUpdate;
- (BOOL)_loadChildIdentifiersForKey:(id)a3 values:(id *)a4;
- (BOOL)_loadRelationForKey:(id)a3 value:(id *)a4;
- (BOOL)existsInStore;
- (BOOL)isDirty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPropertyDirty:(id)a3;
- (BOOL)isPropertyLoaded:(id)a3;
- (BOOL)isPropertyUnavailable:(id)a3;
- (BOOL)primitiveBoolValueForKey:(id)a3;
- (BOOL)refresh;
- (CADGenerationStampedObjectID)CADObjectID;
- (Class)frozenClass;
- (EKEventStore)eventStore;
- (EKObjectID)objectID;
- (EKPersistentObject)init;
- (NSString)uniqueIdentifier;
- (double)primitiveDoubleValueForKey:(id)a3;
- (id)_loadStringValueForKey:(id)a3;
- (id)_loadedPropertyForKey:(id)a3;
- (id)_primitiveValueForKey:(id)a3 loader:(id)a4;
- (id)_propertyForKey:(id)a3;
- (id)coCommitObjects;
- (id)dirtyPropertiesAndValues;
- (id)dump;
- (id)frozenObjectInStore:(id)a3;
- (id)loadedOrUpdatedPropertyValue:(id)a3 wasAvailable:(BOOL *)a4;
- (id)loadedPropertyForKey:(id)a3;
- (id)meltedObjectInStore:(id)a3;
- (id)ownedObjects;
- (id)primitiveDataValueForKey:(id)a3;
- (id)primitiveDateValueForKey:(id)a3;
- (id)primitiveNumberValueForKey:(id)a3;
- (id)primitiveRelationValueForKey:(id)a3;
- (id)primitiveSecurityScopedURLWrapperValueForKey:(id)a3;
- (id)primitiveStringValueForKey:(id)a3;
- (id)primitiveURLWrapperValueForKey:(id)a3;
- (id)updatedPropertiesWithOnlyPersistentObjects;
- (int)databaseRestoreGeneration;
- (int)entityType;
- (int)primitiveIntValueForKey:(id)a3;
- (void)_addObjectCore:(id)a3 toValues:(id)a4 relation:(id)a5;
- (void)_createLoadedPropertiesIfNeeded;
- (void)_createUpdatedPropertiesIfNeeded;
- (void)_loadDefaultPropertiesIfNeeded;
- (void)_loadPropertiesIfNeeded:(id)a3;
- (void)_primitiveSetValue:(id)a3 forKey:(id)a4;
- (void)_releaseLoadedProperties;
- (void)_removeObjectCore:(id)a3 fromValues:(id)a4 relation:(id)a5;
- (void)_setDefaultPropertiesLoaded:(BOOL)a3;
- (void)_setEventStore:(id)a3;
- (void)_setObjectID:(id)a3 inDatabaseRestoreGeneration:(int)a4;
- (void)_setPendingDelete:(BOOL)a3;
- (void)_setPendingInsert:(BOOL)a3;
- (void)_setPendingUpdate:(BOOL)a3;
- (void)_setProperty:(id)a3 forKey:(id)a4 forRelation:(id)a5 isUpdatedProperty:(BOOL)a6;
- (void)_takeValues:(id)a3 forKeys:(id)a4 relatedObjectValues:(id)a5;
- (void)_takeValues:(id)a3 relatedObjectValues:(id)a4;
- (void)_takeValuesForDefaultPropertyKeys:(id)a3 values:(id)a4 relatedObjectValues:(id)a5;
- (void)addCoCommitObject:(id)a3;
- (void)changed;
- (void)dealloc;
- (void)didCommit;
- (void)internalAddCoCommitObject:(id)a3;
- (void)internalRemoveCoCommitObject:(id)a3;
- (void)loadPropertiesIfNeeded:(id)a3;
- (void)primitiveAddRelatedObject:(id)a3 forKey:(id)a4;
- (void)primitiveRemoveRelatedObject:(id)a3 forKey:(id)a4;
- (void)primitiveSetDataValue:(id)a3 forKey:(id)a4;
- (void)primitiveSetDateValue:(id)a3 forKey:(id)a4;
- (void)primitiveSetDoubleValue:(double)a3 forKey:(id)a4;
- (void)primitiveSetNumberValue:(id)a3 forKey:(id)a4;
- (void)primitiveSetRelationValue:(id)a3 forKey:(id)a4;
- (void)primitiveSetSecurityScopedURLWrapperValue:(id)a3 forKey:(id)a4;
- (void)primitiveSetStringValue:(id)a3 forKey:(id)a4;
- (void)primitiveSetURLWrapperValue:(id)a3 forKey:(id)a4;
- (void)removeCoCommitObject:(id)a3;
- (void)reset:(id)a3;
- (void)rollback;
- (void)takeDefaultValues:(id)a3;
- (void)takeValues:(id)a3 forKeys:(id)a4;
- (void)takeValuesForDefaultPropertyKeys:(id)a3 values:(id)a4;
- (void)unloadPropertyForKey:(id)a3;
@end

@implementation EKPersistentObject

- (BOOL)_isNew
{
  pthread_mutex_lock(&self->_lock);
  objectID = self->_objectID;
  if (objectID)
  {
    v4 = [(EKObjectID *)objectID isTemporary];
  }

  else
  {
    v4 = 1;
  }

  pthread_mutex_unlock(&self->_lock);
  return v4;
}

- (void)_loadDefaultPropertiesIfNeeded
{
  v3 = [objc_opt_class() defaultPropertiesToLoad];
  if ([v3 count] && !-[EKPersistentObject _areDefaultPropertiesLoaded](self, "_areDefaultPropertiesLoaded"))
  {
    [(EKPersistentObject *)self _loadPropertiesIfNeeded:v3];
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
  v3 = [(EKPersistentObject *)self _CADObjectID];
  pthread_mutex_unlock(&self->_lock);

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (self == v4)
  {
    v8 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(EKPersistentObject *)v5 objectID];
    if (v6)
    {
      pthread_mutex_lock(&self->_lock);
      v7 = self->_objectID;
      pthread_mutex_unlock(&self->_lock);
      if (v7)
      {
        v8 = [v6 isEqual:v7];
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
    +[(EKPersistentObject *)a1];
  }

  [a1 doesNotRecognizeSelector:a2];
  v5 = objc_opt_class();

  return v5;
}

- (BOOL)isPropertyUnavailable:(id)a3
{
  v5 = 0;
  v3 = [(EKPersistentObject *)self loadedOrUpdatedPropertyValue:a3 wasAvailable:&v5];
  return (v5 & 1) == 0;
}

- (id)loadedOrUpdatedPropertyValue:(id)a3 wasAvailable:(BOOL *)a4
{
  v6 = a3;
  pthread_mutex_lock(&self->_lock);
  v7 = [(EKPersistentObject *)self _propertyForKey:v6];

  pthread_mutex_unlock(&self->_lock);
  if (a4)
  {
    *a4 = v7 != 0;
  }

  v8 = [MEMORY[0x1E695DFB0] null];

  if (v7 == v8)
  {

    v7 = 0;
  }

  return v7;
}

- (NSString)uniqueIdentifier
{
  v3 = [objc_opt_class() propertyKeyForUniqueIdentifier];
  if ([v3 isEqualToString:@"uniqueIdentifier"])
  {
    v4 = [(EKPersistentObject *)self objectID];
    v5 = [v4 stringRepresentation];
  }

  else
  {
    v5 = [(EKPersistentObject *)self valueForKey:v3];
  }

  return v5;
}

- (Class)frozenClass
{
  v2 = objc_opt_class();

  return [v2 frozenClass];
}

- (id)frozenObjectInStore:(id)a3
{
  v4 = a3;
  v5 = [(EKPersistentObject *)self eventStore];
  v6 = v5;
  if (v4 && v5 && v5 != v4)
  {
    v7 = [v5 eventStoreIdentifier];
    v8 = [v4 eventStoreIdentifier];
    v9 = [v7 isEqualToString:v8];

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

      v11 = v10;
      [(EKPersistentObject *)v10 _setEventStore:v4];
    }

    else
    {
      v12 = [(EKPersistentObject *)self objectID];
      v11 = [v4 registerFetchedObjectWithID:v12 withDefaultLoadedPropertyKeys:0 values:0];
    }
  }

  else
  {
    v11 = self;
  }

  return v11;
}

- (id)meltedObjectInStore:(id)a3
{
  v4 = a3;
  v5 = [(EKPersistentObject *)self frozenObjectInStore:v4];
  v6 = [v4 publicObjectWithPersistentObject:v5];

  return v6;
}

- (void)_setEventStore:(id)a3
{
  obj = a3;
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

- (void)_setObjectID:(id)a3 inDatabaseRestoreGeneration:(int)a4
{
  v9 = a3;
  pthread_mutex_lock(&self->_lock);
  objectID = self->_objectID;
  if (objectID && ![(EKObjectID *)objectID isTemporary])
  {
    [EKPersistentObject _setObjectID:inDatabaseRestoreGeneration:];
  }

  if (self->_objectID != v9)
  {
    v7 = [(EKObjectID *)v9 copy];
    v8 = self->_objectID;
    self->_objectID = v7;
  }

  self->_databaseRestoreGeneration = a4;
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
  v3 = [(EKPersistentObject *)self _CADObjectID];
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);
  pthread_mutex_unlock(&self->_lock);
  if (WeakRetained && v3 && ([v3 isTemporary] & 1) == 0)
  {
    v5 = [WeakRetained connection];
    v6 = [v5 CADOperationProxySync];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __35__EKPersistentObject_existsInStore__block_invoke;
    v9[3] = &unk_1E77FED00;
    v10 = v3;
    v11 = &v12;
    [v6 CADObjectExists:v10 reply:v9];
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
  v3 = [(EKPersistentObject *)self _loadedPropertyKeys];
  v4 = [objc_opt_class() propertyKeyForUniqueIdentifier];
  v5 = [(NSMutableDictionary *)self->_loadedProperties objectForKeyedSubscript:v4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v3;
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
    [(NSMutableDictionary *)self->_loadedProperties setObject:v5 forKeyedSubscript:v4];
  }

  pthread_mutex_unlock(&self->_lock);

  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)isPropertyDirty:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_updatedProperties objectForKey:v4];

  pthread_mutex_unlock(&self->_lock);
  return v5 != 0;
}

- (BOOL)isPropertyLoaded:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(EKPersistentObject *)self _loadedPropertyForKey:v4];

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
  v4 = [(NSMutableDictionary *)self->_updatedProperties allKeys];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v4);
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

            v13 = [MEMORY[0x1E695DFB0] null];

            if (v10 != v13)
            {
              v14 = [v10 CADObjectID];
              [v3 setObject:v14 forKey:v9];

              goto LABEL_13;
            }
          }

          [v3 setObject:v10 forKey:v9];
          goto LABEL_13;
        }

LABEL_14:
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  v5 = [objc_opt_class() propertiesToUnloadOnCommit];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [(EKPersistentObject *)self unloadPropertyForKey:*(*(&v11 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)reset:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  if ([v4 containsObject:self->_objectID])
  {
    pthread_mutex_unlock(&self->_lock);
  }

  else
  {
    [(EKPersistentObject *)self _releaseLoadedProperties];
    updatedProperties = self->_updatedProperties;
    v6 = [objc_opt_class() propertyKeyForUniqueIdentifier];
    v7 = [(NSMutableDictionary *)updatedProperties objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = [(EKPersistentObject *)self uniqueIdentifier];
      [(NSMutableDictionary *)self->_updatedProperties removeAllObjects];
      if (v8)
      {
        v9 = [objc_opt_class() propertyKeyForUniqueIdentifier];
        [(EKPersistentObject *)self setValue:v8 forKey:v9];
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
      if (!v4)
      {
        v4 = [MEMORY[0x1E695DFA8] setWithCapacity:v11 + 1];
      }

      [v4 addObject:self->_objectID];
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

          [*(*(&v20 + 1) + 8 * v18++) reset:{v4, v20}];
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

- (void)_setPendingInsert:(BOOL)a3
{
  v3 = a3;
  pthread_mutex_lock(&self->_lock);
  self->_flags = self->_flags & 0xFFFFFFFE | v3;

  pthread_mutex_unlock(&self->_lock);
}

- (BOOL)_isPendingInsert
{
  pthread_mutex_lock(&self->_lock);
  flags = self->_flags;
  pthread_mutex_unlock(&self->_lock);
  return flags & 1;
}

- (void)_setPendingUpdate:(BOOL)a3
{
  v3 = a3;
  pthread_mutex_lock(&self->_lock);
  if (v3)
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

- (void)_setPendingDelete:(BOOL)a3
{
  v3 = a3;
  pthread_mutex_lock(&self->_lock);
  if (v3)
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

- (void)_setDefaultPropertiesLoaded:(BOOL)a3
{
  v3 = a3;
  pthread_mutex_lock(&self->_lock);
  if (v3)
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

+ (id)_relationForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 relations];
  v6 = [v5 objectForKey:v4];

  return v6;
}

+ (BOOL)_shouldRetainPropertyForKey:(id)a3
{
  v3 = [a1 _relationForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 ownsRelatedObject];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)coCommitObjects
{
  pthread_mutex_lock(&self->_lock);
  v3 = [(NSHashTable *)self->_coCommitObjects allObjects];
  pthread_mutex_unlock(&self->_lock);

  return v3;
}

- (void)addCoCommitObject:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(EKPersistentObject *)self internalAddCoCommitObject:v4];
    [v4 internalAddCoCommitObject:self];
  }
}

- (void)internalAddCoCommitObject:(id)a3
{
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  coCommitObjects = self->_coCommitObjects;
  if (!coCommitObjects)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:1];
    v6 = self->_coCommitObjects;
    self->_coCommitObjects = v5;

    coCommitObjects = self->_coCommitObjects;
  }

  [(NSHashTable *)coCommitObjects addObject:v7];
  pthread_mutex_unlock(&self->_lock);
}

- (void)removeCoCommitObject:(id)a3
{
  if (a3)
  {
    v4 = a3;
    [(EKPersistentObject *)self internalRemoveCoCommitObject:v4];
    [v4 internalRemoveCoCommitObject:self];
  }
}

- (void)internalRemoveCoCommitObject:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  [(NSHashTable *)self->_coCommitObjects removeObject:v4];

  pthread_mutex_unlock(&self->_lock);
}

- (id)loadedPropertyForKey:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _loadDefaultPropertiesIfNeeded];
  v5 = [(EKPersistentObject *)self _loadedPropertyForKey:v4];
  if (!v5)
  {
    v6 = [(EKPersistentObject *)self _CADObjectID];
    v7 = v6;
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__16;
    v26 = __Block_byref_object_dispose__16;
    v27 = 0;
    if (v6)
    {
      if (([v6 isTemporary] & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_eventStore);
        v9 = WeakRetained == 0;

        if (!v9)
        {
          v10 = objc_autoreleasePoolPush();
          v11 = objc_loadWeakRetained(&self->_eventStore);
          v12 = [v11 connection];
          v13 = [v12 CADOperationProxySync];
          v30[0] = v4;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __43__EKPersistentObject_loadedPropertyForKey___block_invoke;
          v19[3] = &unk_1E77FED28;
          v20 = v7;
          v21 = &v22;
          [v13 CADObject:v20 getPropertiesWithNames:v14 reply:v19];

          objc_autoreleasePoolPop(v10);
        }
      }
    }

    if (v23[5])
    {
      v29 = v23[5];
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      v28 = v4;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
      [(EKPersistentObject *)self _takeValues:v15 forKeys:v16 relatedObjectValues:0];

      v5 = [(EKPersistentObject *)self _loadedPropertyForKey:v4];
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

- (id)_loadedPropertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_loadedProperties objectForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 value];
    if (!v6)
    {
      [(NSMutableDictionary *)self->_loadedProperties removeObjectForKey:v4];
    }

    v5 = v6;
  }

  return v5;
}

- (id)_propertyForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_updatedProperties objectForKey:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 value];
    if (!v6)
    {
      [(NSMutableDictionary *)self->_updatedProperties removeObjectForKey:v4];
    }

    v5 = v6;
  }

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(EKPersistentObject *)self _loadedPropertyForKey:v4];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
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
          v11 = [v10 value];

          v10 = v11;
        }

        if (v10)
        {
          [v3 setValue:v10 forKey:v9];
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)_setProperty:(id)a3 forKey:(id)a4 forRelation:(id)a5 isUpdatedProperty:(BOOL)a6
{
  v6 = a6;
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v14;
  if (v14)
  {
    if (v11)
    {
      if ([v11 ownsRelatedObject])
      {
        v12 = v14;
      }

      else
      {
        v13 = [[EKWeakReference alloc] initWithValue:v14];

        v12 = v13;
      }
    }
  }

  else
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v15 = v12;
  if (v6)
  {
    [(EKPersistentObject *)self _createUpdatedPropertiesIfNeeded];
    [(NSMutableDictionary *)self->_updatedProperties setObject:v15 forKey:v10];
    [(EKPersistentObject *)self changed];
  }

  else
  {
    [(EKPersistentObject *)self _createLoadedPropertiesIfNeeded];
    [(NSMutableDictionary *)self->_loadedProperties setObject:v15 forKey:v10];
  }
}

- (void)_releaseLoadedProperties
{
  v5 = [objc_opt_class() propertyKeyForUniqueIdentifier];
  v3 = [(NSMutableDictionary *)self->_loadedProperties objectForKeyedSubscript:?];
  loadedProperties = self->_loadedProperties;
  if (v3)
  {
    [(NSMutableDictionary *)loadedProperties removeAllObjects];
    [(NSMutableDictionary *)self->_loadedProperties setObject:v3 forKeyedSubscript:v5];
  }

  else
  {
    self->_loadedProperties = 0;
  }
}

- (void)unloadPropertyForKey:(id)a3
{
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  [(NSMutableDictionary *)self->_updatedProperties removeObjectForKey:v7];
  v4 = [(EKPersistentObject *)self _loadedPropertyForKey:v7];
  if (v4)
  {
    [(NSMutableDictionary *)self->_loadedProperties removeObjectForKey:v7];
    v5 = [objc_opt_class() defaultPropertiesToLoad];
    v6 = [v5 containsObject:v7];

    if (v6)
    {
      [(EKPersistentObject *)self _setDefaultPropertiesLoaded:0];
    }
  }

  pthread_mutex_unlock(&self->_lock);
}

- (id)primitiveRelationValueForKey:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _loadDefaultPropertiesIfNeeded];
  v5 = [(EKPersistentObject *)self _propertyForKey:v4];
  v6 = [MEMORY[0x1E695DFB0] null];

  if (v5 == v6)
  {

    v5 = 0;
  }

  else if (!v5)
  {
    v7 = [objc_opt_class() _relationForKey:v4];
    v8 = v7;
    if (v7)
    {
      if ([v7 toMany])
      {
        v34 = 0;
        v9 = [(EKPersistentObject *)self _loadChildIdentifiersForKey:v4 values:&v34];
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
                  v19 = [(EKPersistentObject *)self eventStore];
                  v20 = [v19 registerFetchedObjectWithID:v18];

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
            [(EKPersistentObject *)self _setProperty:v5 forKey:v4 isUpdatedProperty:0];

            v11 = v28;
          }

          else
          {
            [(EKPersistentObject *)self _setProperty:0 forKey:v4 isUpdatedProperty:0];
            v5 = 0;
          }
        }
      }

      else
      {
        v29 = 0;
        v23 = [(EKPersistentObject *)self _loadRelationForKey:v4 value:&v29];
        v24 = v29;
        v11 = v24;
        v5 = 0;
        if (v23 && v24)
        {
          WeakRetained = objc_loadWeakRetained(&self->_eventStore);
          v5 = [WeakRetained registerFetchedObjectWithID:v11];
        }

        [(EKPersistentObject *)self _setProperty:v5 forKey:v4 isUpdatedProperty:0];
      }
    }

    else
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      NSLog(&cfstr_IsNotARelation.isa, v4, v22);

      v5 = 0;
    }
  }

  pthread_mutex_unlock(&self->_lock);

  v26 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_addObjectCore:(id)a3 toValues:(id)a4 relation:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 eventStore];
  if (!v11)
  {
LABEL_4:
    WeakRetained = objc_loadWeakRetained(&self->_eventStore);
    [WeakRetained _insertObject:v8];

    [(EKPersistentObject *)self addCoCommitObject:v8];
    goto LABEL_6;
  }

  v12 = v11;
  if ([v8 isNew])
  {
    v13 = [v8 _isPendingInsert];

    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

LABEL_6:
  [v9 addObject:v8];
  v15 = [v10 inversePropertyNames];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v22 + 1) + 8 * i);
        if ([v10 shouldSetInverseProperty:v20 onObject:v8 forObject:self])
        {
          [v8 _setProperty:self forKey:v20 isUpdatedProperty:1];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_removeObjectCore:(id)a3 fromValues:(id)a4 relation:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 inversePropertyNames];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ([v10 shouldSetInverseProperty:v16 onObject:v8 forObject:self])
        {
          [v8 _setProperty:0 forKey:v16 isUpdatedProperty:1];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [v9 removeObject:v8];
  if ([v8 isNew])
  {
    [(EKPersistentObject *)self removeCoCommitObject:v8];
  }

  else
  {
    [(EKPersistentObject *)self addCoCommitObject:v8];
  }

  WeakRetained = objc_loadWeakRetained(&self->_eventStore);
  [WeakRetained _deleteObject:v8];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)primitiveAddRelatedObject:(id)a3 forKey:(id)a4
{
  v15 = a3;
  v7 = a4;
  pthread_mutex_lock(&self->_lock);
  v8 = [objc_opt_class() _relationForKey:v7];
  v9 = v8;
  if (v8 && ([v8 toMany] & 1) != 0)
  {
    v10 = [v15 eventStore];

    if (!v10)
    {
      WeakRetained = objc_loadWeakRetained(&self->_eventStore);
      [WeakRetained _insertObject:v15];

      [(EKPersistentObject *)self addCoCommitObject:v15];
    }

    v12 = [(EKPersistentObject *)self primitiveRelationValueForKey:v7];
    if (!v12)
    {
      v12 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
      [(EKPersistentObject *)self _setProperty:v12 forKey:v7 isUpdatedProperty:1];
    }

    [(EKPersistentObject *)self _addObjectCore:v15 toValues:v12 relation:v9];
    pthread_mutex_unlock(&self->_lock);
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v12 handleFailureInMethod:a2 object:self file:@"EKPersistentObject.m" lineNumber:1020 description:{@"Trying to add an object as a related object for property %@ on %@, but it's not a relation or not to-many", v7, v14}];
  }
}

- (void)primitiveRemoveRelatedObject:(id)a3 forKey:(id)a4
{
  v14 = a3;
  v7 = a4;
  pthread_mutex_lock(&self->_lock);
  v8 = [objc_opt_class() _relationForKey:v7];
  v9 = v8;
  if (!v8 || ([v8 toMany] & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:self file:@"EKPersistentObject.m" lineNumber:1053 description:{@"Trying to remove an object as a related object for property %@ on %@, but it's not a relation or not to-many", v7, v12}];
  }

  v13 = [(EKPersistentObject *)self _propertyForKey:v7];
  if (v13)
  {
    [(EKPersistentObject *)self _removeObjectCore:v14 fromValues:v13 relation:v9];
  }

  pthread_mutex_unlock(&self->_lock);
}

- (void)primitiveSetRelationValue:(id)a3 forKey:(id)a4
{
  v83 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  pthread_mutex_lock(&self->_lock);
  v9 = [objc_opt_class() _relationForKey:v8];
  if (!v9)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:self file:@"EKPersistentObject.m" lineNumber:1069 description:{@"Requested set of relation called %@ on a %@, but that doesn't exist.", v8, v12}];
  }

  if ([v9 toMany])
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [EKPersistentObject primitiveSetRelationValue:forKey:];
      }
    }

    v13 = [(EKPersistentObject *)self primitiveRelationValueForKey:v8];
    v14 = v7;
    v59 = v13;
    if (!v13)
    {
      v59 = [MEMORY[0x1E695DFA8] set];
    }

    v15 = v8;
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
    v8 = v15;
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

    [(EKPersistentObject *)self _setProperty:v32 forKey:v8 isUpdatedProperty:1];
    goto LABEL_77;
  }

  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [EKPersistentObject primitiveSetRelationValue:forKey:];
    }
  }

  v18 = v7;
  v19 = [(EKPersistentObject *)self primitiveRelationValueForKey:v8];
  v59 = v18;
  v60 = v19;
  if (v19 != v18)
  {
    v20 = v19;
    obj = [v9 inversePropertyNames];
    v57 = v8;
    v58 = v7;
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

      v8 = v57;
      v7 = v58;
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

    [(EKPersistentObject *)self _setProperty:v59 forKey:v8 isUpdatedProperty:1];
    if (!v7)
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
    v8 = v57;
    v7 = v58;
LABEL_77:

LABEL_78:
  }

  pthread_mutex_unlock(&self->_lock);
  v56 = *MEMORY[0x1E69E9840];
}

- (id)_primitiveValueForKey:(id)a3 loader:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(EKPersistentObject *)self _loadDefaultPropertiesIfNeeded];
  v8 = [(EKPersistentObject *)self _propertyForKey:v6];
  v9 = [MEMORY[0x1E695DFB0] null];

  if (v8 == v9)
  {

    v8 = 0;
  }

  else if (!v8)
  {
    v8 = v7[2](v7, v6);
    [(EKPersistentObject *)self _setProperty:v8 forKey:v6 isUpdatedProperty:0];
  }

  return v8;
}

- (void)_primitiveSetValue:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = v9;
  v8 = v6;
  if (!v9)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v10 = v7;
  [(EKPersistentObject *)self _setProperty:v7 forKey:v8 isUpdatedProperty:1];
}

- (id)primitiveNumberValueForKey:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(EKPersistentObject *)self _CADObjectID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__EKPersistentObject_primitiveNumberValueForKey___block_invoke;
  v11[3] = &unk_1E77FED78;
  v12 = v5;
  v13 = self;
  v14 = v4;
  v6 = v4;
  v7 = v5;
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

- (void)primitiveSetNumberValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _primitiveSetValue:v7 forKey:v6];

  pthread_mutex_unlock(&self->_lock);
}

- (int)primitiveIntValueForKey:(id)a3
{
  v3 = [(EKPersistentObject *)self primitiveNumberValueForKey:a3];
  v4 = [v3 intValue];

  return v4;
}

- (double)primitiveDoubleValueForKey:(id)a3
{
  v3 = [(EKPersistentObject *)self primitiveNumberValueForKey:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)primitiveSetDoubleValue:(double)a3 forKey:(id)a4
{
  v6 = a4;
  pthread_mutex_lock(&self->_lock);
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [(EKPersistentObject *)self _primitiveSetValue:v7 forKey:v6];

  pthread_mutex_unlock(&self->_lock);
}

- (BOOL)primitiveBoolValueForKey:(id)a3
{
  v3 = [(EKPersistentObject *)self primitiveNumberValueForKey:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)primitiveDateValueForKey:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(EKPersistentObject *)self _CADObjectID];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47__EKPersistentObject_primitiveDateValueForKey___block_invoke;
  v13 = &unk_1E77FEDC8;
  v14 = v5;
  v15 = self;
  v6 = v5;
  v7 = [(EKPersistentObject *)self _primitiveValueForKey:v4 loader:&v10];

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

- (void)primitiveSetDateValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _primitiveSetValue:v7 forKey:v6];

  pthread_mutex_unlock(&self->_lock);
}

- (id)_loadStringValueForKey:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__16;
  v20 = __Block_byref_object_dispose__16;
  v21 = 0;
  v5 = [(EKPersistentObject *)self _CADObjectID];
  v6 = v5;
  if (v5)
  {
    if (([v5 isTemporary] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_eventStore);

      if (WeakRetained)
      {
        v8 = objc_loadWeakRetained(&self->_eventStore);
        v9 = [v8 connection];
        v10 = [v9 CADOperationProxySync];
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __45__EKPersistentObject__loadStringValueForKey___block_invoke;
        v13[3] = &unk_1E77FEDF0;
        v14 = v4;
        v15 = &v16;
        [v10 CADObject:v6 getStringPropertyWithName:v14 reply:v13];
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

- (id)primitiveStringValueForKey:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__EKPersistentObject_primitiveStringValueForKey___block_invoke;
  v8[3] = &unk_1E77FD048;
  v8[4] = self;
  v5 = [(EKPersistentObject *)self _primitiveValueForKey:v4 loader:v8];

  v6 = [v5 copy];
  pthread_mutex_unlock(&self->_lock);

  return v6;
}

- (void)primitiveSetStringValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _primitiveSetValue:v7 forKey:v6];

  pthread_mutex_unlock(&self->_lock);
}

- (id)primitiveDataValueForKey:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(EKPersistentObject *)self _CADObjectID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__EKPersistentObject_primitiveDataValueForKey___block_invoke;
  v11[3] = &unk_1E77FED78;
  v12 = v5;
  v13 = self;
  v14 = v4;
  v6 = v4;
  v7 = v5;
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

- (void)primitiveSetDataValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _primitiveSetValue:v7 forKey:v6];

  pthread_mutex_unlock(&self->_lock);
}

- (id)primitiveSecurityScopedURLWrapperValueForKey:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(EKPersistentObject *)self _CADObjectID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__EKPersistentObject_primitiveSecurityScopedURLWrapperValueForKey___block_invoke;
  v10[3] = &unk_1E77FED78;
  v11 = v5;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = v5;
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

- (void)primitiveSetSecurityScopedURLWrapperValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _primitiveSetValue:v7 forKey:v6];

  pthread_mutex_unlock(&self->_lock);
}

- (id)primitiveURLWrapperValueForKey:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  v5 = [(EKPersistentObject *)self _primitiveValueForKey:v4 loader:&__block_literal_global_91];

  pthread_mutex_unlock(&self->_lock);

  return v5;
}

- (void)primitiveSetURLWrapperValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _primitiveSetValue:v7 forKey:v6];

  pthread_mutex_unlock(&self->_lock);
}

- (BOOL)_loadRelationForKey:(id)a3 value:(id *)a4
{
  v6 = a3;
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
  v7 = [(EKPersistentObject *)self _CADObjectID];
  v8 = v7;
  if (v7)
  {
    if (([v7 isTemporary] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_eventStore);

      if (WeakRetained)
      {
        v10 = objc_loadWeakRetained(&self->_eventStore);
        v11 = [v10 connection];
        v12 = [v11 CADOperationProxySync];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __48__EKPersistentObject__loadRelationForKey_value___block_invoke;
        v17[3] = &unk_1E77FEE88;
        v18 = v6;
        v19 = &v21;
        v20 = &v27;
        [v12 CADObject:v8 getRelatedObjectWithRelationName:v18 reply:v17];
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

  *a4 = v14;
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

- (BOOL)_loadChildIdentifiersForKey:(id)a3 values:(id *)a4
{
  v6 = a3;
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
  v7 = [(EKPersistentObject *)self _CADObjectID];
  v8 = v7;
  if (v7)
  {
    if (([v7 isTemporary] & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_eventStore);

      if (WeakRetained)
      {
        v10 = objc_loadWeakRetained(&self->_eventStore);
        v11 = [v10 connection];
        v12 = [v11 CADOperationProxySync];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __57__EKPersistentObject__loadChildIdentifiersForKey_values___block_invoke;
        v15[3] = &unk_1E77FEEB0;
        v16 = v6;
        v17 = &v19;
        v18 = &v25;
        [v12 CADObject:v8 getRelatedObjectsWithRelationName:v16 reply:v15];
      }
    }
  }

  *a4 = v20[5];
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

+ (void)_takeDefaultValuesForObjects:(id)a3 inEventStore:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__EKPersistentObject__takeDefaultValuesForObjects_inEventStore___block_invoke;
  v7[3] = &unk_1E77FEED8;
  v8 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __64__EKPersistentObject__takeDefaultValuesForObjects_inEventStore___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 registerFetchedObjectWithID:a2];
  [v6 takeDefaultValues:v5];
}

- (void)takeDefaultValues:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _takeValues:v4 relatedObjectValues:0];

  [(EKPersistentObject *)self _setDefaultPropertiesLoaded:1];

  pthread_mutex_unlock(&self->_lock);
}

- (void)takeValues:(id)a3 forKeys:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_opt_new();
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _takeValues:v7 forKeys:v6 relatedObjectValues:v10];

  pthread_mutex_unlock(&self->_lock);
  v8 = objc_opt_class();
  v9 = [(EKPersistentObject *)self eventStore];
  [v8 _takeDefaultValuesForObjects:v10 inEventStore:v9];
}

- (void)_takeValues:(id)a3 forKeys:(id)a4 relatedObjectValues:(id)a5
{
  if (a3)
  {
    v8 = MEMORY[0x1E695DF20];
    v9 = a5;
    v10 = [v8 dictionaryWithObjects:a3 forKeys:a4];
    [(EKPersistentObject *)self _takeValues:v10 relatedObjectValues:v9];
  }
}

- (void)_takeValues:(id)a3 relatedObjectValues:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    v8 = self->_loadedProperties != 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__EKPersistentObject__takeValues_relatedObjectValues___block_invoke;
    v9[3] = &unk_1E77FEF00;
    v9[4] = self;
    v10 = v6;
    v11 = v8;
    [a3 enumerateKeysAndObjectsUsingBlock:v9];
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

- (void)takeValuesForDefaultPropertyKeys:(id)a3 values:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = objc_opt_new();
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _takeValuesForDefaultPropertyKeys:v7 values:v6 relatedObjectValues:v10];

  pthread_mutex_unlock(&self->_lock);
  v8 = objc_opt_class();
  v9 = [(EKPersistentObject *)self eventStore];
  [v8 _takeDefaultValuesForObjects:v10 inEventStore:v9];
}

- (void)_takeValuesForDefaultPropertyKeys:(id)a3 values:(id)a4 relatedObjectValues:(id)a5
{
  [(EKPersistentObject *)self _takeValues:a4 forKeys:a3 relatedObjectValues:a5];
  if (a4)
  {

    [(EKPersistentObject *)self _setDefaultPropertiesLoaded:1];
  }
}

- (void)_loadPropertiesIfNeeded:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count] && !-[EKPersistentObject isNew](self, "isNew"))
  {
    v5 = v4;
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
      v15 = [(EKPersistentObject *)self _CADObjectID];
      v16 = v15;
      if (v15)
      {
        if (([v15 isTemporary] & 1) == 0)
        {
          WeakRetained = objc_loadWeakRetained(&self->_eventStore);
          v18 = WeakRetained == 0;

          if (!v18)
          {
            v19 = objc_autoreleasePoolPush();
            v20 = objc_loadWeakRetained(&self->_eventStore);
            v21 = [v20 connection];
            v22 = [v21 CADOperationProxySync];
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __46__EKPersistentObject__loadPropertiesIfNeeded___block_invoke;
            v25[3] = &unk_1E77FED28;
            v26 = v16;
            v27 = &v28;
            [v22 CADObject:v26 getPropertiesWithNames:v6 reply:v25];

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

- (void)loadPropertiesIfNeeded:(id)a3
{
  v4 = a3;
  pthread_mutex_lock(&self->_lock);
  [(EKPersistentObject *)self _loadPropertiesIfNeeded:v4];

  pthread_mutex_unlock(&self->_lock);
}

+ (id)allObjectsWithChangesRelatedToObjects:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v22 = [MEMORY[0x1E695DFA8] set];
  v4 = [MEMORY[0x1E695DFA8] set];
  v21 = v3;
  v5 = [v3 allObjects];
  v6 = [v5 mutableCopy];

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
    v10 = [v8 lastObject];
    [v8 removeLastObject];
    [v7 addObject:v10];
    if (([v10 isDirty] & 1) != 0 || (objc_msgSend(v10, "_isPendingInsert") & 1) != 0 || (objc_msgSend(v10, "_isPendingDelete") & 1) != 0 || objc_msgSend(v10, "_isPendingUpdate"))
    {
      [v22 addObject:v10];
    }

    v11 = [v10 coCommitObjects];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v33 count:16];
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
            objc_enumerationMutation(v11);
          }

          v9[2](v9, *(*(&v26 + 1) + 8 * i));
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v13);
    }

    v16 = [objc_opt_class() relations];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __60__EKPersistentObject_allObjectsWithChangesRelatedToObjects___block_invoke_2;
    v23[3] = &unk_1E77FEF50;
    v24 = v10;
    v25 = v9;
    v17 = v10;
    [v16 enumerateKeysAndObjectsUsingBlock:v23];
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
    v8 = [v5 lastObject];
    [v5 removeLastObject];
    v9 = [objc_opt_class() relations];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __34__EKPersistentObject_ownedObjects__block_invoke_2;
    v13[3] = &unk_1E77FEF50;
    v14 = v8;
    v15 = v7;
    v10 = v8;
    [v9 enumerateKeysAndObjectsUsingBlock:v13];
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
  v4 = [(EKPersistentObject *)self _loadedPropertyKeys];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
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

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v3 = NSStringFromClass(a1);
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