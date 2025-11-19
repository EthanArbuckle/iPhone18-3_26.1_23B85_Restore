@interface NSManagedObject
+ (BOOL)_classShouldAlwaysRegisterSelectorNamed:(const char *)a3;
+ (BOOL)_hasOverriddenAwake;
+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3;
+ (BOOL)resolveClassMethod:(SEL)a3;
+ (BOOL)resolveInstanceMethod:(SEL)a3;
+ (Class)classForEntity:(id)a3;
+ (NSFetchRequest)fetchRequest;
+ (id)_PFPlaceHolderSingleton;
+ (id)_entityName;
+ (id)allocWithEntity:(id)a3;
+ (unsigned)allocBatch:(id *)a3 withEntity:(id)a4 count:(unsigned int)a5;
+ (void)_entityDeallocated;
+ (void)_initializeAccessorStubs;
+ (void)_initializePrimitiveAccessorStubs;
+ (void)initialize;
- (BOOL)_tryRetain;
- (BOOL)_updateLocationsOfObjectsToLocationByOrderKey:(id)a3 inRelationshipWithName:(id)a4 error:(id *)a5;
- (BOOL)hasFaultForRelationshipNamed:(NSString *)key;
- (BOOL)hasPersistentChangedValues;
- (BOOL)isDeleted;
- (BOOL)isInserted;
- (BOOL)isUpdated;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)validateForDelete:(NSError *)error;
- (BOOL)validateForInsert:(NSError *)error;
- (BOOL)validateForUpdate:(NSError *)error;
- (BOOL)validateValue:(id *)value forKey:(NSString *)key error:(NSError *)error;
- (NSArray)objectIDsForRelationshipNamed:(NSString *)key;
- (NSDictionary)changedValues;
- (NSDictionary)changedValuesForCurrentEvent;
- (NSDictionary)committedValuesForKeys:(NSArray *)keys;
- (NSKnownKeysDictionary)_changedTransientProperties__;
- (NSKnownKeysDictionary)_newChangedValuesForRefresh__;
- (NSKnownKeysDictionary)_newCommittedSnapshotValues;
- (NSKnownKeysDictionary)_newNestedSaveChangedValuesForParent:(_BYTE *)a1;
- (NSKnownKeysDictionary)_newPropertiesForRetainedTypes:(unsigned int *)a3 andCopiedTypes:(char)a4 preserveFaults:;
- (NSKnownKeysDictionary)_newSnapshotForUndo__;
- (NSManagedObject)init;
- (NSManagedObject)initWithContext:(NSManagedObjectContext *)moc;
- (NSManagedObject)initWithEntity:(NSEntityDescription *)entity insertIntoManagedObjectContext:(NSManagedObjectContext *)context;
- (NSManagedObject)retain;
- (NSManagedObjectContext)managedObjectContext;
- (NSString)description;
- (id)_genericMergeableStringValueForKey:(id)a3 withIndex:(int64_t)a4;
- (id)_genericMutableOrderedSetValueForKey:(id)a3 withIndex:(int64_t)a4 flags:(int64_t)a5;
- (id)_genericMutableSetValueForKey:(id)a3 withIndex:(int64_t)a4 flags:(int64_t)a5;
- (id)_genericValueForKey:(id)a3 withIndex:(int64_t)a4 flags:(int64_t)a5;
- (id)_implicitObservationInfo;
- (id)_initWithEntity:(id)a3 withID:(id)a4 withHandler:(id)a5 withContext:(id)a6;
- (id)_orderKeysForRelationshipWithName__:(id)a3;
- (id)bindableObjectPublisher;
- (id)dictionaryWithPropertyValues;
- (id)dictionaryWithValuesForKeys:(id)a3;
- (id)diffOrderedSets:(void *)a1 :(void *)a2 :(id *)a3 :(void *)a4 :(id *)a5 :(id *)a6 :(id *)a7;
- (id)mergeableStringValueForKey:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)mutableArrayValueForKey:(id)a3;
- (id)mutableOrderedSetValueForKey:(id)a3;
- (id)mutableSetValueForKey:(id)a3;
- (id)primitiveValueForKey:(NSString *)key;
- (id)valueForKey:(NSString *)key;
- (id)valueForUndefinedKey:(id)a3;
- (uint64_t)_commitPhotoshoperyForRelationshipAtIndex:(void *)a3 newValue:;
- (uint64_t)_generateErrorWithCode:(void *)a3 andMessage:(uint64_t)a4 forKey:(uint64_t)a5 andValue:(uint64_t)a6 additionalDetail:;
- (uint64_t)_isValidRelationshipDestination__;
- (uint64_t)_validateForSave:(void *)a1;
- (uint64_t)_validateValue:(void *)a3 forProperty:(uint64_t)a4 andKey:(uint64_t)a5 withIndex:(void *)a6 error:;
- (unint64_t)hash;
- (void)_chainNewError:(uint64_t *)a3 toOriginalErrorDoublePointer:;
- (void)_clearRawPropertiesWithHint:(uint64_t)a3;
- (void)_didChangeValue:(id)a3 forRelationship:(id)a4 named:(id)a5 withInverse:(id)a6;
- (void)_genericUpdateFromSnapshot:(_DWORD *)a1;
- (void)_maintainInverseRelationship:(uint64_t *)a1 forProperty:(void *)a2 forChange:(uint64_t)a3 onSet:(void *)a4;
- (void)_maintainInverseRelationship:(uint64_t *)a1 forProperty:(void *)a2 oldDestination:(uint64_t *)a3 newDestination:(uint64_t *)a4;
- (void)_nilOutReservedCurrentEventSnapshot__;
- (void)_propagateDelete:(void *)a1;
- (void)_setGenericValue:(id)a3 forKey:(id)a4 withIndex:(int64_t)a5 flags:(int64_t)a6;
- (void)_setLastSnapshot__:(void *)result;
- (void)_setObjectID__:(void *)result;
- (void)_setOriginalSnapshot__:(void *)result;
- (void)_substituteEntityAndProperty:(void *)a3 inString:;
- (void)_updateFromRefreshSnapshot:(int)a3 includingTransients:;
- (void)_updateFromSnapshot:(uint64_t)a1;
- (void)_updateFromUndoSnapshot:(_DWORD *)a1;
- (void)_updateToManyRelationship:(void *)a3 from:(void *)a4 to:(void *)a5 with:;
- (void)_willChange_Swift_Trampoline;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)awakeFromSnapshotEvents:(NSSnapshotEventType)flags;
- (void)dealloc;
- (void)didAccessValueForKey:(NSString *)key;
- (void)didChange:(unint64_t)a3 valuesAtIndexes:(id)a4 forKey:(id)a5;
- (void)didChangeValueForKey:(NSString *)inKey withSetMutation:(NSKeyValueSetMutationKind)inMutationKind usingObjects:(NSSet *)inObjects;
- (void)didChangeValueForKey:(NSString *)key;
- (void)didSave;
- (void)methodForSelector:(SEL)a3;
- (void)observationInfo;
- (void)prepareForDeletion;
- (void)release;
- (void)setBindableObjectPublisher:(id)a3;
- (void)setNilValueForKey:(id)a3;
- (void)setObservationInfo:(void *)inObservationInfo;
- (void)setPrimitiveValue:(id)value forKey:(NSString *)key;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)setValue:(id)value forKey:(NSString *)key;
- (void)setValuesForKeysWithDictionary:(id)a3;
- (void)willAccessValueForKey:(NSString *)key;
- (void)willChange:(unint64_t)a3 valuesAtIndexes:(id)a4 forKey:(id)a5;
- (void)willChangeValueForKey:(NSString *)inKey withSetMutation:(NSKeyValueSetMutationKind)inMutationKind usingObjects:(NSSet *)inObjects;
- (void)willChangeValueForKey:(NSString *)key;
- (void)willSave;
@end

@implementation NSManagedObject

- (NSManagedObject)retain
{
  atomic_fetch_add(&self->_cd_rc, 2u);
  if (*MEMORY[0x1E695E0C0] == 1)
  {
    NSRecordAllocationEvent();
  }

  return self;
}

- (void)release
{
  add = atomic_fetch_add(&self->_cd_rc, 0xFFFFFFFE);
  v4 = MEMORY[0x1E695E0C0];
  if (*MEMORY[0x1E695E0C0] == 1)
  {
    NSRecordAllocationEvent();
    if (add)
    {
      return;
    }
  }

  else if (add)
  {
    return;
  }

  if ((self->_cd_stateFlags & 0x100000) != 0)
  {
    atomic_fetch_add(&self->_cd_rc, 0x20000000u);
  }

  else
  {
    cd_queueReference = self->_cd_queueReference;
    if (cd_queueReference)
    {
      atomic_fetch_add(&self->_cd_rc, 2u);
      if (*v4 == 1)
      {
        v7 = cd_queueReference;
        NSRecordAllocationEvent();
        cd_queueReference = v7;
      }

      [(_PFManagedObjectReferenceQueue *)cd_queueReference _queueForDealloc:?];
    }

    else
    {
      v6 = -2;
      atomic_compare_exchange_strong(&self->_cd_rc, &v6, 1u);
      if (v6 == -2)
      {

        [(NSManagedObject *)self dealloc];
      }
    }
  }
}

- (void)awakeFromFetch
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }
}

- (NSManagedObjectContext)managedObjectContext
{
  if (self)
  {
    if ((self->_wasDisposed & 0x80) != 0)
    {
      return 0;
    }

    else
    {
      return self->_parentObjectStore;
    }
  }

  return self;
}

- (BOOL)isInserted
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  return (self->_cd_stateFlags & 0x12) != 0;
}

- (id)bindableObjectPublisher
{
  cd_extras = self->_cd_extras;
  if (cd_extras)
  {
    return cd_extras->var4;
  }

  else
  {
    return 0;
  }
}

- (void)_nilOutReservedCurrentEventSnapshot__
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = *(v2 + 24);
      if (v3)
      {

        *(*(a1 + 48) + 24) = 0;
      }
    }
  }
}

- (void)willSave
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }
}

- (uint64_t)_isValidRelationshipDestination__
{
  if (result)
  {
    v1 = result;
    if ((*(result + 16) & 0x80) != 0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(result + 32);
    }

    if ([*(result + 40) isTemporaryID] && (*(v1 + 16) & 0x12) == 0)
    {
      if (v2)
      {
        v4 = atomic_load((v2 + 48));
        v3 = v4 & 1;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 1;
    }

    return (v2 != 0) & v3;
  }

  return result;
}

- (void)dealloc
{
  self->_cd_rc = 536870913;
  self->_cd_managedObjectContext = 0;
  v3 = (self->_cd_stateFlags >> 15) & 7;
  if (v3 == 5 || v3 == 0)
  {
    [(NSFaultHandler *)_insertion_fault_handler turnObject:0 intoFaultWithContext:?];
  }

  if (self->_cd_extras || self->_cd_rawData)
  {
    v5 = _PFEntityForManagedObject(self);
    if (v5)
    {
      v6 = v5[14];
      if (v6)
      {
        [(NSManagedObject *)self _clearRawPropertiesWithHint:*(v6 + 8)];
      }
    }
  }

  cd_extras = self->_cd_extras;
  if (cd_extras)
  {

    v8 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v8 = malloc_default_zone();
    }

    malloc_zone_free(v8, self->_cd_extras);
    self->_cd_extras = 0;
  }

  cd_queueReference = self->_cd_queueReference;
  if (cd_queueReference && atomic_fetch_add(cd_queueReference + 2, 0xFFFFFFFF) <= 0)
  {
    cd_queueReference[2] += 0x20000000;
    [(atomic_uint *)cd_queueReference dealloc];
  }

  _PFDeallocateObject(self);
}

- (void)observationInfo
{
  cd_extras = self->_cd_extras;
  if (cd_extras)
  {
    return cd_extras->var0;
  }

  else
  {
    return 0;
  }
}

- (id)_implicitObservationInfo
{
  v5 = 0;
  if (!self || (self->_cd_stateFlags & 0x80) != 0)
  {
    cd_managedObjectContext = 0;
  }

  else
  {
    cd_managedObjectContext = self->_cd_managedObjectContext;
  }

  v3 = _PFEntityForManagedObject(self);
  return [(NSManagedObjectContext *)cd_managedObjectContext _implicitObservationInfoForEntity:v3 forResultingClass:&v5];
}

- (NSKnownKeysDictionary)_newChangedValuesForRefresh__
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v39 = 0;
LABEL_57:
    v37 = *MEMORY[0x1E69E9840];
    return v39;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(*(a1 + 32), sel__newChangedValuesForRefresh__);
  }

  if ((*(a1 + 17) & 0x80) == 0)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      if (*(v2 + 8))
      {
        v38 = NSDictionary_EmptyDictionary;
        v3 = _PFEntityForManagedObject(a1);
        v4 = v3;
        if (v3)
        {
          v5 = v3[13];
        }

        else
        {
          v5 = 0;
        }

        v39 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v5];
        v45 = _kvcPropertysPrimitiveGetters(v4);
        if (v4)
        {
          v40 = v4[14];
        }

        else
        {
          v40 = 0;
        }

        v9 = NSKeyValueCoding_NullValue;
        v10 = *(a1 + 48);
        v46 = a1;
        if (v10)
        {
          v11 = *(v10 + 8);
        }

        else
        {
          v11 = 0;
        }

        v44 = [v11 values];
        v43 = [(NSKnownKeysDictionary *)v39 values];
        v12 = 0;
        v13 = *MEMORY[0x1E696AA08];
        v14 = *MEMORY[0x1E696A250];
        v15 = 1;
        do
        {
          v41 = v15;
          v16 = (v40 + 16 * dword_18592E530[v12]);
          v18 = *v16;
          v17 = v16[1];
          if (*v16 < v17 + *v16)
          {
            do
            {
              if (*(v44 + 8 * v18) == v9)
              {
                v19 = 0;
              }

              else
              {
                v19 = *(v44 + 8 * v18);
              }

              _PF_Handler_Primitive_GetProperty(v46, v18, 0, *(v45 + 8 * v18));
              v21 = v20;
              if (v19 != v20)
              {
                v22 = *(v4[12] + 24 + 8 * v18);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 && ([v22 _epsilonEquals:v21 rhs:v19 withFlags:1] & 1) == 0)
                {
                  v23 = v9;
                  if (v21)
                  {
                    v23 = v21;
                  }

                  *(v43 + 8 * v18) = v23;
                }
              }

              ++v18;
              --v17;
            }

            while (v17);
          }

          v15 = 0;
          v12 = 1;
        }

        while ((v41 & 1) != 0);
        v24 = 2;
        do
        {
          v42 = v24;
          v25 = (v40 + 16 * dword_18592E530[v24]);
          v27 = *v25;
          v26 = v25[1];
          if (*v25 < v26 + *v25)
          {
            do
            {
              if (*(v44 + 8 * v27) == v9)
              {
                v28 = 0;
              }

              else
              {
                v28 = *(v44 + 8 * v27);
              }

              _PF_Handler_Primitive_GetProperty(v46, v27, 0, *(v45 + 8 * v27));
              v30 = v29;
              v31 = [v28 isFault];
              if ((v31 & [v30 isFault] & 1) == 0 && v28 != v30 && (objc_msgSend(v30, "isEqual:", v28) & 1) == 0)
              {
                v32 = v9;
                if (v30)
                {
                  if ([v30 count])
                  {
                    v33 = [_PFRoutines newMutableArrayFromCollection:v30 byRemovingItems:v28];
                  }

                  else
                  {
                    v33 = 0;
                  }

                  if ([v28 count])
                  {
                    v34 = [_PFRoutines newMutableArrayFromCollection:v28 byRemovingItems:v30];
                  }

                  else
                  {
                    v34 = 0;
                  }

                  v35 = [NSKnownKeysDictionary alloc];
                  if (!_PFFastMappingForChanges__pffastmappingforchanges)
                  {
                    *buf = xmmword_1E6EC2060;
                    v48 = *off_1E6EC2070;
                    _PFFastMappingForChanges__pffastmappingforchanges = [[NSKnownKeysMappingStrategy alloc] initForKeys:buf count:4];
                  }

                  v32 = [(NSKnownKeysDictionary *)v35 initWithSearchStrategy:?];
                  v36 = [(NSKnownKeysDictionary *)v32 values];
                  *v36 = v33;
                  v36[1] = v34;
                  v36[2] = v30;
                  if (v42 == 3)
                  {
                    v36[3] = v28;
                  }
                }

                *(v43 + 8 * v27) = v32;
              }

              ++v27;
              --v26;
            }

            while (v26);
          }

          v24 = v42 + 1;
        }

        while (v42 != 3);
        if ([(NSKnownKeysDictionary *)v39 count])
        {
        }

        else
        {

          v39 = v38;
        }

        goto LABEL_57;
      }
    }
  }

  v6 = NSDictionary_EmptyDictionary;
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSKnownKeysDictionary)_changedTransientProperties__
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(a1[4], sel__changedTransientProperties__);
    }

    if ((*(a1 + 17) & 0x80) != 0)
    {
      v4 = NSDictionary_EmptyDictionary;
    }

    else
    {
      v2 = _PFEntityForManagedObject(a1);
      if (v2)
      {
        v3 = v2[13];
      }

      else
      {
        v3 = 0;
      }

      v4 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v3];
      v5 = _PFEntityForManagedObject(a1);
      if (v5)
      {
        v6 = v5[14];
      }

      else
      {
        v6 = 0;
      }

      v7 = NSKeyValueCoding_NullValue;
      v28[0] = 0xD00000001;
      v8 = [(NSKnownKeysDictionary *)[(NSManagedObject *)a1 _newPropertiesForRetainedTypes:v28 andCopiedTypes:0 preserveFaults:?] values];
      v9 = [(NSKnownKeysDictionary *)v4 values];
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = v11;
        v13 = (v6 + 16 * dword_18592E518[v10]);
        v14 = *v13;
        v15 = v13[1];
        if (*v13 < (v15 + *v13))
        {
          v16 = (v9 + 8 * v14);
          v17 = &v8[v14];
          do
          {
            v18 = *v17;
            if (*v17)
            {
              v19 = v18 == v7;
            }

            else
            {
              v19 = 1;
            }

            if (!v19)
            {
              *v16 = v18;
            }

            ++v16;
            ++v17;
            --v15;
          }

          while (v15);
        }

        v11 = 0;
        v10 = 1;
      }

      while ((v12 & 1) != 0);
      v20 = *(v6 + 208);
      v21 = *(v6 + 216);
      if (v20 < v21 + v20)
      {
        v22 = (v9 + 8 * v20);
        v23 = &v8[v20];
        do
        {
          v24 = *v23;
          if (([*v23 isFault] & 1) == 0)
          {
            if (v24)
            {
              v25 = v24 == v7;
            }

            else
            {
              v25 = 1;
            }

            if (!v25)
            {
              *v22 = v24;
            }
          }

          ++v22;
          ++v23;
          --v21;
        }

        while (v21);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isDeleted
{
  v3 = _PF_Threading_Debugging_level;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
    v3 = self == 0;
  }

  else
  {
    result = 0;
    if (!self)
    {
      return result;
    }
  }

  cd_stateFlags = self->_cd_stateFlags;
  v6 = (cd_stateFlags >> 5) & 1;
  v7 = (cd_stateFlags >> 2) & 1;
  if ((self->_cd_stateFlags & 0x20) != 0)
  {
    LOBYTE(v7) = v6;
  }

  if (v3)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (void)didSave
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }
}

- (unint64_t)hash
{
  v2 = (2 * (self >> 4)) & 0xAAAAAAAA | ((self >> 4) >> 1) & 0x55555555;
  v3 = (4 * v2) & 0xCCCCCCCC | (v2 >> 2) & 0x33333333;
  v4 = (16 * v3) & 0xF0F0F0F0 | (v3 >> 4) & 0xF0F0F0F;
  return (v4 << 8) & 0xFF0000 | (v4 << 24) | (v4 >> 8) & 0xFF00 | HIBYTE(v4);
}

+ (void)initialize
{
  objc_opt_self();
  if (objc_getClass("NSManagedObject") == a1 && qword_1ED4BE9B8 == 0)
  {
    v4 = objc_opt_class();
    off_1ED4BE9C0 = class_getMethodImplementation(v4, sel_willChangeValueForKey_);
    v5 = objc_opt_class();
    _NSObjectDidChangeVFKImp = class_getMethodImplementation(v5, sel_didChangeValueForKey_);
    v6 = objc_opt_class();
    off_1ED4BE9C8 = class_getMethodImplementation(v6, sel_willChangeValueForKey_withSetMutation_usingObjects_);
    v7 = objc_opt_class();
    _NSObjectDidChangeForKeywithSetMutationImp = class_getMethodImplementation(v7, sel_didChangeValueForKey_withSetMutation_usingObjects_);
    v8 = objc_opt_class();
    off_1ED4BE9D0 = class_getMethodImplementation(v8, sel_willChange_valuesAtIndexes_forKey_);
    v9 = objc_opt_class();
    off_1ED4BE9D8 = class_getMethodImplementation(v9, sel_didChange_valuesAtIndexes_forKey_);
    v10 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v10 = malloc_default_zone();
    }

    InstanceSize = class_getInstanceSize(a1);
    qword_1ED4BE9B8 = malloc_type_zone_calloc(v10, 1uLL, (InstanceSize + 7) & 0xFFFFFFFFFFFFFFF8, 0x6E97757EuLL);
    object_setClass(qword_1ED4BE9B8, a1);
    v12 = qword_1ED4BE9B8;
    *(qword_1ED4BE9B8 + 16) |= 0x100000u;
    *(v12 + 8) = 0x20000000;
    _MergedGlobals_71 = 1;

    objc_opt_class();
  }
}

- (NSString)description
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSManagedObjectID *)[(NSManagedObject *)self objectID] entity];
  v5 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v53.receiver = self;
    v53.super_class = NSManagedObject;
    v6 = [(NSManagedObject *)&v53 description];
    v7 = [(NSEntityDescription *)[(NSManagedObject *)self entity] name];
    v8 = [(NSManagedObject *)self objectID];
    if ([(NSManagedObject *)self isFault])
    {
      v9 = @"<fault>";
      goto LABEL_84;
    }

    if (self)
    {
      if (_PF_Threading_Debugging_level)
      {
        _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, sel__descriptionValues);
      }

      v11 = [_PFEntityForManagedObject(self) properties];
      v12 = [v11 count];
      v13 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v12];
      v9 = v13;
      cd_extraFlags = self->_cd_extraFlags;
      if (cd_extraFlags)
      {
        v15 = self + cd_extraFlags;
      }

      else
      {
        v15 = 0;
      }

      v51 = v12;
      if (v12)
      {
        v42 = v8;
        v43 = v7;
        v44 = v6;
        v45 = v5;
        v16 = 0;
        v46 = v3;
        v47 = &v15[-4 * HIBYTE(self->_cd_stateFlags)];
        v17 = v12;
        v49 = v13;
        v50 = self;
        v48 = v11;
        while (1)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = [v11 objectAtIndex:v16];
          v20 = [v19 name];
          v21 = [(NSManagedObject *)self valueForKey:v20];
          if (v21)
          {
            v22 = v21;
            v23 = [v19 _propertyType];
            if (v23 > 5)
            {
              if ((v23 - 6) <= 1)
              {
LABEL_26:
                v26 = [v19 attributeType];
                if (v26 <= 799)
                {
                  if (v26 <= 399)
                  {
                    if (v26 == 100 || v26 == 200 || v26 == 300)
                    {
                      goto LABEL_80;
                    }
                  }

                  else
                  {
                    if (v26 > 599)
                    {
                      if (v26 == 600)
                      {
                        goto LABEL_80;
                      }

                      if (v26 != 700)
                      {
                        goto LABEL_71;
                      }

                      if (![(__CFString *)v22 isNSString])
                      {
LABEL_77:
                        v35 = v22;
                        goto LABEL_78;
                      }

                      if ([(__CFString *)v22 length]< 0xC9)
                      {
                        goto LABEL_80;
                      }

                      v34 = [(__CFString *)v22 substringToIndex:200];
LABEL_79:
                      v22 = v34;
                      goto LABEL_80;
                    }

                    if (v26 == 400 || v26 == 500)
                    {
                      goto LABEL_80;
                    }
                  }
                }

                else
                {
                  if (v26 <= 1199)
                  {
                    if (v26 <= 999)
                    {
                      if (v26 != 800 && v26 != 900)
                      {
                        goto LABEL_71;
                      }

LABEL_80:
                      v25 = v9;
                      v24 = v22;
                      goto LABEL_81;
                    }

                    if (v26 != 1000)
                    {
                      if (v26 != 1100)
                      {
                        goto LABEL_71;
                      }

                      goto LABEL_77;
                    }

                    if ([v19 isFileBackedFuture])
                    {
                      goto LABEL_77;
                    }

                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) != 0 || ![(__CFString *)v22 isNSData]|| [(__CFString *)v22 length]< 0x33)
                    {
                      goto LABEL_77;
                    }

                    v35 = [(__CFString *)v22 subdataWithRange:0, 50];
LABEL_78:
                    v34 = [(__CFString *)v35 description];
                    goto LABEL_79;
                  }

                  if (v26 > 1999)
                  {
                    if (v26 == 2000 || v26 == 2100)
                    {
                      goto LABEL_77;
                    }
                  }

                  else if (v26 == 1200 || v26 == 1800)
                  {
                    goto LABEL_77;
                  }
                }

LABEL_71:
                v22 = @"(...not nil..)";
                goto LABEL_80;
              }

LABEL_37:
              v25 = v9;
              v24 = @"(...not nil..)";
              goto LABEL_81;
            }

            if (v23 == 2)
            {
              goto LABEL_26;
            }

            if (v23 != 3)
            {
              if (v23 != 4)
              {
                goto LABEL_37;
              }

              if (([v19 isToMany] & 1) == 0)
              {
                if (((v47[v16 >> 3] >> (v16 & 7)) & 1) == 0)
                {
                  goto LABEL_80;
                }

                v34 = [(__CFString *)v22 objectID];
                goto LABEL_79;
              }
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![(__CFString *)v22 isFault])
            {
              v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[__CFString count](v22, "count")}];
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              v28 = [(__CFString *)v22 countByEnumeratingWithState:&v54 objects:v58 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = 0;
                v31 = *v55;
                while (2)
                {
                  v32 = 0;
                  if (v30 <= 0xA)
                  {
                    v33 = 10 - v30;
                  }

                  else
                  {
                    v33 = 0;
                  }

                  do
                  {
                    if (*v55 != v31)
                    {
                      objc_enumerationMutation(v22);
                    }

                    if (v33 == v32)
                    {
                      [v27 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"(...and %ld more...)", -[__CFString count](v22, "count") - 10)}];
                      goto LABEL_58;
                    }

                    [v27 addObject:{objc_msgSend(*(*(&v54 + 1) + 8 * v32), "objectID")}];
                    ++v30;
                    ++v32;
                  }

                  while (v29 != v32);
                  v29 = [(__CFString *)v22 countByEnumeratingWithState:&v54 objects:v58 count:16];
                  if (v29)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_58:
              v9 = v49;
              [(__CFString *)v49 setObject:v27 forKey:v20];

              self = v50;
              v17 = v51;
              v11 = v48;
              goto LABEL_82;
            }

            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<relationship fault: %p '%@'>", v22, objc_msgSend(-[__CFString relationship](v22, "relationship"), "name")];
            v25 = v9;
          }

          else
          {
            v25 = v9;
            v24 = @"nil";
          }

LABEL_81:
          [(__CFString *)v25 setObject:v24 forKey:v20];
LABEL_82:
          objc_autoreleasePoolPop(v18);
          if (++v16 == v17)
          {
            v5 = v45;
            v3 = v46;
            v7 = v43;
            v6 = v44;
            v8 = v42;
            break;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_84:
    v10 = [v5 stringWithFormat:@"%@ (entity: %@; id: %@; data: %@)", v6, v7, v8, v9];
  }

  else
  {
    v52.receiver = self;
    v52.super_class = NSManagedObject;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (entity: <null>; id: %@; data: <fault>)", -[NSManagedObject description](&v52, sel_description), -[NSManagedObject objectID](self, "objectID"), v40, v41];
  }

  v36 = v10;
  v37 = v10;
  objc_autoreleasePoolPop(v3);
  result = v36;
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)_entityDeallocated
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a1 _PFMOClassFactoryData];
  if (v3)
  {
    v4 = v3;
    os_unfair_lock_lock(&stru_1ED4BE9E4);
    atomic_store(0, (v4 + 24));
    v5 = [a1 _PFPlaceHolderSingleton];
    v6 = objc_opt_class();
    object_setClass(v5, v6);
    *(v4 + 8) = 0;
    v7 = *MEMORY[0x1E69E9840];

    os_unfair_lock_unlock(&stru_1ED4BE9E4);
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
  }
}

+ (void)_initializeAccessorStubs
{
  v2 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v2 = malloc_default_zone();
  }

  v3 = malloc_type_zone_malloc(v2, 0x190uLL, 0x80040B8603338uLL);
  v4 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v4 = malloc_default_zone();
  }

  v5 = malloc_type_zone_malloc(v4, 0x190uLL, 0x80040B8603338uLL);
  os_unfair_lock_lock_with_options();
  if (qword_1ED4BEA18)
  {
    v6 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v6 = malloc_default_zone();
    }

    malloc_zone_free(v6, v3);
    v7 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v7 = malloc_default_zone();
    }

    malloc_zone_free(v7, v5);
    v3 = qword_1ED4BEA18;
    v5 = qword_1ED4BEA20;
  }

  else
  {
    qword_1ED4BEA18 = v3;
    qword_1ED4BEA20 = v5;
  }

  *v3 = _pvfk_0;
  v3[1] = _pvfk_1;
  v3[2] = _pvfk_2;
  v3[3] = _pvfk_3;
  v3[4] = _pvfk_4;
  v3[5] = _pvfk_5;
  v3[6] = _pvfk_6;
  v3[7] = _pvfk_7;
  v3[8] = _pvfk_8;
  v3[9] = _pvfk_9;
  v3[10] = _pvfk_10;
  v3[11] = _pvfk_11;
  v3[12] = _pvfk_12;
  v3[13] = _pvfk_13;
  v3[14] = _pvfk_14;
  v3[15] = _pvfk_15;
  v3[16] = _pvfk_16;
  v3[17] = _pvfk_17;
  v3[18] = _pvfk_18;
  v3[19] = _pvfk_19;
  v3[20] = _pvfk_20;
  v3[21] = _pvfk_21;
  v3[22] = _pvfk_22;
  v3[23] = _pvfk_23;
  v3[24] = _pvfk_24;
  v3[25] = _pvfk_25;
  v3[26] = _pvfk_26;
  v3[27] = _pvfk_27;
  v3[28] = _pvfk_28;
  v3[29] = _pvfk_29;
  v3[30] = _pvfk_30;
  v3[31] = _pvfk_31;
  v3[32] = _pvfk_32;
  v3[33] = _pvfk_33;
  v3[34] = _pvfk_34;
  v3[35] = _pvfk_35;
  v3[36] = _pvfk_36;
  v3[37] = _pvfk_37;
  v3[38] = _pvfk_38;
  v3[39] = _pvfk_39;
  v3[40] = _pvfk_40;
  v3[41] = _pvfk_41;
  v3[42] = _pvfk_42;
  v3[43] = _pvfk_43;
  v3[44] = _pvfk_44;
  v3[45] = _pvfk_45;
  v3[46] = _pvfk_46;
  v3[47] = _pvfk_47;
  v3[48] = _pvfk_48;
  v3[49] = _pvfk_49;
  *v5 = _svfk_0;
  v5[1] = _svfk_1;
  v5[2] = _svfk_2;
  v5[3] = _svfk_3;
  v5[4] = _svfk_4;
  v5[5] = _svfk_5;
  v5[6] = _svfk_6;
  v5[7] = _svfk_7;
  v5[8] = _svfk_8;
  v5[9] = _svfk_9;
  v5[10] = _svfk_10;
  v5[11] = _svfk_11;
  v5[12] = _svfk_12;
  v5[13] = _svfk_13;
  v5[14] = _svfk_14;
  v5[15] = _svfk_15;
  v5[16] = _svfk_16;
  v5[17] = _svfk_17;
  v5[18] = _svfk_18;
  v5[19] = _svfk_19;
  v5[20] = _svfk_20;
  v5[21] = _svfk_21;
  v5[22] = _svfk_22;
  v5[23] = _svfk_23;
  v5[24] = _svfk_24;
  v5[25] = _svfk_25;
  v5[26] = _svfk_26;
  v5[27] = _svfk_27;
  v5[28] = _svfk_28;
  v5[29] = _svfk_29;
  v5[30] = _svfk_30;
  v5[31] = _svfk_31;
  v5[32] = _svfk_32;
  v5[33] = _svfk_33;
  v5[34] = _svfk_34;
  v5[35] = _svfk_35;
  v5[36] = _svfk_36;
  v5[37] = _svfk_37;
  v5[38] = _svfk_38;
  v5[39] = _svfk_39;
  v5[40] = _svfk_40;
  v5[41] = _svfk_41;
  v5[42] = _svfk_42;
  v5[43] = _svfk_43;
  v5[44] = _svfk_44;
  v5[45] = _svfk_45;
  v5[46] = _svfk_46;
  v5[47] = _svfk_47;
  v5[48] = _svfk_48;
  v5[49] = _svfk_49;
  byte_1ED4BE9E1 = 1;

  os_unfair_lock_unlock(&unk_1ED4BE9E8);
}

