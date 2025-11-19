@interface NSManagedObjectModel
+ (BOOL)versionHashes:(id)a3 compatibleWithStoreMetadata:(id)a4;
+ (NSDictionary)checksumsForVersionedModelAtURL:(NSURL *)modelURL error:(NSError *)error;
+ (NSManagedObjectModel)mergedModelFromBundles:(NSArray *)bundles;
+ (NSManagedObjectModel)mergedModelFromBundles:(NSArray *)bundles forStoreMetadata:(NSDictionary *)metadata;
+ (NSManagedObjectModel)modelByMergingModels:(NSArray *)models;
+ (NSManagedObjectModel)modelByMergingModels:(NSArray *)models forStoreMetadata:(NSDictionary *)metadata;
+ (id)versionsHashesForModelAtURL:(id)a3 error:(id *)a4;
+ (int64_t)_debugOptimizedModelLayout;
+ (uint64_t)_deepCollectEntitiesInArray:(void *)a3 entity:;
+ (void)_modelPathsFromBundles:(uint64_t)a1;
+ (void)_newModelFromOptimizedEncoding:(uint64_t)a1 error:(const __CFData *)a2;
- (BOOL)isEqual:(id)a3;
- (NSArray)configurations;
- (NSArray)entitiesForConfiguration:(NSString *)configuration;
- (NSDictionary)fetchRequestTemplatesByName;
- (NSDictionary)localizationDictionary;
- (NSFetchRequest)fetchRequestFromTemplateWithName:(NSString *)name substitutionVariables:(NSDictionary *)variables;
- (NSFetchRequest)fetchRequestTemplateForName:(NSString *)name;
- (NSManagedObjectModel)init;
- (NSManagedObjectModel)initWithCoder:(id)a3;
- (NSManagedObjectModel)initWithContentsOfOptimizedURL:(id)a3;
- (NSManagedObjectModel)initWithContentsOfURL:(id)a3 forStoreMetadata:(id)a4;
- (NSString)versionChecksum;
- (id)_entitiesByVersionHash;
- (id)_entityVersionHashesByNameInStyle:(id)result;
- (id)_entityVersionHashesDigest;
- (id)_entityVersionHashesDigestFrom:(id)result;
- (id)_initWithContentsOfURL:(id)a3 options:(unint64_t)a4;
- (id)_initWithEntities:(id)a3;
- (id)_modelForVersionHashes:(id)a3;
- (id)_optimizedEncoding:(id *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)immutableCopy;
- (id)versionHash;
- (uint64_t)_allowedClassesFromTransformableAttributes;
- (uint64_t)_hasEntityWithDerivedAttribute;
- (uint64_t)_hasEntityWithUniquenessConstraints;
- (uint64_t)_isConfiguration:(uint64_t)a3 inStyle:(void *)a4 compatibleWithStoreMetadata:;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)hash;
- (void)_addEntity:(id)a3;
- (void)_createCachesAndOptimizeState;
- (void)_finalizeIndexes;
- (void)_flattenProperties;
- (void)_removeEntity:(uint64_t)a1;
- (void)_restoreValidation;
- (void)_setIsEditable:(BOOL)a3 optimizationStyle:(unint64_t)a4;
- (void)_setLocalizationPolicy:(id)a3;
- (void)_setModelsReferenceIDOffset:(int64_t)a3;
- (void)_sortedEntitiesForConfiguration:(void *)result;
- (void)_stripForMigration;
- (void)_throwIfNotEditable;
- (void)_traverseTombstonesAndMark:(uint64_t)a1;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setEntities:(NSArray *)entities;
- (void)setEntities:(NSArray *)entities forConfiguration:(NSString *)configuration;
- (void)setFetchRequestTemplate:(NSFetchRequest *)fetchRequestTemplate forName:(NSString *)name;
- (void)setLocalizationDictionary:(NSDictionary *)localizationDictionary;
- (void)setVersionIdentifiers:(NSSet *)versionIdentifiers;
@end

@implementation NSManagedObjectModel

- (uint64_t)_hasEntityWithUniquenessConstraints
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = *(result + 64);
    if ((v2 & 4) != 0)
    {
      result = (v2 >> 3) & 1;
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v3 = *(result + 32);
      result = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (result)
      {
        v4 = result;
        v5 = *v9;
        while (2)
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v9 != v5)
            {
              objc_enumerationMutation(v3);
            }

            if (-[NSEntityDescription _hasUniqueProperties]([*(v1 + 32) objectForKey:*(*(&v8 + 1) + 8 * i)]))
            {
              result = 1;
              goto LABEL_14;
            }
          }

          v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
          result = 0;
          if (v4)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_14:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSManagedObjectModel)init
{
  objc_opt_class();
  objc_opt_class();

  return [(NSManagedObjectModel *)self _initWithEntities:0];
}

- (void)dealloc
{
  if (self->_optimizationHints)
  {
    v3 = [(NSMutableDictionary *)self->_entities count]- 1;
    if (v3 >= 0)
    {
      do
      {
      }

      while (v3 != -1);
    }
  }

  self->_optimizationHints = 0;
  fetchRequestTemplates = self->_fetchRequestTemplates;
  if (fetchRequestTemplates)
  {

    self->_fetchRequestTemplates = 0;
  }

  self->_configurations = 0;
  self->_entities = 0;

  self->_versionIdentifiers = 0;
  additionalPrivateIvars = self->_additionalPrivateIvars;
  if (additionalPrivateIvars)
  {

    *self->_additionalPrivateIvars = 0;
    *(self->_additionalPrivateIvars + 1) = 0;

    *(self->_additionalPrivateIvars + 2) = 0;
    *(self->_additionalPrivateIvars + 3) = 0;
    PF_FREE_OBJECT_ARRAY(self->_additionalPrivateIvars);
    self->_additionalPrivateIvars = 0;
  }

  self->_dataForOptimization = 0;
  v6.receiver = self;
  v6.super_class = NSManagedObjectModel;
  [(NSManagedObjectModel *)&v6 dealloc];
}

- (id)versionHash
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v3 = malloc_default_zone();
  }

  memset(&c, 0, sizeof(c));
  v4 = malloc_type_zone_malloc(v3, 0x20uLL, 0xACE9FC24uLL);
  CC_SHA256_Init(&c);
  v5 = [-[NSMutableDictionary allValues](self->_entities "allValues")];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        CC_SHA256_Update(&c, [objc_msgSend(*(*(&v14 + 1) + 8 * v9++) "versionHash")], 0x20u);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  CC_SHA256_Final(v4, &c);
  v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v4 length:32];
  v11 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v11 = malloc_default_zone();
  }

  malloc_zone_free(v11, v4);
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (NSString)versionChecksum
{
  if ([(NSManagedObjectModel *)self isEditable])
  {
    if ([objc_msgSend(objc_msgSend(-[NSArray firstObject](-[NSManagedObjectModel entities](self "entities")])
    {
LABEL_9:
      [(NSManagedObjectModel *)self _setIsEditable:0];
      goto LABEL_10;
    }

    v3 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v4 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v6 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        if (v6)
        {
          v11 = 0;
          v7 = &v11;
LABEL_12:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Attempting to retrieve an NSManagedObjectModel version checksum while the model is still editable. This may result in an unstable version checksum. Add model to NSPersistentStoreCoordinator and try again.\n", v7, 2u);
        }
      }

      else if (v6)
      {
        LOWORD(v10) = 0;
        v7 = &v10;
        goto LABEL_12;
      }
    }

    _NSCoreDataLog_console(1, "Attempting to retrieve an NSManagedObjectModel version checksum while the model is still editable. This may result in an unstable version checksum. Add model to NSPersistentStoreCoordinator and try again.", v10);
    objc_autoreleasePoolPop(v3);
    goto LABEL_9;
  }

LABEL_10:
  v8 = [-[NSManagedObjectModel versionHash](self "versionHash")];
  return [v8 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
}

- (void)_createCachesAndOptimizeState
{
  v87 = *MEMORY[0x1E69E9840];
  managedObjectModelFlags = self->_managedObjectModelFlags;
  if ((*&managedObjectModelFlags & 2) == 0)
  {
    self->_managedObjectModelFlags = (*&managedObjectModelFlags | 2);
    v60 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v4 = [-[NSMutableDictionary allValues](self->_entities "allValues")];
    v5 = [v4 count];
    v59 = &v56;
    v6 = MEMORY[0x1EEE9AC00](v5);
    v9 = &v56 - v8;
    v10 = 8 * v7;
    if (v6 >= 0x201)
    {
      v9 = NSAllocateScannedUncollectable();
      v12 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v56 - v8, 8 * v7);
      MEMORY[0x1EEE9AC00](v11);
      v12 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v12, v10);
    }

    [v4 getObjects:v9 range:{0, v5}];
    if (v5)
    {
      v13 = v9;
      v14 = v12;
      v15 = v5;
      do
      {
        *v14 = [*v13 name];
        v14 += 8;
        ++v13;
        --v15;
      }

      while (v15);
    }

    v16 = [[NSKnownKeysDictionary alloc] initWithObjects:v9 forKeys:v12 count:v5];
    if (v5 >= 0x201)
    {
      NSZoneFree(0, v9);
      NSZoneFree(0, v12);
    }

    self->_entities = &v16->super;
    v17 = [(NSKnownKeysDictionary *)v16 values];
    if (!self->_configurations)
    {
      self->_configurations = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    -[NSMutableDictionary setObject:forKey:](self->_configurations, "setObject:forKey:", [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:v5], @"PF_DEFAULT_CONFIGURATION_NAME");
    if (!*(self->_additionalPrivateIvars + 3))
    {
      *(self->_additionalPrivateIvars + 3) = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [self->_additionalPrivateIvars[3] setObject:objc_msgSend(MEMORY[0x1E695DFD8] forKeyedSubscript:{"setWithArray:", -[NSKnownKeysDictionary allKeys](v16, "allKeys")), @"PF_DEFAULT_CONFIGURATION_NAME"}];
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    v19 = [(NSKnownKeysDictionary *)v16 count];
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = *(v17 + 8 * i);
        [v21 _flattenProperties];
        if (v21)
        {
          *(v21 + 160) = i;
        }

        CFSetAddValue(Mutable, v21);
        if (v21)
        {
          v22 = *(v21 + 128);
          if (!v22 || (v23 = *(v22 + 24)) == 0)
          {
            v23 = NSArray_EmptyArray;
          }
        }

        else
        {
          v23 = 0;
        }

        if ([v23 count])
        {
          *&self->_managedObjectModelFlags |= 8u;
          if (v21)
          {
            *(v21 + 120) |= 0x800u;
          }
        }
      }
    }

    v61 = v16;
    v24 = [MEMORY[0x1E695DF70] array];
    v25 = 0;
LABEL_29:
    if (CFSetGetCount(Mutable) >= 1)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v26 = [(__CFSet *)Mutable countByEnumeratingWithState:&v70 objects:v86 count:16];
      if (!v26)
      {
        goto LABEL_55;
      }

      v27 = *v71;
      while (1)
      {
        v28 = 0;
        do
        {
          if (*v71 != v27)
          {
            objc_enumerationMutation(Mutable);
          }

          v29 = *(*(&v70 + 1) + 8 * v28);
          if (v29)
          {
            v30 = -1;
            v31 = *(*(&v70 + 1) + 8 * v28);
            do
            {
              v31 = *(v31 + 80);
              ++v30;
            }

            while (v31);
          }

          else
          {
            v30 = 0;
          }

          if (v25 > 0x3E7 || v30 == v25)
          {
            [v24 addObject:v29];
            v32 = [v29 superentity];
            if (v32 && (*(v32 + 121) & 8) != 0)
            {
              if (!v29)
              {
LABEL_50:
                [v29 _createCachesAndOptimizeState];
                goto LABEL_51;
              }

              *(v29 + 120) |= 0x800u;
            }

            else if (!v29 || (*(v29 + 121) & 8) == 0)
            {
              goto LABEL_50;
            }

            v33 = v29;
            do
            {
              v34 = *(v33 + 120);
              if ((v34 & 0x1000) != 0)
              {
                break;
              }

              *(v33 + 120) = v34 | 0x1000;
              v33 = *(v33 + 80);
            }

            while (v33);
            goto LABEL_50;
          }

LABEL_51:
          ++v28;
        }

        while (v28 != v26);
        v35 = [(__CFSet *)Mutable countByEnumeratingWithState:&v70 objects:v86 count:16];
        v26 = v35;
        if (!v35)
        {
LABEL_55:
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v36 = [v24 countByEnumeratingWithState:&v66 objects:v85 count:16];
          if (v36)
          {
            v37 = *v67;
            do
            {
              for (j = 0; j != v36; ++j)
              {
                if (*v67 != v37)
                {
                  objc_enumerationMutation(v24);
                }

                CFSetRemoveValue(Mutable, *(*(&v66 + 1) + 8 * j));
              }

              v36 = [v24 countByEnumeratingWithState:&v66 objects:v85 count:16];
            }

            while (v36);
          }

          ++v25;
          goto LABEL_29;
        }
      }
    }

    CFRelease(Mutable);
    [v24 removeAllObjects];
    v61 = [(NSKnownKeysDictionary *)v61 count];
    if (v61)
    {
      v40 = 0;
      *&v39 = 138413314;
      v58 = v39;
      do
      {
        v41 = *(v17 + 8 * v40);
        if (![(NSEntityDescription *)v41 _hasUniqueProperties])
        {
          goto LABEL_77;
        }

        v42 = [(NSEntityDescription *)v41 _checkSelfForNonCascadeNoInverses];
        if (!v42)
        {
          goto LABEL_77;
        }

        if (v41)
        {
          v43 = v41;
          do
          {
            v44 = v43[30];
            if ((v44 & 0x2000) != 0)
            {
              break;
            }

            v43[30] = v44 | 0x2000;
            v43 = *(v43 + 10);
          }

          while (v43);
        }

        v45 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_79;
            }
          }

          else
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
LABEL_79:
              v57 = [v41 uniquenessConstraints];
              v56 = [v41 name];
              v47 = [v42 name];
              v48 = [objc_msgSend(v42 "inverseRelationship")];
              v49 = [v42 name];
              v75 = v58;
              v76 = v57;
              v77 = 2112;
              v78 = v56;
              v79 = 2112;
              v80 = v47;
              v81 = 2112;
              v82 = v48;
              v83 = 2112;
              v84 = v49;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Cannot use uniqueness constraints { %@ } on entity '%@' due to relationship '%@' having a mandatory to-one inverse relationship '%@' and not using a cascade delete rule on '%@'\n", &v75, 0x34u);
            }
          }
        }

        _NSCoreDataLog_console(1, "Cannot use uniqueness constraints { %@ } on entity '%@' due to relationship '%@' having a mandatory to-one inverse relationship '%@' and not using a cascade delete rule on '%@'", [v41 uniquenessConstraints], objc_msgSend(v41, "name"), objc_msgSend(v42, "name"), objc_msgSend(objc_msgSend(v42, "inverseRelationship"), "name"), objc_msgSend(v42, "name"));
        objc_autoreleasePoolPop(v45);
LABEL_77:
        v40 = (v40 + 1);
      }

      while (v40 != v61);
    }

    if (BYTE6(z9dsptsiQ80etb9782fsrs98bfdle88) == 1)
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      fetchRequestTemplates = self->_fetchRequestTemplates;
      v51 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v62 objects:v74 count:16];
      if (v51)
      {
        v52 = *v63;
        do
        {
          for (k = 0; k != v51; ++k)
          {
            if (*v63 != v52)
            {
              objc_enumerationMutation(fetchRequestTemplates);
            }

            v54 = [(NSMutableDictionary *)self->_fetchRequestTemplates objectForKey:*(*(&v62 + 1) + 8 * k)];
            [v54 allowEvaluation];
            [v54 _incrementInUseCounter];
          }

          v51 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v62 objects:v74 count:16];
        }

        while (v51);
      }
    }

    [(NSManagedObjectModel *)self _finalizeIndexes];
    if (v61 >= 6 && +[_PFTask getNumActiveProcessors]>= 2)
    {
    }

    [v60 drain];
  }

  v55 = *MEMORY[0x1E69E9840];
}

- (void)_finalizeIndexes
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    result = [result countByEnumeratingWithState:&v6 objects:v10 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v7;
      do
      {
        v4 = 0;
        do
        {
          if (*v7 != v3)
          {
            objc_enumerationMutation(v1);
          }

          [(NSEntityDescription *)*(*(&v6 + 1) + 8 * v4) _finalizeIndexes];
          v4 = v4 + 1;
        }

        while (v2 != v4);
        result = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
        v2 = result;
      }

      while (result);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_throwIfNotEditable
{
  if (![(NSManagedObjectModel *)self isEditable])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't modify an immutable model." userInfo:0]);
  }
}

- (uint64_t)_allowedClassesFromTransformableAttributes
{
  v28 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = *(*(result + 24) + 16);
    if (!result)
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      obj = *(v1 + 32);
      v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v16)
      {
        v14 = *v23;
        v15 = v1;
        do
        {
          v3 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v17 = v3;
            v4 = [*(v1 + 32) objectForKey:*(*(&v22 + 1) + 8 * v3)];
            v18 = 0u;
            v19 = 0u;
            v20 = 0u;
            v21 = 0u;
            v5 = [v4 attributesByName];
            v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v6)
            {
              v7 = v6;
              v8 = *v19;
              do
              {
                for (i = 0; i != v7; ++i)
                {
                  if (*v19 != v8)
                  {
                    objc_enumerationMutation(v5);
                  }

                  v10 = [objc_msgSend(v4 "attributesByName")];
                  if ([v10 valueTransformerName])
                  {
                    [MEMORY[0x1E696B0A0] valueTransformerForName:{objc_msgSend(v10, "valueTransformerName")}];
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      [v2 addObjectsFromArray:{objc_msgSend(objc_opt_class(), "allowedTopLevelClasses")}];
                    }
                  }
                }

                v7 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
              }

              while (v7);
            }

            v3 = v17 + 1;
            v1 = v15;
          }

          while (v17 + 1 != v16);
          v16 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v16);
      }

      v11 = 0;
      atomic_compare_exchange_strong((*(v1 + 24) + 16), &v11, v2);
      if (v11)
      {
      }

      result = *(*(v1 + 24) + 16);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSManagedObjectModel)mergedModelFromBundles:(NSArray *)bundles
{
  v40 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  objc_opt_class();
  v29 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = 0x1E6EC0000uLL;
  v6 = [NSManagedObjectModel _modelPathsFromBundles:?];
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v9 = *v34;
  v10 = 0x1E695D000uLL;
  do
  {
    v11 = 0;
    v31 = v8;
    do
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v33 + 1) + 8 * v11);
      v13 = objc_autoreleasePoolPush();
      v14 = [*(v10 + 4088) fileURLWithPath:v12];
      v15 = [objc_alloc(*(v5 + 2712)) initWithContentsOfURL:v14];
      if (v15)
      {
        [v4 addObject:v15];
        goto LABEL_14;
      }

      context = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v16 = v10;
        v17 = v9;
        v18 = v6;
        v19 = v4;
        v20 = v5;
        v21 = _pflogging_catastrophic_mode;
        log = _PFLogGetLogStream(1);
        v22 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
        if (v21)
        {
          v5 = v20;
          v4 = v19;
          v6 = v18;
          v9 = v17;
          v10 = v16;
          v8 = v31;
          if (v22)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v5 = v20;
          v4 = v19;
          v6 = v18;
          v9 = v17;
          v10 = v16;
          v8 = v31;
          if (v22)
          {
LABEL_16:
            *buf = 138412290;
            v38 = v14;
            _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: +mergedModelFromBundles: Failed to load model at URL '%@'\n", buf, 0xCu);
          }
        }
      }

      _NSCoreDataLog_console(1, "+mergedModelFromBundles: Failed to load model at URL '%@'", v14);
      objc_autoreleasePoolPop(context);
LABEL_14:

      objc_autoreleasePoolPop(v13);
      ++v11;
    }

    while (v8 != v11);
    v23 = [v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    v8 = v23;
  }

  while (v23);
