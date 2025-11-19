void SyncMetadataValueQualifiersToTag(uint64_t a1, uint64_t a2)
{
  Source = CGImageSourceGetSource(a2);
  v4 = *(a1 + 48);
  if (v4 && CFArrayGetCount(v4) >= 1)
  {
    Count = CFArrayGetCount(*(a1 + 48));
    if (!*(Source + 56))
    {
      *(Source + 56) = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
    }

    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), i);
        if (CGImageMetadataValueIsAlternateText(a1))
        {
          v8 = CFGetTypeID(ValueAtIndex);
          if (v8 == CFStringGetTypeID())
          {
            v9 = CGImageMetadataTagCreate(@"http://www.w3.org/XML/1998/namespace", @"xml", @"lang", kCGImageMetadataTypeString, ValueAtIndex);
            if (v9)
            {
              v10 = v9;
              CFArrayAppendValue(*(Source + 56), v9);
              CFRelease(v10);
            }
          }
        }
      }
    }
  }
}

CFStringRef CreatePropertyValueFromTag(CGImageMetadataTag *a1)
{
  Source = CGImageSourceGetSource(a1);
  Mutable = 0;
  v3 = *(Source + 40);
  v4 = *(Source + 48);
  if (v3 > 2)
  {
    if ((v3 - 3) < 3)
    {
      Count = CFArrayGetCount(*(Source + 48));
      v6 = CFGetAllocator(v4);
      Mutable = CFArrayCreateMutable(v6, Count, MEMORY[0x1E695E9C0]);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
          if (ValueAtIndex)
          {
            v9 = ValueAtIndex;
            v10 = CFGetTypeID(ValueAtIndex);
            if (v10 == CGImageMetadataTagGetTypeID())
            {
              PropertyValueFromTag = CreatePropertyValueFromTag(v9);
              if (PropertyValueFromTag)
              {
                v12 = PropertyValueFromTag;
                v13 = CGImageMetadataValueCreate(PropertyValueFromTag);
                if (v13)
                {
                  v14 = v13;
                  SyncTagQualifiersToMetadataValue(v9, v13);
                  if (v3 == 4)
                  {
                    CGImageMetadataValueSetIsAlternate(v14, 1);
                  }

                  else if (v3 == 5)
                  {
                    CGImageMetadataValueSetIsAlternateText(v14, 1);
                  }

                  CFArrayAppendValue(Mutable, v14);
                  CFRelease(v14);
                }

                CFRelease(v12);
              }
            }
          }
        }
      }

      return Mutable;
    }

    if (v3 != 6)
    {
      return Mutable;
    }

    v25 = CFDictionaryGetCount(*(Source + 48));
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v26 = malloc_type_calloc(8uLL, v25, 0x6004044C4A2DFuLL);
    v27 = malloc_type_calloc(8uLL, v25, 0x2004093837F09uLL);
    v28 = v27;
    if (v26 && v27)
    {
      CFDictionaryGetKeysAndValues(v4, v26, v27);
      if (v25 >= 1)
      {
        v29 = v26;
        v30 = v28;
        do
        {
          v31 = *v30;
          if (*v30)
          {
            v32 = *v29;
            v33 = CFGetTypeID(*v30);
            if (v33 == CGImageMetadataTagGetTypeID())
            {
              v34 = CreatePropertyValueFromTag(v31);
              if (v34)
              {
                v35 = v34;
                v36 = CGImageMetadataValueCreate(v34);
                if (v36)
                {
                  v37 = v36;
                  Namespace = CGImageMetadataTagGetNamespace(v31);
                  CGImageMetadataValueSetNamespaceURI(v37, Namespace);
                  SyncTagQualifiersToMetadataValue(v31, v37);
                  CFDictionarySetValue(Mutable, v32, v37);
                  CFRelease(v37);
                }

                CFRelease(v35);
              }
            }
          }

          ++v30;
          ++v29;
          --v25;
        }

        while (v25);
      }
    }

    else if (!v26)
    {
      goto LABEL_47;
    }

    free(v26);
LABEL_47:
    if (v28)
    {
      free(v28);
    }

    return Mutable;
  }

  if (v3 != 1)
  {
    if (v3 == 2)
    {
      v15 = CFArrayGetCount(*(Source + 48));
      v16 = CFGetAllocator(v4);
      Mutable = CFBagCreateMutable(v16, v15, MEMORY[0x1E695E9D0]);
      if (v15 >= 1)
      {
        for (j = 0; j != v15; ++j)
        {
          v18 = CFArrayGetValueAtIndex(v4, j);
          if (v18)
          {
            v19 = v18;
            v20 = CFGetTypeID(v18);
            if (v20 == CGImageMetadataTagGetTypeID())
            {
              v21 = CreatePropertyValueFromTag(v19);
              if (v21)
              {
                v22 = v21;
                v23 = CGImageMetadataValueCreate(v21);
                if (v23)
                {
                  v24 = v23;
                  SyncTagQualifiersToMetadataValue(v19, v23);
                  CFBagAddValue(Mutable, v24);
                  CFRelease(v24);
                }

                CFRelease(v22);
              }
            }
          }
        }
      }
    }

    return Mutable;
  }

  v39 = CFGetAllocator(*(Source + 48));

  return CFStringCreateCopy(v39, v4);
}

void SyncTagQualifiersToMetadataValue(uint64_t a1, void *a2)
{
  Source = CGImageSourceGetSource(a1);
  if (a1)
  {
    v5 = Source;
    v6 = *(Source + 56);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v8 = Count;
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 56), i);
          if (ValueAtIndex)
          {
            v11 = CFGetTypeID(ValueAtIndex);
            if (v11 == CGImageMetadataTagGetTypeID())
            {
              v12 = CGImageSourceGetSource(a1);
              if (*(v12 + 40) == 1)
              {
                v13 = *(v12 + 48);
                v14 = CFGetTypeID(v13);
                if (v14 == CFStringGetTypeID())
                {
                  CGImageMetadataValueAddQualifier(a2, v13);
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t CGImageCreateColorSpaceFromExifOrData(const void *a1, const void *a2, void *a3)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImageCreateColorSpaceFromExifOrData", 0, 0, -1, 0);
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  IIOArray::IIOArray(&v8);
  if (a1)
  {
    IIOArray::addObject(&v8, a1);
  }

  if (a2)
  {
    IIOArray::addObject(&v8, a2);
  }

  if (IIOArray::getCount(&v8))
  {
    ColorSpaceFromDataArray = CGImageCreateColorSpaceFromDataArray(v9, a3);
  }

  else
  {
    ColorSpaceFromDataArray = 4294967246;
  }

  IIOArray::~IIOArray(&v8);
  return ColorSpaceFromDataArray;
}

void sub_1860695B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

uint64_t CGImageCreateColorSpaceFromDataArray(const void *a1, void *a2)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImageCreateColorSpaceFromDataArray", 0, 0, -1, 0);
  }

  if (!a1)
  {
    CGImageCreateColorSpaceFromDataArray_cold_3();
    goto LABEL_14;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFArrayGetTypeID())
  {
    CGImageCreateColorSpaceFromDataArray_cold_1();
    goto LABEL_14;
  }

  if (!a2)
  {
    CGImageCreateColorSpaceFromDataArray_cold_2();
    goto LABEL_14;
  }

  if (!CFArrayGetCount(a1))
  {
LABEL_14:
    v7 = 4294967246;
    goto LABEL_15;
  }

  memset(v14, 0, sizeof(v14));
  v5 = IIOArray::IIOArray(v14, a1);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __CGImageCreateColorSpaceFromDataArray_block_invoke;
  v9[3] = &unk_1E6F0B328;
  v9[4] = &v10;
  IIOArray::enumerate(v5, v9);
  v6 = v11[3];
  if (v6)
  {
    v7 = 0;
    *a2 = v6;
  }

  else
  {
    v7 = 4294967246;
  }

  _Block_object_dispose(&v10, 8);
  IIOArray::~IIOArray(v14);
LABEL_15:
  kdebug_trace();
  return v7;
}

void sub_186069770(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  IIOArray::~IIOArray((v6 - 56));
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186069740);
}

void __CGImageCreateColorSpaceFromDataArray_block_invoke(uint64_t a1, const __CFData *cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFDataGetTypeID()))
  {
    BytePtr = CFDataGetBytePtr(cf);
    Length = CFDataGetLength(cf);
    if (Length >= 0x11)
    {
      if (!strncmp(BytePtr, "Exif", 5uLL))
      {
        MetadataFromDatabuffer = CreateMetadataFromDatabuffer(BytePtr + 6, Length - 6);
        if (MetadataFromDatabuffer)
        {
          v8 = MetadataFromDatabuffer;
          CGColorSpaceRelease(*(*(*(a1 + 32) + 8) + 24));
          *(*(*(a1 + 32) + 8) + 24) = createColorSpaceFromMetadata(v8, 0, 0);

          CFRelease(v8);
        }
      }

      else if (Length >= 0x81 && !strncmp(BytePtr, "ICC_PROFILE", 0xCuLL))
      {
        CGColorSpaceRelease(*(*(*(a1 + 32) + 8) + 24));
        *(*(*(a1 + 32) + 8) + 24) = CGColorSpaceCreateWithCopyOfData(BytePtr + 14, Length - 14);
      }
    }
  }

  else
  {

    LogError("CGImageCreateColorSpaceFromDataArray_block_invoke", 796, "*** ERROR: dataArray does not contain CFData\n");
  }
}

void GPSCopy::~GPSCopy(GPSCopy *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    free(v3);
  }
}

uint64_t GPSCopy::read32(GPSCopy *this, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = (v2 << 24) | (v3 << 16) | (v4 << 8) | v5;
  v7 = v2 | (v3 << 8) | (v4 << 16) | (v5 << 24);
  if (*(this + 24) == 1)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t GPSCopy::adjustIFDOffsets(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (a3 >= 1)
  {
    v4 = *(result + 24);
    v5 = (a2 + 8);
    do
    {
      v6 = bswap32(*(v5 - 4)) >> 16;
      if (v4)
      {
        LOWORD(v6) = *(v5 - 4);
      }

      v7 = bswap32(*(v5 - 3)) >> 16;
      if (v4)
      {
        LOWORD(v7) = *(v5 - 3);
      }

      v8 = *v5;
      v9 = bswap32(*v5);
      if (!v4)
      {
        v8 = v9;
      }

      v10 = v7 - 1;
      result = v10;
      if (v10 > 0xBu || ((LODWORD(result) = *(v5 - 1), v11 = bswap32(result), !v4) ? (result = v11) : (result = result), result * dword_1862249A4[v10] <= 4))
      {
        if (v6 > 0x8824u)
        {
          if (v6 != 40965 && v6 != 34853)
          {
            goto LABEL_28;
          }
        }

        else if (v6 != 513 && v6 != 34665)
        {
          goto LABEL_28;
        }
      }

      v14 = v8 + a4;
      v15 = bswap32(v14);
      if (!v4)
      {
        v14 = v15;
      }

      *v5 = v14;
LABEL_28:
      v5 += 3;
      --a3;
    }

    while (a3);
  }

  return result;
}

uint64_t GPSCopy::readInputFile(GPSCopy *this, CFStringRef string)
{
  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(string);
  v5 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
  memset(&v11, 0, sizeof(v11));
  if (CFStringGetFileSystemRepresentation(string, v5, MaximumSizeOfFileSystemRepresentation))
  {
    if (stat(v5, &v11))
    {
      v6 = 0;
LABEL_4:
      v7 = 1;
      goto LABEL_6;
    }

    v6 = fopen(v5, "r");
    if (!v6)
    {
      goto LABEL_4;
    }

    st_size = v11.st_size;
    *(this + 5) = v11.st_size;
    if (st_size)
    {
      v10 = malloc_type_malloc(st_size, 0x8ABD87B2uLL);
      *(this + 4) = v10;
      if (v10)
      {
        v7 = 1;
        fread(v10, *(this + 5), 1uLL, v6);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
      *(this + 4) = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

LABEL_6:
  if (v5)
  {
    free(v5);
  }

  if (v6)
  {
    fclose(v6);
  }

  return v7;
}

BOOL GPSCopy::writeOutputFile(GPSCopy *this, CFStringRef string)
{
  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(string);
  v5 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x100004077774924uLL);
  FileSystemRepresentation = CFStringGetFileSystemRepresentation(string, v5, MaximumSizeOfFileSystemRepresentation);
  if (FileSystemRepresentation)
  {
    v7 = fopen(v5, "w");
    if (v7)
    {
      fwrite(*(this + 4), *(this + 6), 1uLL, v7);
    }

    if (v5)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = 0;
    if (v5)
    {
LABEL_5:
      free(v5);
    }
  }

  if (v7)
  {
    fclose(v7);
  }

  return FileSystemRepresentation != 0;
}

uint64_t GPSCopy::processData(GPSCopy *this)
{
  v1 = *(this + 4);
  v2 = *(this + 24);
  v3 = *v1;
  v4 = bswap32(v3) >> 16;
  if (!*(this + 24))
  {
    LOWORD(v3) = v4;
  }

  if (v3 != 65496)
  {
    return 0;
  }

  v5 = v1[1];
  v6 = bswap32(v5) >> 16;
  if (!*(this + 24))
  {
    LOWORD(v5) = v6;
  }

  if (v5 != 65505)
  {
    return 0;
  }

  v8 = bswap32(v1[2]) >> 16;
  if (*(this + 24))
  {
    v9 = v1[2];
  }

  else
  {
    v9 = v8;
  }

  v10 = v1[6];
  v11 = bswap32(v10) >> 16;
  if (!*(this + 24))
  {
    LOWORD(v10) = v11;
  }

  if (v10 != 19789)
  {
    if (v10 != 18761)
    {
      return 0;
    }

    v2 = 1;
    *(this + 24) = 1;
  }

  *(this + 7) = CreateGPSBufferFromPropertiesTIFFNew(*(this + 2), 0, 0, 0, v2, this + 8);
  v12 = (*(this + 8) & 1) + *(this + 8);
  v13 = reallocf(*(this + 4), v12 + *(this + 5) + 12);
  *(this + 4) = v13;
  v14 = GPSCopy::read32(this, v13 + 16);
  v15 = &v13[v14];
  v16 = *(this + 24);
  v17 = *(v15 + 6);
  v18 = bswap32(v17) >> 16;
  if (!*(this + 24))
  {
    v17 = v18;
  }

  if (!v17)
  {
    return 0;
  }

  v19 = 0;
  v20 = v14;
  v21 = 12 * v17;
  while (1)
  {
    v22 = *&v15[v19 + 14];
    v23 = bswap32(v22) >> 16;
    if (!*(this + 24))
    {
      LOWORD(v22) = v23;
    }

    if (v22 != 34665)
    {
      break;
    }

    if (v21 - 12 == v19)
    {
      v28 = &v15[v19];
      LODWORD(v29) = *&v15[v19 + 22];
      v30 = bswap32(v29);
      if (*(this + 24))
      {
        v29 = v29;
      }

      else
      {
        v29 = v30;
      }

      v31 = &v13[v29];
      v32 = v17 + 1;
      v33 = bswap32(v17 + 1) >> 16;
      if (*(this + 24))
      {
        v34 = v17 + 1;
      }

      else
      {
        v34 = v33;
      }

      *(v15 + 6) = v34;
      GPSCopy::adjustIFDOffsets(this, (v15 + 14), v32, 12);
      v35 = bswap32(*(v31 + 6)) >> 16;
      if (*(this + 24))
      {
        v36 = *(v31 + 6);
      }

      else
      {
        v36 = v35;
      }

      GPSCopy::adjustIFDOffsets(this, (v31 + 14), v36, 12);
      v37 = GPSCopy::read32(this, v28 + 26) + 12;
      v38 = *(this + 7);
      v41 = *v38;
      v39 = (v38 + 1);
      v40 = v41;
      v42 = bswap32(v41) >> 16;
      if (*(this + 24))
      {
        v43 = v40;
      }

      else
      {
        v43 = v42;
      }

      GPSCopy::adjustIFDOffsets(this, v39, v43, v37);
      v44 = *(this + 4);
      v45 = *(this + 5);
      memmove(v28 + 38, v28 + 26, v44 + v45 - &v13[v20] - v19 - 26);
      v46 = *(this + 24) == 0;
      *(this + 5) = v45 + 12;
      if (v46)
      {
        v47 = 9608;
      }

      else
      {
        v47 = -30683;
      }

      if (v46)
      {
        v48 = 1024;
      }

      else
      {
        v48 = 4;
      }

      if (v46)
      {
        v49 = 0x1000000;
      }

      else
      {
        v49 = 1;
      }

      v50 = bswap32(v37);
      if (!v46)
      {
        v50 = v37;
      }

      *(v28 + 13) = v47;
      *(v28 + 14) = v48;
      *(v28 + 30) = v49;
      *(v28 + 34) = v50;
      v51 = v37 + v12;
      v52 = bswap32(v37 + v12);
      if (v46)
      {
        v51 = v52;
      }

      *(v28 + 38) = v51;
      memmove((v44 + v37 + 12 + v12), (v44 + v37 + 12), v45 - v37);
      memcpy((v44 + v37 + 12), *(this + 7), *(this + 8));
      v53 = *(this + 4);
      *(this + 6) = *(this + 5) + v12;
      v54 = v53 + v12 + v37;
      v55 = bswap32(*(v54 + 12)) >> 16;
      if (*(this + 24))
      {
        v56 = *(v54 + 12);
      }

      else
      {
        v56 = v55;
      }

      GPSCopy::adjustIFDOffsets(this, v54 + 14, v56, v12 + 12);
      *(*(this + 4) + 4) = bswap32(v12 + 12 + v9) >> 16;
      return 1;
    }

LABEL_25:
    v19 += 12;
    if (v21 == v19)
    {
      return 0;
    }
  }

  if (v22 != 34853)
  {
    goto LABEL_25;
  }

  v24 = &v15[v19];
  v25 = bswap32(*(v24 + 22));
  if (*(this + 24))
  {
    v26 = *(v24 + 22);
  }

  else
  {
    v26 = v25;
  }

  if (v12 < GPSCopy::read32(this, v24 + 26) - v26)
  {
    LogError("processData", 379, "GPS info is already present...\n");
    return 0;
  }

  v57 = &v13[v26];
  v58 = *(this + 7);
  v61 = *v58;
  v59 = (v58 + 1);
  v60 = v61;
  v62 = bswap32(v61) >> 16;
  if (!v16)
  {
    v60 = v62;
  }

  GPSCopy::adjustIFDOffsets(this, v59, v60, v26);
  memcpy(v57 + 12, *(this + 7), *(this + 8));
  *(this + 6) = *(this + 5);
  return 1;
}

BOOL GPSCopy::copyFileWithGPSInformation(const __CFString **this)
{
  if (!GPSCopy::readInputFile(this, *this) || !GPSCopy::processData(this))
  {
    return 0;
  }

  v2 = this[1];
  if (!v2)
  {
    v2 = *this;
  }

  return GPSCopy::writeOutputFile(this, v2);
}

uint64_t CGImageCopyFileWithGPSInformation(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCopyFileWithGPSInformation", 0, 0, -1, a3);
  }

  if (a1)
  {
    memset(v6, 0, sizeof(v6));
    IIODictionary::IIODictionary(v6, a3);
    operator new();
  }

  kdebug_trace();
  return 0;
}

void sub_18606A1D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIO_Reader_KTX::~IIO_Reader_KTX(IIO_Reader_KTX *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_KTX::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

uint64_t IIO_Reader_KTX::updateSourceProperties(IIO_Reader_KTX *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  v30 = 0u;
  IIOScanner::IIOScanner(&v30, a2);
  v36 = 0u;
  v37 = 0u;
  v7 = 4294967246;
  memset(__dst, 0, sizeof(__dst));
  if (IIOScanner::getBytesAtOffset(&v30, __dst, 0, 0x40uLL) == 64)
  {
    SwapKTXHeader(__dst);
    v7 = ValidateKTXHeader(__dst, v31, v8);
    if (!v7)
    {
      IIOScanner::setEndianness(&v30, __dst[0].i32[3] == 67305985);
      if (DWORD1(v37) == 1)
      {
        v9 = v37;
      }

      else
      {
        v9 = 1;
      }

      if (v37)
      {
        v10 = v9;
      }

      else
      {
        v10 = DWORD1(v37);
      }

      IIONumber::IIONumber(&v27, v10);
      IIODictionary::setObjectForKeyGroup(a3, v29, "ImageCount", "{FilesContents}");
      IIONumber::~IIONumber(&v27);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      IIODictionary::IIODictionary(&v27);
      IIONumber::IIONumber(&v24, SDWORD1(v36));
      IIODictionary::setObjectForKey(&v27, v26, "Width");
      IIONumber::~IIONumber(&v24);
      IIONumber::IIONumber(&v24, SDWORD2(v36));
      IIODictionary::setObjectForKey(&v27, v26, "Height");
      IIONumber::~IIONumber(&v24);
      v24 = 0;
      v25 = 0;
      v26 = 0;
      IIOArray::IIOArray(&v24);
      for (; v10; --v10)
      {
        IIOArray::addObject(&v24, v28);
      }

      IIODictionary::setObjectForKeyGroup(a3, v25, "Images", "{FilesContents}");
      v11 = DWORD2(v37);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      IIOArray::IIOArray(&v21);
      if (v11)
      {
        v13 = DWORD1(v36);
        v12 = DWORD2(v36);
        v14 = v11;
        do
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          IIODictionary::IIODictionary(&v18);
          IIONumber::IIONumber(v16, v13);
          IIODictionary::setObjectForKey(&v18, v17, "Width");
          IIONumber::~IIONumber(v16);
          IIONumber::IIONumber(v16, v12);
          IIODictionary::setObjectForKey(&v18, v17, "Height");
          IIONumber::~IIONumber(v16);
          IIOArray::addObject(&v21, v19);
          IIODictionary::~IIODictionary(&v18);
          if (v13 < 2)
          {
            break;
          }

          if (v12 <= 1)
          {
            break;
          }

          v12 >>= 1;
          v13 >>= 1;
          --v14;
        }

        while (v14);
      }

      IIONumber::IIONumber(&v18, v11);
      IIODictionary::setObjectForKeyGroup(a3, v20, "MipMapCount", "{MipMapInfo}");
      IIONumber::~IIONumber(&v18);
      IIODictionary::setObjectForKeyGroup(a3, v22, "MipMaps", "{MipMapInfo}");
      IIOArray::~IIOArray(&v21);
      IIOArray::~IIOArray(&v24);
      IIODictionary::~IIODictionary(&v27);
      v7 = 0;
    }
  }

  IIOScanner::~IIOScanner(&v30);
  return v7;
}

void sub_18606A648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    IIOArray::~IIOArray(&a16);
    IIOArray::~IIOArray(&a19);
    IIODictionary::~IIODictionary(&a22);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x18606A604);
  }

  _Unwind_Resume(exception_object);
}

void sub_18606A748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  IIOScanner::~IIOScanner(va);
  JUMPOUT(0x18606A6C0);
}

uint64_t IIO_Reader_KTX::getImageCount(IIO_Reader_KTX *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  IIOScanner::IIOScanner(&v13, a2);
  v7 = v14;
  v19 = 0u;
  memset(__dst, 0, sizeof(__dst));
  if (IIOScanner::getBytesAtOffset(&v13, __dst, 0, 0x40uLL) != 64)
  {
    v9 = 4294967246;
    v10 = 1;
    goto LABEL_13;
  }

  memset(v12, 0, sizeof(v12));
  if (!(*(*this + 16))(this, __dst, 64, 0, v12))
  {
    goto LABEL_12;
  }

  SwapKTXHeader(__dst);
  v9 = ValidateKTXHeader(__dst, v14, v8);
  if (v9)
  {
    v10 = 0;
    goto LABEL_13;
  }

  if (HIDWORD(v19) > v7)
  {
    _cg_jpeg_mem_term("getImageCount", 164, "*** invalid KTX file: bytesOfKeyValueData: %d (fileSize: %d)\n", HIDWORD(v19), v7);
LABEL_12:
    v10 = 0;
    v9 = 4294967246;
    goto LABEL_13;
  }

  v10 = DWORD1(v19);
  v9 = 0;
  if (v19)
  {
    if (DWORD1(v19) == 1)
    {
      v10 = v19;
    }

    else
    {
      v10 = 1;
    }
  }

LABEL_13:
  if (a5)
  {
    *a5 = v10;
  }

  IIOScanner::~IIOScanner(&v13);
  return v9;
}

void ATXWritePlugin::~ATXWritePlugin(ATXWritePlugin *this, uint64_t a2, const char *a3)
{
  *this = &unk_1EF4DAC08;
  v4 = *(this + 9);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  CommonASTCWritePlugin::~CommonASTCWritePlugin(this, a2, a3);
}

{
  ATXWritePlugin::~ATXWritePlugin(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t ATXWritePlugin::updateHeader(uint64_t a1, IIOImageSource *a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 56))(a1, a3);
  if (gUseATXForKTX == 1)
  {
    *(a1 + 57) = 256;
  }

  *a4 = 1;
  *(a1 + 64) = IIOImageSource::count(a2);
  *(a1 + 68) = IIO_Reader::testHeaderSize(a2);
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(a2);
  *(a4 + 24) = *(a1 + 64);
  *(a4 + 32) = 1;
  *(a4 + 4) = 0;
  *(a4 + 8) = 0;
  v8 = *(a1 + 44);
  if (v8 == 68)
  {
    v9 = 37808;
  }

  else
  {
    if (v8 != 136)
    {
      goto LABEL_8;
    }

    v9 = 37815;
  }

  *(a4 + 16) = v9;
LABEL_8:
  SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(a2);
  result = IIO_CGColorSpaceNameMatchesName(SourceGeomColorSpace, *MEMORY[0x1E695F0B8]);
  if (result)
  {
    v12 = 3;
  }

  else
  {
    result = IIO_CGColorSpaceNameMatchesName(SourceGeomColorSpace, *MEMORY[0x1E695F110]);
    if (result)
    {
      v12 = 4;
    }

    else
    {
      result = IIO_CGColorSpaceNameMatchesName(SourceGeomColorSpace, *MEMORY[0x1E695F0A0]);
      if (result)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }
    }
  }

  *(a4 + 20) = 6408;
  *(a4 + 36) = 0x100000000;
  v13 = *(a1 + 58);
  *(a4 + 44) = 1;
  *(a4 + 48) = v13;
  *(a4 + 52) = *(a1 + 57);
  *(a4 + 56) = 1;
  if (v13)
  {
    ATXWritePlugin::createASTCTwiddler(a1);
    result = ASTCTwiddler::getWatermark(*(a1 + 72), (a4 + 60));
  }

  else
  {
    memset((a4 + 60), 85, 16);
  }

  *(a4 + 76) = v12;
  *(a4 + 80) = AlphaInfo;
  return result;
}

uint64_t ATXWritePlugin::createASTCTwiddler(uint64_t this)
{
  if (!*(this + 72))
  {
    v1 = *(this + 44);
    if (v1 == 136)
    {
      v2 = 37815;
    }

    else
    {
      v2 = 0;
    }

    if (v1 == 68)
    {
      v3 = 37808;
    }

    else
    {
      v3 = v2;
    }

    ASTCTextureImp::MetalFormatForGLFormat(v3);
    operator new();
  }

  return this;
}

