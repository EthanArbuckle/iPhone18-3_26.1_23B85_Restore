void sub_1860405AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<IIODecodeFrameParams>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

IIOImageRead *JP2ReadPlugin::decodeBlocks(uint64_t a1, uint64_t a2, void *a3)
{
  result = IIO_Reader::testHeaderSize(*(a1 + 24));
  if (a3[1] != *a3)
  {
    memset(v25, 0, sizeof(v25));
    IIOImageReadSession::IIOImageReadSession(v25, result);
    v6 = *(a1 + 640);
    v22 = *(a1 + 624);
    v23 = v6;
    v24 = *(a1 + 656);
    v7 = *(a1 + 576);
    *cf = *(a1 + 560);
    v19 = v7;
    v8 = *(a1 + 608);
    v20 = *(a1 + 592);
    v21 = v8;
    v9 = *(a1 + 512);
    v14 = *(a1 + 496);
    v15 = v9;
    v10 = *(a1 + 544);
    v16 = *(a1 + 528);
    v17 = v10;
    v11 = *(a1 + 480);
    v12[1] = *(a1 + 472);
    v13 = v11;
    v12[0] = v25;
    if (IIO_XPCServer())
    {
      *(&v13 + 1) = MyRead;
      *&v14 = MySeek;
      *(&v14 + 1) = 0;
    }

    cf[0] = 0;
    _cg_JP2SetupDecompressor(v12, v12);
  }

  __break(1u);
  return result;
}

uint64_t JP2ReadPlugin::decodeImageImpProgressive(IIOReadPlugin *this, IIODecodeParameter *a2, int a3)
{
  v66 = 0;
  *(this + 166) = *(this + 79);
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v6 = *(this + 55);
    v7 = v6 >> 24;
    if ((v6 >> 24) <= 0x7F)
    {
      v8 = *(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000;
    }

    else
    {
      v8 = __maskrune(v7, 0x40000uLL);
      v6 = *(this + 55);
    }

    if (v8)
    {
      v9 = (v6 >> 24);
    }

    else
    {
      v9 = 46;
    }

    v10 = v6 << 8 >> 24;
    if (v10 <= 0x7F)
    {
      v11 = *(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000;
    }

    else
    {
      v11 = __maskrune(v10, 0x40000uLL);
      v6 = *(this + 55);
    }

    if (v11)
    {
      v12 = (v6 << 8 >> 24);
    }

    else
    {
      v12 = 46;
    }

    v13 = v6 >> 8;
    if (v13 <= 0x7F)
    {
      v14 = *(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v13, 0x40000uLL);
      v6 = *(this + 55);
    }

    if (v14)
    {
      v15 = (v6 >> 8);
    }

    else
    {
      v15 = 46;
    }

    if (v6 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v6, 0x40000uLL))
    {
LABEL_22:
      v16 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v9, v12, v15, v16, iioTypeStr[a3], "OSStatus JP2ReadPlugin::decodeImageImpProgressive(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v16 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  v17 = *(this + 66);
  v18 = *(this + 134);
  *(this + 77) = v17;
  *(this + 78) = v18;
  v19 = *(a2 + 3);
  v20 = *(a2 + 4);
  v21 = (v19 / v17);
  v22 = (v20 / v18);
  v23 = ((v19 + *(a2 + 5) + v17 + -1.0) / v17);
  v24 = ((v20 + *(a2 + 6) + v18 + -1.0) / v18);
  v60 = v23 - v21;
  v25 = ((v24 - v22) * (v23 - v21));
  *(this + 26) = v25;
  BlockArray = IIOReadPlugin::allocateBlockArray(this, v25);
  v27 = IIOImageReadSession::globalInfoForType(*(this + 3), 1246769696);
  if (!v27)
  {
    return 4294967246;
  }

  v28 = v27;
  v29 = *(v27 + 1);
  v30 = *(this + 26);
  v56 = BlockArray;
  if (v29)
  {
    if (v30 > *(v28 + 1))
    {
      free(v29);
      *(v28 + 1) = malloc_type_calloc(4uLL, *(this + 26), 0x100004052888210uLL);
    }
  }

  else
  {
    *(v28 + 1) = malloc_type_calloc(4uLL, v30, 0x100004052888210uLL);
    *(v28 + 1) = *(this + 26);
  }

  v63 = 0;
  v64 = 0;
  v65 = 0;
  if (v24 > v22)
  {
    v32 = 0;
    v33 = MEMORY[0x1E695F050];
    v59 = (v17 + v17 - 1) / v17;
    v57 = v24;
    v58 = v21;
    do
    {
      if (v23 > v21)
      {
        v61 = v60 + v32;
        v34 = v21;
        do
        {
          v35 = *(this + 77);
          x = (v35 * v34);
          v37 = *(this + 78);
          y = (v37 * v22);
          v39 = *(this + 66);
          if (v35 + x <= v39)
          {
            width = v35;
          }

          else
          {
            width = v39 - x;
          }

          v41 = *(this + 67);
          if (v37 + y <= v41)
          {
            height = v37;
          }

          else
          {
            height = v41 - y;
          }

          v43 = width * (*(this + 129) >> 3);
          *(this + 79) = v43;
          *(this + 28) = v32;
          *(this + 29) = v32 + 1;
          CachedTile = IIOReadPlugin::getCachedTile(this, v43);
          v45 = CachedTile;
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("     numberOfBlocksLeftToDecode: %d\n", CachedTile);
          }

          if (v45)
          {
            if ((gIIODebugFlags & 0x30000) != 0)
            {
              ImageIOLog("JP2: Decoding blockArrayIndex: %d, blockIndex: %d  = (%d, %d)\n", v32, v34 + v22 * v59, v34, v22);
            }

            if (!is_mul_ok(height, *(this + 79)))
            {
              goto LABEL_67;
            }

            v46 = _ImageIO_Malloc(height * *(this + 79), *(this + 52), &v66, kImageMalloc_JP2_Data[0], 0, 0);
            if (!v46)
            {
              goto LABEL_67;
            }

            *(this + 642) = 1;
            v47 = *(this + 79);
            v62[0] = v32;
            v62[1] = *&x;
            v62[2] = *&y;
            v62[3] = *&width;
            v62[4] = *&height;
            v62[5] = v46;
            v62[6] = v47;
            v62[7] = v66;
            memset(&v62[8], 0, 24);
            std::vector<IIODecodeFrameParams>::push_back[abi:fe200100](&v63, v62);
            IIODecodeFrameParams::~IIODecodeFrameParams(v62);
          }

          if (!CGRectEqualToRect(*(this + 120), *v33))
          {
            v68.origin.x = x;
            v68.origin.y = y;
            v68.size.width = width;
            v68.size.height = height;
            v67 = CGRectUnion(*(this + 120), v68);
            x = v67.origin.x;
            y = v67.origin.y;
            width = v67.size.width;
            height = v67.size.height;
          }

          *(this + 15) = x;
          *(this + 16) = y;
          *(this + 17) = width;
          *(this + 18) = height;
          ++v34;
          ++v32;
        }

        while (v23 != v34);
        v32 = v61;
        v24 = v57;
        v21 = v58;
      }

      ++v22;
    }

    while (v22 != v24);
  }

  JP2ReadPlugin::decodeBlocks(this, v30, &v63);
  v48 = v64;
  if (v63 != v64)
  {
    v49 = v63 + 40;
    while (1)
    {
      v50 = *(v49 + 32);
      if ((v50 - 1) < 2)
      {
        break;
      }

      if (!v50)
      {
        v51 = *(this + 369);
        goto LABEL_61;
      }

LABEL_62:
      if (*(this + 143) == 1)
      {
        JP2ReadPlugin::fixPremultipliedData(this, *(v49 - 32), *v49);
      }

      *(*(this + 12) + 8 * *(v49 - 40)) = IIOReadPlugin::createImageBlock(this, *v49, *(v49 + 16), *(v49 - 32), *(v49 + 8), *(this + 371));
      *v49 = 0;
      v52 = v49 + 48;
      v49 += 88;
      if (v52 == v48)
      {
        goto LABEL_65;
      }
    }

    v51 = 0;
LABEL_61:
    *(this + 371) = v51;
    goto LABEL_62;
  }

LABEL_65:
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("                    coveredRect: {%g, %g, %g, %g}\n\n", *(this + 15), *(this + 16), *(this + 17), *(this + 18));
  }

LABEL_67:
  v53 = v63;
  v54 = v64;
  while (v53 != v54)
  {
    v55 = *(v53 + 40);
    if (v55)
    {
      _ImageIO_Free(v55, *(v53 + 56));
    }

    v53 += 88;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("<<< copyImageBlockSetJP2Prog\n");
  }

  v62[0] = &v63;
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](v62);
  return v56;
}

void sub_186040D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = (v19 - 152);
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&a19);
  _Unwind_Resume(a1);
}

IIODecodeFrameParams *std::vector<IIODecodeFrameParams>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      v10 = *(v8 + 1);
      *v9 = *v8;
      *(v9 + 1) = v10;
      v11 = *(v8 + 2);
      v12 = *(v8 + 3);
      v13 = *(v8 + 4);
      *(v9 + 10) = *(v8 + 10);
      *(v9 + 3) = v12;
      *(v9 + 4) = v13;
      *(v9 + 2) = v11;
      v8 = (v8 + 88);
      v9 += 88;
    }

    while (v8 != v5);
    do
    {
      IIODecodeFrameParams::~IIODecodeFrameParams(result);
      result = (v14 + 88);
    }

    while (result != v5);
  }

  a2[1] = v7;
  v15 = *a1;
  *a1 = v7;
  *(a1 + 8) = v15;
  a2[1] = v15;
  v16 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v16;
  v17 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return __maskrune(v0, 0x40000uLL);
}

void _TIFFFax3fillruns(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int a4)
{
  v5 = a3;
  v6 = a2;
  if (((a3 - a2) & 4) != 0)
  {
    *a3 = 0;
    v5 = a3 + 1;
  }

  if (v5 > a2)
  {
    v8 = 0;
    while (1)
    {
      v9 = *v6;
      if (*v6 > a4 || *v6 + v8 > a4)
      {
        v9 = a4 - v8;
        *v6 = a4 - v8;
      }

      if (v9)
      {
        break;
      }

LABEL_31:
      v20 = v6[1];
      if (v20 > a4 || v20 + v8 > a4)
      {
        v20 = a4 - v8;
        v6[1] = a4 - v8;
      }

      if (!v20)
      {
        goto LABEL_57;
      }

      v22 = (a1 + (v8 >> 3));
      v23 = v8 & 7;
      if (v20 <= 8 - (v8 & 7))
      {
        v30 = _TIFFFax3fillruns__fillmasks[v20] >> v23;
      }

      else
      {
        if ((v8 & 7) != 0)
        {
          *v22++ |= 0xFFu >> v23;
          v20 -= 8 - (v8 & 7);
        }

        if (v20 >= 8)
        {
          v24 = v20 >> 3;
          if (v20 < 0x80)
          {
            goto LABEL_50;
          }

          if ((v22 & 7) != 0)
          {
            v25 = v22 ^ 7;
            v26 = (v22 ^ 7) & 7;
            v27 = v24 - 1;
            if (v26 >= v27)
            {
              v26 = v27;
            }

            v28 = v26 + 1;
            memset(v22, 255, v26 + 1);
            v22 += v28;
            if (v27 >= (v25 & 7u))
            {
              v24 = v27 - (v25 & 7);
            }

            else
            {
              v24 = 0;
            }
          }

          memset(v22, 255, 8 * ((v24 >> 3) - 1) + 8);
          v22 += 8 * (v24 >> 3);
          v24 &= 7u;
          if (v24)
          {
LABEL_50:
            v29 = v24;
            memset(v22, 255, v24);
          }

          else
          {
            v29 = 0;
          }

          v22 += v29;
          v20 &= 7u;
        }

        if (!v20)
        {
          goto LABEL_56;
        }

        v30 = 0xFF00u >> v20;
      }

      *v22 |= v30;
LABEL_56:
      v8 += v6[1];
LABEL_57:
      v6 += 2;
      if (v6 >= v5)
      {
        goto LABEL_62;
      }
    }

    v11 = (a1 + (v8 >> 3));
    v12 = 8 - (v8 & 7);
    if (v9 <= v12)
    {
      v19 = *v11 & ~(_TIFFFax3fillruns__fillmasks[v9] >> (v8 & 7));
    }

    else
    {
      if ((v8 & 7) != 0)
      {
        *v11++ &= -1 << v12;
        v9 -= v12;
      }

      if (v9 >= 8)
      {
        v13 = v9 >> 3;
        if (v9 < 0x80)
        {
          goto LABEL_24;
        }

        if ((v11 & 7) != 0)
        {
          v14 = v11 ^ 7;
          v15 = (v11 ^ 7) & 7;
          v16 = v13 - 1;
          if (v15 >= v16)
          {
            v15 = v16;
          }

          v17 = v15 + 1;
          bzero(v11, v15 + 1);
          v11 += v17;
          if (v16 >= (v14 & 7u))
          {
            v13 = v16 - (v14 & 7);
          }

          else
          {
            v13 = 0;
          }
        }

        bzero(v11, 8 * ((v13 >> 3) - 1) + 8);
        v11 += 8 * (v13 >> 3);
        v13 &= 7u;
        if (v13)
        {
LABEL_24:
          v18 = v13;
          bzero(v11, v13);
        }

        else
        {
          v18 = 0;
        }

        v11 += v18;
        v9 &= 7u;
      }

      if (!v9)
      {
        goto LABEL_30;
      }

      v19 = *v11 & (0xFFu >> v9);
    }

    *v11 = v19;
LABEL_30:
    v8 += *v6;
    goto LABEL_31;
  }

  v8 = 0;
LABEL_62:
  if (v8 != a4)
  {
    _TIFFFax3fillruns_cold_1();
  }
}

uint64_t TIFFInitCCITTFax3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!InitCCITTFax3(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return 1;
  }

  if (_TIFFMergeFields(a1, fax3Fields, 1, v9, v10, v11, v12, v13))
  {
    return _cg_TIFFSetField(a1, 0x10000, v14, v15, v16, v17, v18, v19, 1);
  }

  TIFFErrorExtR(a1, "TIFFInitCCITTFax3", "Merging CCITT Fax 3 codec-specific tags failed", v15, v16, v17, v18, v19, v21);
  return 0;
}

uint64_t InitCCITTFax3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!_TIFFMergeFields(a1, faxFields, 5, a4, a5, a6, a7, a8))
  {
    v25 = "Merging common CCITT Fax codec-specific tags failed";
LABEL_8:
    TIFFErrorExtR(a1, "InitCCITTFax3", v25, v9, v10, v11, v12, v13, v26);
    return 0;
  }

  v14 = malloc_type_malloc(0xA0uLL, 0x10D0040430E4CB8uLL);
  *(a1 + 1096) = v14;
  if (!v14)
  {
    v25 = "No space for state block";
    goto LABEL_8;
  }

  _TIFFmemset(v14, 0, 0xA0uLL);
  v21 = *(a1 + 1096);
  v22 = *(a1 + 12);
  *v21 = v22;
  v23 = *(a1 + 1280);
  *(a1 + 1288) = Fax3VGetField;
  *(v21 + 40) = vextq_s8(v23, v23, 8uLL);
  *(a1 + 1280) = Fax3VSetField;
  *(v21 + 56) = *(a1 + 1296);
  *(a1 + 1296) = Fax3PrintDir;
  *(v21 + 32) = 0;
  if (!v22)
  {
    *(a1 + 16) |= 0x100u;
  }

  *(v21 + 96) = 0;
  _cg_TIFFSetField(a1, 65540, v15, v16, v17, v18, v19, v20, _TIFFFax3fillruns);
  *(*(a1 + 1096) + 136) = 0;
  *(a1 + 952) = Fax3FixupTags;
  *(a1 + 960) = Fax3SetupState;
  *(a1 + 968) = Fax3PreDecode;
  *(a1 + 1008) = Fax3Decode1D;
  *(a1 + 1024) = Fax3Decode1D;
  *(a1 + 1040) = Fax3Decode1D;
  *(a1 + 976) = Fax3SetupState;
  *(a1 + 992) = Fax3PreEncode;
  *(a1 + 1000) = Fax3PostEncode;
  *(a1 + 1016) = Fax3Encode;
  *(a1 + 1032) = Fax3Encode;
  *(a1 + 1048) = Fax3Encode;
  *(a1 + 1056) = Fax3Close;
  *(a1 + 1072) = Fax3Cleanup;
  return 1;
}

uint64_t TIFFInitCCITTFax4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (InitCCITTFax3(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    if (_TIFFMergeFields(a1, fax4Fields, 1, v9, v10, v11, v12, v13))
    {
      a1[126] = Fax4Decode;
      a1[128] = Fax4Decode;
      a1[130] = Fax4Decode;
      a1[127] = Fax4Encode;
      a1[129] = Fax4Encode;
      a1[131] = Fax4Encode;
      a1[125] = Fax4PostEncode;
      return _cg_TIFFSetField(a1, 0x10000, v14, v15, v16, v17, v18, v19, 1);
    }

    TIFFErrorExtR(a1, "TIFFInitCCITTFax4", "Merging CCITT Fax 4 codec-specific tags failed", v15, v16, v17, v18, v19, v21);
  }

  return 0;
}

uint64_t Fax4Decode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = a1[137];
  if (a3 % *(v9 + 8))
  {
    TIFFErrorExtR(a1, "Fax4Decode", "Fractional scanlines cannot be read", a4, a5, a6, a7, a8, v131);
    return 0xFFFFFFFFLL;
  }

  v10 = a3;
  v12 = *(v9 + 72);
  v11 = *(v9 + 76);
  v13 = *(v9 + 80);
  v14 = a1[144];
  v15 = a1[145];
  if (a3 < 1)
  {
    v25 = a1[144];
    goto LABEL_203;
  }

  v17 = v14 + v15;
  v18 = &TIFFFaxWhiteTable;
  v19 = *(v9 + 16);
  v20 = &TIFFFaxBlackTable;
  v21 = *(v9 + 64);
  v22 = ((v19 + 7) >> 3);
  v24 = *(v9 + 112);
  v23 = *(v9 + 120);
  v25 = a1[144];
  v141 = v21;
  v142 = v17;
