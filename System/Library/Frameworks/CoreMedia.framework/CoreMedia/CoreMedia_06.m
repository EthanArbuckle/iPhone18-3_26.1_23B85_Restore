uint64_t getWellKnownTypeDataSize(int a1, unint64_t a2, _BYTE *a3)
{
  if (a1 <= 64)
  {
    switch(a1)
    {
      case 23:
LABEL_8:
        *a3 = 1;
        return 4;
      case 24:
LABEL_3:
        *a3 = 1;
        return 8;
      case 30:
LABEL_7:
        *a3 = 1;
        return 16;
      default:
        return 0;
    }
  }

  else
  {
    v3 = a1 - 65;
    result = 1;
    switch(v3)
    {
      case 0:
      case 10:
        return result;
      case 1:
      case 11:
        *a3 = 1;
        return 2;
      case 2:
      case 12:
        goto LABEL_8;
      case 5:
      case 6:
      case 9:
      case 13:
        goto LABEL_3;
      case 7:
        goto LABEL_7;
      case 14:
      case 18:
        *a3 = 1;
        return 72;
      case 15:
        *a3 = 1;
        v5 = a2 & 0xFFFFFFFFFFFFFFF8;
        v6 = a2 >= 0x18;
        goto LABEL_17;
      case 16:
        *a3 = 1;
        v5 = a2 & 0xFFFFFFFFFFFFFFF8;
        v6 = a2 >= 0x10;
        goto LABEL_17;
      case 19:
        *a3 = 1;
        return 12;
      case 20:
        *a3 = 1;
        v5 = 133;
        if (a2 < 133)
        {
          v5 = a2;
        }

        v6 = a2 >= 0xC;
LABEL_17:
        if (v6)
        {
          result = v5;
        }

        else
        {
          result = -1;
        }

        break;
      default:
        return 0;
    }
  }

  return result;
}

uint64_t scalarWriteSetup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (*(a1 + 216))
    {
      QuickTimeWellKnownTypeForLocalID = FigMetadataFormatDescriptionGetQuickTimeWellKnownTypeForLocalID(*(a1 + 24), a2, a3, a4, a5, a6, a7, a8);
      *a4 = QuickTimeWellKnownTypeForLocalID;
      WellKnownTypeDataSize = getWellKnownTypeDataSize(QuickTimeWellKnownTypeForLocalID, a3, &v13);
      result = 0;
      if (a3)
      {
        if (WellKnownTypeDataSize != a3)
        {
          scalarWriteSetup_cold_1(&v14);
          return v14;
        }
      }
    }

    else
    {
      scalarWriteSetup_cold_2(&v15);
      return v15;
    }
  }

  else
  {
    scalarWriteSetup_cold_3(&v16);
    return v16;
  }

  return result;
}

size_t normalizeAndAppendScalarValue(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  if (a4 <= 66)
  {
    if (a4 > 64)
    {
      LOBYTE(v14[0]) = a3;
      v9 = 1;
      return appendScalarValue(a1, a2, v14, v9, a5, a6, a7, a8);
    }

    if (a4 != 23)
    {
      if (a4 == 24)
      {
        *v14 = bswap32(a3);
LABEL_14:
        v9 = 8;
        return appendScalarValue(a1, a2, v14, v9, a5, a6, a7, a8);
      }

      goto LABEL_16;
    }

    *v14 = bswap32(a3);
LABEL_22:
    v9 = 4;
    return appendScalarValue(a1, a2, v14, v9, a5, a6, a7, a8);
  }

  if (a4 > 75)
  {
    if (a4 == 76)
    {
      LOWORD(v14[0]) = bswap32(a3) >> 16;
      v9 = 2;
      return appendScalarValue(a1, a2, v14, v9, a5, a6, a7, a8);
    }

    if (a4 != 77)
    {
      if (a4 == 78)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (a4 == 67)
  {
LABEL_19:
    LODWORD(v14[0]) = bswap32(a3);
    goto LABEL_22;
  }

  if (a4 == 74)
  {
LABEL_13:
    *&v14[0] = bswap64(a3);
    goto LABEL_14;
  }

LABEL_16:
  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC038uLL, "<<<< FigMetadata >>>>", 0x1051, v8, v11, v12);
}

void createDataTypeRegistryGlobalsOnce()
{
  v43 = *MEMORY[0x1E69E9840];
  gfigMetadataDataTypeRegistryStorage = malloc_type_calloc(1uLL, 0x38uLL, 0x60040CEC3798AuLL);
  if (gfigMetadataDataTypeRegistryStorage)
  {
    v39 = xmmword_1E749FBF0;
    v40 = *&off_1E749FC00;
    v41 = xmmword_1E749FC10;
    v42 = @"com.apple.metadata.datatype.extended-raster-rectangle-value";
    v35 = xmmword_1E749FBB0;
    v36 = *&off_1E749FBC0;
    v37 = xmmword_1E749FBD0;
    v38 = *&off_1E749FBE0;
    v31 = xmmword_1E749FB70;
    v32 = *&off_1E749FB80;
    v33 = xmmword_1E749FB90;
    v34 = *&off_1E749FBA0;
    *values = xmmword_1E749FB50;
    v30 = *&off_1E749FB60;
    v25 = xmmword_1E749FCC8;
    v26 = *&off_1E749FCD8;
    v27 = xmmword_1E749FCE8;
    v28 = @"Array of 6 unsigned 16-bit big endian integers, followed by the numbers of left and right edge points, followed by the inset edge points";
    v21 = xmmword_1E749FC88;
    v22 = *&off_1E749FC98;
    v23 = xmmword_1E749FCA8;
    v24 = *&off_1E749FCB8;
    v17 = xmmword_1E749FC48;
    v18 = *&off_1E749FC58;
    v19 = xmmword_1E749FC68;
    v20 = *&off_1E749FC78;
    *v15 = xmmword_1E749FC28;
    v16 = *&off_1E749FC38;
    *v11 = xmmword_1E749FD00;
    v12 = *&off_1E749FD10;
    v13 = xmmword_1E749FD20;
    v14 = *&off_1E749FD30;
    v10[0] = xmmword_1E749FD40;
    v10[1] = *&off_1E749FD50;
    v10[2] = xmmword_1E749FD60;
    v10[3] = *&off_1E749FD70;
    *gfigMetadataDataTypeRegistryStorage = FigReentrantMutexCreate();
    v0 = *MEMORY[0x1E695E480];
    v1 = MEMORY[0x1E695E9D8];
    v2 = MEMORY[0x1E695E9E8];
    *(gfigMetadataDataTypeRegistryStorage + 8) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(gfigMetadataDataTypeRegistryStorage + 16) = CFDictionaryCreateMutable(v0, 0, v1, v2);
    *(gfigMetadataDataTypeRegistryStorage + 24) = CFDictionaryCreateMutable(v0, 0, v1, v2);
    *(gfigMetadataDataTypeRegistryStorage + 32) = CFDictionaryCreateMutable(v0, 0, v1, v2);
    v3 = MEMORY[0x1E695E9C0];
    *(gfigMetadataDataTypeRegistryStorage + 48) = CFArrayCreate(v0, values, 27, MEMORY[0x1E695E9C0]);
    v4 = CFArrayCreate(v0, v11, 8, v3);
    Mutable = CFArrayCreateMutable(v0, 35, v3);
    v6 = Mutable;
    if (*gfigMetadataDataTypeRegistryStorage)
    {
      if (*(gfigMetadataDataTypeRegistryStorage + 8))
      {
        if (*(gfigMetadataDataTypeRegistryStorage + 16))
        {
          v7 = *(gfigMetadataDataTypeRegistryStorage + 48);
          if (v7)
          {
            if (v4)
            {
              if (Mutable)
              {
                v44.location = 0;
                v44.length = 27;
                CFArrayAppendArray(Mutable, v7, v44);
                v45.location = 0;
                v45.length = 8;
                CFArrayAppendArray(v6, v4, v45);
                Copy = CFArrayCreateCopy(v0, v6);
                *(gfigMetadataDataTypeRegistryStorage + 40) = Copy;
                if (Copy)
                {
                  if (createBaseDataTypes(values, v15, 27) && createBaseDataTypes(v11, v10, 8))
                  {
                    goto LABEL_20;
                  }
                }
              }
            }
          }
        }
      }
    }

    FigReentrantMutexDestroy(*gfigMetadataDataTypeRegistryStorage);
    v9 = gfigMetadataDataTypeRegistryStorage;
    if (*(gfigMetadataDataTypeRegistryStorage + 8))
    {
      CFRelease(*(gfigMetadataDataTypeRegistryStorage + 8));
      v9 = gfigMetadataDataTypeRegistryStorage;
    }

    if (v9[2])
    {
      CFRelease(v9[2]);
      v9 = gfigMetadataDataTypeRegistryStorage;
    }

    if (v9[6])
    {
      CFRelease(v9[6]);
      v9 = gfigMetadataDataTypeRegistryStorage;
    }

    if (v9[5])
    {
      CFRelease(v9[5]);
      v9 = gfigMetadataDataTypeRegistryStorage;
    }

    free(v9);
    gfigMetadataDataTypeRegistryStorage = 0;
    if (v4)
    {
LABEL_20:
      CFRelease(v4);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void registerKnownDataTypesOnce()
{
  if (gfigMetadataDataTypeRegistryStorage)
  {
    registerKnownDataType(@"com.apple.quicktime.detected-face", @"detected face", @"com.apple.metadata.datatype.record-collection");
    registerKnownDataType(@"com.apple.quicktime.detected-human-body", @"detected human body", @"com.apple.metadata.datatype.record-collection");
    registerKnownDataType(@"com.apple.quicktime.detected-cat-head", @"detected cat head", @"com.apple.metadata.datatype.record-collection");
    registerKnownDataType(@"com.apple.quicktime.detected-cat-body", @"detected cat body", @"com.apple.metadata.datatype.record-collection");
    registerKnownDataType(@"com.apple.quicktime.detected-dog-head", @"detected dog head", @"com.apple.metadata.datatype.record-collection");
    registerKnownDataType(@"com.apple.quicktime.detected-dog-body", @"detected dog body", @"com.apple.metadata.datatype.record-collection");
    registerKnownDataType(@"com.apple.quicktime.detected-salient-object", @"detected salient object", @"com.apple.metadata.datatype.record-collection");
    registerKnownDataType(@"com.apple.quicktime.location.ISO6709", @"location in ISO 6709 format", @"com.apple.metadata.datatype.UTF-8");
    registerKnownDataType(@"com.apple.quicktime.direction", @"direction", @"com.apple.metadata.datatype.UTF-8");
    registerKnownDataType(@"com.apple.quicktime.uuid", @"UUID", @"com.apple.metadata.datatype.UTF-8");

    registerKnownDataType(@"com.apple.quicktime.milli-lux", @"1/1000th of a Lux", @"com.apple.metadata.datatype.uint32");
  }
}

uint64_t createBaseDataTypes(const void **a1, const void **values, uint64_t a3)
{
  if (a3 < 1)
  {
    return 1;
  }

  v3 = a3;
  v6 = *MEMORY[0x1E695E480];
  v7 = MEMORY[0x1E695E9D8];
  v8 = MEMORY[0x1E695E9E8];
  while (1)
  {
    result = CFDictionaryCreate(v6, &kFigMetadata_DataTypeRegistry_RegistrySpecification_Description, values, 1, v7, v8);
    if (!result)
    {
      break;
    }

    v10 = result;
    CFDictionarySetValue(*(gfigMetadataDataTypeRegistryStorage + 8), *a1, result);
    CFRelease(v10);
    v11 = *a1++;
    CFDictionarySetValue(*(gfigMetadataDataTypeRegistryStorage + 16), v11, v11);
    ++values;
    if (!--v3)
    {
      return 1;
    }
  }

  return result;
}

void registerKnownDataType(const __CFString *a1, const void *a2, void *a3)
{
  values = a3;
  v5 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  if (v5)
  {
    v6 = v5;
    doFigMetadataDataTypeRegistryRegisterDataType(gfigMetadataDataTypeRegistryStorage, a1, a2, v5);
    CFRelease(v6);
  }

  else
  {
    registerKnownDataType_cold_1();
  }
}

double boxedMetadataInit(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

double boxedMetadataFinalize(uint64_t a1)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  result = 0.0;
  v3[11] = 0u;
  v3[12] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  return result;
}

uint64_t boxedMetadataEqual(uint64_t a1, uint64_t a2)
{
  result = FigCFEqual(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    return FigCFEqual(*(a1 + 24), *(a2 + 24)) != 0;
  }

  return result;
}

__CFString *boxedMetadataCopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = CFGetRetainCount(a1);
  v4 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"CMBoxedMetadata %p retainCount: %ld allocator: %p\n", a1, v3, v4);
  v5 = 84;
  if (!*(a1 + 216))
  {
    v5 = 70;
  }

  CFStringAppendFormat(Mutable, 0, @"\tbbuf %p\n\tisUnderConstruction = %c\n", *(a1 + 16), v5);
  return Mutable;
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return FigAtomStreamReadCurrentAtomData(a1, 0, 8, a4);
}

uint64_t OUTLINED_FUNCTION_25_3@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, CMBlockBufferFlags a5@<W6>, CMBlockBufferRef *a6@<X7>, unsigned int a7@<W8>)
{
  v9 = bswap32(a7) >> 16;

  return FigCFArrayAppendInt32(v7, v9, a1, a2, a3, a4, a5, a6);
}

CFComparisonResult OUTLINED_FUNCTION_26_3(uint64_t a1, const __CFString *a2)
{

  return CFStringCompare(v2, a2, 0);
}

uint64_t OUTLINED_FUNCTION_32_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, CMBlockBufferFlags a5@<W6>, CMBlockBufferRef *a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14)
{
  *(v14 - 40) = a7;
  a14 = 0;

  return scalarWriteSetup(a1, a2, 8uLL, &a14, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_33_1(OpaqueCMBlockBuffer *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *dataPointerOut)
{

  return CMBlockBufferGetDataPointer(a1, 0, 0, 0, &dataPointerOut);
}

uint64_t OUTLINED_FUNCTION_34_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  a11 = 0;

  return scalarReadSetup(a1, a2, &a11);
}

uint64_t FigInMemoryDeserializerCopyBlockBuffer(CFAllocatorRef blockAllocator, uint64_t a2, unint64_t a3, int a4, uint64_t a5, CMBlockBufferRef *blockBufferOut, uint64_t a7, CMBlockBufferRef *a8)
{
  destinationBuffer = 0;
  if (a3 <= 8)
  {
    FigInMemoryDeserializerCopyBlockBuffer_cold_3(&v16);
    return v16;
  }

  v10 = *(a2 + 1);
  if (v10 >= 0xFFFFFFFFFFFFFFF7)
  {
    FigInMemoryDeserializerCopyBlockBuffer_cold_2(&v16);
    return v16;
  }

  if (v10 + 9 > a3)
  {
    FigInMemoryDeserializerCopyBlockBuffer_cold_1(&v16);
    return v16;
  }

  if (*a2 == 1)
  {

    return FigMemoryRecipientCopyBlockBufferFromIPCMessageData(blockAllocator, a5, a2 + 9, v10, blockBufferOut);
  }

  else if (*a2)
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB44CuLL, "(Fig)", 0xC0, v8, v10, a8);
  }

  else if (a4)
  {
    return CMBlockBufferCreateWithMemoryBlock(blockAllocator, (a2 + 9), v10, *MEMORY[0x1E695E498], 0, 0, v10, 0, blockBufferOut);
  }

  else
  {
    result = CMBlockBufferCreateWithMemoryBlock(blockAllocator, 0, v10, blockAllocator, 0, 0, v10, 1u, &destinationBuffer);
    v13 = destinationBuffer;
    if (result || (result = CMBlockBufferReplaceDataBytes((a2 + 9), destinationBuffer, 0, *(a2 + 1)), v13 = destinationBuffer, result))
    {
      if (v13)
      {
        v14 = result;
        CFRelease(v13);
        return v14;
      }
    }

    else
    {
      *blockBufferOut = destinationBuffer;
    }
  }

  return result;
}

OpaqueCMBlockBuffer *FigInMemorySerializationAddDataBufferFromCMSampleBuffer(int a1, int a2, void *a3, int a4, int a5, CMSampleBufferRef sbuf)
{
  if (sbuf)
  {
    if (CMSampleBufferDataIsReady(sbuf) == 1)
    {
      result = CMSampleBufferGetDataBuffer(sbuf);
      if (result)
      {

        return FigInMemorySerializerAppendBlockBuffer(a1, a2, a3, a4, a5, result);
      }

      else
      {
        *a3 = 0;
      }
    }

    else
    {
      FigInMemorySerializationAddDataBufferFromCMSampleBuffer_cold_1(&v13);
      return v13;
    }
  }

  else
  {
    FigInMemorySerializationAddDataBufferFromCMSampleBuffer_cold_2(&v14);
    return v14;
  }

  return result;
}

size_t FigInMemoryDeserializerCopyCMSampleBuffer(const __CFAllocator *a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, const opaqueCMFormatDescription **a6, void **a7, CMSampleBufferRef *a8)
{
  theBuffer = 0;
  cf = 0;
  dataPointerOut = 0;
  if (a3 <= 0x17)
  {
    FigInMemoryDeserializerCopyCMSampleBuffer_cold_8(&lengthAtOffsetOut);
    goto LABEL_34;
  }

  v16 = *a2;
  if (!*a2)
  {
    v19 = *(a2 + 16);
    if (v19 >= 0xFFFFFFFFFFFFFFE8)
    {
      FigInMemoryDeserializerCopyCMSampleBuffer_cold_7(&lengthAtOffsetOut);
    }

    else
    {
      v18 = *(a2 + 8);
      if (-25 - v19 < v18)
      {
        FigInMemoryDeserializerCopyCMSampleBuffer_cold_6(&lengthAtOffsetOut);
      }

      else
      {
        if (&v18[v19 + 24] <= a3)
        {
          v20 = (a2 + 24);
          dataPointerOut = (a2 + 24);
          if (v19)
          {
            goto LABEL_10;
          }

LABEL_16:
          v22 = 0;
LABEL_17:
          SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor = FigRemote_CreateSampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor(a1, v20, v18, (a5 & 1) == 0, v22, a6, a7, a8);
          v22 = cf;
          if (!cf)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        FigInMemoryDeserializerCopyCMSampleBuffer_cold_5(&lengthAtOffsetOut);
      }
    }

LABEL_34:
    SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor = lengthAtOffsetOut;
    goto LABEL_19;
  }

  lengthAtOffsetOut = 0;
  if (v16 >= 0xFFFFFFFFFFFFFFE8)
  {
    FigInMemoryDeserializerCopyCMSampleBuffer_cold_4(&v29);
LABEL_30:
    SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor = v29;
    goto LABEL_19;
  }

  if (v16 + 24 > a3)
  {
    FigInMemoryDeserializerCopyCMSampleBuffer_cold_3(&v29);
    goto LABEL_30;
  }

  DataPointer = FigMemoryRecipientCopyBlockBufferFromIPCMessageData(a1, a4, a2 + 24, v16, &theBuffer);
  if (DataPointer || (DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut), DataPointer))
  {
    SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor = DataPointer;
    goto LABEL_19;
  }

  v18 = *(a2 + 8);
  v19 = *(a2 + 16);
  if (__CFADD__(v18, v19))
  {
    FigInMemoryDeserializerCopyCMSampleBuffer_cold_2(&v29);
    goto LABEL_30;
  }

  if (lengthAtOffsetOut < &v18[v19])
  {
    FigInMemoryDeserializerCopyCMSampleBuffer_cold_1(&v29);
    goto LABEL_30;
  }

  v20 = dataPointerOut;
  if (!v19)
  {
    goto LABEL_16;
  }

LABEL_10:
  v21 = FigInMemoryDeserializerCopyBlockBuffer(a1, &v18[v20], v19, 0, a4, &cf, a7, a8);
  v22 = cf;
  if (!v21)
  {
    v20 = dataPointerOut;
    v18 = *(a2 + 8);
    goto LABEL_17;
  }

  SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor = v21;
  if (cf)
  {
LABEL_18:
    CFRelease(v22);
  }

LABEL_19:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return SampleBufferFromSerializedAtomDataWithDataBufferAndLastCryptor;
}

size_t FigInMemoryDeserializerCopyCFDictionary(const void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  cf = 0;
  if (!a5)
  {
    FigInMemoryDeserializerCopyCFDictionary_cold_1(&v15);
    return v15;
  }

  v7 = FigInMemoryDeserializerCopyCFType(a1, a2, a3, a4, &cf);
  v8 = cf;
  if (!v7)
  {
    if (!cf)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v9 = CFGetTypeID(cf);
    if (v9 == CFDictionaryGetTypeID())
    {
      v12 = cf;
LABEL_7:
      v7 = 0;
      *a5 = v12;
      return v7;
    }

    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB44AuLL, "(Fig)", 0x315, v5, v10, v11);
    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

size_t FigInMemoryDeserializerCopyCFURL(const void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  cf = 0;
  if (!a5)
  {
    FigInMemoryDeserializerCopyCFURL_cold_1(&v15);
    return v15;
  }

  v7 = FigInMemoryDeserializerCopyCFType(a1, a2, a3, a4, &cf);
  v8 = cf;
  if (!v7)
  {
    if (!cf)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v9 = CFGetTypeID(cf);
    if (v9 == CFURLGetTypeID())
    {
      v12 = cf;
LABEL_7:
      v7 = 0;
      *a5 = v12;
      return v7;
    }

    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB44AuLL, "(Fig)", 0x32E, v5, v10, v11);
    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

size_t FigInMemoryDeserializerCopyCFString(const void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  cf = 0;
  if (!a5)
  {
    FigInMemoryDeserializerCopyCFString_cold_1(&v15);
    return v15;
  }

  v7 = FigInMemoryDeserializerCopyCFType(a1, a2, a3, a4, &cf);
  v8 = cf;
  if (!v7)
  {
    if (!cf)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v9 = CFGetTypeID(cf);
    if (v9 == CFStringGetTypeID())
    {
      v12 = cf;
LABEL_7:
      v7 = 0;
      *a5 = v12;
      return v7;
    }

    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB44AuLL, "(Fig)", 0x347, v5, v10, v11);
    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

size_t FigInMemoryDeserializerCopyCMFormatDescription(const void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  cf = 0;
  if (!a5)
  {
    FigInMemoryDeserializerCopyCMFormatDescription_cold_1(&v15);
    return v15;
  }

  v7 = FigInMemoryDeserializerCopyCFType(a1, a2, a3, a4, &cf);
  v8 = cf;
  if (!v7)
  {
    if (!cf)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v9 = CFGetTypeID(cf);
    if (v9 == CMFormatDescriptionGetTypeID())
    {
      v12 = cf;
LABEL_7:
      v7 = 0;
      *a5 = v12;
      return v7;
    }

    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB44AuLL, "(Fig)", 0x360, v5, v10, v11);
    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

size_t FigInMemoryDeserializerCopyCFData(const void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  cf = 0;
  if (!a5)
  {
    FigInMemoryDeserializerCopyCFData_cold_1(&v15);
    return v15;
  }

  v7 = FigInMemoryDeserializerCopyCFType(a1, a2, a3, a4, &cf);
  v8 = cf;
  if (!v7)
  {
    if (!cf)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v9 = CFGetTypeID(cf);
    if (v9 == CFDataGetTypeID())
    {
      v12 = cf;
LABEL_7:
      v7 = 0;
      *a5 = v12;
      return v7;
    }

    v7 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFB44AuLL, "(Fig)", 0x379, v5, v10, v11);
    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

size_t FigTraceLoggingStart()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = "/tmp/qttrace";
  v6 = unk_1E749FD98;
  printf("clear kernel trace buffer, reset defaults");
  v5 = "-r";
  FigTraceCommandWithArguments("/tmp/qttrace", &v4);
  printf("disable kernel trace wraparound");
  v5 = "-n";
  FigTraceCommandWithArguments("/tmp/qttrace", &v4);

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFFFFFuLL, "(Fig)", 0xC9, v0, v1, v2);
}

uint64_t FigTraceCommandWithArguments(const char *a1, uint64_t a2)
{
  memset(&v5, 0, sizeof(v5));
  if (stat("/tmp/qttrace", &v5))
  {
    puts("Error, must create /tmp/qttrace before enabling trace logging.");
    puts("  Try the following:");
    puts("      cp /usr/local/bin/trace /tmp/qttrace");
    puts("      sudo chown root:admin /tmp/qttrace");
    puts("      sudo chmod 4750 /tmp/qttrace");
    printf("Error %d creating /tmp/qttrace.\n", -1);
    return unlink("/tmp/qttrace");
  }

  else
  {
    printf(" : system( %s", a1);
    printf(" %s", *(a2 + 8));
    puts(")");
    return fflush(*MEMORY[0x1E69E9858]);
  }
}

uint64_t RegisterFigCaptionTextEmphasisType()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionTextEmphasisID = result;
  return result;
}

uint64_t FigCaptionTextEmphasisCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, CGColor *a6, const void *a7, void *a8)
{
  if (a8)
  {
    v12 = a4;
    v13 = a3;
    v14 = a2;
    FigThreadRunOnce(&sRegisterFigCaptionTextEmphasisTypeOnce, RegisterFigCaptionTextEmphasisType);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v23 = Instance;
      Instance[4] = v14;
      Instance[5] = v13;
      Instance[6] = v12;
      if (a5)
      {
        v24 = CFRetain(a5);
      }

      else
      {
        v24 = 0;
      }

      v23[4] = v24;
      v23[5] = CGColorRetain(a6);
      if (a7)
      {
        v25 = CFRetain(a7);
      }

      else
      {
        v25 = 0;
      }

      result = 0;
      v23[6] = v25;
      *a8 = v23;
    }

    else
    {
      FigCaptionTextEmphasisCreate_cold_1(0, v16, v17, v18, v19, v20, v21, v22);
      return 0;
    }
  }

  else
  {
    FigCaptionTextEmphasisCreate_cold_2(&v27, a2, a3, a4, a5, a6, a7, 0);
    return v27;
  }

  return result;
}

double fcte_Init(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void fcte_Finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  CGColorRelease(*(a1 + 40));
  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t OUTLINED_FUNCTION_0_39(pthread_once_t *a1)
{

  return FigThreadRunOnce(a1, RegisterFigCaptionTextEmphasisType);
}

OSStatus CMAudioClockCreate(CFAllocatorRef allocator, CMClockRef *clockOut)
{
  if (FigPreferAudioSessionClock())
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v4 = getFigAudioSessionClockCreateForSharedAudioSessionSymbolLoc_ptr;
    v10 = getFigAudioSessionClockCreateForSharedAudioSessionSymbolLoc_ptr;
    if (!getFigAudioSessionClockCreateForSharedAudioSessionSymbolLoc_ptr)
    {
      v5 = MediaToolboxLibrary();
      v8[3] = dlsym(v5, "FigAudioSessionClockCreateForSharedAudioSession");
      getFigAudioSessionClockCreateForSharedAudioSessionSymbolLoc_ptr = v8[3];
      v4 = v8[3];
    }

    _Block_object_dispose(&v7, 8);
    if (!v4)
    {
      CMAudioClockCreate_cold_1();
    }

    return v4(allocator, 0, clockOut);
  }

  else
  {

    return CMAudioDeviceClockCreate(allocator, 0, clockOut);
  }
}

void sub_197003178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CMAudioClockCreateForAudioSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v8 = getFigAudioSessionClockCreateForAVAudioSessionSymbolLoc_ptr;
  v14 = getFigAudioSessionClockCreateForAVAudioSessionSymbolLoc_ptr;
  if (!getFigAudioSessionClockCreateForAVAudioSessionSymbolLoc_ptr)
  {
    v9 = MediaToolboxLibrary();
    v12[3] = dlsym(v9, "FigAudioSessionClockCreateForAVAudioSession");
    getFigAudioSessionClockCreateForAVAudioSessionSymbolLoc_ptr = v12[3];
    v8 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v8)
  {
    CMAudioClockCreateForAudioSession_cold_1();
  }

  return v8(a1, a2, a3, a4);
}

