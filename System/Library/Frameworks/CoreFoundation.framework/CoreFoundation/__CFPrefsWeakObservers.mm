@interface __CFPrefsWeakObservers
- (__CFPrefsWeakObservers)init;
- (id)debugDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)borrowObjects:(id *)objects count:(unint64_t)count;
- (unsigned)addObject:(id)object;
- (unsigned)removeObject:(id)object;
- (void)dealloc;
@end

@implementation __CFPrefsWeakObservers

- (__CFPrefsWeakObservers)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = __CFPrefsWeakObservers;
  result = [(__CFPrefsWeakObservers *)&v4 init];
  if (result)
  {
    result->values.slot = 0;
    result->values.var0 = 0;
    result->count = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->values.slot, 0);
  var0 = self->values.var0;
  if (var0)
  {
    do
    {
      v4 = var0->var0;
      objc_destroyWeak(&var0->slot);
      free(var0);
      var0 = v4;
    }

    while (v4);
  }

  v6.receiver = self;
  v6.super_class = __CFPrefsWeakObservers;
  [(__CFPrefsWeakObservers *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v7[5] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(__CFPrefsWeakObservers);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46____CFPrefsWeakObservers_mutableCopyWithZone___block_invoke;
  v7[3] = &unk_1E6D81F10;
  v7[4] = v4;
  visit(self, 2, v7);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (unsigned)addObject:(id)object
{
  v14 = *MEMORY[0x1E69E9840];
  if (!object)
  {
    [__CFPrefsWeakObservers addObject:];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __36____CFPrefsWeakObservers_addObject___block_invoke;
  v9[3] = &unk_1E6D81F38;
  v9[4] = object;
  v9[5] = &v10;
  v5 = visit(self, 0, v9);
  if (*(v11 + 24))
  {
    v6 = 0;
  }

  else
  {
    objc_storeWeak(v5, object);
    ++self->count;
    v6 = *(v11 + 24) == 0;
  }

  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (unsigned)removeObject:(id)object
{
  v11 = *MEMORY[0x1E69E9840];
  if (!object)
  {
    [__CFPrefsWeakObservers removeObject:];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39____CFPrefsWeakObservers_removeObject___block_invoke;
  v6[3] = &unk_1E6D81F38;
  v6[4] = object;
  v6[5] = &v7;
  visit(self, 1, v6);
  if (*(v8 + 24))
  {
    --self->count;
  }

  _Block_object_dispose(&v7, 8);
  v4 = *MEMORY[0x1E69E9840];
  return 1;
}

- (unint64_t)borrowObjects:(id *)objects count:(unint64_t)count
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46____CFPrefsWeakObservers_borrowObjects_count___block_invoke;
  v7[3] = &unk_1E6D81F60;
  v7[4] = &v8;
  v7[5] = count;
  v7[6] = objects;
  visit(self, 2, v7);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)debugDescription
{
  v6[5] = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(0, 1024);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42____CFPrefsWeakObservers_debugDescription__block_invoke;
  v6[3] = &__block_descriptor_40_e15_v32__0__8_16_24l;
  v6[4] = Mutable;
  visit(self, 2, v6);
  result = Mutable;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end