LABEL_5:
  v143 = a2;
  if (v19 < 1)
  {
    LODWORD(v28) = 0;
    v31 = v23;
    goto LABEL_172;
  }

  v26 = 0;
  i = 0;
  v28 = 0;
  v30 = v24 + 1;
  v29 = *v24;
  v31 = v23;
  while (1)
  {
    v32 = *(v9 + 104);
    if (v31 >= &v23[v32])
    {
      goto LABEL_210;
    }

    if (v11 <= 6)
    {
      if (v25 >= v17)
      {
        if (!v11)
        {
          goto LABEL_204;
        }

        v11 = 7;
      }

      else
      {
        v33 = *v25++;
        v12 |= *(v21 + v33) << v11;
        v11 += 8;
      }
    }

    v34 = &TIFFFaxMainTable + 8 * (v12 & 0x7F);
    v35 = v34[1];
    v11 -= v35;
    v12 >>= v35;
    v36 = *v34;
    if (v36 >= 4)
    {
      if (*v34 > 4u)
      {
        switch(v36)
        {
          case 5u:
            if (v31 != v23 && v29 <= v28)
            {
              v41 = &v24[v32];
              v42 = v30 + 1;
              do
              {
                if (v42 >= v41)
                {
                  goto LABEL_210;
                }

                LODWORD(v29) = *(v42 - 1) + v29 + *v42;
                v42 += 2;
              }

              while (v29 <= v28);
              v30 = v42 - 1;
            }

            v43 = *(v34 + 1);
            if (v29 >= v43 + v28)
            {
              v44 = v29 + v26 - v43;
              *v31++ = v44 + i;
              v28 = (v44 + v28);
              v45 = *--v30;
              v29 = (v29 - v45);
              goto LABEL_35;
            }

            v84 = v19;
            v135 = v31;
            v88 = v23;
            v137 = v22;
            v133 = v13;
            Fax3Unexpected("Fax4Decode", a1, *(v9 + 152), v28, v22, &TIFFFaxWhiteTable, &TIFFFaxBlackTable, v21);
LABEL_156:
            v23 = v88;
            v13 = v133;
            break;
          case 6u:
            v84 = v19;
            *v31 = v19 - v28;
            v135 = v31 + 1;
            v88 = v23;
            v137 = v22;
            v133 = v13;
            Fax3Extension("Fax4Decode", a1, *(v9 + 152), v28, v22, &TIFFFaxWhiteTable, &TIFFFaxBlackTable, v21);
            goto LABEL_156;
          case 0xCu:
            *v31++ = v19 - v28;
            v137 = v22;
            v135 = v31;
            if (v11 > 3)
            {
              v84 = v19;
            }

            else if (v25 >= v17)
            {
              if (!v11)
              {
                v112 = v23;
                v113 = v10;
                v114 = v19;
                goto LABEL_205;
              }

              v84 = v19;
              v11 = 4;
            }

            else
            {
              v84 = v19;
              v87 = *v25++;
              v12 |= *(v21 + v87) << v11;
              v11 += 8;
            }

            if ((v12 & 0xF) != 0)
            {
              v89 = v23;
              Fax3Unexpected("Fax4Decode", a1, *(v9 + 152), v28, v22, &TIFFFaxWhiteTable, &TIFFFaxBlackTable, v21);
              v23 = v89;
            }

            v11 -= 4;
            v12 >>= 4;
            v13 = 1;
            break;
          default:
            goto LABEL_167;
        }

        v22 = v137;
        goto LABEL_145;
      }

      if (v31 != v23 && v29 <= v28)
      {
        v46 = &v24[v32];
        v47 = v30 + 1;
        do
        {
          if (v47 >= v46)
          {
            goto LABEL_210;
          }

          LODWORD(v29) = *(v47 - 1) + v29 + *v47;
          v47 += 2;
        }

        while (v29 <= v28);
        v30 = v47 - 1;
      }

      v48 = *(v34 + 1);
      *v31 = i + v26 + v48 + v29;
      if (v30 >= &v24[*(v9 + 104)])
      {
        goto LABEL_210;
      }

      i = 0;
      v28 = (v48 + v29);
      ++v31;
      v49 = *v30++;
      v39 = v49;
      goto LABEL_44;
    }

    if (v36 == 1)
    {
      if (v31 != v23 && v29 <= v28)
      {
        v61 = v30 + 1;
        do
        {
          if (v61 >= &v24[v32])
          {
            goto LABEL_210;
          }

          LODWORD(v29) = *(v61 - 1) + v29 + *v61;
          v61 += 2;
        }

        while (v29 <= v28);
        v30 = v61 - 1;
      }

      if (v30 + 1 >= &v24[v32])
      {
        goto LABEL_210;
      }

      v62 = *v30;
      v63 = v30[1];
      v30 += 2;
      v28 = v62 + v29;
      i += v26 + v28;
      v29 = v28 + v63;
      goto LABEL_82;
    }

    if (v36 == 2)
    {
      break;
    }

    if (v36 != 3)
    {
      goto LABEL_167;
    }

    if (v31 != v23 && v29 <= v28)
    {
      v37 = &v24[v32];
      v38 = v30 + 1;
      while (v38 < v37)
      {
        v29 = *(v38 - 1) + v29 + *v38;
        v38 += 2;
        if (v29 > v28)
        {
          v30 = v38 - 1;
          goto LABEL_23;
        }
      }

      goto LABEL_210;
    }

LABEL_23:
    *v31 = i + v26 + v29;
    if (v30 >= &v24[*(v9 + 104)])
    {
LABEL_210:
      v118 = a1[150];
      goto LABEL_211;
    }

    i = 0;
    ++v31;
    v40 = *v30++;
    v39 = v40;
    v28 = v29;
LABEL_44:
    v29 = (v39 + v29);
LABEL_82:
    v26 = -v28;
    if (v28 >= v19)
    {
      if (!i)
      {
        goto LABEL_171;
      }

      if (i + v28 >= v19)
      {
        goto LABEL_169;
      }

      if (v11 > 0)
      {
        goto LABEL_166;
      }

      if (v25 < v17)
      {
        v81 = *v25++;
        v12 |= *(v21 + v81) << v11;
        v11 += 8;
        goto LABEL_166;
      }

      if (v11)
      {
        v11 = 1;
LABEL_166:
        if ((v12 & 1) == 0)
        {
LABEL_167:
          v90 = v23;
          v84 = v19;
          v135 = v31;
          v138 = v22;
          v134 = v13;
          Fax3Unexpected("Fax4Decode", a1, *(v9 + 152), v28, v22, &TIFFFaxWhiteTable, &TIFFFaxBlackTable, v21);
          v13 = v134;
          v22 = v138;
          v23 = v90;
          goto LABEL_145;
        }

        --v11;
        v12 >>= 1;
LABEL_169:
        if (v31 >= &v23[*(v9 + 104)])
        {
          goto LABEL_210;
        }

        *v31++ = i;
LABEL_171:
        v8 = a1;
        goto LABEL_172;
      }

LABEL_204:
      v112 = v23;
      v113 = v10;
      v114 = v19;
      v137 = v22;
LABEL_205:
      v115 = v31;
      v116 = v13;
      goto LABEL_207;
    }
  }

  if (((v31 - v23) & 4) != 0)
  {
    while (1)
    {
      if (v11 > 12)
      {
        goto LABEL_72;
      }

      if (v25 >= v17)
      {
        if (!v11)
        {
          goto LABEL_204;
        }

        v11 = 13;
      }

      else
      {
        v12 |= *(v21 + *v25) << v11;
        if (v11 > 4)
        {
          v11 += 8;
        }

        else
        {
          if ((v25 + 1) < v17)
          {
            v56 = v25[1];
            v25 += 2;
            v12 |= *(v21 + v56) << (v11 + 8);
            v11 += 16;
            goto LABEL_72;
          }

          v11 = 13;
        }

        ++v25;
      }

LABEL_72:
      v57 = &TIFFFaxBlackTable + 8 * (v12 & 0x1FFF);
      v58 = v57[1];
      v11 -= v58;
      v12 >>= v58;
      v59 = *v57;
      if ((v59 - 10) >= 2)
      {
        if (v59 != 8)
        {
          v82 = v23;
          v83 = v10;
          v84 = v19;
          v85 = v22;
          v135 = v31;
          v132 = v13;
LABEL_141:
          v86 = a1;
          goto LABEL_144;
        }

        v71 = *(v57 + 1);
        *v31 = v71 + i;
        v65 = v31 + 1;
        v28 = (v71 + v28);
        for (i = 0; ; i += v76)
        {
          if (v11 > 11)
          {
            goto LABEL_110;
          }

          if (v25 >= v17)
          {
            if (!v11)
            {
LABEL_206:
              v112 = v23;
              v113 = v10;
              v114 = v19;
              v137 = v22;
              v116 = v13;
              v115 = v65;
LABEL_207:
              TIFFWarningExtR(a1, "Fax4Decode", "Premature EOF at line %u of %s %u (x %u)", v19, v22, &TIFFFaxWhiteTable, &TIFFFaxBlackTable, v21, *(v9 + 152));
              if (i)
              {
                v22 = v137;
                if (v115 >= &v112[*(v9 + 104)])
                {
                  goto LABEL_210;
                }

                v13 = v116;
                v19 = v114;
                *v115 = i;
                v117 = v115 + 1;
              }

              else
              {
                v13 = v116;
                v117 = v115;
                v22 = v137;
                v19 = v114;
              }

              v8 = a1;
              if (v28 == v19)
              {
                v11 = 0;
                v17 = v142;
                v102 = v143;
                v21 = v141;
                LODWORD(v10) = v113;
                goto LABEL_243;
              }

              v119 = v19;
              v120 = v117;
              v140 = v22;
              v121 = v13;
              Fax3BadLength("Fax4Decode", a1, *(v9 + 152), v28, v19, v18, v20, v21);
              v122 = v28 > v119;
              if (v28 <= v119)
              {
                v13 = v121;
                v22 = v140;
                v21 = v141;
                v17 = v142;
                v123 = v120;
                v19 = v119;
                LODWORD(v10) = v113;
                v124 = v112;
              }

              else
              {
                v123 = v120;
                v124 = v112;
                if (v120 <= v112)
                {
                  v13 = v121;
                  v22 = v140;
                  v21 = v141;
                  v17 = v142;
                  v19 = v119;
                }

                else
                {
                  v125 = v120 - 1;
                  v126 = v120 - 1;
                  v13 = v121;
                  v21 = v141;
                  v17 = v142;
                  v19 = v119;
                  do
                  {
                    v127 = *v126--;
                    LODWORD(v28) = v28 - v127;
                    v122 = v28 > v119;
                    v128 = v28 > v119 && v125 > v112;
                    v125 = v126;
                  }

                  while (v128);
                  v123 = v126 + 1;
                  v22 = v140;
                }

                LODWORD(v10) = v113;
              }

              if (v28 >= v19)
              {
                if (!v122)
                {
                  v11 = 0;
                  goto LABEL_242;
                }

                v102 = v143;
                if (v123 >= &v124[*(v9 + 104)])
                {
                  goto LABEL_240;
                }

                *v123 = v19;
                if (v123 + 1 >= &v124[*(v9 + 104)])
                {
                  goto LABEL_240;
                }

                v11 = 0;
                v123[1] = 0;
                v22 = v140;
              }

              else
              {
                if (((v123 - v124) & 4) != 0)
                {
                  if (v123 >= &v124[*(v9 + 104)])
                  {
                    goto LABEL_240;
                  }

                  *v123++ = 0;
                }

                if (v123 >= &v124[*(v9 + 104)])
                {
                  goto LABEL_240;
                }

                v11 = 0;
                *v123 = v19 - (v28 & ~(v28 >> 31));
LABEL_242:
                v102 = v143;
              }

LABEL_243:
              if (v25 >= v17)
              {
                if (v11)
                {
                  v11 = 13;
                }

                else
                {
                  v11 = 0;
                }
              }

              else
              {
                v12 |= *(v21 + *v25) << v11;
                if (v11 > 4)
                {
                  v11 += 8;
                }

                else
                {
                  if ((v25 + 1) < v17)
                  {
                    v129 = v25[1];
                    v25 += 2;
                    v12 |= *(v21 + v129) << (v11 + 8);
                    v11 += 16;
                    goto LABEL_253;
                  }

                  v11 = 13;
                }

                ++v25;
              }

LABEL_253:
              if (v22 <= v10)
              {
                v130 = v13;
                (*(v9 + 88))(v102);
                *(v9 + 72) = v12 >> 13;
                *(v9 + 76) = v11 - 13;
                *(v9 + 80) = v130;
                v8[145] += v8[144] - v25;
                v8[144] = v25;
                if (*(v9 + 152))
                {
                  return 1;
                }

                else
                {
                  return 0xFFFFFFFFLL;
                }
              }

              goto LABEL_254;
            }

            v11 = 12;
          }

          else
          {
            v12 |= *(v21 + *v25) << v11;
            if (v11 > 3)
            {
              v11 += 8;
            }

            else
            {
              if ((v25 + 1) < v17)
              {
                v72 = v25[1];
                v25 += 2;
                v12 |= *(v21 + v72) << (v11 + 8);
                v11 += 16;
                goto LABEL_110;
              }

              v11 = 12;
            }

            ++v25;
          }

LABEL_110:
          v67 = &TIFFFaxWhiteTable + 8 * (v12 & 0xFFF);
          v73 = v67[1];
          v11 -= v73;
          v12 >>= v73;
          v74 = *v67;
          if (v74 != 9 && v74 != 11)
          {
            if (v74 == 7)
            {
              goto LABEL_119;
            }

            v82 = v23;
            v83 = v10;
            v84 = v19;
            v85 = v22;
            v132 = v13;
            v135 = v31 + 1;
LABEL_143:
            v86 = a1;
LABEL_144:
            TIFFErrorExtR(v86, "Fax4Decode", "Bad code word at line %u of %s %u (x %u)", v19, v22, &TIFFFaxWhiteTable, &TIFFFaxBlackTable, v21, *(v9 + 152));
            v13 = v132;
            v22 = v85;
            v10 = v83;
            v23 = v82;
LABEL_145:
            if (i)
            {
              v17 = v142;
              if (v135 < &v23[*(v9 + 104)])
              {
                v19 = v84;
                *v135 = i;
                v31 = v135 + 1;
                v8 = a1;
                v21 = v141;
                goto LABEL_172;
              }

              goto LABEL_210;
            }

            v8 = a1;
            v21 = v141;
            v17 = v142;
            v31 = v135;
            v19 = v84;
LABEL_172:
            if (v28 == v19)
            {
              goto LABEL_196;
            }

            v136 = v25;
            v91 = v23;
            v92 = v10;
            v93 = v19;
            v94 = v31;
            v139 = v22;
            v95 = v13;
            v96 = "Line length mismatch";
            if (v28 < v19)
            {
              v96 = "Premature EOL";
            }

            TIFFWarningExtR(v8, "Fax4Decode", "%s at line %u of %s %u (got %u, expected %u)", v19, v22, v18, v20, v21, v96);
            v97 = v28 > v93;
            if (v28 <= v93)
            {
              v13 = v95;
              v22 = v139;
              v21 = v141;
              v17 = v142;
              v31 = v94;
            }

            else
            {
              v31 = v94;
              if (v94 > v91)
              {
                v98 = v94 - 1;
                v99 = v94 - 1;
                v13 = v95;
                v21 = v141;
                v17 = v142;
                v19 = v93;
                v10 = v92;
                v23 = v91;
                do
                {
                  v100 = *v99--;
                  LODWORD(v28) = v28 - v100;
                  v97 = v28 > v93;
                  v101 = v28 > v93 && v98 > v91;
                  v98 = v99;
                }

                while (v101);
                v31 = v99 + 1;
                v22 = v139;
LABEL_186:
                v25 = v136;
                if (v28 < v19)
                {
                  if (((v31 - v23) & 4) == 0)
                  {
                    goto LABEL_190;
                  }

                  if (v31 < &v23[*(v9 + 104)])
                  {
                    *v31++ = 0;
LABEL_190:
                    if (v31 < &v23[*(v9 + 104)])
                    {
                      *v31++ = v19 - (v28 & ~(v28 >> 31));
                      goto LABEL_196;
                    }
                  }

LABEL_240:
                  v118 = v8[150];
                  goto LABEL_211;
                }

                if (v97)
                {
                  v102 = v143;
                  if (v31 >= &v23[*(v9 + 104)])
                  {
                    goto LABEL_240;
                  }

                  *v31 = v19;
                  if (v31 + 1 >= &v23[*(v9 + 104)])
                  {
                    goto LABEL_240;
                  }

                  v31[1] = 0;
                  v31 += 2;
                  v22 = v139;
LABEL_197:
                  if (!v13)
                  {
                    if (v22 <= v10)
                    {
                      v103 = v25;
                      v104 = v10;
                      v105 = v22;
                      v106 = v23;
                      v107 = v31;
                      v108 = v19;
                      v109 = v102;
                      (*(v9 + 88))();
                      if (v107 >= &v106[*(v9 + 104)])
                      {
                        v118 = a1[150];
                        goto LABEL_211;
                      }

                      v13 = 0;
                      *v107 = 0;
                      v23 = *(v9 + 112);
                      v24 = *(v9 + 120);
                      *(v9 + 112) = v24;
                      *(v9 + 120) = v23;
                      v110 = *(v9 + 8);
                      a2 = v109 + v110;
                      ++*(v9 + 152);
                      v10 = v104 - v110;
                      v21 = v141;
                      v17 = v142;
                      v22 = v105;
                      v19 = v108;
                      v25 = v103;
                      v18 = &TIFFFaxWhiteTable;
                      v20 = &TIFFFaxBlackTable;
                      v8 = a1;
                      if (v104 <= v110)
                      {
                        v13 = 0;
                        v14 = a1[144];
                        v15 = a1[145];
LABEL_203:
                        *(v9 + 72) = v12;
                        *(v9 + 76) = v11;
                        *(v9 + 80) = v13;
                        v8[145] = v14 - v25 + v15;
                        v8[144] = v25;
                        return 1;
                      }

                      goto LABEL_5;
                    }

LABEL_254:
                    TIFFErrorExtR(v8, "Fax4Decode", "Buffer overrun detected : %lld bytes available, %d bits needed", v19, v22, v18, v20, v21, v10);
                    return 0xFFFFFFFFLL;
                  }

                  if (v11 > 12)
                  {
                    goto LABEL_253;
                  }

                  goto LABEL_243;
                }

LABEL_196:
                v102 = v143;
                goto LABEL_197;
              }

              v13 = v95;
              v22 = v139;
              v21 = v141;
              v17 = v142;
            }

            v19 = v93;
            v10 = v92;
            v23 = v91;
            goto LABEL_186;
          }

          v76 = *(v67 + 1);
          v28 = (v76 + v28);
        }
      }

      v60 = *(v57 + 1);
      v28 = (v60 + v28);
      i += v60;
    }
  }

  while (1)
  {
    if (v11 > 11)
    {
      goto LABEL_56;
    }

    if (v25 >= v17)
    {
      if (!v11)
      {
        goto LABEL_204;
      }

      v11 = 12;
    }

    else
    {
      v12 |= *(v21 + *v25) << v11;
      if (v11 > 3)
      {
        v11 += 8;
      }

      else
      {
        if ((v25 + 1) < v17)
        {
          v50 = v25[1];
          v25 += 2;
          v12 |= *(v21 + v50) << (v11 + 8);
          v11 += 16;
          goto LABEL_56;
        }

        v11 = 12;
      }

      ++v25;
    }

LABEL_56:
    v51 = &TIFFFaxWhiteTable + 8 * (v12 & 0xFFF);
    v52 = v51[1];
    v11 -= v52;
    v12 >>= v52;
    v53 = *v51;
    if (v53 != 9 && v53 != 11)
    {
      break;
    }

    v55 = *(v51 + 1);
    v28 = (v55 + v28);
    i += v55;
  }

  if (v53 != 7)
  {
    v82 = v23;
    v83 = v10;
    v84 = v19;
    v85 = v22;
    v135 = v31;
    v132 = v13;
    goto LABEL_143;
  }

  v64 = *(v51 + 1);
  *v31 = v64 + i;
  v65 = v31 + 1;
  v28 = (v64 + v28);
  i = 0;
  while (2)
  {
    if (v11 > 12)
    {
      goto LABEL_96;
    }

    if (v25 >= v17)
    {
      if (!v11)
      {
        goto LABEL_206;
      }

      v11 = 13;
    }

    else
    {
      v12 |= *(v21 + *v25) << v11;
      if (v11 > 4)
      {
        v11 += 8;
      }

      else
      {
        if ((v25 + 1) < v17)
        {
          v66 = v25[1];
          v25 += 2;
          v12 |= *(v21 + v66) << (v11 + 8);
          v11 += 16;
          goto LABEL_96;
        }

        v11 = 13;
      }

      ++v25;
    }

LABEL_96:
    v67 = &TIFFFaxBlackTable + 8 * (v12 & 0x1FFF);
    v68 = v67[1];
    v11 -= v68;
    v12 >>= v68;
    v69 = *v67;
    if ((v69 - 10) < 2)
    {
      v70 = *(v67 + 1);
      v28 = (v70 + v28);
      i += v70;
      continue;
    }

    break;
  }

  if (v69 != 8)
  {
    v82 = v23;
    v83 = v10;
    v84 = v19;
    v85 = v22;
    v132 = v13;
    v135 = v31 + 1;
    goto LABEL_141;
  }

LABEL_119:
  if (v65 >= &v23[*(v9 + 104)])
  {
    goto LABEL_210;
  }

  v77 = *(v67 + 1);
  v31[1] = v77 + i;
  v28 = (v77 + v28);
  v31 += 2;
  if (v31 == v23 || (v29 <= v28 ? (v78 = v29 < v19) : (v78 = 0), !v78))
  {
LABEL_35:
    i = 0;
    goto LABEL_82;
  }

  v79 = v30 + 1;
  while (v79 < &v24[*(v9 + 104)])
  {
    v29 = *(v79 - 1) + v29 + *v79;
    v79 += 2;
    if (v29 > v28 || v29 >= v19)
    {
      i = 0;
      v30 = v79 - 1;
      goto LABEL_82;
    }
  }

  v118 = a1[150];
LABEL_211:
  TIFFErrorExt(v118, "Fax4Decode", "Buffer overflow at line %u of %s %u", v19, v22, v18, v20, v21, *(v9 + 152));
  return 0xFFFFFFFFLL;
}

