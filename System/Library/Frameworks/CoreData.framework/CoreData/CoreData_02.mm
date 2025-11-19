void sub_185690650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1856915BC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185691584);
  }

  JUMPOUT(0x18569150CLL);
}

void sub_1856915D8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185691508);
}

uint64_t _compareEntitiesByName(void *a1, void *a2)
{
  v3 = [a1 name];
  v4 = [a2 name];

  return [v3 compare:v4];
}

void sub_185693744(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x185693500);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1856938F8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856938CCLL);
  }

  JUMPOUT(0x185693838);
}

uint64_t _comparePropertiesByName(void *a1, void *a2)
{
  v3 = [a1 name];
  v4 = [a2 name];

  return [v3 compare:v4];
}

id _PFModelMapPathForEntity(void *a1)
{
  v2 = [objc_msgSend(a1 "managedObjectModel")];
  if (v2 > 16049)
  {
    switch(v2)
    {
      case 16050:
        v3 = MEMORY[0x1E696AEC0];
        v4 = _PFPersistentHistoryFetchModel;
        return [v3 stringWithFormat:@"%@/%@", -[__objc2_class ancillaryModelNamespace](v4, "ancillaryModelNamespace"), objc_msgSend(a1, "name")];
      case 17000:
        v3 = MEMORY[0x1E696AEC0];
        v4 = PFCloudKitMetadataModel;
        return [v3 stringWithFormat:@"%@/%@", -[__objc2_class ancillaryModelNamespace](v4, "ancillaryModelNamespace"), objc_msgSend(a1, "name")];
      case 18000:
        v3 = MEMORY[0x1E696AEC0];
        v4 = NSSQLiteIndexTrackingModel;
        return [v3 stringWithFormat:@"%@/%@", -[__objc2_class ancillaryModelNamespace](v4, "ancillaryModelNamespace"), objc_msgSend(a1, "name")];
    }

    goto LABEL_15;
  }

  if (v2)
  {
    if (v2 == 16000)
    {
      v3 = MEMORY[0x1E696AEC0];
      v4 = _PFPersistentHistoryModel;
      return [v3 stringWithFormat:@"%@/%@", -[__objc2_class ancillaryModelNamespace](v4, "ancillaryModelNamespace"), objc_msgSend(a1, "name")];
    }

LABEL_15:
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = MEMORY[0x1E696AEC0];
    v10 = v2;
    v11 = objc_opt_class();
    v12 = [v7 exceptionWithName:v8 reason:objc_msgSend(v9 userInfo:{"stringWithFormat:", @"Managed object model with offset %lu is not known to %@", v10, NSStringFromClass(v11)), 0}];
    objc_exception_throw(v12);
  }

  v6 = [a1 name];

  return v6;
}

void *_PF_Leopard_CFDictionaryCreate()
{
  v0 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v0 = malloc_default_zone();
  }

  v1 = malloc_type_zone_calloc(v0, 1uLL, 0x58uLL, 0x109004026750248uLL);
  v2 = v1;
  if (v1)
  {
    *v1 = 0;
    *(v1 + 2) = 0;
    *(v1 + 5) = 0;
    *(v1 + 6) = 0;
    *(v1 + 4) = 1;
    *(v1 + 56) = xmmword_18592E960;
    *(v1 + 3) = 3 << flsl(0);
    v2[1] = 0;
    v2[9] = 0;
    v2[10] = 0;
  }

  return v2;
}

CFTypeRef _PF_Leopard_CFDictionarySetValue(void *a1, unint64_t a2, const void *a3)
{
  v6 = a1[2];
  v7 = a1[9];
  if (v6 == a1[3] || !v7)
  {
    v8 = a1[10];
    v9 = a1[1];
    v10 = flsl(v6 / 3);
    a1[3] = 3 << v10;
    v11 = 4 << flsl(((3 << v10) - 1) / 3);
    a1[1] = v11;
    a1[5] = 0;
    v12 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v12 = malloc_default_zone();
      v11 = a1[1];
    }

    a1[9] = malloc_type_zone_calloc(v12, 1uLL, 8 * v11, 0x100004000313F17uLL);
    v13 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v13 = malloc_default_zone();
    }

    v14 = malloc_type_zone_calloc(v13, 1uLL, 8 * a1[1], 0x100004000313F17uLL);
    a1[10] = v14;
    v15 = a1[1];
    if (v15 >= 1)
    {
      v16 = a1[9];
      do
      {
        *v16++ = a1[8];
        *v14++ = 0;
        --v15;
      }

      while (v15);
    }

    if (v7)
    {
      if (v9 >= 1)
      {
        v17 = v7;
        v18 = v8;
        do
        {
          v19 = *v17;
          v20 = a1[8];
          if (v20 != *v17 && (v20 ^ *v17) != -1)
          {
            v39 = 0;
            _PF_Leopard_CFDictionaryFindBuckets2(a1, v19, &v40, &v39);
            if (v39 != -1)
            {
              *(a1[9] + 8 * v39) = *v17;
              *(a1[10] + 8 * v39) = *v18;
            }
          }

          ++v18;
          ++v17;
          --v9;
        }

        while (v9);
      }

      v22 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v22 = malloc_default_zone();
      }

      malloc_zone_free(v22, v7);
      v23 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v23 = malloc_default_zone();
      }

      malloc_zone_free(v23, v8);
    }
  }

  ++a1[4];
  v39 = 0;
  v40 = 0;
  _PF_Leopard_CFDictionaryFindBuckets2(a1, a2, &v40, &v39);
  v24 = v40;
  if (v40 == -1)
  {
    v27 = a1[8];
    v26 = a1[9];
    if (v27 == a2 || (v27 ^ a2) == 0xFFFFFFFFFFFFFFFFLL)
    {
      v28 = a1[1];
      v29 = (v27 - 1);
      if (v28 < 1)
      {
        --v27;
      }

      else
      {
LABEL_30:
        v30 = -v27;
        v27 = v29;
        v31 = a1[1];
        v32 = a1[9];
        do
        {
          v34 = *v32++;
          v33 = v34;
          if (v27 == v34 || v33 == v30)
          {
            v29 = (v27 - 1);
            goto LABEL_30;
          }

          --v31;
        }

        while (v31);
        v36 = a1[9];
        do
        {
          v37 = a1[8];
          v38 = v27;
          if (v37 == *v36 || (v38 = v30, (*v36 ^ v37) == 0xFFFFFFFFFFFFFFFFLL))
          {
            *v36 = v38;
          }

          ++v36;
          --v28;
        }

        while (v28);
        v29 = v27;
      }

      a1[8] = v29;
    }

    if ((*(v26 + 8 * v39) ^ v27) == 0xFFFFFFFFFFFFFFFFLL)
    {
      --a1[5];
    }

    CFRetain(a2);
    result = CFRetain(a3);
    *(a1[9] + 8 * v39) = a2;
    *(a1[10] + 8 * v39) = a3;
    ++a1[2];
    ++*a1;
  }

  else
  {
    CFRelease(*(a1[10] + 8 * v40));
    result = CFRetain(a3);
    *(a1[10] + 8 * v24) = a3;
  }

  return result;
}

unint64_t _PF_Leopard_CFDictionaryFindBuckets2(uint64_t a1, __CFString *a2, void *a3, void *a4)
{
  v8 = _PF_Leopard_CFStringHashNSString(a2);
  v9 = (1264676453 - v8) ^ ((v8 - 1) << 8);
  v10 = (2 - v8 - v9) ^ (v9 >> 13);
  v11 = (v8 - 1 - v9 - v10) ^ (v10 >> 12);
  v12 = (v9 - v10 - v11) ^ (v11 << 16);
  v13 = (v10 - v11 - v12) ^ (v12 >> 5);
  v14 = (v11 - v12 - v13) ^ (v13 >> 3);
  v16 = *(a1 + 64);
  v15 = *(a1 + 72);
  v17 = (*(a1 + 8) - 1) & ((v13 - v14 - ((v12 - v13 - v14) ^ (v14 << 10))) ^ (((v12 - v13 - v14) ^ (v14 << 10)) >> 15));
  *a3 = -1;
  *a4 = -1;
  v18 = v17;
  while (1)
  {
    result = *(v15 + 8 * v18);
    if (v16 == result)
    {
      break;
    }

    if ((result ^ v16) == 0xFFFFFFFFFFFFFFFFLL)
    {
      if (a4)
      {
        *a4 = v18;
        a4 = 0;
      }
    }

    else if (result == a2 || (result = CFEqual(result, a2), result))
    {
      a4 = a3;
      goto LABEL_15;
    }

    v20 = v18 + 1;
    v21 = *(a1 + 8);
    if (v21 > v18 + 1)
    {
      v21 = 0;
    }

    v18 = v20 - v21;
    if (v17 == v20 - v21)
    {
      return result;
    }
  }

  if (!a4)
  {
    return result;
  }

LABEL_15:
  *a4 = v18;
  return result;
}

uint64_t _PF_Leopard_CFStringHashNSString(__CFString *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  v3 = v10;
  if (Length >= 97)
  {
    [(__CFString *)a1 getCharacters:v10 range:0, 32];
    [(__CFString *)a1 getCharacters:&v11 range:(Length >> 1) - 16, 32];
    [(__CFString *)a1 getCharacters:&v12 range:Length - 32, 32];
    v4 = &v13;
    v5 = &v13;
LABEL_5:
    v3 = v10;
    v6 = Length;
    do
    {
      v6 = 67503105 * v6 + 16974593 * *v3 + 66049 * v3[1] + 257 * v3[2] + v3[3];
      v3 += 4;
    }

    while (v3 < v5);
    goto LABEL_10;
  }

  [(__CFString *)a1 getCharacters:v10 range:0, Length];
  v4 = &v10[Length];
  if ((Length & 0xFFFFFFFFFFFFFFFCLL) >= 1)
  {
    v5 = &v10[Length & 0xFFFFFFFFFFFFFFFCLL];
    goto LABEL_5;
  }

  v6 = Length;
LABEL_10:
  while (v3 < v4)
  {
    v7 = *v3++;
    v6 = 257 * v6 + v7;
  }

  v8 = *MEMORY[0x1E69E9840];
  return ((v6 << Length) + v6);
}

uint64_t _PF_Leopard_CFDictionaryGetValue(void *a1, __CFString *a2)
{
  if (!a1[2])
  {
    return 0;
  }

  v4 = _PF_Leopard_CFStringHashNSString(a2);
  v5 = (1264676453 - v4) ^ ((v4 - 1) << 8);
  v6 = (2 - v4 - v5) ^ (v5 >> 13);
  v7 = (v4 - 1 - v5 - v6) ^ (v6 >> 12);
  v8 = (v5 - v6 - v7) ^ (v7 << 16);
  v9 = (v6 - v7 - v8) ^ (v8 >> 5);
  v10 = (v7 - v8 - v9) ^ (v9 >> 3);
  v11 = (v9 - v10 - ((v8 - v9 - v10) ^ (v10 << 10))) ^ (((v8 - v9 - v10) ^ (v10 << 10)) >> 15);
  v13 = a1[8];
  v12 = a1[9];
  v14 = a1[1];
  v15 = (v14 - 1) & v11;
  v16 = v15;
  do
  {
    v17 = *(v12 + 8 * v16);
    if (v13 == v17)
    {
      break;
    }

    if ((v17 ^ v13) != 0xFFFFFFFFFFFFFFFFLL)
    {
      if (v17 == a2 || CFEqual(v17, a2))
      {
        if (v16 != -1)
        {
          return *(a1[10] + 8 * v16);
        }

        return 0;
      }

      v14 = a1[1];
    }

    v18 = v16 + 1;
    if (v14 <= v16 + 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = 0;
    }

    v16 = v18 - v19;
  }

  while (v15 != v18 - v19);
  return 0;
}

void _PF_Leopard_CFDictionaryDestroy(void *ptr)
{
  v2 = ptr[1];
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = ptr[8];
      v5 = *(ptr[9] + 8 * i);
      if (v4 != v5 && (v4 ^ v5) != -1)
      {
        CFRelease(v5);
        CFRelease(*(ptr[10] + 8 * i));
      }
    }
  }

  v7 = ptr[9];
  if (v7)
  {
    v8 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v8 = malloc_default_zone();
      v7 = ptr[9];
    }

    malloc_zone_free(v8, v7);
  }

  v9 = ptr[10];
  if (v9)
  {
    v10 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v10 = malloc_default_zone();
      v9 = ptr[10];
    }

    malloc_zone_free(v10, v9);
  }

  v11 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v11 = malloc_default_zone();
  }

  malloc_zone_free(v11, ptr);
}

void *PF_Tiger_CFDictionaryCreate(uint64_t a1, unsigned int a2, int a3)
{
  v5 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v5 = malloc_default_zone();
  }

  v6 = malloc_type_zone_calloc(v5, 1uLL, 0x38uLL, 0x1080040AA4A4051uLL);
  v7 = v6;
  *v6 = 0;
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 2712781267;
  if (a3)
  {
    for (i = 0; i != 42; ++i)
    {
      if (__CFDictionaryCapacities[i] >= a2)
      {
        break;
      }
    }

    v9 = 0;
    v10 = __CFDictionaryCapacities[i];
    *(v6 + 1) = v10;
    do
    {
      if (__CFDictionaryCapacities[v9] >= v10)
      {
        break;
      }

      ++v9;
    }

    while (v9 != 42);
  }

  else
  {
    v9 = 0;
    *(v6 + 1) = a2;
    do
    {
      if (__CFDictionaryCapacities[v9] >= a2)
      {
        break;
      }

      ++v9;
    }

    while (v9 != 42);
  }

  v11 = __CFDictionaryBuckets[v9];
  *(v6 + 2) = v11;
  v12 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v12 = malloc_default_zone();
    v11 = *(v7 + 2);
  }

  v7[5] = malloc_type_zone_calloc(v12, v11, 8uLL, 0x80040B8603338uLL);
  v13 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v13 = malloc_default_zone();
  }

  v7[6] = malloc_type_zone_calloc(v13, *(v7 + 2), 8uLL, 0x80040B8603338uLL);
  v14 = *(v7 + 2);
  if (v14)
  {
    v15 = v14 - 1;
    do
    {
      *(v7[5] + 8 * v15--) = 2712781267;
    }

    while (v15 != -1);
  }

  return v7;
}

void PF_Tiger_CFDictionarySetValue(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v6 = _PF_TigerHashCFString(a2);
  v7 = *(a1 + 40);
  v8 = *(a1 + 16);
  v9 = v6 % *(a1 + 8);
  v32 = -1;
  v10 = &v32;
  v11 = v9;
  while (1)
  {
    v12 = *(v7 + 8 * v11);
    if (v8 == v12)
    {
      if (v10)
      {
        *v10 = v11;
      }

      goto LABEL_18;
    }

    if ((v8 ^ v12) == 0xFFFFFFFFFFFFFFFFLL)
    {
      if (v10)
      {
        *v10 = v11;
        v10 = 0;
      }

      goto LABEL_9;
    }

    if (v12 == a2 || CFEqual(v12, a2))
    {
      break;
    }

LABEL_9:
    v13 = v11 + 1;
    v14 = *(a1 + 8);
    if (v14 <= v11 + 1)
    {
      v15 = *(a1 + 8);
    }

    else
    {
      v15 = 0;
    }

    v11 = v13 - v15;
    if (v9 == v13 - v15)
    {
      goto LABEL_19;
    }
  }

  if (v11 != -1)
  {
    *(*(a1 + 48) + 8 * v11) = a3;
    return;
  }

LABEL_18:
  v14 = *(a1 + 8);
LABEL_19:
  v16 = *(a1 + 16);
  if (v16 == a2 || (v16 ^ a2) == -1)
  {
    v18 = &v16[-1].length + 7;
    if (v14 >= 1)
    {
      v19 = *(a1 + 40);
      v20 = v14;
      v21 = *(a1 + 16);
LABEL_26:
      v22 = -v21;
      v21 = v18;
      v23 = v14;
      v24 = *(a1 + 40);
      do
      {
        if (v21 == *v24 || v22 == *v24)
        {
          v18 = v21 - 1;
          goto LABEL_26;
        }

        ++v24;
        --v23;
      }

      while (v23);
      do
      {
        v26 = v21;
        if (v16 == *v19 || (v26 = v22, (v16 ^ *v19) == 0xFFFFFFFFFFFFFFFFLL))
        {
          *v19 = v26;
        }

        ++v19;
        --v20;
      }

      while (v20);
      v18 = v21;
    }

    *(a1 + 16) = v18;
  }

  v27 = v32;
  if (v32 < 0 || v32 >= v14)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: illegal OOB dictionary calculation\n", buf, 2u);
    }

    v29 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      v30[0] = 0;
      _os_log_fault_impl(&dword_18565F000, v29, OS_LOG_TYPE_FAULT, "CoreData: illegal OOB dictionary calculation", v30, 2u);
    }
  }

  else
  {
    *(*(a1 + 40) + 8 * v32) = a2;
    *(*(a1 + 48) + 8 * v27) = a3;
  }

  ++*a1;
}

uint64_t _PF_TigerHashCFString(const __CFString *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  v3 = MEMORY[0x1EEE9AC00](Length);
  v5 = (v13 - ((v4 + 15) & 0x3FFFFFFF0));
  v14.length = v3;
  v14.location = 0;
  CFStringGetCharacters(a1, v14, v5);
  if (Length > 23)
  {
    v9 = &v5[Length & 0x7FFFFFFF];
    v7 = 16974593 * *(v9 - 4) + 66049 * *(v9 - 3) + 257 * *(v9 - 2) + *(v9 - 1) + 67503105 * (16974593 * *(v9 - 8) + 66049 * *(v9 - 7) + 257 * *(v9 - 6) + *(v9 - 5) + 67503105 * (16974593 * *(v9 - 12) + 66049 * *(v9 - 11) + 257 * *(v9 - 10) + *(v9 - 9) + 67503105 * (16974593 * *(v9 - 16) + 66049 * *(v9 - 15) + 67503105 * (16974593 * v5[4] + 67503105 * (67503105 * Length + 16974593 * *v5 + 66049 * v5[1] + 257 * v5[2] + v5[3]) + 66049 * v5[5] + 257 * v5[6] + v5[7]) + 257 * *(v9 - 14) + *(v9 - 13))));
  }

  else
  {
    v6 = &v5[Length];
    if ((Length & 0xFFFFFFFC) < 1)
    {
      v7 = Length;
    }

    else
    {
      v7 = Length;
      v8 = &v5[Length & 0xFFFFFFFC];
      do
      {
        v7 = 67503105 * v7 + 16974593 * *v5 + 66049 * v5[1] + 257 * v5[2] + v5[3];
        v5 += 4;
      }

      while (v5 < v8);
    }

    while (v5 < v6)
    {
      v10 = *v5++;
      v7 = 257 * v7 + v10;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return ((v7 << Length) + v7);
}

uint64_t PF_Tiger_CFDictionaryGetKeysAndValues(uint64_t result, void *a2, void *a3)
{
  v3 = *(result + 8);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(result + 16);
    v6 = 8 * v3;
    do
    {
      v7 = *(*(result + 40) + v4);
      if (v5 != v7 && (v5 ^ v7) != -1)
      {
        if (a2)
        {
          *a2++ = v7;
        }

        if (a3)
        {
          *a3++ = *(*(result + 48) + v4);
        }
      }

      v4 += 8;
    }

    while (v6 != v4);
  }

  return result;
}

void PF_Tiger_CFDictionaryDestroy(void *ptr)
{
  v2 = ptr[5];
  if (v2)
  {
    v3 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v3 = malloc_default_zone();
      v2 = ptr[5];
    }

    malloc_zone_free(v3, v2);
  }

  v4 = ptr[6];
  if (v4)
  {
    v5 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v5 = malloc_default_zone();
      v4 = ptr[6];
    }

    malloc_zone_free(v5, v4);
  }

  v6 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v6 = malloc_default_zone();
  }

  malloc_zone_free(v6, ptr);
}

uint64_t readMagicWordFromDBHandle(sqlite3 *a1)
{
  *&v11[15] = *MEMORY[0x1E69E9840];
  v10 = 0;
  v2 = sqlite3_file_control(a1, 0, 7, &v10);
  if (v10)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    result = 92;
    goto LABEL_20;
  }

  if (*v10)
  {
    v5 = (*(*v10 + 16))();
    if (!v5)
    {
      if (*v11 ^ 0x66206574694C5153 | *&v11[7] ^ 0x332074616D726F66)
      {
        result = 92;
      }

      else
      {
        result = 0;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v5 = 1;
  }

  v9 = 0;
  v6 = sqlite3_file_control(a1, 0, 4, &v9);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = 92;
  }

  if (v5 == 522)
  {
    v7 = 0;
  }

  if (v9)
  {
    result = v9;
  }

  else
  {
    result = v7;
  }

LABEL_20:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t NSSQLiteRegisterFunctions(sqlite3 *a1, void **a2)
{
  if (a2)
  {
    v4 = a2 + 31;
  }

  else
  {
    v4 = 0;
  }

  function = sqlite3_create_function(a1, "NSCoreDataNow", 0, 5, 0, _NSCoreDataNow, 0, 0);
  if (!function)
  {
    function = sqlite3_create_function(a1, "NSCoreDataPrependExternalReferenceMarker", 2, 5, 0, _NSCoreDataPrependExternalReferenceMarker, 0, 0);
    if (function)
    {
LABEL_10:
      sqlite3_create_function(a1, "NSCoreDataNow", 0, 5, 0, 0, 0, 0);
      return function;
    }

    function = sqlite3_create_function(a1, "NSCoreDataConvertTransformableToCodable", 3, 5, [objc_msgSend(objc_msgSend(objc_msgSend(a2 "adapter")], _NSCoreDataConvertTransformableToCodable, 0, 0);
    if (!function)
    {
      function = sqlite3_create_function(a1, "NSCoreDataLike", 3, 1, *v4, _NSCoreDataLikeBridge, 0, 0);
      if (function)
      {
        goto LABEL_9;
      }

      function = sqlite3_create_function(a1, "NSCoreDataStringSearch", 4, 1, 0, _NSCoreDataStringSearch, 0, 0);
      if (!function)
      {
        function = sqlite3_create_function(a1, "NSCoreDataToUpper", 1, 4, 0, _NSCoreDataToUpper, 0, 0);
        if (!function)
        {
          function = sqlite3_create_function(a1, "NSCoreDataToLower", 1, 4, 0, _NSCoreDataToLower, 0, 0);
          if (!function)
          {
            function = sqlite3_create_function(a1, "NSCoreDataCanonical", 1, 4, 0, _NSCoreDataCanonical, 0, 0);
            if (!function)
            {
              function = sqlite3_create_function(a1, "NSCoreDataMatches", 3, 1, v4[4], _NSCoreDataMatchesBridge, 0, 0);
              if (!function)
              {
                function = sqlite3_create_function(a1, "NSCoreDataStringCompare", 5, 4, 0, _NSCoreDataStringCompareWithFlags, 0, 0);
                if (!function)
                {
                  function = sqlite3_create_collation(a1, "NSCollateNoCase", 4, 0, _NSCoreDataCollateNoCaseBridge);
                  if (!function)
                  {
                    function = sqlite3_create_collation(a1, "NSCollateNumericallyNoCase", 4, 0, _NSCoreDataCollateNumericallyNoCaseBridge);
                    if (!function)
                    {
                      function = sqlite3_create_collation(a1, "NSCollateLocaleSensitive", 4, 0, _NSCoreDataCollateLocaleSensitiveBridge);
                      if (!function)
                      {
                        function = sqlite3_create_collation(a1, "NSCollateLocaleSensitiveNoCase", 4, 0, _NSCoreDataCollateLocaleSensitiveCaseInsensitiveBridge);
                        if (!function)
                        {
                          function = sqlite3_create_collation(a1, "NSCollateFinderlike", 4, 0, _NSCoreDataCollateFinderlikeBridge);
                          if (!function)
                          {
                            function = sqlite3_create_function(a1, "NSCoreDataTriggerUpdateAffectedObjectValue", 5, 2052, a2, _NSCoreDataTriggerUpdateAffectedObjectValue, 0, 0);
                            if (!function)
                            {
                              function = sqlite3_create_function(a1, "NSCoreDataDATriggerInsertUpdatedAffectedObjectValue", 5, 2052, a2, _NSCoreDataDATriggerInsertUpdatedAffectedObjectValue, 0, 0);
                              if (!function)
                              {
                                function = sqlite3_create_function(a1, "NSCoreDataDATriggerUpdatedAffectedObjectValue", 5, 2052, a2, _NSCoreDataDATriggerUpdatedAffectedObjectValue, 0, 0);
                                if (!function)
                                {
                                  function = sqlite3_create_function(a1, "NSPersistentHistoryBatchDeleteUpdateTrigger", -1, 2052, a2, _NSPersistentHistoryBatchDeleteUpdateTrigger, 0, 0);
                                  if (!function)
                                  {
                                    function = sqlite3_create_function(a1, "NSPersistentHistoryBatchDeleteUpdateTriggerDataBlobOperator", -1, 2052, 0, _NSPersistentHistoryBatchDeleteUpdateTriggerDataBlobOperator, 0, 0);
                                    if (!function)
                                    {
                                      function = sqlite3_create_function(a1, "NSCoreDataDATriggerMergeableString", 5, 2052, a2, _NSCoreDataDATriggerMergeableString, 0, 0);
                                      if (!function)
                                      {
                                        return function;
                                      }

                                      sqlite3_create_function(a1, "NSCoreDataDATriggerMergeableString", 0, 4, 0, 0, 0, 0);
                                    }

                                    sqlite3_create_function(a1, "NSPersistentHistoryBatchDeleteUpdateTrigger", 0, 4, 0, 0, 0, 0);
                                  }

                                  sqlite3_create_function(a1, "NSCoreDataDATriggerUpdatedAffectedObjectValue", 0, 4, 0, 0, 0, 0);
                                }

                                sqlite3_create_function(a1, "NSCoreDataDATriggerInsertUpdatedAffectedObjectValue", 0, 4, 0, 0, 0, 0);
                              }

                              sqlite3_create_function(a1, "NSCoreDataTriggerUpdateAffectedObjectValue", 0, 4, 0, 0, 0, 0);
                            }

                            sqlite3_create_function(a1, "NSCollateFinderlike", 0, 4, 0, 0, 0, 0);
                          }

                          sqlite3_create_collation(a1, "NSCollateLocaleSensitiveNoCase", 4, 0, 0);
                        }

                        sqlite3_create_collation(a1, "NSCollateLocaleSensitive", 4, 0, 0);
                      }

                      sqlite3_create_collation(a1, "NSCollateNumericallyNoCase", 4, 0, 0);
                    }

                    sqlite3_create_collation(a1, "NSCollateNoCase", 4, 0, 0);
                  }

                  sqlite3_create_function(a1, "NSCoreDataStringCompare", 0, 4, 0, 0, 0, 0);
                }

                sqlite3_create_function(a1, "NSCoreDataMatches", 0, 1, 0, 0, 0, 0);
              }

              sqlite3_create_function(a1, "NSCoreCanonical", 0, 4, 0, 0, 0, 0);
            }

            sqlite3_create_function(a1, "NSCoreDataToLower", 0, 4, 0, 0, 0, 0);
          }

          sqlite3_create_function(a1, "NSCoreToUpper", 0, 4, 0, 0, 0, 0);
        }

        sqlite3_create_function(a1, "NSCoreDataStringSearch", 0, 1, 0, 0, 0, 0);
      }

      sqlite3_create_function(a1, "NSCoreDataLike", 0, 1, 0, 0, 0, 0);
    }

    sqlite3_create_function(a1, "NSCoreDataConvertTransformableToCodable", 0, 5, 0, 0, 0, 0);
LABEL_9:
    sqlite3_create_function(a1, "NSCoreDataPrependExternalReferenceMarker", 0, 5, 0, 0, 0, 0);
    goto LABEL_10;
  }

  return function;
}

void sub_185699390(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1856991C0);
  }

  _Unwind_Resume(exc_buf);
}

void sub_185699B44(void *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x185699AACLL);
  }

  JUMPOUT(0x185699B38);
}