uint64_t ATXWritePlugin::writeASTCData(ATXWritePlugin *this, IIOImageWriteSession *a2, IIOImagePixelDataProvider *a3, IIODictionary *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(a3);
  BitmapInfo = IIOImagePixelDataProvider::getBitmapInfo(a3);
  if (AlphaInfo >= 7)
  {
    _cg_jpeg_mem_term("writeASTCData", 225, "### alpha not handled: %X\n", AlphaInfo);
    v9 = at_alpha_opaque;
  }

  else
  {
    v9 = dword_186224A5C[AlphaInfo];
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    v10 = IIO_AlphaInfoString(AlphaInfo);
    ImageIOLog("    writeASTCData: alpha = %s\n", v10);
  }

  v11 = *(this + 11);
  if (v11 == 68)
  {
    v12 = 4;
  }

  else
  {
    if (v11 == 136)
    {
      v12 = 8;
      v13 = at_block_format_astc_8x8_ldr;
      goto LABEL_12;
    }

    LogError("writeASTCData", 252, "blockSize: '%02X' not yet supported - falling back to '44'\n", *(this + 11));
    *(this + 44) = 0x400000044;
    v12 = 4;
    *(this + 13) = 4;
  }

  v13 = at_block_format_astc_4x4_ldr;
LABEL_12:
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    writeASTCData: blockSize = %dx%d\n", v12, v12);
  }

  SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(a3);
  Model = CGColorSpaceGetModel(SourceGeomColorSpace);
  Error = _cg_GifLastError(a3);
  if (Model == kCGColorSpaceModelRGB)
  {
    v18 = 10;
    if ((BitmapInfo & 0x100) == 0)
    {
      v18 = 7;
    }

    if (Error == 16)
    {
      v17 = v18;
    }

    else
    {
      v17 = at_texel_format_rgba8_unorm;
    }
  }

  else if (Model)
  {
    v17 = at_texel_format_invalid;
  }

  else if (Error == 16)
  {
    if (AlphaInfo)
    {
      v17 = at_texel_format_la16_unorm;
    }

    else
    {
      v17 = at_texel_format_l16_unorm;
    }
  }

  else if (AlphaInfo)
  {
    v17 = at_texel_format_la8_unorm;
  }

  else
  {
    v17 = at_texel_format_l8_unorm;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    writeASTCData: bpc = %d\n", Error);
  }

  v45 = 0;
  v19 = at_encoder_create(v17, v9, v13, v9, 0);
  if (!v19)
  {
    return 4294967246;
  }

  v20 = v19;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    writeASTCData: astcEncoder = %p\n", v19);
  }

  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(a3);
  v22 = BytesPerRow * *(this + 17);
  v23 = malloc_type_malloc(v22, 0x100004077774924uLL);
  if (!v23)
  {
    CFRelease(v20);
    return 4294967246;
  }

  v24 = v23;
  if (IIOImagePixelDataProvider::getBytes(a3, v23) != v22)
  {
    LogError("writeASTCData", 330, "*** ERROR: failed to read %ld bytes\n", v22);
    CFRelease(v20);
    free(v24);
    return 4294967185;
  }

  src.texels = v24;
  *&src.validSize.x = *(this + 8);
  *(&src.validSize + 3) = 0;
  src.rowBytes = BytesPerRow;
  src.validSize.z = 1;
  src.sliceBytes = 0;
  *&v49.x = *&src.validSize.x;
  v49.z = 1;
  block_counts = at_encoder_get_block_counts(v20, v49);
  v26 = block_counts;
  v27 = HIDWORD(block_counts);
  block_size = at_encoder_get_block_size(v20);
  v29 = v27 * v26 * block_size;
  dest.rowBytes = v26 * block_size;
  dest.sliceBytes = v29;
  v30 = malloc_type_calloc(v29, 1uLL, 0x100004077774924uLL);
  v31 = v30;
  if (!v30)
  {
    goto LABEL_46;
  }

  dest.blocks = v30;
  v32 = 16;
  if (!*(this + 60))
  {
    v32 = 0;
  }

  if (*(this + 61))
  {
    v33 = v32 | 0x40;
  }

  else
  {
    v33 = v32;
  }

  v34 = at_encoder_compress_texels(v20, &src, &dest, *(this + 10), v33);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    writeASTCData: at_encoder_compress_texels = %g\n", v34);
  }

  if (v34 >= 0.0)
  {
    __nitems = 0;
    v47 = 0;
    __ptr = 0;
    if (*(this + 58))
    {
      ATXWritePlugin::createASTCTwiddler(this);
      ASTCTwiddler::copyFromLinearData(*(this + 9), v31, 0, v29, dest.rowBytes, 0);
      ASTCTwiddler::finalizeTwiddling(*(this + 9));
      v36 = ASTCTwiddler::twiddledData(*(this + 9));
      v37 = ASTCTwiddler::twiddledDataSize(*(this + 9));
      *(this + 57) = 0;
      HIDWORD(__ptr) = 1668576097;
      if (v36)
      {
        v38 = v37;
        LODWORD(__ptr) = v37 + 4;
        v47 = v37;
        if (IIOImageWriteSession::putBytes(a2, &__ptr, 0xCuLL) != 12)
        {
          ATXWritePlugin::writeASTCData();
          goto LABEL_46;
        }

        if (IIOImageWriteSession::putBytes(a2, v36, v38) != v38)
        {
          ATXWritePlugin::writeASTCData();
          goto LABEL_46;
        }

LABEL_61:
        v35 = 0;
        goto LABEL_62;
      }
    }

    else if (*(this + 57))
    {
      v39 = IIOWritePlugin::createLZFSECompressedData(this, v31, v29, &v45, &__nitems);
      HIDWORD(__ptr) = 1397119564;
      if (v39)
      {
        LODWORD(__ptr) = __nitems + 4;
        v47 = __nitems;
        if (IIOImageWriteSession::putBytes(a2, &__ptr, 0xCuLL) != 12)
        {
          ATXWritePlugin::writeASTCData();
          goto LABEL_46;
        }

        v40 = IIOImageWriteSession::putBytes(a2, v45, __nitems);
        if (v40 != __nitems)
        {
          ATXWritePlugin::writeASTCData();
          goto LABEL_46;
        }

        goto LABEL_61;
      }
    }

    else
    {
      HIDWORD(__ptr) = 1129599809;
    }

    LODWORD(__ptr) = v29 + 4;
    v47 = v29;
    if (IIOImageWriteSession::putBytes(a2, &__ptr, 0xCuLL) != 12)
    {
      ATXWritePlugin::writeASTCData();
      goto LABEL_46;
    }

    if (IIOImageWriteSession::putBytes(a2, v31, v29) != v29)
    {
      ATXWritePlugin::writeASTCData();
      goto LABEL_46;
    }

    goto LABEL_61;
  }

  LogError("writeASTCData", 377, "at_encoder_compress_texels - %g (%ld)\n", v34, v34);
LABEL_46:
  v35 = 4294967246;
LABEL_62:
  if (v45)
  {
    free(v45);
  }

  CFRelease(v20);
  if (v31)
  {
    free(v31);
  }

  free(v24);
  return v35;
}

uint64_t ATXWritePlugin::convertAndWrite420fData(ATXWritePlugin *this, IIOImagePixelDataProvider *a2, unsigned __int8 *a3, unsigned int a4, char a5, double a6, double a7)
{
  v39 = *MEMORY[0x1E69E9840];
  *permuteMap = 33619971;
  memset(v33, 0, sizeof(v33));
  v31 = 0u;
  v32 = 0u;
  LODWORD(a7) = *(this + 17);
  v11 = IIO_FillGeometry420(875704422, 0x10u, &v31, *(this + 16), *&a7, 16.0, 16.0);
  if (v11)
  {
    _cg_jpeg_mem_term("convertAndWrite420fData", 532, "*** ERROR: bad input for creating '420f' data (%dx%d)\n");
    return v11;
  }

  v12 = DWORD1(v32) * v31.f64[1];
  if ((v12 & 0xFFFFFFFF00000000) != 0 || !v12)
  {
    _cg_jpeg_mem_term("convertAndWrite420fData", 535, "*** ERROR: convertAndWrite420fData unsupported lumaSize (%d)\n");
    return v11;
  }

  v13 = LODWORD(v33[1].f64[1]) * v33[1].f64[0];
  if ((v13 & 0xFFFFFFFF00000000) != 0 || !v13)
  {
    _cg_jpeg_mem_term("convertAndWrite420fData", 538, "*** ERROR: convertAndWrite420fData unsupported chromaSize (%d)\n");
    return v11;
  }

  v14 = a5;
  v15 = malloc_type_malloc(v12, 0x100004077774924uLL);
  v16 = malloc_type_malloc(v13, 0x100004077774924uLL);
  v17 = v16;
  if (v15)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v20 = *(this + 16);
    v19 = *(this + 17);
    src.data = a3;
    src.height = v19;
    src.width = v20;
    src.rowBytes = a4;
    destYp.data = v15;
    destYp.height = v19;
    destYp.width = v20;
    destYp.rowBytes = DWORD1(v32);
    destCbCr.data = v16;
    v21 = vcvtq_u64_f64(*(v33 + 8));
    *&destCbCr.height = vextq_s8(v21, v21, 8uLL);
    destCbCr.rowBytes = LODWORD(v33[1].f64[1]);
    if (ATXWritePlugin::convertAndWrite420fData(IIOImagePixelDataProvider *,unsigned char *,unsigned int,BOOL)::ARGBToYpCbCrCreate != -1)
    {
      ATXWritePlugin::convertAndWrite420fData();
    }

    v22 = vImageConvert_ARGB8888To420Yp8_CbCr8(&src, &destYp, &destCbCr, &ATXWritePlugin::convertAndWrite420fData(IIOImagePixelDataProvider *,unsigned char *,unsigned int,BOOL)::conversion, permuteMap, 0x10u);
    if (v22)
    {
      v23 = v22;
      v24 = IIO_vImageErrorString(v22);
      _cg_jpeg_mem_term("convertAndWrite420fData", 574, "*** ERROR: vImageConvert_ARGB8888To420Yp8_CbCr8 returned %ld (%s)\n", v23, v24);
    }

    else if (v14)
    {
      v26 = 0;
      v27 = 0;
      *&__ptr[4] = 0x616D756C5A303234;
      v36 = vmovn_s64(vcvtq_u64_f64(v31));
      v37 = DWORD1(v32);
      LODWORD(v38) = 1397119564;
      IIOWritePlugin::createLZFSECompressedData(this, destYp.data, v12, &v27, &v26);
      *__ptr = v26 + 24;
      HIDWORD(v38) = v26;
      IIOImageWriteSession::putBytes(*(this + 2), __ptr, 0x20uLL);
      IIOImageWriteSession::putBytes(*(this + 2), v27, v26);
      free(v27);
      ATXWritePlugin::writeFiller(this, 0x40u, 0x20u);
      *__ptr = 0x5A30323400000000;
      v36 = vmovn_s64(vcvtq_u64_f64(*(v33 + 8)));
      *&__ptr[8] = 1836214371;
      v37 = LODWORD(v33[1].f64[1]);
      v38 = 1397119564;
      IIOWritePlugin::createLZFSECompressedData(this, destCbCr.data, v13, &v27, &v26);
      *__ptr = v26 + 24;
      HIDWORD(v38) = v26;
      IIOImageWriteSession::putBytes(*(this + 2), __ptr, 0x20uLL);
      IIOImageWriteSession::putBytes(*(this + 2), v27, v26);
      free(v27);
    }

    else
    {
      *&__ptr[4] = 0x414D554C66303234;
      v36 = vmovn_s64(vcvtq_u64_f64(v31));
      *__ptr = v12 + 16;
      v37 = DWORD1(v32);
      IIOImageWriteSession::putBytes(*(this + 2), __ptr, 0x18uLL);
      IIOImageWriteSession::putBytes(*(this + 2), destYp.data, v12);
      ATXWritePlugin::writeFiller(this, 0x100u, 0x18u);
      *&__ptr[4] = 0x4D52484366303234;
      v36 = vmovn_s64(vcvtq_u64_f64(*(v33 + 8)));
      *__ptr = v13 + 16;
      v37 = LODWORD(v33[1].f64[1]);
      IIOImageWriteSession::putBytes(*(this + 2), __ptr, 0x18uLL);
      IIOImageWriteSession::putBytes(*(this + 2), destCbCr.data, v13);
    }

    goto LABEL_20;
  }

  if (v15)
  {
LABEL_20:
    free(v15);
  }

  v11 = 0;
  if (v17)
  {
    free(v17);
  }

  return v11;
}

__n128 ___ZN14ATXWritePlugin23convertAndWrite420fDataEP25IIOImagePixelDataProviderPhjb_block_invoke()
{
  pixelRange = *ymmword_186224A28;
  v0 = vImageConvert_ARGBToYpCbCr_GenerateConversion(*MEMORY[0x1E6958830], &pixelRange, &ATXWritePlugin::convertAndWrite420fData(IIOImagePixelDataProvider *,unsigned char *,unsigned int,BOOL)::conversion, kvImageARGB8888, kvImage420Yp8_CbCr8, 0);
  if (v0)
  {
    v2 = v0;
    v3 = IIO_vImageErrorString(v0);
    return _cg_jpeg_mem_term("convertAndWrite420fData_block_invoke", 567, "*** ERROR: vImageConvert_ARGBToYpCbCr_GenerateConversion returned %ld (%s)\n", v2, v3);
  }

  return result;
}

uint64_t ATXWritePlugin::writeFiller(IIOImageWriteSession **this, unsigned int a2, unsigned int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 <= a3)
  {
    return 0;
  }

  Position = IIOImageWriteSession::getPosition(this[2]);
  v7 = Position + a2 - 1 - ((Position + a2 - 1) % a2 + a3);
  do
  {
    v8 = v7;
    v9 = v7 - 8;
    v7 += a2;
  }

  while (v9 < Position);
  v10 = v8 - Position - 8;
  if (v10 > a2)
  {
    LogError("writeFiller", 705, "    bad fillSize: %d   alignment: %d   prefix: %d\n", v10, a2, a3);
  }

  __ptr[0] = v10;
  __ptr[1] = 1280067910;
  IIOImageWriteSession::putBytes(this[2], __ptr, 8uLL);
  v11 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
  v12 = IIOImageWriteSession::putBytes(this[2], v11, v10);
  free(v11);
  if (v10 == v12)
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t ATXWritePlugin::write420fData(IIOImageWriteSession **this, IIOImagePixelDataProvider *a2, IIODictionary *a3, char a4)
{
  v53 = *MEMORY[0x1E69E9840];
  Ref = IIOImageSource::imageReadRef(a2);
  CGImageGetImageProvider();
  if (IIO_CGImageWrapsIOSurface(Ref, 1))
  {
    memset(v46, 0, sizeof(v46));
    IIODictionary::IIODictionary(v46);
    IIONumber::IIONumber(&__ptr, 875704422);
    IIODictionary::setObjectForKey(v46, value, @"kCGImageSurfaceFormatRequest");
    IIONumber::~IIONumber(&__ptr);
    v8 = CGImageProviderCopyIOSurface();
    v9 = v8;
    if (v8)
    {
      PlaneCount = IOSurfaceGetPlaneCount(v8);
      PixelFormat = IOSurfaceGetPixelFormat(v9);
      if (PixelFormat == 875704422)
      {
        if (a4)
        {
          v51 = 0;
          v44 = 0;
          v45 = 0;
          BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v9, 0);
          BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(v9, 0);
          WidthOfPlane = IOSurfaceGetWidthOfPlane(v9, 0);
          HeightOfPlane = IOSurfaceGetHeightOfPlane(v9, 0);
          v48 = 0x616D756C5A303234;
          v49 = WidthOfPlane;
          value = __PAIR64__(BytesPerRowOfPlane, HeightOfPlane);
          IIOWritePlugin::createLZFSECompressedData(this, BaseAddressOfPlane, HeightOfPlane * BytesPerRowOfPlane, &v45, &v44);
          __ptr = v44 + 24;
          v52 = v44;
          IIOImageWriteSession::putBytes(this[2], &__ptr, 0x20uLL);
          IIOImageWriteSession::putBytes(this[2], v45, v44);
          free(v45);
          ATXWritePlugin::writeFiller(this, 0x40u, 0x20u);
          v16 = IOSurfaceGetBaseAddressOfPlane(v9, 1uLL);
          v17 = IOSurfaceGetBytesPerRowOfPlane(v9, 1uLL);
          v18 = IOSurfaceGetWidthOfPlane(v9, 1uLL);
          v19 = IOSurfaceGetHeightOfPlane(v9, 1uLL);
          v20 = v19 * v17;
          __ptr = v20 + 16;
          v48 = 0x6D7268635A303234;
          v49 = v18;
          value = __PAIR64__(v17, v19);
          v21 = IIOWritePlugin::createLZFSECompressedData(this, v16, v20, &v45, &v44);
          __ptr = v44 + 24;
          v52 = v44;
          IIOImageWriteSession::putBytes(this[2], &__ptr, 0x20uLL);
          IIOImageWriteSession::putBytes(this[2], v45, v44);
          free(v45);
          if (!v21)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v43 = PlaneCount;
          v22 = IOSurfaceGetBaseAddressOfPlane(v9, 0);
          v23 = IOSurfaceGetBytesPerRowOfPlane(v9, 0);
          v24 = IOSurfaceGetWidthOfPlane(v9, 0);
          v25 = IOSurfaceGetHeightOfPlane(v9, 0);
          v26 = v25 * v23;
          __ptr = v26 + 16;
          v48 = 0x414D554C66303234;
          v49 = v24;
          value = __PAIR64__(v23, v25);
          IIOImageWriteSession::putBytes(this[2], &__ptr, 0x18uLL);
          IIOImageWriteSession::putBytes(this[2], v22, v26);
          v21 = ATXWritePlugin::writeFiller(this, 0x100u, 0x18u);
          v27 = IOSurfaceGetBaseAddressOfPlane(v9, 1uLL);
          LODWORD(v26) = IOSurfaceGetBytesPerRowOfPlane(v9, 1uLL);
          v28 = IOSurfaceGetWidthOfPlane(v9, 1uLL);
          v29 = IOSurfaceGetHeightOfPlane(v9, 1uLL);
          v30 = v29 * v26;
          __ptr = v30 + 16;
          v48 = 0x4D52484366303234;
          v49 = v28;
          value = __PAIR64__(v26, v29);
          IIOImageWriteSession::putBytes(this[2], &__ptr, 0x18uLL);
          IIOImageWriteSession::putBytes(this[2], v27, v30);
          PlaneCount = v43;
          if (!v21)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v21 = 4294967246;
      }

      if ((PlaneCount & 0xFFFFFFFE) == 0 && (PixelFormat == 1380401729 || PixelFormat == 1111970369))
      {
        BaseAddress = IOSurfaceGetBaseAddress(v9);
        BytesPerRow = IOSurfaceGetBytesPerRow(v9);
        v21 = ATXWritePlugin::convertAndWrite420fData(this, v33, BaseAddress, BytesPerRow, a4, v34, v35);
      }

LABEL_15:
      IIODictionary::~IIODictionary(v46);
      if (!v21)
      {
        return v21;
      }

      goto LABEL_16;
    }

    IIODictionary::~IIODictionary(v46);
  }

  v21 = 4294967246;
LABEL_16:
  v36 = *(this + 16);
  v37 = *(this + 17);
  if (IIOImagePixelDataProvider::getAlphaInfo(a2))
  {
    v38 = malloc_type_malloc((4 * v36 * v37), 0x100004077774924uLL);
    IIOImagePixelDataProvider::getBytes(a2, v38);
    v21 = ATXWritePlugin::convertAndWrite420fData(this, v39, v38, 4 * *(this + 16), a4, v40, v41);
    free(v38);
  }

  return v21;
}

void sub_18606BC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t ATXWritePlugin::write420f(IIOImageWriteSession **this, IIOImagePixelDataProvider *a2, IIODictionary *a3, IIODictionary *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  if (a4 && IIODictionary::containsKey(a4, @"kCGImageProperty420fUseLZFSE"))
  {
    v8 = a4;
LABEL_7:
    BoolForKey = IIODictionary::getBoolForKey(v8, @"kCGImageProperty420fUseLZFSE");
    goto LABEL_9;
  }

  if (a3 && IIODictionary::containsKey(a3, @"kCGImageProperty420fUseLZFSE"))
  {
    v8 = a3;
    goto LABEL_7;
  }

  BoolForKey = 0;
LABEL_9:
  __ptr = 0xA1A0A0D4C504141;
  IIOImageWriteSession::putBytes(this[2], &__ptr, 8uLL);
  ATXWritePlugin::updateHeader(this, a2, a3, &v16);
  *&v17 = vdup_n_s32(0x66303234u);
  DWORD1(v19) = BoolForKey;
  __ptr = 0x4441454800000054;
  IIOImageWriteSession::putBytes(this[2], &__ptr, 8uLL);
  IIOImageWriteSession::putBytes(this[2], &v16, 0x54uLL);
  if (BoolForKey)
  {
    v10 = 64;
    v11 = 32;
  }

  else
  {
    v10 = 256;
    v11 = 24;
  }

  ATXWritePlugin::writeFiller(this, v10, v11);
  v13 = ATXWritePlugin::write420fData(this, a2, v12, BoolForKey);
  if (!v13)
  {
    __ptr = 0x20444E4500000000;
    IIOImageWriteSession::putBytes(this[2], &__ptr, 8uLL);
  }

  return v13;
}

uint64_t ATXWritePlugin::writeOne(IIOImageWriteSession **this, IIOImagePixelDataProvider *a2, IIODictionary *a3, IIODictionary *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a4 && (v8 = IIODictionary::containsKey(a4, @"kCGImagePropertyEncoder"), v9 = a4, (v8) || a3 && (v10 = IIODictionary::containsKey(a3, @"kCGImagePropertyEncoder"), v9 = a3, v10)) && (ObjectForKey = IIODictionary::getObjectForKey(v9, @"kCGImagePropertyEncoder"), CFEqual(ObjectForKey, @"kCGImageProperty420fEncoder")))
  {
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    saving ATX-420f image\n");
    }

    return ATXWritePlugin::write420f(this, a2, a3, a4);
  }

  else
  {
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    saving ATX-ASTC image\n");
    }

    v22 = 0;
    memset(v21, 0, sizeof(v21));
    __ptr = 0xA1A0A0D4C504141;
    IIOImageWriteSession::putBytes(this[2], &__ptr, 8uLL);
    ATXWritePlugin::updateHeader(this, a2, a3, v21);
    __ptr = 0x4441454800000054;
    IIOImageWriteSession::putBytes(this[2], &__ptr, 8uLL);
    IIOImageWriteSession::putBytes(this[2], v21, 0x54uLL);
    Position = IIOImageWriteSession::getPosition(this[2]);
    if (*(this + 58))
    {
      v14 = 0x4000;
    }

    else
    {
      v14 = 256;
    }

    v15 = -20;
    do
    {
      v15 += v14;
    }

    while (v15 + 8 < Position);
    v16 = v15 - Position;
    LODWORD(__ptr) = v15 - Position;
    HIDWORD(__ptr) = 1280067910;
    IIOImageWriteSession::putBytes(this[2], &__ptr, 8uLL);
    v17 = malloc_type_calloc(v16, 1uLL, 0x100004077774924uLL);
    v18 = IIOImageWriteSession::putBytes(this[2], v17, v16);
    free(v17);
    if (v18 == v16)
    {
      result = ATXWritePlugin::writeASTCData(this, this[2], a2, v19);
      if (!result)
      {
        __ptr = 0x20444E4500000000;
        IIOImageWriteSession::putBytes(this[2], &__ptr, 8uLL);
        return 0;
      }
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t ATXWritePlugin::WriteProc(ATXWritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "ATXWritePlugin::WriteProc", 0, 0, -1, 0);
  }

  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  CommonASTCWritePlugin::CommonASTCWritePlugin(v11, this, a2, 32);
  *&v11[0] = &unk_1EF4DAC08;
  BYTE10(v12) = 0;
  *(&v13 + 1) = 0;
  v7 = IIOWritePlugin::writeAll(v11);
  ATXWritePlugin::~ATXWritePlugin(v11, v8, v9);
  return v7;
}

void sub_18606C18C(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ATXWritePlugin::~ATXWritePlugin(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18606C174);
}

void kdc_flow_control::kdc_flow_control(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  *(a1 + 88) = 0;
  v17 = a3;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 80) = a3;
  v11 = *(a2 + 16);
  v10 = *(a2 + 32);
  v12 = *(a2 + 48);
  *(a1 + 16) = *a2;
  *(a1 + 64) = v12;
  *(a1 + 48) = v10;
  *(a1 + 32) = v11;
  *(a1 + 112) = a4;
  kdu_codestream::get_valid_tiles(&v17, (a1 + 88));
  if ((a4 & 0x80000000) == 0 && *(a1 + 100) > a4)
  {
    v13 = *(a1 + 88);
    *(a1 + 104) = v13;
    *(a1 + 108) = HIDWORD(v13) + a4;
    *(a1 + 120) = kdu_codestream::open_tile(&v17, *(a1 + 104), 0);
    *(a1 + 136) = a6;
    *(a1 + 128) = a5;
    v14 = 0uLL;
    kdu_codestream::get_tile_dims(&v17, *(a1 + 104), 0, &v14, 1);
    *(a1 + 72) = v14.i32[2];
    *(a1 + 8) = kdu_codestream::get_num_components(&v17, 1);
    operator new[]();
  }

  v16 = 0;
  memset(v15, 0, sizeof(v15));
  kdu_error::kdu_error(v15, "Error in kdc_flow_control:\n");
  (*(*&v15[0] + 16))(v15, "Bad kdc_flow_control c'tor x_tnum parameter");
  kdu_error::~kdu_error(v15);
}

void kdc_flow_control::~kdc_flow_control(kdc_flow_control *this)
{
  v2 = *this;
  if (v2)
  {
    MEMORY[0x186602830](v2, 0x20C8093837F09);
  }

  if (*(this + 18))
  {
    kdu_multi_analysis::destroy(this + 18);
  }
}

uint64_t kdu_multi_analysis::destroy(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    (*(*result + 16))(result);
    result = *a1;
    if (*a1)
    {
      result = (*(*result + 8))(result);
    }
  }

  *a1 = 0;
  return result;
}

uint64_t kdc_flow_control::advance_components(kdc_flow_control *this)
{
  if (*(this + 18) < 1)
  {
    return 0;
  }

  v2 = this + 16;
  if (*(this + 9) != (*(this + 2))(*(this + 3), *(this + 6), *(this + 9)))
  {
    return 0;
  }

  if (*(this + 2) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *this;
      v5 = (*(**(this + 18) + 32))(*(this + 18), v3, 0, 0);
      *(v4 + 8 * v3) = v5;
      if (!v5)
      {
        v8 = 0;
        memset(v7, 0, sizeof(v7));
        kdu_error::kdu_error(v7, "Error in kdc_flow_control:\n");
        (*(*&v7[0] + 16))(v7, "advance_components: comp->line == NULL");
        kdu_error::~kdu_error(v7);
      }

      kdu_image_in::get(v2, v3++, v5);
    }

    while (v3 < *(this + 2));
  }

  return 1;
}

