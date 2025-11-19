CFMutableArrayRef CFArrayCreateMutable(CFAllocatorRef allocator, CFIndex capacity, const CFArrayCallBacks *callBacks)
{
  v9 = capacity;
  if (callBacks != &kCFTypeArrayCallBacks || &__kCFAllocatorSystemDefault != allocator && (allocator || &__kCFAllocatorSystemDefault != CFAllocatorGetDefault()))
  {
    goto LABEL_2;
  }

  if (__FoundationPresent_static_init != -1)
  {
    CFArrayCreateMutable_cold_1();
  }

  if (__FoundationPresent_present)
  {
    v12 = [NSMutableArray alloc];

    return [(NSMutableArray *)v12 initWithCapacity:0];
  }

  else
  {
LABEL_2:

    return __CFArrayCreateMutable0(allocator, v9, callBacks, v3, v4, v5, v6, v7);
  }
}

CFAllocatorRef CFAllocatorGetDefault(void)
{
  result = _CFGetTSD(1u);
  if (!result)
  {
    return &__kCFAllocatorSystemDefault;
  }

  return result;
}

Class _CFRuntimeSetInstanceTypeIDAndIsa(void *a1, unint64_t a2)
{
  result = _CFRuntimeSetInstanceTypeID(a1, a2);
  v5 = *a1 & ~MEMORY[0x1E69E58F0];
  if ((*a1 & MEMORY[0x1E69E58F0]) != 0)
  {
    v5 |= *a1 & MEMORY[0x1E69E58F0];
  }

  if (a2 < 0x48)
  {
    v6 = &__CFRuntimeBuiltinObjCClassTable[a2];
    if (v5 == *v6)
    {
      return result;
    }

    v7 = *v6;
    goto LABEL_15;
  }

  v8 = a2 - 72;
  if (a2 - 72 < dword_1ED40C410 && (v9 = __CFRuntimeClassTables[(v8 >> 6) + 16]) != 0)
  {
    v10 = *(v9 + 8 * (v8 & 0x3F));
  }

  else
  {
    v10 = 0;
  }

  if (v5 != v10)
  {
    if (v8 >= dword_1ED40C410 || (v11 = __CFRuntimeClassTables[(v8 >> 6) + 16]) == 0)
    {
      v12 = 0;
      goto LABEL_17;
    }

    v7 = *(v11 + 8 * (v8 & 0x3F));
LABEL_15:
    v12 = v7;
LABEL_17:

    return object_setClass(a1, v12);
  }

  return result;
}

CFIndex CFSetGetCount(CFSetRef theSet)
{
  if (CF_IS_OBJC(0x11uLL, theSet))
  {

    return [(__CFSet *)theSet count];
  }

  else
  {

    return CFBasicHashGetCount(theSet);
  }
}

uint64_t CFBasicHashGetCount(uint64_t a1)
{
  v2 = *(a1 + 18);
  if ((v2 & 0x18) == 0)
  {
    return *(a1 + 20);
  }

  v3 = __CFBasicHashTableSizes[*(a1 + 26)];
  if (v3 < 1)
  {
    return 0;
  }

  v4 = 0;
  result = 0;
  v6 = *(a1 + (v2 & 0x18) + 40);
  v7 = (v2 >> 5) & 3;
  do
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v8 = *(v6 + 4 * v4);
      }

      else
      {
        v8 = *(v6 + 8 * v4);
      }
    }

    else if (v7)
    {
      v8 = *(v6 + 2 * v4);
    }

    else
    {
      v8 = *(v6 + v4);
    }

    result += v8;
    ++v4;
  }

  while (v3 != v4);
  return result;
}

uint64_t _CFRuntimeSetInstanceTypeID(uint64_t result, unint64_t a2)
{
  if (a2 > 0x47)
  {
    v3 = a2 - 72;
    if (a2 - 72 >= dword_1ED40C410)
    {
      goto LABEL_19;
    }

    v4 = __CFRuntimeClassTables[v3 >> 6];
    if (!v4)
    {
      goto LABEL_19;
    }

    v2 = (v4 + 8 * (v3 & 0x3F));
  }

  else
  {
    v2 = (&__CFRuntimeBuiltinClassTable + a2);
  }

  v5 = *v2;
  if (!v5)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v6 = atomic_load((result + 8));
  v7 = (v6 >> 8) & 0x3FF;
  if (v7 > 0x47)
  {
    v8 = (__CFRuntimeClassTables[(v7 - 72) >> 6] + 8 * ((v7 - 72) & 0x3F));
  }

  else
  {
    v8 = (&__CFRuntimeBuiltinClassTable + v7);
  }

  v9 = *v8;
  if ((*v9 & 8) != 0 || v7 && (*v5 & 8) != 0)
  {
    v14 = *(v9 + 8);
    v15 = v5[1];
    return CFLog(3, @"*** Cannot change the CFTypeID of a %s to a %s due to custom ref counting");
  }

  else
  {
    v10 = atomic_load((result + 8));
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong((result + 8), &v11, v10 & 0xFFFFFFFFFFFC00FFLL | (a2 << 8));
      v12 = v11 == v10;
      v10 = v11;
    }

    while (!v12);
    atomic_fetch_and((result + 8), 0xFFFFF00000FFFFFFLL);
    v13 = atomic_load((result + 8));
    atomic_fetch_or((result + 8), ((v13 & 0x83FF00) >> 20) & 0xFFFFF000000);
  }

  return result;
}

uint64_t CFBasicHashGetCountOfKey(uint64_t result, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 == 2780474809 || a2 == 2814029233;
  if (v2 || !*(result + 20))
  {
    result = 0;
LABEL_24:
    v4 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (!*(result + 26))
  {
    v5 = xmmword_183447130;
    v6 = unk_183447140;
LABEL_23:
    result = *(&v6 + 1);
    goto LABEL_24;
  }

  v3 = *(result + 18) & 3;
  if ((*(result + 18) & 0x8000) != 0)
  {
    if ((*(result + 18) & 3u) > 1)
    {
      if (v3 == 2)
      {
        ___CFBasicHashFindBucket_Double_Indirect(result, a2, &v5);
      }

      else
      {
        ___CFBasicHashFindBucket_Exponential_Indirect(result, a2, &v5);
      }

      goto LABEL_23;
    }

    if (v3 == 1)
    {
      ___CFBasicHashFindBucket_Linear_Indirect(result, a2, &v5);
      goto LABEL_23;
    }
  }

  else
  {
    if ((*(result + 18) & 3u) > 1)
    {
      if (v3 == 2)
      {
        ___CFBasicHashFindBucket_Double(result, a2, &v5);
      }

      else
      {
        ___CFBasicHashFindBucket_Exponential(result, a2, &v5);
      }

      goto LABEL_23;
    }

    if (v3 == 1)
    {
      ___CFBasicHashFindBucket_Linear(result, a2, &v5);
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

CFIndex CFDictionaryGetCount(CFDictionaryRef theDict)
{
  if (CF_IS_OBJC(0x12uLL, theDict))
  {

    return [(__CFDictionary *)theDict count];
  }

  else
  {

    return CFBasicHashGetCount(theDict);
  }
}

uint64_t ___CFBasicHashFindBucket_Linear_NoCollision(uint64_t a1, unint64_t a2)
{
  v3 = __CFBasicHashTableSizes[*(a1 + 26)];
  v4 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 49) & 0x1FLL] + 8 * ((*(a1 + 32) >> 44) & 0x1FLL));
  if (v4)
  {
    a2 = v4(a2);
  }

  result = a2 % v3;
  v6 = 48;
  if ((*(a1 + 18) & 4) == 0)
  {
    v6 = 40;
  }

  v7 = *(a1 + v6);
  if (v3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v3;
  }

  while (*(v7 + 8 * result))
  {
    if (v3 <= result + 1)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0;
    }

    result = result + 1 - v9;
    if (!--v8)
    {
      return -1;
    }
  }

  return result;
}

CFTypeRef __CFTypeCollectionRetain(int a1, CFTypeRef cf)
{
  if (!cf)
  {
    __CFTypeCollectionRetain_cold_1();
  }

  return CFRetain(cf);
}

void __CFBasicHashDeallocate(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1 & 8) != 0)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 32) = v1 | 8;
    __CFBasicHashDrain(a1);
  }
}

void __CFTypeCollectionRelease(int a1, CFTypeRef cf)
{
  if (!cf)
  {
    __CFTypeCollectionRelease_cold_1();
  }

  CFRelease(cf);
}

void __CFBasicHashDrain(uint64_t a1)
{
  v2 = __CFBasicHashTableSizes[*(a1 + 26)];
  v3 = CFGetAllocator(a1);
  v4 = 0;
  v5 = a1 + 40;
  ptr = *(a1 + 40);
  *(a1 + 40) = 0;
  v6 = *(a1 + 18);
  if ((v6 & 4) != 0)
  {
    v4 = *(a1 + 48);
    *(a1 + 48) = 0;
  }

  if ((v6 & 0x18) != 0)
  {
    v7 = v6 & 0x18;
    v23 = *(v5 + v7);
    *(v5 + v7) = 0;
  }

  else
  {
    v23 = 0;
  }

  ++*(a1 + 16);
  v8 = *(a1 + 24);
  *(a1 + 20) = 0;
  *(a1 + 24) = v8 & 0xFFFFFFFFFF000000;
  if (v2 >= 1)
  {
    v9 = ptr;
    v10 = v4;
    do
    {
      v12 = *v9++;
      v11 = v12;
      if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        if (v11 == 2814029233)
        {
          v11 = 0;
        }

        if (v11 == 2780474809)
        {
          v13 = -1;
        }

        else
        {
          v13 = v11;
        }

        v14 = *(*(CFBasicHashCallBackPtrs + (HIBYTE(*(a1 + 24)) & 0xF8)) + 8 * ((*(a1 + 24) >> 54) & 0x1FLL));
        if (v14 && (*(a1 + 32) & 2) == 0)
        {
          v15 = &kCFAllocatorSystemDefault;
          if ((a1 & 0x8000000000000000) == 0)
          {
            v16 = atomic_load((a1 + 8));
            v17 = (v16 & 0x80) == 0;
            v15 = (a1 - 16);
            if (!v17)
            {
              v15 = &kCFAllocatorSystemDefault;
            }
          }

          v14(*v15, v13);
        }

        if (v4)
        {
          v18 = *v10;
          if (*v10 == 2814029233)
          {
            v18 = 0;
          }

          if (v18 == 2780474809)
          {
            v19 = -1;
          }

          else
          {
            v19 = v18;
          }

          v20 = *(CFBasicHashCallBackPtrs[(*(a1 + 24) >> 49) & 0x1FLL] + 8 * ((*(a1 + 24) >> 44) & 0x1FLL));
          if (v20 && (*(a1 + 32) & 2) == 0)
          {
            v21 = &kCFAllocatorSystemDefault;
            if ((a1 & 0x8000000000000000) == 0)
            {
              v22 = atomic_load((a1 + 8));
              v17 = (v22 & 0x80) == 0;
              v21 = (a1 - 16);
              if (!v17)
              {
                v21 = &kCFAllocatorSystemDefault;
              }
            }

            v20(*v21, v19);
          }
        }
      }

      ++v10;
      --v2;
    }

    while (v2);
  }

  CFAllocatorDeallocate(v3, ptr);
  CFAllocatorDeallocate(v3, v4);
  CFAllocatorDeallocate(v3, v23);

  CFAllocatorDeallocate(v3, 0);
}

unint64_t *__CFDataInit(__objc2_class **a1, char a2, unint64_t a3, const UInt8 *a4, CFIndex a5, const void *a6)
{
  v6 = a6;
  v11 = a1;
  v12 = 0;
  if ((a2 & 2) == 0 && !a6)
  {
    v12 = 4 * *MEMORY[0x1E69E9AC8] - 63 > a3;
  }

  if (!a1)
  {
    v13 = _CFGetTSD(1u);
    if (v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = &__kCFAllocatorSystemDefault;
    }
  }

  ShouldUseAllocator = __CFDataShouldUseAllocator(v11);
  if (v12)
  {
    v19 = a3 + 47;
  }

  else
  {
    v19 = 32;
  }

  Instance = _CFRuntimeCreateInstance(v11, 0x14uLL, v19, 0, v14, v15, v16, v17);
  v21 = Instance;
  if (!Instance)
  {
    return v21;
  }

  Instance[2] = 0;
  v22 = atomic_load(Instance + 1);
  v23 = 4;
  if (!v12)
  {
    v23 = 0;
  }

  v24 = v22;
  do
  {
    atomic_compare_exchange_strong(Instance + 1, &v24, v22 & 0xFFFFFFFFFFFFFFFBLL | v23);
    v25 = v24 == v22;
    v22 = v24;
  }

  while (!v25);
  v26 = atomic_load(Instance + 1);
  v27 = v26;
  do
  {
    atomic_compare_exchange_strong(Instance + 1, &v27, v26 & 0xFFFFFFFFFFFFFFF7 | (8 * (ShouldUseAllocator & 0x1F)));
    v25 = v27 == v26;
    v26 = v27;
  }

  while (!v25);
  if ((a2 & 1) != 0 && (a2 & 2) != 0)
  {
    Instance[3] = 16;
    v28 = atomic_load(Instance + 1);
    v29 = v28;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v29, v28 | 3);
      v25 = v29 == v28;
      v28 = v29;
    }

    while (!v25);
  }

  else
  {
    Instance[3] = a3;
    v30 = atomic_load(Instance + 1);
    v31 = v30;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v31, v30 & 0xFFFFFFFFFFFFFFFCLL | 1);
      v25 = v31 == v30;
      v30 = v31;
    }

    while (!v25);
  }

  if (v6)
  {
    Instance[5] = a4;
    Instance[4] = CFRetain(v6);
    v21[2] = a5;
    if (a2)
    {
      return v21;
    }

    goto LABEL_63;
  }

  if ((a2 & 1) != 0 && (a2 & 2) == 0)
  {
    LODWORD(v6) = _CFExecutableLinkedOnOrAfter(6uLL) == 0;
  }

  if (v12)
  {
    LODWORD(v6) = 1;
    if ((a2 & 1) != 0 || a5)
    {
      goto LABEL_59;
    }

    v21[5] = 0;
    v32 = atomic_load(v21 + 1);
    v33 = v32;
    do
    {
      atomic_compare_exchange_strong(v21 + 1, &v33, v32 & 0xFFFFFFFFFFFFFFFBLL);
      v25 = v33 == v32;
      v32 = v33;
    }

    while (!v25);
    if (__CFDataInit_didCheck)
    {
      goto LABEL_54;
    }

    v34 = _CFProcessPath();
    if (v34)
    {
      v35 = strrchr(v34, 47);
      if (!v35)
      {
LABEL_53:
        __CFDataInit_didCheck = 1;
LABEL_54:
        if (__CFDataInit_setToNull == 1)
        {
          v21[5] = (v21 + 63) & 0xFFFFFFFFFFFFFFF0;
          v37 = atomic_load(v21 + 1);
          v38 = v37;
          do
          {
            atomic_compare_exchange_strong(v21 + 1, &v38, v37 | 4);
            v25 = v38 == v37;
            v37 = v38;
          }

          while (!v25);
        }

        LODWORD(v6) = 1;
        goto LABEL_59;
      }
    }

    else
    {
      v35 = "";
    }

    if (!strcmp(v35, "/Remote") && _CFAppVersionCheckLessThan(@"com.apple.Remote", -1, 2.1))
    {
      __CFDataInit_setToNull = 1;
    }

    goto LABEL_53;
  }

  v36 = __CFDataAllocate(v21, v21[3], v6);
  v21[5] = v36;
  if (__CFOASafe == 1)
  {
    __CFSetLastAllocationEventName();
    v36 = v21[5];
  }

  if (!v36)
  {
    CFRelease(v21);
    return 0;
  }

LABEL_59:
  v39 = atomic_load(v21 + 1);
  v40 = v39;
  do
  {
    atomic_compare_exchange_strong(v21 + 1, &v40, v39 & 0xFFFFFFFFFFFFFFBFLL | (v6 << 6) ^ 0x40u);
    v25 = v40 == v39;
    v39 = v40;
  }

  while (!v25);
  v21[4] = 0;
  v44.location = 0;
  v44.length = 0;
  CFDataReplaceBytes(v21, v44, a4, a5);
  if ((a2 & 1) == 0)
  {
LABEL_63:
    v41 = atomic_load(v21 + 1);
    v42 = v41;
    do
    {
      atomic_compare_exchange_strong(v21 + 1, &v42, v41 & 0xFFFFFFFFFFFFFFFCLL);
      v25 = v42 == v41;
      v41 = v42;
    }

    while (!v25);
  }

  return v21;
}

uint64_t __CFSetCreateGeneric(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 32);
    v5 = *(a2 + 24);
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v5 = 0;
    v4 = 0uLL;
  }

  v9 = v4;
  v11 = v5;
  v12 = v5;
  v8[0] = v2;
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = v3;
  v8[4] = v4;
  v10 = 0;
  result = CFBasicHashCreate(a1, 0x2000u, v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef CFDictionaryCreate(CFAllocatorRef allocator, const void **keys, const void **values, CFIndex numValues, const CFDictionaryKeyCallBacks *keyCallBacks, const CFDictionaryValueCallBacks *valueCallBacks)
{
  v8 = numValues;
  v9 = values;
  v10 = keys;
  v12 = __NSCFDictionaryCreate(allocator, keys, values, numValues, keyCallBacks, valueCallBacks);
  if (!v12)
  {
    Generic = __CFDictionaryCreateGeneric(allocator, keyCallBacks, valueCallBacks);
    v12 = Generic;
    if (Generic)
    {
      if (v8 >= 1)
      {
        CFBasicHashSetCapacity(Generic, v8);
        do
        {
          v16 = *v10++;
          v15 = v16;
          v17 = *v9++;
          CFBasicHashAddValue(v12, v15, v17);
          --v8;
        }

        while (v8);
      }

      v18 = atomic_load(v12 + 1);
      v19 = v18;
      do
      {
        atomic_compare_exchange_strong(v12 + 1, &v19, v18 | 0x40);
        v20 = v19 == v18;
        v18 = v19;
      }

      while (!v20);
      _CFRuntimeSetInstanceTypeIDAndIsa(v12, 0x12uLL);
      if (__CFOASafe)
      {
        __CFSetLastAllocationEventName();
      }
    }
  }

  return v12;
}

void CFSetAddValue(CFMutableSetRef theSet, const void *value)
{
  if (CF_IS_OBJC(0x11uLL, theSet))
  {

    [(__CFSet *)theSet addObject:value];
  }

  else
  {
    v10 = atomic_load(theSet + 1);
    if ((v10 & 0x40) != 0)
    {
      CFLog(3, @"%s(): immutable collection %p given to mutating function", v4, v5, v6, v7, v8, v9, "void CFSetAddValue(CFMutableSetRef, const void *)");
    }

    CFBasicHashAddValue(theSet, value, value);
  }
}

void __CFBasicHashRemoveValue(uint64_t cf, uint64_t a2)
{
  v5 = (cf + 40);
  v4 = *(cf + 40);
  ++*(cf + 16);
  v6 = *(v4 + 8 * a2);
  *(v4 + 8 * a2) = -1;
  if ((v6 + 1) >= 2)
  {
    if (v6 == 2814029233)
    {
      v6 = 0;
    }

    if (v6 == 2780474809)
    {
      v7 = -1;
    }

    else
    {
      v7 = v6;
    }

    v8 = *(*(CFBasicHashCallBackPtrs + (HIBYTE(*(cf + 24)) & 0xF8)) + 8 * ((*(cf + 24) >> 54) & 0x1FLL));
    if (v8 && (*(cf + 32) & 2) == 0)
    {
      if (cf < 0)
      {
        v9 = &kCFAllocatorSystemDefault;
      }

      else
      {
        v10 = atomic_load((cf + 8));
        if (v10 < 0)
        {
          v9 = &kCFAllocatorSystemDefault;
        }

        else
        {
          v9 = (cf - 16);
        }
      }

      v8(*v9, v7);
    }
  }

  if ((*(cf + 18) & 4) != 0)
  {
    v11 = *(cf + 48);
    v12 = *(v11 + 8 * a2);
    *(v11 + 8 * a2) = -1;
    if ((v12 + 1) >= 2)
    {
      if (v12 == 2814029233)
      {
        v12 = 0;
      }

      if (v12 == 2780474809)
      {
        v13 = -1;
      }

      else
      {
        v13 = v12;
      }

      v14 = *(CFBasicHashCallBackPtrs[(*(cf + 24) >> 49) & 0x1FLL] + 8 * ((*(cf + 24) >> 44) & 0x1FLL));
      if (v14 && (*(cf + 32) & 2) == 0)
      {
        if (cf < 0)
        {
          v15 = &kCFAllocatorSystemDefault;
        }

        else
        {
          v16 = atomic_load((cf + 8));
          if (v16 < 0)
          {
            v15 = &kCFAllocatorSystemDefault;
          }

          else
          {
            v15 = (cf - 16);
          }
        }

        v14(*v15, v13);
      }
    }
  }

  v17 = *(cf + 18);
  if ((v17 & 0x18) != 0)
  {
    v18 = *&v5[v17 & 0x18];
    v19 = (v17 >> 5) & 3;
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        --*(v18 + 4 * a2);
      }

      else
      {
        --*(v18 + 8 * a2);
      }
    }

    else if (v19)
    {
      --*(v18 + 2 * a2);
    }

    else
    {
      --*(v18 + a2);
    }
  }

  v20 = *(cf + 20) - 1;
  *(cf + 20) = v20;
  v21 = *(cf + 24);
  *(cf + 24) = v21 + 1;
  if ((*(cf + 32) & 4) != 0)
  {
    if (BYTE2(v21) < 6u)
    {
      goto LABEL_45;
    }

    v22 = BYTE2(v21) - 5;
  }

  else
  {
    if (BYTE2(v21) < 3u)
    {
      goto LABEL_45;
    }

    v22 = BYTE2(v21) - 2;
  }

  if (__CFBasicHashTableCapacities[v22] > v20)
  {
    v23 = -1;
LABEL_53:

    __CFBasicHashRehash(cf, v23);
    return;
  }

LABEL_45:
  v24 = (v21 + 1);
  if (v21 == 0xFFFF || ((v25 = __CFBasicHashTableSizes[BYTE2(v21)], v25 >= 20) ? (v26 = v25 >> 2 > v24) : (v26 = 1), !v26))
  {
    v23 = 0;
    goto LABEL_53;
  }
}

