@interface NSStoreMigrationPolicy
+ (id)destinationURLForMigrationSourceURL:(id)a3 createDocumentReplacementDirectory:(BOOL)a4 error:(id *)a5;
+ (id)migrationStoreOptionsFromStoreOptions:(uint64_t)a1;
- (NSManagedObjectModel)_sourceModelForVersionHashes:(uint64_t)a3 withMetadata:(void *)a4 inBundles:(void *)a5 outPaths:;
- (id)createMigrationManagerForSourceModel:(id)a3 destinationModel:(id)a4 error:(id *)a5;
- (id)migrateStoreAtURL:(id)a3 withManager:(id)a4 metadata:(id)a5 options:(id)a6 error:(id *)a7;
- (id)sourceModelForStoreAtURL:(id)a3 metadata:(id)a4 error:(id *)a5;
- (uint64_t)_gatherDataAndPerformMigration:(uint64_t)a1;
- (uint64_t)setMigrationManager:(uint64_t)a1;
- (uint64_t)setSourceMetadata:(uint64_t)result;
- (void)dealloc;
- (void)resourceBundles;
- (void)setPersistentStoreCoordinator:(void *)a3 sourceURL:(void *)a4 configuration:(void *)a5 metadata:(void *)a6 options:;
@end

@implementation NSStoreMigrationPolicy

- (void)dealloc
{
  self->_coordinator = 0;

  self->_sourceURL = 0;
  self->_sourceConfiguration = 0;

  self->_destinationConfiguration = 0;
  self->_sourceMetadata = 0;

  self->_sourceOptions = 0;
  self->_sourceModel = 0;

  self->_mappingModel = 0;
  self->_destinationURL = 0;

  self->_destinationType = 0;
  self->_destinationOptions = 0;

  self->_migrationManager = 0;
  self->_resourceBundles = 0;
  v3.receiver = self;
  v3.super_class = NSStoreMigrationPolicy;
  [(NSStoreMigrationPolicy *)&v3 dealloc];
}

- (NSManagedObjectModel)_sourceModelForVersionHashes:(uint64_t)a3 withMetadata:(void *)a4 inBundles:(void *)a5 outPaths:
{
  v51 = *MEMORY[0x1E69E9840];
  if (result)
  {
    context = objc_autoreleasePoolPush();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = [a4 countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v33)
    {
      obj = a4;
      v8 = 0;
      v32 = *v44;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v44 != v32)
        {
          objc_enumerationMutation(obj);
        }

        if (v8)
        {
          break;
        }

        v10 = [objc_msgSend(*(*(&v43 + 1) + 8 * v9) pathsForResourcesOfType:@"mom" inDirectory:{0), "arrayByAddingObjectsFromArray:", objc_msgSend(*(*(&v43 + 1) + 8 * v9), "pathsForResourcesOfType:inDirectory:", @"momd", 0)}];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v11)
        {
          v12 = v11;
          v34 = v9;
          v13 = *v40;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v40 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v39 + 1) + 8 * i);
              if (([a5 containsObject:v15] & 1) == 0)
              {
                [a5 addObject:v15];
                v38 = 0;
                if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] && v38 == 1)
                {
                  v16 = [[NSManagedObjectModelBundle alloc] initWithPath:v15];
                  v8 = [(NSManagedObjectModelBundle *)v16 _modelForVersionHashes:a2];
                  v17 = v8;
                }

                else
                {
                  v8 = -[NSManagedObjectModel initWithContentsOfURL:]([NSManagedObjectModel alloc], "initWithContentsOfURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:v15 isDirectory:0]);
                }

                if (+[NSMappingModel migrationDebugLevel]>= 2)
                {
                  v18 = objc_autoreleasePoolPush();
                  _pflogInitialize(9);
                  if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
                  {
                    if (_pflogging_catastrophic_mode)
                    {
                      log = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                      {
                        buf = 138412290;
                        v48 = v15;
                        _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: _sourceModelForVersionHashes: testing model at path '%@'\n", &buf, 0xCu);
                      }
                    }

                    else
                    {
                      loga = _PFLogGetLogStream(9);
                      if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
                      {
                        buf = 138412290;
                        v48 = v15;
                        _os_log_impl(&dword_18565F000, loga, OS_LOG_TYPE_INFO, "CoreData: debug: _sourceModelForVersionHashes: testing model at path '%@'\n", &buf, 0xCu);
                      }
                    }
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    v19 = 1;
                  }

                  else
                  {
                    v19 = 9;
                  }

                  _NSCoreDataLog_console(v19, "_sourceModelForVersionHashes: testing model at path '%@'", v15);
                  objc_autoreleasePoolPop(v18);
                }

                v20 = [(NSManagedObjectModel *)v8 isConfiguration:0 compatibleWithStoreMetadata:a3];
                v21 = [_PFPersistentHistoryModel _hasTombstonesInUserInfo:v8];
                if (v20)
                {
                  if (v8)
                  {
                    v22 = v21;
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v9 = v34;
                  if (v22 == 1)
                  {
                    *&v8->_managedObjectModelFlags |= 0x10u;
                  }

                  if (+[NSMappingModel migrationDebugLevel]< 2)
                  {
                    goto LABEL_65;
                  }

                  v23 = objc_autoreleasePoolPush();
                  _pflogInitialize(9);
                  if (!_NSCoreDataIsLogEnabled(9) || _pflogging_enable_oslog < 1)
                  {
                    goto LABEL_61;
                  }

                  if (_pflogging_catastrophic_mode)
                  {
                    LogStream = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
LABEL_56:
                      buf = 138412290;
                      v48 = v15;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:   \t Choosing model at path '%@'\n", &buf, 0xCu);
                    }

LABEL_61:
                    if (_pflogging_catastrophic_mode)
                    {
                      v26 = 1;
                    }

                    else
                    {
                      v26 = 9;
                    }

                    _NSCoreDataLog_console(v26, "  \t Choosing model at path '%@'", v15);
                    objc_autoreleasePoolPop(v23);
LABEL_65:
                    v27 = v8;
                    goto LABEL_66;
                  }

                  v25 = _PFLogGetLogStream(9);
                  if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                  {
                    goto LABEL_61;
                  }

LABEL_60:
                  buf = 138412290;
                  v48 = v15;
                  _os_log_impl(&dword_18565F000, v25, OS_LOG_TYPE_INFO, "CoreData: debug:   \t Choosing model at path '%@'\n", &buf, 0xCu);
                  goto LABEL_61;
                }

                if (v21)
                {
                  if (v8)
                  {
                    [(NSManagedObjectModel *)v8 _traverseTombstonesAndMark:?];
                  }

                  if ([(NSManagedObjectModel *)v8 isConfiguration:0 compatibleWithStoreMetadata:a3])
                  {
                    v9 = v34;
                    if (+[NSMappingModel migrationDebugLevel]< 2)
                    {
                      goto LABEL_65;
                    }

                    v23 = objc_autoreleasePoolPush();
                    _pflogInitialize(9);
                    if (!_NSCoreDataIsLogEnabled(9) || _pflogging_enable_oslog < 1)
                    {
                      goto LABEL_61;
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      LogStream = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_56;
                      }

                      goto LABEL_61;
                    }

                    v25 = _PFLogGetLogStream(9);
                    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_60;
                  }
                }
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v39 objects:v49 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }

          v8 = 0;
          v9 = v34;
        }

        else
        {
          v8 = 0;
        }

