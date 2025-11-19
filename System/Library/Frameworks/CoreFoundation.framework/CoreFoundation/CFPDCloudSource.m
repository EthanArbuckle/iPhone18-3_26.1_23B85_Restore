@interface CFPDCloudSource
- (id)copyConfigurationFromPath:(uint64_t)a1;
- (id)copyPropertyListWithoutDrainingPendingChangesValidatingPlist:(uint64_t)a1;
- (uint64_t)enqueueNewKey:(id *)a1 value:(uint64_t)a2 encoding:(xpc_object_t)xdict inBatch:(int)a4;
- (void)_writeToDisk:(void *)result;
- (void)processEndOfMessageIntendingToRemoveSource:(BOOL *)a3 replacingWithTombstone:(id *)a4;
- (void)registerForChangeNotifications;
- (void)synchronizeWithCloud:(id)a3 replyHandler:(id)a4;
@end

@implementation CFPDCloudSource

void __49__CFPDCloudSource_registerForChangeNotifications__block_invoke()
{
  os_unfair_lock_lock(&_MergedGlobals_0);
  CFSetApplyFunction(qword_1ED40BDC8, remoteStoreChanged, 0);

  os_unfair_lock_unlock(&_MergedGlobals_0);
}

- (uint64_t)enqueueNewKey:(id *)a1 value:(uint64_t)a2 encoding:(xpc_object_t)xdict inBatch:(int)a4
{
  v4 = a1;
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_20;
  }

  if (a4 == 1)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__CFPDCloudSource_enqueueNewKey_value_encoding_inBatch___block_invoke;
    v18[3] = &unk_1E6D81E70;
    v18[4] = a1;
    v18[5] = &v19;
    xpc_dictionary_apply(xdict, v18);
    LOBYTE(v4) = *(v20 + 24);
    _Block_object_dispose(&v19, 8);
    goto LABEL_20;
  }

  v7 = _CFXPCCreateCFObjectFromXPCObject(a2);
  if (object_getClass(xdict) == MEMORY[0x1E69E9E70])
  {
    length = xpc_data_get_length(xdict);
    bytes_ptr = xpc_data_get_bytes_ptr(xdict);
    v11 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, bytes_ptr, length, &__kCFAllocatorNull);
    v8 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v11, 0, 0, 0);
    CFRelease(v11);
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = _CFXPCCreateCFObjectFromXPCObject(xdict);
    if (!v7)
    {
      goto LABEL_11;
    }
  }

  if (v8)
  {
    v12 = CFGetTypeID(v8);
    TypeID = CFNullGetTypeID();
    v14 = v4[19];
    if (v12 == TypeID)
    {
      [v14 setValue:0 forKey:v7];
    }

    else
    {
      [v14 setValue:v8 forKey:v7];
    }

    [v4[19] synchronizeForced:0];
    [v4 updateShmemEntry];
    v15 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [CFPDCloudSource enqueueNewKey:a2 value:v4 encoding:v15 inBatch:?];
    }

    LOBYTE(v4) = 1;
    goto LABEL_17;
  }

LABEL_11:
  LOBYTE(v4) = 0;
  if (v7)
  {
LABEL_17:
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return v4 & 1;
}

uint64_t __56__CFPDCloudSource_enqueueNewKey_value_encoding_inBatch___block_invoke(uint64_t a1, char *string, void *a3)
{
  v5 = xpc_string_create(string);
  v6 = *(*(a1 + 40) + 8);
  if (*(v6 + 24) == 1)
  {
    v7 = [CFPDCloudSource enqueueNewKey:v5 value:a3 encoding:? inBatch:?];
    v6 = *(*(a1 + 40) + 8);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 24) = v7;
  xpc_release(v5);
  return 1;
}

- (void)synchronizeWithCloud:(id)a3 replyHandler:(id)a4
{
  v9[6] = *MEMORY[0x1E69E9840];
  reply = xpc_dictionary_create_reply(a3);
  if (!reply)
  {
    reply = xpc_dictionary_create(0, 0, 0);
  }

  cloudSource = self->cloudSource;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__CFPDCloudSource_synchronizeWithCloud_replyHandler___block_invoke;
  v9[3] = &unk_1E6D81E98;
  v9[4] = reply;
  v9[5] = a4;
  [(SYDRemotePreferencesSource *)cloudSource synchronizationWithCompletionHandler:v9];
  v8 = *MEMORY[0x1E69E9840];
}