LABEL_18:
  if ([v4 count] == 1)
  {
    v24 = [v4 objectAtIndex:0];
  }

  else
  {
    v24 = [a1 modelByMergingModels:v4];
  }

  v25 = v24;
  objc_autoreleasePoolPop(v29);
  result = v25;
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)_modelPathsFromBundles:(uint64_t)a1
{
  v22 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (a2)
  {
    if ([a2 count] >= 2)
    {
      v3 = BYTE1(z9dsptsiQ80etb9782fsrs98bfdle88);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  if (v4)
  {
    a2 = [MEMORY[0x1E695DEC8] arrayWithObject:v4];
LABEL_6:
    v3 = 0;
    goto LABEL_8;
  }

  v3 = 0;
  a2 = 0;
LABEL_8:
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if ((v3 & 1) == 0 || (v13 = [objc_msgSend(v11 "bundlePath")], objc_msgSend(v13, "count") < 5) || !objc_msgSend(objc_msgSend(v13, "objectAtIndex:", 1), "isEqual:", @"System") || (objc_msgSend(objc_msgSend(v13, "objectAtIndex:", 2), "isEqual:", @"Library") & 1) == 0)
        {
          [v6 addObjectsFromArray:{objc_msgSend(v11, "pathsForResourcesOfType:inDirectory:", @"mom", 0)}];
          [v6 addObjectsFromArray:{objc_msgSend(v11, "pathsForResourcesOfType:inDirectory:", @"momd", 0)}];
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (NSManagedObjectModel)modelByMergingModels:(NSArray *)models
{
  v135 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  objc_opt_class();
  if (!models)
  {
    result = 0;
LABEL_114:
    v84 = *MEMORY[0x1E69E9840];
    return result;
  }

  v4 = [(NSArray *)models count];
  if (v4 == 1)
  {
    v6 = [-[NSArray objectAtIndex:](models objectAtIndex:{0), "copy"}];
    goto LABEL_7;
  }

  v5 = v4;
  if (v4)
  {
    v88 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v9 = 0;
    v95 = v5 - 2;
    v92 = v5;
    v93 = models;
    do
    {
      context = objc_autoreleasePoolPush();
      v10 = [(NSArray *)models objectAtIndex:v9];
      if (v9 + 1 >= v5)
      {
        goto LABEL_33;
      }

      v11 = v10;
      v12 = v9 + 1;
      do
      {
        v13 = [(NSArray *)models objectAtIndex:v12];
        v14 = [v13 entitiesByName];
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        v123 = 0u;
        v15 = [v14 allValues];
        v16 = [v15 countByEnumeratingWithState:&v120 objects:v133 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v121;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v121 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v120 + 1) + 8 * i);
              v21 = [v20 name];
              if (v11)
              {
                v22 = v21;
                v23 = [v11[4] objectForKey:v21];
                if (v23)
                {
                  if (([v23 isEqual:v20] & 1) == 0)
                  {
                    [v88 drain];
                    v85 = MEMORY[0x1E695DF30];
                    v86 = *MEMORY[0x1E695D940];
                    v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't merge models with two different entities named '%@'", v22];
                    goto LABEL_117;
                  }
                }
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v120 objects:v133 count:16];
          }

          while (v17);
        }

        v24 = [v13 fetchRequestTemplatesByName];
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        v119 = 0u;
        v25 = [v24 countByEnumeratingWithState:&v116 objects:v132 count:16];
        if (!v25)
        {
          goto LABEL_32;
        }

        v26 = v25;
        v27 = *v117;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v117 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v116 + 1) + 8 * j);
            v30 = [v13 fetchRequestTemplateForName:v29];
            v31 = [v11 fetchRequestTemplateForName:v29];
            if (v31 && ([v31 isEqual:v30] & 1) == 0)
            {
              [v88 drain];
              v85 = MEMORY[0x1E695DF30];
              v86 = *MEMORY[0x1E695D940];
              v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't merge models with two different fetch request templates for name'%@'", v29];
LABEL_117:
              objc_exception_throw([v85 exceptionWithName:v86 reason:v87 userInfo:0]);
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v116 objects:v132 count:16];
        }

        while (v26);
LABEL_32:
        ++v12;
        v5 = v92;
        models = v93;
      }

      while (v12 != v92);
LABEL_33:
      objc_autoreleasePoolPop(context);
    }

    while (v9++ != v95);
    v33 = [-[NSArray objectAtIndex:](models objectAtIndex:{0), "copy"}];
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = objc_alloc_init(NSMergedPolicyLocalizationPolicy);
    if ([v33 _localizationPolicy])
    {
      -[NSMergedPolicyLocalizationPolicy addPolicy:](v35, "addPolicy:", [v33 _localizationPolicy]);
    }

    v89 = v35;
    [v33 _setLocalizationPolicy:v35];
    if (v5 >= 2)
    {
      v36 = 1;
      v37 = 0x1E6EC0000uLL;
      do
      {
        v90 = objc_autoreleasePoolPush();
        v91 = v36;
        v38 = [(NSArray *)models objectAtIndex:v36];
        [v34 removeAllObjects];
        v39 = [v38 entitiesByName];
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v40 = [v39 countByEnumeratingWithState:&v112 objects:v131 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v113;
          do
          {
            for (k = 0; k != v41; ++k)
            {
              if (*v113 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = [v39 objectForKey:*(*(&v112 + 1) + 8 * k)];
              if (![v44 superentity])
              {
                v45 = [v44 copy];
                [(NSManagedObjectModel *)*(v37 + 2712) _deepCollectEntitiesInArray:v34 entity:v45];
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v112 objects:v131 count:16];
          }

          while (v41);
        }

        v46 = [v34 count];
        if (v46)
        {
          v47 = v46;
          for (m = 0; m != v47; ++m)
          {
            v49 = [v34 objectAtIndex:m];
            v50 = [v49 name];
            if (!v33 || ![v33[4] objectForKey:v50])
            {
              [v33 _addEntity:v49];
            }
          }
        }

        if ([v38 _localizationPolicy])
        {
          -[NSMergedPolicyLocalizationPolicy addPolicy:](v89, "addPolicy:", [v38 _localizationPolicy]);
        }

        contexta = v38;
        if ([v38[5] count])
        {
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          obj = v38[5];
          v99 = [obj countByEnumeratingWithState:&v108 objects:v130 count:16];
          if (v99)
          {
            v96 = *v109;
            do
            {
              for (n = 0; n != v99; ++n)
              {
                if (*v109 != v96)
                {
                  objc_enumerationMutation(obj);
                }

                v52 = *(*(&v108 + 1) + 8 * n);
                [v34 removeAllObjects];
                v53 = [contexta entitiesForConfiguration:v52];
                v104 = 0u;
                v105 = 0u;
                v106 = 0u;
                v107 = 0u;
                v54 = [v53 countByEnumeratingWithState:&v104 objects:v129 count:16];
                if (v54)
                {
                  v55 = v54;
                  v56 = *v105;
                  do
                  {
                    v57 = 0;
                    do
                    {
                      if (*v105 != v56)
                      {
                        objc_enumerationMutation(v53);
                      }

                      v58 = [*(*(&v104 + 1) + 8 * v57) name];
                      if (v33)
                      {
                        v59 = [v33[4] objectForKey:v58];
                      }

                      else
                      {
                        v59 = 0;
                      }

                      [v34 addObject:v59];
                      ++v57;
                    }

                    while (v55 != v57);
                    v60 = [v53 countByEnumeratingWithState:&v104 objects:v129 count:16];
                    v55 = v60;
                  }

                  while (v60);
                }

                if (v33)
                {
                  if ((v33[8] & 3) != 0)
                  {
                    LogStream = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: _addEntities called on immutable NSManagedObjectModel\n", buf, 2u);
                    }

                    v62 = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_18565F000, v62, OS_LOG_TYPE_FAULT, "CoreData: _addEntities called on immutable NSManagedObjectModel", buf, 2u);
                    }
                  }

                  v63 = v33[5];
                  if (!v63)
                  {
                    v63 = objc_alloc_init(MEMORY[0x1E695DF90]);
                    v33[5] = v63;
                  }

                  v64 = [v63 objectForKey:v52];
                  if (v64)
                  {
                    v65 = v64;
                    v126 = 0u;
                    v127 = 0u;
                    v124 = 0u;
                    v125 = 0u;
                    v66 = [v34 countByEnumeratingWithState:&v124 objects:buf count:16];
                    if (v66)
                    {
                      v67 = v66;
                      v68 = *v125;
                      do
                      {
                        for (ii = 0; ii != v67; ++ii)
                        {
                          if (*v125 != v68)
                          {
                            objc_enumerationMutation(v34);
                          }

                          v70 = *(*(&v124 + 1) + 8 * ii);
                          if ([v65 indexOfObjectIdenticalTo:v70] == 0x7FFFFFFFFFFFFFFFLL)
                          {
                            [v65 addObject:v70];
                          }
                        }

                        v67 = [v34 countByEnumeratingWithState:&v124 objects:buf count:16];
                      }

                      while (v67);
                    }
                  }

                  else
                  {
                    v71 = [v34 mutableCopy];
                    [v33[5] setObject:v71 forKey:v52];
                  }

                  if (!*(v33[3] + 3))
                  {
                    *(v33[3] + 3) = objc_alloc_init(MEMORY[0x1E695DF90]);
                  }

                  [*(v33[3] + 3) setObject:objc_msgSend(MEMORY[0x1E695DFD8] forKeyedSubscript:{"setWithArray:", objc_msgSend(v33[5], "objectForKeyedSubscript:", v52)), v52}];
                }
              }

              v99 = [obj countByEnumeratingWithState:&v108 objects:v130 count:16];
            }

            while (v99);
          }
        }

        v72 = [contexta fetchRequestTemplatesByName];
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v73 = [v72 countByEnumeratingWithState:&v100 objects:v128 count:16];
        if (v73)
        {
          v74 = v73;
          v75 = *v101;
          do
          {
            for (jj = 0; jj != v74; ++jj)
            {
              if (*v101 != v75)
              {
                objc_enumerationMutation(v72);
              }

              v77 = *(*(&v100 + 1) + 8 * jj);
              if (![v33 fetchRequestTemplateForName:v77])
              {
                v78 = [objc_msgSend(v72 objectForKey:{v77), "copy"}];
                [v33 setFetchRequestTemplate:v78 forName:v77];
              }
            }

            v74 = [v72 countByEnumeratingWithState:&v100 objects:v128 count:16];
          }

          while (v74);
        }

        v79 = [contexta versionIdentifiers];
        models = v93;
        v37 = 0x1E6EC0000;
        if (v79 && v33)
        {
          v80 = v79;
          v81 = [v33 versionIdentifiers];
          if (v81)
          {
            v82 = [v81 mutableCopy];
            [v82 unionSet:v80];
            [v33 setVersionIdentifiers:{objc_msgSend(v82, "copy")}];
          }

          else
          {
            [v33 setVersionIdentifiers:v80];
          }
        }

        objc_autoreleasePoolPop(v90);
        v36 = v91 + 1;
      }

      while (v91 + 1 != v92);
    }

    v83 = v33;
    [v88 drain];
    result = v33;
    goto LABEL_114;
  }

  v6 = objc_alloc_init(NSManagedObjectModel);
LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (uint64_t)_deepCollectEntitiesInArray:(void *)a3 entity:
{
  objc_opt_self();
  [a2 addObject:a3];
  v5 = [a3 subentities];
  result = [v5 count];
  if (result)
  {
    v7 = result;
    for (i = 0; i != v7; ++i)
    {
      result = +[NSManagedObjectModel _deepCollectEntitiesInArray:entity:](NSManagedObjectModel, a2, [v5 objectAtIndex:i]);
    }
  }

  return result;
}

+ (NSManagedObjectModel)mergedModelFromBundles:(NSArray *)bundles forStoreMetadata:(NSDictionary *)metadata
{
  v18 = a1;
  v19 = metadata;
  v27 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [NSManagedObjectModel _modelPathsFromBundles:?];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v21 = 0;
        if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] && v21 == 1)
        {
          v13 = [[NSManagedObjectModelBundle alloc] initWithPath:v11];
        }

        else
        {
          v13 = -[NSManagedObjectModel initWithContentsOfURL:]([NSManagedObjectModel alloc], "initWithContentsOfURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:v11 isDirectory:{0, v18, v19}]);
        }

        v14 = v13;
        if (v14)
        {
          [v5 addObject:v14];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v15 = [v18 modelByMergingModels:v5 forStoreMetadata:{v19, v18, v19}];
  objc_autoreleasePoolPop(context);
  result = v15;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSManagedObjectModel)modelByMergingModels:(NSArray *)models forStoreMetadata:(NSDictionary *)metadata
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = [-[NSDictionary objectForKey:](metadata objectForKey:{@"NSStoreModelVersionHashes", "mutableCopy"}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [(NSArray *)models countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(models);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 _modelForVersionHashes:v7];
        if (v15)
        {
          v16 = v15;
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v10 addObject:v16];
          [v7 removeObjectsForKeys:{objc_msgSend(objc_msgSend(v16, "entitiesByName"), "allKeys")}];
          if (![v7 count])
          {
            objc_autoreleasePoolPop(v14);
            goto LABEL_15;
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v9 = [(NSArray *)models countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_15:
  v17 = v10;
  v18 = [v10 count];
  v19 = [v7 count];
  v20 = 0;
  if (v18 && !v19)
  {
    if (v18 == 1)
    {
      v21 = [v10 objectAtIndex:0];
    }

    else
    {
      v21 = [NSManagedObjectModel modelByMergingModels:v10];
    }

    v20 = v21;
  }

  [v6 drain];
  result = v20;
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if (self->_entities)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:self->_entities];
    entities = self->_entities;
  }

  else
  {
    entities = 0;
    v6 = 0;
  }

  [a3 encodeObject:entities forKey:@"NSEntities"];

  v8 = [(NSMutableDictionary *)self->_configurations count];
  if (v8 != ([(NSMutableDictionary *)self->_configurations objectForKey:@"PF_DEFAULT_CONFIGURATION_NAME"]!= 0))
  {
    v16 = v5;
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    configurations = self->_configurations;
    v11 = [(NSMutableDictionary *)configurations countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(configurations);
          }

          [v9 setObject:objc_msgSend(MEMORY[0x1E695DFD8] forKey:{"setWithArray:", -[NSMutableDictionary objectForKey:](self->_configurations, "objectForKey:", *(*(&v17 + 1) + 8 * i))), *(*(&v17 + 1) + 8 * i)}];
        }

        v12 = [(NSMutableDictionary *)configurations countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [v9 removeObjectForKey:@"PF_DEFAULT_CONFIGURATION_NAME"];
    [a3 encodeObject:v9 forKey:@"NSConfigurations"];
    v5 = v16;
  }

  [a3 encodeObject:self->_fetchRequestTemplates forKey:@"NSFetchRequestTemplates"];
  [a3 encodeObject:self->_versionIdentifiers forKey:@"NSVersionIdentifiers"];
  objc_autoreleasePoolPop(v5);
  v15 = *MEMORY[0x1E69E9840];
}

- (NSManagedObjectModel)initWithCoder:(id)a3
{
  v96 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  objc_opt_class();
  v91.receiver = self;
  v91.super_class = NSManagedObjectModel;
  v4 = [(NSManagedObjectModel *)&v91 init];
  if (v4)
  {
    +[PFModelDecoderContext assertNoContext];
    v5 = +[PFModelDecoderContext retainedContext];
    v7 = v5;
    if (v5)
    {
      objc_setProperty_nonatomic(v5, v6, v4, 8);
    }

    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v88 = __38__NSManagedObjectModel_initWithCoder___block_invoke;
    v89 = &unk_1E6EC16F0;
    v90 = v7;
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = v4;
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [a3 decodeObjectOfClasses:objc_msgSend(objc_msgSend(v8 forKey:{"setWithObjects:", v9, v11, v12, v13, objc_opt_class(), 0), "setByAddingObjectsFromArray:", +[NSKnownKeysDictionary classesForArchiving](NSKnownKeysDictionary, "classesForArchiving")), @"NSEntities"}];
    v4->_entities = v14;
    if (v14)
    {
      if (([(NSMutableDictionary *)v14 isNSDictionary]& 1) == 0)
      {
        [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF4350D0)}];

        goto LABEL_68;
      }

      v15 = [MEMORY[0x1E695DFA8] set];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v16 = [(NSMutableDictionary *)v4->_entities allKeys];
      v17 = [v16 countByEnumeratingWithState:&v83 objects:v95 count:16];
      if (v17)
      {
        v18 = *v84;
        v19 = *MEMORY[0x1E696A250];
LABEL_8:
        v20 = 0;
        while (1)
        {
          if (*v84 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v83 + 1) + 8 * v20);
          v22 = objc_autoreleasePoolPush();
          v23 = [(NSMutableDictionary *)v10->_entities objectForKeyedSubscript:v21];
          if ([v21 isNSString] && (objc_opt_class(), v24 = v23, (objc_opt_isKindOfClass() & 1) != 0))
          {
            while (1)
            {
              v24 = [v24 superentity];
              if (!v24 || ([v15 containsObject:v24] & 1) != 0)
              {
                break;
              }

              v25 = [v24 name];
              if (!v25 || [(NSMutableDictionary *)v10->_entities objectForKeyedSubscript:v25]!= v24)
              {
                [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", v19, 4866, &unk_1EF435120)}];

                goto LABEL_19;
              }

              [v15 addObject:v24];
            }

            v82 = 0;
            v26 = [v23 performPostDecodeValidationInModel:v10 error:&v82];
            if (v26)
            {
              goto LABEL_21;
            }

            [a3 failWithError:v82];
          }

          else
          {
            [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", v19, 4866, &unk_1EF4350F8)}];

LABEL_19:
            v26 = 0;
          }

          v10 = 0;
LABEL_21:
          objc_autoreleasePoolPop(v22);
          if (!v26)
          {
            goto LABEL_68;
          }

          if (++v20 == v17)
          {
            v27 = [v16 countByEnumeratingWithState:&v83 objects:v95 count:16];
            v17 = v27;
            if (v27)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      entities = v10->_entities;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10->_entities = [(NSMutableDictionary *)v10->_entities mutableCopy];
      }
    }

    v29 = PF_CALLOC_OBJECT_ARRAY(4);
    v10->_additionalPrivateIvars = v29;
    *v29 = 0;
    *(v10->_additionalPrivateIvars + 1) = 0;
    *(v10->_additionalPrivateIvars + 2) = 0;
    *(v10->_additionalPrivateIvars + 3) = 0;
    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = [a3 decodeObjectOfClasses:objc_msgSend(v30 forKey:{"setWithObjects:", v31, v32, v33, v34, v35, objc_opt_class(), 0), @"NSConfigurations"}];
    if (v36)
    {
      v10->_configurations = objc_alloc_init(MEMORY[0x1E695DF90]);
      v69 = v10;
      *(v10->_additionalPrivateIvars + 3) = objc_alloc_init(MEMORY[0x1E695DF90]);
      context = objc_autoreleasePoolPush();
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v37 = [v36 countByEnumeratingWithState:&v78 objects:v94 count:16];
      if (v37)
      {
        v38 = *v79;
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v79 != v38)
            {
              objc_enumerationMutation(v36);
            }

            v40 = *(*(&v78 + 1) + 8 * i);
            v41 = [objc_msgSend(objc_msgSend(v36 objectForKey:{v40), "allObjects"), "mutableCopy"}];
            [(NSMutableDictionary *)v10->_configurations setObject:v41 forKey:v40];
            v42 = [MEMORY[0x1E695DFA8] set];
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v43 = [v41 countByEnumeratingWithState:&v74 objects:v93 count:16];
            if (v43)
            {
              v44 = *v75;
              do
              {
                for (j = 0; j != v43; ++j)
                {
                  if (*v75 != v44)
                  {
                    objc_enumerationMutation(v41);
                  }

                  [v42 addObject:{objc_msgSend(*(*(&v74 + 1) + 8 * j), "name")}];
                }

                v43 = [v41 countByEnumeratingWithState:&v74 objects:v93 count:16];
              }

              while (v43);
            }

            v10 = v69;
            [v69->_additionalPrivateIvars[3] setObject:v42 forKey:v40];
          }

          v37 = [v36 countByEnumeratingWithState:&v78 objects:v94 count:16];
        }

        while (v37);
      }

      objc_autoreleasePoolPop(context);
    }

    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v49 = objc_opt_class();
    v50 = [a3 decodeObjectOfClasses:objc_msgSend(v46 forKey:{"setWithObjects:", v47, v48, v49, objc_opt_class(), 0), @"NSFetchRequestTemplates"}];
    v10->_fetchRequestTemplates = v50;
    if (!v50)
    {
LABEL_60:
      v59 = MEMORY[0x1E695DFD8];
      v60 = objc_opt_class();
      v61 = objc_opt_class();
      v62 = objc_opt_class();
      v63 = objc_opt_class();
      v64 = [a3 decodeObjectOfClasses:objc_msgSend(v59 forKey:{"setWithObjects:", v60, v61, v62, v63, objc_opt_class(), 0), @"NSVersionIdentifiers"}];
      v10->_versionIdentifiers = v64;
      if (!v64)
      {
        v10->_versionIdentifiers = objc_alloc_init(MEMORY[0x1E695DFD8]);
      }

      *&v10->_managedObjectModelFlags &= 0xFFFFFFFC;
      [(NSManagedObjectModel *)v10 _finalizeIndexes];
      goto LABEL_69;
    }

    if (([(NSMutableDictionary *)v50 isNSDictionary]& 1) != 0)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v51 = [(NSMutableDictionary *)v10->_fetchRequestTemplates allKeys];
      v52 = [v51 countByEnumeratingWithState:&v70 objects:v92 count:16];
      if (v52)
      {
        v53 = *v71;
        while (2)
        {
          for (k = 0; k != v52; ++k)
          {
            if (*v71 != v53)
            {
              objc_enumerationMutation(v51);
            }

            v55 = *(*(&v70 + 1) + 8 * k);
            v56 = [(NSMutableDictionary *)v10->_fetchRequestTemplates objectForKeyedSubscript:v55];
            if (![v55 isNSString] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF435170)}];

              goto LABEL_68;
            }

            v57 = [v56 entity];
            v58 = v57;
            if (v57 && (![v57 name] || -[NSMutableDictionary objectForKeyedSubscript:](v10->_entities, "objectForKeyedSubscript:", objc_msgSend(v58, "name")) != v58))
            {
              [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF435198)}];

              goto LABEL_68;
            }
          }

          v52 = [v51 countByEnumeratingWithState:&v70 objects:v92 count:16];
          if (v52)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_60;
    }

    [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, &unk_1EF435148)}];

