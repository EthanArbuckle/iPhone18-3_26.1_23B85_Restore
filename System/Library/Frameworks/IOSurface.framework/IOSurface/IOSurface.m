uint64_t _ioSurfaceConnectInternal(char a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ioSurfaceConnectInternal_block_invoke;
  v3[3] = &__block_descriptor_33_e5_v8__0l;
  v4 = a1;
  if (_ioSurfaceConnectInternal_once != -1)
  {
    dispatch_once(&_ioSurfaceConnectInternal_once, v3);
  }

  result = _iosConnect;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

size_t IOSurfaceGetHeightOfPlane(size_t buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceClientGetHeightOfPlane(*(buffer + 8), planeIndex);
  }

  return buffer;
}

uint64_t IOSurfaceClientGetHeightOfPlane(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 200) <= a2)
  {
    if (a2)
    {
      return 0;
    }

    v2 = a1 + 160;
  }

  else
  {
    v2 = a1 + 152 * a2 + 256;
  }

  return *v2;
}

size_t IOSurfaceGetBytesPerRowOfPlane(size_t buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceClientGetBytesPerRowOfPlane(*(buffer + 8), planeIndex);
  }

  return buffer;
}

uint64_t IOSurfaceClientGetBytesPerRowOfPlane(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 200) <= a2)
  {
    if (!a2)
    {
      v3 = a1 + 168;
      return *v3;
    }

    return 0;
  }

  v2 = a1 + 152 * a2;
  if (*(v2 + 356) == 1)
  {
    return 0;
  }

  v3 = v2 + 280;
  return *v3;
}

void *__cdecl IOSurfaceGetBaseAddressOfPlane(void *buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceClientGetBaseAddressOfPlane(*(buffer + 1), planeIndex);
  }

  return buffer;
}

uint64_t IOSurfaceClientGetBaseAddressOfPlane(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 200) <= a2)
  {
    if (!a2)
    {
      v3 = (a1 + 176);
      return *v3 + *(a1 + 112);
    }

    return 0;
  }

  v2 = a1 + 152 * a2;
  if (*(v2 + 356) == 1)
  {
    return 0;
  }

  v3 = (v2 + 272);
  return *v3 + *(a1 + 112);
}

Boolean IOSurfaceIsInUse(IOSurfaceRef buffer)
{
  if (buffer)
  {
    LOBYTE(buffer) = IOSurfaceClientIsInUse(*(buffer + 1));
  }

  return buffer;
}

uint64_t IOSurfaceClientSetPurgeable(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  outputCnt = 1;
  v4 = *(a1 + 136);
  output = 0;
  input[0] = v4;
  input[1] = a2;
  v5 = _ioSurfaceConnectInternal(0);
  result = IOConnectCallMethod(v5, 0x14u, input, 2u, 0, 0, &output, &outputCnt, 0, 0);
  if (a3)
  {
    *a3 = output;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

kern_return_t IOSurfaceSetPurgeable(IOSurfaceRef buffer, uint32_t newState, uint32_t *oldState)
{
  if (buffer)
  {
    return IOSurfaceClientSetPurgeable(*(buffer + 1), newState, oldState);
  }

  else
  {
    return -536870206;
  }
}

BOOL IOSurfaceClientIsInUse(uint64_t a1)
{
  if (*(a1 + 221))
  {
    snprintf(crashMessage, 0x100uLL, "IOSurfaceIsInUse: error: Attempt to query use count on an IOSurface (%p) created with kIOSurfaceProhibitUseCount.", a1);
    qword_1EB6CFC38 = crashMessage;
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v2)
    {
      IOSurfaceClientIncrementUseCountForCategory_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return *(*(a1 + 120) + 24) != 0;
}

const void *IOSurfaceClientCopyValue(uint64_t a1, void *key)
{
  v2 = key;
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (key)
  {
    if (_copySniffKeyFromStruct(key, *(a1 + 120) + 48, v8))
    {
      v2 = v8[0];
    }

    else
    {
      pthread_mutex_lock((a1 + 40));
      IOSurfaceClientUpdateNonBulkValueCache(a1);
      v4 = *(a1 + 16);
      if (v4)
      {
        Value = CFDictionaryGetValue(v4, v2);
        v2 = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        pthread_mutex_unlock((a1 + 40));
      }

      else
      {
        pthread_mutex_unlock((a1 + 40));
        v2 = 0;
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

void IOSurfaceClientUpdateNonBulkValueCache(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 120);
  v2 = *(v1 + 40);
  if (!v2 || *(a1 + 32) == *(v1 + 32))
  {
    goto LABEL_32;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
    v2 = *(v1 + 40);
  }

  v5 = (*MEMORY[0x1E69E9AC8] + v2 + 11) & -*MEMORY[0x1E69E9AC8];
  if (v5 <= 0x4000)
  {
    v6 = 0x4000;
  }

  else
  {
    v6 = v5;
  }

  v21[0] = v6;
  v7 = (MEMORY[0x1EEE9AC00])();
  memset(v19, 0, 13);
  while (1)
  {
    if (v6 > 0x4000)
    {
      v8 = malloc_type_valloc(v6, 0xC0D87126uLL);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v7);
      v8 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v8, v6);
    }

    v8[12] = 0;
    v19[0] = *(a1 + 136);
    v19[2] = *(a1 + 24) != 0;
    LOBYTE(v19[3]) = 0;
    v9 = _ioSurfaceConnectInternal(0);
    v7 = IOConnectCallMethod(v9, 0xAu, 0, 0, v19, 0xDuLL, 0, 0, v8, v21);
    if (v7 != -536870181)
    {
      break;
    }

    v10 = 16 * v21[0];
    v21[0] = v10;
    if (v10 > 0x1000000)
    {
      goto LABEL_30;
    }

    v11 = v6 > 0x4000;
    v6 = v10;
    if (v11)
    {
      free(v8);
      v6 = v21[0];
    }
  }

  if (!v7)
  {
    errorString = 0;
    if (v21[0])
    {
      v12 = IOCFUnserializeWithSize(v8 + 12, v21[0] - 12, 0, 0, &errorString);
      if (v12 || !errorString)
      {
        if (v12)
        {
          v14 = unserializeReplacementIOKitTypeRef(v12, *(a1 + 24));
          CFRelease(v12);
          goto LABEL_28;
        }
      }

      else
      {
        CStringPtr = CFStringGetCStringPtr(errorString, 0);
        if (CStringPtr)
        {
          fprintf(*MEMORY[0x1E69E9848], "%s\n", CStringPtr);
        }

        CFRelease(errorString);
      }
    }

    v14 = 0;
LABEL_28:
    *(a1 + 16) = v14;
    if (!*(a1 + 24))
    {
      Value = CFDictionaryGetValue(v14, @"CreationProperties");
      if (Value)
      {
        v17 = Value;
        v18 = CFGetTypeID(Value);
        if (v18 == CFDictionaryGetTypeID())
        {
          *(a1 + 24) = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], v17);
        }
      }
    }

    *(a1 + 32) = *(v8 + 1);
    goto LABEL_30;
  }

  fprintf(*MEMORY[0x1E69E9848], "IOSurfaceClientCopyValue getValueMethod kernel call failed %08x\n", v7);
LABEL_30:
  if (v6 > 0x4000)
  {
    free(v8);
  }

LABEL_32:
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t IOSurfaceClientGetSliceCount(uint64_t a1)
{
  v1 = *(a1 + 228);
  if (v1 <= 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t IOSurfaceGetSliceCount(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientGetSliceCount(*(result + 8));
  }

  return result;
}

uint64_t IOSurfaceGetWidthInCompressedTilesOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetWidthInCompressedTilesOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceClientGetWidthInCompressedTilesOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 344);
  }
}

uint64_t IOSurfaceBindAccel(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a1)
  {
    return IOSurfaceClientBindAccel(*(a1 + 8), a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOSurfaceClientBindAccel(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 120);
  if (!*(v3 + 8) || *(v3 + 8) == a2 && *(v3 + 10) == a3)
  {
    result = 0;
  }

  else
  {
    input[0] = *(a1 + 136);
    input[1] = a2;
    input[2] = a3;
    v5 = _ioSurfaceConnectInternal(0);
    result = IOConnectCallMethod(v5, 0xCu, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceGetHeightInCompressedTilesOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetHeightInCompressedTilesOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceGetBytesPerTileDataOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetBytesPerTileDataOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceClientGetHeightInCompressedTilesOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 348);
  }
}

uint64_t IOSurfaceClientGetBytesPerTileDataOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 368);
  }
}

char *IOSurfaceClientLookup(unsigned int a1)
{
  v44 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&_iosCacheMutex);
  v2 = iosCacheGet(a1);
  v3 = v2;
  if (v2)
  {
    ++*v2;
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    outputStruct = 0u;
    v13 = 0u;
    input = a1;
    v10 = 3176;
    v4 = _ioSurfaceConnectInternal(0);
    if (!IOConnectCallMethod(v4, 4u, &input, 1u, 0, 0, 0, 0, &outputStruct, &v10))
    {
      v5 = _ioSurfaceClientCreateWithLockResult(&outputStruct);
      v3 = v5;
      if (v5)
      {
        _ioSurfaceAddClientRef(v5);
      }

      else
      {
        v6 = DWORD2(v13);
        v7 = _ioSurfaceConnectInternal(0);
        IOConnectTrap1(v7, 5u, v6);
      }

      if (*MEMORY[0x1E69E99E8])
      {
        (*MEMORY[0x1E69E99E8])(1476395024, *MEMORY[0x1E69E9A60], v14, 0, outputStruct, 0);
      }
    }
  }

  pthread_mutex_unlock(&_iosCacheMutex);
  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t iosCacheGet(unsigned int a1)
{
  if (!_iosCacheDict)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [_iosCacheDict objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", a1)}];
  if (v3)
  {
    v4 = [v3 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t IOSurfaceClientGetIndexedTimestamp(uint64_t a1, unint64_t a2)
{
  if (a2 > 4)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 128) + 8 * a2);
  }
}

void IOSurfaceClientRelease(_DWORD *a1)
{
  if (a1)
  {
    pthread_mutex_lock(&_iosCacheMutex);
    if ((*a1)-- == 1)
    {
      if (_iosCacheDict)
      {
        v3 = a1[34];
        v4 = objc_autoreleasePoolPush();
        [_iosCacheDict removeObjectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", v3)}];
        objc_autoreleasePoolPop(v4);
      }

      v5 = a1[34];
      v6 = _ioSurfaceConnectInternal(0);
      if (IOConnectTrap1(v6, 4u, v5) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        IOSurfaceClientRelease_cold_1();
      }

      pthread_mutex_unlock(&_iosCacheMutex);

      *(a1 + 13) = 0;
      v7 = a1[34];
      v8 = _ioSurfaceConnectInternal(0);
      if (!IOConnectTrap1(v8, 5u, v7) && _iosClientAddressesSet)
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 14)];
        if (CFSetGetValue(_iosClientAddressesSet, v9))
        {
          CFSetRemoveValue(_iosClientAddressesSet, v9);
        }

        else if (*MEMORY[0x1E69E99E8] && !a1[56])
        {
          (*MEMORY[0x1E69E99E8])(32, *MEMORY[0x1E69E9A60], *(a1 + 14), *(a1 + 18), 0, 0);
        }
      }

      v10 = *(a1 + 2);
      if (v10)
      {
        CFRelease(v10);
      }

      v11 = *(a1 + 3);
      if (v11)
      {
        CFRelease(v11);
      }

      pthread_mutex_destroy((a1 + 10));
      free(a1);
    }

    else
    {

      pthread_mutex_unlock(&_iosCacheMutex);
    }
  }
}

uint64_t IOSurfaceGetIndexedTimestamp(uint64_t result, unint64_t a2)
{
  if (result)
  {
    return IOSurfaceClientGetIndexedTimestamp(*(result + 8), a2);
  }

  return result;
}

IOSurfaceRef IOSurfaceCreate(CFDictionaryRef properties)
{
  DictionaryAddingMissingProperties = _iosCreateDictionaryAddingMissingProperties(properties);
  v2 = [[IOSurface alloc] initWithProperties:DictionaryAddingMissingProperties];

  return v2;
}

id _iosCreateDictionaryAddingMissingProperties(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [a1 objectForKey:@"IOSurfaceName"];
  v3 = [a1 objectForKey:@"IOSurfaceDefaultAttachments"];
  v4 = [a1 objectForKey:@"IOSurfaceDefaultBulkAttachments"];
  v5 = objc_autoreleasePoolPush();
  if (!(v3 | v4))
  {
    goto LABEL_12;
  }

  v22 = 0u;
  *cf = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (v4)
  {
    [v4 getBytes:&v14 length:132];
  }

  if (v3)
  {
    CFDictionaryApplyFunction(v3, _sniffKeysToStruct, &v14);
    if (cf[1])
    {
      CFRelease(cf[1]);
    }
  }

  if (!*(&v22 + 1))
  {
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = v6;
  if (!v6)
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (v3)
  {
    [v6 addEntriesFromDictionary:{v3, v14, v15, v16, v17, v18, v19, v20, v21, v22}];
  }

  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v14 length:132];
  [v7 removeObjectForKey:@"IOSurfaceCleanAperture"];
  [v7 removeObjectForKey:@"IOSurfacePixelAspectRatio"];
  [v7 removeObjectForKey:@"IOSurfaceGammaLevel"];
  [v7 removeObjectForKey:@"IOSurfaceFieldCount"];
  [v7 removeObjectForKey:@"IOSurfaceFieldDetail"];
  [v7 removeObjectForKey:@"IOSurfaceYCbCrMatrix"];
  [v7 removeObjectForKey:@"IOSurfaceColorPrimaries"];
  [v7 removeObjectForKey:@"IOSurfaceTransferFunction"];
  [v7 removeObjectForKey:@"IOSurfaceChromaLocationTopField"];
  [v7 removeObjectForKey:@"IOSurfaceChromaLocationBottomField"];
  [v7 removeObjectForKey:@"IOSurfaceChromaSubsampling"];
  [v7 removeObjectForKey:@"IOSurfaceEDRFactor"];
LABEL_14:
  if (v2)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = a1;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v10 addEntriesFromDictionary:a1];
    if (!v2)
    {
      v11 = dyld_image_path_containing_address();
      if (v11)
      {
        [v10 setObject:objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AC08] forKey:{"defaultManager"), "stringWithFileSystemRepresentation:length:", v11, strlen(v11)), "lastPathComponent"), @"IOSurfaceName"}];
      }
    }

    if (v7)
    {
      [v10 setValue:v7 forKey:@"IOSurfaceDefaultAttachments"];
    }

    if (v8)
    {
      [v10 setValue:v8 forKey:@"IOSurfaceDefaultBulkAttachments"];
    }
  }

  objc_autoreleasePoolPop(v5);
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

void *__cdecl IOSurfaceGetBaseAddress(void *buffer)
{
  if (buffer)
  {
    return IOSurfaceClientGetBaseAddress(*(buffer + 1));
  }

  return buffer;
}

size_t IOSurfaceGetBytesPerRow(size_t buffer)
{
  if (buffer)
  {
    return IOSurfaceClientGetBytesPerRow(*(buffer + 8));
  }

  return buffer;
}

uint64_t IOSurfaceClientGetBaseAddress(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (!v1)
  {
    return *(a1 + 176) + *(a1 + 112);
  }

  v2 = 0;
  v3 = (a1 + 356);
  do
  {
    v4 = *v3;
    v3 += 152;
    v2 |= v4 == 1;
    --v1;
  }

  while (v1);
  if (v2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 176) + *(a1 + 112);
  }
}

uint64_t IOSurfaceClientGetBytesPerRow(uint64_t a1)
{
  v1 = *(a1 + 200);
  if (!v1)
  {
    return *(a1 + 168);
  }

  v2 = 0;
  v3 = (a1 + 356);
  do
  {
    v4 = *v3;
    v3 += 152;
    v2 |= v4 == 1;
    --v1;
  }

  while (v1);
  if (v2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 168);
  }
}

size_t IOSurfaceGetElementHeight(size_t buffer)
{
  if (buffer)
  {
    return IOSurfaceClientGetElementHeight(*(buffer + 8));
  }

  return buffer;
}

size_t IOSurfaceGetBytesPerElement(size_t buffer)
{
  if (buffer)
  {
    return IOSurfaceClientGetBytesPerElement(*(buffer + 8));
  }

  return buffer;
}

Boolean IOSurfaceAllowsPixelSizeCasting(IOSurfaceRef buffer)
{
  if (buffer)
  {
    LOBYTE(buffer) = IOSurfaceClientAllowsPixelSizeCasting(*(buffer + 1));
  }

  return buffer;
}

char *_ioSurfaceClientCreateWithLockResult(unsigned int *a1)
{
  v2 = a1[22];
  if (v2)
  {
    v3 = 152 * (20 - v2);
  }

  else
  {
    v3 = 2888;
  }

  v4 = malloc_type_malloc(3288 - v3, 0xDA369C84uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 1;
    *(v4 + 13) = 0;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    *(v4 + 1) = 0;
    *(v4 + 8) = 0;
    pthread_mutex_init((v4 + 40), 0);
    memcpy(v5 + 112, a1, 3176 - v3);
  }

  return v5;
}

char *IOSurfaceClientCreateChild(uint64_t a1, void *object)
{
  v69 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = *(a1 + 136);
  }

  else
  {
    v3 = 0;
  }

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
  v39 = 0u;
  v40 = 0u;
  outputStruct = 0u;
  v38 = 0u;
  v26 = 3176;
  input = v3;
  v4 = IOCFSerialize(object, 1uLL);
  if (v4)
  {
    v5 = v4;
    v6 = _ioSurfaceConnectInternal(0);
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    v9 = IOConnectCallMethod(v6, 0, &input, 1u, BytePtr, Length, 0, 0, &outputStruct, &v26);
    CFRelease(v5);
    if (!v9)
    {
      v10 = _ioSurfaceClientCreateWithLockResult(&outputStruct);
      if (v10)
      {
        Value = CFDictionaryGetValue(object, @"IOSurfacePrefetchPages");
        if (Value && CFEqual(Value, *MEMORY[0x1E695E4D0]))
        {
          IOSurfaceClientPrefetchPages(v10);
        }

        pthread_mutex_lock(&_iosCacheMutex);
        _ioSurfaceAddClientRef(v10);
        v12 = *MEMORY[0x1E69E99E8];
        if (*MEMORY[0x1E69E99E8])
        {
          if (!_iosClientAddressesSet)
          {
            _iosClientAddressesSet = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
          }

          v13 = CFDictionaryGetValue(object, @"IOSurfaceAddress");
          if (v13)
          {
            CFSetAddValue(_iosClientAddressesSet, v13);
          }

          else if (!v3)
          {
            v12(1476395024, *MEMORY[0x1E69E9A60], v39, 0, outputStruct, 0);
          }
        }

        pthread_mutex_unlock(&_iosCacheMutex);
      }

      else
      {
        v24 = DWORD2(v38);
        v25 = _ioSurfaceConnectInternal(0);
        IOConnectTrap1(v25, 5u, v24);
      }

      goto LABEL_35;
    }
  }

  else
  {
    v9 = -1;
  }

  if (_ioSurfaceConnectInternal(0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      IOSurfaceClientCreateChild_cold_1();
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = [object countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      v17 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(object);
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v19 = *(*(&v33 + 1) + 8 * i);
            LODWORD(input) = 67109634;
            HIDWORD(input) = v9;
            v28 = 1024;
            v29 = v3;
            v30 = 2112;
            v31 = v19;
            _os_log_error_impl(&dword_1B0173000, v17, OS_LOG_TYPE_ERROR, "IOSurface creation failed: %08x parentID: %08x property: %@", &input, 0x18u);
          }
        }

        v15 = [object countByEnumeratingWithState:&v33 objects:v32 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v20 = _iosService;
    v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v21)
      {
        IOSurfaceClientCreateChild_cold_2();
      }
    }

    else if (v21)
    {
      IOSurfaceClientCreateChild_cold_3();
    }
  }

  v10 = 0;
LABEL_35:
  v22 = *MEMORY[0x1E69E9840];
  return v10;
}

