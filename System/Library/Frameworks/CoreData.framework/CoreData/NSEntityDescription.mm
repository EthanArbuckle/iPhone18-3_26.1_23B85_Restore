@interface NSEntityDescription
+ (NSEntityDescription)entityForName:(NSString *)entityName inManagedObjectContext:(NSManagedObjectContext *)context;
+ (NSManagedObject)insertNewObjectForEntityForName:(NSString *)entityName inManagedObjectContext:(NSManagedObjectContext *)context;
+ (id)_MOClassName;
+ (void)initialize;
- (BOOL)_hasUniqueProperties;
- (BOOL)_isSchemaEqual:(id)equal;
- (BOOL)_subentitiesIncludes:(id)includes;
- (BOOL)isEqual:(id)equal;
- (BOOL)performPostDecodeValidationInModel:(id)model error:(id *)error;
- (NSArray)compoundIndexes;
- (NSArray)indexes;
- (NSArray)properties;
- (NSArray)relationshipsWithDestinationEntity:(NSEntityDescription *)entity;
- (NSArray)subentities;
- (NSArray)uniquenessConstraints;
- (NSDictionary)attributesByName;
- (NSDictionary)propertiesByName;
- (NSDictionary)relationshipsByName;
- (NSDictionary)subentitiesByName;
- (NSDictionary)userInfo;
- (NSEntityDescription)init;
- (NSEntityDescription)initWithCoder:(id)coder;
- (NSExpression)coreSpotlightDisplayNameExpression;
- (NSString)managedObjectClassName;
- (NSString)renamingIdentifier;
- (__CFSet)_collectSubentities;
- (id)_attributeNamed:(uint64_t)named;
- (id)_initWithName:(id)name;
- (id)_localRelationshipNamed:(id)named;
- (id)_newMappingForPropertiesOfRange:(unsigned int)range;
- (id)_new_implicitlyObservedKeys;
- (id)_propertiesOnlySubsetFromIndexes:(void *)indexes;
- (id)_propertyWithRenamingIdentifier:(id)identifier;
- (id)_relationshipNamed:(void *)named;
- (id)_uniquenessConstraintsAsFetchIndexes;
- (id)attributeKeys;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)inverseForRelationshipKey:(id)key;
- (id)toManyRelationshipKeys;
- (id)toOneRelationshipKeys;
- (uint64_t)_constraintIsExtension:(uint64_t)result;
- (uint64_t)_dropIndexes;
- (uint64_t)_finalizeIndexes;
- (uint64_t)_hasAttributesWithExternalDataReferences;
- (uint64_t)_hasAttributesWithFileBackedFutures;
- (uint64_t)_hasDerivedAttributes;
- (uint64_t)_hasIndexForProperty:(uint64_t)result;
- (uint64_t)_hasPotentialHashSkew;
- (uint64_t)_hasPropertiesIndexedBySpotlight;
- (uint64_t)_hasUniquedProperty:(uint64_t)result;
- (uint64_t)_isPathologicalForConstraintMerging:(uint64_t)result;
- (uint64_t)_keypathsForDeletions;
- (uint64_t)_newVersionHashInStyle:(uint64_t)result;
- (uint64_t)_propertyKeys:(uint64_t)keys matchingBlock:;
- (uint64_t)_relationshipNamesByType:(uint64_t)type;
- (uint64_t)_removeIndexForProperty:(uint64_t)result;
- (uint64_t)_removeProperty:(uint64_t)result;
- (uint64_t)_removeSubentity:(uint64_t)result;
- (uint64_t)_setSuperentity:(uint64_t)result;
- (uint64_t)_validateIndexNameChangeFrom:(uint64_t)from to:;
- (unint64_t)_entityClass;
- (unint64_t)_keypathsToPrefetchForDeletePropagation;
- (unint64_t)_offsetRelationshipIndex:(unint64_t)index fromSuperEntity:(id)entity andIsToMany:(BOOL)many;
- (unint64_t)_versionHashInStyle:(unint64_t *)result;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)hash;
- (void)_addFactoryToRetainList:(id)list;
- (void)_addIndexForProperty:(uint64_t)property;
- (void)_addProperty:(id)property;
- (void)_addSubentity:(id)subentity;
- (void)_addSupplementalIndexes:(uint64_t)indexes;
- (void)_checkAttributeMembership:(void *)membership hashes:(void *)hashes;
- (void)_checkForNonCascadeNoInverses;
- (void)_checkSelfForNonCascadeNoInverses;
- (void)_commonCachesAndOptimizedState;
- (void)_createCachesAndOptimizeState;
- (void)_extensionsOfParentConstraint:(void *)result;
- (void)_flattenProperties;
- (void)_initializeExtraIVars;
- (void)_keypathsToPrefetchForDeletePropagationPrefixedWith:(uint64_t)with toDepth:(void *)depth processedEntities:;
- (void)_leopardStyleAttributesByName;
- (void)_leopardStyleRelationshipsByName;
- (void)_newSnowLeopardStyleDictionaryContainingPropertiesOfType:(unint64_t)type;
- (void)_propertiesMatchingBlock:(uint64_t)block;
- (void)_restoreValidation;
- (void)_setIndexes:(uint64_t)indexes;
- (void)_setIndexesFromJSONObject:(int)object supplemental:;
- (void)_setIsEditable:(BOOL)editable;
- (void)_setManagedObjectModel:(void *)result;
- (void)_setProperties:(char)properties preserveIndices:;
- (void)_setSubentities:(char)subentities preserveIndices:;
- (void)_setUniquenessConstraints:(uint64_t)constraints;
- (void)_sortedSubentities;
- (void)_stripForMigration;
- (void)_throwIfNotEditable;
- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData uniquedMappings:(id)mappings entities:(id)entities;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)knownKeysMappingStrategy;
- (void)setAbstract:(BOOL)abstract;
- (void)setCompoundIndexes:(NSArray *)compoundIndexes;
- (void)setCoreSpotlightDisplayNameExpression:(NSExpression *)coreSpotlightDisplayNameExpression;
- (void)setIndexes:(NSArray *)indexes;
- (void)setManagedObjectClassName:(NSString *)managedObjectClassName;
- (void)setName:(NSString *)name;
- (void)setRenamingIdentifier:(NSString *)renamingIdentifier;
- (void)setUniquenessConstraints:(NSArray *)uniquenessConstraints;
- (void)setUserInfo:(NSDictionary *)userInfo;
- (void)setVersionHashModifier:(NSString *)versionHashModifier;
@end

@implementation NSEntityDescription

- (NSDictionary)propertiesByName
{
  v20 = *MEMORY[0x1E69E9840];
  superentity = [(NSEntityDescription *)self superentity];
  v4 = superentity;
  if (self && ((*&self->_entityDescriptionFlags >> 3) & 1) != 0 || !superentity)
  {
    properties = self->_properties;
  }

  else
  {
    properties = [MEMORY[0x1E695DF90] dictionary];
    propertiesByName = [(NSEntityDescription *)v4 propertiesByName];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [(NSDictionary *)propertiesByName countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(propertiesByName);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [-[NSDictionary objectForKey:](propertiesByName objectForKey:{v11), "copy"}];
          [v12 _setEntity:self];
          [(NSMutableDictionary *)properties setObject:v12 forKey:v11];
        }

        v8 = [(NSDictionary *)propertiesByName countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [(NSMutableDictionary *)properties addEntriesFromDictionary:self->_properties];
  }

  v13 = *MEMORY[0x1E69E9840];
  return &properties->super;
}

- (BOOL)_hasUniqueProperties
{
  if (result)
  {
    v3 = atomic_load((result + 124));
    if (v3 != 1)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Entity wasn't finalized properly before use" userInfo:{0, v1, v2}]);
    }

    return (*(result + 121) & 0x18) != 0;
  }

  return result;
}

- (NSDictionary)subentitiesByName
{
  if (self->_subentities)
  {
    return &self->_subentities->super;
  }

  else
  {
    return NSDictionary_EmptyDictionary;
  }
}

- (void)dealloc
{
  extraIvars = self->_extraIvars;
  if (extraIvars)
  {

    v4 = self->_extraIvars;
    v4->var0 = 0;
    v5 = atomic_load(&v4->var2);

    v6 = self->_extraIvars;
    atomic_store(0, &v6->var2);

    v7 = self->_extraIvars;
    v7->var3 = 0;

    v8 = self->_extraIvars;
    v8->var4 = 0;

    v9 = self->_extraIvars;
    v9->var5 = 0;
    if (v9->var1)
    {
      os_unfair_lock_lock_with_options();

      v10 = self->_extraIvars;
      v10->var1 = 0;
      os_unfair_lock_unlock(&v10->var6);
    }

    if ((*&self->_entityDescriptionFlags & 0x80) == 0)
    {
      v11 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v11 = malloc_default_zone();
      }

      malloc_zone_free(v11, self->_extraIvars);
    }

    self->_extraIvars = 0;
  }

  p_instanceClass = &self->_instanceClass;
  if (atomic_load(&self->_instanceClass))
  {
    v14 = atomic_load(p_instanceClass);
    [v14 _entityDeallocated];
    v15 = atomic_load(p_instanceClass);

    atomic_store(0, p_instanceClass);
  }

  p_snapshotClass = &self->_snapshotClass;
  if (atomic_load(&self->_snapshotClass))
  {
    v18 = atomic_load(p_snapshotClass);
    [v18 _entityDeallocated];
    v19 = atomic_load(p_snapshotClass);

    atomic_store(0, p_snapshotClass);
  }

  propertyMapping = self->_propertyMapping;
  if (propertyMapping)
  {
    v21 = [propertyMapping length];
  }

  else
  {
    v21 = [-[NSMutableDictionary allKeys](self->_properties "allKeys")];
  }

  v22 = v21;
  propertyRanges = self->_propertyRanges;
  if (propertyRanges && (*&self->_entityDescriptionFlags & 0x80) == 0)
  {
    v24 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v24 = malloc_default_zone();
      propertyRanges = self->_propertyRanges;
    }

    malloc_zone_free(v24, propertyRanges);
  }

  self->_model = 0;
  self->_classNameForEntity = 0;

  self->_properties = 0;
  self->_propertyMapping = 0;

  self->_name = 0;
  self->_superentity = 0;

  self->_subentities = 0;
  self->_userInfo = 0;

  self->_flattenedSubentities = 0;
  if (self->_kvcPropertyAccessors)
  {
    for (i = 0; i != 6; ++i)
    {
      v26 = self->_kvcPropertyAccessors[i];
      if (v26)
      {
        if (i != 4 && v22)
        {
          v27 = 0;
          v28 = 1;
          do
          {
            v29 = v26[v27];
            if (v29)
            {
            }

            v27 = v28;
          }

          while (v22 > v28++);
        }

        v31 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v31 = malloc_default_zone();
        }

        malloc_zone_free(v31, v26);
      }
    }

    PF_FREE_OBJECT_ARRAY(*(self->_kvcPropertyAccessors + 9));
    v32 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v32 = malloc_default_zone();
    }

    malloc_zone_free(v32, self->_kvcPropertyAccessors);
  }

  v33 = atomic_load(&self->_versionHash);

  atomic_store(0, &self->_versionHash);
  self->_versionHashModifier = 0;
  v34.receiver = self;
  v34.super_class = NSEntityDescription;
  [(NSEntityDescription *)&v34 dealloc];
}

+ (void)initialize
{
  objc_opt_self();
  if (!_MergedGlobals_70)
  {
    _MergedGlobals_70 = objc_getClass("NSKeyValueUndefinedSetter");
    qword_1ED4BE9A8 = objc_getClass("NSKeyValueUndefinedGetter");
  }
}

- (void)_initializeExtraIVars
{
  v2 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v2 = malloc_default_zone();
  }

  v3 = malloc_type_zone_calloc(v2, 1uLL, 0x40uLL, 0x108004080E465BEuLL);
  v4 = 0;
  atomic_compare_exchange_strong((self + 128), &v4, v3);
  if (v4)
  {
    v5 = v3;
    v6 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v6 = malloc_default_zone();
    }

    malloc_zone_free(v6, v5);
  }

  else
  {
    *(*(self + 128) + 48) = 0;
  }
}