uint64_t Fax4Encode(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[137];
  if (a3 % *(v9 + 8))
  {
    TIFFErrorExtR(a1, "Fax4Encode", "Fractional scanlines cannot be written", a4, a5, a6, a7, a8, v15);
    return 0;
  }

  else
  {
    v11 = a3;
    if (a3 < 1)
    {
      return 1;
    }

    else
    {
      while (1)
      {
        result = Fax3Encode2DRow(a1, a2, *(v9 + 136), *(v9 + 16), a5, a6, a7, a8);
        if (!result)
        {
          break;
        }

        _TIFFmemcpy(*(v9 + 136), a2, *(v9 + 8));
        v13 = *(v9 + 8);
        a2 += v13;
        v14 = v11 <= v13;
        v11 -= v13;
        if (v14)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t Fax4PostEncode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[137];
  v10 = 1;
  Fax3PutBits(a1, 1, 12, a4, a5, a6, a7, a8);
  Fax3PutBits(a1, 1, 12, v11, v12, v13, v14, v15);
  if (*(v9 + 76) != 8)
  {
    if (a1[145] < a1[141] || TIFFFlushData1(a1, v16, v17, v18, v19, v20, v21, v22))
    {
      v23 = *(v9 + 72);
      v24 = a1[144];
      a1[144] = v24 + 1;
      *v24 = v23;
      ++a1[145];
      *(v9 + 72) = 0x800000000;
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

uint64_t TIFFInitCCITTRLE(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = InitCCITTFax3(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    a1[126] = Fax3DecodeRLE;
    a1[128] = Fax3DecodeRLE;
    a1[130] = Fax3DecodeRLE;
    return _cg_TIFFSetField(a1, 0x10000, v10, v11, v12, v13, v14, v15, 7);
  }

  return result;
}

uint64_t Fax3DecodeRLE(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[137];
  if (a3 % *(v8 + 8))
  {
    TIFFErrorExtR(a1, "Fax3DecodeRLE", "Fractional scanlines cannot be read", a4, a5, a6, a7, a8, v61);
    return 0xFFFFFFFFLL;
  }

  v11 = *(v8 + 72);
  v10 = *(v8 + 76);
  v12 = *(v8 + 80);
  v13 = a1[144];
  v14 = a1[145];
  if (a3 < 1)
  {
    v20 = a1[144];
LABEL_87:
    *(v8 + 72) = v11;
    *(v8 + 76) = v10;
    *(v8 + 80) = v12;
    a1[145] = v13 - v20 + v14;
    a1[144] = v20;
    return 1;
  }

  v62 = *(v8 + 80);
  v65 = a1;
  v16 = *(v8 + 16);
  v17 = *(v8 + 64);
  v18 = v13 + v14;
  v64 = *(v8 + 4);
  v19 = *(v8 + 120);
  v20 = a1[144];
  v68 = a1[137];
  v63 = v17;
  while (1)
  {
    v66 = a3;
    v67 = a2;
    v21 = 0;
    v22 = v19;
LABEL_7:
    for (i = 0; ; i += v28)
    {
      if (v10 > 11)
      {
        goto LABEL_18;
      }

      if (v20 >= v18)
      {
        if (v10)
        {
          v10 = 12;
          goto LABEL_18;
        }

        v31 = v22;
LABEL_89:
        v49 = v8;
        TIFFWarningExtR(v65, "Fax3DecodeRLE", "Premature EOF at line %u of %s %u (x %u)", a4, a5, a6, a7, a8, *(v8 + 152));
        if (i)
        {
          v50 = v49;
          if (v31 < &v19[*(v49 + 104)])
          {
            *v31++ = i;
            goto LABEL_93;
          }

LABEL_118:
          v59 = v65[150];
          v60 = *(v50 + 152);
          goto LABEL_119;
        }

        v50 = v49;
LABEL_93:
        if (v21 == v16)
        {
LABEL_94:
          v51 = v67;
        }

        else
        {
          v53 = "Line length mismatch";
          if (v21 < v16)
          {
            v53 = "Premature EOL";
          }

          TIFFWarningExtR(v65, "Fax3DecodeRLE", "%s at line %u of %s %u (got %u, expected %u)", a4, a5, a6, a7, a8, v53);
          v54 = v21 > v16;
          if (v21 <= v16 || v31 <= v19)
          {
            v50 = v68;
          }

          else
          {
            v55 = v31 - 1;
            v56 = v31 - 1;
            v50 = v68;
            do
            {
              v57 = *v56--;
              v21 -= v57;
              v54 = v21 > v16;
              v58 = v21 > v16 && v55 > v19;
              v55 = v56;
            }

            while (v58);
            v31 = v56 + 1;
          }

          if (v21 < v16)
          {
            if (((v31 - v19) & 4) != 0)
            {
              if (v31 >= &v19[*(v50 + 104)])
              {
                goto LABEL_118;
              }

              *v31++ = 0;
            }

            if (v31 >= &v19[*(v50 + 104)])
            {
              goto LABEL_118;
            }

            *v31++ = v16 - (v21 & ~(v21 >> 31));
            goto LABEL_94;
          }

          if (!v54)
          {
            goto LABEL_94;
          }

          v51 = v67;
          if (v31 >= &v19[*(v50 + 104)])
          {
            goto LABEL_118;
          }

          *v31 = v16;
          if (v31 + 1 >= &v19[*(v50 + 104)])
          {
            goto LABEL_118;
          }

          v31[1] = 0;
          v31 += 2;
        }

        v52 = v50;
        (*(v50 + 88))(v51, v19, v31, v16);
        v52[18] = v11;
        v52[19] = 0;
        v52[20] = v62;
        v65[145] += v65[144] - v20;
        v65[144] = v20;
        return 0xFFFFFFFFLL;
      }

      v11 |= *(v17 + *v20) << v10;
      if (v10 > 3)
      {
        v10 += 8;
      }

      else
      {
        if ((v20 + 1) < v18)
        {
          v24 = v20[1];
          v20 += 2;
          v11 |= *(v17 + v24) << (v10 + 8);
          v10 += 16;
          goto LABEL_18;
        }

        v10 = 12;
      }

      ++v20;
LABEL_18:
      v25 = &TIFFFaxWhiteTable + 8 * (v11 & 0xFFF);
      v26 = v25[1];
      v10 -= v26;
      v11 >>= v26;
      v27 = *v25;
      if (v27 < 0xB)
      {
        if (v27 == 9)
        {
          goto LABEL_22;
        }

        if (v27 != 7)
        {
          goto LABEL_49;
        }

        if (v22 >= &v19[*(v8 + 104)])
        {
          goto LABEL_106;
        }

        v29 = *(v25 + 1);
        v30 = v29 + i;
        *v22 = v29 + i;
        v31 = v22 + 1;
        v21 += v29;
        if (v21 >= v16)
        {
          goto LABEL_53;
        }

        for (i = 0; ; i += v36)
        {
          if (v10 > 12)
          {
            goto LABEL_37;
          }

          if (v20 >= v18)
          {
            if (!v10)
            {
              goto LABEL_89;
            }

            v10 = 13;
          }

          else
          {
            v11 |= *(v17 + *v20) << v10;
            if (v10 > 4)
            {
              v10 += 8;
            }

            else
            {
              if ((v20 + 1) < v18)
              {
                v32 = v20[1];
                v20 += 2;
                v11 |= *(v17 + v32) << (v10 + 8);
                v10 += 16;
                goto LABEL_37;
              }

              v10 = 13;
            }

            ++v20;
          }

LABEL_37:
          v33 = &TIFFFaxBlackTable + 8 * (v11 & 0x1FFF);
          v34 = v33[1];
          v10 -= v34;
          v11 >>= v34;
          v35 = *v33;
          if ((v35 - 10) >= 2)
          {
            break;
          }

          v36 = *(v33 + 1);
          v21 += v36;
        }

        if (v35 == 12)
        {
          v62 = 1;
          if (i)
          {
            goto LABEL_51;
          }

          goto LABEL_48;
        }

        if (v35 != 8)
        {
          goto LABEL_50;
        }

        if (v31 >= &v19[*(v8 + 104)])
        {
          goto LABEL_106;
        }

        v37 = *(v33 + 1);
        v31 = v22 + 2;
        v22[1] = v37 + i;
        v21 += v37;
        if (v21 >= v16)
        {
          goto LABEL_53;
        }

        if ((v37 + i) | v30)
        {
          v22 += 2;
        }

        goto LABEL_7;
      }

      if (v27 != 11)
      {
        break;
      }

LABEL_22:
      v28 = *(v25 + 1);
      v21 += v28;
    }

    if (v27 != 12)
    {
LABEL_49:
      v31 = v22;
LABEL_50:
      TIFFErrorExtR(v65, "Fax3DecodeRLE", "Bad code word at line %u of %s %u (x %u)", a4, a5, a6, a7, a8, *(v8 + 152));
      if (i)
      {
        goto LABEL_51;
      }

LABEL_48:
      v8 = v68;
      goto LABEL_53;
    }

    v62 = 1;
    v31 = v22;
    if (!i)
    {
      goto LABEL_48;
    }

LABEL_51:
    v8 = v68;
    if (v31 >= &v19[*(v68 + 104)])
    {
      goto LABEL_106;
    }

    *v31++ = i;
LABEL_53:
    if (v21 == v16)
    {
LABEL_75:
      v44 = v67;
      goto LABEL_76;
    }

    v38 = "Line length mismatch";
    if (v21 < v16)
    {
      v38 = "Premature EOL";
    }

    TIFFWarningExtR(v65, "Fax3DecodeRLE", "%s at line %u of %s %u (got %u, expected %u)", a4, a5, a6, a7, a8, v38);
    v39 = v21 > v16;
    if (v21 <= v16 || v31 <= v19)
    {
      v8 = v68;
    }

    else
    {
      v40 = v31 - 1;
      v41 = v31 - 1;
      v8 = v68;
      do
      {
        v42 = *v41--;
        v21 -= v42;
        v39 = v21 > v16;
        v43 = v21 > v16 && v40 > v19;
        v40 = v41;
      }

      while (v43);
      v31 = v41 + 1;
    }

    if (v21 < v16)
    {
      break;
    }

    if (!v39)
    {
      goto LABEL_75;
    }

    v44 = v67;
    if (v31 >= &v19[*(v8 + 104)])
    {
      goto LABEL_106;
    }

    *v31 = v16;
    if (v31 + 1 >= &v19[*(v8 + 104)])
    {
      goto LABEL_106;
    }

    v31[1] = 0;
    v31 += 2;
LABEL_76:
    (*(v8 + 88))(v44, v19, v31, v16);
    if ((v64 & 4) != 0)
    {
      v47 = v10 & 7;
      v10 &= 0xFFFFFFF8;
      v11 >>= v47;
      v8 = v68;
      v45 = v66;
      v17 = v63;
    }

    else
    {
      v45 = v66;
      v17 = v63;
      if ((v64 & 8) != 0)
      {
        v46 = v10 & 0xF;
        v10 &= 0xFFFFFFF0;
        v11 >>= v46;
        v20 += (v10 == 0) & v20;
      }

      v8 = v68;
    }

    v48 = *(v8 + 8);
    a2 = v44 + v48;
    ++*(v8 + 152);
    v43 = v45 <= v48;
    a3 = v45 - v48;
    if (v43)
    {
      a1 = v65;
      v13 = v65[144];
      v14 = v65[145];
      v12 = v62;
      goto LABEL_87;
    }
  }

  if (((v31 - v19) & 4) == 0)
  {
    goto LABEL_69;
  }

  if (v31 < &v19[*(v8 + 104)])
  {
    *v31++ = 0;
LABEL_69:
    if (v31 < &v19[*(v8 + 104)])
    {
      *v31++ = v16 - (v21 & ~(v21 >> 31));
      goto LABEL_75;
    }
  }

LABEL_106:
  v59 = v65[150];
  v60 = *(v8 + 152);
LABEL_119:
  TIFFErrorExt(v59, "Fax3DecodeRLE", "Buffer overflow at line %u of %s %u", a4, a5, a6, a7, a8, v60);
  return 0xFFFFFFFFLL;
}

uint64_t TIFFInitCCITTRLEW(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = InitCCITTFax3(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    a1[126] = Fax3DecodeRLE;
    a1[128] = Fax3DecodeRLE;
    a1[130] = Fax3DecodeRLE;
    return _cg_TIFFSetField(a1, 0x10000, v10, v11, v12, v13, v14, v15, 11);
  }

  return result;
}

uint64_t Fax3VGetField(uint64_t a1, int a2, void **a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    Fax3VGetField_cold_1();
  }

  if (a2 > 327)
  {
    switch(a2)
    {
      case 328:
        v4 = *(v3 + 24);
        break;
      case 65540:
        **a3 = *(v3 + 88);
        return 1;
      case 65536:
        v4 = *(v3 + 4);
        break;
      default:
        goto LABEL_13;
    }

LABEL_17:
    **a3 = v4;
    return 1;
  }

  if ((a2 - 292) < 2)
  {
    v4 = *(v3 + 32);
    goto LABEL_17;
  }

  if (a2 == 326)
  {
    v4 = *(v3 + 28);
    goto LABEL_17;
  }

  if (a2 == 327)
  {
    **a3 = *(v3 + 20);
    return 1;
  }

LABEL_13:
  v5 = *(v3 + 40);

  return v5();
}

uint64_t Fax3VSetField(uint64_t a1, int a2, _DWORD *a3)
{
  v3 = *(a1 + 1096);
  if (!v3)
  {
    Fax3VSetField_cold_2();
  }

  v4 = *(v3 + 48);
  if (!v4)
  {
    Fax3VSetField_cold_1();
  }

  if (a2 <= 326)
  {
    switch(a2)
    {
      case 292:
        if (*(a1 + 120) != 3)
        {
          goto LABEL_25;
        }

        break;
      case 293:
        if (*(a1 + 120) != 4)
        {
          goto LABEL_25;
        }

        break;
      case 326:
        *(v3 + 28) = *a3;
LABEL_25:
        result = TIFFFieldWithTag(a1, a2);
        if (result)
        {
          v7 = *(result + 24);
          result = 1;
          *(a1 + ((v7 >> 3) & 0x1FFC) + 72) |= 1 << v7;
          *(a1 + 16) |= 8u;
        }

        return result;
      default:
        goto LABEL_17;
    }

    *(v3 + 32) = *a3;
    goto LABEL_25;
  }

  if (a2 >= 0x10000)
  {
    if (a2 == 65540)
    {
      *(v3 + 88) = *a3;
    }

    else
    {
      if (a2 != 0x10000)
      {
        goto LABEL_17;
      }

      *(v3 + 4) = *a3;
    }

    return 1;
  }

  if (a2 == 327)
  {
    *(v3 + 20) = *a3;
    goto LABEL_25;
  }

  if (a2 == 328)
  {
    *(v3 + 24) = *a3;
    goto LABEL_25;
  }

LABEL_17:

  return v4();
}

uint64_t Fax3PrintDir(uint64_t result, FILE *__stream, uint64_t a3)
{
  v3 = *(result + 1096);
  if (!v3)
  {
    Fax3PrintDir_cold_1();
  }

  v6 = result;
  v7 = *(result + 80);
  if ((v7 & 0x200) == 0)
  {
    if ((v7 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  if (*(result + 120) == 4)
  {
    fwrite("  Group 4 Options:", 0x12uLL, 1uLL, __stream);
    if ((*(v3 + 32) & 2) == 0)
    {
      goto LABEL_19;
    }

    v9 = " ";
    goto LABEL_18;
  }

  fwrite("  Group 3 Options:", 0x12uLL, 1uLL, __stream);
  v10 = *(v3 + 32);
  v9 = " ";
  if (v10)
  {
    fprintf(__stream, "%s2-d encoding", " ");
    v10 = *(v3 + 32);
    v9 = "+";
    if ((v10 & 4) == 0)
    {
LABEL_17:
      if ((v10 & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v10 & 4) == 0)
  {
    goto LABEL_17;
  }

  fprintf(__stream, "%sEOL padding", v9);
  v9 = "+";
  if ((*(v3 + 32) & 2) != 0)
  {
LABEL_18:
    fprintf(__stream, "%suncompressed data", v9);
  }

LABEL_19:
  result = fprintf(__stream, " (%u = 0x%x)\n", *(v3 + 32), *(v3 + 32));
  v7 = *(v6 + 80);
  if ((v7 & 8) == 0)
  {
LABEL_4:
    if ((v7 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_20:
  fwrite("  Fax Data:", 0xBuLL, 1uLL, __stream);
  v11 = *(v3 + 20);
  if (v11 == 2)
  {
    v12 = " uncorrected errors";
    v13 = 19;
  }

  else if (v11 == 1)
  {
    v12 = " receiver regenerated";
    v13 = 21;
  }

  else
  {
    if (*(v3 + 20))
    {
      goto LABEL_30;
    }

    v12 = " clean";
    v13 = 6;
  }

  fwrite(v12, v13, 1uLL, __stream);
LABEL_30:
  result = fprintf(__stream, " (%hu = 0x%hx)\n", *(v3 + 20), *(v3 + 20));
  v7 = *(v6 + 80);
  if ((v7 & 4) == 0)
  {
LABEL_5:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_31:
  result = fprintf(__stream, "  Bad Fax Lines: %u\n", *(v3 + 28));
  if ((*(v6 + 80) & 0x10) != 0)
  {
LABEL_6:
    result = fprintf(__stream, "  Consecutive Bad Fax Lines: %u\n", *(v3 + 24));
  }

LABEL_7:
  v8 = *(v3 + 56);
  if (v8)
  {

    return v8(v6, __stream, a3);
  }

  return result;
}

uint64_t Fax3SetupState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 116) != 1)
  {
    v12 = "Fax3SetupState";
    v13 = "Bits/sample must be 1 for Group 3/4 encoding/decoding";
LABEL_32:
    TIFFErrorExtR(a1, v12, v13, a4, a5, a6, a7, a8, v25);
    return 0;
  }

  v9 = *(a1 + 1096);
  if ((*(a1 + 17) & 4) != 0)
  {
    v10 = _cg_TIFFTileRowSize(a1, a2, a3, a4, a5, a6, a7, a8);
    v11 = 100;
  }

  else
  {
    v10 = _cg_TIFFScanlineSize(a1, a2, a3, a4, a5, a6, a7, a8);
    v11 = 88;
  }

  v14 = *(a1 + v11);
  if (v10 >= ((v14 + 7) >> 3))
  {
    *(v9 + 8) = v10;
    *(v9 + 16) = v14;
    v15 = (*(v9 + 32) & 1) != 0 || *(a1 + 120) == 4;
    *(v9 + 96) = 0;
    if ((v14 + 1) >= 0xFFFFFFE0)
    {
      v16 = 0;
    }

    else
    {
      v16 = (v14 & 0xFFFFFFE0) + 32;
    }

    v17 = 2 * v16;
    if (v16 < 0)
    {
      v17 = 0;
    }

    if (v15)
    {
      v16 = v17;
    }

    *(v9 + 104) = v16;
    if (v16 <= 0)
    {
      v12 = *a1;
      v25 = v14;
      v13 = "Row pixels integer overflow (rowpixels %u)";
      goto LABEL_32;
    }

    result = _TIFFCheckMalloc(a1, (2 * v16), 4, "for Group 3/4 run arrays", a5, a6, a7, a8);
    *(v9 + 96) = result;
    if (!result)
    {
      return result;
    }

    v19 = *(v9 + 104);
    if (v19 < 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = 8 * v19;
    }

    bzero(result, v20);
    v21 = 0;
    v22 = *(v9 + 96);
    *(v9 + 120) = v22;
    if (v15)
    {
      v21 = v22 + 4 * *(v9 + 104);
    }

    *(v9 + 112) = v21;
    if (*(a1 + 120) == 3 && (*(v9 + 32) & 1) != 0)
    {
      *(a1 + 1008) = Fax3Decode2D;
      *(a1 + 1024) = Fax3Decode2D;
      *(a1 + 1040) = Fax3Decode2D;
    }

    v23 = *(a1 + 1096);
    if (v15)
    {
      v24 = malloc_type_malloc(v10, 0x100004077774924uLL);
      *(v23 + 136) = v24;
      if (!v24)
      {
        v12 = "Fax3SetupState";
        v13 = "No space for Group 3/4 reference line";
        goto LABEL_32;
      }
    }

    else
    {
      *(v23 + 136) = 0;
    }

    return 1;
  }

  TIFFErrorExtR(a1, "Fax3SetupState", "Inconsistent number of bytes per row : rowbytes=%lld rowpixels=%u", a4, a5, a6, a7, a8, v10);
  return 0;
}

uint64_t Fax3PreDecode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    Fax3PreDecode_cold_1();
  }

  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 64) = TIFFGetBitRevTable(*(a1 + 126) != 2);
  v2 = *(v1 + 96);
  *(v1 + 120) = v2;
  if (*(v1 + 112))
  {
    v3 = (v2 + 4 * *(v1 + 104));
    *(v1 + 112) = v3;
    *v3 = *(v1 + 16);
  }

  *(v1 + 152) = 0;
  return 1;
}

uint64_t Fax3Decode1D(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[137];
  if (a3 % *(v8 + 8))
  {
    TIFFErrorExtR(a1, "Fax3Decode1D", "Fractional scanlines cannot be read", a4, a5, a6, a7, a8, v63);
    return 0xFFFFFFFFLL;
  }

  v10 = a3;
  v12 = *(v8 + 72);
  v11 = *(v8 + 76);
  v13 = *(v8 + 80);
  v14 = a1[144];
  v15 = a1[145];
  if (a3 < 1)
  {
    v20 = a1[144];
    goto LABEL_105;
  }

  v67 = a1;
  v17 = *(v8 + 16);
  v18 = *(v8 + 64);
  v19 = v14 + v15;
  v68 = v17;
  v69 = *(v8 + 120);
  v20 = a1[144];
  while (2)
  {
    if (!v13)
    {
      while (1)
      {
        if (v11 > 10)
        {
          goto LABEL_19;
        }

        if (v20 >= v19)
        {
          if (!v11)
          {
            v13 = 0;
LABEL_108:
            v50 = v67;
            if (v17)
            {
              TIFFWarningExtR(v67, "Fax3Decode1D", "%s at line %u of %s %u (got %u, expected %u)", v17, a5, a6, a7, a8, "Premature EOL");
              v17 = v68;
              v51 = *(v8 + 104);
              if (v68 >= 1)
              {
                if (v51)
                {
                  v52 = v69;
                  *v69 = v68;
                  v53 = v69 + 1;
                  goto LABEL_150;
                }

LABEL_146:
                v54 = v50[150];
LABEL_147:
                TIFFErrorExt(v54, "Fax3Decode1D", "Buffer overflow at line %u of %s %u", v17, a5, a6, a7, a8, *(v8 + 152));
                return 0xFFFFFFFFLL;
              }

              if (!v51)
              {
                goto LABEL_146;
              }

              v52 = v69;
              *v69 = v68;
              if (*(v8 + 104) <= 1u)
              {
                goto LABEL_146;
              }

              v53 = v69 + 2;
              v69[1] = 0;
            }

            else
            {
              v52 = v69;
              v53 = v69;
            }

LABEL_150:
            (*(v8 + 88))(a2, v52, v53);
            *(v8 + 72) = v12;
            *(v8 + 76) = 0;
            *(v8 + 80) = v13;
            v50[145] += v50[144] - v20;
            v50[144] = v20;
            if (v10 < *(v50 + 22))
            {
              return 1;
            }

            else
            {
              return 0xFFFFFFFFLL;
            }
          }

          v11 = 11;
        }

        else
        {
          v12 |= *(v18 + *v20) << v11;
          if (v11 > 2)
          {
            v11 += 8;
          }

          else
          {
            if ((v20 + 1) < v19)
            {
              v21 = v20[1];
              v20 += 2;
              v12 |= *(v18 + v21) << (v11 + 8);
              v11 += 16;
              goto LABEL_19;
            }

            v11 = 11;
          }

          ++v20;
        }

LABEL_19:
        if ((v12 & 0x7FF) == 0)
        {
          goto LABEL_22;
        }

        --v11;
        v12 >>= 1;
      }
    }

    while (1)
    {
LABEL_22:
      if (v11 <= 7)
      {
        if (v20 >= v19)
        {
          if (!v11)
          {
            goto LABEL_108;
          }

          v11 = 8;
        }

        else
        {
          v22 = *v20++;
          v12 |= *(v18 + v22) << v11;
          v11 += 8;
        }
      }

      if (v12)
      {
        break;
      }

      v11 -= 8;
      v12 >>= 8;
    }

    v66 = a2;
    if ((v12 & 1) == 0)
    {
      do
      {
        v23 = v12;
        --v11;
        v12 >>= 1;
      }

      while ((v23 & 2) == 0);
    }

    v24 = 0;
    --v11;
    v12 >>= 1;
    v25 = v69;
    v65 = v10;
LABEL_31:
    for (i = 0; ; i += v31)
    {
      if (v11 > 11)
      {
        goto LABEL_42;
      }

      if (v20 >= v19)
      {
        if (v11)
        {
          v11 = 12;
          goto LABEL_42;
        }

        v49 = v25;
LABEL_118:
        v50 = v67;
        TIFFWarningExtR(v67, "Fax3Decode1D", "Premature EOF at line %u of %s %u (x %u)", v17, a5, a6, a7, a8, *(v8 + 152));
        if (i)
        {
          v17 = v68;
          if (v49 >= &v69[*(v8 + 104)])
          {
            goto LABEL_146;
          }

          *v49 = i;
          v53 = v49 + 1;
        }

        else
        {
          v17 = v68;
          v53 = v49;
        }

        if (v24 == v17)
        {
          v13 = 0;
          a2 = v66;
          goto LABEL_124;
        }

        v55 = v53;
        v56 = "Premature EOL";
        if (v24 >= v17)
        {
          v56 = "Line length mismatch";
        }

        TIFFWarningExtR(v67, "Fax3Decode1D", "%s at line %u of %s %u (got %u, expected %u)", v17, a5, a6, a7, a8, v56);
        v17 = v68;
        v52 = v69;
        v57 = v24 > v68;
        if (v24 <= v68)
        {
          v53 = v55;
        }

        else
        {
          v53 = v55;
          if (v55 > v69)
          {
            v58 = v55 - 1;
            v59 = v55 - 1;
            do
            {
              v60 = *v59--;
              v24 -= v60;
              v57 = v24 > v68;
              v61 = v24 > v68 && v58 > v69;
              v58 = v59;
            }

            while (v61);
            v53 = v59 + 1;
          }
        }

        if (v24 >= v68)
        {
          if (v57)
          {
            a2 = v66;
            if (v53 >= &v69[*(v8 + 104)])
            {
              goto LABEL_146;
            }

            *v53 = v68;
            if (v53 + 1 >= &v69[*(v8 + 104)])
            {
              goto LABEL_146;
            }

            v13 = 0;
            v53[1] = 0;
            v53 += 2;
LABEL_124:
            v52 = v69;
            goto LABEL_150;
          }

          v13 = 0;
        }

        else
        {
          if (((v53 - v69) & 4) != 0)
          {
            if (v53 >= &v69[*(v8 + 104)])
            {
              goto LABEL_146;
            }

            *v53++ = 0;
          }

          if (v53 >= &v69[*(v8 + 104)])
          {
            goto LABEL_146;
          }

          v62 = v24 & ~(v24 >> 31);
          v13 = 0;
          *v53++ = v68 - v62;
        }

        a2 = v66;
        goto LABEL_150;
      }

      v12 |= *(v18 + *v20) << v11;
      if (v11 > 3)
      {
        v11 += 8;
      }

      else
      {
        if ((v20 + 1) < v19)
        {
          v27 = v20[1];
          v20 += 2;
          v12 |= *(v18 + v27) << (v11 + 8);
          v11 += 16;
          goto LABEL_42;
        }

        v11 = 12;
      }

      ++v20;
LABEL_42:
      v28 = &TIFFFaxWhiteTable + 8 * (v12 & 0xFFF);
      v29 = v28[1];
      v11 -= v29;
      v12 >>= v29;
      v30 = *v28;
      if (v30 >= 0xB)
      {
        break;
      }

      if (v30 != 9)
      {
        if (v30 != 7)
        {
          goto LABEL_73;
        }

        if (v25 >= &v69[*(v8 + 104)])
        {
          goto LABEL_116;
        }

        v32 = *(v28 + 1);
        v33 = v32 + i;
        *v25 = v32 + i;
        v34 = v25 + 1;
        v24 += v32;
        if (v24 >= v17)
        {
LABEL_103:
          v64 = 0;
          goto LABEL_77;
        }

        for (i = 0; ; i += v39)
        {
          if (v11 > 12)
          {
            goto LABEL_61;
          }

          if (v20 >= v19)
          {
            if (!v11)
            {
              v49 = v25 + 1;
              v10 = v65;
              goto LABEL_118;
            }

            v11 = 13;
          }

          else
          {
            v12 |= *(v18 + *v20) << v11;
            if (v11 > 4)
            {
              v11 += 8;
            }

            else
            {
              if ((v20 + 1) < v19)
              {
                v35 = v20[1];
                v20 += 2;
                v12 |= *(v18 + v35) << (v11 + 8);
                v11 += 16;
                goto LABEL_61;
              }

              v11 = 13;
            }

            ++v20;
          }

LABEL_61:
          v36 = &TIFFFaxBlackTable + 8 * (v12 & 0x1FFF);
          v37 = v36[1];
          v11 -= v37;
          v12 >>= v37;
          v38 = *v36;
          if ((v38 - 10) >= 2)
          {
            if (v38 == 12)
            {
              v64 = 1;
              if (i)
              {
                goto LABEL_75;
              }

              goto LABEL_77;
            }

            if (v38 != 8)
            {
              goto LABEL_74;
            }

            if (v34 >= &v69[*(v8 + 104)])
            {
              goto LABEL_116;
            }

            v40 = *(v36 + 1);
            v34 = v25 + 2;
            v25[1] = v40 + i;
            v24 += v40;
            if (v24 >= v17)
            {
              goto LABEL_103;
            }

            if ((v40 + i) | v33)
            {
              v25 += 2;
            }

            v10 = v65;
            goto LABEL_31;
          }

          v39 = *(v36 + 1);
          v24 += v39;
        }
      }

LABEL_46:
      v31 = *(v28 + 1);
      v24 += v31;
    }

    if (v30 == 11)
    {
      goto LABEL_46;
    }

    if (v30 == 12)
    {
      v64 = 1;
      v34 = v25;
      if (!i)
      {
        goto LABEL_77;
      }

LABEL_75:
      if (v34 < &v69[*(v8 + 104)])
      {
        *v34++ = i;
        goto LABEL_77;
      }

LABEL_116:
      v54 = v67[150];
      goto LABEL_147;
    }

LABEL_73:
    v34 = v25;
LABEL_74:
    TIFFErrorExtR(v67, "Fax3Decode1D", "Bad code word at line %u of %s %u (x %u)", v17, a5, a6, a7, a8, *(v8 + 152));
    v64 = 0;
    v17 = v68;
    if (i)
    {
      goto LABEL_75;
    }

LABEL_77:
    if (v24 == v17)
    {
LABEL_98:
      v47 = v66;
      v13 = v64;
    }

    else
    {
      v41 = "Premature EOL";
      if (v24 >= v17)
      {
        v41 = "Line length mismatch";
      }

      TIFFWarningExtR(v67, "Fax3Decode1D", "%s at line %u of %s %u (got %u, expected %u)", v17, a5, a6, a7, a8, v41);
      v42 = v24 > v68;
      if (v24 > v68 && v34 > v69)
      {
        v43 = v34 - 1;
        v44 = v34 - 1;
        do
        {
          v45 = *v44--;
          v24 -= v45;
          v42 = v24 > v68;
          v46 = v24 > v68 && v43 > v69;
          v43 = v44;
        }

        while (v46);
        v34 = v44 + 1;
      }

      if (v24 < v68)
      {
        if (((v34 - v69) & 4) != 0)
        {
          if (v34 >= &v69[*(v8 + 104)])
          {
            goto LABEL_116;
          }

          *v34++ = 0;
        }

        if (v34 >= &v69[*(v8 + 104)])
        {
          goto LABEL_116;
        }

        *v34++ = v68 - (v24 & ~(v24 >> 31));
        goto LABEL_98;
      }

      if (!v42)
      {
        goto LABEL_98;
      }

      v47 = v66;
      v13 = v64;
      if (v34 >= &v69[*(v8 + 104)])
      {
        goto LABEL_116;
      }

      *v34 = v68;
      if (v34 + 1 >= &v69[*(v8 + 104)])
      {
        goto LABEL_116;
      }

      v34[1] = 0;
      v34 += 2;
    }

    (*(v8 + 88))(v47, v69, v34, v68);
    v17 = v68;
    v48 = *(v8 + 8);
    a2 = v47 + v48;
    ++*(v8 + 152);
    v10 = v65 - v48;
    if (v65 > v48)
    {
      continue;
    }

    break;
  }

  a1 = v67;
  v14 = v67[144];
  v15 = v67[145];
LABEL_105:
  *(v8 + 72) = v12;
  *(v8 + 76) = v11;
  *(v8 + 80) = v13;
  a1[145] = v14 - v20 + v15;
  a1[144] = v20;
  return 1;
}

uint64_t Fax3PreEncode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    Fax3PreEncode_cold_1();
  }

  *(v1 + 72) = 0x800000000;
  *(v1 + 128) = 0;
  v3 = *(v1 + 136);
  if (v3)
  {
    _TIFFmemset(v3, 0, *(v1 + 8));
  }

  if (*(v1 + 32))
  {
    v6 = *(a1 + 164);
    if (*(a1 + 168) == 3)
    {
      v6 = v6 * 2.54;
    }

    if (v6 <= 150.0)
    {
      v4 = 2;
    }

    else
    {
      v4 = 4;
    }

    v5 = v4 - 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *(v1 + 144) = v5;
  *(v1 + 148) = v4;
  *(v1 + 152) = 0;
  return 1;
}

uint64_t Fax3PostEncode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[137];
  if (*(v8 + 76) == 8)
  {
    return 1;
  }

  if (a1[145] < a1[141] || (result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8), result))
  {
    v11 = *(v8 + 72);
    v12 = a1[144];
    a1[144] = v12 + 1;
    *v12 = v11;
    ++a1[145];
    *(v8 + 72) = 0x800000000;
    return 1;
  }

  return result;
}

uint64_t Fax3Encode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[137];
  if (a3 % *(v9 + 8))
  {
    TIFFErrorExtR(a1, "Fax3Encode", "Fractional scanlines cannot be written", a4, a5, a6, a7, a8, v31);
    return 0;
  }

  v11 = a3;
  if (a3 < 1)
  {
    return 1;
  }

  v12 = a2;
  while ((*(v9 + 4) & 2) != 0)
  {
LABEL_39:
    if ((*(v9 + 32) & 1) == 0)
    {
      result = Fax3Encode1DRow(a1, v12, *(v9 + 16), a4, a5, a6, a7, a8);
      if (!result)
      {
        return result;
      }

      goto LABEL_49;
    }

    if (*(v9 + 128))
    {
      result = Fax3Encode2DRow(a1, v12, *(v9 + 136), *(v9 + 16), a5, a6, a7, a8);
      if (!result)
      {
        return result;
      }

      v28 = *(v9 + 144) - 1;
      *(v9 + 144) = v28;
      if (!v28)
      {
        goto LABEL_48;
      }
    }

    else
    {
      result = Fax3Encode1DRow(a1, v12, *(v9 + 16), a4, a5, a6, a7, a8);
      if (!result)
      {
        return result;
      }

      *(v9 + 128) = 1;
      if (!*(v9 + 144))
      {
LABEL_48:
        *(v9 + 128) = 0;
        *(v9 + 144) = *(v9 + 148) - 1;
        goto LABEL_49;
      }
    }

    _TIFFmemcpy(*(v9 + 136), v12, *(v9 + 8));
LABEL_49:
    v29 = *(v9 + 8);
    v12 += v29;
    result = 1;
    v30 = v11 <= v29;
    v11 -= v29;
    if (v30)
    {
      return result;
    }
  }

  v13 = a1[137];
  v15 = *(v13 + 72);
  v14 = *(v13 + 76);
  if ((*(v13 + 32) & 4) == 0 || v14 == 4)
  {
    goto LABEL_23;
  }

  v16 = v14 < 4 ? 4 : -4;
  v17 = v16 + v14;
  if (v16 + v14 <= v14)
  {
    if (v17 >= 9)
    {
      Fax3Encode_cold_1();
    }
  }

  else
  {
    v18 = a1[145];
    do
    {
      if (v18 >= a1[141])
      {
        result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
        if (!result)
        {
          return result;
        }
      }

      v17 -= v14;
      v19 = a1[144];
      a1[144] = v19 + 1;
      *v19 = v15;
      v18 = a1[145] + 1;
      a1[145] = v18;
      v14 = 8;
      LOBYTE(v15) = 0;
    }

    while (v17 > 8);
    LOBYTE(v15) = 0;
  }

  v14 -= v17;
  if (v14)
  {
LABEL_23:
    if (*(v13 + 32))
    {
      if (*(v13 + 128))
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }

      v21 = 13;
    }

    else
    {
      v21 = 12;
      v22 = 1;
    }

    if (v21 <= v14)
    {
      Fax3Encode_cold_2();
    }

    v23 = a1[145];
    do
    {
      if (v23 >= a1[141])
      {
        result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
        if (!result)
        {
          return result;
        }
      }

      v21 -= v14;
      v24 = a1[144];
      a1[144] = v24 + 1;
      *v24 = (v22 >> v21) | v15;
      v23 = a1[145] + 1;
      a1[145] = v23;
      v14 = 8;
      LOBYTE(v15) = 0;
    }

    while (v21 > 8);
    v25 = 8 - v21;
    v26 = (_msbmask[v21] & v22) << (8 - v21);
    if (v21 == 8)
    {
      if (v23 >= a1[141])
      {
        result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
        if (!result)
        {
          return result;
        }
      }

      v27 = a1[144];
      a1[144] = v27 + 1;
      *v27 = v26;
      ++a1[145];
      v25 = 8;
      v26 = 0;
    }

    *(v13 + 72) = v26;
    *(v13 + 76) = v25;
    goto LABEL_39;
  }

  if (a1[145] < a1[141] || (result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8), result))
  {
    v20 = a1[144];
    a1[144] = v20 + 1;
    *v20 = v15;
    ++a1[145];
    v14 = 8;
    LOBYTE(v15) = 0;
    goto LABEL_23;
  }

  return result;
}

double Fax3Close(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[137];
  if ((*(v8 + 4) & 1) == 0 && a1[144])
  {
    if (*(v8 + 32))
    {
      if (*(v8 + 128))
      {
        v11 = 2;
      }

      else
      {
        v11 = 3;
      }

      v10 = 13;
    }

    else
    {
      v10 = 12;
      v11 = 1;
    }

    v12 = 6;
    do
    {
      Fax3PutBits(a1, v11, v10, a4, a5, a6, a7, a8);
      --v12;
    }

    while (v12);
    if (a1[145] < a1[141] || TIFFFlushData1(a1, v13, v14, a4, a5, a6, a7, a8))
    {
      v16 = *(v8 + 72);
      v17 = a1[144];
      a1[144] = v17 + 1;
      *v17 = v16;
      ++a1[145];
      *&result = 0x800000000;
      *(v8 + 72) = 0x800000000;
    }
  }

  return result;
}

uint64_t Fax3Cleanup(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    Fax3Cleanup_cold_1();
  }

  v3 = v1[6];
  *(a1 + 1288) = v1[5];
  *(a1 + 1280) = v3;
  *(a1 + 1296) = v1[7];
  v4 = v1[12];
  if (v4)
  {
    free(v4);
  }

  v5 = v1[17];
  if (v5)
  {
    free(v5);
  }

  free(*(a1 + 1096));
  *(a1 + 1096) = 0;

  return _TIFFSetDefaultCompressionState(a1);
}

uint64_t Fax3Decode2D(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = a1[137];
  if (a3 % *(v9 + 8))
  {
    TIFFErrorExtR(a1, "Fax3Decode2D", "Fractional scanlines cannot be read", a4, a5, a6, a7, a8, v134);
    return 0xFFFFFFFFLL;
  }

  v11 = a3;
  v12 = *(v9 + 72);
  v13 = *(v9 + 76);
  v14 = *(v9 + 80);
  v15 = a1[144];
  v16 = a1[145];
  if (a3 < 1)
  {
    v22 = a1[144];
    goto LABEL_289;
  }

  v18 = v15 + v16;
  v19 = *(v9 + 16);
  v20 = *(v9 + 64);
  v21 = *(v9 + 120);
  v22 = a1[144];
  v143 = v19;
LABEL_6:
  if (!v14)
  {
    while (1)
    {
      if (v13 > 10)
      {
        goto LABEL_19;
      }

      if (v22 >= v18)
      {
        if (!v13)
        {
          v14 = 0;
LABEL_291:
          if (v19)
          {
LABEL_292:
            TIFFWarningExtR(v8, "Fax3Decode2D", "%s at line %u of %s %u (got %u, expected %u)", v19, v11, a6, a7, a8, "Premature EOL");
            v19 = v143;
            v122 = *(v9 + 104);
            if (v143 < 1)
            {
              if (v122)
              {
                *v21 = v143;
                if (*(v9 + 104) > 1u)
                {
                  v123 = v21 + 2;
                  v21[1] = 0;
                  goto LABEL_344;
                }
              }
            }

            else if (v122)
            {
              *v21 = v143;
              v123 = v21 + 1;
              goto LABEL_344;
            }

            goto LABEL_338;
          }

LABEL_343:
          v123 = v21;
          goto LABEL_344;
        }

        v13 = 11;
      }

      else
      {
        v12 |= *(v20 + *v22) << v13;
        if (v13 > 2)
        {
          v13 += 8;
        }

        else
        {
          if ((v22 + 1) < v18)
          {
            v23 = v22[1];
            v22 += 2;
            v12 |= *(v20 + v23) << (v13 + 8);
            v13 += 16;
            goto LABEL_19;
          }

          v13 = 11;
        }

        ++v22;
      }

LABEL_19:
      if ((v12 & 0x7FF) == 0)
      {
        goto LABEL_22;
      }

      --v13;
      v12 >>= 1;
    }
  }

  while (1)
  {
LABEL_22:
    if (v13 <= 7)
    {
      if (v22 >= v18)
      {
        if (!v13)
        {
          goto LABEL_291;
        }

        v13 = 8;
      }

      else
      {
        v24 = *v22++;
        v12 |= *(v20 + v24) << v13;
        v13 += 8;
      }
    }

    if (v12)
    {
      break;
    }

    v13 -= 8;
    v12 >>= 8;
  }

  if ((v12 & 1) == 0)
  {
    do
    {
      v25 = v12;
      --v13;
      v12 >>= 1;
    }

    while ((v25 & 2) == 0);
  }

  v26 = v12 >> 1;
  v27 = v13 - 1;
  if (v13 <= 1)
  {
    if (v22 >= v18)
    {
      if (v13 == 1)
      {
        v14 = 0;
        v12 >>= 1;
        if (v19)
        {
          goto LABEL_292;
        }

        goto LABEL_343;
      }

      v27 = 1;
    }

    else
    {
      v28 = *v22++;
      v26 |= *(v20 + v28) << v27;
      v27 = v13 + 7;
    }
  }

  v13 = v27 - 1;
  v12 = v26 >> 1;
  v141 = a2;
  if (v26)
  {
    v31 = 0;
    v85 = v21;
    while (1)
    {
      for (i = 0; ; i += v91)
      {
        if (v13 > 11)
        {
          goto LABEL_176;
        }

        if (v22 >= v18)
        {
          if (!v13)
          {
            v35 = v85;
LABEL_299:
            TIFFWarningExtR(a1, "Fax3Decode2D", "Premature EOF at line %u of %s %u (x %u)", v19, v11, a6, a7, a8, *(v9 + 152));
            if (i)
            {
              v19 = v143;
              if (v35 >= &v21[*(v9 + 104)])
              {
                goto LABEL_316;
              }

              *v35 = i;
              v123 = v35 + 1;
            }

            else
            {
              LODWORD(v19) = v143;
              v123 = v35;
            }

            v8 = a1;
            if (v31 == v19)
            {
              goto LABEL_340;
            }

            v124 = v123;
            Fax3BadLength("Fax3Decode2D", a1, *(v9 + 152), v31, v143, a6, a7, a8);
            v19 = v143;
            v125 = v31 > v143;
            if (v31 <= v143)
            {
              goto LABEL_327;
            }

            v123 = v124;
            if (v124 > v21)
            {
              v126 = v124 - 1;
              v127 = v124 - 1;
              do
              {
                v128 = *v127--;
                LODWORD(v31) = v31 - v128;
                v125 = v31 > v143;
                v129 = v31 > v143 && v126 > v21;
                v126 = v127;
              }

              while (v129);
LABEL_326:
              v123 = v127 + 1;
            }

LABEL_328:
            if (v31 >= v19)
            {
              if (!v125)
              {
                goto LABEL_340;
              }

              a2 = v141;
              if (v123 < &v21[*(v9 + 104)])
              {
                *v123 = v19;
                if (v123 + 1 < &v21[*(v9 + 104)])
                {
                  v14 = 0;
                  v123[1] = 0;
                  v123 += 2;
                  goto LABEL_344;
                }
              }
            }

            else
            {
              if (((v123 - v21) & 4) != 0)
              {
                if (v123 >= &v21[*(v9 + 104)])
                {
                  goto LABEL_338;
                }

                *v123++ = 0;
              }

              if (v123 < &v21[*(v9 + 104)])
              {
                v14 = 0;
                *v123++ = v19 - (v31 & ~(v31 >> 31));
                goto LABEL_341;
              }
            }

LABEL_338:
            v130 = v8[150];
            goto LABEL_339;
          }

          v13 = 12;
        }

        else
        {
          v12 |= *(v20 + *v22) << v13;
          if (v13 > 3)
          {
            v13 += 8;
          }

          else
          {
            if ((v22 + 1) < v18)
            {
              v87 = v22[1];
              v22 += 2;
              v12 |= *(v20 + v87) << (v13 + 8);
              v13 += 16;
              goto LABEL_176;
            }

            v13 = 12;
          }

          ++v22;
        }

LABEL_176:
        v88 = &TIFFFaxWhiteTable + 8 * (v12 & 0xFFF);
        v89 = v88[1];
        v13 -= v89;
        v12 >>= v89;
        v90 = *v88;
        if (v90 < 0xB)
        {
          break;
        }

        if (v90 != 11)
        {
          if (v90 != 12)
          {
LABEL_205:
            v135 = *(v9 + 152);
            v100 = v21;
            v136 = v20;
            v101 = v9;
            v102 = v85;
            v103 = v11;
            TIFFErrorExtR(a1, "Fax3Decode2D", "Bad code word at line %u of %s %u (x %u)", v19, v11, a6, a7, a8, v135);
            v11 = v103;
            v85 = v102;
            v9 = v101;
            v20 = v136;
            v21 = v100;
            v19 = v143;
            v104 = 0;
            goto LABEL_210;
          }

LABEL_209:
          v104 = 1;
LABEL_210:
          v137 = v104;
          if (i)
          {
            if (v85 >= &v21[*(v9 + 104)])
            {
              goto LABEL_316;
            }

            *v85++ = i;
          }

          v35 = v85;
LABEL_214:
          v139 = v11;
          v8 = a1;
          if (v31 == v19)
          {
            goto LABEL_263;
          }

          v106 = "Premature EOL";
          if (v31 >= v19)
          {
            v106 = "Line length mismatch";
          }

          TIFFWarningExtR(a1, "Fax3Decode2D", "%s at line %u of %s %u (got %u, expected %u)", v19, v11, a6, a7, a8, v106);
          v19 = v143;
          v107 = v31 > v143;
          if (v31 > v143 && v35 > v21)
          {
            v108 = v35 - 1;
            v109 = v35 - 1;
            do
            {
              v110 = *v109--;
              LODWORD(v31) = v31 - v110;
              v107 = v31 > v143;
              v111 = v31 > v143 && v108 > v21;
              v108 = v109;
            }

            while (v111);
LABEL_252:
            v35 = v109 + 1;
          }

LABEL_253:
          if (v31 >= v19)
          {
            if (!v107)
            {
              goto LABEL_263;
            }

            v118 = v141;
            if (v35 < &v21[*(v9 + 104)])
            {
              *v35 = v19;
              if (v35 + 1 < &v21[*(v9 + 104)])
              {
                v35[1] = 0;
                v35 += 2;
                goto LABEL_264;
              }
            }
          }

          else if (((v35 - v21) & 4) != 0)
          {
            if (v35 < &v21[*(v9 + 104)])
            {
              *v35++ = 0;
              goto LABEL_257;
            }
          }

          else
          {
LABEL_257:
            if (v35 < &v21[*(v9 + 104)])
            {
              *v35++ = v19 - (v31 & ~(v31 >> 31));
              goto LABEL_263;
            }
          }

          goto LABEL_338;
        }

LABEL_180:
        v91 = *(v88 + 1);
        v31 = (v91 + v31);
      }

      if (v90 == 9)
      {
        goto LABEL_180;
      }

      if (v90 != 7)
      {
        goto LABEL_205;
      }

      if (v85 >= &v21[*(v9 + 104)])
      {
        goto LABEL_316;
      }

      v92 = *(v88 + 1);
      v93 = v92 + i;
      *v85 = v92 + i;
      v35 = v85 + 1;
      v31 = (v92 + v31);
      if (v31 >= v19)
      {
        goto LABEL_273;
      }

      i = 0;
      while (2)
      {
        if (v13 > 12)
        {
          goto LABEL_195;
        }

        if (v22 >= v18)
        {
          if (!v13)
          {
            goto LABEL_299;
          }

          v13 = 13;
        }

        else
        {
          v12 |= *(v20 + *v22) << v13;
          if (v13 > 4)
          {
            v13 += 8;
          }

          else
          {
            if ((v22 + 1) < v18)
            {
              v94 = v22[1];
              v22 += 2;
              v12 |= *(v20 + v94) << (v13 + 8);
              v13 += 16;
              goto LABEL_195;
            }

            v13 = 13;
          }

          ++v22;
        }

LABEL_195:
        v95 = &TIFFFaxBlackTable + 8 * (v12 & 0x1FFF);
        v96 = v95[1];
        v13 -= v96;
        v12 >>= v96;
        v97 = *v95;
        if ((v97 - 10) < 2)
        {
          v98 = *(v95 + 1);
          v31 = (v98 + v31);
          i += v98;
          continue;
        }

        break;
      }

      if (v97 == 12)
      {
        ++v85;
        goto LABEL_209;
      }

      if (v97 != 8)
      {
        v138 = v85 + 1;
        v105 = v11;
        Fax3Unexpected("Fax3Decode2D", a1, *(v9 + 152), v31, v11, a6, a7, a8);
        v11 = v105;
        v19 = v143;
        v104 = 0;
        v85 = v138;
        goto LABEL_210;
      }

      if (v35 >= &v21[*(v9 + 104)])
      {
        goto LABEL_316;
      }

      v99 = *(v95 + 1);
      v35 = v85 + 2;
      v85[1] = v99 + i;
      v31 = (v99 + v31);
      if (v31 >= v19)
      {
LABEL_273:
        v137 = 0;
        goto LABEL_214;
      }

      if ((v99 + i) | v93)
      {
        v85 += 2;
      }
    }
  }

  if (v19 < 1)
  {
    v137 = 0;
    LODWORD(v31) = 0;
    v35 = v21;
    goto LABEL_242;
  }

  v29 = 0;
  j = 0;
  v31 = 0;
  v32 = *(v9 + 112);
  v34 = v32 + 1;
  v33 = *v32;
  v35 = v21;
  while (1)
  {
    v36 = *(v9 + 104);
    if (v35 >= &v21[v36])
    {
      goto LABEL_316;
    }

    if (v13 <= 6)
    {
      if (v22 >= v18)
      {
        if (!v13)
        {
          goto LABEL_313;
        }

        v13 = 7;
      }

      else
      {
        v37 = *v22++;
        v12 |= *(v20 + v37) << v13;
        v13 += 8;
      }
    }

    v38 = &TIFFFaxMainTable + 8 * (v12 & 0x7F);
    v39 = v38[1];
    v13 -= v39;
    v12 >>= v39;
    v40 = *v38;
    if (v40 >= 4)
    {
      if (*v38 > 4u)
      {
        switch(v40)
        {
          case 5u:
            if (v35 != v21 && v33 <= v31)
            {
              v45 = &v32[v36];
              v46 = v34 + 1;
              do
              {
                if (v46 >= v45)
                {
                  goto LABEL_316;
                }

                LODWORD(v33) = *(v46 - 1) + v33 + *v46;
                v46 += 2;
              }

              while (v33 <= v31);
              v34 = v46 - 1;
            }

            v47 = *(v38 + 1);
            if (v33 >= v47 + v31)
            {
              v48 = v33 + v29 - v47;
              *v35++ = v48 + j;
              v31 = (v48 + v31);
              v49 = *--v34;
              v33 = (v33 - v49);
              goto LABEL_66;
            }

            break;
          case 6u:
            v140 = v11;
            *v35++ = v19 - v31;
            Fax3Extension("Fax3Decode2D", a1, *(v9 + 152), v31, v11, a6, a7, a8);
            goto LABEL_236;
          case 0xCu:
            *v35++ = v19 - v31;
            v140 = v11;
            if (v13 <= 3)
            {
              if (v22 >= v18)
              {
                if (!v13)
                {
                  goto LABEL_313;
                }

                v13 = 4;
              }

              else
              {
                v121 = *v22++;
                v12 |= *(v20 + v121) << v13;
                v13 += 8;
              }
            }

            if ((v12 & 0xF) != 0)
            {
              Fax3Unexpected("Fax3Decode2D", a1, *(v9 + 152), v31, v11, a6, a7, a8);
            }

            v13 -= 4;
            v12 >>= 4;
            v137 = 1;
            goto LABEL_237;
        }

        goto LABEL_284;
      }

      if (v35 != v21 && v33 <= v31)
      {
        v50 = &v32[v36];
        v51 = v34 + 1;
        do
        {
          if (v51 >= v50)
          {
            goto LABEL_316;
          }

          LODWORD(v33) = *(v51 - 1) + v33 + *v51;
          v51 += 2;
        }

        while (v33 <= v31);
        v34 = v51 - 1;
      }

      v52 = *(v38 + 1);
      *v35 = j + v29 + v52 + v33;
      if (v34 >= &v32[*(v9 + 104)])
      {
        goto LABEL_316;
      }

      j = 0;
      v31 = (v52 + v33);
      ++v35;
      v53 = *v34++;
      v43 = v53;
      goto LABEL_75;
    }

    if (v40 == 1)
    {
      if (v35 != v21 && v33 <= v31)
      {
        v65 = v34 + 1;
        do
        {
          if (v65 >= &v32[v36])
          {
            goto LABEL_316;
          }

          LODWORD(v33) = *(v65 - 1) + v33 + *v65;
          v65 += 2;
        }

        while (v33 <= v31);
        v34 = v65 - 1;
      }

      if (v34 + 1 >= &v32[v36])
      {
        goto LABEL_316;
      }

      v66 = *v34;
      v67 = v34[1];
      v34 += 2;
      v31 = v66 + v33;
      j += v29 + v31;
      v33 = v31 + v67;
      goto LABEL_113;
    }

    if (v40 == 2)
    {
      break;
    }

    if (v40 != 3)
    {
      goto LABEL_284;
    }

    if (v35 != v21 && v33 <= v31)
    {
      v41 = &v32[v36];
      v42 = v34 + 1;
      while (v42 < v41)
      {
        v33 = *(v42 - 1) + v33 + *v42;
        v42 += 2;
        if (v33 > v31)
        {
          v34 = v42 - 1;
          goto LABEL_54;
        }
      }

      goto LABEL_316;
    }

LABEL_54:
    *v35 = j + v29 + v33;
    if (v34 >= &v32[*(v9 + 104)])
    {
LABEL_316:
      v130 = a1[150];
      goto LABEL_339;
    }

    j = 0;
    ++v35;
    v44 = *v34++;
    v43 = v44;
    v31 = v33;
LABEL_75:
    v33 = (v43 + v33);
LABEL_113:
    v29 = -v31;
    if (v31 >= v19)
    {
      if (j)
      {
        if (j + v31 < v19)
        {
          if (v13 <= 0)
          {
            if (v22 >= v18)
            {
              if (!v13)
              {
                goto LABEL_313;
              }

              v13 = 1;
            }

            else
            {
              v112 = *v22++;
              v12 |= *(v20 + v112) << v13;
              v13 += 8;
            }
          }

          if ((v12 & 1) == 0)
          {
LABEL_284:
            v140 = v11;
            Fax3Unexpected("Fax3Decode2D", a1, *(v9 + 152), v31, v11, a6, a7, a8);
            goto LABEL_236;
          }

          --v13;
          v12 >>= 1;
        }

        if (v35 >= &v21[*(v9 + 104)])
        {
          goto LABEL_316;
        }

        v137 = 0;
LABEL_239:
        *v35++ = j;
      }

      else
      {
        v137 = 0;
      }

      v8 = a1;
      goto LABEL_242;
    }
  }

  if (((v35 - v21) & 4) != 0)
  {
    while (1)
    {
      if (v13 > 12)
      {
        goto LABEL_103;
      }

      if (v22 >= v18)
      {
        if (!v13)
        {
          goto LABEL_313;
        }

        v13 = 13;
      }

      else
      {
        v12 |= *(v20 + *v22) << v13;
        if (v13 > 4)
        {
          v13 += 8;
        }

        else
        {
          if ((v22 + 1) < v18)
          {
            v60 = v22[1];
            v22 += 2;
            v12 |= *(v20 + v60) << (v13 + 8);
            v13 += 16;
            goto LABEL_103;
          }

          v13 = 13;
        }

        ++v22;
      }

LABEL_103:
      v61 = &TIFFFaxBlackTable + 8 * (v12 & 0x1FFF);
      v62 = v61[1];
      v13 -= v62;
      v12 >>= v62;
      v63 = *v61;
      if ((v63 - 10) >= 2)
      {
        if (v63 != 8)
        {
          v140 = v11;
LABEL_232:
          v113 = a1;
          goto LABEL_235;
        }

        v75 = *(v61 + 1);
        *v35 = v75 + j;
        v69 = v35 + 1;
        v31 = (v75 + v31);
        for (j = 0; ; j += v80)
        {
          if (v13 > 11)
          {
            goto LABEL_141;
          }

          if (v22 >= v18)
          {
            if (!v13)
            {
LABEL_312:
              v35 = v69;
LABEL_313:
              TIFFWarningExtR(a1, "Fax3Decode2D", "Premature EOF at line %u of %s %u (x %u)", v19, v11, a6, a7, a8, *(v9 + 152));
              if (j)
              {
                v19 = v143;
                if (v35 >= &v21[*(v9 + 104)])
                {
                  goto LABEL_316;
                }

                *v35 = j;
                v123 = v35 + 1;
              }

              else
              {
                v123 = v35;
                LODWORD(v19) = v143;
              }

              v8 = a1;
              if (v31 != v19)
              {
                v124 = v123;
                Fax3BadLength("Fax3Decode2D", a1, *(v9 + 152), v31, v143, a6, a7, a8);
                v19 = v143;
                v125 = v31 > v143;
                if (v31 > v143)
                {
                  v123 = v124;
                  if (v124 > v21)
                  {
                    v131 = v124 - 1;
                    v127 = v124 - 1;
                    do
                    {
                      v132 = *v127--;
                      LODWORD(v31) = v31 - v132;
                      v125 = v31 > v143;
                      v133 = v31 > v143 && v131 > v21;
                      v131 = v127;
                    }

                    while (v133);
                    goto LABEL_326;
                  }

                  goto LABEL_328;
                }

LABEL_327:
                v123 = v124;
                goto LABEL_328;
              }

LABEL_340:
              v14 = 0;
LABEL_341:
              a2 = v141;
LABEL_344:
              (*(v9 + 88))(a2, v21, v123);
              *(v9 + 72) = v12;
              *(v9 + 76) = 0;
              *(v9 + 80) = v14;
              v8[145] += v8[144] - v22;
              v8[144] = v22;
              return 0xFFFFFFFFLL;
            }

            v13 = 12;
          }

          else
          {
            v12 |= *(v20 + *v22) << v13;
            if (v13 > 3)
            {
              v13 += 8;
            }

            else
            {
              if ((v22 + 1) < v18)
              {
                v76 = v22[1];
                v22 += 2;
                v12 |= *(v20 + v76) << (v13 + 8);
                v13 += 16;
                goto LABEL_141;
              }

              v13 = 12;
            }

            ++v22;
          }

LABEL_141:
          v71 = &TIFFFaxWhiteTable + 8 * (v12 & 0xFFF);
          v77 = v71[1];
          v13 -= v77;
          v12 >>= v77;
          v78 = *v71;
          if (v78 != 9 && v78 != 11)
          {
            if (v78 == 7)
            {
              goto LABEL_150;
            }

            v140 = v11;
            ++v35;
LABEL_234:
            v113 = a1;
LABEL_235:
            TIFFErrorExtR(v113, "Fax3Decode2D", "Bad code word at line %u of %s %u (x %u)", v19, v11, a6, a7, a8, *(v9 + 152));
LABEL_236:
            v137 = 0;
LABEL_237:
            v11 = v140;
            if (j)
            {
              v19 = v143;
              if (v35 < &v21[*(v9 + 104)])
              {
                goto LABEL_239;
              }

              goto LABEL_316;
            }

            v8 = a1;
            v19 = v143;
LABEL_242:
            v139 = v11;
            if (v31 != v19)
            {
              v114 = "Premature EOL";
              if (v31 >= v19)
              {
                v114 = "Line length mismatch";
              }

              TIFFWarningExtR(v8, "Fax3Decode2D", "%s at line %u of %s %u (got %u, expected %u)", v19, v11, a6, a7, a8, v114);
              v19 = v143;
              v107 = v31 > v143;
              if (v31 > v143 && v35 > v21)
              {
                v115 = v35 - 1;
                v109 = v35 - 1;
                do
                {
                  v116 = *v109--;
                  LODWORD(v31) = v31 - v116;
                  v107 = v31 > v143;
                  v117 = v31 > v143 && v115 > v21;
                  v115 = v109;
                }

                while (v117);
                goto LABEL_252;
              }

              goto LABEL_253;
            }

LABEL_263:
            v118 = v141;
LABEL_264:
            (*(v9 + 88))(v118, v21, v35);
            if (v35 < &v21[*(v9 + 104)])
            {
              *v35 = 0;
            }

            v119 = *(v9 + 112);
            *(v9 + 112) = vextq_s8(v119, v119, 8uLL);
            v120 = *(v9 + 8);
            a2 = v118 + v120;
            ++*(v9 + 152);
            v21 = v119.i64[0];
            v11 = v139 - v120;
            v19 = v143;
            v14 = v137;
            if (v139 <= v120)
            {
              v15 = v8[144];
              v16 = v8[145];
LABEL_289:
              *(v9 + 72) = v12;
              *(v9 + 76) = v13;
              *(v9 + 80) = v14;
              v8[145] = v15 - v22 + v16;
              v8[144] = v22;
              return 1;
            }

            goto LABEL_6;
          }

          v80 = *(v71 + 1);
          v31 = (v80 + v31);
        }
      }

      v64 = *(v61 + 1);
      v31 = (v64 + v31);
      j += v64;
    }
  }

  while (1)
  {
    if (v13 > 11)
    {
      goto LABEL_87;
    }

    if (v22 >= v18)
    {
      if (!v13)
      {
        goto LABEL_313;
      }

      v13 = 12;
    }

    else
    {
      v12 |= *(v20 + *v22) << v13;
      if (v13 > 3)
      {
        v13 += 8;
      }

      else
      {
        if ((v22 + 1) < v18)
        {
          v54 = v22[1];
          v22 += 2;
          v12 |= *(v20 + v54) << (v13 + 8);
          v13 += 16;
          goto LABEL_87;
        }

        v13 = 12;
      }

      ++v22;
    }

LABEL_87:
    v55 = &TIFFFaxWhiteTable + 8 * (v12 & 0xFFF);
    v56 = v55[1];
    v13 -= v56;
    v12 >>= v56;
    v57 = *v55;
    if (v57 != 9 && v57 != 11)
    {
      break;
    }

    v59 = *(v55 + 1);
    v31 = (v59 + v31);
    j += v59;
  }

  if (v57 != 7)
  {
    v140 = v11;
    goto LABEL_234;
  }

  v68 = *(v55 + 1);
  *v35 = v68 + j;
  v69 = v35 + 1;
  v31 = (v68 + v31);
  j = 0;
  while (2)
  {
    if (v13 > 12)
    {
      goto LABEL_127;
    }

    if (v22 >= v18)
    {
      if (!v13)
      {
        goto LABEL_312;
      }

      v13 = 13;
    }

    else
    {
      v12 |= *(v20 + *v22) << v13;
      if (v13 > 4)
      {
        v13 += 8;
      }

      else
      {
        if ((v22 + 1) < v18)
        {
          v70 = v22[1];
          v22 += 2;
          v12 |= *(v20 + v70) << (v13 + 8);
          v13 += 16;
          goto LABEL_127;
        }

        v13 = 13;
      }

      ++v22;
    }

LABEL_127:
    v71 = &TIFFFaxBlackTable + 8 * (v12 & 0x1FFF);
    v72 = v71[1];
    v13 -= v72;
    v12 >>= v72;
    v73 = *v71;
    if ((v73 - 10) < 2)
    {
      v74 = *(v71 + 1);
      v31 = (v74 + v31);
      j += v74;
      continue;
    }

    break;
  }

  if (v73 != 8)
  {
    v140 = v11;
    ++v35;
    goto LABEL_232;
  }

LABEL_150:
  if (v69 >= &v21[*(v9 + 104)])
  {
    goto LABEL_316;
  }

  v81 = *(v71 + 1);
  v35[1] = v81 + j;
  v31 = (v81 + v31);
  v35 += 2;
  if (v35 == v21 || (v33 <= v31 ? (v82 = v33 < v19) : (v82 = 0), !v82))
  {
LABEL_66:
    j = 0;
    goto LABEL_113;
  }

  v83 = v34 + 1;
  while (v83 < &v32[*(v9 + 104)])
  {
    v33 = *(v83 - 1) + v33 + *v83;
    v83 += 2;
    if (v33 > v31 || v33 >= v19)
    {
      j = 0;
      v34 = v83 - 1;
      goto LABEL_113;
    }
  }

  v130 = a1[150];
LABEL_339:
  TIFFErrorExt(v130, "Fax3Decode2D", "Buffer overflow at line %u of %s %u", v19, v11, a6, a7, a8, *(v9 + 152));
  return 0xFFFFFFFFLL;
}

uint64_t Fax3BadLength(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = "Line length mismatch";
  if (a4 < a5)
  {
    v8 = "Premature EOL";
  }

  return TIFFWarningExtR(a2, a1, "%s at line %u of %s %u (got %u, expected %u)", a4, a5, a6, a7, a8, v8);
}

uint64_t Fax3Encode1DRow(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  v48 = a1[137];
  do
  {
    v12 = a3 - v11;
    if ((a3 - v11) < 1)
    {
      v16 = 0;
      goto LABEL_39;
    }

    v13 = (a2 + (v11 >> 3));
    v14 = v11 & 7;
    if ((v11 & 7) != 0)
    {
      v15 = zeroruns[(*v13 << v14) & 0xFELL];
      if (8 - v14 < v15)
      {
        v15 = 8 - v14;
      }

      if (v15 >= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v15;
      }

      if ((v16 + v14) < 8)
      {
        goto LABEL_39;
      }

      v12 -= v16;
      ++v13;
    }

    else
    {
      v16 = 0;
    }

    if (v12 < 128)
    {
      v17 = v13;
      goto LABEL_26;
    }

    if ((v13 & 7) != 0)
    {
      v17 = &v13[-(v13 & 7) + 8];
      v18 = -v16;
      v19 = v13 + 1;
      do
      {
        if (*v13)
        {
          v24 = zeroruns[*v13];
          goto LABEL_38;
        }

        v12 -= 8;
        ++v13;
        v18 -= 8;
      }

      while ((v19++ & 7));
      v16 = -v18;
      if (v12 + 8 > 71)
      {
        goto LABEL_22;
      }

LABEL_26:
      v21 = v12;
      if (v12 < 8)
      {
LABEL_32:
        if (v12 >= 1)
        {
          v23 = zeroruns[*v17];
          if (v12 >= v23)
          {
            v12 = v23;
          }

          v16 = (v12 + v16);
        }

        goto LABEL_39;
      }

      goto LABEL_27;
    }

    v17 = v13;
LABEL_22:
    v21 = v12;
    while (!*v17)
    {
      v16 = (v16 + 64);
      v12 = v21 - 64;
      ++v17;
      v22 = v21 <= 127;
      v21 -= 64;
      if (v22)
      {
        goto LABEL_26;
      }
    }

LABEL_27:
    v18 = -v16;
    while (!*v17)
    {
      v12 = v21 - 8;
      v17 = (v17 + 1);
      v18 -= 8;
      v22 = v21 <= 15;
      v21 -= 8;
      if (v22)
      {
        v16 = -v18;
        goto LABEL_32;
      }
    }

    v24 = zeroruns[*v17];
LABEL_38:
    v16 = (v24 - v18);
LABEL_39:
    result = putspan(a1, v16, L"\b5", a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    v28 = v16 + v11;
    v29 = a3 - v28;
    if (a3 <= v28)
    {
      break;
    }

    if (v29 < 1)
    {
      v33 = 0;
      goto LABEL_78;
    }

    v30 = (a2 + (v28 >> 3));
    v31 = v28 & 7;
    if ((v28 & 7) != 0)
    {
      v32 = oneruns[(*v30 << v31) & 0xFELL];
      if (8 - v31 < v32)
      {
        v32 = 8 - v31;
      }

      if (v32 >= v29)
      {
        v33 = v29;
      }

      else
      {
        v33 = v32;
      }

      if ((v33 + v31) < 8)
      {
        goto LABEL_78;
      }

      v29 -= v33;
      ++v30;
    }

    else
    {
      v33 = 0;
    }

    if (v29 < 128)
    {
      v34 = v30;
      goto LABEL_65;
    }

    if ((v30 & 7) != 0)
    {
      v34 = &v30[-(v30 & 7) + 8];
      v35 = -v33;
      v36 = v30 + 1;
      do
      {
        v37 = *v30;
        if (v37 != 255)
        {
          v42 = oneruns[v37];
          goto LABEL_77;
        }

        v29 -= 8;
        ++v30;
        v35 -= 8;
      }

      while ((v36++ & 7));
      v33 = -v35;
      if (v29 + 8 > 71)
      {
        goto LABEL_61;
      }

LABEL_65:
      v39 = v29;
      if (v29 < 8)
      {
LABEL_71:
        if (v29 >= 1)
        {
          v41 = oneruns[*v34];
          if (v29 >= v41)
          {
            v29 = v41;
          }

          v33 = (v29 + v33);
        }

        goto LABEL_78;
      }

      goto LABEL_66;
    }

    v34 = v30;
LABEL_61:
    v39 = v29;
    while (*v34 == -1)
    {
      v33 = (v33 + 64);
      v29 = v39 - 64;
      v34 += 8;
      v22 = v39 <= 127;
      v39 -= 64;
      if (v22)
      {
        goto LABEL_65;
      }
    }

LABEL_66:
    v35 = -v33;
    while (1)
    {
      v40 = *v34;
      if (v40 != 255)
      {
        break;
      }

      v29 = v39 - 8;
      ++v34;
      v35 -= 8;
      v22 = v39 <= 15;
      v39 -= 8;
      if (v22)
      {
        v33 = -v35;
        goto LABEL_71;
      }
    }

    v42 = oneruns[v40];
LABEL_77:
    v33 = (v42 - v35);
LABEL_78:
    result = putspan(a1, v33, &TIFFFaxBlackCodes, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    v11 = v33 + v28;
  }

  while (v11 < a3);
  v43 = v48[1];
  if ((v43 & 0xC) == 0)
  {
    return 1;
  }

  if (v48[19] == 8)
  {
LABEL_85:
    if ((v43 & 8) != 0)
    {
      v46 = a1[144];
      if (v46)
      {
        if (a1[145] >= a1[141])
        {
          result = TIFFFlushData1(a1, v26, v27, a4, a5, a6, a7, a8);
          if (!result)
          {
            return result;
          }

          v46 = a1[144];
        }

        v47 = v48[18];
        a1[144] = v46 + 1;
        *v46 = v47;
        ++a1[145];
        *(v48 + 9) = 0x800000000;
      }
    }

    return 1;
  }

  if (a1[145] < a1[141] || (result = TIFFFlushData1(a1, v26, v27, a4, a5, a6, a7, a8), result))
  {
    v44 = v48[18];
    v45 = a1[144];
    a1[144] = v45 + 1;
    *v45 = v44;
    ++a1[145];
    *(v48 + 9) = 0x800000000;
    v43 = v48[1];
    goto LABEL_85;
  }

  return result;
}

uint64_t Fax3Encode2DRow(void *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v12 = 0;
  if (a4 < 1 || *a2 < 0)
  {
    goto LABEL_29;
  }

  if (a4 < 0x80)
  {
    v12 = 0;
    v13 = a2;
    v18 = a4;
  }

  else
  {
    v12 = 0;
    if ((a2 & 7) == 0)
    {
      v13 = a2;
      v17 = a4;
LABEL_13:
      while (!*v13)
      {
        v12 += 64;
        v18 = v17 - 64;
        v13 += 8;
        v19 = v17 <= 127;
        v17 -= 64;
        if (v19)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_17;
    }

    v13 = &a2[-(a2 & 7) + 8];
    v14 = a2 + 1;
    v15 = a2;
    do
    {
      if (*v15)
      {
        v21 = zeroruns[*v15];
        goto LABEL_28;
      }

      v12 += 8;
      ++v15;
      v16 = (v14++ & 7) == 0;
    }

    while (!v16);
    v17 = a4 - v12;
    v18 = a4 - v12;
    if ((a4 - v12 + 8) > 71)
    {
      goto LABEL_13;
    }
  }

LABEL_16:
  v17 = v18;
  if (v18 >= 8)
  {
LABEL_17:
    v20 = -v12;
    while (!*v13)
    {
      v18 = v17 - 8;
      ++v13;
      v20 -= 8;
      v19 = v17 <= 15;
      v17 -= 8;
      if (v19)
      {
        v12 = -v20;
        goto LABEL_22;
      }
    }

    v12 = zeroruns[*v13] - v20;
    goto LABEL_29;
  }

LABEL_22:
  if (v18 >= 1)
  {
    v21 = zeroruns[*v13];
    if (v18 < v21)
    {
      v21 = v18;
    }

LABEL_28:
    v12 += v21;
  }

LABEL_29:
  v22 = 0;
  if (a4 >= 1 && (*a3 & 0x80000000) == 0)
  {
    if (a4 < 0x80)
    {
      v22 = 0;
      v23 = a3;
      v27 = a4;
    }

    else
    {
      v22 = 0;
      if ((a3 & 7) == 0)
      {
        v23 = a3;
        v26 = a4;
LABEL_41:
        while (!*v23)
        {
          v22 += 64;
          v27 = v26 - 64;
          v23 += 8;
          v19 = v26 <= 127;
          v26 -= 64;
          if (v19)
          {
            goto LABEL_44;
          }
        }

LABEL_45:
        v28 = -v22;
        while (!*v23)
        {
          v27 = v26 - 8;
          ++v23;
          v28 -= 8;
          v19 = v26 <= 15;
          v26 -= 8;
          if (v19)
          {
            v22 = -v28;
            goto LABEL_50;
          }
        }

        v22 = zeroruns[*v23] - v28;
        goto LABEL_57;
      }

      v23 = &a3[-(a3 & 7) + 8];
      v24 = a3 + 1;
      v25 = a3;
      do
      {
        if (*v25)
        {
          v29 = zeroruns[*v25];
          goto LABEL_56;
        }

        v22 += 8;
        ++v25;
        v16 = (v24++ & 7) == 0;
      }

      while (!v16);
      v26 = a4 - v22;
      v27 = a4 - v22;
      if ((a4 - v22 + 8) > 71)
      {
        goto LABEL_41;
      }
    }

LABEL_44:
    v26 = v27;
    if (v27 < 8)
    {
LABEL_50:
      if (v27 >= 1)
      {
        v29 = zeroruns[*v23];
        if (v27 < v29)
        {
          v29 = v27;
        }

LABEL_56:
        v22 += v29;
      }

      goto LABEL_57;
    }

    goto LABEL_45;
  }

LABEL_57:
  v30 = 0;
  while (1)
  {
    v31 = v8;
    v32 = v8 - v22;
    if (v8 <= v22)
    {
      goto LABEL_130;
    }

    v33 = v22 & 7;
    v34 = &a3[v22 >> 3];
    if ((a3[v22 >> 3] >> (v22 & 7 ^ 7)))
    {
      if (v32 < 1)
      {
        goto LABEL_76;
      }

      if ((v22 & 7) != 0)
      {
        v35 = oneruns[(*v34 << v33) & 0xFELL];
        if (8 - v33 < v35)
        {
          v35 = 8 - v33;
        }

        if (v35 >= v32)
        {
          v35 = v8 - v22;
        }

        if (v35 + v33 < 8)
        {
          goto LABEL_129;
        }

        v32 -= v35;
        ++v34;
      }

      else
      {
        v35 = 0;
      }

      if (v32 < 128)
      {
        v36 = v34;
        goto LABEL_100;
      }

      if ((v34 & 7) != 0)
      {
        v36 = &v34[-(v34 & 7) + 8];
        v37 = -v35;
        v38 = v34 + 1;
        do
        {
          v39 = *v34;
          if (v39 != 255)
          {
            v47 = oneruns[v39];
            goto LABEL_128;
          }

          v32 -= 8;
          ++v34;
          v37 -= 8;
        }

        while ((v38++ & 7));
        v35 = -v37;
        if (v32 + 8 > 71)
        {
          goto LABEL_96;
        }

LABEL_100:
        v44 = v32;
        if (v32 >= 8)
        {
          goto LABEL_101;
        }

LABEL_106:
        if (v32 >= 1)
        {
          v46 = oneruns[*v36];
LABEL_123:
          if (v32 >= v46)
          {
            v32 = v46;
          }

          v35 += v32;
          goto LABEL_129;
        }

        goto LABEL_129;
      }

      v36 = v34;
LABEL_96:
      v44 = v32;
      while (*v36 == -1)
      {
        v35 += 64;
        v32 = v44 - 64;
        v36 += 8;
        v19 = v44 <= 127;
        v44 -= 64;
        if (v19)
        {
          goto LABEL_100;
        }
      }

LABEL_101:
      v37 = -v35;
      while (1)
      {
        v45 = *v36;
        if (v45 != 255)
        {
          break;
        }

        v32 = v44 - 8;
        ++v36;
        v37 -= 8;
        v19 = v44 <= 15;
        v44 -= 8;
        if (v19)
        {
          v35 = -v37;
          goto LABEL_106;
        }
      }

      v47 = oneruns[v45];
LABEL_128:
      v35 = v47 - v37;
      goto LABEL_129;
    }

    if (v32 < 1)
    {
LABEL_76:
      v35 = 0;
      goto LABEL_129;
    }

    if ((v22 & 7) != 0)
    {
      v35 = zeroruns[(*v34 << v33) & 0xFELL];
      if (8 - v33 < v35)
      {
        v35 = 8 - v33;
      }

      if (v35 >= v32)
      {
        v35 = v8 - v22;
      }

      if (v35 + v33 < 8)
      {
        goto LABEL_129;
      }

      v32 -= v35;
      ++v34;
    }

    else
    {
      v35 = 0;
    }

    if (v32 < 128)
    {
      v41 = v34;
    }

    else
    {
      if ((v34 & 7) == 0)
      {
        v41 = v34;
LABEL_111:
        v48 = v32;
        while (!*v41)
        {
          v35 += 64;
          v32 = v48 - 64;
          v41 += 8;
          v19 = v48 <= 127;
          v48 -= 64;
          if (v19)
          {
            goto LABEL_115;
          }
        }

LABEL_116:
        v37 = -v35;
        while (!*v41)
        {
          v32 = v48 - 8;
          ++v41;
          v37 -= 8;
          v19 = v48 <= 15;
          v48 -= 8;
          if (v19)
          {
            v35 = -v37;
            goto LABEL_121;
          }
        }

        v47 = zeroruns[*v41];
        goto LABEL_128;
      }

      v41 = &v34[-(v34 & 7) + 8];
      v37 = -v35;
      v42 = v34 + 1;
      do
      {
        if (*v34)
        {
          v47 = zeroruns[*v34];
          goto LABEL_128;
        }

        v32 -= 8;
        ++v34;
        v37 -= 8;
      }

      while ((v42++ & 7));
      v35 = -v37;
      if (v32 + 8 > 71)
      {
        goto LABEL_111;
      }
    }

LABEL_115:
    v48 = v32;
    if (v32 >= 8)
    {
      goto LABEL_116;
    }

LABEL_121:
    if (v32 >= 1)
    {
      v46 = zeroruns[*v41];
      goto LABEL_123;
    }

LABEL_129:
    v31 = v35 + v22;
LABEL_130:
    if (v31 < v12)
    {
      result = Fax3PutBits(a1, 1, 4, a4, a5, a6, a7, a8);
      goto LABEL_219;
    }

    v50 = v22 - v12;
    if (v22 >= v12 && v50 < 4)
    {
      goto LABEL_134;
    }

    if (v22 < v12)
    {
      v51 = v12 - v22;
      if (v51 < 4)
      {
        v50 = -v51;
LABEL_134:
        result = Fax3PutBits(a1, vcodes[3 * v50 + 10], vcodes[3 * v50 + 9], a4, a5, a6, a7, a8);
        v30 = v12;
        if (!result)
        {
          return result;
        }

        goto LABEL_220;
      }
    }

    v31 = v8;
    v52 = v8 - v12;
    if (v8 > v12)
    {
      v53 = v12 & 7;
      v54 = &a2[v12 >> 3];
      if ((a2[v12 >> 3] >> (v12 & 7 ^ 7)))
      {
        if (v52 >= 1)
        {
          if ((v12 & 7) != 0)
          {
            v55 = oneruns[(*v54 << v53) & 0xFELL];
            if (8 - v53 < v55)
            {
              v55 = 8 - v53;
            }

            if (v55 >= v52)
            {
              v55 = v8 - v12;
            }

            if (v55 + v53 >= 8)
            {
              v52 -= v55;
              ++v54;
              goto LABEL_159;
            }

LABEL_210:
            v31 = v55 + v12;
            goto LABEL_211;
          }

          v55 = 0;
LABEL_159:
          if (v52 < 128)
          {
            v56 = v54;
            goto LABEL_181;
          }

          if ((v54 & 7) == 0)
          {
            v56 = v54;
LABEL_177:
            v64 = v52;
            while (*v56 == -1)
            {
              v55 += 64;
              v52 = v64 - 64;
              v56 += 8;
              v19 = v64 <= 127;
              v64 -= 64;
              if (v19)
              {
                goto LABEL_181;
              }
            }

            goto LABEL_182;
          }

          v56 = &v54[-(v54 & 7) + 8];
          v57 = -v55;
          v58 = v54 + 1;
          do
          {
            v59 = *v54;
            if (v59 != 255)
            {
              v67 = oneruns[v59];
              goto LABEL_209;
            }

            v52 -= 8;
            ++v54;
            v57 -= 8;
          }

          while ((v58++ & 7));
          v55 = -v57;
          if (v52 + 8 > 71)
          {
            goto LABEL_177;
          }

LABEL_181:
          v64 = v52;
          if (v52 >= 8)
          {
LABEL_182:
            v57 = -v55;
            while (1)
            {
              v65 = *v56;
              if (v65 != 255)
              {
                break;
              }

              v52 = v64 - 8;
              ++v56;
              v57 -= 8;
              v19 = v64 <= 15;
              v64 -= 8;
              if (v19)
              {
                v55 = -v57;
                goto LABEL_187;
              }
            }

            v67 = oneruns[v65];
LABEL_209:
            v55 = v67 - v57;
            goto LABEL_210;
          }

LABEL_187:
          if (v52 < 1)
          {
            goto LABEL_210;
          }

          v66 = oneruns[*v56];
LABEL_204:
          if (v52 >= v66)
          {
            v52 = v66;
          }

          v55 += v52;
          goto LABEL_210;
        }

LABEL_157:
        v55 = 0;
        goto LABEL_210;
      }

      if (v52 < 1)
      {
        goto LABEL_157;
      }

      if ((v12 & 7) != 0)
      {
        v55 = zeroruns[(*v54 << v53) & 0xFELL];
        if (8 - v53 < v55)
        {
          v55 = 8 - v53;
        }

        if (v55 >= v52)
        {
          v55 = v8 - v12;
        }

        if (v55 + v53 < 8)
        {
          goto LABEL_210;
        }

        v52 -= v55;
        ++v54;
      }

      else
      {
        v55 = 0;
      }

      if (v52 < 128)
      {
        v61 = v54;
LABEL_196:
        v68 = v52;
        if (v52 < 8)
        {
LABEL_202:
          if (v52 < 1)
          {
            goto LABEL_210;
          }

          v66 = zeroruns[*v61];
          goto LABEL_204;
        }
      }

      else
      {
        if ((v54 & 7) != 0)
        {
          v61 = &v54[-(v54 & 7) + 8];
          v57 = -v55;
          v62 = v54 + 1;
          do
          {
            if (*v54)
            {
              v67 = zeroruns[*v54];
              goto LABEL_209;
            }

            v52 -= 8;
            ++v54;
            v57 -= 8;
          }

          while ((v62++ & 7));
          v55 = -v57;
          if (v52 + 8 > 71)
          {
            goto LABEL_192;
          }

          goto LABEL_196;
        }

        v61 = v54;
LABEL_192:
        v68 = v52;
        while (!*v61)
        {
          v55 += 64;
          v52 = v68 - 64;
          v61 += 8;
          v19 = v68 <= 127;
          v68 -= 64;
          if (v19)
          {
            goto LABEL_196;
          }
        }
      }

      v57 = -v55;
      while (!*v61)
      {
        v52 = v68 - 8;
        ++v61;
        v57 -= 8;
        v19 = v68 <= 15;
        v68 -= 8;
        if (v19)
        {
          v55 = -v57;
          goto LABEL_202;
        }
      }

      v67 = zeroruns[*v61];
      goto LABEL_209;
    }

LABEL_211:
    result = Fax3PutBits(a1, 1, 3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    if (v30 + v12 && ((a2[v30 >> 3] >> (~v30 & 7)) & 1) != 0)
    {
      result = putspan(a1, v12 - v30, &TIFFFaxBlackCodes, v69, v70, v71, v72, v73);
      if (!result)
      {
        return result;
      }

      v79 = v31 - v12;
      v80 = a1;
      v81 = L"\b5";
    }

    else
    {
      result = putspan(a1, v12 - v30, L"\b5", v69, v70, v71, v72, v73);
      if (!result)
      {
        return result;
      }

      v79 = v31 - v12;
      v80 = a1;
      v81 = &TIFFFaxBlackCodes;
    }

    result = putspan(v80, v79, v81, v74, v75, v76, v77, v78);
LABEL_219:
    v30 = v31;
    if (!result)
    {
      return result;
    }

LABEL_220:
    v82 = v8 - v30;
    if (v8 <= v30)
    {
      return 1;
    }

    v83 = v30 & 7;
    v84 = v30 >> 3;
    v85 = &a2[v30 >> 3];
    v86 = (1 << (v30 & 7 ^ 7)) & a2[v30 >> 3];
    if (v86)
    {
      if (v82 < 1)
      {
        v87 = 0;
LABEL_239:
        v12 = v87 + v30;
LABEL_295:
        if (v82 < 1)
        {
          v103 = 0;
LABEL_312:
          v105 = v103 + v30;
          goto LABEL_368;
        }

        v102 = &a3[v84];
        if ((v30 & 7) != 0)
        {
          v103 = zeroruns[(*v102 << v83) & 0xFELL];
          if (8 - v83 < v103)
          {
            v103 = 8 - v83;
          }

          if (v103 >= v82)
          {
            v103 = v8 - v30;
          }

          if (v103 + v83 < 8)
          {
            goto LABEL_312;
          }

          v82 -= v103;
          ++v102;
        }

        else
        {
          v103 = 0;
        }

        if (v82 < 128)
        {
          v106 = v102;
        }

        else
        {
          if ((v102 & 7) == 0)
          {
            v106 = v102;
LABEL_334:
            v114 = v82;
            while (!*v106)
            {
              v103 += 64;
              v82 = v114 - 64;
              v106 += 8;
              v19 = v114 <= 127;
              v114 -= 64;
              if (v19)
              {
                goto LABEL_338;
              }
            }

LABEL_339:
            v107 = -v103;
            while (!*v106)
            {
              v82 = v114 - 8;
              ++v106;
              v107 -= 8;
              v19 = v114 <= 15;
              v114 -= 8;
              if (v19)
              {
                v103 = -v107;
                goto LABEL_344;
              }
            }

            v116 = zeroruns[*v106];
            goto LABEL_366;
          }

          v106 = &v102[-(v102 & 7) + 8];
          v107 = -v103;
          v108 = v102 + 1;
          do
          {
            if (*v102)
            {
              v116 = zeroruns[*v102];
              goto LABEL_366;
            }

            v82 -= 8;
            ++v102;
            v107 -= 8;
          }

          while ((v108++ & 7));
          v103 = -v107;
          if (v82 + 8 > 71)
          {
            goto LABEL_334;
          }
        }

LABEL_338:
        v114 = v82;
        if (v82 >= 8)
        {
          goto LABEL_339;
        }

LABEL_344:
        if (v82 < 1)
        {
          goto LABEL_367;
        }

        v115 = zeroruns[*v106];
        goto LABEL_361;
      }

      if ((v30 & 7) != 0)
      {
        v87 = oneruns[(*v85 << v83) & 0xFELL];
        if (8 - v83 < v87)
        {
          v87 = 8 - v83;
        }

        if (v87 >= v82)
        {
          v87 = v8 - v30;
        }

        if (v87 + v83 < 8)
        {
          goto LABEL_239;
        }

        v88 = v82 - v87;
        ++v85;
      }

      else
      {
        v87 = 0;
        v88 = v8 - v30;
      }

      if (v88 < 128)
      {
        v89 = v85;
      }

      else
      {
        if ((v85 & 7) == 0)
        {
          v89 = v85;
LABEL_261:
          v97 = v88;
          while (*v89 == -1)
          {
            v87 += 64;
            v88 = v97 - 64;
            v89 += 8;
            v19 = v97 <= 127;
            v97 -= 64;
            if (v19)
            {
              goto LABEL_265;
            }
          }

LABEL_266:
          v90 = -v87;
          while (1)
          {
            v98 = *v89;
            if (v98 != 255)
            {
              break;
            }

            v88 = v97 - 8;
            ++v89;
            v90 -= 8;
            v19 = v97 <= 15;
            v97 -= 8;
            if (v19)
            {
              v87 = -v90;
              goto LABEL_271;
            }
          }

          v100 = oneruns[v98];
          goto LABEL_293;
        }

        v89 = &v85[-(v85 & 7) + 8];
        v90 = -v87;
        v91 = v85 + 1;
        do
        {
          v92 = *v85;
          if (v92 != 255)
          {
            v100 = oneruns[v92];
            goto LABEL_293;
          }

          v88 -= 8;
          ++v85;
          v90 -= 8;
        }

        while ((v91++ & 7));
        v87 = -v90;
        if (v88 + 8 > 71)
        {
          goto LABEL_261;
        }
      }

LABEL_265:
      v97 = v88;
      if (v88 >= 8)
      {
        goto LABEL_266;
      }

LABEL_271:
      if (v88 < 1)
      {
        goto LABEL_294;
      }

      v99 = oneruns[*v89];
    }

    else
    {
      if (v82 < 1)
      {
        v87 = 0;
LABEL_249:
        v12 = v87 + v30;
        goto LABEL_303;
      }

      if ((v30 & 7) != 0)
      {
        v87 = zeroruns[(*v85 << v83) & 0xFELL];
        if (8 - v83 < v87)
        {
          v87 = 8 - v83;
        }

        if (v87 >= v82)
        {
          v87 = v8 - v30;
        }

        if (v87 + v83 < 8)
        {
          goto LABEL_249;
        }

        v88 = v82 - v87;
        ++v85;
      }

      else
      {
        v87 = 0;
        v88 = v8 - v30;
      }

      if (v88 < 128)
      {
        v94 = v85;
      }

      else
      {
        if ((v85 & 7) == 0)
        {
          v94 = v85;
LABEL_276:
          v101 = v88;
          while (!*v94)
          {
            v87 += 64;
            v88 = v101 - 64;
            v94 += 8;
            v19 = v101 <= 127;
            v101 -= 64;
            if (v19)
            {
              goto LABEL_280;
            }
          }

LABEL_281:
          v90 = -v87;
          while (!*v94)
          {
            v88 = v101 - 8;
            ++v94;
            v90 -= 8;
            v19 = v101 <= 15;
            v101 -= 8;
            if (v19)
            {
              v87 = -v90;
              goto LABEL_286;
            }
          }

          v100 = zeroruns[*v94];
LABEL_293:
          v87 = v100 - v90;
          goto LABEL_294;
        }

        v94 = &v85[-(v85 & 7) + 8];
        v90 = -v87;
        v95 = v85 + 1;
        do
        {
          if (*v85)
          {
            v100 = zeroruns[*v85];
            goto LABEL_293;
          }

          v88 -= 8;
          ++v85;
          v90 -= 8;
        }

        while ((v95++ & 7));
        v87 = -v90;
        if (v88 + 8 > 71)
        {
          goto LABEL_276;
        }
      }

LABEL_280:
      v101 = v88;
      if (v88 >= 8)
      {
        goto LABEL_281;
      }

LABEL_286:
      if (v88 < 1)
      {
        goto LABEL_294;
      }

      v99 = zeroruns[*v94];
    }

    if (v88 < v99)
    {
      v99 = v88;
    }

    v87 += v99;
LABEL_294:
    v12 = v87 + v30;
    if (v86)
    {
      goto LABEL_295;
    }

LABEL_303:
    if (v82 < 1)
    {
      v103 = 0;
LABEL_322:
      v105 = v103 + v30;
LABEL_376:
      v119 = v8 - v105;
      if ((v8 - v105) < 1)
      {
LABEL_384:
        v122 = 0;
        goto LABEL_437;
      }

      v123 = &a3[v105 >> 3];
      v124 = v105 & 7;
      if ((v105 & 7) == 0)
      {
        v122 = 0;
LABEL_395:
        if (v119 < 128)
        {
          v130 = v123;
        }

        else
        {
          if ((v123 & 7) == 0)
          {
            v130 = v123;
LABEL_419:
            v137 = v119;
            while (!*v130)
            {
              v122 += 64;
              v119 = v137 - 64;
              v130 += 8;
              v19 = v137 <= 127;
              v137 -= 64;
              if (v19)
              {
                goto LABEL_423;
              }
            }

LABEL_424:
            v126 = -v122;
            while (!*v130)
            {
              v119 = v137 - 8;
              ++v130;
              v126 -= 8;
              v19 = v137 <= 15;
              v137 -= 8;
              if (v19)
              {
                v122 = -v126;
                goto LABEL_429;
              }
            }

            v136 = zeroruns[*v130];
LABEL_436:
            v122 = v136 - v126;
            goto LABEL_437;
          }

          v130 = &v123[-(v123 & 7) + 8];
          v126 = -v122;
          v131 = v123 + 1;
          do
          {
            if (*v123)
            {
              v136 = zeroruns[*v123];
              goto LABEL_436;
            }

            v119 -= 8;
            ++v123;
            v126 -= 8;
          }

          while ((v131++ & 7));
          v122 = -v126;
          if (v119 + 8 > 71)
          {
            goto LABEL_419;
          }
        }

LABEL_423:
        v137 = v119;
        if (v119 >= 8)
        {
          goto LABEL_424;
        }

LABEL_429:
        if (v119 < 1)
        {
          goto LABEL_437;
        }

        v135 = zeroruns[*v130];
LABEL_431:
        if (v119 >= v135)
        {
          v119 = v135;
        }

        v122 += v119;
        goto LABEL_437;
      }

      v122 = zeroruns[(*v123 << v124) & 0xFELL];
      if (8 - v124 < v122)
      {
        v122 = 8 - v124;
      }

      if (v122 >= v119)
      {
        v122 = v8 - v105;
      }

      if (v122 + v124 >= 8)
      {
        v119 -= v122;
        ++v123;
        goto LABEL_395;
      }

      goto LABEL_437;
    }

    v104 = &a3[v84];
    if ((v30 & 7) != 0)
    {
      v103 = oneruns[(*v104 << v83) & 0xFELL];
      if (8 - v83 < v103)
      {
        v103 = 8 - v83;
      }

      if (v103 >= v82)
      {
        v103 = v8 - v30;
      }

      if (v103 + v83 < 8)
      {
        goto LABEL_322;
      }

      v82 -= v103;
      ++v104;
    }

    else
    {
      v103 = 0;
    }

    if (v82 < 128)
    {
      v110 = v104;
    }

    else
    {
      if ((v104 & 7) == 0)
      {
        v110 = v104;
LABEL_349:
        v117 = v82;
        while (*v110 == -1)
        {
          v103 += 64;
          v82 = v117 - 64;
          v110 += 8;
          v19 = v117 <= 127;
          v117 -= 64;
          if (v19)
          {
            goto LABEL_353;
          }
        }

LABEL_354:
        v107 = -v103;
        while (1)
        {
          v118 = *v110;
          if (v118 != 255)
          {
            break;
          }

          v82 = v117 - 8;
          ++v110;
          v107 -= 8;
          v19 = v117 <= 15;
          v117 -= 8;
          if (v19)
          {
            v103 = -v107;
            goto LABEL_359;
          }
        }

        v116 = oneruns[v118];
LABEL_366:
        v103 = v116 - v107;
        goto LABEL_367;
      }

      v110 = &v104[-(v104 & 7) + 8];
      v107 = -v103;
      v111 = (v104 + 1);
      do
      {
        v112 = *v104;
        if (v112 != 255)
        {
          v116 = oneruns[v112];
          goto LABEL_366;
        }

        v82 -= 8;
        ++v104;
        v107 -= 8;
      }

      while ((v111++ & 7));
      v103 = -v107;
      if (v82 + 8 > 71)
      {
        goto LABEL_349;
      }
    }

LABEL_353:
    v117 = v82;
    if (v82 >= 8)
    {
      goto LABEL_354;
    }

LABEL_359:
    if (v82 < 1)
    {
      goto LABEL_367;
    }

    v115 = oneruns[*v110];
LABEL_361:
    if (v82 >= v115)
    {
      v82 = v115;
    }

    v103 += v82;
LABEL_367:
    v105 = v103 + v30;
    if (!v86)
    {
      goto LABEL_376;
    }

LABEL_368:
    v119 = v8 - v105;
    if ((v8 - v105) < 1)
    {
      goto LABEL_384;
    }

    v120 = &a3[v105 >> 3];
    v121 = v105 & 7;
    if ((v105 & 7) == 0)
    {
      v122 = 0;
      goto LABEL_386;
    }

    v122 = oneruns[(*v120 << v121) & 0xFELL];
    if (8 - v121 < v122)
    {
      v122 = 8 - v121;
    }

    if (v122 >= v119)
    {
      v122 = v8 - v105;
    }

    if (v122 + v121 >= 8)
    {
      v119 -= v122;
      ++v120;
LABEL_386:
      if (v119 < 128)
      {
        v125 = v120;
      }

      else
      {
        if ((v120 & 7) == 0)
        {
          v125 = v120;
LABEL_404:
          v133 = v119;
          while (*v125 == -1)
          {
            v122 += 64;
            v119 = v133 - 64;
            v125 += 8;
            v19 = v133 <= 127;
            v133 -= 64;
            if (v19)
            {
              goto LABEL_408;
            }
          }

LABEL_409:
          v126 = -v122;
          while (1)
          {
            v134 = *v125;
            if (v134 != 255)
            {
              break;
            }

            v119 = v133 - 8;
            ++v125;
            v126 -= 8;
            v19 = v133 <= 15;
            v133 -= 8;
            if (v19)
            {
              v122 = -v126;
              goto LABEL_414;
            }
          }

          v136 = oneruns[v134];
          goto LABEL_436;
        }

        v125 = &v120[-(v120 & 7) + 8];
        v126 = -v122;
        v127 = (v120 + 1);
        do
        {
          v128 = *v120;
          if (v128 != 255)
          {
            v136 = oneruns[v128];
            goto LABEL_436;
          }

          v119 -= 8;
          ++v120;
          v126 -= 8;
        }

        while ((v127++ & 7));
        v122 = -v126;
        if (v119 + 8 > 71)
        {
          goto LABEL_404;
        }
      }

LABEL_408:
      v133 = v119;
      if (v119 >= 8)
      {
        goto LABEL_409;
      }

LABEL_414:
      if (v119 < 1)
      {
        goto LABEL_437;
      }

      v135 = oneruns[*v125];
      goto LABEL_431;
    }

LABEL_437:
    v22 = v122 + v105;
  }
}

uint64_t putspan(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2;
  v11 = a1[137];
  v12 = *(v11 + 72);
  v13 = *(v11 + 76);
  if (a2 < 2624)
  {
LABEL_14:
    if (v9 >= 64)
    {
      v21 = a3 + 6 * (v9 >> 6);
      if ((v9 & 0x7FFFFFC0) != *(v21 + 382))
      {
        putspan_cold_2();
      }

      v22 = *(v21 + 380);
      v23 = *(v21 + 378);
      if (v13 < v23)
      {
        v24 = a1[145];
        v25 = v12;
        while (1)
        {
          if (v24 >= a1[141])
          {
            result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
            if (!result)
            {
              return result;
            }
          }

          v12 = 0;
          v23 -= v13;
          v26 = a1[144];
          a1[144] = v26 + 1;
          *v26 = (v22 >> v23) | v25;
          v24 = a1[145] + 1;
          a1[145] = v24;
          v13 = 8;
          v25 = 0;
          if (v23 <= 8)
          {
            goto LABEL_23;
          }
        }
      }

      if (v23 >= 9)
      {
        putspan_cold_3();
      }

LABEL_23:
      v13 -= v23;
      v12 |= (_msbmask[v23] & v22) << v13;
      if (!v13)
      {
        if (a1[145] >= a1[141])
        {
          result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
          if (!result)
          {
            return result;
          }
        }

        v27 = a1[144];
        a1[144] = v27 + 1;
        *v27 = v12;
        ++a1[145];
        v13 = 8;
        v12 = 0;
      }

      v9 -= *(v21 + 382);
    }

    v28 = (a3 + 6 * v9);
    v29 = v28[1];
    v30 = *v28;
    if (v13 >= v30)
    {
      if (v30 >= 9)
      {
        putspan_cold_4();
      }

LABEL_35:
      v34 = v13 - v30;
      v35 = ((_msbmask[v30] & v29) << (v13 - v30)) | v12;
      if (v13 == v30)
      {
        if (a1[145] >= a1[141])
        {
          result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
          if (!result)
          {
            return result;
          }
        }

        v36 = a1[144];
        a1[144] = v36 + 1;
        *v36 = v35;
        ++a1[145];
        v34 = 8;
        v35 = 0;
      }

      *(v11 + 72) = v35;
      *(v11 + 76) = v34;
      return 1;
    }

    v31 = a1[145];
    v32 = v12;
    while (1)
    {
      if (v31 >= a1[141])
      {
        result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
        if (!result)
        {
          break;
        }
      }

      v12 = 0;
      v30 -= v13;
      v33 = a1[144];
      a1[144] = v33 + 1;
      *v33 = (v29 >> v30) | v32;
      v31 = a1[145] + 1;
      a1[145] = v31;
      v13 = 8;
      v32 = 0;
      if (v30 <= 8)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    while (1)
    {
      v14 = *(a3 + 620);
      v15 = *(a3 + 618);
      if (v13 < v15)
      {
        break;
      }

      if (v15 >= 9)
      {
        putspan_cold_1();
      }

LABEL_9:
      v13 -= v15;
      v12 |= (_msbmask[v15] & v14) << v13;
      if (!v13)
      {
        if (a1[145] >= a1[141])
        {
          result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
          if (!result)
          {
            return result;
          }
        }

        v20 = a1[144];
        a1[144] = v20 + 1;
        *v20 = v12;
        ++a1[145];
        v13 = 8;
        v12 = 0;
      }

      v9 -= *(a3 + 622);
      if (v9 <= 2623)
      {
        goto LABEL_14;
      }
    }

    v16 = a1[145];
    v17 = v12;
    while (1)
    {
      if (v16 >= a1[141])
      {
        result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
        if (!result)
        {
          break;
        }
      }

      v12 = 0;
      v15 -= v13;
      v19 = a1[144];
      a1[144] = v19 + 1;
      *v19 = (v14 >> v15) | v17;
      v16 = a1[145] + 1;
      a1[145] = v16;
      v13 = 8;
      v17 = 0;
      if (v15 <= 8)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t Fax3PutBits(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  v11 = a1[137];
  v12 = *(v11 + 72);
  v13 = *(v11 + 76);
  if (v13 >= a3)
  {
    if (a3 >= 9)
    {
      Fax3PutBits_cold_1();
    }

LABEL_8:
    v19 = v13 - v8;
    v18 = v13 == v8;
    v20 = ((_msbmask[v8] & v9) << (v13 - v8)) | v12;
    if (v18)
    {
      if (a1[145] >= a1[141])
      {
        result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
        if (!result)
        {
          return result;
        }
      }

      v21 = a1[144];
      a1[144] = v21 + 1;
      *v21 = v20;
      ++a1[145];
      v19 = 8;
      v20 = 0;
    }

    *(v11 + 72) = v20;
    *(v11 + 76) = v19;
    return 1;
  }

  v14 = a1[145];
  v15 = *(v11 + 72);
  while (1)
  {
    if (v14 >= a1[141])
    {
      result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
      if (!result)
      {
        return result;
      }
    }

    v12 = 0;
    v8 -= v13;
    v17 = a1[144];
    a1[144] = v17 + 1;
    *v17 = (v9 >> v8) | v15;
    v14 = a1[145] + 1;
    a1[145] = v14;
    v13 = 8;
    LOBYTE(v15) = 0;
    if (v8 <= 8)
    {
      goto LABEL_8;
    }
  }
}

uint64_t IIO_CreateIdentityToken()
{
  if (gRunningInXPCService)
  {
    ImageIOLog("❌ ERROR: IIO_CreateIdentityToken should not be called from the ImageIOXPCService\n");
  }

  else if (IIO_CreateIdentityToken::onceToken != -1)
  {
    IIO_CreateIdentityToken_cold_1();
  }

  return IIO_CreateIdentityToken::clientTokenID;
}

xpc_object_t IIOProcessEvent(_xpc_connection_s *a1, void *a2)
{
  if (gRunningInXPCService != 1)
  {
    return 0;
  }

  source_dict = iio_xpc_get_source_dict(a2);
  uint64 = xpc_dictionary_get_uint64(a2, "iio_xpc_message_id");
  v6 = xpc_dictionary_get_uint64(a2, "iio_xpc_transacion_id");
  IIOXPCUpdatePermissions(a2);
  IIOXPCUpdateAllowableTypes(a2);
  if (!gClientPID)
  {
    gClientPID = xpc_dictionary_get_uint64(a2, "iio_xpc_msg_pid");
  }

  if (!gClientName)
  {
    string = xpc_dictionary_get_string(a2, "iio_xpc_msg_name");
    if (string)
    {
      gClientName = strdup(string);
    }
  }

  if (gIdentityToken)
  {
    if (source_dict)
    {
LABEL_9:
      v8 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_ostype");
      goto LABEL_12;
    }
  }

  else
  {
    gIdentityToken = xpc_dictionary_copy_mach_send();
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], gIdentityToken, 0, 1);
    if (source_dict)
    {
      goto LABEL_9;
    }
  }

  v8 = 774778414;
LABEL_12:
  if (uint64 <= 3)
  {
    switch(uint64)
    {
      case 1:
        kdebug_trace();
        IIOXPCLog("➡️ XPC_READPLUGIN_IDENTIFY [%lld]\n", v6);
        ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v20);
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 0x40000000;
        v37[2] = __IIOProcessEvent_block_invoke;
        v37[3] = &__block_descriptor_tmp_17_1;
        v37[4] = v6;
        v38 = v8;
        IIO_ReaderHandler::xpcTestHeader(ReaderHandler, a1, a2, v37);
        return 0;
      case 2:
        kdebug_trace();
        IIOXPCLog("➡️ XPC_READPLUGIN_IMAGECOUNT [%lld]\n", v6);
        v27 = IIO_ReaderHandler::GetReaderHandler(v26);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 0x40000000;
        v35[2] = __IIOProcessEvent_block_invoke_2;
        v35[3] = &__block_descriptor_tmp_20;
        v35[4] = v6;
        v36 = v8;
        IIO_ReaderHandler::xpcGetImageCount(v27, a1, a2, v35);
        return 0;
      case 3:
        kdebug_trace();
        IIOXPCLog("➡️ XPC_READPLUGIN_SOURCEPROPERTIES [%lld]\n", v6);
        v13 = IIO_ReaderHandler::GetReaderHandler(v12);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 0x40000000;
        v33[2] = __IIOProcessEvent_block_invoke_3;
        v33[3] = &__block_descriptor_tmp_23;
        v33[4] = v6;
        v34 = v8;
        IIO_ReaderHandler::xpcUpdateSourceProperties(v13, a1, a2, v33);
        return 0;
    }

LABEL_30:
    IIOXPCLog("🔺 message [%d] not handled...\n", uint64);
    return 0;
  }

  if (uint64 > 5)
  {
    if (uint64 == 6)
    {
      kdebug_trace();
      IIOXPCLog("➡️ XPC_READPLUGIN_DECODE_IMAGE [%lld]\n", v6);
      v25 = IIO_ReaderHandler::GetReaderHandler(v24);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 0x40000000;
      v29[2] = __IIOProcessEvent_block_invoke_5;
      v29[3] = &__block_descriptor_tmp_31;
      v29[4] = v6;
      v30 = v8;
      IIO_ReaderHandler::xpcDecodeImage(v25, a1, a2, v29);
      return 0;
    }

    if (uint64 == 8)
    {
      kdebug_trace();
      IIOXPCLog("➡️ XPC_READPLUGIN_WAKEUP [%lld]\n", v6);
      if (gRunningInXPCService == 1)
      {
        gIIODebugFlags = xpc_dictionary_get_uint64(a2, "iio_xpc_msg_debugflags");
        Current = CFAbsoluteTimeGetCurrent();
        if (IIO_ReaderHandler::GetReaderHandler(v15))
        {
          v16 = CFAbsoluteTimeGetCurrent();
          IIOXPCLog("    IIO_ReaderHandler::buildPluginList: %g ms\n", (v16 - Current) * 1000.0);
        }

        reply = xpc_dictionary_create_reply(a2);
        v10 = reply;
        if (reply)
        {
          v18 = iio_xpc_add_message_dict(reply);
          v19 = CFAbsoluteTimeGetCurrent();
          xpc_dictionary_set_double(v18, "iio_xpc_msg_wakeup_time", v19);
          iio_xpc_dictionary_set_error_code(v18, 0);
        }
      }

      else
      {
        v10 = 0;
      }

      IIOXPCLog("⬅️ XPC_READPLUGIN_WAKEUP [%lld]\n", v6);
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  if (uint64 != 4)
  {
    kdebug_trace();
    IIOXPCLog("➡️ XPC_READPLUGIN_DEBUG [%lld]\n", v6);
    v9 = xpc_dictionary_create_reply(a2);
    v10 = v9;
    if (v9)
    {
      v11 = iio_xpc_add_message_dict(v9);
      iio_xpc_dictionary_add_databuffer(v11, "iio_xpc_msg_call_counts", &gCallCounts, 0x30uLL);
    }

    IIOXPCLog("⬅️ XPC_READPLUGIN_DEBUG [%lld]\n", v6);
LABEL_38:
    kdebug_trace();
    return v10;
  }

  kdebug_trace();
  IIOXPCLog("➡️ XPC_READPLUGIN_INITIMAGE [%lld]\n", v6);
  v23 = IIO_ReaderHandler::GetReaderHandler(v22);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 0x40000000;
  v31[2] = __IIOProcessEvent_block_invoke_4;
  v31[3] = &__block_descriptor_tmp_26_0;
  v31[4] = v6;
  v32 = v8;
  IIO_ReaderHandler::xpcInitImage(v23, a1, a2, v31);
  return 0;
}

uint64_t __IIOProcessEvent_block_invoke(uint64_t a1)
{
  IIOXPCLog("⬅️ XPC_READPLUGIN_IDENTIFY [%lld]\n", *(a1 + 32));

  return kdebug_trace();
}

uint64_t __IIOProcessEvent_block_invoke_2(uint64_t a1)
{
  IIOXPCLog("⬅️ XPC_READPLUGIN_IMAGECOUNT [%lld]\n", *(a1 + 32));

  return kdebug_trace();
}

uint64_t __IIOProcessEvent_block_invoke_3(uint64_t a1)
{
  IIOXPCLog("⬅️ XPC_READPLUGIN_SOURCEPROPERTIES [%lld]\n", *(a1 + 32));

  return kdebug_trace();
}

uint64_t __IIOProcessEvent_block_invoke_4(uint64_t a1)
{
  IIOXPCLog("⬅️ XPC_READPLUGIN_INITIMAGE [%lld]\n", *(a1 + 32));

  return kdebug_trace();
}

uint64_t __IIOProcessEvent_block_invoke_5(uint64_t a1)
{
  IIOXPCLog("⬅️ XPC_READPLUGIN_DECODE_IMAGE [%lld]\n", *(a1 + 32));

  return kdebug_trace();
}

void UpdateRunningInXPCService()
{
  if (UpdateRunningInXPCService::onceToken != -1)
  {
    UpdateRunningInXPCService_cold_1();
  }
}

void IIO_Reader_ASTC::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

uint64_t IIO_Reader_ASTC::updateSourceProperties(__CFString ***this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  if (this[1] != kCGImageTypeIdentifierKTX)
  {
    return 4294967246;
  }

  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(this);
  v9 = *(*IIO_ReaderHandler::readerForType(ReaderHandler, 1263818784) + 56);

  return v9();
}

uint64_t IIO_Reader_ASTC::getImageCount(IIO_Reader_ASTC *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v16 = 0;
  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, &v16, 0, 4);
  if (BytesAtOffset == 4 && v16 == 1554098963)
  {
    result = 0;
    if (a5)
    {
      *a5 = 1;
    }
  }

  else
  {
    v12 = *(this + 1);
    if (v12 == kCGImageTypeIdentifierKTX)
    {
      ReaderHandler = IIO_ReaderHandler::GetReaderHandler(BytesAtOffset);
      v14 = 1263818784;
    }

    else
    {
      if (v12 != kCGImageTypeIdentifierKTX2)
      {
        return 4294967246;
      }

      ReaderHandler = IIO_ReaderHandler::GetReaderHandler(BytesAtOffset);
      v14 = 1263818802;
    }

    v15 = IIO_ReaderHandler::readerForType(ReaderHandler, v14);
    return (*(*v15 + 32))(v15, a2, a3, a4, a5);
  }

  return result;
}

uint64_t IIOCreatePixelBufferWithIOSurfaceAndOptions(__IOSurface *a1)
{
  v10 = 0;
  if (a1)
  {
    v2 = gFunc_CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], a1, 0, &v10);
    if (v2)
    {
      v3 = v2;
      PixelFormat = IOSurfaceGetPixelFormat(a1);
      v5 = PixelFormat;
      v6 = PixelFormat >> 24;
      if ((PixelFormat >> 24) <= 0x7F)
      {
        v7 = *(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x40000;
      }

      else
      {
        v7 = __maskrune(PixelFormat >> 24, 0x40000uLL);
      }

      if (v7)
      {
        v8 = v6;
      }

      else
      {
        v8 = 46;
      }

      if ((v5 << 8 >> 24) > 0x7F)
      {
        __maskrune(v5 << 8 >> 24, 0x40000uLL);
      }

      if ((v5 >> 8) > 0x7F)
      {
        __maskrune(v5 >> 8, 0x40000uLL);
      }

      v5 = v5;
      if (v5 > 0x7F)
      {
        __maskrune(v5, 0x40000uLL);
      }

      IIOCMErrorString(v3);
      LogError("IIOCreatePixelBufferWithIOSurfaceAndOptions", 27, "*** ERROR: CVPixelBufferCreateWithIOSurface '%c%c%c%c' failed with: %d  (%s)\n", v8);
    }
  }

  else
  {
    LogError("IIOCreatePixelBufferWithIOSurfaceAndOptions", 31, "*** ERROR: CVPixelBufferCreateWithIOSurface failed - NULL-surface\n");
  }

  return v10;
}

uint64_t IIO_ConvertIOSurfaceToIOSurface(__IOSurface *a1, __IOSurface *a2)
{
  IIO_LoadHEIFSymbols();
  v4 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a1);
  if (!v4)
  {
    return 4294967292;
  }

  v5 = v4;
  v6 = IIOCreatePixelBufferWithIOSurfaceAndOptions(a2);
  if (v6)
  {
    v7 = v6;
    v8 = IIO_ConvertPixelBufferToPixelBuffer(v5, v6);
    gFunc_CVPixelBufferRelease(v7);
  }

  else
  {
    v8 = 4294967292;
  }

  gFunc_CVPixelBufferRelease(v5);
  return v8;
}

uint64_t IIO_ConvertPixelBufferToPixelBuffer(uint64_t a1, uint64_t a2)
{
  cf = 0;
  v4 = gFunc_VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &cf);
  if (!v4)
  {
    v4 = gFunc_VTPixelTransferSessionTransferImage(cf, a1, a2);
    CFRelease(cf);
  }

  return v4;
}

uint64_t IIOCreatePixelBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  IIO_LoadJPEGSymbols();
  v8 = gFunc_CVPixelBufferCreate(*MEMORY[0x1E695E480], a1, a2, a3, *(a4 + 8), &v12);
  if (v8)
  {
    v9 = v8;
    v10 = IIOCMErrorString(v8);
    _cg_jpeg_mem_term("IIOCreatePixelBuffer", 94, "*** ERROR: CVPixelBufferCreate failed with: %d  (%s)\n", v9, v10);
  }

  return v12;
}

uint64_t IIOCreatePixelBufferWithBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = 0;
  IIO_LoadJPEGSymbols();
  v13 = gFunc_CVPixelBufferCreateWithBytes(*MEMORY[0x1E695E480], a1, a2, a4, a5, a3, IIOPixelBufferReleaseBytesCallback, 0, *(a7 + 8), &v17);
  if (v13)
  {
    v14 = v13;
    v15 = IIOCMErrorString(v13);
    _cg_jpeg_mem_term("IIOCreatePixelBufferWithBuffer", 126, "*** ERROR: CVPixelBufferCreate failed with: %d  (%s)\n", v14, v15);
  }

  return v17;
}

uint64_t IIOPixelBufferGetAlpha(uint64_t a1)
{
  PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(a1);
  v3 = gFunc_CVBufferCopyAttachment(a1, *gIIO_kCVImageBufferAlphaChannelIsOpaque, 0);
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    v7 = v5 == CFBooleanGetTypeID() && v4 == *MEMORY[0x1E695E4D0];
    CFRelease(v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = gFunc_CVBufferCopyAttachment(a1, *gIIO_kCVImageBufferAlphaChannelModeKey, 0);
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v4);
    if (v10 == CFStringGetTypeID())
    {
      v11 = CFStringCompare(v9, *gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha, 0);
      if (CFStringCompare(v9, *gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha, 0))
      {
        v12 = 0;
      }

      else
      {
        v12 = 3;
      }

      if (v11)
      {
        v13 = v12;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v13 = 0;
  }

  result = 0;
  if (PixelFormatType > 2019963439)
  {
    v15 = PixelFormatType == 2019963440 || PixelFormatType == 2019963442;
    v16 = 2019963956;
  }

  else
  {
    v15 = PixelFormatType == 875704422 || PixelFormatType == 875704934;
    v16 = 875836518;
  }

  if (!v15 && PixelFormatType != v16)
  {
    if (v7)
    {
      return 5;
    }

    else
    {
      return v13;
    }
  }

  return result;
}

uint64_t IIOPixelBufferSetAlpha(uint64_t a1, int a2)
{
  v4 = MEMORY[0x1E695E4C0];
  if (a2 == 5)
  {
    v4 = MEMORY[0x1E695E4D0];
  }

  result = gFunc_CVBufferSetAttachment(a1, *gIIO_kCVImageBufferAlphaChannelIsOpaque, *v4, 1);
  if (a2 == 1)
  {
    v6 = &gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha;
  }

  else
  {
    if (a2 != 3)
    {
      return result;
    }

    v6 = &gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha;
  }

  if (**v6)
  {
    v7 = gFunc_CVBufferSetAttachment;
    v8 = *gIIO_kCVImageBufferAlphaChannelModeKey;

    return v7(a1, v8);
  }

  return result;
}

void ImageIO_dumpImageData(const char *a1, const void *a2)
{
  ImageIOLog("⭕️  dumping image-%04ld to file '%s'\n", gFileIndex, a1);
  CFShow(a2);
  v6 = 0;
  v4 = getpid();
  v5 = gFileIndex++;
  asprintf(&v6, "*/IIO-%d-%04ld-%s.br2", v4, v5, a1);
  CGImageDumpToFile();
  free(v6);
}

void ImageIO_saveImageData(const char *a1, CFDataRef theData)
{
  if (!theData)
  {
    return;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  __filename = 0;
  if (Length < 21)
  {
    return;
  }

  v6 = Length;
  v7 = *BytePtr;
  if (v7 > 0x4C)
  {
    if (*BytePtr > 0x88u)
    {
      if (v7 == 137)
      {
        if (BytePtr[1] == 80 && BytePtr[2] == 78 && BytePtr[3] == 71)
        {
          v8 = "png";
          goto LABEL_78;
        }
      }

      else if (v7 == 255 && BytePtr[1] == 216 && BytePtr[2] == 255)
      {
        v8 = "jpg";
        goto LABEL_78;
      }
    }

    else
    {
      if (v7 == 77)
      {
        if (BytePtr[1] != 77)
        {
          goto LABEL_45;
        }

        goto LABEL_36;
      }

      if (v7 == 105 && BytePtr[1] == 99 && BytePtr[2] == 110 && BytePtr[3] == 115)
      {
        v8 = "icns";
        goto LABEL_78;
      }
    }

LABEL_45:
    v9 = BytePtr[4];
    if (v9 == 102 && BytePtr[5] == 116)
    {
      if (BytePtr[6] == 121 && BytePtr[7] == 112 && BytePtr[8] == 104 && BytePtr[9] == 101 && BytePtr[10] == 105 && BytePtr[11] == 99)
      {
        v8 = "heic";
        goto LABEL_78;
      }

      if (BytePtr[6] == 121 && BytePtr[7] == 112 && BytePtr[8] == 109 && BytePtr[9] == 115 && BytePtr[10] == 102 && BytePtr[11] == 49)
      {
        v8 = "heics";
        goto LABEL_78;
      }
    }

    if (v7 == 171 && BytePtr[1] == 75 && BytePtr[2] == 84 && BytePtr[3] == 88)
    {
      v8 = "KTX";
    }

    else if (v9 == 74 && BytePtr[5] == 88 && BytePtr[6] == 76 && BytePtr[7] == 32)
    {
      v8 = "JXL";
    }

    else if (v7 == 65 && BytePtr[1] == 65)
    {
      v8 = "data";
      if (BytePtr[2] == 80 && BytePtr[3] == 76)
      {
        v8 = "ATX";
      }
    }

    else
    {
      v8 = "data";
    }

    goto LABEL_78;
  }

  if (*BytePtr > 0x46u)
  {
    if (v7 == 71)
    {
      if (BytePtr[1] == 73 && BytePtr[2] == 70 && BytePtr[3] == 56)
      {
        v8 = "gif";
        goto LABEL_78;
      }

      goto LABEL_45;
    }

    if (v7 != 73 || BytePtr[1] != 73)
    {
      goto LABEL_45;
    }

LABEL_36:
    v8 = "tif";
    goto LABEL_78;
  }

  if (!*BytePtr)
  {
    if (!BytePtr[1] && !BytePtr[2] && BytePtr[3] == 12 && BytePtr[4] == 106 && BytePtr[5] == 80 && BytePtr[8] == 13 && BytePtr[9] == 10)
    {
      v8 = "jp2";
      goto LABEL_78;
    }

    goto LABEL_45;
  }

  if (v7 != 56 || BytePtr[1] != 66 || BytePtr[2] != 80 || BytePtr[3] != 83)
  {
    goto LABEL_45;
  }

  v8 = "psd";
LABEL_78:
  v10 = ImageIOTempDirPath();
  v11 = getpid();
  v12 = gFileIndex++;
  asprintf(&__filename, "%s/IIO-%d-%04ld-%s.%s", v10, v11, v12, a1, v8);
  ImageIOLog("⭕️  writing imagedata to '%s'\n", __filename);
  v13 = fopen(__filename, "w");
  if (v13)
  {
    v14 = v13;
    CFLog();
    fwrite(BytePtr, v6, 1uLL, v14);
    fclose(v14);
  }

  else
  {
    __error();
    v15 = __error();
    strerror(*v15);
    CFLog();
  }

  free(__filename);
}

uint64_t ImageIOTempDirPath()
{
  v2 = *MEMORY[0x1E69E9840];
  result = ImageIOTempDirPath::tempDirPath;
  if (!ImageIOTempDirPath::tempDirPath)
  {
    bzero(v1, 0x400uLL);
    if (confstr(65537, v1, 0x400uLL))
    {
      asprintf(&ImageIOTempDirPath::tempDirPath, "%s", v1);
    }

    return ImageIOTempDirPath::tempDirPath;
  }

  return result;
}

uint64_t IIO_HardwareEncoderDefaultValue()
{
  if (IIO_HardwareEncoderDefaultValue::onceToken != -1)
  {
    IIO_HardwareEncoderDefaultValue_cold_1();
  }

  return IIO_HardwareEncoderDefaultValue::hwEncoderDefaultValue;
}

void sub_186048CCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

__int128 *CGGetImageIOVersion()
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGGetImageIOVersion", 0, 0, -1, 0);
  }

  if (CGGetImageIOVersion::onceToken != -1)
  {
    CGGetImageIOVersion_cold_1();
  }

  return &CGGetImageIOVersion::gIIOVersion;
}

void __CGGetImageIOVersion_block_invoke()
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.ImageIO");
  if (BundleWithIdentifier)
  {
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(BundleWithIdentifier, *MEMORY[0x1E695E500]);
  }

  else
  {
    ValueForInfoDictionaryKey = 0;
  }

  IIOString::IIOString(v4, ValueForInfoDictionaryKey);
  v2 = IIOString::utf8String(v4);
  MEMORY[0x186602520](__p, v2);
  IIOString::~IIOString(v4);
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  snprintf(&CGGetImageIOVersion::gIIOVersion, 0x40uLL, "%s", v3);
  if (!CGGetImageIOVersion::gIIOVersion)
  {
    CGGetImageIOVersion::gIIOVersion = *"unknown";
    unk_1EA8DBB68 = unk_18620BCAA;
    xmmword_1EA8DBB78 = xmmword_18620BCBA;
    unk_1EA8DBB88 = unk_18620BCCA;
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_186048E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  IIOString::~IIOString(&a11);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void TIFFCleanup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 12))
  {
    TIFFFlush(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  (*(a1 + 1072))(a1);
  _cg_TIFFFreeDirectory(a1);
  _TIFFCleanupIFDOffsetAndNumberMaps(a1);
  while (1)
  {
    v14 = *(a1 + 1304);
    if (!v14)
    {
      break;
    }

    *(a1 + 1304) = *v14;
    free(v14[2]);
    free(v14);
  }

  v15 = *(a1 + 1120);
  if (v15 && (*(a1 + 17) & 2) != 0)
  {
    free(v15);
  }

  if ((*(a1 + 17) & 8) != 0)
  {
    (*(a1 + 1192))(*(a1 + 1200), *(a1 + 1168), *(a1 + 1176));
  }

  if (*(a1 + 1256) && *(a1 + 1264))
  {
    v16 = 0;
    v17 = 1;
    do
    {
      v18 = *(*(a1 + 1256) + 8 * v16);
      if (*(v18 + 32) && *(v18 + 24) == 65 && TIFFFieldIsAnonymous(v18))
      {
        free(*(v18 + 32));
        free(v18);
      }

      v16 = v17;
      v19 = *(a1 + 1264) > v17++;
    }

    while (v19);
    free(*(a1 + 1256));
  }

  v20 = *(a1 + 1320);
  if (v20)
  {
    v21 = 0;
    v22 = 1;
    do
    {
      v23 = *(a1 + 1312) + 24 * v21;
      if (*(v23 + 4))
      {
        free(*(v23 + 16));
        v20 = *(a1 + 1320);
      }

      v21 = v22;
      v19 = v20 > v22++;
    }

    while (v19);
    free(*(a1 + 1312));
  }

  if (*(a1 + 1376))
  {
    TIFFErrorExtR(a1, "TIFFCleanup", "tif_cur_cumulated_mem_alloc = %llu whereas it should be 0", v9, v10, v11, v12, v13, *(a1 + 1376));
  }

  free(a1);
}

void _TIFFCleanupIFDOffsetAndNumberMaps(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    TIFFHashSetDestroy(v2);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    TIFFHashSetDestroy(v3);
    *(a1 + 56) = 0;
  }
}

uint64_t _cg_TIFFClose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v9 = *(result + 1232);
    v8 = *(result + 1200);
    TIFFCleanup(result, v9, a3, a4, a5, a6, a7, a8);

    return v9(v8);
  }

  return result;
}

