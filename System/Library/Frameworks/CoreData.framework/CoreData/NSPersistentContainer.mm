@interface NSPersistentContainer
+ (NSPersistentContainer)persistentContainerWithName:(NSString *)name;
+ (NSPersistentContainer)persistentContainerWithName:(NSString *)name managedObjectModel:(NSManagedObjectModel *)model;
+ (NSPersistentContainer)persistentContainerWithPath:(id)path;
+ (NSPersistentContainer)persistentContainerWithPath:(id)path managedObjectModel:(id)model;
+ (NSPersistentContainer)persistentContainerWithPath:(id)path modelNamed:(id)named;
+ (NSURL)defaultDirectoryURL;
+ (id)_newModelForName:(id)name;
+ (id)persistentContainerUsingCachedModelWithPath:(id)path;
- (BOOL)load:(id *)load;
- (NSArray)persistentStoreDescriptions;
- (NSManagedObjectContext)newBackgroundContext;
- (NSManagedObjectContext)viewContext;
- (NSManagedObjectModel)managedObjectModel;
- (NSPersistentContainer)init;
- (NSPersistentContainer)initWithName:(NSString *)name;
- (NSPersistentContainer)initWithName:(NSString *)name managedObjectModel:(NSManagedObjectModel *)model;
- (void)_loadStoreDescriptions:(id)descriptions withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)loadPersistentStoresWithCompletionHandler:(void *)block;
- (void)performBackgroundTask:(void *)block;
- (void)setPersistentStoreDescriptions:(NSArray *)persistentStoreDescriptions;
@end

@implementation NSPersistentContainer

- (NSManagedObjectContext)newBackgroundContext
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)[(NSPersistentStoreCoordinator *)self->_storeCoordinator persistentStores] count])
  {
    goto LABEL_11;
  }

  v3 = objc_autoreleasePoolPush();
  _pflogInitialize(2);
  if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
  {
    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        name = [(NSPersistentContainer *)self name];
        v5 = "CoreData: error:  Background context created for persistent container %@ with no stores loaded\n";
LABEL_16:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v5, buf, 0xCu);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(2);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        name = [(NSPersistentContainer *)self name];
        v5 = "CoreData: warning:  Background context created for persistent container %@ with no stores loaded\n";
        goto LABEL_16;
      }
    }
  }

  v6 = _pflogging_catastrophic_mode;
  name2 = [(NSPersistentContainer *)self name];
  v8 = 1;
  if (!v6)
  {
    v8 = 2;
  }

  _NSCoreDataLog_console(v8, " Background context created for persistent container %@ with no stores loaded", name2);
  objc_autoreleasePoolPop(v3);
LABEL_11:
  v9 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
  if ([(NSManagedObjectContext *)self->_viewContext parentContext])
  {
    [(NSManagedObjectContext *)v9 setParentContext:[(NSManagedObjectContext *)self->_viewContext parentContext]];
  }

  else
  {
    [(NSManagedObjectContext *)v9 setPersistentStoreCoordinator:self->_storeCoordinator];
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (NSURL)defaultDirectoryURL
{
  if (qword_1ED4BEB30 != -1)
  {
    dispatch_once(&qword_1ED4BEB30, &__block_literal_global_28);
  }

  result = _MergedGlobals_86;
  if (!_MergedGlobals_86)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    v7 = MEMORY[0x1E696AEC0];
    v8 = NSStringFromClass(self);
    v9 = [v5 exceptionWithName:v6 reason:objc_msgSend(v7 userInfo:{"stringWithFormat:", @"+[%@ %@] Could not conjure up a useful location for writing persistent stores.", v8, NSStringFromSelector(a2)), 0}];
    objc_exception_throw(v9);
  }

  return result;
}

