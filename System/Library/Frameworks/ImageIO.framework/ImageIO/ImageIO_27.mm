uint64_t TIFFWriteCheck(uint64_t a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!*(a1 + 12))
  {
    v12 = "File not open for writing";
    goto LABEL_9;
  }

  if (((*(a1 + 16) >> 10) & 1) != a2)
  {
    if (a2)
    {
      v12 = "Can not write tiles to a striped image";
    }

    else
    {
      v12 = "Can not write scanlines to a tiled image";
    }

    goto LABEL_9;
  }

  _TIFFFillStriles(a1);
  if ((*(a1 + 72) & 2) == 0)
  {
    v12 = "Must set ImageWidth before writing data";
LABEL_9:
    TIFFErrorExtR(a1, a3, v12, a4, a5, a6, a7, a8, v16);
    return 0;
  }

  if (!*(a1 + 232) && !TIFFSetupStrips(a1, v10, v11, a4, a5, a6, a7, a8))
  {
    *(a1 + 228) = 0;
    if ((*(a1 + 16) & 0x400) != 0)
    {
      v15 = "tile";
    }

    else
    {
      v15 = "strip";
    }

    TIFFErrorExtR(a1, a3, "No space for %s arrays", a4, a5, a6, a7, a8, v15);
    return 0;
  }

  if ((*(a1 + 17) & 4) != 0)
  {
    result = _cg_TIFFTileSize(a1, v10, v11, a4, a5, a6, a7, a8);
    *(a1 + 936) = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *(a1 + 936) = -1;
  }

  result = _cg_TIFFScanlineSize(a1, v10, v11, a4, a5, a6, a7, a8);
  *(a1 + 1104) = result;
  if (result)
  {
    v14 = *(a1 + 16);
    *(a1 + 16) = v14 | 0x40;
    if (!*(a1 + 256) || *(a1 + 264) || *(a1 + 258) || *(a1 + 272) || !*(a1 + 288) || *(a1 + 296) || *(a1 + 290))
    {
      return 1;
    }

    result = 1;
    if (!*(a1 + 304) && (v14 & 8) == 0)
    {
      TIFFForceStrileArrayWriting(a1);
      return 1;
    }
  }

  return result;
}

uint64_t TIFFWriteBufferSetup(uint64_t a1, uint64_t a2, uint64_t size, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = size;
  v9 = a2;
  v11 = *(a1 + 1120);
  if (v11)
  {
    if ((*(a1 + 17) & 2) != 0)
    {
      free(v11);
      *(a1 + 16) &= ~0x200u;
    }

    *(a1 + 1120) = 0;
  }

  if (v8 == -1)
  {
    if ((*(a1 + 17) & 4) != 0)
    {
      v13 = *(a1 + 936);
    }

    else
    {
      v13 = _cg_TIFFStripSize(a1, a2, size, a4, a5, a6, a7, a8);
    }

    v14 = v13 / 10;
    if (v13 >= ((v13 / 10) ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v14 = 0;
    }

    v15 = v14 + v13;
    if (v15 <= 0x2000)
    {
      v8 = 0x2000;
    }

    else
    {
      v8 = v15;
    }
  }

  else if (v9)
  {
    v12 = *(a1 + 16) & 0xFFFFFDFF;
LABEL_18:
    *(a1 + 1120) = v9;
    *(a1 + 1128) = v8;
    *(a1 + 1160) = 0;
    *(a1 + 1152) = v9;
    result = 1;
    *(a1 + 16) = v12 | 0x10;
    return result;
  }

  v16 = malloc_type_malloc(v8, 0xE1B8167FuLL);
  if (v16)
  {
    v9 = v16;
    v12 = *(a1 + 16) | 0x200;
    goto LABEL_18;
  }

  TIFFErrorExtR(a1, "TIFFWriteBufferSetup", "No space for output buffer", v17, v18, v19, v20, v21, v23);
  return 0;
}

uint64_t TIFFGrowStrips(uint64_t a1, const char *a2)
{
  if (*(a1 + 170) != 1)
  {
    TIFFGrowStrips_cold_1();
  }

  v4 = malloc_type_realloc(*(a1 + 232), 8 * (*(a1 + 228) + 1), 0x100004000313F17uLL);
  v5 = malloc_type_realloc(*(a1 + 240), 8 * (*(a1 + 228) + 1), 0x100004000313F17uLL);
  v11 = v5;
  if (v4)
  {
    v12 = v5 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (v4)
    {
      free(v4);
    }

    if (v11)
    {
      free(v11);
    }

    *(a1 + 228) = 0;
    TIFFErrorExtR(a1, a2, "No space to expand strip arrays", v6, v7, v8, v9, v10, v14);
    return 0;
  }

  else
  {
    *(a1 + 232) = v4;
    *(a1 + 240) = v5;
    _TIFFmemset(&v4[8 * *(a1 + 228)], 0, 8uLL);
    _TIFFmemset((*(a1 + 240) + 8 * *(a1 + 228)), 0, 8uLL);
    ++*(a1 + 228);
    *(a1 + 16) |= 8u;
    return 1;
  }
}

uint64_t _TIFFReserveLargeEnoughWriteBuffer(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 240) + 8 * a2);
  if (!v8)
  {
    return 1;
  }

  if (*(a1 + 1128) > v8 + 5)
  {
    return 1;
  }

  result = TIFFWriteBufferSetup(a1, 0, (v8 + 1028) & 0xFFFFFFFFFFFFFC00, a4, a5, a6, a7, a8);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t TIFFAppendToStrip(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 888);
  v12 = a2;
  if (v11)
  {
    v13 = *(a1 + 232);
    if (*(v13 + 8 * a2))
    {
      v14 = -1;
      goto LABEL_15;
    }

    v15 = 0;
    v16 = 1;
  }

  else
  {
    *(a1 + 896) = 0;
    v15 = *(*(a1 + 232) + 8 * a2);
    v16 = v15 == 0;
  }

  if (!*(a1 + 228))
  {
    TIFFAppendToStrip_cold_1();
  }

  v17 = *(*(a1 + 240) + 8 * v12);
  if (v17 < a4)
  {
    v16 = 1;
  }

  if (!v17 || v16)
  {
    v19 = (*(a1 + 1224))(*(a1 + 1200), 0, 2);
    v13 = *(a1 + 232);
    v18 = *(a1 + 240);
    *(v13 + 8 * v12) = v19;
    *(a1 + 16) |= 0x200000u;
  }

  else
  {
    if (!_TIFFSeekOK(a1, v15))
    {
      v46 = *(a1 + 876);
      v22 = "Seek error at scanline %lu";
      goto LABEL_45;
    }

    v13 = *(a1 + 232);
    v18 = *(a1 + 240);
    *(a1 + 896) = *(v18 + 8 * v12) + *(v13 + 8 * v12);
    v19 = *(v13 + 8 * v12);
  }

  *(a1 + 888) = v19;
  v14 = *(v18 + 8 * v12);
  *(v18 + 8 * v12) = 0;
  v11 = *(a1 + 888);
LABEL_15:
  if ((*(a1 + 18) & 8) != 0)
  {
    v20 = v11 + a4;
  }

  else
  {
    v20 = (v11 + a4);
  }

  if (v20 < v11 || v20 < a4)
  {
LABEL_22:
    v22 = "Maximum TIFF file size exceeded";
LABEL_45:
    TIFFErrorExtR(a1, "TIFFAppendToStrip", v22, a4, a5, a6, a7, a8, v46);
    return 0;
  }

  v23 = *(a1 + 896);
  if (v23)
  {
    if (v20 > v23)
    {
      v24 = *(*(a1 + 240) + 8 * v12);
      if (v24)
      {
        if (v24 >= 0x100000)
        {
          v25 = 0x100000;
        }

        else
        {
          v25 = *(*(a1 + 240) + 8 * v12);
        }

        v47 = *(v13 + 8 * v12);
        v26 = (*(a1 + 1224))(*(a1 + 1200), 0, 2);
        v27 = v26;
        if ((*(a1 + 18) & 8) != 0 || !((v24 + a4 + v26) >> 32))
        {
          v28 = malloc_type_malloc(v25, 0x63C634D6uLL);
          if (v28)
          {
            v29 = v28;
            v30 = 0;
            *(a1 + 16) |= 0x200000u;
            v31 = *(a1 + 240);
            *(*(a1 + 232) + 8 * v12) = v27;
            *(v31 + 8 * v12) = 0;
            while (1)
            {
              if (!_TIFFSeekOK(a1, v47 + v30))
              {
LABEL_48:
                v45 = "Seek error";
                goto LABEL_51;
              }

              if ((*(a1 + 1208))(*(a1 + 1200), v29, v25) != v25)
              {
                v45 = "Cannot read";
                goto LABEL_51;
              }

              if (!_TIFFSeekOK(a1, v27 + v30))
              {
                goto LABEL_48;
              }

              if ((*(a1 + 1216))(*(a1 + 1200), v29, v25) != v25)
              {
                break;
              }

              *(*(a1 + 240) + 8 * v12) += v25;
              v30 += v25;
              if (v24 == v30)
              {
                free(v29);
                v20 = v27 + a4 + v30;
                goto LABEL_39;
              }
            }

            v45 = "Cannot write";
LABEL_51:
            TIFFErrorExtR(a1, "TIFFAppendToStrip", v45, v32, v33, v34, v35, v36, v46);
            free(v29);
            return 0;
          }

          v22 = "No space for output buffer";
          goto LABEL_45;
        }

        goto LABEL_22;
      }
    }
  }

LABEL_39:
  if ((*(a1 + 1216))(*(a1 + 1200), a3, a4) != a4)
  {
    TIFFErrorExtR(a1, "TIFFAppendToStrip", "Write error at scanline %lu", v37, v38, v39, v40, v41, *(a1 + 876));
    return 0;
  }

  *(a1 + 888) = v20;
  v42 = *(a1 + 240);
  v43 = *(v42 + 8 * v12) + a4;
  *(v42 + 8 * v12) = v43;
  if (v43 != v14)
  {
    *(a1 + 16) |= 0x200000u;
  }

  return 1;
}

uint64_t _cg_TIFFWriteTile(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  if (!TIFFCheckTile(a1, a3, a4, a5, a6, a6, a7, a8))
  {
    return -1;
  }

  v14 = _cg_TIFFComputeTile(a1, a3, a4, v9, v8);

  return _cg_TIFFWriteEncodedTile(a1, v14, a2, -1, v15, v16, v17, v18);
}

uint64_t _cg_TIFFWriteEncodedTile(uint64_t a1, unsigned int a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 16) & 0x40) == 0 && !TIFFWriteCheck(a1, 1, "TIFFWriteEncodedTile", a4, a5, a6, a7, a8))
  {
    return -1;
  }

  if (*(a1 + 228) <= a2)
  {
    v37 = a2;
    v23 = "Tile %lu out of range, max %lu";
    goto LABEL_16;
  }

  v12 = *(a1 + 16);
  if ((v12 & 0x10) == 0 || !*(a1 + 1120))
  {
    v13 = -1;
    if (!TIFFWriteBufferSetup(a1, 0, -1, a4, a5, a6, a7, a8))
    {
      return v13;
    }

    v12 = *(a1 + 16);
  }

  *(a1 + 16) = v12 | 0x100000;
  *(a1 + 932) = a2;
  *(a1 + 888) = 0;
  if (!_TIFFReserveLargeEnoughWriteBuffer(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return -1;
  }

  *(a1 + 1160) = 0;
  *(a1 + 1152) = *(a1 + 1120);
  v14 = *(a1 + 92);
  v15 = *(a1 + 104);
  if (v14 >= -v15 || (v16 = v14 - 1, v17 = __CFADD__(v16, v15), v18 = v16 + v15, v17) || (*(a1 + 876) = a2 % (v18 / v15) * v15, v19 = *(a1 + 88), v20 = *(a1 + 100), v19 >= -v20) || (v21 = v19 - 1, v17 = __CFADD__(v21, v20), v22 = v21 + v20, v17))
  {
    v23 = "Zero tiles";
LABEL_16:
    TIFFErrorExtR(a1, "TIFFWriteEncodedTile", v23, a4, a5, a6, a7, a8, v37);
    return -1;
  }

  *(a1 + 928) = a2 % (v22 / v20) * v20;
  v25 = *(a1 + 16);
  if ((v25 & 0x20) == 0)
  {
    if (!(*(a1 + 976))(a1))
    {
      return -1;
    }

    v25 = *(a1 + 16) | 0x20;
  }

  *(a1 + 16) = v25 & 0xFFFFEFFF;
  if (*(a1 + 936) >= a4)
  {
    v26 = a4;
  }

  else
  {
    v26 = *(a1 + 936);
  }

  if (a4 >= 1)
  {
    v13 = v26;
  }

  else
  {
    v13 = *(a1 + 936);
  }

  if (*(a1 + 120) != 1)
  {
    v31 = a2 / *(a1 + 224);
    if ((*(a1 + 992))(a1, v31))
    {
      (*(a1 + 1248))(a1, a3, v13);
      if ((*(a1 + 1048))(a1, a3, v13, v31))
      {
        if ((*(a1 + 1000))(a1))
        {
          if ((*(a1 + 16) & (*(a1 + 126) | 0x100)) == 0)
          {
            TIFFReverseBits(*(a1 + 1120), *(a1 + 1160));
          }

          v36 = *(a1 + 1160);
          if (v36 < 1 || TIFFAppendToStrip(a1, a2, *(a1 + 1120), v36, v32, v33, v34, v35))
          {
            *(a1 + 1160) = 0;
            *(a1 + 1152) = *(a1 + 1120);
            return v13;
          }
        }
      }
    }

    return -1;
  }

  (*(a1 + 1248))(a1, a3, v13);
  if ((*(a1 + 16) & (*(a1 + 126) | 0x100)) == 0)
  {
    TIFFReverseBits(a3, v13);
  }

  if (v13 >= 1 && !TIFFAppendToStrip(a1, a2, a3, v13, v27, v28, v29, v30))
  {
    return -1;
  }

  return v13;
}

uint64_t TIFFSetupStrips(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 72);
  if ((*(a1 + 17) & 4) != 0)
  {
    if ((v9 & 4) == 0 || *(a1 + 92))
    {
      v10 = _cg_TIFFNumberOfTiles(a1, a2, a3, a4, a5, a6, a7, a8);
      goto LABEL_9;
    }
  }

  else if ((v9 & 0x20000) == 0 || *(a1 + 92))
  {
    v10 = _cg_TIFFNumberOfStrips(a1, a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_9;
  }

  v10 = *(a1 + 130);
LABEL_9:
  *(a1 + 224) = v10;
  *(a1 + 228) = v10;
  if ((*(a1 + 18) & 8) != 0)
  {
    v11 = 0x10000000;
  }

  else
  {
    v11 = 0x20000000;
  }

  if (v10 >= v11)
  {
    TIFFErrorExtR(a1, "TIFFSetupStrips", "Too large Strip/Tile Offsets/ByteCounts arrays", a4, a5, a6, a7, a8, v18);
    return 0;
  }

  else
  {
    if (*(a1 + 170) == 2)
    {
      *(a1 + 224) = v10 / *(a1 + 130);
    }

    *(a1 + 232) = _TIFFCheckMalloc(a1, v10, 8, "for StripOffsets array", a5, a6, a7, a8);
    v16 = _TIFFCheckMalloc(a1, *(a1 + 228), 8, "for StripByteCounts array", v12, v13, v14, v15);
    result = 0;
    *(a1 + 240) = v16;
    if (*(a1 + 232))
    {
      if (v16)
      {
        _TIFFmemset(*(a1 + 232), 0, 8 * *(a1 + 228));
        _TIFFmemset(*(a1 + 240), 0, 8 * *(a1 + 228));
        *(a1 + 72) |= 0x3000000u;
        return 1;
      }
    }
  }

  return result;
}

uint64_t TIFFFlushData1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1160);
  if (v8 < 1)
  {
    return 1;
  }

  v10 = *(a1 + 16);
  if ((v10 & 0x100000) == 0)
  {
    return 1;
  }

  if ((v10 & (*(a1 + 126) | 0x100)) == 0)
  {
    TIFFReverseBits(*(a1 + 1120), v8);
    v10 = *(a1 + 16);
    v8 = *(a1 + 1160);
  }

  v12 = (v10 & 0x400) == 0;
  v13 = 932;
  if (v12)
  {
    v13 = 884;
  }

  result = TIFFAppendToStrip(a1, *(a1 + v13), *(a1 + 1120), v8, a5, a6, a7, a8);
  *(a1 + 1160) = 0;
  *(a1 + 1152) = *(a1 + 1120);
  return result;
}

void IIO_Reader_PSD::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

uint64_t IIO_Reader_PSD::initThumbnail(IIO_Reader *a1, uint64_t a2, int a3, int a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v7 = IIO_Reader::osType(a1);
  PSDReadPlugin::PSDReadPlugin(v10, a2, a3, 0, v7);
  IIOReadPlugin::setDecodeMode(v10, 2);
  IIOReadPlugin::setDestMaxPixelSize(v10, a4);
  inited = PSDReadPlugin::initThumbnail(v10);
  PSDReadPlugin::~PSDReadPlugin(v10);
  return inited;
}

void sub_185FFC688(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FFC668);
}

uint64_t CreateMD5FromIIMBlock(void *a1, CC_LONG a2, unsigned __int8 *a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_MD5_Init(&v7);
  CC_MD5_Update(&v7, a1, a2);
  return CC_MD5_Final(a3, &v7);
}

__CFString *CreateMD5StringFromIIMBlock(void *a1, CC_LONG a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *v5 = 0;
  v6 = 0;
  CreateMD5FromIIMBlock(a1, a2, v5);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 16);
  if (Mutable)
  {
    for (i = 0; i != 16; ++i)
    {
      CFStringAppendFormat(Mutable, 0, @"%02X", v5[i]);
    }
  }

  return Mutable;
}

uint64_t SizeOfIPTCData(IIODictionary *a1)
{
  context = 0;
  if (a1 && (v1 = *(a1 + 1)) != 0 && (CFDictionaryApplyFunction(v1, ApplierSizeOfIPTC, &context), context))
  {
    return context + 15;
  }

  else
  {
    return 0;
  }
}

void ApplierSizeOfIPTC(const __CFString *a1, const __CFString *cf, void *a3)
{
  if (a1 && cf && a3)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      for (i = &byte_1E6F08B48; CFStringCompare(a1, **(i - 2), 0); i += 24)
      {
        if (!*i)
        {
          return;
        }
      }

      SizeOfIPTCEntry(cf, a3);
    }

    else
    {
      v9 = CFGetTypeID(cf);
      if (v9 == CFArrayGetTypeID())
      {
        for (j = &byte_1E6F08B40; CFStringCompare(a1, **(j - 1), 0); j += 24)
        {
          if (!j[8])
          {
            return;
          }
        }

        if (*j == 1)
        {
          v16.length = CFArrayGetCount(cf);
          v16.location = 0;

          CFArrayApplyFunction(cf, v16, SizeOfIPTCEntry, a3);
        }
      }

      else
      {
        v12 = CFGetTypeID(cf);
        v13 = CFCopyTypeIDDescription(v12);
        memset(v18, 0, sizeof(v18));
        IIOString::IIOString(v18, a1);
        memset(v17, 0, sizeof(v17));
        IIOString::IIOString(v17, v13);
        v14 = IIOString::utf8String(v18);
        v15 = IIOString::utf8String(v17);
        _cg_jpeg_mem_term("ApplierSizeOfIPTC", 188, "*** ApplierSizeOfIPTC - skipping '%s' -- '%s'\n", v14, v15);
        CFRelease(v13);
        IIOString::~IIOString(v17);
        IIOString::~IIOString(v18);
      }
    }
  }
}

void sub_185FFCA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void WriteIPTCData(CFDictionaryRef *a1, unsigned __int8 *a2)
{
  if (a1)
  {
    if (a2)
    {
      *a2 = 0x47251B03005A011CLL;
      *(a2 + 2) = 540;
      *(a2 + 6) = 2;
      a2[14] = 2;
      v2[0] = 0;
      v2[1] = a2 + 15;
      CFDictionaryApplyFunction(a1[1], ApplierWriteIPTC, v2);
    }
  }
}

__n128 ApplierWriteIPTC(const __CFString *a1, const __CFString *cf, char *a3)
{
  if (!a1 || !cf)
  {
    return result;
  }

  v6 = CFGetTypeID(cf);
  if (CFStringGetTypeID() != v6)
  {
    if (CFArrayGetTypeID() == v6)
    {
      for (i = &byte_1E6F08B40; CFStringCompare(a1, **(i - 1), 0); i += 24)
      {
        if (!i[8])
        {
          return result;
        }
      }
    }

    else
    {
      if (CFDictionaryGetTypeID() != v6)
      {
        if (v6 != CFNumberGetTypeID())
        {

          return _cg_jpeg_mem_term("ApplierWriteIPTC", 289, "*** ApplierWriteIPTC - does not handle non-strings / non-arrays\n");
        }

        return result;
      }

      for (i = &byte_1E6F08B40; CFStringCompare(a1, **(i - 1), 0); i += 24)
      {
        if (!i[8])
        {
          return result;
        }
      }
    }

    if (*i == 1)
    {
      *a3 = *(i - 16);
      v13.length = CFArrayGetCount(cf);
      v13.location = 0;

      CFArrayApplyFunction(cf, v13, WriteIPTCEntry, a3);
    }

    return result;
  }

  for (j = &iptcInfo; CFStringCompare(a1, **(j + 1), 0); j += 24)
  {
    if (!j[24])
    {
      return result;
    }
  }

  *a3 = *j;

  WriteIPTCEntry(cf, a3);
  return result;
}

void ReadIPTCProps(IIODictionary *a1, _BYTE *a2, unint64_t a3)
{
  v3 = a3;
  if (a3 >= 6)
  {
    v5 = 0;
    v6 = 0;
    alloc = *MEMORY[0x1E695E480];
    v7 = 5;
    do
    {
      v8 = &a2[v5];
      if (a2[v5] != 28)
      {
        break;
      }

      v9 = v8[1];
      if ((v9 - 1) > 1)
      {
        break;
      }

      v10 = v8[2];
      v11 = __rev16(*(v8 + 3));
      v12 = v11 + v7 <= v3 ? v11 : v3 - v7;
      if (v9 == 1 && (v10 == 90 ? (v13 = v12 == 3) : (v13 = 0), v13))
      {
        if (a2[v7] != 27)
        {
          goto LABEL_44;
        }

        v14 = v8[6];
        if (v14 == 47)
        {
          v15 = v8[7] == 65;
          v16 = 513;
        }

        else
        {
          if (v14 != 37)
          {
            goto LABEL_44;
          }

          v15 = v8[7] == 71;
          v16 = 134217984;
        }

        if (v15)
        {
          v6 = v16;
        }
      }

      else
      {
        if (v9 == 1)
        {
          goto LABEL_44;
        }

        if (v10 != 25 || v12 != 6 || v5 + 12 > 6 || (v17 = a2[v7], v17 < 0x35) || ((v18 = *(v8 + 6), v19 = *(v8 + 5), v18 == 1635013408) ? (v20 = v19 == 114) : (v20 = 0), !v20))
        {
          v21 = 3;
          v22 = &byte_1E6F08B40;
          while (1)
          {
            if (v21 == v10)
            {
              v23 = strnlen(&a2[v7], v12);
              if (v12 >= v23)
              {
                v24 = v23;
              }

              else
              {
                v24 = v12;
              }

              v25 = CFStringCreateWithBytes(alloc, &a2[v7], v24, v6, 1u);
              if (!v25)
              {
LABEL_40:
                v3 = a3;
                goto LABEL_44;
              }

              v26 = v25;
              v27 = *(v22 - 1);
              if (*v22 == 1)
              {
                ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(a1, *v27, @"{IPTC}");
                if (!ObjectForKeyGroup)
                {
                  ObjectForKeyGroup = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
                  IIODictionary::setObjectForKeyGroup(a1, ObjectForKeyGroup, *v27, @"{IPTC}");
                  CFRelease(ObjectForKeyGroup);
                }

                memset(v34, 0, sizeof(v34));
                IIOArray::IIOArray(v34, ObjectForKeyGroup);
                IIOArray::addObject(v34, v26);
                IIOArray::~IIOArray(v34);
              }

              else
              {
                IIODictionary::setObjectForKeyGroup(a1, v25, *v27, @"{IPTC}");
              }

              CFRelease(v26);
            }

            v21 = v22[8];
            v22 += 24;
            if (!v21)
            {
              goto LABEL_40;
            }
          }
        }

        IIONumber::IIONumber(v34, v17 - 48);
        IIODictionary::setObjectForKeyGroup(a1, v34, @"StarRating", @"{IPTC}");
        IIONumber::~IIONumber(v34);
      }

LABEL_44:
      v5 = v12 + v7;
      v7 += v12 + 5;
    }

    while (v7 < v3);
  }

  MD5StringFromIIMBlock = CreateMD5StringFromIIMBlock(a2, v3);
  if (MD5StringFromIIMBlock)
  {
    v30 = MD5StringFromIIMBlock;
    IIODictionary::setObjectForKeyGroup(a1, MD5StringFromIIMBlock, @"iptcComputedMD5", @"{IPTC}");
    CFRelease(v30);
  }
}

void sub_185FFCF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

CGImageMetadata *CreateMetadataFromIPTCDatabuffer(_BYTE *a1, unint64_t a2)
{
  memset(v7, 0, sizeof(v7));
  IIODictionary::IIODictionary(v7);
  ReadIPTCProps(v7, a1, a2);
  v4 = CGImageMetadataCreateFromLegacyProps(v7);
  v5 = v4;
  if (v4)
  {
    CGImageMetadataSetValueWithPath(v4, 0, @"iio:hasIIM", *MEMORY[0x1E695E4D0]);
  }

  IIODictionary::~IIODictionary(v7);
  return v5;
}

void sub_185FFD004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImagePluginReadRawIPTCProps(__CFDictionary *a1, _BYTE *a2, unint64_t a3)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImagePluginReadRawIPTCProps", 0, 0, -1, 0);
  }

  memset(v6, 0, sizeof(v6));
  IIODictionary::IIODictionary(v6, a1);
  ReadIPTCProps(v6, a2, a3);
  IIODictionary::~IIODictionary(v6);
}

void sub_185FFD0C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

char *CreateIPTCDataFromProperties(char a1, IIODictionary *a2, unint64_t *a3)
{
  if (a2)
  {
    v6 = SizeOfIPTCData(a2);
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0;
  }

  if (a1)
  {
    return 0;
  }

LABEL_7:
  v8 = v6 + (v6 & 1);
  v9 = malloc_type_calloc(v8 + 54, 1uLL, 0x100004077774924uLL);
  v7 = v9;
  if (v9)
  {
    *(v9 + 4) = 67390793;
    *v9 = *"Photoshop 3.0";
    *(v9 + 12) = bswap32(v6) >> 16;
    WriteIPTCData(a2, v9 + 26);
    IIMHashArrayForIIMBlock = CreateIIMHashArrayForIIMBlock(v7 + 26, v6);
    v11 = &v7[v8 + 26];
    if (IIMHashArrayForIIMBlock)
    {
      CreateIPTCDataFromProperties(v11, IIMHashArrayForIIMBlock);
      if (!a3)
      {
        return v7;
      }

      goto LABEL_11;
    }

    *(v11 + 20) = 0;
    *(v11 + 12) = 0;
  }

  if (a3)
  {
LABEL_11:
    *a3 = v8 + 54;
  }

  return v7;
}

uint64_t SizeOfIPTCEntry(const __CFString *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  result = CFStringGetTypeID();
  if (v4 == result)
  {
    v7.length = CFStringGetLength(a1);
    usedBufLen = 0;
    v7.location = 0;
    result = CFStringGetBytes(a1, v7, 0x8000100u, 0x3Fu, 0, 0, 0, &usedBufLen);
    if (usedBufLen)
    {
      *a2 += usedBufLen + 5;
    }
  }

  return result;
}