uint64_t kdc_flow_control::process_components(uint64_t this)
{
  v1 = *(this + 72);
  v2 = __OFSUB__(v1--, 1);
  *(this + 72) = v1;
  if (v1 < 0 == v2)
  {
    v3 = this;
    if (*(this + 8) >= 1)
    {
      v4 = 0;
      do
      {
        v5 = *v3;
        v6 = *(*v3 + 8 * v4);
        if (!v6)
        {
          v8 = 0;
          memset(v7, 0, sizeof(v7));
          kdu_error::kdu_error(v7, "Error in kdc_flow_control:\n");
          (*(*&v7[0] + 16))(v7, "process_components: comp->line == NULL");
          kdu_error::~kdu_error(v7);
        }

        this = (*(**(v3 + 144) + 32))(*(v3 + 144), v4, v6, 0);
        *(v5 + 8 * v4++) = 0;
      }

      while (v4 < *(v3 + 8));
    }
  }

  return this;
}

uint64_t kdc_flow_control::advance_tile(kdc_flow_control *this)
{
  v1 = (this + 120);
  if (*(this + 15))
  {
    kdu_multi_analysis::destroy(this + 18);
    v3 = *(this + 2);
    if (v3 < 1)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      bzero(*this, 8 * v3);
    }

    kdu_tile::close(v1, 0);
    *(this + 15) = 0;
    v4 = *(this + 26) + 1;
    *(this + 26) = v4;
    if (v4 - *(this + 22) != *(this + 24))
    {
      *(this + 15) = kdu_codestream::open_tile(this + 10, *(this + 13), 0);
      v7 = 0uLL;
      kdu_codestream::get_tile_dims(this + 10, *(this + 13), v3, &v7, 1);
      *(this + 18) = v7.i32[2];
      kdu_tile::set_components_of_interest(v1, *(this + 2), 0, v6);
      kdu_multi_analysis::create();
    }
  }

  return 0;
}

void *ICNSReadPlugin::ICNSReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4DACB8;
  return result;
}

void ICNSReadPlugin::~ICNSReadPlugin(ICNSReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t ICNSReadPlugin::loadDataFromXPCObject(ICNSReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_icns", &length);
    if (length == 56)
    {
      v6 = data;
      result = 0;
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      *(this + 64) = *(v6 + 6);
      *(this + 30) = v8;
      *(this + 31) = v9;
      *(this + 29) = v7;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t ICNSReadPlugin::saveDataToXPCObject(ICNSReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_icns", this + 464, 0x38uLL);
  }

  return v4;
}

uint64_t ICNSReadPlugin::initialize(ICNSReadPlugin *this, IIODictionary *a2)
{
  __dst[96] = *MEMORY[0x1E69E9840];
  v28 = 0;
  *v26 = 0u;
  v27 = 0u;
  *v25 = 0u;
  v24 = 0;
  *bytes = 0;
  if (*(this + 369) != 1)
  {
    goto LABEL_29;
  }

  v4 = *(this + 7);
  v5 = IIOImageReadSession::globalInfoForType(*(this + 3), 1229147731);
  if (!v5)
  {
    _cg_jpeg_mem_term("initialize", 98, "*** ERROR: globalICNSInfo is NULL for index: %d\n", *(this + 56));
    goto LABEL_29;
  }

  GlobalICNSInfo::getICNSImageInfoAtIndex(v5, *(this + 56), v25);
  if (SLOWORD(v25[0]) < 0)
  {
LABEL_29:
    v9 = 4294967246;
    goto LABEL_30;
  }

  v6 = 72.0;
  if (BYTE1(v28) == 2)
  {
    v6 = 144.0;
  }

  IIONumber::IIONumber(__dst, v6);
  IIODictionary::setObjectForKey(v4, __dst, @"DPIWidth");
  IIONumber::~IIONumber(__dst);
  v7 = 72.0;
  if (BYTE1(v28) == 2)
  {
    v7 = 144.0;
  }

  IIONumber::IIONumber(__dst, v7);
  IIODictionary::setObjectForKey(v4, __dst, @"DPIHeight");
  IIONumber::~IIONumber(__dst);
  *bytes = bswap32(v27);
  v8 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, 4, 0, 0);
  if (v8)
  {
    IIODictionary::setObjectForKey(v4, v8, @"kCGImagePropertyICNSIndexSelector");
    CFRelease(v8);
  }

  if (BYTE2(v28) == 4)
  {
    IIONumber::IIONumber(__dst, 1246769696);
    IIODictionary::setObjectForKey(a2, __dst[2], @"NEW_PLUGIN_ostype");
    IIONumber::~IIONumber(__dst);
    IIONumber::IIONumber(__dst, v25[1]);
    IIODictionary::setObjectForKey(a2, __dst[2], @"NEW_PLUGIN_dataOffset");
    IIONumber::~IIONumber(__dst);
    IIONumber::IIONumber(__dst, LOWORD(v26[1]));
    IIODictionary::setObjectForKey(a2, __dst[2], @"NEW_PLUGIN_expectedWidth");
    IIONumber::~IIONumber(__dst);
    IIONumber::IIONumber(__dst, WORD1(v26[1]));
    IIODictionary::setObjectForKey(a2, __dst[2], @"NEW_PLUGIN_expectedHeight");
    ICNSReadPlugin::initialize(__dst);
    goto LABEL_14;
  }

  if (BYTE2(v28) == 2)
  {
    IIONumber::IIONumber(__dst, 1347307296);
    IIODictionary::setObjectForKey(a2, __dst[2], @"NEW_PLUGIN_ostype");
    IIONumber::~IIONumber(__dst);
    IIONumber::IIONumber(__dst, v25[1]);
    IIODictionary::setObjectForKey(a2, __dst[2], @"NEW_PLUGIN_dataOffset");
    IIONumber::~IIONumber(__dst);
    IIONumber::IIONumber(__dst, LOWORD(v26[1]));
    IIODictionary::setObjectForKey(a2, __dst[2], @"NEW_PLUGIN_expectedWidth");
    IIONumber::~IIONumber(__dst);
    IIONumber::IIONumber(__dst, WORD1(v26[1]));
    IIODictionary::setObjectForKey(a2, __dst[2], @"NEW_PLUGIN_expectedHeight");
    ICNSReadPlugin::initialize(__dst);
LABEL_14:
    v9 = 4294967247;
LABEL_30:
    kdebug_trace();
    return v9;
  }

  v10 = LOWORD(v26[1]);
  v11 = WORD1(v26[1]);
  *(this + 61) = LOWORD(v26[1]);
  *(this + 62) = v11;
  *(this + 128) = 8;
  v12 = HIWORD(v26[1]);
  v13 = WORD2(v26[1]);
  if (WORD2(v26[1]) <= 8u)
  {
    v14 = 8;
  }

  else
  {
    v14 = WORD2(v26[1]);
  }

  v15 = v14 * HIWORD(v26[1]);
  *(this + 129) = v15;
  *(this + 130) = v12;
  *(this + 63) = (v15 * v10 + 7) >> 3;
  *(this + 85) = 1380401696;
  *(this + 20) = 0;
  *(this + 262) = 3;
  if (v15 == 32)
  {
    v16 = 4;
    *(this + 263) = 4;
  }

  else
  {
    v16 = *(this + 263);
  }

  v17 = *(this + 264);
  v18 = *(this + 265) != 0;
  *(this + 294) = 3;
  *(this + 295) = v16 & 7;
  *(this + 296) = v17 & 0xF | (v16 >> 4);
  *(this + 297) = v18;
  *(this + 378) = 1;
  *(this + 372) = 0;
  *(this + 374) = 0;
  if (v13 == 1)
  {
    *(this + 85) = 1196573017;
    v19 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F120]);
LABEL_26:
    *(this + 20) = v19;
    goto LABEL_27;
  }

  if (v12 != 2)
  {
    v19 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    goto LABEL_26;
  }

  memcpy(__dst, &unk_186224AA0, 0x300uLL);
  v20 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  *(this + 20) = CGColorSpaceCreateIndexed(v20, 0xFFuLL, __dst);
  CGColorSpaceRelease(v20);
LABEL_27:
  v9 = 0;
  v21 = *v26;
  *(this + 29) = *v25;
  *(this + 30) = v21;
  *(this + 31) = v27;
  *(this + 64) = v28;
  *(this + 49) = 1;
  *(this + 204) = 1;
  return v9;
}

void sub_18606CF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t ICNSReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

void *OUTLINED_FUNCTION_6_2(size_t a1)
{

  return malloc_type_calloc(a1, 1uLL, 0x100004077774924uLL);
}

void _JPEGFile::_JPEGFile(_JPEGFile *this, CFDataRef theData, char a3, char a4)
{
  *this = &unk_1EF4DAE00;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 3) = CFDataGetBytePtr(theData);
  *(this + 4) = CFDataGetLength(theData);
  *(this + 5) = 0;
  *(this + 96) = a3;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 50) = __PAIR64__(*(*(this + 3) + 1), **(this + 3)) == 0xD8000000FFLL;
  *(this + 51) = 0;
  *(this + 48) = 0;
  *(this + 49) = a4;
}

void sub_18606D0AC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void _JPEGFile::_JPEGFile(_JPEGFile *this, unsigned __int8 *a2, uint64_t a3, char a4, char a5)
{
  *this = &unk_1EF4DAE00;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 3) = a2;
  *(this + 4) = a3;
  *(this + 5) = 0;
  *(this + 96) = a4;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 50) = __PAIR64__(a2[1], *a2) == 0xD8000000FFLL;
  *(this + 51) = 0;
  *(this + 48) = 0;
  *(this + 49) = a5;
}

void _JPEGFile::~_JPEGFile(_JPEGFile *this)
{
  *this = &unk_1EF4DAE00;
  v2 = *(this + 9);
  v3 = *(this + 10);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 9);
  }

  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }
}

{
  _JPEGFile::~_JPEGFile(this);

  JUMPOUT(0x186602850);
}

uint64_t _JPEGFile::findAppMarker(_JPEGFile *this, int a2)
{
  v2 = *(this + 9);
  v3 = *(this + 10);
  while (v2 != v3)
  {
    result = *v2;
    if (*(*v2 + 56) == a2)
    {
      return result;
    }

    v2 += 8;
  }

  return 0;
}

uint64_t _JPEGFile::appMarkerAtIndex(_JPEGFile *this, int a2)
{
  v2 = *(this + 9);
  if (a2 >= ((*(this + 10) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t _JPEGFile::findApp1ExifMarker(_JPEGFile *this)
{
  v1 = *(this + 9);
  v2 = *(this + 10);
  while (v1 != v2)
  {
    result = *v1;
    if (*(*v1 + 56) == -31 && (*(result + 68) & 1) != 0)
    {
      return result;
    }

    v1 += 8;
  }

  return 0;
}

_JPEGFile *_JPEGFile::mergeWithFile(_JPEGFile *this, _JPEGFile *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = *(a2 + 9);
    v5 = *(a2 + 10);
    while (v4 != v5)
    {
      v6 = *v4;
      v7 = *(v3 + 9);
      v8 = *(v3 + 10);
      if (v7 == v8)
      {
LABEL_7:
        _JPEGFile::insertAppMarker(v3, *v4);
        *(v6 + 8) |= 0x10u;
        this = _JPEGFile::removeAppMarker(a2, v6);
      }

      else
      {
        while (*(*v7 + 56) != *(v6 + 28))
        {
          v7 += 8;
          if (v7 == v8)
          {
            goto LABEL_7;
          }
        }
      }

      ++v4;
    }

    for (i = *(v3 + 9); i != *(v3 + 10); ++i)
    {
      v10 = *i;
      if (*(*i + 28) == -31 && (*(v10 + 68) & 1) != 0)
      {
        goto LABEL_15;
      }
    }

    v10 = 0;
LABEL_15:
    v11 = *(a2 + 9);
    v12 = *(a2 + 10);
    while (v11 != v12)
    {
      v13 = *v11;
      if (*(*v11 + 28) == -31 && (*(v13 + 68) & 1) != 0)
      {
        if (!v10)
        {
          operator new();
        }

        *(v10 + 8) |= 0x20u;

        return _APP1::mergeWithApp1(v10, v13);
      }

      ++v11;
    }
  }

  return this;
}

char *_JPEGFile::insertAppMarker(_JPEGFile *this, _APPx *a2)
{
  v13 = a2;
  v5 = *(this + 9);
  v4 = *(this + 10);
  v3 = (this + 72);
  if (v4 != v5)
  {
    v6 = (v4 - v5) >> 3;
    v7 = *(a2 + 29);
    do
    {
      v8 = v6 >> 1;
      v9 = &v5[8 * (v6 >> 1)];
      v11 = *v9;
      v10 = v9 + 8;
      v6 += ~(v6 >> 1);
      if (*(v11 + 58) <= v7)
      {
        v5 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
    v4 = v5;
  }

  return std::vector<_APPx *>::insert(v3, v4, &v13);
}

uint64_t _JPEGFile::removeAppMarker(uint64_t result, uint64_t a2)
{
  v3 = *(result + 72);
  v2 = *(result + 80);
  if (v3 != v2)
  {
    while (*v3 != a2)
    {
      if (++v3 == v2)
      {
        return result;
      }
    }

    if (v3 != v2)
    {
      v4 = v3 + 1;
      if (v3 + 1 != v2)
      {
        do
        {
          if (*v4 != a2)
          {
            *v3++ = *v4;
          }

          ++v4;
        }

        while (v4 != v2);
        v2 = *(result + 80);
      }
    }
  }

  if (v2 < v3)
  {
    __break(1u);
  }

  else if (v3 != v2)
  {
    *(result + 80) = v3;
  }

  return result;
}

_BYTE *_JPEGFile::copyThumbnail(_BYTE *this, _JPEGFile *a2)
{
  v2 = this;
  if (!a2)
  {
    TagByID = 0;
    v6 = 0;
LABEL_26:
    for (i = *(v2 + 9); i != *(v2 + 10); i += 8)
    {
      this = *i;
      if (*(*i + 56) == -31 && (this[68] & 1) != 0)
      {
        this = (*(*this + 48))(this);
        if (this)
        {
          v14 = this;
          TagByID = _TAGList::findTagByID(this, 513);
          this = _TAGList::findTagByID(v14, 514);
          v6 = this;
        }

        goto LABEL_33;
      }
    }

    goto LABEL_33;
  }

  for (j = *(a2 + 9); ; j += 8)
  {
    if (j == *(a2 + 10))
    {
      TagByID = 0;
      v6 = 0;
      goto LABEL_8;
    }

    this = *j;
    if (*(*j + 56) == -31 && (this[68] & 1) != 0)
    {
      break;
    }
  }

  this = (*(*this + 48))(this);
  v6 = this;
  if (this)
  {
    TagByID = _TAGList::findTagByID(this, 513);
    this = _TAGList::findTagByID(v6, 514);
    v6 = this;
    if (TagByID)
    {
      v12 = this == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
    TagByID = 0;
  }

LABEL_8:
  v7 = *(a2 + 9);
  v8 = *(a2 + 10);
  if (v7 != v8)
  {
    v9 = *(a2 + 9);
    while (1)
    {
      v10 = *v9;
      if (*(*v9 + 56) == -64)
      {
        break;
      }

      v9 += 8;
      if (v9 == v8)
      {
        while (1)
        {
          v10 = *v7;
          if (*(*v7 + 56) == -37)
          {
            goto LABEL_15;
          }

          v7 += 8;
          if (v7 == v8)
          {
            goto LABEL_24;
          }
        }
      }
    }

LABEL_15:
    if ((*(*v10 + 24))(v10) >> 6 <= 0x270)
    {
      *(v2 + 7) = v10[5] + v10[2];
      this = (*(*v10 + 24))(v10);
      goto LABEL_36;
    }

    v11 = (*(*v10 + 24))(v10);
    this = LogError("copyThumbnail", 292, "*** ERROR: skipping thumbnail -- too big [%d bytes]\n", v11);
  }

LABEL_24:
  if (!TagByID || !v6)
  {
    goto LABEL_26;
  }

LABEL_33:
  if (TagByID && v6)
  {
    v15 = *(v2 + 3);
    *(v2 + 7) = v15 + _TAG::nativeDataOrOffset(TagByID) + TagByID[7];
    this = _TAG::nativeDataOrOffset(v6);
LABEL_36:
    *(v2 + 16) = this;
  }

  v16 = *(v2 + 7);
  if (v16)
  {
    v17 = *(v2 + 16);
    if (v17)
    {
      for (k = *(v2 + 9); ; ++k)
      {
        if (k == *(v2 + 10))
        {
          operator new();
        }

        v19 = *k;
        if (*(*k + 56) == -31 && (v19[68] & 1) != 0)
        {
          break;
        }
      }

      v20 = *(*v19 + 56);
      v21 = *k;

      return v20(v21, v16, v17);
    }
  }

  return this;
}

uint64_t _JPEGFile::copyXMPProperties(_JPEGFile *this)
{
  v24 = 0u;
  v25 = 0u;
  v1 = *(this + 20) - *(this + 18);
  v2 = (v1 >> 3);
  if (!(v1 >> 3))
  {
    return 0;
  }

  v4 = 0;
  v22 = 0;
  BytePtr = 0;
  Length = 0;
  v20 = 0;
  v21 = 0;
  do
  {
    v6 = *(this + 9);
    if (v4 >= (*(this + 10) - v6) >> 3)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(v6 + 8 * v4);
    }

    if (*(v7 + 69) == 1)
    {
      XmpData = _APP1XMP::getXmpData(v7);
      if (XmpData)
      {
        v9 = XmpData;
        BytePtr = CFDataGetBytePtr(XmpData);
        Length = CFDataGetLength(v9);
      }
    }

    else
    {
      if (*(v7 + 70) != 1)
      {
        goto LABEL_21;
      }

      v10 = _APP1XMP::getXmpData(v7);
      GUID = _APP1ExtendedXMP::getGUID(v7);
      v12 = CFDataGetBytePtr(GUID);
      TotalXMPLength = _APP1ExtendedXMP::getTotalXMPLength(v7);
      XmpOffset = _APP1ExtendedXMP::getXmpOffset(v7);
      v15 = CFDataGetLength(v10);
      if (GUID)
      {
        v16 = v15;
        if (CFDataGetLength(GUID) == 32)
        {
          if ((v22 & 0x100000000) == 0)
          {
            v24 = *v12;
            v25 = *(v12 + 1);
            LODWORD(v22) = TotalXMPLength;
            v21 = malloc_type_calloc(1uLL, TotalXMPLength, 0x100004077774924uLL);
            if (!v21)
            {
              BYTE4(v22) = 0;
              v21 = 0;
              goto LABEL_18;
            }
          }

          BYTE4(v22) = 1;
          if (!(v24 ^ *v12 | *(&v24 + 1) ^ *(v12 + 1) | v25 ^ *(v12 + 2) | *(&v25 + 1) ^ *(v12 + 3)) && TotalXMPLength == v22 && XmpOffset + v16 <= v22)
          {
            v17 = CFDataGetBytePtr(v10);
            memcpy(&v21[XmpOffset], v17, v16);
            v20 += v16;
            BYTE4(v22) = 1;
LABEL_18:
            LODWORD(v22) = TotalXMPLength;
          }
        }

        else
        {
          LogError("copyXMPProperties", 396, "*** ERROR: Extended XMP marker GUID length is not 32, skipping marker\n", v20);
        }
      }

      else
      {
        LogError("copyXMPProperties", 401, "*** ERROR: Extended XMP marker GUID data is NULL, skipping marker\n", v20);
      }
    }

LABEL_21:
    ++v4;
  }

  while (v2 != v4);
  if (v21 && v22 && v20 == v22 && BytePtr && Length)
  {
    MetadataFromExtendedXMPData = CreateMetadataFromExtendedXMPData(BytePtr, Length, v21);
    goto LABEL_36;
  }

  if (!BytePtr || !Length)
  {
    MetadataFromExtendedXMPData = 0;
    result = 0;
    if (!v21)
    {
      return result;
    }

    goto LABEL_36;
  }

  result = CreateMetadataFromXMPBuffer(BytePtr, Length);
  MetadataFromExtendedXMPData = result;
  if (v21)
  {
LABEL_36:
    free(v21);
    return MetadataFromExtendedXMPData;
  }

  return result;
}

void _JPEGFile::setXMPProperties(_JPEGFile *this, const CGImageMetadata *a2)
{
  cf = 0;
  theData = 0;
  v9 = 0;
  CGImageMetadataCreateSerializedDataAndExtendedData(a2, &theData, &cf, &v9, 1246774599);
  v3 = *(this + 20) - *(this + 18);
  v4 = (v3 >> 3);
  if ((v3 >> 3))
  {
    v5 = 0;
    do
    {
      v6 = *(this + 9);
      if (v5 >= ((*(this + 10) - v6) >> 3))
      {
        v7 = 0;
      }

      else
      {
        v7 = *(v6 + 8 * v5);
      }

      if ((v7[69] & 1) != 0 || v7[70] == 1)
      {
        _JPEGFile::removeAppMarker(this, v7);
        --v5;
        --v4;
        (*(*v7 + 8))(v7);
      }

      ++v5;
    }

    while (v5 < v4);
  }

  if (!theData || CFDataGetLength(theData) < 65501)
  {
    operator new();
  }

  Length = CFDataGetLength(theData);
  LogError("setXMPProperties", 473, "*** ERROR: xmpData size exceeds 64KB limit (%ld)\n", Length);
  CFRelease(theData);
  theData = 0;
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t _JPEGFile::setICCProfile(_JPEGFile *this, CFDataRef theData)
{
  v4 = *(this + 20) - *(this + 18);
  v5 = (v4 >> 3);
  if ((v4 >> 3))
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 9) + 8 * v6);
      if (v7[71] == 1)
      {
        _JPEGFile::removeAppMarker(this, *(*(this + 9) + 8 * v6--));
        --v5;
        (*(*v7 + 8))(v7);
      }

      ++v6;
    }

    while (v6 < v5);
  }

  if (!theData)
  {
    return 0;
  }

  Length = CFDataGetLength(theData);
  v9 = Length + 65518;
  if ((Length + 65518) > 0xFFEEFF)
  {
    LogError("setICCProfile", 590, "*** ERROR: iccData exceeds maximum size of %d bytes\n", 16707345);
    return 0;
  }

  v11 = Length;
  BytePtr = CFDataGetBytePtr(theData);
  if (v9 >= 0xFFEF)
  {
    if (v9 / 0xFFEF == 1)
    {
      v13 = v11;
    }

    else
    {
      v13 = 65519;
    }

    if (CFDataCreate(*MEMORY[0x1E695E480], BytePtr, v13))
    {
      operator new();
    }
  }

  return 1;
}

uint64_t _JPEGFile::addMissingIFDTags(_JPEGFile *this)
{
  for (i = *(this + 9); ; i += 8)
  {
    if (i == *(this + 10))
    {
      operator new();
    }

    v2 = *i;
    if (*(*i + 56) == -31 && (v2[68] & 1) != 0)
    {
      break;
    }
  }

  *v5 = 0;
  v4 = 0;
  _JPEGFile::getImageDimension(this, &v5[1], v5, &v4);
  return (*(*v2 + 64))(v2, v5[1], v5[0], v4);
}

void *_JPEGFile::getImageDimension(void *this, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = this[9];
  v5 = this[10];
  if (v4 != v5)
  {
    v6 = this[9];
    while (1)
    {
      this = *v6;
      if (*(*v6 + 56) == -64)
      {
        break;
      }

      v6 += 8;
      if (v6 == v5)
      {
        while (1)
        {
          this = *v4;
          if (*(*v4 + 56) == -37)
          {
            break;
          }

          v4 += 8;
          if (v4 == v5)
          {
            return this;
          }
        }

        return (*(*this + 72))(this, a2, a3, a4);
      }
    }

    return (*(*this + 72))(this, a2, a3, a4);
  }

  return this;
}

char *std::vector<_APPx *>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (__src == v6)
    {
      *v6 = *a3;
      a1[1] = v6 + 8;
      return v4;
    }

    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    if (v9 >= v4)
    {
      v23 = v9 <= a3 || v4 > a3;
      v24 = 8;
      if (v23)
      {
        v24 = 0;
      }

      *v4 = *&a3[v24];
      return v4;
    }

    __break(1u);
LABEL_30:
    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  v10 = *a1;
  v11 = (&v6[-*a1] >> 3) + 1;
  if (v11 >> 61)
  {
    goto LABEL_30;
  }

  v12 = __src - v10;
  v13 = v7 - v10;
  if (v13 >> 2 > v11)
  {
    v11 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  v15 = v12 >> 3;
  v29 = a1;
  if (v14)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1, v14);
  }

  v26 = 0;
  v27 = 8 * v15;
  v28 = (8 * v15);
  std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_back<std::__state<char> *>(&v26, a3);
  v16 = v27;
  memcpy(v28, v4, a1[1] - v4);
  v17 = *a1;
  v18 = v27;
  *&v28 = v28 + a1[1] - v4;
  a1[1] = v4;
  v19 = v4 - v17;
  v20 = (v18 - (v4 - v17));
  memcpy(v20, v17, v19);
  v21 = *a1;
  *a1 = v20;
  v22 = a1[2];
  *(a1 + 1) = v28;
  *&v28 = v21;
  *(&v28 + 1) = v22;
  v26 = v21;
  v27 = v21;
  if (v21)
  {
    operator delete(v21);
  }

  return v16;
}