CFPropertyListRef CFPropertyListCreateDeepCopy(CFAllocatorRef allocator, CFPropertyListRef propertyList, CFOptionFlags mutabilityOption)
{
  v37 = *MEMORY[0x1E69E9840];
  valuePtr[0] = 1;
  v35 = 0u;
  v36 = 0;
  valuePtr[1] = 200;
  if (!__CFPropertyListIsValidAux(propertyList, valuePtr))
  {
    goto LABEL_49;
  }

  if ((propertyList & 0x8000000000000000) != 0 && mutabilityOption != 2)
  {
    goto LABEL_4;
  }

  v7 = CFGetTypeID(propertyList);
  v6 = 0;
  if (v7 > 19)
  {
    if (v7 > 21)
    {
      if (v7 == 22)
      {
        Type2 = _CFNumberGetType2(propertyList);
        CFNumberGetValue(propertyList, Type2, valuePtr);
        MutableCopy = CFNumberCreate(allocator, Type2, valuePtr);
      }

      else
      {
        if (v7 != 42)
        {
          goto LABEL_52;
        }

        AbsoluteTime = CFDateGetAbsoluteTime(propertyList);
        MutableCopy = CFDateCreate(allocator, AbsoluteTime);
      }
    }

    else
    {
      if (v7 != 20)
      {
        CFRetain(propertyList);
LABEL_4:
        v6 = propertyList;
        goto LABEL_52;
      }

      if (mutabilityOption == 2)
      {
        MutableCopy = CFDataCreateMutableCopy(allocator, 0, propertyList);
      }

      else
      {
        MutableCopy = CFDataCreateCopy(allocator, propertyList);
      }
    }

LABEL_51:
    v6 = MutableCopy;
    goto LABEL_52;
  }

  switch(v7)
  {
    case 7:
      if (mutabilityOption == 2)
      {
        MutableCopy = CFStringCreateMutableCopy(allocator, 0, propertyList);
      }

      else
      {
        MutableCopy = CFStringCreateCopy(allocator, propertyList);
      }

      goto LABEL_51;
    case 18:
      Count = CFDictionaryGetCount(propertyList);
      if (!Count)
      {
        if (mutabilityOption)
        {
          MutableCopy = CFDictionaryCreateMutable(allocator, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        else
        {
          MutableCopy = CFDictionaryCreate(allocator, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        goto LABEL_51;
      }

      v18 = Count;
      if (((Count >> 59) & 0xF) != 0)
      {
        CFPropertyListCreateDeepCopy_cold_2();
      }

      v19 = 2 * Count;
      MEMORY[0x1EEE9AC00](Count, v17);
      Typed = valuePtr - v21;
      if (v20 >= 0x200)
      {
        v23 = 512;
      }

      else
      {
        v23 = v20;
      }

      bzero(valuePtr - v21, v23);
      if (v19 > 0x100)
      {
        Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 16 * v18, 0xC0040B8AA526DLL, 0);
        if (!Typed)
        {
          CFPropertyListCreateDeepCopy_cold_1();
        }
      }

      else
      {
        bzero(Typed, 16 * v18);
      }

      v24 = &Typed[8 * v18];
      CFDictionaryGetKeysAndValues(propertyList, Typed, v24);
      if (v18 >= 1)
      {
        v25 = 0;
        while (1)
        {
          Copy = CFStringCreateCopy(allocator, *&Typed[8 * v25]);
          if (!Copy)
          {
            break;
          }

          *&Typed[8 * v25] = Copy;
          DeepCopy = CFPropertyListCreateDeepCopy(allocator, v24[v25], mutabilityOption);
          if (!DeepCopy)
          {
            CFRelease(*&Typed[8 * v25]);
            break;
          }

          v24[v25++] = DeepCopy;
          if (v18 == v25)
          {
            goto LABEL_55;
          }
        }

        if (v18 == v25)
        {
LABEL_55:
          if (mutabilityOption)
          {
            Mutable = CFDictionaryCreateMutable(allocator, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          }

          else
          {
            Mutable = CFDictionaryCreate(allocator, Typed, &Typed[8 * v18], v18, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          }

          v6 = Mutable;
          v32 = Typed;
          v33 = v18;
          do
          {
            if (mutabilityOption)
            {
              CFDictionarySetValue(v6, *v32, v32[v18]);
            }

            CFRelease(*v32);
            CFRelease(v32[v18]);
            ++v32;
            --v33;
          }

          while (v33);
          goto LABEL_66;
        }

        if (v25)
        {
          for (i = 0; i != v25; ++i)
          {
            CFRelease(*&Typed[8 * i]);
            CFRelease(v24[i]);
          }
        }
      }

      v6 = 0;
LABEL_66:
      if (v19 >= 0x101)
      {
        CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
      }

      break;
    case 19:
      if (!mutabilityOption)
      {
        MutableCopy = _arrayDeepImmutableCopy(allocator, propertyList);
        goto LABEL_51;
      }

      v8 = CFArrayGetCount(propertyList);
      v6 = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
      if (v6)
      {
        if (v8 < 1)
        {
          v9 = 0;
        }

        else
        {
          v9 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(propertyList, v9);
            v11 = CFPropertyListCreateDeepCopy(allocator, ValueAtIndex, mutabilityOption);
            if (!v11)
            {
              break;
            }

            v12 = v11;
            CFArrayAppendValue(v6, v11);
            CFRelease(v12);
            if (v8 == ++v9)
            {
              goto LABEL_52;
            }
          }
        }

        if (v9 != v8)
        {
          CFRelease(v6);
LABEL_49:
          v6 = 0;
        }
      }

      break;
    default:
      break;
  }

LABEL_52:
  v28 = *MEMORY[0x1E69E9840];
  return v6;
}

void CFDictionaryGetKeysAndValues(CFDictionaryRef theDict, const void **keys, const void **values)
{
  if (CF_IS_OBJC(0x12uLL, theDict))
  {

    [(__CFDictionary *)theDict getObjects:values andKeys:keys];
  }

  else
  {
    Count = CFDictionaryGetCount(theDict);

    CFBasicHashGetElements(theDict, Count, values, keys);
  }
}

CFMutableSetRef CFSetCreateMutable(CFAllocatorRef allocator, CFIndex capacity, const CFSetCallBacks *callBacks)
{
  Generic = __CFSetCreateGeneric(allocator, callBacks);
  v4 = Generic;
  if (Generic)
  {
    _CFRuntimeSetInstanceTypeIDAndIsa(Generic, 0x11uLL);
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  return v4;
}

__objc2_class **__NSCFDictionaryCreate(__objc2_class **a1, unint64_t *a2, unint64_t *a3, unint64_t a4, const CFDictionaryKeyCallBacks *a5, const CFDictionaryValueCallBacks *a6)
{
  if (__FoundationPresent_static_init_0 != -1)
  {
    __NSCFDictionaryCreate_cold_1();
  }

  if (!__FoundationPresent_present_0 || &__kCFAllocatorSystemDefault != a1 && (a1 || &__kCFAllocatorSystemDefault != CFAllocatorGetDefault()))
  {
    return 0;
  }

  v12 = a5 == &kCFCopyStringDictionaryKeyCallBacks || a5 == &kCFTypeDictionaryKeyCallBacks;
  if (!v12 || a6 != &kCFTypeDictionaryValueCallBacks)
  {
    return 0;
  }

  if (a5 != &kCFCopyStringDictionaryKeyCallBacks)
  {
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = 0;
LABEL_17:

    return __NSDictionaryI_new(v15, v16, 0, v17, v18);
  }

  if (a4)
  {
    if (a4 != 1)
    {
      v15 = a2;
      v16 = a3;
      v17 = a4;
      v18 = 1;
      goto LABEL_17;
    }

    v19 = *a2;
    v20 = *a3;

    return __NSSingleEntryDictionaryI_new(v19, v20, 1);
  }

  else
  {

    return &__NSDictionary0__struct;
  }
}

unint64_t CFBasicHashRemoveValue(uint64_t a1, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((a1 + 8));
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_32;
  }

  v3 = 0;
  if (a2 == 2780474809 || a2 == 2814029233)
  {
    goto LABEL_4;
  }

  v11 = 0u;
  v12 = 0u;
  if (!*(a1 + 26))
  {
    v11 = xmmword_183447130;
    v12 = unk_183447140;
    goto LABEL_20;
  }

  v7 = *(a1 + 18) & 3;
  if ((*(a1 + 18) & 0x8000) == 0)
  {
    if ((*(a1 + 18) & 3u) > 1)
    {
      if (v7 == 2)
      {
        ___CFBasicHashFindBucket_Double(a1, a2, &v11);
      }

      else
      {
        ___CFBasicHashFindBucket_Exponential(a1, a2, &v11);
      }

      goto LABEL_20;
    }

    if (v7 == 1)
    {
      ___CFBasicHashFindBucket_Linear(a1, a2, &v11);
      goto LABEL_20;
    }

LABEL_32:
    __break(1u);
  }

  if ((*(a1 + 18) & 3u) <= 1)
  {
    if (v7 == 1)
    {
      ___CFBasicHashFindBucket_Linear_Indirect(a1, a2, &v11);
      goto LABEL_20;
    }

    goto LABEL_32;
  }

  if (v7 == 2)
  {
    ___CFBasicHashFindBucket_Double_Indirect(a1, a2, &v11);
  }

  else
  {
    ___CFBasicHashFindBucket_Exponential_Indirect(a1, a2, &v11);
  }

LABEL_20:
  v3 = *(&v12 + 1);
  if (*(&v12 + 1) < 2uLL)
  {
    if (*(&v12 + 1) == 1)
    {
      __CFBasicHashRemoveValue(a1, v11);
    }
  }

  else
  {
    ++*(a1 + 16);
    if (v3 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v8 = *(a1 + 18);
      if ((v8 & 0x18) != 0)
      {
        v9 = *(a1 + (v8 & 0x18) + 40);
        v10 = (v8 >> 5) & 3;
        if (v10 > 1)
        {
          if (v10 == 2)
          {
            --*(v9 + 4 * v11);
          }

          else
          {
            --*(v9 + 8 * v11);
          }
        }

        else if (v10)
        {
          --*(v9 + 2 * v11);
        }

        else
        {
          --*(v9 + v11);
        }
      }
    }
  }

LABEL_4:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

const void *__cdecl CFBagGetValue(CFBagRef theBag, const void *value)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0u;
  v5 = 0u;
  CFBasicHashFindBucket(theBag, value, &v4);
  if (*(&v5 + 1))
  {
    result = v5;
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFPropertyListIsValidAux(const void *a1, _BYTE *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    if (*(a2 + 3))
    {
      v8 = @"property lists cannot contain NULL";
      goto LABEL_11;
    }

LABEL_22:
    v5 = 0;
    goto LABEL_23;
  }

  v4 = CFGetTypeID(a1);
  v5 = 1;
  if (v4 != 7)
  {
    v6 = v4;
    if (v4 != 20 && (*(a2 + 1) == 1 || (v4 > 0x2A || ((1 << v4) & 0x40000600000) == 0) && _CFKeyedArchiverUIDGetTypeID() != v4))
    {
      v7 = *(a2 + 2);
      if (v7)
      {
        if (CFSetContainsValue(*(a2 + 2), a1))
        {
          if (*(a2 + 3))
          {
            v8 = @"property lists cannot contain recursive container references";
LABEL_11:
            v5 = 0;
            **(a2 + 3) = CFRetain(v8);
            goto LABEL_23;
          }

          goto LABEL_22;
        }
      }

      else
      {
        *(a2 + 2) = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, 0);
      }

      v9 = *(a2 + 1);
      if (v9 != 200)
      {
        v10 = *(a2 + 4);
        if (!v10)
        {
          *&callBacks.version = *&kCFTypeBagCallBacks.version;
          *&callBacks.release = *&kCFTypeBagCallBacks.release;
          callBacks.equal = 0;
          callBacks.hash = 0;
          *(a2 + 4) = CFBagCreateMutable(0, 0, &callBacks);
          v13 = 1;
LABEL_26:
          if (v6 == 18)
          {
            Count = CFDictionaryGetCount(a1);
            if (v9 != 200 && Count >= 1)
            {
              CFBagAddValue(*(a2 + 4), a1);
            }

            CFSetAddValue(*(a2 + 2), a1);
            CFDictionaryApplyFunction(a1, __CFPropertyListIsDictPlistAux, a2);
          }

          else
          {
            if (v6 != 19)
            {
              if (*(a2 + 3))
              {
                v17 = CFCopyTypeIDDescription(v6);
                **(a2 + 3) = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"property lists cannot contain objects of type '%@'", v17);
                CFRelease(v17);
              }

              v5 = 0;
              if (v7)
              {
                goto LABEL_38;
              }

LABEL_37:
              CFRelease(*(a2 + 2));
              *(a2 + 2) = 0;
LABEL_38:
              if (v13)
              {
                CFRelease(*(a2 + 4));
                *(a2 + 4) = 0;
              }

              goto LABEL_23;
            }

            v14 = CFArrayGetCount(a1);
            v15 = v14;
            if (v9 != 200 && v14 >= 1)
            {
              CFBagAddValue(*(a2 + 4), a1);
            }

            CFSetAddValue(*(a2 + 2), a1);
            v20.location = 0;
            v20.length = v15;
            CFArrayApplyFunction(a1, v20, __CFPropertyListIsArrayPlistAux, a2);
          }

          CFSetRemoveValue(*(a2 + 2), a1);
          v5 = *a2;
          if (v7)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        if (CFBagGetCountOfValue(v10, a1) >= 0x181)
        {
          if (*(a2 + 3))
          {
            v8 = @"Too many nested arrays or dictionaries please use kCFPropertyListBinaryFormat_v1_0 instead which supports references";
            goto LABEL_11;
          }

          goto LABEL_22;
        }
      }

      v13 = 0;
      goto LABEL_26;
    }
  }

LABEL_23:
  v11 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

void __CFArrayReleaseValues(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = atomic_load((a1 + 8));
  v9 = (v8 >> 2) & 3;
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = &kCFTypeArrayCallBacks;
    }

    else
    {
      v11 = atomic_load((a1 + 8));
      v12 = v11 & 3;
      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = (a1 + 48);
      }

      if (v12 == 2)
      {
        v10 = (a1 + 48);
      }

      else
      {
        v10 = v13;
      }
    }
  }

  else
  {
    v10 = &__kCFNullArrayCallBacks;
  }

  v14 = atomic_load((a1 + 8));
  v15 = v14 & 3;
  if (v15 == 2)
  {
    v23 = *(a1 + 40);
    if (a3 >= 1 && v23)
    {
      v24 = atomic_load((a1 + 8));
      v25 = v24 & 3;
      if (v25 == 2)
      {
        v28 = *(a1 + 40) + 8 * **(a1 + 40) + 16;
      }

      else if (v25)
      {
        v28 = 0;
      }

      else
      {
        v26 = atomic_load((a1 + 8));
        v20 = (~v26 & 0xC) == 0;
        v27 = 48;
        if (v20)
        {
          v27 = 88;
        }

        v28 = a1 + v27;
      }

      v36 = (v28 + 8 * a2);
      if (v10->release)
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          v37 = &kCFAllocatorSystemDefault;
        }

        else
        {
          v38 = atomic_load((a1 + 8));
          if (v38 < 0)
          {
            v37 = &kCFAllocatorSystemDefault;
          }

          else
          {
            v37 = (a1 - 16);
          }
        }

        v39 = *v37;
        v40 = v36;
        v41 = a3;
        do
        {
          v42 = *v40++;
          (v10->release)(v39, v42);
          --v41;
        }

        while (v41);
      }

      bzero(v36, 8 * a3);
    }

    if (a4 && !a2 && *(a1 + 16) == a3)
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        v43 = &kCFAllocatorSystemDefault;
      }

      else
      {
        v44 = atomic_load((a1 + 8));
        if (v44 < 0)
        {
          v43 = &kCFAllocatorSystemDefault;
        }

        else
        {
          v43 = (a1 - 16);
        }
      }

      if (v23)
      {
        CFAllocatorDeallocate(*v43, v23);
      }

      *(a1 + 16) = 0;
      *(a1 + 40) = 0;
    }
  }

  else if (!v15 && v10->release && a3 >= 1)
  {
    v17 = atomic_load((a1 + 8));
    v18 = v17 & 3;
    if (v18 == 2)
    {
      v22 = *(a1 + 40) + 8 * **(a1 + 40) + 16;
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (!v18)
      {
        v19 = atomic_load((a1 + 8));
        v20 = (~v19 & 0xC) == 0;
        v21 = 48;
        if (v20)
        {
          v21 = 88;
        }

        v22 = a1 + v21;
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_34;
        }

LABEL_31:
        v29 = &kCFAllocatorSystemDefault;
LABEL_37:
        v31 = *v29;
        v32 = (v22 + 8 * a2);
        v33 = v32;
        v34 = a3;
        do
        {
          v35 = *v33++;
          (v10->release)(v31, v35);
          --v34;
        }

        while (v34);

        bzero(v32, 8 * a3);
        return;
      }

      v22 = 0;
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_34:
    v30 = atomic_load((a1 + 8));
    if (v30 < 0)
    {
      v29 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v29 = (a1 - 16);
    }

    goto LABEL_37;
  }
}

const UInt8 *__cdecl CFDataGetBytePtr(CFDataRef theData)
{
  if (CF_IS_OBJC(0x14uLL, theData))
  {

    return [(__CFData *)theData bytes];
  }

  else
  {
    v3 = atomic_load(theData + 1);
    if ((v3 & 4) != 0)
    {
      return ((theData + 63) & 0xFFFFFFFFFFFFFFF0);
    }

    else
    {
      return *(theData + 5);
    }
  }
}

void CFBasicHashSetValue(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = atomic_load((a1 + 8));
  if ((v3 & 0x40) != 0 || a2 == 2780474809 || a2 == 2814029233 || a3 == 2780474809 || a3 == 2814029233)
  {
    goto LABEL_28;
  }

  v11 = 0u;
  v12 = 0u;
  if (!*(a1 + 26))
  {
    v11 = xmmword_183447130;
    v12 = unk_183447140;
    goto LABEL_21;
  }

  v7 = *(a1 + 18) & 3;
  if ((*(a1 + 18) & 0x8000) == 0)
  {
    if ((*(a1 + 18) & 3u) > 1)
    {
      if (v7 == 2)
      {
        ___CFBasicHashFindBucket_Double(a1, a2, &v11);
      }

      else
      {
        ___CFBasicHashFindBucket_Exponential(a1, a2, &v11);
      }

      goto LABEL_21;
    }

    if (v7 == 1)
    {
      ___CFBasicHashFindBucket_Linear(a1, a2, &v11);
      goto LABEL_21;
    }

LABEL_28:
    __break(1u);
  }

  if ((*(a1 + 18) & 3u) <= 1)
  {
    if (v7 == 1)
    {
      ___CFBasicHashFindBucket_Linear_Indirect(a1, a2, &v11);
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  if (v7 == 2)
  {
    ___CFBasicHashFindBucket_Double_Indirect(a1, a2, &v11);
  }

  else
  {
    ___CFBasicHashFindBucket_Exponential_Indirect(a1, a2, &v11);
  }

LABEL_21:
  v8 = v11;
  if (*(&v12 + 1))
  {
    v9 = *MEMORY[0x1E69E9840];

    __CFBasicHashReplaceValue(a1, v8, a2, a3);
  }

  else
  {
    v10 = *MEMORY[0x1E69E9840];

    __CFBasicHashAddValue(a1, v8, a2, a3);
  }
}

Boolean CFStringHasPrefix(CFStringRef theString, CFStringRef prefix)
{
  v4.length = CFStringGetLength(theString);
  v4.location = 0;

  return CFStringFindWithOptionsAndLocale(theString, prefix, v4, 8uLL, 0, 0);
}

CFMutableDictionaryRef CFDictionaryCreateMutable(CFAllocatorRef allocator, CFIndex capacity, const CFDictionaryKeyCallBacks *keyCallBacks, const CFDictionaryValueCallBacks *valueCallBacks)
{
  Mutable = __NSCFDictionaryCreateMutable(allocator, capacity, keyCallBacks, valueCallBacks);
  if (!Mutable)
  {
    Generic = __CFDictionaryCreateGeneric(allocator, keyCallBacks, valueCallBacks);
    Mutable = Generic;
    if (Generic)
    {
      if (capacity >= 1)
      {
        if (capacity >= 0x3E8)
        {
          v11 = 1000;
        }

        else
        {
          v11 = capacity;
        }

        CFBasicHashSetCapacity(Generic, v11);
      }

      _CFRuntimeSetInstanceTypeIDAndIsa(Mutable, 0x12uLL);
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }
    }
  }

  return Mutable;
}

void CFDictionarySetValue(CFMutableDictionaryRef theDict, const void *key, const void *value)
{
  if (CF_IS_OBJC(0x12uLL, theDict))
  {

    [(__CFDictionary *)theDict __setObject:value forKey:key];
  }

  else
  {
    v6 = atomic_load(theDict + 1);
    if ((v6 & 0x40) != 0)
    {
      v11 = "void CFDictionarySetValue(CFMutableDictionaryRef, const void *, const void *)";
      v12 = theDict;
      CFLog(3, @"%s(): immutable collection %p given to mutating function");
    }

    v7 = atomic_load(theDict + 1);
    if (v7)
    {
      v8 = __CF_KVO_WillChangeSelector_hc;
      if (!__CF_KVO_WillChangeSelector_hc)
      {
        v8 = sel_registerName("willChangeValueForKey:");
        __CF_KVO_WillChangeSelector_hc = v8;
      }

      [theDict v8];
    }

    CFBasicHashSetValue(theDict, key, value);
    v9 = atomic_load(theDict + 1);
    if (v9)
    {
      v10 = __CF_KVO_DidChangeSelector_hc;
      if (!__CF_KVO_DidChangeSelector_hc)
      {
        v10 = sel_registerName("didChangeValueForKey:");
        __CF_KVO_DidChangeSelector_hc = v10;
      }

      [theDict v10];
    }
  }
}

CFArrayRef CFArrayCreate(CFAllocatorRef allocator, const void **values, CFIndex numValues, const CFArrayCallBacks *callBacks)
{
  if (callBacks != &kCFTypeArrayCallBacks || &__kCFAllocatorSystemDefault != allocator && (allocator || &__kCFAllocatorSystemDefault != CFAllocatorGetDefault()))
  {
    goto LABEL_2;
  }

  if (__FoundationPresent_static_init != -1)
  {
    CFArrayCreate_cold_1();
  }

  if (__FoundationPresent_present)
  {
    v13 = [NSArray alloc];

    return [(NSArray *)v13 initWithObjects:values count:numValues];
  }

  else
  {
LABEL_2:

    return __CFArrayCreate0(allocator, values, numValues, callBacks, v4, v5, v6, v7);
  }
}

void CFDataReplaceBytes(CFMutableDataRef theData, CFRange range, const UInt8 *newBytes, CFIndex newLength)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(0x14uLL, theData))
  {

    [(__CFData *)theData replaceBytesInRange:location withBytes:length length:newBytes, newLength];
    return;
  }

  v9 = *(theData + 2);
  v10 = *(theData + 3);
  if (location < 0)
  {
    if (dyld_program_sdk_at_least())
    {
      CFDataReplaceBytes_cold_2();
    }

    CFDataReplaceBytes_cold_1();
  }

  else
  {
    if (location <= v9)
    {
      if ((length & 0x8000000000000000) == 0)
      {
        if (location + length > v9)
        {
          if (dyld_program_sdk_at_least())
          {
            CFDataReplaceBytes_cold_6();
          }

          CFDataReplaceBytes_cold_5();
        }

        goto LABEL_9;
      }

      if (dyld_program_sdk_at_least())
      {
        CFDataReplaceBytes_cold_4();
      }

      CFDataReplaceBytes_cold_3();
LABEL_58:
      CFDataReplaceBytes_cold_12();
    }

    if (dyld_program_sdk_at_least())
    {
      CFDataReplaceBytes_cold_13();
    }

    CFDataReplaceBytes_cold_7();
  }

  if (length < 0)
  {
    goto LABEL_58;
  }

LABEL_9:
  if (newLength < 0)
  {
    CFDataReplaceBytes_cold_11();
  }

  v11 = v9 - length + newLength;
  if (v11 < 0)
  {
    CFDataReplaceBytes_cold_10();
  }

  if (!newBytes && newLength)
  {
    CFDataReplaceBytes_cold_9();
  }

  v12 = atomic_load(theData + 1);
  if ((v12 & 4) != 0)
  {
    v13 = (theData + 63) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v13 = *(theData + 5);
  }

  v14 = atomic_load(theData + 1);
  v15 = v14 & 3;
  if (v15 == 1)
  {
    v16 = newBytes;
    if (v11 > v10)
    {
      CFDataReplaceBytes_cold_8();
    }
  }

  else if (v15 == 3 && v10 < v11)
  {
    v16 = newBytes;
    if (newBytes)
    {
      v16 = newBytes;
      if (v13)
      {
        v16 = newBytes;
        if (v13 + v10 > newBytes)
        {
          v16 = newBytes;
          if (v13 < &newBytes[newLength])
          {
            v17 = malloc_type_malloc(newLength, 0x100004077774924uLL);
            if (!v17)
            {
              __CFDataHandleOutOfMemory(newLength);
            }

            v16 = v17;
            memmove(v17, newBytes, newLength);
          }
        }
      }
    }

    __CFDataGrow(theData, newLength - length, 0);
    v18 = atomic_load(theData + 1);
    if ((v18 & 4) != 0)
    {
      v13 = (theData + 63) & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v13 = *(theData + 5);
    }
  }

  else
  {
    v16 = newBytes;
  }

  if (newLength)
  {
    v19 = v16 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  if (length != newLength)
  {
    v21 = v9 - (location + length);
    if (v21 >= 1)
    {
      memmove((v13 + location + newLength), (v13 + location + length), v21);
    }
  }

  if (v20)
  {
    memmove((v13 + location), v16, newLength);
  }

  if (v16 != newBytes)
  {
    free(v16);
  }

  *(theData + 2) = v11;
}

CFIndex CFDataGetLength(CFDataRef theData)
{
  if (!CF_IS_OBJC(0x14uLL, theData))
  {
    return *(theData + 2);
  }

  return [(__CFData *)theData length];
}

uint64_t __CFDictionaryCreateGeneric(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 24);
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v6 = 0;
    v5 = 0uLL;
  }

  v13[1] = v3;
  v13[3] = v4;
  v14 = v5;
  v15 = 0;
  v17 = v6;
  if (a3)
  {
    v7 = a3[1];
    v8 = a3[2];
    v10 = a3[3];
    v9 = a3[4];
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  v13[0] = v7;
  v13[2] = v8;
  v13[4] = v9;
  v16 = v10;
  result = CFBasicHashCreate(a1, 0x2001u, v13);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

const void *__CFPropertyListIsDictPlistAux(const void *cf, uint64_t a2, uint64_t a3)
{
  if (*a3 == 1)
  {
    v5 = cf;
    if (!cf)
    {
      v9 = *(a3 + 24);
      if (v9)
      {
        if (!*v9)
        {
          **(a3 + 24) = CFRetain(@"property list dictionaries cannot contain NULL keys");
        }
      }
    }

    if (!a2)
    {
      v10 = *(a3 + 24);
      if (v10)
      {
        if (!*v10)
        {
          **(a3 + 24) = CFRetain(@"property list dictionaries cannot contain NULL values");
        }
      }
    }

    if (CFGetTypeID(v5) != 7)
    {
      v6 = *(a3 + 24);
      if (v6)
      {
        if (!*v6)
        {
          v7 = CFGetTypeID(v5);
          v8 = CFCopyTypeIDDescription(v7);
          **(a3 + 24) = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"property list dictionaries may only have keys which are CFStrings, not '%@'", v8);
          CFRelease(v8);
        }
      }
    }

    cf = 0;
    if (v5 && a2)
    {
      if (CFGetTypeID(v5) == 7)
      {
        cf = __CFPropertyListIsValidAux(a2, a3);
      }

      else
      {
        cf = 0;
      }
    }

    *a3 = cf;
  }

  return cf;
}

