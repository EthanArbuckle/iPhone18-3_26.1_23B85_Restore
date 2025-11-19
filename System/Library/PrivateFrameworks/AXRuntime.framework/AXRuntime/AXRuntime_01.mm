CFTypeRef __AXConvertOutgoingValue_block_invoke(uint64_t a1, void *a2)
{
  v2 = _AXCreateAXUIElementWithElement(a2);

  return CFAutorelease(v2);
}

uint64_t __AXConvertOutgoingValue_block_invoke_19(uint64_t a1)
{
  v2 = AXConvertOutgoingValue(*(a1 + 40));
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __AXConvertOutgoingValue_block_invoke_2(uint64_t a1)
{
  v2 = AXConvertOutgoingValue(*(a1 + 40));
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x1EEE66BB8]();
}

Class __getBKSHIDEventAuthenticationMessageClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!BackBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __BackBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E80D3D88;
    v5 = 0;
    BackBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BackBoardServicesLibraryCore_frameworkLibrary)
  {
    __getBKSHIDEventAuthenticationMessageClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("BKSHIDEventAuthenticationMessage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBKSHIDEventAuthenticationMessageClass_block_invoke_cold_1();
  }

  getBKSHIDEventAuthenticationMessageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BackBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BackBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t AXSerializeCFType(void *a1, uint64_t a2, int a3, void **a4, void *a5, size_t *a6)
{
  *a5 = 0;
  SerializeMethodForType = getSerializeMethodForType(a1);
  if (!SerializeMethodForType)
  {
    return 4294942095;
  }

  v12 = SerializeMethodForType;
  v13 = a3 << 12;
  if (!a3)
  {
    v13 = 81920;
  }

  v14 = v13;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = v13;
  v15 = *a4;
  if (*a4)
  {
    v20 = *a4;
    v14 = *a6;
  }

  else
  {
    v15 = mmap(0, v13, 3, 4098, -1, 0);
    v20 = v15;
    if (v15 == -1)
    {
      return 4294942096;
    }
  }

  cf = 0;
  *v15 = 1634036833;
  v21 = v15 + 4;
  v22 = v14;
  v16 = v12(a1, &v20);
  if (v16 && !*a4)
  {
    munmap(v20, v22);
    *a4 = 0;
    *a6 = 0;
  }

  else
  {
    v17 = v20;
    v18 = v21;
    *a4 = v20;
    *a6 = v22;
    *a5 = v18 - v17;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t (*getSerializeMethodForType(const void *a1))(void *a1, uint64_t a2)
{
  v1 = CFGetTypeID(a1);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    TypeID = CFUUIDGetTypeID();
  }

  else
  {
    NSClassFromString(@"UIFont");
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    TypeID = CTFontGetTypeID();
  }

  v1 = TypeID;
LABEL_6:
  if (getSerializeMethodForType_onceToken != -1)
  {
    getSerializeMethodForType_cold_1();
  }

  if (AXIsAXAttributedString())
  {
    return cfAttributedStringSerialize;
  }

  v4 = getSerializeMethodForType_SerializeLookup;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v1];

  return CFDictionaryGetValue(v4, v5);
}

uint64_t SerializeCFType(void *a1, void **a2, size_t *a3)
{
  *a3 = 0;
  *a2 = 0;
  return AXSerializeCFType(a1, a2, 0, a2, &v4, a3);
}

uint64_t AXUnserializeCFType(uint64_t a1, uint64_t a2, unsigned int *a3, unint64_t a4, void *a5)
{
  if (a4 > 7)
  {
    *a5 = 0;
    v14 = *a3;
    v15 = *a3 != 1634036833 && *a3 != 1870095726;
    v17 = a3[1];
    v16 = v17;
    v20 = a3 + 1;
    v19 = v17;
    if (v14 != 1634036833 && v14 != 1870095726)
    {
      v16 = bswap32(v19);
      v14 = bswap32(v14);
    }

    if (v16 <= 0xF)
    {
      return (sUnserializeFunctions[v16])(a1, &v20, a4 - 4, a5, v15, v14 == 1870095726);
    }

    else
    {
      return (bogusUnserialize)(a1, &v20, a4 - 4, a5, v15, v14 == 1870095726);
    }
  }

  else
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AXUnserializeCFType_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    return 4294942095;
  }
}

void _logAndReturn(uint64_t a1)
{
  v2 = AXRuntimeLogSerialization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    _logAndReturn_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void __getSerializeMethodForType_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  getSerializeMethodForType_SerializeLookup = Mutable;
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CFStringGetTypeID()];
  CFDictionarySetValue(Mutable, v1, cfStringSerialize);
  v2 = getSerializeMethodForType_SerializeLookup;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CFNumberGetTypeID()];
  CFDictionarySetValue(v2, v3, cfNumberSerialize);
  v4 = getSerializeMethodForType_SerializeLookup;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CFBooleanGetTypeID()];
  CFDictionarySetValue(v4, v5, cfBooleanSerialize);
  v6 = getSerializeMethodForType_SerializeLookup;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:AXUIElementGetTypeID()];
  CFDictionarySetValue(v6, v7, axUIElementSerialize);
  v8 = getSerializeMethodForType_SerializeLookup;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:AXValueGetTypeID()];
  CFDictionarySetValue(v8, v9, axValueSerialize);
  v10 = getSerializeMethodForType_SerializeLookup;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CFArrayGetTypeID()];
  CFDictionarySetValue(v10, v11, cfArraySerialize);
  v12 = getSerializeMethodForType_SerializeLookup;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CFDictionaryGetTypeID()];
  CFDictionarySetValue(v12, v13, cfDictionarySerialize);
  v14 = getSerializeMethodForType_SerializeLookup;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CFDataGetTypeID()];
  CFDictionarySetValue(v14, v15, cfDataSerialize);
  v16 = getSerializeMethodForType_SerializeLookup;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CFDateGetTypeID()];
  CFDictionarySetValue(v16, v17, cfDateSerialize);
  v18 = getSerializeMethodForType_SerializeLookup;
  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CFURLGetTypeID()];
  CFDictionarySetValue(v18, v19, cfURLSerialize);
  v20 = getSerializeMethodForType_SerializeLookup;
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CFUUIDGetTypeID()];
  CFDictionarySetValue(v20, v21, cfUUIDSerialize);
  v22 = getSerializeMethodForType_SerializeLookup;
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CFNullGetTypeID()];
  CFDictionarySetValue(v22, v23, cfNullSerialize);
  v24 = getSerializeMethodForType_SerializeLookup;
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CFAttributedStringGetTypeID()];
  CFDictionarySetValue(v24, v25, cfAttributedStringSerialize);
  v26 = getSerializeMethodForType_SerializeLookup;
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CGColorGetTypeID()];
  CFDictionarySetValue(v26, v27, cgColorSerialize);
  v28 = getSerializeMethodForType_SerializeLookup;
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CGPathGetTypeID()];
  CFDictionarySetValue(v28, v29, cgPathSerialize);
  v30 = getSerializeMethodForType_SerializeLookup;
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:CTFontGetTypeID()];

  CFDictionarySetValue(v30, v31, ctFontSerialize);
}

uint64_t cfStringSerialize(const __CFString *a1, vm_address_t *a2)
{
  Length = CFStringGetLength(a1);
  if (!reserveSpace(a2, 2 * Length + 12))
  {
    v5 = a2[1];
    *v5 = 0;
    *(v5 + 4) = Length;
    v6 = (a2[1] + 12);
    a2[1] = v6;
    v8.location = 0;
    v8.length = Length;
    CFStringGetCharacters(a1, v8, v6);
    a2[1] += 2 * Length;
  }

  return 0;
}

uint64_t cfNumberSerialize(const __CFNumber *a1, vm_address_t *a2)
{
  Type = CFNumberGetType(a1);
  ByteSize = CFNumberGetByteSize(a1);
  result = reserveSpace(a2, ByteSize + 16);
  if (!result)
  {
    v7 = a2[1];
    *v7 = 1;
    *(v7 + 4) = Type;
    *(v7 + 8) = ByteSize;
    v8 = (a2[1] + 16);
    a2[1] = v8;
    if (CFNumberGetValue(a1, Type, v8))
    {
      result = 0;
      a2[1] += ByteSize;
    }

    else
    {
      return 4294942096;
    }
  }

  return result;
}

uint64_t cfBooleanSerialize(const __CFBoolean *a1, vm_address_t *a2)
{
  Value = CFBooleanGetValue(a1);
  result = reserveSpace(a2, 5);
  if (!result)
  {
    v5 = a2[1];
    *v5 = 2;
    *(v5 + 4) = Value;
    a2[1] += 5;
  }

  return result;
}

__n128 axUIElementSerialize(uint64_t a1, vm_address_t *a2)
{
  v3 = *(a1 + 16);
  v6 = *(a1 + 20);
  if (!reserveSpace(a2, 24))
  {
    v5 = a2[1];
    *v5 = 10;
    *(v5 + 4) = v3;
    result = v6;
    *(v5 + 8) = v6;
    a2[1] += 24;
  }

  return result;
}

uint64_t axValueSerialize(_DWORD *a1, vm_address_t *a2)
{
  v5 = a1[4];
  v4 = a1[5];
  v6 = reserveSpace(a2, v4 + 12);
  if (!v6)
  {
    v7 = a2[1];
    *v7 = 11;
    v7[1] = v5;
    v7[2] = v4;
    v8 = (a2[1] + 12);
    a2[1] = v8;
    memmove(v8, a1 + 6, v4);
    a2[1] += v4;
  }

  return v6;
}

uint64_t cfArraySerialize(const __CFArray *a1, uint64_t a2)
{
  Count = CFArrayGetCount(a1);
  v5 = *(a2 + 32);
  if (v5)
  {
    if (CFDictionaryGetValue(v5, a1))
    {
      return 4294942095;
    }

    Mutable = *(a2 + 32);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    *(a2 + 32) = Mutable;
  }

  CFDictionarySetValue(Mutable, a1, 1);
  v6 = reserveSpace(a2, 12);
  if (!v6)
  {
    v9 = *(a2 + 8);
    *v9 = 3;
    *(v9 + 4) = Count;
    *(a2 + 8) += 12;
    if (Count < 1)
    {
      v6 = 0;
    }

    else
    {
      v10[0] = 0;
      v10[1] = a2;
      v11.location = 0;
      v11.length = Count;
      CFArrayApplyFunction(a1, v11, serializeArrayApplier, v10);
      v6 = LODWORD(v10[0]);
    }

    CFDictionaryRemoveValue(*(a2 + 32), a1);
  }

  return v6;
}

uint64_t cfDictionarySerialize(const __CFDictionary *a1, uint64_t a2)
{
  Count = CFDictionaryGetCount(a1);
  v5 = *(a2 + 32);
  if (v5)
  {
    if (CFDictionaryGetValue(v5, a1))
    {
      return 4294942095;
    }

    Mutable = *(a2 + 32);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    *(a2 + 32) = Mutable;
  }

  CFDictionarySetValue(Mutable, a1, 1);
  v6 = reserveSpace(a2, 12);
  if (!v6)
  {
    v9 = *(a2 + 8);
    *v9 = 4;
    *(v9 + 4) = Count;
    *(a2 + 8) += 12;
    if (Count < 1)
    {
      v6 = 0;
    }

    else
    {
      v10[0] = 0;
      v10[1] = a2;
      CFDictionaryApplyFunction(a1, serializeDictApplier, v10);
      v6 = LODWORD(v10[0]);
    }

    CFDictionaryRemoveValue(*(a2 + 32), a1);
  }

  return v6;
}

uint64_t cfDataSerialize(const __CFData *a1, vm_address_t *a2)
{
  Length = CFDataGetLength(a1);
  v5 = reserveSpace(a2, Length + 12);
  if (!v5)
  {
    v6 = a2[1];
    *v6 = 5;
    *(v6 + 4) = Length;
    v7 = (a2[1] + 12);
    a2[1] = v7;
    v9.location = 0;
    v9.length = Length;
    CFDataGetBytes(a1, v9, v7);
    a2[1] += Length;
  }

  return v5;
}

uint64_t cfDateSerialize(uint64_t a1, vm_address_t *a2)
{
  v3 = MEMORY[0x1BFB5C030]();
  result = reserveSpace(a2, 12);
  if (!result)
  {
    v5 = a2[1];
    *v5 = 6;
    *(v5 + 4) = v3;
    a2[1] += 12;
  }

  return result;
}

uint64_t cfURLSerialize(const __CFURL *a1, vm_address_t *a2)
{
  v4 = CFURLGetBaseURL(a1);
  if (v4)
  {
    v5 = CFURLGetString(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = reserveSpace(a2, 5);
  if (!v6)
  {
    if (v5)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = a2[1];
    *v8 = 7;
    *(v8 + 4) = v7;
    a2[1] += 5;
    v9 = CFURLGetString(a1);
    cfStringSerialize(v9, a2);
    if (v5)
    {
      cfStringSerialize(v5, a2);
    }
  }

  return v6;
}

uint64_t cfUUIDSerialize(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [a1 UUIDString];
    v5 = CFUUIDCreateFromString(*MEMORY[0x1E695E480], v4);
    a1 = CFAutorelease(v5);
  }

  v6 = reserveSpace(a2, 4);
  if (!v6)
  {
    **(a2 + 8) = 14;
    *(a2 + 8) += 4;
    v9 = CFUUIDGetUUIDBytes(a1);
    v7 = CFDataCreate(*MEMORY[0x1E695E480], &v9.byte0, 16);
    v6 = cfDataSerialize(v7, a2);
    CFRelease(v7);
  }

  return v6;
}

uint64_t cfNullSerialize(uint64_t a1, uint64_t a2)
{
  result = reserveSpace(a2, 4);
  if (!result)
  {
    **(a2 + 8) = 8;
    *(a2 + 8) += 4;
  }

  return result;
}

uint64_t cfAttributedStringSerialize(void *a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (AXIsAXAttributedString())
  {
    a1 = AXGetCFAttributedStringFromAXAttributedString(a1);
  }

  NumberOfRuns = _CFAttributedStringGetNumberOfRuns();
  if (NumberOfRuns < 0)
  {
    return 4294942096;
  }

  v7 = NumberOfRuns;
  v5 = reserveSpace(a2, (16 * NumberOfRuns) | 0xC);
  if (!v5)
  {
    v8 = *(a2 + 8);
    *v8 = 9;
    *(v8 + 4) = v7;
    *(a2 + 8) += 12;
    if (v7)
    {
      v9 = malloc_type_malloc(8 * v7, 0x6004044C4A2DFuLL);
      MEMORY[0x1EEE9AC00]();
      _CFAttributedStringGetRuns();
      memmove(*(a2 + 8), &v15[-2 * v7], 16 * v7);
      *(a2 + 8) += 16 * v7;
    }

    else
    {
      v9 = 0;
    }

    String = CFAttributedStringGetString(a1);
    cfStringSerialize(String, a2);
    if (v9)
    {
      if (v7)
      {
        v11 = 1;
        v12 = v9;
        do
        {
          v13 = *v12++;
          v14 = cfDictionarySerialize(v13, a2);
          v5 = v14;
          if (v11 >= v7)
          {
            break;
          }

          ++v11;
        }

        while (!v14);
      }

      else
      {
        v5 = 0;
      }

      if (v7)
      {
        free(v9);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t cgColorSerialize(CGColor *a1, vm_address_t *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!CGColorGetColorSpace(a1))
  {
    return 4294942096;
  }

  ProcessColorModel = CGColorSpaceGetProcessColorModel();
  if (ProcessColorModel > 2)
  {
    return 4294942095;
  }

  v6 = ProcessColorModel;
  NumberOfComponents = CGColorGetNumberOfComponents(a1);
  v8 = 8 * NumberOfComponents;
  result = reserveSpace(a2, v8 + 12);
  if (!result)
  {
    Components = CGColorGetComponents(a1);
    v10 = MEMORY[0x1EEE9AC00](Components);
    v13 = v18 - ((v11 + 15) & 0xFFFFFFFF0);
    if (NumberOfComponents)
    {
      v14 = (v18 - ((v11 + 15) & 0xFFFFFFFF0));
      do
      {
        v15 = *v10++;
        *v14++ = v15;
        --v12;
      }

      while (v12);
    }

    v16 = a2[1];
    *v16 = 12;
    v16[1] = v6;
    v16[2] = NumberOfComponents;
    v17 = (a2[1] + 12);
    a2[1] = v17;
    memmove(v17, v13, v8);
    a2[1] += v8;
    return 0;
  }

  return result;
}

uint64_t cgPathSerialize(const CGPath *a1, vm_address_t *a2)
{
  Mutable = CFDataCreateMutable(0, 0);
  CGPathApply(a1, Mutable, __encodePathElementIntoData);
  Length = CFDataGetLength(Mutable);
  if (!reserveSpace(a2, Length + 12))
  {
    v6 = a2[1];
    *v6 = 13;
    *(v6 + 4) = Length;
    v7 = (a2[1] + 12);
    a2[1] = v7;
    v9.location = 0;
    v9.length = Length;
    CFDataGetBytes(Mutable, v9, v7);
    a2[1] += Length;
  }

  CFRelease(Mutable);
  return 0;
}

uint64_t ctFontSerialize(const __CTFont *a1, uint64_t a2)
{
  NSClassFromString(@"UIFont");
  objc_opt_isKindOfClass();
  Size = CTFontGetSize(a1);
  result = reserveSpace(a2, 8);
  if (!result)
  {
    **(a2 + 8) = (Size << 32) | 0xF;
    *(a2 + 8) += 8;
    v6 = CTFontCopyFontDescriptor(a1);
    v7 = CTFontDescriptorCopyAttributes(v6);
    v8 = cfDictionarySerialize(v7, a2);
    CFRelease(v6);

    return v8;
  }

  return result;
}

void serializeArrayApplier(__CFString *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (!*a2)
  {
    SerializeMethodForType = getSerializeMethodForType(a1);
    if (!SerializeMethodForType)
    {
      a1 = &stru_1F3E63FB0;
      v6 = getSerializeMethodForType(&stru_1F3E63FB0);
      if (!v6)
      {
        v7 = 9;
        goto LABEL_6;
      }

      SerializeMethodForType = v6;
    }

    v7 = SerializeMethodForType(a1, *(a2 + 8));
LABEL_6:
    *a2 = v7;
  }

  objc_autoreleasePoolPop(v4);
}

void serializeDictApplier(uint64_t a1, __CFString *a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!*a3)
  {
    SerializeMethodForType = getSerializeMethodForType(a1);
    if (SerializeMethodForType)
    {
      v8 = SerializeMethodForType(a1, *(a3 + 8));
      *a3 = v8;
      if (v8)
      {
        goto LABEL_10;
      }

      v9 = getSerializeMethodForType(a2);
      if (!v9)
      {
        a2 = &stru_1F3E63FB0;
        v10 = getSerializeMethodForType(&stru_1F3E63FB0);
        if (!v10)
        {
          v11 = 9;
          goto LABEL_9;
        }

        v9 = v10;
      }

      v11 = v9(a2, *(a3 + 8));
    }

    else
    {
      v11 = -25201;
    }

LABEL_9:
    *a3 = v11;
  }

LABEL_10:

  objc_autoreleasePoolPop(v6);
}

void __encodePathElementIntoData(__CFData *a1, unsigned int *a2)
{
  *bytes = *a2;
  CFDataAppendBytes(a1, bytes, 4);
  v4 = *a2;
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_1BF7DE6D0[v4];
  }

  *v12 = v5;
  CFDataAppendBytes(a1, v12, 4);
  if (*v12)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (*(a2 + 1) + v6);
      v9 = *v8;
      *v10 = v8[1];
      *v11 = v9;
      CFDataAppendBytes(a1, v11, 8);
      CFDataAppendBytes(a1, v10, 8);
      ++v7;
      v6 += 16;
    }

    while (v7 < *v12);
  }
}

uint64_t bogusUnserialize()
{
  v0 = AXRuntimeLogSerialization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    bogusUnserialize_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  return 4294942095;
}

uint64_t cfStringUnserialize(const __CFAllocator *a1, uint64_t *a2, unint64_t a3, CFStringRef *a4, int a5)
{
  if (a3 <= 0xB)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cfStringUnserialize_cold_4(v5, v6, v7, v8, v9, v10, v11, v12);
    }

