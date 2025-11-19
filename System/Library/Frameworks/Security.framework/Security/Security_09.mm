uint64_t SOSPeerInfoArrayGetDEREncodedSize(const __CFArray *a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSPeerInfoArrayGetDEREncodedSize_block_invoke;
  context[3] = &unk_1E70DB040;
  context[5] = &v11;
  context[6] = a2;
  context[4] = &v7;
  v15.length = CFArrayGetCount(a1);
  v15.location = 0;
  CFArrayApplyFunction(a1, v15, apply_block_1_7727, context);
  v3 = 0;
  if ((v8[3] & 1) == 0)
  {
    v4 = v12[3];
    v3 = ccder_sizeof();
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v3;
}

uint64_t __SOSPeerInfoArrayGetDEREncodedSize_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == SOSPeerInfoGetTypeID()))
  {
    result = SOSPeerInfoGetDEREncodedSize(cf, *(a1 + 48), v5, v6, v7, v8, v9, v10);
    *(*(*(a1 + 32) + 8) + 24) = result == 0;
    *(*(*(a1 + 40) + 8) + 24) += result;
  }

  else
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      result = SOSCreateErrorWithFormat(1040, *v12, v12, 0, @"%@", @"Non SOSPeerInfo in array");
    }

    else
    {
      result = SOSCreateErrorWithFormat(1040, 0, 0, 0, @"%@", @"Non SOSPeerInfo in array");
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t SOSPeerInfoArrayEncodeToDER(const __CFArray *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v11 = __SOSPeerInfoArrayEncodeToDER_block_invoke;
  v12 = &unk_1E70DB068;
  v13 = &v16;
  v14 = a2;
  v15 = a3;
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v6 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6 - 2);
      v11(v10, ValueAtIndex);
      --v6;
    }

    while (v6 > 1);
  }

  if (v17[3])
  {
    v8 = ccder_encode_constructed_tl();
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v16, 8);
  return v8;
}

uint64_t __SOSPeerInfoArrayEncodeToDER_block_invoke(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  result = SOSPeerInfoGetTypeID();
  if (v4 != result)
  {
    result = SOSCreateErrorWithFormat(1040, 0, *(a1 + 40), 0, @"%@", @"Non SOSPeerInfo in array");
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v10 = *(*(*(a1 + 32) + 8) + 24);
  if (v10)
  {
    result = SOSPeerInfoEncodeToDER(cf, *(a1 + 40), *(a1 + 48), v10, v6, v7, v8, v9);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

CFMutableSetRef SOSPeerInfoSetCreateFromArrayDER(const __CFAllocator *a1, const CFSetCallBacks *a2, CFTypeRef *a3, uint64_t *a4)
{
  v6 = SOSPeerInfoArrayCreateFromDER(a1, a3, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  Mutable = CFSetCreateMutable(a1, 0, a2);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __CFSetSetValues_block_invoke;
  context[3] = &__block_descriptor_tmp_18_7745;
  context[4] = Mutable;
  v11.length = CFArrayGetCount(v7);
  v11.location = 0;
  CFArrayApplyFunction(v7, v11, apply_block_1_7727, context);
  CFRelease(v7);
  return Mutable;
}

uint64_t SOSPeerInfoSetGetDEREncodedArraySize(const __CFSet *a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSPeerInfoSetGetDEREncodedArraySize_block_invoke;
  context[3] = &unk_1E70DB090;
  context[5] = &v10;
  context[6] = a2;
  context[4] = &v6;
  CFSetApplyFunction(a1, apply_block_1_7727, context);
  v2 = 0;
  if ((v7[3] & 1) == 0)
  {
    v3 = v11[3];
    v2 = ccder_sizeof();
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);
  return v2;
}

uint64_t __SOSPeerInfoSetGetDEREncodedArraySize_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == SOSPeerInfoGetTypeID()))
  {
    result = SOSPeerInfoGetDEREncodedSize(cf, *(a1 + 48), v5, v6, v7, v8, v9, v10);
    *(*(*(a1 + 32) + 8) + 24) = result == 0;
    *(*(*(a1 + 40) + 8) + 24) += result;
  }

  else
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      result = SOSCreateErrorWithFormat(1040, *v12, v12, 0, @"%@", @"Non SOSPeerInfo in array");
    }

    else
    {
      result = SOSCreateErrorWithFormat(1040, 0, 0, 0, @"%@", @"Non SOSPeerInfo in array");
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t SOSPeerInfoSetEncodeToArrayDER(const __CFSet *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __CFSetCopyValues_block_invoke;
  context[3] = &__block_descriptor_tmp_19_7751;
  context[4] = Mutable;
  CFSetApplyFunction(a1, apply_block_1_7727, context);
  CFArrayOfSOSPeerInfosSortByID(Mutable);
  v9 = SOSPeerInfoArrayEncodeToDER(Mutable, a2, a3, a4);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

__CFArray *CreateArrayOfPeerInfoWithXPCObject(void *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v10 = sSecXPCErrorDomain;
    v11 = @"Unexpected Null Array to encode";
    v12 = 2;
    goto LABEL_5;
  }

  if (MEMORY[0x18CFDC200]() != MEMORY[0x1E69E9E70])
  {
    v10 = sSecXPCErrorDomain;
    v11 = @"Array of peer info not data";
    v12 = 1;
LABEL_5:
    SecCFCreateErrorWithFormat(v12, v10, 0, a2, a5, v11, a7, a8, v14);
    return 0;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(a1);
  xpc_data_get_length(a1);
  return SOSPeerInfoArrayCreateFromDER(*MEMORY[0x1E695E480], a2, &bytes_ptr);
}

int64_t CreateXPCObjectWithArrayOfPeerInfo(const __CFArray *a1, uint64_t a2)
{
  DEREncodedSize = SOSPeerInfoArrayGetDEREncodedSize(a1, a2);
  v5 = DEREncodedSize;
  if (DEREncodedSize)
  {
    v6 = malloc_type_malloc(DEREncodedSize, 0x100004077774924uLL);
    if (v6)
    {
      v7 = v6;
      if (SOSPeerInfoArrayEncodeToDER(a1, a2, v6, v6 + v5))
      {
        v5 = xpc_data_create(v7, v5);
      }

      else
      {
        v5 = 0;
      }

      free(v7);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t SOSPeerInfoGetDEREncodedSize(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    v11 = @"No PeerInfo to encode";
LABEL_10:
    SOSCreateErrorWithFormat(1045, 0, a2, 0, @"%@", v11);
    return 0;
  }

  if (!der_sizeof_plist(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8))
  {
    v11 = @"No Description to encode";
    goto LABEL_10;
  }

  CFDataGetLength(*(a1 + 24));
  if (!ccder_sizeof_raw_octet_string())
  {
    v11 = @"Peer not signed to encode";
    goto LABEL_10;
  }

  return ccder_sizeof();
}

uint64_t SOSPeerInfoEncodeToDER(uint64_t a1, CFTypeRef *a2, UInt8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 56) >= 2)
    {
      SOSPeerInfoPackV2Data(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    v11 = *(a1 + 16);
    v12 = der_encode_data(*(a1 + 24), a2);
    der_encode_plist_repair(v11, a2, 0, a3, v12, v13, v14, v15);

    return ccder_encode_constructed_tl();
  }

  else
  {
    SOSCreateErrorWithFormat(1045, 0, a2, 0, @"%@", @"No PeerInfo to encode");
    return 0;
  }
}

__CFData *SOSPeerInfoCopyEncodedData(uint64_t a1, int a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = *MEMORY[0x1E695E480];
    DEREncodedSize = SOSPeerInfoGetDEREncodedSize(a1, a3, a3, a4, a5, a6, a7, a8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __SOSPeerInfoCopyEncodedData_block_invoke;
    v13[3] = &__block_descriptor_48_e11__24__0Q8_16l;
    v13[4] = a1;
    v13[5] = a3;
    return CFDataCreateWithDER(v10, DEREncodedSize, v13);
  }

  else
  {
    SOSCreateErrorWithFormat(1045, 0, a3, 0, @"%@", @"No PeerInfo to encode");
    return 0;
  }
}

uint64_t SOSPeerInfoCreateFromDER(const __CFAllocator *a1, CFTypeRef *a2, uint64_t *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  SOSPeerInfoGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  cf = 0;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  *(Instance + 32) = 0;
  *(Instance + 56) = 0;
  v7 = *a3;
  v8 = ccder_decode_constructed_tl();
  *a3 = v8;
  v12 = der_decode_plist(a1, &cf, a2, v8, v42, v9, v10, v11);
  *a3 = v12;
  v16 = der_decode_data(a1, (Instance + 24), a2, v12, v42, v13, v14, v15);
  *a3 = v16;
  if (v16)
  {
    v17 = v16 == v42;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    SOSCreateErrorWithFormat(1035, 0, a2, 0, @"%@", @"Bad Format of Peer Info DER");
    v18 = cf;
    goto LABEL_20;
  }

  v18 = cf;
  v19 = CFGetTypeID(cf);
  if (v19 == CFDictionaryGetTypeID())
  {
    *(Instance + 16) = v18;
    CFRetain(v18);
    if (v18)
    {
      cf = 0;
      CFRelease(v18);
    }

    Value = CFDictionaryGetValue(*(Instance + 16), @"ConflictVersion");
    if (Value)
    {
      v21 = Value;
      v22 = CFGetTypeID(Value);
      if (v22 != CFNumberGetTypeID())
      {
        v34 = CFGetTypeID(v21);
        v35 = CFCopyTypeIDDescription(v34);
        SOSCreateErrorWithFormat(1040, 0, a2, 0, @"Expected (version) number got %@", v35);
        goto LABEL_25;
      }

      CFNumberGetValue(v21, kCFNumberCFIndexType, (Instance + 56));
    }

    v23 = CFDictionaryGetValue(*(Instance + 16), @"DeviceGestalt");
    if (!v23)
    {
      SOSCreateErrorWithFormat(1040, 0, a2, 0, @"gestalt key missing");
      goto LABEL_27;
    }

    v24 = v23;
    v25 = CFGetTypeID(v23);
    if (v25 == CFDictionaryGetTypeID())
    {
      *(Instance + 32) = v24;
      CFRetain(v24);
      v26 = _SOSPeerInfoCopyPubKey(Instance, @"PublicSigningKey", a2);
      if (v26)
      {
        v18 = v26;
        v27 = SOSCopyIDOfKey(v26, a2);
        *(Instance + 40) = v27;
        if (v27)
        {
          v28 = v27;
          Length = CFStringGetLength(v27);
          v30 = *MEMORY[0x1E695E480];
          if (Length > 8)
          {
            v46.location = 0;
            v46.length = 8;
            Copy = CFStringCreateWithSubstring(v30, v28, v46);
          }

          else
          {
            Copy = CFStringCreateCopy(v30, v28);
          }

          *(Instance + 48) = Copy;
          if (*(Instance + 56) >= 2)
          {
            SOSPeerInfoExpandV2Data(Instance, a2);
          }

          if (SOSPeerInfoVerify(Instance, a2))
          {
            goto LABEL_29;
          }

          SOSCreateErrorWithFormat(1038, 0, a2, 0, @"Signature doesn't validate");
          if (a2)
          {
            v39 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v40 = *a2;
              *buf = 138412290;
              v44 = v40;
              _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "Can't validate PeerInfo: %@", buf, 0xCu);
            }
          }
        }

        CFRelease(Instance);
        goto LABEL_28;
      }

LABEL_27:
      v18 = Instance;
LABEL_28:
      Instance = 0;
      goto LABEL_29;
    }

    v36 = CFGetTypeID(v24);
    v35 = CFCopyTypeIDDescription(v36);
    SOSCreateErrorWithFormat(1040, 0, a2, 0, @"Expected dictionary got %@", v35);
LABEL_25:
    if (v35)
    {
      CFRelease(v35);
    }

    goto LABEL_27;
  }

  v32 = CFGetTypeID(v18);
  v33 = CFCopyTypeIDDescription(v32);
  SOSCreateErrorWithFormat(1040, 0, a2, 0, @"Expected dictionary got %@", v33);
  if (v33)
  {
    CFRelease(v33);
  }

LABEL_20:
  CFRelease(Instance);
  Instance = 0;
  if (v18)
  {
    cf = 0;
LABEL_29:
    CFRelease(v18);
  }

  v37 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t SOSPeerInfoCreateFromData(int a1, CFTypeRef *a2, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  return SOSPeerInfoCreateFromDER(0, a2, &BytePtr);
}

BOOL SOSPeerInfoSerialNumberIsSet(uint64_t a1)
{
  v1 = SOSPeerInfoV2DictionaryCopyString(a1, sSerialNumberKey);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

CFMutableStringRef SOSPeerInfoV2DictionaryCopyString(uint64_t a1, const void *a2)
{
  if (!SOSPeerInfoExpandV2Data(a1, 0))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 80), a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFStringGetTypeID())
  {
    return 0;
  }

  v7 = *MEMORY[0x1E695E480];
  Length = CFStringGetLength(v5);

  return CFStringCreateMutableCopy(v7, Length, v5);
}

uint64_t SOSPeerInfoExpandV2Data(uint64_t result, CFTypeRef *a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 56) < 2)
    {
      return 0;
    }

    if (*(result + 73))
    {
      return 1;
    }

    if (*(result + 80))
    {
      goto LABEL_6;
    }

    Value = CFDictionaryGetValue(*(result + 16), sV2DictionaryKey);
    if (!Value || (v5 = Value, v6 = CFGetTypeID(Value), v6 != CFDataGetTypeID()))
    {
      v18 = @"No V2 Data in description";
LABEL_25:
      SOSCreateErrorWithFormat(1029, 0, a2, 0, @"%@", v18);
      return 0;
    }

    cf = 0;
    v7 = CFGetTypeID(v5);
    if (v7 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v5);
      Length = CFDataGetLength(v5);
      v10 = &BytePtr[Length];
      v14 = der_decode_plist(0, &cf, a2, BytePtr, &BytePtr[Length], v11, v12, v13);
      if (v14 && v14 == v10)
      {
        v15 = cf;
        v16 = CFGetTypeID(cf);
        if (v16 == CFDictionaryGetTypeID())
        {
          if (v15)
          {
            v17 = *(v2 + 80);
            if (v17)
            {
              *(v2 + 80) = 0;
              CFRelease(v17);
            }

            *(v2 + 80) = v15;
LABEL_6:
            result = 1;
            *(v2 + 73) = 1;
            return result;
          }

          goto LABEL_24;
        }

        v19 = CFGetTypeID(v15);
        v20 = CFCopyTypeIDDescription(v19);
        SOSCreateErrorWithFormat(1040, 0, a2, 0, @"Expected dictionary got %@", v20);
        if (v20)
        {
          CFRelease(v20);
        }
      }

      else
      {
        SOSCreateErrorWithFormat(1035, 0, a2, 0, @"%@", @"Bad Format of Dictionary DER");
        v15 = cf;
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    else
    {
      SOSCreateErrorWithFormat(1035, 0, a2, 0, @"%@", @"Corrupted v2Data Item");
    }

LABEL_24:
    v18 = @"Can't expand V2 Dictionary";
    goto LABEL_25;
  }

  return result;
}

void SOSPeerInfoSetSerialNumber(uint64_t a1)
{
  if (SOSGestaltSerial)
  {
    v2 = CFRetain(SOSGestaltSerial);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = MGCopyAnswer();
    if (!v2)
    {
      SOSCreateErrorWithFormat(1024, 0, 0, 0, @"%@", @"No Memory");
      return;
    }
  }

  v3 = v2;
  SOSPeerInfoV2DictionarySetValue(a1, sSerialNumberKey, v2);

  CFRelease(v3);
}

void SOSPeerInfoV2DictionarySetValue(uint64_t a1, const void *a2, const void *a3)
{
  if (SOSPeerInfoExpandV2Data(a1, 0))
  {
    v6 = *(a1 + 80);
    if (a3)
    {

      CFDictionarySetValue(v6, a2, a3);
    }

    else
    {

      CFDictionaryRemoveValue(v6, a2);
    }
  }
}

void SOSPeerInfoSetTestSerialNumber(uint64_t a1, const void *a2)
{
  if (a2)
  {
    SOSPeerInfoV2DictionarySetValue(a1, sSerialNumberKey, a2);
  }
}

CFMutableStringRef SOSPeerInfoCopySerialNumber(uint64_t a1)
{
  result = SOSPeerInfoV2DictionaryCopyString(a1, sSerialNumberKey);
  if (!result)
  {

    return CFRetain(@"Unknown");
  }

  return result;
}

BOOL SOSPeerInfoUpdateToV2(uint64_t a1, CFTypeRef *a2)
{
  if (!a1)
  {
    return 0;
  }

  *(a1 + 56) = 3;
  valuePtr = 3;
  v4 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  CFDictionarySetValue(*(a1 + 16), @"ConflictVersion", v4);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 73) = 0;
  Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = SOSViewCopyViewSet(1u);
  v7 = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  CFDictionaryAddValue(Mutable, sViewsKey, v6);
  v14 = SOSCreateDERFromDictionary(Mutable, a2, v8, v9, v10, v11, v12, v13);
  v15 = v14 != 0;
  if (!v14)
  {
    SOSCreateErrorWithFormat(1024, 0, a2, 0, @"%@", @"No Memory");
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  CFDictionaryAddValue(*(a1 + 16), sV2DictionaryKey, v14);
  SOSPeerInfoSetSerialNumber(a1);
  SOSPeerInfoExpandV2Data(a1, a2);
  if (v6)
  {
LABEL_6:
    CFRelease(v6);
  }

LABEL_7:
  if (v14)
  {
    CFRelease(v14);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v15;
}

CFDataRef SOSCreateDERFromDictionary(const __CFString *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = der_sizeof_plist(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = malloc_type_malloc(v10, 0x4B2AAD30uLL);
  if (!v12)
  {
    return 0;
  }

  v16 = v12;
  if (!der_encode_plist_repair(a1, a2, 0, v12, &v12[v11], v13, v14, v15))
  {
    free(v16);
    return 0;
  }

  v17 = *MEMORY[0x1E695E480];
  v18 = *MEMORY[0x1E695E488];

  return CFDataCreateWithBytesNoCopy(v17, v16, v11, v18);
}

void SOSPeerInfoPackV2Data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 56) >= 2)
    {
      v9 = *(a1 + 80);
      if (v9)
      {
        v10 = SOSCreateDERFromDictionary(v9, 0, a3, a4, a5, a6, a7, a8);
        CFDictionarySetValue(*(a1 + 16), sV2DictionaryKey, v10);
        if (v10)
        {

          CFRelease(v10);
        }
      }
    }
  }
}

void SOSPeerInfoV2DictionaryRemoveValue(uint64_t a1, const void *a2)
{
  if (SOSPeerInfoExpandV2Data(a1, 0))
  {
    v4 = *(a1 + 80);

    CFDictionaryRemoveValue(v4, a2);
  }
}

uint64_t SOSPeerInfoV2DictionaryHasBoolean(uint64_t a1, const void *a2)
{
  result = SOSPeerInfoExpandV2Data(a1, 0);
  if (result)
  {
    Value = CFDictionaryGetValue(*(a1 + 80), a2);
    result = 0;
    if (Value)
    {
      v6 = CFGetTypeID(Value);
      if (v6 == CFBooleanGetTypeID())
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL SOSPeerInfoV2DictionaryHasStringValue(uint64_t a1, const void *a2, const void *a3)
{
  AsString = SOSPeerInfoV2DictionaryGetAsString(a1, a2);
  if (a3 && AsString)
  {
    return CFEqual(AsString, a3) != 0;
  }

  else
  {
    return AsString == a3;
  }
}

const void *SOSPeerInfoV2DictionaryGetAsString(uint64_t a1, const void *a2)
{
  if (!SOSPeerInfoExpandV2Data(a1, 0))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 80), a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFStringGetTypeID())
  {
    return 0;
  }

  return v5;
}

const __CFString *SOSPeerInfoV2DictionaryHasString(uint64_t a1, const void *a2)
{
  result = SOSPeerInfoV2DictionaryGetAsString(a1, a2);
  if (result)
  {
    return (CFStringGetLength(result) > 0);
  }

  return result;
}

uint64_t SOSPeerInfoV2DictionaryHasSet(uint64_t a1, const void *a2)
{
  result = SOSPeerInfoExpandV2Data(a1, 0);
  if (result)
  {
    Value = CFDictionaryGetValue(*(a1 + 80), a2);
    result = 0;
    if (Value)
    {
      v6 = CFGetTypeID(Value);
      if (v6 == CFSetGetTypeID())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t SOSPeerInfoV2DictionaryHasData(uint64_t a1, const void *a2)
{
  result = SOSPeerInfoExpandV2Data(a1, 0);
  if (result)
  {
    Value = CFDictionaryGetValue(*(a1 + 80), a2);
    result = 0;
    if (Value)
    {
      v6 = CFGetTypeID(Value);
      if (v6 == CFDataGetTypeID())
      {
        return 1;
      }
    }
  }

  return result;
}

void SOSPeerInfoV2DictionaryWithSet(uint64_t a1, const void *a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __SOSPeerInfoV2DictionaryWithSet_block_invoke;
  v12 = &unk_1E70DB128;
  v6 = v5;
  v13 = v6;
  v7 = v10;
  if (SOSPeerInfoExpandV2Data(a1, 0))
  {
    Value = CFDictionaryGetValue(*(a1 + 80), a2);
    if (Value)
    {
      v9 = Value;
      CFRetain(Value);
      v11(v7, v9);
      CFRelease(v9);
    }

    else
    {
      v11(v7, 0);
    }
  }
}

CFTypeID __SOSPeerInfoV2DictionaryWithSet_block_invoke(CFTypeID result, CFTypeRef cf)
{
  if (cf)
  {
    v2 = result;
    v3 = CFGetTypeID(cf);
    result = CFSetGetTypeID();
    if (v3 == result)
    {
      v4 = *(*(v2 + 32) + 16);

      return v4();
    }
  }

  return result;
}

CFMutableSetRef SOSPeerInfoV2DictionaryCopySet(uint64_t a1, const void *a2)
{
  if (!SOSPeerInfoExpandV2Data(a1, 0))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 80), a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFSetGetTypeID())
  {
    return 0;
  }

  v7 = *MEMORY[0x1E695E480];
  Count = CFSetGetCount(v5);

  return CFSetCreateMutableCopy(v7, Count, v5);
}

void SOSPeerInfoV2DictionaryForEachSetValue(uint64_t a1, const void *a2, void *a3)
{
  context = a3;
  if (SOSPeerInfoExpandV2Data(a1, 0))
  {
    Value = CFDictionaryGetValue(*(a1 + 80), a2);
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFSetGetTypeID())
      {
        CFSetApplyFunction(v6, apply_block_1_7868, context);
      }
    }
  }
}

const __CFSet *SOSPeerInfoV2DictionaryHasSetContaining(uint64_t a1, const void *a2, const void *a3)
{
  result = SOSPeerInfoExpandV2Data(a1, 0);
  if (result)
  {
    result = CFDictionaryGetValue(*(a1 + 80), a2);
    if (result)
    {
      v7 = result;
      v8 = CFGetTypeID(result);
      if (v8 == CFSetGetTypeID())
      {
        return (CFSetContainsValue(v7, a3) != 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFMutableDataRef SOSPeerInfoV2DictionaryCopyData(uint64_t a1, const void *a2)
{
  if (!SOSPeerInfoExpandV2Data(a1, 0))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 80), a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFDataGetTypeID())
  {
    return 0;
  }

  v7 = *MEMORY[0x1E695E480];
  Length = CFDataGetLength(v5);

  return CFDataCreateMutableCopy(v7, Length, v5);
}

const void *SOSPeerInfoV2DictionaryCopyBoolean(uint64_t a1, const void *a2)
{
  if (!SOSPeerInfoExpandV2Data(a1, 0))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 80), a2);
  v5 = Value;
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (v6 == CFBooleanGetTypeID())
    {
      CFRetain(v5);
      return v5;
    }

    return 0;
  }

  return v5;
}

CFMutableDictionaryRef SOSPeerInfoV2DictionaryCopyDictionary(uint64_t a1, const void *a2)
{
  if (!SOSPeerInfoExpandV2Data(a1, 0))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 80), a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v7 = *MEMORY[0x1E695E480];
  Count = CFDictionaryGetCount(v5);

  return CFDictionaryCreateMutableCopy(v7, Count, v5);
}