void sub_19700329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFigAudioSessionClockCreateForSharedAudioSessionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaToolboxLibrary();
  result = dlsym(v2, "FigAudioSessionClockCreateForSharedAudioSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigAudioSessionClockCreateForSharedAudioSessionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MediaToolboxLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!MediaToolboxLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __MediaToolboxLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E749FDA8;
    v4 = 0;
    MediaToolboxLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = MediaToolboxLibraryCore_frameworkLibrary_0;
  if (!MediaToolboxLibraryCore_frameworkLibrary_0)
  {
    MediaToolboxLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __MediaToolboxLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  MediaToolboxLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getFigAudioSessionClockCreateForAVAudioSessionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaToolboxLibrary();
  result = dlsym(v2, "FigAudioSessionClockCreateForAVAudioSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFigAudioSessionClockCreateForAVAudioSessionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void figDebugAssertCommon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v33 = *MEMORY[0x1E69E9840];
  v14 = "(Fig)";
  if (a1)
  {
    LOBYTE(v14) = a1;
  }

  v15 = safe_snprintf(v32, 0x400uLL, "%s ", a4, a5, a6, a7, a8, v14);
  v21 = v15;
  if (a2)
  {
    v21 = safe_snprintf(&v32[v15], 1024 - v15, "assert: %s ", v16, v17, v18, v19, v20, a2) + v15;
  }

  if (a3 | a5)
  {
    v21 += safe_snprintf(&v32[v21], 1024 - v21, "at ", v16, v17, v18, v19, v20, v31);
    if (a3)
    {
      v21 += safe_snprintf(&v32[v21], 1024 - v21, "%s ", v16, v17, v18, v19, v20, a3);
    }

    if (a5)
    {
      v21 += safe_snprintf(&v32[v21], 1024 - v21, "(%s line %d) ", v16, v17, v18, v19, v20, a5);
    }
  }

  v27 = safe_snprintf(&v32[v21], 1024 - v21, "- ", v16, v17, v18, v19, v20, v31) + v21;
  if (a4)
  {
    v27 += safe_snprintf(&v32[v27], 1024 - v27, "%s ", v22, v23, v24, v25, v26, a4);
  }

  safe_snprintf(&v32[v27], 1024 - v27, "(err=%d)", v22, v23, v24, v25, v26, v9);
  if (v8)
  {
    syslog(3, "%s", v32);
  }

  else
  {
    fig_log(2u, 1, 0, 0, "%s", v28, v29, v30, v32);
  }
}

void FigDebugAssert2(const char *a1, uint64_t a2)
{
  v4 = fmtcheck(a1, "%s assert: %s at %s (%s:%d) - %s (err=%d)");
  v6 = "(Fig)";
  if (a2)
  {
    LOBYTE(v6) = a2;
  }

  fig_log_with_return_address(0, 2u, 1, 0, 0, v2, v4, v5, v6);
}

void FigDebugAssert3(const char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = fmtcheck(a1, "%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  v14 = "(Fig)";
  if (a3)
  {
    LOBYTE(v14) = a3;
  }

  fig_log_with_return_address(a2, 2u, 1, 0, 0, a10, v12, v13, v14);
}

void FigUserCrashWithMessage(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = 0;
  bzero(buffer, 0x400uLL);
  v17 = &a9;
  emitter = *MEMORY[0x1E695E480];
  v12 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a1, 0x8000100u);
  if (!v12)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v13 = fmtcheck("%s signalled err=%d at <>:%d", "%s signalled err=%d at <>:%d");
    fig_log_with_return_address(emitter, 2u, 1, 0, 0, v9, v13, v14, "(Fig)");
    __break(1u);
  }

  v15 = CFStringCreateWithFormatAndArguments(emitter, 0, v12, v17);
  CFStringGetCString(v15, buffer, 1024, 0x8000100u);
  qword_1EAF1B730 = buffer;
  if (v15)
  {
    CFRelease(v15);
  }

  __break(1u);
}

uint64_t FigUserFaultWithMessage(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    FigUserFaultWithMessage_cold_1(a2, a1);
  }

  return 1;
}

uint64_t FigUserStackshotWithMessage(uint64_t a1, uint64_t a2)
{
  if (FigUserStackshotWithMessage_nonce != -1)
  {
    FigUserStackshotWithMessage_cold_1();
  }

  if (!FigUserStackshotWithMessage_stackshotsEnabled)
  {
    return 0;
  }

  v4 = getpid();

  return MEMORY[0x1EEE238D0](a2, a1, v4);
}

uint64_t __FigUserStackshotWithMessage_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault(@"take_stackshots", @"com.apple.coremedia", 1);
  FigUserStackshotWithMessage_stackshotsEnabled = result;
  return result;
}

void FigUserBreak()
{
  v0 = FigUserBreak_userbreak;
  if (FigUserBreak_userbreak == 85)
  {
    v1 = getenv("USERBREAK");
    v0 = v1 && *v1 == 49 && !v1[1];
    FigUserBreak_userbreak = v0;
  }

  if (v0)
  {
    __break(1u);
  }
}

uint64_t FigCopyBacktrace(const __CFAllocator *a1, CFArrayRef *a2, __CFArray **a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v42 = 0;
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
  *v17 = 0u;
  v6 = backtrace(v17, 51);
  v7 = v6 - (v6 > 0);
  if (a2 && v7 >= 1)
  {
    *a2 = CFArrayCreate(a1, &v17[1], v7, 0);
  }

  if (a3 && v7 >= 1)
  {
    v8 = &v17[1];
    v9 = backtrace_symbols(&v17[1], v7);
    Mutable = CFArrayCreateMutable(a1, v7, MEMORY[0x1E695E9C0]);
    if (Mutable)
    {
      v11 = v7;
      v12 = v9;
      do
      {
        v13 = *v8;
        memset(&v16, 0, sizeof(v16));
        dladdr(v13, &v16);
        v14 = CFStringCreateWithFormat(a1, 0, @"%s    [%p + %td]", *v12, v16.dli_fbase, v13 - v16.dli_fbase);
        CFArrayAppendValue(Mutable, v14);
        if (v14)
        {
          CFRelease(v14);
        }

        ++v12;
        ++v8;
        --v11;
      }

      while (v11);
    }

    free(v9);
    *a3 = Mutable;
  }

  return v7;
}

void FigLogBacktraceFrames()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v7 = v0;
  *&v59[26] = *MEMORY[0x1E69E9840];
  if (v1 && *v1)
  {
    v8 = safe_snprintf(v58, 0x1000uLL, "%s\n", v2, v3, v4, v5, v6, v1);
    if (!v7)
    {
LABEL_4:
      v9 = 4096 - v8;
      v10 = "FigLogBacktrace passed NULL backtrace";
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if (!v0)
    {
      goto LABEL_4;
    }
  }

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
  *values = 0u;
  Count = CFArrayGetCount(v7);
  if (Count < 50)
  {
    v18 = Count;
  }

  else
  {
    v8 += safe_snprintf(&v58[v8], 4096 - v8, "Too many frames\n", v13, v14, v15, v16, v17, v31);
    v18 = 50;
  }

  v60.location = 0;
  v60.length = v18;
  CFArrayGetValues(v7, v60, values);
  v19 = backtrace_symbols(values, v18);
  if (v19)
  {
    v20 = v19;
    if (v18 >= 1)
    {
      v21 = values;
      v22 = v19;
      v23 = v18;
      do
      {
        v24 = *v21++;
        memset(&v32, 0, sizeof(v32));
        dladdr(v24, &v32);
        v25 = *v22++;
        v8 += safe_snprintf(&v58[v8], 4096 - v8, "%s    [%p + %td]\n", v26, v27, v28, v29, v30, v25);
        --v23;
      }

      while (v23);
    }

    free(v20);
  }

  if (v8 == 4096 || v18 >= 50 && v8 - 4074 <= 0x16)
  {
    v31 = "FigBacktrace Truncated";
    v10 = " - %s";
    v11 = v59;
    v9 = 26;
    goto LABEL_19;
  }

  if (v18 < 50)
  {
    goto LABEL_20;
  }

  v9 = 4096 - v8;
  v31 = "FigBacktrace Truncated";
  v10 = "%s";
LABEL_5:
  v11 = &v58[v8];
LABEL_19:
  safe_snprintf(v11, v9, v10, v2, v3, v4, v5, v6, v31);
LABEL_20:
  fig_log(1u, 1, 0, 0, "%s", v4, v5, v6, v58);
}

size_t safe_snprintf(char *a1, size_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  LODWORD(result) = vsnprintf(a1, a2, a3, &a9);
  if (a2 - 1 >= result)
  {
    return result;
  }

  else
  {
    return a2 - 1;
  }
}

void FigLogBacktrace()
{
  MEMORY[0x1EEE9AC00]();
  v1 = v0;
  v32 = *MEMORY[0x1E69E9840];
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0u;
  v27[0] = 0;
  v2 = backtrace(&v29, 51);
  v8 = v2 - 2;
  if (v2 > 2)
  {
    v9 = backtrace_symbols(v30, v8);
    v10 = 0;
    v11 = 0;
    do
    {
      memset(&v26, 0, sizeof(v26));
      dladdr(*(v30 + v10 * 8), &v26);
      if (v9)
      {
        v17 = v9[v10];
      }

      else
      {
        v17 = "?";
      }

      v11 += safe_snprintf(&v27[v11], 4096 - v11, "%s    [%p + %td]\n", v12, v13, v14, v15, v16, v17);
      ++v10;
    }

    while (v8 != v10);
    if (v11 == 4096)
    {
      safe_snprintf(v28, 0x19uLL, "%s", v18, v19, v20, v21, v22, " - FigBacktrace Truncated");
    }

    v1 = v0;
  }

  else
  {
    safe_snprintf(v27, 0x1000uLL, "Not enough frames to display", v3, v4, v5, v6, v7, v25);
    v9 = 0;
  }

  excessive_emitter_for_subsystem = fig_log_get_excessive_emitter_for_subsystem("com.apple.coremedia");
  fig_log_with_return_address(excessive_emitter_for_subsystem, 1u, 1, 0, 0, v1, "%s", v24, v27);
  free(v9);
}

uint64_t FigCopyLastSignaledErrorInfo(_DWORD *a1, CFStringRef *a2, CFStringRef *a3, CFStringRef *a4, CFStringRef *a5, CFStringRef *a6, void *a7, _OWORD *a8)
{
  if (figGetSignalErrorLatchLock_sInitSignalErrorLatchOnce != -1)
  {
    FigCopyLastSignaledErrorInfo_cold_1();
  }

  FigSimpleMutexLock(figGetSignalErrorLatchLock_sListLock);
  if (a1)
  {
    *a1 = sLastError;
  }

  v16 = MEMORY[0x1E695E480];
  if (a2)
  {
    *a2 = CFStringCreateWithCString(*MEMORY[0x1E695E480], byte_1ED4CC724, 0);
  }

  if (a3)
  {
    *a3 = CFStringCreateWithCString(*v16, byte_1ED4CC744, 0);
  }

  if (a4)
  {
    *a4 = CFStringCreateWithCString(*v16, byte_1ED4CC7C4, 0);
  }

  if (a5)
  {
    *a5 = CFStringCreateWithCString(*v16, byte_1ED4CC7E4, 0);
  }

  if (a6)
  {
    *a6 = CFStringCreateWithCString(*v16, byte_1ED4CC824, 0);
  }

  if (a7)
  {
    *a7 = qword_1ED4CC868;
  }

  if (a8)
  {
    *a8 = xmmword_1ED4CC870;
  }

  if (figGetSignalErrorLatchLock_sInitSignalErrorLatchOnce != -1)
  {
    FigCopyLastSignaledErrorInfo_cold_1();
  }

  v17 = figGetSignalErrorLatchLock_sListLock;

  return FigSimpleMutexUnlock(v17);
}

uint64_t figRecordLastSignaledErrorInfoAndGetRepetitionCount(int a1, const char *a2, const char *a3, const char *a4, char *a5, char *a6, uint64_t a7)
{
  v21 = 0uLL;
  gettimeofday(&v21, 0);
  if (!a2)
  {
    a2 = "";
  }

  if (!a3)
  {
    a3 = "";
  }

  if (!a4)
  {
    a4 = "";
  }

  if (!a5)
  {
    a5 = "";
  }

  if (!a6)
  {
    a6 = "";
  }

  if (figGetSignalErrorLatchLock_sInitSignalErrorLatchOnce != -1)
  {
    FigCopyLastSignaledErrorInfo_cold_1();
  }

  FigSimpleMutexLock(figGetSignalErrorLatchLock_sListLock);
  if (sLastError == a1 && qword_1ED4CC868 == a7 && v21 == xmmword_1ED4CC870 && DWORD2(v21) - DWORD2(xmmword_1ED4CC870) <= 999 && !strncmp(a2, byte_1ED4CC724, 0x1FuLL) && !strncmp(a3, byte_1ED4CC744, 0x7FuLL) && !strncmp(a4, byte_1ED4CC7C4, 0x1FuLL) && fig_strHasSuffix(a5, byte_1ED4CC7E4) && fig_strHasSuffix(a6, byte_1ED4CC824))
  {
    v18 = dword_1ED4CC880 + 1;
  }

  else
  {
    sLastError = a1;
    __strlcpy_chk();
    __strlcpy_chk();
    __strlcpy_chk();
    v14 = strlen(a5);
    if (v14 >= 0x3F)
    {
      v15 = 63;
    }

    else
    {
      v15 = v14;
    }

    __memcpy_chk();
    byte_1ED4CC7E4[v15] = 0;
    v16 = strlen(a6);
    if (v16 >= 0x3F)
    {
      v17 = 63;
    }

    else
    {
      v17 = v16;
    }

    __memcpy_chk();
    byte_1ED4CC824[v17] = 0;
    qword_1ED4CC868 = a7;
    gettimeofday(&xmmword_1ED4CC870, 0);
    v18 = 0;
  }

  dword_1ED4CC880 = v18;
  xmmword_1ED4CC870 = v21;
  if (figGetSignalErrorLatchLock_sInitSignalErrorLatchOnce != -1)
  {
    FigCopyLastSignaledErrorInfo_cold_1();
  }

  v19 = figGetSignalErrorLatchLock_sListLock;

  return FigSimpleMutexUnlock(v19);
}

uint64_t FigSignalErrorAt2(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5, char *a6, char *a7, uint64_t a8)
{
  FigAtomicIncrement32(&gErrorCount);
  figRecordLastSignaledErrorInfoAndGetRepetitionCount(a2, a3, a4, a5, a6, a7, a8);
  return a2;
}

uint64_t FigSignalErrorAt3(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5, const char *a6, char *a7, char *a8, uint64_t a9)
{
  FigAtomicIncrement32(&gErrorCount);
  figRecordLastSignaledErrorInfoAndGetRepetitionCount(a3, a4, a5, a6, a7, a8, a9);
  return a3;
}

size_t FigSignalErrorAtGM(const char *structureAllocator, uint64_t *memoryBlock, size_t blockLength, CFAllocatorRef blockAllocator, const CMBlockBufferCustomBlockSource *customBlockSource, uint64_t dataLength, CMBlockBufferFlags flags, CMBlockBufferRef *blockBufferOut)
{
  v12 = fmtcheck(structureAllocator, "%s signalled err=%d at <>:%d");
  v14 = "(Fig)";
  if (blockAllocator)
  {
    LOBYTE(v14) = blockAllocator;
  }

  fig_log_with_return_address(memoryBlock, 2u, 1, 0, 0, dataLength, v12, v13, v14);
  return blockLength;
}

uint64_t FigDebugSettingGetKeyAsBoolean(const __CFString *a1, Boolean *a2, Boolean a3)
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(a1, @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  v6 = keyExistsAndHasValidFormat;
  if (keyExistsAndHasValidFormat)
  {
    v7 = AppBooleanValue;
  }

  else
  {
    v7 = a3;
  }

  *a2 = v7;
  return v6;
}

uint64_t FigDebugGetAdoptedVoucherProcessIDAndUUIDString(char *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  uuid_unparse_lower(uu, a1);
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  if (proc_pidoriginatorinfo() != 48)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v5;
  uuid_copy(uu, &v4);
  uuid_unparse_lower(uu, a1);
  return v2;
}

uint64_t FigSysdiagnoseBlock_OneTimeInitializationForMediaserverd()
{
  if (InitializeSysdiagnoseBlockRegistry_sInitSysdiagnoseBlockRegistryOnce != -1)
  {
    FigSysdiagnoseBlock_OneTimeInitializationForMediaserverd_cold_1();
  }

  return os_state_add_handler();
}

void FigInstallSysdiagnoseBlock(uint64_t a1, uint64_t a2)
{
  if (InitializeSysdiagnoseBlockRegistry_sInitSysdiagnoseBlockRegistryOnce != -1)
  {
    FigSysdiagnoseBlock_OneTimeInitializationForMediaserverd_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __FigInstallSysdiagnoseBlock_block_invoke;
  v4[3] = &unk_1E749FE08;
  v4[4] = a2;
  v4[5] = a1;
  dispatch_sync(gFigSysdiagnoseBlockRegistry_0, v4);
}

void __FigInstallSysdiagnoseBlock_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    CFDictionarySetValue(gFigSysdiagnoseBlockRegistry_1, v1, v2);
  }

  else
  {
    CFDictionaryRemoveValue(gFigSysdiagnoseBlockRegistry_1, v1);
  }
}

uint64_t FigIsItOKToLogURLs()
{
  if (sOKToLogURLs_DetermineInitialValueOnce != -1)
  {
    FigIsItOKToLogURLs_cold_1();
  }

  return sOKToLogURLs;
}

uint64_t DetermineInitialValueForOKToLogURLs()
{
  if (FigDebugIsInternalBuild_onceToken != -1)
  {
    DetermineInitialValueForOKToLogURLs_cold_1();
  }

  result = FigGetCFPreferenceNumberWithDefault(@"logurls", @"com.apple.coremedia", FigDebugIsInternalBuild_isInternalBuild);
  sOKToLogURLs = result;
  return result;
}

uint64_t FigDebugIsInternalBuild()
{
  if (FigDebugIsInternalBuild_onceToken != -1)
  {
    DetermineInitialValueForOKToLogURLs_cold_1();
  }

  return FigDebugIsInternalBuild_isInternalBuild;
}

uint64_t __FigDebugIsInternalBuild_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  FigDebugIsInternalBuild_isInternalBuild = result;
  return result;
}

uint64_t __figGetSignalErrorLatchLock_block_invoke()
{
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  result = FigSimpleMutexCreateWithFlags(AllocatorForPermanentAllocations, 0);
  figGetSignalErrorLatchLock_sListLock = result;
  return result;
}

BOOL fig_strHasSuffix(char *__s, const char *a2)
{
  result = 0;
  if (__s && a2)
  {
    v5 = strlen(__s);
    v6 = strlen(a2);
    if (v5 >= v6)
    {
      if (v5 == v6)
      {
        v7 = strcmp(__s, a2);
      }

      else
      {
        v7 = memcmp(&__s[v5 - v6], a2, v6);
      }

      return v7 == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFMutableDictionaryRef __InitializeSysdiagnoseBlockRegistry_block_invoke()
{
  v1 = *byte_1F0B73450;
  gFigSysdiagnoseBlockRegistry_0 = dispatch_queue_create("FigSysdiagnoseBlockRegistryQueue", 0);
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], &v1);
  gFigSysdiagnoseBlockRegistry_1 = result;
  return result;
}

uint64_t SysdiagnoseBlockDictionaryApplierFunction(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 16))(a2);
  }

  return result;
}

size_t CMTimeSyncClockCreateForSystemDomainClockIdentifier(uint64_t a1, CFTypeRef *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  cf = 0;
  HostTimeClock = CMClockGetHostTimeClock();
  if (sTimeSyncFunctionsLoadedOnce != -1)
  {
    CMTimeSyncClockCreateForSystemDomainClockIdentifier_cold_1();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_21:
    v8 = qword_1EAF1CE00;
    v9 = v2;
    v10 = 4294954551;
    v11 = 566;
    goto LABEL_22;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (!CM8021ASClockEnsureTimeSyncServices())
  {
    CMTimeMake(&v42, 1, 10);
    TimeCallback = FigDerivedClockCreateWithGetTimeCallback(a1, gFigTimeSyncClockCallbacks, HostTimeClock, &v42.value, 1, &cf, v12, v13);
    if (TimeCallback)
    {
      v15 = TimeCallback;
      v16 = 0;
      goto LABEL_23;
    }

    v16 = FigCFWeakReferenceHolderCreateWithReferencedObject(cf);
    if (!v16)
    {
      goto LABEL_19;
    }

    DerivedStorage = FigDerivedClockGetDerivedStorage(cf, v17, v18, v19, v20, v21, v22, v23);
    *DerivedStorage = FigSimpleMutexCreate();
    if (HostTimeClock)
    {
      v25 = CFRetain(HostTimeClock);
    }

    else
    {
      v25 = 0;
    }

    *(DerivedStorage + 8) = v25;
    *(DerivedStorage + 40) = *sTSNullgPTPClockIdentity;
    *(DerivedStorage + 112) = 0;
    *(DerivedStorage + 96) = *&kCMTimeZero.value;
    *(DerivedStorage + 88) = 0;
    *(DerivedStorage + 72) = *&kCMTimeInvalid.value;
    *(DerivedStorage + 64) = 0;
    *(DerivedStorage + 48) = *&kCMTimeInvalid.value;
    *(DerivedStorage + 24) = CFRetain(v16);
    *(DerivedStorage + 120) = 0;
    v26 = sTimeSyncSystemDomainClockIdentifier();
    *(DerivedStorage + 32) = v26;
    if (v26 == *sTSNullClockIdentifier)
    {
      v15 = 4294954540;
      goto LABEL_23;
    }

    v27 = sTimeSyncClockCreateWithClockIdentifer();
    *(DerivedStorage + 16) = v27;
    if (!v27)
    {
LABEL_19:
      v15 = 4294954549;
      goto LABEL_23;
    }

    sTimeSyncClockSetLockStateChangeCallback(v27, figTimeSyncClock_LockStateDidChange, *(DerivedStorage + 24));
    sTimeSyncClockSetgPTPGrandmasterAndPortChangeCallback(*(DerivedStorage + 16), figTimeSyncClock_MasterAndPortDidChange, *(DerivedStorage + 24));
    sTimeSyncClockSetTimeSyncTimeChangeCallback(*(DerivedStorage + 16), figTimeSyncClock_TimeSyncTimeDidChange, *(DerivedStorage + 24));
    v28 = FigCFWeakReferenceHolderCreateWithReferencedObject(cf);
    if (figTimeSyncClock_periodicTasksInit_onceToken != -1)
    {
      CMTimeSyncClockCreateForSystemDomainClockIdentifier_cold_2();
    }

    dispatch_async_f(gPeriodicTasksQueue, v28, figTimeSyncClock_addClockToPeriodicTasksInternal);
    if (sLogCreatedOnce != -1)
    {
      CMTimeSyncClockCreateForSystemDomainClockIdentifier_cold_3();
    }

    *(DerivedStorage + 128) = os_signpost_id_generate(sLog);
LABEL_28:
    if (dword_1EAF1CE08)
    {
      v36 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CE00, 1, &v36, &type);
      v31 = v36;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v33 = v31;
      }

      else
      {
        v33 = v31 & 0xFFFFFFFE;
      }

      if (v33)
      {
        v38 = 136315394;
        v39 = "CMTimeSyncClockCreateForSystemDomainClockIdentifier";
        v40 = 2048;
        v41 = cf;
        v34 = _os_log_send_and_compose_impl();
        LOBYTE(v31) = v36;
      }

      else
      {
        v34 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(qword_1EAF1CE00, 1u, 1, v34, v34 != &v42, v31, 0, v32);
    }

    v15 = 0;
    *a2 = cf;
    cf = 0;
    if (v16)
    {
      goto LABEL_26;
    }

    return v15;
  }

  v8 = qword_1EAF1CE00;
  v9 = v2;
  v10 = 4294951236;
  v11 = 575;
LABEL_22:
  v15 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, v10, "<<<< TimeSyncClock >>>>", v11, v9, v5, v6);
  v16 = 0;
  if (!v15)
  {
    goto LABEL_28;
  }

LABEL_23:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
LABEL_26:
    CFRelease(v16);
  }

  return v15;
}

