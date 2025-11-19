uint64_t isEqualToTaggedPointer_0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  __s2[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69E5910];
  v6 = *MEMORY[0x1E69E5910];
  v7 = a1 & 0xC000000000000007;
  if ((a1 & 0xC000000000000007) == 0xC000000000000007)
  {
    v8 = 0;
  }

  else
  {
    v8 = *MEMORY[0x1E69E5910];
  }

  v9 = v8 ^ a1;
  v10 = 0xFFF800000000000;
  if ((~v9 & 7) == 0)
  {
    v10 = 0xF800000000000;
  }

  v11 = v10 & (v9 >> 3);
  v12 = v11 >> 47;
  if ((~a2 & 0xC000000000000007) == 0)
  {
    v6 = 0;
  }

  v13 = v6 ^ a2;
  v14 = v13 & 7;
  do
  {
    if (v14 == *(MEMORY[0x1E69E5900] + v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 != 7);
  v15 = v4 | v13;
  v16 = v4 & 7;
  v17 = (v15 >> 55) + 8;
  if (v16 == 7)
  {
    LODWORD(v16) = v17;
  }

  if (v16 != 22)
  {
    if (v16 == 2)
    {
      if (_NSTaggedPointerStringGetLength(a2) == v12)
      {
        __s2[0] = 0;
        __s2[1] = 0;
        _NSTaggedPointerStringGetBytes(a2, __s2);
        v21 = *v5;
        if (v7 == 0xC000000000000007)
        {
          v21 = 0xC000000000000007;
        }

        v19 = (((v21 ^ a1) >> 3) & 0x7FFFFFFFFFFFLL);
        v20 = __s2;
        goto LABEL_24;
      }
    }

    else if (!v16)
    {
      v18 = 0xFFF800000000000;
      if (v14 == 7)
      {
        v18 = 0xF800000000000;
      }

      if (v11 == (v18 & (v13 >> 3)))
      {
        v19 = ((v9 >> 3) & 0x7FFFFFFFFFFFLL);
        v20 = ((v13 >> 3) & 0x7FFFFFFFFFFFLL);
LABEL_24:
        result = memcmp(v19, v20, v12) == 0;
LABEL_26:
        v23 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

    result = 0;
    goto LABEL_26;
  }

  v24 = *MEMORY[0x1E69E9840];

  return isEqualToString_0(a1, a2, 0);
}

uint64_t _CFStringCheckAndGetCharacterAtIndex(uint64_t a1, uint64_t a2, _WORD *a3)
{
  if (a2 < 0 && !dyld_program_sdk_at_least())
  {
    v17 = 0;
  }

  else
  {
    v6 = atomic_load((a1 + 8));
    v7 = (a1 + 16);
    if ((v6 & 0x60) != 0)
    {
      v8 = *v7;
      if (a2 < 0)
      {
        return 3;
      }
    }

    else
    {
      v9 = atomic_load((a1 + 8));
      v8 = &v7[(v9 & 5) != 4];
      if (a2 < 0)
      {
        return 3;
      }
    }

    v10 = atomic_load((a1 + 8));
    if ((v10 & 5) == 4)
    {
      v11 = *v8;
    }

    else
    {
      v12 = atomic_load((a1 + 8));
      if ((v12 & 0x60) != 0)
      {
        v11 = *(a1 + 24);
      }

      else
      {
        v11 = *v7;
      }
    }

    if (v11 <= a2)
    {
      return 3;
    }

    v13 = atomic_load((a1 + 8));
    if ((v13 & 0x10) != 0)
    {
      v15 = v8 + 2 * a2;
    }

    else
    {
      v14 = atomic_load((a1 + 8));
      v15 = (__CFCharToUniCharTable + 2 * *(v8 + ((v14 >> 2) & 1) + a2));
    }

    v17 = *v15;
  }

  result = 0;
  *a3 = v17;
  return result;
}

uint64_t _netLocationRange(unsigned int a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x1E) != 0)
  {
    v2 = xmmword_183306FB0;
    v3 = xmmword_183306FB0;
    if ((a1 & 2) != 0)
    {
      v3 = *(a2 + 16 * (a1 & 1));
    }

    v18[0] = v3;
    v4 = (a1 >> 1) & 1;
    v5 = xmmword_183306FB0;
    if ((a1 & 4) != 0)
    {
      v5 = *(a2 + 16 * (v4 + (a1 & 1)));
    }

    v18[1] = v5;
    v6 = xmmword_183306FB0;
    if ((a1 & 8) != 0)
    {
      v6 = *(a2 + 16 * (((a1 >> 2) & 1) + v4 + (a1 & 1)));
    }

    v18[2] = v6;
    if ((a1 & 0x10) != 0)
    {
      v7 = 0;
      v8 = 16;
      do
      {
        v9 = v8;
        v8 >>= 1;
        v7 += a1 & 1;
        a1 >>= 1;
      }

      while ((v9 & 2) == 0);
      v2 = *(a2 + 16 * v7);
    }

    v18[3] = v2;
    v10 = v18 + 1;
    result = -1;
    v12 = 4;
    do
    {
      v13 = *(v10 - 1);
      if (v13 != -1)
      {
        v14 = v13 - result + *v10;
        v15 = result == -1;
        if (result == -1)
        {
          result = *(v10 - 1);
        }

        if (v15)
        {
          v16 = *v10;
        }
      }

      v10 += 2;
      --v12;
    }

    while (v12);
  }

  else
  {
    result = -1;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef _resolvedPath(char *__dst, unint64_t a2, int a3, int a4, int a5, CFAllocatorRef alloc)
{
  v8 = a2;
  if (__dst >= a2)
  {
    goto LABEL_39;
  }

  v11 = __dst;
  while (2)
  {
    v12 = (v11 + 1);
    v13 = (v11 + 2);
    v14 = (v11 + 3);
    while (1)
    {
      if (*v11 != 46)
      {
        goto LABEL_32;
      }

      if (v12 == v8)
      {
        if (v11 != __dst)
        {
          *v11 = 0;
          v8 = v11;
        }

        goto LABEL_39;
      }

      v15 = *v12;
      if (v15 == a3)
      {
        if (v11 == __dst && v13 == v8)
        {
          goto LABEL_39;
        }

        memmove(v11, v11 + 2, v8 - v13 + 2);
        v16 = -4;
        goto LABEL_19;
      }

      if (v8 - v11 < 3 || v15 != 46 || v13 != v8 && (v8 - v11 == 4 || *v13 != a3))
      {
        goto LABEL_32;
      }

      if (v11 - __dst >= 3)
      {
        break;
      }

      if (!a4)
      {
        goto LABEL_32;
      }

      if (v14 >= v8)
      {
        goto LABEL_39;
      }

      memmove(v11, v11 + 3, &v8[-v14 + 2] & 0x1FFFFFFFELL);
      v16 = -6;
LABEL_19:
      v8 += v16;
      if (v11 >= v8)
      {
        goto LABEL_39;
      }
    }

      ;
    }

    v18 = i + 2;
    if (i + 2 == v11 || v11 - v18 == 6 && *v18 == 46 && *(i + 2) == 46)
    {
LABEL_32:
      while (v11 < v8 && *v11 != a3)
      {
        ++v11;
      }

      v18 = (v11 + 1);
      goto LABEL_35;
    }

    if (v13 == v8)
    {
      if (v18 == __dst)
      {
        *__dst = 3080238;
        *(__dst + 2) = 0;
        v8 = __dst + 6;
      }

      else
      {
        *v18 = 0;
        v8 = i + 2;
      }

      break;
    }

    memmove(v18, v11 + 3, &v8[-v14 + 2] & 0x1FFFFFFFELL);
    v8 = &v18[v8 - v14];
LABEL_35:
    v11 = v18;
    if (v18 < v8)
    {
      continue;
    }

    break;
  }

LABEL_39:
  if (a5 && v8 > __dst && v8 - 2 != __dst && *(v8 - 1) == a3)
  {
    v8 -= 2;
  }

  if (v8 >= __dst)
  {
    v19 = (v8 - __dst) >> 1;
  }

  else
  {
    v19 = 0;
  }

  return CFStringCreateWithCharactersNoCopy(alloc, __dst, v19, alloc);
}

void __CFDataDeallocate(uint64_t a1)
{
  v1 = atomic_load((a1 + 8));
  if ((v1 & 4) == 0)
  {
    v2 = atomic_load((a1 + 8));
    if ((v2 & 0x10) == 0)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v5 = (a1 + 40);
        CFAllocatorDeallocate(*(a1 + 32), *(a1 + 40));
        CFRelease(v4);
      }

      else
      {
        v6 = atomic_load((a1 + 8));
        if ((v6 & 8) != 0)
        {
          if (a1 < 0)
          {
            v8 = &kCFAllocatorSystemDefault;
          }

          else
          {
            v9 = atomic_load((a1 + 8));
            if (v9 < 0)
            {
              v8 = &kCFAllocatorSystemDefault;
            }

            else
            {
              v8 = (a1 - 16);
            }
          }

          CFAllocatorDeallocate(*v8, *(a1 + 40));
        }

        else
        {
          v7 = *(a1 + 40);
          if (v7)
          {
            free(v7);
          }
        }

        v5 = (a1 + 40);
      }

      *v5 = 0;
    }
  }
}

void *__CFSafelyReallocateImpl(void *a1, size_t a2, malloc_type_id_t a3, uint64_t a4)
{
  v7 = malloc_type_realloc(a1, a2, a3);
  if (!v7)
  {
    __CFReallocationFailed(a1, a2, a4);
  }

  return v7;
}

CFStringRef CFStringCreateWithFormatAndArguments(CFAllocatorRef alloc, CFDictionaryRef formatOptions, CFStringRef format, va_list arguments)
{
  if (!CF_IS_OBJC(7uLL, format) || !_CFStringObjCFormatRequiresInflection(format))
  {
    return _CFStringCreateWithFormatAndArgumentsReturningMetadata(alloc, 0, 0, formatOptions, 0, 0, format, 0, arguments);
  }

  return _CFStringCreateFormatWithInflectionAndArguments(alloc, formatOptions, format, arguments);
}

void CFMergeSortArray(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43[8] = *MEMORY[0x1E69E9840];
  if (a2 < 2 || a3 < 1)
  {
    goto LABEL_19;
  }

  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
    v17 = CFLog(3, @"Unable to mergesort array - count: %ld elementSize: %ld overflows", a3, a4, a5, a6, a7, a8, a2);
    v40 = &unk_1EA849000;
    v41 = "merge sort - count/elementSize overflow";
LABEL_23:
    v40[326] = v41;
    __break(1u);
    goto LABEL_24;
  }

  v11 = a3 * a2;
  if (__CFADD__(a1, a3 * a2))
  {
    v17 = CFLog(3, @"Unable to mergesort array - list: %lu count: %ld elementSize: %ld - array access overflows", a3, a4, a5, a6, a7, a8, a1);
    v40 = &unk_1EA849000;
    v41 = "merge sort - array access overflow";
    goto LABEL_23;
  }

  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v43[-1] - v14;
  v16 = &v43[-1] - v14;
  if (a2 > 0x1000)
  {
    v17 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
    v16 = v17;
    if (!v17)
    {
LABEL_24:
      CFMergeSortArray_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  v42 = v15;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 0x40000000;
  v43[2] = __CFMergeSortArray_block_invoke;
  v43[3] = &__block_descriptor_tmp_31;
  v43[4] = a4;
  v43[5] = a1;
  v43[6] = a3;
  v43[7] = a5;
  CFSortIndexes(v16, a2, 16, v43);
  MEMORY[0x1EEE9AC00](v25, v26);
  v34 = &v43[-1] - v33;
  v35 = &v43[-1] - v33;
  if (v36 < a2)
  {
    v35 = malloc_type_malloc(a3 * a2, 0x71EB4E16uLL);
  }

  if (__CFADD__(v35, v11))
  {
    v17 = CFLog(3, @"Unable to mergesort array - list: %lu count: %ld elementSize: %ld - array store overflows", v27, v28, v29, v30, v31, v32, a1);
    v40 = &unk_1EA849000;
    v41 = "merge sort - overflow array storage";
    goto LABEL_23;
  }

  v37 = 0;
  v38 = v35;
  do
  {
    if (a3 == 8)
    {
      *&v35[8 * v37] = a1[*&v16[8 * v37]];
    }

    else
    {
      memmove(v38, a1 + *&v16[8 * v37] * a3, a3);
    }

    ++v37;
    v38 += a3;
  }

  while (a2 != v37);
  memmove(a1, v35, a3 * a2);
  if (v34 != v35)
  {
    free(v35);
  }

  if (v42 != v16)
  {
    free(v16);
  }

LABEL_19:
  v39 = *MEMORY[0x1E69E9840];
}

CFMutableDataRef CFDataCreateMutable(CFAllocatorRef allocator, CFIndex capacity)
{
  if (capacity)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  return __CFDataInit(allocator, v3, capacity, 0, 0, 0);
}

void __CFDataGrow(unint64_t *cf, int64_t a2, int a3)
{
  v3 = cf[2];
  v4 = v3 + a2;
  if ((v3 + a2) >> 42)
  {
    __CFDataHandleOutOfMemory(v3 + a2);
  }

  if (v4 >= 0x10)
  {
    if (v4 >> 20)
    {
      if (HIDWORD(v4))
      {
        v10 = flsl(0x20000000);
        if ((v4 >> (v10 - 1) << 29) + 0x20000000 >= 0x3FFFFFFFFFFLL)
        {
          v8 = 0x3FFFFFFFFFFLL;
        }

        else
        {
          v8 = (v4 >> (v10 - 1) << 29) + 0x20000000;
        }
      }

      else
      {
        v8 = 1 << flsl(v3 + a2);
      }
    }

    else
    {
      v9 = flsl(v3 + a2);
      v8 = 1 << ((v9 & 1u) + v9);
    }
  }

  else
  {
    v8 = 16;
  }

  v11 = CFGetAllocator(cf);
  v12 = cf[5];
  if (!a3 || (v13 = atomic_load(cf + 1), v8 <= 0x20000) || (v13 & 8) != 0 || (v14 = atomic_load(cf + 1), (v14 & 8) != 0) || v3 && v4 / v3 < 5 || (v15 = __CFDataAllocate(cf, v8, 1)) == 0)
  {
    v18 = atomic_load(cf + 1);
    if ((v18 & 8) != 0)
    {
      v19 = __CFSafelyReallocateWithAllocatorTyped(v11, v12, v8, 0x100004077774924, 0, 0);
    }

    else
    {
      v19 = __CFSafelyReallocateTyped(v12, v8, 0x100004077774924, 0);
    }

    v16 = v19;
    if (!v19)
    {
      __CFDataHandleOutOfMemory(v8);
    }

    v17 = 64;
    if (a2 >= 1 && a3)
    {
      bzero((v19 + v3), a2);
      v17 = 64;
    }
  }

  else
  {
    v16 = v15;
    memmove(v15, v12, v3);
    __CFDataDeallocate(cf);
    v17 = 0;
  }

  cf[3] = v8;
  v20 = atomic_load(cf + 1);
  v21 = v20;
  do
  {
    atomic_compare_exchange_strong(cf + 1, &v21, v20 & 0xFFFFFFFFFFFFFFBFLL | v17);
    v22 = v21 == v20;
    v20 = v21;
  }

  while (!v22);
  cf[5] = v16;
  if (__CFOASafe == 1)
  {

    __CFSetLastAllocationEventName();
  }
}

void CFDataSetLength(CFMutableDataRef theData, CFIndex length)
{
  if (CF_IS_OBJC(0x14uLL, theData))
  {

    [(__CFData *)theData setLength:length];
  }

  else
  {
    v4 = *(theData + 2);
    v5 = atomic_load(theData + 1);
    v6 = atomic_load(theData + 1);
    if (v6)
    {
      if (length < 0)
      {
        if ((v5 & 2) == 0)
        {
          __break(1u);
        }

        __CFDataHandleOutOfMemory(length);
      }

      if (*(theData + 3) >= length)
      {
        if (length > v4 && (v7 = atomic_load(theData + 1), (v7 & 0x40) != 0))
        {
          v11 = atomic_load(theData + 1);
          if ((v11 & 4) != 0)
          {
            v12 = (theData + 63) & 0xFFFFFFFFFFFFFFF0;
          }

          else
          {
            v12 = *(theData + 5);
          }

          bzero((v12 + v4), length - v4);
        }

        else if (length < v4)
        {
          v8 = atomic_load(theData + 1);
          v9 = v8;
          do
          {
            atomic_compare_exchange_strong(theData + 1, &v9, v8 | 0x40);
            v10 = v9 == v8;
            v8 = v9;
          }

          while (!v10);
        }
      }

      else
      {
        if ((v5 & 2) == 0)
        {
          CFDataSetLength_cold_1();
        }

        __CFDataGrow(theData, length - v4, 1);
      }
    }

    *(theData + 2) = length;
  }
}

void CFDataIncreaseLength(CFMutableDataRef theData, CFIndex extraLength)
{
  if (CF_IS_OBJC(0x14uLL, theData))
  {

    [(__CFData *)theData increaseLengthBy:extraLength];
  }

  else if (extraLength < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(theData + 2) + extraLength;

    CFDataSetLength(theData, v4);
  }
}

void CFDataAppendBytes(CFMutableDataRef theData, const UInt8 *bytes, CFIndex length)
{
  if (CF_IS_OBJC(0x14uLL, theData))
  {

    [(__CFData *)theData appendBytes:bytes length:length];
  }

  else
  {
    v6.location = *(theData + 2);
    v6.length = 0;

    CFDataReplaceBytes(theData, v6, bytes, length);
  }
}

void *__CFDataAllocate(uint64_t a1, size_t size, int a3)
{
  v5 = atomic_load((a1 + 8));
  if ((v5 & 8) != 0)
  {
    if (a1 < 0)
    {
      v7 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v8 = atomic_load((a1 + 8));
      if (v8 < 0)
      {
        v7 = &kCFAllocatorSystemDefault;
      }

      else
      {
        v7 = (a1 - 16);
      }
    }

    Typed = CFAllocatorAllocateTyped(*v7, size, 1485886704, 0);
    v10 = Typed;
    if (a3)
    {
      bzero(Typed, size);
    }

    return v10;
  }

  else if (a3)
  {

    return malloc_type_calloc(1uLL, size, 0xE0159386uLL);
  }

  else
  {

    return malloc_type_malloc(size, 0x4E71426AuLL);
  }
}

void _CFArraySetCapacity(unint64_t a1, uint64_t a2)
{
  if (!CF_IS_OBJC(0x13uLL, a1))
  {
    v4 = atomic_load((a1 + 8));
    if ((v4 & 3) == 2)
    {
      v5 = *(a1 + 40);
      if (a2 < 4)
      {
        v6 = 4;
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_12;
        }

LABEL_8:
        v7 = atomic_load((a1 + 8));
        if (v7 < 0)
        {
          v8 = &kCFAllocatorSystemDefault;
        }

        else
        {
          v8 = (a1 - 16);
        }

LABEL_13:
        v9 = 8 * v6;
        v10 = *v8;
        if (v5)
        {
          v11 = v5[1];
          Typed = CFAllocatorAllocateTyped(*v8, v9 + 16, 0x1000040451B5BE8, 0);
          if (Typed)
          {
            v13 = Typed;
            memmove(Typed, v5, 8 * v11 + 16);
            CFAllocatorDeallocate(v10, v5);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

LABEL_21:
            v13[1] = v6;
            *(a1 + 40) = v13;
            return;
          }
        }

        else
        {
          v14 = CFAllocatorAllocateTyped(*v8, v9 + 16, 0x1000040451B5BE8, 0);
          if (v14)
          {
            v13 = v14;
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            *v13 = v6 / 2;
            goto LABEL_21;
          }
        }

        __CFArrayHandleOutOfMemory(v9 + 16);
      }

      if (flsl(a2) > 0x3E)
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v6 = 1 << flsl(a2);
        if ((a1 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }
      }

LABEL_12:
      v8 = &kCFAllocatorSystemDefault;
      goto LABEL_13;
    }
  }
}

void _CFSetSetCapacity(unint64_t a1, uint64_t a2)
{
  if (!CF_IS_OBJC(0x11uLL, a1))
  {

    CFBasicHashSetCapacity(a1, a2);
  }
}

uint64_t _CFKeyedArchiverUIDCreate(__objc2_class **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _CFRuntimeCreateInstance(a1, 0x29uLL, 8, 0, a5, a6, a7, a8);
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t _CFKeyedArchiverUIDGetValue(uint64_t a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 41)
  {
    _CFAssertMismatchedTypeID(0x29uLL, v2);
  }

  return *(a1 + 16);
}