- (NSArray)subentities
{
  subentities = self->_subentities;
  if (subentities)
  {
    return [(NSMutableDictionary *)subentities allValues];
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (void)_commonCachesAndOptimizedState
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    managedObjectClassName = [self managedObjectClassName];
    if (managedObjectClassName)
    {
      v3 = managedObjectClassName;
      if (([managedObjectClassName isEqualToString:@"NSManagedObject"] & 1) == 0)
      {
        Class = objc_getClass([v3 UTF8String]);
        if (Class)
        {
          v5 = Class;
          AssociatedObject = objc_getAssociatedObject(Class, PFEntityDescriptionAssociationKey);
          if (AssociatedObject)
          {
            v7 = AssociatedObject;
            array = [MEMORY[0x1E695DF70] array];
            v21 = 0u;
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
            if (v9)
            {
              v10 = v9;
              v11 = *v22;
              do
              {
                v12 = 0;
                do
                {
                  if (*v22 != v11)
                  {
                    objc_enumerationMutation(v7);
                  }

                  v13 = *(*(&v21 + 1) + 8 * v12);
                  if (v13)
                  {
                    WeakRetained = objc_loadWeakRetained((v13 + 8));
                    if (WeakRetained)
                    {
                      v15 = WeakRetained;
                      if (WeakRetained != self)
                      {
                        [array addObject:v13];
                      }
                    }
                  }

                  ++v12;
                }

                while (v10 != v12);
                v10 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
              }

              while (v10);
            }

            [array addObject:{+[_PFWeakReference weakReferenceWithObject:](_PFWeakReference, self)}];
          }

          else
          {
            v25 = [_PFWeakReference weakReferenceWithObject:self];
            array = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
          }

          objc_setAssociatedObject(v5, PFEntityDescriptionAssociationKey, array, 0x303);
          v16 = objc_getAssociatedObject(v5, &PFEntityNameAssociationKey);
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:{objc_msgSend(self, "name")}];
          if (v16)
          {
            v18 = [MEMORY[0x1E695DFA8] setWithArray:v16];
            [v18 addObject:v17];
            allObjects = [v18 allObjects];
          }

          else
          {
            allObjects = [MEMORY[0x1E695DEC8] arrayWithObject:v17];
          }

          objc_setAssociatedObject(v5, &PFEntityNameAssociationKey, allObjects, 0x303);
        }
      }
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (NSString)managedObjectClassName
{
  if (self->_classNameForEntity)
  {
    return self->_classNameForEntity;
  }

  else
  {
    return @"NSManagedObject";
  }
}

- (NSDictionary)userInfo
{
  if (self->_userInfo)
  {
    return &self->_userInfo->super;
  }

  else
  {
    return NSDictionary_EmptyDictionary;
  }
}

- (void)_throwIfNotEditable
{
  if (atomic_load(&self->_isImmutable))
  {
    managedObjectModel = [(NSEntityDescription *)self managedObjectModel];

    [(NSManagedObjectModel *)managedObjectModel _throwIfNotEditable];
  }
}

- (uint64_t)_finalizeIndexes
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 128);
    if (v2)
    {
      v3 = *(v2 + 40);
      if (v3)
      {
        v10 = 0u;
        v11 = 0u;
        v8 = 0u;
        v9 = 0u;
        result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (result)
        {
          v4 = result;
          v5 = *v9;
          do
          {
            v6 = 0;
            do
            {
              if (*v9 != v5)
              {
                objc_enumerationMutation(v3);
              }

              [*(*(&v8 + 1) + 8 * v6++) _setEntity:v1];
            }

            while (v4 != v6);
            result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
            v4 = result;
          }

          while (result);
        }
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)properties
{
  propertiesByName = [(NSEntityDescription *)self propertiesByName];

  return [(NSDictionary *)propertiesByName allValues];
}

- (void)_flattenProperties
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self || (*&self->_entityDescriptionFlags & 8) == 0)
  {
    superentity = [(NSEntityDescription *)self superentity];
    if (superentity)
    {
      v4 = superentity;
      [(NSEntityDescription *)superentity _flattenProperties];
      propertiesByName = [(NSEntityDescription *)v4 propertiesByName];
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = [(NSDictionary *)propertiesByName countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v27;
        while (1)
        {
          v9 = 0;
          do
          {
            if (*v27 != v8)
            {
              objc_enumerationMutation(propertiesByName);
            }

            v10 = *(*(&v26 + 1) + 8 * v9);
            _underlyingProperty = [(NSDictionary *)propertiesByName objectForKey:v10];
            v12 = [(NSMutableDictionary *)self->_properties objectForKey:v10];
            if (v12)
            {
              v13 = v12;
              if ([v12 isEqual:_underlyingProperty])
              {
                goto LABEL_29;
              }

              if (([v13 _isEqualWithoutIndex:_underlyingProperty] & 1) == 0)
              {
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Property named '%@' in entity '%@' conflicts with property inherited from parent entity '%@'", objc_msgSend(v13, "name"), -[NSEntityDescription name](self, "name"), -[NSEntityDescription name](v4, "name")), 0}]);
              }

              v14 = objc_autoreleasePoolPush();
              _pflogInitialize(2);
              if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
              {
                if (_pflogging_catastrophic_mode)
                {
                  LogStream = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v31 = v10;
                    v16 = LogStream;
                    v17 = "CoreData: error: Subentity has an index on parent property: %@\n";
                    goto LABEL_32;
                  }
                }

                else
                {
                  v22 = _PFLogGetLogStream(2);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v31 = v10;
                    v16 = v22;
                    v17 = "CoreData: warning: Subentity has an index on parent property: %@\n";
LABEL_32:
                    _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v23 = 1;
              }

              else
              {
                v23 = 2;
              }

              _NSCoreDataLog_console(v23, "Subentity has an index on parent property: %@", v10);
              objc_autoreleasePoolPop(v14);
              goto LABEL_29;
            }

            model = self->_model;
            if (model && (*&model->_managedObjectModelFlags & 4) != 0)
            {
              Class = object_getClass(_underlyingProperty);
              if (Class == objc_opt_class())
              {
                _underlyingProperty = [_underlyingProperty _underlyingProperty];
              }

              v19 = [[_NSPropertyDescriptionProxy alloc] initWithPropertyDescription:_underlyingProperty];
            }

            else
            {
              v19 = [_underlyingProperty copyWithZone:0];
            }

            v21 = v19;
            [(NSEntityDescription *)self _addProperty:v19];

LABEL_29:
            ++v9;
          }

          while (v7 != v9);
          v24 = [(NSDictionary *)propertiesByName countByEnumeratingWithState:&v26 objects:v32 count:16];
          v7 = v24;
          if (!v24)
          {
LABEL_36:
            [(NSEntityDescription *)self _throwIfNotEditable];
            *&self->_entityDescriptionFlags |= 8u;
            goto LABEL_37;
          }
        }
      }
    }

    if (self)
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  v25 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_hasPropertiesIndexedBySpotlight
{
  v23 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if ([result _isEditable])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      properties = [v1 properties];
      result = [properties countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (result)
      {
        v3 = result;
        v4 = *v18;
        while (2)
        {
          for (i = 0; i != v3; ++i)
          {
            if (*v18 != v4)
            {
              objc_enumerationMutation(properties);
            }

            v6 = *(*(&v17 + 1) + 8 * i);
            if ([v6 _propertyType] == 7)
            {
              _flattenedElements = [v6 _flattenedElements];
              v13 = 0u;
              v14 = 0u;
              v15 = 0u;
              v16 = 0u;
              v8 = [_flattenedElements countByEnumeratingWithState:&v13 objects:v21 count:16];
              if (v8)
              {
                v9 = v8;
                v10 = *v14;
LABEL_11:
                v11 = 0;
                while (1)
                {
                  if (*v14 != v10)
                  {
                    objc_enumerationMutation(_flattenedElements);
                  }

                  if ([*(*(&v13 + 1) + 8 * v11) isIndexedBySpotlight])
                  {
                    break;
                  }

                  if (v9 == ++v11)
                  {
                    v9 = [_flattenedElements countByEnumeratingWithState:&v13 objects:v21 count:16];
                    if (v9)
                    {
                      goto LABEL_11;
                    }

                    goto LABEL_19;
                  }
                }

LABEL_23:
                result = 1;
                goto LABEL_24;
              }
            }

            else if ([v6 isIndexedBySpotlight])
            {
              goto LABEL_23;
            }

LABEL_19:
            ;
          }

          v3 = [properties countByEnumeratingWithState:&v17 objects:v22 count:16];
          result = 0;
          if (v3)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      result = (v1[120] >> 5) & 1;
    }
  }

LABEL_24:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_createCachesAndOptimizeState
{
  v187 = *MEMORY[0x1E69E9840];
  if (atomic_load(&self->_isImmutable))
  {
    goto LABEL_195;
  }

  v160 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  self->_rootentity = self;
  superentity = self->_superentity;
  if (superentity)
  {
    if (![(NSMutableDictionary *)superentity->_subentities objectForKey:self->_name])
    {
      v150 = MEMORY[0x1E695DF30];
      name = self->_name;
      v152 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad model.  For entity '%@' superentity '%@' does not think I am a subentity", name, self->_superentity->_name];
      objc_exception_throw([v150 exceptionWithName:*MEMORY[0x1E695D930] reason:v152 userInfo:0]);
    }

    [(NSEntityDescription *)self->_superentity _createCachesAndOptimizeState];
    if ((z9dsptsiQ80etb9782fsrs98bfdle88 & 1) == 0 && ![(NSString *)self->_classNameForEntity isEqualToString:@"NSManagedObject"])
    {
      _PFClassFromString(self->_classNameForEntity);
      objc_opt_self();
    }

    for (i = self->_rootentity; ; self->_rootentity = i)
    {
      i = [(NSEntityDescription *)i superentity];
      if (!i)
      {
        break;
      }
    }
  }

  if ([(NSMutableDictionary *)self->_subentities count])
  {
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    allValues = [(NSMutableDictionary *)self->_subentities allValues];
    v7 = [allValues countByEnumeratingWithState:&v173 objects:v185 count:16];
    if (v7)
    {
      v8 = *v174;
      do
      {
        for (j = 0; j != v7; ++j)
        {
          if (*v174 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = *(*(&v173 + 1) + 8 * j);
          if (*(v10 + 80) != self)
          {
            v143 = MEMORY[0x1E695DF30];
            v144 = self->_name;
            v145 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad model.  For entity '%@' subentity '%@' does not think I am its superentity", v144, *(v10 + 64)];
            objc_exception_throw([v143 exceptionWithName:*MEMORY[0x1E695D930] reason:v145 userInfo:0]);
          }

          model = self->_model;
          name = [*(*(&v173 + 1) + 8 * j) name];
          if (model)
          {
            model = [(NSMutableDictionary *)model->_entities objectForKey:name];
          }

          if (model != v10)
          {
            v141 = MEMORY[0x1E695DF30];
            model = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bad model.  For entity '%@' subentity '%@ (%p)' is not registered in NSManagedModelModel.  Model has a reference to %@ (%p)", self->_name, *(v10 + 64), v10, -[NSManagedObjectModel name](model, "name"), model];
            objc_exception_throw([v141 exceptionWithName:*MEMORY[0x1E695D930] reason:model userInfo:0]);
          }
        }

        v7 = [allValues countByEnumeratingWithState:&v173 objects:v185 count:16];
      }

      while (v7);
    }
  }

  properties = self->_properties;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E695DF70] arrayWithArray:{-[NSMutableDictionary allValues](self->_properties, "allValues")}];
    [v14 sortUsingFunction:_comparePropertiesByName context:0];
    v164 = v14;
    array11 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v15 = [MEMORY[0x1E695DFA8] set];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v17 = [v14 countByEnumeratingWithState:&v169 objects:v184 count:16];
    if (v17)
    {
      v18 = *v170;
      do
      {
        for (k = 0; k != v17; ++k)
        {
          if (*v170 != v18)
          {
            objc_enumerationMutation(v164);
          }

          v20 = *(*(&v169 + 1) + 8 * k);
          v21 = objc_autoreleasePoolPush();
          [v20 _createCachesAndOptimizeState];
          entityDescriptionFlags = self->_entityDescriptionFlags;
          if ((*&entityDescriptionFlags & 0x20) != 0)
          {
            hasPropertiesIndexedBy = 1;
          }

          else
          {
            hasPropertiesIndexedBy = [(NSEntityDescription *)self _hasPropertiesIndexedBySpotlight];
            if (hasPropertiesIndexedBy)
            {
              v24 = 32;
            }

            else
            {
              v24 = 0;
            }

            entityDescriptionFlags = (*&self->_entityDescriptionFlags & 0xFFFFFFDF | v24);
            self->_entityDescriptionFlags = entityDescriptionFlags;
          }

          if (HIBYTE(dword_1ED4BEEC8) == 1 && hasPropertiesIndexedBy != 0)
          {
            if (![v20 _isSpotlightIndexedAndTransient])
            {
              v148 = MEMORY[0x1E695DF30];
              v182 = @"attribute";
              name2 = [v20 name];
              v149 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&name2 forKeys:&v182 count:1];
              objc_exception_throw([v148 exceptionWithName:*MEMORY[0x1E695D930] reason:@"Transient attributes cannot be indexed in Spotlight" userInfo:v149]);
            }

            entityDescriptionFlags = self->_entityDescriptionFlags;
          }

          if ((*&entityDescriptionFlags & 0x40) == 0)
          {
            if ([v20 isStoredInExternalRecord])
            {
              v26 = 64;
            }

            else
            {
              v26 = 0;
            }

            self->_entityDescriptionFlags = (*&self->_entityDescriptionFlags & 0xFFFFFFBF | v26);
          }

          _propertyType = [v20 _propertyType];
          if (_propertyType == 6)
          {
            if ([objc_msgSend(v20 "derivationExpression")] == 3)
            {
              [dictionary setObject:v20 forKey:{objc_msgSend(objc_msgSend(v20, "derivationExpression"), "keyPath")}];
            }
          }

          else if (_propertyType == 2)
          {
            if ([v20 storesBinaryDataExternally] && (objc_msgSend(v20, "isFileBackedFuture") & 1) == 0)
            {
              *&self->_entityDescriptionFlags |= 0x100u;
            }

            if (([v20 isFileBackedFuture] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(v20, "userInfo"), "valueForKey:", @"NSIsFileBackedFuture"), "BOOLValue"))
            {
              *&self->_entityDescriptionFlags |= 0x8100u;
            }

            if ([v20 usesMergeableStorage])
            {
              [v15 addObject:v20];
            }
          }

          objc_autoreleasePoolPop(v21);
        }

        v17 = [v164 countByEnumeratingWithState:&v169 objects:v184 count:16];
      }

      while (v17);
    }

    if ([v15 count])
    {
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v28 = [v15 countByEnumeratingWithState:&v165 objects:v181 count:16];
      if (v28)
      {
        v29 = *v166;
        do
        {
          for (m = 0; m != v28; ++m)
          {
            if (*v166 != v29)
            {
              objc_enumerationMutation(v15);
            }

            v31 = *(*(&v165 + 1) + 8 * m);
            if (![dictionary valueForKey:{objc_msgSend(v31, "name")}])
            {
              v146 = MEMORY[0x1E695DF30];
              v147 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mergeable attribute %@ requires a paired derived attribute with a derivation expression in the form %@", objc_msgSend(v31, "name"), objc_msgSend(v31, "name")];
              objc_exception_throw([v146 exceptionWithName:*MEMORY[0x1E695D930] reason:v147 userInfo:0]);
            }
          }

          v28 = [v15 countByEnumeratingWithState:&v165 objects:v181 count:16];
        }

        while (v28);
      }
    }

    [array11 drain];
    v154 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v32 = self->_superentity;
    if (v32)
    {
      propertyRanges = v32->_propertyRanges;
      v34 = [-[NSMutableDictionary mapping](v32->_properties "mapping")];
      if (propertyRanges[15].length)
      {
        array = [MEMORY[0x1E695DF70] arrayWithObjects:v34 + 8 * propertyRanges[15].location count:?];
      }

      else
      {
        array = [MEMORY[0x1E695DF70] array];
      }

      array12 = array;
      if (propertyRanges[16].length)
      {
        array2 = [MEMORY[0x1E695DF70] arrayWithObjects:v34 + 8 * propertyRanges[16].location count:?];
      }

      else
      {
        array2 = [MEMORY[0x1E695DF70] array];
      }

      if (propertyRanges[5].length)
      {
        array3 = [MEMORY[0x1E695DF70] arrayWithObjects:v34 + 8 * propertyRanges[5].location count:?];
      }

      else
      {
        array3 = [MEMORY[0x1E695DF70] array];
      }

      array13 = array3;
      if (propertyRanges[6].length)
      {
        array4 = [MEMORY[0x1E695DF70] arrayWithObjects:v34 + 8 * propertyRanges[6].location count:?];
      }

      else
      {
        array4 = [MEMORY[0x1E695DF70] array];
      }

      if (propertyRanges[10].length)
      {
        array5 = [MEMORY[0x1E695DF70] arrayWithObjects:v34 + 8 * propertyRanges[10].location count:?];
      }

      else
      {
        array5 = [MEMORY[0x1E695DF70] array];
      }

      if (propertyRanges[7].length)
      {
        array6 = [MEMORY[0x1E695DF70] arrayWithObjects:v34 + 8 * propertyRanges[7].location count:?];
      }

      else
      {
        array6 = [MEMORY[0x1E695DF70] array];
      }

      if (propertyRanges[8].length)
      {
        array7 = [MEMORY[0x1E695DF70] arrayWithObjects:v34 + 8 * propertyRanges[8].location count:?];
      }

      else
      {
        array7 = [MEMORY[0x1E695DF70] array];
      }

      if (propertyRanges[11].length)
      {
        array8 = [MEMORY[0x1E695DF70] arrayWithObjects:v34 + 8 * propertyRanges[11].location count:?];
      }

      else
      {
        array8 = [MEMORY[0x1E695DF70] array];
      }

      if (propertyRanges[12].length)
      {
        array9 = [MEMORY[0x1E695DF70] arrayWithObjects:v34 + 8 * propertyRanges[12].location count:?];
      }

      else
      {
        array9 = [MEMORY[0x1E695DF70] array];
      }

      if (propertyRanges[14].length)
      {
        array10 = [MEMORY[0x1E695DF70] arrayWithObjects:v34 + 8 * propertyRanges[14].location count:?];
      }

      else
      {
        array10 = [MEMORY[0x1E695DF70] array];
      }

      array14 = array10;
      if (propertyRanges[17].length)
      {
        array11 = [MEMORY[0x1E695DF70] arrayWithObjects:v34 + 8 * propertyRanges[17].location count:?];
      }

      else
      {
        array11 = [MEMORY[0x1E695DF70] array];
      }

      v51 = [v164 count];
      if (v51)
      {
        v52 = 0;
        while (1)
        {
          v53 = [v164 objectAtIndex:v52];
          name3 = [v53 name];
          v55 = self->_superentity;
          if (!v55)
          {
            goto LABEL_132;
          }

          if (atomic_load(&v55->_isImmutable))
          {
            break;
          }

          if (![(NSDictionary *)[(NSEntityDescription *)v55 propertiesByName] objectForKey:name3])
          {
            goto LABEL_132;
          }

LABEL_152:
          if (v51 == ++v52)
          {
            goto LABEL_153;
          }
        }

        if ([v55->_propertyMapping indexForKey:name3] != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_152;
        }

LABEL_132:
        _propertyType2 = [v53 _propertyType];
        v58 = _propertyType2;
        if (_propertyType2 > 5)
        {
          if ((_propertyType2 - 6) > 1)
          {
            goto LABEL_143;
          }
        }

        else if (_propertyType2 != 2)
        {
          v59 = array14;
          if (v58 == 3)
          {
LABEL_151:
            [v59 addObject:name3];
            goto LABEL_152;
          }

          if (v58 == 4)
          {
            if ([v53 isToMany])
            {
              if ([v53 isTransient])
              {
                v60 = [v53 isOrdered] == 0;
                v62 = array9;
                v61 = array8;
              }

              else
              {
                v60 = [v53 isOrdered] == 0;
                v62 = array7;
                v61 = array6;
              }

              if (v60)
              {
                v59 = v61;
              }

              else
              {
                v59 = v62;
              }
            }

            else if ([v53 isTransient])
            {
              v59 = array5;
            }

            else
            {
              v59 = array4;
            }

            goto LABEL_151;
          }

LABEL_143:
          v59 = array11;
          goto LABEL_151;
        }

        if ([v53 isTransient])
        {
          v59 = array13;
        }

        else
        {
          v59 = array12;
        }

        goto LABEL_151;
      }

      goto LABEL_153;
    }

    array12 = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array13 = [MEMORY[0x1E695DF70] array];
    array4 = [MEMORY[0x1E695DF70] array];
    array5 = [MEMORY[0x1E695DF70] array];
    array7 = [MEMORY[0x1E695DF70] array];
    array6 = [MEMORY[0x1E695DF70] array];
    array9 = [MEMORY[0x1E695DF70] array];
    array8 = [MEMORY[0x1E695DF70] array];
    array14 = [MEMORY[0x1E695DF70] array];
    array11 = [MEMORY[0x1E695DF70] array];
    v39 = [v164 count];
    if (!v39)
    {
LABEL_153:
      v63 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v63 = malloc_default_zone();
      }

      self->_propertyRanges = malloc_type_zone_calloc(v63, 0x12uLL, 0x10uLL, 0x1000040451B5BE8uLL);
      v64 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableDictionary count](self->_properties, "count")}];
      v65 = [array12 count];
      [v64 addObjectsFromArray:array12];
      v66 = self->_propertyRanges;
      v66[15].location = 0;
      v66[15].length = v65;
      v67 = [array2 count];
      [v64 addObjectsFromArray:array2];
      v68 = self->_propertyRanges;
      v68[16].location = v65;
      v68[16].length = v67;
      v69 = [v64 count];
      v68[3].location = 0;
      v68[3].length = v69;
      v70 = [array13 count];
      [v64 addObjectsFromArray:array13];
      v71 = v67 + v65;
      v72 = self->_propertyRanges;
      v72[5].location = v71;
      v72[5].length = v70;
      v73 = [v64 count];
      v72[1].location = 0;
      v72[1].length = v73;
      v74 = [array4 count];
      [v64 addObjectsFromArray:array4];
      v75 = v70 + v71;
      v76 = self->_propertyRanges;
      v76[6].location = v75;
      v76[6].length = v74;
      v77 = [array6 count];
      [v64 addObjectsFromArray:array6];
      v78 = v74 + v75;
      v79 = self->_propertyRanges;
      v79[7].location = v78;
      v79[7].length = v77;
      v80 = [array7 count];
      [v64 addObjectsFromArray:array7];
      v81 = v77 + v78;
      v82 = self->_propertyRanges;
      v82[8].location = v81;
      v82[8].length = v80;
      v83 = v82[7].length + v80;
      v82[9].location = v82[7].location;
      v82[9].length = v83;
      v84 = v82[6].length + v83;
      v82[4].location = v82[6].location;
      v82[4].length = v84;
      v85 = [array5 count];
      [v64 addObjectsFromArray:array5];
      v86 = v80 + v81;
      v87 = self->_propertyRanges;
      v87[10].location = v86;
      v87[10].length = v85;
      v88 = [array8 count];
      [v64 addObjectsFromArray:array8];
      v89 = v85 + v86;
      v90 = self->_propertyRanges;
      v90[11].location = v89;
      v90[11].length = v88;
      v91 = [array9 count];
      [v64 addObjectsFromArray:array9];
      v92 = v88 + v89;
      v93 = self->_propertyRanges;
      v93[12].location = v92;
      v93[12].length = v91;
      v94 = v93[11].length + v91;
      v93[13].location = v93[11].location;
      v93[13].length = v94;
      location = v93[6].location;
      v96 = [v64 count] - self->_propertyRanges[1].length;
      v93[2].location = location;
      v93[2].length = v96;
      v97 = [array14 count];
      [v64 addObjectsFromArray:array14];
      v98 = v91 + v92;
      v99 = self->_propertyRanges;
      v99[14].location = v91 + v92;
      v99[14].length = v97;
      v100 = [array11 count];
      [v64 addObjectsFromArray:array11];
      v101 = self->_propertyRanges;
      v101[17].location = v98 + 2 * v97;
      v101[17].length = v100;
      v102 = [v64 count];
      v103 = self->_propertyRanges;
      v103->location = 0;
      v103->length = v102;
      v104 = MEMORY[0x1EEE9AC00](v102);
      v107 = &v153 - v106;
      v108 = 8 * v105;
      if (v104 >= 0x201)
      {
        v107 = NSAllocateScannedUncollectable();
        v110 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v153 - v106, 8 * v105);
        MEMORY[0x1EEE9AC00](v109);
        v110 = &v153 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v110, v108);
      }

      [v64 getObjects:v110 range:{0, v102}];
      if (v102)
      {
        for (n = 0; n != v102; ++n)
        {
          v112 = [(NSMutableDictionary *)self->_properties objectForKey:*&v110[8 * n]];
          *&v107[8 * n] = v112;
          [v112 _setEntitysReferenceID:n];
        }
      }

      v113 = [[NSKnownKeysDictionary alloc] initWithObjects:v107 forKeys:v110 count:v102];
      if (v102 >= 0x201)
      {
        NSZoneFree(0, v107);
        NSZoneFree(0, v110);
      }

      [v154 drain];

      self->_properties = &v113->super;
      self->_propertyMapping = [(NSKnownKeysDictionary *)v113 mapping];
      goto LABEL_164;
    }

    v40 = 0;
    while (1)
    {
      v41 = [v164 objectAtIndex:v40];
      name4 = [v41 name];
      _propertyType3 = [v41 _propertyType];
      v44 = _propertyType3;
      if (_propertyType3 > 5)
      {
        break;
      }

      if (_propertyType3 == 2)
      {
        goto LABEL_81;
      }

      v45 = array14;
      if (v44 != 3)
      {
        if (v44 == 4)
        {
          if ([v41 isToMany])
          {
            if ([v41 isTransient])
            {
              v46 = [v41 isOrdered] == 0;
              v48 = array9;
              v47 = array8;
            }

            else
            {
              v46 = [v41 isOrdered] == 0;
              v48 = array7;
              v47 = array6;
            }

            if (v46)
            {
              v45 = v47;
            }

            else
            {
              v45 = v48;
            }
          }

          else if ([v41 isTransient])
          {
            v45 = array5;
          }

          else
          {
            v45 = array4;
          }

          goto LABEL_92;
        }

LABEL_84:
        v45 = array11;
      }

LABEL_92:
      [v45 addObject:name4];
      if (v39 == ++v40)
      {
        goto LABEL_153;
      }
    }

    if ((_propertyType3 - 6) < 2)
    {
LABEL_81:
      if ([v41 isTransient])
      {
        v45 = array13;
      }

      else
      {
        v45 = array12;
      }

      goto LABEL_92;
    }

    goto LABEL_84;
  }

LABEL_164:
  subentities = self->_subentities;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v115 = [-[NSMutableDictionary allValues](self->_subentities "allValues")];
    v116 = [v115 count];
    v117 = MEMORY[0x1EEE9AC00](v116);
    v120 = &v153 - v119;
    v121 = 8 * v118;
    if (v117 >= 0x201)
    {
      v120 = NSAllocateScannedUncollectable();
      v123 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v153 - v119, 8 * v118);
      MEMORY[0x1EEE9AC00](v122);
      v123 = &v153 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v123, v121);
    }

    [v115 getObjects:v120 range:{0, v116}];
    if (v116)
    {
      v124 = v120;
      v125 = v123;
      v126 = v116;
      do
      {
        *v125 = [*v124 name];
        v125 += 8;
        ++v124;
        --v126;
      }

      while (v126);
    }

    v127 = [[NSKnownKeysDictionary alloc] initWithObjects:v120 forKeys:v123 count:v116];
    if (v116 >= 0x201)
    {
      NSZoneFree(0, v120);
      NSZoneFree(0, v123);
    }

    self->_subentities = &v127->super;
  }

  if (!self->_flattenedSubentities)
  {
    self->_flattenedSubentities = [(NSEntityDescription *)self _collectSubentities];
  }

  propertyMapping = self->_propertyMapping;
  keys = [propertyMapping keys];
  v130 = [propertyMapping length];
  v131 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v131 = malloc_default_zone();
  }

  self->_kvcPropertyAccessors = malloc_type_zone_calloc(v131, 0xAuLL, 8uLL, 0x80040B8603338uLL);
  *(self->_kvcPropertyAccessors + 6) = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:keys count:v130];
  *(self->_kvcPropertyAccessors + 7) = [(NSEntityDescription *)self _newMappingForPropertiesOfRange:1];
  *(self->_kvcPropertyAccessors + 8) = [(NSEntityDescription *)self _newMappingForPropertiesOfRange:2];
  v132 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v132 = malloc_default_zone();
  }

  *(self->_kvcPropertyAccessors + 9) = malloc_type_zone_calloc(v132, v130, 1uLL, 0x274D28CDuLL);
  [(NSEntityDescription *)self _commonCachesAndOptimizedState];
  atomic_store(1u, &self->_isImmutable);
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v133 = self->_properties;
  v134 = [(NSMutableDictionary *)v133 countByEnumeratingWithState:&v177 objects:v186 count:16];
  if (v134)
  {
    dictionary2 = 0;
    v136 = *v178;
    do
    {
      for (ii = 0; ii != v134; ++ii)
      {
        if (*v178 != v136)
        {
          objc_enumerationMutation(v133);
        }

        v138 = [(NSMutableDictionary *)self->_properties objectForKey:*(*(&v177 + 1) + 8 * ii)];
        if ([v138 _isAttribute] && objc_msgSend(v138, "_namespace"))
        {
          if (!dictionary2)
          {
            dictionary2 = [MEMORY[0x1E695DF90] dictionary];
          }

          [NSEntityDescription _checkAttributeMembership:v138 hashes:dictionary2];
        }
      }

      v134 = [(NSMutableDictionary *)v133 countByEnumeratingWithState:&v177 objects:v186 count:16];
    }

    while (v134);
  }

  [v160 drain];
  v139 = 0;
  if (self && !self->_extraIvars)
  {
    [(NSEntityDescription *)self _initializeExtraIVars];
  }

LABEL_195:
  v140 = *MEMORY[0x1E69E9840];
}

- (__CFSet)_collectSubentities
{
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = *MEMORY[0x1E695E480];
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v4 = CFSetCreateMutable(v2, 0, 0);
    CFSetAddValue(v4, self);
    if (CFSetGetCount(v4) >= 1)
    {
      do
      {
        anyObject = [(__CFSet *)v4 anyObject];
        if (anyObject)
        {
          v6 = anyObject;
          CFSetAddValue(Mutable, anyObject);
          CFSetRemoveValue(v4, v6);
          subentitiesByName = [v6 subentitiesByName];
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v18 = 0u;
          v8 = [subentitiesByName countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v16;
            do
            {
              v11 = 0;
              do
              {
                if (*v16 != v10)
                {
                  objc_enumerationMutation(subentitiesByName);
                }

                v12 = [subentitiesByName objectForKey:*(*(&v15 + 1) + 8 * v11)];
                if (v12)
                {
                  CFSetAddValue(v4, v12);
                }

                ++v11;
              }

              while (v9 != v11);
              v9 = [subentitiesByName countByEnumeratingWithState:&v15 objects:v19 count:16];
            }

            while (v9);
          }
        }
      }

      while (CFSetGetCount(v4) > 0);
    }

    CFRelease(v4);
  }

  else
  {
    Mutable = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return Mutable;
}

