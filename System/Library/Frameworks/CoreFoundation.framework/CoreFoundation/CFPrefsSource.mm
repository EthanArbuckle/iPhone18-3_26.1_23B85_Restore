@interface CFPrefsSource
- (BOOL)alreadylocked_requestNewData;
- (CFPrefsSource)initWithContainingPreferences:(id)preferences;
- (__CFArray)alreadylocked_copyKeyList;
- (__CFDictionary)alreadylocked_copyDictionary;
- (__CFString)copyOSLogDescription;
- (id)copyVolatileSourceWithContainingPreferences:(id)preferences;
- (id)description;
- (os_unfair_lock_s)copyDictionary;
- (os_unfair_lock_s)copyKeyList;
- (uint64_t)alreadylocked_addPreferencesObserver:(uint64_t)observer;
- (uint64_t)alreadylocked_removePreferencesObserver:(uint64_t)observer;
- (uint64_t)validateValue:(CFTypeRef)cf1 forKey:(const __CFDictionary *)key inDict:(int)dict forWriting:;
- (void)_notifyObserversOfChangeFromValuesForKeys:(id)keys toValuesForKeys:(id)forKeys;
- (void)alreadylocked_copyValueForKey:(__CFString *)key;
- (void)alreadylocked_setPrecopiedValues:(const void *)values forKeys:(const __CFString *)keys count:(int64_t)count from:(id)from;
- (void)copyValueForKey:(__CFString *)key;
- (void)dealloc;
- (void)forEachObserver:(uint64_t)observer;
- (void)mergeIntoDictionary:(__CFDictionary *)dictionary sourceDictionary:(__CFDictionary *)sourceDictionary cloudKeyEvaluator:(id)evaluator;
- (void)removeAllValues_from:(os_unfair_lock_s *)values_from;
- (void)replaceAllValuesWithValues:(uint64_t)values forKeys:(unint64_t)keys count:(uint64_t)count from:;
- (void)setValue:(uint64_t)value forKey:(uint64_t)key from:;
- (void)setValues:(uint64_t)values forKeys:(unint64_t)keys count:(int)count copyValues:(uint64_t)copyValues from:;
- (void)setValues:(uint64_t)values forKeys:(unint64_t)keys count:(int)count copyValues:(uint64_t)copyValues removeValuesForKeys:(unint64_t)forKeys count:(uint64_t)a8 from:;
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
    alreadylocked_copyDictionary = [(os_unfair_lock_s *)v1 alreadylocked_copyDictionary];
    os_unfair_lock_unlock(v1 + 13);
    return alreadylocked_copyDictionary;
  }

  return result;
}

- (__CFString)copyOSLogDescription
{
  ClassName = object_getClassName(self);
  domainIdentifier = [(CFPrefsSource *)self domainIdentifier];
  userIdentifier = [(CFPrefsSource *)self userIdentifier];
  isByHost = [(CFPrefsSource *)self isByHost];
  container = [(CFPrefsSource *)self container];
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

  if (isByHost)
  {
    v9 = "Yes";
  }

  return CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%s<%p> (Domain: %@, User: %@, ByHost: %s, Container: %@, Contents Need Refresh: %s)", ClassName, self, domainIdentifier, userIdentifier, v9, container, v12);
}

- (os_unfair_lock_s)copyKeyList
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 13);
    alreadylocked_copyKeyList = [(os_unfair_lock_s *)v1 alreadylocked_copyKeyList];
    os_unfair_lock_unlock(v1 + 13);
    return alreadylocked_copyKeyList;
  }

  return result;
}

