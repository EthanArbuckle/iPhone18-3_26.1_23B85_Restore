uint64_t _CFURLComponentsGetRangeOfHost(void *a1)
{
  result = [a1 rangeOfHost];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

uint64_t _CFURLComponentsGetRangeOfPort(void *a1)
{
  result = [a1 rangeOfPort];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

uint64_t _CFURLComponentsGetRangeOfPath(void *a1)
{
  result = [a1 rangeOfPath];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

uint64_t _CFURLComponentsGetRangeOfQuery(void *a1)
{
  result = [a1 rangeOfQuery];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

uint64_t _CFURLComponentsGetRangeOfFragment(void *a1)
{
  result = [a1 rangeOfFragment];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

CFArrayRef __CFURLComponentsCopyQueryItems(void *a1, int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = [a1 percentEncodedQueryItems];
  }

  else
  {
    v2 = [a1 queryItems];
  }

  v3 = v2;
  if (!v2)
  {
    Mutable = 0;
LABEL_20:
    v14 = *MEMORY[0x1E69E9840];
    return Mutable;
  }

  if ([v2 count] != 1)
  {
    Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v3 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      v15 = xmmword_1E6D82AC8;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v3);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          values[0] = [v11 name];
          values[1] = [v11 value];
          if ([v11 value])
          {
            v12 = 2;
          }

          else
          {
            v12 = 1;
          }

          v13 = CFDictionaryCreate(&__kCFAllocatorSystemDefault, keys, values, v12, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          CFArrayAppendValue(Mutable, v13);
        }

        v8 = [v3 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v8);
    }

    goto LABEL_20;
  }

  v4 = *MEMORY[0x1E69E9840];

  return CFArrayCreate(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeArrayCallBacks);
}

CFIndex __CFURLComponentsSetQueryItems(void *a1, CFArrayRef theArray, const __CFArray *a3)
{
  v3 = a1;
  if (theArray)
  {
    if (CFArrayGetCount(theArray))
    {
      Count = CFArrayGetCount(theArray);
      result = CFArrayGetCount(a3);
      if (Count == result)
      {
        v8 = +[(NSArray *)NSMutableArray];
        if (CFArrayGetCount(theArray) >= 1)
        {
          v9 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
            v11 = CFArrayGetValueAtIndex(a3, v9);
            if (ValueAtIndex == &__kCFNull)
            {
              ValueAtIndex = &stru_1EF068AA8;
            }

            else
            {
              v12 = CFGetTypeID(ValueAtIndex);
              if (v12 != CFStringGetTypeID())
              {
                ValueAtIndex = &stru_1EF068AA8;
              }
            }

            if (v11 == &__kCFNull)
            {
              v14 = 0;
            }

            else
            {
              v13 = CFGetTypeID(v11);
              if (v13 == CFStringGetTypeID())
              {
                v14 = v11;
              }

              else
              {
                v14 = 0;
              }
            }

            -[NSArray addObject:](v8, "addObject:", [MEMORY[0x1E696AF60] queryItemWithName:ValueAtIndex value:v14]);
            ++v9;
          }

          while (CFArrayGetCount(theArray) > v9);
        }

        return [v3 setQueryItems:v8];
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v15 = &stru_1EF068AA8;
    a1 = v3;
  }

  else
  {
    v15 = 0;
  }

  return [a1 setQuery:v15];
}

uint64_t _CFURLComponentsMatchURLInString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [MEMORY[0x1E696AF20] _matchWithString:a1 requiredComponents:a2 defaultValues:a3 urlPtr:a4];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  return result;
}

uint64_t _CFSocketStreamPairSetAuthenticatesServerCertificate(__CFReadStream *a1, CFWriteStreamRef stream, int a3)
{
  v3 = &kCFBooleanFalse;
  if (a3)
  {
    v3 = &kCFBooleanTrue;
  }

  v4 = *v3;
  if (a1)
  {
    return CFReadStreamSetProperty(a1, @"_kCFStreamPropertySocketSecurityAuthenticatesServerCertificate", v4);
  }

  else
  {
    return CFWriteStreamSetProperty(stream, @"_kCFStreamPropertySocketSecurityAuthenticatesServerCertificate", v4);
  }
}

uint64_t _CFStreamErrorFromError(__CFError *a1)
{
  pthread_mutex_lock(&CFNetworkSupport);
  if ((dword_1EA846F70 & 1) == 0)
  {
    initializeCFNetworkSupport();
  }

  v2 = off_1EA846F88;
  pthread_mutex_unlock(&CFNetworkSupport);
  if (v2)
  {
    return off_1EA846F88(a1);
  }

  Domain = CFErrorGetDomain(a1);
  if (CFEqual(Domain, @"NSPOSIXErrorDomain"))
  {
    v3 = 1;
  }

  else if (CFEqual(Domain, @"NSOSStatusErrorDomain"))
  {
    v3 = 2;
  }

  else if (CFEqual(Domain, @"NSMachErrorDomain"))
  {
    v3 = 11;
  }

  else
  {
    v3 = -1;
  }

  CFErrorGetCode(a1);
  return v3;
}

void *initializeCFNetworkSupport()
{
  dword_1EA846F70 |= 1u;
  off_1EA846F78 = __CFLookupCFNetworkFunction("_CFSocketStreamCreatePair");
  off_1EA846F80 = __CFLookupCFNetworkFunction("_CFErrorCreateWithStreamError");
  result = __CFLookupCFNetworkFunction("_CFStreamErrorFromCFError");
  off_1EA846F88 = result;
  if (!off_1EA846F78)
  {
    result = CFLog(3, @"CoreFoundation: failed to dynamically link symbol _CFSocketStreamCreatePair", v1, v2, v3, v4, v5, v6, v7);
  }

  if (!off_1EA846F80)
  {
    result = CFLog(3, @"CoreFoundation: failed to dynamically link symbol _CFErrorCreateWithStreamError", v1, v2, v3, v4, v5, v6, v7);
  }

  if (!off_1EA846F88)
  {
    result = CFLog(3, @"CoreFoundation: failed to dynamically link symbol _CFStreamErrorFromCFError", v1, v2, v3, v4, v5, v6, v7);
  }

  dword_1EA846F70 |= 2u;
  return result;
}

CFErrorRef _CFStreamCreateErrorFromStreamError(const __CFAllocator *a1, int *a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&CFNetworkSupport);
  if ((dword_1EA846F70 & 1) == 0)
  {
    initializeCFNetworkSupport();
  }

  v4 = off_1EA846F80;
  pthread_mutex_unlock(&CFNetworkSupport);
  if (v4)
  {
    v5 = off_1EA846F80;
    v6 = *MEMORY[0x1E69E9840];

    return v5(a1, a2);
  }

  else
  {
    if (*a2 == 2)
    {
      v8 = a2[2];
      v11 = *MEMORY[0x1E69E9840];
      v10 = &kCFErrorDomainOSStatus;
    }

    else
    {
      if (*a2 != 1)
      {
        keys[0] = @"CFStreamErrorDomainKey";
        values = CFNumberCreate(a1, kCFNumberCFIndexType, a2);
        v13 = CFDictionaryCreate(a1, keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v14 = CFErrorCreate(a1, @"BogusCFStreamErrorCompatibilityDomain", a2[2], v13);
        CFRelease(values);
        CFRelease(v13);
        v15 = *MEMORY[0x1E69E9840];
        return v14;
      }

      v8 = a2[2];
      v9 = *MEMORY[0x1E69E9840];
      v10 = &kCFErrorDomainPOSIX;
    }

    v12 = *v10;

    return CFErrorCreate(a1, v12, v8, 0);
  }
}

void *__CFSortIndexes_block_invoke(void *result, uint64_t a2)
{
  v2 = result[4];
  v3 = v2 * a2;
  v4 = v2 * a2 + v2;
  if (v4 >= result[5])
  {
    v4 = result[5];
  }

  v5 = v4 - v3;
  if (v4 > v3)
  {
    v6 = result[6];
    v7 = (v5 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v8 = vdupq_n_s64(v5 - 1);
    v9 = 1;
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v9 - 1), xmmword_183306C30)));
      if (v10.i8[0])
      {
        *(v6 + 8 * v3) = v3;
      }

      if (v10.i8[4])
      {
        *(v6 + 8 * v3 + 8) = v3 + 1;
      }

      v9 += 2;
      v3 += 2;
      v7 -= 2;
    }

    while (v7);
  }

  return result;
}