uint64_t __CFBinaryPlistGetTopLevelInfo(_DWORD *a1, unint64_t a2, _BYTE *a3, unint64_t *a4, uint64_t a5)
{
  v5 = 0;
  if (a1 && a2 >= 0x29)
  {
    if (*a1 != 1768714338 || *(a1 + 3) != 812938089)
    {
      return 0;
    }

    v5 = 0;
    v8 = a1 + a2;
    v9 = vrev64q_s8(*(a1 + a2 - 24));
    if (v9.i64[0] >= 1)
    {
      v10 = bswap64(*(v8 - 1));
      if ((v10 & 0x8000000000000000) == 0)
      {
        v11 = *(v8 - 26);
        v12 = *(v8 - 25);
        v13 = v9.i64[0] > v9.i64[1] && v10 >= 9;
        v14 = v13 && a2 - 32 > v10;
        v15 = !v14 || v11 == 0;
        if (!v15 && v12 != 0)
        {
          v17 = (v9.u64[0] * *(v8 - 26)) >> 64;
          if (!is_mul_ok(v9.u64[0], v11))
          {
            return 0;
          }

          v18 = v9.i64[0] * v11;
          if (!(v9.i64[0] * v11) || v10 + v18 > 0xFFFFFFFFFFFFFFDFLL)
          {
            return 0;
          }

          v19 = v10 <= ~v18 && v10 + v18 + 32 == a2;
          if (!v19 || v12 <= 7 && v9.i64[0] >> (8 * v12) || v11 <= 7 && v10 >> (8 * v11))
          {
            return 0;
          }

          v5 = 0;
          v20 = __CFADD__(v10, a1);
          if (a1 <= 0xFFFFFFFFFFFFFFF7 && !v20)
          {
            if (a1 + v10 > -v18)
            {
              return 0;
            }

            v21 = 0;
            v22 = v8 - 32;
            v23 = *(v8 - 26);
            v24 = (a1 + v10);
            while (1)
            {
              if (v11 > 3)
              {
                if (v11 == 4)
                {
                  v25 = bswap32(*v24);
                }

                else
                {
                  if (v11 != 8)
                  {
LABEL_50:
                    v26 = 0;
                    v25 = 0;
                    do
                    {
                      v25 = *(v24 + v26++) | (v25 << 8);
                    }

                    while (v11 != v26);
                    goto LABEL_55;
                  }

                  v25 = bswap64(*v24);
                }
              }

              else if (v11 == 1)
              {
                v25 = *v24;
              }

              else
              {
                if (v11 != 2)
                {
                  goto LABEL_50;
                }

                v25 = __rev16(*v24);
              }

LABEL_55:
              if (v10 - 1 < v25)
              {
                return 0;
              }

              v24 = (v24 + v11);
              if (++v21 == v9.i64[0])
              {
                v27 = (a1 + v10 + v9.i64[1] * v11);
                if (v11 > 3)
                {
                  if (v11 == 4)
                  {
                    v28 = bswap32(*v27);
                  }

                  else
                  {
                    if (v11 != 8)
                    {
                      goto LABEL_64;
                    }

                    v28 = bswap64(*v27);
                  }
                }

                else
                {
                  if (v11 != 1)
                  {
                    if (v11 == 2)
                    {
                      v28 = __rev16(*v27);
                      goto LABEL_69;
                    }

LABEL_64:
                    v28 = 0;
                    do
                    {
                      v29 = *v27;
                      v27 = (v27 + 1);
                      v28 = v29 | (v28 << 8);
                      --v11;
                    }

                    while (v11);
                    goto LABEL_69;
                  }

                  v28 = *v27;
                }

LABEL_69:
                if (v28 < 8 || v10 <= v28)
                {
                  return 0;
                }

                if (a5)
                {
                  v31 = *v22;
                  *(a5 + 4) = *(v22 + 2);
                  *a5 = v31;
                  *(a5 + 6) = v23;
                  *(a5 + 7) = v12;
                  *(a5 + 8) = v9;
                  *(a5 + 24) = v10;
                }

                if (a4)
                {
                  *a4 = v28;
                }

                if (a3)
                {
                  *a3 = *(a1 + v28);
                }

                return 1;
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

uint64_t _CFIndirectTaggedPointerStringGetContents(uint64_t a1, _WORD *a2)
{
  v2 = *MEMORY[0x1E69E5910];
  v3 = a1 & 0xC000000000000007;
  if (a2)
  {
    if (v3 == 0xC000000000000007)
    {
      v4 = 0;
    }

    else
    {
      v4 = *MEMORY[0x1E69E5910];
    }

    v5 = v4 ^ a1;
    v6 = ~v5;
    v7 = v5 >> 50;
    if ((v6 & 7) != 0)
    {
      v8 = 0x1FFF;
    }

    else
    {
      v8 = 31;
    }

    *a2 = v8 & v7;
  }

  if (v3 == 0xC000000000000007)
  {
    v2 = 0xC000000000000007;
  }

  return ((v2 ^ a1) >> 3) & 0x7FFFFFFFFFFFLL;
}

BOOL __CFToASCII(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    *a3 = a2;
  }

  return a2 < 0x80;
}

unint64_t _CFStringCreateWithBytesNoCopyDisallowROM(__objc2_class **a1, int8x16_t *a2, int64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v8 = 35;
  }

  else
  {
    v8 = 34;
  }

  return __CFStringCreateImmutableFunnel3(a1, a2, a3, a4, v8, a6, 0, a8);
}

CFIndex CFPropertyListWriteToStream(CFPropertyListRef propertyList, CFWriteStreamRef stream, CFPropertyListFormat format, CFStringRef *errorString)
{
  cf[1] = *MEMORY[0x1E69E9840];
  if (errorString)
  {
    *errorString = 0;
  }

  cf[0] = 0;
  if (format != kCFPropertyListBinaryFormat_v1_0 && format != kCFPropertyListXMLFormat_v1_0)
  {
    if (format == kCFPropertyListOpenStepFormat)
    {
      if (errorString)
      {
        v5 = @"Property list format kCFPropertyListOpenStepFormat not supported for writing";
LABEL_15:
        v6 = 0;
        *errorString = CFRetain(v5);
        goto LABEL_17;
      }
    }

    else if (errorString)
    {
      v5 = @"Unknown format option";
      goto LABEL_15;
    }

    v6 = 0;
    goto LABEL_17;
  }

  v6 = CFPropertyListWrite(propertyList, stream, format, 0, cf);
  v7 = cf[0];
  if (errorString && cf[0])
  {
    *errorString = __copyErrorDebugDescription(cf[0]);
    v7 = cf[0];
  }

  if (v7)
  {
    CFRelease(v7);
  }

LABEL_17:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

void CFArrayReplaceValues(CFMutableArrayRef theArray, CFRange range, const void **newValues, CFIndex newCount)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(0x13uLL, theArray))
  {

    [(__CFArray *)theArray replaceObjectsInRange:location withObjects:length count:newValues, newCount];
  }

  else
  {

    _CFArrayReplaceValues(theArray, location, length, newValues, newCount);
  }
}

CFTypeID CFNumberGetTypeID(void)
{
  if (CFNumberGetTypeID_initOnce != -1)
  {
    CFNumberGetTypeID_cold_1();
  }

  return 22;
}

CFDateRef CFDateCreate(CFAllocatorRef allocator, CFAbsoluteTime at)
{
  v3 = [NSDate alloc];

  return [(NSDate *)v3 initWithTimeIntervalSinceReferenceDate:at];
}

uint64_t __createDictionary(void *a1, uint64_t a2, uint64_t a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6[0] = a2;
  result = [a1 initWithObjects:v6 forKeys:&v5 count:1];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFLengthAfterDeletingLastPathComponent(unsigned __int16 *a1, uint64_t a2)
{
  if (a2 >= 2)
  {
    v3 = a2;
    while (1)
    {
      v4 = v3 - 1;
      if (v3 == 1)
      {
        break;
      }

      v5 = a1[v3-- - 2];
      if (v5 == 47)
      {
        result = v4 - 1;
        if (v4 == 1)
        {
          return v4;
        }

        if (a1[1] == 58)
        {
          v7 = *a1;
          if (v7 - 65 >= 0x1A)
          {
            if (v7 >= 0x61 && v4 == 3 && v7 <= 0x7A)
            {
              return v4;
            }
          }

          else if (v4 == 3)
          {
            return v4;
          }
        }

        return result;
      }
    }

    if (a2 != 2 && a1[1] == 58 && (*a1 & 0xFFDFu) - 65 < 0x1A)
    {
      return 2;
    }
  }

  return 0;
}

const __CFURL *_CFBundleCopyResolvedURLForExecutableURL(const __CFURL *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = CFURLCopyAbsoluteURL(a1);
  v2 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  if (!v2)
  {
    goto LABEL_20;
  }

  v3 = v2;
  Length = CFStringGetLength(v2);
  if (Length >= 1026)
  {
    v5 = 1026;
  }

  else
  {
    v5 = Length;
  }

  v22.location = 0;
  v22.length = v5;
  CFStringGetCharacters(v3, v22, buffer);
  PathComponent = _CFLengthAfterDeletingLastPathComponent(buffer, v5);
  if (PathComponent < 1 || PathComponent + 1 >= v5)
  {
    CFRelease(v3);
    goto LABEL_20;
  }

  v8 = PathComponent;
  v9 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, buffer, PathComponent);
  v10 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, &buffer[v8 + 1], v5 + ~v8);
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
    if (!v9)
    {
      if (!v10)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v16 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v9, kCFURLPOSIXPathStyle, 1u);
    if (v16)
    {
      v17 = v16;
      v18 = CFURLCreateWithFileSystemPathRelativeToBase(&__kCFAllocatorSystemDefault, v11, kCFURLPOSIXPathStyle, 0, v16);
      if (v18)
      {
        v19 = v18;
        v13 = CFURLCopyAbsoluteURL(v18);
        CFRelease(v19);
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v17);
    }

    else
    {
      v13 = 0;
    }
  }

  CFRelease(v9);
  if (v11)
  {
LABEL_17:
    CFRelease(v11);
  }

LABEL_18:
  CFRelease(v3);
  if (v13)
  {
    CFRelease(v1);
    v1 = v13;
  }

LABEL_20:
  v14 = *MEMORY[0x1E69E9840];
  return v1;
}

CFDictionaryRef CFBundleCopyInfoDictionaryForURL(CFURLRef url)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  if (_CFIsResourceAtURL(url, &v6))
  {
    if (v6)
    {
      result = _CFBundleCopyInfoDictionaryInDirectory(&__kCFAllocatorSystemDefault, url, 0);
    }

    else
    {
      result = _CFBundleCopyInfoDictionaryInExecutable(url, v2, v3);
    }
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _CFIsResourceAtURL(CFURLRef url, char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v11 = 0;
  v3 = _CFGetFileProperties(&__kCFAllocatorSystemDefault, url, &v12, &v11, 0, 0, 0, 0);
  result = 0;
  if (!v3)
  {
    v5 = v12;
    v6 = v11;
    if (a2)
    {
      if (v12)
      {
        v7 = (v11 & 0xF000) == 0x4000;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      *a2 = v8;
    }

    result = (v6 & 0x124) != 0 && v5 != 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFGetFileProperties(const __CFAllocator *a1, CFURLRef url, char *a3, _DWORD *a4, off_t *a5, CFDateRef *a6, uid_t *a7, __CFArray **a8)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1024))
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_40;
  }

  if (!a3 && !a4 && !a5 && !a6 && !a7 && !a8)
  {
LABEL_39:
    result = 0;
    goto LABEL_40;
  }

  memset(&v23, 0, sizeof(v23));
  v15 = stat(buffer, &v23);
  if (!v15)
  {
    v16 = (v23.st_mode & 0xF000) == 0x4000;
    v17 = 1;
    if (!a3)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (*__error() != 2)
  {
    result = *__error();
    goto LABEL_40;
  }

  v16 = 0;
  v17 = 0;
  if (a3)
  {
LABEL_14:
    *a3 = v17;
  }

LABEL_15:
  if (!a4)
  {
    if (!a5)
    {
      goto LABEL_26;
    }

    if (v15)
    {
      goto LABEL_22;
    }

LABEL_24:
    st_size = v23.st_size;
    goto LABEL_25;
  }

  if (!v15)
  {
    *a4 = v23.st_mode;
    if (!a5)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  *a4 = 0;
  if (a5)
  {
LABEL_22:
    st_size = 0;
LABEL_25:
    *a5 = st_size;
  }

LABEL_26:
  if (!a6)
  {
    if (!a7)
    {
      goto LABEL_36;
    }

    if (v15)
    {
      goto LABEL_32;
    }

LABEL_34:
    st_uid = v23.st_uid;
    goto LABEL_35;
  }

  if (!v15)
  {
    *a6 = CFDateCreate(a1, v23.st_mtimespec.tv_sec - 978307200.0 + v23.st_mtimespec.tv_nsec * 0.000000001);
    if (!a7)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  *a6 = 0;
  if (a7)
  {
LABEL_32:
    st_uid = -1;
LABEL_35:
    *a7 = st_uid;
  }

LABEL_36:
  if (!a8)
  {
    goto LABEL_39;
  }

  if (v16)
  {
    v21 = _CFCreateContentsOfDirectory(a1, buffer);
    result = 0;
    *a8 = v21;
  }

  else
  {
    result = 0;
    *a8 = 0;
  }

LABEL_40:
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableDictionaryRef _CFBundleCopyInfoDictionaryInExecutable(const __CFURL *a1, double a2, int8x8_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  _CFBundleGrokFileType(a1, 0, 0, 0, 0, v5, 0, 0, a2, a3, 0);
  result = v5[0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _CFBundleGrokFileType(const __CFURL *a1, const __CFData *a2, CFStringRef *a3, int *a4, const __CFArray **a5, CFMutableDictionaryRef *a6, char *a7, _DWORD *a8, double a9, int8x8_t a10, _DWORD *a11)
{
  v145 = *MEMORY[0x1E69E9840];
  v141 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a11)
  {
    *a11 = 0;
  }

  if (!a1)
  {
    goto LABEL_18;
  }

  v18 = CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1026);
  a9 = 0.0;
  memset(&valuePtr, 0, sizeof(valuePtr));
  if (v18)
  {
    if (!stat(buffer, &valuePtr) && (valuePtr.st_mode & 0xF000) == 0x8000)
    {
      v19 = open(buffer, 0, 511);
      v138 = v19;
      if ((v19 & 0x80000000) == 0)
      {
        v20 = v144;
        v21 = read(v19, v144, 0x200uLL);
        v137 = 0;
        st_size = valuePtr.st_size;
        if (!a2)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      st_size = 0;
      v21 = 0;
      v20 = 0;
LABEL_19:
      v137 = 1;
      if (!a2)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }

LABEL_18:
    st_size = 0;
    v21 = 0;
    v20 = 0;
    v138 = -1;
    goto LABEL_19;
  }

  st_size = 0;
  v21 = 0;
  v20 = 0;
  v137 = 1;
  v138 = -1;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v137)
  {
    Length = CFDataGetLength(a2);
    v23 = a2;
    v24 = Length;
    BytePtr = CFDataGetBytePtr(v23);
    v20 = BytePtr;
    if (!v24)
    {
      v33 = 0;
      v30 = "txt";
      if (BytePtr)
      {
        v140 = 0;
        st_size = 0;
        v34 = v138;
        goto LABEL_524;
      }

LABEL_44:
      v34 = v138;
      goto LABEL_45;
    }

    st_size = v24;
    v21 = v24;
  }

LABEL_25:
  if (!v20)
  {
    v33 = 0;
    v30 = 0;
    goto LABEL_44;
  }

  v135 = (v20 + 257);
  v139 = v20;
  v140 = v21;
  if (v21 < 4)
  {
    v33 = 0;
    goto LABEL_49;
  }

  v26 = v20;
  v27 = a3;
  v28 = 0;
  v29 = *v26;
  v30 = &__CFBundleMagicNumbersArray[62] + 3;
  v31 = bswap32(*v26);
  do
  {
    v32 = __CFBundleMagicNumbersArray[v28];
    v30 += 5;
    if (v32 == v31)
    {
      break;
    }

    v106 = v28++ >= 0x3F;
  }

  while (!v106);
  if (v32 != v31)
  {
    v33 = 0;
    v30 = 0;
    a3 = v27;
    v34 = v138;
    goto LABEL_33;
  }

  if (v29 == -1095041334 && v21 >= 8 && *(v139 + 2))
  {
    v33 = 0;
    v30 = "class";
    a3 = v27;
    v34 = v138;
LABEL_63:
    v20 = v139;
    goto LABEL_225;
  }

  if (v21 < 32)
  {
    goto LABEL_238;
  }

  if (v27)
  {
    v42 = &v141;
  }

  else
  {
    v42 = 0;
  }

  *buffer = 0;
  if (v27)
  {
    v141 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a11)
  {
    *a11 = 0;
  }

  valuePtr.st_dev = 0;
  if (v29 > -17958195)
  {
    if (v29 > 561606473)
    {
      if (v29 == 561606474 || v29 == 1248819489)
      {
        v30 = "pef";
        v33 = 4096;
        a3 = v27;
        v34 = v138;
        goto LABEL_523;
      }

      goto LABEL_238;
    }

    if (v29 != -17958194)
    {
      if (v29 != -17958193)
      {
        goto LABEL_238;
      }

      v129 = -17958193;
      v134 = v139[3];
      valuePtr.st_dev = v139[1];
      if (a5)
      {
        v128 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberSInt32Type, &valuePtr);
        *buffer = v128;
      }

      else
      {
        v128 = 0;
      }

      if (v27 && v134 == 2)
      {
        v141 = _CFBundleGrokX11FromFile(v138, v139, v140, 0, 0, 1);
      }

      if (a6)
      {
        *a6 = _CFBundleCreateInfoDictFromFile(v138, v139, v140, 0, 0, 1);
      }

      if (a7 || a8 || a11)
      {
        v127 = a11;
        v111 = v138;
        v112 = v139;
        v113 = v140;
        v114 = 0;
LABEL_499:
        v115 = 1;
        goto LABEL_500;
      }

LABEL_501:
      v33 = v134;
      v116 = v128;
      if (a5 && v128)
      {
        *a5 = CFArrayCreate(&__kCFAllocatorSystemDefault, buffer, 1, &kCFTypeArrayCallBacks);
        v116 = *buffer;
      }

      if (v116)
      {
        CFRelease(v116);
      }

      goto LABEL_506;
    }

    v129 = -17958194;
    v134 = v139[3];
    valuePtr.st_dev = v139[1];
    if (a5)
    {
      v128 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberSInt32Type, &valuePtr);
      *buffer = v128;
    }

    else
    {
      v128 = 0;
    }

    if (v27 && v134 == 2)
    {
      v141 = _CFBundleGrokX11FromFile(v138, v139, v140, 0, 0, 0);
    }

    if (a6)
    {
      *a6 = _CFBundleCreateInfoDictFromFile(v138, v139, v140, 0, 0, 0);
    }

    if (!a7 && !a8 && !a11)
    {
      goto LABEL_501;
    }

    v127 = a11;
    v111 = v138;
    v112 = v139;
    v113 = v140;
    v114 = 0;
LABEL_478:
    v115 = 0;
LABEL_500:
    _CFBundleGrokObjcImageInfoFromFile(v111, v112, v113, 0, v114, v115, a7, a8, a9, a10, v127);
    goto LABEL_501;
  }

  if (v29 > -822415875)
  {
    if (v29 != -822415874)
    {
      if (v29 != -805638658)
      {
        goto LABEL_238;
      }

      v129 = -805638658;
      v132 = a4;
      v72 = v139[3];
      valuePtr.st_dev = bswap32(v139[1]);
      if (a5)
      {
        v128 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberSInt32Type, &valuePtr);
        *buffer = v128;
      }

      else
      {
        v128 = 0;
      }

      if (v27 && v72 == 0x2000000)
      {
        v141 = _CFBundleGrokX11FromFile(v138, v139, v140, 0, 1, 1);
      }

      v134 = bswap32(v72);
      if (a6)
      {
        *a6 = _CFBundleCreateInfoDictFromFile(v138, v139, v140, 0, 1, 1);
      }

      a4 = v132;
      if (a7 || a8 || a11)
      {
        v127 = a11;
        v111 = v138;
        v112 = v139;
        v113 = v140;
        v114 = 1;
        goto LABEL_499;
      }

      goto LABEL_501;
    }

    v129 = -822415874;
    v133 = a4;
    v81 = v139[3];
    valuePtr.st_dev = bswap32(v139[1]);
    if (a5)
    {
      v128 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberSInt32Type, &valuePtr);
      *buffer = v128;
    }

    else
    {
      v128 = 0;
    }

    if (v27 && v81 == 0x2000000)
    {
      v141 = _CFBundleGrokX11FromFile(v138, v139, v140, 0, 1, 0);
    }

    v134 = bswap32(v81);
    if (a6)
    {
      *a6 = _CFBundleCreateInfoDictFromFile(v138, v139, v140, 0, 1, 0);
    }

    a4 = v133;
    if (!a7 && !a8 && !a11)
    {
      goto LABEL_501;
    }

    v127 = a11;
    v111 = v138;
    v112 = v139;
    v113 = v140;
    v114 = 1;
    goto LABEL_478;
  }

  if (v29 == -1095041334)
  {
    v129 = -1095041334;
    v43 = _CFBundleGrokMachTypeForFatFile(v138, v139, v21, 1, v42, a5, a6, a7, a8, a11);
    goto LABEL_330;
  }

  if (v29 != -889275714)
  {
LABEL_238:
    v33 = 0;
    v34 = v138;
    goto LABEL_239;
  }

  v129 = -889275714;
  v43 = _CFBundleGrokMachTypeForFatFile(v138, v139, v21, 0, v42, a5, a6, a7, a8, a11);
LABEL_330:
  v33 = v43;
LABEL_506:
  if (v33 > 5)
  {
    v34 = v138;
    v29 = v129;
    switch(v33)
    {
      case 6:
        v30 = "dylib";
        goto LABEL_522;
      case 8:
        v30 = "bundle";
        goto LABEL_522;
      case 4096:
        v30 = "pef";
        goto LABEL_522;
    }
  }

  else
  {
    v34 = v138;
    v29 = v129;
    switch(v33)
    {
      case 1:
        v30 = "o";
        goto LABEL_522;
      case 2:
        if (v141)
        {
          v30 = "x11app";
        }

        else
        {
          v30 = "tool";
        }

        goto LABEL_522;
      case 4:
        v30 = "core";
LABEL_522:
        a3 = v27;
        goto LABEL_523;
    }
  }

  v21 = v140;
LABEL_239:
  if (v31 <= 1112493394)
  {
    if (v31 > 626017349)
    {
      if (v31 > 808923190)
      {
        switch(v31)
        {
          case 808923191:
            if (v21 < 6)
            {
              goto LABEL_444;
            }

            v80 = v139;
            a3 = v27;
            if (*(v139 + 4) != 48)
            {
              goto LABEL_545;
            }

            break;
          case 1031365221:
            a3 = v27;
            if (v21 < 12 || v139[1] != 544106855)
            {
              goto LABEL_545;
            }

            v73 = v139[2];
            if (v73 == 1701734764)
            {
              goto LABEL_63;
            }

            v74 = 1953653104;
            goto LABEL_421;
          case 1094922544:
            a3 = v27;
            if (v21 < 6)
            {
              goto LABEL_545;
            }

            v80 = v139;
            if (*(v139 + 4) != 49)
            {
              goto LABEL_545;
            }

            break;
          default:
            goto LABEL_445;
        }

        if (*(v80 + 5) - 48 < 0xA)
        {
          goto LABEL_63;
        }

        goto LABEL_545;
      }

      switch(v31)
      {
        case 626017350:
          if (v21 >= 6)
          {
            v109 = *(v139 + 4) == 45;
            goto LABEL_544;
          }

          goto LABEL_444;
        case 675567430:
          a3 = v27;
          if (v21 < 6)
          {
            goto LABEL_545;
          }

          v73 = *(v139 + 2);
          v74 = 22048;
          break;
        case 807842421:
          a3 = v27;
          if (v21 < 8)
          {
            goto LABEL_545;
          }

          v73 = v139[1];
          v74 = 298804878;
          break;
        default:
          goto LABEL_445;
      }
    }

    else
    {
      if (v31 < 0x10000)
      {
        if (v31 != -1991225785)
        {
          if (v31 == -791735840)
          {
            a3 = v27;
            if (v21 >= 52)
            {
              v20 = v139;
              v30 = _CFBundleGrokFileTypeForOLEFile(v34, v139, v21, (v139[12] << 9) + 512);
              goto LABEL_524;
            }

            goto LABEL_63;
          }

          if (v31 == 12)
          {
            a3 = v27;
            if (v21 < 6)
            {
              goto LABEL_545;
            }

            v73 = *(v139 + 2);
            v74 = 20586;
            goto LABEL_421;
          }

LABEL_445:
          a3 = v27;
          goto LABEL_63;
        }

        if (v21 >= 8)
        {
          v107 = v139[1];
          v108 = 169478669;
LABEL_543:
          v109 = v107 == v108;
LABEL_544:
          a3 = v27;
          if (v109)
          {
            goto LABEL_63;
          }

          goto LABEL_545;
        }

        goto LABEL_444;
      }

      if (v31 == 0x10000)
      {
        if (v21 >= 6)
        {
          a3 = v27;
          if (!*(v139 + 4))
          {
            goto LABEL_63;
          }

          goto LABEL_545;
        }

        goto LABEL_444;
      }

      if (v31 != 592859725)
      {
        if (v31 != 622940243)
        {
          goto LABEL_445;
        }

        a3 = v27;
        if (v21 < 11)
        {
          goto LABEL_545;
        }

        v78 = v29;
        if (strncmp(v139 + 4, "-Adobe-", 7uLL))
        {
          v21 = v140;
          if (v140 < 0xE)
          {
            v30 = 0;
          }

          else
          {
            if (!strncmp(v139 + 4, "-AdobeFont", 0xAuLL))
            {
              v30 = "pfa";
              goto LABEL_523;
            }

            v30 = 0;
            v21 = v140;
          }

          v29 = v78;
          goto LABEL_33;
        }

        v30 = "ps";
LABEL_523:
        v20 = v139;
        goto LABEL_524;
      }

      a3 = v27;
      if (v21 < 6)
      {
        goto LABEL_545;
      }

      v73 = *(v139 + 2);
      v74 = 8268;
    }

LABEL_421:
    if (v73 == v74)
    {
      goto LABEL_63;
    }

LABEL_545:
    v30 = 0;
    goto LABEL_33;
  }

  if (v31 <= 1400141157)
  {
    if (v31 > 1230262091)
    {
      if (v31 == 1230262092)
      {
        if (v21 >= 8)
        {
          v107 = v139[1];
          v108 = 1397511241;
          goto LABEL_543;
        }

        goto LABEL_444;
      }

      if (v31 == 1347093252)
      {
        v30 = _CFBundleGrokFileTypeForZipFile(v34, v139, v21, st_size);
        a3 = v27;
        v20 = v139;
        goto LABEL_524;
      }

      if (v31 != 1380533830)
      {
        goto LABEL_445;
      }

      a3 = v27;
      if (v21 < 12)
      {
        goto LABEL_545;
      }

      v79 = bswap32(v139[2]);
      if (v79 == 1096173856)
      {
        v30 = "avi";
        goto LABEL_523;
      }

      if (v79 == 1463899717)
      {
        v30 = "wav";
        goto LABEL_523;
      }
    }

    else
    {
      if (v31 == 1112493395)
      {
        if (v21 >= 8)
        {
          v107 = v139[1];
          v108 = 1701998452;
          goto LABEL_543;
        }

LABEL_444:
        v30 = 0;
        a3 = v27;
        goto LABEL_33;
      }

      if (v31 != 1179603533)
      {
        if (v31 != 1195984440)
        {
          goto LABEL_445;
        }

        a3 = v27;
        if (v21 < 6)
        {
          goto LABEL_545;
        }

        v73 = *(v139 + 2);
        if (v73 == 24887)
        {
          goto LABEL_63;
        }

        v74 = 24889;
        goto LABEL_421;
      }

      a3 = v27;
      if (v21 < 12)
      {
        goto LABEL_545;
      }

      v91 = bswap32(v139[2]);
      if (v91 == 4278598)
      {
        v30 = "aifc";
        goto LABEL_523;
      }

      if (v91 == 1095321158)
      {
        v30 = "aiff";
        goto LABEL_523;
      }
    }

    v30 = 0;
    v21 = v140;
    goto LABEL_33;
  }

  if (v31 > 1734962543)
  {
    if (v31 != 1734962544)
    {
      if (v31 == 1920231012)
      {
        a3 = v27;
        if (v21 >= 8 && !v139[1])
        {
          goto LABEL_63;
        }

        goto LABEL_545;
      }

      if (v31 == 2069656180)
      {
        a3 = v27;
        if (v21 >= 6 && *(v139 + 4) == 102)
        {
          goto LABEL_63;
        }

        goto LABEL_545;
      }

      goto LABEL_445;
    }

    if (v21 >= 8)
    {
      v107 = v139[1];
      v108 = 1717794848;
      goto LABEL_543;
    }

    goto LABEL_444;
  }

  if (v31 == 1400141158)
  {
    if (v21 >= 8)
    {
      v107 = v139[1];
      v108 = 544491878;
      goto LABEL_543;
    }

    goto LABEL_444;
  }

  if (v31 != 1650812777)
  {
    if (v31 != 1667327590)
    {
      goto LABEL_445;
    }

    a3 = v27;
    if (v21 < 12 || *(v139 + 4))
    {
      goto LABEL_545;
    }

    v73 = v139[2];
    v74 = 1668506980;
    goto LABEL_421;
  }

  a3 = v27;
  if (v21 < 76 || *(v139 + 4) != 110 || *(v139 + 5) != 32 || *(v139 + 6) - 48 > 9 || *(v139 + 7) - 48 > 9)
  {
    goto LABEL_545;
  }

  v92 = v29;
  v93 = a4;
  if (*(v139 + 8) - 48 > 9 || *(v139 + 9) != 32)
  {
    goto LABEL_589;
  }

  v94 = 0;
  do
  {
    v95 = *(v139 + v94 + 10);
    v96 = v94 + 11;
    ++v94;
  }

  while (v95 != 10 && v96 < v140);
  v98 = v94 + 9;
  v99 = v95 == 10 ? v98 : 0;
  if (v99 >= 0xA && (v100 = v99 + 62, (v99 + 62) < v140) && *(v139 + v99 + 1) == 77 && *(v139 + v100) == 10)
  {
    v101 = v139 + 1;
    v102 = MEMORY[0x1E69E9830];
    do
    {
      v103 = v101[v99];
      if (v103 < 0)
      {
        v104 = __maskrune(v101[v99], 0x40000uLL);
      }

      else
      {
        v104 = *(v102 + 4 * v103 + 60) & 0x40000;
      }

      v105 = v99 + 2;
      ++v99;
      if (v104)
      {
        v106 = v105 >= v100;
      }

      else
      {
        v106 = 1;
      }
    }

    while (!v106);
    if (v104)
    {
      v30 = "uu";
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
LABEL_589:
    v30 = 0;
  }

  a4 = v93;
  a3 = v27;
  v34 = v138;
  v21 = v140;
  v29 = v92;
LABEL_33:
  if (!a3 || v30)
  {
    v20 = v139;
    goto LABEL_86;
  }

  v35 = *v139;
  if (v21 == 4)
  {
    goto LABEL_183;
  }

  v36 = v35 >> 8;
  if (*(v139 + 3) || *(v139 + 4))
  {
    goto LABEL_38;
  }

  if (v36)
  {
    if (v36 == 1 && (*(v139 + 2) & 0xF7) == 1)
    {
      goto LABEL_456;
    }
  }

  else if ((*(v139 + 2) & 0xF6) == 2)
  {
LABEL_456:
    v30 = "tga";
    goto LABEL_457;
  }

LABEL_38:
  if (v21 < 8)
  {
LABEL_183:
    v67 = 0;
    v68 = 0;
    goto LABEL_184;
  }

  v37 = v139[1];
  v30 = "mov";
  if (v37 <= 1952539752)
  {
    if (v37 == 1329745730)
    {
      v30 = "cwk";
      goto LABEL_457;
    }

    if (v37 != 1668506729)
    {
      v38 = 1701079415;
      goto LABEL_271;
    }

LABEL_328:
    v30 = "qtif";
    goto LABEL_457;
  }

  if (v37 == 1952539753)
  {
    goto LABEL_328;
  }

  if (v37 == 1952539757)
  {
    goto LABEL_457;
  }

  v38 = 1987014509;
LABEL_271:
  if (v37 == v38)
  {
    goto LABEL_457;
  }

  if (v29 == 1768714338 && v139[1] == 29811 && (HIWORD(v37) & 0xFE) - 48 <= 9u && HIBYTE(v37) - 48 <= 9u)
  {
    v30 = "plist";
    if (v21 >= 0x18)
    {
      v75 = 8;
      v20 = v139;
      do
      {
        v76 = strncmp(v139 + v75, "WebMainResource", 0xFuLL);
        if (!v76)
        {
          break;
        }

        if (v75 > 0x7E)
        {
          break;
        }

        v77 = v75 + 17;
        ++v75;
      }

      while (v77 <= v140);
      if (!v76)
      {
        v30 = "webarchive";
      }

LABEL_524:
      if (!a3)
      {
        goto LABEL_52;
      }

      goto LABEL_525;
    }

LABEL_457:
    v20 = v139;
    goto LABEL_525;
  }

  v67 = v21 > 0xB;
  if (*v139 || v21 < 0xC)
  {
    if (v35 == 19778 && v21 >= 0x12)
    {
      v20 = v139;
      v119 = *(v139 + 14);
      v30 = "bmp";
      if ((v119 - 12) <= 0x34 && ((1 << (v119 - 12)) & 0x10000010000001) != 0 || v119 == 108 || v119 == 124)
      {
        goto LABEL_525;
      }

      goto LABEL_49;
    }
  }

  else if (v37 == 1887007846)
  {
    v110 = bswap32(v139[2]);
    if (v110 > 1769172785)
    {
      v30 = "mp4";
      if ((v110 - 1836069937) < 2 || v110 == 1769172786 || v110 == 1769172845)
      {
        goto LABEL_457;
      }
    }

    else if (v110 > 1295275551)
    {
      if ((v110 - 1295275552) <= 0x30 && ((1 << (v110 - 32)) & 0x1010000000001) != 0)
      {
        v30 = "m4v";
        goto LABEL_457;
      }
    }

    else
    {
      switch(v110)
      {
        case 1295270176:
          v30 = "m4a";
          goto LABEL_457;
        case 1295270432:
          v30 = "m4b";
          goto LABEL_457;
        case 1295274016:
          v30 = "m4p";
          goto LABEL_457;
      }
    }

    if (HIWORD(v110) != 13159)
    {
      v30 = 0;
LABEL_602:
      a3 = v27;
      v20 = v139;
LABEL_603:
      v21 = v140;
      goto LABEL_86;
    }

    v120 = v110 & 0xFFFE;
    v30 = "3gp";
    if (v120 != 29494 && (v110 & 0xFDFF) != 0x7036 && v120 != 28724 && v120 != 25910 && v110 != 26422)
    {
      if (v110 == 12897)
      {
        v30 = "3g2";
      }

      else
      {
        v30 = 0;
      }

      goto LABEL_602;
    }

LABEL_586:
    a3 = v27;
    v34 = v138;
    goto LABEL_457;
  }

  if (v21 < 0x14)
  {
    goto LABEL_588;
  }

  if (!strncmp(v139 + 6, "%!PS-AdobeFont", 0xEuLL))
  {
    v30 = "pfb";
    goto LABEL_457;
  }

  v21 = v140;
  if (v140 < 0x28)
  {
    goto LABEL_587;
  }

  if (*(v139 + 34) == 1215195458 && *(v139 + 19) == 30821)
  {
    v30 = "hqx";
    goto LABEL_457;
  }

  if (v140 < 0x80)
  {
LABEL_587:
    v67 = 1;
LABEL_588:
    v68 = 1;
    goto LABEL_184;
  }

  v30 = "bin";
  if (*(v139 + 102) == 1313423981)
  {
    goto LABEL_586;
  }

  if (!*v139 && v36 - 1 <= 0x3E && !*(v139 + 74) && !*(v139 + 82) && (st_size & 0x7F) == 0)
  {
    v121 = bswap32(*(v139 + 83));
    v122 = bswap32(*(v139 + 87));
    v123 = ((v121 + 127) >> 7) + ((v122 + 127) >> 7) + 1;
    if (st_size != v123 << 7 || v123 <= 1 || v122 >= 0x800000 || v121 >= 0x800000)
    {
      v30 = 0;
    }

    a3 = v27;
    v20 = v139;
    goto LABEL_603;
  }

  if (v140 >= 0x109 && *v135 == 1635021685)
  {
    v30 = "tar";
    if (v135[1] == 2105458 || v135[1] == 114)
    {
      goto LABEL_586;
    }
  }

  v67 = 1;
  v68 = 1;
  a3 = v27;
  v34 = v138;
  v21 = v140;
LABEL_184:
  v69 = __rev16(v35);
  v20 = v139;
  if (v69 > 18755)
  {
    if (v69 <= 63233)
    {
      if (v69 == 18756)
      {
        if (*(v139 + 2) == 51 && *(v139 + 3) < 0x20u)
        {
          v30 = "mp3";
          goto LABEL_525;
        }
      }

      else if (v69 == 29127 || v69 == 51057)
      {
        v30 = "cpio";
        goto LABEL_525;
      }

      goto LABEL_371;
    }

    if (v69 > 65495)
    {
      if (v69 == 65496)
      {
        if (*(v139 + 2) == 255)
        {
          v30 = "jpeg";
          goto LABEL_525;
        }

        goto LABEL_371;
      }

      v71 = 65534;
    }

    else
    {
      if (v69 == 63234)
      {
        v30 = "dvi";
        goto LABEL_525;
      }

      v71 = 65279;
    }

    if (v69 != v71)
    {
      goto LABEL_371;
    }

    if (v67)
    {
      if (*v139 == -115712)
      {
        if (v139[1] == 1744860160 && v139[2] == 1828744192)
        {
          goto LABEL_541;
        }
      }

      else if (*v139 == 3997439 && v139[1] == 7602280 && v139[2] == 7077997)
      {
LABEL_541:
        v30 = "html";
        goto LABEL_525;
      }
    }

LABEL_182:
    v30 = "txt";
    goto LABEL_525;
  }

  if (v69 <= 8992)
  {
    switch(v69)
    {
      case 474:
        if (*(v139 + 2) <= 1u && *(v139 + 3) - 1 < 0xF)
        {
          v30 = "sgi";
          goto LABEL_525;
        }

        break;
      case 8075:
        v30 = "gz";
        goto LABEL_525;
      case 8093:
        v30 = "Z";
        goto LABEL_525;
    }

    goto LABEL_371;
  }

  if (v69 > 17238)
  {
    if (v69 == 17239)
    {
      if (*(v139 + 2) == 83)
      {
        v30 = "swc";
        goto LABEL_525;
      }
    }

    else if (v69 == 18007 && *(v139 + 2) == 83)
    {
      v30 = "swf";
      goto LABEL_525;
    }

    goto LABEL_371;
  }

  if (v69 == 8993)
  {
    v82 = 0;
    do
    {
      v83 = *(v139 + v82 + 2);
      v84 = v82 + 3;
      ++v82;
    }

    while (v83 != 10 && v84 < v21);
    v30 = 0;
    if ((v82 + 1) < 4 || v83 != 10)
    {
LABEL_86:
      if (!a3 || v30)
      {
        goto LABEL_224;
      }

      v130 = a3;
      v131 = a4;
      if (*v20 == 239 && *(v20 + 1) == 187)
      {
        v44 = *(v20 + 2);
        v45 = v44 != 191;
        if (v44 == 191)
        {
          v46 = 3;
        }

        else
        {
          v46 = 0;
        }
      }

      else
      {
        v46 = 0;
        v45 = 1;
      }

      if (v21 >= 512)
      {
        v47 = 512;
      }

      else
      {
        v47 = v21;
      }

      v48 = 1;
      v49 = 1;
      v50 = 1;
      while (1)
      {
        if (v46 >= v47)
        {
          a3 = v130;
          a4 = v131;
LABEL_179:
          if (v49)
          {
            if (v21 < 16)
            {
              v30 = "txt";
              v34 = v138;
              goto LABEL_525;
            }

            v34 = v138;
            if (strncmp(v20, "StartFontMetrics", 0x10uLL))
            {
              goto LABEL_182;
            }

            v30 = "afm";
            goto LABEL_224;
          }

          v30 = 0;
          if (v45 && v21 >= 512 && st_size >= 526)
          {
            if (v137)
            {
              if (v21 >= 0x20E)
              {
                v34 = v138;
                if (*(v135 + 265) != -16641792)
                {
                  goto LABEL_228;
                }

                goto LABEL_222;
              }
            }

            else
            {
              v34 = v138;
              if (lseek(v138, 512, 0) == 512 && read(v138, v144, 0x200uLL) >= 14)
              {
                if (*(&v144[2] + 2) != -16641792)
                {
LABEL_227:
                  v21 = v140;
LABEL_228:
                  v30 = 0;
                  if (v21 < 512 || st_size < 512)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_528;
                }

LABEL_222:
                v30 = "pict";
                goto LABEL_525;
              }
            }

            v30 = 0;
          }

LABEL_224:
          v34 = v138;
LABEL_225:
          if (!a3)
          {
            goto LABEL_52;
          }

          if (v30)
          {
            goto LABEL_525;
          }

          goto LABEL_227;
        }

        v51 = v20 + v46;
        v52 = *v51;
        v53 = v46 + 14;
        if (v48 && *v51 == 60 && v53 <= v21)
        {
          v55 = strncasecmp_l(v51 + 1, "!doctype html", 0xDuLL, 0);
          v21 = v140;
          v30 = v55 ? 0 : "html";
        }

        else
        {
          v30 = 0;
        }

        if (v50)
        {
          if (v52 == 60 && v53 <= v21)
          {
            break;
          }
        }

LABEL_154:
        if (v52)
        {
          v45 = 0;
        }

        v20 = v139;
        if (v45 || v52 == 127)
        {
          v49 = 0;
          if (v45)
          {
            goto LABEL_168;
          }
        }

        else
        {
          if (v52 > 31)
          {
            goto LABEL_166;
          }

          if (v52 < 0)
          {
            v65 = __maskrune(v52, 0x4000uLL);
            v21 = v140;
            if (v65)
            {
              goto LABEL_166;
            }
          }

          else if ((*(MEMORY[0x1E69E9830] + 4 * v52 + 60) & 0x4000) != 0)
          {
            goto LABEL_166;
          }

          v49 = 0;
        }

LABEL_166:
        if ((v52 & 0x80000000) == 0)
        {
          if ((*(MEMORY[0x1E69E9830] + 4 * v52 + 60) & 0x4000) != 0)
          {
            goto LABEL_169;
          }

LABEL_168:
          v50 = 0;
          goto LABEL_169;
        }

        v66 = __maskrune(v52, 0x4000uLL);
        v21 = v140;
        if (!v66)
        {
          goto LABEL_168;
        }

LABEL_169:
        v48 = v49 != 0;
        if (v49 | v45)
        {
          ++v46;
          if (!v30)
          {
            continue;
          }
        }

        a3 = v130;
        a4 = v131;
        if (v30)
        {
          goto LABEL_224;
        }

        goto LABEL_179;
      }

      if (!strncasecmp_l(v51 + 1, "!doctype html", 0xDuLL, 0) || !strncasecmp_l(v51 + 1, "head", 4uLL, 0) || !strncasecmp_l(v51 + 1, "title", 5uLL, 0) || !strncasecmp_l(v51 + 1, "script", 6uLL, 0) || !strncasecmp_l(v51 + 1, "html", 4uLL, 0))
      {
        v30 = "html";
LABEL_153:
        v21 = v140;
        goto LABEL_154;
      }

      if (strncasecmp_l(v51 + 1, "?xml", 4uLL, 0))
      {
        goto LABEL_153;
      }

      v57 = v46 + 4;
      v58 = v30 != 0;
      v21 = v140;
      if (v30 || v46 > 123)
      {
LABEL_174:
        if (!v58)
        {
          v30 = "xml";
        }

        v46 = v57;
        goto LABEL_154;
      }

      for (i = v46 + 24; ; i = v61 + 21)
      {
        if (i > v21)
        {
          goto LABEL_174;
        }

        v60 = v139 + v57;
        if (*(v139 + v57) == 60)
        {
          if (!strncasecmp_l(v60 + 1, "abiword", 7uLL, 0))
          {
            v30 = "abw";
            goto LABEL_139;
          }

          if (!strncasecmp_l(v60 + 1, "!doctype svg", 0xCuLL, 0))
          {
            v30 = "svg";
            goto LABEL_139;
          }

          if (!strncasecmp_l(v60 + 1, "!doctype rdf", 0xCuLL, 0))
          {
            v30 = "rdf";
            goto LABEL_139;
          }

          if (!strncasecmp_l(v60 + 1, "!doctype x3d", 0xCuLL, 0))
          {
            v30 = "x3d";
            goto LABEL_139;
          }

          if (!strncasecmp_l(v60 + 1, "!doctype html", 0xDuLL, 0))
          {
            v30 = "html";
            goto LABEL_139;
          }

          if (!strncasecmp_l(v60 + 1, "!doctype posingfont", 0x13uLL, 0))
          {
            v30 = "sfont";
            goto LABEL_139;
          }

          if (strncasecmp_l(v60 + 1, "!doctype plist", 0xEuLL, 0))
          {
            v30 = 0;
LABEL_139:
            v61 = v57;
            v21 = v140;
            goto LABEL_140;
          }

          v61 = v57 + 14;
          v21 = v140;
          if (v57 + 30 <= v140)
          {
            do
            {
              v62 = strncmp(v139 + v61, "WebMainResource", 0xFuLL);
              v21 = v140;
              v63 = v61 + 1;
              if (!v62)
              {
                break;
              }

              if (v61 > 254)
              {
                break;
              }

              v64 = v61 + 17;
              ++v61;
            }

            while (v64 <= v140);
            if (v62)
            {
              v30 = "plist";
            }

            else
            {
              v30 = "webarchive";
            }

            v61 = v63;
          }

          else
          {
            v30 = "plist";
          }
        }

        else
        {
          v30 = 0;
          v61 = v57;
        }

LABEL_140:
        v57 = v61 + 1;
        v58 = v30 != 0;
        if (v30 || v61 > 126)
        {
          goto LABEL_174;
        }
      }
    }

    do
    {
      if (*(v139 + v82) == 47)
      {
        v86 = v82;
      }

      else
      {
        v86 = 0;
      }

      if (v82 + 1 < 4)
      {
        break;
      }

      --v82;
    }

    while (!v86);
    if (v86)
    {
      v87 = v139 + v86;
      if (!strncmp(v139 + v86 + 1, "perl", 4uLL))
      {
        v30 = "pl";
      }

      else if (!strncmp(v87 + 1, "python", 6uLL))
      {
        v30 = "py";
      }

      else if (!strncmp(v87 + 1, "ruby", 4uLL))
      {
        v30 = "rb";
      }

      else
      {
        v30 = "sh";
      }

      goto LABEL_524;
    }

LABEL_49:
    v30 = 0;
    goto LABEL_86;
  }

  if (v69 != 16986)
  {
    goto LABEL_371;
  }

  v70 = *(v139 + 2);
  if ((v70 - 48) <= 9 && *(v139 + 3) - 48 < 0xA)
  {
    v30 = "bz";
    goto LABEL_525;
  }

  if (v70 != 104)
  {
    goto LABEL_371;
  }

  v88 = v68 ^ 1;
  if (*(v139 + 3) - 48 > 9)
  {
    v88 = 1;
  }

  if ((v88 & 1) != 0 || (v89 = v139[1], v30 = "bz2", v89 != 643383601) && v89 != 944075287)
  {
LABEL_371:
    v90 = *(v139 + 1);
    v30 = "tfm";
    if (v90 == 4352 || v90 == 4608)
    {
      goto LABEL_525;
    }

    goto LABEL_49;
  }

LABEL_525:
  if (strcmp(v30, "bz2"))
  {
    goto LABEL_45;
  }

  v21 = v140;
  if (v140 < 512 || st_size <= 511)
  {
    goto LABEL_45;
  }

LABEL_528:
  if (v137)
  {
    v117 = v20 + v21;
    if (*(v20 + v21 - 512) != 2037149547)
    {
      if (*(v117 - 2) != 1634952291)
      {
        goto LABEL_45;
      }

      v118 = *(v117 - 1);
      goto LABEL_537;
    }

    goto LABEL_538;
  }

  if (lseek(v34, st_size - 512, 0) == st_size - 512 && read(v34, v144, 0x200uLL) >= 512)
  {
    if (v144[0] != 2037149547)
    {
      if (v144[126] != 1634952291)
      {
        goto LABEL_45;
      }

      v118 = v144[127];
LABEL_537:
      if (v118 != 1919118949)
      {
        goto LABEL_45;
      }
    }

LABEL_538:
    v30 = "dmg";
  }

LABEL_45:
  if (a3)
  {
    if (v30)
    {
      v39 = CFStringCreateWithCStringNoCopy(&__kCFAllocatorSystemDefault, v30, 0x8000100u, &__kCFAllocatorNull);
    }

    else
    {
      v39 = 0;
    }

    *a3 = v39;
  }

LABEL_52:
  if (a4)
  {
    *a4 = v33;
  }

  if ((v34 & 0x80000000) == 0)
  {
    close(v34);
  }

  result = v30 != 0;
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableDictionaryRef _CFBundleCreateInfoDictFromFile(int a1, UInt8 *a2, unint64_t st_size, int a4, int a5, int a6)
{
  LODWORD(v8) = a4;
  v73 = *MEMORY[0x1E69E9840];
  memset(&v72, 0, sizeof(v72));
  if (a1 < 0 || fstat(a1, &v72))
  {
    v66 = 0;
  }

  else
  {
    v41 = mmap(0, v72.st_size, 1, 8194, a1, 0);
    if (v41 == -1)
    {
      v66 = -1;
    }

    else
    {
      st_size = v72.st_size;
      v66 = v41;
      a2 = v41;
    }
  }

  v8 = v8;
  if (st_size <= v8 + 32)
  {
    goto LABEL_66;
  }

  v12 = &a2[v8];
  v13 = v12[5];
  v14 = bswap32(v12[4]);
  v15 = bswap32(v13);
  if (a5)
  {
    v16 = v15;
  }

  else
  {
    v14 = *&a2[v8 + 16];
    v16 = v13;
  }

  v17 = &a2[st_size];
  v69 = a5;
  v70 = v8;
  v68 = &a2[v8];
  v71 = v14;
  if (!a6)
  {
    v42 = (v12 + 7);
    v43 = v12 + v16 + 28;
    if (v43 <= v17)
    {
      v44 = v43;
    }

    else
    {
      v44 = &a2[st_size];
    }

    if (v14)
    {
      v45 = v42 >= v44;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      goto LABEL_66;
    }

    v48 = 0;
    InfoDictFromData = 0;
    v49 = 28;
    while (1)
    {
      v50 = *v42;
      if (a5)
      {
        break;
      }

      if (v50 == 1)
      {
        v51 = v42[12];
LABEL_75:
        v52 = 0;
        if (v51 && v12 + v49 + 56 < v44)
        {
          v53 = v8 + v49;
          v54 = 1;
          while (1)
          {
            v55 = &a2[v53];
            if (!strncmp(&a2[v53 + 56], "__info_plist", 0x10uLL) && !strncmp(v55 + 72, "__TEXT", 0x10uLL))
            {
              break;
            }

            if (v54 < v51)
            {
              v53 += 68;
              ++v54;
              if ((v55 + 124) < v44)
              {
                continue;
              }
            }

            v52 = 0;
            a5 = v69;
            v8 = v70;
            v12 = v68;
            goto LABEL_97;
          }

          v58 = *&a2[v53 + 92];
          LODWORD(v57) = *&a2[v53 + 96];
          v59 = bswap32(v58);
          v60 = bswap32(v57);
          a5 = v69;
          if (v69)
          {
            v61 = v59;
          }

          else
          {
            v61 = v58;
          }

          if (v69)
          {
            v57 = v60;
          }

          else
          {
            v57 = v57;
          }

          v12 = v68;
          v62 = v68 + v57;
          v63 = v68 + v57 + v61;
          if (a2 <= v62 && v63 <= &a2[st_size])
          {
            InfoDictFromData = _CFBundleCreateInfoDictFromData(v62, v61);
          }

          v52 = 1;
          v8 = v70;
LABEL_97:
          v14 = v71;
        }

        v56 = v42[1];
        if (!a5)
        {
          goto LABEL_100;
        }

        goto LABEL_99;
      }

      v52 = 0;
      v56 = v42[1];
LABEL_100:
      if (!v52 && ++v48 < v14)
      {
        v49 += v56;
        v42 = (v12 + v49);
        if (v49 >= 0x1C && v42 < v44)
        {
          continue;
        }
      }

      goto LABEL_67;
    }

    if (v50 == 0x1000000)
    {
      v51 = bswap32(v42[12]);
      goto LABEL_75;
    }

    v52 = 0;
    v56 = v42[1];
LABEL_99:
    v56 = bswap32(v56);
    goto LABEL_100;
  }

  v18 = (v12 + 8);
  v19 = v12 + v16 + 32;
  if (v19 <= v17)
  {
    v20 = v19;
  }

  else
  {
    v20 = &a2[st_size];
  }

  if (v14)
  {
    v21 = v18 >= v20;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v22 = 0;
    InfoDictFromData = 0;
    v23 = 32;
    while (1)
    {
      v24 = *v18;
      if (a5)
      {
        break;
      }

      if (v24 == 25)
      {
        v25 = v18[16];
        goto LABEL_22;
      }

      v30 = v18[1];
LABEL_36:
      if (++v22 < v14)
      {
        v23 += v30;
        v18 = (v12 + v23);
        if (v23 >= 0x20 && v18 < v20)
        {
          continue;
        }
      }

      goto LABEL_67;
    }

    if (v24 == 419430400)
    {
      v25 = bswap32(v18[16]);
LABEL_22:
      v26 = 0;
      if (v25 && v12 + v23 + 72 < v20)
      {
        v27 = v8 + v23;
        v28 = 1;
        while (1)
        {
          v29 = &a2[v27];
          if (!strncmp(&a2[v27 + 72], "__info_plist", 0x10uLL) && !strncmp(v29 + 88, "__TEXT", 0x10uLL))
          {
            break;
          }

          if (v28 < v25)
          {
            v27 += 80;
            ++v28;
            if ((v29 + 152) < v20)
            {
              continue;
            }
          }

          v26 = 0;
          a5 = v69;
LABEL_30:
          v8 = v70;
          v12 = v68;
          v14 = v71;
          goto LABEL_31;
        }

        v32 = *&a2[v27 + 120];
        v33 = bswap64(*&a2[v27 + 112]);
        v34 = bswap32(v32);
        a5 = v69;
        if (v69)
        {
          v35 = v33;
        }

        else
        {
          v35 = *&a2[v27 + 112];
        }

        if (v69)
        {
          v36 = v34;
        }

        else
        {
          v36 = v32;
        }

        v26 = 1;
        if (HIDWORD(v35))
        {
          goto LABEL_30;
        }

        v12 = v68;
        v37 = v68 + v36;
        v38 = v68 + v36 + v35;
        v39 = a2 > v37 || v38 > &a2[st_size];
        v8 = v70;
        v14 = v71;
        if (!v39)
        {
          v40 = _CFBundleCreateInfoDictFromData(v37, v35);
          v14 = v71;
          InfoDictFromData = v40;
          v26 = 1;
        }
      }

LABEL_31:
      v30 = v18[1];
      if (!a5)
      {
LABEL_35:
        if (v26)
        {
          goto LABEL_67;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v26 = 0;
      v30 = v18[1];
    }

    v30 = bswap32(v30);
    goto LABEL_35;
  }

LABEL_66:
  InfoDictFromData = 0;
LABEL_67:
  if (v66)
  {
    munmap(v66, v72.st_size);
  }

  v46 = *MEMORY[0x1E69E9840];
  return InfoDictFromData;
}

CFURLRef _CFBundleCopyBundleURLForExecutableURL(const __CFURL *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = _CFBundleCopyResolvedURLForExecutableURL(a1);
  v2 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  if (v2)
  {
    v3 = v2;
    Length = CFStringGetLength(v2);
    if (Length >= 1026)
    {
      v5 = 1026;
    }

    else
    {
      v5 = Length;
    }

    v21.location = 0;
    v21.length = v5;
    CFStringGetCharacters(v3, v21, buffer);
    PathComponent = _CFLengthAfterDeletingLastPathComponent(buffer, v5);
    if (PathComponent >= 1)
    {
      v7 = PathComponent;
      v8 = _CFStartOfLastPathComponent(buffer, PathComponent);
      if (v8 < 1 || v7 <= v8)
      {
        goto LABEL_21;
      }

      v10 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, &buffer[v8], v7 - v8);
      PlatformExecutablesSubdirectoryName = _CFBundleGetPlatformExecutablesSubdirectoryName();
      if (!CFEqual(v10, PlatformExecutablesSubdirectoryName))
      {
        CFRelease(v10);
        goto LABEL_21;
      }

      v12 = _CFLengthAfterDeletingLastPathComponent(buffer, v7);
      if (v12 < 1)
      {
LABEL_16:
        v16 = 0;
LABEL_22:
        CFRelease(v10);
LABEL_24:
        CFRelease(v3);
        goto LABEL_25;
      }

      v13 = v12;
      v14 = _CFStartOfLastPathComponent(buffer, v12);
      if (v14 >= 1 && v13 > v14)
      {
        v15 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, &buffer[v14], v13 - v14);
        if (CFEqual(v15, @"Executables"))
        {
          v13 = _CFLengthAfterDeletingLastPathComponent(buffer, v13);
          CFRelease(v15);
          if (v13 < 1)
          {
            goto LABEL_16;
          }
        }

        else
        {
          CFRelease(v15);
        }
      }

      v7 = _CFLengthAfterDeletingLastPathComponent(buffer, v13);
      CFRelease(v10);
      if (v7 >= 1)
      {
LABEL_21:
        v10 = CFStringCreateWithCharactersNoCopy(&__kCFAllocatorSystemDefault, buffer, v7, &__kCFAllocatorNull);
        v16 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v10, kCFURLPOSIXPathStyle, 1u);
        goto LABEL_22;
      }
    }

    v16 = 0;
    goto LABEL_24;
  }

  v16 = 0;
LABEL_25:
  CFRelease(v1);
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t _CFPrefsWritePlistToFDThenClose(void *a1, int a2, uid_t a3, gid_t a4, mode_t a5, int a6, int a7, const char *a8, uint64_t a9)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a2 < 0)
  {
    v22 = _CFPrefsDaemonLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 67109120;
    v52 = a2;
    _os_log_fault_impl(&dword_1830E6000, v22, OS_LOG_TYPE_FAULT, "Invalid file descriptor %d", buf, 8u);
LABEL_15:
    if (!buf[0])
    {
LABEL_17:
      v21 = 22;
      goto LABEL_18;
    }

LABEL_16:
    unlinkat(-2, buf, 2048);
    goto LABEL_17;
  }

  if (!a1)
  {
    v23 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      _CFPrefsWritePlistToFDThenClose_cold_8();
    }

    close(a2);
    goto LABEL_15;
  }

  v17 = [a1 length];
  v18 = [a1 bytes];
  if (fcntl(a2, 50, buf) < 0)
  {
    v21 = *__error();
    v26 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      _CFPrefsWritePlistToFDThenClose_cold_7();
    }

    goto LABEL_21;
  }

  v19 = atomic_load(&dword_1EA84A4FC);
  if (v19 == 2)
  {
    v20 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      _CFPrefsWritePlistToFDThenClose_cold_6();
    }

    close(a2);
    if (buf[0])
    {
      unlinkat(-2, buf, 2048);
    }

    v21 = 28;
    goto LABEL_18;
  }

  v44 = a7;
  if (v17)
  {
    v43 = a8;
    v27 = write(a2, v18, v17);
    v28 = v27;
    if (v27 != v17)
    {
      v29 = v27;
      do
      {
        v30 = __error();
        if (v29 == -1)
        {
          if (*v30 != 4 && *v30 != 35)
          {
            v21 = *__error();
            v37 = _CFPrefsDaemonLog();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              _CFPrefsWritePlistToFDThenClose_cold_1();
            }

            goto LABEL_21;
          }
        }

        else
        {
          v18 += v28;
          v17 -= v28;
        }

        v29 = write(a2, v18, v17);
        v28 = v29;
      }

      while (v29 != v17);
    }

    a8 = v43;
    while (fsync(a2) < 0)
    {
      if (*__error() != 4)
      {
        v21 = *__error();
        v31 = _CFPrefsDaemonLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          _CFPrefsWritePlistToFDThenClose_cold_2();
        }

        goto LABEL_21;
      }
    }
  }

  if (byte_1EA84A4F3)
  {
    sleep(1u);
    byte_1EA84A4F3 = 0;
  }

  fchown(a2, a3, a4);
  fchmod(a2, a5);
  v32 = v44;
  if ([a1 validatePlist])
  {
    if (a6)
    {
      LOBYTE(value) = 1;
      v33 = fsetxattr(a2, "com.apple.MobileBackup", &value, 1uLL, 0, 0);
      if (v33)
      {
        v34 = v33;
        v21 = *__error();
        v35 = _CFPrefsDaemonLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
        {
          _CFPrefsWritePlistToFDThenClose_cold_4(buf, v34, v35);
        }

LABEL_21:
        close(a2);
LABEL_22:
        if (buf[0])
        {
          unlinkat(-2, buf, 2048);
        }

        goto LABEL_18;
      }

      v32 = v44;
    }

    close(a2);
    v39 = renameat(-2, buf, v32, a8);
    v21 = *__error();
    v40 = _CFPrefsDaemonLog();
    v41 = v40;
    if (v39)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        value = 136315650;
        v46 = buf;
        v47 = 2080;
        v48 = a9;
        v49 = 1024;
        v50 = v21;
        _os_log_fault_impl(&dword_1830E6000, v41, OS_LOG_TYPE_FAULT, "error renaming file %s to %s (errno: %d).", &value, 0x1Cu);
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v42 = _CFPrefsDaemonLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        _CFPrefsWritePlistToFDThenClose_cold_5();
      }
    }

    v21 = 0;
  }

  else
  {
    v36 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      _CFPrefsWritePlistToFDThenClose_cold_3();
    }

    close(a2);
    if (buf[0])
    {
      unlinkat(-2, buf, 2048);
    }

    v21 = 47837;
  }