__int128 *GetPBMLookupTable(void)
{
  if (GetPBMLookupTable(void)::onceToken != -1)
  {
    GetPBMLookupTable();
  }

  return &gPBMLookupTable;
}

double ___Z17GetPBMLookupTablev_block_invoke()
{
  *&v0 = -1;
  *(&v0 + 1) = -1;
  xmmword_1EA8E2558 = v0;
  unk_1EA8E2568 = v0;
  xmmword_1EA8E2538 = v0;
  unk_1EA8E2548 = v0;
  xmmword_1EA8E2518 = v0;
  unk_1EA8E2528 = v0;
  xmmword_1EA8E24F8 = v0;
  unk_1EA8E2508 = v0;
  xmmword_1EA8E24D8 = v0;
  unk_1EA8E24E8 = v0;
  xmmword_1EA8E24B8 = v0;
  unk_1EA8E24C8 = v0;
  xmmword_1EA8E2498 = v0;
  *&qword_1EA8E24A8 = v0;
  gPBMLookupTable = v0;
  unk_1EA8E2488 = v0;
  BYTE3(xmmword_1EA8E2498) = -2;
  BYTE13(gPBMLookupTable) = -3;
  *(&gPBMLookupTable + 9) = -771;
  LOBYTE(xmmword_1EA8E2498) = -3;
  BYTE13(xmmword_1EA8E2498) = 45;
  result = 7.9499289e-275;
  qword_1EA8E24A8 = 0x706050403020100;
  word_1EA8E24B0 = 2312;
  return result;
}

