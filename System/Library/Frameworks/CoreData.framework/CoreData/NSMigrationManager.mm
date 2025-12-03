@interface NSMigrationManager
+ (uint64_t)_performSanityCheckForMapping:(void *)mapping fromSourceModel:(void *)model toDestinationModel:;
- (BOOL)migrateStoreFromURL:(NSURL *)sourceURL type:(NSString *)sStoreType options:(NSDictionary *)sOptions withMappingModel:(NSMappingModel *)mappings toDestinationURL:(NSURL *)dURL destinationType:(NSString *)dStoreType destinationOptions:(NSDictionary *)dOptions error:(NSError *)error;
- (NSArray)destinationInstancesForEntityMappingNamed:(NSString *)mappingName sourceInstances:(NSArray *)sourceInstances;
- (NSArray)sourceInstancesForEntityMappingNamed:(NSString *)mappingName destinationInstances:(NSArray *)destinationInstances;
- (NSEntityDescription)destinationEntityForEntityMapping:(NSEntityMapping *)mEntity;
- (NSEntityDescription)sourceEntityForEntityMapping:(NSEntityMapping *)mEntity;
- (NSEntityMapping)currentEntityMapping;
- (NSMigrationManager)initWithSourceModel:(NSManagedObjectModel *)sourceModel destinationModel:(NSManagedObjectModel *)destinationModel;
- (float)migrationProgress;
- (id)currentPropertyMapping;
- (id)destinationInstancesForSourceRelationshipNamed:(id)named sourceInstances:(id)instances;
- (uint64_t)_validateAllObjectsAfterMigration:(void *)migration;
- (void)_doCleanupOnFailure:(id *)failure;
- (void)associateSourceInstance:(NSManagedObject *)sourceInstance withDestinationInstance:(NSManagedObject *)destinationInstance forEntityMapping:(NSEntityMapping *)entityMapping;
- (void)cancelMigrationWithError:(NSError *)error;
- (void)dealloc;
- (void)setUserInfo:(NSDictionary *)userInfo;
- (void)setUsesStoreSpecificMigrationManager:(BOOL)usesStoreSpecificMigrationManager;
@end

@implementation NSMigrationManager

- (NSMigrationManager)initWithSourceModel:(NSManagedObjectModel *)sourceModel destinationModel:(NSManagedObjectModel *)destinationModel
{
  v12.receiver = self;
  v12.super_class = NSMigrationManager;
  v6 = [(NSMigrationManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    if (!sourceModel || !destinationModel)
    {

      if (sourceModel)
      {
        v11 = @"Cannot create an NSMigrationManager with a nil destination model";
      }

      else
      {
        v11 = @"Cannot create an NSMigrationManager with a nil source model";
      }

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v11 userInfo:0]);
    }

    v8 = [(NSManagedObjectModel *)sourceModel copy];
    v7->_sourceModel = v8;
    if ((*&sourceModel->_managedObjectModelFlags & 0x10) != 0 && v8)
    {
      *&v8->_managedObjectModelFlags |= 0x10u;
      v8 = v7->_sourceModel;
    }

    v7->_sourceEntitiesByVersionHash = [(NSManagedObjectModel *)v8 _entitiesByVersionHash];
    [(NSManagedObjectModel *)v7->_sourceModel _stripForMigration];
    v9 = [(NSManagedObjectModel *)destinationModel copy];
    v7->_destinationModel = v9;
    v7->_destinationEntitiesByVersionHash = [(NSManagedObjectModel *)v9 _entitiesByVersionHash];
    [(NSManagedObjectModel *)v7->_destinationModel _stripForMigration];
    v7->_migrationManagerFlags = (*&v7->_migrationManagerFlags & 0xFFFFFFFC | (2 * BYTE2(z9dsptsiQ80etb9782fsrs98bfdle88)));
    v7->_destinationConfigurationForCloudKitValidation = 0;
  }

  return v7;
}

- (void)dealloc
{
  [NSMigrationManager _doCleanupOnFailure:?];

  self->_sourceModel = 0;
  self->_sourceEntitiesByVersionHash = 0;

  self->_destinationModel = 0;
  self->_destinationEntitiesByVersionHash = 0;

  self->_userInfo = 0;
  self->_destinationConfigurationForCloudKitValidation = 0;
  v3.receiver = self;
  v3.super_class = NSMigrationManager;
  [(NSMigrationManager *)&v3 dealloc];
}

- (void)_doCleanupOnFailure:(id *)failure
{
  if (failure)
  {

    failure[6] = 0;
    failure[7] = 0;

    failure[8] = 0;
    failure[5] = 0;

    failure[13] = 0;
  }
}

