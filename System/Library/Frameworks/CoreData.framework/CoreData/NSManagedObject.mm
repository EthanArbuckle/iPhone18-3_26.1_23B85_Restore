@interface NSManagedObject
+ (BOOL)_classShouldAlwaysRegisterSelectorNamed:(const char *)named;
+ (BOOL)_hasOverriddenAwake;
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (BOOL)resolveClassMethod:(SEL)method;
+ (BOOL)resolveInstanceMethod:(SEL)method;
+ (Class)classForEntity:(id)entity;
+ (NSFetchRequest)fetchRequest;
+ (id)_PFPlaceHolderSingleton;
+ (id)_entityName;
+ (id)allocWithEntity:(id)entity;
+ (unsigned)allocBatch:(id *)batch withEntity:(id)entity count:(unsigned int)count;
+ (void)_entityDeallocated;
+ (void)_initializeAccessorStubs;
+ (void)_initializePrimitiveAccessorStubs;
+ (void)initialize;
- (BOOL)_tryRetain;
- (BOOL)_updateLocationsOfObjectsToLocationByOrderKey:(id)key inRelationshipWithName:(id)name error:(id *)error;
- (BOOL)hasFaultForRelationshipNamed:(NSString *)key;
- (BOOL)hasPersistentChangedValues;
- (BOOL)isDeleted;
- (BOOL)isInserted;
- (BOOL)isUpdated;
- (BOOL)respondsToSelector:(SEL)selector;
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
- (NSKnownKeysDictionary)_newNestedSaveChangedValuesForParent:(_BYTE *)parent;
- (NSKnownKeysDictionary)_newPropertiesForRetainedTypes:(unsigned int *)types andCopiedTypes:(char)copiedTypes preserveFaults:;
- (NSKnownKeysDictionary)_newSnapshotForUndo__;
- (NSManagedObject)init;
- (NSManagedObject)initWithContext:(NSManagedObjectContext *)moc;
- (NSManagedObject)initWithEntity:(NSEntityDescription *)entity insertIntoManagedObjectContext:(NSManagedObjectContext *)context;
- (NSManagedObject)retain;
- (NSManagedObjectContext)managedObjectContext;
- (NSString)description;
- (id)_genericMergeableStringValueForKey:(id)key withIndex:(int64_t)index;
- (id)_genericMutableOrderedSetValueForKey:(id)key withIndex:(int64_t)index flags:(int64_t)flags;
- (id)_genericMutableSetValueForKey:(id)key withIndex:(int64_t)index flags:(int64_t)flags;
- (id)_genericValueForKey:(id)key withIndex:(int64_t)index flags:(int64_t)flags;
- (id)_implicitObservationInfo;
- (id)_initWithEntity:(id)entity withID:(id)d withHandler:(id)handler withContext:(id)context;
- (id)_orderKeysForRelationshipWithName__:(id)name__;
- (id)bindableObjectPublisher;
- (id)dictionaryWithPropertyValues;
- (id)dictionaryWithValuesForKeys:(id)keys;
- (id)diffOrderedSets:(void *)sets :(void *)a2 :(id *)a3 :(void *)a4 :(id *)a5 :(id *)a6 :(id *)a7;
- (id)mergeableStringValueForKey:(id)key;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)mutableArrayValueForKey:(id)key;
- (id)mutableOrderedSetValueForKey:(id)key;
- (id)mutableSetValueForKey:(id)key;
- (id)primitiveValueForKey:(NSString *)key;
- (id)valueForKey:(NSString *)key;
- (id)valueForUndefinedKey:(id)key;
- (uint64_t)_commitPhotoshoperyForRelationshipAtIndex:(void *)index newValue:;
- (uint64_t)_generateErrorWithCode:(void *)code andMessage:(uint64_t)message forKey:(uint64_t)key andValue:(uint64_t)value additionalDetail:;
- (uint64_t)_isValidRelationshipDestination__;
- (uint64_t)_validateForSave:(void *)save;
- (uint64_t)_validateValue:(void *)value forProperty:(uint64_t)property andKey:(uint64_t)key withIndex:(void *)index error:;
- (unint64_t)hash;
- (void)_chainNewError:(uint64_t *)error toOriginalErrorDoublePointer:;
- (void)_clearRawPropertiesWithHint:(uint64_t)hint;
- (void)_didChangeValue:(id)value forRelationship:(id)relationship named:(id)named withInverse:(id)inverse;
- (void)_genericUpdateFromSnapshot:(_DWORD *)snapshot;
- (void)_maintainInverseRelationship:(uint64_t *)relationship forProperty:(void *)property forChange:(uint64_t)change onSet:(void *)set;
- (void)_maintainInverseRelationship:(uint64_t *)relationship forProperty:(void *)property oldDestination:(uint64_t *)destination newDestination:(uint64_t *)newDestination;
- (void)_nilOutReservedCurrentEventSnapshot__;
- (void)_propagateDelete:(void *)delete;
- (void)_setGenericValue:(id)value forKey:(id)key withIndex:(int64_t)index flags:(int64_t)flags;
- (void)_setLastSnapshot__:(void *)result;
- (void)_setObjectID__:(void *)result;
- (void)_setOriginalSnapshot__:(void *)result;
- (void)_substituteEntityAndProperty:(void *)property inString:;
- (void)_updateFromRefreshSnapshot:(int)snapshot includingTransients:;
- (void)_updateFromSnapshot:(uint64_t)snapshot;
- (void)_updateFromUndoSnapshot:(_DWORD *)snapshot;
- (void)_updateToManyRelationship:(void *)relationship from:(void *)from to:(void *)to with:;
- (void)_willChange_Swift_Trampoline;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)awakeFromSnapshotEvents:(NSSnapshotEventType)flags;
- (void)dealloc;
- (void)didAccessValueForKey:(NSString *)key;
- (void)didChange:(unint64_t)change valuesAtIndexes:(id)indexes forKey:(id)key;
- (void)didChangeValueForKey:(NSString *)inKey withSetMutation:(NSKeyValueSetMutationKind)inMutationKind usingObjects:(NSSet *)inObjects;
- (void)didChangeValueForKey:(NSString *)key;
- (void)didSave;
- (void)methodForSelector:(SEL)selector;
- (void)observationInfo;
- (void)prepareForDeletion;
- (void)release;
- (void)setBindableObjectPublisher:(id)publisher;
- (void)setNilValueForKey:(id)key;
- (void)setObservationInfo:(void *)inObservationInfo;
- (void)setPrimitiveValue:(id)value forKey:(NSString *)key;
- (void)setValue:(id)value forKey:(NSString *)key;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)setValuesForKeysWithDictionary:(id)dictionary;
- (void)willAccessValueForKey:(NSString *)key;
- (void)willChange:(unint64_t)change valuesAtIndexes:(id)indexes forKey:(id)key;
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
  if (self)
  {
    v2 = *(self + 48);
    if (v2)
    {
      v3 = *(v2 + 24);
      if (v3)
      {

        *(*(self + 48) + 24) = 0;
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
  if (!self)
  {
    v39 = 0;
LABEL_57:
    v37 = *MEMORY[0x1E69E9840];
    return v39;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(*(self + 32), sel__newChangedValuesForRefresh__);
  }

  if ((*(self + 17) & 0x80) == 0)
  {
    v2 = *(self + 48);
    if (v2)
    {
      if (*(v2 + 8))
      {
        v38 = NSDictionary_EmptyDictionary;
        v3 = _PFEntityForManagedObject(self);
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
        v10 = *(self + 48);
        selfCopy = self;
        if (v10)
        {
          v11 = *(v10 + 8);
        }

        else
        {
          v11 = 0;
        }

        values = [v11 values];
        values2 = [(NSKnownKeysDictionary *)v39 values];
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
              if (*(values + 8 * v18) == v9)
              {
                v19 = 0;
              }

              else
              {
                v19 = *(values + 8 * v18);
              }

              _PF_Handler_Primitive_GetProperty(selfCopy, v18, 0, *(v45 + 8 * v18));
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

                  *(values2 + 8 * v18) = v23;
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
              if (*(values + 8 * v27) == v9)
              {
                v28 = 0;
              }

              else
              {
                v28 = *(values + 8 * v27);
              }

              _PF_Handler_Primitive_GetProperty(selfCopy, v27, 0, *(v45 + 8 * v27));
              v30 = v29;
              isFault = [v28 isFault];
              if ((isFault & [v30 isFault] & 1) == 0 && v28 != v30 && (objc_msgSend(v30, "isEqual:", v28) & 1) == 0)
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
                  values3 = [(NSKnownKeysDictionary *)v32 values];
                  *values3 = v33;
                  values3[1] = v34;
                  values3[2] = v30;
                  if (v42 == 3)
                  {
                    values3[3] = v28;
                  }
                }

                *(values2 + 8 * v27) = v32;
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
  if (self)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self[4], sel__changedTransientProperties__);
    }

    if ((*(self + 17) & 0x80) != 0)
    {
      v4 = NSDictionary_EmptyDictionary;
    }

    else
    {
      v2 = _PFEntityForManagedObject(self);
      if (v2)
      {
        v3 = v2[13];
      }

      else
      {
        v3 = 0;
      }

      v4 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:v3];
      v5 = _PFEntityForManagedObject(self);
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
      values = [(NSKnownKeysDictionary *)[(NSManagedObject *)self _newPropertiesForRetainedTypes:v28 andCopiedTypes:0 preserveFaults:?] values];
      values2 = [(NSKnownKeysDictionary *)v4 values];
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
          v16 = (values2 + 8 * v14);
          v17 = &values[v14];
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
        v22 = (values2 + 8 * v20);
        v23 = &values[v20];
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
  if (objc_getClass("NSManagedObject") == self && qword_1ED4BE9B8 == 0)
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

    InstanceSize = class_getInstanceSize(self);
    qword_1ED4BE9B8 = malloc_type_zone_calloc(v10, 1uLL, (InstanceSize + 7) & 0xFFFFFFFFFFFFFFF8, 0x6E97757EuLL);
    object_setClass(qword_1ED4BE9B8, self);
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
  entity = [(NSManagedObjectID *)[(NSManagedObject *)self objectID] entity];
  v5 = MEMORY[0x1E696AEC0];
  if (entity)
  {
    v53.receiver = self;
    v53.super_class = NSManagedObject;
    v6 = [(NSManagedObject *)&v53 description];
    name = [(NSEntityDescription *)[(NSManagedObject *)self entity] name];
    objectID = [(NSManagedObject *)self objectID];
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

      properties = [_PFEntityForManagedObject(self) properties];
      v12 = [properties count];
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
        v42 = objectID;
        v43 = name;
        v44 = v6;
        v45 = v5;
        v16 = 0;
        v46 = v3;
        v47 = &v15[-4 * HIBYTE(self->_cd_stateFlags)];
        v17 = v12;
        v49 = v13;
        selfCopy = self;
        v48 = properties;
        while (1)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = [properties objectAtIndex:v16];
          name2 = [v19 name];
          v21 = [(NSManagedObject *)self valueForKey:name2];
          if (v21)
          {
            v22 = v21;
            _propertyType = [v19 _propertyType];
            if (_propertyType > 5)
            {
              if ((_propertyType - 6) <= 1)
              {
LABEL_26:
                attributeType = [v19 attributeType];
                if (attributeType <= 799)
                {
                  if (attributeType <= 399)
                  {
                    if (attributeType == 100 || attributeType == 200 || attributeType == 300)
                    {
                      goto LABEL_80;
                    }
                  }

                  else
                  {
                    if (attributeType > 599)
                    {
                      if (attributeType == 600)
                      {
                        goto LABEL_80;
                      }

                      if (attributeType != 700)
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

                      objectID2 = [(__CFString *)v22 substringToIndex:200];
LABEL_79:
                      v22 = objectID2;
                      goto LABEL_80;
                    }

                    if (attributeType == 400 || attributeType == 500)
                    {
                      goto LABEL_80;
                    }
                  }
                }

                else
                {
                  if (attributeType <= 1199)
                  {
                    if (attributeType <= 999)
                    {
                      if (attributeType != 800 && attributeType != 900)
                      {
                        goto LABEL_71;
                      }

LABEL_80:
                      v25 = v9;
                      v24 = v22;
                      goto LABEL_81;
                    }

                    if (attributeType != 1000)
                    {
                      if (attributeType != 1100)
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
                    objectID2 = [(__CFString *)v35 description];
                    goto LABEL_79;
                  }

                  if (attributeType > 1999)
                  {
                    if (attributeType == 2000 || attributeType == 2100)
                    {
                      goto LABEL_77;
                    }
                  }

                  else if (attributeType == 1200 || attributeType == 1800)
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

            if (_propertyType == 2)
            {
              goto LABEL_26;
            }

            if (_propertyType != 3)
            {
              if (_propertyType != 4)
              {
                goto LABEL_37;
              }

              if (([v19 isToMany] & 1) == 0)
              {
                if (((v47[v16 >> 3] >> (v16 & 7)) & 1) == 0)
                {
                  goto LABEL_80;
                }

                objectID2 = [(__CFString *)v22 objectID];
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
              [(__CFString *)v49 setObject:v27 forKey:name2];

              self = selfCopy;
              v17 = v51;
              properties = v48;
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
          [(__CFString *)v25 setObject:v24 forKey:name2];
LABEL_82:
          objc_autoreleasePoolPop(v18);
          if (++v16 == v17)
          {
            v5 = v45;
            v3 = v46;
            name = v43;
            v6 = v44;
            objectID = v42;
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
    v10 = [v5 stringWithFormat:@"%@ (entity: %@; id: %@; data: %@)", v6, name, objectID, v9];
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
  _PFMOClassFactoryData = [self _PFMOClassFactoryData];
  if (_PFMOClassFactoryData)
  {
    v4 = _PFMOClassFactoryData;
    os_unfair_lock_lock(&stru_1ED4BE9E4);
    atomic_store(0, (v4 + 24));
    _PFPlaceHolderSingleton = [self _PFPlaceHolderSingleton];
    v6 = objc_opt_class();
    object_setClass(_PFPlaceHolderSingleton, v6);
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
  _PFPlaceHolderSingleton_core = [self _PFPlaceHolderSingleton_core];
  v3 = objc_opt_class();
  if (v3 != object_getClass(_PFPlaceHolderSingleton_core))
  {
    v4 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v4 = malloc_default_zone();
    }

    InstanceSize = class_getInstanceSize(v3);
    _PFPlaceHolderSingleton_core = malloc_type_zone_calloc(v4, 1uLL, (InstanceSize + 7) & 0xFFFFFFFFFFFFFFF8, 0x100004000313F17uLL);
    object_setClass(_PFPlaceHolderSingleton_core, v3);
    _PFPlaceHolderSingleton_core[4] |= 0x100000u;
    _PFPlaceHolderSingleton_core[2] = 0x20000000;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __generateReturnPointerMethod_block_invoke;
    block[3] = &__block_descriptor_40_e9__v16__0_8l;
    block[4] = _PFPlaceHolderSingleton_core;
    v6 = imp_implementationWithBlock(block);
    Class = object_getClass(v3);
    class_addMethod(Class, sel__PFPlaceHolderSingleton_core, v6, "@@:");
  }

  return _PFPlaceHolderSingleton_core;
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

  values = [var1 values];
  v35 = v9;
  values2 = [(NSKnownKeysDictionary *)v9 values];
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
        if (*(values + 8 * v19) == v11)
        {
          v20 = 0;
        }

        else
        {
          v20 = *(values + 8 * v19);
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

            *(values2 + 8 * v19) = v23;
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
      if (*(values + 8 * v25) == v11)
      {
        v26 = 0;
      }

      else
      {
        v26 = *(values + 8 * v25);
      }

      _PF_Handler_Primitive_GetProperty(self, v25, 0, *(v10 + 8 * v25));
      v28 = v27;
      isFault = [v26 isFault];
      if ((isFault & [v28 isFault] & 1) == 0 && v26 != v28 && (objc_msgSend(v28, "isEqual:", v26) & 1) == 0)
      {
        v30 = v11;
        if (v28)
        {
          v30 = [v28 copy];
        }

        *(values2 + 8 * v25) = v30;
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

  values = [var3 values];
  v33 = v8;
  values2 = [(NSKnownKeysDictionary *)v8 values];
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
        if (*(values + 8 * v18) == v11)
        {
          v19 = 0;
        }

        else
        {
          v19 = *(values + 8 * v18);
        }

        _PF_Handler_Primitive_GetProperty(self, v18, 0, *(v9 + 8 * v18));
        if (v19 != v20 && ([*(v5[12] + 24 + 8 * v18) _epsilonEquals:v20 rhs:v19 withFlags:1] & 1) == 0)
        {
          v21 = v11;
          if (v19)
          {
            v21 = v19;
          }

          *(values2 + 8 * v18) = v21;
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
        if (*(values + 8 * v26) == v11)
        {
          v27 = 0;
        }

        else
        {
          v27 = *(values + 8 * v26);
        }

        _PF_Handler_Primitive_GetProperty(self, v26, 0, *(v9 + 8 * v26));
        v29 = v28;
        isFault = [v27 isFault];
        if ((isFault & [v29 isFault] & 1) == 0 && v27 != v29 && (objc_msgSend(v29, "isEqual:", v27) & 1) == 0)
        {
          v31 = v11;
          if (v27)
          {
            v31 = [v27 copy];
          }

          *(values2 + 8 * v26) = v31;
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
  selfCopy = self;
  if ([(NSManagedObject *)selfCopy bindableObjectPublisher])
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

- (void)_clearRawPropertiesWithHint:(uint64_t)hint
{
  if (self)
  {
    v6 = *(self + 48);
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

        malloc_zone_free(v7, *(self + 48));
        *(self + 48) = 0;
      }
    }

    v8 = *(self + 24);
    if (v8)
    {
      v9 = a2 + hint;
      if (a2 < a2 + hint)
      {
        v10 = *(self + 20);
        if (v10)
        {
          v11 = self + v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = *(self + 19);
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
        v8 = *(self + 24);
      }

      *(self + 24) = 0;
    }

    *(self + 12) = 0;
  }
}

- (NSManagedObject)initWithEntity:(NSEntityDescription *)entity insertIntoManagedObjectContext:(NSManagedObjectContext *)context
{
  selfCopy = self;
  if ((self->_cd_stateFlags & 0x400) != 0)
  {
    return selfCopy;
  }

  if (!entity)
  {
    v13 = objc_opt_class();
    if ((selfCopy->_cd_stateFlags & 0x100000) == 0)
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
      managedObjectModel = [(NSEntityDescription *)entity managedObjectModel];
    }

    else
    {
      managedObjectModel = entity;
    }

    [(NSManagedObjectModel *)managedObjectModel _setIsEditable:0];
  }

  v9 = _PFFastEntityClass(entity);
  if (_MergedGlobals_71 == 1)
  {
    Class = object_getClass(selfCopy);
    if ((selfCopy->_cd_stateFlags & 0x100000) != 0)
    {
LABEL_14:
      selfCopy = [(objc_class *)v9 allocWithEntity:entity];
      goto LABEL_15;
    }

    v11 = Class;
    if (Class == v9)
    {
      goto LABEL_15;
    }

    if (Class == class_getSuperclass(v9) || v11 == object_getClass(qword_1ED4BE9B8))
    {
      _PFDeallocateObject(selfCopy);
      goto LABEL_14;
    }

    v19 = objc_opt_class();
    selfCopy->_cd_stateFlags = selfCopy->_cd_stateFlags & 0xFFFC7FFF | 0x8000;

    v20 = MEMORY[0x1E695DF30];
    v21 = *MEMORY[0x1E695D940];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"NSEntityDescription '%@' can only support a single custom class (tried to instantiate class '%@'). Use a subentity with 0 properties to further specialize the NSManagedObject subclass.", -[NSEntityDescription name](entity, "name"), v19];
    v17 = v20;
    v18 = v21;
LABEL_24:
    objc_exception_throw([v17 exceptionWithName:v18 reason:v16 userInfo:0]);
  }

  object_setClass(selfCopy, v9);
LABEL_15:
  v22.receiver = selfCopy;
  v22.super_class = NSManagedObject;
  selfCopy = [(NSManagedObject *)&v22 init];
  if (selfCopy)
  {
    selfCopy->_cd_objectID = _PFFastTemporaryIDCreation(entity);
    selfCopy->_cd_stateFlags |= 0x8400u;
    if (context)
    {
      [(NSManagedObjectContext *)context insertObject:selfCopy];
    }

    else
    {
      _PFFaultHandlerFulfillFault(0, selfCopy, 0, 0, 1);
    }
  }

  return selfCopy;
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

  selfCopy = self;
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

- (void)willChange:(unint64_t)change valuesAtIndexes:(id)indexes forKey:(id)key
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

  v11 = [v10[13] indexForKey:key];
  v12 = v11;
  p_cd_stateFlags = &self->_cd_stateFlags;
  cd_stateFlags = self->_cd_stateFlags;
  if ((cd_stateFlags & 0x40) == 0)
  {
LABEL_8:
    [(NSManagedObject *)self willAccessValueForKey:key];
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

    v15(self, a2, change, indexes, key);
  }
}

- (void)didChange:(unint64_t)change valuesAtIndexes:(id)indexes forKey:(id)key
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

  off_1ED4BE9D8(self, a2, change, indexes, key);
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

  [(NSManagedObject *)self didAccessValueForKey:key];
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

- (uint64_t)_validateValue:(void *)value forProperty:(uint64_t)property andKey:(uint64_t)key withIndex:(void *)index error:
{
  if (!self)
  {
    goto LABEL_62;
  }

  v58 = 0;
  v59[0] = 0;
  if (index)
  {
    v12 = &v58;
  }

  else
  {
    v12 = 0;
  }

  if (key == 0x7FFFFFFFFFFFFFFFLL)
  {
    Class = object_getClass(self);
    Superclass = class_getSuperclass(Class);
    if (Superclass == objc_opt_class())
    {
      LOBYTE(v18) = 1;
      return v18 & 1;
    }

    v57.receiver = self;
    v57.super_class = NSManagedObject;
    v15 = objc_msgSendSuper2(&v57, sel_validateValue_forKey_error_, a2, property, v12);
  }

  else
  {
    v16 = _PFEntityForManagedObject(self);
    v17 = *(v16[19] + 32);
    if (!v17)
    {
      v17 = _resolveValidationMethods(v16);
    }

    if (!*(v17 + 8 * key))
    {
      v19 = _PFEntityForManagedObject(self);
      goto LABEL_22;
    }

    method_invoke();
  }

  LOBYTE(v18) = v15;
  if (index && (v15 & 1) == 0)
  {
    [(NSManagedObject *)self _chainNewError:v58 toOriginalErrorDoublePointer:v59];
  }

  if (key == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_59;
  }

  v19 = _PFEntityForManagedObject(self);
  if ((v18 & 1) == 0)
  {
    if (!index || ([value _nonPredicateValidateValue:a2 forKey:property inObject:self error:&v58] & 1) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_22:
  v20 = [value _nonPredicateValidateValue:a2 forKey:property inObject:self error:v12];
  v18 = v20;
  if (index && (v20 & 1) == 0)
  {
LABEL_24:
    [(NSManagedObject *)self _chainNewError:v58 toOriginalErrorDoublePointer:v59];
LABEL_25:
    v18 = 0;
  }

  if (*a2)
  {
    if (index)
    {
      v21 = 1;
    }

    else
    {
      v21 = v18;
    }

    if (v21 == 1)
    {
      _rawValidationPredicates = [value _rawValidationPredicates];
      valueCopy = value;
      _rawValidationWarnings = [value _rawValidationWarnings];
      v23 = [_rawValidationPredicates count];
      if (v23)
      {
        v24 = v23;
        v55 = v19;
        v25 = 0;
        v52 = *MEMORY[0x1E696A578];
        v51 = *MEMORY[0x1E696A250];
        propertyCopy = property;
        while (([objc_msgSend(_rawValidationPredicates objectAtIndex:{v25), "evaluateWithObject:", *a2}] & 1) != 0)
        {
LABEL_47:
          if (v24 == ++v25)
          {
            goto LABEL_59;
          }
        }

        if (!index)
        {
          goto LABEL_62;
        }

        v26 = [_rawValidationWarnings objectAtIndex:v25];
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{objc_msgSend(_rawValidationPredicates, "objectAtIndex:", v25), @"NSValidationErrorPredicate", 0}];
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
            selfCopy3 = self;
            intValue = 1550;
            goto LABEL_45;
          }

          if (![v26 isNSNumber])
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v47 = MEMORY[0x1E695DF30];
              v48 = *MEMORY[0x1E695D930];
              v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Illegal validation warning: property = %@; predicate/warning index = %lu; warning = %@.", propertyCopy, v25, v26];
              objc_exception_throw([v47 exceptionWithName:v48 reason:v49 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", propertyCopy, @"NSValidationErrorKey", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", v25), @"index", v26, @"warning", *a2, @"NSValidationErrorValue", 0)}]);
            }

            v53 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v26, "userInfo")}];
            null = *a2;
            v35 = MEMORY[0x1E695DF90];
            if (!*a2)
            {
              null = [MEMORY[0x1E695DFB0] null];
            }

            [v53 addEntriesFromDictionary:{objc_msgSend(v35, "dictionaryWithObjectsAndKeys:", self, @"NSValidationErrorObject", propertyCopy, @"NSValidationErrorKey", null, @"NSValidationErrorValue", 0)}];
            [v53 addEntriesFromDictionary:v27];
            if ([v53 valueForKey:v52] || objc_msgSend(v26, "domain") == v51 && objc_msgSend(v26, "code") >= 1024 && objc_msgSend(v26, "code") < 2048)
            {
              v36 = MEMORY[0x1E696ABC0];
              domain = [v26 domain];
              code = [v26 code];
              v39 = v36;
              v40 = domain;
              userInfo = v53;
            }

            else
            {
              v42 = [MEMORY[0x1E696ABC0] errorWithDomain:v51 code:1550 userInfo:v53];
              [v53 setObject:-[NSManagedObject _substituteEntityAndProperty:inString:](self forKey:{valueCopy, objc_msgSend(v42, "localizedDescription")), v52}];
              v43 = MEMORY[0x1E696ABC0];
              domain2 = [v26 domain];
              code2 = [v26 code];
              userInfo = [v42 userInfo];
              v39 = v43;
              v40 = domain2;
              code = code2;
            }

            v33 = [v39 errorWithDomain:v40 code:code userInfo:userInfo];
            v58 = v33;
            property = propertyCopy;
            goto LABEL_46;
          }

          intValue = [v26 intValue];
          v30 = *a2;
          selfCopy3 = self;
        }

        else
        {
          v30 = *a2;
          selfCopy3 = self;
          intValue = 1550;
        }

        v29 = 0;
LABEL_45:
        v33 = [(NSManagedObject *)selfCopy3 _generateErrorWithCode:intValue andMessage:v29 forKey:property andValue:v30 additionalDetail:v27];
        v58 = v33;
LABEL_46:
        [(NSManagedObject *)self _chainNewError:v33 toOriginalErrorDoublePointer:v59];
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
  if (index && (v18 & 1) == 0)
  {
    LOBYTE(v18) = 0;
    *index = v59[0];
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
        domain = [(NSError *)v61 domain];
        if ([(NSString *)domain isEqualToString:v49])
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
    domain2 = [(NSError *)v61 domain];
    if (![(NSString *)domain2 isEqualToString:v49]|| [(NSError *)v61 code]!= 1560 || [(NSDictionary *)[(NSError *)v61 userInfo] objectForKey:@"NSValidationErrorShouldAttemptRecoveryKey"])
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

- (uint64_t)_generateErrorWithCode:(void *)code andMessage:(uint64_t)message forKey:(uint64_t)key andValue:(uint64_t)value additionalDetail:
{
  if (result)
  {
    v11 = result;
    v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
    v13 = v12;
    if (value)
    {
      [v12 addEntriesFromDictionary:value];
    }

    v14 = MEMORY[0x1E695DF90];
    if (!key)
    {
      key = [MEMORY[0x1E695DFB0] null];
    }

    [v13 addEntriesFromDictionary:{objc_msgSend(v14, "dictionaryWithObjectsAndKeys:", v11, @"NSValidationErrorObject", message, @"NSValidationErrorKey", key, @"NSValidationErrorValue", 0)}];
    v15 = MEMORY[0x1E696A250];
    if (!code)
    {
      code = [objc_msgSend(MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:a2 userInfo:{0), "localizedDescription"}];
    }

    entity = [v11 entity];
    if (entity)
    {
      v17 = [objc_msgSend(entity "propertiesByName")];
    }

    else
    {
      v17 = 0;
    }

    v18 = [(NSManagedObject *)v11 _substituteEntityAndProperty:v17 inString:code];
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

- (void)_chainNewError:(uint64_t *)error toOriginalErrorDoublePointer:
{
  if (result && a2 && error)
  {
    result = *error;
    if (*error)
    {
      v5 = [objc_msgSend(result "userInfo")];
      if (!v5)
      {
        v5 = [MEMORY[0x1E695DF70] arrayWithObject:*error];
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:1560 userInfo:{objc_msgSend(MEMORY[0x1E695DF90], "dictionaryWithObject:forKey:", v5, @"NSDetailedErrors"}];
      }

      return [v5 addObject:a2];
    }

    else
    {
      *error = a2;
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

- (uint64_t)_validateForSave:(void *)save
{
  if (!save)
  {
LABEL_25:
    v14 = 0;
    return v14 & 1;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(save[4], sel__validateForSave_);
  }

  v22 = 0;
  if ((*(save + 17) & 0x80) != 0)
  {
    [(NSFaultHandler *)_insertion_fault_handler fulfillFault:save withContext:save[4]];
  }

  v21 = a2;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(save[4], sel__validatePropertiesWithError_);
  }

  v4 = _PFEntityForManagedObject(save);
  v5 = v4[14];
  v6 = *(v4[13] + 40);
  v7 = _kvcPropertysPrimitiveGetters(v4);
  v19 = _kvcPropertysPublicSetters(v4);
  v8 = v4[12];
  v10 = *v5;
  v9 = v5[1];
  _useFastValidationMethod = [(objc_class *)object_getClass(save) _useFastValidationMethod];
  if (v10 >= v9 + v10)
  {
    v14 = 1;
    return v14 & 1;
  }

  v12 = _useFastValidationMethod;
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
    _PF_Handler_Primitive_GetProperty(save, v10, v15, *(v7 + 8 * v10));
    v17 = v16;
    v23 = v16;
    if (v12)
    {
      if (([(NSManagedObject *)save _validateValue:*(v20 + 8 * v10) forProperty:v15 andKey:v10 withIndex:v13 error:?]& 1) != 0)
      {
        goto LABEL_18;
      }
    }

    else if ([save validateValue:&v23 forKey:v15 error:v13])
    {
LABEL_18:
      if (v17 != v23 && ([v17 isEqual:?] & 1) == 0)
      {
        _PF_Handler_Public_SetProperty(save, v10, v23, v15, *(v19 + 8 * v10));
      }

      goto LABEL_21;
    }

    if (!v21)
    {
      goto LABEL_25;
    }

    [(NSManagedObject *)save _chainNewError:v24 toOriginalErrorDoublePointer:&v22];
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

- (id)mutableArrayValueForKey:(id)key
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
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"NSManagedObjects of entity '%@' do not support -mutableArrayValueForKey: for the property '%@'", -[NSEntityDescription name](-[NSManagedObject entity](self, "entity"), "name"), key), 0}]);
      }
    }
  }

  v9.receiver = self;
  v9.super_class = NSManagedObject;
  return [(NSManagedObject *)&v9 mutableArrayValueForKey:key];
}

- (id)mutableSetValueForKey:(id)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (v5 && (v6 = v5, v7 = [*(v5 + 13) indexForKey:key], v7 != 0x7FFFFFFFFFFFFFFFLL))
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
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"NSManagedObjects of entity '%@' do not support -mutableSetValueForKey: for the property '%@'", -[NSEntityDescription name](-[NSManagedObject entity](self, "entity"), "name"), key), 0}]);
      }
    }

    cd_stateFlags = self->_cd_stateFlags;
    if ((cd_stateFlags & 0x40) == 0)
    {
      [(NSManagedObject *)self willAccessValueForKey:key];
    }

    _kvcPropertysPublicGetters(v6);
    v19 = [(NSManagedObject *)self _genericMutableSetValueForKey:key withIndex:v9 flags:0];
    if ((cd_stateFlags & 0x40) == 0)
    {
      [(NSManagedObject *)self didAccessValueForKey:key];
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

- (id)mutableOrderedSetValueForKey:(id)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (v5 && (v6 = v5, v7 = [*(v5 + 13) indexForKey:key], v7 != 0x7FFFFFFFFFFFFFFFLL))
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
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"NSManagedObjects of entity '%@' do not support -mutableOrderedSetValueForKey: for the property '%@'", -[NSEntityDescription name](-[NSManagedObject entity](self, "entity"), "name"), key), 0}]);
      }
    }

    cd_stateFlags = self->_cd_stateFlags;
    if ((cd_stateFlags & 0x40) == 0)
    {
      [(NSManagedObject *)self willAccessValueForKey:key];
    }

    _kvcPropertysPublicGetters(v6);
    v8 = [(NSManagedObject *)self _genericMutableOrderedSetValueForKey:key withIndex:v9 flags:0];
    if ((cd_stateFlags & 0x40) == 0)
    {
      [(NSManagedObject *)self didAccessValueForKey:key];
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = NSManagedObject;
    return [(NSManagedObject *)&v20 mutableOrderedSetValueForKey:key];
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

- (void)setValuesForKeysWithDictionary:(id)dictionary
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
    values = [v7 values];
    null = [MEMORY[0x1E695DFB0] null];
    v8 = [dictionary count];
    v9 = MEMORY[0x1EEE9AC00](v8);
    v12 = v24 - v11;
    v13 = 8 * v10;
    if (v9 >= 0x201)
    {
      v12 = NSAllocateScannedUncollectable();
      v15 = NSAllocateScannedUncollectable();
      [dictionary getObjects:v15 andKeys:v12];
    }

    else
    {
      bzero(v24 - v11, 8 * v10);
      MEMORY[0x1EEE9AC00](v14);
      v15 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v15, v13);
      [dictionary getObjects:v15 andKeys:v12];
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
      if (*&v15[8 * v16] == null)
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

        else if ([*(values + 8 * v20) _isToManyRelationship])
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
    [(NSManagedObject *)&v30 setValuesForKeysWithDictionary:dictionary];
  }