void __CFSortIndexesN(char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v31 = a4;
  block[10] = *MEMORY[0x1E69E9840];
  v5 = (a2 + a3 - 1) / a3;
  v7 = v5 + 15;
  v6 = v5 < -15;
  v8 = v5 + 30;
  if (!v6)
  {
    v8 = v7;
  }

  v9 = v8 >> 4;
  v10 = v8 & 0xFFFFFFFFFFFFFFF0;
  v11 = (v8 & 0xFFFFFFFFFFFFFFF0) + a2;
  v12 = (v11 - 1) / v10;
  v13 = v11 - v10 * v12;
  MEMORY[0x1EEE9AC00](a1, a2);
  v16 = (&v26 - v15);
  if (v14 >= 0x200)
  {
    v17 = 512;
  }

  else
  {
    v17 = v14;
  }

  bzero(&v26 - v15, v17);
  v18 = v9 << 7;
  if (v12 >= 1)
  {
    v19 = v16;
    v20 = v12;
    do
    {
      *v19++ = malloc_type_malloc(v18, 0x100004000313F17uLL);
      --v20;
    }

    while (v20);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ____CFSortIndexesN_block_invoke;
  block[3] = &unk_1E6D82BD0;
  block[6] = v10;
  block[7] = v13;
  block[8] = a1;
  block[9] = v16;
  block[4] = v31;
  block[5] = v12;
  dispatch_apply(v12, 0, block);
  v21 = v12 - 1;
  if (v12 >= 1)
  {
    v29 = v12 + (v12 >> 63);
    v28 = v21 + (v21 >> 63);
    v22 = (v12 + 1) >> 1;
    v27 = MEMORY[0x1E69E9820];
    v26 = ____CFSortIndexesN_block_invoke_2;
    v30 = v12 - 1;
    v23 = &a1[8 * v10 * v21];
    do
    {
      v33[0] = v27;
      v33[1] = 0x40000000;
      v33[2] = v26;
      v33[3] = &unk_1E6D82BF8;
      v33[6] = v10;
      v33[7] = v12;
      v33[8] = v13;
      v33[9] = v16;
      v33[4] = v31;
      v33[5] = a1;
      dispatch_apply(v29 & 0xFFFFFFFFFFFFFFFELL, 0, v33);
      if (v12)
      {
        memmove(v16[v30], v23, 8 * v13);
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 0x40000000;
      v32[2] = ____CFSortIndexesN_block_invoke_3;
      v32[3] = &unk_1E6D82C20;
      v32[6] = v12;
      v32[7] = v13;
      v32[8] = v10;
      v32[9] = a1;
      v32[5] = v16;
      v32[4] = v31;
      dispatch_apply(v28 & 0xFFFFFFFFFFFFFFFELL, 0, v32);
      memmove(a1, *v16, v18);
      if ((v12 & 1) == 0)
      {
        memmove(v23, v16[v30], 8 * v13);
      }

      --v22;
    }

    while (v22);
    do
    {
      v24 = *v16++;
      free(v24);
      --v12;
    }

    while (v12);
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t *__CFSortIndexesNMerge(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = a3;
  v13 = result;
  if (a4 + a2 >= 17)
  {
    result = (*(a7 + 16))(a7, result[a2 - 1], *a3);
    if (result <= 0)
    {
      if (a6)
      {
        v30 = v11;
      }

      else
      {
        v30 = v13;
      }

      if (a6)
      {
        v31 = a4;
      }

      else
      {
        v31 = a2;
      }

      return memmove(a5, v30, 8 * v31);
    }
  }

  if (!a6)
  {
    if (a2 < 1)
    {
      return result;
    }

    v22 = &v13[a2];
    v23 = &v11[a4];
    v24 = &a5[a2];
    while (1)
    {
      if (v23 <= v11)
      {
        v28 = *v13++;
        v27 = v28;
      }

      else
      {
        if (v22 > v13)
        {
          v25 = *v13;
          v26 = *v11;
          result = (*(a7 + 16))(a7, *v13, *v11);
          if (result <= 0)
          {
            *a5 = v25;
            ++v13;
          }

          else
          {
            *a5 = v26;
            ++v11;
          }

          goto LABEL_25;
        }

        v29 = *v11++;
        v27 = v29;
      }

      *a5 = v27;
LABEL_25:
      if (++a5 >= v24)
      {
        return result;
      }
    }
  }

  if (a4 >= 1)
  {
    v14 = &a5[a4];
    v15 = &v11[a4 - 1];
    v16 = &v13[a2 - 1];
    do
    {
      --v14;
      if (v15 >= v11)
      {
        if (v16 >= v13)
        {
          v20 = *v16;
          v21 = *v15;
          result = (*(a7 + 16))(a7, *v16, *v15);
          if (result <= 0)
          {
            *v14 = v21;
            --v15;
          }

          else
          {
            *v14 = v20;
            --v16;
          }

          continue;
        }

        v19 = *--v15;
        v17 = v19;
      }

      else
      {
        v18 = *--v16;
        v17 = v18;
      }

      *v14 = v17;
    }

    while (v14 > a5);
  }

  return result;
}

uint64_t __CFStorageGetCapacity(uint64_t a1)
{
  NodeCapacity = __CFStorageGetNodeCapacity(a1 + 144);
  v3 = *(a1 + 24);
  if (v3 == -1)
  {
    return NodeCapacity / *(a1 + 16);
  }

  else
  {
    return NodeCapacity >> v3;
  }
}

uint64_t __CFStorageGetNodeCapacity(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = 0;
    while (*(v1 + 13) != 1)
    {
      NodeCapacity = __CFStorageGetNodeCapacity(*(v1 + 16));
      v4 = __CFStorageGetNodeCapacity(*(v1 + 24));
      v1 = *(v1 + 32);
      v2 += NodeCapacity + v4;
      if (!v1)
      {
        goto LABEL_7;
      }
    }

    v5 = *(v1 + 16);
  }

  else
  {
    v2 = 0;
LABEL_7:
    v5 = 0;
  }

  return v5 + v2;
}

uint64_t __CFStorageEqual(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v3 = *(a1 + 24);
  if (v3 == -1)
  {
    v4 = v2 / *(a1 + 16);
  }

  else
  {
    v4 = v2 >> v3;
  }

  v5 = *(a2 + 144);
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    v7 = v5 / *(a2 + 16);
  }

  else
  {
    v7 = v5 >> v6;
  }

  if (v4 == v7 && (v8 = *(a1 + 16), v8 == *(a2 + 16)))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    ValueAtIndex = 0;
    v15 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    while (v13 < v4)
    {
      if (v13 >= v11 + v12)
      {
        ValueAtIndex = CFStorageGetValueAtIndex(a1, v13, &v26);
        v10 = v24;
        v9 = v25;
      }

      v16 = v9 + v10;
      if (v13 >= v9 + v10)
      {
        v15 = CFStorageGetValueAtIndex(a2, v13, &v24);
        v10 = v24;
        v9 = v25;
        v16 = v25 + v24;
      }

      v12 = v26;
      v11 = v27;
      if (v16 >= v27 + v26)
      {
        v17 = v27 + v26;
      }

      else
      {
        v17 = v16;
      }

      v18 = (v17 - v13) * v8;
      v19 = memcmp(ValueAtIndex, v15, v18);
      ValueAtIndex += v18;
      v15 += v18;
      v13 = v17;
      if (v19)
      {
        goto LABEL_19;
      }
    }

    result = 1;
  }

  else
  {
LABEL_19:
    result = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFStorageHash(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = *(a1 + 24);
  if (v2 == -1)
  {
    return v1 / *(a1 + 16);
  }

  else
  {
    return v1 >> v2;
  }
}

__CFString *__CFStorageCopyDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(a1 + 144);
  v5 = *(a1 + 24);
  if (v5 == -1)
  {
    v8 = *(a1 + 16);
    v6 = v4 / v8;
    v7 = __CFStorageGetNodeCapacity(a1 + 144) / v8;
  }

  else
  {
    v6 = v4 >> v5;
    v7 = __CFStorageGetNodeCapacity(a1 + 144) >> v5;
  }

  CFStringAppendFormat(Mutable, 0, @"<CFStorage %p [%p]>[count = %lu, capacity = %lu]\n", a1, v2, v6, v7);
  __CFStorageDescribeNode((a1 + 144), Mutable, 0);
  return Mutable;
}

uint64_t CFStorageCreateWithSubrange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51[3] = *MEMORY[0x1E69E9840];
  v6 = CFGetAllocator(a1);
  v13 = CFStorageCreate(v6, *(a1 + 16), v7, v8, v9, v10, v11, v12);
  if (a3 >= 1)
  {
    v14 = *(a1 + 24);
    if (v14 == -1)
    {
      v17 = *(a1 + 16);
      v15 = v17 * a2;
      v16 = v17 * a3;
    }

    else
    {
      v15 = a2 << v14;
      v16 = a3 << v14;
    }

    v18 = a1 + 144;
    if (*(a1 + 157))
    {
      v19 = 0;
    }

    else
    {
      v19 = 0;
      v20 = v15;
      do
      {
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v51[0] = v21;
        v51[1] = v22;
        v23 = *(v18 + 32);
        v51[2] = v23;
        if (v22)
        {
          v22 = *v22;
        }

        if (v23)
        {
          v23 = *v23;
        }

        v24 = *v21;
        v50[0] = 0;
        v50[1] = v24;
        v25 = v22 + v24;
        v50[2] = v22 + v24;
        v26 = v20 & ~(v20 >> 63);
        v27 = v20 + v16;
        if (v24 >= v20 + v16)
        {
          v28 = v20 + v16;
        }

        else
        {
          v28 = v24;
        }

        if (v24 <= v20)
        {
          v24 = v20;
        }

        if (v25 >= v27)
        {
          v29 = (v20 + v16);
        }

        else
        {
          v29 = v25;
        }

        if (v25 <= v20)
        {
          v30 = v20;
        }

        else
        {
          v30 = v25;
        }

        v31 = &v25[v23];
        if (v31 >= v27)
        {
          v31 = (v20 + v16);
        }

        if (v28 <= v26)
        {
          v32 = v29 > v24;
        }

        else
        {
          v32 = (v29 > v24) + 1;
        }

        if (v31 <= v30)
        {
          v33 = v32;
        }

        else
        {
          v33 = v32 + 1;
        }

        if (v33 != 1)
        {
          break;
        }

        v34 = v29 > v24 ? 1 : 2;
        v35 = v28 <= v26 ? v34 : 0;
        v18 = v51[v35];
        v36 = v50[v35];
        v20 -= v36;
        v19 += v36;
      }

      while (*(v18 + 13) != 1);
    }

    if (*(v18 + 13) == 1)
    {
      CFStorageInsertValues(v13, 0, a3);
      v37 = *(v18 + 24);
      if (v37)
      {
        CFStorageReplaceValues(v13, 0, a3, (v37 + v15 - v19));
      }
    }

    else
    {
      v38 = *v18;
      *(v13 + 157) = 0;
      *(v13 + 144) = v38;
      v39 = (v18 + 16);
      *(v13 + 168) = 0;
      *(v13 + 176) = 0;
      *(v13 + 160) = 0;
      v40 = 20;
      do
      {
        v41 = *v39;
        if (!*v39)
        {
          break;
        }

        *(v41 + 12) = 1;
        if (*(v41 + 8))
        {
          atomic_fetch_add_explicit((v41 + 8), 1u, memory_order_relaxed);
        }

        *(v13 + 8 * v40++) = v41;
        ++v39;
      }

      while (v40 != 23);
      v42 = *(v13 + 24);
      if (v42 == -1)
      {
        v45 = *(v13 + 16);
        v43 = v19 / v45;
        v44 = v38 / v45;
      }

      else
      {
        v43 = v19 >> v42;
        v44 = v38 >> v42;
      }

      v46 = a2 - v43;
      v47 = v43 - (a2 + a3);
      if (v47 + v44 >= 1)
      {
        CFStorageDeleteValues(v13, -v47, v47 + v44);
      }

      if (v46 >= 1)
      {
        CFStorageDeleteValues(v13, 0, v46);
      }
    }
  }

  v48 = *MEMORY[0x1E69E9840];
  return v13;
}

char *CFStorageReplaceValues(char *result, uint64_t a2, uint64_t a3, char *a4)
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v5 = a3;
    v7 = result;
    do
    {
      os_unfair_lock_lock_with_options();
      v9 = *(v7 + 13);
      v8 = *(v7 + 14);
      v10 = *(v7 + 15);
      os_unfair_lock_unlock(v7 + 32);
      if (!v9 || (*(v9 + 12) & 1) != 0)
      {
        goto LABEL_5;
      }

      if (!*(v9 + 24))
      {
        v20 = CFGetAllocator(v7);
        v21 = *v9;
        if (*v9 <= *MEMORY[0x1E69E9AC8] / 2)
        {
          v30 = v21 + 63;
          v29 = v21 < -63;
          v31 = v21 + 126;
          if (!v29)
          {
            v31 = v30;
          }

          v23 = v31 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = (v21 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
          if (*(v7 + 17) >= v22)
          {
            v23 = v22;
          }

          else
          {
            v23 = *(v7 + 17);
          }
        }

        if (v23 > *(v9 + 16))
        {
          pthread_mutex_lock((v7 + 32));
          if (v23 > *(v9 + 16))
          {
            *(v9 + 24) = __CFSafelyReallocateWithAllocatorTyped(v20, *(v9 + 24), v23, 864523722, 0, 0);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            *(v9 + 16) = v23;
          }

          pthread_mutex_unlock((v7 + 32));
        }
      }

      if ((v32 = a2 - v8, a2 >= v8) && v10 + v8 > a2 && ((v25 = *(v7 + 6), v25 != -1) ? (v33 = v32 << v25) : (v33 = *(v7 + 2) * v32), (v34 = *(v9 + 24)) != 0))
      {
        Byte = (v34 + v33);
      }

      else
      {
LABEL_5:
        v37 = 0;
        v38[0] = 0;
        v36 = 0;
        v11 = *(v7 + 6);
        if (v11 == -1)
        {
          v12 = *(v7 + 2) * a2;
        }

        else
        {
          v12 = a2 << v11;
        }

        Byte = __CFStorageFindByte(v7, (v7 + 144), v12, 0, v38, &v36, 1);
        v14 = v38[0];
        v15 = v36;
        if (v38[0])
        {
          v16 = *v38[0];
          v17 = *(v7 + 6);
          if (v17 == -1)
          {
            v24 = *(v7 + 2);
            v18 = v36 / v24;
            v19 = v16 / v24;
          }

          else
          {
            v18 = v36 >> v17;
            v19 = v16 >> v17;
          }
        }

        else
        {
          v18 = 0;
          v19 = 0;
        }

        os_unfair_lock_lock_with_options();
        *(v7 + 13) = v14;
        *(v7 + 14) = v18;
        *(v7 + 15) = v19;
        os_unfair_lock_unlock(v7 + 32);
        v25 = *(v7 + 6);
        if (v25 == -1)
        {
          v26 = *(v7 + 2);
          v8 = v15 / v26;
          v10 = v37 / v26;
        }

        else
        {
          v8 = v15 >> v25;
          v10 = v37 >> v25;
        }
      }

      if (v5 >= v8 - a2 + v10)
      {
        v27 = v8 - a2 + v10;
      }

      else
      {
        v27 = v5;
      }

      if (v25 == 0xFFFFFFFFLL)
      {
        v28 = *(v7 + 2) * v27;
      }

      else
      {
        v28 = v27 << v25;
      }

      result = memmove(Byte, a4, v28);
      a4 += v28;
      a2 += v27;
      v29 = v5 <= v27;
      v5 -= v27;
    }

    while (!v29);
  }

  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFStorageGetCount(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = *(a1 + 24);
  if (v2 == -1)
  {
    return v1 / *(a1 + 16);
  }

  else
  {
    return v1 >> v2;
  }
}

uint64_t CFStorageGetConstValueAtIndex(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v6 = *(a1 + 104);
  v7 = *(a1 + 112);
  v8 = *(a1 + 120);
  os_unfair_lock_unlock((a1 + 128));
  if (!v6)
  {
    goto LABEL_26;
  }

  if (!v6[3])
  {
    v9 = CFGetAllocator(a1);
    v10 = *v6;
    if (*v6 <= *MEMORY[0x1E69E9AC8] / 2)
    {
      v13 = v10 + 63;
      v16 = v10 < -63;
      v14 = v10 + 126;
      if (!v16)
      {
        v14 = v13;
      }

      v12 = v14 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v11 = (v10 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      if (*(a1 + 136) >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = *(a1 + 136);
      }
    }

    if (v12 > v6[2])
    {
      pthread_mutex_lock((a1 + 32));
      if (v12 > v6[2])
      {
        v6[3] = __CFSafelyReallocateWithAllocatorTyped(v9, v6[3], v12, 864523722, 0, 0);
        if (__CFOASafe == 1)
        {
          __CFSetLastAllocationEventName();
        }

        v6[2] = v12;
      }

      pthread_mutex_unlock((a1 + 32));
    }
  }

  v15 = a2 - v7;
  v16 = a2 < v7 || v8 + v7 <= a2;
  if (v16)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    *a3 = v7;
    a3[1] = v8;
  }

  v17 = v6[3];
  v18 = *(a1 + 24);
  if (v18 == -1)
  {
    v19 = *(a1 + 16) * v15;
    if (v17)
    {
      goto LABEL_24;
    }

LABEL_26:
    v37 = 0;
    v38[0] = 0;
    v36 = 0;
    v21 = *(a1 + 24);
    if (v21 == -1)
    {
      v22 = *(a1 + 16) * a2;
    }

    else
    {
      v22 = a2 << v21;
    }

    Byte = __CFStorageFindByte(a1, a1 + 144, v22, 0, v38, &v36, 0);
    v23 = v38[0];
    v24 = v36;
    if (v38[0])
    {
      v25 = *v38[0];
      v26 = *(a1 + 24);
      if (v26 == -1)
      {
        v29 = *(a1 + 16);
        v27 = v36 / v29;
        v28 = v25 / v29;
      }

      else
      {
        v27 = v36 >> v26;
        v28 = v25 >> v26;
      }
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    os_unfair_lock_lock_with_options();
    *(a1 + 104) = v23;
    *(a1 + 112) = v27;
    *(a1 + 120) = v28;
    os_unfair_lock_unlock((a1 + 128));
    v30 = *(a1 + 24);
    if (v30 == -1)
    {
      v35 = *(a1 + 16);
      v31 = v24 / v35;
      v32 = v37 / v35;
      if (!a3)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v31 = v24 >> v30;
      v32 = v37 >> v30;
      if (!a3)
      {
        goto LABEL_37;
      }
    }

    *a3 = v31;
    a3[1] = v32;
    goto LABEL_37;
  }

  v19 = v15 << v18;
  if (!v17)
  {
    goto LABEL_26;
  }

LABEL_24:
  Byte = v17 + v19;
LABEL_37:
  v33 = *MEMORY[0x1E69E9840];
  return Byte;
}

uint64_t __CFStorageCreateNode(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  Typed = CFAllocatorAllocateTyped(a1, 40, 0x1032040801AFE6DLL, 0);
  if (__CFOASafe == 1)
  {
    __CFSetLastAllocationEventName();
  }

  *(Typed + 8) = 1;
  *(Typed + 12) = *(a2 + 96);
  *(Typed + 13) = a3;
  *Typed = a4;
  if ((a3 & 1) == 0)
  {
    *(Typed + 32) = 0;
  }

  *(Typed + 16) = 0;
  *(Typed + 24) = 0;
  return Typed;
}

uint64_t _CFStorageFastEnumeration(uint64_t a1, unint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (v3)
  {
    v4 = a2[3];
  }

  else
  {
    v5 = *(a1 + 144);
    v6 = *(a1 + 24);
    if (v6 == -1)
    {
      v4 = v5 / *(a1 + 16);
    }

    else
    {
      v4 = v5 >> v6;
    }

    a2[3] = v4;
  }

  if (v3 >= v4)
  {
    result = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    ValueAtIndex = CFStorageGetValueAtIndex(a1, v3, &v10);
    result = v11;
    *a2 += v11;
    a2[1] = ValueAtIndex;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFStorageApplyFunction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[7] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __CFStorageApplyFunction_block_invoke;
  v8[3] = &__block_descriptor_tmp_10;
  v8[4] = a4;
  v8[5] = a5;
  v8[6] = v5;
  result = CFStorageApplyBlock(a1, a2, a3, 0, v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFStorageApplyBlock(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  if (a3)
  {
    v6 = *(result + 24);
    if (v6 == -1)
    {
      v9 = *(result + 16);
      v7 = v9 * a2;
      v8 = v9 * a3;
    }

    else
    {
      v7 = a2 << v6;
      v8 = a3 << v6;
    }

    if (((a3 >= 0x100000) & a4) != 0)
    {
      v10 = 3;
    }

    else
    {
      v10 = 0;
    }

    return __CFStorageEnumerateNodesInByteRangeWithBlock(result, result + 144, 0, v7, v8, v10, a5);
  }

  return result;
}

uint64_t __CFStorageApplyFunction_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = a4;
    v6 = result;
    do
    {
      --v4;
      result = (*(v6 + 32))(a2, *(v6 + 40));
      a2 += *(v6 + 48);
    }

    while (v4);
  }

  return result;
}

uint64_t __CFStorageEnumerateNodesInByteRangeWithBlock(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1;
  v72[3] = *MEMORY[0x1E69E9840];
  v69 = 0;
  if (*(a2 + 13) == 1)
  {
    if (a5 >= *a2 - a4)
    {
      v10 = *a2 - a4;
    }

    else
    {
      v10 = a5;
    }

    if (!*(a2 + 24))
    {
      v11 = a3;
      v12 = a7;
      v13 = CFGetAllocator(a1);
      v14 = *a2;
      if (*a2 <= *MEMORY[0x1E69E9AC8] / 2)
      {
        v53 = v14 + 63;
        v27 = v14 < -63;
        v54 = v14 + 126;
        if (!v27)
        {
          v54 = v53;
        }

        v16 = v54 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = (v14 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        if (*(v9 + 17) >= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = *(v9 + 17);
        }
      }

      a7 = v12;
      a3 = v11;
      if (v16 > *(a2 + 16))
      {
        pthread_mutex_lock((v9 + 32));
        if (v16 > *(a2 + 16))
        {
          *(a2 + 24) = __CFSafelyReallocateWithAllocatorTyped(v13, *(a2 + 24), v16, 864523722, 0, 0);
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          *(a2 + 16) = v16;
        }

        pthread_mutex_unlock((v9 + 32));
        a7 = v12;
        a3 = v11;
      }
    }

    v55 = a4 + a3;
    v56 = *(v9 + 6);
    if (v56 == -1)
    {
      v59 = *(v9 + 2);
      v57 = v55 / v59;
      v58 = v10 / v59;
    }

    else
    {
      v57 = v55 >> v56;
      v58 = v10 >> v56;
    }

    (*(a7 + 16))(a7, *(a2 + 24) + a4, v57, v58, &v69);
    v48 = v69;
    goto LABEL_86;
  }

  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v72[0] = v17;
  v72[1] = v18;
  v19 = *(a2 + 32);
  v72[2] = v19;
  v20 = *v17;
  if (v18)
  {
    v21 = *v18;
    if (v19)
    {
LABEL_12:
      v22 = *v19;
      goto LABEL_15;
    }
  }

  else
  {
    v21 = 0;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  v22 = 0;
LABEL_15:
  v71[0] = 0;
  v71[1] = v20;
  v23 = v21 + v20;
  v71[2] = v21 + v20;
  v24 = a4 & ~(a4 >> 63);
  v25 = a4 + a5;
  if (v20 >= a4 + a5)
  {
    v26 = a4 + a5;
  }

  else
  {
    v26 = v20;
  }

  v27 = v26 <= v24;
  v28 = v26 - v24;
  if (v27)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28;
  }

  if (v27)
  {
    v30 = 0;
  }

  else
  {
    v30 = a4 & ~(a4 >> 63);
  }

  v70[0] = v30;
  v70[1] = v29;
  if (v20 <= a4)
  {
    v31 = a4;
  }

  else
  {
    v31 = v20;
  }

  if (v23 >= v25)
  {
    v32 = v25;
  }

  else
  {
    v32 = v23;
  }

  v33 = v32 <= v31;
  v34 = v32 - v31;
  if (v33)
  {
    v35 = 0;
  }

  else
  {
    v35 = v31;
  }

  if (v33)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  v70[2] = v35;
  v70[3] = v36;
  if (v23 <= a4)
  {
    v37 = a4;
  }

  else
  {
    v37 = v23;
  }

  v38 = v22 + v23;
  if (v38 >= v25)
  {
    v38 = v25;
  }

  v39 = v38 <= v37;
  v40 = v38 - v37;
  if (v39)
  {
    v41 = 0;
  }

  else
  {
    v41 = v37;
  }

  if (v39)
  {
    v42 = 0;
  }

  else
  {
    v42 = v40;
  }

  v70[4] = v41;
  v70[5] = v42;
  v43 = v36 != 0;
  if (v29)
  {
    ++v43;
  }

  if (v42)
  {
    v44 = v43 + 1;
  }

  else
  {
    v44 = v43;
  }

  if (v44 <= 1)
  {
    v45 = a6;
  }

  else
  {
    v45 = a6 - 1;
  }

  if (v44 < 2 || v45 < 0)
  {
    if (v29 < 1)
    {
      if (v36 < 1)
      {
        if (v42 < 1)
        {
          v48 = 0;
          goto LABEL_86;
        }

        goto LABEL_85;
      }
    }

    else
    {
      v62 = a3;
      v49 = __CFStorageEnumerateNodesInByteRangeWithBlock(a1, v17, a3, v30);
      v50 = (v36 > 0) | v49;
      if (v36 < 1)
      {
        a3 = v62;
        goto LABEL_83;
      }

      a3 = v62;
      if (v49)
      {
        goto LABEL_83;
      }
    }

    v63 = v41;
    v51 = v9;
    v52 = a3;
    v50 = __CFStorageEnumerateNodesInByteRangeWithBlock(v51, v18, v20 + a3, v35 - v20);
    a3 = v52;
    v9 = v51;
    v41 = v63;
LABEL_83:
    v48 = (v42 > 0) | v50;
    if (v42 < 1 || (v50 & 1) != 0)
    {
      goto LABEL_86;
    }

LABEL_85:
    v48 = __CFStorageEnumerateNodesInByteRangeWithBlock(v9, v19, v23 + a3, v41 - v23);
    goto LABEL_86;
  }

  v46 = 1;
  if (v18)
  {
    v46 = 2;
  }

  if (v19)
  {
    v47 = v46 + 1;
  }

  else
  {
    v47 = v46;
  }

  v65 = 0;
  v66 = &v65;
  v67 = 0x2000000000;
  v68 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ____CFStorageEnumerateNodesInByteRangeWithBlock_block_invoke;
  block[3] = &unk_1E6D82C68;
  block[6] = v70;
  block[7] = v9;
  block[8] = v72;
  block[9] = a3;
  block[10] = v71;
  block[11] = a6 - 1;
  block[4] = a7;
  block[5] = &v65;
  dispatch_apply(v47, 0, block);
  v48 = *(v66 + 24);
  _Block_object_dispose(&v65, 8);
LABEL_86:
  v60 = *MEMORY[0x1E69E9840];
  return v48 & 1;
}

void __CFStorageDescribeNode(uint64_t *a1, __CFString *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v6 = a3;
    do
    {
      SystemEncoding = CFStringGetSystemEncoding();
      CFStringAppendCString(a2, "  ", SystemEncoding);
      --v6;
    }

    while (v6);
  }

  v8 = *a1;
  if (*(a1 + 13) == 1)
  {
    v9 = "no";
    if (*(a1 + 12))
    {
      v9 = "yes";
    }

    CFStringAppendFormat(a2, 0, @"Leaf %ld/%ld (%p) refcount: %u frozen: %s\n", v8, a1[2], a1, *(a1 + 2), v9);
  }

  else
  {
    v10 = "no";
    if (*(a1 + 12))
    {
      v10 = "yes";
    }

    CFStringAppendFormat(a2, 0, @"Node %ld (%p) refcount: %u frozen: %s\n", v8, a1, *(a1 + 2), v10);
    v11 = 0;
    v12 = a1 + 2;
    do
    {
      v13 = v12[v11];
      if (v13)
      {
        __CFStorageDescribeNode(v13, a2, a3 + 1);
      }

      ++v11;
    }

    while (v11 != 3);
  }
}

void __CFStorageDeallocateNode(const void *a1, uint64_t a2)
{
  v4 = CFGetAllocator(a1);
  v5 = v4;
  if (*(a2 + 13) == 1)
  {
    v6 = *(a2 + 24);
    if (v6)
    {
      CFAllocatorDeallocate(v4, v6);
    }
  }

  else
  {
    v7 = *(a2 + 16);
    if (v7 && *(v7 + 8) && atomic_fetch_add_explicit((v7 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      __CFStorageDeallocateNode(a1);
    }

    v8 = *(a2 + 24);
    if (v8 && *(v8 + 8) && atomic_fetch_add_explicit((v8 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      __CFStorageDeallocateNode(a1);
    }

    v9 = *(a2 + 32);
    if (v9 && *(v9 + 8) && atomic_fetch_add_explicit((v9 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      __CFStorageDeallocateNode(a1);
    }
  }

  CFAllocatorDeallocate(v5, a2);
}

uint64_t __CFStorageInsertFrozen(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v82 = *MEMORY[0x1E69E9840];
  if (*(a3 + 13) == 1)
  {
    v13 = *a3 + a5;
    v14 = *(a2 + 136);
    v15 = v13 - v14;
    if (v13 > v14)
    {
      if (*a3 == a4)
      {
        Node = __CFStorageCreateNode(a1, a2, 1, a5);
        v17 = Node;
        if (!Node)
        {
          v20 = 0;
          v21 = 0;
          goto LABEL_115;
        }

        v18 = *Node;
        v19 = *(a2 + 24);
        if (v19 != -1)
        {
          v20 = a6 >> v19;
          v21 = v18 >> v19;
LABEL_115:
          os_unfair_lock_lock_with_options();
          *(a2 + 104) = v17;
          *(a2 + 112) = v20;
          *(a2 + 120) = v21;
          os_unfair_lock_unlock((a2 + 128));
          v24 = v9;
          goto LABEL_116;
        }

        v72 = *(a2 + 16);
        v20 = a6 / v72;
LABEL_114:
        v21 = v18 / v72;
        goto LABEL_115;
      }

      if (a4)
      {
        v34 = __CFStorageCreateNode(a1, a2, 1, v14);
        v35 = a1;
        v17 = v34;
        v79 = v35;
        v36 = __CFStorageCreateNode(v35, a2, 1, v13 - v14);
        v37 = *MEMORY[0x1E69E9AC8];
        v38 = *MEMORY[0x1E69E9AC8] / 2;
        if (v38 >= v14)
        {
          v58 = v14 + 63;
          if (v14 < -63)
          {
            v58 = v14 + 126;
          }

          v40 = v58 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v39 = (v14 + v37 - 1) & -v37;
          if (*(a2 + 136) >= v39)
          {
            v40 = v39;
          }

          else
          {
            v40 = *(a2 + 136);
          }
        }

        if (v40 > v17[2])
        {
          pthread_mutex_lock((a2 + 32));
          if (v40 > v17[2])
          {
            v17[3] = __CFSafelyReallocateWithAllocatorTyped(v79, v17[3], v40, 864523722, 0, 0);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            v17[2] = v40;
          }

          pthread_mutex_unlock((a2 + 32));
          v37 = *MEMORY[0x1E69E9AC8];
          v38 = *MEMORY[0x1E69E9AC8] / 2;
        }

        if (v38 >= v15)
        {
          v61 = v15 + 63;
          if (v15 < -63)
          {
            v61 = v15 + 126;
          }

          v60 = v61 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v59 = (v15 + v37 - 1) & -v37;
          if (*(a2 + 136) >= v59)
          {
            v60 = v59;
          }

          else
          {
            v60 = *(a2 + 136);
          }
        }

        if (v60 > *(v36 + 16))
        {
          pthread_mutex_lock((a2 + 32));
          if (v60 > *(v36 + 16))
          {
            *(v36 + 24) = __CFSafelyReallocateWithAllocatorTyped(v79, *(v36 + 24), v60, 864523722, 0, 0);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            *(v36 + 16) = v60;
          }

          pthread_mutex_unlock((a2 + 32));
        }

        memmove(v17[3], v9[3], a4);
        v62 = a4;
        v63 = a5 + a4;
        v64 = (a5 + a4) & ~((a5 + a4) >> 63);
        v65 = *v9 + a5;
        if (v14 >= v65)
        {
          v66 = *v9 + a5;
        }

        else
        {
          v66 = v14;
        }

        if (v66 <= v64)
        {
          v67 = 0;
        }

        else
        {
          v67 = v66 - v64;
        }

        if (v67 >= 1)
        {
          if (v66 <= v64)
          {
            v64 = 0;
          }

          memmove((v17[3] + v64), (v9[3] + v64 - a5), v67);
        }

        if (v14 <= v63)
        {
          v68 = v63;
        }

        else
        {
          v68 = v14;
        }

        if (v13 >= v65)
        {
          v69 = v65;
        }

        else
        {
          v69 = v13;
        }

        if (v69 <= v68)
        {
          v70 = 0;
        }

        else
        {
          v70 = v69 - v68;
        }

        if (v70 >= 1)
        {
          if (v69 <= v68)
          {
            v68 = 0;
          }

          memmove((*(v36 + 24) + v68 - v14), (v9[3] + v68 - a5), v70);
        }

        v53 = a6 - v62;
        v54 = *v17;
        v55 = *(a2 + 24);
        if (v55 != -1)
        {
          goto LABEL_107;
        }

        goto LABEL_109;
      }

      if (*(a3 + 8))
      {
        atomic_fetch_add_explicit((a3 + 8), 1u, memory_order_relaxed);
      }

      v56 = __CFStorageCreateNode(a1, a2, 1, a5);
      v17 = v56;
      if (v56)
      {
        v18 = *v56;
        v57 = *(a2 + 24);
        if (v57 == -1)
        {
          v72 = *(a2 + 16);
          v20 = a6 / v72;
          v9 = v56;
          goto LABEL_114;
        }

        v20 = a6 >> v57;
        v21 = v18 >> v57;
LABEL_108:
        v9 = v17;
        goto LABEL_115;
      }

      v20 = 0;
      v21 = 0;
LABEL_112:
      v9 = 0;
      goto LABEL_115;
    }

    v30 = __CFStorageCreateNode(a1, a2, 1, *a3 + a5);
    v17 = v30;
    v31 = v9[3];
    if (v31)
    {
      if (v13 <= *MEMORY[0x1E69E9AC8] / 2)
      {
        v52 = v13 + 63;
        if (v13 < -63)
        {
          v52 = v13 + 126;
        }

        v33 = v52 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = (v13 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        if (*(a2 + 136) >= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = *(a2 + 136);
        }
      }

      if (v33 > *(v30 + 16))
      {
        pthread_mutex_lock((a2 + 32));
        if (v33 > v17[2])
        {
          v17[3] = __CFSafelyReallocateWithAllocatorTyped(a1, v17[3], v33, 864523722, 0, 0);
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          v17[2] = v33;
        }

        pthread_mutex_unlock((a2 + 32));
        v31 = v9[3];
      }

      memmove(v17[3], v31, a4);
      memmove((v17[3] + a4 + a5), (v9[3] + a4), *v9 - a4);
    }

    else if (!v30)
    {
      v20 = 0;
      v21 = 0;
      goto LABEL_112;
    }

    v53 = a6 - a4;
    v54 = *v17;
    v55 = *(a2 + 24);
    if (v55 != -1)
    {
LABEL_107:
      v20 = v53 >> v55;
      v21 = v54 >> v55;
      goto LABEL_108;
    }

LABEL_109:
    v71 = *(a2 + 16);
    v20 = v53 / v71;
    v9 = v17;
    v21 = v54 / v71;
    goto LABEL_115;
  }

  v22 = &v80;
  v23 = &v80 + 8;
  v24 = __CFStorageCreateNode(a1, a2, 0, 0);
  v25 = a4 - 1;
  v26 = v9[2];
  v27 = *v26;
  if (*v26 >= a4)
  {
    v75 = 1;
  }

  else
  {
    v25 -= v27;
    v26 = v9[3];
    v28 = v25 - *v26;
    if (v25 >= *v26)
    {
      v75 = 0;
      v23 = &v81 + 8;
      v26 = v9[4];
      v22 = &v81;
      v25 = v28;
    }

    else
    {
      v75 = 1;
      v22 = &v80 + 1;
      v23 = &v81;
    }
  }

  v77 = a5;
  inserted = __CFStorageInsertFrozen(a1, a2, v26, v25 + 1, a5, a6);
  v42 = inserted;
  v44 = v43;
  v45 = 0;
  v80 = 0u;
  v81 = 0u;
  do
  {
    v46 = v9[v45 + 2];
    if (v46)
    {
      if (*(v46 + 8))
      {
        atomic_fetch_add_explicit((v46 + 8), 1u, memory_order_relaxed);
      }

      *(v46 + 12) = 1;
    }

    *(&v80 + v45 * 8) = v46;
    ++v45;
  }

  while (v45 != 3);
  v47 = *v22;
  if (*v22 != inserted)
  {
    if (*(v47 + 8) && atomic_fetch_add_explicit((v47 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      __CFStorageDeallocateNode(a2, v47);
    }

    *v22 = v42;
  }

  if (v44)
  {
    if (v75)
    {
      *(&v81 + 1) = v81;
      if (v27 >= a4)
      {
        *&v81 = *(&v80 + 1);
      }
    }

    *v23 = v44;
  }

  v48 = v80;
  *(v24 + 16) = v80;
  v49 = *(&v81 + 1);
  if (*(&v81 + 1))
  {
    v50 = __CFStorageCreateNode(a1, a2, 0, 0);
    v51 = v81;
    v50[2] = v81;
    v50[3] = v49;
    *v24 = **(&v48 + 1) + *v48;
    *v50 = *v49 + *v51;
  }

  else
  {
    *(v24 + 32) = v81;
    *v24 = *v9 + v77;
  }

LABEL_116:
  v73 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t __CFStorageDeleteFrozen(uint64_t a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5)
{
  __src[3] = *MEMORY[0x1E69E9840];
  if (*(a3 + 13) == 1)
  {
    v10 = *a3 - a5;
    if (*a3 != a5)
    {
      Node = __CFStorageCreateNode(a1, a2, 1, *a3 - a5);
      v12 = Node;
      if (a3[3])
      {
        if (v10 <= *MEMORY[0x1E69E9AC8] / 2)
        {
          v28 = v10 + 63;
          if (v10 < -63)
          {
            v28 = v10 + 126;
          }

          v14 = v28 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = (v10 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
          if (*(a2 + 136) >= v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = *(a2 + 136);
          }
        }

        v29 = a4 + a5;
        v30 = *a3;
        if (v14 > *(Node + 16))
        {
          pthread_mutex_lock((a2 + 32));
          if (v14 > *(v12 + 16))
          {
            *(v12 + 24) = __CFSafelyReallocateWithAllocatorTyped(a1, *(v12 + 24), v14, 864523722, 0, 0);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            *(v12 + 16) = v14;
          }

          pthread_mutex_unlock((a2 + 32));
        }

        if (a4 >= 1)
        {
          memmove(*(v12 + 24), a3[3], a4);
        }

        if (v30 - v29 >= 1)
        {
          memmove((*(v12 + 24) + a4), (a3[3] + v29), v30 - v29);
        }
      }

      goto LABEL_10;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  if (a5 == *a3)
  {
    goto LABEL_9;
  }

  v17 = 0;
  v18 = 0;
  memset(__src, 0, 24);
  v19 = a4 + a5;
  for (i = 2; i != 5; ++i)
  {
    v21 = a3[i];
    if (!v21)
    {
      break;
    }

    v22 = *v21;
    v23 = a4 <= v18 ? v18 : a4;
    v24 = v22 + v18;
    v25 = v19 >= v22 + v18 ? v22 + v18 : v19;
    if (v25 <= v23)
    {
      if (v21[2])
      {
        atomic_fetch_add_explicit(v21 + 2, 1u, memory_order_relaxed);
      }

      __src[v17++] = v21;
      *(v21 + 12) = 1;
    }

    else
    {
      v26 = __CFStorageDeleteFrozen(a1, a2);
      if (v26)
      {
        __src[v17++] = v26;
      }
    }

    v18 = v24;
  }

  if (v17 == 1)
  {
    v12 = __src[0];
  }

  else
  {
    v27 = __CFStorageCreateNode(a1, a2, 0, 0);
    v12 = v27;
    if (v17)
    {
      memcpy((v27 + 16), __src, 8 * v17);
    }

    *v12 = *a3 - a5;
  }

LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _CFStreamGetInfoPointer(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

CFStringRef __CFStreamCopyDescription(void *cf)
{
  v2 = cf[6];
  v3 = v2[3];
  if (v3)
  {
    if (*v2)
    {
      v4 = (v3)(cf, cf[5]);
    }

    else
    {
      v4 = v3(cf[5]);
    }
  }

  else
  {
    v5 = CFGetAllocator(cf);
    v4 = CFStringCreateWithFormat(v5, 0, @"info = %p", cf[5]);
  }

  v6 = v4;
  v7 = CFGetTypeID(cf);
  v8 = CFGetAllocator(cf);
  if (v7 == 38)
  {
    v9 = CFStringCreateWithFormat(v8, 0, @"<CFReadStream %p>{%@}", cf, v6);
  }

  else
  {
    v9 = CFStringCreateWithFormat(v8, 0, @"<CFWriteStream %p>{%@}", cf, v6);
  }

  v10 = v9;
  CFRelease(v6);
  return v10;
}

CFStreamStatus CFWriteStreamGetStatus(CFWriteStreamRef stream)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {

    return [(__CFWriteStream *)stream streamStatus];
  }

  else
  {

    return _CFStreamGetStatus(stream);
  }
}

CFStreamError CFReadStreamGetError(CFReadStreamRef stream)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {

    StreamError = [(__CFReadStream *)stream _cfStreamError];
  }

  else
  {

    StreamError = _CFStreamGetStreamError(stream);
  }

  result.error = v3;
  result.domain = StreamError;
  return result;
}

unsigned int *_CFStreamGetStreamError(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    if (**(a1 + 48) > 1)
    {
      return _CFStreamErrorFromError(result);
    }

    else
    {
      v3 = result[2];
      return *result;
    }
  }

  return result;
}

CFStreamError CFWriteStreamGetError(CFWriteStreamRef stream)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {

    StreamError = [(__CFWriteStream *)stream _cfStreamError];
  }

  else
  {

    StreamError = _CFStreamGetStreamError(stream);
  }

  result.error = v3;
  result.domain = StreamError;
  return result;
}

CFErrorRef CFReadStreamCopyError(CFReadStreamRef stream)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    v2 = [(__CFReadStream *)stream streamError];

    return v2;
  }

  else
  {

    return _CFStreamCopyError(stream);
  }
}

CFErrorRef _CFStreamCopyError(void *cf)
{
  result = cf[3];
  if (result)
  {
    if (*cf[6] > 1)
    {
      CFRetain(result);
      return cf[3];
    }

    else
    {
      v3 = CFGetAllocator(cf);
      v4 = cf[3];

      return _CFStreamCreateErrorFromStreamError(v3, v4);
    }
  }

  return result;
}

CFErrorRef CFWriteStreamCopyError(CFWriteStreamRef stream)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {
    v2 = [(__CFWriteStream *)stream streamError];

    return v2;
  }

  else
  {

    return _CFStreamCopyError(stream);
  }
}

uint64_t waitForOpen(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  _CFStreamScheduleWithRunLoop(a1, Current, @"_kCFStreamBlockingOpenMode");
  while ((*(a1 + 16) & 0x1FLL) == 1)
  {
    CFRunLoopRunInMode(@"_kCFStreamBlockingOpenMode", 1.0e20, 1u);
  }

  return _CFStreamUnscheduleFromRunLoop(a1, Current, @"_kCFStreamBlockingOpenMode");
}

const UInt8 *__cdecl CFReadStreamGetBuffer(CFReadStreamRef stream, CFIndex maxBytesToRead, CFIndex *numBytesRead)
{
  v28 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    *&v26 = 0;
    if ([(__CFReadStream *)stream getBuffer:&v26 length:numBytesRead])
    {
      v6 = v26;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_50;
  }

  Status = _CFStreamGetStatus(stream);
  v8 = *(stream + 6);
  if (Status == 1)
  {
    *(stream + 2) |= 0x40uLL;
    waitForOpen(stream);
    *(stream + 2) &= ~0x40uLL;
    Status = _CFStreamGetStatus(stream);
  }

  if ((Status - 2) >= 2)
  {
    if (Status != 5)
    {
      v6 = 0;
      *numBytesRead = -1;
      goto LABEL_50;
    }

    goto LABEL_13;
  }

  v9 = v8[7];
  if (!v9)
  {
LABEL_13:
    v6 = 0;
    *numBytesRead = 0;
    goto LABEL_50;
  }

  v27 = 0;
  v10 = *(stream + 4);
  if (v10)
  {
    v11 = *(v10 + 72);
    v12 = (stream + 16);
    v13 = *(stream + 2) | 0x40;
    *(stream + 2) = v13;
    if ((v11 & 2) != 0)
    {
      *(v10 + 72) = v11 & 0xFFFFFFFFFFFFFFFDLL;
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v12 = (stream + 16);
    v13 = *(stream + 2) | 0x40;
    *(stream + 2) = v13;
  }

  if ((v13 & 0x1E) != 6)
  {
    *v12 = v13 & 0xFFFFFFE0 | 3;
  }

  if (*v8 > 1)
  {
    v6 = v9(stream, maxBytesToRead, numBytesRead, stream + 24, &v27, *(stream + 5));
  }

  else
  {
    v26 = 0uLL;
    v6 = v9(stream, maxBytesToRead, numBytesRead, &v26, &v27, *(stream + 5));
    if (DWORD2(v26))
    {
      Typed = *(stream + 3);
      if (!Typed)
      {
        v16 = CFGetAllocator(stream);
        Typed = CFAllocatorAllocateTyped(v16, 16, 0x1000040D9A13B51, 0);
        *(stream + 3) = Typed;
      }

      *Typed = v26;
    }
  }

  if (*(stream + 3))
  {
    *numBytesRead = -1;
    if ((*v12 & 0x1F) != 7)
    {
      *v12 = *v12 & 0xFFFFFFE0 | 7;
    }

    v17 = *(stream + 4);
    if (v17 && (*(v17 + 48) & 8) != 0)
    {
      pthread_mutex_lock((stream + 56));
      v18 = *(stream + 4);
      if (v18 && (v19 = *(v18 + 56)) != 0)
      {
        CFRetain(*(v18 + 56));
        pthread_mutex_unlock((stream + 56));
        *(*(stream + 4) + 72) |= 8uLL;
        CFRunLoopSourceSignal(v19);
        CFRelease(v19);
        _wakeUpRunLoop(stream);
      }

      else
      {
        pthread_mutex_unlock((stream + 56));
      }
    }

    v6 = 0;
  }

  else if (v27)
  {
    if ((*v12 & 0x1E) != 6)
    {
      *v12 = *v12 & 0xFFFFFFE0 | 5;
    }

    v20 = *(stream + 4);
    if (v20 && (*(v20 + 48) & 0x10) != 0)
    {
      pthread_mutex_lock((stream + 56));
      v21 = *(stream + 4);
      if (v21 && (v22 = *(v21 + 56)) != 0)
      {
        CFRetain(*(v21 + 56));
        pthread_mutex_unlock((stream + 56));
        *(*(stream + 4) + 72) |= 0x10uLL;
        CFRunLoopSourceSignal(v22);
        CFRelease(v22);
        _wakeUpRunLoop(stream);
      }

      else
      {
        pthread_mutex_unlock((stream + 56));
      }
    }
  }

  else
  {
    v23 = v14 ^ 1;
    if (v6)
    {
      v23 = 1;
    }

    if ((v23 & 1) == 0)
    {
      *(*(stream + 4) + 72) |= 2uLL;
    }

    if ((*v12 & 0x1E) != 6)
    {
      *v12 = *v12 & 0xFFFFFFE0 | 2;
    }
  }

  *v12 &= ~0x40uLL;
LABEL_50:
  v24 = *MEMORY[0x1E69E9840];
  return v6;
}

Boolean CFWriteStreamCanAcceptBytes(CFWriteStreamRef stream)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {
    return [(__CFWriteStream *)stream hasSpaceAvailable];
  }

  Status = _CFStreamGetStatus(stream);
  if (Status != 4 && Status != 2)
  {
    return 0;
  }

  v5 = *(stream + 6);
  v6 = v5[10];
  if (!v6)
  {
    return 1;
  }

  *(stream + 2) |= 0x40uLL;
  if (*v5 > 1)
  {
    v2 = v6(stream, stream + 24, *(stream + 5));
    if (*(stream + 3))
    {
      v7 = *(stream + 2);
      if ((v7 & 0x1F) != 7)
      {
        *(stream + 2) = v7 & 0xFFFFFFE0 | 7;
      }

      v8 = *(stream + 4);
      if (v8 && (*(v8 + 48) & 8) != 0)
      {
        pthread_mutex_lock((stream + 56));
        v9 = *(stream + 4);
        if (v9 && (v10 = *(v9 + 56)) != 0)
        {
          CFRetain(*(v9 + 56));
          pthread_mutex_unlock((stream + 56));
          *(*(stream + 4) + 72) |= 8uLL;
          CFRunLoopSourceSignal(v10);
          CFRelease(v10);
          _wakeUpRunLoop(stream);
        }

        else
        {
          pthread_mutex_unlock((stream + 56));
        }
      }
    }
  }

  else
  {
    v2 = (v6)(stream, *(stream + 5));
  }

  *(stream + 2) &= ~0x40uLL;
  return v2;
}

uint64_t _CFStreamCopyProperty(void *a1, uint64_t a2)
{
  v2 = *(a1[6] + 96);
  if (!v2)
  {
    return 0;
  }

  a1[2] |= 0x40uLL;
  result = v2(a1, a2, a1[5]);
  a1[2] &= ~0x40uLL;
  return result;
}

uint64_t _CFStreamSetProperty(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1[6] + 104);
  if (!v3)
  {
    return 0;
  }

  a1[2] |= 0x40uLL;
  result = v3(a1, a2, a3, a1[5]);
  a1[2] &= ~0x40uLL;
  return result;
}

Boolean CFWriteStreamSetProperty(CFWriteStreamRef stream, CFStreamPropertyKey propertyName, CFTypeRef propertyValue)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {
    return [(__CFWriteStream *)stream setProperty:propertyValue forKey:propertyName];
  }

  v7 = *(*(stream + 6) + 104);
  if (!v7)
  {
    return 0;
  }

  *(stream + 2) |= 0x40uLL;
  result = v7(stream, propertyName, propertyValue, *(stream + 5));
  *(stream + 2) &= ~0x40uLL;
  return result;
}

double _CFReadStreamInitialize(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 56) = 850045857;
    result = 0.0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0;
  }

  return result;
}

double _CFWriteStreamInitialize(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 56) = 850045857;
    result = 0.0;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0;
  }

  return result;
}

uint64_t _CFReadStreamGetClient(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t _CFWriteStreamGetClient(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

void CFWriteStreamScheduleWithRunLoop(CFWriteStreamRef stream, CFRunLoopRef runLoop, CFRunLoopMode runLoopMode)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {
    if (objc_opt_respondsToSelector())
    {

      [(__CFWriteStream *)stream _scheduleInCFRunLoop:runLoop forMode:runLoopMode];
    }

    else
    {
      v6 = _CFRunLoopGet2(runLoop);

      [(__CFWriteStream *)stream scheduleInRunLoop:v6 forMode:runLoopMode];
    }
  }

  else
  {

    _CFStreamScheduleWithRunLoop(stream, runLoop, runLoopMode);
  }
}

void CFReadStreamUnscheduleFromRunLoop(CFReadStreamRef stream, CFRunLoopRef runLoop, CFRunLoopMode runLoopMode)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    if (objc_opt_respondsToSelector())
    {

      [(__CFReadStream *)stream _unscheduleFromCFRunLoop:runLoop forMode:runLoopMode];
    }

    else
    {
      v6 = _CFRunLoopGet2(runLoop);

      [(__CFReadStream *)stream removeFromRunLoop:v6 forMode:runLoopMode];
    }
  }

  else
  {

    _CFStreamUnscheduleFromRunLoop(stream, runLoop, runLoopMode);
  }
}

void CFWriteStreamUnscheduleFromRunLoop(CFWriteStreamRef stream, CFRunLoopRef runLoop, CFRunLoopMode runLoopMode)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {
    if (objc_opt_respondsToSelector())
    {

      [(__CFWriteStream *)stream _unscheduleFromCFRunLoop:runLoop forMode:runLoopMode];
    }

    else
    {
      v6 = _CFRunLoopGet2(runLoop);

      [(__CFWriteStream *)stream removeFromRunLoop:v6 forMode:runLoopMode];
    }
  }

  else
  {

    _CFStreamUnscheduleFromRunLoop(stream, runLoop, runLoopMode);
  }
}

uint64_t _CFReadStreamClearEvent(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    *(v2 + 72) &= ~a2;
  }

  return result;
}

uint64_t CFWriteStreamGetInfoPointer(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t _CFStringGetInputIdentifierFormatterMappingFromDescriptor(uint64_t a1)
{
  v3[5] = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___CFStringGetInputIdentifierFormatterMappingFromDescriptor_block_invoke;
  v3[3] = &__block_descriptor_40_e5_v8__0l;
  v3[4] = a1;
  if (_CFStringGetInputIdentifierFormatterMappingFromDescriptor_loc_formatting_family_info_init != -1)
  {
    dispatch_once(&_CFStringGetInputIdentifierFormatterMappingFromDescriptor_loc_formatting_family_info_init, v3);
  }

  result = _CFStringGetInputIdentifierFormatterMappingFromDescriptor_localizedStringFormattingFamilyInfo;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __CFStringCopyCharSetWithPattern(const __CFString *a1, unint64_t **a2)
{
  v12 = *MEMORY[0x1E69E9840];
  HIDWORD(v11) = 0;
  Length = CFStringGetLength(a1);
  if (CFStringGetCharactersPtr(a1))
  {
    v7 = uset_openPattern();
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v5);
    v13.location = 0;
    v13.length = Length;
    CFStringGetCharacters(a1, v13, (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0)));
    v7 = uset_openPattern();
  }

  if (SHIDWORD(v11) <= 0)
  {
    *a2 = _CFCreateCharacterSetFromUSet(v7, v6);
    uset_close();
    result = *a2 != 0;
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void *_CFStringGetRelevantLocaleInfoFromLocaleSummary(const __CFDictionary *a1, const __CFLocale *a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  value = 0;
  Count = CFDictionaryGetCount(a1);
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    goto LABEL_22;
  }

  if (Count >> 60)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
    v20 = [NSException exceptionWithName:@"NSGenericException" reason:v19 userInfo:0];
    CFRelease(v19);
    objc_exception_throw(v20);
  }

  v7 = Mutable;
  if (Count <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = Count;
  }

  v9 = MEMORY[0x1EEE9AC00](v8, v6);
  v11 = (&v21 - v10);
  v21 = 0;
  if (Count >= 0x101)
  {
    v11 = _CFCreateArrayStorage(v9, 0, &v21);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  CFDictionaryGetKeysAndValues(a1, v11, 0);
  for (; Count; --Count)
  {
    CFArrayAppendValue(v7, *v11++);
  }

  values[0] = CFLocaleGetIdentifier(a2);
  v13 = CFArrayCreate(&__kCFAllocatorSystemDefault, values, 1, &kCFTypeArrayCallBacks);
  v14 = CFBundleCopyLocalizationsForPreferences(v7, v13);
  v15 = CFBundleCopyPreferredLocalizationsFromArray(v14);
  if (CFArrayGetCount(v15) > 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v15, 0);
    free(v12);
    if (!CFDictionaryGetValueIfPresent(a1, ValueAtIndex, &value))
    {
      value = CFDictionaryGetValue(a1, @"default");
    }

    if (!v15)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  free(v12);
  if (v15)
  {
LABEL_17:
    CFRelease(v15);
  }

LABEL_18:
  if (v14)
  {
    CFRelease(v14);
  }

  CFRelease(v7);
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_22:
  result = value;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFStringContentsInCharacterSet(const __CFString *a1, const __CFCharacterSet *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 1;
  if (a1)
  {
    if (a2)
    {
      MutableCopy = CFCharacterSetCreateMutableCopy(0, a2);
      if (MutableCopy)
      {
        v5 = MutableCopy;
        CFCharacterSetInvert(MutableCopy);
        CFCharacterSetRemoveCharactersInString(v5, @" ");
        v9 = xmmword_183306FB0;
        v11.length = CFStringGetLength(a1);
        v11.location = 0;
        if (CFStringFindCharacterFromSet(a1, v5, v11, 0, &v9))
        {
          v6 = 0;
        }

        else
        {
          v6 = v9.location == -1;
        }

        v2 = v6;
        CFRelease(v5);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _CFStringConditionalFormattingMeetsCondition(const __CFString *a1, CFLocaleRef locale)
{
  v7 = *MEMORY[0x1E69E9840];
  result = CFLocaleGetValue(locale, @"kCFLocaleLanguageCodeKey");
  if (result)
  {
    result = CFEqual(result, @"fi");
    if (result)
    {
      Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
      v6 = xmmword_183306FB0;
      v8.length = CFStringGetLength(a1);
      v8.location = 0;
      result = CFStringFindCharacterFromSet(a1, Predefined, v8, 0, &v6) != 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef _CFStringCopyVocativeCaseOfGivenName(const __CFString *a1, CFLocaleRef locale)
{
  Value = CFLocaleGetValue(locale, @"kCFLocaleLanguageCodeKey");
  if (!Value)
  {
    goto LABEL_18;
  }

  v5 = Value;
  if (CFEqual(Value, @"cs"))
  {

    return _CFStringCopyVocativeCaseOfGivenName_cs(a1, locale);
  }

  if (CFEqual(v5, @"el"))
  {

    return _CFStringCopyVocativeCaseOfGivenName_el(a1, locale);
  }

  if (CFEqual(v5, @"uk"))
  {

    return _CFStringCopyVocativeCaseOfGivenName_uk(a1, locale);
  }

  if (CFEqual(v5, @"lt"))
  {

    return _CFStringCopyVocativeCaseOfGivenName_lt(a1, locale);
  }

  else
  {
LABEL_18:

    return CFRetain(a1);
  }
}

CFTypeRef _CFStringCopyVocativeCaseOfGivenName_cs(CFStringRef theString, const __CFLocale *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, theString);
  if (MutableCopy)
  {
    v6 = MutableCopy;
    CFStringLowercase(MutableCopy, a2);
    Count = CFArrayGetCount(&off_1EF1B9E10);
    v65.location = 0;
    v65.length = Count;
    v8 = CFArrayBSearchValues(&off_1EF1B9E10, v65, v6, CFStringCompare, 0);
    if (v8 < Count)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(&off_1EF1B9E10, v8);
      if (CFStringCompare(v6, ValueAtIndex, 0) == kCFCompareEqualTo)
      {
        v25 = theString;
        goto LABEL_24;
      }
    }

    if (CFStringCompare(v6, @"seth", 0) == kCFCompareEqualTo)
    {
      Length = CFStringGetLength(v6);
      CFStringReplaceAll(v6, theString);
      v23 = Length - 1;
      v17 = CFStringGetLength(v6);
      v18.location = v17 - v23;
      if (v17 >= v23)
      {
        v18.length = v23;
        CFStringReplace(v6, v18, @"ethe");
LABEL_23:
        v25 = v6;
LABEL_24:
        v26 = CFRetain(v25);
        CFRelease(v6);
        if (v26)
        {
LABEL_26:
          v27 = *MEMORY[0x1E69E9840];
          return v26;
        }

LABEL_25:
        v26 = CFRetain(theString);
        goto LABEL_26;
      }

      goto LABEL_57;
    }

    if (CFStringHasSuffix(v6, @"a"))
    {
      CFStringReplaceAll(v6, theString);
      v17 = CFStringGetLength(v6);
      if (v17 > 0)
      {
        v19.location = v17 - 1;
        v20 = @"o";
LABEL_8:
        v21 = v6;
        v19.length = 1;
LABEL_22:
        CFStringReplace(v21, v19, v20);
        goto LABEL_23;
      }

      goto LABEL_57;
    }

    v58 = @"uk";
    v59 = 0;
    v56 = @"ík";
    v57 = @"ck";
    v54 = @"g";
    v55 = @"ik";
    if (__CFStringHasOneOfSuffixes(v6, v10, v11, v12, v13, v14, v15, v16, @"h"))
    {
      CFStringReplaceAll(v6, theString);
      chars = 117;
      p_chars = &chars;
LABEL_13:
      CFStringAppendCharacters(v6, p_chars, 1);
      goto LABEL_23;
    }

    if (CFStringHasSuffix(v6, @"nec"))
    {
      CFStringReplaceAll(v6, theString);
      v17 = CFStringGetLength(v6);
      if (v17 > 1)
      {
        v19.location = v17 - 2;
        v20 = @"če";
LABEL_21:
        v21 = v6;
        v19.length = 2;
        goto LABEL_22;
      }
    }

    else if (CFStringHasSuffix(v6, @"ius"))
    {
      CFStringReplaceAll(v6, theString);
      v17 = CFStringGetLength(v6);
      if (v17 > 1)
      {
        v19.location = v17 - 2;
        v20 = @"e";
        goto LABEL_21;
      }
    }

    else
    {
      if (CFStringHasSuffix(v6, @"uce"))
      {
        CFStringReplaceAll(v6, theString);
        v17 = CFStringGetLength(v6);
        if (v17 > 0)
        {
          v19.location = v17 - 1;
          v20 = @"i";
          goto LABEL_8;
        }

        goto LABEL_57;
      }

      v58 = @"xel";
      v59 = 0;
      v56 = @"rel";
      v57 = @"bel";
      if (!__CFStringHasOneOfSuffixes(v6, v29, v30, v31, v32, v33, v34, v35, @"vel"))
      {
        if (CFStringHasSuffix(v6, @"les"))
        {
          CFStringReplaceAll(v6, theString);
          v66.location = CFStringGetLength(v6) - 1;
          v66.length = 1;
          CFStringDelete(v6, v66);
          goto LABEL_23;
        }

        v58 = @"oř";
        v59 = 0;
        v56 = @"c";
        v57 = @"lix";
        v54 = @"j";
        v55 = @"ex";
        v52 = @"ž";
        v53 = @"el";
        v51 = @"z";
        if (__CFStringHasOneOfSuffixes(v6, v36, v37, v38, v39, v40, v41, v42, @"s"))
        {
          CFStringReplaceAll(v6, theString);
          v62 = 105;
          p_chars = &v62;
          goto LABEL_13;
        }

        if (CFStringHasSuffix(v6, @"děk"))
        {
          CFStringReplaceAll(v6, theString);
          v17 = CFStringGetLength(v6);
          if (v17 <= 2)
          {
            goto LABEL_57;
          }

          v19.location = v17 - 3;
          v20 = @"ďku";
        }

        else
        {
          if (!CFStringHasSuffix(v6, @"něk"))
          {
            if (CFStringHasSuffix(v6, @"ek"))
            {
              CFStringReplaceAll(v6, theString);
              v17 = CFStringGetLength(v6);
              if (v17 > 1)
              {
                v19.location = v17 - 2;
                v20 = @"ku";
                goto LABEL_21;
              }
            }

            else if (CFStringHasSuffix(v6, @"ter"))
            {
              CFStringReplaceAll(v6, theString);
              v17 = CFStringGetLength(v6);
              if (v17 > 1)
              {
                v19.location = v17 - 2;
                v20 = @"ře";
                goto LABEL_21;
              }
            }

            else
            {
              if (!CFStringHasSuffix(v6, @"tr"))
              {
                v59 = @"b";
                v60 = 0;
                v57 = @"p";
                v58 = @"f";
                v55 = @"m";
                v56 = @"l";
                v53 = @"n";
                v54 = @"v";
                v51 = @"d";
                v52 = @"t";
                if (!__CFStringHasOneOfSuffixes(v6, v43, v44, v45, v46, v47, v48, v49, @"h"))
                {
                  CFRelease(v6);
                  goto LABEL_25;
                }

                CFStringReplaceAll(v6, theString);
                v61 = 101;
                p_chars = &v61;
                goto LABEL_13;
              }

              CFStringReplaceAll(v6, theString);
              v17 = CFStringGetLength(v6);
              if (v17 > 0)
              {
                v19.location = v17 - 1;
                v20 = @"ře";
                goto LABEL_8;
              }
            }

            goto LABEL_57;
          }

          CFStringReplaceAll(v6, theString);
          v17 = CFStringGetLength(v6);
          if (v17 <= 2)
          {
            goto LABEL_57;
          }

          v19.location = v17 - 3;
          v20 = @"ňku";
        }

        v21 = v6;
        v19.length = 3;
        goto LABEL_22;
      }

      CFStringReplaceAll(v6, theString);
      v17 = CFStringGetLength(v6);
      if (v17 > 1)
      {
        v19.location = v17 - 2;
        v20 = @"le";
        goto LABEL_21;
      }
    }

LABEL_57:
    MEMORY[0x1EEE9AC00](v17, v18.location);
    v50 = &v51;
    __strlcpy_chk();
    __strlcat_chk();
    goto LABEL_58;
  }

  MEMORY[0x1EEE9AC00](0, v5);
  v50 = &v53;
  __strlcpy_chk();
  __strlcat_chk();
LABEL_58:
  result = __strlcat_chk();
  qword_1EA849A30 = v50;
  __break(1u);
  return result;
}

CFTypeRef _CFStringCopyVocativeCaseOfGivenName_el(CFStringRef theString1, const __CFLocale *a2)
{
  v4 = 0;
  v37 = *MEMORY[0x1E69E9840];
  do
  {
    if (CFStringCompare(theString1, *(&_CFStringCopyVocativeCaseOfGivenName_el_keys + v4), 0) == kCFCompareEqualTo)
    {
      theString1 = *(&_CFStringCopyVocativeCaseOfGivenName_el_values + v4);
      goto LABEL_29;
    }

    v4 += 8;
  }

  while (v4 != 96);
  MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, theString1);
  if (!MutableCopy)
  {
    MEMORY[0x1EEE9AC00](0, v6);
    v32 = v34;
    __strlcpy_chk();
    __strlcat_chk();
    goto LABEL_35;
  }

  v7 = MutableCopy;
  CFStringLowercase(MutableCopy, a2);
  v35 = @"άς";
  v36 = 0;
  v34[3] = @"ής";
  v34[4] = @"ας";
  if (__CFStringHasOneOfSuffixes(v7, v8, v9, v10, v11, v12, v13, v14, @"ης"))
  {
    goto LABEL_6;
  }

  if (CFStringHasSuffix(v7, @"ιος"))
  {
LABEL_10:
    CFStringReplaceAll(v7, theString1);
    Length = CFStringGetLength(v7);
    if (Length > 1)
    {
      v17.location = Length - 2;
      v18 = @"ε";
      goto LABEL_15;
    }

LABEL_34:
    MEMORY[0x1EEE9AC00](Length, v16);
    v32 = &v33;
    __strlcpy_chk();
    __strlcat_chk();
LABEL_35:
    result = __strlcat_chk();
    qword_1EA849A30 = v32;
    __break(1u);
    return result;
  }

  if (CFStringHasSuffix(v7, @"ός"))
  {
    CFStringReplaceAll(v7, theString1);
    Length = CFStringGetLength(v7);
    if (Length <= 1)
    {
      goto LABEL_34;
    }

    v17.location = Length - 2;
    v18 = @"έ";
LABEL_15:
    v17.length = 2;
    CFStringReplace(v7, v17, v18);
    goto LABEL_16;
  }

  if (CFStringHasSuffix(v7, @"ος"))
  {
    v29 = __CFStringApproximateSyllableCount_el_GR(v7);
    if (v29 == 2)
    {
LABEL_6:
      CFStringReplaceAll(v7, theString1);
      Length = CFStringGetLength(v7);
      if (Length <= 0)
      {
        goto LABEL_34;
      }

      v39.location = Length - 1;
      v39.length = 1;
      CFStringDelete(v7, v39);
      goto LABEL_16;
    }

    if (v29 >= 3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v35 = @"ών";
    v36 = 0;
    if (__CFStringHasOneOfSuffixes(v7, v22, v23, v24, v25, v26, v27, v28, @"ων"))
    {
      v30 = __CFStringApproximateSyllableCount_el_GR(v7);
      switch(v30)
      {
        case 4:
          goto LABEL_26;
        case 3:
          CFStringReplaceAll(v7, theString1);
          CFStringAppend(v7, @"τα");
LABEL_16:
          v19 = CFRetain(v7);
          CFRelease(v7);
          if (v19)
          {
            v20 = *MEMORY[0x1E69E9840];
            return v19;
          }

          goto LABEL_29;
        case 2:
LABEL_26:
          CFStringReplaceAll(v7, theString1);
          Length = CFStringGetLength(v7);
          if (Length <= 1)
          {
            goto LABEL_34;
          }

          v17.location = Length - 2;
          v18 = @"ονα";
          goto LABEL_15;
      }
    }
  }

  CFRelease(v7);
LABEL_29:
  v31 = *MEMORY[0x1E69E9840];

  return CFRetain(theString1);
}

CFTypeRef _CFStringCopyVocativeCaseOfGivenName_uk(CFStringRef theString, const __CFLocale *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, theString);
  if (MutableCopy)
  {
    v6 = MutableCopy;
    CFStringLowercase(MutableCopy, a2);
    if (CFStringCompare(v6, @"фредрік", 0))
    {
      if (CFStringCompare(v6, @"зорян", 0))
      {
        if (CFStringCompare(v6, @"зиновій", 0))
        {
          if (CFStringCompare(v6, @"младен", 0))
          {
            v73 = @"ма";
            v74 = 0;
            v72 = @"на";
            if (__CFStringHasOneOfSuffixes(v6, v7, v8, v9, v10, v11, v12, v13, @"ва"))
            {
              goto LABEL_7;
            }

            v73 = @"лля";
            v74 = 0;
            v72 = @"оя";
            if (__CFStringHasOneOfSuffixes(v6, v14, v15, v16, v17, v18, v19, v20, @"ія"))
            {
LABEL_22:
              CFStringReplaceAll(v6, theString);
              Length = CFStringGetLength(v6);
              if (Length > 0)
              {
                v23.location = Length - 1;
                v24 = @"є";
                goto LABEL_30;
              }

              goto LABEL_53;
            }

            v73 = @"по";
            v74 = 0;
            v71 = @"ро";
            v72 = @"хіль";
            v70 = @"ися";
            if (__CFStringHasOneOfSuffixes(v6, v34, v35, v36, v37, v38, v39, v40, @"ло"))
            {
              CFStringReplaceAll(v6, theString);
              Length = CFStringGetLength(v6);
              if (Length > 0)
              {
                v23.location = Length - 1;
                v24 = @"е";
                goto LABEL_30;
              }

              goto LABEL_53;
            }

            v72 = @"ся";
            v73 = 0;
            v70 = @"ая";
            v71 = @"тя";
            v68 = @"ль";
            v69 = @"ня";
            v66 = @"ь";
            v67 = @"ля";
            if (__CFStringHasOneOfSuffixes(v6, v41, v42, v43, v44, v45, v46, v47, @"й"))
            {
              CFStringReplaceAll(v6, theString);
              Length = CFStringGetLength(v6);
              if (Length > 0)
              {
                v23.location = Length - 1;
                v24 = @"ю";
                goto LABEL_30;
              }

              goto LABEL_53;
            }

            if (CFStringHasSuffix(v6, @"я"))
            {
              goto LABEL_22;
            }

            v72 = @"г";
            v73 = 0;
            if (__CFStringHasOneOfSuffixes(v6, v49, v50, v51, v52, v53, v54, v55, @"к"))
            {
              CFStringReplaceAll(v6, theString);
              chars = 1091;
              p_chars = &chars;
              goto LABEL_35;
            }

            if (CFStringHasSuffix(v6, @"ко"))
            {
              CFStringReplaceAll(v6, theString);
              Length = CFStringGetLength(v6);
              if (Length > 0)
              {
                v23.location = Length - 1;
                v24 = @"у";
                goto LABEL_30;
              }

              goto LABEL_53;
            }

            if (CFStringHasSuffix(v6, @"ір"))
            {
              CFStringReplaceAll(v6, theString);
              Length = CFStringGetLength(v6);
              if (Length > 1)
              {
                v23.location = Length - 2;
                v24 = @"оре";
LABEL_45:
                v48 = v6;
                v23.length = 2;
                goto LABEL_31;
              }
            }

            else
            {
              if (!CFStringHasSuffix(v6, @"ів"))
              {
                if (CFStringHasSuffix(v6, @"а"))
                {
LABEL_7:
                  CFStringReplaceAll(v6, theString);
                  Length = CFStringGetLength(v6);
                  if (Length > 0)
                  {
                    v23.location = Length - 1;
                    v24 = @"о";
LABEL_30:
                    v48 = v6;
                    v23.length = 1;
LABEL_31:
                    CFStringReplace(v48, v23, v24);
                    goto LABEL_18;
                  }

                  goto LABEL_53;
                }

                if (CFStringHasSuffix(v6, @"шан"))
                {
                  CFStringReplaceAll(v6, theString);
                  v76 = 1086;
                  p_chars = &v76;
                }

                else
                {
                  v72 = @"ц";
                  v73 = 0;
                  v70 = @"б";
                  v71 = @"ш";
                  v68 = @"д";
                  v69 = @"ф";
                  v66 = @"л";
                  v67 = @"п";
                  v65 = @"с";
                  if (!__CFStringHasOneOfSuffixes(v6, v57, v58, v59, v60, v61, v62, v63, @"н"))
                  {
                    CFRelease(v6);
                    goto LABEL_19;
                  }

                  CFStringReplaceAll(v6, theString);
                  v75 = 1077;
                  p_chars = &v75;
                }

LABEL_35:
                CFStringAppendCharacters(v6, p_chars, 1);
LABEL_18:
                v31 = CFRetain(v6);
                CFRelease(v6);
                if (v31)
                {
LABEL_20:
                  v32 = *MEMORY[0x1E69E9840];
                  return v31;
                }

LABEL_19:
                v31 = CFRetain(theString);
                goto LABEL_20;
              }

              CFStringReplaceAll(v6, theString);
              Length = CFStringGetLength(v6);
              if (Length > 1)
              {
                v23.location = Length - 2;
                v24 = @"ове";
                goto LABEL_45;
              }
            }

LABEL_53:
            MEMORY[0x1EEE9AC00](Length, v22.location);
            v64 = &v65;
            __strlcpy_chk();
            __strlcat_chk();
            goto LABEL_54;
          }

          v30 = CFStringGetLength(v6);
          CFStringReplaceAll(v6, theString);
          v26 = v30 - 1;
          Length = CFStringGetLength(v6);
          v22.location = Length - v26;
          if (Length < v26)
          {
            goto LABEL_53;
          }

          v27 = @"ладлене";
        }

        else
        {
          v29 = CFStringGetLength(v6);
          CFStringReplaceAll(v6, theString);
          v26 = v29 - 1;
          Length = CFStringGetLength(v6);
          v22.location = Length - v26;
          if (Length < v26)
          {
            goto LABEL_53;
          }

          v27 = @"іновію";
        }
      }

      else
      {
        v28 = CFStringGetLength(v6);
        CFStringReplaceAll(v6, theString);
        v26 = v28 - 1;
        Length = CFStringGetLength(v6);
        v22.location = Length - v26;
        if (Length < v26)
        {
          goto LABEL_53;
        }

        v27 = @"оране";
      }
    }

    else
    {
      v25 = CFStringGetLength(v6);
      CFStringReplaceAll(v6, theString);
      v26 = v25 - 1;
      Length = CFStringGetLength(v6);
      v22.location = Length - v26;
      if (Length < v26)
      {
        goto LABEL_53;
      }

      v27 = @"редеріку";
    }

    v22.length = v26;
    CFStringReplace(v6, v22, v27);
    goto LABEL_18;
  }

  MEMORY[0x1EEE9AC00](0, v5);
  v64 = &v67;
  __strlcpy_chk();
  __strlcat_chk();
LABEL_54:
  result = __strlcat_chk();
  qword_1EA849A30 = v64;
  __break(1u);
  return result;
}

CFTypeRef _CFStringCopyVocativeCaseOfGivenName_lt(CFStringRef theString, const __CFLocale *a2)
{
  v18[9] = *MEMORY[0x1E69E9840];
  MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, theString);
  if (!MutableCopy)
  {
    MEMORY[0x1EEE9AC00](0, v5);
    v16 = v18;
    __strlcpy_chk();
    __strlcat_chk();
LABEL_27:
    result = __strlcat_chk();
    qword_1EA849A30 = v16;
    __break(1u);
    return result;
  }

  v6 = MutableCopy;
  CFStringLowercase(MutableCopy, a2);
  if (CFStringHasSuffix(v6, @"jas"))
  {
    CFStringReplaceAll(v6, theString);
    Length = CFStringGetLength(v6);
    if (Length > 0)
    {
      v9.location = Length - 1;
      v10 = @"u";
LABEL_8:
      v11 = v6;
      v9.length = 1;
LABEL_9:
      CFStringReplace(v11, v9, v10);
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  if (CFStringHasSuffix(v6, @"as"))
  {
    CFStringReplaceAll(v6, theString);
    Length = CFStringGetLength(v6);
    if (Length > 0)
    {
      v9.location = Length - 1;
      v10 = @"i";
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  if (CFStringHasSuffix(v6, @"us"))
  {
    CFStringReplaceAll(v6, theString);
    Length = CFStringGetLength(v6);
    if (Length > 1)
    {
      v9.location = Length - 2;
      v10 = @"au";
      v11 = v6;
      v9.length = 2;
      goto LABEL_9;
    }

LABEL_26:
    MEMORY[0x1EEE9AC00](Length, v8);
    v16 = &v17;
    __strlcpy_chk();
    __strlcat_chk();
    goto LABEL_27;
  }

  if (CFStringHasSuffix(v6, @"is") || CFStringHasSuffix(v6, @"ys"))
  {
    CFStringReplaceAll(v6, theString);
    v20.location = CFStringGetLength(v6) - 1;
    v20.length = 1;
    CFStringDelete(v6, v20);
LABEL_10:
    v12 = CFRetain(v6);
    CFRelease(v6);
    if (v12)
    {
      v13 = *MEMORY[0x1E69E9840];
      return v12;
    }

    goto LABEL_22;
  }

  if (CFStringHasSuffix(v6, @"ė"))
  {
    CFStringReplaceAll(v6, theString);
    Length = CFStringGetLength(v6);
    if (Length > 0)
    {
      v9.location = Length - 1;
      v10 = @"e";
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  CFRelease(v6);
LABEL_22:
  v15 = *MEMORY[0x1E69E9840];

  return CFRetain(theString);
}

BOOL __CFStringHasOneOfSuffixes(CFStringRef theString, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = &a9;
  do
  {
    v10 = v14++;
    v11 = *v10;
  }

  while (*v10 && !CFStringHasSuffix(theString, *v10));
  result = v11 != 0;
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFStringApproximateSyllableCount_el_GR(const __CFString *a1)
{
  v37 = *MEMORY[0x1E69E9840];
  theString = a1;
  v33 = 0;
  Length = CFStringGetLength(a1);
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v31 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  memset(v29, 0, sizeof(v29));
  v35 = 0;
  v36 = 0;
  v32 = CStringPtr;
  v4 = Length;
  if (Length >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      if (v31)
      {
        v8 = v31[v33 + v5];
      }

      else if (v32)
      {
        v8 = v32[v33 + v5];
      }

      else
      {
        v9 = v36 > v5 && v7 <= v5;
        if (!v9)
        {
          v10 = v5 - 4;
          if (v5 < 4)
          {
            v10 = 0;
          }

          if (v10 + 64 < v4)
          {
            v4 = v10 + 64;
          }

          v35 = v10;
          v36 = v4;
          v38.length = v4 - v10;
          v38.location = v33 + v10;
          CFStringGetCharacters(theString, v38, v29);
          v7 = v35;
        }

        v8 = *(v29 + v5 - v7);
      }

      if (v8 > 0x3B8u)
      {
        if (v8 > 0x3C8u)
        {
          if (v8 - 972 >= 3 && v8 != 969)
          {
            goto LABEL_58;
          }

          goto LABEL_31;
        }

        switch(v8)
        {
          case 0x3B9u:
            v11 = v5 + 1;
            v14 = Length;
            if (Length > (v5 + 1))
            {
              if (v31)
              {
                v15 = v31[v33 + v11];
              }

              else if (v32)
              {
                v15 = v32[v33 + v11];
              }

              else
              {
                if (v36 <= v11 || v7 > v11)
                {
                  v19 = v5 - 3;
                  if (v5 < 3)
                  {
                    v19 = 0;
                  }

                  if (v19 + 64 < Length)
                  {
                    v14 = v19 + 64;
                  }

                  v35 = v19;
                  v36 = v14;
                  v40.length = v14 - v19;
                  v40.location = v33 + v19;
                  CFStringGetCharacters(theString, v40, v29);
                  v7 = v35;
                }

                v15 = *(v29 + v11 - v7);
              }

              v20 = v15 - 940;
              v9 = v20 > 0x22;
              v21 = (1 << v20) & 0x420000021;
              if (!v9 && v21 != 0)
              {
                goto LABEL_57;
              }
            }

LABEL_56:
            v11 = v5;
            goto LABEL_57;
          case 0x3BFu:
            v11 = v5 + 1;
            v16 = Length;
            if (Length > (v5 + 1))
            {
              if (v31)
              {
                v17 = v31[v33 + v11];
              }

              else if (v32)
              {
                v17 = v32[v33 + v11];
              }

              else
              {
                if (v36 <= v11 || v7 > v11)
                {
                  v23 = v5 - 3;
                  if (v5 < 3)
                  {
                    v23 = 0;
                  }

                  if (v23 + 64 < Length)
                  {
                    v16 = v23 + 64;
                  }

                  v35 = v23;
                  v36 = v16;
                  v41.length = v16 - v23;
                  v41.location = v33 + v23;
                  CFStringGetCharacters(theString, v41, v29);
                  v7 = v35;
                }

                v17 = *(v29 + v11 - v7);
              }

              v24 = v17 - 943;
              v9 = v24 > 0x1E;
              v25 = (1 << v24) & 0x40400401;
              if (!v9 && v25 != 0)
              {
                goto LABEL_57;
              }
            }

            goto LABEL_56;
          case 0x3C5u:
            goto LABEL_35;
        }
      }

      else
      {
        if (v8 <= 0x3B0u)
        {
          if (v8 - 940 >= 4)
          {
            if (!v8)
            {
              goto LABEL_93;
            }

            goto LABEL_58;
          }

LABEL_31:
          ++v6;
          goto LABEL_58;
        }

        if (v8 == 945 || v8 == 949)
        {
LABEL_35:
          v11 = v5 + 1;
          v12 = Length;
          if (Length <= (v5 + 1))
          {
            goto LABEL_56;
          }

          if (v31)
          {
            v13 = v31[v33 + v11];
          }

          else if (v32)
          {
            v13 = v32[v33 + v11];
          }

          else
          {
            if (v36 <= v11 || v7 > v11)
            {
              v18 = v5 - 3;
              if (v5 < 3)
              {
                v18 = 0;
              }

              if (v18 + 64 < Length)
              {
                v12 = v18 + 64;
              }

              v35 = v18;
              v36 = v12;
              v39.length = v12 - v18;
              v39.location = v33 + v18;
              CFStringGetCharacters(theString, v39, v29);
              v7 = v35;
            }

            v13 = *(v29 + v11 - v7);
          }

          if (v13 != 953 && v13 != 943)
          {
            goto LABEL_56;
          }

LABEL_57:
          ++v6;
          v5 = v11;
          goto LABEL_58;
        }

        if (v8 == 951)
        {
          goto LABEL_31;
        }
      }

LABEL_58:
      ++v5;
      v4 = Length;
      if (Length <= v5)
      {
        goto LABEL_93;
      }
    }
  }

  v6 = 0;
LABEL_93:
  v27 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t boundPairReadOpenComplete(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 4))
  {
    CFReadStreamSignalEvent(a1, 1uLL, 0, a4, a5, a6, a7, a8);
    if (boundPairReadCanRead(v10, a3))
    {
      CFReadStreamSignalEvent(a1, 2uLL, 0, v11, v12, v13, v14, v15);
    }

    _wakeReadStreamScheduledRunLoops();
  }

  return 1;
}

__CFDictionary *boundPairReadSetProperty(uint64_t a1, const __CFString *a2, const void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v7 = CFStringCompare(@"_kCFStreamPropertyHTTPTrailer", a2, 1uLL);
  result = 0;
  if (a4)
  {
    if (v7 == kCFCompareEqualTo)
    {
      result = *(a4 + 40);
      if (result || (result = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (*(a4 + 40) = result) != 0))
      {
        if (a3)
        {
          CFDictionarySetValue(result, a2, a3);
        }

        else
        {
          CFDictionaryRemoveValue(result, a2);
        }

        return 1;
      }
    }
  }

  return result;
}

void boundPairReadUnschedule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 4);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      *(a4 + 4) = v6;
    }
  }
}

uint64_t boundPairWriteOpenComplete(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 52))
  {
    CFWriteStreamSignalEvent(a1, 1uLL, 0, a4, a5, a6, a7, a8);
    CFWriteStreamSignalEvent(a1, 4uLL, 0, v9, v10, v11, v12, v13);
    _wakeWriteStreamScheduledRunLoops();
  }

  return 1;
}

uint64_t _NSIndirectTaggedPointerStringIsEqualToTaggedPointer(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return isEqualToTaggedPointer_0(a1, a2);
  }
}

uint64_t (**__CFStringEncodingGetSimplifiedChineseConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingIsDecomposableCharacter)
  {
    __CFStringEncodingIsDecomposableCharacter = a2(1);
    __CFStringEncodingDecomposeCharacter = a2(2);
    __CFStringEncodingIsValidCombiningCharacterForLatin1_1 = a2(3);
    __CFStringEncodingPrecomposeLatinCharacter_3 = a2(4);
  }

  v4 = __CFConverterEUC_CN;
  v5 = __CFConverterMacSimplifiedChinese;
  if (a1 != 25)
  {
    v5 = 0;
  }

  if (a1 != 2352)
  {
    v4 = v5;
  }

  if (a1 == 2565)
  {
    return __CFConverterGB_HZ;
  }

  else
  {
    return v4;
  }
}

uint64_t __CFToEUC_CN(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 >= 0x80)
  {
    v5 = __CFToGB2312(a2);
    if (v5 == 65533)
    {
      return 0;
    }

    LOBYTE(a2) = v5 | 0x80;
    *a3++ = (v5 | 0x8080) >> 8;
    result = 2;
  }

  else
  {
    result = 1;
  }

  *a3 = a2;
  return result;
}

uint64_t __CFFromEUC_CN(uint64_t a1, char *a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = *a2;
  if (*a2 < 0)
  {
    result = 0;
    if (a3 >= 2 && (v4 - 255) >= 0xFFFFFFA2)
    {
      v6 = a2[1] & 0x7F | ((v4 & 0x7F) << 8);
      if ((v6 - 30594) < 0xA99Fu)
      {
        goto LABEL_13;
      }

      v7 = &__CFFromGB2312CharMap;
      v8 = (&__CFFromGB2312CharMap + 15906);
      while (1)
      {
        v9 = &v7[33 * ((0xF83E0F83E0F83E1 * (v8 - v7)) >> 1)];
        v10 = *v9;
        if (v10 <= v6)
        {
          if (v10 + 32 > v6)
          {
            v11 = v9[v6 - v10 + 1];
            if (v11)
            {
              *a4 = v11;
              if (v11 != 65533)
              {
                return 2;
              }

              return 0;
            }

LABEL_13:
            *a4 = -3;
            return 0;
          }

          v7 = v9 + 33;
        }

        else
        {
          v8 = v9 - 33;
        }

        if (v7 > v8)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    *a4 = v4;
    return 1;
  }

  return result;
}

uint64_t __CFToEUC_CNLen(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  for (result = 0; a3; --a3)
  {
    v4 = *a2++;
    if (v4 < 0x80)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    result += v5;
  }

  return result;
}

uint64_t __CFFromEUC_CNLen(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = a3 == 1 || *a2 >= 0;
    v6 = !v5;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    a2 += v7;
    if (v6)
    {
      v8 = -2;
    }

    else
    {
      v8 = -1;
    }

    ++result;
    v9 = __OFADD__(v8, a3);
    a3 += v8;
  }

  while (!((a3 < 0) ^ v9 | (a3 == 0)));
  return result;
}

uint64_t __CFToEUC_CNPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = *a2;
  if (v9 <= 0x7F)
  {
    v10 = __CFStringEncodingPrecomposeLatinCharacter_3(a2, a3, 0);
    goto LABEL_3;
  }

  result = 0;
  v14 = a2[1];
  if (v14 <= 0x3098)
  {
    if (v14 == 774)
    {
      if ((v9 & 0xFFFFFFDF) != 0x418)
      {
        return 0;
      }

      v10 = v9 | 1;
    }

    else
    {
      if (v14 != 776)
      {
        return result;
      }

      if (v9 == 1077)
      {
        v15 = 1105;
      }

      else
      {
        v15 = -3;
      }

      if (v9 == 1045)
      {
        v10 = 1025;
      }

      else
      {
        v10 = v15;
      }
    }

    goto LABEL_23;
  }

  if (v14 != 12441)
  {
    if (v14 != 12442)
    {
      return result;
    }

    v10 = v9 + 2;
    goto LABEL_3;
  }

  if (v9 != 12454)
  {
    v10 = v9 + 1;
LABEL_3:
    if (v10 < 0x80u)
    {
      v11 = &v24;
      goto LABEL_5;
    }

LABEL_23:
    if ((v10 + 15) < 0xB3u)
    {
      return 0;
    }

    v16 = v10;
    goto LABEL_25;
  }

  v16 = 12532;
  v10 = 12532;
LABEL_25:
  v17 = &__CFToGB2312CharMap;
  v18 = (&__CFToGB2312CharMap + 36516);
  while (1)
  {
    v19 = &v17[17 * ((0xF0F0F0F0F0F0F0F1 * (v18 - v17)) >> 1)];
    v20 = *v19;
    if (v20 <= v10)
    {
      break;
    }

    v18 = v19 - 17;
LABEL_30:
    if (v17 > v18)
    {
      return 0;
    }
  }

  if (v20 + 16 <= v16)
  {
    v17 = v19 + 17;
    goto LABEL_30;
  }

  v21 = v19[v16 - v20 + 1];
  if (v21)
  {
    v22 = v21 == 65533;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    return 0;
  }

  LOBYTE(v10) = v21 | 0x80;
  v24 = (v21 | 0x8080) >> 8;
  v11 = &v23;
LABEL_5:
  *v11 = v10;
  v12 = v24;
  if (!v24)
  {
    return 0;
  }

  result = 2;
  *a6 = 2;
  if (a5)
  {
    if (a5 >= 2)
    {
      *a4 = v12;
      a4[1] = v23;
      return 2;
    }

    return 0;
  }

  return result;
}

uint64_t __CFIsValidCombiningCharSimplifiedChinese(int a1)
{
  if ((a1 - 774) <= 0x32 && ((1 << (a1 - 6)) & 0x4000000000005) != 0 || (a1 - 12441) < 2)
  {
    return 1;
  }

  else
  {
    return __CFStringEncodingIsValidCombiningCharacterForLatin1_1();
  }
}

uint64_t __CFToGB2312(unsigned int a1)
{
  if ((a1 + 15) < 0xB3u)
  {
    return -3;
  }

  v1 = &__CFToGB2312CharMap;
  v2 = (&__CFToGB2312CharMap + 36516);
  while (1)
  {
    v3 = &v1[17 * ((0xF0F0F0F0F0F0F0F1 * (v2 - v1)) >> 1)];
    v4 = *v3;
    if (v4 <= a1)
    {
      break;
    }

    v2 = v3 - 17;
LABEL_7:
    if (v1 > v2)
    {
      return -3;
    }
  }

  if (v4 + 16 <= a1)
  {
    v1 = v3 + 17;
    goto LABEL_7;
  }

  v5 = v3[a1 - v4 + 1];
  if (!v5)
  {
    return -3;
  }

  return v5;
}

uint64_t __CFToMacSimplifiedChinese(char a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v62[1] = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    v19 = 0;
    v12 = 0;
    goto LABEL_171;
  }

  v11 = 0;
  v12 = 0;
  v60 = a3 + 1;
  v13 = &__CFToMacSimplifiedChineseMap;
  while (1)
  {
    if (!a5 || v11 < a5)
    {
      goto LABEL_15;
    }

    if ((a1 & 0x10) == 0)
    {
      goto LABEL_170;
    }

    v14 = *a2;
    if ((v14 - 774) <= 0x32 && ((1 << (v14 - 6)) & 0x4000000000005) != 0 || (v14 - 12441) < 2)
    {
      goto LABEL_16;
    }

    v17 = v13;
    IsValidCombiningCharacterForLatin1_1 = __CFStringEncodingIsValidCombiningCharacterForLatin1_1(*a2);
    v13 = v17;
    if ((IsValidCombiningCharacterForLatin1_1 & 1) == 0)
    {
      v14 = *a2;
      if ((v14 & 0xFFF0) != 0xF870)
      {
        goto LABEL_170;
      }
    }

    else
    {
LABEL_15:
      v14 = *a2;
      if (v14 < 0x80)
      {
        goto LABEL_18;
      }
    }

LABEL_16:
    if (a1 < 0 && (v14 - 131) <= 0x1Cu)
    {
LABEL_18:
      v19 = v11 + 1;
      if (a5)
      {
        *a4++ = v14;
      }

      goto LABEL_55;
    }

    if (v12 + 1 < a3 && v14 == 252)
    {
      if (a2[1] == -1921)
      {
        v19 = v11 + 1;
        if (a5)
        {
          *a4++ = 0x80;
        }

        ++a2;
        ++v12;
        goto LABEL_55;
      }

      goto LABEL_27;
    }

    if ((v14 + 443) < 0x25Bu)
    {
      break;
    }

LABEL_27:
    v20 = v13 + 78;
    v21 = v13;
    while (1)
    {
      v22 = &v21[2 * ((v20 - v21) >> 3)];
      v23 = *v22;
      if (v23 <= v14)
      {
        break;
      }

      v20 = v22 - 2;
LABEL_32:
      if (v21 > v20)
      {
        goto LABEL_33;
      }
    }

    if (v23 < v14)
    {
      v21 = v22 + 2;
      goto LABEL_32;
    }

    v28 = v22[1];
    if (v28 > 0xFF)
    {
      v19 = v11 + 2;
      if (a5)
      {
        if (v19 > a5)
        {
          goto LABEL_170;
        }

        *a4 = BYTE1(v28);
        goto LABEL_98;
      }
    }

    else
    {
      v19 = v11 + 1;
      if (a5)
      {
        *a4++ = v28;
      }
    }

LABEL_55:
    ++a2;
    ++v12;
    v11 = v19;
    if (v12 >= a3)
    {
      goto LABEL_171;
    }
  }

LABEL_33:
  if ((v14 + 15) < 0xB3u)
  {
    goto LABEL_51;
  }

  v24 = &__CFToGB2312CharMap;
  v25 = (&__CFToGB2312CharMap + 36516);
  while (2)
  {
    v26 = &v24[17 * ((0xF0F0F0F0F0F0F0F1 * (v25 - v24)) >> 1)];
    v27 = *v26;
    if (v27 > v14)
    {
      v25 = v26 - 17;
      goto LABEL_39;
    }

    if (v27 + 16 <= v14)
    {
      v24 = v26 + 17;
LABEL_39:
      if (v24 > v25)
      {
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  LOWORD(v28) = v26[(v14 - v27) + 1];
  if (v28)
  {
    v29 = v26[(v14 - v27) + 1] == 65533;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v19 = v11 + 2;
    if (a5)
    {
      if (v19 > a5)
      {
        goto LABEL_170;
      }

      *a4 = BYTE1(v28) | 0x80;
      LOBYTE(v28) = v28 | 0x80;
LABEL_98:
      a4[1] = v28;
      a4 += 2;
    }

    goto LABEL_55;
  }

LABEL_51:
  if ((a1 & 8) != 0 || v12 < 1)
  {
    goto LABEL_170;
  }

  if ((a1 & 0x10) == 0)
  {
LABEL_54:
    v19 = v11;
    goto LABEL_55;
  }

  if (v14 > 823)
  {
    if ((v14 - 12441) >= 2 && v14 != 824)
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (v14 == 768)
    {
      if (*(a2 - 1) == 110)
      {
        if (a5)
        {
          if (v11 >= a5)
          {
            goto LABEL_170;
          }

          v30 = -16472;
          goto LABEL_137;
        }

LABEL_138:
        v19 = v11 + 1;
        goto LABEL_55;
      }

      goto LABEL_72;
    }

    if (v14 != 774 && v14 != 776)
    {
LABEL_72:
      v59 = a4;
      v31 = v13;
      v32 = __CFStringEncodingIsValidCombiningCharacterForLatin1_1(v14);
      v13 = v31;
      a4 = v59;
      if (!v32)
      {
        if (v14 == 63615)
        {
          if (*(a2 - 1) != 252)
          {
            goto LABEL_170;
          }

          v19 = v11 - 1;
          if (a5)
          {
            *(v59 - 2) = 0x80;
          }

          a4 = v59 - 1;
          goto LABEL_55;
        }

        if (v14 != 63614)
        {
          goto LABEL_170;
        }

        v44 = *(a2 - 1);
        if (v44 > 0xFF00)
        {
          if (*(a2 - 1) <= 0xFF19u)
          {
            if (v44 == 65281)
            {
              v45 = -34;
            }

            else
            {
              if (v44 != 65292)
              {
                goto LABEL_170;
              }

              v45 = -39;
            }
          }

          else
          {
            switch(v44)
            {
              case 0xFF1Au:
                v45 = -36;
                break;
              case 0xFF1Bu:
                v45 = -35;
                break;
              case 0xFF1Fu:
                v45 = -33;
                break;
              default:
                goto LABEL_170;
            }
          }
        }

        else if (*(a2 - 1) <= 0x3001u)
        {
          if (v44 == 8943)
          {
            v45 = -13;
          }

          else
          {
            if (v44 != 12289)
            {
              goto LABEL_170;
            }

            v45 = -37;
          }
        }

        else
        {
          switch(v44)
          {
            case 0x3002u:
              v45 = -38;
              break;
            case 0x3016u:
              v45 = -20;
              break;
            case 0x3017u:
              v45 = -19;
              break;
            default:
              goto LABEL_170;
          }
        }

        if (a5)
        {
          *(v59 - 2) = -90;
          *(v59 - 1) = v45;
        }

        goto LABEL_54;
      }
    }
  }

  v62[0] = 2;
  v33 = a2 - 1;
  v34 = *(a2 - 1);
  if (v34 < 0x80)
  {
    v35 = a4;
    v36 = v13;
    v37 = __CFStringEncodingPrecomposeLatinCharacter_3(a2 - 1, v60 - v12, v62);
    v33 = a2 - 1;
    v13 = v36;
    a4 = v35;
    v38 = v62[0] - 2;
    if (v62[0] <= 2)
    {
      v39 = 0;
    }

    else
    {
      v39 = v62[0] - 2;
    }

    goto LABEL_77;
  }

  v40 = *a2;
  if (v40 > 0x3098)
  {
    if (v40 == 12441)
    {
      v38 = 0;
      v39 = 0;
      if (v34 == 12454)
      {
        v37 = 12532;
      }

      else
      {
        v37 = v34 + 1;
      }

LABEL_77:
      v12 += v39;
      if (v37 != 252 || a3 - v12 < 2)
      {
        goto LABEL_111;
      }

      if (a2[1] == -1921)
      {
        if (a5)
        {
          *(a4 - 1) = 0x80;
        }

        ++v12;
        goto LABEL_54;
      }

      v37 = 252;
LABEL_112:
      v47 = v13 + 78;
      v48 = v13;
      while (1)
      {
        v49 = &v48[2 * ((v47 - v48) >> 3)];
        v50 = *v49;
        if (v50 <= v37)
        {
          if (v50 >= v37)
          {
            if (a5)
            {
              if (v11 >= a5)
              {
                goto LABEL_170;
              }

              v30 = __rev16(v49[1]);
LABEL_137:
              *(a4++ - 1) = v30;
            }

            goto LABEL_138;
          }

          v48 = v49 + 2;
        }

        else
        {
          v47 = v49 - 2;
        }

        if (v48 > v47)
        {
          goto LABEL_118;
        }
      }
    }

    if (v40 == 12442)
    {
      v38 = 0;
      v39 = 0;
      v37 = v34 + 2;
      goto LABEL_77;
    }

    goto LABEL_172;
  }

  if (v40 == 774)
  {
    v38 = 0;
    v46 = v34 & 0xFFFFFFDF;
    v43 = v34 | 1;
    v42 = v46 == 1048;
    v41 = -3;
    goto LABEL_108;
  }

  if (v40 != 776)
  {
LABEL_172:
    v38 = 0;
    goto LABEL_173;
  }

  v38 = 0;
  if (v34 == 1077)
  {
    v41 = 1105;
  }

  else
  {
    v41 = -3;
  }

  v42 = v34 == 1045;
  v43 = 1025;
LABEL_108:
  if (v42)
  {
    v37 = v43;
  }

  else
  {
    v37 = v41;
  }

LABEL_111:
  if ((v37 + 443) >= 0x25Bu)
  {
    goto LABEL_112;
  }

LABEL_118:
  if ((v37 + 15) < 0xB3u)
  {
    goto LABEL_173;
  }

  v51 = &__CFToGB2312CharMap;
  v52 = (&__CFToGB2312CharMap + 36516);
  while (1)
  {
    v53 = &v51[17 * ((0xF0F0F0F0F0F0F0F1 * (v52 - v51)) >> 1)];
    v54 = *v53;
    if (v54 <= v37)
    {
      break;
    }

    v52 = v53 - 17;
LABEL_124:
    if (v51 > v52)
    {
      goto LABEL_173;
    }
  }

  if (v54 + 16 <= v37)
  {
    v51 = v53 + 17;
    goto LABEL_124;
  }

  v55 = v53[v37 - v54 + 1];
  if (!v55 || v55 == 65533)
  {
LABEL_173:
    v12 -= v38;
    *a6 = v11;
    goto LABEL_174;
  }

  if (!a5)
  {
LABEL_147:
    if (*v33 >= 0x80u)
    {
      v19 = v11;
    }

    else
    {
      v19 = v11 + 1;
    }

    goto LABEL_55;
  }

  if (*v33 > 0x7Fu)
  {
    *(a4 - 2) = HIBYTE(v55) | 0x80;
    *(a4 - 1) = v55 | 0x80;
    goto LABEL_147;
  }

  if (v11 < a5)
  {
    *(a4 - 1) = HIBYTE(v55) | 0x80;
    *a4 = v55 | 0x80;
    goto LABEL_147;
  }

LABEL_170:
  v19 = v11;
LABEL_171:
  *a6 = v19;
LABEL_174:
  v57 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __CFFromMacSimplifiedChinese(uint64_t a1, char *a2, uint64_t a3, __int16 *a4, uint64_t a5, uint64_t *a6)
{
  v58 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (a3 < 1)
  {
    v13 = 0;
    goto LABEL_131;
  }

  v9 = a3;
  v12 = 0;
  v13 = 0;
  v14 = a1 & 0xC0;
  if ((a1 & 0x200) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  if ((a1 & 0x200) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = &unk_1EA849000;
  while (2)
  {
    if (a5 && v12 >= a5)
    {
      goto LABEL_131;
    }

    v18 = *a2;
    if ((*a2 & 0x80000000) == 0 || v18 == 160 || (a1 & 0x80) != 0 && (v18 - 131) <= 0x1C)
    {
      goto LABEL_15;
    }

    if (v18 == 128)
    {
      if (v14)
      {
        if (!a5)
        {
          v21 = a4;
          v23 = v15;
          goto LABEL_58;
        }

        if (v12 + v15 > a5)
        {
          goto LABEL_131;
        }

        *a4 = 50856053;
        v21 = a4 + 2;
        if ((a1 & 0x200) != 0)
        {
          v23 = 2;
          goto LABEL_58;
        }

        v22 = 3;
        v23 = 3;
      }

      else
      {
        if (!a5)
        {
          v21 = a4;
          v23 = v16;
          goto LABEL_58;
        }

        if (v12 + v16 > a5)
        {
          goto LABEL_131;
        }

        *a4 = 252;
        v21 = a4 + 1;
        if ((a1 & 0x200) != 0)
        {
          v23 = 1;
          goto LABEL_58;
        }

        v22 = 2;
        v23 = 2;
      }

      *v21 = -1921;
      v21 = &a4[v22];
LABEL_58:
      v12 += v23;
      a4 = v21;
LABEL_18:
      v19 = 1;
      goto LABEL_19;
    }

    if ((v18 - 253) <= 0xFFFFFF85)
    {
      if (*a2 > 0xFCu)
      {
        if (v18 == 253)
        {
          LOWORD(v18) = 169;
        }

        else if (v18 == 254)
        {
          LOWORD(v18) = 8482;
        }

        else
        {
          LOWORD(v18) = 8230;
        }

        goto LABEL_15;
      }

      if (v18 == 129)
      {
        if ((a1 & 0x200) == 0)
        {
          LOWORD(v18) = -1920;
          goto LABEL_15;
        }
      }

      else if (v18 == 130 && (a1 & 0x200) == 0)
      {
        LOWORD(v18) = -1919;
LABEL_15:
        if (a5)
        {
          *a4++ = v18;
        }

        ++v12;
        goto LABEL_18;
      }

      v19 = 1;
      goto LABEL_20;
    }

    if (v9 == 1)
    {
      goto LABEL_131;
    }

    v24 = a2[1];
    if (v18 == 163)
    {
      if (v24 == 164)
      {
        v25 = 165;
        goto LABEL_112;
      }

      if (v24 == 254)
      {
        v25 = 8254;
        goto LABEL_112;
      }
    }

    else if (v18 == 161)
    {
      if (a2[1] <= 0xABu)
      {
        switch(v24)
        {
          case 164:
            v25 = 183;
            goto LABEL_112;
          case 170:
            v25 = 8212;
            goto LABEL_112;
          case 171:
            v25 = 12316;
            goto LABEL_112;
        }
      }

      else
      {
        if (a2[1] <= 0xE8u)
        {
          if (v24 != 172)
          {
            if (v24 == 173)
            {
              v25 = 8943;
              goto LABEL_112;
            }

            goto LABEL_72;
          }

          v25 = 8214;
LABEL_112:
          if (a5)
          {
            *a4++ = v25;
          }

          goto LABEL_114;
        }

        if (v24 == 233)
        {
          v25 = 162;
          goto LABEL_112;
        }

        if (v24 == 234)
        {
          v25 = 163;
          goto LABEL_112;
        }
      }
    }

LABEL_72:
    v26 = v24 & 0x7F | ((v18 & 0x7F) << 8);
    if (((v24 & 0x7F | ((v18 & 0x7F) << 8)) - 30594) < 0xA99Fu)
    {
      break;
    }

    v27 = &__CFFromGB2312CharMap;
    v28 = (&__CFFromGB2312CharMap + 15906);
    while (1)
    {
      v29 = &v27[33 * ((0xF83E0F83E0F83E1 * (v28 - v27)) >> 1)];
      v30 = *v29;
      if (v30 <= v26)
      {
        break;
      }

      v28 = v29 - 33;
LABEL_78:
      if (v27 > v28)
      {
        goto LABEL_85;
      }
    }

    if (v30 + 32 <= v26)
    {
      v27 = v29 + 33;
      goto LABEL_78;
    }

    v31 = v29[v26 - v30 + 1];
    if (v31 != 65533 && v31 != 0)
    {
      if (v14)
      {
        v56 = v16;
        v46 = v15;
        v47 = (*(v17 + 434))(v31, (a1 >> 7) & 1, 252, 63615, 50856053, 4294936702, 43423, __CFFromMacSimplifiedChineseMapA8);
        v17 = &unk_1EA849000;
        v16 = v56;
        v15 = v46;
        if (v47)
        {
          v48 = __CFStringEncodingDecomposeCharacter(a1, v31, v57, 63615, 50856053, 4294936702, 43423, __CFFromMacSimplifiedChineseMapA8);
          v49 = *a6;
          v12 = *a6 + v48;
          *a6 = v12;
          if (!a5)
          {
            v19 = 2;
            v15 = v46;
            v16 = v56;
            v17 = &unk_1EA849000;
            goto LABEL_20;
          }

          if (v12 > a5)
          {
            *a6 = v49;
            goto LABEL_131;
          }

          v15 = v46;
          v16 = v56;
          v17 = &unk_1EA849000;
          if (v48 < 1)
          {
            v19 = 2;
          }

          else
          {
            v50 = v48 + 1;
            v51 = v57;
            do
            {
              v52 = *v51++;
              *a4++ = v52;
              --v50;
            }

            while (v50 > 1);
            v19 = 2;
          }

LABEL_20:
          v13 += v19;
          a2 += v19;
          v20 = v9 <= v19;
          v9 -= v19;
          if (v20)
          {
            goto LABEL_131;
          }

          continue;
        }
      }

      if (a5)
      {
        *a4++ = v31;
      }

      v12 = *a6;
LABEL_114:
      ++v12;
      goto LABEL_115;
    }

    break;
  }

LABEL_85:
  if (v18 == 168)
  {
    if ((v24 + 69) > 5u)
    {
      goto LABEL_131;
    }

    v39 = __CFFromMacSimplifiedChineseMapA8[v24 - 187];
    if (v14)
    {
      v55 = v16;
      v40 = v15;
      if ((*(v17 + 434))(__CFFromMacSimplifiedChineseMapA8[v24 - 187], (a1 >> 7) & 1, 252, 63615, 50856053, 4294936702, 43423, __CFFromMacSimplifiedChineseMapA8))
      {
        __CFStringEncodingDecomposeCharacter(a1, v39, v57, v41, v42, v43, v44, v45);
        v12 = *a6 + 2;
        if (!a5)
        {
          v19 = 2;
          v15 = v40;
          v16 = v55;
          v17 = &unk_1EA849000;
          goto LABEL_19;
        }

        v16 = v55;
        v17 = &unk_1EA849000;
        if (v12 <= a5)
        {
          v15 = v40;
          *a4 = v57[0];
          a4[1] = v57[1];
          a4 += 2;
          v19 = 2;
          goto LABEL_19;
        }

        goto LABEL_131;
      }

      v12 = *a6;
      v15 = v40;
      v16 = v55;
      v17 = &unk_1EA849000;
    }

    if (!a5)
    {
      goto LABEL_114;
    }

    if (v12 < a5)
    {
      *a4++ = v39;
      goto LABEL_114;
    }
  }

  else if (v18 == 166 && (v24 + 39) <= 0x1Cu)
  {
    v33 = v24 - 217;
    v34 = 0x418007FuLL >> v33;
    v35 = ((a1 & 0x200) == 0) & (0x418007FuLL >> v33);
    if (v35)
    {
      v36 = 2;
    }

    else
    {
      v36 = 1;
    }

    v12 += v36;
    if (!a5)
    {
      goto LABEL_115;
    }

    if (v12 <= a5)
    {
      v37 = __CFFromMacSimplifiedChineseMapA6[v33];
      v38 = HIWORD(v37);
      if ((v34 & 1) == 0)
      {
        LOWORD(v38) = v37;
      }

      *a4 = v38;
      if (v35)
      {
        a4[1] = v37;
        a4 += 2;
      }

      else
      {
        ++a4;
      }

LABEL_115:
      v19 = 2;
LABEL_19:
      *a6 = v12;
      goto LABEL_20;
    }
  }

LABEL_131:
  v53 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __CFFromMacSimplifiedChineseLen(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  result = 0;
  do
  {
    if ((*a2 & 0x80) == 0 || (*a2 - 129 <= 0x1F ? (v4 = ((1 << (*a2 + 127)) & 0x80000003) == 0) : (v4 = 1), v4 ? (v5 = a3 == 1) : (v5 = 1), v5 || *a2 >= 0xFDu))
    {
      ++a2;
      --a3;
    }

    else
    {
      v6 = *a2;
      v7 = a3 - 1;
      if (v6 == 128)
      {
        v8 = a2 + 1;
      }

      else
      {
        v8 = a2 + 2;
      }

      if (v6 == 128)
      {
        v9 = result + 1;
      }

      else
      {
        v7 = a3 - 2;
        v9 = result;
      }

      if (v6 == 161)
      {
        a2 += 2;
      }

      else
      {
        a2 = v8;
      }

      if (v6 == 161)
      {
        a3 -= 2;
      }

      else
      {
        a3 = v7;
      }

      if (v6 == 161)
      {
        ++result;
      }

      else
      {
        result = v9;
      }
    }

    ++result;
  }

  while (a3 > 0);
  return result;
}

uint64_t __CFToGB_HZ(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v6 = a6;
  v73[1] = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    v10 = 0;
    v15 = a2;
    goto LABEL_136;
  }

  v10 = 0;
  v11 = a2 + 2 * a3;
  if (a5)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v68 = v12;
  v13 = 0x8EA4u;
  v14 = 1;
  v15 = a2;
  while (2)
  {
    if (a5 && v10 >= a5)
    {
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_112;
      }

      v16 = *v15;
      if ((v16 - 774) <= 0x32 && ((1 << (v16 - 6)) & 0x4000000000005) != 0 || (v16 - 12441) < 2)
      {
        goto LABEL_38;
      }

      v19 = v11;
      v69 = v10;
      v20 = v14;
      v21 = a1;
      v22 = a5;
      IsValidCombiningCharacterForLatin1_1 = __CFStringEncodingIsValidCombiningCharacterForLatin1_1(v16);
      a5 = v22;
      a1 = v21;
      v14 = v20;
      v10 = v69;
      v11 = v19;
      v13 = 36516;
      if (!IsValidCombiningCharacterForLatin1_1)
      {
        goto LABEL_112;
      }
    }

    v16 = *v15;
    if (v16 <= 0x7F)
    {
      v24 = v10 + 2;
      if (v14)
      {
        v24 = v10;
        v25 = 0;
      }

      else
      {
        v25 = "~}";
      }

      v26 = "~";
      if ((v14 & 1) == 0)
      {
        v26 = "~}~";
      }

      if (v16 == 126)
      {
        v27 = v24 + 1;
      }

      else
      {
        v27 = v24;
      }

      if (v16 == 126)
      {
        v28 = v26;
      }

      else
      {
        v28 = v25;
      }

      v10 = v27 + 1;
      if (a5)
      {
        if (v27 >= a5)
        {
          if (((v16 != 126) & v14) != 0)
          {
            v66 = -1;
          }

          else
          {
            v66 = ~strlen(v28);
          }

          v6 = a6;
          v10 += v66;
          goto LABEL_136;
        }

        if (((v16 != 126) & v14) == 0)
        {
          v29 = *v28;
          if (*v28)
          {
            v30 = (v28 + 1);
            do
            {
              *a4++ = v29;
              v31 = *v30++;
              v29 = v31;
            }

            while (v31);
          }
        }

        *a4++ = v16;
      }

      v14 = 1;
      goto LABEL_108;
    }

LABEL_38:
    if ((v16 + 15) < 0xB3u)
    {
      break;
    }

    v32 = (&__CFToGB2312CharMap + v13);
    v33 = &__CFToGB2312CharMap;
    while (1)
    {
      v34 = &v33[17 * ((0xF0F0F0F0F0F0F0F1 * (v32 - v33)) >> 1)];
      v35 = *v34;
      if (v35 <= v16)
      {
        break;
      }

      v32 = v34 - 17;
LABEL_44:
      if (v33 > v32)
      {
        goto LABEL_51;
      }
    }

    if (v35 + 16 <= v16)
    {
      v33 = v34 + 17;
      goto LABEL_44;
    }

    v36 = v34[(v16 - v35) + 1];
    if (v36)
    {
      v37 = v34[(v16 - v35) + 1] == 65533;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      v58 = v10 + 2;
      if ((v14 & 1) == 0)
      {
        v58 = v10;
      }

      v10 = v58 + 2;
      if (!a5)
      {
        v14 = 0;
        goto LABEL_108;
      }

      if (v10 > a5)
      {
        v67 = -2;
        if (v14)
        {
          v67 = -4;
        }

        v59 = v10 + v67;
        v10 += v67 + 2;
        v6 = a6;
LABEL_114:
        if (v10 <= a5)
        {
          *a4 = 32126;
        }

        else
        {
          if (v15 > a2)
          {
            for (--v15; ; --v15)
            {
              v60 = *v15;
              if (((v60 - 774) > 0x32 || ((1 << (v60 - 6)) & 0x4000000000005) == 0) && (v60 - 12441) >= 2)
              {
                if (__CFStringEncodingIsValidCombiningCharacterForLatin1_1(v60))
                {
                  v63 = v15 > a2;
                }

                else
                {
                  v63 = 0;
                }

                if (!v63)
                {
                  break;
                }
              }

              else if (v15 <= a2)
              {
                break;
              }
            }
          }

          if (v15 <= a2 || *(v15 - 1) > 0x7Fu)
          {
            *(a4 - 1) = 32126;
            v10 = v59;
          }

          else
          {
            v10 = v59 - 4;
          }
        }

        goto LABEL_136;
      }

      if (v14)
      {
        *a4 = 31614;
        a4 += 2;
      }

      v14 = 0;
      *a4 = HIBYTE(v36) & 0x7F;
      a4[1] = v36 & 0x7F;
      a4 += 2;
LABEL_108:
      if (++v15 >= v11)
      {
LABEL_112:
        v6 = a6;
        if (v14)
        {
          goto LABEL_136;
        }

        v59 = v10;
        v10 += 2;
        if (!a5)
        {
          goto LABEL_136;
        }

        goto LABEL_114;
      }

      continue;
    }

    break;
  }

LABEL_51:
  if ((a1 & 8) != 0 || v15 <= a2)
  {
    goto LABEL_112;
  }

  if ((a1 & 0x10) == 0)
  {
    goto LABEL_108;
  }

  v73[0] = 0;
  if (((v16 - 774) > 0x32 || ((1 << (v16 - 6)) & 0x4000000000005) == 0) && (v16 - 12441) >= 2)
  {
    v38 = v11;
    v70 = v10;
    v39 = v14;
    v40 = a1;
    v41 = a5;
    v42 = __CFStringEncodingIsValidCombiningCharacterForLatin1_1(v16);
    a5 = v41;
    a1 = v40;
    v14 = v39;
    v10 = v70;
    v11 = v38;
    v13 = 36516;
    if (!v42)
    {
      goto LABEL_112;
    }
  }

  v43 = *(v15 - 1);
  if (v43 <= 0x7F)
  {
    v71 = v11;
    v44 = v14;
    v45 = a1;
    v46 = a5;
    v47 = __CFStringEncodingPrecomposeLatinCharacter_3(v15 - 1, (v11 - (v15 - 1)) >> 1, v73);
    a5 = v46;
    a1 = v45;
    v14 = v44;
    v11 = v71;
    v13 = 0x8EA4u;
    goto LABEL_60;
  }

  v53 = *v15;
  if (v53 <= 0x3098)
  {
    if (v53 == 774)
    {
      if ((v43 & 0xFFFFFFDF) != 0x418)
      {
        goto LABEL_112;
      }

      v47 = v43 | 1;
    }

    else
    {
      if (v53 != 776)
      {
        goto LABEL_112;
      }

      if (v43 == 1077)
      {
        v54 = 1105;
      }

      else
      {
        v54 = -3;
      }

      if (v43 == 1045)
      {
        v47 = 1025;
      }

      else
      {
        v47 = v54;
      }
    }

    goto LABEL_61;
  }

  if (v53 == 12441)
  {
    if (v43 != 12454)
    {
      v47 = v43 + 1;
      goto LABEL_60;
    }

    v48 = 12532;
    v47 = 12532;
  }

  else
  {
    if (v53 != 12442)
    {
      goto LABEL_112;
    }

    v47 = v43 + 2;
LABEL_60:
    if (!v47)
    {
      goto LABEL_112;
    }

LABEL_61:
    if ((v47 + 15) < 0xB3u)
    {
      goto LABEL_112;
    }

    v48 = v47;
  }

  v49 = (&__CFToGB2312CharMap + v13);
  v50 = &__CFToGB2312CharMap;
  while (2)
  {
    v51 = &v50[17 * ((0xF0F0F0F0F0F0F0F1 * (v49 - v50)) >> 1)];
    v52 = *v51;
    if (v52 > v47)
    {
      v49 = v51 - 17;
      goto LABEL_68;
    }

    if (v52 + 16 <= v48)
    {
      v50 = v51 + 17;
LABEL_68:
      if (v50 > v49)
      {
        goto LABEL_112;
      }

      continue;
    }

    break;
  }

  v55 = v51[v48 - v52 + 1];
  if (v55)
  {
    v56 = v55 == 65533;
  }

  else
  {
    v56 = 1;
  }

  if (v56)
  {
    goto LABEL_112;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_90;
  }

  if ((v15 - 2) >= a2 && *(v15 - 2) >= 0x80u)
  {
    --v10;
    a4 += v68;
LABEL_90:
    v57 = v10;
    if (!a5)
    {
LABEL_107:
      v10 = v57;
      goto LABEL_108;
    }

LABEL_106:
    *(a4 - 2) = HIBYTE(v55) & 0x7F;
    *(a4 - 1) = v55 & 0x7F;
    goto LABEL_107;
  }

  v57 = v10 + 3;
  if (!a5)
  {
    goto LABEL_107;
  }

  if (v57 <= a5)
  {
    *(a4 - 1) = 31614;
    a4 += 3;
    goto LABEL_106;
  }

  v6 = a6;
LABEL_136:
  *v6 = v10;
  v64 = *MEMORY[0x1E69E9840];
  return (v15 - a2) >> 1;
}

_BYTE *__CFFromGB_HZ(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, void *a6)
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = &a2[a3];
  if (a3 < 1)
  {
    v12 = 0;
    v14 = 1;
    v22 = a2;
    if (a5)
    {
      goto LABEL_75;
    }

    goto LABEL_80;
  }

  v12 = 0;
  v13 = a1 & 0xC0;
  v14 = 1;
  v15 = 0x3E22u;
  v16 = &unk_1EA849000;
  v17 = a2;
LABEL_3:
  v18 = v14;
  if (a5)
  {
    v19 = v12 < a5;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  v21 = v17;
  while (1)
  {
    if (!v20)
    {
      v14 = v18;
      v22 = v17;
      if (a5)
      {
        goto LABEL_75;
      }

      goto LABEL_80;
    }

    v22 = v21 + 1;
    v23 = *v21;
    if ((v14 & 1) == 0)
    {
      break;
    }

    if (v23 != 126)
    {
      ++v12;
      if (a5)
      {
        *a4++ = v23;
      }

LABEL_52:
      v17 = v22;
      if (v22 >= v9)
      {
        goto LABEL_74;
      }

      goto LABEL_3;
    }

    if (v22 >= v9)
    {
      goto LABEL_71;
    }

    v22 = v21 + 2;
    v24 = v21[1];
    if (v24 == 10)
    {
      v21 += 2;
LABEL_25:
      v14 = 1;
      goto LABEL_26;
    }

    if (v24 != 123)
    {
      if (v24 != 126)
      {
LABEL_71:
        v14 = 1;
        goto LABEL_73;
      }

      if (a5)
      {
        *a4++ = 126;
      }

      ++v12;
      goto LABEL_52;
    }

    v14 = 0;
    v21 += 2;
LABEL_26:
    if (v21 >= v9)
    {
      goto LABEL_73;
    }
  }

  if (v23 == 126)
  {
    if (v22 >= v9)
    {
      if ((a1 & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    else if ((a1 & 1) == 0 && *v22 != 125)
    {
      goto LABEL_72;
    }

    v21 += 2;
    goto LABEL_25;
  }

  if (v22 >= v9)
  {
    goto LABEL_48;
  }

  v25 = *v22 & 0x7F | ((v23 & 0x7F) << 8);
  if ((v25 - 30594) < 0xA99Fu)
  {
    goto LABEL_48;
  }

  v26 = (&__CFFromGB2312CharMap + v15);
  v27 = &__CFFromGB2312CharMap;
  while (2)
  {
    v28 = &v27[33 * ((0xF83E0F83E0F83E1 * (v26 - v27)) >> 1)];
    v29 = *v28;
    if (v29 > v25)
    {
      v26 = v28 - 33;
      goto LABEL_35;
    }

    if (v29 + 32 <= v25)
    {
      v27 = v28 + 33;
LABEL_35:
      if (v27 > v26)
      {
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

  v30 = v28[v25 - v29 + 1];
  if (v30)
  {
    v31 = v30 == 65533;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
LABEL_48:
    if ((a1 & 1) == 0)
    {
      v14 = 0;
      if (a5)
      {
        goto LABEL_75;
      }

      goto LABEL_80;
    }

    if (a5)
    {
      *a4++ = 63;
    }

    ++v12;
    v22 = v21 + 2;
    goto LABEL_52;
  }

  if (!v13 || (v39 = v30, v32 = (*(v16 + 434))(v30, (a1 >> 7) & 1, 0xF83E0F83E0F83E1, 66, 65533), v30 = v39, v16 = &unk_1EA849000, v15 = 15906, !v32))
  {
    if (a5)
    {
      *a4++ = v30;
    }

    v34 = v12 + 1;
LABEL_65:
    v22 = v21 + 2;
    v12 = v34;
    goto LABEL_52;
  }

  v33 = __CFStringEncodingDecomposeCharacter(a1, v39, v40, 66, 65533, 0x1EA849000, 63, &__CFFromGB2312CharMap);
  v34 = v12 + v33;
  if (!a5)
  {
    v15 = 15906;
    v16 = &unk_1EA849000;
    goto LABEL_65;
  }

  if (v34 <= a5)
  {
    v15 = 15906;
    v16 = &unk_1EA849000;
    if (v33)
    {
      v35 = v40;
      do
      {
        --v33;
        v36 = *v35++;
        *a4++ = v36;
      }

      while (v33);
    }

    goto LABEL_65;
  }

LABEL_72:
  v14 = 0;
LABEL_73:
  v22 = v21;
LABEL_74:
  if (a5)
  {
LABEL_75:
    if ((v14 & 1) == 0 && v12 == a5 && v9 - v22 == 2 && *v22 == 126)
    {
      v22 += 2 * (v22[1] == 125);
    }
  }

LABEL_80:
  *a6 = v12;
  v37 = *MEMORY[0x1E69E9840];
  return (v22 - a2);
}

uint64_t _CFBytesInASCII(int8x16_t *a1, unint64_t a2)
{
  while (a2 > 0x1F)
  {
    v3 = *a1;
    v2 = a1[1];
    a1 += 2;
    v4 = vorrq_s8(v3, v2);
    a2 -= 32;
    if ((*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) & 0x8080808080808080) != 0)
    {
      return 0;
    }
  }

  while (a2 > 0xF)
  {
    v6 = a1->i64[0];
    v7 = a1->i64[1];
    ++a1;
    a2 -= 16;
    if (((v7 | v6) & 0x8080808080808080) != 0)
    {
      return 0;
    }
  }

  while (a2 > 7)
  {
    v8 = a1->i64[0];
    a1 = (a1 + 8);
    a2 -= 8;
    if ((v8 & 0x8080808080808080) != 0)
    {
      return 0;
    }
  }

  while (a2 > 3)
  {
    v9 = a1->i32[0];
    a1 = (a1 + 4);
    a2 -= 4;
    if ((v9 & 0x80808080) != 0)
    {
      return 0;
    }
  }

  v10 = 0;
  while (a2 != v10)
  {
    v11 = a1->i8[v10++];
    if (v11 < 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t _CFStringCreateWithBytesNoCopy(__objc2_class **a1, int8x16_t *a2, int64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v8 = 19;
  }

  else
  {
    v8 = 18;
  }

  return __CFStringCreateImmutableFunnel3(a1, a2, a3, a4, v8, a6, 0, a8);
}

CFStringRef __CFStringMakeConstantString(const char *cStr)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!constantStringTable)
  {
    keyCallBacks = *byte_1EF066758;
    *&valueCallBacks.version = *&kCFTypeDictionaryValueCallBacks.version;
    *&valueCallBacks.release = *&kCFTypeDictionaryValueCallBacks.release;
    valueCallBacks.equal = 0;
    v2 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &keyCallBacks, &valueCallBacks);
    _CFDictionarySetCapacity(v2, 2500);
    os_unfair_lock_lock_with_options();
    if (!constantStringTable)
    {
      constantStringTable = v2;
    }

    os_unfair_lock_unlock(&_CFSTRLock);
    if (constantStringTable != v2)
    {
      CFRelease(v2);
    }
  }

  os_unfair_lock_lock_with_options();
  Value = CFDictionaryGetValue(constantStringTable, cStr);
  os_unfair_lock_unlock(&_CFSTRLock);
  if (!Value)
  {
    v4 = cStr;
    while (1)
    {
      v5 = *v4;
      if (!*v4)
      {
        break;
      }

      ++v4;
      if (v5 < 0)
      {
        Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
        v13 = *cStr;
        if (*cStr)
        {
          v14 = cStr + 1;
          do
          {
            if (v13 < 0)
            {
              CFStringAppendFormat(Mutable, 0, @"\\%3o", v13);
            }

            else
            {
              CFStringAppendFormat(Mutable, 0, @"%1c", v13);
            }

            v15 = *v14++;
            v13 = v15;
          }

          while (v15);
        }

        CFLog(4, @"WARNING: CFSTR(%@) has non-7 bit chars, interpreting using MacOS Roman encoding for now, but this will change. Please eliminate usages of non-7 bit chars (including escaped characters above \\177 octal) in CFSTR().", v6, v7, v8, v9, v10, v11, Mutable);
        CFRelease(Mutable);
        break;
      }
    }

    v16 = strlen(cStr);
    ImmutableFunnel3 = __CFStringCreateImmutableFunnel3(&__kCFAllocatorSystemDefault, cStr, v16, 0, 8, -1, 0, v17);
    if (!ImmutableFunnel3)
    {
      __CFStringMakeConstantString_cold_1(0, v19, v20, v21, v22, v23, v24, v25);
    }

    v26 = ImmutableFunnel3;
    v27 = CF_IS_OBJC(7uLL, ImmutableFunnel3);
    if (v27)
    {
      goto LABEL_27;
    }

    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }

    v28 = atomic_load(v26 + 1);
    if ((v28 & 0x10) != 0 || ((v29 = atomic_load(v26 + 1), v30 = v26 + 2, (v29 & 0x60) == 0) ? (v32 = atomic_load(v26 + 1), v31 = &v30[(v32 & 5) != 4]) : (v31 = *v30), v33 = atomic_load(v26 + 1), !v31))
    {
LABEL_27:
      v35 = strlen(cStr);
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, v35 + 1, 0x100004077774924, 0);
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      strlcpy(Typed, cStr, v35 + 1);
    }

    else
    {
      Typed = v31 + ((v33 >> 2) & 1);
    }

    os_unfair_lock_lock_with_options();
    Count = CFDictionaryGetCount(constantStringTable);
    CFDictionaryAddValue(constantStringTable, Typed, v26);
    if (CFDictionaryGetCount(constantStringTable) == Count)
    {
      Value = CFDictionaryGetValue(constantStringTable, Typed);
    }

    else
    {
      Value = v26;
      if (!v27)
      {
        Value = v26;
        if (!__CFRuntimeIsImmortal(v26))
        {
          __CFRuntimeSetImmortal(v26);
          Value = v26;
        }
      }
    }

    os_unfair_lock_unlock(&_CFSTRLock);
    CFRelease(v26);
  }

  v37 = *MEMORY[0x1E69E9840];
  return Value;
}

unint64_t __cStrCopyDescription(int8x16_t *__s)
{
  v2 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v2 = __CFStringComputeEightBitStringEncoding();
  }

  v3 = strlen(__s->i8);

  return __CFStringCreateImmutableFunnel3(&__kCFAllocatorSystemDefault, __s, v3, v2, 24, &__kCFAllocatorNull, 0, v4);
}

uint64_t __cStrHash(const char *a1)
{
  v1 = a1;
  v2 = strlen(a1);
  if (v2 > 4)
  {
    v6 = v1[1] + *v1 + (*v1 << 8);
    v7 = v6 + v1[v2 - 2] + (v6 << 8);
    v4 = v7 + v1[v2 - 1] + (v7 << 8);
  }

  else if (v2)
  {
    v3 = v2;
    v4 = 0;
    do
    {
      v5 = *v1++;
      v4 = 257 * v4 + v5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return (v4 << (v2 & 0x1F)) + v4;
}

uint64_t _CFStringCompareForHFS(__CFString *a1, __CFString *a2, __int16 a3)
{
  v145 = *MEMORY[0x1E69E9840];
  CharactersPtr = CFStringGetCharactersPtr(a1);
  v6 = CFStringGetCharactersPtr(a2);
  if (CharactersPtr)
  {
    CStringPtrInternal = 0;
  }

  else
  {
    v8 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v8 = __CFStringComputeEightBitStringEncoding();
    }

    CStringPtrInternal = _CFStringGetCStringPtrInternal(a1, v8, 1, 1);
  }

  v112 = CStringPtrInternal;
  if (v6)
  {
    v113 = 0;
  }

  else
  {
    v9 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v9 = __CFStringComputeEightBitStringEncoding();
    }

    v113 = _CFStringGetCStringPtrInternal(a2, v9, 1, 1);
    CStringPtrInternal = v112;
  }

  if ((a3 & 0x10) == 0 || CStringPtrInternal && v113)
  {
    BitmapPtrForPlane = 0;
    v108 = 0;
    v10 = 1;
  }

  else
  {
    BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(0x65u, 0);
    if (BitmapPtrForPlane)
    {
      v108 = CFUniCharGetBitmapPtrForPlane(8u, 0);
      v10 = 0;
    }

    else
    {
      BitmapPtrForPlane = 0;
      v108 = 0;
      v10 = 1;
    }

    CStringPtrInternal = v112;
  }

  v11 = CharactersPtr | CStringPtrInternal;
  Length = CFStringGetLength(a1);
  v12 = CFStringGetLength(a2);
  v144 = 0;
  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  *theString = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  *buffer = 0u;
  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  *v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  *v121 = 0u;
  if (((v10 ^ 1) & 1) != 0 || !v11)
  {
    theString[0] = a1;
    *(&v142 + 1) = 0;
    *&v143 = Length;
    v13 = CFStringGetCharactersPtr(a1);
    v14 = 0;
    theString[1] = v13;
    if (!v13)
    {
      v14 = _CFStringGetCStringPtrInternal(a1, 0x600u, 1, 1);
    }

    v144 = 0;
    *&v142 = v14;
    *(&v143 + 1) = 0;
  }

  v15 = v113;
  if (v6 | v113)
  {
    v16 = v10 ^ 1;
  }

  else
  {
    v16 = 1;
  }

  if (v16 == 1)
  {
    v129[0] = a2;
    *(&v130 + 1) = 0;
    *&v131 = v12;
    v17 = CFStringGetCharactersPtr(a2);
    v18 = 0;
    v129[1] = v17;
    if (!v17)
    {
      v18 = _CFStringGetCStringPtrInternal(a2, 0x600u, 1, 1);
    }

    v132 = 0;
    *&v130 = v18;
    *(&v131 + 1) = 0;
    v15 = v113;
  }

  v19 = Length;
  v20 = Length > 0;
  v21 = v12 > 0;
  if (Length < 1)
  {
    v22 = v112;
    goto LABEL_190;
  }

  v109 = v10;
  v22 = v112;
  if (v12 < 1)
  {
LABEL_190:
    if (v20 || v21)
    {
      if (v21)
      {
        result = -1;
      }

      else
      {
        result = 1;
      }

      goto LABEL_252;
    }

    if ((a3 & 0x200) == 0)
    {
LABEL_193:
      result = 0;
      goto LABEL_252;
    }

    v84 = 0;
    v85 = 0;
    if (v19 >= v12)
    {
      v86 = v12;
    }

    else
    {
      v86 = v19;
    }

    v87 = 64;
    p_vtable = __NSCFString.vtable;
    while (1)
    {
      if (v85 >= 4)
      {
        v89 = 4;
      }

      else
      {
        v89 = v85;
      }

      v90 = -v89;
      v91 = v89 + v84;
      v92 = v87 - v89;
      if (CharactersPtr)
      {
        v93 = CharactersPtr[v85];
        if (v6)
        {
          goto LABEL_216;
        }

        goto LABEL_219;
      }

      if (v22)
      {
        v93 = *(p_vtable[67] + *(v22 + v85));
        if (v6)
        {
          goto LABEL_216;
        }

        goto LABEL_219;
      }

      v94 = v143;
      if (v143 <= v85)
      {
        v93 = 0;
        if (v6)
        {
          goto LABEL_216;
        }
      }

      else
      {
        if (theString[1])
        {
          v95 = theString[1] + *(&v142 + 1);
          goto LABEL_213;
        }

        if (!v142)
        {
          if (v144 <= v85 || (v100 = *(&v143 + 1), *(&v143 + 1) > v85))
          {
            v101 = v85 + v90 + 64;
            if (v101 >= v143)
            {
              v101 = v143;
            }

            *(&v143 + 1) = v85 + v90;
            v144 = v101;
            if (v143 >= v92)
            {
              v94 = v92;
            }

            v150.location = v85 + v90 + *(&v142 + 1);
            v150.length = v94 + v91;
            v102 = p_vtable;
            CFStringGetCharacters(theString[0], v150, buffer);
            p_vtable = v102;
            v22 = v112;
            v15 = v113;
            v100 = *(&v143 + 1);
          }

          v95 = &buffer[-v100];
LABEL_213:
          v93 = v95[v85];
          if (v6)
          {
            goto LABEL_216;
          }

          goto LABEL_219;
        }

        v93 = *(v142 + *(&v142 + 1) + v85);
        if (v6)
        {
LABEL_216:
          v96 = v6[v85];
          goto LABEL_226;
        }
      }

LABEL_219:
      if (v15)
      {
        v96 = *(p_vtable[67] + *(v15 + v85));
      }

      else
      {
        v97 = v131;
        if (v131 <= v85)
        {
          v96 = 0;
        }

        else
        {
          if (v129[1])
          {
            v98 = v129[1] + *(&v130 + 1);
          }

          else
          {
            if (v130)
            {
              v96 = *(v130 + *(&v130 + 1) + v85);
              goto LABEL_226;
            }

            if (v132 <= v85 || (v103 = *(&v131 + 1), *(&v131 + 1) > v85))
            {
              v104 = v85 + v90 + 64;
              if (v104 >= v131)
              {
                v104 = v131;
              }

              *(&v131 + 1) = v85 + v90;
              v132 = v104;
              if (v131 >= v92)
              {
                v97 = v92;
              }

              v151.location = v85 + v90 + *(&v130 + 1);
              v151.length = v97 + v91;
              v105 = p_vtable;
              CFStringGetCharacters(v129[0], v151, v121);
              p_vtable = v105;
              v22 = v112;
              v15 = v113;
              v103 = *(&v131 + 1);
            }

            v98 = &v121[-v103];
          }

          v96 = v98[v85];
        }
      }

LABEL_226:
      v99 = v93 >= v96;
      if (v93 != v96)
      {
        goto LABEL_249;
      }

      ++v85;
      --v84;
      ++v87;
      if (v85 >= v86)
      {
        goto LABEL_193;
      }
    }
  }

  v23 = 0;
  v24 = 0;
  v25 = __NSCFString.vtable;
  while (2)
  {
    v26 = -v23;
    v27 = v23 + 64;
    do
    {
      if (v23 >= 4)
      {
        v28 = 4;
      }

      else
      {
        v28 = v23;
      }

      if (CharactersPtr)
      {
        v29 = CharactersPtr[v23];
        goto LABEL_48;
      }

      if (v22)
      {
        v29 = *(v25[67] + *(v22 + v23));
        goto LABEL_48;
      }

      if (v23 < 0 || (v30 = v143, v143 <= v23))
      {
        v29 = 0;
      }

      else
      {
        if (theString[1])
        {
          v31 = theString[1] + *(&v142 + 1);
LABEL_46:
          v29 = v31[v23];
          goto LABEL_48;
        }

        if (!v142)
        {
          if (v144 <= v23 || (v33 = *(&v143 + 1), *(&v143 + 1) > v23))
          {
            v34 = -v28;
            v35 = v28 + v26;
            v36 = v27 - v28;
            v37 = v23 + v34;
            v38 = v37 + 64;
            if (v37 + 64 >= v143)
            {
              v38 = v143;
            }

            *(&v143 + 1) = v37;
            v144 = v38;
            if (v143 >= v36)
            {
              v30 = v36;
            }

            v146.location = v37 + *(&v142 + 1);
            v146.length = v30 + v35;
            CFStringGetCharacters(theString[0], v146, buffer);
            v25 = (__NSCFString + 24);
            v19 = Length;
            v22 = v112;
            v15 = v113;
            v33 = *(&v143 + 1);
          }

          v31 = &buffer[-v33];
          goto LABEL_46;
        }

        v29 = *(v142 + *(&v142 + 1) + v23);
      }

LABEL_48:
      v32 = v29;
      if (__CFHFSLowerTable[HIBYTE(v29)])
      {
        v29 = __CFHFSLowerTable[__CFHFSLowerTable[HIBYTE(v29)] + v29];
      }

      if (++v23 >= v19)
      {
        break;
      }

      --v26;
      ++v27;
    }

    while (!v29);
    v39 = v29;
    v40 = v23 - 1;
    v41 = -v24;
    v42 = v24 + 64;
    do
    {
      if (v24 >= 4)
      {
        v43 = 4;
      }

      else
      {
        v43 = v24;
      }

      if (v6)
      {
        v44 = v6[v24];
        goto LABEL_77;
      }

      if (v15)
      {
        v44 = *(v25[67] + *(v15 + v24));
        goto LABEL_77;
      }

      if (v24 < 0 || (v45 = v131, v131 <= v24))
      {
        v44 = 0;
      }

      else
      {
        if (v129[1])
        {
          v46 = v129[1] + *(&v130 + 1);
LABEL_75:
          v44 = v46[v24];
          goto LABEL_77;
        }

        if (!v130)
        {
          if (v132 <= v24 || (v48 = *(&v131 + 1), *(&v131 + 1) > v24))
          {
            v49 = -v43;
            v50 = v43 + v41;
            v51 = v42 - v43;
            v52 = v24 + v49;
            v53 = v52 + 64;
            if (v52 + 64 >= v131)
            {
              v53 = v131;
            }

            *(&v131 + 1) = v52;
            v132 = v53;
            v115 = v40;
            if (v131 >= v51)
            {
              v45 = v51;
            }

            v147.location = v52 + *(&v130 + 1);
            v147.length = v45 + v50;
            v107 = v39;
            CFStringGetCharacters(v129[0], v147, v121);
            v39 = v107;
            v40 = v115;
            v25 = (__NSCFString + 24);
            v19 = Length;
            v22 = v112;
            v15 = v113;
            v48 = *(&v131 + 1);
          }

          v46 = &v121[-v48];
          goto LABEL_75;
        }

        v44 = *(v130 + *(&v130 + 1) + v24);
      }

LABEL_77:
      v47 = v44;
      if (__CFHFSLowerTable[HIBYTE(v44)])
      {
        v44 = __CFHFSLowerTable[__CFHFSLowerTable[HIBYTE(v44)] + v44];
      }

      if (++v24 >= v12)
      {
        break;
      }

      --v41;
      ++v42;
    }

    while (!v44);
    if (a3)
    {
      v54 = v39;
    }

    else
    {
      v54 = v32;
    }

    if (a3)
    {
      v55 = v44;
    }

    else
    {
      v55 = v47;
    }

    if (v54 == v55)
    {
      goto LABEL_156;
    }

    v56 = v109;
    if ((v55 | v54) < 0x80)
    {
      v56 = 1;
    }

    if ((v56 & 1) == 0)
    {
      if (v23 < v19 && (v54 & 0xFC00) == 0xD800)
      {
        if (CharactersPtr)
        {
          v57 = CharactersPtr[v23];
          goto LABEL_108;
        }

        if (v22)
        {
          v57 = *(v25[67] + *(v22 + v23));
          goto LABEL_108;
        }

        if (v40 >= -1)
        {
          v73 = v143;
          if (v143 > v23)
          {
            if (theString[1])
            {
              v74 = theString[1] + *(&v142 + 1);
            }

            else
            {
              if (v142)
              {
                v57 = *(v142 + *(&v142 + 1) + v23);
                goto LABEL_108;
              }

              if (v144 <= v23 || (v77 = *(&v143 + 1), *(&v143 + 1) > v23))
              {
                v78 = v23 - 4;
                if (v23 < 4)
                {
                  v78 = 0;
                }

                v79 = v54;
                if (v78 + 64 < v143)
                {
                  v73 = v78 + 64;
                }

                *(&v143 + 1) = v78;
                v144 = v73;
                v80 = v40;
                v148.length = v73 - v78;
                v148.location = *(&v142 + 1) + v78;
                CFStringGetCharacters(theString[0], v148, buffer);
                v54 = v79;
                v40 = v80;
                v25 = (__NSCFString + 24);
                v15 = v113;
                v77 = *(&v143 + 1);
              }

              v74 = &buffer[-v77];
            }

            v57 = v74[v23];
LABEL_108:
            if (v57 >> 10 == 55)
            {
              v54 = (v54 << 10) - 56613888 + v57;
            }
          }
        }
      }

      v116 = v54;
      if (v24 < v12 && (v55 & 0xFC00) == 0xD800)
      {
        v58 = v40;
        if (v6)
        {
          v59 = v6[v24];
          goto LABEL_117;
        }

        if (v15)
        {
          v59 = *(v25[67] + *(v15 + v24));
          goto LABEL_117;
        }

        if (v24 - 1 >= -1)
        {
          v75 = v131;
          if (v131 > v24)
          {
            if (v129[1])
            {
              v76 = v129[1] + *(&v130 + 1);
            }

            else
            {
              if (v130)
              {
                v59 = *(v130 + *(&v130 + 1) + v24);
                goto LABEL_117;
              }

              if (v132 <= v24 || (v81 = *(&v131 + 1), *(&v131 + 1) > v24))
              {
                v82 = v24 - 4;
                if (v24 < 4)
                {
                  v82 = 0;
                }

                if (v82 + 64 < v131)
                {
                  v75 = v82 + 64;
                }

                *(&v131 + 1) = v82;
                v132 = v75;
                v149.length = v75 - v82;
                v149.location = *(&v130 + 1) + v82;
                CFStringGetCharacters(v129[0], v149, v121);
                v54 = v116;
                v81 = *(&v131 + 1);
              }

              v76 = &v121[-v81];
            }

            v59 = v76[v24];
LABEL_117:
            if (v59 >> 10 == 55)
            {
              v55 = (v55 << 10) - 56613888 + v59;
            }
          }
        }
      }

      else
      {
        v58 = v40;
      }

      v60 = BitmapPtrForPlane;
      if (v54 >= 0x10000)
      {
        v60 = CFUniCharGetBitmapPtrForPlane(0x65u, HIWORD(v54));
        v54 = v116;
      }

      if (v60 && ((*(v60 + (v54 >> 3)) >> (v54 & 7)) & 1) != 0)
      {
        goto LABEL_135;
      }

      v61 = BitmapPtrForPlane;
      if (v55 >= 0x10000)
      {
        v61 = CFUniCharGetBitmapPtrForPlane(0x65u, HIWORD(v55));
        v54 = v116;
      }

      if (v61 && ((*(v61 + (v55 >> 3)) >> (v55 & 7)) & 1) != 0)
      {
        goto LABEL_135;
      }

      v62 = v108;
      if (v54 >= 0x10000)
      {
        v62 = CFUniCharGetBitmapPtrForPlane(8u, HIWORD(v54));
        v54 = v116;
      }

      if (v62 && ((*(v62 + (v54 >> 3)) >> (v54 & 7)) & 1) != 0)
      {
        v63 = v108;
        if (v55 >= 0x10000)
        {
          v63 = CFUniCharGetBitmapPtrForPlane(8u, HIWORD(v55));
          v54 = v116;
        }

        if (v63 && ((*(v63 + (v55 >> 3)) >> (v55 & 7)) & 1) != 0)
        {
LABEL_135:
          v117 = 0;
          v118 = 0;
          v64 = __CFStringFoldCharacterClusterAtIndex(v54, buffer, v58, 16, 0, __s1, &v118, 0);
          v65 = v55;
          v66 = v64;
          v67 = v65;
          v68 = __CFStringFoldCharacterClusterAtIndex(v65, v121, v24 - 1, 16, 0, __s2, &v117, 0);
          v69 = v68;
          if (v66 && v66 == v68)
          {
            v70 = memcmp(__s1, __s2, 4 * v66);
            v54 = v116;
            if (!v70)
            {
LABEL_145:
              if (v54 < 0x10000)
              {
                v71 = 1;
              }

              else
              {
                v71 = 2;
              }

              if (v66)
              {
                v71 = v118;
              }

              v23 = v71 + v23 - 1;
              if (v67 < 0x10000)
              {
                v72 = 1;
              }

              else
              {
                v72 = 2;
              }

              if (v69)
              {
                v72 = v117;
              }

              v24 = v72 + v24 - 1;
              v22 = v112;
              v15 = v113;
              v19 = Length;
              v25 = (__NSCFString + 24);
LABEL_156:
              v21 = v24 < v12;
              v20 = v23 < v19;
              if (v23 >= v19 || v24 >= v12)
              {
                goto LABEL_190;
              }

              continue;
            }
          }

          else
          {
            v54 = v116;
            if (!v66 && v68 == 1 && v116 == __s2[0])
            {
              goto LABEL_145;
            }
          }

          if (!v69 && v66 == 1 && v67 == __s1[0])
          {
            goto LABEL_145;
          }

          v55 = v67;
        }
      }
    }

    break;
  }

  v99 = v54 >= v55;
LABEL_249:
  if (v99)
  {
    result = 1;
  }

  else
  {
    result = -1;
  }

LABEL_252:
  v106 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _CFStringIsJoiningPulliAtIndex(void *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (a3 >= a2 || a3 + a4 <= a2)
  {
    result = 0;
  }

  else
  {
    v5 = a2 - 1;
    if (a3 + a4 - (a2 - 1) >= 4)
    {
      v6 = 4;
    }

    else
    {
      v6 = a3 + a4 - (a2 - 1);
    }

    v24[0] = 0;
    v7 = *(__src + 17);
    if (v7)
    {
      v8 = v7 + 2 * *(__src + 19);
      __memmove_chk();
    }

    else
    {
      v14 = *(__src + 21);
      if (v14 < a2 && (v15 = *(__src + 22), v15 >= a2))
      {
        v18 = v15 - v5;
        if (v6 >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v6;
        }

        __memmove_chk();
        v17 = v24 + v19;
        v5 += v19;
        v6 -= v19;
      }

      else
      {
        v16 = v6 + v5 - v14;
        if (v6 + v5 <= v14)
        {
          v17 = v24;
        }

        else
        {
          v17 = v24;
          if (v6 + v5 < *(__src + 22))
          {
            v6 = v14 - v5;
            memmove(v24 + 2 * (v14 - v5), __src, 2 * v16);
          }
        }
      }

      if (v6 >= 1)
      {
        v20 = *(__src + 18);
        v21.location = *(__src + 19) + v5;
        if (v20)
        {
          v22 = (v20 + v21.location);
          do
          {
            v23 = *v22++;
            *v17++ = v23;
            --v6;
          }

          while (v6);
        }

        else
        {
          v21.length = v6;
          CFStringGetCharacters(*(__src + 16), v21, v17);
        }
      }
    }

    result = LODWORD(v24[0]) == 197987221 && WORD2(v24[0]) == 2999 || v24[0] == 0xBC00BB00BCD0BB6 || v24[0] == 0xBC00BB00BCD0BB8;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringEncoding CFStringGetSmallestEncoding(CFStringRef theString)
{
  if (CF_IS_OBJC(7uLL, theString))
  {

    return [(__CFString *)theString _smallestEncodingInCFStringEncoding];
  }

  p_info = &theString->info;
  v4 = atomic_load(&theString->info);
  if ((v4 & 0x10) == 0)
  {
    v5 = __CFDefaultEightBitStringEncoding;
    goto LABEL_18;
  }

  v6 = atomic_load(p_info);
  v7 = v6 & 5;
  v8 = atomic_load(p_info);
  v9 = v8 & 0x60;
  if (v7 == 4)
  {
    p_data = &theString->data;
    if (v9)
    {
      v11 = *p_data;
    }

    else
    {
      v13 = atomic_load(&theString->info);
      v11 = &p_data[(v13 & 5) != 4];
    }

    length = *v11;
  }

  else if ((v8 & 0x60) != 0)
  {
    length = theString->length;
  }

  else
  {
    length = theString->data;
  }

  v14 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v14 = __CFStringComputeEightBitStringEncoding();
  }

  v18.location = 0;
  v18.length = length;
  v15 = __CFStringEncodeByteStream(theString, v18, 0, v14, 0, 0, 0x7FFFFFFFFFFFFFFFLL, 0);
  v5 = __CFDefaultEightBitStringEncoding;
  if (v15 != length)
  {
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v5 = __CFStringComputeEightBitStringEncoding();
    }

    if (__CFDefaultSystemEncoding)
    {
      if (!v5)
      {
        return 256;
      }
    }

    else
    {
      CFStringGetSystemEncoding();
      if (v5 == __CFDefaultSystemEncoding - 1)
      {
        return 256;
      }

      if ((__CFDefaultSystemEncoding & 1) == 0)
      {
        CFStringGetSystemEncoding();
        v16 = __CFDefaultSystemEncoding - 1;
LABEL_31:
        v19.location = 0;
        v19.length = length;
        if (__CFStringEncodeByteStream(theString, v19, 0, v16, 0, 0, 0x7FFFFFFFFFFFFFFFLL, 0) == length)
        {
          if (__CFDefaultSystemEncoding)
          {
            return 0;
          }

          CFStringGetSystemEncoding();
          return __CFDefaultSystemEncoding - 1;
        }

        return 256;
      }
    }

    v16 = 0;
    goto LABEL_31;
  }

LABEL_18:
  if (v5 != -1)
  {
    return v5;
  }

  return __CFStringComputeEightBitStringEncoding();
}

void CFShowStr(CFStringRef str)
{
  if (!str)
  {
    v2 = *MEMORY[0x1E69E9858];
    v3 = "(null)\n";
    v4 = 7;
    goto LABEL_5;
  }

  if (CF_IS_OBJC(7uLL, str))
  {
    v2 = *MEMORY[0x1E69E9858];
    v3 = "This is an NSString, not CFString\n";
    v4 = 34;
LABEL_5:

    fwrite(v3, v4, 1uLL, v2);
    return;
  }

  v5 = CFGetAllocator(str);
  v6 = MEMORY[0x1E69E9858];
  v7 = atomic_load(&str->info);
  v8 = v7 & 5;
  v9 = atomic_load(&str->info);
  v10 = v9 & 0x60;
  if (v8 == 4)
  {
    p_data = &str->data;
    if (v10)
    {
      length = *p_data;
    }

    else
    {
      v13 = atomic_load(&str->info);
      length = &p_data[(v13 & 5) != 4];
    }

    LODWORD(length) = *length;
  }

  else if ((v9 & 0x60) != 0)
  {
    length = str->length;
  }

  else
  {
    length = str->data;
  }

  v14 = atomic_load(&str->info);
  fprintf(*MEMORY[0x1E69E9858], "\nLength %d\nIsEightBit %d\n", length, ((v14 >> 4) & 1) == 0);
  v15 = *v6;
  v16 = atomic_load(&str->info);
  v17 = atomic_load(&str->info);
  v18 = atomic_load(&str->info);
  fprintf(v15, "HasLengthByte %d\nHasNullByte %d\nInlineContents %d\n", (v16 >> 2) & 1, (v17 >> 3) & 1, (v18 & 0x60) == 0);
  fwrite("Allocator ", 0xAuLL, 1uLL, *v6);
  v19 = *v6;
  if (v5 == &__kCFAllocatorSystemDefault)
  {
    fwrite("SystemDefault\n", 0xEuLL, 1uLL, v19);
  }

  else
  {
    fprintf(v19, "%p\n", v5);
  }

  v20 = *v6;
  p_info = &str->info;
  v22 = atomic_load(&str->info);
  fprintf(v20, "Mutable %d\n", v22 & 1);
  v23 = atomic_load(&str->info);
  if ((v23 & 1) != 0 || (v24 = atomic_load(p_info), (~v24 & 0x60) != 0))
  {
    v31 = atomic_load(p_info);
    if (v31)
    {
      v32 = atomic_load(&str->info);
      if ((~v32 & 0x60) == 0)
      {
        data = str[1].data;
        fprintf(*v6, "ExternalContentsAllocator %p\n");
      }
    }
  }

  else
  {
    v25 = atomic_load(&str->info);
    v26 = (v25 & 5) == 4;
    v27 = 32;
    if (v26)
    {
      v27 = 24;
    }

    v28 = *v6;
    if (*(&str->isa + v27))
    {
      v29 = atomic_load(&str->info);
      v26 = (v29 & 5) == 4;
      v30 = 32;
      if (v26)
      {
        v30 = 24;
      }

      v41 = *(&str->isa + v30);
      fprintf(v28, "ContentsDeallocatorFunc %p\n");
    }

    else
    {
      fwrite("ContentsDeallocatorFunc None\n", 0x1DuLL, 1uLL, v28);
    }
  }

  v34 = atomic_load(&str->info);
  if (v34)
  {
    v35 = "Fixed";
    info = str[1].info;
    if ((info & 2) == 0)
    {
      v35 = "Desired";
    }

    fprintf(*v6, "CurrentCapacity %d\n%sCapacity %d\n", str[1].isa, v35, info >> 4);
  }

  v37 = atomic_load(&str->info);
  v38 = &str->data;
  if ((v37 & 0x60) != 0)
  {
    v39 = *v38;
  }

  else
  {
    v40 = atomic_load(&str->info);
    v39 = &v38[(v40 & 5) != 4];
  }

  fprintf(*v6, "Contents %p\n", v39);
}

CFArrayRef CFStringCopyStatisticalWritingDirections(__CFString *a1)
{
  v99 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  if (Length)
  {
    v3 = Length;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    *buffer = 0u;
    v75 = 0u;
    theString = a1;
    v85 = 0;
    v86 = Length;
    CharactersPtr = CFStringGetCharactersPtr(a1);
    CStringPtrInternal = 0;
    v83 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtrInternal = _CFStringGetCStringPtrInternal(a1, 0x600u, 1, 1);
    }

    v87 = 0;
    v88 = 0;
    v84 = CStringPtrInternal;
    *theArray = 0u;
    *v71 = 0u;
    v69 = 0xFFFFLL;
    memset(v62, 0, sizeof(v62));
    v63 = notFoundRange;
    v64 = notFoundRange;
    v65 = 0u;
    v66 = 0u;
    v67 = 0xFE00000000;
    v68 = -1;
    LOBYTE(theArray[1]) = -1;
    v71[0] = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    theArray[0] = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, 0);
    v6 = atomic_load(sUseOuterDirectionalOverride);
    LOBYTE(v71[1]) = v6 & 1;
    BYTE1(v71[1]) = _os_feature_enabled_impl();
    BYTE2(v71[1]) = _os_feature_enabled_impl();
    BYTE3(v71[1]) = _os_feature_enabled_impl();
    if (v3 >= 1)
    {
      v7 = 0;
      v8 = 0;
      v57 = v3;
      while (v7)
      {
        ++v8;
        v9 = MEMORY[0x1865E3980](v7);
        if (v7 != 10)
        {
          goto LABEL_8;
        }

        v14 = 0;
LABEL_220:
        v7 = v14;
        if (v8 >= v3)
        {
          goto LABEL_233;
        }
      }

      values = 0;
      v90 = 0;
      LODWORD(v7) = __CFStringGetLongCharacterFromInlineBuffer(buffer, v3, v8, &values);
      v8 = values + v90;
      v9 = MEMORY[0x1865E3980]();
LABEL_8:
      v10 = 1;
      if (v7 < 0x10000)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if ((v7 - 1776) >= 0xA)
      {
        v12 = 2;
      }

      else
      {
        v12 = 5;
      }

      if (v9 == 2)
      {
        v13 = v12;
      }

      else
      {
        v13 = v9;
      }

      if (v13 <= 15)
      {
        if (v13 <= 9)
        {
          if (v13 != 7)
          {
            if (v13 == 8)
            {
LABEL_105:
              v14 = 0;
              v24 = 0;
              goto LABEL_161;
            }

            if (v13 != 9)
            {
LABEL_62:
              if (u_hasBinaryProperty(v7, UCHAR_IDEOGRAPHIC))
              {
                if (*(&v65 + 1))
                {
                  v14 = 0;
                  v24 = 0;
                  v8 -= v11;
                  v10 = 1;
                  v26 = 1;
                  v18 = 1;
                  v11 = 0;
                  goto LABEL_163;
                }

                *(&v65 + 1) = v11;
                if (v13)
                {
                  if ((v13 == 13 || v13 == 1) && v69 != 1)
                  {
                    if (v69 == 255)
                    {
                      v10 = 1;
                      LOBYTE(v69) = 1;
                      if (BYTE1(v69) != 255)
                      {
                        v14 = 0;
                        v24 = 0;
                        BYTE1(v69) = 1;
                        goto LABEL_161;
                      }

                      goto LABEL_105;
                    }

                    goto LABEL_148;
                  }
                }

                else
                {
                  v14 = v69;
                  if (!v69)
                  {
                    goto LABEL_59;
                  }

                  if (v69 != 255)
                  {
LABEL_148:
                    v14 = 0;
                    v24 = 0;
                    v10 = 1;
                    v62[2] = 1;
                    goto LABEL_161;
                  }

                  LOBYTE(v69) = 0;
                  if (BYTE1(v69) != 255)
                  {
                    v14 = 0;
                    v24 = 0;
                    BYTE1(v69) = 0;
                    goto LABEL_160;
                  }
                }

LABEL_58:
                v14 = 0;
LABEL_59:
                v24 = 0;
                goto LABEL_160;
              }

              goto LABEL_65;
            }

            v14 = 0;
            v10 = 1;
            if (v7 > 8198)
            {
              v25 = v7 - 7;
              if ((v7 - 8199) > 0x28)
              {
                goto LABEL_143;
              }

              if (((1 << v25) & 0x10000000003) != 0)
              {
                goto LABEL_62;
              }

              if (((1 << v25) & 0x600000000) == 0)
              {
LABEL_143:
                v24 = 0;
                goto LABEL_161;
              }
            }

            else if ((v7 - 10) >= 4 && v7 != 133)
            {
              if (v7 != 160)
              {
                goto LABEL_143;
              }

              goto LABEL_62;
            }
          }

          v14 = 0;
          v24 = 1;
          if (v7 == 13 && v8 < v3)
          {
            v34 = v86;
            if (v86 <= v8)
            {
              v14 = 0;
            }

            else
            {
              if (v83)
              {
                v35 = v83[v85 + v8];
              }

              else if (v84)
              {
                v35 = *(v84 + v85 + v8);
              }

              else
              {
                if (v88 <= v8 || (v37 = v87, v87 > v8))
                {
                  v38 = v8 - 4;
                  if (v8 < 4)
                  {
                    v38 = 0;
                  }

                  if (v38 + 64 < v86)
                  {
                    v34 = v38 + 64;
                  }

                  v87 = v38;
                  v88 = v34;
                  v101.length = v34 - v38;
                  v101.location = v85 + v38;
                  CFStringGetCharacters(theString, v101, buffer);
                  v37 = v87;
                }

                v35 = buffer[v8 - v37];
              }

              v14 = v35;
              if (v35 == 10)
              {
                ++v8;
                v24 = 1;
                v10 = 1;
                v11 = 2;
                goto LABEL_161;
              }
            }

            v24 = 1;
          }

LABEL_160:
          v10 = 1;
LABEL_161:
          v26 = 1;
LABEL_162:
          v18 = 1;
LABEL_163:
          if (!*(&v66 + 1))
          {
            LODWORD(v67) = v7;
          }

          *(&v66 + 1) += v11;
          if (v8 == v3)
          {
            if (v63 != -1)
            {
              v63 = notFoundRange;
            }

            v10 = 1;
            v24 = 1;
          }

          else
          {
            if (v63 == -1)
            {
              v26 = 0;
            }

            if (v26)
            {
              v63 = notFoundRange;
              if ((v18 & 1) == 0)
              {
                goto LABEL_178;
              }
            }

            else if (!v18)
            {
              goto LABEL_178;
            }
          }

          if (v64 != -1)
          {
            v64 = notFoundRange;
            v68 = -1;
            if ((v10 & 1) == 0)
            {
              goto LABEL_219;
            }

            goto LABEL_179;
          }

LABEL_178:
          if (!v10)
          {
LABEL_219:
            v8 -= v14 == 10;
            goto LABEL_220;
          }

LABEL_179:
          if (v69 == 1)
          {
            ++*&v62[40];
          }

          else
          {
            if (!v69)
            {
              ++*&v62[32];
LABEL_186:
              if (BYTE4(v67) != 254)
              {
                goto LABEL_192;
              }

              v39 = 0;
              goto LABEL_191;
            }

            if (BYTE1(v69) != 1)
            {
              if (BYTE1(v69))
              {
                if (*(&v65 + 1) < 1)
                {
                  goto LABEL_195;
                }

                ++*&v62[48];
LABEL_193:
                if (v62[2] == 1)
                {
                  v62[1] = 1;
                }

LABEL_195:
                if (!v24)
                {
LABEL_218:
                  v65 = v8;
                  LOWORD(v69) = -1;
                  v62[2] = 0;
                  goto LABEL_219;
                }

                v40 = *&v62[8] == 0 && *&v62[32] == 0;
                if (*&v62[40] | *&v62[16])
                {
                  v41 = (*&v62[16] + *&v62[40]) / (*&v62[8] + *&v62[32] + *&v62[16] + *&v62[40]) < 0.4;
                }

                else
                {
                  v41 = 1;
                }

                if (v67 != 8206)
                {
                  if (v67 == 8207)
                  {
LABEL_204:
                    LOBYTE(v42) = 1;
LABEL_215:
                    valuePtr = v42;
                    v61 = v8;
                    v60 = v14;
                    if (appendParagraphRangeInfo_onceToken != -1)
                    {
                      CFStringCopyStatisticalWritingDirections_cold_1();
                    }

                    v43 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v66);
                    v44 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v66 + 8);
                    v59 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberSInt8Type, &valuePtr);
                    v72 = v62[1];
                    v45 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberIntType, &v72);
                    v46 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v62[8]);
                    v47 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v62[16]);
                    v48 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v62[24]);
                    v49 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v62[32]);
                    v50 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v62[40]);
                    cf = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberCFIndexType, &v62[48]);
                    values = v43;
                    v90 = v44;
                    v91 = v59;
                    v92 = v45;
                    v93 = v46;
                    v94 = v47;
                    v95 = v48;
                    v96 = v49;
                    v97 = v50;
                    v98 = cf;
                    v51 = CFDictionaryCreate(&__kCFAllocatorSystemDefault, appendParagraphRangeInfo_sArrayOfStatisticalWritingDirectionParagraphKeys, &values, 10, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    CFRelease(v43);
                    CFRelease(v44);
                    CFRelease(v59);
                    CFRelease(v45);
                    CFRelease(v46);
                    CFRelease(v47);
                    CFRelease(v48);
                    CFRelease(v49);
                    CFRelease(v50);
                    CFRelease(cf);
                    CFArrayAppendValue(v71[0], v51);
                    CFRelease(v51);
                    v8 = v61;
                    memset(&v62[8], 0, 48);
                    v66 = v61;
                    LODWORD(v67) = 0;
                    BYTE4(v67) = -2;
                    v62[1] = 0;
                    v3 = v57;
                    v14 = v60;
                    goto LABEL_218;
                  }

                  if (BYTE4(v67))
                  {
                    if (BYTE4(v67) == 1 && (BYTE2(v71[1]) & 1) == 0)
                    {
                      goto LABEL_204;
                    }

LABEL_212:
                    v42 = v40 << 31 >> 31;
                    if (!v41)
                    {
                      LOBYTE(v42) = 1;
                    }

                    goto LABEL_215;
                  }

                  if (BYTE1(v71[1]) == 1)
                  {
                    goto LABEL_212;
                  }
                }

                LOBYTE(v42) = 0;
                goto LABEL_215;
              }

              ++*&v62[8];
              goto LABEL_186;
            }

            ++*&v62[16];
          }

          if (BYTE4(v67) != 254)
          {
            goto LABEL_192;
          }

          v39 = 1;
LABEL_191:
          BYTE4(v67) = v39;
LABEL_192:
          if (*(&v65 + 1) < 1)
          {
            goto LABEL_195;
          }

          goto LABEL_193;
        }

        if ((v13 - 11) < 2 || (v13 - 14) < 2)
        {
          v20 = *(&v65 + 1);
          v16 = *(&v65 + 1) != 0;
          CFArrayAppendValue(theArray[0], v7);
          if (LOBYTE(v71[1]) == 1 && CFArrayGetCount(theArray[0]) != 1)
          {
            goto LABEL_73;
          }

          if (v7 <= 8236)
          {
            if (v7 != 8234)
            {
              if (v7 != 8235)
              {
                goto LABEL_73;
              }

              goto LABEL_126;
            }

LABEL_53:
            v19 = LOBYTE(theArray[1]) != 0;
            LOWORD(theArray[1]) = 0;
            v18 = 1;
            if (!v20)
            {
              goto LABEL_77;
            }

            goto LABEL_127;
          }

          if (v7 != 8238)
          {
            if (v7 == 8237)
            {
              goto LABEL_53;
            }

LABEL_73:
            v10 = 1;
            if (v16)
            {
              goto LABEL_74;
            }

            v19 = 0;
            goto LABEL_76;
          }

LABEL_126:
          v19 = LOBYTE(theArray[1]) != 1;
          v18 = 1;
          LOWORD(theArray[1]) = 1;
          if (!v20)
          {
            goto LABEL_77;
          }

          goto LABEL_127;
        }

        if (v13 != 10)
        {
          goto LABEL_62;
        }

LABEL_56:
        if (u_charType(v7) == 19 && *(&v65 + 1))
        {
          goto LABEL_58;
        }

LABEL_65:
        v19 = 0;
        v18 = 0;
        goto LABEL_77;
      }

      if (v13 <= 18)
      {
        if (v13 != 16)
        {
          if (v13 != 18)
          {
            goto LABEL_62;
          }

          goto LABEL_56;
        }
      }

      else
      {
        if ((v13 - 19) < 3)
        {
          v15 = *(&v65 + 1);
          v16 = *(&v65 + 1) != 0;
          CFArrayAppendValue(theArray[0], v7);
          if (LOBYTE(v71[1]) == 1 && CFArrayGetCount(theArray[0]) != 1)
          {
            goto LABEL_73;
          }

          v17 = BYTE1(theArray[1]);
          LOWORD(theArray[1]) = 511;
          v18 = 1;
          if (v15)
          {
LABEL_127:
            v14 = 0;
            v24 = 0;
            v10 = 1;
            v26 = 1;
            goto LABEL_163;
          }

          goto LABEL_32;
        }

        if (v13 != 22)
        {
          goto LABEL_62;
        }
      }

      v20 = *(&v65 + 1);
      v16 = *(&v65 + 1) != 0;
      Count = CFArrayGetCount(theArray[0]);
      if (!Count)
      {
        goto LABEL_73;
      }

      v22 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], Count - 1);
      if (v13 == 16)
      {
        if (ValueAtIndex - 8234 > 4 || ValueAtIndex == 8236)
        {
          goto LABEL_73;
        }
      }

      else if (ValueAtIndex - 8294 >= 3)
      {
        goto LABEL_73;
      }

      CFArrayRemoveValueAtIndex(theArray[0], v22 - 1);
      if (v22 == 1)
      {
        LOWORD(theArray[1]) = 255;
        v10 = 1;
        if (v20)
        {
LABEL_74:
          v14 = 0;
          v24 = 0;
          v26 = 1;
          v18 = 1;
          goto LABEL_163;
        }

        v19 = 1;
LABEL_76:
        v18 = 1;
        goto LABEL_77;
      }

      if (LOBYTE(v71[1]) == 1 && CFArrayGetCount(theArray[0]))
      {
        goto LABEL_73;
      }

      v33 = CFArrayGetValueAtIndex(theArray[0], v22 - 2);
      if (v33 > 8236)
      {
        if (v33 == 8238)
        {
          goto LABEL_126;
        }

        if (v33 == 8237)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v33 == 8234)
        {
          goto LABEL_53;
        }

        if (v33 == 8235)
        {
          goto LABEL_126;
        }
      }

      v17 = BYTE1(theArray[1]);
      LOWORD(theArray[1]) = 511;
      v18 = 1;
      if (v20)
      {
        goto LABEL_127;
      }