uint64_t WriteIPTCEntry(const __CFString *a1, _BYTE **a2)
{
  v4 = CFGetTypeID(a1);
  result = CFStringGetTypeID();
  if (v4 == result)
  {
    Length = CFStringGetLength(a1);
    usedBufLen = 0;
    v8.location = 0;
    v8.length = Length;
    result = CFStringGetBytes(a1, v8, 0x8000100u, 0x3Fu, 0, 0, 0, &usedBufLen);
    if (usedBufLen)
    {
      *a2[1] = 28;
      a2[1][1] = 2;
      a2[1][2] = *a2;
      a2[1][3] = BYTE1(usedBufLen);
      a2[1][4] = usedBufLen;
      v9.location = 0;
      v9.length = Length;
      result = CFStringGetBytes(a1, v9, 0x8000100u, 0x3Fu, 0, a2[1] + 5, 0xFFFFLL, 0);
      a2[1] += usedBufLen + 5;
    }
  }

  return result;
}

uint64_t RGBE_ReadHeader(FILE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
    *(a4 + 4) = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *(a4 + 20) = _D0;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *v26 = 0u;
  v27 = 0u;
  v25 = 0;
  if (!fgets(v26, 128, a1))
  {
    goto LABEL_51;
  }

  if (!a4 || v26[0] != 35 || v26[1] != 63)
  {
    goto LABEL_15;
  }

  v12 = 0;
  *a4 |= 1u;
  v13 = a4 + 4;
  v14 = MEMORY[0x1E69E9830];
  do
  {
    v15 = v26[v12 + 2];
    if (!v26[v12 + 2])
    {
      break;
    }

    if ((v15 & 0x80000000) != 0)
    {
      if (__maskrune(v26[v12 + 2], 0x4000uLL))
      {
        break;
      }
    }

    else if ((*(v14 + 4 * v15 + 60) & 0x4000) != 0)
    {
      break;
    }

    *(v13 + v12++) = v15;
  }

  while (v12 != 15);
  *(v13 + v12) = 0;
  if (!fgets(v26, 128, a1))
  {
    goto LABEL_51;
  }

  while (1)
  {
LABEL_15:
    if (v26[0] == 10 || v26[0] == 0)
    {
      v21 = *MEMORY[0x1E69E9848];
      v22 = "no FORMAT specifier found";
LABEL_39:
      fprintf(v21, "RGBE bad file format: %s\n", v22);
      return 0xFFFFFFFFLL;
    }

    if (*v26 == 0x333D54414D524F46 && *&v26[8] == 0x6C725F7469622D32 && v27 == 0xA656267725F65)
    {
      v23 = 8;
      goto LABEL_42;
    }

    if (*v26 == 0x663D54414D524F46 && *&v26[6] == 0xA74616F6C663DLL)
    {
      break;
    }

    if (a4)
    {
      if (sscanf(v26, "GAMMA=%g", &v25) == 1)
      {
        *(a4 + 20) = v25;
        v20 = 2;
LABEL_35:
        *a4 |= v20;
        goto LABEL_36;
      }

      if (sscanf(v26, "EXPOSURE=%g", &v25) == 1)
      {
        *(a4 + 24) = v25;
        v20 = 4;
        goto LABEL_35;
      }
    }

LABEL_36:
    if (!fgets(v26, 128, a1))
    {
      goto LABEL_51;
    }
  }

  v23 = 16;
LABEL_42:
  *a4 |= v23;
  while (fgets(v26, 128, a1))
  {
    if (v26[0] == 10)
    {
      if (!fgets(v26, 128, a1))
      {
        break;
      }

      if (sscanf(v26, "-Y %d +X %d", a3, a2) <= 1 && sscanf(v26, "+X %d +Y %d", a2, a3) <= 1 && sscanf(v26, "+Y %d +X %d", a3, a2) <= 1)
      {
        v21 = *MEMORY[0x1E69E9848];
        v22 = "missing image size specifier";
        goto LABEL_39;
      }

      return 0;
    }
  }

LABEL_51:
  perror("RGBE read error");
  return 0xFFFFFFFFLL;
}

uint64_t RGBE_ReadPixels(FILE *__stream, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  v10 = v3;
  v11 = v4;
  __ptr = 0;
  v7 = a3 + 1;
  while (fread(&__ptr, 4uLL, 1uLL, __stream))
  {
    rgbe2float(a2, (a2 + 4), (a2 + 8), &__ptr);
    *(a2 + 12) = 1065353216;
    --v7;
    a2 += 16;
    if (v7 <= 1)
    {
      return 0;
    }
  }

  perror("RGBE read error");
  return 0xFFFFFFFFLL;
}

void rgbe2float(float *a1, float *a2, float *a3, _BYTE *a4)
{
  if (a4[3])
  {
    v8 = ldexp(1.0, a4[3] - 136);
    LOBYTE(v9) = *a4;
    *&v10 = v8 * v9;
    *a1 = *&v10;
    LOBYTE(v10) = a4[1];
    *&v11 = v8 * v10;
    *a2 = *&v11;
    LOBYTE(v11) = a4[2];
    *a3 = v8 * v11;
  }

  else
  {
    *a3 = 0.0;
    *a2 = 0.0;
    *a1 = 0.0;
  }
}

uint64_t RGBE_ReadPixels_RLE(FILE *__stream, uint64_t a2, unsigned int a3, int a4)
{
  v4 = a4;
  v6 = a2;
  v7 = __stream;
  if (a3 - 0x8000 < 0xFFFF8008)
  {
    v8 = a4 * a3;
    goto LABEL_3;
  }

  if (a4 < 1)
  {
    v10 = 0;
LABEL_41:
    free(v10);
    return 0;
  }

  v10 = 0;
  v11 = 4 * a3;
  __ptr = 0;
  v26 = 0;
  v25 = 2 * a3;
  v24 = 3 * a3;
  while (1)
  {
    if (!fread(&__ptr, 4uLL, 1uLL, v7))
    {
LABEL_42:
      free(v10);
      perror("RGBE read error");
      return 0xFFFFFFFFLL;
    }

    v12 = __ptr == 2 && BYTE1(__ptr) == 2;
    if (!v12 || SBYTE2(__ptr) < 0)
    {
      break;
    }

    if ((HIBYTE(__ptr) | (SBYTE2(__ptr) << 8)) != a3)
    {
LABEL_38:
      free(v10);
      fprintf(*MEMORY[0x1E69E9848], "RGBE bad file format: %s\n");
      return 0xFFFFFFFFLL;
    }

    if (!v10)
    {
      v10 = malloc_type_malloc(v11, 0x100004077774924uLL);
      if (!v10)
      {
        fprintf(*MEMORY[0x1E69E9848], "RGBE error: %s\n");
        return 0xFFFFFFFFLL;
      }
    }

    v23 = v11;
    v13 = 0;
    v14 = v10;
    do
    {
      v15 = &v10[++v13 * a3];
      while (v14 < v15)
      {
        if (!fread(&v26, 2uLL, 1uLL, v7))
        {
          goto LABEL_42;
        }

        v16 = v26;
        v17 = v15 - v14;
        if (v26 < 0x81u)
        {
          if (!v26 || v17 < v26)
          {
            goto LABEL_38;
          }

          *v14++ = HIBYTE(v26);
          v20 = (v16 - 1);
          if (v16 != 1)
          {
            if (!fread(v14, (v16 - 1), 1uLL, v7))
            {
              goto LABEL_42;
            }

            v14 += v20;
          }
        }

        else
        {
          if (v17 < v26 - 128)
          {
            goto LABEL_38;
          }

          v18 = HIBYTE(v26);
          v19 = v26 - 127;
          do
          {
            *v14++ = v18;
            --v19;
          }

          while (v19 > 1);
        }
      }
    }

    while (v13 != 4);
    v21 = 0;
    do
    {
      LOBYTE(__ptr) = v10[v21];
      BYTE1(__ptr) = v10[a3 + v21];
      BYTE2(__ptr) = v10[v25 + v21];
      HIBYTE(__ptr) = v10[v24 + v21];
      rgbe2float(v6, (v6 + 4), (v6 + 8), &__ptr);
      *(v6 + 12) = 1065353216;
      v6 += 16;
      ++v21;
    }

    while (a3 != v21);
    v22 = __OFSUB__(v4--, 1);
    v11 = v23;
    if ((v4 < 0) ^ v22 | (v4 == 0))
    {
      goto LABEL_41;
    }
  }

  rgbe2float(v6, (v6 + 4), (v6 + 8), &__ptr);
  *(v6 + 12) = 1065353216;
  free(v10);
  v8 = v4 * a3 - 1;
  a2 = v6 + 16;
  __stream = v7;
LABEL_3:

  return RGBE_ReadPixels(__stream, a2, v8);
}

size_t ImageIOSIMD_GetVectorLevelName(unint64_t a1, char *__str, size_t __size)
{
  if (!__size)
  {
    return -1;
  }

  if (!a1)
  {
    return snprintf(__str, __size, "<scalar only>");
  }

  if (a1 > 0x20)
  {
    return snprintf(__str, __size, "<invalid value>");
  }

  v8 = 0;
  v7 = 0;
  while (1)
  {
    if (1 << v8 > a1)
    {
LABEL_22:
      v13 = __size - 1;
      if (v7 < __size - 1)
      {
        v13 = v7;
      }

      __str[v13] = 0;
      return v7;
    }

    if (((1 << v8) & a1) != 0)
    {
      break;
    }

    ++v8;
LABEL_21:
    if (v8 == 6)
    {
      goto LABEL_22;
    }
  }

  if (!v7)
  {
LABEL_16:
    v11 = snprintf(&__str[v7], __size - v7, "%s", ImageIOSIMD_GetVectorLevelName::kVectorLevelNames[++v8]);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    v12 = v11;
    if (v11 >= __size - v7)
    {
      v12 = __size - v7;
    }

    v7 += v12;
    goto LABEL_21;
  }

  v9 = snprintf(&__str[v7], __size - v7, " | ");
  if ((v9 & 0x80000000) == 0)
  {
    v10 = v9;
    if (v9 >= __size - v7)
    {
      v10 = __size - v7;
    }

    v7 += v10;
    goto LABEL_16;
  }

  v15 = __size - 1;
  if (v7 < __size - 1)
  {
    v15 = v7;
  }

  __str[v15] = 0;
  return v7;
}

uint64_t ImageIOSIMD_GetVectorLevel()
{
  if (ImageIOSIMD_GetVectorLevel::vectorPredicate != -1)
  {
    ImageIOSIMD_GetVectorLevel_cold_1();
  }

  return vectorLevel;
}

uint64_t ImageIOSIMD_GetHardwareVectorLevel()
{
  if (ImageIOSIMD_GetHardwareVectorLevel::hardwarePredicate != -1)
  {
    __ImageIOSIMD_GetVectorLevel_block_invoke_cold_1();
  }

  return ImageIOSIMD_GetHardwareVectorLevel::hardwareLevel;
}

void ImageIOSIMD_SetVectorLevel(uint64_t a1)
{
  if (ImageIOSIMD_GetVectorLevel::vectorPredicate != -1)
  {
    ImageIOSIMD_GetVectorLevel_cold_1();
  }

  if (vectorLevel != a1)
  {
    if (ImageIOSIMD_GetHardwareVectorLevel::hardwarePredicate != -1)
    {
      __ImageIOSIMD_GetVectorLevel_block_invoke_cold_1();
    }

    vectorLevel = ImageIOSIMD_GetHardwareVectorLevel::hardwareLevel & a1;
  }
}

void GlobalWebPInfo::clearFrameBuffer(GlobalWebPInfo *this)
{
  std::mutex::lock((this + 40));
  if (*this)
  {
    free(*this);
    *this = 0;
  }

  *(this + 36) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;

  std::mutex::unlock((this + 40));
}

void GlobalWebPInfo::setFrameBuffer(GlobalWebPInfo *this, unsigned __int8 *a2, size_t a3, int a4, int a5, int a6)
{
  std::mutex::lock((this + 40));
  if (a2 && a3 - 1073741825 > 0xFFFFFFFFBFFFFFFFLL)
  {
    if (*this)
    {
      free(*this);
      *this = 0;
    }

    *(this + 36) = 0;
    *(this + 6) = 0;
    *(this + 1) = a3;
    *(this + 2) = 0;
    v12 = malloc_type_malloc(a3, 0x100004077774924uLL);
    *this = v12;
    if (v12)
    {
      memcpy(v12, a2, a3);
      *(this + 4) = a4;
      *(this + 5) = a5;
      v13 = 1;
      *(this + 6) = a6;
    }

    else
    {
      v13 = 0;
      *(this + 1) = 0;
    }

    *(this + 36) = v13;
  }

  else
  {
    _cg_jpeg_mem_term("setFrameBuffer", 64, "*** ERROR: setFrameBuffer - bailing out\n");
  }

  std::mutex::unlock((this + 40));
}

BOOL GlobalWebPInfo::hasValidFrameBuffer(GlobalWebPInfo *this, int a2)
{
  std::mutex::lock((this + 40));
  v4 = *(this + 36) == 1 && *(this + 6) == a2;
  std::mutex::unlock((this + 40));
  return v4;
}

uint64_t WebPReadPlugin::WebPReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4D6058;
  *(result + 464) = 0;
  return result;
}

