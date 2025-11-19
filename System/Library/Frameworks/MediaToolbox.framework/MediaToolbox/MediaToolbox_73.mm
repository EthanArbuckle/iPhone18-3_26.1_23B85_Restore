uint64_t IFFItemPropertyApplyPropertiesToDimensions(uint64_t a1, void *a2, int a3, int *a4)
{
  v4 = HIDWORD(*a2);
  v5 = *a2 / v4;
  if (*a2 % v4)
  {
    IFFItemPropertyApplyPropertiesToDimensions_cold_1(&v10);
    return v10;
  }

  v6 = a2[1];
  v7 = v6 / SHIDWORD(v6);
  if (v6 % SHIDWORD(v6))
  {
    IFFItemPropertyApplyPropertiesToDimensions_cold_2(&v10);
    return v10;
  }

  if (v5 < 1 || v7 <= 0)
  {
    IFFItemPropertyApplyPropertiesToDimensions_cold_4(&v10);
    return v10;
  }

  if (v5 > a1 || v7 > HIDWORD(a1))
  {
    IFFItemPropertyApplyPropertiesToDimensions_cold_3(&v10);
    return v10;
  }

  HIDWORD(v8) = -1527099483 * a3 + 47721856;
  LODWORD(v8) = HIDWORD(v8);
  result = 0;
  if ((v8 >> 2) <= 0x16C16C0)
  {
    *a4 = v5;
    a4[1] = v7;
  }

  else
  {
    *a4 = v7;
    a4[1] = v5;
  }

  return result;
}

uint64_t sumOfIFFRat32(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if ((a2 ^ a1) >> 32)
  {
    v5 = a1 * SHIDWORD(a2) + a2 * SHIDWORD(a1);
    v6 = SHIDWORD(a2) * SHIDWORD(a1);
    if (v5 >= 0)
    {
      v7 = a1 * SHIDWORD(a2) + a2 * SHIDWORD(a1);
    }

    else
    {
      v7 = -v5;
    }

    if (v6)
    {
      if (v6 >= 0)
      {
        v8 = SHIDWORD(a2) * SHIDWORD(a1);
      }

      else
      {
        v8 = -v6;
      }

      do
      {
        v9 = v8;
        v8 = v7 % v8;
        v7 = v9;
      }

      while (v8);
    }

    else
    {
      v9 = v7;
    }

    v4 = v5 / v9;
    v3 = v6 / v9;
  }

  else
  {
    v3 = a1 >> 32;
    v4 = a1 + a2;
  }

  if (v3 == v3 && (v4 - 0x80000000) > 0xFFFFFFFEFFFFFFFFLL)
  {
    *a3 = v4;
    a3[1] = v3;
    return 0;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t IFFInformationSetTracksDetected(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 168);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 168) = 0;
  }

  if (cf)
  {
    v5 = CFRetain(cf);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 168) = v5;
  return 0;
}

uint64_t IFFInformationCopyTracksDetected(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 168);
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *a2 = v3;
  }

  return 0;
}

uint64_t IFFInformationSetBrands(void *a1, CFTypeRef cf, const void *a3, const void *a4)
{
  if (a1[18])
  {
    IFFInformationSetBrands_cold_1(&v11);
    return v11;
  }

  else if (a1[19])
  {
    IFFInformationSetBrands_cold_2(&v12);
    return v12;
  }

  else if (a1[20])
  {
    IFFInformationSetBrands_cold_3(&v13);
    return v13;
  }

  else
  {
    if (cf)
    {
      v7 = CFRetain(cf);
    }

    else
    {
      v7 = 0;
    }

    a1[18] = v7;
    if (a3)
    {
      v8 = CFRetain(a3);
    }

    else
    {
      v8 = 0;
    }

    a1[19] = v8;
    if (a4)
    {
      v9 = CFRetain(a4);
    }

    else
    {
      v9 = 0;
    }

    result = 0;
    a1[20] = v9;
  }

  return result;
}

uint64_t IFFInformationCopyMajorBrand(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 144);
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *a2 = v3;
  }

  return 0;
}

uint64_t IFFInformationCopyMajorBrandsMinorVersion(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 152);
    if (v3)
    {
      v3 = CFRetain(v3);
    }

    *a2 = v3;
  }

  return 0;
}

uint64_t IFFInformationCopyCompatibleBrands(uint64_t a1, CFArrayRef *a2)
{
  Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(a1 + 160));
  if (Copy)
  {
    v4 = Copy;
    if (a2)
    {
      result = 0;
      *a2 = v4;
    }

    else
    {
      CFRelease(Copy);
      return 0;
    }
  }

  else
  {
    IFFInformationCopyCompatibleBrands_cold_1(&v6);
    return v6;
  }

  return result;
}

uint64_t IFFInformationSetItemHandler(uint64_t a1, int a2)
{
  *(a1 + 176) &= a2 == 1885954932;
  *(a1 + 28) = a2;
  return 0;
}

uint64_t IFFInformationGetItemHandler(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 28);
  }

  return 0;
}

uint64_t IFFInformationSetPrimaryItemID(uint64_t a1, int a2)
{
  *(a1 + 64) = 1;
  *(a1 + 80) = 0;
  *(a1 + 68) = a2;
  *(a1 + 72) = -1;
  return 0;
}

_DWORD *IFFItemGetWithID(const __CFArray *a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(v7, 0x228uLL);
  v7[10] = a2;
  Count = CFArrayGetCount(a1);
  v9.location = 0;
  v9.length = Count;
  v5 = CFArrayBSearchValues(a1, v9, v7, IFFItemComparator, 0);
  result = 0;
  if (v5 < Count)
  {
    result = CFArrayGetValueAtIndex(a1, v5);
    if (result[10] != a2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t IFFItemGetOrCreateWithID(uint64_t a1, int a2, int a3, void *a4)
{
  cf = 0;
  v8 = *(a1 + 96);
  Count = CFArrayGetCount(v8);
  v10 = Count;
  if (!a3)
  {
    Count = IFFItemGetWithID(v8, a2);
    v12 = Count;
    cf = Count;
    if (Count)
    {
      goto LABEL_7;
    }
  }

  v11 = IFFItemCreate(Count, &cf);
  v12 = cf;
  if (v11)
  {
    v17 = v11;
    if (!cf)
    {
      return v17;
    }

    goto LABEL_12;
  }

  v13 = *MEMORY[0x1E695E480];
  *(cf + 10) = a2;
  v12[3] = a1;
  Mutable = CFArrayCreateMutable(v13, 0, 0);
  v12[7] = Mutable;
  if (!Mutable || (v15 = CFArrayCreateMutable(v13, 0, 0), (v12[65] = v15) == 0))
  {
    IFFItemGetOrCreateWithID_cold_1();
    v17 = v20;
LABEL_12:
    CFRelease(v12);
    return v17;
  }

  v21.location = 0;
  v21.length = v10;
  v16 = CFArrayBSearchValues(v8, v21, v12, IFFItemComparator, 0);
  CFArrayInsertValueAtIndex(v8, v16, v12);
  CFRelease(v12);
LABEL_7:
  v17 = 0;
  *a4 = v12;
  return v17;
}

const __CFArray *IFFInformationGetItemCount(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t IFFInformationGetItemAtIndex(uint64_t a1, CFIndex idx, void *a3, _DWORD *a4, _BYTE *a5)
{
  if (idx < 0)
  {
    goto LABEL_15;
  }

  Count = *(a1 + 96);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
LABEL_15:
    IFFInformationGetItemAtIndex_cold_1(&v14);
    return v14;
  }

  else if (a3 || a4 || a5)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), idx);
    v12 = ValueAtIndex;
    if (a3)
    {
      *a3 = ValueAtIndex;
    }

    if (a5)
    {
      *a5 = ValueAtIndex[16];
    }

    result = 0;
    if (a4)
    {
      *a4 = *(v12 + 10);
    }
  }

  else
  {
    IFFInformationGetItemAtIndex_cold_2(&v15);
    return v15;
  }

  return result;
}

uint64_t IFFInformationGetItemName(uint64_t a1, const char **a2)
{
  if (a2)
  {
    v2 = *(a1 + 504);
    if (!v2)
    {
      v2 = "";
    }

    *a2 = v2;
  }

  return 0;
}

const __CFArray *IFFInformationGetItemReferenceCount(uint64_t a1)
{
  result = *(a1 + 520);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t IFFInformationGetItemReferencesAtIndex(uint64_t a1, CFIndex idx, _DWORD *a3, void *a4, void *a5, void *a6)
{
  v12 = *(a1 + 520);
  if (v12)
  {
    CFArrayGetCount(v12);
    v12 = *(a1 + 520);
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v12, idx);
  if (a3)
  {
    *a3 = *ValueAtIndex;
  }

  if (a4)
  {
    *a4 = ValueAtIndex[1];
  }

  if (a5)
  {
    *a5 = ValueAtIndex[2];
  }

  if (a6)
  {
    *a6 = ValueAtIndex[3];
  }

  return 0;
}

uint64_t IFFInformationGetItemReferencesOfType(uint64_t a1, int a2, void *a3, void *a4, void *a5)
{
  v6 = *(a1 + 520);
  if (!v6)
  {
    return 4294954512;
  }

  Count = CFArrayGetCount(v6);
  if (!Count)
  {
    return 4294954512;
  }

  v12 = Count;
  v13 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 520), v13);
    if (*ValueAtIndex == a2)
    {
      break;
    }

    if (v12 == ++v13)
    {
      return 4294954512;
    }
  }

  if (a3)
  {
    *a3 = ValueAtIndex[1];
  }

  if (a4)
  {
    *a4 = ValueAtIndex[2];
  }

  v15 = 0;
  if (a5)
  {
    *a5 = ValueAtIndex[3];
  }

  return v15;
}

void IFFItemReferenceFree(void **a1)
{
  if (a1)
  {
    free(a1[2]);
    free(a1[3]);

    free(a1);
  }
}

const __CFArray *IFFInformationGetSharedItemPropertyCount(uint64_t a1)
{
  result = *(a1 + 104);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t IFFInformationReserveSharedItemProperty(CFArrayRef *cf, int a2, CFArrayRef ***a3, CFIndex *a4)
{
  if (cf[13] || (v8 = CFGetAllocator(cf), Mutable = CFArrayCreateMutable(v8, 0, 0), (cf[13] = Mutable) != 0))
  {
    v10 = malloc_type_calloc(1uLL, 0x50uLL, 0x10B2040490ED450uLL);
    if (v10)
    {
      v11 = v10;
      Count = CFArrayGetCount(cf[13]);
      CFArrayAppendValue(cf[13], v11);
      *v11 = cf;
      *(v11 + 2) = a2;
      v11[2] = Count;
      if (a3)
      {
        *a3 = v11;
      }

      result = 0;
      if (a4)
      {
        *a4 = Count;
      }
    }

    else
    {
      IFFInformationReserveSharedItemProperty_cold_1(&v14);
      return v14;
    }
  }

  else
  {
    IFFInformationReserveSharedItemProperty_cold_2(&v15);
    return v15;
  }

  return result;
}

uint64_t IFFInformationSetItemPropertySpatialExtents(uint64_t a1, int a2, int a3)
{
  *(a1 + 40) = a2;
  *(a1 + 44) = a3;
  return 0;
}

uint64_t IFFInformationSetItemPropertyCleanAperture(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[5] = a2;
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  return 0;
}

uint64_t IFFInformationSetItemPropertyPixelInformation(uint64_t a1, size_t count, const void *a3)
{
  *(a1 + 40) = count;
  v5 = count;
  v6 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
  if (v6)
  {
    v7 = v6;
    free(*(a1 + 24));
    *(a1 + 24) = v7;
    *(a1 + 48) = v7;
    memcpy(v7, a3, v5);
    return 0;
  }

  else
  {
    IFFInformationSetItemPropertyPixelInformation_cold_1(&v9);
    return v9;
  }
}

uint64_t IFFInformationSetItemPropertyAVIFLayerSizes(_DWORD *a1, int a2, int a3, int a4)
{
  a1[10] = a2;
  a1[11] = a3;
  a1[12] = a4;
  return 0;
}

uint64_t IFFInformationSetItemPropertyExtrinsics(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, char a8, int a9, char a10, char a11)
{
  *(a1 + 40) = a2;
  *(a1 + 44) = a3;
  *(a1 + 48) = a4;
  *(a1 + 52) = a5;
  *(a1 + 56) = a6;
  *(a1 + 60) = a7;
  *(a1 + 64) = a8;
  *(a1 + 68) = a9;
  *(a1 + 72) = a10;
  *(a1 + 73) = a11;
  return 0;
}

uint64_t IFFInformationSetItemPropertyIntrinsics(uint64_t a1, char a2, char a3, char a4, int a5, int a6, int a7, int a8, int a9, char a10)
{
  *(a1 + 60) = a2;
  *(a1 + 61) = a3;
  *(a1 + 62) = a4;
  *(a1 + 40) = a5;
  *(a1 + 44) = a6;
  *(a1 + 48) = a7;
  *(a1 + 52) = a8;
  *(a1 + 56) = a9;
  *(a1 + 63) = a10;
  return 0;
}

uint64_t IFFInformationGetItemPropertyByIndex(uint64_t a1, CFIndex a2, void *a3, _BYTE *a4, void *a5)
{
  if (a2 < 0 || CFArrayGetCount(*(a1 + 56)) <= a2)
  {
    IFFInformationGetItemPropertyByIndex_cold_1(&v13);
    return v13;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), a2);
    if (a3)
    {
      *a3 = *ValueAtIndex;
    }

    if (a4)
    {
      *a4 = ValueAtIndex[8];
    }

    v11 = 0;
    if (a5)
    {
      *a5 = *(*ValueAtIndex + 16);
    }
  }

  return v11;
}

uint64_t IFFInformationGetItemPropertyByType(uint64_t a1, int a2, void *a3, _BYTE *a4, void *a5)
{
  Count = CFArrayGetCount(*(a1 + 56));
  if (Count < 1)
  {
    return 4294954512;
  }

  v11 = Count;
  v12 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v12);
    if (*(*ValueAtIndex + 8) == a2)
    {
      break;
    }

    if (v11 == ++v12)
    {
      return 4294954512;
    }
  }

  if (a3)
  {
    *a3 = *ValueAtIndex;
  }

  if (a4)
  {
    *a4 = ValueAtIndex[8];
  }

  v14 = 0;
  if (a5)
  {
    *a5 = *(*ValueAtIndex + 16);
  }

  return v14;
}

uint64_t IFFInformationGetItemPropertyTypeForUUID(void *a1)
{
  v1 = &dword_1E74964F0;
  v2 = 6;
  while (1)
  {
    v3 = *(v1 - 1);
    v5 = *v3;
    v4 = v3[1];
    if (v5 == *a1 && v4 == a1[1])
    {
      break;
    }

    v1 += 4;
    if (!--v2)
    {
      return 0;
    }
  }

  return *v1;
}

uint64_t IFFInformationGetCFUUIDBytesForItemPropertyType(int a1, _OWORD *a2)
{
  v2 = 6;
  for (i = &dword_1E74964F0; *i != a1; i += 4)
  {
    if (!--v2)
    {
      return 4294949526;
    }
  }

  v4 = *(i - 1);
  if (v4)
  {
    result = 0;
    *a2 = *v4;
    return result;
  }

  return 4294949526;
}

uint64_t IFFInformationGetSharedItemPropertyAtIndex(uint64_t a1, CFIndex idx, _DWORD *a3, void *a4)
{
  if (idx < 0)
  {
    goto LABEL_11;
  }

  Count = *(a1 + 104);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
LABEL_11:
    IFFInformationGetSharedItemPropertyAtIndex_cold_1(&v12);
    return v12;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 104), idx);
    if (ValueAtIndex)
    {
      v10 = ValueAtIndex;
      if (a3)
      {
        *a3 = ValueAtIndex[2];
      }

      result = 0;
      if (a4)
      {
        *a4 = v10;
      }
    }

    else
    {
      IFFInformationGetSharedItemPropertyAtIndex_cold_2(&v13);
      return v13;
    }
  }

  return result;
}

uint64_t IFFInformationSetItemPropertyIndexedColor(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, char a5)
{
  *(a1 + 40) = a2;
  *(a1 + 42) = a3;
  *(a1 + 44) = a4;
  *(a1 + 46) = a5;
  return 0;
}

uint64_t IFFInformationGetItemPropertySpatialExtents(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  if (a3)
  {
    *a3 = *(a1 + 44);
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyRotationDegreesCCW(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyCleanAperture(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a2)
  {
    *a2 = a1[5];
  }

  if (a3)
  {
    *a3 = a1[6];
  }

  if (a4)
  {
    *a4 = a1[7];
  }

  if (a5)
  {
    *a5 = a1[8];
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyPixelInformation(uint64_t a1, _BYTE *a2, void *a3)
{
  if (a3)
  {
    *a3 = *(a1 + 48);
  }

  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyCodecConfiguration(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  if (a3)
  {
    *a3 = *(a1 + 48);
  }

  if (a4)
  {
    *a4 = *(a1 + 56);
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyICCProfileData(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  if (a3)
  {
    *a3 = *(a1 + 48);
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyIndexedColor(uint64_t a1, _WORD *a2, _WORD *a3, _WORD *a4, _BYTE *a5)
{
  if (a2)
  {
    *a2 = *(a1 + 40);
  }

  if (a3)
  {
    *a3 = *(a1 + 42);
  }

  if (a4)
  {
    *a4 = *(a1 + 44);
  }

  if (a5)
  {
    *a5 = *(a1 + 46);
  }

  return 0;
}

uint64_t IFFInformationGetItemPropertyAuxiliaryType(void *a1, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = a1[5];
  }

  if (a3)
  {
    *a3 = a1[6];
  }

  if (a4)
  {
    *a4 = a1[7];
  }

  return 0;
}

uint64_t IFFInformationSetItemBodyImageDerivationGrid(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5)
{
  if (a3 >= 0x101)
  {
    IFFInformationSetItemBodyImageDerivationGrid_cold_2(&v8);
    return v8;
  }

  else if (a2 >= 0x101)
  {
    IFFInformationSetItemBodyImageDerivationGrid_cold_1(&v7);
    return v7;
  }

  else
  {
    result = 0;
    *(a1 + 288) = a3;
    *(a1 + 290) = a2;
    *(a1 + 292) = a4;
    *(a1 + 296) = a5;
    *(a1 + 272) = 1;
  }

  return result;
}

uint64_t IFFInformationSetItemBodyImageDerivationTonemap(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*a2)
    {
      IFFInformationSetItemBodyImageDerivationTonemap_cold_1(&v14);
    }

    else if (*(a2 + 12))
    {
      if (*(a2 + 20))
      {
        v2 = 0;
        v3 = (a2 + 60);
        while (1)
        {
          if (!*(v3 - 8))
          {
            IFFInformationSetItemBodyImageDerivationTonemap_cold_6(&v14);
            return v14;
          }

          if (!*(v3 - 6))
          {
            IFFInformationSetItemBodyImageDerivationTonemap_cold_5(&v14);
            return v14;
          }

          if (!*(v3 - 4))
          {
            IFFInformationSetItemBodyImageDerivationTonemap_cold_4(&v14);
            return v14;
          }

          if (!*(v3 - 2))
          {
            IFFInformationSetItemBodyImageDerivationTonemap_cold_3(&v14);
            return v14;
          }

          if (!*v3)
          {
            break;
          }

          if (*(a2 + 4))
          {
            v3 += 10;
            if (v2++ <= 1)
            {
              continue;
            }
          }

          v5 = 0;
          *(a1 + 288) = *a2;
          v6 = *(a2 + 16);
          v7 = *(a2 + 32);
          v8 = *(a2 + 64);
          *(a1 + 336) = *(a2 + 48);
          *(a1 + 352) = v8;
          *(a1 + 304) = v6;
          *(a1 + 320) = v7;
          v9 = *(a2 + 80);
          v10 = *(a2 + 96);
          v11 = *(a2 + 112);
          v12 = *(a2 + 128);
          *(a1 + 272) = 1;
          *(a1 + 400) = v11;
          *(a1 + 416) = v12;
          *(a1 + 368) = v9;
          *(a1 + 384) = v10;
          return v5;
        }

        IFFInformationSetItemBodyImageDerivationTonemap_cold_2(&v14);
      }

      else
      {
        IFFInformationSetItemBodyImageDerivationTonemap_cold_7(&v14);
      }
    }

    else
    {
      IFFInformationSetItemBodyImageDerivationTonemap_cold_8(&v14);
    }
  }

  else
  {
    IFFInformationSetItemBodyImageDerivationTonemap_cold_9(&v14);
  }

  return v14;
}

uint64_t IFFInformationSetItemBodyImageDerivationOverlay(uint64_t a1, void *a2, int a3, int a4, const void *a5, uint64_t a6)
{
  v11 = 8 * a6;
  v12 = malloc_type_malloc(8 * a6 + 8, 0x1000040BDFB0063uLL);
  if (v12)
  {
    v13 = v12;
    free(*(a1 + 280));
    *(a1 + 280) = v13;
    *(a1 + 288) = v13;
    *(a1 + 296) = v13 + 1;
    *v13 = *a2;
    memcpy(*(a1 + 296), a5, v11);
    result = 0;
    *(a1 + 304) = a3;
    *(a1 + 308) = a4;
    *(a1 + 272) = 1;
  }

  else
  {
    IFFInformationSetItemBodyImageDerivationOverlay_cold_1(&v15);
    return v15;
  }

  return result;
}

uint64_t IFFInformationSetItemBodyImageExifPayload(uint64_t a1, int a2)
{
  *(a1 + 288) = a2;
  *(a1 + 272) = 1;
  return 0;
}

uint64_t IFFInformationGetItemBodyImageDerivationGrid(uint64_t a1, _WORD *a2, _WORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a3)
  {
    *a3 = *(a1 + 288);
  }

  if (a2)
  {
    *a2 = *(a1 + 290);
  }

  if (a4)
  {
    *a4 = *(a1 + 292);
  }

  if (a5)
  {
    *a5 = *(a1 + 296);
  }

  return 0;
}

uint64_t IFFInformationGetItemBodyImageDerivationOverlay(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4, void *a5)
{
  if (a2)
  {
    *a2 = *(a1 + 288);
  }

  if (a3)
  {
    *a3 = *(a1 + 304);
  }

  if (a4)
  {
    *a4 = *(a1 + 308);
  }

  if (a5)
  {
    *a5 = *(a1 + 296);
  }

  return 0;
}

uint64_t IFFInformationGetItemBodyImageDerivationTonemap(_OWORD *a1, _OWORD *a2)
{
  if (a2)
  {
    *a2 = a1[18];
    v2 = a1[19];
    v3 = a1[20];
    v4 = a1[22];
    a2[3] = a1[21];
    a2[4] = v4;
    a2[1] = v2;
    a2[2] = v3;
    v5 = a1[23];
    v6 = a1[24];
    v7 = a1[26];
    a2[7] = a1[25];
    a2[8] = v7;
    a2[5] = v5;
    a2[6] = v6;
  }

  return 0;
}

uint64_t IFFInformationGetItemExtents(uint64_t a1, _DWORD *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = *(a1 + 24);
  if (a2)
  {
    *a2 = *(a1 + 432);
  }

  if (a3)
  {
    *a3 = *(a1 + 440);
  }

  if (a4)
  {
    if (*(v6 + 48) && *(a1 + 432) == 1)
    {
      v7 = *(v6 + 56);
    }

    else
    {
      v7 = 0;
    }

    *a4 = v7;
  }

  if (a5)
  {
    *a5 = *(a1 + 448);
  }

  if (a6)
  {
    *a6 = *(a1 + 456);
  }

  return 0;
}

uint64_t IFFInformationSetItemDataOffset(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    v7 = v2;
    v8 = v3;
    IFFInformationSetItemDataOffset_cold_1(&v6);
    return v6;
  }

  else
  {
    result = 0;
    *(a1 + 56) = a2;
    *(a1 + 48) = 1;
  }

  return result;
}

uint64_t IFFItemGroupCreate(uint64_t a1, uint64_t *a2)
{
  if (sRegisterIFFItemGroupTypeOnce != -1)
  {
    IFFItemGroupCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    result = 0;
    *a2 = v4;
  }

  else
  {
    IFFItemGroupCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t IFFInformationReservePictureFromItemIfNeeded(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  if (!v7)
  {
    v8 = *(a1 + 24);
    if (!*(v8 + 136))
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      *(v8 + 136) = Mutable;
      if (!Mutable)
      {
        IFFInformationReservePictureFromItemIfNeeded_cold_2(&v19);
        v16 = v19;
        goto LABEL_22;
      }
    }

    v10 = malloc_type_calloc(1uLL, 0x50uLL, 0x10200409C0C7C1EuLL);
    if (!v10)
    {
      IFFInformationReservePictureFromItemIfNeeded_cold_1(&v18);
      v16 = v18;
      goto LABEL_22;
    }

    v7 = v10;
    *v10 = v8;
    v10[1] = a1;
    *(a1 + 32) = v10;
    if (*(a1 + 48) && !*(a1 + 64))
    {
      CFArrayInsertValueAtIndex(*(v8 + 136), *(v8 + 128), v10);
      ++*(v8 + 128);
    }

    else
    {
      CFArrayAppendValue(*(v8 + 136), v10);
    }
  }

  v11 = 0;
  v12 = *(v7[1] + 44);
  if (v12 > 1768912491)
  {
    v13 = v12 == 1953325424;
    v14 = 1768912492;
  }

  else
  {
    v13 = v12 == 1735551332;
    v14 = 1768187246;
  }

  if (v13 || v12 == v14)
  {
    v11 = *(a1 + 512);
  }

  v7[2] = v11;
  if (a2)
  {
    *a2 = v6;
  }

  v16 = 0;
  if (a3)
  {
    *a3 = v7;
  }

LABEL_22:
  IFFPictureRecordFree(0);
  return v16;
}

void IFFPictureRecordFree(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
      a1[3] = 0;
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
      a1[4] = 0;
    }

    v4 = a1[5];
    if (v4)
    {
      CFRelease(v4);
      a1[5] = 0;
    }

    v5 = a1[6];
    if (v5)
    {
      CFRelease(v5);
      a1[6] = 0;
    }

    v6 = a1[7];
    if (v6)
    {
      CFRelease(v6);
      a1[7] = 0;
    }

    v7 = a1[8];
    if (v7)
    {
      CFRelease(v7);
      a1[8] = 0;
    }

    v8 = a1[9];
    if (v8)
    {
      CFRelease(v8);
    }

    free(a1);
  }
}

uint64_t IFFInformationGetPictureItem(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 8);
  }

  return 0;
}

uint64_t IFFInformationGetGroupByID(uint64_t a1, int a2, void *a3)
{
  v5 = 0;
  v6 = *(a1 + 112);
  while (1)
  {
    v7 = v6 ? CFArrayGetCount(v6) : 0;
    if (v5 >= v7)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v6, v5++);
    if (ValueAtIndex[4] == a2)
    {
      v9 = ValueAtIndex;
      result = 0;
      *a3 = v9;
      return result;
    }
  }

  return 4294949526;
}