void CFSetRemoveValue(CFMutableSetRef theSet, const void *value)
{
  if (CF_IS_OBJC(0x11uLL, theSet))
  {

    [(__CFSet *)theSet removeObject:value];
  }

  else
  {
    v10 = atomic_load(theSet + 1);
    if ((v10 & 0x40) != 0)
    {
      CFLog(3, @"%s(): immutable collection %p given to mutating function", v4, v5, v6, v7, v8, v9, "void CFSetRemoveValue(CFMutableSetRef, const void *)");
    }

    CFBasicHashRemoveValue(theSet, value);
  }
}

BOOL __CFDataShouldUseAllocator(__objc2_class **a1)
{
  if (!a1)
  {
    a1 = _CFGetTSD(1u);
    if (!a1)
    {
      a1 = &__kCFAllocatorSystemDefault;
    }
  }

  return a1 != &__kCFAllocatorSystemDefault && a1 != &__kCFAllocatorMalloc && a1 != &__kCFAllocatorMallocZone;
}

void CFDictionaryApplyFunction(CFDictionaryRef theDict, CFDictionaryApplierFunction applier, void *context)
{
  v8[6] = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x12uLL, theDict))
  {
    v6 = *MEMORY[0x1E69E9840];

    [(__CFDictionary *)theDict __apply:applier context:context];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __CFDictionaryApplyFunction_block_invoke;
    v8[3] = &__block_descriptor_48_e15_C40__0___qQQQ_8l;
    v8[4] = applier;
    v8[5] = context;
    CFBasicHashApply(theDict, v8);
    v7 = *MEMORY[0x1E69E9840];
  }
}

uint64_t writeDataCreate(CFTypeRef cf, void *a2)
{
  Default = a2[2];
  v5 = &__kCFAllocatorNull;
  if (Default == &__kCFAllocatorNull)
  {
    v8 = CFGetAllocator(cf);
    result = CFAllocatorAllocateTyped(v8, 64, 0x10600405C4CBD68, 0);
    *result = result + 32;
    v9 = *(*a2 + 8);
    *(result + 32) = **a2;
    *(result + 40) = v9;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 8) = result + 32;
  }

  else
  {
    if (!Default)
    {
      Default = CFAllocatorGetDefault();
      a2[2] = Default;
    }

    CFRetain(Default);
    v6 = CFGetAllocator(cf);
    result = CFAllocatorAllocateTyped(v6, 1088, 0x10600405C4CBD68, 0);
    *(result + 32) = result + 64;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 40) = 1024;
    *result = result + 32;
    *(result + 8) = result + 32;
    v5 = a2[2];
  }

  *(result + 16) = v5;
  *(result + 24) = 0;
  return result;
}

uint64_t _CFStreamCreateWithConstantCallbacks(__objc2_class **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a3 != 1)
  {
    return 0;
  }

  v11 = _CFStreamCreate(a1, a4, a3, a4, a5, a6, a7, a8);
  v12 = v10;
  if (v10)
  {
    *(v10 + 16) |= 0x20uLL;
    *(v10 + 48) = a3;
    v13 = a3[1];
    if (v13)
    {
      a2 = v13(v10, a2, v11);
    }

    *(v12 + 40) = a2;
  }

  return v12;
}

CFIndex CFPropertyListWrite(CFPropertyListRef propertyList, CFWriteStreamRef stream, CFPropertyListFormat format, CFOptionFlags options, CFErrorRef *error)
{
  v33[5] = *MEMORY[0x1E69E9840];
  cf = 0;
  v33[0] = 1;
  v33[1] = format;
  v33[2] = 0;
  v33[3] = &cf;
  v33[4] = 0;
  if ((__CFPropertyListIsValidAux(propertyList, v33) & 1) == 0)
  {
    if (error)
    {
      *error = __CFPropertyListCreateError(3851, @"Property list invalid for format: %ld (%@)", format, cf);
    }

    v17 = cf;
    if (!cf)
    {
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  if (format == kCFPropertyListBinaryFormat_v1_0)
  {
    v25 = __CFBinaryPlistWrite(propertyList, stream, 0, options, error);
  }

  else
  {
    if (format != kCFPropertyListXMLFormat_v1_0)
    {
      if (format == kCFPropertyListOpenStepFormat)
      {
        v16 = @"Property list format kCFPropertyListOpenStepFormat not supported for writing";
      }

      else
      {
        v16 = @"Unknown format option";
      }

      goto LABEL_21;
    }

    XMLData = _CFPropertyListCreateXMLData(&__kCFAllocatorSystemDefault, propertyList, 1);
    if (!XMLData)
    {
      v16 = @"Property list format kCFPropertyListXMLFormat_v1_0 specified but was not a valid property list type";
LABEL_21:
      CFLog(3, v16, v10, v11, v12, v13, v14, v15, v31);
      goto LABEL_22;
    }

    v19 = XMLData;
    Length = CFDataGetLength(XMLData);
    BytePtr = CFDataGetBytePtr(v19);
    if (Length >= 1)
    {
      v22 = BytePtr;
      while (1)
      {
        v23 = CFWriteStreamWrite(stream, v22, Length);
        if (!v23)
        {
          break;
        }

        if (v23 < 0)
        {
          v28 = CFWriteStreamCopyError(stream);
          if (v28)
          {
            v29 = v28;
            if (error)
            {
              Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              CFDictionarySetValue(Mutable, @"NSDebugDescription", @"Property list writing could not be completed because the stream had an unknown error.");
              CFDictionarySetValue(Mutable, @"NSUnderlyingError", v29);
              *error = CFErrorCreate(&__kCFAllocatorSystemDefault, @"NSCocoaErrorDomain", 3851, Mutable);
              CFRelease(Mutable);
            }

            CFRelease(v29);
          }

          goto LABEL_30;
        }

        v22 += v23;
        v24 = Length <= v23;
        Length -= v23;
        if (v24)
        {
          goto LABEL_17;
        }
      }

      if (error)
      {
        *error = __CFPropertyListCreateError(3851, @"Property list writing could not be completed because stream is full.");
      }

LABEL_30:
      v17 = v19;
LABEL_9:
      CFRelease(v17);
LABEL_22:
      v25 = 0;
      goto LABEL_23;
    }

LABEL_17:
    v25 = CFDataGetLength(v19);
    CFRelease(v19);
  }

LABEL_23:
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

double _CFStreamCreate(__objc2_class **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = 38;
  }

  else
  {
    v8 = 39;
  }

  Instance = _CFRuntimeCreateInstance(a1, v8, 128, 0, a5, a6, a7, a8);
  if (Instance)
  {
    v11 = *(Instance + 16);
    if ((v11 & 0x1E) != 6)
    {
      *(Instance + 16) = v11 & 0xFFFFFFE0;
    }

    *(Instance + 56) = 850045857;
    result = 0.0;
    *(Instance + 64) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 112) = 0;
  }

  return result;
}

CFWriteStreamRef CFWriteStreamCreateWithAllocatedBuffers(CFAllocatorRef alloc, CFAllocatorRef bufferAllocator)
{
  v9 = *MEMORY[0x1E69E9840];
  v8[0] = 0u;
  v8[1] = bufferAllocator;
  result = _CFStreamCreateWithConstantCallbacks(alloc, v8, writeDataCallBacks, 0, v2, v3, v4, v5);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFStreamOpen(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (!_CFStreamGetStatus(a1))
  {
    v18 = 0;
    v4 = *(a1 + 16);
    if ((v4 & 0x1E) == 6)
    {
      v5 = v4 | 0x40;
    }

    else
    {
      v5 = (v4 & 0xFFFFFFA0 | 0x40) + 1;
    }

    *(a1 + 16) = v5;
    v6 = v2[4];
    if (v6)
    {
      if (*v2 > 1)
      {
        v3 = v6(a1, a1 + 24, &v18, *(a1 + 40));
      }

      else
      {
        v17 = 0uLL;
        v3 = v6(a1, &v17, &v18, *(a1 + 40));
        if (DWORD2(v17))
        {
          Typed = *(a1 + 24);
          if (!Typed)
          {
            v8 = CFGetAllocator(a1);
            Typed = CFAllocatorAllocateTyped(v8, 16, 0x1000040D9A13B51, 0);
            *(a1 + 24) = Typed;
          }

          *Typed = v17;
        }
      }

      if (!v18)
      {
        goto LABEL_33;
      }

      v5 = *(a1 + 16);
      if (!v3)
      {
        if ((*(a1 + 16) & 0x1FLL) != 7)
        {
          *(a1 + 16) = *(a1 + 16) & 0xFFFFFFE0 | 7;
        }

        v12 = *(a1 + 32);
        if (v12 && (*(v12 + 48) & 8) != 0)
        {
          pthread_mutex_lock((a1 + 56));
          v13 = *(a1 + 32);
          if (v13 && (v14 = *(v13 + 56)) != 0)
          {
            CFRetain(*(v13 + 56));
            pthread_mutex_unlock((a1 + 56));
            *(*(a1 + 32) + 72) |= 8uLL;
            CFRunLoopSourceSignal(v14);
            CFRelease(v14);
            _wakeUpRunLoop(a1);
          }

          else
          {
            pthread_mutex_unlock((a1 + 56));
          }
        }

        v3 = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v3 = 1;
      v18 = 1;
    }

    if ((v5 & 0x1F) == 1)
    {
      *(a1 + 16) = v5 & 0xFFFFFFE0 | 2;
    }

    v9 = *(a1 + 32);
    if (v9 && (*(v9 + 48) & 1) != 0)
    {
      pthread_mutex_lock((a1 + 56));
      v10 = *(a1 + 32);
      if (v10 && (v11 = *(v10 + 56)) != 0)
      {
        CFRetain(*(v10 + 56));
        pthread_mutex_unlock((a1 + 56));
        *(*(a1 + 32) + 72) |= 1uLL;
        CFRunLoopSourceSignal(v11);
        CFRelease(v11);
        _wakeUpRunLoop(a1);
      }

      else
      {
        pthread_mutex_unlock((a1 + 56));
      }
    }

LABEL_33:
    *(a1 + 16) &= ~0x40uLL;
    goto LABEL_34;
  }

  v3 = 0;
LABEL_34:
  v15 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t dataWrite(char *a1, char *__src, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Typed = *(a5 + 8);
  v11 = Typed[1] - Typed[2];
  if (*(a5 + 16) == &__kCFAllocatorNull && v11 < a3)
  {
LABEL_17:
    *(a4 + 8) = 12;
    *a4 = 1;
    return -1;
  }

  else
  {
    v14 = a3;
    if (a3 >= 1)
    {
      v16 = a3;
      while (1)
      {
        if (v11 >= 1)
        {
          if (v16 < v11)
          {
            v11 = v16;
          }

          memmove((*Typed + Typed[2]), __src, v11);
          v16 -= v11;
          Typed = *(a5 + 8);
          Typed[2] += v11;
          if (v16 < 1)
          {
            break;
          }

          __src += v11;
        }

        if (v16 <= 0x400)
        {
          v11 = 1024;
        }

        else
        {
          v11 = v16;
        }

        Typed = CFAllocatorAllocateTyped(*(a5 + 16), v11 + 32, 0x1030040A9292222, 0);
        if (!Typed)
        {
          goto LABEL_17;
        }

        *Typed = Typed + 4;
        Typed[1] = v11;
        Typed[2] = 0;
        Typed[3] = 0;
        *(*(a5 + 8) + 24) = Typed;
        *(a5 + 8) = Typed;
      }
    }

    *(a4 + 8) = 0;
    if (*(a5 + 24) && (*(a5 + 16) != &__kCFAllocatorNull || Typed[1] > Typed[2]))
    {
      CFWriteStreamSignalEvent(a1, 4uLL, 0, a4, a5, a6, a7, a8);
    }
  }

  return v14;
}

CFDataRef dataCopyProperty(int a1, CFTypeRef cf1, uint64_t *a3)
{
  if (!CFEqual(cf1, @"kCFStreamPropertyDataWritten"))
  {
    return 0;
  }

  v4 = a3[2];
  if (v4 == &__kCFAllocatorNull)
  {
    return 0;
  }

  v5 = *a3;
  if (*a3)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 16);
      v5 = *(v5 + 24);
      v6 += v7;
    }

    while (v5);
    if (v6 >= 1)
    {
      Typed = CFAllocatorAllocateTyped(a3[2], v6, 0x100004077774924, 0);
      if (Typed)
      {
        v9 = Typed;
        v10 = *a3;
        if (*a3)
        {
          v11 = Typed;
          do
          {
            memmove(v11, *v10, *(v10 + 16));
            v12 = *(v10 + 16);
            v10 = *(v10 + 24);
            v11 += v12;
          }

          while (v10);
        }

        goto LABEL_15;
      }

      return 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = 0;
LABEL_15:

  return CFDataCreateWithBytesNoCopy(v4, v9, v6, v4);
}

CFTypeRef CFWriteStreamCopyProperty(CFWriteStreamRef stream, CFStreamPropertyKey propertyName)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {
    v4 = [(__CFWriteStream *)stream propertyForKey:propertyName];

    return v4;
  }

  else
  {
    v6 = *(*(stream + 6) + 96);
    if (v6)
    {
      *(stream + 2) |= 0x40uLL;
      result = v6(stream, propertyName, *(stream + 5));
      *(stream + 2) &= ~0x40uLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CFWriteStreamClose(CFWriteStreamRef stream)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {

    [(__CFWriteStream *)stream close];
  }

  else
  {

    _CFStreamClose(stream);
  }
}

CFDataRef CFPropertyListCreateData(CFAllocatorRef allocator, CFPropertyListRef propertyList, CFPropertyListFormat format, CFOptionFlags options, CFErrorRef *error)
{
  v23 = *MEMORY[0x1E69E9840];
  if (format == kCFPropertyListBinaryFormat_v1_0)
  {
    v14 = CFWriteStreamCreateWithAllocatedBuffers(&__kCFAllocatorSystemDefault, allocator);
    CFWriteStreamOpen(v14);
    if (CFPropertyListWrite(propertyList, v14, kCFPropertyListBinaryFormat_v1_0, options, error) < 1)
    {
      XMLData = 0;
    }

    else
    {
      XMLData = CFWriteStreamCopyProperty(v14, @"kCFStreamPropertyDataWritten");
    }

    CFWriteStreamClose(v14);
    CFRelease(v14);
  }

  else
  {
    if (format != kCFPropertyListXMLFormat_v1_0)
    {
      if (format == kCFPropertyListOpenStepFormat)
      {
        v11 = @"Property list format kCFPropertyListOpenStepFormat not supported for writing";
      }

      else
      {
        v11 = @"Unknown format option";
      }

      CFLog(3, v11, format, options, error, v5, v6, v7, v17);
LABEL_11:
      XMLData = 0;
      goto LABEL_18;
    }

    cf = 0;
    v19 = xmmword_183309620;
    v20 = 0;
    p_cf = &cf;
    v22 = 0;
    if ((__CFPropertyListIsValidAux(propertyList, &v19) & 1) == 0)
    {
      if (error)
      {
        *error = __CFPropertyListCreateError(3851, @"Property list invalid for format: %ld (%@)", 100, cf);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_11;
    }

    XMLData = _CFPropertyListCreateXMLData(allocator, propertyList, 0);
  }

LABEL_18:
  v15 = *MEMORY[0x1E69E9840];
  return XMLData;
}

Boolean CFWriteStreamOpen(CFWriteStreamRef stream)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {
    [(__CFWriteStream *)stream open];
    return 1;
  }

  else
  {

    return _CFStreamOpen(stream);
  }
}

uint64_t writeDataOpen(char *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a4 + 24))
  {
    if (*(a4 + 16) == &__kCFAllocatorNull)
    {
      if (*(*(a4 + 8) + 8) <= *(*(a4 + 8) + 16))
      {
        v10 = 16;
      }

      else
      {
        v10 = 4;
      }
    }

    else
    {
      v10 = 4;
    }

    CFWriteStreamSignalEvent(a1, v10, 0, a4, a5, a6, a7, a8);
  }

  *(a2 + 8) = 0;
  *a3 = 1;
  return 1;
}

uint64_t _CFStreamGetStatus(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  result = v2 & 0x1F;
  *(a1 + 16) = v2 | 0x40;
  if (result != 1)
  {
    goto LABEL_39;
  }

  v4 = *(a1 + 48);
  v5 = v4[5];
  if (!v5)
  {
    goto LABEL_29;
  }

  if (*v4 <= 1)
  {
    v21 = 0uLL;
    v6 = v5(a1, &v21, *(a1 + 40));
    if (DWORD2(v21))
    {
      Typed = *(a1 + 24);
      if (!Typed)
      {
        v8 = CFGetAllocator(a1);
        Typed = CFAllocatorAllocateTyped(v8, 16, 0x1000040D9A13B51, 0);
        *(a1 + 24) = Typed;
      }

      *Typed = v21;
    }

    if (v6)
    {
      goto LABEL_9;
    }

LABEL_29:
    result = 1;
    goto LABEL_39;
  }

  if (!v5(a1, (a1 + 24), *(a1 + 40)))
  {
    goto LABEL_29;
  }

LABEL_9:
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v9)
  {
    v11 = (*(a1 + 16) & 0x1FLL) == 6;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if ((*(a1 + 16) & 0x1FuLL) - 8 < 0xFFFFFFFFFFFFFFFELL || v12 != 0)
  {
    v14 = 2;
    if (v9)
    {
      v14 = 7;
    }

    *(a1 + 16) = *(a1 + 16) & 0xFFFFFFE0 | v14;
  }

  v15 = *(a1 + 32);
  if (v9)
  {
    if (v15 && (*(v15 + 48) & 8) != 0)
    {
      pthread_mutex_lock((a1 + 56));
      v16 = *(a1 + 32);
      if (v16 && (v17 = *(v16 + 56)) != 0)
      {
        CFRetain(*(v16 + 56));
        pthread_mutex_unlock((a1 + 56));
        *(*(a1 + 32) + 72) |= 8uLL;
        CFRunLoopSourceSignal(v17);
        CFRelease(v17);
        _wakeUpRunLoop(a1);
      }

      else
      {
        pthread_mutex_unlock((a1 + 56));
      }
    }

    result = 7;
  }

  else
  {
    if (v15 && (*(v15 + 48) & 1) != 0)
    {
      pthread_mutex_lock((a1 + 56));
      v18 = *(a1 + 32);
      if (v18 && (v19 = *(v18 + 56)) != 0)
      {
        CFRetain(*(v18 + 56));
        pthread_mutex_unlock((a1 + 56));
        *(*(a1 + 32) + 72) |= 1uLL;
        CFRunLoopSourceSignal(v19);
        CFRelease(v19);
        _wakeUpRunLoop(a1);
      }

      else
      {
        pthread_mutex_unlock((a1 + 56));
      }
    }

    result = 2;
  }

LABEL_39:
  *(a1 + 16) &= ~0x40uLL;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void _CFStreamClose(uint64_t a1)
{
  Status = _CFStreamGetStatus(a1);
  if (Status && Status != 6)
  {
    v3 = *(a1 + 48);
    if (Status == 7)
    {
      v4 = *(a1 + 16);
      if ((v4 & 0x80) != 0)
      {
        return;
      }
    }

    else
    {
      v4 = *(a1 + 16);
      if ((v4 & 0x80) != 0)
      {
        return;
      }
    }

    *(a1 + 16) = v4 | 0xC0;
    v5 = *(v3 + 88);
    if (v5)
    {
      v5(a1, *(a1 + 40));
    }

    v6 = *(a1 + 32);
    if (v6 && *(v6 + 56))
    {
      if (*(a1 + 17))
      {
        os_unfair_lock_lock(&sSourceLock);
        Value = CFDictionaryGetValue(sSharedSources, a1);
        v10 = CFDictionaryGetValue(sSharedSources, Value);
        Count = CFArrayGetCount(v10);
        v20.location = 0;
        v20.length = Count;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v10, v20, a1);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(v10, FirstIndexOfValue);
          --Count;
        }

        if (!Count)
        {
          pthread_mutex_lock((a1 + 56));
          v13 = *(a1 + 32);
          if (v13 && (v14 = *(v13 + 56)) != 0)
          {
            CFRetain(*(v13 + 56));
            pthread_mutex_unlock((a1 + 56));
            ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
            v16 = CFArrayGetValueAtIndex(Value, 1);
            CFRunLoopRemoveSource(ValueAtIndex, v14, v16);
            CFRelease(v14);
          }

          else
          {
            pthread_mutex_unlock((a1 + 56));
          }

          CFDictionaryRemoveValue(sSharedSources, Value);
        }

        CFDictionaryRemoveValue(sSharedSources, a1);
        pthread_mutex_lock((a1 + 56));
        v17 = *(a1 + 32);
        if (v17 && (v18 = *(v17 + 56)) != 0)
        {
          CFRetain(*(v17 + 56));
          *(*(a1 + 32) + 56) = 0;
          pthread_mutex_unlock((a1 + 56));
          CFRelease(v18);
          if (!Count)
          {
            CFRunLoopSourceInvalidate(v18);
          }

          CFRelease(v18);
        }

        else
        {
          pthread_mutex_unlock((a1 + 56));
        }

        *(a1 + 16) &= ~0x100uLL;
        os_unfair_lock_unlock(&sSourceLock);
      }

      else
      {
        pthread_mutex_lock((a1 + 56));
        v7 = *(a1 + 32);
        if (v7 && (v8 = *(v7 + 56)) != 0)
        {
          CFRetain(*(v7 + 56));
          *(*(a1 + 32) + 56) = 0;
          pthread_mutex_unlock((a1 + 56));
          CFRelease(v8);
          CFRunLoopSourceInvalidate(v8);
          CFRelease(v8);
        }

        else
        {
          pthread_mutex_unlock((a1 + 56));
        }
      }
    }

    v19 = *(a1 + 16);
    if ((v19 & 0x1E) != 6)
    {
      v19 = v19 & 0xFFFFFFA0 | 6;
    }

    *(a1 + 16) = v19 & 0xFFFFFFFFFFFFFFBFLL;
  }
}

void writeBytes(uint64_t a1, const UInt8 *__src, int64_t __len, int a4)
{
  if (__len >= 1)
  {
    v19 = v7;
    v20 = v6;
    v21 = v5;
    v22 = v4;
    if (!*(a1 + 24))
    {
      v12 = __len;
      v13 = __src;
      v14 = *(a1 + 8);
      if (v14)
      {
        v15 = *(a1 + 32);
        if (__CFADD__(__len, v15) || *(a1 + 16) < (v15 + __len))
        {
          Error = __CFPropertyListCreateError(3851, @"Binary property list writing could not be completed because databytes is full.", v19, v20, v21, v22, v8, v9);
LABEL_7:
          *(a1 + 24) = Error;
          return;
        }

        if (!a4)
        {
          memmove((v14 + v15), __src, __len);
        }
      }

      if ((*(a1 + 44) & 1) == 0)
      {
        while (1)
        {
          v17 = v12;
          if (!a4)
          {
            v17 = v12;
            if (*a1)
            {
              v17 = CFWriteStreamWrite(*a1, v13, v12);
              if (!v17)
              {
                Error = __CFPropertyListCreateError(3851, @"Binary property list writing could not be completed because stream is full.", v19, v20, v21, v22, v8, v9);
                goto LABEL_7;
              }

              if (v17 < 0)
              {
                break;
              }
            }
          }

          *(a1 + 32) += v17;
          v13 += v17;
          v18 = v12 <= v17;
          v12 -= v17;
          if (v18)
          {
            return;
          }
        }

        if (!*a1 || (Error = CFWriteStreamCopyError(*a1)) == 0)
        {
          Error = __CFPropertyListCreateError(3851, @"Binary property list writing could not be completed because the stream had an unknown error.", v19, v20, v21, v22, v8, v9);
        }

        goto LABEL_7;
      }

      if (!a4)
      {
        if (*a1)
        {
          CFDataAppendBytes(*a1, v13, v12);
        }
      }

      *(a1 + 32) += v12;
    }
  }
}

void writeBytes_0(uint64_t a1, void *__src, uint64_t __len)
{
  if (__len >= 1)
  {
    v14 = v5;
    v15 = v4;
    v16 = v3;
    if (!*(a1 + 24))
    {
      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = *(a1 + 32);
        if (__CFADD__(__len, v13) || *(a1 + 16) < (v13 + __len))
        {
          *(a1 + 24) = __CFPropertyListCreateError(3851, @"Binary property list writing could not be completed because databytes is full.", v6, v14, v15, v16, v7, v8);
          return;
        }

        memmove((v12 + v13), __src, __len);
      }

      if (*a1)
      {
        CFDataAppendBytes(*a1, __src, __len);
      }

      *(a1 + 32) += __len;
    }
  }
}

