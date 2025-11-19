uint64_t sub_23EB6FE40(__CFArray *a1, CFMutableDictionaryRef theDict, const void **a3, CFTypeRef cf, void *a5)
{
  if (a1)
  {
    CFArrayAppendValue(a1, cf);
  }

  else if (theDict)
  {
    if (!*a3)
    {
      return 4294960554;
    }

    CFDictionarySetValue(theDict, *a3, cf);
    CFRelease(*a3);
    *a3 = 0;
  }

  else
  {
    CFRetain(cf);
  }

  result = 0;
  if (!*a5)
  {
    *a5 = cf;
  }

  return result;
}

uint64_t sub_23EB6FED4(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = a1;
  v4 = 0;
  CFDictionaryApplyFunction(theDict, sub_23EB7181C, &v3);
  return v4;
}

void sub_23EB6FF40(const __CFString *cf, uint64_t a2, UInt8 *bytes, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v97 = *MEMORY[0x277D85DE8];
  maxBufLen = 0;
  v93 = a4;
  v91 = 0;
  v8 = *bytes;
  if (!*bytes)
  {
    return;
  }

  v9 = bytes;
  v11 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v12 = 0;
      ;
    }

    v14 = &v9[v12];
    v15 = &v9[v12];
    if (i)
    {
      do
      {
        if (i == 46)
        {
          break;
        }

        v16 = *++v15;
        i = v16;
      }

      while (v16);
    }

    if (v8 == 91)
    {
      v18 = v9[1];
      if (v18 == 42)
      {
        if (v9[2] != 93)
        {
          return;
        }

        v19 = v93;
        v93 += 2;
        v20 = *v19;
        if ((v20 & 0x80000000) != 0)
        {
          return;
        }

        v14 = v9 + 3;
      }

      else
      {
        v22 = v18 - 48;
        if (v22 > 9)
        {
          return;
        }

        v20 = 0;
        v14 = v9 + 2;
        do
        {
          v20 = 10 * v20 + v22;
          v24 = *v14++;
          v23 = v24;
          v22 = v24 - 48;
        }

        while ((v24 - 48) < 0xA);
        if (v20 < 0 || v23 != 93)
        {
          return;
        }
      }

      v25 = CFGetTypeID(cf);
      if (v25 != CFArrayGetTypeID() || v20 >= CFArrayGetCount(cf))
      {
        return;
      }

      cf = CFArrayGetValueAtIndex(cf, v20);
      goto LABEL_54;
    }

    if (v8 != 37)
    {
      if (v9 >= v14)
      {
        v14 = v9;
        goto LABEL_54;
      }

      v21 = CFStringCreateWithBytes(v11, v9, v12, 0x8000100u, 0);
      if (!v21)
      {
        return;
      }

      goto LABEL_52;
    }

    if (v9[1] != 107)
    {
      return;
    }

    v17 = v9[2];
    if (v17 <= 0x68)
    {
      if (v17 != 67)
      {
        if (v17 == 79)
        {
          goto LABEL_42;
        }

        if (v17 != 99)
        {
          return;
        }
      }

      v26 = v93;
      v93 += 2;
      *buffer = bswap32(*v26);
      v27 = buffer;
      v28 = v11;
      v29 = 4;
      v30 = 0;
      goto LABEL_49;
    }

    if (v9[2] <= 0x72u)
    {
      if (v17 != 105)
      {
        if (v17 != 111)
        {
          return;
        }

LABEL_42:
        v34 = v93;
        v93 += 2;
        v21 = *v34;
        if (!*v34)
        {
          return;
        }

        CFRetain(*v34);
        goto LABEL_51;
      }

      v35 = v93;
      v93 += 2;
      sub_23EB720C0(cStr, 64, "%llu", a4, a5, a6, a7, a8, *v35);
      v32 = cStr;
      v33 = 0;
      goto LABEL_45;
    }

    if (v17 == 116)
    {
      v37 = v93;
      v93 += 2;
      v27 = *v37;
      if (!*v37)
      {
        return;
      }

      v38 = v93;
      v93 += 2;
      v29 = *v38;
      v28 = v11;
      v30 = 134217984;
LABEL_49:
      v36 = CFStringCreateWithBytes(v28, v27, v29, v30, 0);
      if (!v36)
      {
        return;
      }

      goto LABEL_50;
    }

    if (v17 != 115)
    {
      return;
    }

    v31 = v93;
    v93 += 2;
    v32 = *v31;
    if (!*v31)
    {
      return;
    }

    v33 = v11;
LABEL_45:
    v36 = CFStringCreateWithCString(v33, v32, 0x8000100u);
    if (!v36)
    {
      return;
    }

LABEL_50:
    v21 = v36;
LABEL_51:
    v14 = v9 + 3;
LABEL_52:
    v39 = CFGetTypeID(cf);
    if (v39 != CFDictionaryGetTypeID())
    {
      CFRelease(v21);
      return;
    }

    cf = CFDictionaryGetValue(cf, v21);
    CFRelease(v21);
    if (!cf)
    {
      return;
    }

LABEL_54:
    if (*v14 == 58)
    {
      break;
    }

    if (*v15)
    {
      v9 = v15 + 1;
    }

    else
    {
      v9 = v15;
    }

    v8 = *v9;
    if (!*v9)
    {
      if (!cf)
      {
        return;
      }

LABEL_60:
      if (a2)
      {
        *a2 = cf;
      }

      return;
    }
  }

  v40 = (v14 + 1);
  for (j = v14 + 1; *j; ++j)
  {
    if (*j == 46)
    {
      return;
    }
  }

  if (!cf)
  {
    return;
  }

  if (!strcmp(v14 + 1, "err") || !strcmp(v14 + 1, "int"))
  {
    if (sub_23EB70D14(cf, &v91) || !a2)
    {
      return;
    }

    goto LABEL_96;
  }

  if (!strcmp(v14 + 1, "int8"))
  {
    if (sub_23EB70D14(cf, &v91) || !a2)
    {
      return;
    }

    goto LABEL_99;
  }

  if (!strcmp(v14 + 1, "int16"))
  {
    if (!sub_23EB70D14(cf, &v91) && a2)
    {
      *a2 = v91;
    }

    return;
  }

  if (!strcmp(v14 + 1, "int64"))
  {
    sub_23EB70D14(cf, a2);
    return;
  }

  if (!strcmp(v14 + 1, "int*"))
  {
    if (sub_23EB70D14(cf, &v91))
    {
      return;
    }

    v45 = v93;
    v93 += 2;
    v46 = *v45;
    if (v46 <= 3)
    {
      if (v46 != 1)
      {
        if (v46 == 2)
        {
          *a2 = v91;
        }

        return;
      }

LABEL_99:
      *a2 = v91;
      return;
    }

    if (v46 != 4)
    {
      if (v46 == 8)
      {
        *a2 = v91;
      }

      return;
    }

LABEL_96:
    *a2 = v91;
    return;
  }

  if (!strcmp(v14 + 1, "utf8"))
  {
    v47 = CFGetTypeID(cf);
    if (v47 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(cf);
      maxBufLen = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v49 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
      if (v49)
      {
        v50 = v49;
        v98.location = 0;
        v98.length = Length;
        if (CFStringGetBytes(cf, v98, 0x8000100u, 0, 0, v49, maxBufLen, &maxBufLen) == Length)
        {
          v50[maxBufLen] = 0;
          if (a2)
          {
            *a2 = v50;
          }

          else
          {
            free(v50);
          }
        }

        else
        {
          free(v50);
        }
      }
    }
  }

  else if (!strcmp(v14 + 1, "*utf8"))
  {
    v51 = CFGetTypeID(cf);
    if (v51 == CFStringGetTypeID())
    {
      v52 = v93;
      v93 += 2;
      CFStringGetCString(cf, a2, *v52, 0x8000100u);
    }
  }

  else if (!strcmp(v14 + 1, "obj"))
  {
    if (a2)
    {
      CFRetain(cf);
      *a2 = cf;
    }
  }

  else if (!strcmp(v14 + 1, "BOOL"))
  {
    v53 = CFGetTypeID(cf);
    if (v53 == CFBooleanGetTypeID() && a2)
    {
      *a2 = CFBooleanGetValue(cf);
    }
  }

  else if (!strcmp(v14 + 1, "mac"))
  {
    v54 = CFGetTypeID(cf);
    if (v54 == CFDataGetTypeID())
    {
      if (CFDataGetLength(cf) == 6 && a2)
      {
        BytePtr = CFDataGetBytePtr(cf);
        v56 = *(BytePtr + 2);
        *a2 = *BytePtr;
        *(a2 + 4) = v56;
      }
    }

    else
    {
      v59 = CFGetTypeID(cf);
      if (v59 == CFStringGetTypeID() && CFStringGetCString(cf, cStr, 64, 0x8000100u))
      {
        sub_23EB7E668(cStr, 0xFFFFFFFFFFFFFFFFLL, 6, a2);
      }
    }
  }

  else
  {
    if (!strcmp(v14 + 1, "macStr"))
    {
      v57 = CFGetTypeID(cf);
      if (v57 == CFDataGetTypeID())
      {
        if (CFDataGetLength(cf) != 6)
        {
          return;
        }

        v58 = CFDataGetBytePtr(cf);
      }

      else
      {
        v61 = CFGetTypeID(cf);
        if (v61 != CFStringGetTypeID() || !CFStringGetCString(cf, cStr, 64, 0x8000100u) || sub_23EB7E668(cStr, 0xFFFFFFFFFFFFFFFFLL, 6, buffer))
        {
          return;
        }

        v58 = buffer;
      }

      sub_23EB7E798(v58, 6, a2);
      return;
    }

    if (!strcmp(v14 + 1, "code"))
    {
      *valuePtr = 0;
      v60 = CFGetTypeID(cf);
      if (v60 == CFStringGetTypeID())
      {
        if (CFStringGetLength(cf) != 4)
        {
          return;
        }

        maxBufLen = 0;
        v99.location = 0;
        v99.length = 4;
        CFStringGetBytes(cf, v99, 0x8000100u, 0, 0, buffer, 4, &maxBufLen);
        if (maxBufLen != 4)
        {
          return;
        }

        *valuePtr = sub_23EB7E5D8(buffer, 4uLL);
      }

      else
      {
        v63 = CFGetTypeID(cf);
        if (v63 != CFNumberGetTypeID())
        {
          return;
        }

        CFNumberGetValue(cf, kCFNumberSInt32Type, valuePtr);
      }

      if (a2)
      {
        *a2 = *valuePtr;
      }
    }

    else if (!strcmp(v14 + 1, "ipv4"))
    {
      v62 = CFGetTypeID(cf);
      if (v62 == CFStringGetTypeID() && CFStringGetCString(cf, cStr, 64, 0x8000100u))
      {
        sub_23EB7DE5C(cStr, 0, a2, 0, 0, 0, 0);
      }
    }

    else if (!strcmp(v14 + 1, "vers"))
    {
      v64 = CFGetTypeID(cf);
      if (v64 == CFStringGetTypeID())
      {
        v100.length = CFStringGetLength(cf);
        maxBufLen = 0;
        v100.location = 0;
        CFStringGetBytes(cf, v100, 0x8000100u, 0, 0, cStr, 63, &maxBufLen);
        sub_23EB7E800(cStr, maxBufLen, a2);
      }
    }

    else if (!strcmp(v14 + 1, "svers"))
    {
      v65 = CFGetTypeID(cf);
      if (v65 == CFStringGetTypeID())
      {
        v101.length = CFStringGetLength(cf);
        maxBufLen = 0;
        v101.location = 0;
        CFStringGetBytes(cf, v101, 0x8000100u, 0, 0, cStr, 63, &maxBufLen);
        v66 = sub_23EB7EE20(cStr, maxBufLen);
        if (v66)
        {
          *a2 = v66;
        }
      }
    }

    else if (!strcmp(v14 + 1, "uuid"))
    {
      v67 = CFGetTypeID(cf);
      if (v67 == CFDataGetTypeID())
      {
        if (CFDataGetLength(cf) == 16 && a2)
        {
          *a2 = *CFDataGetBytePtr(cf);
        }
      }

      else
      {
        v79 = CFGetTypeID(cf);
        if (v79 == CFStringGetTypeID() && CFStringGetCString(cf, valuePtr, 64, 0x8000100u))
        {
          sub_23EB7F22C(valuePtr, 0xFFFFFFFFFFFFFFFFLL, 0, a2, v80, v81, v82, v83);
        }
      }
    }

    else if (!strcmp(v14 + 1, "CFStringUUID"))
    {
      v73 = CFGetTypeID(cf);
      if (v73 == CFStringGetTypeID())
      {
        if (CFStringGetCString(cf, cStr, 64, 0x8000100u))
        {
          sub_23EB7F22C(cStr, 0xFFFFFFFFFFFFFFFFLL, 0, 0, v74, v75, v76, v77);
          if (!v78)
          {
            goto LABEL_60;
          }
        }
      }
    }

    else
    {
      v42 = *v40;
      if (v42 == 67 && v14[2] == 70)
      {
        v43 = strchr(v14 + 1, 33);
        if (v43)
        {
          v44 = v43 - v40;
        }

        else
        {
          v44 = strlen(v14 + 1);
        }

        if (sub_23EB7F48C(v14 + 1, v44, "CFArray"))
        {
          if (sub_23EB7F48C(v14 + 1, v44, "CFBoolean"))
          {
            if (sub_23EB7F48C(v14 + 1, v44, "CFData"))
            {
              if (sub_23EB7F48C(v14 + 1, v44, "CFDate"))
              {
                if (sub_23EB7F48C(v14 + 1, v44, "CFDictionary"))
                {
                  if (sub_23EB7F48C(v14 + 1, v44, "CFNumber"))
                  {
                    if (sub_23EB7F48C(v14 + 1, v44, "CFString"))
                    {
                      return;
                    }

                    TypeID = CFStringGetTypeID();
                  }

                  else
                  {
                    TypeID = CFNumberGetTypeID();
                  }
                }

                else
                {
                  TypeID = CFDictionaryGetTypeID();
                }
              }

              else
              {
                TypeID = CFDateGetTypeID();
              }
            }

            else
            {
              TypeID = CFDataGetTypeID();
            }
          }

          else
          {
            TypeID = CFBooleanGetTypeID();
          }
        }

        else
        {
          TypeID = CFArrayGetTypeID();
        }

        if (CFGetTypeID(cf) == TypeID)
        {
          goto LABEL_60;
        }
      }

      else if (!strcmp(v14 + 1, "data*"))
      {
        v84 = CFGetTypeID(cf);
        if (v84 == CFDataGetTypeID())
        {
          v85 = v93;
          v93 += 2;
          v86 = *v85;
          if (CFDataGetLength(cf) == v86)
          {
            if (a2)
            {
              *a2 = CFDataGetBytePtr(cf);
            }
          }
        }
      }

      else
      {
        v68 = v42 - 48;
        if ((v42 - 48) > 9)
        {
          if (v42)
          {
            return;
          }

          v69 = 0;
        }

        else
        {
          v69 = 0;
          v70 = v14 + 2;
          do
          {
            v69 = 10 * v69 + v68;
            v72 = *v70++;
            v71 = v72;
            v68 = v72 - 48;
          }

          while ((v72 - 48) < 0xA);
          if (v71 || (v69 & 0x8000000000000000) != 0)
          {
            return;
          }
        }

        v87 = CFGetTypeID(cf);
        if (v87 == CFDataGetTypeID() && CFDataGetLength(cf) == v69 && a2)
        {
          v88 = CFDataGetBytePtr(cf);
          memcpy(a2, v88, v69);
        }
      }
    }
  }
}

uint64_t sub_23EB70D14(const __CFString *a1, _BOOL8 *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr))
    {
      return 4294960540;
    }
  }

  else
  {
    v5 = CFGetTypeID(a1);
    if (v5 == CFStringGetTypeID())
    {
      if (!CFStringGetCString(a1, buffer, 64, 0x8000100u))
      {
        return 4294960545;
      }

      if (sub_23EB7F3B0(buffer, 0xFFFFFFFFFFFFFFFFLL, "%lli", v6, v7, v8, v9, v10, &valuePtr) != 1)
      {
        return 4294960540;
      }
    }

    else
    {
      v11 = CFGetTypeID(a1);
      if (v11 != CFBooleanGetTypeID())
      {
        return 4294960540;
      }

      valuePtr = *MEMORY[0x277CBED28] == a1;
    }
  }

  result = 0;
  if (a2)
  {
    *a2 = valuePtr;
  }

  return result;
}

uint64_t sub_23EB70E50(const char *a1, CFMutableDataRef *a2)
{
  v3 = fopen(a1, "rb");
  if (v3)
  {
    v4 = v3;
    v5 = sub_23EB70EE0(v3, a2);
    fclose(v4);
    return v5;
  }

  else if (*__error())
  {
    result = *__error();
    if (!result)
    {

      return sub_23EB70EE0(0, a2);
    }
  }

  else
  {
    return 4294960596;
  }

  return result;
}

uint64_t sub_23EB70EE0(FILE *a1, CFMutableDataRef *a2)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    return 4294960568;
  }

  v5 = Mutable;
  v6 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  if (!v6)
  {
    v10 = 4294960568;
LABEL_15:
    CFRelease(v5);
    return v10;
  }

  v7 = v6;
  v8 = fread(v6, 1uLL, 0x20000uLL, a1);
  if (v8)
  {
    v9 = v8;
    do
    {
      CFDataAppendBytes(v5, v7, v9);
      v9 = fread(v7, 1uLL, 0x20000uLL, a1);
    }

    while (v9);
  }

  if (feof(a1))
  {
    goto LABEL_7;
  }

  if (!*__error())
  {
    v10 = 4294960596;
    goto LABEL_14;
  }

  v10 = *__error();
  if (v10)
  {
LABEL_14:
    free(v7);
    goto LABEL_15;
  }

LABEL_7:
  *a2 = v5;
  free(v7);
  return 0;
}

uint64_t sub_23EB70FE4(const __CFString *a1, const char **a2, UInt8 **a3)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v7 = CStringPtr;
    v8 = 0;
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    usedBufLen = MaximumSizeForEncoding;
    v12 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (!v12)
    {
      return 4294960568;
    }

    v8 = v12;
    v14.location = 0;
    v14.length = Length;
    if (CFStringGetBytes(a1, v14, 0x8000100u, 0, 0, v12, MaximumSizeForEncoding, &usedBufLen) != Length)
    {
      free(v8);
      return 4294960596;
    }

    v8[usedBufLen] = 0;
    v7 = v8;
  }

  result = 0;
  *a2 = v7;
  *a3 = v8;
  return result;
}

uint64_t sub_23EB710E8(const __CFString *a1, char **a2)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = strdup(CStringPtr);
    if (!v5)
    {
      return 4294960568;
    }

LABEL_7:
    result = 0;
    *a2 = v5;
    return result;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = MaximumSizeForEncoding;
  v8 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!v8)
  {
    return 4294960568;
  }

  v5 = v8;
  v11.location = 0;
  v11.length = Length;
  if (CFStringGetBytes(a1, v11, 0x8000100u, 0, 0, v8, MaximumSizeForEncoding, &usedBufLen) == Length)
  {
    v5[usedBufLen] = 0;
    goto LABEL_7;
  }

  free(v5);
  return 4294960596;
}

CFNumberRef sub_23EB711E4(uint64_t a1)
{
  valuePtr = a1;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  if (a1 == a1)
  {
    v6 = a1;
    p_valuePtr = &v6;
    v2 = kCFNumberSInt8Type;
  }

  else
  {
    p_valuePtr = &valuePtr;
    v2 = kCFNumberSInt64Type;
  }

  return CFNumberCreate(0, v2, p_valuePtr);
}

const char *sub_23EB71268(const __CFString *cf, char *__dst, size_t __size)
{
  if (!__size)
  {
    return "";
  }

  if (!cf)
  {
    v7 = "";
LABEL_7:
    strlcpy(__dst, v7, __size);
    return __dst;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFStringGetTypeID())
  {
    CFStringGetCString(cf, __dst, __size, 0x8000100u);
    return __dst;
  }

  if (v6 == CFNumberGetTypeID())
  {
    if (CFNumberIsFloatType(cf))
    {
      valuePtr = 0;
      CFNumberGetValue(cf, kCFNumberDoubleType, &valuePtr);
      snprintf(__dst, __size, "%f");
    }

    else
    {
      *&v24[4] = 0;
      CFNumberGetValue(cf, kCFNumberSInt64Type, &v24[4]);
      snprintf(__dst, __size, "%lld");
    }

    return __dst;
  }

  if (*MEMORY[0x277CBED28] == cf)
  {
    v7 = "true";
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBED10] == cf)
  {
    v7 = "false";
    goto LABEL_7;
  }

  if (v6 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(cf);
    Length = CFDataGetLength(cf);
    v10 = __dst;
    if (Length >= 1)
    {
      v10 = __dst;
      if ((__size - 1) >= 2)
      {
        v11 = __size - 3;
        v12 = BytePtr + 1;
        v13 = __dst;
        do
        {
          v14 = *(v12 - 1);
          *v13 = a0123456789abcd[v14 >> 4];
          v15 = a0123456789abcd[v14 & 0xF];
          v10 = v13 + 2;
          v13[1] = v15;
          if (v12 >= &BytePtr[Length])
          {
            break;
          }

          ++v12;
          v13 += 2;
          v16 = v11 <= 1;
          v11 -= 2;
        }

        while (!v16);
      }
    }

    *v10 = 0;
  }

  else if (v6 == CFDateGetTypeID())
  {
    *v24 = 0;
    v23 = 0;
    v22 = 0;
    Default = CFAllocatorGetDefault();
    v18 = CFCalendarCreateWithIdentifier(Default, *MEMORY[0x277CBEE80]);
    if (v18 && (v19 = v18, MEMORY[0x23EF1E1F0](cf), CFCalendarDecomposeAbsoluteTime(v19, v20, "yMdHms", &v24[4], v24, &v23 + 4, &v23, &v22 + 4, &v22), modf(v22, &valuePtr), CFRelease(v19), v23))
    {
      if (v23 > 12)
      {
        LODWORD(v23) = v23 - 12;
      }
    }

    else
    {
      LODWORD(v23) = 12;
    }

    snprintf(__dst, __size, "%04d-%02d-%02d %02d:%02d:%02d.%06d %s", *&v24[4], *v24);
  }

  else if (v6 == CFDictionaryGetTypeID())
  {
    snprintf(__dst, __size, "{}");
  }

  else if (v6 == CFArrayGetTypeID())
  {
    snprintf(__dst, __size, "[]");
  }

  else
  {
    snprintf(__dst, __size, "");
  }

  return __dst;
}

uint64_t sub_23EB71598(void *cf, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = -1;
  v12 = MEMORY[0x277CBF138];
  v13 = MEMORY[0x277CBF150];
  while (1)
  {
      ;
    }

    if (!*(a2 + i))
    {
      break;
    }

    v15 = a2 + i + 1;
    if (*a2 == 91)
    {
      LODWORD(idx) = 0;
      if (sub_23EB7F3B0((a2 + 1), i - 1, "%i]", a4, a5, a6, a7, a8, &idx) != 1)
      {
        return 4294960579;
      }

      v16 = CFGetTypeID(cf);
      if (v16 != CFArrayGetTypeID())
      {
        return 4294960540;
      }

      v17 = idx;
      if ((idx & 0x80000000) != 0 || CFArrayGetCount(cf) <= v17)
      {
        return 4294960586;
      }

      cf = CFArrayGetValueAtIndex(cf, idx);
      v11 = idx;
      a2 = v15;
    }

    else
    {
      v18 = CFGetTypeID(cf);
      if (v18 != CFDictionaryGetTypeID())
      {
        return 4294960540;
      }

      v19 = CFStringCreateWithBytes(0, a2, i, 0x8000100u, 0);
      if (!v19)
      {
        return 4294960596;
      }

      v20 = v19;
      Value = CFDictionaryGetValue(cf, v19);
      if (!Value)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, v12, v13);
        if (!Mutable)
        {
          CFRelease(v20);
          return 4294960568;
        }

        Value = Mutable;
        CFDictionarySetValue(cf, v20, Mutable);
        CFRelease(Value);
      }

      CFRelease(v20);
      v11 = -1;
      a2 = v15;
      cf = Value;
    }
  }

  v23 = CFGetTypeID(cf);
  if (v23 == CFDictionaryGetTypeID())
  {
    if (i)
    {
      v24 = CFStringCreateWithBytes(0, a2, i, 0x8000100u, 0);
      if (!v24)
      {
        return 4294960596;
      }

      v25 = v24;
      if (a3)
      {
        CFDictionarySetValue(cf, v24, a3);
      }

      else
      {
        CFDictionaryRemoveValue(cf, v24);
      }

      CFRelease(v25);
      return 0;
    }

    return 4294960579;
  }

  v27 = CFGetTypeID(cf);
  if (v27 == CFArrayGetTypeID())
  {
    if (!i)
    {
      if (a3)
      {
        CFArrayAppendValue(cf, a3);
      }

      else
      {
        if ((v11 & 0x80000000) != 0)
        {
          return 4294960579;
        }

        CFArrayRemoveValueAtIndex(cf, v11);
      }

      return 0;
    }

    return 4294960579;
  }

  return 4294960540;
}