void sub_18569A164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v13 = objc_begin_catch(exception_object);
  if (v12)
  {
    objc_setProperty_nonatomic(v12, v14, v13, 48);
  }

  objc_end_catch();
}

NSBatchDeleteResult *_executeBatchDeleteRequest(uint64_t *a1, uint64_t *a2)
{
  v93 = *MEMORY[0x1E69E9840];
  v4 = [a1 request];
  if (a1)
  {
    v78 = a1[3];
  }

  else
  {
    v78 = 0;
  }

  v68 = a2;
  v70 = v4;
  v5 = [v4 resultType];
  v6 = [objc_msgSend(a1 "request")];
  if (!a1)
  {
    v69 = 0;
    v7 = 0;
    v75 = 0;
LABEL_11:
    v67 = 0;
    goto LABEL_17;
  }

  v7 = a1[15];
  if (!v7)
  {
    v7 = [(NSSQLBatchDeleteRequestContext *)a1 _createFetchRequestContextForObjectsToDelete];
    a1[15] = v7;
  }

  v8 = a1[16];
  v9 = a1[1];
  if (!v9)
  {
    v69 = 0;
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_13:
    v75 = 0;
    goto LABEL_14;
  }

  v10 = atomic_load((v9 + 208));
  v69 = v10 != 0;
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_8:
  v75 = [v8 count] != 0;
LABEL_14:
  if (!v7)
  {
    goto LABEL_11;
  }

  v11 = v7[15];
  if (!v11)
  {
    goto LABEL_11;
  }

  v67 = *(v11 + 184) > 0x3A98u;
LABEL_17:
  v72 = v6;
  if (v6)
  {
    [(NSSQLiteConnection *)v78 setSecureDeleteMode:?];
  }

  if (a1)
  {
    v12 = a1[1];
    if (v12)
    {
      [*(v12 + 216) lock];
    }
  }

  [(NSSQLiteConnection *)v78 beginTransaction];
  if (v5 == 1)
  {
    if (a1)
    {
      v13 = a1[3];
    }

    else
    {
      v13 = 0;
    }

    [(NSSQLStoreRequestContext *)v7 setConnection:v13];
    Request = _executeFetchRequest(v7);
    [(NSSQLStoreRequestContext *)v7 setConnection:?];
    if (!a1)
    {
      v76 = 0;
      v16 = 0;
      v38 = 0;
      v73 = 0;
      v39 = 0;
      v40 = 0;
      v79 = 0;
      v41 = 1;
      v42 = 1;
      v18 = 1;
      goto LABEL_104;
    }

    objc_setProperty_nonatomic(a1, v15, Request, 112);
    v16 = a1[14];
  }

  else
  {
    v16 = 0;
    if (!a1)
    {
      v76 = 0;
      v40 = 0;
      v41 = 1;
      v42 = 1;
      v38 = 0;
      v73 = 0;
      v39 = 0;
      v18 = 1;
      v79 = 0;
      goto LABEL_104;
    }
  }

  v71 = v16;
  if (a1[13])
  {
    v17 = a1[13];
    v73 = a1[16];
  }

  else
  {
    v18 = 1;
    [(NSSQLBatchDeleteRequestContext *)a1 _createDeleteStatements];
    v17 = a1[13];
    v73 = a1[16];
    if (!v17)
    {
      v76 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v79 = 0;
      v16 = a1[5];
      v41 = 1;
      v42 = 1;
      goto LABEL_104;
    }
  }

  v74 = v17;
  if ([v17 count] == 3)
  {
    _executeBatchDeleteStatements([v74 objectAtIndexedSubscript:0], v78);
    if (v69)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v19 = [v74 objectAtIndexedSubscript:1];
      v20 = [v19 countByEnumeratingWithState:&v80 objects:v92 count:16];
      if (v20)
      {
        v21 = *v81;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v81 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v80 + 1) + 8 * i);
            if (v23)
            {
              *(v23 + 41) = 1;
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v80 objects:v92 count:16];
        }

        while (v20);
      }
    }

    if (v75)
    {
      _executeBatchDeleteStatements([v73 objectAtIndexedSubscript:0], v78);
    }

    v24 = a1[1];
    if (v24 && (*(v24 + 201) & 4) != 0)
    {
      v30 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v78 "adapter")];
      v31 = [v78 adapter];
      v32 = [(NSSQLEntity *)v30 tempTableName];
      v33 = [(NSSQLiteAdapter *)v31 newDropTableStatementForTableNamed:v32];
      v91 = v33;
      _executeBatchDeleteStatements([MEMORY[0x1E695DEC8] arrayWithObjects:&v91 count:1], v78);

      v26 = v74;
      v34 = [v78 adapter];
      if (v30)
      {
        v89[0] = [*(v30 + 40) objectForKey:@"ENTITY"];
        v35 = [*(v30 + 40) objectForKey:@"ENTITYPK"];
      }

      else
      {
        v35 = 0;
        v89[0] = 0;
      }

      v89[1] = v35;
      v90 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
      v36 = -[NSSQLiteAdapter newCreateTempTableStatementForEntity:withAttributesToConstrain:](v34, v30, [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1]);
      v88 = v36;
      _executeBatchDeleteStatements([MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1], v78);

      v77 = 1;
      v25 = v30;
    }

    else
    {
      v77 = 0;
      v25 = 0;
      v26 = v74;
    }

    v37 = _executeBatchDeleteStatements([v26 objectAtIndexedSubscript:1], v78);
    switch(v5)
    {
      case 2:
        v71 = [MEMORY[0x1E696AD98] numberWithInteger:v37];
        break;
      case 1:
        v71 = a1[14];
        break;
      case 0:
        v71 = [MEMORY[0x1E696AD98] numberWithBool:1];
        break;
    }

    if (v75)
    {
      _executeBatchDeleteStatements([v73 objectAtIndexedSubscript:1], v78);
    }

    _executeBatchDeleteStatements([v74 objectAtIndexedSubscript:2], v78);
    v29 = v37 > 0;
    v28 = v75;
  }

  else
  {
    v27 = [v70 resultType];
    if (v27)
    {
      if (v27 != 2)
      {
        v28 = 0;
        v25 = 0;
        v29 = 0;
        v77 = 0;
        if (v27 == 1)
        {
          v71 = MEMORY[0x1E695E0F0];
        }

        goto LABEL_68;
      }

      v25 = 0;
      v28 = 0;
      v71 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    }

    else
    {
      v25 = 0;
      v28 = 0;
      v71 = [MEMORY[0x1E696AD98] numberWithBool:0];
    }

    v29 = 0;
    v77 = 0;
  }

LABEL_68:
  v79 = -[NSBatchDeleteResult initWithResultType:andObject:]([NSBatchDeleteResult alloc], "initWithResultType:andObject:", [v70 resultType], v71);
  [(NSSQLiteConnection *)v78 endFetchAndRecycleStatement:?];
  if (v75)
  {
    [(NSSQLiteConnection *)v78 processExternalDataReferenceFilesDeletedByRequest:a1];
    v43 = a1[17];
    if (v43)
    {
      _deleteExternalDataReferences(v43);
    }

    v44 = a1[18];
    if (v44)
    {
      _deleteFileBackedFutures(v44);
    }

    _executeBatchDeleteStatements([v73 objectAtIndexedSubscript:3], v78);
    v45 = 0;
  }

  else
  {
    v45 = v28;
  }

  v46 = v45;
  v47 = a1[1];
  if (v47 && (*(v47 + 201) & 4) != 0)
  {
    [(NSSQLiteConnection *)v78 processDeleteRequest:a1];
    v48 = a1[9];
    if (v25)
    {
      v49 = [v78 adapter];
      v50 = [(NSSQLEntity *)v25 tempTableName];
      v51 = [(NSSQLiteAdapter *)v49 newDropTableStatementForTableNamed:v50];
      v87 = v51;
      _executeBatchDeleteStatements([MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1], v78);

      v77 = 0;
    }
  }

  else
  {
    v48 = 0;
  }

  [(NSSQLiteConnection *)v78 commitTransaction];
  if (v69)
  {
    if (v29)
    {
      v52 = [v78 registerCurrentQueryGenerationWithStore:a1[1]];
      if (v52)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v86 = v52;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Batch delete failed to generate a post transaction query generation with error %d\n", buf, 8u);
        }

        v54 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          v86 = v52;
          _os_log_fault_impl(&dword_18565F000, v54, OS_LOG_TYPE_FAULT, "CoreData: Batch delete failed to generate a post transaction query generation with error %d", buf, 8u);
        }
      }
    }

    else if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]>= 1)
    {
      v55 = objc_autoreleasePoolPush();
      _pflogInitialize(6);
      if (_NSCoreDataIsLogEnabled(6) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v56 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v56, OS_LOG_TYPE_ERROR, "CoreData: error: Batch delete did not affect any rows, not registering a query generation\n", buf, 2u);
          }
        }

        else
        {
          v57 = _PFLogGetLogStream(6);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_18565F000, v57, OS_LOG_TYPE_INFO, "CoreData: sql: Batch delete did not affect any rows, not registering a query generation\n", buf, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v58 = 1;
      }

      else
      {
        v58 = 6;
      }

      _NSCoreDataLog_console(v58, "Batch delete did not affect any rows, not registering a query generation");
      objc_autoreleasePoolPop(v55);
    }
  }

  [(NSSQLiteConnection *)a1[3] _performPostSaveTasks:v72 andForceFullVacuum:0];
  v59 = a1[1];
  if (v59)
  {
    [*(v59 + 216) unlock];
  }

  if (!v67)
  {
    [(NSSQLCore *)a1[1] _postChangeNotificationWithTransactionID:v48];
  }

  v41 = 0;
  v42 = 0;
  v18 = 0;
  v76 = v46;
  v38 = v25;
  v16 = 0;
  v40 = v77;
  v39 = v74;
LABEL_104:
  [(NSSQLiteConnection *)v78 endFetchAndRecycleStatement:?];
  if (v39 && [v39 count] == 3 && v76)
  {
    _executeBatchDeleteStatements([v73 objectAtIndexedSubscript:3], v78);
    [(NSSQLiteConnection *)v78 endFetchAndRecycleStatement:?];
  }

  if (v40)
  {
    v60 = [v78 adapter];
    v61 = [(NSSQLEntity *)v38 tempTableName];
    v62 = [(NSSQLiteAdapter *)v60 newDropTableStatementForTableNamed:v61];
    v84 = v62;
    _executeBatchDeleteStatements([MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1], v78);

    [(NSSQLiteConnection *)v78 endFetchAndRecycleStatement:?];
  }

  if (v18)
  {
    [(NSSQLiteConnection *)v78 rollbackTransaction];
  }

  v63 = v42 ^ 1;
  if (!a1)
  {
    v63 = 1;
  }

  if ((v63 & 1) == 0)
  {
    v64 = a1[1];
    if (v64)
    {
      [*(v64 + 216) unlock];
    }
  }

  if (v72)
  {
    [(NSSQLiteConnection *)v78 setSecureDeleteMode:?];
  }

  if (v68 && v16)
  {
    *v68 = v16;
  }

  if ((v41 | 4) == 4)
  {
    result = v79;
  }

  else
  {
    result = 0;
  }

  v66 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18569C0B4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18569BEC4);
  }

  JUMPOUT(0x18569BD38);
}

uint64_t _executeBatchDeleteStatements(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        [(NSSQLiteConnection *)a2 prepareAndExecuteSQLStatement:v9];
        if (v9 && *(v9 + 41) == 1)
        {
          if (a2)
          {
            v10 = sqlite3_changes(*(a2 + 72));
          }

          else
          {
            v10 = 0;
          }

          v6 = (v10 + v6);
        }

        ++v8;
      }

      while (v5 != v8);
      v11 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v5 = v11;
    }

    while (v11);
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sortColumnsByType(void *a1, void *a2)
{
  v4 = [a1 sqlType];
  v5 = [a2 sqlType];
  v6 = [a1 propertyType];
  switch(v6)
  {
    case 2:
      v7 = 0;
      break;
    case 6:
      v7 = 2;
      break;
    case 5:
      v7 = 1;
      break;
    default:
      if ((v4 - 1) > 0x11)
      {
        v7 = 140;
      }

      else
      {
        v7 = qword_18592E5B8[(v4 - 1)];
      }

      break;
  }

  v8 = [a2 propertyType];
  switch(v8)
  {
    case 2:
      v9 = 0;
      break;
    case 6:
      v9 = -2;
      break;
    case 5:
      v9 = -1;
      break;
    default:
      if ((v5 - 1) > 0x11)
      {
        v9 = -140;
      }

      else
      {
        v9 = qword_18592E648[(v5 - 1)];
      }

      break;
  }

  return v9 + v7;
}

__CFString *NSSQLiteAdapter_typeStringForSQLType(int a1)
{
  if ((a1 - 1) > 0x11)
  {
    return @"UNDEFINED";
  }

  else
  {
    return off_1E6EC3E38[(a1 - 1)];
  }
}

uint64_t _sharedIMPL_pvfk_core_c(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (_pvfk_header(a1, a3))
  {
    v5 = *(a1 + 24);
    Class = object_getClass(v5);
    return *(v5 + *(object_getIndexedIvars(Class) + v3 + 19));
  }

  else
  {
    return 0;
  }
}

void sub_18569D3B0(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x18569D360);
  }

  _Unwind_Resume(exc_buf);
}

NSStagedMigrationManager __swiftcall NSStagedMigrationManager.init(_:)(Swift::OpaquePointer a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NSMigrationStage();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithMigrationStages_];

  v6 = v3;
  result._container = v5;
  result._stages = v4;
  result.super.isa = v6;
  return result;
}

unint64_t type metadata accessor for NSMigrationStage()
{
  result = lazy cache variable for type metadata for NSMigrationStage;
  if (!lazy cache variable for type metadata for NSMigrationStage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMigrationStage);
  }

  return result;
}

void sub_18569E574(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x18569E57CLL);
  }

  JUMPOUT(0x18569E568);
}

void sub_18569E5B8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18569E588);
  }

  JUMPOUT(0x18569E568);
}

uint64_t _computeVersionHashesOnBackgroundThread(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 24);
  v4 = [v3 entitiesByName];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [objc_msgSend(v4 objectForKey:{*(*(&v11 + 1) + 8 * i)), "versionHash"}];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 24) = 0;
  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

NSBatchUpdateResult *_executeBatchUpdateRequest(void *a1, uint64_t *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = [a1 request];
  if (a1)
  {
    v6 = a1[3];
  }

  else
  {
    v6 = 0;
  }

  v53 = [objc_msgSend(a1 "request")];
  v49 = a2;
  if (a1 && (v7 = a1[1]) != 0)
  {
    v8 = (*(v7 + 201) >> 2) & 1;
  }

  else
  {
    v8 = 0;
  }

  v50 = [v5 resultType];
  v47 = v5;
  v9 = [objc_msgSend(v5 "propertiesToUpdate")];
  if (v9)
  {
    v10 = &unk_1EF435A08;
  }

  else
  {
    v10 = &unk_1EF4359E0;
  }

  if (!a1 || !v9)
  {
    goto LABEL_19;
  }

  v11 = a1[12];
  if (!v11)
  {
    v10 = &unk_1EF435A08;
LABEL_19:
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134030 userInfo:v10];
    v51 = 0;
    v2 = 0;
    v48 = 1;
    v15 = 0;
    goto LABEL_20;
  }

  if (*(v11 + 40) == 1)
  {
    v12 = objc_autoreleasePoolPush();
    _pflogInitialize(6);
    if (_NSCoreDataIsLogEnabled(6) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Short-circuiting batch update: impossible condition in where clause (2)\n", buf, 2u);
        }
      }

      else
      {
        v32 = _PFLogGetLogStream(6);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18565F000, v32, OS_LOG_TYPE_INFO, "CoreData: sql: Short-circuiting batch update: impossible condition in where clause (2)\n", buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v33 = 1;
    }

    else
    {
      v33 = 6;
    }

    _NSCoreDataLog_console(v33, "Short-circuiting batch update: impossible condition in where clause (2)");
    objc_autoreleasePoolPop(v12);
    v34 = [v47 resultType];
    if (v34 == 1)
    {
      v36 = [MEMORY[0x1E695DEC8] array];
    }

    else
    {
      if (v34 == 2)
      {
        v35 = &unk_1EF435F50;
LABEL_79:
        v2 = -[NSBatchUpdateResult initWithResultType:andObject:]([NSBatchUpdateResult alloc], "initWithResultType:andObject:", [v47 resultType], v35);
        v14 = 0;
        v15 = 0;
        v51 = 0;
        v48 = 1;
        goto LABEL_20;
      }

      v36 = [MEMORY[0x1E696AD98] numberWithBool:0];
    }

    v35 = v36;
    goto LABEL_79;
  }

  if (v53)
  {
    [(NSSQLiteConnection *)v6 setSecureDeleteMode:?];
  }

  v22 = a1[1];
  if (v22)
  {
    [*(v22 + 216) lock];
  }

  [(NSSQLiteConnection *)v6 beginTransaction];
  if ((v50 == 1) | v8 & 1 && (v2 = [(NSSQLBatchOperationRequestContext *)a1 createObjectIDCaptureStatementsForDrop:?], v64 = 0u, v65 = 0u, v62 = 0u, v63 = 0u, (v23 = [(NSBatchUpdateResult *)v2 countByEnumeratingWithState:&v62 objects:v70 count:16]) != 0))
  {
    v24 = *v63;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v63 != v24)
        {
          objc_enumerationMutation(v2);
        }

        [(NSSQLiteConnection *)v6 prepareAndExecuteSQLStatement:?];
        v15 = 1;
      }

      v23 = [(NSBatchUpdateResult *)v2 countByEnumeratingWithState:&v62 objects:v70 count:16];
    }

    while (v23);
  }

  else
  {
    v15 = 0;
  }

  [(NSSQLiteConnection *)v6 prepareAndExecuteSQLStatement:v11];
  if (v6)
  {
    v26 = sqlite3_changes(v6[9]);
    if ((v50 == 1) | v8 & 1)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v26 = 0;
    if ((v50 == 1) | v8 & 1)
    {
LABEL_56:
      v52 = [(NSSQLiteConnection *)v6 gatherObjectIDsFromTable:?];
      if (v8 && [v52 count])
      {
        v27 = [-[NSSQLiteConnection gatherHistoryChangesFromTable:](v6 a1[11])];
        -[NSSQLiteConnection processUpdateRequest:withOIDs:forAttributes:](v6, a1, v27, [objc_msgSend(v47 "propertiesToUpdate")]);
        v28 = a1[9];
      }

      else
      {
        v28 = 0;
      }

      v29 = [(NSSQLBatchOperationRequestContext *)a1 createObjectIDCaptureStatementsForDrop:?];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v2 = [v29 countByEnumeratingWithState:&v58 objects:v69 count:16];
      if (v2)
      {
        v30 = *v59;
        do
        {
          for (j = 0; j != v2; j = (j + 1))
          {
            if (*v59 != v30)
            {
              objc_enumerationMutation(v29);
            }

            [(NSSQLiteConnection *)v6 prepareAndExecuteSQLStatement:?];
          }

          v2 = [v29 countByEnumeratingWithState:&v58 objects:v69 count:16];
        }

        while (v2);
      }

      v15 = 0;
      v46 = v52;
      goto LABEL_85;
    }
  }

  v28 = 0;
  v46 = 0;
LABEL_85:
  [(NSSQLiteConnection *)v6 commitTransaction];
  v37 = v26;
  v38 = a1[1];
  if (v38)
  {
    if (atomic_load((v38 + 208)))
    {
      if (v26)
      {
        v40 = [v6 registerCurrentQueryGenerationWithStore:a1[1]];
        if (v40)
        {
          v41 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v67 = v40;
            _os_log_error_impl(&dword_18565F000, v41, OS_LOG_TYPE_ERROR, "CoreData: fault: Batch update failed to generate a post transaction query generation with error %d\n", buf, 8u);
          }

          v2 = _PFLogGetLogStream(17);
          if (os_log_type_enabled(&v2->super.super, OS_LOG_TYPE_FAULT))
          {
            *buf = 67109120;
            v67 = v40;
            _os_log_fault_impl(&dword_18565F000, &v2->super.super, OS_LOG_TYPE_FAULT, "CoreData: Batch update failed to generate a post transaction query generation with error %d", buf, 8u);
          }
        }
      }

      else if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]>= 1)
      {
        v42 = objc_autoreleasePoolPush();
        _pflogInitialize(6);
        if (_NSCoreDataIsLogEnabled(6) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v2 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(&v2->super.super, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, &v2->super.super, OS_LOG_TYPE_ERROR, "CoreData: error: Batch update did not affect any rows, not registering a query generation\n", buf, 2u);
            }
          }

          else
          {
            v2 = _PFLogGetLogStream(6);
            if (os_log_type_enabled(&v2->super.super, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, &v2->super.super, OS_LOG_TYPE_INFO, "CoreData: sql: Batch update did not affect any rows, not registering a query generation\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v43 = 1;
        }

        else
        {
          v43 = 6;
        }

        _NSCoreDataLog_console(v43, "Batch update did not affect any rows, not registering a query generation");
        objc_autoreleasePoolPop(v42);
      }
    }
  }

  if (v50 == 2)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v37];
  }

  if (![v47 resultType])
  {
    v46 = [MEMORY[0x1E696AD98] numberWithBool:1];
  }

  [(NSSQLiteConnection *)a1[3] _performPostSaveTasks:v53 andForceFullVacuum:0];
  v44 = a1[1];
  if (v44)
  {
    [*(v44 + 216) unlock];
    v45 = a1[1];
  }

  else
  {
    v45 = 0;
  }

  [(NSSQLCore *)v45 _postChangeNotificationWithTransactionID:v28];
  v48 = 0;
  v14 = 0;
  v51 = v46;
LABEL_20:
  [(NSSQLiteConnection *)v6 endFetchAndRecycleStatement:?];
  if (v15)
  {
    v16 = a1 ? [(NSSQLBatchOperationRequestContext *)a1 createObjectIDCaptureStatementsForDrop:?]: 0;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v17)
    {
      v18 = *v55;
      do
      {
        for (k = 0; k != v17; ++k)
        {
          if (*v55 != v18)
          {
            objc_enumerationMutation(v16);
          }

          [(NSSQLiteConnection *)v6 prepareAndExecuteSQLStatement:?];
        }

        v17 = [v16 countByEnumeratingWithState:&v54 objects:v68 count:16];
      }

      while (v17);
    }
  }

  if (v53)
  {
    [(NSSQLiteConnection *)v6 setSecureDeleteMode:?];
  }

  if (v49 && v14)
  {
    *v49 = v14;
  }

  if ((v48 | 4) == 4)
  {
    if (v51)
    {
      v2 = -[NSBatchUpdateResult initWithResultType:andObject:]([NSBatchUpdateResult alloc], "initWithResultType:andObject:", [v47 resultType], v51);
    }

    else
    {
      v2 = 0;
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_18569F4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int buf, int a45, int a46, __int16 a47)
{
  if (a2)
  {
    if (a2 == 4 || a2 == 3)
    {
      [objc_begin_catch(exception_object) errorObjectWithUserInfo:0];
      objc_end_catch();
    }

    else
    {
      if (a2 == 2)
      {
        objc_begin_catch(exception_object);
        objc_exception_rethrow();
      }

      objc_begin_catch(exception_object);
    }

    JUMPOUT(0x18569ECD0);
  }

  _Unwind_Resume(exception_object);
}

void sub_18569F7A4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18569F774);
  }

  JUMPOUT(0x18569F8FCLL);
}