void sub_18606E438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 _JPEGFile::processData(_JPEGFile *this)
{
  std::vector<_APPx *>::resize(this + 9, 0);
  *(this + 5) = 0;
  v3 = (this + 40);
  v4 = *(this + 4);
  if (v4 <= 1)
  {
    goto LABEL_6;
  }

  v5 = *(this + 3);
  v6 = *v5;
  *(this + 5) = 2;
  if ((*(this + 48) & 1) != 0 || __rev16(v6) != 65496)
  {
    return result;
  }

  if (v4 <= 3 || (v7 = *(v5 + 2), v8 = *(v5 + 3), *v3 = 4, (v4 - 2) <= 3))
  {
LABEL_6:
    *(this + 48) = 1;
    return result;
  }

  v9 = __rev16(v5[2]);
  *v3 = 6;
  if (v9 <= 1)
  {
    return _cg_jpeg_mem_term("processData", 692, "*** ERROR: markerLength too small (%d)\n");
  }

  v10 = v4 - 10;
  if (v10 <= v9)
  {
    LogWarning("processData", 695, "*** WARNING: check markerLength: %d - expected max: %d\n", v9, v10);
  }

  *v3 = 4;
  if (v7 == 255)
  {
    v11 = v8;
    v12 = 0x1091C40D132A91BLL;
    LODWORD(v13) = 2;
    v14 = 4;
    LODWORD(v15) = 4;
    do
    {
      if (v11 <= 0xE1u)
      {
        if (v11 <= 0xDCu)
        {
          if (v11 != 217)
          {
            if (v11 - 192 < 8 || v11 == 219)
            {
LABEL_57:
              operator new();
            }

LABEL_22:
            operator new();
          }

          return result;
        }

        if (v11 == 224)
        {
          operator new();
        }

        if (v11 != 225)
        {
          if (v11 == 221)
          {
            goto LABEL_57;
          }

          goto LABEL_22;
        }

        v16 = v9 + 2;
        v17 = (v15 + 2);
        if (*(this + 4) - 4 <= v17)
        {
          if (v9 != 2)
          {
            _cg_jpeg_mem_term("processData", 776, "*** WARNING: APP1 marker with unknown signature, does not match EXIF, XMP, or Extended XMP. (size:%d marker: %d)\n", 0, v9 + 2);
            operator new();
          }
        }

        else
        {
          v18 = v9 - 2;
          if (v9 - 2 >= 4)
          {
            v19 = *(this + 3);
            if (!strncmp((v19 + v17), "Exif", 4uLL))
            {
              operator new();
            }

            if (v18 >= 0x1C)
            {
              if (!strncmp((v19 + v17), "http://ns.adobe.com/xap/1.0/", 0x1CuLL))
              {
                operator new();
              }

              if (v18 >= 0x22 && !strncmp((v19 + v17), "http://ns.adobe.com/xmp/extension/", 0x22uLL))
              {
                operator new();
              }
            }
          }
        }

        result = _cg_jpeg_mem_term("processData", 783, "*** ERROR: unknown APP1 marker - skipping\n");
        v13 = v16 + v13;
      }

      else
      {
        switch(v11)
        {
          case 0xE2u:
            v20 = v12;
            v21 = *(this + 3);
            v22 = (v15 + 2);
            v23 = v9 - 2;
            if (v23 >= 0xC && !strncmp((v21 + v22), "ICC_PROFILE", 0xBuLL))
            {
              operator new();
            }

            if (strlen((v21 + v22)) < v23)
            {
              operator new();
            }

            result = _cg_jpeg_mem_term("processData", 822, "*** ERROR: unknown APP2 marker - skipping\n");
            v12 = v20;
            v13 = v9 + 2 + v13;
            break;
          case 0xEDu:
            operator new();
          case 0xFFu:
            v13 = v14 + 1;
            break;
          default:
            goto LABEL_22;
        }
      }

      *(this + 5) = v13;
      v24 = *(this + 4);
      if (v13 > v24 - 2)
      {
        goto LABEL_6;
      }

      v25 = (*(this + 3) + v13);
      v26 = *v25;
      v11 = v25[1];
      v15 = v13 + 2;
      *(this + 5) = v13 + 2;
      if (*(this + 48))
      {
        return result;
      }

      if (v15 > v24 - 2)
      {
        goto LABEL_6;
      }

      v9 = __rev16(*(*(this + 3) + v15));
      *(this + 5) = v13 + 4;
      if (!v9)
      {
        return result;
      }

      if (v9 == 1)
      {
        return _cg_jpeg_mem_term("processData", 927, "*** ERROR: markerLength too small (%d)\n");
      }

      v27 = v24 - (v13 + 4) - 4;
      if (v27 <= v9)
      {
        LogWarning("processData", 930, "*** WARNING: check markerLength: %d - expected max: %d\n", v9, v27);
      }

      v14 = v13;
      *v3 = v13;
    }

    while (v26 == 255);
  }

  return result;
}

uint64_t _JPEGFile::getshort(_JPEGFile *this)
{
  v1 = *(this + 5);
  if (v1 <= *(this + 4) - 2)
  {
    v2 = bswap32(*(*(this + 3) + v1)) >> 16;
    *(this + 5) = v1 + 2;
  }

  else
  {
    v2 = 0;
    *(this + 48) = 1;
  }

  return v2;
}

uint64_t _JPEGFile::createExtendedAPP0(uint64_t this)
{
  v1 = *(this + 72);
  if (v1 != *(this + 80))
  {
    if (*(*v1 + 56) != -32)
    {
      operator new();
    }

    v2 = *(**v1 + 128);

    return v2();
  }

  return this;
}

void *_JPEGFile::writeToStream(void *this, __CFWriteStream *a2)
{
  v3 = this;
  v4 = this[9];
  v5 = this[10];
  if (v4 != v5)
  {
    v6 = 0;
    v7 = -1;
    v8 = -1;
    v9 = this[9];
    do
    {
      if (*(*v9 + 56) == -31)
      {
        if (*(*v9 + 68))
        {
          v8 = v6;
        }

        else
        {
          v7 = v6;
        }

        ++v6;
      }

      v9 += 8;
    }

    while (v9 != v5);
    if (v6 == 2 && v7 != -1 && v8 != -1 && v7 < v8)
    {
      v10 = (v5 - v4) >> 3;
      if (v10 <= v7 || v10 <= v8)
      {
        goto LABEL_27;
      }

      v11 = *&v4[8 * v7];
      *&v4[8 * v7] = *&v4[8 * v8];
      *&v4[8 * v8] = v11;
      v4 = this[9];
      v5 = this[10];
    }
  }

  if (v5 - v4 == 16)
  {
    v12 = *(v4 + 1);
    if (v12[28] == -37)
    {
      this = (*(*v12 + 24))(*(v4 + 1));
      v4 = v3[9];
      v5 = v3[10];
      if (this > 0x3000)
      {
        if (v5 != v4)
        {
          this = *v4;
          if (*(*v4 + 56) == -31)
          {
            (*(*this + 88))(this);
            this = (*(*v12 + 88))(v12);
            v4 = v3[9];
            v5 = v3[10];
          }

          goto LABEL_25;
        }

LABEL_27:
        __break(1u);
        return this;
      }
    }
  }

LABEL_25:
  while (v4 != v5)
  {
    v13 = *v4;
    this = (*(**v4 + 24))(*v4);
    if (this)
    {
      this = (*(*v13 + 32))(v13, a2);
    }

    v4 += 8;
  }

  return this;
}

uint64_t _JPEGFile::dump(uint64_t this, const char *a2)
{
  v2 = *(this + 72);
  v3 = *(this + 80);
  if (v3 != v2)
  {
    v4 = this;
    v5 = 1;
    do
    {
      v6 = *v2++;
      this = (*(*v6 + 80))(v6, v5 & 1);
      v5 = 0;
    }

    while (v2 != v3);
    v2 = *(v4 + 72);
    v3 = *(v4 + 80);
  }

  while (v2 != v3)
  {
    this = *v2;
    if (*(*v2 + 56) == -31 && (*(this + 68) & 1) != 0)
    {
      v7 = *(*this + 128);

      return v7();
    }

    ++v2;
  }

  return this;
}

void _JPEGWriter::_JPEGWriter(_JPEGWriter *this, CGImage *a2, const __CFData *a3, const __CFData *a4, IIODictionary *a5, const CGImageMetadata *a6, char a7)
{
  *this = &unk_1EF4DAE28;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  Mutable = CGImageMetadataCreateFromLegacyProps(a5);
  if (!Mutable)
  {
    Mutable = CGImageMetadataCreateMutable();
  }

  CGImageMetadataMerge(Mutable, a6, 0);
  *(this + 4) = a5;
  *(this + 5) = Mutable;
  *(this + 72) = 0u;
  *(this + 66) = a7;
  *(this + 3) = 0u;
  *(this + 65) = 0;
  *(this + 67) = 0;
  *(this + 88) = 0u;
  if (a5)
  {
    if (IIODictionary::containsKey(a5, @"kCGImageWriteExtendedAPP0"))
    {
      *(this + 67) = IIODictionary::getBoolForKey(*(this + 4), @"kCGImageWriteExtendedAPP0");
    }
  }
}

void _JPEGWriter::~_JPEGWriter(_JPEGWriter *this)
{
  *this = &unk_1EF4DAE28;
  v2 = *(this + 10);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 10) = 0;
  }

  v3 = *(this + 11);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(this + 11) = 0;
  }

  v4 = *(this + 12);
  if (v4)
  {
    (*(*v4 + 8))(v4);
    *(this + 12) = 0;
  }

  v5 = *(this + 7);
  if (v5)
  {
    (*(*v5 + 8))(v5);
    *(this + 7) = 0;
  }

  v6 = *(this + 5);
  if (v6)
  {
    CFRelease(v6);
    *(this + 5) = 0;
  }

  v7 = *(this + 9);
  if (v7)
  {
    CFRelease(v7);
    *(this + 9) = 0;
  }

  v8 = *(this + 6);
  if (v8)
  {
    (*(*v8 + 8))(v8);
    *(this + 6) = 0;
  }
}

{
  _JPEGWriter::~_JPEGWriter(this);

  JUMPOUT(0x186602850);
}

void _JPEGWriter::processInput(_JPEGWriter *this)
{
  if (*(this + 2))
  {
    operator new();
  }

  v2 = *(this + 3);
  if (v2 && CFDataGetLength(v2))
  {
    operator new();
  }

  if (*(this + 4))
  {
    operator new();
  }

  v3 = *(this + 5);
  if (v3)
  {
    v4 = CGImagePropertiesCreateFromMetadata(v3);
    if (v4)
    {
      v5 = v4;
      IIODictionary::appendDictionary(*(this + 7), v4);
      (*(*v5 + 1))(v5);
    }
  }

  v6 = *(this + 7);
  if (v6)
  {
    __len = 0;
    v7 = CreateExifBufferFromPropertiesJPEG(v6, 0, 0, 0, 0, @"public.jpeg", &__len);
    if (v7)
    {
      v8 = __len >= 0xFFFA;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      ObjectForKey = IIODictionary::getObjectForKey(*(this + 7), @"{Exif}");
      if (ObjectForKey)
      {
        v10 = ObjectForKey;
        if (CFDictionaryGetValue(ObjectForKey, @"UserComment"))
        {
          CFDictionaryRemoveValue(v10, @"UserComment");
          free(v7);
          v7 = CreateExifBufferFromPropertiesJPEG(*(this + 7), 0, 0, 0, 0, @"public.jpeg", &__len);
        }
      }
    }

    if (v7)
    {
      v11 = __len > 0xFFF9;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = reallocf(v7, __len + 18);
      if (!v12)
      {
        goto LABEL_48;
      }

      v7 = v12;
      v13 = __len;
      memmove(v12 + 6, v12, __len);
      *v7 = -503326465;
      v7[4] = (v13 + 6) >> 8;
      v7[5] = v13 + 6;
      __len = v13 + 18;
      v14 = &v7[v13 + 18];
      *(v14 - 1) = 0;
      *(v14 - 12) = 0;
      v15 = CFDataCreate(*MEMORY[0x1E695E480], v7, v13 + 18);
      *(this + 9) = v15;
      if (v15)
      {
        operator new();
      }
    }

    free(v7);
    v16 = *(this + 10);
    if (v16)
    {
      v17 = *(this + 12);
      if (v17)
      {
        _JPEGFile::mergeWithFile(v16, v17);
      }
    }
  }

  v18 = *(this + 10);
  if (v18)
  {
    v19 = *(this + 11);
    if (v19)
    {
LABEL_32:
      _JPEGFile::copyThumbnail(v18, v19);
    }

    else if (*(this + 65) == 1)
    {
      v20 = *(v18 + 72);
      v21 = *(v18 + 80);
      while (v20 != v21)
      {
        v22 = *v20;
        if (*(*v20 + 56) == -31 && (v22[68] & 1) != 0)
        {
          if (!(*(*v22 + 48))(v22))
          {
            break;
          }

          v18 = *(this + 10);
          v19 = v18;
          goto LABEL_32;
        }

        v20 += 8;
      }
    }

    _JPEGFile::addMissingIFDTags(*(this + 10));
  }

  v23 = *(this + 5);
  if (v23)
  {
    if (*(this + 10))
    {
      __len = 0;
      v24 = CFRetain(v23);
      if (v24)
      {
        cf = 0;
        theData = 0;
        if (CGImageMetadataCreateExtendedXMPWithEXIFFiltered(v24, &__len, &theData, &cf, 1246774599, 0))
        {
          operator new();
        }

        CFRelease(v24);
      }
    }
  }

LABEL_48:
  if (*(this + 67) == 1)
  {
    _JPEGFile::createExtendedAPP0(*(this + 10));
  }
}

void sub_18606FA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void _JPEGWriter::cleanupProperties(_JPEGWriter *this, IIODictionary *a2)
{
  IIODictionary::removeObjectForKey(a2, @"{Diagnostic}");
  if (IIODictionary::containsKey(a2, @"iOS_Debug"))
  {
    IIODictionary::getObjectForKey(a2, @"iOS_Debug");
    operator new();
  }

  if (IIODictionary::containsKey(a2, @"iOSCustom"))
  {
    IIODictionary::getObjectForKey(a2, @"iOSCustom");
    operator new();
  }

  if ((IIODictionary::containsKey(a2, @"{TIFF}") & 1) == 0)
  {
    IIODictionary::IIODictionary(&v25);
    IIODictionary::setObjectForKey(a2, value, @"{TIFF}");
    IIODictionary::~IIODictionary(&v25);
  }

  if (IIODictionary::containsKey(a2, @"{Exif}"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a2, @"{Exif}");
    v25 = 0;
    value = 0;
    v27 = 0;
    IIODictionary::IIODictionary(&v25, ObjectForKey);
    IIODictionary::removeObjectForKey(&v25, @"ThumbnailOffset");
    IIODictionary::removeObjectForKey(&v25, @"ThumbnailSize");
    v5 = IIODictionary::getObjectForKey(&v25, @"{GPS}");
    if (v5)
    {
      IIODictionary::setObjectForKey(a2, v5, @"{GPS}");
      IIODictionary::removeObjectForKey(&v25, @"{GPS}");
    }

    v6 = IIODictionary::getObjectForKey(&v25, @"{ExifAux}");
    if (v6)
    {
      IIODictionary::setObjectForKey(a2, v6, @"{ExifAux}");
      IIODictionary::removeObjectForKey(&v25, @"{ExifAux}");
    }
  }

  else
  {
    IIODictionary::IIODictionary(&v25);
    IIODictionary::setObjectForKey(a2, value, @"{Exif}");
  }

  IIODictionary::~IIODictionary(&v25);
  v7 = IIODictionary::getObjectForKey(a2, @"{TIFF}");
  v25 = 0;
  value = 0;
  v27 = 0;
  v8 = IIODictionary::IIODictionary(&v25, v7);
  _JPEGWriter::syncTopLevelAndSubDictionaries(v8, a2, &v25);
  v9 = IIODictionary::getObjectForKey(a2, @"{Exif}");
  memset(v24, 0, sizeof(v24));
  IIODictionary::IIODictionary(v24, v9);
  v10 = IIODictionary::containsKey(a2, @"Orientation");
  if ((v10 & 1) == 0)
  {
    v10 = IIODictionary::containsKey(v24, @"Orientation");
    if ((v10 & 1) == 0)
    {
      v10 = IIODictionary::containsKey(a2, @"kCGImageCopyFileSetOrientation");
      if (v10)
      {
        v12 = IIODictionary::getObjectForKey(a2, @"kCGImageCopyFileSetOrientation");
        IIODictionary::setObjectForKey(a2, v12, @"Orientation");
      }
    }
  }

  if (*(this + 66) == 1)
  {
    _JPEGWriter::addExifVersionIfNeeded(v10, v11, v24);
    _JPEGWriter::addExifFlashPixVersionIfNeeded(v13, v14, v24);
    _JPEGWriter::addExifColorSpaceIfNeeded(v15, v16, v24);
    _JPEGWriter::addExifSceneCaptureTypeIfNeeded(v17, v18, v24);
    _JPEGWriter::addTIFFYCbCrPositioningIfNeeded(v19, v20, &v25);
    _JPEGWriter::addExifComponentsConfigurationIfNeeded(v21, v22, v24);
    _JPEGWriter::addExifPixelDimensionsIfNeeded(this, v23, v24);
  }

  IIODictionary::~IIODictionary(v24);
  IIODictionary::~IIODictionary(&v25);
}

void sub_18606FE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void _JPEGWriter::syncTopLevelAndSubDictionaries(_JPEGWriter *this, IIODictionary *a2, IIODictionary *a3)
{
  ObjectForKey = IIODictionary::getObjectForKey(a2, @"Orientation");
  if (ObjectForKey)
  {
    IIODictionary::setObjectForKey(a3, ObjectForKey, @"Orientation");
  }

  v6 = IIODictionary::getObjectForKey(a2, @"DPIWidth");
  v7 = IIODictionary::getObjectForKey(a2, @"DPIHeight");
  v8 = IIODictionary::getObjectForKey(a3, @"XResolution");
  v9 = IIODictionary::getObjectForKey(a3, @"YResolution");
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v11 != 1 || v8 == 0 || v9 == 0)
  {
    if (v11)
    {
      IIODictionary::setObjectForKey(a3, v6, @"XResolution");
      v14 = a3;
      v15 = v7;
      v16 = @"YResolution";
    }

    else
    {
      v17 = v9;
      if (v8)
      {
        v18 = v9 == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        IIONumber::IIONumber(v19, 72.0);
        IIODictionary::setObjectForKey(a2, v19, @"DPIWidth");
        IIONumber::~IIONumber(v19);
        IIONumber::IIONumber(v19, 72.0);
        IIODictionary::setObjectForKey(a2, v19, @"DPIHeight");
        IIONumber::~IIONumber(v19);
        IIONumber::IIONumber(v19, 72.0);
        IIODictionary::setObjectForKey(a3, v19, @"XResolution");
        IIONumber::~IIONumber(v19);
        IIONumber::IIONumber(v19, 72.0);
        IIODictionary::setObjectForKey(a3, v19, @"YResolution");
        IIONumber::~IIONumber(v19);
        return;
      }

      IIODictionary::setObjectForKey(a2, v8, @"DPIWidth");
      v14 = a2;
      v15 = v17;
      v16 = @"DPIHeight";
    }

    IIODictionary::setObjectForKey(v14, v15, v16);
  }
}

void sub_1860700F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void _JPEGWriter::addExifVersionIfNeeded(_JPEGWriter *this, IIODictionary *a2, IIODictionary *a3)
{
  if ((IIODictionary::containsKey(a3, @"ExifVersion") & 1) == 0)
  {
    v5 = 0;
    value = 0;
    v7 = 0;
    IIOArray::IIOArray(&v5);
    IIONumber::IIONumber(v4, 2);
    IIOArray::addObject(&v5, v4);
    IIONumber::~IIONumber(v4);
    IIONumber::IIONumber(v4, 2);
    IIOArray::addObject(&v5, v4);
    IIONumber::~IIONumber(v4);
    IIONumber::IIONumber(v4, 1);
    IIOArray::addObject(&v5, v4);
    IIONumber::~IIONumber(v4);
    IIODictionary::setObjectForKey(a3, value, @"ExifVersion");
    IIOArray::~IIOArray(&v5);
  }
}

void sub_1860701E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

void _JPEGWriter::addExifFlashPixVersionIfNeeded(_JPEGWriter *this, IIODictionary *a2, IIODictionary *a3)
{
  if ((IIODictionary::containsKey(a3, @"FlashPixVersion") & 1) == 0)
  {
    v5 = 0;
    value = 0;
    v7 = 0;
    IIOArray::IIOArray(&v5);
    IIONumber::IIONumber(v4, 1);
    IIOArray::addObject(&v5, v4);
    IIONumber::~IIONumber(v4);
    IIONumber::IIONumber(v4, 0);
    IIOArray::addObject(&v5, v4);
    IIONumber::~IIONumber(v4);
    IIODictionary::setObjectForKey(a3, value, @"FlashPixVersion");
    IIOArray::~IIOArray(&v5);
  }
}

void sub_1860702C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

void _JPEGWriter::addExifColorSpaceIfNeeded(_JPEGWriter *this, IIODictionary *a2, IIODictionary *a3)
{
  if ((IIODictionary::containsKey(a3, @"ColorSpace") & 1) == 0)
  {
    IIONumber::IIONumber(v4, 1);
    IIODictionary::setObjectForKey(a3, v4, @"ColorSpace");
    IIONumber::~IIONumber(v4);
  }
}

void sub_186070360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void _JPEGWriter::addExifSceneCaptureTypeIfNeeded(_JPEGWriter *this, IIODictionary *a2, IIODictionary *a3)
{
  if ((IIODictionary::containsKey(a3, @"SceneCaptureType") & 1) == 0)
  {
    IIONumber::IIONumber(v4, 0);
    IIODictionary::setObjectForKey(a3, v4, @"SceneCaptureType");
    IIONumber::~IIONumber(v4);
  }
}

void sub_1860703DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void _JPEGWriter::addTIFFYCbCrPositioningIfNeeded(_JPEGWriter *this, IIODictionary *a2, IIODictionary *a3)
{
  if ((IIODictionary::containsKey(a3, @"_YCbCrPositioning") & 1) == 0)
  {
    IIONumber::IIONumber(v4, 1);
    IIODictionary::setObjectForKey(a3, v4, @"_YCbCrPositioning");
    IIONumber::~IIONumber(v4);
  }
}

void sub_186070458(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void _JPEGWriter::addExifComponentsConfigurationIfNeeded(_JPEGWriter *this, IIODictionary *a2, IIODictionary *a3)
{
  if ((IIODictionary::containsKey(a3, @"ComponentsConfiguration") & 1) == 0)
  {
    IIONumber::IIONumber(v4, 16909056);
    IIODictionary::setObjectForKey(a3, v4, @"ComponentsConfiguration");
    IIONumber::~IIONumber(v4);
  }
}

void sub_1860704D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void _JPEGWriter::addExifPixelDimensionsIfNeeded(_JPEGWriter *this, IIODictionary *a2, IIODictionary *a3)
{
  if (*(this + 10) && (!IIODictionary::containsKey(a3, @"PixelXDimension") || (IIODictionary::containsKey(a3, @"PixelYDimension") & 1) == 0))
  {
    *v6 = 0;
    _JPEGFile::getImageDimension(*(this + 10), &v6[1], v6, 0);
    IIONumber::IIONumber(v5, v6[1]);
    IIODictionary::setObjectForKey(a3, v5, @"PixelXDimension");
    IIONumber::~IIONumber(v5);
    IIONumber::IIONumber(v5, v6[0]);
    IIODictionary::setObjectForKey(a3, v5, @"PixelYDimension");
    IIONumber::~IIONumber(v5);
  }
}

CFTypeRef _JPEGWriter::createData(_JPEGWriter *this)
{
  v2 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFWriteStreamOpen(v2))
  {
    _JPEGWriter::writePropertiesAndData(this, v3);
    v4 = CFWriteStreamCopyProperty(v3, *MEMORY[0x1E695E900]);
    CFWriteStreamClose(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

void _JPEGWriter::writeToPath(_JPEGWriter *this, const __CFString *a2)
{
  v3 = CFURLCreateWithFileSystemPath(0, a2, kCFURLPOSIXPathStyle, 0);
  if (v3)
  {
    v4 = v3;
    v5 = CFWriteStreamCreateWithFile(0, v3);
    if (v5)
    {
      v6 = v5;
      if (CFWriteStreamOpen(v5))
      {
        _JPEGWriter::writeToPath(v6, this);
      }

      else
      {
        LogError("writeToPath", 1968, "*** ERROR: CFWriteStreamOpen failed\n");
      }

      CFRelease(v6);
    }

    else
    {
      LogError("writeToPath", 1973, "*** ERROR: CFWriteStreamCreateWithFile failed\n");
    }

    CFRelease(v4);
  }

  else
  {

    LogError("writeToPath", 1978, "*** ERROR: CFURLCreateWithFileSystemPath failed\n");
  }
}

uint64_t CGImageWriteEXIFJPEGToPath(CGImage *a1, CFDataRef theData, const __CFData *a3, const __CFString *a4, const __CFDictionary *a5)
{
  if (theData)
  {
    CFDataGetLength(theData);
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (a3)
  {
LABEL_3:
    CFDataGetLength(a3);
  }

LABEL_5:
  kdebug_trace();
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageWriteEXIFJPEGToPath", 0, 0, -1, a5);
  }

  if (!a4)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  memset(v14, 0, sizeof(v14));
  IIODictionary::IIODictionary(v14, a5);
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  _JPEGWriter::_JPEGWriter(v12, a1, theData, a3, v14, 0, 1);
  _JPEGWriter::processInput(v12);
  _JPEGWriter::writeToPath(v12, a4);
  _JPEGWriter::~_JPEGWriter(v12);
  IIODictionary::~IIODictionary(v14);
  return kdebug_trace();
}

void sub_1860708CC(void *a1)
{
  IIODictionary::~IIODictionary((v1 - 88));
  __cxa_begin_catch(a1);
  syslog(3, "*** ERROR: ImageIO - CGImageWriteEXIFJPEGToPath failed\n");
  __cxa_end_catch();
  JUMPOUT(0x186070874);
}

uint64_t CGImageCreateEXIFJPEGData(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCreateEXIFJPEGData", 0, 0, -1, a4);
  }

  if (a2 | a3)
  {
    memset(v8, 0, sizeof(v8));
    IIODictionary::IIODictionary(v8, a4);
    operator new();
  }

  syslog(3, "*** ERROR: ImageIO - CGImageCreateEXIFJPEGData failed (jpegData and thumbnailData are nil)\n");
  kdebug_trace();
  return 0;
}

BOOL CGImageWriteEXIFJPEGWithMetadata(__CFWriteStream *a1, const __CFData *a2, const __CFData *a3, const __CFDictionary *a4, const CGImageMetadata *a5, CFErrorRef *a6)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageWriteEXIFJPEGWithMetadata", 0, 0, -1, 0);
  }

  if (a2 | a3)
  {
    memset(v17, 0, sizeof(v17));
    IIODictionary::IIODictionary(v17, a4);
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    _JPEGWriter::_JPEGWriter(v15, 0, a2, a3, v17, a5, 1);
    _JPEGWriter::processInput(v15);
    _JPEGWriter::writePropertiesAndData(v15, a1);
    v12 = CFWriteStreamCopyError(a1);
    v13 = v12 == 0;
    if (v12)
    {
      if (a6)
      {
        *a6 = v12;
      }

      else
      {
        CFRelease(v12);
      }
    }

    _JPEGWriter::~_JPEGWriter(v15);
    IIODictionary::~IIODictionary(v17);
  }

  else
  {
    v13 = 1;
  }

  kdebug_trace();
  return v13;
}

void sub_186070C9C(void *a1)
{
  IIODictionary::~IIODictionary((v2 - 88));
  __cxa_begin_catch(a1);
  CGImageMetadataCreateAndLogUTF8Error(0, 0, 0, "CGImageWriteEXIFJPEGWithMetadata failed with unknown error.", v1);
  __cxa_end_catch();
  JUMPOUT(0x186070C64);
}