LABEL_19:

    return 4294942096;
  }

  v16 = *a2;
  if (a5)
  {
    v17 = bswap64(*(v16 + 4));
    *(v16 + 4) = v17;
  }

  else
  {
    v17 = *(v16 + 4);
  }

  v18 = 2 * v17;
  v19 = HIDWORD(v17) != 0;
  if ((2 * v17) >> 32)
  {
    v19 = 1;
  }

  if (HIDWORD(a3))
  {
    v19 = 1;
  }

  if ((v18 & 0xFFFFFFFC) > 0xFFFFFFF3uLL || v19)
  {
    cfStringUnserialize_cold_3();
    return 4294942096;
  }

  if (a3 - 12 < v18)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cfStringUnserialize_cold_2(v5, v21, v22, v23, v24, v25, v26, v27);
    }

    goto LABEL_19;
  }

  v29 = (v18 + 12) & 0xFFFFFFFE;
  v30 = (v16 + 12);
  if (a5 && v17 >= 1)
  {
    v31 = v17;
    v32 = (v16 + 12);
    do
    {
      *v32 = bswap32(*v32) >> 16;
      ++v32;
      --v31;
    }

    while (v31);
  }

  *a4 = CFStringCreateWithCharacters(a1, v30, v17);
  v33 = *a2;
  *a2 += v29;
  v34 = *a4;
  if (__CFADD__(v29, v33))
  {
    cfStringUnserialize_cold_1(v34 == 0, v34, a4);
    return 4294942096;
  }

  if (!v34)
  {
    _logAndReturn("string: unable to create");
    return 4294942096;
  }

  return 0;
}

uint64_t cfNumberUnserialize(const __CFAllocator *a1, unint64_t *a2, unint64_t a3, CFNumberRef *a4, int a5)
{
  v48[3] = *MEMORY[0x1E69E9840];
  if (a3 <= 0xF)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cfNumberUnserialize_cold_5(v5, v6, v7, v8, v9, v10, v11, v12);
    }

LABEL_14:

    return 4294942096;
  }

  v16 = *a2;
  if (!a5)
  {
    v17 = *(v16 + 8);
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cfNumberUnserialize_cold_4(v5, v25, v26, v27, v28, v29, v30, v31);
    }

    goto LABEL_14;
  }

  *(v16 + 4) = bswap32(*(v16 + 4));
  v17 = bswap64(*(v16 + 8));
  *(v16 + 8) = v17;
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (HIDWORD(a3) || v17 >= 0xFFFFFFF0)
  {
    cfNumberUnserialize_cold_3();
    return 4294942096;
  }

  if (v17 > a3 - 16)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cfNumberUnserialize_cold_2(v5, v18, v19, v20, v21, v22, v23, v24);
    }

    goto LABEL_14;
  }

  if (a5 && v17 >= 2)
  {
    v33 = (v16 + 16);
    if ((v17 & 3) != 0)
    {
      v34 = v17 >> 1;
      do
      {
        *v33 = bswap32(*v33) >> 16;
        v33 = (v33 + 2);
        --v34;
      }

      while (v34);
    }

    else
    {
      v35 = v17 >> 2;
      do
      {
        *v33 = bswap32(*v33);
        ++v33;
        --v35;
      }

      while (v35);
    }
  }

  v36 = *(v16 + 4);
  switch(v36)
  {
    case 1u:
    case 7u:
      if (v17)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 2u:
    case 8u:
      if (v17 >= 2)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 3u:
    case 5u:
    case 9u:
    case 0xCu:
      if (v17 >= 4)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 4u:
    case 6u:
    case 0xAu:
    case 0xBu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
      if (v17 >= 8)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    case 0x10u:
      if (v17 > 7)
      {
        goto LABEL_38;
      }

LABEL_34:
      _logAndReturn("number: buffer not large enought");
      return 4294942096;
    default:
      if (v36 >= 0x11)
      {
        v5 = AXRuntimeLogSerialization();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          cfNumberUnserialize_cold_1(v5, v37, v38, v39, v40, v41, v42, v43);
        }

        goto LABEL_14;
      }

LABEL_38:
      MEMORY[0x1EEE9AC00](a1);
      v44 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      memmove((v44 & 0xFFFFFFFFFFFFFFE0), (*a2 + 16), *(v16 + 8));
      *a4 = CFNumberCreate(a1, *(v16 + 4), (v44 & 0xFFFFFFFFFFFFFFE0));
      v45 = *a2;
      *a2 += v17 + 16;
      v46 = *a4;
      if (v45 > -17 - v17)
      {
        if (v46)
        {
          CFRelease(v46);
          *a4 = 0;
        }

        v47 = "number: could not increment pointer";
      }

      else
      {
        if (v46)
        {
          return 0;
        }

        v47 = "number: unable to create";
      }

      _logAndReturn(v47);
      result = 4294942096;
      break;
  }

  return result;
}

uint64_t cfBooleanUnserialize(uint64_t a1, unint64_t *a2, unint64_t a3, const void **a4)
{
  if (a3 <= 4)
  {
    v4 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      cfBooleanUnserialize_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    goto LABEL_4;
  }

  if (*(*a2 + 4))
  {
    v15 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v15 = MEMORY[0x1E695E4C0];
  }

  *a4 = CFRetain(*v15);
  v16 = *a2;
  *a2 += 5;
  if (v16 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    cfBooleanUnserialize_cold_1(a4, &v17);
    v4 = v17;
LABEL_4:

    return 4294942096;
  }

  return 0;
}

uint64_t cfArrayUnserialize(CFAllocatorRef allocator, unint64_t *a2, unint64_t a3, const void **a4, uint64_t a5, uint64_t a6)
{
  if (a3 <= 0xB)
  {
    v6 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      cfArrayUnserialize_cold_6(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    goto LABEL_42;
  }

  v19 = *a2;
  if (a5)
  {
    v20 = bswap64(*(v19 + 4));
    *(v19 + 4) = v20;
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_11:
    *a4 = CFArrayCreate(allocator, 0, 0, MEMORY[0x1E695E9C0]);
    v30 = *a2;
    *a2 += 12;
    if (v30 < 0xFFFFFFFFFFFFFFF4)
    {
      v31 = 0;
      goto LABEL_39;
    }

    cfArrayUnserialize_cold_5(a4);
    return 4294942096;
  }

  v20 = *(v19 + 4);
  if (!v20)
  {
    goto LABEL_11;
  }

LABEL_6:
  value = 0;
  v21 = *a2;
  *a2 += 12;
  if (v21 >= 0xFFFFFFFFFFFFFFF4)
  {
    v6 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      cfArrayUnserialize_cold_3(v6, v54, v55, v56, v57, v58, v59, v60);
    }

LABEL_42:

    return 4294942096;
  }

  v22 = a3 - 12;
  if (((a3 - 12) | a3) >> 32)
  {
    v6 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      cfArrayUnserialize_cold_1(v6, v23, v24, v25, v26, v27, v28, v29);
    }

    goto LABEL_42;
  }

  theArray = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (v20 < 1)
  {
LABEL_38:
    v31 = 0;
    *a4 = theArray;
    goto LABEL_39;
  }

  v32 = 0;
  while (1)
  {
    if (v22 <= 3)
    {
      _logAndReturn("array: element: unexpected buffer size");
LABEL_33:
      v31 = 4294942096;
      goto LABEL_34;
    }

    v33 = *a2;
    v34 = a5 ? bswap32(*v33) : *v33;
    v35 = v34 <= 0xF ? (sUnserializeFunctions[v34])(allocator, a2, v22, &value, a5, a6) : (bogusUnserialize)(allocator, a2, v22, &value, a5, a6);
    v31 = v35;
    if (v35 || !value)
    {
      break;
    }

    v36 = *a2 - v33;
    v37 = v22 - v36;
    if (((v22 - v36) | v36 | v22) >> 32)
    {
      v38 = AXRuntimeLogSerialization();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        cfArrayUnserialize_cold_2(v38, v39, v40, v41, v42, v43, v44, v45);
      }

      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      goto LABEL_33;
    }

    CFArrayInsertValueAtIndex(theArray, v32, value);
    if (value)
    {
      CFRelease(value);
    }

    value = 0;
    ++v32;
    v22 = v37;
    if (v20 == v32)
    {
      goto LABEL_38;
    }
  }

  if (!v35)
  {
    goto LABEL_38;
  }

LABEL_34:
  if (theArray)
  {
    CFRelease(theArray);
  }

LABEL_39:
  if (!*a4)
  {
    v6 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      cfArrayUnserialize_cold_4(v6, v46, v47, v48, v49, v50, v51, v52);
    }

    goto LABEL_42;
  }

  return v31;
}

uint64_t cfDictionaryUnserialize(CFAllocatorRef allocator, unint64_t *a2, unint64_t a3, const void **a4, uint64_t a5, uint64_t a6)
{
  if (a3 <= 0xB)
  {
    v6 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      cfDictionaryUnserialize_cold_7(v6, v7, v8, v9, v10, v11, v12, v13);
    }

LABEL_56:

    return 4294942096;
  }

  v16 = a4;
  v19 = *a2;
  if (!a5)
  {
    v20 = *(v19 + 4);
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_11:
    *a4 = CFDictionaryCreate(allocator, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v30 = *a2;
    *a2 += 12;
    if (v30 >= 0xFFFFFFFFFFFFFFF4)
    {
      cfDictionaryUnserialize_cold_6(v16);
      return 4294942096;
    }

    v31 = 0;
    goto LABEL_53;
  }

  v20 = bswap64(*(v19 + 4));
  *(v19 + 4) = v20;
  if (!v20)
  {
    goto LABEL_11;
  }

LABEL_6:
  value = 0;
  v21 = *a2;
  *a2 += 12;
  if (v21 >= 0xFFFFFFFFFFFFFFF4)
  {
    cfDictionaryUnserialize_cold_4();
    return 4294942096;
  }

  v22 = a3 - 12;
  if (((a3 - 12) | a3) >> 32)
  {
    v6 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      cfDictionaryUnserialize_cold_1(v6, v23, v24, v25, v26, v27, v28, v29);
    }

    goto LABEL_56;
  }

  Mutable = CFDictionaryCreateMutable(allocator, v20, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v33 = Mutable;
  if (v20 < 1)
  {
LABEL_52:
    v31 = 0;
    *v16 = v33;
  }

  else
  {
    theDict = Mutable;
    v70 = v16;
    while (1)
    {
      if (v22 <= 3)
      {
        _logAndReturn("dictionary: element: unexpected buffer size");
        return 4294942096;
      }

      v34 = *a2;
      v35 = a5 ? bswap32(*v34) : *v34;
      v36 = v35 <= 0xF ? (sUnserializeFunctions[v35])(allocator, a2, v22, &value, a5, a6) : (bogusUnserialize)(allocator, a2, v22, &value, a5, a6);
      v31 = v36;
      if (v36)
      {
        break;
      }

      v37 = value;
      if (!value)
      {
        break;
      }

      v38 = *a2;
      v39 = *a2 - v34;
      v40 = v22 - v39;
      if (((v22 - v39) | v39 | v22) >> 32)
      {
        v41 = 0;
      }

      else
      {
        v41 = v40 > 3;
      }

      if (!v41)
      {
        v45 = AXRuntimeLogSerialization();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          cfDictionaryUnserialize_cold_3(v45, v47, v48, v49, v50, v51, v52, v53);
        }

LABEL_46:

        if (value)
        {
          CFRelease(value);
          value = 0;
        }

        v31 = 4294942096;
        v33 = theDict;
        v16 = v70;
        goto LABEL_49;
      }

      if (a5)
      {
        v42 = bswap32(*v38);
      }

      else
      {
        v42 = *v38;
      }

      if (v42 <= 0xF)
      {
        v43 = (sUnserializeFunctions[v42])(allocator, a2, v40, &value, a5, a6);
      }

      else
      {
        v43 = (bogusUnserialize)(allocator, a2, v40, &value, a5, a6);
      }

      v31 = v43;
      if (v43 || !value)
      {
        break;
      }

      v44 = *a2 - v38;
      v22 = v40 - v44;
      if (((v40 - v44) | v44) >> 32)
      {
        v45 = AXRuntimeLogSerialization();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          cfDictionaryUnserialize_cold_2(v45, v54, v55, v56, v57, v58, v59, v60);
        }

        goto LABEL_46;
      }

      v33 = theDict;
      CFDictionarySetValue(theDict, v37, value);
      CFRelease(v37);
      v16 = v70;
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      if (!--v20)
      {
        goto LABEL_52;
      }
    }

    v33 = theDict;
    v16 = v70;
    if (!v31)
    {
      goto LABEL_52;
    }

LABEL_49:
    if (v33)
    {
      CFRelease(v33);
    }
  }

LABEL_53:
  if (!*v16)
  {
    v6 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      cfDictionaryUnserialize_cold_5(v6, v61, v62, v63, v64, v65, v66, v67);
    }

    goto LABEL_56;
  }

  return v31;
}

uint64_t cfDataUnserialize(const __CFAllocator *a1, unint64_t *a2, unint64_t a3, CFDataRef *a4, int a5)
{
  if (a3 <= 0xB)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cfDataUnserialize_cold_4(v5, v6, v7, v8, v9, v10, v11, v12);
    }

LABEL_16:

    return 4294942096;
  }

  v15 = *a2;
  if (a5)
  {
    v16 = bswap64(*(v15 + 4));
    *(v15 + 4) = v16;
  }

  else
  {
    v16 = *(v15 + 4);
  }

  if (HIDWORD(v16))
  {
    v17 = 0;
  }

  else
  {
    v17 = ((v16 + 12) | a3) >> 32 == 0;
  }

  if (!v17)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cfDataUnserialize_cold_1(v5, v18, v19, v20, v21, v22, v23, v24);
    }

    goto LABEL_16;
  }

  if (v16 > (a3 - 12))
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cfDataUnserialize_cold_3(v5, v25, v26, v27, v28, v29, v30, v31);
    }

    goto LABEL_16;
  }

  *a4 = CFDataCreate(a1, (v15 + 12), v16);
  v33 = *a2;
  *a2 += v16 + 12;
  v34 = *a4;
  if (-13 - v16 < v33)
  {
    cfDataUnserialize_cold_2(v34 == 0, v34, a4);
    return 4294942096;
  }

  if (!v34)
  {
    _logAndReturn("data: unable to create");
    return 4294942096;
  }

  return 0;
}

uint64_t cfDateUnserialize(const __CFAllocator *a1, unint64_t *a2, unint64_t a3, CFDateRef *a4, int a5)
{
  if (a3 > 0xB)
  {
    v15 = *(*a2 + 4);
    if (a5)
    {
      v15 = bswap64(*(*a2 + 4));
    }

    *a4 = CFDateCreate(a1, v15);
    v16 = *a2;
    *a2 += 12;
    v17 = *a4;
    if (v16 >= 0xFFFFFFFFFFFFFFF4)
    {
      if (v17)
      {
        CFRelease(v17);
        *a4 = 0;
      }

      v5 = AXRuntimeLogSerialization();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        cfDateUnserialize_cold_2(v5, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    else
    {
      if (v17)
      {
        return 0;
      }

      v5 = AXRuntimeLogSerialization();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        cfDateUnserialize_cold_1(v5, v19, v20, v21, v22, v23, v24, v25);
      }
    }
  }

  else
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cfDateUnserialize_cold_3(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  return 4294942096;
}

uint64_t cfURLUnserialize(const __CFAllocator *a1, uint64_t *a2, unint64_t a3, CFURLRef *a4, int a5)
{
  v5 = *a2;
  cf = 0;
  if (a3 <= 4)
  {
    v6 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      cfURLUnserialize_cold_4(v6, v7, v8, v9, v10, v11, v12, v13);
    }

LABEL_8:

    return 4294942096;
  }

  v15 = v5 + 5;
  *a2 = v5 + 5;
  if (v5 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    cfURLUnserialize_cold_3();
    return 4294942096;
  }

  v16 = a3 - 5;
  if (((a3 - 5) | a3) >> 32)
  {
    v6 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      cfURLUnserialize_cold_1(v6, v17, v18, v19, v20, v21, v22, v23);
    }

    goto LABEL_8;
  }

  v24 = cfStringUnserialize(a1, a2, a3 - 5, &cf, a5);
  if (!v24)
  {
    v29 = cf;
    if (cf)
    {
      v30 = *a2 - v15;
      v31 = v16 - v30;
      if ((v31 | v30) >> 32)
      {
        CFRelease(cf);
        v6 = AXRuntimeLogSerialization();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          cfURLUnserialize_cold_2(v6, v32, v33, v34, v35, v36, v37, v38);
        }

        goto LABEL_8;
      }

      if (*(v5 + 4) < 2u)
      {
        v41 = 0;
        goto LABEL_22;
      }

      v42 = 0;
      v24 = cfStringUnserialize(a1, a2, v31, &v42, a5);
      v39 = v42;
      if (!v24 && v42)
      {
        if (((v31 - (*a2 - v15)) | (*a2 - v15)) >> 32)
        {
          CFRelease(v42);
          CFRelease(v29);
          v40 = "url: base buffer math error";
LABEL_30:
          _logAndReturn(v40);
          return 4294942096;
        }

        v41 = CFURLCreateWithString(a1, v42, 0);
        CFRelease(v39);
LABEL_22:
        *a4 = CFURLCreateWithString(a1, v29, v41);
        CFRelease(v29);
        if (v41)
        {
          CFRelease(v41);
        }

        if (*a4)
        {
          return 0;
        }

        v40 = "url: unable to create";
        goto LABEL_30;
      }

      if (v42)
      {
        CFRelease(v42);
      }

      CFRelease(v29);
    }
  }

  return v24;
}

uint64_t cfNullUnserialize(uint64_t a1, unint64_t *a2, unint64_t a3, void *a4)
{
  if (a3 <= 3)
  {
    v6 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      cfNullUnserialize_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *a2;
  *a2 += 4;
  if (v14 >= 0xFFFFFFFFFFFFFFFCLL)
  {
    cfNullUnserialize_cold_2();
    return 4294942096;
  }

  else
  {
    v15 = CFRetain(*MEMORY[0x1E695E738]);
    result = 0;
    *a4 = v15;
  }

  return result;
}

uint64_t cfAttributedStringUnserialize(const __CFAllocator *a1, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  str = 0;
  if (a3 <= 0xB)
  {
    v7 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      cfAttributedStringUnserialize_cold_7(v7, v8, v9, v10, v11, v12, v13, v14);
    }

LABEL_8:

    return 4294942096;
  }

  v16 = v6 + 12;
  *a2 = v6 + 12;
  if (v6 >= 0xFFFFFFFFFFFFFFF4)
  {
    cfAttributedStringUnserialize_cold_6();
    return 4294942096;
  }

  v18 = a3 - 12;
  if (((a3 - 12) | a3) >> 32)
  {
    v7 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      cfAttributedStringUnserialize_cold_1(v7, v19, v20, v21, v22, v23, v24, v25);
    }

    goto LABEL_8;
  }

  if (a5)
  {
    v32 = bswap64(*(v6 + 4));
  }

  else
  {
    v32 = *(v6 + 4);
  }

  *(v6 + 4) = v32;
  if ((v32 & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if (!v32)
  {
    v33 = (v6 + 12);
    goto LABEL_20;
  }

  if (v32 >> 60)
  {
LABEL_60:
    cfAttributedStringUnserialize_cold_2();
    return 4294942096;
  }

  v33 = malloc_type_malloc(16 * v32, 0x4ADFDEF4uLL);
  if (!v33)
  {
    v34 = "attributedString: range: unable to allocate";
LABEL_63:
    _logAndReturn(v34);
    return 4294942096;
  }

LABEL_20:
  if (a5)
  {
    if (a6)
    {
      if (v32)
      {
        v35 = a3 - 20;
        v36 = v33 + 1;
        v37 = (v16 + 4);
        v38 = v32;
        while (v35 < 0xFFFFFFFFFFFFFFF8)
        {
          v84 = *v37;
          *(v36 - 1) = bswap32(*(v37 - 1));
          *v36 = bswap32(v84);
          if (((v35 + 8) | v35) >> 32)
          {
            free(v33);
            v7 = AXRuntimeLogSerialization();
            if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_8;
            }

            goto LABEL_42;
          }

          v35 -= 8;
          v36 += 2;
          v37 += 2;
          if (!--v38)
          {
            goto LABEL_34;
          }
        }

LABEL_62:
        free(v33);
        v34 = "attributedString: range-entry: unexpected buffer size";
        goto LABEL_63;
      }
    }

    else if (v32)
    {
      v43 = v33 + 1;
      v44 = (v16 + 8);
      v45 = v32;
      while (v18 > 0xF)
      {
        v46 = bswap64(*v44);
        *(v43 - 1) = bswap64(*(v44 - 1));
        *v43 = v46;
        v42 = v18 - 16;
        if ((v18 | (v18 - 16)) >> 32)
        {
          free(v33);
          v7 = AXRuntimeLogSerialization();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            cfAttributedStringUnserialize_cold_4(v7, v58, v59, v60, v61, v62, v63, v64);
          }

          goto LABEL_8;
        }

        v43 += 2;
        v44 += 2;
        v18 -= 16;
        if (!--v45)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_62;
    }

    goto LABEL_52;
  }

  if (a6)
  {
    if (v32)
    {
      v39 = 0;
      v35 = a3 - 20;
      while (v35 < 0xFFFFFFFFFFFFFFF8)
      {
        v40 = *(v16 + 8 * v39);
        *&v41 = v40;
        *(&v41 + 1) = SHIDWORD(v40);
        *&v33[2 * v39] = v41;
        if (((v35 + 8) | v35) >> 32)
        {
          free(v33);
          v7 = AXRuntimeLogSerialization();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
LABEL_42:
            cfAttributedStringUnserialize_cold_3(v7, v47, v48, v49, v50, v51, v52, v53);
          }

          goto LABEL_8;
        }

        ++v39;
        v35 -= 8;
        if (v32 == v39)
        {
LABEL_34:
          v42 = v35 + 8;
          goto LABEL_48;
        }
      }

      goto LABEL_62;
    }

    goto LABEL_52;
  }

  if (!v32)
  {
LABEL_52:
    v26 = cfStringUnserialize(a1, a2, v18, &str, a5);
    if (!v26)
    {
      v56 = str;
      *a4 = CFAttributedStringCreate(a1, str, 0);
      CFRelease(v56);
    }

    goto LABEL_54;
  }

  for (i = 0; i != v32; ++i)
  {
    if (v18 <= 0xF)
    {
      goto LABEL_62;
    }

    *&v33[2 * i] = *(v16 + 16 * i);
    v42 = v18 - 16;
    if ((v18 | (v18 - 16)) >> 32)
    {
      free(v33);
      v34 = "attributedString: range-entry buffer math error";
      goto LABEL_63;
    }

    v18 -= 16;
  }