void WebPReadPlugin::~WebPReadPlugin(WebPReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t WebPReadPlugin::loadDataFromXPCObject(WebPReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_webp", &length);
    if (length == 2)
    {
      v6 = data;
      result = 0;
      *(this + 232) = *v6;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t WebPReadPlugin::saveDataToXPCObject(WebPReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_webp", this + 464, 2uLL);
  }

  return v4;
}

uint64_t WebPReadPlugin::handleChunks(uint64_t a1, uint64_t a2)
{
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v4 = IIOSkipMetadata(*(a1 + 48));
  v5 = IIOSkipXMP_and_IPTC(*(a1 + 48));
  v6 = WebPDemuxInternal(a2, 0, 0, 263);
  if (!v6)
  {
    return 4294967246;
  }

  v7 = v6;
  if (WebPDemuxGetChunk(v6, "ICCP", 1, &v36))
  {
    _cg_jpeg_mem_term("handleChunks", 232, "ICCP: %p [%ld]\n", *(&v36 + 1), v37);
    *(a1 + 160) = CGColorSpaceCreateWithCopyOfData(*(&v36 + 1), v37);
    _cg_jpeg_mem_term(&v36, v8, v9);
  }

  if (WebPDemuxGetChunk(v7, "EXIF", 1, &v36))
  {
    _cg_jpeg_mem_term("handleChunks", 241, "EXIF: %p [%ld]\n", *(&v36 + 1), v37);
    MetadataFromDatabuffer = CreateMetadataFromDatabuffer(*(&v36 + 1), v37);
    if (MetadataFromDatabuffer)
    {
      v13 = MetadataFromDatabuffer;
      if (v4)
      {
        TagWithPath = CGImageMetadataGetTagWithPath(MetadataFromDatabuffer, 0, @"tiff:Orientation");
        if (TagWithPath)
        {
          CGImageMetadataAddTag(*(a1 + 64), TagWithPath);
        }
      }

      else
      {
        CGImageMetadataMerge(*(a1 + 64), MetadataFromDatabuffer, *(a1 + 48));
      }

      CFRelease(v13);
    }

    _cg_jpeg_mem_term(&v36, v11, v12);
  }

  if (((v4 | v5) & 1) == 0 && WebPDemuxGetChunk(v7, "XMP ", 1, &v36))
  {
    MetadataFromXMPBuffer = CreateMetadataFromXMPBuffer(*(&v36 + 1), v37);
    if (MetadataFromXMPBuffer)
    {
      v18 = MetadataFromXMPBuffer;
      CGImageMetadataMerge(*(a1 + 64), MetadataFromXMPBuffer, *(a1 + 48));
      CFRelease(v18);
    }

    _cg_jpeg_mem_term(&v36, v16, v17);
  }

  if (*(a1 + 464) == 1)
  {
    *v34 = 0u;
    v35 = 0u;
    *v32 = 0u;
    v33 = 0u;
    *v31 = 0u;
    WebPDemuxGetFrame(v7, *(a1 + 224) + 1, v31);
    v19 = v32[2];
    if (v32[2] >= 11)
    {
      v20 = v32[2];
    }

    else
    {
      v20 = 100;
    }

    v21 = *(a1 + 56);
    IIONumber::IIONumber(v30, v20 / 1000.0);
    IIODictionary::setObjectForKeyGroup(v21, v30, @"DelayTime", @"{WebP}");
    IIONumber::~IIONumber(v30);
    v22 = *(a1 + 56);
    IIONumber::IIONumber(v30, v19 / 1000.0);
    IIODictionary::setObjectForKeyGroup(v22, v30, @"UnclampedDelayTime", @"{WebP}");
    IIONumber::~IIONumber(v30);
    if (*(a1 + 465) == 1)
    {
      v23 = *(a1 + 56);
      IIONumber::IIONumber(v30, v31[2]);
      IIODictionary::setObjectForKeyGroup(v23, v30, @"xOffset", @"{WebP}");
      IIONumber::~IIONumber(v30);
      v24 = *(a1 + 56);
      IIONumber::IIONumber(v30, v31[3]);
      IIODictionary::setObjectForKeyGroup(v24, v30, @"yOffset", @"{WebP}");
      IIONumber::~IIONumber(v30);
      v25 = *(a1 + 56);
      IIONumber::IIONumber(v30, v32[0]);
      IIODictionary::setObjectForKeyGroup(v25, v30, @"width", @"{WebP}");
      IIONumber::~IIONumber(v30);
      v26 = *(a1 + 56);
      IIONumber::IIONumber(v30, v32[1]);
      IIODictionary::setObjectForKeyGroup(v26, v30, @"height", @"{WebP}");
      IIONumber::~IIONumber(v30);
      v27 = *(a1 + 56);
      IIONumber::IIONumber(v30, v32[3]);
      IIODictionary::setObjectForKeyGroup(v27, v30, @"disposeOp", @"{WebP}");
      IIONumber::~IIONumber(v30);
      v28 = *(a1 + 56);
      IIONumber::IIONumber(v30, v34[3]);
      IIODictionary::setObjectForKeyGroup(v28, v30, @"blendOp", @"{WebP}");
      IIONumber::~IIONumber(v30);
    }
  }

  WebPDemuxDelete(v7);
  return 0;
}

void sub_185FFE56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t WebPReadPlugin::initialize(IIOImageReadSession **this, IIODictionary *a2)
{
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  if (!IIOImageReadSession::isFinal(this[3]))
  {
    goto LABEL_18;
  }

  v3 = this[6];
  if (v3)
  {
    LOBYTE(v3) = IIODictionary::getBoolForKey(v3, @"IIO_SKIP_WEBP_COMPOSING");
  }

  *(this + 465) = v3;
  v4 = IIOImageReadSession::retainBytePointer(this[3], &v21, 0);
  if (v4)
  {
    BytePtr = v4;
    v6 = 0;
  }

  else
  {
    v7 = IIOImageReadSession::copyData(this[3]);
    if (!v7)
    {
LABEL_18:
      v6 = 4294967246;
LABEL_29:
      kdebug_trace();
      return v6;
    }

    v6 = v7;
    BytePtr = CFDataGetBytePtr(v7);
  }

  v19 = BytePtr;
  Size = IIOImageReadSession::getSize(this[3]);
  v20 = Size;
  if (WebPGetFeaturesInternal(BytePtr, Size, v17, 521))
  {
    goto LABEL_16;
  }

  v9 = v17[0];
  v10 = DWORD1(v17[0]);
  if (SLODWORD(v17[0]) >= 0x4000 || SDWORD1(v17[0]) >= 0x4000)
  {
    _cg_jpeg_mem_term("initialize", 344, "*** ERROR: 'WebP' bad dimension: %d x %d\n");
    goto LABEL_16;
  }

  v11 = DWORD2(v17[0]);
  if (DWORD2(v17[0]))
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  if (80000 * Size < DWORD1(v17[0]) * LODWORD(v17[0]) * v12)
  {
    _cg_jpeg_mem_term("initialize", 350, "*** ERROR: fileSize: %ld   canvas: %d x %d --> malformed image? (factor: %g)\n");
LABEL_16:
    if (v6)
    {
      CFRelease(v6);
      goto LABEL_18;
    }

    v14 = 0;
    v6 = 4294967246;
    goto LABEL_25;
  }

  *(this + 464) = HIDWORD(v17[0]) != 0;
  if (v11)
  {
    v13 = 3;
  }

  else
  {
    v13 = 5;
  }

  *(this + 262) = v13;
  *(this + 61) = v9;
  *(this + 62) = v10;
  *(this + 130) = 4;
  *(this + 63) = 4 * v9;
  *(this + 64) = 2097160;
  *(this + 85) = 1380401696;
  this[20] = 0;
  *(this + 186) = 0;
  *(this + 374) = 0;
  WebPReadPlugin::handleChunks(this, &v19);
  v14 = 1;
  *(this + 204) = 1;
  if (v6)
  {
    CFRelease(v6);
    return 0;
  }

LABEL_25:
  if (BytePtr)
  {
    v15 = this[3];
    if (v15)
    {
      IIOImageReadSession::releaseBytePointer(v15, v21);
    }
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_29;
  }

  return v6;
}

uint64_t WebPReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
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

GlobalWebPInfo *releaseGlobalWebPInfo(GlobalWebPInfo *result)
{
  if (result)
  {
    GlobalWebPInfo::~GlobalWebPInfo(result);

    JUMPOUT(0x186602850);
  }

  return result;
}

uint64_t WebPReadPlugin::decodeWebP(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  if (*(a1 + 262))
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = *(a1 + 316);
    if (*(a1 + 437))
    {
      WebPDecodeRGBAInto(v6, v7, a3, a4, v8);
    }

    else
    {
      WebPDecodeBGRAInto(v6, v7, a3, a4, v8);
    }

    if (*(a1 + 438) == 1)
    {
      v9 = *(a1 + 312);
      v12.data = a3;
      v12.height = v9;
      v10 = *(a1 + 316);
      v12.width = *(a1 + 308);
      v12.rowBytes = v10;
      vImagePremultiplyData_RGBA8888(&v12, &v12, 0x10u);
    }
  }

  else
  {
    WebPDecodeRGBInto(*a2, a2[1], a3, a4, *(a1 + 316));
  }

  return 0;
}

uint64_t WebPReadPlugin::decodeImageData(IIOImageReadSession **this, unsigned __int8 *a2, size_t a3)
{
  v13 = 0;
  v6 = IIOImageReadSession::retainBytePointer(this[3], &v13, 0);
  if (v6)
  {
    BytePtr = v6;
    v8 = 0;
  }

  else
  {
    v9 = IIOImageReadSession::copyData(this[3]);
    if (!v9)
    {
      return 0;
    }

    v8 = v9;
    BytePtr = CFDataGetBytePtr(v9);
  }

  v14[0] = BytePtr;
  v14[1] = IIOImageReadSession::getSize(this[3]);
  if (*(this + 464) == 1)
  {
    v10 = WebPReadPlugin::decodeAnimatedWebPOptimized(this, v14, a2, a3);
    if (v10)
    {
      WebPReadPlugin::decodeImageData();
    }
  }

  else
  {
    WebPReadPlugin::decodeWebP(this, v14, a2, a3);
    v10 = 0;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  else if (BytePtr)
  {
    v11 = this[3];
    if (v11)
    {
      IIOImageReadSession::releaseBytePointer(v11, v13);
    }
  }

  return v10;
}

void BCWritePlugin::BCWritePlugin(BCWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3, char a4)
{
  IIOWritePlugin::IIOWritePlugin(this, a2, a3, 1111695392);
  *v5 = &unk_1EF4D61A0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 57) = a4;
  *(v5 + 64) = 0;
}

void BCWritePlugin::BCWritePlugin(IIOWritePlugin *a1, IIOImageWriteSession *a2, IIOImageDestination *a3, uint64_t a4)
{
  IIOWritePlugin::IIOWritePlugin(a1, a2, a3, 1111695392);
  *v5 = &unk_1EF4D61A0;
  *(v5 + 48) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = a4;
}

void BCWritePlugin::~BCWritePlugin(BCWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

const __CFDictionary *BCWritePlugin::handleProperties(BCWritePlugin *this, IIODictionary *a2)
{
  *(this + 5) = 0;
  if (IIODictionary::containsKey(a2, @"kCGImagePropertyBCFormat"))
  {
    *(this + 12) = IIODictionary::getUint32ForKey(a2, @"kCGImagePropertyBCFormat");
  }

  if (IIODictionary::containsKey(a2, @"kCGImageDestinationLossyCompressionQuality"))
  {
    FloatForKey = IIODictionary::getFloatForKey(a2, @"kCGImageDestinationLossyCompressionQuality");
    v5 = 0.0;
    if (FloatForKey >= 0.0)
    {
      v5 = FloatForKey;
      if (FloatForKey > 1.0)
      {
        v5 = 1.0;
      }
    }

    v6 = (1.0 - v5) * 0.0032;
    *(this + 13) = v6;
  }

  else
  {
    *(this + 13) = 978433815;
  }

  result = IIODictionary::containsKey(a2, @"kCGImagePropertyBCWeightChannelsEqually");
  if (result)
  {
    result = IIODictionary::getUint32ForKey(a2, @"kCGImagePropertyBCWeightChannelsEqually");
    if (result)
    {
      *(this + 5) |= 0x40uLL;
    }
  }

  return result;
}

uint64_t BCWritePlugin::writeOne(IIOImageWriteSession **this, IIOImagePixelDataProvider *a2, IIODictionary *a3, IIODictionary *a4)
{
  BCWritePlugin::handleProperties(this, a3);
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(a2);
  BitmapInfo = IIOImagePixelDataProvider::getBitmapInfo(a2);
  IIOImageSource::imageReadRef(a2);
  CGImageGetImageProvider();
  v8 = *MEMORY[0x1E695E4D0];
  Property = CGImageProviderGetProperty();
  if (v8 == Property && (v11 = CGImageProviderGetProperty()) != 0)
  {
    IIONumber::IIONumber(&src, v11);
    v12 = IIONumber::uint32Num(&src);
    IIONumber::~IIONumber(&src);
    v10 = v12;
  }

  else
  {
    v10 = 4;
  }

  v49 = Property;
  if (AlphaInfo >= 7)
  {
    _cg_jpeg_mem_term("writeOne", 202, "### alpha not handled: %X\n", AlphaInfo);
    v13 = at_alpha_opaque;
  }

  else
  {
    v13 = dword_18620A158[AlphaInfo];
  }

  SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(a2);
  Model = CGColorSpaceGetModel(SourceGeomColorSpace);
  Error = _cg_GifLastError(a2);
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

    goto LABEL_20;
  }

  if (Model)
  {
    v17 = at_texel_format_invalid;
LABEL_20:
    v53 = 1;
    goto LABEL_21;
  }

  if (Error == 16)
  {
    v53 = 0;
    if (AlphaInfo)
    {
      v17 = at_texel_format_la16_unorm;
    }

    else
    {
      v17 = at_texel_format_l16_unorm;
    }
  }

  else
  {
    v53 = 0;
    if (AlphaInfo)
    {
      v17 = at_texel_format_la8_unorm;
    }

    else
    {
      v17 = at_texel_format_l8_unorm;
    }
  }

LABEL_21:
  v19 = *(this + 12);
  v50 = v8;
  if (v19 <= 36282)
  {
    v20 = at_block_format_bc1;
    if (v19 > 33778)
    {
      if (v19 <= 35917)
      {
        if ((v19 - 35916) < 2)
        {
          goto LABEL_56;
        }

        v21 = 33779;
LABEL_46:
        if (v19 == v21)
        {
          v20 = at_block_format_bc3;
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      if (v19 != 35918)
      {
        v21 = 35919;
        goto LABEL_46;
      }

LABEL_48:
      v20 = at_block_format_bc2;
      goto LABEL_56;
    }

    if ((v19 - 33776) < 2)
    {
      goto LABEL_56;
    }

    if (v19)
    {
      if (v19 != 33778)
      {
LABEL_55:
        v20 = at_block_format_invalid;
        goto LABEL_56;
      }

      goto LABEL_48;
    }

    if (v17 - 1 <= 3)
    {
      v20 = qword_18620A178[v17 - 1];
      goto LABEL_56;
    }

LABEL_53:
    v20 = at_block_format_bc7;
    goto LABEL_56;
  }

  if (v19 > 36491)
  {
    if ((v19 - 36492) >= 2)
    {
      if (v19 == 36494)
      {
        v20 = at_block_format_bc6;
        goto LABEL_56;
      }

      if (v19 == 36495)
      {
        v20 = at_block_format_bc6u;
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (v19 > 36284)
  {
    if (v19 == 36285)
    {
      v20 = at_block_format_bc5;
      goto LABEL_56;
    }

    if (v19 == 36286)
    {
      v20 = at_block_format_bc5s;
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v19 == 36283)
  {
    v20 = at_block_format_bc4;
  }

  else
  {
    v20 = at_block_format_bc4s;
  }

LABEL_56:
  v22 = IIOImageSource::count(a2);
  v23 = IIO_Reader::testHeaderSize(a2);
  if (*(this + 57) == 1)
  {
    if (v53)
    {
      if (IIO_CGColorSpaceNameMatchesName(SourceGeomColorSpace, *MEMORY[0x1E695F0B8]))
      {
        v24 = 3;
      }

      else if (IIO_CGColorSpaceNameMatchesName(SourceGeomColorSpace, *MEMORY[0x1E695F0A0]))
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = *(this + 12);
    if (!v25)
    {
      if (v20 - 33 > 9)
      {
        v25 = 0;
      }

      else
      {
        v25 = dword_18620A198[v20 - 33];
      }

      *(this + 12) = v25;
    }

    KTXWritePlugin::writeKTXHeader(this[2], v22, v23, 0, v24, AlphaInfo, 0, 1, 0, v25, 0, 1);
  }

  v26 = at_encoder_create(v17, v13, v20, v13, 0);
  v27 = v26;
  if (!v26)
  {
    v34 = 0;
    v42 = 0;
    goto LABEL_81;
  }

  v54 = this;
  is_compression_monolithic = at_encoder_is_compression_monolithic(v26, at_flags_default);
  v52 = a2;
  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(a2);
  v30 = BytesPerRow;
  *&src.validSize.z = 0;
  v31 = v23;
  if (v50 == v49)
  {
    v31 = v23;
    if (!is_compression_monolithic)
    {
      do
      {
        v31 = v10;
        v32 = v10 * v22;
        v10 *= 2;
      }

      while ((v32 & 0xF) != 0);
    }
  }

  v33 = v31 * BytesPerRow;
  v34 = malloc_type_malloc(v31 * BytesPerRow, 0x100004077774924uLL);
  src.texels = 0;
  *&src.validSize.x = __PAIR64__(v23, v22);
  src.validSize.z = 1;
  src.rowBytes = v30;
  src.sliceBytes = 0;
  *&v58.x = __PAIR64__(v23, v22);
  v58.z = 1;
  block_counts = at_encoder_get_block_counts(v27, v58);
  v36 = block_counts;
  v37 = HIDWORD(block_counts);
  block_size = at_encoder_get_block_size(v27);
  v39 = v36 * block_size;
  v40 = v37 * v36 * block_size;
  dest.rowBytes = v39;
  dest.sliceBytes = v40;
  v41 = malloc_type_calloc(v40, 1uLL, 0x100004077774924uLL);
  v42 = v41;
  if (v40)
  {
    v43 = v41 == 0;
  }

  else
  {
    v43 = 1;
  }

  if (v43)
  {
    LogError("writeOne", 359, "*** could not allocate dest buffer [%d bytes]\n", v40);
    goto LABEL_81;
  }

  v51 = v40;
  dest.blocks = v41;
  if (!v23)
  {
LABEL_95:
    v48 = v54[8];
    if (v48)
    {
      if ((*(*(v48 + 1) + 24))() != v51 || (*(*(v54[8] + 1) + 64))())
      {
        goto LABEL_104;
      }
    }

    else if (*(v54 + 57))
    {
      __ptr = v51;
      if (IIOImageWriteSession::putBytes(v54[2], &__ptr, 4uLL) != 4)
      {
        goto LABEL_104;
      }

      IIOImageWriteSession::putBytes(v54[2], v42, v51);
    }

LABEL_81:
    v44 = 0;
    if (!v27)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  v46 = 0;
  v47 = v54[5];
  while (1)
  {
    if (v31 + v46 > v23)
    {
      v31 = v23 - v46;
      v33 = v30 * v31;
    }

    src.validSize.y = v31;
    src.texels = v34;
    if (IIOImagePixelDataProvider::getBytes(v52, v34) != v33)
    {
      LogError("writeOne", 384, "failed to read %ld bytes\n");
      goto LABEL_104;
    }

    dest.blocks = &v42[dest.rowBytes * (v46 >> 2)];
    if (at_encoder_compress_texels(v27, &src, &dest, *(v54 + 13), v47) < 0.0)
    {
      break;
    }

    v46 += v31;
    if (v46 >= v23)
    {
      goto LABEL_95;
    }
  }

  LogError("writeOne", 394, "*** ERROR: at_encoder_compress_texels: %g (%ld)\n");
LABEL_104:
  v44 = 4294967246;
  if (v27)
  {
LABEL_82:
    CFRelease(v27);
  }

LABEL_83:
  if (v42)
  {
    free(v42);
  }

  if (v34)
  {
    free(v34);
  }

  return v44;
}

void sub_185FFF284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t BCWritePlugin::GetVkFormat(uint64_t this, IIODictionary *a2)
{
  if (this)
  {
    v2 = this;
    this = IIODictionary::containsKey(this, @"kCGImagePropertyBCFormat");
    if (this)
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(v2, @"kCGImagePropertyBCFormat");
      if (Uint32ForKey > 36282)
      {
        if (Uint32ForKey > 36491)
        {
          if (Uint32ForKey > 36493)
          {
            if (Uint32ForKey == 36494)
            {
              return 144;
            }

            if (Uint32ForKey == 36495)
            {
              return 143;
            }

            return 0;
          }

          if (Uint32ForKey == 36492)
          {
            return 145;
          }

          else
          {
            return 146;
          }
        }

        else
        {
          if (Uint32ForKey > 36284)
          {
            if (Uint32ForKey == 36285)
            {
              return 141;
            }

            if (Uint32ForKey == 36286)
            {
              return 142;
            }

            return 0;
          }

          if (Uint32ForKey == 36283)
          {
            return 139;
          }

          else
          {
            return 140;
          }
        }
      }

      else
      {
        if (Uint32ForKey <= 35915)
        {
          if (Uint32ForKey > 33777)
          {
            if (Uint32ForKey == 33778)
            {
              return 135;
            }

            if (Uint32ForKey == 33779)
            {
              return 137;
            }
          }

          else
          {
            if (Uint32ForKey == 33776)
            {
              return 131;
            }

            if (Uint32ForKey == 33777)
            {
              return 133;
            }
          }

          return 0;
        }

        if (Uint32ForKey > 35917)
        {
          if (Uint32ForKey == 35918)
          {
            return 136;
          }

          if (Uint32ForKey == 35919)
          {
            return 138;
          }

          return 0;
        }

        if (Uint32ForKey == 35916)
        {
          return 132;
        }

        else
        {
          return 134;
        }
      }
    }
  }

  return this;
}

void IIO_Writer_BC::~IIO_Writer_BC(IIO_Writer_BC *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_BC::write(IIO_Writer_BC *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_BC::write", 0, 0, -1, 0);
  }

  v11 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  IIOWritePlugin::IIOWritePlugin(v9, a2, a3, 1111695392);
  v11 = 0;
  *&v9[0] = &unk_1EF4D61A0;
  *&v10 = 0;
  WORD4(v10) = 0;
  v5 = IIOWritePlugin::writeAll(v9);
  _cg_jpeg_mem_term(v9, v6, v7);
  return v5;
}

void sub_185FFF590(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _cg_jpeg_mem_term(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FFF578);
}

uint64_t TIFFPredictorInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  if (!v8)
  {
    TIFFPredictorInit_cold_1();
  }

  v10 = 1;
  if (_TIFFMergeFields(a1, predictFields, 1, a4, a5, a6, a7, a8))
  {
    v16 = *(a1 + 1280);
    *(a1 + 1288) = PredictorVGetField;
    *(v8 + 88) = vextq_s8(v16, v16, 8uLL);
    *(a1 + 1280) = PredictorVSetField;
    *(v8 + 104) = *(a1 + 1296);
    *(a1 + 1296) = PredictorPrintDir;
    *(v8 + 112) = *(a1 + 960);
    *(a1 + 960) = PredictorSetupDecode;
    *(v8 + 120) = *(a1 + 976);
    *(a1 + 976) = PredictorSetupEncode;
    *v8 = 1;
    *(v8 + 48) = 0;
    *(v8 + 80) = 0;
  }

  else
  {
    TIFFErrorExtR(a1, "TIFFPredictorInit", "Merging Predictor codec-specific tags failed", v11, v12, v13, v14, v15, v18);
    return 0;
  }

  return v10;
}

uint64_t PredictorVGetField(uint64_t a1, int a2, _WORD **a3)
{
  v3 = *(a1 + 1096);
  if (!v3 || !*(v3 + 96))
  {
    return 0;
  }

  if (a2 != 317)
  {
    return (*(v3 + 88))();
  }

  **a3 = *v3;
  return 1;
}

uint64_t PredictorVSetField(uint64_t a1, int a2, unsigned __int16 *a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 96);
  if (!v4)
  {
    return 0;
  }

  if (a2 != 317)
  {
    return v4();
  }

  *v3 = *a3;
  *(a1 + 80) |= 4u;
  *(a1 + 16) |= 8u;
  return 1;
}

uint64_t PredictorPrintDir(uint64_t result, FILE *__stream, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 1096);
  if ((*(result + 80) & 4) != 0)
  {
    fwrite("  Predictor: ", 0xDuLL, 1uLL, __stream);
    v7 = *v6;
    if (*v6 == 3)
    {
      v8 = "floating point predictor ";
      v9 = 25;
    }

    else if (v7 == 2)
    {
      v8 = "horizontal differencing ";
      v9 = 24;
    }

    else
    {
      if (v7 != 1)
      {
LABEL_9:
        result = fprintf(__stream, "%d (0x%x)\n", *v6, *v6);
        goto LABEL_10;
      }

      v8 = "none ";
      v9 = 5;
    }

    fwrite(v8, v9, 1uLL, __stream);
    goto LABEL_9;
  }

LABEL_10:
  v10 = *(v6 + 13);
  if (v10)
  {

    return v10(v5, __stream, a3);
  }

  return result;
}

uint64_t PredictorSetupDecode(uint64_t a1)
{
  v2 = *(a1 + 1096);
  result = (*(v2 + 112))();
  if (result)
  {
    result = PredictorSetup(a1, v4, v5, v6, v7, v8, v9, v10);
    if (result)
    {
      if (*v2 == 3)
      {
        *(v2 + 80) = fpAcc;
        v16 = *(a1 + 1008);
        if (v16 != PredictorDecodeRow)
        {
          *(v2 + 56) = v16;
          *(a1 + 1008) = PredictorDecodeRow;
          *(v2 + 64) = *(a1 + 1024);
          *(a1 + 1024) = PredictorDecodeTile;
          *(v2 + 72) = *(a1 + 1040);
          *(a1 + 1040) = PredictorDecodeTile;
        }

        if ((*(a1 + 16) & 0x80) == 0)
        {
          return 1;
        }
      }

      else
      {
        if (*v2 != 2)
        {
          return 1;
        }

        HIDWORD(v12) = *(a1 + 116) - 8;
        LODWORD(v12) = HIDWORD(v12);
        v11 = v12 >> 3;
        if (v11 <= 7 && ((0x8Bu >> v11) & 1) != 0)
        {
          *(v2 + 80) = off_1EF4D6260[v11];
        }

        v13 = *(a1 + 1008);
        if (v13 != PredictorDecodeRow)
        {
          *(v2 + 56) = v13;
          *(a1 + 1008) = PredictorDecodeRow;
          *(v2 + 64) = *(a1 + 1024);
          *(a1 + 1024) = PredictorDecodeTile;
          *(v2 + 72) = *(a1 + 1040);
          *(a1 + 1040) = PredictorDecodeTile;
        }

        if ((*(a1 + 16) & 0x80) == 0)
        {
          return 1;
        }

        v14 = *(v2 + 80);
        v15 = swabHorAcc16;
        if (v14 != horAcc16)
        {
          v15 = swabHorAcc32;
          if (v14 != horAcc32)
          {
            v15 = swabHorAcc64;
            if (v14 != horAcc64)
            {
              return 1;
            }
          }
        }

        *(v2 + 80) = v15;
      }

      *(a1 + 1248) = _TIFFNoPostDecode;
      return 1;
    }
  }

  return result;
}

uint64_t PredictorSetupEncode(uint64_t a1)
{
  v2 = *(a1 + 1096);
  result = (*(v2 + 120))();
  if (result)
  {
    result = PredictorSetup(a1, v4, v5, v6, v7, v8, v9, v10);
    if (result)
    {
      if (*v2 == 3)
      {
        *(v2 + 48) = fpDiff;
        v16 = *(a1 + 1016);
        if (v16 != PredictorEncodeRow)
        {
          *(v2 + 24) = v16;
          *(a1 + 1016) = PredictorEncodeRow;
          *(v2 + 32) = *(a1 + 1032);
          *(a1 + 1032) = PredictorEncodeTile;
          *(v2 + 40) = *(a1 + 1048);
          *(a1 + 1048) = PredictorEncodeTile;
        }

        return 1;
      }

      if (*v2 == 2)
      {
        HIDWORD(v12) = *(a1 + 116) - 8;
        LODWORD(v12) = HIDWORD(v12);
        v11 = v12 >> 3;
        if (v11 <= 7 && ((0x8Bu >> v11) & 1) != 0)
        {
          *(v2 + 48) = off_1EF4D62A0[v11];
        }

        v13 = *(a1 + 1016);
        if (v13 != PredictorEncodeRow)
        {
          *(v2 + 24) = v13;
          *(a1 + 1016) = PredictorEncodeRow;
          *(v2 + 32) = *(a1 + 1032);
          *(a1 + 1032) = PredictorEncodeTile;
          *(v2 + 40) = *(a1 + 1048);
          *(a1 + 1048) = PredictorEncodeTile;
        }

        if ((*(a1 + 16) & 0x80) != 0)
        {
          v14 = *(v2 + 48);
          if (v14 == horDiff16)
          {
            v15 = swabHorDiff16;
            goto LABEL_19;
          }

          if (v14 == horDiff32)
          {
            v15 = swabHorDiff32;
            goto LABEL_19;
          }

          if (v14 == horDiff64)
          {
            v15 = swabHorDiff64;
LABEL_19:
            *(v2 + 48) = v15;
            *(a1 + 1248) = _TIFFNoPostDecode;
          }
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t TIFFPredictorCleanup(void *a1)
{
  v1 = a1[137];
  if (!v1)
  {
    TIFFPredictorCleanup_cold_1();
  }

  v2 = v1[12];
  a1[161] = v1[11];
  a1[160] = v2;
  v3 = v1[14];
  a1[162] = v1[13];
  a1[120] = v3;
  a1[122] = v1[15];
  return 1;
}

BOOL PredictorSetup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  v9 = *v8;
  if (v9 == 1)
  {
    return v9;
  }

  if (v9 == 3)
  {
    if (*(a1 + 118) == 3)
    {
      v12 = *(a1 + 116);
      if ((((v12 - 16) >> 3) | ((v12 - 16) << 13)) <= 6u && ((1 << ((v12 - 16) >> 3)) & 0x47) != 0)
      {
        goto LABEL_15;
      }

      TIFFErrorExtR(a1, "PredictorSetup", "Floating point Predictor not supported with %hu-bit samples", a4, a5, a6, a7, a8, *(a1 + 116));
    }

    else
    {
      TIFFErrorExtR(a1, "PredictorSetup", "Floating point Predictor not supported with %hu data format", a4, a5, a6, a7, a8, *(a1 + 118));
    }

    return 0;
  }

  if (v9 != 2)
  {
    TIFFErrorExtR(a1, "PredictorSetup", "Predictor value %d not supported", a4, a5, a6, a7, a8, *v8);
    return 0;
  }

  v10 = *(a1 + 116);
  if ((((v10 - 8) >> 3) | ((v10 - 8) << 13)) > 7u || ((1 << ((v10 - 8) >> 3)) & 0x8B) == 0)
  {
    TIFFErrorExtR(a1, "PredictorSetup", "Horizontal differencing Predictor not supported with %hu-bit samples", a4, a5, a6, a7, a8, *(a1 + 116));
    return 0;
  }

LABEL_15:
  if (*(a1 + 170) == 1)
  {
    v14 = *(a1 + 130);
  }

  else
  {
    v14 = 1;
  }

  *(v8 + 1) = v14;
  if ((*(a1 + 17) & 4) != 0)
  {
    v15 = _cg_TIFFTileRowSize(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v15 = _cg_TIFFScanlineSize(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  *(v8 + 2) = v15;
  return v15 != 0;
}

uint64_t horAcc8(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8x8_t a9, uint8x8_t a10)
{
  v10 = *(*(a1 + 1096) + 8);
  if (a3 % v10)
  {
    TIFFErrorExtR(a1, "horAcc8", "%s", a4, a5, a6, a7, a8, "(cc%stride)!=0");
    return 0;
  }

  else
  {
    v12 = a3 - v10;
    if (a3 > v10)
    {
      if (v10 == 4)
      {
        if (a3 >= 5)
        {
          a9.i32[0] = *a2;
          v23 = vmovl_u16(*&vmovl_u8(a9));
          for (i = 4; i < a3; i += 4)
          {
            a10.i32[0] = *&a2[i];
            v23 = vaddw_u16(v23, *&vmovl_u8(a10));
            a10 = vuzp1_s8(vmovn_s32(v23), *v23.i8);
            *&a2[i] = a10.i32[0];
          }
        }
      }

      else if (v10 == 3)
      {
        if (a3 >= 4)
        {
          v13 = 0;
          v14 = a2[2];
          v15 = a2[1];
          v16 = *a2;
          do
          {
            v17 = &a2[v13];
            v16 += a2[v13 + 3];
            v17[3] = v16;
            v15 += a2[v13 + 4];
            v17[4] = v15;
            v14 += a2[v13 + 5];
            v17[5] = v14;
            v18 = v13 + 6;
            v13 += 3;
          }

          while (v18 < a3);
        }
      }

      else
      {
        do
        {
          if (v10)
          {
            if (v10 != 1)
            {
              if (v10 != 2)
              {
                if (v10 >= 5)
                {
                  v19 = v10 - 3;
                  do
                  {
                    a2[v10] += *a2;
                    ++a2;
                    --v19;
                  }

                  while (v19 > 1);
                }

                a2[v10] += *a2;
                v21 = a2[1];
                v20 = a2 + 1;
                v20[v10] += v21;
                a2 = v20 + 1;
              }

              a2[v10] += *a2;
              ++a2;
            }

            a2[v10] += *a2;
            ++a2;
          }

          v22 = v12 <= v10;
          v12 -= v10;
        }

        while (!v22);
      }
    }

    return 1;
  }
}

uint64_t horAcc16(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 1096) + 8);
  if (a3 % (2 * v8))
  {
    TIFFErrorExtR(a1, "horAcc16", "%s", a4, a5, a6, a7, a8, "cc%(2*stride))!=0");
    return 0;
  }

  v10 = a3 / 2 - v8;
  if (a3 / 2 > v8)
  {
    while (v8 <= 1)
    {
      if (v8)
      {
        if (v8 != 1)
        {
LABEL_11:
          if (v8 >= 5)
          {
            v11 = v8 - 3;
            do
            {
              a2[v8] += *a2;
              ++a2;
              --v11;
            }

            while (v11 > 1);
          }

          goto LABEL_14;
        }

LABEL_17:
        a2[v8] += *a2;
        ++a2;
      }

      v10 -= v8;
      if (v10 < 1)
      {
        return 1;
      }
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        if (v8 != 4)
        {
          goto LABEL_11;
        }

LABEL_14:
        a2[v8] += *a2;
        ++a2;
      }

      a2[v8] += *a2;
      ++a2;
    }

    a2[v8] += *a2;
    ++a2;
    goto LABEL_17;
  }

  return 1;
}

uint64_t horAcc32(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 1096) + 8);
  v9 = a3 + 3;
  if (a3 >= 0)
  {
    v9 = a3;
  }

  if (a3 % (4 * v8))
  {
    TIFFErrorExtR(a1, "horAcc32", "%s", a4, a5, a6, a7, a8, "cc%(4*stride))!=0");
    return 0;
  }

  v11 = v9 >> 2;
  v12 = v11 <= v8;
  v13 = v11 - v8;
  if (!v12)
  {
    while (v8 <= 1)
    {
      if (v8)
      {
        if (v8 != 1)
        {
LABEL_13:
          if (v8 >= 5)
          {
            v14 = v8 - 3;
            do
            {
              a2[v8] += *a2;
              ++a2;
              --v14;
            }

            while (v14 > 1);
          }

          goto LABEL_16;
        }

LABEL_19:
        a2[v8] += *a2;
        ++a2;
      }

      v13 -= v8;
      if (v13 < 1)
      {
        return 1;
      }
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        if (v8 != 4)
        {
          goto LABEL_13;
        }

LABEL_16:
        a2[v8] += *a2;
        ++a2;
      }

      a2[v8] += *a2;
      ++a2;
    }

    a2[v8] += *a2;
    ++a2;
    goto LABEL_19;
  }

  return 1;
}

uint64_t horAcc64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 1096) + 8);
  v9 = a3 + 7;
  if (a3 >= 0)
  {
    v9 = a3;
  }

  if (a3 % (8 * v8))
  {
    TIFFErrorExtR(a1, "horAcc64", "%s", a4, a5, a6, a7, a8, "cc%(8*stride))!=0");
    return 0;
  }

  v11 = v9 >> 3;
  v12 = v11 <= v8;
  v13 = v11 - v8;
  if (!v12)
  {
    while (v8 <= 1)
    {
      if (v8)
      {
        if (v8 != 1)
        {
LABEL_13:
          if (v8 >= 5)
          {
            v14 = v8 - 3;
            do
            {
              a2[v8] += *a2;
              ++a2;
              --v14;
            }

            while (v14 > 1);
          }

          goto LABEL_16;
        }

LABEL_19:
        a2[v8] += *a2;
        ++a2;
      }

      v13 -= v8;
      if (v13 < 1)
      {
        return 1;
      }
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        if (v8 != 4)
        {
          goto LABEL_13;
        }

LABEL_16:
        a2[v8] += *a2;
        ++a2;
      }

      a2[v8] += *a2;
      ++a2;
    }

    a2[v8] += *a2;
    ++a2;
    goto LABEL_19;
  }

  return 1;
}

uint64_t PredictorDecodeRow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    PredictorDecodeRow_cold_3();
  }

  v4 = *(v3 + 56);
  if (!v4)
  {
    PredictorDecodeRow_cold_2();
  }

  if (!*(v3 + 80))
  {
    PredictorDecodeRow_cold_1();
  }

  result = v4();
  if (result)
  {
    v9 = *(v3 + 80);

    return v9(a1, a2, a3);
  }

  return result;
}

uint64_t PredictorDecodeTile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    PredictorDecodeTile_cold_4();
  }

  v4 = v3[9];
  if (!v4)
  {
    PredictorDecodeTile_cold_3();
  }

  result = v4();
  if (result)
  {
    v14 = v3[2];
    if (v14 <= 0)
    {
      PredictorDecodeTile_cold_2();
    }

    if (a3 % v14)
    {
      TIFFErrorExtR(a1, "PredictorDecodeTile", "%s", v9, v10, v11, v12, v13, "occ0%rowsize != 0");
      return 0;
    }

    else
    {
      if (!v3[10])
      {
        PredictorDecodeTile_cold_1();
      }

      if (a3 < 1)
      {
        return 1;
      }

      else
      {
        while (1)
        {
          result = (v3[10])(a1, a2, v14);
          if (!result)
          {
            break;
          }

          a3 -= v14;
          a2 += v14;
          if (a3 <= 0)
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t swabHorAcc16(uint64_t a1, _WORD *a2, uint64_t a3)
{
  TIFFSwabArrayOfShort(a2, a3 / 2);

  return horAcc16(a1, a2, a3, v6, v7, v8, v9, v10);
}

uint64_t swabHorAcc32(uint64_t a1, __int32 *a2, uint64_t a3, uint8x8_t a4)
{
  TIFFSwabArrayOfLong(a2, a3 / 4, a4);

  return horAcc32(a1, a2, a3, v7, v8, v9, v10, v11);
}

uint64_t swabHorAcc64(uint64_t a1, int8x8_t *a2, uint64_t a3)
{
  TIFFSwabArrayOfLong8(a2, a3 / 8);

  return horAcc64(a1, a2, a3, v6, v7, v8, v9, v10);
}

uint64_t fpAcc(uint64_t a1, _BYTE *a2, int64_t size, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 116);
  if (v8 < 8)
  {
    return 0;
  }

  v11 = *(*(a1 + 1096) + 8);
  v12 = v8 >> 3;
  if (size % (v11 * (v8 >> 3)))
  {
    TIFFErrorExtR(a1, "fpAcc", "%s", a4, a5, a6, a7, a8, "cc%(bps*stride))!=0");
    return 0;
  }

  result = malloc_type_malloc(size, 0x100004077774924uLL);
  if (result)
  {
    v14 = result;
    v15 = size / v12;
    if (v11 < size)
    {
      v16 = a2;
      v17 = size;
      while (v11 <= 1)
      {
        if (v11)
        {
          if (v11 != 1)
          {
LABEL_15:
            if (v11 >= 5)
            {
              v18 = v11 - 3;
              do
              {
                v16[v11] += *v16;
                ++v16;
                --v18;
              }

              while (v18 > 1);
            }

            goto LABEL_18;
          }

LABEL_21:
          v16[v11] += *v16;
          ++v16;
        }

        v17 -= v11;
        if (v17 <= v11)
        {
          goto LABEL_23;
        }
      }

      if (v11 != 2)
      {
        if (v11 != 3)
        {
          if (v11 != 4)
          {
            goto LABEL_15;
          }

LABEL_18:
          v16[v11] += *v16;
          ++v16;
        }

        v16[v11] += *v16;
        ++v16;
      }

      v16[v11] += *v16;
      ++v16;
      goto LABEL_21;
    }

LABEL_23:
    _TIFFmemcpy(result, a2, size);
    if (v15 >= 1)
    {
      v19 = 0;
      if (v12 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v12;
      }

      do
      {
        v21 = v20;
        v22 = v12 - 1;
        v23 = a2;
        do
        {
          *v23++ = v14[v19 + v15 * v22--];
          --v21;
        }

        while (v21);
        ++v19;
        a2 += v12;
      }

      while (v19 != v15);
    }

    free(v14);
    return 1;
  }

  return result;
}

uint64_t horDiff8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8x8_t a9, uint8x8_t a10)
{
  v10 = *(*(a1 + 1096) + 8);
  if (a3 % v10)
  {
    TIFFErrorExtR(a1, "horDiff8", "%s", a4, a5, a6, a7, a8, "(cc%stride)!=0");
    return 0;
  }

  else
  {
    v12 = a3 - v10;
    if (a3 > v10)
    {
      if (v10 == 4)
      {
        v22 = *a2;
        v21 = (a2 + 4);
        a9.i32[0] = v22;
        v23 = vmovl_u8(a9).u64[0];
        v24 = v12 + 4;
        do
        {
          a10.i32[0] = *v21;
          a10 = vmovl_u8(a10).u64[0];
          v25 = vsub_s16(a10, v23);
          *v21++ = vuzp1_s8(v25, v25).u32[0];
          v24 -= 4;
          v23 = a10;
        }

        while (v24 > 4);
      }

      else if (v10 == 3)
      {
        v13 = *a2;
        v14 = a2[1];
        v15 = v12 + 3;
        v16 = a2 + 5;
        v17 = a2[2];
        do
        {
          v18 = *(v16 - 2);
          *(v16 - 2) = v18 - v13;
          v19 = *(v16 - 1);
          *(v16 - 1) = v19 - v14;
          v20 = *v16;
          v15 -= 3;
          *v16 -= v17;
          v16 += 3;
          v13 = v18;
          v14 = v19;
          v17 = v20;
        }

        while (v15 > 3);
      }

      else
      {
        v26 = &a2[v12 - 1];
        do
        {
          if (v10)
          {
            if (v10 != 1)
            {
              if (v10 != 2)
              {
                if (v10 >= 5)
                {
                  v27 = -3;
                  do
                  {
                    v26[v10] -= *v26;
                    --v26;
                    --v27;
                  }

                  while ((v10 + v27) > 1);
                }

                v26[v10] -= *v26;
                v29 = *(v26 - 1);
                v28 = v26 - 1;
                v28[v10] -= v29;
                v26 = v28 - 1;
              }

              v26[v10] -= *v26;
              --v26;
            }

            v26[v10] -= *v26;
            --v26;
          }

          v30 = v12 <= v10;
          v12 -= v10;
        }

        while (!v30);
      }
    }

    return 1;
  }
}

uint64_t horDiff16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 1096) + 8);
  if (a3 % (2 * v8))
  {
    TIFFErrorExtR(a1, "horDiff8", "%s", a4, a5, a6, a7, a8, "(cc%(2*stride))!=0");
    return 0;
  }

  v10 = a3 / 2 - v8;
  if (a3 / 2 > v8)
  {
    v11 = (a2 + 2 * v10 - 2);
    while (v8 <= 1)
    {
      if (v8)
      {
        if (v8 != 1)
        {
LABEL_12:
          if (v8 >= 5)
          {
            v12 = v8 - 3;
            do
            {
              v11[v8] -= *v11;
              --v11;
              --v12;
            }

            while (v12 > 1);
          }

          goto LABEL_15;
        }

LABEL_18:
        v11[v8] -= *v11;
        --v11;
      }

      v10 -= v8;
      if (v10 < 1)
      {
        return 1;
      }
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        if (v8 != 4)
        {
          goto LABEL_12;
        }

LABEL_15:
        v11[v8] -= *v11;
        --v11;
      }

      v11[v8] -= *v11;
      --v11;
    }

    v11[v8] -= *v11;
    --v11;
    goto LABEL_18;
  }

  return 1;
}