void *LoadTimeSyncFunctions()
{
  v0 = FigNote_AllowInternalDefaultLogs() != 0;
  fig_note_initialize_category_with_default_work_cf(&gFigTimeSyncClockTrace[1], @"timesync_trace", @"com.apple.coremedia", "", "com.apple.coremedia", v0, 0, gFigTimeSyncClockTrace);
  fig_note_initialize_category_with_default_work_cf(&dword_1EAF1CE08, @"timesync_trace", @"com.apple.coremedia", "", "com.apple.coremedia", 1u, 0, &qword_1EAF1CE00);
  v1 = dlopen("/System/Library/PrivateFrameworks/TimeSync.framework/TimeSync", 4);
  if (!v1)
  {
    v11 = 267;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = v1;
  sTSNullClockIdentifier = dlsym(v1, "TSNullClockIdentifier");
  if (!sTSNullClockIdentifier)
  {
    v11 = 235;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTSNullgPTPClockIdentity = dlsym(v9, "TSNullgPTPClockIdentity");
  if (!sTSNullgPTPClockIdentity)
  {
    v11 = 236;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncAddgPTPServicesSync = dlsym(v9, "TimeSyncAddgPTPServicesSync");
  if (!sTimeSyncAddgPTPServicesSync)
  {
    v11 = 237;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncRemovegPTPServices = dlsym(v9, "TimeSyncRemovegPTPServices");
  if (!sTimeSyncRemovegPTPServices)
  {
    v11 = 238;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockCreateWithClockIdentifer = dlsym(v9, "TimeSyncClockCreateWithClockIdentifer");
  if (!sTimeSyncClockCreateWithClockIdentifer)
  {
    v11 = 239;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockDispose = dlsym(v9, "TimeSyncClockDispose");
  if (!sTimeSyncClockDispose)
  {
    v11 = 240;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockGetHostTimeAndGrandmasterIdentityForClockTime = dlsym(v9, "TimeSyncClockGetHostTimeAndGrandmasterIdentityForClockTime");
  if (!sTimeSyncClockGetHostTimeAndGrandmasterIdentityForClockTime)
  {
    v11 = 241;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockGetClockTimeAndGrandmasterIdentityForHostTime = dlsym(v9, "TimeSyncClockGetClockTimeAndGrandmasterIdentityForHostTime");
  if (!sTimeSyncClockGetClockTimeAndGrandmasterIdentityForHostTime)
  {
    v11 = 242;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockGetClockRate = dlsym(v9, "TimeSyncClockGetClockRate");
  if (!sTimeSyncClockGetClockRate)
  {
    v11 = 243;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockGetLockState = dlsym(v9, "TimeSyncClockGetLockState");
  if (!sTimeSyncClockGetLockState)
  {
    v11 = 244;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockGetgPTPGrandmasterIdentity = dlsym(v9, "TimeSyncClockGetgPTPGrandmasterIdentity");
  if (!sTimeSyncClockGetgPTPGrandmasterIdentity)
  {
    v11 = 245;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncSystemDomainClockIdentifier = dlsym(v9, "TimeSyncSystemDomainClockIdentifier");
  if (!sTimeSyncSystemDomainClockIdentifier)
  {
    v11 = 246;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockSetLockStateChangeCallback = dlsym(v9, "TimeSyncClockSetLockStateChangeCallback");
  if (!sTimeSyncClockSetLockStateChangeCallback)
  {
    v11 = 248;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockSetgPTPGrandmasterChangeCallback = dlsym(v9, "TimeSyncClockSetgPTPGrandmasterChangeCallback");
  if (!sTimeSyncClockSetgPTPGrandmasterChangeCallback)
  {
    v11 = 249;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockSetgPTPGrandmasterAndPortChangeCallback = dlsym(v9, "TimeSyncClockSetgPTPGrandmasterAndPortChangeCallback");
  if (!sTimeSyncClockSetgPTPGrandmasterAndPortChangeCallback)
  {
    v11 = 251;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockSetTimeSyncTimeChangeCallback = dlsym(v9, "TimeSyncClockSetTimeSyncTimeChangeCallback");
  if (!sTimeSyncClockSetTimeSyncTimeChangeCallback)
  {
    v11 = 254;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockAddUDPv4EndToEndPort = dlsym(v9, "TimeSyncClockAddUDPv4EndToEndPort");
  if (!sTimeSyncClockAddUDPv4EndToEndPort)
  {
    v11 = 257;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockRemoveUDPv4EndToEndPort = dlsym(v9, "TimeSyncClockRemoveUDPv4EndToEndPort");
  if (!sTimeSyncClockRemoveUDPv4EndToEndPort)
  {
    v11 = 258;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockAddUDPv6EndToEndPort = dlsym(v9, "TimeSyncClockAddUDPv6EndToEndPort");
  if (!sTimeSyncClockAddUDPv6EndToEndPort)
  {
    v11 = 259;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockRemoveUDPv6EndToEndPort = dlsym(v9, "TimeSyncClockRemoveUDPv6EndToEndPort");
  if (!sTimeSyncClockRemoveUDPv6EndToEndPort)
  {
    v11 = 260;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  sTimeSyncClockAddAWDLPort = dlsym(v9, "TimeSyncClockAddAWDLPort");
  if (!sTimeSyncClockAddAWDLPort)
  {
    v11 = 261;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  result = dlsym(v9, "TimeSyncClockRemoveAWDLPort");
  sTimeSyncClockRemoveAWDLPort = result;
  if (!result)
  {
    v11 = 262;
    return LoadTimeSyncFunctions_cold_1(v11, v2, v3, v4, v5, v6, v7, v8);
  }

  return result;
}

os_log_t __CMTimeSyncClockCreateForSystemDomainClockIdentifier_block_invoke()
{
  result = os_log_create("com.apple.coremedia", "FigTimeSyncClock");
  sLog = result;
  return result;
}

CFStringRef figTimeSyncClock_CopyDebugDesc(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  FigSimpleMutexLock(*DerivedStorage);
  v10 = *(DerivedStorage + 40);
  v11 = *sTSNullgPTPClockIdentity;
  v12 = CFGetAllocator(a1);
  if (v10 == v11)
  {
    v13 = 0;
    v14 = "not locked";
  }

  else
  {
    v13 = *(DerivedStorage + 40);
    v14 = "locked";
  }

  v15 = CFStringCreateWithFormat(v12, 0, @"CMTimeSyncClock %s, GM=0x%016llx"), v14, v13);
  FigSimpleMutexUnlock(*DerivedStorage);
  return v15;
}

os_unfair_lock_s **figTimeSyncClock_Finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = *result;
  if (*result)
  {
    v10 = result;
    FigSimpleMutexLock(*result);
    v11 = v10[1];
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = v10[2];
    if (v12)
    {
      sTimeSyncClockSetgPTPGrandmasterAndPortChangeCallback(v12, 0, 0);
      sTimeSyncClockSetLockStateChangeCallback(v10[2], 0, 0);
      sTimeSyncClockSetTimeSyncTimeChangeCallback(v10[2], 0, 0);
      sTimeSyncClockDispose(v10[2]);
    }

    v13 = v10[3];
    if (v13)
    {
      CFRelease(v13);
    }

    *v10 = 0;
    FigSimpleMutexUnlock(v9);

    return FigSimpleMutexDestroy(v9);
  }

  return result;
}

BOOL figTimeSyncClock_MightDrift(uint64_t a1, uint64_t a2)
{
  if (!FigDerivedClockVerifyCallbacksMatch(a1, gFigTimeSyncClockCallbacks) || !FigDerivedClockVerifyCallbacksMatch(a2, gFigTimeSyncClockCallbacks))
  {
    return 1;
  }

  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, v4, v5, v6, v7, v8, v9, v10);
  v19 = FigDerivedClockGetDerivedStorage(a2, v12, v13, v14, v15, v16, v17, v18);
  v20 = sTimeSyncClockGetgPTPGrandmasterIdentity(*(DerivedStorage + 16));
  return v20 != sTimeSyncClockGetgPTPGrandmasterIdentity(*(v19 + 16));
}

uint64_t figTimeSyncClock_GetRate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = sTimeSyncClockGetClockRate;
  v10 = *(DerivedStorage + 16);

  return v9(v10);
}

void figTimeSyncClockGetClockTimeForHostTime(uint64_t a1@<X0>, CMTime *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, CMBlockBufferFlags a7@<W6>, CMBlockBufferRef *a8@<X7>, CMTime *a9@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  v22 = *sTSNullgPTPClockIdentity;
  *&a9->value = *&kCMTimeInvalid.value;
  a9->epoch = 0;
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v14 = *(DerivedStorage + 16);
  hostTime = *a2;
  v15 = CMClockConvertHostTimeToSystemUnits(&hostTime);
  ClockTimeAndGrandmasterIdentityForHostTime = sTimeSyncClockGetClockTimeAndGrandmasterIdentityForHostTime(v14, v15, &v22);
  v17 = ClockTimeAndGrandmasterIdentityForHostTime;
  if (ClockTimeAndGrandmasterIdentityForHostTime != -1)
  {
    CMTimeMake(a9, ClockTimeAndGrandmasterIdentityForHostTime, 1000000000);
    if (a3)
    {
      *a3 = v22;
    }
  }

  v18 = *(DerivedStorage + 128);
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = sLog;
    if (os_signpost_enabled(sLog))
    {
      hostTime = *a2;
      Seconds = CMTimeGetSeconds(&hostTime);
      hostTime = *a9;
      v21 = CMTimeGetSeconds(&hostTime);
      LODWORD(hostTime.value) = 134219264;
      *(&hostTime.value + 4) = a1;
      LOWORD(hostTime.flags) = 2048;
      *(&hostTime.flags + 2) = Seconds;
      HIWORD(hostTime.epoch) = 2048;
      v24 = v15;
      v25 = 2048;
      v26 = v17;
      v27 = 2048;
      v28 = v21;
      v29 = 2048;
      v30 = v22;
      _os_signpost_emit_with_name_impl(&dword_196FA7000, v19, OS_SIGNPOST_EVENT, v18, "TimeSyncConvertTime", "clock <%p> converted hosttime %g (in system units %llu) to clocktime %llu networktime %g using GM 0x%016llx", &hostTime, 0x3Eu);
    }
  }
}

void figTimeSyncClock_addClockToPeriodicTasksInternal(void *value)
{
  CFArrayAppendValue(gPeriodicTaskClocksArray, value);
  CFRelease(value);

  figTimeSyncClock_updatePeriodicTasksTimerSourceInternal();
}

CFMutableArrayRef figTimeSyncClock_periodicTasksInitOnce()
{
  gPeriodicTasksQueue = FigDispatchQueueCreateWithPriority("com.apple.coremedia.cmtimesyncclockperiodictasks", 0, 16);
  gPeriodicTasksSource = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, gPeriodicTasksQueue);
  dispatch_source_set_timer(gPeriodicTasksSource, 0, 0x3B9ACA00uLL, 0x1DCD6500uLL);
  dispatch_source_set_event_handler_f(gPeriodicTasksSource, figTimeSyncClock_performPeriodicTasksInternal);
  gPeriodicTasksIsArmed = 0;
  result = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  gPeriodicTaskClocksArray = result;
  return result;
}

void figTimeSyncClock_performPeriodicTasksInternal()
{
  if (CFArrayGetCount(gPeriodicTaskClocksArray) >= 1)
  {
    v0 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(gPeriodicTaskClocksArray, v0);
      v2 = FigCFWeakReferenceHolderCopyReferencedObject(ValueAtIndex);
      if (v2)
      {
        v7 = v2;
        figTimeSyncClock_getAnchorTimeWithResync(v2, 0, 0, 0, v3, v4, v5, v6);
        CFRelease(v7);
        ++v0;
      }

      else
      {
        CFArrayRemoveValueAtIndex(gPeriodicTaskClocksArray, v0);
      }
    }

    while (v0 < CFArrayGetCount(gPeriodicTaskClocksArray));
  }

  figTimeSyncClock_updatePeriodicTasksTimerSourceInternal();
}

void figTimeSyncClock_updatePeriodicTasksTimerSourceInternal()
{
  Count = CFArrayGetCount(gPeriodicTaskClocksArray);
  if (Count)
  {
    if (gPeriodicTasksIsArmed)
    {
      return;
    }

    dispatch_resume(gPeriodicTasksSource);
  }

  else
  {
    if (!gPeriodicTasksIsArmed)
    {
      return;
    }

    dispatch_suspend(gPeriodicTasksSource);
  }

  gPeriodicTasksIsArmed = Count != 0;
}

void OUTLINED_FUNCTION_3_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  a32 = a25;
  a33 = a26;

  figTimeSyncClockGetClockTimeForHostTime(v43, &a32, &a24, a4, a5, a6, a7, a8, &a43);
}

uint64_t OUTLINED_FUNCTION_4_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, int a19)
{
  a19 = 0;
  a18 = 0;
  v20 = qword_1EAF1CE00;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(v20, 1, &a19, &a18);
}

BOOL OUTLINED_FUNCTION_9_9(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, os_log_type_t type, int a19)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigAssetAnalysisReporterGetTypeID()
{
  if (_MergedGlobals_27 != -1)
  {
    FigAssetAnalysisReporterGetTypeID_cold_1();
  }

  return qword_1ED4CC8D8;
}

uint64_t RegisterFigAssetAnalysisReporterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t FigAssetAnalysisReporterCreate(const __CFAllocator *a1, void *a2)
{
  if (a2)
  {
    if (_MergedGlobals_27 != -1)
    {
      FigAssetAnalysisReporterGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v5 = Instance;
      Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
      v5[2] = Mutable;
      if (Mutable)
      {
        result = 0;
        *a2 = v5;
      }

      else
      {
        FigAssetAnalysisReporterCreate_cold_2(v5, &v8);
        return v8;
      }
    }

    else
    {
      FigAssetAnalysisReporterCreate_cold_3(&v9);
      return v9;
    }
  }

  else
  {
    FigAssetAnalysisReporterCreate_cold_4(&v10);
    return v10;
  }

  return result;
}

uint64_t FigAssetAnalysisReporterAddMessage(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    FigAssetAnalysisReporterAddMessage_cold_4(&v5);
    return v5;
  }

  if (!theDict)
  {
    FigAssetAnalysisReporterAddMessage_cold_3(&v5);
    return v5;
  }

  if (CFDictionaryGetCount(theDict) <= 1)
  {
    FigAssetAnalysisReporterAddMessage_cold_2(&v5);
    return v5;
  }

  if (!CFDictionaryGetValue(theDict, @"AnalysisType"))
  {
    FigAssetAnalysisReporterAddMessage_cold_1(&v5);
    return v5;
  }

  CFArrayAppendValue(*(a1 + 16), theDict);
  return 0;
}

uint64_t FigAssetAnalysisReporterCopyMessages(CFArrayRef *a1, CFArrayRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = CFGetAllocator(a1);
      Copy = CFArrayCreateCopy(v4, a1[2]);
      result = 0;
      *a2 = Copy;
    }

    else
    {
      FigAssetAnalysisReporterCopyMessages_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigAssetAnalysisReporterCopyMessages_cold_2(&v8);
    return v8;
  }

  return result;
}

void AssetAnalysisReporter_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

__CFString *AssetAnalysisReporter_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  Count = *(a1 + 16);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  CFStringAppendFormat(Mutable, 0, @"FigAssetAnalysisReporter %d messages", Count);
  return Mutable;
}

BOOL FigAtomicCompareAndSwapPtr(uint64_t a1, unint64_t a2, atomic_ullong *a3)
{
  v3 = a1;
  atomic_compare_exchange_strong_explicit(a3, &v3, a2, memory_order_relaxed, memory_order_relaxed);
  return v3 == a1;
}

uint64_t FigSimpleMutexCreateWithFlags(const void *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = figSimpleMutexAllocateForReentrantPThreadMutex;
  if (a2 >= 0)
  {
    v4 = figSimpleMutexAllocateForPThreadMutex;
  }

  v5 = v4();
  v6 = v5;
  if (v5)
  {
    v7 = a2 | 1;
    *(v5 + 64) = a2 | 1;
    if (a1)
    {
      v8 = CFRetain(a1);
      v7 = *(v6 + 64);
    }

    else
    {
      v8 = 0;
    }

    *(v6 + 72) = v8;
    if (v7 < 0)
    {
      FigSimpleMutexCreateWithFlags_cold_1(&v11, v6, &v10);
      if (!v10)
      {
        return v6;
      }

      goto LABEL_9;
    }

    if (pthread_mutex_init(v6, 0))
    {
LABEL_9:
      figSimpleMutexDeallocateInternal(v6);
      return 0;
    }
  }

  return v6;
}

void figSimpleMutexDeallocateInternal(void *ptr)
{
  v1 = ptr[9];
  *ptr = 0u;
  *(ptr + 1) = 0u;
  *(ptr + 2) = 0u;
  *(ptr + 3) = 0u;
  *(ptr + 4) = 0u;
  CFAllocatorDeallocate(v1, ptr);
  if (v1)
  {

    CFRelease(v1);
  }
}

pthread_cond_t *FigConditionVariableCreateWithFlags(const __CFAllocator *a1)
{
  v2 = MEMORY[0x19A8D7200](a1, 56, 0x106004046CD1912, 0);
  v3 = v2;
  if (!v2 || pthread_cond_init(v2, 0))
  {
    CFAllocatorDeallocate(a1, v3);
    return 0;
  }

  else
  {
    if (a1)
    {
      v4 = CFRetain(a1);
    }

    else
    {
      v4 = 0;
    }

    v3[1].__sig = v4;
  }

  return v3;
}

uint64_t FigConditionVariableWaitRelative(pthread_cond_t *a1, pthread_mutex_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(result) = WaitOnConditionTimedRelative(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result == 60)
  {
    return 4294954504;
  }

  else
  {
    return result;
  }
}

size_t WaitOnConditionTimedRelative(pthread_cond_t *a1, pthread_mutex_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if (a2 && (a2[1].__sig & 3) == 0)
  {
    FigUserCrashWithMessage("WaitOnConditionTimedRelative called with wrong type of mutex", a2, a3, a4, a5, a6, a7, a8, v17.tv_sec);
  }

  if ((a3 & 0x8000000000000000) != 0)
  {

    return WaitOnCondition(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    if (a3 < 0x3B9ACA00)
    {
      v10 = 0;
    }

    else
    {
      v10 = a3 / 0x3B9ACA00;
      v9 = a3 % 0x3B9ACA00;
    }

    v17.tv_sec = v10;
    v17.tv_nsec = v9;
    v11 = pthread_cond_timedwait_relative_np(a1, a2, &v17);
    v12 = v11;
    if (v11)
    {
      if (v11 != 60)
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v12, "(Fig)", 0x3C0, v8, v14, v15);
      }
    }

    return v12;
  }
}

const __CFAllocator *FigConditionVariableDestroy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = pthread_cond_destroy(a1);
  if (!v3)
  {
    v4 = *(a1 + 48);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0;
    CFAllocatorDeallocate(v4, a1);
    if (!v4)
    {
      return v4;
    }

    CFRelease(v4);
    return 0;
  }

  v4 = v3;
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v4, "(Fig)", 0x4C9, v1, v6, v7);
  return v4;
}

uint64_t RelativeTimeToAbsoluteTime(uint64_t a1, uint64_t *a2)
{
  v21.tv_sec = 0;
  *&v21.tv_usec = 0;
  gettimeofday(&v21, 0);
  result = 0;
  tv_sec = v21.tv_sec;
  if (v21.tv_sec >= 0)
  {
    v6 = v21.tv_sec;
  }

  else
  {
    v6 = -v21.tv_sec;
  }

  v7 = (v6 * 0xF4240uLL) >> 64;
  v8 = 1000000 * v6;
  if (v21.tv_sec >= 0)
  {
    v9 = 1000000 * v6;
  }

  else
  {
    v9 = -1000000 * v6;
  }

  v10 = v7 != 0;
  v11 = __OFADD__(v21.tv_usec, v9);
  v12 = v21.tv_usec + v9;
  v13 = v11;
  *a2 = v12;
  if (!v10 && v8 <= (tv_sec >> 63) + 0x7FFFFFFFFFFFFFFFLL && (v13 & 1) == 0)
  {
    if (v12 >= 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = -v12;
    }

    v15 = (v14 * 0x3E8uLL) >> 64;
    v16 = 1000 * v14;
    if (v12 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = -v16;
    }

    v18 = (v12 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
    if (v15)
    {
      v19 = 1;
    }

    else
    {
      v19 = v16 > v18;
    }

    v20 = v19;
    *a2 = a1 + v17;
    if (__OFADD__(a1, v17))
    {
      v20 = 1;
    }

    return v20 ^ 1u;
  }

  return result;
}

size_t WaitOnConditionTimed(pthread_cond_t *a1, pthread_mutex_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if (a2 && (a2[1].__sig & 3) == 0)
  {
    FigUserCrashWithMessage("WaitOnConditionTimed called with wrong type of mutex", a2, a3, a4, a5, a6, a7, a8, v17.tv_sec);
  }

  if (a3 < 1000000000)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3 / 0x3B9ACA00uLL;
    v9 = a3 % 0x3B9ACA00uLL;
  }

  v17.tv_sec = v10;
  v17.tv_nsec = v9;
  v11 = pthread_cond_timedwait(a1, a2, &v17);
  v12 = v11;
  if (v11 && v11 != 60)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v12, "(Fig)", 0x39B, v8, v14, v15);
  }

  return v12;
}

uint64_t OUTLINED_FUNCTION_2_17(os_unfair_lock_s **a1)
{
  v2 = *a1;

  return FigSimpleMutexLock(v2);
}

uint64_t figThreadMain(unsigned __int8 *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v1 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 4);
  v5 = a1[40];
  free(a1);
  if (v5)
  {
    v6 = voucher_adopt();
    os_release(v6);
  }

  if (v3)
  {
    if (CFStringGetCString(v3, buffer, 256, 0x600u))
    {
      pthread_setname_np(buffer);
    }

    CFRelease(v3);
  }

  if (v4)
  {
    Value = CFDictionaryGetValue(v4, @"com.apple.fig.ThreadCreateKey_MachTimeSharePolicy");
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      if (v9 == CFBooleanGetTypeID())
      {
        v10 = pthread_self();
        v11 = CFBooleanGetValue(v8);
        figSetPThreadTimesharePolicy(v10, v11);
      }
    }

    CFRelease(v4);
  }

  v12 = v2(v1);
  if (!FigThreadLockAbortList())
  {
    v13 = pthread_self();
    FigThreadRemoveFromAbortListAndCleanup(v13);
    FigThreadUnlockAbortList();
  }

  if (gGMFigKTraceEnabled == 1)
  {
    pthread_self();
    kdebug_trace();
  }

  return v12;
}

size_t figSetPThreadBackground(_opaque_pthread_t *a1, int a2)
{
  v6 = (a2 != 0) << 12;
  result = figSetPThreadPolicy(a1, 5u, &v6);
  if (result)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, result, "(Fig)", 0x2C6, v2, v4, v5);
  }

  return result;
}

size_t figSetPThreadPriority(_opaque_pthread_t *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  memset(buffer, 0, sizeof(buffer));
  v5 = getpid();
  if (proc_pidinfo(v5, 2, 0, buffer, 232) <= 0)
  {
    figSetPThreadPriority_cold_1(&v16, v6, v7, v8, v9, v10, v11, v12);
    return v16;
  }

  else
  {
    v16 = a2 - HIDWORD(v18);
    result = figSetPThreadPolicy(a1, 3u, &v16);
    if (result)
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, result, "(Fig)", 0x28A, v2, v14, v15);
    }
  }

  return result;
}

uint64_t FigThreadGetMachThreadPriorityValue(unsigned int a1)
{
  if (a1 <= 0x32)
  {
    return kNativePriorityMap[a1];
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE07uLL, "<<<< FIGDARWINTHREAD >>>>", 0x544, v1, v4, v5);
  return 47;
}

void FigThreadExit(void *a1)
{
  if (!FigThreadLockAbortList())
  {
    v2 = pthread_self();
    FigThreadRemoveFromAbortListAndCleanup(v2);
    FigThreadUnlockAbortList();
  }

  pthread_exit(a1);
}

_opaque_pthread_t *FigThreadIsValid(_opaque_pthread_t *result)
{
  if (result)
  {
    return (pthread_kill(result, 0) != 3);
  }

  return result;
}

uint64_t FigThreadSetProperty(_opaque_pthread_t *a1, CFTypeRef cf1, const __CFNumber *a3)
{
  if (!cf1)
  {
    return 4294954501;
  }

  if (CFEqual(cf1, @"com.apple.fig.ThreadPropKey_Priority"))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        FigThreadSetProperty_cold_1(a3, a1, &v20);
        return v20;
      }
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v11 = v3;
    v12 = 1182;
    goto LABEL_26;
  }

  if (CFEqual(cf1, @"com.apple.fig.ThreadPropKey_MachThreadPriority"))
  {
    if (a3)
    {
      v13 = CFNumberGetTypeID();
      if (v13 == CFGetTypeID(a3))
      {
        SInt32 = FigCFNumberGetSInt32(a3);
        if (gGMFigKTraceEnabled == 1)
        {
          kdebug_trace();
        }

        figSetPThreadBackground(a1, 0);

        return figSetPThreadPriority(a1, SInt32);
      }
    }

    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v11 = v3;
    v12 = 1202;
LABEL_26:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE05uLL, "<<<< FIGDARWINTHREAD >>>>", v12, v11, v9, v10);
  }

  if (!CFEqual(cf1, @"com.apple.fig.ThreadPropKey_MachTimeSharePolicy"))
  {
    if (CFEqual(cf1, @"com.apple.fig.ThreadPropKey_ClientPID"))
    {
      if (a3)
      {
        v18 = CFNumberGetTypeID();
        if (v18 == CFGetTypeID(a3))
        {
          valuePtr = 0;
          CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
          return figThreadBindToPID(a1);
        }
      }

      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v11 = v3;
      v12 = 1222;
      goto LABEL_26;
    }

    return 4294954501;
  }

  if (!a3 || (v16 = CFBooleanGetTypeID(), v16 != CFGetTypeID(a3)))
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v11 = v3;
    v12 = 1210;
    goto LABEL_26;
  }

  Value = CFBooleanGetValue(a3);

  return figSetPThreadTimesharePolicy(a1, Value);
}

size_t figSetPThreadTimesharePolicy(_opaque_pthread_t *a1, integer_t a2)
{
  v6 = a2;
  result = figSetPThreadPolicy(a1, 1u, &v6);
  if (result)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, result, "(Fig)", 0x2B6, v2, v4, v5);
  }

  return result;
}

size_t FigThreadCopyProperty(_opaque_pthread_t *a1, CFTypeRef cf1, uint64_t a3, CFNumberRef *a4)
{
  if (a4)
  {
    if (!cf1)
    {
      return 4294954501;
    }

    if (CFEqual(cf1, @"com.apple.fig.ThreadPropKey_Priority"))
    {
      v15 = 0;
      v8 = pthread_mach_thread_np(a1);
      MachThreadPriority = figGetMachThreadPriority(v8, &v15);
      if (!MachThreadPriority)
      {
        FigThreadCopyProperty_cold_1(&v15, &valuePtr, a4);
      }

      return MachThreadPriority;
    }

    if (CFEqual(cf1, @"com.apple.fig.ThreadPropKey_MachThreadPriority"))
    {
      valuePtr = 0;
      v14 = pthread_mach_thread_np(a1);
      MachThreadPriority = figGetMachThreadPriority(v14, &valuePtr);
      if (!MachThreadPriority)
      {
        *a4 = FigCFNumberCreateSInt32(*MEMORY[0x1E695E480], valuePtr);
      }

      return MachThreadPriority;
    }

    if (!CFEqual(cf1, @"com.apple.fig.ThreadPropKey_MachTimeSharePolicy"))
    {
      return 4294954501;
    }

    FigThreadCopyProperty_cold_2(a1, a4, &valuePtr);
    return valuePtr;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE07uLL, "<<<< FIGDARWINTHREAD >>>>", 0x4DA, v4, v11, v12);
}

size_t figGetMachThreadTimesharePolicy(thread_inspect_t a1, _BYTE *a2)
{
  policy_infoCnt = 1;
  policy_info = 0;
  get_default = 0;
  v4 = thread_policy_get(a1, 1u, &policy_info, &policy_infoCnt, &get_default);
  if (v4)
  {
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v4, "(Fig)", 0x2A6, v2, v5, v6);
  }

  result = 0;
  if (a2)
  {
    *a2 = policy_info;
  }

  return result;
}

uint64_t FigThreadGetIOPolicy(int *a1)
{
  if (!a1)
  {
    FigThreadGetIOPolicy_cold_2(__dst);
    return *__dst;
  }

  v2 = getiopolicy_np(0, 1);
  v3 = v2;
  if (gGMFigKTraceEnabled == 1)
  {
    if ((v2 + 1) > 6)
    {
      v4 = "UNKNOWN";
    }

    else
    {
      v4 = off_1E749FFA8[v2 + 1];
    }

    strncpy(__dst, v4, 8uLL);
    kdebug_trace();
  }

  if (v3 == -1)
  {
    FigThreadGetIOPolicy_cold_1(__dst);
    return *__dst;
  }

  result = 0;
  *a1 = v3;
  return result;
}

size_t FigThreadSetIOPolicy(int a1)
{
  v3 = setiopolicy_np(0, 1, a1);
  if (gGMFigKTraceEnabled == 1)
  {
    if ((a1 + 1) > 6)
    {
      v4 = "UNKNOWN";
    }

    else
    {
      v4 = off_1E749FFA8[a1 + 1];
    }

    strncpy(__dst, v4, 8uLL);
    kdebug_trace();
  }

  if (v3 == -1)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBB66uLL, "<<<< FIGDARWINTHREAD >>>>", 0x57F, v1, v6, v7);
  }

  return v3;
}

size_t figSetPThreadPolicy(_opaque_pthread_t *a1, thread_policy_flavor_t a2, integer_t *a3)
{
  v7 = pthread_mach_thread_np(a1);
  __qos_class = QOS_CLASS_UNSPECIFIED;
  qos_class_np = pthread_get_qos_class_np(a1, &__qos_class, 0);
  if (qos_class_np)
  {
    v12 = qos_class_np;
    v13 = v3;
    v14 = 621;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v12, "(Fig)", v14, v13, v9, v10);
  }

  if (__qos_class)
  {
    return 0;
  }

  result = thread_policy_set(v7, a2, a3, 1u);
  if (result)
  {
    v12 = result;
    v13 = v3;
    v14 = 627;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v12, "(Fig)", v14, v13, v9, v10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_42(uint64_t a1)
{

  return FigSignalErrorAt(a1, 0, 0, 0, 0, 0, 0);
}

unint64_t FigNanosecondsToHostTime(int64_t a1)
{
  v6 = 0;
  v7 = 0;
  FigGetHostTimeToNanosecondsScale(&v7, &v6);
  v2 = v6;
  v3 = v7;
  result = a1;
  if (v7 != 1 || v6 != 1)
  {

    return FigInt64MulDiv(a1, v2, v3, 0);
  }

  return result;
}

unint64_t FigGetContinuousUpTimeNanoseconds()
{
  v0 = mach_continuous_time();

  return FigHostTimeToNanoseconds(v0);
}

uint64_t FigCFEqual(CFTypeRef cf1, CFTypeRef a2)
{
  if (cf1 == a2)
  {
    return 1;
  }

  result = 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2);
    }
  }

  return result;
}

CFMutableDictionaryRef FigCFDictionaryCreateMutableCopy(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    return CFDictionaryCreateMutableCopy(a1, 0, theDict);
  }

  else
  {
    return CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }
}

CFMutableArrayRef FigCFArrayCreateMutableCopy(const __CFAllocator *a1, CFArrayRef theArray)
{
  if (theArray)
  {
    return CFArrayCreateMutableCopy(a1, 0, theArray);
  }

  else
  {
    return CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  }
}

CFArrayRef FigCFArrayCreateCopy(CFAllocatorRef allocator, CFArrayRef theArray)
{
  if (theArray)
  {
    return CFArrayCreateCopy(allocator, theArray);
  }

  else
  {
    return CFArrayCreate(allocator, 0, 0, MEMORY[0x1E695E9C0]);
  }
}