uint64_t _PFLogGetLogStream(uint64_t a1)
{
  result = MEMORY[0x1E69E9C10];
  if (a1 <= 5)
  {
    if ((a1 - 1) >= 2)
    {
      if ((a1 - 4) < 2)
      {
        return logcoredataannotation;
      }

      if (a1 == 3)
      {
        return logcoredatasoftwarnings;
      }

      return result;
    }

    goto LABEL_10;
  }

  if (a1 > 8)
  {
    if (a1 == 9)
    {
      return logcoredatadebug;
    }

    if (a1 != 17)
    {
      return result;
    }

LABEL_10:
    if (_MergedGlobals_62 != -1)
    {
      dispatch_once(&_MergedGlobals_62, &__block_literal_global);
    }

    return __pflogFaultLog;
  }

  if ((a1 - 6) < 2)
  {
    return logcoredatasql;
  }

  if (a1 == 8)
  {
    return logcoredataxpc;
  }

  return result;
}

void _pflogInitialize(uint64_t a1)
{
  if (a1 <= 5)
  {
    if ((a1 - 1) >= 2)
    {
      if ((a1 - 4) >= 2)
      {
        if (a1 == 3 && qword_1ED4BE860 != -1)
        {
          dispatch_once(&qword_1ED4BE860, &__block_literal_global_6);
        }
      }

      else if (qword_1ED4BE868 != -1)
      {
        dispatch_once(&qword_1ED4BE868, &__block_literal_global_9);
      }

      return;
    }

    goto LABEL_12;
  }

  if (a1 > 8)
  {
    if (a1 != 9)
    {
      if (a1 != 17)
      {
        return;
      }

LABEL_12:
      if (_MergedGlobals_62 != -1)
      {
        dispatch_once(&_MergedGlobals_62, &__block_literal_global);
      }

      return;
    }

    if (qword_1ED4BE880 != -1)
    {
      dispatch_once(&qword_1ED4BE880, &__block_literal_global_18);
    }
  }

  else if ((a1 - 6) >= 2)
  {
    if (a1 == 8 && qword_1ED4BE878 != -1)
    {
      dispatch_once(&qword_1ED4BE878, &__block_literal_global_15);
    }
  }

  else if (qword_1ED4BE870 != -1)
  {
    dispatch_once(&qword_1ED4BE870, &__block_literal_global_12);
  }
}

os_log_t ___pflogInitialize_block_invoke_2()
{
  result = os_log_create("com.apple.coredata", "annotation");
  logcoredataannotation = result;
  return result;
}

uint64_t _NSCoreDataIsLogEnabled(uint64_t a1)
{
  if (_pflogging_enable_oslog < 1)
  {
    return _pflogging_enable_stderr > 0;
  }

  if (_pflogging_catastrophic_mode)
  {
    a1 = 1;
  }

  result = 1;
  if (a1 <= 5)
  {
    if (a1 > 3)
    {
      v3 = logcoredataannotation;
      goto LABEL_28;
    }

    switch(a1)
    {
      case 1:
        return result;
      case 2:
        return os_log_type_enabled(__pflogFaultLog, OS_LOG_TYPE_ERROR);
      case 3:
        v3 = logcoredatasoftwarnings;
LABEL_28:
        v4 = OS_LOG_TYPE_DEFAULT;
        return os_log_type_enabled(v3, v4);
    }

LABEL_27:
    v3 = MEMORY[0x1E69E9C10];
    goto LABEL_28;
  }

  if (a1 > 8)
  {
    if (a1 != 9)
    {
      if (a1 == 17)
      {
        return result;
      }

      goto LABEL_27;
    }

    v3 = logcoredatadebug;
  }

  else
  {
    if ((a1 - 6) >= 2)
    {
      if (a1 == 8)
      {
        v3 = logcoredataxpc;
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v3 = logcoredatasql;
  }

  v4 = OS_LOG_TYPE_INFO;
  return os_log_type_enabled(v3, v4);
}

void _NSCoreDataLog_console(uint64_t a1, const char *a2, ...)
{
  va_start(va, a2);
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v4 = objc_autoreleasePoolPush();
  _pflogInitialize(a1);
  if ((a1 - 1) > 0x10)
  {
    v5 = "unknown";
  }

  else
  {
    v5 = off_1E6EC13C8[a1 - 1];
  }

  IsLogEnabled = _NSCoreDataIsLogEnabled(a1);
  v7 = 0;
  if (IsLogEnabled && _pflogging_enable_stderr >= 1)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v3 arguments:va];
    v8 = [v7 UTF8String];
    os_unfair_lock_lock_with_options();
    fprintf(*MEMORY[0x1E69E9848], "CoreData: %s: %s\n", v5, v8);
    os_unfair_lock_unlock(&_log_lock);
  }

  objc_autoreleasePoolPop(v4);
}

BOOL _readExpressionDescriptionIntoShellFromBytes(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v35 = *MEMORY[0x1E69E9840];
  v11 = (*a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = v11 + 4;
  if (v11 + 4 <= a4)
  {
    v13 = bswap32(*(a2 + v11));
    v11 = (v11 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = v11 + 4;
  }

  else
  {
    v13 = 0;
    v14 = v11 + 4;
    v12 = *a3;
  }

  a5[20] = v13;
  if (v14 <= a4)
  {
    v15 = bswap32(*(a2 + v11));
    v12 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a7 + 8 * v15);
  v30 = 0;
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v19 fromData:v16 error:&v30];
  v21 = v20;
  if (v20)
  {
    a5[19] = v20;
    *a3 = v12;
    goto LABEL_16;
  }

  v22 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v23 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v25 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      if (!v25)
      {
        goto LABEL_14;
      }
    }

    else if (!v25)
    {
      goto LABEL_14;
    }

    v29 = [a5 name];
    *buf = 138412546;
    v32 = v29;
    v33 = 2112;
    v34 = v30;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to decode expression for expression description %@ : %@\n", buf, 0x16u);
  }

LABEL_14:
  v26 = [a5 name];
  _NSCoreDataLog_console(1, "Unable to decode expression for expression description %@ : %@", v26, v30);
  objc_autoreleasePoolPop(v22);
  if (a9)
  {
    *a9 = v30;
  }

LABEL_16:
  result = v21 != 0;
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1856A0C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1856A0EB0(void *a1)
{
  objc_begin_catch(a1);
  [(NSSQLiteConnection *)v1 _executeSQLString:?];
  objc_exception_rethrow();
}

void sub_1856A16E0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1856A16ECLL);
}

uint64_t _newReadPropertyProxyFromBytes(void *a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = _newReadPropertyProxyFromBytes_myProxyClass;
  if (!_newReadPropertyProxyFromBytes_myProxyClass)
  {
    v12 = objc_opt_class();
    _newReadPropertyProxyFromBytes_myProxyClass = v12;
  }

  v13 = (*a3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = v13 + 36;
  if (v13 + 36 > a4)
  {
    return 0;
  }

  v15 = a2 + v13;
  v16 = *(v15 + 4);
  v17 = *(a6 + 8 * bswap32(*v15));
  *v15 = 0;
  object_setClass(v15, v12);
  *(v15 + 8) = a1;
  *(v15 + 16) = v17;
  *(v15 + 24) = a5;
  *(v15 + 32) = bswap32(v16);
  *a3 = v14;
  return v15;
}

void sub_1856A4704(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
      objc_begin_catch(a1);
      JUMPOUT(0x1856A29D4);
    }

    v6 = objc_begin_catch(a1);
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LODWORD(STACK[0xDE0]) = 138412290;
      *(v2 + 4) = v6;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Exception caught during check for db integrity %@\n", &STACK[0xDE0], 0xCu);
    }

    v8 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      LODWORD(STACK[0xDE0]) = 138412290;
      *(v2 + 4) = v6;
      _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Exception caught during check for db integrity %@", &STACK[0xDE0], 0xCu);
    }

LABEL_14:
    objc_end_catch();
    JUMPOUT(0x1856A29D0);
  }

  v3 = objc_begin_catch(a1);
  v4 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    if (_pflogging_catastrophic_mode)
    {
      v5 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v5 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
LABEL_15:
        v9 = [v3 userInfo];
        LODWORD(STACK[0xDE0]) = 138412546;
        *(v2 + 4) = v3;
        LOWORD(STACK[0xDEC]) = 2112;
        *(v2 + 14) = v9;
        _os_log_error_impl(&dword_18565F000, v5, OS_LOG_TYPE_ERROR, "CoreData: error: Error encountered during check for db integrity %@ with userInfo %@\n", &STACK[0xDE0], 0x16u);
      }
    }
  }

  [v3 userInfo];
  _NSCoreDataLog_console(1, "Error encountered during check for db integrity %@ with userInfo %@");
  objc_autoreleasePoolPop(v4);
  goto LABEL_14;
}

void sub_1856A6C68(void *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 1)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1856A3460);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  JUMPOUT(0x1856A6C58);
}

void sub_1856A6CB4(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856A6C88);
  }

  JUMPOUT(0x1856A6C58);
}

void sub_1856A727C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Preloading query generation connection for high protection class CloudKit store failed with exception: %@\n", &buf, 0xCu);
    }

    v13 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      _os_log_fault_impl(&dword_18565F000, v13, OS_LOG_TYPE_FAULT, "CoreData: Preloading query generation connection for high protection class CloudKit store failed with exception: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x1856A7174);
  }

  _Unwind_Resume(a1);
}

void minion_duties2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  (*(a1 + 16))(a1);
  [v2 drain];
  pthread_mutex_lock((a1 + 32));
  *(a1 + 144) = 1;
  pthread_cond_broadcast((a1 + 96));
  pthread_mutex_unlock((a1 + 32));
  CFRelease(a1);
  v3 = *MEMORY[0x1E69E9840];
}

uint64_t _resolveForSelectorAndType(void *a1, const char *a2, objc_class *a3, unsigned int a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = a1[13];
  v9 = [v8 keys];
  v10 = [v8 length];
  v11 = PF_CALLOC_OBJECT_ARRAY(v10);
  v12 = _PFFastEntityClass(a1);
  Superclass = class_getSuperclass(v12);
  v56 = v10;
  if (a4 <= 1)
  {
    v56 = *(a1[14] + 24) + *(a1[14] + 16);
  }

  if (!v10)
  {
    v48 = 0;
    v49 = a1[19];
    v44 = a1 + 19;
    v45 = a4;
    atomic_compare_exchange_strong((v49 + 8 * a4), &v48, v11);
    if (v48)
    {
      goto LABEL_60;
    }

    goto LABEL_61;
  }

  v54 = a4;
  v14 = 0;
  v52 = a1 + 19;
  v53 = v11;
  do
  {
    v15 = [Superclass a2];
    Class = object_getClass(v15);
    v17 = Class != 0;
    if (Class != a3 && Class != 0)
    {
      do
      {
        Class = class_getSuperclass(Class);
        v17 = Class != 0;
      }

      while (Class != a3 && Class);
    }

    if (v17)
    {

      goto LABEL_51;
    }

    if (v14 > v56 && !PFUseToolchainBehaviors())
    {
      context = objc_autoreleasePoolPush();
      _pflogInitialize(2);
      if (!_NSCoreDataIsLogEnabled(2) || _pflogging_enable_oslog < 1)
      {
        goto LABEL_21;
      }

      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v20 = [a1 name];
          Name = class_getName(Superclass);
          v22 = *(v9 + 8 * v14);
          *dst = 138412802;
          v58 = v20;
          v59 = 2080;
          v60 = Name;
          v61 = 2112;
          v62 = v22;
          v23 = LogStream;
          v24 = "CoreData: error: Relationship properties should be @dynamic, not ivars (entity %@, class %s, property %@).  This will be an error in the future.\n";
LABEL_54:
          _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, v24, dst, 0x20u);
        }
      }

      else
      {
        v25 = _PFLogGetLogStream(2);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v40 = [a1 name];
          v41 = class_getName(Superclass);
          v42 = *(v9 + 8 * v14);
          *dst = 138412802;
          v58 = v40;
          v59 = 2080;
          v60 = v41;
          v61 = 2112;
          v62 = v42;
          v23 = v25;
          v24 = "CoreData: warning: Relationship properties should be @dynamic, not ivars (entity %@, class %s, property %@).  This will be an error in the future.\n";
          goto LABEL_54;
        }
      }

LABEL_21:
      v26 = _pflogging_catastrophic_mode;
      v27 = [a1 name];
      v28 = class_getName(Superclass);
      v29 = 1;
      if (!v26)
      {
        v29 = 2;
      }

      _NSCoreDataLog_console(v29, "Relationship properties should be @dynamic, not ivars (entity %@, class %s, property %@).  This will be an error in the future.", v27, v28, *(v9 + 8 * v14));
      objc_autoreleasePoolPop(context);
      v11 = v53;
    }

    v30 = *(a1[12] + 24 + 8 * v14);
    if (([v30 _propertyType] & 0xFFFFFFFFFFFFFFFBLL) != 2 || objc_msgSend(v30, "attributeType") != 900)
    {
      goto LABEL_50;
    }

    if (v54 == 3)
    {
      if (!v15)
      {
        goto LABEL_50;
      }

      v33 = [v15 containerClassID];
      if ((objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_isKindOfClass() & 1) != 0 && (v34 = [v15 selector]) != 0 && (InstanceMethod = class_getInstanceMethod(v33, v34)) != 0)
      {
        method_getReturnType(InstanceMethod, dst, 0x20uLL);
        v36 = dst[0];
      }

      else
      {
        v36 = 0;
      }

      if (v36 != 58 && (v36 - 65) > 0x34)
      {
        goto LABEL_50;
      }

      v37 = *(*v52 + 72);
      v38 = *(v37 + v14) | 0x10;
      goto LABEL_49;
    }

    if (v54 != 2 || !v15)
    {
      goto LABEL_50;
    }

    if (objc_opt_isKindOfClass())
    {
      v31 = [v15 ivar];
      if (v31)
      {
        v32 = *ivar_getTypeEncoding(v31);
        goto LABEL_46;
      }
    }

    else if (objc_opt_isKindOfClass())
    {
      v39 = [v15 method];
      if (v39)
      {
        method_getArgumentType(v39, 2u, dst, 0x20uLL);
        v32 = dst[0];
        goto LABEL_46;
      }
    }

    v32 = 0;
LABEL_46:
    if (v32 != 58 && (v32 - 65) > 0x34)
    {
      goto LABEL_50;
    }

    v37 = *(*v52 + 72);
    v38 = *(v37 + v14) | 1;
LABEL_49:
    *(v37 + v14) = v38;
LABEL_50:
    v11[v14] = v15;
LABEL_51:
    ++v14;
  }

  while (v14 != v10);
  v43 = 0;
  v44 = a1 + 19;
  v45 = v54;
  atomic_compare_exchange_strong((*v52 + 8 * v54), &v43, v11);
  if (v43)
  {
    v46 = v11;
    do
    {
      v47 = *v46++;

      --v10;
    }

    while (v10);
LABEL_60:
    PF_FREE_OBJECT_ARRAY(v11);
  }

LABEL_61:
  result = *(*v44 + 8 * v45);
  v51 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *snapshot_initialize_all_null(_BYTE *a1)
{
  Class = object_getClass(a1);
  result = object_getIndexedIvars(Class);
  v4 = result[16];
  v5 = v4 - 1;
  if (v4 >= 1)
  {
    v6 = a1 + 28;
    if (v4 >= 9)
    {
      v7 = v5 >> 3;
      *v6 = -1;
      if (v5 >= 0x10)
      {
        if (v7 <= 2)
        {
          v8 = 2;
        }

        else
        {
          v8 = v5 >> 3;
        }

        result = memset(a1 + 29, 255, (v8 - 1));
      }

      LOBYTE(v5) = v5 & 7;
      v6 += v7;
    }

    *v6 |= 0xFFu >> (v5 ^ 7);
  }

  return result;
}

void *_PF_Handler_Primitive_Internal_SetProperty(void *a1, unsigned int a2, void *a3, uint64_t a4)
{
  _PF_CopyOnWrite_Snapshot(a1);
  if (a4)
  {

    return _NSSetUsingKeyValueSetter();
  }

  else
  {
    v9 = a3;
    v10 = a1[3];

    return snapshot_set_value_as_object(v10, a2, v9);
  }
}

void *_PFFastTemporaryIDCreation(void *a1)
{
  v2 = _PFAllocateObject(_NSTemporaryObjectID_Default_Class, 0);
  if (v2)
  {
    v2[2] = a1;
    *(v2 + 3) = atomic_fetch_add_explicit(&_CoreDataProcessInstanceTempIDCounter, 1u, memory_order_relaxed) + 1;
  }

  return v2;
}

unsigned int *___sharedIMPL_setvfk_core_d_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
    v8 = *(a1 + 32);

    return _NSSetUsingKeyValueSetter();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 24);
    v5 = *(a1 + 48);
    Class = object_getClass(v4);
    result = object_getIndexedIvars(Class);
    v4[(v3 >> 3) + 28] &= ~(1 << (v3 & 7));
    *&v4[result[v3 + 19]] = v5;
  }

  return result;
}

objc_class *_PFFastStoreTemporaryIDClass(uint64_t a1)
{
  result = *(a1 + 64);
  if (!result)
  {
    result = [NSTemporaryObjectID classForStore:a1];
    v3 = 0;
    atomic_compare_exchange_strong((a1 + 64), &v3, result);
    if (v3)
    {
      v4 = *(a1 + 64);

      return v4;
    }
  }

  return result;
}

__CFDictionary *_executeGenerateObjectIDRequest(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (a1)
  {
    v2 = a1[3];
    v3 = a1[11];
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  v4 = [v3 count];
  Mutable = CFDictionaryCreateMutable(0, v4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a1)
  {
    v6 = a1[1];
    if (v6)
    {
      [*(v6 + 216) lock];
    }
  }

  [(NSSQLiteConnection *)v2 beginTransaction];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = -[NSSQLiteConnection generatePrimaryKeysForEntity:batch:](v2, v10, [objc_msgSend(v3 objectForKey:{v10), "unsignedIntegerValue"}]);
        if (!v12)
        {
          v20 = [_NSCoreDataException exceptionWithName:134030 code:@"unable to generate primary keys" reason:0 userInfo:?];
          objc_exception_throw(v20);
        }

        CFDictionarySetValue(Mutable, v10, [MEMORY[0x1E696AD98] numberWithLongLong:v12]);
        objc_autoreleasePoolPop(v11);
      }

      v7 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  [(NSSQLiteConnection *)v2 commitTransaction];
  if (a1)
  {
    v13 = a1[1];
    if (v13)
    {
      [*(v13 + 216) unlock];
    }
  }

  [(NSSQLiteConnection *)v2 endFetchAndRecycleStatement:?];
  if (Mutable)
  {
    v14 = Mutable;
    CFRelease(Mutable);
  }

  [v21 drain];
  v15 = 0;
  v16 = 0;
  v17 = Mutable;
  v18 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void sub_1856A94BC(_Unwind_Exception *a1)
{
  if (v2)
  {
    objc_end_catch();
  }

  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_1856A9674(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_1856A967C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1856A96B0);
}

void sub_1856A96A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(a1);
      JUMPOUT(0x1856A939CLL);
    }

    v3 = objc_begin_catch(a1);
    CFRelease(v2);
    v4 = v3;
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1856A9704(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856A96BCLL);
  }

  _Unwind_Resume(exception_object);
}

void snapshot_set_objectID(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3 != a2)
  {
    v4 = v3;
    *(a1 + 16) = a2;
    if (v4)
    {
    }
  }
}

void sub_1856A98EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *_executeCountRequest(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = [a1 request];
  v42 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]< 1)
  {
    Current = 0.0;
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  v5 = [[NSSQLColumn alloc] initWithColumnName:@"COUNT(*)" sqlType:1];
  v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v5, 0}];

  [(NSSQLiteConnection *)v2 setColumnsToFetch:v6];
  v7 = [a1 fetchStatement];
  v8 = [(NSSQLiteConnection *)v2 selectCountWithStatement:v7];
  [(NSSQLiteConnection *)v2 setColumnsToFetch:v6];
  if (v8)
  {
    v9 = [(NSSQLiteConnection *)v2 newFetchedArray];
    v10 = [v3 fetchLimit];
    v11 = [objc_msgSend(v9 objectAtIndex:{0), "unsignedIntValue"}];
    if (v10 && v10 < v11)
    {

      v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLong:v10];
      v13 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v12, 0}];
    }

    else
    {
      v13 = v9;
    }
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
    v13 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v14, 0}];
  }

  if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]>= 1)
  {
    v15 = [objc_msgSend(v13 objectAtIndex:{0), "unsignedIntValue"}];
    if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]>= 2)
    {
      v16 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v44 = *&v7;
            v45 = 1024;
            v46 = v15;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: count using %@ returned %d\n", buf, 0x12u);
          }
        }

        else
        {
          v18 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v44 = *&v7;
            v45 = 1024;
            v46 = v15;
            _os_log_impl(&dword_18565F000, v18, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: count using %@ returned %d\n", buf, 0x12u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v19 = 1;
      }

      else
      {
        v19 = 4;
      }

      _NSCoreDataLog_console(v19, "count using %@ returned %d", v7, v15);
      objc_autoreleasePoolPop(v16);
    }

    if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]>= 2)
    {
      if ((v8 & 1) == 0)
      {
        v20 = objc_autoreleasePoolPush();
        _pflogInitialize(4);
        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v21 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v44 = *&v3;
              _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: error: logically false count request %@ short circuits.\n", buf, 0xCu);
            }
          }

          else
          {
            v22 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v44 = *&v3;
              _os_log_impl(&dword_18565F000, v22, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: logically false count request %@ short circuits.\n", buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v23 = 1;
        }

        else
        {
          v23 = 4;
        }

        _NSCoreDataLog_console(v23, "logically false count request %@ short circuits.", v3);
        objc_autoreleasePoolPop(v20);
      }

      v24 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v25 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v44 = *&v3;
            v45 = 1024;
            v46 = v15;
            _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: error: count request %@ returned %d\n", buf, 0x12u);
          }
        }

        else
        {
          v26 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v44 = *&v3;
            v45 = 1024;
            v46 = v15;
            _os_log_impl(&dword_18565F000, v26, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: count request %@ returned %d\n", buf, 0x12u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v27 = 1;
      }

      else
      {
        v27 = 4;
      }

      _NSCoreDataLog_console(v27, "count request %@ returned %d", v3, v15);
      objc_autoreleasePoolPop(v24);
    }

    v28 = 0.0;
    if (v8)
    {
      v28 = CFAbsoluteTimeGetCurrent() - Current;
    }

    if (a1)
    {
      v29 = *(a1 + 80);
      v30 = objc_autoreleasePoolPush();
      if (v29)
      {
        _pflogInitialize(4);
        IsLogEnabled = _NSCoreDataIsLogEnabled(4);
        v32 = "total count request execution time: \x1B[31m%.4f\x1B[0ms for count of %d.";
        if (IsLogEnabled && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v33 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v44 = v28;
              v45 = 1024;
              v46 = v15;
              _os_log_error_impl(&dword_18565F000, v33, OS_LOG_TYPE_ERROR, "CoreData: error: total count request execution time: \x1B[31m%.4f\x1B[0ms for count of %d.\n", buf, 0x12u);
            }
          }

          else
          {
            v34 = _PFLogGetLogStream(4);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v44 = v28;
              v45 = 1024;
              v46 = v15;
              _os_log_impl(&dword_18565F000, v34, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total count request execution time: \x1B[31m%.4f\x1B[0ms for count of %d.\n", buf, 0x12u);
            }
          }

          v32 = "total count request execution time: \x1B[31m%.4f\x1B[0ms for count of %d.";
        }

LABEL_71:
        if (_pflogging_catastrophic_mode)
        {
          v38 = 1;
        }

        else
        {
          v38 = 4;
        }

        _NSCoreDataLog_console(v38, v32, *&v28, v15);
        objc_autoreleasePoolPop(v30);
        goto LABEL_75;
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
    }

    _pflogInitialize(4);
    v35 = _NSCoreDataIsLogEnabled(4);
    v32 = "total count request execution time: %.4fs for count of %d.";
    if (v35 && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v36 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v44 = v28;
          v45 = 1024;
          v46 = v15;
          _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: error: total count request execution time: %.4fs for count of %d.\n", buf, 0x12u);
        }
      }

      else
      {
        v37 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v44 = v28;
          v45 = 1024;
          v46 = v15;
          _os_log_impl(&dword_18565F000, v37, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: total count request execution time: %.4fs for count of %d.\n", buf, 0x12u);
        }
      }

      v32 = "total count request execution time: %.4fs for count of %d.";
    }

    goto LABEL_71;
  }

LABEL_75:
  [(NSSQLiteConnection *)v2 endFetchAndRecycleStatement:?];
  [v42 drain];
  v39 = v13;
  v40 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1856AA214(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1856AA19CLL);
    }

    v2 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1856AA2E8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856AA2BCLL);
  }

  JUMPOUT(0x1856AA280);
}

uint64_t _sharedIMPL_pvfk_core_q(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  if (!_pvfk_header(a1, a3))
  {
    return 0;
  }

  v5 = *(a1 + 24);
  Class = object_getClass(v5);
  return *&v5[*(object_getIndexedIvars(Class) + v3 + 19)];
}

void _PFfastFactoryRelease2(void *a1)
{
  IndexedIvars = object_getIndexedIvars(a1);
  if (!atomic_fetch_add_explicit(IndexedIvars, 0xFFFFFFFF, memory_order_relaxed))
  {
    v2 = IndexedIvars;
    v3 = IndexedIvars[2];
    if (v3)
    {
      CFRelease(v3);
      v2[2] = 0;
    }

    v2[1] = 0;
    __dmb(0xBu);
  }
}

void sub_1856AB5A0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856AB57CLL);
  }

  JUMPOUT(0x1856AB558);
}