void _ioSurfaceAddClientRef(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (!_iosCacheDict)
  {
    _iosCacheDict = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (!_iosCacheDict)
    {
      _ioSurfaceAddClientRef_cold_1();
    }
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a1];
  [_iosCacheDict setObject:v4 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLong:", v2)}];

  objc_autoreleasePoolPop(v3);
}

void IOSurfaceClientSetValue(uint64_t a1, void *key, CFDictionaryRef theDict)
{
  v36 = *MEMORY[0x1E69E9840];
  outputStruct = 0;
  v32 = 4;
  if (theDict)
  {
    values = 0;
    v35 = 0;
    v30 = 0u;
    *theDicta = 0u;
    memset(context, 0, sizeof(context));
    if (key)
    {
      _sniffKeysToStruct(key, theDict, context);
    }

    else
    {
      CFDictionaryApplyFunction(theDict, _sniffKeysToStruct, context);
    }

    if (*(&v30 + 1))
    {
      IOSurfaceClientSetBulkAttachments(a1, context, 0x84uLL, SDWORD2(v30));
    }

    if (LOBYTE(theDicta[0]))
    {
      pthread_mutex_lock((a1 + 40));
      v6 = *(a1 + 16);
      if (key)
      {
        if (!v6 || (Value = CFDictionaryGetValue(v6, key)) == 0 || !CFEqual(Value, theDict) || *(a1 + 32) != *(*(a1 + 120) + 32))
        {
          v8 = serializeReplacementIOKitTypeRef(theDict);
          values = v8;
          v35 = key;
          v9 = 2;
LABEL_18:
          v10 = CFArrayCreate(0, &values, v9, MEMORY[0x1E695E9C0]);
          if (v10)
          {
            v11 = v10;
            CFRelease(v8);
            v12 = IOCFSerialize(v11, 1uLL);
            CFRelease(v11);
            if (v12)
            {
              Length = CFDataGetLength(v12);
              if (Length >= 0xFFFFFFFFFFFFFFF4)
              {
                abort();
              }

              v14 = Length;
              v15 = (Length + 12);
              v16 = malloc_type_malloc(v15, 0x8F879F62uLL);
              *v16 = *(a1 + 136);
              BytePtr = CFDataGetBytePtr(v12);
              memcpy(v16 + 3, BytePtr, v14);
              v18 = _ioSurfaceConnectInternal(0);
              IOConnectCallMethod(v18, 9u, 0, 0, v16, v15, 0, 0, &outputStruct, &v32);
              v19 = *(a1 + 32);
              if (v19)
              {
                v20 = (v19 | 1) + 2;
                if (outputStruct == v20)
                {
                  *(a1 + 32) = v20;
                  v21 = *(a1 + 16);
                  v22 = *MEMORY[0x1E695E480];
                  if (v21)
                  {
                    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v21);
                  }

                  else
                  {
                    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  }

                  v24 = MutableCopy;
                  if (key)
                  {
                    if (!CFEqual(@"CreationProperties", key))
                    {
                      CFDictionarySetValue(v24, key, theDict);
                    }
                  }

                  else
                  {
                    CFDictionaryApplyFunction(theDicta[1], setEachValueInDictionary, MutableCopy);
                  }

                  v25 = *(a1 + 16);
                  if (v25)
                  {
                    CFRelease(v25);
                  }

                  *(a1 + 16) = CFDictionaryCreateCopy(v22, v24);
                  CFRelease(v24);
                }
              }

              free(v16);
              CFRelease(v12);
            }
          }
        }
      }

      else if (!v6 || (v27 = *(a1 + 16), v28 = 1, CFDictionaryApplyFunction(theDict, compareKeys, &v27), v28 != 1) || *(a1 + 32) != *(*(a1 + 120) + 32))
      {
        v8 = serializeReplacementIOKitTypeRef(theDicta[1]);
        values = v8;
        v9 = 1;
        goto LABEL_18;
      }

      pthread_mutex_unlock((a1 + 40));
      if (theDicta[1])
      {
        CFRelease(theDicta[1]);
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void IOSurfaceSetValue(IOSurfaceRef buffer, CFStringRef key, CFTypeRef value)
{
  if (buffer)
  {
    if (key)
    {
      IOSurfaceClientSetValue(*(buffer + 1), key, value);
    }
  }
}

void _sniffKeysToStruct(void *key, const void *a2, uint64_t a3)
{
  if (_ensureKeySniffDictionaries_onceToken != -1)
  {
    _ensureKeySniffDictionaries_cold_1();
  }

  Value = CFDictionaryGetValue(_sniffKeysToStructDict, key);
  if (Value)
  {

    Value(a2, a3);
  }

  else
  {
    *(a3 + 144) = 1;
    if (a2)
    {
      Mutable = *(a3 + 152);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(a3 + 152) = Mutable;
      }

      CFDictionarySetValue(Mutable, key, a2);
    }
  }
}

CFNumberRef unserializeReplacementIOKitTypeRef(const void *a1, const void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(a1, @"iokit-float");
    if (Value)
    {
      v6 = Value;
      Length = CFDataGetLength(Value);
      v8 = CFGetTypeID(v6);
      if (v8 == CFDataGetTypeID())
      {
        if (Length == 8)
        {
          v30 = CFGetAllocator(a1);
          BytePtr = CFDataGetBytePtr(v6);
          v11 = v30;
          v12 = kCFNumberDoubleType;
          goto LABEL_20;
        }

        if (Length == 4)
        {
          v9 = CFGetAllocator(a1);
          BytePtr = CFDataGetBytePtr(v6);
          v11 = v9;
          v12 = kCFNumberFloatType;
LABEL_20:

          return CFNumberCreate(v11, v12, BytePtr);
        }
      }
    }

    v19 = CFGetAllocator(a1);
    Count = CFDictionaryGetCount(a1);
    Mutable = CFDictionaryCreateMutable(v19, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryApplyFunction(a1, unserializeReplacementDictionaryKeysAndValues, Mutable);
    if (a2)
    {
      CFDictionarySetValue(Mutable, @"CreationProperties", a2);
    }

    v22 = CFGetAllocator(a1);
    Copy = CFDictionaryCreateCopy(v22, Mutable);
    v24 = Mutable;
LABEL_15:
    CFRelease(v24);
    return Copy;
  }

  v13 = CFGetTypeID(a1);
  if (v13 == CFArrayGetTypeID())
  {
    v14 = CFGetAllocator(a1);
    v15 = CFArrayGetCount(a1);
    v16 = CFArrayCreateMutable(v14, v15, MEMORY[0x1E695E9C0]);
    v32.length = CFArrayGetCount(a1);
    v32.location = 0;
    CFArrayApplyFunction(a1, v32, unserializeReplacementArrayValues, v16);
    v17 = CFGetAllocator(a1);
    v18 = CFArrayCreateCopy(v17, v16);
LABEL_14:
    Copy = v18;
    v24 = v16;
    goto LABEL_15;
  }

  v25 = CFGetTypeID(a1);
  if (v25 == CFSetGetTypeID())
  {
    v26 = CFGetAllocator(a1);
    v27 = CFSetGetCount(a1);
    v16 = CFSetCreateMutable(v26, v27, MEMORY[0x1E695E9F8]);
    CFSetApplyFunction(a1, unserializeReplacementSetValues, v16);
    v28 = CFGetAllocator(a1);
    v18 = CFSetCreateCopy(v28, v16);
    goto LABEL_14;
  }

  return CFRetain(a1);
}

void unserializeReplacementDictionaryKeysAndValues(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  v5 = unserializeReplacementIOKitTypeRef(a2, 0);
  Value = CFDictionaryGetValue(_creationPropertiesDict, a1);
  if (Value)
  {
    v7 = Value;
  }

  else
  {
    v7 = a1;
  }

  CFDictionarySetValue(a3, v7, v5);

  CFRelease(v5);
}

CFMutableDictionaryRef serializeReplacementIOKitTypeRef(const void *a1)
{
  values[1] = *MEMORY[0x1E69E9840];
  v2 = CFGetTypeID(a1);
  if (v2 != CFNumberGetTypeID())
  {
    v6 = CFGetTypeID(a1);
    if (v6 == CFDictionaryGetTypeID())
    {
      v7 = CFGetAllocator(a1);
      Count = CFDictionaryGetCount(a1);
      Mutable = CFDictionaryCreateMutable(v7, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryApplyFunction(a1, serializeReplacementDictionaryKeysAndValues, Mutable);
    }

    else
    {
      v10 = CFGetTypeID(a1);
      if (v10 == CFArrayGetTypeID())
      {
        v11 = CFGetAllocator(a1);
        v12 = CFArrayGetCount(a1);
        Mutable = CFArrayCreateMutable(v11, v12, MEMORY[0x1E695E9C0]);
        v24.length = CFArrayGetCount(a1);
        v24.location = 0;
        CFArrayApplyFunction(a1, v24, serializeReplacementArrayValues, Mutable);
      }

      else
      {
        v14 = CFGetTypeID(a1);
        if (v14 != CFSetGetTypeID())
        {
          goto LABEL_18;
        }

        v15 = CFGetAllocator(a1);
        v16 = CFSetGetCount(a1);
        Mutable = CFSetCreateMutable(v15, v16, MEMORY[0x1E695E9F8]);
        CFSetApplyFunction(a1, serializeReplacementSetValues, Mutable);
      }
    }

LABEL_17:
    v17 = *MEMORY[0x1E69E9840];
    return Mutable;
  }

  if (CFNumberIsFloatType(a1))
  {
    Type = CFNumberGetType(a1);
    keys = @"iokit-float";
    values[0] = 0;
    if (Type > kCFNumberCGFloatType)
    {
      goto LABEL_13;
    }

    if (((1 << Type) & 0x12040) != 0)
    {
      v20 = 0;
      CFNumberGetValue(a1, kCFNumberDoubleType, &v20);
      v4 = CFGetAllocator(a1);
      v5 = 8;
    }

    else
    {
      if (((1 << Type) & 0x1020) == 0)
      {
        goto LABEL_13;
      }

      LODWORD(v20) = 0;
      CFNumberGetValue(a1, kCFNumberFloatType, &v20);
      v4 = CFGetAllocator(a1);
      v5 = 4;
    }

    values[0] = CFDataCreate(v4, &v20, v5);
LABEL_13:
    v13 = CFGetAllocator(a1);
    Mutable = CFDictionaryCreate(v13, &keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (values[0])
    {
      CFRelease(values[0]);
    }

    goto LABEL_17;
  }

LABEL_18:
  v19 = *MEMORY[0x1E69E9840];

  return CFRetain(a1);
}

uint64_t IOSurfaceGetCompressionTypeOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetCompressionTypeOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceIsTiled(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientIsTiled(*(result + 8));
  }

  return result;
}

IOSurfaceID IOSurfaceGetID(IOSurfaceRef buffer)
{
  if (buffer)
  {
    LODWORD(buffer) = IOSurfaceClientGetID(*(buffer + 1));
  }

  return buffer;
}

uint64_t IOSurfaceClientGetID(uint64_t result)
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

uint64_t IOSurfaceGetProtectionOptions(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientGetProtectionOptions(*(result + 8));
  }

  return result;
}

size_t IOSurfaceGetPlaneCount(size_t buffer)
{
  if (buffer)
  {
    return IOSurfaceClientGetPlaneCount(*(buffer + 8));
  }

  return buffer;
}

uint64_t IOSurfaceQueryTransactionList(uint64_t a1, unint64_t a2)
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      if (is_mul_ok(a2, 0x18uLL))
      {
        v2 = 24 * a2;
      }

      else
      {
        v2 = -1;
      }

      v3 = operator new[](v2, MEMORY[0x1E69E5398]);
      std::shared_ptr<IOSurfaceTransactionSerialized []>::shared_ptr[abi:ne200100]<IOSurfaceTransactionSerialized,std::default_delete<IOSurfaceTransactionSerialized []>,0>(v6, v3);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    IOSurfaceQueryTransactionList_cold_3();
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1B0176414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B01764B0(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    MEMORY[0x1B271FDD0](v1, 0x1000C800CE834B2);
  }

  __cxa_rethrow();
}

uint64_t IOSurfaceClientQueryTransactionList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t *a6, void *a7, void *a8)
{
  input[5] = *MEMORY[0x1E69E9840];
  input[0] = *(a1 + 136);
  input[1] = a2;
  input[2] = a3;
  input[3] = a4;
  input[4] = a5;
  output = 0;
  v17 = 0;
  v18 = 0;
  outputCnt = 3;
  v11 = _ioSurfaceConnectInternal(0);
  result = IOConnectCallMethod(v11, 0x3Au, input, 5u, 0, 0, &output, &outputCnt, 0, 0);
  if (!result)
  {
    v13 = v17;
    *a6 = output;
    *a7 = v13;
    *a8 = v18;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t IOSurfaceClientLock(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v6 = _ioSurfaceConnectInternal(0);
  result = IOConnectTrap3(v6, 2u, *(a1 + 136), a2, &v10);
  if (!result)
  {
    v8 = v10;
    *(a1 + 216) = v10;
    if (a3)
    {
      *a3 = v8;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

kern_return_t IOSurfaceLock(IOSurfaceRef buffer, IOSurfaceLockOptions options, uint32_t *seed)
{
  if (buffer)
  {
    return IOSurfaceClientLock(*(buffer + 1), options, seed);
  }

  else
  {
    return -536870206;
  }
}

kern_return_t IOSurfaceUnlock(IOSurfaceRef buffer, IOSurfaceLockOptions options, uint32_t *seed)
{
  if (buffer)
  {
    return IOSurfaceClientUnlock(*(buffer + 1), options, seed);
  }

  else
  {
    return -536870206;
  }
}

uint64_t IOSurfaceClientUnlock(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v6 = _ioSurfaceConnectInternal(0);
  result = IOConnectTrap3(v6, 3u, *(a1 + 136), a2, &v10);
  if (!result)
  {
    v8 = v10;
    *(a1 + 216) = v10;
    if (a3)
    {
      *a3 = v8;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

CFNumberRef createColorSpaceIDFromStruct(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  valuePtr = *(a1 + 101);
  if (valuePtr)
  {
    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    result = 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetBaseAddressOfCompressedTileHeaderRegionOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceClientGetBaseAddressOfCompressedTileHeaderRegionOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2 || *(a1 + 228) > 1u)
  {
    return 0;
  }

  else
  {
    return *(a1 + 112) + *(a1 + 152 * a2 + 332);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<IOSurfaceTransactionSerialized  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x1B271FDD0);
  }

  return result;
}

uint64_t IOSurfaceGetCompressedTileWidthOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetCompressedTileWidthOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceGetAddressFormatOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetAddressFormatOfPlane(*(result + 8), a2);
  }

  return result;
}

CFTypeRef IOSurfaceCopyValue(CFTypeRef buffer, CFStringRef key)
{
  if (buffer)
  {
    return IOSurfaceClientCopyValue(*(buffer + 1), key);
  }

  return buffer;
}

uint64_t IOSurfaceClientGetCompressionTypeOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 356);
  }
}

uint64_t IOSurfaceGetCompressionFootprintOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetCompressionFootprintOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t _copySniffKeyFromStruct(void *key, uint64_t a2, void *a3)
{
  if (_ensureKeySniffDictionaries_onceToken != -1)
  {
    _ensureKeySniffDictionaries_cold_1();
  }

  result = CFDictionaryGetValue(_sniffStructToKeysDict, key);
  if (result)
  {
    *a3 = (result)(a2);
    return 1;
  }

  return result;
}

uint64_t IOSurfaceClientGetCompressionFootprintOfPlane(uint64_t a1, unint64_t a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 364);
  }
}

void unserializeReplacementArrayValues(uint64_t a1, __CFArray *a2)
{
  v3 = unserializeReplacementIOKitTypeRef(a1, 0);
  CFArrayAppendValue(a2, v3);

  CFRelease(v3);
}

size_t IOSurfaceGetAllocSize(size_t buffer)
{
  if (buffer)
  {
    return IOSurfaceClientGetAllocSize(*(buffer + 8));
  }

  return buffer;
}

uint64_t IOSurfaceClientGetAddressFormatOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 301);
  }
}

uint64_t IOSurfaceClientGetCompressedTileWidthOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 324);
  }
}

uint64_t IOSurfaceGetCompressedTileHeightOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetCompressedTileHeightOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceClientGetCompressedTileHeightOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 328);
  }
}

size_t IOSurfaceGetHeight(size_t buffer)
{
  if (buffer)
  {
    return IOSurfaceClientGetHeight(*(buffer + 8));
  }

  return buffer;
}

size_t IOSurfaceGetWidthOfPlane(size_t buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceClientGetWidthOfPlane(*(buffer + 8), planeIndex);
  }

  return buffer;
}

uint64_t IOSurfaceClientSetBulkAttachments(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3 <= 0x84)
  {
    result = getDirtyMask(*(a1 + 120) + 48, a2, a4);
    if (result)
    {
      v7 = result;
      v11 = 0u;
      v12 = 0u;
      memset(inputStruct, 0, sizeof(inputStruct));
      DWORD2(v12) = *(a1 + 136);
      __memcpy_chk();
      *(&v11 + 1) = a3;
      *&v12 = v7;
      v8 = _ioSurfaceConnectInternal(0);
      result = IOConnectCallMethod(v8, 0x1Bu, 0, 0, inputStruct, 0xA0uLL, 0, 0, 0, 0);
    }
  }

  else
  {
    result = 3758097084;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceSetBulkAttachments2(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  if (a1)
  {
    return IOSurfaceClientSetBulkAttachments(*(a1 + 8), a2, a3, a4);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t getDirtyMask(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v3 = *a2 != *a1 || *(a2 + 8) != *(a1 + 8) || *(a2 + 16) != *(a1 + 16) || *(a2 + 24) != *(a1 + 24);
    if ((a3 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((a3 & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  if (*(a2 + 32) != *(a1 + 32))
  {
    v3 |= 2uLL;
  }

LABEL_19:
  if ((a3 & 4) != 0)
  {
    if (*(a2 + 48) != *(a1 + 48))
    {
      v3 |= 4uLL;
    }

    if ((a3 & 8) == 0)
    {
LABEL_21:
      if ((a3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_47;
    }
  }

  else if ((a3 & 8) == 0)
  {
    goto LABEL_21;
  }

  if (*(a2 + 56) != *(a1 + 56))
  {
    v3 |= 8uLL;
  }

  if ((a3 & 0x10) == 0)
  {
LABEL_22:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_47:
  if (*(a2 + 57) != *(a1 + 57))
  {
    v3 |= 0x10uLL;
  }

  if ((a3 & 0x20) == 0)
  {
LABEL_23:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_50:
  if (*(a2 + 58) != *(a1 + 58))
  {
    v3 |= 0x20uLL;
  }

  if ((a3 & 0x40) == 0)
  {
LABEL_24:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_53:
  if (*(a2 + 59) != *(a1 + 59))
  {
    v3 |= 0x40uLL;
  }

  if ((a3 & 0x80) == 0)
  {
LABEL_25:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_56:
  if (*(a2 + 60) != *(a1 + 60))
  {
    v3 |= 0x80uLL;
  }

  if ((a3 & 0x100) == 0)
  {
LABEL_26:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_59:
  if (*(a2 + 61) != *(a1 + 61))
  {
    v3 |= 0x100uLL;
  }

  if ((a3 & 0x200) == 0)
  {
LABEL_27:
    if ((a3 & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

LABEL_62:
  if (*(a2 + 62) != *(a1 + 62))
  {
    v3 |= 0x200uLL;
  }

  if ((a3 & 0x400) == 0)
  {
LABEL_28:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_68;
  }

LABEL_65:
  if (*(a2 + 63) != *(a1 + 63))
  {
    v3 |= 0x400uLL;
  }

  if ((a3 & 0x800) == 0)
  {
LABEL_29:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_68:
  if (*(a2 + 64) ^ *(a1 + 64) | *(a2 + 72) ^ *(a1 + 72) | *(a2 + 80) ^ *(a1 + 80))
  {
    v3 |= 0x800uLL;
  }

  if ((a3 & 0x1000) == 0)
  {
LABEL_30:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_71:
  if (*(a2 + 88) != *(a1 + 88))
  {
    v3 |= 0x1000uLL;
  }

  if ((a3 & 0x2000) == 0)
  {
LABEL_31:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_77;
  }

LABEL_74:
  if (*(a2 + 92) != *(a1 + 92))
  {
    v3 |= 0x2000uLL;
  }

  if ((a3 & 0x4000) == 0)
  {
LABEL_32:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_80;
  }

LABEL_77:
  if (*(a2 + 100) != *(a1 + 100))
  {
    v3 |= 0x4000uLL;
  }

  if ((a3 & 0x8000) == 0)
  {
LABEL_33:
    if ((a3 & 0x10000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_83;
  }

LABEL_80:
  if (*(a2 + 104) != *(a1 + 104))
  {
    v3 |= 0x8000uLL;
  }

  if ((a3 & 0x10000) == 0)
  {
LABEL_34:
    if ((a3 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_86;
  }

LABEL_83:
  if (*(a2 + 112) != *(a1 + 112))
  {
    v3 |= 0x10000uLL;
  }

  if ((a3 & 0x20000) == 0)
  {
LABEL_35:
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_89;
  }

LABEL_86:
  if (*(a2 + 101) != *(a1 + 101))
  {
    v3 |= 0x20000uLL;
  }

  if ((a3 & 0x40000) == 0)
  {
LABEL_36:
    if ((a3 & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_92;
  }

LABEL_89:
  if (*(a2 + 102) != *(a1 + 102))
  {
    v3 |= 0x40000uLL;
  }

  if ((a3 & 0x80000) == 0)
  {
LABEL_37:
    if ((a3 & 0x100000) == 0)
    {
      return v3;
    }

    goto LABEL_38;
  }

LABEL_92:
  if (*(a2 + 116) ^ *(a1 + 116) | (*(a2 + 124) ^ *(a1 + 124)))
  {
    v3 |= 0x80000uLL;
  }

  if ((a3 & 0x100000) != 0)
  {
LABEL_38:
    if (*(a2 + 128) != *(a1 + 128))
    {
      return v3 | 0x100000;
    }
  }

  return v3;
}

size_t IOSurfaceGetWidth(size_t buffer)
{
  if (buffer)
  {
    return IOSurfaceClientGetWidth(*(buffer + 8));
  }

  return buffer;
}

uint64_t IOSurfaceGetBulkAttachments(uint64_t a1, void *a2, size_t *a3)
{
  if (a1)
  {
    return IOSurfaceClientGetBulkAttachments(*(a1 + 8), a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

OSType IOSurfaceGetPixelFormat(IOSurfaceRef buffer)
{
  if (buffer)
  {
    LODWORD(buffer) = IOSurfaceClientGetPixelFormat(*(buffer + 1));
  }

  return buffer;
}

uint64_t IOSurfaceClientGetBulkAttachments(uint64_t a1, void *__dst, size_t *a3)
{
  v3 = 3758097090;
  if (__dst)
  {
    if (a3)
    {
      v4 = *a3;
      v3 = 3758097084;
      if (v4 <= 0x84)
      {
        memcpy(__dst, (*(a1 + 120) + 48), v4);
        return 0;
      }
    }
  }

  return v3;
}

uint64_t IOSurfaceClientGetWidthOfPlane(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 200) <= a2)
  {
    if (a2)
    {
      return 0;
    }

    v2 = a1 + 152;
  }

  else
  {
    v2 = a1 + 152 * a2 + 248;
  }

  return *v2;
}

uint64_t IOSurfaceClientIncrementUseCountForCategory(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2 >= 2)
  {
    result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"category out of range"];
  }

  if (*(v3 + 221))
  {
    snprintf(crashMessage, 0x100uLL, "IOSurfaceIncrementUseCountForCategory: error: Attempt to change use count on an IOSurface (%p) created with kIOSurfaceProhibitUseCount.", v3);
    qword_1EB6CFC38 = crashMessage;
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v11)
    {
      IOSurfaceClientIncrementUseCountForCategory_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    abort();
  }

  do
  {
    v4 = *(v3 + 8);
    v5 = HIDWORD(v4) == 0;
    v6 = (v4 & 0xFFFFFFFF00000000) + 0x100000000;
    if (v4 >= 0xFFFFFFFF00000000)
    {
      v6 = 0xFFFFFFFF00000000;
    }

    v7 = (v4 + 1);
    if (v4 == -1)
    {
      v7 = 0xFFFFFFFFLL;
    }

    if (a2)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = 0xFFFFFFFF00000000;
    }

    if (!a2)
    {
      v6 = v7;
      v5 = v4 == 0;
    }

    v9 = *(v3 + 8);
    atomic_compare_exchange_strong_explicit((v3 + 8), &v9, v6 | v8 & v4, memory_order_relaxed, memory_order_relaxed);
  }

  while (v9 != v4);
  if (v5)
  {
    v10 = _ioSurfaceConnectInternal(0);
    result = IOConnectTrap2(v10, 0, *(v3 + 136), a2);
    if (result)
    {
      return fprintf(*MEMORY[0x1E69E9848], "kIOSurfaceMethodIncrementUseCountForCategory failed: %08x\n", result);
    }
  }

  return result;
}

void IOSurfaceIncrementUseCount(IOSurfaceRef buffer)
{
  if (buffer)
  {
    IOSurfaceClientIncrementUseCount(*(buffer + 1));
  }
}

uint64_t IOSurfaceHasDataProperty(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientHasDataProperty(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceClientHasDataProperty(uint64_t a1, unsigned int a2)
{
  if (a2 <= 4)
  {
    return (*(*(a1 + 120) + 47) >> a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t IOSurfaceClientCreateMachPortWithOptions(uint64_t a1, uint64_t a2)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = *(a1 + 136);
  input[1] = a2;
  output = 0;
  outputCnt = 1;
  v2 = _ioSurfaceConnectInternal(0);
  if (IOConnectCallMethod(v2, 0x23u, input, 2u, 0, 0, &output, &outputCnt, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = output;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

mach_port_t IOSurfaceCreateMachPort(IOSurfaceRef buffer)
{
  if (buffer)
  {
    LODWORD(buffer) = IOSurfaceClientCreateMachPort(*(buffer + 1));
  }

  return buffer;
}

void IOSurfaceDecrementUseCount(IOSurfaceRef buffer)
{
  if (buffer)
  {
    IOSurfaceClientDecrementUseCount(*(buffer + 1));
  }
}

uint64_t IOSurfaceClientDecrementUseCountForCategory(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2 >= 2)
  {
    result = [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"category out of range"];
  }

  if (*(v3 + 221))
  {
    snprintf(crashMessage, 0x100uLL, "IOSurfaceDecrementUseCountForCategory: error: Attempt to change use count on an IOSurface (%p) created with kIOSurfaceProhibitUseCount.", v3);
    qword_1EB6CFC38 = crashMessage;
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v13)
    {
      IOSurfaceClientIncrementUseCountForCategory_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    abort();
  }

  do
  {
    v4 = *(v3 + 8);
    if (HIDWORD(v4))
    {
      v5 = (v4 & 0xFFFFFFFF00000000) - 0x100000000;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5 & 0xFFFFFFFF00000000 | *(v3 + 8);
    v7 = v4 - 1;
    if (!v4)
    {
      v7 = 0;
    }

    v8 = v4 & 0xFFFFFFFF00000000 | v7;
    if (a2)
    {
      v9 = (v4 & 0xFFFFFFFF00000000) == 0x100000000;
    }

    else
    {
      v9 = v4 == 1;
    }

    if (a2)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    v11 = *(v3 + 8);
    atomic_compare_exchange_strong_explicit((v3 + 8), &v11, v10, memory_order_relaxed, memory_order_relaxed);
  }

  while (v11 != v4);
  if (v9)
  {
    v12 = _ioSurfaceConnectInternal(0);
    result = IOConnectTrap2(v12, 1u, *(v3 + 136), a2);
    if (result)
    {
      return fprintf(*MEMORY[0x1E69E9848], "kIOSurfaceMethodDecrementUseCountForCategory failed: %08x\n", result);
    }
  }

  return result;
}

char *IOSurfaceClientLookupFromMachPort(unsigned int a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  outputStruct = 0u;
  v13 = 0u;
  _ioSurfaceConnectInternal(0);
  pthread_mutex_lock(&_iosCacheMutex);
  v10 = 3176;
  input = a1;
  v2 = _ioSurfaceConnectInternal(0);
  if (IOConnectCallMethod(v2, 0x22u, &input, 1u, 0, 0, 0, 0, &outputStruct, &v10))
  {
    v3 = 0;
  }

  else if (outputStruct == -1)
  {
    v7 = iosCacheGet(DWORD2(v13));
    v3 = v7;
    if (v7)
    {
      ++*v7;
    }
  }

  else
  {
    v6 = _ioSurfaceClientCreateWithLockResult(&outputStruct);
    v3 = v6;
    if (v6)
    {
      _ioSurfaceAddClientRef(v6);
    }

    else
    {
      v8 = DWORD2(v13);
      v9 = _ioSurfaceConnectInternal(0);
      IOConnectTrap1(v9, 5u, v8);
    }

    if (*MEMORY[0x1E69E99E8])
    {
      (*MEMORY[0x1E69E99E8])(1476395024, *MEMORY[0x1E69E9A60], v14, 0, outputStruct, 0);
    }
  }

  pthread_mutex_unlock(&_iosCacheMutex);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t IOSurfaceGetGraphicsCommPageAddress()
{
  v5 = *MEMORY[0x1E69E9840];
  output = 0;
  outputCnt = 1;
  v0 = _ioSurfaceConnectInternal(0);
  if (IOConnectCallMethod(v0, 0x20u, 0, 0, 0, 0, &output, &outputCnt, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = output;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ioSurfaceConnectInternal_block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0173000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "IOSurface.framework API explicitly disallowed.", buf, 2u);
    }
  }

  else
  {
    _creationPropertiesDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceClass", @"IOSurfaceClass");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceIsGlobal", @"IOSurfaceIsGlobal");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceBytesPerRow", @"IOSurfaceBytesPerRow");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceBytesPerElement", @"IOSurfaceBytesPerElement");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceElementWidth", @"IOSurfaceElementWidth");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceElementHeight", @"IOSurfaceElementHeight");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceWidth", @"IOSurfaceWidth");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceHeight", @"IOSurfaceHeight");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceOffset", @"IOSurfaceOffset");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePixelFormat", @"IOSurfacePixelFormat");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceMemoryRegion", @"IOSurfaceMemoryRegion");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceAllocSize", @"IOSurfaceAllocSize");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneInfo", @"IOSurfacePlaneInfo");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneBase", @"IOSurfacePlaneBase");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneOffset", @"IOSurfacePlaneOffset");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneWidth", @"IOSurfacePlaneWidth");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneHeight", @"IOSurfacePlaneHeight");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneBytesPerRow", @"IOSurfacePlaneBytesPerRow");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneBitsPerElement", @"IOSurfacePlaneBitsPerElement");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneBytesPerElement", @"IOSurfacePlaneBytesPerElement");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneElementWidth", @"IOSurfacePlaneElementWidth");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneElementHeight", @"IOSurfacePlaneElementHeight");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneSize", @"IOSurfacePlaneSize");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceAddress", @"IOSurfaceAddress");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceAddressRanges", @"IOSurfaceAddressRanges");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceAddressOffset", @"IOSurfaceAddressOffset");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceDirection", @"IOSurfaceDirection");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceType", @"IOSurfaceType");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceCacheMode", @"IOSurfaceCacheMode");
    CFDictionarySetValue(_creationPropertiesDict, @"IOFenceAllowTearing", @"IOFenceAllowTearing");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePrefetchPages", @"IOSurfacePrefetchPages");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePurgeWhenNotInUse", @"IOSurfacePurgeWhenNotInUse");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceResetDefaultAttachmentsWhenNotInUse", @"IOSurfaceResetDefaultAttachmentsWhenNotInUse");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceDefaultAttachments", @"IOSurfaceDefaultAttachments");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceDefaultBulkAttachments", @"IOSurfaceDefaultBulkAttachments");
    CFDictionarySetValue(_creationPropertiesDict, @"CreationProperties", @"CreationProperties");
    CFDictionarySetValue(_creationPropertiesDict, @"IsDisplayable", @"IsDisplayable");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceNonPurgeable", @"IOSurfaceNonPurgeable");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceEDRFactor", @"IOSurfaceEDRFactor");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePixelSizeCastingAllowed", @"IOSurfacePixelSizeCastingAllowed");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePixelSizeCastingAllowed", @"IOSurfacePixelSizeCastingAllowed");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceUseReserve", @"IOSurfaceUseReserve");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneComponentBitDepths", @"IOSurfacePlaneComponentBitDepths");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneComponentBitOffsets", @"IOSurfacePlaneComponentBitOffsets");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneComponentNames", @"IOSurfacePlaneComponentNames");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneComponentTypes", @"IOSurfacePlaneComponentTypes");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneComponentRanges", @"IOSurfacePlaneComponentRanges");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceSubsampling", @"IOSurfaceSubsampling");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceAllocateFromSuperbuffer", @"IOSurfaceAllocateFromSuperbuffer");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceSuperbuffer", @"IOSurfaceSuperbuffer");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceMemoryPoolSize", @"IOSurfaceMemoryPoolSize");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceMemoryPoolZerofillEnabled", @"IOSurfaceMemoryPoolZerofillEnabled");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceMemoryPoolCacheModeSwitchEnabled", @"IOSurfaceMemoryPoolCacheModeSwitchEnabled");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneCompressedTileWidth", @"IOSurfacePlaneCompressedTileWidth");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneCompressedTileHeight", @"IOSurfacePlaneCompressedTileHeight");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneCompressedTileHeaderRegionOffset", @"IOSurfacePlaneCompressedTileHeaderRegionOffset");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneCompressedTileDataRegionOffset", @"IOSurfacePlaneCompressedTileDataRegionOffset");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneCompressionType", @"IOSurfacePlaneCompressionType");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneCompressionFootprint", @"IOSurfacePlaneCompressionFootprint");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneBytesPerCompressedTileHeader", @"IOSurfacePlaneBytesPerCompressedTileHeader");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneWidthInCompressedTiles", @"IOSurfacePlaneWidthInCompressedTiles");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneHeightInCompressedTiles", @"IOSurfacePlaneHeightInCompressedTiles");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneBytesPerRowOfCompressedTileHeaderGroups", @"IOSurfacePlaneBytesPerRowOfCompressedTileHeaderGroups");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneHTPCPredictionSelector", @"IOSurfacePlaneHTPCPredictionSelector");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneHTPCVerticalHeaderGroupingMode", @"IOSurfacePlaneHTPCVerticalHeaderGroupingMode");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneHorizontalPixelOffsetWithinCompressedTileArray", @"IOSurfacePlaneHorizontalPixelOffsetWithinCompressedTileArray");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneVerticalPixelOffsetWithinCompressedTileArray", @"IOSurfacePlaneVerticalPixelOffsetWithinCompressedTileArray");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceAddressFormat", @"IOSurfaceAddressFormat");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneBytesPerTileData", @"IOSurfacePlaneBytesPerTileData");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneBytesPerRowOfTileData", @"IOSurfacePlaneBytesPerRowOfTileData");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceSliceCount", @"IOSurfaceSliceCount");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneDataRegionBytesPerSlice", @"IOSurfacePlaneDataRegionBytesPerSlice");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneHeaderRegionBytesPerSlice", @"IOSurfacePlaneHeaderRegionBytesPerSlice");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneExtendedPixelsOnLeft", @"IOSurfacePlaneExtendedPixelsOnLeft");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneExtendedPixelsOnRight", @"IOSurfacePlaneExtendedPixelsOnRight");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneExtendedPixelsOnTop", @"IOSurfacePlaneExtendedPixelsOnTop");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfacePlaneExtendedPixelsOnBottom", @"IOSurfacePlaneExtendedPixelsOnBottom");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceProhibitUseCount", @"IOSurfaceProhibitUseCount");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceMemoryPoolInfo", @"IOSurfaceMemoryPoolInfo");
    CFDictionarySetValue(_creationPropertiesDict, @"IOSurfaceEnableStatistics", @"IOSurfaceEnableStatistics");
    CFDictionarySetValue(_creationPropertiesDict, @"DolbyVisionRPUData", @"DolbyVisionRPUData");
    v1 = *MEMORY[0x1E696CD60];
    v2 = -241;
    while (1)
    {
      existing = 0;
      v3 = IOServiceNameMatching("IOCoreSurfaceRoot");
      MatchingServices = IOServiceGetMatchingServices(v1, v3, &existing);
      _iosServiceReturn = MatchingServices;
      if (MatchingServices)
      {
        break;
      }

      v5 = IOIteratorNext(existing);
      _iosService = v5;
      if (v5)
      {
        v8 = IOServiceOpen(v5, *MEMORY[0x1E69E9A60], 0, &_iosConnect);
        _iosConnectReturn = v8;
        if (v8)
        {
          if (v8 != -536870174)
          {
            if (v8 == -536870201)
            {
              v9 = objc_autoreleasePoolPush();
              v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
              iterator = 0;
              v11 = 0;
              if (!MEMORY[0x1B271FC80](_iosService, "IOService", 0, &iterator))
              {
                v31 = v9;
                v12 = IOIteratorNext(iterator);
                if (v12)
                {
                  v13 = v12;
                  v11 = 0;
                  v14 = @"IOUserClientCreator";
                  do
                  {
                    v15 = objc_autoreleasePoolPush();
                    CFProperty = IORegistryEntryCreateCFProperty(v13, v14, 0, 0);
                    if (CFProperty)
                    {
                      v17 = CFProperty;
                      v18 = [CFProperty rangeOfString:{@", "}];
                      if (v19)
                      {
                        v20 = [v17 substringFromIndex:v18 + 2];
                        v21 = [v10 objectForKeyedSubscript:v20];
                        if (v21)
                        {
                          v22 = v10;
                          v23 = v14;
                          v24 = MEMORY[0x1E696AD98];
                          v25 = [v21 intValue] + 1;
                          v26 = v24;
                          v14 = v23;
                          v10 = v22;
                          v27 = [v26 numberWithInt:v25];
                          v28 = v22;
                        }

                        else
                        {
                          v28 = v10;
                          v27 = &unk_1F25E27D8;
                        }

                        [v28 setObject:v27 forKeyedSubscript:v20];
                      }
                    }

                    objc_autoreleasePoolPop(v15);
                    ++v11;
                    IOObjectRelease(v13);
                    v13 = IOIteratorNext(iterator);
                  }

                  while (v13);
                }

                else
                {
                  v11 = 0;
                }

                IOObjectRelease(iterator);
                v9 = v31;
              }

              v29 = [objc_msgSend(v10 "description")];
              *buf = 0;
              asprintf(buf, "_iosConnectInitalize() unable to open IOSurface kernel service: %08x\n%d existing clients:\n%s\n", -536870201, v11, v29);
              if (*buf)
              {
                ___ioSurfaceConnectInternal_block_invoke_cold_1(*buf);
              }

              objc_autoreleasePoolPop(v9);
            }

            else
            {
              *buf = 0;
              asprintf(buf, "_iosConnectInitalize() unable to open IOSurface kernel service: %08x", v8);
              if (*buf)
              {
                ___ioSurfaceConnectInternal_block_invoke_cold_2(*buf);
              }
            }
          }
        }

        else
        {
          *buf = 40;
          if (IOConnectCallMethod(_iosConnect, 0xDu, 0, 0, 0, 0, 0, 0, &ioSurfaceLimits, buf) || word_1ED4CE0CA != 1)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ___ioSurfaceConnectInternal_block_invoke_cold_3();
            }

            IOServiceClose(_iosConnect);
            _iosConnect = 0;
          }
        }

        goto LABEL_38;
      }

      IOObjectRelease(existing);
      sleep(1u);
      if (__CFADD__(v2++, 1))
      {
        goto LABEL_38;
      }
    }

    v7 = MatchingServices;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&dword_1B0173000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "IOSurface.framework not allowed to iterate kernel services (%08x).  API disallowed.", buf, 8u);
    }