LABEL_48:
  v55 = 8;
  if (!a6)
  {
    v55 = 16;
  }

  if (v42 < v55)
  {
    free(v33);
    v34 = "attributedString: run: unexpected buffer size";
    goto LABEL_63;
  }

  v65 = 3;
  if (!a6)
  {
    v65 = 4;
  }

  v66 = v32 << v65;
  v67 = *a2;
  if (__CFADD__(v66, *a2))
  {
    *a2 = v67 + v66;
    goto LABEL_68;
  }

  v68 = v67 + v66;
  *a2 = v67 + v66;
  if (!is_mul_ok(v32, v55))
  {
LABEL_68:
    free(v33);
    v34 = "attributedString: run buffer math error";
    goto LABEL_63;
  }

  v69 = cfStringUnserialize(a1, a2, v42, &str, a5);
  v70 = *a2 - v68;
  v71 = v42 - v70;
  if ((v70 | (v42 - v70)) >> 32)
  {
    if (str)
    {
      CFRelease(str);
    }

    free(v33);
    v34 = "attributedString: final string buffer math error";
    goto LABEL_63;
  }

  v26 = v69;
  v72 = str;
  if (!v26 && str)
  {
    if (v32 >> 61)
    {
      CFRelease(str);
      free(v33);
      v34 = "attributedString: dict buffer math error";
      goto LABEL_63;
    }

    v82 = str;
    v73 = malloc_type_malloc(8 * v32, 0xB6F31894uLL);
    bzero(v73, 8 * v32);
    v83 = *a2;
    v74 = 1;
    v80 = v73;
    do
    {
      v81 = v74;
      *v73 = 0;
      v75 = cfDictionaryUnserialize(a1, a2, v71, v73, a5, a6);
      if (*v73)
      {
        v26 = v75;
      }

      else
      {
        _logAndReturn("attributedString: could not create dictionary");
        v26 = 4294942096;
      }

      v76 = *a2 - v83;
      v71 -= v76;
      if ((v76 | v71) >> 32)
      {
        _logAndReturn("attributedString: dict entry buffer math error");
        v26 = 4294942096;
        goto LABEL_88;
      }

      if (v81 >= v32)
      {
        break;
      }

      v74 = v81 + 1;
      ++v73;
      v83 = *a2;
    }

    while (!v26);
    if (!v26)
    {
      v77 = _CFAttributedStringCreateWithRuns();
      goto LABEL_89;
    }

LABEL_88:
    v77 = CFAttributedStringCreate(a1, v82, 0);
LABEL_89:
    v78 = 0;
    *a4 = v77;
    do
    {
      v79 = v80[v78];
      if (v79)
      {
        CFRelease(v79);
        v80[v78] = 0;
      }

      ++v78;
    }

    while (v32 != v78);
    free(v80);
    v72 = v82;
  }

  if (v72)
  {
    CFRelease(v72);
  }

  free(v33);
LABEL_54:
  if (*a4)
  {
    v57 = AXCreateAXAttributedStringFromCFAttributedString(*a4);
    CFRelease(*a4);
    *a4 = v57;
  }

  return v26;
}

uint64_t axElementUnserialize(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4, int a5)
{
  if (a3 > 0x17)
  {
    v16 = *a2;
    if (a5)
    {
      v17 = bswap32(*(v16 + 4));
      *(v16 + 4) = v17;
      v18 = bswap64(*(v16 + 8));
      v19 = bswap64(*(v16 + 16));
      *(v16 + 8) = v18;
      *(v16 + 16) = v19;
    }

    else
    {
      v17 = *(v16 + 4);
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
    }

    Internal = _AXUIElementCreateInternal(v17, v18, v19);
    result = 0;
    *a4 = Internal;
    *a2 += 24;
  }

  else
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      axElementUnserialize_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    return 4294942096;
  }

  return result;
}

uint64_t axValueUnserialize(uint64_t a1, unsigned int **a2, unint64_t a3, void *a4, int a5)
{
  if (a3 <= 0xB)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      axValueUnserialize_cold_4(v5, v6, v7, v8, v9, v10, v11, v12);
    }

LABEL_12:

    return 4294942096;
  }

  v14 = *a2;
  if (a5)
  {
    v15 = bswap32(v14[2]);
    v14[1] = bswap32(v14[1]);
    v14[2] = v15;
  }

  if (((a3 - 12) | a3) >> 32)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      axValueUnserialize_cold_1(v5, v16, v17, v18, v19, v20, v21, v22);
    }

    goto LABEL_12;
  }

  if (v14[2] > a3 - 12)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      axValueUnserialize_cold_3(v5, v23, v24, v25, v26, v27, v28, v29);
    }

    goto LABEL_12;
  }

  *a4 = _AXValueCreateFromInternalData(v14[1], v14 + 3);
  v31 = *a2;
  v32 = v14[2];
  *a2 = (*a2 + v32 + 12);
  if (-13 - v32 < v31)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      axValueUnserialize_cold_2(v5, v33, v34, v35, v36, v37, v38, v39);
    }

    goto LABEL_12;
  }

  return 0;
}

uint64_t cgColorUnserialize(uint64_t a1, uint64_t *a2, unint64_t a3, CGColorRef *a4, int a5)
{
  v54[1] = *MEMORY[0x1E69E9840];
  if (a3 <= 0xB)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cgColorUnserialize_cold_5(v5, v6, v7, v8, v9, v10, v11, v12);
    }

LABEL_37:

    return 4294942096;
  }

  v15 = *a2;
  if (a5)
  {
    LODWORD(v16) = bswap32(*(v15 + 8));
    *(v15 + 4) = bswap32(*(v15 + 4));
    *(v15 + 8) = v16;
  }

  else
  {
    LODWORD(v16) = *(v15 + 8);
  }

  v17 = 8 * v16;
  v18 = v16 >> 29 != 0;
  if (HIDWORD(a3))
  {
    v18 = 1;
  }

  if (v17 > 0xFFFFFFF3 || v18)
  {
    cgColorUnserialize_cold_4();
    return 4294942096;
  }

  if (v17 > a3 - 12)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cgColorUnserialize_cold_3(v5, v20, v21, v22, v23, v24, v25, v26);
    }

    goto LABEL_37;
  }

  if (a5)
  {
    v16 = v16;
    if (v16)
    {
      v27 = (v15 + 12);
      do
      {
        *v27 = bswap64(*v27);
        ++v27;
        --v16;
      }

      while (v16);
    }
  }

  v28 = *(v15 + 4);
  if (v28 == 2)
  {
    DeviceCMYK = CGColorSpaceCreateDeviceCMYK();
  }

  else if (v28 == 1)
  {
    DeviceCMYK = CGColorSpaceCreateDeviceRGB();
  }

  else
  {
    if (v28)
    {
      return 4294942095;
    }

    DeviceCMYK = CGColorSpaceCreateDeviceGray();
  }

  v30 = DeviceCMYK;
  if (!DeviceCMYK)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cgColorUnserialize_cold_2(v5, v39, v40, v41, v42, v43, v44, v45);
    }

    goto LABEL_37;
  }

  v31 = *(v15 + 8);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(DeviceCMYK);
  if (NumberOfComponents + 1 != v31)
  {
    CFRelease(v30);
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cgColorUnserialize_cold_1(v5, v46, v47, v48, v49, v50, v51, v52);
    }

    goto LABEL_37;
  }

  v33 = v17 + 12;
  MEMORY[0x1EEE9AC00](NumberOfComponents);
  v35 = v54 - ((v34 + 15) & 0xFFFFFFFF0);
  memmove(v35, (*a2 + 12), 8 * *(v15 + 8));
  *a4 = CGColorCreate(v30, v35);
  CFRelease(v30);
  v36 = *a2;
  *a2 += v33;
  v37 = *a4;
  if (__CFADD__(v33, v36))
  {
    if (v37)
    {
      CFRelease(v37);
      *a4 = 0;
    }

    v53 = "color: could not increment pointer";
  }

  else
  {
    if (v37)
    {
      return 0;
    }

    v53 = "color: unable to create";
  }

  _logAndReturn(v53);
  return 4294942096;
}

uint64_t cgPathUnserialize(const __CFAllocator *a1, unint64_t *a2, unint64_t a3, CGMutablePathRef *a4, __int32 a5)
{
  v64 = *MEMORY[0x1E69E9840];
  if (a3 <= 0xB)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cgPathUnserialize_cold_5(v5, v6, v7, v8, v9, v10, v11, v12);
    }

LABEL_16:

    return 4294942096;
  }

  v16 = *a2;
  if (a5)
  {
    v17 = bswap64(*(v16 + 4));
    *(v16 + 4) = v17;
  }

  else
  {
    v17 = *(v16 + 4);
  }

  if (HIDWORD(v17))
  {
    v18 = 0;
  }

  else
  {
    v18 = ((v17 + 12) | a3) >> 32 == 0;
  }

  if (!v18)
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cgPathUnserialize_cold_1(v5, v19, v20, v21, v22, v23, v24, v25);
    }

    goto LABEL_16;
  }

  if (v17 > (a3 - 12))
  {
    v5 = AXRuntimeLogSerialization();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      cgPathUnserialize_cold_4(v5, v26, v27, v28, v29, v30, v31, v32);
    }

    goto LABEL_16;
  }

  v35 = CFDataCreate(a1, (v16 + 12), v17);
  v36 = v35;
  v37 = *a2;
  *a2 += v17 + 12;
  if (-13 - v17 >= v37)
  {
    Mutable = CGPathCreateMutable();
    v39 = *(v16 + 4);
    BytePtr = CFDataGetBytePtr(v36);
    if (v39 < 1)
    {
LABEL_51:
      v33 = 0;
      goto LABEL_65;
    }

    v42 = BytePtr;
    v43 = 0;
    v44 = "path: movePoint: unexpected buffer size";
    while (v43 + 8 <= v39)
    {
      v45 = *&v42[v43];
      v46 = *&v42[v43 + 4];
      if (a5)
      {
        v45 = bswap32(*&v42[v43]);
        v46 = bswap32(*&v42[v43 + 4]);
      }

      if (v46 > 3 || v43 + 8 + 16 * v46 > v39)
      {
        v53 = AXRuntimeLogSerialization();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          cgPathUnserialize_cold_2(v53, v54, v55, v56, v57, v58, v59, v60);
        }

LABEL_62:
        if (Mutable)
        {
          CFRelease(Mutable);
          Mutable = 0;
        }

        v33 = 4294942096;
LABEL_65:
        *a4 = Mutable;
        if (v36)
        {
          CFRelease(v36);
          Mutable = *a4;
        }

        if (!Mutable)
        {
          _logAndReturn("path: unable to create");
          return 4294942096;
        }

        return v33;
      }

      v48.i32[1] = 0;
      v48.i64[1] = 0;
      v62 = 0u;
      *v63 = 0u;
      v61 = 0u;
      if (v46)
      {
        v49 = &v61;
        v50 = v46;
        v43 += 8;
        do
        {
          v48.i32[0] = 0;
          v41.i32[0] = a5;
          v51 = vdupq_lane_s8(*&vceqq_s8(v41, v48), 0);
          v41 = *&v42[v43];
          v48 = vbslq_s8(v51, v41, vrev64q_s8(v41));
          v43 += 16;
          *v49++ = v48;
          --v50;
        }

        while (v50);
      }

      else
      {
        v43 += 8;
      }

      if (v45 <= 1)
      {
        if (v45)
        {
          if (v45 == 1)
          {
            if (v46 != 1)
            {
              v44 = "path: addLinePoint: unexpected buffer size";
LABEL_60:
              v52 = v44;
LABEL_61:
              _logAndReturn(v52);
              goto LABEL_62;
            }

            CGPathAddLineToPoint(Mutable, 0, *&v61, *(&v61 + 1));
          }
        }

        else
        {
          if (v46 != 1)
          {
            goto LABEL_60;
          }

          CGPathMoveToPoint(Mutable, 0, *&v61, *(&v61 + 1));
        }
      }

      else
      {
        switch(v45)
        {
          case 2:
            if (v46 != 2)
            {
              v44 = "path: quadCurvePoint: unexpected buffer size";
              goto LABEL_60;
            }

            CGPathAddQuadCurveToPoint(Mutable, 0, *&v61, *(&v61 + 1), *&v62, *(&v62 + 1));
            break;
          case 3:
            if (v46 != 3)
            {
              v44 = "path: curvePoint: unexpected buffer size";
              goto LABEL_60;
            }

            CGPathAddCurveToPoint(Mutable, 0, *&v61, *(&v61 + 1), *&v62, *(&v62 + 1), v63[0], v63[1]);
            break;
          case 4:
            if (v46)
            {
              v44 = "path: close: unexpected buffer size";
              goto LABEL_60;
            }

            CGPathCloseSubpath(Mutable);
            break;
        }
      }

      if (v43 >= v39)
      {
        goto LABEL_51;
      }
    }

    v52 = "path: pointsType: unexpected buffer size";
    goto LABEL_61;
  }

  cgPathUnserialize_cold_3(v35);
  return 4294942096;
}

uint64_t cfUUIDUnserialize(const __CFAllocator *a1, unint64_t *a2, unint64_t a3, void *a4, int a5)
{
  v6 = 4294942096;
  v7 = a3 >= 4;
  v8 = a3 - 4;
  if (v7)
  {
    v9 = *a2;
    if (**a2 == 14)
    {
      *a2 = v9 + 4;
      if (v9 >= 0xFFFFFFFFFFFFFFFCLL)
      {
        cfUUIDUnserialize_cold_2();
      }

      else if ((v8 | a3) >> 32)
      {
        v10 = AXRuntimeLogSerialization();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          cfUUIDUnserialize_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
        }

        return 4294942096;
      }

      else
      {
        theData = 0;
        v6 = cfDataUnserialize(a1, a2, v8, &theData, a5);
        if (!v6)
        {
          *&buffer.byte0 = 0;
          *&buffer.byte8 = 0;
          v19 = theData;
          if (CFDataGetLength(theData) <= 0x10)
          {
            v20.length = CFDataGetLength(v19);
          }

          else
          {
            v20.length = 16;
          }

          v20.location = 0;
          CFDataGetBytes(v19, v20, &buffer.byte0);
          v21 = *MEMORY[0x1E695E480];
          v22 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], buffer);
          v23 = CFUUIDCreateString(v21, v22);
          *a4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v23];
          if (v23)
          {
            CFRelease(v23);
          }

          if (v22)
          {
            CFRelease(v22);
          }

          if (v19)
          {
            CFRelease(v19);
          }
        }
      }
    }
  }

  return v6;
}

uint64_t ctFontUnserialize(const __CFAllocator *a1, unint64_t *a2, unint64_t a3, CTFontRef *a4, uint64_t a5, uint64_t a6)
{
  v7 = 4294942096;
  v8 = a3 >= 8;
  v9 = a3 - 8;
  if (v8)
  {
    v10 = *a2;
    if (**a2 == 15)
    {
      *a2 = v10 + 8;
      if (v10 >= 0xFFFFFFFFFFFFFFF8)
      {
        ctFontUnserialize_cold_2();
      }

      else if ((v9 | a3) >> 32)
      {
        v11 = AXRuntimeLogSerialization();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          ctFontUnserialize_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
        }
      }

      else
      {
        attributes = 0;
        v7 = cfDictionaryUnserialize(a1, a2, v9, &attributes, a5, a6);
        if (!v7)
        {
          v20 = attributes;
          if (attributes)
          {
            v21 = CTFontDescriptorCreateWithAttributes(attributes);
            *a4 = CTFontCreateWithFontDescriptor(v21, *(v10 + 4), 0);
            CFRelease(v20);
            if (v21)
            {
              CFRelease(v21);
            }
          }
        }
      }
    }
  }

  return v7;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

BOOL OUTLINED_FUNCTION_2(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

CFRunLoopSourceRef MSHCreateMachServerSource(const __CFAllocator *a1, CFIndex a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v7 = a5;
  HIDWORD(v18.perform) = a5;
  v12 = malloc_type_malloc(0x18uLL, 0x1080040D2F62047uLL);
  v18.version = 1;
  v18.info = v12;
  v18.retain = 0;
  v18.release = mshRelease;
  v18.copyDescription = mshCopyDescription;
  v18.equal = mshEqual;
  v18.hash = mshHash;
  v18.schedule = mshGetPort;
  v18.cancel = mshPerform;
  v13 = *MEMORY[0x1E69E9A60];
  if (!v7)
  {
    if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &v18.perform + 1))
    {
      goto LABEL_10;
    }

    if ((a4 & 4) == 0 && mach_port_insert_right(v13, HIDWORD(v18.perform), HIDWORD(v18.perform), 0x14u))
    {
      perform_high = HIDWORD(v18.perform);
      v16 = v13;
      v17 = 1;
      goto LABEL_9;
    }

    a4 &= ~1u;
    v7 = HIDWORD(v18.perform);
  }

  *(v12 + 1) = a6;
  *(v12 + 2) = a3;
  *v12 = v7;
  v12[1] = a4;
  result = CFRunLoopSourceCreate(a1, a2, &v18);
  if (result)
  {
    return result;
  }

  if ((a4 & 1) == 0)
  {
    mach_port_mod_refs(v13, HIDWORD(v18.perform), 1u, -1);
    perform_high = HIDWORD(v18.perform);
    v16 = v13;
    v17 = 0;
LABEL_9:
    mach_port_mod_refs(v16, perform_high, v17, -1);
  }

LABEL_10:
  free(v12);
  return 0;
}

void mshRelease(mach_port_name_t *a1)
{
  v2 = a1[1];
  if ((v2 & 1) == 0)
  {
    v3 = *MEMORY[0x1E69E9A60];
    v4 = *a1;
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], *a1, 1u, -1);
    if ((v2 & 4) == 0)
    {
      mach_port_mod_refs(v3, v4, 0, -1);
    }
  }

  free(a1);
}