unint64_t _sql_read_only_fetch_plan_for_entity(unint64_t *a1)
{
  v1 = a1;
  if (!atomic_load(a1 + 28))
  {
    v3 = [a1 foreignKeyColumns];
    v4 = [v1 foreignEntityKeyColumns];
    v5 = [v1 foreignOrderKeyColumns];
    v28 = v1;
    v6 = [v1 attributeColumns];
    v7 = [v3 count];
    v8 = [v4 count];
    v9 = [v5 count];
    v10 = v8 + v7 + v9 + [v6 count];
    v11 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v11 = malloc_default_zone();
    }

    v12 = malloc_type_zone_malloc(v11, (24 * v10 + 8), 0x38D3371CuLL);
    v12[1] = v10;
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v13 addObjectsFromArray:v3];
    [v13 addObjectsFromArray:v4];
    [v13 addObjectsFromArray:v5];
    [v13 addObjectsFromArray:v6];
    [v13 sortUsingFunction:_compareSQLColumnsByFetchIndex context:0];
    v30 = v13;
    v29 = [v13 count];
    ptr = v12;
    if (v29)
    {
      v14 = 0;
      v15 = (v12 + 2);
      v16 = 32;
      while (1)
      {
        v17 = [v30 objectAtIndex:{v14, ptr}];
        v18 = [v17 slot];
        if (v17)
        {
          v19 = v17[13];
        }

        else
        {
          v19 = 0;
        }

        v20 = [v17 sqlType];
        v21 = [v17 propertyType];
        v22 = [v17 propertyDescription];
        if (v22)
        {
          v23 = [v22 isOptional];
          if (!v23)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v23 = 1;
        }

        v16 += 4;
LABEL_13:
        v24 = [(NSSQLColumn *)v17 roughSizeEstimate];
        if (v17)
        {
          CFRetain(v17);
        }

        v16 += v24;
        *v15 = v18;
        *(v15 + 1) = v19;
        *(v15 + 1) = (v20 << 32) | (v21 << 40) | v23;
        *(v15 + 2) = v17;
        v15 += 24;
        if (v29 == ++v14)
        {
          goto LABEL_19;
        }
      }
    }

    v16 = 32;
LABEL_19:

    v25 = 0;
    *ptr = v16;
    v1 = v28;
    atomic_compare_exchange_strong(v28 + 28, &v25, ptr);
    if (v25)
    {
      _deallocateFetchEntityPlan(ptr);
    }
  }

  return atomic_load(v1 + 28);
}

uint64_t _prepareDictionaryResults(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v173 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v146 = *(a2 + 136);
  }

  else
  {
    v146 = 0;
  }

  v3 = *(a1 + 4);
  if (v3 >= 0x40000001 || (v154 = a2, (v145 = PF_ALLOCATE_OBJECT_ARRAY(v3)) == 0))
  {
    result = NSArray_EmptyArray;
    goto LABEL_259;
  }

  v4 = **(v2 + 64);
  v5 = *(v146 + 40);
  if (v154)
  {
    v131 = *(v154 + 112);
  }

  else
  {
    v131 = 0;
  }

  v152 = *(v146 + 64);
  if (v5)
  {
    v139 = *(v5 + 240);
  }

  else
  {
    v139 = 0;
  }

  plan_for_entity = _sql_read_only_fetch_plan_for_entity(v5);
  if (!v154)
  {
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v137 = v10;
    v8 = 0;
    v11 = 0;
    v138 = 0;
LABEL_265:
    v147 = 0;
    goto LABEL_16;
  }

  v138 = *(v154 + 128);
  v6 = *(v154 + 32);
  v7 = *(v154 + 136);
  if (v7)
  {
    v8 = *(v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v137 = v10;
  v11 = v6;
  if (!v6)
  {
    goto LABEL_265;
  }

  v147 = *(v6 + 42) >> 7;
LABEL_16:
  v124 = (*(v146 + 72) & 0x1C) == 20;
  v142 = v3;
  v157 = v5;
  v140 = v11;
  if (v124)
  {
    v12 = v4;
    v144 = [MEMORY[0x1E695DF70] array];
    v13 = [MEMORY[0x1E695DFA8] set];
    v14 = [MEMORY[0x1E695DF70] array];
    v15 = *(plan_for_entity + 4);
    if (v15)
    {
      v16 = (plan_for_entity + 24);
      do
      {
        v17 = [*v16 propertyDescription];
        if (v17)
        {
          v18 = v17;
          [v144 addObject:v17];
          if (([v18 _entitysReferenceID] & 0x8000000000000000) == 0)
          {
            [v13 addObject:{objc_msgSend(v18, "name")}];
          }
        }

        v16 += 3;
        --v15;
      }

      while (v15);
    }

    v169 = 0u;
    v168 = 0u;
    v167 = 0u;
    v166 = 0u;
    v19 = [v8 propertiesToFetch];
    v10 = [v19 countByEnumeratingWithState:&v166 objects:v172 count:16];
    if (v10)
    {
      v20 = v10;
      v21 = *v167;
      do
      {
        v22 = 0;
        do
        {
          if (*v167 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v166 + 1) + 8 * v22);
          if ([v23 isTransient])
          {
            [v14 addObject:v23];
            if (([v23 _entitysReferenceID] & 0x8000000000000000) == 0)
            {
              [v13 addObject:{objc_msgSend(v23, "name")}];
            }
          }

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v10 = [v19 countByEnumeratingWithState:&v166 objects:v172 count:16];
        v20 = v10;
      }

      while (v10);
      v3 = v142;
    }

    v5 = v157;
    v4 = v12;
    if (v3)
    {
LABEL_38:
      v150 = 0;
      v153 = 0;
      v141 = 0;
      v132 = 0;
      v134 = 0;
      v133 = 0;
      v151 = sel_entityForID_;
      v156 = @"TOMBSTONE";
      v143 = v2;
      v136 = v13;
      v135 = v14;
      while (1)
      {
          ;
        }

        v24 = *(plan_for_entity + 4);
        MEMORY[0x1EEE9AC00](v10);
        v27 = (&v131 - v26);
        v148 = &v131;
        if (v24 >= 0x201)
        {
          break;
        }

        bzero(&v131 - v26, 8 * v25);
        if (v24)
        {
          v149 = v4;
          goto LABEL_45;
        }

        v30 = 0;
LABEL_239:
        if ((*(v146 + 72) & 0x1C) == 0x10)
        {
          v114 = [NSKnownKeysDictionary alloc];
          v115 = [(NSKnownKeysDictionary *)v114 initWithSearchStrategy:v139];
          v10 = [(NSKnownKeysDictionary *)v115 setValues:v27];
        }

        else
        {
          v116 = v140;
          v117 = v138;
          v115 = [NSManagedObjectContext _retainedObjectWithID:v140 optionalHandler:*v27 withInlineStorage:v138];
          _PFFaultHandlerFulfillPartialFault(v117, v115, v116, v27, v144, v136, v135);
        }

        v2 = v143;
        v145[v150] = v115;
        if (v30)
        {
          v118 = v30;
          v119 = v27;
          do
          {
            v120 = *v119++;

            --v118;
          }

          while (v118);
        }

        if (v24 >= 0x201)
        {
          NSZoneFree(0, v27);
        }

        v121 = *(v4 + 4);
        if ((v121 & 0x80000000) == 0)
        {
          v122 = *(*(v2 + 64) + 8 * v121);
          v4 = v122 + *(v4 + 16);
          v123 = ++v150;
          v124 = !v122 || v123 == v3;
          if (!v124)
          {
            continue;
          }
        }

        goto LABEL_255;
      }

      v149 = v4;
      v27 = NSAllocateScannedUncollectable();
LABEL_45:
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v158 = 0;
      v31 = 0;
      v155 = 0;
      v159 = 0;
      v32 = v149 + 32;
      v161 = v24;
      v160 = v27;
      while (1)
      {
        v33 = plan_for_entity + v28;
        v34 = *(plan_for_entity + v28 + 20);
        v163 = v30;
        if ((v34 - 2) > 6)
        {
          v35 = 3;
        }

        else
        {
          v35 = qword_18592EDE0[(v34 - 2)];
        }

        v36 = ((v35 + v32) & ~v35);
        if (*(v33 + 16))
        {
          v38 = *v36++;
          v37 = v38 != 0;
        }

        else
        {
          v37 = 0;
        }

        v39 = 0;
        v164 = v31;
        if (((v29 > 6) & v31) == 1 && !v37)
        {
          v40 = v159;
          if (!v159)
          {
            if (v154)
            {
              v41 = *(v154 + 8);
            }

            else
            {
              v41 = 0;
            }

            v42 = [v41 model];
            v40 = v152(v42, v151, v155);
          }

          v43 = [_PFPersistentHistoryModel _retainedTombstonesForEntity:v40];
          v44 = [objc_msgSend(*(plan_for_entity + v28 + 24) "propertyDescription")];
          v39 = v40;
          v45 = [objc_msgSend(v44 stringByReplacingOccurrencesOfString:v156 withString:{&stru_1EF3F1768), "intValue"}];
          v46 = [v43 count];
          v159 = v39;
          if (v45 >= v46)
          {
            v39 = 0;
          }

          else
          {
            v47 = [v43 objectAtIndexedSubscript:v45];
            if (v39)
            {
              v39 = [v39[5] objectForKey:v47];
            }

            v34 = 17;
          }

          v5 = v157;
        }

        v48 = ~v35;
        if (v34 <= 6)
        {
          if ((v34 - 4) < 3)
          {
            goto LABEL_104;
          }

          if ((v34 - 2) < 2)
          {
            valuePtr = 0.0;
            v51 = (&v36[v35] & v48);
            if (v37)
            {
              v32 = v36;
            }

            else
            {
              v32 = (v51 + 1);
            }

            v52 = *(plan_for_entity + v28 + 21);
            if (v52 == 3)
            {
              v27 = v160;
              v53 = v163;
              if (v158)
              {
                v53 = v163 - 1;
                v68 = v160[v163 - 1];
              }

              else
              {
                v68 = [objc_msgSend(*(plan_for_entity + v28 + 24) "toOneRelationship")];
              }

              if (v37)
              {
                v55 = 0;
                v68 = v153;
                goto LABEL_146;
              }

              if (*v51)
              {
                v78 = v141;
                if (v68 != v153)
                {
                  v78 = 0;
                }

                if (v154)
                {
                  v24 = v161;
                  if (v68 != v153)
                  {
                    v78 = [*(v154 + 8) objectIDFactoryForSQLEntity:v68];
                  }
                }

                else
                {
                  v24 = v161;
                }

                v141 = v78;
                v55 = [[v78 alloc] initWithPK64:*v51];
                goto LABEL_147;
              }

LABEL_144:
              v55 = 0;
LABEL_145:
              v68 = v153;
LABEL_146:
              v24 = v161;
LABEL_147:
              v158 = 0;
              v27[v53] = v55;
              v153 = v68;
              goto LABEL_148;
            }

            v27 = v160;
            v31 = v164;
            v53 = v163;
            if (v52 == 1)
            {
              if (byte_1ED4BEEC6 & v37)
              {
                goto LABEL_144;
              }

              if (((byte_1ED4BEEC6 ^ 1) & v37) != 0)
              {
                p_valuePtr = &valuePtr;
              }

              else
              {
                p_valuePtr = v51;
              }

              v55 = CFNumberCreate(0, kCFNumberLongLongType, p_valuePtr);
              goto LABEL_145;
            }

            goto LABEL_170;
          }

          if (v34 == 1)
          {
            LODWORD(valuePtr) = 0;
            v56 = (&v36[v35] & v48);
            if (v37)
            {
              v57 = &valuePtr;
            }

            else
            {
              v57 = (&v36[v35] & v48);
            }

            if (v37)
            {
              v32 = v36;
            }

            else
            {
              v32 = (v56 + 1);
            }

            v58 = *(plan_for_entity + v28 + 21);
            v27 = v160;
            if (v58 == 10)
            {
              v59 = CFNumberCreate(0, kCFNumberIntType, v57);
              v158 = 0;
              v31 = v164;
              v53 = v163;
              goto LABEL_169;
            }

            v31 = v164;
            v53 = v163;
            if (v58 != 4)
            {
              if (v58 == 1)
              {
                if (byte_1ED4BEEC6 & v37)
                {
                  v59 = 0;
                }

                else
                {
                  if (byte_1ED4BEEC6)
                  {
                    v57 = v56;
                  }

                  v59 = CFNumberCreate(0, kCFNumberIntType, v57);
                }

                v158 = 0;
LABEL_169:
                v27[v53] = v59;
              }

LABEL_170:
              v24 = v161;
              if (!v5)
              {
                goto LABEL_229;
              }

              goto LABEL_226;
            }

            if (v37)
            {
              v59 = 0;
            }

            else
            {
              v59 = v152(v131, v151, *v56);
            }

            v158 = 1;
            goto LABEL_169;
          }
        }

        else if (v34 <= 11)
        {
          if ((v34 - 7) < 2)
          {
            if (v37)
            {
              v50 = 0;
              v24 = v161;
              v27 = v160;
LABEL_88:
              v31 = v164;
              v32 = v36;
            }

            else
            {
              v65 = (&v36[v35] & v48);
              v66 = *v65;
              v32 = (v65 + 1);
              v67 = v66;
              valuePtr = v66;
              if (*(v33 + 20) == 7)
              {
                v50 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
              }

              else
              {
                v50 = CFDateCreate(0, v67);
              }

              v24 = v161;
              v27 = v160;
              v31 = v164;
            }

            v53 = v163;
            goto LABEL_128;
          }

          if (v34 == 9)
          {
LABEL_104:
            if (v37)
            {
              v60 = 0;
              v24 = v161;
              v27 = v160;
              v32 = v36;
              v53 = v163;
              goto LABEL_116;
            }

            v61 = (&v36[v35] & v48);
            v60 = CFStringCreateWithCString(0, v61 + 4, 0x8000100u);
            v32 = &v61[*v61 + 4];
            v62 = *(v33 + 20);
            if (v62 == 12)
            {
              v63 = [MEMORY[0x1E695DFF8] URLWithString:v60];
              v24 = v161;
              v27 = v160;
              v53 = v163;
LABEL_114:
              CFRelease(v60);
              v60 = v63;
            }

            else
            {
              v24 = v161;
              v27 = v160;
              v53 = v163;
              if (v62 == 4)
              {
                v63 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v60];
                goto LABEL_114;
              }
            }

            v5 = v157;
LABEL_116:
            v158 = 0;
            v27[v53] = v60;
LABEL_148:
            v31 = v164;
            if (!v5)
            {
              goto LABEL_229;
            }

            goto LABEL_226;
          }
        }

        else
        {
          if ((v34 - 13) < 2)
          {
            v158 = 0;
            v24 = v161;
            v27 = v160;
            v31 = v164;
            v32 = v36;
            v53 = v163;
            if (!v5)
            {
              goto LABEL_229;
            }

            goto LABEL_226;
          }

          if (v34 == 12)
          {
            goto LABEL_104;
          }

          if (v34 == 16)
          {
            v49 = [*(plan_for_entity + v28 + 24) propertyDescription];
            if (!v147 || [v49 _isFileBackedFuture])
            {
              v27 = v160;
              if (v37)
              {
                v50 = 0;
                v24 = v161;
                goto LABEL_88;
              }

              v73 = (&v36[v35] & v48);
              v75 = v73 + 1;
              v74 = *(v73 + 4);
              if (v74 == 3)
              {
                v53 = v163;
                if (v154)
                {
                  v85 = v133;
                  v24 = v161;
                  if (!v133)
                  {
                    v85 = *(v154 + 104);
                  }
                }

                else
                {
                  v85 = v133;
                  v24 = v161;
                }

                v106 = [MEMORY[0x1E695DEF0] dataWithBytes:v75 length:{*v73, v131}];
                v107 = [_NSDataFileBackedFuture alloc];
                v133 = v85;
                v50 = -[_NSDataFileBackedFuture initWithStoreMetadata:directory:](v107, "initWithStoreMetadata:directory:", v106, [MEMORY[0x1E695DFF8] fileURLWithPath:v85 isDirectory:1]);
              }

              else
              {
                v53 = v163;
                if (v74 == 1)
                {
                  v76 = [_PFExternalReferenceData alloc];
                  if (v154)
                  {
                    v77 = *(v154 + 184);
                  }

                  else
                  {
                    v77 = 0;
                  }

                  v24 = v161;
                  v31 = v164;
                  v50 = [(_PFExternalReferenceData *)v76 initWithStoreBytes:v75 length:*v73 externalLocation:0 safeguardLocation:0 protectionLevel:v77, v131];
LABEL_204:
                  v32 = v75 + *v73;
                  v5 = v157;
LABEL_128:
                  v158 = 0;
                  v27[v53] = v50;
                  if (!v5)
                  {
                    goto LABEL_229;
                  }

                  goto LABEL_226;
                }

                v86 = strnlen(v73 + 5, *v73 - 1);
                v87 = [v137 stringWithFileSystemRepresentation:v73 + 5 length:v86];
                v88 = v132;
                if (v132)
                {
                  v89 = v154;
                  v24 = v161;
                  if (!v154)
                  {
                    goto LABEL_164;
                  }

LABEL_190:
                  v90 = v134;
                  if (!v134)
                  {
                    v90 = *(v89 + 96);
                  }
                }

                else
                {
                  v89 = v154;
                  v24 = v161;
                  if (v154)
                  {
                    v88 = *(v154 + 88);
                    goto LABEL_190;
                  }

                  v88 = 0;
LABEL_164:
                  v90 = v134;
                }

                v132 = v88;
                v101 = [v88 stringByAppendingPathComponent:{v87, v131}];
                v134 = v90;
                v102 = [v90 stringByAppendingPathComponent:v87];
                if ([v137 fileExistsAtPath:v101])
                {
                  v103 = [_PFExternalReferenceData alloc];
                  if (v154)
                  {
                    v104 = *(v154 + 184);
                  }

                  else
                  {
                    v104 = 0;
                  }

                  v50 = [(_PFExternalReferenceData *)v103 initWithStoreBytes:v75 length:*v73 externalLocation:v101 safeguardLocation:v102 protectionLevel:v104];
                }

                else
                {
                  v50 = 0;
                }
              }

              v31 = v164;
              goto LABEL_204;
            }
          }
        }

        if (v37)
        {
          v64 = 0;
          v24 = v161;
          v27 = v160;
          v31 = v164;
          v32 = v36;
          v53 = v163;
          goto LABEL_225;
        }

        v69 = (&v36[v35] & v48);
        v64 = CFDataCreate(0, v69 + 4, *v69);
        v70 = &v69[*v69 + 4];
        if (v34 == 17 && [v39 sqlType] != 10)
        {
          break;
        }

        v71 = *(v33 + 20);
        v53 = v163;
        if (v71 == 11)
        {
          v94 = [(__CFData *)v64 length];
          v24 = v161;
          v27 = v160;
          v32 = v70;
          if (v94 == 16)
          {
            v72 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{-[__CFData bytes](v64, "bytes")}];
LABEL_178:
            v95 = v72;
            CFRelease(v64);
            v64 = v95;
          }

          else
          {

            v64 = 0;
          }

LABEL_185:
          v31 = v164;
          goto LABEL_225;
        }

        v24 = v161;
        v27 = v160;
        if (v71 != 18)
        {
          v32 = v70;
          if (v71 == 15)
          {
            v72 = +[_PFRoutines retainedDecodeValue:forTransformableAttribute:](_PFRoutines, v64, [*(plan_for_entity + v28 + 24) propertyDescription]);
            goto LABEL_178;
          }

          goto LABEL_185;
        }

        v91 = [*(plan_for_entity + v28 + 24) propertyDescription];
        valuePtr = 0.0;
        if (v154)
        {
          v92 = *(v154 + 8);
        }

        else
        {
          v92 = 0;
        }

        v93 = [v91 decode:v64 withRegistry:objc_msgSend(objc_msgSend(v92 error:{"persistentStoreCoordinator", v131), "codableAdapterRegistry"), &valuePtr}];

        if (!v93)
        {
          v128 = MEMORY[0x1E695DF30];
          v129 = *MEMORY[0x1E695D940];
          v130 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode for %@: %@", v91, *&valuePtr];
          v170 = *MEMORY[0x1E696AA08];
          v171 = valuePtr;
          objc_exception_throw([v128 exceptionWithName:v129 reason:v130 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v171, &v170, 1)}]);
        }

        v64 = v93;
LABEL_224:
        v31 = v164;
        v32 = v70;
LABEL_225:
        v158 = 0;
        v27[v53] = v64;
        v5 = v157;
        if (!v157)
        {
          goto LABEL_229;
        }

LABEL_226:
        if (v28 != 72 || *(v5 + 184) != 16001)
        {
LABEL_229:
          if (v28 == 120 && (v31 & 1) != 0)
          {
            v155 = [v27[v53] intValue];
            v31 = 1;
          }

          goto LABEL_231;
        }

        v31 |= [v27[v53] intValue] == 2;
LABEL_231:
        v30 = v53 + 1;
        ++v29;
        v28 += 24;
        if (v24 == v29)
        {
          v3 = v142;
          v4 = v149;
          goto LABEL_239;
        }
      }

      [*(plan_for_entity + v28 + 24) propertyDescription];
      v79 = [v39 sqlType];
      v80 = v79;
      v81 = 0;
      v53 = v163;
      if (v79 > 6)
      {
        v24 = v161;
        if (v79 > 10)
        {
          v27 = v160;
          switch(v79)
          {
            case 11:
              if ([(__CFData *)v64 length]!= 16)
              {
                v81 = 0;
                goto LABEL_223;
              }

              v105 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{-[__CFData bytes](v64, "bytes")}];
              break;
            case 12:
              goto LABEL_209;
            case 15:
              v105 = +[_PFRoutines retainedDecodeValue:forTransformableAttribute:](_PFRoutines, v64, [v39 propertyDescription]);
              break;
            default:
              goto LABEL_223;
          }

          v81 = v105;
          goto LABEL_223;
        }

        v27 = v160;
        if ((v79 - 7) < 2)
        {
          v96 = [(__CFData *)v64 bytes];
          v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v96];
          if (v80 == 7)
          {
            v98 = [objc_msgSend(v39 "propertyDescription")];
            v99 = objc_alloc(MEMORY[0x1E696AD98]);
            if (v98 == 600)
            {
              [v97 floatValue];
              v100 = [v99 initWithFloat:?];
            }

            else
            {
              [v97 doubleValue];
              v100 = [v99 initWithDouble:?];
            }
          }

          else
          {
            v112 = objc_alloc(MEMORY[0x1E695DF00]);
            [v97 doubleValue];
            v100 = [v112 initWithTimeIntervalSinceReferenceDate:?];
          }

          v113 = v97;
          v81 = v100;

          goto LABEL_223;
        }

        if (v79 != 9)
        {
          goto LABEL_223;
        }
      }

      else
      {
        v24 = v161;
        v27 = v160;
        if ((v79 - 4) >= 3)
        {
          if ((v79 - 2) < 2)
          {
            v82 = [(__CFData *)v64 bytes];
            v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v82];
            v84 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:{objc_msgSend(v83, "longLongValue")}];
LABEL_207:
            v81 = v84;

            goto LABEL_223;
          }

          if (v79 == 1)
          {
            v108 = [(__CFData *)v64 bytes];
            v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v108];
            v84 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:{objc_msgSend(v83, "integerValue")}];
            goto LABEL_207;
          }

LABEL_223:
          CFRelease(v64);
          v64 = v81;
          goto LABEL_224;
        }
      }

LABEL_209:
      if (CFDataGetLength(v64))
      {
        BytePtr = CFDataGetBytePtr(v64);
        v81 = CFStringCreateWithCString(0, BytePtr, 0x8000100u);
      }

      else
      {
        v81 = &stru_1EF3F1768;
      }

      if (v80 == 12)
      {
        v110 = MEMORY[0x1E695DFF8];
      }

      else
      {
        if (v80 != 4)
        {
          goto LABEL_223;
        }

        v110 = MEMORY[0x1E696AB90];
      }

      v111 = [[v110 alloc] initWithString:v81];
      CFRelease(v81);
      v81 = v111;
      goto LABEL_223;
    }
  }

  else
  {
    v14 = 0;
    v144 = 0;
    v13 = 0;
    if (v3)
    {
      goto LABEL_38;
    }
  }

LABEL_255:
  if ((*(v146 + 72) & 0x1C) == 0x14)
  {
    v125 = 46;
  }

  else
  {
    v125 = 10;
  }

  v126 = [_PFArray alloc];
  result = [(_PFArray *)v126 initWithObjects:v145 count:v3 andFlags:v125 andContext:v140];
LABEL_259:
  v127 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1856AD5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  v17 = objc_begin_catch(exception_object);
  if (v16)
  {
    objc_setProperty_nonatomic(v16, v18, v17, 48);
  }

  objc_end_catch();
}