LABEL_66:
        if (++v9 == v33)
        {
          v33 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
          if (v33)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v28 = v8;
    objc_autoreleasePoolPop(context);
    result = v8;
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)sourceModelForStoreAtURL:(id)a3 metadata:(id)a4 error:(id *)a5
{
  v85[1] = *MEMORY[0x1E69E9840];
  v8 = [a4 objectForKey:@"NSStoreModelVersionHashes"];
  if (+[NSMappingModel migrationDebugLevel]>= 2)
  {
    v9 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: Testing models searched via resourceBundles\n", buf, 2u);
        }
      }

      else
      {
        v11 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v11, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: Testing models searched via resourceBundles\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v12 = 1;
    }

    else
    {
      v12 = 9;
    }

    _NSCoreDataLog_console(v12, "sourceModelForStoreAtURL: Testing models searched via resourceBundles");
    objc_autoreleasePoolPop(v9);
  }

  v13 = [(NSStoreMigrationPolicy *)self resourceBundles];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 mutableCopy];
  }

  else
  {
    v15 = [MEMORY[0x1E695DF70] array];
  }

  v16 = v15;
  v17 = [MEMORY[0x1E695DFA8] set];
  v18 = [(NSStoreMigrationPolicy *)self _sourceModelForVersionHashes:v8 withMetadata:a4 inBundles:v14 outPaths:v17];
  if (v18)
  {
    goto LABEL_17;
  }

  if (+[NSMappingModel migrationDebugLevel]>= 2)
  {
    v22 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v23 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: Testing models searched via mainBundle\n", buf, 2u);
        }
      }

      else
      {
        v24 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v24, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: Testing models searched via mainBundle\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v25 = 1;
    }

    else
    {
      v25 = 9;
    }

    _NSCoreDataLog_console(v25, "sourceModelForStoreAtURL: Testing models searched via mainBundle");
    objc_autoreleasePoolPop(v22);
  }

  v26 = [MEMORY[0x1E696AAE8] mainBundle];
  if (v26)
  {
    v27 = v26;
    [v16 addObject:v26];
    v85[0] = v27;
    v18 = -[NSStoreMigrationPolicy _sourceModelForVersionHashes:withMetadata:inBundles:outPaths:](self, v8, a4, [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1], v17);
    if (v18)
    {
      goto LABEL_17;
    }
  }

  if (self)
  {
    v28 = [(NSDictionary *)self->_sourceMetadata valueForKey:@"NSStoreType"];
  }

  else
  {
    v28 = 0;
  }

  if ([v28 isEqualToString:@"SQLite"])
  {
    if (+[NSMappingModel migrationDebugLevel]>= 2)
    {
      v29 = objc_autoreleasePoolPush();
      _pflogInitialize(9);
      if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v30 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: Testing model cached in database file\n", buf, 2u);
          }
        }

        else
        {
          v31 = _PFLogGetLogStream(9);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v31, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: Testing model cached in database file\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v32 = 1;
      }

      else
      {
        v32 = 9;
      }

      _NSCoreDataLog_console(v32, "sourceModelForStoreAtURL: Testing model cached in database file");
      objc_autoreleasePoolPop(v29);
    }

    v33 = self ? self->_sourceOptions : 0;
    v34 = [NSSQLCore cachedModelForPersistentStoreWithURL:a3 options:v33 error:0];
    if (v34)
    {
      v19 = v34;
      if (+[NSMappingModel migrationDebugLevel]>= 1)
      {
        v35 = objc_autoreleasePoolPush();
        _pflogInitialize(9);
        if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v36 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = [a3 path];
              *buf = 138412290;
              v84 = v37;
              _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: error:   \t Choosing model from cache table in db at '%@'\n", buf, 0xCu);
            }
          }

          else
          {
            v48 = _PFLogGetLogStream(9);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = [a3 path];
              *buf = 138412290;
              v84 = v49;
              _os_log_impl(&dword_18565F000, v48, OS_LOG_TYPE_INFO, "CoreData: debug:   \t Choosing model from cache table in db at '%@'\n", buf, 0xCu);
            }
          }
        }

        v50 = _pflogging_catastrophic_mode;
        v51 = [a3 path];
        v52 = 9;
        if (v50)
        {
          v52 = 1;
        }

        _NSCoreDataLog_console(v52, "  \t Choosing model from cache table in db at '%@'", v51);
        objc_autoreleasePoolPop(v35);
      }

      goto LABEL_18;
    }
  }

  if (+[NSMappingModel migrationDebugLevel]>= 2)
  {
    v38 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v39 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v39, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: Testing models searched via allBundles\n", buf, 2u);
        }
      }

      else
      {
        v40 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v40, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: Testing models searched via allBundles\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v41 = 1;
    }

    else
    {
      v41 = 9;
    }

    _NSCoreDataLog_console(v41, "sourceModelForStoreAtURL: Testing models searched via allBundles");
    objc_autoreleasePoolPop(v38);
  }

  v42 = [MEMORY[0x1E696AAE8] allBundles];
  [v16 addObjectsFromArray:v42];
  if (+[NSMappingModel migrationDebugLevel]>= 2)
  {
    v43 = a3;
    v44 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        log = _PFLogGetLogStream(1);
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v84 = v42;
          _os_log_error_impl(&dword_18565F000, log, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: allBundles is %@\n", buf, 0xCu);
        }
      }

      else
      {
        loga = _PFLogGetLogStream(9);
        if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v84 = v42;
          _os_log_impl(&dword_18565F000, loga, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: allBundles is %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v45 = 1;
    }

    else
    {
      v45 = 9;
    }

    _NSCoreDataLog_console(v45, "sourceModelForStoreAtURL: allBundles is %@", v42);
    objc_autoreleasePoolPop(v44);
    a3 = v43;
  }

  v18 = [(NSStoreMigrationPolicy *)self _sourceModelForVersionHashes:v8 withMetadata:a4 inBundles:v42 outPaths:v17];
  if (v18)
  {
    goto LABEL_17;
  }

  if (+[NSMappingModel migrationDebugLevel]>= 2)
  {
    v46 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v47 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: Testing models searched via allFrameworks\n", buf, 2u);
        }
      }

      else
      {
        v53 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v53, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: Testing models searched via allFrameworks\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v54 = 1;
    }

    else
    {
      v54 = 9;
    }

    _NSCoreDataLog_console(v54, "sourceModelForStoreAtURL: Testing models searched via allFrameworks");
    objc_autoreleasePoolPop(v46);
  }

  v55 = [MEMORY[0x1E696AAE8] allFrameworks];
  if (+[NSMappingModel migrationDebugLevel]>= 2)
  {
    v56 = a3;
    v57 = objc_autoreleasePoolPush();
    _pflogInitialize(9);
    if (_NSCoreDataIsLogEnabled(9) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        logb = _PFLogGetLogStream(1);
        if (os_log_type_enabled(logb, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v84 = v55;
          _os_log_error_impl(&dword_18565F000, logb, OS_LOG_TYPE_ERROR, "CoreData: error: sourceModelForStoreAtURL: allFrameworks is %@\n", buf, 0xCu);
        }
      }

      else
      {
        logc = _PFLogGetLogStream(9);
        if (os_log_type_enabled(logc, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v84 = v55;
          _os_log_impl(&dword_18565F000, logc, OS_LOG_TYPE_INFO, "CoreData: debug: sourceModelForStoreAtURL: allFrameworks is %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v58 = 1;
    }

    else
    {
      v58 = 9;
    }

    _NSCoreDataLog_console(v58, "sourceModelForStoreAtURL: allFrameworks is %@", v55);
    objc_autoreleasePoolPop(v57);
    a3 = v56;
  }

  [v16 addObjectsFromArray:v55];
  v18 = [(NSStoreMigrationPolicy *)self _sourceModelForVersionHashes:v8 withMetadata:a4 inBundles:v55 outPaths:v17];
  if (v18)
  {
LABEL_17:
    v19 = v18;
    goto LABEL_18;
  }

  if (+[NSMappingModel migrationDebugLevel]>= 2)
  {
    v59 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(9))
    {
      if (_pflogging_catastrophic_mode)
      {
        v60 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v60, OS_LOG_TYPE_ERROR, "CoreData: error: Last ditch review of models with skewed hashing\n", buf, 2u);
        }
      }

      else
      {
        v61 = _PFLogGetLogStream(9);
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v61, OS_LOG_TYPE_INFO, "CoreData: debug: Last ditch review of models with skewed hashing\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v62 = 1;
    }

    else
    {
      v62 = 9;
    }

    _NSCoreDataLog_console(v62, "Last ditch review of models with skewed hashing");
    objc_autoreleasePoolPop(v59);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v63 = [v17 countByEnumeratingWithState:&v78 objects:v82 count:16];
  if (v63)
  {
    v64 = v63;
    logd = a3;
    v65 = *v79;
    while (2)
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v79 != v65)
        {
          objc_enumerationMutation(v17);
        }

        v67 = *(*(&v78 + 1) + 8 * i);
        buf[0] = 0;
        if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] && buf[0] == 1)
        {
          v68 = [[NSManagedObjectModelBundle alloc] initWithPath:v67];
          v19 = [(NSManagedObjectModelBundle *)v68 _modelForVersionHashes:v8 inStyle:1];
          v69 = v19;
        }

        else
        {
          v19 = -[NSManagedObjectModel initWithContentsOfURL:]([NSManagedObjectModel alloc], "initWithContentsOfURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:v67 isDirectory:0]);
        }

        if ([(NSManagedObjectModel *)v19 _isConfiguration:1 inStyle:a4 compatibleWithStoreMetadata:?])
        {
          v70 = v19;
          self->_workingWithSkewedSource = 1;
          v71 = [(NSDictionary *)self->_sourceMetadata mutableCopy];
          [v71 setValue:-[NSManagedObjectModel entityVersionHashesByName](v19 forKey:{"entityVersionHashesByName"), @"NSStoreModelVersionHashes"}];
          [(NSStoreMigrationPolicy *)self setSourceMetadata:v71];

          goto LABEL_137;
        }
      }

      v64 = [v17 countByEnumeratingWithState:&v78 objects:v82 count:16];
      if (v64)
      {
        continue;
      }

      break;
    }

    v19 = 0;