+ (id)_PFPlaceHolderSingleton
{
  v2 = [a1 _PFPlaceHolderSingleton_core];
  v3 = objc_opt_class();
  if (v3 != object_getClass(v2))
  {
    v4 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v4 = malloc_default_zone();
    }

    InstanceSize = class_getInstanceSize(v3);
    v2 = malloc_type_zone_calloc(v4, 1uLL, (InstanceSize + 7) & 0xFFFFFFFFFFFFFFF8, 0x100004000313F17uLL);
    object_setClass(v2, v3);
    v2[4] |= 0x100000u;
    v2[2] = 0x20000000;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __generateReturnPointerMethod_block_invoke;
    block[3] = &__block_descriptor_40_e9__v16__0_8l;
    block[4] = v2;
    v6 = imp_implementationWithBlock(block);
    Class = object_getClass(v3);
    class_addMethod(Class, sel__PFPlaceHolderSingleton_core, v6, "@@:");
  }

  return v2;
}

- (void)awakeFromInsert
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }
}

- (BOOL)isUpdated
{
  v3 = _PF_Threading_Debugging_level;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
    v3 = self == 0;
  }

  else
  {
    result = 0;
    if (!self)
    {
      return result;
    }
  }

  cd_stateFlags = self->_cd_stateFlags;
  v6 = (cd_stateFlags >> 3) & 1;
  v7 = cd_stateFlags & 1;
  if ((self->_cd_stateFlags & 8) != 0)
  {
    v7 = v6;
  }

  if (v3)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (NSDictionary)changedValues
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  if ((self->_cd_stateFlags & 0x8000) != 0)
  {
    return NSDictionary_EmptyDictionary;
  }

  cd_extras = self->_cd_extras;
  if (!cd_extras || !cd_extras->var1)
  {
    return NSDictionary_EmptyDictionary;
  }

  v4 = NSDictionary_EmptyDictionary;
  context = objc_autoreleasePoolPush();
  v5 = _PFEntityForManagedObject(self);
  v6 = v5;
  if (v5)
  {
    v7 = v5[13];
  }

  else
  {
    v7 = 0;
  }

  v9 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v7];
  v10 = _kvcPropertysPrimitiveGetters(v6);
  v33 = v4;
  if (v6)
  {
    v37 = v6[14];
  }

  else
  {
    v37 = 0;
  }

  v11 = NSKeyValueCoding_NullValue;
  v12 = self->_cd_extras;
  if (v12)
  {
    var1 = v12->var1;
  }

  else
  {
    var1 = 0;
  }

  v14 = [var1 values];
  v35 = v9;
  v39 = [(NSKnownKeysDictionary *)v9 values];
  v15 = 0;
  v16 = 1;
  do
  {
    v38 = v16;
    v17 = (v37 + 16 * dword_18592E4A4[v15]);
    v19 = *v17;
    v18 = v17[1];
    if (*v17 < v18 + *v17)
    {
      do
      {
        if (*(v14 + 8 * v19) == v11)
        {
          v20 = 0;
        }

        else
        {
          v20 = *(v14 + 8 * v19);
        }

        _PF_Handler_Primitive_GetProperty(self, v19, 0, *(v10 + 8 * v19));
        if (v20 != v21)
        {
          v22 = v21;
          if (([*(v6[12] + 24 + 8 * v19) _epsilonEquals:v21 rhs:v20 withFlags:1] & 1) == 0)
          {
            v23 = v11;
            if (v22)
            {
              v23 = v22;
            }

            *(v39 + 8 * v19) = v23;
          }
        }

        ++v19;
        --v18;
      }

      while (v18);
    }

    v16 = 0;
    v15 = 1;
  }

  while ((v38 & 1) != 0);
  v25 = *(v37 + 144);
  v24 = *(v37 + 152);
  if (v25 < v24 + v25)
  {
    do
    {
      if (*(v14 + 8 * v25) == v11)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(v14 + 8 * v25);
      }

      _PF_Handler_Primitive_GetProperty(self, v25, 0, *(v10 + 8 * v25));
      v28 = v27;
      v29 = [v26 isFault];
      if ((v29 & [v28 isFault] & 1) == 0 && v26 != v28 && (objc_msgSend(v28, "isEqual:", v26) & 1) == 0)
      {
        v30 = v11;
        if (v28)
        {
          v30 = [v28 copy];
        }

        *(v39 + 8 * v25) = v30;
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

  if ([(NSKnownKeysDictionary *)v35 count])
  {
    v31 = v35;
  }

  else
  {

    v31 = v34;
  }

  v32 = v31;
  objc_autoreleasePoolPop(context);

  return v31;
}

- (void)prepareForDeletion
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }
}

- (BOOL)_tryRetain
{
  while (1)
  {
    cd_rc = self->_cd_rc;
    if (cd_rc)
    {
      break;
    }

    v3 = self->_cd_rc;
    atomic_compare_exchange_strong(&self->_cd_rc, &v3, cd_rc + 2);
    if (v3 == cd_rc)
    {
      if (*MEMORY[0x1E695E0C0] == 1)
      {
        NSRecordAllocationEvent();
      }

      return (cd_rc & 1) == 0;
    }
  }

  return (cd_rc & 1) == 0;
}

- (NSDictionary)changedValuesForCurrentEvent
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  if ((self->_cd_stateFlags & 0x8000) != 0)
  {
    return NSDictionary_EmptyDictionary;
  }

  cd_extras = self->_cd_extras;
  if (!cd_extras || !cd_extras->var3 && !cd_extras->var2)
  {
    return NSDictionary_EmptyDictionary;
  }

  v32 = NSDictionary_EmptyDictionary;
  v4 = _PFEntityForManagedObject(self);
  v5 = v4;
  if (v4)
  {
    v6 = v4[13];
  }

  else
  {
    v6 = 0;
  }

  v8 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v6];
  v9 = _kvcPropertysPrimitiveGetters(v5);
  if (v5)
  {
    v10 = v5[14];
  }

  else
  {
    v10 = 0;
  }

  v11 = NSKeyValueCoding_NullValue;
  v12 = self->_cd_extras;
  if (v12)
  {
    var3 = v12->var3;
    if (!var3)
    {
      var3 = v12->var2;
    }
  }

  else
  {
    var3 = 0;
  }

  v14 = [var3 values];
  v33 = v8;
  v36 = [(NSKnownKeysDictionary *)v8 values];
  v15 = 0;
  v34 = v10;
  do
  {
    v16 = (v10 + 16 * dword_18592E490[v15]);
    v18 = *v16;
    v17 = v16[1];
    if (*v16 < v17 + *v16)
    {
      do
      {
        if (*(v14 + 8 * v18) == v11)
        {
          v19 = 0;
        }

        else
        {
          v19 = *(v14 + 8 * v18);
        }

        _PF_Handler_Primitive_GetProperty(self, v18, 0, *(v9 + 8 * v18));
        if (v19 != v20 && ([*(v5[12] + 24 + 8 * v18) _epsilonEquals:v20 rhs:v19 withFlags:1] & 1) == 0)
        {
          v21 = v11;
          if (v19)
          {
            v21 = v19;
          }

          *(v36 + 8 * v18) = v21;
        }

        ++v18;
        --v17;
      }

      while (v17);
    }

    ++v15;
    v10 = v34;
  }

  while (v15 != 3);
  v22 = 0;
  v23 = 3;
  do
  {
    v35 = v22;
    v24 = (v34 + 16 * dword_18592E490[v23]);
    v26 = *v24;
    v25 = v24[1];
    if (*v24 < v25 + *v24)
    {
      do
      {
        if (*(v14 + 8 * v26) == v11)
        {
          v27 = 0;
        }

        else
        {
          v27 = *(v14 + 8 * v26);
        }

        _PF_Handler_Primitive_GetProperty(self, v26, 0, *(v9 + 8 * v26));
        v29 = v28;
        v30 = [v27 isFault];
        if ((v30 & [v29 isFault] & 1) == 0 && v27 != v29 && (objc_msgSend(v29, "isEqual:", v27) & 1) == 0)
        {
          v31 = v11;
          if (v27)
          {
            v31 = [v27 copy];
          }

          *(v36 + 8 * v26) = v31;
        }

        ++v26;
        --v25;
      }

      while (v25);
    }

    v22 = 1;
    v23 = 4;
  }

  while ((v35 & 1) == 0);
  if ([(NSKnownKeysDictionary *)v33 count])
  {

    return v33;
  }

  else
  {

    return v32;
  }
}

- (void)_willChange_Swift_Trampoline
{
  v2 = self;
  if ([(NSManagedObject *)v2 bindableObjectPublisher])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v3, &v4);
    type metadata accessor for ObservableObjectPublisher();
    swift_dynamicCast();
    ObservableObjectPublisher.send()();
  }

  else
  {
    __break(1u);
  }
}

- (void)_clearRawPropertiesWithHint:(uint64_t)a3
{
  if (a1)
  {
    v6 = *(a1 + 48);
    if (v6)
    {

      *(v6 + 8) = 0;
      *(v6 + 16) = 0;

      *(v6 + 24) = 0;
      if (!*v6 && !*(v6 + 32))
      {
        v7 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v7 = malloc_default_zone();
        }

        malloc_zone_free(v7, *(a1 + 48));
        *(a1 + 48) = 0;
      }
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = a2 + a3;
      if (a2 < a2 + a3)
      {
        v10 = *(a1 + 20);
        if (v10)
        {
          v11 = a1 + v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = *(a1 + 19);
        v13 = v11 - 4 * v12;
        v14 = v9 - 1;
        v15 = a2 >> 3;
        v16 = v14 >> 3;
        v17 = 0xFFu >> (8 - (a2 & 7));
        if (v14 >> 3 == a2 >> 3)
        {
          v18 = (510 << (v14 & 7)) | v17;
        }

        else
        {
          *(v13 + v15) &= v17;
          if (v15 + 1 < v16)
          {
            bzero((v15 - 4 * v12 + v11 + 1), (v16 - v15 - 2) + 1);
          }

          v18 = 510 << (v14 & 7);
          v15 = v14 >> 3;
        }

        *(v13 + v15) &= v18;
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = 0;
    }

    *(a1 + 12) = 0;
  }
}

- (NSManagedObject)initWithEntity:(NSEntityDescription *)entity insertIntoManagedObjectContext:(NSManagedObjectContext *)context
{
  v4 = self;
  if ((self->_cd_stateFlags & 0x400) != 0)
  {
    return v4;
  }

  if (!entity)
  {
    v13 = objc_opt_class();
    if ((v4->_cd_stateFlags & 0x100000) == 0)
    {
    }

    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"An NSManagedObject of class '%@' must have a valid NSEntityDescription.", v13];
    v17 = v14;
    v18 = v15;
    goto LABEL_24;
  }

  if (!atomic_load(&entity->_isImmutable))
  {
    if ([(NSEntityDescription *)entity managedObjectModel])
    {
      v8 = [(NSEntityDescription *)entity managedObjectModel];
    }

    else
    {
      v8 = entity;
    }

    [(NSManagedObjectModel *)v8 _setIsEditable:0];
  }

  v9 = _PFFastEntityClass(entity);
  if (_MergedGlobals_71 == 1)
  {
    Class = object_getClass(v4);
    if ((v4->_cd_stateFlags & 0x100000) != 0)
    {
LABEL_14:
      v4 = [(objc_class *)v9 allocWithEntity:entity];
      goto LABEL_15;
    }

    v11 = Class;
    if (Class == v9)
    {
      goto LABEL_15;
    }

    if (Class == class_getSuperclass(v9) || v11 == object_getClass(qword_1ED4BE9B8))
    {
      _PFDeallocateObject(v4);
      goto LABEL_14;
    }

    v19 = objc_opt_class();
    v4->_cd_stateFlags = v4->_cd_stateFlags & 0xFFFC7FFF | 0x8000;

    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSEntityDescription '%@' can only support a single custom class (tried to instantiate class '%@'). Use a subentity with 0 properties to further specialize the NSManagedObject subclass.", -[NSEntityDescription name](entity, "name"), v19];
    v17 = v20;
    v18 = v21;
LABEL_24:
    objc_exception_throw([v17 exceptionWithName:v18 reason:v16 userInfo:0]);
  }

  object_setClass(v4, v9);
LABEL_15:
  v22.receiver = v4;
  v22.super_class = NSManagedObject;
  v4 = [(NSManagedObject *)&v22 init];
  if (v4)
  {
    v4->_cd_objectID = _PFFastTemporaryIDCreation(entity);
    v4->_cd_stateFlags |= 0x8400u;
    if (context)
    {
      [(NSManagedObjectContext *)context insertObject:v4];
    }

    else
    {
      _PFFaultHandlerFulfillFault(0, v4, 0, 0, 1);
    }
  }

  return v4;
}

- (NSManagedObject)init
{
  v18 = *MEMORY[0x1E69E9840];
  if ((init__warn_once & 1) == 0)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = [v3 stringWithFormat:@"CoreData: error: Failed to call designated initializer on NSManagedObject class '%@' \n", NSStringFromClass(v4)];
    init__warn_once = 1;
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v7 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v9 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v7)
        {
          if (v9)
          {
            goto LABEL_10;
          }
        }

        else if (v9)
        {
LABEL_10:
          v15 = objc_opt_class();
          *buf = 138412290;
          v17 = NSStringFromClass(v15);
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: CoreData: error: Failed to call designated initializer on NSManagedObject class '%@' \n\n", buf, 0xCu);
        }
      }

      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      _NSCoreDataLog_console(1, "CoreData: error: Failed to call designated initializer on NSManagedObject class '%@' \n", v11);
      objc_autoreleasePoolPop(v6);
    }
  }

  Class = object_getClass(self);
  result = _PFAllocateObject(Class, 0);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)hasFaultForRelationshipNamed:(NSString *)key
{
  v3 = key;
  if (!_PF_Threading_Debugging_level)
  {
    if (key)
    {
      goto LABEL_3;
    }

LABEL_26:
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[<%@ %p> valueForUndefinedKey:]: the entity %@ is not key value coding-compliant for the key %@.", objc_opt_class(), self, -[NSEntityDescription name](-[NSManagedObject entity](self, "entity"), "name"), 0];
    v16 = objc_alloc(MEMORY[0x1E695DF20]);
    v17 = [v16 initWithObjectsAndKeys:{self, @"NSTargetObjectUserInfoKey", objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"NSUnknownUserInfoKey", 0}];
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E696AA00] reason:v15 userInfo:v17];

    objc_exception_throw(v18);
  }

  _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  if (!v3)
  {
    goto LABEL_26;
  }

LABEL_3:
  result.location = 0;
  result.length = 0;
  v20.length = CFStringGetLength(v3);
  v20.location = 0;
  if (CFStringFindWithOptions(v3, @".", v20, 0, &result))
  {
    v21.length = result.location;
    v21.location = 0;
    v5 = CFStringCreateWithSubstring(0, v3, v21);
    v3 = v5;
  }

  else
  {
    v5 = 0;
  }

  v6 = _PFEntityForManagedObject(self);
  if (v6 && (v7 = v6, v8 = [*(v6 + 13) indexForKey:v3], v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = v8;
    cd_extraFlags = self->_cd_extraFlags;
    if (cd_extraFlags)
    {
      v11 = self + cd_extraFlags;
    }

    else
    {
      v11 = 0;
    }

    if ((v11[(v8 >> 3) + -4 * HIBYTE(self->_cd_stateFlags)] >> (v8 & 7)))
    {
      if (!*(_kvcPropertysPrimitiveGetters(v7) + 8 * v8))
      {
        v12 = [(NSManagedObject *)self _genericValueForKey:v3 withIndex:v9 flags:0];
        goto LABEL_16;
      }

LABEL_15:
      v12 = _NSGetUsingKeyValueGetter();
LABEL_16:
      v13 = v12;
      if (v5)
      {
        CFRelease(v5);
      }

      if (v13)
      {
        return [v13 isFault];
      }

      else
      {
        return 0;
      }
    }
  }

  else if ((self->_cd_stateFlags & 0x8000) == 0)
  {
    object_getClass(self);
    _NSKeyValuePrimitiveGetterForClassAndKey();
    goto LABEL_15;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

- (void)setObservationInfo:(void *)inObservationInfo
{
  cd_extras = self->_cd_extras;
  if (!cd_extras)
  {
    v6 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v6 = malloc_default_zone();
    }

    cd_extras = malloc_type_zone_calloc(v6, 1uLL, 0x28uLL, 0x800402FCC0CB6uLL);
    self->_cd_extras = cd_extras;
  }

  cd_extras->var0 = inObservationInfo;
}

- (void)willAccessValueForKey:(NSString *)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  else if (!self)
  {
    goto LABEL_4;
  }

  if ((self->_cd_stateFlags & 0x4000) == 0)
  {
LABEL_4:
    if (key)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  v9 = self;
  self->_cd_stateFlags &= ~0x4000u;
  if (key)
  {
LABEL_5:
    v5 = _PFEntityForManagedObject(self);
    if (v5)
    {
      v6 = [v5[13] indexForKey:key];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        cd_extraFlags = self->_cd_extraFlags;
        v8 = cd_extraFlags ? self + cd_extraFlags : 0;
        if (((v8[(v6 >> 3) + -4 * HIBYTE(self->_cd_stateFlags)] >> (v6 & 7)) & 1) == 0)
        {

          _PF_FulfillDeferredFault(self, v6);
        }
      }
    }

    return;
  }

LABEL_17:
  v10 = _insertion_fault_handler;
  cd_managedObjectContext = self->_cd_managedObjectContext;

  [(NSFaultHandler *)v10 fulfillFault:cd_managedObjectContext withContext:?];
}

- (void)didAccessValueForKey:(NSString *)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }
}

- (void)willChangeValueForKey:(NSString *)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (v5)
  {
    v7 = [v5[13] indexForKey:key];
  }

  else
  {
    if ((z9dsptsiQ80etb9782fsrs98bfdle88 & 0x100) == 0)
    {
      v8.receiver = self;
      v8.super_class = NSManagedObject;
      [(NSManagedObject *)&v8 willChangeValueForKey:key];
      return;
    }

    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _PF_ManagedObject_WillChangeValueForKeyIndex(self, v6, key, v7, 1);
}

- (void)didChangeValueForKey:(NSString *)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  if (!_PFEntityForManagedObject(self) && (z9dsptsiQ80etb9782fsrs98bfdle88 & 0x100) == 0)
  {
    v7.receiver = self;
    v7.super_class = NSManagedObject;
    [(NSManagedObject *)&v7 willChangeValueForKey:key];
    return;
  }

  cd_stateFlags = self->_cd_stateFlags;
  if ((cd_stateFlags & 0x2000) != 0)
  {
    if ((cd_stateFlags & 0x1000) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    self->_cd_stateFlags &= ~0x800u;
    if ((cd_stateFlags & 0x40) != 0)
    {
      return;
    }

    goto LABEL_12;
  }

  _NSObjectDidChangeVFKImp(self, a2, key);
  if ((cd_stateFlags & 0x1000) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((cd_stateFlags & 0x40) != 0)
  {
    return;
  }

LABEL_12:

  [(NSManagedObject *)self didAccessValueForKey:key];
}

- (void)willChange:(unint64_t)a3 valuesAtIndexes:(id)a4 forKey:(id)a5
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v10 = _PFEntityForManagedObject(self);
  if (!v10)
  {
    p_cd_stateFlags = &self->_cd_stateFlags;
    cd_stateFlags = self->_cd_stateFlags;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if ((cd_stateFlags & 0x40) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v11 = [v10[13] indexForKey:a5];
  v12 = v11;
  p_cd_stateFlags = &self->_cd_stateFlags;
  cd_stateFlags = self->_cd_stateFlags;
  if ((cd_stateFlags & 0x40) == 0)
  {
LABEL_8:
    [(NSManagedObject *)self willAccessValueForKey:a5];
    goto LABEL_10;
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    _PF_Handler_WillAccess_Property(&self->super.isa, sel_willAccessValueForKey_, v11);
  }

LABEL_10:
  if ((*(p_cd_stateFlags + 1) & 0x80) != 0)
  {
    [_insertion_fault_handler fulfillFault:self withContext:self->_cd_managedObjectContext forIndex:v12];
    if ((cd_stateFlags & 0x1000) != 0)
    {
LABEL_12:
      if ((cd_stateFlags & 0x2000) != 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((cd_stateFlags & 0x1000) != 0)
  {
    goto LABEL_12;
  }

  if ((cd_stateFlags & 0x400000) == 0 || v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    _PFFastMOCObjectWillChange(self->_cd_managedObjectContext, self);
  }

  *p_cd_stateFlags |= 0x800u;
  if ((cd_stateFlags & 0x2000) == 0)
  {
LABEL_13:
    v15 = off_1ED4BE9D0;

    v15(self, a2, a3, a4, a5);
  }
}

- (void)didChange:(unint64_t)a3 valuesAtIndexes:(id)a4 forKey:(id)a5
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  cd_stateFlags = self->_cd_stateFlags;
  if ((cd_stateFlags & 0x2000) != 0)
  {
    if ((cd_stateFlags & 0x1000) != 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    self->_cd_stateFlags &= ~0x800u;
    if ((cd_stateFlags & 0x40) != 0)
    {
      return;
    }

    goto LABEL_9;
  }

  off_1ED4BE9D8(self, a2, a3, a4, a5);
  if ((cd_stateFlags & 0x1000) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((cd_stateFlags & 0x40) != 0)
  {
    return;
  }

LABEL_9:

  [(NSManagedObject *)self didAccessValueForKey:a5];
}

- (void)willChangeValueForKey:(NSString *)inKey withSetMutation:(NSKeyValueSetMutationKind)inMutationKind usingObjects:(NSSet *)inObjects
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v10 = _PFEntityForManagedObject(self);
  if (v10)
  {
    v11 = [v10[13] indexForKey:inKey];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _PF_ManagedObject_WillChangeValueForKeywithSetMutation(self, a2, inKey, inMutationKind, inObjects, v11);
}

- (void)didChangeValueForKey:(NSString *)inKey withSetMutation:(NSKeyValueSetMutationKind)inMutationKind usingObjects:(NSSet *)inObjects
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  _PF_ManagedObject_DidChangeValueForKeywithSetMutation(self, a2, inKey);
}

- (void)awakeFromSnapshotEvents:(NSSnapshotEventType)flags
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }
}

- (BOOL)validateValue:(id *)value forKey:(NSString *)key error:(NSError *)error
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v9 = _PFEntityForManagedObject(self);
  v10 = v9;
  if (v9)
  {
    v9 = v9[13];
  }

  v11 = [v9 indexForKey:key];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v10[12] + 24 + 8 * v11);
  }

  return [(NSManagedObject *)self _validateValue:v12 forProperty:key andKey:v11 withIndex:error error:?];
}

- (uint64_t)_validateValue:(void *)a3 forProperty:(uint64_t)a4 andKey:(uint64_t)a5 withIndex:(void *)a6 error:
{
  if (!a1)
  {
    goto LABEL_62;
  }

  v58 = 0;
  v59[0] = 0;
  if (a6)
  {
    v12 = &v58;
  }

  else
  {
    v12 = 0;
  }

  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    Class = object_getClass(a1);
    Superclass = class_getSuperclass(Class);
    if (Superclass == objc_opt_class())
    {
      LOBYTE(v18) = 1;
      return v18 & 1;
    }

    v57.receiver = a1;
    v57.super_class = NSManagedObject;
    v15 = objc_msgSendSuper2(&v57, sel_validateValue_forKey_error_, a2, a4, v12);
  }

  else
  {
    v16 = _PFEntityForManagedObject(a1);
    v17 = *(v16[19] + 32);
    if (!v17)
    {
      v17 = _resolveValidationMethods(v16);
    }

    if (!*(v17 + 8 * a5))
    {
      v19 = _PFEntityForManagedObject(a1);
      goto LABEL_22;
    }

    method_invoke();
  }

  LOBYTE(v18) = v15;
  if (a6 && (v15 & 1) == 0)
  {
    [(NSManagedObject *)a1 _chainNewError:v58 toOriginalErrorDoublePointer:v59];
  }

  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_59;
  }

  v19 = _PFEntityForManagedObject(a1);
  if ((v18 & 1) == 0)
  {
    if (!a6 || ([a3 _nonPredicateValidateValue:a2 forKey:a4 inObject:a1 error:&v58] & 1) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_22:
  v20 = [a3 _nonPredicateValidateValue:a2 forKey:a4 inObject:a1 error:v12];
  v18 = v20;
  if (a6 && (v20 & 1) == 0)
  {
LABEL_24:
    [(NSManagedObject *)a1 _chainNewError:v58 toOriginalErrorDoublePointer:v59];
LABEL_25:
    v18 = 0;
  }

  if (*a2)
  {
    if (a6)
    {
      v21 = 1;
    }

    else
    {
      v21 = v18;
    }

    if (v21 == 1)
    {
      v22 = [a3 _rawValidationPredicates];
      v50 = a3;
      v56 = [a3 _rawValidationWarnings];
      v23 = [v22 count];
      if (v23)
      {
        v24 = v23;
        v55 = v19;
        v25 = 0;
        v52 = *MEMORY[0x1E696A578];
        v51 = *MEMORY[0x1E696A250];
        v54 = a4;
        while (([objc_msgSend(v22 objectAtIndex:{v25), "evaluateWithObject:", *a2}] & 1) != 0)
        {
LABEL_47:
          if (v24 == ++v25)
          {
            goto LABEL_59;
          }
        }

        if (!a6)
        {
          goto LABEL_62;
        }

        v26 = [v56 objectAtIndex:v25];
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(v22, "objectAtIndex:", v25), @"NSValidationErrorPredicate", 0}];
        if (v26)
        {
          if ([v26 isNSString])
          {
            v28 = [objc_msgSend(objc_msgSend(v55 "managedObjectModel")];
            if (v28)
            {
              v29 = v28;
            }

            else
            {
              v29 = v26;
            }

            v30 = *a2;
            v31 = a1;
            v32 = 1550;
            goto LABEL_45;
          }

          if (![v26 isNSNumber])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v47 = MEMORY[0x1E695DF30];
              v48 = *MEMORY[0x1E695D930];
              v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Illegal validation warning: property = %@; predicate/warning index = %lu; warning = %@.", v54, v25, v26];
              objc_exception_throw([v47 exceptionWithName:v48 reason:v49 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", v54, @"NSValidationErrorKey", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", v25), @"index", v26, @"warning", *a2, @"NSValidationErrorValue", 0)}]);
            }

            v53 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v26, "userInfo")}];
            v34 = *a2;
            v35 = MEMORY[0x1E695DF90];
            if (!*a2)
            {
              v34 = [MEMORY[0x1E695DFB0] null];
            }

            [v53 addEntriesFromDictionary:{objc_msgSend(v35, "dictionaryWithObjectsAndKeys:", a1, @"NSValidationErrorObject", v54, @"NSValidationErrorKey", v34, @"NSValidationErrorValue", 0)}];
            [v53 addEntriesFromDictionary:v27];
            if ([v53 valueForKey:v52] || objc_msgSend(v26, "domain") == v51 && objc_msgSend(v26, "code") >= 1024 && objc_msgSend(v26, "code") < 2048)
            {
              v36 = MEMORY[0x1E696ABC0];
              v37 = [v26 domain];
              v38 = [v26 code];
              v39 = v36;
              v40 = v37;
              v41 = v53;
            }

            else
            {
              v42 = [MEMORY[0x1E696ABC0] errorWithDomain:v51 code:1550 userInfo:v53];
              [v53 setObject:-[NSManagedObject _substituteEntityAndProperty:inString:](a1 forKey:{v50, objc_msgSend(v42, "localizedDescription")), v52}];
              v43 = MEMORY[0x1E696ABC0];
              v44 = [v26 domain];
              v45 = [v26 code];
              v41 = [v42 userInfo];
              v39 = v43;
              v40 = v44;
              v38 = v45;
            }

            v33 = [v39 errorWithDomain:v40 code:v38 userInfo:v41];
            v58 = v33;
            a4 = v54;
            goto LABEL_46;
          }

          v32 = [v26 intValue];
          v30 = *a2;
          v31 = a1;
        }

        else
        {
          v30 = *a2;
          v31 = a1;
          v32 = 1550;
        }

        v29 = 0;
LABEL_45:
        v33 = [(NSManagedObject *)v31 _generateErrorWithCode:v32 andMessage:v29 forKey:a4 andValue:v30 additionalDetail:v27];
        v58 = v33;
LABEL_46:
        [(NSManagedObject *)a1 _chainNewError:v33 toOriginalErrorDoublePointer:v59];
        LOBYTE(v18) = 0;
        goto LABEL_47;
      }

      goto LABEL_59;
    }

LABEL_62:
    LOBYTE(v18) = 0;
    return v18 & 1;
  }

LABEL_59:
  if (a6 && (v18 & 1) == 0)
  {
    LOBYTE(v18) = 0;
    *a6 = v59[0];
  }

  return v18 & 1;
}