const void *SOSPeerInfoCopyWithV2DictionaryUpdate(uint64_t a1, uint64_t a2, const __CFDictionary *a3, __SecKey *a4, CFTypeRef *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Copy = SOSPeerInfoCreateCopy(*MEMORY[0x1E695E480], a2, a5, a4, a5, a6, a7, a8);
  v12 = Copy;
  if (Copy)
  {
    if ((SOSPeerInfoExpandV2Data(Copy, a5) & 1) == 0 || (context[0] = MEMORY[0x1E69E9820], context[1] = 3221225472, context[2] = __SOSPeerInfoCopyWithV2DictionaryUpdate_block_invoke, context[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l, context[4] = v12, CFDictionaryApplyFunction(a3, apply_block_2_7874, context), SOSPeerInfoPackV2Data(v12, v13, v14, v15, v16, v17, v18, v19), (SOSPeerInfoSign(a4, v12, a5) & 1) == 0))
    {
      CFRelease(v12);
      return 0;
    }
  }

  return v12;
}

CFMutableSetRef SOSViewCopyViewSet(unsigned int a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v4 = Mutable;
  if ((a1 | 4) == 4)
  {
    CFSetAddValue(Mutable, @"WiFi");
    CFSetAddValue(v4, @"Passwords");
    CFSetAddValue(v4, @"CreditCards");
  }

  if (a1 > 5 || a1 == 2 || (CFSetAddValue(v4, @"iCloudIdentity"), a1 > 4))
  {
LABEL_12:
    if (a1 >= 2 && a1 != 3)
    {
      if (a1 == 6)
      {
        CFSetAddValue(v4, @"Engram");
        CFSetAddValue(v4, @"Manatee");
        CFSetAddValue(v4, @"AutoUnlock");
        CFSetAddValue(v4, @"Health");
        CFSetAddValue(v4, @"ApplePay");
        CFSetAddValue(v4, @"Home");
        CFSetAddValue(v4, @"LimitedPeersAllowed");
        CFSetAddValue(v4, @"MFi");
        CFSetAddValue(v4, @"Mail");
        CFSetAddValue(v4, @"Contacts");
        CFSetAddValue(v4, @"Photos");
        CFSetAddValue(v4, @"Groups");
        v7 = @"FindMy";
        goto LABEL_30;
      }

      if (a1 != 5)
      {
        goto LABEL_18;
      }
    }

    CFSetAddValue(v4, @"PCS-Escrow");
    if (a1 != 5)
    {
      CFSetAddValue(v4, @"PCS-FDE");
      CFSetAddValue(v4, @"PCS-Feldspar");
      CFSetAddValue(v4, @"PCS-Maildrop");
      CFSetAddValue(v4, @"PCS-MasterKey");
      CFSetAddValue(v4, @"PCS-Notes");
      CFSetAddValue(v4, @"PCS-Photos");
      CFSetAddValue(v4, @"PCS-Sharing");
      CFSetAddValue(v4, @"PCS-Backup");
      CFSetAddValue(v4, @"PCS-iCloudDrive");
      CFSetAddValue(v4, @"PCS-iMessage");
      CFSetAddValue(v4, @"NanoRegistry");
      CFSetAddValue(v4, @"WatchMigration");
      goto LABEL_18;
    }

    v7 = @"PCS-MasterKey";
LABEL_30:
    CFSetAddValue(v4, v7);
    return v4;
  }

  CFSetAddValue(v4, @"BackupBagV0");
  if (a1 > 2)
  {
    if (a1 == 3)
    {
LABEL_11:
      CFSetAddValue(v4, @"ContinuityUnlock");
      CFSetAddValue(v4, @"AppleTV");
      CFSetAddValue(v4, @"HomeKit");
      CFSetAddValue(v4, @"AccessoryPairing");
      CFSetAddValue(v4, @"PCS-CloudKit");
      goto LABEL_12;
    }
  }

  else if (a1)
  {
    goto LABEL_11;
  }

  CFSetAddValue(v4, @"OtherSyncable");
  if (a1 <= 3)
  {
    goto LABEL_11;
  }

LABEL_18:
  if (a1 != 3 || !sTestViewSet)
  {
    if (!a1 && sTestViewSet)
    {
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __CFSetUnion_block_invoke_8015;
      context[3] = &__block_descriptor_40_e10_v16__0r_v8l;
      context[4] = v4;
      CFSetApplyFunction(sTestViewSet, apply_block_1_8017, context);
    }

    return v4;
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = MEMORY[0x1E695E9F8];

  return CFSetCreateMutable(v2, 0, v5);
}

uint64_t SOSViewInSOSSystem(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFEqual(result, @"KeychainV0") || CFEqual(v1, @"WiFi") || CFEqual(v1, @"Passwords") || CFEqual(v1, @"CreditCards") || CFEqual(v1, @"iCloudIdentity") || CFEqual(v1, @"BackupBagV0") || CFEqual(v1, @"OtherSyncable") || CFEqual(v1, @"ContinuityUnlock") || CFEqual(v1, @"AppleTV") || CFEqual(v1, @"HomeKit") || CFEqual(v1, @"AccessoryPairing") || CFEqual(v1, @"PCS-CloudKit") || CFEqual(v1, @"PCS-Escrow") || CFEqual(v1, @"PCS-FDE") || CFEqual(v1, @"PCS-Feldspar") || CFEqual(v1, @"PCS-Maildrop") || CFEqual(v1, @"PCS-MasterKey") || CFEqual(v1, @"PCS-Notes") || CFEqual(v1, @"PCS-Photos") || CFEqual(v1, @"PCS-Sharing") || CFEqual(v1, @"PCS-Backup") || CFEqual(v1, @"PCS-iCloudDrive") || CFEqual(v1, @"PCS-iMessage") || CFEqual(v1, @"NanoRegistry") || CFEqual(v1, @"WatchMigration"))
    {
      return 1;
    }

    else
    {
      if (!CFEqual(v1, @"Engram") && !CFEqual(v1, @"Manatee") && !CFEqual(v1, @"AutoUnlock") && !CFEqual(v1, @"Health") && !CFEqual(v1, @"ApplePay") && !CFEqual(v1, @"Home") && !CFEqual(v1, @"LimitedPeersAllowed") && !CFEqual(v1, @"MFi") && !CFEqual(v1, @"Mail") && !CFEqual(v1, @"Contacts") && !CFEqual(v1, @"Photos") && !CFEqual(v1, @"Groups"))
      {
        CFEqual(v1, @"FindMy");
      }

      return 0;
    }
  }

  return result;
}

uint64_t SOSViewHintInSOSSystem(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (CFEqual(result, @"ContinuityUnlock") || CFEqual(v1, @"AppleTV") || CFEqual(v1, @"HomeKit") || CFEqual(v1, @"AccessoryPairing") || CFEqual(v1, @"PCS-CloudKit") || CFEqual(v1, @"PCS-Escrow") || CFEqual(v1, @"PCS-FDE") || CFEqual(v1, @"PCS-Feldspar") || CFEqual(v1, @"PCS-Maildrop") || CFEqual(v1, @"PCS-MasterKey") || CFEqual(v1, @"PCS-Notes") || CFEqual(v1, @"PCS-Photos") || CFEqual(v1, @"PCS-Sharing") || CFEqual(v1, @"PCS-Backup") || CFEqual(v1, @"PCS-iCloudDrive") || CFEqual(v1, @"PCS-iMessage") || CFEqual(v1, @"NanoRegistry") || CFEqual(v1, @"WatchMigration"))
    {
      return 1;
    }

    else
    {
      if (!CFEqual(v1, @"Engram") && !CFEqual(v1, @"Manatee") && !CFEqual(v1, @"AutoUnlock") && !CFEqual(v1, @"Health") && !CFEqual(v1, @"ApplePay") && !CFEqual(v1, @"Home") && !CFEqual(v1, @"LimitedPeersAllowed") && !CFEqual(v1, @"MFi") && !CFEqual(v1, @"Mail") && !CFEqual(v1, @"Contacts") && !CFEqual(v1, @"Photos") && !CFEqual(v1, @"Groups"))
      {
        CFEqual(v1, @"FindMy");
      }

      return 0;
    }
  }

  return result;
}

unint64_t SOSViewHintInCKKSSystem(unint64_t result)
{
  if (result)
  {
    v1 = result;
    return CFEqual(result, @"Engram") || CFEqual(v1, @"Manatee") || CFEqual(v1, @"AutoUnlock") || CFEqual(v1, @"Health") || CFEqual(v1, @"ApplePay") || CFEqual(v1, @"Home") || CFEqual(v1, @"LimitedPeersAllowed") || CFEqual(v1, @"MFi") || CFEqual(v1, @"Mail") || CFEqual(v1, @"Contacts") || CFEqual(v1, @"Photos") || CFEqual(v1, @"Groups") || CFEqual(v1, @"FindMy") != 0;
  }

  return result;
}

uint64_t SOSViewsGetV0ViewSet()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SOSViewsGetV0ViewSet_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SOSViewsGetV0ViewSet_sSOSViewsGetV0ViewSetSingleton;
  if (SOSViewsGetV0ViewSet_sSOSViewsGetV0ViewSetOnce != -1)
  {
    dispatch_once(&SOSViewsGetV0ViewSet_sSOSViewsGetV0ViewSetOnce, block);
  }

  return SOSViewsGetV0ViewSet_sSOSViewsGetV0ViewSetSingleton;
}

CFSetRef __SOSViewsGetV0ViewSet_block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"KeychainV0";
  result = CFSetCreate(*MEMORY[0x1E695E480], v4, 1, MEMORY[0x1E695E9F8]);
  **(a1 + 32) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SOSViewsGetV0SubviewSet()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SOSViewsGetV0SubviewSet_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SOSViewsGetV0SubviewSet_sSOSViewsGetV0SubviewSetSingleton;
  if (SOSViewsGetV0SubviewSet_sSOSViewsGetV0SubviewSetOnce != -1)
  {
    dispatch_once(&SOSViewsGetV0SubviewSet_sSOSViewsGetV0SubviewSetOnce, block);
  }

  return SOSViewsGetV0SubviewSet_sSOSViewsGetV0SubviewSetSingleton;
}

CFMutableSetRef __SOSViewsGetV0SubviewSet_block_invoke(uint64_t a1)
{
  result = SOSViewCopyViewSet(4u);
  **(a1 + 32) = result;
  return result;
}

uint64_t SOSViewsGetUserVisibleSet()
{
  if (SOSViewsGetUserVisibleSet_onceToken != -1)
  {
    dispatch_once(&SOSViewsGetUserVisibleSet_onceToken, &__block_literal_global_8018);
  }

  return SOSViewsGetUserVisibleSet_subViewSet;
}

void __SOSViewsGetUserVisibleSet_block_invoke()
{
  SOSViewsGetUserVisibleSet_subViewSet = SOSViewCopyViewSet(4u);
  CFSetRemoveValue(SOSViewsGetUserVisibleSet_subViewSet, @"iCloudIdentity");
  v0 = SOSViewsGetUserVisibleSet_subViewSet;

  CFSetRemoveValue(v0, @"BackupBagV0");
}

uint64_t SOSViewsGetV0BackupViewSet()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SOSViewsGetV0BackupViewSet_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SOSViewsGetV0BackupViewSet_sSOSViewsGetV0BackupViewSetSingleton;
  if (SOSViewsGetV0BackupViewSet_sSOSViewsGetV0BackupViewSetOnce != -1)
  {
    dispatch_once(&SOSViewsGetV0BackupViewSet_sSOSViewsGetV0BackupViewSetOnce, block);
  }

  return SOSViewsGetV0BackupViewSet_sSOSViewsGetV0BackupViewSetSingleton;
}

CFSetRef __SOSViewsGetV0BackupViewSet_block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"KeychainV0-tomb";
  result = CFSetCreate(*MEMORY[0x1E695E480], v4, 1, MEMORY[0x1E695E9F8]);
  **(a1 + 32) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SOSViewsGetV0BackupBagViewSet()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SOSViewsGetV0BackupBagViewSet_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SOSViewsGetV0BackupBagViewSet_sSOSViewsGetV0BackupBagViewSetSingleton;
  if (SOSViewsGetV0BackupBagViewSet_sSOSViewsGetV0BackupBagViewSetOnce != -1)
  {
    dispatch_once(&SOSViewsGetV0BackupBagViewSet_sSOSViewsGetV0BackupBagViewSetOnce, block);
  }

  return SOSViewsGetV0BackupBagViewSet_sSOSViewsGetV0BackupBagViewSetSingleton;
}

CFSetRef __SOSViewsGetV0BackupBagViewSet_block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"BackupBagV0-tomb";
  result = CFSetCreate(*MEMORY[0x1E695E480], v4, 1, MEMORY[0x1E695E9F8]);
  **(a1 + 32) = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void SOSViewsSetTestViewsSet(CFTypeRef cf)
{
  v2 = sTestViewSet;
  if (sTestViewSet)
  {
    sTestViewSet = 0;
    CFRelease(v2);
  }

  if (cf)
  {
    sTestViewSet = CFRetain(cf);
  }

  v3 = sosAllViews;
  if (sosAllViews)
  {
    sosAllViews = 0;
    CFRelease(v3);
  }

  sosAllViews = SOSViewCopyViewSet(0);
  CFSetAddValue(sosAllViews, @"KeychainV0");
  if (sTestViewSet)
  {
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __CFSetUnion_block_invoke_8015;
    context[3] = &__block_descriptor_40_e10_v16__0r_v8l;
    context[4] = sosAllViews;
    CFSetApplyFunction(sTestViewSet, apply_block_1_8017, context);
  }
}

uint64_t SOSViewsGetAllCurrent()
{
  if (SOSViewsGetAllCurrent_dot != -1)
  {
    dispatch_once(&SOSViewsGetAllCurrent_dot, &__block_literal_global_135_8020);
  }

  return sosAllViews;
}

void __SOSViewsGetAllCurrent_block_invoke()
{
  sosAllViews = SOSViewCopyViewSet(0);
  CFSetAddValue(sosAllViews, @"KeychainV0");
  if (sTestViewSet)
  {
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __CFSetUnion_block_invoke_8015;
    context[3] = &__block_descriptor_40_e10_v16__0r_v8l;
    context[4] = sosAllViews;
    CFSetApplyFunction(sTestViewSet, apply_block_1_8017, context);
  }
}

const __CFSet *SOSViewBitmaskFromSet(CFSetRef theSet)
{
  v1 = theSet;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  if (theSet)
  {
    if (SOSViewsGetBitmasks_once != -1)
    {
      dispatch_once(&SOSViewsGetBitmasks_once, &__block_literal_global_156);
    }

    if (SOSViewsGetBitmasks_masks)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __SOSViewBitmaskFromSet_block_invoke;
      v3[3] = &unk_1E70DB2E0;
      v3[4] = &v4;
      v3[5] = SOSViewsGetBitmasks_masks;
      CFSetApplyFunction(v1, apply_block_1_8017, v3);
    }

    v1 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1888A5660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t __SOSViewBitmaskFromSet_block_invoke(uint64_t a1, const void *a2)
{
  result = CFDictionaryGetValue(*(a1 + 40), a2);
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

void __SOSViewsGetBitmasks_block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  if (SOSViewsGetAllCurrent_dot != -1)
  {
    dispatch_once(&SOSViewsGetAllCurrent_dot, &__block_literal_global_135_8020);
  }

  v0 = sosAllViews;
  v1 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 3221225472;
  context[2] = __SOSViewsGetBitmasks_block_invoke_2;
  context[3] = &__block_descriptor_40_e10_v16__0r_v8l;
  context[4] = Mutable;
  CFSetApplyFunction(v0, apply_block_1_8017, context);
  Count = CFArrayGetCount(Mutable);
  if (Count < 33)
  {
    *buf = 0;
    v10 = buf;
    v11 = 0x2020000000;
    v12 = 1;
    v14.location = 0;
    v14.length = Count;
    CFArraySortValues(Mutable, v14, BitMaskCompare, 0);
    SOSViewsGetBitmasks_masks = CFDictionaryCreateMutable(v1, 0, MEMORY[0x1E695E528], 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __SOSViewsGetBitmasks_block_invoke_157;
    v7[3] = &unk_1E70DB370;
    v7[4] = buf;
    v5 = v7;
    v15.length = CFArrayGetCount(Mutable);
    v15.location = 0;
    CFArrayApplyFunction(Mutable, v15, apply_block_1_8017, v5);

    _Block_object_dispose(buf, 8);
    if (!Mutable)
    {
      goto LABEL_10;
    }

LABEL_9:
    CFRelease(Mutable);
    goto LABEL_10;
  }

  v4 = secLogObjForScope("views");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = Count;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Too many views defined, can't make bitmask (%d)", buf, 8u);
  }

  if (Mutable)
  {
    goto LABEL_9;
  }

LABEL_10:
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1888A5934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const __CFSet *SOSPeerInfoViewBitMask(uint64_t a1)
{
  result = SOSPeerInfoCopyEnabledViews(a1);
  if (result)
  {
    v2 = result;
    v3 = SOSViewBitmaskFromSet(result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

CFMutableSetRef SOSPeerInfoCopyEnabledViews(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) > 1)
  {
    result = SOSPeerInfoV2DictionaryCopySet(a1, sViewsKey);
    if (!result)
    {
      v9 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "%@ v2 peer has no views", &v12, 0xCu);
      }

      result = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    }

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    V0ViewSet = SOSViewsGetV0ViewSet();
    Count = CFSetGetCount(V0ViewSet);
    v3 = SOSViewsGetV0ViewSet();
    v4 = *MEMORY[0x1E69E9840];
    v5 = v3;
    v6 = *MEMORY[0x1E695E480];

    return CFSetCreateMutableCopy(v6, Count, v5);
  }

  return result;
}

CFMutableSetRef SOSViewCreateSetFromBitmask(uint64_t a1)
{
  if (SOSViewsGetBitmasks_once != -1)
  {
    dispatch_once(&SOSViewsGetBitmasks_once, &__block_literal_global_156);
  }

  v2 = SOSViewsGetBitmasks_masks;
  if (!SOSViewsGetBitmasks_masks)
  {
    return 0;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SOSViewCreateSetFromBitmask_block_invoke;
  v5[3] = &__block_descriptor_48_e15_v24__0r_v8r_v16l;
  v5[4] = a1;
  v5[5] = Mutable;
  CFDictionaryApplyFunction(v2, apply_block_2_8032, v5);
  return Mutable;
}

void __SOSViewCreateSetFromBitmask_block_invoke(uint64_t a1, const void *a2, uint64_t a3)
{
  if ((*(a1 + 32) & a3) != 0)
  {
    CFSetAddValue(*(a1 + 40), a2);
  }
}

BOOL SOSPeerInfoSupportsCKKSForAll(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = SOSPeerInfoV2DictionaryCopyBoolean(a1, sCKKSForAll);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFBooleanGetValue(v1) != 0;
  CFRelease(v2);
  return v3;
}

void SOSPeerInfoSetSupportsCKKSForAll(uint64_t a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  SOSPeerInfoV2DictionarySetValue(a1, sCKKSForAll, *v2);
}

const char *SOSViewsXlateAction(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "unknownViewAction";
  }

  else
  {
    return off_1E70DB390[a1 - 1];
  }
}

void SOSViewsForEachDefaultEnabledViewName(void *a1)
{
  v1 = a1;
  v2 = SOSViewCopyViewSet(1u);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 3221225472;
  context[2] = __SOSViewsForEachDefaultEnabledViewName_block_invoke;
  context[3] = &unk_1E70DD8F8;
  v3 = v1;
  v5 = v3;
  CFSetApplyFunction(v2, apply_block_1_8017, context);
  if (v2)
  {
    CFRelease(v2);
  }
}

CFTypeID __SOSViewsForEachDefaultEnabledViewName_block_invoke(CFTypeID result, CFTypeRef cf)
{
  if (cf)
  {
    v2 = result;
    v3 = CFGetTypeID(cf);
    result = CFStringGetTypeID();
    if (v3 == result)
    {
      v4 = *(*(v2 + 32) + 16);

      return v4();
    }
  }

  return result;
}

const __CFSet *SOSPeerInfoIsEnabledView(uint64_t a1, const void *a2)
{
  if (*(a1 + 56) > 1)
  {
    v5 = sViewsKey;

    return SOSPeerInfoV2DictionaryHasSetContaining(a1, v5, a2);
  }

  else
  {
    V0ViewSet = SOSViewsGetV0ViewSet();
    return (CFSetContainsValue(V0ViewSet, a2) != 0);
  }
}

void SOSPeerInfoWithEnabledViewSet(uint64_t a1, void (**a2)(void, void))
{
  if (*(a1 + 56) > 1)
  {
    SOSPeerInfoV2DictionaryWithSet(a1, sViewsKey, a2);
  }

  else
  {
    v2 = a2;
    V0ViewSet = SOSViewsGetV0ViewSet();
    a2[2](v2, V0ViewSet);
  }
}

uint64_t SOSPeerInfoGetPermittedViews()
{
  if (SOSViewsGetAllCurrent_dot != -1)
  {
    dispatch_once(&SOSViewsGetAllCurrent_dot, &__block_literal_global_135_8020);
  }

  return sosAllViews;
}

uint64_t SOSViewsEnable(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = SOSPeerInfoCopyEnabledViews(a1);
  if (v6)
  {
    v7 = v6;
    if (SOSViewsRequireIsKnownView(a2, a3))
    {
      V0SubviewSet = SOSViewsGetV0SubviewSet();
      if (!CFSetContainsValue(V0SubviewSet, a2) || !SOSVisibleKeychainNotAllowed(v9))
      {
        CFSetAddValue(v7, a2);
        SOSPeerInfoV2DictionarySetValue(a1, sViewsKey, v7);
        CFRelease(v7);
        v10 = 1;
        goto LABEL_14;
      }

      v10 = 3;
      SOSCreateErrorWithFormat(1026, 0, a3, 0, @"Peer is invalid for this view(%@) (ViewResultCode=%d)", a2, 3);
    }

    else
    {
      v10 = 4;
    }

    CFRelease(v7);
  }

  else
  {
    SOSCreateErrorWithFormat(1024, 0, a3, 0, @"%@", @"Failed to get memory for views in PeerInfo");
    v10 = 0;
  }

  v11 = secLogObjForScope("views");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v12 = *a3;
    }

    else
    {
      v12 = 0;
    }

    *buf = 138412546;
    v16 = a2;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Failed to enable view(%@): %@", buf, 0x16u);
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t SOSViewsRequireIsKnownView(uint64_t a1, CFTypeRef *a2)
{
  IsKnownView = SOSViewsIsKnownView(a1);
  if ((IsKnownView & 1) == 0)
  {
    SOSCreateErrorWithFormat(1026, 0, a2, 0, @"Unknown view(%@) (ViewResultCode=%d)", a1, 4);
  }

  return IsKnownView;
}

uint64_t SOSViewsIsKnownView(uint64_t value)
{
  if (value)
  {
    v1 = value;
    if (SOSViewsGetAllCurrent_dot != -1)
    {
      dispatch_once(&SOSViewsGetAllCurrent_dot, &__block_literal_global_135_8020);
    }

    if (CFSetContainsValue(sosAllViews, v1))
    {
      return 1;
    }

    else
    {
      v2 = secLogObjForScope("views");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v3 = 0;
        _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "Not a known view", v3, 2u);
      }

      return 0;
    }
  }

  return value;
}

uint64_t SOSViewSetEnable(uint64_t a1, const __CFSet *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = SOSPeerInfoCopyEnabledViews(a1);
  v5 = v4;
  if (v4)
  {
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 3221225472;
    context[2] = __SOSViewSetEnable_block_invoke;
    context[3] = &unk_1E70DB328;
    context[5] = a1;
    context[6] = v4;
    context[4] = &v11;
    CFSetApplyFunction(a2, apply_block_1_8017, context);
    if (*(v12 + 24) == 1)
    {
      SOSPeerInfoV2DictionarySetValue(a1, sViewsKey, v5);
    }

    CFRelease(v5);
  }

  else
  {
    v8 = secLogObjForScope("views");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "failed to copy enabled views", buf, 2u);
    }
  }

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void __SOSViewSetEnable_block_invoke(uint64_t a1, void *value)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!SOSViewsIsKnownView(value) || (V0SubviewSet = SOSViewsGetV0SubviewSet(), CFSetContainsValue(V0SubviewSet, value)) && (SOSVisibleKeychainNotAllowed(v5) & 1) != 0)
  {
    v6 = secLogObjForScope("views");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = value;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "couldn't add view %@", &v10, 0xCu);
    }

    goto LABEL_8;
  }

  if (CFSetContainsValue(*(a1 + 48), value))
  {
LABEL_8:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
  v8 = *(a1 + 48);
  v9 = *MEMORY[0x1E69E9840];

  CFSetAddValue(v8, value);
}