CFArrayRef FigCFArrayCreateConcatenationOfTwoArrays(unint64_t cf, CFTypeRef a2)
{
  if (cf | a2)
  {
    if (a2)
    {
      if (cf)
      {
        v4 = CFGetAllocator(cf);
        Count = CFArrayGetCount(cf);
        v6 = CFArrayGetCount(a2);
        MutableCopy = CFArrayCreateMutableCopy(v4, v6 + Count, cf);
        v14.length = CFArrayGetCount(a2);
        v14.location = 0;
        CFArrayAppendArray(MutableCopy, a2, v14);
        return MutableCopy;
      }

      v11 = CFGetAllocator(a2);
      v12 = a2;
    }

    else
    {
      v11 = CFGetAllocator(cf);
      v12 = cf;
    }

    return CFArrayCreateCopy(v11, v12);
  }

  else
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = MEMORY[0x1E695E9C0];

    return CFArrayCreate(v9, 0, 0, v10);
  }
}

void FigCFArrayAppendArray(__CFArray *a1, CFArrayRef theArray)
{
  if (a1 && theArray)
  {
    v4.length = CFArrayGetCount(theArray);
    v4.location = 0;

    CFArrayAppendArray(a1, theArray, v4);
  }
}

CFIndex FigCFArrayGetFirstIndexOfValue(const __CFArray *a1, const void *a2)
{
  if (!a1)
  {
    return -1;
  }

  if (!a2)
  {
    return -1;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return -1;
  }

  v5.length = Count;
  v5.location = 0;

  return CFArrayGetFirstIndexOfValue(a1, v5, a2);
}

CFIndex FigCFArrayGetLastIndexOfValue(const __CFArray *a1, const void *a2)
{
  if (!a1)
  {
    return -1;
  }

  if (!a2)
  {
    return -1;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return -1;
  }

  v5.length = Count;
  v5.location = 0;

  return CFArrayGetLastIndexOfValue(a1, v5, a2);
}

uint64_t FigCFArrayGetFirstIndexOfInt32(const __CFArray *a1, int a2)
{
  v12 = 0;
  if (!a1)
  {
    return -1;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return -1;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    figCFArrayGetNumberAtIndex(a1, v10, kCFNumberSInt32Type, &v12, v5, v6, v7, v8);
    if (v12 == a2)
    {
      break;
    }

    if (v9 == ++v10)
    {
      return -1;
    }
  }

  return v10;
}

uint64_t FigCFArrayGetLastIndexOfInt32(const __CFArray *a1, int a2)
{
  v12 = 0;
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v9 = Count;
      while (v9-- >= 1)
      {
        figCFArrayGetNumberAtIndex(a1, v9, kCFNumberSInt32Type, &v12, v5, v6, v7, v8);
        if (v12 == a2)
        {
          return v9;
        }
      }
    }
  }

  return -1;
}

BOOL FigCFArrayRemoveFirstElementOfValue(const __CFArray *a1, const void *a2)
{
  FirstIndexOfValue = FigCFArrayGetFirstIndexOfValue(a1, a2);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(a1, FirstIndexOfValue);
  }

  return FirstIndexOfValue != -1;
}

BOOL FigCFArrayRemoveLastElementOfValue(const __CFArray *a1, const void *a2)
{
  LastIndexOfValue = FigCFArrayGetLastIndexOfValue(a1, a2);
  if (LastIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(a1, LastIndexOfValue);
  }

  return LastIndexOfValue != -1;
}

const void *FigCFArrayGetValueAtIndex(const __CFArray *a1, CFIndex a2)
{
  if (!a1 || a2 < 0 || CFArrayGetCount(a1) <= a2)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(a1, a2);
}

const void *FigCFArrayGetLastValue(const __CFArray *a1)
{
  if (!a1 || CFArrayGetCount(a1) < 1)
  {
    return 0;
  }

  v2 = CFArrayGetCount(a1) - 1;

  return CFArrayGetValueAtIndex(a1, v2);
}

const void *FigCFArrayGetFirstValue(const __CFArray *a1)
{
  if (!a1 || CFArrayGetCount(a1) < 1)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(a1, 0);
}

void FigCFArrayApplyFunction(const __CFArray *a1, void (__cdecl *a2)(const void *, void *), void *a3)
{
  if (a1)
  {
    v6.length = CFArrayGetCount(a1);
    v6.location = 0;

    CFArrayApplyFunction(a1, v6, a2, a3);
  }
}

const void *figCFArrayHasAnyValue(const void *result, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    result = FigCFArrayContainsValue(*a2, result);
    *(a2 + 8) = result;
  }

  return result;
}

const void *figCFArrayHasEachValue(const void *result, uint64_t a2)
{
  if (!*(a2 + 8))
  {
    result = FigCFArrayContainsValue(*a2, result);
    *(a2 + 8) = result == 0;
  }

  return result;
}

CFArrayRef FigCFDictionaryCopyArrayOfValues(const __CFDictionary *a1)
{
  if (a1)
  {
    if (CFDictionaryGetCount(a1) >= 1)
    {
      Count = CFDictionaryGetCount(a1);
      v3 = Count;
      if (Count)
      {
        if (Count >> 61)
        {
          return 0;
        }

        Count *= 8;
      }

      v4 = malloc_type_malloc(Count, 0x80040B8603338uLL);
      if (v4)
      {
        v5 = v4;
        CFDictionaryGetKeysAndValues(a1, 0, v4);
        v6 = CFGetAllocator(a1);
        v7 = CFArrayCreate(v6, v5, v3, MEMORY[0x1E695E9C0]);
        free(v5);
        return v7;
      }

      return 0;
    }

    v9 = CFGetAllocator(a1);
  }

  else
  {
    v9 = *MEMORY[0x1E695E480];
  }

  v10 = MEMORY[0x1E695E9C0];

  return CFArrayCreate(v9, 0, 0, v10);
}

CFArrayRef FigCFDictionaryCopyArrayOfKeys(const __CFDictionary *a1)
{
  if (a1)
  {
    if (CFDictionaryGetCount(a1) >= 1)
    {
      Count = CFDictionaryGetCount(a1);
      v3 = Count;
      if (Count)
      {
        if (Count >> 61)
        {
          return 0;
        }

        Count *= 8;
      }

      v4 = malloc_type_malloc(Count, 0x80040B8603338uLL);
      if (v4)
      {
        v5 = v4;
        CFDictionaryGetKeysAndValues(a1, v4, 0);
        v6 = CFGetAllocator(a1);
        v7 = CFArrayCreate(v6, v5, v3, MEMORY[0x1E695E9C0]);
        free(v5);
        return v7;
      }

      return 0;
    }

    v9 = CFGetAllocator(a1);
  }

  else
  {
    v9 = *MEMORY[0x1E695E480];
  }

  v10 = MEMORY[0x1E695E9C0];

  return CFArrayCreate(v9, 0, 0, v10);
}

CFMutableArrayRef FigCFDictionaryCreateMappedArray(const __CFDictionary *a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v6 = CFGetAllocator(theArray);
    Mutable = CFArrayCreateMutable(v6, Count, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      v8 = 0;
      v9 = *MEMORY[0x1E695E738];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        Value = v9;
        if (a1)
        {
          Value = CFDictionaryGetValue(a1, ValueAtIndex);
        }

        if (Value)
        {
          v12 = Value;
        }

        else
        {
          v12 = v9;
        }

        CFArrayAppendValue(Mutable, v12);
        ++v8;
      }

      while (Count != v8);
    }

    return Mutable;
  }

  else
  {
    v14 = *MEMORY[0x1E695E480];
    v15 = MEMORY[0x1E695E9C0];

    return CFArrayCreateMutable(v14, 0, v15);
  }
}

void FigCFDictionaryApplyBlock(const __CFDictionary *a1, void *context)
{
  if (a1)
  {
    if (context)
    {
      CFDictionaryApplyFunction(a1, dictionaryBlockApplier, context);
    }
  }
}

void FigCFSetApplyBlock(const __CFSet *a1, void *context)
{
  if (a1)
  {
    if (context)
    {
      CFSetApplyFunction(a1, setBlockApplier, context);
    }
  }
}

const __CFArray *FigCFArrayForEach2(const __CFArray *theArray, const __CFArray *a2, uint64_t (*a3)(const void *, const void *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v12 = theArray;
  if (!theArray)
  {
    v13 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  theArray = CFArrayGetCount(theArray);
  v13 = theArray;
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  theArray = CFArrayGetCount(a2);
  v14 = theArray;
LABEL_6:
  if (v13 != v14)
  {
    theArray = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x50C, v8, a7, a8);
    if (v13 >= v14)
    {
      v13 = v14;
    }
  }

  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
      v17 = CFArrayGetValueAtIndex(a2, i);
      theArray = a3(ValueAtIndex, v17, a4);
    }
  }

  return theArray;
}

void FigCFArrayApplyBlock(const __CFArray *a1, void *a2)
{
  if (a1 && a2)
  {
    v4.length = CFArrayGetCount(a1);
    v4.location = 0;

    CFArrayApplyFunction(a1, v4, arrayBlockApplier, a2);
  }
}

CFDictionaryRef FigCFDictionaryGetCount(CFDictionaryRef theDict)
{
  if (theDict)
  {
    return CFDictionaryGetCount(theDict);
  }

  return theDict;
}

CFDictionaryRef FigCFDictionaryGetCountOfKey(CFDictionaryRef theDict, const void *key)
{
  if (theDict)
  {
    return CFDictionaryGetCountOfKey(theDict, key);
  }

  return theDict;
}

void FigCFDictionaryRemoveAllValues(CFMutableDictionaryRef theDict)
{
  if (theDict)
  {
    CFDictionaryRemoveAllValues(theDict);
  }
}

uint64_t FigCFArrayAppendValue(CFMutableArrayRef theArray, const void *a2)
{
  result = 0;
  if (theArray)
  {
    if (a2)
    {
      CFArrayAppendValue(theArray, a2);
      return 1;
    }
  }

  return result;
}

void FigCFArrayRemoveAllValues(CFMutableArrayRef theArray)
{
  if (theArray)
  {
    CFArrayRemoveAllValues(theArray);
  }
}

__CFSet *FigCFSetCreateFromArray(const __CFAllocator *a1, CFArrayRef theArray)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFSetCreateMutable(a1, Count, MEMORY[0x1E695E9F8]);
  if (Mutable)
  {
    v6 = Count < 1;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      CFSetAddValue(Mutable, ValueAtIndex);
      ++v7;
    }

    while (Count != v7);
  }

  return Mutable;
}

uint64_t FigCFDictionaryGetValueIfPresent(const __CFDictionary *a1, const void *a2, const void **a3)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return CFDictionaryGetValueIfPresent(a1, a2, a3);
}

__CFDictionary *FigCFDictionaryCreateCopyRemovingKeys(CFDictionaryRef theDict, const void **a2, int a3)
{
  LODWORD(v3) = a3;
  MutableCopy = FigCFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], theDict);
  if (a2 && v3 >= 1)
  {
    v3 = v3;
    do
    {
      v6 = *a2++;
      CFDictionaryRemoveValue(MutableCopy, v6);
      --v3;
    }

    while (v3);
  }

  return MutableCopy;
}

uint64_t figCFDictionarySetNumber(void *a1, const void *a2, CFNumberType a3, const void *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    figCFDictionarySetNumber_cold_4(&v33, a2, a3, a4, a5, a6, a7, a8);
    return v33;
  }

  v12 = CFGetTypeID(a1);
  TypeID = CFDictionaryGetTypeID();
  if (v12 == TypeID)
  {
    if (!a2)
    {
      figCFDictionarySetNumber_cold_3(&v32, v14, v15, v16, v17, v18, v19, v20);
      return v32;
    }

    v21 = CFNumberCreate(*MEMORY[0x1E695E480], a3, a4);
    if (!v21)
    {
      figCFDictionarySetNumber_cold_2(&v31, v22, v23, v24, v25, v26, v27, v28);
      return v31;
    }

    v29 = v21;
    CFDictionarySetValue(a1, a2, v21);
    CFRelease(v29);
  }

  else
  {
    figCFDictionarySetNumber_cold_1(TypeID, v14, v15, v16, v17, v18, v19, v20);
  }

  return 0;
}

uint64_t figCFArrayGetNumberAtIndex(const void *a1, CFIndex a2, CFNumberType a3, void *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    v12 = CFGetTypeID(a1);
    TypeID = CFArrayGetTypeID();
    if (v12 == TypeID)
    {
      if (a4)
      {
        if (a2 < 0 || (TypeID = CFArrayGetCount(a1), TypeID <= a2))
        {
          figCFArrayGetNumberAtIndex_cold_2(TypeID, v14, v15, v16, v17, v18, v19, v20);
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
          if (ValueAtIndex)
          {
            v29 = ValueAtIndex;
            v30 = CFGetTypeID(ValueAtIndex);
            ValueAtIndex = CFNumberGetTypeID();
            if (v30 == ValueAtIndex)
            {
              CFNumberGetValue(v29, a3, a4);
              return 1;
            }
          }

          figCFArrayGetNumberAtIndex_cold_3(ValueAtIndex, v22, v23, v24, v25, v26, v27, v28);
        }
      }

      else
      {
        figCFArrayGetNumberAtIndex_cold_4(TypeID, v14, v15, v16, v17, v18, v19, v20);
      }
    }

    else
    {
      figCFArrayGetNumberAtIndex_cold_1(TypeID, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    figCFArrayGetNumberAtIndex_cold_5(0, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

uint64_t figCFArrayAppendNumber(void *a1, CFNumberType a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    figCFArrayAppendNumber_cold_3(&v31, a2, a3, a4, a5, a6, a7, a8);
    return v31;
  }

  v11 = CFGetTypeID(a1);
  TypeID = CFArrayGetTypeID();
  if (v11 == TypeID)
  {
    v20 = CFNumberCreate(*MEMORY[0x1E695E480], a2, a3);
    if (!v20)
    {
      figCFArrayAppendNumber_cold_2(&v30, v21, v22, v23, v24, v25, v26, v27);
      return v30;
    }

    v28 = v20;
    CFArrayAppendValue(a1, v20);
    CFRelease(v28);
  }

  else
  {
    figCFArrayAppendNumber_cold_1(TypeID, v13, v14, v15, v16, v17, v18, v19);
  }

  return 0;
}

uint64_t FigCFDictionarySetUInt32(void *a1, const void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v12 = a3;
  if ((a3 & 0x80000000) != 0)
  {
    v11 = a3;
    v8 = &v11;
    v9 = kCFNumberSInt64Type;
  }

  else
  {
    v8 = &v12;
    v9 = kCFNumberSInt32Type;
  }

  return figCFDictionarySetNumber(a1, a2, v9, v8, a5, a6, a7, a8);
}

uint64_t FigCFDictionarySetUInt64(void *a1, const void *a2, uint64_t a3)
{
  UInt64 = FigCFNumberCreateUInt64(*MEMORY[0x1E695E480], a3);
  if (UInt64)
  {
    v13 = UInt64;
    FigCFDictionarySetValue(a1, a2, UInt64);
    CFRelease(v13);
    return 0;
  }

  else
  {
    FigCFDictionarySetUInt64_cold_1(&v15, v6, v7, v8, v9, v10, v11, v12);
    return v15;
  }
}

CFNumberRef FigCFNumberCreateUInt64(const __CFAllocator *a1, uint64_t a2)
{
  v6 = a2;
  if (a2 < 0)
  {
    valuePtr[0] = 0;
    valuePtr[1] = a2;
    v2 = valuePtr;
    v3 = kCFNumberMaxType|kCFNumberSInt8Type;
  }

  else
  {
    v2 = &v6;
    v3 = kCFNumberSInt64Type;
  }

  return CFNumberCreate(a1, v3, v2);
}

uint64_t FigCFDictionaryFindAnyKeyForValue(const __CFDictionary *a1, const void *a2, void *a3)
{
  v3 = 0;
  v8 = 0;
  if (!a1 || !a2)
  {
    return v3;
  }

  if (a3)
  {
    context[0] = &v8;
    context[1] = a2;
    CFDictionaryApplyFunction(a1, findAnyKeyForValueApplier, context);
    v5 = v8;
    *a3 = v8;
    return v5 != 0;
  }

  return CFDictionaryContainsValue(a1, a2);
}

uint64_t findAnyKeyForValueApplier(uint64_t a1, CFTypeRef cf1, uint64_t a3)
{
  result = CFEqual(cf1, *(a3 + 8));
  if (result)
  {
    **a3 = a1;
  }

  return result;
}

void FigCFDictionarySetBoolean(__CFDictionary *a1, const void *a2, int a3)
{
  if (a1 && a2)
  {
    v3 = MEMORY[0x1E695E4D0];
    if (!a3)
    {
      v3 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(a1, a2, *v3);
  }
}

CFDictionaryRef FigCFRangeCopyAsDictionary(uint64_t a1, uint64_t a2, CFAllocatorRef allocator)
{
  v11 = *MEMORY[0x1E69E9840];
  *&valuePtr = a1;
  v5 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
  *&valuePtr = a2;
  v6 = CFNumberCreate(allocator, kCFNumberSInt64Type, &valuePtr);
  valuePtr = xmmword_1E74A0010;
  v9[0] = v5;
  v9[1] = v6;
  v7 = CFDictionaryCreate(allocator, &valuePtr, v9, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

size_t FigCFRangeMakeFromDictionary(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  value = 0;
  v25 = 0;
  if (!a1)
  {
    FigCFRangeMakeFromDictionary_cold_2(&v26 + 1, a2, a3, a4, a5, a6, a7, a8);
    return HIDWORD(v26);
  }

  if (!a2)
  {
    FigCFRangeMakeFromDictionary_cold_1(&v26 + 1, 0, a3, a4, a5, a6, a7, a8);
    return HIDWORD(v26);
  }

  v10 = a1;
  figCFDictionaryGetNumberIfPresent(a1, @"Location", 4, &v25, a5, a6, a7, a8, v22, value, v25, v26, v27, v28, v29, v30, vars0, vars8);
  if (v15)
  {
    figCFDictionaryGetNumberIfPresent(v10, @"Length", 4, &value, v11, v12, v13, v14, v23, value, v25, v26, v27, v28, v29, v30, vars0, vars8);
    if (v20)
    {
      result = 0;
      v21 = value;
      *a2 = v25;
      a2[1] = v21;
      return result;
    }

    v16 = qword_1EAF1CE20;
    v17 = v8;
    v18 = 2052;
  }

  else
  {
    v16 = qword_1EAF1CE20;
    v17 = v8;
    v18 = 2048;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFCD3EuLL, "<<< FigCFUtilities >>>", v18, v17, v13, v14);
}

uint64_t FigCFDictionarySetRange(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    if (a2)
    {
      v10 = FigCFRangeCopyAsDictionary(a3, a4, *MEMORY[0x1E695E480]);
      if (v10)
      {
        v18 = v10;
        CFDictionarySetValue(a1, a2, v10);
        CFRelease(v18);
      }

      else
      {
        FigCFDictionarySetRange_cold_1(0, v11, v12, v13, v14, v15, v16, v17);
      }

      return 0;
    }

    else
    {
      FigCFDictionarySetRange_cold_2(&v20, 0, a3, a4, a5, a6, a7, a8);
      return v20;
    }
  }

  else
  {
    FigCFDictionarySetRange_cold_3(&v21, a2, a3, a4, a5, a6, a7, a8);
    return v21;
  }
}

uint64_t FigCFDictionaryGetRangeIfPresent(CFDictionaryRef theDict, const void *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a3)
  {
    FigCFDictionaryGetRangeIfPresent_cold_1(theDict, a2, 0, a4, a5, a6, a7, a8);
    return 0;
  }

  result = 0;
  if (theDict)
  {
    if (a2)
    {
      value = 0;
      result = CFDictionaryGetValueIfPresent(theDict, a2, &value);
      if (result)
      {
        v17 = 0uLL;
        if (!FigCFRangeMakeFromDictionary(value, &v17, v11, v12, v13, v14, v15, v16))
        {
          *a3 = v17;
          return 1;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t FigCFDictionarySetCMTime(void *a1, const void *a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    FigCFDictionarySetCMTime_cold_4(&v31, a2, a3, a4, a5, a6, a7, a8);
    return LODWORD(v31.value);
  }

  v11 = CFGetTypeID(a1);
  TypeID = CFDictionaryGetTypeID();
  if (v11 != TypeID)
  {
    FigCFDictionarySetCMTime_cold_1(TypeID, v13, v14, v15, v16, v17, v18, v19);
    return 0;
  }

  if (!a2)
  {
    FigCFDictionarySetCMTime_cold_3(&v31, v13, v14, v15, v16, v17, v18, v19);
    return LODWORD(v31.value);
  }

  v20 = *MEMORY[0x1E695E480];
  v31 = *a3;
  v21 = CMTimeCopyAsDictionary(&v31, v20);
  if (!v21)
  {
    FigCFDictionarySetCMTime_cold_2(&v31, v22, v23, v24, v25, v26, v27, v28);
    return LODWORD(v31.value);
  }

  v29 = v21;
  CFDictionarySetValue(a1, a2, v21);
  CFRelease(v29);
  return 0;
}

uint64_t FigCFDictionarySetCMTimeRange(void *a1, const void *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    FigCFDictionarySetCMTimeRange_cold_4(&v32, a2, a3, a4, a5, a6, a7, a8);
    return LODWORD(v32.start.value);
  }

  v11 = CFGetTypeID(a1);
  TypeID = CFDictionaryGetTypeID();
  if (v11 != TypeID)
  {
    FigCFDictionarySetCMTimeRange_cold_1(TypeID, v13, v14, v15, v16, v17, v18, v19);
    return 0;
  }

  if (!a2)
  {
    FigCFDictionarySetCMTimeRange_cold_3(&v32, v13, v14, v15, v16, v17, v18, v19);
    return LODWORD(v32.start.value);
  }

  v20 = *MEMORY[0x1E695E480];
  v21 = a3[1];
  *&v32.start.value = *a3;
  *&v32.start.epoch = v21;
  *&v32.duration.timescale = a3[2];
  v22 = CMTimeRangeCopyAsDictionary(&v32, v20);
  if (!v22)
  {
    FigCFDictionarySetCMTimeRange_cold_2(&v32, v23, v24, v25, v26, v27, v28, v29);
    return LODWORD(v32.start.value);
  }

  v30 = v22;
  CFDictionarySetValue(a1, a2, v22);
  CFRelease(v30);
  return 0;
}

uint64_t FigCFArrayAppendCMTime(void *a1, CMTime *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    FigCFArrayAppendCMTime_cold_3(&v30, a2, a3, a4, a5, a6, a7, a8);
    return LODWORD(v30.value);
  }

  v10 = CFGetTypeID(a1);
  TypeID = CFArrayGetTypeID();
  if (v10 != TypeID)
  {
    FigCFArrayAppendCMTime_cold_1(TypeID, v12, v13, v14, v15, v16, v17, v18);
    return 0;
  }

  v19 = *MEMORY[0x1E695E480];
  v30 = *a2;
  v20 = CMTimeCopyAsDictionary(&v30, v19);
  if (!v20)
  {
    FigCFArrayAppendCMTime_cold_2(&v30, v21, v22, v23, v24, v25, v26, v27);
    return LODWORD(v30.value);
  }

  v28 = v20;
  CFArrayAppendValue(a1, v20);
  CFRelease(v28);
  return 0;
}

uint64_t FigCFArrayGetCMTimeAtIndex(const void *a1, uint64_t a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    FigCFArrayGetCMTimeAtIndex_cold_5(0, a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }

  v11 = CFGetTypeID(a1);
  TypeID = CFArrayGetTypeID();
  if (v11 != TypeID)
  {
    FigCFArrayGetCMTimeAtIndex_cold_1(TypeID, v13, v14, v15, v16, v17, v18, v19);
    return 0;
  }

  if (!a3)
  {
    FigCFArrayGetCMTimeAtIndex_cold_4(TypeID, v13, v14, v15, v16, v17, v18, v19);
    return 0;
  }

  if (a2 < 0 || (TypeID = CFArrayGetCount(a1), TypeID <= a2))
  {
    FigCFArrayGetCMTimeAtIndex_cold_2(TypeID, v13, v14, v15, v16, v17, v18, v19);
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (!ValueAtIndex || (v28 = ValueAtIndex, v29 = CFGetTypeID(ValueAtIndex), ValueAtIndex = CFDictionaryGetTypeID(), v29 != ValueAtIndex))
  {
    FigCFArrayGetCMTimeAtIndex_cold_3(ValueAtIndex, v21, v22, v23, v24, v25, v26, v27);
    return 0;
  }

  CMTimeMakeFromDictionary(&v31, v28);
  *a3 = v31;
  return 1;
}

__CFString *FigCFCopyCompactDescription(const __CFArray *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  figCFAppendCompactDescription(Mutable, a1);
  return Mutable;
}

void figCFAppendCompactDescription(CFMutableStringRef theString, const __CFArray *a2)
{
  if (!a2)
  {
    v6 = @"NULL";
    goto LABEL_29;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    v7 = CFArrayGetTypeID();
    if (v7 == CFGetTypeID(a2))
    {
      CFStringAppend(theString, @"[");
      figCFAppendArrayToCompactDescription(theString, a2);
      v6 = @"]";
    }

    else
    {
      v8 = CFSetGetTypeID();
      if (v8 == CFGetTypeID(a2))
      {
        v19.value = 0;
        FigCFSetCopyValuesAsCFArray(a2, &v19);
        CFStringAppend(theString, @"{");
        figCFAppendArrayToCompactDescription(theString, v19.value);
        CFStringAppend(theString, @"}");
        if (v19.value)
        {
          CFRelease(v19.value);
        }

        return;
      }

      v9 = CFDataGetTypeID();
      if (v9 != CFGetTypeID(a2))
      {
        CFStringAppendFormat(theString, 0, @"%@", a2);
        return;
      }

      Length = CFDataGetLength(a2);
      BytePtr = CFDataGetBytePtr(a2);
      v12 = "";
      if (Length > 0)
      {
        v12 = " ";
      }

      CFStringAppendFormat(theString, 0, @"<CFData %d bytes%s", Length, v12);
      if (Length < 25)
      {
        if (Length >= 1)
        {
          do
          {
            v16 = *BytePtr++;
            CFStringAppendFormat(theString, 0, @"%02x", v16);
            --Length;
          }

          while (Length);
        }
      }

      else
      {
        v13 = 0;
        do
        {
          CFStringAppendFormat(theString, 0, @"%02x%02x%02x%02x", BytePtr[v13], BytePtr[v13 + 1], BytePtr[v13 + 2], BytePtr[v13 + 3]);
          v14 = v13 >= 0xC;
          v13 += 4;
        }

        while (!v14);
        CFStringAppend(theString, @"...");
        v15 = Length - 8;
        do
        {
          CFStringAppendFormat(theString, 0, @"%02x%02x%02x%02x", BytePtr[v15], BytePtr[v15 + 1], BytePtr[v15 + 2], BytePtr[v15 + 3]);
          v15 += 4;
        }

        while (v15 < Length);
      }

      v6 = @">";
    }

LABEL_29:

    CFStringAppend(theString, v6);
    return;
  }

  memset(&v19, 0, sizeof(v19));
  CMTimeMakeFromDictionary(&v19, a2);
  if (v19.flags)
  {
    if ((v19.flags & 4) != 0)
    {
      v5 = @"+inf";
    }

    else if ((v19.flags & 8) != 0)
    {
      v5 = @"-inf";
    }

    else
    {
      if ((v19.flags & 0x10) == 0)
      {
        context = v19;
        Seconds = CMTimeGetSeconds(&context);
        CFStringAppendFormat(theString, 0, @"%1.3f", *&Seconds);
        return;
      }

      v5 = @"indef";
    }
  }

  else
  {
    *&context.value = theString;
    CFStringAppend(theString, @"[");
    CFDictionaryApplyFunction(a2, figCFAppendCompactDictionaryDescription, &context);
    v5 = @"]";
  }

  CFStringAppend(theString, v5);
}

CFArrayRef FigCreateCFArrayFromColorValues(const __CFAllocator *a1, double a2, double a3, double a4, double a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = a3;
  valuePtr = a2;
  v15 = a5;
  v16 = a4;
  v21 = 0;
  cf = 0;
  v6 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &valuePtr);
  values = v7;
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = CFNumberCreate(v6, kCFNumberCGFloatType, &v17);
  v20 = v9;
  if (v9)
  {
    v10 = v9;
    v11 = CFNumberCreate(v6, kCFNumberCGFloatType, &v16);
    v21 = v11;
    if (v11)
    {
      v12 = v11;
      cf = CFNumberCreate(v6, kCFNumberCGFloatType, &v15);
      if (cf)
      {
        v13 = CFArrayCreate(a1, &values, 4, MEMORY[0x1E695E9C0]);
        CFRelease(cf);
        v12 = v21;
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v12);
      v10 = v20;
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v10);
    v8 = values;
  }

  else
  {
    v13 = 0;
  }

  CFRelease(v8);
  return v13;
}

char *FigCFGetLocalTimeString(char *a1, size_t a2)
{
  v10 = 0;
  v8 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v5 = llround(modf(Current, &__y) * 1000.0);
  if (v5 == 1000)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v5 == 1000)
  {
    Current = Current + 1.0;
  }

  FigThreadRunOnce(&sCFCalendarStuffOnce, figCreateCalendarStuffOnce);
  FigSimpleMutexLock(sCFCalendarMutex);
  CFCalendarDecomposeAbsoluteTime(sCFGregorianCalendar, Current, "Hms", &v8 + 4, &v8, &v10);
  FigSimpleMutexUnlock(sCFCalendarMutex);
  snprintf(a1, a2, "%02d:%02d:%02d.%03d", HIDWORD(v8), v8, v10, v6);
  return a1;
}

CFTimeZoneRef figCreateCalendarStuffOnce()
{
  sCFGregorianCalendar = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  sCFCalendarMutex = FigSimpleMutexCreateWithFlags(AllocatorForPermanentAllocations, 0);
  v1 = FigGetAllocatorForPermanentAllocations();
  result = CFTimeZoneCreateWithTimeIntervalFromGMT(v1, 0.0);
  sCFTimeZoneGMT = result;
  return result;
}

uint64_t FigCFIOKitObjectGetTypeID()
{
  if (_MergedGlobals_28 != -1)
  {
    FigCFIOKitObjectGetTypeID_cold_1();
  }

  return qword_1ED4CC910;
}

uint64_t __FigCFIOKitObjectGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CC910 = result;
  return result;
}

CFIndex FigCreateCFDataFromCFPropertyList(CFPropertyListRef propertyList, CFAllocatorRef allocator, CFDataRef *a3)
{
  if (propertyList)
  {
    error = 0;
    v4 = CFPropertyListCreateData(allocator, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, &error);
    *a3 = v4;
    if (v4)
    {
      return 0;
    }

    else if (error)
    {
      Code = CFErrorGetCode(error);
      v6 = CFErrorCopyFailureReason(error);
      if (v6)
      {
        CFRelease(v6);
      }

      CFRelease(error);
    }

    else
    {
      return 4294954302;
    }
  }

  else
  {
    Code = 0;
    *a3 = CFDataCreate(allocator, 0, 0);
  }

  return Code;
}

CFIndex FigCreateCFPropertyListFromData(UInt8 *bytes, CFIndex length, CFAllocatorRef allocator, CFPropertyListRef *a4)
{
  if (length)
  {
    err = 0;
    v6 = CFDataCreateWithBytesNoCopy(allocator, bytes, length, *MEMORY[0x1E695E498]);
    if (v6)
    {
      v14 = v6;
      *a4 = CFPropertyListCreateWithData(allocator, v6, 0, 0, &err);
      CFRelease(v14);
      if (*a4)
      {
        return 0;
      }

      else if (err)
      {
        Code = CFErrorGetCode(err);
        v16 = CFErrorCopyFailureReason(err);
        if (v16)
        {
          CFRelease(v16);
        }

        CFRelease(err);
      }

      else
      {
        return 4294954302;
      }
    }

    else
    {
      FigCreateCFPropertyListFromData_cold_1(&v19, v7, v8, v9, v10, v11, v12, v13);
      return v19;
    }
  }

  else
  {
    Code = 0;
    *a4 = 0;
  }

  return Code;
}

uint64_t FigCFTypeIsPListSerializable(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    FigCFTypeIsPListSerializable_cold_8(0, v2, v3, v4, v5, v6, v7, v8);
LABEL_26:
    v81 = 0;
    v73 = 0;
LABEL_27:
    a1 = 0;
    goto LABEL_20;
  }

  TypeID = CFArrayGetTypeID();
  figCFArrayAppendNumber(Mutable, kCFNumberSInt64Type, &TypeID, v10, v11, v12, v13, v14);
  TypeID = CFBooleanGetTypeID();
  figCFArrayAppendNumber(Mutable, kCFNumberSInt64Type, &TypeID, v15, v16, v17, v18, v19);
  TypeID = CFDataGetTypeID();
  figCFArrayAppendNumber(Mutable, kCFNumberSInt64Type, &TypeID, v20, v21, v22, v23, v24);
  TypeID = CFDateGetTypeID();
  figCFArrayAppendNumber(Mutable, kCFNumberSInt64Type, &TypeID, v25, v26, v27, v28, v29);
  TypeID = CFDictionaryGetTypeID();
  figCFArrayAppendNumber(Mutable, kCFNumberSInt64Type, &TypeID, v30, v31, v32, v33, v34);
  TypeID = CFNumberGetTypeID();
  figCFArrayAppendNumber(Mutable, kCFNumberSInt64Type, &TypeID, v35, v36, v37, v38, v39);
  TypeID = CFStringGetTypeID();
  appended = figCFArrayAppendNumber(Mutable, kCFNumberSInt64Type, &TypeID, v40, v41, v42, v43, v44);
  if (!a1)
  {
    FigCFTypeIsPListSerializable_cold_7(appended, v46, v47, v48, v49, v50, v51, v52);
    v81 = 0;
    v73 = 0;
    goto LABEL_20;
  }

  v53 = CFGetTypeID(a1);
  v54 = FigCFArrayContainsInt64(Mutable, v53);
  if (!v54)
  {
    FigCFTypeIsPListSerializable_cold_6(v54, v55, v56, v57, v58, v59, v60, v61);
    goto LABEL_26;
  }

  v62 = CFGetTypeID(a1);
  if (v62 == CFDictionaryGetTypeID())
  {
    Count = CFDictionaryGetCount(a1);
    if (Count >= 1)
    {
      v64 = Count;
      v65 = 8 * Count;
      v73 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      if (v73)
      {
        v81 = malloc_type_malloc(v65, 0xC0040B8AA526DuLL);
        if (v81)
        {
          CFDictionaryGetKeysAndValues(a1, v73, v81);
          v82 = 0;
          while (1)
          {
            v83 = v73[v82];
            Value = CFDictionaryGetValue(a1, v83);
            v85 = CFGetTypeID(v83);
            v86 = CFStringGetTypeID();
            if (v85 != v86)
            {
              FigCFTypeIsPListSerializable_cold_2(v86, v87, v88, v89, v90, v91, v92, v93);
              goto LABEL_27;
            }

            IsPListSerializable = FigCFTypeIsPListSerializable(Value);
            if (!IsPListSerializable)
            {
              break;
            }

            if (v64 == ++v82)
            {
              goto LABEL_19;
            }
          }

          FigCFTypeIsPListSerializable_cold_3(IsPListSerializable, v95, v96, v97, v98, v99, v100, v101);
        }

        else
        {
          FigCFTypeIsPListSerializable_cold_4(0, v74, v75, v76, v77, v78, v79, v80);
        }
      }

      else
      {
        FigCFTypeIsPListSerializable_cold_5(0, v66, v67, v68, v69, v70, v71, v72);
        v81 = 0;
      }

      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v102 = CFGetTypeID(a1);
  if (v102 == CFArrayGetTypeID())
  {
    v103 = CFArrayGetCount(a1);
    if (v103 >= 1)
    {
      v104 = v103;
      v105 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v105);
        v107 = FigCFTypeIsPListSerializable(ValueAtIndex);
        if (!v107)
        {
          break;
        }

        if (v104 == ++v105)
        {
          goto LABEL_18;
        }
      }

      FigCFTypeIsPListSerializable_cold_1(v107, v108, v109, v110, v111, v112, v113, v114);
      goto LABEL_26;
    }
  }

LABEL_18:
  v81 = 0;
  v73 = 0;
LABEL_19:
  a1 = 1;
LABEL_20:
  free(v73);
  free(v81);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return a1;
}

double FigGetCFPreferenceSizeWithDefault(const __CFString *a1, const __CFString *a2, double a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  if (v4)
  {
    v5 = v4;
    TypeID = CFStringGetTypeID();
    if (TypeID != CFGetTypeID(v5) || (range.location = 0, range.length = 0, v7 = CFStringGetLength(v5) - 1, v16.location = 0, v16.length = v7, !CFStringFindWithOptions(v5, @"x", v16, 1uLL, &range)))
    {
LABEL_13:
      CFRelease(v5);
      return a3;
    }

    v8 = *MEMORY[0x1E695E480];
    v17.length = range.location;
    v17.location = 0;
    v9 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v5, v17);
    v18.length = v7 - range.location;
    v18.location = range.location + 1;
    v10 = CFStringCreateWithSubstring(v8, v5, v18);
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
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      FigGetDoubleFromCFTypeWithDefault(v9);
      a3 = v13;
      FigGetDoubleFromCFTypeWithDefault(v11);
    }

    CFRelease(v9);
LABEL_11:
    if (v11)
    {
      CFRelease(v11);
    }

    goto LABEL_13;
  }

  return a3;
}

void FigGetDoubleFromCFTypeWithDefault(const __CFString *a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFStringGetTypeID())
    {
      if (CFStringGetDoubleValue(a1) == 0.0)
      {
        if (CFStringCompare(a1, @"0", 1uLL))
        {
          CFStringCompare(a1, @"0.0", 1uLL);
        }
      }
    }

    else
    {
      v3 = CFGetTypeID(a1);
      if (v3 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
      }
    }
  }
}