LABEL_38:
    if (!(_iosService | _iosServiceReturn))
    {
      ___ioSurfaceConnectInternal_block_invoke_cold_4();
    }
  }

  _ensureKeySniffDictionaries();
  v30 = *MEMORY[0x1E69E9840];
}

void _ensureKeySniffDictionaries()
{
  if (_ensureKeySniffDictionaries_onceToken != -1)
  {
    _ensureKeySniffDictionaries_cold_1();
  }
}

CFMutableDictionaryRef ___ensureKeySniffDictionaries_block_invoke()
{
  v0 = MEMORY[0x1E695E9D8];
  _sniffKeysToStructDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
  CFDictionarySetValue(_sniffKeysToStructDict, @"IOSurfaceCleanAperture", sniffCleanApertureKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"IOSurfacePixelAspectRatio", sniffPixelAspectRatioKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"IOSurfaceGammaLevel", sniffGammaLevelKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"IOSurfaceFieldCount", sniffFieldCountKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"IOSurfaceFieldDetail", sniffFieldDetailKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"IOSurfaceYCbCrMatrix", sniffYCbCrMatrixKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"IOSurfaceColorPrimaries", sniffColorPrimariesKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"IOSurfaceTransferFunction", sniffTransferFunctionKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"IOSurfaceChromaLocationTopField", sniffChromaLocationTopKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"IOSurfaceChromaLocationBottomField", sniffChromaLocationBottomKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"IOSurfaceChromaSubsampling", sniffChromaSubsamplingKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"IOSurfaceEDRFactor", sniffEDRFactorKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"MasteringDisplayColorVolume", sniffMasteringDisplayColorVolumeKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"ContentLightLevelInfo", sniffContentLightLevelInfoKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"AlphaChannelMode", sniffAlphaChannelModeKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"SceneIllumination", sniffSceneIlluminationKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"IOSurfaceColorSpaceID", sniffColorSpaceIDKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"VersatileSenselArrayPattern", sniffVersatileSenselArrayPatternKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"DisplayMaskRectangle", sniffDisplayMaskRectangleKeyToStruct);
  CFDictionarySetValue(_sniffKeysToStructDict, @"HorizontalDisparityAdjustment", sniffHorizontalDisparityAdjustmentKeyToStruct);
  _sniffKeysMaskDict = CFDictionaryCreateMutable(0, 0, v0, 0);
  CFDictionarySetValue(_sniffKeysMaskDict, @"IOSurfaceCleanAperture", 1);
  CFDictionarySetValue(_sniffKeysMaskDict, @"IOSurfacePixelAspectRatio", 2);
  CFDictionarySetValue(_sniffKeysMaskDict, @"IOSurfaceGammaLevel", 4);
  CFDictionarySetValue(_sniffKeysMaskDict, @"IOSurfaceFieldCount", 8);
  CFDictionarySetValue(_sniffKeysMaskDict, @"IOSurfaceFieldDetail", 0x10);
  CFDictionarySetValue(_sniffKeysMaskDict, @"IOSurfaceYCbCrMatrix", 0x20);
  CFDictionarySetValue(_sniffKeysMaskDict, @"IOSurfaceColorPrimaries", 0x40);
  CFDictionarySetValue(_sniffKeysMaskDict, @"IOSurfaceTransferFunction", 0x80);
  CFDictionarySetValue(_sniffKeysMaskDict, @"IOSurfaceChromaLocationTopField", 0x100);
  CFDictionarySetValue(_sniffKeysMaskDict, @"IOSurfaceChromaLocationBottomField", 0x200);
  CFDictionarySetValue(_sniffKeysMaskDict, @"IOSurfaceChromaSubsampling", 0x400);
  CFDictionarySetValue(_sniffKeysMaskDict, @"IOSurfaceEDRFactor", 0x2000);
  CFDictionarySetValue(_sniffKeysMaskDict, @"MasteringDisplayColorVolume", 0x800);
  CFDictionarySetValue(_sniffKeysMaskDict, @"ContentLightLevelInfo", 0x1000);
  CFDictionarySetValue(_sniffKeysMaskDict, @"AlphaChannelMode", 0x4000);
  CFDictionarySetValue(_sniffKeysMaskDict, @"SceneIllumination", 0x10000);
  CFDictionarySetValue(_sniffKeysMaskDict, @"IOSurfaceColorSpaceID", 0x20000);
  CFDictionarySetValue(_sniffKeysMaskDict, @"DisplayMaskRectangle", 0x80000);
  _sniffStructToKeysDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
  CFDictionarySetValue(_sniffStructToKeysDict, @"IOSurfaceCleanAperture", createCleanApertureFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"IOSurfacePixelAspectRatio", createPixelAspectRatioFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"IOSurfaceGammaLevel", createGammaLevelFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"IOSurfaceFieldCount", createFieldCountFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"IOSurfaceFieldDetail", createFieldDetailFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"IOSurfaceYCbCrMatrix", createYCbCrMatrixFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"IOSurfaceColorPrimaries", createColorPrimariesFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"IOSurfaceTransferFunction", createTransferFunctionFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"IOSurfaceChromaLocationTopField", createChromaLocationTopFieldFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"IOSurfaceChromaLocationBottomField", createChromaLocationBottomFieldFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"IOSurfaceChromaSubsampling", createChromaSubsamplingFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"IOSurfaceEDRFactor", createEDRFactorFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"MasteringDisplayColorVolume", createMasteringDisplayColorVolumeFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"ContentLightLevelInfo", createContentLightLevelInfoFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"AlphaChannelMode", createAlphaChannelModeFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"SceneIllumination", createSceneIlluminationFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"IOSurfaceColorSpaceID", createColorSpaceIDFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"VersatileSenselArrayPattern", createVersatileSenselArrayPatternFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"DisplayMaskRectangle", createDisplayMaskRectangleFromStruct);
  CFDictionarySetValue(_sniffStructToKeysDict, @"HorizontalDisparityAdjustment", createHorizontalDisparityAdjustmentFromStruct);
  v1 = MEMORY[0x1E695E9D8];
  _fieldDetailKeysToStructDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], 0);
  CFDictionarySetValue(_fieldDetailKeysToStructDict, @"TemporalTopFirst", 1);
  CFDictionarySetValue(_fieldDetailKeysToStructDict, @"TemporalBottomFirst", 6);
  CFDictionarySetValue(_fieldDetailKeysToStructDict, @"SpatialFirstLineEarly", 9);
  CFDictionarySetValue(_fieldDetailKeysToStructDict, @"SpatialFirstLineLate", 0xE);
  _yCbCrMatrixKeysToStructDict = CFDictionaryCreateMutable(0, 0, v1, 0);
  CFDictionarySetValue(_yCbCrMatrixKeysToStructDict, @"ITU_R_709_2", 1);
  CFDictionarySetValue(_yCbCrMatrixKeysToStructDict, @"ITU_R_601_4", 6);
  CFDictionarySetValue(_yCbCrMatrixKeysToStructDict, @"SMPTE_240M_1995", 7);
  CFDictionarySetValue(_yCbCrMatrixKeysToStructDict, @"DCI_P3", 0xB);
  CFDictionarySetValue(_yCbCrMatrixKeysToStructDict, @"P3_D65", 0xC);
  CFDictionarySetValue(_yCbCrMatrixKeysToStructDict, @"ITU_R_2020", 9);
  CFDictionarySetValue(_yCbCrMatrixKeysToStructDict, @"ITU_R_2100_ICtCp", 0xE);
  CFDictionarySetValue(_yCbCrMatrixKeysToStructDict, @"IPT", 0xF8);
  CFDictionarySetValue(_yCbCrMatrixKeysToStructDict, @"Identity", 0xC8);
  _colorPrimariesKeysToStructDict = CFDictionaryCreateMutable(0, 0, v1, 0);
  CFDictionarySetValue(_colorPrimariesKeysToStructDict, @"ITU_R_709_2", 1);
  CFDictionarySetValue(_colorPrimariesKeysToStructDict, @"EBU_3213", 5);
  CFDictionarySetValue(_colorPrimariesKeysToStructDict, @"SMPTE_C", 6);
  CFDictionarySetValue(_colorPrimariesKeysToStructDict, @"DCI_P3", 0xB);
  CFDictionarySetValue(_colorPrimariesKeysToStructDict, @"P3_D65", 0xC);
  CFDictionarySetValue(_colorPrimariesKeysToStructDict, @"JEDEC_P22", 0x16);
  CFDictionarySetValue(_colorPrimariesKeysToStructDict, @"ITU_R_2020", 9);
  _transferFunctionKeysToStructDict = CFDictionaryCreateMutable(0, 0, v1, 0);
  CFDictionarySetValue(_transferFunctionKeysToStructDict, @"ITU_R_709_2", 1);
  CFDictionarySetValue(_transferFunctionKeysToStructDict, @"ITU_R_2020", 1);
  CFDictionarySetValue(_transferFunctionKeysToStructDict, @"UseGamma", 2);
  CFDictionarySetValue(_transferFunctionKeysToStructDict, @"SMPTE_240M_1995", 7);
  CFDictionarySetValue(_transferFunctionKeysToStructDict, @"SMPTE_ST_2084_PQ", 0x10);
  CFDictionarySetValue(_transferFunctionKeysToStructDict, @"SMPTE_ST_428_1", 0x11);
  CFDictionarySetValue(_transferFunctionKeysToStructDict, @"ITU_R_2100_HLG", 0x12);
  CFDictionarySetValue(_transferFunctionKeysToStructDict, @"IEC_sRGB", 0xD);
  CFDictionarySetValue(_transferFunctionKeysToStructDict, @"sRGB", 0xD);
  CFDictionarySetValue(_transferFunctionKeysToStructDict, @"Linear", 8);
  CFDictionarySetValue(_transferFunctionKeysToStructDict, @"aYCC", 0xFF);
  _chromaLocationKeysToStructDict = CFDictionaryCreateMutable(0, 0, v1, 0);
  CFDictionarySetValue(_chromaLocationKeysToStructDict, @"Left", 1);
  CFDictionarySetValue(_chromaLocationKeysToStructDict, @"Center", 2);
  CFDictionarySetValue(_chromaLocationKeysToStructDict, @"TopLeft", 3);
  CFDictionarySetValue(_chromaLocationKeysToStructDict, @"Top", 4);
  CFDictionarySetValue(_chromaLocationKeysToStructDict, @"BottomLeft", 5);
  CFDictionarySetValue(_chromaLocationKeysToStructDict, @"Bottom", 6);
  CFDictionarySetValue(_chromaLocationKeysToStructDict, @"DV 4:2:0", 7);
  _chromaSubsamplingKeysToStructDict = CFDictionaryCreateMutable(0, 0, v1, 0);
  CFDictionarySetValue(_chromaSubsamplingKeysToStructDict, @"4:2:0", 1);
  CFDictionarySetValue(_chromaSubsamplingKeysToStructDict, @"4:2:2", 2);
  CFDictionarySetValue(_chromaSubsamplingKeysToStructDict, @"4:1:1", 3);
  _premultipliedAlphaKeysToStructDict = CFDictionaryCreateMutable(0, 0, v1, 0);
  CFDictionarySetValue(_premultipliedAlphaKeysToStructDict, @"PremultipliedAlpha", 2);
  CFDictionarySetValue(_premultipliedAlphaKeysToStructDict, @"StraightAlpha", 1);
  _unrecognizedCodePointDispatchQueue = dispatch_queue_create("com.apple.iosurface.unrecognized-code-points", 0);
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9E8];
  _stringsForUnrecognizedYCbCrMatrixCodePointsDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  _stringsForUnrecognizedColorPrimariesCodePointsDict = CFDictionaryCreateMutable(v2, 0, 0, v3);
  result = CFDictionaryCreateMutable(v2, 0, 0, v3);
  _stringsForUnrecognizedTransferFunctionCodePointsDict = result;
  return result;
}

uint64_t IOSurfaceClientGetPropertyMaximum(const void *a1)
{
  _ioSurfaceConnectInternal(0);
  if (CFEqual(a1, @"IOSurfaceBytesPerRow") || CFEqual(a1, @"IOSurfacePlaneBytesPerRow"))
  {
    return qword_1ED4CE0B0;
  }

  if (CFEqual(a1, @"IOSurfaceWidth") || CFEqual(a1, @"IOSurfacePlaneWidth"))
  {
    return qword_1ED4CE0B8;
  }

  if (CFEqual(a1, @"IOSurfaceHeight") || CFEqual(a1, @"IOSurfacePlaneHeight"))
  {
    return qword_1ED4CE0C0;
  }

  return 0;
}

CFTypeRef createColorPrimariesFromStruct(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 59);
  if (v1 > 8)
  {
    if (*(a1 + 59) > 0xBu)
    {
      if (v1 == 12)
      {
        v2 = kIOSurfaceColorPrimaries_P3_D65;
        goto LABEL_20;
      }

      if (v1 == 22)
      {
        v2 = kIOSurfaceColorPrimaries_JEDEC_P22;
        goto LABEL_20;
      }
    }

    else
    {
      if (v1 == 9)
      {
        v2 = kIOSurfaceColorPrimaries_ITU_R_2020;
        goto LABEL_20;
      }

      if (v1 == 11)
      {
        v2 = kIOSurfaceColorPrimaries_DCI_P3;
        goto LABEL_20;
      }
    }
  }

  else if (*(a1 + 59) > 4u)
  {
    if (v1 == 5)
    {
      v2 = kIOSurfaceColorPrimaries_EBU_3213;
      goto LABEL_20;
    }

    if (v1 == 6)
    {
      v2 = kIOSurfaceColorPrimaries_SMPTE_C;
      goto LABEL_20;
    }
  }

  else
  {
    if (!*(a1 + 59))
    {
      v3 = 0;
      goto LABEL_21;
    }

    if (v1 == 1)
    {
      v2 = kIOSurfaceColorPrimaries_ITU_R_709_2;
LABEL_20:
      v3 = *v2;
      goto LABEL_21;
    }
  }

  context[0] = @"ColorPrimaries#";
  context[1] = v1;
  context[2] = _stringsForUnrecognizedColorPrimariesCodePointsDict;
  cf = 0;
  dispatch_sync_f(_unrecognizedCodePointDispatchQueue, context, _dispatchUnrecognizedCodePointString);
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

LABEL_21:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

size_t IOSurfaceGetElementWidth(size_t buffer)
{
  if (buffer)
  {
    return IOSurfaceClientGetElementWidth(*(buffer + 8));
  }

  return buffer;
}

uint64_t IOSurfaceGetExtendedPixelsOfPlane(uint64_t result, unsigned int a2, void *a3, void *a4, void *a5, void *a6)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14[0] = 0;
  v11 = 0;
  v12 = 0;
  if (result)
  {
    result = IOSurfaceClientGetExtendedPixelsOfPlane(*(result + 8), a2, v14, &v13, &v12, &v11);
  }

  if (a3)
  {
    *a3 = v14[0];
  }

  if (a4)
  {
    *a4 = v13;
  }

  if (a5)
  {
    *a5 = v12;
  }

  if (a6)
  {
    *a6 = v11;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceGetParentID(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientGetParentID(*(result + 8));
  }

  return result;
}