uint64_t horDiff32(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 1096) + 8);
  v9 = a3 + 3;
  if (a3 >= 0)
  {
    v9 = a3;
  }

  if (a3 % (4 * v8))
  {
    TIFFErrorExtR(a1, "horDiff32", "%s", a4, a5, a6, a7, a8, "(cc%(4*stride))!=0");
    return 0;
  }

  v11 = v9 >> 2;
  v12 = v11 <= v8;
  v13 = v11 - v8;
  if (!v12)
  {
    v14 = (a2 + 4 * v13 - 4);
    while (v8 <= 1)
    {
      if (v8)
      {
        if (v8 != 1)
        {
LABEL_14:
          if (v8 >= 5)
          {
            v15 = v8 - 3;
            do
            {
              v14[v8] -= *v14;
              --v14;
              --v15;
            }

            while (v15 > 1);
          }

          goto LABEL_17;
        }

LABEL_20:
        v14[v8] -= *v14;
        --v14;
      }

      v13 -= v8;
      if (v13 < 1)
      {
        return 1;
      }
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        if (v8 != 4)
        {
          goto LABEL_14;
        }

LABEL_17:
        v14[v8] -= *v14;
        --v14;
      }

      v14[v8] -= *v14;
      --v14;
    }

    v14[v8] -= *v14;
    --v14;
    goto LABEL_20;
  }

  return 1;
}

uint64_t horDiff64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 1096) + 8);
  v9 = a3 + 7;
  if (a3 >= 0)
  {
    v9 = a3;
  }

  if (a3 % (8 * v8))
  {
    TIFFErrorExtR(a1, "horDiff64", "%s", a4, a5, a6, a7, a8, "(cc%(8*stride))!=0");
    return 0;
  }

  v11 = v9 >> 3;
  v12 = v11 <= v8;
  v13 = v11 - v8;
  if (!v12)
  {
    v14 = (a2 + 8 * v13 - 8);
    while (v8 <= 1)
    {
      if (v8)
      {
        if (v8 != 1)
        {
LABEL_14:
          if (v8 >= 5)
          {
            v15 = v8 - 3;
            do
            {
              v14[v8] -= *v14;
              --v14;
              --v15;
            }

            while (v15 > 1);
          }

          goto LABEL_17;
        }

LABEL_20:
        v14[v8] -= *v14;
        --v14;
      }

      v13 -= v8;
      if (v13 < 1)
      {
        return 1;
      }
    }

    if (v8 != 2)
    {
      if (v8 != 3)
      {
        if (v8 != 4)
        {
          goto LABEL_14;
        }

LABEL_17:
        v14[v8] -= *v14;
        --v14;
      }

      v14[v8] -= *v14;
      --v14;
    }

    v14[v8] -= *v14;
    --v14;
    goto LABEL_20;
  }

  return 1;
}

uint64_t PredictorEncodeRow(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 1096);
  if (!v4)
  {
    PredictorEncodeRow_cold_3();
  }

  v5 = *(v4 + 48);
  if (!v5)
  {
    PredictorEncodeRow_cold_2();
  }

  if (!*(v4 + 24))
  {
    PredictorEncodeRow_cold_1();
  }

  result = v5();
  if (result)
  {
    v11 = *(v4 + 24);

    return v11(a1, a2, a3, a4);
  }

  return result;
}

uint64_t PredictorEncodeTile(uint64_t a1, const void *a2, uint64_t size, uint64_t a4)
{
  v4 = *(a1 + 1096);
  if (!v4)
  {
    PredictorEncodeTile_cold_4();
  }

  if (!v4[6])
  {
    PredictorEncodeTile_cold_3();
  }

  if (!v4[5])
  {
    PredictorEncodeTile_cold_2();
  }

  v9 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (!v9)
  {
    TIFFErrorExtR(a1, "PredictorEncodeTile", "Out of memory allocating %lld byte temp buffer.", v10, v11, v12, v13, v14, size);
    return 0;
  }

  v15 = v9;
  memcpy(v9, a2, size);
  v21 = v4[2];
  if (v21 <= 0)
  {
    PredictorEncodeTile_cold_1();
  }

  if (size % v21)
  {
    TIFFErrorExtR(a1, "PredictorEncodeTile", "%s", v16, v17, v18, v19, v20, "(cc0%rowsize)!=0");
    free(v15);
    return 0;
  }

  if (size >= 1)
  {
    v23 = v15;
    v24 = size;
    do
    {
      (v4[6])(a1, v23, v21);
      v24 -= v21;
      v23 += v21;
    }

    while (v24 > 0);
  }

  v25 = (v4[5])(a1, v15, size, a4);
  free(v15);
  return v25;
}

uint64_t swabHorDiff16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = horDiff16(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    TIFFSwabArrayOfShort(a2, a3 / 2);
    return 1;
  }

  return result;
}

uint64_t swabHorDiff32(uint64_t a1, __int32 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = horDiff32(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    TIFFSwabArrayOfLong(a2, a3 / 4, v11);
    return 1;
  }

  return result;
}

uint64_t swabHorDiff64(uint64_t a1, int8x8_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = horDiff64(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    TIFFSwabArrayOfLong8(a2, a3 / 8);
    return 1;
  }

  return result;
}

uint64_t fpDiff(uint64_t a1, char *a2, int64_t size, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(*(a1 + 1096) + 8);
  v9 = *(a1 + 116);
  v10 = v9 >> 3;
  if (size % (v8 * (v9 >> 3)))
  {
    TIFFErrorExtR(a1, "fpDiff", "%s", a4, a5, a6, a7, a8, "(cc%(bps*stride))!=0");
    return 0;
  }

  v12 = size;
  result = malloc_type_malloc(size, 0x100004077774924uLL);
  if (result)
  {
    v14 = result;
    v15 = v12 / v10;
    _TIFFmemcpy(result, a2, v12);
    if (v12 / v10 >= 1)
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (v9 >= 8)
        {
          v18 = v17;
          v19 = v10 - 1;
          do
          {
            v20 = *v18++;
            a2[v16 + v15 * v19--] = v20;
          }

          while (v19 != -1);
        }

        ++v16;
        v17 += v10;
      }

      while (v16 != v15);
    }

    free(v14);
    if (v8 < v12)
    {
      v21 = &a2[v12 + ~v8];
      while (v8 <= 1)
      {
        if (v8)
        {
          if (v8 != 1)
          {
LABEL_19:
            if (v8 >= 5)
            {
              v22 = -3;
              do
              {
                v21[v8] -= *v21;
                --v21;
                --v22;
              }

              while ((v8 + v22) > 1);
            }

            goto LABEL_22;
          }

LABEL_25:
          v21[v8] -= *v21;
          --v21;
        }

        v12 -= v8;
        if (v12 <= v8)
        {
          return 1;
        }
      }

      if (v8 != 2)
      {
        if (v8 != 3)
        {
          if (v8 != 4)
          {
            goto LABEL_19;
          }

LABEL_22:
          v21[v8] -= *v21;
          --v21;
        }

        v21[v8] -= *v21;
        --v21;
      }

      v21[v8] -= *v21;
      --v21;
      goto LABEL_25;
    }

    return 1;
  }

  return result;
}

void IIO_Reader_RAD::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

uint64_t IIO_Reader_RAD::compareOptions(IIO_Reader_RAD *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v7, 0, sizeof(v7));
  IIODictionary::IIODictionary(v7, a2);
  memset(v6, 0, sizeof(v6));
  IIODictionary::IIODictionary(v6, a3);
  BoolForKey = IIODictionary::getBoolForKey(v7, @"kCGImageSourceShouldAllowFloat");
  LODWORD(a3) = BoolForKey ^ IIODictionary::getBoolForKey(v6, @"kCGImageSourceShouldAllowFloat");
  IIODictionary::~IIODictionary(v6);
  IIODictionary::~IIODictionary(v7);
  return a3 ^ 1;
}

void sub_1860013B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

BOOL TIFFWriteDirectorySec(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  if (*(a1 + 12))
  {
    _TIFFFillStriles(a1);
    if (!a3)
    {
LABEL_13:
      v213 = a3;
      v19 = a1 + 72;
      if ((*(a1 + 72) & 0x80) != 0 && *(a1 + 120) == 32946)
      {
        TIFFWarningExtR(a1, "TIFFWriteDirectorySec", "Creating TIFF with legacy Deflate codec identifier, COMPRESSION_ADOBE_DEFLATE is more widely supported", v9, v10, v11, v12, v13, v212);
      }

      LODWORD(v20) = 0;
      v21 = 0;
      v216 = a2;
      while (1)
      {
        size = v20;
        v217 = 0;
        if (v21)
        {
          if (!a2)
          {
            goto LABEL_211;
          }
        }

        else
        {
          *(a1 + 432) = 0;
          if (!a2)
          {
            goto LABEL_211;
          }
        }

        v22 = *v19;
        if ((*v19 & 2) != 0)
        {
          if (!TIFFWriteDirectoryTagShortLong(a1, &v217, v21, 256, *(a1 + 88), v14) || !TIFFWriteDirectoryTagShortLong(a1, &v217, v21, 257, *(a1 + 92), v23))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 4) != 0)
        {
          if (!TIFFWriteDirectoryTagShortLong(a1, &v217, v21, 322, *(a1 + 100), v14) || !TIFFWriteDirectoryTagShortLong(a1, &v217, v21, 323, *(a1 + 104), v24))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 8) != 0)
        {
          if (!TIFFWriteDirectoryTagRational(a1, &v217, v21, 282, v10, v11, v12, v13, *(a1 + 160)) || !TIFFWriteDirectoryTagRational(a1, &v217, v21, 283, v25, v26, v27, v28, *(a1 + 164)))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x10) != 0)
        {
          if (!TIFFWriteDirectoryTagRational(a1, &v217, v21, 286, v10, v11, v12, v13, *(a1 + 172)) || !TIFFWriteDirectoryTagRational(a1, &v217, v21, 287, v29, v30, v31, v32, *(a1 + 176)))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x20) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedLong(a1, &v217, v21, 254, *(a1 + 112), v14))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x40) != 0)
        {
          if (!TIFFWriteDirectoryTagShortPerSample(a1, &v217, v21, 258, *(a1 + 116)))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x80) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedShort(a1, &v217, v21, 259, *(a1 + 120)))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x100) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedShort(a1, &v217, v21, 262, *(a1 + 122)))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x200) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedShort(a1, &v217, v21, 263, *(a1 + 124)))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x400) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedShort(a1, &v217, v21, 266, *(a1 + 126)))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x8000) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedShort(a1, &v217, v21, 274, *(a1 + 128)))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x10000) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedShort(a1, &v217, v21, 277, *(a1 + 130)))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x20000) != 0)
        {
          if (!TIFFWriteDirectoryTagShortLong(a1, &v217, v21, 278, *(a1 + 132), v14))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x40000) != 0)
        {
          if (!TIFFWriteDirectoryTagShortPerSample(a1, &v217, v21, 280, *(a1 + 136)))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x80000) != 0)
        {
          if (!TIFFWriteDirectoryTagShortPerSample(a1, &v217, v21, 281, *(a1 + 138)))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x100000) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedShort(a1, &v217, v21, 284, *(a1 + 170)))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x400000) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedShort(a1, &v217, v21, 296, *(a1 + 168)))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x800000) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedShortArray(a1, &v217, v21, 297, 2, a1 + 180))
          {
            goto LABEL_425;
          }

          v22 = *v19;
        }

        if ((v22 & 0x1000000) != 0)
        {
          v33 = (*(a1 + 17) & 4) != 0 ? 325 : 279;
          if (!TIFFWriteDirectoryTagLongLong8Array(a1, &v217, v21, v33, *(a1 + 228), *(a1 + 240), v12, v13))
          {
LABEL_425:
            if (!v21)
            {
              return 0;
            }

            goto LABEL_426;
          }
        }

        if ((*(v19 + 3) & 2) != 0)
        {
          if ((*(a1 + 17) & 4) != 0)
          {
            v34 = *(a1 + 228);
            v11 = *(a1 + 232);
            v35 = a1;
            v36 = v21;
            v37 = 324;
          }

          else
          {
            v11 = *(a1 + 232);
            if (!v11)
            {
              goto LABEL_90;
            }

            v34 = *(a1 + 228);
            v35 = a1;
            v36 = v21;
            v37 = 273;
          }

          if (!TIFFWriteDirectoryTagLongLong8Array(v35, &v217, v36, v37, v34, v11, v12, v13))
          {
            goto LABEL_425;
          }
        }

LABEL_90:
        v38 = *v19;
        if ((*v19 & 0x4000000) == 0)
        {
          goto LABEL_95;
        }

        v39 = *(a1 + 116);
        v40 = 2 * (3 << v39);
        if (v21)
        {
          v41 = malloc_type_malloc(v40, 0x1000040BDFB0063uLL);
          if (!v41)
          {
            v196 = "TIFFWriteDirectoryTagColormap";
            goto LABEL_471;
          }

          v47 = v41;
          _TIFFmemcpy(v41, *(a1 + 184), 2 * (1 << v39));
          _TIFFmemcpy(&v47[2 * (1 << v39)], *(a1 + 192), 2 * (1 << v39));
          _TIFFmemcpy(&v47[2 * (2 << v39)], *(a1 + 200), 2 * (1 << v39));
          v48 = TIFFWriteDirectoryTagCheckedShortArray(a1, &v217, v21, 320, (3 << v39), v47);
          free(v47);
          if (!v48)
          {
            goto LABEL_426;
          }

          v19 = a1 + 72;
          v38 = *(a1 + 72);
LABEL_95:
          if (v38 < 0)
          {
            goto LABEL_96;
          }

          goto LABEL_104;
        }

        v49 = 4;
        if ((*(a1 + 18) & 8) != 0)
        {
          v49 = 8;
        }

        if (v40 > v49)
        {
          *(a1 + 432) += v40;
        }

        ++v217;
        if (v38 < 0)
        {
LABEL_96:
          if (*(a1 + 212))
          {
            LOWORD(v219[0]) = 0;
            __src = 0;
            _cg_TIFFGetFieldDefaulted(a1, 338, v8, v9, v10, v11, v12, v13, v219);
            if (!TIFFWriteDirectoryTagCheckedShortArray(a1, &v217, v21, 338, LOWORD(v219[0]), __src))
            {
              goto LABEL_425;
            }
          }
        }

LABEL_104:
        v50 = *(a1 + 76);
        if (v50)
        {
          if (!TIFFWriteDirectoryTagShortPerSample(a1, &v217, v21, 339, *(a1 + 118)))
          {
            goto LABEL_425;
          }

          v50 = *(a1 + 76);
        }

        if ((v50 & 2) != 0)
        {
          if (!TIFFWriteDirectoryTagSampleformatArray(a1, &v217, v21, 340, *(a1 + 130), *(a1 + 144)))
          {
            goto LABEL_425;
          }

          v50 = *(a1 + 76);
        }

        if ((v50 & 4) != 0)
        {
          if (!TIFFWriteDirectoryTagSampleformatArray(a1, &v217, v21, 341, *(a1 + 130), *(a1 + 152)))
          {
            goto LABEL_425;
          }

          v50 = *(a1 + 76);
        }

        if ((v50 & 8) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedLong(a1, &v217, v21, 32997, *(a1 + 96), v14))
          {
            goto LABEL_425;
          }

          v50 = *(a1 + 76);
        }

        if ((v50 & 0x10) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedLong(a1, &v217, v21, 32998, *(a1 + 108), v14))
          {
            goto LABEL_425;
          }

          v50 = *(a1 + 76);
        }

        if ((v50 & 0x20) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedShortArray(a1, &v217, v21, 321, 2, a1 + 208))
          {
            goto LABEL_425;
          }

          v50 = *(a1 + 76);
        }

        if ((v50 & 0x80) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedShortArray(a1, &v217, v21, 530, 2, a1 + 336))
          {
            goto LABEL_425;
          }

          v50 = *(a1 + 76);
        }

        if ((v50 & 0x100) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedShort(a1, &v217, v21, 531, *(a1 + 340)))
          {
            goto LABEL_425;
          }

          v50 = *(a1 + 76);
        }

        if ((v50 & 0x200) != 0)
        {
          if (!TIFFWriteDirectoryTagRationalArray(a1, &v217, v21, 532, 6, *(a1 + 368)))
          {
            goto LABEL_425;
          }

          v50 = *(a1 + 76);
        }

        if ((v50 & 0x1000) != 0)
        {
          v51 = 0;
          v52 = *(a1 + 116);
          v53 = 1 << v52;
          v54 = *(a1 + 130) - *(a1 + 212);
          do
          {
            if (!*(a1 + 8 * v51 + 344))
            {
              TIFFWarningExtR(a1, "TIFFWriteDirectoryTagTransferfunction", "Too few TransferFunctions provided. Tag not written to file", v9, v10, v11, v12, v13, v212);
              goto LABEL_156;
            }

            if (v54 < 2)
            {
              break;
            }

            v55 = v51++ > 1;
          }

          while (!v55);
          if (v54 < 2)
          {
            v56 = 1;
          }

          else if (_TIFFmemcmp(*(a1 + 344), *(a1 + 360), 2 * v53))
          {
            v56 = 3;
          }

          else if (_TIFFmemcmp(*(a1 + 344), *(a1 + 352), 2 * v53))
          {
            v56 = 3;
          }

          else
          {
            v56 = 1;
          }

          v57 = 2 * (v56 << v52);
          if (v21)
          {
            v58 = malloc_type_malloc(v57, 0x1000040BDFB0063uLL);
            if (!v58)
            {
              v196 = "TIFFWriteDirectoryTagTransferfunction";
LABEL_471:
              TIFFErrorExtR(a1, v196, "Out of memory", v42, v43, v44, v45, v46, v212);
              goto LABEL_426;
            }

            v59 = v58;
            _TIFFmemcpy(v58, *(a1 + 344), 2 * (1 << v52));
            if (v56 != 1)
            {
              _TIFFmemcpy(&v59[2 * (1 << v52)], *(a1 + 352), 2 * (1 << v52));
              _TIFFmemcpy(&v59[2 * (2 << v52)], *(a1 + 360), 2 * (1 << v52));
            }

            v60 = TIFFWriteDirectoryTagCheckedShortArray(a1, &v217, v21, 301, (v56 << v52), v59);
            free(v59);
            v19 = a1 + 72;
            if (!v60)
            {
              goto LABEL_426;
            }
          }

          else
          {
            v61 = 4;
            if ((*(a1 + 18) & 8) != 0)
            {
              v61 = 8;
            }

            if (v57 > v61)
            {
              *(a1 + 432) += v57;
            }

            ++v217;
          }
        }

LABEL_156:
        v62 = *(a1 + 76);
        if ((v62 & 0x4000) != 0)
        {
          if (!TIFFWriteDirectoryTagAscii(a1, &v217, v21, 333, *(a1 + 376), *(a1 + 384)))
          {
            goto LABEL_425;
          }

          v62 = *(a1 + 76);
        }

        if ((v62 & 0x40000) != 0)
        {
          if (!TIFFWriteDirectoryTagCheckedShort(a1, &v217, v21, 334, *(a1 + 392)))
          {
            goto LABEL_425;
          }

          v62 = *(a1 + 76);
        }

        if ((v62 & 0x20000) != 0)
        {
          v10 = *(a1 + 320);
          if (*(a1 + 320))
          {
            v63 = *(a1 + 904);
            if ((*(a1 + 18) & 8) != 0)
            {
              v71 = TIFFWriteDirectoryTagCheckedIfd8Array(a1, &v217, v21, 330, v10, *(a1 + 328));
            }

            else
            {
              v64 = malloc_type_malloc(4 * *(a1 + 320), 0x100004052888210uLL);
              if (!v64)
              {
                v193 = "TIFFWriteDirectoryTagSubifd";
                goto LABEL_473;
              }

              v66 = v64;
              v10 = *(a1 + 320);
              if (*(a1 + 320))
              {
                v67 = 0;
                v68 = *(a1 + 328);
                v69 = v64;
                do
                {
                  if (!v68)
                  {
                    TIFFWriteDirectorySec_cold_1();
                  }

                  v70 = *v68;
                  if (HIDWORD(*v68))
                  {
                    v171 = "TIFFWriteDirectoryTagSubifd";
                    v172 = "Illegal value for SubIFD tag";
LABEL_422:
                    TIFFErrorExtR(a1, v171, v172, v9, v10, v11, v12, v13, v212);
                    goto LABEL_423;
                  }

                  ++v68;
                  *v69++ = v70;
                  ++v67;
                }

                while (v67 < v10);
              }

              v71 = TIFFWriteDirectoryTagCheckedIfdArray(a1, &v217, v21, 330, v10, v64, v65);
              free(v66);
            }

            if (v21)
            {
              if (!v71)
              {
                goto LABEL_426;
              }

              *(a1 + 16) |= 0x2000u;
              v72 = *(a1 + 320);
              *(a1 + 912) = v72;
              if (v72 == 1)
              {
                v73 = 0;
              }

              else
              {
                v73 = v63;
              }

              *(a1 + 920) = v73;
            }

            else if (!v71)
            {
              return 0;
            }
          }
        }

        if ((*(a1 + 78) & 0x20) != 0)
        {
          TIFFWarning("TIFFWriteRichIPTCTag", "Unimplemented.", v8, v9, v10, v11, v12, v13, v212);
        }

        if (*(a1 + 1264))
        {
          v74 = 0;
          v75 = 1;
          do
          {
            v76 = *(*(a1 + 1256) + 8 * v74);
            v77 = *(v76 + 12);
            if (v77 >= 0x42 && ((*(v19 + ((v77 >> 3) & 0x1FFC)) >> v77) & 1) != 0)
            {
              v78 = v76[5];
              if (v78 > 5)
              {
                if (v78 == 6)
                {
                  LODWORD(__src) = 0;
                  if (v76[2] != 4)
                  {
                    TIFFWriteDirectorySec_cold_5();
                  }

                  if (*(v76 + 2) != 1)
                  {
                    TIFFWriteDirectorySec_cold_6();
                  }

                  if (*(v76 + 27))
                  {
                    TIFFWriteDirectorySec_cold_7();
                  }

                  _cg_TIFFGetField(a1, *v76, v8, v9, v10, v11, v12, v13, &__src);
                  if (!TIFFWriteDirectoryTagCheckedLong(a1, &v217, v21, *v76, __src, v80))
                  {
                    goto LABEL_425;
                  }
                }

                else
                {
                  if (v78 != 40)
                  {
LABEL_446:
                    v187 = TIFFFieldTag(v76);
                    TIFFErrorExtR(a1, "TIFFWriteDirectorySec", "Cannot write tag %u (%s)", v188, v189, v190, v191, v192, v187);
                    goto LABEL_475;
                  }

                  v219[0] = 0;
                  __src = 0;
                  if (v76[2] != 7)
                  {
                    TIFFWriteDirectorySec_cold_2();
                  }

                  if (*(v76 + 2) != -3)
                  {
                    TIFFWriteDirectorySec_cold_3();
                  }

                  if (*(v76 + 27) != 1)
                  {
                    TIFFWriteDirectorySec_cold_4();
                  }

                  _cg_TIFFGetField(a1, *v76, v8, v9, v10, v11, v12, v13, v219);
                  if (!TIFFWriteDirectoryTagUndefinedArray(a1, &v217, v21, *v76, v219[0], __src))
                  {
                    goto LABEL_425;
                  }
                }
              }

              else if (v78 == 1)
              {
                __src = 0;
                if (v76[2] != 2)
                {
                  TIFFWriteDirectorySec_cold_11();
                }

                if (*(v76 + 2) != -1)
                {
                  TIFFWriteDirectorySec_cold_12();
                }

                if (*(v76 + 27))
                {
                  TIFFWriteDirectorySec_cold_13();
                }

                _cg_TIFFGetField(a1, *v76, v8, v9, v10, v11, v12, v13, &__src);
                v79 = strlen(__src);
                if (!TIFFWriteDirectoryTagAscii(a1, &v217, v21, *v76, v79, __src))
                {
                  goto LABEL_425;
                }
              }

              else
              {
                if (v78 != 4)
                {
                  goto LABEL_446;
                }

                LOWORD(__src) = 0;
                if (v76[2] != 3)
                {
                  TIFFWriteDirectorySec_cold_8();
                }

                if (*(v76 + 2) != 1)
                {
                  TIFFWriteDirectorySec_cold_9();
                }

                if (*(v76 + 27))
                {
                  TIFFWriteDirectorySec_cold_10();
                }

                _cg_TIFFGetField(a1, *v76, v8, v9, v10, v11, v12, v13, &__src);
                if (!TIFFWriteDirectoryTagCheckedShort(a1, &v217, v21, *v76, __src))
                {
                  goto LABEL_425;
                }
              }
            }

            v74 = v75;
            v55 = *(a1 + 1264) > v75++;
          }

          while (v55);
        }