- (void)_checkSelfForNonCascadeNoInverses
{
  v17 = *MEMORY[0x1E69E9840];
  if (self && (v14 = 0u, v15 = 0u, v12 = 0u, v13 = 0u, v2 = *(self + 96), (v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16]) != 0))
  {
    v4 = v3;
    v5 = *v13;
LABEL_4:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(self + 96) objectForKey:*(*(&v12 + 1) + 8 * v6)];
      if ([v7 _isRelationship])
      {
        if ([v7 deleteRule] != 2)
        {
          inverseRelationship = [v7 inverseRelationship];
          if (inverseRelationship)
          {
            v9 = inverseRelationship;
            if (([inverseRelationship isToMany] & 1) == 0 && !objc_msgSend(v9, "isOptional"))
            {
              break;
            }
          }
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_4;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (uint64_t)_hasAttributesWithExternalDataReferences
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if ([result _isEditable])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      properties = [v1 properties];
      result = [properties countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (result)
      {
        v3 = result;
        v4 = *v19;
        while (2)
        {
          for (i = 0; i != v3; ++i)
          {
            if (*v19 != v4)
            {
              objc_enumerationMutation(properties);
            }

            v6 = *(*(&v18 + 1) + 8 * i);
            if ([v6 _propertyType] == 7)
            {
              _flattenedElements = [v6 _flattenedElements];
              v14 = 0u;
              v15 = 0u;
              v16 = 0u;
              v17 = 0u;
              v8 = [_flattenedElements countByEnumeratingWithState:&v14 objects:v22 count:16];
              if (v8)
              {
                v9 = v8;
                v10 = *v15;
LABEL_11:
                v11 = 0;
                while (1)
                {
                  if (*v15 != v10)
                  {
                    objc_enumerationMutation(_flattenedElements);
                  }

                  v12 = *(*(&v14 + 1) + 8 * v11);
                  if ([v12 storesBinaryDataExternally])
                  {
                    if (![v12 isFileBackedFuture])
                    {
                      break;
                    }
                  }

                  if (v9 == ++v11)
                  {
                    v9 = [_flattenedElements countByEnumeratingWithState:&v14 objects:v22 count:16];
                    if (v9)
                    {
                      goto LABEL_11;
                    }

                    goto LABEL_22;
                  }
                }

LABEL_26:
                result = 1;
                goto LABEL_27;
              }
            }

            else if ([v6 _propertyType] == 2 && objc_msgSend(v6, "storesBinaryDataExternally") && !objc_msgSend(v6, "isFileBackedFuture"))
            {
              goto LABEL_26;
            }

LABEL_22:
            ;
          }

          v3 = [properties countByEnumeratingWithState:&v18 objects:v23 count:16];
          result = 0;
          if (v3)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      result = v1[121] & 1;
    }
  }

LABEL_27:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_hasAttributesWithFileBackedFutures
{
  v23 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if ([result _isEditable])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      properties = [v1 properties];
      result = [properties countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (result)
      {
        v3 = result;
        v4 = *v18;
        while (2)
        {
          for (i = 0; i != v3; ++i)
          {
            if (*v18 != v4)
            {
              objc_enumerationMutation(properties);
            }

            v6 = *(*(&v17 + 1) + 8 * i);
            if ([v6 _propertyType] == 7)
            {
              _flattenedElements = [v6 _flattenedElements];
              v13 = 0u;
              v14 = 0u;
              v15 = 0u;
              v16 = 0u;
              v8 = [_flattenedElements countByEnumeratingWithState:&v13 objects:v21 count:16];
              if (v8)
              {
                v9 = v8;
                v10 = *v14;
LABEL_11:
                v11 = 0;
                while (1)
                {
                  if (*v14 != v10)
                  {
                    objc_enumerationMutation(_flattenedElements);
                  }

                  if ([*(*(&v13 + 1) + 8 * v11) isFileBackedFuture])
                  {
                    break;
                  }

                  if (v9 == ++v11)
                  {
                    v9 = [_flattenedElements countByEnumeratingWithState:&v13 objects:v21 count:16];
                    if (v9)
                    {
                      goto LABEL_11;
                    }

                    goto LABEL_20;
                  }
                }

LABEL_24:
                result = 1;
                goto LABEL_25;
              }
            }

            else if ([v6 _propertyType] == 2 && (objc_msgSend(v6, "isFileBackedFuture") & 1) != 0)
            {
              goto LABEL_24;
            }

LABEL_20:
            ;
          }

          v3 = [properties countByEnumeratingWithState:&v17 objects:v22 count:16];
          result = 0;
          if (v3)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      result = v1[121] >> 7;
    }
  }

LABEL_25:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)indexes
{
  extraIvars = self->_extraIvars;
  if (!extraIvars)
  {
    return NSArray_EmptyArray;
  }

  result = extraIvars->var5;
  if (!result)
  {
    return NSArray_EmptyArray;
  }

  return result;
}

- (void)_sortedSubentities
{
  if (result)
  {
    subentities = [result subentities];
    v2 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"name" ascending:1 selector:sel_caseInsensitiveCompare_];
    v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v2, 0}];
    v4 = [subentities sortedArrayUsingDescriptors:v3];

    return v4;
  }

  return result;
}

- (void)_leopardStyleAttributesByName
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _PF_Leopard_CFDictionaryCreate();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  properties = self->_properties;
  v5 = [(NSMutableDictionary *)properties countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(properties);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_properties objectForKey:v9];
        if ([v10 _isAttribute])
        {
          _PF_Leopard_CFDictionarySetValue(v3, v9, v10);
        }
      }

      v6 = [(NSMutableDictionary *)properties countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_leopardStyleRelationshipsByName
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _PF_Leopard_CFDictionaryCreate();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  properties = self->_properties;
  v5 = [(NSMutableDictionary *)properties countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(properties);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_properties objectForKey:v9];
        if ([v10 _propertyType] == 4)
        {
          _PF_Leopard_CFDictionarySetValue(v3, v9, v10);
        }
      }

      v6 = [(NSMutableDictionary *)properties countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

- (NSEntityDescription)init
{
  objc_opt_class();
  objc_opt_class();

  return [(NSEntityDescription *)self _initWithName:0];
}

- (uint64_t)_dropIndexes
{
  v23 = *MEMORY[0x1E69E9840];
  if (result && byte_1ED4BEEC4 == 1)
  {
    v1 = result;
    v2 = *(result + 128);
    if (v2)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v3 = *(v2 + 40);
      v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v18;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v18 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [*(*(&v17 + 1) + 8 * i) _setEntity:0];
          }

          v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v5);
      }

      *(v1[16] + 40) = 0;
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subentities = [v1 subentities];
    result = [subentities countByEnumeratingWithState:&v13 objects:v21 count:16];
    if (result)
    {
      v9 = result;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(subentities);
          }

          [(NSEntityDescription *)*(*(&v13 + 1) + 8 * v11++) _dropIndexes];
        }

        while (v9 != v11);
        result = [subentities countByEnumeratingWithState:&v13 objects:v21 count:16];
        v9 = result;
      }

      while (result);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSDictionary)attributesByName
{
  if (self->_propertyRanges)
  {
    return *(self->_kvcPropertyAccessors + 7);
  }

  else
  {
    return [(NSEntityDescription *)self _propertiesMatchingBlock:?];
  }
}

- (void)_checkForNonCascadeNoInverses
{
  v13 = *MEMORY[0x1E69E9840];
  if (self)
  {
    _collectSubentities = [(NSEntityDescription *)self _collectSubentities];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [(__CFSet *)_collectSubentities countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v2)
    {
      v3 = *v9;
LABEL_4:
      v4 = 0;
      while (1)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(_collectSubentities);
        }

        _checkSelfForNonCascadeNoInverses = [(NSEntityDescription *)*(*(&v8 + 1) + 8 * v4) _checkSelfForNonCascadeNoInverses];
        if (_checkSelfForNonCascadeNoInverses)
        {
          break;
        }

        if (v2 == ++v4)
        {
          v2 = [(__CFSet *)_collectSubentities countByEnumeratingWithState:&v8 objects:v12 count:16];
          if (v2)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      _checkSelfForNonCascadeNoInverses = 0;
    }
  }

  else
  {
    _checkSelfForNonCascadeNoInverses = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return _checkSelfForNonCascadeNoInverses;
}

- (NSDictionary)relationshipsByName
{
  if (self->_propertyRanges)
  {
    return *(self->_kvcPropertyAccessors + 8);
  }

  v5[5] = v2;
  v5[6] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__NSEntityDescription__NSInternalMethods___propertiesOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e31_B16__0__NSPropertyDescription_8l;
  v5[4] = 4;
  return [(NSEntityDescription *)self _propertiesMatchingBlock:v5];
}

- (unint64_t)hash
{
  name = [(NSEntityDescription *)self name];

  return [(NSString *)name hash];
}

- (NSString)renamingIdentifier
{
  extraIvars = self->_extraIvars;
  if (extraIvars && (var0 = extraIvars->var0) != 0)
  {
    return var0;
  }

  else
  {
    return [(NSEntityDescription *)self name];
  }
}

- (NSExpression)coreSpotlightDisplayNameExpression
{
  extraIvars = self->_extraIvars;
  if (extraIvars && (extraIvars = extraIvars->var4) == 0)
  {
    return [(NSEntityDescription *)self->_superentity coreSpotlightDisplayNameExpression];
  }

  else
  {
    return extraIvars;
  }
}

- (id)attributeKeys
{
  if (self->_propertyRanges)
  {
    v3 = [-[NSEntityDescription _propertySearchMapping](self "_propertySearchMapping")];
    propertyRanges = self->_propertyRanges;
    length = propertyRanges[1].length;
    v6 = v3 + 8 * propertyRanges[1].location;
    v7 = MEMORY[0x1E695DEC8];

    return [v7 arrayWithObjects:v6 count:length];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [(NSEntityDescription *)self _propertyKeys:v9 matchingBlock:&__block_literal_global_442];
    allObjects = [v9 allObjects];

    return allObjects;
  }
}

- (id)_new_implicitlyObservedKeys
{
  selfCopy = self;
  if (self)
  {
    _propertySearchMapping = [self _propertySearchMapping];
    propertiesByName = [selfCopy propertiesByName];
    _propertyRangesByType = [selfCopy _propertyRangesByType];
    keys = [_propertySearchMapping keys];
    values = [propertiesByName values];
    selfCopy = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = *(_propertyRangesByType + 32);
    v8 = *(_propertyRangesByType + 40);
    if (v7 < v8 + v7)
    {
      v9 = (keys + 8 * v7);
      v10 = (values + 8 * v7);
      do
      {
        v11 = *v10;
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:*v9];
        if ([v11 inverseRelationship] || (objc_msgSend(v11, "isOrdered") & 1) == 0)
        {
          [selfCopy addObject:*v9];
        }

        ++v9;
        ++v10;
        --v8;
      }

      while (v8);
    }
  }

  return selfCopy;
}

- (unint64_t)_keypathsToPrefetchForDeletePropagation
{
  do
  {
    if (!self)
    {
      return 0;
    }

    selfCopy = self;
    v2 = *(self + 128);
    if (!v2)
    {
      [(NSEntityDescription *)self _initializeExtraIVars];
      v2 = selfCopy[16];
    }

    self = [selfCopy superentity];
  }

  while (self);
  v3 = atomic_load((v2 + 16));
  __dmb(0xBu);
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v5 = [objc_msgSend(-[NSEntityDescription _keypathsToPrefetchForDeletePropagationPrefixedWith:toDepth:processedEntities:](selfCopy 0];
    v6 = 0;
    atomic_compare_exchange_strong((v2 + 16), &v6, v5);
    if (v6)
    {
    }

    v3 = atomic_load((v2 + 16));
    [v4 drain];
    v7 = 0;
  }

  return v3;
}

- (void)knownKeysMappingStrategy
{
  if (result)
  {
    v1 = result;
    if ([objc_msgSend(result "managedObjectModel")])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"Model must be immutable before mapping strategy can be created" userInfo:0]);
    }

    return v1[13];
  }

  return result;
}

- (NSArray)uniquenessConstraints
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  superentity = self->_superentity;
  if (superentity)
  {
    uniquenessConstraints = [(NSEntityDescription *)superentity uniquenessConstraints];
    if (uniquenessConstraints)
    {
      [v3 addObjectsFromArray:uniquenessConstraints];
    }
  }

  extraIvars = self->_extraIvars;
  if (extraIvars && extraIvars->var3)
  {
    [v3 addObjectsFromArray:?];
  }

  return v3;
}

+ (id)_MOClassName
{
  result = _MOClassName__NSManagedObjectClassName;
  if (!_MOClassName__NSManagedObjectClassName)
  {
    v3 = objc_opt_class();
    result = [NSStringFromClass(v3) copy];
    _MOClassName__NSManagedObjectClassName = result;
  }

  return result;
}

- (id)_uniquenessConstraintsAsFetchIndexes
{
  v55 = *MEMORY[0x1E69E9840];
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  extraIvars = self->_extraIvars;
  if (extraIvars)
  {
    var3 = extraIvars->var3;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = var3;
    v29 = [var3 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v29)
    {
      v27 = *v39;
      do
      {
        v5 = 0;
        do
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = v5;
          v6 = *(*(&v38 + 1) + 8 * v5);
          v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v35 = [@"UNIQUE" mutableCopy];
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v31 = v6;
          v37 = [v6 countByEnumeratingWithState:&v46 objects:v54 count:16];
          if (v37)
          {
            v34 = *v47;
            do
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v47 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                v8 = *(*(&v46 + 1) + 8 * i);
                v9 = [v8 componentsSeparatedByString:@"."];
                v32 = v8;
                if ([v9 count] < 2)
                {
                  v10 = [(NSDictionary *)[(NSEntityDescription *)selfCopy propertiesByName] objectForKey:v8];
                }

                else
                {
                  v10 = -[NSDictionary objectForKey:](-[NSEntityDescription propertiesByName](selfCopy, "propertiesByName"), "objectForKey:", [v9 objectAtIndex:0]);
                  if ([v9 count] >= 2)
                  {
                    v11 = 1;
                    do
                    {
                      v12 = [v9 objectAtIndex:v11];
                      v42 = 0u;
                      v43 = 0u;
                      v44 = 0u;
                      v45 = 0u;
                      elements = [v10 elements];
                      v14 = [elements countByEnumeratingWithState:&v42 objects:v53 count:16];
                      if (v14)
                      {
                        v15 = v14;
                        v16 = *v43;
                        while (2)
                        {
                          for (j = 0; j != v15; ++j)
                          {
                            if (*v43 != v16)
                            {
                              objc_enumerationMutation(elements);
                            }

                            v18 = *(*(&v42 + 1) + 8 * j);
                            if ([v12 isEqualToString:{objc_msgSend(v18, "name")}])
                            {
                              v10 = v18;
                              goto LABEL_25;
                            }
                          }

                          v15 = [elements countByEnumeratingWithState:&v42 objects:v53 count:16];
                          if (v15)
                          {
                            continue;
                          }

                          break;
                        }
                      }

LABEL_25:
                      ++v11;
                    }

                    while ([v9 count] > v11);
                  }
                }

                if (!v10)
                {
                  v23 = MEMORY[0x1E695DF30];
                  v24 = *MEMORY[0x1E695D940];
                  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't find property named %@", v32];
                  v51 = @"Property name";
                  v52 = v32;
                  objc_exception_throw([v23 exceptionWithName:v24 reason:v25 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v52, &v51, 1)}]);
                }

                v19 = [[NSFetchIndexElementDescription alloc] initWithProperty:v10 collationType:0];
                [v35 appendFormat:@"_%@", objc_msgSend(v10, "name")];
                [v36 addObject:v19];
              }

              v37 = [v31 countByEnumeratingWithState:&v46 objects:v54 count:16];
            }

            while (v37);
          }

          v20 = [[NSFetchIndexDescription alloc] initWithName:v35 elements:v36];
          [(NSFetchIndexDescription *)v20 _setIsUnique:?];

          [v28 addObject:v20];
          v5 = v30 + 1;
        }

        while (v30 + 1 != v29);
        v29 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v29);
    }
  }

  result = v28;
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_keypathsForDeletions
{
  if (!self)
  {
    return 0;
  }

  if (self[14])
  {
    array = [MEMORY[0x1E695DF70] array];
    v3 = [objc_msgSend(self "propertiesByName")];
    v4 = v3;
    v5 = self[14];
    v6 = v5[12];
    v7 = v5[13];
    if (v6 < v7 + v6)
    {
      v8 = (v3 + 8 * v6);
      do
      {
        v9 = *v8;
        if ([*v8 inverseRelationship])
        {
          [array addObject:{objc_msgSend(v9, "name")}];
        }

        ++v8;
        --v7;
      }

      while (v7);
      v5 = self[14];
    }

    v10 = v5[18];
    v11 = v5[19];
    if (v10 < v11 + v10)
    {
      v12 = (v4 + 8 * v10);
      do
      {
        v13 = *v12;
        if ([*v12 inverseRelationship])
        {
          [array addObject:{objc_msgSend(v13, "name")}];
        }

        ++v12;
        --v11;
      }

      while (v11);
    }

    return array;
  }

  relationshipsByName = [self relationshipsByName];

  return [relationshipsByName allKeys];
}

+ (NSEntityDescription)entityForName:(NSString *)entityName inManagedObjectContext:(NSManagedObjectContext *)context
{
  if (!context)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    entityName = [MEMORY[0x1E696AEC0] stringWithFormat:@"+entityForName: nil is not a legal NSManagedObjectContext parameter searching for entity name '%@'", entityName];
    goto LABEL_13;
  }

  persistentStoreCoordinator = [(NSManagedObjectContext *)context persistentStoreCoordinator];
  if (!persistentStoreCoordinator)
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    entityName = [MEMORY[0x1E696AEC0] stringWithFormat:@"+entityForName: nil is not a legal NSPersistentStoreCoordinator for searching for entity name '%@'", entityName];
    goto LABEL_13;
  }

  v6 = persistentStoreCoordinator;
  if (![(NSPersistentStoreCoordinator *)persistentStoreCoordinator managedObjectModel])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D930];
    entityName = [MEMORY[0x1E696AEC0] stringWithFormat:@"+entityForName: could not locate an NSManagedObjectModel for entity name '%@'", entityName];
LABEL_13:
    objc_exception_throw([v10 exceptionWithName:v11 reason:entityName userInfo:0]);
  }

  modelMap = v6->_modelMap;
  if (modelMap)
  {
    result = [(NSDictionary *)modelMap->_entitiesByPath objectForKey:entityName];
    if (result)
    {
      return result;
    }

    v9 = v6->_modelMap;
  }

  else
  {
    v9 = 0;
  }

  return [(_PFModelMap *)v9 ancillaryEntityWithName:?];
}

+ (NSManagedObject)insertNewObjectForEntityForName:(NSString *)entityName inManagedObjectContext:(NSManagedObjectContext *)context
{
  v6 = [self entityForName:? inManagedObjectContext:?];
  if (!v6)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"+entityForName: could not locate an entity named '%@' in this model.", entityName), 0}]);
  }

  v7 = [objc_msgSend(_PFFastEntityClass(v6) allocWithEntity:{v6), "initWithEntity:insertIntoManagedObjectContext:", v6, context}];

  return v7;
}

- (unint64_t)_entityClass
{
  if (result)
  {
    return _PFFastEntityClass(result);
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  [coder encodeObject:-[NSEntityDescription name](self forKey:{"name"), @"NSEntityName"}];
  [coder encodeObject:self->_classNameForEntity forKey:@"NSClassNameForEntity"];
  if ([(NSEntityDescription *)self isAbstract])
  {
    [coder encodeBool:1 forKey:@"NSIsAbstract"];
  }

  [coder encodeConditionalObject:-[NSEntityDescription managedObjectModel](self forKey:{"managedObjectModel"), @"NSManagedObjectModel"}];
  [coder encodeConditionalObject:-[NSEntityDescription superentity](self forKey:{"superentity"), @"NSSuperentity"}];
  if (self->_subentities)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_subentities];
  }

  else
  {
    v6 = 0;
  }

  [coder encodeObject:v6 forKey:@"NSSubentities"];

  if (self->_properties)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_properties];
  }

  else
  {
    v7 = 0;
  }

  [coder encodeObject:v7 forKey:@"NSProperties"];

  [coder encodeObject:-[NSEntityDescription userInfo](self forKey:{"userInfo"), @"NSUserInfo"}];
  [coder encodeObject:-[NSEntityDescription versionHashModifier](self forKey:{"versionHashModifier"), @"NSVersionHashModifier"}];
  renamingIdentifier = [(NSEntityDescription *)self renamingIdentifier];
  if (renamingIdentifier)
  {
    [coder encodeObject:renamingIdentifier forKey:@"NSRenamingIdentifier"];
  }

  extraIvars = self->_extraIvars;
  if (extraIvars)
  {
    var3 = extraIvars->var3;
    if (!var3 || ([coder encodeObject:var3 forKey:@"NSUniqueTuples"], (extraIvars = self->_extraIvars) != 0))
    {
      var4 = extraIvars->var4;
      if (!var4 || ([coder encodeObject:var4 forKey:@"NSCoreSpotlightDisplayName"], (extraIvars = self->_extraIvars) != 0))
      {
        var5 = extraIvars->var5;
        if (var5)
        {
          [coder encodeObject:var5 forKey:@"NSFetchIndexDescriptions"];
          v13 = self->_extraIvars;
          if (v13 && v13->var5)
          {
            array = [MEMORY[0x1E695DF70] array];
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v15 = self->_extraIvars->var5;
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
                  if ([(NSFetchIndexDescription *)v20 _compoundIndexRepresentation])
                  {
                    [array addObject:-[NSFetchIndexDescription _compoundIndexRepresentation](v20)];
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
              }

              while (v17);
            }
          }

          else
          {
            array = 0;
          }

          [coder encodeObject:array forKey:@"NSCompoundIndexes"];
        }
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];

  objc_autoreleasePoolPop(v5);
}