LABEL_137:
    a3 = logd;
  }

  else
  {
    v19 = 0;
  }

  if (a5 && !v19)
  {
    *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134130 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjectsAndKeys:", @"Can't find model for source store", @"reason", a3, @"URL", a4, @"metadata", 0)}];
  }

LABEL_18:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)resourceBundles
{
  if (result)
  {
    v1 = result;
    result = result[13];
    if (!result)
    {
      v2 = [v1[4] objectForKey:@"NSPersistentStoreCoordinatorResourceBundlesForMigration"];
      v3 = MEMORY[0x1E695E0F0];
      if (v2)
      {
        v4 = v2;
      }

      else
      {
        v4 = MEMORY[0x1E695E0F0];
      }

      v5 = [v1[4] objectForKey:@"_NSAutomaticMigrationResourceBundlesOption"];
      if (v5)
      {
        v6 = v5;
      }

      else
      {
        v6 = v3;
      }

      result = [v4 arrayByAddingObjectsFromArray:v6];
      v1[13] = result;
    }
  }

  return result;
}

- (uint64_t)setSourceMetadata:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [*(result + 48) isEqual:a2];
    if ((result & 1) == 0)
    {

      result = a2;
      *(v3 + 48) = result;
    }
  }

  return result;
}

- (id)createMigrationManagerForSourceModel:(id)a3 destinationModel:(id)a4 error:(id *)a5
{
  v8 = objc_opt_class();
  if (BYTE2(z9dsptsiQ80etb9782fsrs98bfdle88) != 1)
  {
    goto LABEL_14;
  }

  v9 = self ? self->_mappingModel : 0;
  if (![(NSMappingModel *)v9 _isInferredMappingModel])
  {
    goto LABEL_14;
  }

  v10 = +[NSPersistentStoreCoordinator registeredStoreTypes];
  if (self)
  {
    v11 = [(NSDictionary *)self->_sourceMetadata valueForKey:@"NSStoreType"];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(NSDictionary *)v10 objectForKey:v11];
  if (objc_opt_class() != v12)
  {
    if (![v12 isNSValue])
    {
      goto LABEL_14;
    }

    v12 = [v12 pointerValue];
  }

  if (v12)
  {
    [v12 migrationManagerClass];
    if (objc_opt_respondsToSelector())
    {
      if ([objc_msgSend(v12 "migrationManagerClass")])
      {
        v8 = [v12 migrationManagerClass];
      }
    }
  }

LABEL_14:
  v13 = [[v8 alloc] initWithSourceModel:a3 destinationModel:a4];

  return v13;
}