LABEL_211:
        if (*(a1 + 408))
        {
          v81 = 0;
          v214 = a4;
          while (1)
          {
            v82 = (*(a1 + 416) + 24 * v81);
            v83 = *v82;
            v84 = **v82;
            v85 = *(v82 + 2);
            switch(*(*v82 + 8))
            {
              case 1:
                if (!TIFFWriteDirectoryTagByteArray(a1, &v217, v21, **v82, *(v82 + 2), v82[2]))
                {
                  goto LABEL_425;
                }

                goto LABEL_300;
              case 2:
                if (!TIFFWriteDirectoryTagAscii(a1, &v217, v21, **v82, *(v82 + 2), v82[2]))
                {
                  goto LABEL_425;
                }

                goto LABEL_300;
              case 3:
                if (!TIFFWriteDirectoryTagCheckedShortArray(a1, &v217, v21, **v82, *(v82 + 2), v82[2]))
                {
                  goto LABEL_425;
                }

                goto LABEL_300;
              case 4:
                if (!TIFFWriteDirectoryTagCheckedLongArray(a1, &v217, v21, **v82, *(v82 + 2), v82[2], v14))
                {
                  goto LABEL_425;
                }

                goto LABEL_300;
              case 5:
                v109 = TIFFFieldSetGetSize(v83);
                v110 = *(a1 + 416) + 24 * v81;
                v111 = *(v110 + 16);
                if (v109 == 8)
                {
                  v112 = 4 * (2 * v85);
                  if (v21)
                  {
                    v113 = malloc_type_malloc(v112, 0x100004052888210uLL);
                    if (!v113)
                    {
                      v196 = "TIFFWriteDirectoryTagCheckedRationalDoubleArray";
                      goto LABEL_471;
                    }

                    v116 = v113;
                    if (v85)
                    {
                      v117 = v85;
                      v118 = v113;
                      do
                      {
                        v119 = *v111++;
                        DoubleToRational(v118, v118 + 1, v119, v114, v42, v43, v44, v45, v46, v212);
                        v118 += 2;
                        --v117;
                      }

                      while (v117);
                    }

                    if ((*(a1 + 16) & 0x80) != 0)
                    {
                      TIFFSwabArrayOfLong(v116, (2 * v85), v115);
                    }

                    v95 = TIFFWriteDirectoryTagData(a1, &v217, v21, v84, 5, v85, (8 * v85), v116);
                    free(v116);
                    a4 = v214;
                    v19 = a1 + 72;
LABEL_299:
                    if (!v95)
                    {
                      goto LABEL_425;
                    }
                  }

                  else
                  {
                    v138 = 4;
                    if ((*(a1 + 18) & 8) != 0)
                    {
                      v138 = 8;
                    }

                    a4 = v214;
                    if (v112 > v138)
                    {
                      *(a1 + 432) += v112;
                    }

                    ++v217;
                    v19 = a1 + 72;
                  }
                }

                else
                {
                  v86 = v109;
                  if (!TIFFWriteDirectoryTagRationalArray(a1, &v217, v21, v84, v85, *(v110 + 16)))
                  {
                    goto LABEL_425;
                  }

LABEL_312:
                  v19 = a1 + 72;
                  if (v86 != 4)
                  {
                    TIFFErrorExtR(a1, "TIFFLib: _TIFFWriteDirectorySec()", "Rational2Double: .set_field_type is not 4 but %d", v9, v10, v11, v12, v13, v86);
                  }
                }

LABEL_300:
                if (++v81 >= *(a1 + 408))
                {
                  goto LABEL_319;
                }

                break;
              case 6:
                if (!TIFFWriteDirectoryTagSbyteArray(a1, &v217, v21, **v82, *(v82 + 2), v82[2]))
                {
                  goto LABEL_425;
                }

                goto LABEL_300;
              case 7:
                if (!TIFFWriteDirectoryTagUndefinedArray(a1, &v217, v21, **v82, *(v82 + 2), v82[2]))
                {
                  goto LABEL_425;
                }

                goto LABEL_300;
              case 8:
                if (!TIFFWriteDirectoryTagSshortArray(a1, &v217, v21, **v82, *(v82 + 2), v82[2]))
                {
                  goto LABEL_425;
                }

                goto LABEL_300;
              case 9:
                if (!TIFFWriteDirectoryTagCheckedSlongArray(a1, &v217, v21, **v82, *(v82 + 2), v82[2], v14))
                {
                  goto LABEL_425;
                }

                goto LABEL_300;
              case 0xA:
                v86 = TIFFFieldSetGetSize(v83);
                v87 = *(*(a1 + 416) + 24 * v81 + 16);
                v88 = 4 * (2 * v85);
                if (v86 != 8)
                {
                  if (v21)
                  {
                    v125 = malloc_type_malloc(v88, 0x100004052888210uLL);
                    if (!v125)
                    {
                      v196 = "TIFFWriteDirectoryTagCheckedSrationalArray";
                      goto LABEL_471;
                    }

                    v127 = v125;
                    if (v85)
                    {
                      v128 = v85;
                      v129 = v125;
                      do
                      {
                        v130 = *v87++;
                        DoubleToSrational(v129, v129 + 1, v130);
                        v129 += 2;
                        --v128;
                      }

                      while (v128);
                    }

                    if ((*(a1 + 16) & 0x80) != 0)
                    {
                      TIFFSwabArrayOfLong(v127, (2 * v85), v126);
                    }

                    v131 = TIFFWriteDirectoryTagData(a1, &v217, v21, v84, 10, v85, (8 * v85), v127);
                    free(v127);
                    a4 = v214;
                    if (!v131)
                    {
                      goto LABEL_425;
                    }
                  }

                  else
                  {
                    v137 = 4;
                    if ((*(a1 + 18) & 8) != 0)
                    {
                      v137 = 8;
                    }

                    if (v88 > v137)
                    {
                      *(a1 + 432) += v88;
                    }

                    ++v217;
                    a4 = v214;
                  }

                  goto LABEL_312;
                }

                if (!v21)
                {
                  v136 = 4;
                  if ((*(a1 + 18) & 8) != 0)
                  {
                    v136 = 8;
                  }

                  if (v88 > v136)
                  {
                    *(a1 + 432) += v88;
                  }

                  ++v217;
                  a4 = v214;
                  goto LABEL_300;
                }

                v89 = malloc_type_malloc(v88, 0x100004052888210uLL);
                if (!v89)
                {
                  v196 = "TIFFWriteDirectoryTagCheckedSrationalDoubleArray";
                  goto LABEL_471;
                }

                v91 = v89;
                if (v85)
                {
                  v92 = v85;
                  v93 = v89;
                  do
                  {
                    v94 = *v87;
                    v87 += 2;
                    DoubleToSrational(v93, v93 + 1, v94);
                    v93 += 2;
                    --v92;
                  }

                  while (v92);
                }

                if ((*(a1 + 16) & 0x80) != 0)
                {
                  TIFFSwabArrayOfLong(v91, (2 * v85), v90);
                }

                v95 = TIFFWriteDirectoryTagData(a1, &v217, v21, v84, 10, v85, (8 * v85), v91);
                free(v91);
                v19 = a1 + 72;
                a4 = v214;
                goto LABEL_299;
              case 0xB:
                if (!TIFFWriteDirectoryTagFloatArray(a1, &v217, v21, **v82, *(v82 + 2), v82[2], v14))
                {
                  goto LABEL_425;
                }

                goto LABEL_300;
              case 0xC:
                if (!TIFFWriteDirectoryTagDoubleArray(a1, &v217, v21, **v82, *(v82 + 2), v82[2]))
                {
                  goto LABEL_425;
                }

                goto LABEL_300;
              case 0xD:
                if (!TIFFWriteDirectoryTagCheckedIfdArray(a1, &v217, v21, **v82, *(v82 + 2), v82[2], v14))
                {
                  goto LABEL_425;
                }

                goto LABEL_300;
              case 0x10:
                v96 = v82[2];
                if (!v21)
                {
                  v132 = a1;
                  v133 = 0;
LABEL_295:
                  v95 = TIFFWriteDirectoryTagCheckedLong8Array(v132, &v217, v133, v84, v85, v96, v12, v13);
                  goto LABEL_299;
                }

                if ((*(a1 + 18) & 8) != 0)
                {
                  v132 = a1;
                  v133 = v21;
                  goto LABEL_295;
                }

                v97 = malloc_type_malloc(4 * v85, 0x100004052888210uLL);
                if (!v97)
                {
                  v196 = "TIFFWriteDirectoryTagLong8Array";
                  goto LABEL_471;
                }

                v99 = v97;
                if (v85)
                {
                  v100 = 0;
                  while (1)
                  {
                    v101 = v96[v100];
                    if (HIDWORD(*&v101))
                    {
                      break;
                    }

                    v97[v100++] = v101.i32[0];
                    if (v85 == v100)
                    {
                      goto LABEL_240;
                    }
                  }

                  TIFFErrorExtR(a1, "TIFFWriteDirectoryTagLong8Array", "Attempt to write unsigned long value %llu larger than 0xFFFFFFFF for tag %d in Classic TIFF file. TIFF file writing aborted", v42, v43, v44, v45, v46, *&v96[v100]);
                  v173 = v99;
                  goto LABEL_424;
                }

LABEL_240:
                v95 = TIFFWriteDirectoryTagCheckedLongArray(a1, &v217, v21, v84, v85, v97, v98);
                v102 = v99;
LABEL_266:
                free(v102);
LABEL_291:
                v19 = a1 + 72;
                goto LABEL_299;
              case 0x11:
                v103 = a4;
                v104 = v82[2];
                if (!v21)
                {
                  v134 = a1;
                  v135 = 0;
LABEL_297:
                  v95 = TIFFWriteDirectoryTagCheckedSlong8Array(v134, &v217, v135, v84, v85, v104, v12, v13);
                  goto LABEL_298;
                }

                if ((*(a1 + 18) & 8) != 0)
                {
                  v134 = a1;
                  v135 = v21;
                  goto LABEL_297;
                }

                v105 = malloc_type_malloc(4 * v85, 0x100004052888210uLL);
                if (!v105)
                {
                  v196 = "TIFFWriteDirectoryTagSlong8Array";
                  goto LABEL_471;
                }

                v66 = v105;
                if (v85)
                {
                  v107 = 0;
                  while (1)
                  {
                    v108 = v104[v107];
                    if (v108 >= 0x80000000)
                    {
                      TIFFErrorExtR(a1, "TIFFWriteDirectoryTagSlong8Array", "Attempt to write signed long value %lli larger than 0x7FFFFFFF (2147483647) for tag %d in Classic TIFF file. TIFF writing to file aborted", v42, v43, v44, v45, v46, *&v104[v107]);
                      goto LABEL_423;
                    }

                    if (v108 <= 0xFFFFFFFF7FFFFFFFLL)
                    {
                      break;
                    }

                    v105[v107++] = v108;
                    if (v85 == v107)
                    {
                      goto LABEL_249;
                    }
                  }

                  TIFFErrorExtR(a1, "TIFFWriteDirectoryTagSlong8Array", "Attempt to write signed long value %lli smaller than 0x80000000 (-2147483648) for tag %d in Classic TIFF file. TIFF writing to file aborted", v42, v43, v44, v45, v46, *&v104[v107]);
LABEL_423:
                  v173 = v66;
LABEL_424:
                  free(v173);
                  goto LABEL_425;
                }

LABEL_249:
                v95 = TIFFWriteDirectoryTagCheckedSlongArray(a1, &v217, v21, v84, v85, v105, v106);
                free(v66);
LABEL_298:
                a4 = v103;
                goto LABEL_299;
              case 0x12:
                v120 = v82[2];
                if ((*(a1 + 18) & 8) != 0)
                {
                  v95 = TIFFWriteDirectoryTagCheckedIfd8Array(a1, &v217, v21, v84, v85, v120);
                  goto LABEL_291;
                }

                v121 = malloc_type_malloc(4 * v85, 0x100004052888210uLL);
                if (!v121)
                {
                  v193 = "TIFFWriteDirectoryTagIfdIfd8Array";
                  goto LABEL_473;
                }

                v66 = v121;
                if (v85)
                {
                  v123 = 0;
                  while (1)
                  {
                    v124 = v120[v123];
                    if (HIDWORD(*&v124))
                    {
                      break;
                    }

                    v121[v123++] = v124.i32[0];
                    if (v85 == v123)
                    {
                      goto LABEL_265;
                    }
                  }

                  v171 = "TIFFWriteDirectoryTagIfdIfd8Array";
                  v172 = "Attempt to write value larger than 0xFFFFFFFF in Classic TIFF file.";
                  goto LABEL_422;
                }

LABEL_265:
                v95 = TIFFWriteDirectoryTagCheckedIfdArray(a1, &v217, v21, v84, v85, v121, v122);
                v102 = v66;
                goto LABEL_266;
              default:
                TIFFWriteDirectorySec_cold_14();
            }
          }
        }

LABEL_319:
        if (v21)
        {
          if (!v216 || (*(a1 + 78) & 2) == 0 || *(a1 + 920))
          {
            goto LABEL_432;
          }

          if (v217)
          {
            v203 = 0;
            v204 = v21;
            while (*v204 != 330)
            {
              ++v203;
              v204 += 16;
              if (v217 == v203)
              {
                goto LABEL_481;
              }
            }

            v210 = 20;
            if ((*(a1 + 16) & 0x80000) != 0)
            {
              v211 = 20;
            }

            else
            {
              v211 = 12;
            }

            if ((*(a1 + 16) & 0x80000) == 0)
            {
              v210 = 10;
            }

            *(a1 + 920) = v210 + *(a1 + 24) + (v203 * v211);
LABEL_432:
            v176 = malloc_type_malloc(size, 0xD60FAB32uLL);
            if (v176)
            {
              v178 = v176;
              v179 = *(a1 + 16);
              if ((v179 & 0x80000) != 0)
              {
                v197 = v217;
                *v176 = v217;
                if ((v179 & 0x80) != 0)
                {
                  TIFFSwabLong8(v176);
                }

                if (v197)
                {
                  v198 = 0;
                  v199 = &v178[1] + 2;
                  v200 = v21 + 1;
                  do
                  {
                    *(v199 - 1) = *(v200 - 1);
                    if ((*(a1 + 16) & 0x80) != 0)
                    {
                      TIFFSwabShort(v199 - 2);
                      v201 = *(a1 + 16);
                      *v199 = *v200;
                      if ((v201 & 0x80) != 0)
                      {
                        TIFFSwabShort(v199);
                      }
                    }

                    else
                    {
                      *v199 = *v200;
                    }

                    _TIFFmemcpy(v199 + 2, v200 + 3, 8uLL);
                    if ((*(a1 + 16) & 0x80) != 0)
                    {
                      TIFFSwabLong8((v199 + 2));
                    }

                    _TIFFmemcpy(v199 + 10, v200 + 7, 8uLL);
                    ++v198;
                    v199 += 20;
                    v200 += 16;
                  }

                  while (v198 < v217);
                  v202 = (v199 - 2);
                }

                else
                {
                  v202 = v178 + 1;
                }

                _TIFFmemcpy(v202, (a1 + 32), 8uLL);
                if ((*(a1 + 16) & 0x80) != 0)
                {
                  TIFFSwabLong8(v202);
                }
              }

              else
              {
                LODWORD(__src) = 0;
                v180 = v217;
                v176->i16[0] = v217;
                if ((v179 & 0x80) != 0)
                {
                  TIFFSwabShort(v176);
                }

                if (v180)
                {
                  v181 = 0;
                  v182 = v21 + 1;
                  v183 = v178 + 6;
                  do
                  {
                    *(v183 - 2) = *(v182 - 1);
                    if ((*(a1 + 16) & 0x80) != 0)
                    {
                      TIFFSwabShort(v183 - 4);
                      v184 = *(a1 + 16);
                      *(v183 - 1) = *v182;
                      if ((v184 & 0x80) != 0)
                      {
                        TIFFSwabShort(v183 - 2);
                      }
                    }

                    else
                    {
                      *(v183 - 1) = *v182;
                    }

                    LODWORD(__src) = *(v182 + 3);
                    _TIFFmemcpy(v183, &__src, 4uLL);
                    if ((*(a1 + 16) & 0x80) != 0)
                    {
                      TIFFSwabLong(v183, v185);
                    }

                    _TIFFmemcpy(v183 + 4, v182 + 7, 4uLL);
                    ++v181;
                    v182 += 16;
                    v183 += 12;
                  }

                  while (v181 < v217);
                  v186 = v183 - 4;
                }

                else
                {
                  v186 = v178 + 2;
                }

                LODWORD(__src) = *(a1 + 32);
                if ((*(a1 + 16) & 0x80) != 0)
                {
                  TIFFSwabLong(&__src, v177);
                }

                _TIFFmemcpy(v186, &__src, 4uLL);
              }

              free(v21);
              if (_TIFFSeekOK(a1, *(a1 + 24)) && (*(a1 + 1216))(*(a1 + 1200), v178, size) == size)
              {
                free(v178);
                if (v213)
                {
                  _cg_TIFFFreeDirectory(a1);
                  *(a1 + 16) &= 0xFFDFFFF7;
                  (*(a1 + 1072))(a1);
                  TIFFCreateDirectory(a1);
                }

                else
                {
                  *(a1 + 440) = *(a1 + 432);
                }

                return 1;
              }

              TIFFErrorExtR(a1, "TIFFWriteDirectorySec", "IO error writing directory", v205, v206, v207, v208, v209, v212);
              v174 = v178;
LABEL_427:
              free(v174);
              return 0;
            }

            v193 = "TIFFWriteDirectorySec";
LABEL_473:
            v194 = "Out of memory";
          }

          else
          {
LABEL_481:
            v193 = "TIFFWriteDirectorySec";
            v194 = "Cannot find SubIFD tag";
          }

LABEL_474:
          TIFFErrorExtR(a1, v193, v194, v9, v10, v11, v12, v13, v212);
LABEL_475:
          if (!v21)
          {
            return 0;
          }

LABEL_426:
          v174 = v21;
          goto LABEL_427;
        }

        v139 = v217;
        if ((*(a1 + 16) & 0x80000) != 0)
        {
          v140 = 20;
        }

        else
        {
          v140 = 12;
        }

        if ((*(a1 + 16) & 0x80000) != 0)
        {
          v141 = 16;
        }

        else
        {
          v141 = 6;
        }

        *(a1 + 432) += v141 + v217 * v140;
        v142 = malloc_type_malloc(32 * v139, 0x100004022B81155uLL);
        a2 = v216;
        if (!v142)
        {
          v170 = "Out of memory";
          goto LABEL_416;
        }

        v21 = v142;
        if (v216)
        {
          if (*(a1 + 24))
          {
            if (*(a1 + 432) > *(a1 + 440))
            {
              free(v142);
              return TIFFRewriteDirectorySec(a1, v213, a4) != 0;
            }

            goto LABEL_400;
          }

          v144 = (*(a1 + 1224))(*(a1 + 1200), 0, 2);
          *(a1 + 24) = (v144 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v146 = *(a1 + 16);
          if ((v146 & 0x2000) != 0)
          {
            if ((v146 & 0x80000) != 0)
            {
              __src = (v144 + 1) & 0xFFFFFFFFFFFFFFFELL;
              if ((v146 & 0x80) != 0)
              {
                v145.n128_u64[0] = TIFFSwabLong8(&__src);
              }

              (*(a1 + 1224))(*(a1 + 1200), *(a1 + 920), 0, v145);
              if ((*(a1 + 1216))(*(a1 + 1200), &__src, 8) == 8)
              {
                v158 = *(a1 + 912) - 1;
                *(a1 + 912) = v158;
                if (v158)
                {
                  v153 = *(a1 + 920) + 8;
                  goto LABEL_381;
                }

LABEL_387:
                *(a1 + 16) &= ~0x2000u;
                goto LABEL_388;
              }
            }

            else
            {
              LODWORD(__src) = (v144 + 1) & 0xFFFFFFFE;
              if ((v146 & 0x80) != 0)
              {
                v145.n128_u64[0] = TIFFSwabLong(&__src, v145.n128_u64[0]);
              }

              (*(a1 + 1224))(*(a1 + 1200), *(a1 + 920), 0, v145);
              if ((*(a1 + 1216))(*(a1 + 1200), &__src, 4) == 4)
              {
                v152 = *(a1 + 912) - 1;
                *(a1 + 912) = v152;
                if (v152)
                {
                  v153 = *(a1 + 920) + 4;
LABEL_381:
                  *(a1 + 920) = v153;
                  goto LABEL_388;
                }

                goto LABEL_387;
              }
            }

            v159 = a1;
            v160 = "TIFFLinkDirectory";
            v8 = "Error writing SubIFD directory link";
LABEL_398:
            TIFFErrorExtR(v159, v160, v8, v9, v10, v11, v12, v13, v212);
            v163 = 0;
            goto LABEL_399;
          }

          if ((v146 & 0x80000) != 0)
          {
            __src = (v144 + 1) & 0xFFFFFFFFFFFFFFFELL;
            if ((v146 & 0x80) != 0)
            {
              v145.n128_u64[0] = TIFFSwabLong8(&__src);
            }

            if (*(a1 + 864))
            {
              if (*(a1 + 40))
              {
                v154 = *(a1 + 40);
              }

              else
              {
                v154 = *(a1 + 864);
              }

              v218 = 0;
              *v219 = 0;
              if (_TIFFSeekOK(a1, v154))
              {
                while (1)
                {
                  if ((*(a1 + 1208))(*(a1 + 1200), v219, 8) != 8)
                  {
                    goto LABEL_375;
                  }

                  if ((*(a1 + 16) & 0x80) != 0)
                  {
                    v155.n128_u64[0] = TIFFSwabLong8(v219);
                  }

                  if (*v219 >> 16)
                  {
                    break;
                  }

                  v156 = v154 + 20 * *v219;
                  (*(a1 + 1224))(*(a1 + 1200), v156 + 8, 0, v155);
                  if ((*(a1 + 1208))(*(a1 + 1200), &v218, 8) != 8)
                  {
LABEL_389:
                    v8 = "Error fetching directory link";
                    goto LABEL_397;
                  }

                  if ((*(a1 + 16) & 0x80) != 0)
                  {
                    v157.n128_u64[0] = TIFFSwabLong8(&v218);
                  }

                  v154 = v218;
                  if (!v218)
                  {
                    (*(a1 + 1224))(*(a1 + 1200), v156 + 8, 0, v157);
                    v166 = (*(a1 + 1216))(*(a1 + 1200), &__src, 8);
                    v8 = "Error writing directory link";
                    v165 = v166 == 8;
                    goto LABEL_393;
                  }

                  v218 = 0;
                  *v219 = 0;
                  if (!_TIFFSeekOK(a1, v154))
                  {
                    goto LABEL_375;
                  }
                }

                v8 = "Sanity check on tag count failed, likely corrupt TIFF";
              }

              else
              {
LABEL_375:
                v8 = "Error fetching directory count";
              }

LABEL_397:
              v159 = a1;
              v160 = "TIFFLinkDirectory";
              goto LABEL_398;
            }

            v162 = *(a1 + 24);
            *(a1 + 864) = v162;
            *(a1 + 40) = v162;
            (*(a1 + 1224))(*(a1 + 1200), 8, 0, v145);
            if ((*(a1 + 1216))(*(a1 + 1200), &__src, 8) == 8)
            {
              goto LABEL_388;
            }

            goto LABEL_386;
          }

          LODWORD(__src) = (v144 + 1) & 0xFFFFFFFE;
          if ((v146 & 0x80) != 0)
          {
            v145.n128_u64[0] = TIFFSwabLong(&__src, v145.n128_u64[0]);
          }

          v147 = *(a1 + 860);
          if (!v147)
          {
            v161 = *(a1 + 24);
            *(a1 + 860) = v161;
            *(a1 + 40) = v161;
            (*(a1 + 1224))(*(a1 + 1200), 4, 0, v145);
            if ((*(a1 + 1216))(*(a1 + 1200), &__src, 4) == 4)
            {
LABEL_388:
              v163 = 1;
LABEL_399:
              if (!v163)
              {
                goto LABEL_425;
              }

LABEL_400:
              if (!a4)
              {
                goto LABEL_402;
              }

LABEL_401:
              *a4 = *(a1 + 24);
              goto LABEL_402;
            }

LABEL_386:
            v160 = *a1;
            v159 = a1;
            v8 = "Error writing TIFF header";
            goto LABEL_398;
          }

          v148 = *(a1 + 40);
          if (v148)
          {
            v149 = v148;
          }

          else
          {
            v149 = v147;
          }

          LOWORD(v218) = 0;
          v219[0] = 0;
          if (!_TIFFSeekOK(a1, v149))
          {
            goto LABEL_375;
          }

          while (1)
          {
            if ((*(a1 + 1208))(*(a1 + 1200), &v218, 2) != 2)
            {
              goto LABEL_375;
            }

            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabShort(&v218);
            }

            v150 = v149 + 2;
            (*(a1 + 1224))(*(a1 + 1200), v149 + 2 + 12 * v218, 0);
            if ((*(a1 + 1208))(*(a1 + 1200), v219, 4) != 4)
            {
              goto LABEL_389;
            }

            if ((*(a1 + 16) & 0x80) != 0)
            {
              v151.n128_u64[0] = TIFFSwabLong(v219, v151.n128_u64[0]);
            }

            v149 = v219[0];
            if (!v219[0])
            {
              break;
            }

            LOWORD(v218) = 0;
            v219[0] = 0;
            if (!_TIFFSeekOK(a1, v149))
            {
              goto LABEL_375;
            }
          }

          (*(a1 + 1224))(*(a1 + 1200), v150 + 12 * v218, 0, v151);
          v164 = (*(a1 + 1216))(*(a1 + 1200), &__src, 4);
          v8 = "Error writing directory link";
          v165 = v164 == 4;
LABEL_393:
          if (!v165)
          {
            goto LABEL_397;
          }

          *(a1 + 40) = *(a1 + 24);
          if (a4)
          {
            goto LABEL_401;
          }
        }

        else
        {
          v143 = *(a1 + 440);
          if (v143 && *(a1 + 432) <= v143)
          {
            goto LABEL_400;
          }

          *(a1 + 24) = ((*(a1 + 1224))(*(a1 + 1200), 0, 2) + 1) & 0xFFFFFFFFFFFFFFFELL;
          if (a4)
          {
            goto LABEL_401;
          }
        }

LABEL_402:
        v167 = *(a1 + 24);
        if ((*(a1 + 18) & 8) != 0)
        {
          v20 = 20 * v217 + 16;
          v168 = v167 + v20;
        }

        else
        {
          v20 = 12 * v217 + 6;
          v168 = (v167 + v20);
        }

        *(a1 + 904) = v168;
        if (v168 < v167 || v168 < v20)
        {
          v193 = "TIFFWriteDirectorySec";
          v194 = "Maximum TIFF file size exceeded";
          goto LABEL_474;
        }

        if (v168)
        {
          *(a1 + 904) = v168 + 1;
        }

        if (v216)
        {
          ++*(a1 + 880);
        }
      }
    }

    v15 = *(a1 + 16);
    if ((v15 & 0x1000) != 0 && (*(a1 + 16) = v15 & 0xFFFFEFFF, !(*(a1 + 1000))(a1)))
    {
      v170 = "Error post-encoding before directory write";
    }

    else
    {
      (*(a1 + 1056))(a1);
      v17 = *(a1 + 16);
      if (*(a1 + 1160) < 1 || (v17 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      if (TIFFFlushData1(a1, v16, v8, v9, v10, v11, v12, v13))
      {
        v17 = *(a1 + 16);
LABEL_9:
        if ((v17 & 0x200) != 0)
        {
          v18 = *(a1 + 1120);
          if (v18)
          {
            free(v18);
            *(a1 + 1160) = 0;
            v14 = 0;
            *(a1 + 1120) = 0u;
            *(a1 + 1136) = 0u;
            v17 = *(a1 + 16);
          }
        }

        *(a1 + 16) = v17 & 0xFFFFFFAF;
        goto LABEL_13;
      }

      v170 = "Error flushing data before directory write";
    }

LABEL_416:
    TIFFErrorExtR(a1, "TIFFWriteDirectorySec", v170, v9, v10, v11, v12, v13, v212);
    return 0;
  }

  return 1;
}