uint64_t FigCFDictionarySetCGRect(void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  if (a1)
  {
    v18 = CFGetTypeID(a1);
    TypeID = CFDictionaryGetTypeID();
    if (v18 != TypeID)
    {
      FigCFDictionarySetCGRect_cold_1(TypeID, v20, v21, v22, v23, v24, v25, v26);
      return 0;
    }

    if (a2)
    {
      v40.origin.x = a9;
      v40.origin.y = a10;
      v40.size.width = a11;
      v40.size.height = a12;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v40);
      if (DictionaryRepresentation)
      {
        v35 = DictionaryRepresentation;
        CFDictionarySetValue(a1, a2, DictionaryRepresentation);
        CFRelease(v35);
        return 0;
      }

      FigCFDictionarySetCGRect_cold_2(&v37, v28, v29, v30, v31, v32, v33, v34);
      return v37;
    }

    else
    {
      FigCFDictionarySetCGRect_cold_3(&v38, v20, v21, v22, v23, v24, v25, v26);
      return v38;
    }
  }

  else
  {
    FigCFDictionarySetCGRect_cold_4(&v39, a2, a3, a4, a5, a6, a7, a8);
    return v39;
  }
}

uint64_t FigCFArrayAppendCGRect(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  if (a1)
  {
    v17 = CFGetTypeID(a1);
    TypeID = CFArrayGetTypeID();
    if (v17 != TypeID)
    {
      FigCFArrayAppendCGRect_cold_1(TypeID, v19, v20, v21, v22, v23, v24, v25);
      return 0;
    }

    v38.origin.x = a9;
    v38.origin.y = a10;
    v38.size.width = a11;
    v38.size.height = a12;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v38);
    if (DictionaryRepresentation)
    {
      v34 = DictionaryRepresentation;
      CFArrayAppendValue(a1, DictionaryRepresentation);
      CFRelease(v34);
      return 0;
    }

    FigCFArrayAppendCGRect_cold_2(&v36, v27, v28, v29, v30, v31, v32, v33);
    return v36;
  }

  else
  {
    FigCFArrayAppendCGRect_cold_3(&v37, a2, a3, a4, a5, a6, a7, a8);
    return v37;
  }
}

uint64_t FigCFArrayGetCGRectAtIndex(const void *a1, CFIndex a2, CGRect *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    v11 = CFGetTypeID(a1);
    if (v11 == CFArrayGetTypeID())
    {
      if (a3)
      {
        if (a2 < 0 || CFArrayGetCount(a1) <= a2)
        {
          v16 = 2840;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
          if (ValueAtIndex && (v13 = ValueAtIndex, v14 = CFGetTypeID(ValueAtIndex), v14 == CFDictionaryGetTypeID()))
          {
            if (CGRectMakeWithDictionaryRepresentation(v13, a3))
            {
              return 1;
            }

            v16 = 2844;
          }

          else
          {
            v16 = 2842;
          }
        }
      }

      else
      {
        v16 = 2839;
      }
    }

    else
    {
      v16 = 2838;
    }
  }

  else
  {
    v16 = 2837;
  }

  FigCFArrayGetCGRectAtIndex_cold_1(v16, a2, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t FigCFDictionarySetCGSize(void *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8, CGFloat a9, CGFloat a10)
{
  if (a1)
  {
    v14 = CFGetTypeID(a1);
    TypeID = CFDictionaryGetTypeID();
    if (v14 != TypeID)
    {
      FigCFDictionarySetCGSize_cold_1(TypeID, v16, v17, v18, v19, v20, v21, v22);
      return 0;
    }

    if (a2)
    {
      v36.width = a9;
      v36.height = a10;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v36);
      if (DictionaryRepresentation)
      {
        v31 = DictionaryRepresentation;
        CFDictionarySetValue(a1, a2, DictionaryRepresentation);
        CFRelease(v31);
        return 0;
      }

      FigCFDictionarySetCGSize_cold_2(&v33, v24, v25, v26, v27, v28, v29, v30);
      return v33;
    }

    else
    {
      FigCFDictionarySetCGSize_cold_3(&v34, v16, v17, v18, v19, v20, v21, v22);
      return v34;
    }
  }

  else
  {
    FigCFDictionarySetCGSize_cold_4(&v35, a2, a3, a4, a5, a6, a7, a8);
    return v35;
  }
}

uint64_t FigCFArrayAppendCGSize(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8, CGFloat a9, CGFloat a10)
{
  if (a1)
  {
    v13 = CFGetTypeID(a1);
    TypeID = CFArrayGetTypeID();
    if (v13 != TypeID)
    {
      FigCFArrayAppendCGSize_cold_1(TypeID, v15, v16, v17, v18, v19, v20, v21);
      return 0;
    }

    v34.width = a9;
    v34.height = a10;
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v34);
    if (DictionaryRepresentation)
    {
      v30 = DictionaryRepresentation;
      CFArrayAppendValue(a1, DictionaryRepresentation);
      CFRelease(v30);
      return 0;
    }

    FigCFArrayAppendCGSize_cold_2(&v32, v23, v24, v25, v26, v27, v28, v29);
    return v32;
  }

  else
  {
    FigCFArrayAppendCGSize_cold_3(&v33, a2, a3, a4, a5, a6, a7, a8);
    return v33;
  }
}

uint64_t FigCFArrayGetCGSizeAtIndex(const void *a1, CFIndex a2, CGSize *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    v11 = CFGetTypeID(a1);
    if (v11 == CFArrayGetTypeID())
    {
      if (a3)
      {
        if (a2 < 0 || CFArrayGetCount(a1) <= a2)
        {
          v16 = 2914;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
          if (ValueAtIndex && (v13 = ValueAtIndex, v14 = CFGetTypeID(ValueAtIndex), v14 == CFDictionaryGetTypeID()))
          {
            if (CGSizeMakeWithDictionaryRepresentation(v13, a3))
            {
              return 1;
            }

            v16 = 2918;
          }

          else
          {
            v16 = 2916;
          }
        }
      }

      else
      {
        v16 = 2913;
      }
    }

    else
    {
      v16 = 2912;
    }
  }

  else
  {
    v16 = 2911;
  }

  FigCFArrayGetCGRectAtIndex_cold_1(v16, a2, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t FigCFDictionarySetCGPoint(__CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8, CGFloat a9, CGFloat a10)
{
  if (a1 && (v14 = CFGetTypeID(a1), v14 == CFDictionaryGetTypeID()))
  {
    if (a2)
    {
      v28.x = a9;
      v28.y = a10;
      DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v28);
      if (DictionaryRepresentation)
      {
        v23 = DictionaryRepresentation;
        CFDictionarySetValue(a1, a2, DictionaryRepresentation);
        CFRelease(v23);
        return 0;
      }

      else
      {
        FigCFDictionarySetCGPoint_cold_1(&v25, v16, v17, v18, v19, v20, v21, v22);
        return v25;
      }
    }

    else
    {
      FigCFDictionarySetCGPoint_cold_2(&v26, a2, a3, a4, a5, a6, a7, a8);
      return v26;
    }
  }

  else
  {
    FigCFDictionarySetCGPoint_cold_3(&v27, a2, a3, a4, a5, a6, a7, a8);
    return v27;
  }
}

uint64_t FigCFDictionaryGetCGPointIfPresent(CFDictionaryRef theDict, const void *a2, CGPoint *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a3)
  {
    FigCFDictionaryGetCGPointIfPresent_cold_3(theDict, a2, 0, a4, a5, a6, a7, a8);
    return 0;
  }

  result = 0;
  if (theDict)
  {
    if (a2)
    {
      value = 0;
      result = CFDictionaryGetValueIfPresent(theDict, a2, &value);
      if (result)
      {
        TypeID = value;
        if (value && (v19 = CFGetTypeID(value), TypeID = CFDictionaryGetTypeID(), v19 == TypeID))
        {
          v20 = CGPointMakeWithDictionaryRepresentation(value, a3);
          if (v20)
          {
            return 1;
          }

          FigCFDictionaryGetCGPointIfPresent_cold_1(v20, v21, v22, v23, v24, v25, v26, v27);
        }

        else
        {
          FigCFDictionaryGetCGPointIfPresent_cold_2(TypeID, v11, v12, v13, v14, v15, v16, v17);
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t FigASCIICFStringCaseInsensitiveEqualCallback(const __CFString *cf, const __CFString *cf2)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    TypeID = CFStringGetTypeID();
    if (cf2)
    {
      if (v4 == TypeID)
      {
        v6 = CFGetTypeID(cf2);
        if (v6 == CFStringGetTypeID())
        {
          return CFStringCompare(cf, cf2, 1uLL) == kCFCompareEqualTo;
        }
      }
    }
  }

  return CFEqual(cf, cf2);
}

CFHashCode FigASCIICFStringCaseInsensitiveHashCallback(const __CFString *cf)
{
  if (cf && (v2 = CFGetTypeID(cf), v2 == CFStringGetTypeID()) && (Predefined = CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter), v10.length = CFStringGetLength(cf), v10.location = 0, CFStringFindCharacterFromSet(cf, Predefined, v10, 0, 0)) && (v4 = CFGetAllocator(cf), (MutableCopy = CFStringCreateMutableCopy(v4, 0, cf)) != 0))
  {
    v6 = MutableCopy;
    CFStringLowercase(MutableCopy, 0);
    v7 = CFHash(v6);
    CFRelease(v6);
    return v7;
  }

  else
  {

    return CFHash(cf);
  }
}

CFPropertyListRef FigCreatePropertyListFromBundleIdentifier(const __CFAllocator *a1, CFStringRef bundleID, const __CFString *a3, const __CFString *a4)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(bundleID);
  if (!BundleWithIdentifier)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD40uLL, "<<< FigCFUtilities >>>", 0xC93, v4, v9, v10);
    return 0;
  }

  v11 = CFBundleCopyResourceURL(BundleWithIdentifier, a3, 0, a4);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = CFReadStreamCreateWithFile(*MEMORY[0x1E695E480], v11);
  if (!v13)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD40uLL, "<<< FigCFUtilities >>>", 0xCA1, v4, v14, v15);
    CFRelease(v12);
    return 0;
  }

  v16 = v13;
  format = 0;
  if (CFReadStreamOpen(v13))
  {
    v21 = CFPropertyListCreateWithStream(a1, v16, 0, 0, &format, 0);
    if (!v21)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD40uLL, "<<< FigCFUtilities >>>", 0xCB2, v4, v19, v20);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD40uLL, "<<< FigCFUtilities >>>", 0xCA7, v4, v17, v18);
    v21 = 0;
  }

  CFRelease(v12);
  CFRelease(v16);
  return v21;
}

BOOL FigCFBundleIDResourceSubdirExists(const __CFString *a1, const __CFString *a2)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(a1);
  if (!BundleWithIdentifier)
  {
    v15 = qword_1EAF1CE20;
    v16 = v2;
    v17 = 3323;
LABEL_7:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCD40uLL, "<<< FigCFUtilities >>>", v17, v16, v5, v6);
    return 0;
  }

  v7 = CFBundleCopyResourcesDirectoryURL(BundleWithIdentifier);
  if (!v7)
  {
    v15 = qword_1EAF1CE20;
    v16 = v2;
    v17 = 3330;
    goto LABEL_7;
  }

  v8 = v7;
  v9 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x1E695E480], v7, a2, 1u);
  if (v9)
  {
    v12 = v9;
    DoesFileExist = FigFileDoesFileExist(v9);
    CFRelease(v8);
    CFRelease(v12);
    return DoesFileExist;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD40uLL, "<<< FigCFUtilities >>>", 0xD0A, v2, v10, v11);
  CFRelease(v8);
  return 0;
}

UInt8 *FigCreateBytesFromCFString(uint64_t a1, CFStringRef theString, CFStringEncoding a3, int a4, void *a5)
{
  maxBufLen = 0;
  if (a4)
  {
    HIDWORD(v11) = a3 - 256;
    LODWORD(v11) = a3 - 256;
    v10 = v11 >> 26;
    if (v10 > 7)
    {
      v12 = 1;
    }

    else
    {
      v12 = qword_197165A20[v10];
    }
  }

  else
  {
    v12 = 0;
  }

  v18.length = CFStringGetLength(theString);
  v18.location = 0;
  CFStringGetBytes(theString, v18, a3, 0, 0, 0, 0, &maxBufLen);
  v13 = MEMORY[0x19A8D7200](a1, maxBufLen + v12, 0x100004077774924, 0);
  v19.length = CFStringGetLength(theString);
  v19.location = 0;
  CFStringGetBytes(theString, v19, a3, 0, 0, v13, maxBufLen, 0);
  if (a4)
  {
    if (v12 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12;
    }

    v15 = v13;
    do
    {
      v15[maxBufLen] = 0;
      ++v15;
      --v14;
    }

    while (v14);
  }

  if (a5)
  {
    *a5 = maxBufLen + v12;
  }

  return v13;
}

UInt8 *FigCreateBytesFromCFStringAndMovieLangCode(uint64_t a1, const __CFString *a2, unsigned int a3, int a4, void *a5)
{
  if (a3 > 0x97)
  {
    if (a3 != 0x7FFF && a3 >= 0x400)
    {
      v5 = 134217984;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = langCodeToStringEncoding[a3];
  }

  return FigCreateBytesFromCFString(a1, a2, v5, a4, a5);
}

size_t FigCFStringCreateWithBytesAndMovieLangCode(const __CFAllocator *a1, const UInt8 *a2, unint64_t a3, uint64_t a4, CFStringEncoding *a5, CFStringRef *a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a2)
  {
    FigCFStringCreateWithBytesAndMovieLangCode_cold_3(&v26, 0, a3, a4, a5, a6, a7, a8);
    return v26;
  }

  if (!a6)
  {
    FigCFStringCreateWithBytesAndMovieLangCode_cold_2(&v25, a2, a3, a4, a5, 0, a7, a8);
    return v25;
  }

  if (a4 <= 0x97)
  {
    v10 = 0;
    v11 = langCodeToStringEncoding[a4];
    if (!a5)
    {
      goto LABEL_16;
    }

LABEL_15:
    *a5 = v11;
    goto LABEL_16;
  }

  if (a4 == 0x7FFF)
  {
    v11 = 0;
    v10 = 0;
    if (a5)
    {
      goto LABEL_15;
    }

LABEL_16:
    v13 = CFStringCreateWithBytes(a1, a2, a3, v11, v10);
    if (v13)
    {
      v21 = v13;
      result = 0;
      *a6 = v21;
    }

    else
    {
      FigCFStringCreateWithBytesAndMovieLangCode_cold_1(&v24, v14, v15, v16, v17, v18, v19, v20);
      return v24;
    }

    return result;
  }

  if (a4 >= 0x400)
  {
    if (a3 < 2)
    {
      goto LABEL_14;
    }

    v12 = *a2;
    if (v12 == 255)
    {
      if (a2[1] != 254)
      {
        goto LABEL_14;
      }
    }

    else if (v12 != 254 || a2[1] != 255)
    {
LABEL_14:
      v10 = 0;
      v11 = 134217984;
      if (!a5)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v10 = 1;
    v11 = 256;
    if (a5)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v23 = qword_1EAF1CE20;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFCD3FuLL, "<<< FigCFUtilities >>>", 0xDB0, v8, a7, a8);
}

const __CFString *FigCFStringFind(const __CFString *result, const __CFString *a2, CFStringCompareFlags a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    TypeID = CFStringGetTypeID();
    result = 0;
    if (a2)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a2);
        if (v8 == CFStringGetTypeID())
        {
          return (CFStringFind(v5, a2, a3).location != -1);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

CFStringRef FigCFStringGetIntAfterString(CFStringRef result, const __CFString *a2, SInt32 *a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    TypeID = CFStringGetTypeID();
    result = 0;
    if (a2)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a2);
        if (v8 != CFStringGetTypeID())
        {
          return 0;
        }

        v9 = CFStringFind(v5, a2, 0);
        if (v9.location == -1)
        {
          return 0;
        }

        v10 = *MEMORY[0x1E695E480];
        v13.length = CFStringGetLength(v5) - v9.length;
        v13.location = v9.length;
        result = CFStringCreateWithSubstring(v10, v5, v13);
        if (!result)
        {
          return result;
        }

        v11 = result;
        IntValue = CFStringGetIntValue(result);
        if (!IntValue && CFStringCompare(v11, @"0", 1uLL))
        {
          CFRelease(v11);
          return 0;
        }

        CFRelease(v11);
        if (a3)
        {
          *a3 = IntValue;
        }

        return 1;
      }
    }
  }

  return result;
}

CFStringRef FigCFStringCreateBase26LettersFromDecimal(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  if (a2)
  {
    v8 = v11;
    do
    {
      v9 = a2 - 1;
      LODWORD(a2) = (a2 - 1) / 0x1Au;
      *v8++ = v9 % 0x1A + 97;
    }

    while (v9 > 0x19);
    return CFStringCreateWithCString(a1, v11, 0x600u);
  }

  else
  {
    FigCFStringCreateBase26LettersFromDecimal_cold_1(a1, a2, a3, a4, a5, a6, a7, a8);
    return 0;
  }
}

CFLocaleRef FigCFLocaleCreateWithMovieLangCode(CFAllocatorRef alloc, unsigned int a2)
{
  if (a2 == 0x7FFF)
  {
    return 0;
  }

  if (a2 > 0x3FF)
  {
    *bytes = (a2 >> 10) | 0x60;
    *&bytes[1] = (a2 >> 5) & 0x1F | 0x60;
    bytes[2] = a2 & 0x1F | 0x60;
    CanonicalLocaleIdentifierFromScriptManagerCodes = CFStringCreateWithBytes(alloc, bytes, 4, 0x600u, 0);
  }

  else
  {
    CanonicalLocaleIdentifierFromScriptManagerCodes = CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(alloc, a2, -1);
  }

  v4 = CanonicalLocaleIdentifierFromScriptManagerCodes;
  if (!CanonicalLocaleIdentifierFromScriptManagerCodes)
  {
    return 0;
  }

  v5 = CFLocaleCreate(alloc, CanonicalLocaleIdentifierFromScriptManagerCodes);
  CFRelease(v4);
  return v5;
}

