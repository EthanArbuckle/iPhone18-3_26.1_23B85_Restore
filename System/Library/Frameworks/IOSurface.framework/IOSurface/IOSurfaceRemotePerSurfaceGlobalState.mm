@interface IOSurfaceRemotePerSurfaceGlobalState
+ (id)globalStateForSurface:(__IOSurfaceClient *)surface mappedAddress:(void *)address mappedSize:(unint64_t)size extraData:(id)data;
- (id)mergeExtraData:(id)data;
- (void)dealloc;
@end

@implementation IOSurfaceRemotePerSurfaceGlobalState

+ (id)globalStateForSurface:(__IOSurfaceClient *)surface mappedAddress:(void *)address mappedSize:(unint64_t)size extraData:(id)data
{
  dataCopy = data;
  if (globalStateForSurface_mappedAddress_mappedSize_extraData__onceToken != -1)
  {
    +[IOSurfaceRemotePerSurfaceGlobalState globalStateForSurface:mappedAddress:mappedSize:extraData:];
  }

  ID = IOSurfaceClientGetID(surface);
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:ID];
  os_unfair_lock_lock(globalStateForSurface_mappedAddress_mappedSize_extraData__lock);
  v12 = [globalStateForSurface_mappedAddress_mappedSize_extraData__table objectForKey:v11];
  if (!v12)
  {
    v12 = [[IOSurfaceRemotePerSurfaceGlobalState alloc] initWithSurfaceID:ID mappedAddress:address mappedSize:size extraData:dataCopy];
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

- (id)mergeExtraData:(id)data
{
  v12 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_extraData;
  if (v6)
  {
    v7 = v6;
    if (dataCopy)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __55__IOSurfaceRemotePerSurfaceGlobalState_mergeExtraData___block_invoke;
      v10[3] = &unk_1E7A91A60;
      v7 = v6;
      v11 = v7;
      xpc_dictionary_apply(dataCopy, v10);
    }
  }

  else
  {
    v7 = dataCopy;
    objc_storeStrong(&self->_extraData, data);
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