LABEL_32:
      v19 = v17 ^ 1;
LABEL_77:
      *(&v65 + 1) += v11;
      if (!CFArrayGetCount(theArray[0]) && (v19 & 1) == 0)
      {
        v14 = 0;
        v24 = 0;
        v10 = 0;
        v26 = v18;
        switch(v13)
        {
          case 0:
            v14 = v69;
            if (!v69)
            {
              goto LABEL_136;
            }

            if (v69 != 255)
            {
              goto LABEL_140;
            }

            LOBYTE(v69) = 0;
            if (BYTE1(v69) == 255)
            {
              goto LABEL_135;
            }

            v14 = 0;
            v24 = 0;
            v10 = 0;
            BYTE1(v69) = 0;
            goto LABEL_161;
          case 1:
          case 13:
            if (v69 == 1)
            {
              goto LABEL_135;
            }

            if (v69 == 255)
            {
              v26 = 1;
              LOBYTE(v69) = 1;
              v14 = 0;
              v24 = 0;
              v10 = 0;
              if (BYTE1(v69) != 255)
              {
                BYTE1(v69) = 1;
              }
            }

            else
            {
LABEL_140:
              v14 = 0;
              v24 = 0;
              v10 = 0;
              v26 = 1;
              v62[2] = 1;
            }

            goto LABEL_162;
          case 2:
          case 5:
            v36 = v64;
            v26 = v18;
            if (v64 == -1)
            {
              v36 = v63;
              if (v63 == -1)
              {
                v36 = v8 - v11;
                *&v64 = v8 - v11;
                v26 = v18;
              }

              else
              {
                *&v64 = v63;
                *(&v64 + 1) = *(&v63 + 1) + v11;
                v26 = 1;
              }
            }

            v14 = 0;
            v52 = v36 + *(&v64 + 1) + v11 - 1;
            *(&v64 + 1) += v11;
            v68 = v52;
            if (v13 == 5 && BYTE1(v69) == 255)
            {
              v14 = 0;
              v24 = 0;
              v10 = 0;
              if (BYTE3(v71[1]) == 1)
              {
                BYTE1(v69) = 1;
              }
            }

            else
            {
              v24 = 0;
              v10 = 0;
            }

            goto LABEL_163;
          case 3:
            if (v64 != -1)
            {
              goto LABEL_142;
            }

            if (v63 != -1)
            {
              goto LABEL_223;
            }

            goto LABEL_231;
          case 4:
            if (v64 != -1)
            {
              goto LABEL_142;
            }

            if (v63 == -1)
            {
              goto LABEL_96;
            }

LABEL_223:
            v14 = 0;
            v24 = 0;
            v10 = 0;
            *(&v63 + 1) += v11;
            goto LABEL_97;
          case 6:
            if (v64 == -1)
            {
              if (v63 != -1)
              {
                v14 = 0;
                v24 = 0;
                v10 = 0;
                v26 = 1;
                goto LABEL_163;
              }

LABEL_231:
              v14 = 0;
              v24 = 0;
              v10 = 0;
              *&v63 = v8 - v11;
              *(&v63 + 1) += v11;
            }

            else
            {
LABEL_142:
              v14 = 0;
              v24 = 0;
              v10 = 0;
              *(&v64 + 1) += v11;
            }

            break;
          case 9:
          case 11:
          case 12:
          case 14:
          case 15:
          case 16:
          case 19:
          case 20:
          case 21:
          case 22:
            goto LABEL_163;
          default:
LABEL_135:
            v14 = 0;
LABEL_136:
            v24 = 0;
            v10 = 0;
            goto LABEL_161;
        }

        goto LABEL_97;
      }

      if (LOBYTE(theArray[1]) == 255)
      {
        if (BYTE1(theArray[1]) == 1)
        {
          v14 = 0;
          v24 = 0;
          v10 = 0;
          v62[2] = v69 != 255;
          LOWORD(v69) = -1;
          goto LABEL_97;
        }
      }

      else if (LOBYTE(theArray[1]) == 1)
      {
        v62[2] = v69 != 1;
        if (v69 == 255)
        {
          LOBYTE(v69) = 1;
          if (BYTE1(v69) != 255)
          {
            v14 = 0;
            v24 = 0;
            v10 = 0;
            BYTE1(v69) = 1;
            goto LABEL_97;
          }
        }
      }

      else if (LOBYTE(theArray[1]))
      {
        CFLog(2, @"Unknown value for considerWordDirectionality: %d", v27, v28, v29, v30, v31, v32, SLOBYTE(theArray[1]));
      }

      else
      {
        v62[2] = v69 != 0;
        if (v69 == 255)
        {
          LOBYTE(v69) = 0;
          if (BYTE1(v69) != 255)
          {
            v14 = 0;
            v24 = 0;
            v10 = 0;
            BYTE1(v69) = 0;
LABEL_97:
            v26 = v18;
            goto LABEL_163;
          }
        }
      }