LABEL_26:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)_updateToManyRelationship:(void *)relationship from:(void *)from to:(void *)to with:
{
  if (self)
  {
    if ([relationship isNSOrderedSet])
    {
      v23 = 0;
      v24 = 0;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      [NSManagedObject diffOrderedSets:relationship];
      v10 = v24;
      if ([v24 count])
      {
        [self willChange:3 valuesAtIndexes:v10 forKey:a2];
        [to removeObjectsAtIndexes:v10];
        [self didChange:3 valuesAtIndexes:v10 forKey:a2];
      }

      v11 = v23;
      if ([v23 count])
      {
        [self willChange:2 valuesAtIndexes:v11 forKey:a2];
        [to insertObjects:v22 atIndexes:v11];
        [self didChange:2 valuesAtIndexes:v11 forKey:a2];
      }

      v12 = v21;
      if ([v21 count])
      {
        [self willChange:4 valuesAtIndexes:v12 forKey:a2];
        v13 = v20;
        [to removeObjectsInArray:v20];
        if ([to count])
        {
          [to insertObjects:v13 atIndexes:v12];
        }

        else
        {
          [to addObjectsFromArray:v13];
        }

        [self didChange:4 valuesAtIndexes:v12 forKey:a2];
      }
    }

    else
    {
      if ([from count] && (v14 = objc_msgSend(from, "mutableCopy")) != 0)
      {
        v18 = v14;
        [v14 minusSet:relationship];
      }

      else
      {
        v18 = 0;
      }

      if ([relationship count])
      {
        v15 = [relationship mutableCopy];
        v16 = v15;
        if (v15)
        {
          if (from)
          {
            fromCopy = from;
          }

          else
          {
            fromCopy = NSSet_EmptySet;
          }

          [v15 minusSet:fromCopy];
        }
      }

      else
      {
        v16 = 0;
      }

      if ([v16 count])
      {
        [self willChangeValueForKey:a2 withSetMutation:2 usingObjects:v16];
        [to minusSet:v16];
        [self didChangeValueForKey:a2 withSetMutation:2 usingObjects:v16];
      }

      if ([v19 count])
      {
        [self willChangeValueForKey:a2 withSetMutation:1 usingObjects:v19];
        [to unionSet:v19];
        [self didChangeValueForKey:a2 withSetMutation:1 usingObjects:v19];
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

- (id)dictionaryWithValuesForKeys:(id)keys
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
    v13 = [(NSManagedObject *)&v30 dictionaryWithValuesForKeys:keys];
LABEL_28:
    v26 = *MEMORY[0x1E69E9840];
    return v13;
  }

  v6 = v5;
  v7 = [keys count];
  if (keys)
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

      [keys getObjects:v10 range:{0, v8, v27}];
      v17 = v6[13];
      propertiesByName = [v6 propertiesByName];
      v29 = _kvcPropertysPublicGetters(v6);
      values = [propertiesByName values];
      null = [MEMORY[0x1E695DFB0] null];
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
          if ([Property isFault] && objc_msgSend(*(values + 8 * v24), "_isToManyRelationship"))
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
          v25 = null;
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

    values2 = v10 + 24;
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

    values3 = var1;
    mapping = [(NSKnownKeysDictionary *)v21 mapping];
    v46 = v21;
    values = [(NSKnownKeysDictionary *)v21 values];
    for (i = 0; i != v13; ++i)
    {
      v25 = [(NSKnownKeysMappingStrategy *)mapping indexForKey:*&v16[8 * i]];
      v26 = v11;
      if (v25 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = *(values + 8 * v25);
        v28 = *(values2 + 8 * v25);
        isTransient = [v28 isTransient];
        v26 = v11;
        if ((isTransient & 1) == 0)
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

    if (!values3)
    {
    }

    goto LABEL_55;
  }

  if (var1)
  {
    values2 = [(NSKnownKeysDictionary *)var1 values];
    v47 = [[NSKnownKeysDictionary alloc] initWithSearchStrategy:[(NSKnownKeysDictionary *)var1 mapping]];
    values3 = [(NSKnownKeysDictionary *)v47 values];
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
        v38 = (values3 + 8 * v36);
        v39 = (values2 + 8 * v36);
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

- (id)mergeableStringValueForKey:(id)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (v5 && (v6 = v5, v7 = [*(v5 + 13) indexForKey:key], v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = v7;
    cd_stateFlags = self->_cd_stateFlags;
    if ((cd_stateFlags & 0x40) == 0)
    {
      [(NSManagedObject *)self willAccessValueForKey:key];
    }

    _kvcPropertysPublicGetters(v6);
    v11 = [(NSManagedObject *)self _genericMergeableStringValueForKey:key withIndex:v9];
    if ((cd_stateFlags & 0x40) == 0)
    {
      [(NSManagedObject *)self didAccessValueForKey:key];
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

- (id)valueForUndefinedKey:(id)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[<%@ %p> valueForUndefinedKey:]: the entity %@ is not key value coding-compliant for the key %@.", objc_opt_class(), self, -[NSEntityDescription name](-[NSManagedObject entity](self, "entity"), "name"), key];
  v6 = objc_alloc(MEMORY[0x1E695DF20]);
  if (!key)
  {
    key = [MEMORY[0x1E695DFB0] null];
  }

  v7 = [v6 initWithObjectsAndKeys:{self, @"NSTargetObjectUserInfoKey", key, @"NSUnknownUserInfoKey", 0}];
  v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E696AA00] reason:v5 userInfo:v7];

  [v8 raise];
  return 0;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[<%@ %p> setValue:forUndefinedKey:]: the entity %@ is not key value coding-compliant for the key %@.", objc_opt_class(), self, -[NSEntityDescription name](-[NSManagedObject entity](self, "entity"), "name"), key];
  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  if (!key)
  {
    key = [MEMORY[0x1E695DFB0] null];
  }

  v8 = [v7 initWithObjectsAndKeys:{self, @"NSTargetObjectUserInfoKey", key, @"NSUnknownUserInfoKey", 0}];
  v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E696AA00] reason:v6 userInfo:v8];

  [v9 raise];
}

- (void)setNilValueForKey:(id)key
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v5 = _PFEntityForManagedObject(self);
  if (v5 && (v6 = [v5[13] indexForKey:key], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {

    _PF_Handler_SetNilValueForKeyIndex(self, key, v6);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"[<%@ %p> setNilValueForKey]: instance of entity %@ could not set nil as the value for the key %@.", objc_opt_class(), self, -[NSEntityDescription name](-[NSManagedObject entity](self, "entity"), "name"), key}];
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
  values = [var1 values];
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
        v16 = *(values + 8 * v14) == v9 ? 0 : *(values + 8 * v14);
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
    v21 = *(values + 8 * v19) == v9 ? 0 : *(values + 8 * v19);
    _PF_Handler_Primitive_GetProperty(self, v19, 0, *(v6 + 8 * v19));
    v23 = v22;
    isFault = [v21 isFault];
    if ((isFault & [v23 isFault] & 1) == 0 && v21 != v23 && !objc_msgSend(v23, "isEqual:", v21))
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
  null = key;
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
  if (!null)
  {
    goto LABEL_42;
  }

LABEL_3:
  result.location = 0;
  result.length = 0;
  v48.length = CFStringGetLength(null);
  v48.location = 0;
  if (CFStringFindWithOptions(null, @".", v48, 0, &result))
  {
    v49.length = result.location;
    v49.location = 0;
    v5 = CFStringCreateWithSubstring(0, null, v49);
    null = v5;
  }

  else
  {
    v5 = 0;
  }

  v6 = _PFEntityForManagedObject(self);
  if (!v6 || (v7 = v6, v8 = [*(v6 + 13) indexForKey:null], v8 == 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_43:
    v33 = MEMORY[0x1E696AEC0];
    v34 = objc_opt_class();
    name = [(NSEntityDescription *)[(NSManagedObject *)self entity] name];
    v36 = @"<null>";
    if (null)
    {
      v36 = null;
    }

    v37 = [v33 stringWithFormat:@"[<%@ %p> valueForUndefinedKey:]: the entity %@ is not key value coding-compliant for the key %@.", v34, self, name, v36];
    v38 = objc_alloc(MEMORY[0x1E695DF20]);
    if (!null)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v39 = [v38 initWithObjectsAndKeys:{self, @"NSTargetObjectUserInfoKey", null, @"NSUnknownUserInfoKey", 0}];
    v40 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E696AA00] reason:v37 userInfo:v39];

    if (v5)
    {
      CFRelease(v5);
    }

    objc_exception_throw(v40);
  }

  v9 = v8;
  v10 = v7[14];
  [(NSManagedObject *)self willAccessValueForKey:null];
  v11 = v10[12];
  v13 = v9 >= v11;
  v12 = v9 - v11;
  v13 = !v13 || v12 >= v10[13];
  if (!v13 || (v14 = v10[18], v13 = v9 >= v14, v15 = v9 - v14, v13) && v15 < v10[19])
  {
    array = _PF_ObjectIDsForDeferredFault(self, v9);
LABEL_17:
    array2 = array;
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
      [(NSManagedObject *)self didAccessValueForKey:null];
      goto LABEL_43;
    }
  }

  v24 = _kvcPropertysPrimitiveGetters(v7);
  Property = _PF_Handler_Public_GetProperty(self, v9, null, *(v24 + 8 * v9));
  if (!Property)
  {
    array = [MEMORY[0x1E695DEC8] array];
    goto LABEL_17;
  }

  v26 = Property;
  v27 = v10[20];
  v13 = v9 >= v27;
  v28 = v9 - v27;
  if (v13 && v28 < v10[21])
  {
    array = [MEMORY[0x1E695DEC8] arrayWithObject:{objc_msgSend(Property, "objectID")}];
    goto LABEL_17;
  }

  array2 = [MEMORY[0x1E695DF70] array];
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

        -[NSArray addObject:](array2, "addObject:", [*(*(&v41 + 1) + 8 * i) objectID]);
      }

      v30 = [v26 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v30);
  }