CFIndex CFWriteStreamWrite(CFWriteStreamRef stream, const UInt8 *buffer, CFIndex bufferLength)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!CF_IS_OBJC(0x27uLL, stream))
  {
    Status = _CFStreamGetStatus(stream);
    v9 = *(stream + 6);
    if (Status == 1)
    {
      *(stream + 2) |= 0x40uLL;
      waitForOpen(stream);
      *(stream + 2) &= ~0x40uLL;
      Status = _CFStreamGetStatus(stream);
    }

    if (Status != 4 && Status != 2)
    {
      v12 = -1;
LABEL_42:
      v24 = *MEMORY[0x1E69E9840];
      return v12;
    }

    if ((*(stream + 2) & 0x1ELL) == 6)
    {
      v10 = *(stream + 2) | 0x40;
    }

    else
    {
      v10 = *(stream + 2) & 0xFFFFFFA0 | 0x44;
    }

    *(stream + 2) = v10;
    v11 = *(stream + 4);
    if (v11)
    {
      *(v11 + 72) &= ~4uLL;
    }

    if (*v9 > 1)
    {
      v12 = (*(v9 + 72))(stream, buffer, bufferLength, stream + 24, *(stream + 5));
    }

    else
    {
      v25 = 0uLL;
      v12 = (*(v9 + 72))(stream, buffer, bufferLength, &v25, *(stream + 5));
      if (DWORD2(v25))
      {
        Typed = *(stream + 3);
        if (!Typed)
        {
          v14 = CFGetAllocator(stream);
          Typed = CFAllocatorAllocateTyped(v14, 16, 0x1000040D9A13B51, 0);
          *(stream + 3) = Typed;
        }

        *Typed = v25;
      }
    }

    if (*(stream + 3))
    {
      v15 = *(stream + 2);
      if ((v15 & 0x1F) != 7)
      {
        *(stream + 2) = v15 & 0xFFFFFFE0 | 7;
      }

      v16 = *(stream + 4);
      if (!v16 || (*(v16 + 48) & 8) == 0)
      {
        goto LABEL_41;
      }

      pthread_mutex_lock((stream + 56));
      v17 = *(stream + 4);
      if (v17)
      {
        v18 = *(v17 + 56);
        if (v18)
        {
          CFRetain(*(v17 + 56));
          pthread_mutex_unlock((stream + 56));
          v19 = *(stream + 4);
          v20 = *(v19 + 72) | 8;
LABEL_28:
          *(v19 + 72) = v20;
          CFRunLoopSourceSignal(v18);
          CFRelease(v18);
          _wakeUpRunLoop(stream);
LABEL_41:
          *(stream + 2) &= ~0x40uLL;
          goto LABEL_42;
        }
      }
    }

    else
    {
      v21 = *(stream + 2);
      if (v12)
      {
        if ((*(stream + 2) & 0x1ELL) != 6)
        {
          *(stream + 2) = *(stream + 2) & 0xFFFFFFE0 | 2;
        }

        goto LABEL_41;
      }

      if ((*(stream + 2) & 0x1ELL) != 6)
      {
        *(stream + 2) = *(stream + 2) & 0xFFFFFFE0 | 5;
      }

      v22 = *(stream + 4);
      if (!v22 || (*(v22 + 48) & 0x10) == 0)
      {
        goto LABEL_41;
      }

      pthread_mutex_lock((stream + 56));
      v23 = *(stream + 4);
      if (v23)
      {
        v18 = *(v23 + 56);
        if (v18)
        {
          CFRetain(*(v23 + 56));
          pthread_mutex_unlock((stream + 56));
          v19 = *(stream + 4);
          v20 = *(v19 + 72) | 0x10;
          goto LABEL_28;
        }
      }
    }

    pthread_mutex_unlock((stream + 56));
    goto LABEL_41;
  }

  v6 = *MEMORY[0x1E69E9840];

  return [(__CFWriteStream *)stream write:buffer maxLength:bufferLength];
}

void __CFStreamDeallocate(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = CFGetAllocator(a1);
  _CFStreamClose(a1);
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4[1])
    {
      v5 = v4[3];
      if (v5)
      {
        v5();
        v4 = *(a1 + 32);
      }
    }

    v6 = v4[8];
    if (v6)
    {
      CFRelease(v6);
      v4 = *(a1 + 32);
    }

    CFAllocatorDeallocate(v3, v4);
    *(a1 + 32) = 0;
  }

  if (v2)
  {
    v7 = v2[2];
    if (v7)
    {
      if (*v2)
      {
        (v7)(a1, *(a1 + 40));
      }

      else
      {
        v7(*(a1 + 40));
      }
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      if (*v2 <= 1)
      {
        CFAllocatorDeallocate(v3, v8);
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v8 = *(a1 + 24);
    if (v8)
    {
LABEL_18:
      CFRelease(v8);
    }
  }

LABEL_19:
  if ((*(a1 + 16) & 0x20) == 0)
  {
    CFAllocatorDeallocate(v3, *(a1 + 48));
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 120) = 0;
  }

  v10 = *(a1 + 128);
  if (v10)
  {
    dispatch_release(v10);
    *(a1 + 128) = 0;
  }
}

void writeDataFinalize(CFTypeRef cf, CFAllocatorRef *a2)
{
  v4 = a2[2];
  if (v4 != &__kCFAllocatorNull)
  {
    v5 = *(*a2 + 3);
    if (v5)
    {
      do
      {
        v6 = v5[3];
        CFAllocatorDeallocate(a2[2], v5);
        v5 = v6;
      }

      while (v6);
      v4 = a2[2];
    }

    CFRelease(v4);
  }

  v7 = CFGetAllocator(cf);

  CFAllocatorDeallocate(v7, a2);
}

CFNumberType CFNumberGetType(CFNumberRef number)
{
  if ((number & 0x8000000000000000) != 0)
  {
    v2 = 0;
    v3 = *MEMORY[0x1E69E5910];
    if ((~number & 0xC000000000000007) == 0)
    {
      v3 = 0;
    }

    v4 = v3 ^ number;
    v5 = (v3 ^ number) & 7;
    v6 = MEMORY[0x1E69E5900];
    while (v5 != *(MEMORY[0x1E69E5900] + v2))
    {
      if (++v2 == 7)
      {
        goto LABEL_15;
      }
    }

    if (v2 == 3)
    {
      v7 = 0;
      while (v5 != *(MEMORY[0x1E69E5900] + v7))
      {
        if (++v7 == 7)
        {
          goto LABEL_30;
        }
      }

      if (v7 == 3)
      {
        v11 = v4 >> 3;
        return __CFNumberCanonicalTypes[v11 & 7];
      }

LABEL_30:
      LOBYTE(v11) = atomic_load(number + 1);
      return __CFNumberCanonicalTypes[v11 & 7];
    }

LABEL_15:
    if (CF_IS_OBJC(0x16uLL, number))
    {
      goto LABEL_16;
    }

    v9 = 0;
    while (v5 != *(v6 + v9))
    {
      if (++v9 == 7)
      {
        goto LABEL_23;
      }
    }

    if (v9 == 3)
    {
      v10 = v4 >> 3;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (!CF_IS_OBJC(0x16uLL, number))
  {
LABEL_23:
    LOBYTE(v10) = atomic_load(number + 1);
LABEL_24:
    result = __CFNumberCanonicalTypes[v10 & 7];
    goto LABEL_25;
  }

LABEL_16:
  result = [(__CFNumber *)number _cfNumberType];
LABEL_25:
  if (result == (kCFNumberMaxType|kCFNumberSInt8Type))
  {
    return 4;
  }

  return result;
}

uint64_t __CFBinaryPlistWriteOrPresize(const void *a1, const void *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  __src = 0u;
  v43 = 0u;
  memset(v41, 0, sizeof(v41));
  v10 = CFBasicHashCreate(&__kCFAllocatorSystemDefault, 0xA001u, v41);
  _CFRuntimeSetInstanceTypeIDAndIsa(v10, 0x12uLL);
  callBacks = *byte_1EF064928;
  v11 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &callBacks);
  v39 = *byte_1EF064950;
  v12 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &v39);
  _flattenPlist(a1, v11, v10, v12);
  CFRelease(v12);
  Count = CFArrayGetCount(v11);
  Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * Count, 0x100004000313F17, 0);
  v15 = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8208, 0x10E0040DB85EAC6, 0);
  *v15 = a2;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  if (a2)
  {
    v16 = CFGetTypeID(a2);
    v17 = v16 == CFDataGetTypeID();
  }

  else
  {
    v17 = 1;
  }

  *(v15 + 44) = v17;
  *(v15 + 4) = 0;
  v15[10] = 0;
  bufferWrite(v15, "bplist00", 8, a5);
  *&__src = 0;
  *(&__src + 1) = bswap64(Count);
  *&v43 = 0;
  v18 = 0;
  if (!Count)
  {
    goto LABEL_12;
  }

  v19 = -1;
  do
  {
    ++v18;
    v21 = (Count & (v19 << 8)) == 0;
    v19 <<= 8;
  }

  while (!v21);
  if (v18 <= 7u)
  {
LABEL_12:
    while (1)
    {
      v20 = v18;
      v21 = v18 > 4u || ((1 << v18) & 0x16) == 0;
      if (!v21)
      {
        break;
      }

      ++v18;
      if (v20 >= 7)
      {
        v18 = 8;
        break;
      }
    }
  }

  BYTE7(__src) = v18;
  if (Count < 1)
  {
LABEL_20:
    CFRelease(v10);
    CFRelease(v11);
    v24 = *(v15 + 4) + v15[10];
    *(&v43 + 1) = bswap64(v24);
    v37 = a6;
    v25 = 0;
    if (!v24)
    {
      goto LABEL_28;
    }

    v26 = -1;
    do
    {
      ++v25;
      v21 = (v24 & (v26 << 8)) == 0;
      v26 <<= 8;
    }

    while (!v21);
    if (v25 <= 7u)
    {
LABEL_28:
      while (1)
      {
        v27 = v25;
        if (v25 <= 4u && ((1 << v25) & 0x16) != 0)
        {
          break;
        }

        ++v25;
        if (v27 >= 7)
        {
          v25 = 8;
          break;
        }
      }
    }

    BYTE6(__src) = v25;
    if (Count >= 1)
    {
      v29 = Typed;
      v30 = Count;
      do
      {
        v31 = *v29++;
        v38 = bswap64(v31);
        bufferWrite(v15, &v38 - v25 + 8, v25, a5);
        --v30;
      }

      while (v30);
    }

    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    bufferWrite(v15, &__src, 32, a5);
    writeBytes(v15, v15 + 45, v15[10], a5);
    v15[10] = 0;
    v32 = *(v15 + 3);
    if (v32)
    {
      if (v37)
      {
        v33 = 0;
        *v37 = v32;
      }

      else
      {
        CFRelease(v32);
        v33 = 0;
      }
    }

    else
    {
      v33 = v24 + Count * v25 + 32;
    }

    Typed = v15;
  }

  else
  {
    v22 = 0;
    while (1)
    {
      Typed[v22] = *(v15 + 4) + v15[10];
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v22);
      if (!_appendObject(v15, ValueAtIndex))
      {
        break;
      }

      if (Count == ++v22)
      {
        goto LABEL_20;
      }
    }

    CFRelease(v10);
    CFRelease(v11);
    v34 = *(v15 + 3);
    if (a6)
    {
      if (v34)
      {
        *a6 = v34;
      }
    }

    else if (v34)
    {
      CFRelease(v34);
    }

    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v15);
    v33 = 0;
  }

  CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
  v35 = *MEMORY[0x1E69E9840];
  return v33;
}

uint64_t __CFArrayCreateInit(__objc2_class **a1, char a2, int a3, const CFArrayCallBacks *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2 & 3;
  v10 = v9;
  if (a4)
  {
    retain = a4->retain;
    if (retain || a4->release || a4->copyDescription || (v10 = a2 & 3, a4->equal))
    {
      if (a4 == &kCFTypeArrayCallBacks || retain == __CFTypeCollectionRetain && a4->release == __CFTypeCollectionRelease && a4->copyDescription == CFCopyDescription && a4->equal == CFEqual)
      {
        v10 = v9 | 4;
      }

      else
      {
        v10 = v9 | 0xC;
      }
    }
  }

  v12 = v10 & 0xC;
  v13 = 8 * a3;
  if ((a2 & 3) != 0)
  {
    v13 = 0;
  }

  if (v12 == 12)
  {
    v14 = 72;
  }

  else
  {
    v14 = 32;
  }

  Instance = _CFRuntimeCreateInstance(a1, 0x13uLL, (v14 + v13), 0, a5, a6, a7, a8);
  v16 = Instance;
  if (Instance)
  {
    v17 = atomic_load((Instance + 8));
    v18 = v17;
    do
    {
      atomic_compare_exchange_strong((Instance + 8), &v18, v17 & 0xFFFFFFFFFFFFFF80 | v10);
      v19 = v18 == v17;
      v17 = v18;
    }

    while (!v19);
    *(Instance + 16) = 0;
    if (v9 == 2)
    {
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      *(v16 + 24) = 1;
      *(v16 + 32) = 0;
      *(v16 + 40) = 0;
    }

    else if (!v9 && __CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }

    if (v12 == 12)
    {
      v20 = atomic_load((v16 + 8));
      v21 = (v20 >> 2) & 3;
      if (v21)
      {
        if (v21 == 1)
        {
          v22 = &kCFTypeArrayCallBacks;
        }

        else
        {
          atomic_load((v16 + 8));
          v22 = (v16 + 48);
        }
      }

      else
      {
        v22 = &__kCFNullArrayCallBacks;
      }

      v23 = *&a4->version;
      v24 = *&a4->release;
      v22->equal = a4->equal;
      *&v22->version = v23;
      *&v22->release = v24;
    }
  }

  return v16;
}

void bufferWrite(uint64_t a1, const UInt8 *__src, int64_t a3, int a4)
{
  if (!a3)
  {
    return;
  }

  if (a3 >= 8160)
  {
    writeBytes(a1, (a1 + 45), *(a1 + 40), a4);
    *(a1 + 40) = 0;

    writeBytes(a1, __src, a3, a4);
    return;
  }

  v8 = *(a1 + 40);
  if (8160 - v8 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = 8160 - v8;
  }

  if (!a4 && (*a1 || *(a1 + 8)))
  {
    v10 = v8;
    if (v9 > 2)
    {
      if (v9 != 3)
      {
        if (v9 != 4)
        {
LABEL_29:
          memmove((a1 + v8 + 45), __src, v9);
          goto LABEL_22;
        }

        *(v8 + a1 + 48) = __src[3];
        v8 = *(a1 + 40);
      }

      *(a1 + v8 + 47) = __src[2];
      v8 = *(a1 + 40);
    }

    else
    {
      if (v9 == 1)
      {
LABEL_21:
        *(a1 + v10 + 45) = *__src;
        goto LABEL_22;
      }

      if (v9 != 2)
      {
        goto LABEL_29;
      }
    }

    *(a1 + v8 + 46) = __src[1];
    v10 = *(a1 + 40);
    goto LABEL_21;
  }

LABEL_22:
  v11 = *(a1 + 40) + v9;
  *(a1 + 40) = v11;
  if (v11 == 8160)
  {
    writeBytes(a1, (a1 + 45), 8160, a4);
    if (!a4 && (*a1 || *(a1 + 8)))
    {
      memmove((a1 + 45), &__src[v9], a3 - v9);
    }

    *(a1 + 40) = a3 - v9;
  }
}

void bufferWrite_0(uint64_t a1, char *__src, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  v3 = a3;
  if (a3 >= 8144)
  {
    writeBytes_0(a1, (a1 + 44), *(a1 + 40));
    *(a1 + 40) = 0;

    writeBytes_0(a1, __src, v3);
    return;
  }

  v6 = *(a1 + 40);
  if (8144 - v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 8144 - v6;
  }

  if (*a1 || *(a1 + 8))
  {
    v8 = v6;
    if (v7 > 2)
    {
      if (v7 != 3)
      {
        if (v7 != 4)
        {
LABEL_27:
          memmove((a1 + v6 + 44), __src, v7);
          goto LABEL_21;
        }

        *(v6 + a1 + 47) = __src[3];
        v6 = *(a1 + 40);
      }

      *(a1 + v6 + 46) = __src[2];
      v6 = *(a1 + 40);
    }

    else
    {
      if (v7 == 1)
      {
LABEL_20:
        *(a1 + v8 + 44) = *__src;
        goto LABEL_21;
      }

      if (v7 != 2)
      {
        goto LABEL_27;
      }
    }

    *(a1 + v6 + 45) = __src[1];
    v8 = *(a1 + 40);
    goto LABEL_20;
  }

LABEL_21:
  v9 = *(a1 + 40) + v7;
  *(a1 + 40) = v9;
  if (v9 == 8144)
  {
    writeBytes_0(a1, (a1 + 44), 8144);
    if (*a1 || *(a1 + 8))
    {
      v3 -= v7;
      memmove((a1 + 44), &__src[v7], v3);
    }

    else
    {
      LODWORD(v3) = v3 - v7;
    }

    *(a1 + 40) = v3;
  }
}

uint64_t _appendObject(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v2;
  v78 = *MEMORY[0x1E69E9840];
  v12 = CFGetTypeID(v9);
  v13 = 0;
  if (v12 > 20)
  {
    if (v12 > 40)
    {
      if (v12 == 41)
      {
        v32 = _CFKeyedArchiverUIDGetValue(v10);
        v33 = 4;
        if (v32 < 0x10000)
        {
          v33 = 2;
        }

        if (v32 < 0x100)
        {
          v34 = 1;
        }

        else
        {
          v34 = v33;
        }

        v43.i8[0] = (v34 - 1) | 0x80;
        values[0] = bswap64(v32);
        v13 = 1;
        bufferWrite(v11, &v43, 1, v4);
        v25 = (&values[1] - v34);
        v26 = v11;
        v27 = v34;
      }

      else
      {
        if (v12 != 42)
        {
          goto LABEL_76;
        }

        v43.i8[0] = 51;
        v13 = 1;
        bufferWrite(v11, &v43, 1, v4);
        values[0] = bswap64(COERCE_UNSIGNED_INT64(CFDateGetAbsoluteTime(v10)));
        v25 = values;
        v26 = v11;
        v27 = 8;
      }

      bufferWrite(v26, v25, v27, v4);
      goto LABEL_76;
    }

    if (v12 == 21)
    {
      if (CFBooleanGetValue(v10))
      {
        v28 = 9;
      }

      else
      {
        v28 = 8;
      }

      LOBYTE(values[0]) = v28;
      v13 = 1;
      bufferWrite(v11, values, 1, v4);
      goto LABEL_76;
    }

    if (v12 != 22)
    {
      goto LABEL_76;
    }

    valuePtr = 0;
    if (!CFNumberIsFloatType(v10))
    {
      if (_CFNumberGetType2(v10) != 17)
      {
        CFNumberGetValue(v10, kCFNumberSInt64Type, &valuePtr);
        _appendInt(v11, valuePtr, v4);
        goto LABEL_75;
      }

      values[0] = 0;
      values[1] = 0;
      CFNumberGetValue(v10, kCFNumberMaxType|kCFNumberSInt8Type, values);
      v43 = vrev64q_s8(*values);
      LOBYTE(__src) = 20;
      bufferWrite(v11, &__src, 1, v4);
      BytePtr = &v43;
      v24 = v11;
      v35 = 16;
      goto LABEL_51;
    }

    values[0] = 0;
    __src = 0;
    if (CFNumberGetByteSize(v10) > 4)
    {
      v43.i64[0] = 0;
      CFNumberGetValue(v10, kCFNumberFloat64Type, &v43);
      values[0] = bswap64(v43.u64[0]);
      p_src = values;
      v19 = 35;
      v20 = 8;
    }

    else
    {
      v43.i32[0] = 0;
      CFNumberGetValue(v10, kCFNumberFloat32Type, &v43);
      __src = bswap32(v43.u32[0]);
      p_src = &__src;
      v19 = 34;
      v20 = 4;
    }

    v43.i8[0] = v19;
    bufferWrite(v11, &v43, 1, v4);
    v24 = v11;
    BytePtr = p_src;
LABEL_50:
    v35 = v20;
LABEL_51:
    bufferWrite(v24, BytePtr, v35, v4);
    goto LABEL_75;
  }

  if (v12 <= 18)
  {
    if (v12 == 7)
    {
      _appendString(v11, v10, v4);
    }

    else
    {
      if (v12 != 18)
      {
        goto LABEL_76;
      }

      Count = CFDictionaryGetCount(v10);
      v15 = Count;
      v16 = 15;
      if (Count < 15)
      {
        v16 = Count;
      }

      LOBYTE(valuePtr) = v16 | 0xD0;
      bufferWrite(v11, &valuePtr, 1, v4);
      if (v15 >= 15)
      {
        _appendInt(v11, v15, v4);
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        *values = 0u;
        v47 = 0u;
        if (v15 >= 0x101)
        {
          Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 16 * v15, 0xC0040B8AA526DLL, 0);
        }

        else
        {
          Typed = values;
        }

        CFDictionaryGetKeysAndValues(v10, Typed, &Typed[v15]);
        goto LABEL_62;
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      Typed = values;
      *values = 0u;
      v47 = 0u;
      CFDictionaryGetKeysAndValues(v10, values, &values[v15]);
      if (v15 >= 1)
      {
LABEL_62:
        v38 = 0;
        if (2 * v15 <= 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2 * v15;
        }

        do
        {
          v40 = Typed[v38];
          if (v8)
          {
            v43.i32[0] = 0;
            v43.i32[0] = bswap32(CFDictionaryGetValue(v8, v40));
            bufferWrite(v11, &v43.u8[-v6 + 4], v6, v4);
          }

          else if (!_appendObject(v11, v40, 0, v6, v4))
          {
            goto LABEL_71;
          }

          ++v38;
        }

        while (v39 != v38);
LABEL_69:
        if (Typed != values)
        {
          CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
        }
      }
    }

LABEL_75:
    v13 = 1;
    goto LABEL_76;
  }

  if (v12 != 19)
  {
    Length = CFDataGetLength(v10);
    v20 = Length;
    v22 = 15;
    if (Length < 15)
    {
      v22 = Length;
    }

    LOBYTE(values[0]) = v22 | 0x40;
    bufferWrite(v11, values, 1, v4);
    if (v20 >= 15)
    {
      _appendInt(v11, v20, v4);
    }

    BytePtr = CFDataGetBytePtr(v10);
    v24 = v11;
    goto LABEL_50;
  }

  v29 = CFArrayGetCount(v10);
  v30 = v29;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = 15;
  *values = 0u;
  v47 = 0u;
  if (v29 < 15)
  {
    v31 = v29;
  }

  LOBYTE(valuePtr) = v31 | 0xA0;
  bufferWrite(v11, &valuePtr, 1, v4);
  if (v30 < 15)
  {
    Typed = values;
    v79.location = 0;
    v79.length = v30;
    CFArrayGetValues(v10, v79, values);
    if (v30 < 1)
    {
      goto LABEL_75;
    }
  }

  else
  {
    _appendInt(v11, v30, v4);
    if (v30 >= 0x101)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v30, 0xC0040B8AA526DLL, 0);
    }

    else
    {
      Typed = values;
    }

    v80.location = 0;
    v80.length = v30;
    CFArrayGetValues(v10, v80, Typed);
  }

  v36 = 0;
  while (1)
  {
    v37 = Typed[v36];
    if (!v8)
    {
      break;
    }

    v43.i32[0] = 0;
    v43.i32[0] = bswap32(CFDictionaryGetValue(v8, v37));
    bufferWrite(v11, &v43.u8[-v6 + 4], v6, v4);
LABEL_58:
    if (v30 == ++v36)
    {
      goto LABEL_69;
    }
  }

  if (_appendObject(v11, v37, 0, v6, v4))
  {
    goto LABEL_58;
  }

LABEL_71:
  if (Typed != values)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
  }

  v13 = 0;
LABEL_76:
  v41 = *MEMORY[0x1E69E9840];
  return v13;
}

void _appendInt(uint64_t a1, unint64_t a2, int a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (a2 > 0xFF)
  {
    if (a2 >> 16)
    {
      if (HIDWORD(a2))
      {
        __src = 19;
        v5 = 8;
      }

      else
      {
        __src = 18;
        v5 = 4;
      }
    }

    else
    {
      __src = 17;
      v5 = 2;
    }
  }

  else
  {
    __src = 16;
    v5 = 1;
  }

  v8[0] = bswap64(a2);
  bufferWrite(a1, &__src, 1, a3);
  bufferWrite(a1, &v8[1] - v5, v5, a3);
  v6 = *MEMORY[0x1E69E9840];
}

CFDataRef CFDataCreateWithBytesNoCopy(CFAllocatorRef allocator, const UInt8 *bytes, CFIndex length, CFAllocatorRef bytesDeallocator)
{
  v4 = bytesDeallocator;
  if (!bytesDeallocator)
  {
    v8 = _CFGetTSD(1u);
    if (v8)
    {
      v4 = v8;
    }

    else
    {
      v4 = &__kCFAllocatorSystemDefault;
    }
  }

  return __CFDataInit(allocator, 0, length, bytes, length, v4);
}