LABEL_18:
  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t _CFPropertyListValidateData(const __CFData *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v13, 0, sizeof(v13));
  *v10 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (Length >= 8 && (v6 = Length, __CFDataGetBinaryPlistTopLevelInfo(a1, &v11, v10, v13)))
  {
    cf = 0;
    result = __CFBinaryPlistCreateObjectFiltered(BytePtr, v6, *v10, v13, &__kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, &cf);
    if (a2)
    {
      *a2 = cf;
    }
  }

  else
  {
    cf = 0;
    _CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, a1, 1u, 0, 1, 0, 0, &cf);
    v8 = cf;
    if (cf)
    {
      if (a2)
      {
        *a2 = CFGetTypeID(cf);
      }

      CFRelease(v8);
      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFPrefsDaemonLog()
{
  if (makeLogHandles_logToken != -1)
  {
    _CFPrefsDaemonLog_cold_1();
  }

  return daemonHandle;
}

CFURLRef CFURLCreateCopyDeletingLastPathComponent(CFAllocatorRef allocator, CFURLRef url)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCreateCopyDeletingLastPathComponent_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled != 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, url))
    {
      url = [(__CFURL *)url _cfurl];
    }

    v6 = CFURLIsFileReferenceURL(url);
    if (v6)
    {
      v7 = CFURLCreateFilePathURL(allocator, url, 0);
      if (!v7)
      {
        return 0;
      }

      url = v7;
      v8 = *(v7 + 4);
      if ((v8 & 0x20) == 0)
      {
        CFRelease(v7);
        return 0;
      }
    }

    else
    {
      v8 = *(url + 4);
      if ((v8 & 0x20) == 0)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 32;
    do
    {
      v12 = v11;
      v11 >>= 1;
      v10 += v8 & 1;
      v8 >>= 1;
    }

    while ((v12 & 2) == 0);
    v13 = url + 16 * v10;
    v15 = *(v13 + 7);
    v14 = *(v13 + 8);
    PathComponent = _rangeOfLastPathComponent(url);
    switch(v16)
    {
      case 2:
        v18 = (url + 24);
        v23 = atomic_load(url + 3);
        if (CFStringGetCharacterAtIndex(v23, PathComponent) != 46)
        {
LABEL_29:
          v29 = atomic_load(url + 3);
          MutableCopy = CFStringCreateMutableCopy(allocator, 0, v29);
          goto LABEL_30;
        }

        v24 = atomic_load(v18);
        CharacterAtIndex = CFStringGetCharacterAtIndex(v24, PathComponent + 1);
        break;
      case 1:
        v18 = (url + 24);
        v21 = atomic_load(url + 3);
        CharacterAtIndex = CFStringGetCharacterAtIndex(v21, PathComponent) & 0xFFFE;
        break;
      case 0:
        v18 = (url + 24);
        v19 = atomic_load(url + 3);
        MutableCopy = CFStringCreateMutableCopy(allocator, 0, v19);
        goto LABEL_26;
      default:
        goto LABEL_29;
    }

    v25 = atomic_load(v18);
    MutableCopy = CFStringCreateMutableCopy(allocator, 0, v25);
    if (CharacterAtIndex == 46)
    {
LABEL_26:
      if (v14 <= 0)
      {
        v28 = 0;
        v27 = v14 + v15;
      }

      else
      {
        v26 = atomic_load(v18);
        v27 = v14 + v15;
        if (CFStringGetCharacterAtIndex(v26, v27 - 1) == 47)
        {
          v28 = 0;
        }

        else
        {
          CFStringInsert(MutableCopy, v27, @"/");
          v28 = 1;
        }
      }

      CFStringInsert(MutableCopy, v28 + v27, @"..");
      CFStringInsert(MutableCopy, v28 + v27 + 2, @"/");
      v32 = v28 + 3 + v14;
      if (v32 >= 5)
      {
        v33 = v28 + 3 + v27;
        v34 = v33 - 5;
        if (CFStringGetCharacterAtIndex(MutableCopy, v33 - 5) == 46)
        {
          if (v32 < 8)
          {
            if (v32 == 5)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v34 = v33 - 6;
            if (CFStringGetCharacterAtIndex(MutableCopy, v33 - 6) == 47)
            {
LABEL_40:
              v30 = MutableCopy;
              v31.location = v34;
              v31.length = 2;
LABEL_33:
              CFStringDelete(v30, v31);
            }
          }
        }
      }

LABEL_42:
      v9 = _CFURLCreateWithArbitraryString(allocator, MutableCopy, *(url + 4));
      CFRelease(MutableCopy);
      if (v6)
      {
        CFRelease(url);
      }

      return v9;
    }

LABEL_30:
    if (PathComponent == v15)
    {
      v36.location = v15;
      v36.length = v14;
      CFStringReplace(MutableCopy, v36, @".");
      CFStringInsert(MutableCopy, 1, @"/");
      goto LABEL_42;
    }

    v31.length = v14 + v15 - PathComponent;
    v30 = MutableCopy;
    v31.location = PathComponent;
    goto LABEL_33;
  }

  v4 = [(__CFURL *)url URLByDeletingLastPathComponent];

  return v4;
}