uint64_t SOSViewsDisable(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = SOSPeerInfoCopyEnabledViews(a1);
  if (v6)
  {
    if (SOSViewsRequireIsKnownView(a2, a3))
    {
      CFSetRemoveValue(v6, a2);
      SOSPeerInfoV2DictionarySetValue(a1, sViewsKey, v6);
      CFRelease(v6);
      v6 = 2;
      goto LABEL_4;
    }

    CFRelease(v6);
    v6 = 4;
  }

  else
  {
    SOSCreateErrorWithFormat(1024, 0, a3, 0, @"%@", @"Failed to get memory for views in PeerInfo");
  }

  v9 = secLogObjForScope("views");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v10 = *a3;
    }

    else
    {
      v10 = 0;
    }

    *buf = 138412546;
    v12 = a2;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "Failed to disable view(%@): %@", buf, 0x16u);
  }

LABEL_4:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t SOSViewSetDisable(uint64_t a1, const __CFSet *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = SOSPeerInfoCopyEnabledViews(a1);
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __SOSViewSetDisable_block_invoke;
    v9[3] = &unk_1E70DB2E0;
    v9[4] = &v11;
    v9[5] = v4;
    CFSetApplyFunction(a2, apply_block_1_8017, v9);
    if (*(v12 + 24) == 1)
    {
      SOSPeerInfoV2DictionarySetValue(a1, sViewsKey, v5);
    }

    CFRelease(v5);
  }

  else
  {
    v8 = secLogObjForScope("views");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "failed to copy enabled views", buf, 2u);
    }
  }

  v6 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_1888A67A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SOSViewSetDisable_block_invoke(uint64_t a1, void *value)
{
  v10 = *MEMORY[0x1E69E9840];
  if (SOSViewsIsKnownView(value) && CFSetContainsValue(*(a1 + 40), value))
  {
    v4 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v5 = *MEMORY[0x1E69E9840];

    CFSetRemoveValue(v4, value);
  }

  else
  {
    v6 = secLogObjForScope("views");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = value;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "couldn't delete view %@", &v8, 0xCu);
    }

    v7 = *MEMORY[0x1E69E9840];
  }
}

uint64_t SOSViewsQuery(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (SOSViewsRequireIsKnownView(a2, a3))
  {
    v6 = SOSPeerInfoCopyEnabledViews(a1);
    if (v6)
    {
      v7 = v6;
      if (CFSetContainsValue(v6, @"KeychainV0") && (V0SubviewSet = SOSViewsGetV0SubviewSet(), CFSetContainsValue(V0SubviewSet, a2)))
      {
        v9 = 1;
      }

      else if (CFSetContainsValue(v7, a2))
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      CFRelease(v7);
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v12 = secLogObjForScope("views");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (a3)
      {
        v13 = *a3;
      }

      else
      {
        v13 = 0;
      }

      v14 = 138412546;
      v15 = a2;
      v16 = 2112;
      v17 = v13;
      _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "Failed to query view(%@): %@", &v14, 0x16u);
    }

    v9 = 4;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t SOSViewSetIntersectsV0(const __CFSet *a1)
{
  V0ViewSet = SOSViewsGetV0ViewSet();
  v3 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  if (a1 && V0ViewSet)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __CFSetIntersectionIsEmpty_block_invoke;
    v5[3] = &unk_1E70DB2E0;
    v5[4] = &v6;
    v5[5] = V0ViewSet;
    CFSetApplyFunction(a1, apply_block_1_8017, v5);
    v3 = *(v7 + 24) ^ 1;
  }

  _Block_object_dispose(&v6, 8);
  return v3 & 1;
}

void sub_1888A6B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CFSetIntersectionIsEmpty_block_invoke(uint64_t a1, const void *a2)
{
  result = CFSetContainsValue(*(a1 + 40), a2);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 24);
  if (result)
  {
    v5 = 0;
  }

  *(v4 + 24) = v5;
  return result;
}

uint64_t SOSPeerInfoV0ViewsEnabled(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = SOSPeerInfoCopyEnabledViews(a1);
  v2 = SOSViewSetIntersectsV0(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t SOSPeerInfoHasUserVisibleViewsEnabled(uint64_t a1)
{
  if (a1)
  {
    v1 = SOSPeerInfoCopyEnabledViews(a1);
    if (SOSViewsGetUserVisibleSet_onceToken != -1)
    {
      dispatch_once(&SOSViewsGetUserVisibleSet_onceToken, &__block_literal_global_8018);
    }

    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 1;
    if (v1 && SOSViewsGetUserVisibleSet_subViewSet)
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __CFSetIntersectionIsEmpty_block_invoke;
      v5[3] = &unk_1E70DB2E0;
      v5[4] = &v6;
      v5[5] = SOSViewsGetUserVisibleSet_subViewSet;
      CFSetApplyFunction(v1, apply_block_1_8017, v5);
      v2 = *(v7 + 24) ^ 1;
      _Block_object_dispose(&v6, 8);
LABEL_9:
      CFRelease(v1);
      v3 = v2;
      return v3 & 1;
    }

    _Block_object_dispose(&v6, 8);
    v2 = 0;
    v3 = 0;
    if (v1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1888A6D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CreateXPCObjectWithCFSetRef(const __CFSet *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = der_sizeof_set(a1, a2);
    if (v10)
    {
      v11 = v10;
      v12 = malloc_type_malloc(v10, 0x100004077774924uLL);
      if (v12)
      {
        v13 = v12;
        der_encode_set_repair(a1, a2, 0);
        v14 = xpc_data_create(v13, v11);
        free(v13);
        goto LABEL_5;
      }
    }
  }

  else
  {
    SecCFCreateErrorWithFormat(2, sSecXPCErrorDomain, 0, a2, a5, @"Unexpected Null Set to encode", a7, a8, v16);
  }

  v14 = 0;
LABEL_5:

  return v14;
}

uint64_t __CFSecRecoveryKeyGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

void CFSecRecoveryKeyDestroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = 0;
    CFRelease(v2);
  }
}

id SecRKCreateRecoveryKeyString(void *a1)
{
  v7 = 0;
  v2 = SecPasswordGenerate(4, &v7, 0);
  if (v2)
  {
    v3 = v2;
    if (ValidateRecoveryKey(v2, a1))
    {
      v4 = v3;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v3 = v7;
  if (a1)
  {
    v5 = v7;
    v4 = 0;
    *a1 = v3;
    goto LABEL_10;
  }

  if (v7)
  {
    v7 = 0;
LABEL_8:
    CFRelease(v3);
  }

  v4 = 0;
LABEL_10:

  return v4;
}

BOOL ValidateRecoveryKey(CFStringRef theString, void *a2)
{
  v6 = 0;
  v3 = SecPasswordValidatePasswordFormat(4, theString, &v6);
  if (!v3)
  {
    v4 = v6;
    if (a2)
    {
      *a2 = v6;
    }

    else if (v6)
    {
      v6 = 0;
      CFRelease(v4);
    }
  }

  return v3;
}

void *SecRKCreateRecoveryKeyWithError(void *a1, void *a2)
{
  v3 = a1;
  if (!ValidateRecoveryKey(v3, a2))
  {
    goto LABEL_9;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CFSecRecoveryKeyGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &CFSecRecoveryKeyGetTypeID_sCFSecRecoveryKeyGetTypeIDSingleton;
  if (CFSecRecoveryKeyGetTypeID_sCFSecRecoveryKeyGetTypeIDOnce != -1)
  {
    dispatch_once(&CFSecRecoveryKeyGetTypeID_sCFSecRecoveryKeyGetTypeIDOnce, block);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (SecCFAllocatorZeroize_sOnce != -1)
    {
      dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
    }

    ExternalRepresentation = CFStringCreateExternalRepresentation(SecCFAllocatorZeroize_sAllocator, v3, 0x8000100u, 0);
    Instance[2] = ExternalRepresentation;
    if (!ExternalRepresentation)
    {
      CFRelease(Instance);
LABEL_9:
      Instance = 0;
    }
  }

  return Instance;
}

__CFString *SecRKCopyAccountRecoveryPassword(uint64_t a1)
{
  v1 = SecRKCreateDerivedSecret(a1, 32);
  if (v1)
  {
    v2 = v1;
    CFDataGetBytePtr(v1);
    v3 = (2 * (((CFDataGetLength(v2) + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
    if (v3 >= 0x400)
    {
      __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
    }

    v4 = malloc_type_malloc(v3, 0xF2DADC5FuLL);
    if (v4)
    {
      v5 = v4;
      BytePtr = CFDataGetBytePtr(v2);
      Length = CFDataGetLength(v2);
      SecBase64Encode_(BytePtr, Length, v5, v3, 0, &v10);
      if (SecCFAllocatorZeroize_sOnce != -1)
      {
        dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
      }

      v8 = CFStringCreateWithBytes(SecCFAllocatorZeroize_sAllocator, v5, v3, 0x8000100u, 0);
      cc_clear();
      free(v5);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

__CFData *SecRKCreateDerivedSecret(uint64_t a1, CFIndex a2)
{
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
  CFDataSetLength(Mutable, a2);
  if (Mutable)
  {
    ccsha256_di();
    CFDataGetLength(*(a1 + 16));
    CFDataGetBytePtr(*(a1 + 16));
    CFDataGetLength(Mutable);
    CFDataGetMutableBytePtr(Mutable);
    if (cchkdf())
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

id SecRKCopyAccountRecoveryVerifier(void *a1, void *a2)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v18 = 0;
  if (connectAppleIDFrameworkSymbols_onceToken != -1)
  {
    dispatch_once(&connectAppleIDFrameworkSymbols_onceToken, &__block_literal_global_8102);
  }

  if (connectAppleIDFrameworkSymbols_framework)
  {
    v4 = localProtocolSRPGROUP == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || localAppleIDauthSupportCreateVerifierPtr == 0)
  {
    SOSCreateErrorWithFormat(1041, 0, &v18, 0, @"%@", @"Recovery Key Creation Not Supported on this platform");
    v6 = 0;
    if (a2)
    {
      *a2 = v18;
    }
  }

  else
  {
    v7 = CFDataCreateWithRandomBytes(0x20uLL);
    v8 = localProtocolSRPGROUP;
    v9 = localAppleIDauthSupportCreateVerifierPtr(localProtocolSRPGROUP, @"foo", v7, &unk_1EFAAC730, v3, &v18);
    v10 = SecRKCreateRecoveryKeyWithError(v3, 0);
    v11 = SecRKCreateDerivedSecret(v10, 32);
    v12 = v11;
    if (v9 && v11)
    {
      v19[0] = @"s";
      v19[1] = @"i";
      v20[0] = v7;
      v20[1] = &unk_1EFAAC730;
      v19[2] = @"p";
      v19[3] = @"v";
      v20[2] = v8;
      v20[3] = v9;
      v19[4] = @"mkid";
      v20[4] = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:5];
    }

    else
    {
      v13 = 0;
      if (a2)
      {
        v14 = v18;
        if (v18)
        {
          v15 = v18;
          v13 = 0;
          *a2 = v14;
        }
      }
    }

    v6 = v13;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

void *__connectAppleIDFrameworkSymbols_block_invoke()
{
  localAppleIDauthSupportCreateVerifierPtr = 0;
  localProtocolSRPGROUP = 0;
  result = dlopen("/System/Library/PrivateFrameworks/AppleIDAuthSupport.framework/AppleIDAuthSupport", 2);
  connectAppleIDFrameworkSymbols_framework = result;
  if (result)
  {
    v1 = dlsym(result, "kAppleIDAuthSupportProtocolSRPGROUP2048SHA256PBKDF");
    if (v1)
    {
      v2 = *v1;
    }

    else
    {
      v2 = 0;
    }

    localProtocolSRPGROUP = v2;
    result = dlsym(connectAppleIDFrameworkSymbols_framework, "AppleIDAuthSupportCreateVerifier");
    localAppleIDauthSupportCreateVerifierPtr = result;
  }

  return result;
}

__CFData *RKBackupCreateECKey(uint64_t a1, char a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x18CFD9EA0]();
  v5 = (32 * *v4) | 0x10;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v18 - v6);
  v8 = 0;
  do
  {
    v9 = &v7[v8 / 8];
    *v9 = 0xAAAAAAAAAAAAAAAALL;
    v9[1] = 0xAAAAAAAAAAAAAAAALL;
    v8 += 16;
  }

  while (v6 != v8);
  v10 = SecRKCreateDerivedSecret(a1, 128);
  if (v10)
  {
    v11 = v10;
    CFDataGetLength(v10);
    CFDataGetBytePtr(v11);
    ccrng();
    if (ccec_generate_key_deterministic())
    {
      Mutable = 0;
    }

    else
    {
      v12 = *v7;
      v13 = (cczp_bitlen() + 7) >> 3 << a2;
      if (SecCFAllocatorZeroize_sOnce != -1)
      {
        dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
      }

      Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
      CFDataSetLength(Mutable, v13);
      if (Mutable)
      {
        CFDataGetMutableBytePtr(Mutable);
        ccec_compact_export();
      }
    }

    CFRelease(v11);
  }

  else
  {
    Mutable = 0;
  }

  v15 = Mutable;
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

uint64_t SecRKRegisterBackupPublicKey(uint64_t a1, CFTypeRef *a2)
{
  ECKey = RKBackupCreateECKey(a1, 0);
  if (ECKey)
  {
    v4 = ECKey;
    v5 = SOSCCRegisterRecoveryPublicKey(ECKey, a2);
    CFRelease(v4);
    return v5;
  }

  else
  {
    SOSCreateErrorWithFormat(1034, 0, a2, 0, @"%@", @"Failed to create key from rk");
    return 0;
  }
}

const SecAsn1Template *NSS_TimeChooser(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = *(a5 + 16);
  }

  else
  {
    if (!a4)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v5 = *a3 & 0x1F;
    *(a5 + 16) = v5;
  }

  if (v5 == 24)
  {
    return kSecAsn1GeneralizedTimeTemplate;
  }

LABEL_9:
  v7 = &off_1E70DB640;
  result = kSecAsn1GeneralizedTimeTemplate;
  while (1)
  {
    v8 = *v7;
    if (!*v7)
    {
      break;
    }

    v9 = *(v7 - 8);
    v7 += 2;
    if (v5 == v9)
    {
      return v8;
    }
  }

  return result;
}

void *PR_getThreadErrInfo(int a1, int *a2)
{
  if ((PR_threadKeyInitFlag & 1) == 0)
  {
    pthread_mutex_lock(&PR_threadKeyLock);
    if (!a1 && PR_threadKeyErrorFlag)
    {
      pthread_mutex_unlock(&PR_threadKeyLock);
      v4 = 0;
      v5 = -5991;
LABEL_15:
      *a2 = v5;
      return v4;
    }

    if ((PR_threadKeyInitFlag & 1) == 0)
    {
      v6 = pthread_key_create(&PR_threadKey, MEMORY[0x1E69E9B38]);
      if (v6)
      {
        v7 = v6;
        PR_threadKeyErrorFlag = 1;
        pthread_mutex_unlock(&PR_threadKeyLock);
        v4 = 0;
        *a2 = v7;
        return v4;
      }

      PR_threadKeyErrorFlag = 0;
      PR_threadKeyInitFlag = 1;
    }

    pthread_mutex_unlock(&PR_threadKeyLock);
  }

  *a2 = 0;
  v8 = pthread_getspecific(PR_threadKey);
  v4 = v8;
  if (a1 && !v8)
  {
    v9 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
    v4 = v9;
    if (!v9)
    {
      v5 = -6000;
      goto LABEL_15;
    }

    *v9 = 0;
    pthread_setspecific(PR_threadKey, v9);
  }

  return v4;
}

const SecAsn1Template *NSS_ATVChooser(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = *(a5 + 16);
  }

  else
  {
    if (!a4)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v5 = *a3 & 0x1F;
    *(a5 + 16) = v5;
  }

  if (v5 == 19)
  {
    return kSecAsn1PrintableStringTemplate;
  }

LABEL_9:
  v7 = &off_1E70DBBE0;
  result = kSecAsn1PrintableStringTemplate;
  while (1)
  {
    v8 = *v7;
    if (!*v7)
    {
      break;
    }

    v9 = *(v7 - 8);
    v7 += 2;
    if (v5 == v9)
    {
      return v8;
    }
  }

  return result;
}

void *NSS_genNameChooser(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = *(a5 + 16);
    if (!*(a5 + 16))
    {
      return &kSecAsn1OtherNameTemplate;
    }
  }

  else
  {
    if (!a4)
    {
      return &kSecAsn1OtherNameTemplate;
    }

    v5 = *a3 & 0x1F;
    *(a5 + 16) = v5;
    if (!v5)
    {
      return &kSecAsn1OtherNameTemplate;
    }
  }

  v6 = &off_1E70DBC50;
  result = &kSecAsn1OtherNameTemplate;
  while (1)
  {
    v8 = *v6;
    if (!*v6)
    {
      break;
    }

    v9 = *(v6 - 8);
    v6 += 2;
    if (v5 == v9)
    {
      return v8;
    }
  }

  return result;
}

uint64_t SecAsn1TaggedTemplateChooser(uint64_t a1, int a2, _BYTE *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  if (a2)
  {
    v6 = *(a5 + 16);
  }

  else if (a4)
  {
    v6 = *a3 & 0x1F;
    *(a5 + 16) = v6;
  }

  else
  {
    v6 = 0;
  }

  result = *(a6 + 1);
  if (result && v6 != *a6)
  {
    for (i = (a6 + 24); ; i += 2)
    {
      v9 = *i;
      if (!*i)
      {
        break;
      }

      v10 = *(i - 8);
      if (v6 == v10)
      {
        return v9;
      }
    }
  }

  return result;
}

const SecAsn1Template *NSS_P7_ContentInfoChooser(uint64_t a1, int a2)
{
  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS7_Data))
  {
    v4 = 1;
    v5 = kSecAsn1PointerToOctetStringTemplate;
    goto LABEL_10;
  }

  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS7_EncryptedData))
  {
    v4 = 6;
    v5 = &NSS_P7_PtrToEncryptedDataTemplate;
    goto LABEL_10;
  }

  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS7_SignedData))
  {
    v4 = 2;
LABEL_9:
    v5 = kSecAsn1PointerToAnyTemplate;
    goto LABEL_10;
  }

  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS7_EnvelopedData))
  {
    v4 = 3;
    goto LABEL_9;
  }

  v5 = kSecAsn1PointerToAnyTemplate;
  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS7_SignedAndEnvelopedData))
  {
    v4 = 4;
  }

  else if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS7_DigestedData))
  {
    v4 = 5;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

LABEL_10:
  if (!a2)
  {
    *(a1 + 16) = v4;
  }

  return v5;
}

uint64_t PL_ArenaAllocate(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 48);
  v3 = (v2 + a2) & ~v2;
  if (v3 < a2)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = v3;
  do
  {
    result = v6[3];
    if (v3 <= (v6[2] - result))
    {
      *(a1 + 32) = v6;
      v6[3] = result + v3;
      return result;
    }

    v6 = *v6;
  }

  while (v6);
  if (*(a1 + 40) > v3)
  {
    v3 = *(a1 + 40);
  }

  v8 = v2 + 32;
  if (v8 > ~v3)
  {
    return 0;
  }

  v9 = v3 + v8;
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v3 + v8;
  }

  v11 = malloc_type_malloc(v10, 0x64033449uLL);
  result = (v11 + *(a1 + 48) + 32) & ~*(a1 + 48);
  v12 = __CFADD__(result, v7);
  if (v11)
  {
    v13 = !v12;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    free(v11);
    return 0;
  }

  if (!v11)
  {
    return 0;
  }

  v11[2] = v11 + v9;
  v11[3] = result + v7;
  v14 = *(a1 + 32);
  *v11 = *v14;
  v11[1] = result;
  *v14 = v11;
  *(a1 + 32) = v11;
  if (!*a1)
  {
    *a1 = v11;
  }

  return result;
}

char *PL_ArenaGrow(uint64_t a1, char *a2, unsigned int a3, unsigned int a4)
{
  if (a3 > 0x7FFFFFFE || a4 > 0x7FFFFFFE)
  {
    return 0;
  }

  v6 = a1;
  v7 = *(a1 + 48);
  v8 = (v7 + a3) & ~v7;
  if (v8 > 0x7FFFFFFE)
  {
    return 0;
  }

  v10 = ~v7;
  v11 = v8 + a4;
  if (v8 + a4 <= 2 * v8)
  {
    v11 = 2 * v8;
  }

  v12 = (v7 + v11) & v10;
  if (v12 > 0x7FFFFFFE)
  {
    return 0;
  }

  v14 = (v12 + v7) & v10;
  if (v14 < v12)
  {
    return 0;
  }

  v17 = *(a1 + 32);
  v15 = *(v17 + 24);
  if (v14 <= *(v17 + 16) - v15)
  {
    *(v17 + 24) = &v15[v14];
  }

  else
  {
    v15 = PL_ArenaAllocate(a1, v14);
  }

  if (v15)
  {
    *(v6[4] + 24) = &v15[~*(v6 + 12) & (v6[6] + a4 + a3)];
    memcpy(v15, a2, a3);
    v18 = *v6;
    if (*v6)
    {
      while (1)
      {
        v19 = v18;
        if (v18[1] == a2 && &a2[v8 & 0x7FFFFFFF] == v18[3])
        {
          break;
        }

        v18 = *v18;
        v6 = v19;
        if (!*v19)
        {
          return v15;
        }
      }

      *v6 = *v18;
      free(v18);
    }
  }

  return v15;
}