void CFDictionaryAddValue(CFMutableDictionaryRef theDict, const void *key, const void *value)
{
  if (CF_IS_OBJC(0x12uLL, theDict))
  {

    [(__CFDictionary *)theDict __addObject:value forKey:key];
  }

  else
  {
    v12 = atomic_load(theDict + 1);
    if ((v12 & 0x40) != 0)
    {
      CFLog(3, @"%s(): immutable collection %p given to mutating function", v6, v7, v8, v9, v10, v11, "void CFDictionaryAddValue(CFMutableDictionaryRef, const void *, const void *)");
    }

    v13 = atomic_load(theDict + 1);
    if (v13)
    {
      v14 = __CF_KVO_WillChangeSelector_hc;
      if (!__CF_KVO_WillChangeSelector_hc)
      {
        v14 = sel_registerName("willChangeValueForKey:");
        __CF_KVO_WillChangeSelector_hc = v14;
      }

      [theDict v14];
    }

    CFBasicHashAddValue(theDict, key, value);
    v15 = atomic_load(theDict + 1);
    if (v15)
    {
      v16 = __CF_KVO_DidChangeSelector_hc;
      if (!__CF_KVO_DidChangeSelector_hc)
      {
        v16 = sel_registerName("didChangeValueForKey:");
        __CF_KVO_DidChangeSelector_hc = v16;
      }

      [theDict v16];
    }
  }
}

uint64_t _CFArrayCheckAndGetValueAtIndex(unint64_t *a1, int64_t a2, _BYTE *a3)
{
  if (a2 < 0 || a1[2] <= a2)
  {
    if (a3)
    {
      *a3 = 1;
    }

    return -1;
  }

  else
  {
    atomic_load(a1 + 1);
    v3 = atomic_load(a1 + 1);
    if ((v3 & 3) != 0)
    {
      v4 = a1[5] + 8 * *a1[5] + 16;
    }

    else
    {
      v6 = atomic_load(a1 + 1);
      v7 = (~v6 & 0xC) == 0;
      v8 = 6;
      if (v7)
      {
        v8 = 11;
      }

      v4 = &a1[v8];
    }

    return *(v4 + 8 * a2);
  }
}

void _flattenPlist(const void *a1, const __CFArray *a2, __CFDictionary *a3, const __CFSet *a4)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = CFGetTypeID(a1);
  v9 = v8;
  if (v8 > 0x2A || ((1 << v8) & 0x40000500080) == 0 || (v10 = CFSetGetCount(a4), CFSetAddValue(a4, a1), CFSetGetCount(a4) != v10))
  {
    Count = CFArrayGetCount(a2);
    CFArrayAppendValue(a2, a1);
    CFDictionaryAddValue(a3, a1, Count);
    if (v9 != 19)
    {
      if (v9 != 18)
      {
        goto LABEL_34;
      }

      v15 = CFDictionaryGetCount(a1);
      MEMORY[0x1EEE9AC00](v15, v16);
      v19 = (v32 - v18);
      if (v17 >= 0x200)
      {
        v20 = 512;
      }

      else
      {
        v20 = v17;
      }

      bzero(v32 - v18, v20);
      if (v15 >= 129)
      {
        Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 16 * v15, 0xC0040B8AA526DLL, 0);
        CFDictionaryGetKeysAndValues(a1, Typed, &Typed[v15]);
      }

      else
      {
        CFDictionaryGetKeysAndValues(a1, v19, &v19[v15]);
        Typed = v19;
        if (v15 < 1)
        {
          goto LABEL_27;
        }
      }

      v28 = 0;
      if (2 * v15 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2 * v15;
      }

      do
      {
        _flattenPlist(Typed[v28++], a2, a3, a4);
      }

      while (v29 != v28);
LABEL_27:
      if (Typed == v19)
      {
        goto LABEL_34;
      }

LABEL_33:
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
      goto LABEL_34;
    }

    v22 = CFArrayGetCount(a1);
    MEMORY[0x1EEE9AC00](v22, v23);
    v26 = (v32 - v25);
    if (v24 >= 0x200)
    {
      v27 = 512;
    }

    else
    {
      v27 = v24;
    }

    bzero(v32 - v25, v27);
    if (v22 >= 257)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v22, 0xC0040B8AA526DLL, 0);
      v35.location = 0;
      v35.length = v22;
      CFArrayGetValues(a1, v35, Typed);
    }

    else
    {
      v34.location = 0;
      v34.length = v22;
      CFArrayGetValues(a1, v34, v26);
      Typed = v26;
      if (v22 < 1)
      {
        goto LABEL_32;
      }
    }

    for (i = 0; i != v22; ++i)
    {
      _flattenPlist(Typed[i], a2, a3, a4);
    }

LABEL_32:
    if (Typed == v26)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  Value = CFSetGetValue(a4, a1);
  if (Value == a1)
  {
LABEL_34:
    v31 = *MEMORY[0x1E69E9840];
    return;
  }

  v12 = CFDictionaryGetValue(a3, Value);
  v13 = *MEMORY[0x1E69E9840];

  CFDictionaryAddValue(a3, a1, v12);
}

void _appendString(uint64_t a1, CFStringRef theString, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  if (Length >= 1025)
  {
    Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, Length, 0x100004077774924, 0);
  }

  else
  {
    Typed = buffer;
  }

  usedBufLen = 0;
  v19.location = 0;
  v19.length = Length;
  if (CFStringGetBytes(theString, v19, 0x600u, 0, 0, Typed, Length, &usedBufLen) == Length)
  {
    v8 = usedBufLen;
    if (usedBufLen >= 15)
    {
      v8 = 15;
    }

    __src = v8 | 0x50;
    bufferWrite(a1, &__src, 1, a3);
    v9 = usedBufLen;
    if (usedBufLen >= 15)
    {
      _appendInt(a1, usedBufLen, a3);
      v9 = usedBufLen;
    }

    bufferWrite(a1, Typed, v9, a3);
  }

  else
  {
    v10 = 15;
    if (Length < 15)
    {
      v10 = Length;
    }

    __src = v10 | 0x60;
    bufferWrite(a1, &__src, 1, a3);
    if (Length >= 15)
    {
      _appendInt(a1, Length, a3);
    }

    v11 = 2 * Length;
    v12 = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 2 * Length, 0x1000040BDFB0063, 0);
    v20.location = 0;
    v20.length = Length;
    CFStringGetCharacters(theString, v20, v12);
    if (Length >= 1)
    {
      v13 = v12;
      do
      {
        *v13 = bswap32(*v13) >> 16;
        ++v13;
        --Length;
      }

      while (Length);
    }

    bufferWrite(a1, v12, v11, a3);
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v12);
  }

  if (Typed != buffer)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void _CFArrayReplaceValues(unint64_t a1, uint64_t a2, uint64_t a3, void *__src, uint64_t a5)
{
  v63 = *MEMORY[0x1E69E9840];
  memset(v62, 0, 512);
  v10 = atomic_load((a1 + 8));
  v11 = (v10 >> 2) & 3;
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = &kCFTypeArrayCallBacks;
    }

    else
    {
      v13 = atomic_load((a1 + 8));
      v14 = v13 & 3;
      if (v14 != 2 && v14)
      {
        v12 = 0;
      }

      else
      {
        v12 = (a1 + 48);
      }
    }
  }

  else
  {
    v12 = &__kCFNullArrayCallBacks;
  }

  v15 = &kCFAllocatorSystemDefault;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v16 = atomic_load((a1 + 8));
    if (v16 < 0)
    {
      v15 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v15 = (a1 - 16);
    }
  }

  v17 = *(a1 + 16) - a3;
  v18 = *v15;
  Typed = __src;
  if (v12->retain)
  {
    if (a5 >= 257)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * a5, 0x80040B8603338, 0);
      if (Typed != v62 && __CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }
    }

    else
    {
      Typed = v62;
      if (a5 < 1)
      {
        goto LABEL_21;
      }
    }

    v20 = 0;
    do
    {
      *(Typed + v20) = (v12->retain)(v18, __src[v20]);
      ++v20;
    }

    while (a5 != v20);
  }

LABEL_21:
  ++*(a1 + 24);
  if (a3 >= 1)
  {
    __CFArrayReleaseValues(a1, a2, a3, 0);
  }

  v21 = *(a1 + 40);
  v61 = v17 + a5;
  if (v21)
  {
    v22 = a5 - a3;
    if (a5 == a3)
    {
      goto LABEL_80;
    }

    v23 = v21 + 2;
    v24 = *(a1 + 16);
    v25 = v24 - a3 + a5;
    v59 = v24 - a3 - a2;
    v26 = v21[1];
    v58 = *v21;
    v27 = v26 >> 17;
    if (v26 >> 17 <= 4)
    {
      v27 = 4;
    }

    if (v26 < v25 || (v28 = v26 - v24, v24 < v25) && v28 < v27)
    {
      v29 = v27 + v25;
      if (v27 + v25 >= 4)
      {
        if (flsl(v27 + v25) > 0x3E)
        {
          v30 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = 1 << flsl(v29);
        }
      }

      else
      {
        v30 = 4;
      }

      v60 = a2;
      v57 = v21 + 2;
      if ((a1 & 0x8000000000000000) != 0)
      {
        v46 = &kCFAllocatorSystemDefault;
      }

      else
      {
        v47 = atomic_load((a1 + 8));
        if (v47 < 0)
        {
          v46 = &kCFAllocatorSystemDefault;
        }

        else
        {
          v46 = (a1 - 16);
        }
      }

      v48 = *v46;
      v49 = CFAllocatorAllocateTyped(*v46, 8 * v30 + 16, 0x1000040451B5BE8, 0);
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      v50 = (v30 - v25) / 2;
      *v49 = v50;
      v49[1] = v30;
      v51 = &v49[v50 + 2];
      if (v60 >= 1)
      {
        memmove(&v49[v50 + 2], &v57[v58], 8 * v60);
      }

      if (v59 >= 1)
      {
        memmove((v51 + 8 * v60 + 8 * a5), &v57[v58 + v60 + a3], 8 * v59);
      }

      *(a1 + 40) = v49;
      CFAllocatorDeallocate(v48, v21);
      a2 = v60;
      goto LABEL_80;
    }

    v32 = v24 - a3 - a2;
    v34 = (v22 <= v28 - v58 || v22 < 0) && v59 < a2;
    if (v34)
    {
      v54 = v58 + a2 + a3;
      v55 = v58 + a2 + a5;
      if (v59 >= 1)
      {
        memmove(&v23[v55], &v23[v54], 8 * v59);
        v32 = v59;
      }

      if (a5 < a3)
      {
        v44 = &v23[v55 + v32];
        v43 = v54 - v55;
        goto LABEL_91;
      }
    }

    else
    {
      v35 = v58 - v22;
      v37 = v58 < v22 || v59 < a2;
      if (v22 < 0 || !v37)
      {
        *v21 = v35;
        if (a2 >= 1)
        {
          memmove(&v23[v35], &v23[v58], 8 * a2);
        }

        if (v22 < 0)
        {
          v56 = -8 * v22;
          v44 = &v23[v58];
          goto LABEL_102;
        }
      }

      else
      {
        v34 = v28 < v22;
        v38 = v28 - v22;
        v39 = v38 / 2;
        if (v34)
        {
          v38 += 3;
        }

        v40 = v39 - (v38 >> 2);
        v41 = a3 + a2 + v58;
        v42 = a2 + a5 + v40;
        *v21 = v40;
        if (v40 >= v58)
        {
          if (v59 >= 1)
          {
            memmove(&v23[v42], &v23[v41], 8 * v59);
          }

          if (a2 >= 1)
          {
            memmove(&v23[v40], &v23[v58], 8 * a2);
          }

          if (v40 > v58)
          {
            v56 = 8 * (v40 - v58);
            v44 = &v23[v58];
            goto LABEL_102;
          }
        }

        else
        {
          if (a2 >= 1)
          {
            memmove(&v23[v40], &v23[v58], 8 * a2);
            v32 = v59;
          }

          if (v32 >= 1)
          {
            memmove(&v23[v42], &v23[v41], 8 * v32);
            v32 = v59;
          }

          v43 = v41 - v42;
          if (v41 > v42)
          {
            v44 = &v23[v42 + v32];
LABEL_91:
            v56 = 8 * v43;
LABEL_102:
            bzero(v44, v56);
          }
        }
      }
    }
  }

  else if (((v17 + a5) & 0x8000000000000000) == 0)
  {
    if (v61 >= 4)
    {
      if (flsl(v61) > 0x3E)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v31 = 1 << flsl(v61);
      }
    }

    else
    {
      v31 = 4;
    }

    v45 = CFAllocatorAllocateTyped(v18, 8 * v31 + 16, 0x1000040451B5BE8, 0);
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }

    *v45 = (v31 - a5) / 2;
    v45[1] = v31;
    *(a1 + 40) = v45;
  }

LABEL_80:
  if (a5 >= 1)
  {
    v52 = *(a1 + 40);
    if (!v52)
    {
      _CFArrayReplaceValues_cold_1();
    }

    memmove(&v52[*v52 + 2 + a2], Typed, 8 * a5);
  }

  *(a1 + 16) = v61;
  if (Typed != v62 && Typed != __src)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
  }

  v53 = *MEMORY[0x1E69E9840];
}

Boolean CFSetContainsValue(CFSetRef theSet, const void *value)
{
  if (CF_IS_OBJC(0x11uLL, theSet))
  {
    return [(__CFSet *)theSet containsObject:value];
  }

  else
  {
    return CFBasicHashGetCountOfKey(theSet, value) > 0;
  }
}