- (BOOL)migrateStoreFromURL:(NSURL *)sourceURL type:(NSString *)sStoreType options:(NSDictionary *)sOptions withMappingModel:(NSMappingModel *)mappings toDestinationURL:(NSURL *)dURL destinationType:(NSString *)dStoreType destinationOptions:(NSDictionary *)dOptions error:(NSError *)error
{
  v138 = *MEMORY[0x1E69E9840];
  v104 = [(_PFBackgroundRuntimeVoucher *)_PFRunningBoardBackgroundMigrationVoucher _beginPowerAssertionNamed:@"CoreData: Schema migration (manager)"];
  selfCopy = self;
  v15 = objc_opt_class();
  if (v15 == objc_opt_class() && [(NSMigrationManager *)self usesStoreSpecificMigrationManager]&& [(NSString *)sStoreType isEqualToString:dStoreType])
  {
    sStoreType = [(NSDictionary *)+[NSPersistentStoreCoordinator registeredStoreTypes](NSPersistentStoreCoordinator objectForKey:"objectForKey:", sStoreType];
    if (objc_opt_class() != sStoreType)
    {
      if (![sStoreType isNSValue])
      {
        goto LABEL_21;
      }

      sStoreType = [sStoreType pointerValue];
    }

    if (sStoreType)
    {
      migrationManagerClass = [sStoreType migrationManagerClass];
      if (objc_opt_respondsToSelector())
      {
        v18 = [migrationManagerClass _canMigrateWithMappingModel:mappings];
        if (migrationManagerClass)
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        if ((v19 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else if (!migrationManagerClass)
      {
        goto LABEL_21;
      }

      if (migrationManagerClass != objc_opt_class())
      {
        v20 = [[migrationManagerClass alloc] initWithSourceModel:-[NSMigrationManager sourceModel](self destinationModel:{"sourceModel"), -[NSMigrationManager destinationModel](self, "destinationModel")}];
        [v20 setDestinationConfigurationForCloudKitValidation:{-[NSMigrationManager destinationConfigurationForCloudKitValidation](self, "destinationConfigurationForCloudKitValidation")}];
        sourceModel = [(NSMigrationManager *)self sourceModel];
        if (sourceModel)
        {
          if ((*&sourceModel->_managedObjectModelFlags & 0x10) != 0)
          {
            sourceModel2 = [v20 sourceModel];
            if (sourceModel2)
            {
              *(sourceModel2 + 64) |= 0x10u;
            }
          }
        }

        v23 = [v20 migrateStoreFromURL:sourceURL type:sStoreType options:sOptions withMappingModel:mappings toDestinationURL:dURL destinationType:dStoreType destinationOptions:dOptions error:error];

        goto LABEL_148;
      }
    }
  }

LABEL_21:
  if (!self)
  {
    goto LABEL_131;
  }

  if (([NSMigrationManager _performSanityCheckForMapping:[(NSMigrationManager *)self sourceModel] fromSourceModel:[(NSMigrationManager *)self destinationModel] toDestinationModel:?]& 1) == 0)
  {
    v96 = MEMORY[0x1E695DF30];
    v97 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{-[NSMigrationManager sourceModel](self, "sourceModel"), @"sourceModel", -[NSMigrationManager destinationModel](self, "destinationModel"), @"destinationModel", mappings, @"mappingModel", 0}];
    objc_exception_throw([v96 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Mismatch between mapping and source/destination models" userInfo:v97]);
  }

  self->_mappingModel = mappings;
  self->_migrationContext = [[NSMigrationContext alloc] initWithMigrationManager:self];
  v124 = 0;
  v24 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[(NSMigrationManager *)self sourceModel]];
  v25 = [[NSManagedObjectContext alloc] initWithConcurrencyType:3];
  self->_sourceManagedObjectContext = v25;
  [(NSManagedObjectContext *)v25 setPersistentStoreCoordinator:v24];
  [(NSManagedObjectContext *)self->_sourceManagedObjectContext setUndoManager:0];

  if (!sOptions)
  {
    v27 = objc_alloc(MEMORY[0x1E695DF20]);
    v26 = [v27 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", 1), @"NSReadOnlyPersistentStoreOption", 0}];
    goto LABEL_27;
  }

  if ([(NSDictionary *)sOptions objectForKey:@"NSReadOnlyPersistentStoreOption"])
  {
    v26 = sOptions;
LABEL_27:
    v28 = v26;
    goto LABEL_29;
  }

  v28 = [(NSDictionary *)sOptions mutableCopy];
  -[NSDictionary setObject:forKey:](v28, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithBool:1], @"NSReadOnlyPersistentStoreOption");
LABEL_29:
  v29 = [(NSPersistentStoreCoordinator *)v24 addPersistentStoreWithType:sStoreType configuration:0 URL:sourceURL options:v28 error:&v124];

  if (!v29)
  {
    if (error)
    {
      v35 = MEMORY[0x1E696ABC0];
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Can't add source store", @"reason", v124, *MEMORY[0x1E696AA08], 0}];
LABEL_129:
      *error = [v35 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v36];
    }

LABEL_130:
    [NSMigrationManager _doCleanupOnFailure:?];
    goto LABEL_131;
  }

  v30 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[(NSMigrationManager *)self destinationModel]];
  v31 = [[NSManagedObjectContext alloc] initWithConcurrencyType:3];
  self->_destinationManagedObjectContext = v31;
  [(NSManagedObjectContext *)v31 setPersistentStoreCoordinator:v30];
  [(NSManagedObjectContext *)self->_destinationManagedObjectContext setUndoManager:0];

  if (dOptions)
  {
    v32 = [(NSDictionary *)dOptions objectForKey:@"NSSQLitePragmasOption"];
    v33 = v32;
    if (v32)
    {
      if ([v32 objectForKey:@"journal_mode]"])
      {
        v34 = dOptions;
      }

      else
      {
        v34 = [(NSDictionary *)dOptions mutableCopy];
        v41 = [v33 mutableCopy];
        [v41 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"journal_mode"}];
        [(NSDictionary *)v34 setObject:v41 forKey:@"NSSQLitePragmasOption"];
      }
    }

    else
    {
      v34 = [(NSDictionary *)dOptions mutableCopy];
      v39 = objc_alloc(MEMORY[0x1E695DF20]);
      v40 = [v39 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"journal_mode", 0}];
      [(NSDictionary *)v34 setObject:v40 forKey:@"NSSQLitePragmasOption"];
    }
  }

  else
  {
    v37 = objc_alloc(MEMORY[0x1E695DF20]);
    v38 = [v37 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"journal_mode", 0}];
    v34 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v38, @"NSSQLitePragmasOption", 0}];
  }

  v100 = [(NSPersistentStoreCoordinator *)v30 addPersistentStoreWithType:dStoreType configuration:0 URL:dURL options:v34 error:&v124];

  if (!v100)
  {
    if (error)
    {
      v35 = MEMORY[0x1E696ABC0];
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Can't add destination store", @"reason", v124, *MEMORY[0x1E696AA08], 0}];
      goto LABEL_129;
    }

    goto LABEL_130;
  }

  v123[0] = MEMORY[0x1E69E9820];
  v123[1] = 3221225472;
  v123[2] = __148__NSMigrationManager_InternalMethods___migrateStoreFromURL_type_options_withMappingModel_toDestinationURL_destinationType_destinationOptions_error___block_invoke;
  v123[3] = &unk_1E6EC2920;
  v123[4] = v30;
  v123[5] = v29;
  v123[6] = v100;
  v123[7] = self;
  [(NSPersistentStoreCoordinator *)v30 performBlockAndWait:v123];
  entityMappings = [(NSMappingModel *)mappings entityMappings];
  v99 = v29;
  v122 = 0;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v43 = selfCopy;
  v44 = [(NSArray *)entityMappings countByEnumeratingWithState:&v118 objects:v136 count:16];
  if (!v44)
  {
    goto LABEL_74;
  }

  v45 = *v119;
  v101 = *MEMORY[0x1E696A250];
  v46 = 0x1E696A000uLL;
  obja = entityMappings;
  do
  {
    for (i = 0; i != v44; ++i)
    {
      if (*v119 != v45)
      {
        objc_enumerationMutation(obja);
      }

      v48 = *(*(&v118 + 1) + 8 * i);
      v110 = objc_alloc_init(*(v46 + 2760));
      _migrationPolicy = [(NSEntityMapping *)v48 _migrationPolicy];
      if (![(NSEntityMigrationPolicy *)_migrationPolicy beginEntityMapping:v48 manager:v43 error:&v122])
      {
        v55 = 0;
LABEL_60:
        LOBYTE(v126) = 0;
        v56 = 1;
        goto LABEL_67;
      }

      if (*&v43->_migrationManagerFlags)
      {
        v55 = 1;
        v122 = v43->_migrationCancellationError;
        goto LABEL_60;
      }

      [(NSMigrationContext *)v43->_migrationContext setCurrentEntityMapping:v48];
      v50 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:8];
      [v50 setValue:selfCopy forKey:@"manager"];
      [v50 setValue:v48 forKey:@"entityMapping"];
      [v50 setValue:_migrationPolicy forKey:@"entityPolicy"];
      v51 = [-[NSEntityMigrationPolicy sourceExpression](v48 "sourceExpression")];

      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v52 = [v51 countByEnumeratingWithState:&v132 objects:v137 count:16];
      if (v52)
      {
        v53 = *v133;
        while (2)
        {
          for (j = 0; j != v52; ++j)
          {
            if (*v133 != v53)
            {
              objc_enumerationMutation(v51);
            }

            if (![(NSEntityMigrationPolicy *)_migrationPolicy createDestinationInstancesForSourceInstance:*(*(&v132 + 1) + 8 * j) entityMapping:v48 manager:selfCopy error:&v122])
            {
              v55 = 0;
              goto LABEL_64;
            }

            if (*&selfCopy->_migrationManagerFlags)
            {
              v122 = selfCopy->_migrationCancellationError;
              LOBYTE(v126) = 0;
              v56 = 1;
              v55 = 1;
              goto LABEL_65;
            }
          }

          v52 = [v51 countByEnumeratingWithState:&v132 objects:v137 count:16];
          if (v52)
          {
            continue;
          }

          break;
        }
      }

      v55 = [(NSEntityMigrationPolicy *)_migrationPolicy endInstanceCreationForEntityMapping:v48 manager:selfCopy error:&v122];
      v43 = selfCopy;
      if (*&selfCopy->_migrationManagerFlags)
      {
        v122 = selfCopy->_migrationCancellationError;
LABEL_64:
        LOBYTE(v126) = 0;
        v56 = 1;
LABEL_65:
        v43 = selfCopy;
      }

      else
      {
        v56 = 0;
      }

      v46 = 0x1E696A000;
LABEL_67:

      if ((v56 | 2) == 2)
      {
        if (!v55)
        {
          goto LABEL_132;
        }
      }

      else if ((v126 & 1) == 0)
      {
LABEL_132:
        v73 = v110;
        v86 = v122;
LABEL_134:
        [NSMigrationManager _doCleanupOnFailure:?];
LABEL_138:
        v125 = 0;
        if (v73)
        {
          [v73 drain];
        }

        v85 = 0;
        goto LABEL_141;
      }

      v124 = 0;
      if (![(NSManagedObjectContext *)v43->_destinationManagedObjectContext save:&v124])
      {
        v73 = v110;
        v122 = [MEMORY[0x1E696ABC0] errorWithDomain:v101 code:134110 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Failed to save new store after first pass of migration.", @"reason", v124, *MEMORY[0x1E696AA08], 0)}];
        goto LABEL_134;
      }

      [v110 drain];
    }

    entityMappings = obja;
    v44 = [(NSArray *)obja countByEnumeratingWithState:&v118 objects:v136 count:16];
  }

  while (v44);