uint64_t getParentOfIdentityPicture(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    getParentOfIdentityPicture_cold_1(&v11);
    return v11;
  }

  else
  {
    v3 = *(*(a1 + 8) + 520);
    if (v3 && (Count = CFArrayGetCount(v3), Count >= 1))
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 8) + 520), v7);
        if (*ValueAtIndex == 1684630887)
        {
          break;
        }

        if (v6 == ++v7)
        {
          return 4294954513;
        }
      }

      if (ValueAtIndex[1] == 1)
      {
        v10 = *(*ValueAtIndex[3] + 32);
        if (v10)
        {
          result = 0;
          *a2 = v10;
        }

        else
        {
          getParentOfIdentityPicture_cold_3(&v13);
          return v13;
        }
      }

      else
      {
        getParentOfIdentityPicture_cold_2(&v12);
        return v12;
      }
    }

    else
    {
      return 4294954513;
    }
  }

  return result;
}

uint64_t IFFPictureCopyDerivation(uint64_t a1, __CFString **a2, CFTypeRef *a3, __CFDictionary **a4)
{
  v76 = *MEMORY[0x1E69E9840];
  value = 0;
  cf = 0;
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0;
  v67 = 0;
  values = 0;
  v4 = *(*(a1 + 8) + 44);
  if (v4 == 1768187246 || v4 == 1953325424 || v4 == 1768912492)
  {
    if (*(a1 + 16))
    {
      IFFPictureCopyDerivation_cold_1(components);
      v16 = 0;
      v17 = 0;
      Mutable = 0;
LABEL_102:
      v19 = LODWORD(components[0]);
      goto LABEL_24;
    }

    v11 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      IFFPictureCopyDerivation_cold_13(components);
      goto LABEL_101;
    }

    v12 = *(*(a1 + 8) + 44);
    if (v12 != 1953325424)
    {
      if (v12 != 1768912492)
      {
        if (v12 != 1768187246)
        {
          v16 = 0;
          v17 = 0;
          v19 = 4294954513;
          goto LABEL_76;
        }

        ParentOfIdentityPicture = getParentOfIdentityPicture(a1, &values);
        if (!ParentOfIdentityPicture)
        {
          v14 = values;
          IFFItemPropertyGetOrderedTransformPropertiesForItem(*(values + 1), &v67, &v68, &v66 + 1, &v66);
          if (!ParentOfIdentityPicture)
          {
            if (*(v14[1] + 44) == 1768187246)
            {
              IFFPictureCopyDerivation_cold_12(components);
            }

            else
            {
              cf = CFArrayCreate(v11, &values, 1, 0);
              if (cf)
              {
                ParentOfIdentityPicture = IFFPictureCopyPictureDimensionsDictionary(values);
                if (!ParentOfIdentityPicture)
                {
                  CFDictionarySetValue(Mutable, @"PictureDimensions", value);
                  *components = v68;
                  v75 = v69;
                  ParentOfIdentityPicture = createCleanApertureExtensionDictFromProperty(v11, components, &v70);
                  if (!ParentOfIdentityPicture)
                  {
                    CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D70], v70);
                    ParentOfIdentityPicture = FigCFDictionarySetInt();
                    if (!ParentOfIdentityPicture)
                    {
                      if (v66 == -1 || (ParentOfIdentityPicture = FigCFDictionarySetInt(), !ParentOfIdentityPicture))
                      {
                        v15 = kFigPictureProperty_DerivationType_Identity;
LABEL_71:
                        v36 = *v15;
                        if (*v15)
                        {
                          v36 = CFRetain(v36);
                        }

                        v16 = 0;
                        v17 = 0;
LABEL_74:
                        v19 = 0;
                        *a2 = v36;
LABEL_76:
                        *a3 = cf;
                        *a4 = Mutable;
                        cf = 0;
                        goto LABEL_77;
                      }
                    }
                  }
                }

                goto LABEL_88;
              }

              IFFPictureCopyDerivation_cold_11(components);
            }

            goto LABEL_101;
          }
        }

LABEL_88:
        v19 = ParentOfIdentityPicture;
        goto LABEL_89;
      }

      ParentOfIdentityPicture = _copyDerivationParentPicturesArray(a1, &cf);
      if (ParentOfIdentityPicture)
      {
        goto LABEL_88;
      }

      ParentOfIdentityPicture = IFFPictureCopyPictureDimensionsDictionary(a1);
      if (ParentOfIdentityPicture)
      {
        goto LABEL_88;
      }

      v20 = *(a1 + 8);
      v21 = *(v20 + 80);
      if (v21[1] == *(v20 + 308) && *v21 == *(v20 + 304))
      {
        CFDictionarySetValue(Mutable, @"PictureDimensions", value);
        v22 = *(*(a1 + 8) + 520);
        if (v22 && (Count = CFArrayGetCount(v22), Count >= 1))
        {
          v24 = Count;
          v25 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 8) + 520), v25);
            if (*ValueAtIndex == 1684630887)
            {
              break;
            }

            if (v24 == ++v25)
            {
              goto LABEL_37;
            }
          }

          v27 = 2 * ValueAtIndex[1];
        }

        else
        {
LABEL_37:
          v27 = 0;
        }

        v16 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
        if (v16)
        {
          if (v27 >= 1)
          {
            v28 = 0;
            while (1)
            {
              appended = FigCFArrayAppendInt32();
              if (appended)
              {
                break;
              }

              if (v27 == ++v28)
              {
                goto LABEL_43;
              }
            }

            v19 = appended;
            CFRelease(v16);
            goto LABEL_89;
          }

LABEL_43:
          CFDictionarySetValue(Mutable, @"OverlayLayerOffsets", v16);
          v30 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
          if (v30)
          {
            v31 = v30;
            v32 = vmovl_u16(**(*(a1 + 8) + 288));
            v33.i64[0] = v32.u32[2];
            v33.i64[1] = v32.u32[3];
            v34 = vcvtq_f64_u64(v33);
            v33.i64[0] = v32.u32[0];
            v33.i64[1] = v32.u32[1];
            v35 = vdupq_n_s64(0x40EFFFE000000000uLL);
            *components = vdivq_f64(vcvtq_f64_u64(v33), v35);
            v75 = vdivq_f64(v34, v35);
            v17 = CGColorCreate(v30, components);
            if (v17)
            {
              v19 = 0;
            }

            else
            {
              IFFPictureCopyDerivation_cold_9(&v73);
              v19 = v73;
            }

            CFRelease(v31);
            if (v19)
            {
              goto LABEL_24;
            }
          }

          else
          {
            IFFPictureCopyDerivation_cold_10(components);
            v17 = 0;
            v19 = LODWORD(components[0]);
            if (LODWORD(components[0]))
            {
              goto LABEL_24;
            }
          }

          CFDictionarySetValue(Mutable, @"OverlayCanvasFillColor", v17);
          v36 = @"OverlayDerivation";
          if (@"OverlayDerivation")
          {
            v36 = CFRetain(@"OverlayDerivation");
          }

          goto LABEL_74;
        }

        if (IFFPictureCopyDerivation_cold_8(components))
        {
          goto LABEL_43;
        }
      }

      else
      {
        IFFPictureCopyDerivation_cold_7(components);
      }

LABEL_101:
      v16 = 0;
      v17 = 0;
      goto LABEL_102;
    }

    ParentOfIdentityPicture = _copyDerivationParentPicturesArray(a1, &cf);
    if (ParentOfIdentityPicture)
    {
      goto LABEL_88;
    }

    ParentOfIdentityPicture = IFFPictureCopyPictureDimensionsDictionary(a1);
    if (ParentOfIdentityPicture)
    {
      goto LABEL_88;
    }

    CFDictionarySetValue(Mutable, @"PictureDimensions", value);
    ParentOfIdentityPicture = FigCFDictionarySetInt();
    if (ParentOfIdentityPicture)
    {
      goto LABEL_88;
    }

    ParentOfIdentityPicture = FigCFDictionarySetInt();
    if (ParentOfIdentityPicture)
    {
      goto LABEL_88;
    }

    v37 = *MEMORY[0x1E695E4D0];
    if (*(*(a1 + 8) + 293))
    {
      v38 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v38 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"TonemapBaseColorIsWorkingColor", v38);
    CFDictionarySetValue(Mutable, @"TonemapForwardDirection", v37);
    ArrayFromRational32 = createArrayFromRational32(v11, (*(a1 + 8) + 296));
    if (ArrayFromRational32)
    {
      v40 = ArrayFromRational32;
      CFDictionarySetValue(Mutable, @"TonemapBaseHDRHeadroom", ArrayFromRational32);
      CFRelease(v40);
      v41 = createArrayFromRational32(v11, (*(a1 + 8) + 304));
      if (v41)
      {
        v42 = v41;
        CFDictionarySetValue(Mutable, @"TonemapAlternateHDRHeadroom", v41);
        CFRelease(v42);
        v43 = CFArrayCreateMutable(v11, 3, MEMORY[0x1E695E9C0]);
        if (v43)
        {
          v44 = v43;
          v61 = a2;
          v62 = a3;
          v63 = a4;
          v45 = 0;
          v64 = *(*(a1 + 8) + 292);
          v46 = 344;
          while (1)
          {
            v47 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (!v47)
            {
              IFFPictureCopyDerivation_cold_3();
              goto LABEL_94;
            }

            v48 = v47;
            v49 = createArrayFromRational32(v11, (*(a1 + 8) + v46 - 32));
            if (!v49)
            {
              break;
            }

            v50 = v49;
            CFDictionarySetValue(v48, @"GainMapMin", v49);
            CFRelease(v50);
            v51 = createArrayFromRational32(v11, (*(a1 + 8) + v46 - 24));
            if (!v51)
            {
              break;
            }

            v52 = v51;
            CFDictionarySetValue(v48, @"GainMapMax", v51);
            CFRelease(v52);
            v53 = createArrayFromRational32(v11, (*(a1 + 8) + v46 - 16));
            if (!v53)
            {
              break;
            }

            v54 = v53;
            CFDictionarySetValue(v48, @"Gamma", v53);
            CFRelease(v54);
            v55 = createArrayFromRational32(v11, (*(a1 + 8) + v46 - 8));
            if (!v55)
            {
              break;
            }

            v56 = v55;
            CFDictionarySetValue(v48, @"BaseOffset", v55);
            CFRelease(v56);
            v57 = createArrayFromRational32(v11, (*(a1 + 8) + v46));
            if (!v57)
            {
              break;
            }

            v58 = v57;
            CFDictionarySetValue(v48, @"AlternateOffset", v57);
            CFRelease(v58);
            CFArrayAppendValue(v44, v48);
            CFRelease(v48);
            if (v64)
            {
              v46 += 40;
              if (v45++ < 2)
              {
                continue;
              }
            }

            CFDictionarySetValue(Mutable, @"TonemapChannelMetadata", v44);
            CFRelease(v44);
            a3 = v62;
            a4 = v63;
            a2 = v61;
            goto LABEL_70;
          }

          IFFPictureCopyDerivation_cold_2();
LABEL_94:
          v19 = LODWORD(components[0]);
          a3 = v62;
          a4 = v63;
          a2 = v61;
LABEL_95:
          if (!v19)
          {
LABEL_70:
            v15 = kFigPictureProperty_DerivationType_Tonemap;
            goto LABEL_71;
          }

LABEL_89:
          v16 = 0;
          v17 = 0;
          goto LABEL_24;
        }

        IFFPictureCopyDerivation_cold_4(components);
      }

      else
      {
        IFFPictureCopyDerivation_cold_5(components);
      }
    }

    else
    {
      IFFPictureCopyDerivation_cold_6(components);
    }

    v19 = LODWORD(components[0]);
    goto LABEL_95;
  }

  v16 = 0;
  v17 = 0;
  Mutable = 0;
  v19 = 4294954513;
LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_77:
  if (value)
  {
    CFRelease(value);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v19;
}

uint64_t createCleanApertureExtensionDictFromProperty(const __CFAllocator *a1, char *valuePtr, CFDictionaryRef *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = HIDWORD(*valuePtr);
  v7 = *valuePtr / v6;
  if (*valuePtr % v6 || (v8 = *(valuePtr + 1), v8 % SHIDWORD(v8)) || (v9 = *(valuePtr + 2), v9 % SHIDWORD(v9)) || (v10 = *(valuePtr + 3), v10 % SHIDWORD(v10)))
  {
    v22 = *MEMORY[0x1E69600F8];
    keys = *MEMORY[0x1E6960110];
    v36 = v22;
    v23 = *MEMORY[0x1E6960108];
    v37 = *MEMORY[0x1E6960100];
    v38 = v23;
    ArrayFromRational32 = createArrayFromRational32(a1, valuePtr);
    v15 = createArrayFromRational32(a1, valuePtr + 8);
    v16 = createArrayFromRational32(a1, valuePtr + 16);
    v24 = createArrayFromRational32(a1, valuePtr + 24);
    v18 = v24;
    if (ArrayFromRational32 && v15 && v16 && v24)
    {
      values[0] = ArrayFromRational32;
      values[1] = v15;
      values[2] = v16;
      values[3] = v24;
      v19 = MEMORY[0x1E695E9D8];
      v20 = MEMORY[0x1E695E9E8];
      v21 = values;
      goto LABEL_15;
    }

    createCleanApertureExtensionDictFromProperty_cold_1(&v32);
  }

  else
  {
    v11 = *MEMORY[0x1E6965D60];
    keys = *MEMORY[0x1E6965D80];
    v36 = v11;
    v12 = *MEMORY[0x1E6965D78];
    v37 = *MEMORY[0x1E6965D68];
    v38 = v12;
    v30 = v8 / SHIDWORD(v8);
    valuePtra = v7;
    v28 = v10 / SHIDWORD(v10);
    v29 = v9 / SHIDWORD(v9);
    v13 = *MEMORY[0x1E695E480];
    ArrayFromRational32 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtra);
    v15 = CFNumberCreate(v13, kCFNumberSInt32Type, &v30);
    v16 = CFNumberCreate(v13, kCFNumberSInt32Type, &v29);
    v17 = CFNumberCreate(v13, kCFNumberSInt32Type, &v28);
    v18 = v17;
    if (ArrayFromRational32 && v15 && v16 && v17)
    {
      v33[0] = ArrayFromRational32;
      v33[1] = v15;
      v33[2] = v16;
      v33[3] = v17;
      v19 = MEMORY[0x1E695E9D8];
      v20 = MEMORY[0x1E695E9E8];
      v21 = v33;
LABEL_15:
      v25 = CFDictionaryCreate(a1, &keys, v21, 4, v19, v20);
      v26 = 0;
      *a3 = v25;
LABEL_16:
      CFRelease(ArrayFromRational32);
      goto LABEL_17;
    }

    createCleanApertureExtensionDictFromProperty_cold_2(&v32);
  }

  v26 = v32;
  if (ArrayFromRational32)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v26;
}

const __CFArray *_copyDerivationParentPicturesArray(uint64_t a1, __CFArray **a2)
{
  if (*(a1 + 16))
  {
    _copyDerivationParentPicturesArray_cold_1(v14);
    return v14[0];
  }

  else
  {
    result = *(*(a1 + 8) + 520);
    if (result)
    {
      Count = CFArrayGetCount(result);
      if (Count < 1)
      {
        return 0;
      }

      else
      {
        v6 = Count;
        v7 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 8) + 520), v7);
          if (*ValueAtIndex == 1684630887)
          {
            break;
          }

          if (v6 == ++v7)
          {
            return 0;
          }
        }

        v9 = ValueAtIndex;
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
        if (Mutable)
        {
          v11 = Mutable;
          if (*(v9 + 1) < 1)
          {
LABEL_13:
            result = 0;
            *a2 = v11;
          }

          else
          {
            v12 = 0;
            while (1)
            {
              v13 = *(*(*(v9 + 3) + 8 * v12) + 32);
              if (!v13)
              {
                break;
              }

              CFArrayAppendValue(v11, v13);
              if (++v12 >= *(v9 + 1))
              {
                goto LABEL_13;
              }
            }

            _copyDerivationParentPicturesArray_cold_2();
            return v14[1];
          }
        }

        else
        {
          _copyDerivationParentPicturesArray_cold_3(&v15);
          return v15;
        }
      }
    }
  }

  return result;
}

uint64_t IFFPictureCopyTileDimensionsDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  theArray = 0;
  if (!IFFItemIsPicture(*(a1 + 8)))
  {
    IFFPictureCopyTileDimensionsDictionary_cold_3(&v15);
    return v15;
  }

  v4 = IFFItemOutboundReferencesOfType(*(a1 + 8), &theArray);
  v5 = theArray;
  if (v4)
  {
    goto LABEL_13;
  }

  v13 = 0;
  if (CFArrayGetCount(theArray) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
    getOutputDimensionsForItem(ValueAtIndex, &v13);
    if (!v4)
    {
      v7 = v13;
      v8 = HIDWORD(v13);
LABEL_8:
      v16.width = v7;
      v16.height = v8;
      DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v16);
      if (DictionaryRepresentation)
      {
        v11 = 0;
        *a2 = DictionaryRepresentation;
        goto LABEL_10;
      }

      IFFPictureCopyTileDimensionsDictionary_cold_2(&v15);
      goto LABEL_17;
    }

LABEL_13:
    v11 = v4;
    goto LABEL_10;
  }

  v9 = *(*(a1 + 8) + 80);
  if (v9)
  {
    v7 = *v9;
    v8 = v9[1];
    goto LABEL_8;
  }

  IFFPictureCopyTileDimensionsDictionary_cold_1(&v15);
LABEL_17:
  v11 = v15;
LABEL_10:
  if (v5)
  {
    CFRelease(v5);
  }

  return v11;
}

uint64_t IFFItemIsPicture(uint64_t result)
{
  v1 = result;
  v2 = *(result + 44);
  LOBYTE(result) = 1;
  if (v2 <= 1635135536)
  {
    if (v2 <= 1634743415)
    {
      if (v2 != 1634742376 && v2 != 1634742888 && v2 != 1634743400)
      {
        goto LABEL_34;
      }

      return result;
    }

    v3 = (v2 - 1634755432) > 0xB || ((1 << (v2 - 104)) & 0x8C1) == 0;
    if (!v3 || (v2 - 1634759272) <= 6 && ((1 << (v2 - 104)) & 0x51) != 0)
    {
      return result;
    }

    v4 = 1634743416;
    goto LABEL_33;
  }

  if (v2 <= 1768187245)
  {
    if (v2 > 1735551331)
    {
      if (v2 == 1735551332)
      {
        return result;
      }

      v4 = 1752589105;
    }

    else
    {
      if (v2 == 1635135537)
      {
        return result;
      }

      v4 = 1635148593;
    }

    goto LABEL_33;
  }

  if (v2 <= 1785750886)
  {
    if (v2 == 1768187246)
    {
      return result;
    }

    v4 = 1768912492;
LABEL_33:
    if (v2 != v4)
    {
      goto LABEL_34;
    }

    return result;
  }

  if (v2 != 1785750887 && v2 != 1936484717)
  {
    if (v2 != 1953325424)
    {
LABEL_34:
      LOBYTE(result) = 0;
      return result;
    }

    if (!*(v1 + 80))
    {
      fig_log_get_emitter();
      LOBYTE(result) = FigSignalErrorAtGM();
    }
  }

  return result;
}

uint64_t IFFItemOutboundReferencesOfType(uint64_t a1, __CFArray **a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (Mutable)
  {
    v6 = Mutable;
    Count = CFArrayGetCount(*(a1 + 520));
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; v8 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 520), i);
        if (*ValueAtIndex == 1684630887)
        {
          v11 = ValueAtIndex;
          v12 = CFArrayCreate(v4, *(ValueAtIndex + 3), *(ValueAtIndex + 1), 0);
          if (!v12)
          {
            IFFItemOutboundReferencesOfType_cold_1();
            return v15;
          }

          v13 = v12;
          v17.length = v11[1];
          v17.location = 0;
          CFArrayAppendArray(v6, v12, v17);
          CFRelease(v13);
        }
      }
    }

    result = 0;
    *a2 = v6;
  }

  else
  {
    IFFItemOutboundReferencesOfType_cold_2(&v16);
    return v16;
  }

  return result;
}

void getOutputDimensionsForItem(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 256))
  {
    v4 = *(a1 + 260);
LABEL_3:
    *a2 = v4;
    return;
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0;
  IFFItemPropertyGetOrderedTransformPropertiesForItem(a1, &v10, &v8, &v7 + 1, &v7);
  if (!v5)
  {
    v6[0] = v8;
    v6[1] = v9;
    if (!IFFItemPropertyApplyPropertiesToDimensions(v10, v6, SHIDWORD(v7), &v10))
    {
      v4 = v10;
      *(a1 + 260) = v10;
      *(a1 + 256) = 1;
      goto LABEL_3;
    }
  }
}

uint64_t IFFPictureCopyTileGridDimensionsDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  if (!IFFItemIsPicture(*(a1 + 8)))
  {
    IFFPictureCopyTileGridDimensionsDictionary_cold_3(&v12);
    return v12;
  }

  v4 = *(a1 + 8);
  v5 = 1.0;
  v6 = 1.0;
  if (*(v4 + 44) == 1735551332)
  {
    if (!*(v4 + 272))
    {
      IFFPictureCopyTileGridDimensionsDictionary_cold_2(&v11);
      return v11;
    }

    LOWORD(v6) = *(v4 + 290);
    v6 = *&v6;
    LOWORD(v5) = *(v4 + 288);
    v5 = *&v5;
  }

  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*&v6);
  if (DictionaryRepresentation)
  {
    v8 = DictionaryRepresentation;
    result = 0;
    *a2 = v8;
  }

  else
  {
    IFFPictureCopyTileGridDimensionsDictionary_cold_1(&v10);
    return v10;
  }

  return result;
}

uint64_t createPixelAspectRatioExtensionDictFromIFFItemProperty(const __CFAllocator *a1, char *valuePtr, CFDictionaryRef *a3)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  if (!v7)
  {
    createPixelAspectRatioExtensionDictFromIFFItemProperty_cold_2(&v13);
    return v13;
  }

  v8 = v7;
  v9 = CFNumberCreate(v6, kCFNumberSInt32Type, valuePtr + 4);
  if (!v9)
  {
    createPixelAspectRatioExtensionDictFromIFFItemProperty_cold_1();
    return v13;
  }

  v10 = v9;
  v11 = *MEMORY[0x1E6965F00];
  keys[0] = *MEMORY[0x1E6965EF0];
  keys[1] = v11;
  values[0] = v8;
  values[1] = v9;
  *a3 = CFDictionaryCreate(a1, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFRelease(v8);
  CFRelease(v10);
  return 0;
}

uint64_t createFormatDescriptionForItem(const __CFAllocator *a1, uint64_t a2, CMVideoFormatDescriptionRef *a3)
{
  cf = 0;
  value = 0;
  theArray = 0;
  v37 = 0;
  if (!*(a2 + 80))
  {
    createFormatDescriptionForItem_cold_2(&v40);
LABEL_69:
    v12 = 0;
    v24 = 0;
    v22 = 0;
    v19 = 0;
    v9 = v40;
    goto LABEL_80;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    createFormatDescriptionForItem_cold_1(&v40);
    goto LABEL_69;
  }

  v7 = Mutable;
  createColorExtensionsDictFromItem(a1, a2, &v37);
  if (v8)
  {
    v9 = v8;
    if (v8 != -12845)
    {
      goto LABEL_78;
    }
  }

  if (v37)
  {
    FigCFDictionaryAddEntriesToDictionaryWithRecursion();
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v13 = *(a2 + 44);
  if (v13 != 1768187246 && v13 != 1735551332)
  {
    goto LABEL_7;
  }

  v14 = IFFItemOutboundReferencesOfType(a2, &theArray);
  if (v14)
  {
    v9 = v14;
LABEL_78:
    v12 = 0;
    v24 = 0;
    v22 = 0;
    v19 = 0;
    goto LABEL_79;
  }

  v10 = theArray;
  if (CFArrayGetCount(theArray) >= 1)
  {
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v15);
      createColorExtensionsDictFromItem(a1, ValueAtIndex, &v37);
      if (v17)
      {
        break;
      }

      if (v37)
      {
        FigCFDictionaryAddEntriesToDictionaryWithRecursion();
        goto LABEL_8;
      }

      if (++v15 >= CFArrayGetCount(v10))
      {
        goto LABEL_8;
      }
    }

    v9 = v17;
    v19 = 0;
    v22 = 0;
    v24 = 0;
    v12 = 0;
    goto LABEL_59;
  }

