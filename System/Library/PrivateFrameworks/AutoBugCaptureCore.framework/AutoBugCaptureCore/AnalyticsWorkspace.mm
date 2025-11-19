@interface AnalyticsWorkspace
+ (void)initialize;
- (BOOL)_primePath:(id)a3;
- (BOOL)canCloneObjectsOfType:(id)a3;
- (BOOL)save;
- (BOOL)setCustomPersistenceProperties:(id)a3;
- (NSManagedObjectContext)mainObjectContext;
- (NSManagedObjectModel)objectModel;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (id)_cloneInternal:(id)a3 intoWorkspace:(id)a4 ancestry:(id)a5 iteration:(unint64_t)a6 mustFail:(BOOL *)a7;
- (id)_initWithName:(id)a3 inMemory:(BOOL)a4 useReadOnly:(BOOL)a5 customModelName:(id)a6 loadModelFromBundle:(id)a7;
- (id)cloneObject:(id)a3 intoWorkspace:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)createNewContext;
- (id)initInMemoryWorkspaceWithName:(id)a3 customModelName:(id)a4 objectModelBundle:(id)a5;
- (id)resetCompletionBlock;
- (void)dealloc;
- (void)enumerateResidentObjectsOfType:(id)a3 usingBlock:(id)a4;
- (void)reset;
- (void)setResetCompletionBlock:(id)a3;
@end

@implementation AnalyticsWorkspace

