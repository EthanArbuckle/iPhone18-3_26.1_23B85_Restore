@interface CFPrefsSource
- (BOOL)alreadylocked_requestNewData;
- (CFPrefsSource)initWithContainingPreferences:(id)a3;
- (__CFArray)alreadylocked_copyKeyList;
- (__CFDictionary)alreadylocked_copyDictionary;
- (__CFString)copyOSLogDescription;
- (id)copyVolatileSourceWithContainingPreferences:(id)a3;
- (id)description;
- (os_unfair_lock_s)copyDictionary;
- (os_unfair_lock_s)copyKeyList;
- (uint64_t)alreadylocked_addPreferencesObserver:(uint64_t)a1;
- (uint64_t)alreadylocked_removePreferencesObserver:(uint64_t)a1;
- (uint64_t)validateValue:(CFTypeRef)cf1 forKey:(const __CFDictionary *)a4 inDict:(int)a5 forWriting:;
- (void)_notifyObserversOfChangeFromValuesForKeys:(id)a3 toValuesForKeys:(id)a4;
- (void)alreadylocked_copyValueForKey:(__CFString *)a3;
- (void)alreadylocked_setPrecopiedValues:(const void *)a3 forKeys:(const __CFString *)a4 count:(int64_t)a5 from:(id)a6;
- (void)copyValueForKey:(__CFString *)a3;
- (void)dealloc;
- (void)forEachObserver:(uint64_t)a1;
- (void)mergeIntoDictionary:(__CFDictionary *)a3 sourceDictionary:(__CFDictionary *)a4 cloudKeyEvaluator:(id)a5;
- (void)removeAllValues_from:(os_unfair_lock_s *)a1;
- (void)replaceAllValuesWithValues:(uint64_t)a3 forKeys:(unint64_t)a4 count:(uint64_t)a5 from:;
- (void)setValue:(uint64_t)a3 forKey:(uint64_t)a4 from:;
- (void)setValues:(uint64_t)a3 forKeys:(unint64_t)a4 count:(int)a5 copyValues:(uint64_t)a6 from:;
- (void)setValues:(uint64_t)a3 forKeys:(unint64_t)a4 count:(int)a5 copyValues:(uint64_t)a6 removeValuesForKeys:(unint64_t)a7 count:(uint64_t)a8 from:;
@end

@implementation CFPrefsSource

- (__CFDictionary)alreadylocked_copyDictionary
{
  os_unfair_lock_assert_owner(&self->_lock);
  dict = self->_dict;
  if (!dict || CFDictionaryGetCount(dict) < 1)
  {
    return 0;
  }

  v4 = self->_dict;

  return CFDictionaryCreateCopy(&__kCFAllocatorSystemDefault, v4);
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  dict = self->_dict;
  if (dict)
  {
    CFRelease(dict);
  }

  self->_dict = 0;

  v5.receiver = self;
  v5.super_class = CFPrefsSource;
  [(CFPrefsSource *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (os_unfair_lock_s)copyDictionary
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 13);
    v2 = [(os_unfair_lock_s *)v1 alreadylocked_copyDictionary];
    os_unfair_lock_unlock(v1 + 13);
    return v2;
  }

  return result;
}

- (__CFString)copyOSLogDescription
{
  ClassName = object_getClassName(self);
  v4 = [(CFPrefsSource *)self domainIdentifier];
  v5 = [(CFPrefsSource *)self userIdentifier];
  v6 = [(CFPrefsSource *)self isByHost];
  v7 = [(CFPrefsSource *)self container];
  v8 = atomic_load(&self->shmemEntry);
  v9 = "No";
  if (v8 && ((v10 = atomic_load(v8), v10 == -1) || (v11 = atomic_load(&self->lastKnownShmemState), v10 == v11)))
  {
    v12 = "No";
  }

  else
  {
    v12 = "Yes";
  }

  if (v6)
  {
    v9 = "Yes";
  }

  return CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s<%p> (Domain: %@, User: %@, ByHost: %s, Container: %@, Contents Need Refresh: %s)", ClassName, self, v4, v5, v9, v7, v12);
}