uint64_t png_write_PLTE(uint64_t a1, __int16 *a2, unint64_t a3, unsigned int a4)
{
  v4 = a4;
  v8 = *(a1 + 431);
  if (v8 != 3)
  {
    if (a4 <= 0x100 && *(a1 + 912) & 1 | a4)
    {
      if ((v8 & 2) != 0)
      {
        goto LABEL_11;
      }

      v10 = "Ignoring request to write a PLTE chunk in grayscale PNG";
    }

    else
    {
      v10 = "Invalid number of colors in palette";
    }

    return png_warning(a1, v10);
  }

  if (*(a1 + 912) & 1 | a4)
  {
    v9 = 1 << *(a1 + 432) >= a4;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    _cg_png_error(a1, "Invalid number of colors in palette");
  }

LABEL_11:
  v15 = 0;
  v14 = 0;
  *(a1 + 416) = a4;
  result = _cg_png_write_chunk_header(a1, 1347179589, 3 * a4);
  if (v4)
  {
    v12 = a2;
    while (v12 >= a2)
    {
      v13 = (v12 + 3);
      if (v12 + 3 > a3)
      {
        break;
      }

      v14 = *v12;
      v15 = *(v12 + 2);
      result = _cg_png_write_chunk_data(a1, &v14, 3);
      v12 = v13;
      if (!--v4)
      {
        goto LABEL_16;
      }
    }

    __break(0x5519u);
  }

  else
  {
LABEL_16:
    result = _cg_png_write_chunk_end(a1);
    *(a1 + 76) |= 2u;
  }

  return result;
}