CFURLRef CFBundleCopyPrivateFrameworksURL(CFBundleRef bundle)
{
  __CFCheckCFInfoPACSignature(bundle);
  v2 = _CFGetNonObjCTypeID(bundle);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  v3 = *(bundle + 53);
  v4 = CFGetAllocator(bundle);
  v5 = *(bundle + 2);
  if (v3 <= 11)
  {
    if (v3 == 1)
    {
      v6 = @"Support%20Files/Frameworks/";
      goto LABEL_11;
    }

    if (v3 == 2)
    {
      v6 = @"Contents/Frameworks/";
LABEL_11:

      return CFURLCreateWithString(v4, v6, v5);
    }

LABEL_9:
    v6 = @"Frameworks/";
    goto LABEL_11;
  }

  if (v3 == 12)
  {
    v7 = @"WrappedBundle/Contents/Frameworks/";
  }

  else
  {
    if (v3 != 13)
    {
      goto LABEL_9;
    }

    v7 = @"WrappedBundle/Frameworks/";
  }

  return _CFURLCreateResolvedDirectoryWithString(v4, v7, v5);
}

CFURLRef CFURLCreateWithString(CFAllocatorRef allocator, CFStringRef URLString, CFURLRef baseURL)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCreateWithString_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if (URLString)
    {
      v6 = [NSURL _cfurlWithString:URLString encoding:134217984 relativeToURL:baseURL encodingInvalidCharacters:0 forceBaseURL:0];

      return v6;
    }

    return 0;
  }

  if (!URLString)
  {
    return 0;
  }

  return _CFURLCreateWithURLString(allocator, URLString, 1, baseURL);
}

void _CFAppendTrailingPathSlash2(__CFString *a1)
{
  Length = CFStringGetLength(a1);
  if (Length)
  {
    if (Length == 2)
    {
      if (_hasDrive(a1) || _hasNet(a1))
      {
        return;
      }
    }

    else if (Length == 1 && CFStringGetCharacterAtIndex(a1, 0) == 47)
    {
      return;
    }

    CFStringAppendCharacters(a1, &_CFAppendTrailingPathSlash2_slash, 1);
  }
}

void _CFAppendPathComponent2(__CFString *a1, const __CFString *a2)
{
  _CFAppendTrailingPathSlash2(a1);

  CFStringAppend(a1, a2);
}

void __CFXPCDictionaryApplier(const __CFString *a1, uint64_t a2, xpc_object_t *a3)
{
  if (CFGetTypeID(a1) == 7)
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
          v11 = _CFXPCCreateXPCObjectFromCFObject(a2);
          if (v11)
          {
            v12 = v11;
            xpc_dictionary_set_value(*a3, v10, v11);
            xpc_release(v12);
          }
        }

        free(v10);
      }
    }
  }
}

dispatch_data_t _CFDataCreateDispatchData(void *a1)
{
  v9[5] = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x14uLL, a1))
  {
    v2 = *MEMORY[0x1E69E9840];

    return [a1 _createDispatchData];
  }

  else
  {
    v4 = CFGetAllocator(a1);
    Copy = CFDataCreateCopy(v4, a1);
    BytePtr = CFDataGetBytePtr(Copy);
    if (CF_IS_OBJC(0x14uLL, Copy))
    {
      v7 = [(__CFData *)Copy length];
    }

    else
    {
      v7 = *(Copy + 2);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___CFDataCreateDispatchData_block_invoke;
    v9[3] = &__block_descriptor_40_e5_v8__0l;
    v9[4] = Copy;
    result = dispatch_data_create(BytePtr, v7, 0, v9);
    v8 = *MEMORY[0x1E69E9840];
  }

  return result;
}

CFDataRef CFDataCreateCopy(CFAllocatorRef allocator, CFDataRef theData)
{
  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_31;
  }

  if (CF_IS_OBJC(0x14uLL, theData))
  {

    return [(__CFData *)theData copy];
  }

  v5 = atomic_load(theData + 1);
  if (v5)
  {
    goto LABEL_31;
  }

  ShouldUseAllocator = __CFDataShouldUseAllocator(allocator);
  v7 = 0;
  if (ShouldUseAllocator)
  {
    v8 = allocator;
  }

  else
  {
    v8 = 0;
  }

  v9 = atomic_load(theData + 1);
  if ((v9 & 8) != 0)
  {
    if ((theData & 0x8000000000000000) != 0)
    {
      v10 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v11 = atomic_load(theData + 1);
      if (v11 < 0)
      {
        v10 = &kCFAllocatorSystemDefault;
      }

      else
      {
        v10 = (theData - 16);
      }
    }

    v7 = *v10;
  }

  if (v8 == v7 && ((v14 = atomic_load(theData + 1), (v14 & 4) != 0) || !*(theData + 4)))
  {

    return CFRetain(theData);
  }

  else
  {
LABEL_31:
    if (CF_IS_OBJC(0x14uLL, theData))
    {
      v12 = [(__CFData *)theData length];
    }

    else
    {
      v12 = *(theData + 2);
    }

    BytePtr = CFDataGetBytePtr(theData);

    return __CFDataInit(allocator, 0, v12, BytePtr, v12, 0);
  }
}

const void *_CFBundleGetMappedStringsFile(CFIndex a1)
{
  os_unfair_lock_lock_with_options();
  ValueAtIndex = CFArrayGetValueAtIndex(_mappedStringsFiles, a1);
  os_unfair_lock_unlock(&_mappedStringsFilesLock);
  return ValueAtIndex;
}

CFStringRef CFCopyDescription(CFStringRef cf)
{
  if (!cf)
  {
    return cf;
  }

  v1 = cf;
  if ((cf & 0x8000000000000000) == 0)
  {
    v13 = atomic_load(&cf->info);
    v14 = (v13 >> 8) & 0x3FF;
    goto LABEL_15;
  }

  v2 = 0;
  v3 = MEMORY[0x1E69E5910];
  v4 = *MEMORY[0x1E69E5910];
  v5 = cf & 0xC000000000000007;
  if ((cf & 0xC000000000000007) == 0xC000000000000007)
  {
    v4 = 0;
  }

  v6 = v4 ^ cf;
  v7 = v6 & 7;
  v8 = MEMORY[0x1E69E5900];
  do
  {
    if (v7 == *(MEMORY[0x1E69E5900] + v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != 7);
  v9 = v2 | v6;
  v10 = v2 & 7;
  v11 = (v9 >> 55) + 8;
  if (v10 == 7)
  {
    LODWORD(v10) = v11;
  }

  if (v10)
  {
    if (v10 == 6)
    {
      v12 = off_1EF0677D0;
      goto LABEL_36;
    }

    if (v10 == 3)
    {
      v12 = off_1EF065850;
LABEL_36:

      return v12(cf);
    }
  }

  else
  {
    dyld_program_sdk_at_least();
    v24 = *v3;
    if (v5 == 0xC000000000000007)
    {
      v24 = 0;
    }

    v6 = v24 ^ v1;
    v7 = v6 & 7;
  }

  for (i = 0; i != 7; ++i)
  {
    if (v7 == *(v8 + i))
    {
      break;
    }
  }

  v26 = ((i | v6) >> 55) + 8;
  if ((i & 7) != 7)
  {
    v26 = i & 7;
  }

  if (v26 > 4)
  {
    if (v26 > 19)
    {
      if (v26 != 20)
      {
        if (v26 != 22)
        {
LABEL_76:
          v14 = [(__CFString *)v1 _cfTypeID];
          goto LABEL_15;
        }

LABEL_64:
        v14 = 7;
        goto LABEL_15;
      }
    }

    else if (v26 != 5)
    {
      if (v26 == 6)
      {
        v14 = 42;
        goto LABEL_15;
      }

      goto LABEL_76;
    }

LABEL_65:
    v14 = 1;
    goto LABEL_15;
  }

  if (v26 > 2)
  {
    if (v26 == 3)
    {
      v14 = 22;
      goto LABEL_15;
    }

    goto LABEL_65;
  }

  if (v26)
  {
    if (v26 != 2)
    {
      goto LABEL_76;
    }

    goto LABEL_64;
  }

  if (dyld_program_sdk_at_least())
  {
    v14 = 7;
  }

  else
  {
    v14 = 1;
  }

LABEL_15:
  if (CF_IS_OBJC(v14, v1))
  {

    return [(__CFString *)v1 _copyDescription];
  }

  __CFCheckCFInfoPACSignature_Bridged(v1);
  if ((v1 & 0x8000000000000000) == 0)
  {
    v21 = atomic_load(&v1->info);
    v22 = (v21 >> 8) & 0x3FF;
    goto LABEL_33;
  }

  v15 = 0;
  v16 = *MEMORY[0x1E69E5910];
  if ((~v1 & 0xC000000000000007) == 0)
  {
    v16 = 0;
  }

  v17 = v16 ^ v1;
  do
  {
    if ((v17 & 7) == *(MEMORY[0x1E69E5900] + v15))
    {
      break;
    }

    ++v15;
  }

  while (v15 != 7);
  v18 = v15 | v17;
  v19 = v15 & 7;
  v20 = (v18 >> 55) + 8;
  if (v19 == 7)
  {
    LODWORD(v19) = v20;
  }

  if (v19 <= 4)
  {
    if (v19 <= 2)
    {
      if (!v19)
      {
        if (dyld_program_sdk_at_least())
        {
          v22 = 7;
        }

        else
        {
          v22 = 1;
        }

        goto LABEL_81;
      }

      if (v19 != 2)
      {
        goto LABEL_86;
      }

LABEL_70:
      v22 = 7;
      goto LABEL_81;
    }

    if (v19 == 3)
    {
      v22 = 22;
      goto LABEL_81;
    }

LABEL_71:
    v22 = 1;
    goto LABEL_81;
  }

  if (v19 <= 19)
  {
    if (v19 != 5)
    {
      if (v19 == 6)
      {
        v22 = 42;
        goto LABEL_81;
      }

      goto LABEL_86;
    }

    goto LABEL_71;
  }

  if (v19 == 20)
  {
    goto LABEL_71;
  }

  if (v19 == 22)
  {
    goto LABEL_70;
  }

LABEL_86:
  v22 = [(__CFString *)v1 _cfTypeID];
LABEL_33:
  if (v22 <= 0x47)
  {
LABEL_81:
    v23 = &__CFRuntimeBuiltinClassTable + v22;
    goto LABEL_82;
  }

  v23 = (__CFRuntimeClassTables[(v22 - 72) >> 6] + 8 * ((v22 - 72) & 0x3F));
LABEL_82:
  v27 = *v23;
  v28 = *(*v23 + 8);
  if (!v28 || (cf = v28(v1)) == 0)
  {
    v29 = v27[1];
    v30 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<%s %p [%p]>", v29, v1, v30);
  }

  return cf;
}

id _CF_forwarding_prep_0@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>, __n128 a15@<Q5>, __n128 a16@<Q6>, __n128 a17@<Q7>)
{
  v50 = a17;
  v49 = a16;
  v48 = a15;
  v47 = a14;
  v46 = a13;
  v45 = a12;
  v44 = a11;
  v43 = a10;
  v42 = a9;
  v41 = a8;
  v40 = a7;
  v39 = a6;
  v38 = a5;
  v37 = a4;
  v36 = a3;
  v35.n128_u64[1] = a2;
  v35.n128_u64[0] = a1;
  v17 = ___forwarding___(&v35, 0);
  if (!v17)
  {
    return [v35.n128_u64[0] v35.n128_u64[1]];
  }

  v18 = v17[12];
  v19 = v17[11];
  v20 = v17[10];
  v21 = v17[9];
  v22 = v17[8];
  v23 = v17[7];
  v24 = v17[6];
  v25 = v17[5];
  v26 = v17[4].n128_u64[0];
  v27 = v17[3].n128_u64[1];
  v28 = v17[3].n128_u64[0];
  v29 = v17[2].n128_u64[1];
  v30 = v17[2].n128_u64[0];
  v31 = v17[1].n128_u64[1];
  v32 = v17[1].n128_u64[0];
  v33 = v17->n128_u64[1];
  return v17->n128_u64[0];
}

uint64_t __CFRunLoopDoTimers(uint64_t a1, uint64_t a2, unint64_t a3)
{
  kdebug_trace();
  v6 = *(a2 + 120);
  if (!v6 || (Count = CFArrayGetCount(v6), Count < 1))
  {
    Mutable = 0;
LABEL_17:
    v19 = 0;
    v18 = 1;
    goto LABEL_18;
  }

  v8 = Count;
  v9 = 0;
  Mutable = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 120), v9);
    v12 = ValueAtIndex;
    v13 = atomic_load(ValueAtIndex + 1);
    if ((v13 & 8) != 0 && (ValueAtIndex[2] & 1) == 0 && ValueAtIndex[16] <= a3)
    {
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
      }

      CFArrayAppendValue(Mutable, v12);
    }

    ++v9;
  }

  while (v8 != v9);
  if (!Mutable)
  {
    goto LABEL_17;
  }

  v14 = CFArrayGetCount(Mutable);
  if (v14 < 1)
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v15 = 0;
    for (i = 0; i != v14; ++i)
    {
      v17 = CFArrayGetValueAtIndex(Mutable, i);
      v15 |= __CFRunLoopDoTimer(a1, a2, v17) != 0;
    }

    v18 = 0;
    v19 = v15 & 1;
  }

