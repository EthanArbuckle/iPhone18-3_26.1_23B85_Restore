@interface PHAssociatedObjectsTable
- (PHAssociatedObjectsTable)init;
- (id)_entryForObject:(id)object;
- (id)_entryForObjectCreatingIfNecessary:(id)necessary;
- (id)associatedObjectOnObject:(id)object forKey:(id)key;
- (id)setAssociatedObjectIfNotSet:(id)set onObject:(id)object forKey:(id)key;
- (void)_runWithLockedBucketForObject:(void *)object block:;
- (void)removeAllAssociatedObjectsOnObject:(id)object;
- (void)removeAssociatedObjectOnObject:(id)object forKey:(id)key;
- (void)setAssociatedObject:(id)object onObject:(id)onObject forKey:(id)key;
@end

@implementation PHAssociatedObjectsTable

- (PHAssociatedObjectsTable)init
{
  v9.receiver = self;
  v9.super_class = PHAssociatedObjectsTable;
  v2 = [(PHAssociatedObjectsTable *)&v9 init];
  if (v2)
  {
    for (i = 0; i != 16; ++i)
    {
      v2->_locks[i]._os_unfair_lock_opaque = 0;
      v4 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:514 valueOptions:0];
      v5 = &v2->super.isa + i;
      v6 = v5[9];
      v5[9] = v4;
    }

    v7 = v2;
  }

  return v2;
}

- (void)removeAllAssociatedObjectsOnObject:(id)object
{
  objectCopy = object;
  if (!objectCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"object != nil"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PHAssociatedObjectsTable_removeAllAssociatedObjectsOnObject___block_invoke;
  v8[3] = &unk_1E75A8468;
  v9 = objectCopy;
  v6 = objectCopy;
  [(PHAssociatedObjectsTable *)self _runWithLockedBucketForObject:v6 block:v8];
}

- (void)_runWithLockedBucketForObject:(void *)object block:
{
  v5 = a2;
  if (self)
  {
    v6 = v5 >> 4;
    v9 = v5;
    objectCopy = object;
    v8 = (self + 4 * v6);
    os_unfair_lock_lock(v8 + 2);
    objectCopy[2](objectCopy, *(self + 8 * v6 + 72));

    os_unfair_lock_unlock(v8 + 2);
    v5 = v9;
  }
}

- (void)removeAssociatedObjectOnObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v8 = objectCopy;
  v9 = keyCopy;
  if (objectCopy)
  {
    if (keyCopy)
    {
LABEL_3:
      v10 = [(PHAssociatedObjectsTable *)self _entryForObject:v8];
      v11 = v10;
      v12 = v9;
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"object != nil"}];

    v8 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

  v10 = [(PHAssociatedObjectsTable *)self _entryForObject:objectCopy];
  v11 = v10;
  v12 = 0;
LABEL_4:
  [(PHAssociatedObjectsEntry *)v10 setAssociatedObject:v12 forKey:?];
}

- (id)_entryForObject:(id)object
{
  v3 = a2;
  v4 = v3;
  if (object)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__31956;
    v13 = __Block_byref_object_dispose__31957;
    v14 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __44__PHAssociatedObjectsTable__entryForObject___block_invoke;
    v6[3] = &unk_1E75A8440;
    v8 = &v9;
    v7 = v3;
    [(PHAssociatedObjectsTable *)object _runWithLockedBucketForObject:v7 block:v6];
    object = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return object;
}

uint64_t __44__PHAssociatedObjectsTable__entryForObject___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 objectForKey:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)setAssociatedObjectIfNotSet:(id)set onObject:(id)object forKey:(id)key
{
  setCopy = set;
  objectCopy = object;
  keyCopy = key;
  v12 = keyCopy;
  if (objectCopy)
  {
    if (keyCopy)
    {
LABEL_3:
      v13 = [(PHAssociatedObjectsTable *)self _entryForObjectCreatingIfNecessary:objectCopy];
      v14 = v13;
      v15 = setCopy;
      v16 = v12;
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"object != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

  v13 = [(PHAssociatedObjectsTable *)self _entryForObjectCreatingIfNecessary:objectCopy];
  v14 = v13;
  v15 = setCopy;
  v16 = 0;
LABEL_4:
  v17 = [(PHAssociatedObjectsEntry *)v13 setAssociatedObjectIfNotSet:v15 forKey:v16];

  return v17;
}

- (id)_entryForObjectCreatingIfNecessary:(id)necessary
{
  v3 = a2;
  v4 = v3;
  if (necessary)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__31956;
    v13 = __Block_byref_object_dispose__31957;
    v14 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__PHAssociatedObjectsTable__entryForObjectCreatingIfNecessary___block_invoke;
    v6[3] = &unk_1E75A8440;
    v8 = &v9;
    v7 = v3;
    [(PHAssociatedObjectsTable *)necessary _runWithLockedBucketForObject:v7 block:v6];
    necessary = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return necessary;
}

void __63__PHAssociatedObjectsTable__entryForObjectCreatingIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = objc_alloc_init(PHAssociatedObjectsEntry);
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [v9 setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
  }
}

- (void)setAssociatedObject:(id)object onObject:(id)onObject forKey:(id)key
{
  objectCopy = object;
  onObjectCopy = onObject;
  keyCopy = key;
  v11 = keyCopy;
  if (onObjectCopy)
  {
    if (keyCopy)
    {
LABEL_3:
      v12 = [(PHAssociatedObjectsTable *)self _entryForObjectCreatingIfNecessary:onObjectCopy];
      v13 = v12;
      v14 = objectCopy;
      v15 = v11;
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"object != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

  v12 = [(PHAssociatedObjectsTable *)self _entryForObjectCreatingIfNecessary:onObjectCopy];
  v13 = v12;
  v14 = objectCopy;
  v15 = 0;
LABEL_4:
  [(PHAssociatedObjectsEntry *)v12 setAssociatedObject:v14 forKey:v15];
}

- (id)associatedObjectOnObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v9 = keyCopy;
  if (objectCopy)
  {
    if (keyCopy)
    {
LABEL_3:
      v10 = [(PHAssociatedObjectsTable *)self _entryForObject:objectCopy];
      v11 = v10;
      v12 = v9;
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"object != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

  v10 = [(PHAssociatedObjectsTable *)self _entryForObject:objectCopy];
  v11 = v10;
  v12 = 0;
LABEL_4:
  v13 = [(PHAssociatedObjectsEntry *)v10 associatedObjectForKey:v12];

  return v13;
}

@end