CFRunLoopSourceRef MSHCreateMIGServerSource(const __CFAllocator *a1, CFIndex a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v7 = a5;
  HIDWORD(v18.perform) = a5;
  v12 = malloc_type_malloc(0x28uLL, 0x10A0040C7231A41uLL);
  v18.version = 1;
  v18.info = v12;
  v18.retain = 0;
  v18.release = mshRelease;
  v18.copyDescription = mshCopyDescription;
  v18.equal = mshEqual;
  v18.hash = mshHash;
  v18.schedule = mshGetPort;
  v18.cancel = mshMIGPerform;
  v13 = *MEMORY[0x1E69E9A60];
  if (!v7)
  {
    if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &v18.perform + 1))
    {
      goto LABEL_10;
    }

    if ((a4 & 4) == 0 && mach_port_insert_right(v13, HIDWORD(v18.perform), HIDWORD(v18.perform), 0x14u))
    {
      perform_high = HIDWORD(v18.perform);
      v16 = v13;
      v17 = 1;
      goto LABEL_9;
    }

    a4 &= ~1u;
    v7 = HIDWORD(v18.perform);
  }

  *v12 = v7;
  v12[1] = a4;
  *(v12 + 3) = 0;
  *(v12 + 4) = a3;
  *(v12 + 1) = a6;
  *(v12 + 2) = 0;
  result = CFRunLoopSourceCreate(a1, a2, &v18);
  if (result)
  {
    return result;
  }

  if ((a4 & 1) == 0)
  {
    mach_port_mod_refs(v13, HIDWORD(v18.perform), 1u, -1);
    perform_high = HIDWORD(v18.perform);
    v16 = v13;
    v17 = 0;
LABEL_9:
    mach_port_mod_refs(v16, perform_high, v17, -1);
  }

LABEL_10:
  free(v12);
  return 0;
}

uint64_t MSHGetMachPortFromSource(__CFRunLoopSource *a1)
{
  memset(&v2, 0, sizeof(v2));
  CFRunLoopSourceGetContext(a1, &v2);
  if (v2.version == 1)
  {
    return (v2.schedule)(v2.info);
  }

  else
  {
    return 0;
  }
}

BOOL MSHMIGSourceSetNoSendersCallback(__CFRunLoopSource *a1, uint64_t a2, mach_port_mscount_t a3)
{
  memset(&context, 0, sizeof(context));
  CFRunLoopSourceGetContext(a1, &context);
  info = context.info;
  if (context.info)
  {
    v7 = context.version == 1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    return 0;
  }

  v9 = MSHGetMachPortFromSource(a1);
  previous = 0;
  v10 = *MEMORY[0x1E69E9A60];
  v11 = info[2];
  if (a2)
  {
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = mach_port_request_notification(*MEMORY[0x1E69E9A60], v9, 70, 0, 0, 0x12u, &previous);
    if (v12)
    {
LABEL_15:
      info[2] = a2;
      goto LABEL_16;
    }

    v13 = previous;
    if (previous)
    {
      v14 = v10;
      v15 = v9;
      v16 = a3;
      v17 = 18;
    }

    else
    {
LABEL_13:
      v14 = v10;
      v15 = v9;
      v16 = a3;
      v13 = v9;
      v17 = 21;
    }

    v12 = mach_port_request_notification(v14, v15, 70, v16, v13, v17, &previous);
    goto LABEL_15;
  }

  if (!v11)
  {
    return 0;
  }

  info[2] = 0;
  v12 = mach_port_request_notification(v10, v9, 70, 0, 0, 0x12u, &previous);
LABEL_16:
  if (previous)
  {
    mach_port_mod_refs(v10, previous, 2u, -1);
  }

  return v12 == 0;
}

void MSHMIGSourceSetSendOnceCallback(__CFRunLoopSource *a1, uint64_t a2)
{
  memset(&v4, 0, sizeof(v4));
  CFRunLoopSourceGetContext(a1, &v4);
  if (v4.info)
  {
    v3 = v4.version == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    *(v4.info + 3) = a2;
  }
}

BOOL AXValidateDictionaryAsDragWireFormat(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v1 objectForKeyedSubscript:@"AXInteractionLocationDescriptorViewPointerNumberKey"], v2 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v2, (isKindOfClass) && (objc_msgSend(v1, "objectForKeyedSubscript:", @"AXInteractionLocationDescriptorAttributedNameKey"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v5 = objc_opt_isKindOfClass(), v4, (v5) && (objc_msgSend(v1, "objectForKeyedSubscript:", @"AXInteractionLocationDescriptorPointValueKey"), v6 = objc_claimAutoreleasedReturnValue(), v7 = CFGetTypeID(v6), TypeID = AXValueGetTypeID(), v6, v7 == TypeID))
  {
    v9 = [v1 objectForKeyedSubscript:@"AXInteractionLocationDescriptorPointValueKey"];
    v10 = AXValueGetType(v9) == kAXValueTypeCGPoint;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t AXValidateDictionaryAsDropWireFormat(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v1 objectForKeyedSubscript:@"AXInteractionLocationDescriptorViewPointerNumberKey"], v2 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v3 = objc_opt_isKindOfClass(), v2, (v3) && (objc_msgSend(v1, "objectForKeyedSubscript:", @"AXInteractionLocationDescriptorAttributedNameKey"), v4 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v5 = objc_opt_isKindOfClass(), v4, (v5) && (objc_msgSend(v1, "objectForKeyedSubscript:", @"AXInteractionLocationDescriptorPointValueKey"), v6 = objc_claimAutoreleasedReturnValue(), v7 = CFGetTypeID(v6), TypeID = AXValueGetTypeID(), v6, v7 == TypeID) && (objc_msgSend(v1, "objectForKeyedSubscript:", @"AXInteractionLocationDescriptorPointValueKey"), v9 = objc_claimAutoreleasedReturnValue(), Type = AXValueGetType(v9), v9, Type == kAXValueTypeCGPoint) && (objc_msgSend(v1, "objectForKeyedSubscript:", @"AXInteractionLocationDescriptorContextSpacePointKey"), v11 = objc_claimAutoreleasedReturnValue(), v12 = CFGetTypeID(v11), v13 = AXValueGetTypeID(), v11, v12 == v13) && (objc_msgSend(v1, "objectForKeyedSubscript:", @"AXInteractionLocationDescriptorContextSpacePointKey"), v14 = objc_claimAutoreleasedReturnValue(), v15 = AXValueGetType(v14), v14, v15 == kAXValueTypeCGPoint) && (objc_msgSend(v1, "objectForKeyedSubscript:", @"AXInteractionLocationDescriptorFixedScreenSpacePointKey"), v16 = objc_claimAutoreleasedReturnValue(), v17 = CFGetTypeID(v16), v18 = AXValueGetTypeID(), v16, v17 == v18) && (objc_msgSend(v1, "objectForKeyedSubscript:", @"AXInteractionLocationDescriptorFixedScreenSpacePointKey"), v19 = objc_claimAutoreleasedReturnValue(), v20 = AXValueGetType(v19), v19, v20 == kAXValueTypeCGPoint))
  {
    v21 = [v1 objectForKeyedSubscript:@"AXInteractionLocationDescriptorContextIDKey"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

uint64_t AXGetCFAttributedStringFromAXAttributedString(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [a1 cfAttributedString];
}

uint64_t AXCreateAXAttributedStringFromCFAttributedString(uint64_t a1)
{
  v2 = [AXAttributedString alloc];

  return [(AXAttributedString *)v2 initWithCFAttributedString:a1];
}

void sub_1BF7AA9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF7AABB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AXStringFromAXAttributedString(void *a1)
{
  v1 = a1;
  if ([v1 isAXAttributedString])
  {
    v2 = [v1 string];
  }

  else
  {
    v2 = v1;
  }

  v3 = v2;

  return v3;
}

void _AXInitializeObserverAccess()
{
  if (_AXInitializeObserverAccess_onceToken != -1)
  {
    _AXInitializeObserverAccess_cold_1();
  }
}

uint64_t _AXUIElementRegisterNotificationObserverDiedCallback(void *a1)
{
  if (_AXUIElementRegisterNotificationObserverDiedCallback_observerDiedRegistered)
  {
    return 4294942092;
  }

  result = 0;
  ObserverDiedCallback = a1;
  _AXUIElementRegisterNotificationObserverDiedCallback_observerDiedRegistered = 1;
  return result;
}

uint64_t _AXAddNotificationObserver()
{
  if (_AXInitializeObserverAccess_onceToken != -1)
  {
    _AXInitializeObserverAccess_cold_1();
  }

  return AX_PERFORM_WITH_LOCK();
}

uint64_t _AXRemoveNotificationObserver()
{
  if (_AXInitializeObserverAccess_onceToken != -1)
  {
    _AXInitializeObserverAccess_cold_1();
  }

  return AX_PERFORM_WITH_LOCK();
}

void _AXNotificationObserverClientDied(CFTypeRef cf)
{
  if (_AXInitializeObserverAccess_onceToken == -1)
  {
    if (!cf)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  _AXInitializeObserverAccess_cold_1();
  if (cf)
  {
LABEL_3:
    CFRetain(cf);
  }

LABEL_4:
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = ___AXNotificationObserverClientDied_block_invoke;
  v8 = &unk_1E80D3CF8;
  v9 = &v11;
  v10 = cf;
  AX_PERFORM_WITH_LOCK();
  if (*(v12 + 24) == 1)
  {
    v2 = AXRuntimeLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BF78E000, v2, OS_LOG_TYPE_INFO, "No more observers waiting to be disabled, turning off automation", v4, 2u);
    }

    _AXSAutomationLocalizedStringLookupInfoSetEnabled();
    _AXSSetAutomationEnabled();
    _AXSSetAuditInspectionModeEnabled();
  }

  else
  {
    v3 = AXRuntimeLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BF78E000, v3, OS_LOG_TYPE_INFO, "Automation disablement remaining: ", v4, 2u);
    }
  }

  if (ObserverDiedCallback)
  {
    ObserverDiedCallback(cf);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v11, 8);
}

void AXTentativePidSuspend(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = AXRuntimeLogPID();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v11 = a1;
    v12 = 2112;
    v13 = @"<redacted>";
    _os_log_impl(&dword_1BF78E000, v4, OS_LOG_TYPE_INFO, "Tentative pid suspend: %d Name:%@", buf, 0x12u);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{a1, @"pid"}];
  v9[0] = v5;
  v9[1] = @"tentative-suspended";
  v8[1] = @"suspended-status";
  v8[2] = @"display-type";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v9[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  AXPushNotificationToSystemForBroadcast();
}

uint64_t _AXPidIsAssociatedInternal(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  os_unfair_lock_lock(&gAXSuspendedPidsLock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = +[AXPidSuspensionInfo shared];
        v11 = [v10 associatedRemotePidCacheForDisplay:{objc_msgSend(v9, "intValue")}];

        v12 = [MEMORY[0x1E696AD98] numberWithInt:a1];
        v13 = [v11 containsObject:v12];

        if (v13)
        {
          v14 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  os_unfair_lock_unlock(&gAXSuspendedPidsLock);
  return v14;
}

uint64_t _AXIsPidAssociated(uint64_t a1)
{
  v2 = _allDisplayTypes();
  IsAssociatedInternal = _AXPidIsAssociatedInternal(a1, v2);

  return IsAssociatedInternal;
}

uint64_t _AXIsPidAssociatedWithDisplayType(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  IsAssociatedInternal = _AXPidIsAssociatedInternal(a1, v4);

  return IsAssociatedInternal;
}

uint64_t _AXPidIsSuspendedWithDisplayType(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  IsSuspendedInternal = _AXPidIsSuspendedInternal(a1, v4);

  return IsSuspendedInternal;
}

void _AXPutPidOnTimeoutProbation(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = AXRuntimeLogPID();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v13 = a1;
    _os_log_impl(&dword_1BF78E000, v4, OS_LOG_TYPE_INFO, "Pid on timeout probation %d", buf, 8u);
  }

  os_unfair_lock_lock(&gAXTimeoutProbationPidsLock);
  v5 = +[AXPidSuspensionInfo shared];
  v6 = [v5 timeoutProbationPidsForDisplay:a2];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  [v6 addObject:v7];

  v8 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AXPutPidOnTimeoutProbation_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  v10 = a1;
  v11 = a2;
  dispatch_after(v8, MEMORY[0x1E69E96A0], block);
  os_unfair_lock_unlock(&gAXTimeoutProbationPidsLock);
}

void _AXAddAssociatedPid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = AXRuntimeLogPID();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109376;
    v22 = a2;
    v23 = 1024;
    v24 = a1;
    _os_log_impl(&dword_1BF78E000, v6, OS_LOG_TYPE_INFO, "Associating pid (%d) with parent: (%d)", buf, 0xEu);
  }

  os_unfair_lock_lock(&gAXSuspendedPidsLock);
  v7 = dispatch_time(0, 300000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AXAddAssociatedPid_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v20 = a3;
  dispatch_after(v7, MEMORY[0x1E69E96A0], block);
  v8 = +[AXPidSuspensionInfo shared];
  v9 = [v8 associatedRemotePidsForDisplay:a3];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {
    v11 = [MEMORY[0x1E695DFA8] set];
    v12 = +[AXPidSuspensionInfo shared];
    v13 = [v12 associatedRemotePidsForDisplay:a3];
    v14 = [MEMORY[0x1E696AD98] numberWithInt:a1];
    [v13 setObject:v11 forKey:v14];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [v11 addObject:v15];

  v16 = +[AXPidSuspensionInfo shared];
  v17 = [v16 associatedRemotePidCacheForDisplay:a3];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  [v17 addObject:v18];

  os_unfair_lock_unlock(&gAXSuspendedPidsLock);
}

void _AXClearAssociatedPids(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = AXRuntimeLogPID();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BF78E000, v2, OS_LOG_TYPE_INFO, "Clearing associated pids", buf, 2u);
  }

  os_unfair_lock_lock(&gAXSuspendedPidsLock);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v3 = +[AXPidSuspensionInfo shared];
  v4 = [v3 associatedRemotePidsForDisplay:a1];
  v5 = [v4 allKeys];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = +[AXPidSuspensionInfo shared];
        v12 = [v11 associatedRemotePidsForDisplay:a1];
        v13 = [v12 objectForKey:v10];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v29;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v29 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v28 + 1) + 8 * j);
              if (([v19 isEqual:v10] & 1) == 0)
              {
                _AXRemoveSuspendedPid([v19 unsignedIntValue], a1);
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v16);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v20 = +[AXPidSuspensionInfo shared];
  v21 = [v20 associatedRemotePidsForDisplay:a1];
  [v21 removeAllObjects];

  v22 = +[AXPidSuspensionInfo shared];
  v23 = [v22 associatedRemotePidCacheForDisplay:a1];
  [v23 removeAllObjects];

  os_unfair_lock_unlock(&gAXSuspendedPidsLock);
  v24 = dispatch_time(0, 300000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___AXClearAssociatedPids_block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v27 = a1;
  dispatch_after(v24, MEMORY[0x1E69E96A0], block);
}

void ___displayMonitor_block_invoke()
{
  if (!_AXSMossdeepEnabled())
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2050000000;
    v0 = getFBSDisplayMonitorClass_softClass;
    v8 = getFBSDisplayMonitorClass_softClass;
    if (!getFBSDisplayMonitorClass_softClass)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __getFBSDisplayMonitorClass_block_invoke;
      v4[3] = &unk_1E80D3D68;
      v4[4] = &v5;
      __getFBSDisplayMonitorClass_block_invoke(v4);
      v0 = v6[3];
    }

    v1 = v0;
    _Block_object_dispose(&v5, 8);
    v2 = objc_opt_new();
    v3 = _displayMonitor_DisplayMonitor;
    _displayMonitor_DisplayMonitor = v2;
  }
}

void sub_1BF7AD698(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  if (a2 == 1)
  {
    v10 = objc_begin_catch(a1);
    v11 = [v10 name];
    v12 = [v11 isEqualToString:*MEMORY[0x1E695D930]];

    if (v12)
    {

      objc_end_catch();
      JUMPOUT(0x1BF7AD684);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

Class __getFBSDisplayMonitorClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E80D3FF0;
    v5 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    __getFBSDisplayMonitorClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("FBSDisplayMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBSDisplayMonitorClass_block_invoke_cold_1();
  }

  getFBSDisplayMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

id AXLabelForElements(void *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (![v1 count])
  {
    v5 = [MEMORY[0x1E696AEC0] string];
    goto LABEL_43;
  }

  v29 = [MEMORY[0x1E696AD60] string];
  v2 = [v1 count];
  v3 = [v1 firstObject];
  v4 = _AXLabelForElement(v3);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = &stru_1F3E63FB0;
  }

  if (![(__CFString *)v4 length])
  {
    goto LABEL_9;
  }

  if (![(__CFString *)v4 isAXAttributedString])
  {
    [v29 appendString:v4];
LABEL_9:
    v30 = 0;
    goto LABEL_10;
  }

  v42 = 0;
  _appendAttributedString(v29, v4, &v42);
  v30 = v42;
LABEL_10:
  objc_opt_class();
  if (v2 < 2)
  {
    v7 = v29;
  }

  else
  {
    v6 = 1;
    v7 = v29;
    do
    {
      v8 = [v1 objectAtIndex:v6];
      v9 = _AXLabelForElement(v8);

      if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length])
      {
        if ([v9 isAXAttributedString])
        {
          v41 = v30;
          _appendAttributedString(v29, v9, &v41);
          v10 = v41;

          v30 = v10;
        }

        else
        {
          if ([v29 length])
          {
            [v29 appendString:{@", "}];
          }

          [v29 appendString:v9];
        }
      }

      ++v6;
    }

    while (v2 != v6);
  }

  v11 = v30;
  if (v30)
  {
    v26 = v4;
    v27 = v3;
    v28 = v1;
    v12 = [AXAttributedString axAttributedStringWithString:v7];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v13 = v30;
    v32 = [v13 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v32)
    {
      v31 = *v38;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v38 != v31)
          {
            objc_enumerationMutation(v13);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          v16 = [v13 objectForKey:v15];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v34;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v34 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v33 + 1) + 8 * j);
                v22 = [v16 objectForKey:v21];
                v23 = [v15 rangeValue];
                [v12 setAttribute:v22 forKey:v21 withRange:{v23, v24}];
              }

              v18 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
            }

            while (v18);
          }
        }

        v32 = [v13 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v32);
    }

    v3 = v27;
    v1 = v28;
    v4 = v26;
    v11 = v30;
  }

  else
  {
    v12 = v7;
  }

  if ([v12 length])
  {
    v5 = v12;
  }

  else
  {
    v5 = 0;
  }

LABEL_43:

  return v5;
}

AXAttributedString *_AXLabelForElement(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = v1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v2 = v1;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = v1;
      if (objc_opt_respondsToSelector())
      {
        v4 = [(AXAttributedString *)v3 _accessibilityAXAttributedLabel];
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = [(AXAttributedString *)v3 accessibilityAttributedLabel];
          if (v5)
          {
            v6 = v5;
            v2 = [[AXAttributedString alloc] initWithCFAttributedString:v5];

LABEL_10:
            goto LABEL_11;
          }
        }

        v4 = [(AXAttributedString *)v3 accessibilityLabel];
      }

      v2 = v4;
      goto LABEL_10;
    }
  }

LABEL_11:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = AXCreateAXAttributedStringFromCFAttributedString(v2);

    v2 = v7;
  }

  return v2;
}