- (BOOL)validateForDelete:(NSError *)error
{
  v71[1] = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  if ([_PFEntityForManagedObject(self) _skipValidation])
  {
    goto LABEL_54;
  }

  if ((self->_cd_stateFlags & 0x8000) != 0)
  {
    [(NSFaultHandler *)_insertion_fault_handler fulfillFault:self->_cd_managedObjectContext withContext:?];
  }

  v5 = _PFEntityForManagedObject(self);
  if (!v5)
  {
    result = _kvcPropertysPrimitiveGetters(0);
    __break(1u);
    return result;
  }

  v6 = v5;
  v7 = v5[14];
  v8 = *(v5[13] + 40);
  v51 = _kvcPropertysPrimitiveGetters(v5);
  v9 = v6[12];
  v61 = 0;
  v11 = *(v7 + 32);
  v10 = *(v7 + 40);
  v12 = v10 + v11;
  if (v11 >= v10 + v11)
  {
LABEL_54:
    v14 = 1;
    goto LABEL_55;
  }

  v52 = v9 + 24;
  v13 = *MEMORY[0x1E696A250];
  v48 = error;
  v49 = v13;
  v14 = 1;
  v47 = v8;
  do
  {
    v15 = *(v8 + 8 * v11);
    v16 = *(v52 + 8 * v11);
    if (![v16 deleteRule])
    {
      goto LABEL_34;
    }

    _PF_Handler_Primitive_GetProperty(self, v11, v15, *(v51 + 8 * v11));
    if (!v17)
    {
      goto LABEL_34;
    }

    v18 = v17;
    if ([v16 isToMany])
    {
      v19 = [v18 count];
      if (!v19)
      {
        goto LABEL_34;
      }

      v20 = v19;
      v50 = &v45;
      v21 = MEMORY[0x1EEE9AC00](v19);
      v23 = &v45 - v22;
      if (v21 > 0x200)
      {
        v23 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v45 - v22, 8 * v21);
      }

      [v18 getObjects:v23];
      v26 = 0;
      while (([*&v23[8 * v26] isDeleted] & 1) != 0)
      {
        if (v20 == ++v26)
        {
          error = v48;
          goto LABEL_31;
        }
      }

      error = v48;
      if (v48)
      {
        v70 = @"NSValidationErrorShouldAttemptRecoveryKey";
        v71[0] = [MEMORY[0x1E696AD98] numberWithBool:1];
        v27 = -[NSManagedObject _generateErrorWithCode:andMessage:forKey:andValue:additionalDetail:](self, 1600, 0, v15, v18, [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1]);
        [(NSManagedObject *)self _chainNewError:v27 toOriginalErrorDoublePointer:&v61];
        v28 = [(NSError *)v61 domain];
        if ([(NSString *)v28 isEqualToString:v49])
        {
          if ([(NSError *)v61 code]== 1560 && ![(NSDictionary *)[(NSError *)v61 userInfo] objectForKey:@"NSValidationErrorShouldAttemptRecoveryKey"])
          {
            v36 = [(NSDictionary *)[(NSError *)v61 userInfo] objectForKey:@"NSDetailedErrors"];
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v46 = v36;
            v37 = [v36 countByEnumeratingWithState:&v57 objects:v69 count:16];
            if (!v37)
            {
LABEL_53:
              v41 = MEMORY[0x1E696ABC0];
              v67[0] = @"NSDetailedErrors";
              v67[1] = @"NSValidationErrorShouldAttemptRecoveryKey";
              v68[0] = v46;
              v68[1] = MEMORY[0x1E695E118];
              v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
              v14 = 0;
              v61 = [v41 errorWithDomain:v49 code:1560 userInfo:v42];
LABEL_31:
              if (v20 >= 0x201)
              {
                NSZoneFree(0, v23);
              }

              v8 = v47;
              if (!((error != 0) | v14 & 1))
              {
LABEL_58:
                v14 = 0;
                goto LABEL_55;
              }

              goto LABEL_34;
            }

            v38 = v37;
            v39 = *v58;
LABEL_47:
            v40 = 0;
            while (1)
            {
              if (*v58 != v39)
              {
                objc_enumerationMutation(v46);
              }

              if (![objc_msgSend(objc_msgSend(*(*(&v57 + 1) + 8 * v40) "userInfo")])
              {
                break;
              }

              if (v38 == ++v40)
              {
                v38 = [v46 countByEnumeratingWithState:&v57 objects:v69 count:16];
                if (v38)
                {
                  goto LABEL_47;
                }

                goto LABEL_53;
              }
            }
          }
        }
      }

      v14 = 0;
      goto LABEL_31;
    }

    if ([v18 isDeleted])
    {
      goto LABEL_34;
    }

    if (!error)
    {
      goto LABEL_58;
    }

    v65 = @"NSValidationErrorShouldAttemptRecoveryKey";
    v66 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v24 = -[NSManagedObject _generateErrorWithCode:andMessage:forKey:andValue:additionalDetail:](self, 1600, 0, v15, v18, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1]);
    [(NSManagedObject *)self _chainNewError:v24 toOriginalErrorDoublePointer:&v61];
    v25 = [(NSError *)v61 domain];
    if (![(NSString *)v25 isEqualToString:v49]|| [(NSError *)v61 code]!= 1560 || [(NSDictionary *)[(NSError *)v61 userInfo] objectForKey:@"NSValidationErrorShouldAttemptRecoveryKey"])
    {
      goto LABEL_20;
    }

    v29 = [(NSDictionary *)[(NSError *)v61 userInfo] objectForKey:@"NSDetailedErrors"];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v30 = [v29 countByEnumeratingWithState:&v53 objects:v64 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v54;
LABEL_38:
      v33 = 0;
      while (1)
      {
        if (*v54 != v32)
        {
          objc_enumerationMutation(v29);
        }

        if (![objc_msgSend(objc_msgSend(*(*(&v53 + 1) + 8 * v33) "userInfo")])
        {
          break;
        }

        if (v31 == ++v33)
        {
          v31 = [v29 countByEnumeratingWithState:&v53 objects:v64 count:16];
          if (v31)
          {
            goto LABEL_38;
          }

          goto LABEL_44;
        }
      }

LABEL_20:
      v14 = 0;
      goto LABEL_34;
    }

LABEL_44:
    v34 = MEMORY[0x1E696ABC0];
    v62[0] = @"NSDetailedErrors";
    v62[1] = @"NSValidationErrorShouldAttemptRecoveryKey";
    v63[0] = v29;
    v63[1] = MEMORY[0x1E695E118];
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
    v14 = 0;
    v61 = [v34 errorWithDomain:v49 code:1560 userInfo:v35];
LABEL_34:
    ++v11;
  }

  while (v11 != v12);
  if (!((error == 0) | v14 & 1))
  {
    v14 = 0;
    *error = v61;
  }

LABEL_55:
  v43 = *MEMORY[0x1E69E9840];
  return v14 & 1;
}

- (uint64_t)_generateErrorWithCode:(void *)a3 andMessage:(uint64_t)a4 forKey:(uint64_t)a5 andValue:(uint64_t)a6 additionalDetail:
{
  if (result)
  {
    v11 = result;
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
    v13 = v12;
    if (a6)
    {
      [v12 addEntriesFromDictionary:a6];
    }

    v14 = MEMORY[0x1E695DF90];
    if (!a5)
    {
      a5 = [MEMORY[0x1E695DFB0] null];
    }

    [v13 addEntriesFromDictionary:{objc_msgSend(v14, "dictionaryWithObjectsAndKeys:", v11, @"NSValidationErrorObject", a4, @"NSValidationErrorKey", a5, @"NSValidationErrorValue", 0)}];
    v15 = MEMORY[0x1E696A250];
    if (!a3)
    {
      a3 = [objc_msgSend(MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:a2 userInfo:{0), "localizedDescription"}];
    }

    v16 = [v11 entity];
    if (v16)
    {
      v17 = [objc_msgSend(v16 "propertiesByName")];
    }

    else
    {
      v17 = 0;
    }

    v18 = [(NSManagedObject *)v11 _substituteEntityAndProperty:v17 inString:a3];
    if (v18)
    {
      [v13 setObject:v18 forKey:*MEMORY[0x1E696A578]];
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = *v15;

    return [v19 errorWithDomain:v20 code:a2 userInfo:v13];
  }

  return result;
}

- (void)_chainNewError:(uint64_t *)a3 toOriginalErrorDoublePointer:
{
  if (result && a2 && a3)
  {
    result = *a3;
    if (*a3)
    {
      v5 = [objc_msgSend(result "userInfo")];
      if (!v5)
      {
        v5 = [MEMORY[0x1E695DF70] arrayWithObject:*a3];
        *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:1560 userInfo:{objc_msgSend(MEMORY[0x1E695DF90], "dictionaryWithObject:forKey:", v5, @"NSDetailedErrors"}];
      }

      return [v5 addObject:a2];
    }

    else
    {
      *a3 = a2;
    }
  }

  return result;
}

- (BOOL)validateForInsert:(NSError *)error
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  if ([_PFEntityForManagedObject(self) _skipValidation])
  {
    return 1;
  }

  return [(NSManagedObject *)self _validateForSave:?];
}

- (uint64_t)_validateForSave:(void *)a1
{
  if (!a1)
  {
LABEL_25:
    v14 = 0;
    return v14 & 1;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(a1[4], sel__validateForSave_);
  }

  v22 = 0;
  if ((*(a1 + 17) & 0x80) != 0)
  {
    [(NSFaultHandler *)_insertion_fault_handler fulfillFault:a1 withContext:a1[4]];
  }

  v21 = a2;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(a1[4], sel__validatePropertiesWithError_);
  }

  v4 = _PFEntityForManagedObject(a1);
  v5 = v4[14];
  v6 = *(v4[13] + 40);
  v7 = _kvcPropertysPrimitiveGetters(v4);
  v19 = _kvcPropertysPublicSetters(v4);
  v8 = v4[12];
  v10 = *v5;
  v9 = v5[1];
  v11 = [(objc_class *)object_getClass(a1) _useFastValidationMethod];
  if (v10 >= v9 + v10)
  {
    v14 = 1;
    return v14 & 1;
  }

  v12 = v11;
  v20 = v8 + 24;
  if (v21)
  {
    v13 = &v24;
  }

  else
  {
    v13 = 0;
  }

  v14 = 1;
  do
  {
    v24 = 0;
    v15 = *(v6 + 8 * v10);
    _PF_Handler_Primitive_GetProperty(a1, v10, v15, *(v7 + 8 * v10));
    v17 = v16;
    v23 = v16;
    if (v12)
    {
      if (([(NSManagedObject *)a1 _validateValue:*(v20 + 8 * v10) forProperty:v15 andKey:v10 withIndex:v13 error:?]& 1) != 0)
      {
        goto LABEL_18;
      }
    }

    else if ([a1 validateValue:&v23 forKey:v15 error:v13])
    {
LABEL_18:
      if (v17 != v23 && ([v17 isEqual:?] & 1) == 0)
      {
        _PF_Handler_Public_SetProperty(a1, v10, v23, v15, *(v19 + 8 * v10));
      }

      goto LABEL_21;
    }

    if (!v21)
    {
      goto LABEL_25;
    }

    [(NSManagedObject *)a1 _chainNewError:v24 toOriginalErrorDoublePointer:&v22];
    v14 = 0;
LABEL_21:
    ++v10;
    --v9;
  }

  while (v9);
  if (!((v21 == 0) | v14 & 1))
  {
    v14 = 0;
    *v21 = v22;
  }

  return v14 & 1;
}

- (BOOL)validateForUpdate:(NSError *)error
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  if ([_PFEntityForManagedObject(self) _skipValidation])
  {
    return 1;
  }

  return [(NSManagedObject *)self _validateForSave:?];
}

- (id)mutableArrayValueForKey:(id)a3
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (v5)
  {
    v6 = [objc_msgSend(v5 "propertiesByName")];
    if (v6)
    {
      v7 = v6;
      if (![v6 isTransient] || objc_msgSend(v7, "_propertyType") == 3)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"NSManagedObjects of entity '%@' do not support -mutableArrayValueForKey: for the property '%@'", -[NSEntityDescription name](-[NSManagedObject entity](self, "entity"), "name"), a3), 0}]);
      }
    }
  }

  v9.receiver = self;
  v9.super_class = NSManagedObject;
  return [(NSManagedObject *)&v9 mutableArrayValueForKey:a3];
}

- (id)mutableSetValueForKey:(id)a3
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (v5 && (v6 = v5, v7 = [*(v5 + 13) indexForKey:a3], v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = v7;
    v10 = v6[14];
    v11 = v10[14];
    v13 = v7 >= v11;
    v12 = v7 - v11;
    v13 = !v13 || v12 >= v10[15];
    if (v13)
    {
      v15 = v10[22];
      v14 = v10[23];
      v13 = v7 >= v15;
      v16 = v7 - v15;
      if (!v13 || v16 >= v14)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"NSManagedObjects of entity '%@' do not support -mutableSetValueForKey: for the property '%@'", -[NSEntityDescription name](-[NSManagedObject entity](self, "entity"), "name"), a3), 0}]);
      }
    }

    cd_stateFlags = self->_cd_stateFlags;
    if ((cd_stateFlags & 0x40) == 0)
    {
      [(NSManagedObject *)self willAccessValueForKey:a3];
    }

    _kvcPropertysPublicGetters(v6);
    v19 = [(NSManagedObject *)self _genericMutableSetValueForKey:a3 withIndex:v9 flags:0];
    if ((cd_stateFlags & 0x40) == 0)
    {
      [(NSManagedObject *)self didAccessValueForKey:a3];
    }

    return v19;
  }

  else
  {
    object_getClass(self);
    _NSKeyValueMutableSetGetterForClassAndKey();

    return _NSGetUsingKeyValueGetter();
  }
}

- (id)mutableOrderedSetValueForKey:(id)a3
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (v5 && (v6 = v5, v7 = [*(v5 + 13) indexForKey:a3], v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = v7;
    v10 = v6[14];
    v11 = v10[16];
    v13 = v7 >= v11;
    v12 = v7 - v11;
    v13 = !v13 || v12 >= v10[17];
    if (v13)
    {
      v15 = v10[24];
      v14 = v10[25];
      v13 = v7 >= v15;
      v16 = v7 - v15;
      if (!v13 || v16 >= v14)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"NSManagedObjects of entity '%@' do not support -mutableOrderedSetValueForKey: for the property '%@'", -[NSEntityDescription name](-[NSManagedObject entity](self, "entity"), "name"), a3), 0}]);
      }
    }

    cd_stateFlags = self->_cd_stateFlags;
    if ((cd_stateFlags & 0x40) == 0)
    {
      [(NSManagedObject *)self willAccessValueForKey:a3];
    }

    _kvcPropertysPublicGetters(v6);
    v8 = [(NSManagedObject *)self _genericMutableOrderedSetValueForKey:a3 withIndex:v9 flags:0];
    if ((cd_stateFlags & 0x40) == 0)
    {
      [(NSManagedObject *)self didAccessValueForKey:a3];
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = NSManagedObject;
    return [(NSManagedObject *)&v20 mutableOrderedSetValueForKey:a3];
  }

  return v8;
}

- (id)valueForKey:(NSString *)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (v5 && (v6 = v5, v7 = [*(v5 + 13) indexForKey:key], v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = v7;
    v10 = *(_kvcPropertysPublicGetters(v6) + 8 * v7);

    return _PF_Handler_Public_GetProperty(self, v9, key, v10);
  }

  else
  {
    object_getClass(self);
    _NSKeyValueGetterForClassAndKey();

    return _NSGetUsingKeyValueGetter();
  }
}

- (void)setValue:(id)value forKey:(NSString *)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v7 = _PFEntityForManagedObject(self);
  if (v7 && (v8 = v7, v9 = [*(v7 + 13) indexForKey:key], v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = v9;
    v11 = *(_kvcPropertysPublicSetters(v8) + 8 * v9);

    _PF_Handler_Public_SetProperty(self, v10, value, key, v11);
  }

  else
  {
    object_getClass(self);
    _NSKeyValueSetterForClassAndKey();

    _NSSetUsingKeyValueSetter();
  }
}

- (id)primitiveValueForKey:(NSString *)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (!v5 || ((v6 = v5, v7 = v5[13], z9dsptsiQ80etb9782fsrs98bfdle88 != 1) ? (v8 = [v7 indexForKey:key]) : (v8 = objc_msgSend(v7, "fastIndexForKnownKey:", key)), v9 = v8, v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
    object_getClass(self);
    _NSKeyValuePrimitiveGetterForClassAndKey();
    v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
    if ((self->_cd_stateFlags & 0x8000) != 0)
    {
      [_insertion_fault_handler fulfillFault:self withContext:self->_cd_managedObjectContext forIndex:v9];
    }

    return _NSGetUsingKeyValueGetter();
  }

  if (*(_kvcPropertysPrimitiveGetters(v6) + 8 * v8))
  {
    goto LABEL_10;
  }

  return [(NSManagedObject *)self _genericValueForKey:key withIndex:v9 flags:0];
}

- (void)setPrimitiveValue:(id)value forKey:(NSString *)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v7 = _PFEntityForManagedObject(self);
  if (!v7 || ((v8 = v7, v9 = v7[13], z9dsptsiQ80etb9782fsrs98bfdle88 != 1) ? (v10 = [v9 indexForKey:key]) : (v10 = objc_msgSend(v9, "fastIndexForKnownKey:", key)), v11 = v10, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    object_getClass(self);
    _NSKeyValuePrimitiveSetterForClassAndKey();
    v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_10:
    if ((self->_cd_stateFlags & 0x8000) != 0)
    {
      [_insertion_fault_handler fulfillFault:self withContext:self->_cd_managedObjectContext forIndex:v11];
    }

    _NSSetUsingKeyValueSetter();
    return;
  }

  if (*(_kvcPropertysPrimitiveSetters(v8) + 8 * v10))
  {
    goto LABEL_10;
  }

  [(NSManagedObject *)self _setGenericValue:value forKey:key withIndex:v11 flags:0];
}

- (void)setValuesForKeysWithDictionary:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (v5)
  {
    v6 = v5;
    v7 = v5[12];
    v29 = v5[13];
    v27 = _kvcPropertysPublicGetters(v5);
    v25 = _kvcPropertysPublicSetters(v6);
    v26 = [v7 values];
    v28 = [MEMORY[0x1E695DFB0] null];
    v8 = [a3 count];
    v9 = MEMORY[0x1EEE9AC00](v8);
    v12 = v24 - v11;
    v13 = 8 * v10;
    if (v9 >= 0x201)
    {
      v12 = NSAllocateScannedUncollectable();
      v15 = NSAllocateScannedUncollectable();
      [a3 getObjects:v15 andKeys:v12];
    }

    else
    {
      bzero(v24 - v11, 8 * v10);
      MEMORY[0x1EEE9AC00](v14);
      v15 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v15, v13);
      [a3 getObjects:v15 andKeys:v12];
      if (!v8)
      {
        goto LABEL_26;
      }
    }

    v24[1] = v24;
    v16 = 0;
    do
    {
      v17 = *&v12[8 * v16];
      if (*&v15[8 * v16] == v28)
      {
        v18 = 0;
      }

      else
      {
        v18 = *&v15[8 * v16];
      }

      v19 = [v29 indexForKey:*&v12[8 * v16]];
      v20 = v19;
      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        Property = [(NSManagedObject *)self valueForKey:v17];
      }

      else
      {
        Property = _PF_Handler_Public_GetProperty(self, v19, v17, *(v27 + 8 * v19));
      }

      v22 = Property;
      if (v18 != Property && ([Property isEqual:v18] & 1) == 0)
      {
        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSManagedObject *)self setValue:v18 forKey:v17];
        }

        else if ([*(v26 + 8 * v20) _isToManyRelationship])
        {
          [(NSManagedObject *)self _updateToManyRelationship:v17 from:v22 to:v18 with:v22];
        }

        else
        {
          _PF_Handler_Public_SetProperty(self, v20, v18, v17, *(v25 + 8 * v20));
        }
      }

      ++v16;
    }

    while (v8 != v16);
    if (v8 >= 0x201)
    {
      NSZoneFree(0, v12);
      NSZoneFree(0, v15);
    }
  }

  else
  {
    v30.receiver = self;
    v30.super_class = NSManagedObject;
    [(NSManagedObject *)&v30 setValuesForKeysWithDictionary:a3];
  }

LABEL_26:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)_updateToManyRelationship:(void *)a3 from:(void *)a4 to:(void *)a5 with:
{
  if (a1)
  {
    if ([a3 isNSOrderedSet])
    {
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      [NSManagedObject diffOrderedSets:a3];
      v10 = v24;
      if ([v24 count])
      {
        [a1 willChange:3 valuesAtIndexes:v10 forKey:a2];
        [a5 removeObjectsAtIndexes:v10];
        [a1 didChange:3 valuesAtIndexes:v10 forKey:a2];
      }

      v11 = v23;
      if ([v23 count])
      {
        [a1 willChange:2 valuesAtIndexes:v11 forKey:a2];
        [a5 insertObjects:v22 atIndexes:v11];
        [a1 didChange:2 valuesAtIndexes:v11 forKey:a2];
      }

      v12 = v21;
      if ([v21 count])
      {
        [a1 willChange:4 valuesAtIndexes:v12 forKey:a2];
        v13 = v20;
        [a5 removeObjectsInArray:v20];
        if ([a5 count])
        {
          [a5 insertObjects:v13 atIndexes:v12];
        }

        else
        {
          [a5 addObjectsFromArray:v13];
        }

        [a1 didChange:4 valuesAtIndexes:v12 forKey:a2];
      }
    }

    else
    {
      if ([a4 count] && (v14 = objc_msgSend(a4, "mutableCopy")) != 0)
      {
        v18 = v14;
        [v14 minusSet:a3];
      }

      else
      {
        v18 = 0;
      }

      if ([a3 count])
      {
        v15 = [a3 mutableCopy];
        v16 = v15;
        if (v15)
        {
          if (a4)
          {
            v17 = a4;
          }

          else
          {
            v17 = NSSet_EmptySet;
          }

          [v15 minusSet:v17];
        }
      }

      else
      {
        v16 = 0;
      }

      if ([v16 count])
      {
        [a1 willChangeValueForKey:a2 withSetMutation:2 usingObjects:v16];
        [a5 minusSet:v16];
        [a1 didChangeValueForKey:a2 withSetMutation:2 usingObjects:v16];
      }

      if ([v19 count])
      {
        [a1 willChangeValueForKey:a2 withSetMutation:1 usingObjects:v19];
        [a5 unionSet:v19];
        [a1 didChangeValueForKey:a2 withSetMutation:1 usingObjects:v19];
      }
    }
  }
}

- (id)dictionaryWithPropertyValues
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
    goto LABEL_3;
  }

  if (self)
  {
LABEL_3:
    v3 = [(NSManagedObject *)self _newPropertiesForRetainedTypes:__const__newAllPropertiesWithRelationshipFaultsIntact___complex andCopiedTypes:0 preserveFaults:?];
    goto LABEL_4;
  }

  v3 = 0;
LABEL_4:

  return v3;
}

- (id)dictionaryWithValuesForKeys:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (!v5)
  {
    v30.receiver = self;
    v30.super_class = NSManagedObject;
    v13 = [(NSManagedObject *)&v30 dictionaryWithValuesForKeys:a3];
LABEL_28:
    v26 = *MEMORY[0x1E69E9840];
    return v13;
  }

  v6 = v5;
  v7 = [a3 count];
  if (a3)
  {
    v8 = v7;
    if (v7)
    {
      v27 = &v27;
      MEMORY[0x1EEE9AC00](v7);
      v10 = &v27 - v9;
      if (v8 > 0x200)
      {
        v10 = NSAllocateScannedUncollectable();
        v12 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v27 - v9, 8 * v8);
        MEMORY[0x1EEE9AC00](v11);
        v12 = &v27 - ((8 * v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v12, 8 * v8);
      }

      [a3 getObjects:v10 range:{0, v8, v27}];
      v17 = v6[13];
      v18 = [v6 propertiesByName];
      v29 = _kvcPropertysPublicGetters(v6);
      v28 = [v18 values];
      v19 = [MEMORY[0x1E695DFB0] null];
      v20 = 0;
      do
      {
        v21 = *&v10[8 * v20];
        v22 = [v17 indexForKey:v21];
        if (v22 == 0x7FFFFFFFFFFFFFFFLL)
        {
          Property = [(NSManagedObject *)self valueForKey:v21];
        }

        else
        {
          v24 = v22;
          Property = _PF_Handler_Public_GetProperty(self, v22, v21, *(v29 + 8 * v22));
          if ([Property isFault] && objc_msgSend(*(v28 + 8 * v24), "_isToManyRelationship"))
          {
            [Property count];
          }
        }

        if (Property)
        {
          v25 = Property;
        }

        else
        {
          v25 = v19;
        }

        *&v12[8 * v20++] = v25;
      }

      while (v8 != v20);
      v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v12 forKeys:v10 count:v8];
      if (v8 >= 0x201)
      {
        NSZoneFree(0, v12);
        NSZoneFree(0, v10);
      }
    }

    else
    {
      v13 = NSDictionary_EmptyDictionary;
    }

    goto LABEL_28;
  }

  if (self)
  {
    v14 = [(NSManagedObject *)self _newPropertiesForRetainedTypes:__const__newAllPropertiesWithRelationshipFaultsIntact___complex andCopiedTypes:0 preserveFaults:?];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (NSDictionary)committedValuesForKeys:(NSArray *)keys
{
  v50[1] = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  if ([(NSManagedObject *)self isInserted])
  {
    p_super = NSDictionary_EmptyDictionary;
LABEL_55:
    v45 = *MEMORY[0x1E69E9840];
    return p_super;
  }

  if (self && (cd_extras = self->_cd_extras) != 0)
  {
    var1 = cd_extras->var1;
  }

  else
  {
    var1 = 0;
  }

  v8 = _PFEntityForManagedObject(self);
  v9 = v8;
  if (v8)
  {
    v10 = v8[12];
  }

  else
  {
    v10 = 0;
  }

  v11 = NSKeyValueCoding_NullValue;
  v12 = [(NSArray *)keys count];
  if (v12)
  {
    v13 = v12;
    v47 = &v46;
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = &v46 - v15;
    v17 = 8 * v14;
    if (v14 > 0x200)
    {
      v16 = NSAllocateScannedUncollectable();
      v19 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v46 - v15, v17);
      MEMORY[0x1EEE9AC00](v18);
      v19 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v19, v17);
    }

    v49 = v10 + 24;
    [(NSArray *)keys getObjects:v16 range:0, v13];
    v21 = var1;
    if (self)
    {
      v21 = var1;
      if (!var1)
      {
        v50[0] = 0x900000001;
        v21 = [(NSManagedObject *)self _newPropertiesForRetainedTypes:v50 andCopiedTypes:1 preserveFaults:?];
      }
    }

    v48 = var1;
    v22 = [(NSKnownKeysDictionary *)v21 mapping];
    v46 = v21;
    v23 = [(NSKnownKeysDictionary *)v21 values];
    for (i = 0; i != v13; ++i)
    {
      v25 = [(NSKnownKeysMappingStrategy *)v22 indexForKey:*&v16[8 * i]];
      v26 = v11;
      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = *(v23 + 8 * v25);
        v28 = *(v49 + 8 * v25);
        v29 = [v28 isTransient];
        v26 = v11;
        if ((v29 & 1) == 0)
        {
          if ([v28 _isToManyRelationship] && objc_msgSend(v27, "isFault"))
          {
            [v27 count];
          }

          if (v27)
          {
            v26 = v27;
          }

          else
          {
            v26 = v11;
          }
        }
      }

      *&v19[8 * i] = v26;
    }

    p_super = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v19 forKeys:v16 count:v13];
    if (v13 >= 0x201)
    {
      NSZoneFree(0, v19);
      NSZoneFree(0, v16);
    }

    if (!v48)
    {
    }

    goto LABEL_55;
  }

  if (var1)
  {
    v49 = [(NSKnownKeysDictionary *)var1 values];
    v47 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:[(NSKnownKeysDictionary *)var1 mapping]];
    v48 = [(NSKnownKeysDictionary *)v47 values];
    if (v9)
    {
      v20 = v9[14];
    }

    else
    {
      v20 = 0;
    }

    v33 = 0;
    v34 = v10 + 24;
    do
    {
      v35 = (v20 + 16 * dword_18592E4A4[v33]);
      v36 = *v35;
      v37 = v35[1];
      if (*v35 < (v37 + *v35))
      {
        v38 = (v48 + 8 * v36);
        v39 = (v49 + 8 * v36);
        v40 = (v34 + 8 * v36);
        do
        {
          v41 = *v40;
          if (([*v40 isTransient] & 1) == 0)
          {
            v42 = *v39;
            if ([v41 _isToManyRelationship])
            {
              [v42 count];
              v43 = v11;
              if (v42)
              {
                v43 = [v42 copy];
              }
            }

            else
            {
              v43 = v11;
              if (v42)
              {
                v43 = v42;
              }
            }

            *v38 = v43;
          }

          ++v38;
          ++v39;
          ++v40;
          --v37;
        }

        while (v37);
      }

      ++v33;
    }

    while (v33 != 3);
    p_super = &v47->super.super;
    v44 = v47;
    goto LABEL_55;
  }

  if (!self)
  {
    p_super = 0;
    goto LABEL_55;
  }

  v50[0] = 0x900000001;
  v30 = [(NSManagedObject *)self _newPropertiesForRetainedTypes:v50 andCopiedTypes:0 preserveFaults:?];
  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)mergeableStringValueForKey:(id)a3
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (v5 && (v6 = v5, v7 = [*(v5 + 13) indexForKey:a3], v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = v7;
    cd_stateFlags = self->_cd_stateFlags;
    if ((cd_stateFlags & 0x40) == 0)
    {
      [(NSManagedObject *)self willAccessValueForKey:a3];
    }

    _kvcPropertysPublicGetters(v6);
    v11 = [(NSManagedObject *)self _genericMergeableStringValueForKey:a3 withIndex:v9];
    if ((cd_stateFlags & 0x40) == 0)
    {
      [(NSManagedObject *)self didAccessValueForKey:a3];
    }

    return v11;
  }

  else
  {
    object_getClass(self);
    _NSKeyValueMutableSetGetterForClassAndKey();

    return _NSGetUsingKeyValueGetter();
  }
}

- (id)valueForUndefinedKey:(id)a3
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[<%@ %p> valueForUndefinedKey:]: the entity %@ is not key value coding-compliant for the key %@.", objc_opt_class(), self, -[NSEntityDescription name](-[NSManagedObject entity](self, "entity"), "name"), a3];
  v6 = objc_alloc(MEMORY[0x1E695DF20]);
  if (!a3)
  {
    a3 = [MEMORY[0x1E695DFB0] null];
  }

  v7 = [v6 initWithObjectsAndKeys:{self, @"NSTargetObjectUserInfoKey", a3, @"NSUnknownUserInfoKey", 0}];
  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E696AA00] reason:v5 userInfo:v7];

  [v8 raise];
  return 0;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[<%@ %p> setValue:forUndefinedKey:]: the entity %@ is not key value coding-compliant for the key %@.", objc_opt_class(), self, -[NSEntityDescription name](-[NSManagedObject entity](self, "entity"), "name"), a4];
  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  if (!a4)
  {
    a4 = [MEMORY[0x1E695DFB0] null];
  }

  v8 = [v7 initWithObjectsAndKeys:{self, @"NSTargetObjectUserInfoKey", a4, @"NSUnknownUserInfoKey", 0}];
  v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E696AA00] reason:v6 userInfo:v8];

  [v9 raise];
}

- (void)setNilValueForKey:(id)a3
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (v5 && (v6 = [v5[13] indexForKey:a3], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {

    _PF_Handler_SetNilValueForKeyIndex(self, a3, v6);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"[<%@ %p> setNilValueForKey]: instance of entity %@ could not set nil as the value for the key %@.", objc_opt_class(), self, -[NSEntityDescription name](-[NSManagedObject entity](self, "entity"), "name"), a3}];
  }
}

- (BOOL)hasPersistentChangedValues
{
  if ((self->_cd_stateFlags & 0x3F) == 0 || (self->_cd_stateFlags & 0x8000) != 0)
  {
    return 0;
  }

  cd_extras = self->_cd_extras;
  if (!cd_extras || !cd_extras->var1)
  {
    return 0;
  }

  v5 = _PFEntityForManagedObject(self);
  v6 = _kvcPropertysPrimitiveGetters(v5);
  if (v5)
  {
    v26 = v5[14];
  }

  else
  {
    v26 = 0;
  }

  v7 = self->_cd_extras;
  if (v7)
  {
    var1 = v7->var1;
  }

  else
  {
    var1 = 0;
  }

  v9 = NSKeyValueCoding_NullValue;
  v10 = [var1 values];
  v11 = 0;
  v12 = 1;
  do
  {
    v28 = v12;
    v13 = (v27 + 16 * dword_18592E4A4[v11]);
    v14 = *v13;
    v15 = v13[1];
    if (*v13 < v15 + *v13)
    {
      do
      {
        v16 = *(v10 + 8 * v14) == v9 ? 0 : *(v10 + 8 * v14);
        _PF_Handler_Primitive_GetProperty(self, v14, 0, *(v6 + 8 * v14));
        if (v16 != v17)
        {
          v18 = 1;
          if (![*(v5[12] + 24 + 8 * v14) _epsilonEquals:v17 rhs:v16 withFlags:1])
          {
            return v18;
          }
        }

        ++v14;
      }

      while (--v15);
    }

    v12 = 0;
    v11 = 1;
  }

  while ((v28 & 1) != 0);
  v19 = *(v27 + 144);
  v20 = *(v27 + 152);
  if (v19 >= v20 + v19)
  {
    return 0;
  }

  while (1)
  {
    v21 = *(v10 + 8 * v19) == v9 ? 0 : *(v10 + 8 * v19);
    _PF_Handler_Primitive_GetProperty(self, v19, 0, *(v6 + 8 * v19));
    v23 = v22;
    v24 = [v21 isFault];
    if ((v24 & [v23 isFault] & 1) == 0 && v21 != v23 && !objc_msgSend(v23, "isEqual:", v21))
    {
      break;
    }

    v18 = 0;
    ++v19;
    if (!--v20)
    {
      return v18;
    }
  }

  return 1;
}