- (BOOL)save
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->__persistent && ([(AnalyticsWorkspace *)self persistentStoreCoordinator], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(AnalyticsWorkspace *)self mainObjectContext];
    v5 = [v4 hasChanges];

    if (v5)
    {
      v6 = [(AnalyticsWorkspace *)self mainObjectContext];
      v17 = 0;
      v7 = [v6 save:&v17];
      v8 = v17;

      if ((v7 & 1) == 0)
      {
        v9 = objectanalyticsHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = [v8 localizedDescription];
          v11 = [v10 UTF8String];
          v12 = [v8 userInfo];
          v13 = [v12 description];
          v14 = [v13 UTF8String];
          *buf = 136315394;
          v19 = v11;
          v20 = 2080;
          v21 = v14;
          _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Error while saving: %s\n%s", buf, 0x16u);
        }
      }
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = registry;
  objc_sync_enter(v3);
  if (!self->__persistent)
  {
    goto LABEL_84;
  }

  persistentStoreCoordinator = self->__persistentStoreCoordinator;
  if (persistentStoreCoordinator)
  {
LABEL_82:
    v54 = persistentStoreCoordinator;
    goto LABEL_85;
  }

  location = &self->__persistentStoreCoordinator;
  if (!self->__connection && self->storeKind != *MEMORY[0x277CBE170] && ![(AnalyticsWorkspace *)self _primePath:self->backingStore])
  {
    v6 = 0;
LABEL_81:

    persistentStoreCoordinator = *location;
    goto LABEL_82;
  }

  v77 = [MEMORY[0x277CBEB38] dictionary];
  if (self->__connection)
  {
    v5 = 0;
    v76 = 0;
  }

  else
  {
    v7 = objectanalyticsHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      backingStore = self->backingStore;
      v9 = "/write";
      if (self->readOnly)
      {
        v9 = "-only";
      }

      *buf = 138412546;
      v85 = backingStore;
      v86 = 2080;
      v87 = v9;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "opening backingstore %@, read%s", buf, 0x16u);
    }

    v76 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->backingStore];
    [v77 addEntriesFromDictionary:&unk_285379B08];
    v10 = MEMORY[0x277CBEAC0];
    storeProt = self->storeProt;
    v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
    if (self->readOnly)
    {
      [MEMORY[0x277CCABB0] numberWithBool:1];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v14 = ;
    readOnly = self->readOnly;
    if (readOnly)
    {
      v16 = *MEMORY[0x277CBE2B0];
    }

    else
    {
      v16 = [MEMORY[0x277CBEB68] null];
    }

    v5 = [v10 dictionaryWithObjectsAndKeys:{v77, *MEMORY[0x277CBE2E0], storeProt, *MEMORY[0x277CBE240], v12, *MEMORY[0x277CBE1D8], v13, *MEMORY[0x277CBE178], v14, v16, 0}];
    if (!readOnly)
    {
    }
  }

  v17 = [(AnalyticsWorkspace *)self objectModel];
  if (v17)
  {
    self->_integrityCheckFailed = 0;
    v18 = objc_alloc(MEMORY[0x277CBE4D8]);
    v19 = [(AnalyticsWorkspace *)self objectModel];
    v6 = [v18 initWithManagedObjectModel:v19];

    if (v6)
    {
      if (self->_forceIntegrityCheck)
      {
        v20 = objectanalyticsHandle();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        *buf = 0;
        v21 = "DATA INTEGRITY: forceIntegrityCheck is true";
        v22 = v20;
        v23 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        v20 = objectanalyticsHandle();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_37;
        }

        *buf = 0;
        v21 = "forceIntegrityCheck is false";
        v22 = v20;
        v23 = OS_LOG_TYPE_DEBUG;
      }

      _os_log_impl(&dword_241804000, v22, v23, v21, buf, 2u);
LABEL_37:

      if (self->_forceIntegrityCheck)
      {
        v28 = 0;
LABEL_39:
        v29 = 1;
        goto LABEL_46;
      }

      if (self->_forceDestroyPersistentStore || self->_forceDeleteFile)
      {
        v28 = 0;
      }

      else
      {
        storeKind = self->storeKind;
        v83 = 0;
        v37 = [v6 addPersistentStoreWithType:storeKind configuration:0 URL:v76 options:v5 error:&v83];
        v28 = v83;

        if (!v37)
        {
          v47 = objectanalyticsHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v85 = v28;
            _os_log_impl(&dword_241804000, v47, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: addPersistentStoreWithType failed because %@. Will check integrity.", buf, 0xCu);
          }

          v29 = 1;
          self->_forceIntegrityCheck = 1;
          goto LABEL_46;
        }

        objc_storeStrong(location, v6);
        if (self->_forceIntegrityCheck)
        {
          goto LABEL_39;
        }
      }

      if (!self->_forceDestroyPersistentStore && !self->_forceDeleteFile)
      {
LABEL_79:
        v27 = v28;
        goto LABEL_80;
      }

      v29 = 0;
LABEL_46:
      if (!self->__connection && !self->readOnly && self->storeKind != *MEMORY[0x277CBE170])
      {
        forceDestroyPersistentStore = self->_forceDestroyPersistentStore;
        forceDeleteFile = self->_forceDeleteFile;
        *&self->_forceIntegrityCheck = 0;
        self->_forceDeleteFile = 0;
        if (forceDeleteFile)
        {
          v32 = objectanalyticsHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v32, OS_LOG_TYPE_ERROR, "DATA LOSS: Have been instructed to delete persistent store.", buf, 2u);
          }

          v33 = [MEMORY[0x277CCAA00] defaultManager];
          v80 = v28;
          v34 = [v33 removeItemAtURL:v76 error:&v80];
          v27 = v80;

          healthDelegate = self->_healthDelegate;
          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate deleteDatabaseCompleted:v34 error:v27];
          }

          goto LABEL_80;
        }

        if (forceDestroyPersistentStore)
        {
          v38 = objectanalyticsHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v38, OS_LOG_TYPE_ERROR, "DATA LOSS: Have been instructed to destroy persistent store.", buf, 2u);
          }

          v27 = v28;