LABEL_68:
    v10 = 0;
LABEL_69:
    v88(v87);
    result = v10;
    goto LABEL_70;
  }

  result = 0;
LABEL_70:
  v66 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    [v4 _setModelsReferenceIDOffset:{-[NSManagedObjectModel _modelsReferenceIDOffset](self, "_modelsReferenceIDOffset")}];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    entities = self->_entities;
    v7 = [(NSMutableDictionary *)entities countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v44;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v44 != v9)
          {
            objc_enumerationMutation(entities);
          }

          v11 = [(NSMutableDictionary *)self->_entities objectForKey:*(*(&v43 + 1) + 8 * i)];
          if (![v11 superentity])
          {
            v12 = [v11 copy];
            [NSManagedObjectModel _deepCollectEntitiesInArray:v5 entity:v12];
          }
        }

        v8 = [(NSMutableDictionary *)entities countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v8);
    }

    [v4 setEntities:v5];

    v13 = *self->_additionalPrivateIvars;
    if (v13)
    {
      v14 = [v13 copy];
      [v4 _setLocalizationPolicy:v14];
    }

    obj = self->_configurations;
    if (obj)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v15 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v39 objects:v48 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v40;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v40 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v39 + 1) + 8 * j);
            v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v21 = [(NSManagedObjectModel *)self entitiesForConfiguration:v19];
            v22 = [(NSArray *)v21 count];
            if (v22)
            {
              v23 = v22;
              for (k = 0; k != v23; ++k)
              {
                [v20 addObject:{objc_msgSend(v4[4], "objectForKey:", objc_msgSend(-[NSArray objectAtIndex:](v21, "objectAtIndex:", k), "name"))}];
              }
            }

            [v4 setEntities:v20 forConfiguration:v19];
          }

          v16 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v39 objects:v48 count:16];
        }

        while (v16);
      }
    }

    fetchRequestTemplates = self->_fetchRequestTemplates;
    if (fetchRequestTemplates)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v26 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v35 objects:v47 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v36;
        do
        {
          for (m = 0; m != v27; ++m)
          {
            if (*v36 != v28)
            {
              objc_enumerationMutation(fetchRequestTemplates);
            }

            v30 = *(*(&v35 + 1) + 8 * m);
            v31 = [-[NSMutableDictionary objectForKey:](self->_fetchRequestTemplates objectForKey:{v30), "copy"}];
            [v4 setFetchRequestTemplate:v31 forName:v30];
          }

          v27 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v35 objects:v47 count:16];
        }

        while (v27);
      }
    }

    [v4 setVersionIdentifiers:self->_versionIdentifiers];
  }

  v32 = *MEMORY[0x1E69E9840];
  return v4;
}

- (unint64_t)hash
{
  v2 = objc_opt_class();

  return [v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_15;
  }

  if (!a3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  v5 = [(NSManagedObjectModel *)self entitiesByName];
  v6 = [a3 entitiesByName];
  if (v5 == v6 || (v7 = v6, LOBYTE(v6) = 0, v5) && v7 && (LODWORD(v6) = [(NSDictionary *)v5 isEqual:?], v6))
  {
    v8 = [(NSManagedObjectModel *)self fetchRequestTemplatesByName];
    v6 = [a3 fetchRequestTemplatesByName];
    if (v8 != v6)
    {
      v9 = v6;
      LOBYTE(v6) = 0;
      if (v8 && v9)
      {

        LOBYTE(v6) = [(NSDictionary *)v8 isEqual:?];
      }

      return v6;
    }

LABEL_15:
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v6.receiver = self;
  v6.super_class = NSManagedObjectModel;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) isEditable %u, entities %@, fetch request templates %@", -[NSManagedObjectModel description](&v6, sel_description), -[NSManagedObjectModel isEditable](self, "isEditable"), -[NSManagedObjectModel entitiesByName](self, "entitiesByName"), -[NSManagedObjectModel fetchRequestTemplatesByName](self, "fetchRequestTemplatesByName")];
  objc_autoreleasePoolPop(v3);
  return v4;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  if (!a3->var1)
  {
    entities = self->_entities;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = [(NSManagedObjectModel *)self entities];
      a3->var3[3] = 0;
      a3->var3[4] = v10;
    }
  }

  v11 = a3->var3[4];
  if (v11)
  {
    if (!a3->var3[3])
    {
      v11 = [(NSManagedObjectModel *)self entities];
    }

    return [(NSArray *)v11 countByEnumeratingWithState:a3 objects:a4 count:a5];
  }

  else
  {
    v13 = self->_entities;

    return [(NSMutableDictionary *)v13 _valueCountByEnumeratingWithState:a3 objects:a4 count:a5];
  }
}

- (void)setEntities:(NSArray *)entities
{
  [(NSManagedObjectModel *)self _throwIfNotEditable];
  if (([_PFRoutines _doNameAndTypeCheck:?]& 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't add an entity to a managed object model (missing name or bad properties)." userInfo:0]);
  }

  v5 = [(NSMutableDictionary *)self->_entities allValues];
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [v5 objectAtIndex:i];
      if ([(NSArray *)entities indexOfObjectIdenticalTo:v9]== 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSManagedObjectModel *)self _removeEntity:v9];
      }
    }
  }

  v10 = [(NSArray *)entities count];
  if (v10)
  {
    v11 = v10;
    for (j = 0; j != v11; ++j)
    {
      v13 = [(NSArray *)entities objectAtIndex:j];
      if ([v5 indexOfObjectIdenticalTo:v13] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSManagedObjectModel *)self _addEntity:v13];
      }
    }
  }
}

- (void)_removeEntity:(uint64_t)a1
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ([a2 managedObjectModel] != a1)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't remove entity - doesn't belong to this model." userInfo:0]);
    }

    v4 = [a2 name];
    [a1 _throwIfNotEditable];
    if (v4)
    {
      v25 = [*(a1 + 32) objectForKey:v4];
      if (v25)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v23 = v4;
        obj = *(a1 + 40);
        v5 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v27;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v27 != v7)
              {
                objc_enumerationMutation(obj);
              }

              v9 = *(*(&v26 + 1) + 8 * i);
              v10 = [MEMORY[0x1E695DEC8] arrayWithObject:v25];
              v11 = *(a1 + 40);
              if (v11)
              {
                v12 = [v11 objectForKey:v9];
                if (v12)
                {
                  v13 = v12;
                  if ((*(a1 + 64) & 3) != 0)
                  {
                    LogStream = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: _removeEntities called on immutable NSManagedObjectModel\n", buf, 2u);
                    }

                    v15 = _PFLogGetLogStream(17);
                    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 0;
                      _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: _removeEntities called on immutable NSManagedObjectModel", buf, 2u);
                    }
                  }

                  v32 = 0u;
                  v33 = 0u;
                  v30 = 0u;
                  v31 = 0u;
                  v16 = [v10 countByEnumeratingWithState:&v30 objects:buf count:16];
                  if (v16)
                  {
                    v17 = v16;
                    v18 = *v31;
                    do
                    {
                      for (j = 0; j != v17; ++j)
                      {
                        if (*v31 != v18)
                        {
                          objc_enumerationMutation(v10);
                        }

                        v20 = [v13 indexOfObjectIdenticalTo:*(*(&v30 + 1) + 8 * j)];
                        if (v20 != 0x7FFFFFFFFFFFFFFFLL)
                        {
                          [v13 removeObjectAtIndex:v20];
                        }
                      }

                      v17 = [v10 countByEnumeratingWithState:&v30 objects:buf count:16];
                    }

                    while (v17);
                  }
                }
              }
            }

            v6 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v6);
        }

        v21 = v25;
        [*(a1 + 32) removeObjectForKey:v23];
        [(NSEntityDescription *)v25 _setManagedObjectModel:?];
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (NSArray)configurations
{
  configurations = self->_configurations;
  if (configurations)
  {
    return [(NSMutableDictionary *)configurations allKeys];
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (NSArray)entitiesForConfiguration:(NSString *)configuration
{
  if ((*&self->_managedObjectModelFlags & 2) != 0)
  {
    configurations = self->_configurations;
    return [(NSMutableDictionary *)configurations objectForKey:?];
  }

  if (configuration)
  {
    configurations = self->_configurations;
    return [(NSMutableDictionary *)configurations objectForKey:?];
  }

  return [(NSManagedObjectModel *)self entities];
}

- (void)setEntities:(NSArray *)entities forConfiguration:(NSString *)configuration
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*&self->_managedObjectModelFlags & 3) != 0)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: setEntities called on immutable NSManagedObjectModel\n", buf, 2u);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: setEntities called on immutable NSManagedObjectModel", buf, 2u);
    }
  }

  v9 = [(NSArray *)entities count];
  if (v9)
  {
    v10 = v9;
    for (i = 0; i != v10; ++i)
    {
      v12 = [(NSArray *)entities objectAtIndex:i];
      if (([v12 isEqual:{-[NSMutableDictionary objectForKey:](self->_entities, "objectForKey:", objc_msgSend(v12, "name"))}] & 1) == 0)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Entities for a configuration must already be in the model." userInfo:0]);
      }
    }
  }

  if (!self->_configurations)
  {
    self->_configurations = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v13 = [(NSArray *)entities mutableCopy];
  [(NSMutableDictionary *)self->_configurations setObject:v13 forKey:configuration];
  if (!*(self->_additionalPrivateIvars + 3))
  {
    *(self->_additionalPrivateIvars + 3) = objc_opt_new();
  }

  v14 = [MEMORY[0x1E695DFA8] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [(NSArray *)entities countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(entities);
        }

        [v14 addObject:{objc_msgSend(*(*(&v20 + 1) + 8 * v18++), "name")}];
      }

      while (v16 != v18);
      v16 = [(NSArray *)entities countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v16);
  }

  [self->_additionalPrivateIvars[3] setObject:v14 forKeyedSubscript:configuration];

  v19 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)fetchRequestTemplatesByName
{
  if (self->_fetchRequestTemplates)
  {
    return &self->_fetchRequestTemplates->super;
  }

  else
  {
    return NSDictionary_EmptyDictionary;
  }
}

- (NSFetchRequest)fetchRequestTemplateForName:(NSString *)name
{
  result = self->_fetchRequestTemplates;
  if (result)
  {
    return [(NSFetchRequest *)result objectForKey:name];
  }

  return result;
}

- (void)setFetchRequestTemplate:(NSFetchRequest *)fetchRequestTemplate forName:(NSString *)name
{
  fetchRequestTemplates = self->_fetchRequestTemplates;
  if (!fetchRequestTemplates)
  {
    fetchRequestTemplates = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_fetchRequestTemplates = fetchRequestTemplates;
  }

  v8 = [(NSMutableDictionary *)fetchRequestTemplates objectForKey:name];
  if (v8 != fetchRequestTemplate)
  {
    if (fetchRequestTemplate)
    {
      v9 = [(NSFetchRequest *)fetchRequestTemplate entity];
      v10 = [(NSMutableDictionary *)self->_entities objectForKey:[(NSEntityDescription *)v9 name]];
      if (v10)
      {
        v11 = v10;
        if (v10 == v9)
        {
          v13 = self->_fetchRequestTemplates;

          [(NSMutableDictionary *)v13 setObject:fetchRequestTemplate forKey:name];
        }

        else
        {
          v14 = [(NSFetchRequest *)fetchRequestTemplate copy];
          [v14 setEntity:v11];
          [(NSMutableDictionary *)self->_fetchRequestTemplates setObject:v14 forKey:name];
        }
      }

      else if (z9dsptsiQ80etb9782fsrs98bfdle88 == 1)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Cannot set fetch request template.  This model does not contain entity '%@'.", -[NSEntityDescription name](v9, "name")), 0}]);
      }
    }

    else if (v8)
    {
      v12 = self->_fetchRequestTemplates;

      [(NSMutableDictionary *)v12 removeObjectForKey:name];
    }
  }
}

- (NSFetchRequest)fetchRequestFromTemplateWithName:(NSString *)name substitutionVariables:(NSDictionary *)variables
{
  v5 = [(NSManagedObjectModel *)self fetchRequestTemplateForName:name];
  if (!v5)
  {
    return 0;
  }

  v6 = [(NSFetchRequest *)v5 copy];
  [(NSFetchRequest *)v6 setPredicate:[(NSPredicate *)[(NSFetchRequest *)v6 predicate] predicateWithSubstitutionVariables:variables]];
  return v6;
}

- (NSDictionary)localizationDictionary
{
  result = [(NSManagedObjectModel *)self _localizationPolicy];
  if (result)
  {
    v3 = result;
    [(NSDictionary *)result _ensureFullLocalizationDictionaryIsLoaded];

    return [(NSDictionary *)v3 localizationDictionary];
  }

  return result;
}

- (void)setLocalizationDictionary:(NSDictionary *)localizationDictionary
{
  v5 = [(NSManagedObjectModel *)self _localizationPolicy];
  if (!v5)
  {
    v5 = [[NSValidationErrorLocalizationPolicy alloc] initWithURL:0];
    [(NSManagedObjectModel *)self _setLocalizationPolicy:v5];
  }

  [(NSValidationErrorLocalizationPolicy *)v5 setLocalizationDictionary:localizationDictionary];
}

- (void)setVersionIdentifiers:(NSSet *)versionIdentifiers
{
  if (self->_versionIdentifiers != versionIdentifiers)
  {
    if (versionIdentifiers)
    {
      v4 = [(NSSet *)versionIdentifiers copy];
    }

    else
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    v5 = v4;

    self->_versionIdentifiers = v5;
  }
}

- (id)_entityVersionHashesByNameInStyle:(id)result
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = [result entitiesByName];
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = objc_autoreleasePoolPush();
          [v4 setValue:-[NSEntityDescription _versionHashInStyle:](objc_msgSend(v3 forKey:{"objectForKey:", v9), a2), v9}];
          objc_autoreleasePoolPop(v10);
          ++v8;
        }

        while (v6 != v8);
        v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    result = v4;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_isConfiguration:(uint64_t)a3 inStyle:(void *)a4 compatibleWithStoreMetadata:
{
  v32 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_16;
  }

  v6 = result;
  v7 = [a4 objectForKey:0x1EF3FD3E8];
  v8 = [v7 intValue];
  if ([v7 intValue] > 3)
  {
    goto LABEL_15;
  }

  result = [a4 objectForKey:@"NSStoreModelVersionHashes"];
  if (!result)
  {
    goto LABEL_16;
  }

  v9 = result;
  v10 = [objc_msgSend(v6 "entitiesByName")];
  if (v10 != [v9 count])
  {
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  v11 = [(NSManagedObjectModel *)v6 _entityVersionHashesByNameInStyle:a3];
  v12 = v11;
  if (v8 < 3)
  {
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v13 = [v11 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
LABEL_8:
      v16 = 0;
      while (1)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        result = [v9 objectForKey:*(*(&v22 + 1) + 8 * v16)];
        if (!result)
        {
          goto LABEL_16;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
          result = 1;
          if (v14)
          {
            goto LABEL_8;
          }

          goto LABEL_16;
        }
      }
    }

LABEL_26:
    result = 1;
    goto LABEL_16;
  }

  v28 = 0uLL;
  v29 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v18 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v18)
  {
    goto LABEL_26;
  }

  v19 = v18;
  v20 = *v27;
LABEL_19:
  v21 = 0;
  while (1)
  {
    if (*v27 != v20)
    {
      objc_enumerationMutation(v12);
    }

    result = [objc_msgSend(v12 objectForKey:{*(*(&v26 + 1) + 8 * v21)), "isEqual:", objc_msgSend(v9, "objectForKey:", *(*(&v26 + 1) + 8 * v21))}];
    if (!result)
    {
      break;
    }

    if (v19 == ++v21)
    {
      v19 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
      result = 1;
      if (v19)
      {
        goto LABEL_19;
      }

      break;
    }
  }

LABEL_16:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSDictionary)checksumsForVersionedModelAtURL:(NSURL *)modelURL error:(NSError *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF20] dictionary];
  v7 = [[NSManagedObjectModelBundle alloc] initWithPath:[(NSURL *)modelURL path]];
  if (v7)
  {
    v8 = v7;
    v6 = [(NSManagedObjectModelBundle *)v7 versionChecksums];
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF20] dictionary];
    }

    v9 = v6;

    goto LABEL_5;
  }

  v12 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A250];
  v21 = *MEMORY[0x1E696A578];
  v22[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load model at URL '%@'", modelURL];
  v14 = [v12 errorWithDomain:v13 code:258 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v22, &v21, 1)}];
  v15 = v6;
  if (!v14)
  {
    goto LABEL_5;
  }

  v16 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v17 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v19 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (!v19)
      {
        goto LABEL_12;
      }
    }

    else if (!v19)
    {
      goto LABEL_12;
    }

    *buf = 138412546;
    *&buf[4] = modelURL;
    *&buf[12] = 2112;
    *&buf[14] = v14;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: +checksumsForVersionedModelAtURL:error: Failed to load model at URL '%@' due to error %@\n", buf, 0x16u);
  }

LABEL_12:
  _NSCoreDataLog_console(1, "+checksumsForVersionedModelAtURL:error: Failed to load model at URL '%@' due to error %@", modelURL, v14, *buf, *&buf[16]);
  objc_autoreleasePoolPop(v16);
  if (error)
  {
    *error = v14;
  }

LABEL_5:
  result = v6;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