- (os_unfair_lock_s)copyKeyList
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 13);
    v2 = [(os_unfair_lock_s *)v1 alreadylocked_copyKeyList];
    os_unfair_lock_unlock(v1 + 13);
    return v2;
  }

  return result;
}

- (__CFArray)alreadylocked_copyKeyList
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [(CFPrefsSource *)self alreadylocked_copyDictionary];
  if (v2)
  {
    v3 = v2;
    Count = CFDictionaryGetCount(v2);
    v6 = Count;
    if (Count >> 60)
    {
      v15 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
      v16 = [NSException exceptionWithName:@"NSGenericException" reason:v15 userInfo:0];
      CFRelease(v15);
      objc_exception_throw(v16);
    }

    if (Count <= 1)
    {
      Count = 1;
    }

    v7 = MEMORY[0x1EEE9AC00](Count, v5);
    v9 = (v17 - v8);
    v17[0] = 0;
    if (v6 >= 0x101)
    {
      v9 = _CFCreateArrayStorage(v7, 0, v17);
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    CFDictionaryGetKeysAndValues(v3, v9, 0);
    v13 = CFArrayCreate(&__kCFAllocatorSystemDefault, v9, v6, &kCFTypeArrayCallBacks);
    CFRelease(v3);
    free(v10);
    v14 = *MEMORY[0x1E69E9840];
    return v13;
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return CFArrayCreate(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeArrayCallBacks);
  }
}

- (CFPrefsSource)initWithContainingPreferences:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CFPrefsSource;
  result = [(CFPrefsSource *)&v6 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    atomic_store(&sentinelGeneration, &result->shmemEntry);
    result->_containingPreferences = a3;
    result->_isSearchList = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyVolatileSourceWithContainingPreferences:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  if ([(CFPrefsSource *)self isVolatile])
  {
    v5 = [[CFPrefsSource alloc] initWithContainingPreferences:a3];
    dict = self->_dict;
    if (dict)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, dict);
      if (MutableCopy)
      {
        v8 = MutableCopy;
        v9 = v5->_dict;
        if (v9)
        {
          CFRelease(v9);
        }

        v5->_dict = v8;
      }
    }

    v10 = atomic_load(&self->_generationCount);
    atomic_store(v10, &v5->_generationCount);
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (uint64_t)alreadylocked_addPreferencesObserver:(uint64_t)a1
{
  if (!a1 || !a2)
  {
    return 0;
  }

  os_unfair_lock_assert_owner((a1 + 52));
  v4 = *(a1 + 24);
  if (!v4)
  {
    v4 = objc_alloc_init(__CFPrefsWeakObservers);
    *(a1 + 24) = v4;
  }

  [(__CFPrefsWeakObservers *)v4 addObject:a2];

  return [a1 alreadylocked_updateObservingRemoteChanges];
}

- (void)forEachObserver:(uint64_t)a1
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_15:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  os_unfair_lock_lock((a1 + 52));
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = [v4 approximateCount];
    v7 = v5;
    if (v5 >> 60)
    {
      v15 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v5);
      v16 = [NSException exceptionWithName:@"NSGenericException" reason:v15 userInfo:0];
      CFRelease(v15);
      objc_exception_throw(v16);
    }

    if (v5 <= 1)
    {
      v5 = 1;
    }

    v8 = MEMORY[0x1EEE9AC00](v5, v6);
    v10 = (&v17 - v9);
    v17 = 0;
    if (v7 >= 0x101)
    {
      v10 = _CFCreateArrayStorage(v8, 0, &v17);
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v13 = [*(a1 + 24) borrowObjects:v10 count:{v7, v17, v18}];
    os_unfair_lock_unlock((a1 + 52));
    for (; v13; --v13)
    {
      (*(a2 + 16))(a2, *v10);
    }

    free(v11);
    goto LABEL_15;
  }

  v12 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock((a1 + 52));
}

- (uint64_t)alreadylocked_removePreferencesObserver:(uint64_t)a1
{
  if (!a1 || !a2)
  {
    return 0;
  }

  os_unfair_lock_assert_owner((a1 + 52));
  [*(a1 + 24) removeObject:a2];

  return [a1 alreadylocked_updateObservingRemoteChanges];
}