LABEL_74:
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v57 = [(NSArray *)entityMappings countByEnumeratingWithState:&v114 objects:&v132 count:16];
  if (!v57)
  {
    goto LABEL_105;
  }

  v103 = *v115;
  v98 = *MEMORY[0x1E696A250];
  objb = entityMappings;
  while (2)
  {
    v58 = 0;
    v102 = v57;
    while (2)
    {
      if (*v115 != v103)
      {
        objc_enumerationMutation(objb);
      }

      v59 = *(*(&v114 + 1) + 8 * v58);
      v105 = v58;
      v111 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v130 = 0;
      _migrationPolicy2 = [(NSEntityMapping *)v59 _migrationPolicy];
      [(NSMigrationContext *)v43->_migrationContext setCurrentEntityMapping:v59];
      v61 = [(NSMigrationContext *)&v43->_migrationContext->super.isa destinationInstancesForEntityMapping:v59 sourceInstance:0];
      v128 = 0u;
      v129 = 0u;
      v126 = 0u;
      v127 = 0u;
      v62 = [v61 countByEnumeratingWithState:&v126 objects:v137 count:16];
      if (v62)
      {
        v63 = *v127;
LABEL_81:
        v64 = 0;
        while (1)
        {
          if (*v127 != v63)
          {
            objc_enumerationMutation(v61);
          }

          v65 = *(*(&v126 + 1) + 8 * v64);
          v66 = objc_alloc_init(MEMORY[0x1E696AAC8]);
          if (![(NSEntityMigrationPolicy *)_migrationPolicy2 createRelationshipsForDestinationInstance:v65 entityMapping:v59 manager:selfCopy error:&v130])
          {
            break;
          }

          if (*&selfCopy->_migrationManagerFlags)
          {
            v70 = 1;
            v57 = v102;
            v130 = selfCopy->_migrationCancellationError;
            goto LABEL_93;
          }

          [v66 drain];
          if (v62 == ++v64)
          {
            v62 = [v61 countByEnumeratingWithState:&v126 objects:v137 count:16];
            v57 = v102;
            if (v62)
            {
              goto LABEL_81;
            }

            goto LABEL_88;
          }
        }

        v57 = v102;
        v71 = v130;
        v70 = 0;
LABEL_93:
        v131 = 0;
        v69 = 1;
        goto LABEL_96;
      }

LABEL_88:
      v67 = [(NSEntityMigrationPolicy *)_migrationPolicy2 endRelationshipCreationForEntityMapping:v59 manager:selfCopy error:&v130];
      v68 = v67;
      if (*&selfCopy->_migrationManagerFlags)
      {
        v66 = 0;
        v130 = selfCopy->_migrationCancellationError;
        v131 = 0;
        v69 = 1;
        v70 = v68;
      }

      else if (v67)
      {
        v66 = 0;
        v69 = 0;
        v70 = 1;
      }

      else
      {
        v72 = v130;
        v66 = 0;
        v69 = 0;
        v70 = 0;
      }

LABEL_96:
      v73 = v111;

      if (v66)
      {
        [v66 drain];
      }

      v122 = v130;
      v74 = v130;
      v75 = 0;
      if ((v69 | 2) != 2)
      {
        v43 = selfCopy;
        if (v131)
        {
          goto LABEL_102;
        }

LABEL_135:
        v87 = v122;
        goto LABEL_137;
      }

      v43 = selfCopy;
      if ((v70 & 1) == 0)
      {
        goto LABEL_135;
      }

LABEL_102:
      v124 = 0;
      if (![(NSManagedObjectContext *)v43->_destinationManagedObjectContext save:&v124])
      {
        v122 = [MEMORY[0x1E696ABC0] errorWithDomain:v98 code:134110 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Failed to save new store after second pass of migration.", @"reason", v124, *MEMORY[0x1E696AA08], 0)}];
LABEL_137:
        [NSMigrationManager _doCleanupOnFailure:?];
        goto LABEL_138;
      }

      [v111 drain];
      ++v58;
      if (v105 + 1 != v57)
      {
        continue;
      }

      break;
    }

    entityMappings = objb;
    v57 = [(NSArray *)objb countByEnumeratingWithState:&v114 objects:&v132 count:16];
    if (v57)
    {
      continue;
    }

    break;
  }

LABEL_105:
  [(NSManagedObjectModel *)[(NSMigrationManager *)v43 sourceModel] _restoreValidation];
  [(NSManagedObjectModel *)[(NSMigrationManager *)v43 destinationModel] _restoreValidation];
  if (([(NSMigrationManager *)v43 _validateAllObjectsAfterMigration:?]& 1) != 0)
  {
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v76 = [(NSArray *)entityMappings countByEnumeratingWithState:&v126 objects:v137 count:16];
    if (!v76)
    {
      v85 = 1;
      goto LABEL_141;
    }

    v77 = *v127;
    v112 = *MEMORY[0x1E696A250];
LABEL_108:
    v78 = 0;
    while (1)
    {
      if (*v127 != v77)
      {
        objc_enumerationMutation(entityMappings);
      }

      v79 = *(*(&v126 + 1) + 8 * v78);
      v80 = 1;
      _migrationPolicy3 = [(NSEntityMapping *)v79 _migrationPolicy];
      [(NSMigrationContext *)selfCopy->_migrationContext setCurrentEntityMapping:v79];
      if (![(NSEntityMigrationPolicy *)_migrationPolicy3 performCustomValidationForEntityMapping:v79 manager:selfCopy error:&v122])
      {
        break;
      }

      if ((*&selfCopy->_migrationManagerFlags & 1) == 0)
      {
        v82 = [NSEntityMigrationPolicy endEntityMapping:_migrationPolicy3 manager:"endEntityMapping:manager:error:" error:v79];
        if (*&selfCopy->_migrationManagerFlags)
        {
          v122 = selfCopy->_migrationCancellationError;
          LOBYTE(v130) = 0;
          v83 = 1;
        }

        else
        {
          v83 = 0;
        }

        v80 = v82;
        goto LABEL_119;
      }

      v122 = selfCopy->_migrationCancellationError;
      LOBYTE(v130) = 0;
      v84 = _migrationPolicy3;
      v83 = 1;
LABEL_120:

      if ((v83 | 2) == 2)
      {
        if ((v80 & 1) == 0)
        {
          goto LABEL_151;
        }
      }

      else if ((v130 & 1) == 0)
      {
LABEL_151:
        v43 = selfCopy;
        v95 = v122;
        [NSMigrationManager _doCleanupOnFailure:?];
        goto LABEL_152;
      }

      if (v76 == ++v78)
      {
        v76 = [(NSArray *)entityMappings countByEnumeratingWithState:&v126 objects:v137 count:16];
        v85 = 1;
        v43 = selfCopy;
        if (v76)
        {
          goto LABEL_108;
        }

        goto LABEL_141;
      }
    }

    v80 = 0;
    LOBYTE(v130) = 0;
    v83 = 1;
LABEL_119:
    v84 = _migrationPolicy3;
    goto LABEL_120;
  }

  v94 = v122;
  [NSMigrationManager _doCleanupOnFailure:?];
LABEL_152:
  v85 = 0;
  v125 = 0;
LABEL_141:
  v88 = v122;
  if (error && v122)
  {
    *error = v122;
  }

  v89 = v88;
  if ((v85 & 1) == 0)
  {
    v23 = v125;
    goto LABEL_148;
  }

  v124 = 0;
  if ([(NSManagedObjectContext *)v43->_destinationManagedObjectContext save:&v124])
  {

    selfCopy->_mappingModel = 0;
    [(NSPersistentStoreCoordinator *)[(NSManagedObjectContext *)selfCopy->_destinationManagedObjectContext persistentStoreCoordinator] removePersistentStore:v100 error:0];
    [(NSPersistentStoreCoordinator *)[(NSManagedObjectContext *)selfCopy->_sourceManagedObjectContext persistentStoreCoordinator] removePersistentStore:v99 error:0];
    [NSMigrationManager _doCleanupOnFailure:?];
    v23 = 1;
    goto LABEL_148;
  }

  v92 = MEMORY[0x1E696ABC0];
  v93 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to save new store.", @"reason", v124, *MEMORY[0x1E696AA08], 0}];
  *error = [v92 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v93];
  [NSMigrationManager _doCleanupOnFailure:?];
LABEL_131:
  v23 = 0;
LABEL_148:
  [(_PFBackgroundRuntimeVoucher *)_PFRunningBoardBackgroundMigrationVoucher _endPowerAssertionWithVoucher:v104];
  v90 = *MEMORY[0x1E69E9840];
  return v23 & 1;
}