uint64_t _executeChangeRequest(void *a1, void *a2)
{
  v144[3] = *MEMORY[0x1E69E9840];
  v4 = [a1 request];
  v5 = v4;
  v124 = 0;
  if (a1)
  {
    v111 = a1[3];
  }

  else
  {
    v111 = 0;
  }

  v110 = a2;
  if ([v4 transactionNumber] && objc_msgSend(objc_msgSend(v5, "transactionNumber"), "integerValue") >= 1)
  {
    if (a1)
    {
      v6 = a1[4];
    }

    else
    {
      v6 = 0;
    }

    v7 = [objc_msgSend(v6 "_queryGenerationToken")];
    if (v7)
    {
      [(NSSQLiteConnection *)v111 beginReadTransaction];
      v8 = a1 ? a1[4] : 0;
      v9 = [v8 _queryGenerationToken];
      v10 = a1 ? a1[1] : 0;
      v11 = [(_NSQueryGenerationToken *)v9 _generationalComponentForStore:v10];
      v12 = v11 ? *(v11 + 3) : 0;
      v13 = [(NSSQLiteConnection *)v111 adoptQueryGenerationWithIdentifier:v12];
      if (v13)
      {
        LogStream = _PFLogGetLogStream(17);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v13;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Persistent history request failed to adopt a query generation with error %d\n", buf, 8u);
        }

        v15 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          *buf = 67109120;
          *&buf[4] = v13;
          _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Persistent history request failed to adopt a query generation with error %d", buf, 8u);
        }
      }
    }

    v16 = -[NSSQLiteConnection hasHistoryTransactionWithNumber:](v111, [v5 transactionNumber]);
    if (!v16)
    {
      if (a1)
      {
        v17 = a1[1];
      }

      else
      {
        v17 = 0;
      }

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Persistent History Token is expired for store at %@", objc_msgSend(v17, "URL")];
      v19 = MEMORY[0x1E696ABC0];
      v144[0] = v18;
      v143[0] = @"message";
      v143[1] = @"NSStoreUUID";
      if (a1)
      {
        v20 = a1[1];
      }

      else
      {
        v20 = 0;
      }

      v144[1] = [v20 identifier];
      v143[2] = *MEMORY[0x1E696A368];
      if (a1)
      {
        v21 = a1[1];
      }

      else
      {
        v21 = 0;
      }

      v144[2] = [objc_msgSend(v21 "URL")];
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:v143 count:3];
      v124 = [v19 errorWithDomain:*MEMORY[0x1E696A250] code:134301 userInfo:v22];
    }

    if (v7)
    {
LABEL_28:
      [(NSSQLiteConnection *)v111 commitTransaction];
    }

LABEL_29:
    if (v16)
    {
      goto LABEL_63;
    }

LABEL_35:
    Request = 0;
    v25 = 0;
    v26 = 1;
    goto LABEL_163;
  }

  if (![objc_msgSend(v5 "fetchRequest")])
  {
    goto LABEL_63;
  }

  v23 = -[_NSPersistentHistoryTransactionPredicateParser initWithPredicate:]([_NSPersistentHistoryTransactionPredicateParser alloc], "initWithPredicate:", [objc_msgSend(v5 "fetchRequest")]);
  *buf = 0;
  [(_NSPersistentHistoryTransactionPredicateParser *)v23 parse:buf];
  if (*buf)
  {
    if (a2)
    {
      *a2 = *buf;
    }

    goto LABEL_35;
  }

  v27 = [(_NSPersistentHistoryTransactionPredicateParser *)v23 storeTokens];
  if (a1)
  {
    v28 = a1[1];
  }

  else
  {
    v28 = 0;
  }

  v29 = [v27 objectForKey:{objc_msgSend(v28, "identifier")}];
  if (v29)
  {
    if (a1)
    {
      v30 = a1[4];
    }

    else
    {
      v30 = 0;
    }

    v31 = [objc_msgSend(v30 "_queryGenerationToken")];
    if (v31)
    {
      [(NSSQLiteConnection *)v111 beginReadTransaction];
      v32 = a1 ? a1[4] : 0;
      v33 = [v32 _queryGenerationToken];
      v34 = a1 ? a1[1] : 0;
      v35 = [(_NSQueryGenerationToken *)v33 _generationalComponentForStore:v34];
      v36 = v35 ? *(v35 + 3) : 0;
      v37 = [(NSSQLiteConnection *)v111 adoptQueryGenerationWithIdentifier:v36];
      if (v37)
      {
        v38 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *v141 = 67109120;
          v142 = v37;
          _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: fault: Persistent history request failed to adopt a query generation with error %d\n", v141, 8u);
        }

        v39 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          *v141 = 67109120;
          v142 = v37;
          _os_log_fault_impl(&dword_18565F000, v39, OS_LOG_TYPE_FAULT, "CoreData: Persistent history request failed to adopt a query generation with error %d", v141, 8u);
        }
      }
    }

    v16 = [(NSSQLiteConnection *)v111 hasHistoryTransactionWithNumber:v29];
    if (!v16)
    {
      if (a1)
      {
        v40 = a1[1];
      }

      else
      {
        v40 = 0;
      }

      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Persistent History Token is expired for store at %@", objc_msgSend(v40, "URL")];
      v42 = MEMORY[0x1E696ABC0];
      v140[0] = v41;
      v139[0] = @"message";
      v139[1] = @"NSStoreUUID";
      if (a1)
      {
        v43 = a1[1];
      }

      else
      {
        v43 = 0;
      }

      v140[1] = [v43 identifier];
      v139[2] = *MEMORY[0x1E696A368];
      if (a1)
      {
        v44 = a1[1];
      }

      else
      {
        v44 = 0;
      }

      v140[2] = [objc_msgSend(v44 "URL")];
      v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:v139 count:3];
      v124 = [v42 errorWithDomain:*MEMORY[0x1E696A250] code:134301 userInfo:v45];
    }

    if (v31)
    {
      goto LABEL_28;
    }

    goto LABEL_29;
  }

LABEL_63:
  if (![a1 isWritingRequest])
  {
    if ([v5 resultType] == 2 || objc_msgSend(v5, "resultType") == 6 || !objc_msgSend(v5, "resultType"))
    {
      if (a1)
      {
        v71 = a1[4];
      }

      else
      {
        v71 = 0;
      }

      v72 = [objc_msgSend(v71 "_queryGenerationToken")];
      if (v72)
      {
        [(NSSQLiteConnection *)v111 beginReadTransaction];
        v73 = a1 ? a1[4] : 0;
        v74 = [v73 _queryGenerationToken];
        v75 = a1 ? a1[1] : 0;
        v76 = [(_NSQueryGenerationToken *)v74 _generationalComponentForStore:v75];
        v77 = v76 ? *(v76 + 3) : 0;
        v78 = [(NSSQLiteConnection *)v111 adoptQueryGenerationWithIdentifier:v77];
        if (v78)
        {
          v134 = @"NSSQLiteErrorDomain";
          v135 = [MEMORY[0x1E696AD98] numberWithInt:v78];
          v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v135 forKeys:&v134 count:1];
          v105 = [_NSCoreDataException exceptionWithName:v78 code:@"Persistent history request failed to adopt query generation" reason:v104 userInfo:?];
          [(_NSCoreDataException *)v105 _setDomain:?];
          objc_exception_throw(v105);
        }
      }

      v79 = [a1 createCountRequestContextForChanges];
      [(NSSQLStoreRequestContext *)v79 setConnection:v111];
      Request = _executeCountRequest(v79);
      if (v72)
      {
        [(NSSQLiteConnection *)v111 endFetchAndRecycleStatement:?];
        [(NSSQLiteConnection *)v111 commitTransaction];
      }

      [(NSSQLStoreRequestContext *)v79 setConnection:?];
      goto LABEL_115;
    }

    if (a1)
    {
      v49 = a1[4];
    }

    else
    {
      v49 = 0;
    }

    v50 = [objc_msgSend(v49 "_queryGenerationToken")];
    if (v50)
    {
      [(NSSQLiteConnection *)v111 beginReadTransaction];
      v51 = a1 ? a1[4] : 0;
      v52 = [v51 _queryGenerationToken];
      v53 = a1 ? a1[1] : 0;
      v54 = [(_NSQueryGenerationToken *)v52 _generationalComponentForStore:v53];
      v55 = v54 ? *(v54 + 3) : 0;
      v56 = [(NSSQLiteConnection *)v111 adoptQueryGenerationWithIdentifier:v55];
      if (v56)
      {
        v132 = @"NSSQLiteErrorDomain";
        v133 = [MEMORY[0x1E696AD98] numberWithInt:v56];
        v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
        v107 = [_NSCoreDataException exceptionWithName:v56 code:@"Persistent history request failed to adopt query generation" reason:v106 userInfo:?];
        [(_NSCoreDataException *)v107 _setDomain:?];
        objc_exception_throw(v107);
      }
    }

    v57 = [a1 fetchRequestContextForChanges];
    v58 = v57;
    if (a1)
    {
      v59 = a1[3];
    }

    else
    {
      v59 = 0;
    }

    [(NSSQLStoreRequestContext *)v57 setConnection:v59];
    Request = _executeFetchRequest(v58);
    if (v50)
    {
      [(NSSQLiteConnection *)v111 endFetchAndRecycleStatement:?];
      [(NSSQLiteConnection *)v111 commitTransaction];
    }

    [(NSSQLiteConnection *)v111 endFetchAndRecycleStatement:?];
    [(NSSQLStoreRequestContext *)v58 setConnection:?];
    if ([v5 resultType] != 5 || (objc_msgSend(objc_msgSend(objc_msgSend(v58, "request"), "entityName"), "isEqualToString:", @"CHANGE") & 1) != 0 || (objc_msgSend(a1, "shouldUseBatches") & 1) != 0 || !objc_msgSend(Request, "count"))
    {
      if (([v5 resultType] == 1 || objc_msgSend(v5, "resultType") == 4) && objc_msgSend(objc_msgSend(objc_msgSend(v58, "request"), "entityName"), "isEqualToString:", @"TRANSACTION"))
      {
        v82 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(Request, "count")}];
        v108 = v5;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v83 = [Request countByEnumeratingWithState:&v116 objects:v128 count:16];
        if (v83)
        {
          v84 = *v117;
          do
          {
            for (i = 0; i != v83; ++i)
            {
              if (*v117 != v84)
              {
                objc_enumerationMutation(Request);
              }

              v86 = *(*(&v116 + 1) + 8 * i);
              v87 = objc_autoreleasePoolPush();
              [v82 addObject:{objc_msgSend(v86, "objectForKey:", @"self"}];
              objc_autoreleasePoolPop(v87);
            }

            v83 = [Request countByEnumeratingWithState:&v116 objects:v128 count:16];
          }

          while (v83);
        }

        if ([v82 count])
        {
          v88 = [a1 createRequestContextForChangesWithTransactionIDs:v82];
          [objc_msgSend(v88 "request")];
          if (a1)
          {
            v89 = a1[3];
          }

          else
          {
            v89 = 0;
          }

          [(NSSQLStoreRequestContext *)v88 setConnection:v89];
          v90 = _executeChangeRequest(v88, &v124);
          if (v124)
          {
            Request = 0;
          }

          else
          {
            Request = v90;
          }
        }

        else
        {
          v88 = 0;
          Request = MEMORY[0x1E695E0F0];
        }

        [(NSSQLStoreRequestContext *)v88 setConnection:?];
      }

      else if (([v5 resultType] == 3 || objc_msgSend(v5, "resultType") == 5) && objc_msgSend(objc_msgSend(objc_msgSend(v58, "request"), "entityName"), "isEqualToString:", @"CHANGE"))
      {
        v91 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(Request, "count")}];
        v109 = v5;
        v114 = 0u;
        v115 = 0u;
        v112 = 0u;
        v113 = 0u;
        v92 = [Request countByEnumeratingWithState:&v112 objects:v127 count:16];
        if (v92)
        {
          v93 = *v113;
          do
          {
            for (j = 0; j != v92; ++j)
            {
              if (*v113 != v93)
              {
                objc_enumerationMutation(Request);
              }

              v95 = *(*(&v112 + 1) + 8 * j);
              v96 = objc_autoreleasePoolPush();
              [v91 addObject:{objc_msgSend(v95, "objectForKey:", @"TRANSACTIONID"}];
              objc_autoreleasePoolPop(v96);
            }

            v92 = [Request countByEnumeratingWithState:&v112 objects:v127 count:16];
          }

          while (v92);
        }

        if ([v91 count])
        {
          v97 = [a1 createRequestContextForChangesWithTransactionIDs:v91];
          [objc_msgSend(v97 "request")];
          if (a1)
          {
            v98 = a1[3];
          }

          else
          {
            v98 = 0;
          }

          [(NSSQLStoreRequestContext *)v97 setConnection:v98];
          v99 = _executeChangeRequest(v97, &v124);
          if (v124)
          {
            v100 = 0;
          }

          else
          {
            v100 = v99;
            if (v99 && [v109 resultType] == 5)
            {
              v126[0] = v100;
              v126[1] = Request;
              v100 = [MEMORY[0x1E695DEC8] arrayWithObjects:v126 count:2];
            }
          }
        }

        else
        {
          v97 = 0;
          v100 = MEMORY[0x1E695E0F0];
        }

        [(NSSQLStoreRequestContext *)v97 setConnection:?];
        v25 = 0;
        Request = v100;
        goto LABEL_162;
      }

      goto LABEL_115;
    }

    v60 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(Request, "count")}];
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v61 = [Request countByEnumeratingWithState:&v120 objects:v131 count:16];
    if (v61)
    {
      v62 = *v121;
      do
      {
        for (k = 0; k != v61; ++k)
        {
          if (*v121 != v62)
          {
            objc_enumerationMutation(Request);
          }

          v64 = *(*(&v120 + 1) + 8 * k);
          v65 = objc_autoreleasePoolPush();
          [v60 addObject:{objc_msgSend(v64, "objectForKey:", @"self"}];
          objc_autoreleasePoolPop(v65);
        }

        v61 = [Request countByEnumeratingWithState:&v120 objects:v131 count:16];
      }

      while (v61);
    }

    if ([v60 count])
    {
      v66 = [a1 createRequestContextForChangesWithTransactionIDs:v60];
      v67 = v66;
      if (a1)
      {
        v68 = a1[3];
      }

      else
      {
        v68 = 0;
      }

      [(NSSQLStoreRequestContext *)v66 setConnection:v68];
      v69 = _executeChangeRequest(v67, &v124);
      if (v124 || !v69)
      {
        Request = 0;
        goto LABEL_179;
      }

      v130[0] = Request;
      v130[1] = v69;
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v130 count:2];
    }

    else
    {
      if (!Request)
      {
        v67 = 0;
        goto LABEL_179;
      }

      v67 = 0;
      v129[0] = Request;
      v129[1] = MEMORY[0x1E695E0F0];
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v129 count:2];
    }

    Request = v70;
LABEL_179:
    [(NSSQLStoreRequestContext *)v67 setConnection:?];
LABEL_115:
    v25 = 0;
LABEL_162:
    v26 = 0;
    goto LABEL_163;
  }

  if ([v5 isPercentageDelete] && (v46 = -[NSSQLiteConnection percentageUsedByPersistentHistory](v111), v46 <= objc_msgSend(v5, "percentageOfDB")))
  {
    [(NSSQLiteConnection *)v111 endFetchAndRecycleStatement:?];
    v138 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v26 = 1;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v138 count:1];
    v47 = 0;
    v81 = 0;
    Request = 0;
  }

  else
  {
    v47 = [a1 createDeleteTransactionsRequestContext];
    [(NSSQLStoreRequestContext *)v47 setConnection:v111];
    v48 = _executeBatchDeleteRequest(v47, &v124);
    if (v124)
    {
      Request = 0;
    }

    else
    {
      if ([objc_msgSend(a1 "request")] == 2 || objc_msgSend(objc_msgSend(a1, "request"), "resultType") == 6)
      {
        v137 = [(NSBatchDeleteResult *)v48 result];
        v80 = &v137;
      }

      else
      {
        v136 = [MEMORY[0x1E696AD98] numberWithBool:1];
        v80 = &v136;
      }

      Request = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:1];
    }

    if ([-[NSBatchDeleteResult result](v48 "result")] >= 1)
    {
      if (v47)
      {
        v101 = v47[3];
      }

      else
      {
        v101 = 0;
      }

      -[NSSQLiteConnection _performPostSaveTasks:andForceFullVacuum:](v101, [objc_msgSend(a1 "request")], 0);
    }

    v26 = 0;
    v25 = 0;
    v81 = 1;
  }

  [(NSSQLStoreRequestContext *)v47 setConnection:?];
  if (v81)
  {
    goto LABEL_162;
  }

LABEL_163:
  [(NSSQLiteConnection *)v111 endFetchAndRecycleStatement:?];
  if (v110 && v124)
  {
    *v110 = v124;
  }

  if ((v26 | 4) == 4)
  {
    v25 = Request;
  }

  v102 = *MEMORY[0x1E69E9840];
  return v25;
}

void sub_1856AE7D8(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint8_t buf, int a42, int a43, __int16 a44)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1856AE5ACLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1856AE828(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1856AE4A8);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1856AE910(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (v2)
    {
      JUMPOUT(0x1856AE920);
    }

    JUMPOUT(0x1856AEB64);
  }

  _Unwind_Resume(a1);
}

void sub_1856AE938(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1856ADF08);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1856AE97C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856AEB68);
  }

  _Unwind_Resume(a1);
}

void sub_1856AE990(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856AEB6CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1856AE9BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1856AE9C4);
  }

  _Unwind_Resume(a1);
}

void sub_1856AE9DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1856AE9E4);
  }

  _Unwind_Resume(a1);
}

void sub_1856AE9EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1856AEB64);
}

void sub_1856AE9FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1856AEB48);
}

void sub_1856AEA24(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    if (v2)
    {
      JUMPOUT(0x1856AEA34);
    }

    JUMPOUT(0x1856AEB68);
  }

  _Unwind_Resume(a1);
}

void sub_1856AEA3C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1856AE38CLL);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1856AEA4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1856AEB68);
}

void sub_1856AEA64(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1856ADF20);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1856AEA84(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1856AEA8CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1856AEA98(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1856AEAA0);
  }

  _Unwind_Resume(a1);
}

void sub_1856AEAA8(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if ((v2 & 1) == 0)
    {
      JUMPOUT(0x1856ADF20);
    }

    JUMPOUT(0x1856ADF08);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1856AEAD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1856AEAE4);
  }

  _Unwind_Resume(a1);
}

void sub_1856AEB04(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1856AEB6CLL);
}

void sub_1856AEB1C(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x1856AEB24);
  }

  _Unwind_Resume(a1);
}

void sub_1856AEB2C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1856AEEECLL);
}

void sub_1856AEB34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1856AEB48);
  }

  _Unwind_Resume(a1);
}

void sub_1856AEEA0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856AEC98);
  }

  _Unwind_Resume(a1);
}

void _deallocateFetchEntityPlan(CFTypeRef *ptr)
{
  if (ptr)
  {
    v2 = *(ptr + 1);
    if (v2)
    {
      v3 = ptr + 3;
      do
      {
        if (*v3)
        {
          CFRelease(*v3);
        }

        v3 += 3;
        --v2;
      }

      while (v2);
    }

    v4 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v4 = malloc_default_zone();
    }

    malloc_zone_free(v4, ptr);
  }
}

void *bufferResultSetAllocateInitialize(unint64_t a1, uint64_t a2)
{
  if (a1 <= 0x800)
  {
    v2 = 0x4000;
  }

  else
  {
    v2 = a1;
  }

  v3 = *(a2 + 72);
  v4 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v4 = malloc_default_zone();
  }

  v5 = malloc_type_zone_calloc(v4, 1uLL, 0x50uLL, 0x10900404577C156uLL);
  v5[2] = v2;
  *(v5 + 6) = 512;
  *(v5 + 8) = 1;
  v6 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v6 = malloc_default_zone();
  }

  v7 = malloc_type_zone_malloc(v6, 0x1000uLL, 0x80040B8603338uLL);
  v5[6] = v7;
  v7[511] = 0;
  v8 = _PF_Private_Malloc_Zone;
  if ((v3 & 0x20) != 0)
  {
    if (!_PF_Private_Malloc_Zone)
    {
      v8 = malloc_default_zone();
    }

    v9 = malloc_type_zone_calloc(v8, 1uLL, v2, 0x8F5CA527uLL);
  }

  else
  {
    if (!_PF_Private_Malloc_Zone)
    {
      v8 = malloc_default_zone();
    }

    v9 = malloc_type_zone_malloc(v8, v2, 0x748A73C2uLL);
  }

  v5[8] = v9;
  *v5[6] = v9;
  v10 = v5[8];
  *v10 = 0;
  v5[9] = v10 + 1;
  *(v5 + 9) = 0;
  v11 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v11 = malloc_default_zone();
  }

  v12 = malloc_type_zone_calloc(v11, 1uLL, 0x800uLL, 0x100004052888210uLL);
  v5[7] = v12;
  v12[511] = 0;
  *v12 = 0;
  *(v5 + 10) = v5[5] & 0xFFFFFFFB | (4 * ((v3 >> 5) & 1));
  *v5 = 0;
  return v5;
}

uint64_t _compareSQLColumnsByFetchIndex(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 26);
    if (a2)
    {
LABEL_3:
      v3 = *(a2 + 26);
      goto LABEL_4;
    }
  }

  else
  {
    v2 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_4:
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

_PFResultArray *_prepareLargeDictionaryResults(unsigned int *a1, uint64_t a2, int a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (v3 < 0x40000001)
  {
    v8 = [*(*(a2 + 136) + 8) propertiesToFetch];
    if (![v8 count])
    {
      v9 = MEMORY[0x1E695DEC8];
      v10 = *(*(a2 + 136) + 40);
      v11 = v10 ? *(v10 + 240) : 0;
      v12 = [v11 keys];
      v13 = *(*(a2 + 136) + 40);
      v14 = v13 ? *(v13 + 240) : 0;
      v15 = [v9 arrayWithObjects:v12 count:{objc_msgSend(v14, "length")}];
      v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v16)
      {
        v17 = v16;
        v35 = a3;
        v18 = *v37;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v37 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(a2 + 136) + 40);
            if (v20)
            {
              v21 = [*(v20 + 40) objectForKey:*(*(&v36 + 1) + 8 * i)];
              if (v21)
              {
                [v8 addObject:{objc_msgSend(v21, "propertyDescription")}];
              }
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v17);
        a3 = v35;
      }
    }

    v22 = [v8 count];
    v23 = MEMORY[0x1EEE9AC00](v22);
    v26 = &v34[-v25];
    if (v23 > 0x200)
    {
      v26 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v34[-v25], 8 * v24);
    }

    if ([v8 count])
    {
      v27 = 0;
      do
      {
        *&v26[8 * v27] = [v8 objectAtIndexedSubscript:v27];
        ++v27;
      }

      while ([v8 count] > v27);
    }

    v28 = [NSKnownKeysDictionary alloc];
    v29 = *(*(a2 + 136) + 40);
    if (v29)
    {
      v30 = *(v29 + 240);
    }

    else
    {
      v30 = 0;
    }

    v31 = [(NSKnownKeysDictionary *)v28 initWithSearchStrategy:v30];
    [(NSKnownKeysDictionary *)v31 setValues:v26];
    if (v22 >= 0x201)
    {
      NSZoneFree(0, v26);
    }

    if (a3)
    {
      bufferResultSetPack(a1);
    }

    v4 = [[_PFResultArray alloc] initWithObjects:a1 count:v3 store:*(a2 + 8) metadata:v31];
  }

  else
  {
    v4 = NSArray_EmptyArray;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v4;
}

void bufferResultSetPack(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  v3 = *(a1 + 64);
  v4 = v2 - v3;
  v5 = 4 * *v3;
  memcpy(v2, *(a1 + 56), v5);
  v6 = *(a1 + 64);
  *(v6 + 4) = v4;
  if ((*(a1 + 40) & 8) != 0)
  {
    v10 = *(a1 + 72) + v5;
    *(a1 + 72) = v10;
    v11 = v10 - v6;
    v12 = getpagesize();
    v13 = (v11 + v12 - 1) / v12 * v12;
    v14 = MEMORY[0x1E69E9A60];
    if (*(a1 + 16) <= v13 || (*(a1 + 72) = v10 + v13 - v11, v15 = MEMORY[0x1865FAA50](*v14), !v15))
    {
      v16 = 4 * *(a1 + 28);
      v17 = MEMORY[0x1865FAA50](*v14, *(a1 + 56), v16);
      if (!v17)
      {
LABEL_20:
        *(a1 + 16) = v11;
        v23 = *MEMORY[0x1E69E9840];
        return;
      }

      v18 = v17;
      v19 = objc_autoreleasePoolPush();
      _pflogInitialize(2);
      if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v35 = v16;
            v36 = 1024;
            LODWORD(v37) = v18;
            v21 = "CoreData: error: *** vm_deallocate(size=%lld), failed (error code=%d)\n\n";
LABEL_22:
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v21, buf, 0x12u);
          }
        }

        else
        {
          LogStream = _PFLogGetLogStream(2);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v35 = v16;
            v36 = 1024;
            LODWORD(v37) = v18;
            v21 = "CoreData: warning: *** vm_deallocate(size=%lld), failed (error code=%d)\n\n";
            goto LABEL_22;
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      _NSCoreDataLog_console(v22, "*** vm_deallocate(size=%lld), failed (error code=%d)\n", v16, v18);
      objc_autoreleasePoolPop(v19);
      goto LABEL_20;
    }

    v24 = v15;
    v25 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v26 = _pflogging_catastrophic_mode;
      v27 = _PFLogGetLogStream(1);
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
      if (v26)
      {
        if (!v28)
        {
          goto LABEL_29;
        }
      }

      else if (!v28)
      {
        goto LABEL_29;
      }

      v29 = *(a1 + 16);
      *buf = 134218496;
      v35 = v11;
      v36 = 2048;
      v37 = v29;
      v38 = 1024;
      v39 = v24;
      _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error: *** vm_deallocate(size=%lld) oldSize= %lld, failed (error code=%d)\n\n", buf, 0x1Cu);
    }

LABEL_29:
    _NSCoreDataLog_console(1, "*** vm_deallocate(size=%lld) oldSize= %lld, failed (error code=%d)\n", v11, *(a1 + 16), v24);
    objc_autoreleasePoolPop(v25);
    v30 = *MEMORY[0x1E695D930];
    v32 = @"VMErrorCode";
    v33 = [MEMORY[0x1E696AD98] numberWithInt:v24];
    v31 = +[_NSCoreDataException exceptionWithName:code:reason:userInfo:](_NSCoreDataException, v30, 134183, @"Unable to deallocate VM Memory", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1]);
    objc_exception_throw(v31);
  }

  *(a1 + 28) = 0;
  v7 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v7 = malloc_default_zone();
  }

  v8 = *(a1 + 56);
  v9 = *MEMORY[0x1E69E9840];

  malloc_zone_free(v7, v8);
}