- (__CFArray)alreadylocked_copyKeyList
{
  v17[1] = *MEMORY[0x1E69E9840];
  alreadylocked_copyDictionary = [(CFPrefsSource *)self alreadylocked_copyDictionary];
  if (alreadylocked_copyDictionary)
  {
    v3 = alreadylocked_copyDictionary;
    Count = CFDictionaryGetCount(alreadylocked_copyDictionary);
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

- (CFPrefsSource)initWithContainingPreferences:(id)preferences
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CFPrefsSource;
  result = [(CFPrefsSource *)&v6 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    atomic_store(&sentinelGeneration, &result->shmemEntry);
    result->_containingPreferences = preferences;
    result->_isSearchList = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)copyVolatileSourceWithContainingPreferences:(id)preferences
{
  os_unfair_lock_lock(&self->_lock);
  if ([(CFPrefsSource *)self isVolatile])
  {
    v5 = [[CFPrefsSource alloc] initWithContainingPreferences:preferences];
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

- (uint64_t)alreadylocked_addPreferencesObserver:(uint64_t)observer
{
  if (!observer || !a2)
  {
    return 0;
  }

  os_unfair_lock_assert_owner((observer + 52));
  v4 = *(observer + 24);
  if (!v4)
  {
    v4 = objc_alloc_init(__CFPrefsWeakObservers);
    *(observer + 24) = v4;
  }

  [(__CFPrefsWeakObservers *)v4 addObject:a2];

  return [observer alreadylocked_updateObservingRemoteChanges];
}

- (void)forEachObserver:(uint64_t)observer
{
  v18 = *MEMORY[0x1E69E9840];
  if (!observer)
  {
LABEL_15:
    v14 = *MEMORY[0x1E69E9840];
    return;
  }

  os_unfair_lock_lock((observer + 52));
  v4 = *(observer + 24);
  if (v4)
  {
    approximateCount = [v4 approximateCount];
    v7 = approximateCount;
    if (approximateCount >> 60)
    {
      v15 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", approximateCount);
      v16 = [NSException exceptionWithName:@"NSGenericException" reason:v15 userInfo:0];
      CFRelease(v15);
      objc_exception_throw(v16);
    }

    if (approximateCount <= 1)
    {
      approximateCount = 1;
    }

    v8 = MEMORY[0x1EEE9AC00](approximateCount, v6);
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

    v13 = [*(observer + 24) borrowObjects:v10 count:{v7, v17, v18}];
    os_unfair_lock_unlock((observer + 52));
    for (; v13; --v13)
    {
      (*(a2 + 16))(a2, *v10);
    }

    free(v11);
    goto LABEL_15;
  }

  v12 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock((observer + 52));
}

- (uint64_t)alreadylocked_removePreferencesObserver:(uint64_t)observer
{
  if (!observer || !a2)
  {
    return 0;
  }

  os_unfair_lock_assert_owner((observer + 52));
  [*(observer + 24) removeObject:a2];

  return [observer alreadylocked_updateObservingRemoteChanges];
}

- (void)alreadylocked_setPrecopiedValues:(const void *)values forKeys:(const __CFString *)keys count:(int64_t)count from:(id)from
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_dict)
  {
    self->_dict = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  if (count >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *keys;
      v12 = *values;
      if ([(CFPrefsSource *)self validateValue:*keys forKey:0 inDict:1 forWriting:?])
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
          copyOSLogDescription = [(CFPrefsSource *)self copyOSLogDescription];
          _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
          v16 = _CFPrefsClientLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138478339;
            v19 = v12;
            v20 = 2113;
            v21 = v11;
            v22 = 2114;
            v23 = copyOSLogDescription;
            _os_log_debug_impl(&dword_1830E6000, v16, OS_LOG_TYPE_DEBUG, "setting new value %{private}@ for key %{private}@ in %{public}@", buf, 0x20u);
          }

          _CFSetTSD(0xFu, 0, 0);
          CFRelease(copyOSLogDescription);
        }

        v10 = 1;
      }

      ++values;
      ++keys;
      --count;
    }

    while (count);
    if (v10)
    {
      atomic_fetch_add(&self->_generationCount, 1uLL);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (uint64_t)validateValue:(CFTypeRef)cf1 forKey:(const __CFDictionary *)key inDict:(int)dict forWriting:
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
      if (key)
      {
        Value = CFDictionaryGetValue(key, cf1);
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

  if (key && !Value)
  {
    Value = CFDictionaryGetValue(key, cf1);
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
  copyOSLogDescription = [v9 copyOSLogDescription];
  if (dict)
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
      v27 = copyOSLogDescription;
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
      v27 = copyOSLogDescription;
      _os_log_error_impl(&dword_1830E6000, v20, OS_LOG_TYPE_ERROR, "looked up invalid value %{private}@ for key %{public}@ in %{public}@. Replacing with NULL.", &v22, 0x20u);
    }
  }

  _CFSetTSD(0xFu, 0, 0);
  CFRelease(copyOSLogDescription);
  result = 0;
LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setValues:(uint64_t)values forKeys:(unint64_t)keys count:(int)count copyValues:(uint64_t)copyValues removeValuesForKeys:(unint64_t)forKeys count:(uint64_t)a8 from:
{
  v40 = a8;
  v43[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_30;
  }

  if (forKeys >> 60)
  {
    v32 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", forKeys);
    v33 = [NSException exceptionWithName:@"NSGenericException" reason:v32 userInfo:0];
    CFRelease(v32);
    objc_exception_throw(v33);
  }

  v38 = &v36;
  if (forKeys <= 1)
  {
    forKeysCopy = 1;
  }

  else
  {
    forKeysCopy = forKeys;
  }

  v16 = MEMORY[0x1EEE9AC00](forKeysCopy, a2);
  v18 = &v36 - v17;
  if (forKeys > 0x100)
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

  if (keys >> 60)
  {
    v34 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", keys);
    v35 = [NSException exceptionWithName:@"NSGenericException" reason:v34 userInfo:0];
    CFRelease(v34);
    objc_exception_throw(v35);
  }

  if (keys <= 1)
  {
    keysCopy = 1;
  }

  else
  {
    keysCopy = keys;
  }

  v21 = MEMORY[0x1EEE9AC00](keysCopy, v19);
  v23 = (&v36 - v22);
  v42 = 0;
  if (keys >= 0x101)
  {
    v23 = _CFCreateArrayStorage(v21, 0, &v42);
    v37 = v23;
  }

  else
  {
    if (!keys)
    {
      v26 = self + 13;
      os_unfair_lock_lock(self + 13);
      v29 = 0;
      v28 = v40;
      if (!forKeys)
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
      if (count)
      {
        DeepCopyOfValueForKey = createDeepCopyOfValueForKey(DeepCopyOfValueForKey, *(values + 8 * v24));
      }

      else
      {
        DeepCopyOfValueForKey = CFRetain(DeepCopyOfValueForKey);
      }
    }

    v23[v24++] = DeepCopyOfValueForKey;
  }

  while (keys != v24);
  v26 = self + 13;
  os_unfair_lock_lock(self + 13);
  valuesCopy = values;
  v28 = v40;
  v29 = v37;
  [(os_unfair_lock_s *)self alreadylocked_setPrecopiedValues:v23 forKeys:valuesCopy count:keys from:v40];
  if (!forKeys)
  {
    goto LABEL_25;
  }

LABEL_24:
  [(os_unfair_lock_s *)self alreadylocked_setPrecopiedValues:v18 forKeys:copyValues count:forKeys from:v28];
LABEL_25:
  os_unfair_lock_unlock(v26);
  for (i = keys; i; --i)
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
  v41[5] = self;
  [(CFPrefsSource *)self forEachObserver:v41];
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

- (void)_notifyObserversOfChangeFromValuesForKeys:(id)keys toValuesForKeys:(id)forKeys
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__CFPrefsSource__notifyObserversOfChangeFromValuesForKeys_toValuesForKeys___block_invoke;
  v5[3] = &unk_1E6DCF018;
  v5[4] = keys;
  v5[5] = forKeys;
  [(CFPrefsSource *)self forEachObserver:v5];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)replaceAllValuesWithValues:(uint64_t)values forKeys:(unint64_t)keys count:(uint64_t)count from:
{
  v48[1] = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_36;
  }

  countCopy = count;
  os_unfair_lock_lock(self + 13);
  alreadylocked_copyKeyList = [(os_unfair_lock_s *)self alreadylocked_copyKeyList];
  os_unfair_lock_unlock(self + 13);
  v45 = alreadylocked_copyKeyList;
  Count = CFArrayGetCount(alreadylocked_copyKeyList);
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

  if (keys >> 60)
  {
    v41 = v23;
    v38 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", keys);
    v39 = [NSException exceptionWithName:@"NSGenericException" reason:v38 userInfo:0];
    CFRelease(v38);
    objc_exception_throw(v39);
  }

  if (keys <= 1)
  {
    keysCopy = 1;
  }

  else
  {
    keysCopy = keys;
  }

  v26 = MEMORY[0x1EEE9AC00](keysCopy, v22);
  v28 = (&v40 - v27);
  v46 = 0;
  if (keys >= 0x101)
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
        v28[v30] = createDeepCopyOfValueForKey(v31, *(values + 8 * v30));
      }

      ++v30;
    }

    while (keys != v30);
    v32 = 0;
    v18 = v29;
    v23 = v41;
    goto LABEL_31;
  }

  v44 = 0;
  if (keys)
  {
    v41 = v23;
    v29 = v18;
    goto LABEL_26;
  }

  v32 = 1;
