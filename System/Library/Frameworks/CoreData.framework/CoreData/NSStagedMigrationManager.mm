@interface NSStagedMigrationManager
- (BOOL)_shouldAttemptStagedMigrationWithStoreModelVersionChecksum:(id)checksum coordinatorModelVersionChecksum:(id)versionChecksum error:(id *)error;
- (NSStagedMigrationManager)initWithMigrationStages:(NSArray *)stages;
- (int64_t)_findCurrentMigrationStageFromModelChecksum:(id)checksum;
- (void)dealloc;
@end

@implementation NSStagedMigrationManager

- (NSStagedMigrationManager)initWithMigrationStages:(NSArray *)stages
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(MEMORY[0x1E695DFD8] "setWithArray:"count"")];
  if (v5 != [(NSArray *)stages count])
  {

    v37 = MEMORY[0x1E695DF30];
    v38 = *MEMORY[0x1E695D940];
    v39 = @"Duplicate lightweight migration stages detected.";
    v40 = 0;
    goto LABEL_68;
  }

  selfCopy = self;
  if (!self)
  {
    goto LABEL_65;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v48 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v7 = [(NSArray *)stages countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (!v7)
  {
    v25 = 0;
    v24 = 1;
    goto LABEL_42;
  }

  v8 = v7;
  v9 = *v57;
  v43 = *v57;
  v44 = 0;
LABEL_5:
  v10 = 0;
  while (1)
  {
    if (*v57 != v9)
    {
      objc_enumerationMutation(stages);
    }

    v11 = *(*(&v56 + 1) + 8 * v10);
    context = objc_autoreleasePoolPush();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      versionChecksums = [v11 versionChecksums];
      v13 = [versionChecksums countByEnumeratingWithState:&v52 objects:&v62 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v53;
        v42 = v8;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v53 != v15)
            {
              objc_enumerationMutation(versionChecksums);
            }

            v17 = *(*(&v52 + 1) + 8 * i);
            if ([v6 objectForKey:v17] || objc_msgSend(v48, "objectForKey:", v17) || objc_msgSend(v47, "objectForKey:", v17))
            {
              objc_autoreleasePoolPop(context);
              goto LABEL_37;
            }

            [v6 setObject:v17 forKey:v17];
          }

          v14 = [versionChecksums countByEnumeratingWithState:&v52 objects:&v62 count:16];
          v8 = v42;
          v9 = v43;
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_23;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

LABEL_23:
    objc_autoreleasePoolPop(context);
LABEL_28:
    if (++v10 == v8)
    {
      v23 = [(NSArray *)stages countByEnumeratingWithState:&v56 objects:v66 count:16];
      v8 = v23;
      if (!v23)
      {
        v24 = 1;
        goto LABEL_38;
      }

      goto LABEL_5;
    }
  }

  v51 = 0;
  [objc_msgSend(v11 "currentModel")];
  v18 = v51;
  if (v51)
  {
    v19 = v8;
    goto LABEL_25;
  }

  v19 = v8;
  v20 = [objc_msgSend(objc_msgSend(v11 "currentModel")];
  [objc_msgSend(v11 "nextModel")];
  v18 = v51;
  if (v51)
  {
LABEL_25:
    v44 = v18;
    v21 = 0;
  }

  else
  {
    v22 = [objc_msgSend(objc_msgSend(v11 "nextModel")];
    *(&v41 + 1) = [v48 objectForKey:v20];
    [v48 setObject:v20 forKey:v20];
    *&v41 = [v47 objectForKey:v22];
    [v47 setObject:v22 forKey:v22];
    if ([v6 objectForKey:v20] || (v21 = v41 == 0, objc_msgSend(v6, "objectForKey:", v22)))
    {
      v21 = 0;
    }

    v9 = v43;
  }

  [objc_msgSend(v11 "currentModel")];
  [objc_msgSend(v11 "nextModel")];
  objc_autoreleasePoolPop(context);
  if (v21)
  {
    v8 = v19;
    goto LABEL_28;
  }

LABEL_37:
  v24 = 0;
LABEL_38:
  if (v44)
  {
    v25 = v44;
    v24 = 0;
  }

  else
  {
    v25 = 0;
  }

LABEL_42:

  if ((v24 & 1) == 0)
  {

    if (v25)
    {
      v60 = *MEMORY[0x1E696AA08];
      v61 = v25;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      goto LABEL_67;
    }

LABEL_65:
    v40 = 0;
LABEL_67:
    v37 = MEMORY[0x1E695DF30];
    v38 = *MEMORY[0x1E695D940];
    v39 = @"Duplicate version checksums across stages detected.";
LABEL_68:
    objc_exception_throw([v37 exceptionWithName:v38 reason:v39 userInfo:v40]);
  }

  v50.receiver = selfCopy;
  v50.super_class = NSStagedMigrationManager;
  v26 = [(NSStagedMigrationManager *)&v50 init];
  if (v26)
  {
    v49 = v26;
    v26->_stages = stages;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v27 = [(NSArray *)stages countByEnumeratingWithState:&v62 objects:v66 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = *v63;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v63 != v32)
          {
            objc_enumerationMutation(stages);
          }

          v34 = *(*(&v62 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ((v30 & 1) == 0)
            {
              v31 = [(NSArray *)stages indexOfObject:v34];
            }

            ++v29;
            v30 = 1;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (v31 >= v31 + v29)
              {
                v29 = 0;
              }

              else
              {
                do
                {
                  [-[NSArray objectAtIndex:](stages objectAtIndex:{v31++), "setSubsequentStage:", v34}];
                  --v29;
                }

                while (v29);
              }

              v30 = 0;
              v31 = 0;
            }
          }
        }

        v28 = [(NSArray *)stages countByEnumeratingWithState:&v62 objects:v66 count:16];
      }

      while (v28);
    }

    v26 = v49;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v26;
}