- (void)_setIndexesFromJSONObject:(int)object supplemental:
{
  v32 = *MEMORY[0x1E69E9840];
  if (![a2 isNSArray])
  {
    goto LABEL_44;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = [a2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v21)
  {
    goto LABEL_44;
  }

  array2 = 0;
  v23 = *v28;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      v24 = array2;
      if (*v28 != v23)
      {
        objc_enumerationMutation(a2);
      }

      v5 = *(*(&v27 + 1) + 8 * i);
      if (![v5 isNSArray])
      {
        goto LABEL_44;
      }

      v6 = [v5 count];
      if ([v5 count] < 2)
      {
        goto LABEL_44;
      }

      v7 = [v5 objectAtIndexedSubscript:0];
      if (![v7 isNSString])
      {
        goto LABEL_44;
      }

      if (v6 >= 2)
      {
        array = 0;
        v9 = 1;
        while (1)
        {
          v10 = [v5 objectAtIndexedSubscript:v9];
          if (![v10 isNSArray])
          {
            goto LABEL_44;
          }

          v11 = [v10 count];
          v12 = 1;
          if (v11 == 1)
          {
            goto LABEL_26;
          }

          if (v11 == 2)
          {
            goto LABEL_22;
          }

          v13 = 0;
          v14 = 0;
          if (v11 == 3)
          {
            break;
          }

LABEL_28:
          v17 = [[NSFetchIndexElementDescription alloc] initWithPropertyName:v13 collationType:v14];
          if (!v17)
          {
            goto LABEL_44;
          }

          v18 = v17;
          v17[10] = v17[10] & 0xFFFFFFFE | v12;
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          [array addObject:v18];

          if (v6 == ++v9)
          {
            goto LABEL_34;
          }
        }

        v15 = [v10 objectAtIndexedSubscript:2];
        if (![v15 isNSString])
        {
          goto LABEL_44;
        }

        if ([@"asc" caseInsensitiveCompare:v15] && objc_msgSend(@"ascending", "caseInsensitiveCompare:", v15))
        {
          if ([@"desc" caseInsensitiveCompare:v15] && objc_msgSend(@"descending", "caseInsensitiveCompare:", v15))
          {
            goto LABEL_44;
          }

          v12 = 0;
        }

LABEL_22:
        v16 = [v10 objectAtIndexedSubscript:1];
        if (![v16 isNSString])
        {
          goto LABEL_44;
        }

        if ([@"binary" caseInsensitiveCompare:v16])
        {
          if ([@"rtree" caseInsensitiveCompare:v16])
          {
            goto LABEL_44;
          }

          v14 = 1;
        }

        else
        {
LABEL_26:
          v14 = 0;
        }

        v13 = [v10 objectAtIndexedSubscript:0];
        if (![v13 isNSString])
        {
          goto LABEL_44;
        }

        goto LABEL_28;
      }

      array = 0;
LABEL_34:
      v19 = [[NSFetchIndexDescription alloc] initWithName:v7 elements:array];
      [(NSFetchIndexDescription *)v19 _setEntity:self];
      if (!v19)
      {
        goto LABEL_44;
      }

      array2 = v24;
      if (!v24)
      {
        array2 = [MEMORY[0x1E695DF70] array];
      }

      [array2 addObject:v19];
    }

    v21 = [a2 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v21);
  if (array2 && [array2 count])
  {
    if (object)
    {
      [(NSEntityDescription *)self _addSupplementalIndexes:array2];
    }

    else
    {
      [(NSEntityDescription *)self _setIndexes:array2];
    }
  }

LABEL_44:
  v20 = *MEMORY[0x1E69E9840];
}

- (void)_addSupplementalIndexes:(uint64_t)indexes
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(indexes + 128);
  if (!v4)
  {
    [(NSEntityDescription *)indexes _initializeExtraIVars];
    v4 = *(indexes + 128);
  }

  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = [v5 mutableCopy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(a2);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          [v11 _setEntity:indexes];
          [v6 addObject:v11];
        }

        v8 = [a2 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [a2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(a2);
          }

          [*(*(&v21 + 1) + 8 * j) _setEntity:indexes];
        }

        v13 = [a2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v13);
    }

    v6 = [a2 mutableCopy];
  }

  *(v4 + 40) = v6;
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_setIndexes:(uint64_t)indexes
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(indexes + 128);
  if (!v4)
  {
    [(NSEntityDescription *)indexes _initializeExtraIVars];
    v4 = *(indexes + 128);
  }

  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = [NSEntityDescription _propertiesOnlySubsetFromIndexes:v5];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [a2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(a2);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          [v11 _setEntity:indexes];
          [v6 addObject:v11];
        }

        v8 = [a2 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [a2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(a2);
          }

          [*(*(&v21 + 1) + 8 * j) _setEntity:indexes];
        }

        v13 = [a2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v13);
    }

    v6 = [a2 mutableCopy];
  }

  *(v4 + 40) = v6;
  v16 = *MEMORY[0x1E69E9840];
}

- (NSEntityDescription)initWithCoder:(id)coder
{
  v102 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  objc_opt_class();
  v98.receiver = self;
  v98.super_class = NSEntityDescription;
  v5 = [(NSEntityDescription *)&v98 init];
  if (v5)
  {
    v6 = +[PFModelDecoderContext retainedContext];
    v8 = v6;
    if (v6)
    {
      v9 = v6[2];
      objc_setProperty_nonatomic(v6, v7, v5, 16);
    }

    else
    {
      v9 = 0;
    }

    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v94 = __37__NSEntityDescription_initWithCoder___block_invoke;
    v95 = &unk_1E6EC1600;
    v96 = v8;
    v97 = v9;
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [coder decodeObjectOfClasses:objc_msgSend(v10 forKey:{"setWithObjects:", v11, objc_opt_class(), 0), @"NSVersionHashModifier"}];
    v5->_versionHashModifier = v12;
    if (v12 && ([(NSString *)v12 isNSString]& 1) == 0)
    {
      v15 = &unk_1EF434B80;
    }

    else
    {
      v13 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSManagedObjectModel"];
      v5->_model = v13;
      if (v8)
      {
        v14 = v8[1];
      }

      else
      {
        v14 = 0;
      }

      if (v13 == v14)
      {
        v16 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSClassNameForEntity"];
        v5->_classNameForEntity = v16;
        if (v16 && ![(NSString *)v16 isNSString])
        {
          v15 = &unk_1EF434BD0;
        }

        else
        {
          v5->_name = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSEntityName"];
          v17 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSSuperentity"];
          v5->_superentity = v17;
          if (!v17)
          {
            goto LABEL_24;
          }

          if (v8)
          {
            v18 = v8[3];
          }

          else
          {
            v18 = 0;
          }

          [v18 addObject:v17];
          superentity = v5->_superentity;
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v21 = 4866;
          }

          else
          {
            v21 = 4864;
          }

          if (isKindOfClass)
          {
            v15 = &unk_1EF434C20;
          }

          else
          {
            v15 = &unk_1EF434BF8;
          }

          if (v8 == 0 || (isKindOfClass & 1) == 0)
          {
            goto LABEL_76;
          }

          if (v8[1])
          {
LABEL_24:
            v22 = MEMORY[0x1E695DFD8];
            v23 = objc_opt_class();
            v24 = objc_opt_class();
            v25 = [coder decodeObjectOfClasses:objc_msgSend(v22 forKey:{"setWithObjects:", v23, v24, objc_opt_class(), 0), @"NSSubentities"}];
            v26 = v25;
            if (v25 && ([v25 isNSDictionary] & 1) == 0)
            {
              [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4864, &unk_1EF434C48)}];
            }

            else
            {
              v5->_subentities = v26;
              v27 = MEMORY[0x1E695DFD8];
              v28 = objc_opt_class();
              v29 = objc_opt_class();
              v30 = objc_opt_class();
              v31 = [coder decodeObjectOfClasses:objc_msgSend(v27 forKey:{"setWithObjects:", v28, v29, v30, objc_opt_class(), 0), @"NSProperties"}];
              if ([v31 isNSDictionary])
              {
                v32 = v31;
                v5->_properties = v32;
                v89 = 0u;
                v90 = 0u;
                v91 = 0u;
                v92 = 0u;
                allKeys = [(NSMutableDictionary *)v32 allKeys];
                v34 = [allKeys countByEnumeratingWithState:&v89 objects:v101 count:16];
                if (v34)
                {
                  v35 = *v90;
                  v79 = &unk_1EF434C98;
                  obj = allKeys;
                  while (2)
                  {
                    for (i = 0; i != v34; ++i)
                    {
                      if (*v90 != v35)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v37 = *(*(&v89 + 1) + 8 * i);
                      v38 = [(NSMutableDictionary *)v5->_properties objectForKeyedSubscript:v37];
                      if (![v37 isNSString])
                      {
                        goto LABEL_81;
                      }

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        goto LABEL_81;
                      }

                      if ([v38 entity] != v5)
                      {
                        v79 = &unk_1EF434CC0;
LABEL_81:
                        [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, v79)}];

                        goto LABEL_77;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v39 = v38;
                      }

                      else
                      {
                        v39 = 0;
                      }

                      inverseRelationship = [v39 inverseRelationship];
                      if (inverseRelationship && [inverseRelationship entity] != v5 && (!v8 || !v8[1]))
                      {
                        [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF434CE8)}];

                        goto LABEL_77;
                      }
                    }

                    v34 = [obj countByEnumeratingWithState:&v89 objects:v101 count:16];
                    if (v34)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v41 = (*&v5->_entityDescriptionFlags & 0xFFFFFFFE | [coder decodeBoolForKey:@"NSIsAbstract"]);
                v5->_entityDescriptionFlags = v41;
                atomic_store(0, &v5->_isImmutable);
                v5->_entityDescriptionFlags = (*&v41 & 0xFFFF788F);
                v5->_userInfo = [coder decodeObjectOfClasses:+[_PFRoutines plistClassesForSecureCoding]() forKey:@"NSUserInfo"];
                v42 = MEMORY[0x1E695DFD8];
                v43 = objc_opt_class();
                v44 = [coder decodeObjectOfClasses:objc_msgSend(v42 forKey:{"setWithObjects:", v43, objc_opt_class(), 0), @"NSRenamingIdentifier"}];
                v45 = v44;
                if (!v44 || ([v44 isNSString] & 1) != 0)
                {
                  [(NSEntityDescription *)v5 setRenamingIdentifier:v45];
                  v46 = MEMORY[0x1E695DFD8];
                  v47 = objc_opt_class();
                  v48 = objc_opt_class();
                  -[NSEntityDescription setCompoundIndexes:](v5, "setCompoundIndexes:", [coder decodeObjectOfClasses:objc_msgSend(v46 forKey:{"setWithObjects:", v47, v48, objc_opt_class(), 0), @"NSCompoundIndexes"}]);
                  v49 = MEMORY[0x1E695DFD8];
                  v50 = objc_opt_class();
                  v51 = objc_opt_class();
                  v52 = [coder decodeObjectOfClasses:objc_msgSend(v49 forKey:{"setWithObjects:", v50, v51, objc_opt_class(), 0), @"NSUniqueTuples"}];
                  v53 = v52;
                  if (v52)
                  {
                    v87 = 0u;
                    v88 = 0u;
                    v85 = 0u;
                    v86 = 0u;
                    v54 = [v52 countByEnumeratingWithState:&v85 objects:v100 count:16];
                    if (v54)
                    {
                      v55 = 0;
                      v56 = *v86;
                      do
                      {
                        for (j = 0; j != v54; ++j)
                        {
                          if (*v86 != v56)
                          {
                            objc_enumerationMutation(v53);
                          }

                          v55 += [*(*(&v85 + 1) + 8 * j) count];
                        }

                        v54 = [v53 countByEnumeratingWithState:&v85 objects:v100 count:16];
                      }

                      while (v54);
                      if (v55)
                      {
                        [(NSEntityDescription *)v5 _setUniquenessConstraints:v53];
                      }
                    }
                  }

                  v58 = MEMORY[0x1E695DFD8];
                  v59 = objc_opt_class();
                  v60 = [coder decodeObjectOfClasses:objc_msgSend(v58 forKey:{"setWithObjects:", v59, objc_opt_class(), 0), @"NSCoreSpotlightDisplayName"}];
                  if (v60)
                  {
                    v61 = v60;
                    extraIvars = v5->_extraIvars;
                    if (!extraIvars)
                    {
                      [(NSEntityDescription *)v5 _initializeExtraIVars];
                      extraIvars = v5->_extraIvars;
                    }

                    extraIvars->var4 = v61;
                  }

                  v63 = MEMORY[0x1E695DFD8];
                  v64 = objc_opt_class();
                  v65 = [coder decodeObjectOfClasses:objc_msgSend(v63 forKey:{"setWithObjects:", v64, objc_opt_class(), 0), @"NSFetchIndexDescriptions"}];
                  v66 = v65;
                  if (v65)
                  {
                    if (([v65 isNSArray] & 1) == 0)
                    {
                      [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF434D38)}];

                      goto LABEL_77;
                    }

                    v83 = 0u;
                    v84 = 0u;
                    v81 = 0u;
                    v82 = 0u;
                    v67 = [v66 countByEnumeratingWithState:&v81 objects:v99 count:16];
                    if (v67)
                    {
                      v68 = *v82;
                      while (2)
                      {
                        for (k = 0; k != v67; ++k)
                        {
                          if (*v82 != v68)
                          {
                            objc_enumerationMutation(v66);
                          }

                          v70 = *(*(&v81 + 1) + 8 * k);
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF434D60)}];

                            goto LABEL_77;
                          }
                        }

                        v67 = [v66 countByEnumeratingWithState:&v81 objects:v99 count:16];
                        if (v67)
                        {
                          continue;
                        }

                        break;
                      }
                    }

                    [(NSEntityDescription *)v5 _setIndexes:v66];
                  }

                  else
                  {
                    v73 = [(NSMutableDictionary *)v5->_userInfo objectForKey:@"NSFetchIndexDescriptions"];
                    if (v73)
                    {
                      uTF8String = [v73 UTF8String];
                      v75 = [MEMORY[0x1E696ACB0] JSONObjectWithData:objc_msgSend(MEMORY[0x1E695DEF0] options:"dataWithBytes:length:" error:{uTF8String, strlen(uTF8String)), 0, 0}];
                      if (v75)
                      {
                        [(NSEntityDescription *)v5 _setIndexesFromJSONObject:v75 supplemental:0];
                      }
                    }
                  }

                  v76 = [(NSMutableDictionary *)v5->_userInfo objectForKey:@"NSSupplementalIndexes"];
                  if (v76)
                  {
                    uTF8String2 = [v76 UTF8String];
                    v78 = [MEMORY[0x1E696ACB0] JSONObjectWithData:objc_msgSend(MEMORY[0x1E695DEF0] options:"dataWithBytes:length:" error:{uTF8String2, strlen(uTF8String2)), 0, 0}];
                    if (v78)
                    {
                      [(NSEntityDescription *)v5 _setIndexesFromJSONObject:v78 supplemental:1];
                    }
                  }

                  v5->_propertyMapping = 0;
                  v5->_propertyRanges = 0;
                  v5->_flattenedSubentities = 0;
                  v5->_kvcPropertyAccessors = 0;
                  v5->_modelsReferenceIDForEntity = -1;
                  goto LABEL_78;
                }

                [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF434D10)}];
              }

              else
              {
                [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4864, &unk_1EF434C70)}];
              }
            }

LABEL_77:
            v5 = 0;
LABEL_78:
            (v94)(v93);
            goto LABEL_79;
          }

          v15 = &unk_1EF434C20;
        }
      }

      else
      {
        v15 = &unk_1EF434BA8;
      }
    }

    v21 = 4866;
LABEL_76:
    [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], v21, v15)}];

    goto LABEL_77;
  }

LABEL_79:
  v71 = *MEMORY[0x1E69E9840];
  return v5;
}

void __37__NSEntityDescription_initWithCoder___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_nonatomic(v3, a2, *(a1 + 40), 16);
    v3 = *(a1 + 32);
  }
}

- (void)_setUniquenessConstraints:(uint64_t)constraints
{
  v102 = *MEMORY[0x1E69E9840];
  if (constraints)
  {
    constraintsCopy = constraints;
    v3 = *(constraints + 128);
    if (!v3)
    {
      v4 = a2;
      [(NSEntityDescription *)constraints _initializeExtraIVars];
      a2 = v4;
      v3 = constraintsCopy[16];
    }

    if (*(v3 + 24) != a2)
    {
      v54 = v3;
      obj = a2;
      v56 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v58 = [obj countByEnumeratingWithState:&v78 objects:v101 count:16];
      if (!v58)
      {
        goto LABEL_77;
      }

      v57 = *v79;
      v61 = constraintsCopy;
      while (1)
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v79 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v65 = *(*(&v78 + 1) + 8 * i);
          if (![v65 count])
          {
            continue;
          }

          v59 = i;
          v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v65, "count")}];
          [v56 addObject:v6];

          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v7 = [v65 countByEnumeratingWithState:&v74 objects:v100 count:16];
          if (!v7)
          {
            goto LABEL_62;
          }

          v8 = v7;
          v9 = *v75;
          v62 = *v75;
          v63 = v6;
          do
          {
            v10 = 0;
            v64 = v8;
            do
            {
              if (*v75 != v9)
              {
                objc_enumerationMutation(v65);
              }

              v11 = *(*(&v74 + 1) + 8 * v10);
              if ([(__CFString *)v11 isNSString])
              {
                v12 = [(__CFString *)v11 componentsSeparatedByString:@"."];
                v60 = v11;
                if ([v12 count] < 2)
                {
                  v13 = [objc_msgSend(constraintsCopy "propertiesByName")];
                }

                else
                {
                  v13 = [objc_msgSend(constraintsCopy "propertiesByName")];
                  if ([v12 count] >= 2)
                  {
                    v14 = 1;
                    do
                    {
                      v15 = [v12 objectAtIndex:v14];
                      v70 = 0u;
                      v71 = 0u;
                      v72 = 0u;
                      v73 = 0u;
                      elements = [(__CFString *)v13 elements];
                      v17 = [elements countByEnumeratingWithState:&v70 objects:v99 count:16];
                      if (v17)
                      {
                        v18 = v17;
                        v19 = *v71;
                        while (2)
                        {
                          for (j = 0; j != v18; ++j)
                          {
                            if (*v71 != v19)
                            {
                              objc_enumerationMutation(elements);
                            }

                            v21 = *(*(&v70 + 1) + 8 * j);
                            if ([v15 isEqualToString:{-[__CFString name](v21, "name")}])
                            {
                              v13 = v21;
                              goto LABEL_30;
                            }
                          }

                          v18 = [elements countByEnumeratingWithState:&v70 objects:v99 count:16];
                          if (v18)
                          {
                            continue;
                          }

                          break;
                        }
                      }

LABEL_30:
                      ++v14;
                    }

                    while ([v12 count] > v14);
                  }
                }

                constraintsCopy = v61;
                v9 = v62;
                v6 = v63;
                v8 = v64;
                if (!v13)
                {
                  v45 = MEMORY[0x1E695DF30];
                  v46 = *MEMORY[0x1E695D940];
                  v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't find property named %@", v60];
                  v97 = @"Property name";
                  v98 = v60;
                  v48 = MEMORY[0x1E695DF20];
                  v49 = &v98;
                  v50 = &v97;
LABEL_81:
                  v41 = [v48 dictionaryWithObjects:v49 forKeys:v50 count:1];
                  v43 = v45;
                  v44 = v46;
                  v42 = v47;
LABEL_82:
                  objc_exception_throw([v43 exceptionWithName:v44 reason:v42 userInfo:v41]);
                }
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (![objc_msgSend(constraintsCopy "propertiesByName")])
                  {
                    v23 = objc_autoreleasePoolPush();
                    _pflogInitialize(1);
                    if (_pflogging_enable_oslog >= 1)
                    {
                      v24 = _pflogging_catastrophic_mode;
                      LogStream = _PFLogGetLogStream(1);
                      v26 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
                      if (v24)
                      {
                        if (v26)
                        {
LABEL_59:
                          name = [(__CFString *)v11 name];
                          name2 = [constraintsCopy name];
                          *buf = 138412802;
                          v90 = name;
                          v91 = 2112;
                          v92 = v11;
                          v93 = 2112;
                          v94 = name2;
                          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Can't find property description '%@' %@ while setting unique constraints on entity '%@'\n", buf, 0x20u);
                        }
                      }

                      else if (v26)
                      {
                        goto LABEL_59;
                      }
                    }

                    _NSCoreDataLog_console(1, "Can't find property description '%@' %@ while setting unique constraints on entity '%@'", -[__CFString name](v11, "name"), v11, [constraintsCopy name]);
                    objc_autoreleasePoolPop(v23);
                  }

LABEL_47:
                  v13 = v11;
                  goto LABEL_48;
                }

                if (v11)
                {
                  if ([(__CFString *)v11 superCompositeAttribute])
                  {
                    _rootName = [(NSPropertyDescription *)v11 _rootName];
                    if (![(NSEntityDescription *)constraintsCopy _attributeNamed:_rootName])
                    {
                      v45 = MEMORY[0x1E695DF30];
                      v46 = *MEMORY[0x1E695D940];
                      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't find property named %@", v11];
                      v95 = @"Property name";
                      v96 = v11;
                      v48 = MEMORY[0x1E695DF20];
                      v49 = &v96;
                      v50 = &v95;
                      goto LABEL_81;
                    }
                  }

                  goto LABEL_47;
                }

                v13 = 0;
              }

LABEL_48:
              if ([(__CFString *)v13 _propertyType]== 4)
              {
                if ([(__CFString *)v13 isToMany])
                {
                  v39 = MEMORY[0x1E695DF30];
                  v40 = *MEMORY[0x1E695D940];
                  v87 = @"Property name";
                  name3 = [(__CFString *)v13 name];
                  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&name3 forKeys:&v87 count:1];
                  v42 = @"Cannot create unique constraints for to-many relationships.";
LABEL_80:
                  v43 = v39;
                  v44 = v40;
                  goto LABEL_82;
                }
              }

              else if ([(__CFString *)v13 _propertyType]!= 2)
              {
                v39 = MEMORY[0x1E695DF30];
                v40 = *MEMORY[0x1E695D940];
                v85 = @"Property name";
                name4 = [(__CFString *)v13 name];
                v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&name4 forKeys:&v85 count:1];
                v42 = @"Property type is not valid for unique constraints.";
                goto LABEL_80;
              }

              if ([(__CFString *)v13 _propertyType]== 2 && v13 && [(__CFString *)v13 superCompositeAttribute])
              {
                _qualifiedName = [(__CFString *)v13 _qualifiedName];
              }

              else
              {
                _qualifiedName = [(__CFString *)v13 name];
              }

              [v6 addObject:_qualifiedName];
              ++v10;
            }

            while (v10 != v8);
            v30 = [v65 countByEnumeratingWithState:&v74 objects:v100 count:16];
            v8 = v30;
          }

          while (v30);