- (NSArray)objectIDsForRelationshipNamed:(NSString *)key
{
  v3 = key;
  v47 = *MEMORY[0x1E69E9840];
  if (!_PF_Threading_Debugging_level)
  {
    if (key)
    {
      goto LABEL_3;
    }

LABEL_42:
    v5 = 0;
    goto LABEL_43;
  }

  _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  if (!v3)
  {
    goto LABEL_42;
  }

LABEL_3:
  result.location = 0;
  result.length = 0;
  v48.length = CFStringGetLength(v3);
  v48.location = 0;
  if (CFStringFindWithOptions(v3, @".", v48, 0, &result))
  {
    v49.length = result.location;
    v49.location = 0;
    v5 = CFStringCreateWithSubstring(0, v3, v49);
    v3 = v5;
  }

  else
  {
    v5 = 0;
  }

  v6 = _PFEntityForManagedObject(self);
  if (!v6 || (v7 = v6, v8 = [*(v6 + 13) indexForKey:v3], v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_43:
    v33 = MEMORY[0x1E696AEC0];
    v34 = objc_opt_class();
    v35 = [(NSEntityDescription *)[(NSManagedObject *)self entity] name];
    v36 = @"<null>";
    if (v3)
    {
      v36 = v3;
    }

    v37 = [v33 stringWithFormat:@"[<%@ %p> valueForUndefinedKey:]: the entity %@ is not key value coding-compliant for the key %@.", v34, self, v35, v36];
    v38 = objc_alloc(MEMORY[0x1E695DF20]);
    if (!v3)
    {
      v3 = [MEMORY[0x1E695DFB0] null];
    }

    v39 = [v38 initWithObjectsAndKeys:{self, @"NSTargetObjectUserInfoKey", v3, @"NSUnknownUserInfoKey", 0}];
    v40 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E696AA00] reason:v37 userInfo:v39];

    if (v5)
    {
      CFRelease(v5);
    }

    objc_exception_throw(v40);
  }

  v9 = v8;
  v10 = v7[14];
  [(NSManagedObject *)self willAccessValueForKey:v3];
  v11 = v10[12];
  v13 = v9 >= v11;
  v12 = v9 - v11;
  v13 = !v13 || v12 >= v10[13];
  if (!v13 || (v14 = v10[18], v13 = v9 >= v14, v15 = v9 - v14, v13) && v15 < v10[19])
  {
    v16 = _PF_ObjectIDsForDeferredFault(self, v9);
LABEL_17:
    v17 = v16;
    goto LABEL_18;
  }

  v20 = v10[20];
  v13 = v9 >= v20;
  v21 = v9 - v20;
  if (!v13 || v21 >= v10[21])
  {
    v22 = v10[26];
    v13 = v9 >= v22;
    v23 = v9 - v22;
    if (!v13 || v23 >= v10[27])
    {
      [(NSManagedObject *)self didAccessValueForKey:v3];
      goto LABEL_43;
    }
  }

  v24 = _kvcPropertysPrimitiveGetters(v7);
  Property = _PF_Handler_Public_GetProperty(self, v9, v3, *(v24 + 8 * v9));
  if (!Property)
  {
    v16 = [MEMORY[0x1E695DEC8] array];
    goto LABEL_17;
  }

  v26 = Property;
  v27 = v10[20];
  v13 = v9 >= v27;
  v28 = v9 - v27;
  if (v13 && v28 < v10[21])
  {
    v16 = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(Property, "objectID")}];
    goto LABEL_17;
  }

  v17 = [MEMORY[0x1E695DF70] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = [v26 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v42;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(v26);
        }

        -[NSArray addObject:](v17, "addObject:", [*(*(&v41 + 1) + 8 * i) objectID]);
      }

      v30 = [v26 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v30);
  }

LABEL_18:
  [(NSManagedObject *)self didAccessValueForKey:v3];
  if (v5)
  {
    CFRelease(v5);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (NSFetchRequest)fetchRequest
{
  v3 = [a1 entity];
  if (v3)
  {
    v4 = v3;
    v5 = objc_alloc_init(NSFetchRequest);
    [(NSFetchRequest *)v5 setEntity:v4];
    return v5;
  }

  v7 = [a1 entityName];
  if (!v7)
  {
    return 0;
  }

  return [NSFetchRequest fetchRequestWithEntityName:v7];
}

- (NSManagedObject)initWithContext:(NSManagedObjectContext *)moc
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() entity];
  v6 = v5;
  if (moc && !v5)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = [v7 stringWithUTF8String:class_getName(v8)];
    v10 = [(NSManagedObjectContext *)moc persistentStoreCoordinator];
    if (v10)
    {
      v10 = v10->_modelMap;
    }

    v6 = [(_PFModelMap *)v10 entityForClassName:v9 inContext:moc];
    if (v6)
    {
      v11 = objc_opt_class();
      v14[0] = [_PFWeakReference weakReferenceWithObject:v6];
      objc_setAssociatedObject(v11, PFEntityDescriptionAssociationKey, [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1], 0x303);
    }
  }

  result = [(NSManagedObject *)self initWithEntity:v6 insertIntoManagedObjectContext:moc];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setBindableObjectPublisher:(id)a3
{
  cd_extras = self->_cd_extras;
  if (!cd_extras)
  {
    v6 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v6 = malloc_default_zone();
    }

    cd_extras = malloc_type_zone_calloc(v6, 1uLL, 0x28uLL, 0x800402FCC0CB6uLL);
    self->_cd_extras = cd_extras;
  }

  if (cd_extras->var4)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Cannot set BindableObject publisher after it has already been set" userInfo:0]);
  }

  self->_cd_extras->var4 = a3;
}

- (id)_initWithEntity:(id)a3 withID:(id)a4 withHandler:(id)a5 withContext:(id)a6
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NSManagedObject;
  result = [(NSManagedObject *)&v11 init:a3];
  if (result)
  {
    v10 = result;
    *(result + 4) = a6;
    if (!v7)
    {
      v7 = _PFFastTemporaryIDCreation(a3);
    }

    v10[5] = v7;
    *(v10 + 4) |= 0x8400u;
    return [v10 initWithEntity:a3 insertIntoManagedObjectContext:a6];
  }

  return result;
}

- (void)_setLastSnapshot__:(void *)result
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    v4 = result[6];
    if (!v4)
    {
      if (!a2)
      {
        return result;
      }

      v5 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v5 = malloc_default_zone();
      }

      v4 = malloc_type_zone_calloc(v5, 1uLL, 0x28uLL, 0x800402FCC0CB6uLL);
      v3[6] = v4;
    }

    v8 = v4[2];
    v6 = v4 + 2;
    v7 = v8;
    v9 = v6 + 1;

    if (v8 == v2)
    {
      v2 = v7;
    }

    else
    {
      *v9 = v7;
      v9 = v6;
    }

    result = v2;
    *v9 = result;
  }

  return result;
}

- (void)_setObjectID__:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = result[5];
    if (v4 != a2)
    {

      result = a2;
      v3[5] = result;
    }
  }

  return result;
}

- (void)_setOriginalSnapshot__:(void *)result
{
  if (result)
  {
    v3 = result;
    result = result[6];
    if (!result)
    {
      if (!a2)
      {
        return result;
      }

      v4 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v4 = malloc_default_zone();
      }

      result = malloc_type_zone_calloc(v4, 1uLL, 0x28uLL, 0x800402FCC0CB6uLL);
      v3[6] = result;
    }

    v5 = result[1];
    if (v5 != a2)
    {

      result = a2;
      *(v3[6] + 8) = result;
    }
  }

  return result;
}

- (uint64_t)_commitPhotoshoperyForRelationshipAtIndex:(void *)a3 newValue:
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 48);
    if (v4)
    {
      v7 = *(v4 + 8);
      if (v7)
      {
        v8 = v7 + 24;
        v9 = *(v7 + 24 + 8 * a2);
        if (v9 != a3)
        {
          result = [*(v8 + 8 * a2) isFault];
          if (result)
          {

            result = [a3 copy];
            *(v8 + 8 * a2) = result;
          }
        }
      }

      v10 = *(v3 + 48);
      if (v10)
      {
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = v11 + 24;
          v13 = *(v11 + 24 + 8 * a2);
          if (v13 != a3)
          {
            result = [*(v12 + 8 * a2) isFault];
            if (result)
            {

              result = [a3 copy];
              *(v12 + 8 * a2) = result;
            }
          }
        }
      }
    }
  }

  return result;
}

- (NSKnownKeysDictionary)_newPropertiesForRetainedTypes:(unsigned int *)a3 andCopiedTypes:(char)a4 preserveFaults:
{
  v41 = a2;
  v42 = a3;
  v43 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(a1[4], sel__newPropertiesForRetainedTypes_andCopiedTypes_preserveFaults_);
    }

    if ((*(a1 + 17) & 0x80) != 0)
    {
      [(NSFaultHandler *)_insertion_fault_handler fulfillFault:a1 withContext:a1[4]];
    }

    v6 = _PFEntityForManagedObject(a1);
    v7 = _kvcPropertysPrimitiveGetters(v6);
    if (v6)
    {
      v8 = v6[13];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 length];
    v40 = &v38;
    v10 = MEMORY[0x1EEE9AC00](v9);
    v13 = &v38 - v12;
    v38 = v10;
    if (v10 > 0x200)
    {
      v13 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v38 - v12, 8 * v11);
    }

    v39 = v8;
    if (v6)
    {
      v14 = v6[14];
    }

    else
    {
      v14 = 0;
    }

    v15 = NSKeyValueCoding_NullValue;
    v16 = *v41;
    if (v16)
    {
      v17 = 1;
      do
      {
        v18 = (v14 + 16 * v41[v17]);
        v20 = *v18;
        v19 = v18[1];
        if (*v18 < v19 + *v18)
        {
          do
          {
            _PF_Handler_Primitive_GetProperty(a1, v20, 0, *(v7 + 8 * v20));
            v22 = v15;
            if (v21)
            {
              v22 = v21;
            }

            *&v13[8 * v20++] = v22;
            --v19;
          }

          while (v19);
        }

        v23 = v17++ == v16;
      }

      while (!v23);
    }

    v41 = *v42;
    if (v41)
    {
      v24 = 1;
      do
      {
        v25 = (v14 + 16 * v42[v24]);
        v27 = *v25;
        v26 = v25[1];
        if (*v25 < v26 + *v25)
        {
          do
          {
            _PF_Handler_Primitive_GetProperty(a1, v27, 0, *(v7 + 8 * v27));
            v29 = v28;
            v30 = v15;
            if (v29)
            {
              if ((a4 & 1) == 0 && [v29 isFault])
              {
                [v29 count];
              }

              v30 = [v29 copy];
            }

            *&v13[8 * v27++] = v30;
            --v26;
          }

          while (v26);
        }

        v23 = v24++ == v41;
      }

      while (!v23);
    }

    v31 = [NSKnownKeysDictionary alloc];
    v32 = v39;
    v33 = [(NSKnownKeysDictionary *)v31 initWithSearchStrategy:v39];
    [(NSKnownKeysDictionary *)v33 setValues:v13];
    if ([v32 length])
    {
      v34 = 0;
      do
      {
        v35 = *&v13[8 * v34];
        if (v35 != v15)
        {
        }

        ++v34;
      }

      while (v34 < [v32 length]);
    }

    if (v38 >= 0x201)
    {
      NSZoneFree(0, v13);
    }
  }

  else
  {
    v33 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v33;
}

- (NSKnownKeysDictionary)_newNestedSaveChangedValuesForParent:(_BYTE *)a1
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_63;
  }

  v3 = a1;
  v4 = _PFEntityForManagedObject(a1);
  v5 = v4;
  v6 = v4 ? v4[13] : 0;
  if ((v3[17] & 0x80) != 0)
  {
    goto LABEL_63;
  }

  v7 = *(v3 + 6);
  if (!v7 || !*(v7 + 8))
  {
    goto LABEL_63;
  }

  v8 = [a2 managedObjectContext];
  v9 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v6];
  v10 = _kvcPropertysPrimitiveGetters(v5);
  if (v5)
  {
    v47 = v5[14];
  }

  else
  {
    v47 = 0;
  }

  v11 = NSKeyValueCoding_NullValue;
  v12 = *(v3 + 6);
  if (v12)
  {
    v13 = *(v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v53 = [v13 values];
  v46 = v9;
  v52 = [(NSKnownKeysDictionary *)v9 values];
  v15 = *(v47 + 16);
  v14 = *(v47 + 24);
  if (v15 < v14 + v15)
  {
    do
    {
      if (*(v53 + 8 * v15) == v11)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(v53 + 8 * v15);
      }

      _PF_Handler_Primitive_GetProperty(v3, v15, 0, *(v10 + 8 * v15));
      if (v16 != v17)
      {
        v18 = v17;
        if (([*(v5[12] + 24 + 8 * v15) _epsilonEquals:v17 rhs:v16 withFlags:1] & 1) == 0)
        {
          v19 = v11;
          if (v18)
          {
            v19 = v18;
          }

          *(v52 + 8 * v15) = v19;
        }
      }

      ++v15;
      --v14;
    }

    while (v14);
  }

  v20 = 0;
  v21 = 1;
  do
  {
    v22 = v20;
    v23 = (v47 + 16 * dword_18592E4B0[v21]);
    v25 = *v23;
    v24 = v23[1];
    if (*v23 < v24 + *v23)
    {
      do
      {
        if (*(v53 + 8 * v25) == v11)
        {
          v26 = 0;
        }

        else
        {
          v26 = *(v53 + 8 * v25);
        }

        _PF_Handler_Primitive_GetProperty(v3, v25, 0, *(v10 + 8 * v25));
        if (v26 != v27)
        {
          v28 = v27;
          if (([v27 isEqual:v26] & 1) == 0)
          {
            v29 = v11;
            if (v28)
            {
              v29 = _PFRetainedObjectForMappedChildObjectIDInParentContext([v28 objectID], v8);
            }

            *(v52 + 8 * v25) = v29;
          }
        }

        ++v25;
        --v24;
      }

      while (v24);
    }

    v20 = 1;
    v21 = 2;
  }

  while ((v22 & 1) == 0);
  v48 = v10;
  v49 = v8;
  v30 = 3;
  v51 = v3;
  do
  {
    v31 = (v47 + 16 * dword_18592E4B0[v30]);
    v33 = *v31;
    v32 = v31[1];
    if (*v31 < v32 + *v31)
    {
      v50 = v30;
      do
      {
        if (*(v53 + 8 * v33) == v11)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(v53 + 8 * v33);
        }

        _PF_Handler_Primitive_GetProperty(v3, v33, 0, *(v10 + 8 * v33));
        v36 = v35;
        v37 = [v34 isFault];
        if ((v37 & [v36 isFault] & 1) == 0 && v34 != v36 && (objc_msgSend(v36, "isEqual:", v34) & 1) == 0)
        {
          v38 = v11;
          if (v36)
          {
            v39 = [NSKnownKeysDictionary alloc];
            if (!_PFFastMappingForChanges__pffastmappingforchanges)
            {
              v54[0] = xmmword_1E6EC2060;
              v54[1] = *off_1E6EC2070;
              _PFFastMappingForChanges__pffastmappingforchanges = [[NSKnownKeysMappingStrategy alloc] initForKeys:v54 count:4];
            }

            v38 = [(NSKnownKeysDictionary *)v39 initWithSearchStrategy:?];
            if ([v36 count])
            {
              v40 = [_PFRoutines newMutableArrayFromCollection:v36 byRemovingItems:v34];
            }

            else
            {
              v40 = 0;
            }

            if ([v34 count])
            {
              v41 = [_PFRoutines newMutableArrayFromCollection:v34 byRemovingItems:v36];
            }

            else
            {
              v41 = 0;
            }

            v42 = [(NSKnownKeysDictionary *)v38 values];
            *v42 = [_PFRoutines newMutableArrayFromCollection:v40 forParentContext:v49];

            v42[1] = [_PFRoutines newMutableArrayFromCollection:v41 forParentContext:v49];
            v30 = v50;
            if (v50 > 4)
            {
              v42[2] = [_PFRoutines newMutableOrderedSetFromCollection:v36 forParentContext:v49];
              v42[3] = [_PFRoutines newMutableOrderedSetFromCollection:v34 forParentContext:v49];
            }

            else
            {
              v42[2] = [_PFRoutines newMutableSetFromCollection:v36 forParentContext:v49];
            }

            v10 = v48;
          }

          *(v52 + 8 * v33) = v38;
          v3 = v51;
        }

        ++v33;
        --v32;
      }

      while (v32);
    }

    ++v30;
  }

  while (v30 != 7);
  v43 = v46;
  if (![(NSKnownKeysDictionary *)v46 count])
  {

LABEL_63:
    v43 = 0;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v43;
}

- (NSKnownKeysDictionary)_newSnapshotForUndo__
{
  v80 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v62 = 0;
    goto LABEL_99;
  }

  v1 = a1;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(a1[4], sel__newSnapshotForUndo__);
  }

  v2 = NSDictionary_EmptyDictionary;
  v3 = _PFEntityForManagedObject(v1);
  v4 = v3;
  if (v3)
  {
    v5 = v3[13];
  }

  else
  {
    v5 = 0;
  }

  v6 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v5];
  v76 = _kvcPropertysPrimitiveGetters(v4);
  if (v4)
  {
    v71 = v4[14];
  }

  else
  {
    v71 = 0;
  }

  v75 = NSKeyValueCoding_NullValue;
  v7 = v1[6];
  v68 = v2;
  if (v7)
  {
    v8 = *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  v77 = [v8 values];
  v73 = [(NSKnownKeysDictionary *)v6 values];
  for (i = 0; i != 4; ++i)
  {
    v10 = (v71 + 16 * dword_18592E4CC[i]);
    v11 = *v10;
    v12 = v10[1];
    if (*v10 < (v12 + *v10))
    {
      v13 = (v73 + 8 * v11);
      v14 = (v77 + 8 * v11);
      do
      {
        v15 = *v14++;
        *v13++ = v15;
        --v12;
      }

      while (v12);
    }
  }

  v67 = v6;
  v16 = 0;
  v17 = 4;
  v72 = v1;
  v18 = v75;
  do
  {
    v19 = v16;
    v20 = (v71 + 16 * dword_18592E4CC[v17]);
    v21 = *v20;
    v22 = v20[1];
    if (*v20 < v22 + *v20)
    {
      do
      {
        if (*(v77 + 8 * v21) == v18)
        {
          v23 = 0;
        }

        else
        {
          v23 = *(v77 + 8 * v21);
        }

        _PF_Handler_Primitive_GetProperty(v1, v21, 0, *(v76 + 8 * v21));
        v25 = v24;
        v26 = [v23 isFault];
        v27 = v26 & [v25 isFault];
        v18 = v75;
        if ((v27 & 1) == 0 && v23 != v25 && ([v25 isEqual:v23] & 1) == 0)
        {
          v28 = v75;
          if (v25)
          {
            if ([v25 count])
            {
              v29 = [v25 mutableCopy];
              v30 = v29;
              if (v29)
              {
                [v29 minusSet:v23];
              }
            }

            else
            {
              v30 = 0;
            }

            if ([v23 count])
            {
              v31 = [v23 mutableCopy];
              v32 = v31;
              if (v31)
              {
                [v31 minusSet:v25];
              }
            }

            else
            {
              v32 = 0;
            }

            v33 = [NSKnownKeysDictionary alloc];
            if (!_PFFastMappingForChanges__pffastmappingforchanges)
            {
              v78 = xmmword_1E6EC2060;
              v79 = *off_1E6EC2070;
              _PFFastMappingForChanges__pffastmappingforchanges = [[NSKnownKeysMappingStrategy alloc] initForKeys:&v78 count:4];
            }

            v28 = [(NSKnownKeysDictionary *)v33 initWithSearchStrategy:?];
            v34 = [(NSKnownKeysDictionary *)v28 values];
            *v34 = v30;
            v34[1] = v32;
            v18 = v75;
          }

          *(v73 + 8 * v21) = v28;
          v1 = v72;
        }

        ++v21;
        --v22;
      }

      while (v22);
    }

    v16 = 1;
    v17 = 5;
  }

  while ((v19 & 1) == 0);
  v35 = 0;
  v36 = 6;
  do
  {
    v70 = v35;
    v37 = (v71 + 16 * dword_18592E4CC[v36]);
    v39 = *v37;
    v38 = v37[1];
    v40 = v38 + v39;
    if (v39 >= v38 + v39)
    {
      goto LABEL_92;
    }

    v69 = v38 + v39;
    do
    {
      if (*(v77 + 8 * v39) == v18)
      {
        v41 = 0;
      }

      else
      {
        v41 = *(v77 + 8 * v39);
      }

      _PF_Handler_Primitive_GetProperty(v1, v39, 0, *(v76 + 8 * v39));
      v43 = v42;
      v44 = [v41 isFault];
      if (v44 & [v43 isFault] & 1) != 0 || v41 == v43 || (objc_msgSend(v43, "isEqual:", v41))
      {
        goto LABEL_91;
      }

      v45 = v18;
      if (!v43)
      {
        goto LABEL_90;
      }

      if ([v43 isEqual:v41])
      {
        v45 = NSArray_EmptyArray;
        goto LABEL_90;
      }

      v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v46 = [v43 count];
      v47 = [v41 count];
      v74 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v48 = 0;
      v49 = 0;
      while (1)
      {
        v50 = v49 >= v46 ? 0 : [v43 objectAtIndex:v49];
        v51 = v48 >= v47 ? 0 : [v41 objectAtIndex:v48];
        if (!(v50 | v51))
        {
          break;
        }

        if (!v50)
        {
          if ([v43 containsObject:v51])
          {
            goto LABEL_85;
          }

LABEL_75:
          v56 = [_NSOrderedSetDiffInsert alloc];
          if (v56)
          {
            v78.receiver = v56;
            v78.super_class = _NSOrderedSetDiffChange;
            v57 = objc_msgSendSuper2(&v78, sel_initWithObject_, v51);
            v58 = v57;
            if (v57)
            {
              *(v57 + 2) = v48;
            }
          }

          else
          {
            v58 = 0;
          }

          [v45 addObject:{v58, v67}];

          goto LABEL_85;
        }

        if (!v51)
        {
          if ([v41 containsObject:v50])
          {
            goto LABEL_73;
          }

LABEL_72:
          v55 = [[_NSOrderedSetDiffDelete alloc] initWithObject:v50];
          [v45 addObject:v55];

          goto LABEL_73;
        }

        if ([v50 isEqual:v51])
        {
          if (v48 != v49)
          {
            v59 = [_NSOrderedSetDiffMove alloc];
            if (v59)
            {
              v78.receiver = v59;
              v78.super_class = _NSOrderedSetDiffChange;
              v60 = objc_msgSendSuper2(&v78, sel_initWithObject_, v50);
              v61 = v60;
              if (v60)
              {
                *(v60 + 2) = v48;
              }
            }

            else
            {
              v61 = 0;
            }

            [v45 addObject:{v61, v67}];
          }

          ++v49;
LABEL_85:
          ++v48;
        }

        else
        {
          if (![v41 containsObject:v50])
          {
            goto LABEL_72;
          }

          if (([v43 containsObject:v51] & 1) == 0)
          {
            goto LABEL_75;
          }

          if (([v74 containsObject:v50] & 1) == 0)
          {
            v52 = [_NSOrderedSetDiffMove alloc];
            if (v52)
            {
              v78.receiver = v52;
              v78.super_class = _NSOrderedSetDiffChange;
              v53 = objc_msgSendSuper2(&v78, sel_initWithObject_, v51);
              v54 = v53;
              if (v53)
              {
                *(v53 + 2) = v48;
              }
            }

            else
            {
              v54 = 0;
            }

            [v45 addObject:{v54, v67}];

            [v74 addObject:v51];
            goto LABEL_85;
          }

LABEL_73:
          ++v49;
        }
      }

      v1 = v72;
      v18 = v75;
      v40 = v69;
LABEL_90:
      *(v73 + 8 * v39) = v45;
LABEL_91:
      ++v39;
    }

    while (v39 != v40);
LABEL_92:
    v35 = 1;
    v36 = 7;
  }

  while ((v70 & 1) == 0);
  v62 = v67;
  v63 = [(NSKnownKeysDictionary *)v67 count];
  if (v63)
  {
    v64 = v68;
  }

  else
  {
    v64 = v67;
  }

  if (!v63)
  {
    v62 = v68;
  }

LABEL_99:
  v65 = *MEMORY[0x1E69E9840];
  return v62;
}

- (NSKnownKeysDictionary)_newCommittedSnapshotValues
{
  v28[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = 0;
    goto LABEL_27;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(a1[4], sel__newCommittedSnapshotValues);
  }

  v2 = [NSKnownKeysDictionary alloc];
  v3 = _PFEntityForManagedObject(a1);
  if (v3)
  {
    v4 = v3[13];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSKnownKeysDictionary *)v2 initWithSearchStrategy:v4];
  if (([a1 isInserted] & 1) == 0)
  {
    v6 = [(NSKnownKeysDictionary *)v5 values];
    v7 = a1[6];
    if (v7)
    {
      v8 = *(v7 + 8);
      v9 = NSKeyValueCoding_NullValue;
      if (v8)
      {
        v10 = [v8 values];
        v11 = 0;
LABEL_13:
        v12 = *(_PFEntityForManagedObject(a1) + 14);
        v13 = *(v12 + 48);
        v14 = *(v12 + 56);
        if (v13 < v14 + v13)
        {
          v15 = (v6 + 8 * v13);
          v16 = (v10 + 8 * v13);
          do
          {
            v17 = v9;
            if (*v16)
            {
              v17 = *v16;
            }

            *v15++ = v17;
            ++v16;
            --v14;
          }

          while (v14);
        }

        v18 = *(_PFEntityForManagedObject(a1) + 14);
        v19 = *(v18 + 96);
        v20 = *(v18 + 104);
        if (v19 < v20 + v19)
        {
          v21 = (v6 + 8 * v19);
          v22 = (v10 + 8 * v19);
          do
          {
            v23 = *v22;
            if (*v22)
            {
              v24 = v23 == v9;
            }

            else
            {
              v24 = 1;
            }

            v25 = v9;
            if (!v24)
            {
              v25 = [v23 objectID];
            }

            *v21++ = v25;
            ++v22;
            --v20;
          }

          while (v20);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v9 = NSKeyValueCoding_NullValue;
    }

    v28[0] = 0;
    v11 = [(NSManagedObject *)a1 _newPropertiesForRetainedTypes:v28 andCopiedTypes:1 preserveFaults:?];
    v10 = [(NSKnownKeysDictionary *)v11 values];
    goto LABEL_13;
  }

LABEL_27:
  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NSManagedObject;
  return objc_msgSendSuper2(&v4, sel_automaticallyNotifiesObserversForKey_, a3);
}

- (id)_genericMergeableStringValueForKey:(id)a3 withIndex:(int64_t)a4
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v7 = _PFEntityForManagedObject(self);
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSManagedObject *)self primitiveValueForKey:a3];
  }

  else
  {
    v9 = _kvcPropertysPrimitiveGetters(v7);
    _PF_Handler_Primitive_GetProperty(self, a4, a3, *(v9 + 8 * a4));
  }

  if (v8)
  {
    v10 = [[PFMergeableStringProxy alloc] initWithContainer:self key:a3 mergeableString:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_genericMutableSetValueForKey:(id)a3 withIndex:(int64_t)a4 flags:(int64_t)a5
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v8 = _PFEntityForManagedObject(self);
  v9 = v8;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(NSManagedObject *)self primitiveValueForKey:a3];
  }

  else
  {
    v11 = _kvcPropertysPrimitiveGetters(v8);
    _PF_Handler_Primitive_GetProperty(self, a4, a3, *(v11 + 8 * a4));
  }

  v12 = v10;
  if (v10)
  {
    Class = object_getClass(self);
    if (Class == objc_opt_class() || (v14 = *(_kvcPropertysPublicRelationshipMutators(v9) + 8 * a4)) == 0)
    {
      v15 = [[_NSNotifyingWrapperMutableSet alloc] initWithContainer:self key:a3 mutableSet:v12];
    }

    else
    {
      v15 = [[_NSProxyWrapperMutableSet alloc] initWithContainer:a3 key:v12 mutableSet:v14 mutationMethods:?];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_genericMutableOrderedSetValueForKey:(id)a3 withIndex:(int64_t)a4 flags:(int64_t)a5
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v8 = _PFEntityForManagedObject(self);
  v9 = v8;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(NSManagedObject *)self primitiveValueForKey:a3];
  }

  else
  {
    v11 = _kvcPropertysPrimitiveGetters(v8);
    _PF_Handler_Primitive_GetProperty(self, a4, a3, *(v11 + 8 * a4));
  }

  v12 = v10;
  if (v10)
  {
    Class = object_getClass(self);
    if (Class == objc_opt_class() || (v14 = *(_kvcPropertysPublicRelationshipMutators(v9) + 8 * a4)) == 0)
    {
      v15 = [[_NSNotifyingWrapperMutableOrderedSet alloc] initWithContainer:self key:a3 mutableOrderedSet:v12];
    }

    else
    {
      v15 = [[_NSProxyWrapperMutableOrderedSet alloc] initWithContainer:a3 key:v12 mutableOrderedSet:v14 mutationMethods:?];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_maintainInverseRelationship:(uint64_t *)a1 forProperty:(void *)a2 oldDestination:(uint64_t *)a3 newDestination:(uint64_t *)a4
{
  if (!a1 || a4 == a3)
  {
    return;
  }

  v8 = objc_autoreleasePoolPush();
  if (a3 && (a3 == a1 || (a3[2] & 0x800) == 0))
  {
    if (a2)
    {
      v55 = objc_autoreleasePoolPush();
      v9 = [a2 isToMany];
      v10 = [a2 name];
      v11 = [a2 _entitysReferenceID];
      v12 = [a2 entity];
      v13 = [a3 entity];
      v14 = v13;
      if (v13 != v12)
      {
        v11 = [v13 _offsetRelationshipIndex:v11 fromSuperEntity:v12 andIsToMany:v9];
      }

      if (!v9)
      {
        v23 = a1[4];
        v24 = v55;
        if (!v23 || (*(v23 + 42) & 2) == 0 || (!*(_kvcPropertysPrimitiveGetters(v14) + 8 * v11) ? (v25 = [a3 _genericValueForKey:v10 withIndex:v11 flags:0]) : (v25 = _NSGetUsingKeyValueGetter()), v25 == a1))
        {
          v28 = _kvcPropertysPublicSetters(v14);
          _PF_Handler_Public_SetProperty(a3, v11, 0, v10, *(v28 + 8 * v11));
        }

        goto LABEL_39;
      }

      v56 = a1;
      v15 = _PFEntityForManagedObject(a3);
      v16 = [objc_msgSend(v15 "propertiesByName")];
      v17 = *(_kvcPropertysPrimitiveGetters(v15) + 8 * v11);
      LODWORD(v16) = [v16 isOrdered];
      [a3 willAccessValueForKey:v10];
      _PF_Handler_Primitive_GetProperty(a3, v11, v10, v17);
      v19 = v18;
      if (v16)
      {
        if (v18)
        {
          v20 = [v18 indexOfObject:a1];
          [a3 didAccessValueForKey:v10];
          if (v20 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v21 = v19;
            v22 = *(_kvcPropertysPublicRelationshipMutators(v15) + 8 * v11);
            if (v22)
            {
              if (*(v22 + 16))
              {
                goto LABEL_27;
              }

              v31 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v20];
LABEL_36:
              v30 = v31;
              v32 = *(v22 + 32);
              method_invoke();
              goto LABEL_37;
            }

            v29 = v20;
            v30 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v20];
            [a3 willChange:3 valuesAtIndexes:v30 forKey:v10];
            [v19 removeObjectAtIndex:v29];
            [a3 didChange:3 valuesAtIndexes:v30 forKey:v10];
            goto LABEL_37;
          }

          goto LABEL_38;
        }
      }

      else if (v18)
      {
        v26 = [v18 containsObject:a1];
        [a3 didAccessValueForKey:v10];
        if (v26)
        {
          v27 = v19;
          v22 = *(_kvcPropertysPublicRelationshipMutators(v15) + 8 * v11);
          if (v22)
          {
            if (*(v22 + 16))
            {
LABEL_27:
              method_invoke();
              goto LABEL_38;
            }

            v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v56 count:1];
            goto LABEL_36;
          }

          v30 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v56 count:1];
          [a3 willChangeValueForKey:v10 withSetMutation:2 usingObjects:v30];
          [v19 removeObject:v56];
          [a3 didChangeValueForKey:v10 withSetMutation:2 usingObjects:v30];
LABEL_37:
        }

LABEL_38:
        v24 = v55;
LABEL_39:
        objc_autoreleasePoolPop(v24);
        goto LABEL_40;
      }

      [a3 didAccessValueForKey:v10];
      goto LABEL_38;
    }

    if (([a3 hasChanges] & 1) == 0)
    {
      _PFFastMOCObjectWillChange(a1[4], a3);
    }
  }

