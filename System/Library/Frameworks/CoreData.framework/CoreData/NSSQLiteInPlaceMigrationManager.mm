@interface NSSQLiteInPlaceMigrationManager
- (BOOL)migrateStoreFromURL:(id)l type:(id)type options:(id)options withMappingModel:(id)model toDestinationURL:(id)rL destinationType:(id)destinationType destinationOptions:(id)destinationOptions error:(id *)self0;
- (void)dealloc;
@end

@implementation NSSQLiteInPlaceMigrationManager

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NSSQLiteInPlaceMigrationManager;
  [(NSMigrationManager *)&v2 dealloc];
}

- (BOOL)migrateStoreFromURL:(id)l type:(id)type options:(id)options withMappingModel:(id)model toDestinationURL:(id)rL destinationType:(id)destinationType destinationOptions:(id)destinationOptions error:(id *)self0
{
  v95 = *MEMORY[0x1E69E9840];
  if (([l isEqual:rL] & 1) == 0)
  {
    if ([rL isFileURL])
    {
      memset(&v94, 0, sizeof(v94));
      if (!stat([objc_msgSend(rL "path")], &v94) && v94.st_size >= 1)
      {
        if (error)
        {
          v16 = MEMORY[0x1E696ABC0];
          v92 = *MEMORY[0x1E696A368];
          path = [rL path];
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&path forKeys:&v92 count:1];
          v18 = 0;
          *error = [v16 errorWithDomain:*MEMORY[0x1E696A250] code:516 userInfo:v17];
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_99;
      }
    }
  }

  v76 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v19 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[(NSMigrationManager *)self sourceModel]];
  v20 = [options valueForKey:@"NSPersistentStoreCoordinatorCodableAdapterFactoryKey"];
  [(NSPersistentStoreCoordinator *)v19 _setIsMigrating:?];
  if (v20)
  {
    [(NSPersistentStoreCoordinator *)v19 setCodableAdapterRegistry:v20];
  }

  v79 = v19;
  v21 = [l isEqual:rL];
  v82 = 0;
  v83 = 0;
  rLCopy = rL;
  v22 = [destinationOptions mutableCopy];
  v23 = MEMORY[0x1E695E118];
  [v22 setObject:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreForceDestroyOption"];
  [v22 setObject:v23 forKey:@"NSPersistentStoreUnlinkDestroyOption"];
  lCopy = l;
  if ((v21 & 1) == 0)
  {
    lCopy = rLCopy;
    if (![(NSPersistentStoreCoordinator *)v79 replacePersistentStoreAtURL:rLCopy destinationOptions:destinationOptions withPersistentStoreFromURL:l sourceOptions:options storeType:type error:&v83])
    {
      v29 = 0;
      v30 = 0;
      v80 = 0;
      v18 = 0;
LABEL_21:
      v26 = 0.0;
LABEL_22:
      v31 = 1;
      goto LABEL_23;
    }
  }

  v80 = v21 ^ 1;
  if (![@"SQLite" isEqualToString:type] || (objc_msgSend(@"SQLite", "isEqualToString:", destinationType) & 1) == 0)
  {

    v72 = MEMORY[0x1E695DF30];
    v73 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{-[NSMigrationManager sourceModel](self, "sourceModel"), @"sourceModel", -[NSMigrationManager destinationModel](self, "destinationModel"), @"destinationModel", model, @"mappingModel", 0}];
    objc_exception_throw([v72 exceptionWithName:*MEMORY[0x1E695D940] reason:@"NSSQLiteInPlaceMigrationManager requires that the source and destination stores to be NSSQLiteStoreType" userInfo:v73]);
  }

  if (([(NSMappingModel *)model _isInferredMappingModel]& 1) == 0)
  {
    if (v21)
    {
      v27 = MEMORY[0x1E696ABC0];
      v90 = @"sourceStore";
      lCopy2 = l;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&lCopy2 forKeys:&v90 count:1];
      v29 = 0;
      v30 = 0;
      v80 = 0;
      v18 = 0;
      v83 = [v27 errorWithDomain:*MEMORY[0x1E696A250] code:134182 userInfo:v28];
    }

    else
    {
      v81.receiver = self;
      v81.super_class = NSSQLiteInPlaceMigrationManager;
      v80 = 1;
      v18 = [(NSMigrationManager *)&v81 migrateStoreFromURL:lCopy type:type options:options withMappingModel:model toDestinationURL:rLCopy destinationType:destinationType destinationOptions:destinationOptions error:&v83];
      v29 = 0;
      v30 = 0;
    }

    goto LABEL_21;
  }

  if (([NSMigrationManager _performSanityCheckForMapping:model fromSourceModel:[(NSMigrationManager *)self sourceModel] toDestinationModel:[(NSMigrationManager *)self destinationModel]]& 1) == 0)
  {
    v74 = MEMORY[0x1E695DF30];
    v75 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{-[NSMigrationManager sourceModel](self, "sourceModel"), @"sourceModel", -[NSMigrationManager destinationModel](self, "destinationModel"), @"destinationModel", model, @"mappingModel", 0}];
    objc_exception_throw([v74 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Mismatch between mapping and source/destination models" userInfo:v75]);
  }

  if (+[NSMappingModel migrationDebugLevel]< 1)
  {
    v26 = 0.0;
  }

  else
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v26 = v25;
  }

  if (destinationOptions)
  {
    v39 = [destinationOptions objectForKey:@"NSSQLitePragmasOption"];
    v40 = [destinationOptions mutableCopy];
    if (v39)
    {
      v41 = [v39 mutableCopy];
      [v41 setObject:objc_msgSend(MEMORY[0x1E695DFB0] forKey:{"null"), @"journal_mode"}];
    }

    else
    {
      v88 = @"journal_mode";
      null = [MEMORY[0x1E695DFB0] null];
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&null forKeys:&v88 count:1];
    }

    [v40 setObject:v41 forKey:@"NSSQLitePragmasOption"];
  }

  else
  {
    v86 = @"NSSQLitePragmasOption";
    v84 = @"journal_mode";
    null2 = [MEMORY[0x1E695DFB0] null];
    v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&null2 forKeys:&v84 count:1];
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
  }

  v42 = [(NSPersistentStoreCoordinator *)v79 addPersistentStoreWithType:@"SQLite" configuration:0 URL:lCopy options:v40 error:&v82];

  if (!v42)
  {
    if (error)
    {
      v53 = MEMORY[0x1E696ABC0];
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Failed to open the store", @"reason", v82, *MEMORY[0x1E696AA08], 0}];
      v55 = [v53 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v54];
LABEL_64:
      v29 = 0;
      v30 = 0;
      v18 = 0;
      v83 = v55;
      goto LABEL_22;
    }

LABEL_65:
    v29 = 0;
    v30 = 0;
    v18 = 0;
    goto LABEL_22;
  }

  destinationModel = [(NSMigrationManager *)self destinationModel];
  [(NSManagedObjectModel *)destinationModel _setIsEditable:0];
  v44 = [[NSSQLModel alloc] initWithManagedObjectModel:destinationModel];
  if (!v44)
  {
    if (error)
    {
      v56 = MEMORY[0x1E696ABC0];
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Invalid destination data model", @"reason", 0}];
      v55 = [v56 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v57];
      goto LABEL_64;
    }

    goto LABEL_65;
  }

  v29 = v44;
  v30 = [[_NSSQLiteStoreMigrator alloc] initWithStore:v42 destinationModel:v44 mappingModel:model];
  [v30 setDestinationConfigurationForCloudKitValidation:{-[NSMigrationManager destinationConfigurationForCloudKitValidation](self, "destinationConfigurationForCloudKitValidation")}];
  if (self)
  {
    v46 = (*&self->super._migrationManagerFlags >> 3) & 1;
    if (!v30)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  LOBYTE(v46) = 0;
  if (v30)
  {
LABEL_50:
    v30[218] = v46;
  }

LABEL_51:
  if (!self)
  {
    stageLabel = 0;
    if (!v30)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  stageLabel = self->super._stageLabel;
  if (v30)
  {
LABEL_53:
    objc_setProperty_nonatomic_copy(v30, v45, stageLabel, 232);
  }

LABEL_54:
  v48 = [(_NSSQLiteStoreMigrator *)v30 performMigration:?];
  v49 = v48;
  if (error)
  {
    v50 = v48;
  }

  else
  {
    v50 = 1;
  }

  if ((v50 & 1) == 0)
  {
    v51 = [objc_msgSend(v82 "userInfo")];
    if (v51)
    {
      v52 = [@"Cannot migrate store in-place: " stringByAppendingString:v51];
    }

    else
    {
      v52 = @"Cannot migrate store in-place";
    }

    v64 = MEMORY[0x1E696ABC0];
    v65 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v52, @"reason", v82, *MEMORY[0x1E696AA08], l, @"sourceURL", l, @"destinationURL", 0}];
    v83 = [v64 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v65];
  }

  if (self)
  {
    *&self->super._migrationManagerFlags |= 4u;
  }

  [(_NSSQLiteStoreMigrator *)v30 _disconnect];
  v31 = 0;
  v18 = 0;
  v80 = v49;