LABEL_61:
          v39 = self->_healthDelegate;
          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate destroyPersistentStoreStarted];
          }

          v40 = *MEMORY[0x277CBE2E8];
          v79 = v27;
          v41 = [v6 _destroyPersistentStoreAtURL:v76 withType:v40 options:0 error:&v79];
          v42 = v79;

          v43 = self->_healthDelegate;
          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate destroyPersistentStoreCompleted:v41 error:v42];
          }

          if (v41)
          {
            v44 = self->storeKind;
            v78 = v42;
            v45 = [v6 addPersistentStoreWithType:v44 configuration:0 URL:v76 options:v5 error:&v78];
            v27 = v78;

            if (v45)
            {
              objc_storeStrong(location, v6);
              persistentStoreError = self->_persistentStoreError;
              self->_persistentStoreError = 0;
            }

            else
            {
              v59 = objectanalyticsHandle();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v85 = v27;
                _os_log_impl(&dword_241804000, v59, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Persisting fatal failure to recover incompatibility by creating new sqlite files : %@", buf, 0xCu);
              }

              if (v27)
              {
                v60 = v27;
                v27 = v60;
              }

              else
              {
                v60 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SymptomsErrorDomain" code:3203 userInfo:0];
                v27 = 0;
              }

              persistentStoreError = self->_persistentStoreError;
              self->_persistentStoreError = v60;
            }
          }

          else
          {
            v57 = objectanalyticsHandle();
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v85 = v42;
              _os_log_impl(&dword_241804000, v57, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Fatal failure to remove incompatible sqlite files: %@", buf, 0xCu);
            }

            v58 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SymptomsErrorDomain" code:3204 userInfo:0];
            persistentStoreError = self->_persistentStoreError;
            self->_persistentStoreError = v58;
            v27 = v42;
          }

          goto LABEL_80;
        }

        if (v29)
        {
          v48 = self->_healthDelegate;
          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate integrityCheckStarted];
          }

          [v77 setObject:@"YES" forKeyedSubscript:@"integrity_check"];
          v49 = self->storeKind;
          v82 = v28;
          v50 = [v6 addPersistentStoreWithType:v49 configuration:0 URL:v76 options:v5 error:&v82];
          v27 = v82;

          if (v50)
          {
            objc_storeStrong(location, v6);
            v51 = objectanalyticsHandle();
            if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
            {
LABEL_78:
              v53 = 0;
              goto LABEL_122;
            }

            *buf = 0;
            v52 = "DATA INTEGRITY: Integrity check passed";
LABEL_77:
            _os_log_impl(&dword_241804000, v51, OS_LOG_TYPE_INFO, v52, buf, 2u);
            goto LABEL_78;
          }

          v61 = objectanalyticsHandle();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v61, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Integrity check failed", buf, 2u);
          }

          self->_integrityCheckFailed = 1;
          v62 = [(NSError *)v27 code];
          v63 = isDBFileCorrupted(v27, 0);
          if ((v62 - 134000) >= 0x15 && (v62 - 134100) >= 0x47)
          {
            v65 = v63;
          }

          else
          {
            v65 = 1;
          }

          if (v65 == 1)
          {
            v51 = objectanalyticsHandle();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v85 = v27;
              _os_log_impl(&dword_241804000, v51, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: DB content truncated due to model incompatibility or corruption. PSC creation failed with: %@", buf, 0xCu);
            }

            v53 = 1;
          }

          else
          {
            v66 = [(NSError *)v27 domain];
            if ([v66 isEqualToString:*MEMORY[0x277CBE2C8]])
            {
              v67 = [(NSError *)v27 code]== 13;

              if (v67)
              {
                v51 = objectanalyticsHandle();
                if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_78;
                }

                *buf = 0;
                v52 = "DATA INTEGRITY WARNING: The disk is full";
                goto LABEL_77;
              }
            }

            else
            {
            }

            v68 = objectanalyticsHandle();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v85 = v27;
              _os_log_impl(&dword_241804000, v68, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Error while creating persistent store: %@", buf, 0xCu);
            }

            v69 = self->storeKind;
            v81 = v27;
            v51 = [MEMORY[0x277CBE4D8] metadataForPersistentStoreOfType:v69 URL:v76 options:v5 error:&v81];
            v70 = v81;

            if (v51)
            {
              v71 = [(AnalyticsWorkspace *)self objectModel];
              v72 = [v71 isConfiguration:0 compatibleWithStoreMetadata:v51];

              v73 = objectanalyticsHandle();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v85 = v51;
                v86 = 1024;
                LODWORD(v87) = v72;
                _os_log_impl(&dword_241804000, v73, OS_LOG_TYPE_INFO, "DATA INTEGRITY WARNING: metadata %@, compat %d", buf, 0x12u);
              }
            }

            v53 = 0;
            v27 = v70;
          }