uint64_t SEC_ASN1EncoderUpdate(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v96 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if (v6 == 3)
  {
    v6 = 2;
    *(a1 + 16) = 2;
  }

  if (a2)
  {
    v7 = a3 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  v9 = a3 + 1;
  while (v6 == 2)
  {
    v10 = *(a1 + 8);
    v11 = *(v10 + 10);
    if (v11 > 2)
    {
      if ((v11 - 5) < 4)
      {
        goto LABEL_20;
      }

      if (v11 != 3)
      {
        if (v11 != 4)
        {
LABEL_152:
          *(a1 + 16) = 1;
          result = 0xFFFFFFFFLL;
          goto LABEL_151;
        }

        if (*(v10 + 16))
        {
          LOWORD(v94) = 0;
          (*(*v10 + 56))(*(*v10 + 64), &v94, 2, *(v10 + 14), 3);
        }

        v12 = v10[3];
LABEL_38:
        *(*v10 + 8) = v12;
        goto LABEL_102;
      }

      v28 = v10[4];
      v29 = *v10;
      v30 = *(*v10 + 32);
      if (v30)
      {
        v31 = *(v28 + 56);
        v32 = *(v28 + 16);
        *(v29 + 48) = 1;
        v30(*(v29 + 40), 0, v32, v31);
        *(v29 + 48) = 0;
      }

      v33 = *(v28 + 8);
      v34 = *(v33 + 24);
      *(v28 + 8) = v33 + 24;
      if (!v34)
      {
        *(v28 + 40) = 9;
        goto LABEL_20;
      }

      *(v28 + 16) = v10[2] + *(v33 + 28);
      v35 = *v10;
      v36 = *(*v10 + 32);
      if (v36)
      {
        v37 = *(v28 + 56);
        *(v35 + 48) = 1;
        v36(*(v35 + 40), 1);
        *(v35 + 48) = 0;
        v35 = *v10;
      }

      *(v35 + 8) = v28;
      goto LABEL_50;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        if (v11 != 2)
        {
          goto LABEL_152;
        }

        v12 = v10[4];
        v13 = *v10[2];
        v14 = *(*(v12 + 8) + 4);
        do
        {
          v15 = *v13++;
        }

        while (v15 != *(v12 + 16) - v14);
        v16 = *v13;
        if (!v16)
        {
          *(v12 + 40) = 9;
          goto LABEL_20;
        }

        *(v12 + 16) = v16 + v14;
        *(v12 + 40) = 0;
        *(v12 + 64) = 0;
        goto LABEL_38;
      }

      if (!*(a1 + 24))
      {
        v38 = v10[6];
        if (v38 > 15)
        {
          if ((v38 - 16) < 2)
          {
LABEL_20:
            *(v10 + 10) = 4;
            goto LABEL_102;
          }

          if (v38 == 28)
          {
            v39 = v10[2];
            v40 = *v39;
            if ((*v39 & 3) != 0)
            {
              goto LABEL_93;
            }
          }

          else
          {
            if (v38 == 30)
            {
              v39 = v10[2];
              v40 = *v39;
              if ((*v39 & 1) == 0)
              {
                goto LABEL_94;
              }

LABEL_93:
              *(*v10 + 16) = 1;
              goto LABEL_20;
            }

LABEL_88:
            v39 = v10[2];
            v40 = *v39;
          }

LABEL_94:
          (*(*v10 + 56))(*(*v10 + 64), v39[1], v40, *(v10 + 14), 2);
          goto LABEL_20;
        }

        if (v38 == 2)
        {
          v69 = v10[2];
          v70 = *v69;
          if (*v69)
          {
            v71 = v69[1];
            v72 = *(v10 + 21);
            v73 = *v71;
            if ((*v71 & 0x80000000) == 0)
            {
              v74 = v71;
              v75 = v70;
              goto LABEL_140;
            }

LABEL_145:
            v74 = v71;
            v75 = v70;
            if (v72)
            {
LABEL_140:
              while (!v73)
              {
                v70 = v75 - 1;
                if (v75 == 1)
                {
                  break;
                }

                v71 = v74 + 1;
                if (v74[1] < 0)
                {
                  if (v72)
                  {
                    break;
                  }
                }

                v73 = *++v74;
                --v75;
                if ((v73 & 0x80) != 0)
                {
                  goto LABEL_145;
                }
              }

              (*(*v10 + 56))(*(*v10 + 64), v74, v75, *(v10 + 14), 2);
            }

            else
            {
              LOBYTE(v94) = 0;
              (*(*v10 + 56))(*(*v10 + 64), &v94, 1, *(v10 + 14), 2);
              (*(*v10 + 56))(*(*v10 + 64), v71, v70, *(v10 + 14), 2);
            }
          }

          goto LABEL_20;
        }

        if (v38 == 3)
        {
          v50 = v10[2];
          v51 = *v50 + 7;
          v52 = v51 >> 3;
          LOBYTE(v94) = (v51 & 0xF8) - *v50;
          (*(*v10 + 56))(*(*v10 + 64), &v94, 1, *(v10 + 14), 2);
          (*(*v10 + 56))(*(*v10 + 64), v50[1], v52, *(v10 + 14), 2);
          goto LABEL_20;
        }

        goto LABEL_88;
      }

      if ((v8 & 1) == 0)
      {
        if (v10[6] != 1024)
        {
          LOBYTE(v94) = v10[6];
          (*(*v10 + 56))(*(*v10 + 64), &v94, 1, *(v10 + 14), 0);
          if (v10[6] == 3)
          {
            v95 = -86;
            v94 = 0xAAAAAAAAAAAAAAAALL;
            if (v9 < 0x80)
            {
              LOBYTE(v94) = v9;
              v21 = 1;
            }

            else
            {
              v17 = 0;
              v18 = v9;
              do
              {
                v19 = v17++;
                v20 = v18 >= 0x100;
                v18 >>= 8;
              }

              while (v20);
              v21 = v19 + 2;
              LOBYTE(v94) = v17 | 0x80;
              v22 = v9;
              do
              {
                *(&v94 + v17) = v22;
                v22 >>= 8;
                --v17;
              }

              while (v17);
            }

            (*(*v10 + 56))(*(*v10 + 64), &v94, v21, *(v10 + 14), 1);
            LOBYTE(v94) = 0;
            (*(*v10 + 56))(*(*v10 + 64), &v94, 1, *(v10 + 14), 2);
          }

          else
          {
            v94 = 0xAAAAAAAAAAAAAAAALL;
            v95 = -86;
            if (a3 < 0x80)
            {
              LOBYTE(v94) = a3;
              v67 = 1;
            }

            else
            {
              v64 = 0;
              v65 = a3;
              do
              {
                v66 = v64++;
                v20 = v65 >= 0x100;
                v65 >>= 8;
              }

              while (v20);
              v67 = v66 + 2;
              LOBYTE(v94) = v64 | 0x80;
              v68 = a3;
              do
              {
                *(&v94 + v64) = v68;
                v68 >>= 8;
                --v64;
              }

              while (v64);
            }

            (*(*v10 + 56))(*(*v10 + 64), &v94, v67, *(v10 + 14), 1);
          }
        }

        (*(*v10 + 56))(*(*v10 + 64), v4, a3, *(v10 + 14), 2);
      }

      v49 = *v10;
LABEL_101:
      *(v49 + 16) = 3;
      goto LABEL_102;
    }

    v93 = 0;
    v23 = v10[6];
    if (v23 == 1024)
    {
      goto LABEL_32;
    }

    if ((v23 & 0x100000) != 0)
    {
      v41 = v10[1];
      if (!v41[6])
      {
LABEL_62:
        *(*v10 + 16) = 1;
        goto LABEL_102;
      }

      v42 = v10[2];
      v43 = (v41 + 12);
      v44 = 1;
      while (*v42 != *(v43 - 2))
      {
        ++v44;
        v45 = *v43;
        v43 += 6;
        if (!v45)
        {
          goto LABEL_62;
        }
      }

      *(v10 + 10) = 8;
      v56 = *v10;
      v57 = &v41[6 * v44];
      v58 = v42 - v41[1];
LABEL_79:
      v59 = sec_asn1e_push_state(v56, v57, v58, 1);
      if (v59)
      {
        v28 = v59;
        v60 = *v59;
        v61 = *(*v59 + 32);
        if (v61)
        {
          v62 = *(v59 + 56);
          v63 = *(v59 + 16);
          *(v60 + 48) = 1;
          v61(*(v60 + 40), 1, v63, v62);
          *(v60 + 48) = 0;
        }

LABEL_50:
        sec_asn1e_init_state_based_on_template(v28);
        goto LABEL_102;
      }

      goto LABEL_102;
    }

    if (*(*v10 + 20) && *(v10 + 18))
    {
      v24 = v4;
      v25 = v9;
      v26 = v8;
      if (*(*v10 + 24))
      {
        v27 = 1;
      }

      else
      {
        v27 = *(v10 + 17) == 0;
      }
    }

    else
    {
      v25 = v9;
      v24 = v4;
      v26 = v8;
      v27 = 0;
    }

    v46 = *(v10 + 45);
    v47 = *(v10 + 44);
    v48 = sec_asn1e_contents_length(v10[1], v10[2], *(v10 + 20), v27, &v93);
    if (!v93)
    {
      v53 = v48;
      if (v48 || !*(v10 + 19))
      {
        if (v27)
        {
          v53 = 0;
          *(v10 + 16) = 1;
          v47 |= 0x20u;
        }

        LOBYTE(v94) = v47 | v46;
        (*(*v10 + 56))(*(*v10 + 64), &v94, 1, *(v10 + 14), 0);
        v54 = *(v10 + 16);
        v95 = -86;
        v94 = 0xAAAAAAAAAAAAAAAALL;
        if (v54)
        {
          LOBYTE(v94) = 0x80;
          v55 = 1;
          v8 = v26;
          v4 = v24;
          v9 = v25;
        }

        else
        {
          v8 = v26;
          v9 = v25;
          if (v53 < 0x80)
          {
            LOBYTE(v94) = v53;
            v55 = 1;
            v4 = v24;
          }

          else
          {
            v76 = 0;
            v77 = v53;
            v4 = v24;
            do
            {
              v78 = v76++;
              v20 = v77 >= 0x100;
              v77 >>= 8;
            }

            while (v20);
            v55 = v78 + 2;
            LOBYTE(v94) = v76 | 0x80;
            v79 = v53;
            do
            {
              *(&v94 + v76) = v79;
              v79 >>= 8;
              --v76;
            }

            while (v76);
          }
        }

        (*(*v10 + 56))(*(*v10 + 64), &v94, v55, *(v10 + 14), 1);
        if (!v53 && !*(v10 + 16))
        {
          goto LABEL_20;
        }

        if (*(v10 + 15))
        {
          *(v10 + 10) = 4;
          v81 = v10[1];
          v80 = v10[2];
          v82 = *(v81 + 8);
          if (v82 && (*(v81 + 1) & 0x40) != 0)
          {
            if (*v82)
            {
              if (v80)
              {
                v83 = v80 - *(v81 + 4);
              }

              else
              {
                v83 = 0;
              }

              v82 = (*v82)(v83, 1, 0, 0);
              v80 = v10[2];
            }

            else
            {
              v82 = 0;
            }
          }

          v89 = *v10;
          v87 = v80;
LABEL_136:
          v90 = sec_asn1e_push_state(v89, v82, v87, 1);
          if (v90)
          {
            sec_asn1e_init_state_based_on_template(v90);
          }

          goto LABEL_102;
        }

        v84 = v10[6];
        if ((v84 - 16) >= 2)
        {
          if ((v84 - 8208) > 1)
          {
LABEL_32:
            *(v10 + 10) = 1;
            goto LABEL_102;
          }

          v85 = v10[2];
          v86 = *v85;
          if (!*v85)
          {
            goto LABEL_20;
          }

          v87 = *v86;
          if (!*v86)
          {
            goto LABEL_20;
          }

          *(v10 + 10) = 2;
          v88 = v10[1];
          v82 = *(v88 + 8);
          if (v82 && (*(v88 + 1) & 0x40) != 0)
          {
            if (*v82)
            {
              v82 = (*v82)(v85 - *(v88 + 4), 1, 0, 0);
              v87 = *v86;
            }

            else
            {
              v82 = 0;
            }
          }

          v89 = *v10;
          goto LABEL_136;
        }

        *(v10 + 10) = 3;
        v56 = *v10;
        v58 = v10[2];
        v57 = v10[1] + 24;
        goto LABEL_79;
      }
    }

    *(v10 + 10) = 4;
    v49 = *v10;
    v8 = v26;
    v4 = v24;
    v9 = v25;
    if (*(*v10 + 20) && *(v10 + 18) && *(v49 + 24))
    {
      goto LABEL_101;
    }

LABEL_102:
    v6 = *(a1 + 16);
    if (v6 == 1)
    {
      break;
    }

    if (!*(a1 + 8))
    {
      result = 0;
      *(a1 + 16) = 0;
      goto LABEL_151;
    }
  }

  if (v6 == 1)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

LABEL_151:
  v92 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sec_asn1e_push_state(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a1 + 8);
  result = PORT_ArenaAlloc(*a1, 0x58uLL);
  if (result)
  {
    *(result + 16) = 0u;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 32) = 0u;
    *(result + 24) = v8;
    *result = a1;
    *(result + 8) = a2;
    *(result + 40) = 9;
    if (a3)
    {
      *(result + 16) = a3 + *(a2 + 4);
    }

    if (v8)
    {
      v10 = *(v8 + 56);
      if (a4)
      {
        ++v10;
      }

      *(result + 56) = v10;
      *(v8 + 32) = result;
    }

    *(a1 + 8) = result;
  }

  else
  {
    *(a1 + 16) = 1;
  }

  return result;
}

uint64_t sec_asn1e_init_state_based_on_template(uint64_t a1)
{
  do
  {
    v2 = *(a1 + 8);
    v3 = *v2;
    v4 = v3 & 0x200;
    v5 = (v3 >> 8) & 1;
    if ((v3 & 0x100000) != 0)
    {
      v14 = (v3 >> 18) & 1;
      LODWORD(v15) = (v3 >> 21) & 1;
      v18 = 0x100000;
LABEL_39:
      LODWORD(v16) = v3;
      goto LABEL_40;
    }

    v6 = (v3 & 0xC0) != 0 && v4 == 0;
    v7 = !v6;
    if (v3 & 0x1800) == 0 && (v7)
    {
      v14 = (v3 >> 18) & 1;
      LODWORD(v15) = (v3 >> 21) & 1;
      v18 = v3 & 0xFF4BA4FF;
      goto LABEL_39;
    }

    *(a1 + 64) = 0;
    v8 = *(a1 + 16);
    if ((v3 & 0x1000) != 0)
    {
      v9 = *v8;
      *(a1 + 40) = 7;
      if ((v3 & 0x100) != 0 && v9 == 0)
      {
        return a1;
      }
    }

    else
    {
      if ((v3 & 0x800) != 0)
      {
        *(a1 + 40) = 6;
      }

      else
      {
        *(a1 + 44) = v3 & 0xE0;
        *(a1 + 45) = v3 & 0x1F;
        *(a1 + 40) = 5;
        *(a1 + 76) = v5;
      }

      v9 = v8;
    }

    v11 = *(v2 + 1);
    if (v11 && (v3 & 0x4000) != 0)
    {
      if (*v11)
      {
        if (v8)
        {
          v12 = v8 - v2[1];
        }

        else
        {
          v12 = 0;
        }

        v11 = (*v11)(v12, 1, 0, 0);
      }

      else
      {
        v11 = 0;
      }
    }

    v13 = sec_asn1e_push_state(*a1, v11, v9, 0);
    a1 = v13;
    if (!v13)
    {
      return a1;
    }
  }

  while ((v3 & 0xC0) == 0);
  v14 = (v3 >> 18) & 1;
  v15 = (v3 & 0x200000) >> 21;
  v16 = **(v13 + 8);
  if ((v3 & 0x200000) != 0)
  {
    v17 = (v3 >> 18) & 1;
  }

  else
  {
    v17 = 1;
  }

  if ((v16 & 0x40000) != 0)
  {
    v14 = v17;
    v18 = v16 & 0xFFFFFFFFFFFBFFFFLL;
  }

  else
  {
    v18 = **(v13 + 8);
  }

LABEL_40:
  v19 = v4 >> 9;
  if ((v3 & 0x400) != 0)
  {
    v30 = 0;
    v24 = 0;
    v29 = 1;
  }

  else
  {
    v20 = v16 & 0x1F;
    v21 = (v16 >> 9) & 1;
    v22 = v16 & 0x20 | v3 & 0xE0;
    if ((v3 & 0x4000) != 0)
    {
      LODWORD(v19) = v21;
      v23 = v22;
    }

    else
    {
      v23 = v3 & 0xE0;
    }

    if ((v3 & 0x4000) != 0)
    {
      v24 = v20;
    }

    else
    {
      v24 = v3 & 0x1F;
    }

    v25 = 1 << (v18 & 0x1F);
    v26 = v23 | 0x20;
    if ((v25 & 0x30000) == 0)
    {
      v26 = v23;
    }

    v6 = (v25 & 0x55D81018) == 0;
    v27 = (v25 & 0x55D81018) != 0;
    if (v6)
    {
      v28 = v26;
    }

    else
    {
      v28 = v23;
    }

    v29 = (v18 & 0x1F) != 0x1F && v27;
    if ((v18 & 0x1F) == 0x1F)
    {
      v30 = v23;
    }

    else
    {
      v30 = v28;
    }
  }

  *(a1 + 44) = v30;
  *(a1 + 45) = v24;
  *(a1 + 48) = v18;
  *(a1 + 68) = v29;
  *(a1 + 72) = v14;
  *(a1 + 76) = v5;
  *(a1 + 80) = v15;
  *(a1 + 84) = (v3 >> 23) & 1;
  *(a1 + 40) = 0;
  *(a1 + 60) = v19;
  *(a1 + 64) = 0;
  return a1;
}

unint64_t sec_asn1e_contents_length(_DWORD *a1, unint64_t *a2, unsigned int a3, uint64_t a4, int *a5)
{
  v8 = a1;
  v9 = *a1;
  if ((*a1 & 0x200000) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = a3;
  }

  if ((v9 & 0x100000) != 0)
  {
    while (v8[6])
    {
      v14 = v8 + 12;
      v15 = 1;
      while (*a2 != *(v14 - 2))
      {
        ++v15;
        v16 = *v14;
        v14 += 6;
        if (!v16)
        {
          return 0;
        }
      }

      v17 = a2 - v8[1];
      v8 += 6 * v15;
      v9 = *v8;
      a2 = (v17 + v8[1]);
      if ((*v8 & 0x200000) != 0)
      {
        v10 = 1;
      }

      else
      {
        v10 = v10;
      }

      if ((v9 & 0x100000) == 0)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

LABEL_5:
  if ((v9 & 0x18C0) == 0)
  {
    if ((v9 & 0x20000) != 0)
    {
      result = 0;
      v24 = 2;
LABEL_103:
      *a5 = v24;
      return result;
    }

    v19 = v9 & 0xFFDBBCFF;
    if ((v9 & 0xFFDBBCFF) > 8207)
    {
      if ((v19 - 8208) > 1)
      {
LABEL_63:
        v23 = *a2;
        goto LABEL_88;
      }

      v25 = *a2;
      if (*a2)
      {
        v26 = *(v8 + 1);
        if (v26 && (v9 & 0x4000) != 0)
        {
          if (*v26)
          {
            v26 = (*v26)(a2 - v8[1], 1, 0, 0, a2);
          }

          else
          {
            v26 = 0;
          }
        }

        v39 = *v25;
        if (*v25)
        {
          v23 = 0;
          do
          {
            v40 = sec_asn1e_contents_length(v26, v39 + *(v26 + 4), v10, a4, a5);
            v23 += v40;
            if (!*a5)
            {
              v41 = 1;
              if (v40 >= 0x80)
              {
                do
                {
                  ++v41;
                  v31 = v40 > 0xFF;
                  v40 >>= 8;
                }

                while (v31);
              }

              v23 += v41 + 1;
            }

            v42 = v25[1];
            ++v25;
            v39 = v42;
          }

          while (v42);
          goto LABEL_88;
        }
      }
    }

    else
    {
      if ((v19 - 16) >= 2)
      {
        if (v19 != 2)
        {
          if (v19 == 3)
          {
            v20 = *a2 + 7;
            v21 = v20 >= 8;
            v22 = v20 >> 3;
            if (v21)
            {
              v23 = v22 + 1;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_88;
          }

          goto LABEL_63;
        }

        v23 = *a2;
        if (*a2)
        {
          v34 = a2[1];
          LOBYTE(v35) = *v34;
          if (*v34)
          {
            v36 = *a2;
LABEL_67:
            if ((*&v9 & 0x800000) == 0 && (v35 & 0x80u) != 0)
            {
              v23 = v36 + 1;
            }

            else
            {
              v23 = v36;
            }
          }

          else
          {
            v38 = v34 + 1;
            while (1)
            {
              v36 = v23 - 1;
              if (v23 == 1)
              {
                break;
              }

              v35 = *v38;
              if (v35 < 0)
              {
                break;
              }

              ++v38;
              --v23;
              if (v35)
              {
                goto LABEL_67;
              }
            }
          }
        }

LABEL_88:
        if (v23)
        {
          v43 = 1;
        }

        else
        {
          v43 = (*&v9 & 0x40000) == 0;
        }

        if (!v43 && a4 != 0 && v10 == 0)
        {
          result = 1;
        }

        else
        {
          result = v23;
        }

        if ((v9 & 0x100) == 0 || result)
        {
          if (v19 != 1024)
          {
            goto LABEL_107;
          }

          v24 = 1;
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      v27 = v8 + 6;
      if (v8[6])
      {
        v23 = 0;
        do
        {
          v28 = v8[7];
          v8 = v27;
          v29 = sec_asn1e_contents_length(v27, a2 + v28, v10, a4, a5);
          v23 += v29;
          if (!*a5)
          {
            v30 = 1;
            if (v29 >= 0x80)
            {
              do
              {
                ++v30;
                v31 = v29 > 0xFF;
                v29 >>= 8;
              }

              while (v31);
            }

            v23 += v30 + 1;
          }

          v27 = v8 + 6;
        }

        while (v8[6]);
        goto LABEL_88;
      }
    }

    v23 = 0;
    goto LABEL_88;
  }

  v11 = *(v8 + 1);
  if (v11 && (v9 & 0x4000) != 0)
  {
    v12 = *v11;
    if (*v11)
    {
      if (a2)
      {
        v13 = a2 - v8[1];
      }

      else
      {
        v13 = 0;
      }

      v11 = v12(v13, 1, 0, 0, a2);
      if ((v9 & 0x1000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_33;
    }

    v11 = 0;
  }

  if ((v9 & 0x1000) == 0)
  {
    goto LABEL_53;
  }

LABEL_33:
  a2 = *a2;
  if (!a2)
  {
    result = 0;
    if ((v9 & 0x100) != 0)
    {
      v24 = 3;
    }

    else
    {
      v24 = 0;
    }

    goto LABEL_103;
  }

LABEL_53:
  result = sec_asn1e_contents_length(v11, a2 + *(v11 + 4), v10, a4, a5);
  if ((v9 & 0x100) != 0 && !result)
  {
LABEL_102:
    v24 = 3;
    goto LABEL_103;
  }

  if ((v9 & 0x200) != 0)
  {
    if (*a5)
    {
      if (*a5 != 1)
      {
        return result;
      }

LABEL_107:
      *a5 = 0;
      return result;
    }

    v32 = 1;
    if (result >= 0x80)
    {
      v33 = result;
      do
      {
        ++v32;
        v31 = v33 > 0xFF;
        v33 >>= 8;
      }

      while (v31);
    }

    result += v32 + 1;
  }

  return result;
}

uint64_t SEC_ASN1EncoderStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = PORT_NewArena(2048);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = PORT_ArenaAlloc(v8, 0x48uLL);
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = v10;
  *(v10 + 8) = 0u;
  v12 = (v10 + 8);
  *(v10 + 40) = 0u;
  *(v10 + 24) = 0u;
  *v10 = v9;
  *(v10 + 56) = a3;
  *(v10 + 64) = a4;
  *(v10 + 16) = 2;
  if (!sec_asn1e_push_state(v10, a2, a1, 0) || !sec_asn1e_init_state_based_on_template(*v12))
  {
LABEL_5:
    PORT_FreeArena(v9, 0);
    return 0;
  }

  return v11;
}

uint64_t SEC_ASN1Encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = SEC_ASN1EncoderStart(a1, a2, a3, a4);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = SEC_ASN1EncoderUpdate(v4, 0, 0);
  PORT_FreeArena(*v5, 0);
  return v6;
}

void *sec_asn1e_encode_item_store(void *result, const void *a2, size_t a3)
{
  if (a3)
  {
    v4 = result;
    result = memcpy((result[1] + *result), a2, a3);
    *v4 += a3;
  }

  return result;
}

uint64_t sec_asn1e_allocate_item(uint64_t a1, void *a2, unint64_t a3)
{
  v4 = a2;
  if (a1)
  {
    if (a2 || (result = PORT_ArenaAlloc(a1, 0x10uLL), (v4 = result) != 0))
    {
      v7 = PORT_ArenaAlloc(a1, a3);
      *(v4 + 8) = v7;
      if (v7)
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v8 = a2;
    if (a2 || (result = PORT_Alloc(0x10uLL), (v8 = result) != 0))
    {
      v9 = PORT_Alloc(a3);
      v8[1] = v9;
      result = v9 ? v8 : 0;
      if (!(v4 | v9))
      {
        free(v8);
        return 0;
      }
    }
  }

  return result;
}

void *SEC_ASN1EncodeItem(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  if (!SEC_ASN1Encode(a3, a4, sec_asn1e_encode_item_count, &v11))
  {
    item = sec_asn1e_allocate_item(a1, a2, v11);
    v8 = item;
    if (!item)
    {
      return v8;
    }

    if (item[1])
    {
      *item = 0;
      SEC_ASN1Encode(a3, a4, sec_asn1e_encode_item_store, item);
      return v8;
    }
  }

  return 0;
}

void *SEC_ASN1EncodeInteger(uint64_t a1, void *a2, unint64_t a3)
{
  v3 = a3;
  v4 = -1;
  v5 = a3;
  do
  {
    v6 = v4++;
    v7 = v5 > 0xFF;
    v5 >>= 8;
  }

  while (v7);
  v8 = v6 + 2;
  result = sec_asn1e_allocate_item(a1, a2, v6 + 2);
  if (result)
  {
    *result = v8;
    do
    {
      *(result[1] + v4) = v3;
      v3 = 0;
      --v4;
    }

    while (v4 != -1);
  }

  return result;
}

uint64_t SecAsn1DecodeTime(uint64_t a1, double *a2)
{
  err = 0;
  v4 = PORT_NewArena(1024);
  if (!v4)
  {
    return 4294967188;
  }

  v5 = v4;
  memset(v10, 170, sizeof(v10));
  Code = SEC_ASN1Decode(v4, v10, &kSecAsn1TimeTemplate, *(a1 + 8), *a1);
  if (!Code)
  {
    v8 = SecAbsoluteTimeFromDateContentWithError(LOBYTE(v10[2]), v10[1], v10[0], &err);
    if (err)
    {
      Code = CFErrorGetCode(err);
      v9 = err;
      if (err)
      {
        err = 0;
        CFRelease(v9);
      }
    }

    else
    {
      Code = 0;
      if (a2)
      {
        *a2 = v8;
      }
    }
  }

  PORT_FreeArena(v5, 0);
  return Code;
}

uint64_t SecAsn1EncodeTime(uint64_t a1, uint64_t a2, CFAbsoluteTime a3)
{
  ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(0, 0);
  if (ISO8601Formatter)
  {
    v7 = ISO8601Formatter;
    v8 = CFTimeZoneCreateWithTimeIntervalFromGMT(0, 0.0);
    CFDateFormatterSetProperty(v7, *MEMORY[0x1E695E5D8], v8);
    CFDateFormatterSetFormat(v7, @"yyyyMMddHHmmss'Z'");
    StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v7, a3);
    CFRelease(v8);
    CFRelease(v7);
  }

  else
  {
    v19 = (*MEMORY[0x1E695E468] + a3);
    memset(&v18, 0, sizeof(v18));
    StringWithAbsoluteTime = 0;
    if (gmtime_r(&v19, &v18) == &v18)
    {
      StringWithAbsoluteTime = CFStringCreateWithFormat(0, 0, @"%04d%02d%02d%02d%02d%02dZ", (v18.tm_year + 1900), (v18.tm_mon + 1), v18.tm_mday, v18.tm_hour, v18.tm_min, v18.tm_sec);
    }
  }

  Length = CFStringGetLength(StringWithAbsoluteTime);
  if (!StringWithAbsoluteTime)
  {
    return 4294967188;
  }

  if (a3 < -1609459200.0 || a3 > 1546300800.0)
  {
    v11 = CFRetain(StringWithAbsoluteTime);
    v12 = 24;
  }

  else
  {
    v21.length = Length - 2;
    v21.location = 2;
    v11 = CFStringCreateWithSubstring(0, StringWithAbsoluteTime, v21);
    v12 = 23;
  }

  *(a2 + 16) = v12;
  v14 = CFStringGetLength(v11);
  if (v14 < 0)
  {
    v13 = 4294967188;
  }

  else
  {
    v15 = v14;
    *a2 = v14;
    v16 = PORT_ArenaAlloc(a1, v14);
    *(a2 + 8) = v16;
    v13 = 4294967188;
    if (v16)
    {
      v20.location = 0;
      v20.length = v15;
      if (v15 == CFStringGetBytes(v11, v20, 0x8000100u, 0, 0, v16, v15, 0))
      {
        v13 = 0;
      }

      else
      {
        v13 = 4294967188;
      }
    }
  }

  CFRelease(StringWithAbsoluteTime);
  if (v11)
  {
    CFRelease(v11);
  }

  return v13;
}

void *PORT_Alloc(size_t a1)
{
  if (a1 >> 31)
  {
    goto LABEL_5;
  }

  if (a1 <= 1)
  {
    a1 = 1;
  }

  result = malloc_type_malloc(a1, 0x64033449uLL);
  if (!result)
  {
LABEL_5:
    ++port_allocFailures;
    ThreadErrInfo = PR_getThreadErrInfo(1, &v3);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE01300000000;
    }

    return 0;
  }

  return result;
}

_DWORD *PORT_SetError(int a1)
{
  result = PR_getThreadErrInfo(1, &v3);
  if (result)
  {
    *result = 0;
    result[1] = a1;
  }

  return result;
}

void *PORT_ZAlloc(unint64_t a1)
{
  if (a1 >> 31 || (a1 <= 1 ? (v1 = 1) : (v1 = a1), (result = malloc_type_calloc(1uLL, v1, 0x65A6D64EuLL)) == 0))
  {
    ++port_allocFailures;
    ThreadErrInfo = PR_getThreadErrInfo(1, &v4);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE01300000000;
    }

    return 0;
  }

  return result;
}

uint64_t PORT_GetError()
{
  v2 = -1431655766;
  ThreadErrInfo = PR_getThreadErrInfo(0, &v2);
  if (ThreadErrInfo)
  {
    return *(ThreadErrInfo + 1);
  }

  if (v2)
  {
    return 4294961322;
  }

  return 0;
}

_DWORD *PORT_NewArena(int a1)
{
  result = PORT_ZAlloc(0x40uLL);
  if (result)
  {
    result[14] = -1196647457;
    *(result + 6) = 7;
    v3 = (result + 39) & 0xFFFFFFFFFFFFFFF8;
    *(result + 2) = v3;
    *(result + 3) = v3;
    *result = 0;
    *(result + 1) = v3;
    *(result + 4) = result;
    result[10] = a1;
  }

  return result;
}

uint64_t PORT_ArenaAlloc(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 31))
  {
    v3 = a2 <= 1 ? 1 : a2;
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    v6 = (*(a1 + 48) + v3) & ~*(a1 + 48);
    result = *(v5 + 24);
    if (v6 >= v3)
    {
      if (v6 <= (*(v5 + 16) - result))
      {
        *(v5 + 24) = v6 + result;
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = PL_ArenaAllocate(a1, v6);
        if (result)
        {
          return result;
        }
      }
    }
  }

  ++port_allocFailures;
  ThreadErrInfo = PR_getThreadErrInfo(1, &v9);
  if (ThreadErrInfo)
  {
    *ThreadErrInfo = 0xFFFFE01300000000;
  }

  return 0;
}

void PORT_FreeArena(void *a1, int a2)
{
  if (a2)
  {
    v3 = *a1;
    if (!*a1)
    {
      goto LABEL_7;
    }

    do
    {
      v4 = v3[1];
      v5 = v3[2];
      v3[3] = v4;
      bzero(v4, v5 - v4);
      v3 = *v3;
    }

    while (v3);
  }

  while (1)
  {
    v6 = *a1;
    if (!*a1)
    {
      break;
    }

    *a1 = *v6;
    free(v6);
  }

LABEL_7:

  free(a1);
}

char *PORT_ArenaGrow(uint64_t a1, char *a2, unint64_t a3, unint64_t a4)
{
  if (a4 >> 31)
  {
    ThreadErrInfo = PR_getThreadErrInfo(1, &v17);
    if (ThreadErrInfo)
    {
      v5 = 0xFFFFE01300000000;
LABEL_7:
      *ThreadErrInfo = v5;
      return 0;
    }

    return 0;
  }

  v6 = a4 >= a3;
  v7 = a4 - a3;
  if (!v6)
  {
    ThreadErrInfo = PR_getThreadErrInfo(1, &v18);
    if (ThreadErrInfo)
    {
      v5 = 0xFFFFE00100000000;
      goto LABEL_7;
    }

    return 0;
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v11 = &a2[a3 + v7];
  if (v11 > a2 && v11 > &a2[a3])
  {
    v14 = *(a1 + 48);
    v15 = &v11[v14] & ~v14;
    v16 = *(v10 + 24) != &a2[~v14 & (v14 + a3)] || v11 > v15;
    if (!v16 && *(v10 + 16) >= v15)
    {
      *(v10 + 24) = v15;
      return a2;
    }
  }

  return PL_ArenaGrow(a1, a2, a3, v7);
}

BOOL nssCompareSecAsn1Items(_BOOL8 result, void *a2)
{
  if (result)
  {
    v2 = result;
    result = 0;
    if (a2)
    {
      v3 = v2[1];
      if (v3)
      {
        v4 = a2[1];
        return v4 && *v2 == *a2 && memcmp(v3, v4, *v2) == 0;
      }
    }
  }

  return result;
}

const SecAsn1Template *NSS_P12_CertBagChooser(uint64_t a1, int a2)
{
  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS9_X509Certificate))
  {
    result = kSecAsn1OctetStringTemplate;
    v5 = 1;
    if (a2)
    {
      return result;
    }

    goto LABEL_3;
  }

  v6 = nssCompareSecAsn1Items(a1, &CSSMOID_PKCS9_SdsiCertificate);
  v5 = 2 * v6;
  if (v6)
  {
    result = kSecAsn1IA5StringTemplate;
  }

  else
  {
    result = 0;
  }

  if (!a2)
  {
LABEL_3:
    *(a1 + 16) = v5;
  }

  return result;
}