void sub_23EB7181C(void *key, void *value, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    CFDictionarySetValue(*a3, key, value);
    *(a3 + 8) = 0;
  }
}

char *sub_23EB71858(const __CFDictionary *a1, const void *a2, char *a3, size_t a4, int *a5)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    v9 = -6727;
    if (!a5)
    {
      return a3;
    }

    goto LABEL_3;
  }

  a3 = sub_23EB71268(Value, a3, a4);
  v9 = 0;
  if (a5)
  {
LABEL_3:
    *a5 = v9;
  }

  return a3;
}

uint64_t sub_23EB718BC(__CFDictionary *a1, const void *a2, char *cStr, CFIndex numBytes)
{
  if (numBytes == -1)
  {
    v6 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = CFStringCreateWithBytes(0, cStr, numBytes, 0x8000100u, 0);
    if (v6)
    {
LABEL_3:
      v7 = v6;
      CFDictionarySetValue(a1, a2, v6);
      CFRelease(v7);
      return 0;
    }
  }

  return 4294960596;
}

uint64_t sub_23EB71950(__CFDictionary *a1, const void *a2, UInt8 *bytes, CFIndex length)
{
  v6 = CFDataCreate(0, bytes, length);
  if (!v6)
  {
    return 4294960596;
  }

  v7 = v6;
  CFDictionarySetValue(a1, a2, v6);
  CFRelease(v7);
  return 0;
}

uint64_t sub_23EB719B8(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v5 = sub_23EB711E4(a3);
  if (!v5)
  {
    return 4294960568;
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
  return 0;
}

uint64_t sub_23EB71A18(const void *a1, const void ***a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 4294960540;
  }

  Count = CFDictionaryGetCount(a1);
  v6 = malloc_type_malloc(16 * Count + 16, 0xC0040B8AA526DuLL);
  if (!v6)
  {
    return 4294960568;
  }

  v7 = v6;
  *v6 = 0;
  v6[1] = Count;
  CFDictionaryGetKeysAndValues(a1, v6 + 2, &v6[Count + 2]);
  result = 0;
  *a2 = v7;
  return result;
}

void sub_23EB71AB4(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_23EB71AC0(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 >= v4)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = a1[v3 + 2];
  }

  if (a3)
  {
    *a3 = a1[v4 + 2 + v3];
  }

  *a1 = v3 + 1;
  return 1;
}

uint64_t sub_23EB71B08(const Bytef *a1, uLong a2, void *a3, uLongf *a4)
{
  v8 = a2 + a2 / 0xA;
  destLen = v8 + 12;
  v9 = malloc_type_malloc(v8 + 20, 0x100004077774924uLL);
  if (!v9)
  {
    return 4294960568;
  }

  v10 = v9;
  *v9 = 2053924451;
  v9[4] = BYTE3(a2);
  v9[5] = BYTE2(a2);
  v9[6] = BYTE1(a2);
  v9[7] = a2;
  v11 = compress2(v9 + 8, &destLen, a1, a2, 9);
  if (v11)
  {
    v12 = v11;
LABEL_13:
    free(v10);
    return v12;
  }

  v14 = destLen + 8;
  destLen += 8;
  if (a3)
  {
    v15 = malloc_type_realloc(v10, v14, 0x100004077774924uLL);
    if (!v15)
    {
      v12 = 4294960553;
      goto LABEL_13;
    }

    v10 = 0;
    *a3 = v15;
  }

  if (a4)
  {
    *a4 = destLen;
  }

  v12 = 0;
  result = 0;
  if (v10)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_23EB71C30(uint64_t a1, unint64_t a2, void *a3, uLongf *a4)
{
  v4 = a2 - 8;
  if (a2 < 8)
  {
    return 4294960554;
  }

  if (*a1 != 99 && *(a1 + 1) != 102 && *(a1 + 2) != 108 && *(a1 + 3) != 122)
  {
    return 4294960548;
  }

  v8 = (*(a1 + 4) << 24) | (*(a1 + 5) << 16) | (*(a1 + 6) << 8);
  v9 = *(a1 + 7);
  destLen = v8 | v9;
  if (v8 | v9)
  {
    v10 = malloc_type_malloc(v8 | v9, 0xF3D83160uLL);
    if (v10)
    {
      v11 = v10;
      v12 = uncompress(v10, &destLen, (a1 + 8), v4);
      if (v12)
      {
LABEL_17:
        free(v11);
        return v12;
      }

      goto LABEL_12;
    }

    return 4294960568;
  }

  v11 = malloc_type_malloc(1uLL, 0x7AD8C323uLL);
  if (!v11)
  {
    return 4294960568;
  }

LABEL_12:
  if (a3)
  {
    *a3 = v11;
    v11 = 0;
  }

  if (a4)
  {
    *a4 = destLen;
  }

  v12 = 0;
  result = 0;
  if (v11)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_23EB71D64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = a3;
  *(result + 48) = 0;
  *(result + 52) = 0;
  return result;
}

void sub_23EB71D7C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      free(v2);
    }
  }

  v3 = *(a1 + 8);
  *(a1 + 24) = *a1;
  *(a1 + 32) = 0;
  *(a1 + 40) = v3;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
}

uint64_t sub_23EB71DC4(uint64_t a1, char *__s, size_t a3)
{
  v3 = a3;
  if (a3 == -1)
  {
    v3 = strlen(__s);
  }

  __dst = 0;
  v6 = sub_23EB71E54(a1, *(a1 + 32) + v3, &__dst);
  v7 = v6;
  if (v6)
  {
    if (!*(a1 + 52))
    {
      *(a1 + 52) = v6;
    }
  }

  else
  {
    memcpy(__dst, __s, v3);
  }

  return v7;
}

uint64_t sub_23EB71E54(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  result = *(a1 + 52);
  if (!result)
  {
    v7 = *(a1 + 32);
    if (v7 >= a2)
    {
      *(a1 + 32) = a2;
      if (a3)
      {
        result = 0;
        v8 = *(a1 + 24);
LABEL_26:
        *a3 = v8;
        return result;
      }

      return 0;
    }

    if (*(a1 + 40) >= a2)
    {
LABEL_24:
      *(a1 + 32) = a2;
      if (a3)
      {
        result = 0;
        v8 = *(a1 + 24) + v7;
        goto LABEL_26;
      }

      return 0;
    }

    if (*(a1 + 16) < a2)
    {
      result = 4294960545;
LABEL_6:
      *(a1 + 52) = result;
      return result;
    }

    v9 = 4096;
    if (a2 >> 17)
    {
      v10 = (a2 + 0x1FFFF) & 0xFFFFFFFFFFFE0000;
    }

    else
    {
      v10 = (a2 + 0x3FFF) & 0x3C000;
    }

    if (a2 >= 0x1000)
    {
      v9 = v10;
    }

    if (a2 >= 0x100)
    {
      v11 = v9;
    }

    else
    {
      v11 = 256;
    }

    v12 = malloc_type_malloc(v11, 0x100004077774924uLL);
    if (v12)
    {
      v13 = v12;
      v14 = *(a1 + 32);
      if (v14)
      {
        memcpy(v12, *(a1 + 24), v14);
      }

      if (*(a1 + 48))
      {
        v15 = *(a1 + 24);
        if (v15)
        {
          free(v15);
        }
      }

      *(a1 + 40) = v11;
      *(a1 + 24) = v13;
      *(a1 + 48) = 1;
      goto LABEL_24;
    }

    result = 4294960568;
    if (!*(a1 + 52))
    {
      goto LABEL_6;
    }
  }

  return result;
}

char *sub_23EB71F9C(uint64_t __errnum, char *a2, uint64_t a3)
{
  if (__errnum)
  {
    v6 = &off_278C66EC8;
    while (1)
    {
      v7 = *v6;
      if (!*v6)
      {
        break;
      }

      v8 = *(v6 - 2);
      v6 += 2;
      if (v8 == __errnum)
      {
        goto LABEL_16;
      }
    }

    if ((byte_27E3833D8 & 1) == 0)
    {
      v9 = dlopen("/System/Library/Frameworks/CoreServices.framework/CoreServices", 5);
      if (v9)
      {
        off_27E3833E0 = dlsym(v9, "GetMacOSStatusErrorString");
      }

      byte_27E3833D8 = 1;
    }

    if (!off_27E3833E0 || (v7 = (off_27E3833E0)(__errnum)) == 0 || !*v7)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        v7 = "<< NO ERROR STRING >>";
      }
    }
  }

  else
  {
    v7 = "noErr";
  }

LABEL_16:
  if (!a2 || !a3)
  {
    return v7;
  }

  v10 = a3 - 1;
  v11 = a2;
  if (a3 - 1 >= 1)
  {
    v11 = a2;
    do
    {
      v12 = *v7;
      if (!*v7)
      {
        break;
      }

      ++v7;
      *v11++ = v12;
      --v10;
    }

    while (v10 > 0);
  }

  *v11 = 0;
  return a2;
}

uint64_t sub_23EB720EC(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = 0;
  v16 = 0;
  v11 = sub_23EB72150;
  v12 = a1;
  v9 = a2 - 1;
  if (!a2)
  {
    v9 = 0;
  }

  v13 = 0;
  v14 = v9;
  result = sub_23EB721D8(&v11, a3, a4, a4, a5, a6, a7, a8);
  if (a2)
  {
    *(v12 + v13) = 0;
  }

  return result;
}