uint64_t png_write_fdAT(uint64_t a1, Bytef *a2, uint64_t a3)
{
  _cg_png_write_chunk_header(a1, 1717846356, a3 + 4);
  v7 = bswap32(*(a1 + 924));
  _cg_png_write_chunk_data(a1, &v7, 4);
  _cg_png_write_chunk_data(a1, a2, a3);
  result = _cg_png_write_chunk_end(a1);
  ++*(a1 + 924);
  return result;
}

uint64_t png_write_sPLT(void (**a1)(void), uint64_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  memset(v24, 0, sizeof(v24));
  v23 = 0;
  v22 = 0;
  v4 = (a2 + 16);
  if (*(a2 + 16) == 8)
  {
    v5 = 6;
  }

  else
  {
    v5 = 10;
  }

  v6 = *(a2 + 32);
  v7 = png_check_keyword(a1, *a2, v24, v25);
  if (!v7)
  {
LABEL_22:
    _cg_png_error(a1, "sPLT: invalid keyword");
  }

  v8 = v7;
  _cg_png_write_chunk_header(a1, 1934642260, v7 + v6 * v5 + 2);
  v9 = (v8 + 1);
  if (v9 > 0x50)
  {
LABEL_21:
    __break(0x5519u);
    goto LABEL_22;
  }

  _cg_png_write_chunk_data(a1, v24, v9);
  _cg_png_write_chunk_data(a1, v4, 1);
  v10 = *(a2 + 24);
  v11 = v10 + 10 * *(a2 + 32);
  if (v10 < v11)
  {
    v12 = *(a2 + 24);
    do
    {
      v13 = (v12 + 5);
      v15 = v10 <= v12 && v13 <= v11;
      if (*v4 == 8)
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        LOBYTE(v22) = *v12;
        BYTE1(v22) = *(v12 + 2);
        BYTE2(v22) = *(v12 + 4);
        v16 = v12[3];
        v17 = &v22 + 2;
        v18 = &v22 + 3;
        v19 = &v22 + 5;
      }

      else
      {
        if (!v15)
        {
          goto LABEL_21;
        }

        LOWORD(v22) = bswap32(*v12) >> 16;
        WORD1(v22) = bswap32(v12[1]) >> 16;
        WORD2(v22) = bswap32(v12[2]) >> 16;
        v16 = v12[3];
        BYTE6(v22) = HIBYTE(v16);
        v18 = &v22 + 7;
        v17 = &v23;
        v19 = &v23 + 1;
      }

      *v18 = v16;
      v20 = v12[4];
      *v17 = HIBYTE(v20);
      *v19 = v20;
      _cg_png_write_chunk_data(a1, &v22, v5);
      v12 = v13;
    }

    while (v13 < *(a2 + 24) + 10 * *(a2 + 32));
  }

  return _cg_png_write_chunk_end(a1);
}