- (void)alreadylocked_setPrecopiedValues:(const void *)a3 forKeys:(const __CFString *)a4 count:(int64_t)a5 from:(id)a6
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_dict)
  {
    self->_dict = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  if (a5 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *a4;
      v12 = *a3;
      if ([(CFPrefsSource *)self validateValue:*a4 forKey:0 inDict:1 forWriting:?])
      {
        dict = self->_dict;
        if (v12)
        {
          CFDictionarySetValue(dict, v11, v12);
        }

        else
        {
          CFDictionaryRemoveValue(dict, v11);
        }

        v14 = _CFPrefsClientLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [(CFPrefsSource *)self copyOSLogDescription];
          _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
          v16 = _CFPrefsClientLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138478339;
            v19 = v12;
            v20 = 2113;
            v21 = v11;
            v22 = 2114;
            v23 = v15;
            _os_log_debug_impl(&dword_1830E6000, v16, OS_LOG_TYPE_DEBUG, "setting new value %{private}@ for key %{private}@ in %{public}@", buf, 0x20u);
          }

          _CFSetTSD(0xFu, 0, 0);
          CFRelease(v15);
        }

        v10 = 1;
      }

      ++a3;
      ++a4;
      --a5;
    }

    while (a5);
    if (v10)
    {
      atomic_fetch_add(&self->_generationCount, 1uLL);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (uint64_t)validateValue:(CFTypeRef)cf1 forKey:(const __CFDictionary *)a4 inDict:(int)a5 forWriting:
{
  v28 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_27;
  }

  if (!cf1)
  {
LABEL_19:
    result = 1;
    goto LABEL_27;
  }

  v9 = result;
  Value = a2;
  if (CFEqual(cf1, @"AppleLanguages"))
  {
    Value = a2;
    if (!a2)
    {
      Value = 0;
      if (a4)
      {
        Value = CFDictionaryGetValue(a4, cf1);
      }
    }

    if (!Value)
    {
      goto LABEL_19;
    }

    v11 = CFGetTypeID(Value);
    if (v11 != CFArrayGetTypeID())
    {
      goto LABEL_20;
    }

    Count = CFArrayGetCount(Value);
    if (Count >= 1)
    {
      v13 = Count;
      v14 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, v14);
        v16 = CFGetTypeID(ValueAtIndex);
        if (v16 != CFStringGetTypeID())
        {
          goto LABEL_20;
        }
      }

      while (v13 != ++v14);
    }
  }

  if (!CFEqual(cf1, @"AppleLocale"))
  {
    goto LABEL_19;
  }

  if (a4 && !Value)
  {
    Value = CFDictionaryGetValue(a4, cf1);
  }

  if (!Value)
  {
    goto LABEL_19;
  }

  v17 = CFGetTypeID(Value);
  if (v17 == CFStringGetTypeID())
  {
    goto LABEL_19;
  }

LABEL_20:
  v18 = [v9 copyOSLogDescription];
  if (a5)
  {
    _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
    v19 = _CFPrefsClientLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = 138478339;
      v23 = a2;
      v24 = 2114;
      v25 = cf1;
      v26 = 2114;
      v27 = v18;
      _os_log_error_impl(&dword_1830E6000, v19, OS_LOG_TYPE_ERROR, "attempted to write invalid value %{private}@ for key %{public}@ in %{public}@. Replacing with NULL.", &v22, 0x20u);
    }
  }

  else
  {
    _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
    v20 = _CFPrefsClientLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v22 = 138478339;
      v23 = a2;
      v24 = 2114;
      v25 = cf1;
      v26 = 2114;
      v27 = v18;
      _os_log_error_impl(&dword_1830E6000, v20, OS_LOG_TYPE_ERROR, "looked up invalid value %{private}@ for key %{public}@ in %{public}@. Replacing with NULL.", &v22, 0x20u);
    }
  }

  _CFSetTSD(0xFu, 0, 0);
  CFRelease(v18);
  result = 0;
LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setValues:(uint64_t)a3 forKeys:(unint64_t)a4 count:(int)a5 copyValues:(uint64_t)a6 removeValuesForKeys:(unint64_t)a7 count:(uint64_t)a8 from:
{
  v40 = a8;
  v43[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_30;
  }

  if (a7 >> 60)
  {
    v32 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", a7);
    v33 = [NSException exceptionWithName:@"NSGenericException" reason:v32 userInfo:0];
    CFRelease(v32);
    objc_exception_throw(v33);
  }

  v38 = &v36;
  if (a7 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a7;
  }

  v16 = MEMORY[0x1EEE9AC00](v15, a2);
  v18 = &v36 - v17;
  if (a7 > 0x100)
  {
    v43[0] = 0;
    v18 = _CFCreateArrayStorage(v16, 1, v43);
    v39 = v18;
  }

  else
  {
    bzero(&v36 - v17, 8 * v16);
    v39 = 0;
    v43[0] = 0;
  }

  if (a4 >> 60)
  {
    v34 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", a4);
    v35 = [NSException exceptionWithName:@"NSGenericException" reason:v34 userInfo:0];
    CFRelease(v34);
    objc_exception_throw(v35);
  }

  if (a4 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = a4;
  }

  v21 = MEMORY[0x1EEE9AC00](v20, v19);
  v23 = (&v36 - v22);
  v42 = 0;
  if (a4 >= 0x101)
  {
    v23 = _CFCreateArrayStorage(v21, 0, &v42);
    v37 = v23;
  }

  else
  {
    if (!a4)
    {
      v26 = a1 + 13;
      os_unfair_lock_lock(a1 + 13);
      v29 = 0;
      v28 = v40;
      if (!a7)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v37 = 0;
  }

  v24 = 0;
  do
  {
    DeepCopyOfValueForKey = *(a2 + 8 * v24);
    if (DeepCopyOfValueForKey)
    {
      if (a5)
      {
        DeepCopyOfValueForKey = createDeepCopyOfValueForKey(DeepCopyOfValueForKey, *(a3 + 8 * v24));
      }

      else
      {
        DeepCopyOfValueForKey = CFRetain(DeepCopyOfValueForKey);
      }
    }

    v23[v24++] = DeepCopyOfValueForKey;
  }

  while (a4 != v24);
  v26 = a1 + 13;
  os_unfair_lock_lock(a1 + 13);
  v27 = a3;
  v28 = v40;
  v29 = v37;
  [(os_unfair_lock_s *)a1 alreadylocked_setPrecopiedValues:v23 forKeys:v27 count:a4 from:v40];
  if (!a7)
  {
    goto LABEL_25;
  }

LABEL_24:
  [(os_unfair_lock_s *)a1 alreadylocked_setPrecopiedValues:v18 forKeys:a6 count:a7 from:v28];
LABEL_25:
  os_unfair_lock_unlock(v26);
  for (i = a4; i; --i)
  {
    if (*v23)
    {
      CFRelease(*v23);
    }

    ++v23;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __83__CFPrefsSource_setValues_forKeys_count_copyValues_removeValuesForKeys_count_from___block_invoke;
  v41[3] = &unk_1E6DCF018;
  v41[4] = v28;
  v41[5] = a1;
  [(CFPrefsSource *)a1 forEachObserver:v41];
  free(v29);
  free(v39);
LABEL_30:
  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __83__CFPrefsSource_setValues_forKeys_count_copyValues_removeValuesForKeys_count_from___block_invoke(uint64_t result, void *a2)
{
  if (*(result + 32) != a2)
  {
    v3 = result;
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v4 = [*(v3 + 40) domainIdentifier];

      return [a2 handleChangeNotificationForDomainIdentifier:v4 isRemote:0];
    }
  }

  return result;
}

- (void)_notifyObserversOfChangeFromValuesForKeys:(id)a3 toValuesForKeys:(id)a4
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__CFPrefsSource__notifyObserversOfChangeFromValuesForKeys_toValuesForKeys___block_invoke;
  v5[3] = &unk_1E6DCF018;
  v5[4] = a3;
  v5[5] = a4;
  [(CFPrefsSource *)self forEachObserver:v5];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)replaceAllValuesWithValues:(uint64_t)a3 forKeys:(unint64_t)a4 count:(uint64_t)a5 from:
{
  v48[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_36;
  }

  v42 = a5;
  os_unfair_lock_lock(a1 + 13);
  v9 = [(os_unfair_lock_s *)a1 alreadylocked_copyKeyList];
  os_unfair_lock_unlock(a1 + 13);
  v45 = v9;
  Count = CFArrayGetCount(v9);
  v12 = Count;
  if (Count >> 60)
  {
    v36 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
    v37 = [NSException exceptionWithName:@"NSGenericException" reason:v36 userInfo:0];
    CFRelease(v36);
    objc_exception_throw(v37);
  }

  if (Count <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = Count;
  }

  if (Count >= 0x101)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = 8 * v14;
  MEMORY[0x1EEE9AC00](Count, v11);
  v17 = (&v40 - v16);
  v48[0] = 0;
  if (v12 >= 0x101)
  {
    v17 = _CFCreateArrayStorage(v13, 0, v48);
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v49.location = 0;
  v49.length = v12;
  CFArrayGetValues(v45, v49, v17);
  v43 = &v40;
  MEMORY[0x1EEE9AC00](v19, v20);
  v21 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 > 0x100)
  {
    v47 = 0;
    v23 = _CFCreateArrayStorage(v13, 1, &v47);
  }

  else
  {
    bzero(v21, 8 * v13);
    v23 = 0;
    v47 = 0;
  }

  if (v12 >= 0x101)
  {
    v24 = v23;
  }

  else
  {
    v24 = v21;
  }

  if (a4 >> 60)
  {
    v41 = v23;
    v38 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", a4);
    v39 = [NSException exceptionWithName:@"NSGenericException" reason:v38 userInfo:0];
    CFRelease(v38);
    objc_exception_throw(v39);
  }

  if (a4 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = a4;
  }

  v26 = MEMORY[0x1EEE9AC00](v25, v22);
  v28 = (&v40 - v27);
  v46 = 0;
  if (a4 >= 0x101)
  {
    v41 = v23;
    v28 = _CFCreateArrayStorage(v26, 0, &v46);
    v29 = v18;
    v44 = v28;
LABEL_26:
    v30 = 0;
    do
    {
      v31 = *(a2 + 8 * v30);
      if (v31)
      {
        v28[v30] = createDeepCopyOfValueForKey(v31, *(a3 + 8 * v30));
      }

      ++v30;
    }

    while (a4 != v30);
    v32 = 0;
    v18 = v29;
    v23 = v41;
    goto LABEL_31;
  }

  v44 = 0;
  if (a4)
  {
    v41 = v23;
    v29 = v18;
    goto LABEL_26;
  }

  v32 = 1;
LABEL_31:
  os_unfair_lock_lock(a1 + 13);
  v33 = v24;
  v34 = v42;
  [(os_unfair_lock_s *)a1 alreadylocked_setPrecopiedValues:v33 forKeys:v17 count:v12 from:v42];
  [(os_unfair_lock_s *)a1 alreadylocked_setPrecopiedValues:v28 forKeys:a3 count:a4 from:v34];
  os_unfair_lock_unlock(a1 + 13);
  CFRelease(v45);
  if ((v32 & 1) == 0)
  {
    do
    {
      if (*v28)
      {
        CFRelease(*v28);
      }

      ++v28;
      --a4;
    }

    while (a4);
  }

  free(v44);
  free(v23);
  free(v18);
LABEL_36:
  v35 = *MEMORY[0x1E69E9840];
}

- (void)alreadylocked_copyValueForKey:(__CFString *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  dict = self->_dict;
  if (dict)
  {
    Value = CFDictionaryGetValue(dict, a3);
  }

  else
  {
    Value = 0;
  }

  v7 = _CFPrefsClientLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(CFPrefsSource *)self copyOSLogDescription];
    if (Value)
    {
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v9 = _CFPrefsClientLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138478339;
        v14 = Value;
        v15 = 2114;
        v16 = a3;
        v17 = 2114;
        v18 = v8;
        _os_log_debug_impl(&dword_1830E6000, v9, OS_LOG_TYPE_DEBUG, "looked up value %{private}@ for key %{public}@ in %{public}@", &v13, 0x20u);
      }

      _CFSetTSD(0xFu, 0, 0);
    }

    else
    {
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v10 = _CFPrefsClientLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [CFPrefsSource alreadylocked_copyValueForKey:];
      }

      _CFSetTSD(0xFu, 0, 0);
    }

    CFRelease(v8);
  }

  if (Value)
  {
    result = CFRetain(Value);
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)copyValueForKey:(__CFString *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(CFPrefsSource *)self alreadylocked_copyValueForKey:a3];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)mergeIntoDictionary:(__CFDictionary *)a3 sourceDictionary:(__CFDictionary *)a4 cloudKeyEvaluator:(id)a5
{
  v11[7] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(CFPrefsSource *)self alreadylocked_copyDictionary];
  if (v8)
  {
    v9 = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__CFPrefsSource_mergeIntoDictionary_sourceDictionary_cloudKeyEvaluator___block_invoke;
    v11[3] = &unk_1E6DCF040;
    v11[5] = a3;
    v11[6] = a4;
    v11[4] = self;
    _CFPrefsDictionaryApplyBlock(v8, v11);
    CFRelease(v9);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10 = *MEMORY[0x1E69E9840];
}