+ (id)versionsHashesForModelAtURL:(id)a3 error:(id *)a4
{
  v28[2] = *MEMORY[0x1E69E9840];
  v26 = 0;
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = [a3 path];
  if (![objc_msgSend(v7 "pathExtension")] || (v8 = objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:isDirectory:", objc_msgSend(v7, "stringByAppendingPathComponent:", @"VersionInfo.plist"), 0), (v9 = objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithContentsOfURL:error:", v8, &v26)) == 0) || (v10 = objc_msgSend(objc_msgSend(v9, "objectForKey:", @"NSManagedObjectModel_VersionHashes"), "objectForKey:", objc_msgSend(v9, "objectForKey:", @"NSManagedObjectModel_CurrentVersionName")), v11 = v10, !v10))
  {
    v12 = [[NSManagedObjectModel alloc] initWithContentsOfURL:a3];
    v13 = v12;
    if (v12)
    {
      v10 = [(NSManagedObjectModel *)v12 entityVersionHashesByName];
      v14 = v10;
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = v26;
  v16 = v10;
  [v6 drain];
  v17 = 0;
  v18 = v26;
  v19 = v10;
  v20 = v26;
  if (!(v10 | v26))
  {
    v21 = MEMORY[0x1E696ABC0];
    v28[0] = @"Unable to model NSManagedObjectModel";
    v22 = *MEMORY[0x1E696A368];
    v27[0] = @"reason";
    v27[1] = v22;
    v28[1] = [a3 path];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v20 = [v21 errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v23];
    v26 = v20;
  }

  if (a4 && v20)
  {
    *a4 = v20;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)versionHashes:(id)a3 compatibleWithStoreMetadata:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(a4 objectForKey:{0x1EF3FD3E8), "intValue"}] > 3)
  {
    goto LABEL_13;
  }

  v6 = [a4 objectForKey:@"NSStoreModelVersionHashes"];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [a3 count];
  if (v8 != [v7 count])
  {
LABEL_13:
    LOBYTE(v6) = 0;
    goto LABEL_14;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_6:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(a3);
      }

      LODWORD(v6) = [objc_msgSend(a3 objectForKey:{*(*(&v15 + 1) + 8 * v12)), "isEqual:", objc_msgSend(v7, "objectForKey:", *(*(&v15 + 1) + 8 * v12))}];
      if (!v6)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        LOBYTE(v6) = 1;
        if (v10)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)_optimizedEncoding:(id *)a3
{
  v3 = MEMORY[0x1EEE9AC00](self);
  v5 = v4;
  v6 = v3;
  v473 = *MEMORY[0x1E69E9840];
  [v3 _setIsEditable:0 optimizationStyle:1];
  if ((v6[64] & 4) == 0)
  {
    v7 = [v6 copy];
    v8 = [v7 _optimizedEncoding:v5];

    v9 = *MEMORY[0x1E69E9840];
    return v8;
  }

  v333 = v5;
  v11 = MEMORY[0x1E695E9D8];
  v354 = *(MEMORY[0x1E695E9D8] + 8);
  v449.version = 0;
  v449.retain = v354;
  v353 = *(MEMORY[0x1E695E9D8] + 16);
  *&v449.release = v353;
  v12 = *(MEMORY[0x1E695E9D8] + 40);
  v449.equal = 0;
  v449.hash = v12;
  v448.version = 0;
  *&v448.retain = *(MEMORY[0x1E695E9E8] + 8);
  v448.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
  v448.equal = 0;
  v13 = *MEMORY[0x1E695E480];
  v345 = v6;
  v14 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(v13, 0, MEMORY[0x1E695E9C0]);
  v352 = CFDictionaryCreateMutable(v13, 0, &v449, &v448);
  v338 = CFArrayCreateMutable(v13, 0, v14);
  CFArrayAppendValue(v338, &stru_1EF3F1768);
  v339 = CFDictionaryCreateMutable(v13, 0, v11, &v448);
  CFDictionarySetValue(v339, &stru_1EF3F1768, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0]);
  v350 = CFArrayCreateMutable(v13, 0, v14);
  CFArrayAppendValue(v350, &stru_1EF3F1768);
  v355 = CFDictionaryCreateMutable(v13, 0, v11, &v448);
  CFDictionarySetValue(v355, &stru_1EF3F1768, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0]);
  v349 = CFArrayCreateMutable(v13, 0, v14);
  CFArrayAppendValue(v349, [MEMORY[0x1E695DEF0] data]);
  v15 = CFDictionaryCreateMutable(v13, 0, v11, &v448);
  v16 = [MEMORY[0x1E695DFB0] null];
  CFDictionarySetValue(v15, v16, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0]);
  v17 = CFArrayCreateMutable(v13, 0, v14);
  v18 = [*(v345 + 4) mapping];
  v335 = v17;
  [(__CFArray *)v17 addObject:v18];
  v19 = CFDictionaryCreateMutable(v13, 0, &v449, &v448);
  v20 = [*(v345 + 4) mapping];
  CFDictionarySetValue(v19, v20, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0]);
  v21 = v14;
  v22 = v345;
  v341 = CFArrayCreateMutable(v13, 0, v21);
  v447.version = 0;
  v447.retain = v354;
  v447.release = v353;
  v447.equal = 0;
  v447.copyDescription = 0;
  v447.hash = v12;
  v23 = CFDictionaryCreateMutable(v13, 0, &v447, &v448);
  v24 = [*(v345 + 6) count];
  v336 = v19;
  v342 = v23;
  if (v24)
  {
    v25 = [[NSKnownKeysDictionary alloc] initWithDictionary:*(v345 + 6)];
    if (![(__CFDictionary *)v19 objectForKey:[(NSKnownKeysDictionary *)v25 mapping]])
    {
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v335, "count")}];
      v22 = v345;
      [(__CFArray *)v335 addObject:[(NSKnownKeysDictionary *)v25 mapping]];
      v27 = [(NSKnownKeysDictionary *)v25 mapping];
      v28 = v26;
      v23 = v342;
      CFDictionarySetValue(v19, v27, v28);
    }

    v331 = v25;
    v446 = 0u;
    v445 = 0u;
    v444 = 0u;
    v443 = 0u;
    v354 = *(v22 + 6);
    v29 = [v354 countByEnumeratingWithState:&v443 objects:v472 count:16];
    v30 = v350;
    if (v29)
    {
      v31 = v29;
      v32 = *v444;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v444 != v32)
          {
            objc_enumerationMutation(v354);
          }

          v34 = *(*(&v443 + 1) + 8 * i);
          if (![(__CFDictionary *)v355 objectForKey:v34])
          {
            v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v350, "count")}];
            [(__CFArray *)v350 addObject:v34];
            [(__CFDictionary *)v355 setObject:v35 forKey:v34];
          }

          v36 = [*(v345 + 6) objectForKey:v34];
          if (!CFDictionaryGetValue(v23, v36))
          {
            v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v341, "count")}];
            v23 = v342;
            [(__CFArray *)v341 addObject:v36];
            CFDictionarySetValue(v342, v36, v37);
          }
        }

        v31 = [v354 countByEnumeratingWithState:&v443 objects:v472 count:16];
      }

      while (v31);
    }

    v22 = v345;
  }

  else
  {
    v331 = 0;
    v30 = v350;
  }

  v330 = objc_opt_class();
  v351 = objc_opt_class();
  v332 = [[NSSQLModel alloc] initWithManagedObjectModel:v22 configurationName:0 retainHashHack:1];
  if (!v332)
  {
    if (v333)
    {
      *v333 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:0];
    }

    goto LABEL_214;
  }

  v442 = 0u;
  v441 = 0u;
  v440 = 0u;
  v439 = 0u;
  v38 = *(v22 + 5);
  v39 = [v38 countByEnumeratingWithState:&v439 objects:v471 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v440;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v440 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v439 + 1) + 8 * j);
        if (![(__CFDictionary *)v355 objectForKey:v43])
        {
          v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v30, "count")}];
          [(__CFArray *)v30 addObject:v43];
          [(__CFDictionary *)v355 setObject:v44 forKey:v43];
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v439 objects:v471 count:16];
    }

    while (v40);
  }

  v438 = 0u;
  v437 = 0u;
  v436 = 0u;
  v435 = 0u;
  v354 = *(v345 + 7);
  v45 = [v354 countByEnumeratingWithState:&v435 objects:v470 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v436;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v436 != v47)
        {
          objc_enumerationMutation(v354);
        }

        v49 = *(*(&v435 + 1) + 8 * k);
        if (![(__CFDictionary *)v15 objectForKey:v49])
        {
          v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
          -[__CFArray addObject:](v349, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v49 requiringSecureCoding:1 error:0]);
          CFDictionarySetValue(v15, v49, v50);
        }
      }

      v46 = [v354 countByEnumeratingWithState:&v435 objects:v470 count:16];
    }

    while (v46);
  }

  v434 = 0u;
  v433 = 0u;
  v432 = 0u;
  v431 = 0u;
  v51 = [*(v345 + 4) allValues];
  v52 = [v51 countByEnumeratingWithState:&v431 objects:v469 count:16];
  *&v353 = v15;
  if (!v52)
  {
    v347 = 0;
    v337 = 0;
    v328 = 0;
    v329 = 0;
    LODWORD(v354) = 0;
    goto LABEL_248;
  }

  v347 = 0;
  v337 = 0;
  v328 = 0;
  v329 = 0;
  LODWORD(v354) = 0;
  v53 = *v432;
  v54 = v352;
  v323 = v51;
  v325 = v53;
LABEL_40:
  v55 = 0;
  v324 = v52;
LABEL_41:
  if (*v432 != v53)
  {
    v56 = v55;
    objc_enumerationMutation(v51);
    v55 = v56;
  }

  v326 = v55;
  v57 = *(*(&v431 + 1) + 8 * v55);
  v327 = [v57 name];
  v334 = v57;
  if (![(__CFDictionary *)v355 objectForKey:?])
  {
    v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v30, "count")}];
    [(__CFArray *)v30 addObject:v327];
    v57 = v334;
    [(__CFDictionary *)v355 setObject:v58 forKey:v327];
  }

  v59 = [v57 versionHashModifier];
  if (v59)
  {
    v60 = v59;
    if (![(__CFDictionary *)v339 objectForKey:v59])
    {
      v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v338, "count")}];
      [(__CFArray *)v338 addObject:v60];
      v62 = v61;
      v57 = v334;
      [(__CFDictionary *)v339 setObject:v62 forKey:v60];
    }
  }

  v63 = [v57 versionHash];
  if (v63)
  {
    v64 = v63;
    if (![(__CFDictionary *)v15 objectForKey:v63])
    {
      v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
      [(__CFArray *)v349 addObject:v64];
      v66 = v65;
      v57 = v334;
      CFDictionarySetValue(v15, v64, v66);
    }
  }

  v67 = [v57 managedObjectClassName];
  if (v67)
  {
    v68 = v67;
    if (![(__CFDictionary *)v355 objectForKey:v67])
    {
      v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v30, "count")}];
      [(__CFArray *)v30 addObject:v68];
      v70 = v69;
      v57 = v334;
      [(__CFDictionary *)v355 setObject:v70 forKey:v68];
    }
  }

  v71 = [v57 renamingIdentifier];
  if (v71)
  {
    v72 = v71;
    if (![(__CFDictionary *)v339 objectForKey:v71])
    {
      v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v338, "count")}];
      [(__CFArray *)v338 addObject:v72];
      v74 = v73;
      v57 = v334;
      [(__CFDictionary *)v339 setObject:v74 forKey:v72];
    }
  }

  v75 = [v57 coreSpotlightDisplayNameExpression];
  if (v75)
  {
    v76 = v75;
    if (![(__CFDictionary *)v15 objectForKey:v75])
    {
      v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
      -[__CFArray addObject:](v349, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v76 requiringSecureCoding:1 error:0]);
      v78 = v77;
      v57 = v334;
      CFDictionarySetValue(v15, v76, v78);
    }
  }

  v429 = 0u;
  v430 = 0u;
  v427 = 0u;
  v428 = 0u;
  v340 = [v57 indexes];
  v344 = [v340 countByEnumeratingWithState:&v427 objects:v468 count:16];
  if (v344)
  {
    v343 = *v428;
    do
    {
      v79 = 0;
      do
      {
        if (*v428 != v343)
        {
          objc_enumerationMutation(v340);
        }

        v346 = v79;
        v80 = *(*(&v427 + 1) + 8 * v79);
        v81 = [v80 name];
        if (v81)
        {
          v82 = v81;
          if (![(__CFDictionary *)v355 objectForKey:v81])
          {
            v83 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v30, "count")}];
            [(__CFArray *)v30 addObject:v82];
            [(__CFDictionary *)v355 setObject:v83 forKey:v82];
          }
        }

        v84 = [v80 partialIndexPredicate];
        if (v84)
        {
          v85 = v84;
          if (![(__CFDictionary *)v15 objectForKey:v84])
          {
            v86 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
            -[__CFArray addObject:](v349, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v85 requiringSecureCoding:1 error:0]);
            CFDictionarySetValue(v15, v85, v86);
          }
        }

        v425 = 0u;
        v426 = 0u;
        v423 = 0u;
        v424 = 0u;
        v87 = [v80 elements];
        v88 = [v87 countByEnumeratingWithState:&v423 objects:v467 count:16];
        if (v88)
        {
          v89 = v88;
          v90 = *v424;
          do
          {
            for (m = 0; m != v89; ++m)
            {
              if (*v424 != v90)
              {
                objc_enumerationMutation(v87);
              }

              v92 = *(*(&v423 + 1) + 8 * m);
              v93 = [v92 propertyName];
              if (v93)
              {
                v94 = v93;
                if (![(__CFDictionary *)v355 objectForKey:v93])
                {
                  v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v350, "count")}];
                  v15 = v353;
                  [(__CFArray *)v350 addObject:v94];
                  v96 = v95;
                  v54 = v352;
                  [(__CFDictionary *)v355 setObject:v96 forKey:v94];
                }
              }

              v97 = [v92 property];
              if ([v97 _propertyType] == 5)
              {
                if (![(__CFDictionary *)v54 objectForKey:v97])
                {
                  v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](Mutable, "count")}];
                  v54 = v352;
                  [(__CFArray *)Mutable addObject:v97];
                  CFDictionarySetValue(v352, v97, v98);
                }

                v99 = [v97 name];
                if (![(__CFDictionary *)v355 objectForKey:v99])
                {
                  v100 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v350, "count")}];
                  v15 = v353;
                  [(__CFArray *)v350 addObject:v99];
                  v101 = v100;
                  v54 = v352;
                  [(__CFDictionary *)v355 setObject:v101 forKey:v99];
                }

                LODWORD(v354) = v354 + 1;
                v102 = [v97 expression];
                if (![(__CFDictionary *)v15 objectForKey:v102])
                {
                  v103 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
                  v15 = v353;
                  -[__CFArray addObject:](v349, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v102 requiringSecureCoding:1 error:0]);
                  [v353 setObject:v103 forKey:v102];
                }
              }
            }

            v347 += v89;
            v89 = [v87 countByEnumeratingWithState:&v423 objects:v467 count:16];
          }

          while (v89);
        }

        v79 = v346 + 1;
        v30 = v350;
      }

      while (v346 + 1 != v344);
      v337 += v344;
      v344 = [v340 countByEnumeratingWithState:&v427 objects:v468 count:16];
    }

    while (v344);
  }

  v104 = v334;
  v105 = [v334 userInfo];
  if ([v105 count] && !-[__CFDictionary objectForKey:](v15, "objectForKey:", v105))
  {
    v106 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
    -[__CFArray addObject:](v349, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v105 requiringSecureCoding:1 error:0]);
    v107 = v106;
    v104 = v334;
    CFDictionarySetValue(v15, v105, v107);
  }

  if (!-[__CFDictionary objectForKey:](v336, "objectForKey:", [v104 _propertySearchMapping]))
  {
    v108 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v335, "count")}];
    v104 = v334;
    -[__CFArray addObject:](v335, "addObject:", [v334 _propertySearchMapping]);
    CFDictionarySetValue(v336, [v334 _propertySearchMapping], v108);
  }

  if ([v104 subentitiesByName])
  {
    if ([objc_msgSend(v104 "subentitiesByName")])
    {
      v109 = [objc_msgSend(v104 "subentitiesByName")];
      if (![(__CFDictionary *)v336 objectForKey:v109])
      {
        v110 = MEMORY[0x1E696AD98];
        v111 = [(__CFArray *)v335 count];
        v112 = v110;
        v104 = v334;
        CFDictionarySetValue(v336, v109, [v112 numberWithUnsignedInteger:v111]);
        [(__CFArray *)v335 addObject:v109];
      }
    }
  }

  v113 = [v104 attributesByName];
  if (!-[__CFDictionary objectForKey:](v336, "objectForKey:", [v113 mapping]))
  {
    v114 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v335, "count")}];
    -[__CFArray addObject:](v335, "addObject:", [v113 mapping]);
    v115 = [v113 mapping];
    v116 = v114;
    v104 = v334;
    CFDictionarySetValue(v336, v115, v116);
  }

  v117 = [v104 relationshipsByName];
  if (!-[__CFDictionary objectForKey:](v336, "objectForKey:", [v117 mapping]))
  {
    v118 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v335, "count")}];
    -[__CFArray addObject:](v335, "addObject:", [v117 mapping]);
    v119 = [v117 mapping];
    v120 = v118;
    v104 = v334;
    CFDictionarySetValue(v336, v119, v120);
  }

  v421 = 0u;
  v422 = 0u;
  v419 = 0u;
  v420 = 0u;
  v121 = [v104 properties];
  v122 = [v121 countByEnumeratingWithState:&v419 objects:v466 count:16];
  if (!v122)
  {
    goto LABEL_197;
  }

  v123 = v122;
  v124 = *v420;
  v343 = v121;
  v340 = v124;