CFStringRef _CFStringCreateByAddingPercentEncodingWithAllowedCharacters(const __CFAllocator *a1, CFStringRef theString, const __CFCharacterSet *a3)
{
  v44[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  if (Length)
  {
    v7 = Length;
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    if (MaximumSizeForEncoding == -1)
    {
      v11 = 0;
LABEL_85:
      v37 = *MEMORY[0x1E69E9840];
      return v11;
    }

    v10 = MaximumSizeForEncoding;
    v11 = 0;
    v12 = 4 * MaximumSizeForEncoding;
    if (!(4 * MaximumSizeForEncoding))
    {
      goto LABEL_85;
    }

    *(&v13 + 1) = ((MaximumSizeForEncoding + __PAIR128__(1, 0xC000000000000000)) >> 64) & 1;
    *&v13 = MaximumSizeForEncoding - 0x4000000000000000;
    if ((v13 >> 63) < 3 || (2 * MaximumSizeForEncoding) >> 63 < 0)
    {
      goto LABEL_85;
    }

    if (v12 < 0x401)
    {
      MEMORY[0x1EEE9AC00](MaximumSizeForEncoding, v9);
      v14 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v14, v12);
    }

    else
    {
      v14 = malloc_type_malloc(4 * MaximumSizeForEncoding, 0x100004077774924uLL);
    }

    v44[0] = 0;
    v46.location = 0;
    v46.length = v7;
    v11 = 0;
    if (CFStringGetBytes(theString, v46, 0x8000100u, 0, 0, v14, v10, v44) != v7)
    {
LABEL_83:
      if (v12 >= 0x401)
      {
        free(v14);
      }

      goto LABEL_85;
    }

    v17 = &v14[v10];
    if (InitializeURLAllowedCharacterSets_static_init == -1)
    {
      if (a3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      _CFStringCreateByAddingPercentEncodingWithAllowedCharacters_cold_1();
      if (a3)
      {
LABEL_16:
        v18 = 0;
        while (*(sURLAllowedCharacterSets + 8 * v18) != a3)
        {
          if (++v18 == 7)
          {
            goto LABEL_19;
          }
        }

        if (v18 > 2)
        {
          if (v18 <= 4)
          {
            if (v18 != 3)
            {
              v22 = 64;
              goto LABEL_75;
            }

            v19 = &v14[v10];
            if (v44[0] >= 1)
            {
              v27 = 0;
              v28 = 0;
              v19 = &v14[v10];
              while (1)
              {
                v29 = v14[v27];
                if (v28)
                {
                  break;
                }

                v31 = 0;
                v28 = v29 == 47;
                if ((v29 & 0x80) == 0 && v29 != 58)
                {
                  v31 = (sURLAllowedCharacters[v29] >> 5) & 1;
                }

                if (_CFURIParserSemicolonAllowedInPath_onceToken != -1)
                {
                  HIDWORD(v42) = v29 == 47;
                  v43 = v29;
                  _CFStringCreateByAddingPercentEncodingWithAllowedCharacters_cold_3();
                  v29 = v43;
                  v28 = BYTE4(v42);
                }

                if (_CFURIParserSemicolonAllowedInPath_allowSemicolon)
                {
                  if (!v31)
                  {
                    goto LABEL_70;
                  }
                }

                else
                {
                  if (v29 == 59)
                  {
                    v33 = 0;
                  }

                  else
                  {
                    v33 = v31;
                  }

                  if ((v33 & 1) == 0)
                  {
LABEL_70:
                    *v19 = 37;
                    v19[1] = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters_hexchars[v29 >> 4];
                    v19[2] = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters_hexchars[v29 & 0xF];
                    v19 += 3;
                    goto LABEL_71;
                  }
                }

                *v19++ = v29;
LABEL_71:
                if (++v27 >= v44[0])
                {
                  goto LABEL_82;
                }
              }

              if ((v29 & 0x80) != 0)
              {
                v30 = 0;
              }

              else
              {
                v30 = (sURLAllowedCharacters[v29] >> 5) & 1;
              }

              if (_CFURIParserSemicolonAllowedInPath_onceToken != -1)
              {
                v43 = v14[v27];
                _CFStringCreateByAddingPercentEncodingWithAllowedCharacters_cold_2();
                v29 = v43;
              }

              if (_CFURIParserSemicolonAllowedInPath_allowSemicolon)
              {
                if (v30)
                {
LABEL_59:
                  *v19++ = v29;
LABEL_65:
                  v28 = 1;
                  goto LABEL_71;
                }
              }

              else
              {
                if (v29 == 59)
                {
                  v32 = 0;
                }

                else
                {
                  v32 = v30;
                }

                if (v32)
                {
                  goto LABEL_59;
                }
              }

              *v19 = 37;
              v19[1] = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters_hexchars[v29 >> 4];
              v19[2] = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters_hexchars[v29 & 0xF];
              v19 += 3;
              goto LABEL_65;
            }

LABEL_82:
            v11 = CFStringCreateWithBytes(0, v17, v19 - v17, 0x8000100u, 0);
            goto LABEL_83;
          }

          if (v18 != 5)
          {
            goto LABEL_39;
          }

          v22 = 128;
LABEL_75:
          v19 = &v14[v10];
          if (v44[0] >= 1)
          {
            v34 = 0;
            v19 = &v14[v10];
            do
            {
              v35 = v14[v34];
              v36 = v14[v34];
              if (v35 < 0 || (v22 & sURLAllowedCharacters[v36]) == 0)
              {
                *v19 = 37;
                v19[1] = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters_hexchars[v36 >> 4];
                v19[2] = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters_hexchars[v36 & 0xF];
                v19 += 3;
              }

              else
              {
                *v19++ = v35;
              }

              ++v34;
            }

            while (v34 < v44[0]);
          }

          goto LABEL_82;
        }

        if (!v18)
        {
          v22 = 2;
          goto LABEL_75;
        }

        if (v18 == 1)
        {
          v22 = 4;
          goto LABEL_75;
        }

        if (v18 != 2)
        {
LABEL_39:
          v22 = 0;
          goto LABEL_75;
        }

        v23 = v44[0];
        if (v44[0] <= 1)
        {
          goto LABEL_86;
        }

        if (*v14 != 91)
        {
          v26 = 0;
          v24 = 1;
          v19 = &v14[v10];
          v25 = v14;
LABEL_90:
          v38 = 0;
          do
          {
            v39 = v25[v38];
            v40 = v25[v38];
            if ((v39 & 0x80000000) == 0 && (v39 == 58 ? (v41 = v26) : (v41 = 0), (v41 & 1) != 0 || (sURLAllowedCharacters[v40] & 8) != 0))
            {
              *v19++ = v39;
            }

            else
            {
              *v19 = 37;
              v19[1] = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters_hexchars[v40 >> 4];
              v19[2] = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters_hexchars[v40 & 0xF];
              v19 += 3;
            }

            ++v38;
          }

          while (v38 < v44[0]);
LABEL_100:
          if ((v24 & 1) == 0)
          {
            *v19++ = 93;
          }

          goto LABEL_82;
        }

        if (v14[v44[0] - 1] == 93)
        {
          v24 = 0;
          v25 = v14 + 1;
          *v17 = 91;
          v19 = v17 + 1;
          v23 = v44[0] - 2;
          v44[0] -= 2;
          v26 = 1;
        }

        else
        {
LABEL_86:
          v26 = 0;
          v24 = 1;
          v25 = v14;
          v19 = &v14[v10];
        }

        if (v23 < 1)
        {
          goto LABEL_100;
        }

        goto LABEL_90;
      }
    }

LABEL_19:
    v19 = &v14[v10];
    if (v44[0] >= 1)
    {
      v20 = 0;
      v19 = v17;
      do
      {
        v21 = v14[v20];
        if (v21 < 0 || !CFCharacterSetIsCharacterMember(a3, v21))
        {
          *v19 = 37;
          v19[1] = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters_hexchars[v21 >> 4];
          v19[2] = _CFStringCreateByAddingPercentEncodingWithAllowedCharacters_hexchars[v21 & 0xF];
          v19 += 3;
        }

        else
        {
          *v19++ = v21;
        }

        ++v20;
      }

      while (v20 < v44[0]);
    }

    goto LABEL_82;
  }

  v15 = *MEMORY[0x1E69E9840];

  return CFStringCreateCopy(a1, theString);
}

UniChar *resolveAbsoluteURLString(const __CFAllocator *a1, const __CFString *a2, unsigned int a3, uint64_t a4, CFStringRef theString, unsigned int a6, CFIndex *a7)
{
  v23[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  v15 = CFStringGetLength(a2);
  if (v15 + Length > 1024)
  {
    result = malloc_type_malloc(2 * (v15 + Length), 0x1000040BDFB0063uLL);
    if (result)
    {
      v19 = result;
      v20 = resolveAbsoluteURLStringBuffer(a1, a2, a3, a4, theString, a6, a7, result);
      free(v19);
      v21 = *MEMORY[0x1E69E9840];
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v15, v16);
    result = resolveAbsoluteURLStringBuffer(a1, a2, a3, a4, theString, a6, a7, (v23 - v17));
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableStringRef resolveAbsoluteURLStringBuffer(const __CFAllocator *a1, const __CFString *a2, unsigned int a3, uint64_t a4, const __CFString *a5, unsigned int a6, CFIndex *a7, UniChar *a8)
{
  v121 = *MEMORY[0x1E69E9840];
  memset(v118, 0, 512);
  numChars = 0;
  Mutable = CFStringCreateMutable(a1, 0);
  theString = Mutable;
  if ((a6 & 1) == 0 || *a7 == -1)
  {
    v20 = 0;
  }

  else
  {
    v17 = Mutable;
    v18 = a7[1];
    v122.length = v18;
    v122.location = *a7;
    CFStringGetCharacters(a5, v122, a8);
    if (v18 < 1025)
    {
      __memcpy_chk();
      v19 = numChars + v18;
      numChars += v18;
    }

    else
    {
      CFStringAppendCharacters(v17, a8, v18);
      v19 = numChars;
    }

    if (v19 >= 1024)
    {
      CFStringAppendCharacters(theString, v118, v19);
      v19 = 0;
      numChars = 0;
    }

    *(v118 + v19) = 58;
    v20 = ++numChars;
  }

  if ((a3 & 0x1E) != 0)
  {
    Length = CFStringGetLength(a2);
    v22 = numChars;
    if (Length >= 1025)
    {
      if (numChars)
      {
        CFStringAppendCharacters(theString, v118, numChars);
        numChars = 0;
      }

      CFStringAppend(theString, a2);
      goto LABEL_158;
    }

    v34 = Length;
    if (numChars + Length >= 1025)
    {
      CFStringAppendCharacters(theString, v118, numChars);
      v22 = 0;
      numChars = 0;
    }

    v35 = v118 + v22;
    v125.location = 0;
    v125.length = v34;
    CFStringGetCharacters(a2, v125, v35);
    v36 = numChars + v34;
LABEL_156:
    numChars = v36;
    if (!v36)
    {
      goto LABEL_160;
    }

    goto LABEL_159;
  }

  if (v20 >= 1023)
  {
    CFStringAppendCharacters(theString, v118, v20);
    v20 = 0;
    numChars = 0;
  }

  *(v118 + 2 * v20) = 3080239;
  numChars += 2;
  v23 = _netLocationRange(a6, a7);
  if (v23 != -1)
  {
    v25 = v24;
    v123.location = v23;
    v123.length = v25;
    CFStringGetCharacters(a5, v123, a8);
    v26 = numChars;
    if (v25 < 1025)
    {
      if (numChars + v25 >= 1025)
      {
        CFStringAppendCharacters(theString, v118, numChars);
        v26 = 0;
        numChars = 0;
      }

      memcpy(v118 + 2 * v26, a8, 2 * v25);
      numChars += v25;
      if ((a3 & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    }

    if (numChars)
    {
      CFStringAppendCharacters(theString, v118, numChars);
      numChars = 0;
    }

    CFStringAppendCharacters(theString, a8, v25);
  }

  if ((a3 & 0x20) == 0)
  {
LABEL_23:
    if ((a6 & 0x20) != 0)
    {
      v27 = 0;
      v28 = 32;
      v29 = a6;
      do
      {
        v30 = v28;
        v28 >>= 1;
        v27 += v29 & 1;
        v29 >>= 1;
      }

      while ((v30 & 2) == 0);
      v31 = &a7[2 * v27];
      if (*v31 != -1)
      {
        v32 = v31[1];
        v124.length = v32;
        v124.location = *v31;
        CFStringGetCharacters(a5, v124, a8);
        v33 = numChars;
        if (v32 < 1025)
        {
          if (numChars + v32 >= 1025)
          {
            CFStringAppendCharacters(theString, v118, numChars);
            v33 = 0;
            numChars = 0;
          }

          memcpy(v118 + 2 * v33, a8, 2 * v32);
          numChars += v32;
        }

        else
        {
          if (numChars)
          {
            CFStringAppendCharacters(theString, v118, numChars);
            numChars = 0;
          }

          CFStringAppendCharacters(theString, a8, v32);
        }
      }
    }

    if ((a3 & 0x1C0) != 0)
    {
      if ((a3 & 0x40) == 0)
      {
        if ((a6 & 0x40) != 0)
        {
          v64 = 0;
          v65 = 64;
          v66 = a6;
          do
          {
            v67 = v65;
            v65 >>= 1;
            v64 += v66 & 1;
            v66 >>= 1;
          }

          while ((v67 & 2) == 0);
          v68 = &a7[2 * v64];
          v69 = *v68;
          if (*v68 != -1)
          {
            v70 = v68[1];
            v71 = numChars;
            if (numChars >= 1024)
            {
              CFStringAppendCharacters(theString, v118, numChars);
              v71 = 0;
              numChars = 0;
            }

            *(v118 + v71) = 59;
            ++numChars;
            v128.location = v69;
            v128.length = v70;
            CFStringGetCharacters(a5, v128, a8);
            v72 = numChars;
            if (v70 <= 1024)
            {
              if (numChars + v70 >= 1025)
              {
                CFStringAppendCharacters(theString, v118, numChars);
                v72 = 0;
                numChars = 0;
              }

              memcpy(v118 + 2 * v72, a8, 2 * v70);
              numChars += v70;
            }

            else
            {
              if (numChars)
              {
                CFStringAppendCharacters(theString, v118, numChars);
                numChars = 0;
              }

              CFStringAppendCharacters(theString, a8, v70);
            }
          }
        }

        if ((a3 & 0x80) == 0)
        {
          goto LABEL_168;
        }

        v88 = 0;
        v89 = 128;
        v90 = a3;
        do
        {
          v91 = v89;
          v89 >>= 1;
          v88 += v90 & 1;
          v90 >>= 1;
        }

        while ((v91 & 2) == 0);
        v92 = (a4 + 16 * v88);
        v93 = *v92;
        if (*v92 == -1)
        {
LABEL_168:
          if ((a6 & 0x80) == 0)
          {
            goto LABEL_146;
          }

          v100 = 0;
          v101 = 128;
          do
          {
            v102 = v101;
            v101 >>= 1;
            v100 += a6 & 1;
            a6 >>= 1;
          }

          while ((v102 & 2) == 0);
          v103 = &a7[2 * v100];
          v104 = *v103;
          if (*v103 == -1)
          {
LABEL_146:
            if ((a3 & 0x100) == 0)
            {
              goto LABEL_158;
            }

            v110 = 0;
            v111 = 256;
            do
            {
              v112 = v111;
              v111 >>= 1;
              v110 += a3 & 1;
              a3 >>= 1;
            }

            while ((v112 & 2) == 0);
            v113 = (a4 + 16 * v110);
            v114 = *v113;
            if (*v113 == -1)
            {
              goto LABEL_158;
            }

            v63 = v113[1];
            v115 = numChars;
            if (numChars >= 1024)
            {
              CFStringAppendCharacters(theString, v118, numChars);
              v115 = 0;
              numChars = 0;
            }

            *(v118 + v115) = 35;
            ++numChars;
            v133.location = v114;
            v133.length = v63;
            CFStringGetCharacters(a2, v133, a8);
            v80 = numChars;
            if (v63 <= 1024)
            {
              goto LABEL_153;
            }

LABEL_98:
            if (v80)
            {
              CFStringAppendCharacters(theString, v118, v80);
              numChars = 0;
            }

            v81 = theString;
            v82 = a8;
            v83 = v63;
            goto LABEL_109;
          }

          v105 = v103[1];
          v106 = numChars;
          if (numChars >= 1024)
          {
            CFStringAppendCharacters(theString, v118, numChars);
            v106 = 0;
            numChars = 0;
          }

          *(v118 + v106) = 63;
          ++numChars;
          v132.location = v104;
          v132.length = v105;
          CFStringGetCharacters(a5, v132, a8);
          v107 = numChars;
          if (v105 > 1024)
          {
            if (numChars)
            {
              CFStringAppendCharacters(theString, v118, numChars);
              numChars = 0;
            }

            v97 = theString;
            v98 = a8;
            v99 = v105;
            goto LABEL_136;
          }

          if (numChars + v105 >= 1025)
          {
            CFStringAppendCharacters(theString, v118, numChars);
            v107 = 0;
            numChars = 0;
          }

          memcpy(v118 + 2 * v107, a8, 2 * v105);
          v108 = numChars + v105;
        }

        else
        {
          v94 = v92[1];
          v95 = numChars;
          if (numChars >= 1024)
          {
            CFStringAppendCharacters(theString, v118, numChars);
            v95 = 0;
            numChars = 0;
          }

          *(v118 + v95) = 63;
          ++numChars;
          v131.location = v93;
          v131.length = v94;
          CFStringGetCharacters(a2, v131, a8);
          v96 = numChars;
          if (v94 > 1024)
          {
            if (numChars)
            {
              CFStringAppendCharacters(theString, v118, numChars);
              numChars = 0;
            }

            v97 = theString;
            v98 = a8;
            v99 = v94;
LABEL_136:
            CFStringAppendCharacters(v97, v98, v99);
            goto LABEL_146;
          }

          if (numChars + v94 >= 1025)
          {
            CFStringAppendCharacters(theString, v118, numChars);
            v96 = 0;
            numChars = 0;
          }

          memcpy(v118 + 2 * v96, a8, 2 * v94);
          v108 = numChars + v94;
        }

        numChars = v108;
        goto LABEL_146;
      }

      v77 = 0;
      v78 = 64;
      do
      {
        v79 = v78;
        v78 >>= 1;
        v77 += a3 & 1;
        a3 >>= 1;
      }

      while ((v79 & 2) == 0);
      v61 = *(a4 + 16 * v77) - 1;
      v63 = CFStringGetLength(a2) - v61;
LABEL_97:
      v129.location = v61;
      v129.length = v63;
      CFStringGetCharacters(a2, v129, a8);
      v80 = numChars;
      if (v63 < 1025)
      {
LABEL_153:
        if (v80 + v63 >= 1025)
        {
          CFStringAppendCharacters(theString, v118, v80);
          v80 = 0;
          numChars = 0;
        }

        memcpy(v118 + 2 * v80, a8, 2 * v63);
        v36 = numChars + v63;
        goto LABEL_156;
      }

      goto LABEL_98;
    }

    v73 = 0;
    for (i = 256; i != 32; i >>= 1)
    {
      if ((i & a6) != 0)
      {
        v73 = i;
      }
    }

    if (v73)
    {
      if ((v73 & a6) != 0)
      {
        if (v73)
        {
          v75 = 0;
        }

        else
        {
          LODWORD(v75) = 0;
          do
          {
            v76 = v73;
            v73 >>= 1;
            v75 = (a6 & 1) + v75;
            a6 >>= 1;
          }

          while ((v76 & 2) == 0);
        }

        v84 = a7[2 * v75];
      }

      else
      {
        v84 = -1;
      }

      v85 = CFStringGetLength(a5) - v84;
      v130.location = v84 - 1;
      v86 = v85 + 1;
      v130.length = v85 + 1;
      CFStringGetCharacters(a5, v130, a8);
      v87 = numChars;
      if (v85 < 1024)
      {
        if (numChars + v86 > 1024)
        {
          CFStringAppendCharacters(theString, v118, numChars);
          v87 = 0;
          numChars = 0;
        }

        memcpy(v118 + 2 * v87, a8, 2 * v86);
        v36 = numChars + v86;
        goto LABEL_156;
      }

      if (numChars)
      {
        CFStringAppendCharacters(theString, v118, numChars);
        numChars = 0;
      }

      v81 = theString;
      v82 = a8;
      v83 = v85 + 1;
LABEL_109:
      CFStringAppendCharacters(v81, v82, v83);
    }

LABEL_158:
    v36 = numChars;
    if (!numChars)
    {
LABEL_160:
      result = theString;
      goto LABEL_161;
    }

LABEL_159:
    CFStringAppendCharacters(theString, v118, v36);
    goto LABEL_160;
  }

LABEL_37:
  v37 = 0;
  v38 = 32;
  do
  {
    v39 = v38;
    v38 >>= 1;
    v37 += a3 & 1;
    a3 >>= 1;
  }

  while ((v39 & 2) == 0);
  v40 = (a4 + 16 * v37);
  v41 = *v40;
  v42 = v40[1];
  if ((a6 & 0x20) == 0)
  {
    v43 = 0;
LABEL_52:
    v49 = 1;
LABEL_53:
    v135.location = v41;
    v135.length = v42;
    v55 = CFStringCreateWithSubstring(a1, a2, v135);
    goto LABEL_54;
  }

  v44 = 0;
  v45 = 32;
  do
  {
    v46 = v45;
    v45 >>= 1;
    v44 += a6 & 1;
    a6 >>= 1;
  }

  while ((v46 & 2) == 0);
  v47 = &a7[2 * v44];
  location = v47->location;
  v43 = v47->length;
  if (v47->location == -1)
  {
    goto LABEL_52;
  }

  if (!v42)
  {
    v55 = CFStringCreateWithSubstring(a1, a5, *v47);
    v49 = 0;
    goto LABEL_54;
  }

  v49 = 0;
  if (CFStringGetCharacterAtIndex(a2, v41) == 47 || !v43)
  {
    goto LABEL_53;
  }

  Typed = CFAllocatorAllocateTyped(a1, 2 * (v43 + v42) + 2, 0x1000040BDFB0063, 0);
  if (Typed)
  {
    v51 = Typed;
    v126.location = location;
    v126.length = v43;
    CFStringGetCharacters(a5, v126, Typed);
    v52 = 2 * v43;
    while (1)
    {
      v53 = &v51[v52];
      v52 -= 2;
      if (!v52)
      {
        break;
      }

      if (*(v53 - 1) == 47)
      {
        v54 = &v51[v52 + 2];
        goto LABEL_165;
      }
    }

    if (*v51 == 47)
    {
      v54 = v53;
    }

    else
    {
      v54 = v51;
    }

LABEL_165:
    v134.location = v41;
    v134.length = v42;
    CFStringGetCharacters(a2, v134, v54);
    v117 = &v54[v42];
    *v117 = 0;
    v55 = _resolvedPath(v51, v117, 47, 0, 0, a1);
    v49 = 0;
    v43 = 1;
LABEL_54:
    if (((v49 & 1) != 0 || !v43) && CFStringGetCharacterAtIndex(v55, 0) != 47)
    {
      v56 = numChars;
      if (numChars >= 1024)
      {
        CFStringAppendCharacters(theString, v118, numChars);
        v56 = 0;
        numChars = 0;
      }

      *(v118 + v56) = 47;
      ++numChars;
    }

    v57 = CFStringGetLength(v55);
    v58 = numChars;
    if (v57 < 1025)
    {
      v59 = v57;
      if (numChars + v57 >= 1025)
      {
        CFStringAppendCharacters(theString, v118, numChars);
        v58 = 0;
        numChars = 0;
      }

      v60 = v118 + v58;
      v127.location = 0;
      v127.length = v59;
      CFStringGetCharacters(v55, v127, v60);
      numChars += v59;
    }

    else
    {
      if (numChars)
      {
        CFStringAppendCharacters(theString, v118, numChars);
        numChars = 0;
      }

      CFStringAppend(theString, v55);
    }

    CFRelease(v55);
    v61 = v42 + v41;
    v62 = CFStringGetLength(a2);
    v63 = v62 - v61;
    if (v62 > v61)
    {
      goto LABEL_97;
    }

    goto LABEL_158;
  }

  result = theString;
  if (theString)
  {
    CFRelease(theString);
    result = 0;
  }

LABEL_161:
  v116 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _NSIsNSCFConstantString(uint64_t a1)
{
  if (!a1)
  {
    return a1 & 1;
  }

  v1 = a1;
  MethodImplementation = object_getMethodImplementation();
  if (MethodImplementation == MEMORY[0x1E69E58E8])
  {
    objc_opt_class();
    LOBYTE(a1) = objc_opt_isKindOfClass();
    return a1 & 1;
  }

  return MethodImplementation(v1, sel_isNSCFConstantString__);
}

uint64_t CFUniCharGetUnicodePropertyDataForPlane(unsigned int a1, unsigned int a2)
{
  v2 = &__CFUniCharUnicodePropertyTable + 16 * a1;
  if (*v2 <= a2)
  {
    return 0;
  }

  else
  {
    return *(*(v2 + 1) + 8 * a2);
  }
}

CFHashCode __CFURLHash(CFURLRef anURL)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    __CFURLHash_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {

    return [(__CFURL *)anURL hash];
  }

  else if (anURL)
  {
    v3 = CFURLGetString(anURL);

    return CFHash(v3);
  }

  else
  {
    return 0;
  }
}

uint64_t __CFURLEqual(uint64_t a1, uint64_t a2)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    __CFURLEqual_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if (a1 != a2)
    {
      return [a1 isEqual:a2];
    }

    return 1;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v5 = *(a2 + 16) ^ *(a1 + 16);
  if ((v5 & 0x20000) == 0 && (v5 & 0xE0006DFF) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  if (!v6)
  {
    if (v7)
    {
      return 0;
    }

LABEL_16:
    v8 = CFURLGetString(a1);
    v9 = CFURLGetString(a2);

    return CFEqual(v8, v9);
  }

  if (!v7)
  {
    return 0;
  }

  result = CFEqual(v6, v7);
  if (result)
  {
    goto LABEL_16;
  }

  return result;
}

xpc_object_t _CFXPCCreateXPCObjectFromCFObject(__CFString *a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_58;
  }

  v2 = CFGetTypeID(a1);
  if (CFNullGetTypeID() == v2)
  {
    v3 = *MEMORY[0x1E69E9840];

    return xpc_null_create();
  }

  if (CFBooleanGetTypeID() == v2)
  {
    v5 = *MEMORY[0x1E69E9840];

    return xpc_BOOL_create(&__kCFBooleanTrue == a1);
  }

  if (v2 == 7)
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length + 1, 0x8000100u);
    if (MaximumSizeForEncoding != -1)
    {
      v8 = MaximumSizeForEncoding;
      v9 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
      if (v9)
      {
        v10 = v9;
        if (CFStringGetCString(a1, v9, v8, 0x8000100u))
        {
          v11 = xpc_string_create(v10);
        }

        else
        {
          v11 = 0;
        }

        free(v10);
        goto LABEL_59;
      }
    }

    goto LABEL_58;
  }

  if (CFDataGetTypeID() == v2)
  {
    DispatchData = _CFDataCreateDispatchData(a1);
    v13 = xpc_data_create_with_dispatch_data(DispatchData);
    dispatch_release(DispatchData);
    v14 = *MEMORY[0x1E69E9840];
    return v13;
  }

  if (v2 != 42)
  {
    if (v2 == 22)
    {
      if (CFNumberIsFloatType(a1))
      {
        *&valuePtr.byte0 = 0;
        if (CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr))
        {
          v15 = xpc_double_create(*&valuePtr.byte0);
LABEL_44:
          v11 = v15;
          goto LABEL_59;
        }
      }

      else
      {
        *&valuePtr.byte0 = 0;
        if (CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr))
        {
          v15 = xpc_int64_create(*&valuePtr.byte0);
          goto LABEL_44;
        }
      }

LABEL_58:
      v11 = 0;
      goto LABEL_59;
    }

    if (CFUUIDGetTypeID() == v2)
    {
      valuePtr = CFUUIDGetUUIDBytes(a1);
      v15 = xpc_uuid_create(&valuePtr.byte0);
      goto LABEL_44;
    }

    if (v2 == 18)
    {
      *&valuePtr.byte0 = xpc_dictionary_create(0, 0, 0);
      if (!*&valuePtr.byte0)
      {
        goto LABEL_58;
      }

      Count = CFDictionaryGetCount(a1);
      CFDictionaryApplyFunction(a1, __CFXPCDictionaryApplier, &valuePtr);
      v24 = xpc_dictionary_get_count(*&valuePtr.byte0);
      v11 = *&valuePtr.byte0;
    }

    else
    {
      if (v2 != 19)
      {
        if (CFURLGetTypeID() != v2)
        {
          goto LABEL_58;
        }

        v11 = CFURLGetString(a1);
        if (!v11)
        {
          goto LABEL_59;
        }

        v26 = CFURLGetBaseURL(a1);
        if (!v26)
        {
          v26 = &__kCFNull;
        }

        v27 = _CFXPCCreateXPCObjectFromCFObject(v26);
        if (!v27)
        {
          goto LABEL_58;
        }

        v28 = v27;
        v11 = _CFXPCCreateXPCObjectFromCFObject(v11);
        if (!v11)
        {
          xpc_release(v28);
          goto LABEL_59;
        }

        memset(uu, 0, sizeof(uu));
        if (uuid_parse("C3853DCC-9776-4114-B6C1-FD9F51944A6D", uu) || (v30 = xpc_uuid_create(uu)) == 0)
        {
          xpc_release(v11);
          v25 = v28;
          goto LABEL_49;
        }

        v31 = v30;
        *&valuePtr.byte0 = "com.apple.CFURL.magic";
        *&valuePtr.byte8 = "com.apple.CFURL.string";
        v36 = "com.apple.CFURL.base";
        values[0] = v30;
        values[1] = v11;
        values[2] = v28;
        v32 = xpc_dictionary_create(&valuePtr, values, 3uLL);
        v33 = v11;
        v11 = v32;
        xpc_release(v33);
        xpc_release(v28);
        xpc_release(v31);
        if (!v11 || xpc_dictionary_get_count(v11) == 3)
        {
          goto LABEL_59;
        }

LABEL_48:
        v25 = v11;
LABEL_49:
        xpc_release(v25);
        goto LABEL_58;
      }

      v11 = xpc_array_create(0, 0);
      if (!v11)
      {
LABEL_59:
        v29 = *MEMORY[0x1E69E9840];
        return v11;
      }

      Count = CFArrayGetCount(a1);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          v22 = _CFXPCCreateXPCObjectFromCFObject(ValueAtIndex);
          if (v22)
          {
            v23 = v22;
            xpc_array_append_value(v11, v22);
            xpc_release(v23);
          }
        }
      }

      v24 = xpc_array_get_count(v11);
    }

    if (v24 == Count)
    {
      goto LABEL_59;
    }

    goto LABEL_48;
  }

  v16 = CFDateGetAbsoluteTime(a1) + 978307200.0;
  if (fabs(v16) <= 9223372040.0)
  {
    v18 = *MEMORY[0x1E69E9840];

    return xpc_date_create((v16 * 1000000000.0));
  }

  else
  {
    v17 = *MEMORY[0x1E69E9840];

    return _CFXPCCreateXPCObjectFromOutOfRangeCFTimeInterval(v16);
  }
}

unint64_t ___CFBasicHashFindBucket_Exponential_Indirect@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 26);
  v5 = __CFBasicHashTableSizes[v4];
  v6 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 49) & 0x1FLL] + 8 * ((*(a1 + 32) >> 44) & 0x1FLL));
  result = a2;
  if (v6)
  {
    result = v6(a2);
  }

  v28 = a2;
  if (v5 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  if (result / v5 % v5)
  {
    v9 = result / v5 % v5;
  }

  else
  {
    v9 = v5 - 1;
  }

  v10 = __CFBasicHashPrimitiveRoots[v4];
  v11 = 48;
  if ((*(a1 + 18) & 4) == 0)
  {
    v11 = 40;
  }

  v12 = *(a1 + v11);
  v13 = result % v5;
  v14 = -1;
  v15 = v10;
  v16 = result % v5;
  while (1)
  {
    v17 = *(v12 + 8 * v16);
    switch(v17)
    {
      case -1:
        if (v14 == -1)
        {
          v14 = v16;
        }

        goto LABEL_27;
      case 0:
        v21 = a3;
        a3[1] = 0;
        a3[2] = 0;
        if (v14 == -1)
        {
          v22 = v16;
        }

        else
        {
          v22 = v14;
        }

        *a3 = v22;
        goto LABEL_51;
      case 2814029233:
        v17 = 0;
        break;
    }

    if (v17 == 2780474809)
    {
      v18 = -1;
    }

    else
    {
      v18 = v17;
    }

    v19 = *(*(CFBasicHashCallBackPtrs + (HIBYTE(*(a1 + 32)) & 0xF8)) + 8 * ((*(a1 + 32) >> 54) & 0x1FLL));
    if (v19)
    {
      result = v19(v18);
      v18 = result;
    }

    if (v18 == v28)
    {
      break;
    }

    v20 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 29) & 0x1FLL] + 8 * ((*(a1 + 32) >> 24) & 0x1FLL));
    if (v20)
    {
      result = v20(v18);
      if (result)
      {
        goto LABEL_38;
      }
    }

LABEL_27:
    v16 = v13 + v15 * v9;
    if (v5 <= v16)
    {
      v16 %= v5;
    }

    v15 *= v10;
    if (v5 <= v15)
    {
      v15 %= v5;
    }

    if (!--v8)
    {
      v17 = 0;
      v21 = a3;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = v14;
      goto LABEL_51;
    }
  }

  v18 = v28;
LABEL_38:
  v21 = a3;
  *a3 = v16;
  v23 = *(*(a1 + 40) + 8 * v16);
  if (v23 == 2814029233)
  {
    v23 = 0;
  }

  else if (v23 == 2780474809)
  {
    v23 = -1;
  }

  a3[1] = v18;
  a3[2] = v23;
  v24 = *(a1 + 18);
  if ((v24 & 0x18) != 0)
  {
    v25 = *(a1 + 40 + (v24 & 0x18));
    v26 = (v24 >> 5) & 3;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v17 = *(v25 + 4 * v16);
      }

      else
      {
        v17 = *(v25 + 8 * v16);
      }
    }

    else if (v26)
    {
      v17 = *(v25 + 2 * v16);
    }

    else
    {
      v17 = *(v25 + v16);
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_51:
  v21[3] = v17;
  return result;
}