LABEL_96:
      v14 = 0;
      v24 = 0;
      v10 = 0;
      goto LABEL_97;
    }

LABEL_233:
    v53 = CFRetain(v71[0]);
    CFRelease(v71[0]);
    v71[0] = 0;
    CFRelease(theArray[0]);
    v54 = *MEMORY[0x1E69E9840];
    return v53;
  }

  else
  {
    v56 = *MEMORY[0x1E69E9840];

    return CFArrayCreate(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeArrayCallBacks);
  }
}

uint64_t _objc_getTaggedPointerTag_0(uint64_t a1)
{
  v1 = 0;
  v2 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ a1;
  do
  {
    if ((v3 & 7) == *(MEMORY[0x1E69E5900] + v1))
    {
      break;
    }

    ++v1;
  }

  while (v1 != 7);
  v4 = v1 | v3;
  v5 = v1 & 7;
  v6 = (v4 >> 55) + 8;
  if (v5 == 7)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t __CFShouldUseIsolatesForAppendingValueWithStatisticalWritingDirections(__CFString *theString, __CFString *a2, _BYTE *a3, BOOL *a4, char a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, __CFString *a10, CFLocaleRef locale)
{
  if ((*a3 & 1) == 0)
  {
    Identifier = CFLocaleGetIdentifier(locale);
    *a4 = CFLocaleGetLanguageCharacterDirection(Identifier) == kCFLocaleLanguageDirectionRightToLeft;
    *a3 = 1;
  }

  HasStrongOrWeakRTL = *a4;
  if ((HasStrongOrWeakRTL & 1) == 0 && (a5 & 1) == 0)
  {
    Length = CFStringGetLength(theString);
    HasStrongOrWeakRTL = _CFStringHasStrongOrWeakRTL(theString, 0, Length);
  }

  if (!a6 && (HasStrongOrWeakRTL & 1) == 0)
  {
    v22 = CFStringGetLength(a2);
    if (v22)
    {
      if ((_CFStringHasStrongOrWeakRTL(a2, 0, v22) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 1;
    }
  }

  if (HasStrongOrWeakRTL)
  {
    return 1;
  }

LABEL_10:
  v23 = *(a7 + 32 * a8 + 8) + *(a7 + 32 * a8 + 4);
  if (a9 <= v23)
  {
    return 0;
  }

  return _CFStringHasStrongOrWeakRTL(a10, v23, a9 - v23);
}

uint64_t __CFShouldUseIsolatesForAppendingValue(__CFString *a1, const __CFString *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, __CFString *a7)
{
  Length = CFStringGetLength(a1);
  if (_CFStringHasStrongOrWeakRTL(a1, 0, Length))
  {
    return 1;
  }

  v16 = CFStringGetLength(a2);
  if (!v16)
  {
    a3 = *(a4 + 32 * a5 + 8) + *(a4 + 32 * a5 + 4);
    v17 = a6 - a3;
    if (a6 > a3)
    {
      goto LABEL_7;
    }

    return 0;
  }

  v17 = v16 - a3;
  if (v16 <= a3)
  {
    return 0;
  }

  a7 = a2;
LABEL_7:

  return _CFStringHasStrongOrWeakRTL(a7, a3, v17);
}

void __CFAppendFormattedValueWithStatisticalWritingDirections(__CFString *appendedString, CFMutableStringRef theString, int a3, int a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (a4 && !a3)
  {
    if (_os_feature_enabled_impl())
    {
      v6 = CFStringCopyStatisticalWritingDirections(appendedString);
      Count = CFArrayGetCount(v6);
      if (Count)
      {
        v8 = Count;
        if (Count >= 1)
        {
          for (i = 0; v8 != i; ++i)
          {
            if (CFArrayGetCount(v6) > i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
              v11 = ValueAtIndex;
              valuePtr = 0;
              v20[0] = 0;
              if (v8 >= 2)
              {
                Value = CFDictionaryGetValue(ValueAtIndex, @"Location");
                if (!Value)
                {
                  continue;
                }

                CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
                v13 = CFDictionaryGetValue(v11, @"Length");
                if (!v13)
                {
                  continue;
                }

                CFNumberGetValue(v13, kCFNumberCFIndexType, v20);
              }

              v18 = 0;
              v14 = CFDictionaryGetValue(v11, @"WritingDirection");
              if (v14)
              {
                CFNumberGetValue(v14, kCFNumberSInt8Type, &v18);
                v15 = v18;
                if (v18 != 255)
                {
                  goto LABEL_16;
                }
              }
            }
          }
        }

        v15 = -1;
LABEL_16:
        __CFAppendDirectionalIsolate(v15, theString);
        goto LABEL_22;
      }
    }

    else
    {
      v6 = 0;
    }

    LOWORD(valuePtr) = 8296;
    CFStringAppendCharacters(theString, &valuePtr, 1);
LABEL_22:
    CFStringAppend(theString, appendedString);
    LOWORD(valuePtr) = 8297;
    CFStringAppendCharacters(theString, &valuePtr, 1);
    if (v6)
    {
      CFRelease(v6);
    }

    v17 = *MEMORY[0x1E69E9840];
    return;
  }

  v16 = *MEMORY[0x1E69E9840];

  CFStringAppend(theString, appendedString);
}

void __CFAppendFormattedValue(CFStringRef appendedString, CFMutableStringRef theString, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    chars = 8296;
    CFStringAppendCharacters(theString, &chars, 1);
    CFStringAppend(theString, appendedString);
    v8 = 8297;
    CFStringAppendCharacters(theString, &v8, 1);
    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];

    CFStringAppend(theString, appendedString);
  }
}