void __44__NSPersistentContainer_defaultDirectoryURL__block_invoke()
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = xmmword_18592EDA8;
  v32 = 0;
  v0 = &v31;
  while (1)
  {
    v2 = *v0;
    v0 = (v0 + 8);
    v1 = v2;
    if (!v2)
    {
      v11 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v12 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v14 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v12)
        {
          if (v14)
          {
            *buf = 134217984;
            v26 = &v31;
LABEL_33:
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  Found no possible URLs for directory type %lu\n", buf, 0xCu);
          }
        }

        else if (v14)
        {
          *buf = 134217984;
          v26 = &v31;
          goto LABEL_33;
        }
      }

      _NSCoreDataLog_console(1, " Found no possible URLs for directory type %lu", &v31);
      v18 = v11;
      goto LABEL_30;
    }

    v3 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    if ([v3 count])
    {
      v4 = [v3 objectAtIndex:0];
      if (v4)
      {
        break;
      }
    }
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v24 = 0;
  v6 = [v5 fileExistsAtPath:objc_msgSend(v4 isDirectory:{"path"), &v24}];
  if ((v6 & 1) == 0)
  {
    v23 = 0;
    if ([v5 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v23])
    {
      goto LABEL_18;
    }

    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v15 = _pflogging_catastrophic_mode;
      v16 = _PFLogGetLogStream(1);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (v15)
      {
        if (v17)
        {
          goto LABEL_36;
        }
      }

      else if (v17)
      {
LABEL_36:
        v21 = [v23 domain];
        v22 = [v23 code];
        *buf = 138412802;
        v26 = v4;
        v27 = 2112;
        v28 = v21;
        v29 = 1024;
        v30 = v22;
        _os_log_error_impl(&dword_18565F000, v16, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to create directory %@: %@ (%d)\n", buf, 0x1Cu);
      }
    }

    v19 = [v23 domain];
    _NSCoreDataLog_console(1, " Failed to create directory %@: %@ (%d)", v4, v19, [v23 code]);
    goto LABEL_29;
  }

  if (v24)
  {
LABEL_18:
    _MergedGlobals_86 = v4;
    goto LABEL_31;
  }

  v7 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v8 = _pflogging_catastrophic_mode;
    v9 = _PFLogGetLogStream(1);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      if (v10)
      {
        *buf = 138412290;
        v26 = v4;
        goto LABEL_35;
      }
    }

    else if (v10)
    {
      *buf = 138412290;
      v26 = v4;
LABEL_35:
      _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: error:  File %@ already exists and is not a directory!\n", buf, 0xCu);
    }
  }

  _NSCoreDataLog_console(1, " File %@ already exists and is not a directory!", v4);
LABEL_29:
  v18 = v7;
LABEL_30:
  objc_autoreleasePoolPop(v18);
LABEL_31:
  v20 = *MEMORY[0x1E69E9840];
}

- (NSArray)persistentStoreDescriptions
{
  v18 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  storeDescriptions = self->_storeDescriptions;
  if (storeDescriptions)
  {
    v4 = storeDescriptions;
    objc_sync_exit(self);
    if (v4)
    {
      goto LABEL_16;
    }
  }

  else
  {
    objc_sync_exit(self);
  }

  defaultDirectoryURL = [objc_opt_class() defaultDirectoryURL];
  if (!defaultDirectoryURL)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v8 exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(v9 userInfo:{"stringWithFormat:", @"+[%@ %@] Could not conjure up a useful location for writing persistent stores.", v11, NSStringFromSelector(sel__createDefaultStoreDescriptions)), 0}];
    objc_exception_throw(v12);
  }

  v6 = [defaultDirectoryURL URLByAppendingPathComponent:objc_msgSend(MEMORY[0x1E696AEC0] isDirectory:{"stringWithFormat:", @"%@.sqlite", self->_name), 0}];
  if (v6)
  {
    *buf = [objc_msgSend(objc_opt_class() "persistentStoreDescriptionClass")];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v4 = v7;
  objc_sync_enter(self);
  if (self->_storeDescriptions)
  {

    v4 = self->_storeDescriptions;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
    if (v4)
    {
      v13 = v4;
    }

    self->_storeDescriptions = v13;
  }

  objc_sync_exit(self);
  if (!v4)
  {
    v16 = *MEMORY[0x1E69E9840];
    return MEMORY[0x1E695E0F0];
  }

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSManagedObjectModel)managedObjectModel
{
  managedObjectModel = [(NSPersistentStoreCoordinator *)self->_storeCoordinator managedObjectModel];

  return managedObjectModel;
}