BOOL CGImageCopyFileWithParameters(__CFString *a1, const __CFString *a2, const __CFDictionary *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCopyFileWithParameters", 0, 0, -1, a3);
  }

  memset(v18, 0, sizeof(v18));
  IIODictionary::IIODictionary(v18, a3);
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (v6 == CFStringGetTypeID() || v6 == CFDataGetTypeID() || v6 == CGDataProviderGetTypeID())
    {
      v7 = a2;
      if (a2 || (v7 = a1, v6 == CFStringGetTypeID()))
      {
        v17 = CFGetTypeID(v7);
        if (v17 == CFStringGetTypeID() || v17 == CFDataGetTypeID())
        {
          if (a3)
          {
            v8 = CFGetTypeID(a3);
            if (v8 == CFDictionaryGetTypeID())
            {
              if (v6 != CFStringGetTypeID())
              {
                if (v6 == CFDataGetTypeID())
                {
                  v13 = CFRetain(a1);
                }

                else
                {
                  if (v6 != CGDataProviderGetTypeID())
                  {
                    v11 = 0;
LABEL_35:
                    v14 = CGImageCopyFileWithParametersOLD(a1, a2, v18);
                    v16 = v11;
                    goto LABEL_40;
                  }

                  v13 = CGDataProviderCopyData(a1);
                }

                v12 = v13;
                v11 = 0;
LABEL_32:
                if (v12)
                {
                  operator new();
                }

                goto LABEL_35;
              }

              bzero(v20, 0x400uLL);
              memset(&v19, 0, sizeof(v19));
              if (_CFStringGetFileSystemRepresentation())
              {
                v9 = open(v20, 0, 0);
                v10 = v9;
                if ((gIIODebugFlags & 0x200000000000) != 0)
                {
                  ImageIOLog(">>> %s: opening file [%d] '%s'\n", "CGImageCopyFileWithParameters", v9, v20);
                }

                if ((v10 & 0x80000000) == 0)
                {
                  if (fstat(v10, &v19) < 0)
                  {
                    if ((gIIODebugFlags & 0x200000000000) != 0)
                    {
                      ImageIOLog("<<< %s: closing file [%d] '%s'\n", "CGImageCopyFileWithParameters", v10, v20);
                    }

                    close(v10);
                  }

                  else
                  {
                    v11 = malloc_type_malloc(v19.st_size, 0x100004077774924uLL);
                    if (v11)
                    {
                      read(v10, v11, v19.st_size);
                      if (*v11 == 255 && v11[1] == 216)
                      {
                        v12 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v11, v19.st_size, *MEMORY[0x1E695E498]);
                      }

                      else
                      {
                        v12 = 0;
                      }

                      if ((gIIODebugFlags & 0x200000000000) != 0)
                      {
                        ImageIOLog("<<< %s: closing file [%d] '%s'\n", "CGImageCopyFileWithParameters", v10, v20);
                      }

                      close(v10);
                      goto LABEL_32;
                    }

                    _cg_jpeg_mem_term("CGImageCopyFileWithParameters", 2311, "*** ERROR: cannot allocate srcBuffer [%ld bytes]\n", v19.st_size);
                  }
                }
              }
            }

            else
            {
              LogError("CGImageCopyFileWithParameters", 2264, "*** ERROR: parameters is wrong type\n");
            }
          }

          else
          {
            _cg_jpeg_mem_term("CGImageCopyFileWithParameters", 2263, "*** ERROR: no options specified?\n");
          }
        }

        else
        {
          LogError("CGImageCopyFileWithParameters", 2260, "*** ERROR: dstPath is wrong type\n");
        }
      }
    }

    else
    {
      LogError("CGImageCopyFileWithParameters", 2239, "*** ERROR: srcPath is wrong type\n");
    }
  }

  else
  {
    LogError("CGImageCopyFileWithParameters", 2232, "*** ERROR: srcPath is nil\n");
  }

  v16 = 0;
  v14 = 0;
LABEL_40:
  if (v16)
  {
    free(v16);
  }

  kdebug_trace();
  IIODictionary::~IIODictionary(v18);
  return v14;
}

void sub_186071C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    syslog(3, "*** ERROR: ImageIO - CGImageCopyFileWithParameters failed\n");
    __cxa_end_catch();
    if (!a18)
    {
      JUMPOUT(0x186071A8CLL);
    }

    JUMPOUT(0x186071A64);
  }

  _Unwind_Resume(exception_object);
}

void ExifScanner::~ExifScanner(ExifScanner *this)
{
  *this = &unk_1EF4DAE48;
  if (*(this + 81) == 1)
  {
    v1 = *(this + 4);
    if (v1)
    {
      free(v1);
    }
  }
}

{
  *this = &unk_1EF4DAE48;
  if (*(this + 81) == 1)
  {
    v1 = *(this + 4);
    if (v1)
    {
      free(v1);
    }
  }

  JUMPOUT(0x186602850);
}

uint64_t ExifScanner::setup(ExifScanner *this, uint64_t a2)
{
  *(this + 24) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 80) = 0;
  if (a2 >= 0x4000)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = a2;
  }

  *(this + 5) = v3;
  *(this + 6) = a2;
  *(this + 4) = malloc_type_malloc(v3, 0x100004077774924uLL);
  (*(*this + 16))(this);
  result = ExifScanner::read16(this);
  if (result == 65496)
  {
    result = ExifScanner::read16(this);
    if (result >= 0x100)
    {
      *(this + 80) = 1;
      if (result == 65505)
      {
        v5 = ExifScanner::read16(this);
        result = (*(*this + 32))(this, *(this + 7) + v5 + 12);
      }
    }
  }

  *(this + 7) = 0;
  return result;
}

uint64_t ExifScanner::read16(ExifScanner *this)
{
  LOWORD(v1) = 0;
  v2 = *(this + 7);
  v3 = *(this + 5);
  if ((v2 & 0x8000000000000000) == 0 && v2 < v3 - 2)
  {
    v1 = *(*(this + 4) + v2);
    v4 = bswap32(v1) >> 16;
    if (!*(this + 24))
    {
      LOWORD(v1) = v4;
    }

    v3 = v2 + 2;
  }

  *(this + 7) = v3;
  return v1;
}

unint64_t ExifScanner::read32(ExifScanner *this)
{
  v1 = 0;
  v2 = *(this + 7);
  v3 = *(this + 5);
  if ((v2 & 0x8000000000000000) == 0 && v2 < v3 - 4)
  {
    v1 = *(this + 4) + v2;
    v4 = *v1;
    v5 = *(v1 + 1);
    v6 = *(v1 + 2);
    LODWORD(v1) = *(v1 + 3);
    v7 = (v4 << 24) | (v5 << 16) | (v6 << 8) | v1;
    LODWORD(v1) = v4 | (v5 << 8) | (v6 << 16) | (v1 << 24);
    if (*(this + 24) == 1)
    {
      v1 = v1;
    }

    else
    {
      v1 = v7;
    }

    v3 = v2 + 4;
  }

  *(this + 7) = v3;
  return v1;
}

void ExifScanner::addTag(ExifScanner *this, int a2, const __CFString *a3)
{
  v6 = *(this + 7);
  v7 = ExifScanner::read16(this);
  v8 = ExifScanner::read32(this);
  v9 = v8;
  if (v7 <= 3)
  {
    if (v7 != 2)
    {
      if (v7 == 3)
      {
        v10 = ExifScanner::read16(this);
        valuePtr = v10;
        if (a2 == 274)
        {
          if ((v10 - 9) <= 0xFFF7u)
          {
            valuePtr = 1;
          }
        }

        else if (a2 == 513)
        {
          valuePtr = v10 + *(this + 32);
          *(this + 9) = valuePtr;
        }

        v23 = *MEMORY[0x1E695E480];
        p_valuePtr = &valuePtr;
        v25 = kCFNumberSInt16Type;
        goto LABEL_30;
      }

LABEL_13:
      _cg_jpeg_mem_term("addTag", 3104, "ExifScanner::addTag: unknown tag type: %d\n", v7);
      goto LABEL_32;
    }

    if (v8 < 5)
    {
      if (v8 < 2)
      {
        goto LABEL_32;
      }

      v26 = *(this + 4);
      v27 = *(this + 7);
      *(this + 7) = v27 + 4;
      if (!v26)
      {
        goto LABEL_32;
      }

      v20 = (v26 + v27);
    }

    else
    {
      v17 = ExifScanner::read32(this);
      v18 = *(this + 8);
      if ((v17 + v9 + v18) >= *(this + 5))
      {
        goto LABEL_32;
      }

      v19 = *(this + 4);
      v20 = (v19 + v18 + v17);
      if ((a2 + 28669) <= 2u && v9 == 20 && v19)
      {
        v21 = 20;
        if (!strncmp(v20, "                   ", 0x14uLL))
        {
          goto LABEL_32;
        }

LABEL_35:
        if (strnlen(v20, v21) == v9 - 1)
        {
          v28 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v20, 0x8000100u);
          if (v28)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_32;
      }

      if (!v19)
      {
        goto LABEL_32;
      }
    }

    v21 = v9;
    goto LABEL_35;
  }

  if (v7 != 4)
  {
    if (v7 == 7)
    {
      if (a2 == 37500)
      {
        v11 = ExifScanner::read32(this);
        v12 = *(this + 8);
        if ((v11 + v9 + v12) <= *(this + 5))
        {
          PropertiesFromAppleMakerNote = CreatePropertiesFromAppleMakerNote((*(this + 4) + v12 + v11), v9);
          if (PropertiesFromAppleMakerNote)
          {
            v14 = PropertiesFromAppleMakerNote;
            v15 = *(this + 2);
            ObjectForKey = IIODictionary::getObjectForKey(PropertiesFromAppleMakerNote, @"{MakerApple}");
            CFDictionaryAddValue(v15, a3, ObjectForKey);
            (*(*v14 + 8))(v14);
          }
        }
      }

      goto LABEL_32;
    }

    goto LABEL_13;
  }

  v22 = ExifScanner::read32(this);
  v30 = v22;
  if (a2 == 513)
  {
    v30 = v22 + *(this + 16);
    *(this + 9) = v30;
  }

  v23 = *MEMORY[0x1E695E480];
  p_valuePtr = &v30;
  v25 = kCFNumberSInt32Type;
LABEL_30:
  v28 = CFNumberCreate(v23, v25, p_valuePtr);
  if (v28)
  {
LABEL_31:
    v29 = v28;
    CFDictionaryAddValue(*(this + 2), a3, v28);
    CFRelease(v29);
  }

LABEL_32:
  *(this + 7) = v6 + 10;
}

void ExifScanner::handleThumbnailIFD(ExifScanner *this)
{
  v2 = ExifScanner::read16(this);
  if (*(this + 7) + 12 * v2 + 4 <= *(this + 5) && v2 != 0)
  {
    v4 = v2;
    for (i = 0; i < v4; ++i)
    {
      v6 = ExifScanner::read16(this);
      if (v6 == 514)
      {
        v7 = this;
        v8 = 514;
        v9 = @"ThumbnailSize";
      }

      else
      {
        if (v6 != 513)
        {
          *(this + 7) += 10;
          continue;
        }

        v7 = this;
        v8 = 513;
        v9 = @"ThumbnailOffset";
      }

      ExifScanner::addTag(v7, v8, v9);
    }
  }
}

void ExifScanner::handleExifIFD(ExifScanner *this)
{
  v2 = ExifScanner::read16(this);
  if (*(this + 7) + 12 * v2 + 4 <= *(this + 5) && v2 != 0)
  {
    v4 = v2;
    for (i = 0; i < v4; ++i)
    {
      v6 = ExifScanner::read16(this);
      if (v6 <= 37499)
      {
        if (v6 <= 36879)
        {
          if (v6 == 36867)
          {
            v7 = this;
            v8 = 36867;
            v9 = @"DateTimeOriginal";
          }

          else
          {
            if (v6 != 36868)
            {
LABEL_35:
              *(this + 7) += 10;
              continue;
            }

            v7 = this;
            v8 = 36868;
            v9 = @"DateTimeDigitized";
          }
        }

        else
        {
          switch(v6)
          {
            case 36880:
              v7 = this;
              v8 = 36880;
              v9 = @"OffsetTime";
              break;
            case 36881:
              v7 = this;
              v8 = 36881;
              v9 = @"OffsetTimeOriginal";
              break;
            case 36882:
              v7 = this;
              v8 = 36882;
              v9 = @"OffsetTimeDigitized";
              break;
            default:
              goto LABEL_35;
          }
        }
      }

      else if (v6 > 37521)
      {
        switch(v6)
        {
          case 37522:
            v7 = this;
            v8 = 37522;
            v9 = @"SubsecTimeDigitized";
            break;
          case 40962:
            v7 = this;
            v8 = 40962;
            v9 = @"PixelXDimension";
            break;
          case 40963:
            v7 = this;
            v8 = 40963;
            v9 = @"PixelYDimension";
            break;
          default:
            goto LABEL_35;
        }
      }

      else
      {
        switch(v6)
        {
          case 37500:
            v7 = this;
            v8 = 37500;
            v9 = @"{MakerApple}";
            break;
          case 37520:
            v7 = this;
            v8 = 37520;
            v9 = @"SubsecTime";
            break;
          case 37521:
            v7 = this;
            v8 = 37521;
            v9 = @"SubsecTimeOriginal";
            break;
          default:
            goto LABEL_35;
        }
      }

      ExifScanner::addTag(v7, v8, v9);
    }
  }
}

void ExifScanner::handleIFD(ExifScanner *this)
{
  v2 = ExifScanner::read16(this);
  if (*(this + 7) + 12 * v2 + 4 <= *(this + 5))
  {
    v3 = v2;
    if (v2)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = ExifScanner::read16(this);
        if (v5 <= 273)
        {
          switch(v5)
          {
            case 256:
              v6 = this;
              v7 = 256;
              v8 = @"PixelWidth";
              goto LABEL_24;
            case 257:
              v6 = this;
              v7 = 257;
              v8 = @"PixelHeight";
              goto LABEL_24;
            case 258:
              v6 = this;
              v7 = 258;
              v8 = @"Depth";
              goto LABEL_24;
          }
        }

        else if (v5 > 305)
        {
          if (v5 == 306)
          {
            v6 = this;
            v7 = 306;
            v8 = @"DateTime";
            goto LABEL_24;
          }

          if (v5 == 34665)
          {
            ExifScanner::read16(this);
            ExifScanner::read32(this);
            v9 = ExifScanner::read32(this);
            if (v9)
            {
              v10 = *(this + 7);
              v11 = *(this + 8) + v9;
              *(this + 7) = v11;
              if (v11 < *(this + 5))
              {
                ExifScanner::handleExifIFD(this);
              }

              *(this + 7) = v10;
            }

            continue;
          }
        }

        else
        {
          if (v5 == 274)
          {
            v6 = this;
            v7 = 274;
            v8 = @"Orientation";
            goto LABEL_24;
          }

          if (v5 == 277)
          {
            v6 = this;
            v7 = 277;
            v8 = @"SamplesPerPixel";
LABEL_24:
            ExifScanner::addTag(v6, v7, v8);
            continue;
          }
        }

        *(this + 7) += 10;
      }
    }

    v12 = ExifScanner::read32(this);
    if (v12)
    {
      v13 = *(this + 7);
      v14 = *(this + 8) + v12;
      *(this + 7) = v14;
      if (v14 < *(this + 5))
      {
        ExifScanner::handleThumbnailIFD(this);
      }

      *(this + 7) = v13;
    }
  }
}

void ExifScanner::addExifMetaData(ExifScanner *this, unsigned __int16 a2, uint64_t a3)
{
  *(this + 7) = a3 + 8;
  *(this + 8) = a3 + 8;
  if (a3 + 18 <= *(this + 5))
  {
    *(this + 24) = ExifScanner::read16(this) == 18761;
    *(this + 7) += 2;
    *(this + 7) = *(this + 8) + ExifScanner::read32(this);

    ExifScanner::handleIFD(this);
  }
}

void ExifScanner::addThumbnailSizes(ExifScanner *this)
{
  v3 = *(this + 9);
  if (v3 <= *(this + 5))
  {
    v20 = v1;
    v21 = v2;
    *(this + 24) = 0;
    *(this + 7) = v3;
    if (ExifScanner::read16(this) == 65496)
    {
      v5 = ExifScanner::read16(this);
      if (*(this + 7) < *(this + 5))
      {
        v6 = v5;
        while (1)
        {
          v7 = ExifScanner::read16(this);
          if ((v6 & 0xFFFD) == 0xFFC0)
          {
            break;
          }

          *(this + 7) = *(this + 7) + v7 - 2;
          v6 = ExifScanner::read16(this);
          if (*(this + 7) >= *(this + 5))
          {
            return;
          }
        }

        v8 = *(this + 7);
        if (v8 + 6 < *(this + 5))
        {
          v9 = *(this + 4);
          *(this + 7) = v8 + 1;
          v10 = *(v9 + v8);
          v17 = ExifScanner::read16(this);
          v18 = ExifScanner::read16(this);
          v11 = *(this + 4);
          v12 = *(this + 7);
          *(this + 7) = v12 + 1;
          valuePtr = *(v11 + v12) * v10;
          v13 = *MEMORY[0x1E695E480];
          v14 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
          CFDictionaryAddValue(*(this + 2), @"BitsPerPixel", v14);
          CFRelease(v14);
          v15 = CFNumberCreate(v13, kCFNumberSInt16Type, &v18);
          CFDictionaryAddValue(*(this + 2), @"ThumbnailWidth", v15);
          CFRelease(v15);
          v16 = CFNumberCreate(v13, kCFNumberSInt16Type, &v17);
          CFDictionaryAddValue(*(this + 2), @"ThumbnailHeight", v16);
          CFRelease(v16);
        }
      }
    }
  }
}

void ExifScannerDP::ExifScannerDP(ExifScannerDP *this, CGDataProviderSequentialCallbacks *a2, void *a3, uint64_t a4)
{
  *(this + 81) = 1;
  *this = &unk_1EF4DAE80;
  *(this + 2) = 0;
  v4 = *&a2->version;
  releaseInfo = a2->releaseInfo;
  *(this + 104) = *&a2->skipForward;
  *(this + 88) = v4;
  *(this + 15) = releaseInfo;
  *(this + 16) = a3;
  ExifScanner::setup(this, a4);
}

void sub_186072C04(_Unwind_Exception *exception_object)
{
  *v1 = &unk_1EF4DAE48;
  if (*(v1 + 81) == 1)
  {
    v3 = *(v1 + 32);
    if (v3)
    {
      free(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void ExifScannerDP::~ExifScannerDP(ExifScannerDP *this)
{
  *this = &unk_1EF4DAE48;
  if (*(this + 81) == 1)
  {
    v1 = *(this + 4);
    if (v1)
    {
      free(v1);
    }
  }
}

{
  *this = &unk_1EF4DAE48;
  if (*(this + 81) == 1)
  {
    v1 = *(this + 4);
    if (v1)
    {
      free(v1);
    }
  }

  JUMPOUT(0x186602850);
}

unint64_t ExifScannerDP::fillBuffer(ExifScannerDP *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v2(*(this + 16));
  }

  v3 = *(this + 12);
  if (v3)
  {
    v4 = v3(*(this + 16), *(this + 4), *(this + 5));
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 5);
  if (v4 < v5)
  {
    LogError("fillBuffer", 3455, "*** ERROR: 'getBytes' returned %zu bytes (expected: %zu bytes)", v4, v5);
  }

  return v4;
}

void ExifScannerCFData::ExifScannerCFData(ExifScannerCFData *this, CFTypeRef cf, int a3, __CFDictionary *a4)
{
  *(this + 2) = 0;
  *(this + 81) = 1;
  *this = &unk_1EF4DAEB8;
  *(this + 2) = a4;
  *(this + 11) = CFRetain(cf);
  *(this + 24) = a3;
  Length = CFDataGetLength(cf);
  ExifScannerCFData::setupCF(this, Length);
}

void sub_186072E38(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 81) == 1)
  {
    v4 = *(v1 + 32);
    if (v4)
    {
      free(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

const UInt8 *ExifScannerCFData::setupCF(ExifScannerCFData *this, uint64_t a2)
{
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 81) = 0;
  *(this + 5) = a2;
  result = CFDataGetBytePtr(*(this + 11));
  v4 = 0;
  *(this + 4) = result;
  if (*result == 255)
  {
    v4 = result[1] == 216;
  }

  *(this + 80) = v4;
  return result;
}

void ExifScannerCFData::ExifScannerCFData(ExifScannerCFData *this, CFTypeRef cf)
{
  *(this + 2) = 0;
  *(this + 81) = 1;
  *this = &unk_1EF4DAEB8;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 11) = CFRetain(cf);
  Length = CFDataGetLength(cf);
  ExifScannerCFData::setupCF(this, Length);
}

void sub_186072F64(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (*(v1 + 81) == 1)
  {
    v4 = *(v1 + 32);
    if (v4)
    {
      free(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void ExifScannerCFData::~ExifScannerCFData(CFTypeRef *this)
{
  *this = &unk_1EF4DAEB8;
  CFRelease(this[11]);
  *this = &unk_1EF4DAE48;
  if (*(this + 81) == 1)
  {
    v2 = this[4];
    if (v2)
    {
      free(v2);
    }
  }
}

{
  ExifScannerCFData::~ExifScannerCFData(this);

  JUMPOUT(0x186602850);
}

__CFDictionary *_copyMetadataFromFileAtPath(const char *a1, off_t st_size)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = open(a1, 0, 0);
  v5 = v4;
  if ((gIIODebugFlags & 0x200000000000) != 0)
  {
    ImageIOLog(">>> %s: opening file [%d] '%s'\n", "_copyMetadataFromFileAtPath", v4, a1);
  }

  memset(v20, 0, sizeof(v20));
  if (v5 < 0)
  {
    Mutable = 0;
    if (v5 == -1)
    {
      return Mutable;
    }

    goto LABEL_19;
  }

  fcntl(v5, 48, 1);
  fcntl(v5, 62, 1);
  if (!st_size)
  {
    memset(&v19, 0, sizeof(v19));
    if (fstat(v5, &v19) < 0)
    {
      goto LABEL_18;
    }

    st_size = v19.st_size;
  }

  if (st_size >= 201)
  {
    read(v5, v20, 0x40uLL);
    v6 = lseek(v5, 0, 0);
    if (LOBYTE(v20[0]) == 255 && BYTE1(v20[0]) == 216)
    {
      operator new();
    }

    v7.i32[0] = DWORD1(v20[0]);
    v8 = vmovl_u8(v7).u64[0];
    if (vuzp1_s8(v8, v8).u32[0] == 1887007846)
    {
      ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v6);
      v10 = IIO_ReaderHandler::readerForUTType(ReaderHandler, @"public.heic");
      if (v10)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v12 = malloc_type_malloc(0x19000uLL, 0x100004077774924uLL);
        theData = 0;
        v17 = 0;
        read(v5, v12, 0x19000uLL);
        v13 = (*(*v10 + 224))(v10, v12, 102400, Mutable, &v17, &theData);
        if (theData)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14 == 1)
        {
          memset(&v19, 0, 104);
          ExifScannerCFData::ExifScannerCFData(&v19, theData, v17, Mutable);
          v15 = v17;
          CFDataGetLength(theData);
          ExifScanner::addExifMetaData(&v19, 0, v15 - 8);
          ExifScannerCFData::~ExifScannerCFData(&v19);
        }

        goto LABEL_19;
      }
    }
  }

LABEL_18:
  Mutable = 0;
LABEL_19:
  if ((gIIODebugFlags & 0x200000000000) != 0)
  {
    ImageIOLog("<<< %s: closing file [%d] '%s'\n", "_copyMetadataFromFileAtPath", v5, a1);
  }

  close(v5);
  return Mutable;
}

void sub_1860733A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ExifScannerCFData::~ExifScannerCFData(va);
  _Unwind_Resume(a1);
}

__CFDictionary *CopyMetadataFromCFData(const void *a1)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CopyMetadataFromCFData", 0, 0, -1, 0);
  }

  if (!a1)
  {
    goto LABEL_19;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDataGetTypeID())
  {
    goto LABEL_19;
  }

  Length = CFDataGetLength(a1);
  if (Length < 201)
  {
    goto LABEL_19;
  }

  v4 = Length;
  BytePtr = CFDataGetBytePtr(a1);
  v6 = BytePtr;
  v7 = *BytePtr;
  if (__PAIR64__(BytePtr[1], v7) == 0xD8000000FFLL)
  {
    operator new();
  }

  v8 = BytePtr[4];
  v9 = BytePtr[5];
  if (__PAIR64__(v9, v8) != 0x7400000066)
  {
    goto LABEL_18;
  }

  if (BytePtr[6] != 121 || BytePtr[7] != 112)
  {
    v9 = 116;
LABEL_18:
    _cg_jpeg_mem_term("CopyMetadataFromCFData", 3772, "*** ERROR: CopyMetadataFromCFData cannot handle input data ([%ld bytes] %02X %02X %02X %02X %02X %02X %02X %02X... '%c%c%c%c%c%c%c%c)'\n", v4, v7, BytePtr[1], BytePtr[2], BytePtr[3], v8, v9, BytePtr[6], BytePtr[7], v7, BytePtr[1], BytePtr[2], BytePtr[3], v8, v9, BytePtr[6], BytePtr[7]);
    goto LABEL_19;
  }

  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(BytePtr);
  v11 = IIO_ReaderHandler::readerForUTType(ReaderHandler, @"public.heic");
  if (!v11)
  {
LABEL_19:
    Mutable = 0;
    goto LABEL_20;
  }

  v20 = 0;
  v19 = 0;
  v12 = (*(*v11 + 224))(v11, v6, v4, 0, &v19, &v20);
  Mutable = 0;
  if (v12)
  {
    v14 = v20 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    ExifScannerCFData::ExifScannerCFData(v17, v20, v19, Mutable);
    v15 = v19;
    CFDataGetLength(v20);
    ExifScanner::addExifMetaData(v17, 0, v15 - 8);
    ExifScannerCFData::~ExifScannerCFData(v17);
  }

LABEL_20:
  CopyMetadataFromCFData_cold_2();
  return Mutable;
}

__CFDictionary *CopyMetadataFromSequentialDataProviderCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  IIOInitDebugFlags();
  v6 = gIIODebugFlags >> 14;
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(v6, "S", "CopyMetadataFromSequentialDataProviderCallbacks", 0, 0, -1, 0);
  }

  if (a3 < 201)
  {
    return 0;
  }

  v7.i32[1] = 0;
  memset(v25, 0, 64);
  v8 = *(a1 + 24);
  if (v8)
  {
    v6 = v8(a2);
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v6 = v9(a2, v25, 64);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    v6 = v10(a2);
  }

  if (LOBYTE(v25[0]) == 255 && BYTE1(v25[0]) == 216)
  {
    operator new();
  }

  v7.i32[0] = v25[1];
  v11 = vmovl_u8(v7).u64[0];
  if (vuzp1_s8(v11, v11).u32[0] != 1887007846)
  {
    return 0;
  }

  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v6);
  v13 = IIO_ReaderHandler::readerForUTType(ReaderHandler, @"public.heic");
  if (!v13)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v15 = malloc_type_malloc(0x19000uLL, 0x100004077774924uLL);
  theData = 0;
  v23 = 0;
  v16 = *(a1 + 8);
  if (v16)
  {
    v16(a2, v15, 102400);
  }

  v17 = (*(*v13 + 224))(v13, v15, 102400, Mutable, &v23, &theData);
  if (theData)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 == 1)
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    ExifScannerCFData::ExifScannerCFData(v21, theData, v23, Mutable);
    v19 = v23;
    CFDataGetLength(theData);
    ExifScanner::addExifMetaData(v21, 0, v19 - 8);
    ExifScannerCFData::~ExifScannerCFData(v21);
  }

  return Mutable;
}

void sub_1860739A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ExifScannerCFData::~ExifScannerCFData(va);
  _Unwind_Resume(a1);
}