void __53__CFPDCloudSource_synchronizeWithCloud_replyHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  xpc_release(v3);
}

- (void)processEndOfMessageIntendingToRemoveSource:(BOOL *)a3 replacingWithTombstone:(id *)a4
{
  v6 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  v5.receiver = self;
  v5.super_class = CFPDCloudSource;
  [CFPDSource processEndOfMessageIntendingToRemoveSource:sel_processEndOfMessageIntendingToRemoveSource_replacingWithTombstone_ replacingWithTombstone:?];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)copyConfigurationFromPath:(uint64_t)a1
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 && (bzero(buffer, 0x402uLL), CFStringGetFileSystemRepresentation(a2, buffer, 1026)) && (v3 = open(buffer, 256), (v3 & 0x80000000) == 0))
  {
    v4 = v3;
    v5 = [CFPDDataBuffer newBufferFromFile:v3 allowMappingIfSafe:0];
    close(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)registerForChangeNotifications
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock(&_MergedGlobals_0);
    v2 = qword_1ED40BDC8;
    if (!qword_1ED40BDC8)
    {
      qword_1ED40BDC8 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
      out_token = 0;
      global_queue = dispatch_get_global_queue(-2, 0);
      notify_register_dispatch("SYDRemotePreferencesSourceDidChangeExternally", &out_token, global_queue, &__block_literal_global_9);
      v2 = qword_1ED40BDC8;
    }

    CFSetAddValue(v2, a1);
    os_unfair_lock_unlock(&_MergedGlobals_0);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)copyPropertyListWithoutDrainingPendingChangesValidatingPlist:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v1 = [*(a1 + 152) copyDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [CFPDDataBuffer newBufferFromPropertyList:v1];
  CFRelease(v2);
  return v3;
}

- (void)_writeToDisk:(void *)result
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_7;
  }

  if (!a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __32__CFPDCloudSource__writeToDisk___block_invoke;
    v5[3] = &unk_1E6D81EC0;
    v5[4] = result;
    result = [result lockedAsync:v5];
LABEL_7:
    v4 = *MEMORY[0x1E69E9840];
    return result;
  }

  v2 = result[19];
  v3 = *MEMORY[0x1E69E9840];

  return [v2 synchronizeForced:0];
}

- (void)initWithDomain:(uint64_t)a3 userName:(uint64_t)a4 storeName:configurationPath:containerPath:shmemIndex:daemon:.cold.1(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v7 = _CFXPCCreateCFObjectFromXPCObject(a1);
  if (a2)
  {
    v8 = CFRetain(a2);
  }

  else
  {
    v8 = 0;
  }

  *(a3 + 160) = v8;
  v9 = [objc_alloc(getSYDRemotePreferencesSourceClass()) initWithApplicationID:@"NSUserDefaults" storeID:v7 shared:1 additionalSource:1 containerPath:a4];
  *(a3 + 152) = v9;
  if (v7)
  {
    CFRelease(v7);
    v9 = *(a3 + 152);
  }

  [v9 registerForSynchronizedDefaults];
  v10 = [(CFPDCloudSource *)a3 copyConfigurationFromPath:a2];
  v11 = [v10 copyPropertyListWithMutability:0 error:0];

  if (v11)
  {
    if (CFGetTypeID(v11) == 18)
    {
      v12 = sel_registerName("setDefaultsConfiguration:");
      v13 = *(a3 + 152);
      if (objc_opt_respondsToSelector())
      {
        [*(a3 + 152) performSelector:v12 withObject:v11];
      }
    }

    CFRelease(v11);
  }

  [(CFPDCloudSource *)a3 registerForChangeNotifications];
}

- (void)enqueueNewKey:(os_log_t)log value:encoding:inBatch:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v5 = 138478083;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "writing key %{private}@ in cloud domain %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end