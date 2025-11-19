@interface NSMappingModel
+ (NSMappingModel)inferredMappingModelForSourceModel:(NSManagedObjectModel *)sourceModel destinationModel:(NSManagedObjectModel *)destinationModel error:(NSError *)error;
+ (NSMappingModel)mappingModelFromBundles:(NSArray *)bundles forSourceModel:(NSManagedObjectModel *)sourceModel destinationModel:(NSManagedObjectModel *)destinationModel;
+ (id)_mappingModelFromBundles:(void *)a3 forSourceModel:(void *)a4 destinationModel:;
+ (id)_newMappingModelFromBundles:(id)a3 forSourceHashes:(id)a4 destinationHashes:(id)a5;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSArray)entityMappings;
- (NSMappingModel)initWithCoder:(id)a3;
- (NSMappingModel)initWithContentsOfURL:(NSURL *)url;
- (id)_initWithEntityMappings:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (uint64_t)_hasInferredMappingNeedingValidation;
- (uint64_t)_isInferredMappingModel;
- (void)_throwIfNotEditable;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setEntityMappings:(NSArray *)entityMappings;
@end

@implementation NSMappingModel

+ (void)initialize
{
  objc_opt_self();
  if (objc_opt_class() == a1)
  {
    objc_opt_self();
    _CoreData_MigrationDebug = [_PFRoutines integerValueForOverride:?];
    if (!_CoreData_MigrationDebug)
    {
      v3 = getprogname();
      if (v3)
      {
        v4 = v3;
        if (*v3)
        {
          if (!strncmp("assetsd", v3, 7uLL) || !strncmp("photolibraryd", v4, 0xDuLL))
          {
            _CoreData_MigrationDebug = 1;
          }
        }
      }
    }
  }
}