LABEL_62:
          v31 = constraintsCopy[10];
          i = v59;
          if (v31)
          {
            propertiesByName = [v31 propertiesByName];
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v33 = [v6 countByEnumeratingWithState:&v66 objects:v84 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = 0;
              v36 = *v67;
              do
              {
                for (k = 0; k != v34; ++k)
                {
                  if (*v67 != v36)
                  {
                    objc_enumerationMutation(v6);
                  }

                  if ([propertiesByName valueForKey:*(*(&v66 + 1) + 8 * k)])
                  {
                    ++v35;
                  }
                }

                v34 = [v6 countByEnumeratingWithState:&v66 objects:v84 count:16];
              }

              while (v34);
            }

            else
            {
              v35 = 0;
            }

            if (v35 == [v6 count])
            {
              v51 = MEMORY[0x1E695DF30];
              v52 = *MEMORY[0x1E695D940];
              v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Uniqueness constraints must be defined at the highest level possible. All properties in constraint %@ are defined on parent entity.", v6];
              v82 = @"Problem constraint";
              v83 = v65;
              v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
              v43 = v51;
              v44 = v52;
              v42 = v53;
              goto LABEL_82;
            }
          }
        }

        v58 = [obj countByEnumeratingWithState:&v78 objects:v101 count:16];
        if (!v58)
        {
LABEL_77:

          *(v54 + 24) = v56;
          break;
        }
      }
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    *(v4 + 64) = [(NSString *)self->_name copy];
    *(v4 + 48) = [(NSString *)self->_classNameForEntity copy];
    v5 = *(v4 + 120) & 0xFFFFFFFE | *&self->_entityDescriptionFlags & 1;
    *(v4 + 120) = v5;
    atomic_store(0, (v4 + 124));
    *(v4 + 120) = v5 & 0xFFFFF9FF;
    *(v4 + 120) = *&self->_entityDescriptionFlags & 0x10 | v5 & 0xFFFFF98F;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    subentities = self->_subentities;
    v8 = [(NSMutableDictionary *)subentities countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v49;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v49 != v10)
          {
            objc_enumerationMutation(subentities);
          }

          v12 = [-[NSMutableDictionary objectForKey:](self->_subentities objectForKey:{*(*(&v48 + 1) + 8 * i)), "copy"}];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableDictionary *)subentities countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v9);
    }

    [(NSEntityDescription *)v4 _setSubentities:v6 preserveIndices:1];

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    properties = self->_properties;
    v15 = [(NSMutableDictionary *)properties countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v45;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(properties);
          }

          v19 = [-[NSMutableDictionary objectForKey:](self->_properties objectForKey:{*(*(&v44 + 1) + 8 * j)), "copy"}];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableDictionary *)properties countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v16);
    }

    [(NSEntityDescription *)v4 _setProperties:v13 preserveIndices:1];

    *(v4 + 136) = [(NSMutableDictionary *)self->_userInfo copy];
    *(v4 + 24) = [(NSString *)self->_versionHashModifier copy];
    atomic_store(0, (v4 + 32));
    *(v4 + 160) = -1;
    [v4 setRenamingIdentifier:{-[NSEntityDescription renamingIdentifier](self, "renamingIdentifier")}];
    array = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    indexes = [(NSEntityDescription *)self indexes];
    v22 = [(NSArray *)indexes countByEnumeratingWithState:&v40 objects:v53 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v41;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(indexes);
          }

          v26 = [*(*(&v40 + 1) + 8 * k) copy];
          [array addObject:v26];
        }

        v23 = [(NSArray *)indexes countByEnumeratingWithState:&v40 objects:v53 count:16];
      }

      while (v23);
      [(NSEntityDescription *)v4 _setIndexes:array];
      if (!self)
      {
        goto LABEL_38;
      }
    }

    else
    {
      [(NSEntityDescription *)v4 _setIndexes:array];
    }

    extraIvars = self->_extraIvars;
    if (extraIvars && (var3 = extraIvars->var3) != 0 || (var3 = NSArray_EmptyArray) != 0)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v29 = [var3 countByEnumeratingWithState:&v36 objects:v52 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = 0;
        v32 = *v37;
        do
        {
          for (m = 0; m != v30; ++m)
          {
            if (*v37 != v32)
            {
              objc_enumerationMutation(var3);
            }

            v31 += [*(*(&v36 + 1) + 8 * m) count];
          }

          v30 = [var3 countByEnumeratingWithState:&v36 objects:v52 count:16];
        }

        while (v30);
        if (v31)
        {
          [v4 setUniquenessConstraints:var3];
        }
      }
    }

LABEL_38:
    [v4 setCoreSpotlightDisplayNameExpression:{-[NSEntityDescription coreSpotlightDisplayNameExpression](self, "coreSpotlightDisplayNameExpression")}];
  }

  v34 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)_setSubentities:(char)subentities preserveIndices:
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    [self _throwIfNotEditable];
    if ((subentities & 1) == 0)
    {
      if (atomic_load((self + 124)))
      {
        v7 = *(self + 72);
      }

      else
      {
        selfCopy = self;
        do
        {
          v7 = selfCopy;
          selfCopy = [selfCopy superentity];
        }

        while (selfCopy);
      }

      [(NSEntityDescription *)v7 _dropIndexes];
    }

    if (([_PFRoutines _doNameAndTypeCheck:a2]& 1) == 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't add a subentity to an entity (missing name or bad properties)." userInfo:0]);
    }

    v9 = [*(self + 88) count];
    v10 = v9;
    if (v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9;
    }

    if (v9 >= 0x201)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = v24 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v9 > 0x200)
    {
      v13 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v24 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v11);
    }

    [*(self + 88) getObjects:v13 andKeys:0 count:v10];
    v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v13 count:v10];
    v15 = [v14 count];
    if (v15)
    {
      v16 = v15;
      for (i = 0; i != v16; ++i)
      {
        v18 = [v14 objectAtIndex:i];
        if ([a2 indexOfObjectIdenticalTo:v18] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSEntityDescription *)self _removeSubentity:v18];
        }
      }
    }

    v19 = [a2 count];
    if (v19)
    {
      v20 = v19;
      for (j = 0; j != v20; ++j)
      {
        v22 = [a2 objectAtIndex:j];
        if ([v14 indexOfObjectIdenticalTo:v22] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [self _addSubentity:v22];
        }
      }
    }

    if (v10 >= 0x201)
    {
      NSZoneFree(0, v13);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_setProperties:(char)properties preserveIndices:
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    [self _throwIfNotEditable];
    if ((properties & 1) == 0)
    {
      if (atomic_load((self + 124)))
      {
        v7 = *(self + 72);
      }

      else
      {
        selfCopy = self;
        do
        {
          v7 = selfCopy;
          selfCopy = [selfCopy superentity];
        }

        while (selfCopy);
      }

      [(NSEntityDescription *)v7 _dropIndexes];
    }

    if (([_PFRoutines _doNameAndTypeCheck:a2]& 1) == 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Invalid property passed to setProperties: property has nil name or is an NSExpressionDescription." userInfo:0]);
    }

    v9 = [*(self + 96) count];
    v10 = v9;
    if (v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9;
    }

    if (v9 >= 0x201)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = v24 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v9 > 0x200)
    {
      v13 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v24 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v11);
    }

    [*(self + 96) getObjects:v13 andKeys:0 count:v10];
    v14 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v13 count:v10];
    v15 = [v14 count];
    if (v15)
    {
      v16 = v15;
      for (i = 0; i != v16; ++i)
      {
        v18 = [v14 objectAtIndex:i];
        if ([a2 indexOfObjectIdenticalTo:v18] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSEntityDescription *)self _removeProperty:v18];
        }
      }
    }

    v19 = [a2 count];
    if (v19)
    {
      v20 = v19;
      for (j = 0; j != v20; ++j)
      {
        v22 = [a2 objectAtIndex:j];
        if ([v14 indexOfObjectIdenticalTo:v22] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [self _addProperty:v22];
        }
      }
    }

    if (v10 >= 0x201)
    {
      NSZoneFree(0, v13);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    goto LABEL_32;
  }

  if (!equal)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  name = [(NSEntityDescription *)self name];
  name2 = [equal name];
  if (name == name2 || (v7 = name2, LOBYTE(name2) = 0, name) && v7 && (LODWORD(name2) = [(NSString *)name isEqual:?], name2))
  {
    isAbstract = [(NSEntityDescription *)self isAbstract];
    if (isAbstract != [equal isAbstract])
    {
LABEL_9:
      LOBYTE(name2) = 0;
      return name2;
    }

    managedObjectClassName = [(NSEntityDescription *)self managedObjectClassName];
    name2 = [equal managedObjectClassName];
    if (managedObjectClassName == name2 || (v10 = name2, LOBYTE(name2) = 0, managedObjectClassName) && v10 && (LODWORD(name2) = [(NSString *)managedObjectClassName isEqual:?], name2))
    {
      versionHash = [(NSEntityDescription *)self versionHash];
      name2 = [equal versionHash];
      if (versionHash == name2 || (v12 = name2, LOBYTE(name2) = 0, versionHash) && v12 && (LODWORD(name2) = [(NSData *)versionHash isEqual:?], name2))
      {
        userInfo = [(NSEntityDescription *)self userInfo];
        name2 = [equal userInfo];
        if (userInfo == name2 || (v14 = name2, LOBYTE(name2) = 0, userInfo) && v14 && (LODWORD(name2) = [(NSDictionary *)userInfo isEqual:?], name2))
        {
          coreSpotlightDisplayNameExpression = [(NSEntityDescription *)self coreSpotlightDisplayNameExpression];
          name2 = [equal coreSpotlightDisplayNameExpression];
          if (coreSpotlightDisplayNameExpression == name2 || (v16 = name2, LOBYTE(name2) = 0, coreSpotlightDisplayNameExpression) && v16 && (LODWORD(name2) = [(NSExpression *)coreSpotlightDisplayNameExpression isEqual:?], name2))
          {
            indexes = [(NSEntityDescription *)self indexes];
            name2 = [equal indexes];
            if (indexes != name2)
            {
              v18 = name2;
              LOBYTE(name2) = 0;
              if (indexes && v18)
              {

                LOBYTE(name2) = [(NSArray *)indexes isEqual:?];
              }

              return name2;
            }

LABEL_32:
            LOBYTE(name2) = 1;
          }
        }
      }
    }
  }

  return name2;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v18 = MEMORY[0x1E696AEC0];
  context = v3;
  v20.receiver = self;
  v20.super_class = NSEntityDescription;
  v4 = [(NSEntityDescription *)&v20 description];
  name = [(NSEntityDescription *)self name];
  managedObjectClassName = [(NSEntityDescription *)self managedObjectClassName];
  renamingIdentifier = [(NSEntityDescription *)self renamingIdentifier];
  isAbstract = [(NSEntityDescription *)self isAbstract];
  name2 = [[(NSEntityDescription *)self superentity] name];
  propertiesByName = [(NSEntityDescription *)self propertiesByName];
  subentitiesByName = [(NSEntityDescription *)self subentitiesByName];
  userInfo = [(NSEntityDescription *)self userInfo];
  versionHashModifier = [(NSEntityDescription *)self versionHashModifier];
  if (self)
  {
    extraIvars = self->_extraIvars;
    if (!extraIvars || (var3 = extraIvars->var3) == 0)
    {
      var3 = NSArray_EmptyArray;
    }
  }

  else
  {
    var3 = 0;
  }

  var3 = [v18 stringWithFormat:@"(%@) name %@, managedObjectClassName %@, renamingIdentifier %@, isAbstract %u, superentity name %@, properties %@, subentities %@, userInfo %@, versionHashModifier %@, uniquenessConstraints %@", v4, name, managedObjectClassName, renamingIdentifier, isAbstract, name2, propertiesByName, subentitiesByName, userInfo, versionHashModifier, var3];
  objc_autoreleasePoolPop(context);
  return var3;
}

- (void)_propertiesMatchingBlock:(uint64_t)block
{
  v33 = *MEMORY[0x1E69E9840];
  if (block)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if ((*(block + 120) & 8) == 0)
    {
      superentity = [block superentity];
      if (superentity)
      {
        propertiesByName = [superentity propertiesByName];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v7 = [propertiesByName countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v28;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v28 != v9)
              {
                objc_enumerationMutation(propertiesByName);
              }

              v11 = *(*(&v27 + 1) + 8 * i);
              v12 = [propertiesByName objectForKey:v11];
              if ((*(a2 + 16))(a2, v12))
              {
                v13 = [v12 copy];
                [v13 _setEntity:block];
                [dictionary setObject:v13 forKey:v11];
              }
            }

            v8 = [propertiesByName countByEnumeratingWithState:&v27 objects:v32 count:16];
          }

          while (v8);
        }
      }
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = *(block + 96);
    v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v24;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v23 + 1) + 8 * j);
          v20 = [*(block + 96) objectForKey:v19];
          if ((*(a2 + 16))(a2, v20))
          {
            [dictionary setObject:v20 forKey:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v16);
    }
  }

  else
  {
    dictionary = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return dictionary;
}

- (void)setUserInfo:(NSDictionary *)userInfo
{
  objc_sync_enter(self);
  v5 = self->_userInfo;
  if (v5 != userInfo)
  {

    self->_userInfo = [(NSDictionary *)userInfo copy];
  }

  objc_sync_exit(self);
}

- (uint64_t)_removeSubentity:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    result = [a2 name];
    if (result)
    {
      v3 = result;
      result = [v2[11] objectForKey:result];
      if (result)
      {
        v4 = result;
        [v2 _throwIfNotEditable];
        v5 = v4;
        [v2[11] removeObjectForKey:v3];

        return [(NSEntityDescription *)v4 _setSuperentity:?];
      }
    }
  }

  return result;
}

- (NSArray)relationshipsWithDestinationEntity:(NSEntityDescription *)entity
{
  v25 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  if (self->_propertyRanges)
  {
    values = [(NSDictionary *)[(NSEntityDescription *)self propertiesByName] values];
    propertyRanges = self->_propertyRanges;
    location = propertyRanges[2].location;
    length = propertyRanges[2].length;
    if (location < length + location)
    {
      v10 = (values + 8 * location);
      do
      {
        v11 = *v10;
        if ([*v10 destinationEntity] == entity)
        {
          [(NSArray *)array addObject:v11];
        }

        ++v10;
        --length;
      }

      while (length);
    }
  }

  else
  {
    relationshipsByName = [(NSEntityDescription *)self relationshipsByName];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [(NSDictionary *)relationshipsByName countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(relationshipsByName);
          }

          v17 = [(NSDictionary *)relationshipsByName objectForKey:*(*(&v20 + 1) + 8 * v16)];
          if ([v17 destinationEntity] == entity)
          {
            [(NSArray *)array addObject:v17];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSDictionary *)relationshipsByName countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return array;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  if (!state->var1)
  {
    propertiesByName = [(NSEntityDescription *)self propertiesByName];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      allValues = [(NSDictionary *)propertiesByName allValues];
      state->var3[3] = 0;
      state->var3[4] = allValues;
    }
  }

  allValues2 = state->var3[4];
  if (allValues2)
  {
    if (!state->var3[3])
    {
      allValues2 = [(NSDictionary *)[(NSEntityDescription *)self propertiesByName] allValues];
    }

    return [(NSArray *)allValues2 countByEnumeratingWithState:state objects:objects count:count];
  }

  else
  {
    properties = self->_properties;

    return [(NSMutableDictionary *)properties _valueCountByEnumeratingWithState:state objects:objects count:count];
  }
}

- (uint64_t)_removeProperty:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ([a2 entity] != result)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Can't remove property '%@' - doesn't belong to this entity.", objc_msgSend(a2, "name")), 0}]);
    }

    result = [a2 name];
    if (result)
    {
      v4 = result;
      result = [v3[12] objectForKey:result];
      if (result)
      {
        v5 = result;
        [v3 _throwIfNotEditable];
        v6 = v5;
        [v3[12] removeObjectForKey:v4];

        return [v5 _setEntityAndMaintainIndices:0];
      }
    }
  }

  return result;
}

- (void)setCoreSpotlightDisplayNameExpression:(NSExpression *)coreSpotlightDisplayNameExpression
{
  [(NSEntityDescription *)self _throwIfNotEditable];
  extraIvars = self->_extraIvars;
  if (!extraIvars)
  {
    [(NSEntityDescription *)self _initializeExtraIVars];
    extraIvars = self->_extraIvars;
  }

  if (extraIvars->var4 != coreSpotlightDisplayNameExpression)
  {
    v6 = coreSpotlightDisplayNameExpression;

    extraIvars->var4 = coreSpotlightDisplayNameExpression;
  }
}

- (void)setManagedObjectClassName:(NSString *)managedObjectClassName
{
  [(NSEntityDescription *)self _throwIfNotEditable];
  if ([(NSString *)managedObjectClassName isEqualToString:+[NSEntityDescription _MOClassName]])
  {
    managedObjectClassName = 0;
  }

  classNameForEntity = self->_classNameForEntity;
  if (classNameForEntity != managedObjectClassName)
  {

    self->_classNameForEntity = [(NSString *)managedObjectClassName copy];
  }

  atomic_store(0, &self->_instanceClass);
}

- (void)setAbstract:(BOOL)abstract
{
  v3 = abstract;
  [(NSEntityDescription *)self _throwIfNotEditable];
  self->_entityDescriptionFlags = (*&self->_entityDescriptionFlags & 0xFFFFFFFE | v3);
}

- (void)setName:(NSString *)name
{
  [(NSEntityDescription *)self _throwIfNotEditable];
  if (self->_name != name)
  {
    managedObjectModel = [(NSEntityDescription *)self managedObjectModel];
    superentity = [(NSEntityDescription *)self superentity];
    if (managedObjectModel && [(NSMutableDictionary *)managedObjectModel->_entities objectForKey:name]|| superentity && [(NSDictionary *)[(NSEntityDescription *)superentity subentitiesByName] objectForKey:name])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Can't change name of entity from %@ to %@", self->_name, name), 0}]);
    }

    [(NSEntityDescription *)superentity _removeSubentity:?];
    [(NSManagedObjectModel *)managedObjectModel _removeEntity:?];

    self->_name = [(NSString *)name copy];
    [(NSManagedObjectModel *)managedObjectModel _addEntity:self];

    [(NSEntityDescription *)superentity _addSubentity:self];
  }
}

- (uint64_t)_newVersionHashInStyle:(uint64_t)result
{
  v50 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_47;
  }

  v3 = result;
  memset(&c, 0, sizeof(c));
  v4 = *(result + 64);
  if (!v4)
  {
    goto LABEL_5;
  }

  CStringPtr = CFStringGetCStringPtr(v4, 0x8000100u);
  if (!CStringPtr)
  {
    v4 = *(v3 + 64);
LABEL_5:
    CStringPtr = [(__CFString *)v4 UTF8String];
  }

  data = [v3 isAbstract];
  CC_SHA256_Init(&c);
  if (CStringPtr)
  {
    v6 = strlen(CStringPtr);
    CC_SHA256_Update(&c, CStringPtr, v6);
  }

  CC_SHA256_Update(&c, &data, 1u);
  if ([v3 superentity])
  {
    [objc_msgSend(objc_msgSend(v3 "superentity")];
    CC_SHA256_Update(&c, v48, 0x20u);
  }

  v7 = [objc_msgSend(v3 "properties")];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v40;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v40 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }
        }

        if (([v12 isTransient] & 1) == 0)
        {
          [v12 _versionHash:v48 inStyle:a2];
          CC_SHA256_Update(&c, v48, 0x20u);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v9);
  }

  v13 = *(v3 + 24);
  if (v13)
  {
    uTF8String = CFStringGetCStringPtr(v13, 0x8000100u);
    if (!uTF8String)
    {
      uTF8String = [*(v3 + 24) UTF8String];
    }

    v15 = strlen(uTF8String);
    CC_SHA256_Update(&c, uTF8String, v15);
  }

  v16 = *(v3 + 128);
  if (v16 && *(v16 + 24))
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = *(*(v3 + 128) + 24);
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v17 addObject:{objc_msgSend(*(*(&v35 + 1) + 8 * j), "componentsJoinedByString:", @"."}];
        }

        v20 = [v18 countByEnumeratingWithState:&v35 objects:v46 count:16];
      }

      while (v20);
    }

    [v17 sortUsingDescriptors:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696AEB0], "sortDescriptorWithKey:ascending:", @"self", 1))}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = [v17 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v17);
          }

          v27 = *(*(&v31 + 1) + 8 * k);
          if ([(__CFString *)v27 length])
          {
            uTF8String2 = CFStringGetCStringPtr(v27, 0x8000100u);
            if (!uTF8String2)
            {
              uTF8String2 = [(__CFString *)v27 UTF8String];
            }

            v29 = strlen(uTF8String2);
            CC_SHA256_Update(&c, uTF8String2, v29);
          }
        }

        v24 = [v17 countByEnumeratingWithState:&v31 objects:v45 count:16];
      }

      while (v24);
    }
  }

  CC_SHA256_Final(md, &c);
  result = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:32];