size_t sub_23EB72150(_BYTE *__src, size_t __n, void *a3)
{
  v4 = __n;
  v5 = a3[2];
  v6 = a3[3] - v5;
  if (v6 >= __n)
  {
    if (!__n)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v6)
  {
    while ((__src[v6] & 0xC0) == 0x80)
    {
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v4 = v6;
LABEL_9:
    memcpy((a3[1] + v5), __src, v4);
    v5 = a3[2];
    goto LABEL_10;
  }

LABEL_5:
  v4 = 0;
LABEL_10:
  a3[2] = v5 + v4;
  return v4;
}

uint64_t sub_23EB721D8(uint64_t (**a1)(char *), const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v10 = 0;
  v290 = *MEMORY[0x277D85DE8];
  v281 = a3;
  v279 = 0u;
  v280 = 0u;
  v275 = *MEMORY[0x277CBED28];
  while (2)
  {
    v11 = 0;
    for (i = 0; ; ++i)
    {
      v13 = a2[i];
      if (!a2[i] || v13 == 37)
      {
        break;
      }

      v11 += 0x100000000;
    }

    if (i)
    {
      v14 = v11 >> 32;
      v15 = (*v9)(a2, v11 >> 32, v9);
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      v10 += v14;
    }

    if (!v13)
    {
      return v10;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v279 = 0u;
    v280 = 0u;
    v20 = &a2[i];
    while (2)
    {
      while (2)
      {
        for (j = v20 + 2; ; ++j)
        {
          LODWORD(v22) = *(j - 1);
          if (v22 <= 0x2A)
          {
            break;
          }

          switch(v22)
          {
            case '+':
              v19 |= 2u;
              break;
            case '-':
              v19 |= 1u;
              break;
            case '0':
              v19 |= 4u;
              break;
            default:
              goto LABEL_31;
          }

          LOBYTE(v279) = v19;
        }

        if (*(j - 1) <= 0x26u)
        {
          if (v22 == 32)
          {
            v16 = 32;
            BYTE4(v279) = 32;
            v20 = j - 1;
            continue;
          }

          if (v22 == 35)
          {
            BYTE3(v279) = ++v17;
            v20 = j - 1;
            continue;
          }

LABEL_31:
          LODWORD(v22) = v22;
          --j;
          if ((v22 - 48) > 9)
          {
            v24 = 0;
          }

          else
          {
            v24 = 0;
            do
            {
              v24 = v22 + 10 * v24 - 48;
              DWORD2(v279) = v24;
              v25 = *++j;
              LODWORD(v22) = v25;
            }

            while ((v25 - 48) < 0xA);
          }

          goto LABEL_36;
        }

        break;
      }

      if (v22 == 39)
      {
        BYTE8(v280) = ++v18;
        v20 = j - 1;
        continue;
      }

      break;
    }

    if (v22 != 42)
    {
      goto LABEL_31;
    }

    v23 = v281;
    v281 += 2;
    v24 = *v23;
    if ((*v23 & 0x80000000) != 0)
    {
      v24 = -v24;
      LOBYTE(v19) = v19 | 1;
      LOBYTE(v279) = v19;
    }

    DWORD2(v279) = v24;
    LODWORD(v22) = *j;
LABEL_36:
    if (v22 == 46)
    {
      v26 = j + 1;
      LODWORD(v22) = j[1];
      if (v22 == 42)
      {
        v22 = v281;
        v281 += 2;
        v27 = *v22;
        *&v280 = v27;
        LODWORD(v22) = j[2];
        v26 = j + 2;
      }

      else if ((v22 - 48) > 9)
      {
        v27 = 0;
      }

      else
      {
        v27 = 0;
        do
        {
          v27 = (v22 - 48) + 10 * v27;
          *&v280 = v27;
          v28 = *++v26;
          LODWORD(v22) = v28;
        }

        while ((v28 - 48) < 0xA);
      }

      LOBYTE(v19) = v19 | 8;
      LOBYTE(v279) = v19;
      j = v26;
      if ((v19 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v27 = 0;
      if ((v19 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    LOBYTE(v19) = v19 & 0xFB;
    LOBYTE(v279) = v19;
LABEL_48:
    v29 = 0;
    v30 = 0;
    for (k = j + 1; ; ++k)
    {
      HIDWORD(v33) = v22 - 104;
      LODWORD(v33) = v22 - 104;
      v32 = v33 >> 1;
      if (v32 > 1)
      {
        break;
      }

      if (v32)
      {
        if (v32 != 1)
        {
          goto LABEL_65;
        }

LABEL_57:
        if (!(v29 | v30))
        {
          v29 = 0;
          v30 = 1;
          BYTE2(v279) = 1;
          LODWORD(v22) = *k;
          goto LABEL_59;
        }

        return 0xFFFFFFFFLL;
      }

      BYTE1(v279) = ++v29;
LABEL_54:
      v34 = *k;
      LODWORD(v22) = v34;
    }

    if (v32 == 2)
    {
      BYTE2(v279) = ++v30;
      goto LABEL_54;
    }

    if (v32 == 6 || v32 == 9)
    {
      goto LABEL_57;
    }

LABEL_65:
    v40 = 0xFFFFFFFFLL;
    if (v29 > 2 || v30 > 2)
    {
      return v40;
    }

    --k;
    if (v29 && v30)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_59:
    if (v22 <= 71)
    {
      if (v22 == 37)
      {
        __str = 37;
LABEL_262:
        LODWORD(v40) = 1;
        goto LABEL_413;
      }

      if (v22 != 64)
      {
        if (v22 == 67)
        {
          v41 = v281;
          v281 += 2;
          v42 = *v41;
          if (v18)
          {
            __str = 39;
            v43 = 1;
          }

          else
          {
            v43 = 0;
          }

          v142 = HIBYTE(v42);
          p_str = &__str;
          v143 = &v284[v43 - 1];
          if (v42 >> 24 < 32 || v142 == 127)
          {
            LOBYTE(v142) = 94;
          }

          *v143 = v142;
          v145 = BYTE2(v42);
          if (BYTE2(v42) - 127 < 0xFFFFFFA1)
          {
            v145 = 94;
          }

          v143[1] = v145;
          v146 = BYTE1(v42);
          if (BYTE1(v42) - 127 < 0xFFFFFFA1)
          {
            v146 = 94;
          }

          v143[2] = v146;
          if ((v42 - 32) >= 0x5F)
          {
            LOBYTE(v42) = 94;
          }

          v143[3] = v42;
          if (v18)
          {
            LODWORD(v40) = v43 + 5;
            v284[(v43 | 4) - 1] = 39;
          }

          else
          {
            LODWORD(v40) = v43 | 4;
          }

          goto LABEL_414;
        }

LABEL_162:
        p_str = &__str;
        v64 = sub_23EB720C0(&__str, 300, "<<UNKNOWN FORMAT CONVERSION CODE %%%c>>");
        goto LABEL_346;
      }

      v96 = v281;
      v281 += 2;
      v97 = *v96;
      if (v97)
      {
        v98 = v97;
      }

      else
      {
        v98 = @"<<NULL>>";
      }

      if (v18)
      {
        if ((v19 & 8) != 0)
        {
          if (v27 < 2)
          {
            *&v280 = 0;
            BYTE8(v280) = 0;
            goto LABEL_421;
          }

          *&v280 = v27 - 2;
        }

        if (v18 == 2)
        {
          v99 = 8738;
        }

        else
        {
          if (v18 != 1)
          {
            goto LABEL_421;
          }

          v99 = 10023;
        }

        *(&v280 + 9) = v99;
      }

LABEL_421:
      v172 = CFGetTypeID(v98);
      if (v172 == CFBooleanGetTypeID())
      {
        if (v275 == v98)
        {
          v173 = "true";
        }

        else
        {
          v173 = "false";
        }

        if (v275 == v98)
        {
          v174 = 4;
        }

        else
        {
          v174 = 5;
        }
      }

      else
      {
        if (v172 != CFNumberGetTypeID())
        {
          if (v172 == CFStringGetTypeID())
          {
            v175 = v10;
            Length = CFStringGetLength(v98);
            MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
            if (MaximumSizeForEncoding)
            {
              v178 = MaximumSizeForEncoding;
              *valuePtr = 0;
              v179 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
              if (v179)
              {
                v180 = v179;
                *valuePtr = 0;
                v291.location = 0;
                v291.length = Length;
                CFStringGetBytes(v98, v291, 0x8000100u, 0x5Eu, 0, v179, v178, valuePtr);
                v181 = *valuePtr;
                if ((v279 & 8) != 0)
                {
                  v10 = v175;
                  if (*valuePtr > v280)
                  {
                    v181 = v280;
                    *valuePtr = v280;
                    if (v280 >= 1)
                    {
                      while ((v180[v181] & 0xC0) == 0x80)
                      {
                        *valuePtr = v181 - 1;
                        v163 = v181-- < 2;
                        if (v163)
                        {
                          v181 = 0;
                          break;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v10 = v175;
                }

                v40 = sub_23EB75A1C(v9, &v279, v180, v181);
                free(v180);
                goto LABEL_432;
              }

              v40 = 4294960568;
            }

            else
            {
              v40 = sub_23EB75A1C(v9, &v279, "", 0);
            }

            v10 = v175;
          }

          else
          {
            v288 = 0;
            v289 = 0;
            *valuePtr = v9;
            v286 = &v279;
            v287 = DWORD2(v279);
            v40 = sub_23EB75B94(valuePtr, v98, 1, 0);
            if ((v40 & 0x80000000) == 0 && (v172 == CFArrayGetTypeID() || v172 == CFDictionaryGetTypeID()))
            {
              v190 = (*v9)("\n", 1, v9);
              if (v190 <= 0)
              {
                v191 = 0;
              }

              else
              {
                v191 = v40;
              }

              v40 = (v191 + v190);
            }
          }

LABEL_432:
          if ((v40 & 0x80000000) != 0)
          {
            return v40;
          }

          v10 += v40 & ~(v40 >> 31);
          goto LABEL_417;
        }

        *valuePtr = 0;
        if (!CFNumberGetValue(v98, kCFNumberSInt64Type, valuePtr))
        {
          v40 = 4294960559;
          goto LABEL_432;
        }

        v174 = sub_23EB720C0(&__str, 300, "%lld", *valuePtr);
        v173 = &__str;
      }

      v40 = sub_23EB75A1C(v9, &v279, v173, v174);
      goto LABEL_432;
    }

    v35 = 0;
    v36 = 10;
    v37 = "0123456789ABCDEF";
    switch(v22)
    {
      case 'H':
        v272 = v10;
        v71 = v281;
        v281 += 2;
        v72 = *v71;
        v281 = v71 + 4;
        v73 = v71[2];
        v74 = v73;
        v281 = v71 + 6;
        v75 = v71[4];
        if (!v72 && v73)
        {
          v270 = v71[4];
          v9 = a1;
          v40 = sub_23EB759F0(a1, "<<NULL %zu/%zu>>", a3, a4, a5, a6, a7, a8, v73);
          if ((v40 & 0x80000000) == 0)
          {
            v10 = v272;
            goto LABEL_416;
          }

          return v40;
        }

        if (v73 == -1)
        {
          v74 = strlen(v72);
        }

        if (v27 > 1)
        {
          if (v27 == 2)
          {
            if (!v74)
            {
              v194 = a1;
              v195 = "(0 bytes)\n";
              goto LABEL_618;
            }

            if (v74 > 0x10)
            {
              v15 = sub_23EB759F0(a1, "\n", a3, a4, a5, a6, a7, a8, usedBufLen);
              if ((v15 & 0x80000000) != 0)
              {
                return v15;
              }

              v113 = DWORD2(v279);
              v112 = a1;
            }

            else
            {
              v112 = a1;
              v113 = 0;
            }

LABEL_631:
            v244 = sub_23EB755D8(v112, v113, v72, v74, v75, a6, a7, a8);
            goto LABEL_632;
          }

          if (v27 != 3)
          {
            goto LABEL_468;
          }

          if (v74 >= v75)
          {
            v147 = v75;
          }

          else
          {
            v147 = v74;
          }

          if (v147 >= 1)
          {
            v148 = 0;
            v40 = 0;
            v149 = &v72[v147];
            v150 = v272;
            do
            {
              if (v148 == 64)
              {
                v151 = (*a1)(valuePtr);
                if ((v151 & 0x80000000) != 0)
                {
                  goto LABEL_628;
                }

                v148 = 0;
                v40 = (v151 + v40);
              }

              v152 = &valuePtr[v148];
              v153 = *v72++;
              *v152 = a0123456789abcd[v153 >> 4];
              v148 += 2;
              v152[1] = a0123456789abcd[v153 & 0xF];
            }

            while (v72 < v149);
            if (v148)
            {
              v154 = (*a1)(valuePtr);
              if (v154 >= 0)
              {
                v155 = v40;
              }

              else
              {
                v155 = 0;
              }

LABEL_484:
              v40 = (v155 + v154);
            }

            goto LABEL_634;
          }
        }

        else
        {
          if (v27)
          {
            if (v27 == 1)
            {
              v112 = a1;
              v113 = v24;
              goto LABEL_631;
            }

LABEL_468:
            v194 = a1;
            v195 = "<< BAD %%H PRECISION >>";
LABEL_618:
            v244 = sub_23EB759F0(v194, v195, a3, a4, a5, a6, a7, a8, usedBufLen);
LABEL_632:
            v40 = v244;
LABEL_633:
            v150 = v272;
LABEL_634:
            if ((v40 & 0x80000000) != 0)
            {
              return v40;
            }

            v10 = v150 + v40;
            v9 = a1;
LABEL_417:
            a2 = k + 1;
            continue;
          }

          if (v74 >= v75)
          {
            v74 = v75;
          }

          if (v74)
          {
            v150 = v272;
            if (v17 == 2)
            {
              LODWORD(v40) = 0;
LABEL_474:
              v151 = (*a1)("|", 1);
LABEL_475:
              if ((v151 & 0x80000000) == 0)
              {
                v196 = v151 + v40;
                while (1)
                {
                  v198 = *v72++;
                  v197 = v198;
                  if ((v198 - 127) < 0xFFFFFFA1)
                  {
                    v197 = 94;
                  }

                  LOBYTE(v278.tv_sec) = v197;
                  v199 = (*a1)(&v278, 1);
                  v40 = v199;
                  if ((v199 & 0x80000000) != 0)
                  {
                    goto LABEL_634;
                  }

                  v196 += v199;
                  if (!--v74)
                  {
                    v154 = (*a1)("|", 1);
                    if (v154 >= 0)
                    {
                      v155 = v196;
                    }

                    else
                    {
                      v155 = 0;
                    }

                    goto LABEL_484;
                  }
                }
              }
            }

            else
            {
              v245 = 0;
              LODWORD(v40) = 0;
              while (1)
              {
                if (v245)
                {
                  valuePtr[0] = 32;
                  v246 = 1;
                }

                else
                {
                  v246 = 0;
                }

                v247 = v72[v245];
                v248 = &valuePtr[v246];
                *v248 = a0123456789abcd[v247 >> 4];
                v248[1] = a0123456789abcd[v247 & 0xF];
                v151 = (*a1)(valuePtr, v246 | 2);
                if ((v151 & 0x80000000) != 0)
                {
                  break;
                }

                v40 = (v151 + v40);
                if (v74 == ++v245)
                {
                  if (SBYTE3(v279) < 1)
                  {
                    goto LABEL_634;
                  }

                  if (v40 >= 1)
                  {
                    v151 = (*a1)(" |", 2);
                    goto LABEL_475;
                  }

                  goto LABEL_474;
                }
              }
            }

LABEL_628:
            v40 = v151;
            goto LABEL_634;
          }
        }

        v40 = 0;
        goto LABEL_633;
      case 'N':
        v278.tv_sec = 0;
        *&v278.tv_usec = 0;
        tv_sec = 0;
        gettimeofday(&v278, 0);
        tv_sec = v278.tv_sec;
        v65 = localtime(&tv_sec);
        strftime(valuePtr, 0x18uLL, "%Y-%m-%d %I:%M:%S", v65);
        strftime(v282, 8uLL, "%p", v65);
        p_str = &__str;
        v64 = sub_23EB720C0(&__str, 300, "%s.%06u %s");
        goto LABEL_346;
      case 'S':
        v76 = v281;
        v281 += 2;
        v77 = *v76;
        v78 = (v19 & 8) == 0;
        if (v77)
        {
          if (v18)
          {
            if ((v19 & 8) == 0)
            {
              v78 = 1;
LABEL_367:
              v160 = *v77;
              if (v160 == 255)
              {
                if (v77[1] == 254)
                {
                  v17 = 2;
                  goto LABEL_373;
                }
              }

              else if (v160 == 254 && v77[1] == 255)
              {
                v17 = 1;
LABEL_373:
                BYTE3(v279) = v17;
                v77 += 2;
                *&v280 = --v27;
                goto LABEL_375;
              }

LABEL_374:
              if (v17 - 1 >= 2)
              {
                if (v17)
                {
                  LODWORD(v40) = sub_23EB720C0(&__str, 300, "<< ERROR: %%S with too many #'s (%d) >>", v17);
                  v18 = BYTE8(v280);
LABEL_408:
                  if (v18 == 1)
                  {
                    v171 = 10023;
                  }

                  else
                  {
                    if (v18 != 2)
                    {
                      goto LABEL_413;
                    }

                    v171 = 8738;
                  }

                  *(&v280 + 9) = v171;
LABEL_413:
                  p_str = &__str;
                  goto LABEL_414;
                }

                v166 = v27 > 0 || v78;
                if (v166 == 1)
                {
                  v40 = 0;
                  v167 = 300;
                  do
                  {
                    v168 = *&v77[2 * v40];
                    if (*&v77[2 * v40])
                    {
                      v169 = v167 < 1;
                    }

                    else
                    {
                      v169 = 1;
                    }

                    if (v169)
                    {
                      break;
                    }

                    if ((v168 - 32) >= 0x5F)
                    {
                      LOBYTE(v168) = 94;
                    }

                    v284[v40++ - 1] = v168;
                    v170 = v40 < v27 || v78;
                    --v167;
                  }

                  while (v170);
                  goto LABEL_408;
                }

LABEL_406:
                LODWORD(v40) = 0;
                goto LABEL_408;
              }

LABEL_375:
              if (v78 || v27 >= 1)
              {
                v40 = 0;
                v161 = 300;
                v162 = 2 - v17;
                do
                {
                  if (*&v77[2 * v40])
                  {
                    v163 = v161 < 1;
                  }

                  else
                  {
                    v163 = 1;
                  }

                  if (v163)
                  {
                    break;
                  }

                  v164 = v77[v162];
                  if ((v164 - 32) >= 0x5F)
                  {
                    LOBYTE(v164) = 94;
                  }

                  v284[v40++ - 1] = v164;
                  v165 = v40 < v27 || v78;
                  --v161;
                  v162 += 2;
                }

                while (v165);
                goto LABEL_408;
              }

              goto LABEL_406;
            }

            v82 = v27 >= 2;
            v27 -= 2;
            if (!v82)
            {
              goto LABEL_364;
            }

            v78 = 0;
            *&v280 = v27;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          LODWORD(v40) = 8;
          if ((v19 & 8) == 0 || v27)
          {
            goto LABEL_164;
          }

          if (v18)
          {
LABEL_364:
            v78 = 0;
            v18 = 0;
            v27 = 0;
            *&v280 = 0;
            BYTE8(v280) = 0;
            goto LABEL_365;
          }

          v78 = 0;
          v18 = 0;
          v27 = 0;
        }

LABEL_365:
        if (!v78 && !v27)
        {
          goto LABEL_374;
        }

        goto LABEL_367;
      case 'U':
        v66 = v281;
        v281 += 2;
        v67 = *v66;
        if (!v67)
        {
          goto LABEL_163;
        }

        if (v17)
        {
          v68 = *v67;
          v69 = v67[1];
        }

        else
        {
          v68 = v67[3];
          v69 = v67[2];
        }

        p_str = &__str;
        v64 = sub_23EB720C0(&__str, 300, "%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", v68, v69);
        goto LABEL_346;
      case 'V':
        v83 = v281;
        v281 += 2;
        v84 = *v83;
        v281 = v83 + 4;
        LODWORD(v40) = 8;
        if (!v84)
        {
          goto LABEL_164;
        }

        v85 = *(v83 + 1);
        if (!v85)
        {
          goto LABEL_164;
        }

        v86 = sub_23EB721D8(v9, v84, *v85);
        goto LABEL_415;
      case 'X':
        goto LABEL_129;
      case 'a':
        v89 = v281;
        v281 += 2;
        v90 = *v89;
        if (!*v89)
        {
LABEL_163:
          LODWORD(v40) = 8;
          goto LABEL_164;
        }

        if (v17 != 2)
        {
          if (v17 == 1)
          {
            if (v27 == 4)
            {
              goto LABEL_615;
            }

            goto LABEL_614;
          }

          v159 = __ROR8__(v27 - 4, 1);
          if (v159 <= 1)
          {
            if (!v159)
            {
LABEL_615:
              p_str = &__str;
              v64 = sub_23EB720C0(&__str, 300, "%u.%u.%u.%u");
              goto LABEL_346;
            }

            if (v159 != 1)
            {
              goto LABEL_614;
            }

            p_str = &__str;
            usedBufLenb = *v90;
            goto LABEL_613;
          }

          if (v159 == 2)
          {
            p_str = &__str;
            v64 = sub_23EB720C0(&__str, 300, "%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X", *v90, v90[1]);
            goto LABEL_346;
          }

          if (v159 != 6)
          {
LABEL_614:
            p_str = &__str;
            v64 = sub_23EB720C0(&__str, 300, "%s");
            goto LABEL_346;
          }

          p_str = &__str;
          v192 = 0;
          v193 = 0;
          goto LABEL_466;
        }

        v158 = v90[1];
        if (v158 > 0x11)
        {
          if (v158 == 18)
          {
            v243 = &v90[v90[5] + 8];
            if (v90[6] != 6)
            {
              p_str = &__str;
              v64 = sub_23EB720C0(&__str, 300, "<< AF_LINK %H >>", v243, v90[6]);
              goto LABEL_346;
            }

            p_str = &__str;
            usedBufLenb = *v243;
LABEL_613:
            v64 = sub_23EB720C0(&__str, 300, "%02X:%02X:%02X:%02X:%02X:%02X", usedBufLenb);
            goto LABEL_346;
          }

          if (v158 == 30)
          {
            v192 = *(v90 + 6);
            v193 = bswap32(*(v90 + 1)) >> 16;
            p_str = &__str;
            v90 += 8;
LABEL_466:
            sub_23EB766C8(v90, v192, v193, &__str);
            goto LABEL_467;
          }
        }

        else
        {
          if (!v90[1])
          {
            p_str = &__str;
            v64 = sub_23EB720C0(&__str, 300, "<< AF_UNSPEC >>", usedBufLen, v270);
            goto LABEL_346;
          }

          if (v158 == 2)
          {
            p_str = &__str;
            sub_23EB765A4(bswap32(*(v90 + 1)), bswap32(*(v90 + 1)) >> 16, &__str);
LABEL_467:
            LODWORD(v40) = strlen(&__str);
            goto LABEL_414;
          }
        }

        p_str = &__str;
        v64 = sub_23EB720C0(&__str, 300, "<< ERROR: %%##a used with unknown family: %d >>");
        goto LABEL_346;
      case 'b':
        v36 = 2;
        v35 = 1;
        goto LABEL_130;
      case 'c':
        v56 = v281;
        v281 += 2;
        v57 = *v56;
        if (!v18)
        {
          __str = v57;
          goto LABEL_262;
        }

        __str = 39;
        if (v57 - 32 >= 0x5F)
        {
          v58 = 94;
        }

        else
        {
          v58 = v57;
        }

        v284[0] = v58;
        v284[1] = 39;
        LODWORD(v40) = 3;
        goto LABEL_413;
      case 'd':
      case 'i':
        if (v30 == 1 || v30 == 2)
        {
          v38 = v281;
          v281 += 2;
          v39 = *v38;
        }

        else
        {
          v100 = v281;
          v281 += 2;
          v39 = *v100;
        }

        if (v29 == 2)
        {
          v39 = v39;
          if ((v39 & 0x8000000000000000) == 0)
          {
LABEL_170:
            v36 = 10;
            if ((v19 & 2) == 0)
            {
              goto LABEL_175;
            }

            v95 = 43;
            v16 = 43;
LABEL_174:
            BYTE4(v279) = v95;
LABEL_175:
            v94 = v16 != 0;
            v37 = "0123456789ABCDEF";
            if ((v19 & 8) == 0)
            {
LABEL_176:
              if ((v19 & 4) != 0)
              {
                v101 = 2 * (v36 != 10);
                if (v36 == 8)
                {
                  v101 = 1;
                }

                if (!v17)
                {
                  v101 = 0;
                }

                v102 = v101 + v94;
                v82 = v24 >= v102;
                v103 = v24 - v102;
                if (v82)
                {
                  v27 = v103;
                }

                else
                {
                  v27 = 0;
                }

                *&v280 = v27;
              }

              if (!v27)
              {
                v27 = 1;
                goto LABEL_189;
              }
            }

LABEL_186:
            if (v27 < 0x12C)
            {
              goto LABEL_190;
            }

            v27 = 299;
LABEL_189:
            *&v280 = v27;
LABEL_190:
            if (v18)
            {
              v104 = 0;
              v105 = -1;
              v106 = 1;
              for (m = valuePtr; ; m = p_str)
              {
                if (HIDWORD(v39))
                {
                  v108 = v39 / v36;
                  *(m - 1) = v37[v39 % v36];
                  p_str = m - 1;
                  LODWORD(v40) = v104 + 1;
                }

                else
                {
                  v108 = v39 / v36;
                  *(m - 1) = v37[v39 % v36];
                  p_str = m - 1;
                  LODWORD(v40) = v104 + 1;
                  if (v36 > v39)
                  {
                    LODWORD(v27) = v280;
                    goto LABEL_211;
                  }
                }

                v39 = v108;
                if (BYTE8(v280) && !(v105 + 3 * (v106 / 3)))
                {
                  *(m - 2) = 44;
                  LODWORD(v40) = v104 + 2;
                  p_str = m - 2;
                }

                --v105;
                ++v106;
                v104 = v40;
              }
            }

            LODWORD(v40) = 0;
            if (v39)
            {
              p_str = valuePtr;
              do
              {
                if (HIDWORD(v39))
                {
                  v109 = v39 % v36;
                }

                else
                {
                  v109 = v39 % v36;
                }

                if (HIDWORD(v39))
                {
                  v39 /= v36;
                }

                else
                {
                  v39 = v39 / v36;
                }

                *--p_str = v37[v109];
                LODWORD(v40) = v40 + 1;
              }

              while (v39);
            }

            else
            {
              p_str = valuePtr;
            }

LABEL_211:
            if (v40 < v27)
            {
              do
              {
                *--p_str = 48;
                LODWORD(v40) = v40 + 1;
              }

              while (v40 < v280);
            }

            if (!BYTE3(v279))
            {
              goto LABEL_219;
            }

            if (v36 == 8)
            {
              v110 = 1;
              v111 = -1;
            }

            else
            {
              if (v36 == 10)
              {
                goto LABEL_219;
              }

              *(p_str - 1) = v22;
              v110 = 2;
              v111 = -2;
            }

            p_str += v111;
            *p_str = 48;
            LODWORD(v40) = v110 + v40;
LABEL_219:
            if (BYTE4(v279))
            {
              *--p_str = BYTE4(v279);
              LODWORD(v40) = v40 + 1;
            }

            goto LABEL_414;
          }
        }

        else
        {
          if (v29 == 1)
          {
            v39 = v39;
          }

          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_170;
          }
        }

        v39 = -v39;
        v36 = 10;
        v16 = 43;
        v95 = 45;
        goto LABEL_174;
      case 'f':
        v281 += 2;
        if ((v19 & 8) != 0)
        {
          v70 = snprintf(&__str, 0x12CuLL, "%*.*f");
        }

        else
        {
          v70 = snprintf(&__str, 0x12CuLL, "%*f");
        }

        v40 = v70;
        if ((v70 & 0x80000000) == 0)
        {
          goto LABEL_413;
        }

        return v40;
      case 'm':
        v53 = v281;
        v281 += 2;
        v54 = *v53;
        if (v17)
        {
          v55 = sub_23EB720C0(&__str, 300, "%lld/0x%llX ", v54, v54);
        }

        else
        {
          v55 = 0;
        }

        v118 = &__str;
        sub_23EB71F9C(v54, &v284[v55 - 1], 300 - v55);
        LODWORD(v40) = -1;
        do
        {
          v119 = *v118++;
          LODWORD(v40) = v40 + 1;
        }

        while (v119);
        goto LABEL_413;
      case 'n':
        v87 = v281;
        v281 += 2;
        v88 = *v87;
        if (v29 == 2)
        {
          *v88 = v10;
        }

        else if (v29 == 1)
        {
          *v88 = v10;
        }

        else if (v30 == 2 || v30 == 1)
        {
          *v88 = v10;
        }

        else
        {
          *v88 = v10;
        }

        goto LABEL_417;
      case 'o':
        v35 = 0;
        v36 = 8;
        goto LABEL_130;
      case 'p':
        v95 = 0;
        v16 = 0;
        v22 = v281;
        v281 += 2;
        v39 = *v22;
        v27 = 16;
        *&v280 = 16;
        LOBYTE(v19) = v19 | 8;
        LOBYTE(v279) = v19;
        v17 = 1;
        BYTE3(v279) = 1;
        LOBYTE(v22) = 120;
        v36 = 16;
        goto LABEL_174;
      case 's':
        v79 = v281;
        v281 += 2;
        p_str = *v79;
        if (*v79)
        {
          v80 = v19 & 8;
          v81 = v80 == 0;
          if (v18 && v80)
          {
            v82 = v27 >= 2;
            v27 -= 2;
            if (v82)
            {
              v81 = 0;
              *&v280 = v27;
              goto LABEL_506;
            }

            goto LABEL_306;
          }
        }

        else
        {
          LODWORD(v40) = 8;
          if ((v19 & 8) == 0 || v27)
          {
LABEL_164:
            p_str = "<<NULL>>";
            goto LABEL_414;
          }

          if (v18)
          {
LABEL_306:
            v81 = 0;
            LODWORD(v27) = 0;
            *&v280 = 0;
            BYTE8(v280) = 0;
            goto LABEL_506;
          }

          v81 = 0;
          LODWORD(v27) = 0;
        }

LABEL_506:
        if (v17 <= 1u)
        {
          if (!v17)
          {
            if (v81)
            {
              LODWORD(v40) = -1;
              v214 = p_str;
              do
              {
                v215 = *v214++;
                LODWORD(v40) = v40 + 1;
              }

              while (v215);
            }

            else
            {
              if (v27 < 1)
              {
                goto LABEL_647;
              }

              v221 = 0;
              while (p_str[v221])
              {
                if ((v27 & 0x7FFFFFFF) == ++v221)
                {
                  goto LABEL_641;
                }
              }

              LODWORD(v27) = v221;
LABEL_641:
              if (v27)
              {
                v249 = 0;
                v250 = v27;
                while (1)
                {
                  v251 = p_str[v250 - 1];
                  if ((p_str[v250 - 1] & 0x80000000) == 0)
                  {
                    break;
                  }

                  ++v249;
                  v252 = v250 - 1;
                  if (v250 >= 2)
                  {
                    --v250;
                    if ((v251 & 0xC0) == 0x80)
                    {
                      continue;
                    }
                  }

                  goto LABEL_665;
                }

                v252 = v250;
LABEL_665:
                v255 = v249 - 2;
                if ((((255 << (8 - v249)) | (1 << (7 - v249))) & v251) != ((255 << (8 - v249)) & 0xFE))
                {
                  v249 = 0;
                }

                v256 = v249 + v252;
                if (v255 <= 4)
                {
                  LODWORD(v40) = v256;
                }

                else
                {
                  LODWORD(v40) = v252;
                }
              }

              else
              {
LABEL_647:
                LODWORD(v40) = 0;
              }
            }

            goto LABEL_670;
          }

          if (v17 == 1)
          {
            v210 = *p_str++;
            LODWORD(v40) = v210;
            goto LABEL_670;
          }

          goto LABEL_519;
        }

        if (v17 == 2)
        {
          v216 = *p_str;
          if (*p_str)
          {
            v217 = 0;
            v40 = &__str;
            goto LABEL_548;
          }

          __str = 46;
          v216 = *p_str;
          v40 = v284;
          if (*p_str)
          {
            v40 = v284;
            v217 = 1;
            while (1)
            {
LABEL_548:
              if (v216 >= 0x40)
              {
                v231 = sub_23EB720C0(v40, 300 - v217, "<<INVALID DNS LABEL LENGTH %u>>");
                goto LABEL_572;
              }

              v222 = 300 - v217;
              if (v217 + v216 >= 254)
              {
                break;
              }

              v217 += sub_23EB720C0(v40, v222, "%#s.", p_str);
              v223 = &p_str[*p_str];
              v224 = v223[1];
              p_str = v223 + 1;
              v216 = v224;
              v40 = &v284[v217 - 1];
              if (!v224)
              {
                goto LABEL_573;
              }
            }

            v231 = sub_23EB720C0(v40, v222, "<<DNS NAME TOO LONG>>");
LABEL_572:
            LODWORD(v40) = v40 + v231;
          }

LABEL_573:
          p_str = &__str;
          LODWORD(v40) = v40 - &__str;
          goto LABEL_670;
        }

        if (v17 != 3)
        {
LABEL_519:
          p_str = &__str;
          LODWORD(v40) = sub_23EB720C0(&__str, 300, "<< ERROR: %%s with too many #'s (%d) >>", v17);
          goto LABEL_670;
        }

        v211 = p_str + 1;
        v212 = p_str;
        while (2)
        {
          v213 = *(v211 - 1);
          if (v213 == 32)
          {
            v212 = v211;
LABEL_518:
            ++v211;
            continue;
          }

          break;
        }

        if (*(v211 - 1) && v213 != 58)
        {
          goto LABEL_518;
        }

        if (v213 == 58)
        {
          v213 = *v211;
        }

        else
        {
          --v211;
        }

        v218 = p_str;
        if (v213 == 58)
        {
          p_str = v211 + 1;
          v218 = v212;
          goto LABEL_531;
        }

        while (2)
        {
          v220 = *p_str;
          if (v220 == 32)
          {
            v218 = p_str + 1;
LABEL_540:
            ++p_str;
            continue;
          }

          break;
        }

        if (*p_str && v220 != 40)
        {
          goto LABEL_540;
        }

LABEL_531:
        while (1)
        {
          v219 = *p_str;
          if (!*p_str || v219 == 32)
          {
            break;
          }

          if (v219 == 40)
          {
            if (p_str[1] == 41)
            {
              v228 = p_str[2];
              v229 = 3;
              if (v228 != 39)
              {
                v229 = 0;
              }

              v230 = &p_str[v229];
              if (v228 == 40)
              {
                p_str += 2;
              }

              else
              {
                p_str = v230;
              }
            }

            break;
          }

          ++p_str;
        }

        if (v218 < p_str && *v218 == 42)
        {
          ++v218;
        }

        LODWORD(v40) = p_str - v218;
        p_str = v218;
LABEL_670:
        if ((v279 & 8) != 0)
        {
          v257 = v280;
          if (v40 > v280)
          {
            if (v280 >= 1)
            {
              while ((p_str[v257] & 0xC0) == 0x80)
              {
                v258 = __OFSUB__(v257--, 1);
                if ((v257 < 0) ^ v258 | (v257 == 0))
                {
                  LODWORD(v40) = 0;
                  goto LABEL_678;
                }
              }
            }

            LODWORD(v40) = v257;
          }
        }

LABEL_678:
        if (BYTE8(v280) == 2)
        {
          v259 = 8738;
LABEL_682:
          *(&v280 + 9) = v259;
        }

        else if (BYTE8(v280) == 1)
        {
          v259 = 10023;
          goto LABEL_682;
        }

LABEL_414:
        v86 = sub_23EB75A1C(v9, &v279, p_str, v40);
LABEL_415:
        v40 = v86;
        if ((v86 & 0x80000000) == 0)
        {
LABEL_416:
          v10 += v40;
          goto LABEL_417;
        }

        return v40;
      case 'u':
        goto LABEL_130;
      case 'v':
        v44 = v281;
        v281 += 2;
        v45 = *v44;
        v46 = HIWORD(*v44) & 0xF;
        v47 = sub_23EB720C0(&__str, 300, "%u", HIBYTE(*v44));
        v48 = &v284[v47 - 1];
        v49 = sub_23EB720C0(v48, 300 - v47, ".%u", (v45 >> 20) & 0xF);
        v40 = &v48[v49];
        if (v46)
        {
          v40 += sub_23EB720C0(&v48[v49], &valuePtr[-v40], ".%u", HIWORD(v45) & 0xF);
        }

        HIDWORD(v51) = BYTE1(v45) - 32;
        LODWORD(v51) = HIDWORD(v51);
        v50 = v51 >> 5;
        if (v50 > 1)
        {
          if (v50 == 2)
          {
            v52 = sub_23EB720C0(v40, &valuePtr[-v40], "b%u");
          }

          else
          {
            if (v50 != 3)
            {
LABEL_356:
              v52 = sub_23EB720C0(v40, &valuePtr[-v40], "<< ERROR: invalid NumVersion stage: 0x%02X >>");
              goto LABEL_359;
            }

            if (!v45)
            {
              goto LABEL_360;
            }

            v52 = sub_23EB720C0(v40, &valuePtr[-v40], "f%u");
          }
        }

        else
        {
          if (v50)
          {
            if (v50 == 1)
            {
              v52 = sub_23EB720C0(v40, &valuePtr[-v40], "a%u");
              goto LABEL_359;
            }

            goto LABEL_356;
          }

          v52 = sub_23EB720C0(v40, &valuePtr[-v40], "d%u");
        }

LABEL_359:
        LODWORD(v40) = v40 + v52;
LABEL_360:
        p_str = &__str;
        LODWORD(v40) = v40 - &__str;
        goto LABEL_414;
      case 'x':
        v37 = "0123456789abcdef";
LABEL_129:
        v35 = 0;
        v36 = 16;
LABEL_130:
        if (v30 == 2 || v30 == 1)
        {
          v91 = v281;
          v281 += 2;
          v39 = *v91;
        }

        else
        {
          v92 = v281;
          v281 += 2;
          v39 = *v92;
        }

        if (v29 == 2)
        {
          v39 = v39;
        }

        else if (v29 == 1)
        {
          v39 = v39;
        }

        BYTE4(v279) = 0;
        if (v17 > 1)
        {
          v93 = v35;
        }

        else
        {
          v93 = 0;
        }

        if (v93 != 1)
        {
          v94 = 0;
          if ((v19 & 8) == 0)
          {
            goto LABEL_176;
          }

          goto LABEL_186;
        }

        if ((v19 & 8) != 0)
        {
          if (v27 >= 0x41)
          {
            p_str = &__str;
            v64 = sub_23EB720C0(&__str, 300, "ERROR: << precision must be 0-%d >>");
            goto LABEL_346;
          }

          if (v27)
          {
            goto LABEL_241;
          }

          v27 = 1;
        }

        else if (v29 == 1)
        {
          v27 = 16;
        }

        else if (v29 == 2)
        {
          v27 = 8;
        }

        else if (((v30 - 1) & 0xFE) != 0)
        {
          v27 = 32;
        }

        else
        {
          v27 = 64;
        }

        *&v280 = v27;
LABEL_241:
        v114 = (v27 - 1);
        if (v17 == 2)
        {
          LODWORD(v40) = 0;
          do
          {
            if ((v39 >> v114))
            {
              v115 = "";
              if (v40 > 0)
              {
                v115 = " ";
              }

              LODWORD(v40) = sub_23EB720C0(&v284[v40 - 1], 300 - v40, "%s%d", v115, v114) + v40;
            }

            v163 = v114-- <= 0;
          }

          while (!v163);
        }

        else
        {
          v116 = 0;
          LODWORD(v40) = 0;
          do
          {
            if ((v39 >> v114))
            {
              v117 = "";
              if (v40 > 0)
              {
                v117 = " ";
              }

              LODWORD(v40) = sub_23EB720C0(&v284[v40 - 1], 300 - v40, "%s%d", v117, v116) + v40;
            }

            ++v116;
            LOBYTE(v114) = v114 - 1;
          }

          while (v27 != v116);
        }

        goto LABEL_413;
      case '{':
        v59 = 0;
        v60 = (k + 1);
        v61 = 123;
        ++k;
        do
        {
          if (v61 == 125)
          {
            break;
          }

          v62 = *++k;
          v61 = v62;
          ++v59;
        }

        while (v62);
        if (sub_23EB74C04(v60, v59, "ie"))
        {
          if (!sub_23EB74C04(v60, v59, "dur"))
          {
            if (BYTE2(v279) == 2)
            {
              v200 = v281;
              v281 += 2;
              v157 = *v200;
            }

            else
            {
              v156 = v281;
              v281 += 2;
              if (BYTE2(v279) == 1)
              {
                v157 = *v156;
              }

              else
              {
                v157 = *v156;
              }
            }

            if (BYTE1(v279) == 1)
            {
              v157 = v157;
            }

            if (BYTE1(v279) == 2)
            {
              v201 = v157;
            }

            else
            {
              v201 = v157;
            }

            if (v201 >> 7 >= 0x2A3)
            {
              v203 = 0;
              v204 = valuePtr;
              v205 = 1;
              v206 = v201 / 0x15180;
              do
              {
                v207 = v205;
                v208 = v203;
                *v204++ = (v206 % 0xA) | 0x30;
                ++v205;
                ++v203;
                v163 = v206 > 9;
                v206 /= 0xAuLL;
              }

              while (v163);
              if (v204 <= valuePtr)
              {
                v209 = &__str;
              }

              else
              {
                v209 = &__str;
                do
                {
                  *v209++ = v284[v207-- + 298];
                  --v208;
                }

                while (v208 != -1);
              }

              *v209 = 100;
              v202 = v209 + 1;
            }

            else
            {
              v202 = &__str;
            }

            v225 = v201 % 0x15180;
            if (v225 >= 0xE10)
            {
              if (v202 == &__str)
              {
                v226 = &__str;
              }

              else
              {
                *v202 = 32;
                v226 = v202 + 1;
              }

              v233 = valuePtr;
              v234 = v225 / 0xE10;
              do
              {
                *v233++ = (v234 % 0xA) | 0x30;
                v163 = v234 > 9;
                v234 /= 0xAu;
              }

              while (v163);
              while (v233 > valuePtr)
              {
                v235 = *--v233;
                *v226++ = v235;
              }

              *v226 = 104;
              v202 = v226 + 1;
            }

            v236 = v225 % 0xE10;
            if (v236 >= 0x3C)
            {
              if (v202 != &__str)
              {
                *v202++ = 32;
              }

              v237 = valuePtr;
              v238 = v236 / 0x3Cu;
              do
              {
                *v237++ = (v238 % 0xA) | 0x30;
                v163 = v238 > 9;
                v238 /= 0xAu;
              }

              while (v163);
              while (v237 > valuePtr)
              {
                v239 = *--v237;
                *v202++ = v239;
              }

              *v202++ = 109;
            }

            v240 = v236 % 0x3Cu;
            if (v236 % 0x3Cu || v202 == &__str)
            {
              if (v202 != &__str)
              {
                *v202++ = 32;
              }

              v241 = valuePtr;
              do
              {
                *v241++ = (v240 % 0xA) | 0x30;
                v163 = v240 > 9;
                v240 /= 0xAu;
              }

              while (v163);
              while (v241 > valuePtr)
              {
                v242 = *--v241;
                *v202++ = v242;
              }

              *v202++ = 115;
            }

            *v202 = 0;
            p_str = &__str;
            LODWORD(v40) = v202 - &__str;
            goto LABEL_414;
          }

          if (!sub_23EB74C04(v60, v59, "txt"))
          {
            v274 = v10;
            v182 = v281;
            v281 += 2;
            v183 = *v182;
            v281 = (v182 + 2);
            v184 = v182[1];
            v185 = (4 * DWORD2(v279));
            v186 = &v183[v184];
            if (v184 >= 6 && *(v183 + 1) == 1095590263 && v183[5] == 61)
            {
              if (&v183[*v183 + 1] != v186)
              {
                v270 = "";
                v40 = sub_23EB759F0(v9, "%*s### bad TXT record length byte (%zu, %zu expected)\n", a3, a4, a5, a6, a7, a8, (4 * DWORD2(v279)));
                goto LABEL_653;
              }

              if (v184 < 2)
              {
                v40 = 0;
                goto LABEL_697;
              }

              LODWORD(v40) = 0;
              v260 = v183 + 1;
LABEL_685:
              v261 = valuePtr;
              v262 = v260;
              while (1)
              {
                v264 = *v260++;
                v263 = v264;
                if (v264 == 92)
                {
                  if (v260 >= v186)
                  {
                    v270 = "";
                    v9 = a1;
                    v253 = sub_23EB759F0(a1, "%*s### bad TXT escape: %.*s\n", a3, a4, a5, a6, a7, a8, v185);
LABEL_649:
                    if (v253 >= 0)
                    {
                      v254 = v40;
                    }

                    else
                    {
                      v254 = 0;
                    }

                    v40 = (v254 + v253);
                    goto LABEL_653;
                  }

                  v260 = v262 + 2;
                  LOBYTE(v263) = v262[1];
                }

                else if (v263 == 44)
                {
                  goto LABEL_692;
                }

                *v261++ = v263;
                v262 = v260;
                if (v260 >= v186)
                {
LABEL_692:
                  v270 = "";
                  v265 = sub_23EB759F0(a1, "%*s%.*s\n", a3, a4, a5, a6, a7, a8, v185);
                  if ((v265 & 0x80000000) == 0)
                  {
                    v40 = (v265 + v40);
                    if (v260 >= v186)
                    {
LABEL_697:
                      v9 = a1;
                      goto LABEL_575;
                    }

                    goto LABEL_685;
                  }

                  v40 = v265;
                  v9 = a1;
LABEL_653:
                  v10 = v274;
LABEL_654:
                  if ((v40 & 0x80000000) == 0)
                  {
                    goto LABEL_416;
                  }

                  return v40;
                }
              }
            }

            if (v184 >= 1)
            {
              LODWORD(v40) = 0;
              v188 = v183;
              while (1)
              {
                v189 = &v188[*v188 + 1];
                if (v189 > v186)
                {
                  break;
                }

                v270 = "";
                v15 = sub_23EB759F0(v9, "%*s%.*s\n", a3, a4, a5, a6, a7, a8, v185);
                if ((v15 & 0x80000000) != 0)
                {
                  return v15;
                }

                v40 = (v15 + v40);
                v188 = v189;
                if (v189 >= v186)
                {
                  goto LABEL_575;
                }
              }

              v270 = "";
              v253 = sub_23EB759F0(v9, "%*s### TXT record length byte too big (%zu, %zu max)\n", a3, a4, a5, a6, a7, a8, v185);
              goto LABEL_649;
            }

            v40 = 0;
LABEL_575:
            v10 = v274;
            if (v184 && *v183)
            {
              goto LABEL_654;
            }

            v227 = sub_23EB759F0(v9, "\n", a3, a4, a5, a6, a7, a8, usedBufLen);
LABEL_578:
            if (v227 >= 0)
            {
              v232 = v40;
            }

            else
            {
              v232 = 0;
            }

            v40 = (v232 + v227);
            goto LABEL_654;
          }

          p_str = &__str;
          v64 = sub_23EB720C0(&__str, 300, "<<UNKNOWN PRINTF EXTENSION '%.*s'>>");
LABEL_346:
          LODWORD(v40) = v64;
          goto LABEL_414;
        }

        v120 = v281;
        v281 += 2;
        v121 = *v120;
        v281 = (v120 + 2);
        v122 = v120[1];
        if (v122 < 1)
        {
          LODWORD(v40) = 0;
          goto LABEL_416;
        }

        LODWORD(v40) = 0;
        v123 = (4 * DWORD2(v279));
        v124 = &v121[v122];
        break;
      default:
        goto LABEL_162;
    }

    break;
  }

  while (1)
  {
    if ((v124 - v121) <= 1)
    {
      v270 = (v124 - v121);
      v227 = sub_23EB759F0(v9, "### bad IE header:\n%2.1H\n", a3, a4, a5, a6, a7, a8, v121);
      goto LABEL_578;
    }

    v125 = v121[1];
    v126 = &v121[v125 + 2];
    if (v126 > v124)
    {
      v270 = (v124 - v121);
      v9 = a1;
      v227 = sub_23EB759F0(a1, "### bad IE length:\n%2.1H\n", a3, a4, a5, a6, a7, a8, v121);
      goto LABEL_578;
    }

    v127 = *v121;
    if (v127 <= 2)
    {
      break;
    }

    if (v127 == 3 || v127 == 50)
    {
      goto LABEL_277;
    }

    if (v127 != 221)
    {
      goto LABEL_280;
    }

    if (v125 <= 3)
    {
      v270 = (v124 - v121);
      v9 = a1;
      v227 = sub_23EB759F0(a1, "### bad vendor IE:\n%2.1H\n", a3, a4, a5, a6, a7, a8, v121);
      goto LABEL_578;
    }

    v128 = bswap32(*(v121 + 2));
    v129 = v121 + 6;
    v130 = v125 - 4;
    if (v128 > 1569282)
    {
      if (v128 == 1569283)
      {
        v271 = v123;
        v273 = v10;
        v270 = "";
        v137 = sub_23EB759F0(a1, "%*s%3d %-*s\n", a3, a4, a5, a6, a7, a8, v123);
        if ((v137 & 0x80000000) != 0)
        {
          return v137;
        }

        v15 = sub_23EB76B40(a1, &v279, v129, v130, v138, v139, v140, v141);
        if ((v15 & 0x80000000) != 0)
        {
          return v15;
        }

        goto LABEL_298;
      }

      if (v128 == 5304836)
      {
        v271 = v123;
        v273 = v10;
        v270 = "";
        v137 = sub_23EB759F0(a1, "%*s%3d %-*s\n", a3, a4, a5, a6, a7, a8, v123);
        if ((v137 & 0x80000000) != 0)
        {
          return v137;
        }

        v15 = sub_23EB76D60(a1, &v279, v129, v130, v133, v134, v135, v136);
        if ((v15 & 0x80000000) != 0)
        {
          return v15;
        }

LABEL_298:
        v40 = (v137 + v40 + v15);
        v123 = v271;
        v10 = v273;
        goto LABEL_284;
      }
    }

    else if (v128 == 234241)
    {
      if (v126 - v129 <= 2)
      {
        v270 = (v124 - v121);
        v9 = a1;
        v227 = sub_23EB759F0(a1, "### bad Apple General IE:\n%2.1H\n", a3, a4, a5, a6, a7, a8, v121);
        goto LABEL_578;
      }

      v270 = "";
      v15 = sub_23EB759F0(a1, "%*s%3d %-*s product ID %d flags 0x%x\n", a3, a4, a5, a6, a7, a8, v123);
      if ((v15 & 0x80000000) != 0)
      {
        return v15;
      }

      goto LABEL_283;
    }

    usedBufLena = v123;
    v270 = "";
    v131 = a1;
LABEL_278:
    v132 = "%*s%3d %-*s %2.2H";
LABEL_281:
    v15 = sub_23EB759F0(v131, v132, a3, a4, a5, a6, a7, a8, usedBufLena);
LABEL_282:
    if ((v15 & 0x80000000) != 0)
    {
      return v15;
    }

LABEL_283:
    v40 = (v15 + v40);
LABEL_284:
    v121 = v126;
    v82 = v126 >= v124;
    v9 = a1;
    if (v82)
    {
      goto LABEL_654;
    }
  }

  if (!*v121)
  {
    v270 = "";
    v15 = sub_23EB759F0(a1, "%*s%3d %-*s '%.*s'\n", a3, a4, a5, a6, a7, a8, v123);
    goto LABEL_282;
  }

  if (v127 != 1)
  {
LABEL_280:
    usedBufLena = v123;
    v270 = "";
    v131 = a1;
    v132 = "%*s%3d %-*s %2.2H\n";
    goto LABEL_281;
  }

LABEL_277:
  usedBufLena = v123;
  v270 = "";
  v131 = a1;
  goto LABEL_278;
}

void sub_23EB74724(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    free(v4);
  }

  free(a1);
}

void sub_23EB7477C(void *a1)
{
  if (*(a1 + 8) == 2)
  {
    v2 = a1[5];
    if (v2)
    {
      free(v2);
      a1[5] = 0;
    }

    v3 = a1[6];
    if (v3)
    {
      if (v3 != *MEMORY[0x277D85DF8] && v3 != *MEMORY[0x277D85E08])
      {
        fclose(v3);
      }

      a1[6] = 0;
    }

    v5 = a1[10];
    if (v5)
    {
      free(v5);
      a1[10] = 0;
    }
  }

  v6 = a1[2];
  if (v6)
  {
    free(v6);
  }

  free(a1);
}

uint64_t sub_23EB7481C(unsigned __int8 *a1)
{
  if (!a1)
  {
    while (1)
    {
      result = qword_27E3833F0;
      if (!qword_27E3833F0)
      {
        break;
      }

      qword_27E3833F0 = *qword_27E3833F0;
      sub_23EB74724(result);
    }

    return result;
  }

  v1 = a1;
  v2 = *a1;
  if (*a1)
  {
    v3 = &qword_27E3833F0;
    while (2)
    {
      v4 = 0;
      if (!v2)
      {
        return 4294960554;
      }

      while (v2 != 58)
      {
        v2 = v1[++v4];
        if (!v2)
        {
          return 4294960554;
        }
      }

      v5 = 0;
      v6 = &v1[v4];
      while (1)
      {
        if (!v6[v5 + 1])
        {
          return 4294960554;
        }

        if (v6[v5 + 1] == 61)
        {
          break;
        }

        ++v5;
      }

      v7 = 0;
      v8 = &v1[v4 + 2 + v5];
      for (i = v8; ; ++i)
      {
        v10 = *i;
        if (!*i || v10 == 44)
        {
          break;
        }

        ++v7;
      }

      if (v10 == 44)
      {
        v11 = i + 1;
      }

      else
      {
        v11 = i;
      }

      v12 = *v3;
      if (*v3)
      {
        while (1)
        {
          v13 = v12;
          if (!sub_23EB74C04(v1, v4, *(v12 + 8)) && !sub_23EB74C04(v6 + 1, v5, v13[2]))
          {
            break;
          }

          v12 = *v13;
          if (!*v13)
          {
            goto LABEL_25;
          }
        }

        v20 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
        if (v20)
        {
          v21 = v20;
          memcpy(v20, v8, v7);
          v21[v7] = 0;
          free(v13[3]);
          v13[3] = v21;
LABEL_30:
          v2 = *v11;
          v1 = v11;
          if (*v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v13 = v3;
LABEL_25:
        v26 = v11;
        v14 = v3;
        v15 = malloc_type_calloc(1uLL, 0x20uLL, 0x30040E3C0B0CCuLL);
        if (v15)
        {
          v16 = v15;
          v17 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
          v16[1] = v17;
          if (v17)
          {
            memcpy(v17, v1, v4);
            *(v16[1] + v4) = 0;
            v18 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
            v16[2] = v18;
            if (v18)
            {
              memcpy(v18, v6 + 1, v5);
              *(v16[2] + v5) = 0;
              v19 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
              v16[3] = v19;
              if (v19)
              {
                memcpy(v19, &v1[v4 + 2 + v5], v7);
                *(v16[3] + v7) = 0;
                *v13 = v16;
                v3 = v14;
                v11 = v26;
                goto LABEL_30;
              }
            }

            v23 = v16[1];
            if (v23)
            {
              free(v23);
            }
          }

          v24 = v16[2];
          if (v24)
          {
            free(v24);
          }

          v25 = v16[3];
          if (v25)
          {
            free(v25);
          }

          free(v16);
        }
      }

      return 4294960568;
    }
  }

  return sub_23EB74C88(0);
}

BOOL sub_23EB74AC8(uint64_t a1, unsigned __int16 a2)
{
  if (byte_27E383808)
  {
    return 0;
  }

  pthread_mutex_lock(&stru_27E381710);
  if (*a1 == -1)
  {
    *a1 = *(a1 + 4);
    v5 = &qword_27E3833E8;
    v6 = qword_27E3833E8;
    if (qword_27E3833E8)
    {
      if (sub_23EB74C04(*(qword_27E3833E8 + 24), -1, *(a1 + 24)) <= 0)
      {
        do
        {
          v7 = v6;
          v6 = *(v6 + 48);
          if (!v6)
          {
            v8 = 0;
            v5 = (v7 + 48);
            goto LABEL_13;
          }
        }

        while (sub_23EB74C04(*(v6 + 24), -1, *(a1 + 24)) < 1);
        v5 = (v7 + 48);
      }

      else
      {
        v5 = &qword_27E3833E8;
      }

      v8 = *v5;
    }

    else
    {
      v8 = 0;
    }

LABEL_13:
    *(a1 + 48) = v8;
    *v5 = a1;
    v9 = *(a1 + 8);
    if (v9)
    {
      sub_23EB7481C(v9);
    }

    sub_23EB74C88(a1);
    v10 = a1 + 56;
    if (!*(a1 + 56))
    {
      sub_23EB7503C("console", (a1 + 56));
      if (*v10)
      {
        ++*(*v10 + 8);
      }
    }
  }

  v11 = *a1;
  pthread_mutex_unlock(&stru_27E381710);
  return v11 <= a2;
}

uint64_t sub_23EB74C04(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  if (a2)
  {
    v4 = a2;
    while (1)
    {
      --v4;
      v6 = __tolower(*a1);
      result = __tolower(*a3);
      if (v6 < result)
      {
        return 0xFFFFFFFFLL;
      }

      if (v6 > result)
      {
        return 1;
      }

      if (!result)
      {
        return result;
      }

      ++a1;
      ++a3;
      if (!v4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (*a3)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t *sub_23EB74C88(uint64_t a1)
{
  v1 = qword_27E3833F0;
  if (qword_27E3833F0)
  {
    do
    {
      if (!strcmp(*(v1 + 16), "level"))
      {
        v3 = sub_23EB751D8(*(v1 + 24));
        if (v3 != -1)
        {
          v4 = qword_27E3833E8;
          if (qword_27E3833E8)
          {
            v5 = v3;
            do
            {
              if ((!a1 || v4 == a1) && sub_23EB76EA8(*(v1 + 8), *(v4 + 24)))
              {
                *v4 = v5;
              }

              v4 = *(v4 + 48);
            }

            while (v4);
          }
        }
      }

      v1 = *v1;
    }

    while (v1);
    v6 = qword_27E3833F0;
    if (qword_27E3833F0)
    {
      do
      {
        if (!strcmp(*(v6 + 16), "flags"))
        {
          v7 = *(v6 + 24);
          v8 = 0;
          v9 = &v7[strlen(v7)];
LABEL_17:
          v10 = v7;
          while (v10 < v9)
          {
            if (*v10 == 59)
            {
              v11 = v10;
              v12 = 1;
            }

            else
            {
              v13 = v10 + 1;
              v14 = v9 - 1 - v10;
              while (1)
              {
                v15 = v13;
                if (!v14)
                {
                  break;
                }

                ++v13;
                --v14;
                if (*v15 == 59)
                {
                  v11 = v15;
                  goto LABEL_26;
                }
              }

              v11 = v9;
LABEL_26:
              v12 = v15 < v9;
            }

            v16 = v11 - v10;
            v7 = &v11[v12];
            if (!sub_23EB74C04(v10, v11 - v10, "none"))
            {
              v8 = 0;
              goto LABEL_17;
            }

            if (!sub_23EB74C04(v10, v16, "time"))
            {
              v8 |= 1u;
              goto LABEL_17;
            }

            if (!sub_23EB74C04(v10, v16, "pid"))
            {
              v8 |= 2u;
              goto LABEL_17;
            }

            if (!sub_23EB74C04(v10, v16, "program"))
            {
              v8 |= 4u;
              goto LABEL_17;
            }

            if (!sub_23EB74C04(v10, v16, "category"))
            {
              v8 |= 8u;
              goto LABEL_17;
            }

            if (!sub_23EB74C04(v10, v16, "level"))
            {
              v8 |= 0x10u;
              goto LABEL_17;
            }

            if (!sub_23EB74C04(v10, v16, "prefix"))
            {
              v8 |= 0x20u;
              goto LABEL_17;
            }

            v17 = sub_23EB74C04(v10, v16, "function");
            v10 = v7;
            if (!v17)
            {
              v8 |= 0x40u;
              goto LABEL_17;
            }
          }

          for (i = qword_27E3833E8; i; i = *(i + 48))
          {
            if (!a1 || i == a1)
            {
              v19 = *(i + 24);
              if (sub_23EB76EA8(*(v6 + 8), v19))
              {
                if ((v8 & 0x20) != 0)
                {
                  v20 = strchr(v19, 95);
                  if (!v20)
                  {
                    LODWORD(v20) = v19 + strlen(v19);
                  }

                  *(i + 32) = v19;
                  *(i + 40) = v20 - v19;
                }

                *(i + 16) = v8;
              }
            }
          }
        }

        v6 = *v6;
      }

      while (v6);
      for (j = qword_27E3833F0; j; j = *j)
      {
        if (!strcmp(*(j + 16), "output"))
        {
          for (k = qword_27E3833E8; k; k = *(k + 48))
          {
            if ((!a1 || k == a1) && sub_23EB76EA8(*(j + 8), *(k + 24)))
            {
              v28 = 0;
              result = sub_23EB7503C(*(j + 24), &v28);
              if (result)
              {
                return result;
              }

              v24 = *(k + 56);
              v25 = v28;
              if (v24 != v28)
              {
                if (v24)
                {
                  --*(v24 + 8);
                }

                ++*(v25 + 2);
                *(k + 56) = v25;
              }
            }
          }
        }
      }
    }
  }

  v26 = qword_27E3833F8;
  if (qword_27E3833F8)
  {
    result = &qword_27E3833F8;
    do
    {
      v27 = result;
      result = v26;
      while (1)
      {
        v26 = *result;
        if (*(result + 2))
        {
          break;
        }

        *v27 = v26;
        sub_23EB7477C(result);
        result = *v27;
        if (!*v27)
        {
          return result;
        }
      }
    }

    while (v26);
  }

  return 0;
}

uint64_t sub_23EB7503C(char *__s2, uint64_t **a2)
{
  v4 = &qword_27E3833F8;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (!strcmp(v4[2], __s2))
    {
      v5 = 0;
LABEL_5:
      *a2 = v4;
      return v5;
    }
  }

  v6 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B2040E503BF9DuLL);
  if (v6)
  {
    v4 = v6;
    *(v6 + 2) = 0;
    v7 = strdup(__s2);
    v4[2] = v7;
    if (!v7)
    {
      v5 = 4294960568;
      goto LABEL_26;
    }

      ;
    }

    if (!i)
    {
      v5 = 4294960540;
      goto LABEL_26;
    }

    if (__s2[i])
    {
      v9 = __s2 + 1;
    }

    else
    {
      v9 = __s2;
    }

    if (sub_23EB74C04(__s2, i, "console") && sub_23EB74C04(__s2, i, "file"))
    {
      if (sub_23EB74C04(__s2, i, "syslog"))
      {
        if (sub_23EB74C04(__s2, i, "callback"))
        {
          v5 = 4294960591;
LABEL_26:
          sub_23EB7477C(v4);
          return v5;
        }

        v10 = sub_23EB776A8(v4, &v9[i]);
        if (!v10)
        {
LABEL_29:
          v5 = 0;
          *v4 = qword_27E3833F8;
          qword_27E3833F8 = v4;
          goto LABEL_5;
        }
      }

      else
      {
        v10 = sub_23EB7754C(v4, &v9[i]);
        if (!v10)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v10 = sub_23EB77008(v4, &v9[i]);
      if (!v10)
      {
        goto LABEL_29;
      }
    }

    v5 = v10;
    goto LABEL_26;
  }

  return 4294960568;
}

uint64_t sub_23EB751D8(char *__s1)
{
  v2 = MEMORY[0x277D85DE0];
  v3 = __s1;
  do
  {
    v4 = v3;
    v5 = *v3;
    if (*v3 < 0)
    {
      v6 = __maskrune(*v3, 0x100uLL);
    }

    else
    {
      v6 = *(v2 + 4 * *v3 + 60) & 0x100;
    }

    ++v3;
  }

  while (v6);
  v7 = v4 - __s1;
  if (v4 == __s1)
  {
    v12 = *__s1;
    if ((v12 - 48) > 9)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = __s1 + 1;
      do
      {
        v13 = 10 * v13 + v12 - 48;
        v15 = *v14++;
        v12 = v15;
      }

      while ((v15 - 48) < 0xA);
    }

    if (v12)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v13;
    }
  }

  else
  {
    if (strncmp(__s1, "all", v4 - __s1))
    {
      v8 = &dword_278C68D20;
      v9 = 17;
      while (--v9)
      {
        v10 = v8 + 4;
        v11 = strncmp(__s1, *(v8 + 3), v7);
        v8 = v10;
        if (!v11)
        {
          goto LABEL_17;
        }
      }

      return 0xFFFFFFFFLL;
    }

    v10 = &dword_278C68D20;
LABEL_17:
    result = *v10;
    if (v5 && result != -1)
    {
      v17 = *v3;
      if ((v17 - 48) > 9)
      {
        v18 = 0;
        if (!*v3)
        {
LABEL_29:
          if (v5 == 45)
          {
            return (result - v18);
          }

          if (v5 == 43)
          {
            return (v18 + result);
          }
        }
      }

      else
      {
        v18 = 0;
        v19 = 1;
        do
        {
          v18 = 10 * v18 + v17 - 48;
          v17 = v3[v19++];
        }

        while ((v17 - 48) < 0xA);
        if (!v17)
        {
          goto LABEL_29;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_23EB75374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20]();
  v11 = v10;
  v13 = v12;
  v14 = v9;
  v31 = *MEMORY[0x277D85DE8];
  if (qword_27E383408 != -1)
  {
    sub_23EC18E74();
  }

  if (qword_27E383400)
  {
    v15 = qword_27E383400;
  }

  else
  {
    v15 = MEMORY[0x277D86220];
  }

  if (v13 > 4999)
  {
    if (v13 > 9999)
    {
      if (v13 == 10000 || v13 == 11000)
      {
LABEL_24:
        v16 = OS_LOG_TYPE_FAULT;
        goto LABEL_25;
      }

      v17 = 12000;
    }

    else
    {
      if (v13 == 5000)
      {
        v16 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_25;
      }

      if (v13 == 8000)
      {
        v16 = OS_LOG_TYPE_ERROR;
        goto LABEL_25;
      }

      v17 = 9000;
    }

    if (v13 != v17)
    {
LABEL_36:
      v16 = OS_LOG_TYPE_DEBUG;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v16 = OS_LOG_TYPE_INFO;
  if (v13 > 799)
  {
    if (v13 != 800 && v13 != 1000 && v13 != 3000)
    {
      goto LABEL_36;
    }
  }

  else if (v13 && v13 != 100 && v13 != 500)
  {
    goto LABEL_36;
  }

LABEL_25:
  if (!sub_23EC0D248() || strlen(v11) < 2)
  {
    return 0;
  }

  if ((*(v14 + 16) & 0x40) != 0)
  {
    __sprintf_chk(v25, 0, 0x3E8uLL, "%s: %s");
  }

  else
  {
    __sprintf_chk(v25, 0, 0x3E8uLL, "%s");
  }

  v29 = 0;
  v30 = 0;
  *&buf = sub_23EB72150;
  *(&buf + 1) = v26;
  v28 = xmmword_23EC21C50;
  v18 = sub_23EB721D8(&buf, v25, &a9, v20, v21, v22, v23, v24);
  *(*(&buf + 1) + v28) = 0;
  if (os_log_type_enabled(v15, v16))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v26;
    _os_log_impl(&dword_23EB4A000, v15, v16, "%s", &buf, 0xCu);
  }

  return v18;
}

uint64_t sub_23EB755D8(uint64_t a1, int a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  result = 0;
  v76 = 0;
  v74 = 0;
  v85 = *MEMORY[0x277D85DE8];
  v79 = a1;
  if (a4 >= a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = a4;
  }

  v12 = (4 * a2);
  v13 = &v83;
  v14 = &v84;
  v15 = "";
  v75 = a3;
  while (1)
  {
    v16 = 0;
    v17 = v11 >= 0x10 ? 16 : v11;
    v81 = v14;
    do
    {
      if (v16 && (v16 & 3) == 0)
      {
        *v14++ = 32;
      }

      if (v16 >= v17)
      {
        v18 = 32;
        *v14 = 32;
      }

      else
      {
        *v14 = a0123456789abcd[*(v8 + v16) >> 4];
        v18 = a0123456789abcd[*(v8 + v16) & 0xF];
      }

      v14[1] = v18;
      v14 += 2;
      ++v16;
    }

    while (v16 != 16);
    v19 = 0;
    *v14 = 0;
    do
    {
      if (v11 <= v19)
      {
        LOBYTE(v20) = 32;
      }

      else
      {
        v20 = *(v8 + v19);
        if ((v20 - 32) >= 0x5F)
        {
          LOBYTE(v20) = 94;
        }
      }

      v82[v19++] = v20;
    }

    while (v19 != 16);
    v82[16] = 0;
    if (a4 > 0x10)
    {
      a3 = v8 - v75;
      if (v8 == v75)
      {
        v77 = result;
        v49 = a1;
        v31 = sub_23EB759F0(a1, "%*s", a3, a4, a5, a6, a7, a8, v12);
        if ((v31 & 0x80000000) != 0)
        {
          return v31;
        }

        result = sub_23EB759F0(v49, "+%04X: %s |%s| (%zu bytes)\n", v50, v51, v52, v53, v54, v55, 0);
      }

      else
      {
        if (*v81 == *v13 && *(v81 + 1) == *(v13 + 1) && *(v81 + 2) == *(v13 + 2) && *(v81 + 3) == *(v13 + 3))
        {
          ++v76;
          v74 += v17;
          goto LABEL_47;
        }

        v77 = result;
        if (v76 >= 1)
        {
          v35 = a1;
          v31 = sub_23EB759F0(a1, "%*s", a3, a4, a5, a6, a7, a8, v12);
          if ((v31 & 0x80000000) != 0)
          {
            return v31;
          }

          result = sub_23EB759F0(v35, "* (%d duplicate lines, %zu duplicate bytes)\n", v36, v37, v38, v39, v40, v41, (v76 + 1));
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v74 = 0;
          v76 = 0;
          v77 += v31 + result;
          a1 = v79;
        }

        v42 = a1;
        v31 = sub_23EB759F0(a1, "%*s", a3, a4, a5, a6, a7, a8, v12);
        if ((v31 & 0x80000000) != 0)
        {
          return v31;
        }

        result = sub_23EB759F0(v42, "+%04X: %s |%s|\n", v43, v44, v45, v46, v47, v48, v8 - v75);
      }

      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (v31 + v77 + result);
      a1 = v79;
    }

    else
    {
      v78 = v13;
      v21 = result;
      v22 = v15;
      v72 = v12;
      v23 = v12;
      v24 = a1;
      v31 = sub_23EB759F0(a1, "%*s", a3, a4, a5, a6, a7, a8, v72);
      if ((v31 & 0x80000000) != 0)
      {
        return v31;
      }

      result = sub_23EB759F0(v24, "%s |%s| (%zu bytes)\n", v25, v26, v27, v28, v29, v30, v81);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (v31 + v21 + result);
      v12 = v23;
      v15 = v22;
      v13 = v78;
      a1 = v79;
    }

LABEL_47:
    v11 -= v17;
    if (!v11)
    {
      break;
    }

    v8 += v17;
    v14 = v13;
    v13 = v81;
  }

  if (v76 < 1)
  {
    goto LABEL_54;
  }

  v56 = result;
  v57 = a1;
  v31 = sub_23EB759F0(a1, "%*s", a3, a4, a5, a6, a7, a8, v12);
  if ((v31 & 0x80000000) != 0)
  {
    return v31;
  }

  result = sub_23EB759F0(v57, "* (%d duplicate lines, %zu duplicate bytes)\n", v58, v59, v60, v61, v62, v63, (v76 + 1));
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = (v31 + v56 + result);
  a1 = v79;
LABEL_54:
  if (a4 <= a5)
  {
    return result;
  }

  v64 = result;
  v65 = a1;
  v31 = sub_23EB759F0(a1, "%*s", a3, a4, a5, a6, a7, a8, v12);
  if ((v31 & 0x80000000) != 0)
  {
    return v31;
  }

  result = sub_23EB759F0(v65, "... %zu more bytes ...\n", v66, v67, v68, v69, v70, v71, a4 - a5);
  if ((result & 0x80000000) == 0)
  {
    return (v31 + v64 + result);
  }

  return result;
}

uint64_t sub_23EB75A1C(uint64_t (**a1)(const char *, uint64_t, void), uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = (a2 + 25);
  if (*(a2 + 25))
  {
    v9 = a4 + 1;
  }

  else
  {
    v9 = a4;
  }

  v10 = (a2 + 26);
  if (*(a2 + 26))
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v9;
  }

  if ((*a2 & 1) == 0 && v11 < *(a2 + 8))
  {
    v12 = 0;
    while (1)
    {
      v13 = (*a1)(" ", 1, a1);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      ++v12;
      v14 = *(a2 + 8) - 1;
      *(a2 + 8) = v14;
      if (v11 >= v14)
      {
        if (*v8)
        {
          goto LABEL_15;
        }

        goto LABEL_17;
      }
    }
  }

  v12 = 0;
  if (*(a2 + 25))
  {
LABEL_15:
    v13 = (*a1)(v8, 1, a1);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    ++v12;
  }

LABEL_17:
  v13 = (*a1)(a3, a4, a1);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v15 = (v12 + a4);
  if (!*v10)
  {
    goto LABEL_21;
  }

  v13 = (*a1)(v10, 1, a1);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v15 = (v15 + 1);
LABEL_21:
  if (v11 < *(a2 + 8))
  {
    while (1)
    {
      v13 = (*a1)(" ", 1, a1);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      v15 = (v15 + 1);
      if (++v11 >= *(a2 + 8))
      {
        return v15;
      }
    }

    return v13;
  }

  return v15;
}

uint64_t sub_23EB75B94(uint64_t (***a1)(const char *, ...), const __CFString *a2, uint64_t a3, int a4)
{
  v8 = *(a1[1] + 3);
  if (a3 || v8 != 1)
  {
    if (a3)
    {
      v10 = v8 == 2;
    }

    else
    {
      v10 = 0;
    }

    v9 = v10;
  }

  else
  {
    v9 = 1;
  }

  v11 = CFGetTypeID(a2);
  if (v11 == CFArrayGetTypeID())
  {
    v18 = sub_23EB759F0(*a1, "%*s", v12, v13, v14, v15, v16, v17, (4 * *(a1 + 4)));
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    Count = CFArrayGetCount(a2);
    v20 = **a1;
    if (Count >= 1)
    {
      v21 = Count;
      v22 = v20("[\n", 2);
      if ((v22 & 0x80000000) == 0)
      {
        v23 = 0;
        v24 = v22 + v18;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v23);
          ++*(a1 + 4);
          v18 = sub_23EB75B94(a1, ValueAtIndex, a3, 1);
          --*(a1 + 4);
          if ((v18 & 0x80000000) != 0)
          {
            break;
          }

          v22 = (**a1)("\n", 1);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }

          v24 += v18 + v22;
          if (v21 == ++v23)
          {
            v18 = sub_23EB759F0(*a1, "%*s", v26, v27, v28, v29, v30, v31, (4 * *(a1 + 4)));
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }

            v22 = (**a1)("]", 1);
            if ((v22 & 0x80000000) == 0)
            {
              v32 = v18 + v24;
              return (v32 + v22);
            }

            return v22;
          }
        }

        return v18;
      }

      return v22;
    }

    v39 = "[]";
    goto LABEL_34;
  }

  if (v11 == CFBooleanGetTypeID())
  {
    v18 = sub_23EB759F0(*a1, "%*s", v33, v34, v35, v36, v37, v38, (4 * *(a1 + 4)));
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    if (!v9)
    {
      if (*MEMORY[0x277CBED28] == a2)
      {
        v52 = 4;
      }

      else
      {
        v52 = 5;
      }

      if (*MEMORY[0x277CBED28] == a2)
      {
        v39 = "true";
      }

      else
      {
        v39 = "false";
      }

      v20 = **a1;
      goto LABEL_42;
    }

    v20 = **a1;
    v39 = "%b";
    goto LABEL_34;
  }

  if (v11 == CFDataGetTypeID())
  {
    if (!v9)
    {
      v53 = *(a1 + 4);
      Length = CFDataGetLength(a2);
      v55 = Length;
      if (a4 || Length >= 0x11)
      {
        v18 = (**a1)("\n", 1);
        if ((v18 & 0x80000000) != 0)
        {
          return v18;
        }

        v56 = v53 + 1;
      }

      else
      {
        v56 = 0;
        LODWORD(v18) = 0;
      }

      *(a1 + 4) = v56;
      v72 = *a1;
      BytePtr = CFDataGetBytePtr(a2);
      v22 = sub_23EB755D8(v72, v56, BytePtr, v55, v55, v74, v75, v76);
      if ((v22 & 0x80000000) == 0)
      {
        v18 = (v22 + v18);
        *(a1 + 4) = v53;
        return v18;
      }

      return v22;
    }

    v18 = sub_23EB759F0(*a1, "%*s", v40, v41, v42, v43, v44, v45, (4 * *(a1 + 4)));
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    v20 = **a1;
    v39 = "%D";
    goto LABEL_34;
  }

  if (v11 == CFDateGetTypeID())
  {
    v18 = sub_23EB759F0(*a1, "%*s", v46, v47, v48, v49, v50, v51, (4 * *(a1 + 4)));
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    if (!v9)
    {
      LODWORD(valuePtr) = 0;
      LODWORD(v137) = 0;
      v139 = 0;
      v140 = 0;
      Default = CFAllocatorGetDefault();
      v86 = CFCalendarCreateWithIdentifier(Default, *MEMORY[0x277CBEE80]);
      if (v86)
      {
        v93 = v86;
        MEMORY[0x23EF1E1F0](a2);
        CFCalendarDecomposeAbsoluteTime(v93, v94, "yMdHms", &valuePtr, &v137, &v140 + 4, &v140, &v139 + 4, &v139);
        CFRelease(v93);
        v95 = valuePtr;
      }

      else
      {
        v95 = 0;
      }

      LODWORD(v22) = sub_23EB759F0(*a1, "%04d-%02d-%02d %02d:%02d:%02d", v87, v88, v89, v90, v91, v92, v95);
      goto LABEL_43;
    }

    v20 = **a1;
    v39 = "%T";
    goto LABEL_34;
  }

  if (v11 == CFDictionaryGetTypeID())
  {
    v18 = sub_23EB759F0(*a1, "%*s", v57, v58, v59, v60, v61, v62, (4 * *(a1 + 4)));
    if ((v18 & 0x80000000) != 0)
    {
      return v18;
    }

    v63 = CFDictionaryGetCount(a2);
    v20 = **a1;
    if (v63 >= 1)
    {
      v22 = v20("{\n", 2);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      ++*(a1 + 4);
      *(a1 + 5) = v22 + v18;
      CFDictionaryApplyFunction(a2, sub_23EB76358, a1);
      v18 = *(a1 + 6);
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v70 = *(a1 + 5);
      v71 = *(a1 + 4) - 1;
      *(a1 + 4) = v71;
      v18 = sub_23EB759F0(*a1, "%*s", v64, v65, v66, v67, v68, v69, (4 * v71));
      if ((v18 & 0x80000000) != 0)
      {
        return v18;
      }

      v22 = (**a1)("}", 1);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      v32 = v18 + v70;
      return (v32 + v22);
    }

    v39 = "{}";
LABEL_34:
    v52 = 2;
LABEL_42:
    LODWORD(v22) = v20(v39, v52);
    goto LABEL_43;
  }

  if (v11 == CFNumberGetTypeID())
  {
    v83 = sub_23EB759F0(*a1, "%*s", v77, v78, v79, v80, v81, v82, (4 * *(a1 + 4)));
    v84 = v83;
    if ((v83 & 0x80000000) != 0)
    {
      return v83;
    }

    if (v9)
    {
      LODWORD(v22) = (**a1)("%i", usedBufLen);
    }

    else
    {
      valuePtr = 0;
      if (!CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr))
      {
        v137 = 0;
        Value = CFNumberGetValue(a2, kCFNumberDoubleType, &v137);
        v134 = *a1;
        if (Value)
        {
          v135 = sub_23EB759F0(v134, "%f", v127, v128, v129, v130, v131, v132, v137);
        }

        else
        {
          v135 = sub_23EB759F0(v134, "<< BAD NUMBER >>", v127, v128, v129, v130, v131, v132, usedBufLen);
        }

        v18 = v135;
        if ((v135 & 0x80000000) == 0)
        {
          return (v135 + v84);
        }

        return v18;
      }

      LODWORD(v22) = sub_23EB759F0(*a1, "%lld", v114, v115, v116, v117, v118, v119, valuePtr);
    }

    if (v22 >= 0)
    {
      v32 = v84;
    }

    else
    {
      v32 = 0;
    }

    return (v32 + v22);
  }

  TypeID = CFStringGetTypeID();
  v103 = sub_23EB759F0(*a1, "%*s", v97, v98, v99, v100, v101, v102, (4 * *(a1 + 4)));
  v18 = v103;
  if (v11 != TypeID)
  {
    if ((v103 & 0x80000000) != 0)
    {
      return v18;
    }

    v110 = CFCopyDescription(a2);
    v111 = *a1;
    if (v110)
    {
      v112 = sub_23EB759F0(v111, "%@", v104, v105, v106, v107, v108, v109, v110);
      CFRelease(v110);
      if (v112 >= 0)
      {
        v113 = v18;
      }

      else
      {
        v113 = 0;
      }

      return (v113 + v112);
    }

    LODWORD(v22) = sub_23EB759F0(v111, "<<UNKNOWN CF OBJECT TYPE: %d>>", v104, v105, v106, v107, v108, v109, v11);
    goto LABEL_43;
  }

  if ((v103 & 0x80000000) != 0)
  {
    return v18;
  }

  if (v9)
  {
    v20 = **a1;
    if (!a3)
    {
      v39 = "%ks";
      v52 = 3;
      goto LABEL_42;
    }

    v39 = "%s";
    goto LABEL_34;
  }

  if (a3)
  {
    v22 = (**a1)("", 1);
    if ((v22 & 0x80000000) != 0)
    {
      return v22;
    }

    v18 = (v22 + v18);
  }

  v120 = CFStringGetLength(a2);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v120, 0x8000100u);
  if (MaximumSizeForEncoding)
  {
    v122 = MaximumSizeForEncoding;
    v123 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
    if (!v123)
    {
      return 4294960568;
    }

    v124 = v123;
    valuePtr = 0;
    v141.location = 0;
    v141.length = v120;
    CFStringGetBytes(a2, v141, 0x8000100u, 0x5Eu, 0, v123, v122, &valuePtr);
    v125 = (**a1)(v124, valuePtr);
    free(v124);
    if ((v125 & 0x80000000) != 0)
    {
      return v125;
    }

    v18 = (v125 + v18);
  }

  if (a3)
  {
    LODWORD(v22) = (**a1)("", 1);
LABEL_43:
    if (v22 >= 0)
    {
      v32 = v18;
    }

    else
    {
      v32 = 0;
    }

    return (v32 + v22);
  }

  return v18;
}

uint64_t sub_23EB76358(uint64_t result, const void *a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    return result;
  }

  result = sub_23EB75B94(a3, result, 0, 0);
  v5 = result;
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  result = (**a3)("=", 1);
  if ((result & 0x80000000) != 0)
  {
LABEL_21:
    v5 = result;
    goto LABEL_22;
  }

  v6 = result + v5;
  v7 = CFGetTypeID(a2);
  if (v7 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a2);
    v9 = **a3;
    if (Count >= 1)
    {
      result = v9("\n", 1);
      v5 = result;
      if ((result & 0x80000000) == 0)
      {
        v10 = a3;
        v11 = a2;
        v12 = 1;
LABEL_12:
        result = sub_23EB75B94(v10, v11, 1, v12);
        v14 = result;
        if ((result & 0x80000000) != 0)
        {
          v5 = result;
          goto LABEL_22;
        }

        result = (**a3)("\n", 1);
        if ((result & 0x80000000) == 0)
        {
          v15 = v5 + v6 + v14 + result;
LABEL_20:
          *(a3 + 20) += v15;
          return result;
        }

        goto LABEL_21;
      }

      goto LABEL_22;
    }

    v17 = "[]\n";
LABEL_28:
    result = v9(v17, 3);
    goto LABEL_29;
  }

  if (v7 == CFDictionaryGetTypeID())
  {
    v13 = CFDictionaryGetCount(a2);
    v9 = **a3;
    if (v13 >= 1)
    {
      result = v9("\n", 1);
      v5 = result;
      if ((result & 0x80000000) == 0)
      {
        v10 = a3;
        v11 = a2;
        v12 = 0;
        goto LABEL_12;
      }

LABEL_22:
      *(a3 + 20) += v5;
LABEL_23:
      *(a3 + 24) = v5;
      return result;
    }

    v17 = "{}\n";
    goto LABEL_28;
  }

  if (v7 != CFDataGetTypeID() || *(*(a3 + 8) + 3) == 2)
  {
    v16 = *(a3 + 16);
    *(a3 + 16) = 0;
    result = sub_23EB75B94(a3, a2, 1, 0);
    v5 = result;
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    *(a3 + 16) = v16;
    result = (**a3)("\n", 1);
    if ((result & 0x80000000) == 0)
    {
      v15 = v5 + v6 + result;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  result = sub_23EB75B94(a3, a2, 1, 0);
LABEL_29:
  v5 = result;
  if (result >= 0)
  {
    v18 = v6;
  }

  else
  {
    v18 = 0;
  }

  *(a3 + 20) += result + v18;
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  return result;
}

_BYTE *sub_23EB765A4(unsigned int a1, unsigned int a2, _BYTE *a3)
{
  v3 = 1;
  v13 = *MEMORY[0x277D85DE8];
  for (i = a3; ; ++i)
  {
    v5 = (a1 >> (-8 * v3));
    v6 = v12;
    do
    {
      *v6++ = (v5 % 0xA) | 0x30;
      v7 = v5 > 9;
      v5 /= 0xAu;
    }

    while (v7);
    while (v6 > v12)
    {
      v8 = *--v6;
      *i++ = v8;
    }

    if (v3 == 4)
    {
      break;
    }

    *i = 46;
    ++v3;
  }

  if (a2 >= 1)
  {
    *i = 58;
    v9 = v12;
    do
    {
      *v9++ = (a2 % 0xA) | 0x30;
      v7 = a2 > 9;
      a2 /= 0xAu;
    }

    while (v7);
    ++i;
    while (v9 > v12)
    {
      v10 = *--v9;
      *i++ = v10;
    }
  }

  *i = 0;
  return a3;
}

char *sub_23EB766C8(_BYTE *a1, unsigned int a2, int a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v45 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (a3 >= 1)
  {
    *a4 = 91;
    v7 = a4 + 1;
  }

  if (*a1 || a1[1])
  {
    goto LABEL_25;
  }

  if (!a1[2] && !a1[3] && !a1[4] && !a1[5] && !a1[6] && !a1[7] && !a1[8] && !a1[9] && a1[10] == 255 && a1[11] == 255)
  {
    *v7 = 14906;
    v37 = v7 + 6;
    *(v7 + 2) = 1717986918;
    v7 += 7;
    goto LABEL_81;
  }

  if (a1[2] || a1[3] || a1[4] || a1[5] || a1[6] || a1[7] || a1[8] || a1[9] || a1[10] || a1[11] || !a1[12] && !a1[13] && (!a1[14] && !a1[15] || !a1[14] && a1[15] == 1))
  {
LABEL_25:
    v8 = 0;
    v9 = v43;
    while (1)
    {
      v10 = v8 | 1;
      v11 = a1[v8];
      if (v11 >= 0x10)
      {
        *v9 = a0123456789abcd[v11 >> 4];
        LODWORD(v11) = v11 & 0xF;
        v12 = 1;
      }

      else
      {
        if (!a1[v8])
        {
          v14 = 0;
          v16 = 0;
          v8 += 2;
          v15 = a1[v10];
          if (v15 < 0x10)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        v12 = 0;
      }

      v13 = a0123456789abcd[v11];
      v14 = v12 + 1;
      v9[v12] = v13;
      v8 += 2;
      v15 = a1[v10];
LABEL_31:
      v16 = v14 + 1;
      v9[v14] = a0123456789abcd[v15 >> 4];
LABEL_32:
      *&v9[v16] = a0123456789abcd[v15 & 0xF];
      v9 += 5;
      if (v8 >= 16)
      {
        v17 = 0;
        v18 = a1 + 15;
        for (i = 28; i != -4; i -= 4)
        {
          if (*(v18 - 1))
          {
            v17 = 0;
          }

          else if (*v18)
          {
            v17 = 0;
          }

          else
          {
            ++v17;
          }

          *&v42[i] = v17;
          v18 -= 2;
        }

        v20 = 0;
        v21 = 0;
        v22 = -1;
        do
        {
          if (*&v42[4 * v20] > v21)
          {
            v21 = *&v42[4 * v20];
            v22 = v20;
          }

          ++v20;
        }

        while (v20 != 8);
        v23 = 0;
        while (1)
        {
          if (v23 == v22)
          {
            if (!v22)
            {
              *v7++ = 58;
            }

            *v7 = 58;
            v23 = v22 - 1 + *&v42[4 * v22];
          }

          else
          {
            v24 = v43[5 * v23];
            if (v24)
            {
              v25 = &v43[5 * v23 + 1];
              do
              {
                *v7++ = v24;
                v26 = *v25++;
                v24 = v26;
              }

              while (v26);
            }

            if (v23 == 7)
            {
              goto LABEL_57;
            }

            *v7 = 58;
          }

          ++v7;
          v27 = v23++ < 7;
          if (!v27)
          {
            goto LABEL_57;
          }
        }
      }
    }
  }

  v37 = v7 + 1;
  *v7 = 58;
  v7 += 2;
LABEL_81:
  v38 = 12;
  *v37 = 58;
  while (1)
  {
    v39 = a1[v38];
    v40 = v44;
    do
    {
      *v40++ = (v39 % 0xA) | 0x30;
      v27 = v39 > 9;
      v39 /= 0xAu;
    }

    while (v27);
    while (v40 > v44)
    {
      v41 = *--v40;
      *v7++ = v41;
    }

    if (v38 == 15)
    {
      break;
    }

    *v7++ = 46;
    ++v38;
  }

LABEL_57:
  if (a2)
  {
    *v7++ = 37;
    v28 = if_indextoname(a2, v44);
    if (v28)
    {
      v29 = *v28;
      if (*v28)
      {
        v30 = (v28 + 1);
        do
        {
          *v7++ = v29;
          v31 = *v30++;
          v29 = v31;
        }

        while (v31);
      }
    }

    else
    {
      v35 = v44;
      do
      {
        *v35++ = (v6 % 0xA) | 0x30;
        v27 = v6 > 9;
        v6 /= 0xAu;
      }

      while (v27);
      while (v35 > v44)
      {
        v36 = *--v35;
        *v7++ = v36;
      }
    }
  }

  if (v5 >= 1)
  {
    *v7 = 14941;
    v32 = v44;
    do
    {
      *v32++ = (v5 % 0xA) | 0x30;
      v27 = v5 > 9;
      v5 /= 0xAu;
    }

    while (v27);
    v7 += 2;
    while (v32 > v44)
    {
      v33 = *--v32;
      *v7++ = v33;
    }
  }

  *v7 = 0;
  return a4;
}

uint64_t sub_23EB76B40(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 < 1)
  {
    return 0;
  }

  LODWORD(v9) = 0;
  v10 = (4 * *(a2 + 8) + 8);
  v11 = &a3[a4];
  while (1)
  {
    if ((v11 - a3) <= 1)
    {
      v15 = sub_23EB759F0(a1, "### EasyConnect IE too small for header:\n%2.1H\n", a3, a4, a5, a6, a7, a8, a3);
      goto LABEL_22;
    }

    v12 = &a3[a3[1] + 2];
    if (v12 > v11)
    {
      break;
    }

    v13 = *a3;
    if (v13 > 3)
    {
      if (*a3 <= 5u && v13 == 5)
      {
LABEL_14:
        result = sub_23EB759F0(a1, "%*s%-*s '%.*s'\n", a3, a4, a5, a6, a7, a8, v10);
        goto LABEL_16;
      }
    }

    else if (*a3 <= 1u || v13 == 3)
    {
      goto LABEL_14;
    }

    result = sub_23EB759F0(a1, "%*s%-*s %3.2H", a3, a4, a5, a6, a7, a8, v10);
LABEL_16:
    if ((result & 0x80000000) == 0)
    {
      v9 = (result + v9);
      a3 = v12;
      result = v9;
      if (v12 < v11)
      {
        continue;
      }
    }

    return result;
  }

  v15 = sub_23EB759F0(a1, "### EasyConnect IE bad length:\n%2.1H\n", a3, a4, a5, a6, a7, a8, a3);
LABEL_22:
  if (v15 >= 0)
  {
    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  return (v16 + v15);
}

uint64_t sub_23EB76D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 < 1)
  {
    return 0;
  }

  LODWORD(v9) = 0;
  v10 = (4 * *(a2 + 8) + 8);
  v11 = a3 + a4;
  while (1)
  {
    if (v11 - a3 <= 3)
    {
      v14 = sub_23EB759F0(a1, "### WPS TLV too small for header:\n%2.1H\n", a3, a4, a5, a6, a7, a8, a3);
      goto LABEL_11;
    }

    v12 = a3 + 4 + __rev16(*(a3 + 2));
    if (v12 > v11)
    {
      break;
    }

    result = sub_23EB759F0(a1, "%*s%-*s %3.2H", a3, a4, a5, a6, a7, a8, v10);
    if ((result & 0x80000000) == 0)
    {
      v9 = (result + v9);
      a3 = v12;
      result = v9;
      if (v12 < v11)
      {
        continue;
      }
    }

    return result;
  }

  v14 = sub_23EB759F0(a1, "### WPS TLV bad length:\n%2.1H\n", a3, a4, a5, a6, a7, a8, a3);
LABEL_11:
  if (v14 >= 0)
  {
    v15 = v9;
  }

  else
  {
    v15 = 0;
  }

  return (v15 + v14);
}

uint64_t sub_23EB76EA8(_BYTE *a1, _BYTE *a2)
{
  v2 = a2;
  if (*a1 == 94)
  {
    v4 = a1 + 1;

    return sub_23EB76F20(v4, a2);
  }

  else
  {
    while (!sub_23EB76F20(a1, v2))
    {
      if (!*v2++)
      {
        return 0;
      }
    }

    return 1;
  }
}

uint64_t sub_23EB76F20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1 + 2; ; ++i)
    {
      v5 = *(i - 1);
      if (v5 == 42)
      {
        break;
      }

      v6 = *a2;
      if (v2 == 36 && !*(i - 1))
      {
        return v6 == 0;
      }

      if (!*a2 || v2 != 46 && v2 != v6)
      {
        return 0;
      }

      ++a2;
      v2 = v5;
      if (!v5)
      {
        return 1;
      }
    }

    while (1)
    {
      result = sub_23EB76F20(i, a2);
      if (result)
      {
        break;
      }

      v8 = *a2++;
      v7 = v8;
      v10 = v2 == 46 || v7 == v2;
      if (!v7 || !v10)
      {
        return result;
      }
    }
  }

  return 1;
}

os_log_t sub_23EB76FD8()
{
  result = os_log_create("com.apple.airportutility", "general");
  qword_27E383400 = result;
  return result;
}

uint64_t sub_23EB77008(uint64_t a1, char *__s1)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = *__s1;
  if (!*__s1 || (v4 = __s1, !strcmp(__s1, "stderr")))
  {
    v48 = MEMORY[0x277D85DF8];
  }

  else
  {
    if (strcmp(v4, "stdout"))
    {
      while (1)
      {
        v5 = v4;
        if (!v3)
        {
          return 4294960554;
        }

        while (v3 != 61)
        {
          v6 = *++v5;
          v3 = v6;
          if (!v6)
          {
            return 4294960554;
          }
        }

        v7 = v5 + 1;
        v8 = -1;
        for (i = 1; v5[i] && v5[i] != 59; ++i)
        {
          ++v8;
        }

        v10 = &v5[i];
        if (v5[i])
        {
          v11 = v10 + 1;
        }

        else
        {
          v11 = &v5[i];
        }

        v49 = v11;
        if (sub_23EB74C04(v4, v5 - v4, "path"))
        {
          if (sub_23EB74C04(v4, v5 - v4, "roll"))
          {
            if (sub_23EB74C04(v4, v5 - v4, "backup"))
            {
              return 4294960561;
            }

            if (i < 2)
            {
              v14 = 0;
              v12 = 1;
              v13 = v5 + 1;
            }

            else if (*v7 == 35)
            {
              v12 = 1;
              v13 = v5 + 1;
              v14 = 1;
            }

            else
            {
              v27 = 2;
              while (1)
              {
                v28 = v27;
                if (!v8)
                {
                  break;
                }

                v29 = v5[v27++];
                --v8;
                if (v29 == 35)
                {
                  v12 = v28;
                  goto LABEL_73;
                }
              }

              v12 = i;
LABEL_73:
              v14 = v28 < i;
              v13 = &v5[v28];
            }

            if (v12 != i && *v13 != 35)
            {
              return 4294960591;
            }

            v38 = v12 - 1;
            if (v12 == 1)
            {
              v39 = 0;
            }

            else
            {
              v40 = malloc_type_malloc(v12, 0x100004077774924uLL);
              if (!v40)
              {
                return 4294960568;
              }

              v39 = v40;
              memcpy(v40, v5 + 1, v38);
              v39[v38] = 0;
            }

            v41 = *(a1 + 80);
            if (v41)
            {
              free(v41);
            }

            *(a1 + 80) = v39;
            v42 = &v13[v14];
            if (&v13[v14] >= v10)
            {
              v43 = 0;
            }

            else
            {
              v43 = 0;
              do
              {
                v44 = *v42;
                if ((v44 - 48) > 9)
                {
                  break;
                }

                v43 = v44 + 10 * v43 - 48;
                ++v42;
              }

              while (v42 < v10);
            }

            if (v10 != v42)
            {
              return 4294960591;
            }

            *(a1 + 88) = v43;
          }

          else
          {
            if (i < 2)
            {
              v24 = 0;
            }

            else
            {
              v24 = 0;
              while (1)
              {
                v25 = *v7;
                v26 = v25;
                if ((v25 - 48) > 9)
                {
                  break;
                }

                v24 = v25 + 10 * v24 - 48;
                if (++v7 >= v10)
                {
                  goto LABEL_59;
                }
              }

              v30 = v24 << 10;
              v31 = v24 << 20;
              if (v25 == 77)
              {
                v32 = v7 + 1;
              }

              else
              {
                v32 = v7;
              }

              if (v25 != 77)
              {
                v31 = v24;
              }

              v33 = v25 == 75;
              if (v25 == 75)
              {
                v34 = v7 + 1;
              }

              else
              {
                v34 = v32;
              }

              if (!v33)
              {
                v30 = v31;
              }

              if (v26 == 66)
              {
                ++v7;
              }

              else
              {
                v7 = v34;
              }

              if (v26 != 66)
              {
                v24 = v30;
              }
            }

LABEL_59:
            if (v10 != v7 && *v7 != 35)
            {
              return 4294960591;
            }

            *(a1 + 64) = v24;
            v35 = v7 >= v10 ? v7 : v7 + 1;
            if (v35 >= v10)
            {
              v36 = 0;
            }

            else
            {
              v36 = 0;
              do
              {
                v37 = *v35;
                if ((v37 - 48) > 9)
                {
                  break;
                }

                v36 = v37 + 10 * v36 - 48;
                ++v35;
              }

              while (v35 < v10);
            }

            if (v10 != v35)
            {
              return 4294960591;
            }

            *(a1 + 72) = v36;
          }
        }

        else
        {
          if (i == 1)
          {
            return 4294960592;
          }

          v15 = malloc_type_malloc(i, 0x100004077774924uLL);
          if (!v15)
          {
            return 4294960568;
          }

          v16 = v15;
          memcpy(v15, v5 + 1, i - 1);
          v16[i - 1] = 0;
          v17 = *(a1 + 40);
          if (v17)
          {
            free(v17);
          }

          *(a1 + 40) = v16;
          v18 = strrchr(v16, 47);
          if (v18)
          {
            v19 = v18 - v16;
            if ((v18 - v16) > 0x400)
            {
              return 4294960592;
            }

            __memcpy_chk();
            v51[v19] = 0;
            memset(&v50, 0, sizeof(v50));
            v20 = v52;
            __strlcpy_chk();
            while (1)
            {
              v21 = &v20[strspn(v20, "/")];
              v20 = &v21[strcspn(v21, "/")];
              v22 = *v20;
              *v20 = 0;
              if (mkdir(v52, 0x1F8u) < 0)
              {
                v23 = *__error();
                if (stat(v52, &v50) < 0)
                {
                  goto LABEL_91;
                }

                if ((v50.st_mode & 0xF000) != 0x4000)
                {
                  break;
                }
              }

              if (!v22)
              {
                goto LABEL_92;
              }

              *v20 = 47;
            }

            v23 = 20;
LABEL_91:
            *__error() = v23;
LABEL_92:
            v16 = *(a1 + 40);
          }

          v45 = fopen(v16, "a");
          *(a1 + 48) = v45;
          if (!v45)
          {
            return 4294960541;
          }

          fseeko(v45, 0, 2);
          *(a1 + 56) = ftello(*(a1 + 48));
        }

        v4 = v49;
        v3 = *v49;
        if (!*v49)
        {
          v46 = *(a1 + 48);
          if (v46)
          {
            goto LABEL_100;
          }

          return 4294960591;
        }
      }
    }

    v48 = MEMORY[0x277D85E08];
  }

  v46 = *v48;
  *(a1 + 48) = *v48;
LABEL_100:
  setvbuf(v46, 0, 2, 0);
  result = 0;
  *(a1 + 24) = sub_23EB77894;
  *(a1 + 32) = 2;
  return result;
}

uint64_t sub_23EB7754C(uint64_t a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  *(a1 + 40) = -1;
  v3 = *a2;
  if (*a2)
  {
    v4 = a2;
    while (1)
    {
      v5 = 1;
      if (!v3)
      {
        return 4294960554;
      }

      while (v3 != 61)
      {
        v3 = v4[v5++];
        if (!v3)
        {
          return 4294960554;
        }
      }

      v6 = 0;
      v7 = &v4[v5];
      while (1)
      {
        v8 = v7[v6];
        if (!v7[v6] || v8 == 59)
        {
          break;
        }

        ++v6;
      }

      if (sub_23EB74C04(v4, v5 - 1, "level"))
      {
        return 4294960561;
      }

      if (v8)
      {
        v9 = v4 + 1;
      }

      else
      {
        v9 = v4;
      }

      v4 = &v9[v5 + v6];
      if (v6 >= 0x1F)
      {
        v10 = 31;
      }

      else
      {
        v10 = v6;
      }

      __memcpy_chk();
      __s1[v10] = 0;
      *(a1 + 40) = sub_23EB751D8(__s1);
      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    result = 0;
    *(a1 + 24) = sub_23EB77C90;
    *(a1 + 32) = 6;
  }

  return result;
}

uint64_t sub_23EB776A8(uint64_t a1, unsigned __int8 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  *(a1 + 40) = 0;
  v3 = (a1 + 40);
  *(a1 + 48) = 0;
  v4 = a1 + 48;
  v5 = *a2;
  if (!*a2)
  {
LABEL_23:
    result = 0;
    *(a1 + 24) = sub_23EB77D68;
    *(a1 + 32) = 11;
    return result;
  }

  v6 = a2;
  v7 = "func";
  while (1)
  {
    v8 = 1;
    if (!v5)
    {
      return 4294960554;
    }

    while (v5 != 61)
    {
      v5 = v6[v8++];
      if (!v5)
      {
        return 4294960554;
      }
    }

    v9 = 0;
    v10 = &v6[v8];
    while (v10[v9] && v10[v9] != 59)
    {
      ++v9;
    }

    v11 = (v10[v9] ? v6 + 1 : v6);
    v12 = v7;
    if (sub_23EB74C04(v6, v8 - 1, v7))
    {
      break;
    }

    if (v9 > 0x3F)
    {
      return 4294960553;
    }

    __memcpy_chk();
    v15[v9] = 0;
    if (sscanf(v15, "%p", &v14) != 1)
    {
      return 4294960554;
    }

    *v3 = v14;
LABEL_22:
    v6 = (v11 + v8 + v9);
    v5 = *v6;
    v7 = v12;
    if (!*v6)
    {
      goto LABEL_23;
    }
  }

  if (!sub_23EB74C04(v6, v8 - 1, "arg"))
  {
    if (v9 > 0x3F)
    {
      return 4294960553;
    }

    __memcpy_chk();
    v15[v9] = 0;
    if (sscanf(v15, "%p", v4) != 1)
    {
      return 4294960554;
    }

    goto LABEL_22;
  }

  return 4294960561;
}

FILE *sub_23EB77894(uint64_t a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v59 = *MEMORY[0x277D85DE8];
  v10 = *(*a1 + 56);
  result = *(v10 + 48);
  v12 = MEMORY[0x277D85DF8];
  v13 = MEMORY[0x277D85E08];
  if (result != *MEMORY[0x277D85DF8] && result != *MEMORY[0x277D85E08])
  {
    v15 = *(v10 + 64);
    v16 = *(v10 + 56) + a3;
    *(v10 + 56) = v16;
    if (v15 >= 1 && v16 > v15)
    {
      if (*(v10 + 80))
      {
        v18 = *(v10 + 88);
        v19 = __OFSUB__(v18, 1);
        v20 = (v18 - 1);
        if (v20 < 0 == v19)
        {
          sub_23EB720C0(&__p, 1025, "%s.%d", a4, a5, a6, a7, a8, *(v10 + 80), v20);
          remove(&__p, v21);
          v27 = *(v10 + 88);
          if (v27 >= 3)
          {
            v28 = (v27 - 2);
            do
            {
              sub_23EB720C0(&__p, 1025, "%s.%d", v22, v23, v24, v25, v26, *(v10 + 80), v28);
              sub_23EB720C0(&__to, 1025, "%s.%d", v29, v30, v31, v32, v33, *(v10 + 80), (v28 + 1));
              rename(&__p, &__to, v34);
              v35 = v28 != 0;
              v28 = (v28 - 1);
            }

            while (v28 != 0 && v35);
          }

          sub_23EB720C0(&__to, 1025, "%s.1", v22, v23, v24, v25, v26, *(v10 + 80));
          rename(*(v10 + 80), &__to, v36);
          sub_23EB720C0(&__to, 1025, "%s", v37, v38, v39, v40, v41, *(v10 + 80));
          v42 = *(v10 + 40);
          v43 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (v43)
          {
            v44 = v43;
            v45 = fopen(v42, "r");
            if (v45 || *__error() && !*__error())
            {
              v46 = fopen(&__to, "w");
              if (v46 || *__error() && !*__error())
              {
                v47 = fread(v44, 1uLL, 0x1000uLL, v45);
                if (v47)
                {
                  v48 = v47;
                  do
                  {
                    if (fwrite(v44, 1uLL, v48, v46) != v48 && (!*__error() || *__error()))
                    {
                      break;
                    }

                    v48 = fread(v44, 1uLL, 0x1000uLL, v45);
                  }

                  while (v48);
                }
              }

              if (v45)
              {
                fclose(v45);
              }

              if (v46)
              {
                fclose(v46);
              }
            }

            free(v44);
          }
        }
      }

      v49 = *(v10 + 48);
      if (v49)
      {
        fwrite("\nLOG ENDED, CONTINUES IN NEXT LOG FILE\n", 0x27uLL, 1uLL, v49);
        fclose(*(v10 + 48));
        *(v10 + 48) = 0;
      }

      snprintf(&__p, 0x401uLL, "%s.%d", *(v10 + 40), *(v10 + 72) - 1);
      remove(&__p, v50);
      v51 = *(v10 + 72);
      if (v51 >= 3)
      {
        v52 = v51 - 2;
        do
        {
          snprintf(&__p, 0x401uLL, "%s.%d", *(v10 + 40), v52);
          snprintf(&__to, 0x401uLL, "%s.%d", *(v10 + 40), v52 + 1);
          rename(&__p, &__to, v53);
          v35 = v52-- != 0;
        }

        while (v52 != 0 && v35);
      }

      snprintf(&__to, 0x401uLL, "%s.%d", *(v10 + 40), 1);
      rename(*(v10 + 40), &__to, v54);
      v55 = fopen(*(v10 + 40), "w");
      *(v10 + 48) = v55;
      if (!v55 && *__error())
      {
        __error();
      }

      *(v10 + 56) = a3;
      result = *(v10 + 48);
    }
  }

  if (result)
  {
    if (result == *v12)
    {
      v56 = 2;
    }

    else if (result == *v13)
    {
      v56 = 1;
    }

    else
    {
      v56 = fileno(result);
    }

    return write(v56, a2, a3);
  }

  return result;
}

void sub_23EB77C90(unsigned __int16 *a1, const char *a2, uint64_t a3)
{
  v3 = *(*(*a1 + 56) + 40);
  if (v3 == -1)
  {
    v3 = a1[4];
  }

  if (v3 >= 501)
  {
    if (v3 >= 0x3E9)
    {
      if (v3 >= 0xBB9)
      {
        if (v3 >= 0x1389)
        {
          if (v3 >= 0x1F41)
          {
            if (v3 >= 0x2329)
            {
              v4 = v3 < 0x2711;
            }

            else
            {
              v4 = 2;
            }
          }

          else
          {
            v4 = 3;
          }
        }

        else
        {
          v4 = 4;
        }
      }

      else
      {
        v4 = 5;
      }
    }

    else
    {
      v4 = 6;
    }
  }

  else
  {
    v4 = 7;
  }

  for (; a3; --a3)
  {
    if (a2[a3 - 1] != 10)
    {
      break;
    }
  }

  syslog(v4, "%.*s", a3, a2);
}

uint64_t sub_23EB77D68(uint64_t result)
{
  v1 = *(*(*result + 56) + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_23EB78230(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);

    return MEMORY[0x2821F9670](v4, sel_auUIAlertDestructiveAction_, v3);
  }

  return result;
}

uint64_t sub_23EB7828C(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);

    return MEMORY[0x2821F9670](v4, sel_auUIAlertCancelAction_, v3);
  }

  return result;
}

uint64_t sub_23EB782E8(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);

    return MEMORY[0x2821F9670](v4, sel_auUIAlertAlternateAction_, v3);
  }

  return result;
}

uint64_t sub_23EB78344(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);

    return MEMORY[0x2821F9670](v4, sel_auUIAlertOKAction_, v3);
  }

  return result;
}