const SecAsn1Template *NSS_P12_CrlBagChooser(uint64_t a1, int a2)
{
  v4 = nssCompareSecAsn1Items(a1, &CSSMOID_PKCS9_X509Crl);
  if (!a2)
  {
    *(a1 + 16) = v4;
  }

  if (v4)
  {
    return kSecAsn1OctetStringTemplate;
  }

  else
  {
    return 0;
  }
}

const SecAsn1Template *NSS_P12_SafeBagChooser(uint64_t a1, int a2)
{
  if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS12_keyBag))
  {
    v4 = kSecAsn1PointerToAnyTemplate;
    v5 = 1;
  }

  else if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS12_shroudedKeyBag))
  {
    v4 = &NSS_P12_PtrToShroudedKeyBagTemplate;
    v5 = 2;
  }

  else if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS12_certBag))
  {
    v4 = &NSS_P12_PtrToCertBagTemplate;
    v5 = 3;
  }

  else if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS12_crlBag))
  {
    v4 = &NSS_P12_PtrToCrlBagTemplate;
    v5 = 4;
  }

  else
  {
    v4 = kSecAsn1PointerToAnyTemplate;
    if (nssCompareSecAsn1Items(a1, &CSSMOID_PKCS12_secretBag))
    {
      v5 = 5;
    }

    else
    {
      v6 = nssCompareSecAsn1Items(a1, &CSSMOID_PKCS12_safeContentsBag);
      if (v6)
      {
        v5 = 6;
      }

      else
      {
        v5 = 0;
      }

      if (!v6)
      {
        v4 = 0;
      }
    }
  }

  if (!a2)
  {
    *(a1 + 16) = v5;
  }

  return v4;
}

uint64_t SEC_ASN1DecodeInteger(uint64_t *a1, uint64_t *a2)
{
  if (!a1)
  {
    v3 = &v9;
    goto LABEL_10;
  }

  v2 = *a1;
  if (*a1 >= 9)
  {
    v3 = &v10;
LABEL_10:
    ThreadErrInfo = PR_getThreadErrInfo(1, v3);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE00500000000;
    }

    return 0xFFFFFFFFLL;
  }

  v4 = a1[1];
  if (!v4)
  {
    v3 = &v11;
    goto LABEL_10;
  }

  for (i = *v4 >> 7; v2; --v2)
  {
    v6 = *v4++;
    i = v6 | (i << 8);
  }

  result = 0;
  *a2 = i;
  return result;
}

uint64_t SEC_ASN1DecoderUpdate(uint64_t a1, char *a2, unint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v7 != 2)
  {
    if (v7 != 3)
    {
      v8 = 0;
      goto LABEL_452;
    }

    *(a1 + 24) = 2;
  }