__CFDictionary *CGCopyBasicPropertiesOfImageAtPath(const char *a1, const __CFDictionary *a2)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGCopyBasicPropertiesOfImageAtPath", 0, a1, -1, a2);
  }

  if (a2 && (Value = CFDictionaryGetValue(a2, @"size")) != 0)
  {
    v5 = Value;
    Type = CFNumberGetType(Value);
    v7 = 0;
    if (Type > kCFNumberSInt16Type)
    {
      if (Type == kCFNumberSInt32Type)
      {
        v11 = 0;
        CFNumberGetValue(v5, kCFNumberSInt32Type, &v11);
        v7 = v11;
      }

      else if (Type == kCFNumberSInt64Type)
      {
        v10 = 0;
        CFNumberGetValue(v5, kCFNumberSInt64Type, &v10);
        v7 = v10;
      }
    }

    else if (Type == kCFNumberSInt8Type)
    {
      v13 = 0;
      CFNumberGetValue(v5, kCFNumberSInt8Type, &v13);
      v7 = v13;
    }

    else if (Type == kCFNumberSInt16Type)
    {
      valuePtr = 0;
      CFNumberGetValue(v5, kCFNumberSInt16Type, &valuePtr);
      v7 = valuePtr;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = _copyMetadataFromFileAtPath(a1, v7);
  kdebug_trace();
  return v8;
}

uint64_t CGImageCreateEXIFDataFromProperties(const __CFDictionary *a1, const __CFDictionary *a2)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCreateEXIFDataFromProperties", 0, 0, -1, a2);
  }

  memset(v6, 0, sizeof(v6));
  IIODictionary::IIODictionary(v6, a1);
  memset(v5, 0, sizeof(v5));
  IIODictionary::IIODictionary(v5, a2);
  if (IIODictionary::containsKey(v5, @"kCGImageEXIFDataIncludeEXIFHeader"))
  {
    IIODictionary::getBoolForKey(v5, @"kCGImageEXIFDataIncludeEXIFHeader");
  }

  if (IIODictionary::containsKey(v5, @"kCGImageEXIFDataAddMissingTags"))
  {
    IIODictionary::getBoolForKey(v5, @"kCGImageEXIFDataAddMissingTags");
    if (!a1)
    {
      goto LABEL_10;
    }

LABEL_9:
    operator new();
  }

  if (a1)
  {
    goto LABEL_9;
  }

LABEL_10:
  LogError("CGImageCreateEXIFDataFromProperties", 4001, "*** ERROR: CGImageCreateEXIFDataFromProperties failed (properties is nil)\n");
  kdebug_trace();
  IIODictionary::~IIODictionary(v5);
  IIODictionary::~IIODictionary(v6);
  return 0;
}

void std::vector<_APPx *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

uint64_t TIFFInitZIP(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 8 && a2 != 32946)
  {
    TIFFInitZIP_cold_1();
  }

  if (_TIFFMergeFields(a1, zipFields, 2, a4, a5, a6, a7, a8))
  {
    v14 = malloc_type_calloc(0x110uLL, 1uLL, 0x100004077774924uLL);
    a1[137] = v14;
    if (v14)
    {
      *(v14 + 54) = 0;
      *(v14 + 26) = 0;
      *(v14 + 12) = 0u;
      *(v14 + 32) = a1[161];
      a1[161] = ZIPVGetField;
      *(v14 + 33) = a1[160];
      a1[160] = ZIPVSetField;
      *(v14 + 244) = 0xFFFFFFFFLL;
      *(v14 + 63) = 0;
      a1[119] = ZIPFixupTags;
      a1[120] = ZIPSetupDecode;
      a1[121] = ZIPPreDecode;
      a1[126] = ZIPDecode;
      a1[128] = ZIPDecode;
      a1[130] = ZIPDecode;
      a1[122] = ZIPSetupEncode;
      a1[124] = ZIPPreEncode;
      a1[125] = ZIPPostEncode;
      a1[127] = ZIPEncode;
      a1[129] = ZIPEncode;
      a1[131] = ZIPEncode;
      a1[134] = ZIPCleanup;
      TIFFPredictorInit(a1, v15, v16, v9, v10, v11, v12, v13);
      return 1;
    }

    v18 = "No space for ZIP state block";
  }

  else
  {
    v18 = "Merging Deflate codec-specific tags failed";
  }

  TIFFErrorExtR(a1, "TIFFInitZIP", v18, v9, v10, v11, v12, v13, v19);
  return 0;
}

uint64_t ZIPVGetField(uint64_t a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1096);
  if (a2 == 65570)
  {
    v4 = *(v3 + 252);
    goto LABEL_5;
  }

  if (a2 == 65557)
  {
    v4 = *(v3 + 244);
LABEL_5:
    **a3 = v4;
    return 1;
  }

  return (*(v3 + 256))();
}

uint64_t ZIPVSetField(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1096);
  if (a2 == 65570)
  {
    v11 = *a3;
    *(v9 + 252) = *a3;
    if (v11 >= 2)
    {
      v12 = "Invalid DeflateCodec value.";
    }

    else
    {
      if (v11 != 1)
      {
        return 1;
      }

      v12 = "DeflateCodec = DEFLATE_SUBCODEC_LIBDEFLATE unsupported in this build";
    }

    TIFFErrorExtR(a1, "ZIPVSetField", v12, a4, a5, a6, a7, a8, v22);
    return 0;
  }

  if (a2 == 65557)
  {
    v10 = *a3;
    *(v9 + 244) = *a3;
    if ((v10 - 13) <= 0xFFFFFFF1)
    {
      TIFFErrorExtR(a1, "ZIPVSetField", "Invalid ZipQuality value. Should be in [-1,%d] range", a4, a5, a6, a7, a8, 12);
      return 0;
    }

    if ((*(v9 + 248) & 2) != 0)
    {
      v15 = v10 >= 9 ? 9 : v10;
      if (deflateParams((v9 + 128), v15, 0))
      {
        v21 = *(v9 + 176);
        if (!v21)
        {
          v21 = "";
        }

        TIFFErrorExtR(a1, "ZIPVSetField", "ZLib error: %s", v16, v17, v18, v19, v20, v21);
        return 0;
      }
    }

    return 1;
  }

  v13 = *(v9 + 264);

  return v13();
}

uint64_t ZIPSetupDecode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    ZIPSetupDecode_cold_1();
  }

  v3 = *(v1 + 248);
  if ((v3 & 2) != 0)
  {
    deflateEnd((v1 + 128));
    *(v1 + 248) = 0;
  }

  else if (v3)
  {
    goto LABEL_11;
  }

  if (!inflateInit_((v1 + 128), "1.2.12", 112))
  {
    v3 = *(v1 + 248);
LABEL_11:
    *(v1 + 248) = v3 | 1;
    return 1;
  }

  v9 = *(v1 + 176);
  if (!v9)
  {
    v9 = "";
  }

  TIFFErrorExtR(a1, "ZIPSetupDecode", "%s", v4, v5, v6, v7, v8, v9);
  return 0;
}

uint64_t ZIPPreDecode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    ZIPPreDecode_cold_1();
  }

  if ((*(v1 + 248) & 1) == 0)
  {
    (*(a1 + 960))(a1);
  }

  *(v1 + 128) = *(a1 + 1120);
  v3 = *(a1 + 1160);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  *(v1 + 136) = v3;
  if (inflateReset((v1 + 128)))
  {
    return 0;
  }

  *(v1 + 240) = 0;
  return 1;
}

uint64_t ZIPDecode(uint64_t a1, void *a2, size_t a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    ZIPDecode_cold_2();
  }

  if (*(v3 + 248) != 1)
  {
    ZIPDecode_cold_1();
  }

  v4 = a3;
  if (*(v3 + 240))
  {
    bzero(a2, a3);
    TIFFErrorExtR(a1, "ZIPDecode", "ZIPDecode: Scanline %u cannot be read due to previous error", v6, v7, v8, v9, v10, *(a1 + 876));
    return 0;
  }

  *(v3 + 128) = *(a1 + 1152);
  *(v3 + 152) = a2;
  v12 = *(a1 + 1160);
  while (1)
  {
    v13 = HIDWORD(v12) ? -1 : v12;
    v14 = v4 >= 0xFFFFFFFF ? -1 : v4;
    *(v3 + 136) = v13;
    *(v3 + 160) = v14;
    v15 = inflate((v3 + 128), 1);
    v12 = *(a1 + 1160) - (v13 - *(v3 + 136));
    *(a1 + 1160) = v12;
    v21 = *(v3 + 160);
    v4 -= (v14 - v21);
    if (v15)
    {
      break;
    }

    if (v4 <= 0)
    {
      goto LABEL_18;
    }
  }

  if (v15 != 1)
  {
    if (v15 == -3)
    {
      bzero(*(v3 + 152), v21);
      TIFFErrorExtR(a1, "ZIPDecode", "Decoding error at scanline %lu, %s", v22, v23, v24, v25, v26, *(a1 + 876));
    }

    else
    {
      bzero(*(v3 + 152), v21);
      v32 = *(v3 + 176);
      if (!v32)
      {
        v32 = "";
      }

      TIFFErrorExtR(a1, "ZIPDecode", "ZLib error: %s", v27, v28, v29, v30, v31, v32);
    }

    goto LABEL_23;
  }

LABEL_18:
  if (v4)
  {
    TIFFErrorExtR(a1, "ZIPDecode", "Not enough data at scanline %lu (short %llu bytes)", v16, v17, v18, v19, v20, *(a1 + 876));
    bzero(*(v3 + 152), *(v3 + 160));
LABEL_23:
    result = 0;
    *(v3 + 240) = 1;
    return result;
  }

  *(a1 + 1152) = *(v3 + 128);
  return 1;
}

uint64_t ZIPSetupEncode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    ZIPSetupEncode_cold_1();
  }

  if (*(v1 + 248))
  {
    inflateEnd((v1 + 128));
    *(v1 + 248) = 0;
  }

  if (*(v1 + 244) >= 9)
  {
    v3 = 9;
  }

  else
  {
    v3 = *(v1 + 244);
  }

  if (deflateInit_((v1 + 128), v3, "1.2.12", 112))
  {
    v9 = *(v1 + 176);
    if (!v9)
    {
      v9 = "";
    }

    TIFFErrorExtR(a1, "ZIPSetupEncode", "%s", v4, v5, v6, v7, v8, v9);
    return 0;
  }

  else
  {
    *(v1 + 248) |= 2u;
    return 1;
  }
}

BOOL ZIPPreEncode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    ZIPPreEncode_cold_1();
  }

  if (*(v1 + 248) != 2)
  {
    (*(a1 + 976))(a1);
  }

  *(v1 + 152) = *(a1 + 1120);
  v3 = *(a1 + 1128);
  if (HIDWORD(v3))
  {
    LODWORD(v3) = -1;
  }

  *(v1 + 160) = v3;
  return deflateReset((v1 + 128)) == 0;
}

uint64_t ZIPPostEncode(void *a1)
{
  v2 = a1[137];
  *(v2 + 136) = 0;
  while (1)
  {
    v3 = deflate((v2 + 128), 4);
    if (v3 > 1)
    {
      break;
    }

    v11 = v3;
    v12 = a1[141] - *(v2 + 160);
    if (v12)
    {
      a1[145] = v12;
      result = TIFFFlushData1(a1, v4, v5, v6, v7, v8, v9, v10);
      if (!result)
      {
        return result;
      }

      *(v2 + 152) = a1[140];
      v14 = a1[141];
      if (HIDWORD(v14))
      {
        LODWORD(v14) = -1;
      }

      *(v2 + 160) = v14;
    }

    if (v11 == 1)
    {
      return 1;
    }
  }

  v15 = *(v2 + 176);
  if (!v15)
  {
    v15 = "";
  }

  TIFFErrorExtR(a1, "ZIPPostEncode", "ZLib error: %s", v6, v7, v8, v9, v10, v15);
  return 0;
}

uint64_t ZIPEncode(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a1[137];
  if (!v3)
  {
    ZIPEncode_cold_2();
  }

  if (*(v3 + 248) != 2)
  {
    ZIPEncode_cold_1();
  }

  *(v3 + 128) = a2;
  while (1)
  {
    v6 = HIDWORD(a3) ? -1 : a3;
    *(v3 + 136) = v6;
    if (deflate((v3 + 128), 0))
    {
      break;
    }

    if (!*(v3 + 160))
    {
      a1[145] = a1[141];
      result = TIFFFlushData1(a1, v7, v8, v9, v10, v11, v12, v13);
      if (!result)
      {
        return result;
      }

      *(v3 + 152) = a1[140];
      v15 = a1[141];
      if (HIDWORD(v15))
      {
        LODWORD(v15) = -1;
      }

      *(v3 + 160) = v15;
    }

    v16 = (v6 - *(v3 + 136));
    v17 = a3 <= v16;
    a3 -= v16;
    if (v17)
    {
      return 1;
    }
  }

  v18 = *(v3 + 176);
  if (!v18)
  {
    v18 = "";
  }

  TIFFErrorExtR(a1, "ZIPEncode", "Encoder error: %s", v9, v10, v11, v12, v13, v18);
  return 0;
}

uint64_t ZIPCleanup(void *a1)
{
  v1 = a1[137];
  if (!v1)
  {
    ZIPCleanup_cold_1();
  }

  TIFFPredictorCleanup(a1);
  v3 = *(v1 + 264);
  a1[161] = *(v1 + 256);
  a1[160] = v3;
  v4 = *(v1 + 248);
  if ((v4 & 2) != 0)
  {
    deflateEnd((v1 + 128));
  }

  else if (v4)
  {
    inflateEnd((v1 + 128));
  }

  free(v1);
  a1[137] = 0;

  return _TIFFSetDefaultCompressionState(a1);
}

void ImageIOSetLoggingProc(void (*a1)(int a1, const char *a2, const char *a3, int a4, const char *a5, va_list a6))
{
  IIOInitDebugFlags();
  if (!a1 || (IIO_OSAppleInternalBuild() & 1) == 0)
  {
    a1 = ImageIOLogger;
  }

  gImageIOLogProc = a1;
}

const char *LogModuleWithArguments(const char *result, const char *a2, char *a3)
{
  if (gImageIOLogProc)
  {
    return gImageIOLogProc(0, result, 0, 0, a2, a3);
  }

  return result;
}

const char *LogFault(const char *result, int a2, const char *a3, ...)
{
  va_start(va, a3);
  if (gImageIOLogProc)
  {
    return gImageIOLogProc(17, 0, result, a2, a3, va);
  }

  return result;
}

void IIOLogAndCreateError(__CFError **a1, const __CFString *a2, CFIndex a3, const char *a4, int a5, const char *a6, ...)
{
  va_start(va, a6);
  va_copy(v15, va);
  if (gImageIOLogProc)
  {
    gImageIOLogProc(16, "*** ERROR: ", a4, a5, a6, v15);
  }

  if (a1)
  {
    v10 = *MEMORY[0x1E695E480];
    IIOString::IIOString(&v12, a6);
    v11 = CFStringCreateWithFormatAndArguments(v10, 0, v14, v15);
    IIOString::~IIOString(&v12);
    v12 = 0;
    userInfo = 0;
    v14 = 0;
    IIODictionary::IIODictionary(&v12);
    IIODictionary::setObjectForKey(&v12, v11, *MEMORY[0x1E695E620]);
    *a1 = CFErrorCreate(v10, a2, a3, userInfo);
    IIODictionary::~IIODictionary(&v12);
  }
}

const char *LogWarning(const char *result, int a2, const char *a3, ...)
{
  va_start(va, a3);
  if (gImageIOLogProc)
  {
    return gImageIOLogProc(0, 0, result, a2, a3, va);
  }

  return result;
}

const char *ImageIOLog(const char *result, ...)
{
  va_start(va, result);
  if (gImageIOLogProc)
  {
    return gImageIOLogProc(0, 0, 0, 0, result, va);
  }

  return result;
}

void IIOWriteStream::IIOWriteStream(IIOWriteStream *this, unsigned __int8 *a2, uint64_t a3, char a4)
{
  *this = &unk_1EF4DAF70;
  *(this + 1) = a2;
  *(this + 32) = a4;
  *(this + 2) = a3;
  *(this + 3) = 0;
}

uint64_t IIOWriteStream::write16(uint64_t this, __int16 a2)
{
  v2 = __rev16(a2);
  if (*(this + 32))
  {
    v3 = a2;
  }

  else
  {
    v3 = v2;
  }

  *(*(this + 8) + *(this + 24)) = v3;
  *(this + 24) += 2;
  return this;
}

uint64_t IIOWriteStream::write32(uint64_t this, unsigned int a2)
{
  v2 = bswap32(a2);
  if (*(this + 32))
  {
    v3 = a2;
  }

  else
  {
    v3 = v2;
  }

  *(*(this + 8) + *(this + 24)) = v3;
  *(this + 24) += 4;
  return this;
}

uint64_t IIOWriteStream::write64(uint64_t this, unint64_t a2)
{
  v2 = bswap64(a2);
  if (*(this + 32))
  {
    v3 = a2;
  }

  else
  {
    v3 = v2;
  }

  *(*(this + 8) + *(this + 24)) = v3;
  *(this + 24) += 8;
  return this;
}

void *IIOWriteStream::writeBytes(IIOWriteStream *this, unsigned __int8 *a2, size_t a3)
{
  result = memcpy((*(this + 1) + *(this + 3)), a2, a3);
  *(this + 3) += a3;
  return result;
}

uint64_t CGImageMetadataPropertyGetTypeID()
{
  if (qword_1ED569DE0 != -1)
  {
    CGImageMetadataPropertyGetTypeID_cold_1();
  }

  return _MergedGlobals_2;
}

double _CGImageMetadataPropertyFinalize(CFTypeRef cf)
{
  v2 = (gIIODebugFlags >> 12) & 3;
  if (v2)
  {
    ImageIODebugOptions(v2, "A", "_CGImageMetadataPropertyFinalize", cf, 0, -1, 0);
  }

  v3 = *(cf + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  *(cf + 2) = 0;
  v4 = *(cf + 3);
  if (v4)
  {
    CFRelease(v4);
  }

  *(cf + 3) = 0;
  v5 = *(cf + 4);
  if (v5)
  {
    CFRelease(v5);
  }

  *(cf + 4) = 0;
  v6 = *(cf + 5);
  if (v6)
  {
    CFRelease(v6);
  }

  *(cf + 6) = 0;
  result = 0.0;
  *(cf + 1) = 0u;
  *(cf + 2) = 0u;
  return result;
}

CFStringRef _CGImageMetadataPropertyCopyDebugDesc(CFTypeRef cf)
{
  if (*(cf + 3) && *(cf + 4) && *(cf + 5))
  {
    v2 = CFGetAllocator(cf);
    return CFStringCreateWithFormat(v2, 0, @"<CGImageMetadataProperty %p> (schema = %@, name = %@, value = %@)", cf, *(cf + 3), *(cf + 4), *(cf + 5));
  }

  else
  {
    v4 = CFGetAllocator(cf);

    return CFStringCreateCopy(v4, @"<CGImageMetadataProperty> (invalid)");
  }
}

uint64_t __CGImageMetadataPropertyGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  _MergedGlobals_2 = result;
  return result;
}

void BMPWritePlugin::~BMPWritePlugin(BMPWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

vImage_Error BMPWritePlugin::writeOneImage(BMPWritePlugin *this, CGImageRef image, IIODictionary *a3, IIODictionary *a4)
{
  Height = CGImageGetHeight(image);
  if (_ImageHasRealAlphaChannel(image) && (!IIODictionary::containsKey(a3, @"kCGImageDestinationAllowAlpha") || IIODictionary::getBoolForKey(a3, @"kCGImageDestinationAllowAlpha")))
  {
    v8 = 3;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  BMPWritePlugin::writePrefix(this, image, a3, v9);
  memset(v22, 0, sizeof(v22));
  IIODictionary::IIODictionary(v22);
  IIONumber::IIONumber(v20, *(this + 5));
  IIODictionary::setObjectForKey(v22, v20, @"DestinationRowBytes");
  IIONumber::~IIONumber(v20);
  *&v21.renderingIntent = 0;
  if (v9)
  {
    v10 = 32;
  }

  else
  {
    v10 = 24;
  }

  v21.bitsPerComponent = 8;
  v21.bitsPerPixel = v10;
  IIOColorSpace::IIOColorSpace(v20, *MEMORY[0x1E695F1C0]);
  v21.colorSpace = v20[1];
  IIOColorSpace::~IIOColorSpace(v20);
  v21.bitmapInfo = v8;
  *&v21.version = 0uLL;
  memset(v20, 0, sizeof(v20));
  IIOPixelProvider::IIOPixelProvider(v20, image, &v21, v22);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZN14BMPWritePlugin13writeOneImageEP7CGImageP13IIODictionaryS3_j_block_invoke;
  v14[3] = &unk_1E6F0B430;
  v15 = v21;
  v14[4] = &v16;
  v14[5] = this;
  v11 = IIOPixelProvider::iterateOverImage(v20, 0, Height, 16, v14);
  v12 = v17[3];
  if (v12)
  {
    free(v12);
    v17[3] = 0;
  }

  _Block_object_dispose(&v16, 8);
  IIOPixelProvider::~IIOPixelProvider(v20);
  IIODictionary::~IIODictionary(v22);
  return v11;
}

void sub_186075110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  IIOPixelProvider::~IIOPixelProvider(va1);
  IIODictionary::~IIODictionary((v13 - 88));
  _Unwind_Resume(a1);
}

size_t ___ZN14BMPWritePlugin13writeOneImageEP7CGImageP13IIODictionaryS3_j_block_invoke(uint64_t a1, int a2, vImage_Buffer *src)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 52);
  if (v5 == 32)
  {
    LODWORD(dest.data) = 50331906;
    vImagePermuteChannels_ARGB8888(src, src, &dest, 0);
    v7 = *(v4 + 16);
    rowBytes = src->rowBytes;
    data = src->data;
    height = src->height;
    return IIOImageWriteSession::putBytes(v7, data, height * rowBytes);
  }

  if (v5 == 24)
  {
    v17 = 0;
    *permuteMap = 258;
    *(*(*(a1 + 32) + 8) + 24) = reallocf(*(*(*(a1 + 32) + 8) + 24), src->height * src->rowBytes);
    dest.data = *(*(*(a1 + 32) + 8) + 24);
    *&dest.height = *&src->height;
    dest.rowBytes = src->rowBytes;
    vImagePermuteChannels_RGB888(src, &dest, permuteMap, 0);
    v7 = *(v4 + 16);
    data = *(*(*(a1 + 32) + 8) + 24);
    rowBytes = dest.rowBytes;
    height = dest.height;
    return IIOImageWriteSession::putBytes(v7, data, height * rowBytes);
  }

  v12 = *(v4 + 16);
  v13 = src->data;
  v14 = src->height * src->rowBytes;

  return IIOImageWriteSession::putBytes(v12, v13, v14);
}

vImage_Error BMPWritePlugin::WriteImageWithSession(BMPWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3, CGImage *a4, IIODictionary *a5, IIODictionary *a6)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  IIOWritePlugin::IIOWritePlugin(v13, this, a2, 1112363040);
  *&v13[0] = &unk_1EF4DB040;
  LOBYTE(v14) = 1;
  v9 = BMPWritePlugin::writeOneImage(v13, a3, a4, v8);
  _cg_jpeg_mem_term(v13, v10, v11);
  return v9;
}

void sub_18607533C(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _cg_jpeg_mem_term(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186075324);
}

const char *ASTCTwiddler::ASTCTwiddlerImpl::copyFromTextureDataImp(ASTCTwiddler::ASTCTwiddlerImpl *this, const void *a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v7 = *(this + 7);
  memset(v11, 0, sizeof(v11));
  v8 = vshlq_u64(*(this + 8), vnegq_s64(vdupq_n_s64(a6)));
  v9 = vcgtq_u64(v8, vdupq_n_s64(1uLL));
  v12 = vsubq_s64(vandq_s8(v8, v9), vmvnq_s8(v9));
  v13 = 1;
  [v7 copyFromTextureMemory:a2 textureSlice:0 textureLevel:a6 textureRegion:v11 toLinearBytes:a3 linearOffset:a4 linearBytesPerRow:a5 linearBytesPerImage:0];
  return ASTCTwiddler::ASTCTwiddlerImpl::finalizeTwiddlingImp(this);
}

void ASTCTwiddler::ASTCTwiddlerImpl::decodeAndCopyFromLinearDataImp(ASTCTwiddler::ASTCTwiddlerImpl *this, unsigned __int8 *a2, size_t a3, size_t size, int a5)
{
  if (*(this + 1) >> a5 <= 1uLL)
  {
    v6 = 1;
  }

  else
  {
    v6 = *(this + 1) >> a5;
  }

  if (size)
  {
    memset(&stream, 0, sizeof(stream));
    v11 = malloc_type_malloc(size, 0x100004077774924uLL);
    *gCrashMessage = 0;
    snprintf(gCrashMessage, 0x200uLL, "LZFSE->TW_ASTC:  src: %p (%ld)   tmp: %p (%ld)   dst: %p (%ld)   (%ldx%ld)  rb: %ld\n", a2, a3, v11, size, *(this + 5), *(this + 6), *(this + 1), *(this + 2), size);
    qword_1ED5688A0 = gCrashMessage;
    CHECK_FIRST_BYTE_OF_IMAGEBLOCK(a2);
    CHECK_LAST_BYTE_OF_IMAGEBLOCK(a2);
    if (compression_stream_init(&stream, COMPRESSION_STREAM_DECODE, COMPRESSION_LZFSE) == COMPRESSION_STATUS_OK)
    {
      stream.src_ptr = a2;
      stream.src_size = a3;
      [*(this + 7) initializeTextureMemory:*(this + 5)];
      v12 = 0;
      v13 = a5;
      do
      {
        stream.dst_ptr = v11;
        stream.dst_size = size;
        v14 = compression_stream_process(&stream, 0);
        if (v14 == COMPRESSION_STATUS_ERROR)
        {
          break;
        }

        v15 = v14;
        v16 = *(this + 7);
        v17 = *(this + 5);
        v18 = *(this + 3);
        v19[0] = 0;
        v19[1] = v12;
        v19[2] = 0;
        v19[3] = v6;
        v19[4] = v18;
        v19[5] = 1;
        [v16 copyFromLinearBytes:v11 linearOffset:0 linearBytesPerRow:size linearBytesPerImage:0 toTextureMemory:v17 textureSlice:0 textureLevel:v13 textureRegion:v19];
        v12 += *(this + 3);
      }

      while (v15 != COMPRESSION_STATUS_END);
      compression_stream_destroy(&stream);
    }

    qword_1ED5688A0 = 0;
    free(v11);
  }
}

void ASTCTwiddler::decodeAndCopyFromLinearData(ASTCTwiddler *this, unsigned __int8 *a2, size_t a3, size_t a4, int a5)
{
  v5 = *(this + 1);
  if (v5)
  {
    ASTCTwiddler::ASTCTwiddlerImpl::decodeAndCopyFromLinearDataImp(v5, a2, a3, a4, a5);
  }
}

ASTCTwiddler::ASTCTwiddlerImpl *ASTCTwiddler::copyFromTextureData(ASTCTwiddler *this, const void *a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  result = *(this + 1);
  if (result)
  {
    return ASTCTwiddler::ASTCTwiddlerImpl::copyFromTextureDataImp(result, a2, a3, a4, a5, a6);
  }

  return result;
}