void (**png_write_sBIT(uint64_t a1, unsigned __int8 *a2, int a3))(void)
{
  v11 = 0;
  if ((a3 & 2) != 0)
  {
    if (a3 == 3)
    {
      v4 = 8;
    }

    else
    {
      v4 = *(a1 + 433);
    }

    if (*a2)
    {
      v5 = v4 >= *a2;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {
      goto LABEL_13;
    }

    v7 = a2[1];
    if (!a2[1])
    {
      goto LABEL_13;
    }

    if (v4 < v7)
    {
      goto LABEL_13;
    }

    v8 = a2[2];
    if (!a2[2] || v4 < v8)
    {
      goto LABEL_13;
    }

    LOBYTE(v11) = *a2;
    BYTE1(v11) = v7;
    v3 = 3;
    BYTE2(v11) = v8;
    if ((a3 & 4) == 0)
    {
      return _cg_png_write_complete_chunk(a1, 1933723988, &v11, v3);
    }
  }

  else
  {
    if (!a2[3] || a2[3] > *(a1 + 433))
    {
      goto LABEL_13;
    }

    LOBYTE(v11) = a2[3];
    v3 = 1;
    if ((a3 & 4) == 0)
    {
      return _cg_png_write_complete_chunk(a1, 1933723988, &v11, v3);
    }
  }

  v9 = a2[4];
  if (a2[4] && v9 <= *(a1 + 433))
  {
    v10 = (&v11 | v3++);
    *v10 = v9;
    return _cg_png_write_complete_chunk(a1, 1933723988, &v11, v3);
  }

LABEL_13:

  return png_warning(a1, "Invalid sBIT depth specified");
}

void (**png_write_cHRM_fixed(void (**a1)(void), unsigned int *a2))(void)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0u;
  v6 = 0u;
  png_save_int_32(&v5, a2[6]);
  png_save_int_32(&v5 + 4, a2[7]);
  png_save_int_32(&v5 + 8, *a2);
  png_save_int_32(&v5 | 0xC, a2[1]);
  png_save_int_32(&v6, a2[2]);
  png_save_int_32(&v6 + 4, a2[3]);
  png_save_int_32(&v6 + 8, a2[4]);
  png_save_int_32(&v6 + 12, a2[5]);
  return _cg_png_write_complete_chunk(a1, 1665684045, &v5, 0x20uLL);
}

void (**png_write_tRNS(void (**result)(void), Bytef *a2, unint64_t a3, unsigned __int16 *a4, unsigned int a5, int a6))(void)
{
  v17 = 0;
  v16 = 0;
  if (!a6)
  {
    v15 = a4[4];
    if (1 << *(result + 432) <= v15)
    {
      v6 = "Ignoring attempt to write tRNS chunk out-of-range for bit_depth";
      goto LABEL_18;
    }

    LOWORD(v16) = __rev16(v15);
    v14 = 2;
    return _cg_png_write_complete_chunk(result, 1951551059, &v16, v14);
  }

  if (a6 == 2)
  {
    v7 = a4[1];
    v8 = v7 >> 8;
    LOWORD(v16) = __rev16(v7);
    v9 = a4[2];
    v10 = v9 >> 8;
    HIWORD(v16) = __rev16(v9);
    v11 = a4[3];
    v17 = __rev16(v11);
    v12 = v10 | v8 | (v11 >> 8);
    if (*(result + 432) == 8 && v12 != 0)
    {
      v6 = "Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8";
      goto LABEL_18;
    }

    v14 = 6;
    return _cg_png_write_complete_chunk(result, 1951551059, &v16, v14);
  }

  if (a6 != 3)
  {
    v6 = "Can't write tRNS with an alpha channel";
    goto LABEL_18;
  }

  if (a5 < 1 || *(result + 208) < a5)
  {
    v6 = "Invalid number of transparent colors specified";
LABEL_18:

    return png_app_warning(result, v6);
  }

  if (a3 < a2 || a3 - a2 < a5)
  {
    __break(0x5519u);
  }

  else
  {

    return _cg_png_write_complete_chunk(result, 1951551059, a2, a5);
  }

  return result;
}