void bufferResultSetDeallocate(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0;
    v4 = 8 * v2;
    v5 = MEMORY[0x1E69E9A60];
    do
    {
      if ((*(a1 + 40) & 8) != 0)
      {
        MEMORY[0x1865FAA50](*v5, *(a1 + 64), *(a1 + 16));
      }

      else
      {
        v6 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v6 = malloc_default_zone();
        }

        malloc_zone_free(v6, *(*(a1 + 48) + v3));
      }

      v3 += 8;
    }

    while (v4 != v3);
  }

  v7 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v7 = malloc_default_zone();
  }

  malloc_zone_free(v7, *(a1 + 48));
  if ((*(a1 + 40) & 8) == 0 && *(a1 + 28))
  {
    v8 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v8 = malloc_default_zone();
    }

    malloc_zone_free(v8, *(a1 + 56));
  }

  v9 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v9 = malloc_default_zone();
  }

  malloc_zone_free(v9, a1);
}

uint64_t _prepareRowsOnBackgroundThreads(uint64_t a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = *v2;
  if (*v2)
  {
    v4 = *(v3 + 136);
  }

  else
  {
    v4 = 0;
  }

  v53 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v50 = v5;
  v51 = v2[1];
  v56 = (*(v4 + 72) >> 2) & 7;
  v7 = [*(v4 + 8) _disablePersistentStoreResultCaching];
  PF_FREE_OBJECT_ARRAY(*(a1 + 24));
  *(a1 + 24) = 0;
  v52 = a1;
  if (v3)
  {
    v59 = [*(v3 + 8) objectIDFactoryForSQLEntity:*(v4 + 40)];
  }

  else
  {
    v59 = 0;
  }

  v57 = v4;
  LODWORD(Mutable) = *(v4 + 72);
  v65 = 1;
  __dmb(0xBu);
  v9 = *MEMORY[0x1E695E480];
  v60 = Mutable;
  v61 = v56 - 1;
  if ((v56 - 1) >= 2)
  {
    Mutable = CFArrayCreateMutable(v9, 0, 0);
    v10 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v10 = malloc_default_zone();
    }

    v11 = malloc_type_zone_calloc(v10, 5uLL, 8uLL, 0x100004000313F17uLL);
    *v11 = v3;
    v11[1] = Mutable;
    theArray = Mutable;
    v11[2] = v53;
    v11[3] = &v65;
    v11[4] = v6;
    v54 = [[_PFTask alloc] initWithFunction:_prepareFaultsOnBackgroundThread withArgument:v11 andPriority:2];
    LOBYTE(Mutable) = v60;
  }

  else
  {
    v54 = 0;
    theArray = 0;
  }

  v64 = 1;
  if (v7)
  {
    v49 = 0;
    v12 = 0;
  }

  else
  {
    v12 = CFArrayCreateMutable(v9, 0, 0);
    v13 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v13 = malloc_default_zone();
    }

    v14 = malloc_type_zone_calloc(v13, 5uLL, 8uLL, 0x100004000313F17uLL);
    *v14 = v3;
    v14[1] = v12;
    v14[2] = 0;
    v14[3] = &v64;
    v49 = [[_PFTask alloc] initWithFunction:_prepareRowCacheOnBackgroundThread withArgument:v14 andPriority:2];
  }

  v15 = CFArrayCreateMutable(v9, 0, 0);
  v16 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v16 = malloc_default_zone();
  }

  v17 = malloc_type_zone_calloc(v16, 8uLL, 8uLL, 0x100004000313F17uLL);
  *v17 = v3;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = &v65;
  if ((v7 & 1) == 0)
  {
    v17[4] = v49;
    v17[5] = v12;
    v17[6] = &v64;
  }

  v48 = v12;
  v18 = [[_PFTask alloc] initWithFunction:_populateRowValuesOnBackgroundThread withArgument:v17 andPriority:2];
  v19 = v18;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  if (v56 == 1)
  {
    v20 = 9;
  }

  else
  {
    v20 = 8;
  }

  v62 = v20;
  v68 = 0uLL;
  v69 = 0uLL;
  *values = 0uLL;
  v67 = 0uLL;
  v58 = v18;
  do
  {
LABEL_23:
    while (1)
    {
      pthread_mutex_lock((v52 + 32));
      do
      {
        Count = CFArrayGetCount(v51);
        v22 = Count;
        if (Count >= 1)
        {
          if (Count >= 0x80)
          {
            v27 = 128;
          }

          else
          {
            v27 = Count;
          }

          v99.location = 0;
          v99.length = v27;
          CFArrayGetValues(v51, v99, values);
          if (v22 > 0x7F)
          {
            v100.location = 0;
            v100.length = v27;
            CFArrayReplaceValues(v51, v100, 0, 0);
          }

          else
          {
            CFArrayRemoveAllValues(v51);
          }

          atomic_load(v50);
          pthread_mutex_unlock((v52 + 32));
          v28 = 0;
          v63 = v27;
          while (1)
          {
            v29 = values[v28];
            if (v29[1] <= 0x40000000u)
            {
              v30 = v29[1];
            }

            else
            {
              v30 = 0;
            }

            v31 = PF_ALLOCATE_OBJECT_ARRAY(v30);
            if (v31)
            {
              v32 = v30;
            }

            else
            {
              v32 = 0;
            }

            v33 = PF_ALLOCATE_OBJECT_ARRAY(v32);
            if (v33)
            {
              if ((Mutable & 1) == 0)
              {
                goto LABEL_49;
              }
            }

            else
            {
              PF_FREE_OBJECT_ARRAY(v31);
              v32 = 0;
              v31 = 0;
              if ((Mutable & 1) == 0)
              {
LABEL_49:
                v34 = v15;
                v35 = **(v29 + 8);
                if (v32 == [v59 allocateBatch:v31 count:{v32, v48}])
                {
                  v32 = v32;
                }

                else
                {
                  v32 = 0;
                }

                if (v32 >= 1)
                {
                  for (i = 0; i != v32; ++i)
                  {
                      ;
                    }

                    v37 = *(v31 + i);
                    v38 = _PFSetPrimaryKey(v37, *(v35 + 24));
                    if (v37 != v38)
                    {
                      v39 = v38;

                      *(v31 + i) = v39;
                    }

                    v40 = *(v35 + 4);
                    if ((v40 & 0x80000000) != 0)
                    {
                      break;
                    }

                    v41 = *(*(v29 + 8) + 8 * v40);
                    if (!v41)
                    {
                      break;
                    }

                    v35 = v41 + *(v35 + 16);
                  }
                }

                v15 = v34;
                if (v32)
                {
                  if (v32 == [NSSQLRow newBatchRowAllocation:v33 count:v32 forSQLEntity:*(v57 + 40) withOwnedObjectIDs:v31 andTimestamp:*(v29 + 1)])
                  {
                    v32 = v32;
                  }

                  else
                  {
                    v32 = 0;
                  }
                }

                LOBYTE(Mutable) = v60;
                v19 = v58;
              }
            }

            v42 = [[_PFArray alloc] initWithObjects:v31 count:v32 andFlags:v62];
            v43 = [[_PFArray alloc] initWithObjects:v33 count:v32 andFlags:10 andContext:0];
            v44 = v43;
            if (v32 && v42 && v43)
            {
              if (v61 >= 2)
              {
                pthread_mutex_lock(&v54->lock);
                CFRetain(v42);
                CFRetain(v44);
                CFArrayAppendValue(theArray, v42);
                CFArrayAppendValue(theArray, v44);
                pthread_mutex_unlock(&v54->lock);
                pthread_cond_signal(&v54->condition);
              }

              else
              {
                if (v56 == 1)
                {
                  v45 = v42;
                }

                else
                {
                  v45 = v43;
                }

                CFArrayAppendValue(v53, v45);
              }

              pthread_mutex_lock(&v19->lock);
              CFRetain(v44);
              CFArrayAppendValue(v15, v29);
              CFArrayAppendValue(v15, v44);
              pthread_mutex_unlock(&v19->lock);
              pthread_cond_signal(&v19->condition);
            }

            if (++v28 == v63)
            {
              goto LABEL_23;
            }
          }
        }

        v23 = atomic_load(v50);
        if (v23)
        {
          pthread_cond_wait((v52 + 96), (v52 + 32));
        }

        v24 = atomic_load(v50);
      }

      while ((v24 & 1) != 0);
      v25 = atomic_load(v50);
      if (!v22 && (v25 & 1) == 0)
      {
        break;
      }

      pthread_mutex_unlock((v52 + 32));
    }

    v26 = CFArrayGetCount(v51);
    pthread_mutex_unlock((v52 + 32));
  }

  while (v26);
  atomic_store(0, &v65);
  __dmb(0xBu);
  if (v61 >= 2)
  {
    pthread_mutex_lock(&v54->lock);
    if (!v54->isFinishedFlag)
    {
      pthread_cond_signal(&v54->condition);
      while (!v54->isFinishedFlag)
      {
        pthread_cond_wait(&v54->condition, &v54->lock);
      }
    }

    pthread_mutex_unlock(&v54->lock);
  }

  pthread_mutex_lock(&v19->lock);
  if (!v19->isFinishedFlag)
  {
    pthread_cond_signal(&v19->condition);
    while (!v19->isFinishedFlag)
    {
      pthread_cond_wait(&v19->condition, &v19->lock);
    }
  }

  pthread_mutex_unlock(&v19->lock);
  if (v49)
  {
    pthread_mutex_lock(&v49->lock);
    if (!v49->isFinishedFlag)
    {
      pthread_cond_signal(&v49->condition);
      while (!v49->isFinishedFlag)
      {
        pthread_cond_wait(&v49->condition, &v49->lock);
      }
    }

    pthread_mutex_unlock(&v49->lock);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  v46 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _prepareFaultsOnBackgroundThread(uint64_t a1)
{
  values[128] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = *v2;
  if (*v2)
  {
    v4 = v3[17];
  }

  else
  {
    v4 = 0;
  }

  v27 = v2[1];
  v35 = v2[2];
  v29 = v2[3];
  theArray = v2[4];
  v34 = [*(v4 + 8) _isAsyncRequest];
  PF_FREE_OBJECT_ARRAY(*(a1 + 24));
  *(a1 + 24) = 0;
  v5 = *(v4 + 72);
  v28 = a1;
  if (!v3)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v6 = v3[4];
  if ((*(v4 + 72) & 0x1C) != 0xC)
  {
LABEL_8:
    v33 = 0;
    goto LABEL_9;
  }

  v33 = v3[16];
LABEL_9:
  v31 = v4;
  v32 = [*(v4 + 8) _disablePersistentStoreResultCaching];
  v7 = 0;
  v8 = 1;
  do
  {
LABEL_10:
    while (2)
    {
      pthread_mutex_lock((v28 + 32));
      do
      {
        Count = CFArrayGetCount(v27);
        v10 = Count;
        if (Count >= 1)
        {
          if (Count >= 0x80)
          {
            v15 = 128;
          }

          else
          {
            v15 = Count;
          }

          v42.location = 0;
          v42.length = v15;
          CFArrayGetValues(v27, v42, values);
          if (v10 > 0x7F)
          {
            v43.location = 0;
            v43.length = v15;
            CFArrayReplaceValues(v27, v43, 0, 0);
          }

          else
          {
            CFArrayRemoveAllValues(v27);
          }

          atomic_load(v29);
          pthread_mutex_unlock((v28 + 32));
          v16 = 0;
          LODWORD(v17) = 0;
          do
          {
            v18 = values[v16];
            if ((v5 & 2) != 0)
            {
              v19 = 0;
            }

            else
            {
              v17 = v17 + 1;
              v19 = values[v17];
            }

            v20 = [v18 count];
            v7 += v20;
            if (!((v7 < 0x2711 || (v8 & 1) == 0) | v34 & 1))
            {
              v21 = [v6 persistentStoreCoordinator];
              if (v21)
              {
                v22 = *(v21 + 96);
              }

              else
              {
                v22 = 0;
              }

              _PFModelMapSlotForEntity(v22, [*(v31 + 40) entityDescription]);
              v8 = 0;
            }

            v23 = PF_ALLOCATE_OBJECT_ARRAY(v20);
            v36[0] = MEMORY[0x1E69E9820];
            v36[1] = 3221225472;
            v36[2] = ___prepareFaultsOnBackgroundThread_block_invoke;
            v36[3] = &unk_1E6EC42B8;
            v36[7] = v19;
            v36[8] = v23;
            v37 = v20;
            v36[4] = v6;
            v36[5] = v18;
            v38 = (v5 & 0x1C) == 12;
            v39 = (v5 & 2) == 0;
            v40 = v32;
            v36[6] = v33;
            ___prepareFaultsOnBackgroundThread_block_invoke(v36);
            v24 = [[_PFArray alloc] initWithObjects:v23 count:v20 andFlags:46 andContext:v6];
            [v35 addObject:v24];

            if ((v5 & 2) == 0)
            {
              CFArrayAppendValue(theArray, v19);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            if (v18)
            {
              CFRelease(v18);
            }

            LODWORD(v17) = v17 + 1;
            v16 = v17;
          }

          while (v15 > v17);
          goto LABEL_10;
        }

        v11 = atomic_load(v29);
        if (v11)
        {
          pthread_cond_wait((v28 + 96), (v28 + 32));
        }

        v12 = atomic_load(v29);
      }

      while ((v12 & 1) != 0);
      v13 = atomic_load(v29);
      if (v10 || (v13 & 1) != 0)
      {
        pthread_mutex_unlock((v28 + 32));
        continue;
      }

      break;
    }

    v14 = CFArrayGetCount(v27);
    pthread_mutex_unlock((v28 + 32));
  }

  while (v14);
  v25 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _prepareRowCacheOnBackgroundThread(uint64_t a1)
{
  values[128] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  if (*v2)
  {
    v3 = *(*v2 + 136);
  }

  else
  {
    v3 = 0;
  }

  v27 = v2[3];
  v28 = v2[1];
  PF_FREE_OBJECT_ARRAY(v2);
  v29 = a1;
  *(a1 + 24) = 0;
  if ((*(v3 + 72) & 2) == 0 && (*(v3 + 72) & 0x18) != 0x10)
  {
    [*(v3 + 8) _disablePersistentStoreResultCaching];
  }

  v4 = [*(v3 + 8) _disablePersistentStoreResultCaching];
  v5 = *(v3 + 72) & 0x1C;
  v6 = *(v3 + 56);
  do
  {
LABEL_7:
    while (2)
    {
      pthread_mutex_lock((v29 + 32));
      do
      {
        Count = CFArrayGetCount(v28);
        v8 = Count;
        if (Count >= 1)
        {
          if (Count >= 0x80)
          {
            v13 = 128;
          }

          else
          {
            v13 = Count;
          }

          v31.location = 0;
          v31.length = v13;
          CFArrayGetValues(v28, v31, values);
          if (v8 > 0x7F)
          {
            v32.location = 0;
            v32.length = v13;
            CFArrayReplaceValues(v28, v32, 0, 0);
          }

          else
          {
            CFArrayRemoveAllValues(v28);
          }

          atomic_load(v27);
          pthread_mutex_unlock((v29 + 32));
          v14 = 0;
          do
          {
            v15 = v13;
            v16 = values[v14];
            v17 = [v16 _objectsPointer];
            v18 = [v16 count];
            if (v18)
            {
              v19 = v18;
              do
              {
                v20 = *v17;
                v21 = [*v17 objectID];
                if (v4)
                {
                  if (v5 != 8)
                  {
                    [v20 knownKeyValuesPointer];
                    v22 = [v20 _snapshot];
                    v23 = v22;
                    *v17 = v22;
                  }
                }

                else
                {
                  v24 = v21;
                  [v20 knownKeyValuesPointer];
                  [(NSPersistentStoreCache *)v6 registerRow:v20 forObjectID:v24 options:0];
                }

                ++v17;
                --v19;
              }

              while (v19);
            }

            if (v16)
            {
              CFRelease(v16);
            }

            ++v14;
            v13 = v15;
          }

          while (v14 != v15);
          goto LABEL_7;
        }

        v9 = atomic_load(v27);
        if (v9)
        {
          pthread_cond_wait((v29 + 96), (v29 + 32));
        }

        v10 = atomic_load(v27);
      }

      while ((v10 & 1) != 0);
      v11 = atomic_load(v27);
      if (v8 || (v11 & 1) != 0)
      {
        pthread_mutex_unlock((v29 + 32));
        continue;
      }

      break;
    }

    v12 = CFArrayGetCount(v28);
    pthread_mutex_unlock((v29 + 32));
  }

  while (v12);
  v25 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _populateRowValuesOnBackgroundThread(uint64_t a1)
{
  v169 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v129 = *v2;
  v3 = v2[4];
  v117 = v2[3];
  v114 = v2[5];
  theArray = v2[1];
  v112 = v2[6];
  PF_FREE_OBJECT_ARRAY(v2);
  v113 = a1;
  *(a1 + 24) = 0;
  v122 = [NSSQLRow instanceMethodForSelector:?];
  v128 = [NSSQLRow instanceMethodForSelector:?];
  v121 = [NSSQLRow instanceMethodForSelector:?];
  v127 = [NSSQLRow instanceMethodForSelector:?];
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  *values = 0u;
  v138 = 0u;
  v116 = v3;
LABEL_2:
  pthread_mutex_lock((v113 + 32));
  v4 = theArray;
  do
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      if (Count >= 0x80)
      {
        v9 = 128;
      }

      else
      {
        v9 = Count;
      }

      v170.location = 0;
      v170.length = v9;
      CFArrayGetValues(theArray, v170, values);
      if (Count > 0x7F)
      {
        v171.location = 0;
        v171.length = v9;
        CFArrayReplaceValues(theArray, v171, 0, 0);
      }

      else
      {
        CFArrayRemoveAllValues(theArray);
      }

      atomic_load(v117);
      Count = v9;
LABEL_18:
      pthread_mutex_unlock((v113 + 32));
      if (v129)
      {
        v130 = *(v129 + 112);
      }

      else
      {
        v130 = 0;
      }

      v126 = [MEMORY[0x1E696AC08] defaultManager];
      if (Count >= 1)
      {
        v10 = 0;
        v124 = 0;
        v125 = 0;
        v123 = 0;
        while (1)
        {
          v120 = v10;
          v11 = &values[v10];
          v13 = *v11;
          v12 = v11[1];
          v133 = [v12 _objectsPointer];
          v119 = v12;
          v131 = [v12 count];
          if (!v131)
          {
            goto LABEL_167;
          }

          v14 = 0;
          v15 = **(v13 + 64);
          v132 = v13;
          while (1)
          {
            v134 = v14;
            v135 = *(v133 + 8 * v14);
              ;
            }

            v17 = _sqlEntityForEntityID(v130, *(v15 + 8));
            plan_for_entity = _sql_fetch_plan_for_entity(v17);
            v19 = *(plan_for_entity + 4);
            if (v19)
            {
              v20 = v15 + 32;
              v136 = i + 28;
              v21 = (plan_for_entity + 24);
              do
              {
                v22 = *(v21 - 4);
                if ((v22 - 2) > 6)
                {
                  v23 = 3;
                }

                else
                {
                  v23 = qword_18592E790[(v22 - 2)];
                }

                v24 = ((v23 + v20) & ~v23);
                if (*(v21 - 1))
                {
                  v26 = *v24++;
                  v25 = v26 != 0;
                }

                else
                {
                  v25 = 0;
                }

                v27 = (v21 - 2);
                v28 = ~v23;
                if (*(v21 - 4) <= 6u)
                {
                  if ((v22 - 4) < 3)
                  {
                    goto LABEL_73;
                  }

                  if ((v22 - 2) >= 2)
                  {
                    if (v22 != 1)
                    {
                      goto LABEL_80;
                    }

                    v49 = &v24[v23];
                    v50 = (v49 & v28);
                    v40 = (v49 & v28) + 4;
                    if (v25)
                    {
                      v20 = v24;
                    }

                    else
                    {
                      v20 = (v49 & v28) + 4;
                    }

                    v51 = *(v21 - 3);
                    switch(v51)
                    {
                      case 10:
                        if (v25)
                        {
                          v80 = 0;
                        }

                        else
                        {
                          v80 = *v50;
                        }

                        v121(v135, sel_setForeignOrderKeySlot_orderKey_, *v27, v80);
                        break;
                      case 4:
                        if (v25)
                        {
                          v79 = 0;
                        }

                        else
                        {
                          v79 = *v50;
                        }

                        v122(v135, sel_setForeignEntityKeySlot_entityKey_, *v27, v79);
                        break;
                      case 1:
                        v42 = [objc_msgSend(*v21 "propertyDescription")];
                        if (!v25)
                        {
                          if (v42)
                          {
                            v44 = [MEMORY[0x1E696AD98] numberWithInt:*v50];
LABEL_126:
                            setMultiColumnValueDictionary(i, (v21 - 2), v44);
                          }

                          else
                          {
                            type = snapshot_get_type(i, *v27);
                            v97 = *v27;
                            v98 = *v50;
                            if (type != 115)
                            {
                              if (type == 99)
                              {
                                Class = object_getClass(i);
                                IndexedIvars = object_getIndexedIvars(Class);
                                v136[v97 >> 3] &= ~(1 << (v97 & 7));
                                *(i + IndexedIvars[v97 + 19]) = v98;
                              }

                              else
                              {
                                v105 = object_getClass(i);
                                v106 = object_getIndexedIvars(v105);
                                v136[v97 >> 3] &= ~(1 << (v97 & 7));
                                *(i + v106[v97 + 19]) = v98;
                              }

                              v20 = v40;
                              break;
                            }

                            v103 = object_getClass(i);
                            v104 = object_getIndexedIvars(v103);
                            v136[v97 >> 3] &= ~(1 << (v97 & 7));
                            *(i + v104[v97 + 19]) = v98;
                          }

                          goto LABEL_130;
                        }

LABEL_70:
                        if (!v42)
                        {
LABEL_71:
                          v136[*v27 >> 3] |= 1 << (*v27 & 7);
                          goto LABEL_76;
                        }

LABEL_75:
                        setMultiColumnValueNullFlag(i, v21 - 4);
                        goto LABEL_76;
                    }
                  }

                  else
                  {
                    v38 = &v24[v23];
                    v39 = (v38 & v28);
                    v40 = (v38 & v28) + 8;
                    if (v25)
                    {
                      v20 = v24;
                    }

                    else
                    {
                      v20 = (v38 & v28) + 8;
                    }

                    v41 = *(v21 - 3);
                    switch(v41)
                    {
                      case 6:
                        if (v25)
                        {
                          v71 = 0;
                        }

                        else
                        {
                          v71 = *v39;
                        }

                        v127(v135, sel_setOptLock_, v71);
                        break;
                      case 3:
                        if (v25)
                        {
                          v70 = 0;
                        }

                        else
                        {
                          v70 = *v39;
                        }

                        v128(v135, sel_setForeignKeySlot_int64_, *v27, v70);
                        break;
                      case 1:
                        v42 = [objc_msgSend(*v21 "propertyDescription")];
                        if (!v25)
                        {
                          v43 = *v39;
                          if (v42)
                          {
                            v44 = [MEMORY[0x1E696AD98] numberWithLongLong:*v39];
                            goto LABEL_126;
                          }

                          v88 = *v27;
                          v89 = object_getClass(i);
                          v90 = object_getIndexedIvars(v89);
                          v136[v88 >> 3] &= ~(1 << (v88 & 7));
                          *(i + v90[v88 + 19]) = v43;
LABEL_130:
                          v20 = v40;
                          break;
                        }

                        goto LABEL_70;
                    }
                  }
                }

                else
                {
                  if (*(v21 - 4) > 0xBu)
                  {
                    if ((v22 - 13) < 2)
                    {
LABEL_76:
                      v20 = v24;
                      goto LABEL_136;
                    }

                    if (v22 == 12)
                    {
LABEL_73:
                      if (!v25)
                      {
                        v52 = (&v24[v23] & v28);
                        v53 = (v52 + 4);
                        v54 = CFStringCreateWithCString(0, v52 + 4, 0x8000100u);
                        v55 = *v52;
                        v56 = *(v21 - 4);
                        if (v56 == 12)
                        {
                          v57 = [MEMORY[0x1E695DFF8] URLWithString:v54];
LABEL_87:
                          v66 = v57;
                          CFRelease(v54);
                          v54 = v66;
                        }

                        else if (v56 == 4)
                        {
                          v57 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v54];
                          goto LABEL_87;
                        }

                        v20 = v53 + v55;
LABEL_89:
                        if ([objc_msgSend(*v21 "propertyDescription")])
                        {
                          goto LABEL_119;
                        }

                        v67 = *v27;
                        v68 = i;
                        v69 = v54;
                        goto LABEL_91;
                      }
                    }

                    else
                    {
                      if (v22 != 16)
                      {
                        goto LABEL_80;
                      }

                      if (!v25)
                      {
                        v29 = (&v24[v23] & v28);
                        v31 = (v29 + 4);
                        v30 = *(v29 + 4);
                        if (v30 == 3)
                        {
                          if (v129)
                          {
                            v83 = v123;
                            if (!v123)
                            {
                              v83 = *(v129 + 104);
                            }
                          }

                          else
                          {
                            v83 = v123;
                          }

                          v101 = [MEMORY[0x1E695DEF0] dataWithBytes:v31 length:*v29];
                          v102 = [_NSDataFileBackedFuture alloc];
                          v123 = v83;
                          v54 = -[_NSDataFileBackedFuture initWithStoreMetadata:directory:](v102, "initWithStoreMetadata:directory:", v101, [MEMORY[0x1E695DFF8] fileURLWithPath:v83 isDirectory:1]);
                        }

                        else
                        {
                          if (v30 == 1)
                          {
                            v32 = [_PFExternalReferenceData alloc];
                            if (v129)
                            {
                              v33 = *(v129 + 184);
                            }

                            else
                            {
                              v33 = 0;
                            }

                            v34 = *v29;
                            v35 = (v29 + 4);
                            v36 = 0;
                            v37 = 0;
                            goto LABEL_147;
                          }

                          v84 = [v126 stringWithFileSystemRepresentation:v29 + 5 length:{strnlen(v29 + 5, *v29 - 1)}];
                          v85 = v125;
                          if (v125)
                          {
                            v86 = v129;
                            if (!v129)
                            {
                              goto LABEL_115;
                            }

LABEL_141:
                            v87 = v124;
                            if (!v124)
                            {
                              v87 = *(v86 + 96);
                            }
                          }

                          else
                          {
                            v86 = v129;
                            if (v129)
                            {
                              v85 = *(v129 + 88);
                              goto LABEL_141;
                            }

                            v85 = 0;
LABEL_115:
                            v87 = v124;
                          }

                          v125 = v85;
                          v92 = [v85 stringByAppendingPathComponent:v84];
                          v124 = v87;
                          v93 = v87;
                          v94 = v92;
                          v95 = [v93 stringByAppendingPathComponent:v84];
                          if ([v126 fileExistsAtPath:v94])
                          {
                            v32 = [_PFExternalReferenceData alloc];
                            if (v129)
                            {
                              v33 = *(v129 + 184);
                            }

                            else
                            {
                              v33 = 0;
                            }

                            v34 = *v29;
                            v35 = (v29 + 4);
                            v36 = v94;
                            v37 = v95;
LABEL_147:
                            v54 = [(_PFExternalReferenceData *)v32 initWithStoreBytes:v35 length:v34 externalLocation:v36 safeguardLocation:v37 protectionLevel:v33];
                          }

                          else
                          {
                            v54 = 0;
                          }
                        }

                        v20 = v31 + *v29;
                        goto LABEL_89;
                      }
                    }

                    goto LABEL_74;
                  }

                  if ((v22 - 7) >= 2)
                  {
                    if (v22 == 9)
                    {
                      goto LABEL_73;
                    }

LABEL_80:
                    if (!v25)
                    {
                      v58 = (&v24[v23] & v28);
                      v59 = (v58 + 4);
                      v60 = CFDataCreate(0, v58 + 4, *v58);
                      v61 = v60;
                      v62 = *v58;
                      v63 = *(v21 - 4);
                      if (v63 == 11)
                      {
                        if ([(__CFData *)v60 length]== 16)
                        {
                          v65 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{-[__CFData bytes](v61, "bytes")}];
                          goto LABEL_133;
                        }

                        v61 = 0;
                      }

                      else if (v63 == 18 || v63 == 15)
                      {
                        v64 = [*v21 propertyDescription];
                        if ([v64 superCompositeAttribute])
                        {
                          v65 = [_PFRoutines retainedDecodeValue:v61 forTransformableAttribute:v64];
                        }

                        else
                        {
                          v65 = [PFFaultingTransformedValue transformedValueWithData:v61 forAttribute:v64];
                        }

LABEL_133:
                        v91 = v65;
                        CFRelease(v61);
                        v61 = v91;
                      }

                      v20 = v59 + v62;
                      if ([objc_msgSend(*v21 "propertyDescription")])
                      {
                        setMultiColumnValueDictionary(i, (v21 - 2), v61);

                        goto LABEL_136;
                      }

                      v67 = *v27;
                      v68 = i;
                      v69 = v61;
LABEL_91:
                      snapshot_set_object(v68, v67, v69);
                      goto LABEL_136;
                    }

LABEL_74:
                    if (![objc_msgSend(*v21 "propertyDescription")])
                    {
                      goto LABEL_71;
                    }

                    goto LABEL_75;
                  }

                  if (v25)
                  {
                    goto LABEL_74;
                  }

                  v45 = (&v24[v23] & v28);
                  v20 = (v45 + 1);
                  v46 = [objc_msgSend(*v21 "propertyDescription")];
                  v47 = *(v21 - 4);
                  if (v46)
                  {
                    if (v47 == 7)
                    {
                      if (snapshot_get_type(i, *v27) == 102)
                      {
                        v48 = kCFNumberFloatType;
                      }

                      else
                      {
                        v48 = kCFNumberDoubleType;
                      }

                      v78 = CFNumberCreate(0, v48, v45);
                    }

                    else
                    {
                      v78 = CFDateCreate(0, *v45);
                    }

                    v54 = v78;
LABEL_119:
                    setMultiColumnValueDictionary(i, (v21 - 2), v54);

                    goto LABEL_136;
                  }

                  v72 = *v27;
                  if (v47 != 7)
                  {
                    v74 = *v45;
LABEL_109:
                    v81 = object_getClass(i);
                    v82 = object_getIndexedIvars(v81);
                    v136[v72 >> 3] &= ~(1 << (v72 & 7));
                    *(i + v82[v72 + 19]) = v74;
                    goto LABEL_136;
                  }

                  v73 = snapshot_get_type(i, *v27);
                  v72 = *v27;
                  v74 = *v45;
                  if (v73 != 102)
                  {
                    goto LABEL_109;
                  }

                  v76 = object_getClass(i);
                  v77 = object_getIndexedIvars(v76);
                  v136[v72 >> 3] &= ~(1 << (v72 & 7));
                  v75 = v74;
                  *(i + v77[v72 + 19]) = v75;
                }

LABEL_136:
                v21 += 3;
                --v19;
              }

              while (v19);
            }

            v107 = *(v15 + 4);
            if ((v107 & 0x80000000) != 0)
            {
              break;
            }

            v13 = v132;
            v108 = *(*(v132 + 64) + 8 * v107);
            if (v108)
            {
              v15 = v108 + *(v15 + 16);
              v14 = v134 + 1;
              if (v134 + 1 != v131)
              {
                continue;
              }
            }

            goto LABEL_167;
          }

          v13 = v132;
LABEL_167:
          if (v119)
          {
            v109 = v116 == 0;
          }

          else
          {
            v109 = 1;
          }

          if (!v109)
          {
            pthread_mutex_lock((v116 + 32));
            CFRetain(v119);
            CFArrayAppendValue(v114, v119);
            pthread_mutex_unlock((v116 + 32));
            pthread_cond_signal((v116 + 96));
            fetchResultSetDeallocate(v13);
            goto LABEL_173;
          }

          fetchResultSetDeallocate(v13);
          if (v119)
          {
LABEL_173:
            CFRelease(v119);
          }

          v10 = v120 + 2;
          if (Count <= v120 + 2)
          {
            goto LABEL_2;
          }
        }
      }

      goto LABEL_2;
    }

    v5 = atomic_load(v117);
    if (v5)
    {
      pthread_cond_wait((v113 + 96), (v113 + 32));
    }

    v6 = atomic_load(v117);
    v4 = theArray;
  }

  while ((v6 & 1) != 0);
  v7 = Count;
  v8 = atomic_load(v117);
  if (v7 || (v8 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (CFArrayGetCount(theArray))
  {
    Count = 0;
    goto LABEL_18;
  }

  if (v112)
  {
    atomic_store(0, v112);
  }

  pthread_mutex_unlock((v113 + 32));
  v110 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t ___prepareFaultsOnBackgroundThread_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) _objectsPointer];
  v6 = *(a1 + 76);
  result = [NSManagedObjectContext _batchRetainedObjects:v4 forCount:v2 withIDs:v3 optionalHandler:v5 withInlineStorage:*(a1 + 48)];
  if (*(a1 + 77) == 1 && (*(a1 + 78) & 1) == 0)
  {
    result = [*(a1 + 56) _objectsPointer];
    if (*(a1 + 72))
    {
      for (i = 0; i < *(a1 + 72); ++i)
      {
        v9 = *(*(a1 + 64) + 8 * i);
        v10 = *(result + 8 * i);
        v11 = *(v9 + 16);
        if ((v11 & 0x200) != 0)
        {
          if (!v10 || atomic_fetch_add((v10 + 12), 0) >= 1)
          {
            continue;
          }
        }

        else
        {
          *(v9 + 16) = v11 | 0x200;
          if (!v10)
          {
            continue;
          }
        }

        atomic_fetch_add_explicit((v10 + 12), 1u, memory_order_relaxed);
      }
    }
  }

  return result;
}

