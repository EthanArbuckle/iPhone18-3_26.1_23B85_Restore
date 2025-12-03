@interface GLKShadingHash
- (GLKShadingHash)init;
- (id)compiledFshForKey:(id)key;
- (id)compiledVshForKey:(id)key;
- (void)dealloc;
- (void)purgeAllShaders;
- (void)setCompiledFsh:(id)fsh forKey:(id)key;
- (void)setCompiledVsh:(id)vsh forKey:(id)key;
@end

@implementation GLKShadingHash

- (GLKShadingHash)init
{
  v4.receiver = self;
  v4.super_class = GLKShadingHash;
  v2 = [(GLKShadingHash *)&v4 init];
  if (v2)
  {
    v2->_vshQueue = dispatch_queue_create("com.apple.GLKShadingHashVsh", 0);
    v2->_fshQueue = dispatch_queue_create("com.apple.GLKShadingHashFsh", 0);
    v2->_compiledVshs = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_compiledFshs = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v2;
}

- (void)purgeAllShaders
{
  vshQueue = self->_vshQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__GLKShadingHash_purgeAllShaders__block_invoke;
  block[3] = &unk_278A58120;
  block[4] = self;
  dispatch_sync(vshQueue, block);
  fshQueue = self->_fshQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__GLKShadingHash_purgeAllShaders__block_invoke_2;
  v5[3] = &unk_278A58120;
  v5[4] = self;
  dispatch_sync(fshQueue, v5);
}

uint64_t __33__GLKShadingHash_purgeAllShaders__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectEnumerator];
  for (i = v2; ; v2 = i)
  {
    v4 = [v2 nextObject];
    if (!v4)
    {
      break;
    }

    glDeleteShader([v4 intValue]);
  }

  v5 = *(*(a1 + 32) + 24);

  return [v5 removeAllObjects];
}

uint64_t __33__GLKShadingHash_purgeAllShaders__block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectEnumerator];
  for (i = v2; ; v2 = i)
  {
    v4 = [v2 nextObject];
    if (!v4)
    {
      break;
    }

    glDeleteShader([v4 intValue]);
  }

  v5 = *(*(a1 + 32) + 32);

  return [v5 removeAllObjects];
}

- (void)setCompiledVsh:(id)vsh forKey:(id)key
{
  vshQueue = self->_vshQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__GLKShadingHash_setCompiledVsh_forKey___block_invoke;
  block[3] = &unk_278A58148;
  block[4] = self;
  block[5] = vsh;
  block[6] = key;
  dispatch_sync(vshQueue, block);
}

- (id)compiledVshForKey:(id)key
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  vshQueue = self->_vshQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__GLKShadingHash_compiledVshForKey___block_invoke;
  block[3] = &unk_278A57DA8;
  block[5] = key;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(vshQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __36__GLKShadingHash_compiledVshForKey___block_invoke(void *a1)
{
  result = [*(a1[4] + 24) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)setCompiledFsh:(id)fsh forKey:(id)key
{
  fshQueue = self->_fshQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__GLKShadingHash_setCompiledFsh_forKey___block_invoke;
  block[3] = &unk_278A58148;
  block[4] = self;
  block[5] = fsh;
  block[6] = key;
  dispatch_sync(fshQueue, block);
}

- (id)compiledFshForKey:(id)key
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  fshQueue = self->_fshQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__GLKShadingHash_compiledFshForKey___block_invoke;
  block[3] = &unk_278A57DA8;
  block[5] = key;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(fshQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __36__GLKShadingHash_compiledFshForKey___block_invoke(void *a1)
{
  result = [*(a1[4] + 32) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)dealloc
{
  vshQueue = self->_vshQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__GLKShadingHash_dealloc__block_invoke;
  block[3] = &unk_278A58120;
  block[4] = self;
  dispatch_sync(vshQueue, block);
  dispatch_release(self->_vshQueue);
  fshQueue = self->_fshQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__GLKShadingHash_dealloc__block_invoke_2;
  v6[3] = &unk_278A58120;
  v6[4] = self;
  dispatch_sync(fshQueue, v6);
  dispatch_release(self->_fshQueue);
  v5.receiver = self;
  v5.super_class = GLKShadingHash;
  [(GLKShadingHash *)&v5 dealloc];
}

@end