- (NSEntityDescription)sourceEntityForEntityMapping:(NSEntityMapping *)mEntity
{
  sourceEntitiesByVersionHash = self->_sourceEntitiesByVersionHash;
  sourceEntityVersionHash = [(NSEntityMapping *)mEntity sourceEntityVersionHash];

  return [(NSDictionary *)sourceEntitiesByVersionHash objectForKey:sourceEntityVersionHash];
}

- (NSEntityDescription)destinationEntityForEntityMapping:(NSEntityMapping *)mEntity
{
  destinationEntitiesByVersionHash = self->_destinationEntitiesByVersionHash;
  destinationEntityVersionHash = [(NSEntityMapping *)mEntity destinationEntityVersionHash];

  return [(NSDictionary *)destinationEntitiesByVersionHash objectForKey:destinationEntityVersionHash];
}

- (void)associateSourceInstance:(NSManagedObject *)sourceInstance withDestinationInstance:(NSManagedObject *)destinationInstance forEntityMapping:(NSEntityMapping *)entityMapping
{
  if (!entityMapping)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Manager requires an entity mapping for associations" userInfo:{v5, v6}]);
  }

  if (self)
  {
    self = self->_migrationContext;
  }

  [(NSMigrationContext *)self associateSourceInstance:destinationInstance withDestinationInstance:entityMapping forEntityMapping:?];
}