LABEL_105:
  v125 = 0;
  v344 = v123;
  while (1)
  {
    if (*v420 != v124)
    {
      objc_enumerationMutation(v121);
    }

    v126 = *(*(&v419 + 1) + 8 * v125);
    v127 = [v126 name];
    if (object_getClass(v126) != v330)
    {
      break;
    }

LABEL_195:
    v125 = v125 + 1;
    if (v125 == v123)
    {
      v123 = [v121 countByEnumeratingWithState:&v419 objects:v466 count:16];
      v54 = v352;
      if (v123)
      {
        goto LABEL_105;
      }

LABEL_197:
      v182 = [(NSSQLModel *)v332 entityNamed:v327];
      v407 = 0u;
      v408 = 0u;
      v409 = 0u;
      v410 = 0u;
      v183 = [(NSSQLEntity *)v182 properties];
      v184 = [v183 countByEnumeratingWithState:&v407 objects:v463 count:16];
      if (v184)
      {
        v185 = v184;
        v186 = *v408;
        do
        {
          for (n = 0; n != v185; ++n)
          {
            if (*v408 != v186)
            {
              objc_enumerationMutation(v183);
            }

            v188 = [*(*(&v407 + 1) + 8 * n) name];
            if (![(__CFDictionary *)v355 objectForKey:v188])
            {
              v189 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v30, "count")}];
              [(__CFArray *)v30 addObject:v188];
              v190 = v189;
              v54 = v352;
              [(__CFDictionary *)v355 setObject:v190 forKey:v188];
            }
          }

          v185 = [v183 countByEnumeratingWithState:&v407 objects:v463 count:16];
        }

        while (v185);
      }

      v53 = v325;
      v55 = v326 + 1;
      v51 = v323;
      if (v326 + 1 != v324)
      {
        goto LABEL_41;
      }

      v52 = [v323 countByEnumeratingWithState:&v431 objects:v469 count:16];
      v53 = v325;
      if (!v52)
      {
LABEL_248:
        v405 = 0u;
        v406 = 0u;
        v403 = 0u;
        v404 = 0u;
        v343 = [(__CFArray *)v341 countByEnumeratingWithState:&v403 objects:v462 count:16];
        if (v343)
        {
          v340 = *v404;
          do
          {
            v206 = 0;
            do
            {
              if (*v404 != v340)
              {
                objc_enumerationMutation(v341);
              }

              v344 = v206;
              v346 = *(*(&v403 + 1) + 8 * v206);
              v207 = [v346 predicate];
              v208 = v352;
              if (v207)
              {
                v209 = v207;
                if (![(__CFDictionary *)v15 objectForKey:v207])
                {
                  v210 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
                  -[__CFArray addObject:](v349, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v209 requiringSecureCoding:1 error:0]);
                  CFDictionarySetValue(v15, v209, v210);
                }
              }

              v211 = [v346 havingPredicate];
              if (v211)
              {
                v212 = v211;
                if (![(__CFDictionary *)v15 objectForKey:v211])
                {
                  v213 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
                  -[__CFArray addObject:](v349, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v212 requiringSecureCoding:1 error:0]);
                  CFDictionarySetValue(v15, v212, v213);
                }
              }

              v214 = [v346 propertiesToFetch];
              v399 = 0u;
              v400 = 0u;
              v401 = 0u;
              v402 = 0u;
              v215 = [v214 countByEnumeratingWithState:&v399 objects:v461 count:16];
              if (v215)
              {
                v216 = v215;
                v217 = *v400;
                do
                {
                  for (ii = 0; ii != v216; ++ii)
                  {
                    if (*v400 != v217)
                    {
                      objc_enumerationMutation(v214);
                    }

                    v219 = *(*(&v399 + 1) + 8 * ii);
                    if (object_getClass(v219) == v351)
                    {
                      if (![(__CFDictionary *)v208 objectForKey:v219])
                      {
                        v220 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](Mutable, "count")}];
                        v208 = v352;
                        [(__CFArray *)Mutable addObject:v219];
                        CFDictionarySetValue(v352, v219, v220);
                      }

                      v221 = [v219 name];
                      if (![(__CFDictionary *)v355 objectForKey:v221])
                      {
                        v222 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v350, "count")}];
                        v15 = v353;
                        [(__CFArray *)v350 addObject:v221];
                        v223 = v222;
                        v208 = v352;
                        [(__CFDictionary *)v355 setObject:v223 forKey:v221];
                      }

                      LODWORD(v354) = v354 + 1;
                      v224 = [v219 expression];
                      if (![(__CFDictionary *)v15 objectForKey:v224])
                      {
                        v225 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
                        v15 = v353;
                        -[__CFArray addObject:](v349, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v224 requiringSecureCoding:1 error:0]);
                        [v353 setObject:v225 forKey:v224];
                      }
                    }
                  }

                  v216 = [v214 countByEnumeratingWithState:&v399 objects:v461 count:16];
                }

                while (v216);
              }

              v226 = [v346 propertiesToGroupBy];
              v395 = 0u;
              v396 = 0u;
              v397 = 0u;
              v398 = 0u;
              v227 = [v226 countByEnumeratingWithState:&v395 objects:v460 count:16];
              if (v227)
              {
                v228 = v227;
                v229 = *v396;
                do
                {
                  for (jj = 0; jj != v228; ++jj)
                  {
                    if (*v396 != v229)
                    {
                      objc_enumerationMutation(v226);
                    }

                    v231 = *(*(&v395 + 1) + 8 * jj);
                    if (object_getClass(v231) == v351)
                    {
                      if (![(__CFDictionary *)v208 objectForKey:v231])
                      {
                        v232 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](Mutable, "count")}];
                        v208 = v352;
                        [(__CFArray *)Mutable addObject:v231];
                        CFDictionarySetValue(v352, v231, v232);
                      }

                      v233 = [v231 name];
                      if (![(__CFDictionary *)v355 objectForKey:v233])
                      {
                        v234 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v350, "count")}];
                        v15 = v353;
                        [(__CFArray *)v350 addObject:v233];
                        v235 = v234;
                        v208 = v352;
                        [(__CFDictionary *)v355 setObject:v235 forKey:v233];
                      }

                      LODWORD(v354) = v354 + 1;
                      v236 = [v231 expression];
                      if (![(__CFDictionary *)v15 objectForKey:v236])
                      {
                        v237 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
                        v15 = v353;
                        -[__CFArray addObject:](v349, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v236 requiringSecureCoding:1 error:0]);
                        [v353 setObject:v237 forKey:v236];
                      }
                    }
                  }

                  v228 = [v226 countByEnumeratingWithState:&v395 objects:v460 count:16];
                }

                while (v228);
              }

              v238 = [v346 sortDescriptors];
              v391 = 0u;
              v392 = 0u;
              v393 = 0u;
              v394 = 0u;
              v239 = [v238 countByEnumeratingWithState:&v391 objects:v459 count:16];
              v30 = v350;
              if (v239)
              {
                v240 = v239;
                v241 = *v392;
                do
                {
                  for (kk = 0; kk != v240; ++kk)
                  {
                    if (*v392 != v241)
                    {
                      objc_enumerationMutation(v238);
                    }

                    v243 = *(*(&v391 + 1) + 8 * kk);
                    if (![(__CFDictionary *)v15 objectForKey:v243])
                    {
                      v244 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
                      v15 = v353;
                      -[__CFArray addObject:](v349, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v243 requiringSecureCoding:1 error:0]);
                      [v353 setObject:v244 forKey:v243];
                    }
                  }

                  v240 = [v238 countByEnumeratingWithState:&v391 objects:v459 count:16];
                }

                while (v240);
              }

              v245 = [v346 relationshipKeyPathsForPrefetching];
              v387 = 0u;
              v388 = 0u;
              v389 = 0u;
              v390 = 0u;
              v246 = [v245 countByEnumeratingWithState:&v387 objects:v458 count:16];
              if (v246)
              {
                v247 = v246;
                v248 = *v388;
                do
                {
                  for (mm = 0; mm != v247; ++mm)
                  {
                    if (*v388 != v248)
                    {
                      objc_enumerationMutation(v245);
                    }

                    v250 = *(*(&v387 + 1) + 8 * mm);
                    if (![(__CFDictionary *)v355 objectForKey:v250])
                    {
                      v251 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v350, "count")}];
                      [(__CFArray *)v350 addObject:v250];
                      [(__CFDictionary *)v355 setObject:v251 forKey:v250];
                    }
                  }

                  v247 = [v245 countByEnumeratingWithState:&v387 objects:v458 count:16];
                }

                while (v247);
              }

              v206 = v344 + 1;
            }

            while (v344 + 1 != v343);
            v343 = [(__CFArray *)v341 countByEnumeratingWithState:&v403 objects:v462 count:16];
          }

          while (v343);
        }

        v386 = 0;
        v385 = -559038737;
        v195 = objc_alloc_init(MEMORY[0x1E695DF88]);
        [v195 appendBytes:"momv2$srsraori55717101jhus-[6910aathnnhi86786714[-;uadmiraenv143" length:64];
        v252 = [v195 length];
        v253 = (v252 + 3) & 0xFFFFFFFC;
        if (v253 != v252)
        {
          [v195 appendBytes:&v386 length:v253 - v252];
        }

        v351 = [v195 length];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v386 length:4];
        [v195 appendBytes:&v385 length:4];
        [v195 appendBytes:&v385 length:4];
        [v195 appendBytes:&v385 length:4];
        [v195 appendBytes:&v385 length:4];
        v346 = [v195 length];
        _writeInt32IntoData(v195, [(__CFArray *)v338 count]);
        v383 = 0u;
        v384 = 0u;
        v381 = 0u;
        v382 = 0u;
        v254 = [(__CFArray *)v338 countByEnumeratingWithState:&v381 objects:v456 count:16];
        if (v254)
        {
          v255 = v254;
          v256 = *v382;
          do
          {
            for (nn = 0; nn != v255; ++nn)
            {
              if (*v382 != v256)
              {
                objc_enumerationMutation(v338);
              }

              _writeStringIntoData(*(*(&v381 + 1) + 8 * nn), v195, v457);
            }

            v255 = [(__CFArray *)v338 countByEnumeratingWithState:&v381 objects:v456 count:16];
          }

          while (v255);
        }

        [v195 appendBytes:&v385 length:4];
        [v195 appendBytes:&v385 length:4];
        v344 = [v195 length];
        _writeInt32IntoData(v195, [(__CFArray *)v30 count]);
        v379 = 0u;
        v380 = 0u;
        v377 = 0u;
        v378 = 0u;
        v258 = [(__CFArray *)v30 countByEnumeratingWithState:&v377 objects:v455 count:16];
        if (v258)
        {
          v259 = v258;
          v260 = *v378;
          do
          {
            for (i1 = 0; i1 != v259; ++i1)
            {
              if (*v378 != v260)
              {
                objc_enumerationMutation(v30);
              }

              _writePFEncodedStringShapeIntoData(v195, *(*(&v377 + 1) + 8 * i1), v457);
            }

            v259 = [(__CFArray *)v30 countByEnumeratingWithState:&v377 objects:v455 count:16];
          }

          while (v259);
        }

        [v195 appendBytes:&v385 length:4];
        [v195 appendBytes:&v385 length:4];
        v343 = [v195 length];
        _writeInt32IntoData(v195, [(__CFArray *)v349 count]);
        v375 = 0u;
        v376 = 0u;
        v373 = 0u;
        v374 = 0u;
        v262 = [(__CFArray *)v349 countByEnumeratingWithState:&v373 objects:v454 count:16];
        if (v262)
        {
          v263 = v262;
          v264 = *v374;
          do
          {
            for (i2 = 0; i2 != v263; ++i2)
            {
              if (*v374 != v264)
              {
                objc_enumerationMutation(v349);
              }

              _writePFEncodedDataShapeIntoData(v195, *(*(&v373 + 1) + 8 * i2));
            }

            v263 = [(__CFArray *)v349 countByEnumeratingWithState:&v373 objects:v454 count:16];
          }

          while (v263);
        }

        [v195 appendBytes:&v385 length:4];
        [v195 appendBytes:&v385 length:4];
        v340 = [v195 length];
        _writeInt32IntoData(v195, [(__CFArray *)v335 count]);
        v371 = 0u;
        v372 = 0u;
        v369 = 0u;
        v370 = 0u;
        v266 = [(__CFArray *)v335 countByEnumeratingWithState:&v369 objects:v453 count:16];
        if (v266)
        {
          v267 = v266;
          v268 = *v370;
          do
          {
            for (i3 = 0; i3 != v267; ++i3)
            {
              if (*v370 != v268)
              {
                objc_enumerationMutation(v335);
              }

              _writeKKDMappingStrategyIntoData(v195, *(*(&v369 + 1) + 8 * i3), v355);
            }

            v267 = [(__CFArray *)v335 countByEnumeratingWithState:&v369 objects:v453 count:16];
          }

          while (v267);
        }

        [v195 appendBytes:&v385 length:4];
        [v195 appendBytes:&v385 length:4];
        v330 = [v195 length];
        _writeInt32IntoData(v195, v328);
        _writeInt32IntoData(v195, HIDWORD(v328));
        _writeInt32IntoData(v195, v329);
        _writeInt32IntoData(v195, v354);
        _writeInt32IntoData(v195, HIDWORD(v329));
        v367 = 0u;
        v368 = 0u;
        v365 = 0u;
        v366 = 0u;
        v270 = [(__CFArray *)Mutable countByEnumeratingWithState:&v365 objects:v452 count:16];
        if (v270)
        {
          v271 = v270;
          v272 = *v366;
          do
          {
            for (i4 = 0; i4 != v271; ++i4)
            {
              if (*v366 != v272)
              {
                objc_enumerationMutation(Mutable);
              }

              [*(*(&v365 + 1) + 8 * i4) _writeIntoData:v195 propertiesDict:v352 uniquedPropertyNames:v355 uniquedStrings:v339 uniquedData:v15 entitiesSlots:objc_msgSend(*(v345 + 4) fetchRequests:{"mapping"), v342}];
            }

            v271 = [(__CFArray *)Mutable countByEnumeratingWithState:&v365 objects:v452 count:16];
          }

          while (v271);
        }

        [v195 appendBytes:&v385 length:4];
        [v195 appendBytes:&v385 length:4];
        v327 = [v195 length];
        _writeInt32IntoData(v195, [*(v345 + 4) count]);
        v274 = [objc_msgSend(*(v345 + 4) "mapping")];
        if (v274)
        {
          v275 = v274;
          for (i5 = 0; i5 != v275; ++i5)
          {
            [objc_msgSend(*(v345 + 4) valueAtIndex:{i5), "_writeIntoData:propertiesDict:uniquedPropertyNames:uniquedStrings:uniquedData:uniquedMappings:entities:", v195, v352, v355, v339, v15, v336, *(v345 + 4)}];
          }
        }

        [v195 appendBytes:&v385 length:4];
        [v195 appendBytes:&v385 length:4];
        v334 = [v195 length];
        _writeInt32IntoData(v195, [(__CFArray *)v341 count]);
        v277 = [(__CFArray *)v341 count];
        if (v277)
        {
          v278 = v277;
          for (i6 = 0; i6 != v278; ++i6)
          {
            [-[__CFArray objectAtIndex:](v341 objectAtIndex:{i6), "_writeIntoData:propertiesDict:uniquedPropertyNames:uniquedStrings:uniquedData:uniquedMappings:entities:", v195, v352, v355, v339, v15, v336, *(v345 + 4)}];
          }
        }

        [v195 appendBytes:&v385 length:4];
        [v195 appendBytes:&v385 length:4];
        v280 = [v195 length];
        _writeInt32IntoData(v195, *(v345 + 16));
        v281 = *(v345 + 4);
        if (v281)
        {
          v282 = [v281 count];
        }

        else
        {
          v282 = 0;
        }

        _writeInt32IntoData(v195, v282);
        if (v331 && [(NSKnownKeysDictionary *)v331 count])
        {
          _writeInt32IntoData(v195, [*(v345 + 6) count]);
          v363 = 0u;
          v364 = 0u;
          v361 = 0u;
          v362 = 0u;
          v283 = [*(v345 + 6) allValues];
          v284 = [v283 countByEnumeratingWithState:&v361 objects:v451 count:16];
          if (v284)
          {
            v285 = v284;
            v286 = *v362;
            do
            {
              for (i7 = 0; i7 != v285; ++i7)
              {
                if (*v362 != v286)
                {
                  objc_enumerationMutation(v283);
                }

                v288 = [CFDictionaryGetValue(v342 *(*(&v361 + 1) + 8 * i7))];
                _writeInt64IntoData(v195, v288);
              }

              v285 = [v283 countByEnumeratingWithState:&v361 objects:v451 count:16];
            }

            while (v285);
          }
        }

        else
        {
          _writeInt32IntoData(v195, 0);
        }

        v289 = *(v345 + 5);
        v326 = v280;
        if (v289)
        {
          _writeInt32IntoData(v195, [v289 count]);
          v290 = [*(v345 + 4) mapping];
          v357 = 0u;
          v358 = 0u;
          v359 = 0u;
          v360 = 0u;
          *&v353 = *(v345 + 5);
          v291 = [v353 countByEnumeratingWithState:&v357 objects:v450 count:16];
          if (v291)
          {
            v292 = v291;
            v293 = *v358;
            do
            {
              for (i8 = 0; i8 != v292; ++i8)
              {
                if (*v358 != v293)
                {
                  objc_enumerationMutation(v353);
                }

                v295 = *(*(&v357 + 1) + 8 * i8);
                v296 = [*(v345 + 5) objectForKey:v295];
                _writeInt32IntoData(v195, [-[__CFDictionary objectForKey:](v355 objectForKey:{v295), "unsignedIntegerValue"}]);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v296 = [v296 allObjects];
                }

                _writePFEncodedArrayShapeIntoData(v195, v296, v290, 0);
              }

              v292 = [v353 countByEnumeratingWithState:&v357 objects:v450 count:16];
            }

            while (v292);
          }
        }

        else
        {
          _writeInt32IntoData(v195, 0);
        }

        v297 = v345;
        _writePFEncodedArrayShapeIntoData(v195, [*(v345 + 7) allObjects], v15, 0);
        if ([*(v345 + 4) count])
        {
          v298 = 0;
          do
          {
            _writeInt64IntoData(v195, 0);
            ++v298;
          }

          while (v298 < [*(v345 + 4) count]);
        }

        *&v353 = v332->_entitiesByName;
        v299 = [*(v345 + 4) count];
        v30 = v350;
        if (v299)
        {
          v300 = v299;
          for (i9 = 0; i9 != v300; ++i9)
          {
            v302 = [objc_msgSend(v297[4] valueAtIndex:{i9), "name"}];
            v303 = [v353 objectForKey:v302];
            if (v303 && (v304 = v303[31]) != 0)
            {
              v305 = [-[NSSQLEntity properties](v303) count];
              v306 = MEMORY[0x1EEE9AC00](v305);
              v309 = &v323 - v308;
              v310 = v306;
              if (v306 > 0x200)
              {
                v309 = NSAllocateScannedUncollectable();
              }

              else
              {
                bzero(&v323 - v308, 8 * v307);
              }

              v311 = v304[1];
              if (v311 >= 1)
              {
                v312 = 0;
                v313 = v304[9];
                do
                {
                  v315 = *v313++;
                  v314 = v315;
                  v316 = v304[8];
                  v317 = v316 ^ v315;
                  if (v316 != v315 && v317 != -1)
                  {
                    *&v309[8 * v312++] = v314;
                  }

                  --v311;
                }

                while (v311);
              }

              v319 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v309 count:v310];
              _writePFEncodedArrayShapeIntoData(v195, v319, v355, 0);

              if (v310 >= 0x201)
              {
                NSZoneFree(0, v309);
              }

              v297 = v345;
            }

            else if (v333)
            {
              v322 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Can't find hashorder for entity '%@'", objc_msgSend(v303, "name")), @"Base Problem"}];
              *v333 = v322;

              goto LABEL_214;
            }
          }
        }

        [v195 appendBytes:&v386 length:8];
        v356 = bswap32(v326);
        v320 = v351;
        [v195 replaceBytesInRange:v351 withBytes:{4, &v356}];
        v356 = bswap32(v327);
        [v195 replaceBytesInRange:(v320 + 4) withBytes:{4, &v356}];
        v356 = bswap32([v297[4] count]);
        [v195 replaceBytesInRange:(v320 + 8) withBytes:{4, &v356}];
        v356 = bswap32(v330);
        [v195 replaceBytesInRange:(v320 + 12) withBytes:{4, &v356}];
        v356 = bswap32([(__CFDictionary *)v352 count]);
        [v195 replaceBytesInRange:(v320 + 16) withBytes:{4, &v356}];
        v356 = bswap32(v328);
        [v195 replaceBytesInRange:(v320 + 20) withBytes:{4, &v356}];
        v356 = bswap32(HIDWORD(v328));
        [v195 replaceBytesInRange:(v320 + 24) withBytes:{4, &v356}];
        v356 = bswap32(v329);
        [v195 replaceBytesInRange:(v320 + 28) withBytes:{4, &v356}];
        v356 = bswap32(v354);
        [v195 replaceBytesInRange:(v320 + 32) withBytes:{4, &v356}];
        v356 = bswap32(HIDWORD(v329));
        [v195 replaceBytesInRange:(v320 + 36) withBytes:{4, &v356}];
        v356 = bswap32(v340);
        [v195 replaceBytesInRange:(v320 + 40) withBytes:{4, &v356}];
        v356 = bswap32([(__CFArray *)v335 count]);
        [v195 replaceBytesInRange:(v320 + 44) withBytes:{4, &v356}];
        v356 = bswap32(v343);
        [v195 replaceBytesInRange:(v320 + 48) withBytes:{4, &v356}];
        v197 = v349;
        v356 = bswap32([(__CFArray *)v349 count]);
        [v195 replaceBytesInRange:(v320 + 52) withBytes:{4, &v356}];
        v356 = bswap32(v346);
        [v195 replaceBytesInRange:(v320 + 56) withBytes:{4, &v356}];
        v321 = v297;
        v199 = v339;
        v356 = bswap32([(__CFDictionary *)v339 count]);
        [v195 replaceBytesInRange:(v320 + 60) withBytes:{4, &v356}];
        v356 = bswap32(v344);
        [v195 replaceBytesInRange:(v320 + 64) withBytes:{4, &v356}];
        v356 = bswap32([(__CFDictionary *)v355 count]);
        [v195 replaceBytesInRange:(v320 + 68) withBytes:{4, &v356}];
        v356 = bswap32(v334);
        [v195 replaceBytesInRange:(v320 + 72) withBytes:{4, &v356}];
        v200 = v341;
        v356 = bswap32([(__CFArray *)v341 count]);
        [v195 replaceBytesInRange:(v320 + 76) withBytes:{4, &v356}];
        v356 = bswap32([v321[6] count]);
        [v195 replaceBytesInRange:(v320 + 80) withBytes:{4, &v356}];
        v356 = bswap32(v337);
        [v195 replaceBytesInRange:(v320 + 84) withBytes:{4, &v356}];
        v356 = bswap32(v347);
        [v195 replaceBytesInRange:(v320 + 88) withBytes:{4, &v356}];
        v196 = Mutable;
        v198 = v338;
        if (!Mutable)
        {
          goto LABEL_217;
        }

LABEL_216:
        CFRelease(v196);
        goto LABEL_217;
      }

      goto LABEL_40;
    }
  }

  if (![(__CFDictionary *)v355 objectForKey:v127])
  {
    v128 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v30, "count")}];
    [(__CFArray *)v30 addObject:v127];
    [(__CFDictionary *)v355 setValue:v128 forKey:v127];
  }

  v129 = [v126 versionHashModifier];
  if (v129)
  {
    v130 = v129;
    if (![(__CFDictionary *)v339 objectForKey:v129])
    {
      v131 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v338, "count")}];
      [(__CFArray *)v338 addObject:v130];
      [(__CFDictionary *)v339 setValue:v131 forKey:v130];
    }
  }

  v132 = [v126 versionHash];
  if (v132)
  {
    v133 = v132;
    if (![(__CFDictionary *)v15 objectForKey:v132])
    {
      v134 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
      [(__CFArray *)v349 addObject:v133];
      CFDictionarySetValue(v15, v133, v134);
    }
  }

  v135 = [v126 renamingIdentifier];
  if (v135)
  {
    v136 = v135;
    if (([v135 isEqualToString:{objc_msgSend(v126, "name")}] & 1) == 0 && !-[__CFDictionary objectForKey:](v339, "objectForKey:", v136))
    {
      v137 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v338, "count")}];
      [(__CFArray *)v338 addObject:v136];
      [(__CFDictionary *)v339 setObject:v137 forKey:v136];
    }
  }

  v138 = [v126 userInfo];
  if ([v138 count] && !-[__CFDictionary objectForKey:](v15, "objectForKey:", v138))
  {
    v139 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
    -[__CFArray addObject:](v349, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v138 requiringSecureCoding:1 error:0]);
    CFDictionarySetValue(v15, v138, v139);
  }

  v140 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](Mutable, "count")}];
  [(__CFArray *)Mutable addObject:v126];
  CFDictionarySetValue(v352, v126, v140);
  v141 = [v126 _propertyType];
  v142 = v141;
  v346 = v125;
  if (v141 <= 3)
  {
    if (v141 != 2)
    {
      if (v141 != 3)
      {
        goto LABEL_405;
      }

      ++HIDWORD(v329);
      v143 = [v126 fetchRequest];
      if (!CFDictionaryGetValue(v342, v143))
      {
        v144 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v341, "count")}];
        [(__CFArray *)v341 addObject:v143];
        CFDictionarySetValue(v342, v143, v144);
      }

      goto LABEL_170;
    }

    goto LABEL_132;
  }

  switch(v141)
  {
    case 4:
      LODWORD(v329) = v329 + 1;
LABEL_170:
      v417 = 0u;
      v418 = 0u;
      v415 = 0u;
      v416 = 0u;
      v166 = v126;
      v167 = [v126 _rawValidationPredicates];
      v168 = [v167 countByEnumeratingWithState:&v415 objects:v465 count:16];
      if (v168)
      {
        v169 = v168;
        v170 = *v416;
        do
        {
          for (i10 = 0; i10 != v169; ++i10)
          {
            if (*v416 != v170)
            {
              objc_enumerationMutation(v167);
            }

            v172 = *(*(&v415 + 1) + 8 * i10);
            if (![(__CFDictionary *)v15 objectForKey:v172])
            {
              v173 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
              v15 = v353;
              -[__CFArray addObject:](v349, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v172 requiringSecureCoding:1 error:0]);
              CFDictionarySetValue(v353, v172, v173);
            }
          }

          v169 = [v167 countByEnumeratingWithState:&v415 objects:v465 count:16];
        }

        while (v169);
      }

      v413 = 0u;
      v414 = 0u;
      v411 = 0u;
      v412 = 0u;
      v174 = [v166 _rawValidationWarnings];
      v175 = [v174 countByEnumeratingWithState:&v411 objects:v464 count:16];
      if (v175)
      {
        v176 = v175;
        v177 = *v412;
        v30 = v350;
        while (2)
        {
          for (i11 = 0; i11 != v176; ++i11)
          {
            if (*v412 != v177)
            {
              objc_enumerationMutation(v174);
            }

            v179 = *(*(&v411 + 1) + 8 * i11);
            if ([v179 isNSString])
            {
              if (![(__CFDictionary *)v339 objectForKey:v179])
              {
                v180 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v338, "count")}];
                v30 = v350;
                [(__CFArray *)v338 addObject:v179];
                [(__CFDictionary *)v339 setObject:v180 forKey:v179];
              }
            }

            else
            {
              if (![v179 isNSNumber])
              {
                v191 = v333;
                if (!v333)
                {
                  goto LABEL_214;
                }

                v192 = MEMORY[0x1E696ABC0];
                v193 = *MEMORY[0x1E696A250];
                v194 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid value in warnings array" forKey:@"Base error"];
                goto LABEL_211;
              }

              if (![(__CFDictionary *)v15 objectForKey:v179])
              {
                v181 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
                v15 = v353;
                -[__CFArray addObject:](v349, "addObject:", [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v179 requiringSecureCoding:1 error:0]);
                CFDictionarySetValue(v353, v179, v181);
              }
            }
          }

          v176 = [v174 countByEnumeratingWithState:&v411 objects:v464 count:16];
          if (v176)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v30 = v350;
      }

      v121 = v343;
      v123 = v344;
      v124 = v340;
      v125 = v346;
      goto LABEL_195;
    case 6:
LABEL_132:
      v145 = [v126 attributeValueClassName];
      if (v145)
      {
        v146 = v145;
        if (![(__CFDictionary *)v355 objectForKey:v145])
        {
          v147 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v30, "count")}];
          [(__CFArray *)v30 addObject:v146];
          [(__CFDictionary *)v355 setObject:v147 forKey:v146];
        }
      }

      v148 = [v126 valueTransformerName];
      if (v148)
      {
        v149 = v148;
        if (![(__CFDictionary *)v339 objectForKey:v148])
        {
          v150 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v338, "count")}];
          [(__CFArray *)v338 addObject:v149];
          [(__CFDictionary *)v339 setObject:v150 forKey:v149];
        }
      }

      v151 = [v126 defaultValue];
      if (!v151)
      {
        goto LABEL_161;
      }

      v152 = v151;
      v153 = [v126 attributeType];
      if (v153 <= 499)
      {
        if (v153 > 299)
        {
          if (v153 == 300)
          {
            goto LABEL_161;
          }

          if (v153 != 400)
          {
            goto LABEL_156;
          }

          v152 = [v152 stringValue];
          if ([(__CFDictionary *)v355 objectForKey:v152])
          {
            goto LABEL_161;
          }

          v154 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v30, "count")}];
          [(__CFArray *)v30 addObject:v152];
          v155 = v355;
          goto LABEL_160;
        }

        if (v153 == 100 || v153 == 200)
        {
          goto LABEL_161;
        }
      }

      else
      {
        if (v153 > 699)
        {
          if (v153 != 700)
          {
            if (v153 != 800 && v153 != 900)
            {
              goto LABEL_156;
            }

LABEL_161:
            if (v142 == 6)
            {
              v158 = [v126 derivationExpression];
              if (v158)
              {
                v159 = v158;
                if (![(__CFDictionary *)v15 objectForKey:v158])
                {
                  v160 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v159 requiringSecureCoding:1 error:0];
                  v161 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
                  v15 = v353;
                  [(__CFArray *)v349 addObject:v160];
                  CFDictionarySetValue(v353, v159, v161);
                }
              }

              v162 = [v126 filteringPredicate];
              if (v162)
              {
                v163 = v162;
                if (![(__CFDictionary *)v15 objectForKey:v162])
                {
                  v164 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v163 requiringSecureCoding:1 error:0];
                  v165 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
                  v15 = v353;
                  [(__CFArray *)v349 addObject:v164];
                  CFDictionarySetValue(v353, v163, v165);
                }
              }

              ++HIDWORD(v328);
            }

            else
            {
              LODWORD(v328) = v328 + 1;
            }

            goto LABEL_170;
          }

          if ([(__CFDictionary *)v339 objectForKey:v152])
          {
            goto LABEL_161;
          }

          v154 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v338, "count")}];
          [(__CFArray *)v338 addObject:v152];
          v155 = v339;
LABEL_160:
          [(__CFDictionary *)v155 setObject:v154 forKey:v152];
          goto LABEL_161;
        }

        if (v153 == 500 || v153 == 600)
        {
          goto LABEL_161;
        }
      }

LABEL_156:
      if (![(__CFDictionary *)v15 objectForKey:v152])
      {
        v156 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v152 requiringSecureCoding:1 error:0];
        v157 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v349, "count")}];
        v15 = v353;
        [(__CFArray *)v349 addObject:v156];
        CFDictionarySetValue(v353, v152, v157);
      }

      goto LABEL_161;
    case 7:
      v191 = v333;
      if (v333)
      {
        v192 = MEMORY[0x1E696ABC0];
        v193 = *MEMORY[0x1E696A250];
        v194 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Unsupported property; can't optimize composite attribute", @"Base error", v126, @"Property", 0}];
LABEL_211:
        v195 = 0;
        *v191 = [v192 errorWithDomain:v193 code:134060 userInfo:v194];
        goto LABEL_215;
      }

      break;
    default:
LABEL_405:
      v191 = v333;
      if (v333)
      {
        v192 = MEMORY[0x1E696ABC0];
        v193 = *MEMORY[0x1E696A250];
        v194 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Invalid property; can't optimize", @"Base error", v126, @"Property", 0}];
        goto LABEL_211;
      }

      break;
  }

LABEL_214:
  v195 = 0;
LABEL_215:
  v196 = Mutable;
  v197 = v349;
  v198 = v338;
  v199 = v339;
  v200 = v341;
  if (Mutable)
  {
    goto LABEL_216;
  }

LABEL_217:
  if (v352)
  {
    CFRelease(v352);
  }

  if (v198)
  {
    CFRelease(v198);
  }

  if (v199)
  {
    CFRelease(v199);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v355)
  {
    CFRelease(v355);
  }

  v201 = v335;
  v202 = v336;
  v203 = v331;
  if (v197)
  {
    CFRelease(v197);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v201)
  {
    CFRelease(v201);
  }

  if (v202)
  {
    CFRelease(v202);
  }

  v204 = v342;
  if (v203)
  {
  }

  if (v200)
  {
    CFRelease(v200);
  }

  if (v204)
  {
    CFRelease(v204);
  }

  if (v332)
  {
  }

  if (v195)
  {
    result = v195;
  }

  else
  {
    result = 0;
  }

  v205 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSManagedObjectModel)initWithContentsOfURL:(id)a3 forStoreMetadata:(id)a4
{
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [a3 path];
  v14 = 0;
  if (![v7 fileExistsAtPath:v8 isDirectory:&v14])
  {
LABEL_6:
    v10 = 0;
    goto LABEL_13;
  }

  if (v14 == 1)
  {
    v9 = [[NSManagedObjectModelBundle alloc] initWithPath:v8];
    if (v9)
    {
      v10 = -[NSManagedObjectModelBundle _modelForVersionHashes:](v9, "_modelForVersionHashes:", [a4 objectForKey:@"NSStoreModelVersionHashes"]);
      if (!v10)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v11 = [[NSManagedObjectModel alloc] initWithContentsOfURL:a3];
  if (![(NSManagedObjectModel *)v11 isConfiguration:0 compatibleWithStoreMetadata:a4]&& ![(NSManagedObjectModel *)v11 _isConfiguration:v12 inStyle:1 compatibleWithStoreMetadata:a4])
  {
    v10 = 0;
    goto LABEL_12;
  }

  v10 = v11;
  if (v11)
  {
LABEL_10:
    v11 = [[NSValidationErrorLocalizationPolicy alloc] initWithURL:a3];
    [(NSManagedObjectModel *)v10 _setLocalizationPolicy:v11];
LABEL_12:
  }

LABEL_13:
  [v6 drain];
  return v10;
}

- (void)_addEntity:(id)a3
{
  [(NSManagedObjectModel *)self _throwIfNotEditable];
  if (!a3)
  {
    return;
  }

  v5 = [a3 name];
  if (!v5)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = @"Can't add unnamed entity to model.";
    goto LABEL_10;
  }

  v6 = v5;
  if ([(NSMutableDictionary *)self->_entities objectForKey:v5])
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D930];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Model already contains an entity named %@.", v6];
    v7 = v10;
    v8 = v11;
LABEL_10:
    objc_exception_throw([v7 exceptionWithName:v8 reason:v9 userInfo:0]);
  }

  [(NSMutableDictionary *)self->_entities setObject:a3 forKey:v6];

  [(NSEntityDescription *)a3 _setManagedObjectModel:?];
}