+ (id)_newMappingModelFromBundles:(id)a3 forSourceHashes:(id)a4 destinationHashes:(id)a5
{
  v114 = *MEMORY[0x1E69E9840];
  v6 = +[NSMappingModel migrationDebugLevel];
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v78 = [a3 countByEnumeratingWithState:&v100 objects:v113 count:16];
  if (v78)
  {
    v7 = *v101;
    v8 = &unk_1EA8C8000;
    v76 = *v101;
    v77 = a3;
    v84 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v101 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v79 = v9;
        v10 = *(*(&v100 + 1) + 8 * v9);
        v82 = objc_autoreleasePoolPush();
        v11 = [v10 pathsForResourcesOfType:@"cdm" inDirectory:0];
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        obj = v11;
        v89 = [v11 countByEnumeratingWithState:&v96 objects:v112 count:16];
        if (v89)
        {
          v86 = *v97;
          while (2)
          {
            for (i = 0; i != v89; ++i)
            {
              if (*v97 != v86)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v96 + 1) + 8 * i);
              v14 = [NSMappingModel alloc];
              v91 = v13;
              v15 = -[NSMappingModel initWithContentsOfURL:](v14, "initWithContentsOfURL:", [MEMORY[0x1E695DFF8] fileURLWithPath:v13]);
              v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              v92 = 0u;
              v93 = 0u;
              v94 = 0u;
              v95 = 0u;
              v90 = v15;
              v18 = [(NSMappingModel *)v15 entityMappings];
              v19 = [(NSArray *)v18 countByEnumeratingWithState:&v92 objects:v111 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v93;
                do
                {
                  for (j = 0; j != v20; ++j)
                  {
                    if (*v93 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v92 + 1) + 8 * j);
                    v24 = [v23 sourceEntityVersionHash];
                    if (v24)
                    {
                      [(__CFString *)v16 addObject:v24];
                    }

                    v25 = [v23 destinationEntityVersionHash];
                    if (v25)
                    {
                      [(__CFString *)v17 addObject:v25];
                    }
                  }

                  v20 = [(NSArray *)v18 countByEnumeratingWithState:&v92 objects:v111 count:16];
                }

                while (v20);
              }

              if (v6 >= 2)
              {
                v26 = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (v8[530])
                  {
                    LogStream = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412802;
                      *v105 = v91;
                      *&v105[8] = 2112;
                      v106 = v16;
                      v107 = 2112;
                      v108 = v17;
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) checking mapping model %@\n source hashes: \n%@\n destination hashes: %@\n\n", buf, 0x20u);
                    }
                  }

                  else
                  {
                    v28 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412802;
                      *v105 = v91;
                      *&v105[8] = 2112;
                      v106 = v16;
                      v107 = 2112;
                      v108 = v17;
                      _os_log_impl(&dword_18565F000, v28, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) checking mapping model %@\n source hashes: \n%@\n destination hashes: %@\n\n", buf, 0x20u);
                    }
                  }
                }

                if (v8[530])
                {
                  v29 = 1;
                }

                else
                {
                  v29 = 4;
                }

                _NSCoreDataLog_console(v29, "(migration) checking mapping model %@\n source hashes: \n%@\n destination hashes: %@\n", v91, v16, v17);
                objc_autoreleasePoolPop(v26);
              }

              if ([(__CFString *)v16 count])
              {
                v30 = [(__CFString *)v16 isSubsetOfSet:a4];
              }

              else
              {
                v30 = 0;
              }

              if ([(__CFString *)v17 count])
              {
                v31 = [(__CFString *)v17 isSubsetOfSet:a5];
              }

              else
              {
                v31 = 0;
              }

              v32 = v30 & v31;
              if (v6 >= 2 && (v32 & 1) == 0)
              {
                context = objc_autoreleasePoolPush();
                _pflogInitialize(4);
                if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                {
                  if (v8[530])
                  {
                    v33 = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                    {
                      v34 = @"source";
                      if (v30)
                      {
                        v34 = &stru_1EF3F1768;
                      }

                      v80 = v34;
                      if (v31)
                      {
                        v35 = &stru_1EF3F1768;
                      }

                      else
                      {
                        v35 = @"destination";
                      }

                      v36 = [v91 lastPathComponent];
                      *buf = 138413058;
                      *v105 = v80;
                      *&v105[8] = 2112;
                      v106 = @" and ";
                      v107 = 2112;
                      v108 = v35;
                      v109 = 2112;
                      v110 = v36;
                      _os_log_error_impl(&dword_18565F000, v33, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) mismatched %@%@%@ hashes for mapping model %@\n\n", buf, 0x2Au);
                    }
                  }

                  else
                  {
                    v37 = _PFLogGetLogStream(4);
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                    {
                      v38 = @"source";
                      if (v30)
                      {
                        v38 = &stru_1EF3F1768;
                      }

                      v81 = v38;
                      if (v31)
                      {
                        v39 = &stru_1EF3F1768;
                      }

                      else
                      {
                        v39 = @"destination";
                      }

                      v40 = [v91 lastPathComponent];
                      *buf = 138413058;
                      *v105 = v81;
                      *&v105[8] = 2112;
                      v106 = @" and ";
                      v107 = 2112;
                      v108 = v39;
                      v109 = 2112;
                      v110 = v40;
                      _os_log_impl(&dword_18565F000, v37, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) mismatched %@%@%@ hashes for mapping model %@\n\n", buf, 0x2Au);
                    }
                  }
                }

                v41 = v8[530];
                if (v30)
                {
                  v42 = &stru_1EF3F1768;
                }

                else
                {
                  v42 = @"source";
                }

                v43 = v8;
                if (v31)
                {
                  v44 = &stru_1EF3F1768;
                }

                else
                {
                  v44 = @"destination";
                }

                v45 = [v91 lastPathComponent];
                v46 = 4;
                if (v41)
                {
                  v46 = 1;
                }

                v75 = v44;
                v8 = v43;
                v32 = v30 & v31;
                _NSCoreDataLog_console(v46, "(migration) mismatched %@%@%@ hashes for mapping model %@\n", v42, @" and ", v75, v45);
                objc_autoreleasePoolPop(context);
                if ((v30 & 1) == 0 && [(__CFString *)v16 intersectsSet:a4])
                {
                  v47 = [(__CFString *)v16 mutableCopy];
                  [v47 intersectSet:a4];
                  v48 = [a4 count];
                  v49 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (v8[530])
                    {
                      v50 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                      {
                        v51 = [v47 count];
                        *buf = 67109376;
                        *v105 = v48 - v51;
                        *&v105[4] = 1024;
                        *&v105[6] = v48;
                        _os_log_error_impl(&dword_18565F000, v50, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) no match found for %d of %d mapping model source hashes\n", buf, 0xEu);
                      }
                    }

                    else
                    {
                      v52 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                      {
                        v53 = [v47 count];
                        *buf = 67109376;
                        *v105 = v48 - v53;
                        *&v105[4] = 1024;
                        *&v105[6] = v48;
                        _os_log_impl(&dword_18565F000, v52, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) no match found for %d of %d mapping model source hashes\n", buf, 0xEu);
                      }
                    }
                  }

                  v54 = v8[530];
                  v55 = v48 - [v47 count];
                  if (v54)
                  {
                    v56 = 1;
                  }

                  else
                  {
                    v56 = 4;
                  }

                  _NSCoreDataLog_console(v56, "(migration) no match found for %d of %d mapping model source hashes", v55, v48);
                  objc_autoreleasePoolPop(v49);
                }

                v6 = v84;
                if ((v31 & 1) == 0 && [(__CFString *)v17 intersectsSet:a5])
                {
                  v57 = [(__CFString *)v17 mutableCopy];
                  [v57 intersectSet:a5];
                  v58 = [a5 count];
                  v59 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (v8[530])
                    {
                      v60 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                      {
                        v61 = [v57 count];
                        *buf = 67109376;
                        *v105 = v58 - v61;
                        *&v105[4] = 1024;
                        *&v105[6] = v58;
                        _os_log_error_impl(&dword_18565F000, v60, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) no match found for %d of %d mapping model destination hashes\n", buf, 0xEu);
                      }
                    }

                    else
                    {
                      v62 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
                      {
                        v63 = [v57 count];
                        *buf = 67109376;
                        *v105 = v58 - v63;
                        *&v105[4] = 1024;
                        *&v105[6] = v58;
                        _os_log_impl(&dword_18565F000, v62, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) no match found for %d of %d mapping model destination hashes\n", buf, 0xEu);
                      }
                    }
                  }

                  v64 = v8[530];
                  v65 = v58 - [v57 count];
                  if (v64)
                  {
                    v66 = 1;
                  }

                  else
                  {
                    v66 = 4;
                  }

                  _NSCoreDataLog_console(v66, "(migration) no match found for %d of %d mapping model destination hashes", v65, v58);
                  objc_autoreleasePoolPop(v59);

                  v6 = v84;
                }
              }

              if (v32)
              {
                if (v6 >= 1)
                {
                  v69 = objc_autoreleasePoolPush();
                  _pflogInitialize(4);
                  if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                  {
                    if (v8[530])
                    {
                      v70 = _PFLogGetLogStream(1);
                      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412290;
                        *v105 = v91;
                        _os_log_error_impl(&dword_18565F000, v70, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) found compatible mapping model %@\n", buf, 0xCu);
                      }
                    }

                    else
                    {
                      v71 = _PFLogGetLogStream(4);
                      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        *v105 = v91;
                        _os_log_impl(&dword_18565F000, v71, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) found compatible mapping model %@\n", buf, 0xCu);
                      }
                    }
                  }

                  if (v8[530])
                  {
                    v72 = 1;
                  }

                  else
                  {
                    v72 = 4;
                  }

                  _NSCoreDataLog_console(v72, "(migration) found compatible mapping model %@", v91);
                  objc_autoreleasePoolPop(v69);
                }

                objc_autoreleasePoolPop(v82);
                v68 = v90;
                goto LABEL_113;
              }
            }

            v89 = [obj countByEnumeratingWithState:&v96 objects:v112 count:16];
            if (v89)
            {
              continue;
            }

            break;
          }
        }

        objc_autoreleasePoolPop(v82);
        v9 = v79 + 1;
        v7 = v76;
        a3 = v77;
      }

      while (v79 + 1 != v78);
      v67 = [v77 countByEnumeratingWithState:&v100 objects:v113 count:16];
      v68 = 0;
      v78 = v67;
    }

    while (v67);
  }

  else
  {
    v68 = 0;
  }