uint64_t sub_23EB78670(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);

    return MEMORY[0x2821F9670](v4, sel_auUIAlertOKAction_, v3);
  }

  return result;
}

uint64_t sub_23EB78750(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);

    return MEMORY[0x2821F9670](v4, sel_auUIAlertCancelAction_, v3);
  }

  return result;
}

uint64_t sub_23EB78B04(unsigned __int8 *a1, unint64_t a2, int a3, unsigned __int8 **a4, void *a5, unsigned __int8 **a6)
{
  do
  {
    if (a2 - a1 < 2)
    {
      v10 = 4294960569;
      if (!a6)
      {
        return v10;
      }

      goto LABEL_11;
    }

    v6 = a1[1];
    v7 = a1 + 2;
    v8 = &a1[v6 + 2];
    if (v8 > a2)
    {
      v10 = 4294960546;
      if (!a6)
      {
        return v10;
      }

LABEL_11:
      *a6 = a1;
      return v10;
    }

    v9 = *a1;
    a1 += v6 + 2;
  }

  while (v9 != a3);
  if (a4)
  {
    *a4 = v7;
  }

  v10 = 0;
  if (a5)
  {
    *a5 = v6;
  }

  a1 = v8;
  if (a6)
  {
    goto LABEL_11;
  }

  return v10;
}