LABEL_40:
  if (a4 && (a4 == a1 || (a4[2] & 0x800) == 0))
  {
    if (a2)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = [a2 isToMany];
      v35 = [a2 name];
      v36 = [a2 _entitysReferenceID];
      v37 = [a2 entity];
      v38 = [a4 entity];
      v39 = v38;
      if (v38 != v37)
      {
        v36 = [v38 _offsetRelationshipIndex:v36 fromSuperEntity:v37 andIsToMany:v34];
      }

      if (!v34)
      {
        v48 = _kvcPropertysPublicSetters(v39);
        _PF_Handler_Public_SetProperty(a4, v36, a1, v35, *(v48 + 8 * v36));
        goto LABEL_54;
      }

      v56 = a1;
      v40 = _PFEntityForManagedObject(a4);
      v41 = *(_kvcPropertysPrimitiveGetters(v40) + 8 * v36);
      v42 = [objc_msgSend(objc_msgSend(v40 "propertiesByName")];
      [a4 willAccessValueForKey:v35];
      _PF_Handler_Primitive_GetProperty(a4, v36, v35, v41);
      v44 = v43;
      [a4 didAccessValueForKey:v35];
      if ([v44 containsObject:a1])
      {
LABEL_54:
        objc_autoreleasePoolPop(v33);
        goto LABEL_55;
      }

      v45 = v44;
      if (v42)
      {
        v46 = [v44 count];
        v47 = *(_kvcPropertysPublicRelationshipMutators(v40) + 8 * v36);
        if (!v47)
        {
          v50 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v46];
          [a4 willChange:2 valuesAtIndexes:v50 forKey:v35];
          [v44 addObject:a1];
          [a4 didChange:2 valuesAtIndexes:v50 forKey:v35];

          goto LABEL_54;
        }

        if (*(v47 + 8))
        {
          goto LABEL_51;
        }

        v51 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v46];
        v52 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&v56 count:1];
        v53 = *(v47 + 24);
        method_invoke();
      }

      else
      {
        v49 = *(_kvcPropertysPublicRelationshipMutators(v40) + 8 * v36);
        if (v49)
        {
          if (*(v49 + 8))
          {
LABEL_51:
            method_invoke();
            goto LABEL_54;
          }

          v51 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v56 count:1];
          v54 = *(v49 + 24);
          method_invoke();
        }

        else
        {
          v51 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v56 count:1];
          [a4 willChangeValueForKey:v35 withSetMutation:1 usingObjects:v51];
          [v44 addObject:v56];
          [a4 didChangeValueForKey:v35 withSetMutation:1 usingObjects:v51];
        }
      }

      goto LABEL_54;
    }

    _PFFastMOCObjectWillChange(a1[4], a4);
  }

LABEL_55:

  objc_autoreleasePoolPop(v8);
}

- (void)_maintainInverseRelationship:(uint64_t *)a1 forProperty:(void *)a2 forChange:(uint64_t)a3 onSet:(void *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = [a4 count];
    if (v8)
    {
      v9 = v8;
      if (v8 >= 0x201)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = (8 * v10 + 15) & 0xFFFFFFFFFFFFFFF0;
      v12 = v17 - v11;
      if (v8 > 0x200)
      {
        v12 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v17 - v11, 8 * v8);
      }

      [a4 getObjects:v12];
      for (i = 0; i != v9; ++i)
      {
        v14 = *&v12[8 * i];
        if (a3 == 2)
        {
          v15 = 0;
        }

        else
        {
          v15 = *&v12[8 * i];
          v14 = 0;
        }

        [NSManagedObject _maintainInverseRelationship:a1 forProperty:a2 oldDestination:v15 newDestination:v14];
      }

      if (v9 >= 0x201)
      {
        NSZoneFree(0, v12);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_didChangeValue:(id)a3 forRelationship:(id)a4 named:(id)a5 withInverse:(id)a6
{
  v37[1] = *MEMORY[0x1E69E9840];
  if ([a6 isReadOnly])
  {
    v34 = MEMORY[0x1E695DF30];
    v35 = *MEMORY[0x1E695D930];
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot maintain read-only inverse relationship %@ for relationship: %@.", objc_msgSend(a6, "name"), objc_msgSend(a4, "name")];
    objc_exception_throw([v34 exceptionWithName:v35 reason:v36 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", objc_msgSend(a4, "name"), @"key", objc_msgSend(a6, "name"), @"inverse", 0)}]);
  }

  v10 = [a3 objectForKey:*MEMORY[0x1E696A500]];
  v11 = [a3 objectForKey:*MEMORY[0x1E696A4F0]];
  if ([v10 isEqual:NSKeyValueCoding_NullValue])
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  if ([v11 isEqual:NSKeyValueCoding_NullValue])
  {
    v11 = 0;
  }

  if (v12 | v11)
  {
    v13 = v12 == v11;
  }

  else
  {
    v13 = 1;
  }

  if (!v13 && ((objc_opt_respondsToSelector() & 1) == 0 || ([v12 _isIdenticalFault:v11] & 1) == 0))
  {
    self->_cd_stateFlags |= 0x800u;
    if (![a4 isToMany])
    {
      [NSManagedObject _maintainInverseRelationship:a6 forProperty:v12 oldDestination:v11 newDestination:?];
      goto LABEL_29;
    }

    v14 = [objc_msgSend(a3 objectForKey:{*MEMORY[0x1E696A4E8]), "intValue"}];
    if (v14 > 2)
    {
      if (v14 != 4)
      {
        if (v14 != 3)
        {
          goto LABEL_29;
        }

        v15 = self;
        v16 = a6;
        v17 = 3;
        v18 = v12;
LABEL_28:
        [NSManagedObject _maintainInverseRelationship:v15 forProperty:v16 forChange:v17 onSet:v18];
        goto LABEL_29;
      }

      [NSManagedObject _maintainInverseRelationship:a6 forProperty:3 forChange:v12 onSet:?];
    }

    else
    {
      if (v14 == 1)
      {
        v19 = [v12 count];
        v20 = [v11 count];
        v21 = [a4 isOrdered];
        v22 = v21;
        if (v21)
        {
          if (v19)
          {
            MEMORY[0x1EEE9AC00](v21);
            v24 = v37 - v23;
            if (v19 > 0x200)
            {
              v24 = NSAllocateScannedUncollectable();
            }

            else
            {
              bzero(v37 - v23, 8 * v19);
            }

            [v12 getObjects:v24];
            v21 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v24 count:v19];
            v12 = v21;
            if (v19 >= 0x201)
            {
              NSZoneFree(0, v24);
            }
          }

          else
          {
            v12 = NSSet_EmptySet;
          }

          if (v20)
          {
            MEMORY[0x1EEE9AC00](v21);
            v27 = v37 - v26;
            if (v20 > 0x200)
            {
              v27 = NSAllocateScannedUncollectable();
            }

            else
            {
              bzero(v37 - v26, 8 * v20);
            }

            [v11 getObjects:v27];
            v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v27 count:v20];
            if (v20 >= 0x201)
            {
              NSZoneFree(0, v27);
            }
          }

          else
          {
            v11 = NSSet_EmptySet;
          }
        }

        else
        {
          if (!v11)
          {
            v11 = NSSet_EmptySet;
          }

          if (!v12)
          {
            v12 = NSSet_EmptySet;
          }
        }

        if (([v12 isEqualToSet:v11] & 1) == 0)
        {
          if ([v11 count])
          {
            v28 = [v11 mutableCopy];
            v29 = v28;
            if (v28)
            {
              [v28 minusSet:v12];
            }
          }

          else
          {
            v29 = 0;
          }

          if ([v12 count])
          {
            v30 = [v12 mutableCopy];
            v31 = v30;
            if (v30)
            {
              [v30 minusSet:v11];
            }
          }

          else
          {
            v31 = 0;
          }

          if ([v31 count])
          {
            [NSManagedObject _maintainInverseRelationship:a6 forProperty:3 forChange:v31 onSet:?];
          }

          if ([v29 count])
          {
            [NSManagedObject _maintainInverseRelationship:a6 forProperty:2 forChange:v29 onSet:?];
          }
        }

        if (v19)
        {
          v32 = v22;
        }

        else
        {
          v32 = 0;
        }

        if (v32 == 1)
        {
        }

        if (v20)
        {
          v33 = v22;
        }

        else
        {
          v33 = 0;
        }

        if (v33 == 1)
        {
        }

        goto LABEL_29;
      }

      if (v14 != 2)
      {
LABEL_29:
        self->_cd_stateFlags &= ~0x800u;
        goto LABEL_30;
      }
    }

    v15 = self;
    v16 = a6;
    v17 = 2;
    v18 = v11;
    goto LABEL_28;
  }

LABEL_30:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)_propagateDelete:(void *)a1
{
  v75 = a2;
  v85 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(a1[4], sel__propagateDelete_);
    }

    v3 = _PFEntityForManagedObject(a1);
    v4 = a1;
    v5 = v3;
    if ((a1[2] & 0x80) != 0)
    {
      v76 = 0;
    }

    else
    {
      v76 = a1[4];
    }

    v6 = v3[13];
    v72 = v3[14];
    v7 = *(v6 + 40);
    v80 = v3[12] + 24;
    v81 = v7;
    v78 = _kvcPropertysPrimitiveGetters(v3);
    v8 = _kvcPropertysPublicSetters(v5);
    v9 = *(a1 + 4);
    v4[4] = v9 | 0x800;
    v10 = v4;
    if ((v9 & 0x8000) != 0)
    {
      [(NSFaultHandler *)_insertion_fault_handler fulfillFault:v4 withContext:*(v4 + 4)];
    }

    v69 = v9 & 0x800;
    v83 = 10;
    v84 = 6;
    v11 = &v84;
    v12 = 1;
    v79 = v4;
    do
    {
      LODWORD(v82) = v12;
      v77 = objc_autoreleasePoolPush();
      v13 = (v72 + 16 * *v11);
      v15 = *v13;
      v14 = v13[1];
      v16 = v75;
      if (*v13 < v14 + *v13)
      {
        do
        {
          v17 = *(v80 + 8 * v15);
          v18 = *(v81 + 8 * v15);
          v19 = [v17 deleteRule];
          if (!v19)
          {
            goto LABEL_28;
          }

          v20 = v19;
          if (v19 == 3 && (v16 & 2) == 0)
          {
            goto LABEL_28;
          }

          _PF_Handler_Primitive_GetProperty(v10, v15, v18, *(v78 + 8 * v15));
          if (!v21)
          {
            goto LABEL_28;
          }

          v22 = v21;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __break(1u);
          }

          if ((v16 & 2) == 0 && (v20 - 1) > 1)
          {
            goto LABEL_28;
          }

          v23 = [v17 inverseRelationship];
          v24 = v22;
          _PF_Handler_Public_SetProperty(v10, v15, 0, v18, *(v8 + 8 * v15));
          if (v23)
          {
            if (([v23 isToMany] & 1) == 0)
            {
              v25 = [v22 entity];
              v26 = [v23 entity];
              v27 = [v23 _entitysReferenceID];
              if (v25 != v26)
              {
                v27 = [v25 _offsetRelationshipIndex:v27 fromSuperEntity:v26 andIsToMany:0];
              }

              v28 = *(_kvcPropertysPrimitiveGetters(v25) + 8 * v27);
              _PF_Handler_Primitive_GetProperty(v22, v27, [v23 name], v28);
              v10 = v79;
              v16 = v75;
              if (v29 != v79)
              {
                goto LABEL_27;
              }
            }

            [NSManagedObject _maintainInverseRelationship:v10 forProperty:v23 oldDestination:v22 newDestination:0];
          }

          if (v20 == 2 && ([v22 isDeleted] & 1) == 0)
          {
            [v76 deleteObject:v22];
          }

LABEL_27:

LABEL_28:
          ++v15;
          --v14;
        }

        while (v14);
      }

      objc_autoreleasePoolPop(v77);
      v12 = 0;
      v11 = &v83;
    }

    while ((v82 & 1) != 0);
    v83 = 13;
    v84 = 9;
    v30 = &v84;
    v31 = 1;
    v32 = v72;
    while (1)
    {
      v71 = v31;
      v70 = objc_autoreleasePoolPush();
      v33 = (v32 + 16 * *v30);
      v35 = *v33;
      v34 = v33[1];
      v36 = v34 + v35;
      v37 = v75;
      if (v35 < v34 + v35)
      {
        break;
      }

LABEL_66:
      objc_autoreleasePoolPop(v70);
      v31 = 0;
      v30 = &v83;
      if ((v71 & 1) == 0)
      {
        *(v79 + 4) = v79[2] & 0xFFFFF7FF | v69;
        goto LABEL_68;
      }
    }

    v73 = v34 + v35;
    while (1)
    {
      v38 = *(v80 + 8 * v35);
      v39 = *(v81 + 8 * v35);
      v40 = [v38 deleteRule];
      if (v40)
      {
        v41 = v40;
        if (v40 != 3 || (v37 & 2) != 0)
        {
          _PF_Handler_Primitive_GetProperty(v79, v35, v39, *(v78 + 8 * v35));
          if (v42)
          {
            v43 = v42;
            if ([v42 count])
            {
              if ((v37 & 2) != 0 || (v41 - 1) <= 1)
              {
                v44 = [v38 inverseRelationship];
                v45 = [v44 isToMany];
                v46 = [v43 allObjects];
                v47 = [v46 count];
                v74 = v68;
                MEMORY[0x1EEE9AC00](v47);
                if (v47 > 0x200)
                {
                  v51 = NSAllocateScannedUncollectable();
                }

                else
                {
                  v50 = &v68[-v49];
                  bzero(&v68[-v49], 8 * v48);
                  v51 = v50;
                }

                v52 = v79;
                v82 = v51;
                [v46 getObjects:v51 range:{0, v47}];
                v53 = *(v32 + 128);
                v54 = v35 >= v53;
                v55 = v35 - v53;
                if (v54 && v55 < *(v32 + 136))
                {
                  v56 = [v52 mutableOrderedSetValueForKey:v39];
                }

                else
                {
                  v56 = [v52 mutableSetValueForKey:v39];
                }

                [v56 removeAllObjects];
                if (v47)
                {
                  v57 = 0;
                  v77 = v47;
                  while (1)
                  {
                    v58 = objc_autoreleasePoolPush();
                    v59 = v82[v57];
                    if (v44)
                    {
                      if ((v45 & 1) == 0)
                      {
                        v60 = v45;
                        v61 = [v82[v57] entity];
                        v62 = [v44 entity];
                        v63 = [v44 _entitysReferenceID];
                        if (v61 != v62)
                        {
                          v63 = [v61 _offsetRelationshipIndex:v63 fromSuperEntity:v62 andIsToMany:0];
                        }

                        v64 = *(_kvcPropertysPrimitiveGetters(v61) + 8 * v63);
                        _PF_Handler_Primitive_GetProperty(v59, v63, [v44 name], v64);
                        v52 = v79;
                        v45 = v60;
                        v47 = v77;
                        if (v65 != v79)
                        {
                          v66 = 1;
                          goto LABEL_58;
                        }
                      }

                      [NSManagedObject _maintainInverseRelationship:v52 forProperty:v44 oldDestination:v59 newDestination:0];
                    }

                    v66 = 0;
LABEL_58:
                    if (v41 == 2 && ((v66 | [v59 isDeleted]) & 1) == 0)
                    {
                      [v76 deleteObject:v59];
                    }

                    objc_autoreleasePoolPop(v58);
                    if (v47 == ++v57)
                    {
                      v37 = v75;
                      v32 = v72;
                      if (v47 >= 0x201)
                      {
                        NSZoneFree(0, v82);
                      }

                      break;
                    }
                  }
                }

                v36 = v73;
              }
            }
          }
        }
      }

      if (++v35 == v36)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_68:
  v67 = *MEMORY[0x1E69E9840];
}

- (void)_substituteEntityAndProperty:(void *)a3 inString:
{
  v3 = a3;
  if (a2)
  {
    if (a3)
    {
      v5 = _PFEntityForManagedObject(a1);
      v6 = [objc_msgSend(v5 "managedObjectModel")];
      v7 = [v6 localizedEntityNameForEntity:v5];
      v8 = [v6 localizedPropertyNameForProperty:a2];
      if (v7 | v8)
      {
        v9 = v8;
        v10 = [v3 mutableCopyWithZone:0];
        v3 = v10;
        if (v7)
        {
          [v10 replaceOccurrencesOfString:@"%{ENTITY}@" withString:v7 options:2 range:{0, objc_msgSend(v10, "length")}];
        }

        if (v9)
        {
          [v3 replaceOccurrencesOfString:@"%{PROPERTY}@" withString:v9 options:2 range:{0, objc_msgSend(v3, "length")}];
        }

        v11 = v3;
      }
    }
  }

  return v3;
}

- (id)diffOrderedSets:(void *)a1 :(void *)a2 :(id *)a3 :(void *)a4 :(id *)a5 :(id *)a6 :(id *)a7
{
  v7 = a7;
  v9 = a5;
  v91 = *MEMORY[0x1E69E9840];
  v86 = a3;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  v13 = [a2 count];
  v88 = a1;
  v14 = [a1 count];
  v15 = MEMORY[0x1EEE9AC00](v14);
  v18 = v79 - v17;
  if (v15 > 0x200)
  {
    v19 = NSAllocateScannedUncollectable();
    v18 = v19;
  }

  else
  {
    bzero(v79 - v17, 8 * v16);
  }

  MEMORY[0x1EEE9AC00](v19);
  v22 = v79 - v21;
  v87 = a4;
  if (v13 > 0x200)
  {
    v22 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v79 - v21, 8 * v20);
  }

  v23 = [a2 getObjects:v22 range:{0, v13}];
  MEMORY[0x1EEE9AC00](v23);
  v26 = 8 * v24;
  v83 = v27;
  if (v27 > 0x200)
  {
    v89 = NSAllocateScannedUncollectable();
    v90 = NSAllocateScannedUncollectable();
  }

  else
  {
    v89 = v79 - v25;
    bzero(v79 - v25, 8 * v24);
    MEMORY[0x1EEE9AC00](v28);
    v90 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v90, v26);
  }

  v82 = a2;
  v84 = a6;
  [v88 getObjects:v18 range:{0, v14}];
  qsort_b(v18, v14, 8uLL, &__block_literal_global_7);
  qsort_b(v22, v13, 8uLL, &__block_literal_global_7);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (v14)
  {
    v33 = v89;
    if (v13)
    {
      v32 = 0;
      v31 = 0;
      v30 = 0;
      v29 = 0;
      do
      {
        v34 = *&v18[8 * v30];
        v35 = *&v22[8 * v29];
        if (v34 >= v35)
        {
          if (v34 == v35)
          {
            ++v30;
          }

          else
          {
            *&v90[8 * v31++] = v35;
          }

          ++v29;
        }

        else
        {
          *&v33[8 * v32++] = v34;
          ++v30;
        }
      }

      while (v30 < v14 && v29 < v13);
    }
  }

  else
  {
    v33 = v89;
  }

  v36 = v14 - v30;
  if (v14 > v30)
  {
    v37 = v36 + v32;
    v38 = &v33[8 * v32];
    v39 = &v18[8 * v30];
    do
    {
      v40 = *v39;
      v39 += 8;
      *v38 = v40;
      v38 += 8;
      --v36;
    }

    while (v36);
    v32 = v37;
  }

  v41 = v13 - v29;
  if (v13 > v29)
  {
    v42 = v41 + v31;
    v43 = &v90[8 * v31];
    v44 = &v22[8 * v29];
    do
    {
      v45 = *v44;
      v44 += 8;
      *v43 = v45;
      v43 += 8;
      --v41;
    }

    while (v41);
    v31 = v42;
  }

  v85 = v7;
  v81 = v18;
  if (v32)
  {
    [v88 getObjects:v18 range:{0, v14}];
    v46 = [MEMORY[0x1E696AD50] indexSet];
    if (v14)
    {
      v47 = 0;
      v48 = v81;
      do
      {
        if (bsearch_b(v48, v89, v32, 8uLL, &__block_literal_global_7))
        {
          [v46 addIndex:v47];
        }

        ++v47;
        v48 += 8;
      }

      while (v14 != v47);
    }

    v49 = v86;
    *v86 = v46;
    v50 = v46;
    v32 = [v88 mutableCopy];
    [v32 removeObjectsAtIndexes:*v49];
    v7 = v85;
  }

  v51 = [v82 getObjects:v22 range:{0, v13}];
  if (v31)
  {
    v82 = v9;
    v79[1] = v79;
    v80 = v32;
    MEMORY[0x1EEE9AC00](v51);
    v53 = v79 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = [MEMORY[0x1E696AD50] indexSet];
    if (v13)
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      do
      {
        if (bsearch_b(&v22[v55], v90, v31, 8uLL, &__block_literal_global_7))
        {
          [v54 addIndex:v56];
          *&v53[8 * v57++] = *&v22[8 * v56];
        }

        ++v56;
        v55 += 8;
      }

      while (v13 != v56);
    }

    else
    {
      v57 = 0;
    }

    v58 = v87;
    *v87 = v54;
    v59 = v54;
    v32 = v80;
    if (!v80)
    {
      v32 = [v88 mutableCopy];
    }

    v60 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v53 count:v57];
    v9 = v82;
    *v82 = v60;
    [v32 insertObjects:v60 atIndexes:*v58];
    v7 = v85;
  }

  if (v32)
  {
    v61 = v32;
  }

  else
  {
    v61 = v88;
  }

  v62 = [v61 count];
  v63 = MEMORY[0x1EEE9AC00](v62);
  v66 = v79 - v65;
  if (v63 > 0x200)
  {
    v66 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v79 - v65, 8 * v64);
  }

  [v61 getObjects:v66 range:{0, v62}];
  v67 = [MEMORY[0x1E696AD50] indexSet];
  v68 = [MEMORY[0x1E695DF70] array];
  if (v62)
  {
    for (i = 0; i != v62; ++i)
    {
      if (*&v22[8 * i] != *&v66[8 * i])
      {
        [v67 addIndex:i];
        [v68 addObject:*&v22[8 * i]];
      }
    }
  }

  v70 = [v67 count];
  v71 = v84;
  if (v70)
  {
    *v71 = v67;
    *v7 = v68;
  }

  if (v14 >= 0x201)
  {
    NSZoneFree(0, v81);
  }

  v72 = v87;
  if (v13 >= 0x201)
  {
    NSZoneFree(0, v22);
  }

  if (v83 >= 0x201)
  {
    NSZoneFree(0, v89);
    NSZoneFree(0, v90);
  }

  if (v62 >= 0x201)
  {
    NSZoneFree(0, v66);
  }

  v73 = *v86;
  v74 = *v72;
  v75 = *v9;
  v76 = *v71;
  result = *v7;
  v78 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __61__NSManagedObject__NSInternalMethods__diffOrderedSets_____::__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 > *a3)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  if (*a2 == *a3)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (void)_genericUpdateFromSnapshot:(_DWORD *)a1
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = _PFEntityForManagedObject(a1);
  v5 = [v4 propertiesByName];
  v24 = _kvcPropertysPrimitiveGetters(v4);
  v22 = _kvcPropertysPrimitiveSetters(v4);
  if (v4)
  {
    v26 = v4[13];
  }

  else
  {
    v26 = 0;
  }

  v23 = [v5 values];
  v25 = [MEMORY[0x1E695DFB0] null];
  [a1 willAccessValueForKey:0];
  a1[4] |= 0x800u;
  v6 = [a2 count];
  v7 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = 8 * v8;
  if (v7 >= 0x201)
  {
    v10 = NSAllocateScannedUncollectable();
    v13 = NSAllocateScannedUncollectable();
    [a2 getObjects:v13 andKeys:v10];
  }

  else
  {
    bzero(&v22 - v9, 8 * v8);
    MEMORY[0x1EEE9AC00](v12);
    v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v13, v11);
    [a2 getObjects:v13 andKeys:v10];
    if (!v6)
    {
      goto LABEL_26;
    }
  }

  v14 = 0;
  do
  {
    v15 = *&v10[8 * v14];
    if (*&v13[8 * v14] == v25)
    {
      v16 = 0;
    }

    else
    {
      v16 = *&v13[8 * v14];
    }

    v17 = [v26 indexForKey:*&v10[8 * v14]];
    v18 = v17;
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [a1 primitiveValueForKey:v15];
    }

    else
    {
      _PF_Handler_Primitive_GetProperty(a1, v17, v15, *(v24 + 8 * v17));
    }

    v20 = v19;
    if (v16 != v19 && ([v19 isEqual:v16] & 1) == 0)
    {
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [a1 willChangeValueForKey:v15];
        [a1 setPrimitiveValue:v16 forKey:v15];
      }

      else
      {
        if ([*(v23 + 8 * v18) _isToManyRelationship])
        {
          [(NSManagedObject *)a1 _updateToManyRelationship:v15 from:v20 to:v16 with:v20];
          goto LABEL_23;
        }

        [a1 willChangeValueForKey:v15];
        _PF_Handler_Primitive_SetProperty(a1, v18, v16, v15, *(v22 + 8 * v18));
      }

      [a1 didChangeValueForKey:v15];
    }

LABEL_23:
    ++v14;
  }

  while (v6 != v14);
  if (v6 >= 0x201)
  {
    NSZoneFree(0, v10);
    NSZoneFree(0, v13);
  }

LABEL_26:
  a1[4] &= ~0x800u;
  v21 = *MEMORY[0x1E69E9840];
}

- (void)_updateFromSnapshot:(uint64_t)a1
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_36:
    v31 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = _PFEntityForManagedObject(a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4[13];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a2 mapping] == v6)
  {
    v8 = *(a1 + 16);
    if ((v8 & 0x8000) != 0)
    {
      [(NSFaultHandler *)_insertion_fault_handler fulfillFault:a1 withContext:*(a1 + 32)];
      v8 = *(a1 + 16);
    }

    *(a1 + 16) = v8 | 0x800;
    if (v5)
    {
      v9 = v5[14];
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v6 + 40);
    v11 = _kvcPropertysPrimitiveGetters(v5);
    v34 = v5;
    v33 = _kvcPropertysPrimitiveSetters(v5);
    v12 = [a2 values];
    v13 = 0;
    v14 = v9[6];
    v37[0] = v9[5];
    v36 = v9[3];
    v15 = v9[10];
    v32 = v9;
    v16 = v9[14];
    v37[1] = v14;
    v37[2] = v15;
    v37[3] = v16;
    do
    {
      v17 = &v37[v13 - 1];
      v19 = *v17;
      v18 = v17[1];
      if (*v17 < v18 + *v17)
      {
        do
        {
          v20 = *(v12 + 8 * v19);
          if (v20)
          {
            v21 = *(v10 + 8 * v19);
            _PF_Handler_Primitive_GetProperty(a1, v19, v21, *(v11 + 8 * v19));
            if (v20 == NSKeyValueCoding_NullValue)
            {
              v20 = 0;
            }

            if (v20 != v22 && ([*(v34[12] + 24 + 8 * v19) _epsilonEquals:v22 rhs:v20 withFlags:1] & 1) == 0)
            {
              [a1 willChangeValueForKey:v21];
              _PF_Handler_Primitive_SetProperty(a1, v19, v20, v21, *(v33 + 8 * v19));
              [a1 didChangeValueForKey:v21];
            }
          }

          ++v19;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != 5);
    v36 = v32[9];
    v37[0] = v32[13];
    v23 = &v36;
    v24 = 1;
    do
    {
      v35 = v24;
      v25 = *v23;
      v26 = v23[1];
      if (*v23 < v26 + *v23)
      {
        do
        {
          v27 = *(v12 + 8 * v25);
          if (v27)
          {
            v28 = *(v10 + 8 * v25);
            _PF_Handler_Primitive_GetProperty(a1, v25, v28, *(v11 + 8 * v25));
            if (v27 == NSKeyValueCoding_NullValue)
            {
              v27 = 0;
            }

            if (v27 != v29)
            {
              v30 = v29;
              if (([v29 isEqual:v27] & 1) == 0)
              {
                [(NSManagedObject *)a1 _updateToManyRelationship:v28 from:v30 to:v27 with:v30];
              }
            }
          }

          ++v25;
          --v26;
        }

        while (v26);
      }

      v24 = 0;
      v23 = v37;
    }

    while ((v35 & 1) != 0);
    *(a1 + 16) &= ~0x800u;
    goto LABEL_36;
  }

  v7 = *MEMORY[0x1E69E9840];

  [(NSManagedObject *)a1 _genericUpdateFromSnapshot:a2];
}

- (void)_updateFromRefreshSnapshot:(int)a3 includingTransients:
{
  v102 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_119:
    v80 = *MEMORY[0x1E69E9840];
    return;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(a1[4], sel__updateFromRefreshSnapshot_includingTransients_);
  }

  v91 = a1;
  v6 = _PFEntityForManagedObject(a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6[13];
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a2 mapping] == v8)
  {
    v10 = v91[4];
    if ((v10 & 0x8000) != 0)
    {
      [(NSFaultHandler *)_insertion_fault_handler fulfillFault:v91 withContext:*(v91 + 4)];
      v10 = v91[4];
    }

    v91[4] = v10 | 0x800;
    if (v7)
    {
      v11 = v7[14];
    }

    else
    {
      v11 = 0;
    }

    v90 = *(v8 + 40);
    v89 = _kvcPropertysPrimitiveGetters(v7);
    v88 = _kvcPropertysPrimitiveSetters(v7);
    v92 = [a2 values];
    v93 = v7;
    LODWORD(v86) = a3;
    v85 = v11;
    if (a3)
    {
      v12 = v11[1];
      v100 = v11[6];
      v13 = v11[10];
      v99 = v12;
      v101 = v13;
      v14 = 3;
    }

    else
    {
      v99 = v11[3];
      v12 = v11[6];
      v100 = v12;
      v14 = 2;
    }

    v87 = v14;
    v15 = 0;
    v84 = *MEMORY[0x1E696AA08];
    v83 = *MEMORY[0x1E696A250];
    *&v12 = 138412290;
    v82 = v12;
    do
    {
      v16 = (&v99 + v15);
      v18 = *v16;
      v17 = v16[1];
      if (*v16 < v17 + *v16)
      {
        do
        {
          v19 = objc_autoreleasePoolPush();
          v20 = *(v92 + 8 * v18);
          if (v20)
          {
            v21 = *(v90 + 8 * v18);
            _PF_Handler_Primitive_GetProperty(v91, v18, v21, *(v89 + 8 * v18));
            v23 = v22;
            v24 = v20 == NSKeyValueCoding_NullValue ? 0 : v20;
            if (v24 != v22)
            {
              v25 = *(v93[12] + 24 + 8 * v18);
              v26 = v24;
              if (([v25 _epsilonEquals:v22 rhs:v24 withFlags:1] & 1) == 0)
              {
                if ([v25 _propertyType] == 2 && objc_msgSend(v25, "usesMergeableStorage"))
                {
                  [v23 merge:v24];
                  v26 = [v23 copy];
                }

                [v91 willChangeValueForKey:v21];
                _PF_Handler_Primitive_SetProperty(v91, v18, v26, v21, *(v88 + 8 * v18));
                [v91 didChangeValueForKey:v21];
              }
            }
          }

          objc_autoreleasePoolPop(v19);
          ++v18;
          --v17;
        }

        while (v17);
      }

      ++v15;
    }

    while (v15 != v87);
    v99 = v85[7];
    if (v86)
    {
      v100 = v85[11];
      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

    for (i = 0; i != v27; ++i)
    {
      v29 = (&v99 + i);
      v30 = *v29;
      v31 = v29[1];
      if (*v29 < v31 + *v29)
      {
        do
        {
          v32 = *(v92 + 8 * v30);
          if (v32)
          {
            v33 = *(v90 + 8 * v30);
            _PF_Handler_Primitive_GetProperty(v91, v30, v33, *(v89 + 8 * v30));
            v35 = v34;
            if (v32 == NSKeyValueCoding_NullValue)
            {
              v32 = 0;
            }

            if (v32 != v34 && (![v32 isFault] || (objc_msgSend(v35, "isFault") & 1) == 0) && (objc_msgSend(v35, "isEqual:", v32) & 1) == 0)
            {
              v36 = [v32 values];
              if (v36)
              {
                v37 = [_PFRoutines newMutableSetFromCollection:v35 byRemovingItems:*(v36 + 8)];
                [v37 addObjectsFromArray:*v36];
              }

              else
              {
                v37 = [_PFRoutines newMutableSetFromCollection:v35 byRemovingItems:0];
              }

              [(NSManagedObject *)v91 _updateToManyRelationship:v33 from:v35 to:v37 with:v35];
            }
          }

          ++v30;
          --v31;
        }

        while (v31);
      }
    }

    v99 = v85[8];
    if (v86)
    {
      v100 = v85[12];
      v38 = 2;
    }

    else
    {
      v38 = 1;
    }

    v83 = v38;
    v39 = 0;
    do
    {
      v84 = v39;
      v40 = (&v99 + v39);
      v41 = *v40;
      v88 = v40[1] + *v40;
      if (v41 < v88)
      {
        do
        {
          v42 = *(v92 + 8 * v41);
          if (v42)
          {
            v43 = *(v89 + 8 * v41);
            v87 = *(v90 + 8 * v41);
            _PF_Handler_Primitive_GetProperty(v91, v41, v87, v43);
            v45 = v44;
            v46 = NSKeyValueCoding_NullValue;
            v47 = v42 == NSKeyValueCoding_NullValue ? 0 : v42;
            if (v47 != v44 && (![v47 isFault] || (objc_msgSend(v45, "isFault") & 1) == 0) && (objc_msgSend(v45, "isEqual:", v47) & 1) == 0)
            {
              if (v42 == v46)
              {
                v51 = 0;
                v93 = 0;
                v49 = 0;
                v50 = 0;
              }

              else
              {
                v48 = [v42 values];
                v50 = *v48;
                v49 = *(v48 + 8);
                v51 = *(v48 + 24);
                v93 = *(v48 + 16);
              }

              if ([v45 isEqual:v51])
              {
                [(NSManagedObject *)v91 _updateToManyRelationship:v87 from:v45 to:v93 with:v45];
              }

              else
              {
                v86 = [_PFRoutines newOrderedSetFromCollection:v45 byRemovingItems:v49];
                v85 = [_PFRoutines newOrderedSetFromCollection:v51 byRemovingItems:v49];
                if ([v85 count])
                {
                  if ([_PFRoutines _objectsInOrderedCollection:v85 formSubstringInOrderedCollection:v93])
                  {
                    v93 = [_PFRoutines _replaceBaseline:v85 inOrderedSet:v93 withOrderedSet:v86];
                  }

                  else if ([_PFRoutines _objectsInOrderedCollection:v51 formSubstringInOrderedCollection:v45])
                  {
                    if ([v86 count])
                    {
                      v93 = [_PFRoutines _replaceBaseline:v85 inOrderedSet:v86 withOrderedSet:v93];
                    }
                  }

                  else
                  {
                    *&v82 = [v93 count];
                    v81[1] = v81;
                    MEMORY[0x1EEE9AC00](v82);
                    v54 = v81 - v53;
                    if (v55 > 0x200)
                    {
                      v54 = NSAllocateScannedUncollectable();
                    }

                    else
                    {
                      bzero(v81 - v53, 8 * v52);
                    }

                    v96 = 0u;
                    v97 = 0u;
                    v94 = 0u;
                    v95 = 0u;
                    v56 = 0;
                    v57 = [v93 countByEnumeratingWithState:&v94 objects:v98 count:16];
                    if (v57)
                    {
                      v58 = *v95;
                      do
                      {
                        for (j = 0; j != v57; ++j)
                        {
                          if (*v95 != v58)
                          {
                            objc_enumerationMutation(v93);
                          }

                          v60 = *(*(&v94 + 1) + 8 * j);
                          if (([v50 containsObject:v60] & 1) != 0 || objc_msgSend(v45, "containsObject:", v60))
                          {
                            *&v54[8 * v56++] = v60;
                          }
                        }

                        v57 = [v93 countByEnumeratingWithState:&v94 objects:v98 count:16];
                      }

                      while (v57);
                    }

                    v61 = v82 < 0x201;
                    v93 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v54 count:v56];
                    if (!v61)
                    {
                      NSZoneFree(0, v54);
                    }

                    v62 = [_PFRoutines newOrderedSetFromCollection:v86 byRemovingItems:v93];
                    if ([v62 count])
                    {
                      v63 = [v86 count];
                      *&v82 = v81;
                      MEMORY[0x1EEE9AC00](v63);
                      v66 = v81 - v65;
                      if (v63 > 0x200)
                      {
                        v66 = NSAllocateScannedUncollectable();
                      }

                      else
                      {
                        bzero(v81 - v65, 8 * v64);
                      }

                      [_PFRoutines getIndexes:v66 fromCollection:v93 forObjectsInCollection:v86];
                      v67 = [v86 count];
                      if (v67)
                      {
                        v68 = 0;
                        v69 = 0;
                        v70 = 0;
                        v71 = 0;
                        do
                        {
                          if (*&v66[4 * v68] == -1)
                          {
                            v75 = (v71 & 1) == 0;
                            if ((v71 & 1) == 0)
                            {
                              v70 = v68;
                            }

                            v71 = 1;
                            if (v75)
                            {
                              v69 = 1;
                            }

                            else
                            {
                              ++v69;
                            }
                          }

                          else
                          {
                            if (v70 | v69)
                            {
                              v72 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v70, v69}];
                              v73 = [v86 objectsAtIndexes:v72];
                              v74 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{*&v66[4 * v68], v69}];
                              [v93 insertObjects:v73 atIndexes:v74];
                              v71 = 0;
                            }

                            v70 = 0;
                            v69 = 0;
                          }

                          ++v68;
                        }

                        while (v67 != v68);
                      }

                      else
                      {
                        v70 = 0;
                        v69 = 0;
                      }

                      if (v63 >= 0x201)
                      {
                        NSZoneFree(0, v66);
                      }

                      if (v70 | v69)
                      {
                        v76 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v70, v69}];
                        v77 = [v86 objectsAtIndexes:v76];
                        v78 = [v93 count];
                        v79 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v78, v69}];
                        [v93 insertObjects:v77 atIndexes:v79];
                      }
                    }
                  }
                }

                else
                {
                  v93 = [_PFRoutines newOrderedSetFromCollection:v86 byAddingItems:v93];
                }

                [(NSManagedObject *)v91 _updateToManyRelationship:v87 from:v45 to:v93 with:v45];
              }
            }
          }

          ++v41;
        }

        while (v41 != v88);
      }

      v39 = v84 + 1;
    }

    while (v84 + 1 != v83);
    v91[4] &= ~0x800u;
    goto LABEL_119;
  }

  v9 = *MEMORY[0x1E69E9840];

  [(NSManagedObject *)v91 _genericUpdateFromSnapshot:a2];
}