LABEL_8:
  v11 = *(a2 + 120);
  if (v11)
  {
    v12 = CFDataCreate(a1, v11, 4);
    if (!v12)
    {
      v19 = 0;
      goto LABEL_72;
    }

    CFDictionaryAddValue(v7, *MEMORY[0x1E6960020], v12);
  }

  else
  {
    v12 = 0;
  }

  v18 = *(a2 + 128);
  if (!v18)
  {
    v19 = 0;
    goto LABEL_25;
  }

  v19 = CFDataCreate(a1, v18, 24);
  if (!v19)
  {
LABEL_72:
    v22 = 0;
    goto LABEL_73;
  }

  CFDictionaryAddValue(v7, *MEMORY[0x1E6960080], v19);
LABEL_25:
  v20 = *(a2 + 136);
  if (!v20)
  {
    v22 = 0;
    goto LABEL_30;
  }

  v21 = *v20;
  if ((v21 & 0x3C) != 0)
  {
    v22 = CFDataCreate(a1, v20, ((((v21 << 26) >> 31) & 0x18) + ((v21 >> 1) & 4) + ((v21 >> 2) & 4) + (v21 & 4)) | 1);
    if (v22)
    {
      CFDictionaryAddValue(v7, *MEMORY[0x1E6960018], v22);
LABEL_30:
      v23 = *(a2 + 144);
      if (!v23)
      {
        v24 = 0;
LABEL_34:
        v25 = *(a2 + 88);
        if (v25)
        {
          PixelAspectRatioExtensionDictFromIFFItemProperty = createPixelAspectRatioExtensionDictFromIFFItemProperty(a1, v25, &value);
          if (PixelAspectRatioExtensionDictFromIFFItemProperty)
          {
LABEL_70:
            v9 = PixelAspectRatioExtensionDictFromIFFItemProperty;
            goto LABEL_59;
          }

          CFDictionaryAddValue(v7, *MEMORY[0x1E6965EF8], value);
        }

        if (!*(a2 + 152))
        {
          goto LABEL_38;
        }

        createCleanApertureExtensionDictFromIFFItem(a1, a2, &cf);
        if (!PixelAspectRatioExtensionDictFromIFFItemProperty)
        {
          CFDictionaryAddValue(v7, *MEMORY[0x1E6965D70], cf);
LABEL_38:
          v34 = v19;
          v35 = v12;
          v27 = a3;
          if (*(a2 + 44) == 1785750887)
          {
            CFDictionaryAddValue(v7, *MEMORY[0x1E6965D00], *MEMORY[0x1E6965D20]);
          }

          v28 = *(a2 + 72);
          v29 = *(a2 + 80);
          if (v28)
          {
            goto LABEL_53;
          }

          v30 = *(a2 + 44);
          if (v30 != 1768187246 && v30 != 1735551332)
          {
LABEL_52:
            v28 = 0;
            goto LABEL_53;
          }

          LOBYTE(v40) = 0;
          if (v30 == 1735551332)
          {
            _tilesHaveSameBaseProperties();
            if (v31)
            {
              goto LABEL_58;
            }

            if (v40)
            {
LABEL_45:
              if (!v10)
              {
                v31 = IFFItemOutboundReferencesOfType(a2, &theArray);
                if (v31)
                {
LABEL_58:
                  v9 = v31;
                  v19 = v34;
                  v12 = v35;
                  goto LABEL_59;
                }

                v10 = theArray;
              }

              if (CFArrayGetCount(v10) >= 1)
              {
                v32 = 0;
                while (1)
                {
                  v28 = *(CFArrayGetValueAtIndex(v10, v32) + 9);
                  if (v28)
                  {
                    break;
                  }

                  if (++v32 >= CFArrayGetCount(v10))
                  {
                    goto LABEL_52;
                  }
                }

LABEL_53:
                if (CFDictionaryGetCount(v7))
                {
                  if (v28)
                  {
LABEL_55:
                    v31 = FigVideoFormatDescriptionCreateWithSampleDescriptionExtensionAtom();
                    goto LABEL_58;
                  }
                }

                else
                {
                  CFRelease(v7);
                  v7 = 0;
                  if (v28)
                  {
                    goto LABEL_55;
                  }
                }

                v31 = CMVideoFormatDescriptionCreate(a1, *(a2 + 44), *v29, v29[1], v7, v27);
                goto LABEL_58;
              }

              goto LABEL_52;
            }

            v30 = *(a2 + 44);
          }

          if (v30 != 1768187246)
          {
            goto LABEL_52;
          }

          goto LABEL_45;
        }

        goto LABEL_70;
      }

      v24 = CFDataCreate(a1, v23, 8);
      if (v24)
      {
        CFDictionaryAddValue(v7, *MEMORY[0x1E695FFF0], v24);
        goto LABEL_34;
      }

      goto LABEL_74;
    }

LABEL_73:
    v24 = 0;
LABEL_74:
    v9 = 4294954450;
    goto LABEL_59;
  }

  v22 = 0;
  v24 = 0;
  v9 = 4294954516;
LABEL_59:
  if (v7)
  {
LABEL_79:
    CFRelease(v7);
  }

LABEL_80:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v9;
}

const __CFArray *IFFPictureGetPictureThumbnailCount(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *IFFPictureGetPictureAuxiliaryImageCount(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *IFFPictureGetPictureExifCount(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *IFFPictureGetPictureXMPCount(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *IFFPictureGetPictureDebugMetadataCount(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *IFFPictureGetPictureCustomMetadataCount(uint64_t a1)
{
  result = *(a1 + 72);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t IFFPictureCopySampleLocation(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = *(a1 + 8);
  v7 = *(v6 + 44);
  if (v7 > 1768912491)
  {
    v8 = v7 == 1768912492;
    v9 = 1953325424;
  }

  else
  {
    v8 = v7 == 1735551332;
    v9 = 1768187246;
  }

  if (v8 || v7 == v9)
  {
    return 4294954513;
  }

  else
  {
    return copyLocationFromItem(v6, 0, a2, a3, a4, a5, a6, 0);
  }
}

BOOL __IFFInformationAddAndGetPictureItemFromPicture_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) == *(a1 + 48) && (v2 = *(a2 + 56), v2 == *(a1 + 32)))
  {
    return memcmp(*(a2 + 48), *(a1 + 40), v2) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t IFFPictureTileAccessorCreate(uint64_t a1, void *a2)
{
  theArray = 0;
  if (!IFFItemIsPicture(*(a1 + 8)))
  {
    IFFPictureTileAccessorCreate_cold_11(&v39);
LABEL_52:
    v34 = v39;
    IFFPictureTileAccessorDispose(0);
    return v34;
  }

  if (*(a1 + 16))
  {
    IFFPictureTileAccessorCreate_cold_1(&v39);
    goto LABEL_52;
  }

  v4 = *(a1 + 8);
  if (!*(v4 + 80))
  {
    IFFPictureTileAccessorCreate_cold_10(&v39);
    goto LABEL_52;
  }

  v5 = IFFItemOutboundReferencesOfType(v4, &theArray);
  v6 = theArray;
  if (v5)
  {
    v34 = v5;
    goto LABEL_42;
  }

  Count = CFArrayGetCount(theArray);
  v8 = *(a1 + 8);
  v9 = *(v8 + 44);
  if (v9 == 1768912492)
  {
    v38 = 0;
    v10 = 1;
    v11 = 1;
    goto LABEL_22;
  }

  if (Count <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = Count;
  }

  if (v9 == 1953325424)
  {
    v38 = 0;
    v11 = 1;
    v10 = 1;
    goto LABEL_22;
  }

  if (Count >= 1)
  {
    if (v9 == 1735551332)
    {
      if (*(v8 + 272))
      {
        if (*(v8 + 288) && *(v8 + 290))
        {
          if (*(v8 + 290) * *(v8 + 288) == v11)
          {
            v12 = *(v8 + 80);
            if (*(v8 + 296) == v12[1] && *(v8 + 292) == *v12)
            {
              v10 = 0;
              v38 = (v8 + 288);
              goto LABEL_22;
            }

            IFFPictureTileAccessorCreate_cold_4(&v39);
          }

          else
          {
            IFFPictureTileAccessorCreate_cold_3(&v39);
          }
        }

        else
        {
          IFFPictureTileAccessorCreate_cold_5(&v39);
        }
      }

      else
      {
        IFFPictureTileAccessorCreate_cold_6(&v39);
      }
    }

    else
    {
      IFFPictureTileAccessorCreate_cold_2(&v39);
    }

    v13 = 0;
    goto LABEL_62;
  }

  v38 = 0;
  v10 = 1;
LABEL_22:
  v13 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A0040BEEDEA2AuLL);
  if (v13)
  {
    v13[8] = malloc_type_calloc(v11, 0x10uLL, 0x1000040451B5BE8uLL);
    v13[9] = malloc_type_calloc(v11, 8uLL, 0x2004093837F09uLL);
    v14 = *a1;
    if (*a1)
    {
      v14 = CFRetain(v14);
    }

    *v13 = v14;
    v13[1] = a1;
    v13[6] = v11;
    v13[7] = 0;
    if ((v10 & 1) == 0)
    {
      v36 = a2;
      v37 = v6;
      v39 = 0;
      v19 = *v38;
      if (*v38)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v23 = 0;
        LODWORD(v24) = v38[1];
        while (!v24)
        {
LABEL_39:
          v22 += v20;
          if (++v21 >= v19)
          {
            goto LABEL_40;
          }
        }

        v25 = 0;
        v26 = 0;
        v27 = 16 * v23;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v37, v23 + v25);
          getOutputDimensionsForItem(ValueAtIndex, &v39);
          if (v29)
          {
            break;
          }

          v30 = v39;
          v20 = HIDWORD(v39);
          if (v25 | v21)
          {
            if (*(v13 + 2) != __PAIR128__(HIDWORD(v39), v39))
            {
              IFFPictureTileAccessorCreate_cold_7(&v41);
              v34 = v41;
              goto LABEL_48;
            }
          }

          else
          {
            v13[4] = v39;
            v13[5] = v20;
          }

          v31 = (v13[8] + v27);
          *v31 = v26;
          v31[1] = v22;
          *(v13[9] + 8 * v23 + 8 * v25) = ValueAtIndex;
          v26 += v30;
          ++v25;
          v24 = v38[1];
          v27 += 16;
          if (v25 >= v24)
          {
            v19 = *v38;
            v23 += v25;
            goto LABEL_39;
          }
        }

        v34 = v29;
LABEL_48:
        v6 = v37;
        goto LABEL_43;
      }

LABEL_40:
      v6 = v37;
      v32 = *(v38 + 2);
      *&v33 = v32;
      *(&v33 + 1) = HIDWORD(v32);
      *(v13 + 1) = v33;
      a2 = v36;
      goto LABEL_41;
    }

    if (*(*(a1 + 8) + 80))
    {
      v15 = v13[8];
      *v15 = 0;
      v15[1] = 0;
      v16 = *(a1 + 8);
      *v13[9] = v16;
      v17 = *(v16 + 80);
      *&v18 = *v17;
      *(&v18 + 1) = HIDWORD(*v17);
      *(v13 + 1) = v18;
      *(v13 + 2) = v18;
LABEL_41:
      v34 = 0;
      *a2 = v13;
LABEL_42:
      v13 = 0;
      goto LABEL_43;
    }

    IFFPictureTileAccessorCreate_cold_8(&v39);
  }

  else
  {
    IFFPictureTileAccessorCreate_cold_9(&v39);
  }

LABEL_62:
  v34 = v39;
LABEL_43:
  IFFPictureTileAccessorDispose(v13);
  if (v6)
  {
    CFRelease(v6);
  }

  return v34;
}

void IFFPictureTileAccessorDispose(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
      *a1 = 0;
    }

    v3 = a1[8];
    if (v3)
    {
      a1[8] = 0;
      free(v3);
    }

    v4 = a1[9];
    if (v4)
    {
      a1[9] = 0;
      free(v4);
    }

    free(a1);
  }
}

uint64_t IFFPictureTileAccessorCopySpatialRelationDictionary(uint64_t a1, CFDictionaryRef *a2)
{
  keys[4] = *MEMORY[0x1E69E9840];
  v4 = CFGetAllocator(*a1);
  v5 = *(a1 + 56);
  v6 = *(*(a1 + 72) + 8 * v5);
  v7 = *(v6 + 80);
  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = v4;
  v9 = (*(a1 + 64) + 16 * v5);
  v35 = *v9;
  v10 = v9[1];
  v34 = v10;
  v11 = *(a1 + 24);
  *&v12 = *(a1 + 16);
  v13 = *&v12 - v35;
  LODWORD(v12) = *v7;
  v14 = v12;
  if (v13 >= v14)
  {
    v13 = v14;
  }

  valuePtr = v13;
  *&v15 = v11;
  v16 = *&v15 - v10;
  LODWORD(v15) = v7[1];
  v17 = v15;
  if (v16 >= v17)
  {
    v16 = v17;
  }

  v32 = v16;
  v18 = *(v6 + 152);
  if (!v18)
  {
    goto LABEL_16;
  }

  v19 = *v18 / v18[1];
  if (v19 > v14 || (v21 = v18 + 2, v20 = v18[2], v22 = v21[1], v23 = v20 / v22, v23 > v17))
  {
LABEL_25:
    IFFPictureTileAccessorCopySpatialRelationDictionary_cold_2();
    return v36;
  }

  if (v19 >= v13)
  {
    v24 = v13;
  }

  else
  {
    v24 = v19;
  }

  if (v23 >= v16)
  {
    v25 = v16;
  }

  else
  {
    v25 = v20 / v22;
  }

  v32 = v25;
  valuePtr = v24;
LABEL_16:
  keys[0] = @"Width";
  keys[1] = @"Height";
  keys[2] = @"HorizontalOffset";
  keys[3] = @"VerticalOffset";
  v26 = *MEMORY[0x1E695E480];
  values[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  values[1] = CFNumberCreate(v26, kCFNumberDoubleType, &v32);
  values[2] = CFNumberCreate(v26, kCFNumberDoubleType, &v35);
  values[3] = CFNumberCreate(v26, kCFNumberDoubleType, &v34);
  v27 = CFDictionaryCreate(v8, keys, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v27)
  {
    v28 = 0;
    *a2 = v27;
  }

  else
  {
    IFFPictureTileAccessorCopySpatialRelationDictionary_cold_1(&v36);
    v28 = v36;
  }

  v29 = -1;
  v30 = values;
  do
  {
    if (*v30)
    {
      CFRelease(*v30);
      *v30 = 0;
    }

    ++v29;
    ++v30;
  }

  while (v29 < 3);
  return v28;
}

uint64_t IFFPictureTileAccessorCopyFormatDescription(uint64_t a1, CMVideoFormatDescriptionRef *a2)
{
  v3 = *(*(a1 + 72) + 8 * *(a1 + 56));
  v4 = CFGetAllocator(*a1);

  return createFormatDescriptionForItem(v4, v3, a2);
}

uint64_t IFFPictureTileAccessorStepCursor(uint64_t a1, int *a2)
{
  v2 = *(a1 + 56) + 1;
  if (v2 >= *(a1 + 48))
  {
    v3 = 0;
  }

  else
  {
    *(a1 + 56) = v2;
    v3 = 1;
  }

  *a2 = v3;
  return 0;
}

uint64_t IFFPictureTileAccessorGetTileLocation(uint64_t a1, void *a2, void *a3)
{
  v3 = (*(a1 + 64) + 16 * *(a1 + 56));
  *a2 = *v3;
  *a3 = v3[1];
  return 0;
}

void IFFPictureTileAccessorSeekCursorToLocation(void *a1, unint64_t a2, unint64_t a3)
{
  if (a1[2] <= a2)
  {
    IFFPictureTileAccessorSeekCursorToLocation_cold_1(&v15);
  }

  else if (a1[3] <= a3)
  {
    IFFPictureTileAccessorSeekCursorToLocation_cold_2(&v15);
  }

  else if (a1[6] >= 1)
  {
    v6 = 0;
    for (i = 0; i < a1[6]; ++i)
    {
      v8 = a1[8];
      v9 = *(a1[9] + 8 * i);
      v15 = 0;
      getOutputDimensionsForItem(v9, &v15);
      if (v10)
      {
        break;
      }

      v11 = *(v8 + v6);
      if (v11 <= a2)
      {
        v12 = *(v8 + v6 + 8);
        v13 = v11 + v15 <= a2 || v12 > a3;
        if (!v13 && v12 + HIDWORD(v15) > a3)
        {
          a1[7] = i;
          return;
        }
      }

      v6 += 16;
    }
  }
}

uint64_t IFFItemCreate(uint64_t a1, uint64_t *a2)
{
  if (sRegisterIFFItemTypeOnce != -1)
  {
    IFFItemCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    result = 0;
    *a2 = v4;
  }

  else
  {
    IFFItemCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t IFFItemInformationCreate(uint64_t a1, uint64_t *a2)
{
  if (sRegisterIFFItemInformationTypeOnce != -1)
  {
    IFFItemInformationCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v4 = Instance;
    result = 0;
    *(v4 + 176) = 1;
    *(v4 + 88) = 0;
    *a2 = v4;
  }

  else
  {
    IFFItemInformationCreate_cold_2(&v6);
    return v6;
  }

  return result;
}

uint64_t IFFItemComparator(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  v4 = v2 >= v3;
  v5 = v2 == v3;
  v6 = -1;
  if (v4)
  {
    v6 = 1;
  }

  if (v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t IFFItemInboundReferencesOfType(uint64_t a1, int a2, uint64_t (*a3)(_BYTE *), __CFArray **a4)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = *(a1 + 528);
    if (v10)
    {
      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        v12 = Count;
        for (i = 0; i != v12; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 528), i);
          v15 = CFArrayGetValueAtIndex(*(a1 + 536), i);
          v16 = ValueAtIndex[16];
          v17 = a3(ValueAtIndex);
          if (ValueAtIndex == a1)
          {
            v18 = 0;
          }

          else
          {
            v18 = v16;
          }

          v19 = v17 & v18 & 1;
          if (v15 == a2 && v19 != 0)
          {
            CFArrayAppendValue(v9, ValueAtIndex);
          }
        }
      }
    }

    result = 0;
    *a4 = v9;
  }

  else
  {
    IFFItemInboundReferencesOfType_cold_1(&v22);
    return v22;
  }

  return result;
}

BOOL IFFItemIsXMPPayload(uint64_t a1)
{
  result = 0;
  if (*(a1 + 44) == 1835625829)
  {
    if (*(a1 + 464))
    {
      v1 = *(a1 + 472);
      if (v1)
      {
        if (!strcmp(v1, "application/rdf+xml"))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL IFFItemIsDebugMetadataPayload(uint64_t a1)
{
  result = 0;
  if (*(a1 + 44) == 1970432288)
  {
    if (*(a1 + 488))
    {
      v1 = *(a1 + 496);
      if (v1)
      {
        if (!strcmp(v1, "urn:uuid:0AFF93BC-356D-4BF7-8B5F-73037F2F1E5D"))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL IFFItemIsCustomMetadataPayload(uint64_t a1)
{
  result = 0;
  if (*(a1 + 44) == 1970432288)
  {
    if (*(a1 + 488))
    {
      v1 = *(a1 + 496);
      if (v1)
      {
        if (strcmp(v1, "urn:uuid:0AFF93BC-356D-4BF7-8B5F-73037F2F1E5D"))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t _propertyIsEssential(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    Count = *(a1 + 56);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (v4 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v4++);
    if (*ValueAtIndex + 40 == a2)
    {
      return ValueAtIndex[8];
    }
  }

  return 0;
}

BOOL ___setStereoMetadataSingleIntegerHelper_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 == 19)
  {
    v3 = *(a2 + 40);
    return *(a1 + 32) == v3;
  }

  if (v2 == 16 || v2 == 15)
  {
    v3 = *(a2 + 40);
    return *(a1 + 32) == v3;
  }

  return 0;
}

uint64_t _cfArrayGetSizeLimitedInt32IfPresent(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (FigCFArrayGetInt64AtIndex())
  {
    result = 0;
    *a4 = 0;
  }

  else
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t _cfDictionaryGetSizeLimitedInt32IfPresent(uint64_t a1, uint64_t a2, _DWORD *a3, _BYTE *a4)
{
  Int64IfPresent = FigCFDictionaryGetInt64IfPresent();
  result = 0;
  *a4 = Int64IfPresent;
  *a3 = 0;
  return result;
}

BOOL ___setStereoMetadataIntrinsicsExtrinsicsHelper_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 == 18)
  {
    return a2[5] == *(a1 + 72) && a2[6] == *(a1 + 80) && a2[7] == *(a1 + 88);
  }

  return v2 == 17 && memcmp(a2 + 5, (a1 + 36), 0x24uLL) == 0;
}

uint64_t _assignSharedHDRMetadataPropertiesToItem(const __CFArray *a1, uint64_t a2)
{
  if (CFArrayGetCount(a1) < 1)
  {
    return 0;
  }

  _assignSharedHDRMetadataPropertiesToItem_cold_1(a2, a1, &v5);
  return v5;
}

BOOL __iffpcbAddPictureHelper_block_invoke_8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = strlen(*(a1 + 32));
  }

  else
  {
    v5 = 0;
  }

  result = strlen(*(a2 + 40)) == v5 && (v6 = *(a2 + 56), v6 == *(a1 + 40)) && (!v5 || !strcmp(*(a2 + 40), v4)) && (!v6 || !memcmp(*(a2 + 48), *(a1 + 48), v6));
  return result;
}

void _getHDRMetadataProperty(uint64_t a1, CFDataRef theData, CFArrayRef *a3, uint64_t *a4)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v10 = Length;
  if (a1 > 7)
  {
    if (a1 == 9)
    {
      if (Length != 8)
      {
        return;
      }

      v11 = v18;
      _getHDRMetadataProperty_cold_2(v18, BytePtr);
    }

    else
    {
      if (_getHDRMetadataProperty_cold_5(BytePtr, Length, &v22))
      {
        return;
      }

      v11 = v19;
      _getHDRMetadataProperty_cold_1(v19, v10, BytePtr);
    }
  }

  else if (a1 == 6)
  {
    if (Length != 4)
    {
      return;
    }

    v11 = v21;
    _getHDRMetadataProperty_cold_4(v21, BytePtr);
  }

  else
  {
    if (Length != 24)
    {
      return;
    }

    v11 = v20;
    _getHDRMetadataProperty_cold_3(v20, BytePtr);
  }

  _getSharedPropertyOfTypeWithComparator(a3, a1, a4, v11, v12, v13, v14, v15, v17, v18[0], SHIDWORD(v18[0]), v18[1], v18[2], v18[3], v18[4], v18[5], v19[0], v19[1], v19[2], v19[3], v19[4]);
  if (v16)
  {
    if (!IFFInformationReserveSharedItemProperty(a3, a1, a4, 0))
    {
      IFFInformationSetItemPropertyHDRMetaData(*a4, BytePtr, v10);
    }
  }
}

uint64_t RegisterIFFItemType()
{
  result = _CFRuntimeRegisterClass();
  sIFFItemID = result;
  return result;
}

void FinalizeIFFItem(uint64_t a1)
{
  v2 = *(a1 + 520);
  if (v2)
  {
    if (CFArrayGetCount(v2) >= 1)
    {
      v3 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 520), v3);
        IFFItemReferenceFree(ValueAtIndex);
        ++v3;
      }

      while (v3 < CFArrayGetCount(*(a1 + 520)));
    }

    v5 = *(a1 + 520);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 520) = 0;
    }
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    if (CFArrayGetCount(v6) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = CFArrayGetValueAtIndex(*(a1 + 56), v7);
        free(v8);
        ++v7;
      }

      while (v7 < CFArrayGetCount(*(a1 + 56)));
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 56) = 0;
    }
  }

  v10 = *(a1 + 224);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 224) = 0;
  }

  v11 = *(a1 + 528);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 528) = 0;
  }

  v12 = *(a1 + 536);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 536) = 0;
  }

  v13 = *(a1 + 456);
  if (v13)
  {
    *(a1 + 456) = 0;
    free(v13);
  }

  v14 = *(a1 + 280);
  if (v14)
  {
    *(a1 + 280) = 0;
    free(v14);
  }

  v15 = *(a1 + 472);
  if (v15)
  {
    *(a1 + 472) = 0;
    free(v15);
  }

  v16 = *(a1 + 480);
  if (v16)
  {
    *(a1 + 480) = 0;
    free(v16);
  }

  v17 = *(a1 + 496);
  if (v17)
  {
    *(a1 + 496) = 0;
    free(v17);
  }

  v18 = *(a1 + 504);
  if (v18)
  {
    *(a1 + 504) = 0;
    free(v18);
  }

  v19 = *(a1 + 544);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 544) = 0;
  }
}

