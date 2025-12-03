@interface AMSThreadSafeSet
- (AMSThreadSafeSet)init;
- (BOOL)containsObject:(id)object;
- (NSArray)allObjects;
- (unint64_t)count;
- (void)addObject:(id)object;
- (void)removeObject:(id)object;
@end

@implementation AMSThreadSafeSet

- (AMSThreadSafeSet)init
{
  v8.receiver = self;
  v8.super_class = AMSThreadSafeSet;
  v2 = [(AMSThreadSafeSet *)&v8 init];
  if (v2)
  {
    v3 = [AMSThreadSafeObject alloc];
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v5 = [(AMSThreadSafeObject *)v3 initWithObject:v4];
    backingSet = v2->_backingSet;
    v2->_backingSet = v5;
  }

  return v2;
}

- (NSArray)allObjects
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__68;
  v10 = __Block_byref_object_dispose__68;
  v11 = MEMORY[0x1E695E0F0];
  backingSet = [(AMSThreadSafeSet *)self backingSet];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__AMSThreadSafeSet_allObjects__block_invoke;
  v5[3] = &unk_1E73BCB20;
  v5[4] = &v6;
  [backingSet read:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __30__AMSThreadSafeSet_allObjects__block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 allObjects];

  return MEMORY[0x1EEE66BB8]();
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  backingSet = [(AMSThreadSafeSet *)self backingSet];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__AMSThreadSafeSet_count__block_invoke;
  v5[3] = &unk_1E73BCB20;
  v5[4] = &v6;
  [backingSet read:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __25__AMSThreadSafeSet_count__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  backingSet = [(AMSThreadSafeSet *)self backingSet];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__AMSThreadSafeSet_addObject___block_invoke;
  v7[3] = &unk_1E73BCB48;
  v8 = objectCopy;
  v6 = objectCopy;
  [backingSet readWrite:v7];
}

id __30__AMSThreadSafeSet_addObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 addObject:*(a1 + 32)];

  return v3;
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  backingSet = [(AMSThreadSafeSet *)self backingSet];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__AMSThreadSafeSet_removeObject___block_invoke;
  v7[3] = &unk_1E73BCB48;
  v8 = objectCopy;
  v6 = objectCopy;
  [backingSet readWrite:v7];
}

id __33__AMSThreadSafeSet_removeObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 removeObject:*(a1 + 32)];

  return v3;
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  backingSet = [(AMSThreadSafeSet *)self backingSet];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__AMSThreadSafeSet_containsObject___block_invoke;
  v8[3] = &unk_1E73BCB70;
  v10 = &v11;
  v6 = objectCopy;
  v9 = v6;
  [backingSet read:v8];

  LOBYTE(backingSet) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return backingSet;
}

uint64_t __35__AMSThreadSafeSet_containsObject___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end