LABEL_122:

          v74 = self->_healthDelegate;
          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate integrityCheckCompleted:!self->_integrityCheckFailed error:v27];
          }

          if (!v53)
          {
            goto LABEL_80;
          }

          goto LABEL_61;
        }
      }

      goto LABEL_79;
    }

    v26 = objectanalyticsHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Fatal error while allocating persistent store", buf, 2u);
    }

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SymptomsErrorDomain" code:3202 userInfo:0];
  }

  else
  {
    v24 = objectanalyticsHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Unable to load the object model", buf, 2u);
    }

    v25 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SymptomsErrorDomain" code:3201 userInfo:0];
  }

  v6 = 0;
  v27 = self->_persistentStoreError;
  self->_persistentStoreError = v25;
LABEL_80:

  if (v17)
  {
    goto LABEL_81;
  }

LABEL_84:
  v54 = 0;
LABEL_85:
  objc_sync_exit(v3);

  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

- (NSManagedObjectContext)mainObjectContext
{
  if (self->__persistent)
  {
    mainObjectContext = self->__mainObjectContext;
    if (mainObjectContext)
    {
      v4 = mainObjectContext;
    }

    else
    {
      v5 = [(AnalyticsWorkspace *)self persistentStoreCoordinator];
      v6 = self->__mainObjectContext;
      if (v5 && !v6)
      {
        v7 = objc_alloc(MEMORY[0x277CBE440]);
        v8 = [v7 initWithConcurrencyType:*MEMORY[0x277CBE518]];
        v9 = self->__mainObjectContext;
        self->__mainObjectContext = v8;

        [(NSManagedObjectContext *)self->__mainObjectContext setMergePolicy:*MEMORY[0x277CBE1D0]];
        [(NSManagedObjectContext *)self->__mainObjectContext setPersistentStoreCoordinator:v5];
        [(NSManagedObjectContext *)self->__mainObjectContext setUndoManager:0];
        v6 = self->__mainObjectContext;
      }

      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)initialize
{
  registry = objc_alloc_init(MEMORY[0x277CBEB38]);

  MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  connection = self->__connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v4 = self->__connection;
    self->__connection = 0;
  }

  v5.receiver = self;
  v5.super_class = AnalyticsWorkspace;
  [(AnalyticsWorkspace *)&v5 dealloc];
}

- (id)_initWithName:(id)a3 inMemory:(BOOL)a4 useReadOnly:(BOOL)a5 customModelName:(id)a6 loadModelFromBundle:(id)a7
{
  v10 = a4;
  v37 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v34.receiver = self;
  v34.super_class = AnalyticsWorkspace;
  v16 = [(AnalyticsWorkspace *)&v34 init];
  if (v16)
  {
    v33 = v13;
    v17 = [(__CFString *)v14 length];
    v18 = MEMORY[0x277CBE170];
    if (!v10)
    {
      v18 = MEMORY[0x277CBE2E8];
    }

    v19 = *v18;
    v20 = *v18;
    v21 = MEMORY[0x277CCA1A0];
    if (!v17)
    {
      v21 = MEMORY[0x277CCA1B8];
    }

    v22 = *v21;
    v23 = *v21;
    v24 = objectanalyticsHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = @"DAEMON";
      if (!v17)
      {
        v25 = @"LEGACY";
      }

      *buf = 138412290;
      v36 = v25;
      _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_DEFAULT, "AnalyticsWorkspace is running in %@ MODE", buf, 0xCu);
    }

    v26 = v19;
    v27 = v22;
    objc_storeStrong(&v16->storeKind, v19);
    objc_storeStrong(&v16->storeProt, v22);
    objc_storeStrong(&v16->backingStore, a3);
    v16->readOnly = a5;
    v16->pathKnownToFail = 0;
    if (v17)
    {
      v28 = v14;
    }

    else
    {
      v28 = @"SymptomAnalyticsLegacy";
    }

    objc_storeStrong(&v16->_objectModelName, v28);
    if (v15)
    {
      v29 = v15;
    }

    else
    {
      v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    }

    objectModelResidentBundle = v16->_objectModelResidentBundle;
    v16->_objectModelResidentBundle = v29;

    v16->__persistent = 1;
    v13 = v33;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)initInMemoryWorkspaceWithName:(id)a3 customModelName:(id)a4 objectModelBundle:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[AnalyticsWorkspace alloc] _initWithName:v10 inMemory:1 useReadOnly:0 customModelName:v9 loadModelFromBundle:v8];

  return v11;
}