LABEL_23:
  v32 = v83;

  [(NSPersistentStoreCoordinator *)v79 _removeAllPersistentStores:0];
  if (v80)
  {
    if (+[NSMappingModel migrationDebugLevel]< 1)
    {
      goto LABEL_94;
    }

    v33 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v94.st_dev = 134217984;
          *&v94.st_mode = v35 - v26;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) in-place migration completed successfully in %2.2f seconds\n", &v94, 0xCu);
        }
      }

      else
      {
        v58 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v94.st_dev = 134217984;
          *&v94.st_mode = v59 - v26;
          _os_log_impl(&dword_18565F000, v58, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) in-place migration completed successfully in %2.2f seconds\n", &v94, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v61 = 1;
    }

    else
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v61 = 4;
    }

    _NSCoreDataLog_console(v61, "(migration) in-place migration completed successfully in %2.2f seconds", v60 - v26);
  }

  else
  {
    if (+[NSMappingModel migrationDebugLevel]< 1)
    {
      if (([l isEqual:rLCopy] & 1) == 0)
      {
        [(NSPersistentStoreCoordinator *)v79 _destroyPersistentStoreAtURL:rLCopy withType:@"SQLite" options:v22 error:0];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager removeItemAtPath:objc_msgSend(rLCopy error:{"path"), 0}];
        [defaultManager removeItemAtPath:objc_msgSend(objc_msgSend(rLCopy error:{"path"), "stringByAppendingString:", @"-shm", 0}];
        [defaultManager removeItemAtPath:objc_msgSend(objc_msgSend(rLCopy error:{"path"), "stringByAppendingString:", @"-journal", 0}];
        [defaultManager removeItemAtPath:objc_msgSend(objc_msgSend(rLCopy error:{"path"), "stringByAppendingString:", @"-wal", 0}];
      }

      goto LABEL_94;
    }

    v33 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v36 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          if (v82)
          {
            v37 = [v82 description];
          }

          else
          {
            v37 = @"unknown error";
          }

          v94.st_dev = 138412546;
          *&v94.st_mode = rLCopy;
          WORD2(v94.st_ino) = 2112;
          *(&v94.st_ino + 6) = v37;
          _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) leaving incompletely migrated store on disk after in-place migration error. (%@, %@)\n", &v94, 0x16u);
        }
      }

      else
      {
        v62 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          if (v82)
          {
            v63 = [v82 description];
          }

          else
          {
            v63 = @"unknown error";
          }

          v94.st_dev = 138412546;
          *&v94.st_mode = rLCopy;
          WORD2(v94.st_ino) = 2112;
          *(&v94.st_ino + 6) = v63;
          _os_log_impl(&dword_18565F000, v62, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) leaving incompletely migrated store on disk after in-place migration error. (%@, %@)\n", &v94, 0x16u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      if (v82)
      {
        v66 = [v82 description];
      }

      else
      {
        v66 = @"unknown error";
      }

      v67 = 1;
    }

    else
    {
      if (v82)
      {
        v66 = [v82 description];
      }

      else
      {
        v66 = @"unknown error";
      }

      v67 = 4;
    }

    _NSCoreDataLog_console(v67, "(migration) leaving incompletely migrated store on disk after in-place migration error. (%@, %@)", rLCopy, v66);
  }

  objc_autoreleasePoolPop(v33);
LABEL_94:

  [v76 drain];
  v68 = 0;
  v69 = v83;
  if (error && v83)
  {
    *error = v83;
  }

  if ((v31 | 2) == 2)
  {
    v18 = v80;
  }

LABEL_99:
  v70 = *MEMORY[0x1E69E9840];
  return v18 & 1;
}

@end