- (NSManagedObjectModel)initWithContentsOfOptimizedURL:(id)a3
{
  objc_opt_class();
  objc_opt_class();
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [a3 path];
  v13 = 0;
  if ([v5 fileExistsAtPath:v6 isDirectory:&v13])
  {
    v7 = 0;
    if (v13)
    {
      v8 = 0;
      goto LABEL_12;
    }

    v8 = 0;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (!v6)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v7 = [[_PFVMData alloc] initWithContentsOfFile:v6 options:0 error:0];
  if (![(_PFVMData *)v7 length])
  {
LABEL_10:
    v8 = 0;
    goto LABEL_12;
  }

  [NSManagedObjectModel _newModelFromOptimizedEncoding:v7 error:?];
  v8 = v9;
  if (v9)
  {
    v10 = [[NSValidationErrorLocalizationPolicy alloc] initWithURL:a3];
    [(NSManagedObjectModel *)v8 _setLocalizationPolicy:v10];
  }

LABEL_12:
  [v4 drain];
  v11 = 0;

  return v8;
}

+ (void)_newModelFromOptimizedEncoding:(uint64_t)a1 error:(const __CFData *)a2
{
  v295[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!a2)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  objc_opt_class();
  v295[0] = 0;
  BytePtr = CFDataGetBytePtr(a2);
  if ([(__CFData *)a2 length]< 0x40)
  {
    goto LABEL_9;
  }

  if (!memcmp("momv2$srsraori55717101jhus-[6910aathnnhi86786714[-;uadmiraenv143", BytePtr, 0x40uLL))
  {
    v4 = 13;
  }

  else
  {
    if ([(__CFData *)a2 length]< 0x40 || memcmp("momv2$8129374fj;a30[5yo-]0-87ujuhok'p0907ljnlmmji870-oi43902[349", BytePtr, 0x40uLL))
    {
      goto LABEL_9;
    }

    v4 = 12;
  }

  v5 = [(__CFData *)a2 length];
  if (v5 < 0x9C)
  {
    goto LABEL_9;
  }

  v294 = bswap32(*(BytePtr + 16));
  v8 = *(BytePtr + 18);
  v9 = bswap32(v8);
  v10 = *(BytePtr + 5);
  *&v6 = *(BytePtr + 12);
  v11 = *(BytePtr + 27);
  v12 = *(BytePtr + 29);
  v13 = *(BytePtr + 31);
  v14 = bswap32(v13);
  v15 = *(BytePtr + 33);
  v16 = bswap32(v15);
  v17.i64[1] = __PAIR64__(v12, v11);
  v17.i64[0] = v6;
  v18 = vrev32q_s8(v17);
  v19 = vrev32q_s8(v10);
  v20 = *(BytePtr + 140);
  v21 = vrev32q_s8(v20);
  v17.i64[0] = 0x1000000010000;
  v17.i64[1] = 0x1000000010000;
  v22 = vmovn_s16(vuzp1q_s16(vcgtq_u32(v19, v17), vcgtq_u32(v18, v17)));
  v22.i8[0] = vmaxv_u8(v22);
  *v17.i8 = vmovn_s32(vcgtq_u32(v21, v17));
  v17.i16[0] = vmaxv_u16(*v17.i8);
  if ((v9 > 0x10000 || v14 > 0x10000 || v16 > 0x10000) | (v22.i32[0] | v17.i32[0]) & 1 || (v21.i32[1] + v18.i32[1]) > v21.i32[0])
  {
    goto LABEL_9;
  }

  v23 = v5;
  v277 = v19;
  v279 = v18;
  v274 = v21;
  v268 = v6;
  v269 = v10;
  v271 = v4;
  v265 = v20;
  v266 = v8;
  v276 = v18.u32[1];
  v278 = v11;
  v273 = v9;
  v275 = v21.u32[0];
  v282 = v13;
  v280 = v14;
  v283 = &v237;
  v267 = *(BytePtr + 17);
  LODWORD(v272) = *(BytePtr + 19);
  v24 = *(BytePtr + 26);
  v25 = *(BytePtr + 28);
  v26 = *(BytePtr + 30);
  v27 = bswap32(*(BytePtr + 32));
  v264 = *(BytePtr + 34);
  MEMORY[0x1EEE9AC00](v5);
  if (v16 > 0x200)
  {
    v30 = NSAllocateScannedUncollectable();
    v281 = v30;
  }

  else
  {
    v281 = &v237 - v29;
    bzero(&v237 - v29, 8 * v28);
  }

  v293 = v27;
  v31 = (v27 + 3) & 0x1FFFFFFFCLL;
  v32 = v31 + 4;
  if (v31 + 4 <= v23)
  {
    v33 = bswap32(*&BytePtr[v31]);
    v293 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (v33 != v16)
  {
    goto LABEL_9;
  }

  if (!v15)
  {
LABEL_23:
    v36 = bswap32(v26);
    v37 = v280;
    MEMORY[0x1EEE9AC00](v30);
    v40 = &v237 - v39;
    if (v37 > 0x200)
    {
      v41 = NSAllocateScannedUncollectable();
      v40 = v41;
    }

    else
    {
      bzero(&v237 - v39, 8 * v38);
    }

    v292 = v36;
    v42 = (v36 + 3) & 0x1FFFFFFFCLL;
    v43 = v42 + 4;
    v263 = v40;
    if (v42 + 4 <= v23)
    {
      v44 = bswap32(*&BytePtr[v42]);
      v292 = v43;
    }

    else
    {
      v44 = 0;
    }

    if (v44 != v37)
    {
      goto LABEL_9;
    }

    if (v282)
    {
      v45 = v263;
      v46 = v280;
      do
      {
        v47 = _newReadStringFromBytes(BytePtr, &v292, v23);
        if (!v47)
        {
          goto LABEL_9;
        }

        v48 = v47;
        *v45++ = [v47 mutableCopy];
      }

      while (--v46);
    }

    v49 = bswap32(v25);
    v50 = v279.u32[3];
    MEMORY[0x1EEE9AC00](v41);
    v53 = (&v237 - v52);
    if (v50 > 0x200)
    {
      v54 = NSAllocateScannedUncollectable();
      v53 = v54;
    }

    else
    {
      bzero(&v237 - v52, 8 * v51);
    }

    v291 = v49;
    v55 = (v49 + 3) & 0x1FFFFFFFCLL;
    v56 = v55 + 4;
    if (v55 + 4 <= v23)
    {
      v57 = bswap32(*&BytePtr[v55]);
      v291 = v56;
    }

    else
    {
      v57 = 0;
    }

    if (v57 != v50)
    {
      goto LABEL_9;
    }

    if (v12)
    {
      v58 = v53;
      v59 = v50;
      do
      {
        v54 = _readPFEncodedDataFromData(a2, BytePtr, &v291, v23);
        if (!v54)
        {
          goto LABEL_9;
        }

        *v58++ = v54;
      }

      while (--v59);
    }

    v60 = v279.u32[2];
    v61 = 8 * v279.u32[2];
    v62 = MEMORY[0x1EEE9AC00](v54);
    v63 = (&v237 - ((v61 + 15) & 0xFFFFFFFF0));
    v290 = v64;
    v65 = (v64 + 3) & 0x1FFFFFFFCLL;
    v66 = v65 + 4;
    if (v65 + 4 <= v23)
    {
      v67 = bswap32(*&BytePtr[v65]);
      v290 = v66;
    }

    else
    {
      v67 = 0;
    }

    if (v67 != v60)
    {
      goto LABEL_9;
    }

    v262 = (&v237 - ((v61 + 15) & 0xFFFFFFFF0));
    if (v278)
    {
      v68 = v60;
      do
      {
        v69 = _newReadKKDMappingStrategyFromByes(a2, BytePtr, &v290, v23, v281);
        if (!v69)
        {
          goto LABEL_9;
        }

        *v63++ = v69;
        --v68;
      }

      while (v68);
      v260 = v50;
      MEMORY[0x1EEE9AC00](v69);
      v70 = (&v237 - ((v61 + 15) & 0xFFFFFFFF0));
      v71 = NSClassFromString(@"NSKnownKeysDictionary2");
      v72 = 0;
      v73 = v262;
      do
      {
        v74 = [(objc_class *)v71 newInstanceWithSearchStrategy:*(v73 + 8 * v72) inData:a2];
        v70[v72++] = v74;
      }

      while (v60 != v72);
      v258 = v53;
      v75 = v70;
      v50 = v260;
    }

    else
    {
      v258 = v53;
      MEMORY[0x1EEE9AC00](v62);
      v75 = (&v237 - ((v61 + 15) & 0xFFFFFFFF0));
      v74 = NSClassFromString(@"NSKnownKeysDictionary2");
    }

    v76 = v277.u32[0];
    MEMORY[0x1EEE9AC00](v74);
    v79 = &v237 - v78;
    v259 = v60;
    if (v76 >= 0x1FF)
    {
      v80 = NSAllocateScannedUncollectable();
      v79 = v80;
      if (!v80)
      {
        if (v282)
        {
          v104 = v280;
          v105 = v263;
          do
          {
            v106 = *v105++;

            --v104;
          }

          while (v104);
        }

        goto LABEL_9;
      }
    }

    else
    {
      bzero(&v237 - v78, 8 * v77);
    }

    v81 = v277.u32[1];
    MEMORY[0x1EEE9AC00](v80);
    v84 = (&v237 - v83);
    v257 = v75;
    if (v81 > 0x1FE)
    {
      v85 = NSAllocateScannedUncollectable();
      v84 = v85;
      if (!v85)
      {
        if (v76 >= 0x1FF)
        {
          NSZoneFree(0, v79);
        }

        if (v282)
        {
          v111 = v280;
          v112 = v263;
          do
          {
            v113 = *v112++;

            --v111;
          }

          while (v111);
        }

        goto LABEL_9;
      }
    }

    else
    {
      bzero(&v237 - v83, 8 * v82);
    }

    v86 = MEMORY[0x1EEE9AC00](v85);
    v255 = v236;
    v236[0] = 0;
    v236[1] = 0;
    MEMORY[0x1EEE9AC00](v86);
    v89 = &v237 - v88;
    v261 = v90;
    if (v90 > 0x1FE)
    {
      v91 = NSAllocateScannedUncollectable();
      v89 = v91;
      if (!v91)
      {
        if (v81 >= 0x1FF)
        {
          NSZoneFree(0, v84);
        }

        if (v76 >= 0x1FF)
        {
          NSZoneFree(0, v79);
        }

        if (v282)
        {
          v119 = v280;
          v120 = v263;
          do
          {
            v121 = *v120++;

            --v119;
          }

          while (v119);
        }

        goto LABEL_9;
      }
    }

    else
    {
      bzero(&v237 - v88, 8 * v87);
    }

    MEMORY[0x1EEE9AC00](v91);
    v277.i64[0] = v94;
    if (v94 > 0x1FE)
    {
      v95 = NSAllocateScannedUncollectable();
      v256 = v95;
      if (!v95)
      {
        if (v261 >= 0x1FF)
        {
          NSZoneFree(0, v89);
        }

        if (v81 >= 0x1FF)
        {
          NSZoneFree(0, v84);
        }

        if (v76 >= 0x1FF)
        {
          NSZoneFree(0, v79);
        }

        if (v282)
        {
          v126 = v280;
          v127 = v263;
          do
          {
            v128 = *v127++;

            --v126;
          }

          while (v126);
        }

        goto LABEL_9;
      }
    }

    else
    {
      v256 = (&v237 - v93);
      bzero(&v237 - v93, 8 * v92);
    }

    MEMORY[0x1EEE9AC00](v95);
    v279.i64[0] = v98;
    if (v98 > 0x1FE)
    {
      v99 = NSAllocateScannedUncollectable();
      v254 = v99;
      if (!v99)
      {
        if (v277.i32[0] >= 0x1FFu)
        {
          NSZoneFree(0, v256);
        }

        if (v261 >= 0x1FF)
        {
          NSZoneFree(0, v89);
        }

        if (v81 >= 0x1FF)
        {
          NSZoneFree(0, v84);
        }

        if (v76 >= 0x1FF)
        {
          NSZoneFree(0, v79);
        }

        if (v282)
        {
          v133 = v280;
          v134 = v263;
          do
          {
            v135 = *v134++;

            --v133;
          }

          while (v133);
        }

        goto LABEL_9;
      }
    }

    else
    {
      v254 = (&v237 - v97);
      bzero(&v237 - v97, 8 * v96);
    }

    MEMORY[0x1EEE9AC00](v99);
    if (v102 > 0x1FE)
    {
      v103 = NSAllocateScannedUncollectable();
      v252 = v103;
      if (!v103)
      {
        if (v279.i32[0] >= 0x1FFu)
        {
          NSZoneFree(0, v254);
        }

        if (v277.i32[0] >= 0x1FFu)
        {
          NSZoneFree(0, v256);
        }

        if (v261 >= 0x1FF)
        {
          NSZoneFree(0, v89);
        }

        if (v81 >= 0x1FF)
        {
          NSZoneFree(0, v84);
        }

        if (v76 >= 0x1FF)
        {
          NSZoneFree(0, v79);
        }

        if (v282)
        {
          v168 = v280;
          v169 = v263;
          do
          {
            v170 = *v169++;

            --v168;
          }

          while (v168);
        }

        goto LABEL_9;
      }
    }

    else
    {
      v252 = (&v237 - v101);
      bzero(&v237 - v101, 8 * v100);
    }

    MEMORY[0x1EEE9AC00](v103);
    if (v109 > 0x1FE)
    {
      v110 = NSAllocateScannedUncollectable();
      v250 = v110;
      if (!v110)
      {
        if (v276 >= 0x1FF)
        {
          NSZoneFree(0, v252);
        }

        if (v279.i32[0] >= 0x1FFu)
        {
          NSZoneFree(0, v254);
        }

        if (v277.i32[0] >= 0x1FFu)
        {
          NSZoneFree(0, v256);
        }

        if (v261 >= 0x1FF)
        {
          NSZoneFree(0, v89);
        }

        if (v81 >= 0x1FF)
        {
          NSZoneFree(0, v84);
        }

        if (v76 >= 0x1FF)
        {
          NSZoneFree(0, v79);
        }

        if (v282)
        {
          v171 = v280;
          v172 = v263;
          do
          {
            v173 = *v172++;

            --v171;
          }

          while (v171);
        }

        goto LABEL_9;
      }
    }

    else
    {
      v250 = &v237 - v108;
      bzero(&v237 - v108, 8 * v107);
    }

    v260 = v50;
    v251 = v89;
    v253 = v81;
    v249 = v79;
    MEMORY[0x1EEE9AC00](v110);
    if (v116 > 0x1FE)
    {
      v118 = NSAllocateScannedUncollectable();
      v117 = v118;
      if (!v118)
      {
        if (v275 >= 0x1FF)
        {
          NSZoneFree(0, v250);
        }

        if (v276 >= 0x1FF)
        {
          NSZoneFree(0, v252);
        }

        if (v279.i32[0] >= 0x1FFu)
        {
          NSZoneFree(0, v254);
        }

        if (v277.i32[0] >= 0x1FFu)
        {
          NSZoneFree(0, v256);
        }

        if (v261 >= 0x1FF)
        {
          NSZoneFree(0, v251);
        }

        if (v253 >= 0x1FF)
        {
          NSZoneFree(0, v84);
        }

        if (v76 >= 0x1FF)
        {
          NSZoneFree(0, v249);
        }

        if (v282)
        {
          v174 = v280;
          v175 = v263;
          do
          {
            v176 = *v175++;

            --v174;
          }

          while (v174);
        }

        goto LABEL_9;
      }
    }

    else
    {
      v117 = &v237 - v115;
      bzero(&v237 - v115, 8 * v114);
    }

    MEMORY[0x1EEE9AC00](v118);
    v248 = v124;
    if (v124 > 0x1FE)
    {
      v125 = NSAllocateScannedUncollectable();
      v247 = v125;
      if (!v125)
      {
        if (v273 >= 0x1FF)
        {
          NSZoneFree(0, v117);
        }

        if (v275 >= 0x1FF)
        {
          NSZoneFree(0, v250);
        }

        if (v276 >= 0x1FF)
        {
          NSZoneFree(0, v252);
        }

        if (v279.i32[0] >= 0x1FFu)
        {
          NSZoneFree(0, v254);
        }

        if (v277.i32[0] >= 0x1FFu)
        {
          NSZoneFree(0, v256);
        }

        if (v261 >= 0x1FF)
        {
          NSZoneFree(0, v251);
        }

        if (v253 >= 0x1FF)
        {
          NSZoneFree(0, v84);
        }

        if (v76 >= 0x1FF)
        {
          NSZoneFree(0, v249);
        }

        if (v282)
        {
          v177 = v280;
          v178 = v263;
          do
          {
            v179 = *v178++;

            --v177;
          }

          while (v177);
        }

        goto LABEL_9;
      }
    }

    else
    {
      v247 = &v237 - v123;
      bzero(&v237 - v123, 8 * v122);
    }

    MEMORY[0x1EEE9AC00](v125);
    v274.i64[0] = v131;
    if (v131 > 0x1FE)
    {
      v132 = NSAllocateScannedUncollectable();
      if (!v132)
      {
        if (v248 >= 0x1FF)
        {
          NSZoneFree(0, v247);
        }

        if (v273 >= 0x1FF)
        {
          NSZoneFree(0, v117);
        }

        if (v275 >= 0x1FF)
        {
          NSZoneFree(0, v250);
        }

        if (v276 >= 0x1FF)
        {
          NSZoneFree(0, v252);
        }

        if (v279.i32[0] >= 0x1FFu)
        {
          NSZoneFree(0, v254);
        }

        if (v277.i32[0] >= 0x1FFu)
        {
          NSZoneFree(0, v256);
        }

        if (v261 >= 0x1FF)
        {
          NSZoneFree(0, v251);
        }

        if (v253 >= 0x1FF)
        {
          NSZoneFree(0, v84);
        }

        if (v76 >= 0x1FF)
        {
          NSZoneFree(0, v249);
        }

        if (v282)
        {
          v180 = v280;
          v181 = v263;
          do
          {
            v182 = *v181++;

            --v180;
          }

          while (v180);
        }

        goto LABEL_9;
      }
    }

    else
    {
      v132 = (&v237 - v130);
      bzero(&v237 - v130, 8 * v129);
    }

    v136 = objc_opt_class();
    v137 = v84;
    v138 = v253;
    v139 = _PFAllocateObjects(v136, v84, v253, 0);
    if (v139 == v138)
    {
      objc_opt_class();
      v140 = objc_opt_class();
      v141 = v261;
      v142 = _PFAllocateObjects(v140, v251, v261, 0);
      if (v142 == v141)
      {
        v143 = objc_opt_class();
        v144 = v277.i32[0];
        v145 = _PFAllocateObjects(v143, v256, v277.u32[0], 0);
        if (v145 == v144)
        {
          v146 = objc_opt_class();
          v147 = v279.i32[0];
          v148 = _PFAllocateObjects(v146, v254, v279.u32[0], 0);
          if (v148 == v147)
          {
            v149 = objc_opt_class();
            v150 = v276;
            v151 = _PFAllocateObjects(v149, v252, v276, 0);
            if (v151 == v150)
            {
              v152 = objc_opt_class();
              v153 = v275;
              v154 = _PFAllocateObjects(v152, v250, v275, 0);
              if (v154 == v153)
              {
                v155 = objc_opt_class();
                v156 = v273;
                v157 = _PFAllocateObjects(v155, v117, v273, 0);
                if (v157 == v156)
                {
                  v158 = objc_opt_class();
                  v159 = v248;
                  v160 = _PFAllocateObjects(v158, v247, v248, 0);
                  if (v160 == v159)
                  {
                    v161 = objc_opt_class();
                    v162 = v274.i32[0];
                    v163 = _PFAllocateObjects(v161, v132, v274.u32[0], 0);
                    if (v163 == v162)
                    {
                      v164 = bswap32(v272);
                      v289 = v164;
                      v165 = (v164 + 3) & 0x1FFFFFFFCLL;
                      v166 = v165 + 4;
                      if (v165 + 4 <= v23)
                      {
                        v167 = bswap32(*&BytePtr[v165]);
                        v289 = v166;
                        v164 = v166;
                      }

                      else
                      {
                        v167 = 0;
                      }

                      if (v167 == v253)
                      {
                        v183 = (v164 + 3) & 0x7FFFFFFFCLL;
                        v184 = v183 + 4;
                        if (v183 + 4 <= v23)
                        {
                          v185 = bswap32(*&BytePtr[v183]);
                          v289 = v184;
                          v164 = v184;
                        }

                        else
                        {
                          v185 = 0;
                        }

                        if (v185 == v261)
                        {
                          v186 = (v164 + 3) & 0x1FFFFFFFFCLL;
                          v187 = v186 + 4;
                          if (v186 + 4 <= v23)
                          {
                            v188 = bswap32(*&BytePtr[v186]);
                            v289 = v187;
                            v164 = v187;
                          }

                          else
                          {
                            v188 = 0;
                          }

                          if (v188 == v277.i32[0])
                          {
                            v189 = (v164 + 3) & 0x7FFFFFFFFCLL;
                            v190 = v189 + 4;
                            if (v189 + 4 <= v23)
                            {
                              v191 = bswap32(*&BytePtr[v189]);
                              v289 = v190;
                              v164 = v190;
                            }

                            else
                            {
                              v191 = 0;
                            }

                            if (v191 == v279.i32[0])
                            {
                              v192 = (v164 + 3) & 0x1FFFFFFFFFCLL;
                              v193 = v192 + 4;
                              if (v192 + 4 <= v23)
                              {
                                v194 = bswap32(*&BytePtr[v192]);
                                v289 = v193;
                              }

                              else
                              {
                                v194 = 0;
                              }

                              if (v194 == v276)
                              {
                                if (v269.i32[1])
                                {
                                  v246 = *v84;
                                }

                                else
                                {
                                  v246 = 0;
                                }

                                if (v269.i32[2])
                                {
                                  v245 = *v251;
                                }

                                else
                                {
                                  v245 = 0;
                                }

                                HIDWORD(v237) = v269.i32[3];
                                if (v269.i32[3])
                                {
                                  v243 = *v256;
                                }

                                else
                                {
                                  v243 = 0;
                                }

                                LODWORD(v237) = v268;
                                if (v268)
                                {
                                  v242 = *v254;
                                }

                                else
                                {
                                  v242 = 0;
                                }

                                if (DWORD1(v268))
                                {
                                  v244 = *v252;
                                }

                                else
                                {
                                  v244 = 0;
                                }

                                if (v269.i32[0])
                                {
                                  v195 = 0;
                                  v238 = 0;
                                  v239 = 0;
                                  v240 = 0;
                                  v241 = 0;
                                  *&v268 = 0;
                                  v269.i64[0] = 0;
                                  v272 = 0;
                                  while (1)
                                  {
                                    v196 = _readPropertyIntoShellFromBytes(a2, BytePtr, &v289, v23, v117, v249, v250, v246, v245, v268, v243, v242, v244, v281, v263, v258, v271, v295);
                                    if (!v196)
                                    {
                                      goto LABEL_327;
                                    }

                                    *(v249 + v195) = v196;
                                    if (v84[v272] == v196)
                                    {
                                      v272 = v272 + 1;
                                      if (v272 == v253)
                                      {
                                        v246 = 0;
                                        v197 = v253;
                                        v198 = &v296;
                                      }

                                      else
                                      {
                                        v197 = v84[v272];
                                        v198 = &v274.i64[1];
                                      }

                                      goto LABEL_287;
                                    }

                                    if (v255[v269.i64[0]] != v196)
                                    {
                                      break;
                                    }

                                    if (!__CFADD__(v269.i64[0]++, 1))
                                    {
                                      v197 = v255[v269.i64[0]];
                                      v198 = &v292;
LABEL_287:
                                      *(v198 - 32) = v197;
                                      goto LABEL_288;
                                    }

                                    v269.i64[0] = 0;
                                    *&v268 = 0;
LABEL_288:
                                    if (v76 == ++v195)
                                    {
                                      goto LABEL_289;
                                    }
                                  }

                                  if (v251[v241] == v196)
                                  {
                                    if (++v241 == v261)
                                    {
                                      v245 = 0;
                                      v197 = v261;
                                      v198 = &v270;
                                    }

                                    else
                                    {
                                      v197 = v251[v241];
                                      v198 = &v274;
                                    }
                                  }

                                  else if (v256[v240] == v196)
                                  {
                                    if (++v240 == v277.i64[0])
                                    {
                                      v243 = 0;
                                      v197 = v277.i64[0];
                                      v198 = &v269.i64[1];
                                    }

                                    else
                                    {
                                      v197 = v256[v240];
                                      v198 = &v272;
                                    }
                                  }

                                  else if (v254[v239] == v196)
                                  {
                                    if (++v239 == v279.i64[0])
                                    {
                                      v242 = 0;
                                      v197 = v279.i64[0];
                                      v198 = &v269;
                                    }

                                    else
                                    {
                                      v197 = v254[v239];
                                      v198 = &v271;
                                    }
                                  }

                                  else if (++v238 == v276)
                                  {
                                    v244 = 0;
                                    v197 = v276;
                                    v198 = &v268 + 1;
                                  }

                                  else
                                  {
                                    v197 = v252[v238];
                                    v198 = &v273;
                                  }

                                  goto LABEL_287;
                                }

LABEL_289:
                                *&v268 = objc_opt_class();
                                if (HIDWORD(v237))
                                {
                                  v200 = v256;
                                  v201 = v277.i64[0];
                                  do
                                  {
                                    v272 = *v200;
                                    v202 = [v272 inverseRelationship];
                                    if (v202)
                                    {
                                      v203 = [v202 unsignedIntegerValue];
                                      v269.i64[0] = *(v249 + v203);
                                      if (objc_opt_class() != v268)
                                      {
                                        goto LABEL_327;
                                      }

                                      if (v272)
                                      {

                                        *(v272 + 14) = v269.i64[0];
                                      }
                                    }

                                    ++v200;
                                    --v201;
                                  }

                                  while (v201);
                                }

                                v288 = bswap32(v267);
                                v204 = (v288 + 3) & 0x1FFFFFFFCLL;
                                v205 = v204 + 4;
                                if (v204 + 4 <= v23)
                                {
                                  v206 = bswap32(*&BytePtr[v204]);
                                  v288 = v205;
                                }

                                else
                                {
                                  v206 = 0;
                                }

                                if (v206 == v273)
                                {
                                  if (v266)
                                  {
                                    v272 = 0;
                                    v207 = 0;
                                    v208 = 0;
                                    v269.i64[0] = v132;
                                    *&v268 = v247;
                                    while (1)
                                    {
                                      v287 = v248 - v208;
                                      v286 = v274.i64[0] - v207;
                                      if (!_readEntityIntoShellFromData(a2, BytePtr, &v288, v23, *&v117[8 * v272], v257, v249, v268, &v287, v269.i64[0], &v286, v281, v263, v258, v117, v262, v271, v295))
                                      {
                                        goto LABEL_327;
                                      }

                                      v208 += v287;
                                      if (v208 > v248)
                                      {
                                        break;
                                      }

                                      v207 += v286;
                                      if (v207 > v274.i64[0])
                                      {
                                        break;
                                      }

                                      *&v268 = v268 + 8 * v287;
                                      v269.i64[0] += 8 * v286;
                                      v272 = v272 + 1;
                                      if (v273 == v272)
                                      {
                                        goto LABEL_306;
                                      }
                                    }

                                    v232 = objc_autoreleasePoolPush();
                                    if (_NSCoreDataIsOSLogEnabled(1))
                                    {
                                      v233 = _pflogging_catastrophic_mode;
                                      LogStream = _PFLogGetLogStream(1);
                                      v235 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
                                      if (v233)
                                      {
                                        if (v235)
                                        {
                                          *buf = 0;
                                          goto LABEL_392;
                                        }
                                      }

                                      else if (v235)
                                      {
                                        *buf = 0;
LABEL_392:
                                        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Bad: decoding optimized model smashed memory. Bailing.\n", buf, 2u);
                                      }
                                    }

                                    _NSCoreDataLog_console(1, "Bad: decoding optimized model smashed memory. Bailing.", v237);
                                    objc_autoreleasePoolPop(v232);
                                    __break(1u);
                                    return;
                                  }

LABEL_306:
                                  v284 = bswap32(v264);
                                  v209 = (v284 + 3) & 0x1FFFFFFFCLL;
                                  v210 = v209 + 4;
                                  if (v209 + 4 <= v23)
                                  {
                                    v211 = bswap32(*&BytePtr[v209]);
                                    v284 = v210;
                                  }

                                  else
                                  {
                                    v211 = 0;
                                  }

                                  if (v211 == v275)
                                  {
                                    LODWORD(v272) = v265.i32[0];
                                    if (!v265.i32[0])
                                    {
LABEL_314:
                                      if (v253 >= 0x1FF)
                                      {
                                        NSZoneFree(0, v84);
                                      }

                                      if (v277.i32[0] >= 0x1FFu)
                                      {
                                        NSZoneFree(0, v256);
                                      }

                                      if (v276 >= 0x1FF)
                                      {
                                        NSZoneFree(0, v252);
                                      }

                                      if (v237)
                                      {
                                        v214 = 0;
                                        do
                                        {
                                        }

                                        while (v279.i64[0] != v214);
                                        if (v279.i32[0] >= 0x1FFu)
                                        {
                                          NSZoneFree(0, v254);
                                        }
                                      }

                                      if (v265.i32[1])
                                      {
                                        v215 = v257[1];
                                      }

                                      else
                                      {
                                        v215 = 0;
                                      }

                                      v222 = _newReadModelFromBytes(a2, BytePtr, &v294, v23, *v257, v215, v117, v250, v281, v258);
                                      if (v222 && v266)
                                      {
                                        v223 = v117;
                                        v224 = v273;
                                        do
                                        {
                                          v225 = *v223++;
                                          *(v225 + 40) = v222;
                                          --v224;
                                        }

                                        while (v224);
                                      }

                                      if (v282)
                                      {
                                        v226 = v263;
                                        v227 = v280;
                                        do
                                        {
                                          v228 = *v226++;

                                          --v227;
                                        }

                                        while (v227);
                                      }

                                      if (v272)
                                      {
                                        v229 = v250;
                                        v230 = v275;
                                        do
                                        {
                                          v231 = *v229++;

                                          --v230;
                                        }

                                        while (v230);
                                      }

                                      if (v273 >= 0x1FF)
                                      {
                                        NSZoneFree(0, v117);
                                      }

                                      if (v76 >= 0x1FF)
                                      {
                                        NSZoneFree(0, v249);
                                      }

                                      if (v275 >= 0x1FF)
                                      {
                                        NSZoneFree(0, v250);
                                      }

                                      if (v16 >= 0x201)
                                      {
                                        NSZoneFree(0, v281);
                                      }

                                      if (v260 >= 0x201)
                                      {
                                        NSZoneFree(0, v258);
                                      }

                                      if (v280 >= 0x201)
                                      {
                                        NSZoneFree(0, v263);
                                      }

                                      if (v274.i32[0] >= 0x1FFu)
                                      {
                                        NSZoneFree(0, v132);
                                      }

                                      goto LABEL_9;
                                    }

                                    v212 = v250;
                                    v213 = v275;
                                    while (_readFetchRequestIntoShellFromData(a2, BytePtr, &v284, v23, *v212, v257, v249, v281, v263, v258, v117, v262, v271, v295))
                                    {
                                      ++v212;
                                      if (!--v213)
                                      {
                                        goto LABEL_314;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

LABEL_327:
                      if (v76 >= 0x1FF)
                      {
                        NSZoneFree(0, v249);
                      }

                      v163 = v274.i32[0];
                    }

                    _PFDeallocateObjects(v132, v163);
                    if (v274.i32[0] >= 0x1FFu)
                    {
                      NSZoneFree(0, v132);
                    }

                    v160 = v248;
                  }

                  _PFDeallocateObjects(v247, v160);
                  if (v248 >= 0x1FF)
                  {
                    NSZoneFree(0, v247);
                  }

                  v157 = v273;
                }

                _PFDeallocateObjects(v117, v157);
                v154 = v275;
                if (v273 >= 0x1FF)
                {
                  NSZoneFree(0, v117);
                  v154 = v275;
                }
              }

              _PFDeallocateObjects(v250, v154);
              if (v275 >= 0x1FF)
              {
                NSZoneFree(0, v250);
              }

              v151 = v276;
            }

            _PFDeallocateObjects(v252, v151);
            v148 = v279.i32[0];
            if (v276 >= 0x1FF)
            {
              NSZoneFree(0, v252);
              v148 = v279.i32[0];
            }
          }

          _PFDeallocateObjects(v254, v148);
          if (v279.i32[0] >= 0x1FFu)
          {
            NSZoneFree(0, v254);
          }

          v145 = v277.i32[0];
        }

        _PFDeallocateObjects(v256, v145);
        if (v277.i32[0] >= 0x1FFu)
        {
          NSZoneFree(0, v256);
        }

        v142 = v261;
      }

      _PFDeallocateObjects(v251, v142);
      if (v261 >= 0x1FF)
      {
        NSZoneFree(0, v251);
      }

      _PFDeallocateObjects(v255, 0);
      v138 = v253;
      v139 = v253;
      v137 = v84;
    }

    _PFDeallocateObjects(v137, v139);
    if (v138 >= 0x1FF)
    {
      NSZoneFree(0, v84);
    }

    v216 = v280;
    v217 = v263;
    if (v282)
    {
      do
      {
        v218 = *v217++;

        --v216;
      }

      while (v216);
    }

    if (v278)
    {
      v219 = v259;
      v220 = v262;
      do
      {
        v221 = *v220++;

        --v219;
      }

      while (v219);
    }

    goto LABEL_9;
  }

  v34 = v281;
  v35 = v16;
  while (1)
  {
    v30 = _readPFEncodedStringFromData(a2, BytePtr, &v293, v23);
    if (!v30)
    {
      break;
    }

    *v34++ = v30;
    if (!--v35)
    {
      goto LABEL_23;
    }
  }

LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
}

- (id)_modelForVersionHashes:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = [(NSManagedObjectModel *)self entitiesByName];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [(NSDictionary *)v5 objectForKey:v11];
        v13 = [a3 objectForKey:v11];
        if (v12)
        {
          v14 = v13;
          if (([objc_msgSend(v12 "versionHash")] & 1) != 0 || -[NSEntityDescription _hasPotentialHashSkew](v12) && objc_msgSend(-[NSEntityDescription _newVersionHashInStyle:](v12, 1), "isEqual:", v14))
          {
            if (!v8)
            {
              v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v8 addObject:{objc_msgSend(v12, "copy")}];
          }
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (![v8 count])
  {
    v15 = 0;
    if (!v8)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v15 = [[NSManagedObjectModel alloc] _initWithEntities:v8];
  [v15 setVersionIdentifiers:{-[NSManagedObjectModel versionIdentifiers](self, "versionIdentifiers")}];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  fetchRequestTemplates = self->_fetchRequestTemplates;
  v17 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v26;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(fetchRequestTemplates);
        }

        v21 = *(*(&v25 + 1) + 8 * j);
        v22 = [(NSMutableDictionary *)self->_fetchRequestTemplates objectForKey:v21];
        if ([v8 containsObject:{objc_msgSend(v22, "entity")}])
        {
          [v15 setFetchRequestTemplate:v22 forName:v21];
        }
      }

      v18 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v18);
  }

  if (v8)
  {
LABEL_28:
  }

LABEL_29:
  v23 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)_initWithContentsOfURL:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v73 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  objc_opt_class();
  if (a3)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [a3 path];
    v66 = 0;
    v11 = [v9 fileExistsAtPath:v10 isDirectory:&v66];
    if (v11 && v66 == 1)
    {
      v12 = [[NSManagedObjectModelBundle alloc] initWithPath:v10];
      v13 = v12;
      if (v12)
      {
        v14 = [-[NSManagedObjectModelBundle optimizedVersionURL](v12 "optimizedVersionURL")];
        v10 = [-[NSManagedObjectModelBundle currentVersionURL](v13 "currentVersionURL")];
        v15 = 0;
LABEL_10:

        if (!v14)
        {
          goto LABEL_37;
        }

        v17 = [NSManagedObjectModel alloc];
        v18 = -[NSManagedObjectModel initWithContentsOfOptimizedURL:](v17, "initWithContentsOfOptimizedURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0]);
        if (v18)
        {
LABEL_58:
          v45 = [[NSValidationErrorLocalizationPolicy alloc] initWithURL:a3];
          [(NSManagedObjectModel *)v18 _setLocalizationPolicy:v45];

LABEL_76:
          [v8 drain];
          goto LABEL_77;
        }

        if (!PFUseToolchainBehaviors())
        {
          v19 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v68 = v14;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load optimized model at path '%@'\n", buf, 0xCu);
              }
            }

            else
            {
              v55 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v68 = v14;
                _os_log_impl(&dword_18565F000, v55, OS_LOG_TYPE_DEFAULT, "CoreData: annotation:  Failed to load optimized model at path '%@'\n", buf, 0xCu);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v56 = 1;
          }

          else
          {
            v56 = 4;
          }

          _NSCoreDataLog_console(v56, " Failed to load optimized model at path '%@'", v14);
          objc_autoreleasePoolPop(v19);
        }

        if (!v15 || (v57 = [v10 stringByDeletingLastPathComponent], !objc_msgSend(objc_msgSend(v57, "pathExtension"), "isEqualToString:", @"momd")))
        {
LABEL_37:
          if (!v10 || v10 == v14)
          {
LABEL_70:
            v49 = objc_autoreleasePoolPush();
            _pflogInitialize(1);
            if (_pflogging_enable_oslog >= 1)
            {
              v50 = _pflogging_catastrophic_mode == 0;
              v51 = _PFLogGetLogStream(1);
              v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
              if (v50)
              {
                if (v52)
                {
                  *buf = 138412290;
                  v68 = a3;
                  goto LABEL_93;
                }
              }

              else if (v52)
              {
                *buf = 138412290;
                v68 = a3;
LABEL_93:
                _os_log_error_impl(&dword_18565F000, v51, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load NSManagedObjectModel with URL '%@'\n", buf, 0xCu);
              }
            }

            _NSCoreDataLog_console(1, " Failed to load NSManagedObjectModel with URL '%@'", a3);
            objc_autoreleasePoolPop(v49);
            v18 = 0;
            goto LABEL_76;
          }

          v65 = 0;
          v32 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v10 options:0 error:&v65];
          if (!v65)
          {
LABEL_46:
            v64 = 0;
            if ([v32 length])
            {
              v38 = (v4 & 1) == 0;
              v39 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v32 error:&v64];
              v40 = v39;
              if (v38)
              {
                [v39 setRequiresSecureCoding:0];
              }

              else
              {
                [v39 setRequiresSecureCoding:1];
                [v40 _allowDecodingCyclesInSecureMode];
              }

              [v40 setDecodingFailurePolicy:1];
              v18 = [v40 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E695DFD8] forKey:{"setWithObject:", objc_opt_class()), @"root"}];
              if ([v40 error])
              {
                v64 = [v40 error];
              }

              if (v18)
              {

                goto LABEL_58;
              }

              v41 = objc_autoreleasePoolPush();
              _pflogInitialize(1);
              if (_pflogging_enable_oslog < 1)
              {
                goto LABEL_68;
              }

              v46 = _pflogging_catastrophic_mode == 0;
              v47 = _PFLogGetLogStream(1);
              v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
              if (v46)
              {
                if (v48)
                {
LABEL_105:
                  *buf = 138412546;
                  v68 = v10;
                  v69 = 2112;
                  v70 = v64;
                  _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load keyed archive model at path '%@' with error '%@'\n", buf, 0x16u);
                }
              }

              else if (v48)
              {
                goto LABEL_105;
              }

LABEL_68:
              _NSCoreDataLog_console(1, " Failed to load keyed archive model at path '%@' with error '%@'", v10, v64);
              goto LABEL_69;
            }

            v41 = objc_autoreleasePoolPush();
            _pflogInitialize(1);
            if (_pflogging_enable_oslog >= 1)
            {
              v42 = _pflogging_catastrophic_mode == 0;
              v43 = _PFLogGetLogStream(1);
              v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
              if (v42)
              {
                if (v44)
                {
                  *buf = 138412290;
                  v68 = v10;
                  goto LABEL_102;
                }
              }

              else if (v44)
              {
                *buf = 138412290;
                v68 = v10;
LABEL_102:
                _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: error: Unable model at path (file is zero bytes) '%@'\n", buf, 0xCu);
              }
            }

            _NSCoreDataLog_console(1, "Unable model at path (file is zero bytes) '%@'", v10);
LABEL_69:
            objc_autoreleasePoolPop(v41);

            goto LABEL_70;
          }

          v33 = objc_autoreleasePoolPush();
          _pflogInitialize(1);
          if (_pflogging_enable_oslog >= 1)
          {
            v34 = _pflogging_catastrophic_mode == 0;
            v35 = _PFLogGetLogStream(1);
            v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
            if (v34)
            {
              if (v36)
              {
LABEL_98:
                v63 = NSStringFromSelector(a2);
                *buf = 138412802;
                v68 = v63;
                v69 = 2112;
                v70 = v10;
                v71 = 2112;
                v72 = v65;
                _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: error: Failed reading data in %@ from path %@, error, %@\n", buf, 0x20u);
              }
            }

            else if (v36)
            {
              goto LABEL_98;
            }
          }

          v37 = NSStringFromSelector(a2);
          _NSCoreDataLog_console(1, "Failed reading data in %@ from path %@, error, %@", v37, v10, v65);
          objc_autoreleasePoolPop(v33);
          goto LABEL_46;
        }

        v58 = [[NSManagedObjectModelBundle alloc] initWithPath:v57];
        if (v58)
        {
          v10 = [-[NSManagedObjectModelBundle currentVersionURL](v58 "currentVersionURL")];
          goto LABEL_36;
        }

        v59 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(1))
        {
          v60 = _pflogging_catastrophic_mode == 0;
          v61 = _PFLogGetLogStream(1);
          v62 = os_log_type_enabled(v61, OS_LOG_TYPE_ERROR);
          if (v60)
          {
            if (v62)
            {
              *buf = 138412290;
              v68 = v10;
              goto LABEL_107;
            }
          }

          else if (v62)
          {
            *buf = 138412290;
            v68 = v10;
LABEL_107:
            _os_log_error_impl(&dword_18565F000, v61, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load model bundle at path '%@'\n", buf, 0xCu);
          }
        }

        _NSCoreDataLog_console(1, " Failed to load model bundle at path '%@'", v10);
        objc_autoreleasePoolPop(v59);
        goto LABEL_37;
      }

      v25 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_66;
      }

      v29 = _pflogging_catastrophic_mode == 0;
      v30 = _PFLogGetLogStream(1);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        if (v31)
        {
          *buf = 138412290;
          v68 = v10;
          goto LABEL_104;
        }
      }

      else if (v31)
      {
        *buf = 138412290;
        v68 = v10;
LABEL_104:
        _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load model bundle at path '%@'\n", buf, 0xCu);
      }

LABEL_66:
      _NSCoreDataLog_console(1, " Failed to load model bundle at path '%@'", v10);
      goto LABEL_35;
    }

    v15 = [objc_msgSend(v10 "pathExtension")];
    v16 = v11 | v15;
    if (v15)
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    if (v16)
    {
      goto LABEL_10;
    }

    v25 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v26 = _pflogging_catastrophic_mode == 0;
      v27 = _PFLogGetLogStream(1);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (v26)
      {
        if (v28)
        {
          *buf = 138412290;
          v68 = v10;
          goto LABEL_97;
        }
      }

      else if (v28)
      {
        *buf = 138412290;
        v68 = v10;
LABEL_97:
        _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load model as no file exists at path '%@'\n", buf, 0xCu);
      }
    }

    _NSCoreDataLog_console(1, " Failed to load model as no file exists at path '%@'", v10);
LABEL_35:
    objc_autoreleasePoolPop(v25);

LABEL_36:
    v14 = 0;
    goto LABEL_37;
  }

  v21 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v22 = _pflogging_catastrophic_mode;
    v23 = _PFLogGetLogStream(1);
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v22)
    {
      if (v24)
      {
        *buf = 0;
LABEL_95:
        _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error:  Cannot load NSManagedObjectModel.  nil is an illegal URL parameter\n", buf, 2u);
      }
    }

    else if (v24)
    {
      *buf = 0;
      goto LABEL_95;
    }
  }

  _NSCoreDataLog_console(1, " Cannot load NSManagedObjectModel.  nil is an illegal URL parameter");
  objc_autoreleasePoolPop(v21);
  if (BYTE2(dword_1ED4BEEC0) == 1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"CoreData: Cannot load NSManagedObjectModel.  nil is an illegal URL parameter" userInfo:0]);
  }

  v18 = 0;