uint64_t RegisterIFFItemGroupType()
{
  result = _CFRuntimeRegisterClass();
  sIFFItemGroupID = result;
  return result;
}

double InitIFFItemGroup(uint64_t a1)
{
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FinalizeIFFItemGroup(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 48) = 0;
  }
}

uint64_t RegisterIFFItemInformationType()
{
  result = _CFRuntimeRegisterClass();
  sIFFItemInformationID = result;
  return result;
}

double InitIFFItemInformation(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void FinalizeIFFItemInformation(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    if (CFArrayGetCount(v2) >= 1)
    {
      v3 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 136), v3);
        IFFPictureRecordFree(ValueAtIndex);
        ++v3;
      }

      while (v3 < CFArrayGetCount(*(a1 + 136)));
    }

    v5 = *(a1 + 136);
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 136) = 0;
    }
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    if (CFArrayGetCount(v6) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = CFArrayGetValueAtIndex(*(a1 + 104), v7);
        if (v8)
        {
          v9 = v8;
          free(*(v8 + 3));
          v10 = v9[4];
          if (v10)
          {
            CFRelease(v10);
          }

          free(v9);
        }

        ++v7;
      }

      while (v7 < CFArrayGetCount(*(a1 + 104)));
    }

    v11 = *(a1 + 104);
    if (v11)
    {
      CFRelease(v11);
      *(a1 + 104) = 0;
    }
  }

  v12 = *(a1 + 96);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 96) = 0;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 16) = 0;
  }

  v14 = *(a1 + 144);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 144) = 0;
  }

  v15 = *(a1 + 152);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 152) = 0;
  }

  v16 = *(a1 + 160);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 160) = 0;
  }

  v17 = *(a1 + 168);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 168) = 0;
  }

  v18 = *(a1 + 112);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 112) = 0;
  }
}

uint64_t OUTLINED_FUNCTION_19_45(uint64_t a1)
{
  result = 0;
  *v1 = a1;
  return result;
}

void OUTLINED_FUNCTION_24_33(uint64_t a1@<X5>, uint64_t a2@<X6>, uint64_t a3@<X7>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *v16;
  v19 = v16[2];
  v20 = *(a4 + 40);

  IFFInformationAssignSharedItemPropertyByIndex(v18, v19, 1, 1, v20, a1, a2, a3, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

void OUTLINED_FUNCTION_26_35(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(a6 + 40);

  IFFInformationAssignSharedItemPropertyByIndex(a1, a2, 1, 1, v19, a3, a4, a5, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void OUTLINED_FUNCTION_27_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  IFFInformationReserveItemExtentTable(v20, a2, 1, 0, 1, 0, 0, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void OUTLINED_FUNCTION_37_28(__CFArray *a1)
{
  v4.location = 0;
  v4.length = v2;

  CFArrayAppendArray(a1, v1, v4);
}

void OUTLINED_FUNCTION_39_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 + 40);

  IFFInformationAssignSharedItemPropertyByIndex(a1, a2, 1, 0, v22, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_44_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);

  return IFFInformationGetItemReferencesOfType(v9, 1684630887, va, 0, va1);
}

void *OUTLINED_FUNCTION_45_19()
{

  return malloc_type_calloc(1uLL, 0x20uLL, 0x1090040157183C6uLL);
}

CFIndex OUTLINED_FUNCTION_50_16(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CFArrayRef theArray)
{

  return CFArrayGetCount(theArray);
}

uint64_t OUTLINED_FUNCTION_51_22@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_55_20(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{

  return _cfDictionaryGetSizeLimitedInt32IfPresent(v25, a2, a3, &a25);
}

uint64_t OUTLINED_FUNCTION_65_14@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *(v10 + 64) = a1;

  return IFFInformationReservePictureFromItemIfNeeded(v10, 0, va);
}

uint64_t OUTLINED_FUNCTION_66_13(const __CFString *a1)
{

  return CFStringGetCString(a1, v2, v1, 0x8000100u);
}

CFNumberRef OUTLINED_FUNCTION_68_13(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberDoubleType, a3);
}

CFStringRef OUTLINED_FUNCTION_69_10(const __CFAllocator *a1, const char *a2)
{

  return CFStringCreateWithCString(a1, a2, 0x8000100u);
}

uint64_t OUTLINED_FUNCTION_70_12(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *), __CFArray **a4)
{

  return IFFItemInboundReferencesOfType(a1, 1667527523, a3, a4);
}

uint64_t FigPlayerInterstitialEventCreate(uint64_t a1, const void *a2, __int128 *a3, const void *a4, const __CFArray *a5, const void *a6, int a7, int a8, char a9, char a10, char a11, __int128 *a12, __int128 *a13, int a14, char a15, char a16, const __CFDictionary *a17, uint64_t *a18)
{
  if (a18)
  {
    v24 = *MEMORY[0x1E695E480];
    MEMORY[0x19A8D3660](&FigPlayerInterstitialEventGetTypeID_sFigPlayerInterstitialEventRegisterOnce, figPlayerInterstitialEvent_initOnce);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v26 = Instance;
      *(Instance + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
      if (a2)
      {
        v27 = CFRetain(a2);
      }

      else
      {
        v27 = 0;
      }

      *(v26 + 24) = v27;
      v28 = *a3;
      *(v26 + 48) = *(a3 + 2);
      *(v26 + 32) = v28;
      if (a4)
      {
        v29 = CFRetain(a4);
      }

      else
      {
        v29 = 0;
      }

      *(v26 + 56) = v29;
      v30 = MEMORY[0x1E6960C70];
      *(v26 + 64) = *MEMORY[0x1E6960C70];
      *(v26 + 80) = *(v30 + 16);
      v42 = a2;
      if (a5)
      {
        Copy = CFArrayCreateCopy(v24, a5);
      }

      else
      {
        Copy = 0;
      }

      *(v26 + 88) = Copy;
      v32 = a6;
      if (a6)
      {
        v32 = CFRetain(a6);
      }

      *(v26 + 96) = v32;
      *(v26 + 104) = a7;
      *(v26 + 108) = a8;
      *(v26 + 112) = a9;
      *(v26 + 113) = a10;
      *(v26 + 114) = a11;
      v33 = *a12;
      *(v26 + 132) = *(a12 + 2);
      *(v26 + 116) = v33;
      v34 = *a13;
      *(v26 + 156) = *(a13 + 2);
      *(v26 + 140) = v34;
      v35 = MEMORY[0x1E6960CC0];
      *(v26 + 304) = *MEMORY[0x1E6960CC0];
      *(v26 + 320) = *(v35 + 16);
      *(v26 + 208) = FigSimpleMutexCreate();
      *(v26 + 440) = a14;
      *(v26 + 444) = a15;
      *(v26 + 445) = a16;
      *(v26 + 448) = -1;
      v36 = MEMORY[0x1E6960C98];
      v37 = *(MEMORY[0x1E6960C98] + 16);
      *(v26 + 328) = *MEMORY[0x1E6960C98];
      *(v26 + 344) = v37;
      *(v26 + 360) = *(v36 + 32);
      v38 = v24;
      if (a17)
      {
        v39 = CFDictionaryCreateCopy(v24, a17);
      }

      else
      {
        v39 = CFDictionaryCreate(v24, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      *(v26 + 192) = v39;
      if (!v42)
      {
        v40 = CFUUIDCreate(v24);
        *(v26 + 24) = CFUUIDCreateString(v38, v40);
        if (v40)
        {
          CFRelease(v40);
        }
      }

      result = 0;
      *a18 = v26;
    }

    else
    {
      FigPlayerInterstitialEventCreate_cold_1(&v44);
      return v44;
    }
  }

  else
  {
    FigPlayerInterstitialEventCreate_cold_2();
    return 0;
  }

  return result;
}

uint64_t FigPlayerInterstitialEventCreateFromDictionary(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  value = 0;
  if (!a2)
  {
    FigPlayerInterstitialEventCreateFromDictionary_cold_7();
    return 0;
  }

  if (!a3)
  {
    FigPlayerInterstitialEventCreateFromDictionary_cold_6();
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  MEMORY[0x19A8D3660](&FigPlayerInterstitialEventGetTypeID_sFigPlayerInterstitialEventRegisterOnce, figPlayerInterstitialEvent_initOnce);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigPlayerInterstitialEventCreateFromDictionary_cold_5(&at);
    return LODWORD(at);
  }

  v7 = Instance;
  *(Instance + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(v7 + 208) = FigSimpleMutexCreate();
  if (!CFDictionaryGetValueIfPresent(a2, @"identifier", (v7 + 24)))
  {
    FigPlayerInterstitialEventCreateFromDictionary_cold_4();
    return 0;
  }

  v8 = *(v7 + 24);
  if (v8)
  {
    CFRetain(v8);
  }

  at = 0.0;
  CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
  DoubleIfPresent = FigCFDictionaryGetDoubleIfPresent();
  if (!(CMTimeIfPresent | DoubleIfPresent))
  {
    FigPlayerInterstitialEventCreateFromDictionary_cold_3();
    return 0;
  }

  if (DoubleIfPresent)
  {
    *(v7 + 56) = CFDateCreate(v5, at);
  }

  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeIfPresent();
  FigCFDictionaryGetCMTimeRangeIfPresent();
  FigCFDictionaryGetValueIfPresent();
  v11 = *(v7 + 424);
  if (v11)
  {
    CFRetain(v11);
  }

  if (!FigCFDictionaryGetInt64IfPresent())
  {
    FigPlayerInterstitialEventCreateFromDictionary_cold_2();
    return 0;
  }

  *(v7 + 104) = 0;
  if (FigCFDictionaryGetInt64IfPresent())
  {
    *(v7 + 108) = 0;
  }

  if (FigCFDictionaryGetInt64IfPresent())
  {
    *(v7 + 440) = 0;
  }

  v12 = CFDictionaryGetValue(a2, @"PreRoll");
  v13 = *MEMORY[0x1E695E4D0];
  *(v7 + 112) = v12 == *MEMORY[0x1E695E4D0];
  *(v7 + 113) = CFDictionaryGetValue(a2, @"PostRoll") == v13;
  *(v7 + 114) = CFDictionaryGetValue(a2, @"CueOnce") == v13;
  *(v7 + 444) = CFDictionaryGetValue(a2, @"SupplementsPrimaryContent") == v13;
  *(v7 + 445) = CFDictionaryGetValue(a2, @"ContentMayVary") == v13;
  if (CFDictionaryGetValueIfPresent(a2, @"ExtraAttributes", (v7 + 192)))
  {
    v14 = *(v7 + 192);
    if (v14)
    {
      CFRetain(v14);
    }
  }

  else
  {
    *(v7 + 192) = CFDictionaryCreate(v5, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  CFDictionaryGetValueIfPresent(a2, @"assetListURL", &value);
  if (value)
  {
    *(v7 + 96) = CFURLCreateWithString(v5, value, 0);
  }

  v15 = CFDictionaryGetValue(a2, @"URLs");
  if (v15 && (v16 = v15, Count = CFArrayGetCount(v15), Count >= 1))
  {
    v18 = Count;
    v19 = 0;
    v20 = MEMORY[0x1E695E9C0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v16, v19);
      v22 = ValueAtIndex ? CFURLCreateWithString(v5, ValueAtIndex, 0) : 0;
      Mutable = *(v7 + 88);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(v5, 0, v20);
        *(v7 + 88) = Mutable;
        if (!Mutable)
        {
          break;
        }
      }

      CFArrayAppendValue(Mutable, v22);
      if (v22)
      {
        CFRelease(v22);
      }

      if (v18 == ++v19)
      {
        goto LABEL_34;
      }
    }

    FigPlayerInterstitialEventCreateFromDictionary_cold_1(&v29);
    return v29;
  }

  else
  {
LABEL_34:
    FigCFDictionaryGetCFIndexIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetCMTimeIfPresent();
    FigCFDictionaryGetValueIfPresent();
    FigCFDictionaryGetValueIfPresent();
    v24 = *(v7 + 296);
    if (v24)
    {
      CFRetain(v24);
    }

    v25 = *(v7 + 200);
    if (v25)
    {
      CFRetain(v25);
    }

    result = 0;
    *a3 = v7;
  }

  return result;
}

__CFDictionary *FigPlayerInterstitialEventCopyAsDictionary(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigSimpleMutexLock();
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"identifier", *(a1 + 24));
    if (*(a1 + 44))
    {
      FigCFDictionarySetCMTime();
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      MEMORY[0x19A8CCD90](v8, v6, v7);
      FigCFDictionarySetDouble();
    }

    if (*(a1 + 128))
    {
      FigCFDictionarySetCMTime();
    }

    if (*(a1 + 76))
    {
      FigCFDictionarySetCMTime();
    }

    if (*(a1 + 152))
    {
      FigCFDictionarySetCMTime();
    }

    FigCFDictionarySetCMTime();
    FigCFDictionarySetInt64();
    CFDictionarySetValue(Mutable, @"ExtraAttributes", *(a1 + 192));
    FigCFDictionarySetInt64();
    FigCFDictionarySetInt64();
    v9 = MEMORY[0x1E695E4D0];
    if (*(a1 + 112))
    {
      CFDictionarySetValue(Mutable, @"PreRoll", *MEMORY[0x1E695E4D0]);
    }

    if (*(a1 + 113))
    {
      CFDictionarySetValue(Mutable, @"PostRoll", *v9);
    }

    if (*(a1 + 114))
    {
      CFDictionarySetValue(Mutable, @"CueOnce", *v9);
    }

    v10 = *(a1 + 96);
    if (v10)
    {
      v11 = CFURLCopyAbsoluteURL(v10);
      if (v11)
      {
        v12 = v11;
        v13 = CFURLGetString(v11);
        CFDictionarySetValue(Mutable, @"assetListURL", v13);
        CFRelease(v12);
      }
    }

    if (*(a1 + 444))
    {
      CFDictionarySetValue(Mutable, @"SupplementsPrimaryContent", *v9);
    }

    if (*(a1 + 445))
    {
      CFDictionarySetValue(Mutable, @"ContentMayVary", *v9);
    }

    v14 = *(a1 + 88);
    if (v14)
    {
      Count = CFArrayGetCount(v14);
      if (Count >= 1)
      {
        v16 = Count;
        v17 = 0;
        v18 = 0;
        v19 = MEMORY[0x1E695E9C0];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v18);
          if (!ValueAtIndex)
          {
            break;
          }

          v21 = CFRetain(ValueAtIndex);
          if (!v17)
          {
            goto LABEL_30;
          }

LABEL_31:
          if (v21 && v17)
          {
            v22 = CFURLCopyAbsoluteURL(v21);
            if (v22)
            {
              v23 = v22;
              v24 = CFURLGetString(v22);
              CFArrayAppendValue(v17, v24);
              CFRelease(v23);
            }

LABEL_36:
            CFRelease(v21);
            goto LABEL_37;
          }

          if (v21)
          {
            goto LABEL_36;
          }

LABEL_37:
          if (v16 == ++v18)
          {
            if (v17)
            {
              CFDictionarySetValue(Mutable, @"URLs", v17);
              CFRelease(v17);
            }

            goto LABEL_43;
          }
        }

        v21 = 0;
        if (v17)
        {
          goto LABEL_31;
        }

LABEL_30:
        v17 = CFArrayCreateMutable(v4, v16, v19);
        goto LABEL_31;
      }
    }

LABEL_43:
    FigCFDictionarySetCFIndex();
    if (*(a1 + 236))
    {
      FigCFDictionarySetCMTime();
    }

    if (*(a1 + 284))
    {
      FigCFDictionarySetCMTime();
    }

    if (*(a1 + 260))
    {
      FigCFDictionarySetCMTime();
    }

    if (*(a1 + 296))
    {
      FigCFDictionarySetValue();
    }

    if (a2 && *(a1 + 200))
    {
      FigCFDictionarySetValue();
    }

    if ((*(a1 + 340) & 1) != 0 && (*(a1 + 364) & 1) != 0 && !*(a1 + 368) && (*(a1 + 352) & 0x8000000000000000) == 0)
    {
      FigCFDictionarySetCMTimeRange();
    }

    if (*(a1 + 424))
    {
      FigCFDictionarySetValue();
    }
  }

  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t FigPlayerInterstitialEventValidate(uint64_t a1)
{
  FigSimpleMutexLock();
  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v2 = *(a1 + 56);
  if (*(a1 + 44))
  {
    if (v2)
    {
LABEL_10:
      FigPlayerInterstitialEventValidate_cold_1();
      goto LABEL_9;
    }
  }

  else if (!v2)
  {
    goto LABEL_10;
  }

  if ((*(a1 + 88) == 0) == (*(a1 + 96) == 0) || *(a1 + 112) && *(a1 + 113))
  {
    goto LABEL_10;
  }

LABEL_9:
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t FigPlayerInterstitialEventSetImmutable(uint64_t a1)
{
  FigSimpleMutexLock();
  *(a1 + 115) = 1;

  return FigSimpleMutexUnlock();
}

uint64_t FigPlayerInterstitialEventCopyPrimaryItem()
{
  FigSimpleMutexLock();
  v0 = FigCFWeakReferenceHolderCopyReferencedObject();
  FigSimpleMutexUnlock();
  return v0;
}

uint64_t FigPlayerInterstitialEventSetPrimaryItem(uint64_t a1)
{
  FigSimpleMutexLock();
  ++*(a1 + 216);
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  *(a1 + 16) = FigCFWeakReferenceHolderCreateWithReferencedObject();

  return FigSimpleMutexUnlock();
}

uint64_t FigPlayerInterstitialEventSetStartTime(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 16);
  return fpie_SetTimeProperty(a1, a1 + 32, &v3);
}

uint64_t FigPlayerInterstitialEventSetPlannedDuration(uint64_t a1, __int128 *a2)
{
  FigSimpleMutexLock();
  if ((*(a2 + 3) & 0x1D) == 1 && (*(a1 + 76) & 1) == 0)
  {
    ++*(a1 + 216);
    v4 = *a2;
    *(a1 + 80) = *(a2 + 2);
    *(a1 + 64) = v4;
  }

  return FigSimpleMutexUnlock();
}

uint64_t FigPlayerInterstitialEventGetSeedValue(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 216);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigPlayerInterstitialEventSetSkipControlTimeRange(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v4[0] = *a2;
  v4[1] = v2;
  v4[2] = a2[2];
  return fpie_SetTimeRangeProperty(a1, (a1 + 328), v4);
}

uint64_t FigPlayerInterstitialEventReportItemFailure(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 448);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v4 < 0 == v3)
  {
    *(a1 + 448) = v4;
  }

  return FigSimpleMutexUnlock();
}

BOOL FigPlayerInterstitialEventDidAllItemsFail(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 448) == 0;
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata(const __CFArray *a1, uint64_t a2, __CFArray **a3)
{
  v134 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    v3 = 0;
LABEL_114:
    value_low = 0;
    *a3 = v3;
    return value_low;
  }

  v3 = 0;
  v4 = 0;
  v5 = *MEMORY[0x1E695E480];
  v6 = *(MEMORY[0x1E6960C70] + 12);
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v88 = *(MEMORY[0x1E6960C88] + 12);
  v87 = *(MEMORY[0x1E6960C88] + 16);
  v114 = v6;
  alloc = *MEMORY[0x1E695E480];
  v117 = v7;
  while (1)
  {
    v124 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
    CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_Class");
    if (!FigCFEqual())
    {
      goto LABEL_111;
    }

    v122 = *MEMORY[0x1E6960C70];
    v123 = v7;
    v9 = *MEMORY[0x1E6960C70];
    v132 = v9;
    v10 = *(MEMORY[0x1E6960C70] + 8);
    v133 = v10;
    v130 = v9;
    timescale = v10;
    *&v121.value = v122;
    v121.epoch = v7;
    v128 = v9;
    v129 = v10;
    v126 = v9;
    v127 = v10;
    seconds = 0.0;
    Value = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_ID");
    if (!Value || (v12 = Value, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v12)))
    {
      FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata_cold_6(&values);
      goto LABEL_123;
    }

    theDict = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!theDict)
    {
      FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata_cold_5(&values);
      goto LABEL_123;
    }

    v107 = v12;
    FirstMetadataValueForKey = fpip_GetFirstMetadataValueForKey(ValueAtIndex);
    if (FirstMetadataValueForKey)
    {
      v15 = FirstMetadataValueForKey;
      v16 = CFStringGetTypeID();
      if (v16 == CFGetTypeID(v15))
      {
        break;
      }
    }

    v17 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_BaseURL");
    v18 = fpip_GetFirstMetadataValueForKey(ValueAtIndex);
    if (!v18 || (v19 = v18, v20 = CFStringGetTypeID(), v21 = v20 == CFGetTypeID(v19), v6 = v114, !v21))
    {
      FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata_cold_4(&values);
LABEL_123:
      value_low = LODWORD(values.start.value);
LABEL_124:
      if (!v3)
      {
        return value_low;
      }

      goto LABEL_125;
    }

    if (v17)
    {
      v22 = CFURLCreateWithString(v5, v17, 0);
      v106 = CFURLCreateWithString(v5, v19, v22);
      if (v22)
      {
        CFRelease(v22);
      }
    }

    else
    {
      v106 = CFURLCreateWithString(v5, v19, 0);
    }

    v110 = 0;
LABEL_22:
    v23 = fpip_GetFirstMetadataValueForKey(ValueAtIndex);
    v104 = fpie_MetadataStringListContainsString(v23, @"SKIP") != 0;
    v103 = fpie_MetadataStringListContainsString(v23, @"JUMP") != 0;
    v24 = fpip_GetFirstMetadataValueForKey(ValueAtIndex);
    v25 = fpie_MetadataStringListContainsString(v24, @"OUT");
    v26 = fpie_MetadataStringListContainsString(v24, @"IN");
    if (v25)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = v25 != 0;
    }

    v29 = fpip_GetFirstMetadataValueForKey(ValueAtIndex);
    v105 = v28;
    if (v29)
    {
      v30 = v29;
LABEL_31:
      v31 = CFStringGetTypeID();
      if (v31 == CFGetTypeID(v30))
      {
        goto LABEL_32;
      }

      FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata_cold_3(&values);
      goto LABEL_123;
    }

    v30 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_Cue");
    if (v30)
    {
      goto LABEL_31;
    }

LABEL_32:
    v102 = FigCFStringFind();
    v101 = FigCFStringFind();
    v100 = FigCFStringFind();
    v112 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_StartDate");
    if (!v112)
    {
      v32 = CFDateGetTypeID();
      if (v32 == CFGetTypeID(0))
      {
        FigCFDictionaryGetCMTimeIfPresent();
      }
    }

    DoubleIfPresent = FigCFDictionaryGetDoubleIfPresent();
    epoch = v117;
    flags = v6;
    if (DoubleIfPresent)
    {
      CMTimeMakeWithSeconds(&values.start, seconds, 1000000);
      v130 = values.start.value;
      flags = values.start.flags;
      timescale = values.start.timescale;
      epoch = values.start.epoch;
    }

    v111 = epoch;
    if ((flags & 1) == 0)
    {
      v36 = v3;
      v37 = flags;
      v38 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_EndDate");
      if (v38 && (v39 = v38, v115 = CFDateGetTypeID(), v40 = CFGetTypeID(v39), v112))
      {
        flags = v37;
        v3 = v36;
        if (v115 == v40)
        {
          v41 = MEMORY[0x19A8CCD90](v39);
          v42 = MEMORY[0x19A8CCD90](v112);
          CMTimeMakeWithSeconds(&values.start, v41 - v42, 1000000);
          v130 = values.start.value;
          flags = values.start.flags;
          timescale = values.start.timescale;
          v111 = values.start.epoch;
        }
      }

      else
      {
        flags = v37;
        v3 = v36;
      }
    }

    v109 = flags;
    if ((flags & 1) == 0 && FigCFDictionaryGetDoubleIfPresent())
    {
      CMTimeMakeWithSeconds(&values.start, seconds, 1000000);
      v130 = values.start.value;
      v109 = values.start.flags;
      timescale = values.start.timescale;
      v111 = values.start.epoch;
    }

    v43 = fpip_GetFirstMetadataValueForKey(ValueAtIndex);
    v116 = v117;
    v44 = v6;
    if (!v43)
    {
      goto LABEL_54;
    }

    v45 = v43;
    v46 = CFNumberGetTypeID();
    if (v46 == CFGetTypeID(v45))
    {
      FigGetDoubleFromCFTypeWithDefault();
LABEL_49:
      CMTimeMakeWithSeconds(&values.start, v47, 1000000);
      v132 = values.start.value;
      v44 = values.start.flags;
      v133 = values.start.timescale;
      v116 = values.start.epoch;
      goto LABEL_54;
    }

    v48 = CFStringGetTypeID();
    v116 = v117;
    v21 = v48 == CFGetTypeID(v45);
    v44 = v6;
    if (v21)
    {
      FigGetDoubleFromCFTypeWithDefault();
      if (v47 != -100000.0)
      {
        goto LABEL_49;
      }

      v132 = v9;
      v133 = v10;
      v116 = v117;
      v44 = v6;
    }