LABEL_18:
  [(NSManagedObject *)self didAccessValueForKey:null];
  if (v5)
  {
    CFRelease(v5);
  }

  v18 = *MEMORY[0x1E69E9840];
  return array2;
}

+ (NSFetchRequest)fetchRequest
{
  entity = [self entity];
  if (entity)
  {
    v4 = entity;
    v5 = objc_alloc_init(NSFetchRequest);
    [(NSFetchRequest *)v5 setEntity:v4];
    return v5;
  }

  entityName = [self entityName];
  if (!entityName)
  {
    return 0;
  }

  return [NSFetchRequest fetchRequestWithEntityName:entityName];
}

- (NSManagedObject)initWithContext:(NSManagedObjectContext *)moc
{
  v14[1] = *MEMORY[0x1E69E9840];
  entity = [objc_opt_class() entity];
  v6 = entity;
  if (moc && !entity)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = [v7 stringWithUTF8String:class_getName(v8)];
    persistentStoreCoordinator = [(NSManagedObjectContext *)moc persistentStoreCoordinator];
    if (persistentStoreCoordinator)
    {
      persistentStoreCoordinator = persistentStoreCoordinator->_modelMap;
    }

    v6 = [(_PFModelMap *)persistentStoreCoordinator entityForClassName:v9 inContext:moc];
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

- (void)setBindableObjectPublisher:(id)publisher
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

  self->_cd_extras->var4 = publisher;
}