unint64_t *_NSSetI_mutableCopyWithZone(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1[1];
  v4 = v3 & 0x3FFFFFFFFFFFFFFLL;
  if ((v3 & 0x3FFFFFFFFFFFFFELL) != 0)
  {
    v5 = v3 & 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  v6 = MEMORY[0x1EEE9AC00](v5, a2);
  v8 = &v13 - v7;
  v13 = 0;
  if (v4 >= 0x101)
  {
    v8 = _CFCreateArrayStorage(v6, 0, &v13);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [a1 getObjects:v8 count:{v4, v13, v14}];
  v10 = __NSSetM_new(v8, v4, 0);
  free(v9);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __RELEASE_OBJECTS_IN_THE_ORDEREDSET__(uint64_t a1, int a2)
{
  v3 = &OBJC_IVAR_____NSFrozenOrderedSetM_storage;
  if (a2 == 1)
  {
    v3 = &OBJC_IVAR_____NSOrderedSetM_storage;
  }

  v4 = a1 + *v3;
  v5 = *(v4 + 8);
  if (*v4)
  {
    v7 = *(v4 + 8);
    CFRelease(*v4);
    v2 = vars8;
  }

  return MEMORY[0x1EEE66BB8]();
}

unint64_t CFStringEncodingUnicodeToBytes(uint64_t a1, unsigned int a2, unsigned __int16 *a3, uint64_t a4, uint64_t *a5, unsigned int *a6, uint64_t a7, uint64_t *a8)
{
  v10 = a6;
  v12 = a3;
  v13 = a2;
  v81[1] = *MEMORY[0x1E69E9840];
  if (a1 == 134217984)
  {
    v81[0] = 0;
    v80 = 0;
    if ((a2 & 0xC0) != 0)
    {
      CFUniCharDecompose(a3, a4, v81, a6, a7, &v80, 1, 2, (a2 & 0x80) != 0);
    }

    else
    {
      v18 = CFStringEncodingUnicodeToBytes___CFToUTF8;
      if (!CFStringEncodingUnicodeToBytes___CFToUTF8)
      {
        v18 = **__CFGetConverter(134217984);
        CFStringEncodingUnicodeToBytes___CFToUTF8 = v18;
      }

      v81[0] = (v18)(0, v12, a4, v10, a7, &v80);
    }

    if (a5)
    {
      *a5 = v81[0];
    }

    if (a8)
    {
      *a8 = v80;
    }

    if (a4 == v81[0])
    {
      result = 0;
    }

    else if (a7 < 1 || a7 - v80 > 9 || (v20 = (v12 + 2 * v81[0]), v21 = *v20 & 0xFC00, v21 == 56320) || v21 == 55296 && (a4 - v81[0] == 1 || v20[1] - 57344 < 0xFFFFFC00))
    {
      result = 1;
    }

    else
    {
      result = 2;
    }

    goto LABEL_133;
  }

  v14 = __CFGetConverter(a1);
  v81[0] = 0;
  if (!v14)
  {
    result = 3;
    goto LABEL_133;
  }

  v15 = v14;
  if ((v13 & 8) != 0)
  {
    v16 = *v14;
    v17 = 0;
    if (v13)
    {
      v79 = 0;
    }

    else
    {
      v79 = *(v16 + 64);
    }
  }

  else
  {
    v16 = *v14;
    v79 = *(*v14 + 64);
    if ((v13 & 0x20) != 0)
    {
      v17 = 0;
    }

    else
    {
      v17 = *(v16 + 56);
      v13 |= 0x10u;
    }
  }

  v22 = *(v16 + 20);
  if (v22 == 4)
  {
    result = __CFStringEncodingPlatformUnicodeToBytes();
    goto LABEL_133;
  }

  if (v22 == 5)
  {
    result = __CFStringEncodingICUToBytes(v14[1], v13, v12, a4, a5, v10, a7, a8);
    goto LABEL_133;
  }

  v77 = v13;
  if (a4 >= 1)
  {
    v72 = v17;
    v73 = v12;
    v23 = 0;
    v24 = 0;
    v25 = HIBYTE(v77);
    v75 = v14;
    v76 = v10;
    while (1)
    {
      if (a7 && a7 <= v23)
      {
        goto LABEL_114;
      }

      v26 = v15[1];
      if (v26)
      {
        if (a7)
        {
          v27 = a7 - v23;
        }

        else
        {
          v27 = 0;
        }

        v28 = v26(v15, v77, v12 + 2 * v24, a4 - v24, v10 + v23, v27, v81);
      }

      else
      {
        if (a7)
        {
          v29 = a7 - v23;
        }

        else
        {
          v29 = 0;
        }

        v28 = (**v15)(v77, v12 + 2 * v24, a4 - v24, v10 + v23, v29, v81);
      }

      v30 = v28 + v24;
      v31 = a4 - (v28 + v24);
      if (a4 <= v28 + v24)
      {
        v24 += v28;
      }

      else
      {
        v32 = v25;
        v74 = v28;
        v80 = 0;
        v33 = (v12 + 2 * v30);
        if (v79 && v30 >= 1 && (v34 = a4 - (v28 + v24), v35 = v79(*v33), v31 = v34, v35))
        {
          if (v72)
          {
            v71 = v32;
            v70 = a8;
            v36 = 0;
            v37 = 0;
            v38 = v30;
            do
            {
              v39 = v38;
              v40 = v30 + v36;
              v41 = v79(v33[v36 - 1]);
              v37 += 2;
              --v36;
              if (v40 < 2)
              {
                break;
              }

              v38 = v39 - 1;
            }

            while ((v41 & 1) != 0);
            v42 = &v33[v37 / 0xFFFFFFFFFFFFFFFELL];
            v43 = v81[0] + v23;
            if (*(*v75 + 16) < 2u)
            {
              v23 = v43 - 1;
            }

            else
            {
              v44 = v75[1];
              if (v44)
              {
                v44();
              }

              else
              {
                (**v75)(v77, &v33[v37 / 0xFFFFFFFFFFFFFFFELL], -v36, 0, 0, v81);
              }

              v23 = v43 - v81[0];
            }

            v69 = a4 - v74 - v24;
            if (a7)
            {
              v51 = a7 - v23;
            }

            else
            {
              v51 = 0;
            }

            v52 = v72(v77, v42, v69 - v36, v76 + v23, v51, v81);
            if (v52 < 1)
            {
              if ((v77 & 1) == 0)
              {
                v12 = v73;
                v30 = v74 + v24 + v36;
                result = 1;
                v15 = v75;
                a8 = v70;
                goto LABEL_152;
              }

              v55 = v51;
              v15 = v75;
              if (v71)
              {
                do
                {
                  v24 = v39;
                  if (v39 >= a4)
                  {
                    break;
                  }

                  v58 = v79(*(v73 + 2 * v39++));
                }

                while ((v58 & 1) != 0);
                v81[0] = 1;
                v10 = v76;
                v25 = v71;
                if (a7)
                {
                  *(v76 + v23) = v71;
                }

                v12 = v73;
                a8 = v70;
                goto LABEL_106;
              }

              v56 = (v75[4])(v42 + 1, ~v36 + v69, v76 + v23, v55, v81);
              v57 = v30 + v36;
              v10 = v76;
              v24 = v56 + v57 + 1;
              v12 = v73;
            }

            else
            {
              v53 = v52;
              v54 = v52 + v30 + v36;
              if (v54 < a4)
              {
                a8 = v70;
                v10 = v76;
                if (v79(*(v73 + 2 * v54)))
                {
                  v23 += v81[0];
                  v12 = v73;
                  v30 = v74 + v24 + v53 + v36;
LABEL_150:
                  result = 1;
                  goto LABEL_151;
                }

                v24 = v54;
                v12 = v73;
                v15 = v75;
                goto LABEL_95;
              }

              v24 = v52 + v30 + v36;
              v12 = v73;
              v15 = v75;
              v10 = v76;
            }

            a8 = v70;
LABEL_95:
            v25 = v71;
            goto LABEL_106;
          }

          if (a7)
          {
            if (v81[0] + v23 == a7 || ((v49 = v75[1]) == 0 ? (v50 = (**v75)(v77, v12 + 2 * v30, v34, 0, 0, &v80)) : (v50 = v49()), v31 = v34, v50))
            {
              v23 += v81[0];
              result = 2;
LABEL_151:
              v15 = v75;
              goto LABEL_152;
            }
          }

          if ((v77 & 0x20) != 0)
          {
            v15 = v75;
            v60 = v74 + v24 + 1;
            v10 = v76;
            v25 = v32;
            do
            {
              v24 = v60;
              if (v60 >= a4)
              {
                break;
              }

              v61 = v79(*(v12 + 2 * v60));
              v60 = v24 + 1;
            }

            while ((v61 & 1) != 0);
            goto LABEL_106;
          }

          v23 += v81[0];
          v25 = v32;
          if (!v32)
          {
            if (a7)
            {
              v59 = a7 - v23;
            }

            else
            {
              v59 = 0;
            }

            v15 = v75;
            v24 = (v75[4])(v12 + 2 * v30, v31, v76 + v23, v59, v81) + v30;
            v10 = v76;
            goto LABEL_106;
          }
        }

        else
        {
          if (a7)
          {
            if (v81[0] + v23 == a7 || ((v45 = v75[1], v46 = v31, !v45) ? (v47 = (**v75)(v77, v12 + 2 * v30, v31, 0, 0, &v80)) : (v47 = v45()), v31 = v46, v47))
            {
              v23 += v81[0];
              if ((v77 & 0xFF000001) == 1)
              {
                v81[0] = 0;
                v15 = v75;
                do
                {
                  v66 = (v75[4])(v12 + 2 * v30, a4 - v30, 0, 0, v81);
                  if (!v66)
                  {
                    break;
                  }

                  v67 = v81[0] ? 0 : v66;
                  v30 += v67;
                }

                while (v30 < a4 && v81[0] == 0);
              }

              else
              {
                v15 = v75;
              }

              result = 2 * (v30 < a4);
LABEL_152:
              v24 = v30;
              if (a7)
              {
                goto LABEL_115;
              }

              goto LABEL_128;
            }
          }

          v23 += v81[0];
          if ((v77 & 1) == 0)
          {
            goto LABEL_150;
          }

          v25 = v32;
          if (!v32)
          {
            if (a7)
            {
              v48 = a7 - v23;
            }

            else
            {
              v48 = 0;
            }

            v15 = v75;
            v24 = (v75[4])(v12 + 2 * v30, v31, v76 + v23, v48, v81) + v30;
            v10 = v76;
            v12 = v73;
            goto LABEL_106;
          }
        }

        v24 = v30 + 1;
        v81[0] = 1;
        if (a7)
        {
          v15 = v75;
          v10 = v76;
          *(v76 + v23) = v25;
          goto LABEL_106;
        }

        v15 = v75;
      }

      v10 = v76;
LABEL_106:
      v23 += v81[0];
      if (v24 >= a4)
      {
        goto LABEL_114;
      }
    }
  }

  v24 = 0;
  v23 = 0;
LABEL_114:
  result = 0;
  if (a7)
  {
LABEL_115:
    if (v24 < a4 && !result)
    {
      if ((v77 & 0xFF000001) == 1)
      {
        v81[0] = 0;
        do
        {
          v62 = (v15[4])(v12 + 2 * v24, a4 - v24, 0, 0, v81);
          if (!v62)
          {
            break;
          }

          v63 = v81[0] ? 0 : v62;
          v24 += v63;
        }

        while (v24 < a4 && v81[0] == 0);
      }

      result = 2 * (v24 < a4);
    }
  }

LABEL_128:
  if (a8)
  {
    *a8 = v23;
  }

  if (a5)
  {
    *a5 = v24;
  }

LABEL_133:
  v65 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFURLResourceInfoPtr(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      __CFURLResourceInfoPtr_cold_1();
    }

    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, v1))
    {
      v1 = [v1 _cfurl];
    }

    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      __CFURLResourceInfoPtr_cold_2();
    }

    if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
    {

      return [v1 _resourceInfoPtr];
    }

    else if (v1)
    {
      return atomic_load(v1 + 6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __CFURLBeginResourcePropertyCacheAccess(uint64_t a1)
{
  v2 = __CFURLResourceInfoPtr(a1);

  return MEMORY[0x1EEE00680](a1, v2);
}

void __CFURLSetResourceInfoPtr(atomic_ullong *a1, const void *a2)
{
  if (a1)
  {
    v3 = a1;
    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      __CFURLSetResourceInfoPtr_cold_1();
    }

    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, v3))
    {
      v3 = [(atomic_ullong *)v3 _cfurl];
    }

    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      __CFURLSetResourceInfoPtr_cold_2();
    }

    if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
    {

      [(atomic_ullong *)v3 set_resourceInfoPtr:a2];
    }

    else if (v3)
    {
      v4 = 0;
      atomic_compare_exchange_strong(v3 + 6, &v4, a2);
      if (!v4)
      {

        CFRetain(a2);
      }
    }
  }
}

Boolean CFURLGetFileSystemRepresentation(CFURLRef url, Boolean resolveAgainstBase, UInt8 *buffer, CFIndex maxBufLen)
{
  v6 = resolveAgainstBase;
  v29 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLGetFileSystemRepresentation_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, url))
    {
      url = [(__CFURL *)url _cfurl];
    }

    v8 = [(__CFURL *)url _fileSystemPath:0 resolveAgainstBase:v6 != 0];
    if (!v8)
    {
      goto LABEL_17;
    }

LABEL_16:
    v11 = v8;
    FileSystemRepresentation = CFStringGetFileSystemRepresentation(v8, buffer, maxBufLen);
    CFRelease(v11);
LABEL_18:
    v13 = *MEMORY[0x1E69E9840];
    return FileSystemRepresentation;
  }

  v9 = CFGetAllocator(url);
  if (!url)
  {
LABEL_17:
    FileSystemRepresentation = 0;
    goto LABEL_18;
  }

  v10 = v9;
  if (v6 && CFURLGetBaseURL(url) || CF_IS_OBJC(0x1DuLL, url) || (*(url + 17) & 0x10) == 0)
  {
    if (!CFURLGetBaseURL(url))
    {
      if (CFURLIsFileReferenceURL(url))
      {
        v15 = CFURLCopyPath(url);
        if (v15)
        {
          v16 = v15;
          if (!CFStringGetCString(v15, buffera, 2048, 0x8000100u))
          {
            goto LABEL_31;
          }

          if (*buffera != 0x692F656C69662E2FLL || v27 != 15716)
          {
            goto LABEL_31;
          }

          __endptr = 0;
          strtoll(v28, &__endptr, 10);
          if (*__endptr != 46)
          {
            goto LABEL_31;
          }

          strtoll(__endptr + 1, &__endptr, 10);
          v18 = __endptr;
          if (*__endptr == 47)
          {
            v18 = __endptr + 1;
          }

          if (!*v18)
          {
            ResolveFlags = _CFURLGetQueryResolveFlags(url);
            usedBufLen = 0;
            if (ResolveFlags)
            {
              v22 = [@"/" _pathByInsertingResolveFlags:ResolveFlags];
              v31.length = CFStringGetLength(v22);
              v31.location = 0;
              CFStringGetBytes(v22, v31, 0x8000100u, 0, 0, buffer, maxBufLen, &usedBufLen);
              CFStringGetLength(v22);
            }

            v23 = _FSGetFileSystemRepresentationForFileID();
            CFRelease(v16);
            if (v23)
            {
              FileSystemRepresentation = 1;
              goto LABEL_18;
            }
          }

          else
          {
LABEL_31:
            CFRelease(v16);
          }
        }
      }
    }

    v8 = CFURLCreateStringWithFileSystemPath(v10, url, 0, v6);
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v19 = atomic_load(url + 3);
  v20 = *MEMORY[0x1E69E9840];

  return CanonicalFileURLStringToFileSystemRepresentation(v19, buffer, maxBufLen);
}

uint64_t __CFToUTF8(char a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v6 = a4;
  v7 = a2;
  if (a3 < 1)
  {
LABEL_47:
    if (!a6)
    {
      return v7 - a2;
    }

    goto LABEL_48;
  }

  v8 = &a2[a3];
  v9 = &a4[a5];
  v10 = a2;
  v6 = a4;
  while (1)
  {
    if (a5 && v6 >= v9)
    {
LABEL_46:
      v7 = v10;
      goto LABEL_47;
    }

    v7 = v10 + 1;
    v11 = *v10;
    if (v11 <= 0x7F)
    {
      if (a5)
      {
        *v6 = v11;
      }

      v12 = 1;
      goto LABEL_44;
    }

    if (v11 >> 11 >= 0x1B)
    {
      if (v11 >> 10 > 0x36)
      {
        if ((a1 & 0x80) == 0 && v11 < 0xE000)
        {
          goto LABEL_46;
        }
      }

      else if (v7 < v8 && (v13 = *v7, (v13 & 0xFC00) == 0xDC00))
      {
        v7 = v10 + 2;
        v11 = v13 + (v11 << 10) - 56613888;
      }

      else if ((a1 & 0x80) == 0)
      {
        goto LABEL_46;
      }
    }

    if (!a5)
    {
      if (v11 < 0x10000)
      {
        v14 = 3;
      }

      else
      {
        v14 = 4;
      }

      if (v11 < 0x800)
      {
        v14 = 2;
      }

      if (v11 < 0x80)
      {
        v14 = 1;
      }

      goto LABEL_43;
    }

    if (v11 < 0x10000)
    {
      v14 = 3;
    }

    else
    {
      v14 = 4;
    }

    if (v11 < 0x800)
    {
      v14 = 2;
    }

    if (v11 < 0x80)
    {
      v14 = 1;
    }

    if (v9 - v6 < v14)
    {
      break;
    }

    if (v14 > 2u)
    {
      if (v14 != 3)
      {
        v6[3] = v11 & 0x3F | 0x80;
        v11 >>= 6;
      }

      v6[2] = v11 & 0x3F | 0x80;
      v11 >>= 6;
    }

    else if (v14 == 1)
    {
      goto LABEL_42;
    }

    v6[1] = v11 & 0x3F | 0x80;
    v11 >>= 6;
LABEL_42:
    *v6 = firstByteMark[v14] | v11;
LABEL_43:
    v12 = v14;
LABEL_44:
    v6 += v12;
    v10 = v7;
    if (v7 >= v8)
    {
      goto LABEL_47;
    }
  }

  v16 = -4;
  if (v11 < 0x10000)
  {
    v16 = -2;
  }

  v7 = (v7 + v16);
  if (a6)
  {
LABEL_48:
    *a6 = v6 - a4;
  }

  return v7 - a2;
}

void CFDictionaryRemoveValue(CFMutableDictionaryRef theDict, const void *key)
{
  if (CF_IS_OBJC(0x12uLL, theDict))
  {

    [(__CFDictionary *)theDict removeObjectForKey:key];
  }

  else
  {
    v10 = atomic_load(theDict + 1);
    if ((v10 & 0x40) != 0)
    {
      CFLog(3, @"%s(): immutable collection %p given to mutating function", v4, v5, v6, v7, v8, v9, "void CFDictionaryRemoveValue(CFMutableDictionaryRef, const void *)");
    }

    v11 = atomic_load(theDict + 1);
    if (v11)
    {
      v12 = __CF_KVO_WillChangeSelector_hc;
      if (!__CF_KVO_WillChangeSelector_hc)
      {
        v12 = sel_registerName("willChangeValueForKey:");
        __CF_KVO_WillChangeSelector_hc = v12;
      }

      [theDict v12];
    }

    CFBasicHashRemoveValue(theDict, key);
    v13 = atomic_load(theDict + 1);
    if (v13)
    {
      v14 = __CF_KVO_DidChangeSelector_hc;
      if (!__CF_KVO_DidChangeSelector_hc)
      {
        v14 = sel_registerName("didChangeValueForKey:");
        __CF_KVO_DidChangeSelector_hc = v14;
      }

      [theDict v14];
    }
  }
}

CFStringRef CFURLCopyPath(CFURLRef anURL)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCopyPath_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v2 = [(__CFURL *)anURL _relativePath:1];

    return v2;
  }

  else
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, anURL))
    {
      anURL = [(__CFURL *)anURL _cfurl];
    }

    return _retainedComponentString(anURL, 32, 0, 0);
  }
}

CFStringRef URLPathToPOSIXPath(CFStringRef origString, CFAllocatorRef allocator, CFStringEncoding encoding, int a4)
{
  if (a4)
  {
    v6 = @"/";
  }

  else
  {
    v6 = &stru_1EF068AA8;
  }

  v7 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(allocator, origString, v6, encoding);
  v8 = v7;
  if (!v7)
  {
    return v8;
  }

  Length = CFStringGetLength(v7);
  if (Length < 2)
  {
    return v8;
  }

  v10 = Length - 1;
  if (CFStringGetCharacterAtIndex(v8, Length - 1) != 47)
  {
    return v8;
  }

  v13.location = 0;
  v13.length = v10;
  v11 = CFStringCreateWithSubstring(allocator, v8, v13);
  CFRelease(v8);
  return v11;
}

unint64_t *_CFURLCreateWithURLString(__objc2_class **a1, CFStringRef theString, int a3, const __CFURL *a4)
{
  v6 = a1;
  v101 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    Length = CFStringGetLength(theString);
    *&v97 = theString;
    *(&v98 + 1) = 0;
    *&v99 = Length;
    CharactersPtr = CFStringGetCharactersPtr(theString);
    CStringPtr = 0;
    *(&v97 + 1) = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    }

    *&v98 = CStringPtr;
    *(&v99 + 1) = 0;
    v100 = 0;
    if (Length >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      *buffer = 0u;
      v90 = 0u;
      do
      {
        v15 = v13 + 64;
        if (v13 + 64 <= Length)
        {
          v16 = 64;
        }

        else
        {
          v16 = Length - v13;
        }

        if (v13 < 0 || v16 + v13 > v99)
        {
          v17 = 0;
        }

        else if (*(&v97 + 1))
        {
          v17 = (*(&v97 + 1) + 2 * *(&v98 + 1) + 2 * v13);
        }

        else
        {
          if (v16 > 64)
          {
            v17 = 0;
LABEL_30:
            v25 = v13 + 2;
            if (Length >= v15)
            {
              v26 = v13 + 64;
            }

            else
            {
              v26 = Length;
            }

            v27 = -v26;
            while (2)
            {
              v28 = *v17;
              if (v14)
              {
                if (v28 > 0x7F || (sURLValidCharacters[*v17] & 0x10) == 0)
                {
                  goto LABEL_59;
                }

                --v14;
                goto LABEL_38;
              }

              if (*v17 > 0x5Au)
              {
                v14 = 0;
                if (v28 == 91 || v28 == 93)
                {
LABEL_38:
                  ++v17;
                  ++v25;
                  if (v27 + v25 == 2)
                  {
                    goto LABEL_52;
                  }

                  continue;
                }
              }

              else
              {
                if (v28 == 35)
                {
                  if (v12)
                  {
                    goto LABEL_59;
                  }

                  v14 = 0;
                  v12 = 1;
                  goto LABEL_38;
                }

                if (v28 == 37)
                {
                  if (v25 >= Length)
                  {
                    goto LABEL_59;
                  }

                  v14 = 2;
                  goto LABEL_38;
                }
              }

              break;
            }

            if (v28 > 0x7F || (sURLValidCharacters[*v17] & 1) == 0)
            {
LABEL_59:
              v34 = 0;
              goto LABEL_140;
            }

            v14 = 0;
            goto LABEL_38;
          }

          if (v16 + v13 > v100 || v13 < v11)
          {
            if (v15 >= v99)
            {
              v18 = v99;
            }

            else
            {
              v18 = v13 + 64;
            }

            *(&v99 + 1) = v13;
            v100 = v18;
            v19.location = *(&v98 + 1) + v13;
            v19.length = v18 - v13;
            if (v98)
            {
              v10 = v13;
              if (v19.length)
              {
                v20 = (v98 + v19.location);
                v21 = v13 - v18;
                v22 = buffer;
                do
                {
                  v23 = *v20++;
                  *v22++ = v23;
                  v24 = __CFADD__(v21++, 1);
                }

                while (!v24);
                v10 = v13;
              }
            }

            else
            {
              CFStringGetCharacters(v97, v19, buffer);
              v10 = *(&v99 + 1);
            }
          }

          v17 = &buffer[v13 - v10];
          v11 = v10;
        }

        if (v16 >= 1)
        {
          goto LABEL_30;
        }

LABEL_52:
        v13 += v16;
      }

      while (v13 < Length);
    }

    v6 = a1;
  }

  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  *buffer = 0u;
  v29 = CFStringGetLength(theString);
  *&v97 = theString;
  *(&v98 + 1) = 0;
  *&v99 = v29;
  v30 = CFStringGetCharactersPtr(theString);
  v31 = 0;
  *(&v97 + 1) = v30;
  if (!v30)
  {
    v31 = CFStringGetCStringPtr(theString, 0x600u);
  }

  *&v98 = v31;
  *(&v99 + 1) = 0;
  v100 = 0;
  if (v29 < 1)
  {
    goto LABEL_101;
  }

  if (*(&v97 + 1))
  {
    v32 = 0;
    v33 = *(*(&v97 + 1) + 2 * *(&v98 + 1));
  }

  else if (v31)
  {
    v32 = 0;
    v33 = v31[*(&v98 + 1)];
  }

  else
  {
    v35.location = *(&v98 + 1);
    v35.length = v99 >= 64 ? 64 : v99;
    v100 = v35.length;
    CFStringGetCharacters(v97, v35, buffer);
    v32 = *(&v99 + 1);
    v33 = buffer[-*(&v99 + 1)];
  }

  if (v33 > 0x7Fu || (sURLValidCharacters[v33] & 2) == 0)
  {
    goto LABEL_101;
  }

  v36 = v6;
  v37 = 0;
  while (1)
  {
    v38 = v37 + 64;
    if (v37 + 64 <= v29)
    {
      v39 = 64;
    }

    else
    {
      v39 = v29 - v37;
    }

    if (v37 < 0 || v39 + v37 > v99)
    {
      v40 = 0;
      goto LABEL_91;
    }

    if (*(&v97 + 1))
    {
      v40 = (*(&v97 + 1) + 2 * *(&v98 + 1) + 2 * v37);
      goto LABEL_91;
    }

    if (v39 > 64)
    {
      break;
    }

    if (v39 + v37 > v100 || v37 < v32)
    {
      if (v38 >= v99)
      {
        v38 = v99;
      }

      *(&v99 + 1) = v37;
      v100 = v38;
      v41.location = *(&v98 + 1) + v37;
      v41.length = v38 - v37;
      if (v98)
      {
        if (v41.length)
        {
          v42 = (v98 + v41.location);
          v43 = v37 - v38;
          v44 = buffer;
          do
          {
            v45 = *v42++;
            *v44++ = v45;
            v24 = __CFADD__(v43++, 1);
          }

          while (!v24);
        }
      }

      else
      {
        CFStringGetCharacters(v97, v41, buffer);
      }
    }

    v32 = *(&v99 + 1);
    v40 = &buffer[v37 - *(&v99 + 1)];
LABEL_91:
    if (v39 >= 1)
    {
      goto LABEL_92;
    }

LABEL_97:
    v37 += v39;
    if (v37 >= v29)
    {
      goto LABEL_100;
    }
  }

  v40 = 0;