LABEL_54:
    v49 = fpip_GetFirstMetadataValueForKey(ValueAtIndex);
    v113 = v44;
    if (v49)
    {
      v50 = v49;
      v51 = CFNumberGetTypeID();
      v21 = v51 == CFGetTypeID(v50);
      v44 = v113;
      if (v21)
      {
        FigGetDoubleFromCFTypeWithDefault();
        CMTimeMakeWithSeconds(&v121, v52, 1000000);
      }
    }

    if ((v44 & 0x1D) == 1)
    {
      values.start.value = v132;
      values.start.timescale = v133;
      values.start.flags = v44;
      values.start.epoch = v116;
      time2 = **&MEMORY[0x1E6960CC0];
      v53 = CMTimeCompare(&values.start, &time2) > 0;
    }

    else
    {
      v53 = 0;
    }

    fpip_GetFirstMetadataValueForKey(ValueAtIndex);
    fpip_GetFirstMetadataValueForKey(ValueAtIndex);
    v99 = FigCFEqual();
    v96 = v4;
    if (FigCFEqual())
    {
      v98 = 0;
    }

    else
    {
      if (FigCFEqual())
      {
        v54 = 1;
      }

      else
      {
        v54 = v53;
      }

      v98 = v54;
    }

    fpip_GetFirstMetadataValueForKey(ValueAtIndex);
    v97 = FigCFEqual() == 0;
    v55 = fpip_GetFirstMetadataValueForKey(ValueAtIndex);
    v56 = v117;
    v57 = v114;
    if (v55)
    {
      v58 = v55;
      v59 = CFNumberGetTypeID();
      v60 = CFGetTypeID(v58);
      v56 = v117;
      v57 = v114;
      if (v59 == v60)
      {
        FigGetDoubleFromCFTypeWithDefault();
        CMTimeMakeWithSeconds(&values.start, v61, 1000000);
        v128 = values.start.value;
        v57 = values.start.flags;
        v129 = values.start.timescale;
        v56 = values.start.epoch;
      }
    }

    v91 = v56;
    v62 = fpip_GetFirstMetadataValueForKey(ValueAtIndex);
    v63 = v114;
    v64 = v117;
    if (v62)
    {
      v65 = v62;
      v66 = CFNumberGetTypeID();
      v67 = CFGetTypeID(v65);
      v63 = v114;
      v64 = v117;
      if (v66 == v67)
      {
        FigGetDoubleFromCFTypeWithDefault();
        CMTimeMakeWithSeconds(&values.start, v68, 1000000);
        v126 = values.start.value;
        v63 = values.start.flags;
        v127 = values.start.timescale;
        v64 = values.start.epoch;
      }
    }

    if ((v57 & 1) != 0 && (v63 & 1) == 0)
    {
      v126 = *MEMORY[0x1E6960C88];
      v127 = *(MEMORY[0x1E6960C88] + 8);
      v63 = v88;
      v64 = v87;
    }

    v90 = v64;
    v69 = v3;
    v70 = fpip_GetFirstMetadataValueForKey(ValueAtIndex);
    if (v70)
    {
      Copy = CFStringCreateCopy(alloc, v70);
    }

    else
    {
      Copy = 0;
    }

    v71 = CFDictionaryGetValue(ValueAtIndex, @"TaggedRangeMetadataKey_MetadataArray");
    if (v71)
    {
      v72 = v71;
      v73 = CFArrayGetCount(v71);
      if (v73 >= 1)
      {
        v74 = v73;
        for (i = 0; i != v74; ++i)
        {
          v76 = CFArrayGetValueAtIndex(v72, i);
          v77 = CFDictionaryGetValue(v76, @"key");
          v78 = CFStringGetTypeID();
          if (v78 == CFGetTypeID(v77) && CFStringHasPrefix(v77, @"X-") && !CFEqual(v77, @"X-ASSET-URI") && !CFEqual(v77, @"X-ASSET-LIST") && !CFEqual(v77, @"X-RESTRICT") && !CFEqual(v77, @"X-SNAP") && !CFEqual(v77, @"X-CUE") && !CFEqual(v77, @"X-RESUME-OFFSET") && !CFEqual(v77, @"X-PLAYOUT-LIMIT") && !CFEqual(v77, @"X-TIMELINE-STYLE") && !CFEqual(v77, @"X-TIMELINE-OCCUPIES") && !CFEqual(v77, @"X-CONTENT-MAY-VARY") && !CFEqual(v77, @"X-SKIP-CONTROL-OFFSET") && !CFEqual(v77, @"X-SKIP-CONTROL-DURATION") && !CFEqual(v77, @"X-SKIP-CONTROL-LABEL-ID"))
          {
            v79 = CFDictionaryGetValue(v76, @"value");
            CFDictionarySetValue(theDict, v77, v79);
          }
        }
      }
    }

    *&values.start.value = v122;
    values.start.epoch = v123;
    time2.value = v132;
    time2.timescale = v133;
    time2.flags = v113;
    time2.epoch = v116;
    duration = v121;
    value_low = FigPlayerInterstitialEventCreate(a2, v107, &values.start.value, v112, v110, v106, v103 | (4 * v104), v105, v102, v101, v100, &time2.value, &duration.value, v98, v99, v97, theDict, &v124);
    if (v110)
    {
      CFRelease(v110);
    }

    CFRelease(theDict);
    v3 = v69;
    if (v106)
    {
      CFRelease(v106);
    }

    v6 = v114;
    v7 = v117;
    if (value_low)
    {
      goto LABEL_124;
    }

    v81 = v124;
    v124[8] = v130;
    *(v81 + 18) = timescale;
    *(v81 + 19) = v109;
    v81[10] = v111;
    if (v57)
    {
      v82 = v81 + 41;
      time2.value = v128;
      time2.timescale = v129;
      time2.flags = v57;
      time2.epoch = v91;
      duration.value = v126;
      duration.timescale = v127;
      duration.flags = v63;
      duration.epoch = v90;
      CMTimeRangeMake(&values, &time2, &duration);
      v83 = *&values.start.epoch;
      *v82 = *&values.start.value;
      v82[1] = v83;
      v82[2] = *&values.duration.timescale;
      v81 = v124;
    }

    v4 = v96;
    v81[53] = Copy;
    v5 = alloc;
    if (!v3)
    {
      Mutable = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
      v81 = v124;
      if (!Mutable)
      {
        if (v124)
        {
          CFRelease(v124);
        }

        return FigSignalErrorAtGM();
      }

      v3 = Mutable;
    }

    CFArrayAppendValue(v3, v81);
    if (v124)
    {
      CFRelease(v124);
    }

LABEL_111:
    if (++v4 == Count)
    {
      goto LABEL_114;
    }
  }

  values.start.value = CFURLCreateWithString(v5, v15, 0);
  if (!values.start.value)
  {
    FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata_cold_2(&time2);
    goto LABEL_128;
  }

  v110 = CFArrayCreate(v5, &values, 1, MEMORY[0x1E695E9C0]);
  if (values.start.value)
  {
    CFRelease(values.start.value);
  }

  if (v110)
  {
    v106 = 0;
    goto LABEL_22;
  }

  FigPlayerInterstitialEventsCreateFromTaggedRangeMetadata_cold_1(&time2);
LABEL_128:
  value_low = LODWORD(time2.value);
  if (v3)
  {
LABEL_125:
    CFRelease(v3);
  }

  return value_low;
}

uint64_t fpie_MetadataStringListContainsString(const __CFString *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], a1, @",");
  if (!ArrayBySeparatingStrings)
  {
    return 0;
  }

  v6 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count < 1)
  {
    v11 = 0;
  }

  else
  {
    v8 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v8 - 1);
      v10 = CFEqual(ValueAtIndex, a2);
      v11 = v10;
      if (v8 < 2)
      {
        break;
      }

      --v8;
    }

    while (!v10);
  }

  CFRelease(v6);
  return v11;
}

CFMutableDictionaryRef FigDateTimeMomentCopyAsDictionary(uint64_t a1, CFAllocatorRef allocator)
{
  if (*(a1 + 32))
  {
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      if (*(a1 + 33))
      {
        FigCFDictionarySetDouble();
      }

      if (*(a1 + 32))
      {
        v8 = *a1;
        v4 = CMTimeCopyAsDictionary(&v8, allocator);
        if (v4)
        {
          v5 = v4;
          FigCFDictionarySetValue();
          CFRelease(v5);
        }

        else
        {
          FigDateTimeMomentCopyAsDictionary_cold_1();
        }
      }
    }

    else
    {
      FigDateTimeMomentCopyAsDictionary_cold_2();
    }
  }

  else
  {
    FigDateTimeMomentCopyAsDictionary_cold_3();
    return 0;
  }

  return Mutable;
}

uint64_t figPlayerInterstitialEvent_initOnce()
{
  result = _CFRuntimeRegisterClass();
  sFigPlayerInterstitialEventTypeID = result;
  return result;
}

double figPlayerInterstitialEvent_init(uint64_t a1)
{
  *(a1 + 448) = 0;
  result = 0.0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t figPlayerInterstitialEvent_finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    CFRelease(v4);
    a1[7] = 0;
  }

  v5 = a1[11];
  if (v5)
  {
    CFRelease(v5);
    a1[11] = 0;
  }

  v6 = a1[12];
  if (v6)
  {
    CFRelease(v6);
    a1[12] = 0;
  }

  v7 = a1[24];
  if (v7)
  {
    CFRelease(v7);
    a1[24] = 0;
  }

  v8 = a1[25];
  if (v8)
  {
    CFRelease(v8);
    a1[25] = 0;
  }

  v9 = a1[37];
  if (v9)
  {
    CFRelease(v9);
    a1[37] = 0;
  }

  v10 = a1[53];
  if (v10)
  {
    CFRelease(v10);
    a1[53] = 0;
  }

  v11 = a1[54];
  if (v11)
  {
    CFRelease(v11);
    a1[54] = 0;
  }

  return FigSimpleMutexDestroy();
}

CFStringRef figPlayerInterstitialEvent_copyDebugDesc(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = FigCFWeakReferenceHolderCopyReferencedObject();
  v3 = *MEMORY[0x1E695E480];
  time = *(a1 + 32);
  Seconds = CMTimeGetSeconds(&time);
  v5 = *(a1 + 56);
  v6 = *(a1 + 24);
  v7 = *(a1 + 104);
  v8 = *(a1 + 108);
  time = *(a1 + 116);
  v9 = CMTimeGetSeconds(&time);
  time = *(a1 + 140);
  v10 = CMTimeGetSeconds(&time);
  v11 = *(a1 + 88);
  if (!v11)
  {
    v11 = *(a1 + 96);
  }

  v12 = CFStringCreateWithFormat(v3, 0, @"[FigPlayerInterstitialEvent %p item %p \n  start %f\n  date %@\n  identifier %@\n  restrictions 0x%X, snapOptions 0x%X\n  resume after %f\n  playout limit %f\n  timeline occupancy 0x%X\n, supplements primary 0x%X\n  content varies 0x%X\n  asset URL %@]", a1, v2, *&Seconds, v5, v6, v7, v8, *&v9, *&v10, *(a1 + 440), *(a1 + 444), *(a1 + 445), v11);
  FigSimpleMutexUnlock();
  if (v2)
  {
    CFRelease(v2);
  }

  return v12;
}

uint64_t OUTLINED_FUNCTION_5_129()
{

  return FigSimpleMutexLock();
}

uint64_t OUTLINED_FUNCTION_7_100()
{
  result = *(v2 + 208);
  ++*(v2 + 216);
  *v1 = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_87()
{

  return FigSimpleMutexLock();
}

uint64_t FigOctaviaClockCreateConsumingNeroClock(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v17 = 0;
  if (a4)
  {
    CMClockGetHostTimeClock();
    CMTimeMake(&v16, 1, 10);
    TimeCallback = FigDerivedClockCreateWithGetTimeCallback();
    if (TimeCallback)
    {
      value_low = TimeCallback;
    }

    else
    {
      DerivedStorage = FigDerivedClockGetDerivedStorage();
      *DerivedStorage = a2;
      if (a3)
      {
        v9 = CFRetain(a3);
      }

      else
      {
        v9 = 0;
      }

      *(DerivedStorage + 80) = v9;
      v10 = dispatch_queue_create("octclock_queue", 0);
      *(DerivedStorage + 64) = v10;
      if (v10)
      {
        v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v10);
        *(DerivedStorage + 56) = v11;
        if (v11)
        {
          v12 = FigSimpleMutexCreate();
          *(DerivedStorage + 72) = v12;
          if (v12)
          {
            DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
            dispatch_sync(*(DerivedStorage + 64), DispatchSourceBlock);
            dispatch_source_set_event_handler(*(DerivedStorage + 56), DispatchSourceBlock);
            _Block_release(DispatchSourceBlock);
            dispatch_source_set_timer(*(DerivedStorage + 56), 0, 0x3E16927F8uLL, 0);
            dispatch_resume(*(DerivedStorage + 56));
            value_low = 0;
            *a4 = v17;
            return value_low;
          }
        }
      }

      value_low = 0;
    }
  }

  else
  {
    FigOctaviaClockCreateConsumingNeroClock_cold_1(&v16);
    value_low = LODWORD(v16.value);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  return value_low;
}

CFStringRef octclock_CopyDebugDesc(const void *a1)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v3, 0, @"OctaviaClock neroClock: 0x%llx", *DerivedStorage);
}

void octclock_Finalize()
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  NeroTransportSendAsyncMessage();
  dispatch_source_cancel(*(DerivedStorage + 56));
  dispatch_sync(*(DerivedStorage + 64), &__block_literal_global_123);
  v1 = *(DerivedStorage + 56);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 56) = 0;
  }

  v2 = *(DerivedStorage + 64);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 64) = 0;
  }

  FigSimpleMutexDestroy();
  *(DerivedStorage + 72) = 0;
  v3 = *(DerivedStorage + 80);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 80) = 0;
  }
}

uint64_t octclock_GetAnchorTime(uint64_t a1, CMTime *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (a2)
  {
    v6 = DerivedStorage;
    FigSimpleMutexLock();
    v16 = *(v6 + 8);
    v15 = *(v6 + 32);
    FigSimpleMutexUnlock();
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    CMTimeMake(&lhs, UpTimeNanoseconds, 1000000000);
    flags = lhs.flags;
    timescale = lhs.timescale;
    value = lhs.value;
    epoch = lhs.epoch;
    v12 = v15;
    CMTimeSubtract(&rhs, &lhs, &v12);
    v12 = v16;
    CMTimeAdd(&lhs, &v12, &rhs);
    *a2 = lhs;
    if (flags)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  flags = *(MEMORY[0x1E6960C70] + 12);
  epoch = *(MEMORY[0x1E6960C70] + 16);
  if ((flags & 1) == 0)
  {
LABEL_3:
    v10 = FigGetUpTimeNanoseconds();
    CMTimeMake(&v16, v10, 1000000000);
    value = v16.value;
    flags = v16.flags;
    timescale = v16.timescale;
    epoch = v16.epoch;
  }

LABEL_4:
  if (a3)
  {
    *a3 = value;
    *(a3 + 8) = timescale;
    *(a3 + 12) = flags;
    *(a3 + 16) = epoch;
  }

  return 0;
}

uint64_t FigInterstitialCreatePropertyListsFromJSONData(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, CMTimeValue *a4, _OWORD *a5, CFTypeRef *a6)
{
  if (FigInterstitialCreatePropertyListsFromJSONData_sFigInterstitialParsingDoRemoteOnce != -1)
  {
    FigInterstitialCreatePropertyListsFromJSONData_cold_1();
  }

  if (FigInterstitialCreatePropertyListsFromJSONData_sFigInterstitialParsingDoRemote)
  {

    return FigInterstitialCreatePropertyListsFromJSONData_Remote(a1, a2, a3, a4, a5, a6);
  }

  else
  {

    return FigInterstitialCreatePropertyListsFromLocalJSONData(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t __FigInterstitialCreatePropertyListsFromJSONData_block_invoke()
{
  result = FigServer_IsMediaparserd();
  FigInterstitialCreatePropertyListsFromJSONData_sFigInterstitialParsingDoRemote = result == 0;
  return result;
}

uint64_t FigAudioSessionGetMXNotificationTranslationInternal()
{
  if (FigAudioSessionGetMXNotificationTranslationInternal_onceToken != -1)
  {
    FigAudioSessionGetMXNotificationTranslationInternal_cold_1();
  }

  return FigAudioSessionGetMXNotificationTranslationInternal_sNotificationTranslation;
}

void __FigAudioSessionGetMXNotificationTranslationInternal_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v2 = *MEMORY[0x1E69AFB80];
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB80], @"Interruption");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AED88], @"ActiveAudioRouteDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AED98], @"ActiveNeroVisualStreamInfoDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB20], @"AvailableFormatsDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AEDA0], @"DisplayLayoutDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AEDA8], @"UserVolumeDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFAE8], @"AirPlayVideoWillBeInterrupted");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB00], @"ApplicationStateDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB08], @"AudioBehaviorDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB18], @"AudioModeDidChange");
  CFDictionarySetValue(Mutable, v2, @"Interruption");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB88], @"IsActiveDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFBC8], @"PiPIsPossibleDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFBD0], @"PickableRoutesDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFBF0], @"RoutingContextDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFB90], @"IsMutedDidChange");
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69AFBD8], @"PrefersConcurrentAirPlayAudioDidChange");
  FigAudioSessionGetMXNotificationTranslationInternal_sNotificationTranslation = CFDictionaryCreateCopy(v0, Mutable);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

const void *FigAudioSessionGetNotificationNameForMXSessionNotificationNameInternal(void *key)
{
  if (FigAudioSessionGetMXNotificationTranslationInternal_onceToken != -1)
  {
    FigAudioSessionGetMXNotificationTranslationInternal_cold_1();
  }

  v2 = FigAudioSessionGetMXNotificationTranslationInternal_sNotificationTranslation;

  return CFDictionaryGetValue(v2, key);
}

const void *FigAudioSessionGetMXSessionPropertyForResolvedFigAudioSessionPropertyInternal(void *key)
{
  if (ensureFigAudioSessionPropertyTranslation_onceToken != -1)
  {
    FigAudioSessionGetMXSessionPropertyForResolvedFigAudioSessionPropertyInternal_cold_1();
  }

  v2 = figAudioSessionResolvedPropertyTranslation;

  return CFDictionaryGetValue(v2, key);
}

const void *FigAudioSessionGetMXSessionPropertyForRequestedFigAudioSessionPropertyInternal(void *key)
{
  if (ensureFigAudioSessionPropertyTranslation_onceToken != -1)
  {
    FigAudioSessionGetMXSessionPropertyForResolvedFigAudioSessionPropertyInternal_cold_1();
  }

  v2 = figAudioSessionRequestedPropertyTranslation;

  return CFDictionaryGetValue(v2, key);
}

uint64_t RegisterFigAudioSession()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigAudioSessionGetTypeID()
{
  MEMORY[0x19A8D3660](&FigAudioSessionGetClassID_sRegisterFigAudioSessionOnce, RegisterFigAudioSession);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigAudioSessionCreateSiblingSession(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t *a5)
{
  if (FPSupport_CanUseCMSession())
  {
    v10 = a3[1];
    v13 = *a3;
    v14 = v10;
    return FigAudioSessionCreateWithMXSessionSiblingForFigAudioSession(a1, a2, &v13, a5);
  }

  else
  {
    v12 = a3[1];
    v13 = *a3;
    v14 = v12;
    return FigAudioSessionCreateWithAVAudioSessionSiblingForFigAudioSession(a1, a2, &v13, a4, a5);
  }
}

void __ensureFigAudioSessionPropertyTranslation_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  v2 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = CFDictionaryCreateMutable(v0, 0, v1, v2);
  v5 = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v7 = __ensureFigAudioSessionPropertyTranslation_block_invoke_2;
  v8 = &__block_descriptor_tmp_102_1;
  v9 = Mutable;
  v10 = v4;
  if (*MEMORY[0x1E69AFDE8])
  {
    CFDictionarySetValue(v4, @"FAS_CoreSessionID", *MEMORY[0x1E69AFDE8]);
    v7(v6, @"FAS_RoutingContext", 0, *MEMORY[0x1E69B03B8]);
  }

  else
  {
    __ensureFigAudioSessionPropertyTranslation_block_invoke_2(v6, @"FAS_RoutingContext", 0, *MEMORY[0x1E69B03B8]);
  }

  figAudioSessionRequestedPropertyTranslation = CFDictionaryCreateCopy(v0, Mutable);
  figAudioSessionResolvedPropertyTranslation = CFDictionaryCreateCopy(v0, v5);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void __ensureFigAudioSessionPropertyTranslation_block_invoke_2(uint64_t a1, void *key, const void *a3, void *value)
{
  if (a3)
  {
    CFDictionarySetValue(*(a1 + 32), key, a3);
  }

  if (value)
  {
    v7 = *(a1 + 40);

    CFDictionarySetValue(v7, key, value);
  }
}

uint64_t FigNeroGetTypeID()
{
  if (FigNeroGetTypeID_sRegisterNeroTypeOnce != -1)
  {
    FigNeroGetTypeID_cold_1();
  }

  return FigNeroGetTypeID_sNeroTypeID;
}

double nero_Init(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void nero_Finalize(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
    a1[10] = 0;
  }

  v3 = a1[12];
  if (v3)
  {
    dispatch_release(v3);
    a1[12] = 0;
  }

  v4 = a1[7];
  if (v4)
  {
    dispatch_release(v4);
    a1[7] = 0;
  }

  v5 = a1[5];
  if (v5)
  {
    dispatch_release(v5);
    a1[5] = 0;
  }

  v6 = a1[6];
  if (v6)
  {
    dispatch_release(v6);
    a1[6] = 0;
  }

  v7 = a1[8];
  if (v7)
  {
    dispatch_release(v7);
    a1[8] = 0;
  }

  v8 = a1[4];
  if (v8)
  {
    dispatch_release(v8);
    a1[4] = 0;
  }
}

__CFString *nero_CopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"[FigNero %p retainCount:%d", a1, v4);
  CFStringAppendFormat(Mutable, 0, @"]\n");
  return Mutable;
}

uint64_t __FigNeroGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  FigNeroGetTypeID_sNeroTypeID = result;
  return result;
}

uint64_t FigNeroCreate(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (FigNeroGetTypeID_sRegisterNeroTypeOnce != -1)
    {
      FigNeroGetTypeID_cold_1();
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v4 = Instance;
      *(Instance + 88) = 0;
      *(Instance + 80) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
      v4[4] = FigDispatchQueueCreateWithPriority();
      v4[12] = dispatch_queue_create("nero.timebaseRegistry", 0);
      v4[7] = dispatch_queue_create("nero.renderpipeline", 0);
      v4[5] = dispatch_queue_create("nero.clock", 0);
      v4[6] = FigDispatchQueueCreateWithPriority();
      v5 = dispatch_queue_create("nero.notifications", 0);
      result = 0;
      v4[8] = v5;
      *a2 = v4;
    }

    else
    {
      FigNeroCreate_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigNeroCreate_cold_3(&v8);
    return v8;
  }

  return result;
}

void __FigNeroSetup_block_invoke(uint64_t a1, uint64_t a2, CMBlockBufferRef theSourceBuffer)
{
  v5 = *(a1 + 32);
  destination = 0;
  if (!*(v5 + 122))
  {
    dispatch_semaphore_wait(*(v5 + 128), 0xFFFFFFFFFFFFFFFFLL);
  }

  v17 = 0;
  v6 = *(v5 + 160);
  if (v6)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v7)
    {
      v7(v6, a2, theSourceBuffer, &v17);
    }
  }

  if (a2 <= 1684628835)
  {
    if (a2 == 1635151988)
    {
      if (theSourceBuffer)
      {
        CFRetain(theSourceBuffer);
      }

      v8 = *(v5 + 48);
      block = MEMORY[0x1E69E9820];
      v12 = 0x40000000;
      v13 = __nero_asyncMessageHandler_block_invoke_4;
      v14 = &__block_descriptor_tmp_89_0;
      v15 = theSourceBuffer;
      goto LABEL_24;
    }

    if (a2 != 1651470958)
    {
      return;
    }

    if (theSourceBuffer)
    {
      CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 4uLL, &destination);
    }

    *(v5 + 121) = 1;
    if (*(v5 + 136))
    {
      nero_tellOctaviaDisplayWasAttached(v5);
    }

    CFRetain(v5);
    v8 = *(v5 + 64);
    block = MEMORY[0x1E69E9820];
    v12 = 0x40000000;
    v9 = __nero_asyncMessageHandler_block_invoke;
    v10 = &__block_descriptor_tmp_86_2;
    goto LABEL_23;
  }

  if (a2 == 1684628836)
  {
    *(v5 + 121) = 0;
    nero_reset(v5);
    CFRetain(v5);
    v8 = *(v5 + 64);
    block = MEMORY[0x1E69E9820];
    v12 = 0x40000000;
    v9 = __nero_asyncMessageHandler_block_invoke_2;
    v10 = &__block_descriptor_tmp_87_0;
LABEL_23:
    v13 = v9;
    v14 = v10;
    v15 = v5;
    goto LABEL_24;
  }

  if (a2 != 1870031993)
  {
    return;
  }

  if (theSourceBuffer)
  {
    CFRetain(theSourceBuffer);
  }

  v8 = *(v5 + 48);
  block = MEMORY[0x1E69E9820];
  v12 = 0x40000000;
  v13 = __nero_asyncMessageHandler_block_invoke_3;
  v14 = &__block_descriptor_tmp_88_0;
  v15 = v5;
  v16 = theSourceBuffer;