void _appendAttributedString(void *a1, void *a2, void **a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v27 = a3;
  if (!*a3)
  {
    *a3 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  }

  v7 = [v5 length];
  v8 = v7 != 0;
  if (v7)
  {
    [v5 appendString:{@", "}];
  }

  v29 = 0;
  v30 = 0;
  v28 = [v6 length];
  v9 = 0;
  v26 = v5;
  while (1)
  {
    v10 = [v6 attributesAtIndex:v9 effectiveRange:{&v29, v26}];
    v11 = v10;
    if (v29 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v12 = [v6 string];
    v13 = [v12 substringWithRange:{v29, v30}];

    if (v11)
    {
      v14 = [v5 length];
      v15 = [v13 length];
      if (v8)
      {
        v16 = [v11 objectForKeyedSubscript:UIAccessibilityTokenLiteralText];
        v17 = [v16 BOOLValue];

        v18 = v14 - [@" "];
        v19 = [@" "];
        v20 = v19;
        if (v17)
        {
          v21 = *v27;
          v31 = UIAccessibilityTokenIgnoreLeadingCommas;
          v32[0] = MEMORY[0x1E695E118];
          v8 = 1;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
          v23 = [MEMORY[0x1E696B098] valueWithRange:{v18, v20}];
          [v21 setObject:v22 forKey:v23];
        }

        else
        {
          v8 = 0;
          v15 += v19;
          v14 = v18;
        }

        v5 = v26;
      }

      else
      {
        v8 = 0;
      }

      v24 = *v27;
      v25 = [MEMORY[0x1E696B098] valueWithRange:{v14, v15}];
      [v24 setObject:v11 forKey:v25];
    }

    [v5 appendString:v13];
    v29 += v30;

    v9 = v29;
    if (v29 == 0x7FFFFFFFFFFFFFFFLL || v29 >= v28)
    {
      goto LABEL_19;
    }
  }

LABEL_19:
}

id AXLabelAndValueForElements(void *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (![v1 count])
  {
    v5 = [MEMORY[0x1E696AEC0] string];
    goto LABEL_43;
  }

  v29 = [MEMORY[0x1E696AD60] string];
  v2 = [v1 count];
  v3 = [v1 firstObject];
  v4 = _AXLabelAndValueForElement(v3);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = &stru_1F3E63FB0;
  }

  if (![(__CFString *)v4 length])
  {
    goto LABEL_9;
  }

  if (![(__CFString *)v4 isAXAttributedString])
  {
    [v29 appendString:v4];
LABEL_9:
    v30 = 0;
    goto LABEL_10;
  }

  v42 = 0;
  _appendAttributedString(v29, v4, &v42);
  v30 = v42;
LABEL_10:
  objc_opt_class();
  if (v2 < 2)
  {
    v7 = v29;
  }

  else
  {
    v6 = 1;
    v7 = v29;
    do
    {
      v8 = [v1 objectAtIndex:v6];
      v9 = _AXLabelAndValueForElement(v8);

      if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length])
      {
        if ([v9 isAXAttributedString])
        {
          v41 = v30;
          _appendAttributedString(v29, v9, &v41);
          v10 = v41;

          v30 = v10;
        }

        else
        {
          if ([v29 length])
          {
            [v29 appendString:{@", "}];
          }

          [v29 appendString:v9];
        }
      }

      ++v6;
    }

    while (v2 != v6);
  }

  v11 = v30;
  if (v30)
  {
    v26 = v4;
    v27 = v3;
    v28 = v1;
    v12 = [AXAttributedString axAttributedStringWithString:v7];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v13 = v30;
    v32 = [v13 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v32)
    {
      v31 = *v38;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v38 != v31)
          {
            objc_enumerationMutation(v13);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          v16 = [v13 objectForKey:v15];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v34;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v34 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v33 + 1) + 8 * j);
                v22 = [v16 objectForKey:v21];
                v23 = [v15 rangeValue];
                [v12 setAttribute:v22 forKey:v21 withRange:{v23, v24}];
              }

              v18 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
            }

            while (v18);
          }
        }

        v32 = [v13 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v32);
    }

    v3 = v27;
    v1 = v28;
    v4 = v26;
    v11 = v30;
  }

  else
  {
    v12 = v7;
  }

  if ([v12 length])
  {
    v5 = v12;
  }

  else
  {
    v5 = 0;
  }

LABEL_43:

  return v5;
}

id _AXLabelAndValueForElement(void *a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = _AXLabelForElement(v1);
  v4 = v1;
  objc_opt_class();
  v5 = v4;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v5 = v4;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = v4;
      if (objc_opt_respondsToSelector())
      {
        v7 = [(AXAttributedString *)v6 _accessibilityAXAttributedValue];
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v8 = [(AXAttributedString *)v6 accessibilityAttributedValue];
          if (v8)
          {
            v9 = v8;
            v5 = [[AXAttributedString alloc] initWithCFAttributedString:v8];

LABEL_10:
            goto LABEL_11;
          }
        }

        v7 = [(AXAttributedString *)v6 accessibilityValue];
      }

      v5 = v7;
      goto LABEL_10;
    }
  }

LABEL_11:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = AXCreateAXAttributedStringFromCFAttributedString(v5);

    v5 = v10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v3 length])
  {
    goto LABEL_18;
  }

  if (![v3 isAXAttributedString])
  {
    [v2 appendString:v3];
LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v42 = 0;
  _appendAttributedString(v2, v3, &v42);
  v11 = v42;
LABEL_19:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(AXAttributedString *)v5 length])
  {
LABEL_23:
    if (!v11)
    {
      goto LABEL_39;
    }

    goto LABEL_24;
  }

  if ([(AXAttributedString *)v5 isAXAttributedString])
  {
    v41 = v11;
    _appendAttributedString(v2, v5, &v41);
    v12 = v41;

    v11 = v12;
    goto LABEL_23;
  }

  if ([v2 length])
  {
    [v2 appendString:{@", "}];
  }

  [v2 appendString:v5];
  if (v11)
  {
LABEL_24:
    v27 = v5;
    v28 = v2;
    v29 = v4;
    v30 = v3;
    v2 = [AXAttributedString axAttributedStringWithString:v2];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v26 = v11;
    v13 = v11;
    v32 = [v13 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v32)
    {
      v31 = *v38;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v38 != v31)
          {
            objc_enumerationMutation(v13);
          }

          v15 = *(*(&v37 + 1) + 8 * i);
          v16 = [v13 objectForKey:v15];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v34;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v34 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v33 + 1) + 8 * j);
                v22 = [v16 objectForKey:v21];
                v23 = [v15 rangeValue];
                [v2 setAttribute:v22 forKey:v21 withRange:{v23, v24}];
              }

              v18 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
            }

            while (v18);
          }
        }

        v32 = [v13 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v32);
    }

    v4 = v29;
    v3 = v30;
    v11 = v26;
    v5 = v27;
  }

LABEL_39:

  return v2;
}

id __AXStringForVariables(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  v9 = __AXStringForVariablesWithVariadics(a1, &a9);

  return v9;
}

id __AXStringForVariablesWithVariadics(void *a1, id *a2)
{
  v3 = a1;
  v10 = a2;
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = v4;
  if (v3)
  {
    [v4 addObject:v3];
  }

  while (1)
  {
    v6 = v10++;
    v7 = *v6;
    if (!v7)
    {
      goto LABEL_7;
    }

    if (objc_opt_isKindOfClass() & 1) != 0 && ([v7 isEqualToString:@"__AXStringForVariablesSentinel"])
    {
      break;
    }

    [v5 addObject:v7];
LABEL_7:
  }

  v8 = AXLabelForElements(v5);

  return v8;
}

id AXArrayForString(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 length])
  {
    v4[0] = v1;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

void _gatherTransactionSummary()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];
  v2 = [&unk_1F3E6C378 containsObject:v1];

  if (v2)
  {
    v3 = +[AXProfileDatabase sharedDatabase];
    v12 = [v3 transactionSummary];

    v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v4 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
    v5 = [MEMORY[0x1E695DF00] date];
    v6 = [v4 stringFromDate:v5];

    v7 = MEMORY[0x1E696AEC0];
    v8 = [MEMORY[0x1E696AE30] processInfo];
    v9 = [v8 processName];
    v10 = [MEMORY[0x1E696AE30] processInfo];
    v11 = [v7 stringWithFormat:@"/var/mobile/Library/Accessibility/axperf_%@_%d_%@.csv", v9, objc_msgSend(v10, "processIdentifier"), v6];

    [v12 writeToFile:v11 atomically:1 encoding:4 error:0];
  }
}

void sub_1BF7B102C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF7B1710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 192), 8);
  _Unwind_Resume(a1);
}

id AXRemoteElementConcatSceneUUIDAndContextId(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInt:a2];
  v6 = [v4 stringByAppendingFormat:@"_%@", v5];

  return v6;
}

id AXUIElementConvertOutgoingType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
LABEL_5:

      goto LABEL_6;
    }

    v3 = objc_opt_self();
    if (objc_opt_isKindOfClass())
    {

      goto LABEL_5;
    }

    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v1 objCType];
        if (!strcmp(v8, "{CGRect={CGPoint=dd}{CGSize=dd}}"))
        {
          [v1 rectValue];
          valuePtr = v17;
          v32 = v18;
          v33 = v19;
          v34 = v20;
          v10 = kAXValueTypeCGRect;
        }

        else if (!strcmp(v8, "{CGPoint=dd}"))
        {
          [v1 pointValue];
          valuePtr = v21;
          v32 = v22;
          v10 = kAXValueTypeCGPoint;
        }

        else if (!strcmp(v8, "{CGSize=dd}"))
        {
          [v1 sizeValue];
          valuePtr = v23;
          v32 = v24;
          v10 = kAXValueTypeCGSize;
        }

        else
        {
          if (strcmp(v8, "{_NSRange=QQ}"))
          {
            goto LABEL_6;
          }

          valuePtr = [v1 rangeValue];
          v32 = v9;
          v10 = kAXValueTypeCFRange;
        }

        v25 = AXValueCreate(v10, &valuePtr);
        v13 = CFAutorelease(v25);

        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v1 mutableCopy];
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __AXUIElementConvertOutgoingType_block_invoke;
        v29[3] = &unk_1E80D4170;
        v12 = v11;
        v30 = v12;
        [v1 enumerateObjectsUsingBlock:v29];
        v13 = v12;

LABEL_24:
        v1 = v13;
        goto LABEL_6;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v1 mutableCopy];
        v15 = [v14 allKeys];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __AXUIElementConvertOutgoingType_block_invoke_2;
        v26[3] = &unk_1E80D4228;
        v16 = v14;
        v27 = v16;
        v28 = v1;
        [v15 enumerateObjectsUsingBlock:v26];

        v1 = v16;
      }
    }
  }

LABEL_6:
  v4 = v1;

  return v4;
}

void __AXUIElementConvertOutgoingType_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = AXUIElementConvertOutgoingType(a2);
  [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
}

void __AXUIElementConvertOutgoingType_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v6 = [v3 objectForKeyedSubscript:v4];
  v5 = AXUIElementConvertOutgoingType(v6);
  [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF7B8104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF7BAF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BF7BCD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF7BD0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __copy_helper_block_e8_96n12_8_8_s0_t8w32144n15_8_8_s0_s8_t16w8(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 120);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v4;
  *(a1 + 144) = *(a2 + 144);
  result = *(a2 + 152);
  *(a1 + 152) = result;
  *(a1 + 160) = *(a2 + 160);
  return result;
}

void __destroy_helper_block_e8_96n4_8_s0144n7_8_s0_s8(uint64_t a1)
{
  v2 = *(a1 + 96);
}

void sub_1BF7BDAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF7BE2AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXPIFingerControllerClass_block_invoke(uint64_t a1)
{
  AccessibilityPhysicalInteractionLibrary();
  result = objc_getClass("AXPIFingerController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXPIFingerControllerClass_block_invoke_cold_1();
  }

  getAXPIFingerControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AccessibilityPhysicalInteractionLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __AccessibilityPhysicalInteractionLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E80D4458;
    v2 = 0;
    AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary)
  {
    AccessibilityPhysicalInteractionLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __AccessibilityPhysicalInteractionLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilityPhysicalInteractionLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAXMTextDetectionOptionsClass_block_invoke(uint64_t a1)
{
  AXMediaUtilitiesLibrary();
  result = objc_getClass("AXMTextDetectionOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXMTextDetectionOptionsClass_block_invoke_cold_1();
  }

  getAXMTextDetectionOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AXMediaUtilitiesLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AXMediaUtilitiesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AXMediaUtilitiesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E80D4470;
    v4 = 0;
    AXMediaUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AXMediaUtilitiesLibraryCore_frameworkLibrary;
  if (!AXMediaUtilitiesLibraryCore_frameworkLibrary)
  {
    AXMediaUtilitiesLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __AXMediaUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AXMediaUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getAXMDisplayManagerClass_block_invoke(uint64_t a1)
{
  AXMediaUtilitiesLibrary();
  result = objc_getClass("AXMDisplayManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXMDisplayManagerClass_block_invoke_cold_1();
  }

  getAXMDisplayManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXMVisionScreenRecognitionOptionsClass_block_invoke(uint64_t a1)
{
  AXMediaUtilitiesLibrary();
  result = objc_getClass("AXMVisionScreenRecognitionOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXMVisionScreenRecognitionOptionsClass_block_invoke_cold_1();
  }

  getAXMVisionScreenRecognitionOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXMScreenRecognitionCenterClass_block_invoke(uint64_t a1)
{
  AXMediaUtilitiesLibrary();
  result = objc_getClass("AXMScreenRecognitionCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXMScreenRecognitionCenterClass_block_invoke_cold_1();
  }

  getAXMScreenRecognitionCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXMVisionFeatureClass_block_invoke(uint64_t a1)
{
  AXMediaUtilitiesLibrary();
  result = objc_getClass("AXMVisionFeature");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXMVisionFeatureClass_block_invoke_cold_1();
  }

  getAXMVisionFeatureClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXSettingsClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E80D4488;
    v5 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    __getAXSettingsClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSettingsClass_block_invoke_cold_1();
  }

  getAXSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXMIntersectionOverUnionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "AXMIntersectionOverUnion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXMIntersectionOverUnionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXMRatioOfIntersectedAreaToSmallerRectAreaSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXMediaUtilitiesLibrary();
  result = dlsym(v2, "AXMRatioOfIntersectedAreaToSmallerRectArea");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXMRatioOfIntersectedAreaToSmallerRectAreaSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getAXNamedReplayableGestureClass_block_invoke(uint64_t a1)
{
  AccessibilityPhysicalInteractionLibrary();
  result = objc_getClass("AXNamedReplayableGesture");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXNamedReplayableGestureClass_block_invoke_cold_1();
  }

  getAXNamedReplayableGestureClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _accessibilityEventsHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [Handlers allKeys];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [Handlers objectForKey:*(*(&v13 + 1) + 8 * v10)];
        v12 = [v11 objectForKey:@"handler"];

        if (v12)
        {
          v12[2](v12, a3, a4);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

void AX_CGPathEnumerateElementsUsingBlock(const CGPath *a1, void *a2)
{
  v3 = a2;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __AX_CGPathEnumerateElementsUsingBlock_block_invoke;
  aBlock[3] = &unk_1E80D44D0;
  v8 = v11;
  v4 = v3;
  v7 = v4;
  v9 = v10;
  v5 = _Block_copy(aBlock);
  CGPathApply(a1, v5, _CGPathEnumerationIteration);

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v11, 8);
}

void sub_1BF7C0EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void _CGPathEnumerationIteration(const void *a1, uint64_t a2)
{
  v3 = _Block_copy(a1);
  v3[2](v3, a2);
}

void sub_1BF7C53FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXCustomContentClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AccessibilityLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E80D4538;
    v5 = 0;
    AccessibilityLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AccessibilityLibraryCore_frameworkLibrary)
  {
    __getAXCustomContentClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AXCustomContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXCustomContentClass_block_invoke_cold_1();
  }

  getAXCustomContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilityLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _accessibilityEventsHandler_0(uint64_t a1, uint64_t a2, int a3, const void *a4, void *a5)
{
  v7 = a5;
  v10 = v7;
  if (a3 > 1043)
  {
    if (a3 <= 1054)
    {
      if (a3 == 1044)
      {
        [v7 _handleUpdateElementVisuals:a4];
      }

      else if (a3 == 1053)
      {
        [v7 _handleNativeFocusItemDidChange:a4];
      }
    }

    else
    {
      switch(a3)
      {
        case 1055:
          [v7 _handleScreenWillChange:a4];
          break;
        case 3029:
          [v7 _handleMediaDidBegin:a4];
          break;
        case 5000:
          [v7 _handleApplicationWasActivated:a4];
          break;
      }
    }
  }

  else
  {
    if (a3 > 1005)
    {
      switch(a3)
      {
        case 1006:
          v8 = 64;
          break;
        case 1009:
          v8 = 128;
          break;
        case 1011:
          v8 = 16;
          break;
        default:
          goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a3 == 1000)
    {
      v8 = 8;
LABEL_26:
      [v7 _fetchEventOccurred:v8];
      goto LABEL_27;
    }

    if (a3 == 1001)
    {
      if (a4)
      {
        if (CFEqual(a4, kAXForceUpdateChangeToken[0]))
        {
          v9 = 256;
        }

        else
        {
          v9 = 4;
        }
      }

      else
      {
        v9 = 4;
      }

      [v10 _fetchEventOccurred:v9];
    }
  }

LABEL_27:
}

void sub_1BF7C86CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    NSLog(@"Exception handling accessibility event: %@");

    objc_end_catch();
    JUMPOUT(0x1BF7C868CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BF7C8E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_1BF7C9F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF7CBD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BF7CDE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFTypeID __smugglingDictionaryForCoreFoundationObject_block_invoke()
{
  smugglingDictionaryForCoreFoundationObject_CFBooleanTypeID = CFBooleanGetTypeID();
  smugglingDictionaryForCoreFoundationObject_CFUUIDTypeID = CFUUIDGetTypeID();
  smugglingDictionaryForCoreFoundationObject_AXUIElementTypeID = AXUIElementGetTypeID();
  smugglingDictionaryForCoreFoundationObject_AXValueTypeID = AXValueGetTypeID();
  smugglingDictionaryForCoreFoundationObject_CGColorTypeID = CGColorGetTypeID();
  smugglingDictionaryForCoreFoundationObject_CGPathTypeID = CGPathGetTypeID();
  smugglingDictionaryForCoreFoundationObject_CTFontTypeID = CTFontGetTypeID();
  smugglingDictionaryForCoreFoundationObject_CFNullTypeID = CFNullGetTypeID();
  result = CFURLGetTypeID();
  smugglingDictionaryForCoreFoundationObject_CFURLTypeID = result;
  return result;
}

id smugglingDictionaryForCFUUID(const __CFUUID *a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v4 = CFUUIDGetUUIDBytes(a1);
  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:&v4 length:16];
  v5[0] = @"SmugType";
  v5[1] = @"Value";
  v6[0] = AXSerializeSmuggledTypeCFUUID;
  v6[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v2;
}

id smugglingDictionaryForCGPath(const CGPath *a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __smugglingDictionaryForCGPath_block_invoke;
  block[3] = &unk_1E80D47A8;
  block[4] = v9;
  CGPathApplyWithBlock(a1, block);
  v2 = [MEMORY[0x1E695DF70] array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __smugglingDictionaryForCGPath_block_invoke_2;
  v6[3] = &unk_1E80D47D0;
  v3 = v2;
  v7 = v3;
  CGPathApplyWithBlock(a1, v6);
  v11[0] = @"SmugType";
  v11[1] = @"Value";
  v12[0] = AXSerializeSmuggledTypeCGPath;
  v12[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  _Block_object_dispose(v9, 8);

  return v4;
}

void sub_1BF7CE4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id smugglingDictionaryForCTFont(const __CTFont *a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x1E69E9840];
  Size = CTFontGetSize(a1);
  v5 = CTFontCopyFontDescriptor(a1);
  v6 = CTFontDescriptorCopyAttributes(v5);
  if (v5)
  {
    CFRelease(v5);
  }

  v7 = [(__CFDictionary *)v6 _axRecursivelyPropertyListCoercedRepresentationWithError:a2];

  if (v7)
  {
    v12[0] = AXSerializeSmuggledTypeCTFont;
    v11[0] = @"SmugType";
    v11[1] = @"FSize";
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:Size];
    v11[2] = @"Attrs";
    v12[1] = v8;
    v12[2] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id smugglingDictionaryForCFNull()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"SmugType";
  v3[0] = AXSerializeSmuggledTypeCFNull;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];

  return v0;
}

id smugglingDictionaryForCFURL(const __CFURL *a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v1 = CFURLGetString(a1);
  v4[0] = @"SmugType";
  v4[1] = @"Value";
  v5[0] = AXSerializeSmuggledTypeCFURL;
  v5[1] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

void __smugglingDictionaryForCGPath_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 == 3 || *a2 == 2;
  if (v4 == 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v5;
  }

  v8 = v4 < 2 || v6;
  if (v4 >= 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1;
  }

  v10 = [MEMORY[0x1E695DF88] data];
  v18 = bswap32(v4) >> 16;
  [v10 appendBytes:&v18 length:2];
  if (v8)
  {
    v11 = 0;
    if (v9 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v9;
    }

    v13 = 16 * v12;
    do
    {
      v14 = (*(a2 + 8) + v11);
      v15 = v14[1];
      v17 = bswap64(*v14);
      [v10 appendBytes:&v17 length:8];
      v16 = bswap64(v15);
      [v10 appendBytes:&v16 length:8];
      v11 += 16;
    }

    while (v13 != v11);
  }

  [*(a1 + 32) addObject:v10];
}

id reconstitutedSmuggledAttributedStringFromDictionary(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 objectForKey:@"String"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 objectForKey:@"Attrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = a2;
      v6 = [AXAttributedString axAttributedStringWithString:v4];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = v5;
      v7 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      if (v7)
      {
        v8 = v7;
        v29 = *v32;
        v9 = 0x1E695D000uLL;
        v25 = v4;
        v26 = v5;
        v24 = v3;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v32 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v31 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v5 = v26;
              v3 = v24;
              v4 = v25;
              if (v27)
              {
                *v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
              }

              goto LABEL_36;
            }

            v12 = [v11 objectForKey:@"Range"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v5 = v26;
              if (v27)
              {
                *v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
              }

              goto LABEL_35;
            }

            v13 = v12;
            if ([v13 length] != 16)
            {

              if (v27)
              {
                *v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:2 userInfo:0];
              }

              v5 = v26;
              goto LABEL_35;
            }

            v14 = v9;
            v15 = v6;
            v36 = 0;
            [v13 getBytes:&v36 range:{0, 8}];
            v35 = 0;
            [v13 getBytes:&v35 range:{8, 8}];
            v16 = v35;
            v17 = v36;

            v18 = [v11 objectForKey:@"Attrs"];
            v30 = 0;
            v19 = [v18 _axRecursivelyReconstitutedRepresentationFromPropertyListWithError:&v30];
            v20 = v30;

            if (!v19 || v20)
            {
              goto LABEL_32;
            }

            v9 = v14;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v20 = 0;
LABEL_32:
              if (v27)
              {
                *v27 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
              }

              v5 = v26;
              v6 = v15;
LABEL_35:
              v3 = v24;
              v4 = v25;
LABEL_36:

              v22 = 0;
              goto LABEL_37;
            }

            v21 = bswap64(v17);
            v6 = v15;
            [v15 setAttributes:v19 withRange:{v21, bswap64(v16)}];
          }

          v8 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
          v4 = v25;
          v5 = v26;
          v3 = v24;
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v22 = v6;
LABEL_37:
    }

    else if (a2)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
      *a2 = v22 = 0;
    }

    else
    {
      v22 = 0;
    }
  }

  else if (a2)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
    *a2 = v22 = 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

id reconstitutedSmuggledCFBooleanFromDictionary(void *a1, void *a2)
{
  v3 = [a1 objectForKey:@"Value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue];
    v5 = MEMORY[0x1E695E4D0];
    if (!v4)
    {
      v5 = MEMORY[0x1E695E4C0];
    }

    v6 = *v5;
  }

  else if (a2)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
    *a2 = v6 = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id reconstitutedSmuggledCFUUIDFromDictionary(void *a1, void *a2)
{
  v3 = [a1 objectForKey:@"Value"];
  *&v10.byte0 = 0;
  *&v10.byte8 = 0;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a2)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = 1;
LABEL_10:
      [v7 errorWithDomain:@"AXSerialize3ErrorDomain" code:v8 userInfo:{0, *&v10.byte0, *&v10.byte8}];
      *a2 = v6 = 0;
      goto LABEL_12;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  if ([v3 length] != 16)
  {
    if (a2)
    {
      v7 = MEMORY[0x1E696ABC0];
      v8 = 2;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  [v3 getBytes:&v10 length:16];
  v4 = CFUUIDCreateFromUUIDBytes(0, v10);
  v5 = CFUUIDCreateString(0, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];

LABEL_12:

  return v6;
}

id reconstitutedSmuggledAXUIElementFromDictionary(void *a1, void *a2)
{
  v3 = [a1 objectForKey:@"Value"];
  v10 = 0;
  v8 = 0;
  v9 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v3 length] == 20)
    {
      [v3 getBytes:&v10 range:{0, 4}];
      [v3 getBytes:&v9 range:{4, 8}];
      [v3 getBytes:&v8 range:{12, 8}];
      v4 = _AXUIElementCreateWithPIDAndID(bswap32(v10), bswap64(v9), bswap64(v8));
      goto LABEL_10;
    }

    if (a2)
    {
      v5 = MEMORY[0x1E696ABC0];
      v6 = 2;
      goto LABEL_8;
    }
  }

  else if (a2)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = 1;
LABEL_8:
    [v5 errorWithDomain:@"AXSerialize3ErrorDomain" code:v6 userInfo:0];
    *a2 = v4 = 0;
    goto LABEL_10;
  }

  v4 = 0;