id _prefetchForFetchRequest(void *a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x1E69E9840];
  result = [a1 count];
  if (result)
  {
    v7 = [a3 request];
    result = [v7 relationshipKeyPathsForPrefetching];
    if (a2 || (v33 = result) != 0 && (result = [result count]) != 0 && (result = +[_PFRoutines _coalescedPrefetchKeypaths:](_PFRoutines, v33), (a2 = result) != 0))
    {
      v34 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v8 = [v7 entity];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v39 = [a2 countByEnumeratingWithState:&v61 objects:v68 count:16];
      if (!v39)
      {
        goto LABEL_55;
      }

      v37 = *v62;
      v38 = a2;
      v35 = a3;
      v44 = v8;
      while (1)
      {
        v9 = 0;
        do
        {
          if (*v62 != v37)
          {
            objc_enumerationMutation(a2);
          }

          v41 = v9;
          v10 = *(*(&v61 + 1) + 8 * v9);
          context = objc_autoreleasePoolPush();
          v11 = [a2 objectForKey:v10];
          if ([v11 count])
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v48 = v12;
          v13 = [MEMORY[0x1E695DF90] dictionary];
          if ([objc_msgSend(v8 "relationshipsByName")])
          {
            [v13 setObject:a1 forKey:{objc_msgSend(v8, "name")}];
          }

          else
          {
            if (![objc_msgSend(v8 "subentitiesByName")])
            {
              goto LABEL_53;
            }

            v14 = [objc_msgSend(v8 "subentities")];
            obj = [MEMORY[0x1E695DF70] array];
            while ([v14 count])
            {
              v15 = [v14 objectAtIndex:0];
              [v14 removeObjectAtIndex:0];
              if ([objc_msgSend(v15 "relationshipsByName")])
              {
                [obj addObject:v15];
              }

              else if ([objc_msgSend(v15 "subentitiesByName")])
              {
                [v14 addObjectsFromArray:{objc_msgSend(v15, "subentities")}];
              }
            }

            v36 = v14;
            v43 = v13;
            if ([obj count])
            {
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v47 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
              if (v47)
              {
                v16 = 0;
                v45 = *v58;
                v46 = v10;
                do
                {
                  for (i = 0; i != v47; ++i)
                  {
                    if (*v58 != v45)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v18 = *(*(&v57 + 1) + 8 * i);
                    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v53 = 0u;
                    v54 = 0u;
                    v55 = 0u;
                    v56 = 0u;
                    v20 = [a1 countByEnumeratingWithState:&v53 objects:v66 count:16];
                    if (v20)
                    {
                      v21 = v20;
                      v22 = *v54;
                      do
                      {
                        for (j = 0; j != v21; ++j)
                        {
                          if (*v54 != v22)
                          {
                            objc_enumerationMutation(a1);
                          }

                          v24 = *(*(&v53 + 1) + 8 * j);
                          v25 = [v24 entity];
                          v26 = v25;
                          v27 = v25 == v18 || v25 == v16;
                          if (v27 || [v25 isKindOfEntity:v18])
                          {
                            [v19 addObject:v24];
                            if (v26 != v18)
                            {
                              v16 = v26;
                            }
                          }
                        }

                        v21 = [a1 countByEnumeratingWithState:&v53 objects:v66 count:16];
                      }

                      while (v21);
                    }

                    if ([v19 count])
                    {
                      [v43 setObject:v19 forKey:{objc_msgSend(v18, "name")}];
                    }

                    v10 = v46;
                    v8 = v44;
                  }

                  v47 = [obj countByEnumeratingWithState:&v57 objects:v67 count:16];
                }

                while (v47);
              }
            }

            a3 = v35;
            v13 = v43;
          }

          if ([v13 count])
          {
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v28 = [v13 countByEnumeratingWithState:&v49 objects:v65 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v50;
              do
              {
                for (k = 0; k != v29; ++k)
                {
                  if (*v50 != v30)
                  {
                    objc_enumerationMutation(v13);
                  }

                  _prefetchRelationshipKeys(v10, [objc_msgSend(objc_msgSend(v8 "managedObjectModel")], objc_msgSend(v13, "objectForKey:", *(*(&v49 + 1) + 8 * k)), v48, a3);
                }

                v29 = [v13 countByEnumeratingWithState:&v49 objects:v65 count:16];
              }

              while (v29);
            }
          }

LABEL_53:
          objc_autoreleasePoolPop(context);
          v9 = v41 + 1;
          a2 = v38;
        }

        while (v41 + 1 != v39);
        v39 = [v38 countByEnumeratingWithState:&v61 objects:v68 count:16];
        if (!v39)
        {
LABEL_55:
          result = [v34 drain];
          break;
        }
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void _prefetchRelationshipKeys(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v282[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    v6 = *(a5 + 32);
    v7 = *(a5 + 8);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = _sqlCoreLookupSQLEntityForEntityDescription(v7, a2);
  if (!v8)
  {
    goto LABEL_344;
  }

  v9 = v8;
  v10 = [*(v8 + 40) objectForKey:a1];
  if (!v10)
  {
    goto LABEL_344;
  }

  v11 = v10;
  if (a5)
  {
    v233 = *(a5 + 128);
  }

  else
  {
    v233 = 0;
  }

  v12 = [(NSEntityDescription *)a2 _relationshipNamed:a1];
  v207 = [v11 isToMany];
  v230 = [v12 isOrdered];
  v205 = *(v11 + 56);
  if ([objc_msgSend(a5 "request")])
  {
    v235 = 0;
  }

  else
  {
    v235 = [objc_msgSend(a5 "request")] ^ 1;
  }

  v193 = *(*(a5 + 136) + 72);
  v203 = [MEMORY[0x1E695DFA8] set];
  if (![v12 inverseRelationship] && objc_msgSend(v12, "isToMany") && (objc_msgSend(objc_msgSend(v9, "entityDescription"), "superentity") || objc_msgSend(objc_msgSend(objc_msgSend(v9, "entityDescription"), "subentities"), "count")))
  {
    a3 = [a3 sortedArrayUsingComparator:&__block_literal_global_242];
    v196 = 1;
  }

  else
  {
    v196 = 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if ((v207 & 1) != 0 || *(v11 + 24) == 9)
  {
    [v203 addObjectsFromArray:a3];
  }

  v229 = a5;
  if (!v205 || *(v205 + 24) != 7)
  {
    v15 = *(v11 + 24);
    if (v15 == 7)
    {
      v211 = v9;
      v234 = v12;
      v25 = [a3 count];
      v219 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v25];
      v231 = v11;
      v26 = [v11 slot];
      if (v25)
      {
        v27 = 0;
        v28 = v9[24] + v26;
        do
        {
          v29 = objc_autoreleasePoolPush();
          v30 = [a3 objectAtIndex:v27];
          v31 = [v30 entity];
          v32 = v28;
          if (v31 != a2)
          {
            v32 = [v31 _offsetRelationshipIndex:v28 fromSuperEntity:a2 andIsToMany:0];
          }

          v33 = [v229 rowCache];
          if (v33 && (v34 = [(NSPersistentStoreCache *)v33 rowForObjectID:v30 afterTimestamp:*&NSSQLDistantPastTimeInterval], (v35 = v34) != 0))
          {
            [v34 knownKeyValuesPointer];
            object = snapshot_get_object([v35 _snapshot], v32);
            if (object)
            {
              [v219 addObject:object];
            }
          }

          else if ((*(*(v229 + 136) + 72) & 0x1C) == 0x14)
          {
            v37 = [*(v229 + 32) objectRegisteredForID:v30];
            if (v37)
            {
              *buf = 0;
              v38 = _PF_InternalToOneRelationshipForeignKeyCache(v37, v32, buf);
              v39 = *buf ? v38 : 0;
              if (v39 == 1)
              {
                [v219 addObject:?];
              }
            }
          }

          objc_autoreleasePoolPop(v29);
          ++v27;
        }

        while (v25 != v27);
      }

      if ([v219 count])
      {
        v195 = [v229 manyToOnePrefetchRequestForRelationshipNamed:a1 onEntity:a2];
        v271 = @"objects";
        v272 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v219];
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v272 forKeys:&v271 count:1];

LABEL_99:
        v197 = 0xFFFFFFFFLL;
        v199 = -1;
        goto LABEL_100;
      }

LABEL_116:

      goto LABEL_344;
    }

    if (v15 != 9)
    {
      goto LABEL_344;
    }

    v234 = v12;
    v16 = [a3 objectAtIndex:0];
    v17 = [objc_alloc(MEMORY[0x1E696ACC0]) initWithObject:{objc_msgSend(*(v11 + 56), "name")}];
    v18 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithKeyPath:v17];

    v19 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v16];
    v20 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v19 rightExpression:v18 modifier:0 type:10 options:0];

    v21 = objc_alloc_init(NSFetchRequest);
    -[NSFetchRequest setEntity:](v21, "setEntity:", [objc_msgSend(v11 "destinationEntity")]);
    [(NSFetchRequest *)v21 setPredicate:v20];

    v22 = v21;
    v23 = 0;
    if (v230)
    {
      if (*(v11 + 56) == v11)
      {
        v23 = *(v11 + 80);
      }

      else
      {
        v23 = [(NSSQLManyToMany *)v11 inverseOrderColumnName];
      }
    }

    v40 = [a5 createChildContextForNestedFetchRequest:v21];
    [(NSSQLStoreRequestContext *)v40 setConnection:?];
    obj = _newObjectIDSetsForRequest(v40, a3, v23);
    [(NSSQLStoreRequestContext *)v40 setConnection:?];

    v231 = v11;
    v211 = v9;
    if ([(NSSQLStoreRequestContext *)a5 debugLogLevel]<= 1)
    {
      if ([(NSSQLStoreRequestContext *)a5 debugLogLevel]< 1)
      {
        goto LABEL_72;
      }

      v41 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          LogStream = _PFLogGetLogStream(1);
          if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = [v11 name];
            v277 = 2048;
            v278 = [obj count];
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetching from join table for many-to-many relationship %@ from database.  Got %lu rows\n", buf, 0x16u);
          }
        }

        else
        {
          v49 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = [v11 name];
            v277 = 2048;
            v278 = [obj count];
            _os_log_impl(&dword_18565F000, v49, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Prefetching from join table for many-to-many relationship %@ from database.  Got %lu rows\n", buf, 0x16u);
          }
        }
      }

      v50 = _pflogging_catastrophic_mode == 0;
      v51 = [v11 name];
      v52 = [obj count];
      v53 = 4;
      if (!v50)
      {
        v53 = 1;
      }

      _NSCoreDataLog_console(v53, "Prefetching from join table for many-to-many relationship %@ from database.  Got %lu rows", v51, v52);
    }

    else
    {
      v41 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v42 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            *&buf[4] = [v11 name];
            v277 = 2048;
            v278 = [obj count];
            v279 = 2112;
            v280 = obj;
            _os_log_error_impl(&dword_18565F000, v42, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetching from join table for many-to-many relationship %@ from database.  Got %lu rows with values: %@\n", buf, 0x20u);
          }
        }

        else
        {
          v44 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            *&buf[4] = [v11 name];
            v277 = 2048;
            v278 = [obj count];
            v279 = 2112;
            v280 = obj;
            _os_log_impl(&dword_18565F000, v44, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Prefetching from join table for many-to-many relationship %@ from database.  Got %lu rows with values: %@\n", buf, 0x20u);
          }
        }
      }

      v45 = _pflogging_catastrophic_mode == 0;
      v46 = [v11 name];
      v47 = [obj count];
      v48 = 4;
      if (!v45)
      {
        v48 = 1;
      }

      _NSCoreDataLog_console(v48, "Prefetching from join table for many-to-many relationship %@ from database.  Got %lu rows with values: %@", v46, v47, obj);
    }

    objc_autoreleasePoolPop(v41);
LABEL_72:
    v209 = [obj count];
    v219 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v209 + 256];
    Current = CFAbsoluteTimeGetCurrent();
    if (v209)
    {
      v54 = 0;
      do
      {
        context = objc_autoreleasePoolPush();
        v55 = [obj objectAtIndex:v54];
        v56 = v54 + 1;
        v57 = [obj objectAtIndex:v54 + 1];
        v58 = v57;
        if (v230)
        {
          v56 = v54 + 2;
          v59 = [obj objectAtIndex:v54 + 2];
        }

        else
        {
          v59 = 0;
        }

        v60 = [v229 rowCache];
        if (v60)
        {
          [NSPersistentStoreCache registerToMany:v60 withOrderKeys:v58 forSourceObjectID:v59 forProperty:v55 options:v234 andTimestamp:Current];
        }

        [v203 removeObject:v55];
        if (v6)
        {
          v61 = _PFRetainedObjectIDCore(v6, v55, 0, 1);
        }

        else
        {
          v61 = 0;
        }

        v62 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v58, "count")}];
        v263 = 0u;
        v264 = 0u;
        v261 = 0u;
        v262 = 0u;
        v63 = [v58 countByEnumeratingWithState:&v261 objects:v275 count:16];
        if (v63)
        {
          v64 = *v262;
          do
          {
            v65 = 0;
            do
            {
              if (*v262 != v64)
              {
                objc_enumerationMutation(v58);
              }

              if (v6)
              {
                v66 = _PFRetainedObjectIDCore(v6, *(*(&v261 + 1) + 8 * v65), 0, 1);
              }

              else
              {
                v66 = 0;
              }

              [v62 addObject:v66];

              ++v65;
            }

            while (v63 != v65);
            v67 = [v58 countByEnumeratingWithState:&v261 objects:v275 count:16];
            v63 = v67;
          }

          while (v67);
        }

        v68 = off_1E6EC0C40;
        if (!v230)
        {
          v68 = off_1E6EC0C48;
        }

        v69 = [objc_alloc(*v68) initWithSource:v61 destinations:v62 forRelationship:v234 inContext:v6];
        _PFFaultHandlerPreconnectRelationship(v233, v61, v234, v69);

        [v219 addObjectsFromArray:v57];
        objc_autoreleasePoolPop(context);
        v54 = v56 + 1;
      }

      while (v56 + 1 < v209);
    }

    if ([v219 count])
    {
      v195 = [v229 manyToManyPrefetchRequestsForRelationshipNamed:a1 onEntity:a2];
      v273 = @"mtmObjects";
      v274 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v219];
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v274 forKeys:&v273 count:1];

      goto LABEL_99;
    }

    goto LABEL_116;
  }

  v199 = [objc_msgSend(v205 "foreignKey")];
  v234 = v12;
  v231 = v11;
  v211 = v9;
  if ((v207 & v230) == 1)
  {
    v14 = [*(v205 + 80) slot];
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

  v197 = v14;
  v195 = [a5 inverseIsToOnePrefetchRequestForRelationshipNamed:a1 onEntity:a2];
  v281 = @"destinations";
  v282[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:a3];
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v282 forKeys:&v281 count:1];
LABEL_100:
  if (v195)
  {
    v70 = [v229 createChildContextForNestedFetchRequest:?];
    v72 = v70;
    if (v70)
    {
      objc_setProperty_nonatomic(v70, v71, v24, 216);
    }

    [(NSSQLStoreRequestContext *)v72 setConnection:?];
    *(v72[17] + 72) = *(v72[17] + 72) & 0xFFFFFFE3 | 8;
    obja = _newFetchedRowsForRequest(v72);
    [(NSSQLStoreRequestContext *)v72 setConnection:?];

    if ([(NSSQLStoreRequestContext *)v229 debugLogLevel]>= 3)
    {
      v73 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v74 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            v75 = [obja count];
            *buf = 138412802;
            *&buf[4] = v195;
            v277 = 2048;
            v278 = v75;
            v279 = 2112;
            v280 = obja;
            _os_log_error_impl(&dword_18565F000, v74, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetching with request %@.  Got %lu rows with values: %@\n", buf, 0x20u);
          }
        }

        else
        {
          v78 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            v79 = [obja count];
            *buf = 138412802;
            *&buf[4] = v195;
            v277 = 2048;
            v278 = v79;
            v279 = 2112;
            v280 = obja;
            _os_log_impl(&dword_18565F000, v78, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Prefetching with request %@.  Got %lu rows with values: %@\n", buf, 0x20u);
          }
        }
      }

      v80 = _pflogging_catastrophic_mode == 0;
      v81 = [obja count];
      v82 = 4;
      if (!v80)
      {
        v82 = 1;
      }

      _NSCoreDataLog_console(v82, "Prefetching with request %@.  Got %lu rows with values: %@", v195, v81, obja);
LABEL_127:
      objc_autoreleasePoolPop(v73);
      goto LABEL_128;
    }

    if ([(NSSQLStoreRequestContext *)v229 debugLogLevel]>= 1)
    {
      v73 = objc_autoreleasePoolPush();
      _pflogInitialize(4);
      if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v76 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            v77 = [obja count];
            *buf = 138412546;
            *&buf[4] = a1;
            v277 = 2048;
            v278 = v77;
            _os_log_error_impl(&dword_18565F000, v76, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetching with key '%@'.  Got %lu rows.\n", buf, 0x16u);
          }
        }

        else
        {
          v83 = _PFLogGetLogStream(4);
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            v84 = [obja count];
            *buf = 138412546;
            *&buf[4] = a1;
            v277 = 2048;
            v278 = v84;
            _os_log_impl(&dword_18565F000, v83, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Prefetching with key '%@'.  Got %lu rows.\n", buf, 0x16u);
          }
        }
      }

      v85 = _pflogging_catastrophic_mode == 0;
      v86 = [obja count];
      v87 = 4;
      if (!v85)
      {
        v87 = 1;
      }

      _NSCoreDataLog_console(v87, "Prefetching with key '%@'.  Got %lu rows.", a1, v86);
      goto LABEL_127;
    }
  }

  else
  {
    obja = 0;
  }