- (id)migrateStoreAtURL:(id)a3 withManager:(id)a4 metadata:(id)a5 options:(id)a6 error:(id *)a7
{
  if (self)
  {
    v11 = self;
    v12 = *(self + 8);
    v13 = *(self + 9);
    v14 = [+[NSStoreMigrationPolicy migrationStoreOptionsFromStoreOptions:](NSStoreMigrationPolicy *(self + 4))];
    if (*(v11 + 14))
    {
      [v14 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"NSIgnorePersistentStoreVersioningOption"}];
    }

    [v14 setValue:objc_msgSend(*(v11 + 1) forKey:{"codableAdapterRegistry"), @"NSPersistentStoreCoordinatorCodableAdapterFactoryKey"}];
    if (a4)
    {
      if (*(v11 + 120))
      {
        v15 = 8;
      }

      else
      {
        v15 = 0;
      }

      *(a4 + 24) = *(a4 + 24) & 0xFFFFFFF7 | v15;
      v16 = *(v11 + 16);
      v17 = *(a4 + 9);
      if (v17 != v16)
      {

        *(a4 + 9) = 0;
        *(a4 + 9) = [v16 copy];
      }

      v18 = *(v11 + 17);
      v19 = *(a4 + 10);
      if (v19 != v18)
      {

        *(a4 + 10) = 0;
        *(a4 + 10) = [v18 copy];
      }
    }

    if ([a4 migrateStoreFromURL:a3 type:objc_msgSend(*(v11 + 6) options:"valueForKey:" withMappingModel:@"NSStoreType" toDestinationURL:v14 destinationType:*(v11 + 7) destinationOptions:v12 error:{v13, +[NSStoreMigrationPolicy migrationStoreOptionsFromStoreOptions:](NSStoreMigrationPolicy, a6), a7}])
    {
      return *(v11 + 8);
    }

    else
    {
      return 0;
    }
  }

  return self;
}