_BYTE *TIFFSwabShort(_BYTE *result)
{
  v1 = result[1];
  result[1] = *result;
  *result = v1;
  return result;
}

int8x8_t TIFFSwabLong(__int32 *a1, uint8x8_t a2)
{
  a2.i32[0] = *a1;
  v2 = vrev64_s16(*&vmovl_u8(a2));
  result = vuzp1_s8(v2, v2);
  *a1 = result.i32[0];
  return result;
}

int8x8_t TIFFSwabLong8(int8x8_t *a1)
{
  result = vrev64_s8(*a1);
  *a1 = result;
  return result;
}

uint64_t TIFFSwabArrayOfShort(uint64_t result, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = a2 + 1;
    v3 = (result + 1);
    do
    {
      v4 = *v3;
      *v3 = *(v3 - 1);
      *(v3 - 1) = v4;
      --v2;
      v3 += 2;
    }

    while (v2 > 1);
  }

  return result;
}

uint64_t TIFFSwabArrayOfTriples(uint64_t result, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = a2 + 1;
    v3 = (result + 2);
    do
    {
      v4 = *v3;
      *v3 = *(v3 - 2);
      *(v3 - 2) = v4;
      --v2;
      v3 += 3;
    }

    while (v2 > 1);
  }

  return result;
}

__int32 *TIFFSwabArrayOfLong(__int32 *result, uint64_t a2, uint8x8_t a3)
{
  if (a2 >= 1)
  {
    v3 = a2 + 1;
    do
    {
      a3.i32[0] = *result;
      v4 = vrev64_s16(*&vmovl_u8(a3));
      a3 = vuzp1_s8(v4, v4);
      *result++ = a3.i32[0];
      --v3;
    }

    while (v3 > 1);
  }

  return result;
}

int8x8_t *TIFFSwabArrayOfLong8(int8x8_t *result, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = a2 + 1;
    do
    {
      *result = vrev64_s8(*result);
      ++result;
      --v2;
    }

    while (v2 > 1);
  }

  return result;
}

void *TIFFGetBitRevTable(int a1)
{
  if (a1)
  {
    return &TIFFBitRevTable;
  }

  else
  {
    return &TIFFNoBitRevTable;
  }
}

unsigned __int8 *TIFFReverseBits(unsigned __int8 *result, uint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 <= 0)
    {
      return result;
    }
  }

  else
  {
    v2 = a2;
    do
    {
      *result = TIFFBitRevTable[*result];
      result[1] = TIFFBitRevTable[result[1]];
      result[2] = TIFFBitRevTable[result[2]];
      result[3] = TIFFBitRevTable[result[3]];
      result[4] = TIFFBitRevTable[result[4]];
      result[5] = TIFFBitRevTable[result[5]];
      result[6] = TIFFBitRevTable[result[6]];
      result[7] = TIFFBitRevTable[result[7]];
      result += 8;
      a2 = v2 - 8;
      v3 = v2 > 0x10;
      v2 -= 8;
    }

    while (v3);
  }

  v4 = a2 + 1;
  do
  {
    *result = TIFFBitRevTable[*result];
    ++result;
    --v4;
  }

  while (v4 > 1);
  return result;
}

void IIO_Reader_JP2::~IIO_Reader_JP2(IIO_Reader_JP2 *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_JP2::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

CFDataRef IIO_Reader_JP2::createGlobalInfoData(IIO_Reader_JP2 *this, IIOImageReadSession *a2)
{
  v2 = IIOImageReadSession::globalInfoForType(a2, 1246769696);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  GlobalJP2Info::GlobalJP2Info(&v5, v2);
  HIDWORD(v5) = 0;
  v6 = 0;
  v3 = CFDataCreate(*MEMORY[0x1E695E480], &v5, 16);
  GlobalJP2Info::~GlobalJP2Info(&v5);
  return v3;
}

uint64_t IIO_Reader_JP2::updateGlobalInfo(IIO_Reader_JP2 *this, IIOImageRead **a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a3 && a4 == 16)
  {
    v6 = malloc_type_malloc(0x10uLL, 0x1010040449DF08BuLL);
    *v6 = *a3;
    IIOImageReadSession::setGlobalInfo(a2, 1246769696, v6, releaseGlobalInfoJP2);
  }

  return 0;
}

BOOL IIO_Reader_JP2::compareOptions(IIO_Reader_JP2 *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v11, 0, sizeof(v11));
  IIODictionary::IIODictionary(v11, a2);
  memset(v10, 0, sizeof(v10));
  IIODictionary::IIODictionary(v10, a3);
  Uint32ForKey = IIODictionary::getUint32ForKey(v11, @"kCGImageSourceSubsampleFactor");
  v5 = IIODictionary::getUint32ForKey(v10, @"kCGImageSourceSubsampleFactor");
  if (Uint32ForKey <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = Uint32ForKey;
  }

  if (v5 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = v6 == v7;
  IIODictionary::~IIODictionary(v10);
  IIODictionary::~IIODictionary(v11);
  return v8;
}

void sub_186075B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  IIODictionary::~IIODictionary(&a9);
  IIODictionary::~IIODictionary(&a12);
  _Unwind_Resume(a1);
}

void sub_186075C24(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186075C08);
}

void PVRWritePlugin::PVRWritePlugin(PVRWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3, char a4)
{
  IIOWritePlugin::IIOWritePlugin(this, a2, a3, 1347834400);
  *v5 = &unk_1EF4DB238;
  *(v5 + 37) = a4;
  *(v5 + 40) = 0;
}

void PVRWritePlugin::PVRWritePlugin(IIOWritePlugin *a1, IIOImageWriteSession *a2, IIOImageDestination *a3, uint64_t a4)
{
  IIOWritePlugin::IIOWritePlugin(a1, a2, a3, 1347834400);
  *v5 = &unk_1EF4DB238;
  *(v5 + 37) = 0;
  *(v5 + 40) = a4;
}

void PVRWritePlugin::~PVRWritePlugin(PVRWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t PVRWritePlugin::writePVRHeader(IIOImageWriteSession **this, int a2, int a3, int a4)
{
  __ptr = 55727696;
  v7 = 2 * (a4 == 4);
  v8 = 0;
  v9 = 0;
  v10 = a3;
  v11 = a2;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  v12 = v4;
  v13 = 0;
  if (IIOImageWriteSession::putBytes(this[2], &__ptr, 0x34uLL) == 52)
  {
    return 0;
  }

  else
  {
    return 4294967246;
  }
}

uint64_t PVRWritePlugin::writeOneImage(PVRWritePlugin *this, CGImageRef image, IIODictionary *a3, IIODictionary *a4)
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  AlphaInfo = CGImageGetAlphaInfo(image);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = -50;
  if (Width == Height)
  {
    if (Width < 8)
    {
      v10 = "*** can't write PVR - %d x %d (too small)\n";
      v11 = 114;
LABEL_4:
      LogError("writeOneImage", v11, v10, Width, Width);
      goto LABEL_24;
    }

    v12 = AlphaInfo;
    if (!isPowerOf2(Width) || !isPowerOf2(Width))
    {
      v10 = "*** can't write non-power-of-2 PVR - %d x %d\n";
      v11 = 115;
      goto LABEL_4;
    }

    if (IIODictionary::containsKey(a3, @"kCGImagePropertyPVRBitsPerPixel"))
    {
      if (IIODictionary::getUint32ForKey(a3, @"kCGImagePropertyPVRBitsPerPixel") <= 2)
      {
        v13 = 2;
      }

      else
      {
        v13 = 4;
      }
    }

    else
    {
      v13 = 4;
    }

    if (IIODictionary::containsKey(a3, @"kCGImagePropertyPVRChannelWeighting"))
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(a3, @"kCGImagePropertyPVRChannelWeighting");
      if (Uint32ForKey > 2)
      {
        v15 = 1;
      }

      else
      {
        v15 = Uint32ForKey;
      }
    }

    else
    {
      v15 = 1;
    }

    if (IIODictionary::containsKey(a3, @"kCGImagePropertyPVRPunchThrough"))
    {
      v16 = IIODictionary::getUint32ForKey(a3, @"kCGImagePropertyPVRPunchThrough");
      if (v16 <= 2)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    *&v28.renderingIntent = 0;
    *&v28.bitsPerComponent = 0x2000000008;
    IIOColorSpace::IIOColorSpace(v27, *MEMORY[0x1E695F1C0]);
    v28.colorSpace = *(&v27[0] + 1);
    IIOColorSpace::~IIOColorSpace(v27);
    v28.bitmapInfo = 3;
    *&v28.version = 0uLL;
    memset(v27, 0, sizeof(v27));
    IIOPixelProvider::IIOPixelProvider(v27, image, &v28, 0);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = ___ZN14PVRWritePlugin13writeOneImageEP7CGImageP13IIODictionaryS3_j_block_invoke;
    v20[3] = &unk_1E6F0B458;
    v20[6] = Width;
    v20[7] = Width;
    v21 = v13;
    v22 = 0;
    v23 = v15;
    v24 = 1;
    v20[4] = &v29;
    v20[5] = this;
    v25 = v17;
    v26 = v12;
    IIOPixelProvider::iterateOverImage(v27, 0, Width, Width, v20);
    IIOPixelProvider::~IIOPixelProvider(v27);
  }

  else
  {
    LogError("writeOneImage", 112, "*** can't write non-square PVR [%zu x %zu]\n");
  }

LABEL_24:
  v18 = *(v30 + 6);
  _Block_object_dispose(&v29, 8);
  return v18;
}

void sub_18607607C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  IIOPixelProvider::~IIOPixelProvider(va);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void ___ZN14PVRWritePlugin13writeOneImageEP7CGImageP13IIODictionaryS3_j_block_invoke(uint64_t a1, uint64_t a2, int8x8_t *a3)
{
  *v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  if (encodePVRTC(v14, a3, v7, *(a1 + 68), *(a1 + 72), *(a1 + 76), *(a1 + 80)))
  {
    v8 = (v6 * v5 * v7) >> 3;
    v9 = *(v4 + 40);
    if (v9)
    {
      if ((*(*(v9 + 8) + 24))() == v8)
      {
        (*(*(*(v4 + 40) + 8) + 64))();
      }
    }

    else
    {
      if (*(v4 + 37) == 1)
      {
        v10 = *(a1 + 64);
        if (v10 == 2)
        {
          v11 = 35843;
        }

        else
        {
          v11 = 0;
        }

        if (v10 == 4)
        {
          v12 = 35842;
        }

        else
        {
          v12 = v11;
        }

        *(*(*(a1 + 32) + 8) + 24) = KTXWritePlugin::writeKTXHeader(*(v4 + 16), *(a1 + 48), *(a1 + 56), 0, 1u, *(a1 + 84), 0, 1, 0, v12, 0, 0);
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          __ptr = v8;
          IIOImageWriteSession::putBytes(*(v4 + 16), &__ptr, 4uLL);
        }
      }

      else
      {
        *(*(*(a1 + 32) + 8) + 24) = PVRWritePlugin::writePVRHeader(v4, *(a1 + 48), *(a1 + 56), *(a1 + 64));
      }

      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        IIOImageWriteSession::putBytes(*(v4 + 16), v14[0], v8);
      }
    }
  }

  if (v14[0])
  {
    free(v14[0]);
  }
}

BOOL PVRWritePlugin::WriteProc(PVRWritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "PVRWritePlugin::WriteProc", 0, 0, -1, 0);
  }

  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  IIOWritePlugin::IIOWritePlugin(v11, this, a2, 1347834400);
  *&v11[0] = &unk_1EF4DB238;
  BYTE5(v12) = 0;
  *(&v12 + 1) = 0;
  v7 = IIOWritePlugin::writeAll(v11) != 0;
  _cg_jpeg_mem_term(v11, v8, v9);
  return v7;
}

void sub_186076314(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _cg_jpeg_mem_term(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860762FCLL);
}

uint64_t PVRWritePlugin::GetVkFormat(PVRWritePlugin *this, IIODictionary *a2)
{
  if (!this)
  {
    return 0;
  }

  v3 = 1000054005;
  if (IIODictionary::containsKey(this, @"kCGImagePropertyPVRBitsPerPixel"))
  {
    if (IIODictionary::getUint32ForKey(this, @"kCGImagePropertyPVRBitsPerPixel") >= 3)
    {
      return 1000054005;
    }

    else
    {
      return 1000054004;
    }
  }

  return v3;
}

void _TAGList::_TAGList(_TAGList *this, char a2)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 41) = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1EF4DB2C0;
}

void _TAGList::~_TAGList(_TAGList *this)
{
  *this = &unk_1EF4DB2C0;
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 2);
  }

  *(this + 3) = v2;
  v4 = *(this + 1);
  if (v4)
  {
    free(v4);
    *(this + 1) = 0;
    v2 = *(this + 2);
  }

  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  _TAGList::~_TAGList(this);

  JUMPOUT(0x186602850);
}

__n128 _TAGList::insertTag(_TAGList *this, _TAG *a2)
{
  v15 = a2;
  v4 = *(this + 2);
  v5 = *(this + 3);
  v3 = (this + 16);
  if (v4 == v5)
  {
    v4 = v5;
  }

  else
  {
    v6 = *(a2 + 20);
    v7 = v4;
    do
    {
      if (*(*v7 + 40) == v6)
      {
        return _cg_jpeg_mem_term("insertTag", 77, "*** ERROR: duplicate _TAG? '%p' (markerID: 0x%04X) already exists\n", a2, v6);
      }

      v7 += 8;
    }

    while (v7 != v5);
    v8 = (v5 - v4) >> 3;
    v9 = *(a2 + 20);
    do
    {
      v10 = v8 >> 1;
      v11 = &v4[8 * (v8 >> 1)];
      v13 = *v11;
      v12 = v11 + 8;
      v8 += ~(v8 >> 1);
      if (*(v13 + 40) <= v9)
      {
        v4 = v12;
      }

      else
      {
        v8 = v10;
      }
    }

    while (v8);
  }

  std::vector<_TAG *>::insert(v3, v4, &v15);
  return result;
}

char *std::vector<_TAG *>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (__src == v6)
    {
      *v6 = *a3;
      a1[1] = v6 + 8;
      return v4;
    }

    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    if (v9 >= v4)
    {
      v23 = v9 <= a3 || v4 > a3;
      v24 = 8;
      if (v23)
      {
        v24 = 0;
      }

      *v4 = *&a3[v24];
      return v4;
    }

    __break(1u);
LABEL_30:
    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  v10 = *a1;
  v11 = (&v6[-*a1] >> 3) + 1;
  if (v11 >> 61)
  {
    goto LABEL_30;
  }

  v12 = __src - v10;
  v13 = v7 - v10;
  if (v13 >> 2 > v11)
  {
    v11 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  v15 = v12 >> 3;
  v29 = a1;
  if (v14)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1, v14);
  }

  v26 = 0;
  v27 = 8 * v15;
  v28 = (8 * v15);
  std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_back<std::__state<char> *>(&v26, a3);
  v16 = v27;
  memcpy(v28, v4, a1[1] - v4);
  v17 = *a1;
  v18 = v27;
  *&v28 = v28 + a1[1] - v4;
  a1[1] = v4;
  v19 = v4 - v17;
  v20 = (v18 - (v4 - v17));
  memcpy(v20, v17, v19);
  v21 = *a1;
  *a1 = v20;
  v22 = a1[2];
  *(a1 + 1) = v28;
  *&v28 = v21;
  *(&v28 + 1) = v22;
  v26 = v21;
  v27 = v21;
  if (v21)
  {
    operator delete(v21);
  }

  return v16;
}

void sub_186076730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _TAGList::removeTag(uint64_t result, unsigned __int16 *a2)
{
  v4 = *(result + 16);
  v3 = *(result + 24);
  if (v4 != v3)
  {
    v5 = a2[20];
    while (*(*v4 + 40) != v5)
    {
      v4 += 8;
      if (v4 == v3)
      {
        goto LABEL_15;
      }
    }

    if (v4 != v3)
    {
      v6 = v4 + 8;
      if (v4 + 8 != v3)
      {
        do
        {
          if (*(*v6 + 40) != v5)
          {
            *v4 = *v6;
            v4 += 8;
          }

          v6 += 8;
        }

        while (v6 != v3);
        v3 = *(result + 24);
      }
    }
  }

  if (v3 < v4)
  {
    __break(1u);
  }

  else
  {
    if (v4 != v3)
    {
      *(result + 24) = v4;
    }

LABEL_15:
    if (a2)
    {
      v7 = *(*a2 + 8);

      return v7(a2);
    }
  }

  return result;
}

uint64_t _TAGList::findTagByID(_TAGList *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    while (*(*v2 + 40) != a2)
    {
      v2 += 8;
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t _TAGList::mergeWithTagList(uint64_t this, _TAGList *a2)
{
  if (a2)
  {
    v2 = *(a2 + 2);
    if (v2 != *(a2 + 3))
    {
      v3 = *(this + 16);
      v4 = *(this + 24);
      if (v3 != v4)
      {
        while ((*v3)[20] != *(*v2 + 40))
        {
          if (++v3 == v4)
          {
            goto LABEL_10;
          }
        }
      }

      if (v3 != v4)
      {
        if (*v3)
        {
          _TAGList::removeTag(this, *v3);
        }
      }

LABEL_10:
      operator new();
    }

    *(a2 + 3) = v2;
  }

  return this;
}

uint64_t _TAGList::writeToBuffer(uint64_t this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned int *a5, unsigned int *a6, uint64_t a7)
{
  v17 = 0;
  *a5 = 0;
  *a6 = 0;
  v7 = *(this + 16);
  for (i = *(this + 24); v7 != i; *a6 += v16)
  {
    v15 = *v7++;
    this = (*(*v15 + 16))(v15, a2, a3, a4, &v17 + 4, &v17, a7);
    v16 = v17;
    a3 += HIDWORD(v17);
    a4 += v17;
    *a5 += HIDWORD(v17);
  }

  return this;
}

void _TAG::_TAG(_TAG *this, char a2, __int16 a3, __int16 a4, int a5, unsigned __int8 *a6, int a7, int a8, char a9, BOOL a10)
{
  *this = &unk_1EF4DB2E8;
  *(this + 1) = 0;
  *(this + 24) = a2;
  *(this + 7) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 80) = a9;
  *(this + 20) = a3;
  *(this + 28) = a4;
  *(this + 15) = a5;
  *(this + 16) = a8;
  if (a6 && a10)
  {
    operator new[]();
  }

  *(this + 9) = a6;
  *(this + 81) = 0;
  *(this + 17) = a7;
}

void _TAG::_TAG(_TAG *this, unsigned __int8 *a2, uint64_t a3, char a4, int a5, unsigned int a6, char a7)
{
  *this = &unk_1EF4DB2E8;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 24) = a4;
  *(this + 7) = a5;
  *(this + 6) = &a2[a6];
  *(this + 4) = a6;
  *(this + 80) = a7;
  *(this + 20) = _TAG::readShort(this);
  *(this + 28) = (*(*this + 32))(this);
  *(this + 15) = (*(*this + 96))(this);
  *(this + 16) = 0;
  *(this + 9) = 0;
  (*(*this + 104))(this);
  *(this + 81) = 0;
}

double _TAG::_TAG(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1EF4DB2E8;
  *(a1 + 8) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 80) = *(a2 + 80) | a3;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  result = *(a2 + 60);
  *(a1 + 60) = result;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 81) = *(a2 + 81);
  return result;
}

void _TAG::~_TAG(_TAG *this)
{
  *this = &unk_1EF4DB2E8;
  if (*(this + 81) == 1)
  {
    v1 = *(this + 9);
    if (v1)
    {
      MEMORY[0x186602830](v1, 0x1000C8077774924);
    }
  }
}