LABEL_18:
  kdebug_trace();
  if ((v18 & 1) == 0)
  {
    CFRelease(Mutable);
  }

  return v19;
}

uint64_t __CFRunLoopDoTimer(uint64_t a1, uint64_t a2, char *cf)
{
  v45 = *MEMORY[0x1E69E9840];
  CFRetain(cf);
  pthread_mutex_lock((cf + 24));
  v6 = atomic_load(cf + 1);
  if (v6 & 8) == 0 || (v7 = *(cf + 16), v7 > mach_absolute_time()) || (v8 = *(cf + 8), (v8) || *(cf + 11) != a1)
  {
    v9 = 0;
    atomic_load(cf + 1);
LABEL_6:
    pthread_mutex_unlock((cf + 24));
    goto LABEL_7;
  }

  v13 = *(cf + 20);
  v12 = *(cf + 21);
  if (v12)
  {
    v13 = v12(*(cf + 20));
    v14 = *(cf + 22);
    v8 = *(cf + 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(cf + 14);
  *(cf + 8) = v8 | 1;
  *(a2 + 184) = -1;
  *(a2 + 192) = -1;
  pthread_mutex_unlock((cf + 24));
  os_unfair_lock_lock_with_options();
  v16 = *(cf + 16);
  os_unfair_lock_unlock((a1 + 2716));
  __CFArmNextTimerInMode(a2);
  pthread_mutex_unlock((a2 + 16));
  pthread_mutex_unlock((a1 + 16));
  v17 = *(cf + 18);
  v18 = _CFAutoreleasePoolPush();
  kdebug_trace();
  __CFRUNLOOP_IS_CALLING_OUT_TO_A_TIMER_CALLBACK_FUNCTION__(v17, cf, v13);
  kdebug_trace();
  __CFRunLoopPerCalloutARPEnd(v18);
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (v15 == 0.0)
  {
    CFRunLoopTimerInvalidate(cf);
  }

  if (v14)
  {
    v14(v13);
  }

  pthread_mutex_lock((a1 + 16));
  pthread_mutex_lock((a2 + 16));
  pthread_mutex_lock((cf + 24));
  *(cf + 8) &= ~1u;
  v19 = atomic_load(cf + 1);
  if ((v19 & 8) == 0)
  {
    v9 = 1;
    goto LABEL_6;
  }

  if (v16 < *(cf + 16))
  {
    pthread_mutex_unlock((cf + 24));
    __CFArmNextTimerInMode(a2);
LABEL_47:
    v9 = 1;
    goto LABEL_7;
  }

  v20 = *(cf + 14);
  if (v20 <= 0.0)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    if (v16 >= 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (v20 > 504911232.0)
  {
    v20 = 504911232.0;
  }

  v21 = __CFTimeIntervalToTSR(v20);
  if ((v21 ^ 0x7FFFFFFFFFFFFFFFLL) <= v16)
  {
    v24 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_34;
  }

  v22 = v21;
  if (!v21)
  {
LABEL_32:
    __CFRunLoopDoTimer_cold_2();
  }

  v23 = mach_absolute_time();
  v24 = v16 - v22;
  do
  {
    v24 += v22;
  }

  while (v24 <= v23);
LABEL_34:
  v25 = *(cf + 11);
  if (!v25)
  {
    pthread_mutex_unlock((cf + 24));
    os_unfair_lock_lock((a1 + 2716));
    *(cf + 16) = v24;
    Current = CFAbsoluteTimeGetCurrent();
    *(cf + 13) = Current + __CFTimeIntervalUntilTSR(v24);
    os_unfair_lock_unlock((a1 + 2716));
    goto LABEL_47;
  }

  CFRetain(*(cf + 11));
  Count = CFSetGetCount(*(cf + 12));
  MEMORY[0x1EEE9AC00](Count, v27);
  v29 = (&v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v28 >= 0x200)
  {
    v30 = 512;
  }

  else
  {
    v30 = v28;
  }

  bzero(&v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
  CFSetGetValues(*(cf + 12), v29);
  if (Count < 1)
  {
    pthread_mutex_unlock((cf + 24));
  }

  else
  {
    v31 = v29;
    v32 = Count;
    do
    {
      v33 = *v31++;
      CFRetain(v33);
      --v32;
    }

    while (v32);
    pthread_mutex_unlock((cf + 24));
    v34 = v29;
    v35 = Count;
    do
    {
      v36 = *v34;
      v37 = __CFRunLoopCopyMode(v25, *v34, 0);
      *v34 = v37;
      if (v37)
      {
        pthread_mutex_lock((v37 + 16));
      }

      CFRelease(v36);
      ++v34;
      --v35;
    }

    while (v35);
  }

  os_unfair_lock_lock((a1 + 2716));
  *(cf + 16) = v24;
  v39 = CFAbsoluteTimeGetCurrent();
  *(cf + 13) = v39 + __CFTimeIntervalUntilTSR(v24);
  if (Count < 1)
  {
    os_unfair_lock_unlock((a1 + 2716));
  }

  else
  {
    v40 = v29;
    v41 = Count;
    do
    {
      if (*v40)
      {
        __CFRepositionTimerInMode(*v40, cf, 1);
      }

      ++v40;
      --v41;
    }

    while (v41);
    os_unfair_lock_unlock((a1 + 2716));
    v42 = Count + 1;
    v43 = &v29[Count - 1];
    do
    {
      if (*v43)
      {
        pthread_mutex_unlock((*v43 + 16));
        CFRelease(*v43);
      }

      --v42;
      --v43;
    }

    while (v42 > 1);
  }

  CFRelease(v25);
  v9 = 1;
LABEL_7:
  CFRelease(cf);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t (*__CFRUNLOOP_IS_CALLING_OUT_TO_A_TIMER_CALLBACK_FUNCTION__(uint64_t (*result)(uint64_t, uint64_t), uint64_t a2, uint64_t a3))(uint64_t, uint64_t)
{
  if (result)
  {
    return result(a2, a3);
  }

  return result;
}

void __CFRepositionTimerInMode(uint64_t a1, void *a2, int a3)
{
  if (a2)
  {
    v4 = *(a1 + 120);
    if (v4)
    {
      v6 = *(a1 + 120);
      if (a3)
      {
        v14.length = CFArrayGetCount(v6);
        v14.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v14, a2);
        if (FirstIndexOfValue != -1)
        {
          v8 = FirstIndexOfValue;
          CFRetain(a2);
          CFArrayRemoveValueAtIndex(v4, v8);
          v9 = __CFRunLoopInsertionIndexInTimerArray(v4, a2);
          CFArrayInsertValueAtIndex(v4, v9, a2);
          v10 = a2[11];
          __CFArmNextTimerInMode(a1);

          CFRelease(a2);
        }
      }

      else
      {
        v11 = __CFRunLoopInsertionIndexInTimerArray(v6, a2);
        CFArrayInsertValueAtIndex(v4, v11, a2);
        v12 = a2[11];

        __CFArmNextTimerInMode(a1);
      }
    }
  }
}

double __CFTimeIntervalUntilTSR(unint64_t a1)
{
  if (CFDateGetTypeID_initOnce != -1)
  {
    __CFTimeIntervalUntilTSR_cold_1();
  }

  v2 = mach_absolute_time();
  v3 = v2 - a1;
  if (v2 <= a1)
  {
    v5 = a1 - v2;
    if (CFDateGetTypeID_initOnce != -1)
    {
      __CFTimeIntervalUntilTSR_cold_2();
    }

    return *&__CF1_TSRRate * v5;
  }

  else
  {
    if (CFDateGetTypeID_initOnce != -1)
    {
      __CFTimeIntervalUntilTSR_cold_3();
    }

    return -(*&__CF1_TSRRate * v3);
  }
}

uint64_t __CFRunLoopInsertionIndexInTimerArray(const __CFArray *a1, uint64_t a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  if (Count >= 0x101)
  {
    if (*(CFArrayGetValueAtIndex(a1, Count - 1) + 16) <= *(a2 + 128))
    {
      return v5;
    }

    if (*(a2 + 128) < *(CFArrayGetValueAtIndex(a1, 0) + 16))
    {
      return 0;
    }
  }

  v6 = 0;
  v7 = 2 << flsl(v5);
  do
  {
    if (v6 + v7 / 2 >= v5)
    {
      v11 = 0;
    }

    else
    {
      v8 = *(CFArrayGetValueAtIndex(a1, v6 + v7 / 2) + 16);
      v9 = *(a2 + 128);
      v10 = v8 > v9;
      v11 = v8 <= v9;
      if (!v10)
      {
        v6 += v7 / 2;
      }
    }

    v10 = v7 <= 1;
    v7 /= 2;
  }

  while (!v10);
  return v11 + v6;
}

dispatch_time_t __CFTSRToDispatchTime(unint64_t a1)
{
  v1 = vcvtmd_u64_f64(*&__CF1_TSRRate * a1 * 1000000000.0);
  if (v1 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v2 = 0x7FFFFFFFFFFFFFFELL;
  }

  else
  {
    v2 = v1;
  }

  return dispatch_time(1uLL, v2);
}

void CFXNotificationHandlerRelease(uint64_t *a1, int a2)
{
  v4 = *MEMORY[0x1E69E9840];
  memset(v3, 0, sizeof(v3));
  _CFXNotificationHandlerRelease(a1, a2, v3);
  _CFXNotificationDisposalListRelease(v3);
  v2 = *MEMORY[0x1E69E9840];
}

void _CFPrefsApplyChangesQueueToDictionary(void *a1, __CFDictionary *a2)
{
  if (!a1)
  {
    _CFPrefsApplyChangesQueueToDictionary_cold_4();
  }

  if (object_getClass(a1) != MEMORY[0x1E69E9E50])
  {
    _CFPrefsApplyChangesQueueToDictionary_cold_1();
  }

  count = xpc_array_get_count(a1);
  v5 = count;
  if (count)
  {
    _CFPrefsApplyChangesQueueToDictionary_cold_2();
  }

  if (count)
  {
    v6 = 0;
    v7 = 0;
    v8 = MEMORY[0x1E69E9E70];
    while (1)
    {
      value = xpc_array_get_value(a1, v7);
      v10 = _CFXPCCreateCFObjectFromXPCObject(value);
      v11 = v7 + 1;
      v12 = xpc_array_get_value(a1, v11);
      if (object_getClass(v12) == v8)
      {
        length = xpc_data_get_length(v12);
        bytes_ptr = xpc_data_get_bytes_ptr(v12);
        v16 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, bytes_ptr, length, &__kCFAllocatorNull);
        v13 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v16, 0, 0, 0);
        CFRelease(v16);
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v13 = _CFXPCCreateCFObjectFromXPCObject(v12);
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      if (v13)
      {
        v17 = CFGetTypeID(v13);
        if (v17 == CFNullGetTypeID())
        {
          CFDictionaryRemoveValue(a2, v10);
        }

        else
        {
          CFDictionarySetValue(a2, v10, v13);
        }

LABEL_19:
        CFRelease(v10);
        if (!v13)
        {
          goto LABEL_16;
        }

LABEL_15:
        CFRelease(v13);
        goto LABEL_16;
      }

LABEL_13:
      v6 = 1;
      if (v10)
      {
        goto LABEL_19;
      }

      if (v13)
      {
        goto LABEL_15;
      }

LABEL_16:
      v7 = v11 + 1;
      if (v7 >= v5)
      {
        if (v6)
        {
          v18 = _CFPrefsDaemonLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            _CFPrefsApplyChangesQueueToDictionary_cold_3();
          }
        }

        return;
      }
    }
  }
}

unint64_t *__CFBinaryPlistCreateDataUsingExternalBufferAllocator(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFErrorRef *a5)
{
  v8 = __CFBinaryPlistWriteOrPresize(a1, 0, a3, a4, 1, a5);
  if (v8 < 1)
  {
    return 0;
  }

  v9 = v8;
  v10 = (*(a4 + 16))(a4, v8);
  if (!v10)
  {
    if (!a5)
    {
      return 0;
    }

    Error = __CFPropertyListCreateError(3851, @"Binary property list writing could not be completed because an allocator could not be created.");
    goto LABEL_13;
  }

  v11 = v10;
  Typed = CFAllocatorAllocateTyped(v10, v9, 3353595013, 0);
  if (!Typed)
  {
    CFRelease(v11);
    if (!a5)
    {
      return 0;
    }

    Error = __CFPropertyListCreateError(3851, @"Binary property list writing could not be completed because an external buffer could not be allocated.");
    goto LABEL_13;
  }

  v13 = Typed;
  FixedMutableWithBuffer = _CFDataCreateFixedMutableWithBuffer(&__kCFAllocatorSystemDefault, v9, Typed, v11);
  if (!FixedMutableWithBuffer)
  {
    CFAllocatorDeallocate(v11, v13);
    if (!a5)
    {
      return 0;
    }

    Error = __CFPropertyListCreateError(3851, @"Binary property list writing could not be completed because a CFMutableDataRef using the external buffer could not be allocated.");
LABEL_13:
    v15 = 0;
    *a5 = Error;
    return v15;
  }

  v15 = FixedMutableWithBuffer;
  CFRelease(v11);
  if (v9 != __CFBinaryPlistWriteOrPresize(a1, v15, v16, v17, 0, a5))
  {
    CFRelease(v15);
    return 0;
  }

  return v15;
}

CFTypeRef _DescriptionWithStringProxyFunc(void *a1, uint64_t a2, uint64_t a3, int a4, _BYTE *a5)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (a5)
    {
      *a5 = 0;
    }

    return 0;
  }

  if (a5)
  {
    *a5 = 1;
  }

  if (!a4)
  {
    return 0;
  }

  v10 = [a1 _dynamicContextEvaluation:a2 patternString:a3];
  if (!v10)
  {
    return 0;
  }

  return CFRetain(v10);
}

const __CFSet *_CFBundleCopyInfoDictionaryInDirectory(const __CFAllocator *a1, CFURLRef url, _BYTE *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1026))
  {
    v11 = 0;
    v10 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = strlen(buffer);
  v8 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, buffer, v6, 1u);
  if (!v8)
  {
    v8 = CFRetain(url);
  }

  BundleVersionForURL = _CFBundleGetBundleVersionForURL(v8, v7);
  v10 = BundleVersionForURL;
  v11 = _CFBundleCopyInfoDictionaryInDirectoryWithVersion(a1, v8, 0, 0, 0, BundleVersionForURL);
  CFRelease(v8);
  if (a3)
  {
LABEL_5:
    *a3 = v10;
  }

LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void _CFPrefsSynchronizeDirtySourceForTimer(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__364;
  v10 = __Block_byref_object_dispose__365;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___CFPrefsSynchronizeDirtySourceForTimer_block_invoke;
  v5[3] = &unk_1E6DD1D78;
  v5[4] = a1;
  v5[5] = &v6;
  [a1 lockedSync:v5];
  v2 = v7[5];
  if (v2)
  {
    v3 = (*(v2 + 16))();
    [a1 finishedNonRequestWriteWithResult:v3];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  _Block_object_dispose(&v6, 8);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_183134A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CFPrefsTemporaryFDToWriteTo(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v31 = *MEMORY[0x1E69E9840];
  v7 = atomic_load(&dword_1EA84A4FC);
  if (v7 == 1)
  {
    v8 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _CFPrefsTemporaryFDToWriteTo_cold_4();
    }

    *__error() = 28;
    goto LABEL_25;
  }

  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  v13 = v2;
  if (!CFURLGetFileSystemRepresentation(v2, 1u, buffer, 1026))
  {
    v22 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      _CFPrefsTemporaryFDToWriteTo_cold_3();
    }

    goto LABEL_25;
  }

  v14 = CFURLCopyAbsoluteURL(v13);
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(&__kCFAllocatorSystemDefault, v14);
  v16 = CFRetain(PathComponent);
  v17 = CFURLCopyLastPathComponent(v14);
  CFRelease(v14);
  v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@.XXXXXXX", v17);
  v19 = CFURLCreateCopyAppendingPathComponent(&__kCFAllocatorSystemDefault, v16, v18, 0);
  CFRelease(v18);
  if (v17)
  {
    CFRelease(v17);
  }

  if (!CFURLGetFileSystemRepresentation(v19, 1u, v30, 1026))
  {
    v23 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      _CFPrefsTemporaryFDToWriteTo_cold_2();
    }

    goto LABEL_24;
  }

  if (!v9)
  {
LABEL_14:
    v20 = mkstemp(v30);
    goto LABEL_15;
  }

  v20 = mkstemp_dprotected_np(v30, v9, 0);
  v21 = __error();
  if (v20 == -1 && *v21 == 45)
  {
    memset(&v28, 0, 512);
    if (!statfs(v30, &v28) && (v28.f_flags & 0x80) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

LABEL_15:
  if ((v20 & 0x80000000) != 0)
  {
LABEL_21:
    v24 = *__error();
    v25 = _CFPrefsDaemonLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      _CFPrefsTemporaryFDToWriteTo_cold_1(v24, v30, v25);
    }

    *__error() = v24;
LABEL_24:
    CFRelease(v19);
    CFRelease(PathComponent);
    CFRelease(v16);
LABEL_25:
    v20 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  fchown(v20, v12, v11);
  fchmod(v20, v10);
  CFRelease(v19);
  CFRelease(PathComponent);
  CFRelease(v16);
LABEL_26:
  v26 = *MEMORY[0x1E69E9840];
  return v20;
}

CFStringRef CFURLCopyLastPathComponent(CFURLRef url)
{
  v34 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCopyLastPathComponent_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, url))
    {
      url = [(__CFURL *)url _cfurl];
    }

    v2 = [(__CFURL *)url _lastPathComponent];
    v3 = *MEMORY[0x1E69E9840];

    return v2;
  }

  if (CF_IS_OBJC(0x1DuLL, url))
  {
    v5 = CFGetAllocator(url);
    v6 = CFURLCreateStringWithFileSystemPath(v5, url, 0, 0);
    v7 = v6;
    result.location = 0;
    result.length = 0;
    if (v6)
    {
      Length = CFStringGetLength(v6);
      if (Length)
      {
        v9 = Length;
        v10 = Length - 1;
        if (CFStringGetCharacterAtIndex(v7, Length - 1) != 47)
        {
          v10 = v9;
        }

        if (v10)
        {
          v36.location = 0;
          v36.length = v10;
          v11 = CFStringFindWithOptions(v7, @"/", v36, 4uLL, &result) ? result.location + 1 : 0;
          v12 = v10 - v11;
          if (v11 || v12 != v9)
          {
            v13 = CFGetAllocator(url);
            v37.location = v11;
            v37.length = v12;
            v14 = CFStringCreateWithSubstring(v13, v7, v37);
            CFRelease(v7);
            v7 = v14;
          }
        }
      }
    }

    goto LABEL_48;
  }

  v15 = CFURLIsFileReferenceURL(url);
  if (v15)
  {
    v16 = CFGetAllocator(url);
    url = CFURLCreateFilePathURL(v16, url, 0);
    if (!url)
    {
      v7 = 0;
LABEL_48:
      v32 = *MEMORY[0x1E69E9840];
      return v7;
    }
  }

  PathComponent = _rangeOfLastPathComponent(url);
  if (PathComponent == -1 || (v19 = v18) == 0)
  {
    if (v15)
    {
      CFRelease(url);
    }

    v24 = *MEMORY[0x1E69E9840];
    v23 = &stru_1EF068AA8;
  }

  else
  {
    v20 = PathComponent;
    if (v18 != 1 || (v21 = atomic_load(url + 3), CFStringGetCharacterAtIndex(v21, v20) != 47))
    {
      v25 = CFGetAllocator(url);
      v26 = atomic_load(url + 3);
      v38.location = v20;
      v38.length = v19;
      v7 = CFStringCreateWithSubstring(v25, v26, v38);
      if ((*(url + 17) & 0x80) == 0)
      {
        v27 = *(url + 5);
        if (_CFURLHasFileURLScheme(url, 0))
        {
          v28 = @"/";
        }

        else
        {
          v28 = &stru_1EF068AA8;
        }

        v29 = CFGetAllocator(url);
        if (v27 == 134217984)
        {
          v30 = CFURLCreateStringByReplacingPercentEscapes(v29, v7, v28);
        }

        else
        {
          v30 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(v29, v7, v28, *(url + 5));
        }

        v31 = v30;
        CFRelease(v7);
        v7 = v31;
      }

      if (v15)
      {
        CFRelease(url);
      }

      goto LABEL_48;
    }

    if (v15)
    {
      CFRelease(url);
    }

    v22 = *MEMORY[0x1E69E9840];
    v23 = @"/";
  }

  return CFRetain(v23);
}

const UInt8 *__NSI3(const UInt8 *result, uint64_t a2, id *a3, char a4)
{
  if (result)
  {
    v7 = result;
    while (1)
    {
      v8 = (a4 & 1) != 0 ? *(v7 + 7) + v7[32] : *(v7 + 5);
      v9 = *(v7 + 17);
      if ((v9 & 0x80) == 0)
      {
        break;
      }

      a4 = 0;
      v7 = *v7;
      a2 = *(a2 + v8);
      if (!v7)
      {
        return result;
      }
    }

    if ((~v9 & 0x1800) != 0)
    {
      if ((v9 & 0xC00) != 0)
      {
        for (i = *v7; i; i = *(i + 1))
        {
          result = __NSI3(i, a2, a3, a4 & 1);
        }
      }

      else if ((v9 & 0x2000) != 0)
      {
        v19 = *(a2 + v8);
        if ((v9 & 0x8000) != 0)
        {
          result = [*(a2 + v8) copy];
          v19 = result;
          *(a2 + v8) = result;
        }

        if (v19)
        {
          v20 = *a3;
          if (!*a3)
          {
            v20 = objc_opt_new();
            *a3 = v20;
          }

          return [v20 addObject:v19];
        }
      }

      else if ((v9 & 0x4000) != 0)
      {
        v16 = *(a2 + v8);
        if (v16)
        {
          if (!*a3)
          {
            *a3 = objc_opt_new();
          }

          v17 = CFDataCreateMutable(&__kCFAllocatorSystemDefault, 0);
          v18 = strlen(v16);
          CFDataAppendBytes(v17, v16, v18 + 1);
          [*a3 addObject:v17];
          result = CFDataGetMutableBytePtr(v17);
          *(a2 + v8) = result;
        }
      }
    }

    else
    {
      v10 = *(a2 + v8);
      if (v10)
      {
        v11 = v9 & 3;
        result = _CFExecutableLinkedOnOrAfter(6uLL);
        if (v11 == 1 || !result)
        {
          v12 = CFDataCreateMutable(&__kCFAllocatorSystemDefault, 0);
          CFDataAppendBytes(v12, v10, *(v7 + 4));
          v13 = *a3;
          if (!*a3)
          {
            v13 = objc_opt_new();
            *a3 = v13;
          }

          [v13 addObject:v12];
          result = CFDataGetMutableBytePtr(v12);
          v10 = result;
          *(a2 + v8) = result;
        }

        v14 = *v7;
        if (*v7)
        {
          do
          {
            result = __NSI3(v14, v10, a3, 0);
            v14 = *(v14 + 1);
          }

          while (v14);
        }
      }
    }
  }

  return result;
}

uint64_t typeStringHash(char *a1)
{
  v2 = strlen(a1);

  return CFStringHashCString(a1, v2);
}

UText *__CFStringUTextInit(UText *a1, int32_t a2, const void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  status = U_ZERO_ERROR;
  if (a3 && (result = utext_setup(a1, 0, &status), status <= U_ZERO_ERROR))
  {
    result->providerProperties = a2;
    v6 = &__CFAttributedStringFuncs;
    result->context = a3;
    if ((a2 & 0x10) == 0)
    {
      v6 = &__CFStringFuncs;
    }

    result->pFuncs = v6;
  }

  else
  {
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

UText *__CFStringClone(UText *a1, uint64_t a2, int a3, UErrorCode *status)
{
  if (*status > 0)
  {
    return 0;
  }

  v8 = utext_setup(a1, 0, status);
  v4 = v8;
  if (*status <= 0)
  {
    v9 = *(a2 + 8);
    v8->providerProperties = v9;
    v10 = *(a2 + 32);
    v8->chunkNativeStart = v10;
    v8->chunkNativeLimit = v10;
    v8->nativeIndexingLimit = v10;
    v11 = &__CFAttributedStringFuncs;
    v8->chunkOffset = 0;
    if ((v9 & 0x10) == 0)
    {
      v11 = &__CFStringFuncs;
    }

    v8->pFuncs = v11;
    if (*status <= 0)
    {
      if (a3)
      {
        v12 = *(a2 + 72);
        if ((v9 & 0x10) != 0)
        {
          MutableCopy = CFAttributedStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v12);
        }

        else
        {
          MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v12);
        }

        v4->context = MutableCopy;
        v4->providerProperties |= 0x28u;
      }

      else
      {
        v8->context = *(a2 + 72);
      }
    }
  }

  return v4;
}