uint64_t IOSurfaceClientSetCompressedTileDataRegionMemoryUsedOfPlane(uint64_t a1, unsigned int a2, uint64_t a3)
{
  input[3] = *MEMORY[0x1E69E9840];
  result = 3758097090;
  if (a2 <= 4 && *(a1 + 200) > a2)
  {
    input[0] = *(a1 + 136);
    input[1] = a2;
    input[2] = a3;
    v5 = _ioSurfaceConnectInternal(0);
    result = IOConnectCallMethod(v5, 0x1Fu, input, 3u, 0, 0, 0, 0, 0, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceClientGetExtendedPixelsOfPlane(uint64_t result, unsigned int a2, void *a3, void *a4, void *a5, void *a6)
{
  if (!a2 || *(result + 200) > a2)
  {
    v6 = (result + 152 * a2);
    *a3 = v6[98];
    *a4 = v6[96];
    *a5 = v6[99];
    *a6 = v6[97];
  }

  return result;
}

CFTypeID sniffChromaLocationTopKeyToStruct(CFTypeID result, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFStringGetTypeID();
  if (v4 == result)
  {
    v7[0] = 0;
    result = CFDictionaryGetValueIfPresent(_chromaLocationKeysToStructDict, v3, v7);
    if (result)
    {
      v5 = v7[0];
LABEL_6:
      *(a2 + 61) = v5;
      *(a2 + 136) |= 0x100uLL;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceClientSetOwnership(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = *(a1 + 136);
  input[1] = a2;
  input[2] = a3;
  input[3] = a4;
  v4 = _ioSurfaceConnectInternal(0);
  result = IOConnectCallMethod(v4, 0x15u, input, 4u, 0, 0, 0, 0, 0, 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceClientAlignProperty(const void *a1, uint64_t a2)
{
  _ioSurfaceConnectInternal(0);
  if (CFEqual(a1, @"IOSurfaceBytesPerRow") || CFEqual(a1, @"IOSurfacePlaneBytesPerRow"))
  {
    v4 = HIDWORD(ioSurfaceLimits);
    return (v4 + a2) & ~v4;
  }

  if (CFEqual(a1, @"IOSurfaceOffset") || CFEqual(a1, @"IOSurfacePlaneOffset") || CFEqual(a1, @"IOSurfacePlaneBase"))
  {
    v4 = ioSurfaceLimits;
    return (v4 + a2) & ~v4;
  }

  return a2;
}

uint64_t IOSurfaceSetCompressedTileDataRegionMemoryUsedOfPlane(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (result)
  {
    return IOSurfaceClientSetCompressedTileDataRegionMemoryUsedOfPlane(*(result + 8), a2, a3);
  }

  return result;
}

uint64_t IOSurfaceClientRemoveValue(uint64_t a1, __CFString *key)
{
  v33 = *MEMORY[0x1E69E9840];
  outputStruct = 0;
  v31 = 4;
  if (!key)
  {
    IOSurfaceClientRemoveBulkAttachments(a1, 0x1FFFFF);
    v7 = (a1 + 40);
    pthread_mutex_lock((a1 + 40));
    v8 = *(a1 + 16);
    if ((!v8 || !CFDictionaryGetCount(v8)) && *(a1 + 32) == *(*(a1 + 120) + 32))
    {
      goto LABEL_13;
    }

    v9 = 13;
    v10 = malloc_type_malloc(0xDuLL, 0xB241E3E1uLL);
    *v10 = *(a1 + 136);
    v10[12] = 0;
    goto LABEL_18;
  }

  v4 = _sniffKeysToMask(key);
  if (v4)
  {
    v5 = *MEMORY[0x1E69E9840];

    return IOSurfaceClientRemoveBulkAttachments(a1, v4);
  }

  v7 = (a1 + 40);
  pthread_mutex_lock((a1 + 40));
  v11 = *(a1 + 16);
  if (v11 && CFDictionaryGetValue(v11, key) || *(a1 + 32) != *(*(a1 + 120) + 32))
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(0, key, 0x8000100u, 0);
    if (!ExternalRepresentation)
    {
      v10 = 0;
      goto LABEL_39;
    }

    v14 = ExternalRepresentation;
    Length = CFDataGetLength(ExternalRepresentation);
    v9 = (Length + 13);
    v10 = malloc_type_malloc(v9, 0xFD16FDAAuLL);
    *v10 = *(a1 + 136);
    BytePtr = CFDataGetBytePtr(v14);
    memcpy(v10 + 12, BytePtr, Length);
    v10[Length + 12] = 0;
    CFRelease(v14);
LABEL_18:
    v17 = _ioSurfaceConnectInternal(0);
    v18 = IOConnectCallMethod(v17, 0xBu, 0, 0, v10, v9, 0, 0, &outputStruct, &v31);
    if (v18)
    {
      fprintf(*MEMORY[0x1E69E9848], "kIOSurfaceMethodRemoveValue failed: %08x\n", v18);
    }

    v19 = *(a1 + 32);
    if (!v19)
    {
      goto LABEL_39;
    }

    v20 = (v19 | 1) + 2;
    if (outputStruct != v20)
    {
      goto LABEL_39;
    }

    *(a1 + 32) = v20;
    if (key)
    {
      if (!CFEqual(@"CreationProperties", key))
      {
        v21 = *(a1 + 16);
        v22 = *MEMORY[0x1E695E480];
        if (v21)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v21);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v26 = MutableCopy;
        if (!CFEqual(key, @"IOSurfaceName") && !CFEqual(key, @"CreationProperties"))
        {
          CFDictionaryRemoveValue(v26, key);
        }

        v29 = *(a1 + 16);
        if (v29)
        {
          CFRelease(v29);
        }

        v28 = v22;
LABEL_38:
        *(a1 + 16) = CFDictionaryCreateCopy(v28, v26);
        CFRelease(v26);
      }
    }

    else
    {
      v24 = *(a1 + 16);
      if (v24)
      {
        v25 = *MEMORY[0x1E695E480];
        v26 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v24);
        CFDictionaryApplyFunction(*(a1 + 16), removeAllButNameAndCreation, v26);
        v27 = *(a1 + 16);
        if (v27)
        {
          CFRelease(v27);
        }

        v28 = v25;
        goto LABEL_38;
      }
    }

LABEL_39:
    free(v10);
    result = pthread_mutex_unlock(v7);
    v30 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];

  return pthread_mutex_unlock(v7);
}

uint64_t IOSurfaceClientGetParentID(uint64_t result)
{
  if (result)
  {
    return *(result + 224);
  }

  return result;
}

uint64_t IOSurfaceSharedEventAddEventListener(unint64_t a1, IONotificationPortRef notify)
{
  v11 = *MEMORY[0x1E69E9840];
  reference[0] = 0;
  v9 = 0u;
  v10 = 0u;
  reference[1] = _ioSurfaceEventNotificationCallback2;
  v8 = a1;
  MachPort = IONotificationPortGetMachPort(notify);
  if (!MachPort)
  {
    IOSurfaceSharedEventAddEventListener_cold_1();
  }

  v3 = MachPort;
  v4 = _ioSurfaceConnect();
  result = IOConnectCallAsyncMethod(v4, 0x28u, v3, reference, 3u, 0, 0, 0, 0, 0, 0, 0, 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef createCleanApertureFromStruct(int *a1)
{
  values[4] = *MEMORY[0x1E69E9840];
  v1 = a1[1];
  if (v1 && (v2 = a1[3]) != 0 && (v3 = a1[5]) != 0 && (v4 = a1[7]) != 0)
  {
    keys[0] = @"Width";
    keys[1] = @"Height";
    v5 = *a1 / v1;
    v15 = a1[2] / v2;
    valuePtr = v5;
    v6 = a1[4] / v3;
    v7 = a1[6];
    keys[2] = @"HorizontalOffset";
    keys[3] = @"VerticalOffset";
    v13 = v7 / v4;
    v14 = v6;
    v8 = *MEMORY[0x1E695E480];
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
    values[1] = CFNumberCreate(v8, kCFNumberDoubleType, &v15);
    values[2] = CFNumberCreate(v8, kCFNumberDoubleType, &v14);
    values[3] = CFNumberCreate(v8, kCFNumberDoubleType, &v13);
    v9 = CFDictionaryCreate(v8, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    for (i = 0; i != 4; ++i)
    {
      CFRelease(values[i]);
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t IOSurfaceSetOwnership(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  if (a1)
  {
    return IOSurfaceClientSetOwnership(*(a1 + 8), a2, a3, a4);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOSurfaceGetSizeOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetSizeOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceClientSetCoreVideoBridgedKeys(const __CFArray *a1)
{
  pthread_mutex_lock(&_iosCoreVideoBridgedKeysMutex);
  if (_iosBridgedCoreVideoKeys)
  {
    CFRelease(_iosBridgedCoreVideoKeys);
  }

  _iosBridgedCoreVideoKeys = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v13.length = CFArrayGetCount(a1);
  v13.location = 0;
  CFArrayApplyFunction(a1, v13, addValueToSet, _iosBridgedCoreVideoKeys);
  v2 = IOCFSerialize(a1, 1uLL);
  if (v2)
  {
    v3 = v2;
    Length = CFDataGetLength(v2);
    if (Length >= 0xFFFFFFFFFFFFFFF4)
    {
      abort();
    }

    v5 = Length;
    v6 = (Length + 12);
    v7 = malloc_type_malloc(v6, 0x5DCC8B9DuLL);
    BytePtr = CFDataGetBytePtr(v3);
    memcpy(v7 + 12, BytePtr, v5);
    v9 = _ioSurfaceConnectInternal(0);
    v10 = IOConnectCallMethod(v9, 0x36u, 0, 0, v7, v6, 0, 0, 0, 0);
    if (v10)
    {
      fprintf(*MEMORY[0x1E69E9848], "kIOSurfaceMethodSetCoreVideoBridgedKeys failed: %08x\n", v10);
    }

    CFRelease(v3);
    free(v7);
  }

  return pthread_mutex_unlock(&_iosCoreVideoBridgedKeysMutex);
}

size_t IOSurfaceGetBytesPerElementOfPlane(size_t buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceClientGetBytesPerElementOfPlane(*(buffer + 8), planeIndex);
  }

  return buffer;
}

uint64_t IOSurfaceClientGetPropertyAlignment(const void *a1)
{
  _ioSurfaceConnectInternal(0);
  if (CFEqual(a1, @"IOSurfaceBytesPerRow") || CFEqual(a1, @"IOSurfacePlaneBytesPerRow"))
  {
    v2 = HIDWORD(ioSurfaceLimits);
  }

  else
  {
    if (!CFEqual(a1, @"IOSurfaceOffset") && !CFEqual(a1, @"IOSurfacePlaneOffset") && !CFEqual(a1, @"IOSurfacePlaneBase"))
    {
      return 1;
    }

    v2 = ioSurfaceLimits;
  }

  return (v2 + 1);
}

void _insertAllKeysFromStruct(const __CFDictionary *a1, uint64_t a2, __CFDictionary **a3)
{
  v58 = *MEMORY[0x1E69E9840];
  CleanApertureFromStruct = createCleanApertureFromStruct(a2);
  PixelAspectRatioFromStruct = createPixelAspectRatioFromStruct(a2);
  v7 = PixelAspectRatioFromStruct;
  value = CleanApertureFromStruct;
  v8 = 1;
  if (CleanApertureFromStruct)
  {
    v8 = 2;
  }

  if (PixelAspectRatioFromStruct)
  {
    v9 = v8;
  }

  else
  {
    v9 = CleanApertureFromStruct != 0;
  }

  GammaLevelFromStruct = createGammaLevelFromStruct(a2);
  if (GammaLevelFromStruct)
  {
    ++v9;
  }

  v11 = MEMORY[0x1E695E480];
  if (*(a2 + 56))
  {
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, (a2 + 56));
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
  if (v12)
  {
    v14 = v9 + 1;
  }

  else
  {
    v14 = v9;
  }

  v15 = *(a2 + 57);
  v47 = GammaLevelFromStruct;
  v45 = v12;
  theDict = a1;
  if (v15 > 8)
  {
    if (v15 == 9)
    {
      v16 = kIOSurfaceFieldDetail_SpatialFirstLineEarly;
    }

    else
    {
      if (v15 != 14)
      {
        goto LABEL_24;
      }

      v16 = kIOSurfaceFieldDetail_SpatialFirstLineLate;
    }
  }

  else if (v15 == 1)
  {
    v16 = kIOSurfaceFieldDetail_TemporalTopFirst;
  }

  else
  {
    if (v15 != 6)
    {
      goto LABEL_24;
    }

    v16 = kIOSurfaceFieldDetail_TemporalBottomFirst;
  }

  v13 = *v16;
LABEL_24:
  if (v13)
  {
    v17 = v14 + 1;
  }

  else
  {
    v17 = v14;
  }

  YCbCrMatrixFromStruct = createYCbCrMatrixFromStruct(a2);
  if (YCbCrMatrixFromStruct)
  {
    v19 = v17 + 1;
  }

  else
  {
    v19 = v17;
  }

  ColorPrimariesFromStruct = createColorPrimariesFromStruct(a2);
  if (ColorPrimariesFromStruct)
  {
    ++v19;
  }

  TransferFunctionFromStruct = createTransferFunctionFromStruct(a2);
  if (TransferFunctionFromStruct)
  {
    ++v19;
  }

  ChromaLocationTopFieldFromStruct = createChromaLocationTopFieldFromStruct(a2);
  if (ChromaLocationTopFieldFromStruct)
  {
    ++v19;
  }

  ChromaLocationBottomFieldFromStruct = createChromaLocationBottomFieldFromStruct(a2);
  if (ChromaLocationBottomFieldFromStruct)
  {
    v23 = v19 + 1;
  }

  else
  {
    v23 = v19;
  }

  v24 = *(a2 + 63);
  switch(v24)
  {
    case 3:
      v25 = kIOSurfaceChromaSubsampling_411;
      goto LABEL_45;
    case 2:
      v25 = kIOSurfaceChromaSubsampling_422;
      goto LABEL_45;
    case 1:
      v25 = kIOSurfaceChromaSubsampling_420;
LABEL_45:
      v26 = *v25;
      goto LABEL_47;
  }

  v26 = 0;
LABEL_47:
  v46 = v26;
  if (v26)
  {
    v27 = v23 + 1;
  }

  else
  {
    v27 = v23;
  }

  EDRFactorFromStruct = createEDRFactorFromStruct(a2);
  if (EDRFactorFromStruct)
  {
    ++v27;
  }

  MasteringDisplayColorVolumeFromStruct = createMasteringDisplayColorVolumeFromStruct(a2);
  if (MasteringDisplayColorVolumeFromStruct)
  {
    ++v27;
  }

  ContentLightLevelInfoFromStruct = createContentLightLevelInfoFromStruct(a2);
  if (ContentLightLevelInfoFromStruct)
  {
    v28 = v27 + 1;
  }

  else
  {
    v28 = v27;
  }

  v29 = *(a2 + 100);
  v30 = ChromaLocationBottomFieldFromStruct;
  if (v29 == 1)
  {
    v31 = kIOSurfaceAlphaChannelMode_StraightAlpha;
    goto LABEL_61;
  }

  if (v29 == 2)
  {
    v31 = kIOSurfaceAlphaChannelMode_PremultipliedAlpha;
LABEL_61:
    v32 = *v31;
    goto LABEL_63;
  }

  v32 = 0;
LABEL_63:
  v33 = v32;
  if (v32)
  {
    v34 = v28 + 1;
  }

  else
  {
    v34 = v28;
  }

  SceneIlluminationFromStruct = createSceneIlluminationFromStruct(a2);
  if (SceneIlluminationFromStruct)
  {
    ++v34;
  }

  valuePtr = *(a2 + 101);
  v35 = *v11;
  if (valuePtr)
  {
    v36 = CFNumberCreate(v35, kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    v36 = 0;
  }

  v49 = v36;
  if (v36)
  {
    ++v34;
  }

  VersatileSenselArrayPatternFromStruct = createVersatileSenselArrayPatternFromStruct(a2);
  if (VersatileSenselArrayPatternFromStruct)
  {
    ++v34;
  }

  DisplayMaskRectangleFromStruct = createDisplayMaskRectangleFromStruct(a2);
  if (DisplayMaskRectangleFromStruct)
  {
    ++v34;
  }

  valuePtr = *(a2 + 128);
  v53 = CFNumberCreate(v35, kCFNumberSInt32Type, &valuePtr);
  if (v53)
  {
    v37 = v34 + 1;
  }

  else
  {
    v37 = v34;
  }

  if (v37)
  {
    if (theDict)
    {
      Count = CFDictionaryGetCount(theDict);
      MutableCopy = CFDictionaryCreateMutableCopy(v35, Count + v37, theDict);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(v35, v37, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v40 = MutableCopy;
    if (value)
    {
      CFDictionarySetValue(MutableCopy, @"IOSurfaceCleanAperture", value);
      CFRelease(value);
    }

    if (v7)
    {
      CFDictionarySetValue(v40, @"IOSurfacePixelAspectRatio", v7);
      CFRelease(v7);
    }

    if (v47)
    {
      CFDictionarySetValue(v40, @"IOSurfaceGammaLevel", v47);
      CFRelease(v47);
    }

    if (v45)
    {
      CFDictionarySetValue(v40, @"IOSurfaceFieldCount", v45);
      CFRelease(v45);
    }

    if (v13)
    {
      CFDictionarySetValue(v40, @"IOSurfaceFieldDetail", v13);
      CFRelease(v13);
    }

    if (YCbCrMatrixFromStruct)
    {
      CFDictionarySetValue(v40, @"IOSurfaceYCbCrMatrix", YCbCrMatrixFromStruct);
      CFRelease(YCbCrMatrixFromStruct);
    }

    if (ColorPrimariesFromStruct)
    {
      CFDictionarySetValue(v40, @"IOSurfaceColorPrimaries", ColorPrimariesFromStruct);
      CFRelease(ColorPrimariesFromStruct);
    }

    if (TransferFunctionFromStruct)
    {
      CFDictionarySetValue(v40, @"IOSurfaceTransferFunction", TransferFunctionFromStruct);
      CFRelease(TransferFunctionFromStruct);
    }

    if (ChromaLocationTopFieldFromStruct)
    {
      CFDictionarySetValue(v40, @"IOSurfaceChromaLocationTopField", ChromaLocationTopFieldFromStruct);
      CFRelease(ChromaLocationTopFieldFromStruct);
    }

    if (v30)
    {
      CFDictionarySetValue(v40, @"IOSurfaceChromaLocationBottomField", v30);
      CFRelease(v30);
    }

    if (v46)
    {
      CFDictionarySetValue(v40, @"IOSurfaceChromaSubsampling", v46);
      CFRelease(v46);
    }

    if (EDRFactorFromStruct)
    {
      CFDictionarySetValue(v40, @"IOSurfaceEDRFactor", EDRFactorFromStruct);
      CFRelease(EDRFactorFromStruct);
    }

    if (MasteringDisplayColorVolumeFromStruct)
    {
      CFDictionarySetValue(v40, @"MasteringDisplayColorVolume", MasteringDisplayColorVolumeFromStruct);
      CFRelease(MasteringDisplayColorVolumeFromStruct);
    }

    if (ContentLightLevelInfoFromStruct)
    {
      CFDictionarySetValue(v40, @"ContentLightLevelInfo", ContentLightLevelInfoFromStruct);
      CFRelease(ContentLightLevelInfoFromStruct);
    }

    if (v33)
    {
      CFDictionarySetValue(v40, @"AlphaChannelMode", v33);
      CFRelease(v33);
    }

    if (SceneIlluminationFromStruct)
    {
      CFDictionarySetValue(v40, @"SceneIllumination", SceneIlluminationFromStruct);
      CFRelease(SceneIlluminationFromStruct);
    }

    if (v49)
    {
      CFDictionarySetValue(v40, @"IOSurfaceColorSpaceID", v49);
      CFRelease(v49);
    }

    if (VersatileSenselArrayPatternFromStruct)
    {
      CFDictionarySetValue(v40, @"VersatileSenselArrayPattern", VersatileSenselArrayPatternFromStruct);
      CFRelease(VersatileSenselArrayPatternFromStruct);
    }

    if (DisplayMaskRectangleFromStruct)
    {
      CFDictionarySetValue(v40, @"DisplayMaskRectangle", DisplayMaskRectangleFromStruct);
      CFRelease(DisplayMaskRectangleFromStruct);
    }

    if (v53)
    {
      CFDictionarySetValue(v40, @"HorizontalDisparityAdjustment", v53);
      CFRelease(v53);
    }
  }

  else if (theDict)
  {
    v40 = CFRetain(theDict);
  }

  else
  {
    v40 = 0;
  }

  *a3 = v40;
  v41 = *MEMORY[0x1E69E9840];
}

CFNumberRef createFieldCountFromStruct(uint64_t a1)
{
  if (*(a1 + 56))
  {
    return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, (a1 + 56));
  }

  else
  {
    return 0;
  }
}

const __CFArray *IOSurfaceSetCoreVideoBridgedKeys(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    result = CFArrayGetTypeID();
    if (v2 == result)
    {

      return IOSurfaceClientSetCoreVideoBridgedKeys(v1);
    }
  }

  return result;
}

uint64_t IOSurfaceClientGetBytesPerElementOfPlane(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 200) <= a2)
  {
    if (a2)
    {
      return 0;
    }

    v2 = (a1 + 208);
  }

  else
  {
    v2 = (a1 + 152 * a2 + 296);
  }

  return *v2;
}

uint64_t IOSurfaceClientGetSizeOfPlane(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 200) <= a2)
  {
    if (a2)
    {
      return 0;
    }

    v2 = a1 + 144;
  }

  else
  {
    v2 = a1 + 152 * a2 + 288;
  }

  return *v2;
}

__CFDictionary *IOSurfaceClientCopyAllValues(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = *(a1 + 120);
  if (*(v1 + 40))
  {
    pthread_mutex_lock((a1 + 40));
    IOSurfaceClientUpdateNonBulkValueCache(a1);
    _insertAllKeysFromStruct(*(a1 + 16), v1 + 48, v5);
    pthread_mutex_unlock((a1 + 40));
    result = v5[0];
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *createFieldDetailFromStruct(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 57);
  if (v3 > 8)
  {
    if (v3 == 9)
    {
      v4 = kIOSurfaceFieldDetail_SpatialFirstLineEarly;
    }

    else
    {
      if (v3 != 14)
      {
        return result;
      }

      v4 = kIOSurfaceFieldDetail_SpatialFirstLineLate;
    }
  }

  else if (v3 == 1)
  {
    v4 = kIOSurfaceFieldDetail_TemporalTopFirst;
  }

  else
  {
    if (v3 != 6)
    {
      return result;
    }

    v4 = kIOSurfaceFieldDetail_TemporalBottomFirst;
  }

  return *v4;
}

size_t IOSurfaceGetElementWidthOfPlane(size_t buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceClientGetElementWidthOfPlane(*(buffer + 8), planeIndex);
  }

  return buffer;
}

uint64_t IOSurfaceInitDetachModeCode(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientInitDetachModeCode(*(result + 8));
  }

  return result;
}

uint64_t IOSurfaceClientGetElementWidthOfPlane(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 200) <= a2)
  {
    if (a2)
    {
      return 0;
    }

    v2 = (a1 + 210);
  }

  else
  {
    v2 = (a1 + 152 * a2 + 298);
  }

  return *v2;
}

CFTypeRef createTransferFunctionFromStruct(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 60);
  if (v1 > 0xD)
  {
    if (*(a1 + 60) > 0x10u)
    {
      switch(v1)
      {
        case 0x11u:
          v2 = kIOSurfaceTransferFunction_SMPTE_ST_428_1;
          goto LABEL_15;
        case 0x12u:
          v2 = kIOSurfaceTransferFunction_ITU_R_2100_HLG;
          goto LABEL_15;
        case 0xFFu:
          v2 = kIOSurfaceTransferFunction_aYCC;
          goto LABEL_15;
      }
    }

    else
    {
      if (v1 - 14 < 2)
      {
        goto LABEL_14;
      }

      if (v1 == 16)
      {
        v2 = kIOSurfaceTransferFunction_SMPTE_ST_2084_PQ;
        goto LABEL_15;
      }
    }
  }

  else if (*(a1 + 60) <= 5u)
  {
    if (!*(a1 + 60))
    {
      v3 = 0;
      goto LABEL_16;
    }

    if (v1 == 1)
    {
      goto LABEL_14;
    }

    if (v1 == 2)
    {
      v2 = kIOSurfaceTransferFunction_UseGamma;
      goto LABEL_15;
    }
  }

  else
  {
    if (*(a1 + 60) <= 7u)
    {
      if (v1 != 6)
      {
        v2 = kIOSurfaceTransferFunction_SMPTE_240M_1995;
LABEL_15:
        v3 = *v2;
        goto LABEL_16;
      }

LABEL_14:
      v2 = kIOSurfaceTransferFunction_ITU_R_709_2;
      goto LABEL_15;
    }

    if (v1 == 8)
    {
      v2 = kIOSurfaceTransferFunction_Linear;
      goto LABEL_15;
    }

    if (v1 == 13)
    {
      v2 = kIOSurfaceTransferFunction_sRGB;
      goto LABEL_15;
    }
  }

  context[0] = @"TransferFunction#";
  context[1] = v1;
  context[2] = _stringsForUnrecognizedTransferFunctionCodePointsDict;
  cf = 0;
  dispatch_sync_f(_unrecognizedCodePointDispatchQueue, context, _dispatchUnrecognizedCodePointString);
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

LABEL_16:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t IOSurfaceClientInitDetachModeCode(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (byte_1ED4CE0C8 == 1)
  {
    v1 = *(a1 + 128);
    *(v1 + 40) = 0xFFFFFFFFFFFFLL;
    result = mach_absolute_time();
    *(v1 + 16) = result;
  }

  else
  {
    input = *(a1 + 136);
    v6 = xmmword_1B0189590;
    v7 = mach_absolute_time();
    v3 = _ioSurfaceConnectInternal(0);
    result = IOConnectCallMethod(v3, 0x2Bu, &input, 4u, 0, 0, 0, 0, 0, 0);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef createPixelAspectRatioFromStruct(int *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1[9];
  if (v1 && (v2 = a1[11]) != 0)
  {
    v3 = a1[8] / v1;
    v4 = a1[10];
    keys[0] = @"HorizontalSpacing";
    keys[1] = @"VerticalSpacing";
    v9 = v4 / v2;
    valuePtr = v3;
    v5 = *MEMORY[0x1E695E480];
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
    cf = CFNumberCreate(v5, kCFNumberDoubleType, &v9);
    v6 = CFDictionaryCreate(v5, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(values);
    CFRelease(cf);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t IOSurfaceSetDetachModeCode(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return IOSurfaceClientSetDetachModeCode(*(result + 8), a2, a3);
  }

  return result;
}

CFNumberRef createGammaLevelFromStruct(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 52);
  if (v1)
  {
    v4[0] = *(a1 + 48) / v1;
    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, v4);
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceClientSetDetachModeCode(uint64_t result, uint64_t a2, uint64_t a3)
{
  input[4] = *MEMORY[0x1E69E9840];
  if (byte_1ED4CE0C8 == 1)
  {
    *(*(result + 128) + 40) = *(*(result + 128) + 40) & ~a2 | a3 & a2;
  }

  else
  {
    input[0] = *(result + 136);
    input[1] = a2;
    input[2] = a3;
    input[3] = 0;
    v3 = _ioSurfaceConnectInternal(0);
    result = IOConnectCallMethod(v3, 0x2Bu, input, 4u, 0, 0, 0, 0, 0, 0);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef createYCbCrMatrixFromStruct(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 58);
  if (v1 > 8)
  {
    if (*(a1 + 58) > 0xDu)
    {
      switch(v1)
      {
        case 0xEu:
          v2 = kIOSurfaceYCbCrMatrix_ITU_R_2100_ICtCp_String;
          goto LABEL_23;
        case 0xC8u:
          v2 = kIOSurfaceYCbCrMatrix_Identity_String;
          goto LABEL_23;
        case 0xF8u:
          v2 = kIOSurfaceYCbCrMatrix_IPT_String;
          goto LABEL_23;
      }
    }

    else
    {
      switch(v1)
      {
        case 9u:
          v2 = kIOSurfaceYCbCrMatrix_ITU_R_2020_String;
          goto LABEL_23;
        case 0xBu:
          v2 = kIOSurfaceYCbCrMatrix_DCI_P3_String;
          goto LABEL_23;
        case 0xCu:
          v2 = kIOSurfaceYCbCrMatrix_P3_D65_String;
LABEL_23:
          v3 = *v2;
          goto LABEL_24;
      }
    }

LABEL_25:
    context[0] = @"YCbCrMatrix#";
    context[1] = v1;
    context[2] = _stringsForUnrecognizedYCbCrMatrixCodePointsDict;
    cf = 0;
    dispatch_sync_f(_unrecognizedCodePointDispatchQueue, context, _dispatchUnrecognizedCodePointString);
    v3 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    goto LABEL_24;
  }

  v3 = 0;
  if (*(a1 + 58) > 1u)
  {
    switch(v1)
    {
      case 2u:
        goto LABEL_24;
      case 6u:
        v2 = kIOSurfaceYCbCrMatrix_ITU_R_601_4_String;
        goto LABEL_23;
      case 7u:
        v2 = kIOSurfaceYCbCrMatrix_SMPTE_240M_1995_String;
        goto LABEL_23;
    }

    goto LABEL_25;
  }

  if (*(a1 + 58))
  {
    v2 = kIOSurfaceYCbCrMatrix_ITU_R_709_2_String;
    goto LABEL_23;
  }

LABEL_24:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void sniffYCbCrMatrixKeyToStruct(const __CFString *a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *(a2 + 58) = 0;
    goto LABEL_10;
  }

  v10[0] = 0;
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID() && CFDictionaryGetValueIfPresent(_yCbCrMatrixKeysToStructDict, a1, v10))
  {
    *(a2 + 58) = v10[0];
LABEL_10:
    *(a2 + 136) |= 0x20uLL;
    goto LABEL_11;
  }

  v5 = CFGetTypeID(a1);
  if (v5 == CFStringGetTypeID())
  {
    if (CFStringHasPrefix(a1, @"YCbCrMatrix#"))
    {
      Length = CFStringGetLength(a1);
      v11.location = CFStringGetLength(@"YCbCrMatrix#");
      v11.length = Length - v11.location;
      v7 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v11);
      if (v7)
      {
        v8 = v7;
        *(a2 + 58) = CFStringGetIntValue(v7);
        *(a2 + 136) |= 0x20uLL;
        CFRelease(v8);
      }
    }
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t IOSurfaceClientRemoveCoreVideoBridgedValues(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  cf = 0;
  v9 = 0;
  if (*(a1 + 16))
  {
    v2 = *(a1 + 32) == *(*(a1 + 120) + 32);
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_lock((a1 + 40));
  pthread_mutex_lock(&_iosCoreVideoBridgedKeysMutex);
  context = _iosBridgedCoreVideoKeys;
  LOBYTE(v9) = 0;
  if (v2)
  {
    cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryApplyFunction(*(a1 + 16), insertKeyIfNotListedForRemoval, &context);
    if (v9)
    {
      CFRelease(*(a1 + 16));
      *(a1 + 16) = cf;
      cf = 0;
      *(a1 + 32) = (*(a1 + 32) | 1) + 2;
    }
  }

  pthread_mutex_unlock(&_iosCoreVideoBridgedKeysMutex);
  if (v9 == 0 && v2)
  {
    IOSurfaceClientRemoveBulkAttachments(a1, 0x1FFFFF);
  }

  else
  {
    v3 = _ioSurfaceConnectInternal(0);
    v4 = IOConnectTrap2(v3, 8u, *(a1 + 136), &v10);
    if (v4)
    {
      fprintf(*MEMORY[0x1E69E9848], "kIOSurfaceTrapRemoveCoreVideoBridgedValues failed: %08x\n", v4);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  result = pthread_mutex_unlock((a1 + 40));
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFNumberRef createVersatileSenselArrayPatternFromStruct(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  valuePtr = *(a1 + 102);
  if (valuePtr)
  {
    if (valuePtr == 255)
    {
      valuePtr = 0;
    }

    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, &valuePtr);
  }

  else
  {
    result = 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sniffContentLightLevelInfoKeyToStruct(const __CFData *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *buffer = 0;
  if (a1 && (TypeID = CFDataGetTypeID(), TypeID == CFGetTypeID(a1)) && CFDataGetLength(a1) == 4)
  {
    v12.location = 0;
    v12.length = 4;
    CFDataGetBytes(a1, v12, buffer);
    v5 = buffer[0];
    v6 = buffer[1];
    v7 = buffer[2];
    v8 = buffer[3];
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
    v5 = 0;
  }

  *(a2 + 88) = v6 | (v5 << 8);
  *(a2 + 90) = v8 | (v7 << 8);
  *(a2 + 136) |= 0x1000uLL;
  v9 = *MEMORY[0x1E69E9840];
}

__CFString *createChromaLocationTopFieldFromStruct(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 61);
  if (v3 <= 3)
  {
    switch(v3)
    {
      case 1:
        v4 = kIOSurfaceChromaLocation_Left;
        break;
      case 2:
        v4 = kIOSurfaceChromaLocation_Center;
        break;
      case 3:
        v4 = kIOSurfaceChromaLocation_TopLeft;
        break;
      default:
        return result;
    }
  }

  else if (v3 > 5)
  {
    if (v3 == 6)
    {
      v4 = kIOSurfaceChromaLocation_Bottom;
    }

    else
    {
      if (v3 != 7)
      {
        return result;
      }

      v4 = kIOSurfaceChromaLocation_DV420;
    }
  }

  else if (v3 == 4)
  {
    v4 = kIOSurfaceChromaLocation_Top;
  }

  else
  {
    v4 = kIOSurfaceChromaLocation_BottomLeft;
  }

  return *v4;
}

const void *_sniffKeysToMask(void *key)
{
  if (_ensureKeySniffDictionaries_onceToken != -1)
  {
    _ensureKeySniffDictionaries_cold_1();
  }

  v2 = _sniffKeysMaskDict;

  return CFDictionaryGetValue(v2, key);
}

uint64_t IOSurfaceGetYCbCrMatrix(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    return IOSurfaceClientGetYCbCrMatrix(*(a1 + 8), a2);
  }

  else
  {
    return 3758097090;
  }
}

CFDictionaryRef createDisplayMaskRectangleFromStruct(_WORD *a1)
{
  values[6] = *MEMORY[0x1E69E9840];
  v1 = a1[58];
  if (v1 && (v2 = a1[59]) != 0)
  {
    keys[0] = @"ReferenceRasterWidth";
    keys[1] = @"ReferenceRasterHeight";
    keys[2] = @"RectangleLeft";
    keys[3] = @"RectangleWidth";
    keys[4] = @"RectangleTop";
    keys[5] = @"RectangleHeight";
    valuePtr = v1;
    v12 = v2;
    v11 = a1[60];
    v10 = a1[61];
    v9 = a1[62];
    v8 = a1[63];
    v3 = *MEMORY[0x1E695E480];
    values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
    values[1] = CFNumberCreate(v3, kCFNumberSInt16Type, &v12);
    values[2] = CFNumberCreate(v3, kCFNumberSInt16Type, &v11);
    values[3] = CFNumberCreate(v3, kCFNumberSInt16Type, &v10);
    values[4] = CFNumberCreate(v3, kCFNumberSInt16Type, &v9);
    values[5] = CFNumberCreate(v3, kCFNumberSInt16Type, &v8);
    v4 = CFDictionaryCreate(v3, keys, values, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    for (i = 0; i != 6; ++i)
    {
      CFRelease(values[i]);
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

__CFString *createChromaLocationBottomFieldFromStruct(uint64_t a1)
{
  result = 0;
  v3 = *(a1 + 62);
  if (v3 <= 3)
  {
    switch(v3)
    {
      case 1:
        v4 = kIOSurfaceChromaLocation_Left;
        break;
      case 2:
        v4 = kIOSurfaceChromaLocation_Center;
        break;
      case 3:
        v4 = kIOSurfaceChromaLocation_TopLeft;
        break;
      default:
        return result;
    }
  }

  else if (v3 > 5)
  {
    if (v3 == 6)
    {
      v4 = kIOSurfaceChromaLocation_Bottom;
    }

    else
    {
      if (v3 != 7)
      {
        return result;
      }

      v4 = kIOSurfaceChromaLocation_DV420;
    }
  }

  else if (v3 == 4)
  {
    v4 = kIOSurfaceChromaLocation_Top;
  }

  else
  {
    v4 = kIOSurfaceChromaLocation_BottomLeft;
  }

  return *v4;
}

uint64_t IOSurfaceRemoveCoreVideoBridgedValues(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientRemoveCoreVideoBridgedValues(*(result + 8));
  }

  return result;
}

uint64_t IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetBaseAddressOfCompressedTileDataRegionOfPlane(*(result + 8), a2);
  }

  return result;
}

CFDataRef createMasteringDisplayColorVolumeFromStruct(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64);
  if (v1 || *(a1 + 66))
  {
    v2 = *(a1 + 66);
    v3 = HIBYTE(*(a1 + 66));
  }

  else
  {
    if (!*(a1 + 68) && !*(a1 + 70) && !*(a1 + 72) && !*(a1 + 74) && !*(a1 + 76) && !*(a1 + 78) && !*(a1 + 80))
    {
      result = 0;
      goto LABEL_5;
    }

    v2 = 0;
    LOBYTE(v3) = 0;
  }

  v7[0] = HIBYTE(v1);
  v7[1] = v1;
  v7[2] = v3;
  v7[3] = v2;
  v8 = bswap32(*(a1 + 68)) >> 16;
  v9 = bswap32(*(a1 + 70)) >> 16;
  v10 = bswap32(*(a1 + 72)) >> 16;
  v11 = bswap32(*(a1 + 74)) >> 16;
  v12 = bswap32(*(a1 + 76)) >> 16;
  v13 = bswap32(*(a1 + 78)) >> 16;
  v4 = bswap32(*(a1 + 84));
  v14 = bswap32(*(a1 + 80));
  v15 = v4;
  result = CFDataCreate(*MEMORY[0x1E695E480], v7, 24);
LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceClientRemoveBulkAttachments(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 120);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  result = getDirtyMask(v4 + 48, v9, a2);
  if (result)
  {
    if ((~a2 & 0x1FFFFF) != 0)
    {
      v6 = result;
    }

    else
    {
      v6 = 0x1FFFFFLL;
    }

    v7 = _ioSurfaceConnectInternal(0);
    result = IOConnectTrap2(v7, 9u, *(a1 + 136), v6);
    if (result)
    {
      result = fprintf(*MEMORY[0x1E69E9848], "kIOSurfaceTrapRemoveBulkAttachments failed: %08x\n", result);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef IOSurfaceCopyAllValues(CFDictionaryRef buffer)
{
  if (buffer)
  {
    return IOSurfaceClientCopyAllValues(*(buffer + 1));
  }

  return buffer;
}

const __CFDictionary *sniffCleanApertureKeyToStruct(const __CFDictionary *result, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    goto LABEL_9;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFDictionaryGetTypeID();
  if (v4 == result)
  {
    v11 = 0.0;
    v12[0] = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    result = getDoubleFromDict(v3, @"Width", v12);
    if (result)
    {
      result = getDoubleFromDict(v3, @"Height", &v11);
      if (result)
      {
        result = getDoubleFromDict(v3, @"HorizontalOffset", &v10);
        if (result)
        {
          result = getDoubleFromDict(v3, @"VerticalOffset", &v9);
          if (result)
          {
            v5 = llround(v11 * 16.0);
            *a2 = llround(v12[0] * 16.0);
            *(a2 + 4) = 16;
            v6 = llround(v10 * 16.0);
            *(a2 + 8) = v5;
            *(a2 + 12) = 16;
            v7 = llround(v9 * 16.0);
            *(a2 + 16) = v6;
            *(a2 + 20) = 16;
            *(a2 + 24) = v7;
            *(a2 + 28) = 16;
LABEL_9:
            *(a2 + 136) |= 1uLL;
          }
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFNumberRef createSceneIlluminationFromStruct(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 112);
  v4[0] = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v4[0] = 0;
    }

    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v4);
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFNumberRef createEDRFactorFromStruct(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 96);
  if (v1)
  {
    v4[0] = *(a1 + 92) / v1;
    result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, v4);
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getDoubleFromDict(const __CFDictionary *a1, const void *a2, void *a3)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberDoubleType, a3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOSurfaceClientGetBaseAddressOfCompressedTileDataRegionOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2 || *(a1 + 228) > 1u)
  {
    return 0;
  }

  else
  {
    return *(a1 + 112) + *(a1 + 152 * a2 + 336);
  }
}

CFDataRef createContentLightLevelInfoFromStruct(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 88);
  v2 = *(a1 + 90);
  if (v1 || *(a1 + 90))
  {
    bytes[0] = HIBYTE(v1);
    bytes[1] = v1;
    bytes[2] = HIBYTE(v2);
    bytes[3] = v2;
    result = CFDataCreate(*MEMORY[0x1E695E480], bytes, 4);
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void IOSurfaceRemoveValue(IOSurfaceRef buffer, CFStringRef key)
{
  if (buffer)
  {
    if (key)
    {
      IOSurfaceClientRemoveValue(*(buffer + 1), key);
    }
  }
}

uint64_t IOSurfaceGetCacheMode(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientGetCacheMode(*(result + 8));
  }

  return result;
}

uint64_t IOSurfaceGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane(*(result + 8), a2);
  }

  return result;
}

xpc_object_t IOSurfaceCreateXPCObject(IOSurfaceRef aSurface)
{
  if (!aSurface)
  {
    return 0;
  }

  MachPort = IOSurfaceClientCreateMachPort(*(aSurface + 1));
  if (!MachPort)
  {
    return 0;
  }

  v2 = MachPort;
  v3 = xpc_mach_send_create();
  mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
  return v3;
}

uint64_t IOSurfaceClientGetBytesPerRowOfCompressedTileHeaderGroupsOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 352);
  }
}

const __CFDictionary *sniffPixelAspectRatioKeyToStruct(const __CFDictionary *result, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    goto LABEL_7;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFDictionaryGetTypeID();
  if (v4 == result)
  {
    v7 = 0.0;
    v8[0] = 0.0;
    result = getDoubleFromDict(v3, @"HorizontalSpacing", v8);
    if (result)
    {
      result = getDoubleFromDict(v3, @"VerticalSpacing", &v7);
      if (result)
      {
        v5 = llround(v7 * 16.0);
        *(a2 + 32) = llround(v8[0] * 16.0);
        *(a2 + 36) = 16;
        *(a2 + 40) = v5;
        *(a2 + 44) = 16;
LABEL_7:
        *(a2 + 136) |= 2uLL;
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceGetDetachModeCode(uint64_t a1)
{
  if (a1)
  {
    return IOSurfaceClientGetDetachModeCode(*(a1 + 8));
  }

  else
  {
    return 0xFFFFFFFFFFFFLL;
  }
}

void IOSurfaceSetValues(IOSurfaceRef buffer, CFDictionaryRef keysAndValues)
{
  if (buffer)
  {
    if (keysAndValues)
    {
      v4 = CFGetTypeID(keysAndValues);
      if (v4 == CFDictionaryGetTypeID())
      {
        v5 = *(buffer + 1);

        IOSurfaceClientSetValue(v5, 0, keysAndValues);
      }
    }
  }
}

CFTypeID sniffColorSpaceIDKeyToStruct(CFTypeID result, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (result && (v3 = result, TypeID = CFNumberGetTypeID(), result = CFGetTypeID(v3), TypeID == result))
  {
    result = CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr);
    v5 = valuePtr;
    if (valuePtr > 0xFF)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 101) = v5;
  *(a2 + 136) |= 0x20000uLL;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void serializeReplacementDictionaryKeysAndValues(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  v5 = serializeReplacementIOKitTypeRef(a2);
  CFDictionarySetValue(a3, a1, v5);

  CFRelease(v5);
}

uint64_t IOSurfaceClientSetDataProperty(uint64_t a1, unsigned int a2, size_t a3, const void *a4)
{
  input[2] = *MEMORY[0x1E69E9840];
  result = 3758097090;
  v8 = *(a1 + 120);
  input[0] = *(a1 + 136);
  input[1] = a2;
  if ((!a3 || a4) && a2 <= 4 && a3 <= 0x400)
  {
    if (a3 || a4 || ((*(v8 + 47) >> a2) & 1) != 0)
    {
      v9 = _ioSurfaceConnectInternal(0);
      result = IOConnectCallMethod(v9, 0x32u, input, 2u, a4, a3, 0, 0, 0, 0);
    }

    else
    {
      result = 0;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sniffColorPrimariesKeyToStruct(const __CFString *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *(a2 + 59) = 0;
    goto LABEL_9;
  }

  v9[0] = 0;
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID() && CFDictionaryGetValueIfPresent(_colorPrimariesKeysToStructDict, a1, v9))
  {
    *(a2 + 59) = v9[0];
LABEL_9:
    *(a2 + 136) |= 0x40uLL;
    goto LABEL_10;
  }

  if (CFStringHasPrefix(a1, @"ColorPrimaries#"))
  {
    Length = CFStringGetLength(a1);
    v10.location = CFStringGetLength(@"ColorPrimaries#");
    v10.length = Length - v10.location;
    v6 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v10);
    if (v6)
    {
      v7 = v6;
      *(a2 + 59) = CFStringGetIntValue(v6);
      *(a2 + 136) |= 0x40uLL;
      CFRelease(v7);
    }
  }

LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t IOSurfaceSetDataProperty(uint64_t a1, unsigned int a2, size_t a3, const void *a4)
{
  if (a1)
  {
    return IOSurfaceClientSetDataProperty(*(a1 + 8), a2, a3, a4);
  }

  else
  {
    return 3758097090;
  }
}

__CFString *createAlphaChannelModeFromStruct(uint64_t a1)
{
  v1 = *(a1 + 100);
  if (v1 == 1)
  {
    v2 = kIOSurfaceAlphaChannelMode_StraightAlpha;
    return *v2;
  }

  if (v1 == 2)
  {
    v2 = kIOSurfaceAlphaChannelMode_PremultipliedAlpha;
    return *v2;
  }

  return 0;
}

void sniffTransferFunctionKeyToStruct(const __CFString *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    *(a2 + 60) = 0;
    goto LABEL_9;
  }

  v9[0] = 0;
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID() && CFDictionaryGetValueIfPresent(_transferFunctionKeysToStructDict, a1, v9))
  {
    *(a2 + 60) = v9[0];
LABEL_9:
    *(a2 + 136) |= 0x80uLL;
    goto LABEL_10;
  }

  if (CFStringHasPrefix(a1, @"TransferFunction#"))
  {
    Length = CFStringGetLength(a1);
    v10.location = CFStringGetLength(@"TransferFunction#");
    v10.length = Length - v10.location;
    v6 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v10);
    if (v6)
    {
      v7 = v6;
      *(a2 + 60) = CFStringGetIntValue(v6);
      *(a2 + 136) |= 0x80uLL;
      CFRelease(v7);
    }
  }

LABEL_10:
  v8 = *MEMORY[0x1E69E9840];
}

CFTypeID sniffFieldCountKeyToStruct(CFTypeID result, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (!result)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFNumberGetTypeID();
  if (v4 == result)
  {
    result = CFNumberGetValue(v3, kCFNumberSInt8Type, &valuePtr);
    v5 = valuePtr;
LABEL_5:
    *(a2 + 56) = v5;
    *(a2 + 136) |= 8uLL;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID sniffAlphaChannelModeKeyToStruct(CFTypeID result, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFStringGetTypeID();
  if (v4 == result)
  {
    v7[0] = 0;
    result = CFDictionaryGetValueIfPresent(_premultipliedAlphaKeysToStructDict, v3, v7);
    if (result)
    {
      v5 = v7[0];
LABEL_6:
      *(a2 + 100) = v5;
      *(a2 + 136) |= 0x4000uLL;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID sniffChromaLocationBottomKeyToStruct(CFTypeID result, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFStringGetTypeID();
  if (v4 == result)
  {
    v7[0] = 0;
    result = CFDictionaryGetValueIfPresent(_chromaLocationKeysToStructDict, v3, v7);
    if (result)
    {
      v5 = v7[0];
LABEL_6:
      *(a2 + 62) = v5;
      *(a2 + 136) |= 0x200uLL;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceCreateWiringAssertion(uint64_t a1)
{
  v2 = [IOSurfaceWiringAssertion alloc];

  return [(IOSurfaceWiringAssertion *)v2 initWithIOSurface:a1];
}

IOSurfaceRef IOSurfaceLookupFromXPCObject(xpc_object_t xobj)
{
  if (!xobj)
  {
    return 0;
  }

  if (MEMORY[0x1B27205C0]() != MEMORY[0x1E69E9EC0])
  {
    return 0;
  }

  right = xpc_mach_send_get_right();
  if (!right)
  {
    return 0;
  }

  v3 = right;
  v4 = [IOSurface alloc];

  return [(IOSurface *)v4 initWithMachPort:v3];
}

uint64_t IOSurfaceClearDataProperties(uint64_t a1)
{
  if (a1)
  {
    return IOSurfaceClientClearDataProperties(*(a1 + 8));
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOSurfaceClientClearDataProperties(uint64_t a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 120) + 47))
  {
    input[0] = *(a1 + 136);
    v1 = _ioSurfaceConnectInternal(0);
    result = IOConnectCallMethod(v1, 0x34u, input, 1u, 0, 0, 0, 0, 0, 0);
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void insertKeyIfNotListedForRemoval(void *value, const void *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (CFSetContainsValue(*a3, value))
  {
    *(a3 + 16) = 1;
  }

  else
  {

    CFDictionarySetValue(v6, value, a2);
  }
}

uint64_t compareKeys(void *key, const void *a2, uint64_t a3)
{
  result = CFDictionaryGetValue(*a3, key);
  if (!result || (result = CFEqual(result, a2), !result))
  {
    *(a3 + 8) = 0;
  }

  return result;
}

uint64_t IOSurfaceClientSetYCbCrMatrix(uint64_t a1, unsigned int a2)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = *(a1 + 136);
  input[1] = a2;
  v2 = _ioSurfaceConnectInternal(0);
  result = IOConnectCallMethod(v2, 5u, input, 2u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void setEachValueInDictionary(CFTypeRef cf2, const void *a2, __CFDictionary *a3)
{
  if (!CFEqual(@"CreationProperties", cf2))
  {

    CFDictionarySetValue(a3, cf2, a2);
  }
}

uint64_t IOSurfaceSetYCbCrMatrix(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    return IOSurfaceClientSetYCbCrMatrix(*(a1 + 8), a2);
  }

  else
  {
    return 3758097090;
  }
}

void IOSurfaceRemoveAllValues(IOSurfaceRef buffer)
{
  if (buffer)
  {
    IOSurfaceClientRemoveValue(*(buffer + 1), 0);
  }
}

void removeAllButNameAndCreation(const void *a1, uint64_t a2, __CFDictionary *a3)
{
  if (a1 && !CFEqual(a1, @"IOSurfaceName") && !CFEqual(a1, @"CreationProperties"))
  {

    CFDictionaryRemoveValue(a3, a1);
  }
}

BOOL IOSurfaceSupportsProtectionOptions(_BOOL8 result, uint64_t a2)
{
  if (result)
  {
    return IOSurfaceClientSupportsProtectionOptions(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceSetTimestamp(uint64_t result, void *a2, void *a3, uint64_t a4)
{
  if (result)
  {
    return IOSurfaceClientSetTimestamp(*(result + 8), a2, a3, a4);
  }

  return result;
}

uint64_t IOSurfaceClientSetTimestamp(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  values[2] = *MEMORY[0x1E69E9840];
  result = 3758097090;
  if (a2 && a3)
  {
    values[0] = a2;
    values[1] = a3;
    v7 = CFArrayCreate(0, values, 2, MEMORY[0x1E695E9C0]);
    if (v7)
    {
      v8 = v7;
      v9 = IOCFSerialize(v7, 1uLL);
      CFRelease(v8);
      if (v9)
      {
        Length = CFDataGetLength(v9);
        v11 = malloc_type_malloc(Length + 16, 0x8A3A464uLL);
        *v11 = *(a1 + 136);
        v11[1] = a4;
        BytePtr = CFDataGetBytePtr(v9);
        memcpy(v11 + 2, BytePtr, Length);
        v13 = _ioSurfaceConnectInternal(0);
        IOConnectCallMethod(v13, 0x18u, 0, 0, v11, Length + 16, 0, 0, 0, 0);
        free(v11);
        CFRelease(v9);
      }

      result = 0;
    }

    else
    {
      result = 3758097084;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL IOSurfaceNeedsBindAccel(_BOOL8 result, int a2, int a3)
{
  if (result)
  {
    return IOSurfaceClientNeedsBindAccel(*(result + 8), a2, a3);
  }

  return result;
}

uint64_t IOSurfaceClientSetOwnershipIdentity(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  input[4] = *MEMORY[0x1E69E9840];
  input[0] = *(a1 + 136);
  input[1] = a2;
  input[2] = a3;
  input[3] = a4;
  v4 = _ioSurfaceConnectInternal(0);
  result = IOConnectCallMethod(v4, 0x2Cu, input, 4u, 0, 0, 0, 0, 0, 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceSetOwnershipIdentity(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  if (a1)
  {
    return IOSurfaceClientSetOwnershipIdentity(*(a1 + 8), a2, a3, a4);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOSurfaceCreateChildSurface(void *a1, void *a2)
{
  DictionaryAddingMissingProperties = _iosCreateDictionaryAddingMissingProperties(a2);
  v4 = [a1 newChildSurfaceWithProperties:DictionaryAddingMissingProperties];

  return v4;
}

BOOL IOSurfaceAppendTransaction(uint64_t a1, void *a2)
{
  if (!a1)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    IOSurfaceAppendTransaction_cold_3();
    return 0;
  }

  if (!a2)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    IOSurfaceAppendTransaction_cold_2();
    return 0;
  }

  if (IOSurfaceClientAppendTransaction(*(a1 + 8), [objc_msgSend(a2 "event")], objc_msgSend(a2, "waitValue"), objc_msgSend(a2, "isWrite")))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (!result)
    {
      return result;
    }

    IOSurfaceAppendTransaction_cold_1();
    return 0;
  }

  return 1;
}

uint64_t IOSurfacePruneTransactionList(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);

    return IOSurfaceClientPruneTransactionList(v2);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      IOSurfacePruneTransactionList_cold_1();
    }

    return 3758097090;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>>>::find<unsigned long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__hash_table<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,IOSurfaceTransaction *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,IOSurfaceTransaction *>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__shared_ptr_pointer<IOSurfaceTransactionSerialized  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B271FDF0);
}

uint64_t std::__shared_ptr_pointer<IOSurfaceTransactionSerialized  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void IOSurfaceLog(char *a1, ...)
{
  va_start(va, a1);
  __s[2] = *MEMORY[0x1E69E9840];
  __s[0] = 0;
  va_copy(&__s[1], va);
  vasprintf(__s, a1, va);
  if (__s[0])
  {
    v1 = strlen(__s[0]);
    v2 = _ioSurfaceConnectInternal(0);
    IOConnectCallMethod(v2, 0x13u, 0, 0, __s[0], v1 + 1, 0, 0, 0, 0);
    free(__s[0]);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t IOSurfaceClientDisallowForever()
{
  result = _ioSurfaceConnectInternal(1);
  if (result)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      IOSurfaceClientDisallowForever_cold_1();
    }

    abort();
  }

  return result;
}

uint64_t IOSurfaceClientPrefetchPages(uint64_t a1)
{
  pthread_mutex_lock((a1 + 40));
  if (*(a1 + 104))
  {
    v2 = 0;
  }

  else
  {
    v3 = [[IOSurfaceWiringAssertion alloc] initWithIOSurfaceClient:a1];
    *(a1 + 104) = v3;
    if (v3)
    {
      v2 = 0;
    }

    else
    {
      v2 = 3758097084;
    }
  }

  pthread_mutex_unlock((a1 + 40));
  return v2;
}

_DWORD *IOSurfaceClientRetain(_DWORD *a1)
{
  if (a1)
  {
    pthread_mutex_lock(&_iosCacheMutex);
    ++*a1;
    pthread_mutex_unlock(&_iosCacheMutex);
  }

  return a1;
}

uint64_t IOSurfaceClientGetElementHeightOfPlane(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 200) <= a2)
  {
    if (a2)
    {
      return 0;
    }

    v2 = (a1 + 211);
  }

  else
  {
    v2 = (a1 + 152 * a2 + 299);
  }

  return *v2;
}

uint64_t IOSurfaceClientGetOffsetOfPlane(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 200) <= a2)
  {
    if (a2)
    {
      return 0;
    }

    v2 = a1 + 176;
  }

  else
  {
    v2 = a1 + 152 * a2 + 272;
  }

  return *v2;
}

uint64_t IOSurfaceClientFlushProcessorCaches(uint64_t a1)
{
  result = IOSurfaceClientLock(a1, 1u, 0);
  if (!result)
  {
    sys_dcache_flush(*(a1 + 112), *(a1 + 192));

    return IOSurfaceClientUnlock(a1, 1u, 0);
  }

  return result;
}

uint64_t IOSurfaceClientCopyDataValueBytes(uint64_t a1, const __CFString *a2, _BYTE *a3, size_t *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = 3758097090;
  if (a2 && a3 && a4)
  {
    if (*a4)
    {
      if (*(*(a1 + 120) + 40))
      {
        v17[0] = *a4;
        ExternalRepresentation = CFStringCreateExternalRepresentation(0, a2, 0x8000100u, 0);
        v4 = 3758097136;
        if (ExternalRepresentation)
        {
          v9 = ExternalRepresentation;
          Length = CFDataGetLength(ExternalRepresentation);
          v11 = malloc_type_malloc(Length + 13, 0x76DD8853uLL);
          *a3 = 0;
          *v11 = *(a1 + 136);
          BytePtr = CFDataGetBytePtr(v9);
          memcpy(v11 + 3, BytePtr, Length);
          *(v11 + Length + 12) = 0;
          v13 = _ioSurfaceConnectInternal(0);
          v14 = IOConnectCallMethod(v13, 0x1Au, 0, 0, v11, Length + 13, 0, 0, a3, v17);
          v4 = v14;
          if (v14 && v14 != -536870181)
          {
            fprintf(*MEMORY[0x1E69E9848], "IOSurfaceClientGetValue getValueMethod kernel call failed %08x\n", v14);
          }

          else
          {
            *a4 = v17[0];
          }

          free(v11);
          CFRelease(v9);
        }
      }

      else
      {
        v4 = 3758097136;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t IOSurfaceClientSetTiled(uint64_t a1, unsigned int a2)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = *(a1 + 136);
  input[1] = a2;
  v2 = _ioSurfaceConnectInternal(0);
  result = IOConnectCallMethod(v2, 0x16u, input, 2u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceClientGetTileFormat(uint64_t a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  output = 0;
  input[0] = *(a1 + 136);
  outputCnt = 1;
  v1 = _ioSurfaceConnectInternal(0);
  if (IOConnectCallMethod(v1, 0x19u, input, 1u, 0, 0, &output, &outputCnt, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = output;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceClientWrapClientImage(int a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v55 = *MEMORY[0x1E69E9840];
  v15 = 3176;
  if (a3 > 1380401728)
  {
    if (a3 <= 1395864161)
    {
      if (a3 != 1380401729)
      {
        if (a3 == 1380410945)
        {
          v7 = 16;
          goto LABEL_25;
        }

        if (a3 == 1380411457)
        {
          v7 = 8;
          goto LABEL_25;
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (a3 > 1395996212)
      {
        if (a3 == 1395996213)
        {
          goto LABEL_24;
        }

        v6 = 1932866865;
        goto LABEL_23;
      }

      if (a3 != 1395864162)
      {
        v6 = 1395995957;
        goto LABEL_23;
      }
    }

LABEL_18:
    v7 = 4;
    goto LABEL_25;
  }

  if (a3 > 1278555444)
  {
    if (a3 <= 1279340599)
    {
      if (a3 != 1278555445)
      {
        v6 = 1278555701;
        goto LABEL_23;
      }

LABEL_24:
      v7 = 2;
      goto LABEL_25;
    }

    if (a3 == 1279340600)
    {
      goto LABEL_24;
    }

    v6 = 1279342648;
LABEL_23:
    if (a3 == v6)
    {
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  if (a3 == 875836468 || a3 == 892679473)
  {
    goto LABEL_24;
  }

  if (a3 == 1111970369)
  {
    goto LABEL_18;
  }

LABEL_31:
  v7 = 1;
LABEL_25:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  outputStruct = 0u;
  v17 = 0u;
  inputStruct = a6;
  v49 = a1;
  v50 = a2;
  v51 = a3;
  v52 = v7;
  v53 = a4;
  v54 = a5;
  v8 = _ioSurfaceConnectInternal(0);
  v9 = 0;
  if (!IOConnectCallMethod(v8, 6u, 0, 0, &inputStruct, 0x20uLL, 0, 0, &outputStruct, &v15))
  {
    v10 = _ioSurfaceClientCreateWithLockResult(&outputStruct);
    if (v10)
    {
      v9 = v10;
      pthread_mutex_lock(&_iosCacheMutex);
      _ioSurfaceAddClientRef(v9);
      pthread_mutex_unlock(&_iosCacheMutex);
    }

    else
    {
      v11 = DWORD2(v17);
      v12 = _ioSurfaceConnectInternal(0);
      IOConnectTrap1(v12, 5u, v11);
      v9 = 0;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t IOSurfaceClientWrapClientMemory(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  outputStruct = 0u;
  v9 = 3176;
  input[0] = a1;
  input[1] = a2;
  v2 = _ioSurfaceConnectInternal(0);
  v3 = 0;
  if (!IOConnectCallMethod(v2, 7u, input, 2u, 0, 0, 0, 0, &outputStruct, &v9))
  {
    v4 = _ioSurfaceClientCreateWithLockResult(&outputStruct);
    if (v4)
    {
      v3 = v4;
      pthread_mutex_lock(&_iosCacheMutex);
      _ioSurfaceAddClientRef(v3);
      pthread_mutex_unlock(&_iosCacheMutex);
    }

    else
    {
      v5 = DWORD2(v12);
      v6 = _ioSurfaceConnectInternal(0);
      IOConnectTrap1(v6, 5u, v5);
      v3 = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t IOSurfaceClientSetSurfaceNotify(mach_port_t a1, uint64_t a2, unint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  reference[0] = 0;
  inputStruct[1] = a3;
  inputStruct[2] = 0;
  inputStruct[0] = a2;
  reference[1] = a2;
  v9 = a3;
  v4 = _ioSurfaceConnectInternal(0);
  result = IOConnectCallAsyncMethod(v4, 0x11u, a1, reference, 3u, 0, 0, inputStruct, 0x18uLL, 0, 0, 0, 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceClientRemoveSurfaceNotify(uint64_t a1)
{
  inputStruct[3] = *MEMORY[0x1E69E9840];
  inputStruct[0] = 0;
  inputStruct[1] = a1;
  inputStruct[2] = 0;
  v1 = _ioSurfaceConnectInternal(0);
  result = IOConnectCallMethod(v1, 0x12u, 0, 0, inputStruct, 0x18uLL, 0, 0, 0, 0);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceClientGetUseCount(uint64_t a1)
{
  if (*(a1 + 221))
  {
    snprintf(crashMessage, 0x100uLL, "IOSurfaceGetUseCount: error: Attempt to query use count on an IOSurface (%p) created with kIOSurfaceProhibitUseCount.", a1);
    qword_1EB6CFC38 = crashMessage;
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v2)
    {
      IOSurfaceClientIncrementUseCountForCategory_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    abort();
  }

  return (HIDWORD(*(a1 + 8)) + *(a1 + 8));
}

BOOL IOSurfaceClientIsInUseForCategory(uint64_t a1, unsigned int a2)
{
  if (a2 >= 2)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"category out of range"];
  }

  if (*(a1 + 221))
  {
    snprintf(crashMessage, 0x100uLL, "IOSurfaceIsInUseForCategory: error: Attempt to query use count on an IOSurface (%p) created with kIOSurfaceProhibitUseCount.", a1);
    qword_1EB6CFC38 = crashMessage;
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v6)
    {
      IOSurfaceClientIncrementUseCountForCategory_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    abort();
  }

  v4 = *(*(a1 + 120) + 24);
  if (a2)
  {
    LODWORD(v4) = HIDWORD(*(*(a1 + 120) + 24));
  }

  return v4 != 0;
}

BOOL IOSurfaceClientIsInUseForAnyOtherCategory(uint64_t a1, unsigned int a2)
{
  if (a2 >= 2)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"category out of range"];
  }

  if (*(a1 + 221))
  {
    snprintf(crashMessage, 0x100uLL, "IOSurfaceIsInUseForAnyOtherCategory: error: Attempt to query use count on an IOSurface (%p) created with kIOSurfaceProhibitUseCount.", a1);
    qword_1EB6CFC38 = crashMessage;
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (v6)
    {
      IOSurfaceClientIncrementUseCountForCategory_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    abort();
  }

  v4 = *(*(a1 + 120) + 24);
  if (a2 != 1)
  {
    LODWORD(v4) = HIDWORD(*(*(a1 + 120) + 24));
  }

  return v4 != 0;
}

uint64_t IOSurfaceClientSignalEvent(uint64_t a1, unsigned int a2, uintptr_t a3, uintptr_t a4)
{
  v8 = _ioSurfaceConnectInternal(0);
  v9 = *(a1 + 136);

  return IOConnectTrap4(v8, 0xAu, v9, a4, a2, a3);
}

uint64_t IOSurfaceClientGetNumberOfComponentsOfPlane(uint64_t a1, unint64_t a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 300);
  }
}

uint64_t IOSurfaceClientGetNameOfComponentOfPlane(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  v3 = a1 + 152 * a2;
  if (*(v3 + 300) <= a3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 248 + a3 + 64);
  }
}

uint64_t IOSurfaceClientGetTypeOfComponentOfPlane(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  v3 = a1 + 152 * a2;
  if (*(v3 + 300) <= a3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 248 + a3 + 68);
  }
}

uint64_t IOSurfaceClientGetRangeOfComponentOfPlane(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  v3 = a1 + 152 * a2;
  if (*(v3 + 300) <= a3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 248 + a3 + 72);
  }
}

uint64_t IOSurfaceClientGetBitDepthOfComponentOfPlane(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  v3 = a1 + 152 * a2;
  if (*(v3 + 300) <= a3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 248 + a3 + 56);
  }
}

uint64_t IOSurfaceClientGetBitOffsetOfComponentOfPlane(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  v3 = a1 + 152 * a2;
  if (*(v3 + 300) <= a3)
  {
    return 0;
  }

  else
  {
    return *(v3 + 248 + a3 + 60);
  }
}

uint64_t IOSurfaceClientGetBytesPerCompressedTileHeaderOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 340);
  }
}

uint64_t IOSurfaceClientGetHorizontalPixelOffsetWithinCompressedTileArrayOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 360);
  }
}

uint64_t IOSurfaceClientGetVerticalPixelOffsetWithinCompressedTileArrayOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 362);
  }
}

uint64_t IOSurfaceClientGetBytesPerRowOfTileDataOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 372);
  }
}

uint64_t IOSurfaceClientGetHTPCPredictionSelectorOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 357);
  }
}

uint64_t IOSurfaceClientGetHTPCVerticalHeaderGroupingModeOfPlane(uint64_t a1, unsigned int a2)
{
  if (a2 && *(a1 + 200) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 152 * a2 + 358);
  }
}

uint64_t IOSurfaceClientGetCompressedTileDataRegionMemoryUsedOfPlane(uint64_t a1, unsigned int a2, void *a3)
{
  result = 3758097090;
  if (a2 <= 4 && *(a1 + 200) > a2)
  {
    result = 0;
    *a3 = *(*(a1 + 120) + 4 * a2 + 180);
  }

  return result;
}

uint64_t IOSurfaceClientGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a3 && *(a1 + 200) <= a3 || a2 && *(a1 + 228) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 112) + *(a1 + 152 * a3 + 332) + *(a1 + 152 * a3 + 380) * a2;
  }
}

uint64_t IOSurfaceClientGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a3 && *(a1 + 200) <= a3 || a2 && *(a1 + 228) <= a2)
  {
    return 0;
  }

  else
  {
    return *(a1 + 112) + *(a1 + 152 * a3 + 336) + *(a1 + 152 * a3 + 376) * a2;
  }
}

uint64_t IOSurfaceClientSetIndexedTimestamp(uint64_t result, uint64_t a2, uint64_t a3)
{
  input[3] = *MEMORY[0x1E69E9840];
  if (a2 <= 4)
  {
    if (byte_1ED4CE0C8 == 1)
    {
      *(*(result + 128) + 8 * a2) = a3;
    }

    else
    {
      input[0] = *(result + 136);
      input[1] = a2;
      input[2] = a3;
      v3 = _ioSurfaceConnectInternal(0);
      result = IOConnectCallMethod(v3, 0x21u, input, 3u, 0, 0, 0, 0, 0, 0);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceClientGetDataProperty(uint64_t a1, unsigned int a2, size_t a3, void *a4, void *a5)
{
  input[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 120);
  input[0] = *(a1 + 136);
  input[1] = a2;
  v15 = a3;
  output = 0;
  v17 = 0;
  outputCnt = 2;
  if (a3)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  result = 3758097090;
  if (a2 <= 4 && (v7 & 1) == 0)
  {
    if (((*(v5 + 47) >> a2) & 1) == 0)
    {
      v12 = 0;
      result = 0;
      goto LABEL_14;
    }

    v11 = _ioSurfaceConnectInternal(0);
    result = IOConnectCallMethod(v11, 0x33u, input, 2u, 0, 0, &output, &outputCnt, a5, &v15);
    if (!result)
    {
      result = output;
      if (a4)
      {
        v12 = v17;
LABEL_14:
        *a4 = v12;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceClientAppendTransaction(uint64_t a1, unsigned int a2, uintptr_t a3, unsigned int a4)
{
  v8 = _ioSurfaceConnectInternal(0);
  v9 = *(a1 + 136);

  return IOConnectTrap4(v8, 0xBu, v9, a2, a3, a4);
}

uint64_t IOSurfaceClientPruneTransactionList(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = _ioSurfaceConnectInternal(0);

  return IOConnectTrap1(v2, 0xCu, v1);
}

void serializeReplacementArrayValues(uint64_t a1, __CFArray *a2)
{
  v3 = serializeReplacementIOKitTypeRef(a1);
  CFArrayAppendValue(a2, v3);

  CFRelease(v3);
}

void serializeReplacementSetValues(uint64_t a1, __CFSet *a2)
{
  v3 = serializeReplacementIOKitTypeRef(a1);
  CFSetAddValue(a2, v3);

  CFRelease(v3);
}

void unserializeReplacementSetValues(uint64_t a1, __CFSet *a2)
{
  v3 = unserializeReplacementIOKitTypeRef(a1, 0);
  CFSetAddValue(a2, v3);

  CFRelease(v3);
}

uint64_t IOSurfaceAcceleratorGetTypeID()
{
  v0 = off_1ED4CDE50;
  if (!off_1ED4CDE50)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v0 = off_1ED4CDE50;
    if (!off_1ED4CDE50)
    {
      abort();
    }
  }

  return v0();
}

uint64_t IOSurfaceAcceleratorGetServiceObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = off_1ED4CDE60;
  if (!off_1ED4CDE60)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v6 = off_1ED4CDE60;
    if (!off_1ED4CDE60)
    {
      abort();
    }
  }

  return v6(a1, a2, a3);
}

uint64_t IOSurfaceAcceleratorCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = off_1ED4CDE70;
  if (!off_1ED4CDE70)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v6 = off_1ED4CDE70;
    if (!off_1ED4CDE70)
    {
      abort();
    }
  }

  return v6(a1, a2, a3);
}

uint64_t IOSurfaceAcceleratorGetID(uint64_t a1, uint64_t a2)
{
  v4 = off_1ED4CDE80;
  if (!off_1ED4CDE80)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v4 = off_1ED4CDE80;
    if (!off_1ED4CDE80)
    {
      abort();
    }
  }

  return v4(a1, a2);
}

uint64_t IOSurfaceAcceleratorGetRunLoopSource(uint64_t a1)
{
  v2 = off_1ED4CDE90;
  if (!off_1ED4CDE90)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v2 = off_1ED4CDE90;
    if (!off_1ED4CDE90)
    {
      abort();
    }
  }

  return v2(a1);
}

uint64_t IOSurfaceAcceleratorConfigurePerformanceStats(uint64_t a1, uint64_t a2)
{
  v4 = off_1ED4CDEA0;
  if (!off_1ED4CDEA0)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v4 = off_1ED4CDEA0;
    if (!off_1ED4CDEA0)
    {
      abort();
    }
  }

  return v4(a1, a2);
}

uint64_t IOSurfaceAcceleratorGetStatistics(uint64_t a1)
{
  v2 = off_1ED4CDEB0;
  if (!off_1ED4CDEB0)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v2 = off_1ED4CDEB0;
    if (!off_1ED4CDEB0)
    {
      abort();
    }
  }

  return v2(a1);
}

uint64_t IOSurfaceAcceleratorTransformSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = off_1ED4CDEC0;
  if (!off_1ED4CDEC0)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v16 = off_1ED4CDEC0;
    if (!off_1ED4CDEC0)
    {
      abort();
    }
  }

  return v16(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t IOSurfaceAcceleratorTransferSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = off_1ED4CDED0;
  if (!off_1ED4CDED0)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v14 = off_1ED4CDED0;
    if (!off_1ED4CDED0)
    {
      abort();
    }
  }

  return v14(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t IOSurfaceAcceleratorAbortTransfers(uint64_t a1)
{
  v2 = off_1ED4CDEE0;
  if (!off_1ED4CDEE0)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v2 = off_1ED4CDEE0;
    if (!off_1ED4CDEE0)
    {
      abort();
    }
  }

  return v2(a1);
}

uint64_t IOSurfaceAcceleratorTransferSurfaceWithSwap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = off_1ED4CDF10;
  if (!off_1ED4CDF10)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v17 = off_1ED4CDF10;
    if (!off_1ED4CDF10)
    {
      abort();
    }
  }

  return v17(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t IOSurfaceAcceleratorConditionalTransferSurfaceWithSwap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = off_1ED4CDF20;
  if (!off_1ED4CDF20)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v14 = off_1ED4CDF20;
    if (!off_1ED4CDF20)
    {
      abort();
    }
  }

  return v14(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t IOSurfaceAcceleratorBlitSurface(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = off_1ED4CDF30;
  if (!off_1ED4CDF30)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v17 = off_1ED4CDF30;
    if (!off_1ED4CDF30)
    {
      abort();
    }
  }

  v22 = *a3;
  v23 = *(a3 + 2);
  v20 = *a5;
  v21 = *(a5 + 2);
  result = v17(a1, a2, &v22, a4, &v20, a6, a7, a8, a9);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceAcceleratorBlitSurfaceWithSwap(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = off_1ED4CDF40;
  if (!off_1ED4CDF40)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v19 = off_1ED4CDF40;
    if (!off_1ED4CDF40)
    {
      abort();
    }
  }

  v24 = *a3;
  v25 = *(a3 + 2);
  v22 = *a5;
  v23 = *(a5 + 2);
  result = v19(a1, a2, &v24, a4, &v22, a6, a7, a8, a9, a10, a11);
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceAcceleratorAbortCaptures(uint64_t a1)
{
  v2 = off_1ED4CDF50;
  if (!off_1ED4CDF50)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v2 = off_1ED4CDF50;
    if (!off_1ED4CDF50)
    {
      abort();
    }
  }

  return v2(a1);
}

uint64_t IOSurfaceAcceleratorCaptureSurface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = off_1ED4CDF60;
  if (!off_1ED4CDF60)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v10 = off_1ED4CDF60;
    if (!off_1ED4CDF60)
    {
      abort();
    }
  }

  return v10(a1, a2, a3, a4, a5);
}

uint64_t IOSurfaceAcceleratorSetFilterCoefficients(uint64_t a1, uint64_t a2)
{
  v4 = off_1ED4CDEF0;
  if (!off_1ED4CDEF0)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v4 = off_1ED4CDEF0;
    if (!off_1ED4CDEF0)
    {
      abort();
    }
  }

  return v4(a1, a2);
}

uint64_t IOSurfaceAcceleratorSetCustomFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = off_1ED4CDF00;
  if (!off_1ED4CDF00)
  {
    pthread_once(&_iosaInitStubs_once, _iosaLookupStubs);
    v16 = off_1ED4CDF00;
    if (!off_1ED4CDF00)
    {
      abort();
    }
  }

  return v16(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t _iosaLookupStubs()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/IOSurfaceAccelerator.framework/IOSurfaceAccelerator", 1);
  if (v0)
  {
    v1 = v0;
    v2 = &off_1ED4CDE50;
    v3 = MEMORY[0x1E69E9848];
    v4 = 18;
    do
    {
      result = dlsym(v1, *(v2 - 1));
      *v2 = result;
      if (!result)
      {
        v6 = *v3;
        v7 = dlerror();
        result = fprintf(v6, "%s, Line=%d, Error=%s\n", "_iosaLookupStubs", 174, v7);
      }

      v2 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v8 = *MEMORY[0x1E69E9848];
    v9 = dlerror();
    return fprintf(v8, "%s, Line=%d, Error=%s\n", "_iosaLookupStubs", 160, v9);
  }

  return result;
}

uint64_t IOSurfaceSharedEventCreateWithMachPort(uint64_t a1)
{
  v2 = [IOSurfaceSharedEvent alloc];

  return [(IOSurfaceSharedEvent *)v2 initWithMachPort:a1];
}

uint64_t IOSurfaceSharedEventNotifyEventListener(void *a1, void *a2, unsigned int a3, uint64_t a4, void *aBlock)
{
  input[5] = *MEMORY[0x1E69E9840];
  v9 = _Block_copy(aBlock);
  input[0] = a3;
  input[1] = a1;
  input[2] = a2;
  input[3] = v9;
  input[4] = a4;
  v10 = a1;
  v11 = a2;
  if (_iosEventBlockOnce != -1)
  {
    IOSurfaceSharedEventNotifyEventListener_cold_1();
  }

  pthread_mutex_lock(&_iosEventBlockMutex);
  CFArrayAppendValue(_iosEventBlockArray, v9);
  pthread_mutex_unlock(&_iosEventBlockMutex);
  v12 = _ioSurfaceConnect();
  v13 = IOConnectCallMethod(v12, 0x27u, input, 5u, 0, 0, 0, 0, 0, 0);
  if (v13)
  {

    _iosRemoveEventBlock(v9);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t IOSurfaceSharedEventRemoveEventListener(uint64_t a1)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = a1;
  v1 = _ioSurfaceConnect();
  result = IOConnectCallMethod(v1, 0x29u, input, 1u, 0, 0, 0, 0, 0, 0);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void _ioSurfaceEventNotificationCallback2(void *a1, int a2, void *a3)
{
  if (a2)
  {
    _ioSurfaceEventNotificationCallback2_cold_1();
  }

  v3 = *a3;
  if (!*a3)
  {
    _ioSurfaceEventNotificationCallback2_cold_2();
  }

  v5 = a3[1];
  (v3)[2](*a3, v5, a3[2]);

  _iosRemoveEventBlock(v3);

  _Block_release(v3);
}

uint64_t _iosRemoveEventBlock(const void *a1)
{
  pthread_mutex_lock(&_iosEventBlockMutex);
  v2 = _iosEventBlockArray;
  v6.length = CFArrayGetCount(_iosEventBlockArray);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v2, v6, a1);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(_iosEventBlockArray, FirstIndexOfValue);
  }

  return pthread_mutex_unlock(&_iosEventBlockMutex);
}

uint64_t IOSurfaceSignalEvent(uint64_t a1, void *a2, uintptr_t a3, uintptr_t a4)
{
  v6 = *(a1 + 8);
  v7 = [a2 eventPort];

  return IOSurfaceClientSignalEvent(v6, v7, a3, a4);
}

CFMutableArrayRef ___iosAddEventBlock_block_invoke()
{
  result = CFArrayCreateMutable(0, 0, 0);
  _iosEventBlockArray = result;
  return result;
}

__CFString *createChromaSubsamplingFromStruct(uint64_t a1)
{
  v1 = *(a1 + 63);
  switch(v1)
  {
    case 3:
      v2 = kIOSurfaceChromaSubsampling_411;
      return *v2;
    case 2:
      v2 = kIOSurfaceChromaSubsampling_422;
      return *v2;
    case 1:
      v2 = kIOSurfaceChromaSubsampling_420;
      return *v2;
  }

  return 0;
}

CFNumberRef createHorizontalDisparityAdjustmentFromStruct(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  valuePtr = *(a1 + 128);
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID sniffGammaLevelKeyToStruct(CFTypeID result, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    *(a2 + 48) = 0;
    goto LABEL_5;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFNumberGetTypeID();
  if (v4 == result)
  {
    v6[0] = 0.0;
    result = CFNumberGetValue(v3, kCFNumberDoubleType, v6);
    *(a2 + 48) = llround(v6[0] * 268435456.0);
    *(a2 + 52) = 0x10000000;
LABEL_5:
    *(a2 + 136) |= 4uLL;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID sniffFieldDetailKeyToStruct(CFTypeID result, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFStringGetTypeID();
  if (v4 == result)
  {
    v7[0] = 0;
    result = CFDictionaryGetValueIfPresent(_fieldDetailKeysToStructDict, v3, v7);
    if (result)
    {
      v5 = v7[0];
LABEL_6:
      *(a2 + 57) = v5;
      *(a2 + 136) |= 0x10uLL;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID sniffChromaSubsamplingKeyToStruct(CFTypeID result, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFStringGetTypeID();
  if (v4 == result)
  {
    v7[0] = 0;
    result = CFDictionaryGetValueIfPresent(_chromaSubsamplingKeysToStructDict, v3, v7);
    if (result)
    {
      v5 = v7[0];
LABEL_6:
      *(a2 + 63) = v5;
      *(a2 + 136) |= 0x400uLL;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID sniffEDRFactorKeyToStruct(CFTypeID result, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    *(a2 + 92) = 0;
    *(a2 + 96) = 0;
    goto LABEL_5;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFNumberGetTypeID();
  if (v4 == result)
  {
    v6[0] = 0.0;
    result = CFNumberGetValue(v3, kCFNumberDoubleType, v6);
    *(a2 + 92) = llround(v6[0] * 1048576.0);
    *(a2 + 96) = 0x100000;
LABEL_5:
    *(a2 + 136) |= 0x2000uLL;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sniffMasteringDisplayColorVolumeKeyToStruct(const void *a1, uint64_t a2)
{
  v3 = a1;
  v30 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (!a1)
  {
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  TypeID = CFDataGetTypeID();
  if (TypeID != CFGetTypeID(v3) || CFDataGetLength(v3) != 24)
  {
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    LODWORD(a1) = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    LOWORD(v3) = 0;
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v31.location = 0;
  v31.length = 24;
  CFDataGetBytes(v3, v31, &v27);
  v5 = v27;
  LOWORD(v3) = BYTE1(v27);
  v6 = BYTE2(v27);
  v7 = BYTE3(v27);
  v8 = BYTE4(v27);
  v9 = BYTE5(v27);
  v10 = BYTE6(v27);
  v11 = HIBYTE(v27);
  v12 = v28;
  LODWORD(a1) = BYTE1(v28);
  v13 = BYTE2(v28);
  v14 = BYTE3(v28);
  v15 = BYTE4(v28);
  v16 = BYTE5(v28);
  v17 = BYTE6(v28);
  v18 = HIBYTE(v28);
  v19 = v29 << 24;
  v20 = BYTE1(v29) << 16;
  v21 = BYTE2(v29) << 8;
  v22 = BYTE3(v29);
LABEL_8:
  *(a2 + 64) = v3 | (v5 << 8);
  *(a2 + 66) = v7 | (v6 << 8);
  *(a2 + 68) = v9 | (v8 << 8);
  *(a2 + 70) = v11 | (v10 << 8);
  result = a1 | (v12 << 8);
  *(a2 + 72) = result;
  *(a2 + 74) = v14 | (v13 << 8);
  *(a2 + 76) = v16 | (v15 << 8);
  *(a2 + 78) = v18 | (v17 << 8);
  v24 = v20 | v19 | v21 | v22;
  v25 = bswap32(HIDWORD(v29));
  *(a2 + 80) = v24;
  *(a2 + 84) = v25;
  *(a2 + 136) |= 0x800uLL;
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID sniffSceneIlluminationKeyToStruct(CFTypeID result, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!result)
  {
    v5 = 0;
LABEL_8:
    *(a2 + 112) = v5;
    *(a2 + 136) |= 0x10000uLL;
    goto LABEL_9;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFNumberGetTypeID();
  if (v4 == result)
  {
    result = CFNumberGetValue(v3, kCFNumberSInt64Type, v7);
    v5 = v7[0];
    if (!HIDWORD(v7[0]))
    {
      if (v7[0] <= 1uLL)
      {
        v5 = 1;
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID sniffVersatileSenselArrayPatternKeyToStruct(CFTypeID result, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (!result)
  {
    v5 = 0;
LABEL_7:
    *(a2 + 102) = v5;
    *(a2 + 136) |= 0x40000uLL;
    goto LABEL_8;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFNumberGetTypeID();
  if (v4 == result)
  {
    result = CFNumberGetValue(v3, kCFNumberSInt8Type, &valuePtr);
    v5 = valuePtr;
    if (!valuePtr)
    {
      v5 = -1;
    }

    goto LABEL_7;
  }

LABEL_8:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFDictionary *sniffDisplayMaskRectangleKeyToStruct(const __CFDictionary *result, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    *(a2 + 124) = 0;
    *(a2 + 116) = 0;
    goto LABEL_11;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFDictionaryGetTypeID();
  if (v4 == result)
  {
    v7 = 0;
    v8 = 0;
    v6 = 0;
    result = getUInt16FromDict(v3, @"ReferenceRasterWidth", &v8 + 2);
    if (result)
    {
      result = getUInt16FromDict(v3, @"ReferenceRasterHeight", &v8);
      if (result)
      {
        result = getUInt16FromDict(v3, @"RectangleLeft", &v7 + 2);
        if (result)
        {
          result = getUInt16FromDict(v3, @"RectangleWidth", &v6 + 2);
          if (result)
          {
            result = getUInt16FromDict(v3, @"RectangleTop", &v7);
            if (result)
            {
              result = getUInt16FromDict(v3, @"RectangleHeight", &v6);
              if (result)
              {
                *(a2 + 116) = HIWORD(v8);
                *(a2 + 118) = v8;
                *(a2 + 120) = HIWORD(v7);
                *(a2 + 122) = HIWORD(v6);
                *(a2 + 124) = v7;
                *(a2 + 126) = v6;
LABEL_11:
                *(a2 + 136) |= 0x80000uLL;
              }
            }
          }
        }
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID sniffHorizontalDisparityAdjustmentKeyToStruct(CFTypeID result, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (!result)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  result = CFNumberGetTypeID();
  if (v4 == result)
  {
    result = CFNumberGetValue(v3, kCFNumberSInt16Type, &valuePtr);
    v5 = valuePtr;
LABEL_5:
    *(a2 + 128) = v5;
    *(a2 + 136) |= 0x100000uLL;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getUInt16FromDict(const __CFDictionary *a1, const void *a2, void *a3)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberSInt16Type, a3);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void _dispatchUnrecognizedCodePointString(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = a1[2];
  Value = CFDictionaryGetValue(v4, v3);
  if (!Value)
  {
    Value = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@%d", v2, v3);
    if (Value)
    {
      CFDictionarySetValue(v4, v3, Value);
      CFRelease(Value);
    }
  }

  a1[3] = Value;
}

uint64_t IOSurfaceCreateMachPortWithOptions(uint64_t a1, uint64_t a2)
{
  if (!a1 || (a2 & 1) != 0)
  {
    return 0;
  }

  else
  {
    return IOSurfaceClientCreateMachPortWithOptions(*(a1 + 8), a2);
  }
}

uint64_t IOSurfaceGetTileFormat(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientGetTileFormat(*(result + 8));
  }

  return result;
}

uint32_t IOSurfaceGetSeed(IOSurfaceRef buffer)
{
  if (buffer)
  {
    LODWORD(buffer) = IOSurfaceClientGetSeed(*(buffer + 1));
  }

  return buffer;
}

uint64_t IOSurfaceLockPlane(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (a1)
  {
    return IOSurfaceClientLock(*(a1 + 8), a3, a4);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOSurfaceUnlockPlane(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  if (a1)
  {
    return IOSurfaceClientUnlock(*(a1 + 8), a3, a4);
  }

  else
  {
    return 3758097090;
  }
}

size_t IOSurfaceGetElementHeightOfPlane(size_t buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceClientGetElementHeightOfPlane(*(buffer + 8), planeIndex);
  }

  return buffer;
}

uint64_t IOSurfaceGetOffsetOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetOffsetOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceGetSeedOfPlane(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientGetSeed(*(result + 8));
  }

  return result;
}

uint64_t IOSurfaceFlushProcessorCaches(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientFlushProcessorCaches(*(result + 8));
  }

  return result;
}

uint64_t IOSurfaceBindAccelOnPlane(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a1)
  {
    return IOSurfaceClientBindAccel(*(a1 + 8), a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

BOOL IOSurfaceNeedsBindAccelOnPlane(_BOOL8 result, int a2, int a3)
{
  if (result)
  {
    return IOSurfaceClientNeedsBindAccel(*(result + 8), a2, a3);
  }

  return result;
}

uint64_t IOSurfaceCopyDataValueBytes(uint64_t result, const __CFString *a2, _BYTE *a3, size_t *a4)
{
  if (result)
  {
    return IOSurfaceClientCopyDataValueBytes(*(result + 8), a2, a3, a4);
  }

  return result;
}

int32_t IOSurfaceGetUseCount(IOSurfaceRef buffer)
{
  if (buffer)
  {
    LODWORD(buffer) = IOSurfaceClientGetUseCount(*(buffer + 1));
  }

  return buffer;
}

uint64_t IOSurfaceIncrementUseCountForCategory(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientIncrementUseCountForCategory(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceDecrementUseCountForCategory(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientDecrementUseCountForCategory(*(result + 8), a2);
  }

  return result;
}

BOOL IOSurfaceIsInUseForCategory(_BOOL8 result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientIsInUseForCategory(*(result + 8), a2);
  }

  return result;
}

BOOL IOSurfaceIsInUseForAnyOtherCategory(_BOOL8 result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientIsInUseForAnyOtherCategory(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceGetProhibitUseCount(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientGetProhibitUseCount(*(result + 8));
  }

  return result;
}

IOSurface *IOSurfaceWrapClientImage(int a1, int a2, int a3, int a4, int a5, uint64_t a6)
{
  result = IOSurfaceClientWrapClientImage(a1, a2, a3, a4, a5, a6);
  if (result)
  {
    v7 = result;
    result = [[IOSurface alloc] initWithClientBuffer:result];
    if (!result)
    {
      IOSurfaceClientRelease(v7);
      return 0;
    }
  }

  return result;
}

IOSurface *IOSurfaceWrapClientMemory(uint64_t a1, uint64_t a2)
{
  result = IOSurfaceClientWrapClientMemory(a1, a2);
  if (result)
  {
    v3 = result;
    result = [[IOSurface alloc] initWithClientBuffer:result];
    if (!result)
    {
      IOSurfaceClientRelease(v3);
      return 0;
    }
  }

  return result;
}

uint64_t IOSurfaceSetTiled(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    return IOSurfaceClientSetTiled(*(a1 + 8), a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOSurfaceGetBitsPerBlock(uint64_t result)
{
  if (result)
  {
    return 8 * IOSurfaceClientGetBytesPerElement(*(result + 8));
  }

  return result;
}

uint64_t IOSurfaceGetBitsPerBlockOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return 8 * IOSurfaceClientGetBytesPerElementOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceGetBlockWidthOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetElementWidthOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceGetBlockHeightOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetElementHeightOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceSetBulkAttachments(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  if (a1)
  {
    return IOSurfaceClientSetBulkAttachments(*(a1 + 8), a2, a3, a4);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t IOSurfacePrefetchPages(uint64_t a1)
{
  if (a1)
  {
    return IOSurfaceClientPrefetchPages(*(a1 + 8));
  }

  else
  {
    return 3758097090;
  }
}

BOOL IOSurfaceIsDisplayable(_BOOL8 result)
{
  if (result)
  {
    return IOSurfaceClientIsDisplayable(*(result + 8));
  }

  return result;
}

BOOL IOSurfaceIsSysMemOnly(_BOOL8 result)
{
  if (result)
  {
    return IOSurfaceClientIsSysMemOnly(*(result + 8));
  }

  return result;
}

size_t IOSurfaceGetNumberOfComponentsOfPlane(size_t buffer, size_t planeIndex)
{
  if (buffer)
  {
    return IOSurfaceClientGetNumberOfComponentsOfPlane(*(buffer + 8), planeIndex);
  }

  return buffer;
}

IOSurfaceComponentName IOSurfaceGetNameOfComponentOfPlane(IOSurfaceRef buffer, size_t planeIndex, size_t componentIndex)
{
  if (buffer)
  {
    LODWORD(buffer) = IOSurfaceClientGetNameOfComponentOfPlane(*(buffer + 1), planeIndex, componentIndex);
  }

  return buffer;
}

IOSurfaceComponentType IOSurfaceGetTypeOfComponentOfPlane(IOSurfaceRef buffer, size_t planeIndex, size_t componentIndex)
{
  if (buffer)
  {
    LODWORD(buffer) = IOSurfaceClientGetTypeOfComponentOfPlane(*(buffer + 1), planeIndex, componentIndex);
  }

  return buffer;
}

IOSurfaceComponentRange IOSurfaceGetRangeOfComponentOfPlane(IOSurfaceRef buffer, size_t planeIndex, size_t componentIndex)
{
  if (buffer)
  {
    LODWORD(buffer) = IOSurfaceClientGetRangeOfComponentOfPlane(*(buffer + 1), planeIndex, componentIndex);
  }

  return buffer;
}

size_t IOSurfaceGetBitDepthOfComponentOfPlane(size_t buffer, size_t planeIndex, size_t componentIndex)
{
  if (buffer)
  {
    return IOSurfaceClientGetBitDepthOfComponentOfPlane(*(buffer + 8), planeIndex, componentIndex);
  }

  return buffer;
}

size_t IOSurfaceGetBitOffsetOfComponentOfPlane(size_t buffer, size_t planeIndex, size_t componentIndex)
{
  if (buffer)
  {
    return IOSurfaceClientGetBitOffsetOfComponentOfPlane(*(buffer + 8), planeIndex, componentIndex);
  }

  return buffer;
}

IOSurfaceSubsampling IOSurfaceGetSubsampling(IOSurfaceRef buffer)
{
  if (buffer)
  {
    LODWORD(buffer) = IOSurfaceClientGetSubsampling(*(buffer + 1));
  }

  return buffer;
}

uint64_t IOSurfaceGetBytesPerCompressedTileHeaderOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetBytesPerCompressedTileHeaderOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceGetHorizontalPixelOffsetWithinCompressedTileArrayOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetHorizontalPixelOffsetWithinCompressedTileArrayOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceGetVerticalPixelOffsetWithinCompressedTileArrayOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetVerticalPixelOffsetWithinCompressedTileArrayOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceGetBytesPerRowOfTileDataOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetBytesPerRowOfTileDataOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceGetHTPCPredictionSelectorOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetHTPCPredictionSelectorOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceGetHTPCVerticalHeaderGroupingModeOfPlane(uint64_t result, unsigned int a2)
{
  if (result)
  {
    return IOSurfaceClientGetHTPCVerticalHeaderGroupingModeOfPlane(*(result + 8), a2);
  }

  return result;
}

uint64_t IOSurfaceGetCompressedTileDataRegionMemoryUsedOfPlane(uint64_t result, unsigned int a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (result)
  {
    IOSurfaceClientGetCompressedTileDataRegionMemoryUsedOfPlane(*(result + 8), a2, v3);
    result = v3[0];
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOSurfaceGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (result)
  {
    return IOSurfaceClientGetBaseAddressOfCompressedTileHeaderRegionOfSliceAndPlane(*(result + 8), a2, a3);
  }

  return result;
}

uint64_t IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (result)
  {
    return IOSurfaceClientGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane(*(result + 8), a2, a3);
  }

  return result;
}

uint64_t IOSurfaceSetIndexedTimestamp(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return IOSurfaceClientSetIndexedTimestamp(*(result + 8), a2, a3);
  }

  return result;
}

uint64_t IOSurfaceGetRegistryID(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientGetRegistryID(*(result + 8));
  }

  return result;
}

uint64_t IOSurfaceGetTraceID(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientGetTraceID(*(result + 8));
  }

  return result;
}

uint64_t IOSurfaceGetDataProperty(uint64_t a1, unsigned int a2, size_t a3, void *a4, void *a5)
{
  if (a1)
  {
    return IOSurfaceClientGetDataProperty(*(a1 + 8), a2, a3, a4, a5);
  }

  else
  {
    return 3758097090;
  }
}

BOOL IOSurfaceIsMetalSharedTexture(_BOOL8 result)
{
  if (result)
  {
    return IOSurfaceClientIsMetalSharedTexture(*(result + 8));
  }

  return result;
}

uint64_t IOSurfaceGetWiringAssertionCount(uint64_t result)
{
  if (result)
  {
    return IOSurfaceClientGetWiringAssertionCount(*(result + 8));
  }

  return result;
}

void sub_1B01823E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B01826EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B01830F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _IOSurfaceRemoteMethodInitialize(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  _ioSurfaceConnect();
  v4 = malloc_type_calloc(1uLL, 0x28uLL, 0x10000400A747E1EuLL);
  *v4 = 1;
  *(v4 + 4) = ioSurfaceLimits;
  v5 = qword_1ED4CE0C0;
  *(v4 + 12) = vmovn_s64(*&qword_1ED4CE0B0);
  *(v4 + 5) = v5;
  *(v4 + 6) = 1;
  *(v4 + 4) = 1;
  v6 = dispatch_data_create(v4, 0x28uLL, 0, *MEMORY[0x1E69E9648]);
  v7 = xpc_data_create_with_dispatch_data(v6);
  xpc_dictionary_set_value(v3, "Limits", v7);
  xpc_dictionary_set_uint64(v3, "ProtocolVersion", 1uLL);

  return 0;
}

uint64_t _IOSurfaceRemoteMethodGetDebugInfo(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a1;
  xdict = a3;
  v5 = xpc_array_create(0, 0);
  v6 = xpc_array_create(0, 0);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v4 surfaceStates];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = [v4 surfaceStates];
        v14 = [v13 objectForKeyedSubscript:v12];

        v15 = xpc_uint64_create([v12 unsignedIntegerValue]);
        xpc_array_append_value(v5, v15);

        v16 = xpc_uint64_create([v14 debugRefCount]);
        xpc_array_append_value(v6, v16);

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
    }

    while (v9);
  }

  xpc_dictionary_set_value(xdict, "DebugSurfaceIDList", v5);
  xpc_dictionary_set_value(xdict, "DebugSurfaceRefCount", v6);

  v17 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _IOSurfaceRemoteMethodClientCreate(void *a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = 3758097090;
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v28[0] = 0;
  uint64 = xpc_dictionary_get_uint64(v7, "LookupID");
  if (uint64)
  {
    v10 = IOSurfaceClientLookup(uint64);
  }

  else
  {
    v11 = xpc_dictionary_copy_mach_send();
    if (v11 - 1 > 0xFFFFFFFD)
    {
      v21 = _ioSurfaceDeserializedFromXPCDictionaryWithKey(v7, "PropertiesDictionary");
      if (!v21)
      {
        goto LABEL_8;
      }

      v22 = v21;
      v14 = xpc_dictionary_get_value(v7, "ClientProvidedShmem");
      if (v14)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          _IOSurfaceRemoteMethodClientCreate_cold_1(v6);
        }

        v23 = xpc_shmem_map(v14, v28);
        if (!v23)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            _IOSurfaceRemoteMethodClientCreate_cold_3(v6);
          }

          CFRelease(v22);
          v5 = 3758097085;
          goto LABEL_7;
        }

        v13 = v23;
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v22);
        CFDictionarySetValue(MutableCopy, @"IOSurfaceAddress", [MEMORY[0x1E696AD98] numberWithUnsignedLong:v28[0]]);
        CFRelease(v22);
        Value = CFDictionaryGetValue(MutableCopy, @"IOSurfaceAllocSize");
        if (Value)
        {
          v26 = [Value unsignedIntegerValue];
          if (v26 > v13)
          {
            v27 = v26;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              _IOSurfaceRemoteMethodClientCreate_cold_2(v13, v27);
            }
          }
        }
      }

      else if (CFDictionaryGetValueIfPresent(v22, @"IOSurfaceAddress", 0))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v22);
        CFDictionaryRemoveValue(MutableCopy, @"IOSurfaceAddress");
        CFRelease(v22);
        v13 = 0;
      }

      else
      {
        v13 = 0;
        MutableCopy = v22;
      }

      v10 = IOSurfaceClientCreate(MutableCopy);
      CFRelease(MutableCopy);

      if (!v10)
      {
        goto LABEL_8;
      }

LABEL_6:
      v14 = xpc_dictionary_get_value(v7, "ExtraData");
      [v6 _addSurface:v10 mappedAddress:v28[0] mappedSize:v13 extraData:v14];
      UnadjustedBaseAddress = _IOSurfaceClientGetUnadjustedBaseAddress(v10);
      AllocSize = IOSurfaceClientGetAllocSize(v10);
      v17 = xpc_shmem_create(UnadjustedBaseAddress, AllocSize);
      xpc_dictionary_set_value(v8, "MemoryObject", v17);
      ID = IOSurfaceClientGetID(v10);
      _ioSurfaceAddClientState(v10, ID, v8);

      v5 = 0;
LABEL_7:

      goto LABEL_8;
    }

    v12 = v11;
    v10 = IOSurfaceClientLookupFromMachPort(v11);
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v12);
  }

  v13 = 0;
  v5 = 3758097136;
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_8:

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _IOSurfaceRemoteMethodClientLock(int a1, uint64_t a2, xpc_object_t xdict)
{
  v8 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(xdict, "Options");
  v7 = 0;
  result = IOSurfaceClientLock(a2, uint64, &v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _IOSurfaceRemoteMethodClientUnlock(int a1, uint64_t a2, xpc_object_t xdict)
{
  v8 = *MEMORY[0x1E69E9840];
  uint64 = xpc_dictionary_get_uint64(xdict, "Options");
  v7 = 0;
  result = IOSurfaceClientUnlock(a2, uint64, &v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _IOSurfaceRemoteMethodClientGetPlaneState(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = 3758097085;
  v7 = a4;
  uint64 = xpc_dictionary_get_uint64(a3, "PlaneIndex");
  if (IOSurfaceClientGetPlaneCount(a2) >= uint64)
  {
    v9 = malloc_type_calloc(1uLL, 0x48uLL, 0x1000040773C5DECuLL);
    if (v9)
    {
      v10 = v9;
      *v9 = 0;
      v9[1] = uint64;
      *(v9 + 1) = IOSurfaceClientGetWidthOfPlane(a2, uint64);
      *(v10 + 2) = IOSurfaceClientGetHeightOfPlane(a2, uint64);
      *(v10 + 3) = IOSurfaceClientGetOffsetOfPlane(a2, uint64);
      *(v10 + 4) = IOSurfaceClientGetBytesPerRowOfPlane(a2, uint64);
      *(v10 + 5) = IOSurfaceClientGetSizeOfPlane(a2, uint64);
      v10[20] = IOSurfaceClientGetBytesPerElementOfPlane(a2, uint64);
      *(v10 + 42) = IOSurfaceClientGetElementWidthOfPlane(a2, uint64);
      *(v10 + 43) = IOSurfaceClientGetElementHeightOfPlane(a2, uint64);
      v24 = 0;
      v25[0] = 0;
      v22 = 0;
      v23 = 0;
      IOSurfaceClientGetExtendedPixelsOfPlane(a2, uint64, v25, &v24, &v23, &v22);
      v11 = v24;
      v12 = v23;
      *(v10 + 8) = v25[0];
      *(v10 + 9) = v12;
      v13 = v22;
      *(v10 + 6) = v11;
      *(v10 + 7) = v13;
      NumberOfComponentsOfPlane = IOSurfaceClientGetNumberOfComponentsOfPlane(a2, uint64);
      *(v10 + 44) = NumberOfComponentsOfPlane;
      v15 = NumberOfComponentsOfPlane;
      if (NumberOfComponentsOfPlane)
      {
        v16 = v10 + 61;
        v17 = 61;
        do
        {
          *(v16 - 16) = IOSurfaceClientGetBitDepthOfComponentOfPlane(a2, uint64, v17 - 61);
          *(v16 - 12) = IOSurfaceClientGetBitOffsetOfComponentOfPlane(a2, uint64, v17 - 61);
          *(v16 - 8) = IOSurfaceClientGetNameOfComponentOfPlane(a2, uint64, v17 - 61);
          *(v16 - 4) = IOSurfaceClientGetTypeOfComponentOfPlane(a2, uint64, v17 - 61);
          *v16++ = IOSurfaceClientGetRangeOfComponentOfPlane(a2, uint64, v17 - 61);
          ++v17;
          --v15;
        }

        while (v15);
      }

      v18 = dispatch_data_create(v10, 0x48uLL, 0, *MEMORY[0x1E69E9648]);
      v19 = xpc_data_create_with_dispatch_data(v18);
      xpc_dictionary_set_value(v7, "PlaneState", v19);

      v6 = 0;
    }
  }

  else
  {
    v6 = 3758097090;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _IOSurfaceRemoteMethodClientBindAccel(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  uint64 = xpc_dictionary_get_uint64(v4, "AcceleratorID");
  v6 = xpc_dictionary_get_uint64(v4, "AcceleratorField");

  return IOSurfaceClientBindAccel(a2, uint64, v6);
}

uint64_t _IOSurfaceRemoteMethodClientNeedsBindAccel(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  uint64 = xpc_dictionary_get_uint64(v7, "AcceleratorID");
  v9 = xpc_dictionary_get_uint64(v7, "AcceleratorField");

  v10 = IOSurfaceClientNeedsBindAccel(a2, uint64, v9);
  xpc_dictionary_set_BOOL(v6, "NeedsBindAccelerator", v10);

  return 0;
}

uint64_t _IOSurfaceRemoteMethodClientSetValue(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = 3758097090;
  v5 = _ioSurfaceDeserializedFromXPCDictionaryWithKey(a3, "PropertiesDictionary");
  if (v5)
  {
    v6 = v5;
    if (CFDictionaryGetValue(v5, @"isSetValues"))
    {
      Value = CFDictionaryGetValue(v6, @"value");
      v8 = 0;
    }

    else
    {
      v8 = CFDictionaryGetValue(v6, @"key");
      v9 = CFDictionaryGetValue(v6, @"value");
      if (!v8)
      {
LABEL_7:
        CFRelease(v6);
        return v4;
      }

      Value = v9;
    }

    IOSurfaceClientSetValue(a2, v8, Value);
    v4 = 0;
    goto LABEL_7;
  }

  return v4;
}

uint64_t _IOSurfaceRemoteMethodClientCopyAllValues(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = IOSurfaceClientCopyAllValues(a2);
  if (!v6)
  {
    v6 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  _ioSurfaceSerializeToXPCDictionaryWithKey(v5, "PropertiesDictionary", v6);
  CFRelease(v6);

  return 0;
}

uint64_t _IOSurfaceRemoteMethodClientRemoveValue(int a1, uint64_t a2, xpc_object_t xdict)
{
  v4 = 3758097090;
  string = xpc_dictionary_get_string(xdict, "PropertyKey");
  if (string)
  {
    v6 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], string, 0x8000100u, *MEMORY[0x1E695E498]);
    if (v6)
    {
      v7 = v6;
      IOSurfaceClientRemoveValue(a2, v6);
      CFRelease(v7);
      return 0;
    }
  }

  return v4;
}

uint64_t _IOSurfaceRemoteMethodClientSetPurgeable(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  *&value[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  uint64 = xpc_dictionary_get_uint64(a3, "NewState");
  value[0] = 0;
  v8 = IOSurfaceClientSetPurgeable(a2, uint64, value);
  xpc_dictionary_set_uint64(v6, "OldState", value[0]);

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t _IOSurfaceRemoteMethodClientCreateMachPort(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  MachPort = IOSurfaceClientCreateMachPort(a2);
  if (MachPort - 1 <= 0xFFFFFFFD)
  {
    v7 = MachPort;
    xpc_dictionary_set_mach_send();
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v7, 0, -1);
  }

  return 0;
}

uint64_t _IOSurfaceRemoteMethodClientIsInUse(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = IOSurfaceClientIsInUse(a2);
  xpc_dictionary_set_BOOL(v5, "IsInUse", v6);

  return 0;
}

uint64_t _IOSurfaceRemoteMethodClientCopyDataValueBytes(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  size[1] = *MEMORY[0x1E69E9840];
  v6 = 3758097085;
  v7 = a3;
  v8 = a4;
  uint64 = xpc_dictionary_get_uint64(v7, "BufferSize");
  if (uint64 <= 0xA00000)
  {
    v10 = uint64;
    string = xpc_dictionary_get_string(v7, "PropertyKey");
    if (string && (v12 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], string, 0x8000100u, *MEMORY[0x1E695E498])) != 0)
    {
      v13 = v12;
      v14 = malloc_type_calloc(1uLL, v10, 0xF954B527uLL);
      if (v14)
      {
        v15 = v14;
        size[0] = v10;
        v6 = IOSurfaceClientCopyDataValueBytes(a2, v13, v14, size);
        CFRelease(v13);
        if (v6 == -536870181)
        {
          xpc_dictionary_set_uint64(v8, "BufferSize", size[0]);
          goto LABEL_11;
        }

        if (!v6)
        {
          v16 = dispatch_data_create(v15, size[0], 0, *MEMORY[0x1E69E9648]);
          v17 = xpc_data_create_with_dispatch_data(v16);
          xpc_dictionary_set_value(v8, "Buffer", v17);

LABEL_11:
          v6 = 0;
        }
      }

      else
      {
        CFRelease(v13);
      }
    }

    else
    {
      v6 = 3758097090;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _IOSurfaceRemoteMethodClientSignalEvent(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  uint64 = xpc_dictionary_get_uint64(v4, "EventValue");
  v6 = xpc_dictionary_get_uint64(v4, "EventOperation");
  v7 = xpc_dictionary_copy_mach_send();

  v8 = IOSurfaceClientSignalEvent(a2, v7, uint64, v6);
  mach_port_mod_refs(*MEMORY[0x1E69E9A60], v7, 0, -1);
  return v8;
}

uint64_t _IOSurfaceRemoteMethodClientSetBulkAttachments(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v6 = 0;
  _ioSurfaceDeserializeBulkAttachmentsFromXPCDictionary(a3, v7, &v6);
  result = IOSurfaceClientSetBulkAttachments(a2, v7, 0x84uLL, v6);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _IOSurfaceRemoteMethodClientGetBulkAttachments(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(__dst, 0, sizeof(__dst));
  v9 = 132;
  v5 = a4;
  BulkAttachments = IOSurfaceClientGetBulkAttachments(a2, __dst, &v9);
  _ioSurfaceSerializeBulkAttachmentsToXPCDictionary(v5, __dst, -1);

  v7 = *MEMORY[0x1E69E9840];
  return BulkAttachments;
}

uint64_t _IOSurfaceRemoteMethodClientIncrementUseCountForCategory(int a1, uint64_t a2, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "Category");
  IOSurfaceClientIncrementUseCountForCategory(a2, uint64);
  return 0;
}

uint64_t _IOSurfaceRemoteMethodClientDecrementUseCountForCategory(int a1, uint64_t a2, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "Category");
  IOSurfaceClientDecrementUseCountForCategory(a2, uint64);
  return 0;
}

uint64_t _IOSurfaceRemoteMethodClientIsInUseForCategory(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  uint64 = xpc_dictionary_get_uint64(a3, "Category");
  v8 = IOSurfaceClientIsInUseForCategory(a2, uint64);
  xpc_dictionary_set_BOOL(v6, "IsInUse", v8);

  return 0;
}

uint64_t _IOSurfaceRemoteMethodClientIsInUseForAnyOtherCategory(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  uint64 = xpc_dictionary_get_uint64(a3, "Category");
  v8 = IOSurfaceClientIsInUseForAnyOtherCategory(a2, uint64);
  xpc_dictionary_set_BOOL(v6, "IsInUse", v8);

  return 0;
}

uint64_t _IOSurfaceRemoteMethodClientGetYCbCrMatrix(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&value[1] = *MEMORY[0x1E69E9840];
  value[0] = 0;
  v5 = a4;
  IOSurfaceClientGetYCbCrMatrix(a2, value);
  xpc_dictionary_set_uint64(v5, "YCbCrMatrixIndex", value[0]);

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

void _ioSurfaceAddClientState(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = malloc_type_calloc(1uLL, 0x48uLL, 0x1000040883E98BCuLL);
  *v6 = 0;
  *(v6 + 1) = a2;
  *(v6 + 2) = IOSurfaceClientGetAllocSize(a1);
  *(v6 + 6) = _IOSurfaceClientGetBufferOffset(a1);
  *(v6 + 3) = IOSurfaceClientGetWidth(a1);
  *(v6 + 4) = IOSurfaceClientGetHeight(a1);
  *(v6 + 5) = IOSurfaceClientGetBytesPerRow(a1);
  *(v6 + 7) = IOSurfaceClientGetPixelFormat(a1);
  *(v6 + 8) = IOSurfaceClientGetCacheMode(a1);
  *(v6 + 9) = IOSurfaceClientGetPlaneCount(a1);
  *(v6 + 10) = IOSurfaceClientGetBytesPerElement(a1);
  *(v6 + 11) = IOSurfaceClientGetElementWidth(a1);
  *(v6 + 12) = IOSurfaceClientGetElementHeight(a1);
  *(v6 + 13) = IOSurfaceClientGetSeed(a1);
  *(v6 + 14) = IOSurfaceClientGetSubsampling(a1);
  v7 = IOSurfaceClientAllowsPixelSizeCasting(a1);
  v8 = v6[60] & 0xFE;
  if (v7)
  {
    ++v8;
  }

  v6[60] = v8;
  if (IOSurfaceClientIsSysMemOnly(a1))
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v6[60] = v6[60] & 0xFD | v9;
  if (IOSurfaceClientIsDisplayable(a1))
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v6[60] = v6[60] & 0xFB | v10;
  *(v6 + 61) = IOSurfaceClientGetTraceID(a1);
  v6[60] = v6[60] & 0xF7 | (8 * (IOSurfaceClientGetProhibitUseCount(a1) != 0));
  v12 = dispatch_data_create(v6, 0x48uLL, 0, *MEMORY[0x1E69E9648]);
  v11 = xpc_data_create_with_dispatch_data(v12);
  xpc_dictionary_set_value(v5, "SurfaceState", v11);
}

id _copyDescriptions(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [a1 objectAtIndex:{i, 0, v17}];
      v7 = IOCFUnserializeWithSize([v6 bytes], objc_msgSend(v6, "length"), 0, 0, &v16);
      v8 = [v7 objectForKey:@"BasicInfo"];
      v9 = 0;
      if ([v8 length] == 120)
      {
        v9 = [v8 bytes];
      }

      v10 = [v7 objectForKey:@"Layout"];
      if ([v10 length] == 48)
      {
        v11 = [v10 bytes];
      }

      else
      {
        v11 = 0;
      }

      v12 = [v7 objectForKey:@"IOSurfaceName"];
      if (v9 && v11)
      {
        v13 = [[_IOSurfaceDebugDescription alloc] initWithBasicInfo:v9 layoutInfo:v11 name:v12];
        [v2 addObject:v13];
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t IOSurfaceNotifierGetTypeID()
{
  result = kIOSurfaceNotifierID;
  if (!kIOSurfaceNotifierID)
  {
    pthread_once(&IOSurfaceNotifierGetTypeID_once, ioSurfaceNotifierClassInitialize);
    return kIOSurfaceNotifierID;
  }

  return result;
}

uint64_t ioSurfaceNotifierClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  kIOSurfaceNotifierID = result;
  return result;
}

void IOSurfaceNotifierSetDispatchQueue(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    IONotificationPortSetDispatchQueue(*(a1 + 16), a2);
    *(a1 + 32) = a2;
  }

  else
  {
    v4 = *(a1 + 32);
    current_queue = dispatch_get_current_queue();
    if (current_queue && current_queue == v4)
    {
      IONotificationPortSetDispatchQueue(*(a1 + 16), 0);
    }

    else
    {
      dispatch_sync_f(v4, a1, tearDownCallback);
    }

    *(a1 + 32) = 0;
  }
}

unint64_t IOSurfaceNotifierCreate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!kIOSurfaceNotifierID)
  {
    pthread_once(&IOSurfaceNotifierGetTypeID_once, ioSurfaceNotifierClassInitialize);
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 24) = a1;
  *(Instance + 40) = a3;
  v6 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  *(Instance + 16) = v6;
  if (v6)
  {
    MachPort = IONotificationPortGetMachPort(v6);
    v8 = IOSurfaceClientSetSurfaceNotify(MachPort, IOSurfaceNotifierNotifyFunc, Instance);
    if (!v8)
    {
      *(Instance + 48) = 1;
      return Instance;
    }

    fprintf(*MEMORY[0x1E69E9848], "IOSurfaceClientSetSurfaceNotify failed %08x\n", v8);
  }

  CFRelease(Instance);
  return 0;
}

uint64_t IOSurfaceNotifierInvalidate(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    v1 = result;
    result = IOSurfaceClientRemoveSurfaceNotify(result);
    *(v1 + 48) = 0;
  }

  return result;
}

void ioSurfaceNotifierFinalize(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    IOSurfaceClientRemoveSurfaceNotify(a1);
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32) || (IONotificationPortSetDispatchQueue(v2, 0), (v2 = *(a1 + 16)) != 0))
    {

      IONotificationPortDestroy(v2);
    }
  }
}

void _ioSurfaceSerializeToXPCDictionaryWithKey(void *a1, const char *a2, const void *a3)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (v5)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    _ioSurfaceSerializeToXPCDictionaryWithKey_cold_2();
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    _ioSurfaceSerializeToXPCDictionaryWithKey_cold_3();
    goto LABEL_4;
  }

  _ioSurfaceSerializeToXPCDictionaryWithKey_cold_1();
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = IOCFSerialize(a3, 1uLL);
  BytePtr = CFDataGetBytePtr(v6);
  Length = CFDataGetLength(v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ioSurfaceSerializeToXPCDictionaryWithKey_block_invoke;
  v12[3] = &__block_descriptor_40_e5_v8__0l;
  v12[4] = v6;
  v9 = dispatch_data_create(BytePtr, Length, 0, v12);
  v10 = xpc_data_create_with_dispatch_data(v9);
  xpc_dictionary_set_value(v5, a2, v10);

  v11 = *MEMORY[0x1E69E9840];
}

CFTypeRef _ioSurfaceDeserializedFromXPCDictionaryWithKey(void *a1, const char *a2)
{
  length[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _ioSurfaceDeserializedFromXPCDictionaryWithKey_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  _ioSurfaceDeserializedFromXPCDictionaryWithKey_cold_2();
LABEL_3:
  length[0] = 0;
  data = xpc_dictionary_get_data(v3, a2, length);
  if (data)
  {
    errorString = 0;
    v5 = IOCFUnserializeBinary(data, length[0], *MEMORY[0x1E695E480], 0, &errorString);
    if (!v5)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        _ioSurfaceDeserializedFromXPCDictionaryWithKey_cold_3(a2, &errorString);
      }

      CFRelease(errorString);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void _ioSurfaceSerializeBulkAttachmentsToXPCDictionary(void *a1, uint64_t a2, __int16 a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = v5;
  if (a3)
  {
    v11 = 0;
    v9 = *(a2 + 16);
    *v12 = *a2;
    *&v12[16] = v9;
    xpc_dictionary_set_data(v5, "CleanAperture", &v11, 0x28uLL);
    if ((a3 & 2) == 0)
    {
LABEL_3:
      if ((a3 & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = 0;
  *v12 = *(a2 + 32);
  xpc_dictionary_set_data(v6, "PixelAspectRatio", &v11, 0x18uLL);
  if ((a3 & 0x800) == 0)
  {
LABEL_4:
    if ((a3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = 0;
  *v12 = *(a2 + 80);
  *&v12[8] = *(a2 + 64);
  xpc_dictionary_set_data(v6, "MasteringDisplayColorVolume", &v11, 0x20uLL);
  if ((a3 & 4) == 0)
  {
LABEL_5:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = *(a2 + 48);
  xpc_dictionary_set_data(v6, "GammaLevel", &v11, 8uLL);
  if ((a3 & 0x2000) == 0)
  {
LABEL_6:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 92);
  xpc_dictionary_set_data(v6, "EDRFactor", &v11, 8uLL);
  if ((a3 & 0x1000) == 0)
  {
LABEL_7:
    if ((a3 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  HIDWORD(v11) = *(a2 + 88);
  xpc_dictionary_set_data(v6, "ContentLightLevelInfo", &v11, 8uLL);
  if ((a3 & 8) == 0)
  {
LABEL_8:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  xpc_dictionary_set_uint64(v6, "FieldCount", *(a2 + 56));
  if ((a3 & 0x10) == 0)
  {
LABEL_9:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  xpc_dictionary_set_uint64(v6, "FieldDetail", *(a2 + 57));
  if ((a3 & 0x20) == 0)
  {
LABEL_10:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  xpc_dictionary_set_uint64(v6, "YCbCrMatrixIndex", *(a2 + 58));
  if ((a3 & 0x40) == 0)
  {
LABEL_11:
    if ((a3 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  xpc_dictionary_set_uint64(v6, "ColorPrimariesIndex", *(a2 + 59));
  if ((a3 & 0x80) == 0)
  {
LABEL_12:
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  xpc_dictionary_set_uint64(v6, "TransferFunctionIndex", *(a2 + 60));
  if ((a3 & 0x100) == 0)
  {
LABEL_13:
    if ((a3 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_30:
  xpc_dictionary_set_uint64(v6, "ChromaLocationTopField", *(a2 + 61));
  if ((a3 & 0x200) != 0)
  {
LABEL_14:
    xpc_dictionary_set_uint64(v6, "ChromaLocationBottomField", *(a2 + 62));
  }

LABEL_15:
  if ((a3 & 0x4400) != 0)
  {
    if ((a3 & 0x400) != 0)
    {
      v7 = *(a2 + 63) & 0xF;
      if ((a3 & 0x4000) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v7 = 0;
      if ((a3 & 0x4000) != 0)
      {
LABEL_18:
        xpc_dictionary_set_uint64(v6, "ChromaSubsampling", v7 | (16 * *(a2 + 100)) | 0x80);
        v7 = *(a2 + 100);
        v8 = "PremultipliedAlpha";
LABEL_34:
        xpc_dictionary_set_uint64(v6, v8, v7);
        goto LABEL_35;
      }
    }

    v8 = "ChromaSubsampling";
    goto LABEL_34;
  }

LABEL_35:

  v10 = *MEMORY[0x1E69E9840];
}

void _ioSurfaceDeserializeBulkAttachmentsFromXPCDictionary(void *a1, uint64_t a2, uint64_t *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a1;
  memset(v35, 0, 40);
  v5 = 0;
  if (_ioSurfaceCopyStructFromKey(v4, "CleanAperture", v35, 0x28uLL))
  {
    v6 = *(&v35[1] + 8);
    *a2 = *(v35 + 8);
    *(a2 + 16) = v6;
    v5 = 1;
  }

  v33 = 0;
  v34 = 0uLL;
  if (_ioSurfaceCopyStructFromKey(v4, "PixelAspectRatio", &v33, 0x18uLL))
  {
    v5 |= 2uLL;
    *(a2 + 32) = v34;
  }

  v31 = 0u;
  v32 = 0u;
  if (_ioSurfaceCopyStructFromKey(v4, "MasteringDisplayColorVolume", &v31, 0x20uLL))
  {
    v5 |= 0x800uLL;
    *(a2 + 80) = *(&v31 + 1);
    *(a2 + 64) = v32;
  }

  v30 = 0;
  if (_ioSurfaceCopyStructFromKey(v4, "GammaLevel", &v30, 8uLL))
  {
    v5 |= 4uLL;
    *(a2 + 48) = v30;
  }

  v29 = 0;
  if (_ioSurfaceCopyStructFromKey(v4, "EDRFactor", &v29, 8uLL))
  {
    v5 |= 0x2000uLL;
    *(a2 + 92) = v29;
  }

  v28 = 0;
  if (_ioSurfaceCopyStructFromKey(v4, "ContentLightLevelInfo", &v28, 8uLL))
  {
    v5 |= 0x1000uLL;
    *(a2 + 88) = HIDWORD(v28);
  }

  v7 = xpc_dictionary_get_value(v4, "FieldCount");
  v26 = v7;
  if (v7)
  {
    v5 |= 8uLL;
    *(a2 + 56) = xpc_uint64_get_value(v7);
  }

  v8 = xpc_dictionary_get_value(v4, "FieldDetail");
  v25 = v8;
  if (v8)
  {
    v5 |= 0x10uLL;
    *(a2 + 57) = xpc_uint64_get_value(v8);
  }

  v9 = xpc_dictionary_get_value(v4, "YCbCrMatrixIndex");
  v10 = v9;
  if (v9)
  {
    v5 |= 0x20uLL;
    *(a2 + 58) = xpc_uint64_get_value(v9);
  }

  v11 = xpc_dictionary_get_value(v4, "ColorPrimariesIndex");
  v12 = v11;
  if (v11)
  {
    v5 |= 0x40uLL;
    *(a2 + 59) = xpc_uint64_get_value(v11);
  }

  v13 = xpc_dictionary_get_value(v4, "TransferFunctionIndex");
  v14 = v13;
  if (v13)
  {
    v5 |= 0x80uLL;
    *(a2 + 60) = xpc_uint64_get_value(v13);
  }

  v15 = xpc_dictionary_get_value(v4, "ChromaLocationTopField");
  v16 = v15;
  if (v15)
  {
    v5 |= 0x100uLL;
    *(a2 + 61) = xpc_uint64_get_value(v15);
  }

  v17 = xpc_dictionary_get_value(v4, "ChromaLocationBottomField");
  v18 = v17;
  if (v17)
  {
    v5 |= 0x200uLL;
    *(a2 + 62) = xpc_uint64_get_value(v17);
  }

  v19 = xpc_dictionary_get_value(v4, "ChromaSubsampling");
  v20 = v19;
  if (v19)
  {
    value = xpc_uint64_get_value(v19);
    if ((value & 0xF) != 0)
    {
      v5 |= 0x400uLL;
      *(a2 + 63) = value & 0xF;
    }

    if ((value & 0x80) != 0)
    {
      v5 |= 0x4000uLL;
      *(a2 + 100) = (value >> 4) & 0xF7;
    }
  }

  v22 = xpc_dictionary_get_value(v4, "PremultipliedAlpha");
  v23 = v22;
  if (v22)
  {
    v5 |= 0x4000uLL;
    *(a2 + 100) = xpc_uint64_get_value(v22);
  }

  if (a3)
  {
    *a3 = v5;
  }

  v24 = *MEMORY[0x1E69E9840];
}

BOOL _ioSurfaceCopyStructFromKey(void *a1, const char *a2, void *a3, size_t a4)
{
  v6 = xpc_dictionary_get_value(a1, a2);
  if (v6)
  {
    bzero(a3, a4);
    v7 = xpc_data_get_bytes(v6, a3, 0, a4) == a4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void IOSurfaceAppendTransaction_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B0173000, MEMORY[0x1E69E9C10], v1, "IOSurfaceAppendTransaction got non-success return from kernel", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void IOSurfaceAppendTransaction_cold_2()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B0173000, MEMORY[0x1E69E9C10], v1, "IOSurfaceAppendTransaction got null transaction", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void IOSurfaceAppendTransaction_cold_3()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B0173000, MEMORY[0x1E69E9C10], v1, "IOSurfaceAppendTransaction got null buffer", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void IOSurfaceQueryTransactionList_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B0173000, MEMORY[0x1E69E9C10], v1, "IOSurfaceQueryTransactionList got non-success return from kernel", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void IOSurfaceQueryTransactionList_cold_2()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B0173000, MEMORY[0x1E69E9C10], v1, "IOSurfaceQueryTransactionList failed to allocate memory", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void IOSurfaceQueryTransactionList_cold_3()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B0173000, MEMORY[0x1E69E9C10], v1, "IOSurfaceQueryTransactionList got null buffer", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void IOSurfacePruneTransactionList_cold_1()
{
  v0 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1B0173000, MEMORY[0x1E69E9C10], v1, "IOSurfacePruneTransactionList got null buffer", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void ___ioSurfaceConnectInternal_block_invoke_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOSurfaceClientDisallowForever_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  *v1 = 0;
  _os_log_fault_impl(&dword_1B0173000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "IOSurfaceDisallowForever() invoked too late, connection to IOSurface.kext already established", v1, 2u);
  v0 = *MEMORY[0x1E69E9840];
}

void IOSurfaceClientCreateChild_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOSurfaceClientCreateChild_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOSurfaceClientCreateChild_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOSurfaceClientRelease_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void IOSurfaceClientIncrementUseCountForCategory_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2(&dword_1B0173000, MEMORY[0x1E69E9C10], a3, "%s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void _IOSurfaceRemoteMethodClientCreate_cold_1(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 pid];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void _IOSurfaceRemoteMethodClientCreate_cold_2(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_fault_impl(&dword_1B0173000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "IOSurface client memory mapping is %lu bytes but client claims allocation size of %lu bytes", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void _IOSurfaceRemoteMethodClientCreate_cold_3(void *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  [a1 pid];
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(&dword_1B0173000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to map client shared memory object from pid %d", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void _ioSurfaceSerializeToXPCDictionaryWithKey_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _ioSurfaceSerializeToXPCDictionaryWithKey(__strong xpc_object_t _Nonnull, const char * _Nonnull, CFTypeRef _Nonnull)"}];
  [OUTLINED_FUNCTION_0_1(v0 v1];
}

void _ioSurfaceSerializeToXPCDictionaryWithKey_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _ioSurfaceSerializeToXPCDictionaryWithKey(__strong xpc_object_t _Nonnull, const char * _Nonnull, CFTypeRef _Nonnull)"}];
  [OUTLINED_FUNCTION_0_1(v0 v1];
}

void _ioSurfaceSerializeToXPCDictionaryWithKey_cold_3()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _ioSurfaceSerializeToXPCDictionaryWithKey(__strong xpc_object_t _Nonnull, const char * _Nonnull, CFTypeRef _Nonnull)"}];
  [OUTLINED_FUNCTION_0_1(v0 v1];
}

void _ioSurfaceDeserializedFromXPCDictionaryWithKey_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFTypeRef  _Nullable _ioSurfaceDeserializedFromXPCDictionaryWithKey(__strong xpc_object_t _Nonnull, const char * _Nonnull)"}];
  [OUTLINED_FUNCTION_0_1(v0 v1];
}

void _ioSurfaceDeserializedFromXPCDictionaryWithKey_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFTypeRef  _Nullable _ioSurfaceDeserializedFromXPCDictionaryWithKey(__strong xpc_object_t _Nonnull, const char * _Nonnull)"}];
  [OUTLINED_FUNCTION_0_1(v0 v1];
}

void _ioSurfaceDeserializedFromXPCDictionaryWithKey_cold_3(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v4 = 136446466;
  v5 = a1;
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_1B0173000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "IOSurface Deserialization failure for key %{public}s: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}