__CFArray *FigCopyRankedLanguagesAccordingToPreferredLanguages2(const __CFArray *a1, const __CFArray *a2, int a3)
{
  v5 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFArrayCreateMutableCopy(*MEMORY[0x1E695E480], a2);
  v7 = FigCFArrayCreateMutableCopy(v5, a1);
  if (v7)
  {
    v8 = MutableCopy == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    Mutable = 0;
    if (!MutableCopy)
    {
      goto LABEL_38;
    }

LABEL_37:
    CFRelease(MutableCopy);
    goto LABEL_38;
  }

  v26.length = CFArrayGetCount(MutableCopy);
  v26.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(MutableCopy, v26, @"zh-Hant-HK");
  v27.length = CFArrayGetCount(MutableCopy);
  v27.location = 0;
  v10 = CFArrayGetFirstIndexOfValue(MutableCopy, v27, @"zh-HK");
  v11 = v10;
  if ((FirstIndexOfValue & 0x8000000000000000) == 0 || (v10 & 0x8000000000000000) == 0)
  {
    v28.length = CFArrayGetCount(MutableCopy);
    v28.location = 0;
    if (!CFArrayContainsValue(MutableCopy, v28, @"yue-Hant"))
    {
      if (FirstIndexOfValue >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = FirstIndexOfValue;
      }

      if (FirstIndexOfValue <= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = FirstIndexOfValue;
      }

      if ((FirstIndexOfValue | v11) < 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      CFArrayInsertValueAtIndex(MutableCopy, v14, @"yue-Hant");
    }
  }

  CFArrayInsertValueAtIndex(v7, 0, @"ULTIMATUM");
  CFArrayAppendValue(MutableCopy, @"ULTIMATUM");
  Mutable = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
  if (CFArrayGetCount(v7) < 1)
  {
    goto LABEL_37;
  }

  do
  {
    v16 = CFBundleCopyLocalizationsForPreferences(v7, MutableCopy);
    if (!v16)
    {
      continue;
    }

    v17 = v16;
    Count = CFArrayGetCount(v16);
    if (Count < 1)
    {
      goto LABEL_34;
    }

    v19 = Count;
    v20 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v17, v20);
      v29.length = CFArrayGetCount(v7);
      v29.location = 0;
      v22 = CFArrayGetFirstIndexOfValue(v7, v29, ValueAtIndex);
      if (ValueAtIndex != @"ULTIMATUM")
      {
        v23 = v22;
        if (!ValueAtIndex || !CFEqual(ValueAtIndex, @"ULTIMATUM"))
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            CFArrayRemoveValueAtIndex(v7, v23);
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          goto LABEL_31;
        }
      }

      if (a3 || Mutable && CFArrayGetCount(Mutable))
      {
        break;
      }

      CFArrayRemoveValueAtIndex(v7, 0);
      v24 = CFArrayGetCount(MutableCopy);
      CFArrayRemoveValueAtIndex(MutableCopy, v24 - 1);
LABEL_31:
      if (v19 == ++v20)
      {
        goto LABEL_34;
      }
    }

    CFArrayRemoveAllValues(v7);
LABEL_34:
    CFRelease(v17);
  }

  while (CFArrayGetCount(v7) > 0);
  if (MutableCopy)
  {
    goto LABEL_37;
  }

LABEL_38:
  if (v7)
  {
    CFRelease(v7);
  }

  return Mutable;
}

const __CFString *FigCFDateCreateFromString(const __CFAllocator *a1, const __CFString *cf, const void *a3)
{
  v3 = cf;
  if (!cf)
  {
    return v3;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFStringGetTypeID())
  {
    return 0;
  }

  if (a3)
  {
    v7 = CFRetain(a3);
  }

  else
  {
    v7 = CFLocaleCopyCurrent();
  }

  v8 = v7;
  atp = 0.0;
  BytesFromCFString = FigCreateBytesFromCFString(a1, v3, 0, 1, 0);
  if (!BytesFromCFString)
  {
    v3 = 0;
    if (!v8)
    {
      return v3;
    }

    goto LABEL_33;
  }

  v10 = BytesFromCFString;
  if (!FigCFParseISO8601Date(BytesFromCFString, &atp))
  {
    goto LABEL_30;
  }

  v25 = v10;
  v11 = *MEMORY[0x1E695E568];
  v12 = *MEMORY[0x1E695E4D0];
  v13 = kCFDateFormatterFullStyle;
  while (1)
  {
    v14 = v13;
    if (v13 == kCFDateFormatterNoStyle)
    {
      break;
    }

    v15 = CFDateFormatterCreate(0, v8, v13, kCFDateFormatterNoStyle);
    if (v15)
    {
      v16 = v15;
      CFDateFormatterSetProperty(v15, v11, v12);
      AbsoluteTimeFromString = CFDateFormatterGetAbsoluteTimeFromString(v16, v3, 0, &atp);
      CFRelease(v16);
    }

    else
    {
      AbsoluteTimeFromString = 0;
    }

    v13 = v14 - 1;
    if (AbsoluteTimeFromString)
    {
      goto LABEL_19;
    }
  }

  AbsoluteTimeFromString = 0;
LABEL_19:
  v18 = kCFDateFormatterFullStyle;
  while (v18)
  {
    v19 = CFDateFormatterCreate(0, v8, v14, v18);
    if (v19)
    {
      v20 = v19;
      CFDateFormatterSetProperty(v19, v11, v12);
      v21 = CFDateFormatterGetAbsoluteTimeFromString(v20, v3, 0, &atp);
      CFRelease(v20);
    }

    else
    {
      v21 = 0;
    }

    --v18;
    if (v21)
    {
      goto LABEL_27;
    }
  }

  v21 = 0;
LABEL_27:
  if (v21 | AbsoluteTimeFromString)
  {
    v10 = v25;
    if (v14 == kCFDateFormatterNoStyle)
    {
      v27 = 0;
      v28 = 0;
      v26 = 0;
      FigSimpleMutexLock(sCFCalendarMutex);
      CFCalendarDecomposeAbsoluteTime(sCFGregorianCalendar, atp, "Hms", &v28 + 4, &v28, &v27 + 4);
      v22 = sCFGregorianCalendar;
      Current = CFAbsoluteTimeGetCurrent();
      CFCalendarDecomposeAbsoluteTime(v22, Current, "Mdy", &v27, &v26 + 4, &v26);
      CFCalendarComposeAbsoluteTime(sCFGregorianCalendar, &atp, "HmsMdy", HIDWORD(v28), v28, HIDWORD(v27), v27, HIDWORD(v26), v26);
      FigSimpleMutexUnlock(sCFCalendarMutex);
    }

LABEL_30:
    v3 = CFDateCreate(a1, atp);
    goto LABEL_32;
  }

  v3 = 0;
  v10 = v25;
LABEL_32:
  CFAllocatorDeallocate(a1, v10);
  if (v8)
  {
LABEL_33:
    CFRelease(v8);
  }

  return v3;
}

uint64_t FigCFParseISO8601Date(const char *a1, CFAbsoluteTime *a2)
{
  memset(&v23, 0, sizeof(v23));
  FigThreadRunOnce(&sCFCalendarStuffOnce, figCreateCalendarStuffOnce);
  v4 = strptime(a1, "%FT%T", &v23);
  if (v4 || (v4 = strptime(a1, "%Y%m%dT%H%M%S", &v23)) != 0)
  {
    v5 = v4;
    *&v23.tm_mon = vadd_s32(*&v23.tm_mon, 0x76C00000001);
  }

  else
  {
    v18 = strptime(a1, "%T", &v23);
    if (!v18)
    {
      v18 = strptime(a1, "%H%M%S", &v23);
      if (!v18)
      {
        return 4294954302;
      }
    }

    v5 = v18;
    v21.tm_sec = 0;
    v22 = 0;
    FigSimpleMutexLock(sCFCalendarMutex);
    v19 = sCFGregorianCalendar;
    Current = CFAbsoluteTimeGetCurrent();
    CFCalendarDecomposeAbsoluteTime(v19, Current, "Mdy", &v21, &v22 + 4, &v22);
    FigSimpleMutexUnlock(sCFCalendarMutex);
    v23.tm_mday = HIDWORD(v22);
    v23.tm_mon = v21.tm_sec;
    v23.tm_year = v22;
  }

  FigSimpleMutexLock(sCFCalendarMutex);
  if (*&sCachedTM[20] == v23.tm_year && *&sCachedTM[12] == *&v23.tm_mday)
  {
    *a2 = *&sCachedAbsoluteDate + (3600 * (v23.tm_hour - *&sCachedTM[8])) + (60 * (v23.tm_min - *&sCachedTM[4])) + (v23.tm_sec - *sCachedTM);
  }

  else
  {
    v6 = CFCalendarCopyTimeZone(sCFGregorianCalendar);
    CFCalendarSetTimeZone(sCFGregorianCalendar, sCFTimeZoneGMT);
    CFCalendarComposeAbsoluteTime(sCFGregorianCalendar, a2, "HmsMdy", v23.tm_hour, v23.tm_min, v23.tm_sec, v23.tm_mon, v23.tm_mday, v23.tm_year);
    CFCalendarSetTimeZone(sCFGregorianCalendar, v6);
    *sCachedTM = v23;
    sCachedAbsoluteDate = *a2;
    CFRelease(v6);
  }

  FigSimpleMutexUnlock(sCFCalendarMutex);
  v7 = *v5;
  if ((v7 | 2) == 0x2E)
  {
    v8 = *++v5;
    v9 = v8 - 48;
    v10 = 0.0;
    if ((v8 - 48) <= 9)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v11 = 10 * v11 + v9;
        v12 *= 10;
        v13 = *++v5;
        v9 = v13 - 48;
      }

      while ((v13 - 48) < 0xA);
      v10 = v11 / v12;
    }

    *a2 = v10 + *a2;
    v7 = *v5;
  }

  if (v7 != 45 && v7 != 43)
  {
    return 0;
  }

  memset(&v21, 0, sizeof(v21));
  v15 = *v5;
  v14 = v5 + 1;
  if (v15 == 45)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = -1.0;
  }

  if (strptime(v14, "%H%M", &v21) || strptime(v14, "%H:%M", &v21) || strptime(v14, "%H", &v21))
  {
    result = 0;
    *a2 = *a2 + v16 * (3600 * v21.tm_hour + 60 * v21.tm_min);
    return result;
  }

  return 4294954302;
}

uint64_t FigCFURLIsLocalResource(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFURLCopyScheme(a1);
  if (v2)
  {
    v3 = v2;
    IsPersistentURL = 1;
    if (CFStringCompare(@"file", v2, 1uLL))
    {
      IsPersistentURL = FigIsPersistentURL(a1);
    }

    CFRelease(v3);
    return IsPersistentURL;
  }

  return FigIsPersistentURL(a1);
}

const __CFURL *FigCFStringCreateCacheKeyFromURLString(CFStringRef URLString, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (URLString)
  {
    v8 = a2;
    v9 = CFURLCreateWithString(*MEMORY[0x1E695E480], URLString, 0);
    if (v9)
    {
      v17 = v9;
      v18 = FigCFURLCreateCacheKey(v9, v8);
      CFRelease(v17);
      return v18;
    }

    FigCFStringCreateCacheKeyFromURLString_cold_1(0, v10, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    FigCFStringCreateCacheKeyFromURLString_cold_2(0, a2, a3, a4, a5, a6, a7, a8);
  }

  return 0;
}

BOOL FigCFURLDoesDirectoryExist(const __CFURL *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v11 = qword_1EAF1CE20;
    v12 = v8;
    v13 = 4294954306;
    v14 = 4098;
LABEL_11:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v13, "<<< FigCFUtilities >>>", v14, v12, a7, a8);
    return 0;
  }

  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v11 = qword_1EAF1CE20;
    v12 = v8;
    v13 = 4294967246;
    v14 = 4104;
    goto LABEL_11;
  }

  memset(&v15, 0, sizeof(v15));
  return stat(buffer, &v15) != -1 && (v15.st_mode & 0xF000) == 0x4000;
}

size_t FigCFURLCreateDirectory(const __CFURL *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v18 = *MEMORY[0x1E69E9840];
  if (FigCFURLDoesDirectoryExist(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  if (a1)
  {
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      result = mkdir(buffer, 0x1C0u);
      if (!result)
      {
        return result;
      }

      v13 = qword_1EAF1CE20;
      v14 = v8;
      v15 = 4294954301;
      v16 = 4060;
    }

    else
    {
      v13 = qword_1EAF1CE20;
      v14 = v8;
      v15 = 4294967246;
      v16 = 4055;
    }
  }

  else
  {
    v13 = qword_1EAF1CE20;
    v14 = v8;
    v15 = 4294954306;
    v16 = 4050;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v15, "<<< FigCFUtilities >>>", v16, v14, v10, v11);
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL(const void *a1, const void *a2, const void *a3, CFURLRef *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a1)
  {
    TypeID = CFAllocatorGetTypeID();
    if (TypeID != CFGetTypeID(a1))
    {
      FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_1(&v103, a2, a3, a4, a5, a6, a7, a8);
      return v103;
    }
  }

  if (!a2 || (v14 = CFURLGetTypeID(), v14 != CFGetTypeID(a2)))
  {
    FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_14(&v103, a2, a3, a4, a5, a6, a7, a8);
    return v103;
  }

  if (!CFURLCanBeDecomposed(a2))
  {
    FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_13(&v103, v15, v16, v17, v18, v19, v20, v21);
    return v103;
  }

  if (!a3 || (v22 = CFURLGetTypeID(), v22 != CFGetTypeID(a3)))
  {
    FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_12(&v103, v15, v16, v17, v18, v19, v20, v21);
    return v103;
  }

  if (!CFURLCanBeDecomposed(a3))
  {
    FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_11(&v103, v23, v24, v25, v26, v27, v28, v29);
    return v103;
  }

  if (!a4)
  {
    FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_10(&v103, v23, v24, v25, v26, v27, v28, v29);
    return v103;
  }

  v30 = CFURLCopyAbsoluteURL(a2);
  if (!v30)
  {
    FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_9(&v103, v31, v32, v33, v34, v35, v36, v37);
    return v103;
  }

  v38 = v30;
  v39 = CFURLCopyScheme(v30);
  if (!v39)
  {
    v102 = 4172;
LABEL_37:
    FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_8(v102, v38, &v103, v40, v41, v42, v43, v44);
    return v103;
  }

  CFRelease(v39);
  v45 = CFURLCopyAbsoluteURL(a3);
  if (!v45)
  {
    v102 = 4176;
    goto LABEL_37;
  }

  v46 = v45;
  v47 = CFURLCopyScheme(v45);
  if (!v47)
  {
    FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_7(&v103, v48, v49, v50, v51, v52, v53, v54);
LABEL_49:
    v91 = 0;
    v100 = v103;
    goto LABEL_26;
  }

  CFRelease(v47);
  if (CFURLHasDirectoryPath(v46))
  {
    PathComponent = CFRetain(v46);
    goto LABEL_17;
  }

  PathComponent = CFURLCreateCopyDeletingLastPathComponent(a1, v46);
  if (!PathComponent)
  {
    FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_6(&v103, v56, v57, v58, v59, v60, v61, v62);
    goto LABEL_49;
  }

LABEL_17:
  v63 = CFURLGetString(v38);
  if (!v63)
  {
    FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_5(&v103, v64, v65, v66, v67, v68, v69, v70);
LABEL_41:
    v91 = 0;
    goto LABEL_46;
  }

  v71 = v63;
  v72 = CFURLGetString(PathComponent);
  if (!v72)
  {
    FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_4(&v103, v73, v74, v75, v76, v77, v78, v79);
    goto LABEL_41;
  }

  v80 = v72;
  if (!CFStringHasPrefix(v71, v72))
  {
    v100 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD3CuLL, "<<< FigCFUtilities >>>", 0x106E, v8, v81, v82);
    v91 = 0;
    if (!PathComponent)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  Length = CFStringGetLength(v80);
  v104.length = CFStringGetLength(v71) - Length;
  v104.location = Length;
  v91 = CFStringCreateWithSubstring(a1, v71, v104);
  if (v91)
  {
    v92 = CFURLCreateWithString(a1, v91, PathComponent);
    if (v92)
    {
      v100 = 0;
      *a4 = v92;
      if (!PathComponent)
      {
        goto LABEL_26;
      }

LABEL_25:
      CFRelease(PathComponent);
      goto LABEL_26;
    }

    FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_2(&v103, v93, v94, v95, v96, v97, v98, v99);
  }

  else
  {
    FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_3(&v103, v84, v85, v86, v87, v88, v89, v90);
  }

LABEL_46:
  v100 = v103;
  if (PathComponent)
  {
    goto LABEL_25;
  }

LABEL_26:
  CFRelease(v46);
  CFRelease(v38);
  if (v91)
  {
    CFRelease(v91);
  }

  return v100;
}

uint64_t FigCFURLCreateWithSuffixedExtension(const __CFAllocator *a1, CFURLRef url, const __CFString *a3, void *a4)
{
  v8 = CFURLCopyPathExtension(url);
  v9 = v8;
  if (v8 == a3 || a3 && v8 && CFEqual(a3, v8))
  {
    v10 = CFRetain(url);
  }

  else
  {
    v10 = CFURLCreateCopyAppendingPathExtension(a1, url, a3);
  }

  v18 = v10;
  if (!v10 && !FigCFURLCreateWithSuffixedExtension_cold_1(&v21, v11, v12, v13, v14, v15, v16, v17))
  {
    v19 = v21;
    if (!v9)
    {
      return v19;
    }

    goto LABEL_9;
  }

  v19 = 0;
  *a4 = v18;
  if (v9)
  {
LABEL_9:
    CFRelease(v9);
  }

  return v19;
}

size_t FigCFURLCopyCanonicalPath(const __CFURL *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  cf = 0;
  if (!a1)
  {
    FigCFURLCopyCanonicalPath_cold_3(&v23, a2, a3, a4, a5, a6, a7, a8);
    return v23;
  }

  if (!_CFURLIsFileURL())
  {
    FigCFURLCopyCanonicalPath_cold_2(&v23, v11, v12, v13, v14, v15, v16, v17);
    return v23;
  }

  if (!a2)
  {
    FigCFURLCopyCanonicalPath_cold_1(&v23, v11, v12, v13, v14, v15, v16, v17);
    return v23;
  }

  CFURLCopyResourcePropertyForKey(a1, *MEMORY[0x1E695EA38], &cf, 0);
  if (cf)
  {
    v20 = 0;
    *a2 = cf;
  }

  else
  {
    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x10AC, v8, v18, v19);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v20;
}

size_t FigCFURLGetFileStats(const __CFURL *a1, off_t *a2, void *a3, timespec *a4, BOOL *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(&v17, 0, sizeof(v17));
  if (a1 && (a2 || a3 || a4 || a5))
  {
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      if (stat(buffer, &v17) == -1)
      {
        return *__error();
      }

      else
      {
        if (a2)
        {
          *a2 = v17.st_size;
        }

        if (a3)
        {
          *a3 = v17.st_blocks << 9;
        }

        if (a4)
        {
          *a4 = v17.st_mtimespec;
        }

        result = 0;
        if (a5)
        {
          *a5 = (v17.st_mode & 0x4000) != 0;
        }
      }
    }

    else
    {
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x10C7, v8, v15, v16);
    }
  }

  else
  {
    v13 = qword_1EAF1CE20;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x10C1, v8, a7, a8);
  }

  return result;
}

uint64_t FigCFURLIdentifiesSameFileResourceAsCFURL(const __CFURL *a1, const __CFURL *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  bzero(v8, 0x400uLL);
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      memset(&v7, 0, sizeof(v7));
      memset(&v6, 0, sizeof(v6));
      result = CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024);
      if (result)
      {
        result = CFURLGetFileSystemRepresentation(a2, 1u, v8, 1024);
        if (result)
        {
          return stat(buffer, &v7) != -1 && stat(v8, &v6) != -1 && v7.st_ino == v6.st_ino && v7.st_dev == v6.st_dev && v7.st_size == v6.st_size && v7.st_mtimespec.tv_sec == v6.st_mtimespec.tv_sec && v7.st_mtimespec.tv_nsec == v6.st_mtimespec.tv_nsec;
        }
      }
    }
  }

  return result;
}

char *FigCFStringGetCStringPtrAndBufferToFree(CFStringRef theString, CFStringEncoding encoding, char **a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (!theString)
  {
    return 0;
  }

  CStringPtr = CFStringGetCStringPtr(theString, encoding);
  v7 = CStringPtr;
  if (a3 && !CStringPtr)
  {
    Length = CFStringGetLength(theString);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length + 1, encoding);
    if (MaximumSizeForEncoding == -1)
    {
      return 0;
    }

    v10 = MaximumSizeForEncoding;
    v7 = malloc_type_malloc(MaximumSizeForEncoding, 0x9D3635D9uLL);
    if (v7)
    {
      if (CFStringGetCString(theString, v7, v10, encoding))
      {
        *a3 = v7;
        return v7;
      }

      free(v7);
      return 0;
    }
  }

  return v7;
}

const char *FigCFStringGetCStringPtrMaybeUsingPreallocatedBuffer(const char *result, char *a2, CFIndex a3, CFStringEncoding encoding)
{
  if (result)
  {
    v7 = result;
    result = CFStringGetCStringPtr(result, encoding);
    if (!result && a2 && a3)
    {
      if (CFStringGetCString(v7, a2, a3, encoding))
      {
        return a2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

__CFString *FigGetCFStringForOSTypeValue(unsigned int a1)
{
  *bytes = a1;
  if (a1 == 1936684398)
  {
    return @"soun";
  }

  if (a1 == 1986618469)
  {
    return @"vide";
  }

  FigThreadRunOnce(&sLoadFourCharCodeStringOnce, figCreateFourCharCodeStuffOnce);
  FigSimpleMutexLock(sFourCharCodeStringMutex);
  Value = CFDictionaryGetValue(sCFStringsForFourCharCodes, a1);
  if (!Value)
  {
    *bytes = bswap32(a1);
    Value = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0x600u, 0);
    if (Value)
    {
      CFDictionaryAddValue(sCFStringsForFourCharCodes, a1, Value);
      CFRelease(Value);
    }
  }

  FigSimpleMutexUnlock(sFourCharCodeStringMutex);
  return Value;
}

uint64_t figCreateFourCharCodeStuffOnce()
{
  sCFStringsForFourCharCodes = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  result = FigSimpleMutexCreateWithFlags(AllocatorForPermanentAllocations, 0);
  sFourCharCodeStringMutex = result;
  return result;
}

const void *FigGetCFStringFor3CCValue(unsigned int a1)
{
  v4 = a1;
  FigThreadRunOnce(&sLoadThreeCharCodeStringOnce, figCreateThreeCharCodeStuffOnce);
  FigSimpleMutexLock(sThreeCharCodeStringMutex);
  Value = CFDictionaryGetValue(sCFStringsForThreeCharCodes, a1);
  if (!Value)
  {
    v4 = bswap32(a1);
    Value = CFStringCreateWithBytes(*MEMORY[0x1E695E480], &v4 + 1, 3, 0x600u, 0);
    if (Value)
    {
      CFDictionaryAddValue(sCFStringsForThreeCharCodes, a1, Value);
      CFRelease(Value);
    }
  }

  FigSimpleMutexUnlock(sThreeCharCodeStringMutex);
  return Value;
}

uint64_t figCreateThreeCharCodeStuffOnce()
{
  sCFStringsForThreeCharCodes = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  AllocatorForPermanentAllocations = FigGetAllocatorForPermanentAllocations();
  result = FigSimpleMutexCreateWithFlags(AllocatorForPermanentAllocations, 0);
  sThreeCharCodeStringMutex = result;
  return result;
}

uint64_t FigGetNumberFromCFTypeWithDefault(const __CFString *a1, uint64_t a2)
{
  if (!a1)
  {
    return a2;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    IntValue = CFStringGetIntValue(a1);
    if (!IntValue)
    {
      IntValue = 1;
      if (CFStringCompare(a1, @"true", 1uLL))
      {
        IntValue = 1;
        if (CFStringCompare(a1, @"yes", 1uLL))
        {
          if (CFStringCompare(a1, @"false", 1uLL) == kCFCompareEqualTo)
          {
            return 0;
          }

          if (CFStringCompare(a1, @"no", 1uLL) == kCFCompareEqualTo)
          {
            return 0;
          }

          IntValue = a2;
          if (CFStringCompare(a1, @"0", 1uLL) == kCFCompareEqualTo)
          {
            return 0;
          }
        }
      }
    }
  }

  else
  {
    v6 = CFGetTypeID(a1);
    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(a1, kCFNumberIntType, &valuePtr))
      {
        return valuePtr;
      }

      else
      {
        return a2;
      }
    }

    else
    {
      v7 = CFGetTypeID(a1);
      IntValue = a2;
      if (v7 == CFBooleanGetTypeID())
      {
        return CFEqual(a1, *MEMORY[0x1E695E4D0]);
      }
    }
  }

  return IntValue;
}

unint64_t FigGetLongNumberFromCFTypeWithDefault(const __CFString *a1, uint64_t a2)
{
  valuePtr = a2;
  if (!a1)
  {
    return valuePtr;
  }

  v3 = CFGetTypeID(a1);
  if (v3 != CFStringGetTypeID())
  {
    v7 = CFGetTypeID(a1);
    if (v7 == CFNumberGetTypeID())
    {
      return FigCFNumberGetSInt64(a1);
    }

    v9 = CFGetTypeID(a1);
    if (v9 != CFBooleanGetTypeID())
    {
      return valuePtr;
    }

    return CFEqual(a1, *MEMORY[0x1E695E4D0]);
  }

  if (CFStringCompare(a1, @"true", 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"yes", 1uLL) == kCFCompareEqualTo)
  {
    return 1;
  }

  if (CFStringCompare(a1, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"no", 1uLL) == kCFCompareEqualTo)
  {
    return 0;
  }

  v4 = *MEMORY[0x1E695E480];
  v5 = CFLocaleCreate(*MEMORY[0x1E695E480], @"en_US_POSIX");
  v6 = CFNumberFormatterCreate(v4, v5, kCFNumberFormatterNoStyle);
  CFNumberFormatterGetValueFromString(v6, a1, 0, kCFNumberLongLongType, &valuePtr);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return valuePtr;
}

const __CFNumber *FigCFNumberGetSInt64(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigGetCFPreferenceNumberWithDefault(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  NumberFromCFTypeWithDefault = FigGetNumberFromCFTypeWithDefault(v4, a3);
  if (v4)
  {
    CFRelease(v4);
  }

  return NumberFromCFTypeWithDefault;
}

unint64_t FigGetCFPreferenceLongNumberWithDefault(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  LongNumberFromCFTypeWithDefault = FigGetLongNumberFromCFTypeWithDefault(v4, a3);
  if (v4)
  {
    CFRelease(v4);
  }

  return LongNumberFromCFTypeWithDefault;
}

double FigGetCFPreferenceDoubleWithDefault(const __CFString *a1, const __CFString *a2)
{
  v2 = CFPreferencesCopyAppValue(a1, a2);
  FigGetDoubleFromCFTypeWithDefault(v2);
  v4 = v3;
  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

uint64_t FigGetBooleanFromCFTypeWithDefault(const __CFString *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFBooleanGetTypeID())
    {
      return *MEMORY[0x1E695E4D0] == a1;
    }

    else
    {
      v5 = CFGetTypeID(a1);
      if (v5 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        return valuePtr != 0;
      }

      else
      {
        v6 = CFGetTypeID(a1);
        if (v6 == CFStringGetTypeID())
        {
          if (CFStringCompare(a1, @"true", 1uLL) && CFStringCompare(a1, @"yes", 1uLL) && CFStringCompare(a1, @"1", 1uLL))
          {
            if (CFStringCompare(a1, @"false", 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"no", 1uLL) == kCFCompareEqualTo || CFStringCompare(a1, @"0", 1uLL) == kCFCompareEqualTo)
            {
              return 0;
            }
          }

          else
          {
            return 1;
          }
        }
      }
    }
  }

  return a2;
}

uint64_t FigGetCFPreferenceBooleanWithDefault(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v4 = CFPreferencesCopyAppValue(a1, a2);
  BooleanFromCFTypeWithDefault = FigGetBooleanFromCFTypeWithDefault(v4, a3);
  if (v4)
  {
    CFRelease(v4);
  }

  return BooleanFromCFTypeWithDefault;
}

uint64_t FigReplaceURLWithString(__CFDictionary *a1, const void *a2, const void *a3, CFURLRef relativeURL)
{
  v7 = CFURLCopyAbsoluteURL(relativeURL);
  if (v7)
  {
    v15 = v7;
    v16 = CFURLGetString(v7);
    CFDictionaryRemoveValue(a1, a2);
    CFDictionarySetValue(a1, a3, v16);
    CFRelease(v15);
    return 0;
  }

  else
  {
    FigReplaceURLWithString_cold_1(&v18, v8, v9, v10, v11, v12, v13, v14);
    return v18;
  }
}

uint64_t FigReplaceStringWithURL(__CFDictionary *a1, const void *a2, const void *a3, CFStringRef URLString)
{
  v7 = CFURLCreateWithString(*MEMORY[0x1E695E480], URLString, 0);
  if (v7)
  {
    v15 = v7;
    CFDictionaryRemoveValue(a1, a2);
    CFDictionarySetValue(a1, a3, v15);
    CFRelease(v15);
    return 0;
  }

  else
  {
    FigReplaceStringWithURL_cold_1(&v17, v8, v9, v10, v11, v12, v13, v14);
    return v17;
  }
}

CFURLRef FigCFURLCreateFromSystemTemporaryDirectory(const __CFAllocator *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  v3 = confstr(65537, buffer, 0x400uLL) - 1;
  if (v3 < 1)
  {
    v10 = 5317;
LABEL_6:
    FigCFURLCreateFromSystemTemporaryDirectory_cold_1(v10, v2, v3, v4, v5, v6, v7, v8);
    return 0;
  }

  result = CFURLCreateFromFileSystemRepresentation(a1, buffer, v3, 1u);
  if (!result)
  {
    v10 = 5320;
    goto LABEL_6;
  }

  return result;
}

CFURLRef FigCFURLCreateFromTemporaryFileWithDirectoryAndSuffix(const __CFAllocator *a1, const __CFURL *a2, const char *a3, const char *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  bzero(__str, 0x400uLL);
  if (a2)
  {
    v15 = FigCFURLDoesDirectoryExist(a2, v8, v9, v10, v11, v12, v13, v14);
    if (!v15)
    {
      FigCFURLCreateFromTemporaryFileWithDirectoryAndSuffix_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
      return 0;
    }

    v23 = CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024);
    if (!v23)
    {
      FigCFURLCreateFromTemporaryFileWithDirectoryAndSuffix_cold_1(v23, v24, v25, v26, v27, v28, v29, v30);
      return 0;
    }
  }

  else
  {
    v31 = confstr(65537, buffer, 0x400uLL);
    if ((v31 - 1) <= 0)
    {
      FigCFURLCreateFromTemporaryFileWithDirectoryAndSuffix_cold_4(v31, v32, v33, v34, v35, v36, v37, v38);
      return 0;
    }
  }

  if (a4)
  {
    snprintf(__str, 0x400uLL, "%s/%sXXXXXX%s", buffer, a3, a4);
    v39 = strlen(a4);
    mkstemps(__str, v39);
  }

  else
  {
    snprintf(__str, 0x400uLL, "%s/%sXXXXXX", buffer, a3);
    mkstemp(__str);
  }

  v40 = strlen(__str);
  if (v40 <= 0)
  {
    FigCFURLCreateFromTemporaryFileWithDirectoryAndSuffix_cold_3(v40, v41, v42, v43, v44, v45, v46, v47);
    return 0;
  }

  return CFURLCreateFromFileSystemRepresentation(a1, __str, v40, 0);
}