LABEL_10:

  return v4;
}

AXValueRef reconstitutedSmuggledAXValueFromDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"ValueType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 shortValue];
    v6 = [v3 objectForKeyedSubscript:@"Value"];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a2)
        {
          v10 = 1;
LABEL_32:
          [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:v10 userInfo:0];
          *a2 = v7 = 0;
          goto LABEL_34;
        }

LABEL_33:
        v7 = 0;
        goto LABEL_34;
      }
    }

    v7 = 0;
    if (v5 > 2u)
    {
      switch(v5)
      {
        case 3u:
          if ([v6 length] != 32)
          {
            goto LABEL_30;
          }

          v20 = 0;
          [v6 getBytes:&v20 length:8];
          v19 = 0;
          [v6 getBytes:&v19 range:{8, 8}];
          v14 = 0;
          [v6 getBytes:&v14 range:{16, 8}];
          v13 = 0;
          [v6 getBytes:&v13 range:{24, 8}];
          valuePtr = bswap64(v20);
          v16 = bswap64(v19);
          v17 = bswap64(v14);
          v18 = bswap64(v13);
          p_valuePtr = &valuePtr;
          v9 = kAXValueTypeCGRect;
          break;
        case 4u:
          if ([v6 length] != 16)
          {
            goto LABEL_30;
          }

          v20 = 0;
          [v6 getBytes:&v20 length:8];
          v19 = 0;
          [v6 getBytes:&v19 range:{8, 8}];
          valuePtr = bswap64(v20);
          v16 = bswap64(v19);
          p_valuePtr = &valuePtr;
          v9 = kAXValueTypeCFRange;
          break;
        case 5u:
          if ([v6 length] != 4)
          {
            goto LABEL_30;
          }

          LODWORD(v20) = 0;
          [v6 getBytes:&v20 length:4];
          LODWORD(valuePtr) = bswap32(v20);
          p_valuePtr = &valuePtr;
          v9 = kAXValueTypeAXError;
          break;
        default:
          goto LABEL_34;
      }
    }

    else if (v5)
    {
      if (v5 != 1)
      {
        if (v5 == 2)
        {
          if ([v6 length] == 16)
          {
            v20 = 0;
            [v6 getBytes:&v20 length:8];
            v19 = 0;
            [v6 getBytes:&v19 range:{8, 8}];
            valuePtr = bswap64(v20);
            v16 = bswap64(v19);
            p_valuePtr = &valuePtr;
            v9 = kAXValueTypeCGSize;
            goto LABEL_27;
          }

LABEL_30:
          if (a2)
          {
            v10 = 2;
            goto LABEL_32;
          }

          goto LABEL_33;
        }

LABEL_34:

        goto LABEL_35;
      }

      if ([v6 length] != 16)
      {
        goto LABEL_30;
      }

      v20 = 0;
      [v6 getBytes:&v20 length:8];
      v19 = 0;
      [v6 getBytes:&v19 range:{8, 8}];
      valuePtr = bswap64(v20);
      v16 = bswap64(v19);
      p_valuePtr = &valuePtr;
      v9 = kAXValueTypeCGPoint;
    }

    else
    {
      v9 = kAXValueTypeIllegal;
      p_valuePtr = 0;
    }

LABEL_27:
    v11 = AXValueCreate(v9, p_valuePtr);
    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_34;
  }

  if (a2)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
    *a2 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_35:

  return v7;
}

CGColorRef reconstitutedSmuggledCGColorFromDictionary(void *a1, void *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"ValueType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 intValue];
    v6 = [v3 objectForKeyedSubscript:@"Value"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a2)
      {
        v9 = MEMORY[0x1E696ABC0];
        v10 = 1;
LABEL_23:
        [v9 errorWithDomain:@"AXSerialize3ErrorDomain" code:v10 userInfo:0];
        *a2 = v8 = 0;
LABEL_29:

        goto LABEL_30;
      }

LABEL_24:
      v8 = 0;
      goto LABEL_29;
    }

    if (v5)
    {
      if (v5 == 1)
      {
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
      }

      else
      {
        if (v5 != 2)
        {
          [v6 length];
          goto LABEL_21;
        }

        DeviceRGB = CGColorSpaceCreateDeviceCMYK();
      }
    }

    else
    {
      DeviceRGB = CGColorSpaceCreateDeviceGray();
    }

    v11 = DeviceRGB;
    v12 = [v6 length];
    if (v11)
    {
      v13 = v12;
      v14 = v12 >> 3;
      NumberOfComponents = CGColorSpaceGetNumberOfComponents(v11);
      if (v14 == NumberOfComponents + 1)
      {
        MEMORY[0x1EEE9AC00](NumberOfComponents);
        v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
        if (v13 >= 8)
        {
          v18 = 0;
          do
          {
            v20[0] = 0;
            [v6 getBytes:v20 range:{v18 * 8, 8}];
            *&v17[v18++] = bswap64(v20[0]);
            --v14;
          }

          while (v14);
        }

        v8 = CGColorCreate(v11, v17);
      }

      else if (a2)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:4 userInfo:0];
        *a2 = v8 = 0;
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v11);
      goto LABEL_29;
    }

LABEL_21:
    if (a2)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = 3;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (a2)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
    *a2 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_30:

  return v8;
}

CGPath *reconstitutedSmuggledCGPathFromDictionary(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [a1 objectForKeyedSubscript:@"Value"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a2)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
      *a2 = Mutable = 0;
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v4 = [v3 count];
  Mutable = CGPathCreateMutable();
  v24 = v4;
  if (v4)
  {
    v23 = a2;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      v8 = [v3 objectAtIndexedSubscript:{v6, v23}];
      v27 = 0;
      [v8 getBytes:&v27 range:{0, 2}];
      v9 = bswap32(v27) >> 16;
      if (v9 < 2)
      {
        v11 = 1;
        v12 = 1;
      }

      else
      {
        v10 = v9 == 2 ? 2 : 0;
        v11 = v9 == 3 || v9 == 2;
        v12 = v9 == 3 ? 3 : v10;
      }

      v13 = v12;
      v14 = [v8 length];
      if (v14 != ((16 * v13) | 2))
      {
        break;
      }

      MEMORY[0x1EEE9AC00](v14);
      v16 = &(&v23)[-2 * v15];
      if (v11)
      {
        if (v13 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v13;
        }

        v17 = (v16 + 1);
        v18 = 10;
        do
        {
          v26 = 0;
          [v8 getBytes:&v26 range:{v18 - 8, 8}];
          v25 = 0;
          [v8 getBytes:&v25 range:{v18, 8}];
          v19 = bswap64(v25);
          *(v17 - 1) = bswap64(v26);
          *v17 = v19;
          v17 += 2;
          v18 += 16;
          --v13;
        }

        while (v13);
      }

      if (v9 <= 1)
      {
        if (v9)
        {
          if (v9 != 1)
          {
LABEL_39:
            v21 = v23;
            if (v23)
            {
              *v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:5 userInfo:0];
            }

            goto LABEL_41;
          }

          CGPathAddLineToPoint(Mutable, 0, *v16, v16[1]);
        }

        else
        {
          CGPathMoveToPoint(Mutable, 0, *v16, v16[1]);
        }
      }

      else
      {
        switch(v9)
        {
          case 2:
            CGPathAddQuadCurveToPoint(Mutable, 0, *v16, v16[1], v16[2], v16[3]);
            break;
          case 3:
            CGPathAddCurveToPoint(Mutable, 0, *v16, v16[1], v16[2], v16[3], v16[4], v16[5]);
            break;
          case 4:
            CGPathCloseSubpath(Mutable);
            break;
          default:
            goto LABEL_39;
        }
      }

      v6 = ++v7;
      if (v24 <= v7)
      {
        goto LABEL_44;
      }
    }

    v20 = v23;
    if (v23)
    {
      *v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:2 userInfo:0];
    }

LABEL_41:

    if (Mutable)
    {
      CFRelease(Mutable);
LABEL_43:
      Mutable = 0;
    }
  }

LABEL_44:

  return Mutable;
}

CTFontRef reconstitutedSmuggledCTFontFromDictionary(void *a1, void *a2)
{
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"FSize"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 doubleValue];
    v6 = v5;
    v7 = [v3 objectForKeyedSubscript:@"Attrs"];
    v8 = [v7 _axRecursivelyReconstitutedRepresentationFromPropertyListWithError:a2];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = CTFontDescriptorCreateWithAttributes(v8);
      v10 = CTFontCreateWithFontDescriptor(v9, v6, 0);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    else if (a2)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
      *a2 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else if (a2)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
    *a2 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

CFURLRef reconstitutedSmuggledCFURLFromDictionary(void *a1, void *a2)
{
  v3 = [a1 objectForKeyedSubscript:@"Value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = CFURLCreateWithString(0, v3, 0);
  }

  else if (a2)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"AXSerialize3ErrorDomain" code:1 userInfo:0];
    *a2 = v4 = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __InitSmuggledTypes_block_invoke()
{
  v0 = AXSerializeSmuggledTypeAttributedString;
  AXSerializeSmuggledTypeAttributedString = &unk_1F3E6C180;

  v1 = AXSerializeSmuggledTypeCFBoolean;
  AXSerializeSmuggledTypeCFBoolean = &unk_1F3E6C198;

  v2 = AXSerializeSmuggledTypeCFUUID;
  AXSerializeSmuggledTypeCFUUID = &unk_1F3E6C1B0;

  v3 = AXSerializeSmuggledTypeAXUIElement;
  AXSerializeSmuggledTypeAXUIElement = &unk_1F3E6C1C8;

  v4 = AXSerializeSmuggledTypeAXValue;
  AXSerializeSmuggledTypeAXValue = &unk_1F3E6C1E0;

  v5 = AXSerializeSmuggledTypeCGColor;
  AXSerializeSmuggledTypeCGColor = &unk_1F3E6C1F8;

  v6 = AXSerializeSmuggledTypeCGPath;
  AXSerializeSmuggledTypeCGPath = &unk_1F3E6C210;

  v7 = AXSerializeSmuggledTypeCTFont;
  AXSerializeSmuggledTypeCTFont = &unk_1F3E6C228;

  v8 = AXSerializeSmuggledTypeCFNull;
  AXSerializeSmuggledTypeCFNull = &unk_1F3E6C240;

  v9 = AXSerializeSmuggledTypeCFURL;
  AXSerializeSmuggledTypeCFURL = &unk_1F3E6C258;
}

void sub_1BF7D1AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AXRemoteElementFromObject(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((AXProcessIsBackboard() & 1) == 0)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2050000000;
      v4 = getBEAccessibilityRemoteElementClass_softClass;
      v17 = getBEAccessibilityRemoteElementClass_softClass;
      if (!getBEAccessibilityRemoteElementClass_softClass)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __getBEAccessibilityRemoteElementClass_block_invoke;
        v12 = &unk_1E80D3D68;
        v13 = &v14;
        __getBEAccessibilityRemoteElementClass_block_invoke(&v9);
        v4 = v15[3];
      }

      v5 = v4;
      _Block_object_dispose(&v14, 8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_12;
      }

      v14 = 0;
      v15 = &v14;
      v16 = 0x2050000000;
      v6 = getBEAccessibilityRemoteHostElementClass_softClass;
      v17 = getBEAccessibilityRemoteHostElementClass_softClass;
      if (!getBEAccessibilityRemoteHostElementClass_softClass)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __getBEAccessibilityRemoteHostElementClass_block_invoke;
        v12 = &unk_1E80D3D68;
        v13 = &v14;
        __getBEAccessibilityRemoteHostElementClass_block_invoke(&v9);
        v6 = v15[3];
      }

      v7 = v6;
      _Block_object_dispose(&v14, 8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_12:
        v2 = [v1 backingElement];
        goto LABEL_13;
      }
    }

LABEL_5:
    v3 = 0;
    goto LABEL_14;
  }

  v2 = v1;
LABEL_13:
  v3 = v2;
LABEL_14:

  return v3;
}