LABEL_113:
  v73 = *MEMORY[0x1E69E9840];
  return v68;
}

+ (NSMappingModel)mappingModelFromBundles:(NSArray *)bundles forSourceModel:(NSManagedObjectModel *)sourceModel destinationModel:(NSManagedObjectModel *)destinationModel
{
  result = [NSMappingModel _mappingModelFromBundles:sourceModel forSourceModel:destinationModel destinationModel:?];
  if (!result)
  {

    return [NSMappingModel _mappingModelFromBundles:sourceModel forSourceModel:destinationModel destinationModel:?];
  }

  return result;
}

+ (id)_mappingModelFromBundles:(void *)a3 forSourceModel:(void *)a4 destinationModel:
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  v8 = +[NSMappingModel migrationDebugLevel];
  v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (v8 >= 2)
  {
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v40 = [a3 entityVersionHashesByName];
          v41 = 2112;
          v42 = [a4 entityVersionHashesByName];
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) looking for mapping model with \n source hashes: \n%@\n destination hashes: %@\n\n", buf, 0x16u);
        }
      }

      else
      {
        v12 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v40 = [a3 entityVersionHashesByName];
          v41 = 2112;
          v42 = [a4 entityVersionHashesByName];
          _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) looking for mapping model with \n source hashes: \n%@\n destination hashes: %@\n\n", buf, 0x16u);
        }
      }
    }

    v13 = _pflogging_catastrophic_mode;
    v14 = [a3 entityVersionHashesByName];
    v15 = [a4 entityVersionHashesByName];
    v16 = 4;
    if (v13)
    {
      v16 = 1;
    }

    _NSCoreDataLog_console(v16, "(migration) looking for mapping model with \n source hashes: \n%@\n destination hashes: %@\n", v14, v15);
    objc_autoreleasePoolPop(v10);
  }

  v17 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(objc_msgSend(a3, "entityVersionHashesByName"), "allValues")}];
  v18 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(objc_msgSend(a4, "entityVersionHashesByName"), "allValues")}];
  if ([a2 count])
  {
    v19 = [a2 mutableCopy];
    v20 = [v7 _newMappingModelFromBundles:v19 forSourceHashes:v17 destinationHashes:v18];
    if (v20)
    {
LABEL_24:
      [v9 drain];
      goto LABEL_25;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E695DF70] array];
    v25 = [MEMORY[0x1E696AAE8] mainBundle];
    if (v25)
    {
      [v19 addObject:v25];
    }

    v23 = [v7 _newMappingModelFromBundles:v19 forSourceHashes:v17 destinationHashes:v18];
    if (v23)
    {
      goto LABEL_21;
    }

    v26 = [MEMORY[0x1E696AAE8] allBundles];
    v27 = v7;
    v28 = v26;
    v38 = v27;
    v20 = [v27 _newMappingModelFromBundles:v26 forSourceHashes:v17 destinationHashes:v18];
    [v19 addObjectsFromArray:v28];
    if (v20)
    {
      goto LABEL_24;
    }

    v29 = [MEMORY[0x1E696AAE8] allFrameworks];
    v20 = [v38 _newMappingModelFromBundles:v29 forSourceHashes:v17 destinationHashes:v18];
    [v19 addObjectsFromArray:v29];
    v7 = v38;
    if (v20)
    {
      goto LABEL_24;
    }
  }

  v37 = v7;
  v21 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(-[NSManagedObjectModel _entityVersionHashesByNameInStyle:](a3, 1), "allValues")}];
  v22 = [v17 isEqual:v21];
  if ((v22 & 1) == 0)
  {
    v23 = [v37 _newMappingModelFromBundles:v19 forSourceHashes:v21 destinationHashes:v18];
    if (v23)
    {
LABEL_21:
      v20 = v23;
      goto LABEL_24;
    }
  }

  v24 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(objc_msgSend(a4, "entityVersionHashesByName"), "allValues")}];
  if ([v18 isEqual:v24])
  {
    v20 = 0;
  }

  else
  {
    v20 = [v37 _newMappingModelFromBundles:v19 forSourceHashes:v21 destinationHashes:v24];
    if (v20)
    {
      v32 = 1;
    }

    else
    {
      v32 = v22;
    }

    if ((v32 & 1) == 0)
    {
      v20 = [v37 _newMappingModelFromBundles:v19 forSourceHashes:v17 destinationHashes:v24];
    }
  }

  [v9 drain];
  if (v8 >= 2 && !v20)
  {
    v33 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v34 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) no suitable mapping model found\n", buf, 2u);
        }
      }

      else
      {
        v35 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v35, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) no suitable mapping model found\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v36 = 1;
    }

    else
    {
      v36 = 4;
    }

    _NSCoreDataLog_console(v36, "(migration) no suitable mapping model found");
    objc_autoreleasePoolPop(v33);
    v20 = 0;
  }