uint64_t doAccess(uint64_t a1, uint64_t a2, int a3, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v9 = Length;
  if (Length >= a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = Length;
  }

  if (a2 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 16);
  if (a3)
  {
    if (v11 >= v12 || (v13 = *(a1 + 32), v11 < v13))
    {
      if (v11 >= Length && v12 == Length)
      {
        result = 0;
        *(a1 + 40) = *(a1 + 44);
        return result;
      }

      goto LABEL_21;
    }

    v17 = v11 - v13;
LABEL_30:
    *(a1 + 40) = v17;
    return 1;
  }

  if (v11 <= v12)
  {
    v16 = *(a1 + 32);
    if (v11 > v16)
    {
      v17 = v11 - v16;
      goto LABEL_30;
    }
  }

  if (!v11 && !*(a1 + 32))
  {
    result = 0;
    *(a1 + 40) = 0;
    return result;
  }

LABEL_21:
  CharactersPtr = CFStringGetCharactersPtr(theString);
  *(a1 + 48) = CharactersPtr;
  if (CharactersPtr)
  {
    if (v11 > 2147483646)
    {
      v19 = v11 - 0x7FFFFFFF;
      if (a3)
      {
        v19 = v10;
        v29 = 0;
      }

      else
      {
        v29 = 0x7FFFFFFF;
      }

      *(a1 + 32) = v19;
      *(a1 + 40) = v29;
      *(a1 + 48) = &CharactersPtr[v19];
    }

    else
    {
      v19 = 0;
      *(a1 + 32) = 0;
      *(a1 + 40) = v11;
    }

    v20 = v9 - v19;
    if (v9 - v19 > 2147483646)
    {
      v20 = 0x7FFFFFFF;
      *(a1 + 16) = v19 + 0x7FFFFFFF;
      *(a1 + 44) = 0x7FFFFFFF;
    }

    else
    {
      *(a1 + 16) = v9;
      *(a1 + 44) = v20;
    }

LABEL_57:
    *(a1 + 28) = v20;
    return 1;
  }

  result = *(a1 + 88);
  if (result)
  {
    if (a3)
    {
      v21 = v11 - *(a1 + 16);
    }

    else
    {
      v21 = *(a1 + 32) - v11;
    }

    if (v21 < 0)
    {
      v21 = -v21;
    }

    if (v21 <= 0x10)
    {
      v22 = *(a1 + 124);
      if (v22 <= 4)
      {
        *(a1 + 124) = ++v22;
      }

      goto LABEL_40;
    }

LABEL_39:
    v22 = 0;
    *(a1 + 124) = 0;
LABEL_40:
    *(a1 + 48) = result;
    if (a3)
    {
      *(a1 + 32) = v11;
      v23 = _bufferSizes[v22];
      *(a1 + 16) = v11 + v23;
      if (v11 + v23 <= v9)
      {
        if (v11 + v23 < v9)
        {
          v9 = __pinIndex(v11 + v23, v9, theString, a3, 1);
          *(a1 + 16) = v9;
          v11 = *(a1 + 32);
        }

        else
        {
          LODWORD(v9) = v11 + v23;
        }
      }

      else
      {
        *(a1 + 16) = v9;
      }

      v26 = 0;
      v27 = v9 - v11;
      v28 = v9 - v11;
    }

    else
    {
      if (v11 >= v9)
      {
        v24 = v9;
      }

      else
      {
        v24 = v11;
      }

      *(a1 + 16) = v24;
      v25 = _bufferSizes[v22];
      v11 = v24 - v25;
      *(a1 + 32) = v24 - v25;
      if (v24 - v25 < 0)
      {
        v11 = 0;
        *(a1 + 32) = 0;
      }

      else if (v24 != v25)
      {
        v11 = __pinIndex(v24 - v25, v9, theString, 0, 1);
        *(a1 + 32) = v11;
        v24 = *(a1 + 16);
      }

      v26 = v24 - v11;
      v27 = v26;
      v28 = v26;
    }

    *(a1 + 40) = v26;
    *(a1 + 44) = v27;
    v30.length = v28;
    v30.location = v11;
    CFStringGetCharacters(theString, v30, *(a1 + 48));
    v20 = *(a1 + 44);
    goto LABEL_57;
  }

  result = malloc_type_malloc(0x400uLL, 0x1000040BDFB0063uLL);
  *(a1 + 88) = result;
  if (result)
  {
    goto LABEL_39;
  }

  return result;
}

CFIndex __pinIndex(CFIndex idx, unint64_t a2, CFStringRef theString, int a4, int a5)
{
  if (idx < 0)
  {
    return 0;
  }

  if (idx <= a2)
  {
    if (idx < a2 && idx && a5 && (CFStringGetCharacterAtIndex(theString, idx) & 0xFC00) == 0xDC00)
    {
      v8 = CFStringGetCharacterAtIndex(theString, idx - 1) & 0xFC00;
      if (a4)
      {
        v9 = idx - 1;
      }

      else
      {
        v9 = idx + 1;
      }

      if (v8 == 55296)
      {
        return v9;
      }

      else
      {
        return idx;
      }
    }

    else
    {
      return idx;
    }
  }

  return a2;
}

void __CFStringClose(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 80) = 0;
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    free(v3);
    *(a1 + 88) = 0;
  }

  if ((*(a1 + 8) & 0x20) != 0)
  {
    CFRelease(*(a1 + 72));
    *(a1 + 72) = 0;
  }
}

CFCharacterSetRef CFCharacterSetCreateWithCharactersInString(CFAllocatorRef alloc, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (Length > 63)
  {
LABEL_25:
    Mutable = CFCharacterSetCreateMutable(alloc);
    CFCharacterSetAddCharactersInString(Mutable, theString);
    __CFCSetMakeCompact(Mutable);
    v29 = atomic_load(Mutable + 1);
    v30 = v29;
    do
    {
      atomic_compare_exchange_strong(Mutable + 1, &v30, v29 & 0xFFFFFFFFFFFFFFFELL);
      v14 = v30 == v29;
      v29 = v30;
    }

    while (!v14);
    return Mutable;
  }

  v9 = Length;
  Instance = _CFRuntimeCreateInstance(alloc, 0x19uLL, 32, 0, v5, v6, v7, v8);
  Mutable = Instance;
  if (!Instance)
  {
    return Mutable;
  }

  v12 = atomic_load(Instance + 1);
  v13 = v12;
  do
  {
    atomic_compare_exchange_strong(Instance + 1, &v13, v12 & 0xFFFFFFFFFFFFFFFELL);
    v14 = v13 == v12;
    v12 = v13;
  }

  while (!v14);
  v15 = atomic_load(Instance + 1);
  v16 = v15;
  do
  {
    atomic_compare_exchange_strong(Instance + 1, &v16, v15 & 0xFFFFFFFFFFFFFF8FLL | 0x20);
    v14 = v16 == v15;
    v15 = v16;
  }

  while (!v14);
  Instance[2] = 0;
  Instance[5] = 0;
  v17 = CFGetAllocator(Instance);
  Typed = CFAllocatorAllocateTyped(v17, 128, 0x1000040BDFB0063, 0);
  *(Mutable + 3) = Typed;
  *(Mutable + 4) = v9;
  v32.location = 0;
  v32.length = v9;
  CFStringGetCharacters(theString, v32, Typed);
  qsort(*(Mutable + 3), v9, 2uLL, chcompar);
  if (v9 < 2)
  {
    *(Mutable + 4) = v9;
    if (!v9)
    {
      v19 = atomic_load(Mutable + 1);
      v20 = v19;
      do
      {
        atomic_compare_exchange_strong(Mutable + 1, &v20, v19 | 4);
        v14 = v20 == v19;
        v19 = v20;
      }

      while (!v14);
    }

    return Mutable;
  }

  v21 = 0;
  v22 = *(Mutable + 3);
  v23 = v9 - 1;
  v24 = (v22 + 2);
  do
  {
    v26 = *v24++;
    v25 = v26;
    if (*(v22 + 2 * v21) != v26)
    {
      ++v21;
      *(v22 + 2 * v21) = v25;
    }

    --v23;
  }

  while (v23);
  *(Mutable + 4) = v21 + 1;
  v27 = *(Mutable + 3);
  if (*v27 >> 10 <= 0x36u)
  {
    v28 = &v27[v9];
    if (*(v28 - 1) >> 10 >= 0x37u)
    {
      while ((*v27 & 0xF800 | 0x400) != 0xDC00)
      {
        if (++v27 >= v28)
        {
          return Mutable;
        }
      }

      CFRelease(Mutable);
      goto LABEL_25;
    }
  }

  return Mutable;
}

void __CFCharacterSetDeallocate(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = (a1 + 8);
  v4 = atomic_load((a1 + 8));
  if (v4 & 0x70) != 0 || (v5 = atomic_load(v3), (v5) || (v6 = atomic_load((a1 + 8)), (v6 & 8) != 0) || CFCharacterSetGetPredefined(*(a1 + 24)) != a1)
  {
    v7 = atomic_load(v3);
    if ((v7 & 0x70) == 0x20 && (v8 = *(a1 + 24)) != 0 || (v9 = atomic_load((a1 + 8)), (v9 & 0x70) == 0x30) && (v8 = *(a1 + 24)) != 0 || (v10 = atomic_load((a1 + 8)), (v10 & 0x70) == 0x40) && (v8 = *(a1 + 24)) != 0)
    {
      CFAllocatorDeallocate(v2, v8);
    }

    if (*(a1 + 40))
    {
      for (i = 0; i != 16; ++i)
      {
        v12 = *(a1 + 40);
        if (((*(v12 + 8) >> i) & 2) != 0)
        {
          CFRelease(*(*v12 + 8 * i));
        }
      }

      v13 = CFGetAllocator(a1);
      CFAllocatorDeallocate(v13, **(a1 + 40));
      v14 = CFGetAllocator(a1);
      CFAllocatorDeallocate(v14, *(a1 + 40));
      *(a1 + 40) = 0;
    }
  }
}

CFPropertyListRef CFPropertyListCreateWithStream(CFAllocatorRef allocator, CFReadStreamRef stream, CFIndex streamLength, CFOptionFlags options, CFPropertyListFormat *format, CFErrorRef *error)
{
  v6 = MEMORY[0x1EEE9AC00](allocator, stream);
  v9 = v8;
  v32 = v10;
  v33 = v11;
  v13 = v12;
  v31 = v6;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v35 = *MEMORY[0x1E69E9840];
  if (v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  do
  {
    if (v17 >= 0x2000)
    {
      v18 = 0x2000;
    }

    else
    {
      v18 = v17;
    }

    v19 = CFReadStreamRead(v13, buffer, v18);
    v20 = v19;
    if (v19 <= 0)
    {
      if (!v19)
      {
        v21 = v14;
        if (!v16)
        {
          goto LABEL_38;
        }

        goto LABEL_36;
      }

      v25 = CFReadStreamCopyError(v13);
      if (!v9)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    v21 = v14 + v19;
    if (__OFADD__(v14, v19))
    {
      goto LABEL_23;
    }

    if (v15 < v21)
    {
      if (v15 < 0x40000)
      {
        v22 = 4 * v15;
LABEL_15:
        if (v22 <= v21)
        {
          v15 = v14 + v19;
        }

        else
        {
          v15 = v22;
        }

        v23 = __CFSafelyReallocateWithAllocatorTyped(&__kCFAllocatorSystemDefault, v16, v15, 1784242417, 0, 0);
        if (!v23)
        {
          __break(1u);
        }

        v16 = v23;
        goto LABEL_20;
      }

      if (!HIBYTE(v15))
      {
        v22 = 2 * v15;
        goto LABEL_15;
      }

      v22 = v15 + 0x40000;
      if (!__OFADD__(v15, 0x40000))
      {
        goto LABEL_15;
      }

LABEL_23:
      v25 = __CFPropertyListCreateError(3840, @"Stream too large");
      v16 = 0;
      if (!v9)
      {
LABEL_32:
        if (v25)
        {
          CFRelease(v25);
        }

        goto LABEL_34;
      }

LABEL_27:
      if (v16)
      {
        CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v16);
      }

      Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(Mutable, @"NSDebugDescription", @"Property list reading could not be completed because the stream had an unknown error. Did you forget to open the stream?");
      if (v25)
      {
        CFDictionarySetValue(Mutable, @"NSUnderlyingError", v25);
      }

      *v9 = CFErrorCreate(&__kCFAllocatorSystemDefault, @"NSCocoaErrorDomain", 3842, Mutable);
      CFRelease(Mutable);
      goto LABEL_32;
    }

LABEL_20:
    v24 = v20 & 0x7FFFFFFF;
    memmove(&v16[v14], buffer, v24);
    v17 -= v24;
    v14 = v21;
  }

  while (v17 >= 1);
  if (!v16)
  {
LABEL_38:
    if (v16)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v16);
    }

    if (v9)
    {
      v29 = __CFPropertyListCreateError(3840, @"stream had too few bytes");
      result = 0;
      *v9 = v29;
      goto LABEL_42;
    }

LABEL_34:
    result = 0;
    goto LABEL_42;
  }

LABEL_36:
  if (v21 <= 5)
  {
    goto LABEL_38;
  }

  v28 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, v16, v21, &__kCFAllocatorSystemDefault);
  *buffer = 0;
  _CFPropertyListCreateWithData(v31, v28, v32, v9, 1, v33, 0, buffer);
  CFRelease(v28);
  result = *buffer;
LABEL_42:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

CFIndex CFReadStreamRead(CFReadStreamRef stream, UInt8 *buffer, CFIndex bufferLength)
{
  v26 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    v6 = *MEMORY[0x1E69E9840];

    return [(__CFReadStream *)stream read:buffer maxLength:bufferLength];
  }

  else
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

    if ((Status - 2) >= 2)
    {
      if (Status == 5)
      {
        v12 = 0;
      }

      else
      {
        v12 = -1;
      }
    }

    else
    {
      v25 = 0;
      v10 = *(stream + 2);
      *(stream + 2) = v10 | 0x40;
      v11 = *(stream + 4);
      if (v11)
      {
        *(v11 + 72) &= ~2uLL;
      }

      if ((v10 & 0x1E) != 6)
      {
        *(stream + 2) = v10 & 0xFFFFFFA0 | 0x43;
      }

      if (*v9 > 1)
      {
        v12 = (*(v9 + 48))(stream, buffer, bufferLength, stream + 24, &v25, *(stream + 5));
      }

      else
      {
        v24 = 0uLL;
        v12 = (*(v9 + 48))(stream, buffer, bufferLength, &v24, &v25, *(stream + 5));
        if (DWORD2(v24))
        {
          Typed = *(stream + 3);
          if (!Typed)
          {
            v14 = CFGetAllocator(stream);
            Typed = CFAllocatorAllocateTyped(v14, 16, 0x1000040D9A13B51, 0);
            *(stream + 3) = Typed;
          }

          *Typed = v24;
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
        if (v16 && (*(v16 + 48) & 8) != 0)
        {
          pthread_mutex_lock((stream + 56));
          v17 = *(stream + 4);
          if (v17 && (v18 = *(v17 + 56)) != 0)
          {
            CFRetain(*(v17 + 56));
            pthread_mutex_unlock((stream + 56));
            *(*(stream + 4) + 72) |= 8uLL;
            CFRunLoopSourceSignal(v18);
            CFRelease(v18);
            _wakeUpRunLoop(stream);
          }

          else
          {
            pthread_mutex_unlock((stream + 56));
          }
        }

        v12 = -1;
      }

      else
      {
        v19 = *(stream + 2);
        if (v25)
        {
          if ((*(stream + 2) & 0x1ELL) != 6)
          {
            *(stream + 2) = *(stream + 2) & 0xFFFFFFE0 | 5;
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

        else if ((*(stream + 2) & 0x1ELL) != 6)
        {
          *(stream + 2) = *(stream + 2) & 0xFFFFFFE0 | 2;
        }
      }

      *(stream + 2) &= ~0x40uLL;
    }

    v23 = *MEMORY[0x1E69E9840];
    return v12;
  }
}

CFTypeRef _DescriptionWithLocaleFunc(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [a1 descriptionWithLocale:a2];
    }

    else
    {
      v5 = [a1 description];
    }

    v2 = vars8;
  }

  else
  {
    v5 = @"*nil*";
  }

  if (!v5)
  {
    v5 = @"*nil description*";
  }

  return CFRetain(v5);
}

CFTypeRef CFCachedStringCopyString(CFTypeRef *a1)
{
  os_unfair_lock_lock(&__CFXNotificationRegistrarNamePoolLock);
  v2 = CFRetain(*a1);
  os_unfair_lock_unlock(&__CFXNotificationRegistrarNamePoolLock);
  return v2;
}

BOOL CFXNotificationRegistrarValidateToken(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  v5 = *(a1 + 156) > a2 && (v4 = *(a1 + 144) + 56 * a2, *(v4 + 40) == HIDWORD(a2)) && (*(v4 + 45) & 0x80) == 0;
  os_unfair_lock_unlock((a1 + 16));
  return v5;
}

void *_CFXRegistrationPost(const void *a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v31 = *MEMORY[0x1E69E9840];
  if (a2 && a4)
  {
    if (!_CFXRegistrationPost_operationQueueClass)
    {
      _CFXRegistrationPost_operationQueueClass = objc_lookUpClass("NSOperationQueue");
    }

    if (!_CFXRegistrationPost_blockOperationClass)
    {
      _CFXRegistrationPost_blockOperationClass = objc_lookUpClass("NSBlockOperation");
    }

    v30 = 0uLL;
    v11 = *(a2 + 24);
    CFXNotificationHandlerCopy(&v30, *(a2 + 32), *(a2 + 40), v11);
    v12 = *(&v30 + 1) & (v11 << 46 >> 63);
    if ((v11 & 0x400) != 0)
    {
      v13 = a5;
    }

    v14 = *(a2 + 48);
    if (v11 & 0x10000 | v12)
    {
      v15 = 1;
    }

    else
    {
      v15 = a3;
    }

    CFRetain(a1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v21 = ___CFXRegistrationPost_block_invoke;
    v22 = &unk_1E6D81D38;
    v24 = v30;
    v29 = v15;
    v25 = a1;
    v26 = v14;
    v23 = a4;
    v27 = a5;
    v28 = v11;
    if (v12)
    {
      if ([_CFXRegistrationPost_operationQueueClass currentQueue] != v12 && (pthread_main_np() != 1 || objc_msgSend(_CFXRegistrationPost_operationQueueClass, "mainQueue") != v12))
      {
        v5 = objc_opt_new();
        [v5 addExecutionBlock:block];
        [v12 addOperation:v5];
        goto LABEL_24;
      }

      goto LABEL_20;
    }

    if (*(a2 + 26))
    {
      v17 = qos_class_main();
      global_queue = dispatch_get_global_queue(v17, 2uLL);
    }

    else
    {
      if (!a3)
      {
LABEL_20:
        v21(block);
LABEL_23:
        v5 = 0;
        goto LABEL_24;
      }

      global_queue = MEMORY[0x1E69E96A0];
    }

    dispatch_async(global_queue, block);
    goto LABEL_23;
  }

LABEL_24:
  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

id __CFNOTIFICATIONCENTER_IS_CALLING_OUT_TO_AN_OBSERVER__(id result, const char *a2, uint64_t a3, void *a4, void *a5, int a6)
{
  if (kCFXNotificationPlaceholderObserver == a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  if ((a6 & 0x20000) != 0)
  {
    return (*(a2 + 2))(a2, a5);
  }

  if ((a6 & 0x40000) != 0)
  {
    return [v8 a2];
  }

  if ((a6 & 0x80000) != 0)
  {
    v9 = result;
    v10 = [a5 name];
    v11 = atomic_load((v9 + 8));
    if (v11)
    {
      v12 = @"kCFNotificationAnyObject";
    }

    else
    {
      v12 = [a5 object];
    }

    v13 = atomic_load((v9 + 8));
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = [a5 userInfo];
    }

    return (a2)(v9, v8, v10, v12, v14);
  }

  return result;
}

uint64_t _CFStartOfLastPathComponent(_WORD *a1, uint64_t a2)
{
  if (a2 < 2)
  {
    return 0;
  }

  v2 = a2;
  do
  {
    v3 = v2 - 1;
    if (v2 == 1)
    {
      break;
    }

    v4 = a1[v2-- - 2];
  }

  while (v4 != 47);
  if (a2 == 2 || a1[1] != 58 || (*a1 & 0xFFDFu) - 65 >= 0x1A)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t *_CFXNotificationHandlerRelease(uint64_t *result, int a2, unsigned int *a3)
{
  v3 = result;
  if ((a2 & 0x20000) != 0)
  {
    if (*result)
    {
      result = __CFXNotificationDisposalListAddItem(a3, *result);
    }

    v5 = v3[1];
    if (v5)
    {
      result = __CFXNotificationDisposalListAddItem(a3, v5);
    }
  }

  *v3 = 0;
  v3[1] = 0;
  return result;
}

void _CFXNotificationRegistrationDispose(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  memset(v9, 0, sizeof(v9));
  _CFXNotificationHandlerRelease((a1 + 32), v4, v9);
  _CFXNotificationDisposalListRelease(v9);
  if (a2)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  if ((*(a1 + 25) & 4) != 0)
  {
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = *MEMORY[0x1E69E9840];

    CFRelease(v6);
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
  }
}

void CFBasicHashRemoveAllValues(uint64_t a1)
{
  v1 = atomic_load((a1 + 8));
  if ((v1 & 0x40) != 0)
  {
    __break(1u);
  }

  else if (*(a1 + 26))
  {
    __CFBasicHashDrain(a1);
  }
}

void _CFXNotificationRegistrationBufferDestroy(unsigned int *a1)
{
  if (*a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      _CFXNotificationRegistrationDispose(*(a1 + 2) + v2, *(a1 + 8));
      ++v3;
      v2 += 64;
    }

    while (v3 < *a1);
  }

  v4 = *(a1 + 2);
  if (v4 != a1 + 6)
  {

    free(v4);
  }
}

void _CFXNotificationPost(unint64_t *a1, void *a2, uint64_t a3)
{
  v47[32] = *MEMORY[0x1E69E9840];
  v6 = atomic_load(a1 + 1);
  if (v6 & 2) != 0 && (__CFIsDistNoteDaemon)
  {
    goto LABEL_34;
  }

  v7 = [a2 name];
  v8 = [a2 object];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = @"kCFNotificationAnyObject";
  }

  if (!a2 || !v7)
  {
    __break(1u);
    return;
  }

  v10 = _CFAutoreleasePoolPush();
  v11 = v10;
  v12 = atomic_load(a1 + 1);
  if (a3 & 0x100000) == 0 && (v12)
  {
    v47[0] = 0;
    v49.length = CFStringGetLength(v7);
    v49.location = 0;
    CFStringGetBytes(v7, v49, 0x8000100u, 0, 0, 0, 0, v47);
    v13 = malloc_type_malloc(v47[0] + 1, 0x100004077774924uLL);
    v50.length = CFStringGetLength(v7);
    v50.location = 0;
    CFStringGetBytes(v7, v50, 0x8000100u, 0, 0, v13, v47[0], 0);
    v13[v47[0]] = 0;
    notify_post(v13);
    free(v13);
LABEL_11:
    _CFAutoreleasePoolPop(v11);
LABEL_34:
    v27 = *MEMORY[0x1E69E9840];
    return;
  }

  v14 = atomic_load(a1 + 1);
  if ((a3 & 0x100000) != 0 || (v14 & 2) == 0)
  {
    v18 = _CFAutoreleasePoolPop(v10);
    memset(v47, 0, 256);
    MEMORY[0x1EEE9AC00](v18, v19);
    bzero(&v43, 0x810uLL);
    v42 = 0x2000000000;
    v44 = &v45;
    CFXNotificationRegistrarFind(a1[2], v7, v9, &v42);
    if (v42 < 0x21)
    {
      v20 = v47;
      if (v42)
      {
LABEL_21:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        do
        {
          if (CFXNotificationRegistrarValidateToken(a1[2], v44[v21 + 6]))
          {
            v24 = _CFXRegistrationPost(a1, &v44[v21], 0, a2, v44[v21 + 2]);
            if (v24)
            {
              v20[v23++] = v24;
            }
          }

          ++v22;
          v21 += 8;
        }

        while (v22 < v42);
        _CFXNotificationRegistrationBufferDestroy(&v42);
        if (v23 >= 1)
        {
          v25 = v20;
          do
          {
            v26 = *v25++;
            [v26 waitUntilFinished];

            --v23;
          }

          while (v23);
        }

        goto LABEL_32;
      }
    }

    else
    {
      v20 = malloc_type_malloc(8 * v42, 0x80040B8603338uLL);
      if (v42)
      {
        goto LABEL_21;
      }
    }

    _CFXNotificationRegistrationBufferDestroy(&v42);
LABEL_32:
    if (v20 != v47)
    {
      free(v20);
    }

    goto LABEL_34;
  }

  v15 = [a2 userInfo];
  if (v15)
  {
    Data = CFPropertyListCreateData(&__kCFAllocatorSystemDefault, v15, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (!Data)
    {
      v17 = *MEMORY[0x1E69E9840];

      _CFAutoreleasePoolPop(v11);
      return;
    }
  }

  else
  {
    Data = 0;
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) == 0)
  {
    if (Data)
    {
      DispatchData = _CFDataCreateDispatchData(Data);
      v46 = xpc_data_create_with_dispatch_data(DispatchData);
      dispatch_release(DispatchData);
    }

    else
    {
      v46 = 0;
    }

    v47[0] = 0;
    v51.length = CFStringGetLength(v7);
    v51.location = 0;
    CFStringGetBytes(v7, v51, 0x8000100u, 0, 0, 0, 0, v47);
    v30 = malloc_type_malloc(v47[0] + 1, 0x100004077774924uLL);
    v52.length = CFStringGetLength(v7);
    v52.location = 0;
    CFStringGetBytes(v7, v52, 0x8000100u, 0, 0, v30, v47[0], 0);
    v30[v47[0]] = 0;
    v47[0] = 0;
    v53.length = CFStringGetLength(v9);
    v53.location = 0;
    CFStringGetBytes(v9, v53, 0x8000100u, 0, 0, 0, 0, v47);
    v31 = malloc_type_malloc(v47[0] + 1, 0x100004077774924uLL);
    v54.length = CFStringGetLength(v9);
    v54.location = 0;
    CFStringGetBytes(v9, v54, 0x8000100u, 0, 0, v31, v47[0], 0);
    v31[v47[0]] = 0;
    v32 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v32, "method", "post");
    xpc_dictionary_set_uint64(v32, "version", 1uLL);
    xpc_dictionary_set_string(v32, "name", v30);
    xpc_dictionary_set_string(v32, "object", v31);
    v33 = v46;
    xpc_dictionary_set_value(v32, "userinfo", v46);
    xpc_dictionary_set_uint64(v32, "options", a3);
    Current = CFAbsoluteTimeGetCurrent();
    os_unfair_lock_lock_with_options();
    v35 = *&_CFXNotificationPost_lastPost;
    if (*&_CFXNotificationPost_lastPost == 0.0)
    {
      _CFXNotificationPost_lastPost = *&Current;
    }

    else
    {
      v36 = 0;
      v37 = 0;
      _CFXNotificationPost_lastPost = *&Current;
      _CFXNotificationPost_sampleIndex = (_CFXNotificationPost_sampleIndex + 1) % 0x64uLL;
      _CFXNotificationPost_samples[_CFXNotificationPost_sampleIndex] = Current - v35;
      v38 = 0.0;
      do
      {
        v39 = _CFXNotificationPost_samples[v36];
        if (v39 != 0.0)
        {
          ++v37;
          v38 = v38 + v39;
        }

        ++v36;
      }

      while (v36 != 100);
      if (v37 > 0xA && Current - *&_CFXNotificationPost_lastWarning > 10.0)
      {
        v40 = v37 / v38;
        if (v40 > 60.0)
        {
          _CFXNotificationPost_lastWarning = *&Current;
          os_unfair_lock_unlock(&_CFXNotificationPost_sampleLock);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            _CFXNotificationPost_cold_1(v40);
          }

          goto LABEL_60;
        }
      }
    }

    os_unfair_lock_unlock(&_CFXNotificationPost_sampleLock);
LABEL_60:
    v41 = a1[3];
    _CFSuddenTerminationDisable();
    xpc_connection_send_message(v41, v32);
    xpc_connection_send_barrier(v41, &__block_literal_global_123);
    xpc_release(v32);
    free(v31);
    free(v30);
    if (v33)
    {
      xpc_release(v33);
    }

    if (Data)
    {
      CFRelease(Data);
    }

    goto LABEL_11;
  }

  if (!Data)
  {
    goto LABEL_34;
  }

  v29 = *MEMORY[0x1E69E9840];

  CFRelease(Data);
}