void sub_1BF7D2944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBEAccessibilityRemoteElementClass_block_invoke(uint64_t a1)
{
  BrowserEngineKitLibrary();
  result = objc_getClass("BEAccessibilityRemoteElement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBEAccessibilityRemoteElementClass_block_invoke_cold_1();
  }

  getBEAccessibilityRemoteElementClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void BrowserEngineKitLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!BrowserEngineKitLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __BrowserEngineKitLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E80D4838;
    v2 = 0;
    BrowserEngineKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BrowserEngineKitLibraryCore_frameworkLibrary)
  {
    BrowserEngineKitLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __BrowserEngineKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BrowserEngineKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getBEAccessibilityRemoteHostElementClass_block_invoke(uint64_t a1)
{
  BrowserEngineKitLibrary();
  result = objc_getClass("BEAccessibilityRemoteHostElement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBEAccessibilityRemoteHostElementClass_block_invoke_cold_1();
  }

  getBEAccessibilityRemoteHostElementClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1BF7D2DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAXPerformPrivilegedAttributedStringTransformationsSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E80D4870;
    v6 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
  {
    __getAXPerformPrivilegedAttributedStringTransformationsSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "AXPerformPrivilegedAttributedStringTransformations");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXPerformPrivilegedAttributedStringTransformationsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t _AXMIGCopyAttributeValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9, void *a10, _DWORD *a11, _DWORD *a12)
{
  v12 = MEMORY[0x1EEE9AC00]();
  v14 = v13;
  v16 = v15;
  v17 = v12;
  v63 = *MEMORY[0x1E69E9840];
  v61 = 0u;
  memset(v62, 0, sizeof(v62));
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
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
  *__n = 0u;
  v34 = 0u;
  *&reply_port[16] = 0u;
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x1E69E99E0];
  *&reply_port[28] = v18;
  *&v34 = v19;
  *(&v34 + 1) = v20;
  __n[0] = __PAIR64__(v22, v21);
  v23 = mig_get_reply_port();
  *&reply_port[4] = v17;
  *&reply_port[8] = v23;
  v32 = 5395;
  *&reply_port[12] = 0xD1F6200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v32);
    v24 = *&reply_port[8];
  }

  else
  {
    v24 = v23;
  }

  v25 = mach_msg(&v32, 275, 0x3Cu, 0x1048u, v24, v16, 0);
  v26 = v25;
  if ((v25 - 268435458) <= 0xE && ((1 << (v25 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
  }

  else
  {
    if (!v25)
    {
      if (*&reply_port[16] == 71)
      {
        v26 = 4294966988;
      }

      else if (*&reply_port[16] == 860102)
      {
        if ((v32 & 0x80000000) == 0)
        {
          if (*reply_port == 36)
          {
            v26 = 4294966996;
            if (*&reply_port[28])
            {
              if (*&reply_port[4])
              {
                v26 = 4294966996;
              }

              else
              {
                v26 = *&reply_port[28];
              }
            }
          }

          else
          {
            v26 = 4294966996;
          }

          goto LABEL_32;
        }

        v26 = 4294966996;
        if (*&reply_port[20] == 1 && (*reply_port - 64) <= 0x1000 && !*&reply_port[4] && BYTE3(v34) == 1)
        {
          v27 = __n[0];
          if (LODWORD(__n[0]) <= 0x1000 && (*reply_port - 64) >= LODWORD(__n[0]))
          {
            v28 = (LODWORD(__n[0]) + 3) & 0xFFFFFFFC;
            if (*reply_port == v28 + 64)
            {
              v29 = &reply_port[v28 - 4];
              if (DWORD1(v34) == *(v29 + 14))
              {
                v30 = v29 - 4096;
                memcpy(v14, __n + 4, LODWORD(__n[0]));
                v26 = 0;
                *a9 = v27;
                *a10 = *&reply_port[24];
                *a11 = *(v30 + 1038);
                *a12 = *(v30 + 1039);
                return v26;
              }
            }
          }
        }
      }

      else
      {
        v26 = 4294966995;
      }

LABEL_32:
      mach_msg_destroy(&v32);
      return v26;
    }

    mig_dealloc_reply_port(*&reply_port[8]);
  }

  if ((v26 - 268435459) <= 1)
  {
    if ((v32 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&reply_port[8]);
    }

    goto LABEL_32;
  }

  return v26;
}

uint64_t _AXMIGSetAttributeValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, int a11, int *a12)
{
  v12 = MEMORY[0x1EEE9AC00](a1);
  v63 = *MEMORY[0x1E69E9840];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *&v34[8] = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v31 = 1;
  v32 = a9;
  v33 = 16777472;
  *v34 = a10;
  *&v34[4] = *MEMORY[0x1E69E99E0];
  *&v34[12] = v15;
  *&v34[16] = v16;
  *&v35 = v17;
  DWORD2(v35) = v18;
  if (v14 <= 0x1000)
  {
    v20 = v14;
    v21 = v13;
    v22 = v12;
    __memcpy_chk();
    HIDWORD(v35) = v20;
    v23 = (v20 + 3) & 0x3FFC;
    v24 = &reply_port + v23;
    *(v24 + 20) = a10;
    *(v24 + 21) = a11;
    v25 = mig_get_reply_port();
    reply_port.msgh_remote_port = v22;
    reply_port.msgh_local_port = v25;
    reply_port.msgh_bits = -2147478253;
    *&reply_port.msgh_voucher_port = 0xD1F6300000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v25;
    }

    v27 = mach_msg(&reply_port, 275, v23 + 88, 0x30u, msgh_local_port, v21, 0);
    v19 = v27;
    if ((v27 - 268435458) <= 0xE && ((1 << (v27 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v27)
      {
        if (reply_port.msgh_id == 71)
        {
          v19 = 4294966988;
        }

        else if (reply_port.msgh_id == 860103)
        {
          if ((reply_port.msgh_bits & 0x80000000) == 0)
          {
            if (reply_port.msgh_size == 40)
            {
              if (!reply_port.msgh_remote_port)
              {
                v19 = HIDWORD(v32);
                if (!HIDWORD(v32))
                {
                  *a12 = v33;
                  return v19;
                }

                goto LABEL_29;
              }
            }

            else if (reply_port.msgh_size == 36)
            {
              if (reply_port.msgh_remote_port)
              {
                v28 = 1;
              }

              else
              {
                v28 = HIDWORD(v32) == 0;
              }

              if (v28)
              {
                v19 = 4294966996;
              }

              else
              {
                v19 = HIDWORD(v32);
              }

              goto LABEL_29;
            }
          }

          v19 = 4294966996;
        }

        else
        {
          v19 = 4294966995;
        }

LABEL_29:
        mach_msg_destroy(&reply_port);
        return v19;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }

    if ((v19 - 268435459) > 1)
    {
      return v19;
    }

    if ((reply_port.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], reply_port.msgh_local_port);
    }

    goto LABEL_29;
  }

  return 4294966989;
}

uint64_t _AXMIGPerformAction(mach_port_t a1, mach_msg_timeout_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7, _DWORD *a8)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = *MEMORY[0x1E69E99E0];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  reply_port = mig_get_reply_port();
  *&msg.msgh_bits = 5395;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = reply_port;
  *&msg.msgh_voucher_port = 0xD1F6400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = reply_port;
  }

  v13 = mach_msg(&msg, 275, 0x3Cu, 0x30u, msgh_local_port, a2, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(msg.msgh_local_port);
  }

  else
  {
    if (!v13)
    {
      if (msg.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (msg.msgh_id == 860104)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 40)
          {
            if (!msg.msgh_remote_port)
            {
              v14 = v19;
              if (!v19)
              {
                *a8 = v20;
                return v14;
              }

              goto LABEL_27;
            }
          }

          else if (msg.msgh_size == 36)
          {
            if (msg.msgh_remote_port)
            {
              v15 = 1;
            }

            else
            {
              v15 = v19 == 0;
            }

            if (v15)
            {
              v14 = 4294966996;
            }

            else
            {
              v14 = v19;
            }

            goto LABEL_27;
          }
        }

        v14 = 4294966996;
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(&msg);
      return v14;
    }

    mig_dealloc_reply_port(msg.msgh_local_port);
  }

  if ((v14 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_27;
  }

  return v14;
}

uint64_t _AXMIGPerformActionWithValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, int a11, int a12, _DWORD *a13)
{
  v13 = MEMORY[0x1EEE9AC00]();
  v39 = *MEMORY[0x1E69E9840];
  memset(v38, 0, sizeof(v38));
  v33 = 0x13000000000000;
  v37 = 0;
  memset(&reply_port, 0, sizeof(reply_port));
  v31 = 2;
  v32 = v15;
  v34 = a10;
  v35 = 16777472;
  v36 = a11;
  v37 = *MEMORY[0x1E69E99E0];
  LODWORD(v38[0]) = v16;
  *(v38 + 4) = v17;
  *(v38 + 12) = v18;
  DWORD1(v38[1]) = v19;
  if (a9 <= 0x1000)
  {
    v21 = v14;
    v22 = v13;
    __memcpy_chk();
    DWORD2(v38[1]) = a9;
    v23 = (a9 + 3) & 0x3FFC;
    v24 = &reply_port + v23;
    *(v24 + 23) = a11;
    *(v24 + 24) = a12;
    v25 = mig_get_reply_port();
    reply_port.msgh_remote_port = v22;
    reply_port.msgh_local_port = v25;
    reply_port.msgh_bits = -2147478253;
    *&reply_port.msgh_voucher_port = 0xD1F6500000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v25;
    }

    v27 = mach_msg(&reply_port, 275, v23 + 100, 0x30u, msgh_local_port, v21, 0);
    v20 = v27;
    if ((v27 - 268435458) <= 0xE && ((1 << (v27 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v27)
      {
        if (reply_port.msgh_id == 71)
        {
          v20 = 4294966988;
        }

        else if (reply_port.msgh_id == 860105)
        {
          if ((reply_port.msgh_bits & 0x80000000) == 0)
          {
            if (reply_port.msgh_size == 40)
            {
              if (!reply_port.msgh_remote_port)
              {
                v20 = v33;
                if (!v33)
                {
                  *a13 = HIDWORD(v33);
                  return v20;
                }

                goto LABEL_29;
              }
            }

            else if (reply_port.msgh_size == 36)
            {
              if (reply_port.msgh_remote_port)
              {
                v28 = 1;
              }

              else
              {
                v28 = v33 == 0;
              }

              if (v28)
              {
                v20 = 4294966996;
              }

              else
              {
                v20 = v33;
              }

              goto LABEL_29;
            }
          }

          v20 = 4294966996;
        }

        else
        {
          v20 = 4294966995;
        }

LABEL_29:
        mach_msg_destroy(&reply_port);
        return v20;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }

    if ((v20 - 268435459) > 1)
    {
      return v20;
    }

    if ((reply_port.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], reply_port.msgh_local_port);
    }

    goto LABEL_29;
  }

  return 4294966989;
}

uint64_t _AXMIGCopyElementAtPosition(int a1, mach_msg_timeout_t a2, int a3, uint64_t a4, uint64_t a5, __int16 a6, int a7, int a8, float a9, float a10, _DWORD *a11, _OWORD *a12, void *a13, _DWORD *a14, _DWORD *a15)
{
  v57 = *MEMORY[0x1E69E9840];
  v55 = 0u;
  memset(v56, 0, sizeof(v56));
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
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
  *&v29[16] = 0u;
  *v29 = 0u;
  *&reply_port[16] = 0u;
  *reply_port = 0u;
  *&reply_port[20] = *MEMORY[0x1E69E99E0];
  *&reply_port[28] = a3;
  *v29 = a4;
  *&v29[8] = a5;
  *&v29[16] = a9;
  *&v29[20] = a10;
  *&v29[24] = a6;
  *&v29[28] = a7;
  LODWORD(v30) = a8;
  v17 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v17;
  v27 = 5395;
  *&reply_port[12] = 0xD1F6600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v27);
    v18 = *&reply_port[8];
  }

  else
  {
    v18 = v17;
  }

  v19 = mach_msg(&v27, 275, 0x48u, 0x448u, v18, a2, 0);
  v20 = v19;
  if ((v19 - 268435458) <= 0xE && ((1 << (v19 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
    goto LABEL_22;
  }

  if (!v19)
  {
    if (*&reply_port[16] == 71)
    {
      v20 = 4294966988;
    }

    else if (*&reply_port[16] == 860106)
    {
      if ((v27 & 0x80000000) == 0)
      {
        if ((*reply_port - 1089) <= 0xFFFFFBFE)
        {
          if (*&reply_port[28])
          {
            v21 = *&reply_port[4] == 0;
          }

          else
          {
            v21 = 0;
          }

          if (v21 && *reply_port == 36)
          {
            v20 = *&reply_port[28];
          }

          else
          {
            v20 = 4294966996;
          }

          goto LABEL_29;
        }

        if (!*&reply_port[4])
        {
          v20 = *&reply_port[28];
          if (*&reply_port[28])
          {
            goto LABEL_29;
          }

          v24 = *&v29[20];
          if (*&v29[20] <= 0x400u)
          {
            v20 = 4294966996;
            if ((*reply_port - 64) >= *&v29[20])
            {
              v25 = (*&v29[20] + 3) & 0xFFFFFFFC;
              if (*reply_port == v25 + 64)
              {
                *a11 = *v29;
                *a12 = *&v29[4];
                v26 = &reply_port[v25 - 4];
                memcpy(a13, &v29[24], v24);
                v20 = 0;
                *a14 = v24;
                *a15 = *(v26 + 15);
                return v20;
              }
            }

            goto LABEL_29;
          }
        }
      }

      v20 = 4294966996;
    }

    else
    {
      v20 = 4294966995;
    }

LABEL_29:
    mach_msg_destroy(&v27);
    return v20;
  }

  mig_dealloc_reply_port(*&reply_port[8]);
LABEL_22:
  if ((v20 - 268435459) <= 1)
  {
    if ((v27 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&reply_port[8]);
    }

    goto LABEL_29;
  }

  return v20;
}

uint64_t _AXMIGAddNotification(int a1, mach_msg_timeout_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, int *a10)
{
  v27 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[24] = 1;
  *&msg[28] = a7;
  v19 = 1245184;
  v20 = *MEMORY[0x1E69E99E0];
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a8;
  v26 = a9;
  reply_port = mig_get_reply_port();
  *&msg[8] = a1;
  *&msg[12] = reply_port;
  *msg = -2147478253;
  *&msg[16] = 0xD1F6700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v13 = *&msg[12];
  }

  else
  {
    v13 = reply_port;
  }

  v14 = mach_msg(msg, 275, 0x54u, 0x30u, v13, a2, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v14)
    {
      if (*&msg[20] == 71)
      {
        v15 = 4294966988;
      }

      else if (*&msg[20] == 860107)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 40)
          {
            if (!*&msg[8])
            {
              v15 = *&msg[32];
              if (!*&msg[32])
              {
                *a10 = v19;
                return v15;
              }

              goto LABEL_27;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v16 = 1;
            }

            else
            {
              v16 = *&msg[32] == 0;
            }

            if (v16)
            {
              v15 = 4294966996;
            }

            else
            {
              v15 = *&msg[32];
            }

            goto LABEL_27;
          }
        }

        v15 = 4294966996;
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(msg);
      return v15;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  if ((v15 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_27;
  }

  return v15;
}

uint64_t _AXMIGRemoveNotification(int a1, mach_msg_timeout_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int *a8)
{
  v25 = *MEMORY[0x1E69E9840];
  *&reply_port[16] = 0u;
  *reply_port = 0u;
  *&reply_port[20] = 1;
  *&reply_port[24] = a7;
  v19 = 1245184;
  v20 = *MEMORY[0x1E69E99E0];
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v11 = mig_get_reply_port();
  *&reply_port[4] = a1;
  *&reply_port[8] = v11;
  v17 = -2147478253;
  *&reply_port[12] = 0xD1F6800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v17);
    v12 = *&reply_port[8];
  }

  else
  {
    v12 = v11;
  }

  v13 = mach_msg(&v17, 275, 0x48u, 0x30u, v12, a2, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&reply_port[8]);
  }

  else
  {
    if (!v13)
    {
      if (*&reply_port[16] == 71)
      {
        v14 = 4294966988;
      }

      else if (*&reply_port[16] == 860108)
      {
        if ((v17 & 0x80000000) == 0)
        {
          if (*reply_port == 40)
          {
            if (!*&reply_port[4])
            {
              v14 = *&reply_port[28];
              if (!*&reply_port[28])
              {
                *a8 = v19;
                return v14;
              }

              goto LABEL_27;
            }
          }

          else if (*reply_port == 36)
          {
            if (*&reply_port[4])
            {
              v15 = 1;
            }

            else
            {
              v15 = *&reply_port[28] == 0;
            }

            if (v15)
            {
              v14 = 4294966996;
            }

            else
            {
              v14 = *&reply_port[28];
            }

            goto LABEL_27;
          }
        }

        v14 = 4294966996;
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(&v17);
      return v14;
    }

    mig_dealloc_reply_port(*&reply_port[8]);
  }

  if ((v14 - 268435459) <= 1)
  {
    if ((v17 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&reply_port[8]);
    }

    goto LABEL_27;
  }

  return v14;
}

uint64_t _AXMIGCopyParameterizedAttributeValue(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int a10, int a11, void *__dst, _DWORD *a13, uint64_t *a14, _DWORD *a15, _DWORD *a16)
{
  v16 = MEMORY[0x1EEE9AC00]();
  v69 = *MEMORY[0x1E69E9840];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *&v40[8] = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v37 = 1;
  v38 = a9;
  v39 = 16777472;
  *v40 = a10;
  *&v40[4] = *MEMORY[0x1E69E99E0];
  *&v40[12] = v19;
  *&v40[16] = v20;
  *&v41 = v21;
  DWORD2(v41) = v22;
  if (v18 <= 0x1000)
  {
    v24 = v18;
    v25 = v17;
    v26 = v16;
    __memcpy_chk();
    HIDWORD(v41) = v24;
    v27 = (v24 + 3) & 0x3FFC;
    v28 = &reply_port + v27 - 4096;
    *(v28 + 1044) = a10;
    *(v28 + 1045) = a11;
    v29 = mig_get_reply_port();
    reply_port.msgh_remote_port = v26;
    reply_port.msgh_local_port = v29;
    reply_port.msgh_bits = -2147478253;
    *&reply_port.msgh_voucher_port = 0xD1F6900000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v29;
    }

    v31 = mach_msg(&reply_port, 275, v27 + 88, 0x1048u, msgh_local_port, v25, 0);
    v23 = v31;
    if ((v31 - 268435458) <= 0xE && ((1 << (v31 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v31)
      {
        if (reply_port.msgh_id == 71)
        {
          v23 = 4294966988;
        }

        else if (reply_port.msgh_id == 860109)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            v23 = 4294966996;
            if (v37 == 1 && reply_port.msgh_size - 64 <= 0x1000 && !reply_port.msgh_remote_port && HIBYTE(v39) == 1)
            {
              v32 = *&v40[12];
              if (*&v40[12] <= 0x1000u && reply_port.msgh_size - 64 >= *&v40[12])
              {
                v33 = (*&v40[12] + 3) & 0xFFFFFFFC;
                if (reply_port.msgh_size == v33 + 64)
                {
                  v34 = &reply_port + v33 - 4096;
                  if (*v40 == *(v34 + 1038))
                  {
                    memcpy(__dst, &v40[16], *&v40[12]);
                    v23 = 0;
                    *a13 = v32;
                    *a14 = v38;
                    *a15 = *(v34 + 1038);
                    *a16 = *(v34 + 1039);
                    return v23;
                  }
                }
              }
            }
          }

          else if (reply_port.msgh_size == 36)
          {
            v23 = 4294966996;
            if (HIDWORD(v38))
            {
              if (reply_port.msgh_remote_port)
              {
                v23 = 4294966996;
              }

              else
              {
                v23 = HIDWORD(v38);
              }
            }
          }

          else
          {
            v23 = 4294966996;
          }
        }

        else
        {
          v23 = 4294966995;
        }

        goto LABEL_34;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }

    if ((v23 - 268435459) > 1)
    {
      return v23;
    }

    if ((reply_port.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], reply_port.msgh_local_port);
    }

LABEL_34:
    mach_msg_destroy(&reply_port);
    return v23;
  }

  return 4294966989;
}

uint64_t _AXMIGCopyMultipleAttributeValues(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9, mach_msg_bits_t a10, mach_msg_size_t a11, void *__dst, _DWORD *a13, void *a14, _DWORD *a15, _DWORD *a16)
{
  v16 = MEMORY[0x1EEE9AC00](a1);
  v69 = *MEMORY[0x1E69E9840];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *&v40[8] = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v37 = 1;
  v38 = v19;
  v39 = 16777472;
  *v40 = a9;
  *&v40[4] = *MEMORY[0x1E69E99E0];
  *&v40[12] = v20;
  *&v40[16] = v21;
  *&v41 = v22;
  if (v18 <= 0x1000)
  {
    v24 = v18;
    v25 = v17;
    v26 = v16;
    __memcpy_chk();
    DWORD2(v41) = v24;
    v27 = (v24 + 3) & 0x3FFC;
    v28 = (&reply_port + v27 - 4096);
    v28[173].msgh_id = a9;
    v28[174].msgh_bits = a10;
    v28[174].msgh_size = a11;
    v29 = mig_get_reply_port();
    reply_port.msgh_remote_port = v26;
    reply_port.msgh_local_port = v29;
    reply_port.msgh_bits = -2147478253;
    *&reply_port.msgh_voucher_port = 0xD1F6A00000000;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&reply_port);
      msgh_local_port = reply_port.msgh_local_port;
    }

    else
    {
      msgh_local_port = v29;
    }

    v31 = mach_msg(&reply_port, 275, v27 + 88, 0x1048u, msgh_local_port, v25, 0);
    v23 = v31;
    if ((v31 - 268435458) <= 0xE && ((1 << (v31 - 2)) & 0x4003) != 0)
    {
      mig_put_reply_port(reply_port.msgh_local_port);
    }

    else
    {
      if (!v31)
      {
        if (reply_port.msgh_id == 71)
        {
          v23 = 4294966988;
        }

        else if (reply_port.msgh_id == 860110)
        {
          if ((reply_port.msgh_bits & 0x80000000) != 0)
          {
            v23 = 4294966996;
            if (v37 == 1 && reply_port.msgh_size - 64 <= 0x1000 && !reply_port.msgh_remote_port && HIBYTE(v39) == 1)
            {
              v32 = *&v40[12];
              if (*&v40[12] <= 0x1000u && reply_port.msgh_size - 64 >= *&v40[12])
              {
                v33 = (*&v40[12] + 3) & 0xFFFFFFFC;
                if (reply_port.msgh_size == v33 + 64)
                {
                  v34 = &reply_port + v33 - 4096;
                  if (*v40 == *(v34 + 1038))
                  {
                    memcpy(__dst, &v40[16], *&v40[12]);
                    v23 = 0;
                    *a13 = v32;
                    *a14 = v38;
                    *a15 = *(v34 + 1038);
                    *a16 = *(v34 + 1039);
                    return v23;
                  }
                }
              }
            }
          }

          else if (reply_port.msgh_size == 36)
          {
            v23 = 4294966996;
            if (HIDWORD(v38))
            {
              if (reply_port.msgh_remote_port)
              {
                v23 = 4294966996;
              }

              else
              {
                v23 = HIDWORD(v38);
              }
            }
          }

          else
          {
            v23 = 4294966996;
          }
        }

        else
        {
          v23 = 4294966995;
        }

        goto LABEL_34;
      }

      mig_dealloc_reply_port(reply_port.msgh_local_port);
    }

    if ((v23 - 268435459) > 1)
    {
      return v23;
    }

    if ((reply_port.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], reply_port.msgh_local_port);
    }

LABEL_34:
    mach_msg_destroy(&reply_port);
    return v23;
  }

  return 4294966989;
}