LABEL_25:
  result = v20;
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSMappingModel)inferredMappingModelForSourceModel:(NSManagedObjectModel *)sourceModel destinationModel:(NSManagedObjectModel *)destinationModel error:(NSError *)error
{
  v44 = *MEMORY[0x1E69E9840];
  if (!sourceModel)
  {
    v36 = MEMORY[0x1E695DF30];
    v37 = *MEMORY[0x1E695D940];
    v38 = @"Cannot create an inferred NSMappingModel with a nil source model";
    goto LABEL_32;
  }

  if (!destinationModel)
  {
    v36 = MEMORY[0x1E695DF30];
    v37 = *MEMORY[0x1E695D940];
    v38 = @"Cannot create an inferred NSMappingModel with a nil destination model";
LABEL_32:
    objc_exception_throw([v36 exceptionWithName:v37 reason:v38 userInfo:0]);
  }

  v8 = +[NSMappingModel migrationDebugLevel];
  v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (v8 >= 1)
  {
    v10 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v41 = [(NSManagedObjectModel *)sourceModel entityVersionHashesByName];
          v42 = 2112;
          v43 = [(NSManagedObjectModel *)destinationModel entityVersionHashesByName];
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) inferring a mapping model between data models with \n source hashes: \n%@\n destination hashes: %@\n\n", buf, 0x16u);
        }
      }

      else
      {
        v12 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v41 = [(NSManagedObjectModel *)sourceModel entityVersionHashesByName];
          v42 = 2112;
          v43 = [(NSManagedObjectModel *)destinationModel entityVersionHashesByName];
          _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) inferring a mapping model between data models with \n source hashes: \n%@\n destination hashes: %@\n\n", buf, 0x16u);
        }
      }
    }

    v13 = _pflogging_catastrophic_mode == 0;
    v14 = [(NSManagedObjectModel *)sourceModel entityVersionHashesByName];
    v15 = [(NSManagedObjectModel *)destinationModel entityVersionHashesByName];
    v16 = 4;
    if (!v13)
    {
      v16 = 1;
    }

    _NSCoreDataLog_console(v16, "(migration) inferring a mapping model between data models with \n source hashes: \n%@\n destination hashes: %@\n", v14, v15);
    objc_autoreleasePoolPop(v10);
  }

  v39 = 0;
  v17 = [[_NSMappingModelBuilder alloc] initWithSourceModel:sourceModel destinationModel:destinationModel];
  v18 = [(_NSMappingModelBuilder *)v17 newInferredMappingModel:?];
  v19 = v39;

  [v9 drain];
  v20 = v18;
  v21 = v39;
  v22 = 0;
  if (error && v39)
  {
    *error = v39;
  }

  if (v8 >= 1 && !v18)
  {
    v23 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v24 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = v39;
          v26 = [v39 userInfo];
          *buf = 138412546;
          v41 = v25;
          v42 = 2112;
          v43 = v26;
          _os_log_error_impl(&dword_18565F000, v24, OS_LOG_TYPE_ERROR, "CoreData: error: (migration) inferring mapping model failed with error: %@ userInfo: %@\n\n", buf, 0x16u);
        }
      }

      else
      {
        v27 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v39;
          v29 = [v39 userInfo];
          *buf = 138412546;
          v41 = v28;
          v42 = 2112;
          v43 = v29;
          _os_log_impl(&dword_18565F000, v27, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: (migration) inferring mapping model failed with error: %@ userInfo: %@\n\n", buf, 0x16u);
        }
      }
    }

    v30 = _pflogging_catastrophic_mode == 0;
    v31 = v39;
    v32 = [v39 userInfo];
    v33 = 4;
    if (!v30)
    {
      v33 = 1;
    }

    _NSCoreDataLog_console(v33, "(migration) inferring mapping model failed with error: %@ userInfo: %@\n", v31, v32);
    objc_autoreleasePoolPop(v23);
  }

  v34 = *MEMORY[0x1E69E9840];
  return v18;
}