LABEL_47:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)_versionHashInStyle:(unint64_t *)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (a2 == 1)
  {
    v4 = [(NSEntityDescription *)result _newVersionHashInStyle:?];
LABEL_8:

    return v4;
  }

  v5 = atomic_load(result + 4);
  if (v5 && ![result _isEditable])
  {
    return atomic_load(v3 + 4);
  }

  v6 = [(NSEntityDescription *)v3 _newVersionHashInStyle:a2];
  if ([v3 _isEditable])
  {
    v4 = v6;
    goto LABEL_8;
  }

  v7 = 0;
  v8 = (v3 + 4);
  atomic_compare_exchange_strong(v8, &v7, v6);
  if (v7)
  {
  }

  return atomic_load(v8);
}

- (void)setVersionHashModifier:(NSString *)versionHashModifier
{
  [(NSEntityDescription *)self _throwIfNotEditable];
  v5 = self->_versionHashModifier;
  if (v5 != versionHashModifier)
  {

    self->_versionHashModifier = [(NSString *)versionHashModifier copy];
  }
}

- (uint64_t)_validateIndexNameChangeFrom:(uint64_t)from to:
{
  v32 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (*(result + 128))
    {
      result = [a2 isEqual:?];
      if ((result & 1) == 0)
      {
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v6 = *(v3[16] + 40);
        v7 = [v6 countByEnumeratingWithState:&v24 objects:v31 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v25;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v25 != v9)
              {
                objc_enumerationMutation(v6);
              }

              name = [*(*(&v24 + 1) + 8 * i) name];
              if (([name isEqual:a2] & 1) == 0 && objc_msgSend(name, "isEqual:", from))
              {
                v17 = MEMORY[0x1E695DF30];
                v18 = *MEMORY[0x1E695D940];
                from = [MEMORY[0x1E696AEC0] stringWithFormat:@"Entity %@ already has an index with name %@", objc_msgSend(v3, "name"), from];
                v29 = @"Entity";
                v30 = v3;
                objc_exception_throw([v17 exceptionWithName:v18 reason:from userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v30, &v29, 1)}]);
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v24 objects:v31 count:16];
          }

          while (v8);
        }

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        subentities = [v3 subentities];
        result = [subentities countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (result)
        {
          v13 = result;
          v14 = *v21;
          do
          {
            v15 = 0;
            do
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(subentities);
              }

              [(NSEntityDescription *)*(*(&v20 + 1) + 8 * v15++) _validateIndexNameChangeFrom:a2 to:from];
            }

            while (v13 != v15);
            result = [subentities countByEnumeratingWithState:&v20 objects:v28 count:16];
            v13 = result;
          }

          while (result);
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_attributeNamed:(uint64_t)named
{
  if (!named)
  {
    return 0;
  }

  if (*(named + 112))
  {
    v4 = [objc_msgSend(named "_propertySearchMapping")];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v4;
      v6 = *(named + 112);
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      v9 = [objc_msgSend(named "propertiesByName")];
      if (v5 >= v7 && v5 - v7 < v8)
      {
        return *(v9 + 8 * v5);
      }
    }

    return 0;
  }

  v11 = [*(named + 96) objectForKey:a2];
  _isAttribute = [v11 _isAttribute];
  if (!v11 || (_isAttribute & 1) == 0)
  {
    if ((*(named + 120) & 8) == 0)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x3052000000;
      v18 = __Block_byref_object_copy__11;
      v19 = __Block_byref_object_dispose__11;
      v20 = 0;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __59__NSEntityDescription__NSInternalMethods___attributeNamed___block_invoke;
      v14[3] = &unk_1E6EC1F70;
      v14[4] = a2;
      v14[5] = &v15;
      [(NSEntityDescription *)named _propertyKeys:v14 matchingBlock:?];
      v11 = [v16[5] copy];
      [v11 _setEntity:named];
      _Block_object_dispose(&v15, 8);
      return v11;
    }

    return 0;
  }

  return v11;
}

- (id)_relationshipNamed:(void *)named
{
  if (!named)
  {
    return 0;
  }

  if (named[14])
  {
    v4 = [objc_msgSend(named "_propertySearchMapping")];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = v4;
      v6 = named[14];
      v7 = *(v6 + 32);
      v8 = *(v6 + 40);
      v9 = [objc_msgSend(named "propertiesByName")];
      if (v5 >= v7 && v5 - v7 < v8)
      {
        return *(v9 + 8 * v5);
      }
    }

    return 0;
  }

  v14 = [named _localRelationshipNamed:a2];
  if (!v14)
  {
    for (i = named; ; i = v14)
    {
      superentity = [i superentity];
      v14 = superentity;
      if (!superentity)
      {
        break;
      }

      v13 = [superentity _localRelationshipNamed:a2];
      if (v13)
      {
        v14 = [v13 copy];
        [v14 _setEntity:named];
        return v14;
      }
    }
  }

  return v14;
}

- (void)setIndexes:(NSArray *)indexes
{
  v58 = *MEMORY[0x1E69E9840];
  [(NSEntityDescription *)self _throwIfNotEditable];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = indexes;
  v39 = [(NSArray *)indexes countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v39)
  {
    v38 = *v46;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v46 != v38)
        {
          objc_enumerationMutation(obj);
        }

        if (self)
        {
          v6 = *(*(&v45 + 1) + 8 * i);
          if (atomic_load(&self->_isImmutable))
          {
            rootentity = self->_rootentity;
          }

          else
          {
            selfCopy = self;
            do
            {
              rootentity = selfCopy;
              selfCopy = [(NSEntityDescription *)selfCopy superentity];
            }

            while (selfCopy);
          }

          -[NSEntityDescription _validateIndexNameChangeFrom:to:](rootentity, 0, [v6 name]);
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v40 = v6;
          elements = [v6 elements];
          v11 = [elements countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v50;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v50 != v13)
                {
                  objc_enumerationMutation(elements);
                }

                v15 = *(*(&v49 + 1) + 8 * j);
                property = [v15 property];
                _propertyType = [(__CFString *)property _propertyType];
                name = [(__CFString *)property name];
                if ([(__CFString *)property _isAttribute])
                {
                  if (property && [(__CFString *)property superCompositeAttribute])
                  {
                    name = [(NSPropertyDescription *)property _rootName];
                  }

                  if (![(NSEntityDescription *)self _attributeNamed:name])
                  {
                    v27 = MEMORY[0x1E695DF30];
                    v28 = *MEMORY[0x1E695D940];
                    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can't find attribute named %@", name];
                    goto LABEL_45;
                  }
                }

                else if ([(__CFString *)property _isRelationship])
                {
                  if (![(NSEntityDescription *)self _relationshipNamed:name])
                  {
                    v27 = MEMORY[0x1E695DF30];
                    v28 = *MEMORY[0x1E695D940];
                    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can't find relationship named %@", name];
LABEL_45:
                    v36 = v29;
                    v34 = v27;
                    v35 = v28;
                    v33 = 0;
                    goto LABEL_46;
                  }
                }

                else if (_propertyType != 5)
                {
                  v30 = MEMORY[0x1E695DF30];
                  v31 = *MEMORY[0x1E695D940];
                  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"can't create index %@, unsupported index element property type", objc_msgSend(v40, "name")];
                  v55 = @"element";
                  v56 = v15;
                  goto LABEL_44;
                }
              }

              v12 = [elements countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v12);
          }

          if (![objc_msgSend(v40 "elements")])
          {
            v30 = MEMORY[0x1E695DF30];
            v31 = *MEMORY[0x1E695D940];
            v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Indexes must be declared at the highest applicable level. All properties are declared on superentity."];
            v55 = @"index";
            v56 = v40;
LABEL_44:
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
            v34 = v30;
            v35 = v31;
            v36 = v32;
LABEL_46:
            objc_exception_throw([v34 exceptionWithName:v35 reason:v36 userInfo:v33]);
          }
        }
      }

      v39 = [(NSArray *)obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v39);
  }

  v19 = [(NSArray *)obj mutableCopy];
  extraIvars = self->_extraIvars;
  if (!extraIvars)
  {
    [(NSEntityDescription *)self _initializeExtraIVars];
    extraIvars = self->_extraIvars;
  }

  var5 = extraIvars->var5;
  if (var5)
  {

    extraIvars->var5 = 0;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v22 = [v19 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v42;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v41 + 1) + 8 * k) _setEntity:self];
      }

      v23 = [v19 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v23);
  }

  extraIvars->var5 = v19;
  v26 = *MEMORY[0x1E69E9840];
}

- (NSArray)compoundIndexes
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_extraIvars)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    var5 = self->_extraIvars->var5;
    v5 = [var5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(var5);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          if (([(NSFetchIndexDescription *)v9 _isMappedSinglePropertyIndex]& 1) == 0)
          {
            v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(objc_msgSend(v9, "elements"), "count")}];
            v18 = 0u;
            v19 = 0u;
            v20 = 0u;
            v21 = 0u;
            elements = [v9 elements];
            v12 = [elements countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v19;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v19 != v14)
                  {
                    objc_enumerationMutation(elements);
                  }

                  [v10 addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * j), "property")}];
                }

                v13 = [elements countByEnumeratingWithState:&v18 objects:v26 count:16];
              }

              while (v13);
            }

            [v3 addObject:v10];
          }
        }

        v6 = [var5 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    result = v3;
  }

  else
  {
    result = NSArray_EmptyArray;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setCompoundIndexes:(NSArray *)compoundIndexes
{
  v75 = *MEMORY[0x1E69E9840];
  extraIvars = self->_extraIvars;
  if (!extraIvars)
  {
    [(NSEntityDescription *)self _initializeExtraIVars];
    extraIvars = self->_extraIvars;
  }

  v35 = extraIvars;
  obj = [NSEntityDescription _propertiesOnlySubsetFromIndexes:?];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v39 = [(NSArray *)compoundIndexes countByEnumeratingWithState:&v60 objects:v74 count:16];
  if (v39)
  {
    v37 = compoundIndexes;
    v38 = *v61;
    do
    {
      v5 = 0;
      do
      {
        if (*v61 != v38)
        {
          objc_enumerationMutation(compoundIndexes);
        }

        v6 = *(*(&v60 + 1) + 8 * v5);
        v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
        string = [MEMORY[0x1E696AD60] string];
        v40 = v5;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v8 = [v6 countByEnumeratingWithState:&v56 objects:v73 count:16];
        if (v8)
        {
          v9 = *v57;
          v10 = 1;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v57 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v12 = *(*(&v56 + 1) + 8 * i);
              if ((v10 & 1) == 0)
              {
                [string appendString:@"_"];
              }

              if (![v12 isNSString])
              {
                if ([v6 count] <= 1 && (-[NSEntityDescription _hasIndexForProperty:](self, v12) & 1) != 0)
                {
                  goto LABEL_43;
                }

                if ([v12 _propertyType] == 7 || objc_msgSend(v12, "superCompositeAttribute"))
                {
                  v29 = MEMORY[0x1E695DF30];
                  v66 = @"Property";
                  v67 = v12;
                  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
                  objc_exception_throw([v29 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Composite property type is unsupported." userInfo:v30]);
                }

                v14 = -[NSFetchIndexElementDescription initWithPropertyName:property:collationType:ascending:]([NSFetchIndexElementDescription alloc], [v12 name], v12, 0, 1);
                [string appendString:{-[NSFetchIndexElementDescription propertyName](v14, "propertyName")}];
                goto LABEL_41;
              }

              if ([@"self" isEqualToString:{objc_msgSend(v12, "lowercaseString")}])
              {
                [string appendString:@"self"];
                v13 = objc_alloc_init(NSExpressionDescription);
                [(NSPropertyDescription *)v13 setName:@"self"];
                -[NSExpressionDescription setExpression:](v13, "setExpression:", [MEMORY[0x1E696ABC8] expressionForEvaluatedObject]);
                [(NSExpressionDescription *)v13 setExpressionResultType:2000];
                v14 = [[NSFetchIndexElementDescription alloc] initWithProperty:v13 collationType:0];

                goto LABEL_41;
              }

              if ([@"entity" isEqualToString:{objc_msgSend(v12, "lowercaseString")}])
              {
                [string appendString:@"entity"];
                v15 = objc_alloc_init(NSExpressionDescription);
                [(NSPropertyDescription *)v15 setName:@"entity"];
                -[NSExpressionDescription setExpression:](v15, "setExpression:", [MEMORY[0x1E696ABC8] expressionForKeyPath:@"entity"]);
                [(NSExpressionDescription *)v15 setExpressionResultType:0];
                v14 = [[NSFetchIndexElementDescription alloc] initWithProperty:v15 collationType:0];

                goto LABEL_41;
              }

              if ([v12 containsString:@"."])
              {
                if ([-[NSMutableDictionary objectForKey:](self->_properties objectForKey:{objc_msgSend(objc_msgSend(v12, "componentsSeparatedByString:", @".", "firstObject")), "_propertyType"}] == 7)
                {
                  v31 = MEMORY[0x1E695DF30];
                  v71 = @"Property";
                  v72 = v12;
                  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
                  objc_exception_throw([v31 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Composite property type is unsupported." userInfo:v32]);
                }
              }

              else
              {
                if ([v6 count] != 1)
                {
                  goto LABEL_40;
                }

                if ([-[NSMutableDictionary objectForKey:](self->_properties objectForKey:{v12), "_propertyType"}] == 7)
                {
                  v33 = MEMORY[0x1E695DF30];
                  v69 = @"Property";
                  v70 = v12;
                  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
                  objc_exception_throw([v33 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Composite property type is unsupported." userInfo:v34]);
                }

                v54 = 0u;
                v55 = 0u;
                v52 = 0u;
                v53 = 0u;
                v16 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
                if (!v16)
                {
LABEL_40:
                  v14 = [[NSFetchIndexElementDescription alloc] initWithPropertyName:v12 property:0 collationType:0 ascending:1];
                  [string appendString:v12];
LABEL_41:
                  if (v14)
                  {
                    [v42 addObject:v14];
                  }

                  goto LABEL_43;
                }

                v17 = *v53;
LABEL_32:
                v18 = 0;
                while (1)
                {
                  if (*v53 != v17)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v19 = [objc_msgSend(*(*(&v52 + 1) + 8 * v18) "elements")];
                  if ([v12 isEqual:{objc_msgSend(v19, "propertyName")}])
                  {
                    if (![v19 collationType] && (objc_msgSend(v19, "isAscending") & 1) != 0)
                    {
                      break;
                    }
                  }

                  if (v16 == ++v18)
                  {
                    v16 = [obj countByEnumeratingWithState:&v52 objects:v68 count:16];
                    if (v16)
                    {
                      goto LABEL_32;
                    }

                    goto LABEL_40;
                  }
                }
              }

LABEL_43:
              v10 = 0;
            }

            v8 = [v6 countByEnumeratingWithState:&v56 objects:v73 count:16];
            v10 = 0;
          }

          while (v8);
        }

        compoundIndexes = v37;
        if ([v42 count])
        {
          v20 = [[NSFetchIndexDescription alloc] initWithName:string elements:v42];
          [obj addObject:v20];
        }

        v5 = v40 + 1;
      }

      while (v40 + 1 != v39);
      v39 = [(NSArray *)v37 countByEnumeratingWithState:&v60 objects:v74 count:16];
    }

    while (v39);
  }

  if ([obj count])
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v21 = *(v36 + 40);
    v22 = [v21 countByEnumeratingWithState:&v48 objects:v65 count:16];
    if (v22)
    {
      v23 = *v49;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v49 != v23)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v48 + 1) + 8 * j) _setEntity:0];
        }

        v22 = [v21 countByEnumeratingWithState:&v48 objects:v65 count:16];
      }

      while (v22);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = [obj countByEnumeratingWithState:&v44 objects:v64 count:16];
    if (v25)
    {
      v26 = *v45;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v45 != v26)
          {
            objc_enumerationMutation(obj);
          }

          [*(*(&v44 + 1) + 8 * k) _setEntity:self];
        }

        v25 = [obj countByEnumeratingWithState:&v44 objects:v64 count:16];
      }

      while (v25);
    }

    *(v36 + 40) = obj;
  }

  else
  {

    *(v36 + 40) = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)_propertiesOnlySubsetFromIndexes:(void *)indexes
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [indexes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(indexes);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([(NSFetchIndexDescription *)v7 _isMappedSinglePropertyIndex])
        {
          [v2 addObject:v7];
        }
      }

      v4 = [indexes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

- (uint64_t)_hasIndexForProperty:(uint64_t)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 128);
    if (v4)
    {
      v5 = *(v4 + 40);
      if (v5)
      {
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v12;
          while (2)
          {
            v9 = 0;
            do
            {
              if (*v12 != v8)
              {
                objc_enumerationMutation(v5);
              }

              if (([(NSFetchIndexDescription *)*(*(&v11 + 1) + 8 * v9) _isIndexForProperty:a2]& 1) != 0)
              {
                result = 1;
                goto LABEL_14;
              }

              ++v9;
            }

            while (v7 != v9);
            v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
            if (v7)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    result = [(NSEntityDescription *)*(v3 + 80) _hasIndexForProperty:a2];
  }

LABEL_14:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setUniquenessConstraints:(NSArray *)uniquenessConstraints
{
  v36 = *MEMORY[0x1E69E9840];
  [(NSEntityDescription *)self _throwIfNotEditable];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(NSArray *)uniquenessConstraints countByEnumeratingWithState:&v21 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(uniquenessConstraints);
        }

        v7 += [*(*(&v21 + 1) + 8 * i) count];
      }

      v6 = [(NSArray *)uniquenessConstraints countByEnumeratingWithState:&v21 objects:v35 count:16];
    }

    while (v6);
    if (v7)
    {
      _checkForNonCascadeNoInverses = [(NSEntityDescription *)self _checkForNonCascadeNoInverses];
      if (_checkForNonCascadeNoInverses)
      {
        v11 = _checkForNonCascadeNoInverses;
        v12 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v13 = _pflogging_catastrophic_mode;
          LogStream = _PFLogGetLogStream(1);
          v15 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
          if (v13)
          {
            if (v15)
            {
              goto LABEL_17;
            }
          }

          else if (v15)
          {
LABEL_17:
            name = [(NSEntityDescription *)self name];
            name2 = [v11 name];
            v19 = [objc_msgSend(v11 "inverseRelationship")];
            name3 = [v11 name];
            *buf = 138413314;
            v26 = uniquenessConstraints;
            v27 = 2112;
            v28 = name;
            v29 = 2112;
            v30 = name2;
            v31 = 2112;
            v32 = v19;
            v33 = 2112;
            v34 = name3;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Cannot merge uniqueness constraints { %@ } on entity '%@' due to relationship '%@' having a mandatory to-one inverse relationship '%@' and not using a cascade delete rule on '%@'\n", buf, 0x34u);
          }
        }

        _NSCoreDataLog_console(1, "Cannot merge uniqueness constraints { %@ } on entity '%@' due to relationship '%@' having a mandatory to-one inverse relationship '%@' and not using a cascade delete rule on '%@'", uniquenessConstraints, -[NSEntityDescription name](self, "name"), [v11 name], objc_msgSend(objc_msgSend(v11, "inverseRelationship"), "name"), objc_msgSend(v11, "name"));
        objc_autoreleasePoolPop(v12);
      }
    }
  }

  [(NSEntityDescription *)self _setUniquenessConstraints:?];
  v16 = *MEMORY[0x1E69E9840];
}

- (void)setRenamingIdentifier:(NSString *)renamingIdentifier
{
  if (!renamingIdentifier || [(NSString *)renamingIdentifier isNSString]&& [(NSString *)[(NSEntityDescription *)self name] isEqualToString:renamingIdentifier])
  {
    extraIvars = self->_extraIvars;
    if (extraIvars)
    {

      self->_extraIvars->var0 = 0;
    }
  }

  else
  {
    v6 = [(NSString *)renamingIdentifier copy];
    v7 = self->_extraIvars;
    if (!v7)
    {
      [(NSEntityDescription *)self _initializeExtraIVars];
      v7 = self->_extraIvars;
    }

    v7->var0 = v6;
  }
}

- (void)_addSubentity:(id)subentity
{
  [(NSEntityDescription *)self _throwIfNotEditable];
  superentity = [subentity superentity];
  if (superentity == self)
  {
    return;
  }

  if (superentity)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v11 = @"Can't add an entity to multiple superentities.";
    goto LABEL_13;
  }

  name = [subentity name];
  if (!name)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v11 = @"Can't add unnamed subentity.";
    goto LABEL_13;
  }

  v7 = name;
  v8 = [(NSMutableDictionary *)self->_subentities objectForKey:name];
  if (v8 && v8 != subentity)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D930];
    v11 = @"Can't add multiple entities with duplicate names.";
LABEL_13:
    objc_exception_throw([v9 exceptionWithName:v10 reason:v11 userInfo:0]);
  }

  [(NSMutableDictionary *)self->_subentities setObject:subentity forKey:v7];

  [(NSEntityDescription *)subentity _setSuperentity:?];
}

- (uint64_t)_setSuperentity:(uint64_t)result
{
  if (result && *(result + 80) != a2)
  {
    if (result == a2)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't set superentity of self to self." userInfo:{0, v2, v3}]);
    }

    *(result + 80) = a2;
  }

  return result;
}