- (BOOL)setCustomPersistenceProperties:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"PersistentWorkspace"];
  if (!v4)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = objectanalyticsHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v8 = "Invalid value for persistent key";
      v9 = &v11;
LABEL_11:
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    }

LABEL_12:

LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v5 = [v4 BOOLValue];
  if ((v5 & 1) == 0 && (self->__persistentStoreCoordinator || self->__mainObjectContext))
  {
    v7 = objectanalyticsHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "Requesting non-persistent but the workspace already has a PersistentStoreCoordinator and/or a MainObjectContext";
      v9 = buf;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  self->__persistent = v5;
  v6 = 1;
LABEL_14:

  return v6;
}

- (NSManagedObjectModel)objectModel
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->__persistent)
  {
    objectModel = self->__objectModel;
    if (objectModel)
    {
      v4 = objectModel;
    }

    else
    {
      v5 = objectanalyticsHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(AnalyticsWorkspace *)self objectModelName];
        v7 = [v6 UTF8String];
        v8 = [(AnalyticsWorkspace *)self objectModelResidentBundle];
        v9 = [v8 bundlePath];
        v23 = 136315394;
        v24 = v7;
        v25 = 2080;
        v26 = [v9 UTF8String];
        _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Loading object model %s.momd from bundle at %s", &v23, 0x16u);
      }

      v10 = [(AnalyticsWorkspace *)self objectModelResidentBundle];
      v11 = [(AnalyticsWorkspace *)self objectModelName];
      v12 = [v10 pathForResource:v11 ofType:@"momd"];

      if (v12)
      {
        v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
        v14 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v13];
        v15 = self->__objectModel;
        self->__objectModel = v14;

        v16 = objectanalyticsHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138412290;
          v24 = v13;
          _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEFAULT, "Loaded object model from URL %@", &v23, 0xCu);
        }
      }

      else
      {
        v13 = objectanalyticsHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v17 = [(AnalyticsWorkspace *)self objectModelName];
          v23 = 138412290;
          v24 = v17;
          _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_ERROR, "Did not find path for object model %@", &v23, 0xCu);
        }

        v14 = 0;
      }

      v18 = self->__objectModel;
      if (!v18)
      {
        v19 = objectanalyticsHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = [(AnalyticsWorkspace *)self objectModelName];
          v23 = 138412290;
          v24 = v20;
          _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, "Couldn't match expected object model %@", &v23, 0xCu);
        }

        v18 = self->__objectModel;
      }

      v4 = v18;
    }
  }

  else
  {
    v4 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)createNewContext
{
  if (self->__persistent)
  {
    v2 = [(AnalyticsWorkspace *)self persistentStoreCoordinator];
    if (v2)
    {
      v3 = objc_alloc(MEMORY[0x277CBE440]);
      v4 = [v3 initWithConcurrencyType:*MEMORY[0x277CBE518]];
      v5 = v4;
      if (v4)
      {
        [v4 setMergePolicy:*MEMORY[0x277CBE1D0]];
        [v5 setPersistentStoreCoordinator:v2];
        [v5 setUndoManager:0];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(AnalyticsWorkspace *)self createNewContext];
  if (v4 || !self->__persistent)
  {
    v5 = objc_alloc_init(AnalyticsWorkspace);
    objc_storeStrong(&v5->backingStore, self->backingStore);
    objc_storeStrong(&v5->storeKind, self->storeKind);
    objc_storeStrong(&v5->_objectModelName, self->_objectModelName);
    objc_storeStrong(&v5->_objectModelResidentBundle, self->_objectModelResidentBundle);
    objc_storeStrong(&v5->storeProt, self->storeProt);
    v6 = [(AnalyticsWorkspace *)self persistentStoreCoordinator];
    persistentStoreCoordinator = v5->__persistentStoreCoordinator;
    v5->__persistentStoreCoordinator = v6;

    objc_storeStrong(&v5->__mainObjectContext, v4);
    v8 = [(AnalyticsWorkspace *)self objectModel];
    objectModel = v5->__objectModel;
    v5->__objectModel = v8;

    v10 = [(AnalyticsWorkspace *)self connection];
    connection = v5->__connection;
    v5->__connection = v10;

    v5->__persistent = [(AnalyticsWorkspace *)self persistent];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resetCompletionBlock
{
  v2 = _Block_copy(self->__resetCompletionBlock);

  return v2;
}

- (void)setResetCompletionBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = _Block_copy(self->__resetCompletionBlock);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__AnalyticsWorkspace_setResetCompletionBlock___block_invoke;
    v9[3] = &unk_278CEFDC0;
    v10 = v5;
    v11 = v4;
    v6 = v5;
    v7 = _Block_copy(v9);
    resetCompletionBlock = self->__resetCompletionBlock;
    self->__resetCompletionBlock = v7;
  }
}

uint64_t __46__AnalyticsWorkspace_setResetCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)reset
{
  if (self->__persistent)
  {
    v3 = [(AnalyticsWorkspace *)self mainObjectContext];
    [v3 reset];
  }

  v4 = [(AnalyticsWorkspace *)self resetCompletionBlock];
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

- (BOOL)canCloneObjectsOfType:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->__persistent)
  {
    v3 = [a3 relationshipsByName];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [v3 allValues];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v12 + 1) + 8 * i) isToMany])
          {
            v9 = 0;
            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)enumerateResidentObjectsOfType:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AnalyticsWorkspace *)self mainObjectContext];
  v9 = [v8 registeredObjects];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__AnalyticsWorkspace_enumerateResidentObjectsOfType_usingBlock___block_invoke;
  v12[3] = &unk_278CEFDE8;
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  [v9 enumerateObjectsUsingBlock:v12];
}

