@interface PHAssociatedObjectsTable
- (PHAssociatedObjectsTable)init;
- (id)_entryForObject:(id)a1;
- (id)_entryForObjectCreatingIfNecessary:(id)a1;
- (id)associatedObjectOnObject:(id)a3 forKey:(id)a4;
- (id)setAssociatedObjectIfNotSet:(id)a3 onObject:(id)a4 forKey:(id)a5;
- (void)_runWithLockedBucketForObject:(void *)a3 block:;
- (void)removeAllAssociatedObjectsOnObject:(id)a3;
- (void)removeAssociatedObjectOnObject:(id)a3 forKey:(id)a4;
- (void)setAssociatedObject:(id)a3 onObject:(id)a4 forKey:(id)a5;
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

- (void)removeAllAssociatedObjectsOnObject:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"object != nil"}];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PHAssociatedObjectsTable_removeAllAssociatedObjectsOnObject___block_invoke;
  v8[3] = &unk_1E75A8468;
  v9 = v5;
  v6 = v5;
  [(PHAssociatedObjectsTable *)self _runWithLockedBucketForObject:v6 block:v8];
}

- (void)_runWithLockedBucketForObject:(void *)a3 block:
{
  v5 = a2;
  if (a1)
  {
    v6 = v5 >> 4;
    v9 = v5;
    v7 = a3;
    v8 = (a1 + 4 * v6);
    os_unfair_lock_lock(v8 + 2);
    v7[2](v7, *(a1 + 8 * v6 + 72));

    os_unfair_lock_unlock(v8 + 2);
    v5 = v9;
  }
}

- (void)removeAssociatedObjectOnObject:(id)a3 forKey:(id)a4
{
  v15 = a3;
  v7 = a4;
  v8 = v15;
  v9 = v7;
  if (v15)
  {
    if (v7)
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
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"object != nil"}];

    v8 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

  v10 = [(PHAssociatedObjectsTable *)self _entryForObject:v15];
  v11 = v10;
  v12 = 0;
LABEL_4:
  [(PHAssociatedObjectsEntry *)v10 setAssociatedObject:v12 forKey:?];
}

- (id)_entryForObject:(id)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
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
    [(PHAssociatedObjectsTable *)a1 _runWithLockedBucketForObject:v7 block:v6];
    a1 = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

uint64_t __44__PHAssociatedObjectsTable__entryForObject___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 objectForKey:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

- (id)setAssociatedObjectIfNotSet:(id)a3 onObject:(id)a4 forKey:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
LABEL_3:
      v13 = [(PHAssociatedObjectsTable *)self _entryForObjectCreatingIfNecessary:v10];
      v14 = v13;
      v15 = v9;
      v16 = v12;
      goto LABEL_4;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"object != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:115 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

  v13 = [(PHAssociatedObjectsTable *)self _entryForObjectCreatingIfNecessary:v10];
  v14 = v13;
  v15 = v9;
  v16 = 0;
LABEL_4:
  v17 = [(PHAssociatedObjectsEntry *)v13 setAssociatedObjectIfNotSet:v15 forKey:v16];

  return v17;
}

- (id)_entryForObjectCreatingIfNecessary:(id)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
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
    [(PHAssociatedObjectsTable *)a1 _runWithLockedBucketForObject:v7 block:v6];
    a1 = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return a1;
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

- (void)setAssociatedObject:(id)a3 onObject:(id)a4 forKey:(id)a5
{
  v18 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
LABEL_3:
      v12 = [(PHAssociatedObjectsTable *)self _entryForObjectCreatingIfNecessary:v9];
      v13 = v12;
      v14 = v18;
      v15 = v11;
      goto LABEL_4;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:106 description:{@"Invalid parameter not satisfying: %@", @"object != nil"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

  v12 = [(PHAssociatedObjectsTable *)self _entryForObjectCreatingIfNecessary:v9];
  v13 = v12;
  v14 = v18;
  v15 = 0;
LABEL_4:
  [(PHAssociatedObjectsEntry *)v12 setAssociatedObject:v14 forKey:v15];
}

- (id)associatedObjectOnObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
LABEL_3:
      v10 = [(PHAssociatedObjectsTable *)self _entryForObject:v7];
      v11 = v10;
      v12 = v9;
      goto LABEL_4;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"object != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PHAssociatedObjectsTable.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"key != nil"}];

  v10 = [(PHAssociatedObjectsTable *)self _entryForObject:v7];
  v11 = v10;
  v12 = 0;
LABEL_4:
  v13 = [(PHAssociatedObjectsEntry *)v10 associatedObjectForKey:v12];

  return v13;
}

@end