@interface IOSurfaceRemotePerSurfaceGlobalState
+ (id)globalStateForSurface:(__IOSurfaceClient *)a3 mappedAddress:(void *)a4 mappedSize:(unint64_t)a5 extraData:(id)a6;
- (id)mergeExtraData:(id)a3;
- (void)dealloc;
@end

@implementation IOSurfaceRemotePerSurfaceGlobalState

+ (id)globalStateForSurface:(__IOSurfaceClient *)a3 mappedAddress:(void *)a4 mappedSize:(unint64_t)a5 extraData:(id)a6
{
  v9 = a6;
  if (globalStateForSurface_mappedAddress_mappedSize_extraData__onceToken != -1)
  {
    +[IOSurfaceRemotePerSurfaceGlobalState globalStateForSurface:mappedAddress:mappedSize:extraData:];
  }

  ID = IOSurfaceClientGetID(a3);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:ID];
  os_unfair_lock_lock(globalStateForSurface_mappedAddress_mappedSize_extraData__lock);
  v12 = [globalStateForSurface_mappedAddress_mappedSize_extraData__table objectForKey:v11];
  if (!v12)
  {
    v12 = [[IOSurfaceRemotePerSurfaceGlobalState alloc] initWithSurfaceID:ID mappedAddress:a4 mappedSize:a5 extraData:v9];
    [globalStateForSurface_mappedAddress_mappedSize_extraData__table setObject:v12 forKey:v11];
  }

  os_unfair_lock_unlock(globalStateForSurface_mappedAddress_mappedSize_extraData__lock);

  return v12;
}

uint64_t __97__IOSurfaceRemotePerSurfaceGlobalState_globalStateForSurface_mappedAddress_mappedSize_extraData___block_invoke()
{
  globalStateForSurface_mappedAddress_mappedSize_extraData__lock = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  globalStateForSurface_mappedAddress_mappedSize_extraData__table = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];

  return MEMORY[0x1EEE66BB8]();
}

- (id)mergeExtraData:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_extraData;
  if (v6)
  {
    v7 = v6;
    if (v5)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __55__IOSurfaceRemotePerSurfaceGlobalState_mergeExtraData___block_invoke;
      v10[3] = &unk_1E7A91A60;
      v7 = v6;
      v11 = v7;
      xpc_dictionary_apply(v5, v10);
    }
  }

  else
  {
    v7 = v5;
    objc_storeStrong(&self->_extraData, a3);
  }

  os_unfair_lock_unlock(&self->_lock);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  mapped_address = self->_mapped_address;
  if (mapped_address)
  {
    munmap(mapped_address, self->_mapped_size);
  }

  v5.receiver = self;
  v5.super_class = IOSurfaceRemotePerSurfaceGlobalState;
  [(IOSurfaceRemotePerSurfaceGlobalState *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

@end