LABEL_24:
  dispatch_async(v8, &block);
}

void __FigNeroSetup_block_invoke_2(uint64_t a1, int a2, CMBlockBufferRef theSourceBuffer, uint64_t a4)
{
  v7 = *(a1 + 32);
  if (!*(v7 + 122))
  {
    dispatch_semaphore_wait(*(v7 + 128), 0xFFFFFFFFFFFFFFFFLL);
  }

  switch(a2)
  {
    case 1668703347:
      v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200404161829EuLL);
      v57 = 0;
      v58 = 0;
      v16[2] = dispatch_queue_create("nero.decompressionsession", 0);
      v16[3] = CFRetain(*(v7 + 24));
      CFTypeFromSerializedAtomDataBlockBuffer = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 8uLL, v16 + 1);
      if (CFTypeFromSerializedAtomDataBlockBuffer)
      {
        goto LABEL_37;
      }

      v18 = *MEMORY[0x1E695E480];
      CFTypeFromSerializedAtomDataBlockBuffer = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer();
      if (CFTypeFromSerializedAtomDataBlockBuffer)
      {
        goto LABEL_37;
      }

      if (CFArrayGetCount(v57) == 2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v57, 0);
        v20 = CFArrayGetValueAtIndex(v57, 1);
        destination.decompressionOutputCallback = nds_didDecodeFrame;
        destination.decompressionOutputRefCon = v16;
        CFTypeFromSerializedAtomDataBlockBuffer = VTDecompressionSessionCreate(v18, ValueAtIndex, 0, v20, &destination, v16);
        if (CFTypeFromSerializedAtomDataBlockBuffer || (v52 = MEMORY[0x1E69E9820], v53 = 0x40000000, v54 = __nero_createVideoDecompressionSession_block_invoke, v55 = &__block_descriptor_tmp_125_2, v56 = v16, CFTypeFromSerializedAtomDataBlockBuffer = NeroTransportRegisterObject(), CFTypeFromSerializedAtomDataBlockBuffer))
        {
LABEL_37:
          BBufFromPointer = CFTypeFromSerializedAtomDataBlockBuffer;
LABEL_38:
          v10 = 0;
          goto LABEL_39;
        }

        BBufFromPointer = FigTransportCreateBBufFromPointer();
        if (BBufFromPointer)
        {
          goto LABEL_38;
        }

        v16 = 0;
        v10 = v58;
        v58 = 0;
      }

      else
      {
        v10 = 0;
        BBufFromPointer = 4294954516;
      }

LABEL_39:
      nds_destroy(v16);
      if (v58)
      {
        CFRelease(v58);
      }

      v15 = v57;
      if (!v57)
      {
        goto LABEL_43;
      }

LABEL_42:
      CFRelease(v15);
      goto LABEL_43;
    case 1668706928:
      v57 = 0;
      v58 = 0;
      value = 0;
      cf = 0;
      v48 = 0;
      v49 = 0;
      v46 = 0;
      v47 = 0;
      v44 = 0;
      v45 = 0;
      v11 = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 8uLL, &v49);
      if (v11)
      {
        goto LABEL_13;
      }

      v12 = *MEMORY[0x1E695E480];
      v11 = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer();
      if (v11)
      {
        goto LABEL_13;
      }

      if (v57)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, v57);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v23 = MutableCopy;
      v24 = *MEMORY[0x1E695E4D0];
      CFDictionaryAddValue(MutableCopy, @"AllowClientProcessDecode", *MEMORY[0x1E695E4D0]);
      if (v57)
      {
        CFRelease(v57);
      }

      v57 = v23;
      v25 = *(v7 + 104);
      if (v25)
      {
        v11 = FigToolViewCopyPixelBufferAttributes(v12, v25, &cf);
        if (!v11)
        {
          v11 = FigVisualContextCreateBasic(v12, 0, &v47);
          if (!v11)
          {
            if (v57)
            {
              Mutable = CFDictionaryCreateMutableCopy(v12, 0, v57);
            }

            else
            {
              Mutable = CFDictionaryCreateMutable(v12, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            }

            v32 = Mutable;
            CFDictionaryAddValue(Mutable, @"ShouldRotateAndScale", v24);
            if (v57)
            {
              CFRelease(v57);
            }

            v57 = v32;
LABEL_74:
            if (*(v7 + 152))
            {
              v33 = v24;
            }

            else
            {
              v33 = *MEMORY[0x1E695E4C0];
            }

            v34 = CFArrayCreateMutable(v12, 2, MEMORY[0x1E695E9C0]);
            v14 = v34;
            if (v47)
            {
              CFArrayAppendValue(v34, v47);
            }

            if (v46)
            {
              CFArrayAppendValue(v14, v46);
            }

            v35 = FigImageQueueTableCreate(v12, &v44);
            if (v35 || (FigImageQueueTableUpdateToMatchOutputsArray(v44, v14, 0, 0, 0, 0), v35 = FigImageQueueTableCopyFigImageQueueArray(v44, &v45), v35))
            {
              BBufFromPointer = v35;
              v10 = 0;
              v13 = 0;
              goto LABEL_14;
            }

            if (v47)
            {
              v13 = FigImageQueueTableCopyFigImageQueueForVisualContext(v44, v47);
            }

            else
            {
              v13 = 0;
            }

            v36 = FigVideoRenderPipelineCreateWithFigImageQueueArray(v12, 0, cf, 0, 1, v45, 0, v57, &v48);
            if (v36)
            {
              goto LABEL_94;
            }

            FigRenderPipelineSetProperty_0(v48, @"ForceFullPowerDecode", v33);
            v37 = *(v7 + 136);
            if (v37)
            {
              nrp_setMinImageBounds(v48, v37);
            }

            DictionaryRepresentation = FigCGSizeCreateDictionaryRepresentation(1920.0, 1200.0);
            FigRenderPipelineSetProperty_0(v48, @"MaxImageBounds", DictionaryRepresentation);
            if (DictionaryRepresentation)
            {
              CFRelease(DictionaryRepresentation);
            }

            v36 = nrp_createWithFigRenderPipeline(v7, v48, v49, *(v7 + 56), v47, v13, &value);
            if (v36 || (v39 = value, CFArrayAppendValue(*(v7 + 144), value), nero_setVideoGravity(v7), v52 = MEMORY[0x1E69E9820], v53 = 0x40000000, v54 = __nero_createVideoRenderPipeline_block_invoke, v55 = &__block_descriptor_tmp_108_1, v56 = v39, destination.decompressionOutputCallback = MEMORY[0x1E69E9820], destination.decompressionOutputRefCon = 0x40000000, v41 = __nero_createVideoRenderPipeline_block_invoke_2, v42 = &__block_descriptor_tmp_109_0, v43 = v39, v36 = NeroTransportRegisterObject(), v36))
            {
LABEL_94:
              BBufFromPointer = v36;
LABEL_95:
              v10 = 0;
              goto LABEL_14;
            }

            BBufFromPointer = FigTransportCreateBBufFromPointer();
            v10 = v58;
            if (BBufFromPointer)
            {
              if (v58)
              {
                CFRelease(v58);
                goto LABEL_95;
              }
            }

            else
            {
              value = 0;
              v58 = 0;
            }

LABEL_14:
            if (v57)
            {
              CFRelease(v57);
            }

            if (cf)
            {
              CFRelease(cf);
            }

            nrp_destroy(value);
            if (v48)
            {
              CFRelease(v48);
            }

            if (v47)
            {
              CFRelease(v47);
            }

            if (v13)
            {
              CFRelease(v13);
            }

            if (v46)
            {
              CFRelease(v46);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            if (v45)
            {
              CFRelease(v45);
            }

            v15 = v44;
            if (!v44)
            {
              goto LABEL_43;
            }

            goto LABEL_42;
          }
        }
      }

      else
      {
        v27 = *(v7 + 160);
        if (v27)
        {
          CMBaseObject = FigLayerViewGetCMBaseObject(v27);
          v29 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v29)
          {
            v10 = 0;
            v13 = 0;
            v14 = 0;
            BBufFromPointer = 4294954514;
            goto LABEL_14;
          }

          v11 = v29(CMBaseObject, @"PixelBufferAttributes", v12, &cf);
          if (!v11)
          {
            v30 = FigLayerViewGetCMBaseObject(*(v7 + 160));
            CMBaseObjectCopyProperty_0(v30, @"VisualContext", v12, &v47);
            v31 = FigLayerViewGetCMBaseObject(*(v7 + 160));
            CMBaseObjectCopyProperty_0(v31, @"ImageQueue", v12, &v46);
            goto LABEL_74;
          }
        }

        else
        {
          fig_log_get_emitter();
          v11 = FigSignalErrorAtGM();
        }
      }

LABEL_13:
      BBufFromPointer = v11;
      v10 = 0;
      v13 = 0;
      v14 = 0;
      goto LABEL_14;
    case 1668771937:
      v52 = 0;
      destination.decompressionOutputCallback = 0;
      if (*(v7 + 112))
      {
        v8 = CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 8uLL, &destination);
        if (v8 || (v8 = FigNeroPlayServerSetOctaviaSender(*(v7 + 112), destination.decompressionOutputCallback), v8))
        {
          BBufFromPointer = v8;
        }

        else
        {
          BBufFromPointer = FigTransportCreateBBufFromPointer();
          v10 = v52;
          if (!BBufFromPointer || !v52)
          {
            goto LABEL_43;
          }

          CFRelease(v52);
        }

        v10 = 0;
      }

      else
      {
        v10 = 0;
        BBufFromPointer = 0;
      }

LABEL_43:
      (*(a4 + 16))(a4, BBufFromPointer, v10);
      if (v10)
      {
        CFRelease(v10);
      }

      return;
  }

  v21 = *(a4 + 16);

  v21(a4, 4294955260, 0);
}

void nero_displayWasAttached(int a1, uint64_t a2, int a3, int a4, CFTypeRef cf)
{
  v6 = CFRetain(cf);
  v7 = *(a2 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __nero_displayWasAttached_block_invoke;
  v8[3] = &__block_descriptor_tmp_126_2;
  v8[4] = a2;
  v8[5] = v6;
  dispatch_async(v7, v8);
}

void nero_displayWasDetached(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __nero_displayWasDetached_block_invoke;
  block[3] = &__block_descriptor_tmp_127_2;
  block[4] = a2;
  dispatch_async(v2, block);
}

uint64_t FigNeroTeardown(uint64_t a1)
{
  *(a1 + 16) = 1;
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigNeroTeardown_block_invoke;
  block[3] = &__block_descriptor_tmp_54;
  block[4] = a1;
  dispatch_sync(v2, block);
  if (*(a1 + 160))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    v3 = *(a1 + 160);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 160) = 0;
    }
  }

  if (*(a1 + 104))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    FigToolViewWaitUntilDoneThenDispose(*(a1 + 104));
    *(a1 + 104) = 0;
  }

  v4 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __FigNeroTeardown_block_invoke_3;
  v10[3] = &__block_descriptor_tmp_55_0;
  v10[4] = a1;
  dispatch_sync(v4, v10);
  nero_reset(a1);
  dispatch_sync(*(a1 + 96), &__block_literal_global_58);
  dispatch_sync(*(a1 + 40), &__block_literal_global_61_2);
  v5 = *(a1 + 112);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 112) = 0;
  }

  if (*(a1 + 120))
  {
    NeroTransportStopAcceptingConnections();
  }

  else
  {
    NeroTransportDisconnectFromReceiver();
  }

  CFArrayGetCount(*(a1 + 144));
  v6 = *(a1 + 144);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 144) = 0;
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    dispatch_release(v7);
    *(a1 + 128) = 0;
  }

  FigTransportSetSharedTransport();
  NeroTransportInvalidate();
  v8 = *(a1 + 24);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 24) = 0;
  }

  return 0;
}

void __FigNeroTeardown_block_invoke(uint64_t a1)
{
  FigTransportGetLocalRootObject();
  NeroTransportUnregisterObject();
  Count = CFArrayGetCount(*(*(a1 + 32) + 144));
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(*(a1 + 32) + 144), i);
      NeroTransportUnregisterObject();
      v6 = *(ValueAtIndex + 5);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __FigNeroTeardown_block_invoke_2;
      block[3] = &__block_descriptor_tmp_53_0;
      block[4] = ValueAtIndex;
      dispatch_async(v6, block);
    }
  }

  CFArrayRemoveAllValues(*(*(a1 + 32) + 144));
}

void nrp_destroy(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      nrp_setTimebase(a1, 0);
      CFDictionaryApplyFunction(sNeroRPNotificationNameToMessageTypeDict, nrp_unregisterNotificationListener, a1);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterRemoveListener();
      FigBaseObject = FigRenderPipelineGetFigBaseObject(*(a1 + 16));
      v3 = *(CMBaseObjectGetVTable() + 8);
      if (*v3 >= 2uLL)
      {
        v4 = v3[8];
        if (v4)
        {
          v4(FigBaseObject);
        }
      }
    }

    v5 = *(a1 + 72);
    if (v5)
    {
      CMBufferQueueRemoveTrigger(*(a1 + 64), v5);
    }

    v6 = *(a1 + 64);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 104);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a1 + 112);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      dispatch_release(v10);
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = *(*a1 + 104);
      if (v12)
      {
        FigToolViewRemoveVisualContext(v12, v11);
        v11 = *(a1 + 48);
      }

      CFRelease(v11);
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      CFRelease(v13);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

void __FigNeroTeardown_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 136) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 121))
  {
    v4 = *(v2 + 112);
    if (v4)
    {
      _FigNeroPlayServerSetDeviceUID(v4, 0);
    }

    FigTransportGetRemoteRootObject();

    NeroTransportSendAsyncMessage();
  }
}

void nero_reset(void *a1)
{
  v2 = a1[12];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __nero_reset_block_invoke;
  block[3] = &__block_descriptor_tmp_128_0;
  block[4] = a1;
  dispatch_async(v2, block);
  v3 = a1[9];
  a1[9] = 0;
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __nero_reset_block_invoke_2;
  v10[3] = &__block_descriptor_tmp_129_2;
  v10[4] = a1;
  dispatch_async(v4, v10);
  v5 = a1[13];
  if (v5)
  {
    FigToolViewMarkNeedsClear(v5);
  }

  v6 = a1[23];
  if (v6)
  {
    CFRelease(v6);
    a1[23] = 0;
  }

  v7 = a1[24];
  if (v7)
  {
    CFRelease(v7);
    a1[24] = 0;
  }

  v8 = a1[25];
  if (v8)
  {
    CFRelease(v8);
    a1[25] = 0;
  }

  v9 = a1[28];
  if (v9)
  {
    CFRelease(v9);
    a1[28] = 0;
  }
}

__CFString *JNvfYIDgz()
{
  if (JNvfYIDgz_sRegisterValeriaNotificationBarrierOnce != -1)
  {
    JNvfYIDgz_cold_1();
  }

  return @"rU492mlgo";
}

uint64_t __JNvfYIDgz_block_invoke()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterRegisterForBarrierSupport();
}

uint64_t g87kjbhgf(uint64_t result)
{
  if (LfJGfUJaT != result)
  {
    LfJGfUJaT = result;
    CMNotificationCenterGetDefaultLocalCenter();
    if (JNvfYIDgz_sRegisterValeriaNotificationBarrierOnce != -1)
    {
      JNvfYIDgz_cold_1();
    }

    return CMNotificationCenterPostNotification();
  }

  return result;
}

uint64_t FigNeroGetNeroTransport()
{
  if (qword_1ED4CBB20 != -1)
  {
    FigNeroGetNeroTransport_cold_1();
  }

  return *(_MergedGlobals_136 + 24);
}

void nero_tellOctaviaDisplayWasAttached(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v4 = MutableCopy;
  if (!*(a1 + 176))
  {
    v5 = FVDUtilsH264DecoderSupports444();
    v6 = MEMORY[0x1E695E4D0];
    if (v5)
    {
      CFDictionarySetValue(v4, @"H264DecoderSupports444", *MEMORY[0x1E695E4D0]);
    }

    if (FVDUtilsHEVCDecodeSupported() && FigGetCFPreferenceNumberWithDefault())
    {
      CFDictionarySetValue(v4, @"HEVCDecoderSupports444", *v6);
    }

    if (FVDUtilsHEVCDecodeSupported() && FigGetCFPreferenceNumberWithDefault())
    {
      CFDictionarySetValue(v4, @"HEVCDecoderSupports44410", *v6);
    }

    if (!FigRemote_CreateSerializedAtomDataBlockBufferForCFType())
    {
      FigTransportGetRemoteRootObject();
      NeroTransportSendAsyncMessage();
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }
}

void __nero_asyncMessageHandler_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __nero_asyncMessageHandler_block_invoke_2(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __nero_asyncMessageHandler_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  cf = 0;
  v4 = CMBlockBufferGetDataLength(v3);
  if (v4 < 0x18)
  {
    goto LABEL_5;
  }

  v5 = v4;
  destination = 0;
  v54 = 0;
  dataLength = 0;
  CMBlockBufferCopyDataBytes(v3, 0, 0x18uLL, &destination);
  v6 = destination;
  if (destination <= 1)
  {
    v8 = SHIDWORD(destination);
    v9 = dataLength;
    if (HIDWORD(destination) && (v10 = v54) != 0 && (v11 = HIDWORD(v54)) != 0)
    {
      v12 = SHIDWORD(dataLength);
      if (v5 < SHIDWORD(dataLength) + 24)
      {
        goto LABEL_3;
      }

      if (dataLength != 1111970369)
      {
        if (dataLength != 1852994665)
        {
          goto LABEL_3;
        }

        v13 = &v2[3 * destination];
        v16 = v13[25];
        v15 = (v13 + 25);
        v14 = v16;
        if (v16)
        {
          CFRelease(v14);
          *v15 = 0;
          v12 = SHIDWORD(dataLength);
        }

        if (CMBlockBufferCreateWithBufferReference(0, v3, 0x18uLL, v12, 0, v15))
        {
          goto LABEL_3;
        }

        v15[1] = v8;
        v15[2] = v10;
        goto LABEL_22;
      }

      dataPointerOut = 0;
      CMBlockBufferGetDataPointer(v3, 0x18uLL, 0, 0, &dataPointerOut);
      if (nero_createOverlayPixelBufferFromPool(v2, v6, v8, v10, &cf))
      {
        goto LABEL_3;
      }

      BytesPerRow = CVPixelBufferGetBytesPerRow(cf);
      CVPixelBufferLockBaseAddress(cf, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(cf);
      v38 = 4 * v8;
      v39 = dataPointerOut;
      do
      {
        memcpy(BaseAddress, v39, v38);
        BaseAddress += BytesPerRow;
        v39 = &dataPointerOut[v11];
        dataPointerOut = v39;
        --v10;
      }

      while (v10);
      CVPixelBufferUnlockBaseAddress(cf, 0);
    }

    else
    {
      v17 = &v2[3 * destination];
      v20 = v17[25];
      v19 = v17 + 25;
      v18 = v20;
      if (v20)
      {
        CFRelease(v18);
        *v19 = 0;
      }

      v19[1] = 0;
      v19[2] = 0;
    }

    if (v9 == 1111970369)
    {
      goto LABEL_39;
    }

LABEL_22:
    v21 = v2[25];
    v22 = v2[28];
    if (v21)
    {
      if (v22)
      {
        v50 = 0;
        dataPointerOut = 0;
        v48 = 0;
        totalLengthOut = 0;
        v23 = v2[26];
        if (v23 != v2[29])
        {
          goto LABEL_3;
        }

        v24 = v2[27];
        if (v24 != v2[30] || nero_createOverlayPixelBufferFromPool(v2, 0, v23, v24, &cf))
        {
          goto LABEL_3;
        }

        CMBlockBufferGetDataPointer(v21, 0, 0, &totalLengthOut, &dataPointerOut);
        CMBlockBufferGetDataPointer(v22, 0, 0, &v48, &v50);
        CVPixelBufferLockBaseAddress(cf, 0);
        v26 = v50;
        v25 = dataPointerOut;
        v28 = v48;
        v27 = totalLengthOut;
        Width = CVPixelBufferGetWidth(cf);
        Height = CVPixelBufferGetHeight(cf);
        v31 = CVPixelBufferGetBaseAddress(cf);
        v32 = CVPixelBufferGetBytesPerRow(cf);
        DataSize = CVPixelBufferGetDataSize(cf);
        NeroTextImageCodec_DecompressAndCompositeTwo32BGRAImages(v25, v27, v26, v28, Width, Height, v31, v32, DataSize);
        goto LABEL_37;
      }

      dataPointerOut = 0;
      v34 = 27;
      v35 = 26;
    }

    else
    {
      if (!v22)
      {
LABEL_38:
        v6 = 0;
LABEL_39:
        v47 = v2[13];
        if (v47)
        {
          FigToolViewSetOverlayImage(v47, v6, cf);
        }

        goto LABEL_3;
      }

      dataPointerOut = 0;
      v34 = 30;
      v35 = 29;
      v21 = v22;
    }

    v50 = 0;
    if (nero_createOverlayPixelBufferFromPool(v2, 0, v2[v35], v2[v34], &cf))
    {
      goto LABEL_3;
    }

    CMBlockBufferGetDataPointer(v21, 0, 0, &v50, &dataPointerOut);
    CVPixelBufferLockBaseAddress(cf, 0);
    v41 = v50;
    v40 = dataPointerOut;
    v42 = CVPixelBufferGetWidth(cf);
    v43 = CVPixelBufferGetHeight(cf);
    v44 = CVPixelBufferGetBaseAddress(cf);
    v45 = CVPixelBufferGetBytesPerRow(cf);
    v46 = CVPixelBufferGetDataSize(cf);
    NeroTextImageCodec_Decompress32BPPImage(v40, v41, v42, v43, v44, v45, v46);
LABEL_37:
    CVPixelBufferUnlockBaseAddress(cf, 0);
    goto LABEL_38;
  }

LABEL_3:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_5:
  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }
}

void __nero_asyncMessageHandler_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = IOAVControllerCreateWithLocation();
  destination = 0;
  if (v3)
  {
    v4 = v3;
    if (!CMBlockBufferCopyDataBytes(v2, 0, 4uLL, &destination))
    {
      v5 = nero_setIOAVProtectionType_firstTime == 1 && nero_setIOAVProtectionType_lastProtectionType == destination;
      if (!v5 && !IOAVControllerSetProtectionType())
      {
        nero_setIOAVProtectionType_firstTime = 1;
        nero_setIOAVProtectionType_lastProtectionType = destination;
      }
    }

    CFRelease(v4);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t nero_createOverlayPixelBufferFromPool(uint64_t a1, int a2, int a3, int a4, CVPixelBufferRef *a5)
{
  v8 = a1 + 8 * a2;
  v11 = *(v8 + 184);
  v10 = (v8 + 184);
  v9 = v11;
  if (v11)
  {
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v9);
    if (PixelBufferAttributes && (v13 = PixelBufferAttributes, valuePtr = 0, Value = CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x1E6966130]), v15 = CFGetTypeID(Value), v15 == CFNumberGetTypeID()) && (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr), valuePtr == 1111970369) && (valuePtr = 0, v16 = CFDictionaryGetValue(v13, *MEMORY[0x1E6966208]), CFNumberGetValue(v16, kCFNumberSInt32Type, &valuePtr), valuePtr == a3) && (valuePtr = 0, v17 = CFDictionaryGetValue(v13, *MEMORY[0x1E69660B8]), CFNumberGetValue(v17, kCFNumberSInt32Type, &valuePtr), valuePtr == a4))
    {
      v18 = *v10;
      if (*v10)
      {
        v19 = *MEMORY[0x1E695E480];
LABEL_21:
        CVPixelBufferPoolCreatePixelBuffer(v19, v18, a5);
        return 0;
      }
    }

    else if (*v10)
    {
      CFRelease(*v10);
      *v10 = 0;
    }
  }

  v19 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954510;
  }

  v21 = Mutable;
  ftvCFDictionarySetSInt32Value(Mutable, *MEMORY[0x1E6966160], 2);
  v22 = CFDictionaryCreateMutable(v19, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v22)
  {
    CFRelease(v21);
    return 4294954510;
  }

  v23 = v22;
  ftvCFDictionarySetSInt32Value(v22, *MEMORY[0x1E6966130], 1111970369);
  ftvCFDictionarySetSInt32Value(v23, *MEMORY[0x1E6966208], a3);
  ftvCFDictionarySetSInt32Value(v23, *MEMORY[0x1E69660B8], a4);
  v28 = 0;
  IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
  CFDictionarySetValue(v23, *MEMORY[0x1E69660D8], IOSurfacePropertiesDictionary);
  CFRelease(IOSurfacePropertiesDictionary);
  FigGetAlignmentForIOSurfaceOutput();
  ftvCFDictionarySetSInt32Value(v23, *MEMORY[0x1E6966140], SHIDWORD(v28));
  ftvCFDictionarySetSInt32Value(v23, *MEMORY[0x1E6966020], v28);
  v25 = CVPixelBufferPoolCreate(v19, v21, v23, v10);
  if (!v25)
  {
    if (*v10)
    {
      v25 = 0;
    }

    else
    {
      v25 = 4294954510;
    }
  }

  CFRelease(v21);
  CFRelease(v23);
  if (!v25)
  {
    v18 = *v10;
    goto LABEL_21;
  }

  return v25;
}