uint64_t sub_23EB78B74(unsigned __int8 *a1, unint64_t a2, int a3, void *a4, void *a5, void *a6)
{
  if ((a2 - a1) < 2)
  {
    return 4294960569;
  }

  v6 = a1;
  while (1)
  {
    v7 = v6;
    v8 = *v6;
    v9 = v6[1];
    v6 += v9 + 2;
    if (v8 == 221)
    {
      if (v6 < a1 || v6 > a2)
      {
        return 4294960553;
      }

      if (v9 >= 4 && bswap32(*(v7 + 2)) == a3)
      {
        break;
      }
    }

    if ((a2 - v6) <= 1)
    {
      return 4294960569;
    }
  }

  *a4 = v7 + 6;
  *a5 = v9 - 4;
  result = 0;
  if (a6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_23EB78C00(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, _WORD *a4)
{
  v8 = 0;
  v9 = 0;
  result = sub_23EB78B74(a1, a2, 234241, &v9, &v8, 0);
  if (!result)
  {
    if (v8 >= 3)
    {
      v7 = *(v9 + 1);
      if (a3)
      {
        *a3 = *v9;
      }

      result = 0;
      if (a4)
      {
        *a4 = bswap32(v7) >> 16;
      }
    }

    else
    {
      return 4294960553;
    }
  }

  return result;
}

uint64_t sub_23EB78C88(unsigned __int8 *a1, unint64_t a2, void *a3, void *a4)
{
  v8 = 0;
  v9 = 0;
  result = sub_23EB78B74(a1, a2, 1569287, &v9, &v8, 0);
  if (!result)
  {
    v7 = v8;
    if (v8 >= 0xA)
    {
      if (*v9)
      {
        return 4294960540;
      }

      else if (v9[1] == 1)
      {
        result = 0;
        *a3 = v9 + 2;
        *a4 = v7 - 2;
      }

      else
      {
        return 4294960581;
      }
    }

    else
    {
      return 4294960553;
    }
  }

  return result;
}

uint64_t sub_23EB78D24(unsigned __int8 *a1, unint64_t a2, int a3, unsigned __int8 **a4, void *a5, unsigned __int8 **a6)
{
  do
  {
    if (a2 - a1 < 2)
    {
      return 4294960569;
    }

    v6 = a1[1];
    v7 = a1 + 2;
    v8 = &a1[v6 + 2];
    if (v8 > a2)
    {
      return 4294960546;
    }

    v9 = *a1;
    a1 += v6 + 2;
  }

  while (v9 != a3);
  *a4 = v7;
  *a5 = v6;
  result = 0;
  if (a6)
  {
    *a6 = v8;
  }

  return result;
}

double sub_23EB78D7C(uint64_t a1)
{
  result = -3.59869635e230;
  *a1 = xmmword_23EC21C70;
  *(a1 + 16) = 0;
  return result;
}

void *sub_23EB78DA0(uint64_t a1, char *__src, size_t a3, int a4)
{
  v5 = __src;
  v7 = *(a1 + 16);
  *(a1 + 16) = v7 + a3;
  if (__CFADD__(v7, a3))
  {
    ++*(a1 + 20);
  }

  v8 = 64 - (v7 & 0x3F);
  v9 = a3 - v8;
  if (a3 >= v8)
  {
    memcpy((a1 - v8 + 88), __src, v8);
    sub_23EB78F5C(a1, (a1 + 24), a4);
    v11 = &v5[v8];
    if (v9 >= 0x40)
    {
      do
      {
        v12 = *v11;
        v13 = *(v11 + 1);
        v14 = *(v11 + 2);
        *(a1 + 72) = *(v11 + 3);
        *(a1 + 56) = v14;
        *(a1 + 40) = v13;
        *(a1 + 24) = v12;
        sub_23EB78F5C(a1, (a1 + 24), a4);
        v11 += 64;
        v9 -= 64;
      }

      while (v9 > 0x3F);
    }

    v10 = (a1 + 24);
    __src = v11;
    a3 = v9;
  }

  else
  {
    v10 = (a1 - v8 + 88);
  }

  return memcpy(v10, __src, a3);
}

double sub_23EB78E9C(_OWORD *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 16) & 0x3F;
  v7 = (a2 + 24);
  v8 = (a2 + 24 + v6);
  *v8 = 0x80;
  v9 = (v8 + 1);
  if (v6 < 0x38)
  {
    v10 = 55 - v6;
  }

  else
  {
    bzero(v9, v6 ^ 0x3F);
    sub_23EB78F5C(a2, v7, a3);
    v10 = 56;
    v9 = v7;
  }

  bzero(v9, v10);
  *(a2 + 80) = 8 * *(a2 + 16);
  sub_23EB78F5C(a2, v7, a3);
  *a1 = *a2;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

_DWORD *sub_23EB78F5C(_DWORD *result, int *a2, int a3)
{
  v3 = result[1];
  v5 = result[2];
  v4 = result[3];
  v7 = *a2;
  v6 = a2[1];
  HIDWORD(v8) = *result + *a2 - 680876936 + (v5 & v3 | v4 & ~v3);
  LODWORD(v8) = HIDWORD(v8);
  v9 = (v8 >> 25) + v3;
  HIDWORD(v8) = v4 + v6 - 389564586 + (v3 & v9 | v5 & ~v9);
  LODWORD(v8) = HIDWORD(v8);
  v10 = (v8 >> 20) + v9;
  v11 = a2[2];
  v12 = a2[3];
  HIDWORD(v8) = v5 + v11 + 606105819 + (v9 & v10 | v3 & ~v10);
  LODWORD(v8) = HIDWORD(v8);
  v13 = (v8 >> 15) + v10;
  HIDWORD(v8) = v3 + v12 - 1044525330 + (v10 & v13 | v9 & ~v13);
  LODWORD(v8) = HIDWORD(v8);
  v14 = (v8 >> 10) + v13;
  v16 = a2[4];
  v15 = a2[5];
  HIDWORD(v8) = v16 + v9 - 176418897 + (v13 & v14 | v10 & ~v14);
  LODWORD(v8) = HIDWORD(v8);
  v17 = (v8 >> 25) + v14;
  HIDWORD(v8) = v15 + v10 + 1200080426 + (v14 & v17 | v13 & ~v17);
  LODWORD(v8) = HIDWORD(v8);
  v18 = (v8 >> 20) + v17;
  v19 = a2[6];
  v20 = a2[7];
  HIDWORD(v8) = v19 + v13 - 1473231341 + (v17 & v18 | v14 & ~v18);
  LODWORD(v8) = HIDWORD(v8);
  v21 = (v8 >> 15) + v18;
  HIDWORD(v8) = v20 + v14 - 45705983 + (v18 & v21 | v17 & ~v21);
  LODWORD(v8) = HIDWORD(v8);
  v22 = (v8 >> 10) + v21;
  v23 = a2[8];
  v24 = a2[9];
  HIDWORD(v8) = v23 + v17 + 1770035416 + (v21 & v22 | v18 & ~v22);
  LODWORD(v8) = HIDWORD(v8);
  v25 = (v8 >> 25) + v22;
  HIDWORD(v8) = v24 + v18 - 1958414417 + (v22 & v25 | v21 & ~v25);
  LODWORD(v8) = HIDWORD(v8);
  v26 = (v8 >> 20) + v25;
  v28 = a2[10];
  v27 = a2[11];
  HIDWORD(v8) = v28 + v21 - 42063 + (v25 & v26 | v22 & ~v26);
  LODWORD(v8) = HIDWORD(v8);
  v29 = (v8 >> 15) + v26;
  HIDWORD(v8) = v27 + v22 - 1990404162 + (v26 & v29 | v25 & ~v29);
  LODWORD(v8) = HIDWORD(v8);
  v30 = (v8 >> 10) + v29;
  v32 = a2[12];
  v31 = a2[13];
  HIDWORD(v8) = v32 + v25 + 1804603682 + (v29 & v30 | v26 & ~v30);
  LODWORD(v8) = HIDWORD(v8);
  v33 = (v8 >> 25) + v30;
  HIDWORD(v8) = v31 + v26 - 40341101 + (v30 & v33 | v29 & ~v33);
  LODWORD(v8) = HIDWORD(v8);
  v34 = (v8 >> 20) + v33;
  v36 = a2[14];
  v35 = a2[15];
  HIDWORD(v8) = v36 + v29 - 1502002290 + (v33 & v34 | v30 & ~v34);
  LODWORD(v8) = HIDWORD(v8);
  v37 = (v8 >> 15) + v34;
  HIDWORD(v8) = v35 + v30 + 1236535329 + (v34 & v37 | v33 & ~v37);
  LODWORD(v8) = HIDWORD(v8);
  v38 = (v8 >> 10) + v37;
  HIDWORD(v8) = v6 + v33 - 165796510 + (v38 & v34 | v37 & ~v34);
  LODWORD(v8) = HIDWORD(v8);
  v39 = (v8 >> 27) + v38;
  HIDWORD(v8) = v19 + v34 - 1069501632 + (v39 & v37 | v38 & ~v37);
  LODWORD(v8) = HIDWORD(v8);
  v40 = (v8 >> 23) + v39;
  HIDWORD(v8) = v27 + v37 + 643717713 + (v40 & v38 | v39 & ~v38);
  LODWORD(v8) = HIDWORD(v8);
  v41 = (v8 >> 18) + v40;
  HIDWORD(v8) = v7 + v38 - 373897302 + (v41 & v39 | v40 & ~v39);
  LODWORD(v8) = HIDWORD(v8);
  v42 = (v8 >> 12) + v41;
  HIDWORD(v8) = v15 + v39 - 701558691 + (v42 & v40 | v41 & ~v40);
  LODWORD(v8) = HIDWORD(v8);
  v43 = (v8 >> 27) + v42;
  HIDWORD(v8) = v28 + v40 + 38016083 + (v43 & v41 | v42 & ~v41);
  LODWORD(v8) = HIDWORD(v8);
  v44 = (v8 >> 23) + v43;
  HIDWORD(v8) = v35 + v41 - 660478335 + (v44 & v42 | v43 & ~v42);
  LODWORD(v8) = HIDWORD(v8);
  v45 = (v8 >> 18) + v44;
  HIDWORD(v8) = v16 + v42 - 405537848 + (v45 & v43 | v44 & ~v43);
  LODWORD(v8) = HIDWORD(v8);
  v46 = (v8 >> 12) + v45;
  HIDWORD(v8) = v24 + v43 + 568446438 + (v46 & v44 | v45 & ~v44);
  LODWORD(v8) = HIDWORD(v8);
  v47 = (v8 >> 27) + v46;
  HIDWORD(v8) = v36 + v44 - 1019803690 + (v47 & v45 | v46 & ~v45);
  LODWORD(v8) = HIDWORD(v8);
  v48 = (v8 >> 23) + v47;
  HIDWORD(v8) = v12 + v45 - 187363961 + (v48 & v46 | v47 & ~v46);
  LODWORD(v8) = HIDWORD(v8);
  v49 = (v8 >> 18) + v48;
  if (a3 == 1)
  {
    v50 = 1146754285;
  }

  else
  {
    v50 = 1163531501;
  }

  HIDWORD(v51) = v46 + v23 + v50 + (v49 & v47 | v48 & ~v47);
  LODWORD(v51) = HIDWORD(v51);
  v52 = (v51 >> 12) + v49;
  HIDWORD(v51) = v31 + v47 - 1444681467 + (v52 & v48 | v49 & ~v48);
  LODWORD(v51) = HIDWORD(v51);
  v53 = (v51 >> 27) + v52;
  HIDWORD(v51) = v11 + v48 - 51403784 + (v53 & v49 | v52 & ~v49);
  LODWORD(v51) = HIDWORD(v51);
  v54 = (v51 >> 23) + v53;
  HIDWORD(v51) = v20 + v49 + 1735328473 + (v54 & v52 | v53 & ~v52);
  LODWORD(v51) = HIDWORD(v51);
  v55 = (v51 >> 18) + v54;
  HIDWORD(v51) = v32 + v52 - 1926607734 + ((v55 ^ v54) & v53 ^ v54);
  LODWORD(v51) = HIDWORD(v51);
  v56 = (v51 >> 12) + v55;
  HIDWORD(v51) = v15 + v53 - 378558 + (v55 ^ v54 ^ v56);
  LODWORD(v51) = HIDWORD(v51);
  v57 = (v51 >> 28) + v56;
  HIDWORD(v51) = v23 + v54 - 2022574463 + (v56 ^ v55 ^ v57);
  LODWORD(v51) = HIDWORD(v51);
  v58 = (v51 >> 21) + v57;
  HIDWORD(v51) = v27 + v55 + 1839030562 + (v57 ^ v56 ^ v58);
  LODWORD(v51) = HIDWORD(v51);
  v59 = (v51 >> 16) + v58;
  HIDWORD(v51) = v36 + v56 - 35309556 + (v58 ^ v57 ^ v59);
  LODWORD(v51) = HIDWORD(v51);
  v60 = (v51 >> 9) + v59;
  HIDWORD(v51) = v6 + v57 - 1530992060 + (v59 ^ v58 ^ v60);
  LODWORD(v51) = HIDWORD(v51);
  v61 = (v51 >> 28) + v60;
  HIDWORD(v51) = v16 + v58 + 1272893353 + (v60 ^ v59 ^ v61);
  LODWORD(v51) = HIDWORD(v51);
  v62 = (v51 >> 21) + v61;
  HIDWORD(v51) = v20 + v59 - 155497632 + (v61 ^ v60 ^ v62);
  LODWORD(v51) = HIDWORD(v51);
  v63 = (v51 >> 16) + v62;
  HIDWORD(v51) = v28 + v60 - 1094730640 + (v62 ^ v61 ^ v63);
  LODWORD(v51) = HIDWORD(v51);
  v64 = (v51 >> 9) + v63;
  HIDWORD(v51) = v31 + v61 + 681279174 + (v63 ^ v62 ^ v64);
  LODWORD(v51) = HIDWORD(v51);
  v65 = (v51 >> 28) + v64;
  HIDWORD(v51) = v7 + v62 - 358537222 + (v64 ^ v63 ^ v65);
  LODWORD(v51) = HIDWORD(v51);
  v66 = (v51 >> 21) + v65;
  HIDWORD(v51) = v12 + v63 - 722521979 + (v65 ^ v64 ^ v66);
  LODWORD(v51) = HIDWORD(v51);
  v67 = (v51 >> 16) + v66;
  HIDWORD(v51) = v19 + v64 + 76029189 + (v66 ^ v65 ^ v67);
  LODWORD(v51) = HIDWORD(v51);
  v68 = (v51 >> 9) + v67;
  HIDWORD(v51) = v24 + v65 - 640364487 + (v67 ^ v66 ^ v68);
  LODWORD(v51) = HIDWORD(v51);
  v69 = (v51 >> 28) + v68;
  HIDWORD(v51) = v32 + v66 - 421815835 + (v68 ^ v67 ^ v69);
  LODWORD(v51) = HIDWORD(v51);
  v70 = (v51 >> 21) + v69;
  HIDWORD(v51) = v35 + v67 + 530742520 + (v69 ^ v68 ^ v70);
  LODWORD(v51) = HIDWORD(v51);
  v71 = (v51 >> 16) + v70;
  HIDWORD(v51) = v11 + v68 - 995338651 + (v70 ^ v69 ^ v71);
  LODWORD(v51) = HIDWORD(v51);
  v72 = (v51 >> 9) + v71;
  HIDWORD(v51) = v7 + v69 - 198630844 + ((v72 | ~v70) ^ v71);
  LODWORD(v51) = HIDWORD(v51);
  v73 = (v51 >> 26) + v72;
  HIDWORD(v51) = v20 + v70 + 1126891415 + ((v73 | ~v71) ^ v72);
  LODWORD(v51) = HIDWORD(v51);
  v74 = (v51 >> 22) + v73;
  HIDWORD(v51) = v36 + v71 - 1416354905 + ((v74 | ~v72) ^ v73);
  LODWORD(v51) = HIDWORD(v51);
  v75 = (v51 >> 17) + v74;
  HIDWORD(v51) = v15 + v72 - 57434055 + ((v75 | ~v73) ^ v74);
  LODWORD(v51) = HIDWORD(v51);
  v76 = (v51 >> 11) + v75;
  HIDWORD(v51) = v32 + v73 + 1700485571 + ((v76 | ~v74) ^ v75);
  LODWORD(v51) = HIDWORD(v51);
  v77 = (v51 >> 26) + v76;
  HIDWORD(v51) = v12 + v74 - 1894986606 + ((v77 | ~v75) ^ v76);
  LODWORD(v51) = HIDWORD(v51);
  v78 = (v51 >> 22) + v77;
  HIDWORD(v51) = v28 + v75 - 1051523 + ((v78 | ~v76) ^ v77);
  LODWORD(v51) = HIDWORD(v51);
  v79 = (v51 >> 17) + v78;
  HIDWORD(v51) = v6 + v76 - 2054922799 + ((v79 | ~v77) ^ v78);
  LODWORD(v51) = HIDWORD(v51);
  v80 = (v51 >> 11) + v79;
  HIDWORD(v51) = v23 + v77 + 1873313359 + ((v80 | ~v78) ^ v79);
  LODWORD(v51) = HIDWORD(v51);
  v81 = (v51 >> 26) + v80;
  HIDWORD(v51) = v35 + v78 - 30611744 + ((v81 | ~v79) ^ v80);
  LODWORD(v51) = HIDWORD(v51);
  v82 = (v51 >> 22) + v81;
  HIDWORD(v51) = v19 + v79 - 1560198380 + ((v82 | ~v80) ^ v81);
  LODWORD(v51) = HIDWORD(v51);
  v83 = (v51 >> 17) + v82;
  HIDWORD(v51) = v31 + v80 + 1309151649 + ((v83 | ~v81) ^ v82);
  LODWORD(v51) = HIDWORD(v51);
  v84 = (v51 >> 11) + v83;
  HIDWORD(v51) = v16 + v81 - 145523070 + ((v84 | ~v82) ^ v83);
  LODWORD(v51) = HIDWORD(v51);
  v85 = (v51 >> 26) + v84;
  HIDWORD(v51) = v27 + v82 - 1120210379 + ((v85 | ~v83) ^ v84);
  LODWORD(v51) = HIDWORD(v51);
  v86 = (v51 >> 22) + v85;
  HIDWORD(v51) = v11 + v83 + 718787259 + ((v86 | ~v84) ^ v85);
  LODWORD(v51) = HIDWORD(v51);
  v87 = (v51 >> 17) + v86;
  HIDWORD(v51) = v24 + v84 - 343485551 + ((v87 | ~v85) ^ v86);
  LODWORD(v51) = HIDWORD(v51);
  *result += v85;
  result[1] = v87 + v3 + (v51 >> 11);
  result[2] = v87 + v5;
  result[3] = v86 + v4;
  return result;
}

uint64_t sub_23EB79948(unsigned int a1, int a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a2 == -1)
  {
    v4 = 5000;
  }

  else
  {
    v4 = a2;
  }

  if (!a2)
  {
    v4 = 5552;
  }

  v5 = a1;
  for (i = HIWORD(a1); a4; a4 -= v7)
  {
    if (a4 >= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = a4;
    }

    v8 = v7;
    if (v7 >= 0x10)
    {
      do
      {
        v9 = v5 + *a3;
        v10 = v9 + i;
        v11 = v9 + a3[1];
        v12 = v10 + v11;
        v13 = v11 + a3[2];
        v14 = v12 + v13;
        v15 = v13 + a3[3];
        v16 = v14 + v15;
        v17 = v15 + a3[4];
        v18 = v16 + v17;
        v19 = v17 + a3[5];
        v20 = v18 + v19;
        v21 = v19 + a3[6];
        v22 = v20 + v21;
        v23 = v21 + a3[7];
        v24 = v22 + v23;
        v25 = v23 + a3[8];
        v26 = v24 + v25;
        v27 = v25 + a3[9];
        v28 = v26 + v27;
        v29 = v27 + a3[10];
        v30 = v28 + v29;
        v31 = v29 + a3[11];
        v32 = v30 + v31;
        v33 = v31 + a3[12];
        v34 = v32 + v33;
        v35 = v33 + a3[13];
        v36 = v34 + v35;
        v37 = v35 + a3[14];
        v38 = v36 + v37;
        v5 = v37 + a3[15];
        i = v38 + v5;
        a3 += 16;
        v8 -= 16;
      }

      while (v8 > 0xF);
    }

    v39 = v8;
    v40 = a3;
    if (v8)
    {
      do
      {
        v41 = *v40++;
        v5 += v41;
        i += v5;
        --v39;
      }

      while (v39);
      a3 += v8;
    }

    v5 %= 0xFFF1u;
    i %= 0xFFF1u;
  }

  return v5 | (i << 16);
}

uint64_t sub_23EB7A848(void *a1, const char *a2, double a3)
{
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(a1, a2, 0);
  objc_msgSend_setNumberOfLines_(a1, v5, 0);
  objc_msgSend_setTextAlignment_(a1, v6, 1);
  objc_msgSend_setLineBreakMode_(a1, v7, 0);
  v10 = objc_msgSend__secondaryLabelColor(MEMORY[0x277D75348], v8, v9);
  objc_msgSend_setTextColor_(a1, v11, v10);
  v14 = objc_msgSend_systemFontOfSize_(MEMORY[0x277D74300], v12, v13, a3);
  objc_msgSend_setFont_(a1, v15, v14);
  objc_msgSend_setAdjustsFontSizeToFitWidth_(a1, v16, 1);
  v19 = objc_msgSend_font(a1, v17, v18);
  objc_msgSend_pointSize(v19, v20, v21);
  v23 = v22 + -4.0;
  v26 = objc_msgSend_font(a1, v24, v25);
  objc_msgSend_pointSize(v26, v27, v28);
  v32 = v23 / v31;

  return objc_msgSend_setMinimumScaleFactor_(a1, v29, v30, v32);
}

double sub_23EB7AD5C(double a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v5 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], a3, a4);
  objc_msgSend_scale(v5, v6, v7);
  if (v8 < 2.0)
  {
    v9 = a1;
    return roundf(v9);
  }

  return a1;
}