- (NSMappingModel)initWithContentsOfURL:(NSURL *)url
{
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:url];
  v9 = 0;
  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  v7 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v6 fromData:v5 error:&v9];
  [v4 drain];
  return v7;
}

- (void)dealloc
{
  self->_entityMappings = 0;

  self->_entityMappingsByName = 0;
  v3.receiver = self;
  v3.super_class = NSMappingModel;
  [(NSMappingModel *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSMappingModel *)self entityMappings];
    v7 = [objc_msgSend(MEMORY[0x1E695DF70] allocWithZone:{a3), "init"}];
    v8 = [(NSArray *)v6 count];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        v11 = [-[NSArray objectAtIndex:](v6 objectAtIndex:{i), "copy"}];
        [v7 addObject:v11];
      }
    }

    [v5 setEntityMappings:v7];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(NSMappingModel *)self entityMappings];
  v6 = [a3 entityMappings];
  if (v5 == v6)
  {
    return 1;
  }

  v7 = v6;
  result = 0;
  if (v5 && v7)
  {

    return [(NSArray *)v5 isEqual:?];
  }

  return result;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@), entityMappings %@", objc_opt_class(), -[NSMappingModel entityMappings](self, "entityMappings")];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (NSArray)entityMappings
{
  if (self->_entityMappings)
  {
    return &self->_entityMappings->super;
  }

  else
  {
    return NSArray_EmptyArray;
  }
}