- (void)_updateFromUndoSnapshot:(_DWORD *)a1
{
  v65 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_62:
    v52 = *MEMORY[0x1E69E9840];
    return;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(*(a1 + 4), sel__updateFromUndoSnapshot_);
  }

  v55 = a1;
  v4 = _PFEntityForManagedObject(a1);
  v5 = v4;
  if (v4)
  {
    v6 = v4[13];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a2 mapping] == v6)
  {
    v8 = a1[4];
    if ((v8 & 0x8000) != 0)
    {
      [(NSFaultHandler *)_insertion_fault_handler fulfillFault:a1 withContext:*(a1 + 4)];
      v8 = a1[4];
    }

    a1[4] = v8 | 0x800;
    if (v5)
    {
      v9 = v5[14];
    }

    else
    {
      v9 = 0;
    }

    v56 = *(v6 + 40);
    v57 = _kvcPropertysPrimitiveGetters(v5);
    v10 = _kvcPropertysPrimitiveSetters(v5);
    v11 = [a2 values];
    v12 = 0;
    v13 = v9[1];
    v14 = v55;
    v63[0] = v9[6];
    v15 = v9[10];
    v62 = v13;
    v53 = v9;
    v16 = v9[14];
    v63[1] = v15;
    v63[2] = v16;
    do
    {
      v17 = &v63[v12 - 1];
      v18 = *v17;
      v19 = v17[1];
      if (*v17 < v19 + *v17)
      {
        do
        {
          v20 = *(v11 + 8 * v18);
          if (v20)
          {
            v21 = *(v56 + 8 * v18);
            _PF_Handler_Primitive_GetProperty(v55, v18, v21, *(v57 + 8 * v18));
            v23 = v20 == NSKeyValueCoding_NullValue ? 0 : v20;
            if (v23 != v22 && ([v22 isEqual:v23] & 1) == 0)
            {
              [v55 willChangeValueForKey:v21];
              _PF_Handler_Primitive_SetProperty(v55, v18, v23, v21, *(v10 + 8 * v18));
              [v55 didChangeValueForKey:v21];
            }
          }

          ++v18;
          --v19;
        }

        while (v19);
      }

      ++v12;
    }

    while (v12 != 4);
    v62 = v53[7];
    v63[0] = v53[11];
    v24 = &v62;
    v25 = 1;
    v26 = v56;
    do
    {
      v27 = v25;
      v28 = *v24;
      v29 = v24[1];
      if (*v24 < v29 + *v24)
      {
        do
        {
          v30 = *(v11 + 8 * v28);
          if (v30)
          {
            v31 = *(v26 + 8 * v28);
            _PF_Handler_Primitive_GetProperty(v55, v28, v31, *(v57 + 8 * v28));
            v33 = v30 == NSKeyValueCoding_NullValue ? 0 : v30;
            if (v33 != v32)
            {
              v34 = v32;
              if ((![v33 isFault] || (objc_msgSend(v34, "isFault") & 1) == 0) && (objc_msgSend(v34, "isEqual:", v33) & 1) == 0)
              {
                v35 = [v33 values];
                v36 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v34];
                [v36 minusSet:*v35];
                [v36 unionSet:v35[1]];
                [(NSManagedObject *)v55 _updateToManyRelationship:v31 from:v34 to:v36 with:v34];

                v26 = v56;
              }
            }
          }

          ++v28;
          --v29;
        }

        while (v29);
      }

      v25 = 0;
      v24 = v63;
    }

    while ((v27 & 1) != 0);
    v62 = v53[8];
    v63[0] = v53[12];
    v37 = &v62;
    v38 = 1;
    do
    {
      v54 = v38;
      v40 = *v37;
      v39 = v37[1];
      v41 = v39 + v40;
      if (v40 < v39 + v40)
      {
        do
        {
          v42 = *(v11 + 8 * v40);
          if (v42)
          {
            v43 = *(v26 + 8 * v40);
            _PF_Handler_Primitive_GetProperty(v14, v40, v43, *(v57 + 8 * v40));
            v45 = v42 == NSKeyValueCoding_NullValue ? 0 : v42;
            if (v45 != v44)
            {
              v46 = v44;
              if ((![v45 isFault] || (objc_msgSend(v46, "isFault") & 1) == 0) && (objc_msgSend(v46, "isEqual:", v45) & 1) == 0)
              {
                v47 = [v46 mutableCopy];
                v58 = 0u;
                v59 = 0u;
                v60 = 0u;
                v61 = 0u;
                v48 = [v45 countByEnumeratingWithState:&v58 objects:v64 count:16];
                if (v48)
                {
                  v49 = v48;
                  v50 = *v59;
                  do
                  {
                    for (i = 0; i != v49; ++i)
                    {
                      if (*v59 != v50)
                      {
                        objc_enumerationMutation(v45);
                      }

                      [*(*(&v58 + 1) + 8 * i) applyToSet:v47];
                    }

                    v49 = [v45 countByEnumeratingWithState:&v58 objects:v64 count:16];
                  }

                  while (v49);
                }

                v14 = v55;
                [(NSManagedObject *)v55 _updateToManyRelationship:v43 from:v46 to:v47 with:v46];

                v26 = v56;
              }
            }
          }

          ++v40;
        }

        while (v40 != v41);
      }

      v38 = 0;
      v37 = v63;
    }

    while ((v54 & 1) != 0);
    *(v14 + 4) &= ~0x800u;
    goto LABEL_62;
  }

  v7 = *MEMORY[0x1E69E9840];

  [(NSManagedObject *)a1 _genericUpdateFromSnapshot:a2];
}

- (id)_orderKeysForRelationshipWithName__:(id)a3
{
  if ([(NSManagedObject *)self isUpdated]|| [(NSManagedObject *)self isInserted]|| [(NSManagedObject *)self isDeleted])
  {
    return 0;
  }

  v6 = [(NSManagedObject *)self mutableOrderedSetValueForKey:a3];

  return [v6 _orderedObjectsAndKeys];
}

- (BOOL)_updateLocationsOfObjectsToLocationByOrderKey:(id)a3 inRelationshipWithName:(id)a4 error:(id *)a5
{
  if ([(NSManagedObject *)self isUpdated]|| [(NSManagedObject *)self isInserted]|| [(NSManagedObject *)self isDeleted])
  {
    if (a5)
    {
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF435008];
    }

    return 0;
  }

  else
  {
    v10 = [(NSManagedObject *)self mutableOrderedSetValueForKey:a4];

    return [v10 _reorderObjectsToLocationsByOrderKey:a3 error:a5];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: null selector", _NSMethodExceptionProem()}];
  }

  Class = object_getClass(self);

  return class_respondsToSelector(Class, a3);
}

- (void)methodForSelector:(SEL)a3
{
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: null selector", _NSMethodExceptionProem()}];
  }

  Class = object_getClass(self);

  return class_getMethodImplementation(Class, a3);
}

- (id)methodSignatureForSelector:(SEL)a3
{
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: null selector", _NSMethodExceptionProem()}];
  }

  Class = object_getClass(self);
  v6 = Class;
  if (Class)
  {
    Superclass = Class;
    while (1)
    {
      outCount = 0;
      v8 = class_copyProtocolList(Superclass, &outCount);
      v9 = v8;
      if (outCount)
      {
        break;
      }

      if (v8)
      {
LABEL_12:
        free(v9);
      }

      Superclass = class_getSuperclass(Superclass);
      if (!Superclass)
      {
        goto LABEL_14;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = v9[v10];
      isMetaClass = class_isMetaClass(Superclass);
      MethodDescription = protocol_getMethodDescription(v11, a3, 1, !isMetaClass);
      types = MethodDescription.types;
      if (MethodDescription.name)
      {
        break;
      }

      v15 = v9[v10];
      v16 = class_isMetaClass(Superclass);
      v17 = protocol_getMethodDescription(v15, a3, 0, !v16);
      types = v17.types;
      if (v17.name)
      {
        break;
      }

      if (++v10 >= outCount)
      {
        goto LABEL_12;
      }
    }

    v20 = types;
    free(v9);
  }

  else
  {
LABEL_14:
    result = class_getInstanceMethod(v6, a3);
    if (!result)
    {
      return result;
    }

    Description = method_getDescription(result);
    if (!Description->name)
    {
      return 0;
    }

    v20 = Description->types;
  }

  return [MEMORY[0x1E695DF68] signatureWithObjCTypes:v20];
}

+ (Class)classForEntity:(id)a3
{
  v215 = MethodImplementation;
  v248 = *MEMORY[0x1E69E9840];
  if (!atomic_load(&qword_1ED4BE9F0))
  {
    v5 = objc_opt_class();
    atomic_store(class_getMethodImplementation(v5, sel_willChangeValueForKey_), &qword_1ED4BE9F0);
    v6 = objc_opt_class();
    MethodImplementation = class_getMethodImplementation(v6, sel_didChangeValueForKey_);
    atomic_store(MethodImplementation, &qword_1ED4BE9F8);
  }

  MEMORY[0x1EEE9AC00](MethodImplementation);
  v214 = &v176;
  v7 = [objc_msgSend(a3 "name")];
  if (!v7 || (v8 = v7, !*v7))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Entity name must not be nil." userInfo:0]);
  }

  if (!atomic_load(a3 + 124))
  {
    v149 = [a3 managedObjectModel];
    v150 = a3;
    if (v149)
    {
      v150 = [a3 managedObjectModel];
    }

    [v150 _setIsEditable:0];
  }

  Name = class_getName(v215);
  v11 = strchr(Name, 46);
  v12 = v155;
  if (MEMORY[0x1EEE9AC00](v11))
  {
    v174 = 0u;
    v175 = 0u;
    memset(v173, 0, sizeof(v173));
    v172 = 0u;
    v170 = 0u;
    memset(v171, 0, sizeof(v171));
    memset(v169, 0, sizeof(v169));
    v168 = 0u;
    v166 = 0u;
    memset(v167, 0, sizeof(v167));
    memset(v165, 0, sizeof(v165));
    v164 = 0u;
    v162 = 0u;
    memset(v163, 0, sizeof(v163));
    memset(v161, 0, sizeof(v161));
    v160 = 0u;
    v158 = 0u;
    memset(v159, 0, sizeof(v159));
    memset(v157, 0, sizeof(v157));
    v156 = 0u;
    memset(v155, 0, sizeof(v155));
    v13 = strlen(Name);
    if (v13)
    {
      v14 = 0;
      if (v13 >= 0x1FF)
      {
        v15 = 511;
      }

      else
      {
        v15 = v13;
      }

      do
      {
        v16 = Name[v14];
        if (!Name[v14])
        {
          break;
        }

        if (v16 == 46)
        {
          LOBYTE(v16) = 95;
        }

        *(v155 + v14++) = v16;
      }

      while (v15 != v14);
    }
  }

  else
  {
    v12 = Name;
  }

  v208 = v12;
  snprintf(v214, 0x200uLL, "%s_%s_", v12, v8);
  os_unfair_lock_lock(&stru_1ED4BE9E4);
  v212 = 0;
  v190 = sel_retain;
  v191 = sel__retain_1;
  v189 = sel__release_1;
  v188 = sel_release;
  v206 = sel__isGeneratedClass_1;
  v205 = sel__isGeneratedClass;
  v211 = sel_class;
  v207 = sel_superclass;
  v187 = sel__PFMOClassFactoryData;
  v183 = sel_didAccessValueForKey_;
  v184 = sel_willAccessValueForKey_;
  v204 = sel_resolveInstanceMethod_;
  v181 = sel__classShouldAlwaysRegisterSelectorNamed_;
  v203 = sel_validateValue_forKey_error_;
  v180 = sel__useFastValidationMethod;
  *&v17 = 136315138;
  v178 = v17;
  v202 = sel_awakeFromFetch;
  *&v17 = 134218498;
  v177 = v17;
  v201 = sel_willChangeValueForKey_;
  v199 = sel_willChangeValueForKey_withSetMutation_usingObjects_;
  v200 = sel_didChangeValueForKey_;
  v197 = sel_willFireFault;
  v198 = sel_didChangeValueForKey_withSetMutation_usingObjects_;
  v196 = sel_didFireFault;
  v179 = sel__transientPropertiesChangesMask__;
  v185 = a3;
  v186 = sel__PFPlaceHolderSingleton;
  v209 = &v217[2];
  v213 = 2;
  v182 = v8;
  v18 = 0x1E6EC0000uLL;
  do
  {
    while (1)
    {
      while (1)
      {
        Class = objc_getClass(v214);
        v20 = Class;
        if (Class)
        {
          v21 = Class;
        }

        else
        {
          ClassPair = objc_allocateClassPair(v215, v214, 0);
          v21 = ClassPair;
          if (!ClassPair)
          {
            goto LABEL_110;
          }

          v23 = object_getClass(ClassPair);
          ClassMethod = class_getClassMethod(v21, v191);
          Implementation = method_getImplementation(ClassMethod);
          TypeEncoding = method_getTypeEncoding(ClassMethod);
          class_addMethod(v23, v190, Implementation, TypeEncoding);
          v27 = class_getClassMethod(v21, v189);
          v28 = method_getImplementation(v27);
          v29 = method_getTypeEncoding(v27);
          class_addMethod(v23, v188, v28, v29);
          v30 = class_getClassMethod(v21, v206);
          v31 = method_getImplementation(v30);
          v32 = method_getTypeEncoding(v30);
          class_addMethod(v23, v205, v31, v32);
          v33 = class_getClassMethod(v215, v211);
          v34 = method_getTypeEncoding(v33);
          class_addMethod(v21, v211, override_instace_class, v34);
          v35 = class_getClassMethod(v215, v211);
          v36 = method_getTypeEncoding(v35);
          class_addMethod(v23, v211, override_class_class, v36);
          v37 = class_getClassMethod(v215, v207);
          v38 = method_getTypeEncoding(v37);
          class_addMethod(v23, v207, override_class_superclass, v38);
          v210 = v23;
          v39 = [objc_msgSend(a3 "propertiesByName")];
          v40 = _PF_Private_Malloc_Zone;
          if (!_PF_Private_Malloc_Zone)
          {
            v40 = malloc_default_zone();
          }

          if (v39)
          {
            v41 = (((v39 - 1) >> 3) & 0x1FFFFFFC) + 108;
          }

          else
          {
            v41 = 108;
          }

          v42 = malloc_type_zone_calloc(v40, 1uLL, v41, 0x1090040F2957DC8uLL);
          v217[0] = MEMORY[0x1E69E9820];
          v217[1] = 3221225472;
          v217[2] = __generateReturnPointerMethod_block_invoke;
          v217[3] = &__block_descriptor_40_e9__v16__0_8l;
          *&v218 = v42;
          v43 = imp_implementationWithBlock(v217);
          if (!v43)
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v217[0]) = v178;
              *(v217 + 4) = v8;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to generate function for '%s'\n", v217, 0xCu);
            }

            v45 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
            {
              LODWORD(v217[0]) = v178;
              *(v217 + 4) = v8;
              _os_log_fault_impl(&dword_18565F000, v45, OS_LOG_TYPE_FAULT, "CoreData: Failed to generate function for '%s'", v217, 0xCu);
            }
          }

          if (!class_addMethod(v210, v187, v43, "@@:"))
          {
            v46 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v217[0]) = v178;
              *(v217 + 4) = v8;
              _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: fault: Failed to add function to class for '%s'\n", v217, 0xCu);
            }

            v47 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
            {
              LODWORD(v217[0]) = v178;
              *(v217 + 4) = v8;
              _os_log_fault_impl(&dword_18565F000, v47, OS_LOG_TYPE_FAULT, "CoreData: Failed to add function to class for '%s'", v217, 0xCu);
            }
          }

          v48 = _PF_Private_Malloc_Zone;
          if (!_PF_Private_Malloc_Zone)
          {
            v48 = malloc_default_zone();
          }

          InstanceSize = class_getInstanceSize(v215);
          v212 = malloc_type_zone_calloc(v48, 1uLL, (InstanceSize + 7) & 0xFFFFFFFFFFFFFFF8, 0x1917931uLL);
          v42[6] = v212;
          v50 = *(v18 + 2688);
          if (objc_opt_class() == v215)
          {
            v125 = 2392384;
          }

          else
          {
            v51 = *(v18 + 2688);
            v52 = objc_opt_class();
            v53 = v184;
            v54 = class_getMethodImplementation(v52, v184);
            v55 = class_getMethodImplementation(v215, v53);
            v56 = v183;
            v57 = v55;
            v58 = *(v18 + 2688);
            v59 = objc_opt_class();
            v60 = class_getMethodImplementation(v59, v56);
            v61 = class_getMethodImplementation(v215, v56);
            v62 = v54 == v57 && v60 == v61;
            v63 = v42[12] & 0xFFFFFFFE;
            if (!v62)
            {
              ++v63;
            }

            *(v42 + 24) = v63;
            v64 = *(v18 + 2688);
            v65 = objc_opt_class();
            v66 = class_getClassMethod(v65, v204);
            v67 = method_getImplementation(v66);
            v68 = class_getClassMethod(v215, v204);
            if (v67 != method_getImplementation(v68))
            {
              *(v42 + 24) |= 0x40u;
              v69 = *(v18 + 2688);
              v70 = objc_opt_class();
              v71 = class_getClassMethod(v70, v206);
              v72 = object_getClass(v215);
              v73 = method_getImplementation(v71);
              v74 = method_getTypeEncoding(v66);
              class_addMethod(v72, v181, v73, v74);
            }

            v75 = *(v18 + 2688);
            v76 = objc_opt_class();
            v77 = class_getMethodImplementation(v76, v203);
            if (v77 != class_getMethodImplementation(v215, v203))
            {
              *(v42 + 24) |= 0x10u;
              v78 = *(v18 + 2688);
              v79 = objc_opt_class();
              v80 = class_getClassMethod(v79, v205);
              v81 = method_getImplementation(v80);
              v82 = method_getTypeEncoding(v80);
              class_addMethod(v210, v180, v81, v82);
            }

            v83 = *(v18 + 2688);
            v84 = objc_opt_class();
            v85 = class_getMethodImplementation(v84, v202);
            if (v85 != class_getMethodImplementation(v215, v202))
            {
              *(v42 + 24) |= 0x20u;
            }

            v86 = *(v18 + 2688);
            v87 = objc_opt_class();
            v88 = class_getMethodImplementation(v87, v201);
            v89 = class_getMethodImplementation(v215, v201);
            v90 = *(v18 + 2688);
            v91 = objc_opt_class();
            v92 = class_getMethodImplementation(v91, v200);
            if (v92 == class_getMethodImplementation(v215, v200) && v88 == v89)
            {
              v94 = 0;
            }

            else
            {
              v94 = 2;
            }

            *(v42 + 24) = v42[12] & 0xFFFFFFFD | v94;
            v95 = *(v18 + 2688);
            v96 = objc_opt_class();
            v97 = class_getMethodImplementation(v96, v199);
            v98 = class_getMethodImplementation(v215, v199);
            v99 = *(v18 + 2688);
            v100 = objc_opt_class();
            v101 = class_getMethodImplementation(v100, v198);
            if (v101 == class_getMethodImplementation(v215, v198) && v97 == v98)
            {
              v103 = 0;
            }

            else
            {
              v103 = 4;
            }

            *(v42 + 24) = v42[12] & 0xFFFFFFFB | v103;
            v104 = *(v18 + 2688);
            v105 = objc_opt_class();
            v195 = class_getMethodImplementation(v105, v197);
            v194 = class_getMethodImplementation(v215, v197);
            v106 = *(v18 + 2688);
            v107 = objc_opt_class();
            v193 = class_getMethodImplementation(v107, v196);
            v192 = class_getMethodImplementation(v215, v196);
            v108 = *(a3 + 14);
            v109 = *(v108 + 80);
            v110 = *(v108 + 88);
            if (v109 < v110 + v109)
            {
              v111 = *(v185[13] + 40);
              do
              {
                [*(v111 + 8 * v109) UTF8String];
                v112 = __strlcpy_chk();
                __strlcat_chk();
                *(v217 + v112) = __toupper(*(v217 + v112));
                if (BYTE2(dword_1ED4BEEC8) == 1)
                {
                  v113 = sel_lookUpByName();
                }

                else
                {
                  v113 = sel_registerName(v217);
                }

                v114 = v113;
                if ((objc_opt_respondsToSelector() & 1) != 0 && [v215 v114])
                {
                  v115 = v42[11];
                  if (!v115)
                  {
                    v42[11] = v42 + 13;
                    v115 = (v42 + 13);
                  }

                  v115[v109 >> 3] |= 1 << (v109 & 7);
                }

                ++v109;
                --v110;
              }

              while (v110);
            }

            v116 = v42[11];
            if (v116)
            {
              v217[0] = MEMORY[0x1E69E9820];
              v217[1] = 3221225472;
              v217[2] = __generateReturnPointerMethod_block_invoke;
              v217[3] = &__block_descriptor_40_e9__v16__0_8l;
              *&v218 = v116;
              v117 = imp_implementationWithBlock(v217);
              class_addMethod(v210, v179, v117, "@@:");
            }

            v118 = v195 == v194;
            v119 = v193 == v192;
            v120 = *(v42 + 24);
            v121 = 0x8000;
            if ((v120 & 1) == 0)
            {
              v121 = 32832;
            }

            if ((v120 & 2) == 0)
            {
              v121 |= 0x40000uLL;
            }

            v122 = !v118 || !v119;
            if (v118 && v119)
            {
              v123 = 0;
            }

            else
            {
              v123 = 8;
            }

            *(v42 + 24) = v120 & 0xFFFFFFF7 | v123;
            v124 = v121 | 0x100;
            if (v122)
            {
              v124 = v121;
            }

            if ((v120 & 4) != 0)
            {
              v125 = v124;
            }

            else
            {
              v125 = v124 | 0x200000;
            }

            v8 = v182;
            a3 = v185;
            v18 = 0x1E6EC0000;
          }

          if ([(objc_class *)v215 contextShouldIgnoreUnmodeledPropertyChanges:*&v155[0]])
          {
            v126 = 0x400000;
          }

          else
          {
            v126 = 0;
          }

          v127 = [objc_msgSend(a3 "propertiesByName")];
          __snprintf_chk(v214, 0x200uLL, 0, 0x200uLL, "_cd_bits_%p", v21);
          if (v127)
          {
            v128 = ((v127 - 1) >> 5) + 1;
          }

          else
          {
            v128 = 1;
          }

          if (v128 > 0x4000)
          {
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Incorrect ivar generation" userInfo:0]);
          }

          __snprintf_chk(v216, 0xAuLL, 0, 0xAuLL, "[%dI]", v128);
          if (!class_addIvar(v21, v214, 4 * v128, 1u, v216))
          {
            objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"class_addIvar failed" userInfo:0]);
          }

          v217[0] = MEMORY[0x1E69E9820];
          v217[1] = 3221225472;
          v217[2] = __generateReturnPointerMethod_block_invoke;
          v217[3] = &__block_descriptor_40_e9__v16__0_8l;
          *&v218 = v212;
          v129 = imp_implementationWithBlock(v217);
          class_addMethod(v210, v186, v129, "@@:");
          objc_registerClassPair(v21);
          object_setClass(v212, v21);
          v130 = v212;
          *(v212 + 4) |= 0x100000u;
          v130[2] = 0x20000000;
          InstanceVariable = class_getInstanceVariable(v21, v214);
          Offset = ivar_getOffset(InstanceVariable);
          *(v42 + 32) = (((class_getInstanceSize(v21) + 7) & 0x3F8u) - Offset) >> 2;
          v42[5] = v126 | v125;
          v133 = [(objc_class *)v21 _PFMOClassFactoryData];
          if (v42 != v133)
          {
            v151 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v217[0]) = 136315394;
              *(v217 + 4) = v182;
              WORD2(v217[1]) = 2048;
              *(&v217[1] + 6) = v21;
              _os_log_error_impl(&dword_18565F000, v151, OS_LOG_TYPE_ERROR, "CoreData: fault: Testing generated function for +classForEntity: failed for entity %s (%p)\n", v217, 0x16u);
            }

            v152 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v152, OS_LOG_TYPE_FAULT))
            {
              LODWORD(v217[0]) = 136315394;
              *(v217 + 4) = v182;
              WORD2(v217[1]) = 2048;
              *(&v217[1] + 6) = v21;
              _os_log_fault_impl(&dword_18565F000, v152, OS_LOG_TYPE_FAULT, "CoreData: Testing generated function for +classForEntity: failed for entity %s (%p)", v217, 0x16u);
            }

            v153 = MEMORY[0x1E695DF30];
            v154 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Testing generated function, factory %p != result %p", v42, v133];
            objc_exception_throw([v153 exceptionWithName:*MEMORY[0x1E695D930] reason:v154 userInfo:0]);
          }

          [objc_msgSend(a3 "versionHash")];
        }

        v134 = [(objc_class *)v21 _PFMOClassFactoryData:*&v155[0]];
        if (!v20)
        {
          goto LABEL_111;
        }

        v246 = 0u;
        v247 = 0u;
        v244 = 0u;
        v245 = 0u;
        v242 = 0u;
        v243 = 0u;
        v240 = 0u;
        v241 = 0u;
        v238 = 0u;
        v239 = 0u;
        v236 = 0u;
        v237 = 0u;
        v234 = 0u;
        v235 = 0u;
        v232 = 0u;
        v233 = 0u;
        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
        v226 = 0u;
        v227 = 0u;
        v224 = 0u;
        v225 = 0u;
        v222 = 0u;
        v223 = 0u;
        v220 = 0u;
        v221 = 0u;
        v218 = 0u;
        v219 = 0u;
        memset(v217, 0, sizeof(v217));
        v135 = _PFStackAllocatorCreate(v217, 1024);
        v136 = CFDataCreate(v135, (v134 + 56), 32);
        v137 = [objc_msgSend(a3 "versionHash")];
        v138 = v137;
        if (!v217[3])
        {
          break;
        }

        if (v136)
        {
          CFRelease(v136);
        }

        if (v138)
        {
          goto LABEL_108;
        }

LABEL_110:
        __snprintf_chk(v214, 0x200uLL, 0, 0x200uLL, "%s_%s_%x", v208, v8, v213);
        v213 = (v213 + 1);
      }

      v217[1] = v217[0];
      if (!v137)
      {
        goto LABEL_110;
      }

LABEL_108:
      v139 = *(v134 + 8);
      if (v139 && v139 != a3)
      {
        goto LABEL_110;
      }

LABEL_111:
      if (!*(v134 + 8))
      {
        break;
      }

LABEL_119:
      if (v21)
      {
        goto LABEL_122;
      }
    }

    *v134 = 0;
    *(v134 + 8) = a3;
    if (!*(v134 + 16))
    {
      *(v134 + 16) = [objc_msgSend(a3 "name")];
    }

    atomic_store(0, (v134 + 24));
    v140 = [(objc_class *)v21 _PFPlaceHolderSingleton];
    v141 = v140;
    if (v140 != *(v134 + 48))
    {
      v142 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
      {
        v145 = *(v134 + 48);
        LODWORD(v217[0]) = v177;
        *(v217 + 4) = v145;
        WORD2(v217[1]) = 2048;
        *(&v217[1] + 6) = v141;
        HIWORD(v217[2]) = 2080;
        v217[3] = v8;
        _os_log_error_impl(&dword_18565F000, v142, OS_LOG_TYPE_ERROR, "CoreData: fault: Factory and entity class skew over placeholder singleton.  Expected %p but got %p for entity '%s'\n", v217, 0x20u);
      }

      v143 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v143, OS_LOG_TYPE_FAULT))
      {
        v144 = *(v134 + 48);
        LODWORD(v217[0]) = v177;
        *(v217 + 4) = v144;
        WORD2(v217[1]) = 2048;
        *(&v217[1] + 6) = v141;
        HIWORD(v217[2]) = 2080;
        v217[3] = v8;
        _os_log_fault_impl(&dword_18565F000, v143, OS_LOG_TYPE_FAULT, "CoreData: Factory and entity class skew over placeholder singleton.  Expected %p but got %p for entity '%s'", v217, 0x20u);
      }

      goto LABEL_119;
    }

    object_setClass(v140, v21);
    *(v134 + 48) = v141;
  }

  while (!v21);