LABEL_4:
  v8 = *(a1 + 16);
  while (2)
  {
    result = 0;
    switch(*(v8 + 12))
    {
      case 0:
        if (!a3)
        {
          goto LABEL_165;
        }

        v58 = *a2;
        v59 = *a2 & 0x1F;
        if ((*a2 & 0x1F) == 0x1F)
        {
          *(v8 + 12) = 1;
          v8[8] = 0;
          v60 = 12;
          v59 = 1;
LABEL_230:
          v15 = 0;
          v16 = 0;
          v158 = 0;
          v8[v60] = v59;
          *(v8 + 52) = v58 & 0xE0;
          v13 = 1;
          v14 = 1;
          goto LABEL_431;
        }

        if (*a2 || !sec_asn1d_parent_allows_EOC(v8[4]))
        {
          *(v8 + 12) = 2;
          v60 = 8;
          goto LABEL_230;
        }

        *(v8 + 12) = 21;
        v8[12] = 2;
        v8[8] = 0;
        *(v8 + 52) = 0;
        v14 = 1;
        v15 = *(v8 + 141);
        v13 = 0;
        if (*(v8 + 141))
        {
          v15 = 0;
          v16 = 0;
          v158 = 0;
          *(v8 + 140) = 1;
        }

        else
        {
          v16 = 0;
          v158 = 0;
        }

        goto LABEL_431;
      case 1:
        if (!a3)
        {
LABEL_165:
          v13 = 0;
          v15 = 0;
          v16 = 0;
          v158 = 0;
          *(*v8 + 24) = 3;
          goto LABEL_166;
        }

        v13 = 0;
        v52 = v8[12] == 0;
        v53 = a3;
LABEL_66:
        v54 = &a2[v13];
        v55 = v13 + 1;
        --v53;
        while (1)
        {
          if (v52)
          {
            goto LABEL_74;
          }

          v56 = v8[8];
          if (v56 >> 57)
          {
            break;
          }

          v8[8] = v56 << 7;
          v57 = *v54;
          v8[8] = *v54 & 0x7F | (v56 << 7);
          if ((v57 & 0x80) == 0)
          {
            v8[12] = 0;
            v52 = 1;
            v13 = v55;
            if (!v53)
            {
              v13 = a3;
LABEL_74:
              v15 = 0;
              v16 = 0;
              v158 = 0;
              *(v8 + 12) = 2;
LABEL_166:
              v14 = 1;
              goto LABEL_431;
            }

            goto LABEL_66;
          }

          ++v54;
          ++v55;
          --v53;
          v14 = 1;
          if (v53 == -1)
          {
            v15 = 0;
            v16 = 0;
            v158 = 0;
            v13 = a3;
            goto LABEL_431;
          }
        }

        ThreadErrInfo = PR_getThreadErrInfo(1, &v195);
        if (ThreadErrInfo)
        {
          *ThreadErrInfo = 0xFFFFE00900000000;
        }

        v13 = 0;
        v15 = 0;
        v16 = 0;
        v158 = 0;
        v14 = 1;
        *(*v8 + 24) = 1;
        goto LABEL_431;
      case 2:
        v51 = v8[7];
        if ((v51 & *(v8 + 52)) == *(v8 + 53) && (v8[8] & v51) == v8[9])
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(v8 + 12) = 3;
          goto LABEL_430;
        }

        if (!*(v8 + 141))
        {
          goto LABEL_232;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(v8 + 140) = 1;
        goto LABEL_277;
      case 3:
        if (!a3)
        {
          goto LABEL_167;
        }

        *(v8 + 12) = 5;
        v103 = *a2;
        if (*a2 < 0)
        {
          v149 = v103 & 0x7F;
          v8[11] = 0;
          v8[12] = v149;
          if (v149)
          {
            *(v8 + 12) = 4;
          }

          else
          {
            *(v8 + 139) = 1;
          }
        }

        else
        {
          v8[11] = v103;
        }

        if (*(v8 + 139) || (*(v8 + 81) & 0x84) == 0)
        {
          v14 = 0;
          v16 = 0;
        }

        else
        {
          v14 = 0;
          v16 = 0;
          *(v8 + 52) &= ~0x20u;
        }

        v13 = 1;
        goto LABEL_320;
      case 4:
        if (!a3)
        {
LABEL_167:
          v13 = 0;
          v14 = 0;
          v16 = 0;
          *(*v8 + 24) = 3;
          goto LABEL_320;
        }

        v98 = 0;
        v13 = v8[12];
        v99 = a2;
        while (1)
        {
          if (!(v13 + v98))
          {
            goto LABEL_235;
          }

          v100 = v8[11];
          if (v100 >> 55)
          {
            break;
          }

          v8[11] = v100 << 8;
          v101 = *v99++;
          v8[11] = v101 | ((v100 & 0x7FFFFFFFFFFFFFLL) << 8);
          v8[12] = v13 + v98-- - 1;
          if (!(a3 + v98))
          {
            v102 = v13 + v98;
            v13 = a3;
            if (v102)
            {
              v14 = 0;
              v16 = 0;
              v15 = 1;
              v13 = a3;
              goto LABEL_321;
            }

LABEL_235:
            v14 = 0;
            v16 = 0;
            *(v8 + 12) = 5;
LABEL_320:
            v15 = 1;
            goto LABEL_321;
          }
        }

        v155 = PR_getThreadErrInfo(1, &v195);
        if (v155)
        {
          *v155 = 0xFFFFE00900000000;
        }

        v13 = 0;
        v14 = 0;
        v16 = 0;
        v15 = 1;
        *(*v8 + 24) = 1;
LABEL_321:
        v158 = 1;
        goto LABEL_431;
      case 5:
        v61 = v8[4];
        if (!v61)
        {
          goto LABEL_88;
        }

        while (1)
        {
          v62 = *(v61 + 48);
          v63 = (v62 - 16) < 4 || v62 == 11;
          if (!v63 && v62 != 24)
          {
            break;
          }

          v61 = *(v61 + 32);
          if (!v61)
          {
            goto LABEL_88;
          }
        }

LABEL_106:
        if (*(v61 + 139))
        {
          while (1)
          {
            v61 = *(v61 + 32);
            if (!v61)
            {
              break;
            }

            v73 = *(v61 + 48);
            if ((v73 - 16) >= 4 && v73 != 24 && v73 != 11)
            {
              goto LABEL_106;
            }
          }
        }

        else
        {
          v195 = *(v61 + 96);
          v76 = v8;
LABEL_108:
          if (!sec_asn1d_check_and_subtract_length(&v195, v76[13], *v8) || !sec_asn1d_check_and_subtract_length(&v195, v76[11], *v8) || *(v76 + 139) && !sec_asn1d_check_and_subtract_length(&v195, 2uLL, *v8))
          {
            goto LABEL_428;
          }

          while (1)
          {
            v76 = v76[4];
            if (!v76)
            {
              break;
            }

            v77 = *(v76 + 12);
            if ((v77 - 16) >= 4 && v77 != 24 && v77 != 11)
            {
              if (*(v76 + 139))
              {
                goto LABEL_108;
              }

              break;
            }
          }
        }

LABEL_88:
        if (*(v8 + 136))
        {
          v65 = sec_asn1d_zalloc(*(*v8 + 8), *(v8[1] + 16));
          if (!v65)
          {
            goto LABEL_234;
          }

          v8[2] = &v65[*(v8[1] + 4)];
          v66 = v8[4];
          if (*(v66 + 48) == 18)
          {
            **(v66 + 16) = v65;
          }
        }

        v67 = v8[11];
        v8[12] = v67;
        if (*(v8 + 138))
        {
          *(v8 + 12) = 15;
          v69 = *v8;
          v68 = v8[1];
          v70 = v8[2];
          v71 = *(v68 + 8);
          if (v71 && (*(v68 + 1) & 0x40) != 0)
          {
            if (*v71)
            {
              if (v70)
              {
                v72 = v70 - *(v68 + 4);
              }

              else
              {
                v72 = 0;
              }

              v71 = (*v71)(v72, 0, a2, a3);
              v70 = v8[2];
            }

            else
            {
              v71 = 0;
            }
          }

          v168 = sec_asn1d_push_state(v69, v71, v70, 1);
          if (!v168)
          {
LABEL_428:
            v13 = 0;
            goto LABEL_429;
          }

LABEL_427:
          sec_asn1d_init_state_based_on_template(v168, a2, a3);
          goto LABEL_428;
        }

        v139 = v8[10];
        if ((v139 & 0x2000) != 0)
        {
          if (v67 || (v14 = *(v8 + 139), *(v8 + 139)))
          {
            *(v8 + 12) = 9;
            v160 = v8[1];
            v161 = *(v160 + 8);
            if (v161 && (*(v160 + 1) & 0x40) != 0)
            {
              if (*v161)
              {
                v162 = v8[2];
                if (v162)
                {
                  v163 = v162 - *(v160 + 4);
                }

                else
                {
                  v163 = 0;
                }

                v161 = (*v161)(v163, 0, a2, a3);
              }

              else
              {
                v161 = 0;
              }
            }

            v170 = sec_asn1d_push_state(*v8, v161, 0, 1);
            v13 = v170;
            if (!v170)
            {
              goto LABEL_429;
            }

            v171 = *v170;
            if (!*(*v170 + 72))
            {
              v170[136] = 1;
            }

LABEL_359:
            v172 = *(v171 + 32);
            if (v172)
            {
              v173 = *(v13 + 112);
              v174 = *(v13 + 16);
              *(v171 + 48) = 1;
              v172(*(v171 + 40), 1, v174, v173);
              *(v171 + 48) = 0;
            }

            v168 = v13;
            goto LABEL_427;
          }

          v13 = 0;
          v15 = 0;
          v16 = 0;
LABEL_250:
          v17 = 14;
LABEL_278:
          *(v8 + 12) = v17;
          goto LABEL_430;
        }

        if (v139 > 18)
        {
          if (v139 > 1023)
          {
            if (v139 == 1024 || v139 == 0x8000 || v139 == 66560)
            {
              goto LABEL_365;
            }
          }

          else if (v139 <= 0x1E)
          {
            if (((1 << v139) & 0x4D80000) != 0)
            {
              goto LABEL_365;
            }

            if (v139 == 28)
            {
              if ((v67 & 3) != 0)
              {
                goto LABEL_232;
              }

LABEL_365:
              v176 = v8[2];
              if (!v176)
              {
                goto LABEL_370;
              }

              v177 = *v8;
              if (*(*v8 + 72))
              {
                v178 = 0;
                *v176 = 0;
                v176[1] = 0;
LABEL_371:
                if (!*(v8 + 139))
                {
                  v182 = v8 + 15;
                  i = v8[15];
                  if (i)
                  {
                    if (!v176)
                    {
                      goto LABEL_232;
                    }

                    v67 = 0;
                    goto LABEL_396;
                  }
                }

                goto LABEL_372;
              }

              if (*(v8 + 142))
              {
                if (v176[1])
                {
LABEL_370:
                  v178 = 0;
                  goto LABEL_371;
                }
              }

              else
              {
                ++v177;
                *v176 = 0;
                v176[1] = 0;
              }

              v178 = *v177;
              if (!v67)
              {
                goto LABEL_371;
              }

              v182 = v8 + 15;
              for (i = v8[15]; i; v67 += v183)
              {
LABEL_396:
                v183 = *(i + 8);
                i = *(i + 16);
              }

              v184 = sec_asn1d_zalloc(v178, v67);
              v176[1] = v184;
              if (!v184)
              {
                goto LABEL_234;
              }

              v185 = *v182;
              if (v185)
              {
                v186 = 0;
                do
                {
                  memcpy((v176[1] + v186), *v185, *(v185 + 8));
                  v187 = *(v185 + 8);
                  v185 = *(v185 + 16);
                  v186 += v187;
                }

                while (v185);
              }

              else
              {
                v186 = 0;
              }

              *v176 = v186;
              v8[15] = 0;
              v8[16] = 0;
              v67 = v8[11];
LABEL_372:
              if (!v67)
              {
                v14 = *(v8 + 139);
                if (!*(v8 + 139))
                {
                  v13 = 0;
                  goto LABEL_276;
                }
              }

              if ((*(v8 + 52) & 0x20) == 0)
              {
                if (*(v8 + 139))
                {
                  goto LABEL_232;
                }

                if (v8[10] == 3)
                {
                  v13 = 0;
                  v14 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 6;
                  goto LABEL_278;
                }

LABEL_440:
                v13 = 0;
                v14 = 0;
                v15 = 0;
                v16 = 0;
                v17 = 10;
                goto LABEL_278;
              }

              v179 = v8[10];
              if (v179 > 23)
              {
                if (v179 > 29)
                {
                  if (v179 >= 0x8000)
                  {
                    if (v179 == 0x8000)
                    {
                      v180 = kSecAsn1SkipTemplate;
                      goto LABEL_425;
                    }

                    v180 = kSecAsn1AnyTemplate;
                    if (v179 != 66560)
                    {
                      goto LABEL_416;
                    }
                  }

                  else
                  {
                    if (v179 == 30)
                    {
                      v180 = kSecAsn1BMPStringTemplate;
                      goto LABEL_425;
                    }

                    v180 = kSecAsn1AnyTemplate;
                    if (v179 != 1024)
                    {
                      goto LABEL_416;
                    }
                  }

LABEL_425:
                  *(v8 + 12) = 8;
                  v168 = sec_asn1d_push_state(*v8, v180, v176, 1);
                  if (!v168)
                  {
                    goto LABEL_428;
                  }

                  *(v168 + 142) = 1;
                  goto LABEL_427;
                }

                switch(v179)
                {
                  case 24:
                    v180 = kSecAsn1GeneralizedTimeTemplate;
                    goto LABEL_425;
                  case 26:
                    v180 = kSecAsn1VisibleStringTemplate;
                    goto LABEL_425;
                  case 28:
                    v180 = kSecAsn1UniversalStringTemplate;
                    goto LABEL_425;
                }
              }

              else if (v179 <= 18)
              {
                switch(v179)
                {
                  case 3:
                    v180 = kSecAsn1BitStringTemplate;
                    goto LABEL_425;
                  case 4:
                    v180 = kSecAsn1OctetStringTemplate;
                    goto LABEL_425;
                  case 12:
                    v180 = kSecAsn1UTF8StringTemplate;
                    goto LABEL_425;
                }
              }

              else
              {
                if (v179 > 21)
                {
                  if (v179 == 22)
                  {
                    v180 = kSecAsn1IA5StringTemplate;
                  }

                  else
                  {
                    v180 = kSecAsn1UTCTimeTemplate;
                  }

                  goto LABEL_425;
                }

                if (v179 == 19)
                {
                  v180 = kSecAsn1PrintableStringTemplate;
                  goto LABEL_425;
                }

                if (v179 == 20)
                {
                  v180 = kSecAsn1T61StringTemplate;
                  goto LABEL_425;
                }
              }

LABEL_416:
              v180 = 0;
              goto LABEL_425;
            }

            if (v139 == 30)
            {
              if (v67)
              {
                goto LABEL_232;
              }

              goto LABEL_365;
            }
          }

          goto LABEL_348;
        }

        if (v139 > 11)
        {
          switch(v139)
          {
            case 12:
              goto LABEL_365;
            case 16:
              *(v8 + 12) = 12;
              v175 = sec_asn1d_push_state(*v8, v8[1] + 24, v8[2], 1);
              v13 = v175;
              if (!v175)
              {
LABEL_429:
                v14 = 0;
                v15 = 0;
                v16 = 0;
                goto LABEL_430;
              }

              v171 = *v175;
              goto LABEL_359;
            case 17:
              goto LABEL_232;
          }

LABEL_348:
          if (!v67)
          {
            goto LABEL_232;
          }

          v169 = v8[2];
          if (!v169)
          {
            goto LABEL_440;
          }

          *v169 = 0;
          if (*(*v8 + 72))
          {
            v169[1] = 0;
            goto LABEL_440;
          }

          v188 = sec_asn1d_zalloc(*(*v8 + 8), v67);
          v169[1] = v188;
          if (v188)
          {
            goto LABEL_440;
          }

          goto LABEL_234;
        }

        if ((v139 - 3) < 2)
        {
          goto LABEL_365;
        }

        if (v139 != 5)
        {
          goto LABEL_348;
        }

        if (!v67 && !*(v8 + 139))
        {
          v167 = v8[2];
          if (v167)
          {
            *v167 = 0;
            v167[1] = 0;
          }

LABEL_275:
          v13 = 0;
          v14 = 0;
LABEL_276:
          v15 = 0;
          v16 = 0;
LABEL_277:
          v17 = 22;
          goto LABEL_278;
        }

LABEL_232:
        v138 = PR_getThreadErrInfo(1, &v195);
        if (v138)
        {
          *v138 = 0xFFFFE00900000000;
        }

LABEL_234:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(*v8 + 24) = 1;
LABEL_430:
        v158 = 2;
LABEL_431:
        v136 = *(a1 + 24);
LABEL_432:
        if (v136 == 1)
        {
          goto LABEL_458;
        }

        if (a3 >= v13)
        {
          v8 = *(a1 + 16);
          if (!v8 || *v8[1] == 0x80000)
          {
            result = 0;
            *(a1 + 24) = 0;
            return result;
          }

          if (!v13)
          {
            if (v136 != 2)
            {
              return 0;
            }

            continue;
          }

          if (v8[10] == 1024 && (v14 | v15) == 1 && !*(a1 + 72))
          {
            sec_asn1d_record_any_header(*(a1 + 16), a2, v13);
          }

          v189 = *(*v8 + 56);
          if (v189)
          {
            v190 = *(v8 + 28);
            if (v16)
            {
              v190 = v190 - (*(v8 + 139) == 0);
            }

            v189(*(*v8 + 64), a2, v13, v190, v158);
          }

          v8[13] += v13;
          a2 += v13;
          v7 = *(a1 + 24);
          a3 -= v13;
          if (v7 != 2)
          {
LABEL_452:
            if (v7 == 1)
            {
              goto LABEL_458;
            }

            return 0;
          }

          goto LABEL_4;
        }

        v191 = PR_getThreadErrInfo(1, &v195);
        if (v191)
        {
          *v191 = 0xFFFFE00900000000;
        }

        *(a1 + 24) = 1;
LABEL_458:
        if (v8)
        {
LABEL_459:
          v192 = *(v6 + 32);
          do
          {
            if (v192 == v8)
            {
              break;
            }

            if (v8[5])
            {
              v8[5] = 0;
              v8[3] = 0;
            }

            *(v8 + 12) = 20;
            v8 = v8[4];
          }

          while (v8);
        }

        return 0xFFFFFFFFLL;
      case 6:
        v80 = v8[12];
        if (!v80)
        {
          v126 = v8[2];
          if (v126)
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *v126 = 0;
            v126[1] = 0;
            v158 = 2;
            v127 = 20;
            goto LABEL_196;
          }
        }

        if (!a3)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(*v8 + 24) = 3;
          goto LABEL_430;
        }

        v81 = *a2;
        if (v81 >= 8)
        {
          goto LABEL_232;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(v8 + 29) = v81;
        *(v8 + 12) = 7;
        v8[12] = v80 - 1;
        v158 = 2;
        v13 = 1;
        goto LABEL_431;
      case 7:
        if (v8[12])
        {
          goto LABEL_137;
        }

        v14 = *(v8 + 29);
        if (v14)
        {
          goto LABEL_232;
        }

        v13 = 0;
        goto LABEL_333;
      case 8:
        v29 = v8[5];
        v42 = *(v29 + 104);
        *(v29 + 104) = 0;
        v43 = v8[12];
        v8[13] += v42;
        if (v43)
        {
          v37 = v43 >= v42;
          v44 = v43 - v42;
          if (!v37)
          {
            goto LABEL_232;
          }

          v8[12] = v44;
          if (v44)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v118 = *(v29 + 16);
          v119 = v8;
          while (v118 == v119[2])
          {
            if (!*(v119 + 139))
            {
              break;
            }

            v120 = v119[4];
            if (!v120)
            {
              break;
            }

            while (1)
            {
              v121 = *(v120 + 48);
              v122 = (v121 - 16) < 4 || v121 == 24;
              if (!v122 && v121 != 11)
              {
                break;
              }

              v120 = *(v120 + 32);
              if (!v120)
              {
                goto LABEL_220;
              }
            }

            if (*(v120 + 80) != v119[10])
            {
              break;
            }

            v119 = v120;
            if (!*(v120 + 139))
            {
              v124 = 1;
              goto LABEL_221;
            }
          }

LABEL_220:
          v124 = 0;
LABEL_221:
          if (v118)
          {
            v137 = v118[1];
            if (!v137)
            {
              v124 = 1;
            }

            if ((v124 & 1) == 0)
            {
              sec_asn1d_add_to_subitems(v8, v137, *v118, 0);
              *v118 = 0;
              v118[1] = 0;
            }
          }

          if (!*(v29 + 137))
          {
LABEL_44:
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(v29 + 48) = 0;
            *(v29 + 137) = 0;
            *(v29 + 139) = 0;
            goto LABEL_45;
          }
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(v29 + 48) = 26;
        v17 = 13;
        goto LABEL_278;
      case 9:
        v29 = v8[5];
        v30 = *(v29 + 104);
        *(v29 + 104) = 0;
        v8[13] += v30;
        if (*(v29 + 137) && !*(v29 + 139))
        {
          v140 = *(v29 + 16);
          if (v140 && !v8[15])
          {
            sec_asn1d_add_to_subitems(v8, v140, 0, 0);
            *(v29 + 16) = 0;
          }

LABEL_249:
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(v29 + 48) = 26;
          goto LABEL_250;
        }

        v31 = *v8;
        v32 = *(*v8 + 32);
        if (v32)
        {
          v33 = *(v29 + 112);
          v34 = *(v29 + 16);
          *(v31 + 48) = 1;
          v32(*(v31 + 40), 0, v34, v33);
          *(v31 + 48) = 0;
        }

        v35 = *(v29 + 16);
        if (v35)
        {
          sec_asn1d_add_to_subitems(v8, (v35 - *(*(v29 + 8) + 4)), 0, 0);
          *(v29 + 16) = 0;
        }

        v36 = v8[12];
        if (v36)
        {
          v37 = v36 >= v30;
          v38 = v36 - v30;
          if (!v37)
          {
            goto LABEL_232;
          }

          v8[12] = v38;
          if (!v38)
          {
            goto LABEL_249;
          }
        }

        v39 = *v8;
        v40 = *(*v8 + 32);
        if (v40)
        {
          v41 = *(v29 + 112);
          *(v39 + 48) = 1;
          v40(*(v39 + 40), 1, 0, v41);
          *(v39 + 48) = 0;
        }

        *(v29 + 48) = 0;
        *(v29 + 137) = 0;
        *(v29 + 139) = 0;
        sec_asn1d_init_state_based_on_template(v29, a2, a3);
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
LABEL_45:
        *(*v8 + 16) = v29;
        goto LABEL_430;
      case 0xA:
LABEL_137:
        v13 = sec_asn1d_parse_leaf(v8, a2, a3);
        goto LABEL_429;
      case 0xB:
        v104 = v8[5];
        v105 = *(v104 + 104);
        *(v104 + 104) = 0;
        v106 = v8[2];
        if (*(v104 + 40))
        {
          *(v104 + 40) = 0;
          *(v104 + 24) = 0;
        }

        *(v104 + 48) = 20;
        v107 = *v8;
        v108 = *(*v8 + 32);
        if (v108)
        {
          v109 = *(v8 + 28);
          *(v107 + 48) = 1;
          (v108)(*(v107 + 40), 0, v106, v109);
          *(v107 + 48) = 0;
          v110 = v8[2];
          v107 = *v8;
          v108 = *(*v8 + 32);
        }

        else
        {
          v110 = v106;
        }

        v132 = v8[1];
        v133 = v110 - *(v132 + 4);
        v8[1] = v132 + 24;
        v134 = &v133[*(v132 + 28)];
        *(v104 + 8) = v132 + 24;
        *(v104 + 16) = v134;
        if (v108)
        {
          v135 = *(v104 + 112);
          *(v107 + 48) = 1;
          v108(*(v107 + 40), 1);
          *(v107 + 48) = 0;
          v107 = *v8;
        }

        *(v8 + 12) = 19;
        *(v107 + 16) = v104;
        sec_asn1d_init_state_based_on_template(v104, v106[1], *v106);
        if (!SEC_ASN1DecoderUpdate(*v8, v106[1], *v106) && *(*v8 + 24) != 3)
        {
          *(v104 + 104) = 0;
          v8[13] += v105;
          *(v104 + 48) = 26;
          *(v8 + 12) = 22;
        }

        v136 = *(a1 + 24);
        if (v136 == 1)
        {
          return 0xFFFFFFFFLL;
        }

        if (v136 == 3)
        {
          goto LABEL_465;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v158 = 2;
        goto LABEL_432;
      case 0xC:
        v82 = v8[5];
        v83 = *v8;
        v84 = *(*v8 + 32);
        if (v84)
        {
          v85 = *(v82 + 112);
          v86 = *(v82 + 16);
          *(v83 + 48) = 1;
          v84(*(v83 + 40), 0, v86, v85);
          *(v83 + 48) = 0;
        }

        v87 = *(v82 + 140);
        v88 = *(v82 + 104);
        *(v82 + 104) = 0;
        if (v87)
        {
          goto LABEL_129;
        }

        v8[13] += v88;
        if (*(v82 + 40))
        {
          *(v82 + 40) = 0;
          *(v82 + 24) = 0;
        }

        *(v82 + 48) = 20;
        v128 = v8[12];
        if (!v128)
        {
          goto LABEL_129;
        }

        v37 = v128 >= v88;
        v129 = v128 - v88;
        if (!v37)
        {
          goto LABEL_232;
        }

        v8[12] = v129;
        if (!v129)
        {
          v130 = (*(v82 + 8) + 24);
          while (1)
          {
            v131 = v130;
            v15 = *v130;
            if (!*v130)
            {
              break;
            }

            v130 += 6;
            if ((v15 & 0x100) == 0)
            {
              *(v82 + 8) = v131;
              goto LABEL_232;
            }
          }

          v13 = 0;
          v14 = 0;
          v16 = 0;
          *(v82 + 8) = v131;
          *(v82 + 48) = 26;
          v158 = 2;
          v127 = 22;
LABEL_196:
          *(v8 + 12) = v127;
          goto LABEL_431;
        }

LABEL_129:
        v89 = *(v82 + 8);
        v90 = *(v89 + 24);
        *(v82 + 8) = v89 + 24;
        if (v90)
        {
          v91 = v8[2];
          if (v91)
          {
            *(v82 + 16) = v91 + *(v89 + 28);
          }

          v92 = *v8;
          v93 = *(*v8 + 32);
          if (v93)
          {
            v94 = *(v82 + 112);
            v95 = *(v82 + 16);
            *(v92 + 48) = 1;
            v93(*(v92 + 40), 1, v95, v94);
            *(v92 + 48) = 0;
          }

          v194 = v6;
          if (v87)
          {
            v96 = *(v82 + 52);
            v97 = *(v82 + 64);
          }

          else
          {
            v96 = 0;
            v97 = 0;
          }

          *(*v8 + 16) = v82;
          inited = sec_asn1d_init_state_based_on_template(v82, a2, a3);
          v14 = 0;
          v13 = 0;
          v158 = 2;
          if (v87 && inited)
          {
            *(inited + 12) = 2;
            *(inited + 52) = v96;
            inited[8] = v97;
            inited[13] = v88;
            if (inited[10] == 1024 && !*(*inited + 72))
            {
              LOBYTE(v195) = v96 | v97;
              sec_asn1d_record_any_header(inited, &v195, 1uLL);
            }

            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
          }

          else
          {
            v15 = 0;
            v16 = 0;
          }

          v6 = v194;
          goto LABEL_431;
        }

        *(v82 + 48) = 26;
        if (v8[12])
        {
          goto LABEL_232;
        }

        if (!v87)
        {
          v13 = 0;
          v14 = 0;
LABEL_333:
          v15 = 0;
          v16 = 0;
LABEL_12:
          v17 = 20;
          goto LABEL_278;
        }

        if (*(v8 + 139) && *(v82 + 137) && v88 == 2)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v8[13] += 2;
          goto LABEL_277;
        }

        goto LABEL_232;
      case 0xD:
        v23 = v8 + 15;
        v22 = v8[15];
        if (!v22)
        {
          goto LABEL_275;
        }

        v24 = 0;
        v25 = v8[10];
        while (2)
        {
          while (1)
          {
            v26 = *(v22 + 16);
            if (v25 == 3)
            {
              break;
            }

            v24 += *(v22 + 8);
            v22 = *(v22 + 16);
            if (!v26)
            {
              v28 = v24;
              if (v25 == 1024)
              {
                if (*(v8 + 139))
                {
                  v24 += 2;
                }

                v28 = v24;
              }

              goto LABEL_268;
            }
          }

          v27 = *(v22 + 8);
          if (v26)
          {
            if ((v27 & 7) == 0)
            {
              v24 += v27;
              v22 = v26;
              continue;
            }

            goto LABEL_232;
          }

          break;
        }

        v28 = v27 + v24;
        v24 = (v27 + v24 + 7) >> 3;
LABEL_268:
        v152 = v8[2];
        v13 = sec_asn1d_zalloc(*(*v8 + 8), v24);
        v152[1] = v13;
        if (!v13)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(*v8 + 24) = 1;
          v158 = 2;
          goto LABEL_431;
        }

        *v152 = v28;
        for (j = *v23; j; j = *(j + 16))
        {
          if (v25 == 3)
          {
            v154 = (*(j + 8) + 7) >> 3;
          }

          else
          {
            v154 = *(j + 8);
          }

          memcpy(v13, *j, v154);
          v13 += v154;
        }

        *v23 = 0;
        v8[16] = 0;
        goto LABEL_275;
      case 0xE:
        v111 = v8[2];
        if (!v111)
        {
          goto LABEL_275;
        }

        v113 = (v8 + 15);
        v112 = v8[15];
        if (v112)
        {
          v114 = 0;
          do
          {
            ++v114;
            v112 = *(v112 + 16);
          }

          while (v112);
          v115 = 8 * v114 + 8;
        }

        else
        {
          v115 = 8;
        }

        v150 = sec_asn1d_zalloc(*(*v8 + 8), v115);
        if (!v150)
        {
          goto LABEL_234;
        }

        *v111 = v150;
        for (k = *v113; k; k = k[2])
        {
          *v150++ = *k;
        }

        *v150 = 0;
        *v113 = 0;
        v8[16] = 0;
        goto LABEL_275;
      case 0xF:
      case 0x10:
      case 0x11:
      case 0x12:
        v10 = v8[5];
        v11 = *(v10 + 140);
        *(v8 + 140) = v11;
        if (v11)
        {
          v8[8] = *(v10 + 64);
          *(v8 + 52) = *(v10 + 52);
          *(v8 + 137) = *(v10 + 137);
        }

        v12 = v8[12];
        v8[13] += *(v10 + 104);
        if (!v12)
        {
          goto LABEL_11;
        }

        if (v12 != *(v10 + 104))
        {
          goto LABEL_232;
        }

        v8[12] = 0;
LABEL_11:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(v10 + 104) = 0;
        goto LABEL_12;
      case 0x13:
        return result;
      case 0x14:
        if (*(v8 + 139))
        {
          v8[12] = 2;
          v17 = 21;
        }

        else
        {
          v17 = 22;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        goto LABEL_278;
      case 0x15:
        if (!a3)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          v158 = 3;
          *(*v8 + 24) = 3;
          v16 = 1;
          goto LABEL_431;
        }

        v46 = v8[12];
        if (v46 >= a3)
        {
          v13 = a3;
        }

        else
        {
          v13 = v8[12];
        }

        if (!v46)
        {
          goto LABEL_55;
        }

        v47 = 0;
        v48 = 1;
        while (!a2[v47])
        {
          v47 = v48;
          if (v13 <= v48++)
          {
LABEL_55:
            v8[12] = v46 - v13;
            v16 = 1;
            if (v46 <= a3)
            {
              v14 = 0;
              v15 = 0;
              *(v8 + 12) = 22;
              *(v8 + 137) = 1;
            }

            else
            {
              v14 = 0;
              v15 = 0;
            }

            goto LABEL_288;
          }
        }

        v157 = PR_getThreadErrInfo(1, &v195);
        if (v157)
        {
          *v157 = 0xFFFFE00900000000;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 1;
        *(*v8 + 24) = 1;
LABEL_288:
        v158 = 3;
        goto LABEL_431;
      case 0x16:
        if (v8[5])
        {
          v8[5] = 0;
          v8[3] = 0;
        }

        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        goto LABEL_162;
      case 0x17:
        if (*(v8 + 136))
        {
          v18 = sec_asn1d_zalloc(*(*v8 + 8), *(v8[1] + 16));
          if (!v18)
          {
            goto LABEL_258;
          }

          v19 = v8[1];
          v20 = *(v19 + 4);
          v21 = &v18[v20];
          v8[2] = &v18[v20];
        }

        else
        {
          v19 = v8[1];
          v21 = v8[2];
          v20 = *(v19 + 4);
        }

        v116 = sec_asn1d_push_state(*v8, v19 + 24, &v21[-v20], 0);
        if (v116)
        {
          *(v116 + 12) = 0;
          *(v116 + 137) = 0;
          *(v116 + 139) = 0;
          v117 = sec_asn1d_init_state_based_on_template(v116, a2, a3);
          if (v117)
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(v117 + 141) = 1;
            *(v8 + 12) = 24;
            v158 = 2;
            v8 = v117;
            goto LABEL_431;
          }
        }

        v8 = 0;
        goto LABEL_428;
      case 0x18:
        v50 = v8[5];
        if (!*(v50 + 140))
        {
          v125 = v8[2];
          if (v125)
          {
            *v125 = *(*(v50 + 8) + 16);
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(v50 + 48) = 26;
          v17 = 25;
          goto LABEL_278;
        }

        v8[13] += *(v50 + 104);
        if (*(v50 + 137))
        {
          *(v50 + 48) = 26;
          *(v8 + 12) = 25;
          *(v8 + 137) = 1;
          if (sec_asn1d_parent_allows_EOC(v8[4]))
          {
            goto LABEL_428;
          }
        }

        else
        {
          v142 = *(v50 + 8);
          v141 = *(v50 + 16);
          v143 = v142[1];
          v144 = v142[6];
          *(v50 + 8) = v142 + 6;
          if (v144)
          {
            *(v50 + 16) = v141 - v143 + v142[7];
            v145 = v8[12];
            if (!v145 || (v146 = *(v50 + 104), v37 = v145 >= v146, v147 = v145 - v146, v37) && (v8[12] = v147) != 0)
            {
              *(v50 + 104) = 0;
              *(v50 + 48) = 0;
              *(v50 + 137) = 0;
              *(v50 + 139) = 0;
              *(*v8 + 16) = v50;
              v164 = *(v50 + 52);
              v165 = *(v50 + 64);
              v166 = sec_asn1d_init_state_based_on_template(v50, a2, a3);
              v8 = v166;
              v158 = 2;
              v13 = 0;
              v14 = 0;
              v15 = 0;
              v16 = 0;
              if (v166)
              {
                *(v166 + 52) = v164;
                v166[8] = v165;
                *(v166 + 141) = 1;
                *(v166 + 12) = 2;
              }

              goto LABEL_431;
            }
          }
        }

        v148 = PR_getThreadErrInfo(1, &v195);
        if (v148)
        {
          *v148 = 0xFFFFE00900000000;
        }

LABEL_258:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(*v8 + 24) = 1;
        v158 = 2;
        v8 = 0;
        goto LABEL_431;
      case 0x19:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v45 = v8[5];
        v8[13] += *(v45 + 104);
        *(v45 + 104) = 0;
        v8[5] = 0;
        v8[3] = 0;
LABEL_162:
        *(v8 + 12) = 20;
        *(*v8 + 16) = v8[4];
        goto LABEL_430;
      default:
LABEL_465:
        v193 = PR_getThreadErrInfo(1, &v195);
        if (v193)
        {
          *v193 = 0xFFFFE00900000000;
        }

        *(a1 + 24) = 1;
        goto LABEL_459;
    }
  }
}

uint64_t sec_asn1d_parent_allows_EOC(uint64_t result)
{
  if (result)
  {
    while (1)
    {
      v1 = *(result + 48);
      v2 = (v1 - 16) < 4 || v1 == 24;
      if (!v2 && v1 != 11)
      {
        break;
      }

      result = *(result + 32);
      if (!result)
      {
        return result;
      }
    }

    v4 = (v1 & 0xFFFFFFFE) == 8 || *(*(result + 40) + 141) != 0;
    return (*(result + 139) != 0) & v4;
  }

  return result;
}

uint64_t sec_asn1d_check_and_subtract_length(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    if (*a1 >= a2)
    {
      *a1 -= a2;
      return 1;
    }

    else
    {
      ThreadErrInfo = PR_getThreadErrInfo(1, &v8);
      if (ThreadErrInfo)
      {
        *ThreadErrInfo = 0xFFFFE00900000000;
      }

      result = 0;
      *(a3 + 24) = 1;
    }
  }

  else
  {
    v6 = PR_getThreadErrInfo(1, &v7);
    if (v6)
    {
      *v6 = 0xFFFFE00500000000;
    }

    result = 0;
    if (a3)
    {
      *(a3 + 24) = 1;
    }
  }

  return result;
}

void *sec_asn1d_zalloc(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    v3 = PORT_ArenaAlloc(a1, a2);
  }

  else
  {
    v3 = PORT_Alloc(a2);
  }

  v4 = v3;
  if (v3)
  {
    bzero(v3, a2);
  }

  return v4;
}