+ (id)migrationStoreOptionsFromStoreOptions:(uint64_t)a1
{
  v8[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = [a2 mutableCopy];
  [v3 removeObjectsForKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", @"NSPersistentStoreUbiquitousContentURLKey", @"NSPersistentStoreUbiquitousContentNameKey", @"NSMigratePersistentStoresAutomaticallyOption", @"NSInferMappingModelAutomaticallyOption", 0)}];
  [v3 removeObjectForKey:@"NSCoreDataCoreSpotlightExporter"];
  if ([objc_msgSend(v3 valueForKey:{@"NSPersistentHistoryTrackingKey", "isNSDictionary"}])
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v3, "valueForKey:", @"NSPersistentHistoryTrackingKey"}];
    v8[0] = @"NSPersistentHistoryTrackingEntitiesToExclude";
    v8[1] = @"NSPersistentHistoryTrackingEntitiesToInclude";
    [v4 removeObjectsForKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v8, 2)}];
    [v3 setValue:v4 forKey:@"NSPersistentHistoryTrackingKey"];
  }

  [v3 removeObjectForKey:@"NSPersistentStoreRemoveStoreOnCleanup"];
  v7[0] = @"NSPersistentCloudKitContainerOptionsKey";
  v7[1] = @"NSPersistentStoreMirroringOptionsKey";
  [v3 removeObjectsForKeys:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v7, 2)}];
  result = v3;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setPersistentStoreCoordinator:(void *)a3 sourceURL:(void *)a4 configuration:(void *)a5 metadata:(void *)a6 options:
{
  if (result)
  {
    v11 = result;
    v12 = result[1];
    if (v12 != a2)
    {

      result = a2;
      v11[1] = result;
    }

    v13 = v11[2];
    if (v13 != a3)
    {

      result = a3;
      v11[2] = result;
    }

    v14 = v11[3];
    if (v14 != a4)
    {

      result = a4;
      v11[3] = result;
    }

    v15 = v11[6];
    if (v15 != a5)
    {

      result = a5;
      v11[6] = result;
    }

    v16 = v11[4];
    if (v16 != a6)
    {

      result = a6;
      v11[4] = result;
    }
  }

  return result;
}

