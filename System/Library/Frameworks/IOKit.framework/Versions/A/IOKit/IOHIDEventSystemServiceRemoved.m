@interface IOHIDEventSystemServiceRemoved
@end

@implementation IOHIDEventSystemServiceRemoved

void ____IOHIDEventSystemServiceRemoved_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = _IOHIDLog();
  if (os_signpost_enabled(v2))
  {
    RegistryID = IOHIDServiceGetRegistryID(*(a1 + 32));
    v19 = 138412290;
    v20 = RegistryID;
    _os_signpost_emit_with_name_impl(&dword_197195000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemServiceRemove", "%@", &v19, 0xCu);
  }

  Owner = _IOHIDServiceGetOwner(*(a1 + 32));
  if (Owner)
  {
    IOHIDSessionRemoveService(Owner, *(a1 + 32));
  }

  else
  {
    _IOHIDServiceUnscheduleAsync(*(a1 + 32));
  }

  v5 = _IOHIDServiceCopyEventCounts(*(a1 + 32));
  v6 = _IOHIDLogCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v19 = 138543618;
    v20 = v7;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_197195000, v6, OS_LOG_TYPE_DEFAULT, "Service removed: %{public}@ %@", &v19, 0x16u);
  }

  v8 = *(a1 + 40);
  os_unfair_recursive_lock_lock_with_options();
  v9 = CFGetAllocator(*(a1 + 40));
  Copy = CFSetCreateCopy(v9, *(*(a1 + 40) + 48));
  v11 = *(a1 + 40);
  os_unfair_recursive_lock_unlock();
  if (Copy)
  {
    CFSetApplyFunction(Copy, __RemoveConnectionServiceFunction, *(a1 + 32));
    CFRelease(Copy);
  }

  v12 = IOHIDServiceGetRegistryID(*(a1 + 32));
  v13 = *(a1 + 40);
  os_unfair_recursive_lock_lock_with_options();
  CFDictionaryRemoveValue(*(*(a1 + 40) + 24), v12);
  CFDictionaryRemoveValue(*(*(a1 + 40) + 16), v12);
  v14 = CFGetAllocator(*(a1 + 40));
  v15 = CFSetCreateCopy(v14, *(*(a1 + 40) + 432));
  v16 = *(a1 + 40);
  os_unfair_recursive_lock_unlock();
  if (v15)
  {
    CFSetApplyFunction(v15, _IOHIDEventSystemConnectionRecordServiceChanged, 0);
    CFRelease(v15);
  }

  v17 = _IOHIDLog();
  if (os_signpost_enabled(v17))
  {
    v19 = 138412290;
    v20 = v12;
    _os_signpost_emit_with_name_impl(&dword_197195000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventSystemServiceRemove", "%@", &v19, 0xCu);
  }

  CFRelease(*(a1 + 32));
  CFRelease(*(a1 + 40));
  if (v5)
  {
    CFRelease(v5);
  }

  v18 = *MEMORY[0x1E69E9840];
}

@end