void CFXNotificationRegistrarFind(uint64_t a1, __CFString *cf1, CFTypeRef a3, unsigned int *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v28 = &v30;
  v27 = 0;
  v26 = 32;
  v25 = 0;
  v7 = (*(a1 + 24) >> 1) & 1;
  *(a4 + 8) = (*(a1 + 24) & 2) != 0;
  v8 = @"kCFNotificationAnyName";
  if (cf1)
  {
    if (@"kCFNotificationAnyName" == cf1)
    {
      v8 = cf1;
    }

    else if (CFEqual(cf1, @"kCFNotificationAnyName"))
    {
      v8 = @"kCFNotificationAnyName";
    }

    else
    {
      v8 = cf1;
    }
  }

  if (!a3)
  {
    a3 = @"kCFNotificationAnyObject";
    v24 = CFHash(v8);
    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_16:
    v10 = CFHash(a3);
    goto LABEL_17;
  }

  if (v7)
  {
    if (@"kCFNotificationAnyObject" != a3 && CFEqual(a3, @"kCFNotificationAnyObject"))
    {
      a3 = @"kCFNotificationAnyObject";
    }

    v24 = CFHash(v8);
    goto LABEL_16;
  }

  v24 = CFHash(v8);
LABEL_11:
  v10 = (a3 >> 5) & 0x7F;
LABEL_17:
  os_unfair_lock_lock((a1 + 16));
  if (v8 != @"kCFNotificationAnyName")
  {
    Name = _CFXNotificationRegistrarFindName(a1, a1 + 32, v8, v24, 0);
    if (Name)
    {
      v12 = Name;
      Object = _CFXNotificationRegistrarFindObject(a1, Name + 24, a3, v10, v7, 0);
      if (Object)
      {
        v14 = Object;
        v15 = CFCachedStringCopyString((v12 + 8));
        _CFXNotificationRegistrarFindObservers(a1, (v14 + 16), v15, *(v14 + 8), a4, &v28, &v27, &v26, &v25);
        CFRelease(v15);
      }
    }
  }

  if (a3 != @"kCFNotificationAnyObject")
  {
    v16 = _CFXNotificationRegistrarFindObject(a1, a1 + 48, a3, v10, v7, 0);
    if (v16)
    {
      _CFXNotificationRegistrarFindObservers(a1, (v16 + 16), @"kCFNotificationAnyName", *(v16 + 8), a4, &v28, &v27, &v26, &v25);
    }
  }

  v17 = _CFXNotificationRegistrarFindName(a1, a1 + 64, v8, v24, 0);
  if (v17)
  {
    v18 = v17;
    v19 = CFCachedStringCopyString((v17 + 8));
    _CFXNotificationRegistrarFindObservers(a1, (v18 + 24), v19, @"kCFNotificationAnyObject", a4, &v28, &v27, &v26, &v25);
    CFRelease(v19);
  }

  _CFXNotificationRegistrarFindObservers(a1, (a1 + 80), @"kCFNotificationAnyName", @"kCFNotificationAnyObject", a4, &v28, &v27, &v26, &v25);
  memset(v29, 0, sizeof(v29));
  v20 = v27;
  if (v27)
  {
    v21 = v28;
    do
    {
      v22 = *v21++;
      _CFXNotificationRegistrarInvalidateObserver(a1, v22, -1, -1, v29);
      --v20;
    }

    while (v20);
  }

  os_unfair_lock_unlock((a1 + 16));
  _CFXNotificationDisposalListRelease(v29);
  if (*(a1 + 24))
  {
    qsort(*(a4 + 2), *a4, 0x40uLL, _registrar_compare);
  }

  if (v25)
  {
    free(v28);
  }

  v23 = *MEMORY[0x1E69E9840];
}

const __CFString *_CFXNotificationRegistrarFindObservers(const __CFString *result, unsigned int *a2, const __CFString *a3, const __CFString *a4, unsigned int *a5, void **a6, unsigned int *a7, size_t *a8, _BYTE *a9)
{
  v33 = *a7;
  v9 = *a8;
  v30 = *a8;
  ptr = *a6;
  v29 = *a9;
  v10 = *a2;
  if (v10 != -1)
  {
    v14 = result;
    v32 = a5 + 6;
    do
    {
      v15 = &v14[4].data[56 * v10];
      v16 = *(v15 + 4);
      v17 = *a5;
      if (a5[1] >= *a5 + 1)
      {
        v20 = *(a5 + 2);
      }

      else
      {
        v18 = malloc_good_size((*a5 + 1) << 6);
        v19 = *(a5 + 2);
        if (v19 == v32)
        {
          v20 = malloc_type_malloc(v18 & 0x3FFFFFFFC0, 0x82DB78C4uLL);
          memcpy(v20, *(a5 + 2), *a5 << 6);
        }

        else
        {
          v20 = malloc_type_realloc(v19, v18 & 0x3FFFFFFFC0, 0xCD87958FuLL);
        }

        a5[1] = v18 >> 6;
        *(a5 + 2) = v20;
        v17 = *a5;
      }

      v21 = &v20[64 * v17];
      if ((*(v15 + 45) & 4) != 0)
      {
        result = objc_loadWeakRetained((v15 + 8));
        if (!result)
        {
          v23 = v33 + 1;
          if (v30 < v23)
          {
            v24 = malloc_good_size(4 * v23);
            if (v29)
            {
              result = malloc_type_realloc(ptr, v24 & 0x3FFFFFFFCLL, 0xCD87958FuLL);
              ptr = result;
            }

            else
            {
              v25 = malloc_type_malloc(v24 & 0x3FFFFFFFCLL, 0x82DB78C4uLL);
              result = memcpy(v25, ptr, 4 * v33);
              v29 = 1;
              ptr = v25;
            }

            v30 = v24 >> 2;
          }

          *(ptr + v33++) = v10;
          goto LABEL_17;
        }

        v21[2] = result;
        v17 = *a5;
      }

      else
      {
        v21[2] = *(v15 + 8);
      }

      *a5 = v17 + 1;
      CFXNotificationHandlerCopy(v21 + 4, *(v15 + 16), *(v15 + 24), *(v15 + 44));
      *v21 = CFStringCreateCopy(&__kCFAllocatorSystemDefault, a3);
      result = a4;
      if (*(a5 + 8))
      {
        result = CFStringCreateCopy(&__kCFAllocatorSystemDefault, a4);
      }

      v21[1] = result;
      v22 = *(v15 + 40);
      v21[3] = *(v15 + 44);
      v21[6] = (v10 | (v22 << 32));
      v21[7] = *(v15 + 32);
LABEL_17:
      v10 = v16;
    }

    while (v16 != 0xFFFFFFFFLL);
  }

  *a6 = ptr;
  *a7 = v33;
  *a8 = v30;
  *a9 = v29;
  return result;
}

id __NSOrderedSetGetIndexesPassingTest(void *a1, unsigned int (**a2)(void, void, void, uint64_t *), uint64_t a3, void *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  if (![a1 count] || ((a3 & 0x1000000000000000) != 0 ? (v7 = objc_msgSend(a4, "firstIndex"), v38 = objc_msgSend(a4, "lastIndex")) : (v7 = 0, v38 = objc_msgSend(a1, "count") - 1), v7 == 0x7FFFFFFFFFFFFFFFLL || v38 == 0x7FFFFFFFFFFFFFFFLL))
  {
    __CFLookUpClass("NSIndexSet");
    v9 = objc_opt_new();
    v10 = *MEMORY[0x1E69E9840];

    return v9;
  }

  else
  {
    if (a3)
    {
      v8 = __CFActiveProcessorCount();
      if (v8 < 2)
      {
        a3 &= ~1uLL;
      }
    }

    else
    {
      v8 = 1;
    }

    __CFLookUpClass("NSMutableIndexSet");
    v37 = objc_opt_new();
    if ((a3 & 3) != 0)
    {
      v12 = (v38 - v7 + 1) / v8 / v8;
      if (v12 >= 0x10)
      {
        if (v12 <= 0x1000)
        {
          v13 = (v12 + 15) & 0x3FF0;
        }

        else
        {
          v13 = 4096;
        }
      }

      else
      {
        v13 = 16;
      }

      v21 = v13 + v38 - v7;
      if (a3)
      {
        v41[0] = 0;
        v41[1] = v41;
        v41[2] = 0x2020000000;
        v42 = 0;
        v46 = 0u;
        v45 = 0u;
        v44 = 0u;
        v47 = 0;
        v43 = 850045857;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ____NSOrderedSetGetIndexesPassingTest_block_invoke;
        block[3] = &unk_1E6D823B0;
        block[8] = v41;
        block[9] = v7;
        block[10] = v13;
        block[11] = v38;
        block[4] = a1;
        block[5] = a4;
        block[6] = v37;
        block[7] = a2;
        block[12] = a3;
        block[13] = &v43;
        dispatch_apply(v21 / v13, 0, block);
        _Block_object_dispose(v41, 8);
      }

      else
      {
        contexta = a2;
        v36 = a1;
        if (v13 <= v21)
        {
          v22 = v7;
          v23 = 0;
          v24 = v13 - 1;
          v25 = 1;
          v26 = v22;
          v27 = v38;
          v28 = v21 / v13;
          do
          {
            if ((a3 & 2) != 0)
            {
              if (v24 >= v27 - v22)
              {
                v30 = v22;
              }

              else
              {
                v30 = 1 - v13 + v27;
              }

              v29 = v27;
            }

            else
            {
              if (v24 >= v27 - v22)
              {
                v29 = v38;
              }

              else
              {
                v29 = v24 + v23 * v13 + v22;
              }

              v30 = v26;
            }

            if (__NSOrderedSetChunkIterate(v36, a3, v30, v29, a4, contexta, 0, v37, 0))
            {
              break;
            }

            ++v23;
            v27 -= v13;
            v26 += v13;
          }

          while (v25++ < v28);
        }
      }
    }

    else
    {
      context = _CFAutoreleasePoolPush();
      LOBYTE(v43) = 0;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v14 = [a1 countByEnumeratingWithState:&v49 objects:v48 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = 0;
        v17 = 0;
        v18 = *v50;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v50 != v18)
            {
              objc_enumerationMutation(a1);
            }

            v20 = *(*(&v49 + 1) + 8 * i);
            if ((a3 & 0x1000000000000000) == 0 || v7 <= v16 && v16 <= v38 && [a4 containsIndex:v16])
            {
              if (a2[2](a2, v20, v16, &v43))
              {
                [v37 addIndex:v16];
              }

              if (v43)
              {
                goto LABEL_35;
              }

              if (v17 >= 0x3FF)
              {
                _CFAutoreleasePoolPop(context);
                context = _CFAutoreleasePoolPush();
                v17 = 0;
              }

              else
              {
                ++v17;
              }
            }

            ++v16;
          }

          v15 = [a1 countByEnumeratingWithState:&v49 objects:v48 count:16];
        }

        while (v15);
      }

LABEL_35:
      _CFAutoreleasePoolPop(context);
    }

    v32 = [v37 copy];

    v33 = *MEMORY[0x1E69E9840];
    return v32;
  }
}

objc_class *__NSOrderedSetParameterCheckIterate(objc_class *result, const char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v25[1] = *MEMORY[0x1E69E9840];
  if ((a4 & 0x1000000000000000) != 0)
  {
    v6 = result;
    if (!a5)
    {
      v15 = __CFExceptionProem(result, a2);
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: index set is nil", v15);
      v17 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16), 0];
      objc_exception_throw(v17);
    }

    v7 = [a5 lastIndex];
    result = [(objc_class *)v6 count];
    if ((v7 & 0x8000000000000000) != 0 || v7 != 0x7FFFFFFFFFFFFFFFLL && result <= v7)
    {
      if (result)
      {
        v18 = result;
        v9 = _os_log_pack_size();
        v11 = v25 - ((MEMORY[0x1EEE9AC00](v9, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
        v20 = _os_log_pack_fill();
        v21 = PROEM_SEL_1(a2);
        v18 = (v18 - 1);
        __os_log_helper_1_2_4_8_32_8_32_8_0_8_0(v20, "NSOrderedSet", v21, v7, v18);
        v24 = PROEM_SEL_1(a2);
        v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** [%s %s]: index %lu beyond bounds [0 .. %lu]", "NSOrderedSet", v24, v7, v18);
      }

      else
      {
        v9 = _os_log_pack_size();
        v11 = v25 - ((MEMORY[0x1EEE9AC00](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        v12 = _os_log_pack_fill();
        v13 = PROEM_SEL_1(a2);
        __os_log_helper_1_2_3_8_32_8_32_8_0(v12, "NSOrderedSet", v13, v7);
        v23 = PROEM_SEL_1(a2);
        v14 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** [%s %s]: index %lu beyond bounds for empty array", "NSOrderedSet", v23, v7);
      }

      v22 = [NSException exceptionWithName:@"NSRangeException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v14) osLogPack:0 size:v11, v9];
      objc_exception_throw(v22);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _NSIsNSIndexSet()
{
  if (_NSIndexSetClass || (Class = objc_getClass("NSIndexSet"), (_NSIndexSetClass = Class) != 0))
  {
    LOBYTE(Class) = objc_opt_isKindOfClass();
  }

  return Class & 1;
}

CFDictionaryRef CFBundleGetInfoDictionary(CFBundleRef bundle)
{
  __CFCheckCFInfoPACSignature(bundle);
  v2 = _CFGetNonObjCTypeID(bundle);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  os_unfair_lock_lock(bundle + 28);
  _CFBundleRefreshInfoDictionaryAlreadyLocked(bundle);
  os_unfair_lock_unlock(bundle + 28);
  return *(bundle + 3);
}

void _CFBundleRefreshInfoDictionaryAlreadyLocked(uint64_t a1)
{
  *&v34[14] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 24))
  {
    v31 = 0;
    v3 = _CFBundleCopyInfoDictionaryInDirectoryWithVersion(&__kCFAllocatorSystemDefault, *(a1 + 16), &v31, 0, *(a1 + 55), *(a1 + 53));
    *(a1 + 24) = v3;
    v4 = *(a1 + 216);
    if (v4)
    {
      CFRelease(v4);
      v3 = *(a1 + 24);
    }

    *(a1 + 216) = v31;
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"CFBundleNumericVersion");
      if (Value || (Value = CFDictionaryGetValue(v3, @"CFBundleVersion")) != 0)
      {
        v6 = Value;
        v7 = CFGetTypeID(Value);
        if (v7 == CFStringGetTypeID())
        {
          Length = CFStringGetLength(v6);
          if ((Length - 11) < 0xFFFFFFFFFFFFFFF6)
          {
LABEL_10:
            v9 = 0;
LABEL_51:
            *buffer = v9;
            v25 = CFGetAllocator(a1);
            v26 = CFNumberCreate(v25, kCFNumberSInt32Type, buffer);
            CFDictionarySetValue(v3, @"CFBundleNumericVersion", v26);
            CFRelease(v26);
            goto LABEL_2;
          }

          v11 = Length;
          v35.location = 0;
          v35.length = Length;
          CFStringGetCharacters(v6, v35, buffer);
          v12 = buffer[0];
          if ((buffer[0] - 58) >= 0xFFF6u)
          {
            v17 = buffer[0] - 48;
            if (v11 < 2)
            {
              v18 = 0;
              v13 = 0;
              v20 = 0;
              v21 = 0;
              v22 = 0x8000;
              v16 = buffer[0] - 48;
              v17 = 0;
LABEL_47:
              v9 = v22 + (v18 << 20) + (v16 << 24) + (v17 << 28) + v13 + v20;
              if (v21)
              {
                v9 = 0;
              }

              if (v20 > 0xFF)
              {
                v9 = 0;
              }

              goto LABEL_51;
            }

            v15 = &v33;
            v12 = buffer[1];
            if ((buffer[1] - 58) >= 0xFFF6u)
            {
              v16 = buffer[1] - 48;
              if (v11 == 2)
              {
                goto LABEL_28;
              }

              v12 = v33;
              if (v33 != 46)
              {
                v13 = 0;
                v18 = 0;
                v11 -= 2;
                goto LABEL_40;
              }

              v15 = v34;
              v14 = -3;
LABEL_17:
              v11 += v14;
              if (v11)
              {
                v12 = *v15;
                if ((v12 - 58) < 0xFFF6u)
                {
                  v13 = 0;
                  v18 = 0;
LABEL_40:
                  v19 = v17;
                  goto LABEL_41;
                }

                v18 = v12 - 48;
                v23 = v11 - 1;
                if (v11 == 1)
                {
                  goto LABEL_30;
                }

                v24 = v15 + 1;
                v12 = v15[1];
                if (v12 != 46)
                {
LABEL_38:
                  v13 = 0;
                  v11 = v23;
                  v15 = v24;
                  goto LABEL_40;
                }

                v23 = v11 - 2;
                if (v11 != 2)
                {
                  v24 = v15 + 2;
                  v12 = v15[2];
                  if ((v12 - 58) >= 0xFFF6u)
                  {
                    v13 = (v12 << 16) - 3145728;
                    v11 -= 3;
                    if (v11)
                    {
                      v30 = v15[3];
                      v15 += 3;
                      v12 = v30;
                      goto LABEL_40;
                    }

                    goto LABEL_31;
                  }

                  goto LABEL_38;
                }

LABEL_30:
                v13 = 0;
LABEL_31:
                v20 = 0;
                v21 = 0;
                v22 = 0x8000;
                goto LABEL_47;
              }

LABEL_28:
              v18 = 0;
              goto LABEL_30;
            }

            v13 = 0;
            if (buffer[1] == 46)
            {
              v14 = -2;
              v16 = buffer[0] - 48;
              goto LABEL_16;
            }

            --v11;
            v15 = &buffer[1];
            v19 = 0;
            v16 = buffer[0] - 48;
          }

          else
          {
            v13 = 0;
            if (buffer[0] == 46)
            {
              v14 = -1;
              v15 = &buffer[1];
              v16 = 0;
LABEL_16:
              v17 = 0;
              goto LABEL_17;
            }

            v15 = buffer;
            v19 = 0;
            v16 = 0;
          }

          v18 = 0;
LABEL_41:
          if ((v12 - 97) > 5 || ((0x2Bu >> (v12 - 97)) & 1) == 0)
          {
            goto LABEL_10;
          }

          v22 = dword_183449F30[(v12 - 97)];
          if (v11 == 1)
          {
            v20 = 0;
          }

          else
          {
            v27 = v15[1];
            if ((v27 - 58) < 0xFFFFFFF6)
            {
              goto LABEL_10;
            }

            v20 = v27 - 48;
            if (v11 != 2)
            {
              v28 = v15[2];
              if ((v28 - 58) < 0xFFFFFFF6)
              {
                goto LABEL_10;
              }

              v20 = v28 + 10 * v20 - 48;
              if (v11 != 3)
              {
                v29 = v15[3];
                if ((v29 - 58) < 0xFFFFFFF6)
                {
                  goto LABEL_10;
                }

                v20 = v29 + 10 * v20 - 48;
                v21 = v11 != 4;
                goto LABEL_46;
              }
            }
          }

          v21 = 0;
LABEL_46:
          v17 = v19;
          goto LABEL_47;
        }

        v10 = CFGetTypeID(v6);
        if (v10 != CFNumberGetTypeID())
        {
          CFDictionaryRemoveValue(v3, @"CFBundleNumericVersion");
        }
      }
    }
  }

LABEL_2:
  v1 = *MEMORY[0x1E69E9840];
}

CFMutableStringRef _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption(unint64_t *a1, void *a2, CFMutableStringRef a3, __CFString *a4, const __CFArray *a5, int a6, CFTypeRef *a7)
{
  v55 = *MEMORY[0x1E69E9840];
  key = a2;
  __CFCheckCFInfoPACSignature(a1);
  v14 = _CFGetNonObjCTypeID(a1);
  if (v14 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v14);
  }

  if (a2)
  {
    CFBundleAllowMixedLocalizations();
    if (!a4 || CFEqual(a4, &stru_1EF068AA8))
    {
      a4 = @"Localizable";
    }

    v15 = [[NSSet alloc] initWithObjects:&key count:1];
    cf = 0;
    v16 = _copyStringTable(a1, a4, v15, a5, a6, &cf);
    if (v16)
    {
      v17 = v16;
      Value = CFDictionaryGetValue(v16, key);
      if (Value)
      {
        MutableCopy = Value;
        CFRetain(Value);
        CFRelease(v17);

        goto LABEL_27;
      }

      CFRelease(v17);
    }

    if (a3 && !CFEqual(a3, &stru_1EF068AA8))
    {
      v22 = a3;
    }

    else
    {
      v22 = key;
    }

    v24 = CFRetain(v22);
    if (_CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_once != -1)
    {
      _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_cold_1();
    }

    if (_CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_capitalize)
    {
      MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v24);
      v25 = _CFBundleLocalizedStringLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v44 = key;
        v45 = 2112;
        v46 = a4;
        v47 = 2112;
        v48 = a1;
        _os_log_error_impl(&dword_1830E6000, v25, OS_LOG_TYPE_ERROR, "ERROR: %@ not found in table %@ of bundle %@", buf, 0x20u);
      }

      CFStringUppercase(MutableCopy, 0);
      CFRelease(v24);
    }

    else
    {
      MutableCopy = v24;
    }

LABEL_27:
    if (_CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_once_10 != -1)
    {
      _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_cold_2();
    }

    if (CFStringGetLength(MutableCopy) >= 1)
    {
      if (_CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_doubleStrings == 1)
      {
        v26 = _CFDoubledStringCreate(MutableCopy);
        CFRelease(MutableCopy);
        MutableCopy = v26;
      }

      if (_CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_accentuateStrings == 1)
      {
        v27 = _CFAccentuatedStringCreate(MutableCopy);
        CFRelease(MutableCopy);
        MutableCopy = v27;
      }

      if (_CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_forceRightToLeftStrings == 1)
      {
        v28 = _CFRLORightToLeftStringCreate(MutableCopy);
        CFRelease(MutableCopy);
        MutableCopy = v28;
      }

      if (_CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_surroundStrings == 1)
      {
        v29 = _CFAffixedStringCreate(MutableCopy, @"[# ", @" #]");
        CFRelease(MutableCopy);
        MutableCopy = v29;
      }

      if (_CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption_tallStrings == 1)
      {
        v30 = _CFTallStringCreate(MutableCopy);
        CFRelease(MutableCopy);
        MutableCopy = v30;
      }
    }

    if (!a6 && MutableCopy)
    {
      v31 = _CFStringCreateByParsingMarkdownAndInflectingIfNeeded(MutableCopy, a1, cf);
      CFRelease(MutableCopy);
      MutableCopy = v31;
    }

    if (a7)
    {
      *a7 = cf;
    }

    else if (cf)
    {
      CFRelease(cf);
    }

    if (a5 && (v32 = _CFBundleLocalizedStringLogger(), os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG)))
    {
      Mutable = CFStringCreateMutable(0, 0);
      CFStringAppend(Mutable, @"[");
      if (CFArrayGetCount(a5) >= 1)
      {
        v34 = 0;
        do
        {
          if (v34)
          {
            CFStringAppend(Mutable, @", ");
          }

          ValueAtIndex = CFArrayGetValueAtIndex(a5, v34);
          CFStringAppend(Mutable, ValueAtIndex);
          ++v34;
        }

        while (v34 < CFArrayGetCount(a5));
      }

      CFStringAppend(Mutable, @"]");
    }

    else
    {
      Mutable = 0;
    }

    v36 = _CFBundleLocalizedStringLogger();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG) && (v37 = key, v38 = _CFBundleLocalizedStringLogger(), os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG)))
    {
      v40 = @"<same as value>";
      if (MutableCopy != a3)
      {
        v40 = MutableCopy;
      }

      v44 = a1;
      *buf = 138479107;
      v45 = 2112;
      if (MutableCopy == v37)
      {
        v40 = @"<same as key>";
      }

      v46 = key;
      v47 = 2112;
      v48 = a3;
      v49 = 2114;
      v50 = a4;
      v51 = 2114;
      v52 = Mutable;
      v53 = 2114;
      v54 = v40;
      _os_log_debug_impl(&dword_1830E6000, v38, OS_LOG_TYPE_DEBUG, "Bundle: %{private}@, key: %@, value: %@, table: %{public}@, localizationNames: %{public}@, result: %{public}@", buf, 0x3Eu);
      if (!Mutable)
      {
        goto LABEL_60;
      }
    }

    else if (!Mutable)
    {
LABEL_60:
      v39 = *MEMORY[0x1E69E9840];
      return MutableCopy;
    }

    CFRelease(Mutable);
    goto LABEL_60;
  }

  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v21 = a3;
  }

  else
  {
    v21 = &stru_1EF068AA8;
  }

  return CFRetain(v21);
}