uint64_t FigCFAttributedStringSetDouble(__CFAttributedString *a1, uint64_t a2, uint64_t a3, const __CFString *a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8, double a9)
{
  v23 = a9;
  if (!a1)
  {
    FigCFAttributedStringSetDouble_cold_3(&v24, a2, a3, a4, a5, a6, a7, a8);
    return v24;
  }

  if (!a4)
  {
    FigCFAttributedStringSetDouble_cold_2(&v24, a2, a3, 0, a5, a6, a7, a8);
    return v24;
  }

  v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v23);
  if (!v13)
  {
    FigCFAttributedStringSetDouble_cold_1(&v24, v14, v15, v16, v17, v18, v19, v20);
    return v24;
  }

  v21 = v13;
  v25.location = a2;
  v25.length = a3;
  CFAttributedStringSetAttribute(a1, v25, a4, v13);
  CFRelease(v21);
  return 0;
}

uint64_t FigCFIntersectionRange(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 > result || result >= a3 + a4)
  {
    if (a3 < result + a2)
    {
      v4 = a3;
    }

    else
    {
      v4 = 0;
    }

    if (result <= a3)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef FigCopyCFPreferenceAppValueOrOptionCFTypeWithDefault(const __CFDictionary *a1, CFStringRef key, CFStringRef applicationID, const void *a4)
{
  result = CFPreferencesCopyAppValue(key, applicationID);
  if (!a1 || result)
  {
LABEL_5:
    if (result)
    {
      return result;
    }

    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(a1, key);
  if (Value)
  {
    result = CFRetain(Value);
    goto LABEL_5;
  }

LABEL_6:
  if (!a4)
  {
    return 0;
  }

  return CFRetain(a4);
}

uint64_t FigGetCFPreferenceOrOptionNumberWithDefault(const __CFDictionary *a1, const __CFString *key, const __CFString *a3, uint64_t a4)
{
  v4 = a4;
  valuePtr = a4;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, key);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      v4 = valuePtr;
    }
  }

  return FigGetCFPreferenceNumberWithDefault(key, a3, v4);
}

void FigGetCFPreferenceOrOptionDoubleWithDefault(const __CFDictionary *a1, const __CFString *key, const __CFString *a3, double a4)
{
  valuePtr = a4;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, key);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
    }
  }

  FigGetCFPreferenceDoubleWithDefault(key, a3);
}

uint64_t FigGetGlobalCFAllocatorFigMalloc(uint64_t a1)
{
  if (qword_1ED4CC920 != -1)
  {
    FigGetGlobalCFAllocatorFigMalloc_cold_1(a1);
  }

  return qword_1ED4CC918;
}

CFAllocatorRef figCreateFigCFAllocatorFigMallocOnceFunc(CFAllocatorRef *a1)
{
  result = CFAllocatorCreate(*MEMORY[0x1E695E480], &sFigCFAllocatorFigMallocContext);
  *a1 = result;
  return result;
}

uint64_t FigCreateCFAllocatorFigMallocWithDeallocCallback(void (__cdecl *a1)(void *, void *), CFTypeRef *a2)
{
  memset(&v14, 0, sizeof(v14));
  if (qword_1ED4CC920 != -1)
  {
    FigGetGlobalCFAllocatorFigMalloc_cold_1(a1);
  }

  CFAllocatorGetContext(qword_1ED4CC918, &v14);
  v14.deallocate = a1;
  v4 = CFAllocatorCreate(*MEMORY[0x1E695E480], &v14);
  if (v4)
  {
    v12 = v4;
    *a2 = CFRetain(v4);
    CFRelease(v12);
    return 0;
  }

  else
  {
    FigCreateCFAllocatorFigMallocWithDeallocCallback_cold_2(&v15, v5, v6, v7, v8, v9, v10, v11);
    return v15;
  }
}

CFStringRef figDispatchQueueCFCollectionCopyDescriptionCallBack(NSObject *a1)
{
  label = dispatch_queue_get_label(a1);
  v2 = strlen(label);
  v3 = *MEMORY[0x1E695E480];

  return CFStringCreateWithBytes(v3, label, v2, 0x8000100u, 0);
}

CFNumberRef FigCFNumberCreateUInt8(const __CFAllocator *a1, __int16 a2)
{
  v6 = a2;
  if ((a2 & 0x80) != 0)
  {
    valuePtr = a2;
    p_valuePtr = &valuePtr;
    v3 = kCFNumberSInt16Type;
  }

  else
  {
    p_valuePtr = &v6;
    v3 = kCFNumberSInt8Type;
  }

  return CFNumberCreate(a1, v3, p_valuePtr);
}

CFNumberRef FigCFNumberCreateUInt16(const __CFAllocator *a1, int a2)
{
  v6 = a2;
  if ((a2 & 0x8000) != 0)
  {
    valuePtr = a2;
    p_valuePtr = &valuePtr;
    v3 = kCFNumberSInt32Type;
  }

  else
  {
    p_valuePtr = &v6;
    v3 = kCFNumberSInt16Type;
  }

  return CFNumberCreate(a1, v3, p_valuePtr);
}

CFNumberRef FigCFNumberCreateUInt32(const __CFAllocator *a1, unsigned int a2)
{
  v6 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    v5 = a2;
    v2 = &v5;
    v3 = kCFNumberSInt64Type;
  }

  else
  {
    v2 = &v6;
    v3 = kCFNumberSInt32Type;
  }

  return CFNumberCreate(a1, v3, v2);
}

uint64_t FigCFNumberGetUInt8(const __CFNumber *a1)
{
  valuePtr = 0;
  if (a1 && (v2 = CFGetTypeID(a1), v2 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t FigCFNumberGetUInt16(const __CFNumber *a1)
{
  valuePtr = 0;
  if (a1 && (v2 = CFGetTypeID(a1), v2 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

const __CFNumber *FigCFNumberGetUInt32(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFNumber *FigCFNumberGetUInt64(const __CFNumber *result)
{
  v1 = 0;
  v2 = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberMaxType|kCFNumberSInt8Type, &v1);
    return v2;
  }

  return result;
}

uint64_t FigCFNumberGetSInt8(const __CFNumber *a1)
{
  valuePtr = 0;
  if (a1 && (v2 = CFGetTypeID(a1), v2 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

uint64_t FigCFNumberGetSInt16(const __CFNumber *a1)
{
  valuePtr = 0;
  if (a1 && (v2 = CFGetTypeID(a1), v2 == CFNumberGetTypeID()))
  {
    CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
    return valuePtr;
  }

  else
  {
    return 0;
  }
}

const __CFNumber *FigCFNumberGetSInt32(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFNumber *FigCFNumberGetCFIndex(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float FigCFNumberGetFloat32(const void *a1)
{
  valuePtr = 0.0;
  v1 = 0.0;
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (v3 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
      return valuePtr;
    }
  }

  return v1;
}

double FigCFNumberGetFloat64(const void *a1)
{
  valuePtr = 0.0;
  v1 = 0.0;
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (v3 == CFNumberGetTypeID())
    {
      CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
      return valuePtr;
    }
  }

  return v1;
}

uint64_t FigCFCopyPropertyAsTime(uint64_t a1, uint64_t a2, uint64_t a3, CMTime *a4)
{
  dictionaryRepresentation = 0;
  memset(&v13, 0, sizeof(v13));
  v8 = *(*(CMBaseObjectGetVTable(a1) + 8) + 48);
  if (v8)
  {
    v9 = v8(a1, a2, a3, &dictionaryRepresentation);
    v10 = dictionaryRepresentation;
    if (v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = dictionaryRepresentation == 0;
    }

    if (!v11)
    {
      CMTimeMakeFromDictionary(&v13, dictionaryRepresentation);
      v10 = dictionaryRepresentation;
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v9 = 4294954514;
  }

  *a4 = v13;
  return v9;
}

uint64_t FigCFSetPropertyToTime(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v5 = *MEMORY[0x1E695E480];
  v10 = *a3;
  v6 = CMTimeCopyAsDictionary(&v10, v5);
  v7 = *(*(CMBaseObjectGetVTable(a1) + 8) + 56);
  if (v7)
  {
    v8 = v7(a1, a2, v6);
    if (!v6)
    {
      return v8;
    }

    goto LABEL_5;
  }

  v8 = 4294954514;
  if (v6)
  {
LABEL_5:
    CFRelease(v6);
  }

  return v8;
}

uint64_t FigCFArrayCopyValuesAsCFSet(const __CFArray *a1, CFSetRef *a2)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (a2)
    {
      v12 = Count;
      v20 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
      if (v20)
      {
        v34.location = 0;
        v34.length = v12;
        CFArrayGetValues(a1, v34, v20);
        v21 = CFSetCreate(*MEMORY[0x1E695E480], v20, v12, MEMORY[0x1E695E9F8]);
        if (v21)
        {
          v29 = 0;
          *a2 = v21;
        }

        else
        {
          FigCFArrayCopyValuesAsCFSet_cold_1(&v31, v22, v23, v24, v25, v26, v27, v28);
          v29 = v31;
        }
      }

      else
      {
        FigCFArrayCopyValuesAsCFSet_cold_2(&v32, v13, v14, v15, v16, v17, v18, v19);
        v29 = v32;
      }
    }

    else
    {
      FigCFArrayCopyValuesAsCFSet_cold_3(&v33, v5, v6, v7, v8, v9, v10, v11);
      v20 = 0;
      v29 = v33;
    }
  }

  else
  {
    v20 = 0;
    v29 = 0;
  }

  free(v20);
  return v29;
}

CFSetRef FigCFSetGetCount(CFSetRef theSet)
{
  if (theSet)
  {
    return CFSetGetCount(theSet);
  }

  return theSet;
}

BOOL FigCFSetContainsValue(CFSetRef theSet, const void *a2)
{
  result = 0;
  if (theSet)
  {
    if (a2)
    {
      return CFSetContainsValue(theSet, a2) != 0;
    }
  }

  return result;
}

CFMutableSetRef FigCFSetCreateDifference(CFSetRef theSet, uint64_t a2)
{
  if (theSet)
  {
    Count = CFSetGetCount(theSet);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9F8]);
  v6 = Mutable;
  if (theSet && Mutable)
  {
    v8[0] = a2;
    v8[1] = Mutable;
    CFSetApplyFunction(theSet, figCFSet_differenceApplier, v8);
  }

  return v6;
}

void figCFSet_differenceApplier(void *value, CFSetRef *a2)
{
  if (!value || !*a2 || !CFSetContainsValue(*a2, value))
  {
    v4 = a2[1];

    CFSetAddValue(v4, value);
  }
}

void FigCFSetAddSet(uint64_t a1, CFSetRef theSet)
{
  if (a1)
  {
    if (theSet)
    {
      v2[0] = theSet;
      v2[1] = a1;
      CFSetApplyFunction(theSet, figCFSet_sumApplier, v2);
    }
  }
}

uint64_t FigUInt32GetCountOfSetBits(uint64_t result)
{
  if (result)
  {
    v1 = result;
    LODWORD(result) = 0;
    do
    {
      result = result + (v1 & 1);
      v2 = v1 > 1;
      v1 >>= 1;
    }

    while (v2);
  }

  return result;
}

uint64_t FigUInt32GetPositionOfLeastSignificantSetBit(unsigned int a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = a1;
  if (a1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v3 = v1;
    result = (result + 1);
    v1 >>= 1;
  }

  while ((v3 & 2) == 0);
  return result;
}

uint64_t FigStorageCreate(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (a3)
  {
    FigGetAllocatorForMedia();
    FigThreadRunOnce(&FigStorageGetTypeID_sFigStorageRegisterOnce, FigStorage_initOnce);
    Instance = _CFRuntimeCreateInstance();
    result = 0;
    *(Instance + 16) = a2;
    *a3 = Instance;
  }

  else
  {
    FigStorageCreate_cold_1(&v12, a2, 0, a4, a5, a6, a7, a8);
    return v12;
  }

  return result;
}

uint64_t figGetIndexOfNthSmallestValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void), uint64_t a5)
{
  if (a2 != a3)
  {
    v6 = a3;
    v8 = a2;
    while (1)
    {
      v29 = a2;
      v9 = (a1 + 8 * v8);
      if (v6 - v8 < 5)
      {
        SubMedian = figFindSubMedian(a1, v8, v6, a4);
      }

      else
      {
        if (v6 >= v8)
        {
          v10 = 0;
          v11 = v8;
          do
          {
            v12 = v10 / 5;
            if (v11 + 4 >= v6)
            {
              v13 = v6;
            }

            else
            {
              v13 = v11 + 4;
            }

            v14 = figFindSubMedian(a1, v11, v13, a4);
            v15 = *(a1 + 8 * v14);
            *(a1 + 8 * v14) = v9[v12];
            v9[v12] = v15;
            v11 += 5;
            v10 += 5;
          }

          while (v11 <= v6);
        }

        SubMedian = figGetIndexOfNthSmallestValue(a1, v8, v8 + (v6 - v8) / 5uLL, a4, v8 + (v6 - v8) / 0xAuLL + 1);
      }

      v17 = *(a1 + 8 * SubMedian);
      *(a1 + 8 * SubMedian) = *(a1 + 8 * v6);
      *(a1 + 8 * v6) = v17;
      v18 = v8;
      v19 = v6 - v8;
      if (v6 > v8)
      {
        v18 = v8;
        do
        {
          if (a4(*v9, v17, 0) == -1)
          {
            v20 = *(a1 + 8 * v18);
            *(a1 + 8 * v18) = *v9;
            *v9 = v20;
            ++v18;
          }

          ++v9;
          --v19;
        }

        while (v19);
      }

      v21 = v18;
      v22 = v6 - v18;
      if (v6 > v18)
      {
        v23 = (a1 + 8 * v18);
        v21 = v18;
        do
        {
          if (!a4(*v23, v17, 0))
          {
            v24 = *(a1 + 8 * v21);
            *(a1 + 8 * v21) = *v23;
            *v23 = v24;
            ++v21;
          }

          ++v23;
          --v22;
        }

        while (v22);
      }

      v25 = *(a1 + 8 * v6);
      *(a1 + 8 * v6) = *(a1 + 8 * v21);
      *(a1 + 8 * v21) = v25;
      if (v21 >= a5)
      {
        v26 = a5;
      }

      else
      {
        v26 = v21;
      }

      if (v18 > a5)
      {
        v26 = v18;
      }

      if (v26 == a5)
      {
        break;
      }

      if (v18 <= a5)
      {
        v8 = v26 + 1;
      }

      else
      {
        v6 = v18 - 1;
      }

      a2 = v29;
      if (v18 <= a5)
      {
        a2 = v26 + 1;
      }

      if (v8 == v6)
      {
        return a2;
      }
    }

    return a5;
  }

  return a2;
}

CFStringRef FigCreateBase32EncodedSHA1HashFromCFString(const __CFString *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  *md = 0;
  v12 = 0;
  v13 = 0;
  *len = 0;
  v2 = FigDigestSHA1Create();
  AllocatorForMedia = FigGetAllocatorForMedia();
  BytesFromCFString = FigCreateBytesFromCFString(AllocatorForMedia, a1, 0x8000100u, 0, len);
  if (BytesFromCFString)
  {
    v5 = BytesFromCFString;
    FigDigestSHA1AppendData(v2, BytesFromCFString, len[0]);
    FigDigestSHA1GetDigest(v2, md);
    v6 = FigGetAllocatorForMedia();
    FigCreateBase32EncodedStringFromBytes(v6, md, 20, 0, &v10);
    v7 = FigGetAllocatorForMedia();
    CFAllocatorDeallocate(v7, v5);
  }

  FigDigestSHA1Destroy(v2);
  return v10;
}

uint64_t figCFAppendCompactDictionaryDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8))
  {
    CFStringAppend(*a3, @", ");
  }

  figCFAppendCompactDescription(*a3);
  CFStringAppend(*a3, @" = ");
  result = figCFAppendCompactDescription(*a3);
  *(a3 + 8) = 1;
  return result;
}

CFIndex figCFAppendArrayToCompactDescription(__CFString *a1, CFArrayRef theArray)
{
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      CFArrayGetValueAtIndex(theArray, i);
      if (i)
      {
        CFStringAppend(a1, @", ");
      }

      result = figCFAppendCompactDescription(a1);
    }
  }

  return result;
}

uint64_t _FigCFIOKitObjectFinalize(uint64_t a1)
{
  result = IOObjectRelease(*(a1 + 16));
  *(a1 + 16) = 0;
  return result;
}

uint64_t FigStorage_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigStorageID = result;
  return result;
}

uint64_t figFindSubMedian(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void))
{
  if (a2 < a3)
  {
    v8 = 8 * a2;
    v9 = a2;
    do
    {
      v10 = v9++;
      v11 = v8;
      v12 = v9;
      if (v10 >= a2)
      {
        do
        {
          if (a4(*(a1 + v11), *(a1 + 8 * v12), 0) != 1)
          {
            break;
          }

          *(a1 + v11) = vextq_s8(*(a1 + v11), *(a1 + v11), 8uLL);
          --v12;
          v11 -= 8;
        }

        while (v12 > a2);
      }

      v8 += 8;
    }

    while (v9 != a3);
  }

  return (a3 + a2) / 2;
}

CFTypeID OUTLINED_FUNCTION_6_12(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

uint64_t OUTLINED_FUNCTION_8_10(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{

  return CFDictionaryGetValueIfPresent(v9, a2, &a9);
}

uint64_t OUTLINED_FUNCTION_9_10(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *value)
{

  return CFDictionaryGetValueIfPresent(v10, a2, &value);
}

void OUTLINED_FUNCTION_11_5(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *value)
{

  CFDictionarySetValue(v9, a2, value);
}

void OUTLINED_FUNCTION_14_5(uint64_t a1, CFRange a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  a2.location = 0;

  CFArrayApplyFunction(v9, a2, v8, &a8);
}

void OUTLINED_FUNCTION_15_5()
{

  CFRelease(v0);
}

uint64_t FigHALAudioDeviceGetClassID()
{
  if (FigHALAudioDeviceGetClassID_sRegisterFigHALAudioDeviceClassOnce != -1)
  {
    FigHALAudioDeviceGetClassID_cold_1();
  }

  return FigHALAudioDeviceGetClassID_sFigHALAudioDeviceClassID;
}

size_t __FigHALAudioDeviceGetClassID_block_invoke()
{
  ClassID = FigHALAudioObjectGetClassID();

  return FigBaseClassRegisterClass(&FigHALAudioDeviceGetClassID_sFigHALAudioDeviceClassDesc, ClassID, 0, &FigHALAudioDeviceGetClassID_sFigHALAudioDeviceClassID, v1, v2, v3, v4);
}

OSStatus CMAudioFormatDescriptionCreate(CFAllocatorRef allocator, const AudioStreamBasicDescription *asbd, size_t layoutSize, const AudioChannelLayout *layout, size_t magicCookieSize, const void *magicCookie, CFDictionaryRef extensions, CMAudioFormatDescriptionRef *formatDescriptionOut)
{
  cf = 0;
  if (!asbd || !formatDescriptionOut || asbd->mSampleRate == 0.0)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v14 = v8;
    v15 = 4294954586;
    v16 = 839;
LABEL_5:
    v17 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v15, "<<<< AudioFormatDescription >>>>", v16, v14, v12, v13);
LABEL_6:
    if (v17 && cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (formatDescriptionOut)
    {
      goto LABEL_10;
    }

    return v17;
  }

  FigThreadRunOnce(&sFigAudioFormatDescriptionRegisterOnce, FigAudioFormatDescriptionRegisterOnce);
  v17 = FigDerivedFormatDescriptionCreate(allocator, 0x736F756E, asbd->mFormatID, extensions, &cf, v25, v26, v27);
  if (v17)
  {
    goto LABEL_6;
  }

  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(cf, v28, v29, v30, v31, v32, v33, v34);
  v43 = *&asbd->mBitsPerChannel;
  v44 = *&asbd->mBytesPerPacket;
  *DerivedStorage = *&asbd->mSampleRate;
  *(DerivedStorage + 16) = v44;
  *(DerivedStorage + 32) = v43;
  if (layoutSize && layout)
  {
    v45 = MEMORY[0x19A8D7200](allocator, layoutSize, 223026244, 0);
    *(DerivedStorage + 64) = v45;
    if (!v45)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v14 = v8;
      v15 = 4294954585;
      v16 = 857;
      goto LABEL_5;
    }

    memcpy(v45, layout, layoutSize);
    *(DerivedStorage + 56) = layoutSize;
  }

  if (magicCookieSize && magicCookie)
  {
    v46 = MEMORY[0x19A8D7200](allocator, magicCookieSize, 764314730, 0);
    *(DerivedStorage + 48) = v46;
    if (!v46)
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v14 = v8;
      v15 = 4294954585;
      v16 = 869;
      goto LABEL_5;
    }

    memcpy(v46, magicCookie, magicCookieSize);
    *(DerivedStorage + 40) = magicCookieSize;
  }

  v47 = cf;
  v48 = FigDerivedFormatDescriptionGetDerivedStorage(cf, v35, v36, v37, v38, v39, v40, v41);
  v91 = 0;
  v87 = 0;
  v49 = CFGetAllocator(v47);
  v50 = *(v48 + 32);
  v51 = *(v48 + 16);
  v88[0] = *v48;
  v88[1] = v51;
  v52 = *(v48 + 48);
  v89 = v50;
  v90 = v52;
  LODWORD(v91) = *(v48 + 40);
  if (!AudioToolbox_AudioFormatGetPropertyInfo(1718383476, 56, v88, &v87))
  {
    v53 = v87;
    if (v87 >= 0x30)
    {
      v60 = MEMORY[0x19A8D7200](v49);
      if (!v60)
      {
        CMAudioFormatDescriptionCreate_cold_3();
        goto LABEL_49;
      }

      v61 = v60;
      if (!AudioToolbox_AudioFormatGetProperty(1718383476, 56, v88, &v87, v60))
      {
        v62 = v87;
        if (v87 > 0x2F)
        {
          goto LABEL_28;
        }
      }

      CFAllocatorDeallocate(v49, v61);
      v87 = 0;
    }
  }

  if (v47)
  {
    v63 = FigDerivedFormatDescriptionGetDerivedStorage(v47, v53, v54, v55, v56, v57, v58, v59);
    v87 = 48;
    v64 = MEMORY[0x19A8D7200](v49, 48, 0x100004064842E6ALL, 0);
    if (v64)
    {
      v65 = v64;
      v66 = *v63;
      v67 = *(v63 + 16);
      *(v64 + 32) = *(v63 + 32);
      *v64 = v66;
      *(v64 + 16) = v67;
      v68 = *(v63 + 28);
      if (v68 == 1)
      {
        v69 = 6553601;
      }

      else
      {
        v69 = -65536;
      }

      if (v68 == 2)
      {
        v70 = 6619138;
      }

      else
      {
        v70 = v69;
      }

      *(v64 + 40) = v70;
      v71 = *(v63 + 64);
      if (v71)
      {
        ChannelLayoutTagFromLayout = getChannelLayoutTagFromLayout(v71, *(v63 + 56));
        v73 = *(v65 + 40);
        if (v73 > 0xFFFEFFFF)
        {
          v74 = 2;
        }

        else
        {
          v74 = 3;
        }

        v75 = ChannelLayoutTagFromLayout != v73 || ChannelLayoutTagFromLayout >= 0xFFFF0000;
        *(v65 + 40) = ChannelLayoutTagFromLayout;
        if (!v75)
        {
          v74 = 1;
        }

        *(v48 + 80) = v87;
        *(v48 + 88) = v65;
        *(v48 + 72) = v74;
      }

      else
      {
        *(v48 + 80) = v87;
        *(v48 + 88) = v65;
      }

      goto LABEL_49;
    }

    CMAudioFormatDescriptionCreate_cold_1(&v92);
  }

  else
  {
    CMAudioFormatDescriptionCreate_cold_2(&v92);
  }

  if (!v92)
  {
    v61 = 0;
    v62 = v87;
LABEL_28:
    *(v48 + 80) = v62;
    *(v48 + 88) = v61;
  }

