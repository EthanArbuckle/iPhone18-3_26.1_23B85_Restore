@interface CFPrefsManagedSource
- (id)initWithDomain:(uint64_t)a3 user:(uint64_t)a4 byHost:(uint64_t)a5 containingPreferences:;
- (void)alreadylocked_setPrecopiedValues:(const void *)a3 forKeys:(const __CFString *)a4 count:(int64_t)a5 from:(id)a6;
@end

@implementation CFPrefsManagedSource

- (void)alreadylocked_setPrecopiedValues:(const void *)a3 forKeys:(const __CFString *)a4 count:(int64_t)a5 from:(id)a6
{
  v20 = *MEMORY[0x1E69E9840];
  if (a5 >= 1)
  {
    v7 = a5;
    do
    {
      v10 = *a4;
      v11 = *a3;
      v12 = [(CFPrefsPlistSource *)self alreadylocked_copyDictionary];
      if (v12)
      {
        v13 = v12;
        MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v12);
        if (!MutableCopy)
        {
          MutableCopy = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        CFRelease(v13);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      if (v11)
      {
        CFDictionarySetValue(MutableCopy, v10, v11);
      }

      else
      {
        CFDictionaryRemoveValue(MutableCopy, v10);
      }

      bzero(v19, 0x400uLL);
      v15 = [(CFPrefsPlistSource *)self userIdentifier];
      if (CFEqual(v15, @"kCFPreferencesCurrentUser"))
      {
        v15 = CFCopyUserName();
      }

      else
      {
        CFRetain(v15);
      }

      if (_CFPrefsGetPathForManagedBundleID([(CFPrefsPlistSource *)self domainIdentifier], v15, 0, v19))
      {
        v16 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v19);
        if (v16)
        {
          v17 = v16;
          _CFPreferencesWriteDomainDictionaryToPath(MutableCopy, v16, [(CFPrefsPlistSource *)self domainIdentifier]);
          CFRelease(v17);
        }
      }

      CFRelease(v15);
      CFRelease(MutableCopy);
      ++a3;
      ++a4;
      --v7;
    }

    while (v7);
  }

  atomic_fetch_add(&self->super.super._generationCount, 1uLL);
  v18 = *MEMORY[0x1E69E9840];
}

- (id)initWithDomain:(uint64_t)a3 user:(uint64_t)a4 byHost:(uint64_t)a5 containingPreferences:
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6.receiver = result;
    v6.super_class = CFPrefsManagedSource;
    result = objc_msgSendSuper2(&v6, sel_initWithDomain_user_byHost_containerPath_containingPreferences_, a2, a3, a4, 0, a5);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

@end