uint64_t FigRenderPipelineSetProperty_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBaseObject = FigRenderPipelineGetFigBaseObject(a1);
  VTable = CMBaseObjectGetVTable();
  v8 = *(VTable + 8);
  result = VTable + 8;
  v9 = *(v8 + 56);
  if (v9)
  {

    return v9(FigBaseObject, a2, a3);
  }

  return result;
}

uint64_t nrp_createWithFigRenderPipeline(const void *a1, const void *a2, uint64_t a3, NSObject *a4, const void *a5, const void *a6, void *a7)
{
  v14 = malloc_type_calloc(1uLL, 0x88uLL, 0x10600401BDAA220uLL);
  *v14 = CFRetain(a1);
  *(v14 + 2) = 1986618469;
  if (a2)
  {
    v15 = CFRetain(a2);
  }

  else
  {
    v15 = 0;
  }

  *(v14 + 2) = v15;
  *(v14 + 4) = a3;
  *(v14 + 5) = a4;
  dispatch_retain(a4);
  if (a5)
  {
    v16 = CFRetain(a5);
    *(v14 + 6) = v16;
    v17 = *(*v14 + 104);
    if (v17)
    {
      FigToolViewAddVisualContext(v17, v16);
    }
  }

  if (a6)
  {
    v18 = CFRetain(a6);
  }

  else
  {
    v18 = 0;
  }

  *(v14 + 7) = v18;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v14 + 2));
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v20)
  {
    v21 = v20(FigBaseObject, @"SourceSampleBufferQueue", *MEMORY[0x1E695E480], v14 + 64);
    if (v21 || (v22 = MEMORY[0x1E6960C70], v23 = *MEMORY[0x1E6960C70], *(v14 + 5) = *MEMORY[0x1E6960C70], v24 = *(v22 + 16), *(v14 + 12) = v24, v25 = *(v14 + 8), *&v28.value = v23, v28.epoch = v24, v21 = CMBufferQueueInstallTrigger(v25, nrp_sourceQueueDidBecomeReady, v14, 5, &v28, v14 + 9), v21))
    {
      v26 = v21;
    }

    else
    {
      if (nrp_createWithFigRenderPipeline_sNeroRPNotificationNameToMessageTypeDictCreateOnce != -1)
      {
        nrp_createWithFigRenderPipeline_cold_1();
      }

      CFDictionaryApplyFunction(sNeroRPNotificationNameToMessageTypeDict, nrp_registerNotificationListener, v14);
      CMNotificationCenterGetDefaultLocalCenter();
      CMNotificationCenterAddListener();
      v26 = 0;
      v14[129] = FigGetCFPreferenceNumberWithDefault() != 0;
      *a7 = v14;
      v14 = 0;
    }
  }

  else
  {
    v26 = 4294954514;
  }

  nrp_destroy(v14);
  return v26;
}

uint64_t nero_setVideoGravity(uint64_t a1)
{
  if (FigCFEqual())
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (FigCFEqual() != 0);
  }

  result = *(a1 + 104);
  if (result)
  {

    return FigToolViewSetVideoGravity(result, v2);
  }

  return result;
}

void __nero_createVideoRenderPipeline_block_invoke(uint64_t a1, int a2, CMBlockBufferRef theSourceBuffer)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (a2 > 1920167792)
  {
    if (a2 > 1952604530)
    {
      if (a2 <= 1953721716)
      {
        if (a2 == 1952604531)
        {
          v18 = *(a1 + 32);

          nrp_setTimebase(v18, theSourceBuffer);
        }

        else if (a2 == 1953131888)
        {
          destination = 0;
          if (*(v4 + 120))
          {
            if (CMBlockBufferGetDataLength(theSourceBuffer) == 56)
            {
              block = 0uLL;
              *&v44 = 0;
              memset(&time, 0, sizeof(time));
              if (!CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 8uLL, &destination) && !CMBlockBufferCopyDataBytes(theSourceBuffer, 8uLL, 0x18uLL, &block) && !CMBlockBufferCopyDataBytes(theSourceBuffer, 0x20uLL, 0x18uLL, &time))
              {
                v5 = *(v4 + 120);
                *&timebaseTime.value = block;
                timebaseTime.epoch = v44;
                immediateSourceTime = time;
                CMTimebaseSetAnchorTime(v5, &timebaseTime, &immediateSourceTime);
              }
            }
          }
        }

        return;
      }

      if (a2 != 1953721717)
      {
        if (a2 == 1969450091)
        {
          v14 = *(*v4 + 72);
          if (v14)
          {
            v15 = *(v4 + 120);

            CMTimebaseSetSourceClock(v15, v14);
          }
        }

        return;
      }

      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      block = 0u;
      v44 = 0u;
      if (!*(v4 + 120) || CMBlockBufferGetDataLength(theSourceBuffer) != 72 || CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 0x48uLL, &block))
      {
        return;
      }

      if ((BYTE4(block) & 1) == 0)
      {
        if (BYTE12(v44))
        {
          v19 = *(v4 + 120);
          *&time.value = v44;
          time.epoch = v45;
          CMTimebaseSetTime(v19, &time);
        }

        return;
      }

      v31 = CMTimebaseCopySource(*(v4 + 120));
      v32 = *(v4 + 120);
      v33 = *(&block + 1);
      CMSyncGetTime(&time, v31);
      *&timebaseTime.value = v44;
      timebaseTime.epoch = v45;
      CMTimebaseSetRateAndAnchorTime(v32, v33, &timebaseTime, &time);
      if (!v31)
      {
        return;
      }

      v27 = v31;
LABEL_74:
      CFRelease(v27);
      return;
    }

    if (a2 != 1920167793)
    {
      if (a2 != 1936749168)
      {
        if (a2 == 1936875892)
        {
          LODWORD(destination) = 0;
          v38 = 0.0;
          v6 = MEMORY[0x1E6960C70];
          *&timebaseTime.value = *MEMORY[0x1E6960C70];
          v7 = *(MEMORY[0x1E6960C70] + 16);
          timebaseTime.epoch = v7;
          if (CMBlockBufferGetDataLength(theSourceBuffer) == 32 && !CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 4uLL, &destination) && !CMBlockBufferCopyDataBytes(theSourceBuffer, 4uLL, 4uLL, &v38) && !CMBlockBufferCopyDataBytes(theSourceBuffer, 8uLL, 0x18uLL, &timebaseTime))
          {
            v8 = *(v6 + 12);
            if (*(*(CMBaseObjectGetVTable() + 16) + 8))
            {
              v9 = *(v4 + 16);
              v10 = *&destination;
              v11 = v38;
              immediateSourceTime = timebaseTime;
              v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
              if (v12)
              {
                block = *&immediateSourceTime.value;
                *&v44 = immediateSourceTime.epoch;
                time.value = *v6;
                time.timescale = *(v6 + 8);
                time.flags = v8;
                time.epoch = v7;
                v12(v9, &block, &time, v10, v11);
              }
            }

            else if ((timebaseTime.flags & 0x1D) == 1)
            {
              block = 0uLL;
              *&v44 = 0;
              v34 = CMTimebaseCopySource(*(v4 + 120));
              v35 = v34;
              if ((v8 & 0x1D) == 1)
              {
                HostTimeClock = CMClockGetHostTimeClock();
                time.value = *v6;
                time.timescale = *(v6 + 8);
                time.flags = v8;
                time.epoch = v7;
                CMSyncConvertTime(&block, &time, HostTimeClock, v35);
              }

              else
              {
                CMSyncGetTime(&block, v34);
              }

              if (v35)
              {
                CFRelease(v35);
              }

              v37 = *(v4 + 120);
              time = timebaseTime;
              *&immediateSourceTime.value = block;
              immediateSourceTime.epoch = v44;
              CMTimebaseSetRateAndAnchorTime(v37, *&destination, &time, &immediateSourceTime);
            }

            else
            {
              CMTimebaseSetRate(*(v4 + 120), *&destination);
            }
          }
        }

        return;
      }

      *&block = 0;
      time.value = 0;
      if (!FigRemote_CreateKeyValuePairFromSerializedAtomDataBlockBuffer())
      {
        if (CFEqual(block, @"IsTimebaseStarter"))
        {
          value = time.value;
          *(v4 + 128) = time.value == *MEMORY[0x1E695E4D0];
        }

        else
        {
          value = time.value;
          if (CFEqual(block, @"NeroVideoGravity"))
          {
            nero_setVideoGravity(*v4);
            value = time.value;
          }
        }

        FigBaseObject = FigRenderPipelineGetFigBaseObject(*(v4 + 16));
        v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v30)
        {
          v30(FigBaseObject, block, value);
        }
      }

      if (block)
      {
        CFRelease(block);
      }

LABEL_73:
      v27 = time.value;
      if (!time.value)
      {
        return;
      }

      goto LABEL_74;
    }

    CMNotificationCenterGetDefaultLocalCenter();

    CMNotificationCenterPostNotification();
    return;
  }

  if (a2 > 1886154614)
  {
    if (a2 == 1886154615)
    {
      v20 = *(v4 + 16);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v21)
      {

        v21(v20);
      }

      return;
    }

    if (a2 != 1919249523)
    {
      if (a2 == 1920165236)
      {
        v13 = *(v4 + 64);

        CMBufferQueueReset(v13);
      }

      return;
    }

LABEL_42:
    v16 = *v4;
    if (*(v4 + 8) == 1986618469)
    {
      if (!*(v16 + 16))
      {
        v17 = *(v16 + 32);
        *&block = MEMORY[0x1E69E9820];
        *(&block + 1) = 0x40000000;
        *&v44 = __nero_destroyVideoRenderPipeline_block_invoke;
        *(&v44 + 1) = &__block_descriptor_tmp_119_1;
        *&v45 = v16;
        *(&v45 + 1) = v4;
        dispatch_async(v17, &block);
      }
    }

    else
    {
      NeroTransportUnregisterObject();

      nrp_destroy(v4);
    }

    return;
  }

  switch(a2)
  {
    case 1684628836:
      goto LABEL_42;
    case 1717921124:
      time.value = 0;
      if (!FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer())
      {
        DataBuffer = CMSampleBufferGetDataBuffer(time.value);
        *(v4 + 24) += CMBlockBufferGetDataLength(DataBuffer);
        v23 = CMGetAttachment(time.value, @"quaternion", 0);
        if (v23)
        {
          v24 = *v4;
          if (*(*v4 + 160))
          {
            block = 0u;
            v44 = 0u;
            v50.location = 0;
            v50.length = 32;
            CFDataGetBytes(v23, v50, &block);
            v25 = *(v24 + 160);
            v26 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v26)
            {
              v26(v25, &block);
            }
          }
        }

        CMBufferQueueEnqueue(*(v4 + 64), time.value);
      }

      goto LABEL_73;
    case 1768912244:
      *&block = 0;
      if (!theSourceBuffer || !FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer())
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      break;
  }
}

void __nero_createVideoRenderPipeline_block_invoke_2(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a2 == 1668050795)
  {
    v25 = 0;
    cf = 0;
    v11 = *MEMORY[0x1E695E480];
    FigBaseObject = FigRenderPipelineGetFigBaseObject(v5[2]);
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v13 || ((v14 = v13(FigBaseObject, @"PreferredClock", v11, &v25), v15 = v25, !v14) ? (v16 = v25 == 0) : (v16 = 1), v16))
    {
      HostTimeClock = CMClockGetHostTimeClock();
      v15 = CFRetain(HostTimeClock);
      v25 = v15;
    }

    v18 = *v5;
    v19 = *(*v5 + 40);
    block = MEMORY[0x1E69E9820];
    v28 = 0x40000000;
    v29 = __nero_retainClockForOctavia_block_invoke;
    v30 = &__block_descriptor_tmp_122_0;
    v31 = v18;
    v32 = v15;
    dispatch_sync(v19, &block);
    BBufFromPointer = FigTransportCreateBBufFromPointer();
    v20 = *v5;
    if (BBufFromPointer)
    {
      v21 = *(v20 + 40);
      block = MEMORY[0x1E69E9820];
      v28 = 0x40000000;
      v29 = __nero_releaseClockForOctavia_block_invoke;
      v30 = &__block_descriptor_tmp_123_1;
      v31 = v20;
      v32 = v25;
      dispatch_async(v21, &block);
      if (cf)
      {
        CFRelease(cf);
      }

      v10 = 0;
    }

    else
    {
      nero_setPreferredClock(v20, v25);
      v10 = cf;
      cf = 0;
    }

    goto LABEL_30;
  }

  if (a2 == 1668313712)
  {
    v6 = v5[2];
    cf = 0;
    block = 0;
    v25 = 0;
    v7 = *MEMORY[0x1E695E480];
    CFTypeFromSerializedAtomDataBlockBuffer = FigRemote_CreateCFTypeFromSerializedAtomDataBlockBuffer();
    if (CFTypeFromSerializedAtomDataBlockBuffer)
    {
      goto LABEL_4;
    }

    v23 = FigRenderPipelineGetFigBaseObject(v6);
    v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v24)
    {
      v10 = 0;
      BBufFromPointer = 4294954514;
      goto LABEL_26;
    }

    CFTypeFromSerializedAtomDataBlockBuffer = v24(v23, block, v7, &cf);
    if (CFTypeFromSerializedAtomDataBlockBuffer)
    {
LABEL_4:
      BBufFromPointer = CFTypeFromSerializedAtomDataBlockBuffer;
    }

    else
    {
      BBufFromPointer = FigRemote_CreateSerializedAtomDataBlockBufferForCFType();
      if (!BBufFromPointer)
      {
        v10 = v25;
        v25 = 0;
        goto LABEL_26;
      }
    }

    v10 = 0;
LABEL_26:
    if (block)
    {
      CFRelease(block);
    }

    if (cf)
    {
      CFRelease(cf);
    }

LABEL_30:
    if (v25)
    {
      CFRelease(v25);
    }

    (*(a4 + 16))(a4, BBufFromPointer, v10);
    if (v10)
    {
      CFRelease(v10);
    }

    return;
  }

  v22 = *(a4 + 16);

  v22(a4, 4294955260, 0);
}

double nrp_sourceQueueDidBecomeReady(uint64_t a1)
{
  if (*(a1 + 92))
  {
    NeroTransportSendAsyncMessage();
  }

  CMBufferQueueGetMinPresentationTimeStamp(&v3, *(a1 + 64));
  result = *&v3.value;
  *(a1 + 80) = v3;
  return result;
}

CFDictionaryRef __nrp_createWithFigRenderPipeline_block_invoke()
{
  keys[4] = *MEMORY[0x1E69E9840];
  keys[0] = @"SynchronousFrameEnqueued";
  keys[1] = @"FirstVideoFrameEnqueued";
  v0 = *MEMORY[0x1E69605B0];
  keys[2] = @"DecodeError";
  keys[3] = v0;
  v2[0] = *"mrfs";
  v2[1] = *"rred";
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, v2, 4, MEMORY[0x1E695E9D8], 0);
  sNeroRPNotificationNameToMessageTypeDict = result;
  return result;
}

uint64_t nrp_registerNotificationListener()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterAddListener();
}

uint64_t nero_handleFirstVideoFrameEnqueued()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

void nrp_reflectNotificationToOctavia(int a1, int a2, void *key, uint64_t a4, uint64_t a5)
{
  if (CFDictionaryContainsKey(sNeroRPNotificationNameToMessageTypeDict, key))
  {
    CFDictionaryGetValue(sNeroRPNotificationNameToMessageTypeDict, key);
    if (!a5 || !FigRemote_CreateSerializedAtomDataBlockBufferForCFType())
    {
      NeroTransportSendAsyncMessage();
    }
  }
}

void nrp_setTimebase(void **a1, CMBlockBufferRef theSourceBuffer)
{
  if (!theSourceBuffer)
  {
    v7 = a1 + 15;
    v6 = a1[15];
    if (!v6)
    {
      return;
    }

    v5 = 0;
    goto LABEL_23;
  }

  v19 = 0;
  if (CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 8uLL, &v19))
  {
    return;
  }

  v3 = *a1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v4 = *(v3 + 96);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __nero_acquireNeroTimebaseForOctaviaTimebase_block_invoke;
  block[3] = &unk_1E7496BF0;
  block[5] = v3;
  block[6] = v19;
  block[4] = &v21;
  dispatch_sync(v4, block);
  v5 = v22[3];
  _Block_object_dispose(&v21, 8);
  v7 = a1 + 15;
  v6 = a1[15];
  if (v5 != v6)
  {
    if (!v6)
    {
LABEL_5:
      a1[15] = v5;
      FigBaseObject = FigRenderPipelineGetFigBaseObject(a1[2]);
      v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v9)
      {
        v9(FigBaseObject, @"Timebase", v5);
      }

      v10 = a1[7];
      if (v10)
      {
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v11)
        {
          v11(v10, 0, 0);
        }

        v13 = a1[6];
        v12 = a1[7];
        v14 = a1[15];
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v15)
        {
          v15(v12, v13, v14);
        }
      }

      if (*v7)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterAddListener();
        CFRetain(a1[15]);
      }

      if (*(a1 + 2) == 1986618469)
      {
        v16 = (*a1)[20];
        if (v16)
        {
          v17 = a1[15];
          v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v18)
          {
            v18(v16, v17);
          }
        }
      }

      return;
    }

LABEL_23:
    nero_relinquishNeroTimebase(*a1, v6);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterRemoveListener();
    CFRelease(a1[15]);
    goto LABEL_5;
  }

  if (v5)
  {
    nero_relinquishNeroTimebase(*a1, v6);
  }
}

void nrp_timebaseRateChangedCallback(uint64_t a1, uint64_t a2)
{
  cf = 0;
  FigBaseObject = FigRenderPipelineGetFigBaseObject(*(a2 + 16));
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v5 = *MEMORY[0x1E695E480];
    if (!v4(FigBaseObject, @"FigImageQueueArray", *MEMORY[0x1E695E480], &cf))
    {
      v6 = cf;
      if (cf)
      {
        v18.length = CFArrayGetCount(cf);
        v18.location = 0;
        CFArrayApplyFunction(v6, v18, nrp_timebaseRateChangedCallbackApply, *(a2 + 120));
      }

      if (*(a2 + 128))
      {
        outRelativeRate = 0.0;
        outOfClockOrTimebaseAnchorTime = **&MEMORY[0x1E6960C70];
        outRelativeToClockOrTimebaseAnchorTime = outOfClockOrTimebaseAnchorTime;
        destinationBuffer = 0;
        v7 = CMTimebaseCopySource(*(a2 + 120));
        if (!CMSyncGetRelativeRateAndAnchorTime(*(a2 + 120), v7, &outRelativeRate, &outOfClockOrTimebaseAnchorTime, &outRelativeToClockOrTimebaseAnchorTime))
        {
          v8 = CMBlockBufferCreateWithMemoryBlock(v5, 0, 0x38uLL, v5, 0, 0, 0x38uLL, 1u, &destinationBuffer);
          v9 = destinationBuffer;
          if (!v8)
          {
            v10 = CMBlockBufferReplaceDataBytes(&outRelativeRate, destinationBuffer, 0, 8uLL);
            v9 = destinationBuffer;
            if (!v10)
            {
              v11 = CMBlockBufferReplaceDataBytes(&outOfClockOrTimebaseAnchorTime, destinationBuffer, 8uLL, 0x18uLL);
              v9 = destinationBuffer;
              if (!v11)
              {
                v12 = CMBlockBufferReplaceDataBytes(&outRelativeToClockOrTimebaseAnchorTime, destinationBuffer, 0x20uLL, 0x18uLL);
                v9 = destinationBuffer;
                if (!v12)
                {
                  NeroTransportSendAsyncMessage();
                  v9 = destinationBuffer;
                }
              }
            }
          }

          if (v9)
          {
            CFRelease(v9);
          }
        }

        if (v7)
        {
          CFRelease(v7);
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void *__nero_acquireNeroTimebaseForOctaviaTimebase_block_invoke(void *result)
{
  v1 = result;
  v2 = result[5] + 88;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (*(v2 + 16) == result[6])
    {
      ++*(v2 + 32);
      *(*(result[4] + 8) + 24) = *(v2 + 24);
      break;
    }
  }

  if (!*(*(result[4] + 8) + 24))
  {
    v3 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004041EBAFA3uLL);
    v4 = v1[5];
    *(v3 + 2) = v1[6];
    *(v3 + 8) = 1;
    result = CMTimebaseCreateWithSourceClock(*MEMORY[0x1E695E480], *(v4 + 72), v3 + 3);
    *(*(v1[4] + 8) + 24) = *(v3 + 3);
    v5 = *(v1[5] + 88);
    *v3 = v5;
    if (v5)
    {
      *(*(v1[5] + 88) + 8) = v3;
    }

    *(v1[5] + 88) = v3;
    *(v3 + 1) = v1[5] + 88;
  }

  return result;
}

void __nero_relinquishNeroTimebase_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 11;
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (v3[3] == *(a1 + 40))
    {
      v4 = *(v3 + 8) - 1;
      *(v3 + 8) = v4;
      if (!v4)
      {
        v5 = *v3;
        v6 = v3[1];
        if (*v3)
        {
          *(v5 + 8) = v6;
        }

        *v6 = v5;
        CFRelease(v3[3]);
        free(v3);
        v2 = *(a1 + 32);
      }

      break;
    }
  }

  CFRelease(v2);
}

uint64_t nrp_timebaseRateChangedCallbackApply(uint64_t a1, CMTimebaseRef timebase)
{
  if (timebase)
  {
    CFGetTypeID(timebase);
    CMTimebaseGetTypeID();
  }

  Rate = CMTimebaseGetRate(timebase);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v5)
  {
    v5(a1, Rate != 0.0);
  }

  VTable = CMBaseObjectGetVTable();
  v9 = *(VTable + 16);
  result = VTable + 16;
  v10 = *(v9 + 48);
  if (v10)
  {
    v7.n128_f32[0] = Rate;

    return v10(a1, v7);
  }

  return result;
}

void __nero_destroyVideoRenderPipeline_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 16))
  {
    v3 = *(v1 + 144);
    v8.length = CFArrayGetCount(v3);
    v8.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v3, v8, *(a1 + 40));
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(*(*(a1 + 32) + 144), FirstIndexOfValue);
      NeroTransportUnregisterObject();
      v5 = *(a1 + 40);
      v6 = *(v5 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __nero_destroyVideoRenderPipeline_block_invoke_2;
      block[3] = &__block_descriptor_tmp_118_1;
      block[4] = v5;
      dispatch_async(v6, block);
    }
  }
}

void nero_setPreferredClock(uint64_t a1, CFTypeRef cf)
{
  v2 = *(a1 + 72);
  *(a1 + 72) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void __nero_retainClockForOctavia_block_invoke(uint64_t a1)
{
  if (CFDictionaryContainsKey(*(*(a1 + 32) + 80), *(a1 + 40)))
  {
    v2 = CFDictionaryGetValue(*(*(a1 + 32) + 80), *(a1 + 40)) + 1;
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      CFRetain(v3);
    }

    NeroTransportRegisterObject();
    v2 = 1;
  }

  CFDictionarySetValue(*(*(a1 + 32) + 80), *(a1 + 40), v2);
}

void __nero_retainClockForOctavia_block_invoke_2(uint64_t a1, int a2)
{
  if (a2 == 1919249523)
  {
    v8 = v2;
    v9 = v3;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __nero_releaseClockForOctavia_block_invoke;
    v6[3] = &__block_descriptor_tmp_123_1;
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 40);
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __nero_retainClockForOctavia_block_invoke_3(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1953066341)
  {
    v5 = *(a1 + 32);
    blockBufferOut = 0;
    clockTimeOut = **&MEMORY[0x1E6960C70];
    referenceClockTimeOut = clockTimeOut;
    AnchorTime = CMClockGetAnchorTime(v5, &clockTimeOut, &referenceClockTimeOut);
    if (AnchorTime)
    {
LABEL_7:
      (*(a4 + 16))(a4, AnchorTime, 0);
      return;
    }

    v7 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x18uLL, *MEMORY[0x1E695E480], 0, 0, 0x18uLL, 1u, &blockBufferOut);
    v8 = blockBufferOut;
    if (v7 || (v7 = CMBlockBufferReplaceDataBytes(&clockTimeOut, blockBufferOut, 0, 0x18uLL), v8 = blockBufferOut, v7))
    {
      AnchorTime = v7;
      if (v8)
      {
        CFRelease(v8);
      }

      goto LABEL_7;
    }

    (*(a4 + 16))(a4, 0, blockBufferOut);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v9 = *(a4 + 16);

    v9(a4, 4294955260, 0);
  }
}

void __nero_releaseClockForOctavia_block_invoke(uint64_t a1)
{
  CFDictionaryContainsKey(*(*(a1 + 32) + 80), *(a1 + 40));
  Value = CFDictionaryGetValue(*(*(a1 + 32) + 80), *(a1 + 40));
  v3 = *(a1 + 40);
  v4 = Value - 1;
  if (Value == 1)
  {
    NeroTransportUnregisterObject();
    CFDictionaryRemoveValue(*(*(a1 + 32) + 80), *(a1 + 40));
    v6 = *(a1 + 40);
    if (v6)
    {

      CFRelease(v6);
    }
  }

  else
  {
    v5 = *(*(a1 + 32) + 80);

    CFDictionarySetValue(v5, v3, v4);
  }
}