uint64_t (*AccessibilityDefs_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 860013) >= 0xFFFFFFF5)
  {
    return _AXXMIGAccessibilityDefs_subsystem[5 * (v1 - 860002) + 5];
  }

  else
  {
    return 0;
  }
}

uint64_t _XCopyAttributeValue(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 60)
  {
    v3 = -304;
    goto LABEL_7;
  }

  v18 = 0;
  if (*(result + 60) || *(result + 64) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 52) = 4096;
  v4 = (a2 + 52);
  *(a2 + 36) = 16777473;
  v5 = *(result + 12);
  v6 = *(result + 32);
  v7 = *(result + 52);
  v8 = *(result + 56);
  v9 = *(result + 36);
  v10 = *(result + 44);
  v11 = *(result + 96);
  v17[0] = *(result + 80);
  v17[1] = v11;
  result = _AXXMIGCopyAttributeValue(v5, v6, v9, v10, v7, v8, (a2 + 56), v4, (a2 + 28), &v18 + 1, &v18, v17);
  if (!result)
  {
    v13 = v18;
    v12 = HIDWORD(v18);
    *(a2 + 40) = HIDWORD(v18);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    v14 = (*(a2 + 52) + 3) & 0xFFFFFFFC;
    v15 = v14 + 64;
    v16 = a2 + v14;
    *(v16 + 56) = v12;
    *(v16 + 60) = v13;
    *a2 |= 0x80000000;
    *(a2 + 4) = v15;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XSetAttributeValue(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(result + 4);
  if (*(result + 24) != 1 || (v3 - 4185) < 0xFFFFEFFF)
  {
    goto LABEL_6;
  }

  if (*(result + 39) != 1)
  {
    goto LABEL_18;
  }

  v6 = *(result + 76);
  if (v6 > 0x1000)
  {
LABEL_6:
    v5 = -304;
LABEL_7:
    *(a2 + 32) = v5;
LABEL_8:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = -304;
  if (v3 - 88 < v6)
  {
    goto LABEL_7;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v3 != v7 + 88)
  {
    goto LABEL_7;
  }

  v8 = result + v7;
  v9 = *(result + 40);
  if (v9 != *(v8 + 80))
  {
LABEL_18:
    v5 = -300;
    goto LABEL_7;
  }

  v10 = ((v3 + 3) & 0x3FFC) + result;
  if (*v10 || *(v10 + 4) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
    goto LABEL_8;
  }

  v11 = *(result + 12);
  v12 = *(result + 52);
  v13 = *(result + 72);
  v14 = *(result + 28);
  v15 = *(v8 + 84);
  v16 = *(result + 56);
  v17 = *(result + 64);
  v18 = *(v10 + 36);
  v19[0] = *(v10 + 20);
  v19[1] = v18;
  result = _AXXMIGSetAttributeValue(v11, v12, v16, v17, v13, result + 80, v6, v14, v9, v15, (a2 + 36), v19);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XPerformAction(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 60)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 60) || *(result + 64) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 52);
  v7 = *(result + 56);
  v8 = *(result + 36);
  v9 = *(result + 44);
  v10 = *(result + 96);
  v11[0] = *(result + 80);
  v11[1] = v10;
  result = _AXXMIGPerformAction(v4, v5, v8, v9, v6, v7, (a2 + 36), v11);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XPerformActionWithValue(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(result + 4);
  if (*(result + 24) != 2 || (v3 - 4197) < 0xFFFFEFFF)
  {
    goto LABEL_6;
  }

  if (*(result + 38) << 16 != 1114112 || *(result + 51) != 1)
  {
    goto LABEL_19;
  }

  v6 = *(result + 88);
  if (v6 > 0x1000)
  {
LABEL_6:
    v5 = -304;
LABEL_7:
    *(a2 + 32) = v5;
LABEL_8:
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = -304;
  if (v3 - 100 < v6)
  {
    goto LABEL_7;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v3 != v7 + 100)
  {
    goto LABEL_7;
  }

  v8 = result + v7;
  v9 = *(result + 52);
  if (v9 != *(v8 + 92))
  {
LABEL_19:
    v5 = -300;
    goto LABEL_7;
  }

  v10 = ((v3 + 3) & 0x3FFC) + result;
  if (*v10 || *(v10 + 4) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
    goto LABEL_8;
  }

  v11 = *(result + 12);
  v12 = *(result + 28);
  v13 = *(result + 64);
  v14 = *(result + 84);
  v15 = *(result + 40);
  v16 = *(v8 + 96);
  v17 = *(result + 68);
  v18 = *(result + 76);
  v19 = *(v10 + 36);
  v20[0] = *(v10 + 20);
  v20[1] = v19;
  result = _AXXMIGPerformActionWithValue(v11, v12, v13, v17, v18, v14, result + 92, v6, v15, v9, v16, (a2 + 36), v20);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XCopyElementAtPosition(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 72)
  {
    v3 = -304;
    goto LABEL_7;
  }

  v16 = 0;
  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  *(a2 + 56) = 1024;
  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 52);
  v7 = *(result + 56);
  v8 = *(result + 60);
  v9 = *(result + 64);
  v10 = *(result + 68);
  v11 = *(result + 36);
  v12 = *(result + 44);
  v13 = *(result + 108);
  v15[0] = *(result + 92);
  v15[1] = v13;
  result = _AXXMIGCopyElementAtPosition(v6, v7, v4, v5, v11, v12, v8, v9, v10, (a2 + 36), (a2 + 40), (a2 + 60), (a2 + 56), &v16, v15);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    v14 = (*(a2 + 56) + 3) & 0xFFFFFFFC;
    *(a2 + 4) = v14 + 64;
    *(a2 + v14 + 60) = v16;
  }

  return result;
}

uint64_t _XAddNotification(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 84)
  {
    v3 = -304;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_9;
  }

  if (*(result + 84) || *(result + 88) <= 0x1Fu)
  {
    v3 = -309;
LABEL_9:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 48);
  v6 = *(result + 28);
  v7 = *(result + 68);
  v8 = *(result + 72);
  v9 = *(result + 76);
  v10 = *(result + 52);
  v11 = *(result + 60);
  v12 = *(result + 120);
  v13[0] = *(result + 104);
  v13[1] = v12;
  result = _AXXMIGAddNotification(v4, v5, v10, v11, v7, v6, v8, v9, (a2 + 36), v13);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XRemoveNotification(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 72)
  {
    v3 = -304;
    goto LABEL_9;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_9;
  }

  if (*(result + 72) || *(result + 76) <= 0x1Fu)
  {
    v3 = -309;
LABEL_9:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 48);
  v6 = *(result + 68);
  v7 = *(result + 28);
  v8 = *(result + 52);
  v9 = *(result + 60);
  v10 = *(result + 108);
  v11[0] = *(result + 92);
  v11[1] = v10;
  result = _AXXMIGRemoveNotification(v4, v5, v8, v9, v6, v7, (a2 + 36), v11);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XCopyParameterizedAttributeValue(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(result + 4);
  if (*(result + 24) != 1 || (v3 - 4185) < 0xFFFFEFFF)
  {
    goto LABEL_6;
  }

  if (*(result + 39) != 1)
  {
    goto LABEL_18;
  }

  v6 = *(result + 76);
  if (v6 > 0x1000)
  {
LABEL_6:
    v5 = -304;
LABEL_7:
    *(a2 + 32) = v5;
    goto LABEL_8;
  }

  v5 = -304;
  if (v3 - 88 < v6)
  {
    goto LABEL_7;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v3 != v7 + 88)
  {
    goto LABEL_7;
  }

  v8 = result + v7;
  if (*(result + 40) != *(v8 + 80))
  {
LABEL_18:
    v5 = -300;
    goto LABEL_7;
  }

  v26 = 0;
  v9 = ((v3 + 3) & 0x3FFC) + result;
  if (*v9 || *(v9 + 4) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
  }

  else
  {
    *(a2 + 52) = 4096;
    *(a2 + 36) = 16777473;
    v10 = *(result + 12);
    v11 = *(result + 52);
    v12 = *(result + 72);
    v13 = *(result + 76);
    v14 = *(result + 28);
    v15 = *(result + 40);
    v16 = *(v8 + 84);
    v17 = *(result + 56);
    v18 = *(result + 64);
    v19 = *(v9 + 36);
    v25[0] = *(v9 + 20);
    v25[1] = v19;
    result = _AXXMIGCopyParameterizedAttributeValue(v10, v11, v17, v18, v12, result + 80, v13, v14, v15, v16, (a2 + 56), (a2 + 52), (a2 + 28), &v26 + 1, &v26, v25);
    if (!result)
    {
      v21 = v26;
      v20 = HIDWORD(v26);
      *(a2 + 40) = HIDWORD(v26);
      *(a2 + 44) = *MEMORY[0x1E69E99E0];
      v22 = (*(a2 + 52) + 3) & 0xFFFFFFFC;
      v23 = v22 + 64;
      v24 = a2 + v22;
      *(v24 + 56) = v20;
      *(v24 + 60) = v21;
      *a2 |= 0x80000000;
      *(a2 + 4) = v23;
      *(a2 + 24) = 1;
      return result;
    }

    *(a2 + 32) = result;
  }

LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XCopyMultipleAttributeValues(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  v3 = *(result + 4);
  if (*(result + 24) != 1 || (v3 - 4185) < 0xFFFFEFFF)
  {
    goto LABEL_6;
  }

  if (*(result + 39) != 1)
  {
    goto LABEL_18;
  }

  v6 = *(result + 72);
  if (v6 > 0x1000)
  {
LABEL_6:
    v5 = -304;
LABEL_7:
    *(a2 + 32) = v5;
    goto LABEL_8;
  }

  v5 = -304;
  if (v3 - 88 < v6)
  {
    goto LABEL_7;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v3 != v7 + 88)
  {
    goto LABEL_7;
  }

  v8 = result + v7;
  if (*(result + 40) != *(v8 + 76))
  {
LABEL_18:
    v5 = -300;
    goto LABEL_7;
  }

  v26 = 0;
  v9 = ((v3 + 3) & 0x3FFC) + result;
  if (*v9 || *(v9 + 4) <= 0x1Fu)
  {
    *(a2 + 32) = -309;
  }

  else
  {
    *(a2 + 52) = 4096;
    *(a2 + 36) = 16777473;
    v10 = v8 - 4096;
    v11 = *(result + 12);
    v12 = *(result + 52);
    v13 = *(result + 72);
    v14 = *(result + 28);
    v15 = *(result + 40);
    v16 = *(v10 + 4176);
    LODWORD(v10) = *(v10 + 4180);
    v17 = *(result + 56);
    v18 = *(result + 64);
    v19 = *(v9 + 36);
    v25[0] = *(v9 + 20);
    v25[1] = v19;
    result = _AXXMIGCopyMultipleAttributeValues(v11, v12, v17, v18, result + 76, v13, v14, v15, v16, v10, (a2 + 56), (a2 + 52), (a2 + 28), &v26 + 1, &v26, v25);
    if (!result)
    {
      v21 = v26;
      v20 = HIDWORD(v26);
      *(a2 + 40) = HIDWORD(v26);
      *(a2 + 44) = *MEMORY[0x1E69E99E0];
      v22 = (*(a2 + 52) + 3) & 0xFFFFFFFC;
      v23 = v22 + 64;
      v24 = a2 + v22;
      *(v24 + 56) = v20;
      *(v24 + 60) = v21;
      *a2 |= 0x80000000;
      *(a2 + 4) = v23;
      *(a2 + 24) = 1;
      return result;
    }

    *(a2 + 32) = result;
  }

LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t AccessibilityDefs_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 860013) >= 0xFFFFFFF5 && (v5 = _AXXMIGAccessibilityDefs_subsystem[5 * (v4 - 860002) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

void _AXUIElementRegisterServerWithRunLoopInternal_cold_1(kern_return_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  bootstrap_strerror(a1);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1BF78E000, a2, OS_LOG_TYPE_ERROR, "Unable to create mach port for AX Server: %i (%s)", v3, 0x12u);
}

void _AXUIElementRegisterServerWithRunLoopInternal_cold_2(kern_return_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  bootstrap_strerror(a1);
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_1BF78E000, a2, OS_LOG_TYPE_FAULT, "Unable to create mach port for remote bridge communication: %i (%s)", v3, 0x12u);
}

void __AXPushNotificationToSystemForBroadcast_block_invoke_2_cold_1(int *a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4[0] = 67109376;
  v4[1] = v3;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_1BF78E000, log, OS_LOG_TYPE_ERROR, "Unable to broadcast %d: err %d", v4, 0xEu);
}

void __AXUIElementInitialize_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_1BF78E000, a2, OS_LOG_TYPE_FAULT, "could not create pthread key: %d", v2, 8u);
}

void AXConvertOutgoingValue_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1BF78E000, a2, OS_LOG_TYPE_ERROR, "Can't serialize text marker: %@", &v2, 0xCu);
}

void __getBKSHIDEventAuthenticationMessageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBKSHIDEventAuthenticationMessageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXRuntimeUtilities.m" lineNumber:24 description:{@"Unable to find class %s", "BKSHIDEventAuthenticationMessage"}];

  __break(1u);
}

void __getBKSHIDEventAuthenticationMessageClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BackBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXRuntimeUtilities.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

uint64_t reserveSpace(vm_address_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  if (!__CFADD__(a2, v2))
  {
    v4 = v2 + a2;
    if (v2 + a2 <= a1[2])
    {
      return 0;
    }

    v5 = a1[3];
    v6 = v4 % v5;
    v7 = v5 - v4 % v5;
    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = __CFADD__(v7, v4);
    v10 = v8 + v4;
    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }

    v12 = mmap(0, v11, 3, 4098, -1, 0);
    if (v12 != -1)
    {
      v13 = v12;
      vm_copy(*MEMORY[0x1E69E9A60], *a1, v2, v12);
      munmap(*a1, v2);
      result = 0;
      *a1 = v13;
      a1[1] = v2 + v13;
      a1[2] = v11;
      return result;
    }
  }

  return 4294942096;
}

void cfStringUnserialize_cold_1(char a1, CFTypeRef cf, void *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = a3;
    CFRelease(cf);
    *v3 = 0;
  }

  v4 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v4))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v5, v6, "serialization error: %s", v7, v8, v9, v10, 2u);
  }
}

void cfStringUnserialize_cold_3()
{
  v1 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v2, v3, "serialization error: %s", v4, v5, v6, v7, 2u);
  }
}

void cfNumberUnserialize_cold_3()
{
  v1 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v2, v3, "serialization error: %s", v4, v5, v6, v7, 2u);
  }
}

void cfBooleanUnserialize_cold_1(const void **a1, NSObject **a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
    *a1 = 0;
  }

  v5 = AXRuntimeLogSerialization();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315138;
    v7 = "BOOLean: could not increment pointer";
    _os_log_error_impl(&dword_1BF78E000, v5, OS_LOG_TYPE_ERROR, "serialization error: %s", &v6, 0xCu);
  }

  *a2 = v5;
}

void cfArrayUnserialize_cold_5(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v3))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v4, v5, "serialization error: %s", v6, v7, v8, v9, 2u);
  }
}

void cfDictionaryUnserialize_cold_4()
{
  v1 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v2, v3, "serialization error: %s", v4, v5, v6, v7, 2u);
  }
}

void cfDictionaryUnserialize_cold_6(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v3))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v4, v5, "serialization error: %s", v6, v7, v8, v9, 2u);
  }
}

void cfDataUnserialize_cold_2(char a1, CFTypeRef cf, void *a3)
{
  if ((a1 & 1) == 0)
  {
    v3 = a3;
    CFRelease(cf);
    *v3 = 0;
  }

  v4 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v4))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v5, v6, "serialization error: %s", v7, v8, v9, v10, 2u);
  }
}

void cfURLUnserialize_cold_3()
{
  v1 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v2, v3, "serialization error: %s", v4, v5, v6, v7, 2u);
  }
}

void cfNullUnserialize_cold_2()
{
  v1 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v2, v3, "serialization error: %s", v4, v5, v6, v7, 2u);
  }
}

void cfAttributedStringUnserialize_cold_2()
{
  v1 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v2, v3, "serialization error: %s", v4, v5, v6, v7, 2u);
  }
}

void cfAttributedStringUnserialize_cold_6()
{
  v1 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v2, v3, "serialization error: %s", v4, v5, v6, v7, 2u);
  }
}

void cgColorUnserialize_cold_4()
{
  v1 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v2, v3, "serialization error: %s", v4, v5, v6, v7, 2u);
  }
}

void cgPathUnserialize_cold_3(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }

  v2 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v2))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v3, v4, "serialization error: %s", v5, v6, v7, v8, 2u);
  }
}

void cfUUIDUnserialize_cold_2()
{
  v1 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v2, v3, "serialization error: %s", v4, v5, v6, v7, 2u);
  }
}

void ctFontUnserialize_cold_2()
{
  v1 = AXRuntimeLogSerialization();
  if (OUTLINED_FUNCTION_2(v1))
  {
    OUTLINED_FUNCTION_0_1(&dword_1BF78E000, v2, v3, "serialization error: %s", v4, v5, v6, v7, 2u);
  }
}

void __getFBSDisplayMonitorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFBSDisplayMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXPidManagement.m" lineNumber:27 description:{@"Unable to find class %s", "FBSDisplayMonitor"}];

  __break(1u);
}

void __getFBSDisplayMonitorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FrontBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXPidManagement.m" lineNumber:26 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXPIFingerControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXPIFingerControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXUIMLElement.m" lineNumber:35 description:{@"Unable to find class %s", "AXPIFingerController"}];

  __break(1u);
}

void AccessibilityPhysicalInteractionLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccessibilityPhysicalInteractionLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXUIMLElement.m" lineNumber:34 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXMTextDetectionOptionsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXMTextDetectionOptionsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXUIMLElement.m" lineNumber:26 description:{@"Unable to find class %s", "AXMTextDetectionOptions"}];

  __break(1u);
}

void AXMediaUtilitiesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AXMediaUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXUIMLElement.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXMDisplayManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXMDisplayManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXUIMLElement.m" lineNumber:27 description:{@"Unable to find class %s", "AXMDisplayManager"}];

  __break(1u);
}

void __getAXMVisionScreenRecognitionOptionsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXMVisionScreenRecognitionOptionsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXUIMLElement.m" lineNumber:25 description:{@"Unable to find class %s", "AXMVisionScreenRecognitionOptions"}];

  __break(1u);
}

void __getAXMScreenRecognitionCenterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXMScreenRecognitionCenterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXUIMLElement.m" lineNumber:29 description:{@"Unable to find class %s", "AXMScreenRecognitionCenter"}];

  __break(1u);
}

void __getAXMVisionFeatureClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXMVisionFeatureClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXUIMLElement.m" lineNumber:28 description:{@"Unable to find class %s", "AXMVisionFeature"}];

  __break(1u);
}

void __getAXSettingsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXSettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXUIMLElement.m" lineNumber:39 description:{@"Unable to find class %s", "AXSettings"}];

  __break(1u);
}

void __getAXSettingsClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccessibilityUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXUIMLElement.m" lineNumber:38 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXNamedReplayableGestureClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXNamedReplayableGestureClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXUIMLElement.m" lineNumber:36 description:{@"Unable to find class %s", "AXNamedReplayableGesture"}];

  __break(1u);
}

void __getAXCustomContentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXCustomContentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"AXElement.m" lineNumber:25 description:{@"Unable to find class %s", "AXCustomContent"}];

  __break(1u);
}

void __getAXCustomContentClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccessibilityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXElement.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getBEAccessibilityRemoteElementClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBEAccessibilityRemoteElementClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BERemoteElementSupport.m" lineNumber:18 description:{@"Unable to find class %s", "BEAccessibilityRemoteElement"}];

  __break(1u);
}

void BrowserEngineKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BrowserEngineKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BERemoteElementSupport.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getBEAccessibilityRemoteHostElementClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBEAccessibilityRemoteHostElementClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BERemoteElementSupport.m" lineNumber:19 description:{@"Unable to find class %s", "BEAccessibilityRemoteHostElement"}];

  __break(1u);
}

void __getAXPerformPrivilegedAttributedStringTransformationsSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccessibilityUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXClientSideValueTransformer.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
  AXDeviceIsAudioAccessory();
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = MEMORY[0x1EEDC70A0](aString);
  result.length = v2;
  result.location = v1;
  return result;
}