double sub_23EB7BE9C(double a1, uint64_t a2, const char *a3, uint64_t a4)
{
  v5 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], a3, a4);
  objc_msgSend_scale(v5, v6, v7);
  if (v8 < 2.0)
  {
    v9 = a1;
    return roundf(v9) + -0.5;
  }

  return a1;
}

uint64_t sub_23EB7C020(void *a1, const char *a2, uint64_t a3)
{
  v4 = sub_23EC13544(a1, a2, a3);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(a1, v5, 0);
  v7 = objc_msgSend_imageNamed_(ImageStore, v6, @"Reset-Modem");
  v8 = [AUImageView alloc];
  v10 = objc_msgSend_initWithImage_(v8, v9, v7);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v10, v11, 0);
  objc_msgSend_addSubview_(a1, v12, v10);

  v13 = objc_alloc_init(AULabel);
  v14 = sub_23EB6CD3C(@"CyclePower", @"AirPortSettings");
  objc_msgSend_setText_(v13, v15, v14);
  if (v4 == 1)
  {
    v17 = 14.0;
  }

  else
  {
    v17 = 17.0;
  }

  sub_23EB7A848(v13, v16, v17);
  objc_msgSend_sizeToFit(v13, v18, v19);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v13, v20, 0);
  objc_msgSend_frame(v10, v21, v22);
  v24 = v23 * 0.5;
  objc_msgSend_textRectForBounds_limitedToNumberOfLines_(v13, v25, 0, 0.0, 0.0, (floorf(v24) + -10.0), 3.40282347e38);
  v27 = v26;
  objc_msgSend_bounds(v13, v28, v29);
  v34 = v33;
  if (v27 == v33)
  {
    objc_msgSend_frame(v10, v30, v31);
    v36 = v35 * 0.5;
    objc_msgSend_setPreferredMaxLayoutWidth_(v13, v37, v38, (floorf(v36) + -10.0));
  }

  LODWORD(v32) = 1148846080;
  objc_msgSend_setContentCompressionResistancePriority_forAxis_(v13, v30, 1, v32);
  LODWORD(v39) = 1148846080;
  objc_msgSend_setContentCompressionResistancePriority_forAxis_(v13, v40, 0, v39);
  objc_msgSend_addSubview_(a1, v41, v13);

  v42 = objc_alloc_init(AULabel);
  v43 = sub_23EB6CD3C(@"RemoveBattery", @"AirPortSettings");
  objc_msgSend_setText_(v42, v44, v43);
  sub_23EB7A848(v42, v45, v17);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v42, v46, 0);
  objc_msgSend_sizeToFit(v42, v47, v48);
  objc_msgSend_frame(v10, v49, v50);
  v52 = v51 * 0.5;
  objc_msgSend_textRectForBounds_limitedToNumberOfLines_(v42, v53, 0, 0.0, 0.0, (floorf(v52) + -10.0), 3.40282347e38);
  v55 = v54;
  objc_msgSend_bounds(v42, v56, v57);
  v62 = v61;
  if (v55 == v61)
  {
    objc_msgSend_frame(v10, v58, v59);
    v64 = v63 * 0.5;
    objc_msgSend_setPreferredMaxLayoutWidth_(v42, v65, v66, (floorf(v64) + -10.0));
  }

  LODWORD(v60) = 1148846080;
  objc_msgSend_setContentCompressionResistancePriority_forAxis_(v42, v58, 1, v60);
  LODWORD(v67) = 1148846080;
  objc_msgSend_setContentCompressionResistancePriority_forAxis_(v42, v68, 0, v67);
  objc_msgSend_addSubview_(a1, v69, v42);

  v70 = MEMORY[0x277CCAAD0];
  objc_msgSend_size(v7, v71, v72);
  v75 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v70, v73, v10, 7, 0, 0, 0, 1.0, v74);
  objc_msgSend_addConstraint_(a1, v76, v75);
  v77 = MEMORY[0x277CCAAD0];
  objc_msgSend_size(v7, v78, v79);
  v81 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v77, v80, v10, 8, 0, 0, 0, 1.0);
  objc_msgSend_addConstraint_(a1, v82, v81);
  v84 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v83, v10, 9, 0, a1, 9, 1.0, 0.0);
  objc_msgSend_addConstraint_(a1, v85, v84);
  v88 = MEMORY[0x277CCAAD0];
  if (v27 == v34)
  {
    objc_msgSend_frame(v10, v86, v87);
    v90 = v89 * 0.286458343;
    v92 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v88, v91, v13, 9, 0, v10, 1, 1.0, floorf(v90));
    LODWORD(v93) = 1132068864;
    objc_msgSend_setPriority_(v92, v94, v95, v93);
  }

  else
  {
    v97 = _NSDictionaryOfVariableBindings(&cfstr_Cyclelabel.isa, v13, 0);
    v99 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v88, v98, @"H:|-(>=10)-[cycleLabel]", 0x10000, 0, v97);
    objc_msgSend_addConstraints_(a1, v100, v99);
    v92 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v101, v13, 2, 0, v10, 9, 1.0, -14.0);
  }

  objc_msgSend_addConstraint_(a1, v96, v92);
  v102 = MEMORY[0x277CCAAD0];
  v103 = _NSDictionaryOfVariableBindings(&cfstr_CyclelabelImag.isa, v13, v10, 0);
  v105 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v102, v104, @"V:|-20-[cycleLabel]-(>=20)-[imageView]-20-|", 0, 0, v103);
  objc_msgSend_addConstraints_(a1, v106, v105);
  v109 = MEMORY[0x277CCAAD0];
  if (v55 == v62)
  {
    objc_msgSend_frame(v10, v107, v108);
    v111 = v110 * 0.713541667;
    v113 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v109, v112, v42, 9, 0, v10, 1, 1.0, floorf(v111));
    LODWORD(v114) = 1132068864;
    objc_msgSend_setPriority_(v113, v115, v116, v114);
  }

  else
  {
    v118 = _NSDictionaryOfVariableBindings(&cfstr_Removelabel.isa, v42, 0);
    v120 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v109, v119, @"H:[removeLabel]-(>=10)-|", 0x10000, 0, v118);
    objc_msgSend_addConstraints_(a1, v121, v120);
    v113 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v122, v42, 1, 0, v10, 9, 1.0, 14.0);
  }

  objc_msgSend_addConstraint_(a1, v117, v113);
  v123 = MEMORY[0x277CCAAD0];
  v124 = _NSDictionaryOfVariableBindings(&cfstr_RemovelabelIma.isa, v42, v10, 0);
  v126 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v123, v125, @"V:|-20-[removeLabel]-(>=20)-[imageView]-20-|", 0, 0, v124);
  objc_msgSend_addConstraints_(a1, v127, v126);
  v128 = MEMORY[0x277CCAAD0];
  v129 = _NSDictionaryOfVariableBindings(&cfstr_CyclelabelRemo.isa, v13, v42, 0);
  v131 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v128, v130, @"H:[cycleLabel]-(>=12)-[removeLabel]", 65544, 0, v129);
  objc_msgSend_addConstraints_(a1, v132, v131);

  return objc_msgSend_setNeedsLayout(a1, v133, v134);
}