LABEL_49:
  figAudioFormatDescriptionEnsureRichestDecodableLayout(cf);
  figAudioFormatDescriptionEnsureMostCompatibleLayout(cf);
  v76 = *(DerivedStorage + 64);
  if (!v76 || (v77 = *(DerivedStorage + 56)) == 0)
  {
    v17 = 0;
LABEL_10:
    *formatDescriptionOut = cf;
    return v17;
  }

  v87 = 0;
  LODWORD(v88[0]) = -65536;
  v92 = 0;
  v85 = 0;
  v78 = *v76;
  if (!*v76 || (v76[2] = 0, v78 != 0x10000))
  {
    v76[1] = 0;
  }

  evaluateLayoutAgainstFormatList(*(DerivedStorage + 88), *(DerivedStorage + 80), v76, v77, &v92, v88, &v85 + 1, &v85, &v87);
  v79 = *(DerivedStorage + 72);
  if ((v79 & 0xFFFFFFFE) != 2)
  {
    v79 = v87;
    *(DerivedStorage + 72) = v87;
    if (!v79)
    {
      v80 = *(DerivedStorage + 64);
      if (v80)
      {
        CFAllocatorDeallocate(allocator, v80);
        *(DerivedStorage + 64) = 0;
        v79 = *(DerivedStorage + 72);
      }

      else
      {
        v79 = 0;
      }

      *(DerivedStorage + 56) = 0;
    }
  }

  if ((v79 & 0xFFFFFFFE) == 2)
  {
    v81 = *(DerivedStorage + 88);
    if (v81)
    {
      v82 = *(DerivedStorage + 80);
      if (v82 >= 0x30)
      {
        v83 = v82 / 0x30;
        v84 = (v81 + 40);
        do
        {
          if (v92 == *(v84 - 3))
          {
            *v84 = v88[0];
          }

          v84 += 12;
          --v83;
        }

        while (v83);
      }
    }
  }

  if (!*(DerivedStorage + 64))
  {
    figAudioFormatDescriptionEnsureRichestDecodableLayout(cf);
    figAudioFormatDescriptionEnsureMostCompatibleLayout(cf);
  }

  v17 = 0;
  if (formatDescriptionOut)
  {
    goto LABEL_10;
  }

  return v17;
}

const AudioStreamBasicDescription *__cdecl CMAudioFormatDescriptionGetStreamBasicDescription(CMAudioFormatDescriptionRef desc)
{
  if (!desc)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v14 = v1;
    v15 = 977;
LABEL_8:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", v15, v14, v12, v13);
    return 0;
  }

  if (CMFormatDescriptionGetMediaType(desc) != 1936684398)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v14 = v1;
    v15 = 982;
    goto LABEL_8;
  }

  return FigDerivedFormatDescriptionGetDerivedStorage(desc, v3, v4, v5, v6, v7, v8, v9);
}

const void *__cdecl CMAudioFormatDescriptionGetMagicCookie(CMAudioFormatDescriptionRef desc, size_t *sizeOut)
{
  if (!desc)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v18 = v2;
    v19 = 1004;
    goto LABEL_7;
  }

  if (CMFormatDescriptionGetMediaType(desc) != 1936684398)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v18 = v2;
    v19 = 1009;
LABEL_7:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", v19, v18, v16, v17);
    v14 = 0;
    result = 0;
    if (!sizeOut)
    {
      return result;
    }

    goto LABEL_8;
  }

  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(desc, v5, v6, v7, v8, v9, v10, v11);
  result = *(DerivedStorage + 48);
  v14 = *(DerivedStorage + 40);
  if (sizeOut)
  {
LABEL_8:
    *sizeOut = v14;
  }

  return result;
}

const AudioChannelLayout *__cdecl CMAudioFormatDescriptionGetChannelLayout(CMAudioFormatDescriptionRef desc, size_t *sizeOut)
{
  if (!desc)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v18 = v2;
    v19 = 1034;
LABEL_8:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", v19, v18, v16, v17);
    result = 0;
LABEL_9:
    v14 = 0;
    if (!sizeOut)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (CMFormatDescriptionGetMediaType(desc) != 1936684398)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v18 = v2;
    v19 = 1039;
    goto LABEL_8;
  }

  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(desc, v5, v6, v7, v8, v9, v10, v11);
  result = *(DerivedStorage + 64);
  if (!result)
  {
    goto LABEL_9;
  }

  v14 = *(DerivedStorage + 56);
  if (sizeOut)
  {
LABEL_10:
    *sizeOut = v14;
  }

  return result;
}

const AudioStreamBasicDescription *CMAudioFormatDescriptionGetChannelCount(const opaqueCMFormatDescription *a1)
{
  result = CMAudioFormatDescriptionGetStreamBasicDescription(a1);
  if (result)
  {
    return result->mChannelsPerFrame;
  }

  return result;
}

uint64_t FigAudioFormatDescriptionGetCodecOutputChannelCount(const opaqueCMFormatDescription *a1)
{
  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(a1);
  if (!RichestDecodableFormat)
  {
    RichestDecodableFormat = CMAudioFormatDescriptionGetStreamBasicDescription(a1);
    if (!RichestDecodableFormat)
    {
      goto LABEL_26;
    }
  }

  v3 = RichestDecodableFormat;
  mFormatID = RichestDecodableFormat->mASBD.mFormatID;
  size = 0;
  size_4 = mFormatID;
  sizeOut = 0;
  if (mFormatID != 1819304813)
  {
    if (!AudioToolbox_AudioFormatGetPropertyInfo(1635148901, 4, &size_4, &size) && size)
    {
      v5 = malloc_type_malloc(size, 0xD70DD160uLL);
      if (v5)
      {
        if (!AudioToolbox_AudioFormatGetProperty(1635148901, 4, &size_4, &size, v5))
        {
          v8 = size;
          MagicCookie = CMAudioFormatDescriptionGetMagicCookie(a1, &sizeOut);
          if (v8 >= 0xC)
          {
            v10 = MagicCookie;
            v11 = 0;
            v6 = 0;
            mChannelsPerFrame = 0;
            while (1)
            {
              v12 = &v5[12 * v11];
              if (*(v12 + 1) == size_4 && *v12 != 1935959395)
              {
                v13 = *&v3->mASBD.mBytesPerPacket;
                v14 = *&v3->mASBD.mBitsPerChannel;
                v21[0] = *&v3->mASBD.mSampleRate;
                v21[1] = v13;
                v22 = v14;
                v23 = v10;
                v24 = sizeOut;
                v15 = *v12;
                v26 = *(v12 + 2);
                v25 = v15;
                if (AudioToolbox_AudioFormatGetPropertyInfo(1868983411, 64, v21, &size))
                {
                  goto LABEL_28;
                }

                if (!size)
                {
                  goto LABEL_28;
                }

                v6 = malloc_type_malloc(size, 0xA4138B13uLL);
                if (!v6 || AudioToolbox_AudioFormatGetProperty(1868983411, 64, v21, &size, v6))
                {
                  goto LABEL_28;
                }

                if (size >= 0x30)
                {
                  v16 = size / 0x30uLL;
                  v17 = v6 + 7;
                  do
                  {
                    v19 = *v17;
                    v17 += 12;
                    v18 = v19;
                    if (mChannelsPerFrame <= v19)
                    {
                      mChannelsPerFrame = v18;
                    }

                    else
                    {
                      mChannelsPerFrame = mChannelsPerFrame;
                    }

                    --v16;
                  }

                  while (v16);
                }
              }

              if (++v11 == v8 / 0xCuLL)
              {
                goto LABEL_28;
              }
            }
          }
        }
      }

      mChannelsPerFrame = 0;
      goto LABEL_27;
    }

LABEL_26:
    mChannelsPerFrame = 0;
    v5 = 0;
LABEL_27:
    v6 = 0;
    goto LABEL_28;
  }

  v5 = 0;
  v6 = 0;
  mChannelsPerFrame = RichestDecodableFormat->mASBD.mChannelsPerFrame;
LABEL_28:
  free(v6);
  free(v5);
  return mChannelsPerFrame;
}

const AudioFormatListItem *__cdecl CMAudioFormatDescriptionGetRichestDecodableFormat(CMAudioFormatDescriptionRef desc)
{
  sizeOut = 0;
  FormatList = CMAudioFormatDescriptionGetFormatList(desc, &sizeOut);
  result = 0;
  v3 = 0;
  if (FormatList && sizeOut >= 0x30)
  {
    if (FigAudioFormatGetRichestDecodableFormatIndex(FormatList, sizeOut, &v3))
    {
      return 0;
    }

    else
    {
      return &FormatList[v3];
    }
  }

  return result;
}

const AudioFormatListItem *__cdecl CMAudioFormatDescriptionGetFormatList(CMAudioFormatDescriptionRef desc, size_t *sizeOut)
{
  if (!desc)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v18 = v2;
    v19 = 1426;
LABEL_8:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", v19, v18, v16, v17);
    result = 0;
LABEL_9:
    v14 = 0;
    if (!sizeOut)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (CMFormatDescriptionGetMediaType(desc) != 1936684398)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v18 = v2;
    v19 = 1431;
    goto LABEL_8;
  }

  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(desc, v5, v6, v7, v8, v9, v10, v11);
  result = *(DerivedStorage + 88);
  if (!result)
  {
    goto LABEL_9;
  }

  v14 = *(DerivedStorage + 80);
  if (sizeOut)
  {
LABEL_10:
    *sizeOut = v14;
  }

  return result;
}

uint64_t FigAudioFormatGetRichestDecodableFormatIndex(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = 0;
  if (!a1)
  {
    FigAudioFormatGetRichestDecodableFormatIndex_cold_4(&v7);
    return v7;
  }

  if (a2 <= 0x2F)
  {
    FigAudioFormatGetRichestDecodableFormatIndex_cold_3(&v7);
    return v7;
  }

  if (HIDWORD(a2))
  {
    FigAudioFormatGetRichestDecodableFormatIndex_cold_2(&v7);
    return v7;
  }

  if (!a3)
  {
    FigAudioFormatGetRichestDecodableFormatIndex_cold_1(&v7);
    return v7;
  }

  v5 = 4;
  result = AudioToolbox_AudioFormatGetProperty(1718642284, a2, a1, &v5, &v6);
  if (!result)
  {
    *a3 = v6;
  }

  return result;
}

const AudioFormatListItem *__cdecl CMAudioFormatDescriptionGetMostCompatibleFormat(CMAudioFormatDescriptionRef desc)
{
  sizeOut = 0;
  FormatList = CMAudioFormatDescriptionGetFormatList(desc, &sizeOut);
  result = 0;
  if (FormatList)
  {
    if (sizeOut >= 0x30)
    {
      return &FormatList[sizeOut / 0x30 - 1];
    }
  }

  return result;
}

OSStatus CMAudioFormatDescriptionCreateSummary(CFAllocatorRef allocator, CFArrayRef formatDescriptionArray, uint32_t flags, CMAudioFormatDescriptionRef *formatDescriptionOut)
{
  memset(&asbd.mFormatID, 0, 32);
  if (formatDescriptionOut)
  {
    *formatDescriptionOut = 0;
    if (formatDescriptionArray)
    {
      Count = CFArrayGetCount(formatDescriptionArray);
      if (Count)
      {
        v9 = Count;
        asbd.mSampleRate = 0.0;
        Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
        if (Mutable)
        {
          v11 = Mutable;
          v51 = 0;
          v52 = 0;
          CFDataIncreaseLength(Mutable, 12);
          if (v9 < 1)
          {
            v12 = 0;
            v14 = 0.0;
          }

          else
          {
            v12 = 0;
            v13 = 0;
            v14 = 0.0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(formatDescriptionArray, v13);
              if (ValueAtIndex)
              {
                v16 = ValueAtIndex;
                if (CMFormatDescriptionGetMediaType(ValueAtIndex) == 1936684398)
                {
                  *v53 = 0;
                  if (CMAudioFormatDescriptionGetMostCompatibleFormatAndChannelLayout(v16, v53, &v51, &v52))
                  {
                    v51 = 0;
                    v52 = 0;
                  }

                  else if (*v53)
                  {
                    if (v14 < **v53)
                    {
                      v14 = **v53;
                    }

                    if (v12 <= *(*v53 + 28))
                    {
                      v12 = *(*v53 + 28);
                    }

                    v17 = v52;
                    if (v52 && FigAudioChannelLayoutIsValid(v52, v51))
                    {
                      appendToSummaryChannelLayout(v11, v17);
                    }
                  }
                }
              }

              ++v13;
            }

            while (v9 != v13);
          }

          cleanUpSummaryAndGetChannelLayoutSize(v11);
          MutableBytePtr = CFDataGetMutableBytePtr(v11);
          if (!*MutableBytePtr)
          {
            v28 = MutableBytePtr;
            v29 = *(MutableBytePtr + 2);
            if (v29)
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = 0;
              v34 = (MutableBytePtr + 12);
              do
              {
                v36 = *v34;
                v34 += 5;
                v35 = v36;
                if ((v36 & 0xFFFF0000) == 0x10000)
                {
                  v37 = v33;
                }

                else
                {
                  v37 = 1;
                }

                if (v35 == 42)
                {
                  v37 = v33;
                  v38 = v30;
                }

                else
                {
                  v38 = v32;
                }

                if (v35 == 42)
                {
                  v39 = 1;
                }

                else
                {
                  v39 = v31;
                }

                if (v35 != 100)
                {
                  v33 = v37;
                  v32 = v38;
                  v31 = v39;
                }

                ++v30;
              }

              while (v29 != v30);
              if (v31 && v33)
              {
                v54 = 0;
                *&v53[4] = 0;
                v56 = 0;
                v55 = 0;
                v57.location = 20 * v32 + 12;
                v57.length = 20;
                CFDataDeleteBytes(v11, v57);
                --*(v28 + 2);
                *v53 = 6619138;
                appendToSummaryChannelLayout(v11, v53);
              }
            }
          }

          v27 = CFDataGetMutableBytePtr(v11);
          if (*v27)
          {
            if (*v27 != 0x10000 || *(v27 + 1) || v12 - 1 >= 2)
            {
              goto LABEL_57;
            }
          }

          else if (*(v27 + 2) || v12 - 1 > 1)
          {
            goto LABEL_57;
          }

          v54 = 0;
          *&v53[4] = 0;
          v56 = 0;
          v55 = 0;
          if (v12 == 1)
          {
            v40 = 6553601;
          }

          else
          {
            v40 = 6619138;
          }

          *v53 = v40;
          appendToSummaryChannelLayout(v11, v53);
LABEL_57:
          ChannelLayoutSize = cleanUpSummaryAndGetChannelLayoutSize(v11);
          if (ChannelLayoutSize < 0xC)
          {
            v47 = 0;
            v42 = 0;
          }

          else
          {
            v42 = ChannelLayoutSize;
            v43 = malloc_type_malloc(ChannelLayoutSize, 0xD330688AuLL);
            if (!v43)
            {
              emitter = fig_log_get_emitter("com.apple.coremedia", "");
              v22 = -12711;
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE59uLL, "<<<< AudioFormatDescription >>>>", 0x7EE, v4, v45, v46);
LABEL_60:
              CFRelease(v11);
              return v22;
            }

            v47 = v43;
            v48 = CFDataGetMutableBytePtr(v11);
            memcpy(v47, v48, v42);
          }

          asbd.mFormatID = 1819304813;
          asbd.mSampleRate = v14;
          AudioChannelCountFromLayout = FigGetAudioChannelCountFromLayout(v47, v42);
          asbd.mChannelsPerFrame = AudioChannelCountFromLayout;
          if (AudioChannelCountFromLayout)
          {
            v12 = AudioChannelCountFromLayout;
          }

          else
          {
            asbd.mChannelsPerFrame = v12;
            if (v47)
            {
              free(v47);
              v47 = 0;
              v42 = 0;
            }
          }

          asbd.mBitsPerChannel = 32;
          asbd.mFramesPerPacket = 1;
          asbd.mBytesPerFrame = 4 * v12;
          asbd.mFormatFlags = 9;
          asbd.mBytesPerPacket = 4 * v12;
          v22 = CMAudioFormatDescriptionCreate(allocator, &asbd, v42, v47, 0, 0, 0, formatDescriptionOut);
          if (v47)
          {
            free(v47);
          }

          goto LABEL_60;
        }

        v18 = fig_log_get_emitter("com.apple.coremedia", "");
        v21 = v4;
        v22 = -12711;
        v23 = 4294954585;
        v24 = 1972;
      }

      else
      {
        v18 = fig_log_get_emitter("com.apple.coremedia", "");
        v21 = v4;
        v22 = -12710;
        v23 = 4294954586;
        v24 = 1962;
      }
    }

    else
    {
      v18 = fig_log_get_emitter("com.apple.coremedia", "");
      v21 = v4;
      v22 = -12710;
      v23 = 4294954586;
      v24 = 1954;
    }
  }

  else
  {
    v18 = fig_log_get_emitter("com.apple.coremedia", "");
    v21 = v4;
    v22 = -12710;
    v23 = 4294954586;
    v24 = 1946;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v23, "<<<< AudioFormatDescription >>>>", v24, v21, v19, v20);
  return v22;
}

const AudioFormatListItem *FigAudioFormatDescriptionGetMostCompatibleFormatAndChannelLayout(const opaqueCMFormatDescription *a1, void *a2, void *a3)
{
  v6 = 0;
  if (!CMAudioFormatDescriptionGetMostCompatibleFormatAndChannelLayout(a1, &v6, a2, a3))
  {
    return v6;
  }

  if (a2)
  {
    *a2 = 0;
  }

  result = 0;
  if (a3)
  {
    *a3 = 0;
  }

  return result;
}

BOOL FigAudioChannelLayoutIsValid(_DWORD *a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2 >= 0xC)
  {
    ChannelCount = FigAudioChannelLayoutGetChannelCount(a1);
    v6 = a1[2];
    if (v6)
    {
      return ChannelCount == v6 && 20 * ChannelCount + 12 <= a2;
    }

    else
    {
      return ChannelCount != 0;
    }
  }

  return result;
}

void appendToSummaryChannelLayout(CFMutableDataRef theData, _DWORD *a2)
{
  v4 = *a2;
  if (*a2 && !a2[2])
  {
    LODWORD(size) = 0;
    if (v4 == 0x10000)
    {
      v16 = (a2 + 1);
      v17 = 1668116578;
    }

    else
    {
      v17 = 1668116588;
      v16 = a2;
    }

    if (AudioToolbox_AudioFormatGetPropertyInfo(v17, 4, v16, &size))
    {
      return;
    }

    if (!size)
    {
      return;
    }

    v18 = malloc_type_calloc(1uLL, size, 0x3B41BD73uLL);
    if (!v18)
    {
      return;
    }

    v5 = v18;
    if (*a2 == 0x10000)
    {
      v19 = (a2 + 1);
      v20 = 1668116578;
    }

    else
    {
      v20 = 1668116588;
      v19 = a2;
    }

    if (AudioToolbox_AudioFormatGetProperty(v20, 4, v19, &size, v5))
    {
LABEL_24:
      free(v5);
      return;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a2;
  }

  v7 = v6[2];
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    MutableBytePtr = 0;
    v11 = v6 + 3;
    do
    {
      if (!MutableBytePtr)
      {
        MutableBytePtr = CFDataGetMutableBytePtr(theData);
        v9 = *(MutableBytePtr + 2);
      }

      v12 = &v11[5 * v8];
      v13 = *v12;
      if (*v12)
      {
        if (v9)
        {
          v14 = (MutableBytePtr + 28);
          v15 = v9;
          while (LODWORD(v13) != *(v14 - 4) || LODWORD(v13) == 100 && (*(v12 + 1) != *(v14 - 3) || v12[2] != *(v14 - 2) || v12[3] != *(v14 - 1) || v12[4] != *v14))
          {
            v14 += 5;
            if (!--v15)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
LABEL_21:
          *MutableBytePtr = 0;
          ++*(MutableBytePtr + 2);
          CFDataAppendBytes(theData, v12, 20);
          MutableBytePtr = 0;
        }
      }

      ++v8;
    }

    while (v8 != v7);
  }

  if (v5)
  {
    goto LABEL_24;
  }
}

uint64_t cleanUpSummaryAndGetChannelLayoutSize(__CFData *a1)
{
  v20 = 0;
  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (*MutableBytePtr)
  {
    goto LABEL_2;
  }

  v4 = *(MutableBytePtr + 2);
  if (!v4)
  {
    goto LABEL_2;
  }

  if (*(MutableBytePtr + 3) == 42)
  {
    goto LABEL_16;
  }

  v6 = (MutableBytePtr + 32);
  v7 = 1;
  do
  {
    v8 = v7;
    if (v4 == v7)
    {
      break;
    }

    v9 = *v6;
    v6 += 5;
    ++v7;
  }

  while (v9 != 42);
  if (v8 < v4)
  {
LABEL_16:
    if (v4 != 1)
    {
LABEL_2:
      LODWORD(v4) = 1;
      goto LABEL_3;
    }
  }

  else if (v4 == 1)
  {
    goto LABEL_3;
  }

  v21 = 4;
  if (!AudioToolbox_AudioFormatGetProperty(1668116596, Length, MutableBytePtr, &v21, &v20))
  {
    goto LABEL_2;
  }

  v10 = *(MutableBytePtr + 2);
  if (v10)
  {
    v11 = (v10 - 1);
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = &MutableBytePtr[20 * i + 12];
        v14 = &MutableBytePtr[20 * v11 + 12];
        v15 = v11 - 1;
        do
        {
          if (*v14 < *v13)
          {
            v22 = *v13;
            v16 = v22;
            v23 = *(v13 + 16);
            v17 = v23;
            v18 = *(v14 + 16);
            *v13 = *v14;
            *(v13 + 16) = v18;
            *v14 = v16;
            *(v14 + 16) = v17;
          }

          v19 = i >= v15--;
          v14 -= 20;
        }

        while (!v19);
      }
    }
  }

  LODWORD(v4) = AudioToolbox_AudioFormatGetProperty(1668116596, Length, MutableBytePtr, &v21, &v20) == 0;
LABEL_3:
  if (v4 && v20)
  {
    *MutableBytePtr = v20;
  }

  return Length;
}

Boolean CMAudioFormatDescriptionEqual(CMAudioFormatDescriptionRef formatDescription, CMAudioFormatDescriptionRef otherFormatDescription, CMAudioFormatDescriptionMask equalityMask, CMAudioFormatDescriptionMask *equalityMaskOut)
{
  v66[2] = *MEMORY[0x1E69E9840];
  memset(v61, 0, sizeof(v61));
  memset(v60, 0, sizeof(v60));
  if (!formatDescription || !otherFormatDescription)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v34 = v4;
    v35 = 2097;
LABEL_13:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", v35, v34, v32, v33);
    v36 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  v7 = equalityMask;
  if (CMFormatDescriptionGetMediaType(formatDescription) != 1936684398 || CMFormatDescriptionGetMediaType(otherFormatDescription) != 1936684398)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v34 = v4;
    v35 = 2103;
    goto LABEL_13;
  }

  v16 = v7 & 0xF;
  if (formatDescription != otherFormatDescription)
  {
    v62 = 0;
    sizeOut = 0;
    DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(formatDescription, v9, v10, v11, v12, v13, v14, v15);
    v25 = FigDerivedFormatDescriptionGetDerivedStorage(otherFormatDescription, v18, v19, v20, v21, v22, v23, v24);
    if ((v7 & 5) != 0)
    {
      FormatList = CMAudioFormatDescriptionGetFormatList(formatDescription, &sizeOut);
      v27 = CMAudioFormatDescriptionGetFormatList(otherFormatDescription, &v62);
      v28 = v27;
      if (FormatList && sizeOut >= 0x30)
      {
        if (FormatList->mChannelLayoutTag)
        {
          LODWORD(v61[0]) = FormatList->mChannelLayoutTag;
          v29 = v61;
          v30 = 12;
        }

        else
        {
          v30 = *&DerivedStorage[1].mASBD.mFormatID;
          v29 = *&DerivedStorage[1].mASBD.mBytesPerPacket;
        }
      }

      else
      {
        v30 = *&DerivedStorage[1].mASBD.mFormatID;
        v29 = *&DerivedStorage[1].mASBD.mBytesPerPacket;
        FormatList = DerivedStorage;
      }

      if (v27 && v62 >= 0x30)
      {
        if (v27->mChannelLayoutTag)
        {
          LODWORD(v60[0]) = v27->mChannelLayoutTag;
          v39 = v60;
          v38 = 12;
          if (v7)
          {
LABEL_49:
            v48 = v38;
            v58 = v30;
            v59 = v39;
            v49 = v29;
            if (!memcmp(FormatList, v28, 0x24uLL))
            {
              v36 = 1;
              v29 = v49;
              v30 = v58;
              v39 = v59;
              v38 = v48;
            }

            else
            {
              if (!equalityMaskOut)
              {
                return 0;
              }

              v29 = v49;
              v38 = v48;
              v36 = 0;
              v16 = v7 & 0xE;
              v30 = v58;
              v39 = v59;
            }

LABEL_28:
            if ((v7 & 2) == 0)
            {
              goto LABEL_38;
            }

            v40 = *&DerivedStorage->mChannelLayoutTag;
            if (v40 == *&v25->mChannelLayoutTag && (mSampleRate = DerivedStorage[1].mASBD.mSampleRate, v42 = v25[1].mASBD.mSampleRate, (*&mSampleRate == 0) ^ (*&v42 != 0)))
            {
              if (!v40 || mSampleRate == 0.0)
              {
LABEL_38:
                if ((v7 & 4) == 0)
                {
                  goto LABEL_44;
                }

LABEL_39:
                v64 = 4;
                v65 = 0;
                if ((v38 == 0) != (v30 == 0))
                {
                  goto LABEL_42;
                }

                if (!(v30 | v38))
                {
                  goto LABEL_44;
                }

                if ((v39 == 0) != (v29 == 0))
                {
                  goto LABEL_42;
                }

                if (!(v39 | v29))
                {
                  goto LABEL_44;
                }

                if (v30 == v38)
                {
                  if (v39)
                  {
                    if (v29)
                    {
                      v50 = v29;
                      v51 = v38;
                      v52 = v39;
                      v53 = memcmp(v29, v39, v38);
                      v39 = v52;
                      v38 = v51;
                      v29 = v50;
                      if (!v53)
                      {
                        goto LABEL_44;
                      }
                    }
                  }
                }

                v54 = v39;
                v55 = v38;
                v56 = v29;
                if (isValidAudioChannelLayoutAndSize(v29, v30))
                {
                  if (isValidAudioChannelLayoutAndSize(v54, v55))
                  {
                    v66[0] = v56;
                    v66[1] = v54;
                    if (AudioToolbox_AudioFormatGetProperty(1667786097, 16, v66, &v64, &v65) || !v65)
                    {
LABEL_42:
                      if (equalityMaskOut)
                      {
                        v36 = 0;
                        v16 &= ~4u;
                        goto LABEL_44;
                      }

                      return 0;
                    }

LABEL_44:
                    if ((v7 & 8) != 0)
                    {
                      Extensions = CMFormatDescriptionGetExtensions(formatDescription);
                      v47 = CMFormatDescriptionGetExtensions(otherFormatDescription);
                      if (!FigFormatDescriptionExtensionsDictionariesEqualIgnoringKeys(Extensions, v47, 0, 0))
                      {
                        v36 = 0;
                        if (equalityMaskOut)
                        {
                          v16 &= ~8u;
                        }
                      }
                    }

                    goto LABEL_14;
                  }

                  v57 = 1900;
                }

                else
                {
                  v57 = 1895;
                }

                CMAudioFormatDescriptionEqual_cold_1(v57);
                goto LABEL_42;
              }

              v43 = v39;
              v44 = v38;
              v45 = v29;
              if (!memcmp(*&mSampleRate, *&v42, v40))
              {
                v29 = v45;
                v38 = v44;
                v39 = v43;
                if ((v7 & 4) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_39;
              }

              if (!equalityMaskOut)
              {
                return 0;
              }

              v29 = v45;
              v38 = v44;
              v39 = v43;
            }

            else if (!equalityMaskOut)
            {
              return 0;
            }

            v36 = 0;
            v16 &= ~2u;
            goto LABEL_38;
          }
        }

        else
        {
          v38 = *&v25[1].mASBD.mFormatID;
          v39 = *&v25[1].mASBD.mBytesPerPacket;
          if (v7)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v38 = *&v25[1].mASBD.mFormatID;
        v39 = *&v25[1].mASBD.mBytesPerPacket;
        v28 = v25;
        if (v7)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      v38 = 0;
      v30 = 0;
      v39 = 0;
      v29 = 0;
    }

    v36 = 1;
    goto LABEL_28;
  }

  v36 = 1;
LABEL_14:
  if (equalityMaskOut)
  {
    *equalityMaskOut = v16;
  }

  return v36;
}