- (id)_initWithEntity:(id)entity withID:(id)d withHandler:(id)handler withContext:(id)context
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = NSManagedObject;
  result = [(NSManagedObject *)&v11 init:entity];
  if (result)
  {
    v10 = result;
    *(result + 4) = context;
    if (!dCopy)
    {
      dCopy = _PFFastTemporaryIDCreation(entity);
    }

    v10[5] = dCopy;
    *(v10 + 4) |= 0x8400u;
    return [v10 initWithEntity:entity insertIntoManagedObjectContext:context];
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

- (uint64_t)_commitPhotoshoperyForRelationshipAtIndex:(void *)index newValue:
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
        if (v9 != index)
        {
          result = [*(v8 + 8 * a2) isFault];
          if (result)
          {

            result = [index copy];
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
          if (v13 != index)
          {
            result = [*(v12 + 8 * a2) isFault];
            if (result)
            {

              result = [index copy];
              *(v12 + 8 * a2) = result;
            }
          }
        }
      }
    }
  }

  return result;
}

- (NSKnownKeysDictionary)_newPropertiesForRetainedTypes:(unsigned int *)types andCopiedTypes:(char)copiedTypes preserveFaults:
{
  v41 = a2;
  typesCopy = types;
  v43 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(self[4], sel__newPropertiesForRetainedTypes_andCopiedTypes_preserveFaults_);
    }

    if ((*(self + 17) & 0x80) != 0)
    {
      [(NSFaultHandler *)_insertion_fault_handler fulfillFault:self withContext:self[4]];
    }

    v6 = _PFEntityForManagedObject(self);
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
            _PF_Handler_Primitive_GetProperty(self, v20, 0, *(v7 + 8 * v20));
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

    v41 = *typesCopy;
    if (v41)
    {
      v24 = 1;
      do
      {
        v25 = (v14 + 16 * typesCopy[v24]);
        v27 = *v25;
        v26 = v25[1];
        if (*v25 < v26 + *v25)
        {
          do
          {
            _PF_Handler_Primitive_GetProperty(self, v27, 0, *(v7 + 8 * v27));
            v29 = v28;
            v30 = v15;
            if (v29)
            {
              if ((copiedTypes & 1) == 0 && [v29 isFault])
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

- (NSKnownKeysDictionary)_newNestedSaveChangedValuesForParent:(_BYTE *)parent
{
  v55 = *MEMORY[0x1E69E9840];
  if (!parent)
  {
    goto LABEL_63;
  }

  parentCopy = parent;
  v4 = _PFEntityForManagedObject(parent);
  v5 = v4;
  v6 = v4 ? v4[13] : 0;
  if ((parentCopy[17] & 0x80) != 0)
  {
    goto LABEL_63;
  }

  v7 = *(parentCopy + 6);
  if (!v7 || !*(v7 + 8))
  {
    goto LABEL_63;
  }

  managedObjectContext = [a2 managedObjectContext];
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
  v12 = *(parentCopy + 6);
  if (v12)
  {
    v13 = *(v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  values = [v13 values];
  v46 = v9;
  values2 = [(NSKnownKeysDictionary *)v9 values];
  v15 = *(v47 + 16);
  v14 = *(v47 + 24);
  if (v15 < v14 + v15)
  {
    do
    {
      if (*(values + 8 * v15) == v11)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(values + 8 * v15);
      }

      _PF_Handler_Primitive_GetProperty(parentCopy, v15, 0, *(v10 + 8 * v15));
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

          *(values2 + 8 * v15) = v19;
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
        if (*(values + 8 * v25) == v11)
        {
          v26 = 0;
        }

        else
        {
          v26 = *(values + 8 * v25);
        }

        _PF_Handler_Primitive_GetProperty(parentCopy, v25, 0, *(v10 + 8 * v25));
        if (v26 != v27)
        {
          v28 = v27;
          if (([v27 isEqual:v26] & 1) == 0)
          {
            v29 = v11;
            if (v28)
            {
              v29 = _PFRetainedObjectForMappedChildObjectIDInParentContext([v28 objectID], managedObjectContext);
            }

            *(values2 + 8 * v25) = v29;
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
  v49 = managedObjectContext;
  v30 = 3;
  v51 = parentCopy;
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
        if (*(values + 8 * v33) == v11)
        {
          v34 = 0;
        }

        else
        {
          v34 = *(values + 8 * v33);
        }

        _PF_Handler_Primitive_GetProperty(parentCopy, v33, 0, *(v10 + 8 * v33));
        v36 = v35;
        isFault = [v34 isFault];
        if ((isFault & [v36 isFault] & 1) == 0 && v34 != v36 && (objc_msgSend(v36, "isEqual:", v34) & 1) == 0)
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

            values3 = [(NSKnownKeysDictionary *)v38 values];
            *values3 = [_PFRoutines newMutableArrayFromCollection:v40 forParentContext:v49];

            values3[1] = [_PFRoutines newMutableArrayFromCollection:v41 forParentContext:v49];
            v30 = v50;
            if (v50 > 4)
            {
              values3[2] = [_PFRoutines newMutableOrderedSetFromCollection:v36 forParentContext:v49];
              values3[3] = [_PFRoutines newMutableOrderedSetFromCollection:v34 forParentContext:v49];
            }

            else
            {
              values3[2] = [_PFRoutines newMutableSetFromCollection:v36 forParentContext:v49];
            }

            v10 = v48;
          }

          *(values2 + 8 * v33) = v38;
          parentCopy = v51;
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
  if (!self)
  {
    v62 = 0;
    goto LABEL_99;
  }

  selfCopy = self;
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self[4], sel__newSnapshotForUndo__);
  }

  v2 = NSDictionary_EmptyDictionary;
  v3 = _PFEntityForManagedObject(selfCopy);
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
  v7 = selfCopy[6];
  v68 = v2;
  if (v7)
  {
    v8 = *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  values = [v8 values];
  values2 = [(NSKnownKeysDictionary *)v6 values];
  for (i = 0; i != 4; ++i)
  {
    v10 = (v71 + 16 * dword_18592E4CC[i]);
    v11 = *v10;
    v12 = v10[1];
    if (*v10 < (v12 + *v10))
    {
      v13 = (values2 + 8 * v11);
      v14 = (values + 8 * v11);
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
  v72 = selfCopy;
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
        if (*(values + 8 * v21) == v18)
        {
          v23 = 0;
        }

        else
        {
          v23 = *(values + 8 * v21);
        }

        _PF_Handler_Primitive_GetProperty(selfCopy, v21, 0, *(v76 + 8 * v21));
        v25 = v24;
        isFault = [v23 isFault];
        v27 = isFault & [v25 isFault];
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
            values3 = [(NSKnownKeysDictionary *)v28 values];
            *values3 = v30;
            values3[1] = v32;
            v18 = v75;
          }

          *(values2 + 8 * v21) = v28;
          selfCopy = v72;
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
      if (*(values + 8 * v39) == v18)
      {
        v41 = 0;
      }

      else
      {
        v41 = *(values + 8 * v39);
      }

      _PF_Handler_Primitive_GetProperty(selfCopy, v39, 0, *(v76 + 8 * v39));
      v43 = v42;
      isFault2 = [v41 isFault];
      if (isFault2 & [v43 isFault] & 1) != 0 || v41 == v43 || (objc_msgSend(v43, "isEqual:", v41))
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

      selfCopy = v72;
      v18 = v75;
      v40 = v69;
LABEL_90:
      *(values2 + 8 * v39) = v45;
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
  if (!self)
  {
    v5 = 0;
    goto LABEL_27;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self[4], sel__newCommittedSnapshotValues);
  }

  v2 = [NSKnownKeysDictionary alloc];
  v3 = _PFEntityForManagedObject(self);
  if (v3)
  {
    v4 = v3[13];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSKnownKeysDictionary *)v2 initWithSearchStrategy:v4];
  if (([self isInserted] & 1) == 0)
  {
    values = [(NSKnownKeysDictionary *)v5 values];
    v7 = self[6];
    if (v7)
    {
      v8 = *(v7 + 8);
      v9 = NSKeyValueCoding_NullValue;
      if (v8)
      {
        values2 = [v8 values];
        v11 = 0;
LABEL_13:
        v12 = *(_PFEntityForManagedObject(self) + 14);
        v13 = *(v12 + 48);
        v14 = *(v12 + 56);
        if (v13 < v14 + v13)
        {
          v15 = (values + 8 * v13);
          v16 = (values2 + 8 * v13);
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

        v18 = *(_PFEntityForManagedObject(self) + 14);
        v19 = *(v18 + 96);
        v20 = *(v18 + 104);
        if (v19 < v20 + v19)
        {
          v21 = (values + 8 * v19);
          v22 = (values2 + 8 * v19);
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

            objectID = v9;
            if (!v24)
            {
              objectID = [v23 objectID];
            }

            *v21++ = objectID;
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
    v11 = [(NSManagedObject *)self _newPropertiesForRetainedTypes:v28 andCopiedTypes:1 preserveFaults:?];
    values2 = [(NSKnownKeysDictionary *)v11 values];
    goto LABEL_13;
  }

LABEL_27:
  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NSManagedObject;
  return objc_msgSendSuper2(&v4, sel_automaticallyNotifiesObserversForKey_, key);
}

- (id)_genericMergeableStringValueForKey:(id)key withIndex:(int64_t)index
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v7 = _PFEntityForManagedObject(self);
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(NSManagedObject *)self primitiveValueForKey:key];
  }

  else
  {
    v9 = _kvcPropertysPrimitiveGetters(v7);
    _PF_Handler_Primitive_GetProperty(self, index, key, *(v9 + 8 * index));
  }

  if (v8)
  {
    v10 = [[PFMergeableStringProxy alloc] initWithContainer:self key:key mergeableString:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_genericMutableSetValueForKey:(id)key withIndex:(int64_t)index flags:(int64_t)flags
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v8 = _PFEntityForManagedObject(self);
  v9 = v8;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(NSManagedObject *)self primitiveValueForKey:key];
  }

  else
  {
    v11 = _kvcPropertysPrimitiveGetters(v8);
    _PF_Handler_Primitive_GetProperty(self, index, key, *(v11 + 8 * index));
  }

  v12 = v10;
  if (v10)
  {
    Class = object_getClass(self);
    if (Class == objc_opt_class() || (v14 = *(_kvcPropertysPublicRelationshipMutators(v9) + 8 * index)) == 0)
    {
      v15 = [[_NSNotifyingWrapperMutableSet alloc] initWithContainer:self key:key mutableSet:v12];
    }

    else
    {
      v15 = [[_NSProxyWrapperMutableSet alloc] initWithContainer:key key:v12 mutableSet:v14 mutationMethods:?];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_genericMutableOrderedSetValueForKey:(id)key withIndex:(int64_t)index flags:(int64_t)flags
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self->_cd_managedObjectContext, a2);
  }

  v8 = _PFEntityForManagedObject(self);
  v9 = v8;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(NSManagedObject *)self primitiveValueForKey:key];
  }

  else
  {
    v11 = _kvcPropertysPrimitiveGetters(v8);
    _PF_Handler_Primitive_GetProperty(self, index, key, *(v11 + 8 * index));
  }

  v12 = v10;
  if (v10)
  {
    Class = object_getClass(self);
    if (Class == objc_opt_class() || (v14 = *(_kvcPropertysPublicRelationshipMutators(v9) + 8 * index)) == 0)
    {
      v15 = [[_NSNotifyingWrapperMutableOrderedSet alloc] initWithContainer:self key:key mutableOrderedSet:v12];
    }

    else
    {
      v15 = [[_NSProxyWrapperMutableOrderedSet alloc] initWithContainer:key key:v12 mutableOrderedSet:v14 mutationMethods:?];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_maintainInverseRelationship:(uint64_t *)relationship forProperty:(void *)property oldDestination:(uint64_t *)destination newDestination:(uint64_t *)newDestination
{
  if (!relationship || newDestination == destination)
  {
    return;
  }

  v8 = objc_autoreleasePoolPush();
  if (destination && (destination == relationship || (destination[2] & 0x800) == 0))
  {
    if (property)
    {
      v55 = objc_autoreleasePoolPush();
      isToMany = [property isToMany];
      name = [property name];
      _entitysReferenceID = [property _entitysReferenceID];
      entity = [property entity];
      entity2 = [destination entity];
      v14 = entity2;
      if (entity2 != entity)
      {
        _entitysReferenceID = [entity2 _offsetRelationshipIndex:_entitysReferenceID fromSuperEntity:entity andIsToMany:isToMany];
      }

      if (!isToMany)
      {
        v23 = relationship[4];
        v24 = v55;
        if (!v23 || (*(v23 + 42) & 2) == 0 || (!*(_kvcPropertysPrimitiveGetters(v14) + 8 * _entitysReferenceID) ? (v25 = [destination _genericValueForKey:name withIndex:_entitysReferenceID flags:0]) : (v25 = _NSGetUsingKeyValueGetter()), v25 == relationship))
        {
          v28 = _kvcPropertysPublicSetters(v14);
          _PF_Handler_Public_SetProperty(destination, _entitysReferenceID, 0, name, *(v28 + 8 * _entitysReferenceID));
        }

        goto LABEL_39;
      }

      relationshipCopy2 = relationship;
      v15 = _PFEntityForManagedObject(destination);
      v16 = [objc_msgSend(v15 "propertiesByName")];
      v17 = *(_kvcPropertysPrimitiveGetters(v15) + 8 * _entitysReferenceID);
      LODWORD(v16) = [v16 isOrdered];
      [destination willAccessValueForKey:name];
      _PF_Handler_Primitive_GetProperty(destination, _entitysReferenceID, name, v17);
      v19 = v18;
      if (v16)
      {
        if (v18)
        {
          v20 = [v18 indexOfObject:relationship];
          [destination didAccessValueForKey:name];
          if (v20 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v21 = v19;
            v22 = *(_kvcPropertysPublicRelationshipMutators(v15) + 8 * _entitysReferenceID);
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
            [destination willChange:3 valuesAtIndexes:v30 forKey:name];
            [v19 removeObjectAtIndex:v29];
            [destination didChange:3 valuesAtIndexes:v30 forKey:name];
            goto LABEL_37;
          }

          goto LABEL_38;
        }
      }

      else if (v18)
      {
        v26 = [v18 containsObject:relationship];
        [destination didAccessValueForKey:name];
        if (v26)
        {
          v27 = v19;
          v22 = *(_kvcPropertysPublicRelationshipMutators(v15) + 8 * _entitysReferenceID);
          if (v22)
          {
            if (*(v22 + 16))
            {
LABEL_27:
              method_invoke();
              goto LABEL_38;
            }

            v31 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&relationshipCopy2 count:1];
            goto LABEL_36;
          }

          v30 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&relationshipCopy2 count:1];
          [destination willChangeValueForKey:name withSetMutation:2 usingObjects:v30];
          [v19 removeObject:relationshipCopy2];
          [destination didChangeValueForKey:name withSetMutation:2 usingObjects:v30];
LABEL_37:
        }

LABEL_38:
        v24 = v55;
LABEL_39:
        objc_autoreleasePoolPop(v24);
        goto LABEL_40;
      }

      [destination didAccessValueForKey:name];
      goto LABEL_38;
    }

    if (([destination hasChanges] & 1) == 0)
    {
      _PFFastMOCObjectWillChange(relationship[4], destination);
    }
  }

LABEL_40:
  if (newDestination && (newDestination == relationship || (newDestination[2] & 0x800) == 0))
  {
    if (property)
    {
      v33 = objc_autoreleasePoolPush();
      isToMany2 = [property isToMany];
      name2 = [property name];
      _entitysReferenceID2 = [property _entitysReferenceID];
      entity3 = [property entity];
      entity4 = [newDestination entity];
      v39 = entity4;
      if (entity4 != entity3)
      {
        _entitysReferenceID2 = [entity4 _offsetRelationshipIndex:_entitysReferenceID2 fromSuperEntity:entity3 andIsToMany:isToMany2];
      }

      if (!isToMany2)
      {
        v48 = _kvcPropertysPublicSetters(v39);
        _PF_Handler_Public_SetProperty(newDestination, _entitysReferenceID2, relationship, name2, *(v48 + 8 * _entitysReferenceID2));
        goto LABEL_54;
      }

      relationshipCopy2 = relationship;
      v40 = _PFEntityForManagedObject(newDestination);
      v41 = *(_kvcPropertysPrimitiveGetters(v40) + 8 * _entitysReferenceID2);
      v42 = [objc_msgSend(objc_msgSend(v40 "propertiesByName")];
      [newDestination willAccessValueForKey:name2];
      _PF_Handler_Primitive_GetProperty(newDestination, _entitysReferenceID2, name2, v41);
      v44 = v43;
      [newDestination didAccessValueForKey:name2];
      if ([v44 containsObject:relationship])
      {
LABEL_54:
        objc_autoreleasePoolPop(v33);
        goto LABEL_55;
      }

      v45 = v44;
      if (v42)
      {
        v46 = [v44 count];
        v47 = *(_kvcPropertysPublicRelationshipMutators(v40) + 8 * _entitysReferenceID2);
        if (!v47)
        {
          v50 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v46];
          [newDestination willChange:2 valuesAtIndexes:v50 forKey:name2];
          [v44 addObject:relationship];
          [newDestination didChange:2 valuesAtIndexes:v50 forKey:name2];

          goto LABEL_54;
        }

        if (*(v47 + 8))
        {
          goto LABEL_51;
        }

        v51 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:v46];
        v52 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:&relationshipCopy2 count:1];
        v53 = *(v47 + 24);
        method_invoke();
      }

      else
      {
        v49 = *(_kvcPropertysPublicRelationshipMutators(v40) + 8 * _entitysReferenceID2);
        if (v49)
        {
          if (*(v49 + 8))
          {
LABEL_51:
            method_invoke();
            goto LABEL_54;
          }

          v51 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&relationshipCopy2 count:1];
          v54 = *(v49 + 24);
          method_invoke();
        }

        else
        {
          v51 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&relationshipCopy2 count:1];
          [newDestination willChangeValueForKey:name2 withSetMutation:1 usingObjects:v51];
          [v44 addObject:relationshipCopy2];
          [newDestination didChangeValueForKey:name2 withSetMutation:1 usingObjects:v51];
        }
      }

      goto LABEL_54;
    }

    _PFFastMOCObjectWillChange(relationship[4], newDestination);
  }

LABEL_55:

  objc_autoreleasePoolPop(v8);
}

- (void)_maintainInverseRelationship:(uint64_t *)relationship forProperty:(void *)property forChange:(uint64_t)change onSet:(void *)set
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (relationship)
  {
    v8 = [set count];
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

      [set getObjects:v12];
      for (i = 0; i != v9; ++i)
      {
        v14 = *&v12[8 * i];
        if (change == 2)
        {
          v15 = 0;
        }

        else
        {
          v15 = *&v12[8 * i];
          v14 = 0;
        }

        [NSManagedObject _maintainInverseRelationship:relationship forProperty:property oldDestination:v15 newDestination:v14];
      }

      if (v9 >= 0x201)
      {
        NSZoneFree(0, v12);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_didChangeValue:(id)value forRelationship:(id)relationship named:(id)named withInverse:(id)inverse
{
  v37[1] = *MEMORY[0x1E69E9840];
  if ([inverse isReadOnly])
  {
    v34 = MEMORY[0x1E695DF30];
    v35 = *MEMORY[0x1E695D930];
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot maintain read-only inverse relationship %@ for relationship: %@.", objc_msgSend(inverse, "name"), objc_msgSend(relationship, "name")];
    objc_exception_throw([v34 exceptionWithName:v35 reason:v36 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", objc_msgSend(relationship, "name"), @"key", objc_msgSend(inverse, "name"), @"inverse", 0)}]);
  }

  v10 = [value objectForKey:*MEMORY[0x1E696A500]];
  v11 = [value objectForKey:*MEMORY[0x1E696A4F0]];
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
    if (![relationship isToMany])
    {
      [NSManagedObject _maintainInverseRelationship:inverse forProperty:v12 oldDestination:v11 newDestination:?];
      goto LABEL_29;
    }

    v14 = [objc_msgSend(value objectForKey:{*MEMORY[0x1E696A4E8]), "intValue"}];
    if (v14 > 2)
    {
      if (v14 != 4)
      {
        if (v14 != 3)
        {
          goto LABEL_29;
        }

        selfCopy2 = self;
        inverseCopy2 = inverse;
        v17 = 3;
        v18 = v12;
LABEL_28:
        [NSManagedObject _maintainInverseRelationship:selfCopy2 forProperty:inverseCopy2 forChange:v17 onSet:v18];
        goto LABEL_29;
      }

      [NSManagedObject _maintainInverseRelationship:inverse forProperty:3 forChange:v12 onSet:?];
    }

    else
    {
      if (v14 == 1)
      {
        v19 = [v12 count];
        v20 = [v11 count];
        isOrdered = [relationship isOrdered];
        v22 = isOrdered;
        if (isOrdered)
        {
          if (v19)
          {
            MEMORY[0x1EEE9AC00](isOrdered);
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
            isOrdered = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v24 count:v19];
            v12 = isOrdered;
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
            MEMORY[0x1EEE9AC00](isOrdered);
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
            [NSManagedObject _maintainInverseRelationship:inverse forProperty:3 forChange:v31 onSet:?];
          }

          if ([v29 count])
          {
            [NSManagedObject _maintainInverseRelationship:inverse forProperty:2 forChange:v29 onSet:?];
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

    selfCopy2 = self;
    inverseCopy2 = inverse;
    v17 = 2;
    v18 = v11;
    goto LABEL_28;
  }

LABEL_30:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)_propagateDelete:(void *)delete
{
  v75 = a2;
  v85 = *MEMORY[0x1E69E9840];
  if (delete)
  {
    if (_PF_Threading_Debugging_level)
    {
      _PFAssertSafeMultiThreadedAccess_impl(delete[4], sel__propagateDelete_);
    }

    v3 = _PFEntityForManagedObject(delete);
    deleteCopy = delete;
    v5 = v3;
    if ((delete[2] & 0x80) != 0)
    {
      v76 = 0;
    }

    else
    {
      v76 = delete[4];
    }

    v6 = v3[13];
    v72 = v3[14];
    v7 = *(v6 + 40);
    v80 = v3[12] + 24;
    v81 = v7;
    v78 = _kvcPropertysPrimitiveGetters(v3);
    v8 = _kvcPropertysPublicSetters(v5);
    v9 = *(delete + 4);
    deleteCopy[4] = v9 | 0x800;
    v10 = deleteCopy;
    if ((v9 & 0x8000) != 0)
    {
      [(NSFaultHandler *)_insertion_fault_handler fulfillFault:deleteCopy withContext:*(deleteCopy + 4)];
    }

    v69 = v9 & 0x800;
    v83 = 10;
    v84 = 6;
    v11 = &v84;
    v12 = 1;
    v79 = deleteCopy;
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
          deleteRule = [v17 deleteRule];
          if (!deleteRule)
          {
            goto LABEL_28;
          }

          v20 = deleteRule;
          if (deleteRule == 3 && (v16 & 2) == 0)
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

          inverseRelationship = [v17 inverseRelationship];
          v24 = v22;
          _PF_Handler_Public_SetProperty(v10, v15, 0, v18, *(v8 + 8 * v15));
          if (inverseRelationship)
          {
            if (([inverseRelationship isToMany] & 1) == 0)
            {
              entity = [v22 entity];
              entity2 = [inverseRelationship entity];
              _entitysReferenceID = [inverseRelationship _entitysReferenceID];
              if (entity != entity2)
              {
                _entitysReferenceID = [entity _offsetRelationshipIndex:_entitysReferenceID fromSuperEntity:entity2 andIsToMany:0];
              }

              v28 = *(_kvcPropertysPrimitiveGetters(entity) + 8 * _entitysReferenceID);
              _PF_Handler_Primitive_GetProperty(v22, _entitysReferenceID, [inverseRelationship name], v28);
              v10 = v79;
              v16 = v75;
              if (v29 != v79)
              {
                goto LABEL_27;
              }
            }

            [NSManagedObject _maintainInverseRelationship:v10 forProperty:inverseRelationship oldDestination:v22 newDestination:0];
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
      deleteRule2 = [v38 deleteRule];
      if (deleteRule2)
      {
        v41 = deleteRule2;
        if (deleteRule2 != 3 || (v37 & 2) != 0)
        {
          _PF_Handler_Primitive_GetProperty(v79, v35, v39, *(v78 + 8 * v35));
          if (v42)
          {
            v43 = v42;
            if ([v42 count])
            {
              if ((v37 & 2) != 0 || (v41 - 1) <= 1)
              {
                inverseRelationship2 = [v38 inverseRelationship];
                isToMany = [inverseRelationship2 isToMany];
                allObjects = [v43 allObjects];
                v47 = [allObjects count];
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
                [allObjects getObjects:v51 range:{0, v47}];
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
                    if (inverseRelationship2)
                    {
                      if ((isToMany & 1) == 0)
                      {
                        v60 = isToMany;
                        entity3 = [v82[v57] entity];
                        entity4 = [inverseRelationship2 entity];
                        _entitysReferenceID2 = [inverseRelationship2 _entitysReferenceID];
                        if (entity3 != entity4)
                        {
                          _entitysReferenceID2 = [entity3 _offsetRelationshipIndex:_entitysReferenceID2 fromSuperEntity:entity4 andIsToMany:0];
                        }

                        v64 = *(_kvcPropertysPrimitiveGetters(entity3) + 8 * _entitysReferenceID2);
                        _PF_Handler_Primitive_GetProperty(v59, _entitysReferenceID2, [inverseRelationship2 name], v64);
                        v52 = v79;
                        isToMany = v60;
                        v47 = v77;
                        if (v65 != v79)
                        {
                          v66 = 1;
                          goto LABEL_58;
                        }
                      }

                      [NSManagedObject _maintainInverseRelationship:v52 forProperty:inverseRelationship2 oldDestination:v59 newDestination:0];
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

- (void)_substituteEntityAndProperty:(void *)property inString:
{
  propertyCopy = property;
  if (a2)
  {
    if (property)
    {
      v5 = _PFEntityForManagedObject(self);
      v6 = [objc_msgSend(v5 "managedObjectModel")];
      v7 = [v6 localizedEntityNameForEntity:v5];
      v8 = [v6 localizedPropertyNameForProperty:a2];
      if (v7 | v8)
      {
        v9 = v8;
        v10 = [propertyCopy mutableCopyWithZone:0];
        propertyCopy = v10;
        if (v7)
        {
          [v10 replaceOccurrencesOfString:@"%{ENTITY}@" withString:v7 options:2 range:{0, objc_msgSend(v10, "length")}];
        }

        if (v9)
        {
          [propertyCopy replaceOccurrencesOfString:@"%{PROPERTY}@" withString:v9 options:2 range:{0, objc_msgSend(propertyCopy, "length")}];
        }

        v11 = propertyCopy;
      }
    }
  }

  return propertyCopy;
}

- (id)diffOrderedSets:(void *)sets :(void *)a2 :(id *)a3 :(void *)a4 :(id *)a5 :(id *)a6 :(id *)a7
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
  setsCopy = sets;
  v14 = [sets count];
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
  [setsCopy getObjects:v18 range:{0, v14}];
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
    [setsCopy getObjects:v18 range:{0, v14}];
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    if (v14)
    {
      v47 = 0;
      v48 = v81;
      do
      {
        if (bsearch_b(v48, v89, v32, 8uLL, &__block_literal_global_7))
        {
          [indexSet addIndex:v47];
        }

        ++v47;
        v48 += 8;
      }

      while (v14 != v47);
    }

    v49 = v86;
    *v86 = indexSet;
    v50 = indexSet;
    v32 = [setsCopy mutableCopy];
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
    indexSet2 = [MEMORY[0x1E696AD50] indexSet];
    if (v13)
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      do
      {
        if (bsearch_b(&v22[v55], v90, v31, 8uLL, &__block_literal_global_7))
        {
          [indexSet2 addIndex:v56];
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
    *v87 = indexSet2;
    v59 = indexSet2;
    v32 = v80;
    if (!v80)
    {
      v32 = [setsCopy mutableCopy];
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
    v61 = setsCopy;
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
  indexSet3 = [MEMORY[0x1E696AD50] indexSet];
  array = [MEMORY[0x1E695DF70] array];
  if (v62)
  {
    for (i = 0; i != v62; ++i)
    {
      if (*&v22[8 * i] != *&v66[8 * i])
      {
        [indexSet3 addIndex:i];
        [array addObject:*&v22[8 * i]];
      }
    }
  }

  v70 = [indexSet3 count];
  v71 = v84;
  if (v70)
  {
    *v71 = indexSet3;
    *v7 = array;
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

- (void)_genericUpdateFromSnapshot:(_DWORD *)snapshot
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = _PFEntityForManagedObject(snapshot);
  propertiesByName = [v4 propertiesByName];
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

  values = [propertiesByName values];
  null = [MEMORY[0x1E695DFB0] null];
  [snapshot willAccessValueForKey:0];
  snapshot[4] |= 0x800u;
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
    if (*&v13[8 * v14] == null)
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
      v19 = [snapshot primitiveValueForKey:v15];
    }

    else
    {
      _PF_Handler_Primitive_GetProperty(snapshot, v17, v15, *(v24 + 8 * v17));
    }

    v20 = v19;
    if (v16 != v19 && ([v19 isEqual:v16] & 1) == 0)
    {
      if (v18 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [snapshot willChangeValueForKey:v15];
        [snapshot setPrimitiveValue:v16 forKey:v15];
      }

      else
      {
        if ([*(values + 8 * v18) _isToManyRelationship])
        {
          [(NSManagedObject *)snapshot _updateToManyRelationship:v15 from:v20 to:v16 with:v20];
          goto LABEL_23;
        }

        [snapshot willChangeValueForKey:v15];
        _PF_Handler_Primitive_SetProperty(snapshot, v18, v16, v15, *(v22 + 8 * v18));
      }

      [snapshot didChangeValueForKey:v15];
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
  snapshot[4] &= ~0x800u;
  v21 = *MEMORY[0x1E69E9840];
}

- (void)_updateFromSnapshot:(uint64_t)snapshot
{
  v38 = *MEMORY[0x1E69E9840];
  if (!snapshot)
  {
LABEL_36:
    v31 = *MEMORY[0x1E69E9840];
    return;
  }

  v4 = _PFEntityForManagedObject(snapshot);
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
    v8 = *(snapshot + 16);
    if ((v8 & 0x8000) != 0)
    {
      [(NSFaultHandler *)_insertion_fault_handler fulfillFault:snapshot withContext:*(snapshot + 32)];
      v8 = *(snapshot + 16);
    }

    *(snapshot + 16) = v8 | 0x800;
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
    values = [a2 values];
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
          v20 = *(values + 8 * v19);
          if (v20)
          {
            v21 = *(v10 + 8 * v19);
            _PF_Handler_Primitive_GetProperty(snapshot, v19, v21, *(v11 + 8 * v19));
            if (v20 == NSKeyValueCoding_NullValue)
            {
              v20 = 0;
            }

            if (v20 != v22 && ([*(v34[12] + 24 + 8 * v19) _epsilonEquals:v22 rhs:v20 withFlags:1] & 1) == 0)
            {
              [snapshot willChangeValueForKey:v21];
              _PF_Handler_Primitive_SetProperty(snapshot, v19, v20, v21, *(v33 + 8 * v19));
              [snapshot didChangeValueForKey:v21];
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
          v27 = *(values + 8 * v25);
          if (v27)
          {
            v28 = *(v10 + 8 * v25);
            _PF_Handler_Primitive_GetProperty(snapshot, v25, v28, *(v11 + 8 * v25));
            if (v27 == NSKeyValueCoding_NullValue)
            {
              v27 = 0;
            }

            if (v27 != v29)
            {
              v30 = v29;
              if (([v29 isEqual:v27] & 1) == 0)
              {
                [(NSManagedObject *)snapshot _updateToManyRelationship:v28 from:v30 to:v27 with:v30];
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
    *(snapshot + 16) &= ~0x800u;
    goto LABEL_36;
  }

  v7 = *MEMORY[0x1E69E9840];

  [(NSManagedObject *)snapshot _genericUpdateFromSnapshot:a2];
}

- (void)_updateFromRefreshSnapshot:(int)snapshot includingTransients:
{
  v102 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_119:
    v80 = *MEMORY[0x1E69E9840];
    return;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(self[4], sel__updateFromRefreshSnapshot_includingTransients_);
  }

  selfCopy = self;
  v6 = _PFEntityForManagedObject(self);
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
    v10 = selfCopy[4];
    if ((v10 & 0x8000) != 0)
    {
      [(NSFaultHandler *)_insertion_fault_handler fulfillFault:selfCopy withContext:*(selfCopy + 4)];
      v10 = selfCopy[4];
    }

    selfCopy[4] = v10 | 0x800;
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
    values = [a2 values];
    v93 = v7;
    LODWORD(v86) = snapshot;
    v85 = v11;
    if (snapshot)
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
          v20 = *(values + 8 * v18);
          if (v20)
          {
            v21 = *(v90 + 8 * v18);
            _PF_Handler_Primitive_GetProperty(selfCopy, v18, v21, *(v89 + 8 * v18));
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

                [selfCopy willChangeValueForKey:v21];
                _PF_Handler_Primitive_SetProperty(selfCopy, v18, v26, v21, *(v88 + 8 * v18));
                [selfCopy didChangeValueForKey:v21];
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
          v32 = *(values + 8 * v30);
          if (v32)
          {
            v33 = *(v90 + 8 * v30);
            _PF_Handler_Primitive_GetProperty(selfCopy, v30, v33, *(v89 + 8 * v30));
            v35 = v34;
            if (v32 == NSKeyValueCoding_NullValue)
            {
              v32 = 0;
            }

            if (v32 != v34 && (![v32 isFault] || (objc_msgSend(v35, "isFault") & 1) == 0) && (objc_msgSend(v35, "isEqual:", v32) & 1) == 0)
            {
              values2 = [v32 values];
              if (values2)
              {
                v37 = [_PFRoutines newMutableSetFromCollection:v35 byRemovingItems:*(values2 + 8)];
                [v37 addObjectsFromArray:*values2];
              }

              else
              {
                v37 = [_PFRoutines newMutableSetFromCollection:v35 byRemovingItems:0];
              }

              [(NSManagedObject *)selfCopy _updateToManyRelationship:v33 from:v35 to:v37 with:v35];
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
          v42 = *(values + 8 * v41);
          if (v42)
          {
            v43 = *(v89 + 8 * v41);
            v87 = *(v90 + 8 * v41);
            _PF_Handler_Primitive_GetProperty(selfCopy, v41, v87, v43);
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
                values3 = [v42 values];
                v50 = *values3;
                v49 = *(values3 + 8);
                v51 = *(values3 + 24);
                v93 = *(values3 + 16);
              }

              if ([v45 isEqual:v51])
              {
                [(NSManagedObject *)selfCopy _updateToManyRelationship:v87 from:v45 to:v93 with:v45];
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

                [(NSManagedObject *)selfCopy _updateToManyRelationship:v87 from:v45 to:v93 with:v45];
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
    selfCopy[4] &= ~0x800u;
    goto LABEL_119;
  }

  v9 = *MEMORY[0x1E69E9840];

  [(NSManagedObject *)selfCopy _genericUpdateFromSnapshot:a2];
}

- (void)_updateFromUndoSnapshot:(_DWORD *)snapshot
{
  v65 = *MEMORY[0x1E69E9840];
  if (!snapshot)
  {
LABEL_62:
    v52 = *MEMORY[0x1E69E9840];
    return;
  }

  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl(*(snapshot + 4), sel__updateFromUndoSnapshot_);
  }

  snapshotCopy = snapshot;
  v4 = _PFEntityForManagedObject(snapshot);
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
    v8 = snapshot[4];
    if ((v8 & 0x8000) != 0)
    {
      [(NSFaultHandler *)_insertion_fault_handler fulfillFault:snapshot withContext:*(snapshot + 4)];
      v8 = snapshot[4];
    }

    snapshot[4] = v8 | 0x800;
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
    values = [a2 values];
    v12 = 0;
    v13 = v9[1];
    v14 = snapshotCopy;
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
          v20 = *(values + 8 * v18);
          if (v20)
          {
            v21 = *(v56 + 8 * v18);
            _PF_Handler_Primitive_GetProperty(snapshotCopy, v18, v21, *(v57 + 8 * v18));
            v23 = v20 == NSKeyValueCoding_NullValue ? 0 : v20;
            if (v23 != v22 && ([v22 isEqual:v23] & 1) == 0)
            {
              [snapshotCopy willChangeValueForKey:v21];
              _PF_Handler_Primitive_SetProperty(snapshotCopy, v18, v23, v21, *(v10 + 8 * v18));
              [snapshotCopy didChangeValueForKey:v21];
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
          v30 = *(values + 8 * v28);
          if (v30)
          {
            v31 = *(v26 + 8 * v28);
            _PF_Handler_Primitive_GetProperty(snapshotCopy, v28, v31, *(v57 + 8 * v28));
            v33 = v30 == NSKeyValueCoding_NullValue ? 0 : v30;
            if (v33 != v32)
            {
              v34 = v32;
              if ((![v33 isFault] || (objc_msgSend(v34, "isFault") & 1) == 0) && (objc_msgSend(v34, "isEqual:", v33) & 1) == 0)
              {
                values2 = [v33 values];
                v36 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v34];
                [v36 minusSet:*values2];
                [v36 unionSet:values2[1]];
                [(NSManagedObject *)snapshotCopy _updateToManyRelationship:v31 from:v34 to:v36 with:v34];

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
          v42 = *(values + 8 * v40);
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

                v14 = snapshotCopy;
                [(NSManagedObject *)snapshotCopy _updateToManyRelationship:v43 from:v46 to:v47 with:v46];

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

  [(NSManagedObject *)snapshot _genericUpdateFromSnapshot:a2];
}

- (id)_orderKeysForRelationshipWithName__:(id)name__
{
  if ([(NSManagedObject *)self isUpdated]|| [(NSManagedObject *)self isInserted]|| [(NSManagedObject *)self isDeleted])
  {
    return 0;
  }

  v6 = [(NSManagedObject *)self mutableOrderedSetValueForKey:name__];

  return [v6 _orderedObjectsAndKeys];
}

- (BOOL)_updateLocationsOfObjectsToLocationByOrderKey:(id)key inRelationshipWithName:(id)name error:(id *)error
{
  if ([(NSManagedObject *)self isUpdated]|| [(NSManagedObject *)self isInserted]|| [(NSManagedObject *)self isDeleted])
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF435008];
    }

    return 0;
  }

  else
  {
    v10 = [(NSManagedObject *)self mutableOrderedSetValueForKey:name];

    return [v10 _reorderObjectsToLocationsByOrderKey:key error:error];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  if (!selector)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: null selector", _NSMethodExceptionProem()}];
  }

  Class = object_getClass(self);

  return class_respondsToSelector(Class, selector);
}

- (void)methodForSelector:(SEL)selector
{
  if (!selector)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@: null selector", _NSMethodExceptionProem()}];
  }

  Class = object_getClass(self);

  return class_getMethodImplementation(Class, selector);
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if (!selector)
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
      MethodDescription = protocol_getMethodDescription(v11, selector, 1, !isMetaClass);
      types = MethodDescription.types;
      if (MethodDescription.name)
      {
        break;
      }

      v15 = v9[v10];
      v16 = class_isMetaClass(Superclass);
      v17 = protocol_getMethodDescription(v15, selector, 0, !v16);
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
    result = class_getInstanceMethod(v6, selector);
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

+ (Class)classForEntity:(id)entity
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
  v7 = [objc_msgSend(entity "name")];
  if (!v7 || (v8 = v7, !*v7))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Entity name must not be nil." userInfo:0]);
  }

  if (!atomic_load(entity + 124))
  {
    managedObjectModel = [entity managedObjectModel];
    entityCopy = entity;
    if (managedObjectModel)
    {
      entityCopy = [entity managedObjectModel];
    }

    [entityCopy _setIsEditable:0];
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
  entityCopy2 = entity;
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
          v39 = [objc_msgSend(entity "propertiesByName")];
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
            v108 = *(entity + 14);
            v109 = *(v108 + 80);
            v110 = *(v108 + 88);
            if (v109 < v110 + v109)
            {
              v111 = *(entityCopy2[13] + 40);
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
            entity = entityCopy2;
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

          v127 = [objc_msgSend(entity "propertiesByName")];
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
          _PFMOClassFactoryData = [(objc_class *)v21 _PFMOClassFactoryData];
          if (v42 != _PFMOClassFactoryData)
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
            v133 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Testing generated function, factory %p != result %p", v42, _PFMOClassFactoryData];
            objc_exception_throw([v153 exceptionWithName:*MEMORY[0x1E695D930] reason:v133 userInfo:0]);
          }

          [objc_msgSend(entity "versionHash")];
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
        v137 = [objc_msgSend(entity "versionHash")];
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
      if (v139 && v139 != entity)
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
    *(v134 + 8) = entity;
    if (!*(v134 + 16))
    {
      *(v134 + 16) = [objc_msgSend(entity "name")];
    }

    atomic_store(0, (v134 + 24));
    _PFPlaceHolderSingleton = [(objc_class *)v21 _PFPlaceHolderSingleton];
    v141 = _PFPlaceHolderSingleton;
    if (_PFPlaceHolderSingleton != *(v134 + 48))
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

    object_setClass(_PFPlaceHolderSingleton, v21);
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
  _PFMOClassFactoryData = [self _PFMOClassFactoryData];
  if (_PFMOClassFactoryData)
  {
    v4 = *(_PFMOClassFactoryData + 16);
    if (v4)
    {
      goto LABEL_26;
    }
  }

  Name = class_getName(self);
  if (!strncmp(Name, "NSManagedObject", 0xFuLL))
  {
    goto LABEL_25;
  }

  AssociatedObject = objc_getAssociatedObject(self, &PFEntityNameAssociationKey);
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
                managedObjectClassName = [v18 managedObjectClassName];
                if (managedObjectClassName && [v13 isEqualToString:managedObjectClassName])
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
              objc_setAssociatedObject(self, &PFEntityNameAssociationKey, [MEMORY[0x1E695DEC8] arrayWithObject:v4], 0x303);
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

+ (unsigned)allocBatch:(id *)batch withEntity:(id)entity count:(unsigned int)count
{
  v8 = _PFFastEntityClass(entity);
  _PFMOClassFactoryData = [v8 _PFMOClassFactoryData];
  if (!_PFMOClassFactoryData)
  {
    return 0;
  }

  v10 = _PFMOClassFactoryData;
  if (!atomic_load((_PFMOClassFactoryData + 24)))
  {
    if (entity && (v18 = *(entity + 14)) != 0)
    {
      v19 = *(v18 + 8);
    }

    else
    {
      v19 = [objc_msgSend(entity "propertiesByName")];
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

  v12 = _PFAllocateObjects(v8, batch, count, 0);
  InstanceSize = class_getInstanceSize(v8);
  if (v12)
  {
    v14 = *(v10 + 40) | (*(v10 + 32) << 24);
    v15 = v12;
    do
    {
      v16 = *batch++;
      *(v16 + 16) = v14;
      *(v16 + 20) = (InstanceSize + 7) & 0xFFFFFFF8;
      --v15;
    }

    while (v15);
  }

  return v12;
}

+ (id)allocWithEntity:(id)entity
{
  v5 = _PFFastEntityClass(entity);
  if (v5)
  {
    v6 = v5;
    if (!atomic_load(entity + 124))
    {
      managedObjectModel = [entity managedObjectModel];
      entityCopy = entity;
      if (managedObjectModel)
      {
        entityCopy = [entity managedObjectModel];
      }

      [entityCopy _setIsEditable:0];
    }

    _PFMOClassFactoryData = [v6 _PFMOClassFactoryData];
    if (_PFMOClassFactoryData)
    {
      v9 = _PFMOClassFactoryData;
      if (!atomic_load((_PFMOClassFactoryData + 24)))
      {
        v17 = *(entity + 14);
        if (v17)
        {
          v18 = *(v17 + 8);
        }

        else
        {
          v18 = [objc_msgSend(entity "propertiesByName")];
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

    selfCopy = v6;
  }

  else
  {
    selfCopy = self;
  }

  return _PFAllocateObject(selfCopy, 0);
}

+ (BOOL)_hasOverriddenAwake
{
  _PFMOClassFactoryData = [self _PFMOClassFactoryData];
  if (_PFMOClassFactoryData)
  {
    LODWORD(_PFMOClassFactoryData) = (*(_PFMOClassFactoryData + 96) >> 5) & 1;
  }

  return _PFMOClassFactoryData;
}

- (id)_genericValueForKey:(id)key withIndex:(int64_t)index flags:(int64_t)flags
{
  if (flags && (self->_cd_stateFlags & 0x40) == 0)
  {
    return _sharedIMPL_vfk_core(self, a2, index);
  }

  _sharedIMPL_pvfk_core(self, a2, index);
  return result;
}

- (void)_setGenericValue:(id)value forKey:(id)key withIndex:(int64_t)index flags:(int64_t)flags
{
  if (flags)
  {
    _sharedIMPL_setvfk_core(self, a2, value, index);
  }

  else
  {
    _sharedIMPL_setPvfk_core(self, a2, value, index);
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

+ (BOOL)_classShouldAlwaysRegisterSelectorNamed:(const char *)named
{
  v5 = strlen(named);
  if (v5 >= 0x21 && !strncmp("automaticallyNotifiesObserversOf", named, 0x20uLL))
  {
    return 1;
  }

  _PFMOClassFactoryData = [self _PFMOClassFactoryData];
  if (_PFMOClassFactoryData)
  {
    if ((*(_PFMOClassFactoryData + 96) & 0x40) != 0)
    {
      return 1;
    }
  }

  result = 0;
  if (v5 >= 0xA && (dword_1ED4BEEC8 & 0x100) == 0)
  {
    v8 = 9;
    result = (!strncmp("primitive", named, 9uLL) || v5 >= 0xD && (v8 = 12, !strncmp("setPrimitive", named, 0xCuLL))) && (v9 = named[v8]) != 0 && v9 == __toupper(v9);
  }

  return result;
}

+ (BOOL)resolveClassMethod:(SEL)method
{
  v55 = *MEMORY[0x1E69E9840];
  Name = sel_getName(method);
  _PFMOClassFactoryData = [self _PFMOClassFactoryData];
  if (_PFMOClassFactoryData)
  {
    v7 = *(_PFMOClassFactoryData + 8);
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
        Class = object_getClass(self);
        Implementation = method_getImplementation(ClassMethod);
        TypeEncoding = method_getTypeEncoding(ClassMethod);
        class_addMethod(Class, method, Implementation, TypeEncoding);
      }

      LOBYTE(_PFMOClassFactoryData) = !v16;
    }

    else
    {
      LOBYTE(_PFMOClassFactoryData) = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return _PFMOClassFactoryData;
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v295 = *MEMORY[0x1E69E9840];
  Name = sel_getName(method);
  _PFMOClassFactoryData = [self _PFMOClassFactoryData];
  if (!_PFMOClassFactoryData)
  {
    goto LABEL_483;
  }

  v7 = _PFMOClassFactoryData;
  v8 = *(_PFMOClassFactoryData + 8);
  if (!v8)
  {
    LOBYTE(_PFMOClassFactoryData) = 0;
    goto LABEL_483;
  }

  selfCopy = self;
  methodCopy = method;
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
      [selfCopy _initializeAccessorStubs];
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

              attributeType = [v21 attributeType];
              if (attributeType <= 499)
              {
                if (attributeType == 100)
                {
                  v32 = 115;
                  if ((*v34 | 0x20) != 0x73)
                  {
                    goto LABEL_132;
                  }

                  goto LABEL_56;
                }

                if (attributeType == 200)
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

                if (attributeType != 300 || (v32 = 113, (*v34 | 0x20) != 0x71))
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

              else if (attributeType > 799)
              {
                if (attributeType == 900)
                {
LABEL_41:
                  v32 = 100;
                  if (*v34 != 100)
                  {
                    goto LABEL_132;
                  }

                  goto LABEL_56;
                }

                if (attributeType != 800)
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
                if (attributeType == 500)
                {
                  goto LABEL_41;
                }

                if (attributeType != 600)
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
          name = [v8 name];
          v62 = sel_getName(methodCopy);
          v63 = class_getName(v20);
          v255 = 136315906;
          v256 = v12;
          v257 = 2112;
          v258 = name;
          v259 = 2080;
          v260 = v62;
          v261 = 2080;
          v262 = v63;
          v64 = "CoreData: error: dynamic accessors failed to find @property implementation for '%s' for entity '%@' while resolving selector '%s' on class '%s'.  Did you remember to declare it @dynamic or @synthesized in the 
@end