uint64_t sub_23EB7C610(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = malloc_type_calloc(1uLL, 0x80uLL, 0x1090040AE1C4F64uLL);
  if (!v2)
  {
    return 4294960568;
  }

  v3 = v2;
  *v2 = -2441908381;
  *(v2 + 12) = -1;
  if (pipe(v6))
  {
    if (*__error())
    {
      v4 = *__error();
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = 4294960596;
    }

    sub_23EB7CD20(v3);
    return v4;
  }

LABEL_5:
  v4 = 0;
  *(v3 + 12) = vrev64_s32(v6[0]);
  v3[3] = sub_23EB7C738;
  v3[4] = sub_23EB7C8D0;
  v3[5] = sub_23EB7C9D0;
  v3[6] = sub_23EB7CAFC;
  *a1 = v3;
  return v4;
}

uint64_t sub_23EB7C738(uint64_t a1, size_t a2, uint64_t a3, char *__dst, size_t *a5, int a6, unsigned int a7)
{
  if (a1 && *a1 == 1853058915)
  {
    if (*(a1 + 8))
    {
      v9 = 0;
      result = 4294960573;
      goto LABEL_6;
    }

    if ((*(a1 + 4) & 0x80000000) != 0)
    {
      v9 = 0;
      result = 4294960551;
    }

    else
    {
      v13 = __dst;
      v14 = a3;
      v16 = *(a1 + 64);
      v17 = *(a1 + 72) - v16;
      if (v17 < 1)
      {
        v9 = 0;
      }

      else
      {
        if (v17 >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = *(a1 + 72) - v16;
        }

        memcpy(__dst, v16, v9);
        *(a1 + 64) += v9;
        v13 += v9;
        v14 -= v9;
      }

      if (v14 >= 1)
      {
        while (1)
        {
          v18 = recv(*(a1 + 4), v13, v14, a6);
          if (v18 >= 1)
          {
            break;
          }

          if (!v18)
          {
            if (v9 >= a2)
            {
              result = 0;
            }

            else
            {
              result = 4294960543;
            }

            goto LABEL_6;
          }

          if (!*__error())
          {
            result = 4294960596;
            goto LABEL_6;
          }

          result = *__error();
          if (result != 4)
          {
            if (result != 35)
            {
              goto LABEL_6;
            }

            if (v9 >= a2)
            {
              goto LABEL_29;
            }

            result = sub_23EB7CFB0(a1, *(a1 + 4), 0, a7);
            if (result)
            {
              goto LABEL_6;
            }

LABEL_27:
            result = 0;
            if (v14 <= 0)
            {
              goto LABEL_6;
            }
          }
        }

        v13 += v18;
        v14 -= v18;
        v9 += v18;
        goto LABEL_27;
      }

LABEL_29:
      result = 0;
    }
  }

  else
  {
    v9 = 0;
    result = 4294960556;
  }

LABEL_6:
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_23EB7C8D0(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 == 1853058915)
  {
    if (*(a1 + 8))
    {
      return 4294960573;
    }

    if ((*(a1 + 4) & 0x80000000) != 0)
    {
      return 4294960551;
    }

    v6 = a3;
    if (!a3)
    {
      return 0;
    }

    while (1)
    {
      v9 = send(*(a1 + 4), a2, v6, 0);
      if (v9 < 1)
      {
        if (!*__error())
        {
          return 4294960596;
        }

        result = *__error();
        if (result != 4)
        {
          if (result != 35)
          {
            return result;
          }

          result = sub_23EB7CFB0(a1, *(a1 + 4), 1, a4);
          if (result)
          {
            return result;
          }
        }
      }

      else
      {
        a2 += v9;
        v6 -= v9;
      }

      result = 0;
      if (!v6)
      {
        return result;
      }
    }
  }

  return 4294960556;
}