BOOL TIFFRewriteDirectorySec(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 24);
  if (!v9)
  {

    return TIFFWriteDirectorySec(a1, 1, 1u, 0);
  }

  if ((*(a1 + 18) & 8) != 0)
  {
    v14 = *(a1 + 864);
    if (v14 == v9)
    {
      *(a1 + 864) = 0;
      *(a1 + 24) = 0;
      (*(a1 + 1224))(*(a1 + 1200), 8, 0);
      if ((*(a1 + 1216))(*(a1 + 1200), a1 + 864, 8) == 8)
      {
LABEL_45:
        _TIFFRemoveEntryFromDirectoryListByOffset(a1, v9);
        return TIFFWriteDirectorySec(a1, 1, a2, a3);
      }

      goto LABEL_11;
    }

    v18 = "Error fetching directory count";
    while (1)
    {
      v37 = 0;
      v38 = 0;
      if (!_TIFFSeekOK(a1, v14) || (*(a1 + 1208))(*(a1 + 1200), &v38, 8) != 8)
      {
        break;
      }

      if ((*(a1 + 16) & 0x80) != 0)
      {
        v19.n128_u64[0] = TIFFSwabLong8(&v38);
      }

      if (*&v38 >> 16)
      {
        v18 = "Sanity check on tag count failed, likely corrupt TIFF";
        break;
      }

      v20 = v14 + 20 * *&v38;
      (*(a1 + 1224))(*(a1 + 1200), v20 + 8, 0, v19);
      if ((*(a1 + 1208))(*(a1 + 1200), &v37, 8) != 8)
      {
LABEL_46:
        v18 = "Error fetching directory link";
        break;
      }

      if ((*(a1 + 16) & 0x80) != 0)
      {
        v21.n128_u64[0] = TIFFSwabLong8(&v37);
      }

      if (v37 == *(a1 + 24))
      {
        v36 = 0;
        (*(a1 + 1224))(*(a1 + 1200), v20 + 8, 0, v21);
        if ((*(a1 + 1216))(*(a1 + 1200), &v36, 8) == 8)
        {
          *(a1 + 24) = 0;
          *(a1 + 40) = 0;
          v27 = 5;
        }

        else
        {
          TIFFErrorExtR(a1, "TIFFRewriteDirectory", "Error writing directory link", v22, v23, v24, v25, v26, v35);
          v27 = 1;
        }

        if (v27 == 5)
        {
          goto LABEL_45;
        }

        return 0;
      }

      v14 = v37;
    }
  }

  else
  {
    v12 = *(a1 + 860);
    if (v9 == v12)
    {
      *(a1 + 860) = 0;
      *(a1 + 24) = 0;
      (*(a1 + 1224))(*(a1 + 1200), 4, 0);
      if ((*(a1 + 1216))(*(a1 + 1200), a1 + 860, 4) == 4)
      {
        goto LABEL_45;
      }

LABEL_11:
      v15 = *a1;
      v16 = "Error updating TIFF header";
LABEL_14:
      v17 = a1;
      goto LABEL_49;
    }

    if (HIDWORD(v9))
    {
      v15 = "TIFFRewriteDirectory";
      v16 = "tif->tif_diroff exceeds 32 bit range allowed for Classic TIFF";
      goto LABEL_14;
    }

    v18 = "Error fetching directory count";
    while (1)
    {
      LOWORD(v36) = 0;
      v38.i32[0] = 0;
      if (!_TIFFSeekOK(a1, v12) || (*(a1 + 1208))(*(a1 + 1200), &v36, 2) != 2)
      {
        break;
      }

      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(&v36);
      }

      (*(a1 + 1224))(*(a1 + 1200), v12 + 2 + 12 * v36, 0);
      if ((*(a1 + 1208))(*(a1 + 1200), &v38, 4) != 4)
      {
        goto LABEL_46;
      }

      if ((*(a1 + 16) & 0x80) != 0)
      {
        v28.n128_u64[0] = TIFFSwabLong(&v38, v28.n128_u64[0]);
      }

      if (*(a1 + 24) == v38.u32[0])
      {
        LODWORD(v37) = 0;
        (*(a1 + 1224))(*(a1 + 1200), v12 + 2 + 12 * v36, 0, v28);
        if ((*(a1 + 1216))(*(a1 + 1200), &v37, 4) == 4)
        {
          *(a1 + 24) = 0;
          *(a1 + 40) = 0;
          v34 = 3;
        }

        else
        {
          TIFFErrorExtR(a1, "TIFFRewriteDirectory", "Error writing directory link", v29, v30, v31, v32, v33, v35);
          v34 = 1;
        }

        if (v34 != 3)
        {
          return 0;
        }

        goto LABEL_45;
      }

      LODWORD(v12) = v38.i32[0];
    }
  }

  v15 = "TIFFRewriteDirectory";
  v17 = a1;
  v16 = v18;
LABEL_49:
  TIFFErrorExtR(v17, v15, v16, a4, a5, a6, a7, a8, v35);
  return 0;
}

uint64_t _TIFFRewriteField(uint64_t a1, int a2, unsigned int a3, int64_t a4, const void *a5)
{
  v103[3] = *MEMORY[0x1E69E9840];
  v101 = 0;
  v100 = 0;
  v98 = 0;
  v99 = 0;
  TIFFFindField(a1, a2, 0);
  if ((*(a1 + 17) & 8) != 0)
  {
    v28 = "Memory mapped files not currently supported for this operation.";
    goto LABEL_167;
  }

  v15 = *(a1 + 24);
  if (!v15)
  {
    v28 = "Attempt to reset field on directory not already on disk.";
    goto LABEL_167;
  }

  if (!_TIFFSeekOK(a1, v15))
  {
    goto LABEL_166;
  }

  v102 = 0;
  memset(v103, 0, 20);
  v16 = *(a1 + 24);
  if ((*(a1 + 18) & 8) != 0)
  {
    v97 = 0;
    if ((*(a1 + 1208))(*(a1 + 1200), &v97, 8) == 8)
    {
      if ((*(a1 + 16) & 0x80) != 0)
      {
        v24 = TIFFSwabLong8(&v97);
      }

      v102 = v97.i16[0];
      v25 = v16 + 8;
      v26 = 20;
      if (v97.i16[0])
      {
LABEL_9:
        while ((*(a1 + 1208))(*(a1 + 1200), v103, v26) == v26)
        {
          v27 = v103[0].u16[0];
          v101 = v103[0].i16[0];
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(&v101);
            v27 = v101;
          }

          if (v27 != a2)
          {
            v25 += v26;
            if (v102)
            {
              continue;
            }
          }

          goto LABEL_22;
        }

        TIFFErrorExtR(a1, "TIFFResetField", "%s: Can not read TIFF directory entry.", v19, v20, v21, v22, v23, *a1);
        return 0;
      }

      goto LABEL_21;
    }

LABEL_28:
    TIFFErrorExtR(a1, "TIFFResetField", "%s: Can not read TIFF directory count", v19, v20, v21, v22, v23, *a1);
    return 0;
  }

  if ((*(a1 + 1208))(*(a1 + 1200), &v102, 2) != 2)
  {
    goto LABEL_28;
  }

  if ((*(a1 + 16) & 0x80) != 0)
  {
    TIFFSwabShort(&v102);
  }

  v25 = v16 + 2;
  v26 = 12;
  if (v102)
  {
    goto LABEL_9;
  }

LABEL_21:
  v27 = v101;
LABEL_22:
  if (v27 == a2)
  {
    v100 = v103[0].u16[1];
    v29 = *(a1 + 16);
    if ((v29 & 0x80) != 0)
    {
      TIFFSwabShort(&v100);
      v29 = *(a1 + 16);
    }

    if ((v29 & 0x80000) != 0)
    {
      v99 = *(v103 + 4);
      if ((v29 & 0x80) != 0)
      {
        TIFFSwabLong8(&v99);
        v35 = *(a1 + 16);
        v30 = *(&v103[1] + 4);
        v98 = *(&v103[1] + 4);
        if ((v35 & 0x80) != 0)
        {
          TIFFSwabLong8(&v98);
          v30 = v98;
        }

LABEL_37:
        if (*&v30 || v99 || v100)
        {
LABEL_46:
          if (TIFFDataWidth(a3) != 8 || (*(a1 + 18) & 8) != 0)
          {
            if (a3 == 18)
            {
              v36 = v100;
              v37 = v100 == 13;
              v38 = 18;
            }

            else
            {
              if (a3 != 17)
              {
                v34 = a3;
                if (a3 == 16 && v100 <= 0x10u && ((1 << v100) & 0x10018) != 0)
                {
                  v34 = v100;
                }

                goto LABEL_67;
              }

              v36 = v100;
              v37 = v100 == 9;
              v38 = 17;
            }

            if (v37)
            {
              v34 = v36;
            }

            else
            {
              v34 = v38;
            }
          }

          else if (a3 == 18)
          {
            v34 = 13;
          }

          else if (a3 == 17)
          {
            v34 = 9;
          }

          else
          {
            v34 = a3;
            if (a3 == 16)
            {
              if (v100 == 3)
              {
                v34 = 3;
              }

              else
              {
                v34 = 4;
              }
            }
          }

LABEL_67:
          v39 = TIFFDataWidth(v34);
          result = _TIFFCheckMalloc(a1, a4, v39, "for field buffer.", v40, v41, v42, v43);
          if (!result)
          {
            return result;
          }

          v45 = result;
          if (v34 == a3)
          {
            v46 = TIFFDataWidth(a3);
            memcpy(v45, a5, v46 * a4);
            goto LABEL_70;
          }

          if (a3 == 17 && v34 == 9)
          {
            if (a4 < 1)
            {
              goto LABEL_70;
            }

            v47 = 0;
            while (1)
            {
              v48 = *(a5 + v47);
              *(result + 4 * v47) = v48;
              if (v48 != v48)
              {
                goto LABEL_94;
              }

              if (a4 == ++v47)
              {
                goto LABEL_70;
              }
            }
          }

          if (a3 == 16 && v34 == 4 || a3 == 18 && v34 == 13)
          {
            if (a4 < 1)
            {
              goto LABEL_70;
            }

            v58 = 0;
            while (1)
            {
              v59 = *(a5 + v58);
              *(result + 4 * v58) = v59;
              if (HIDWORD(v59))
              {
                break;
              }

              if (a4 == ++v58)
              {
                goto LABEL_70;
              }
            }

LABEL_94:
            free(result);
            v28 = "Value exceeds 32bit range of output type.";
            goto LABEL_167;
          }

          if (a3 == 16 && v34 == 3)
          {
            if (a4 >= 1)
            {
              v69 = 0;
              while (1)
              {
                v70 = *(a5 + v69);
                *(result + 2 * v69) = v70;
                if (v70 >= 0x10000)
                {
                  break;
                }

                if (a4 == ++v69)
                {
                  goto LABEL_70;
                }
              }

              free(result);
              v28 = "Value exceeds 16bit range of output type.";
              goto LABEL_167;
            }

LABEL_70:
            if (TIFFDataWidth(v34) >= 2 && (*(a1 + 16) & 0x80) != 0)
            {
              if (TIFFDataWidth(v34) == 2)
              {
                TIFFSwabArrayOfShort(v45, a4);
              }

              else if (TIFFDataWidth(v34) == 4)
              {
                TIFFSwabArrayOfLong(v45, a4, v68);
              }

              else if (TIFFDataWidth(v34) == 8)
              {
                TIFFSwabArrayOfLong8(v45, a4);
              }
            }

            v71 = *(a1 + 16);
            v72 = TIFFDataWidth(v34) * a4;
            if ((v71 & 0x80000) != 0)
            {
              if (v72 <= 8)
              {
                v73 = 0;
                v74 = (v25 + 12);
                goto LABEL_117;
              }
            }

            else if (v72 <= 4)
            {
              v73 = 0;
              v74 = (v25 + 8);
LABEL_117:
              v98 = v74;
              goto LABEL_119;
            }

            v73 = 1;
LABEL_119:
            if (a2 > 323)
            {
              if (a2 == 325)
              {
LABEL_128:
                if (!*(a1 + 296) && !*(a1 + 290) && !*(a1 + 304))
                {
                  v75 = (a1 + 296);
                  v76 = (a1 + 290);
LABEL_138:
                  *v76 = v34;
                  *v75 = a4;
                }

LABEL_139:
                if (v99 == a4 && v100 == v34)
                {
                  if (_TIFFSeekOK(a1, *&v98))
                  {
                    v77 = *(a1 + 1216);
                    v78 = *(a1 + 1200);
                    v79 = TIFFDataWidth(v34);
                    v80 = v77(v78, v45, v79 * a4);
                    v81 = TIFFDataWidth(v34) * a4;
                    free(v45);
                    if (v80 == v81)
                    {
                      return 1;
                    }

                    goto LABEL_147;
                  }

                  free(v45);
                }

                else
                {
                  if (v73)
                  {
                    v98 = (*(a1 + 1224))(*(a1 + 1200), 0, 2);
                    v82 = *(a1 + 1216);
                    v83 = *(a1 + 1200);
                    v84 = TIFFDataWidth(v34);
                    v85 = v82(v83, v45, v84 * a4);
                    if (v85 != TIFFDataWidth(v34) * a4)
                    {
                      free(v45);
LABEL_147:
                      v28 = "Error writing directory link";
                      goto LABEL_167;
                    }
                  }

                  else if (TIFFDataWidth(v34) * a4 == 4)
                  {
                    v97.i32[0] = 0;
                    TIFFDataWidth(v34);
                    __memcpy_chk();
                    v98 = v97.u32[0];
                  }

                  else
                  {
                    TIFFDataWidth(v34);
                    __memcpy_chk();
                  }

                  free(v45);
                  v100 = v34;
                  v99 = a4;
                  v103[0].i16[1] = v34;
                  v87 = *(a1 + 16);
                  if ((v87 & 0x80) != 0)
                  {
                    TIFFSwabShort(v103 + 2);
                    v87 = *(a1 + 16);
                  }

                  if ((v87 & 0x80000) != 0)
                  {
                    *(v103 + 4) = v99;
                    if ((v87 & 0x80) != 0)
                    {
                      TIFFSwabLong8((v103 + 4));
                      v90 = *(a1 + 16);
                      *(&v103[1] + 4) = v98;
                      if ((v90 & 0x80) != 0)
                      {
                        TIFFSwabLong8((&v103[1] + 4));
                      }
                    }

                    else
                    {
                      *(&v103[1] + 4) = v98;
                    }
                  }

                  else
                  {
                    v103[0].i32[1] = v99;
                    if ((v87 & 0x80) != 0)
                    {
                      v88 = TIFFSwabLong(v103 + 1, v86);
                      v89 = *(a1 + 16);
                      v103[1].i32[0] = v98.i32[0];
                      if ((v89 & 0x80) != 0)
                      {
                        TIFFSwabLong(&v103[1], v88);
                      }
                    }

                    else
                    {
                      v103[1].i32[0] = v98.i32[0];
                    }
                  }

                  if (_TIFFSeekOK(a1, v25))
                  {
                    if ((*(a1 + 1216))(*(a1 + 1200), v103, v26) == v26)
                    {
                      return 1;
                    }

                    TIFFErrorExtR(a1, "TIFFResetField", "%s: Can not write TIFF directory entry.", v91, v92, v93, v94, v95, *a1);
                    return 0;
                  }
                }

LABEL_166:
                v96 = *a1;
                v28 = "%s: Seek error accessing TIFF directory";
                goto LABEL_167;
              }

              if (a2 != 324)
              {
                goto LABEL_139;
              }
            }

            else if (a2 != 273)
            {
              goto LABEL_127;
            }

            if (!*(a1 + 264) && !*(a1 + 258) && !*(a1 + 272))
            {
              v75 = (a1 + 264);
              v76 = (a1 + 258);
              goto LABEL_138;
            }

LABEL_127:
            if (a2 != 279)
            {
              goto LABEL_139;
            }

            goto LABEL_128;
          }

          v28 = "Unhandled type conversion.";
LABEL_167:
          TIFFErrorExtR(a1, "TIFFResetField", v28, v10, v11, v12, v13, v14, v96);
          return 0;
        }

        if (a2 == 324 || a2 == 273)
        {
          if ((*(a1 + 16) & 0x80000) != 0)
          {
            v33 = 16;
          }

          else
          {
            v33 = 4;
          }

          goto LABEL_45;
        }

        if (a2 == 279 && a4 > 1)
        {
          v49 = _cg_TIFFStripSize64(a1, v17, v18, v19, v20, v21, v22, v23);
          if (!_WriteAsType(a1, v49, 0xFFFFFFFFuLL))
          {
            v57 = _cg_TIFFStripSize64(a1, v50, v51, v52, v53, v54, v55, v56);
            goto LABEL_134;
          }
        }

        else
        {
          v33 = 16;
          if (a2 != 325 || a4 <= 1)
          {
            goto LABEL_45;
          }

          v60 = _cg_TIFFTileSize64(a1, v17, v18, v19, v20, v21, v22, v23);
          if (!_WriteAsType(a1, v60, 0xFFFFFFFFuLL))
          {
            v57 = _cg_TIFFTileSize64(a1, v61, v62, v63, v64, v65, v66, v67);
LABEL_134:
            if (_WriteAsType(a1, v57, 0xFFFFuLL))
            {
              v33 = 4;
            }

            else
            {
              v33 = 3;
            }

            goto LABEL_45;
          }
        }

        v33 = 16;
LABEL_45:
        v100 = v33;
        goto LABEL_46;
      }

      v30 = *(&v103[1] + 4);
    }

    else
    {
      v97.i32[0] = v103[0].i32[1];
      if ((v29 & 0x80) != 0)
      {
        v31 = TIFFSwabLong(&v97, v24);
        v32 = *(a1 + 16);
        v99 = v97.u32[0];
        v30.i32[0] = v103[1].i32[0];
        v97.i32[0] = v103[1].i32[0];
        if ((v32 & 0x80) != 0)
        {
          TIFFSwabLong(&v97, v31);
          v30.i32[0] = v97.i32[0];
        }
      }

      else
      {
        v99 = v103[0].u32[1];
        v30.i32[0] = v103[1].i32[0];
      }

      v30 = v30.u32[0];
    }

    v98 = v30;
    goto LABEL_37;
  }

  TIFFErrorExtR(a1, "TIFFResetField", "%s: Could not find tag %hu.", v19, v20, v21, v22, v23, *a1);
  return 0;
}

uint64_t TIFFWriteDirectoryTagShortLong(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int32 a5, uint8x8_t a6)
{
  if (HIWORD(a5))
  {
    return TIFFWriteDirectoryTagCheckedLong(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    return TIFFWriteDirectoryTagCheckedShort(a1, a2, a3, a4, a5);
  }
}

uint64_t TIFFWriteDirectoryTagRational(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a9 >= 0.0)
  {
    if (a3)
    {
      DoubleToRational(&v16, &v17, a9, a3, a4, a5, a6, a7, a8, 0);
      if ((*(a1 + 16) & 0x80) != 0)
      {
        v15 = TIFFSwabLong(&v16, v14);
        TIFFSwabLong(&v17, v15);
      }

      return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 5, 1, 8, &v16);
    }

    else
    {
      *(a1 + 432) += ~*(a1 + 18) & 8;
      ++*a2;
      return 1;
    }
  }

  else
  {
    TIFFErrorExtR(a1, "TIFFWriteDirectoryTagCheckedRational", "Negative value is illegal", a4, a5, a6, a7, a8, v16);
    return 0;
  }
}

uint64_t TIFFWriteDirectoryTagShortPerSample(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, __int16 a5)
{
  v9 = *(a1 + 130);
  if (a3)
  {
    v11 = malloc_type_malloc(2 * *(a1 + 130), 0x1000040BDFB0063uLL);
    if (v11)
    {
      v17 = v11;
      if (*(a1 + 130))
      {
        v18 = 0;
        v19 = v11;
        do
        {
          *v19++ = a5;
          ++v18;
          v20 = *(a1 + 130);
        }

        while (v18 < v20);
      }

      else
      {
        v20 = 0;
      }

      v22 = TIFFWriteDirectoryTagCheckedShortArray(a1, a2, a3, a4, v20, v11);
      free(v17);
      return v22;
    }

    else
    {
      TIFFErrorExtR(a1, "TIFFWriteDirectoryTagShortPerSample", "Out of memory", v12, v13, v14, v15, v16, v23);
      return 0;
    }
  }

  else
  {

    return TIFFWriteDirectoryTagCheckedShortArray(a1, a2, 0, a4, v9, 0);
  }
}

uint64_t TIFFWriteDirectoryTagLongLong8Array(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, int8x8_t *__src, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 424))
  {
    if (a3)
    {

      return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 0, 0, 0, 0);
    }

    else
    {
      ++*a2;
      return 1;
    }
  }

  if ((*(a1 + 18) & 8) != 0)
  {
    if (a4 == 279 && a5 >= 2)
    {
      v15 = _cg_TIFFStripSize64(a1, a2, a3, a4, a5, __src, a7, a8);
    }

    else
    {
      if (a4 != 325 || a5 < 2)
      {
        goto LABEL_15;
      }

      v15 = _cg_TIFFTileSize64(a1, a2, a3, a4, a5, __src, a7, a8);
    }

    if (_WriteAsType(a1, v15, 0xFFFFFFFFuLL))
    {
LABEL_15:

      return TIFFWriteDirectoryTagCheckedLong8Array(a1, a2, a3, a4, a5, __src, a7, a8);
    }
  }

  v16 = a5;
  if (a4 == 279 && a5 >= 2)
  {
    v17 = _cg_TIFFStripSize64(a1, a2, a3, a4, a5, __src, a7, a8);
  }

  else
  {
    if (a4 != 325 || a5 < 2)
    {
      goto LABEL_25;
    }

    v17 = _cg_TIFFTileSize64(a1, a2, a3, a4, a5, __src, a7, a8);
  }

  if (!_WriteAsType(a1, v17, 0xFFFFuLL))
  {
    v30 = malloc_type_malloc(2 * a5, 0x1000040BDFB0063uLL);
    if (v30)
    {
      v31 = v30;
      v32 = 0;
      while (1)
      {
        v33 = __src[v32];
        if (v33 >= 0x10000)
        {
          break;
        }

        *(v30 + v32++) = v33;
        if (v16 == v32)
        {
          v28 = TIFFWriteDirectoryTagCheckedShortArray(a1, a2, a3, a4, v16, v30);
          v29 = v31;
          goto LABEL_36;
        }
      }

      TIFFErrorExtR(a1, "TIFFWriteDirectoryTagLongLong8Array", "Attempt to write value larger than 0xFFFF in SHORT array.", v19, v20, v21, v22, v23, v35);
      v34 = v31;
      goto LABEL_40;
    }

LABEL_37:
    TIFFErrorExtR(a1, "TIFFWriteDirectoryTagLongLong8Array", "Out of memory", v19, v20, v21, v22, v23, v35);
    return 0;
  }

LABEL_25:
  v18 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
  if (!v18)
  {
    goto LABEL_37;
  }

  v25 = v18;
  if (a5)
  {
    v26 = 0;
    while (1)
    {
      v27 = __src[v26];
      if (HIDWORD(*&v27))
      {
        break;
      }

      v18[v26++] = v27.i32[0];
      if (a5 == v26)
      {
        goto LABEL_30;
      }
    }

    TIFFErrorExtR(a1, "TIFFWriteDirectoryTagLongLong8Array", "Attempt to write value larger than 0xFFFFFFFF in LONG array.", v19, v20, v21, v22, v23, v35);
    v34 = v25;
LABEL_40:
    free(v34);
    return 0;
  }

LABEL_30:
  v28 = TIFFWriteDirectoryTagCheckedLongArray(a1, a2, a3, a4, a5, v18, v24);
  v29 = v25;
LABEL_36:
  free(v29);
  return v28;
}

uint64_t TIFFWriteDirectoryTagSampleformatArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, int8x8_t *a6)
{
  v12 = malloc_type_malloc(8 * a5, 0x100004000313F17uLL);
  if (v12)
  {
    v19 = v12;
    v20 = a5;
    v21 = *(a1 + 118);
    switch(v21)
    {
      case 1:
        v30 = *(a1 + 116);
        if (v30 > 8)
        {
          if (v30 >= 0x11)
          {
            if (a5)
            {
              v18 = 0x41EFFFFFFFE00000;
              v43 = v12;
              do
              {
                v44 = *a6;
                if (*a6 >= 0.0)
                {
                  v45 = v44;
                  if (v44 > 4294967300.0)
                  {
                    v45 = -1;
                  }
                }

                else
                {
                  v45 = 0;
                }

                *v43++ = v45;
                ++a6;
                --v20;
              }

              while (v20);
            }

            v24 = TIFFWriteDirectoryTagCheckedLongArray(a1, a2, a3, a4, a5, v12, v18);
          }

          else
          {
            if (a5)
            {
              v37 = v12;
              do
              {
                v38 = *a6;
                if (*a6 >= 0.0)
                {
                  v39 = v38;
                  if (v38 > 65535.0)
                  {
                    LOWORD(v39) = -1;
                  }
                }

                else
                {
                  LOWORD(v39) = 0;
                }

                *v37 = v39;
                v37 = (v37 + 2);
                ++a6;
                --v20;
              }

              while (v20);
            }

            v24 = TIFFWriteDirectoryTagCheckedShortArray(a1, a2, a3, a4, a5, v12);
          }
        }

        else
        {
          if (a5)
          {
            v31 = v12;
            do
            {
              v32 = *a6;
              if (*a6 >= 0.0)
              {
                v33 = v32;
                if (v32 > 255.0)
                {
                  LOBYTE(v33) = -1;
                }
              }

              else
              {
                LOBYTE(v33) = 0;
              }

              *v31 = v33;
              v31 = (v31 + 1);
              ++a6;
              --v20;
            }

            while (v20);
          }

          v24 = TIFFWriteDirectoryTagByteArray(a1, a2, a3, a4, a5, v12);
        }

        break;
      case 2:
        v26 = *(a1 + 116);
        if (v26 > 8)
        {
          if (v26 >= 0x11)
          {
            if (a5)
            {
              v18 = 0x41DFFFFFFFC00000;
              v40 = v12;
              do
              {
                v41 = *a6;
                if (*a6 <= 2147483650.0)
                {
                  v42 = v41;
                  if (v41 < -2147483650.0)
                  {
                    v42 = 0x80000000;
                  }
                }

                else
                {
                  v42 = 0x7FFFFFFF;
                }

                *v40++ = v42;
                ++a6;
                --v20;
              }

              while (v20);
            }

            v24 = TIFFWriteDirectoryTagCheckedSlongArray(a1, a2, a3, a4, a5, v12, v18);
          }

          else
          {
            if (a5)
            {
              v34 = v12;
              do
              {
                v35 = *a6;
                if (*a6 <= 32767.0)
                {
                  v36 = v35;
                  if (v35 < -32768.0)
                  {
                    LOWORD(v36) = 0x8000;
                  }
                }

                else
                {
                  LOWORD(v36) = 0x7FFF;
                }

                *v34 = v36;
                v34 = (v34 + 2);
                ++a6;
                --v20;
              }

              while (v20);
            }

            v24 = TIFFWriteDirectoryTagSshortArray(a1, a2, a3, a4, a5, v12);
          }
        }

        else
        {
          if (a5)
          {
            v27 = v12;
            do
            {
              v28 = *a6;
              if (*a6 <= 127.0)
              {
                v29 = v28;
                if (v28 < -128.0)
                {
                  LOBYTE(v29) = 0x80;
                }
              }

              else
              {
                LOBYTE(v29) = 127;
              }

              *v27 = v29;
              v27 = (v27 + 1);
              ++a6;
              --v20;
            }

            while (v20);
          }

          v24 = TIFFWriteDirectoryTagSbyteArray(a1, a2, a3, a4, a5, v12);
        }

        break;
      case 3:
        if (*(a1 + 116) > 0x20u)
        {
          v24 = TIFFWriteDirectoryTagDoubleArray(a1, a2, a3, a4, a5, a6);
        }

        else
        {
          if (a5)
          {
            v22 = v12;
            do
            {
              v23 = *a6++;
              *v18.i32 = _TIFFClampDoubleToFloat(*&v23);
              *v22++ = v18.i32[0];
              --v20;
            }

            while (v20);
          }

          v24 = TIFFWriteDirectoryTagFloatArray(a1, a2, a3, a4, a5, v19, v18);
        }

        break;
      default:
        v25 = 0;
LABEL_66:
        free(v19);
        return v25;
    }

    v25 = v24;
    goto LABEL_66;
  }

  TIFFErrorExtR(a1, "TIFFWriteDirectoryTagSampleformatArray", "Out of memory", v13, v14, v15, v16, v17, v47);
  return 0;
}

uint64_t TIFFWriteDirectoryTagRationalArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, float *a6)
{
  v8 = (2 * a5);
  v9 = 4 * v8;
  if (a3)
  {
    v14 = malloc_type_malloc(v9, 0x100004052888210uLL);
    if (v14)
    {
      v22 = v14;
      if (a5)
      {
        v23 = a5;
        v24 = v14;
        do
        {
          v25 = *a6++;
          DoubleToRational(v24, v24 + 1, v25, v15, v16, v17, v18, v19, v20, v29);
          v24 += 2;
          --v23;
        }

        while (v23);
      }

      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabArrayOfLong(v22, v8, v21);
      }

      v26 = TIFFWriteDirectoryTagData(a1, a2, a3, a4, 5, a5, (8 * a5), v22);
      free(v22);
      return v26;
    }

    else
    {
      TIFFErrorExtR(a1, "TIFFWriteDirectoryTagCheckedRationalArray", "Out of memory", v16, v17, v18, v19, v20, v29);
      return 0;
    }
  }

  else
  {
    v28 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v28 = 4;
    }

    if (v9 > v28)
    {
      *(a1 + 432) += v9;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagAscii(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t __src)
{
  if (a3)
  {
    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 2, a5, a5, __src);
  }

  v7 = 8;
  if ((*(a1 + 18) & 8) == 0)
  {
    v7 = 4;
  }

  if (v7 < a5)
  {
    *(a1 + 432) += (a5 & 1) + a5;
  }

  ++*a2;
  return 1;
}