- (NSManagedObjectContext)viewContext
{
  if (!self->_viewContext)
  {
    v3 = [[NSManagedObjectContext alloc] initWithConcurrencyType:2];
    [(NSManagedObjectContext *)v3 _setPersistentStoreCoordinator:?];
    v4 = 0;
    atomic_compare_exchange_strong(&self->_viewContext, &v4, v3);
    if (v4)
    {
    }
  }

  v5 = self->_viewContext;

  return v5;
}

- (void)dealloc
{
  name = self->_name;
  if (name)
  {
  }

  viewContext = self->_viewContext;
  if (viewContext)
  {
  }

  storeCoordinator = self->_storeCoordinator;
  if (storeCoordinator)
  {
  }

  storeDescriptions = self->_storeDescriptions;
  if (storeDescriptions)
  {
  }

  v7.receiver = self;
  v7.super_class = NSPersistentContainer;
  [(NSPersistentContainer *)&v7 dealloc];
}

+ (NSPersistentContainer)persistentContainerWithName:(NSString *)name
{
  v3 = [[self alloc] initWithName:name];

  return v3;
}

+ (NSPersistentContainer)persistentContainerWithName:(NSString *)name managedObjectModel:(NSManagedObjectModel *)model
{
  v4 = [[self alloc] initWithName:name managedObjectModel:model];

  return v4;
}

- (void)setPersistentStoreDescriptions:(NSArray *)persistentStoreDescriptions
{
  objc_sync_enter(self);
  storeDescriptions = self->_storeDescriptions;
  if (storeDescriptions != persistentStoreDescriptions)
  {

    self->_storeDescriptions = 0;
    self->_storeDescriptions = [(NSArray *)persistentStoreDescriptions copy];
  }

  objc_sync_exit(self);
}

- (NSPersistentContainer)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D920];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [v2 exceptionWithName:v3 reason:objc_msgSend(v4 userInfo:{"stringWithFormat:", @"Failed to call designated initializer on '%@' \n", NSStringFromClass(v5)), 0}];
  objc_exception_throw(v6);
}

+ (id)_newModelForName:(id)name
{
  v17 = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = objc_opt_class();
  v6 = mainBundle;
  if (v5 != objc_opt_class())
  {
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v6 = mainBundle;
    }
  }

  result = [v6 URLForResource:name withExtension:@"momd"];
  if (result)
  {
    goto LABEL_23;
  }

  result = [v6 URLForResource:name withExtension:@"mom"];
  if (result)
  {
    goto LABEL_23;
  }

  if (v6 == mainBundle)
  {
LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  result = [mainBundle URLForResource:name withExtension:@"momd"];
  if (result || (result = [mainBundle URLForResource:name withExtension:@"mom"]) != 0)
  {
LABEL_23:
    v9 = result;
    result = [[NSManagedObjectModel alloc] initWithContentsOfURL:result];
    if (!result)
    {
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
            goto LABEL_20;
          }
        }

        else if (v13)
        {
LABEL_20:
          *buf = 138412290;
          path = [v9 path];
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load model at path: %@\n", buf, 0xCu);
        }
      }

      _NSCoreDataLog_console(1, " Failed to load model at path: %@", [v9 path]);
      objc_autoreleasePoolPop(v10);
      goto LABEL_18;
    }
  }

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSPersistentContainer)initWithName:(NSString *)name
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() _newModelForName:name];
  if (v5)
  {
    v6 = v5;
    v7 = [(NSPersistentContainer *)self initWithName:name managedObjectModel:v5];

    v8 = *MEMORY[0x1E69E9840];
    return v7;
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
        *buf = 138412290;
        v16 = name;
LABEL_11:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error:  Failed to load model named %@\n", buf, 0xCu);
      }
    }

    else if (v13)
    {
      *buf = 138412290;
      v16 = name;
      goto LABEL_11;
    }
  }

  _NSCoreDataLog_console(1, " Failed to load model named %@", name);
  objc_autoreleasePoolPop(v10);

  v14 = *MEMORY[0x1E69E9840];
  return 0;
}