LABEL_122:
  os_unfair_lock_unlock(&stru_1ED4BE9E4);
  if (v212)
  {
    os_unfair_lock_lock_with_options();
    Mutable = qword_1ED4BEA00;
    if (!qword_1ED4BEA00)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      qword_1ED4BEA00 = Mutable;
    }

    CFArrayAppendValue(Mutable, v212);
    os_unfair_lock_unlock(&unk_1ED4BE9E8);
  }

  objc_opt_self();
  __dmb(0xBu);
  v147 = *MEMORY[0x1E69E9840];
  return v21;
}

+ (id)_entityName
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [a1 _PFMOClassFactoryData];
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      goto LABEL_26;
    }
  }

  Name = class_getName(a1);
  if (!strncmp(Name, "NSManagedObject", 0xFuLL))
  {
    goto LABEL_25;
  }

  AssociatedObject = objc_getAssociatedObject(a1, &PFEntityNameAssociationKey);
  v7 = [AssociatedObject count];
  if (!v7)
  {
    v10 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [objc_msgSend(v10 "persistentStoreCoordinator")];
        if (v11)
        {
          v12 = v11;
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:Name];
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v14)
          {
            v15 = v14;
            v4 = 0;
            v16 = *v22;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v22 != v16)
                {
                  objc_enumerationMutation(v12);
                }

                v18 = *(*(&v21 + 1) + 8 * i);
                v19 = [v18 managedObjectClassName];
                if (v19 && [v13 isEqualToString:v19])
                {
                  if (v4)
                  {
                    goto LABEL_25;
                  }

                  v4 = [MEMORY[0x1E696AEC0] stringWithString:{objc_msgSend(v18, "name")}];
                }
              }

              v15 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
            }

            while (v15);
            if (v4)
            {
              objc_setAssociatedObject(a1, &PFEntityNameAssociationKey, [MEMORY[0x1E695DEC8] arrayWithObject:v4], 0x303);
            }

            goto LABEL_26;
          }
        }
      }
    }

    goto LABEL_25;
  }

  if (v7 != 1)
  {
LABEL_25:
    v4 = 0;
LABEL_26:
    v20 = *MEMORY[0x1E69E9840];
    return v4;
  }

  v8 = *MEMORY[0x1E69E9840];

  return [AssociatedObject lastObject];
}

+ (unsigned)allocBatch:(id *)a3 withEntity:(id)a4 count:(unsigned int)a5
{
  v8 = _PFFastEntityClass(a4);
  v9 = [v8 _PFMOClassFactoryData];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (!atomic_load((v9 + 24)))
  {
    if (a4 && (v18 = *(a4 + 14)) != 0)
    {
      v19 = *(v18 + 8);
    }

    else
    {
      v19 = [objc_msgSend(a4 "propertiesByName")];
    }

    if (v19 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    atomic_store(8 * v20, (v10 + 24));
  }

  v12 = _PFAllocateObjects(v8, a3, a5, 0);
  InstanceSize = class_getInstanceSize(v8);
  if (v12)
  {
    v14 = *(v10 + 40) | (*(v10 + 32) << 24);
    v15 = v12;
    do
    {
      v16 = *a3++;
      *(v16 + 16) = v14;
      *(v16 + 20) = (InstanceSize + 7) & 0xFFFFFFF8;
      --v15;
    }

    while (v15);
  }

  return v12;
}

+ (id)allocWithEntity:(id)a3
{
  v5 = _PFFastEntityClass(a3);
  if (v5)
  {
    v6 = v5;
    if (!atomic_load(a3 + 124))
    {
      v15 = [a3 managedObjectModel];
      v16 = a3;
      if (v15)
      {
        v16 = [a3 managedObjectModel];
      }

      [v16 _setIsEditable:0];
    }

    v8 = [v6 _PFMOClassFactoryData];
    if (v8)
    {
      v9 = v8;
      if (!atomic_load((v8 + 24)))
      {
        v17 = *(a3 + 14);
        if (v17)
        {
          v18 = *(v17 + 8);
        }

        else
        {
          v18 = [objc_msgSend(a3 "propertiesByName")];
        }

        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        atomic_store(8 * v19, (v9 + 24));
      }

      v11 = _PFAllocateObject(v6, 0);
      InstanceSize = class_getInstanceSize(v6);
      v11[4] = *(v9 + 40) | (*(v9 + 32) << 24);
      v11[5] = (InstanceSize + 7) & 0xFFFFFFF8;
      __dmb(0xBu);
      return v11;
    }

    v14 = v6;
  }

  else
  {
    v14 = a1;
  }

  return _PFAllocateObject(v14, 0);
}

+ (BOOL)_hasOverriddenAwake
{
  v2 = [a1 _PFMOClassFactoryData];
  if (v2)
  {
    LODWORD(v2) = (*(v2 + 96) >> 5) & 1;
  }

  return v2;
}

- (id)_genericValueForKey:(id)a3 withIndex:(int64_t)a4 flags:(int64_t)a5
{
  if (a5 && (self->_cd_stateFlags & 0x40) == 0)
  {
    return _sharedIMPL_vfk_core(self, a2, a4);
  }

  _sharedIMPL_pvfk_core(self, a2, a4);
  return result;
}

- (void)_setGenericValue:(id)a3 forKey:(id)a4 withIndex:(int64_t)a5 flags:(int64_t)a6
{
  if (a6)
  {
    _sharedIMPL_setvfk_core(self, a2, a3, a5);
  }

  else
  {
    _sharedIMPL_setPvfk_core(self, a2, a3, a5);
  }
}

+ (void)_initializePrimitiveAccessorStubs
{
  v2 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v2 = malloc_default_zone();
  }

  v3 = malloc_type_zone_malloc(v2, 0x190uLL, 0x80040B8603338uLL);
  os_unfair_lock_lock_with_options();
  if (qword_1ED4BEA10)
  {
    v4 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v4 = malloc_default_zone();
    }

    malloc_zone_free(v4, v3);
    v3 = qword_1ED4BEA10;
  }

  else
  {
    qword_1ED4BEA10 = v3;
  }

  *v3 = _spvfk_0;
  v3[1] = _spvfk_1;
  v3[2] = _spvfk_2;
  v3[3] = _spvfk_3;
  v3[4] = _spvfk_4;
  v3[5] = _spvfk_5;
  v3[6] = _spvfk_6;
  v3[7] = _spvfk_7;
  v3[8] = _spvfk_8;
  v3[9] = _spvfk_9;
  v3[10] = _spvfk_10;
  v3[11] = _spvfk_11;
  v3[12] = _spvfk_12;
  v3[13] = _spvfk_13;
  v3[14] = _spvfk_14;
  v3[15] = _spvfk_15;
  v3[16] = _spvfk_16;
  v3[17] = _spvfk_17;
  v3[18] = _spvfk_18;
  v3[19] = _spvfk_19;
  v3[20] = _spvfk_20;
  v3[21] = _spvfk_21;
  v3[22] = _spvfk_22;
  v3[23] = _spvfk_23;
  v3[24] = _spvfk_24;
  v3[25] = _spvfk_25;
  v3[26] = _spvfk_26;
  v3[27] = _spvfk_27;
  v3[28] = _spvfk_28;
  v3[29] = _spvfk_29;
  v3[30] = _spvfk_30;
  v3[31] = _spvfk_31;
  v3[32] = _spvfk_32;
  v3[33] = _spvfk_33;
  v3[34] = _spvfk_34;
  v3[35] = _spvfk_35;
  v3[36] = _spvfk_36;
  v3[37] = _spvfk_37;
  v3[38] = _spvfk_38;
  v3[39] = _spvfk_39;
  v3[40] = _spvfk_40;
  v3[41] = _spvfk_41;
  v3[42] = _spvfk_42;
  v3[43] = _spvfk_43;
  v3[44] = _spvfk_44;
  v3[45] = _spvfk_45;
  v3[46] = _spvfk_46;
  v3[47] = _spvfk_47;
  v3[48] = _spvfk_48;
  v3[49] = _spvfk_49;
  _MergedGlobals_72 = 1;

  os_unfair_lock_unlock(&unk_1ED4BE9E8);
}

+ (BOOL)_classShouldAlwaysRegisterSelectorNamed:(const char *)a3
{
  v5 = strlen(a3);
  if (v5 >= 0x21 && !strncmp("automaticallyNotifiesObserversOf", a3, 0x20uLL))
  {
    return 1;
  }

  v6 = [a1 _PFMOClassFactoryData];
  if (v6)
  {
    if ((*(v6 + 96) & 0x40) != 0)
    {
      return 1;
    }
  }

  result = 0;
  if (v5 >= 0xA && (dword_1ED4BEEC8 & 0x100) == 0)
  {
    v8 = 9;
    result = (!strncmp("primitive", a3, 9uLL) || v5 >= 0xD && (v8 = 12, !strncmp("setPrimitive", a3, 0xCuLL))) && (v9 = a3[v8]) != 0 && v9 == __toupper(v9);
  }

  return result;
}

+ (BOOL)resolveClassMethod:(SEL)a3
{
  v55 = *MEMORY[0x1E69E9840];
  Name = sel_getName(a3);
  v6 = [a1 _PFMOClassFactoryData];
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7 && (v8 = strlen(Name), v8 >= 0x21) && (v9 = v8, !strncmp("automaticallyNotifiesObserversOf", Name, 0x20uLL)))
    {
      v11 = *(v7 + 104);
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = _PFStackAllocatorCreate(&v23, 1024);
      MEMORY[0x1EEE9AC00](v12);
      v13 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      memcpy(v13, Name + 32, v9 - 31);
      v14 = *MEMORY[0x1E695E498];
      v15 = CFStringCreateWithCStringNoCopy(v12, v13, 0x600u, *MEMORY[0x1E695E498]);
      if ([v11 indexForKey:v15] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (*(&v24 + 1))
        {
          if (v15)
          {
            CFRelease(v15);
          }
        }

        else
        {
          *(&v23 + 1) = v23;
        }

        *v13 = __tolower(*v13);
        v15 = CFStringCreateWithCStringNoCopy(v12, v13, 0x600u, v14);
        v16 = [v11 indexForKey:v15] == 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = 0;
      }

      if (*(&v24 + 1))
      {
        if (v15)
        {
          CFRelease(v15);
        }
      }

      else
      {
        *(&v23 + 1) = v23;
      }

      if (!v16)
      {
        v17 = objc_opt_class();
        ClassMethod = class_getClassMethod(v17, sel__isGeneratedClass);
        Class = object_getClass(a1);
        Implementation = method_getImplementation(ClassMethod);
        TypeEncoding = method_getTypeEncoding(ClassMethod);
        class_addMethod(Class, a3, Implementation, TypeEncoding);
      }

      LOBYTE(v6) = !v16;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (BOOL)resolveInstanceMethod:(SEL)a3
{
  v295 = *MEMORY[0x1E69E9840];
  Name = sel_getName(a3);
  v6 = [a1 _PFMOClassFactoryData];
  if (!v6)
  {
    goto LABEL_483;
  }

  v7 = v6;
  v8 = *(v6 + 8);
  if (!v8)
  {
    LOBYTE(v6) = 0;
    goto LABEL_483;
  }

  v249 = a1;
  v247 = a3;
  v9 = strncmp(Name, "managedObjectOriginal_", 0x16uLL);
  v10 = v8[13];
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 22;
  }

  v12 = &Name[v11];
  v293 = 0u;
  v294 = 0u;
  v291 = 0u;
  v292 = 0u;
  v289 = 0u;
  v290 = 0u;
  v287 = 0u;
  v288 = 0u;
  v285 = 0u;
  v286 = 0u;
  v283 = 0u;
  v284 = 0u;
  v281 = 0u;
  v282 = 0u;
  v279 = 0u;
  v280 = 0u;
  v277 = 0u;
  v278 = 0u;
  v275 = 0u;
  v276 = 0u;
  v273 = 0u;
  v274 = 0u;
  v271 = 0u;
  v272 = 0u;
  v269 = 0u;
  v270 = 0u;
  v267 = 0u;
  v268 = 0u;
  v265 = 0u;
  v266 = 0u;
  v263 = 0u;
  v264 = 0u;
  v13 = _PFStackAllocatorCreate(&v263, 1024);
  v14 = strlen(v12);
  v248 = &v243;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v243 - v15;
  v17 = *MEMORY[0x1E695E498];
  v250 = CFStringCreateWithCStringNoCopy(v13, v12, 0x600u, *MEMORY[0x1E695E498]);
  v18 = [v10 indexForKey:?];
  if (v18 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = v18;
    if ((byte_1ED4BE9E1 & 1) == 0)
    {
      [v249 _initializeAccessorStubs];
    }

    v20 = objc_opt_class();
    v21 = *(v8[12] + 24 + 8 * v19);
    v22 = v8[14];
    Property = class_getProperty(v20, v12);
    if (Property)
    {
      Attributes = property_getAttributes(Property);
      v25 = strlen(Attributes);
      v246 = &v243;
      MEMORY[0x1EEE9AC00](v25);
      v27 = &v243 - v26;
      strlcpy(&v243 - v26, Attributes, v28);
      v254 = v27;
      v29 = strsep(&v254, ",");
      if (v29)
      {
        v31 = v29;
        v245 = v12;
        v32 = 0;
        v33 = 0;
        *&v30 = 136315394;
        v244 = v30;
        while (1)
        {
          if (*v31 == 84)
          {
            v35 = v31[1];
            v34 = v31 + 1;
            if (v35 != 64 && (isTypeEncodingObject(v34) & 1) == 0)
            {
              v36 = *(v22 + 16);
              v107 = v19 >= v36;
              v37 = v19 - v36;
              if (!v107 || v37 >= *(v22 + 24))
              {
                v75 = objc_autoreleasePoolPush();
                if (_NSCoreDataIsOSLogEnabled(1))
                {
                  v76 = _pflogging_catastrophic_mode;
                  LogStream = _PFLogGetLogStream(1);
                  v78 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
                  v73 = v33;
                  if (v76)
                  {
                    v79 = v245;
                    if (v78)
                    {
LABEL_386:
                      v194 = objc_opt_class();
                      v195 = class_getName(v194);
                      v255 = v244;
                      v256 = v79;
                      v257 = 2080;
                      v258 = v195;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Property '%s' is a scalar type on class '%s'.  Cannot generate a getter method for it.\n", &v255, 0x16u);
                    }
                  }

                  else
                  {
                    v79 = v245;
                    if (v78)
                    {
                      goto LABEL_386;
                    }
                  }

                  v136 = "Property '%s' is a scalar type on class '%s'.  Cannot generate a getter method for it.";
LABEL_275:
                  v155 = objc_opt_class();
                  v156 = class_getName(v155);
                  _NSCoreDataLog_console(1, v136, v79, v156);
                  objc_autoreleasePoolPop(v75);
                  v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_313:
                  v137 = 0;
LABEL_314:
                  v138 = 0;
                  v140 = 0;
                  v141 = 0;
                  v139 = 0;
                  goto LABEL_463;
                }

                v136 = "Property '%s' is a scalar type on class '%s'.  Cannot generate a getter method for it.";
LABEL_244:
                v73 = v33;
                v79 = v245;
                goto LABEL_275;
              }

              v38 = [v21 attributeType];
              if (v38 <= 499)
              {
                if (v38 == 100)
                {
                  v32 = 115;
                  if ((*v34 | 0x20) != 0x73)
                  {
                    goto LABEL_132;
                  }

                  goto LABEL_56;
                }

                if (v38 == 200)
                {
                  v32 = 105;
                  v40 = *v34 - 73;
                  if (v40 > 0x28)
                  {
                    goto LABEL_132;
                  }

                  if (((1 << v40) & 0x900000009) != 0)
                  {
                    goto LABEL_56;
                  }

                  if (((1 << v40) & 0x10000000100) == 0)
                  {
                    goto LABEL_132;
                  }

                  v41 = objc_autoreleasePoolPush();
                  IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(2);
                  v43 = v245;
                  if (IsOSLogEnabled)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      v44 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                      {
                        v45 = objc_opt_class();
                        v46 = class_getName(v45);
                        v255 = v244;
                        v256 = v43;
                        v257 = 2080;
                        v258 = v46;
                        v47 = v44;
                        v48 = "CoreData: error: Property '%s' is a 64 bit scalar type on class '%s' that does not match its entity's property's 32 bit scalar type.  Implicit coercion to 32 bits in the database is not recommended.\n";
                        goto LABEL_59;
                      }
                    }

                    else
                    {
                      v49 = _PFLogGetLogStream(2);
                      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                      {
                        v54 = objc_opt_class();
                        v55 = class_getName(v54);
                        v255 = v244;
                        v256 = v43;
                        v257 = 2080;
                        v258 = v55;
                        v47 = v49;
                        v48 = "CoreData: warning: Property '%s' is a 64 bit scalar type on class '%s' that does not match its entity's property's 32 bit scalar type.  Implicit coercion to 32 bits in the database is not recommended.\n";
LABEL_59:
                        _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, v48, &v255, 0x16u);
                      }
                    }
                  }

                  v50 = _pflogging_catastrophic_mode;
                  v51 = objc_opt_class();
                  v52 = class_getName(v51);
                  v53 = 1;
                  if (!v50)
                  {
                    v53 = 2;
                  }

                  _NSCoreDataLog_console(v53, "Property '%s' is a 64 bit scalar type on class '%s' that does not match its entity's property's 32 bit scalar type.  Implicit coercion to 32 bits in the database is not recommended.", v43, v52);
                  objc_autoreleasePoolPop(v41);
                  v32 = 113;
                  v33 = 105;
                  goto LABEL_56;
                }

                if (v38 != 300 || (v32 = 113, (*v34 | 0x20) != 0x71))
                {
LABEL_132:
                  v75 = objc_autoreleasePoolPush();
                  if (!_NSCoreDataIsOSLogEnabled(1))
                  {
                    v136 = "Property '%s' is a scalar type on class '%s' that does not match its Entity's property's scalar type.  Dynamically generated accessors do not support implicit type coercion.  Cannot generate a getter method for it.";
                    goto LABEL_244;
                  }

                  v82 = _pflogging_catastrophic_mode;
                  v83 = _PFLogGetLogStream(1);
                  v84 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);
                  v73 = v33;
                  if (v82)
                  {
                    v79 = v245;
                    if (v84)
                    {
LABEL_387:
                      v196 = objc_opt_class();
                      v197 = class_getName(v196);
                      v255 = v244;
                      v256 = v79;
                      v257 = 2080;
                      v258 = v197;
                      _os_log_error_impl(&dword_18565F000, v83, OS_LOG_TYPE_ERROR, "CoreData: error: Property '%s' is a scalar type on class '%s' that does not match its Entity's property's scalar type.  Dynamically generated accessors do not support implicit type coercion.  Cannot generate a getter method for it.\n", &v255, 0x16u);
                    }
                  }

                  else
                  {
                    v79 = v245;
                    if (v84)
                    {
                      goto LABEL_387;
                    }
                  }

                  v136 = "Property '%s' is a scalar type on class '%s' that does not match its Entity's property's scalar type.  Dynamically generated accessors do not support implicit type coercion.  Cannot generate a getter method for it.";
                  goto LABEL_275;
                }
              }

              else if (v38 > 799)
              {
                if (v38 == 900)
                {
LABEL_41:
                  v32 = 100;
                  if (*v34 != 100)
                  {
                    goto LABEL_132;
                  }

                  goto LABEL_56;
                }

                if (v38 != 800)
                {
                  goto LABEL_132;
                }

                v32 = 66;
                v39 = *v34 - 66;
                if (v39 > 0x21 || ((1 << v39) & 0x200000003) == 0)
                {
                  goto LABEL_132;
                }
              }

              else
              {
                if (v38 == 500)
                {
                  goto LABEL_41;
                }

                if (v38 != 600)
                {
                  goto LABEL_132;
                }

                v32 = 102;
                if (*v34 != 102)
                {
                  goto LABEL_132;
                }
              }
            }
          }

LABEL_56:
          v31 = strsep(&v254, ",");
          if (!v31)
          {
            goto LABEL_74;
          }
        }
      }

      v33 = 0;
      v32 = 0;
LABEL_74:
      v73 = v33;
      goto LABEL_309;
    }

    if (v20 == objc_opt_class())
    {
LABEL_308:
      v32 = 0;
      v73 = 0;
      goto LABEL_309;
    }

    v32 = 0;
    v56 = *(v22 + 16);
    v107 = v19 >= v56;
    v57 = v19 - v56;
    if (!v107)
    {
      v73 = 0;
      goto LABEL_309;
    }

    v58 = *(v22 + 24);
    v73 = 0;
    if (v57 >= v58)
    {
LABEL_309:
      if ((*(v7 + 96) & 1) == 0)
      {
        v137 = 0;
        v138 = 0;
        v139 = 0;
        v147 = *(_kvcPropertysPrimitiveGetters(v8) + 8 * v19) == 0;
        v141 = v147;
        if (v147)
        {
          v140 = qword_1ED4BEA18;
        }

        else
        {
          v140 = 0;
        }

        goto LABEL_463;
      }

      goto LABEL_313;
    }

    v59 = malloc_type_calloc(1uLL, v14 + 2, 0xD6FF45F2uLL);
    *v59 = 95;
    strlcat(v59, v12, v14 + 2);
    if (class_getInstanceVariable(v20, v12) || class_getInstanceVariable(v20, v59))
    {
LABEL_307:
      free(v59);
      goto LABEL_308;
    }

    v246 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(2))
    {
      if (_pflogging_catastrophic_mode)
      {
        v60 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v61 = [v8 name];
          v62 = sel_getName(v247);
          v63 = class_getName(v20);
          v255 = 136315906;
          v256 = v12;
          v257 = 2112;
          v258 = v61;
          v259 = 2080;
          v260 = v62;
          v261 = 2080;
          v262 = v63;
          v64 = "CoreData: error: dynamic accessors failed to find @property implementation for '%s' for entity '%@' while resolving selector '%s' on class '%s'.  Did you remember to declare it @dynamic or @synthesized in the @implementation ?\n";
LABEL_421:
          _os_log_error_impl(&dword_18565F000, v60, OS_LOG_TYPE_ERROR, v64, &v255, 0x2Au);
        }
      }

      else
      {
        v60 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v211 = [v8 name];
          v212 = sel_getName(v247);
          v213 = class_getName(v20);
          v255 = 136315906;
          v256 = v12;
          v257 = 2112;
          v258 = v211;
          v259 = 2080;
          v260 = v212;
          v261 = 2080;
          v262 = v213;
          v64 = "CoreData: warning: dynamic accessors failed to find @property implementation for '%s' for entity '%@' while resolving selector '%s' on class '%s'.  Did you remember to declare it @dynamic or @synthesized in the @implementation ?\n";
          goto LABEL_421;
        }
      }
    }

    v164 = _pflogging_catastrophic_mode;
    v165 = [v8 name];
    v166 = sel_getName(v247);
    v167 = class_getName(v20);
    v168 = 1;
    if (!v164)
    {
      v168 = 2;
    }

    _NSCoreDataLog_console(v168, "dynamic accessors failed to find @property implementation for '%s' for entity '%@' while resolving selector '%s' on class '%s'.  Did you remember to declare it @dynamic or @synthesized in the @implementation ?", v12, v165, v166, v167);
    objc_autoreleasePoolPop(v246);
    goto LABEL_307;
  }

  if (v14 < 5)
  {
    goto LABEL_456;
  }

  if (v14 < 0xE)
  {
    if (v14 < 0xA)
    {
      v65 = 0;
      goto LABEL_76;
    }
  }

  else if (!strncmp("setPrimitive", v12, 0xCuLL))
  {
    if (*(&v264 + 1))
    {
      if (v250)
      {
        CFRelease(v250);
      }
    }

    else
    {
      *(&v263 + 1) = v263;
    }

    strlcpy(v16, v12 + 12, v14 + 100);
    v16[v14 - 13] = 0;
    v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
    v81 = [v10 indexForKey:?];
    if (v81 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_237;
    }

    if (*(&v264 + 1))
    {
      if (v250)
      {
        CFRelease(v250);
      }
    }

    else
    {
      *(&v263 + 1) = v263;
    }

    *v16 = __tolower(*v16);
    v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
    v81 = [v10 indexForKey:?];
    if (v81 != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_237:
      v19 = v81;
      if ((_MergedGlobals_72 & 1) == 0)
      {
        [v249 _initializePrimitiveAccessorStubs];
      }

      v137 = 0;
      v73 = 0;
      v32 = 0;
      v138 = 0;
      v140 = qword_1ED4BEA10;
      v141 = 1;
      goto LABEL_462;
    }

    goto LABEL_456;
  }

  if (!strncmp("primitive", v12, 9uLL))
  {
    if (*(&v264 + 1))
    {
      if (v250)
      {
        CFRelease(v250);
      }
    }

    else
    {
      *(&v263 + 1) = v263;
    }

    strlcpy(v16, v12 + 9, v14 + 100);
    v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
    v80 = [v10 indexForKey:?];
    if (v80 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_224;
    }

    if (*(&v264 + 1))
    {
      if (v250)
      {
        CFRelease(v250);
      }
    }

    else
    {
      *(&v263 + 1) = v263;
    }

    *v16 = __tolower(*v16);
    v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
    v80 = [v10 indexForKey:?];
    if (v80 != 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_224:
      v19 = v80;
      if ((byte_1ED4BE9E1 & 1) == 0)
      {
        [v249 _initializeAccessorStubs];
      }

      v137 = 0;
      v73 = 0;
      v32 = 0;
      v138 = 0;
      v139 = 0;
      v140 = qword_1ED4BEA18;
      v141 = 1;
      goto LABEL_463;
    }

    goto LABEL_456;
  }

  v65 = 1;