- (void)_addProperty:(id)property
{
  v32 = *MEMORY[0x1E69E9840];
  [(NSEntityDescription *)self _throwIfNotEditable];
  if (property)
  {
    name = [property name];
    if (name)
    {
      v6 = name;
      if ([(NSMutableDictionary *)self->_properties objectForKey:name])
      {
        v18 = MEMORY[0x1E695DF30];
        v19 = *MEMORY[0x1E695D930];
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Entity already contains a property named %@.", v6];
        v15 = v18;
        v16 = v19;
      }

      else
      {
        v7 = objc_opt_class();
        if (v7 != objc_opt_class())
        {
          entity = [property entity];
          if (!entity)
          {
            goto LABEL_13;
          }

          v9 = entity;
          if (entity == self)
          {
            goto LABEL_13;
          }

          v10 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog >= 1)
          {
            v11 = _pflogging_catastrophic_mode;
            LogStream = _PFLogGetLogStream(1);
            v13 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
            if (v11)
            {
              if (v13)
              {
                goto LABEL_15;
              }
            }

            else if (v13)
            {
LABEL_15:
              *buf = 134219266;
              propertyCopy = property;
              v22 = 2112;
              name2 = [property name];
              v24 = 2048;
              selfCopy = self;
              v26 = 2112;
              name3 = [(NSEntityDescription *)self name];
              v28 = 2048;
              v29 = v9;
              v30 = 2112;
              name4 = [(NSEntityDescription *)v9 name];
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: tried to add property %p '%@' to entity %p '%@' but it already belongs to entity %p '%@'\n", buf, 0x3Eu);
            }
          }

          _NSCoreDataLog_console(1, "tried to add property %p '%@' to entity %p '%@' but it already belongs to entity %p '%@'", property, [property name], self, -[NSEntityDescription name](self, "name"), v9, -[NSEntityDescription name](v9, "name"));
          objc_autoreleasePoolPop(v10);
          property = [property copy];
LABEL_13:
          [(NSMutableDictionary *)self->_properties setObject:property forKey:v6];
          [property _setEntityAndMaintainIndices:self];
          goto LABEL_14;
        }

        v15 = MEMORY[0x1E695DF30];
        v16 = *MEMORY[0x1E695D940];
        v17 = @"Can't add NSExpressionDescriptions to NSEntityDescriptions";
      }
    }

    else
    {
      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D940];
      v17 = @"Can't add unnamed property to entity.";
    }

    objc_exception_throw([v15 exceptionWithName:v16 reason:v17 userInfo:0]);
  }

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_addFactoryToRetainList:(id)list
{
  if (self)
  {
    extraIvars = self->_extraIvars;
    if (!extraIvars)
    {
      [(NSEntityDescription *)self _initializeExtraIVars];
      extraIvars = self->_extraIvars;
    }
  }

  else
  {
    extraIvars = 0;
  }

  os_unfair_lock_lock_with_options();
  var1 = extraIvars->var1;
  if (!var1)
  {
    var1 = objc_alloc_init(MEMORY[0x1E695DF70]);
    extraIvars->var1 = var1;
  }

  [var1 addObject:list];

  os_unfair_lock_unlock(&extraIvars->var6);
}

- (id)_propertyWithRenamingIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  propertiesByName = [(NSEntityDescription *)self propertiesByName];
  v5 = [(NSDictionary *)propertiesByName objectForKey:identifier];
  if (([objc_msgSend(v5 "renamingIdentifier")] & 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(NSDictionary *)propertiesByName countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(propertiesByName);
        }

        v5 = [(NSDictionary *)propertiesByName objectForKey:*(*(&v12 + 1) + 8 * v9)];
        if ([objc_msgSend(v5 "renamingIdentifier")])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSDictionary *)propertiesByName countByEnumeratingWithState:&v12 objects:v16 count:16];
          v5 = 0;
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)_keypathsToPrefetchForDeletePropagationPrefixedWith:(uint64_t)with toDepth:(void *)depth processedEntities:
{
  v58 = *MEMORY[0x1E69E9840];
  if (self)
  {
    depthCopy = depth;
    selfCopy = self;
    v8 = [depth containsObject:{objc_msgSend(self, "name")}];
    if (with < 0 || v8)
    {
      v39 = NSSet_EmptySet;
    }

    else
    {
      v40 = a2;
      withCopy = with;
      v39 = [MEMORY[0x1E695DFA8] set];
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v9 addObject:selfCopy];
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      while (1)
      {
        [v10 addObjectsFromArray:{objc_msgSend(selfCopy, "subentities")}];
        if (![v10 count])
        {
          break;
        }

        selfCopy = [v10 lastObject];
        [v10 removeLastObject];
        [v9 addObject:selfCopy];
      }

      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = v9;
      v12 = [v9 countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (v12)
      {
        v13 = v12;
        v42 = *v52;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            v15 = depthCopy;
            if (*v52 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v51 + 1) + 8 * i);
            relationshipsByName = [v16 relationshipsByName];
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v18 = [relationshipsByName countByEnumeratingWithState:&v47 objects:v56 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v48;
              do
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v48 != v20)
                  {
                    objc_enumerationMutation(relationshipsByName);
                  }

                  [v11 setObject:objc_msgSend(relationshipsByName forKey:{"objectForKey:", *(*(&v47 + 1) + 8 * j)), *(*(&v47 + 1) + 8 * j)}];
                }

                v19 = [relationshipsByName countByEnumeratingWithState:&v47 objects:v56 count:16];
              }

              while (v19);
            }

            depthCopy = v15;
            [v15 addObject:{objc_msgSend(v16, "name")}];
          }

          v13 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
        }

        while (v13);
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v22 = [v11 countByEnumeratingWithState:&v43 objects:v55 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v44;
        do
        {
          v25 = 0;
          do
          {
            if (*v44 != v24)
            {
              objc_enumerationMutation(v11);
            }

            v26 = [v11 objectForKey:*(*(&v43 + 1) + 8 * v25)];
            deleteRule = [v26 deleteRule];
            inverseRelationship = [v26 inverseRelationship];
            if (deleteRule)
            {
              v29 = deleteRule == 3;
            }

            else
            {
              v29 = 1;
            }

            if (!v29)
            {
              v30 = inverseRelationship;
              if (deleteRule != 1 || inverseRelationship != 0)
              {
                if (v40)
                {
                  name = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@.%@", v40, objc_msgSend(v26, "name")];
                }

                else
                {
                  name = [v26 name];
                }

                v33 = name;
                if (deleteRule != 1 || v30 == 0)
                {
                  if (deleteRule == 2)
                  {
                    [v39 addObject:name];
                    if (withCopy >= 1)
                    {
                      [v39 unionSet:{-[NSEntityDescription _keypathsToPrefetchForDeletePropagationPrefixedWith:toDepth:processedEntities:](objc_msgSend(v26, "destinationEntity"), v33, withCopy - 1, depthCopy)}];
                    }
                  }
                }

                else
                {
                  [v39 addObject:name];
                }
              }
            }

            ++v25;
          }

          while (v23 != v25);
          v35 = [v11 countByEnumeratingWithState:&v43 objects:v55 count:16];
          v23 = v35;
        }

        while (v35);
      }
    }
  }

  else
  {
    v39 = 0;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v39;
}

- (id)_newMappingForPropertiesOfRange:(unsigned int)range
{
  v5 = [-[NSEntityDescription _propertySearchMapping](self "_propertySearchMapping")];
  values = [(NSDictionary *)[(NSEntityDescription *)self propertiesByName] values];
  v7 = &self->_propertyRanges[range];
  length = v7->length;
  v9 = v5 + 8 * v7->location;
  v10 = values + 8 * v7->location;
  v11 = [NSKnownKeysDictionary alloc];

  return [(NSKnownKeysDictionary *)v11 initWithObjects:v10 forKeys:v9 count:length];
}

- (id)_initWithName:(id)name
{
  v10.receiver = self;
  v10.super_class = NSEntityDescription;
  v4 = [(NSEntityDescription *)&v10 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 5) = 0;
    *(v4 + 6) = 0;
    atomic_store(0, v4 + 7);
    v6 = [name copy];
    *(v5 + 9) = 0;
    *(v5 + 10) = 0;
    *(v5 + 8) = v6;
    *(v5 + 11) = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v5 + 13) = 0;
    *(v5 + 14) = 0;
    *(v5 + 12) = v7;
    v8 = *(v5 + 30);
    *(v5 + 30) = v8 & 0xFFFFFFFC;
    atomic_store(0, v5 + 124);
    *(v5 + 30) = v8 & 0xFFFFF98C;
    *(v5 + 17) = 0;
    *(v5 + 18) = 0;
    *(v5 + 19) = 0;
    *(v5 + 20) = -1;
    atomic_store(0, v5 + 4);
    *(v5 + 3) = 0;
    atomic_store(0, v5 + 2);
  }

  return v5;
}

- (void)_setManagedObjectModel:(void *)result
{
  if (result)
  {
    v3 = result;
    result = [result _throwIfNotEditable];
    v4 = v3[5];
    if (v4 != a2)
    {
      if (a2)
      {
        if (v4)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't use an entity in two models." userInfo:0]);
        }
      }

      v3[5] = a2;
    }
  }

  return result;
}

- (uint64_t)_propertyKeys:(uint64_t)keys matchingBlock:
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_17;
  }

  v20 = 0;
  if ((*(self + 120) & 8) != 0 || (v6 = [self superentity]) == 0 || (v20 = -[NSEntityDescription _propertyKeys:matchingBlock:](v6, a2, keys), (v20 & 1) == 0))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = *(self + 96);
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
LABEL_8:
      v12 = 0;
      while (1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * v12);
        if ((*(keys + 16))(keys, [*(self + 96) objectForKey:v13], &v20))
        {
          [a2 addObject:v13];
        }

        if (v20)
        {
          goto LABEL_5;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v10)
          {
            goto LABEL_8;
          }

          v7 = v20;
          goto LABEL_18;
        }
      }
    }

LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

LABEL_5:
  v7 = 1;
LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (uint64_t)_relationshipNamesByType:(uint64_t)type
{
  typeCopy = type;
  if (type)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__NSEntityDescription__NSInternalMethods___relationshipNamesByType___block_invoke;
    v6[3] = &__block_descriptor_33_e35_B24__0__NSPropertyDescription_8_B16l;
    v7 = a2;
    [(NSEntityDescription *)typeCopy _propertyKeys:v4 matchingBlock:v6];
    typeCopy = [v4 allObjects];
  }

  return typeCopy;
}

uint64_t __68__NSEntityDescription__NSInternalMethods___relationshipNamesByType___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _isRelationship];
  if (result)
  {
    v5 = [a2 maxCount];
    if (*(a1 + 32) == 1)
    {
      if (v5 != 1)
      {
        return 0;
      }
    }

    else if (v5 == 1)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

- (id)toManyRelationshipKeys
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (self->_propertyRanges)
  {
    v3 = [-[NSEntityDescription _propertySearchMapping](self "_propertySearchMapping")];
    propertyRanges = self->_propertyRanges;
    location = propertyRanges[9].location;
    length = propertyRanges[9].length;
    v8 = propertyRanges[13].location;
    v7 = propertyRanges[13].length;
    v9 = v7 + length;
    if (v7 + length <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 + length;
    }

    if (v9 >= 0x201)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v17 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v9 > 0x200)
    {
      v12 = NSAllocateScannedUncollectable();
      if (!length)
      {
LABEL_16:
        if (v7)
        {
          memcpy(&v12[8 * length], (v3 + 8 * v8), 8 * v7);
        }

        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:v7 + length];
        if (v9 >= 0x201)
        {
          NSZoneFree(0, v12);
        }

        v16 = *MEMORY[0x1E69E9840];
        return v15;
      }
    }

    else
    {
      bzero(v17 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v10);
      if (!length)
      {
        goto LABEL_16;
      }
    }

    memcpy(v12, (v3 + 8 * location), 8 * length);
    goto LABEL_16;
  }

  v13 = *MEMORY[0x1E69E9840];

  return [(NSEntityDescription *)self _relationshipNamesByType:?];
}

- (id)toOneRelationshipKeys
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (self->_propertyRanges)
  {
    v3 = [-[NSEntityDescription _propertySearchMapping](self "_propertySearchMapping")];
    propertyRanges = self->_propertyRanges;
    location = propertyRanges[6].location;
    length = propertyRanges[6].length;
    v8 = propertyRanges[10].location;
    v7 = propertyRanges[10].length;
    v9 = v7 + length;
    if (v7 + length <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 + length;
    }

    if (v9 >= 0x201)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v17 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v9 > 0x200)
    {
      v12 = NSAllocateScannedUncollectable();
      if (!length)
      {
LABEL_16:
        if (v7)
        {
          memcpy(&v12[8 * length], (v3 + 8 * v8), 8 * v7);
        }

        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:v7 + length];
        if (v9 >= 0x201)
        {
          NSZoneFree(0, v12);
        }

        v16 = *MEMORY[0x1E69E9840];
        return v15;
      }
    }

    else
    {
      bzero(v17 - ((8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v10);
      if (!length)
      {
        goto LABEL_16;
      }
    }

    memcpy(v12, (v3 + 8 * location), 8 * length);
    goto LABEL_16;
  }

  v13 = *MEMORY[0x1E69E9840];

  return [(NSEntityDescription *)self _relationshipNamesByType:?];
}

- (id)inverseForRelationshipKey:(id)key
{
  if (self->_propertyRanges)
  {
    _propertySearchMapping = [(NSEntityDescription *)self _propertySearchMapping];
    values = [(NSDictionary *)[(NSEntityDescription *)self propertiesByName] values];
    v7 = [_propertySearchMapping indexForKey:key];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      inverseRelationship = 0;
    }

    else
    {
      inverseRelationship = [*(values + 8 * v7) inverseRelationship];
    }

    return [inverseRelationship name];
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3052000000;
    v16 = __Block_byref_object_copy__11;
    v17 = __Block_byref_object_dispose__11;
    v18 = 0;
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__NSEntityDescription__NSInternalMethods__inverseForRelationshipKey___block_invoke;
    v12[3] = &unk_1E6EC1F70;
    v12[4] = key;
    v12[5] = &v13;
    [(NSEntityDescription *)self _propertyKeys:v9 matchingBlock:v12];

    v10 = v14[5];
    _Block_object_dispose(&v13, 8);
    return v10;
  }
}

uint64_t __69__NSEntityDescription__NSInternalMethods__inverseForRelationshipKey___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  if ([a2 _isRelationship] && objc_msgSend(objc_msgSend(a2, "name"), "isEqualToString:", *(a1 + 32)))
  {
    *(*(*(a1 + 40) + 8) + 40) = [objc_msgSend(a2 "inverseRelationship")];
    *a3 = 1;
  }

  return 0;
}

uint64_t __59__NSEntityDescription__NSInternalMethods___attributeNamed___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 _isAttribute];
  if (result)
  {
    result = [objc_msgSend(a2 "name")];
    if (result)
    {
      *(*(*(a1 + 40) + 8) + 40) = a2;
      *a3 = 0;
      return 1;
    }
  }

  return result;
}

- (id)_localRelationshipNamed:(id)named
{
  v3 = [(NSMutableDictionary *)self->_properties objectForKey:named];
  if ([v3 _propertyType] == 4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)_setIsEditable:(BOOL)editable
{
  editableCopy = editable;
  objc_sync_enter(self);
  v5 = objc_autoreleasePoolPush();
  v6 = atomic_load(&self->_isImmutable);
  if (editableCopy)
  {
    if (v6)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Cannot make an immutable entity editable again." userInfo:0]);
    }
  }

  else if (!v6)
  {
    model = self->_model;
    if (model)
    {
      [(NSManagedObjectModel *)model _setIsEditable:0];
    }

    else
    {
      self->_modelsReferenceIDForEntity = 0;
      [(NSEntityDescription *)self _flattenProperties];
      [(NSEntityDescription *)self _createCachesAndOptimizeState];
      [(NSEntityDescription *)self versionHash];
      __dmb(0xBu);
    }
  }

  objc_autoreleasePoolPop(v5);

  objc_sync_exit(self);
}

- (uint64_t)_hasPotentialHashSkew
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = [*(result + 88) count];
    if (result)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v2 = *(v1 + 96);
      result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (result)
      {
        v3 = result;
        v4 = *v11;
        while (2)
        {
          v5 = 0;
          do
          {
            if (*v11 != v4)
            {
              objc_enumerationMutation(v2);
            }

            v6 = [*(v1 + 96) objectForKey:*(*(&v10 + 1) + 8 * v5)];
            if ([v6 _propertyType] == 4)
            {
              inverseRelationship = [v6 inverseRelationship];
              if (inverseRelationship && v6 == inverseRelationship)
              {
                result = 1;
                goto LABEL_17;
              }
            }

            ++v5;
          }

          while (v3 != v5);
          result = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
          v3 = result;
          if (result)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_17:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_subentitiesIncludes:(id)includes
{
  v19 = *MEMORY[0x1E69E9840];
  if (includes == self)
  {
LABEL_14:
    LOBYTE(v5) = 1;
    goto LABEL_18;
  }

  v5 = [(NSMutableDictionary *)self->_subentities count];
  if (v5)
  {
    if ([(NSEntityDescription *)self _isEditable])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      subentities = self->_subentities;
      v5 = [(NSMutableDictionary *)subentities countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        v7 = v5;
        v8 = *v15;
LABEL_6:
        v9 = 0;
        while (1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(subentities);
          }

          v10 = [(NSMutableDictionary *)self->_subentities objectForKey:*(*(&v14 + 1) + 8 * v9)];
          if (v10 == includes || ([v10 _subentitiesIncludes:includes] & 1) != 0)
          {
            goto LABEL_14;
          }

          if (v7 == ++v9)
          {
            v7 = [(NSMutableDictionary *)subentities countByEnumeratingWithState:&v14 objects:v18 count:16];
            LOBYTE(v5) = 0;
            if (v7)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }
    }

    else
    {
      flattenedSubentities = self->_flattenedSubentities;
      if (!flattenedSubentities)
      {
        flattenedSubentities = [(NSEntityDescription *)self _collectSubentities];
        self->_flattenedSubentities = flattenedSubentities;
      }

      LOBYTE(v5) = CFSetContainsValue(flattenedSubentities, includes) != 0;
    }
  }

LABEL_18:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)_offsetRelationshipIndex:(unint64_t)index fromSuperEntity:(id)entity andIsToMany:(BOOL)many
{
  v5 = *(entity + 14);
  v6 = v5[8];
  v8 = index >= v6;
  v7 = index - v6;
  v8 = !v8 || v7 >= v5[9];
  if (v8)
  {
    v9 = v5[4];
    v8 = index >= v9;
    v10 = index - v9;
    if (!v8 || v10 >= v5[5])
    {
      return index;
    }

    v12 = v5[24];
    v13 = v5[25];
    v14 = index - v12;
    v15 = !many;
    v16 = 10;
    v17 = 13;
  }

  else
  {
    v12 = v5[16];
    v13 = v5[17];
    v14 = index - v12;
    v15 = !many;
    v16 = 6;
    v17 = 9;
  }

  if (!v15)
  {
    v16 = v17;
  }

  v18 = v14 < v13 && index >= v12;
  v19 = 8;
  if (!v18)
  {
    v19 = v16;
  }

  return self->_propertyRanges[v19].location + index - v5[2 * v19];
}

- (void)_checkAttributeMembership:(void *)membership hashes:(void *)hashes
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  _qualifiedName = [membership _qualifiedName];
  if ([hashes objectForKey:_qualifiedName])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D940];
    v19[0] = @"attributeName";
    v19[1] = @"compositeName";
    v20[0] = [membership name];
    v20[1] = [objc_msgSend(membership "superCompositeAttribute")];
    objc_exception_throw([v12 exceptionWithName:v13 reason:@"An attribute cannot be part of multiple composite attributes." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v20, v19, 2)}]);
  }

  [hashes setObject:membership forKey:_qualifiedName];
  if ([membership attributeType] == 2100)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    elements = [membership elements];
    v7 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(elements);
          }

          [NSEntityDescription _checkAttributeMembership:hashes hashes:?];
        }

        while (v8 != v10);
        v8 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  objc_autoreleasePoolPop(v4);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_newSnowLeopardStyleDictionaryContainingPropertiesOfType:(unint64_t)type
{
  v5 = [-[NSEntityDescription _propertySearchMapping](self "_propertySearchMapping")];
  values = [(NSDictionary *)[(NSEntityDescription *)self propertiesByName] values];
  v7 = &self->_propertyRanges[type];
  length = v7->length;
  v9 = (v5 + 8 * v7->location);
  v10 = (values + 8 * v7->location);

  return _PF_SnowLeopard_CFDictionaryCreateWithObjectsAndKeys(v10, v9, length);
}