- (NSArray)destinationInstancesForEntityMappingNamed:(NSString *)mappingName sourceInstances:(NSArray *)sourceInstances
{
  v45 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sourceInstances = [MEMORY[0x1E695DEC8] arrayWithObject:sourceInstances];
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](sourceInstances, "count")}];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (mappingName)
  {
    if (!self || (v9 = [(NSDictionary *)[(NSMappingModel *)[(NSMigrationManager *)self mappingModel] entityMappingsByName] valueForKey:mappingName]) == 0)
    {

      CFRelease(Mutable);
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Can't find mapping for name (%@).", mappingName), 0}]);
    }
  }

  else
  {
    v9 = 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v28 = [(NSArray *)sourceInstances countByEnumeratingWithState:&v33 objects:v44 count:16];
  if (v28)
  {
    v27 = *v34;
    obj = sourceInstances;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * v10);
        if (self)
        {
          migrationContext = self->_migrationContext;
        }

        else
        {
          migrationContext = 0;
        }

        v13 = [(NSMigrationContext *)&migrationContext->super.isa destinationInstancesForEntityMapping:v9 sourceInstance:*(*(&v33 + 1) + 8 * v10)];
        if ([v13 count] >= 2 && +[NSMigrationManager migrationDebugLevel](NSMigrationManager, "migrationDebugLevel") >= 2)
        {
          v14 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v39 = v11;
                v40 = 2112;
                v41 = v13;
                v42 = 2112;
                v43 = v9;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) got more destinations for source than we expected. (%@, %@, %@)\n", buf, 0x20u);
              }
            }

            else
            {
              v16 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v39 = v11;
                v40 = 2112;
                v41 = v13;
                v42 = 2112;
                v43 = v9;
                _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) got more destinations for source than we expected. (%@, %@, %@)\n", buf, 0x20u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v17 = 1;
          }

          else
          {
            v17 = 4;
          }

          _NSCoreDataLog_console(v17, "(migration) got more destinations for source than we expected. (%@, %@, %@)", v11, v13, v9);
          objc_autoreleasePoolPop(v14);
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v18 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v30;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v30 != v20)
              {
                objc_enumerationMutation(v13);
              }

              v22 = *(*(&v29 + 1) + 8 * i);
              if (!CFSetContainsValue(Mutable, v22))
              {
                [v7 addObject:v22];
                CFSetAddValue(Mutable, v22);
              }
            }

            v19 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v19);
        }

        ++v10;
      }

      while (v10 != v28);
      v23 = [(NSArray *)obj countByEnumeratingWithState:&v33 objects:v44 count:16];
      v28 = v23;
    }

    while (v23);
  }

  CFRelease(Mutable);
  result = v7;
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)destinationInstancesForSourceRelationshipNamed:(id)named sourceInstances:(id)instances
{
  v105 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  currentEntityMapping = [(NSMigrationManager *)self currentEntityMapping];
  currentPropertyMapping = [(NSMigrationManager *)self currentPropertyMapping];
  v10 = [(NSMigrationManager *)self sourceEntityForEntityMapping:currentEntityMapping];
  v65 = currentEntityMapping;
  v11 = [(NSMigrationManager *)self destinationEntityForEntityMapping:currentEntityMapping];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    instances = [MEMORY[0x1E695DEC8] arrayWithObject:instances];
  }

  if (!named)
  {
    v58 = MEMORY[0x1E695DF30];
    v59 = *MEMORY[0x1E695D940];
    v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Property mapping %@.%@ missing required relationship name argument to destinationInstancesForSourceRelationshipNamed:sourceInstances:", -[NSEntityMapping name](v65, "name"), objc_msgSend(currentPropertyMapping, "name")];
    v61 = v58;
    v62 = v59;
    goto LABEL_73;
  }

  obj = instances;
  v12 = [(NSEntityDescription *)v10 _relationshipNamed:named];
  if (!v12)
  {
    v63 = MEMORY[0x1E695DF30];
    v64 = *MEMORY[0x1E695D940];
    v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't find relationship for name (%@) for entity (%@) in source model.", named, -[NSEntityDescription name](v10, "name")];
    v61 = v63;
    v62 = v64;
LABEL_73:
    objc_exception_throw([v61 exceptionWithName:v62 reason:v60 userInfo:0]);
  }

  v13 = v12;
  v66 = currentPropertyMapping;
  v14 = -[NSEntityDescription _relationshipNamed:](v11, [currentPropertyMapping name]);
  destinationEntity = [v13 destinationEntity];
  destinationEntity2 = [v14 destinationEntity];
  array = [MEMORY[0x1E695DF70] array];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  entityMappings = [(NSMappingModel *)[(NSMigrationManager *)self mappingModel] entityMappings];
  v18 = [(NSArray *)entityMappings countByEnumeratingWithState:&v87 objects:v104 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v88;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v88 != v20)
        {
          objc_enumerationMutation(entityMappings);
        }

        v22 = *(*(&v87 + 1) + 8 * i);
        if ([(NSEntityDescription *)[(NSMigrationManager *)self sourceEntityForEntityMapping:v22] isKindOfEntity:destinationEntity]&& [(NSEntityDescription *)[(NSMigrationManager *)self destinationEntityForEntityMapping:v22] isKindOfEntity:destinationEntity2])
        {
          [array addObject:v22];
        }
      }

      v19 = [(NSArray *)entityMappings countByEnumeratingWithState:&v87 objects:v104 count:16];
    }

    while (v19);
  }

  v67 = v7;
  v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v70 = [obj countByEnumeratingWithState:&v83 objects:v103 count:16];
  if (v70)
  {
    v69 = *v84;
    do
    {
      v25 = 0;
      do
      {
        if (*v84 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v71 = v25;
        v26 = *(*(&v83 + 1) + 8 * v25);
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v74 = [array countByEnumeratingWithState:&v79 objects:v102 count:16];
        if (v74)
        {
          v73 = *v80;
          do
          {
            v27 = 0;
            do
            {
              if (*v80 != v73)
              {
                objc_enumerationMutation(array);
              }

              v28 = *(*(&v79 + 1) + 8 * v27);
              if (self)
              {
                selfCopy = self;
                migrationContext = self->_migrationContext;
              }

              else
              {
                selfCopy = 0;
                migrationContext = 0;
              }

              v31 = [(NSMigrationContext *)&migrationContext->super.isa destinationInstancesForEntityMapping:v26 sourceInstance:?];
              if ([v31 count] >= 2 && +[NSMigrationManager migrationDebugLevel](NSMigrationManager, "migrationDebugLevel") >= 2)
              {
                v32 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    LogStream = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412802;
                      v92 = v26;
                      v93 = 2112;
                      v94 = v31;
                      v95 = 2112;
                      v96 = v28;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) got more destinations for source than we expected. (%@, %@, %@)\n", buf, 0x20u);
                    }
                  }

                  else
                  {
                    v34 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412802;
                      v92 = v26;
                      v93 = 2112;
                      v94 = v31;
                      v95 = 2112;
                      v96 = v28;
                      _os_log_impl(&dword_18565F000, v34, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) got more destinations for source than we expected. (%@, %@, %@)\n", buf, 0x20u);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v35 = 1;
                }

                else
                {
                  v35 = 4;
                }

                _NSCoreDataLog_console(v35, "(migration) got more destinations for source than we expected. (%@, %@, %@)", v26, v31, v28);
                objc_autoreleasePoolPop(v32);
              }

              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v36 = [v31 countByEnumeratingWithState:&v75 objects:v101 count:16];
              if (v36)
              {
                v37 = v36;
                v38 = *v76;
                do
                {
                  for (j = 0; j != v37; ++j)
                  {
                    if (*v76 != v38)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v40 = *(*(&v75 + 1) + 8 * j);
                    if (!CFSetContainsValue(Mutable, v40))
                    {
                      [v23 addObject:v40];
                      CFSetAddValue(Mutable, v40);
                    }
                  }

                  v37 = [v31 countByEnumeratingWithState:&v75 objects:v101 count:16];
                }

                while (v37);
              }

              ++v27;
              self = selfCopy;
            }

            while (v27 != v74);
            v41 = [array countByEnumeratingWithState:&v79 objects:v102 count:16];
            v74 = v41;
          }

          while (v41);
        }

        v25 = v71 + 1;
      }

      while (v71 + 1 != v70);
      v70 = [obj countByEnumeratingWithState:&v83 objects:v103 count:16];
    }

    while (v70);
  }

  if (+[NSMigrationManager migrationDebugLevel]>= 2)
  {
    v42 = [v23 count];
    if (v42 != [obj count])
    {
      v43 = [v23 count];
      if (v43 <= [obj count])
      {
        v44 = @"fewer";
      }

      else
      {
        v44 = @"more";
      }

      v45 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v46 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v47 = [v23 count];
            v48 = [obj count];
            *buf = 138413314;
            v92 = v44;
            v93 = 2048;
            v94 = v47;
            v95 = 2048;
            v96 = v48;
            v97 = 2112;
            v98 = v65;
            v99 = 2112;
            v100 = v66;
            _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) got %@ destinations[%lu] for sources[%lu] than we expected. (%@, %@)\n", buf, 0x34u);
          }
        }

        else
        {
          v49 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = [v23 count];
            v51 = [obj count];
            *buf = 138413314;
            v92 = v44;
            v93 = 2048;
            v94 = v50;
            v95 = 2048;
            v96 = v51;
            v97 = 2112;
            v98 = v65;
            v99 = 2112;
            v100 = v66;
            _os_log_impl(&dword_18565F000, v49, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) got %@ destinations[%lu] for sources[%lu] than we expected. (%@, %@)\n", buf, 0x34u);
          }
        }
      }

      v52 = _pflogging_catastrophic_mode;
      v53 = [v23 count];
      v54 = [obj count];
      v55 = 4;
      if (v52)
      {
        v55 = 1;
      }

      _NSCoreDataLog_console(v55, "(migration) got %@ destinations[%lu] for sources[%lu] than we expected. (%@, %@)", v44, v53, v54, v65, v66);
      objc_autoreleasePoolPop(v45);
    }
  }

  CFRelease(Mutable);
  result = v23;
  v57 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSArray)sourceInstancesForEntityMappingNamed:(NSString *)mappingName destinationInstances:(NSArray *)destinationInstances
{
  v46 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    destinationInstances = [MEMORY[0x1E695DEC8] arrayWithObject:destinationInstances];
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](destinationInstances, "count")}];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (mappingName)
  {
    if (!self || (v9 = [(NSDictionary *)[(NSMappingModel *)[(NSMigrationManager *)self mappingModel] entityMappingsByName] valueForKey:mappingName]) == 0)
    {
      CFRelease(Mutable);

      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Can't find mapping for name (%@).", mappingName), 0}]);
    }
  }

  else
  {
    v9 = 0;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = [(NSArray *)destinationInstances countByEnumeratingWithState:&v34 objects:v45 count:16];
  if (v29)
  {
    v28 = *v35;
    obj = destinationInstances;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        if (self)
        {
          migrationContext = self->_migrationContext;
        }

        else
        {
          migrationContext = 0;
        }

        v13 = [(NSMigrationContext *)&migrationContext->super.isa sourceInstancesForEntityMapping:v9 destinationInstance:*(*(&v34 + 1) + 8 * v10)];
        v14 = v13;
        if (v9 && [v13 count] >= 2 && +[NSMigrationManager migrationDebugLevel](NSMigrationManager, "migrationDebugLevel") >= 2)
        {
          v15 = objc_autoreleasePoolPush();
          _pflogInitialize(4);
          if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v40 = v11;
                v41 = 2112;
                v42 = v14;
                v43 = 2112;
                v44 = v9;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) got more sources for destination than we expected. (%@, %@, %@)\n", buf, 0x20u);
              }
            }

            else
            {
              v17 = _PFLogGetLogStream(4);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v40 = v11;
                v41 = 2112;
                v42 = v14;
                v43 = 2112;
                v44 = v9;
                _os_log_impl(&dword_18565F000, v17, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) got more sources for destination than we expected. (%@, %@, %@)\n", buf, 0x20u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v18 = 1;
          }

          else
          {
            v18 = 4;
          }

          _NSCoreDataLog_console(v18, "(migration) got more sources for destination than we expected. (%@, %@, %@)", v11, v14, v9);
          objc_autoreleasePoolPop(v15);
        }

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v19 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v31;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v14);
              }

              v23 = *(*(&v30 + 1) + 8 * i);
              if (!CFSetContainsValue(Mutable, v23))
              {
                [v7 addObject:v23];
                CFSetAddValue(Mutable, v23);
              }
            }

            v20 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v20);
        }

        ++v10;
      }

      while (v10 != v29);
      v24 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v45 count:16];
      v29 = v24;
    }

    while (v24);
  }

  CFRelease(Mutable);
  result = v7;
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSEntityMapping)currentEntityMapping
{
  if (self)
  {
    destinationEntityName = self->_destinationEntityName;
    if (destinationEntityName)
    {
      return destinationEntityName[6].super.isa;
    }

    else
    {
      return 0;
    }
  }

  return self;
}