LABEL_128:
  if (*(v231 + 24) == 7)
  {
    v220 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
    v216 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
    v88 = objc_alloc_init(MEMORY[0x1E695DF90]);
    contexta = objc_alloc_init(MEMORY[0x1E695DF90]);
    v259 = 0u;
    v260 = 0u;
    v257 = 0u;
    v258 = 0u;
    v89 = [obja countByEnumeratingWithState:&v257 objects:v270 count:16];
    if (v89)
    {
      v90 = *v258;
      do
      {
        for (i = 0; i != v89; ++i)
        {
          if (*v258 != v90)
          {
            objc_enumerationMutation(obja);
          }

          v92 = *(*(&v257 + 1) + 8 * i);
          v93 = [v92 objectID];
          if (v93)
          {
            [v88 setObject:v92 forKey:v93];
          }

          v94 = v231[7];
          if (v94)
          {
            if (*(v94 + 24) == 7)
            {
              v95 = [v92 newObjectIDForToOne:?];
              if (v95)
              {
                [contexta setObject:v92 forKey:v95];
              }
            }
          }
        }

        v89 = [obja countByEnumeratingWithState:&v257 objects:v270 count:16];
      }

      while (v89);
    }

    v255 = 0u;
    v256 = 0u;
    v253 = 0u;
    v254 = 0u;
    v96 = [a3 countByEnumeratingWithState:&v253 objects:v269 count:16];
    if (v96)
    {
      v97 = *v254;
      do
      {
        v98 = 0;
        do
        {
          if (*v254 != v97)
          {
            objc_enumerationMutation(a3);
          }

          v99 = *(*(&v253 + 1) + 8 * v98);
          v100 = objc_autoreleasePoolPush();
          v101 = [v229 rowCache];
          v102 = [(NSPersistentStoreCache *)v101 rowForObjectID:v99 afterTimestamp:*&NSSQLDistantPastTimeInterval];
          if (v102)
          {
            v103 = [v102 newObjectIDForToOne:v231];
            v105 = v103;
            if (v6)
            {
              v106 = _PFRetainedObjectIDCore(v6, v99, 0, 1);
              if (v105)
              {
                v107 = _PFRetainedObjectIDCore(v6, v105, 0, 1);
LABEL_151:
                if (v235)
                {
                  if ([v107 isFault])
                  {
                    v104 = [v88 objectForKey:v105];
                    if (v104)
                    {
                      _PFFaultHandlerFulfillFault(v233, v107, v6, v104, 0);
                      [v216 addObject:v107];
                    }
                  }
                }

                if (v107)
                {
                  v108 = v107[4];
                  if ((v108 & 0x200) == 0)
                  {
                    v107[4] = v108 | 0x200;
                    goto LABEL_158;
                  }
                }

                else
                {
LABEL_158:
                  [v220 addObject:{v105, v104}];
                }

                _PFFaultHandlerPreconnectRelationship(v233, v106, v234, v107);

LABEL_192:
                goto LABEL_193;
              }
            }

            else
            {
              v106 = 0;
              v107 = 0;
              if (v103)
              {
                goto LABEL_151;
              }
            }

            _PFFaultHandlerPreconnectRelationship(v233, v106, v234, 0);
            goto LABEL_192;
          }

          if ((*(*(v229 + 136) + 72) & 0x1C) != 0x14)
          {
            goto LABEL_193;
          }

          v109 = v231[7];
          if (v109 && *(v109 + 24) == 7)
          {
            v110 = [contexta objectForKey:v99];
            v111 = v110;
            if (!v110)
            {
              goto LABEL_193;
            }

            v112 = [v110 objectID];
            if (v6)
            {
              v113 = _PFRetainedObjectIDCore(v6, v99, 0, 1);
              v114 = _PFRetainedObjectIDCore(v6, v112, 0, 1);
            }

            else
            {
              v113 = 0;
              v114 = 0;
            }

            if ([v114 isFault])
            {
              _PFFaultHandlerFulfillFault(v233, v114, v6, v111, 0);
              [v216 addObject:v114];
            }

            if (v114)
            {
              v115 = v114[4];
              if ((v115 & 0x200) == 0)
              {
                v114[4] = v115 | 0x200;
                goto LABEL_171;
              }
            }

            else
            {
LABEL_171:
              [v220 addObject:v112];
            }

            _PFFaultHandlerPreconnectRelationship(v233, v113, v234, v114);

            goto LABEL_193;
          }

          v116 = [v6 objectRegisteredForID:v99];
          if (v116)
          {
            v117 = [v231 slot];
            v118 = v211[24];
            v119 = [v99 entity];
            v120 = v118 + v117;
            if (v119 != a2)
            {
              v120 = [v119 _offsetRelationshipIndex:v118 + v117 fromSuperEntity:? andIsToMany:?];
            }

            *buf = 0;
            v121 = _PF_InternalToOneRelationshipForeignKeyCache(v116, v120, buf);
            if (*buf)
            {
              if (v6)
              {
                v123 = _PFRetainedObjectIDCore(v6, *buf, 0, 1);
              }

              else
              {
                v123 = 0;
              }

              if (v235)
              {
                if ([v123 isFault])
                {
                  v122 = [v88 objectForKey:*buf];
                  if (v122)
                  {
                    _PFFaultHandlerFulfillFault(v233, v123, v6, v122, 0);
                    [v216 addObject:v123];
                  }
                }
              }

              if (v123)
              {
                v124 = v123[4];
                if ((v124 & 0x200) == 0)
                {
                  v123[4] = v124 | 0x200;
                  goto LABEL_186;
                }
              }

              else
              {
LABEL_186:
                [v220 addObject:{*buf, v122}];
              }

              _PFFaultHandlerPreconnectRelationship(v233, v116, v234, v123);

              goto LABEL_193;
            }

            if (v121)
            {
              _PFFaultHandlerPreconnectRelationship(v233, v116, v234, 0);
            }
          }

LABEL_193:
          objc_autoreleasePoolPop(v100);
          ++v98;
        }

        while (v96 != v98);
        v125 = [a3 countByEnumeratingWithState:&v253 objects:v269 count:16];
        v96 = v125;
      }

      while (v125);
    }

    [(NSSQLFetchRequestContext *)v229 addObjectIDsToRegister:v220];
    [(NSSQLFetchRequestContext *)v229 addObjectsToAwaken:v216];
  }

  v208 = [obja count];
  if (*(v231 + 24) != 9)
  {
    goto LABEL_219;
  }

  v126 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v208];
  v127 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v208];
  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  v128 = [obja countByEnumeratingWithState:&v249 objects:v268 count:16];
  if (!v128)
  {
    goto LABEL_218;
  }

  v129 = *v250;
  do
  {
    v130 = 0;
    do
    {
      if (*v250 != v129)
      {
        objc_enumerationMutation(obja);
      }

      v131 = *(*(&v249 + 1) + 8 * v130);
      v132 = objc_autoreleasePoolPush();
      v133 = [v131 objectID];
      if (v6)
      {
        v134 = _PFRetainedObjectIDCore(v6, v133, 0, 1);
      }

      else
      {
        v134 = 0;
      }

      if (v235 && [v134 isFault])
      {
        _PFFaultHandlerFulfillFault(v233, v134, v6, v131, 0);
        [v127 addObject:v134];
      }

      if (v134)
      {
        v135 = v134[4];
        if ((v135 & 0x200) != 0)
        {
          goto LABEL_214;
        }

        v134[4] = v135 | 0x200;
      }

      [v126 addObject:v133];
LABEL_214:

      objc_autoreleasePoolPop(v132);
      ++v130;
    }

    while (v128 != v130);
    v136 = [obja countByEnumeratingWithState:&v249 objects:v268 count:16];
    v128 = v136;
  }

  while (v136);
LABEL_218:
  [(NSSQLFetchRequestContext *)v229 addObjectIDsToRegister:v126];
  [(NSSQLFetchRequestContext *)v229 addObjectsToAwaken:v127];

LABEL_219:
  v206 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v208];
  v232 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v230)
  {
    v201 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v201 = 0;
  }

  if (v208)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  contextb = objc_alloc_init(MEMORY[0x1E695DF90]);
  v198 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v208)
  {
    goto LABEL_310;
  }

  v217 = 0;
  v221 = 0;
  v137 = 0;
  v138 = 0;
  while (2)
  {
    v210 = objc_autoreleasePoolPush();
    v214 = [obja objectAtIndex:v217];
    v212 = [v214 objectID];
    [v206 addObject:v212];
    if (!v207 || !v205 || *(v205 + 24) != 7)
    {
      goto LABEL_272;
    }

    [contextb setObject:v214 forKey:v212];
    v204 = [(NSSQLRow *)v214 foreignKeyForSlot:v199];
    if (v204 == v138)
    {
LABEL_238:
      [v232 addObject:v212];
      if (v230)
      {
        goto LABEL_268;
      }

      goto LABEL_272;
    }

    if (!v138)
    {
      v138 = v204;
      v137 = v214;
      goto LABEL_238;
    }

    if (v196)
    {
      do
      {
        v139 = [a3 objectAtIndex:v221];
        if ([v139 _referenceData64] == v138)
        {
          v140 = v139;
        }

        else
        {
          v140 = 0;
          ++v221;
        }
      }

      while (!v140);
    }

    else
    {
      v140 = [v137 newObjectIDForToOne:v205];
    }

    v202 = v140;
    v141 = [v229 rowCache];
    if (v141)
    {
      [NSPersistentStoreCache registerToMany:v141 withOrderKeys:v232 forSourceObjectID:v201 forProperty:v202 options:v234 andTimestamp:Current];
    }

    [v203 removeObject:v202];
    if (v6)
    {
      v200 = _PFRetainedObjectIDCore(v6, v202, 0, 1);
    }

    else
    {
      v200 = 0;
    }

    v142 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v143 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v144 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v145 = [v232 countByEnumeratingWithState:&v245 objects:v267 count:16];
    if (v145)
    {
      v146 = *v246;
      do
      {
        v147 = 0;
        do
        {
          if (*v246 != v146)
          {
            objc_enumerationMutation(v232);
          }

          v148 = *(*(&v245 + 1) + 8 * v147);
          v150 = objc_autoreleasePoolPush();
          if (v6)
          {
            v151 = _PFRetainedObjectIDCore(v6, v148, 0, 1);
          }

          else
          {
            v151 = 0;
          }

          if (v235)
          {
            if ([v151 isFault])
            {
              v149 = [contextb objectForKey:v148];
              if (v149)
              {
                _PFFaultHandlerFulfillFault(v233, v151, v6, v149, 0);
                [v144 addObject:v151];
              }
            }
          }

          if (v151)
          {
            v152 = v151[4];
            if ((v152 & 0x200) != 0)
            {
              goto LABEL_260;
            }

            v151[4] = v152 | 0x200;
          }

          [v143 addObject:{v148, v149}];
LABEL_260:
          [v142 addObject:{v151, v149}];

          objc_autoreleasePoolPop(v150);
          ++v147;
        }

        while (v145 != v147);
        v153 = [v232 countByEnumeratingWithState:&v245 objects:v267 count:16];
        v145 = v153;
      }

      while (v153);
    }

    [(NSSQLFetchRequestContext *)v229 addObjectIDsToRegister:v143];
    [(NSSQLFetchRequestContext *)v229 addObjectsToAwaken:v144];

    v154 = off_1E6EC0C40;
    if (!v230)
    {
      v154 = off_1E6EC0C48;
    }

    v155 = [objc_alloc(*v154) initWithSource:v200 destinations:v142 forRelationship:v234 inContext:v6];

    _PFFaultHandlerPreconnectRelationship(v233, v200, v234, v155);
    [v198 addObject:v202];

    if (v230)
    {

      v232 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v201 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v232 addObject:v212];
      v137 = v214;
      v138 = v204;
LABEL_268:
      if (v214)
      {
        v156 = *(&v214[v197] + _NSSQLRowInstanceSize + ((4 * v214[4]) & 0x1FFF8));
      }

      else
      {
        v156 = 0;
      }

      [v201 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v156)}];
    }

    else
    {
      v232 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v232 addObject:v212];
      v138 = v204;
      v137 = v214;
    }

LABEL_272:
    objc_autoreleasePoolPop(v210);
    if (++v217 != v208)
    {
      continue;
    }

    break;
  }

  if (v138)
  {
    if (v196)
    {
      do
      {
        v157 = [a3 objectAtIndex:v221];
        if ([v157 _referenceData64] == v138)
        {
          v158 = v157;
        }

        else
        {
          v158 = 0;
          ++v221;
        }
      }

      while (!v158);
    }

    else
    {
      v158 = [v137 newObjectIDForToOne:v205];
    }

    v222 = v158;
    v159 = [v229 rowCache];
    if (v159)
    {
      [NSPersistentStoreCache registerToMany:v159 withOrderKeys:v232 forSourceObjectID:v201 forProperty:v222 options:v234 andTimestamp:Current];
    }

    [v203 removeObject:v222];
    if (v6)
    {
      v218 = _PFRetainedObjectIDCore(v6, v222, 0, 1);
    }

    else
    {
      v218 = 0;
    }

    v160 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v161 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v162 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v243 = 0u;
    v244 = 0u;
    v241 = 0u;
    v242 = 0u;
    v163 = [v232 countByEnumeratingWithState:&v241 objects:v266 count:16];
    if (v163)
    {
      v164 = *v242;
      do
      {
        v165 = 0;
        do
        {
          if (*v242 != v164)
          {
            objc_enumerationMutation(v232);
          }

          v166 = *(*(&v241 + 1) + 8 * v165);
          v168 = objc_autoreleasePoolPush();
          if (v6)
          {
            v169 = _PFRetainedObjectIDCore(v6, v166, 0, 1);
          }

          else
          {
            v169 = 0;
          }

          if (v235)
          {
            if ([v169 isFault])
            {
              v167 = [contextb objectForKey:v166];
              if (v167)
              {
                _PFFaultHandlerFulfillFault(v233, v169, v6, v167, 0);
                [v162 addObject:v169];
              }
            }
          }

          if (v169)
          {
            v170 = v169[4];
            if ((v170 & 0x200) != 0)
            {
              goto LABEL_303;
            }

            v169[4] = v170 | 0x200;
          }

          [v161 addObject:{v166, v167}];
LABEL_303:
          [v160 addObject:{v169, v167}];

          objc_autoreleasePoolPop(v168);
          ++v165;
        }

        while (v163 != v165);
        v171 = [v232 countByEnumeratingWithState:&v241 objects:v266 count:16];
        v163 = v171;
      }

      while (v171);
    }

    [(NSSQLFetchRequestContext *)v229 addObjectIDsToRegister:v161];
    [(NSSQLFetchRequestContext *)v229 addObjectsToAwaken:v162];

    v172 = off_1E6EC0C40;
    if (!v230)
    {
      v172 = off_1E6EC0C48;
    }

    v173 = [objc_alloc(*v172) initWithSource:v218 destinations:v160 forRelationship:v234 inContext:v6];

    _PFFaultHandlerPreconnectRelationship(v233, v218, v234, v173);
    [v198 addObject:v222];
  }

LABEL_310:
  if ([v203 count])
  {
    v174 = [v203 allObjects];
    v175 = [v174 count];
    if (v175)
    {
      for (j = 0; j != v175; ++j)
      {
        v177 = [v174 objectAtIndex:j];
        v178 = [v229 rowCache];
        if (v178)
        {
          if (v230)
          {
            v179 = NSArray_EmptyArray;
          }

          else
          {
            v179 = 0;
          }

          [NSPersistentStoreCache registerToMany:v178 withOrderKeys:NSArray_EmptyArray forSourceObjectID:v179 forProperty:v177 options:v234 andTimestamp:Current];
        }
      }
    }
  }

  if ([v198 count] != 0 && (v193 & 0x1C) == 20)
  {
    v236 = [a3 arrayByExcludingObjectsInArray:v198];
    v239 = 0u;
    v240 = 0u;
    v237 = 0u;
    v238 = 0u;
    v180 = [v236 countByEnumeratingWithState:&v237 objects:v265 count:16];
    if (v180)
    {
      v181 = *v238;
      do
      {
        v182 = 0;
        do
        {
          if (*v238 != v181)
          {
            objc_enumerationMutation(v236);
          }

          if (v6)
          {
            v183 = _PFRetainedObjectIDCore(v6, *(*(&v237 + 1) + 8 * v182), 0, 1);
          }

          else
          {
            v183 = 0;
          }

          if (v230)
          {
            v184 = off_1E6EC0C40;
          }

          else
          {
            v184 = off_1E6EC0C48;
          }

          v185 = objc_alloc(*v184);
          if (v230)
          {
            v186 = &NSOrderedSet_EmptyOrderedSet;
          }

          else
          {
            v186 = &NSSet_EmptySet;
          }

          v187 = [v185 initWithSource:v183 destinations:*v186 forRelationship:v234 inContext:v6];
          _PFFaultHandlerPreconnectRelationship(v233, v183, v234, v187);

          ++v182;
        }

        while (v180 != v182);
        v188 = [v236 countByEnumeratingWithState:&v237 objects:v265 count:16];
        v180 = v188;
      }

      while (v188);
    }
  }

  if (v201)
  {
  }

  v189 = [v229 createChildContextForNestedFetchRequest:v195];
  [(NSSQLStoreRequestContext *)v189 setConnection:?];
  _prefetchForFetchRequest(v206, a4, v189);
  if (v189)
  {
    v190 = [v189[19] allObjects];
  }

  else
  {
    v190 = 0;
  }

  [(NSSQLFetchRequestContext *)v229 addObjectIDsToRegister:v190];
  if (v189)
  {
    v191 = [v189[20] allObjects];
  }

  else
  {
    v191 = 0;
  }

  [(NSSQLFetchRequestContext *)v229 addObjectsToAwaken:v191];
  [(NSSQLStoreRequestContext *)v189 setConnection:?];

LABEL_344:
  v192 = *MEMORY[0x1E69E9840];
}

void sub_1856B56AC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1856B3BD8);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1856B56EC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x1856B4238);
    }

    objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1856B5724(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856B56FCLL);
  }

  _Unwind_Resume(a1);
}

void sub_1856B5734(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x1856B573CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1856B5744(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_1856B59E0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock((v1 + v2));
  objc_exception_rethrow();
}

id *_PF_ObjectIDsForDeferredFault(id **a1, unint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_fulfillFault_withContext_forIndex_);
  }

  if ((a1[2] & 0x30000) == 0x10000 || (a1[2] & 0x80) != 0)
  {
    goto LABEL_20;
  }

  v5 = a1[4];
  v6 = _PFEntityForManagedObject(a1);
  v7 = v6[14];
  v8 = v7[2];
  v10 = a2 >= v8;
  v9 = a2 - v8;
  v10 = !v10 || v9 >= v7[3];
  v11 = !v10;
  if ((a1[2] & 0x38000) == 0x8000 || v11 != 0)
  {
    [_insertion_fault_handler fulfillFault:a1 withContext:v5 forIndex:a2];
  }

  if (v11)
  {
    goto LABEL_20;
  }

  v16 = v7[12];
  v10 = a2 >= v16;
  v17 = a2 - v16;
  v19 = v10 && v17 < v7[13];
  v20 = *(_kvcPropertysPrimitiveGetters(v6) + 8 * a2);
  if (v20)
  {
    v21 = _NSGetUsingKeyValueGetter();
  }

  else
  {
    snapshot_get_value_as_object(a1[3], a2);
  }

  v22 = v21;
  if (v19)
  {
    if (!v5)
    {
      goto LABEL_20;
    }

    if (v21 == _CD_ScalarNull)
    {
      [_insertion_fault_handler fulfillFault:a1 withContext:v5 forIndex:a2];
      result = a1[3];
      if (!result)
      {
        __break(1u);
        return result;
      }

      if (v20)
      {
        v23 = _NSGetUsingKeyValueGetter();
      }

      else
      {
        snapshot_get_value_as_object(result, a2);
      }

      v22 = v23;
    }

    if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (v22 = [v22 objectID]) == 0)
    {
LABEL_20:
      v13 = 0;
LABEL_21:
      v14 = *MEMORY[0x1E69E9840];
      return v13;
    }

    v34 = MEMORY[0x1E695DEC8];
    v35 = *MEMORY[0x1E69E9840];

    return [v34 arrayWithObject:v22];
  }

  else
  {
    if (v21 && ([v21 isFault] & 1) == 0)
    {
      v13 = [MEMORY[0x1E695DF70] array];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v30 = [v22 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v41;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v41 != v32)
            {
              objc_enumerationMutation(v22);
            }

            [v13 addObject:{objc_msgSend(*(*(&v40 + 1) + 8 * i), "objectID")}];
          }

          v31 = [v22 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v31);
      }

      goto LABEL_21;
    }

    v24 = [(NSFaultHandler *)_insertion_fault_handler retainedFulfillAggregateFaultForObject:a1 andRelationship:*(v6[12] + 24 + 8 * a2) withContext:v5];
    if (![v24 isNSArray])
    {
      v13 = [MEMORY[0x1E695DF70] array];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v26 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v37;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(v24);
            }

            [v13 addObject:*(*(&v36 + 1) + 8 * j)];
          }

          v27 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
        }

        while (v27);
      }

      goto LABEL_21;
    }

    v25 = *MEMORY[0x1E69E9840];

    return v24;
  }
}

void _PFFaultHandlerPreconnectRelationship(int a1, unsigned int *a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = _PFEntityForManagedObject(a2);
  v8 = [a3 entity];
  v9 = [a3 _entitysReferenceID];
  v10 = [a3 isToMany];
  if (v7 != v8)
  {
    v9 = [v7 _offsetRelationshipIndex:v9 fromSuperEntity:v8 andIsToMany:v10];
  }

  v11 = _kvcPropertysPrimitiveSetters(v7);
  v12 = *(v11 + 8 * v9);
  v13 = a2[4];
  if ((v13 & 0x38000) == 0x8000)
  {
    v14 = *(a2 + 6);
    if (v14)
    {
      v15 = 0;
      if ((v13 & 0x2000) == 0 && *v14)
      {
        v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_msgSend(a3, "name"), 0}];
        v15 = v11;
      }
    }

    else
    {
      v15 = 0;
    }

    _PFFaultHandlerFulfillPartialFault(v11, a2, *(a2 + 4), 0, NSArray_EmptyArray, v15, MEMORY[0x1E695E0F0]);

    v13 = a2[4];
  }

  v16 = a2[5];
  if (v16)
  {
    v17 = a2 + v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = &v17[-((v13 >> 22) & 0x3FC)];
  v19 = v18[v9 >> 3];
  v20 = 1 << (v9 & 7);
  if ((v20 & v19) == 0)
  {
    v18[v9 >> 3] = v19 | v20;
    if (v10)
    {
      [a3 isOrdered];
    }

    else
    {
      if ((a2[4] & 0x80) != 0 || !*(a2 + 4))
      {
        goto LABEL_35;
      }

      if (!a4)
      {
        v22 = a2;
        v23 = v9;
        v24 = 0;
        goto LABEL_19;
      }
    }

    v22 = a2;
    v23 = v9;
    v24 = a4;
LABEL_19:
    _PF_Handler_Primitive_SetProperty(v22, v23, v24, 0, v12);
LABEL_35:
    v30 = *MEMORY[0x1E69E9840];
    return;
  }

  if (*(_kvcPropertysPrimitiveGetters(v7) + 8 * v9))
  {
    v21 = _NSGetUsingKeyValueGetter();
  }

  else
  {
    snapshot_get_value_as_object(*(a2 + 3), v9);
  }

  v25 = v21;
  if (!v10)
  {
    if (!v21)
    {
      goto LABEL_35;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_35;
    }

    v26 = objc_autoreleasePoolPush();
    if (!_NSCoreDataIsOSLogEnabled(1))
    {
      goto LABEL_45;
    }

    v27 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v29 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
LABEL_44:
        *buf = 138412802;
        v35 = [a3 name];
        v36 = 2112;
        v37 = [a2 objectID];
        v38 = 2112;
        v39 = v25;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: During prefetching, materialized to-one relationship '%@' on object %@ was not a managed object but instead %@\n", buf, 0x20u);
      }
    }

    else if (v29)
    {
      goto LABEL_44;
    }

LABEL_45:
    _NSCoreDataLog_console(1, "During prefetching, materialized to-one relationship '%@' on object %@ was not a managed object but instead %@", [a3 name], objc_msgSend(a2, "objectID"), v25);
    goto LABEL_46;
  }

  if (v21)
  {
    if ([v21 isFault])
    {
      [v25 willReadWithContents:a4];
    }

    goto LABEL_35;
  }

  v26 = objc_autoreleasePoolPush();
  if (!_NSCoreDataIsOSLogEnabled(1))
  {
    goto LABEL_42;
  }

  v31 = _pflogging_catastrophic_mode;
  v32 = _PFLogGetLogStream(1);
  v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
  if (v31)
  {
    if (v33)
    {
LABEL_41:
      *buf = 138412546;
      v35 = [a3 name];
      v36 = 2112;
      v37 = [a2 objectID];
      _os_log_error_impl(&dword_18565F000, v32, OS_LOG_TYPE_ERROR, "CoreData: error: During prefetching, materialized to-many relationship '%@' on object %@ was null\n", buf, 0x16u);
    }
  }

  else if (v33)
  {
    goto LABEL_41;
  }

LABEL_42:
  _NSCoreDataLog_console(1, "During prefetching, materialized to-many relationship '%@' on object %@ was null", [a3 name], objc_msgSend(a2, "objectID"));
LABEL_46:
  objc_autoreleasePoolPop(v26);
  __break(1u);
}