uint64_t sub_23EB7C9D0(uint64_t a1, iovec *a2, int a3, unsigned int a4)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 == 1853058915)
  {
    if (*(a1 + 8))
    {
      return 4294960573;
    }

    if ((*(a1 + 4) & 0x80000000) != 0)
    {
      return 4294960551;
    }

    while (1)
    {
      while (1)
      {
        v9 = writev(*(a1 + 4), a2, a3);
        if (v9 < 0)
        {
          break;
        }

        v10 = v9;
        if (a3 < 1)
        {
          if (!a3)
          {
            return 0;
          }

          iov_len = a2->iov_len;
        }

        else
        {
          while (1)
          {
            iov_len = a2->iov_len;
            if (v10 < iov_len)
            {
              break;
            }

            result = 0;
            ++a2;
            v10 -= iov_len;
            v12 = __OFSUB__(a3--, 1);
            if ((a3 < 0) ^ v12 | (a3 == 0))
            {
              return result;
            }
          }
        }

        a2->iov_base = a2->iov_base + v10;
        a2->iov_len = iov_len - v10;
LABEL_22:
        result = sub_23EB7CFB0(a1, *(a1 + 4), 1, a4);
        if (result)
        {
          return result;
        }
      }

      if (!*__error())
      {
        return 4294960596;
      }

      result = *__error();
      if (result != 4)
      {
        if (result != 35)
        {
          return result;
        }

        goto LABEL_22;
      }
    }
  }

  return 4294960556;
}

uint64_t sub_23EB7CAFC(uint64_t a1, void *a2, int a3, void *a4, int a5, int a6, off_t a7, uint64_t a8, unsigned int a9)
{
  if (!a1 || *a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    return 4294960551;
  }

  if (a3 < 1)
  {
LABEL_12:
    if (lseek(a6, a7, 0) != -1)
    {
      goto LABEL_13;
    }

    if (!*__error())
    {
      return 4294960596;
    }

    v10 = *__error();
    if (!v10)
    {
LABEL_13:
      if (a8 < 1)
      {
        v21 = 0;
LABEL_30:
        if (*a1 == 1853058915)
        {
          if (a5 < 1)
          {
LABEL_35:
            v10 = 0;
          }

          else
          {
            v27 = &a4[2 * a5];
            while (1)
            {
              v25 = (*(a1 + 32))(a1, *a4, a4[1], a9);
              if (v25)
              {
                break;
              }

              a4 += 2;
              if (a4 >= v27)
              {
                goto LABEL_35;
              }
            }

LABEL_38:
            v10 = v25;
          }
        }

        else
        {
          v10 = 4294960556;
        }
      }

      else
      {
        v20 = malloc_type_malloc(0x100000uLL, 0x100004077774924uLL);
        if (!v20)
        {
          return 4294960568;
        }

        v21 = v20;
        while (1)
        {
          v22 = a8 >= 0x100000 ? 0x100000 : a8;
          v23 = read(a6, v21, v22);
          v24 = v23;
          if (v23 < 1)
          {
            break;
          }

          v25 = (*(a1 + 32))(a1, v21, v23, a9);
          if (v25)
          {
            goto LABEL_38;
          }

          v26 = a8 <= v24;
          a8 -= v24;
          if (v26)
          {
            goto LABEL_30;
          }
        }

        if (v23)
        {
          if (*__error())
          {
            v10 = *__error();
          }

          else
          {
            v10 = 4294960596;
          }
        }

        else
        {
          v10 = 4294960546;
        }
      }

      if (v21)
      {
        free(v21);
      }
    }
  }

  else
  {
    v17 = a2;
    v18 = &a2[2 * a3];
    while (1)
    {
      v19 = (*(a1 + 32))(a1, *v17, v17[1], a9);
      if (v19)
      {
        return v19;
      }

      v17 += 2;
      if (v17 >= v18)
      {
        goto LABEL_12;
      }
    }
  }

  return v10;
}

uint64_t sub_23EB7CD20(void *a1)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  v2 = a1[7];
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 1);
  if ((v3 & 0x80000000) == 0)
  {
    if (close(v3) && *__error())
    {
      __error();
    }

    *(a1 + 1) = -1;
  }

  v4 = *(a1 + 3);
  if ((v4 & 0x80000000) == 0)
  {
    if (close(v4) && *__error())
    {
      __error();
    }

    *(a1 + 3) = -1;
  }

  v5 = *(a1 + 4);
  if ((v5 & 0x80000000) == 0)
  {
    if (close(v5) && *__error())
    {
      __error();
    }

    *(a1 + 4) = -1;
  }

  v6 = a1[10];
  if (v6)
  {
    free(v6);
    a1[10] = 0;
  }

  v7 = a1[14];
  if (v7)
  {
    free(v7);
  }

  free(a1);
  return 0;
}

uint64_t sub_23EB7CE1C(_DWORD *a1)
{
  if (a1 && *a1 == 1853058915)
  {
    return a1[1];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_23EB7CE44(uint64_t a1)
{
  if (!a1 || *a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 0;
  }

  *(a1 + 8) = 1;
  if (write(*(a1 + 12), "Q", 1uLL) == 1)
  {
    return 0;
  }

  if (*__error())
  {
    return *__error();
  }

  return 4294960596;
}

uint64_t sub_23EB7CEE4(uint64_t a1, uint64_t a2, char *a3, int a4, int a5)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  v8 = -1;
  result = sub_23EC11214(a3, a4, 6, 1000000000 * a5, -1, -1, 0, 0, &v8);
  if (result == -6722)
  {
    return 4294960543;
  }

  if (!result)
  {
    v7 = v8;
    *(a1 + 4) = v8;
    return (v7 >> 31) & 0xFFFFE59F;
  }

  return result;
}

uint64_t sub_23EB7CFB0(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  v6 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    return 4294960551;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0;
  v18 = 0;
  memset(&v27, 0, sizeof(v27));
  v9 = *(a1 + 16);
  if (__darwin_check_fd_set_overflow(v9, &v27, 0))
  {
    *(v27.fds_bits + ((v9 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v9;
  }

  if (a3 == 2)
  {
    if (!__darwin_check_fd_set_overflow(v6, &v27, 0))
    {
      goto LABEL_21;
    }

    v12 = v6 >> 5;
    v13 = v27.fds_bits[v6 >> 5] | (1 << v6);
LABEL_20:
    v27.fds_bits[v12] = v13;
LABEL_21:
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = &v19;
    v11 = &v19;
    if (!__darwin_check_fd_set_overflow(v6, &v19, 0))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (a3 == 1)
  {
    if (!__darwin_check_fd_set_overflow(v6, &v27, 0))
    {
      goto LABEL_21;
    }

    v12 = v6 >> 5;
    v13 = v27.fds_bits[v6 >> 5] & ~(1 << v6);
    goto LABEL_20;
  }

  if (a3)
  {
    return 4294960591;
  }

  v10 = &v27;
  v11 = 0;
  if (__darwin_check_fd_set_overflow(v6, &v27, 0))
  {
LABEL_22:
    v10->fds_bits[v6 >> 5] |= 1 << v6;
  }

LABEL_23:
  if ((a4 & 0x80000000) != 0)
  {
    v14 = 0;
  }

  else
  {
    v17 = a4;
    LODWORD(v18) = 0;
    v14 = &v17;
  }

  if (*(a1 + 16) > v6)
  {
    v6 = *(a1 + 16);
  }

  while (1)
  {
    v15 = select(v6 + 1, &v27, v11, 0, v14);
    if ((v15 & 0x80000000) == 0)
    {
      break;
    }

    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result != 4)
    {
      return result;
    }
  }

  if (v15)
  {
    v16 = *(a1 + 16);
    if (!__darwin_check_fd_set_overflow(v16, &v27, 0) || ((*(v27.fds_bits + ((v16 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v16) & 1) == 0)
    {
      return 0;
    }

    return 4294960573;
  }

  return 4294960574;
}

uint64_t sub_23EB7D23C(char *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0;
  if (!sub_23EB7DE5C(a1, 0, &v11 + 1, &v11, 0, 0, 0))
  {
    if (a3 >= 0x10)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *a2 = 528;
      *(a2 + 2) = bswap32(v11) >> 16;
      *(a2 + 4) = bswap32(HIDWORD(v11));
      result = 0;
      if (!a4)
      {
        return result;
      }

      v9 = 16;
      goto LABEL_9;
    }

    return 4294960553;
  }

  if (a3 < 0x1C)
  {
    return 4294960553;
  }

  v10 = 0;
  result = sub_23EB7D978(a1, 0, &v12, &v10, &v11, 0, 0);
  if (!result)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *a2 = 7708;
    *(a2 + 2) = bswap32(v11) >> 16;
    *(a2 + 8) = v12;
    *(a2 + 24) = v10;
    result = 0;
    if (a4)
    {
      v9 = 28;
LABEL_9:
      *a4 = v9;
    }
  }

  return result;
}

uint64_t sub_23EB7D380(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30 || v1 == 2)
  {
    return bswap32(*(a1 + 2)) >> 16;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_23EB7D3A8(uint64_t result, unsigned int a2)
{
  v2 = *(result + 1);
  if (v2 == 30 || v2 == 2)
  {
    *(result + 2) = bswap32(a2) >> 16;
  }

  return result;
}

uint64_t sub_23EB7D3C8(int a1, int a2)
{
  v3 = a2 != 0;
  v4 = fcntl(a1, 3, 0);
  if (fcntl(a1, 4, v4 & 0xFFFFFFFB | (4 * v3)) != -1)
  {
    return 0;
  }

  if (*__error())
  {
    return *__error();
  }

  return 4294960596;
}

uint64_t sub_23EB7D444(int a1, int a2, int a3)
{
  v13 = a3;
  result = 4294960591;
  if ((a1 & 0x80000000) == 0 && (a2 - 4097) <= 1)
  {
    v12 = 0;
    if (a3 < 1)
    {
      if (a3 == -1)
      {
        return 0;
      }

      else
      {
        v7 = -a3;
        v11 = 4;
        if (sysctlbyname("kern.ipc.maxsockbuf", &v12, &v11, 0, 0) && (!*__error() || *__error()))
        {
          v12 = 0x40000;
        }

        v8 = (85 * v12 / 100 + 4095) & 0xFFFFF000;
        if (v8 >= v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = (85 * v12 / 100 + 4095) & 0xFFFFF000;
        }

        if (a3)
        {
          v8 = v9;
        }

        v12 = v8;
        do
        {
          result = setsockopt(a1, 0xFFFF, a2, &v12, 4u);
          if (!result)
          {
            break;
          }

          if (*__error())
          {
            result = *__error();
            if (!result)
            {
              return result;
            }
          }

          else
          {
            result = 4294960596;
          }

          v10 = v12;
          v12 -= 1024;
        }

        while (v10 > 33791);
      }
    }

    else
    {
      result = setsockopt(a1, 0xFFFF, a2, &v13, 4u);
      if (result)
      {
        if (*__error())
        {
          return *__error();
        }

        else
        {
          return 4294960596;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EB7D5D0(int a1, int a2)
{
  v3 = a2;
  result = setsockopt(a1, 0xFFFF, 4356, &v3, 4u);
  if (result)
  {
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 4294960596;
    }
  }

  return result;
}

uint64_t sub_23EB7D624(int a1, int a2, int a3)
{
  v7 = a3;
  if (a1 < 0)
  {
    return 4294960591;
  }

  if (a2 != 30 && a2 != 2 || !a3)
  {
    return 0;
  }

  v3 = a2 == 30;
  if (a2 == 30)
  {
    v4 = 41;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 125;
  }

  else
  {
    v5 = 25;
  }

  result = setsockopt(a1, v4, v5, &v7, 4u);
  if (result)
  {
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 4294960596;
    }
  }

  return result;
}

uint64_t sub_23EB7D6B0(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30)
  {
    v2 = 28;
  }

  else
  {
    v2 = 0;
  }

  if (v1 == 2)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

unsigned __int8 *sub_23EB7D6D0(unsigned __int8 *__src, void *__dst)
{
  v2 = __src[1];
  if (v2 == 2)
  {
    v3 = 16;
  }

  else
  {
    if (v2 != 30)
    {
      return __src;
    }

    v3 = 28;
  }

  return memcpy(__dst, __src, v3);
}

uint64_t sub_23EB7D704(int a1)
{
  v1 = 0;
  v4 = a1;
  while (!sub_23EB7D768(&v4, &byte_23EC21D18[v1], byte_23EC21D18[v1 + 4]))
  {
    v2 = v1 > 0x45;
    v1 += 5;
    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_23EB7D768(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 >= 8)
  {
    v3 = ((a3 - 8) >> 3) + 1;
    v4 = &a2[v3];
    v5 = &a1[v3];
    while (*a1 == *a2)
    {
      ++a2;
      ++a1;
      LOBYTE(a3) = a3 - 8;
      if (a3 <= 7u)
      {
        a1 = v5;
        a2 = v4;
        return !a3 || 0xFFu >> a3 >= (*a2 ^ *a1);
      }
    }

    return 0;
  }

  return !a3 || 0xFFu >> a3 >= (*a2 ^ *a1);
}

BOOL sub_23EB7D7E4(unsigned __int8 *a1, char a2)
{
  v4 = 0;
  while (!sub_23EB7D768(a1, *(&off_278C68EA8 + v4), *(&off_278C68EA8 + v4 + 8)))
  {
    v4 += 16;
    if (v4 == 400)
    {
      return 0;
    }
  }

  if ((a2 & 1) != 0 && !v4 || (a2 & 2) != 0 && v4 == 320)
  {
    return 0;
  }

  return (a2 & 4) == 0 || v4 != 304;
}

BOOL sub_23EB7D870(unsigned int a1)
{
  result = 0;
  v3 = bswap32(a1);
  if ((v3 & 0xFFFF0000) != 0xA9FE0000 && (v3 + 0x20000000) >> 24 >= 0x21 && (v3 & 0xFF000000) != 0x7F000000)
  {
    result = 0;
    if ((v3 & 0xFFFF0000) != 0xC0A80000 && (v3 & 0xFF000000) != 0xA000000 && (v3 & 0xFFF00000) != 0xAC100000)
    {
      result = 0;
      v4 = v3 >> 8;
      if (v4 != 12582914 && v4 != 12989284)
      {
        return v4 != 13303921;
      }
    }
  }

  return result;
}

uint64_t sub_23EB7D944(unsigned int *a1, unsigned int *a2)
{
  v2 = bswap64(*a1 | (*(a1 + 2) << 32));
  v3 = bswap64(*a2 | (*(a2 + 2) << 32));
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return (v5 - v6);
}

uint64_t sub_23EB7D978(char *a1, char a2, _OWORD *a3, unsigned int *a4, int *a5, unsigned int *a6, char **a7)
{
  v70 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294960591;
  }

  v12 = a1 + 1;
  if (*a1 != 91)
  {
    v12 = a1;
  }

  *v69 = v12;
  v68 = 0uLL;
  if (*v12 == 58)
  {
    v13 = *++v12;
    *v69 = v12;
    if (v13 != 58)
    {
      return 4294960554;
    }
  }

  v14 = 0;
  v15 = 0;
LABEL_7:
  v16 = 0;
  v17 = &v69[v14 - 16];
  v18 = v12;
  v19 = v15;
  while (2)
  {
    v15 = v19;
    v12 = v18 + 1;
    v20 = 1;
    while (1)
    {
      v21 = *(v12 - 1);
      if ((v21 - 37) <= 0x38 && ((1 << (v21 - 37)) & 0x100000000000401) != 0 || v21 == 0)
      {
        *v69 = v12;
        goto LABEL_32;
      }

      v21 = v21;
      if ((v21 - 97) < 6)
      {
        v21 = v21 - 32;
      }

      v24 = v21 - 48;
      if (v24 >= 0xA && (v21 - 65) > 5)
      {
        break;
      }

      v20 = v16 >> 12;
      if ((v16 >> 12))
      {
        return 4294960586;
      }

      ++v12;
      v16 = (16 * v16) | byte_23EC21DF0[v24];
    }

    if (v21 == 58)
    {
      if (v20)
      {
        v18 = v12;
        v19 = &v69[v14 - 16];
        if (!v15)
        {
          continue;
        }

        return 4294960554;
      }

      *v69 = v12;
      if (*v12)
      {
        if (v14 <= 0xE)
        {
          v69[v14 - 16] = BYTE1(v16);
          v14 += 2;
          v17[1] = v16;
          goto LABEL_7;
        }

        return 4294960545;
      }

      return 4294960546;
    }

    break;
  }

  *v69 = v12;
  if ((a2 & 8) == 0 && v21 == 46 && v14 <= 0xC)
  {
    v32 = a7;
    v31 = sub_23EB7DFF8(v18, &v69[v14 - 16], v69);
    if (v31)
    {
      return v31;
    }

    v17 += 4;
    v12 = ++*v69;
    a7 = v32;
    if (!v15)
    {
      goto LABEL_48;
    }

LABEL_36:
    if (v17 < v69)
    {
      v26 = v17 - v15;
      if (v17 - v15 >= 1)
      {
        v27 = v26 & 0x7FFFFFFF;
        v28 = (v26 + 1) - 1;
        v29 = &v68 + 15;
        v30 = &v15[v27 - 1];
        do
        {
          *v29-- = *v30;
          *v30-- = 0;
          --v28;
        }

        while (v28);
        v12 = *v69;
      }

      goto LABEL_50;
    }

    return 4294960545;
  }

LABEL_32:
  if ((v20 & 1) == 0)
  {
    if (v17 + 2 > v69)
    {
      return 4294960545;
    }

    *v17 = bswap32(v16) >> 16;
    v17 += 2;
  }

  if (v15)
  {
    goto LABEL_36;
  }

LABEL_48:
  if (v17 != v69)
  {
    return 4294960546;
  }

LABEL_50:
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = v12 - 1;
  v41 = a2 & 1;
  v42 = a2 & 4;
LABEL_51:
  while (2)
  {
    v43 = *v40;
    while (1)
    {
      while (v43 == 47)
      {
        if (v37 | a2 & 2)
        {
          v61 = v37 == 0;
          goto LABEL_105;
        }

        v44 = *++v40;
        v43 = v44;
        if ((v44 - 48) <= 9)
        {
          do
          {
            v38 = v43 + 10 * v38 - 48;
            v45 = *++v40;
            v43 = v45;
          }

          while ((v45 - 48) < 0xA);
        }

        v37 = 1;
        if (v38 >= 0x81)
        {
          return 4294960586;
        }
      }

      if (v43 == 93)
      {
        if (v39)
        {
          return 4294960554;
        }

        ++v40;
        v39 = 1;
        goto LABEL_51;
      }

      if (v43 != 58)
      {
        break;
      }

      if (v35 | v41)
      {
        v61 = v35 == 0;
LABEL_105:
        if (v61)
        {
          return 4294960560;
        }

        else
        {
          return 4294960554;
        }
      }

      v46 = *++v40;
      v43 = v46;
      if ((v46 - 48) <= 9)
      {
        do
        {
          v36 = v43 + 10 * v36 - 48;
          v47 = *++v40;
          v43 = v47;
        }

        while ((v47 - 48) < 0xA);
      }

      v31 = 4294960586;
      v35 = 1;
      if (v36 >= 0x10000)
      {
        return v31;
      }
    }

    if (v43 == 37)
    {
      if (v34 | v42)
      {
        v61 = v34 == 0;
        goto LABEL_105;
      }

      for (i = 0; ; ++i)
      {
        v50 = *++v40;
        v49 = v50;
        v51 = (1 << (v50 - 47)) & 0x400000000801;
        v52 = (v50 - 47) > 0x2E || v51 == 0;
        v53 = !v52 || v49 == 0;
        if (v53 || i == 63)
        {
          break;
        }

        v69[i] = v49;
      }

      v63 = a3;
      v64 = a4;
      v65 = a5;
      v66 = a6;
      v67 = a7;
      v69[i] = 0;
      v54 = v39;
      v55 = v41;
      v56 = v42;
      v57 = v35;
      v33 = if_nametoindex(v69);
      v35 = v57;
      v42 = v56;
      v41 = v55;
      v39 = v54;
      if (v33)
      {
        goto LABEL_88;
      }

      v58 = v69[0];
      if (v69[0] - 48 > 9)
      {
        v33 = 0;
        v59 = v69;
      }

      else
      {
        v33 = 0;
        v59 = v69;
        do
        {
          v33 = v58 + 10 * v33 - 48;
          v60 = *++v59;
          v58 = v60;
        }

        while ((v60 - 48) < 0xA);
      }

      if (!v58 && v59 != v69 && (v59 - v69) < 11)
      {
LABEL_88:
        v34 = 1;
        a6 = v66;
        a7 = v67;
        a4 = v64;
        a5 = v65;
        a3 = v63;
        continue;
      }

      return 4294960554;
    }

    break;
  }

  if (a3)
  {
    *a3 = v68;
  }

  if (a4 && v34)
  {
    *a4 = v33;
  }

  if (a5 && v35)
  {
    *a5 = v36;
  }

  if (a6 && v37)
  {
    *a6 = v38;
  }

  v31 = 0;
  if (a7)
  {
    *a7 = v40;
  }

  return v31;
}