void (**png_write_bKGD(uint64_t a1, unsigned __int8 *a2, int a3))(void)
{
  v16 = 0;
  v15 = 0;
  if (a3 != 3)
  {
    if ((a3 & 2) != 0)
    {
      v7 = *(a2 + 1);
      v8 = v7 >> 8;
      LOWORD(v15) = __rev16(v7);
      v9 = *(a2 + 2);
      v10 = v9 >> 8;
      HIWORD(v15) = __rev16(v9);
      v11 = *(a2 + 3);
      v16 = __rev16(v11);
      v12 = v10 | v8 | (v11 >> 8);
      if (*(a1 + 432) == 8 && v12 != 0)
      {
        v4 = "Ignoring attempt to write 16-bit bKGD chunk when bit_depth is 8";
        goto LABEL_19;
      }

      v6 = 6;
    }

    else
    {
      v5 = *(a2 + 4);
      if (1 << *(a1 + 432) <= v5)
      {
        v4 = "Ignoring attempt to write bKGD chunk out-of-range for bit_depth";
        goto LABEL_19;
      }

      LOWORD(v15) = __rev16(v5);
      v6 = 2;
    }

    return _cg_png_write_complete_chunk(a1, 1649100612, &v15, v6);
  }

  if (!*(a1 + 416) && (*(a1 + 912) & 1) != 0)
  {
    LOBYTE(v3) = *a2;
    goto LABEL_17;
  }

  v3 = *a2;
  if (*(a1 + 416) > v3)
  {
LABEL_17:
    LOBYTE(v15) = v3;
    v6 = 1;
    return _cg_png_write_complete_chunk(a1, 1649100612, &v15, v6);
  }

  v4 = "Invalid background palette index";
LABEL_19:

  return png_warning(a1, v4);
}

uint64_t png_write_hIST(uint64_t a1, unsigned __int16 *a2, int a3)
{
  if (*(a1 + 416) >= a3)
  {
    LODWORD(v5) = a3;
    v9 = 0;
    v8 = 0;
    _cg_png_write_chunk_header(a1, 1749635924, 2 * a3);
    if (v5 >= 1)
    {
      v5 = v5;
      do
      {
        v7 = *a2++;
        v8 = bswap32(v7) >> 16;
        _cg_png_write_chunk_data(a1, &v8, 2);
        --v5;
      }

      while (v5);
    }

    return _cg_png_write_chunk_end(a1);
  }

  else
  {

    return png_warning(a1, "Invalid number of histogram entries specified");
  }
}

uint64_t png_write_tEXt(void (**a1)(void), unsigned __int8 *a2, uint64_t a3, char *a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  memset(v13, 0, sizeof(v13));
  v6 = png_check_keyword(a1, a2, v13, v14);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  if (a4 && *a4)
  {
    v8 = strlen(a4);
    if (v8 > (2147483646 - v7))
    {
      v9 = "tEXt: text too long";
      goto LABEL_15;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = (v7 + 1);
  _cg_png_write_chunk_header(a1, 1950701684, v10 + v8);
  if (v10 > 0x50)
  {
LABEL_13:
    __break(0x5519u);
LABEL_14:
    v9 = "tEXt: invalid keyword";
LABEL_15:
    _cg_png_error(a1, v9);
  }

  _cg_png_write_chunk_data(a1, v13, v10);
  if (v8)
  {
    v11 = strlen(a4) + 1;
    if (&a4[v11] >= a4 && v8 <= v11)
    {
      _cg_png_write_chunk_data(a1, a4, v8);
      return _cg_png_write_chunk_end(a1);
    }

    goto LABEL_13;
  }

  return _cg_png_write_chunk_end(a1);
}

uint64_t png_write_zTXt(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char *a4, int a5)
{
  *&v22[7] = *MEMORY[0x1E69E9840];
  bzero(v19, 0x418uLL);
  if (!a5)
  {
    memset(v21, 0, sizeof(v21));
    v11 = png_check_keyword(a1, a2, v21, v22);
    if (v11)
    {
      v12 = v11;
      v13 = &v21[v11 + 1];
      if (v13 >= v22 || v13 < v21)
      {
        goto LABEL_19;
      }

      *v13 = 0;
      v15 = &a4[strlen(a4) + 1];
      v16 = a4 ? strlen(a4) : 0;
      if (v15 < a4 || v16 > v15 - a4)
      {
        goto LABEL_19;
      }

      v17 = (v12 + 2);
      v19[0] = a4;
      v19[1] = v16;
      v20 = 0;
      if (!png_text_compress(a1, 2052348020, v19, v17))
      {
        _cg_png_write_chunk_header(a1, 2052348020, v20 + v17);
        if (v17 <= 0x51)
        {
          _cg_png_write_chunk_data(a1, v21, v17);
          png_write_compressed_data_out(a1, v19);
          return _cg_png_write_chunk_end(a1);
        }

LABEL_19:
        __break(0x5519u);
      }

      v18 = *(a1 + 144);
    }

    else
    {
      v18 = "zTXt: invalid keyword";
    }

LABEL_23:
    _cg_png_error(a1, v18);
  }

  if (a5 != -1)
  {
    v18 = "zTXt: invalid compression type";
    goto LABEL_23;
  }

  return png_write_tEXt(a1, a2, a3, a4);
}

uint64_t png_write_iTXt(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4, char *a5, char *a6, char *a7)
{
  *&v38[6] = *MEMORY[0x1E69E9840];
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  bzero(v34, 0x418uLL);
  v13 = png_check_keyword(a1, a3, v36, v38);
  if (!v13)
  {
    goto LABEL_51;
  }

  if (a2 > 0)
  {
    if (a2 == 2)
    {
      goto LABEL_13;
    }

    if (a2 != 1)
    {
LABEL_54:
      v33 = "iTXt: invalid compression";
LABEL_55:
      _cg_png_error(a1, v33);
    }

LABEL_8:
    v14 = (v13 + 1);
    if (&v36[v14] < v38 && &v36[v14] >= v36)
    {
      v36[v14] = 0;
      v16 = 1;
      goto LABEL_18;
    }

LABEL_50:
    __break(0x5519u);
LABEL_51:
    v33 = "iTXt: invalid keyword";
    goto LABEL_55;
  }

  if (a2 == -1)
  {
    goto LABEL_8;
  }

  if (a2)
  {
    goto LABEL_54;
  }

LABEL_13:
  v14 = (v13 + 1);
  if (&v36[v14] >= v38 || &v36[v14] < v36)
  {
    goto LABEL_50;
  }

  v16 = 0;
  v36[v14] = 1;
LABEL_18:
  v18 = &v36[(v14 + 1)];
  if (v18 >= v38 || v18 < v36)
  {
    goto LABEL_50;
  }

  *v18 = 0;
  v19 = (v14 + 2);
  if (a5)
  {
    v20 = a5;
  }

  else
  {
    v20 = "";
  }

  v21 = strlen(v20) + 1;
  if (!a6)
  {
    a6 = "";
  }

  v22 = strlen(a6) + 1;
  if (!a7)
  {
    a7 = "";
  }

  v23 = v19 + v21;
  if (v21 > (2147483645 - v14))
  {
    v23 = 0x7FFFFFFF;
  }

  v24 = v23 ^ 0x7FFFFFFFu;
  v25 = v23 + v22;
  v26 = v22 <= v24 ? v25 : 0x7FFFFFFF;
  v27 = strlen(a7) + 1;
  v28 = strlen(a7);
  if ((v27 & 0x8000000000000000) != 0 || v28 > v27)
  {
    goto LABEL_50;
  }

  v34[0] = a7;
  v34[1] = v28;
  v35 = 0;
  if (v16)
  {
    if (v28 > (v26 ^ 0x7FFFFFFFu))
    {
      v33 = "iTXt: uncompressed text too long";
      goto LABEL_55;
    }

    v35 = v28;
  }

  else
  {
    if (png_text_compress(a1, 1767135348, v34, v26))
    {
      v33 = *(a1 + 144);
      goto LABEL_55;
    }

    LODWORD(v28) = v35;
  }

  _cg_png_write_chunk_header(a1, 1767135348, v28 + v26);
  if (v19 > 0x52)
  {
    goto LABEL_50;
  }

  _cg_png_write_chunk_data(a1, v36, v19);
  v29 = strlen(v20) + 1;
  if (v29 < 0)
  {
    goto LABEL_50;
  }

  if (v21 > v29)
  {
    goto LABEL_50;
  }

  _cg_png_write_chunk_data(a1, v20, v21);
  v30 = strlen(a6) + 1;
  if (v30 < 0 || v22 > v30)
  {
    goto LABEL_50;
  }

  _cg_png_write_chunk_data(a1, a6, v22);
  if ((v16 & 1) == 0)
  {
    png_write_compressed_data_out(a1, v34);
    return _cg_png_write_chunk_end(a1);
  }

  v31 = strlen(a7) + 1;
  if (v31 < 0 || v31 < v35)
  {
    goto LABEL_50;
  }

  _cg_png_write_chunk_data(a1, a7, v35);
  return _cg_png_write_chunk_end(a1);
}

void (**png_write_oFFs(void (**a1)(void), uint64_t a2, uint64_t a3, int a4))(void)
{
  v4 = a4;
  v11 = *MEMORY[0x1E69E9840];
  if (a4 >= 2)
  {
    png_warning(a1, "Unrecognized unit type for oFFs chunk");
  }

  v10 = 0;
  v9 = 0;
  png_save_int_32(&v9, a2);
  png_save_int_32(&v9 + 4, a3);
  v10 = v4;
  return _cg_png_write_complete_chunk(a1, 1866876531, &v9, 9uLL);
}

uint64_t png_write_pCAL(void (**a1)(void), unsigned __int8 *a2, unsigned int a3, unsigned int a4, int a5, int a6, const char *a7, Bytef **a8)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a5 >= 4)
  {
    goto LABEL_30;
  }

  v12 = a5;
  v45 = 0;
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  v15 = png_check_keyword(a1, a2, v43, &v44);
  if (!v15)
  {
    v35 = "pCAL: invalid keyword";
LABEL_32:
    _cg_png_error(a1, v35);
  }

  v36 = a3;
  v37 = a4;
  v38 = v12;
  v16 = (v15 + 1);
  __s = a7;
  v17 = strlen(a7);
  if (a6)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = v17;
  }

  v39 = v18;
  v42 = v16;
  v19 = v16 + v18 + 10;
  v20 = png_malloc(a1, 8 * a6);
  v21 = v20;
  if (v20)
  {
    v22 = &v20[a6];
  }

  else
  {
    v22 = 0;
  }

  v23 = a6;
  v41 = a6;
  v24 = (a6 - 1);
  if (a6 >= 1)
  {
    v25 = a6;
    v26 = a8;
    v27 = v20;
    while (v27 >= v21 && (v27 + 1) <= v22 && v27 <= v27 + 1)
    {
      v28 = *v26++;
      v29 = strlen(v28);
      v30 = v24-- != 0;
      if (v30)
      {
        v31 = v29 + 1;
      }

      else
      {
        v31 = v29;
      }

      *v27++ = v31;
      v19 += v29 + v30;
      if (!--v25)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_29;
  }

LABEL_18:
  _cg_png_write_chunk_header(a1, 1883455820, v19);
  if (v42 > 0x50 || (_cg_png_write_chunk_data(a1, v43, v42), png_save_int_32(&v44, v36), png_save_int_32(&v44 + 4, v37), LOBYTE(v45) = v38, HIBYTE(v45) = v41, _cg_png_write_chunk_data(a1, &v44, 10), v32 = strlen(__s) + 1, &__s[v32] < __s) || v39 > v32)
  {
LABEL_29:
    __break(0x5519u);
LABEL_30:
    v35 = "Unrecognized equation type for pCAL chunk";
    goto LABEL_32;
  }

  _cg_png_write_chunk_data(a1, __s, v39);
  if (v41 >= 1)
  {
    v33 = v21;
    while (v33 >= v21 && (v33 + 1) <= v22 && v33 <= v33 + 1 && *a8 <= &(*a8)[*v33])
    {
      _cg_png_write_chunk_data(a1, *a8++, *v33++);
      if (!--v23)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_29;
  }

LABEL_28:
  png_free(a1, v21);
  return _cg_png_write_chunk_end(a1);
}

void (**png_write_sCAL_s(void (**a1)(void), Bytef a2, char *__s, const char *a4))(void)
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = strlen(__s);
  v9 = strlen(a4);
  v10 = v8 + v9 + 2;
  if (v10 < 0x41)
  {
    v12 = v9;
    memset(&v18[1], 0, 63);
    v18[0] = a2;
    v13 = strlen(__s) + 1;
    if (&__s[v13] < __s || (v14 = v8 + 1, v8 + 1 > v13) || v14 > 0x3F || (v15 = __memcpy_chk(), v15 > v15 + v14) || (v16 = &v18[v8 + 2], v17 = strlen(a4), v18 > v16) || &a4[v17 + 1] < a4 || v12 > v17 + 1 || v16 > &v19 || v12 > &v19 - v16 || (memcpy(v16, a4, v12), v16 > &v16[v12]))
    {
      __break(0x5519u);
    }

    return _cg_png_write_complete_chunk(a1, 1933787468, v18, v10);
  }

  else
  {

    return png_warning(a1, "Can't write sCAL (buffer too small)");
  }
}

void (**png_write_tIME(void (**a1)(void), unsigned __int16 *a2))(void)
{
  v4 = *(a2 + 2);
  if ((v4 - 13) >= 0xFFFFFFF4 && (v5 = *(a2 + 3), (v5 - 32) >= 0xFFFFFFE1) && (v6 = *(a2 + 4), v6 <= 0x17) && (v7 = *(a2 + 6), v7 < 0x3D))
  {
    v11 = v2;
    v12 = v3;
    v9 = *a2;
    v10[0] = HIBYTE(*a2);
    v10[1] = v9;
    v10[2] = v4;
    v10[3] = v5;
    v10[4] = v6;
    v10[5] = *(a2 + 5);
    v10[6] = v7;
    return _cg_png_write_complete_chunk(a1, 1950960965, v10, 7uLL);
  }

  else
  {

    return png_warning(a1, "Invalid time specified for tIME chunk");
  }
}

void (**png_write_acTL(uint64_t a1, int a2, int a3))(void)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a1 + 960) = a2;
  v3 = a2 - (*(a1 + 920) & 1);
  v5[0] = HIBYTE(v3);
  v5[1] = BYTE2(v3);
  v5[2] = BYTE1(v3);
  v5[3] = v3;
  v5[4] = HIBYTE(a3);
  v5[5] = BYTE2(a3);
  v5[6] = BYTE1(a3);
  v5[7] = a3;
  return _cg_png_write_complete_chunk(a1, 1633899596, v5, 8uLL);
}

void (**png_write_fcTL(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, Bytef a8, unsigned __int8 a9))(void)
{
  v10 = a7;
  v11 = a6;
  v22 = *MEMORY[0x1E69E9840];
  v17 = *(a1 + 964);
  if (a5 | a4 && !v17)
  {
    v20 = "x and/or y offset for the first frame aren't 0";
    goto LABEL_9;
  }

  if (!v17 && (*(a1 + 928) != a2 || *(a1 + 932) != a3))
  {
    v20 = "width and/or height in the first frame's fcTL don't match the ones in IHDR";
LABEL_9:
    _cg_png_error(a1, v20);
  }

  png_ensure_fcTL_is_valid(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  v18 = *(a1 + 924);
  v21[0] = HIBYTE(v18);
  v21[1] = BYTE2(v18);
  v21[2] = BYTE1(v18);
  v21[3] = v18;
  v21[4] = HIBYTE(a2);
  v21[5] = BYTE2(a2);
  v21[6] = BYTE1(a2);
  v21[7] = a2;
  v21[8] = HIBYTE(a3);
  v21[9] = BYTE2(a3);
  v21[10] = BYTE1(a3);
  v21[11] = a3;
  v21[12] = HIBYTE(a4);
  v21[13] = BYTE2(a4);
  v21[14] = BYTE1(a4);
  v21[15] = a4;
  v21[16] = HIBYTE(a5);
  v21[17] = BYTE2(a5);
  v21[18] = BYTE1(a5);
  v21[19] = a5;
  v21[20] = HIBYTE(v11);
  v21[21] = v11;
  v21[22] = HIBYTE(v10);
  v21[23] = v10;
  v21[24] = a8;
  v21[25] = a9;
  result = _cg_png_write_complete_chunk(a1, 1717785676, v21, 0x1AuLL);
  ++*(a1 + 924);
  return result;
}

uint64_t png_do_write_interlace(uint64_t result, char *__dst, unint64_t a3, int a4)
{
  if (a4 > 5)
  {
    return result;
  }

  v6 = *(result + 19);
  v7 = *result;
  v56 = result;
  switch(v6)
  {
    case 4:
      v27 = &png_write_finish_row_png_pass_start[a4];
      if (v27 >= png_write_finish_row_png_pass_inc || v27 < png_write_finish_row_png_pass_start)
      {
        goto LABEL_120;
      }

      v9 = a4;
      v28 = *v27;
      v55 = v28;
      if (v7 > v28)
      {
        v11 = 0;
        result = a4;
        v29 = &png_write_finish_row_png_pass_inc[a4];
        v31 = v29 < png_write_finish_row_png_pass_ystart && v29 >= png_write_finish_row_png_pass_inc;
        v15 = __dst;
        v32 = 4;
        do
        {
          v33 = &__dst[v28 >> 1];
          if (v33 >= a3 || v33 < __dst)
          {
            goto LABEL_120;
          }

          v11 |= ((*v33 >> (~(4 * v28) & 4)) & 0xF) << v32;
          if (v32)
          {
            v32 -= 4;
            if (!v31)
            {
              goto LABEL_120;
            }
          }

          else
          {
            if (v15 >= a3)
            {
              goto LABEL_120;
            }

            if (v15 < __dst)
            {
              goto LABEL_120;
            }

            *v15++ = v11;
            v32 = 4;
            v11 = 0;
            if (!v31)
            {
              goto LABEL_120;
            }
          }

          v28 += *v29;
        }

        while (v28 < v7);
        if (v32 != 4)
        {
LABEL_76:
          if (v15 >= a3 || v15 < __dst)
          {
            goto LABEL_120;
          }

          *v15 = v11;
        }

LABEL_79:
        v9 = result;
      }

      break;
    case 2:
      v19 = &png_write_finish_row_png_pass_start[a4];
      if (v19 >= png_write_finish_row_png_pass_inc || v19 < png_write_finish_row_png_pass_start)
      {
        goto LABEL_120;
      }

      v9 = a4;
      v20 = *v19;
      v55 = v20;
      if (v7 > v20)
      {
        v11 = 0;
        result = a4;
        v21 = &png_write_finish_row_png_pass_inc[a4];
        v23 = v21 < png_write_finish_row_png_pass_ystart && v21 >= png_write_finish_row_png_pass_inc;
        v15 = __dst;
        v24 = 6;
        while (1)
        {
          v25 = &__dst[v20 >> 2];
          if (v25 >= a3 || v25 < __dst)
          {
            goto LABEL_120;
          }

          v11 |= ((*v25 >> (~(2 * v20) & 6)) & 3) << v24;
          if (v24)
          {
            v24 -= 2;
            if (!v23)
            {
              goto LABEL_120;
            }
          }

          else
          {
            if (v15 >= a3)
            {
              goto LABEL_120;
            }

            if (v15 < __dst)
            {
              goto LABEL_120;
            }

            *v15++ = v11;
            v24 = 6;
            v11 = 0;
            if (!v23)
            {
              goto LABEL_120;
            }
          }

          v20 += *v21;
          if (v20 >= v7)
          {
            if (v24 != 6)
            {
              goto LABEL_76;
            }

            goto LABEL_79;
          }
        }
      }

      break;
    case 1:
      v8 = &png_write_finish_row_png_pass_start[a4];
      if (v8 >= png_write_finish_row_png_pass_inc || v8 < png_write_finish_row_png_pass_start)
      {
        goto LABEL_120;
      }

      v9 = a4;
      v10 = *v8;
      v55 = v10;
      if (v7 > v10)
      {
        v11 = 0;
        result = a4;
        v12 = &png_write_finish_row_png_pass_inc[a4];
        v14 = v12 < png_write_finish_row_png_pass_ystart && v12 >= png_write_finish_row_png_pass_inc;
        v15 = __dst;
        v16 = 7;
        while (1)
        {
          v17 = &__dst[v10 >> 3];
          if (v17 >= a3 || v17 < __dst)
          {
            goto LABEL_120;
          }

          v11 |= ((*v17 >> (~v10 & 7)) & 1) << v16;
          if (v16)
          {
            --v16;
            if (!v14)
            {
              goto LABEL_120;
            }
          }

          else
          {
            if (v15 >= a3)
            {
              goto LABEL_120;
            }

            if (v15 < __dst)
            {
              goto LABEL_120;
            }

            *v15++ = v11;
            v16 = 7;
            v11 = 0;
            if (!v14)
            {
              goto LABEL_120;
            }
          }

          v10 += *v12;
          if (v10 >= v7)
          {
            if (v16 != 7)
            {
              goto LABEL_76;
            }

            goto LABEL_79;
          }
        }
      }

      break;
    default:
      v35 = &png_write_finish_row_png_pass_start[a4];
      if (v35 >= png_write_finish_row_png_pass_inc || v35 < png_write_finish_row_png_pass_start)
      {
        goto LABEL_120;
      }

      v9 = a4;
      v36 = *v35;
      v55 = v36;
      if (v7 > v36)
      {
        v37 = v6 >> 3;
        v54 = a4;
        v38 = &png_write_finish_row_png_pass_inc[a4];
        v40 = v38 < png_write_finish_row_png_pass_ystart && v38 >= png_write_finish_row_png_pass_inc;
        v41 = a3 - __dst;
        v42 = __dst;
        while (1)
        {
          v43 = &__dst[v37 * v36];
          if (v42 != v43)
          {
            v44 = a3 >= v43 && v43 >= __dst;
            v45 = v44 && a3 - v43 >= v37;
            v46 = !v45 || v42 > a3;
            v47 = !v46 && v42 >= __dst;
            if (!v47 || v41 < v37)
            {
              goto LABEL_120;
            }

            result = memcpy(v42, v43, v37);
            if (v42 > &v42[v37])
            {
              goto LABEL_120;
            }
          }

          if (!v40)
          {
            goto LABEL_120;
          }

          v42 += v37;
          v36 += *v38;
          v41 -= v37;
          if (v36 >= v7)
          {
            v9 = v54;
            goto LABEL_112;
          }
        }
      }

      break;
  }

LABEL_112:
  v49 = &png_write_finish_row_png_pass_inc[v9];
  if (&png_write_finish_row_png_pass_inc[v9] >= png_write_finish_row_png_pass_ystart || v49 < png_write_finish_row_png_pass_inc || &png_write_finish_row_png_pass_start[v9] >= png_write_finish_row_png_pass_inc || &png_write_finish_row_png_pass_start[v9] < png_write_finish_row_png_pass_start)
  {
LABEL_120:
    __break(0x5519u);
    return result;
  }

  v50 = (*v56 + ~v55 + *v49) / *v49;
  *v56 = v50;
  v51 = *(v56 + 19);
  v52 = (v51 * v50 + 7) >> 3;
  v53 = (v51 >> 3) * v50;
  if (v51 < 8)
  {
    v53 = v52;
  }

  *(v56 + 8) = v53;
  return result;
}

int8x16_t *png_setup_up_row(int8x16_t *result, unint64_t a2, unint64_t a3, int a4)
{
  v5 = result[22].u64[0];
  v4 = result[22].u64[1];
  if (v5 >= v4)
  {
LABEL_30:
    __break(0x5519u);
    return result;
  }

  v9 = result;
  *v5 = 2;
  CPUCapabilities = AppleGetCPUCapabilities();
  v11 = v9[42];
  v12 = v9[40];
  if (a4 == 4 && (CPUCapabilities & 0x100) != 0)
  {
    result = (v11 + 1);
    v13 = (v12 + 1);
    if (v5 + 1 >= v5 && result >= v11 && v13 >= v12)
    {
      return png_write_filter_row_up_neon(result, v9[43], (v5 + 1), v4, v13, v9[41], a2);
    }

    goto LABEL_30;
  }

  result = 0;
  if (a2)
  {
    v16 = v9[43];
    v17 = (v12 + 1);
    v18 = v9[41];
    v19 = (v5 + 1);
    v20 = (v11 + 1);
    v21 = a2 - 1;
    while (v20 < v16 && v20 >= v11 && v17 < v18 && v17 >= v12 && v19 < v4 && v19 >= v5)
    {
      v23 = *v20++;
      v22 = v23;
      v24 = *v17++;
      v25 = v22 - v24;
      v26 = v25;
      *v19++ = v25;
      v27 = v25;
      LODWORD(v28) = 256 - v25;
      if (v26 >= 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = v28;
      }

      result = (result + v28);
      if (result > a3 || v21-- == 0)
      {
        return result;
      }
    }

    goto LABEL_30;
  }

  return result;
}