- (void)setEntityMappings:(NSArray *)entityMappings
{
  [(NSMappingModel *)self _throwIfNotEditable];
  v5 = self->_entityMappings;
  if (v5 != entityMappings)
  {

    self->_entityMappings = [(NSArray *)entityMappings copy];
    self->_entityMappingsByName = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [(NSArray *)entityMappings count];
    if (v6)
    {
      v7 = v6;
      for (i = 0; v7 != i; ++i)
      {
        v9 = [(NSArray *)entityMappings objectAtIndex:i];
        [(NSMappingModel *)self _throwIfNotEditable];
        if (v9)
        {
          v10 = [v9 name];
          if (!v10)
          {
            v12 = MEMORY[0x1E695DF30];
            v13 = *MEMORY[0x1E695D940];
            v14 = @"Can't add unnamed entity mapping to model.";
            goto LABEL_12;
          }

          v11 = v10;
          if ([(NSMutableDictionary *)self->_entityMappingsByName objectForKey:v10])
          {
            v15 = MEMORY[0x1E695DF30];
            v16 = *MEMORY[0x1E695D930];
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Model already contains an entity mapping named %@.", v11];
            v12 = v15;
            v13 = v16;
LABEL_12:
            objc_exception_throw([v12 exceptionWithName:v13 reason:v14 userInfo:0]);
          }

          [(NSMutableDictionary *)self->_entityMappingsByName setObject:v9 forKey:v11];
        }
      }
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[NSMappingModel entityMappings](self forKey:{"entityMappings"), @"NSEntityMappings"}];
  v5 = [(NSMappingModel *)self entityMappingsByName];

  [a3 encodeObject:v5 forKey:@"NSEntityMappingsByName"];
}

- (NSMappingModel)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = NSMappingModel;
  v4 = [(NSMappingModel *)&v12 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v4->_entityMappings = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, objc_opt_class(), 0), @"NSEntityMappings"}];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v4->_entityMappingsByName = [a3 decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, v10, objc_opt_class(), 0), @"NSEntityMappingsByName"}];
  }

  return v4;
}

- (uint64_t)_isInferredMappingModel
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v1 = [result entityMappings];
    v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v9;
LABEL_4:
      v5 = 0;
      while (1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v8 + 1) + 8 * v5) name];
        result = [v6 hasPrefix:_NSInferredMappingPrefix];
        if (!result)
        {
          break;
        }

        if (v3 == ++v5)
        {
          v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
          if (v3)
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
      result = 1;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_hasInferredMappingNeedingValidation
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v1 = [result entityMappings];
    result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (result)
    {
      v2 = result;
      v3 = *v8;
      while (2)
      {
        v4 = 0;
        do
        {
          if (*v8 != v3)
          {
            objc_enumerationMutation(v1);
          }

          v5 = [*(*(&v7 + 1) + 8 * v4) userInfo];
          if ([objc_msgSend(v5 objectForKey:{_NSInferredMappingCouldFailValidation), "BOOLValue"}])
          {
            result = 1;
            goto LABEL_12;
          }

          ++v4;
        }

        while (v2 != v4);
        result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
        v2 = result;
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

- (id)_initWithEntityMappings:(id)a3
{
  v7.receiver = self;
  v7.super_class = NSMappingModel;
  v4 = [(NSMappingModel *)&v7 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_modelMappingFlags &= ~1u;
    v4->_entityMappings = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5->_entityMappingsByName = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (a3)
    {
      [(NSMappingModel *)v5 setEntityMappings:a3];
    }
  }

  return v5;
}

- (void)_throwIfNotEditable
{
  if (!self || (*&self->_modelMappingFlags & 1) != 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't modify an immutable mapping model." userInfo:{0, v2, v3}]);
  }
}

@end