uint64_t CFBundleAllowMixedLocalizations()
{
  if (CFBundleAllowMixedLocalizations_once != -1)
  {
    CFBundleAllowMixedLocalizations_cold_1();
  }

  return CFBundleAllowMixedLocalizations_allowMixed;
}

CFDictionaryRef _copyStringTable(uint64_t a1, __CFString *a2, CFTypeRef cf, const __CFArray *a4, unsigned __int8 a5, CFTypeRef *a6)
{
  v46[5] = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v12 = CFRetain(cf);
  }

  else
  {
    v12 = 0;
  }

  if (CFStringHasSuffix(a2, @".nocache"))
  {
    v13 = _CFExecutableLinkedOnOrAfter(5uLL);
    v14 = 0;
    if (a4 || v13)
    {
      goto LABEL_36;
    }

LABEL_10:
    os_unfair_lock_lock_with_options();
    v15 = *(a1 + 144);
    if (v15 && (Value = CFDictionaryGetValue(v15, a2)) != 0)
    {
      v17 = Value;
      v18 = *(a1 + 152);
      if (v18 && CFSetContainsValue(v18, a2))
      {
        Copy = CFDictionaryCreateCopy(&__kCFAllocatorSystemDefault, v17);
LABEL_18:
        v21 = Copy;
        v22 = 0;
        goto LABEL_28;
      }

      if (v12)
      {
        *&v35 = 0;
        *(&v35 + 1) = &v35;
        v36 = 0x2020000000uLL;
        cfa[0] = MEMORY[0x1E69E9820];
        cfa[1] = 3221225472;
        *&v41 = ___stringTableFromCacheSatisfyingRequest_block_invoke;
        *(&v41 + 1) = &unk_1E6DD15E8;
        *&v43 = a1;
        *(&v43 + 1) = a2;
        cf1[0] = &v35;
        cf1[1] = v17;
        CFSetApply(v12, cfa);
        v22 = *(*(&v35 + 1) + 24);
        if (v22)
        {
          v21 = 0;
        }

        else
        {
          v21 = CFDictionaryCreateCopy(&__kCFAllocatorSystemDefault, v17);
        }

        _Block_object_dispose(&v35, 8);
LABEL_28:
        os_unfair_lock_unlock((a1 + 112));
        if (v21)
        {
          if (a6)
          {
            *a6 = 0;
          }

          if (v12)
          {
            goto LABEL_98;
          }

          goto LABEL_99;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v20 = *(a1 + 152);
      if (v20 && CFSetContainsValue(v20, a2))
      {
        Copy = CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        goto LABEL_18;
      }

      if (v12)
      {
        v22 = CFRetain(v12);
LABEL_25:
        os_unfair_lock_unlock((a1 + 112));
LABEL_33:
        if (v12)
        {
          CFRelease(v12);
        }

        v14 = 1;
        v12 = v22;
        goto LABEL_36;
      }
    }

    v22 = 0;
    goto LABEL_25;
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v14 = 0;
LABEL_36:
  v44 = 0u;
  *theDict = 0u;
  *cf1 = 0u;
  v43 = 0u;
  *cfa = 0u;
  v41 = 0u;
  _CFBundleGetStringsSources(a1, 1, a2, a4, cfa);
  BYTE8(v44) = v14;
  theDict[0] = 0;
  *(&v44 + 9) = 0;
  *(&v44 + 13) = 0;
  theDict[1] = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v41)
  {
    if (!v44)
    {
      BYTE9(v44) = 1;
    }

    BYTE12(v44) = 1;
  }

  if (cf1[1])
  {
    if (!BYTE1(v44))
    {
      BYTE9(v44) = 1;
    }

    BYTE13(v44) = 1;
  }

  if (*(&v43 + 1))
  {
    if (!BYTE2(v44))
    {
      BYTE9(v44) = 1;
    }

    BYTE14(v44) = 1;
  }

  Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (BYTE3(v44))
  {
    if (BYTE13(v44))
    {
      _loadStringsDictTable(a1, a2, v12, Mutable, cfa, a6);
    }

    else if (BYTE14(v44))
    {
      _loadLocTable(a1, a2, cf1[0], v12, Mutable, cfa, a6);
    }
  }

  if (BYTE12(v44))
  {
    StringsFromData = _loadStringsFromData(a1, a2, v12, v41, v44, theDict[1], cfa);
    if (a6 && StringsFromData && !*a6)
    {
      *a6 = CFRetain(cfa[0]);
    }

    CFDictionaryApplyFunction(theDict[1], __CFStringsDictAddFunction, Mutable);
  }

  else if (BYTE14(v44))
  {
    _loadLocTable(a1, a2, cfa[1], v12, Mutable, cfa, a6);
  }

  if (!BYTE3(v44))
  {
    if (BYTE13(v44))
    {
      _loadStringsDictTable(a1, a2, v12, Mutable, cfa, a6);
    }

    else if (BYTE14(v44))
    {
      _loadLocTable(a1, a2, cf1[0], v12, Mutable, cfa, a6);
    }
  }

  if (BYTE11(v44))
  {
    *&v35 = theDict[1];
    *(&v35 + 1) = Mutable;
    *&v36 = a1;
    *(&v36 + 1) = *(&v41 + 1);
    *&v37 = a5;
    CFDictionaryApplyFunction(Mutable, __CFPlatformSpecificStringDictionaryApplyFunction, &v35);
    CFDictionaryApplyFunction(Mutable, __CFLocalizedFormatStringApplyFunction, &v35);
    CFDictionaryApplyFunction(Mutable, __CFVariableWidthStringDictionaryApplyFunction, &v35);
  }

  if (!v14)
  {
    v21 = Mutable;
    goto LABEL_95;
  }

  os_unfair_lock_lock_with_options();
  v25 = *(a1 + 144);
  if (!v25)
  {
    v26 = CFGetAllocator(a1);
    v25 = CFDictionaryCreateMutable(v26, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(a1 + 144) = v25;
  }

  v27 = CFDictionaryGetValue(v25, a2);
  if (!v27)
  {
    v28 = CFGetAllocator(a1);
    v27 = CFDictionaryCreateMutable(v28, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(*(a1 + 144), a2, v27);
    CFRelease(v27);
  }

  if (!WORD6(v44) && !BYTE14(v44))
  {
    goto LABEL_75;
  }

  if (cf)
  {
    MutableCopy = CFSetCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, cf);
    *&v35 = MEMORY[0x1E69E9820];
    *(&v35 + 1) = 3221225472;
    *&v36 = ___copyIngestedCacheResult_block_invoke;
    *(&v36 + 1) = &__block_descriptor_48_e18_v32__0r_v8r_v16_24l;
    *&v37 = v27;
    *(&v37 + 1) = MutableCopy;
    CFDictionaryApply(Mutable, &v35);
    if (CFSetGetCount(MutableCopy) >= 1)
    {
      v30 = *(a1 + 160);
      if (!v30)
      {
        v30 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        *(a1 + 160) = v30;
      }

      v31 = CFDictionaryGetValue(v30, a2);
      if (!v31)
      {
        v31 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringSetCallBacks);
        CFDictionarySetValue(*(a1 + 160), a2, v31);
        CFRelease(v31);
      }

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = ___copyIngestedCacheResult_block_invoke_2;
      v46[3] = &__block_descriptor_40_e13_v24__0r_v8_16l;
      v46[4] = v31;
      CFSetApply(MutableCopy, v46);
    }

    CFRelease(MutableCopy);
    goto LABEL_87;
  }

  if (CFDictionaryGetCount(Mutable) >= 1)
  {
    CFDictionaryApplyFunction(Mutable, __CFStringsDictAddFunction, v27);
  }

  else
  {
LABEL_75:
    BYTE10(v44) = 1;
    CFDictionaryRemoveValue(*(a1 + 144), a2);
    v27 = 0;
  }

LABEL_87:
  if (BYTE10(v44))
  {
    v32 = *(a1 + 152);
    if (!v32)
    {
      v32 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringSetCallBacks);
      *(a1 + 152) = v32;
    }

    CFSetAddValue(v32, a2);
  }

  if (v27)
  {
    v21 = CFDictionaryCreateCopy(&__kCFAllocatorSystemDefault, v27);
  }

  else
  {
    v21 = 0;
  }

  os_unfair_lock_unlock((a1 + 112));
  CFRelease(Mutable);
LABEL_95:
  v37 = *cf1;
  v38 = v43;
  v39 = v44;
  v35 = *cfa;
  v36 = v41;
  _CFBundleReleaseStringsSources(&v35);
  CFRelease(theDict[1]);
  if (theDict[0])
  {
    CFRelease(theDict[0]);
  }

  if (v12)
  {
LABEL_98:
    CFRelease(v12);
  }

LABEL_99:
  v33 = *MEMORY[0x1E69E9840];
  return v21;
}

void ___stringTableFromCacheSatisfyingRequest_block_invoke(uint64_t a1, const void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!CFDictionaryContainsKey(*(a1 + 40), a2))
  {
    v4 = *(*(a1 + 48) + 160);
    if (!v4 || (Value = CFDictionaryGetValue(v4, *(a1 + 56))) == 0 || !CFSetContainsValue(Value, a2))
    {
      v6 = *(*(*(a1 + 32) + 8) + 24);
      if (!v6)
      {
        *(*(*(a1 + 32) + 8) + 24) = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
        v6 = *(*(*(a1 + 32) + 8) + 24);
      }

      CFSetAddValue(v6, a2);
      v7 = _CFBundleLocalizedStringLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a1 + 48);
        v10 = *(a1 + 56);
        v11 = 138412802;
        v12 = v9;
        v13 = 2112;
        v14 = a2;
        v15 = 2112;
        v16 = v10;
        _os_log_debug_impl(&dword_1830E6000, v7, OS_LOG_TYPE_DEBUG, "Lazy cache miss for bundle: %@ key: %@ table: %@", &v11, 0x20u);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

CFStringRef CFBundleGetIdentifier(CFBundleRef bundle)
{
  result = CFBundleGetInfoDictionary(bundle);
  if (result)
  {

    return CFDictionaryGetValue(result, @"CFBundleIdentifier");
  }

  return result;
}

const __CFString *_CFStringNeedsMarkdownParsing(const __CFString *a1, CFBundleRef bundle)
{
  if (!bundle)
  {
    return 0;
  }

  result = CFBundleGetIdentifier(bundle);
  if (result)
  {
    v4 = result;
    v5.length = CFStringGetLength(result);
    v5.location = 0;
    result = CFStringFindWithOptionsAndLocale(v4, @"com.apple.", v5, 8uLL, 0, 0);
    if (result)
    {
      return (CFStringFind(a1, @"^[", 0).location != -1);
    }
  }

  return result;
}

uint64_t _CFStringCreateByParsingMarkdownAndInflectingIfNeeded(__CFString *a1, __CFBundle *a2, uint64_t a3)
{
  if (_CFStringNeedsMarkdownParsing(a1, a2))
  {
    FormatSpecifierConfiguration = _CFStringGetFormatSpecifierConfiguration(a1);

    return _CFStringCreateWithMarkdownAndConfiguration(a1, FormatSpecifierConfiguration, a2, a3);
  }

  else
  {
    CFRetain(a1);
    return a1;
  }
}

uint64_t _CFBundleLocalizedStringLogger()
{
  if (_CFBundleLocalizedStringLogger_onceToken != -1)
  {
    _CFBundleLocalizedStringLogger_cold_1();
  }

  return _CFBundleLocalizedStringLogger__log;
}

unint64_t _CFStringCreateTaggedPointerString(unsigned __int8 *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    result = &stru_1EF068AA8;
    goto LABEL_19;
  }

  if (!__CFTaggedStringClass)
  {
LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  if (a2 > 7)
  {
    if (a2 <= 0xB)
    {
      if (a2 >= 0xA)
      {
        v6 = 0;
        v9 = a2;
        while (1)
        {
          v10 = charToSixBitLookup_1[*a1];
          if (v10 > 0x1F)
          {
            break;
          }

          v6 = v10 | (32 * v6);
          ++a1;
          if (!--v9)
          {
LABEL_15:
            result = (v6 << 7) | (8 * a2) | 0x8000000000000002;
            v5 = result ^ *MEMORY[0x1E69E5910];
            goto LABEL_16;
          }
        }
      }

      else
      {
        v6 = 0;
        v7 = a2;
        while (1)
        {
          v8 = charToSixBitLookup_1[*a1];
          if (v8 > 0x3F)
          {
            break;
          }

          v6 = v8 | (v6 << 6);
          ++a1;
          if (!--v7)
          {
            goto LABEL_15;
          }
        }
      }
    }

    goto LABEL_18;
  }

  __memmove_chk();
  result = (8 * a2) | 0x8000000000000002;
  v5 = *MEMORY[0x1E69E5910] ^ result;
LABEL_16:
  if ((~v5 & 0xC000000000000007) != 0)
  {
    result = v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7));
  }

LABEL_19:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void __CFArmNextTimerInMode(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 120);
  if (!v2)
  {
    v7 = -1;
    v6 = -1;
    goto LABEL_34;
  }

  Count = CFArrayGetCount(v2);
  if (Count < 1)
  {
    v6 = -1;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    v6 = -1;
    v7 = -1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 120), v5);
      if ((*(ValueAtIndex + 8) & 1) == 0)
      {
        v9 = *(ValueAtIndex + 16);
        v10 = __CFTimeIntervalToTSR(*(ValueAtIndex + 15));
        if (v9 > v6)
        {
          break;
        }

        v11 = v9 + v10;
        if (__CFADD__(v9, v10))
        {
          v11 = -1;
        }

        if (v9 < v7)
        {
          v7 = v9;
        }

        if (v11 < v6)
        {
          v6 = v11;
        }
      }

      ++v5;
    }

    while (v4 != v5);
    if (v7 != -1)
    {
      if (v6 != *(a1 + 192) || v7 != *(a1 + 184))
      {
        mach_absolute_time();
        kdebug_trace();
        v12 = __CFTSRToNanoseconds(v6 - v7);
        v13 = __CFTSRToDispatchTime(v7);
        if (v12)
        {
          v14 = v13;
          if (*(a1 + 176) && *(a1 + 172))
          {
            mk_timer_cancel();
            *(a1 + 176) = 0;
          }

          dispatch_source_set_timer(*(a1 + 152), v14, 0xFFFFFFFFFFFFFFFFLL, v12);
          *(a1 + 169) = 1;
        }

        else
        {
          if (*(a1 + 169))
          {
            dispatch_source_set_timer(*(a1 + 152), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x378uLL);
            *(a1 + 169) = 0;
          }

          if (*(a1 + 172))
          {
            mk_timer_arm();
            *(a1 + 176) = 1;
          }
        }
      }

      goto LABEL_34;
    }
  }

  if (*(a1 + 176) && *(a1 + 172))
  {
    mk_timer_cancel();
    *(a1 + 176) = 0;
  }

  v7 = -1;
  if (*(a1 + 169))
  {
    dispatch_source_set_timer(*(a1 + 152), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x14DuLL);
    *(a1 + 169) = 0;
  }

LABEL_34:
  *(a1 + 184) = v7;
  *(a1 + 192) = v6;
  v15 = *MEMORY[0x1E69E9840];
}

void CFArrayRemoveValueAtIndex(CFMutableArrayRef theArray, CFIndex idx)
{
  if (CF_IS_OBJC(0x13uLL, theArray))
  {

    [(__CFArray *)theArray removeObjectAtIndex:idx];
  }

  else
  {

    _CFArrayReplaceValues(theArray, idx, 1, 0, 0);
  }
}

void _CFXNotificationRegistrarAddCachedName(const void *a1, void **a2)
{
  key[1] = *MEMORY[0x1E69E9840];
  key[0] = 0;
  os_unfair_lock_lock(&__CFXNotificationRegistrarNamePoolLock);
  NamePool = _CFXNotificationRegistrarGetNamePool();
  if (CFDictionaryGetKeyIfPresent(NamePool, a1, key))
  {
    Value = CFDictionaryGetValue(NamePool, key[0]);
    CFDictionarySetValue(NamePool, key[0], Value + 1);
  }

  else
  {
    CFDictionarySetValue(NamePool, a1, 1);
    CFDictionaryGetKeyIfPresent(NamePool, a1, key);
  }

  *a2 = key[0];
  os_unfair_lock_unlock(&__CFXNotificationRegistrarNamePoolLock);
  v6 = *MEMORY[0x1E69E9840];
}

void CFRunLoopTimerInvalidate(CFRunLoopTimerRef timer)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (CF_IS_OBJC(0x2FuLL, timer))
  {
    v2 = *MEMORY[0x1E69E9840];

    [(__CFRunLoopTimer *)timer invalidate];
  }

  else
  {
    pthread_mutex_lock((timer + 24));
    if ((*(timer + 8) & 4) == 0)
    {
      CFRetain(timer);
    }

    v3 = atomic_load(timer + 1);
    if ((v3 & 8) != 0)
    {
      v4 = *(timer + 11);
      v5 = *(timer + 20);
      *(timer + 20) = 0;
      v6 = atomic_load(timer + 1);
      v7 = v6;
      do
      {
        atomic_compare_exchange_strong(timer + 1, &v7, v6 & 0xFFFFFFFFFFFFFFF7);
        v8 = v7 == v6;
        v6 = v7;
      }

      while (!v8);
      if (v4)
      {
        Count = CFSetGetCount(*(timer + 12));
        MEMORY[0x1EEE9AC00](Count, v10);
        v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
        if (v11 >= 0x200)
        {
          v13 = 512;
        }

        else
        {
          v13 = v11;
        }

        bzero(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
        CFSetGetValues(*(timer + 12), v12);
        if (Count >= 1)
        {
          v14 = v12;
          v15 = Count;
          do
          {
            v16 = *v14++;
            CFRetain(v16);
            --v15;
          }

          while (v15);
        }

        CFRetain(v4);
        pthread_mutex_unlock((timer + 24));
        pthread_mutex_lock((v4 + 16));
        if (Count < 1)
        {
          CFRunLoopRemoveTimer(v4, timer, @"kCFRunLoopCommonModes");
          pthread_mutex_unlock((v4 + 16));
        }

        else
        {
          v17 = v12;
          v18 = Count;
          do
          {
            v19 = *v17++;
            CFRunLoopRemoveTimer(v4, timer, v19);
            --v18;
          }

          while (v18);
          CFRunLoopRemoveTimer(v4, timer, @"kCFRunLoopCommonModes");
          pthread_mutex_unlock((v4 + 16));
          do
          {
            v20 = *v12++;
            CFRelease(v20);
            --Count;
          }

          while (Count);
        }

        CFRelease(v4);
        pthread_mutex_lock((timer + 24));
      }

      v21 = *(timer + 22);
      if (v21)
      {
        v21(v5);
      }
    }

    pthread_mutex_unlock((timer + 24));
    if ((*(timer + 8) & 4) == 0)
    {
      CFRelease(timer);
    }

    v22 = *MEMORY[0x1E69E9840];
  }
}

void CFRunLoopRemoveTimer(CFRunLoopRef rl, CFRunLoopTimerRef timer, CFRunLoopMode mode)
{
  context[2] = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(rl);
  v6 = _CFGetNonObjCTypeID(rl);
  if (v6 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v6);
  }

  v7 = atomic_load(__CFMainThreadHasExited);
  if (v7)
  {
    CFRunLoopRemoveTimer_cold_1(rl);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((rl + 16));
  if (mode == @"kCFRunLoopCommonModes")
  {
    v13 = *(rl + 331);
    if (v13 && CFSetContainsValue(v13, timer))
    {
      v14 = *(rl + 330);
      if (!v14)
      {
        CFSetRemoveValue(*(rl + 331), timer);
        goto LABEL_23;
      }

      Copy = CFSetCreateCopy(&__kCFAllocatorSystemDefault, v14);
      CFSetRemoveValue(*(rl + 331), timer);
      if (Copy)
      {
        context[0] = rl;
        context[1] = timer;
        CFSetApplyFunction(Copy, __CFRunLoopRemoveItemFromCommonModes, context);
LABEL_16:
        CFRelease(Copy);
      }
    }
  }

  else
  {
    v8 = __CFRunLoopCopyMode(rl, mode, 0);
    if (v8)
    {
      Copy = v8;
      pthread_mutex_lock((v8 + 16));
      v10 = *(Copy + 15);
      if (v10)
      {
        v17.length = CFArrayGetCount(*(Copy + 15));
        v17.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v10, v17, timer);
        if (FirstIndexOfValue != -1)
        {
          v12 = FirstIndexOfValue;
          pthread_mutex_lock((timer + 24));
          CFSetRemoveValue(*(timer + 12), *(Copy + 10));
          if (!CFSetGetCount(*(timer + 12)))
          {
            *(timer + 11) = 0;
          }

          pthread_mutex_unlock((timer + 24));
          CFArrayRemoveValueAtIndex(v10, v12);
          __CFArmNextTimerInMode(Copy);
        }
      }

      pthread_mutex_unlock((Copy + 16));
      goto LABEL_16;
    }
  }

LABEL_23:
  pthread_mutex_unlock((rl + 16));
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t comparisonUsingOrderingForStringKeys(id *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return 0;
  }

  else
  {
    return [*a1 compare:*a2 options:2 range:0 locale:{objc_msgSend(*a1, "length"), 0}];
  }
}

CFMutableDictionaryRef CFDictionaryCreateMutableCopy(CFAllocatorRef allocator, CFIndex capacity, CFDictionaryRef theDict)
{
  v3 = MEMORY[0x1EEE9AC00](allocator, capacity);
  v5 = v4;
  v6 = v3;
  v55 = *MEMORY[0x1E69E9840];
  if (!CF_IS_OBJC(0x12uLL, v4))
  {
    Copy = CFBasicHashCreateCopy(v6, v5, v7, v8, v9, v10, v11, v12);
LABEL_21:
    if (Copy)
    {
      _CFRuntimeSetInstanceTypeIDAndIsa(Copy, 0x12uLL);
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }
    }

    v21 = *MEMORY[0x1E69E9840];
    return Copy;
  }

  if (&__kCFAllocatorSystemDefault != v6 && (v6 || &__kCFAllocatorSystemDefault != CFAllocatorGetDefault()))
  {
    Count = CFDictionaryGetCount(v5);
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v51 = 0u;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    *values = 0u;
    memset(v22, 0, 512);
    if (Count >= 257)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * Count, 0xC0040B8AA526DLL, 0);
      v14 = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * Count, 0xC0040B8AA526DLL, 0);
    }

    else
    {
      v14 = v22;
      Typed = values;
    }

    CFDictionaryGetKeysAndValues(v5, v14, Typed);
    Generic = __CFDictionaryCreateGeneric(v6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    Copy = Generic;
    if (Count >= 1 && Generic)
    {
      CFBasicHashSetCapacity(Generic, Count);
      for (i = 0; i < Count; ++i)
      {
        CFBasicHashAddValue(Copy, v14[i], Typed[i]);
      }
    }

    if (v14 != v22 && v14 != Typed)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v14);
    }

    if (Typed != values)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    }

    goto LABEL_21;
  }

  v17 = *MEMORY[0x1E69E9840];

  return [(__CFDictionary *)v5 _cfMutableCopy];
}