- (int64_t)_findCurrentMigrationStageFromModelChecksum:(id)checksum
{
  v28 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  stages = [(NSStagedMigrationManager *)self stages];
  v6 = [(NSArray *)stages countByEnumeratingWithState:&v21 objects:v27 count:16];
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v6)
  {
    v9 = v6;
    selfCopy = self;
    v10 = *v22;
    *&v7 = 138412290;
    v19 = v7;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(stages);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([objc_msgSend(v12 "versionChecksums")] != 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_20;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([objc_msgSend(objc_msgSend(v12 "currentModel")])
            {
LABEL_20:
              v8 = [(NSArray *)[(NSStagedMigrationManager *)selfCopy stages] indexOfObject:v12];
              goto LABEL_21;
            }

            if ([objc_msgSend(objc_msgSend(v12 "nextModel")])
            {
              v8 = [(NSArray *)[(NSStagedMigrationManager *)selfCopy stages] indexOfObject:v12]+ 1;
              goto LABEL_21;
            }
          }

          else
          {
            LogStream = _PFLogGetLogStream(17);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              v15 = objc_opt_class();
              *buf = v19;
              v26 = v15;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to handle this type of migration stage %@\n", buf, 0xCu);
            }

            v14 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              v16 = objc_opt_class();
              *buf = v19;
              v26 = v16;
              _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to handle this type of migration stage %@", buf, 0xCu);
            }
          }
        }
      }

      v9 = [(NSArray *)stages countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_shouldAttemptStagedMigrationWithStoreModelVersionChecksum:(id)checksum coordinatorModelVersionChecksum:(id)versionChecksum error:(id *)error
{
  v51 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(NSStagedMigrationManager *)self stages];
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (!v9)
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_26;
  }

  v10 = v9;
  errorCopy = error;
  v11 = *v39;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v39 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v38 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [objc_msgSend(v15 "versionChecksums")];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v35 = [(NSArray *)[(NSStagedMigrationManager *)self stages] indexOfObject:v15];
        }

        v16 = [objc_msgSend(v15 "versionChecksums")];
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = v16;
          v36 = [(NSArray *)[(NSStagedMigrationManager *)self stages] indexOfObject:v15];
          v12 = v17;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([objc_msgSend(objc_msgSend(v15 "currentModel")])
          {
            v35 = [(NSArray *)[(NSStagedMigrationManager *)self stages] indexOfObject:v15];
          }

          if (([objc_msgSend(objc_msgSend(v15 "currentModel")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(v15, "nextModel"), "versionChecksum"), "isEqual:", versionChecksum))
          {
            v36 = [(NSArray *)[(NSStagedMigrationManager *)self stages] indexOfObject:v15];
          }
        }

        else
        {
          LogStream = _PFLogGetLogStream(17);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            v20 = objc_opt_class();
            *buf = 138412290;
            v49 = v20;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: I don't know how to handle this type of migration stage %@\n", buf, 0xCu);
          }

          v19 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            v21 = objc_opt_class();
            *buf = 138412290;
            v49 = v21;
            _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: I don't know how to handle this type of migration stage %@", buf, 0xCu);
          }
        }
      }
    }

    v10 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  }

  while (v10);
  v22 = v36;
  if (v36 == 0x7FFFFFFFFFFFFFFFLL)
  {
    error = errorCopy;
    v23 = v35;
LABEL_26:
    v24 = *MEMORY[0x1E696A250];
    v46 = *MEMORY[0x1E696A578];
    v47 = @"Cannot use staged migration with an unknown coordinator model version.";
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:v24 code:134504 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v47, &v46, 1)}];
    v26 = 0;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_28;
  }

  v25 = 0;
  v26 = 1;
  error = errorCopy;
  v23 = v35;
LABEL_28:
  if (v23 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_37;
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v22 >= v23)
    {
      goto LABEL_37;
    }

    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A250];
    v44 = *MEMORY[0x1E696A578];
    v45 = @"A store file cannot be migrated backwards with staged migration.";
    v29 = MEMORY[0x1E695DF20];
    v30 = &v45;
    v31 = &v44;
    goto LABEL_36;
  }

  if (v22 <= v23 && v12 < v13)
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A250];
    v42 = *MEMORY[0x1E696A578];
    v43 = @"A store file cannot be migrated backwards with staged migration.";
    v29 = MEMORY[0x1E695DF20];
    v30 = &v43;
    v31 = &v42;
LABEL_36:
    v25 = [v27 errorWithDomain:v28 code:134506 userInfo:{objc_msgSend(v29, "dictionaryWithObjects:forKeys:count:", v30, v31, 1)}];
    v26 = 0;
  }

LABEL_37:
  if (error)
  {
    *error = v25;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v26;
}

- (void)dealloc
{
  self->_stages = 0;

  self->_container = 0;
  v3.receiver = self;
  v3.super_class = NSStagedMigrationManager;
  [(NSStagedMigrationManager *)&v3 dealloc];
}

@end