- (NSPersistentContainer)initWithName:(NSString *)name managedObjectModel:(NSManagedObjectModel *)model
{
  v19 = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = NSPersistentContainer;
  v6 = [(NSPersistentContainer *)&v16 init];
  if (v6)
  {
    if ([(NSString *)name length])
    {
      if (([(NSString *)name isEqual:[[(NSString *)name stringByStandardizingPath] lastPathComponent]]& 1) != 0)
      {
        goto LABEL_11;
      }

      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = name;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: [NSPersistentContainer initWithName:managedObjectModel:] called with invalid container name '%@'\n", buf, 0xCu);
      }

      v8 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }

      *buf = 138412290;
      v18 = name;
      v9 = "CoreData: [NSPersistentContainer initWithName:managedObjectModel:] called with invalid container name '%@'";
      v10 = v8;
      v11 = 12;
    }

    else
    {
      v12 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_18565F000, v12, OS_LOG_TYPE_ERROR, "CoreData: fault: [NSPersistentContainer initWithName:managedObjectModel:] called with the empty string as its container name\n", buf, 2u);
      }

      v13 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v9 = "CoreData: [NSPersistentContainer initWithName:managedObjectModel:] called with the empty string as its container name";
      v10 = v13;
      v11 = 2;
    }

    _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, v9, buf, v11);
LABEL_11:
    v6->_name = [(NSString *)name copy];
    v6->_storeCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:model];
    v6->_storeDescriptions = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)loadPersistentStoresWithCompletionHandler:(void *)block
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  persistentStoreDescriptions = [(NSPersistentContainer *)self persistentStoreDescriptions];
  v7 = [(NSArray *)persistentStoreDescriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(persistentStoreDescriptions);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copy];
        [array addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)persistentStoreDescriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(NSPersistentContainer *)self _loadStoreDescriptions:array withCompletionHandler:block];
  v12 = *MEMORY[0x1E69E9840];
}

- (void)_loadStoreDescriptions:(id)descriptions withCompletionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  if (![descriptions count])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"-[NSPersistentContainer loadPersistentStoresWithCompletionHandler:] called on an instance with no store descriptions" userInfo:0]);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [descriptions countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(descriptions);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (([v11 shouldAddStoreAsynchronously] & 1) == 0)
        {
          [(NSPersistentStoreCoordinator *)self->_storeCoordinator addPersistentStoreWithDescription:v11 completionHandler:handler];
        }
      }

      v8 = [descriptions countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [descriptions countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(descriptions);
        }

        v16 = *(*(&v18 + 1) + 8 * j);
        if ([v16 shouldAddStoreAsynchronously])
        {
          [(NSPersistentStoreCoordinator *)self->_storeCoordinator addPersistentStoreWithDescription:v16 completionHandler:handler];
        }
      }

      v13 = [descriptions countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)performBackgroundTask:(void *)block
{
  newBackgroundContext = [(NSPersistentContainer *)self newBackgroundContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__NSPersistentContainer_performBackgroundTask___block_invoke;
  v5[3] = &unk_1E6EC29D8;
  v5[4] = newBackgroundContext;
  v5[5] = block;
  [(NSManagedObjectContext *)newBackgroundContext performBlock:v5];
}

void __47__NSPersistentContainer_performBackgroundTask___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);
}