void __64__AnalyticsWorkspace_enumerateResidentObjectsOfType_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 40))
  {
    if ([v5 isUpdated])
    {
      v3 = [v5 entity];
      v4 = [v3 isEqual:*(a1 + 32)];

      if (v4)
      {
        (*(*(a1 + 40) + 16))();
      }
    }
  }
}

- (id)cloneObject:(id)a3 intoWorkspace:(id)a4
{
  v12 = 0;
  v6 = MEMORY[0x277CBEB38];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithCapacity:5];
  v10 = [(AnalyticsWorkspace *)self _cloneInternal:v8 intoWorkspace:v7 ancestry:v9 iteration:0 mustFail:&v12];

  return v10;
}

- (id)_cloneInternal:(id)a3 intoWorkspace:(id)a4 ancestry:(id)a5 iteration:(unint64_t)a6 mustFail:(BOOL *)a7
{
  v66 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 mainObjectContext];
  v14 = [v10 entity];
  v55 = [v14 name];
  if (!v55)
  {
    v15 = objectanalyticsHandle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v25 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v51 = v14;
    v22 = v13;
    v23 = v12;
    if (v10)
    {
      v12 = [v10 objectID];
      v13 = [v12 URIRepresentation];
      a6 = [v13 description];
      v24 = [a6 UTF8String];
    }

    else
    {
      v24 = "(no nmo)";
    }

    *buf = 136315138;
    v65 = v24;
    _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "Nil entity name for nmo: %s", buf, 0xCu);
    if (v10)
    {
    }

    v25 = 0;
    v12 = v23;
    v13 = v22;