uint64_t TIFFWriteDirectoryTagUndefinedArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t __src)
{
  if (a3)
  {
    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 7, a5, a5, __src);
  }

  v7 = 8;
  if ((*(a1 + 18) & 8) == 0)
  {
    v7 = 4;
  }

  if (v7 < a5)
  {
    *(a1 + 432) += (a5 & 1) + a5;
  }

  ++*a2;
  return 1;
}

uint64_t TIFFWriteDirectoryTagByteArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t __src)
{
  if (a3)
  {
    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 1, a5, a5, __src);
  }

  v7 = 8;
  if ((*(a1 + 18) & 8) == 0)
  {
    v7 = 4;
  }

  if (v7 < a5)
  {
    *(a1 + 432) += (a5 & 1) + a5;
  }

  ++*a2;
  return 1;
}

uint64_t TIFFWriteDirectoryTagSbyteArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t __src)
{
  if (a3)
  {
    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 6, a5, a5, __src);
  }

  v7 = 8;
  if ((*(a1 + 18) & 8) == 0)
  {
    v7 = 4;
  }

  if (v7 < a5)
  {
    *(a1 + 432) += (a5 & 1) + a5;
  }

  ++*a2;
  return 1;
}

uint64_t TIFFWriteDirectoryTagSshortArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t __src)
{
  if ((a5 & 0x80000000) != 0)
  {
    TIFFWriteDirectoryTagSshortArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfShort(__src, a5);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 8, a5, (2 * a5), __src);
  }

  else
  {
    v13 = (2 * a5);
    v14 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v14 = 4;
    }

    if (v14 < v13)
    {
      *(a1 + 432) += v13;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagFloatArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, __int32 *__src, uint8x8_t a7)
{
  if (a5 >> 30)
  {
    TIFFWriteDirectoryTagFloatArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(__src, a5, a7);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 11, a5, (4 * a5), __src);
  }

  else
  {
    v14 = (4 * a5);
    v15 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v15 = 4;
    }

    if (v15 < v14)
    {
      *(a1 + 432) += v14;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagDoubleArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, int8x8_t *__src)
{
  if (a5 >> 29)
  {
    TIFFWriteDirectoryTagDoubleArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong8(__src, a5);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 12, a5, (8 * a5), __src);
  }

  else
  {
    v13 = (8 * a5);
    v14 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v14 = 4;
    }

    if (v14 < v13)
    {
      *(a1 + 432) += v13;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedShort(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, __int16 a5)
{
  if (a3)
  {
    __src = a5;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabShort(&__src);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 3, 1, 2, &__src);
  }

  else
  {
    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedLong(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, __int32 a5, uint8x8_t a6)
{
  if (a3)
  {
    __src = a5;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(&__src, a6);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 4, 1, 4, &__src);
  }

  else
  {
    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagData(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t __n, uint64_t __src)
{
  v9 = __n;
  v12 = *a2;
  if (v12)
  {
    v13 = 0;
    v14 = a3;
    while (1)
    {
      v15 = *v14;
      v14 += 16;
      v16 = v15 > a4;
      if (v15 == a4)
      {
        TIFFWriteDirectoryTagData_cold_1();
      }

      if (v16)
      {
        break;
      }

      if (v12 == ++v13)
      {
        LODWORD(v13) = *a2;
        goto LABEL_11;
      }
    }

    if (v12 > v13)
    {
      v17 = &a3[16 * v12];
      do
      {
        --v12;
        v18 = *(v17 - 1);
        *v17 = *(v17 - 2);
        *(v17 + 1) = v18;
        v17 -= 16;
      }

      while (v12 > v13);
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

LABEL_11:
  v19 = &a3[16 * v13];
  v19->i16[0] = a4;
  v19->i16[1] = a5;
  v19[1] = a6;
  v19[2] = 0;
  v20 = v19 + 2;
  v21 = *(a1 + 16);
  if ((v21 & 0x80000) != 0)
  {
    v22 = 8;
  }

  else
  {
    v22 = 4;
  }

  if (v22 >= __n)
  {
    if (!__n || !__src)
    {
      goto LABEL_27;
    }

    v27 = __n;
    v28 = v20;
    v29 = __src;
LABEL_26:
    _TIFFmemcpy(v28, v29, v27);
LABEL_27:
    ++*a2;
    return 1;
  }

  v23 = *(a1 + 904);
  if ((v21 & 0x80000) != 0)
  {
    v24 = v23 + __n;
  }

  else
  {
    v24 = (v23 + __n);
  }

  if (v24 >= v23 && v24 >= __n)
  {
    if (!_TIFFSeekOK(a1, *(a1 + 904)))
    {
      goto LABEL_35;
    }

    if ((v9 & 0x80000000) != 0)
    {
      v26 = "libtiff does not allow writing more than 2147483647 bytes in a tag";
      goto LABEL_37;
    }

    if ((*(a1 + 1216))(*(a1 + 1200), __src, v9) != v9)
    {
LABEL_35:
      v26 = "IO error writing tag data";
      goto LABEL_37;
    }

    *(a1 + 904) = (v24 & 1) + v24;
    v32 = *(a1 + 16);
    if ((v32 & 0x80000) != 0)
    {
      *v20 = v23;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong8(v20);
      }

      goto LABEL_27;
    }

    v34 = v23;
    if ((v32 & 0x80) != 0)
    {
      TIFFSwabLong(&v34, v31);
    }

    v29 = &v34;
    v28 = v20;
    v27 = 4;
    goto LABEL_26;
  }

  v26 = "Maximum TIFF file size exceeded";
LABEL_37:
  TIFFErrorExtR(a1, "TIFFWriteDirectoryTagData", v26, a4, a5, a6, __n, __src, v33);
  return 0;
}

_DWORD *DoubleToRational(_DWORD *result, int *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v11 = result;
  if (a3 < 0.0)
  {
    *a2 = 0;
    *result = 0;

    return TIFFErrorExt(0, "TIFFLib: DoubleToRational()", " Negative Value for Unsigned Rational given.", a5, a6, a7, a8, a9, a10);
  }

  if (a3 > 4294967300.0)
  {
    *result = -1;
    *a2 = 0;
    return result;
  }

  if (a3 == a3)
  {
    *result = a3;
    v13 = 1;
LABEL_11:
    *a2 = v13;
    return result;
  }

  if (a3 < 2.32830644e-10)
  {
    *result = 0;
    v13 = -1;
    goto LABEL_11;
  }

  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  ToRationalEuclideanGCD(0, 0, &v27, &v26, a3);
  result = ToRationalEuclideanGCD(0, 1, &v25, &v24, a3);
  v19 = v26;
  v20 = v27;
  v21 = v24;
  if (HIDWORD(v27) || HIDWORD(v26) || HIDWORD(v25) || HIDWORD(v24))
  {
    TIFFErrorExt(0, "TIFFLib: DoubleToRational()", " Num or Denom exceeds ULONG: val=%14.6f, num=%12llu, denom=%12llu | num2=%12llu, denom2=%12llu", v14, v15, v16, v17, v18, SLOBYTE(a3));
    __assert_rtn("DoubleToRational", "tif_dirwrite.c", 2811, "0");
  }

  v22 = vabdd_f64(a3, v27 / v26);
  v23 = vabdd_f64(a3, v25 / v24);
  if (v22 >= v23)
  {
    v20 = v25;
  }

  *v11 = v20;
  if (v22 >= v23)
  {
    v19 = v21;
  }

  *a2 = v19;
  return result;
}

unint64_t ToRationalEuclideanGCD(int a1, int a2, unint64_t *a3, unint64_t *a4, double a5)
{
  v5 = 0x3FFFFFFFFFFFFFFFLL;
  if (a2)
  {
    v5 = 0x3FFFFFFFLL;
  }

  v6 = v5;
  v7 = 0x7FFFFFFFLL;
  if (!a1)
  {
    v7 = 0xFFFFFFFFLL;
  }

  if (floor(a5) == a5 || v6 <= a5)
  {
    v9 = 1;
  }

  else
  {
    v9 = 1;
    do
    {
      v9 *= 2;
      a5 = a5 + a5;
    }

    while (a5 != floor(a5) && a5 < v6 && v9 < v5);
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = a5;
  v16 = 1;
  v17 = 1;
  while (1)
  {
    result = v9;
    v19 = v15 / v9;
    v20 = v16 + v19 * v13;
    if (v20 >= v7)
    {
      break;
    }

    v21 = v14 + v19 * v17;
    if (v12 <= 0x3E)
    {
      v9 = v15 - v19 * result;
      ++v12;
      v15 = result;
      v16 = v13;
      v13 = v20;
      v14 = v17;
      v17 = v21;
      if (v9)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  v22 = (v7 - v16) / v13;
  if (v19 <= 2 * v22)
  {
    v20 = v16 + v22 * v13;
    v21 = v14 + v22 * v17;
  }

  else
  {
    v21 = v17;
    v20 = v13;
  }

LABEL_27:
  while (v21 > v7 || v20 > v7)
  {
    v21 >>= 1;
    v20 >>= 1;
  }

  *a3 = v21;
  *a4 = v20;
  return result;
}

uint64_t TIFFWriteDirectoryTagCheckedShortArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t __src)
{
  if ((a5 & 0x80000000) != 0)
  {
    TIFFWriteDirectoryTagCheckedShortArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfShort(__src, a5);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 3, a5, (2 * a5), __src);
  }

  else
  {
    v13 = (2 * a5);
    v14 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v14 = 4;
    }

    if (v14 < v13)
    {
      *(a1 + 432) += v13;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedLong8Array(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, int8x8_t *__src, uint64_t a7, uint64_t a8)
{
  if (a5 >> 29)
  {
    TIFFWriteDirectoryTagCheckedLong8Array_cold_1();
  }

  v9 = *(a1 + 16);
  if ((v9 & 0x80000) != 0)
  {
    if (a3)
    {
      if ((v9 & 0x80) != 0)
      {
        TIFFSwabArrayOfLong8(__src, a5);
      }

      return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 16, a5, (8 * a5), __src);
    }

    else
    {
      if (a5 >= 2)
      {
        *(a1 + 432) += (8 * a5);
      }

      ++*a2;
      return 1;
    }
  }

  else
  {
    TIFFErrorExtR(a1, "TIFFWriteDirectoryTagCheckedLong8Array", "LONG8 not allowed for ClassicTIFF", a4, a5, __src, a7, a8, v16);
    return 0;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedLongArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, __int32 *__src, uint8x8_t a7)
{
  if (a5 >> 30)
  {
    TIFFWriteDirectoryTagCheckedLongArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(__src, a5, a7);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 4, a5, (4 * a5), __src);
  }

  else
  {
    v14 = (4 * a5);
    v15 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v15 = 4;
    }

    if (v15 < v14)
    {
      *(a1 + 432) += v14;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedIfdArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, __int32 *__src, uint8x8_t a7)
{
  if (a5 >> 30)
  {
    TIFFWriteDirectoryTagCheckedIfdArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(__src, a5, a7);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 13, a5, (4 * a5), __src);
  }

  else
  {
    v14 = (4 * a5);
    v15 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v15 = 4;
    }

    if (v15 < v14)
    {
      *(a1 + 432) += v14;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedIfd8Array(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, int8x8_t *__src)
{
  if (a5 >> 29)
  {
    TIFFWriteDirectoryTagCheckedIfd8Array_cold_2();
  }

  v7 = *(a1 + 16);
  if ((v7 & 0x80000) == 0)
  {
    TIFFWriteDirectoryTagCheckedIfd8Array_cold_1();
  }

  if (a3)
  {
    if ((v7 & 0x80) != 0)
    {
      TIFFSwabArrayOfLong8(__src, a5);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 18, a5, (8 * a5), __src);
  }

  else
  {
    if (a5 >= 2)
    {
      *(a1 + 432) += (8 * a5);
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedSlongArray(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, __int32 *__src, uint8x8_t a7)
{
  if (a5 >> 30)
  {
    TIFFWriteDirectoryTagCheckedSlongArray_cold_1();
  }

  if (a3)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(__src, a5, a7);
    }

    return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 9, a5, (4 * a5), __src);
  }

  else
  {
    v14 = (4 * a5);
    v15 = 8;
    if ((*(a1 + 18) & 8) == 0)
    {
      v15 = 4;
    }

    if (v15 < v14)
    {
      *(a1 + 432) += v14;
    }

    ++*a2;
    return 1;
  }
}

uint64_t TIFFWriteDirectoryTagCheckedSlong8Array(uint64_t a1, _DWORD *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, int8x8_t *__src, uint64_t a7, uint64_t a8)
{
  if (a5 >> 29)
  {
    TIFFWriteDirectoryTagCheckedSlong8Array_cold_1();
  }

  v9 = *(a1 + 16);
  if ((v9 & 0x80000) != 0)
  {
    if (a3)
    {
      if ((v9 & 0x80) != 0)
      {
        TIFFSwabArrayOfLong8(__src, a5);
      }

      return TIFFWriteDirectoryTagData(a1, a2, a3, a4, 17, a5, (8 * a5), __src);
    }

    else
    {
      if (a5 >= 2)
      {
        *(a1 + 432) += (8 * a5);
      }

      ++*a2;
      return 1;
    }
  }

  else
  {
    TIFFErrorExtR(a1, "TIFFWriteDirectoryTagCheckedSlong8Array", "SLONG8 not allowed for ClassicTIFF", a4, a5, __src, a7, a8, v16);
    return 0;
  }
}

_DWORD *DoubleToSrational(_DWORD *result, int *a2, double a3)
{
  v4 = result;
  if (a3 >= 0.0)
  {
    v5 = a3;
  }

  else
  {
    v5 = -a3;
  }

  if (a3 >= 0.0)
  {
    v6 = 1;
  }

  else
  {
    v6 = -1;
  }

  if (v5 <= 2147483650.0)
  {
    if (v5 == v5)
    {
      *result = (v5 * v6);
      v7 = 1;
    }

    else if (v5 >= 4.65661288e-10)
    {
      v21 = 0;
      v19 = 0;
      v20 = 0;
      v18 = 0;
      ToRationalEuclideanGCD(1, 0, &v21, &v20, v5);
      result = ToRationalEuclideanGCD(1, 1, &v19, &v18, v5);
      v13 = v21;
      v7 = v20;
      v14 = v18;
      if (v21 >> 31 || v20 >> 31 || v19 >> 31 || v18 >> 31)
      {
        v17 = v5 * v6;
        TIFFErrorExt(0, "TIFFLib: DoubleToSrational()", " Num or Denom exceeds LONG: val=%14.6f, num=%12llu, denom=%12llu | num2=%12llu, denom2=%12llu", v8, v9, v10, v11, v12, SLOBYTE(v17));
        __assert_rtn("DoubleToSrational", "tif_dirwrite.c", 2887, "0");
      }

      v15 = vabdd_f64(v5, v21 / v20);
      v16 = vabdd_f64(v5, v19 / v18);
      if (v15 >= v16)
      {
        v13 = v19;
      }

      *v4 = v6 * v13;
      if (v15 >= v16)
      {
        v7 = v14;
      }
    }

    else
    {
      *result = 0;
      v7 = 0x7FFFFFFF;
    }
  }

  else
  {
    v7 = 0;
    *result = 0x7FFFFFFF;
  }

  *a2 = v7;
  return result;
}

uint64_t _WriteAsType(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 120);
  result = 1;
  if (v3 > 34886)
  {
    if ((v3 - 50000) < 3 || v3 == 34887 || v3 == 34925)
    {
      return a2 >= a3 / 0xA;
    }
  }

  else
  {
    if (v3 > 6)
    {
      if ((v3 - 7) >= 2 && v3 != 32946)
      {
        return result;
      }

      return a2 >= a3 / 0xA;
    }

    if (v3 == 1)
    {
      return a2 > a3;
    }

    if (v3 == 5)
    {
      return a2 >= a3 / 0xA;
    }
  }

  return result;
}

uint64_t ATXReadPlugin::loadDataFromXPCObject(ATXReadPlugin *this, void *a2)
{
  DataFromXPCObject = CommonASTCReadPlugin::loadDataFromXPCObject(this, a2);
  if (!DataFromXPCObject)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_atx", &length);
    if (length == 152)
    {
      DataFromXPCObject = 0;
      v6 = data[1];
      *(this + 32) = *data;
      *(this + 33) = v6;
      v7 = data[2];
      v8 = data[3];
      v9 = data[5];
      *(this + 36) = data[4];
      *(this + 37) = v9;
      *(this + 34) = v7;
      *(this + 35) = v8;
      v10 = data[6];
      v11 = data[7];
      v12 = data[8];
      *(this + 82) = *(data + 18);
      *(this + 39) = v11;
      *(this + 40) = v12;
      *(this + 38) = v10;
    }

    else
    {
      DataFromXPCObject = 4294967246;
    }

    (*(**(this + 62) + 16))(*(this + 62), a2);
  }

  return DataFromXPCObject;
}

uint64_t ATXReadPlugin::saveDataToXPCObject(ATXReadPlugin *this, void *a2)
{
  v4 = CommonASTCReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_atx", this + 512, 0x98uLL);
    (*(**(this + 62) + 24))(*(this + 62), a2);
  }

  return v4;
}

__n128 __Block_byref_object_copy__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = &unk_1EF4DE2D8;
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 80);
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v3;
  *(a1 + 80) = v4;
  *(a1 + 48) = result;
  return result;
}

vImage_Error ATXReadPlugin::decodeImageData(ATXReadPlugin *this, unsigned __int8 *a2)
{
  if (*(this + 76) || *(this + 79))
  {
    return ATXReadPlugin::decodeImageData420f(this, a2);
  }

  if (*(this + 75))
  {
    return ATXReadPlugin::decodeImageDataASTC(this, a2);
  }

  return 4294967292;
}

vImage_Error ATXReadPlugin::decodeImageData420f(ATXReadPlugin *this, unsigned __int8 *a2)
{
  v4 = *(this + 77);
  v5 = *(this + 78);
  v6 = *(this + 79);
  v30 = 197121;
  v29 = 66051;
  v7 = *(this + 156);
  v8 = *(this + 155);
  v9 = v7 * v8;
  if ((v9 & 0xFFFFFFFF00000000) != 0)
  {
    _cg_jpeg_mem_term("decodeImageData420f", 635, "*** ERROR: lumaPlaneSize overflow [%ld * %ld]\n");
    return 4294967292;
  }

  v10 = *(this + 162) * *(this + 161);
  if ((v10 & 0xFFFFFFFF00000000) != 0)
  {
    _cg_jpeg_mem_term("decodeImageData420f", 638, "*** ERROR: chromaPlaneSize overflow [%ld * %ld]\n");
    return 4294967292;
  }

  v11 = *(this + 437);
  v12 = malloc_type_calloc(v7, v8, 0x100004077774924uLL);
  v25 = v11;
  if (*(this + 656) == 1)
  {
    v13 = a2;
    v14 = malloc_type_malloc(*(this + 157), 0x100004077774924uLL);
    BytesAtOffset = IIOImageReadSession::getBytesAtOffset(*(this + 3), v14, *(this + 76) + 8, *(this + 157));
    if (BytesAtOffset != *(this + 157))
    {
      _cg_jpeg_mem_term("decodeImageData420f", 649, "*** luma-lzfseBuffer-getBytesAtOffset failed: expected: %ld   got: %ld\n", *(this + 157), BytesAtOffset);
      v17 = 0;
      goto LABEL_31;
    }

    IIOReadPlugin::decodeLZFSEIntoBuffer(this, v14, BytesAtOffset, v12, v9);
  }

  else
  {
    v16 = IIOImageReadSession::getBytesAtOffset(*(this + 3), v12, *(this + 76), v9);
    if (v16 != v9)
    {
      _cg_jpeg_mem_term("decodeImageData420f", 655, "*** luma-getBytesAtOffset failed: expected: %ld   got: %ld\n", v9, v16);
      v17 = 0;
      v14 = 0;
      goto LABEL_31;
    }

    v13 = a2;
    v14 = 0;
  }

  v17 = malloc_type_calloc(*(this + 162), *(this + 161), 0x100004077774924uLL);
  if (*(this + 656) == 1)
  {
    v14 = reallocf(v14, *(this + 163));
    v18 = IIOImageReadSession::getBytesAtOffset(*(this + 3), v14, *(this + 79) + 8, *(this + 163));
    if (v18 == *(this + 163))
    {
      IIOReadPlugin::decodeLZFSEIntoBuffer(this, v14, v18, v17, v10);
      goto LABEL_12;
    }

    _cg_jpeg_mem_term("decodeImageData420f", 667, "*** chroma-lzfseBuffer-getBytesAtOffset failed: expected: %ld   got: %ld\n");
LABEL_31:
    v23 = 4294967292;
    if (!v12)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v17, *(this + 79), v10) != v10)
  {
    _cg_jpeg_mem_term("decodeImageData420f", 673, "*** chroma-getBytesAtOffset failed: expected: %ld   got: %ld\n");
    goto LABEL_31;
  }

LABEL_12:
  v19 = *(this + 77);
  v20.i64[0] = v19;
  v20.i64[1] = HIDWORD(v19);
  *&srcYp.height = vextq_s8(v20, v20, 8uLL);
  srcYp.rowBytes = *(this + 156);
  dest.rowBytes = v6;
  srcCbCr.data = v17;
  v21 = *(this + 80);
  v20.i64[0] = v21;
  v20.i64[1] = HIDWORD(v21);
  *&srcCbCr.height = vextq_s8(v20, v20, 8uLL);
  srcCbCr.rowBytes = *(this + 162);
  srcYp.data = v12;
  dest.height = v5;
  dest.width = v4;
  dest.data = v13;
  if (ATXReadPlugin::decodeImageData420f(unsigned char *,unsigned long)::YpCbCrToARGBCreate != -1)
  {
    ATXReadPlugin::decodeImageData420f();
  }

  if (v25)
  {
    v22 = &v30;
  }

  else
  {
    v22 = &v29;
  }

  v23 = vImageConvert_420Yp8_CbCr8ToARGB8888(&srcYp, &srcCbCr, &dest, &ATXReadPlugin::decodeImageData420f(unsigned char *,unsigned long)::conversion, v22, 0xFFu, 0);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_18:
  free(v12);
LABEL_19:
  if (v17)
  {
    free(v17);
  }

  if (v14)
  {
    free(v14);
  }

  return v23;
}

uint64_t ATXReadPlugin::decodeImageDataASTC(ATXReadPlugin *this, unsigned __int8 *a2)
{
  v4 = *(this + 62);
  if (v4)
  {
  }

  v5 = *(this + 69);
  v6 = *(this + 70);
  v7 = *(this + 79);
  v10.data = a2;
  v10.height = v6;
  v10.width = v5;
  v10.rowBytes = v7;
  v8 = *(this + 3);
  if (v8)
  {
    return ASTCTextureImp::decodeASTCtoRGBX(v4, v8, &v10, *(this + 326), *(this + 437) == 0);
  }

  else
  {
    return 4294967292;
  }
}

__n128 ___ZN13ATXReadPlugin19decodeImageData420fEPhm_block_invoke()
{
  pixelRange = *ymmword_18620A4B8;
  *&matrix.Yp = xmmword_18620A4D8;
  matrix.Cb_B = 1.772;
  v0 = vImageConvert_YpCbCrToARGB_GenerateConversion(&matrix, &pixelRange, &ATXReadPlugin::decodeImageData420f(unsigned char *,unsigned long)::conversion, kvImage422YpCbYpCr8, kvImageARGB8888, 0);
  if (v0)
  {
    v2 = v0;
    v3 = IIO_vImageErrorString(v0);
    return _cg_jpeg_mem_term("decodeImageData420f_block_invoke", 708, "*** ERROR: vImageConvert_YpCbCrToARGB_GenerateConversion returned %ld (%s)\n", v2, v3);
  }

  return result;
}

void setByteArray(void **a1, const void *a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a1;
  if (v12)
  {
    free(v12);
    *a1 = 0;
  }

  if (a2)
  {
    v13 = _TIFFMultiplySSize(0, a3, a4, 0, a5, a6, a7, a8);
    v14 = v13;
    if (v13)
    {
      v15 = malloc_type_malloc(v13, 0xAE2DC9D2uLL);
      *a1 = v15;
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v15 = *a1;
      if (!*a1)
      {
        return;
      }
    }

    _TIFFmemcpy(v15, a2, v14);
  }
}

uint64_t TIFFVSetField(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = TIFFFindField(a1, a2, 0);
  if (!v6)
  {
    TIFFErrorExtR(a1, "TIFFSetField", "%s: Unknown %stag %u", v7, v8, v9, v10, v11, *a1);
    return 0;
  }

  if (a2 != 257 && (*(a1 + 16) & 0x40) != 0 && !*(v6 + 26))
  {
    TIFFErrorExtR(a1, "TIFFSetField", "%s: Cannot modify tag %s while writing", v7, v8, v9, v10, v11, *a1);
    return 0;
  }

  v12 = *(a1 + 1280);

  return v12(a1, a2, a3);
}

uint64_t TIFFVGetField(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = TIFFFindField(a1, a2, 0);
  if (!v6 || !WORD1(a2) && ((*(a1 + ((*(v6 + 12) >> 3) & 0x1FFCLL) + 72) >> *(v6 + 12)) & 1) == 0)
  {
    return 0;
  }

  v7 = a1[161];

  return v7(a1, a2, a3);
}

void _cg_TIFFFreeDirectory(uint64_t a1)
{
  _TIFFmemset((a1 + 72), 0, 0x10uLL);
  v2 = *(a1 + 144);
  if (v2)
  {
    free(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    free(v3);
    *(a1 + 152) = 0;
  }

  v4 = *(a1 + 184);
  if (v4)
  {
    free(v4);
    *(a1 + 184) = 0;
  }

  v5 = *(a1 + 192);
  if (v5)
  {
    free(v5);
    *(a1 + 192) = 0;
  }

  v6 = *(a1 + 200);
  if (v6)
  {
    free(v6);
    *(a1 + 200) = 0;
  }

  v7 = *(a1 + 216);
  if (v7)
  {
    free(v7);
    *(a1 + 216) = 0;
  }

  v8 = *(a1 + 328);
  if (v8)
  {
    free(v8);
    *(a1 + 328) = 0;
  }

  v9 = *(a1 + 384);
  if (v9)
  {
    free(v9);
    *(a1 + 384) = 0;
  }

  v10 = *(a1 + 368);
  if (v10)
  {
    free(v10);
    *(a1 + 368) = 0;
  }

  v11 = *(a1 + 344);
  if (v11)
  {
    free(v11);
    *(a1 + 344) = 0;
  }

  v12 = *(a1 + 352);
  if (v12)
  {
    free(v12);
    *(a1 + 352) = 0;
  }

  v13 = *(a1 + 360);
  if (v13)
  {
    free(v13);
    *(a1 + 360) = 0;
  }

  v14 = *(a1 + 232);
  if (v14)
  {
    free(v14);
    *(a1 + 232) = 0;
  }

  v15 = *(a1 + 240);
  if (v15)
  {
    free(v15);
    *(a1 + 240) = 0;
  }

  *(a1 + 248) = 0;
  *(a1 + 76) &= 0xFFFFFE7F;
  v16 = *(a1 + 408);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = 16;
    do
    {
      v19 = *(*(a1 + 416) + v18);
      if (v19)
      {
        free(v19);
        v16 = *(a1 + 408);
      }

      ++v17;
      v18 += 24;
    }

    while (v17 < v16);
  }

  *(a1 + 408) = 0;
  v20 = *(a1 + 416);
  if (v20)
  {
    free(v20);
    *(a1 + 416) = 0;
  }

  v21 = *(a1 + 400);
  if (v21)
  {
    free(v21);
    *(a1 + 400) = 0;
  }

  _TIFFmemset((a1 + 256), 0, 0x20uLL);
  _TIFFmemset((a1 + 288), 0, 0x20uLL);
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  v22 = *(a1 + 456);
  if (v22)
  {
    free(v22);
    *(a1 + 456) = 0;
    *(a1 + 448) = 0;
  }
}

uint64_t TIFFCreateDirectory(uint64_t a1)
{
  _cg_TIFFFreeDirectory(a1);
  TIFFDefaultDirectory(a1);
  *(a1 + 888) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 876) = -1;
  *(a1 + 884) = -1;
  return 0;
}

uint64_t TIFFDefaultDirectory(uint64_t a1)
{
  v2 = _TIFFGetFields();
  _TIFFSetupFields(a1, v2, v3, v4, v5, v6, v7, v8, v22);
  _TIFFmemset((a1 + 72), 0, 0x188uLL);
  *(a1 + 124) = 0x1000100010001;
  *(a1 + 132) = 0x10000FFFFFFFFLL;
  *(a1 + 104) = 0;
  *(a1 + 108) = 1;
  *(a1 + 168) = 65538;
  *(a1 + 96) = 1;
  *(a1 + 100) = 0;
  *(a1 + 336) = 131074;
  *(a1 + 340) = 1;
  *(a1 + 1248) = _TIFFNoPostDecode;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = _TIFFVSetField;
  *(a1 + 1288) = _TIFFVGetField;
  *(a1 + 1296) = 0;
  *(a1 + 120) = 1;
  *(a1 + 112) = 0x1000100000000;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  v15 = *(a1 + 1320);
  if (v15)
  {
    v16 = 0;
    v17 = (a1 + 1312);
    v18 = 1;
    do
    {
      v19 = *v17 + 24 * v16;
      if (*(v19 + 4))
      {
        free(*(v19 + 16));
        v15 = *(a1 + 1320);
      }

      v16 = v18;
    }

    while (v15 > v18++);
    free(*v17);
    *v17 = 0;
    *(a1 + 1320) = 0;
  }

  if (_TIFFextender)
  {
    _TIFFextender(a1);
  }

  _cg_TIFFSetField(a1, 259, v9, v10, v11, v12, v13, v14, 1);
  *(a1 + 16) &= 0xFFFFFBF7;
  return 1;
}

uint64_t _TIFFVSetField(uint64_t a1, int a2, unsigned __int16 *a3)
{
  v212 = a3;
  v211 = 0;
  v6 = TIFFFindField(a1, a2, 0);
  if (!v6)
  {
    return 0;
  }

  v12 = v6;
  v13 = (a1 + 72);
  v14 = *(v6 + 12);
  if (v14 == 65)
  {
    v15 = 0;
  }

  else
  {
    v15 = a2;
  }

  if (v15 <= 319)
  {
    switch(v15)
    {
      case 254:
        v16 = v212;
        v212 += 4;
        *(a1 + 112) = *v16;
        goto LABEL_175;
      case 256:
        v52 = v212;
        v212 += 4;
        *(a1 + 88) = *v52;
        goto LABEL_175;
      case 257:
        v55 = v212;
        v212 += 4;
        *(a1 + 92) = *v55;
        goto LABEL_175;
      case 258:
        v46 = v212;
        v212 += 4;
        v47 = *v46;
        *(a1 + 116) = v47;
        if ((*(a1 + 16) & 0x80) == 0)
        {
          goto LABEL_175;
        }

        v23 = 1;
        if (v47 > 0x1Fu)
        {
          if (v47 == 32)
          {
            goto LABEL_181;
          }

          if (v47 == 64 || v47 == 128)
          {
            v48 = _TIFFSwab64BitData;
            goto LABEL_192;
          }
        }

        else
        {
          switch(v47)
          {
            case 8u:
              v48 = _TIFFNoPostDecode;
              goto LABEL_192;
            case 0x10u:
              goto LABEL_180;
            case 0x18u:
              v48 = _TIFFSwab24BitData;
              goto LABEL_192;
          }
        }

        goto LABEL_176;
      case 259:
        v62 = v212;
        v212 += 4;
        v63 = *v62;
        if ((*v13 & 0x80) == 0)
        {
          goto LABEL_81;
        }

        if (*(a1 + 120) == v63)
        {
          goto LABEL_175;
        }

        (*(a1 + 1072))(a1);
        *(a1 + 16) &= ~0x20u;
LABEL_81:
        v23 = TIFFSetCompressionScheme(a1, v63);
        if (!v23)
        {
          return v23;
        }

        *(a1 + 120) = v63;
        goto LABEL_176;
      case 262:
        v45 = v212;
        v212 += 4;
        *(a1 + 122) = *v45;
        goto LABEL_175;
      case 263:
        v49 = v212;
        v212 += 4;
        *(a1 + 124) = *v49;
        goto LABEL_175;
      case 266:
        v56 = v212;
        v212 += 4;
        v57 = *v56;
        if (v57 - 3 < 0xFFFFFFFE)
        {
          goto LABEL_156;
        }

        *(a1 + 126) = v57;
        goto LABEL_175;
      case 274:
        v73 = v212;
        v212 += 4;
        v74 = *v73;
        if (v74 - 9 < 0xFFFFFFF8)
        {
          goto LABEL_156;
        }

        *(a1 + 128) = v74;
        goto LABEL_175;
      case 277:
        v58 = v212;
        v212 += 4;
        v59 = *v58;
        v60 = *v58;
        if (!*v58)
        {
          goto LABEL_156;
        }

        if (*(a1 + 130) != v59)
        {
          if (*(a1 + 144))
          {
            TIFFWarningExtR(a1, "_TIFFVSetField", "SamplesPerPixel tag value is changing, but SMinSampleValue tag was read with a different value. Canceling it", v7, v8, v9, v10, v11, v209);
            *(a1 + 76) &= ~2u;
            free(*(a1 + 144));
            *(a1 + 144) = 0;
          }

          if (*(a1 + 152))
          {
            TIFFWarningExtR(a1, "_TIFFVSetField", "SamplesPerPixel tag value is changing, but SMaxSampleValue tag was read with a different value. Canceling it", v7, v8, v9, v10, v11, v209);
            *(a1 + 76) &= ~4u;
            free(*(a1 + 152));
            *(a1 + 152) = 0;
          }

          if (*(a1 + 344))
          {
            v61 = *(a1 + 212);
            if ((v60 - v61) >= 2 && *(a1 + 130) - v61 <= 1)
            {
              TIFFWarningExtR(a1, "_TIFFVSetField", "SamplesPerPixel tag value is changing, but TransferFunction was read with a different value. Canceling it", v7, v8, v9, v10, v11, v209);
              *(a1 + 76) &= ~0x1000u;
              free(*(a1 + 344));
              *(a1 + 344) = 0;
            }
          }
        }

        *(a1 + 130) = v59;
        goto LABEL_175;
      case 278:
        v64 = v212;
        v212 += 4;
        v65 = *v64;
        if (!v65)
        {
          goto LABEL_146;
        }

        v66 = *(a1 + 92);
        if (v65 >= v66)
        {
          v67 = *(a1 + 92);
        }

        else
        {
          v67 = v65;
        }

        if (v66)
        {
          v65 = v67;
        }

        *(a1 + 132) = v65;
        if ((*(a1 + 72) & 4) == 0)
        {
          *(a1 + 100) = *(a1 + 88);
          *(a1 + 104) = v65;
        }

        goto LABEL_175;
      case 280:
        v44 = v212;
        v212 += 4;
        *(a1 + 136) = *v44;
        goto LABEL_175;
      case 281:
        v75 = v212;
        v212 += 4;
        *(a1 + 138) = *v75;
        goto LABEL_175;
      case 282:
        v68 = v212;
        v212 += 4;
        if (*v68 < 0.0)
        {
          goto LABEL_103;
        }

        *(a1 + 160) = _TIFFClampDoubleToFloat(*v68);
        goto LABEL_175;
      case 283:
        v76 = v212;
        v212 += 4;
        if (*v76 < 0.0)
        {
LABEL_103:
          TIFFFieldWithTag(a1, a2);
          TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad value %f for %s tag", v135, v136, v137, v138, v139, *a1);
          return 0;
        }

        *(a1 + 164) = _TIFFClampDoubleToFloat(*v76);
        break;
      case 284:
        v42 = v212;
        v212 += 4;
        v43 = *v42;
        if (v43 - 3 < 0xFFFFFFFE)
        {
          goto LABEL_156;
        }

        *(a1 + 170) = v43;
        goto LABEL_175;
      case 286:
        v50 = v212;
        v212 += 4;
        *(a1 + 172) = _TIFFClampDoubleToFloat(*v50);
        goto LABEL_175;
      case 287:
        v51 = v212;
        v212 += 4;
        *(a1 + 176) = _TIFFClampDoubleToFloat(*v51);
        goto LABEL_175;
      case 296:
        v53 = v212;
        v212 += 4;
        v54 = *v53;
        if (v54 - 4 < 0xFFFFFFFD)
        {
          goto LABEL_156;
        }

        *(a1 + 168) = v54;
        goto LABEL_175;
      case 297:
        v41 = v212;
        v212 += 4;
        *(a1 + 180) = *v41;
        v212 = v41 + 8;
        *(a1 + 182) = *(v41 + 2);
        goto LABEL_175;
      case 301:
        v69 = 0;
        if (*(a1 + 130) - *(a1 + 212) <= 1)
        {
          v70 = 1;
        }

        else
        {
          v70 = 3;
        }

        v211 = v70;
        v71 = (a1 + 344);
        do
        {
          v72 = v212;
          v212 += 4;
          v23 = 1;
          setByteArray(v71, *v72, 1 << *(a1 + 116), 2, v8, v9, v10, v11);
          ++v69;
          ++v71;
        }

        while (v69 < v211);
        goto LABEL_176;
      default:
        goto LABEL_138;
    }

    goto LABEL_175;
  }

  if (v15 > 340)
  {
    if (v15 > 32995)
    {
      if (v15 <= 32997)
      {
        if (v15 != 32996)
        {
          v40 = v212;
          v212 += 4;
          *(a1 + 96) = *v40;
          goto LABEL_175;
        }

        v101 = v212;
        v212 += 4;
        v102 = *v101;
        if ((v102 & 0xFFFC) == 0)
        {
          *(a1 + 118) = 0x3000100020004uLL >> (16 * (v102 & 3u));
          goto LABEL_175;
        }

        goto LABEL_156;
      }

      if (v15 != 32998)
      {
        if (v15 != 33723)
        {
          if (v15 != 65563)
          {
            goto LABEL_138;
          }

          v31 = v212;
          v212 += 4;
          v32 = *v31;
          v33 = *(a1 + 16);
          if (v32 == 1)
          {
            v34 = v33 | 0x400000;
          }

          else
          {
            v34 = v33 & 0xFFBFFFFF;
          }

LABEL_174:
          *(a1 + 16) = v34;
          goto LABEL_175;
        }

        v109 = v212;
        v212 += 4;
        v26 = *v109;
        *(a1 + 396) = v26;
        v212 = v109 + 8;
        p_src = *(v109 + 1);
        v23 = 1;
        v24 = (a1 + 400);
        v86 = 1;
LABEL_128:
        setByteArray(v24, p_src, v26, v86, v8, v9, v10, v11);
        goto LABEL_176;
      }

      v113 = v212;
      v212 += 4;
      v114 = *v113;
      if (!v114)
      {
LABEL_146:
        TIFFFieldWithTag(a1, a2);
        v132 = *a1;
LABEL_157:
        TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad value %u for %s tag", v127, v128, v129, v130, v131, v132);
        return 0;
      }

      *(a1 + 108) = v114;
    }

    else
    {
      if (v15 > 530)
      {
        if (v15 == 531)
        {
          v112 = v212;
          v212 += 4;
          *(a1 + 340) = *v112;
          goto LABEL_175;
        }

        if (v15 == 532)
        {
          v105 = v212;
          v212 += 4;
          v19 = *v105;
          v21 = (a1 + 368);
          v20 = 6;
          v106 = 4;
LABEL_154:
          setByteArray(v21, v19, v20, v106, v8, v9, v10, v11);
          goto LABEL_175;
        }

        if (v15 != 32995)
        {
          goto LABEL_138;
        }

        v22 = v212;
        v212 += 4;
        LODWORD(v22) = *v22;
        *(a1 + 212) = v22 != 0;
        v23 = 1;
        if (!v22)
        {
          goto LABEL_176;
        }

        LOWORD(__src) = 1;
        v24 = (a1 + 216);
        p_src = &__src;
        v26 = 1;
LABEL_105:
        v86 = 2;
        goto LABEL_128;
      }

      if (v15 == 341)
      {
        if ((*(a1 + 18) & 0x40) != 0)
        {
          v133 = v212;
          v212 += 4;
          v19 = *v133;
          v20 = *(a1 + 130);
          v21 = (a1 + 152);
          goto LABEL_153;
        }

        v87 = v212;
        v212 += 4;
        v28 = *v87;
        v29 = *(a1 + 130);
        v30 = (a1 + 152);
        goto LABEL_108;
      }

      if (v15 != 530)
      {
        goto LABEL_138;
      }

      v36 = v212;
      v212 += 4;
      *(a1 + 336) = *v36;
      v212 = v36 + 8;
      *(a1 + 338) = *(v36 + 2);
    }
  }

  else
  {
    if (v15 <= 332)
    {
      if (v15 > 321)
      {
        if (v15 != 322)
        {
          if (v15 != 323)
          {
            if (v15 == 330)
            {
              if ((*(a1 + 17) & 0x20) == 0)
              {
                v17 = v212;
                v212 += 4;
                v18 = *v17;
                *(a1 + 320) = *v17;
                v212 = v17 + 8;
                v19 = *(v17 + 1);
                v20 = v18;
                v21 = (a1 + 328);
LABEL_153:
                v106 = 8;
                goto LABEL_154;
              }

              TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Sorry, cannot nest SubIFDs", v7, v8, v9, v10, v11, *a1);
              return 0;
            }

LABEL_138:
            if (!*(v6 + 12))
            {
              TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Ignored %stag %s (not supported by libtiff)", v7, v8, v9, v10, v11, *a1);
              return 0;
            }

            if (v14 != 65)
            {
              TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Invalid %stag %s (not supported by codec)", v7, v8, v9, v10, v11, *a1);
              return 0;
            }

            v115 = *(a1 + 408);
            v116 = *(a1 + 416);
            if (v115 < 1)
            {
LABEL_144:
              v119 = v115 + 1;
              *(a1 + 408) = v119;
              v120 = malloc_type_realloc(v116, 24 * v119, 0x10E0040F5622EBCuLL);
              if (!v120)
              {
                TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Failed to allocate space for list of custom values", v121, v122, v123, v124, v125, *a1);
                return 0;
              }

              *(a1 + 416) = v120;
              v126 = &v120[24 * *(a1 + 408)];
              *(v126 - 3) = v12;
              v118 = v126 - 24;
              *(v118 + 2) = 0;
              *(v118 + 2) = 0;
            }

            else
            {
              v117 = *(a1 + 408);
              v118 = *(a1 + 416);
              while (**v118 != a2)
              {
                v118 += 24;
                if (!--v117)
                {
                  goto LABEL_144;
                }
              }

              v142 = *(v118 + 2);
              if (v142)
              {
                free(v142);
                *(v118 + 2) = 0;
              }
            }

            Size = TIFFFieldSetGetSize(v12);
            if (!Size)
            {
              TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad field type %d for %s", v144, v145, v146, v147, v148, *a1);
              return 0;
            }

            if (*(v12 + 8) == 2)
            {
              if (*(v12 + 27))
              {
                if (*(v12 + 6) != -3)
                {
                  _TIFFVSetField_cold_3();
                }

                v149 = v212;
                v212 += 4;
                v150 = *v149;
                v212 = v149 + 8;
                v151 = *(v149 + 1);
              }

              else
              {
                v156 = v212;
                v212 += 4;
                v151 = *v156;
                v157 = strlen(*v156);
                v150 = v157 + 1;
                if ((v157 + 1) >> 31)
                {
                  TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Too long string value for %s. Maximum supported is 2147483647 bytes", v158, v145, v146, v147, v148, *a1);
                  return 0;
                }
              }

              *(v118 + 2) = v150;
              setByteArray(v118 + 2, v151, v150, 1, v145, v146, v147, v148);
              v23 = 1;
              goto LABEL_176;
            }

            v152 = Size;
            v153 = *(v12 + 6);
            v154 = *(v12 + 6);
            if (*(v12 + 27))
            {
              v155 = v212;
              v212 += 4;
              v153 = *v155;
              goto LABEL_195;
            }

            if (v154 != 0xFFFF)
            {
              if (v154 == 65534)
              {
                v153 = *(a1 + 130);
              }

              else if (v154 == 65533)
              {
                goto LABEL_202;
              }

LABEL_195:
              *(v118 + 2) = v153;
              if (!v153)
              {
                TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Null count for %s (type %d, writecount %d, passcount %d)", v144, v145, v146, v147, v148, *a1);
                return 0;
              }

              goto LABEL_203;
            }

LABEL_202:
            v153 = 1;
            *(v118 + 2) = 1;
LABEL_203:
            v159 = _TIFFCheckMalloc(a1, v153, Size, "custom tag binary object", v145, v146, v147, v148);
            *(v118 + 2) = v159;
            if (v159)
            {
              v160 = v159;
              if (*v12 == 336 && !strcmp(*(v12 + 32), "DotRange"))
              {
                v171 = v212;
                v212 += 4;
                LOWORD(__src) = *v171;
                v212 = v171 + 8;
                WORD1(__src) = *(v171 + 2);
                v172 = *(v118 + 2);
                v173 = 4;
LABEL_250:
                _TIFFmemcpy(v172, &__src, v173);
                goto LABEL_175;
              }

              if (*(v12 + 27) || *(v12 + 6) > 0xFFFCu || (v161 = *(v118 + 2), v161 >= 2))
              {
                v162 = v212;
                v212 += 4;
                _TIFFmemcpy(v160, *v162, *(v118 + 2) * v152);
                if ((*(a1 + 18) & 8) != 0)
                {
                  goto LABEL_175;
                }

                v168 = *(*v118 + 8);
                if (v168 == 17)
                {
                  v174 = *(v118 + 2);
                  if (v174 < 1)
                  {
                    goto LABEL_175;
                  }

                  v175 = 0;
                  while (1)
                  {
                    v176 = *(*(v118 + 2) + 8 * v175);
                    if (v176 != v176)
                    {
                      break;
                    }

                    ++v175;
                    v23 = 1;
                    if (v174 == v175)
                    {
                      goto LABEL_176;
                    }
                  }

                  TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad SLONG8 value %lli at %d. array position for %s tag %d in ClassicTIFF. Tag won't be written to file", v163, v164, v165, v166, v167, *a1);
                }

                else
                {
                  if (v168 != 16)
                  {
                    goto LABEL_175;
                  }

                  v169 = *(v118 + 2);
                  if (v169 < 1)
                  {
                    goto LABEL_175;
                  }

                  v170 = 0;
                  while (!HIDWORD(*(*(v118 + 2) + 8 * v170)))
                  {
                    ++v170;
                    v23 = 1;
                    if (v169 == v170)
                    {
                      goto LABEL_176;
                    }
                  }

                  TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad LONG8 value %llu at %d. array position for %s tag %d in ClassicTIFF. Tag won't be written to file", v163, v164, v165, v166, v167, *a1);
                }
              }

              else
              {
                if (v161 != 1)
                {
                  _TIFFVSetField_cold_1();
                }

                switch(*(v12 + 8))
                {
                  case 1:
                  case 6:
                  case 7:
                    v177 = v212;
                    v212 += 4;
                    LOBYTE(__src) = *v177;
                    goto LABEL_249;
                  case 3:
                  case 8:
                    v194 = v212;
                    v212 += 4;
                    LOWORD(__src) = *v194;
                    goto LABEL_249;
                  case 4:
                  case 9:
                  case 0xD:
                    v186 = v212;
                    v212 += 4;
                    LODWORD(__src) = *v186;
                    goto LABEL_249;
                  case 5:
                  case 0xA:
                    if (v152 == 8)
                    {
                      goto LABEL_243;
                    }

                    v196 = v212;
                    v212 += 4;
                    v197 = *v196;
                    *&__src = v197;
                    _TIFFmemcpy(v160, &__src, v152);
                    if (v152 != 4)
                    {
                      TIFFErrorExtR(a1, "_TIFFVSetField", "Rational2Double: .set_field_type in not 4 but %d", v198, v199, v200, v201, v202, v152);
                    }

                    goto LABEL_175;
                  case 0xB:
                    v195 = v212;
                    v212 += 4;
                    LODWORD(__src) = _TIFFClampDoubleToFloat(*v195);
                    goto LABEL_249;
                  case 0xC:
LABEL_243:
                    v187 = v212;
                    v212 += 4;
                    __src = *v187;
LABEL_249:
                    v172 = v160;
                    v173 = v152;
                    goto LABEL_250;
                  case 0x10:
                  case 0x12:
                    v188 = v212;
                    v212 += 4;
                    __src = *v188;
                    _TIFFmemcpy(v160, &__src, v152);
                    if ((*(a1 + 18) & 8) != 0 || !HIDWORD(__src))
                    {
                      goto LABEL_175;
                    }

                    TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad LONG8 or IFD8 value %llu for %s tag %d in ClassicTIFF. Tag won't be written to file", v189, v190, v191, v192, v193, *a1);
                    break;
                  case 0x11:
                    v203 = v212;
                    v212 += 4;
                    __src = *v203;
                    _TIFFmemcpy(v160, &__src, v152);
                    if ((*(a1 + 18) & 8) != 0 || __src == __src)
                    {
                      goto LABEL_175;
                    }

                    TIFFErrorExtR(a1, "_TIFFVSetField", "%s: Bad SLONG8 value %lli for %s tag %d in ClassicTIFF. Tag won't be written to file", v204, v205, v206, v207, v208, *a1);
                    break;
                  default:
                    _TIFFmemset(v160, 0, v152);
                    return 0;
                }
              }

              v178 = *(a1 + 408);
              if (v178 < 1)
              {
LABEL_234:
                _TIFFVSetField_cold_2();
              }

              v179 = 0;
              v180 = *(a1 + 416);
              v181 = 16;
              while (**(v180 + v181 - 16) != a2)
              {
                ++v179;
                v181 += 24;
                if (v178 == v179)
                {
                  goto LABEL_234;
                }
              }

              v182 = *(v180 + v181);
              if (v182)
              {
                free(v182);
                *(v180 + v181) = 0;
                LODWORD(v178) = *(a1 + 408);
              }

              v183 = v178 - 1;
              *(a1 + 408) = v183;
              if (v183 > v179)
              {
                v184 = v181 - 16;
                do
                {
                  v23 = 0;
                  v185 = *(a1 + 416) + v184;
                  ++v179;
                  *v185 = *(v185 + 24);
                  *(v185 + 16) = *(v185 + 40);
                  v184 += 24;
                }

                while (v179 < *(a1 + 408));
                return v23;
              }
            }

            return 0;
          }

          v103 = v212;
          v212 += 4;
          v104 = *v103;
          if ((*v103 & 0xF) == 0)
          {
            goto LABEL_117;
          }

          if (!*(a1 + 12))
          {
            TIFFWarningExtR(a1, *a1, "Nonstandard tile length %u, convert file", v7, v8, v9, v10, v11, v104);
LABEL_117:
            *(a1 + 104) = v104;
LABEL_173:
            v34 = *(a1 + 16) | 0x400;
            goto LABEL_174;
          }

          goto LABEL_146;
        }

        v110 = v212;
        v212 += 4;
        v111 = *v110;
        if ((*v110 & 0xF) != 0)
        {
          if (*(a1 + 12))
          {
            goto LABEL_146;
          }

          TIFFWarningExtR(a1, *a1, "Nonstandard tile width %u, convert file", v7, v8, v9, v10, v11, v111);
        }

        *(a1 + 100) = v111;
        goto LABEL_173;
      }

      if (v15 != 320)
      {
        v35 = v212;
        v212 += 4;
        *(a1 + 208) = *v35;
        v212 = v35 + 8;
        *(a1 + 210) = *(v35 + 2);
        goto LABEL_175;
      }

      v23 = 1;
      v77 = 1 << *(a1 + 116);
      v78 = v212;
      v212 += 4;
      v79 = v77;
      setByteArray((a1 + 184), *v78, v77, 2, v8, v9, v10, v11);
      v80 = v212;
      v212 += 4;
      setByteArray((a1 + 192), *v80, v79, 2, v81, v82, v83, v84);
      v85 = v212;
      v212 += 4;
      p_src = *v85;
      v24 = (a1 + 200);
      v26 = v79;
      goto LABEL_105;
    }

    if (v15 > 337)
    {
      if (v15 == 338)
      {
        if (setExtraSamples(a1, a3, &v211, v7, v8, v9, v10, v11))
        {
          goto LABEL_175;
        }
      }

      else
      {
        if (v15 != 339)
        {
          if ((*(a1 + 18) & 0x40) != 0)
          {
            v134 = v212;
            v212 += 4;
            v19 = *v134;
            v20 = *(a1 + 130);
            v21 = (a1 + 144);
            goto LABEL_153;
          }

          v27 = v212;
          v212 += 4;
          v28 = *v27;
          v29 = *(a1 + 130);
          v30 = (a1 + 144);
LABEL_108:
          setDoubleArrayOneValue(v30, v29, v28);
          goto LABEL_175;
        }

        v107 = v212;
        v212 += 4;
        v108 = *v107;
        if (v108 - 7 >= 0xFFFFFFFA)
        {
          *(a1 + 118) = v108;
          if (v108 == 5 && *(a1 + 116) == 32 && *(a1 + 1248) == _TIFFSwab32BitData)
          {
LABEL_180:
            v48 = _TIFFSwab16BitData;
          }

          else
          {
            if (v108 - 5 > 1 || *(a1 + 116) != 64 || *(a1 + 1248) != _TIFFSwab64BitData)
            {
              goto LABEL_175;
            }

LABEL_181:
            v48 = _TIFFSwab32BitData;
          }

LABEL_192:
          *(a1 + 1248) = v48;
          goto LABEL_175;
        }
      }

LABEL_156:
      TIFFFieldWithTag(a1, a2);
      v132 = *a1;
      goto LABEL_157;
    }

    if (v15 == 333)
    {
      v88 = v212;
      v212 += 4;
      v89 = *v88;
      v211 = *v88;
      v212 = v88 + 8;
      v90 = *(v88 + 1);
      v23 = countInkNamesString(a1, v89, v90, v7, v8, v9, v10, v11);
      if (!v23)
      {
        return v23;
      }

      setByteArray((a1 + 384), v90, v89, 1, v91, v92, v93, v94);
      *(a1 + 376) = v211;
      v100 = *(a1 + 76);
      if ((v100 & 0x40000) != 0)
      {
        if (*(a1 + 392) != v23)
        {
          TIFFErrorExtR(a1, "_TIFFVSetField", "Warning %s; Tag %s:\n  Value %hu of NumberOfInks is different from the number of inks %hu.\n  -> NumberOfInks value adapted to %hu", v95, v96, v97, v98, v99, *a1);
          *(a1 + 392) = v23;
        }
      }

      else
      {
        *(a1 + 392) = v23;
        *(a1 + 76) = v100 | 0x40000;
      }

      if ((*(a1 + 74) & 1) != 0 && v23 != *(a1 + 130))
      {
        TIFFErrorExtR(a1, "_TIFFVSetField", "Warning %s; Tag %s:\n  Value %hu of NumberOfInks is different from the SamplesPerPixel value %hu", v95, v96, v97, v98, v99, *a1);
      }

      goto LABEL_175;
    }

    if (v15 != 334)
    {
      goto LABEL_138;
    }

    v37 = v212;
    v212 += 4;
    v38 = *v37;
    v39 = *v37;
    if ((*(a1 + 77) & 0x40) == 0)
    {
      *(a1 + 392) = v38;
      if ((*(a1 + 74) & 1) != 0 && v39 != *(a1 + 130))
      {
        TIFFErrorExtR(a1, "_TIFFVSetField", "Warning %s; Tag %s:\n  Value %u of NumberOfInks is different from the SamplesPerPixel value %hu", v7, v8, v9, v10, v11, *a1);
      }

      goto LABEL_175;
    }

    if (v39 != *(a1 + 392))
    {
      TIFFErrorExtR(a1, "_TIFFVSetField", "Error %s; Tag %s:\n  It is not possible to set the value %u for NumberOfInks\n  which is different from the number of inks in the InkNames tag (%hu)", v7, v8, v9, v10, v11, *a1);
      return 0;
    }
  }

LABEL_175:
  v23 = 1;
LABEL_176:
  v140 = TIFFFieldWithTag(a1, a2);
  if (v140)
  {
    *&v13[(*(v140 + 12) >> 3) & 0x1FFC] |= 1 << *(v140 + 12);
  }

  *(a1 + 16) |= 8u;
  return v23;
}