void __72__CFPrefsSource_mergeIntoDictionary_sourceDictionary_cloudKeyEvaluator___block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  CFDictionaryAddValue(*(a1 + 40), a2, a3);
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(a1 + 32);

    CFDictionaryAddValue(v5, a2, v6);
  }
}

- (id)description
{
  v18[1] = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  os_unfair_lock_lock(&self->_lock);
  ClassName = object_getClassName(self);
  v5 = [(CFPrefsSource *)self domainIdentifier];
  v6 = [(CFPrefsSource *)self userIdentifier];
  if ([(CFPrefsSource *)self isByHost])
  {
    v7 = "Yes";
  }

  else
  {
    v7 = "No";
  }

  CFStringAppendFormat(Mutable, 0, @"%s<%p> (Domain: %@, User: %@, ByHost: %s, Container: %@)", ClassName, self, v5, v6, v7, [(CFPrefsSource *)self container]);
  dict = self->_dict;
  if (dict)
  {
    dict = CFDictionaryGetCount(dict);
    v10 = dict;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1EEE9AC00](dict, v8);
  v13 = (v18 - v12);
  if (v11 >= 0x200)
  {
    v14 = 512;
  }

  else
  {
    v14 = v11;
  }

  bzero(v18 - v12, v14);
  if (v10 <= 0)
  {
    CFStringAppend(Mutable, @" Keys: [");
  }

  else
  {
    CFDictionaryGetKeysAndValues(self->_dict, v13, 0);
    CFStringAppend(Mutable, @" Keys: [");
    do
    {
      v15 = *v13++;
      CFStringAppend(Mutable, v15);
      CFStringAppend(Mutable, @", ");
      --v10;
    }

    while (v10);
  }

  CFStringAppend(Mutable, @"]\n");
  os_unfair_lock_unlock(&self->_lock);
  result = CFAutorelease(Mutable);
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setValues:(uint64_t)a3 forKeys:(unint64_t)a4 count:(int)a5 copyValues:(uint64_t)a6 from:
{
  if (a1)
  {
    [(CFPrefsSource *)a1 setValues:a2 forKeys:a3 count:a4 copyValues:a5 removeValuesForKeys:0 count:0 from:a6];
  }
}

- (void)setValue:(uint64_t)a3 forKey:(uint64_t)a4 from:
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a3;
    v6[0] = a2;
    [(CFPrefsSource *)a1 setValues:v6 forKeys:&v5 count:1uLL copyValues:1 removeValuesForKeys:0 count:0 from:a4];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)removeAllValues_from:(os_unfair_lock_s *)a1
{
  if (a1)
  {
    [(CFPrefsSource *)a1 replaceAllValuesWithValues:0 forKeys:0 count:a2 from:?];
  }
}

- (BOOL)alreadylocked_requestNewData
{
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 13);
  }

  return a1 != 0;
}

- (void)alreadylocked_copyValueForKey:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(&dword_1830E6000, v0, OS_LOG_TYPE_DEBUG, "found no value for key %{public}@ in %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end