+ (NSPersistentContainer)persistentContainerWithPath:(id)path
{
  v9[1] = *MEMORY[0x1E69E9840];
  v5 = [self persistentContainerWithName:{objc_msgSend(path, "lastPathComponent")}];
  persistentStoreDescriptionClass = [self persistentStoreDescriptionClass];
  v9[0] = [persistentStoreDescriptionClass persistentStoreDescriptionWithURL:{objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", path)}];
  -[NSPersistentContainer setPersistentStoreDescriptions:](v5, "setPersistentStoreDescriptions:", [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1]);
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (NSPersistentContainer)persistentContainerWithPath:(id)path modelNamed:(id)named
{
  v6 = [self _newModelForName:named];
  v7 = [self persistentContainerWithPath:path managedObjectModel:v6];

  return v7;
}

+ (NSPersistentContainer)persistentContainerWithPath:(id)path managedObjectModel:(id)model
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = [self persistentContainerWithName:objc_msgSend(path managedObjectModel:{"lastPathComponent"), model}];
  persistentStoreDescriptionClass = [self persistentStoreDescriptionClass];
  v10[0] = [persistentStoreDescriptionClass persistentStoreDescriptionWithURL:{objc_msgSend(MEMORY[0x1E695DFF8], "fileURLWithPath:", path)}];
  -[NSPersistentContainer setPersistentStoreDescriptions:](v6, "setPersistentStoreDescriptions:", [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1]);
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (id)persistentContainerUsingCachedModelWithPath:(id)path
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
  v6 = +[NSPersistentStore cachedModelForPersistentStoreWithURL:options:error:](NSPersistentStore, "cachedModelForPersistentStoreWithURL:options:error:", v5, [objc_msgSend(objc_msgSend(self "persistentStoreDescriptionClass")], &v15);
  if (!v6)
  {
    v8 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v9 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v11 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v11)
        {
          goto LABEL_10;
        }
      }

      else if (v11)
      {
LABEL_10:
        v13 = v15;
        userInfo = [v15 userInfo];
        *buf = 138412546;
        v17 = v13;
        v18 = 2112;
        v19 = userInfo;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: cachedModelForPersistentStoreWithURL failed with error %@ and userInfo of %@\n", buf, 0x16u);
      }
    }

    _NSCoreDataLog_console(1, "cachedModelForPersistentStoreWithURL failed with error %@ and userInfo of %@", v15, [v15 userInfo]);
    objc_autoreleasePoolPop(v8);
    result = 0;
    goto LABEL_9;
  }

  result = [self persistentContainerWithPath:path managedObjectModel:v6];
LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)load:(id *)load
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = __Block_byref_object_copy__39;
  v22 = __Block_byref_object_dispose__39;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3020000000;
  v17 = 0;
  v5 = [(NSArray *)[(NSPersistentContainer *)self persistentStoreDescriptions] count];
  v6 = dispatch_semaphore_create(0);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__NSPersistentContainer_CoreDataSPI__load___block_invoke;
  v13[3] = &unk_1E6EC48E0;
  v13[6] = &v14;
  v13[4] = v6;
  v13[5] = &v18;
  [(NSPersistentContainer *)self loadPersistentStoresWithCompletionHandler:v13];
  while (*(v15 + 10) != v5)
  {
    v7 = dispatch_time(0, 120000000000);
    dispatch_semaphore_wait(v6, v7);
    __dmb(0xBu);
  }

  dispatch_release(v6);
  v8 = v19[5];
  v9 = v19;
  if (load)
  {
    v10 = v19[5];
    if (v10)
    {
      *load = v10;
    }
  }

  v11 = v9[5] == 0;
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v11;
}

intptr_t __43__NSPersistentContainer_CoreDataSPI__load___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
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
          goto LABEL_9;
        }
      }

      else if (v9)
      {
LABEL_9:
        *buf = 138412802;
        v13 = a2;
        v14 = 2112;
        v15 = a3;
        v16 = 2112;
        v17 = [a3 userInfo];
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Store failed to load.  %@ with error = %@ with userInfo %@\n", buf, 0x20u);
      }
    }

    _NSCoreDataLog_console(1, "Store failed to load.  %@ with error = %@ with userInfo %@", a2, a3, [a3 userInfo]);
    objc_autoreleasePoolPop(v6);
    *(*(*(a1 + 40) + 8) + 40) = a3;
  }

  atomic_fetch_add_explicit((*(*(a1 + 48) + 8) + 40), 1u, memory_order_relaxed);
  result = dispatch_semaphore_signal(*(a1 + 32));
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end