- (void)_stripForMigration
{
  v14 = *MEMORY[0x1E69E9840];
  [(NSEntityDescription *)self setManagedObjectClassName:0];
  *&self->_entityDescriptionFlags |= 0x10u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  properties = [(NSEntityDescription *)self properties];
  v4 = [(NSArray *)properties countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(properties);
        }

        [*(*(&v9 + 1) + 8 * v7++) _stripForMigration];
      }

      while (v5 != v7);
      v5 = [(NSArray *)properties countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_restoreValidation
{
  v13 = *MEMORY[0x1E69E9840];
  *&self->_entityDescriptionFlags &= ~0x10u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  properties = [(NSEntityDescription *)self properties];
  v3 = [(NSArray *)properties countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(properties);
        }

        [*(*(&v8 + 1) + 8 * v6++) _restoreValidation];
      }

      while (v4 != v6);
      v4 = [(NSArray *)properties countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_hasDerivedAttributes
{
  v23 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    attributesByName = [result attributesByName];
    result = [attributesByName countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v18;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v18 != v4)
          {
            objc_enumerationMutation(attributesByName);
          }

          v6 = [objc_msgSend(v1 "attributesByName")];
          if ([v6 _propertyType] == 7)
          {
            _flattenedElements = [v6 _flattenedElements];
            v13 = 0u;
            v14 = 0u;
            v15 = 0u;
            v16 = 0u;
            v8 = [_flattenedElements countByEnumeratingWithState:&v13 objects:v21 count:16];
            if (v8)
            {
              v9 = v8;
              v10 = *v14;
LABEL_10:
              v11 = 0;
              while (1)
              {
                if (*v14 != v10)
                {
                  objc_enumerationMutation(_flattenedElements);
                }

                if ([*(*(&v13 + 1) + 8 * v11) _propertyType] == 6)
                {
                  break;
                }

                if (v9 == ++v11)
                {
                  v9 = [_flattenedElements countByEnumeratingWithState:&v13 objects:v21 count:16];
                  if (v9)
                  {
                    goto LABEL_10;
                  }

                  goto LABEL_18;
                }
              }

LABEL_21:
              result = 1;
              goto LABEL_22;
            }
          }

          else if ([v6 _propertyType] == 6)
          {
            goto LABEL_21;
          }

LABEL_18:
          ;
        }

        v3 = [attributesByName countByEnumeratingWithState:&v17 objects:v22 count:16];
        result = 0;
        if (v3)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_22:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_addIndexForProperty:(uint64_t)property
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (property)
  {
    v4 = *(property + 128);
    if (!v4)
    {
      [(NSEntityDescription *)property _initializeExtraIVars];
      v4 = *(property + 128);
    }

    if (!*(v4 + 40))
    {
      *(v4 + 40) = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v5 = [[NSFetchIndexElementDescription alloc] initWithProperty:a2 collationType:0];
    v6 = [NSFetchIndexDescription alloc];
    name = [a2 name];
    v10[0] = v5;
    v8 = -[NSFetchIndexDescription initWithName:elements:](v6, "initWithName:elements:", name, [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1]);

    [*(v4 + 40) addObject:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_removeIndexForProperty:(uint64_t)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    v3 = *(result + 128);
    if (v3)
    {
      v4 = *(v3 + 40);
      if (v4)
      {
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (result)
        {
          v6 = result;
          v7 = *v12;
          while (2)
          {
            v8 = 0;
            do
            {
              if (*v12 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v11 + 1) + 8 * v8);
              result = [(NSFetchIndexDescription *)v9 _isIndexForProperty:a2];
              if (result)
              {
                if (v9)
                {
                  result = [*(*(v2 + 128) + 40) removeObject:v9];
                }

                goto LABEL_15;
              }

              ++v8;
            }

            while (v6 != v8);
            result = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
            v6 = result;
            if (result)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

LABEL_15:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_isPathologicalForConstraintMerging:(uint64_t)result
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if ((*(result + 121) & 0x20) != 0)
    {
      if (a2)
      {
        _checkForNonCascadeNoInverses = [(NSEntityDescription *)result _checkForNonCascadeNoInverses];
        v5 = MEMORY[0x1E696ABC0];
        v6 = *MEMORY[0x1E696A250];
        if (_checkForNonCascadeNoInverses)
        {
          v7 = _checkForNonCascadeNoInverses;
          v15[0] = @"Reason";
          v16[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Entity '%@' has unique constraints { %@ } with relationship '%@' and mandatory to-one inverse '%@' but is not using a cascade delete rule .", objc_msgSend(v2, "name"), objc_msgSend(v2, "uniquenessConstraints"), objc_msgSend(v7, "name"), objc_msgSend(objc_msgSend(v7, "inverseRelationship"), "name")];
          v16[1] = v7;
          v15[1] = @"relationship";
          v15[2] = @"inverse";
          v16[2] = [v7 inverseRelationship];
          v8 = MEMORY[0x1E695DF20];
          v9 = v16;
          v10 = v15;
          v11 = 3;
        }

        else
        {
          v13 = @"Reason";
          v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Entity '%@' has unique constraints { %@ } with a relationship and mandatory to-one inverse but is not using a cascade delete rule .", objc_msgSend(v2, "name"), objc_msgSend(v2, "uniquenessConstraints")];
          v8 = MEMORY[0x1E695DF20];
          v9 = &v14;
          v10 = &v13;
          v11 = 1;
        }

        *a2 = [v5 errorWithDomain:v6 code:134111 userInfo:{objc_msgSend(v8, "dictionaryWithObjects:forKeys:count:", v9, v10, v11)}];
      }

      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_constraintIsExtension:(uint64_t)result
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(result + 128);
    if (v4)
    {
      v5 = *(v4 + 24);
      if (v5)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v17;
          v15 = v3;
          while (2)
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v17 != v8)
              {
                objc_enumerationMutation(v5);
              }

              v10 = *(*(&v16 + 1) + 8 * i);
              v11 = [v10 count];
              if ([a2 count] > v11)
              {
                v12 = 0;
                if (v11)
                {
                  for (j = 0; j != v11; ++j)
                  {
                    v12 += [objc_msgSend(v10 objectAtIndex:{j), "isEqual:", objc_msgSend(a2, "objectAtIndex:", j)}];
                  }
                }

                if (v12 == v11)
                {
                  result = 1;
                  goto LABEL_19;
                }
              }
            }

            v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
            v3 = v15;
            if (v7)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    result = *(v3 + 80);
    if (result)
    {
      result = [(NSEntityDescription *)result _constraintIsExtension:a2];
    }
  }

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_extensionsOfParentConstraint:(void *)result
{
  v26 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    v3 = result[16];
    if (v3 && *(v3 + 24))
    {
      v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      obj = *(v2[16] + 24);
      v5 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v21;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v21 != v7)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v20 + 1) + 8 * i);
            v10 = [v9 count];
            v11 = [a2 count];
            v12 = v10 > v11;
            v13 = v10 - v11;
            if (v12)
            {
              v14 = v11;
              if (v11)
              {
                v15 = 0;
                v16 = 0;
                do
                {
                  v16 += [objc_msgSend(v9 objectAtIndex:{v15), "isEqual:", objc_msgSend(a2, "objectAtIndex:", v15)}];
                  ++v15;
                }

                while (v14 != v15);
              }

              else
              {
                v16 = 0;
              }

              if (v16 == v14)
              {
                v24[0] = v9;
                v24[1] = [v9 subarrayWithRange:{0, v14}];
                v24[2] = [v9 subarrayWithRange:{v14, v13}];
                [v18 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v24, 3)}];
              }
            }
          }

          v6 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v6);
      }

      result = v18;
    }

    else
    {
      result = 0;
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_hasUniquedProperty:(uint64_t)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    result = [a2 _qualifiedName];
    if (result)
    {
      v3 = *(v2 + 128);
      if (v3)
      {
        v4 = result;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v5 = *(v3 + 24);
        result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (result)
        {
          v6 = result;
          v7 = *v12;
          while (2)
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v12 != v7)
              {
                objc_enumerationMutation(v5);
              }

              v9 = *(*(&v11 + 1) + 8 * i);
              if ([v9 count] == 1 && (objc_msgSend(v9, "containsObject:", v4) & 1) != 0)
              {
                result = 1;
                goto LABEL_16;
              }
            }

            v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
            result = 0;
            if (v6)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        result = 0;
      }
    }
  }

LABEL_16:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_isSchemaEqual:(id)equal
{
  v29 = *MEMORY[0x1E69E9840];
  if (!equal)
  {
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_26;
  }

  name = [(NSEntityDescription *)self name];
  name2 = [equal name];
  if (name != name2)
  {
    v7 = name2;
    LOBYTE(name2) = 0;
    if (!name)
    {
      goto LABEL_27;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    LODWORD(name2) = [(NSString *)name isEqual:?];
    if (!name2)
    {
      goto LABEL_27;
    }
  }

  superentity = [(NSEntityDescription *)self superentity];
  name2 = [equal superentity];
  if (superentity != name2)
  {
    v9 = name2;
    LOBYTE(name2) = 0;
    if (!superentity)
    {
      goto LABEL_27;
    }

    if (!v9)
    {
      goto LABEL_27;
    }

    LODWORD(name2) = [(NSEntityDescription *)superentity _isSchemaEqual:?];
    if (!name2)
    {
      goto LABEL_27;
    }
  }

  propertiesByName = [(NSEntityDescription *)self propertiesByName];
  propertiesByName2 = [equal propertiesByName];
  v12 = [(NSDictionary *)propertiesByName count];
  if (v12 != [propertiesByName2 count])
  {
LABEL_26:
    LOBYTE(name2) = 0;
    goto LABEL_27;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  allKeys = [(NSDictionary *)propertiesByName allKeys];
  v14 = [(NSArray *)allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(allKeys);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [(NSDictionary *)propertiesByName objectForKey:v18];
        v20 = [propertiesByName2 objectForKey:v18];
        if (v19 != v20)
        {
          if (v19)
          {
            v21 = v20 == 0;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            goto LABEL_26;
          }

          LODWORD(name2) = [v19 _isSchemaEqual_];
          if (!name2)
          {
            goto LABEL_27;
          }
        }
      }

      v15 = [(NSArray *)allKeys countByEnumeratingWithState:&v24 objects:v28 count:16];
      LOBYTE(name2) = 1;
    }

    while (v15);
  }

  else
  {
    LOBYTE(name2) = 1;
  }

LABEL_27:
  v22 = *MEMORY[0x1E69E9840];
  return name2;
}

- (void)_writeIntoData:(id)data propertiesDict:(id)dict uniquedPropertyNames:(id)names uniquedStrings:(id)strings uniquedData:(id)uniquedData uniquedMappings:(id)mappings entities:(id)entities
{
  v70 = *MEMORY[0x1E69E9840];
  if (!_writeIntoData_propertiesDict_uniquedPropertyNames_uniquedStrings_uniquedData_uniquedMappings_entities__PropertyProxyClass)
  {
    _writeIntoData_propertiesDict_uniquedPropertyNames_uniquedStrings_uniquedData_uniquedMappings_entities__PropertyProxyClass = objc_opt_class();
  }

  mapping = [entities mapping];
  _writeInt32IntoData(data, 0xDAEDFEEB);
  v61 = [data length];
  _writeInt32IntoData(data, 0);
  _writeInt32IntoData(data, [objc_msgSend(strings objectForKey:{self->_versionHashModifier), "unsignedIntegerValue"}]);
  v17 = atomic_load(&self->_versionHash);
  _writeInt32IntoData(data, [objc_msgSend(uniquedData objectForKey:{v17), "unsignedIntegerValue"}]);
  _writeInt32IntoData(data, [objc_msgSend(names objectForKey:{self->_classNameForEntity), "unsignedIntegerValue"}]);
  _writeInt32IntoData(data, [objc_msgSend(names objectForKey:{self->_name), "unsignedIntegerValue"}]);
  if (self->_superentity)
  {
    LOBYTE(v64) = 1;
    [data appendBytes:&v64 length:1];
    _writeInt32IntoData(data, [mapping indexForKey:{-[NSEntityDescription name](self->_superentity, "name")}]);
  }

  else
  {
    LOBYTE(v64) = 0;
    [data appendBytes:&v64 length:1];
  }

  uniquedDataCopy = uniquedData;
  _writeInt32IntoData(data, [mapping indexForKey:{-[NSEntityDescription name](self->_rootentity, "name")}]);
  subentities = self->_subentities;
  if (subentities && [(NSMutableDictionary *)subentities count])
  {
    LOBYTE(v64) = 1;
    [data appendBytes:&v64 length:1];
    mapping2 = [(NSMutableDictionary *)self->_subentities mapping];
    _writeInt32IntoData(data, [objc_msgSend(mappings objectForKey:{mapping2), "unsignedIntegerValue"}]);
    LODWORD(v21) = [mapping2 length];
    _writeInt32IntoData(data, v21);
    keys = [mapping2 keys];
    v21 = v21;
    if (v21)
    {
      v22 = keys;
      do
      {
        v23 = *v22++;
        _writeInt64IntoData(data, [mapping indexForKey:v23]);
        --v21;
      }

      while (v21);
    }
  }

  else
  {
    LOBYTE(v64) = 0;
    [data appendBytes:&v64 length:1];
  }

  v60 = mapping;
  mappingsCopy = mappings;
  _writeInt32IntoData(data, [objc_msgSend(mappings objectForKey:{self->_propertyMapping), "unsignedIntegerValue"}]);
  v24 = [(NSMutableDictionary *)self->_properties count];
  if (v24)
  {
    v25 = v24;
    keys2 = [self->_propertyMapping keys];
    v27 = v25;
    do
    {
      _writeInt64IntoData(data, 0);
      --v27;
    }

    while (v27);
    do
    {
      v28 = [(NSMutableDictionary *)self->_properties objectForKey:*keys2];
      v29 = _writeIntoData_propertiesDict_uniquedPropertyNames_uniquedStrings_uniquedData_uniquedMappings_entities__PropertyProxyClass;
      if (v29 == object_getClass(v28))
      {
        _writeInt32IntoData(data, 1u);
        _writeNSPropertyProxyIntoData(data, v28, dict);
      }

      else
      {
        _writeInt32IntoData(data, 0);
        _writeInt32IntoData(data, [objc_msgSend(dict objectForKey:{v28), "unsignedIntegerValue"}]);
      }

      ++keys2;
      --v25;
    }

    while (v25);
  }

  for (i = 0; i != 18; ++i)
  {
    _writeInt64IntoData(data, LODWORD(self->_propertyRanges[i].location));
    _writeInt64IntoData(data, LODWORD(self->_propertyRanges[i].length));
  }

  v31 = atomic_load(&self->_isImmutable);
  entityDescriptionFlags = self->_entityDescriptionFlags;
  if (v31)
  {
    entityDescriptionFlags = (*&entityDescriptionFlags | 4);
    self->_entityDescriptionFlags = entityDescriptionFlags;
  }

  _writeInt32IntoData(data, *&entityDescriptionFlags);
  v33 = 8;
  do
  {
    _writeInt64IntoData(data, 0);
    --v33;
  }

  while (v33);
  if ([(NSEntityDescription *)self renamingIdentifier])
  {
    v34 = [objc_msgSend(strings objectForKey:{-[NSEntityDescription renamingIdentifier](self, "renamingIdentifier")), "unsignedIntegerValue"}];
  }

  else
  {
    v34 = 0;
  }

  _writeInt64IntoData(data, v34);
  if ([(NSEntityDescription *)self coreSpotlightDisplayNameExpression])
  {
    v35 = [objc_msgSend(uniquedDataCopy objectForKey:{-[NSEntityDescription coreSpotlightDisplayNameExpression](self, "coreSpotlightDisplayNameExpression")), "unsignedIntegerValue"}];
  }

  else
  {
    v35 = 0;
  }

  _writeInt64IntoData(data, v35);
  indexes = [(NSEntityDescription *)self indexes];
  v37 = [(NSArray *)indexes count];
  if (indexes && v37)
  {
    _writeInt64IntoData(data, v37);
    if ([(NSArray *)indexes count])
    {
      v38 = 0;
      while (1)
      {
        v39 = [(NSArray *)indexes objectAtIndex:v38];
        _writeInt64IntoData(data, [objc_msgSend(names objectForKey:{objc_msgSend(v39, "name")), "unsignedIntegerValue"}]);
        partialIndexPredicate = [v39 partialIndexPredicate];
        if (partialIndexPredicate)
        {
          v41 = partialIndexPredicate;
          _writeInt64IntoData(data, 1uLL);
          v42 = [objc_msgSend(uniquedDataCopy objectForKey:{v41), "unsignedIntegerValue"}];
        }

        else
        {
          v42 = 0;
        }

        _writeInt64IntoData(data, v42);
        elements = [v39 elements];
        v44 = [elements count];
        v45 = v44;
        if (elements)
        {
          if (v44)
          {
            break;
          }
        }

        _writeInt64IntoData(data, 0);
        if (v45)
        {
          goto LABEL_43;
        }

LABEL_48:
        if (++v38 >= [(NSArray *)indexes count])
        {
          goto LABEL_51;
        }
      }

      _writeInt64IntoData(data, v44);
LABEL_43:
      v46 = 0;
      do
      {
        v47 = [elements objectAtIndex:v46];
        _writeInt64IntoData(data, [objc_msgSend(names objectForKey:{objc_msgSend(v47, "propertyName")), "unsignedIntegerValue"}]);
        _writeInt64IntoData(data, [v47 collationType]);
        _writeInt64IntoData(data, [v47 isAscending]);
        property = [v47 property];
        if ([property _propertyType] == 5)
        {
          _writeInt64IntoData(data, 1uLL);
          v49 = [objc_msgSend(dict objectForKey:{property), "unsignedIntegerValue"}];
        }

        else
        {
          v49 = 0;
        }

        _writeInt64IntoData(data, v49);
        ++v46;
      }

      while (v45 != v46);
      goto LABEL_48;
    }
  }

  else
  {
    _writeInt64IntoData(data, 0);
  }

LABEL_51:
  if (self && ((extraIvars = self->_extraIvars) != 0 && (var3 = extraIvars->var3) != 0 || (var3 = NSArray_EmptyArray) != 0) && [var3 count])
  {
    _writeInt64IntoData(data, [var3 count]);
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v52 = [var3 countByEnumeratingWithState:&v65 objects:v69 count:16];
    v53 = v60;
    if (v52)
    {
      v54 = v52;
      v55 = *v66;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v66 != v55)
          {
            objc_enumerationMutation(var3);
          }

          _writePFEncodedArrayShapeIntoData(data, *(*(&v65 + 1) + 8 * j), names, 0);
        }

        v54 = [var3 countByEnumeratingWithState:&v65 objects:v69 count:16];
      }

      while (v54);
    }
  }

  else
  {
    _writeInt64IntoData(data, 0);
    v53 = v60;
  }

  if (self->_userInfo)
  {
    v57 = [objc_msgSend(uniquedDataCopy "objectForKey:"unsignedIntegerValue"")];
  }

  else
  {
    v57 = 0;
  }

  _writeInt32IntoData(data, v57);
  v58 = [self->_flattenedSubentities count];
  _writeInt32IntoData(data, v58);
  if (v58)
  {
    _writePFEncodedArrayShapeIntoData(data, self->_flattenedSubentities, v53, 0);
  }

  _writeInt32IntoData(data, self->_modelsReferenceIDForEntity);
  _writeInt32IntoData(data, [objc_msgSend(mappingsCopy objectForKey:{-[NSDictionary mapping](-[NSEntityDescription attributesByName](self, "attributesByName"), "mapping")), "unsignedIntegerValue"}]);
  _writeInt32IntoData(data, [objc_msgSend(mappingsCopy objectForKey:{-[NSDictionary mapping](-[NSEntityDescription relationshipsByName](self, "relationshipsByName"), "mapping")), "unsignedIntegerValue"}]);
  _writeInt32IntoData(data, 0xDAEDFEEB);
  v64 = bswap32([data length] - v61);
  [data replaceBytesInRange:v61 withBytes:{4, &v64}];
  v59 = *MEMORY[0x1E69E9840];
}

- (BOOL)performPostDecodeValidationInModel:(id)model error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  properties = self->_properties;
  v7 = [(NSMutableDictionary *)properties countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    v31 = *MEMORY[0x1E695E9F8];
    v30 = *(MEMORY[0x1E695E9F8] + 8);
    v29 = *(MEMORY[0x1E695E9F8] + 24);
    errorCopy = error;
    v28 = *MEMORY[0x1E695E480];
    v26 = *v34;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(properties);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          destinationEntity = [v11 destinationEntity];
          name = [destinationEntity name];
          if (destinationEntity && (!name || [objc_msgSend(model "entitiesByName")] != destinationEntity))
          {
            v21 = errorCopy;
            if (errorCopy)
            {
              v22 = MEMORY[0x1E696ABC0];
              v23 = *MEMORY[0x1E696A250];
              v24 = &unk_1EF434D88;
LABEL_28:
              *v21 = [v22 errorWithDomain:v23 code:4866 userInfo:{v24, v26}];
            }

LABEL_29:
            objc_autoreleasePoolPop(v12);
            result = 0;
            goto LABEL_30;
          }

          callBacks.version = v31;
          *&callBacks.retain = v30;
          callBacks.copyDescription = v29;
          callBacks.equal = 0;
          callBacks.hash = 0;
          v15 = CFSetCreateMutable(v28, 0, &callBacks);
          inverseRelationship = [v11 inverseRelationship];
          if (inverseRelationship)
          {
            inverseRelationship2 = inverseRelationship;
            while (([(__CFSet *)v15 containsObject:inverseRelationship2, v26]& 1) == 0)
            {
              entity = [inverseRelationship2 entity];
              if (!entity || (v19 = entity, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![inverseRelationship2 name] || objc_msgSend(v19[12], "objectForKeyedSubscript:", objc_msgSend(inverseRelationship2, "name")) != inverseRelationship2 || !objc_msgSend(v19, "name") || objc_msgSend(objc_msgSend(model, "entitiesByName"), "objectForKeyedSubscript:", objc_msgSend(v19, "name")) != v19)
              {
                v21 = errorCopy;
                if (!errorCopy)
                {
                  goto LABEL_29;
                }

                v22 = MEMORY[0x1E696ABC0];
                v23 = *MEMORY[0x1E696A250];
                v24 = &unk_1EF434DB0;
                goto LABEL_28;
              }

              [(__CFSet *)v15 addObject:inverseRelationship2];
              inverseRelationship2 = [inverseRelationship2 inverseRelationship];
              if (!inverseRelationship2)
              {
                break;
              }
            }
          }

          v9 = v26;
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [(NSMutableDictionary *)properties countByEnumeratingWithState:&v33 objects:v37 count:16];
      error = errorCopy;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (error)
  {
    *error = 0;
  }

  result = 1;
LABEL_30:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

@end