void *sec_asn1d_push_state(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(a1 + 16);
  if (a2)
  {
    if (v5)
    {
      *(v5 + 24) = -1;
    }

    result = sec_asn1d_zalloc(*a1, 0x90uLL);
    if (result)
    {
      result[4] = v5;
      *result = a1;
      result[1] = a2;
      *(result + 12) = 26;
      if (a3)
      {
        result[2] = a3 + *(a2 + 4);
      }

      if (v5)
      {
        v10 = *(v5 + 112);
        *(result + 28) = v10;
        if (a4)
        {
          *(result + 28) = v10 + 1;
          if (v10 >= 32)
          {
            ThreadErrInfo = PR_getThreadErrInfo(1, &v14);
            if (ThreadErrInfo)
            {
              *ThreadErrInfo = 0xFFFFE00900000000;
            }

            *(a1 + 24) = 1;
            goto LABEL_16;
          }
        }

        *(v5 + 40) = result;
      }

      *(a1 + 16) = result;
      return result;
    }
  }

  else
  {
    v12 = PR_getThreadErrInfo(1, &v13);
    if (v12)
    {
      *v12 = 0xFFFFE08800000000;
    }
  }

  *(a1 + 24) = 1;
  if (v5)
  {
LABEL_16:
    result = 0;
    *(v5 + 24) = 0;
    return result;
  }

  return 0;
}

void *sec_asn1d_init_state_based_on_template(void *a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    if (!a1)
    {
      return a1;
    }

    v6 = *a1;
    if (*(*a1 + 24) == 1)
    {
      return a1;
    }

    v7 = a1[1];
    if (!v7)
    {
      return a1;
    }

    v8 = *v7;
    if ((*v7 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    if (*(v6 + 72))
    {
      break;
    }

    *(a1 + 137) = 0;
    *(a1 + 139) = 0;
    *(a1 + 12) = 11;
    a1 = sec_asn1d_push_state(v6, kSecAsn1AnyTemplate, a1[2], 0);
    if (!a1)
    {
      return a1;
    }
  }

  v9 = *(v6 + 32);
  if (v9)
  {
    v10 = *(a1 + 28);
    v11 = a1[2];
    *(v6 + 48) = 1;
    v9(*(v6 + 40), 0, v11, v10);
    *(v6 + 48) = 0;
  }

  v12 = a1[2];
  if (v12)
  {
    v13 = a1[1];
    v14 = v12 - v13[1];
  }

  else
  {
    v14 = *(a1[4] + 16);
    v13 = a1[1];
  }

  v7 = v13 + 6;
  a1[1] = v13 + 6;
  a1[2] = v14;
  if (v14)
  {
    v15 = v14 + v13[7];
    a1[2] = v15;
  }

  else
  {
    v15 = 0;
  }

  v16 = *a1;
  v17 = *(*a1 + 32);
  if (v17)
  {
    v18 = *(a1 + 28);
    *(v16 + 48) = 1;
    v17(*(v16 + 40), 1, v15, v18);
    *(v16 + 48) = 0;
    v7 = a1[1];
  }

  v8 = *v7;
LABEL_19:
  if ((v8 & 0x100000) != 0)
  {
    *(a1 + 12) = 23;
    return a1;
  }

  v19 = v8 & 0x200;
  v20 = (v8 >> 8) & 1;
  v22 = (v8 & 0xC0) == 0 || v19 != 0;
  if ((v8 & 0x1800) == 0 && v22)
  {
    v23 = v8 & 0xFFFBBCFF;
    if ((v8 & 0x200) != 0)
    {
      v23 = 0;
    }

    goto LABEL_54;
  }

  *(a1 + 12) = 0;
  *(a1 + 137) = 0;
  *(a1 + 139) = 0;
  if ((v8 & 0x1000) != 0)
  {
    v25 = 0;
    v24 = *(*a1 + 72) == 0;
    v26 = 18;
  }

  else
  {
    v24 = 0;
    v25 = a1[2];
    if ((v8 & 0x800) != 0)
    {
      v26 = 17;
    }

    else
    {
      v26 = 16;
    }
  }

  *(a1 + 12) = v26;
  *(a1 + 141) = v20;
  v27 = a1;
  while (1)
  {
    v28 = v27[2];
    if (v28)
    {
      break;
    }

    v27 = v27[4];
    if (!v27)
    {
      v29 = *(v7 + 1);
      if (v29 && (v8 & 0x4000) != 0)
      {
        if (*v29)
        {
          v30 = (*v29)(0, 0, a2, a3, 0);
LABEL_48:
          v29 = v30;
          goto LABEL_50;
        }

LABEL_49:
        v29 = 0;
        goto LABEL_50;
      }

      goto LABEL_50;
    }
  }

  v29 = *(v7 + 1);
  if (v29 && (v8 & 0x4000) != 0)
  {
    if (*v29)
    {
      v30 = (*v29)(v28 - v7[1], 0, a2, a3);
      goto LABEL_48;
    }

    goto LABEL_49;
  }

LABEL_50:
  v31 = sec_asn1d_push_state(*a1, v29, v25, 0);
  a1 = v31;
  if (v31)
  {
    *(v31 + 136) = v24;
    if ((v8 & 0xC0) != 0 && (v8 & 0x4000) == 0)
    {
      v23 = *v31[1] & 0xFFFBFFFF;
LABEL_54:
      if ((v8 & 0x8400) != 0)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        if ((v8 & 0x8000) != 0)
        {
          a1[2] = 0;
        }
      }

      else
      {
        v32 = v8 & 0xE0;
        v34 = v8 & 0x1F;
        v35 = 1 << (v23 & 0x1F);
        v36 = v8 & 0xC0 | 0x20;
        if ((v35 & 0x30000) == 0)
        {
          v36 = v8 & 0xE0;
        }

        v37 = (v35 & 0x55D81018) == 0;
        if ((v35 & 0x55D81018) != 0)
        {
          v38 = v8 & 0xE0;
        }

        else
        {
          v38 = v36;
        }

        if (v37)
        {
          v39 = 255;
        }

        else
        {
          v39 = 223;
        }

        if ((v23 & 0x1F) == 0x1F)
        {
          v33 = 255;
        }

        else
        {
          v32 = v38;
          v33 = v39;
        }
      }

      a1[7] = v33;
      *(a1 + 53) = v32;
      a1[9] = v34;
      a1[10] = v23;
      *(a1 + 138) = v19 >> 9;
      *(a1 + 141) = v20;
      *(a1 + 12) = 0;
      *(a1 + 137) = 0;
      *(a1 + 139) = 0;
      return a1;
    }

    inited = sec_asn1d_init_state_based_on_template(v31, a2, a3);
    a1 = inited;
    if (inited)
    {
      *(inited + 141) = v20;
    }
  }

  return a1;
}

unint64_t sec_asn1d_parse_leaf(uint64_t a1, char *__src, unint64_t a3)
{
  if (!a3)
  {
    v5 = 0;
    *(*a1 + 24) = 3;
    return v5;
  }

  v4 = *(a1 + 96);
  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = *(a1 + 96);
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = v6[1];
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = __src;
  v9 = *(a1 + 80);
  v10 = *v6;
  if (v9 == 2)
  {
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v5 >= 2;
    }

    if (!v11)
    {
      v12 = v5;
      goto LABEL_25;
    }

    __src = &__src[v5 - 1];
    v12 = v5;
    while (!*v8)
    {
      ++v8;
      if (--v12 <= 1)
      {
        v12 = 1;
        goto LABEL_20;
      }
    }

    __src = v8;
  }

  else
  {
    v12 = v5;
  }

LABEL_20:
  if (v9 != 3)
  {
LABEL_25:
    v13 = v12;
    v14 = *v6;
    if (0xFFFFFFFF - v10 < v12)
    {
LABEL_26:
      ThreadErrInfo = PR_getThreadErrInfo(1, &v17);
      if (ThreadErrInfo)
      {
        *ThreadErrInfo = 0xFFFFE00900000000;
      }

      v5 = 0;
      *(*a1 + 24) = 1;
      return v5;
    }

    goto LABEL_29;
  }

  if ((v10 & 7) != 0)
  {
    goto LABEL_26;
  }

  if (v12 >> 61)
  {
    goto LABEL_26;
  }

  v13 = 8 * v12 - *(a1 + 116);
  if (0xFFFFFFFF - v10 < v13)
  {
    goto LABEL_26;
  }

  v14 = v10 >> 3;
LABEL_29:
  *v6 = v13 + v10;
  memcpy((v7 + v14), __src, v12);
  v4 = *(a1 + 96);
LABEL_30:
  *(a1 + 96) = v4 - v5;
  if (v4 == v5)
  {
    *(a1 + 48) = 20;
  }

  return v5;
}

void sec_asn1d_add_to_subitems(uint64_t **a1, void *a2, unint64_t a3, int a4)
{
  v8 = sec_asn1d_zalloc(**a1, 0x18uLL);
  if (!v8)
  {
    *(*a1 + 6) = 1;
    return;
  }

  v9 = v8;
  if (!a4)
  {
    v12 = a2;
LABEL_10:
    *v9 = v12;
    v9[1] = a3;
    v9[2] = 0;
    if (a1[15])
    {
      a1[16][2] = v9;
    }

    else
    {
      a1[15] = v9;
    }

    a1[16] = v9;
    return;
  }

  v10 = **a1;
  if (v10)
  {
    v11 = PORT_ArenaAlloc(v10, a3);
  }

  else
  {
    v11 = PORT_Alloc(a3);
  }

  v12 = v11;
  if (v11)
  {
    memcpy(v11, a2, a3);
    goto LABEL_10;
  }

  v13 = *a1;
  *(v13 + 6) = 1;
  if (!*v13)
  {

    free(v9);
  }
}

void sec_asn1d_record_any_header(uint64_t **a1, void *a2, unint64_t a3)
{
  v4 = a1[2];
  if (v4 && v4[1])
  {
    ThreadErrInfo = PR_getThreadErrInfo(1, &v6);
    if (ThreadErrInfo)
    {
      *ThreadErrInfo = 0xFFFFE00100000000;
    }

    *(*a1 + 6) = 1;
  }

  else
  {

    sec_asn1d_add_to_subitems(a1, a2, a3, 1);
  }
}

uint64_t SEC_ASN1DecoderFinish(uint64_t a1)
{
  if (*(a1 + 24) != 3)
  {
    goto LABEL_10;
  }

  v2 = *(a1 + 16);
  if (!*(v2 + 48))
  {
    v5 = *(v2 + 8);
    v6 = *v5;
    if (*v5)
    {
      v7 = v5 + 6;
      while ((v6 & 0x100) != 0)
      {
        v8 = *v7;
        v7 += 6;
        LOWORD(v6) = v8;
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_3;
    }

LABEL_10:
    v4 = 0;
    goto LABEL_11;
  }

LABEL_3:
  ThreadErrInfo = PR_getThreadErrInfo(1, &v10);
  if (ThreadErrInfo)
  {
    *ThreadErrInfo = 0xFFFFE00900000000;
  }

  v4 = 0xFFFFFFFFLL;
LABEL_11:
  PORT_FreeArena(*a1, 0);
  return v4;
}

uint64_t SEC_ASN1DecoderStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = PORT_NewArena(2048);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = PORT_ArenaAlloc(v10, 0x50uLL);
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  *(v12 + 8) = 0u;
  *(v12 + 72) = 0;
  *(v12 + 56) = 0u;
  *(v12 + 40) = 0u;
  *(v12 + 24) = 0u;
  *v12 = v11;
  if (a1)
  {
    *(v12 + 8) = a1;
  }

  *(v12 + 24) = 3;
  if (!sec_asn1d_push_state(v12, a3, a2, 0) || !sec_asn1d_init_state_based_on_template(*(v13 + 16), a4, a5))
  {
LABEL_7:
    PORT_FreeArena(v11, 0);
    return 0;
  }

  return v13;
}

uint64_t SEC_ASN1Decode(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5)
{
  v7 = SEC_ASN1DecoderStart(a1, a2, a3, a4, a5);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  v9 = SEC_ASN1DecoderUpdate(v7, a4, a5);
  LODWORD(result) = SEC_ASN1DecoderFinish(v8);
  if (v9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return result;
  }
}

OSStatus SecAsn1CoderCreate(SecAsn1CoderRef *coder)
{
  if (!coder)
  {
    return -50;
  }

  v2 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  v3 = PORT_NewArena(1024);
  *v2 = v3;
  if (v3)
  {
    result = 0;
    *coder = v2;
  }

  else
  {
    free(v2);
    return -108;
  }

  return result;
}

OSStatus SecAsn1CoderRelease(SecAsn1CoderRef coder)
{
  if (!coder)
  {
    return -50;
  }

  v2 = *coder;
  if (v2)
  {
    PORT_FreeArena(v2, 1);
  }

  free(coder);
  return 0;
}

OSStatus SecAsn1Decode(SecAsn1CoderRef coder, const void *src, size_t len, const SecAsn1Template *templates, void *dest)
{
  result = -50;
  if (coder && src && templates && dest)
  {
    if (SEC_ASN1Decode(*coder, dest, templates, src, len))
    {
      return -26275;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

OSStatus SecAsn1EncodeItem(SecAsn1CoderRef coder, const void *src, const SecAsn1Template *templates, SecAsn1Item *dest)
{
  result = -50;
  if (coder && src && templates && dest)
  {
    dest->Length = 0;
    dest->Data = 0;
    if (SEC_ASN1EncodeItem(*coder, dest, src, templates))
    {
      return 0;
    }

    else
    {
      return -50;
    }
  }

  return result;
}

void *__cdecl SecAsn1Malloc(void *coder, size_t len)
{
  if (coder)
  {
    return PORT_ArenaAlloc(*coder, len);
  }

  return coder;
}

OSStatus SecAsn1AllocItem(SecAsn1CoderRef coder, SecAsn1Item *item, size_t len)
{
  result = -50;
  if (coder && item)
  {
    v7 = PORT_ArenaAlloc(*coder, len);
    item->Data = v7;
    if (v7)
    {
      result = 0;
      item->Length = len;
    }

    else
    {
      return -108;
    }
  }

  return result;
}

OSStatus SecAsn1AllocCopy(SecAsn1CoderRef coder, const void *src, size_t len, SecAsn1Item *dest)
{
  if (!src)
  {
    return -50;
  }

  result = -50;
  if (coder && dest)
  {
    v9 = PORT_ArenaAlloc(*coder, len);
    dest->Data = v9;
    if (v9)
    {
      dest->Length = len;
      memmove(v9, src, len);
      return 0;
    }

    else
    {
      return -108;
    }
  }

  return result;
}

uint64_t __SSLContextGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef SSLContextCopyDescription(uint64_t a1)
{
  SecGetDebugDescriptionFormatOptions();
  if (a1)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<SSLContext(%p) { ... }>", a1);
  }

  else
  {
    return 0;
  }
}

CFStringRef SSLContextCopyFormatDescription(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<SSLContext(%p) { ... }>", result);
  }

  return result;
}

OSStatus SSLSetSessionConfig(SSLContextRef context, CFStringRef config)
{
  if (!CFEqual(config, @"ATSv1") && !CFEqual(config, @"ATSv1_noPFS") && !CFEqual(config, @"standard") && !CFEqual(config, @"TLSv1_fallback") && !CFEqual(config, @"TLSv1_RC4_fallback") && !CFEqual(config, @"RC4_fallback") && !CFEqual(config, @"3DES_fallback") && !CFEqual(config, @"TLSv1_3DES_fallback") && !CFEqual(config, @"legacy") && !CFEqual(config, @"legacy_DHE") && !CFEqual(config, @"anonymous") && !CFEqual(config, @"default"))
  {
    return -50;
  }

  v4 = *(context + 7);

  return tls_handshake_set_config();
}

uint64_t __SSLCreateContextWithRecordFuncs_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/Library/Managed Preferences/mobile/.GlobalPreferences.plist", kCFURLPOSIXPathStyle, 0);
  if (v1)
  {
    v2 = v1;
    v3 = CFReadStreamCreateWithFile(v0, v1);
    if (v3)
    {
      v4 = v3;
      if (CFReadStreamOpen(v3))
      {
        v5 = CFPropertyListCreateWithStream(v0, v4, 0, 0, 0, 0);
      }

      else
      {
        v5 = 0;
      }

      CFRelease(v4);
    }

    else
    {
      v5 = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v5 = 0;
  }

  v6 = SSLPreferencesCopyValue(@"SSLDisableRecordSplitting", v5);
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v7);
    }

    else
    {
      Value = 0;
    }

    CFRelease(v7);
  }

  else
  {
    Value = 0;
  }

  kSSLDisableRecordSplittingDefaultValue = Value;
  kMinDhGroupSizeDefaultValue = SSLPreferencesGetInteger(@"SSLMinDhGroupSize", v5);
  kMinProtocolVersionDefaultValue = SSLPreferencesGetInteger(@"SSLMinProtocolVersion", v5);
  v10 = SSLPreferencesCopyValue(@"SSLSessionConfig", v5);
  v11 = v10;
  if (v10)
  {
    v12 = CFGetTypeID(v10);
    if (v12 != CFStringGetTypeID())
    {
      CFRelease(v11);
      v11 = 0;
    }
  }

  kSSLSessionConfigDefaultValue = v11;
  if (v5)
  {
    CFRelease(v5);
  }

  result = tls_cache_create();
  g_session_cache = result;
  return result;
}

CFPropertyListRef SSLPreferencesCopyValue(const void *a1, const __CFDictionary *a2)
{
  v4 = CFPreferencesCopyAppValue(@"SSLSessionConfig", *MEMORY[0x1E695E8A8]);
  v5 = v4;
  if (a2)
  {
    if (!v4)
    {
      Value = CFDictionaryGetValue(a2, a1);
      v5 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }
  }

  return v5;
}

const __CFNumber *SSLPreferencesGetInteger(const void *a1, const __CFDictionary *a2)
{
  result = SSLPreferencesCopyValue(a1, a2);
  valuePtr = 0;
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberCFIndexType, &valuePtr);
    }

    CFRelease(v3);
    return valuePtr;
  }

  return result;
}

uint64_t SSLSetRecordContext(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v3 = *(a1 + 80);
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x59;
  if (v4 || v5 == 0)
  {
    return 4294966387;
  }

  result = 0;
  *(a1 + 48) = a2;
  return result;
}

uint64_t _SSLNewDatagramContext(int a1, SSLContextRef *a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  v3 = SSLCreateContext(*MEMORY[0x1E695E480], (a1 == 0), kSSLDatagramType);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 4294967188;
  }
}

OSStatus SSLGetSessionState(SSLContextRef context, SSLSessionState *state)
{
  if (!context)
  {
    return -50;
  }

  v2 = kSSLIdle;
  *state = kSSLIdle;
  v3 = *(context + 20) - 1;
  if (v3 <= 5)
  {
    v2 = dword_1889605A0[v3];
  }

  result = 0;
  *state = v2;
  return result;
}

OSStatus SSLGetSessionOption(SSLContextRef context, SSLSessionOption option, Boolean *value)
{
  result = -50;
  if (context && value)
  {
    if (option <= kSSLSessionOptionBreakOnClientAuth)
    {
      switch(option)
      {
        case kSSLSessionOptionBreakOnServerAuth:
          result = 0;
          v5 = *(context + 353);
          goto LABEL_19;
        case kSSLSessionOptionBreakOnCertRequested:
          result = 0;
          v5 = *(context + 354);
          goto LABEL_19;
        case kSSLSessionOptionBreakOnClientAuth:
          result = 0;
          v5 = *(context + 355);
LABEL_19:
          *value = v5;
          break;
      }
    }

    else
    {
      if (option <= kSSLSessionOptionSendOneByteRecord)
      {
        result = 0;
        if (option == kSSLSessionOptionFalseStart)
        {
          v5 = *(context + 512);
        }

        else
        {
          v5 = *(context + 315);
        }

        goto LABEL_19;
      }

      if (option == kSSLSessionOptionAllowServerIdentityChange)
      {
        v6 = *(context + 7);
        tls_handshake_get_server_identity_change();
        return 0;
      }

      else if (option == kSSLSessionOptionBreakOnClientHello)
      {
        result = 0;
        v5 = *(context + 359);
        goto LABEL_19;
      }
    }
  }

  return result;
}

uint64_t SSLSetNPNFunc(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = *(result + 80);
    v4 = v3 > 6;
    v5 = (1 << v3) & 0x59;
    if (!v4 && v5 != 0)
    {
      *(result + 520) = a2;
      *(result + 528) = a3;
      if (*(result + 108) == 1)
      {
        return MEMORY[0x1EEE64A38](*(result + 56), a2 != 0);
      }
    }
  }

  return result;
}

uint64_t SSLSetNPNData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && (a3 - 256) >= 0xFFFFFFFFFFFFFF01)
  {
    return MEMORY[0x1EEE64A30](*(a1 + 56), a3, a2);
  }

  else
  {
    return 4294967246;
  }
}

uint64_t *SSLGetNPNData(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 56);
    result = tls_handshake_get_peer_npn_data();
    if (result)
    {
      v6 = *result;
      result = result[1];
      *a2 = v6;
    }
  }

  return result;
}

uint64_t SSLSetALPNFunc(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = *(result + 80);
    v4 = v3 > 6;
    v5 = (1 << v3) & 0x59;
    if (!v4 && v5 != 0)
    {
      *(result + 536) = a2;
      *(result + 544) = a3;
    }
  }

  return result;
}

uint64_t SSLSetALPNData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || !a2 || (a3 - 256) < 0xFFFFFFFFFFFFFF01)
  {
    return 4294967246;
  }

  v3 = *(a1 + 56);
  return tls_handshake_set_alpn_data();
}

uint64_t *SSLGetALPNData(uint64_t a1, void *a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 56);
    result = tls_handshake_get_peer_alpn_data();
    if (result)
    {
      v6 = *result;
      result = result[1];
      *a2 = v6;
    }
  }

  return result;
}

OSStatus SSLSetALPNProtocols(SSLContextRef context, CFArrayRef protocols)
{
  v2 = -50;
  if (context && protocols && CFArrayGetCount(protocols))
  {
    Mutable = CFDataCreateMutable(0, 0);
    contexta[0] = MEMORY[0x1E69E9820];
    contexta[1] = 0x40000000;
    contexta[2] = __SSLSetALPNProtocols_block_invoke;
    contexta[3] = &__block_descriptor_tmp_4_8339;
    contexta[4] = Mutable;
    v9.length = CFArrayGetCount(protocols);
    v9.location = 0;
    CFArrayApplyFunction(protocols, v9, apply_block_1_8341, contexta);
    if (CFDataGetLength(Mutable) <= 255)
    {
      CFDataGetBytePtr(Mutable);
      CFDataGetLength(Mutable);
      v6 = *(context + 7);
      v2 = tls_handshake_set_alpn_data();
    }

    CFRelease(Mutable);
  }

  return v2;
}

void __SSLSetALPNProtocols_block_invoke(uint64_t a1, CFStringRef theString)
{
  v9 = *MEMORY[0x1E69E9840];
  bytes = CFStringGetLength(theString);
  if (bytes <= 0x20uLL)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buffer = v4;
    v8 = v4;
    if (CFStringGetCString(theString, buffer, 32, 0x600u))
    {
      CFDataAppendBytes(*(a1 + 32), &bytes, 1);
      CFDataAppendBytes(*(a1 + 32), buffer, bytes);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

OSStatus SSLCopyALPNProtocols(SSLContextRef context, CFArrayRef *protocols)
{
  result = -50;
  if (context && protocols)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v6 = *(context + 7);
    peer_alpn_data = tls_handshake_get_peer_alpn_data();
    if (peer_alpn_data)
    {
      v8 = peer_alpn_data;
      v9 = 0;
      v10 = *peer_alpn_data;
      while (v9 < v10)
      {
        v11 = v8[1];
        v12 = *(v11 + v9);
        v13 = v9 + 1;
        v9 += 1 + v12;
        if (v9 <= v10)
        {
          v14 = CFStringCreateWithBytes(0, (v11 + v13), v12, 0x600u, 0);
          CFArrayAppendValue(Mutable, v14);
          if (v14)
          {
            CFRelease(v14);
          }

          v10 = *v8;
          if (v9 <= *v8)
          {
            continue;
          }
        }

        goto LABEL_10;
      }

      result = 0;
    }

    else
    {
LABEL_10:
      if (Mutable)
      {
        CFRelease(Mutable);
        Mutable = 0;
      }

      result = -50;
    }

    *protocols = Mutable;
  }

  return result;
}

OSStatus SSLSetOCSPResponse(SSLContextRef context, CFDataRef response)
{
  result = -50;
  if (context)
  {
    if (response)
    {
      CFDataGetBytePtr(response);
      CFDataGetLength(response);
      v5 = *(context + 7);
      return tls_handshake_set_ocsp_response();
    }
  }

  return result;
}

OSStatus SSLGetConnection(SSLContextRef context, SSLConnectionRef *connection)
{
  result = -50;
  if (context)
  {
    if (connection)
    {
      result = 0;
      *connection = *(context + 4);
    }
  }

  return result;
}

OSStatus SSLSetPeerDomainName(SSLContextRef context, const char *peerName, size_t peerNameLen)
{
  if (!context)
  {
    return -50;
  }

  v3 = *(context + 20);
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x59;
  if (v4 || v5 == 0)
  {
    return -909;
  }

  if (*(context + 27) == 1)
  {
    return MEMORY[0x1EEE64A50](*(context + 7), peerName, peerNameLen);
  }

  return 0;
}

OSStatus SSLGetPeerDomainNameLength(SSLContextRef context, size_t *peerNameLen)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 7);
  return tls_handshake_get_peer_hostname();
}