LABEL_92:
  v46 = 0;
  while (1)
  {
    v47 = v40[v46];
    if (v47 == 58)
    {
      break;
    }

    if (v47 > 0x7F || (sURLValidCharacters[v40[v46]] & 8) == 0)
    {
      goto LABEL_100;
    }

    if (++v46 >= v39)
    {
      goto LABEL_97;
    }
  }

  a4 = 0;
LABEL_100:
  v6 = v36;
LABEL_101:
  LOBYTE(v85) = 0;
  LODWORD(v86) = 0;
  _parseComponents(theString, a4, &v86, __src, &v85);
  v48 = 16 * v85;
  Instance = _CFRuntimeCreateInstance(v6, 0x1DuLL, v48 + 40, 0, v49, v50, v51, v52);
  v34 = Instance;
  if (Instance)
  {
    *(Instance + 4) = v86;
    *(Instance + 5) = 134217984;
    memcpy(Instance + 7, __src, v48);
    Copy = CFStringCreateCopy(v6, theString);
    v55 = v34 + 3;
    atomic_store(Copy, v34 + 3);
    if (a4)
    {
      v56 = CFURLCopyAbsoluteURL(a4);
    }

    else
    {
      v56 = 0;
    }

    v34[4] = v56;
    v57 = CFGetAllocator(v34);
    v58 = atomic_load(v55);
    v59 = CFStringGetLength(v58);
    v87 = 0;
    __src[0] = 0;
    v85 = 0;
    v86 = 0;
    theStringa = 0;
    v83 = 0;
    v60 = atomic_load(v55);
    constructBuffers(v60, buffer, __src, &v86, &v87 + 1, &v87);
    v61 = *(v34 + 4);
    if ((v61 & 0x4000) != 0)
    {
      v85 = 0;
      v63 = __src[0];
      v64 = v86;
      v65 = 2;
      v66 = HIBYTE(v87);
      do
      {
        v67 = *(v34 + 4);
        if ((v67 & v65) != 0)
        {
          v68 = 0;
          v69 = v65;
          do
          {
            v70 = v69;
            v69 >>= 1;
            v68 += v67 & 1;
            v67 >>= 1;
          }

          while ((v70 & 2) == 0);
          v71 = &v34[2 * v68 + 7];
          if (*v71 != -1)
          {
            scanCharacters(v57, &theStringa, &v83, v63, v64, v66, *v71, v71[1] + *v71, &v85, v65, *(v34 + 5));
          }
        }

        v65 *= 2;
      }

      while (v65 < 512);
      v72 = theStringa;
      if (theStringa)
      {
LABEL_121:
        v73 = v83;
        v74 = v34[5];
        if (v83 && !v74)
        {
          _CFURLAllocateExtraDataspace(v34);
          v74 = v34[5];
        }

        if (v74)
        {
          *(v74 + 16) = v73;
        }

        v75 = v59 - v85;
        if (v59 > v85)
        {
          if (v66)
          {
            __CFStringAppendBytes(v72, (v63 + v85), v75, 513);
          }

          else
          {
            CFStringAppendCharacters(v72, (v64 + 2 * v85), v75);
          }
        }

        v76 = v34[5];
        if (v76 || (_CFURLAllocateExtraDataspace(v34), (v76 = v34[5]) != 0))
        {
          v77 = *(v76 + 8);
          if (v77)
          {
            CFRelease(v77);
          }

          v78 = CFGetAllocator(v34);
          *(v34[5] + 8) = CFStringCreateCopy(v78, v72);
        }

        CFRelease(v72);
      }

      else
      {
        *(v34 + 4) |= 0x10000u;
      }
    }

    else
    {
      if (v61)
      {
        v62 = v34[8] + 1;
      }

      else
      {
        v62 = 1;
      }

      v85 = 0;
      v63 = __src[0];
      v64 = v86;
      v66 = HIBYTE(v87);
      if (!scanCharacters(v57, &theStringa, &v83, __src[0], v86, HIBYTE(v87), v62, v59, &v85, 0, *(v34 + 5)))
      {
        *(v34 + 4) |= 0x10000u;
      }

      v72 = theStringa;
      if (theStringa)
      {
        goto LABEL_121;
      }
    }

    if (v87)
    {
      v79 = __src;
      if (!HIBYTE(v87))
      {
        v79 = &v86;
      }

      free(*v79);
    }
  }

LABEL_140:
  v80 = *MEMORY[0x1E69E9840];
  return v34;
}

void _parseComponents(const __CFString *a1, const __CFURL *a2, unsigned int *a3, void *a4, char *a5)
{
  v113 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  v102 = 0;
  v100 = 0;
  v101 = 0;
  constructBuffers(a1, v103, &v101, &v100, &v102 + 1, &v102);
  v11 = HIBYTE(v102);
  if (HIBYTE(v102))
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v104 = 0u;
    v12 = *a3;
    if (Length < 1)
    {
      v17 = 0;
      v14 = 0;
      v18 = 0;
    }

    else
    {
      v13 = 0;
      while (v101[v13] != 35)
      {
        if (Length == ++v13)
        {
          v14 = 0;
          v13 = Length;
          goto LABEL_14;
        }
      }

      v12 |= 0x100u;
      *&v112 = v13 + 1;
      *(&v112 + 1) = ~v13 + Length;
      v14 = 1;
LABEL_14:
      if (v13 < 1)
      {
        v17 = 0;
        v18 = 0u;
      }

      else
      {
        v18 = *v101;
        v17 = 1;
        if ((v18 & 0x80000000) != 0)
        {
          v19 = 0;
          goto LABEL_20;
        }
      }

      Length = v13;
    }

    v19 = (sURLValidCharacters[v18] >> 3) & 1;
    v13 = Length;
LABEL_20:
    v20 = 0;
    if (v18 <= 0x40)
    {
      v19 = 0;
    }

    if (v18 == 58)
    {
      v21 = 1;
    }

    else
    {
      v21 = v19;
    }

    if (v17 && v21)
    {
      v20 = 0;
      while (1)
      {
        v22 = v101[v20];
        if (v22 == 58)
        {
          break;
        }

        if ((v22 & 0x80) == 0 && (sURLValidCharacters[v22] & 8) != 0 && ++v20 < v13)
        {
          continue;
        }

        v20 = 0;
        v23 = 0;
        goto LABEL_34;
      }

      v12 |= 1u;
      *&v104 = 0;
      *(&v104 + 1) = v20;
      ++v14;
      switch(v20)
      {
        case 3:
          if (*v101 != 102 || v101[1] != 116)
          {
            v23 = 4;
            v20 = 3;
            goto LABEL_34;
          }

          v59 = 4;
          v60 = 3;
          v61 = v101[2] == 112;
          v62 = v12 & 0x1FFFFFFF | 0xA0000000;
          v63 = 4;
          v20 = 3;
          break;
        case 4:
          v58 = *v101;
          if (v58 == 100)
          {
            if (v101[1] != 97 || v101[2] != 116)
            {
              goto LABEL_254;
            }

            v59 = 5;
            v60 = 4;
            v61 = v101[3] == 97;
            v87 = 0x80000000;
          }

          else
          {
            if (v58 != 102)
            {
              if (v58 == 104 && v101[1] == 116 && v101[2] == 116 && v101[3] == 112)
              {
                v31 = v12 & 0x1FFFFFFF | 0x20000000;
                v23 = 5;
                v20 = 4;
LABEL_172:
                v12 = v31;
                goto LABEL_34;
              }

LABEL_254:
              v23 = 5;
              v20 = 4;
              goto LABEL_34;
            }

            if (v101[1] != 105 || v101[2] != 108)
            {
              goto LABEL_254;
            }

            v59 = 5;
            v60 = 4;
            v61 = v101[3] == 101;
            v87 = 1610612736;
          }

          v62 = v87 & 0xE0000000 | v12 & 0x1FFFFFFF;
          v63 = 5;
          v20 = 4;
          break;
        case 5:
          if (*v101 != 104 || v101[1] != 116 || v101[2] != 116 || v101[3] != 112 || v101[4] != 115)
          {
            v23 = 6;
            v20 = 5;
            goto LABEL_34;
          }

          v31 = v12 & 0x1FFFFFFF | 0x40000000;
          v23 = 6;
          v20 = 5;
          goto LABEL_172;
        default:
          v23 = v20 + 1;
          goto LABEL_34;
      }

      if (v61)
      {
        v12 = v62;
      }

      else
      {
        v20 = v60;
      }

      if (v61)
      {
        v23 = v63;
      }

      else
      {
        v23 = v59;
      }
    }

    else
    {
      v23 = 0;
    }

LABEL_34:
    if ((v12 & 1) != 0 && (v13 == v23 || v101[v23] != 47))
    {
LABEL_111:
      *a3 = v12 & 0xFFFFFEFF;
      *a4 = 0;
      a4[1] = v20;
      *a5 = 1;
      goto LABEL_207;
    }

    v24 = v12 | 0x4000;
    if (v13 - v23 >= 2 && v101[v23] == 47 && v101[v23 + 1] == 47)
    {
      v25 = v23 + 2;
      if (v23 + 2 >= v13)
      {
        goto LABEL_44;
      }

      v26 = v23 + 2;
      while ((v101[v26] | 0x10) != 0x3F)
      {
        if (v13 == ++v26)
        {
          v26 = v13;
          break;
        }
      }

      if (v26 == v25)
      {
LABEL_44:
        v26 = v23 + 2;
      }

      else
      {
        if (v25 >= v26)
        {
LABEL_234:
          v84 = v14;
        }

        else
        {
          v83 = -1;
          while (v101[v25 + 1 + v83] != 64)
          {
            ++v83;
            if (v23 - v26 + 2 + v83 == -1)
            {
              goto LABEL_234;
            }
          }

          v24 = v12 | 0x4002;
          v84 = v14 + 1;
          *&v105 = v23 + 2;
          if (v25 < v23 + v83 + 3)
          {
            v88 = 0;
            v89 = &v101[v25];
            v90 = v83;
            while (1)
            {
              v91 = *v89++;
              if (v91 == 58)
              {
                break;
              }

              --v88;
              if (--v90 == -1)
              {
                goto LABEL_276;
              }
            }

            v24 = v12 | 0x4006;
            v84 = v14 + 2;
            *&v106 = v23 - v88 + 3;
            *(&v106 + 1) = v90;
            *(&v105 + 1) = -v88;
          }

LABEL_276:
          if ((v24 & 4) == 0)
          {
            *(&v105 + 1) = v83 + 1;
          }

          v25 = v23 + v83 + 4;
        }

        v24 |= 8u;
        v14 = v84 + 1;
        *&v107 = v25;
        if (v26 > v25)
        {
          for (i = v25; i < v26; ++i)
          {
            v97 = v101[i];
            if (v97 == 91)
            {
              if (i < v26)
              {
                while (v101[i] != 93)
                {
                  if (v26 == ++i)
                  {
                    i = v26;
                    goto LABEL_289;
                  }
                }

                v24 |= 0x400u;
              }
            }

            else if (v97 == 58)
            {
              v24 |= 0x10u;
              v14 = v84 + 2;
              *&v108 = i + 1;
              *(&v108 + 1) = v26 - (i + 1);
              *(&v107 + 1) = i - v25;
              break;
            }

LABEL_289:
            ;
          }
        }

        if ((v24 & 0x10) == 0)
        {
          *(&v107 + 1) = v26 - v25;
        }
      }
    }

    else
    {
      v26 = v23;
    }

    if (v26 >= v13)
    {
LABEL_50:
      v27 = v13;
    }

    else
    {
      v27 = v26;
      while (v101[v27] != 63)
      {
        if (v13 == ++v27)
        {
          goto LABEL_50;
        }
      }

      v24 |= 0x80u;
      ++v14;
      *&v111 = v27 + 1;
      *(&v111 + 1) = ~v27 + v13;
    }

    v32 = v27 - v26;
    if (v27 == v26 && (v24 & 0x1E) == 0)
    {
      goto LABEL_160;
    }

    v33 = v24 | 0x20;
    ++v14;
    *&v109 = v26;
    *(&v109 + 1) = v27 - v26;
    if (v32 < 1)
    {
      if (a2 && CFURLHasDirectoryPath(a2))
      {
LABEL_158:
        v24 = v33 | 0x800;
        goto LABEL_160;
      }
    }

    else
    {
      if (v27 <= v26)
      {
        v34 = 0;
      }

      else if (v101[v26] == 37)
      {
        v34 = 1;
      }

      else
      {
        v47 = v26 + 1;
        do
        {
          v48 = v47;
          if (v27 == v47)
          {
            break;
          }

          v49 = v101[v47++];
        }

        while (v49 != 37);
        v34 = v48 < v27;
      }

      if (v32 >= 7 && (v50 = &v101[v26], *v50 == 47) && v50[1] == 46 && v50[2] == 102 && v50[3] == 105 && v50[4] == 108 && v50[5] == 101 && v50[6] == 47)
      {
        v33 = v24 | 0x2020;
      }

      else
      {
        v51 = v24 | 0x8020;
        if (!v34)
        {
          v33 = v51;
        }
      }

      v52 = &v101[v27];
      v53 = v101[v27 - 1];
      if (v53 == 47)
      {
        goto LABEL_158;
      }

      if (v53 == 46)
      {
        if (v32 == 1)
        {
          goto LABEL_158;
        }

        v54 = *(v52 - 2);
        if (v54 == 47 || v54 == 46 && (v32 == 2 || *(v52 - 3) == 47))
        {
          goto LABEL_158;
        }
      }
    }

    v24 = v33;
LABEL_160:
    v55 = 0;
    v56 = 0;
    *a3 = v24;
    *a5 = v14;
    v57 = 1;
    do
    {
      if ((*a3 & v57) != 0)
      {
        *&a4[2 * v56++] = *(&v104 + v55);
      }

      v57 *= 2;
      v55 += 16;
    }

    while (v55 != 144);
    goto LABEL_207;
  }

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v104 = 0u;
  v12 = *a3;
  if (Length < 1)
  {
    v28 = 0;
    v16 = 0;
    v29 = 0;
  }

  else
  {
    v15 = 0;
    while (v100[v15] != 35)
    {
      if (Length == ++v15)
      {
        v16 = 0;
        v15 = Length;
        goto LABEL_56;
      }
    }

    v12 |= 0x100u;
    *&v112 = v15 + 1;
    *(&v112 + 1) = ~v15 + Length;
    v16 = 1;
LABEL_56:
    if (v15 < 1)
    {
      v28 = 0;
      v29 = 0u;
    }

    else
    {
      v29 = *v100;
      v28 = 1;
      if (v29 > 0x7F)
      {
        v30 = 0;
        goto LABEL_78;
      }
    }

    Length = v15;
  }

  v30 = (sURLValidCharacters[v29] >> 3) & 1;
  v15 = Length;
LABEL_78:
  v20 = 0;
  if (v29 <= 0x40)
  {
    v30 = 0;
  }

  if (v29 == 58)
  {
    v35 = 1;
  }

  else
  {
    v35 = v30;
  }

  if (!v28 || !v35)
  {
    v37 = 0;
    goto LABEL_92;
  }

  v20 = 0;
  while (1)
  {
    v36 = v100[v20];
    if (v36 == 58)
    {
      break;
    }

    if (v36 <= 0x7F && (sURLValidCharacters[v100[v20]] & 8) != 0 && ++v20 < v15)
    {
      continue;
    }

    v20 = 0;
    v37 = 0;
    goto LABEL_92;
  }

  v12 |= 1u;
  *&v104 = 0;
  *(&v104 + 1) = v20;
  ++v16;
  switch(v20)
  {
    case 3:
      if (*v100 != 102 || v100[1] != 116)
      {
        v37 = 4;
        v20 = 3;
        break;
      }

      v37 = 4;
      v79 = 3;
      v80 = v100[2] == 112;
      v81 = v12 & 0x1FFFFFFF | 0xA0000000;
      v82 = 4;
      v20 = 3;
      goto LABEL_222;
    case 4:
      v77 = *v100;
      if (v77 != 100)
      {
        if (v77 == 102)
        {
          if (v100[1] == 105 && v100[2] == 108 && v100[3] == 101)
          {
            v78 = 1610612736;
            goto LABEL_259;
          }
        }

        else if (v77 == 104 && v100[1] == 116 && v100[2] == 116 && v100[3] == 112)
        {
          v78 = 0x20000000;
LABEL_259:
          v43 = v78 & 0xE0000000 | v12 & 0x1FFFFFFF;
          v37 = 5;
          v20 = 4;
          goto LABEL_260;
        }

LABEL_264:
        v37 = 5;
        v20 = 4;
        break;
      }

      if (v100[1] != 97 || v100[2] != 116)
      {
        goto LABEL_264;
      }

      v37 = 5;
      v79 = 4;
      v80 = v100[3] == 97;
      v81 = v12 & 0x1FFFFFFF | 0x80000000;
      v82 = 5;
      v20 = 4;
LABEL_222:
      if (v80)
      {
        v12 = v81;
      }

      else
      {
        v20 = v79;
      }

      if (v80)
      {
        v37 = v82;
      }

      break;
    case 5:
      if (*v100 == 104 && v100[1] == 116 && v100[2] == 116 && v100[3] == 112 && v100[4] == 115)
      {
        v43 = v12 & 0x1FFFFFFF | 0x40000000;
        v37 = 6;
        v20 = 5;
LABEL_260:
        v12 = v43;
        break;
      }

      v37 = 6;
      v20 = 5;
      break;
    default:
      v37 = v20 + 1;
      break;
  }

LABEL_92:
  if ((v12 & 1) != 0 && (v15 == v37 || v100[v37] != 47))
  {
    goto LABEL_111;
  }

  v38 = v12 | 0x4000;
  if (v15 - v37 >= 2 && (v39 = &v100[v37], *v39 == 47) && v39[1] == 47)
  {
    v40 = v37 + 2;
    if (v37 + 2 >= v15)
    {
      goto LABEL_102;
    }

    v41 = v37 + 2;
    while ((v100[v41] | 0x10) != 0x3F)
    {
      if (v15 == ++v41)
      {
        v41 = v15;
        break;
      }
    }

    if (v41 == v40)
    {
LABEL_102:
      v41 = v37 + 2;
    }

    else
    {
      if (v40 >= v41)
      {
LABEL_240:
        v86 = v16;
      }

      else
      {
        v85 = 0;
        while (v39[v85 + 2] != 64)
        {
          ++v85;
          if (!(v37 - v41 + 2 + v85))
          {
            goto LABEL_240;
          }
        }

        v38 = v12 | 0x4002;
        v86 = v16 + 1;
        *&v105 = v37 + 2;
        if (v40 < v37 + v85 + 2)
        {
          v92 = 0;
          v93 = v85 - 1;
          v94 = v39 + 2;
          while (1)
          {
            v95 = *v94++;
            if (v95 == 58)
            {
              break;
            }

            --v92;
            if (--v93 == -1)
            {
              goto LABEL_293;
            }
          }

          v38 = v12 | 0x4006;
          v86 = v16 + 2;
          *&v106 = v37 - v92 + 3;
          *(&v106 + 1) = v93;
          *(&v105 + 1) = -v92;
        }

LABEL_293:
        if ((v38 & 4) == 0)
        {
          *(&v105 + 1) = v85;
        }

        v40 = v37 + v85 + 3;
      }

      v38 |= 8u;
      v16 = v86 + 1;
      *&v107 = v40;
      if (v41 > v40)
      {
        for (j = v40; j < v41; ++j)
        {
          v99 = v100[j];
          if (v99 == 91)
          {
            if (j < v41)
            {
              while (v100[j] != 93)
              {
                if (v41 == ++j)
                {
                  j = v41;
                  goto LABEL_306;
                }
              }

              v38 |= 0x400u;
            }
          }

          else if (v99 == 58)
          {
            v38 |= 0x10u;
            v16 = v86 + 2;
            *&v108 = j + 1;
            *(&v108 + 1) = v41 - (j + 1);
            *(&v107 + 1) = j - v40;
            break;
          }

LABEL_306:
          ;
        }
      }

      if ((v38 & 0x10) == 0)
      {
        *(&v107 + 1) = v41 - v40;
      }
    }
  }

  else
  {
    v41 = v37;
  }

  if (v41 >= v15)
  {
LABEL_108:
    v42 = v15;
  }

  else
  {
    v42 = v41;
    while (v100[v42] != 63)
    {
      if (v15 == ++v42)
      {
        goto LABEL_108;
      }
    }

    v38 |= 0x80u;
    ++v16;
    *&v111 = v42 + 1;
    *(&v111 + 1) = ~v42 + v15;
  }

  v44 = v42 - v41;
  if (v42 == v41 && (v38 & 0x1E) == 0)
  {
    goto LABEL_203;
  }

  v45 = v38 | 0x20;
  ++v16;
  *&v109 = v41;
  *(&v109 + 1) = v42 - v41;
  if (v44 < 1)
  {
    if (a2 && CFURLHasDirectoryPath(a2))
    {
LABEL_201:
      v38 = v45 | 0x800;
      goto LABEL_203;
    }
  }

  else
  {
    if (v42 <= v41)
    {
      v46 = 0;
    }

    else if (v100[v41] == 37)
    {
      v46 = 1;
    }

    else
    {
      v64 = v41 + 1;
      do
      {
        v65 = v64;
        if (v42 == v64)
        {
          break;
        }

        v66 = v100[v64++];
      }

      while (v66 != 37);
      v46 = v65 < v42;
    }

    if (v44 >= 7 && (v67 = &v100[v41], *v67 == 47) && v67[1] == 46 && v67[2] == 102 && v67[3] == 105 && v67[4] == 108 && v67[5] == 101 && v67[6] == 47)
    {
      v45 = v38 | 0x2020;
    }

    else
    {
      v68 = v38 | 0x8020;
      if (!v46)
      {
        v45 = v68;
      }
    }

    v69 = &v100[v42];
    v70 = *(v69 - 1);
    if (v70 == 47)
    {
      goto LABEL_201;
    }

    if (v70 == 46)
    {
      if (v44 == 1)
      {
        goto LABEL_201;
      }

      v71 = *(v69 - 2);
      if (v71 == 47 || v71 == 46 && (v44 == 2 || *(v69 - 3) == 47))
      {
        goto LABEL_201;
      }
    }
  }

  v38 = v45;
LABEL_203:
  v72 = 0;
  v73 = 0;
  *a3 = v38;
  *a5 = v16;
  v74 = 1;
  do
  {
    if ((*a3 & v74) != 0)
    {
      *&a4[2 * v73++] = *(&v104 + v72);
    }

    v74 *= 2;
    v72 += 16;
  }

  while (v72 != 144);
LABEL_207:
  if (v102)
  {
    v75 = &v101;
    if (!v11)
    {
      v75 = &v100;
    }

    free(*v75);
  }

  v76 = *MEMORY[0x1E69E9840];
}

void constructBuffers(const __CFString *a1, UInt8 *a2, void *a3, void *a4, char *a5, char *a6)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  CStringPtr = CFStringGetCStringPtr(a1, 0x201u);
  *a3 = CStringPtr;
  if (CStringPtr)
  {
    *a4 = 0;
    *a5 = 1;
LABEL_5:
    *a6 = 0;
    goto LABEL_6;
  }

  CharactersPtr = CFStringGetCharactersPtr(a1);
  *a4 = CharactersPtr;
  if (CharactersPtr)
  {
    *a5 = 0;
    goto LABEL_5;
  }

  usedBufLen[0] = 0;
  Length = CFStringGetLength(a1);
  v21.location = 0;
  v21.length = Length;
  CFStringGetBytes(a1, v21, 0x201u, 0, 0, 0, 0x7FFFFFFFLL, usedBufLen);
  if (usedBufLen[0] == Length)
  {
    if (a2 && Length < 1025)
    {
      v16 = 0;
    }

    else
    {
      a2 = malloc_type_malloc(Length, 0x100004077774924uLL);
      v16 = 1;
    }

    *a6 = v16;
    v22.location = 0;
    v22.length = Length;
    CFStringGetBytes(a1, v22, 0x201u, 0, 0, a2, Length, 0);
    *a3 = a2;
    v19 = 1;
  }

  else
  {
    v17 = 2 * Length;
    if (a2 && v17 < 0x401)
    {
      v18 = 0;
    }

    else
    {
      a2 = malloc_type_malloc(v17, 0x1000040BDFB0063uLL);
      v18 = 1;
    }

    *a6 = v18;
    v23.location = 0;
    v23.length = Length;
    CFStringGetCharacters(a1, v23, a2);
    v19 = 0;
    *a4 = a2;
  }

  *a5 = v19;
LABEL_6:
  v14 = *MEMORY[0x1E69E9840];
}