LABEL_31:
  os_unfair_lock_lock(self + 13);
  v33 = v24;
  v34 = countCopy;
  [(os_unfair_lock_s *)self alreadylocked_setPrecopiedValues:v33 forKeys:v17 count:v12 from:countCopy];
  [(os_unfair_lock_s *)self alreadylocked_setPrecopiedValues:v28 forKeys:values count:keys from:v34];
  os_unfair_lock_unlock(self + 13);
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
      --keys;
    }

    while (keys);
  }

  free(v44);
  free(v23);
  free(v18);
LABEL_36:
  v35 = *MEMORY[0x1E69E9840];
}

- (void)alreadylocked_copyValueForKey:(__CFString *)key
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  dict = self->_dict;
  if (dict)
  {
    Value = CFDictionaryGetValue(dict, key);
  }

  else
  {
    Value = 0;
  }

  v7 = _CFPrefsClientLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    copyOSLogDescription = [(CFPrefsSource *)self copyOSLogDescription];
    if (Value)
    {
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      v9 = _CFPrefsClientLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = 138478339;
        v14 = Value;
        v15 = 2114;
        keyCopy = key;
        v17 = 2114;
        v18 = copyOSLogDescription;
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

    CFRelease(copyOSLogDescription);
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

- (void)copyValueForKey:(__CFString *)key
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(CFPrefsSource *)self alreadylocked_copyValueForKey:key];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)mergeIntoDictionary:(__CFDictionary *)dictionary sourceDictionary:(__CFDictionary *)sourceDictionary cloudKeyEvaluator:(id)evaluator
{
  v11[7] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  alreadylocked_copyDictionary = [(CFPrefsSource *)self alreadylocked_copyDictionary];
  if (alreadylocked_copyDictionary)
  {
    v9 = alreadylocked_copyDictionary;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __72__CFPrefsSource_mergeIntoDictionary_sourceDictionary_cloudKeyEvaluator___block_invoke;
    v11[3] = &unk_1E6DCF040;
    v11[5] = dictionary;
    v11[6] = sourceDictionary;
    v11[4] = self;
    _CFPrefsDictionaryApplyBlock(alreadylocked_copyDictionary, v11);
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
  domainIdentifier = [(CFPrefsSource *)self domainIdentifier];
  userIdentifier = [(CFPrefsSource *)self userIdentifier];
  if ([(CFPrefsSource *)self isByHost])
  {
    v7 = "Yes";
  }

  else
  {
    v7 = "No";
  }

  CFStringAppendFormat(Mutable, 0, @"%s<%p> (Domain: %@, User: %@, ByHost: %s, Container: %@)", ClassName, self, domainIdentifier, userIdentifier, v7, [(CFPrefsSource *)self container]);
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

- (void)setValues:(uint64_t)values forKeys:(unint64_t)keys count:(int)count copyValues:(uint64_t)copyValues from:
{
  if (self)
  {
    [(CFPrefsSource *)self setValues:a2 forKeys:values count:keys copyValues:count removeValuesForKeys:0 count:0 from:copyValues];
  }
}

- (void)setValue:(uint64_t)value forKey:(uint64_t)key from:
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    valueCopy = value;
    v6[0] = a2;
    [(CFPrefsSource *)self setValues:v6 forKeys:&valueCopy count:1uLL copyValues:1 removeValuesForKeys:0 count:0 from:key];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)removeAllValues_from:(os_unfair_lock_s *)values_from
{
  if (values_from)
  {
    [(CFPrefsSource *)values_from replaceAllValuesWithValues:0 forKeys:0 count:a2 from:?];
  }
}

- (BOOL)alreadylocked_requestNewData
{
  if (self)
  {
    os_unfair_lock_assert_owner(self + 13);
  }

  return self != 0;
}

- (void)alreadylocked_copyValueForKey:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_6();
  _os_log_debug_impl(&dword_1830E6000, v0, OS_LOG_TYPE_DEBUG, "found no value for key %{public}@ in %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

@end