OSStatus SSLGetPeerDomainName(SSLContextRef context, char *peerName, size_t *peerNameLen)
{
  if (!context)
  {
    return -50;
  }

  v5 = *(context + 7);
  result = tls_handshake_get_peer_hostname();
  if (!result)
  {
    if (*peerNameLen >= 0xAAAAAAAAAAAAAAAALL)
    {
      memcpy(peerName, 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL);
      result = 0;
      *peerNameLen = 0xAAAAAAAAAAAAAAAALL;
    }

    else
    {
      return -9817;
    }
  }

  return result;
}

OSStatus SSLCopyRequestedPeerNameLength(SSLContextRef ctx, size_t *peerNameLen)
{
  if (!ctx)
  {
    return -50;
  }

  v3 = *(ctx + 7);
  sni_hostname = tls_handshake_get_sni_hostname();
  if (!sni_hostname)
  {
    return -50;
  }

  v5 = sni_hostname;
  result = 0;
  *peerNameLen = *v5;
  return result;
}

OSStatus SSLCopyRequestedPeerName(SSLContextRef context, char *peerName, size_t *peerNameLen)
{
  if (!context)
  {
    return -50;
  }

  v5 = *(context + 7);
  sni_hostname = tls_handshake_get_sni_hostname();
  if (!sni_hostname)
  {
    return -50;
  }

  v7 = sni_hostname;
  if (*peerNameLen < *sni_hostname)
  {
    return -9817;
  }

  memcpy(peerName, *(sni_hostname + 8), *sni_hostname);
  result = 0;
  *peerNameLen = *v7;
  return result;
}

OSStatus SSLSetDatagramHelloCookie(SSLContextRef dtlsContext, const void *cookie, size_t cookieLen)
{
  if (!dtlsContext)
  {
    return -50;
  }

  result = -50;
  if (cookieLen <= 0x20 && *(dtlsContext + 104))
  {
    v6 = *(dtlsContext + 20);
    v7 = v6 > 6;
    v8 = (1 << v6) & 0x59;
    if (v7 || v8 == 0)
    {
      return -909;
    }

    else
    {
      v11 = *(dtlsContext + 15);
      if (v11)
      {
        free(v11);
        *(dtlsContext + 14) = 0;
        *(dtlsContext + 15) = 0;
      }

      v12 = malloc_type_malloc(cookieLen, 0x7BE92BBDuLL);
      v13 = v12;
      if (v12)
      {
        v14 = cookieLen;
      }

      else
      {
        v14 = 0;
      }

      if (v12)
      {
        result = 0;
      }

      else
      {
        result = -1;
      }

      *(dtlsContext + 14) = v14;
      *(dtlsContext + 15) = v13;
      if (v13)
      {
        memmove(v13, cookie, cookieLen);
        return 0;
      }
    }
  }

  return result;
}

OSStatus SSLSetMaxDatagramRecordSize(SSLContextRef dtlsContext, size_t maxSize)
{
  if (!dtlsContext || !*(dtlsContext + 104))
  {
    return -50;
  }

  v2 = *(dtlsContext + 7);
  tls_handshake_set_mtu();
  return 0;
}

OSStatus SSLGetMaxDatagramRecordSize(SSLContextRef dtlsContext, size_t *maxSize)
{
  if (!dtlsContext || !*(dtlsContext + 104))
  {
    return -50;
  }

  result = 0;
  *maxSize = *(dtlsContext + 54);
  return result;
}

OSStatus SSLGetDatagramWriteSize(SSLContextRef dtlsContext, size_t *bufSize)
{
  if (!dtlsContext)
  {
    return -50;
  }

  result = -50;
  if (bufSize)
  {
    if (*(dtlsContext + 104))
    {
      result = 0;
      *bufSize = ((*(dtlsContext + 54) - 13) & 0xFFFFFFFFFFFFFFF0) - 49;
    }
  }

  return result;
}

OSStatus SSLGetProtocolVersionMin(SSLContextRef context, SSLProtocol *minVersion)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 24);
  if (v2 <= 769)
  {
    if (v2 == 768)
    {
      v3 = kSSLProtocol3;
      goto LABEL_15;
    }

    if (v2 == 769)
    {
      v3 = kTLSProtocol1;
      goto LABEL_15;
    }

LABEL_14:
    v3 = kSSLProtocolUnknown;
    goto LABEL_15;
  }

  if (v2 == 770)
  {
    v3 = kTLSProtocol11;
    goto LABEL_15;
  }

  if (v2 == 771)
  {
    v3 = kTLSProtocol12;
    goto LABEL_15;
  }

  if (v2 != 65279)
  {
    goto LABEL_14;
  }

  v3 = kDTLSProtocol1;
LABEL_15:
  result = 0;
  *minVersion = v3;
  return result;
}

OSStatus SSLSetProtocolVersionMax(SSLContextRef context, SSLProtocol maxVersion)
{
  if (!context)
  {
    return -50;
  }

  if ((maxVersion - 1) > 8)
  {
    return -9830;
  }

  v3 = dword_1889605B8[maxVersion - 1];
  if (!*(context + 104))
  {
    if (v3 - 772 >= 0xFFFFFFFC)
    {
      if (v3 < *(context + 24))
      {
        *(context + 24) = v3;
      }

      goto LABEL_13;
    }

    return -9830;
  }

  if (maxVersion != kDTLSProtocol1)
  {
    return -9830;
  }

  if (*(context + 24) <= 0xFEFEu)
  {
    *(context + 24) = 65279;
  }

LABEL_13:
  *(context + 25) = v3;
  v5 = *(context + 7);
  tls_handshake_set_min_protocol_version();
  v6 = *(context + 7);
  v7 = *(context + 25);
  tls_handshake_set_max_protocol_version();
  return 0;
}

OSStatus SSLGetProtocolVersionMax(SSLContextRef context, SSLProtocol *maxVersion)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 25);
  if (v2 <= 769)
  {
    if (v2 == 768)
    {
      v3 = kSSLProtocol3;
      goto LABEL_15;
    }

    if (v2 == 769)
    {
      v3 = kTLSProtocol1;
      goto LABEL_15;
    }

LABEL_14:
    v3 = kSSLProtocolUnknown;
    goto LABEL_15;
  }

  if (v2 == 770)
  {
    v3 = kTLSProtocol11;
    goto LABEL_15;
  }

  if (v2 == 771)
  {
    v3 = kTLSProtocol12;
    goto LABEL_15;
  }

  if (v2 != 65279)
  {
    goto LABEL_14;
  }

  v3 = kDTLSProtocol1;
LABEL_15:
  result = 0;
  *maxVersion = v3;
  return result;
}

uint64_t _SSLProtocolVersionToWireFormatValue(uint64_t result)
{
  if (result <= 6)
  {
    if (result > 2)
    {
      if ((result - 5) >= 2 && result == 4)
      {
        return 769;
      }
    }

    else
    {
      if (!result)
      {
        return result;
      }

      if (result == 2)
      {
        return 768;
      }
    }

    return 0;
  }

  if (result > 9)
  {
    switch(result)
    {
      case 0xA:
        return 772;
      case 0xB:
        return 65277;
      case 0x3E7:
        return 772;
    }

    return 0;
  }

  if (result == 7)
  {
    return 770;
  }

  if (result == 8)
  {
    return 771;
  }

  return 65279;
}

uint64_t _SSLSetProtocolVersionEnabled(uint64_t a1, int a2, int a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  v4 = *(a1 + 80);
  v5 = v4 > 6;
  v6 = (1 << v4) & 0x59;
  v7 = v5 || v6 == 0;
  if (v7 || *(a1 + 104))
  {
    return 4294966387;
  }

  if (a2 != 6)
  {
    if ((a2 - 1) > 8)
    {
      v9 = 0;
    }

    else
    {
      v9 = dword_1889605B8[a2 - 1];
    }

    v10 = v9 - 772;
    if (a3)
    {
      if (v10 >= 0xFFFFFFFC)
      {
        if (v9 <= *(a1 + 100))
        {
          v11 = *(a1 + 96);
        }

        else
        {
          *(a1 + 100) = v9;
          v11 = *(a1 + 96);
          if (!v11)
          {
            goto LABEL_28;
          }
        }

        if (v9 >= v11)
        {
          goto LABEL_40;
        }

LABEL_28:
        *(a1 + 96) = v9;
        goto LABEL_40;
      }

      return 4294967246;
    }

    if (v10 < 0xFFFFFCFE)
    {
      return 4294967246;
    }

    if (v9 > 768)
    {
      if (v9 != 769)
      {
        if (v9 == 770)
        {
          v12 = 771;
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      v12 = 770;
    }

    else
    {
      if (v9 != 2)
      {
        if (v9 == 768)
        {
          v12 = 769;
          goto LABEL_35;
        }

LABEL_32:
        v12 = 0;
        goto LABEL_35;
      }

      v12 = 768;
    }

LABEL_35:
    v13 = *(a1 + 100);
    if (*(a1 + 96) <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = *(a1 + 96);
    }

    *(a1 + 96) = v14;
    if (v14 <= v13)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (!a3)
  {
LABEL_39:
    *(a1 + 96) = 0;
    goto LABEL_40;
  }

  *(a1 + 96) = 0x30300000300;
LABEL_40:
  v15 = *(a1 + 56);
  tls_handshake_set_min_protocol_version();
  v16 = *(a1 + 56);
  v17 = *(a1 + 100);
  tls_handshake_set_max_protocol_version();
  return 0;
}

uint64_t _SSLGetProtocolVersionEnabled(uint64_t a1, unsigned int a2, BOOL *a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  if (!*(a1 + 104))
  {
    v3 = 4294967246;
    if (a2 > 8)
    {
      return v3;
    }

    if (((1 << a2) & 0x196) != 0)
    {
      v4 = dword_1889605B8[a2 - 1];
      if (*(a1 + 96) <= v4)
      {
        v5 = *(a1 + 100) >= v4;
        goto LABEL_10;
      }
    }

    else
    {
      if (a2 != 6)
      {
        return v3;
      }

      if (*(a1 + 96) <= 0x300u)
      {
        v5 = *(a1 + 100) > 0x302u;
        goto LABEL_10;
      }
    }

    v5 = 0;
LABEL_10:
    v3 = 0;
    *a3 = v5;
    return v3;
  }

  return 4294966387;
}

uint64_t _SSLSetProtocolVersion(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v3 = *(a1 + 80);
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x59;
  v6 = v4 || v5 == 0;
  if (v6 || *(a1 + 104))
  {
    return 4294966387;
  }

  if (a2 > 8 || ((0x1FDu >> a2) & 1) == 0)
  {
    return 4294967246;
  }

  v8 = dword_188960600[a2];
  *(a1 + 96) = dword_1889605DC[a2];
  *(a1 + 100) = v8;
  v9 = *(a1 + 56);
  tls_handshake_set_min_protocol_version();
  v10 = *(a1 + 56);
  v11 = *(a1 + 100);
  tls_handshake_set_max_protocol_version();
  return 0;
}

uint64_t _SSLGetProtocolVersion(uint64_t a1, int *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v3 = *(a1 + 100);
  result = 4294967246;
  if (v3 <= 769)
  {
    if (v3 == 768)
    {
      if (*(a1 + 96) != 768)
      {
        return result;
      }

      result = 0;
      v6 = 2;
    }

    else
    {
      if (v3 != 769)
      {
        return result;
      }

      v5 = *(a1 + 96);
      if (v5 == 768)
      {
        result = 0;
        v6 = 4;
      }

      else
      {
        if (v5 != 769)
        {
          return result;
        }

        v6 = 5;
      }
    }

    goto LABEL_18;
  }

  if (v3 == 770)
  {
    if (*(a1 + 96) != 768)
    {
      return result;
    }

    result = 0;
    v6 = 7;
    goto LABEL_18;
  }

  if (v3 == 771 && *(a1 + 96) == 768)
  {
    result = 0;
    v6 = 6;
LABEL_18:
    *a2 = v6;
  }

  return result;
}

OSStatus SSLGetNegotiatedProtocolVersion(SSLContextRef context, SSLProtocol *protocol)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 22);
  if (v2 <= 769)
  {
    if (v2 == 768)
    {
      v3 = kSSLProtocol3;
      goto LABEL_15;
    }

    if (v2 == 769)
    {
      v3 = kTLSProtocol1;
      goto LABEL_15;
    }

LABEL_14:
    v3 = kSSLProtocolUnknown;
    goto LABEL_15;
  }

  if (v2 == 770)
  {
    v3 = kTLSProtocol11;
    goto LABEL_15;
  }

  if (v2 == 771)
  {
    v3 = kTLSProtocol12;
    goto LABEL_15;
  }

  if (v2 != 65279)
  {
    goto LABEL_14;
  }

  v3 = kDTLSProtocol1;
LABEL_15:
  result = 0;
  *protocol = v3;
  return result;
}

uint64_t _SSLGetEnableCertVerify(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = *(a1 + 187);
  return result;
}

uint64_t _SSLSetAllowsAnyRoot(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *(a1 + 312) = a2;
  return result;
}

uint64_t _SSLGetAllowsAnyRoot(uint64_t a1, _BYTE *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = *(a1 + 312);
  return result;
}

uint64_t _SSLSetTrustedRoots(uint64_t a1, CFArrayRef theArray, int a3)
{
  v3 = *(a1 + 80);
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x59;
  if (v4 || v5 == 0)
  {
    return 4294966387;
  }

  if (a3)
  {
    *(a1 + 184) = 1;
    v9 = *(a1 + 176);
    if (v9)
    {
      *(a1 + 176) = 0;
      CFRelease(v9);
    }
  }

  if (*(a1 + 176))
  {
    v12.length = CFArrayGetCount(theArray);
    v12.location = 0;
    CFArrayAppendArray(*(a1 + 176), theArray, v12);
  }

  else
  {
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, theArray);
    *(a1 + 176) = MutableCopy;
    if (!MutableCopy)
    {
      return 4294967188;
    }
  }

  return 0;
}

uint64_t _SSLCopyTrustedRoots(uint64_t a1, void *a2)
{
  result = 4294967246;
  if (a1 && a2)
  {
    v4 = *(a1 + 176);
    if (v4)
    {
      *a2 = v4;
      CFRetain(*(a1 + 176));
      return 0;
    }

    else
    {
      result = 0;
      *a2 = 0;
    }
  }

  return result;
}

uint64_t SSLGetClientSideAuthenticate(uint64_t a1, _DWORD *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 252);
    }
  }

  return result;
}

OSStatus SSLGetClientCertificateState(SSLContextRef context, SSLClientCertificateState *clientState)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 64);
  if (*(context + 27) == 1)
  {
    if (v2 == kSSLClientCertNone)
    {
LABEL_16:
      result = 0;
      *clientState = v2;
      return result;
    }

    if (v2 == kSSLClientCertRequested)
    {
      v3 = 152;
      goto LABEL_13;
    }
  }

  else
  {
    if (v2)
    {
      v5 = v2 == kSSLClientCertRejected;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      goto LABEL_16;
    }

    if (v2 == kSSLClientCertRequested)
    {
      v3 = 168;
LABEL_13:
      if (*(context + v3))
      {
        v2 = kSSLClientCertSent;
      }

      else
      {
        v2 = kSSLClientCertRequested;
      }

      goto LABEL_16;
    }
  }

  return -9810;
}

OSStatus SSLSetEncryptionCertificate(SSLContextRef context, CFArrayRef certRefs)
{
  if (!context)
  {
    return -50;
  }

  v3 = *(context + 20);
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x59;
  if (v4 || v5 == 0)
  {
    return -909;
  }

  v8 = *(context + 20);
  if (v8)
  {
    *(context + 20) = 0;
    CFRelease(v8);
  }

  *(context + 20) = certRefs;
  CFRetain(certRefs);
  return 0;
}

uint64_t SSLGetCertificate(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = *(a1 + 152);
  return result;
}

uint64_t SSLGetEncryptionCertificate(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = *(a1 + 160);
  return result;
}

OSStatus SSLSetPeerID(SSLContextRef context, const void *peerID, size_t peerIDLen)
{
  result = -50;
  if (context && peerID && peerIDLen)
  {
    v7 = *(context + 20);
    v8 = v7 > 6;
    v9 = (1 << v7) & 0x59;
    v10 = v8 || v9 == 0;
    if (!v10 || *(context + 64) == 1)
    {
      v11 = *(context + 27);
      if (v11)
      {
        free(v11);
      }

      *(context + 26) = 0;
      *(context + 27) = 0;
      v12 = malloc_type_malloc(peerIDLen, 0x7BE92BBDuLL);
      if (v12)
      {
        v13 = peerIDLen;
      }

      else
      {
        v13 = 0;
      }

      *(context + 26) = v13;
      *(context + 27) = v12;
      if (v12)
      {
        v14 = *(context + 7);
        tls_handshake_set_resumption();
        memmove(*(context + 27), peerID, peerIDLen);
        return 0;
      }

      else
      {
        return -1;
      }
    }

    else
    {
      return -909;
    }
  }

  return result;
}

OSStatus SSLGetPeerID(SSLContextRef context, const void **peerID, size_t *peerIDLen)
{
  v3 = *(context + 26);
  *peerID = *(context + 27);
  *peerIDLen = v3;
  return 0;
}

OSStatus SSLGetNegotiatedCipher(SSLContextRef context, SSLCipherSuite *cipherSuite)
{
  if (!context)
  {
    return -50;
  }

  v3 = *(context + 20);
  if (v3 < 7 && ((0x59u >> v3) & 1) != 0)
  {
    return -909;
  }

  v5 = *(context + 7);
  negotiated_cipherspec = tls_handshake_get_negotiated_cipherspec();
  result = 0;
  *cipherSuite = negotiated_cipherspec;
  return result;
}

OSStatus SSLAddDistinguishedName(SSLContextRef context, const void *derDN, size_t derDNLen)
{
  if (!context)
  {
    return -50;
  }

  v4 = *(context + 20);
  v5 = v4 > 6;
  v6 = (1 << v4) & 0x59;
  if (v5 || v6 == 0)
  {
    return -909;
  }

  v10 = malloc_type_malloc(0x18uLL, 0x7BE92BBDuLL);
  if (!v10)
  {
    return -108;
  }

  v11 = v10;
  v12 = malloc_type_malloc(derDNLen, 0x7BE92BBDuLL);
  if (v12)
  {
    v13 = derDNLen;
  }

  else
  {
    v13 = 0;
  }

  v11[1] = v13;
  v11[2] = v12;
  if (v12)
  {
    memcpy(v12, derDN, derDNLen);
    *v11 = *(context + 33);
    *(context + 33) = v11;
    v14 = *(context + 7);
    tls_handshake_set_acceptable_dn_list();
    return 0;
  }

  else
  {
    free(v11);
    return -1;
  }
}

uint64_t _SSLSetCertificateAuthorities(uint64_t a1, CFTypeRef cf, int a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  v4 = *(a1 + 80);
  v5 = v4 > 6;
  v6 = (1 << v4) & 0x59;
  v7 = v5 || v6 == 0;
  if (v7 || *(a1 + 108))
  {
    return 4294967246;
  }

  if (a3)
  {
    sslFreeDnList(a1);
    v10 = *(a1 + 272);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 272) = 0;
    }
  }

  v11 = CFGetTypeID(cf);
  if (v11 != SecCertificateGetTypeID())
  {
    if (v11 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(cf);
      if (Count < 1)
      {
        return 0;
      }

      v13 = Count;
      v14 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v14);
        v16 = CFGetTypeID(ValueAtIndex);
        if (v16 != SecCertificateGetTypeID())
        {
          break;
        }

        result = sslAddCA(a1, ValueAtIndex);
        if (!result && v13 != ++v14)
        {
          continue;
        }

        return result;
      }
    }

    return 4294967246;
  }

  return sslAddCA(a1, cf);
}

uint64_t sslAddCA(SSLContext *a1, const void *a2)
{
  v4 = SecDERItemCopySequence(a2 + 184);
  if (!v4)
  {
    return 4294967246;
  }

  v5 = v4;
  Mutable = *(a1 + 34);
  if (Mutable || (Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]), (*(a1 + 34) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, a2);
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    v9 = SSLAddDistinguishedName(a1, BytePtr, Length);
  }

  else
  {
    v9 = 4294967246;
  }

  CFRelease(v5);
  return v9;
}

uint64_t _SSLCopyCertificateAuthorities(uint64_t a1, void *a2)
{
  result = 4294967246;
  if (a1 && a2)
  {
    v4 = *(a1 + 272);
    if (v4)
    {
      *a2 = v4;
      CFRetain(*(a1 + 272));
      return 0;
    }

    else
    {
      result = 0;
      *a2 = 0;
    }
  }

  return result;
}

OSStatus SSLCopyDistinguishedNames(SSLContextRef context, CFArrayRef *names)
{
  result = -50;
  if (context && names)
  {
    if (*(context + 27))
    {
      v5 = *(context + 7);
      peer_acceptable_dn_list = tls_handshake_get_peer_acceptable_dn_list();
      if (peer_acceptable_dn_list)
      {
        goto LABEL_5;
      }
    }

    else
    {
      peer_acceptable_dn_list = *(context + 33);
      if (peer_acceptable_dn_list)
      {
LABEL_5:
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        do
        {
          v8 = CFDataCreate(0, *(peer_acceptable_dn_list + 16), *(peer_acceptable_dn_list + 8));
          CFArrayAppendValue(Mutable, v8);
          CFRelease(v8);
          peer_acceptable_dn_list = *peer_acceptable_dn_list;
        }

        while (peer_acceptable_dn_list);
        goto LABEL_10;
      }
    }

    Mutable = 0;
LABEL_10:
    result = 0;
    *names = Mutable;
  }

  return result;
}

uint64_t _SSLSetDiffieHellmanParams(uint64_t a1, const void *a2, size_t size)
{
  if (!a1)
  {
    return 4294967246;
  }

  v4 = *(a1 + 80);
  v5 = v4 > 6;
  v6 = (1 << v4) & 0x59;
  if (v5 || v6 == 0)
  {
    return 4294966387;
  }

  v10 = *(a1 + 144);
  if (v10)
  {
    free(v10);
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  v11 = malloc_type_malloc(size, 0x7BE92BBDuLL);
  if (v11)
  {
    v12 = v11;
    memmove(v11, a2, size);
    *(a1 + 136) = size;
    *(a1 + 144) = v12;
    v13 = *(a1 + 56);

    return MEMORY[0x1EEE649F8](v13, a1 + 136);
  }

  else
  {
    *(a1 + 144) = 0;
    return 0xFFFFFFFFLL;
  }
}

uint64_t _SSLGetDiffieHellmanParams(uint64_t a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  v6 = a1 + 136;
  v5 = *(a1 + 136);
  *a2 = *(v6 + 8);
  *a3 = v5;
  return result;
}

uint64_t SSLSetDHEEnabled(uint64_t a1, char a2)
{
  *(a1 + 552) = a2;
  v3 = *(a1 + 56);
  tls_handshake_get_min_protocol_version();
  v4 = *(a1 + 56);
  tls_handshake_get_max_protocol_version();
  v5 = *(a1 + 56);
  tls_handshake_get_min_dh_group_size();
  v6 = *(a1 + 56);
  tls_handshake_set_config();
  v7 = *(a1 + 56);
  tls_handshake_set_min_protocol_version();
  v8 = *(a1 + 56);
  tls_handshake_set_max_protocol_version();
  v9 = *(a1 + 56);
  tls_handshake_set_min_dh_group_size();
  return 0;
}

uint64_t _SSLSetRsaBlinding(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  result = 0;
  *(a1 + 314) = a2;
  return result;
}