- (id)currentPropertyMapping
{
  if (self)
  {
    v2 = *(self + 8);
    if (v2)
    {
      return *(v2 + 64);
    }

    else
    {
      return 0;
    }
  }

  return self;
}

- (float)migrationProgress
{
  v3 = [(NSArray *)[(NSMappingModel *)[(NSMigrationManager *)self mappingModel] entityMappings] count];
  if (!v3)
  {
    return 0.0;
  }

  currentStep = 0.0;
  if (self)
  {
    migrationContext = self->_migrationContext;
    if (migrationContext)
    {
      currentStep = migrationContext->_currentStep;
    }
  }

  return currentStep / (v3 * 3.0);
}

- (void)setUserInfo:(NSDictionary *)userInfo
{
  v3 = self->_userInfo;
  if (v3 != userInfo)
  {

    self->_userInfo = userInfo;
  }
}

- (void)cancelMigrationWithError:(NSError *)error
{
  *&self->_migrationManagerFlags |= 1u;
  migrationCancellationError = self->_migrationCancellationError;
  if (migrationCancellationError != error)
  {

    self->_migrationCancellationError = error;
  }
}

- (void)setUsesStoreSpecificMigrationManager:(BOOL)usesStoreSpecificMigrationManager
{
  if (usesStoreSpecificMigrationManager)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_migrationManagerFlags = (*&self->_migrationManagerFlags & 0xFFFFFFFD | v3);
}