- (uint64_t)setMigrationManager:(uint64_t)a1
{
  result = [*(a1 + 96) isEqual:a2];
  if ((result & 1) == 0)
  {

    result = a2;
    *(a1 + 96) = result;
  }

  return result;
}

+ (id)destinationURLForMigrationSourceURL:(id)a3 createDocumentReplacementDirectory:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = [a3 path];
  v9 = [v8 lastPathComponent];
  if (v6)
  {
    result = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    if (result)
    {

      return [result URLByAppendingPathComponent:v9];
    }
  }

  else
  {
    v11 = [objc_msgSend(v8 "stringByDeletingLastPathComponent")];
    v12 = MEMORY[0x1E695DFF8];

    return [v12 fileURLWithPath:v11 isDirectory:0];
  }

  return result;
}

- (uint64_t)_gatherDataAndPerformMigration:(uint64_t)a1
{
  v2 = a1;
  v71 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v61 = [(_PFBackgroundRuntimeVoucher *)_PFRunningBoardBackgroundMigrationVoucher _beginPowerAssertionNamed:@"CoreData: Schema migration (policy)"];
    v4 = [*(v2 + 8) managedObjectModel];
    v5 = 0;
    v6 = [v4 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v6)
    {
      v7 = *v64;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v64 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v5 |= [(NSEntityDescription *)*(*(&v63 + 1) + 8 * i) _hasAttributesWithExternalDataReferences];
        }

        v6 = [v4 countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v6);
    }

    v9 = [*(v2 + 16) path];
    v10 = [v9 pathExtension];
    v11 = v10;
    if (v10 && ![v10 isEqualToString:&stru_1EF3F1768])
    {
      v12 = [objc_msgSend(objc_msgSend(v9 "stringByDeletingPathExtension")];
    }

    else
    {
      v12 = [v9 stringByAppendingString:@"~"];
    }

    v13 = v12;
    v14 = [MEMORY[0x1E696AC08] defaultManager];
    if (v5)
    {
      v15 = [objc_msgSend(-[NSDictionary valueForKey:](+[NSPersistentStoreCoordinator registeredStoreTypes](NSPersistentStoreCoordinator "registeredStoreTypes")];
      if ([v14 fileExistsAtPath:{objc_msgSend(v15, "path")}])
      {
        if (([v14 removeItemAtURL:v15 error:0] & 1) == 0)
        {
          if (!a2)
          {
            goto LABEL_102;
          }

          v25 = MEMORY[0x1E696ABC0];
          v26 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Unable to delete file (backup external data references URL)", @"reason", v15, @"URL", 0}];
          v27 = [v25 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v26];
          goto LABEL_28;
        }
      }
    }

    v16 = [v2 sourceModelForStoreAtURL:*(v2 + 16) metadata:*(v2 + 48) error:a2];
    [v16 _setIsEditable:0];
    v17 = [*(v2 + 40) isEqual:v16];
    v18 = *(v2 + 40);
    if ((v17 & 1) == 0)
    {

      v18 = v16;
      *(v2 + 40) = v18;
    }

    if (!v18)
    {
      goto LABEL_102;
    }

    v19 = [*(v2 + 8) managedObjectModel];
    v20 = [(NSStoreMigrationPolicy *)v2 resourceBundles];
    v21 = [*(v2 + 32) objectForKey:@"NSInferMappingModelAutomaticallyOption"];
    v22 = v21;
    if (v21 && [v21 isNSString] && objc_msgSend(@"force", "isEqualToString:", v22))
    {
      v22 = [MEMORY[0x1E696AD98] numberWithBool:1];
      [v20 count];
      v23 = 0;
      v24 = 1;
    }

    else
    {
      v23 = [NSMappingModel _mappingModelFromBundles:v20 forSourceModel:v18 destinationModel:v19];
      if (v23)
      {
        goto LABEL_51;
      }

      if ([v20 count])
      {
        v24 = 0;
        v23 = 0;
      }

      else
      {
        v23 = [NSMappingModel _mappingModelFromBundles:v18 forSourceModel:v19 destinationModel:?];
        v24 = 0;
      }
    }

    if ([v22 BOOLValue] && (*buf = 0, (v23 = +[NSMappingModel inferredMappingModelForSourceModel:destinationModel:error:](NSMappingModel, "inferredMappingModelForSourceModel:destinationModel:error:", v18, v19, buf)) == 0))
    {
      v30 = MEMORY[0x1E696ABC0];
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Can't find or automatically infer mapping model for migration", @"reason", v18, @"sourceModel", v19, @"destinationModel", *buf, *MEMORY[0x1E696AA08], 0}];
      v28 = [v30 errorWithDomain:*MEMORY[0x1E696A250] code:134140 userInfo:v31];
    }

    else
    {
      v28 = 0;
      if (v23)
      {
        goto LABEL_51;
      }
    }

    if ([v20 count])
    {
      v29 = v24;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      v23 = 0;
    }

    else
    {
      v23 = [NSMappingModel _mappingModelFromBundles:v18 forSourceModel:v19 destinationModel:?];
    }

    if (!(v23 | v28))
    {
      v32 = MEMORY[0x1E696ABC0];
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Can't find mapping model for migration", @"reason", v18, @"sourceModel", v19, @"destinationModel", 0}];
      v28 = [v32 errorWithDomain:*MEMORY[0x1E696A250] code:134140 userInfo:v33];
      goto LABEL_43;
    }

    if (!v23)
    {
LABEL_43:
      if (v28)
      {
        if (a2)
        {
          v23 = 0;
          *a2 = v28;
          goto LABEL_51;
        }
      }

      else
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSStoreMigrationPolicy.m";
          v68 = 1024;
          LODWORD(v69) = 515;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v35 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSStoreMigrationPolicy.m";
          v68 = 1024;
          LODWORD(v69) = 515;
          _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      v23 = 0;
    }

LABEL_51:
    v36 = [*(v2 + 56) isEqual:v23];
    v37 = *(v2 + 56);
    if ((v36 & 1) == 0)
    {

      v37 = v23;
      *(v2 + 56) = v37;
    }

    if (!v37)
    {
      goto LABEL_102;
    }

    v38 = *(v2 + 32);
    v39 = [*(v2 + 88) isEqual:v38];
    v40 = *(v2 + 88);
    if ((v39 & 1) == 0)
    {

      v40 = v38;
      *(v2 + 88) = v40;
    }

    if (!v40)
    {
      goto LABEL_102;
    }

    v41 = [*(v2 + 48) valueForKey:@"NSStoreType"];
    v42 = [*(v2 + 72) isEqual:v41];
    v43 = *(v2 + 72);
    if ((v42 & 1) == 0)
    {

      v43 = v41;
      *(v2 + 72) = v43;
    }

    if (!v43)
    {
      goto LABEL_102;
    }

    v44 = *(v2 + 24);
    if (([*(v2 + 80) isEqual:v44] & 1) == 0)
    {

      *(v2 + 80) = v44;
    }

    v45 = [v2 createMigrationManagerForSourceModel:*(v2 + 40) destinationModel:objc_msgSend(*(v2 + 8) error:{"managedObjectModel"), a2}];
    [v45 setDestinationConfigurationForCloudKitValidation:*(v2 + 136)];
    [(NSStoreMigrationPolicy *)v2 setMigrationManager:v45];
    if (!*(v2 + 96))
    {
      goto LABEL_102;
    }

    v46 = [objc_opt_class() _canMigrateWithMappingModel:*(v2 + 56)];
    if (v46)
    {
      v47 = *(v2 + 16);
      if (!v47)
      {
        goto LABEL_102;
      }

      goto LABEL_70;
    }

    v47 = [objc_opt_class() destinationURLForMigrationSourceURL:*(v2 + 16) createDocumentReplacementDirectory:0 error:a2];
    if (!v47)
    {
      goto LABEL_102;
    }

    if (![*(v2 + 16) isEqual:v47])
    {
LABEL_70:
      if (([*(v2 + 64) isEqual:v47] & 1) == 0)
      {

        *(v2 + 64) = v47;
      }

      if (v5)
      {
        [objc_msgSend(-[NSDictionary valueForKey:](+[NSPersistentStoreCoordinator registeredStoreTypes](NSPersistentStoreCoordinator "registeredStoreTypes")];
      }

      v50 = [*(v2 + 88) mutableCopy];
      [v50 setObject:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreUnlinkDestroyOption"];
      [v50 setObject:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreForceDestroyOption"];
      if ((v46 & 1) != 0 || ![objc_msgSend(v47 "path")])
      {
LABEL_84:
        if (![v2 migrateStoreAtURL:*(v2 + 16) withManager:*(v2 + 96) metadata:*(v2 + 48) options:*(v2 + 88) error:a2])
        {
          if (([*(v2 + 16) isEqual:v47] & 1) == 0 && objc_msgSend(objc_msgSend(v47, "path"), "hasSuffix:", @".migrationdestination_41b5a6b5c6e848c462a8480cd24caef3"))
          {
            if (+[NSMappingModel migrationDebugLevel]< 1)
            {
              [*(v2 + 8) _destroyPersistentStoreAtURL:v47 withType:*(v2 + 72) options:v50 error:0];
              [*(v2 + 8) removePersistentStore:objc_msgSend(*(v2 + 8) error:{"persistentStoreForURL:", v47), 0}];
              [v14 removeItemAtPath:objc_msgSend(v47 error:{"path"), 0}];
              [v14 removeItemAtPath:objc_msgSend(objc_msgSend(v47 error:{"path"), "stringByAppendingString:", @"-shm", 0}];
              [v14 removeItemAtPath:objc_msgSend(objc_msgSend(v47 error:{"path"), "stringByAppendingString:", @"-journal", 0}];
              [v14 removeItemAtPath:objc_msgSend(objc_msgSend(v47 error:{"path"), "stringByAppendingString:", @"-wal", 0}];
            }

            else
            {
              v55 = objc_autoreleasePoolPush();
              if (_NSCoreDataIsOSLogEnabled(4))
              {
                if (_pflogging_catastrophic_mode)
                {
                  v56 = _PFLogGetLogStream(1);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *&buf[4] = v47;
                    _os_log_error_impl(&dword_18565F000, v56, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) leaving incompletely migrated store on disk after automatic migration failure. (%@)\n", buf, 0xCu);
                  }
                }

                else
                {
                  v57 = _PFLogGetLogStream(4);
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    *&buf[4] = v47;
                    _os_log_impl(&dword_18565F000, v57, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) leaving incompletely migrated store on disk after automatic migration failure. (%@)\n", buf, 0xCu);
                  }
                }
              }

              if (_pflogging_catastrophic_mode)
              {
                v58 = 1;
              }

              else
              {
                v58 = 4;
              }

              _NSCoreDataLog_console(v58, "(migration) leaving incompletely migrated store on disk after automatic migration failure. (%@)", v47);
              objc_autoreleasePoolPop(v55);
            }
          }

          goto LABEL_102;
        }

        [(NSStoreMigrationPolicy *)v2 setMigrationManager:?];
        v53 = [NSStoreMigrationPolicy migrationStoreOptionsFromStoreOptions:?];
        v54 = [+[NSStoreMigrationPolicy migrationStoreOptionsFromStoreOptions:](NSStoreMigrationPolicy *(v2 + 32))];
        [v54 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", 1), @"NSPersistentStoreUnlinkDestroyOption"}];
        [v54 setObject:MEMORY[0x1E695E118] forKey:@"NSPersistentStoreForceDestroyOption"];
        if (v46 & 1) != 0 || ([*(v2 + 8) _replacePersistentStoreAtURL:*(v2 + 16) destinationOptions:v53 withPersistentStoreFromURL:v47 sourceOptions:v54 storeType:*(v2 + 72) error:a2])
        {
          v2 = [*(v2 + 8) addPersistentStoreWithType:*(v2 + 72) configuration:*(v2 + 80) URL:*(v2 + 16) options:*(v2 + 88) error:a2];
          goto LABEL_103;
        }

LABEL_102:
        v2 = 0;
        goto LABEL_103;
      }

      v62 = 0;
      if ([*(v2 + 8) _destroyPersistentStoreAtURL:v47 withType:*(v2 + 72) options:v50 error:&v62])
      {
LABEL_83:
        [*(v2 + 8) removePersistentStore:objc_msgSend(*(v2 + 8) error:{"persistentStoreForURL:", v47), 0}];
        [v14 removeItemAtPath:objc_msgSend(v47 error:{"path"), 0}];
        [v14 removeItemAtPath:objc_msgSend(objc_msgSend(v47 error:{"path"), "stringByAppendingString:", @"-shm", 0}];
        [v14 removeItemAtPath:objc_msgSend(objc_msgSend(v47 error:{"path"), "stringByAppendingString:", @"-journal", 0}];
        [v14 removeItemAtPath:objc_msgSend(objc_msgSend(v47 error:{"path"), "stringByAppendingString:", @"-wal", 0}];
        goto LABEL_84;
      }

      v51 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(1))
      {
        if (_pflogging_catastrophic_mode)
        {
          v52 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_105;
          }
        }

        else
        {
          v52 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
LABEL_105:
            *buf = 138412546;
            *&buf[4] = v47;
            v68 = 2112;
            v69 = v62;
            _os_log_error_impl(&dword_18565F000, v52, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) Failed to remove orphaned, partially migrated store file %@: %@\n", buf, 0x16u);
          }
        }
      }

      _NSCoreDataLog_console(1, "(migration) Failed to remove orphaned, partially migrated store file %@: %@", v47, v62);
      objc_autoreleasePoolPop(v51);
      goto LABEL_83;
    }

    if (!a2)
    {
      goto LABEL_102;
    }

    v48 = MEMORY[0x1E696ABC0];
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Migration source and destination URLs must be different", @"reason", *(v2 + 16), @"sourceURL", v47, @"destinationURL", 0}];
    v27 = [v48 errorWithDomain:*MEMORY[0x1E696A250] code:134110 userInfo:v49];
LABEL_28:
    v2 = 0;
    *a2 = v27;
LABEL_103:
    [(_PFBackgroundRuntimeVoucher *)_PFRunningBoardBackgroundMigrationVoucher _endPowerAssertionWithVoucher:v61];
  }

  v59 = *MEMORY[0x1E69E9840];
  return v2;
}

@end