LABEL_77:
  v53 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (int64_t)_debugOptimizedModelLayout
{
  if (qword_1ED4BEA58 != -1)
  {
    dispatch_once(&qword_1ED4BEA58, &__block_literal_global_8);
  }

  return _MergedGlobals_75;
}

uint64_t __70__NSManagedObjectModel__NSInternalMethods___debugOptimizedModelLayout__block_invoke()
{
  result = [_PFRoutines integerValueForOverride:?];
  _MergedGlobals_75 = result;
  return result;
}

- (id)immutableCopy
{
  if ((*&self->_managedObjectModelFlags & 2) != 0)
  {

    return self;
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [(NSManagedObjectModel *)self copy];
    [v4 _createCachesAndOptimizeState];
    objc_autoreleasePoolPop(v3);
    return v4;
  }
}

- (id)_entityVersionHashesDigestFrom:(id)result
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    memset(&c, 0, sizeof(c));
    CC_SHA512_Init(&c);
    v3 = objc_autoreleasePoolPush();
    v4 = [objc_msgSend(a2 "allKeys")];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          v10 = [a2 objectForKey:v9];
          v11 = [v9 UTF8String];
          v12 = strlen(v11);
          CC_SHA512_Update(&c, v11, v12);
          LODWORD(v11) = [v10 length];
          [v10 getBytes:data length:v11];
          CC_SHA512_Update(&c, data, v11);
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v6);
    }

    CC_SHA512_Final(md, &c);
    v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:64];
    v14 = [v13 base64EncodedStringWithOptions:0];

    objc_autoreleasePoolPop(v3);
    result = v14;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_entityVersionHashesDigest
{
  if (result)
  {
    v1 = result;
    v2 = [(NSManagedObjectModel *)result _entityVersionHashesByNameInStyle:?];

    return [(NSManagedObjectModel *)v1 _entityVersionHashesDigestFrom:v2];
  }

  return result;
}

- (id)_initWithEntities:(id)a3
{
  objc_opt_class();
  objc_opt_class();
  v10.receiver = self;
  v10.super_class = NSManagedObjectModel;
  v5 = [(NSManagedObjectModel *)&v10 init];
  v6 = v5;
  if (v5)
  {
    *&v5->_managedObjectModelFlags &= 0xFFFFFFFC;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6->_configurations = 0;
    v6->_fetchRequestTemplates = 0;
    v6->_entities = v7;
    v6->_versionIdentifiers = objc_alloc_init(MEMORY[0x1E695DFD8]);
    v8 = PF_CALLOC_OBJECT_ARRAY(4);
    v6->_additionalPrivateIvars = v8;
    *v8 = 0;
    *(v6->_additionalPrivateIvars + 3) = 0;
    *(v6->_additionalPrivateIvars + 1) = 0;
    *(v6->_additionalPrivateIvars + 2) = 0;
    if (a3)
    {
      [(NSManagedObjectModel *)v6 setEntities:a3];
    }
  }

  return v6;
}

- (void)_flattenProperties
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NSMutableDictionary *)self->_entities allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) _flattenProperties];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_hasEntityWithDerivedAttribute
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = *(result + 32);
    result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (result)
    {
      v3 = result;
      v4 = *v8;
      while (2)
      {
        v5 = 0;
        do
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v2);
          }

          if (-[NSEntityDescription _hasDerivedAttributes]([*(v1 + 32) objectForKey:*(*(&v7 + 1) + 8 * v5)]))
          {
            result = 1;
            goto LABEL_12;
          }

          ++v5;
        }

        while (v3 != v5);
        result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
        v3 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_traverseTombstonesAndMark:(uint64_t)a1
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 64) & 0x10) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = *(a1 + 32);
    v20 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v20)
    {
      v5 = 0;
      v19 = *v40;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v6 = [*(a1 + 32) objectForKey:*(*(&v39 + 1) + 8 * i)];
          v7 = [objc_msgSend(v6 "userInfo")];
          v8 = v7;
          if (v7)
          {
            if ([v7 isNSString])
            {
              if ([v8 length])
              {
                v22 = [v8 componentsSeparatedByString:{@", "}];
                v37 = 0u;
                v38 = 0u;
                v35 = 0u;
                v36 = 0u;
                v9 = [v22 countByEnumeratingWithState:&v35 objects:v45 count:16];
                if (v9)
                {
                  v10 = *v36;
                  do
                  {
                    for (j = 0; j != v9; ++j)
                    {
                      if (*v36 != v10)
                      {
                        objc_enumerationMutation(v22);
                      }

                      if (v6)
                      {
                        v12 = *(*(&v35 + 1) + 8 * j);
                        v13 = v6;
                        do
                        {
                          if (!-[NSEntityDescription _attributeNamed:]([v13 superentity], v12))
                          {
                            [-[NSEntityDescription _attributeNamed:](v13 v12)];
                            v44[0] = v13;
                            v44[1] = v12;
                            [v4 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v44, 2)}];
                            v13 = 0;
                            v5 = 1;
                          }

                          v13 = [v13 superentity];
                        }

                        while (v13);
                      }
                    }

                    v9 = [v22 countByEnumeratingWithState:&v35 objects:v45 count:16];
                  }

                  while (v9);
                }
              }
            }
          }
        }

        v20 = [obj countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v20);
      if (v5)
      {
        v29 = 0;
        v30 = &v29;
        v31 = 0x3052000000;
        v32 = __Block_byref_object_copy__14;
        v33 = __Block_byref_object_dispose__14;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __71__NSManagedObjectModel__NSInternalMethods___traverseTombstonesAndMark___block_invoke;
        v27[3] = &unk_1E6EC27D0;
        v28 = a2;
        v27[4] = &v29;
        v34 = v27;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = [v4 countByEnumeratingWithState:&v23 objects:v43 count:16];
        if (v14)
        {
          v15 = *v24;
          do
          {
            for (k = 0; k != v14; ++k)
            {
              if (*v24 != v15)
              {
                objc_enumerationMutation(v4);
              }

              (*(v30[5] + 16))(v30[5], [*(*(&v23 + 1) + 8 * k) objectAtIndexedSubscript:0], objc_msgSend(*(*(&v23 + 1) + 8 * k), "objectAtIndexedSubscript:", 1));
            }

            v14 = [v4 countByEnumeratingWithState:&v23 objects:v43 count:16];
          }

          while (v14);
        }

        _Block_object_dispose(&v29, 8);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __71__NSManagedObjectModel__NSInternalMethods___traverseTombstonesAndMark___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  [-[NSEntityDescription _attributeNamed:](a2 a3)];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a2 subentities];
  result = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
        ++v9;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = result;
    }

    while (result);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_setIsEditable:(BOOL)a3 optimizationStyle:(unint64_t)a4
{
  v5 = a3;
  v21 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v7 = objc_autoreleasePoolPush();
  managedObjectModelFlags = self->_managedObjectModelFlags;
  if ((*&managedObjectModelFlags ^ v5))
  {
    if (BYTE6(z9dsptsiQ80etb9782fsrs98bfdle88) == 1)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      fetchRequestTemplates = self->_fetchRequestTemplates;
      v10 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(fetchRequestTemplates);
            }

            v13 = [(NSMutableDictionary *)self->_fetchRequestTemplates objectForKey:*(*(&v16 + 1) + 8 * i)];
            [v13 allowEvaluation];
            [v13 _incrementInUseCounter];
          }

          v10 = [(NSMutableDictionary *)fetchRequestTemplates countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }
  }

  else
  {
    if (*&managedObjectModelFlags)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Models cannot become mutable after being marked immutable." userInfo:0]);
    }

    v14 = *&managedObjectModelFlags | !v5;
    if (a4)
    {
      v14 |= 4u;
    }

    self->_managedObjectModelFlags = v14;
    [(NSManagedObjectModel *)self _traverseTombstonesAndMark:?];
    [(NSManagedObjectModel *)self _createCachesAndOptimizeState];
  }

  objc_autoreleasePoolPop(v7);
  objc_sync_exit(self);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)_setLocalizationPolicy:(id)a3
{
  v3 = *self->_additionalPrivateIvars;
  if (v3 != a3)
  {

    *self->_additionalPrivateIvars = a3;
  }
}

- (void)_sortedEntitiesForConfiguration:(void *)result
{
  if (result)
  {
    v2 = [result entitiesForConfiguration:a2];
    v3 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"name" ascending:1 selector:sel_caseInsensitiveCompare_];
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v3, 0}];
    v5 = [v2 sortedArrayUsingDescriptors:v4];

    return v5;
  }

  return result;
}

- (id)_entitiesByVersionHash
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = [result entities];
    v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(v1);
          }

          [v2 setObject:*(*(&v8 + 1) + 8 * v6) forKey:{objc_msgSend(*(*(&v8 + 1) + 8 * v6), "versionHash")}];
          ++v6;
        }

        while (v4 != v6);
        v4 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    result = v2;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_stripForMigration
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NSManagedObjectModel *)self entities];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) _stripForMigration];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_restoreValidation
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NSManagedObjectModel *)self entities];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) _restoreValidation];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_setModelsReferenceIDOffset:(int64_t)a3
{
  if (a3 < 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot assign a negative reference ID offset to a managed object model." userInfo:0]);
  }

  if ([self->_additionalPrivateIvars[1] longValue] != a3)
  {

    *(self->_additionalPrivateIvars + 1) = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:a3];
  }
}

@end