LABEL_32:
    v14 = v51;
    goto LABEL_33;
  }

  if (a6 >= 6)
  {
    v15 = objectanalyticsHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [v10 objectID];
      v17 = v16 = v14;
      [v17 URIRepresentation];
      v19 = v18 = v12;
      [v19 description];
      v21 = v20 = v13;
      *buf = 136315138;
      v65 = [v21 UTF8String];
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "Too long a chain sequence leading to: %s", buf, 0xCu);

      v13 = v20;
      v12 = v18;

      v14 = v16;
    }

    goto LABEL_8;
  }

  [v10 objectID];
  v26 = v51 = v14;
  v25 = [v12 objectForKeyedSubscript:v26];

  v14 = v51;
  if (!v25)
  {
    v25 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:v55 inManagedObjectContext:v13];
    if (v25)
    {
      v58 = a6;
      v50 = v13;
      v54 = v11;
      v27 = [v10 objectID];
      v53 = v12;
      [v12 setObject:v25 forKey:v27];

      v28 = [v10 entity];
      v29 = [v28 attributesByName];
      v30 = [v29 allKeys];

      v49 = v30;
      [v10 dictionaryWithValuesForKeys:v30];
      v48 = v52 = v25;
      [v25 setValuesForKeysWithDictionary:?];
      v31 = [v10 entity];
      v32 = [v31 relationshipsByName];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v33 = [v32 allKeys];
      v34 = [v33 countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v60;
        while (2)
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v60 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v59 + 1) + 8 * i);
            v39 = [v32 valueForKey:v38];
            if (([v39 isToMany] & 1) == 0 && (objc_msgSend(v39, "isTransient") & 1) == 0)
            {
              v40 = v33;
              v41 = v10;
              v42 = [v10 valueForKey:v38];
              ++v58;
              v43 = [AnalyticsWorkspace _cloneInternal:"_cloneInternal:intoWorkspace:ancestry:iteration:mustFail:" intoWorkspace:v42 ancestry:v54 iteration:v53 mustFail:?];
              if (!v43)
              {
                *a7 = 1;

                v25 = 0;
                v10 = v41;
                v15 = v52;
                goto LABEL_31;
              }

              v44 = v43;
              [v52 setValue:v43 forKey:v38];

              v10 = v41;
              v33 = v40;
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      v15 = v52;
      if (*a7)
      {
        v45 = 0;
      }

      else
      {
        v45 = v52;
      }

      v25 = v45;
LABEL_31:

      v12 = v53;
      v11 = v54;
      v13 = v50;
      goto LABEL_32;
    }
  }

LABEL_34:

  v46 = *MEMORY[0x277D85DE8];

  return v25;
}

- (BOOL)_primePath:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->pathKnownToFail)
  {
    v3 = 0;
  }

  else
  {
    v5 = [a3 stringByDeletingLastPathComponent];
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = 0;
    if ([v6 fileExistsAtPath:v5 isDirectory:&v17] && (v17 & 1) != 0)
    {
      v3 = 1;
    }

    else
    {
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:self->storeProt forKey:*MEMORY[0x277CCA1B0]];
      v16 = 0;
      [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v7 error:&v16];
      v8 = v16;
      v3 = v8 == 0;
      if (v8)
      {
        v9 = objectanalyticsHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = [v8 localizedDescription];
          v11 = [v10 UTF8String];
          *buf = 136315138;
          v19 = v11;
          _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Error creating directory path: %s", buf, 0xCu);
        }

        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SymptomsErrorDomain" code:3101 userInfo:0];
        persistentStoreError = self->_persistentStoreError;
        self->_persistentStoreError = v12;
      }
    }

    self->pathKnownToFail = !v3;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

@end