LABEL_76:
  v66 = *v12;
  if (v66 != 115)
  {
    if (115 == v66)
    {
      goto LABEL_105;
    }

LABEL_80:
    if (v66 == 97)
    {
      v69 = *(v12 + 1);
      if (v69 == 100)
      {
        v69 = *(v12 + 2);
      }

      v70 = 100 - v69;
    }

    else
    {
      v70 = 97 - v66;
    }

    if (!v70)
    {
      if (v14 < 0xB || strncmp("Object:", &v12[v14 - 7], 7uLL))
      {
        goto LABEL_110;
      }

      if (*(&v264 + 1))
      {
        if (v250)
        {
          CFRelease(v250);
        }
      }

      else
      {
        *(&v263 + 1) = v263;
      }

      strlcpy(v16, v12 + 3, v14 + 100);
      v16[v14 - 10] = 0;
      v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
      v162 = [v10 indexForKey:?];
      if (v162 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_335;
      }

      if (*(&v264 + 1))
      {
        if (v250)
        {
          CFRelease(v250);
        }
      }

      else
      {
        *(&v263 + 1) = v263;
      }

      *v16 = __tolower(*v16);
      v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
      v162 = [v10 indexForKey:?];
      if (v162 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_110:
        if (*(&v264 + 1))
        {
          if (v250)
          {
            CFRelease(v250);
          }
        }

        else
        {
          *(&v263 + 1) = v263;
        }

        strlcpy(v16, v12 + 3, v14 + 100);
        v16[v14 - 4] = 0;
        v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
        v85 = [v10 indexForKey:?];
        if (v85 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (*(&v264 + 1))
          {
            if (v250)
            {
              CFRelease(v250);
            }
          }

          else
          {
            *(&v263 + 1) = v263;
          }

          *v16 = __tolower(*v16);
          v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
          v85 = [v10 indexForKey:?];
          if (v85 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_456;
          }
        }

        v19 = v85;
        v137 = 0;
        v73 = 0;
        v32 = 0;
        v140 = 0;
        v141 = 0;
        v147 = [*(v8[12] + 24 + 8 * v85) _isOrdered] == 0;
        v148 = _sharedIMPL_addSet_core;
        v149 = _sharedIMPL_addOrderedSet_core;
      }

      else
      {
LABEL_335:
        v19 = v162;
        v137 = 0;
        v73 = 0;
        v32 = 0;
        v140 = 0;
        v141 = 0;
        v147 = [*(v8[12] + 24 + 8 * v162) _isOrdered] == 0;
        v148 = _sharedIMPL_addObjectToSet_core;
        v149 = _sharedIMPL_addObjectToOrderedSet_core;
      }

      goto LABEL_459;
    }

    if (v14 < 8)
    {
      goto LABEL_230;
    }

    if (strncmp("remove", v12, 6uLL))
    {
      if (v14 < 0x12)
      {
        if (v14 < 0x10)
        {
          goto LABEL_230;
        }
      }

      else
      {
        if (!strncmp("insert", v12, 6uLL))
        {
          if (v14 >= 0x18 && !strncmp("insertObject:in", v12, 0xFuLL) && !strncmp("AtIndex:", &v12[v14 - 8], 8uLL))
          {
            if (*(&v264 + 1))
            {
              if (v250)
              {
                CFRelease(v250);
              }
            }

            else
            {
              *(&v263 + 1) = v263;
            }

            strlcpy(v16, v12 + 15, v14 + 100);
            v16[v14 - 23] = 0;
            v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
            v215 = [v10 indexForKey:?];
            if (v215 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_534;
            }

            if (*(&v264 + 1))
            {
              if (v250)
              {
                CFRelease(v250);
              }
            }

            else
            {
              *(&v263 + 1) = v263;
            }

            *v16 = __tolower(*v16);
            v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
            v215 = [v10 indexForKey:?];
            if (v215 != 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_534:
              v19 = v215;
              v73 = 0;
              v32 = 0;
              v140 = 0;
              v141 = 0;
              v139 = 1;
              v138 = _sharedIMPL_insertObjectToOrderedSetAtIndex_core;
              v137 = "v@:@Q";
              goto LABEL_463;
            }
          }

          else if (!strncmp(":atIndexes:", &v12[v14 - 11], 0xBuLL))
          {
            if (*(&v264 + 1))
            {
              if (v250)
              {
                CFRelease(v250);
              }
            }

            else
            {
              *(&v263 + 1) = v263;
            }

            strlcpy(v16, v12 + 6, v14 + 100);
            v16[v14 - 17] = 0;
            v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
            v189 = [v10 indexForKey:?];
            if (v189 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_385;
            }

            if (*(&v264 + 1))
            {
              if (v250)
              {
                CFRelease(v250);
              }
            }

            else
            {
              *(&v263 + 1) = v263;
            }

            *v16 = __tolower(*v16);
            v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
            v189 = [v10 indexForKey:?];
            if (v189 != 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_385:
              v19 = v189;
              v73 = 0;
              v32 = 0;
              v140 = 0;
              v141 = 0;
              v139 = 1;
              v138 = _sharedIMPL_insertOrderedSetAtIndexes_core;
              v137 = "v@:@@";
              goto LABEL_463;
            }
          }

          goto LABEL_456;
        }

        if (v14 >= 0x17 && !strncmp("replace", v12, 7uLL))
        {
          if (v14 >= 0x23 && !strncmp("replaceObjectIn", v12, 0xFuLL) && !strncmp("AtIndex:withObject:", &v12[v14 - 19], 0x13uLL))
          {
            if (*(&v264 + 1))
            {
              if (v250)
              {
                CFRelease(v250);
              }
            }

            else
            {
              *(&v263 + 1) = v263;
            }

            strlcpy(v16, v12 + 15, v14 + 100);
            v16[v14 - 34] = 0;
            v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
            v234 = [v10 indexForKey:?];
            if (v234 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_543;
            }

            if (*(&v264 + 1))
            {
              if (v250)
              {
                CFRelease(v250);
              }
            }

            else
            {
              *(&v263 + 1) = v263;
            }

            *v16 = __tolower(*v16);
            v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
            v234 = [v10 indexForKey:?];
            if (v234 != 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_543:
              v19 = v234;
              v73 = 0;
              v32 = 0;
              v140 = 0;
              v141 = 0;
              v139 = 1;
              v138 = _sharedIMPL_replaceObjectInOrderedSetAtIndex_core;
              v137 = "v@:Q@";
              goto LABEL_463;
            }
          }

          else if (v12[v14 - 1] == 58)
          {
            v71 = strnstr(v12, "AtIndexes:with", v14);
            if (v71)
            {
              v72 = v12 - v71;
              if (*(&v264 + 1))
              {
                if (v250)
                {
                  CFRelease(v250);
                }
              }

              else
              {
                *(&v263 + 1) = v263;
              }

              strlcpy(v16, v12 + 7, v14 + 100);
              v16[v72 - 15 + v14] = 0;
              v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
              v209 = [v10 indexForKey:?];
              if (v209 == 0x7FFFFFFFFFFFFFFFLL)
              {
                if (*(&v264 + 1))
                {
                  if (v250)
                  {
                    CFRelease(v250);
                  }
                }

                else
                {
                  *(&v263 + 1) = v263;
                }

                *v16 = __tolower(*v16);
                v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
                v209 = [v10 indexForKey:?];
              }

              v19 = v209;
              v73 = 0;
              v32 = 0;
              v140 = 0;
              v141 = 0;
              v139 = v209 != 0x7FFFFFFFFFFFFFFFLL;
              if (v209 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v137 = 0;
              }

              else
              {
                v137 = "v@:@@";
              }

              if (v209 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v138 = 0;
              }

              else
              {
                v138 = _sharedIMPL_replaceOrderedSetAtIndexes_core;
              }

              goto LABEL_463;
            }
          }

          goto LABEL_456;
        }
      }

      if (!strncmp("validate", v12, 8uLL) && !strncmp(":error:", &v12[v14 - 7], 7uLL))
      {
        if (*(&v264 + 1))
        {
          v177 = v247;
          if (v250)
          {
            CFRelease(v250);
          }
        }

        else
        {
          *(&v263 + 1) = v263;
          v177 = v247;
        }

        strlcpy(v16, v12 + 8, v14 + 100);
        v16[v14 - 15] = 0;
        v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
        if ([v10 indexForKey:?] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (*(&v264 + 1))
          {
            if (v250)
            {
              CFRelease(v250);
            }
          }

          else
          {
            *(&v263 + 1) = v263;
          }

          *v16 = __tolower(*v16);
          v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
          v19 = 0x7FFFFFFFFFFFFFFFLL;
          if ([v10 indexForKey:?] == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_317;
          }

          v177 = v247;
        }

        v191 = v249;
        if (*(&v264 + 1))
        {
          if (v250)
          {
            CFRelease(v250);
          }
        }

        else
        {
          *(&v263 + 1) = v263;
        }

        InstanceMethod = class_getInstanceMethod(v191, sel__defaultValidation_error_);
        Implementation = method_getImplementation(InstanceMethod);
        TypeEncoding = method_getTypeEncoding(InstanceMethod);
        v175 = v191;
        v176 = v177;
        Accessor = Implementation;
        goto LABEL_482;
      }

LABEL_230:
      if (v65)
      {
        v142 = strncmp("will", v12, 4uLL);
        if (!v142)
        {
          if (!strncmp("Change", v12 + 4, 6uLL))
          {
            v145 = 1;
          }

          else
          {
            if (strncmp("Access", v12 + 4, 6uLL))
            {
              goto LABEL_456;
            }

            v145 = 0;
          }

          v154 = 10;
          goto LABEL_290;
        }

        if (v66 == 100)
        {
          v143 = *(v12 + 1);
          if (v143 == 105)
          {
            v143 = *(v12 + 2);
            v144 = 100;
          }

          else
          {
            v144 = 105;
          }

          v146 = v144 - v143;
        }

        else
        {
          v146 = 100 - v66;
        }

        if (!v146)
        {
          if (!strncmp("Change", v12 + 3, 6uLL))
          {
            v145 = 1;
            goto LABEL_289;
          }

          if (!strncmp("Access", v12 + 3, 6uLL))
          {
            v145 = 0;
LABEL_289:
            v154 = 9;
LABEL_290:
            if (*(&v264 + 1))
            {
              if (v250)
              {
                CFRelease(v250);
              }
            }

            else
            {
              *(&v263 + 1) = v263;
            }

            strlcpy(v16, &v12[v154], v14 + 100);
            v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
            v163 = [v10 indexForKey:?];
            if (v163 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if (*(&v264 + 1))
              {
                if (v250)
                {
                  CFRelease(v250);
                }
              }

              else
              {
                *(&v263 + 1) = v263;
              }

              *v16 = __tolower(*v16);
              v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
              v163 = [v10 indexForKey:?];
              v19 = 0x7FFFFFFFFFFFFFFFLL;
              if (v163 == 0x7FFFFFFFFFFFFFFFLL)
              {
LABEL_317:
                v137 = 0;
                v73 = 0;
                v32 = 0;
                goto LABEL_314;
              }
            }

            v169 = v163;
            v170 = v247;
            v171 = v249;
            if (*(&v264 + 1))
            {
              if (v250)
              {
                CFRelease(v250);
              }
            }

            else
            {
              *(&v263 + 1) = v263;
            }

            if (v142)
            {
              Accessor = pf_empty_method_imp;
              if (!v145)
              {
LABEL_329:
                TypeEncoding = "v@:";
                v175 = v171;
                v176 = v170;
                goto LABEL_482;
              }

              v173 = _sharedIMPL_dcvfk_core;
            }

            else if (v145)
            {
              v173 = _sharedIMPL_wcvfk_core;
            }

            else
            {
              v173 = _PF_Handler_WillAccess_Property;
            }

            Accessor = generateAccessor(v173, v169, 2);
            goto LABEL_329;
          }
        }
      }

LABEL_456:
      v137 = 0;
      v73 = 0;
      v32 = 0;
      v138 = 0;
      v140 = 0;
      v141 = 0;
      v139 = 0;
      goto LABEL_457;
    }

    if (v14 >= 0xE)
    {
      v86 = &v12[v14];
      if (!strncmp("Object:", &v12[v14 - 7], 7uLL))
      {
        if (*(&v264 + 1))
        {
          if (v250)
          {
            CFRelease(v250);
          }
        }

        else
        {
          *(&v263 + 1) = v263;
        }

        strlcpy(v16, v12 + 6, v14 + 100);
        v16[v14 - 13] = 0;
        v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
        v179 = [v10 indexForKey:?];
        if (v179 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_366;
        }

        if (*(&v264 + 1))
        {
          if (v250)
          {
            CFRelease(v250);
          }
        }

        else
        {
          *(&v263 + 1) = v263;
        }

        *v16 = __tolower(*v16);
        v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
        v179 = [v10 indexForKey:?];
        if (v179 != 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_366:
          v19 = v179;
          v137 = 0;
          v73 = 0;
          v32 = 0;
          v140 = 0;
          v141 = 0;
          v147 = [*(v8[12] + 24 + 8 * v179) _isOrdered] == 0;
          v148 = _sharedIMPL_removeObjectFromSet_core;
          v149 = _sharedIMPL_removeObjectFromOrderedSet_core;
          goto LABEL_459;
        }

        goto LABEL_446;
      }

      if (v14 >= 0x19)
      {
        if (!strncmp("AtIndex:", v86 - 8, 8uLL))
        {
          if (!strncmp("removeObjectFrom", v12, 0x10uLL))
          {
            if (*(&v264 + 1))
            {
              if (v250)
              {
                CFRelease(v250);
              }
            }

            else
            {
              *(&v263 + 1) = v263;
            }

            strlcpy(v16, v12 + 16, v14 + 100);
            v16[v14 - 24] = 0;
            v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
            v214 = [v10 indexForKey:?];
            if (v214 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_531;
            }

            if (*(&v264 + 1))
            {
              if (v250)
              {
                CFRelease(v250);
              }
            }

            else
            {
              *(&v263 + 1) = v263;
            }

            *v16 = __tolower(*v16);
            v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
            v214 = [v10 indexForKey:?];
            if (v214 != 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_531:
              v19 = v214;
              v138 = _sharedIMPL_removeObjectFromOrderedSetAtIndex_core;
              v73 = 0;
              v32 = 0;
              v140 = 0;
              v141 = 0;
              v139 = 1;
              v137 = "v@:Q";
              goto LABEL_463;
            }
          }

          goto LABEL_446;
        }

LABEL_299:
        if (!strncmp("AtIndexes:", v86 - 10, 0xAuLL))
        {
          if (*(&v264 + 1))
          {
            if (v250)
            {
              CFRelease(v250);
            }
          }

          else
          {
            *(&v263 + 1) = v263;
          }

          strlcpy(v16, v12 + 6, v14 + 100);
          v16[v14 - 16] = 0;
          v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
          v190 = [v10 indexForKey:?];
          if (v190 != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_390;
          }

          if (*(&v264 + 1))
          {
            if (v250)
            {
              CFRelease(v250);
            }
          }

          else
          {
            *(&v263 + 1) = v263;
          }

          *v16 = __tolower(*v16);
          v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
          v190 = [v10 indexForKey:?];
          if (v190 != 0x7FFFFFFFFFFFFFFFLL)
          {
LABEL_390:
            v19 = v190;
            v138 = _sharedIMPL_removeOrderedSetAtIndexes_core;
            v137 = 0;
            v73 = 0;
            v32 = 0;
LABEL_407:
            v140 = 0;
            v141 = 0;
LABEL_462:
            v139 = 1;
            goto LABEL_463;
          }
        }

        goto LABEL_446;
      }

      if (v14 >= 0x11)
      {
        goto LABEL_299;
      }
    }

LABEL_446:
    if (*(&v264 + 1))
    {
      if (v250)
      {
        CFRelease(v250);
      }
    }

    else
    {
      *(&v263 + 1) = v263;
    }

    strlcpy(v16, v12 + 6, v14 + 100);
    v16[v14 - 7] = 0;
    v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
    v218 = [v10 indexForKey:?];
    if (v218 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (*(&v264 + 1))
      {
        if (v250)
        {
          CFRelease(v250);
        }
      }

      else
      {
        *(&v263 + 1) = v263;
      }

      *v16 = __tolower(*v16);
      v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
      v218 = [v10 indexForKey:?];
      if (v218 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_456;
      }
    }

    v19 = v218;
    v137 = 0;
    v73 = 0;
    v32 = 0;
    v140 = 0;
    v141 = 0;
    v147 = [*(v8[12] + 24 + 8 * v218) _isOrdered] == 0;
    v148 = _sharedIMPL_removeSet_core;
    v149 = _sharedIMPL_removeOrderedSet_core;
LABEL_459:
    if (v147)
    {
      v138 = v148;
    }

    else
    {
      v138 = v149;
    }

    goto LABEL_462;
  }

  v67 = *(v12 + 1);
  if (v67 == 101)
  {
    v67 = *(v12 + 2);
    v68 = 116;
  }

  else
  {
    v68 = 101;
  }

  if (v68 != v67)
  {
    goto LABEL_80;
  }

LABEL_105:
  if (*(&v264 + 1))
  {
    if (v250)
    {
      CFRelease(v250);
    }
  }

  else
  {
    *(&v263 + 1) = v263;
  }

  strlcpy(v16, v12 + 3, v14 + 100);
  v16[v14 - 4] = 0;
  v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
  v74 = [v10 indexForKey:?];
  if (v74 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (*(&v264 + 1))
    {
      if (v250)
      {
        CFRelease(v250);
      }
    }

    else
    {
      *(&v263 + 1) = v263;
    }

    *v16 = __tolower(*v16);
    v250 = CFStringCreateWithCStringNoCopy(v13, v16, 0x600u, v17);
    v74 = [v10 indexForKey:?];
    if (v74 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_456;
    }
  }

  v19 = v74;
  v87 = objc_opt_class();
  v246 = *(v8[12] + 24 + 8 * v19);
  v88 = v8[14];
  v89 = class_getProperty(v87, v16);
  if (!v89)
  {
    if (v87 == objc_opt_class())
    {
LABEL_396:
      v32 = 0;
      v73 = 0;
      v127 = 1;
      goto LABEL_397;
    }

    v32 = 0;
    v126 = v88[2];
    v127 = 1;
    v107 = v19 >= v126;
    v128 = v19 - v126;
    if (!v107)
    {
      v73 = 0;
LABEL_397:
      if ([v246 isReadOnly])
      {
        v203 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(1))
        {
          v204 = _pflogging_catastrophic_mode;
          v205 = _PFLogGetLogStream(1);
          v206 = os_log_type_enabled(v205, OS_LOG_TYPE_ERROR);
          if (v204)
          {
            if (v206)
            {
              goto LABEL_410;
            }
          }

          else if (v206)
          {
LABEL_410:
            v207 = [v8 name];
            v255 = 136315394;
            v256 = v16;
            v257 = 2112;
            v258 = v207;
            _os_log_error_impl(&dword_18565F000, v205, OS_LOG_TYPE_ERROR, "CoreData: error: Property '%s' is marked readonly on entity '%@'.  Cannot generate a setter method for it.\n", &v255, 0x16u);
          }
        }

        v139 = 1;
        _NSCoreDataLog_console(1, "Property '%s' is marked readonly on entity '%@'.  Cannot generate a setter method for it.", v16, [v8 name]);
        objc_autoreleasePoolPop(v203);
        v137 = 0;
        v138 = 0;
        v140 = 0;
        v141 = 0;
LABEL_457:
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_463;
      }

      if (v127)
      {
        if ((byte_1ED4BE9E1 & 1) == 0)
        {
          [v249 _initializeAccessorStubs];
        }

        v137 = 0;
        v138 = 0;
        v141 = 0;
        v140 = qword_1ED4BEA20;
        goto LABEL_462;
      }

      v138 = _sharedIMPL_copying_setvfk_core;
      v137 = 0;
      goto LABEL_407;
    }

    v73 = 0;
    if (v128 >= v88[3])
    {
      goto LABEL_397;
    }

    v129 = malloc_type_calloc(1uLL, v14 + 2, 0x744393C1uLL);
    *v129 = 95;
    strlcat(v129, v16, v14 + 2);
    if (class_getInstanceVariable(v87, v16) || class_getInstanceVariable(v87, v129))
    {
LABEL_395:
      free(v129);
      goto LABEL_396;
    }

    v130 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(2))
    {
      if (_pflogging_catastrophic_mode)
      {
        v131 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
        {
          v132 = [v8 name];
          v133 = sel_getName(v247);
          v134 = class_getName(v87);
          v255 = 136315906;
          v256 = v16;
          v257 = 2112;
          v258 = v132;
          v259 = 2080;
          v260 = v133;
          v261 = 2080;
          v262 = v134;
          v135 = "CoreData: error: dynamic accessors failed to find @property implementation for '%s' for entity '%@' while resolving selector '%s' on class '%s'.  Did you remember to declare it @dynamic or @synthesized in the @implementation ?\n";
LABEL_545:
          _os_log_error_impl(&dword_18565F000, v131, OS_LOG_TYPE_ERROR, v135, &v255, 0x2Au);
        }
      }

      else
      {
        v131 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
        {
          v235 = [v8 name];
          v236 = sel_getName(v247);
          v237 = class_getName(v87);
          v255 = 136315906;
          v256 = v16;
          v257 = 2112;
          v258 = v235;
          v259 = 2080;
          v260 = v236;
          v261 = 2080;
          v262 = v237;
          v135 = "CoreData: warning: dynamic accessors failed to find @property implementation for '%s' for entity '%@' while resolving selector '%s' on class '%s'.  Did you remember to declare it @dynamic or @synthesized in the @implementation ?\n";
          goto LABEL_545;
        }
      }
    }

    v198 = _pflogging_catastrophic_mode;
    v199 = [v8 name];
    v200 = sel_getName(v247);
    v201 = class_getName(v87);
    v202 = 1;
    if (!v198)
    {
      v202 = 2;
    }

    _NSCoreDataLog_console(v202, "dynamic accessors failed to find @property implementation for '%s' for entity '%@' while resolving selector '%s' on class '%s'.  Did you remember to declare it @dynamic or @synthesized in the @implementation ?", v16, v199, v200, v201);
    objc_autoreleasePoolPop(v130);
    goto LABEL_395;
  }

  v90 = property_getAttributes(v89);
  v91 = strlen(v90);
  *&v244 = &v243;
  MEMORY[0x1EEE9AC00](v91);
  v93 = &v243 - v92;
  strlcpy(&v243 - v92, v90, v94);
  v254 = v93;
  v95 = strsep(&v254, ",");
  if (!v95)
  {
    LODWORD(v245) = 0;
    v32 = 0;
    v98 = 1;
LABEL_221:
    v73 = v245;
    v127 = v98;
    goto LABEL_397;
  }

  v97 = v95;
  v32 = 0;
  LODWORD(v245) = 0;
  *&v96 = 136315394;
  v243 = v96;
  v98 = 1;
  while (1)
  {
    v99 = *v97;
    if (v99 == 67)
    {
      v105 = v88[12];
      v107 = v19 >= v105;
      v106 = v19 - v105;
      v107 = !v107 || v106 >= v88[13];
      if (!v107 || ((v108 = v88[20], v107 = v19 >= v108, v109 = v19 - v108, v107) ? (v110 = v109 >= v88[21]) : (v110 = 1), !v110))
      {
        v157 = objc_autoreleasePoolPush();
        v150 = _NSCoreDataIsOSLogEnabled(1);
        v73 = v245;
        if (v150)
        {
          v151 = _pflogging_catastrophic_mode;
          v152 = _PFLogGetLogStream(1);
          v153 = os_log_type_enabled(v152, OS_LOG_TYPE_ERROR);
          if (v151)
          {
            if (v153)
            {
LABEL_443:
              v216 = objc_opt_class();
              v217 = class_getName(v216);
              v255 = v243;
              v256 = v16;
              v257 = 2080;
              v258 = v217;
              _os_log_error_impl(&dword_18565F000, v152, OS_LOG_TYPE_ERROR, "CoreData: error: Property '%s' is marked copy on class '%s'.  Cannot generate a copying setter method for NSManagedObject's to-one relationship.\n", &v255, 0x16u);
            }
          }

          else if (v153)
          {
            goto LABEL_443;
          }
        }

        v178 = objc_opt_class();
        class_getName(v178);
        _NSCoreDataLog_console(1, "Property '%s' is marked copy on class '%s'.  Cannot generate a copying setter method for NSManagedObject's to-one relationship.");
        goto LABEL_349;
      }

      v98 = 0;
      goto LABEL_180;
    }

    if (v99 != 84)
    {
      if (v99 == 87)
      {
        v157 = objc_autoreleasePoolPush();
        v158 = _NSCoreDataIsOSLogEnabled(1);
        v73 = v245;
        if (!v158)
        {
          goto LABEL_348;
        }

        v159 = _pflogging_catastrophic_mode;
        v160 = _PFLogGetLogStream(1);
        v161 = os_log_type_enabled(v160, OS_LOG_TYPE_ERROR);
        if (v159)
        {
          if (v161)
          {
            goto LABEL_535;
          }
        }

        else if (v161)
        {
LABEL_535:
          v232 = objc_opt_class();
          v233 = class_getName(v232);
          v255 = v243;
          v256 = v16;
          v257 = 2080;
          v258 = v233;
          _os_log_error_impl(&dword_18565F000, v160, OS_LOG_TYPE_ERROR, "CoreData: error: Property '%s' is marked __weak on class '%s'.  Cannot generate a setter method for it.\n", &v255, 0x16u);
        }

LABEL_348:
        v184 = objc_opt_class();
        class_getName(v184);
        _NSCoreDataLog_console(1, "Property '%s' is marked __weak on class '%s'.  Cannot generate a setter method for it.");
        goto LABEL_349;
      }

      goto LABEL_180;
    }

    v101 = v97[1];
    v100 = v97 + 1;
    if (v101 == 64 || (isTypeEncodingObject(v100) & 1) != 0)
    {
      goto LABEL_180;
    }

    v102 = v88[2];
    v107 = v19 >= v102;
    v103 = v19 - v102;
    if (!v107 || v103 >= v88[3])
    {
      break;
    }

    v104 = [v246 attributeType];
    if (v104 <= 499)
    {
      if (v104 == 100)
      {
        v32 = 115;
        if ((*v100 | 0x20) != 0x73)
        {
          goto LABEL_350;
        }

        goto LABEL_180;
      }

      if (v104 != 200)
      {
        if (v104 == 300)
        {
          v32 = 113;
          if ((*v100 | 0x20) == 0x71)
          {
            goto LABEL_180;
          }
        }

LABEL_350:
        v157 = objc_autoreleasePoolPush();
        v185 = _NSCoreDataIsOSLogEnabled(1);
        v73 = v245;
        if (v185)
        {
          v186 = _pflogging_catastrophic_mode;
          v187 = _PFLogGetLogStream(1);
          v188 = os_log_type_enabled(v187, OS_LOG_TYPE_ERROR);
          if (v186)
          {
            if (v188)
            {
LABEL_547:
              v240 = objc_opt_class();
              v241 = class_getName(v240);
              v255 = v243;
              v256 = v12;
              v257 = 2080;
              v258 = v241;
              _os_log_error_impl(&dword_18565F000, v187, OS_LOG_TYPE_ERROR, "CoreData: error: Property '%s' is a scalar type on class '%s' that does not match its Entity's property's scalar type.  Dynamically generated accessors do not support implicit type coercion.  Cannot generate a setter method for it.\n", &v255, 0x16u);
            }
          }

          else if (v188)
          {
            goto LABEL_547;
          }
        }

        v210 = objc_opt_class();
        class_getName(v210);
        _NSCoreDataLog_console(1, "Property '%s' is a scalar type on class '%s' that does not match its Entity's property's scalar type.  Dynamically generated accessors do not support implicit type coercion.  Cannot generate a setter method for it.");
        goto LABEL_349;
      }

      v32 = 105;
      v112 = *v100 - 73;
      if (v112 > 0x28)
      {
        goto LABEL_350;
      }

      if (((1 << v112) & 0x900000009) == 0)
      {
        if (((1 << v112) & 0x10000000100) == 0)
        {
          goto LABEL_350;
        }

        v113 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(2))
        {
          if (_pflogging_catastrophic_mode)
          {
            v114 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              v115 = objc_opt_class();
              v116 = class_getName(v115);
              v255 = v243;
              v256 = v12;
              v257 = 2080;
              v258 = v116;
              v117 = v114;
              v118 = "CoreData: error: Property '%s' is a 64 bit scalar type on class '%s' that does not match its entity's property's 32 bit scalar type.  Implicit coercion to 32 bits in the database is not recommended.\n";
              goto LABEL_208;
            }
          }

          else
          {
            v119 = _PFLogGetLogStream(2);
            if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
            {
              v124 = objc_opt_class();
              v125 = class_getName(v124);
              v255 = v243;
              v256 = v12;
              v257 = 2080;
              v258 = v125;
              v117 = v119;
              v118 = "CoreData: warning: Property '%s' is a 64 bit scalar type on class '%s' that does not match its entity's property's 32 bit scalar type.  Implicit coercion to 32 bits in the database is not recommended.\n";
LABEL_208:
              _os_log_error_impl(&dword_18565F000, v117, OS_LOG_TYPE_ERROR, v118, &v255, 0x16u);
            }
          }
        }

        v120 = _pflogging_catastrophic_mode;
        v121 = objc_opt_class();
        v122 = class_getName(v121);
        v123 = 1;
        if (!v120)
        {
          v123 = 2;
        }

        _NSCoreDataLog_console(v123, "Property '%s' is a 64 bit scalar type on class '%s' that does not match its entity's property's 32 bit scalar type.  Implicit coercion to 32 bits in the database is not recommended.", v12, v122);
        objc_autoreleasePoolPop(v113);
        v32 = 113;
        LODWORD(v245) = 105;
      }
    }

    else if (v104 > 799)
    {
      if (v104 == 900)
      {
LABEL_192:
        v32 = 100;
        if (*v100 != 100)
        {
          goto LABEL_350;
        }

        goto LABEL_180;
      }

      if (v104 != 800)
      {
        goto LABEL_350;
      }

      v32 = 66;
      v111 = *v100 - 66;
      if (v111 > 0x21 || ((1 << v111) & 0x200000003) == 0)
      {
        goto LABEL_350;
      }
    }

    else
    {
      if (v104 == 500)
      {
        goto LABEL_192;
      }

      if (v104 != 600)
      {
        goto LABEL_350;
      }

      v32 = 102;
      if (*v100 != 102)
      {
        goto LABEL_350;
      }
    }

LABEL_180:
    v97 = strsep(&v254, ",");
    if (!v97)
    {
      goto LABEL_221;
    }
  }

  v157 = objc_autoreleasePoolPush();
  v180 = _NSCoreDataIsOSLogEnabled(1);
  v73 = v245;
  if (v180)
  {
    v181 = _pflogging_catastrophic_mode;
    v182 = _PFLogGetLogStream(1);
    v183 = os_log_type_enabled(v182, OS_LOG_TYPE_ERROR);
    if (v181)
    {
      if (v183)
      {
LABEL_546:
        v238 = objc_opt_class();
        v239 = class_getName(v238);
        v255 = v243;
        v256 = v12;
        v257 = 2080;
        v258 = v239;
        _os_log_error_impl(&dword_18565F000, v182, OS_LOG_TYPE_ERROR, "CoreData: error: Property '%s' is a scalar type on class '%s'.  Cannot generate a setter method for it.\n", &v255, 0x16u);
      }
    }

    else if (v183)
    {
      goto LABEL_546;
    }
  }

  v208 = objc_opt_class();
  class_getName(v208);
  _NSCoreDataLog_console(1, "Property '%s' is a scalar type on class '%s'.  Cannot generate a setter method for it.");
LABEL_349:
  objc_autoreleasePoolPop(v157);
  v139 = 1;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
  v137 = 0;
  v138 = 0;
  v140 = 0;
  v141 = 0;
LABEL_463:
  if (*(&v264 + 1))
  {
    if (v250)
    {
      CFRelease(v250);
    }
  }

  else
  {
    *(&v263 + 1) = v263;
  }

  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v6) = 0;
    goto LABEL_483;
  }

  v219 = "@@:";
  if (v139)
  {
    v219 = "v@:@";
  }

  if (!v137)
  {
    v137 = v219;
  }

  if (!strcmp(v137, "v@:Q") || !strcmp(v137, "v@:I"))
  {
    generateAccessorWithFunctionPtrSignature(v137, v138, v19);
    if (!v6)
    {
      goto LABEL_483;
    }

    Accessor = v6;
    v175 = v249;
    v176 = v247;
    goto LABEL_481;
  }

  if (strlen(v137) < 5)
  {
    if (v32)
    {
      if (v139)
      {
        qmemcpy(&v255, "v@:", 3);
        HIBYTE(v255) = v32;
        LOBYTE(v256) = 0;
        v221 = _sharedIMPL_setvfk_core_c;
        v222 = v249;
        if (v32 <= 0x65u)
        {
          if (v32 == 66)
          {
            goto LABEL_522;
          }

          if (v32 != 100)
          {
LABEL_530:
            LOBYTE(v6) = 0;
            goto LABEL_483;
          }

          v225 = v253;
          v253[0] = MEMORY[0x1E69E9820];
          v253[1] = 3221225472;
          v226 = &__block_descriptor_40_e11_v24__0_8d16l;
          v227 = __80__NSManagedObject__PFDynamicAccessorsAndPropertySupport__resolveInstanceMethod___block_invoke;
        }

        else
        {
          if (v32 > 0x70u)
          {
            if (v32 != 113)
            {
              v221 = _sharedIMPL_setvfk_core_s;
              goto LABEL_522;
            }

            v221 = _sharedIMPL_setvfk_core_q;
            if (!v73)
            {
              goto LABEL_522;
            }

            if (v73 == 105)
            {
              v221 = _sharedIMPL_setvfk_core_i2q;
              goto LABEL_522;
            }

            goto LABEL_530;
          }

          if (v32 != 102)
          {
            if (v32 == 105)
            {
              v221 = _sharedIMPL_setvfk_core_i;
LABEL_522:
              v229 = v221;
              v230 = v19;
              v231 = 3;
LABEL_527:
              v228 = generateAccessor(v229, v230, v231);
LABEL_528:
              Accessor = v228;
              if (v228)
              {
                TypeEncoding = &v255;
                v175 = v222;
                v176 = v247;
                goto LABEL_482;
              }

              goto LABEL_530;
            }

            goto LABEL_530;
          }

          v225 = v252;
          v252[0] = MEMORY[0x1E69E9820];
          v252[1] = 3221225472;
          v226 = &__block_descriptor_40_e11_v20__0_8f16l;
          v227 = __80__NSManagedObject__PFDynamicAccessorsAndPropertySupport__resolveInstanceMethod___block_invoke_2;
        }

        v225[2] = v227;
        v225[3] = v226;
        v225[4] = v19;
LABEL_517:
        v228 = imp_implementationWithBlock(v225);
        goto LABEL_528;
      }

      LOBYTE(v255) = v32;
      strcpy(&v255 + 1, "@:");
      v223 = _sharedIMPL_pvfk_core_c;
      v222 = v249;
      if (v32 <= 0x65u)
      {
        if (v32 != 66)
        {
          if (v32 != 100)
          {
            goto LABEL_530;
          }

          v251[0] = MEMORY[0x1E69E9820];
          v251[1] = 3221225472;
          v251[2] = __80__NSManagedObject__PFDynamicAccessorsAndPropertySupport__resolveInstanceMethod___block_invoke_3;
          v251[3] = &__block_descriptor_40_e8_d16__0_8l;
          v251[4] = v19;
          v225 = v251;
          goto LABEL_517;
        }
      }

      else if (v32 > 0x70u)
      {
        if (v32 == 113)
        {
          v223 = _sharedIMPL_pvfk_core_q;
          if (v73)
          {
            if (v73 != 105)
            {
              goto LABEL_530;
            }

            v223 = _sharedIMPL_pvfk_core_i2q;
          }
        }

        else
        {
          v223 = _sharedIMPL_pvfk_core_s;
        }
      }

      else if (v32 == 102)
      {
        v223 = _sharedIMPL_pvfk_core_f;
      }

      else
      {
        if (v32 != 105)
        {
          goto LABEL_530;
        }

        v223 = _sharedIMPL_pvfk_core_i;
      }

      v229 = v223;
      v230 = v19;
      v231 = 2;
      goto LABEL_527;
    }

    if (v19 <= 0x31 && v140)
    {
      Accessor = *(v140 + 8 * v19);
      goto LABEL_494;
    }

    if (v138)
    {
      AccessorType = generateAccessor(v138, v19, 3);
    }

    else
    {
      AccessorType = generateAccessorType(v139, v19, v141);
    }

    Accessor = AccessorType;
    v175 = v249;
    v176 = v247;
    if (!Accessor)
    {
      goto LABEL_530;
    }

LABEL_481:
    TypeEncoding = v137;
    goto LABEL_482;
  }

  generateAccessorWithFunctionPtrSignature(v137, v138, v19);
  if (!v6)
  {
    goto LABEL_483;
  }

  Accessor = v6;
LABEL_494:
  v175 = v249;
  v176 = v247;
  TypeEncoding = v137;
LABEL_482:
  class_addMethod(v175, v176, Accessor, TypeEncoding);
  LOBYTE(v6) = 1;
LABEL_483:
  v220 = *MEMORY[0x1E69E9840];
  return v6;
}

void *__80__NSManagedObject__PFDynamicAccessorsAndPropertySupport__resolveInstanceMethod___block_invoke(uint64_t a1, void *a2, double a3)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___sharedIMPL_setvfk_core_d_block_invoke;
  v6[3] = &unk_1E6EC22C8;
  v6[4] = a2;
  v6[5] = v4;
  *&v6[6] = a3;
  return _sharedIMPL_setvfk_core_scalar(a2, v4, v6);
}

void *__80__NSManagedObject__PFDynamicAccessorsAndPropertySupport__resolveInstanceMethod___block_invoke_2(uint64_t a1, void *a2, float a3)
{
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___sharedIMPL_setvfk_core_f_block_invoke;
  v6[3] = &unk_1E6EC22A0;
  v6[4] = a2;
  v6[5] = v4;
  v7 = a3;
  return _sharedIMPL_setvfk_core_scalar(a2, v4, v6);
}

double __80__NSManagedObject__PFDynamicAccessorsAndPropertySupport__resolveInstanceMethod___block_invoke_3(uint64_t a1, unsigned int *a2)
{
  v3 = *(a1 + 32);
  if (!_pvfk_header(a2, v3))
  {
    return 0.0;
  }

  v4 = *(a2 + 3);
  Class = object_getClass(v4);
  return *&v4[*(object_getIndexedIvars(Class) + v3 + 19)];
}

@end