+ (uint64_t)_performSanityCheckForMapping:(void *)mapping fromSourceModel:(void *)model toDestinationModel:
{
  v24 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [objc_msgSend(mapping "entities")];
  v8 = [objc_msgSend(model "entities")];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  entityMappings = [a2 entityMappings];
  v10 = [entityMappings countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(entityMappings);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ([v14 sourceEntityVersionHash])
        {
          v15 = [v7 containsObject:{objc_msgSend(v14, "sourceEntityVersionHash")}] ^ 1;
        }

        else
        {
          v15 = 0;
        }

        if ([v14 destinationEntityVersionHash])
        {
          v16 = [v8 containsObject:{objc_msgSend(v14, "destinationEntityVersionHash")}] ^ 1;
        }

        else
        {
          v16 = 0;
        }

        if ((v15 | v16))
        {
          result = 0;
          goto LABEL_17;
        }
      }

      v11 = [entityMappings countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  result = 1;
LABEL_17:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_validateAllObjectsAfterMigration:(void *)migration
{
  v26 = a2;
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(migration "destinationContext")];
  v3 = [v2 count];
  v4 = v3;
  if (v3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if (v3 >= 0x201)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = &v26 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 >= 0x201)
  {
    v7 = NSAllocateScannedUncollectable();
    [v2 getObjects:v7];
  }

  else
  {
    bzero(&v26 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v5);
    [v2 getObjects:v7];
    if (!v4)
    {
      v8 = 1;
      goto LABEL_33;
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *MEMORY[0x1E696A250];
  v27 = @"NSDetailedErrors";
  v8 = 1;
  do
  {
    v12 = *&v7[8 * v10];
    v28[0] = 0;
    if (([v12 validateForUpdate:v28] & 1) == 0)
    {
      if (!v9)
      {
        v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
      }

      if (v28[0])
      {
        if ([objc_msgSend(v28[0] "domain")] && objc_msgSend(v28[0], "code") == 1560)
        {
          userInfo = [v28[0] userInfo];
          [v9 addObjectsFromArray:{objc_msgSend(userInfo, "objectForKey:", v27)}];
        }

        else
        {
          v14 = [objc_msgSend(v28[0] "userInfo")];
          v15 = v28[0];
          if (v14)
          {
            v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v28[0], "userInfo")}];
            [v16 setObject:objc_msgSend(objc_msgSend(v16 forKey:{"objectForKey:", @"NSValidationErrorObject", "description"), @"NSValidationErrorObject"}];
            v17 = MEMORY[0x1E696ABC0];
            domain = [v28[0] domain];
            v15 = [v17 errorWithDomain:domain code:objc_msgSend(v28[0] userInfo:{"code"), v16}];
            v28[0] = v15;
          }

          [v9 addObject:v15];
        }
      }

      v8 = 0;
    }

    ++v10;
  }

  while (v4 != v10);
  if ((v8 & 1) == 0)
  {
    if ([v9 count] == 1)
    {
      if (v26)
      {
        v19 = [v9 objectAtIndex:0];
        *v26 = v19;
      }
    }

    else
    {
      v20 = [v9 count];
      if (v26 && v20 >= 2)
      {
        v21 = objc_alloc(MEMORY[0x1E695DF20]);
        v22 = [v21 initWithObjectsAndKeys:{v9, v27, 0}];
        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:v11 code:1560 userInfo:v22];
        *v26 = v23;
      }
    }
  }

  if (v4 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

LABEL_33:
  v24 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

@end