void nds_didDecodeFrame(uint64_t a1, int a2, int a3)
{
  sourceBytes = a2;
  v7 = a3;
  destinationBuffer = 0;
  if (!CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 8uLL, *MEMORY[0x1E695E480], 0, 0, 8uLL, 1u, &destinationBuffer) && !CMBlockBufferReplaceDataBytes(&sourceBytes, destinationBuffer, 0, 4uLL) && !CMBlockBufferReplaceDataBytes(&v7, destinationBuffer, 4uLL, 4uLL))
  {
    if (v7 || !FigRemote_CreateSerializedAtomDataBlockBufferForPixelBuffer() && (v3 = destinationBuffer, DataLength = CMBlockBufferGetDataLength(0), !CMBlockBufferAppendBufferReference(v3, 0, 0, DataLength, 0)))
    {
      NeroTransportSendAsyncMessage();
    }
  }

  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }
}

void __nero_createVideoDecompressionSession_block_invoke(uint64_t a1, int a2, CMBlockBufferRef theSourceBuffer)
{
  v3 = *(a1 + 32);
  if (a2 > 1684628835)
  {
    if (a2 == 1684628836 || a2 == 1919249523)
    {
      v6 = *(a1 + 32);

      nds_destroy(v6);
    }
  }

  else if (a2 == 561406316)
  {
    if (v3)
    {
      v7 = *v3;

      VTDecompressionSessionInvalidate(v7);
    }
  }

  else if (a2 == 1684235365)
  {
    sampleBuffer = 0;
    destination = 0;
    if (!CMBlockBufferCopyDataBytes(theSourceBuffer, 0, 4uLL, &destination))
    {
      SampleBufferFromSerializedAtomDataBlockBuffer = FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer();
      v5 = sampleBuffer;
      if (!SampleBufferFromSerializedAtomDataBlockBuffer)
      {
        VTDecompressionSessionDecodeFrame(*v3, sampleBuffer, 0, destination, 0);
        v5 = sampleBuffer;
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }
}

void nds_destroy(uint64_t a1)
{
  if (a1)
  {
    NeroTransportUnregisterObject();
    if (*a1)
    {
      CFRelease(*a1);
    }

    v2 = *(a1 + 16);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void __nero_displayWasAttached_block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v2 + 136);
  if (v4)
  {
    CFRelease(v4);
    v2 = *v3;
  }

  *(v2 + 136) = *(a1 + 40);
  Count = CFArrayGetCount(*(*(a1 + 32) + 144));
  if (Count >= 1)
  {
    __nero_displayWasAttached_block_invoke_cold_1(v3, Count);
  }

  v6 = *v3;
  if (*(*v3 + 121))
  {

    nero_tellOctaviaDisplayWasAttached(v6);
  }
}

void __nero_displayWasDetached_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 136) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 121))
  {
    FigTransportGetRemoteRootObject();

    NeroTransportSendAsyncMessage();
  }
}

uint64_t nrp_unregisterNotificationListener()
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterRemoveListener();
}

void __nero_reset_block_invoke(uint64_t a1)
{
  for (i = *(*(a1 + 32) + 88); i; i = *(*(a1 + 32) + 88))
  {
    v3 = *i;
    v4 = i[1];
    if (*i)
    {
      *(v3 + 8) = v4;
    }

    *v4 = v3;
    CFRelease(i[3]);
    free(i);
  }
}

uint64_t OUTLINED_FUNCTION_0_203()
{

  return CMNotificationCenterAddListener();
}

uint64_t OUTLINED_FUNCTION_1_186()
{

  return CMNotificationCenterAddListener();
}

uint64_t sessionCreateCommon(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!FVDUtilsSessionServerEnabled())
  {
    sessionCreateCommon_cold_3();
    v6 = 4294954514;
    goto LABEL_14;
  }

  if (!a4)
  {
    sessionCreateCommon_cold_2();
    v6 = 4294955226;
    goto LABEL_14;
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdsr_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E7496DC0;
  block[4] = &v14;
  if (fvdsr_ensureClientEstablished_onceToken != -1)
  {
    dispatch_once(&fvdsr_ensureClientEstablished_onceToken, block);
  }

  v6 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  if (v6)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_19:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_14;
  }

  v7 = FigXPCCreateBasicMessage();
  if (v7)
  {
    goto LABEL_18;
  }

  if (a2)
  {
    v7 = FigXPCMessageSetCFDictionary();
    if (v7)
    {
      goto LABEL_18;
    }
  }

  v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v7)
  {
    goto LABEL_18;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    sessionCreateCommon_cold_1();
  }

  FigVirtualDisplaySessionGetClassID();
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
LABEL_18:
    v6 = v7;
    v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    goto LABEL_19;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = 0;
  *(DerivedStorage + 48) = uint64;
  *(DerivedStorage + 8) = dispatch_queue_create("com.apple.coremedia.vdsessionremote.stateq", 0);
  *(DerivedStorage + 16) = dispatch_queue_create("com.apple.coremedia.vdsessionremote.notifq", 0);
  FigXPCRemoteClientAssociateObject();
  v6 = 0;
  *a4 = 0;
LABEL_14:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t FigVirtualDisplaySessionRemoteFrameReceiverCreate(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  if (a3)
  {
    Common = sessionCreateCommon(a1, a2, 1668441715, a4);
    if (Common)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 32) = _Block_copy(a3);
    }
  }

  else
  {
    FigVirtualDisplaySessionRemoteFrameReceiverCreate_cold_1();
    return 4294955226;
  }

  return Common;
}

void __fvdsr_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"SessionServerDied");
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t fvdsr_handleDeadConnection()
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 56) = 1;
  return result;
}

void fvdsr_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fvdsr_finalize_cold_1();
  }

  if (sFVDSessionRemoteClient)
  {
    FigXPCRemoteClientDisassociateObject();
  }

  if (!*(DerivedStorage + 56))
  {
    fvdsr_sendBasicMessage(DerivedStorage, 1684632432, 0);
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    dispatch_release(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    dispatch_release(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    _Block_release(v3);
    *(DerivedStorage + 24) = 0;
  }

  v4 = *(DerivedStorage + 32);
  if (v4)
  {
    _Block_release(v4);
    *(DerivedStorage + 32) = 0;
  }

  v5 = *(DerivedStorage + 40);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 40) = 0;
  }
}

CFStringRef fvdsr_copyDebugDesc(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  v4 = *DerivedStorage;
  v5 = CFGetRetainCount(a1);
  return CFStringCreateWithFormat(v3, 0, @"<FigVirtualDisplaySessionRemote %p state: %d retainCount: %ld objectID: %llu>", a1, v4, v5, *(DerivedStorage + 6));
}

uint64_t fvdsr_sendBasicMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = FigXPCCreateBasicMessage();
  if (v4 || a3 && (v4 = FigXPCMessageSetCFDictionary(), v4))
  {
    v5 = v4;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    goto LABEL_9;
  }

  v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v5)
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
LABEL_9:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

uint64_t sessionStart_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    sessionStart_cold_1();
  }

  v7 = *(DerivedStorage + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __sessionStart_block_invoke_0;
  v9[3] = &unk_1E7496E10;
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = a2;
  v9[7] = DerivedStorage;
  dispatch_sync(v7, v9);
  return 0;
}

uint64_t sessionStop_0(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __sessionStop_block_invoke;
  block[3] = &__block_descriptor_tmp_14_9;
  block[4] = a1;
  dispatch_sync(v2, block);
  return 0;
}

uint64_t sessionSuspend_0(uint64_t a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __sessionSuspend_block_invoke_0;
  block[3] = &__block_descriptor_tmp_15_9;
  block[4] = a1;
  dispatch_sync(v2, block);
  return 0;
}

uint64_t sessionResume_0(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage != 1)
  {
    sessionResume_cold_1();
  }

  v3 = *(DerivedStorage + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __sessionResume_block_invoke_0;
  v6[3] = &unk_1E7496E78;
  v6[4] = &v7;
  v6[5] = a1;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __sessionStart_block_invoke_0(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a1[6];
  v3 = a1[4];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v22 = 0;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    _Block_release(v5);
  }

  *(DerivedStorage + 24) = v3;
  if (!*DerivedStorage)
  {
    v7 = *MEMORY[0x1E695E480];
    if (v2)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v2);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v10 = MutableCopy;
    v11 = getprogname();
    if (*(DerivedStorage + 32))
    {
      Value = CFDictionaryGetValue(v10, @"usage");
      if (!Value)
      {
LABEL_15:
        CFDictionarySetValue(v10, @"usage", @"Uncompressed");
        goto LABEL_16;
      }

      v13 = Value;
      if (!CFEqual(Value, @"Uncompressed") && !CFEqual(v13, @"UncompressedHDR"))
      {
        v24 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_15;
      }
    }

LABEL_16:
    if (v11)
    {
      v14 = CFStringCreateWithCString(v7, v11, 0x8000100u);
      CFDictionaryAddValue(v10, @"clientName", v14);
      if (v14)
      {
        CFRelease(v14);
      }
    }

    getpid();
    FigCFDictionarySetInt32();
    v9 = fvdsr_sendBasicMessage(DerivedStorage, 1937011316, v10);
    if (v9)
    {
      v24 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (v10)
      {
LABEL_24:
        CFRelease(v10);
      }
    }

    else
    {
      FigCFDictionaryGetBooleanIfPresent();
      if (v22)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      *DerivedStorage = v15;
      if (v10)
      {
        goto LABEL_24;
      }
    }

    if (!v9)
    {
      return;
    }

    goto LABEL_26;
  }

  v24 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v9 = -12070;
LABEL_26:
  v16 = a1[4];
  if (v16)
  {
    v17 = *(a1[7] + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __sessionStart_block_invoke_2_0;
    block[3] = &unk_1E7496DE8;
    block[4] = v16;
    v21 = v9;
    dispatch_async(v17, block);
  }
}

uint64_t __sessionStop_block_invoke()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = fvdsr_sendBasicMessage(DerivedStorage, 1937010544, 0);
  *DerivedStorage = 0;
  return result;
}

_DWORD *__sessionSuspend_block_invoke_0()
{
  result = CMBaseObjectGetDerivedStorage();
  if (*result == 2)
  {
    v1 = result;
    result = fvdsr_sendBasicMessage(result, 1937077104, 0);
    *v1 = 1;
  }

  return result;
}

uint64_t __sessionResume_block_invoke_0(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  if (*DerivedStorage == 1)
  {
    result = fvdsr_sendBasicMessage(DerivedStorage, 1919251309, 0);
    v5 = result;
    if (result)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      *v3 = 2;
    }
  }

  else
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    v5 = -12070;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

BOOL OUTLINED_FUNCTION_16_54(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_24_34(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_25_36(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_27_31(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int16 a21, char a22, os_log_type_t type, int a24)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_28_32(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23)
{

  return os_log_type_enabled(a1, type);
}

uint64_t RegisterFigSampleAttachmentCollectionRulesBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleAttachmentCollectionRulesGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleAttachmentCollectionRulesGetClassID_sRegisterFigSampleAttachmentCollectionRulesBaseTypeOnce, RegisterFigSampleAttachmentCollectionRulesBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t rules_SampleAttachmentCollectionRulesCreate(const __CFAllocator *a1, uint64_t a2, const void *a3, void *a4)
{
  if (!a4)
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_7(&v18);
    return v18;
  }

  MEMORY[0x19A8D3660](&FigSampleAttachmentCollectionRulesGetClassID_sRegisterFigSampleAttachmentCollectionRulesBaseTypeOnce, RegisterFigSampleAttachmentCollectionRulesBaseType);
  v7 = CMDerivedObjectCreate();
  if (v7)
  {
    return v7;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v9 = CFRetain(a3);
  }

  else
  {
    v9 = 0;
  }

  *(DerivedStorage + 32) = v9;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  *(DerivedStorage + 8) = Mutable;
  if (!Mutable)
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_6(&v18);
    return v18;
  }

  v11 = *MEMORY[0x1E69603B0];
  if (!*MEMORY[0x1E69603B0])
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_5(&v18);
LABEL_24:
    v16 = v18;
    if (v18)
    {
      return v16;
    }

    CFArrayAppendValue(*(DerivedStorage + 8), 0);
    goto LABEL_14;
  }

  v12 = *MEMORY[0x1E6960468];
  if (!*MEMORY[0x1E6960468])
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_4(&v18);
    goto LABEL_24;
  }

  v13 = *MEMORY[0x1E6965F18];
  if (!*MEMORY[0x1E6965F18])
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_3(&v18);
    goto LABEL_24;
  }

  if (FigCollectionRuleGetTypeID_oneTimeOnly != -1)
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    rules_SampleAttachmentCollectionRulesCreate_cold_2(&v18);
    goto LABEL_24;
  }

  v15 = Instance;
  *(Instance + 24) = 1;
  *(Instance + 16) = CFRetain(v11);
  v15[4] = CFRetain(v12);
  v15[5] = CFRetain(v13);
  v15[6] = rules_collectSceneIlluminationAttachment;
  CFArrayAppendValue(*(DerivedStorage + 8), v15);
  CFRelease(v15);
LABEL_14:
  v16 = 0;
  *a4 = 0;
  return v16;
}

uint64_t rules_collectSceneIlluminationAttachment()
{
  FigBoxedMetadataGetValueOfItemAtIndexAsUInt32();
  FigCFDictionarySetUInt32();
  return 0;
}

uint64_t figCollectionRuleClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  sFigCollectionRuleTypeID = result;
  return result;
}

double figCollectionRuleInit(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void figCollectionRuleFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }
}

__CFString *figCollectionRuleCopyDebugDescription(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCollectionRule %p: ", a1);
  CFStringAppendFormat(Mutable, 0, @"mebx identifier %@, sbuf key %@, pbuf key %@", a1[2], a1[4], a1[5]);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

void figSampleAttachmentCollectionRulesFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 32) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }
}

__CFString *figSampleAttachmentCollectionRulesCopyDebugDesc(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"FSACRules %p retainCount: %d allocator: %p", a1, v4, v5);
  return Mutable;
}

uint64_t figSampleAttachmentCollectionRulesCopyProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 4294954516;
  }
}

uint64_t figSampleAttachmentCollectionRulesSetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return 4294954516;
  }
}

CFTypeRef OUTLINED_FUNCTION_2_181(uint64_t a1)
{
  v3 = *(a1 + 32);

  return CMGetAttachment(v1, v3, 0);
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_ensureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigEndpointStreamAudioEngineRemoteXPC_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E7496EA0;
  block[4] = &v3;
  if (FigEndpointStreamAudioEngineRemoteXPC_ensureClientEstablished_sFigEndpointStreamAudioEngineRemoteClientSetupOnce != -1)
  {
    dispatch_once(&FigEndpointStreamAudioEngineRemoteXPC_ensureClientEstablished_sFigEndpointStreamAudioEngineRemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t remoteXPCAudioEngine_CreateInternal(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E695E480];
  FigEndpointStreamAudioEngineGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    return v5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = a1;
  DerivedStorage[4] = 1;
  Mutable = CFDictionaryCreateMutable(v4, 0, 0, &kFigEndpointStreamAudioEngineRemoteXPC_CompletionCallbackEntryDictionaryValueCallbacks);
  DerivedStorage[3] = Mutable;
  if (Mutable)
  {
    v8 = FigDispatchQueueCreateWithPriority();
    DerivedStorage[2] = v8;
    if (v8)
    {
      v9 = FigXPCRemoteClientAssociateObject();
      if (!v9)
      {
        *a2 = 0;
        return v9;
      }
    }

    else
    {
      v9 = 4294951816;
    }

    v11 = DerivedStorage[3];
    if (v11)
    {
      CFRelease(v11);
    }
  }

  else
  {
    v9 = 4294951816;
  }

  v12 = DerivedStorage[2];
  if (v12)
  {
    dispatch_release(v12);
  }

  return v9;
}

void remoteXPCAudioEngineClient_DeadConnectionCallback()
{
  *CMBaseObjectGetDerivedStorage() = 1;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  context = -16722;
  v1 = *(DerivedStorage + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __FigEndpointStreamAudioEngineRemoteXPC_runAllCallbacks_block_invoke;
  v4[3] = &unk_1E7496EC8;
  v4[5] = v10;
  v4[6] = DerivedStorage;
  v4[4] = &v6;
  dispatch_sync(v1, v4);
  v2 = v7[3];
  if (v2)
  {
    CFDictionaryApplyFunction(v2, FigEndpointStreamAudioEngineRemoteXPC_runOneCallback, &context);
    v3 = v7[3];
    if (v3)
    {
      CFRelease(v3);
    }
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_runOneCallback(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5)
{
  result = *a2;
  v9 = *(a2 + 8);
  v10 = *a3;
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  if (v9 <= 2)
  {
    if (v9 != 1 && v9 != 2)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v9 == 3)
  {
LABEL_8:
    v13 = *(a2 + 24);

    return v12(result, v10, v13, a4, a5, v11);
  }

  if (v9 == 4)
  {
    v18 = v5;
    v19 = v6;
    v16 = *MEMORY[0x1E6960C70];
    v17 = *(MEMORY[0x1E6960C70] + 16);
    v14 = v16;
    v15 = v17;
    return (v12)(result, v10, &v16, &v14, 0, v11, 0.0);
  }

  return result;
}

void __remoteXPCAudioEngineClient_handleCompletionCallback_block_invoke(uint64_t a1)
{
  value = 0;
  if (CFDictionaryGetValueIfPresent(*(*(a1 + 40) + 24), *(a1 + 48), &value))
  {
    v2 = *(*(a1 + 32) + 8);
    v3 = *(value + 1);
    *(v2 + 24) = *value;
    *(v2 + 40) = v3;
    v4 = *(*(*(a1 + 32) + 8) + 24);
    if (v4)
    {
      CFRetain(v4);
    }

    CFDictionaryRemoveValue(*(*(a1 + 40) + 24), *(a1 + 48));
  }
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  v10 = 0;
  cf = 0;
  ObjectID = remoteXPCAudioEngine_GetObjectID(a1, &v10);
  if (!ObjectID)
  {
    if (CFEqual(a2, @"endpointStream"))
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (ObjectID)
      {
        goto LABEL_26;
      }

      ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (ObjectID)
      {
        goto LABEL_26;
      }

      if (xpc_dictionary_get_uint64(0, "StreamObjectID"))
      {
        ObjectID = FigEndpointStreamXPCRemoteRetainCopiedEndpointStream();
        if (ObjectID)
        {
          goto LABEL_26;
        }
      }

LABEL_23:
      v8 = 0;
      *a4 = cf;
      cf = 0;
      goto LABEL_24;
    }

    if (CFEqual(a2, @"inputSampleBufferConsumer"))
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!ObjectID)
        {
          uint64 = xpc_dictionary_get_uint64(0, "SampleBufferConsumerObjectID");
          if (!uint64)
          {
            goto LABEL_23;
          }

          ObjectID = FigSampleBufferConsumerXPCRemoteRetainCopiedSampleBufferConsumer(uint64, &cf);
          if (!ObjectID)
          {
            goto LABEL_23;
          }
        }
      }
    }

    else if (CFEqual(a2, @"transportAudioFormatDescription"))
    {
      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!ObjectID)
        {
          ObjectID = FigXPCMessageCopyFigEndpointStreamAudioFormatDescription();
          if (!ObjectID)
          {
            goto LABEL_23;
          }
        }
      }
    }

    else
    {
      if (!CFEqual(a2, @"supportedAudioFormatDescriptions"))
      {
        ObjectID = FigXPCSendStdCopyPropertyMessage();
        if (ObjectID)
        {
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      ObjectID = FigXPCCreateBasicMessage();
      if (!ObjectID)
      {
        ObjectID = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!ObjectID)
        {
          ObjectID = FigXPCMessageCopyFigEndpointStreamAudioFormatDescriptionArray();
          if (!ObjectID)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

LABEL_26:
  v8 = ObjectID;
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_24:
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t remoteXPCAudioEngine_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    remoteXPCAudioEngine_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *(v4 + 1);
  }

  return result;
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_Resume(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v17 = 0;
  xdict = 0;
  v15 = 0;
  value = 0;
  ObjectID = remoteXPCAudioEngine_GetObjectID(a1, &v17);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v13 = ObjectID;
    MutableCopy = 0;
    goto LABEL_34;
  }

  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    v13 = 4294951816;
    goto LABEL_34;
  }

  v9 = FigCFDictionaryGetValue();
  if (v9)
  {
    xpc_dictionary_set_BOOL(xdict, "HasAudioSourceOption", 1);
    if (remoteXPCAudioEngine_getAPAudioSourceSharedMemoryWriterSetMessage_sAudioSourceFunctionLoadedOnce != -1)
    {
      FigEndpointStreamAudioEngineRemoteXPC_Resume_cold_1();
    }

    v10 = remoteXPCAudioEngine_getAPAudioSourceSharedMemoryWriterSetMessage_sAudioSourceSMWriterSetMessage;
    if (!remoteXPCAudioEngine_getAPAudioSourceSharedMemoryWriterSetMessage_sAudioSourceSMWriterSetMessage && !FigEndpointStreamAudioEngineRemoteXPC_Resume_cold_2(&v19))
    {
      v13 = v19;
LABEL_34:
      if (!a3)
      {
LABEL_27:
        if (!MutableCopy)
        {
          return FigXPCRelease();
        }

        goto LABEL_23;
      }

LABEL_26:
      a3(a1, v13, a4);
      goto LABEL_27;
    }

    v11 = v10(v9, xdict);
    if (v11)
    {
      goto LABEL_29;
    }

    CFDictionaryRemoveValue(MutableCopy, @"audioSourceOption");
  }

  else
  {
    xpc_dictionary_set_BOOL(xdict, "HasAudioSourceOption", 0);
  }

  if (FigCFDictionaryGetValue())
  {
    v11 = FigEndpointStreamXPCRemoteGetObjectID();
    if (v11)
    {
      goto LABEL_29;
    }

    xpc_dictionary_set_uint64(xdict, "EndpointStreamHintObjectID", value);
    CFDictionaryRemoveValue(MutableCopy, @"endpointStreamHint");
  }

  if (FigCFDictionaryGetValue())
  {
    v11 = FigXPCMessageSetFigEndpointStreamAudioFormatDescription();
    if (v11)
    {
      goto LABEL_29;
    }

    CFDictionaryRemoveValue(MutableCopy, @"initialTransportAudioFormatDescriptionHint");
  }

  if (!FigCFDictionaryGetValue())
  {
    goto LABEL_20;
  }

  v11 = FigXPCMessageSetFigEndpointStreamAudioFormatDescriptionArray();
  if (v11)
  {
LABEL_29:
    v13 = v11;
    goto LABEL_34;
  }

  CFDictionaryRemoveValue(MutableCopy, @"supportedAudioFormatDescriptions");
LABEL_20:
  v11 = FigXPCMessageSetCFDictionary();
  if (v11)
  {
    goto LABEL_29;
  }

  v12 = FigEndpointStreamAudioEngineRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, xdict, 1, a3, a4, &v15);
  if (a3)
  {
    v13 = v12;
    if (v12)
    {
      if (FigEndpointStreamAudioEngineRemoteXPC_tryRemoveCallback(a1, v15))
      {
        goto LABEL_26;
      }
    }
  }

LABEL_23:
  CFRelease(MutableCopy);
  return FigXPCRelease();
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_Suspend(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  ObjectID = remoteXPCAudioEngine_GetObjectID(a1, &v12);
  if (ObjectID || (ObjectID = FigXPCCreateBasicMessage(), ObjectID) || (ObjectID = FigXPCMessageSetCFDictionary(), ObjectID))
  {
    v9 = ObjectID;
    if (!a3)
    {
      return FigXPCRelease();
    }

    goto LABEL_8;
  }

  v8 = FigEndpointStreamAudioEngineRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, v13, 2, a3, a4, &v11);
  if (a3)
  {
    v9 = v8;
    if (v8)
    {
      if (FigEndpointStreamAudioEngineRemoteXPC_tryRemoveCallback(a1, v11))
      {
LABEL_8:
        a3(a1, v9, a4);
      }
    }
  }

  return FigXPCRelease();
}

uint64_t FigEndpointStreamAudioEngineRemoteXPC_SetEndpointStream(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v14 = 0;
  xdict = 0;
  v12 = 0;
  value = 0;
  ObjectID = remoteXPCAudioEngine_GetObjectID(a1, &v14);
  if (ObjectID || a2 && (ObjectID = FigEndpointStreamXPCRemoteGetObjectID(), ObjectID) || (ObjectID = FigXPCCreateBasicMessage(), ObjectID))
  {
    v10 = ObjectID;
    if (!a3)
    {
      return FigXPCRelease();
    }

    goto LABEL_9;
  }

  xpc_dictionary_set_uint64(xdict, "StreamObjectID", value);
  v9 = FigEndpointStreamAudioEngineRemoteXPC_sendMessageSynchronouslyExpectingCompletionCallback(a1, xdict, 3, a3, a4, &v12);
  if (a3)
  {
    v10 = v9;
    if (v9)
    {
      if (FigEndpointStreamAudioEngineRemoteXPC_tryRemoveCallback(a1, v12))
      {
LABEL_9:
        a3(a1, v10, a4);
      }
    }
  }

  return FigXPCRelease();
}