{
  *this = &unk_1EF4DB2E8;
  if (*(this + 81) == 1)
  {
    v1 = *(this + 9);
    if (v1)
    {
      MEMORY[0x186602830](v1, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x186602850);
}

uint64_t _TAG::nativeDataOrOffset(_TAG *this)
{
  v1 = *(this + 16);
  v2 = bswap32(v1);
  if (*(this + 24))
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t _TAG::readShort(_TAG *this)
{
  v1 = *(this + 4);
  v2 = v1 + 2;
  v3 = *(this + 2);
  if (v1 + 2 <= v3)
  {
    v4 = *(*(this + 1) + v1);
    v5 = bswap32(v4) >> 16;
    if (!*(this + 24))
    {
      LOWORD(v4) = v5;
    }

    *(this + 4) = v2;
  }

  else
  {
    LogError("readShort", 431, "*** ERROR: _TAG::readShort - out-of-bounds: pos: %ld  size: %ld\n", v1, v3);
    LOWORD(v4) = 0;
  }

  return v4;
}

unint64_t _TAG::readLong(_TAG *this)
{
  v1 = *(this + 4);
  v2 = v1 + 4;
  v3 = *(this + 2);
  if (v1 + 4 <= v3)
  {
    v4 = *(this + 1) + v1;
    v5 = *v4;
    v6 = *(v4 + 1);
    v7 = *(v4 + 2);
    LODWORD(v4) = *(v4 + 3);
    v8 = (v5 << 24) | (v6 << 16) | (v7 << 8) | v4;
    LODWORD(v4) = v5 | (v6 << 8) | (v7 << 16) | (v4 << 24);
    if (*(this + 24) == 1)
    {
      v4 = v4;
    }

    else
    {
      v4 = v8;
    }

    *(this + 4) = v2;
  }

  else
  {
    LogError("readLong", 453, "*** _TAG::readLong - out-of-bounds: pos: %ld  size: %ld\n", v1, v3);
    return 0;
  }

  return v4;
}

const char *_TAG::readData(const char *this)
{
  v1 = this;
  v2 = *(this + 4);
  v3 = *(this + 2);
  if (v2 + 4 > v3)
  {
    this = LogError("readData", 487, "*** ERROR: readData - out-of-bounds: pos: %ld  size: %ld\n", v2, v3);
    *(v1 + 8) = 0;
    *(v1 + 20) = 0;
    return this;
  }

  *(this + 16) = *(*(this + 1) + v2);
  v4 = *(this + 28);
  if (v4 > 7)
  {
    if (*(this + 28) > 9u)
    {
      if (v4 == 10)
      {
        goto LABEL_13;
      }

      if (v4 != 11)
      {
        if (v4 != 12)
        {
          return this;
        }

        goto LABEL_13;
      }

LABEL_18:
      v5 = 4 * *(this + 15);
      goto LABEL_21;
    }

    if (v4 != 8)
    {
      if (v4 != 9)
      {
        return this;
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (*(this + 28) <= 3u)
  {
    if (v4 - 1 < 2)
    {
      goto LABEL_15;
    }

    if (v4 != 3)
    {
      return this;
    }

LABEL_20:
    v5 = 2 * *(this + 15);
    goto LABEL_21;
  }

  if (v4 - 6 < 2)
  {
LABEL_15:
    v5 = *(this + 15);
    goto LABEL_21;
  }

  if (v4 == 4)
  {
    goto LABEL_18;
  }

  if (v4 == 5)
  {
LABEL_13:
    v5 = 8 * *(this + 15);
LABEL_21:
    *(this + 17) = v5;
  }

  return this;
}

uint64_t _TAG::positionToSubID(uint64_t this)
{
  v1 = bswap32(*(this + 64));
  if (*(this + 24))
  {
    v2 = *(this + 64);
  }

  else
  {
    v2 = v1;
  }

  *(this + 32) = v2 + *(this + 28);
  return this;
}

uint64_t _TAG::setDataOrOffset16(uint64_t this, __int16 a2)
{
  v2 = __rev16(a2);
  if (*(this + 24))
  {
    v3 = a2;
  }

  else
  {
    v3 = v2;
  }

  *(this + 64) = v3;
  return this;
}

uint64_t _TAG::copyDateTime(_TAG *this, const char *__s)
{
  result = strlen(__s);
  v5 = *(this + 15);
  if (result == v5 - 1)
  {
    v6 = *(this + 1);
    if (v6)
    {
      LODWORD(v7) = *(this + 16);
      if (v7)
      {
        v8 = *(this + 7);
        if (v8)
        {
          v9 = bswap32(v7);
          if (*(this + 24))
          {
            v7 = v7;
          }

          else
          {
            v7 = v9;
          }

          return strlcpy((v6 + v8 + v7), __s, v5);
        }
      }
    }
  }

  return result;
}

uint64_t _TAG::writeData(_TAG *this, unsigned __int8 *a2, int a3)
{
  v3 = *(this + 24);
  if (v3 == a3)
  {
    *a2 = *(this + 16);
  }

  else
  {
    v19 = 0;
    v4 = *(this + 28);
    if (v4 <= 0xB)
    {
      v5 = (this + 64);
      if (((1 << v4) & 0xC6) == 0)
      {
        if (((1 << v4) & 0xA10) != 0)
        {
          v6 = *v5;
          v7 = bswap32(v6);
          if (!v3)
          {
            v6 = v7;
          }

          v8 = bswap32(v6);
          if (!a3)
          {
            v6 = v8;
          }
        }

        else
        {
          if (((1 << v4) & 0x108) == 0)
          {
            return 4;
          }

          v12 = *(this + 17);
          if (v12)
          {
            v13 = 0;
            if (v12 >= 2)
            {
              LODWORD(v12) = 2;
            }

            v14 = 2 * v12;
            do
            {
              v15 = *(v5 + v13);
              v16 = bswap32(v15) >> 16;
              if (!v3)
              {
                v15 = v16;
              }

              v17 = bswap32(v15) >> 16;
              if (!a3)
              {
                LOWORD(v15) = v17;
              }

              *(&v19 + v13) = v15;
              v13 += 2;
            }

            while (v14 != v13);
            v6 = v19;
          }

          else
          {
            v6 = 0;
          }
        }

        *a2 = v6;
        return 4;
      }

      v9 = *(this + 17);
      if (v9 >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = *(this + 17);
      }

      if (v9)
      {
        do
        {
          v11 = *v5;
          v5 = (v5 + 1);
          *a2++ = v11;
          --v10;
        }

        while (v10);
      }
    }
  }

  return 4;
}

uint64_t _TAG::writeToBuffer(uint64_t this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *__dst, unsigned int *a5, unsigned int *a6, int a7)
{
  v9 = this;
  *(this + 48) = a3;
  v10 = *(this + 40);
  if (a7)
  {
    v11 = *(this + 40);
  }

  else
  {
    v11 = HIBYTE(*(this + 40));
  }

  if (a7)
  {
    LOBYTE(v10) = HIBYTE(*(this + 40));
  }

  *a3 = v11;
  a3[1] = v10;
  v12 = *(this + 56);
  if (a7)
  {
    v13 = *(this + 56);
  }

  else
  {
    v13 = HIBYTE(*(this + 56));
  }

  if (a7)
  {
    LOBYTE(v12) = HIBYTE(*(this + 56));
  }

  a3[2] = v13;
  a3[3] = v12;
  v14 = *(this + 60);
  v15 = HIWORD(v14);
  if (a7)
  {
    v16 = *(this + 60);
  }

  else
  {
    v16 = HIBYTE(*(this + 60));
  }

  if (a7)
  {
    v17 = BYTE1(*(this + 60));
  }

  else
  {
    v17 = BYTE2(*(this + 60));
  }

  if (a7)
  {
    LOBYTE(v14) = HIBYTE(*(this + 60));
  }

  else
  {
    LOBYTE(v15) = BYTE1(*(this + 60));
  }

  a3[4] = v16;
  a3[5] = v17;
  a3[6] = v15;
  a3[7] = v14;
  if (*(this + 68) > 4u)
  {
    v19 = __dst - a2;
    v20 = (__dst - a2) >> 16;
    if (a7)
    {
      v21 = v19 >> 8;
      LOBYTE(v22) = __dst - a2;
      v19 >>= 24;
    }

    else
    {
      v22 = HIBYTE(v19);
      v21 = HIWORD(v19);
      v20 = v19 >> 8;
    }

    a3[8] = v22;
    a3[9] = v21;
    a3[10] = v20;
    a3[11] = v19;
    v23 = *(this + 72);
    if (!v23)
    {
      v24 = *(this + 64);
      v25 = bswap32(v24);
      if (*(this + 24))
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      v23 = (*(this + 8) + *(this + 28) + v26);
    }

    v27 = 0;
    v28 = *(this + 56);
    if (v28 > 7)
    {
      if (*(this + 56) > 9u)
      {
        if (v28 == 10)
        {
          goto LABEL_40;
        }

        if (v28 != 11)
        {
          if (v28 != 12)
          {
            goto LABEL_66;
          }

          goto LABEL_40;
        }

        goto LABEL_51;
      }

      if (v28 != 8)
      {
        if (v28 != 9)
        {
          goto LABEL_66;
        }

        goto LABEL_51;
      }
    }

    else
    {
      if (*(this + 56) > 3u)
      {
        if (v28 - 6 >= 2)
        {
          if (v28 != 4)
          {
            if (v28 != 5)
            {
              goto LABEL_66;
            }

LABEL_40:
            v27 = *(this + 68);
            v29 = (v27 >> 2);
            if ((v27 >> 2))
            {
              do
              {
                v31 = *v23++;
                v30 = v31;
                v32 = bswap32(v31);
                if (!*(this + 24))
                {
                  v30 = v32;
                }

                v33 = bswap32(v30);
                if (!a7)
                {
                  v30 = v33;
                }

                *__dst = v30;
                __dst += 4;
                --v29;
              }

              while (v29);
              goto LABEL_65;
            }

LABEL_66:
            v18 = (v27 + 1) & 0xFFFFFFFE;
            goto LABEL_67;
          }

LABEL_51:
          v27 = *(this + 68);
          v34 = (v27 >> 2);
          if ((v27 >> 2))
          {
            do
            {
              v36 = *v23++;
              v35 = v36;
              v37 = bswap32(v36);
              if (!*(this + 24))
              {
                v35 = v37;
              }

              v38 = bswap32(v35);
              if (!a7)
              {
                v35 = v38;
              }

              *__dst = v35;
              __dst += 4;
              --v34;
            }

            while (v34);
            goto LABEL_65;
          }

          goto LABEL_66;
        }

LABEL_48:
        this = memcpy(__dst, v23, *(this + 68));
LABEL_65:
        v27 = *(v9 + 68);
        goto LABEL_66;
      }

      if (v28 - 1 < 2)
      {
        goto LABEL_48;
      }

      if (v28 != 3)
      {
        goto LABEL_66;
      }
    }

    v27 = *(this + 68);
    v39 = (v27 >> 1);
    if ((v27 >> 1))
    {
      do
      {
        v41 = *v23;
        v23 = (v23 + 2);
        v40 = v41;
        v42 = bswap32(v41) >> 16;
        if (!*(this + 24))
        {
          v40 = v42;
        }

        v43 = bswap32(v40) >> 16;
        if (!a7)
        {
          LOWORD(v40) = v43;
        }

        *__dst = v40;
        __dst += 2;
        --v39;
      }

      while (v39);
      goto LABEL_65;
    }

    goto LABEL_66;
  }

  this = _TAG::writeData(this, a3 + 8, a7);
  v18 = 0;
LABEL_67:
  *a5 = 12;
  *a6 = v18;
  return this;
}

void _APPx::_APPx(_APPx *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  *this = &unk_1EF4DB368;
  *(this + 5) = a2;
  *(this + 6) = a3;
  *(this + 2) = a4;
  *(this + 3) = a4;
  *(this + 32) = 0;
  *(this + 73) = 0;
  *(this + 8) = 0;
  *(this + 28) = a5;
  *(this + 19) = 0;
  if (a5 == 65497)
  {
    v7 = -1;
  }

  else
  {
    v7 = a5;
  }

  *(this + 15) = a6;
  if (a5 == 65496)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if ((a5 & 0xFFF0) == 0xFFE0)
  {
    v9 = (16 * a5) & 0xEF0;
  }

  else
  {
    v9 = v8;
  }

  *(this + 29) = v9;
  *(this + 8) = a7;
  *(this + 74) = 0;
}

void _APPx::~_APPx(_APPx *this)
{
  *this = &unk_1EF4DB368;
}

{
  *this = &unk_1EF4DB368;
}

{
  *this = &unk_1EF4DB368;
  JUMPOUT(0x186602850);
}

uint64_t _APPx::readByte(_APPx *this)
{
  v1 = *(this + 3);
  v2 = *(this + 6);
  if (v1 >= v2)
  {
    LogError("readByte", 932, "*** ERROR: readByte - out-of-bounds: pos: %ld  size: %ld\n", v1, v2);
    return 0;
  }

  else
  {
    v3 = v1 + 1;
    v4 = *(*(this + 5) + v1);
    *(this + 3) = v3;
  }

  return v4;
}

uint64_t _APPx::readShort(_APPx *this)
{
  v1 = *(this + 3);
  v2 = v1 + 2;
  v3 = *(this + 6);
  if (v1 + 2 <= v3)
  {
    v4 = *(*(this + 5) + v1);
    v5 = bswap32(v4) >> 16;
    if (!*(this + 32))
    {
      LOWORD(v4) = v5;
    }

    *(this + 3) = v2;
  }

  else
  {
    LogError("readShort", 946, "*** ERROR: _APPx::readShort - out-of-bounds: pos: %ld  size: %ld\n", v1, v3);
    LOWORD(v4) = 0;
  }

  return v4;
}

unint64_t _APPx::readLong(_APPx *this)
{
  v1 = *(this + 3);
  v2 = v1 + 4;
  v3 = *(this + 6);
  if (v1 + 4 <= v3)
  {
    v4 = *(this + 5) + v1;
    v5 = *v4;
    v6 = *(v4 + 1);
    v7 = *(v4 + 2);
    LODWORD(v4) = *(v4 + 3);
    v8 = (v5 << 24) | (v6 << 16) | (v7 << 8) | v4;
    LODWORD(v4) = v5 | (v6 << 8) | (v7 << 16) | (v4 << 24);
    if (*(this + 32) == 1)
    {
      v4 = v4;
    }

    else
    {
      v4 = v8;
    }

    *(this + 3) = v2;
  }

  else
  {
    LogError("readLong", 968, "*** ERROR: _APPx::readLong - out-of-bounds: pos: %ld  size: %ld\n", v1, v3);
    return 0;
  }

  return v4;
}

uint64_t _APPx::processData(_APPx *this)
{
  *(this + 28) = (*(*this + 104))(this);
  result = (*(*this + 104))(this);
  *(this + 15) = result + 2;
  return result;
}

CFIndex _APPx::writeToStream(CFIndex this, CFWriteStreamRef stream)
{
  if (*(this + 56) - 65505 <= 0xD && ((1 << (*(this + 56) + 31)) & 0x2203) != 0)
  {
    return CFWriteStreamWrite(stream, (*(this + 40) + *(this + 16)), *(this + 60));
  }

  return this;
}

uint64_t _APP3::_APP3(uint64_t a1, CFTypeRef cf, int a3)
{
  *(a1 + 73) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 238092259;
  *(a1 + 64) = 0;
  *(a1 + 76) = 0;
  *(a1 + 8) = 0;
  *a1 = &unk_1EF4DB3F8;
  *(a1 + 88) = 0;
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDataGetTypeID())
    {
      *(a1 + 88) = CFRetain(cf);
      *(a1 + 60) = CFDataGetLength(cf);
    }
  }

  *(a1 + 80) = a3;
  *(a1 + 68) = 0;
  *(a1 + 56) = -29;
  return a1;
}

void _APP3::~_APP3(_APP3 *this)
{
  *this = &unk_1EF4DB3F8;
  v2 = *(this + 11);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 11) = 0;
  *this = &unk_1EF4DB368;
}

{
  _APP3::~_APP3(this);

  JUMPOUT(0x186602850);
}

const UInt8 *_APP3::writeToStream(_APP3 *this, __CFWriteStream *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(this + 15);
  if (v4)
  {
    LODWORD(v5) = (v4 - 1) / 0xFDE8u + 1;
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v16 = 0;
  v15 = 0;
  *buffer = -7169;
  v6 = *(this + 20);
  if (v6 == 2)
  {
    LOBYTE(v16) = 109;
    v7 = "iOSCustom";
  }

  else
  {
    if (v6 != 1)
    {
      goto LABEL_9;
    }

    LOBYTE(v16) = 103;
    v7 = "iOS_Debug";
  }

  v15 = *v7;
LABEL_9:
  v18 = bswap32(v5) >> 16;
  result = CFDataGetBytePtr(*(this + 11));
  if (v5)
  {
    v9 = result;
    v5 = v5;
    v10 = *(this + 15);
    v11 = 1;
    do
    {
      if (v10 >= 65000)
      {
        v12 = 65000;
      }

      else
      {
        v12 = v10;
      }

      v10 -= v12;
      v14 = bswap32(v12 + 18) >> 16;
      v17 = bswap32(v11) >> 16;
      CFWriteStreamWrite(a2, buffer, 20);
      result = CFWriteStreamWrite(a2, v9, v12);
      v9 += v12;
      ++v11;
      --v5;
    }

    while (v5);
  }

  return result;
}

void _APPData::~_APPData(_APPData *this)
{
  *this = &unk_1EF4DB368;
}

{
  *this = &unk_1EF4DB368;
  JUMPOUT(0x186602850);
}

CFIndex _APPData::writeToStream(_APPData *this, CFWriteStreamRef stream)
{
  if (*(this + 74) == 1 && *(this + 28) == -37 && *(this + 2) == 2)
  {
    v4 = *(this + 15);
    if (v4 < 0xFFF)
    {
      v5 = 2;
    }

    else
    {
      CFWriteStreamWrite(stream, (*(this + 5) + 2), 4094);
      v4 -= 4094;
      v5 = 4096;
    }

    v6 = v4;
    v7 = (*(this + 5) + v5);
  }

  else
  {
    v6 = *(this + 15);
    v7 = (*(this + 5) + *(this + 2));
  }

  return CFWriteStreamWrite(stream, v7, v6);
}

uint64_t _APPData::getImageDimension(_APPData *this, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  result = (*(*this + 104))(this);
  v9 = result;
  if (result >> 8 >= 0xFF && ((result + 48) >> 4) <= 0xFFEu)
  {
    do
    {
      result = (*(*this + 104))(this);
      v10 = *(this + 3) + result;
      *(this + 3) = v10 - 2;
      if (v10 > *(this + 15))
      {
        break;
      }

      result = (*(*this + 104))(this);
      v9 = result;
      if (result >> 8 < 0xFF)
      {
        break;
      }
    }

    while (((result + 48) >> 4) < 0xFFFu);
  }

  if ((v9 & 0xFFF0) == 0xFFC0)
  {
    (*(*this + 104))(this);
    ++*(this + 3);
    v11 = (*(*this + 104))(this);
    if (a3)
    {
      *a3 = v11;
    }

    v12 = (*(*this + 104))(this);
    if (a2)
    {
      *a2 = v12;
    }

    result = (*(*this + 96))(this);
    if (a4)
    {
      *a4 = result;
    }
  }

  return result;
}

void _APP0::_APP0(_APP0 *this, int a2, char a3, int a4)
{
  _APPx::_APPx(this, 0, 0, 0, a2, a4, a3);
  *v4 = &unk_1EF4DB518;
  *(v4 + 80) = 0;
}

void _APP0::_APP0(_APP0 *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  _APPx::_APPx(this, a2, a3, a4, a5, a6, a7);
  *v7 = &unk_1EF4DB518;
  *(v7 + 80) = 0;
}

void _APP0::~_APP0(_APP0 *this)
{
  *this = &unk_1EF4DB368;
}

{
  *this = &unk_1EF4DB368;
  JUMPOUT(0x186602850);
}

uint64_t _APP0::writeToStream(uint64_t this, CFWriteStreamRef stream)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *(this + 60);
  if (v3 == 20 || *(this + 80) == 1)
  {
    *v5 = xmmword_1862251C0;
    *&v5[14] = 0x46504D4100002C01;
    return CFWriteStreamWrite(stream, v5, 22);
  }

  else if (*(this + 48))
  {
    v4 = (*(this + 40) + *(this + 16));

    return CFWriteStreamWrite(stream, v4, v3);
  }

  return this;
}

void _APP1::_APP1(_APP1 *this, int a2, char a3)
{
  _APPx::_APPx(this, 0, 0, 0, a2, 0, a3);
  *v3 = &unk_1EF4DB5B0;
  *(v3 + 68) = 1;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0;
  *(v3 + 58) |= 1u;
  operator new();
}

void _APP1::_APP1(_APP1 *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  v7 = a5;
  _APPx::_APPx(this, a2, a3, a4, a5, a6, a7);
  *v8 = &unk_1EF4DB5B0;
  *(v8 + 56) = v7;
  *(v8 + 68) = 1;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0;
  *(v8 + 58) |= 1u;
}

void _APP1::~_APP1(_APP1 *this)
{
  *this = &unk_1EF4DB5B0;
  v2 = *(this + 10);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 10) = 0;
  }

  v3 = *(this + 11);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(this + 11) = 0;
  }

  v4 = *(this + 12);
  if (v4)
  {
    (*(*v4 + 8))(v4);
    *(this + 12) = 0;
  }

  v5 = *(this + 13);
  if (v5)
  {
    (*(*v5 + 8))(v5);
    *(this + 13) = 0;
  }

  v6 = *(this + 14);
  if (v6)
  {
    (*(*v6 + 8))(v6);
    *(this + 14) = 0;
  }

  *this = &unk_1EF4DB368;
}

{
  _APP1::~_APP1(this);

  JUMPOUT(0x186602850);
}

uint64_t _APP1::mergeWithApp1(_APP1 *this, _APP1 *a2)
{
  v4 = *(this + 10);
  if (v4)
  {
    v5 = *(a2 + 10);
    if (v5)
    {
      _TAGList::mergeWithTagList(v4, v5);
    }
  }

  v6 = *(this + 11);
  if (v6)
  {
    v7 = *(a2 + 11);
    if (v7)
    {
      _TAGList::mergeWithTagList(v6, v7);
    }
  }

  v48 = 0;
  v8 = *(a2 + 12);
  if (v8)
  {
    v9 = *(this + 12);
    if (!v9)
    {
      operator new();
    }

    _TAGList::mergeWithTagList(v9, v8);
  }

  v10 = *(a2 + 13);
  if (v10)
  {
    v11 = *(this + 13);
    if (!v11)
    {
      operator new();
    }

    _TAGList::mergeWithTagList(v11, v10);
  }

  result = *(this + 14);
  if (result)
  {
    v13 = *(a2 + 14);
    if (v13)
    {
      result = _TAGList::mergeWithTagList(result, v13);
    }
  }

  *(this + 15) = 0;
  v14 = *(this + 10);
  if (v14)
  {
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v15 == v16)
    {
      LODWORD(v14) = 0;
    }

    else
    {
      LODWORD(v14) = 0;
      do
      {
        v17 = *v15++;
        v18 = *(v17 + 68);
        if (v18 <= 4)
        {
          v19 = 0;
        }

        else
        {
          v19 = (v18 + 1) & 0xFFFFFFFE;
        }

        LODWORD(v14) = v19 + v14;
      }

      while (v15 != v16);
    }

    *(this + 15) = v14;
  }

  v20 = *(this + 12);
  if (v20)
  {
    v21 = *(v20 + 16);
    v22 = *(v20 + 24);
    if (v21 == v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = 0;
      do
      {
        v24 = *v21++;
        v25 = *(v24 + 68);
        if (v25 <= 4)
        {
          v26 = 0;
        }

        else
        {
          v26 = (v25 + 1) & 0xFFFFFFFE;
        }

        v23 += v26;
      }

      while (v21 != v22);
    }

    LODWORD(v14) = v14 + v23;
    *(this + 15) = v14;
  }

  v27 = *(this + 11);
  if (v27)
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);
    if (v28 == v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = 0;
      do
      {
        v31 = *v28++;
        v32 = *(v31 + 68);
        if (v32 <= 4)
        {
          v33 = 0;
        }

        else
        {
          v33 = (v32 + 1) & 0xFFFFFFFE;
        }

        v30 += v33;
      }

      while (v28 != v29);
    }

    LODWORD(v14) = v14 + v30;
    *(this + 15) = v14;
  }

  v34 = *(this + 13);
  if (v34)
  {
    v35 = *(v34 + 16);
    v36 = *(v34 + 24);
    if (v35 == v36)
    {
      v37 = 0;
    }

    else
    {
      v37 = 0;
      do
      {
        v38 = *v35++;
        v39 = *(v38 + 68);
        if (v39 <= 4)
        {
          v40 = 0;
        }

        else
        {
          v40 = (v39 + 1) & 0xFFFFFFFE;
        }

        v37 += v40;
      }

      while (v35 != v36);
    }

    LODWORD(v14) = v14 + v37;
    *(this + 15) = v14;
  }

  v41 = *(this + 14);
  if (v41)
  {
    v42 = *(v41 + 16);
    v43 = *(v41 + 24);
    if (v42 == v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = 0;
      do
      {
        v45 = *v42++;
        v46 = *(v45 + 68);
        if (v46 <= 4)
        {
          v47 = 0;
        }

        else
        {
          v47 = (v46 + 1) & 0xFFFFFFFE;
        }

        v44 += v47;
      }

      while (v42 != v43);
    }

    *(this + 15) = v14 + v44;
  }

  return result;
}

uint64_t _APP1::updateThumbnailInfo(uint64_t this, unsigned __int8 *a2, int a3)
{
  v3 = *(this + 88);
  if (!v3)
  {
    operator new();
  }

  *(this + 120) = a2;
  *(this + 128) = a3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = v4;
  if (v4 != v5)
  {
    while (*(*v6 + 40) != 513)
    {
      v6 += 8;
      if (v6 == v5)
      {
        goto LABEL_10;
      }
    }
  }

  if (v6 == v5 || !*v6)
  {
LABEL_10:
    operator new();
  }

  v7 = v4;
  if (v4 != v5)
  {
    while (*(*v4 + 40) != 514)
    {
      v4 += 8;
      if (v4 == v5)
      {
        goto LABEL_17;
      }
    }
  }

  if (v4 == v5 || !*v4)
  {
LABEL_17:
    operator new();
  }

  v8 = v7;
  if (v7 != v5)
  {
    while (*(*v8 + 40) != 259)
    {
      v8 += 8;
      if (v8 == v5)
      {
        goto LABEL_24;
      }
    }
  }

  if (v8 == v5 || !*v8)
  {
LABEL_24:
    operator new();
  }

  v9 = v7;
  if (v7 != v5)
  {
    while (*(*v9 + 40) != 282)
    {
      v9 += 8;
      if (v9 == v5)
      {
        goto LABEL_31;
      }
    }
  }

  if (v9 == v5 || !*v9)
  {
LABEL_31:
    if (*(this + 32))
    {
      v10 = 72;
    }

    else
    {
      v10 = 1207959552;
    }

    if (*(this + 32))
    {
      v11 = 1;
    }

    else
    {
      v11 = 0x1000000;
    }

    *(this + 132) = v10;
    *(this + 136) = v11;
    operator new();
  }

  v12 = v7;
  if (v7 != v5)
  {
    while (*(*v12 + 40) != 283)
    {
      v12 += 8;
      if (v12 == v5)
      {
        goto LABEL_44;
      }
    }
  }

  if (v12 == v5 || !*v12)
  {
LABEL_44:
    if (*(this + 32))
    {
      v13 = 72;
    }

    else
    {
      v13 = 1207959552;
    }

    if (*(this + 32))
    {
      v14 = 1;
    }

    else
    {
      v14 = 0x1000000;
    }

    *(this + 140) = v13;
    *(this + 144) = v14;
    operator new();
  }

  v15 = v7;
  if (v7 != v5)
  {
    while (*(*v15 + 40) != 296)
    {
      v15 += 8;
      if (v15 == v5)
      {
        goto LABEL_57;
      }
    }
  }

  if (v15 == v5 || !*v15)
  {
LABEL_57:
    operator new();
  }

  return this;
}

void _APP1::getSubIFD(_APP1 *this, _TAG *a2, _TAGList *a3)
{
  (*(*a2 + 40))(a2);
  v6 = (*(*a2 + 32))(a2);
  v7 = v6;
  if (*(this + 15) / 0xAu < v6)
  {
    LogError("getSubIFD", 1596, "- bad IFD count [%d entries]\n", v6);
    return;
  }

  if (v6)
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = (*(*a2 + 24))(a2);
      if (v10)
      {
        break;
      }

LABEL_23:
      v9 = 0;
LABEL_24:
      if (++v8 >= v7)
      {
        return;
      }
    }

    v11 = v10;
    v12 = *(v10 + 68);
    if (v12 <= 4)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v12 + 1) & 0xFFFFFFFE;
    }

    if (v13 >= 5)
    {
      v14 = bswap32(*(v10 + 64));
      if (*(v10 + 24))
      {
        v15 = *(v10 + 64);
      }

      else
      {
        v15 = v14;
      }

      v16 = *(this + 15);
      v17 = v15 + *(this + 16);
      v18 = *(this + 2);
      if (v18 > v17)
      {
        LODWORD(v16) = v18 + v16;
LABEL_16:
        LogError("getSubIFD", 1616, ": Skipping tag '%04X', dataOffset (%08X) with length = %d is outside the bounds of the APP1 marker (%08X - %08X)\n", *(v10 + 40), v17, v13, *(this + 2), v16);
LABEL_22:
        (*(*v11 + 8))(v11);
        goto LABEL_23;
      }

      v16 += v18;
      if (v16 < v17 + v13)
      {
        goto LABEL_16;
      }
    }

    if (v9)
    {
      v19 = *(a3 + 2);
      v20 = *(a3 + 3);
      if (v19 != v20)
      {
        while (*(*v19 + 40) != *(v10 + 40))
        {
          v19 += 8;
          if (v19 == v20)
          {
            goto LABEL_29;
          }
        }
      }

      if (v19 == v20 || !*v19)
      {
LABEL_29:
        *&v21 = _TAGList::insertTag(a3, v10).n128_u64[0];
        v22 = v11[20];
        switch(v22)
        {
          case 40965:
            if (!*(this + 14))
            {
              operator new();
            }

            break;
          case 34853:
            LogError("getSubIFD", 1645, "*** ERROR: second GPS Info Pointer???\n", v21);
            break;
          case 34665:
            LogError("getSubIFD", 1641, "*** ERROR: second Exif IFD Pointer???\n", v21);
            break;
        }
      }

      else
      {
        _cg_jpeg_mem_term("getSubIFD", 1632, "*** skipping tag -- already added\n");
      }

      v9 = 1;
      goto LABEL_24;
    }

    goto LABEL_22;
  }
}

const char *_APP1::processAPP1(_APP1 *this, uint64_t a2)
{
  *(this + 28) = (*(*this + 104))(this);
  v4 = (*(*this + 104))(this);
  v5 = *(this + 2) + a2;
  *(this + 3) = v5;
  *(this + 15) = v4 + 2;
  *(this + 16) = v5;
  if ((*(*this + 104))(this) == 18761)
  {
    *(this + 32) = 1;
  }

  *(this + 3) += 2;
  v6 = (*(*this + 112))(this);
  v7 = *(this + 16);
  v8 = *(this + 2) + *(this + 15);
  v9 = (v7 + v6);
  if (!__CFADD__(v7, v6) && v8 >= v9)
  {
    *(this + 3) = v9;
    (*(*this + 104))(this);
    v11 = 0;
    operator new();
  }

  return LogError("processAPP1", 1692, "*** ERROR: bogus ifdOffset = %p + %p, marker range = %p - %p\n", v7, v6, *(this + 2), v8);
}

uint64_t _APP1::markerLength(_APP1 *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    v2 = *(v1 + 16);
    v1 = *(v1 + 24);
    v3 = v2;
    if (v1 == v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      do
      {
        v5 = *v3++;
        v6 = *(v5 + 68);
        if (v6 <= 4)
        {
          v7 = 0;
        }

        else
        {
          v7 = (v6 + 1) & 0xFFFFFFFE;
        }

        v4 += v7;
      }

      while (v3 != v1);
    }

    LODWORD(v1) = 12 * ((v1 - v2) >> 3) + 6 + v4;
  }

  v8 = *(this + 12);
  if (v8)
  {
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    v11 = v9;
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = *v11++;
        v14 = *(v13 + 68);
        if (v14 <= 4)
        {
          v15 = 0;
        }

        else
        {
          v15 = (v14 + 1) & 0xFFFFFFFE;
        }

        v12 += v15;
      }

      while (v11 != v10);
    }

    LODWORD(v1) = v1 + 12 * ((v10 - v9) >> 3) + v12 + 6;
  }

  v16 = *(this + 11);
  if (v16)
  {
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v19 = v17;
    if (v18 == v17)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      do
      {
        v21 = *v19++;
        v22 = *(v21 + 68);
        if (v22 <= 4)
        {
          v23 = 0;
        }

        else
        {
          v23 = (v22 + 1) & 0xFFFFFFFE;
        }

        v20 += v23;
      }

      while (v19 != v18);
    }

    LODWORD(v1) = v1 + 12 * ((v18 - v17) >> 3) + v20 + 6;
  }

  v24 = *(this + 13);
  if (v24)
  {
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
    v27 = v25;
    if (v26 == v25)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        v29 = *v27++;
        v30 = *(v29 + 68);
        if (v30 <= 4)
        {
          v31 = 0;
        }

        else
        {
          v31 = (v30 + 1) & 0xFFFFFFFE;
        }

        v28 += v31;
      }

      while (v27 != v26);
    }

    LODWORD(v1) = v1 + 12 * ((v26 - v25) >> 3) + v28 + 6;
  }

  v32 = *(this + 14);
  if (v32)
  {
    v33 = *(v32 + 16);
    v34 = *(v32 + 24);
    v35 = v33;
    if (v34 == v33)
    {
      v36 = 0;
    }

    else
    {
      v36 = 0;
      do
      {
        v37 = *v35++;
        v38 = *(v37 + 68);
        if (v38 <= 4)
        {
          v39 = 0;
        }

        else
        {
          v39 = (v38 + 1) & 0xFFFFFFFE;
        }

        v36 += v39;
      }

      while (v35 != v34);
    }

    LODWORD(v1) = v1 + 12 * ((v34 - v33) >> 3) + v36 + 6;
  }

  if (v1)
  {
    return (v1 + 18);
  }

  else
  {
    return 0;
  }
}