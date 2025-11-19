@interface SLDatabase
- (SLDatabase)initWithStoreName:(id)a3 modelPath:(id)a4;
- (id)_managedObjectModel;
- (id)_persistentStoreCoordinator;
- (id)fetchObjectsForEntityNamed:(id)a3 withPredicate:(id)a4;
- (void)_persistentStoreCoordinator;
- (void)_removeFilesAtURL:(id)a3 forStoreCoordinator:(id)a4;
- (void)_setUpManagedObjectContext;
@end

@implementation SLDatabase

- (SLDatabase)initWithStoreName:(id)a3 modelPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SLDatabase;
  v8 = [(SLDatabase *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_modelPath, a4);
    v10 = SLUserDataDirectory();
    v11 = [v10 stringByAppendingPathComponent:v6];
    storePath = v9->_storePath;
    v9->_storePath = v11;

    [(SLDatabase *)v9 _setUpManagedObjectContext];
  }

  return v9;
}

- (id)fetchObjectsForEntityNamed:(id)a3 withPredicate:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E695D5B8] entityForName:a3 inManagedObjectContext:self->_managedObjectContext];
  v8 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  [v8 setEntity:v7];
  if (v6)
  {
    [v8 setPredicate:v6];
  }

  v9 = [(NSManagedObjectContext *)self->_managedObjectContext executeFetchRequest:v8 error:0];

  return v9;
}

- (void)_setUpManagedObjectContext
{
  if (!self->_managedObjectContext)
  {
    v4 = [(SLDatabase *)self _persistentStoreCoordinator];
    if (v4)
    {
      v7 = v4;
      v5 = objc_alloc_init(MEMORY[0x1E695D628]);
      managedObjectContext = self->_managedObjectContext;
      self->_managedObjectContext = v5;

      [(NSManagedObjectContext *)self->_managedObjectContext setPersistentStoreCoordinator:v7];
      v4 = v7;
    }
  }
}

- (id)_persistentStoreCoordinator
{
  persistentStoreCoordinator = self->_persistentStoreCoordinator;
  if (persistentStoreCoordinator)
  {
    v4 = persistentStoreCoordinator;
  }

  else
  {
    SLUserDataDirectory();
    CPFileBuildDirectoriesToPath();
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_storePath];
    v7 = objc_alloc(MEMORY[0x1E695D6C0]);
    v8 = [(SLDatabase *)self _managedObjectModel];
    v9 = [v7 initWithManagedObjectModel:v8];
    v10 = self->_persistentStoreCoordinator;
    self->_persistentStoreCoordinator = v9;

    v11 = MEMORY[0x1E695DF90];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v13 = *MEMORY[0x1E695D380];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v15 = [v11 dictionaryWithObjectsAndKeys:{v12, v13, v14, *MEMORY[0x1E695D318], 0}];

    [v15 setObject:*MEMORY[0x1E696A388] forKey:*MEMORY[0x1E695D3F8]];
    v16 = self->_persistentStoreCoordinator;
    v17 = *MEMORY[0x1E695D4A8];
    v25 = 0;
    v18 = [(NSPersistentStoreCoordinator *)v16 addPersistentStoreWithType:v17 configuration:0 URL:v6 options:v15 error:&v25];
    v19 = v25;

    if (!v18)
    {
      v23 = [v19 userInfo];
      _SLLog(v2, 3, @"Error while opening database %@, %@\n\nCreating new database...");

      [(SLDatabase *)self _removeFilesAtURL:v6 forStoreCoordinator:self->_persistentStoreCoordinator, v19, v23];
      v20 = self->_persistentStoreCoordinator;
      v24 = 0;
      v21 = [(NSPersistentStoreCoordinator *)v20 addPersistentStoreWithType:v17 configuration:0 URL:v6 options:v15 error:&v24];
      v19 = v24;

      if (!v21)
      {
        [(SLDatabase *)v19 _persistentStoreCoordinator];
      }

      _SLLog(v2, 3, @"Created new database successfully.");
    }

    v4 = self->_persistentStoreCoordinator;
  }

  return v4;
}

- (id)_managedObjectModel
{
  managedObjectModel = self->_managedObjectModel;
  if (managedObjectModel)
  {
    v3 = managedObjectModel;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_modelPath];
    v6 = [objc_alloc(MEMORY[0x1E695D638]) initWithContentsOfURL:v5];
    v7 = self->_managedObjectModel;
    self->_managedObjectModel = v6;

    v3 = self->_managedObjectModel;
  }

  return v3;
}

- (void)_removeFilesAtURL:(id)a3 forStoreCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x1E695D6C0]);
    v9 = [(SLDatabase *)self _managedObjectModel];
    v7 = [v8 initWithManagedObjectModel:v9];
  }

  v10 = *MEMORY[0x1E695D4A8];
  v13 = 0;
  v11 = [v7 _destroyPersistentStoreAtURL:v6 withType:v10 options:0 error:&v13];
  v12 = v13;
  if ((v11 & 1) == 0)
  {
    [SLDatabase _removeFilesAtURL:v12 forStoreCoordinator:?];
  }
}

- (void)_persistentStoreCoordinator
{
  v3 = [a1 userInfo];
  _SLLog(a2, 3, @"Second Error while creating new database %@, %@\n\n");

  abort();
}

- (void)_removeFilesAtURL:(void *)a1 forStoreCoordinator:.cold.1(void *a1)
{
  v2 = [a1 userInfo];
  _SLLog(v1, 3, @"Unable to recover by deleting old database! %@, %@\n\n");

  abort();
}

@end