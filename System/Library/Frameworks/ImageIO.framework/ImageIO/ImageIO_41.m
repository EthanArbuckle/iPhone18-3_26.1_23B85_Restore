uint64_t ASTCReadPlugin::decodeImageImp(uint64_t a1, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v67[0] = 0;
  v8 = *(a1 + 496);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  seed = 0;
  v65 = 0;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v10 = *(a1 + 220);
    v11 = v10 >> 24;
    v12 = MEMORY[0x1E69E9830];
    if ((v10 >> 24) <= 0x7F)
    {
      v13 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v13 = __maskrune(v11, 0x40000uLL);
      v10 = *(a1 + 220);
    }

    if (v13)
    {
      v14 = (v10 >> 24);
    }

    else
    {
      v14 = 46;
    }

    v15 = v10 << 8 >> 24;
    if (v15 <= 0x7F)
    {
      v16 = *(v12 + 4 * v15 + 60) & 0x40000;
    }

    else
    {
      v16 = __maskrune(v15, 0x40000uLL);
      v10 = *(a1 + 220);
    }

    if (v16)
    {
      v17 = (v10 << 8 >> 24);
    }

    else
    {
      v17 = 46;
    }

    v18 = v10 >> 8;
    if (v18 <= 0x7F)
    {
      v19 = *(v12 + 4 * v18 + 60) & 0x40000;
    }

    else
    {
      v19 = __maskrune(v18, 0x40000uLL);
      v10 = *(a1 + 220);
    }

    if (v19)
    {
      v20 = (v10 >> 8);
    }

    else
    {
      v20 = 46;
    }

    if (v10 <= 0x7F)
    {
      if ((*(v12 + 4 * v10 + 60) & 0x40000) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (__maskrune(v10, 0x40000uLL))
    {
LABEL_25:
      v21 = *(a1 + 220);
LABEL_28:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v14, v17, v20, v21, iioTypeStr[a3], "virtual OSStatus ASTCReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_29;
    }

    v21 = 46;
    goto LABEL_28;
  }

LABEL_29:
  IIOReadPlugin::debugDecodeImage(a1, a2);
  if (*(a1 + 442) == 1 && *(a1 + 424) != 16)
  {
    _cg_jpeg_mem_term("decodeImageImp", 904, "*** ERROR: ASTC cannot handle %d rowBytesAlignment\n", *(a1 + 424));
    BlockArray = 0;
    goto LABEL_78;
  }

  *(a1 + 424) = 16;
  v22 = *(a1 + 24);
  if (v22)
  {
    v23 = IIOImageReadSession::mapData(v22);
  }

  else
  {
    v23 = 0;
  }

  v24 = ASTCTextureImp::needs_hdr(v9);
  v25 = *(a1 + 252);
  if (v24)
  {
    v26 = *(a1 + 244);
    if (v25 < 8 * v26)
    {
      v25 = 8 * v26;
      *(a1 + 252) = 8 * v26;
    }
  }

  *(a1 + 316) = ImageIOAlignRowBytes(v25, *(a1 + 424));
  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
    LODWORD(v34) = *(a1 + 308);
    v33 = v34;
    v35 = *(a1 + 312);
    v31 = v35;
    v30 = *(a1 + 316) * v35;
    BaseAddress = _ImageIO_Malloc(v30, *(a1 + 416), v67, kImageMalloc_ASTC_Data[0], 0, 0);
    v32 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      BlockArray = 0;
      if (!v23)
      {
        goto LABEL_78;
      }

      goto LABEL_76;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    BlockArray = 0;
    v30 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v67[0] = v30;
    v31 = 0.0;
    v32 = 1;
    v33 = 0.0;
  }

  if (!BaseAddress)
  {
    v38 = 0;
LABEL_63:
    if (!v32)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (*(a1 + 529) != 1)
  {
    v39 = *(a1 + 308);
    v40 = *(a1 + 312);
    v41 = *(a1 + 316);
    v59.data = BaseAddress;
    v59.height = v40;
    v59.width = v39;
    v59.rowBytes = v41;
    v42 = *(a1 + 24);
    if (v42)
    {
      BlockArray = ASTCTextureImp::decodeASTCtoRGBX(v9, v42, &v59, *(a1 + 326), *(a1 + 437) == 0);
    }

    v38 = 0;
    if (!BlockArray)
    {
      goto LABEL_59;
    }

LABEL_54:
    *(a1 + 104) = 0;
    if ((v32 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  v53 = v32;
  v36 = v23;
  v37 = (16 * *(a1 + 480) * *(a1 + 484));
  v38 = malloc_type_calloc(v37, 1uLL, 0x100004077774924uLL);
  if (!v38 || (v64 = 0, v62 = 0u, v63 = 0u, v60 = 0u, v61 = 0u, memset(&v59, 0, sizeof(v59)), CreateKtxStream(&v59, *(a1 + 24))))
  {
LABEL_49:
    v23 = v36;
    if ((v53 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (ktxTexture2_CreateFromStream(&v59, 0, &v65))
  {
    _cg_jpeg_mem_term("decodeImageImp", 973, "*** ERROR: ktxTexture2_CreateFromStream failed [%d]\n");
    goto LABEL_49;
  }

  v55 = *(a1 + 224);
  v56 = v38;
  v57 = v37;
  v58 = 0;
  if ((*(*(v65 + 8) + 40))())
  {
    _cg_jpeg_mem_term("decodeImageImp", 977, "*** ERROR: ktxTexture_IterateLoadLevelFaces failed [%d]\n");
    goto LABEL_49;
  }

  v43 = *(a1 + 276);
  v44 = *(a1 + 280);
  v45 = *(a1 + 316);
  v54.data = BaseAddress;
  v54.height = v44;
  v54.width = v43;
  v54.rowBytes = v45;
  BlockArray = ASTCTextureImp::decodeASTCtoRGBX(v9, v38, v58, &v54, *(a1 + 326), *(a1 + 437) == 0);
  v23 = v36;
  v32 = v53;
  if (BlockArray)
  {
    goto LABEL_54;
  }

LABEL_59:
  if (a3 != 3)
  {
    BlockArray = 0;
    goto LABEL_63;
  }

  v46 = 0;
  v68.origin.x = 0.0;
  v68.origin.y = 0.0;
  v68.size.width = v33;
  v68.size.height = v31;
  **(a1 + 96) = IIOReadPlugin::createImageBlock(a1, BaseAddress, v30, v68, *(a1 + 316), *(a1 + 371));
  if (CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]))
  {
    v47 = 0;
  }

  else
  {
    v69.origin.x = 0.0;
    v69.origin.y = 0.0;
    v69.size.width = v33;
    v69.size.height = v31;
    *(&v47 - 1) = CGRectUnion(*(a1 + 120), v69);
    v46 = v48;
    v33 = v49;
    v31 = v50;
  }

  BlockArray = 0;
  *(a1 + 120) = v46;
  *(a1 + 128) = v47;
  *(a1 + 136) = v33;
  *(a1 + 144) = v31;
  if ((v32 & 1) == 0)
  {
    goto LABEL_72;
  }

  BaseAddress = 0;
LABEL_68:
  IOSurfaceUnlock(*a4, 0, &seed);
LABEL_69:
  if (a3 == 3 && BaseAddress)
  {
    _ImageIO_Free(BaseAddress, v67[0]);
  }

LABEL_72:
  if (v38)
  {
    free(v38);
    if (!v23)
    {
      goto LABEL_78;
    }
  }

  else if (!v23)
  {
    goto LABEL_78;
  }

LABEL_76:
  v51 = *(a1 + 24);
  if (v51)
  {
    IIOImageReadSession::unmapData(v51);
  }

LABEL_78:
  if (v65)
  {
    (**(v65 + 8))();
  }

  return BlockArray;
}

uint64_t TIFFInitLZW(uint64_t a1, int a2)
{
  if (a2 != 5)
  {
    TIFFInitLZW_cold_1();
  }

  v3 = malloc_type_malloc(0x128uLL, 0x10B00406908570BuLL);
  *(a1 + 1096) = v3;
  if (v3)
  {
    v3[29] = 0;
    v3[24] = 0;
    v3[36] = 0;
    *(v3 + 38) = *(a1 + 12);
    *(a1 + 952) = LZWFixupTags;
    *(a1 + 960) = LZWSetupDecode;
    *(a1 + 968) = LZWPreDecode;
    *(a1 + 1008) = LZWDecode;
    *(a1 + 1024) = LZWDecode;
    *(a1 + 1040) = LZWDecode;
    *(a1 + 976) = LZWSetupEncode;
    *(a1 + 992) = LZWPreEncode;
    *(a1 + 1000) = LZWPostEncode;
    *(a1 + 1016) = LZWEncode;
    *(a1 + 1032) = LZWEncode;
    *(a1 + 1048) = LZWEncode;
    *(a1 + 1072) = LZWCleanup;
    TIFFPredictorInit(a1, v4, v5, v6, v7, v8, v9, v10);
    return 1;
  }

  else
  {
    TIFFErrorExtR(a1, "TIFFInitLZW", "No space for LZW state block", v6, v7, v8, v9, v10, v12);
    return 0;
  }
}

uint64_t LZWSetupDecode(uint64_t a1)
{
  v2 = *(a1 + 1096);
  if (!v2)
  {
    v3 = malloc_type_malloc(0x128uLL, 0x10B00406908570BuLL);
    *(a1 + 1096) = v3;
    if (!v3)
    {
      v15 = "No space for LZW state block";
      goto LABEL_12;
    }

    v2 = v3;
    v3[29] = 0;
    v3[24] = 0;
    TIFFPredictorInit(a1, v4, v5, v6, v7, v8, v9, v10);
  }

  if (v2[29])
  {
    return 1;
  }

  v11 = malloc_type_malloc(0x13FF0uLL, 0x102004034E03FFCuLL);
  v2[29] = v11;
  if (v11)
  {
    v12 = v11 + 4092;
    for (i = 255; i != -1; --i)
    {
      *(v12 - 2) = i;
      *(v12 - 1) = i;
      *v12 = 1;
      *(v12 - 2) = 1;
      *(v12 - 12) = 0;
      v12 -= 16;
    }

    *(v11 + 257) = 0u;
    *(v11 + 256) = 0u;
    return 1;
  }

  v15 = "No space for LZW code table";
LABEL_12:
  TIFFErrorExtR(a1, "LZWSetupDecode", v15, v6, v7, v8, v9, v10, v16);
  return 0;
}

uint64_t LZWPreDecode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  if (!v8)
  {
    LZWPreDecode_cold_1();
  }

  v10 = *(v8 + 232);
  if (!v10)
  {
    (*(a1 + 960))(a1);
    v10 = *(v8 + 232);
    if (!v10)
    {
      return 0;
    }
  }

  if (*(a1 + 1160) >= 2 && (v11 = *(a1 + 1120), !*v11) && (v11[1] & 1) != 0)
  {
    if (!*(v8 + 192))
    {
      TIFFWarningExtR(a1, "LZWPreDecode", "Old-style LZW codes, convert file", a4, a5, a6, a7, a8, v13);
      *(a1 + 1008) = LZWDecodeCompat;
      *(a1 + 1024) = LZWDecodeCompat;
      *(a1 + 1040) = LZWDecodeCompat;
      (*(a1 + 960))(a1);
      *(v8 + 192) = LZWDecodeCompat;
      v10 = *(v8 + 232);
    }

    *(v8 + 130) = 511;
  }

  else
  {
    *(v8 + 130) = 510;
    *(v8 + 192) = LZWDecode;
  }

  *(v8 + 128) = 9;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 160) = xmmword_1862272F0;
  *(v8 + 176) = 0;
  *(v8 + 184) = 0;
  *(v8 + 208) = v10;
  *(v8 + 216) = v10 - 16;
  *(v8 + 224) = v10 + 8160;
  *(v8 + 240) = 0;
  return 1;
}

uint64_t LZWDecode(void *a1, char *__b, int64_t a3)
{
  v3 = a1[137];
  if (!v3)
  {
    LZWDecode_cold_2();
  }

  v4 = *(v3 + 232);
  if (!v4)
  {
    LZWDecode_cold_1();
  }

  v5 = a3;
  v6 = __b;
  v7 = a1;
  if (*(v3 + 240))
  {
    bzero(__b, a3);
    v13 = "LZWDecode";
    v81 = *(v7 + 876);
    v14 = "LZWDecode: Scanline %u cannot be read due to previous error";
LABEL_5:
    TIFFErrorExtR(v7, v13, v14, v8, v9, v10, v11, v12, v81);
    return 0;
  }

  v16 = *(v3 + 168);
  if (v16)
  {
    v17 = *(v3 + 200);
    v18 = *(v17 + 4);
    v19 = v18 - v16;
    v20 = a3 - (v18 - v16);
    if (a3 >= v18 - v16)
    {
      v24 = &__b[v19];
      v25 = ~v16 + v18;
      do
      {
        __b[v25] = *(v17 + 11);
        v23 = v25-- != 0;
        if (!v23)
        {
          break;
        }

        v17 = *v17;
      }

      while (v17);
      *(v3 + 168) = 0;
    }

    else
    {
      *(v3 + 168) = v16 + a3;
      v21 = ~v16 + v18;
      do
      {
        v17 = *v17;
        if (v21 <= a3)
        {
          break;
        }

        --v21;
      }

      while (v17);
      if (v17)
      {
        v22 = a3 - 1;
        do
        {
          __b[v22] = *(v17 + 11);
          v23 = v22-- != 0;
          if (!v23)
          {
            break;
          }

          v17 = *v17;
        }

        while (v17);
        v20 = v22 + 1;
      }

      else
      {
        v20 = a3;
      }

      v24 = __b;
    }

    if (a3 < v19)
    {
      return 1;
    }

    v4 = *(v3 + 232);
    v5 = v20;
    v6 = v24;
  }

  v26 = a1[144];
  v27 = *(v3 + 176) + 8 * (a1[145] - *(v3 + 184));
  *(v3 + 176) = v27;
  v28 = *(v3 + 128);
  v30 = *(v3 + 136);
  v29 = *(v3 + 144);
  v31 = *(v3 + 160);
  v32 = *(v3 + 208);
  v33 = *(v3 + 216);
  v34 = *(v3 + 224);
  if (!v5)
  {
    goto LABEL_109;
  }

  v35 = v4 - 16;
  v36 = v4 + 4128;
  v37 = v4 + 8160;
  v38 = v4 + 81904;
  v90 = v7;
LABEL_29:
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v29 -= v28;
        if (v29 >= 0)
        {
          goto LABEL_30;
        }

        if (v27 < 0x40)
        {
          if (v27 < 8)
          {
            goto LABEL_112;
          }

          v30 = *v26 | (v30 << 8);
          if (v29 > 0xFFFFFFFFFFFFFFF7)
          {
            v29 += 8;
            v27 -= 8;
            ++v26;
          }

          else
          {
            if (v27 - 8 < 8)
            {
LABEL_112:
              bzero(v6, v5);
              *(v3 + 240) = 1;
              TIFFErrorExtR(v7, "LZWDecode", "LZWDecode: Strip %u not terminated with EOI code", v75, v76, v77, v78, v79, *(v7 + 884));
              return 0;
            }

            v62 = v26[1];
            v26 += 2;
            v30 = v62 | (v30 << 8);
            v29 += 16;
            v27 -= 16;
          }

LABEL_30:
          v39 = v30 >> v29;
          goto LABEL_31;
        }

        v48 = v30 << -v29;
        v49 = *v26;
        v26 += 8;
        v30 = bswap64(v49);
        v50 = v30 >> v29;
        v29 += 64;
        v39 = v50 | v48;
        v27 -= 64;
LABEL_31:
        v40 = v39 & v31;
        v41 = v4 + 16 * (v39 & v31);
        if ((v39 & v31) <= 0x101)
        {
          if (v40 < 0x100)
          {
            if (v41 > v33)
            {
              goto LABEL_113;
            }

            *v33 = v32;
            *(v33 + 10) = *(v32 + 10);
            *(v33 + 8) = *(v32 + 8) + 1;
            *(v33 + 11) = v40;
            if (v40 == *(v32 + 11))
            {
              v44 = *(v32 + 12);
            }

            else
            {
              v44 = 0;
            }

            *(v33 + 12) = v44;
            v45 = v33 + 16;
            if (v28 >= 11)
            {
              v46 = 11;
            }

            else
            {
              v46 = v28;
            }

            if (v45 >= v38)
            {
              v47 = v35;
            }

            else
            {
              v47 = v33 + 16;
            }

            if (v45 <= v34)
            {
              v33 += 16;
            }

            else
            {
              v28 = v46 + 1;
              v31 = ~(-2 << v46);
              v33 = v47;
            }

            if (v45 > v34)
            {
              v34 = v35 + 16 * ~(-2 << v46);
            }

            *v6++ = v40;
            v32 = v41;
            if (!--v5)
            {
              goto LABEL_123;
            }

            continue;
          }

          if (v40 == 257)
          {
            goto LABEL_109;
          }

          while (v29 <= 8)
          {
            if (v27 < 0x40)
            {
              if (v27 < 8)
              {
                goto LABEL_112;
              }

              v30 = *v26 | (v30 << 8);
              if (v29 <= 0)
              {
                if (v27 - 8 < 8)
                {
                  goto LABEL_112;
                }

                v60 = v26[1];
                v26 += 2;
                v30 = v60 | (v30 << 8);
                v29 += 7;
                v27 -= 16;
              }

              else
              {
                --v29;
                v27 -= 8;
                ++v26;
              }

              goto LABEL_83;
            }

            v57 = *v26;
            v26 += 8;
            v58 = 2 * v30;
            v30 = bswap64(v57);
            v29 += 55;
            v59 = (v58 << ~v29) | (v30 >> v29);
            v27 -= 64;
LABEL_84:
            v61 = v59 & 0x1FF;
            if (v61 != 256)
            {
              if (v61 == 257)
              {
                v31 = 511;
                LOWORD(v28) = 9;
LABEL_108:
                v33 = v36;
                v34 = v37;
                goto LABEL_109;
              }

              if (v61 > 0x101)
              {
LABEL_113:
                bzero(v6, v5);
                *(v3 + 240) = 1;
                v13 = *v7;
                v14 = "Using code not yet in table";
                goto LABEL_5;
              }

              *v6++ = v59;
              v32 = v4 + 16 * v61;
              v28 = 9;
              v31 = 511;
              v33 = v36;
              v34 = v37;
              if (!--v5)
              {
                LOWORD(v28) = 9;
                v31 = 511;
                goto LABEL_108;
              }

              goto LABEL_29;
            }
          }

          v29 -= 9;
LABEL_83:
          v59 = v30 >> v29;
          goto LABEL_84;
        }

        break;
      }

      if (v41 >= v33)
      {
        if (v41 != v33)
        {
          goto LABEL_113;
        }

        v43 = *(v32 + 10);
        *(v33 + 11) = v43;
        v42 = v43;
      }

      else
      {
        v42 = *(v41 + 10);
        *(v33 + 11) = v42;
        LOBYTE(v43) = *(v32 + 10);
      }

      if (*(v32 + 11) == v42)
      {
        v51 = *(v32 + 12);
      }

      else
      {
        v51 = 0;
      }

      *(v33 + 12) = v51;
      *v33 = v32;
      *(v33 + 10) = v43;
      *(v33 + 8) = *(v32 + 8) + 1;
      v52 = v33 + 16;
      if (v28 >= 11)
      {
        v53 = 11;
      }

      else
      {
        v53 = v28;
      }

      if (v52 >= v38)
      {
        v54 = v35;
      }

      else
      {
        v54 = v33 + 16;
      }

      if (v52 <= v34)
      {
        v33 += 16;
      }

      else
      {
        v28 = v53 + 1;
        v31 = ~(-2 << v53);
        v33 = v54;
      }

      if (v52 > v34)
      {
        v34 = v35 + 16 * ~(-2 << v53);
      }

      v55 = *(v41 + 8);
      if (v55 <= 2)
      {
        v56 = v5 - 2;
        if (v5 <= 2)
        {
          if (v5 == 2)
          {
            v5 = 0;
            *v6 = *(v41 + 10);
            v6 += 2;
LABEL_118:
            v32 = v41;
            v7 = v90;
            goto LABEL_109;
          }

          goto LABEL_119;
        }

        *v6 = *(v41 + 10);
        v6 += 2;
        goto LABEL_92;
      }

      if (v55 != 3)
      {
        if (v5 < v55)
        {
          goto LABEL_119;
        }

        if (*(v41 + 12) == 1)
        {
          v84 = v37;
          v85 = v36;
          v82 = v38;
          v83 = v35;
          v88 = v31;
          v89 = v26;
          v86 = v4;
          v87 = v34;
          memset(v6, *(v41 + 11), v55);
          v38 = v82;
          v35 = v83;
          v37 = v84;
          v36 = v85;
          v4 = v86;
          v34 = v87;
          v31 = v88;
          v26 = v89;
          v6 += v55;
          v32 = v41;
          v5 -= v55;
          v7 = v90;
          if (!v5)
          {
            goto LABEL_123;
          }
        }

        else
        {
          v63 = &v6[v55];
          *(v63 - 1) = *(v41 + 11);
          v64 = *v41;
          *(v63 - 2) = *(*v41 + 11);
          v65 = *v64;
          *(v63 - 3) = *(v65 + 11);
          v66 = *v65;
          v6[v55 - 4] = *(v66 + 11);
          if (&v6[v55 - 4] > v6)
          {
            v67 = v63 - 5;
            do
            {
              v66 = *v66;
              v68 = v67 > v6;
              *v67-- = *(v66 + 11);
            }

            while (v68);
          }

          v32 = v41;
          v6 += v55;
          v5 -= v55;
          v7 = v90;
          if (!v5)
          {
            v32 = v41;
            v6 = v63;
            goto LABEL_109;
          }
        }

        continue;
      }

      break;
    }

    v56 = v5 - 3;
    if (v5 > 3)
    {
      *v6 = *(v41 + 10);
      v6[1] = *(*v41 + 11);
      v6[2] = *(v41 + 11);
      v6 += 3;
LABEL_92:
      v32 = v41;
      v5 = v56;
      v7 = v90;
      continue;
    }

    break;
  }

  if (v5 == 3)
  {
    v5 = 0;
    *v6 = *(v41 + 10);
    v6[1] = *(*v41 + 11);
    v6[2] = *(v41 + 11);
    v6 += 3;
    goto LABEL_118;
  }

LABEL_119:
  *(v3 + 200) = v41;
  v80 = v41;
  do
  {
    v80 = *v80;
  }

  while (v5 < *(v80 + 4));
  *(v3 + 168) = v5;
  v7 = v90;
  do
  {
    v6[v5 - 1] = *(v80 + 11);
    v80 = *v80;
    --v5;
  }

  while (v5);
LABEL_123:
  v32 = v41;
LABEL_109:
  v69 = *(v7 + 1152) - v26 + *(v7 + 1160);
  *(v7 + 1160) = v69;
  *(v7 + 1152) = v26;
  *(v3 + 176) = v27;
  *(v3 + 184) = v69;
  *(v3 + 128) = v28;
  *(v3 + 136) = v30;
  *(v3 + 144) = v29;
  *(v3 + 160) = v31;
  *(v3 + 208) = v32;
  *(v3 + 216) = v33;
  *(v3 + 224) = v34;
  if (v5 >= 1)
  {
    bzero(v6, v5);
    TIFFErrorExtR(v7, "LZWDecode", "Not enough data at scanline %u (short %llu bytes)", v70, v71, v72, v73, v74, *(v7 + 876));
    return 0;
  }

  return 1;
}

uint64_t LZWSetupEncode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    LZWSetupEncode_cold_1();
  }

  v3 = malloc_type_malloc(0x23290uLL, 0x100004090896170uLL);
  *(v1 + 288) = v3;
  if (v3)
  {
    return 1;
  }

  TIFFErrorExtR(a1, "LZWSetupEncode", "No space for LZW hash table", v4, v5, v6, v7, v8, v10);
  return 0;
}

uint64_t LZWPreEncode(uint64_t a1)
{
  v1 = *(a1 + 1096);
  if (!v1)
  {
    LZWPreEncode_cold_1();
  }

  v3 = *(v1 + 288);
  if (!v3)
  {
    (*(a1 + 976))(a1);
    v3 = *(v1 + 288);
  }

  *(v1 + 128) = 33488905;
  *(v1 + 132) = 258;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 248) = 10000;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  *(v1 + 280) = *(a1 + 1120) + *(a1 + 1128) - 5;
  v4 = 9001;
  v5 = 17986;
  do
  {
    v6 = &v3[v5];
    *v6 = -1;
    v6[2] = -1;
    v6[4] = -1;
    v6[6] = -1;
    v6[8] = -1;
    v6[10] = -1;
    v6[12] = -1;
    v4 -= 8;
    v5 -= 16;
    v6[14] = -1;
  }

  while (v4 > 7);
  *v3 = -1;
  *(v1 + 244) = 0xFFFF;
  return 1;
}

uint64_t LZWPostEncode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[137];
  v10 = a1[144];
  v11 = *(v9 + 136);
  v12 = *(v9 + 144);
  v13 = *(v9 + 128);
  if (v10 > *(v9 + 280))
  {
    a1[145] = &v10[-a1[140]];
    result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    v10 = a1[140];
  }

  v15 = *(v9 + 244);
  if (v15 != 0xFFFF)
  {
    v22 = *(v9 + 132);
    v11 = (v11 << v13) | v15;
    v23 = v12 + v13;
    v12 = v12 + v13 - 8;
    *v10 = v11 >> v12;
    v20 = v23 < 16;
    v24 = v23 - 16;
    if (v20)
    {
      ++v10;
    }

    else
    {
      v10[1] = v11 >> v24;
      v10 += 2;
      v12 = v24;
    }

    *(v9 + 244) = 0xFFFF;
    if (v22 == 4093)
    {
      v11 = (v11 << v13) | 0x100;
      v25 = v12 + v13;
      v12 = v12 + v13 - 8;
      *v10 = v11 >> v12;
      v20 = v25 < 16;
      v26 = v25 - 16;
      if (v20)
      {
        LODWORD(v13) = 9;
        ++v10;
      }

      else
      {
        v10[1] = v11 >> v26;
        v10 += 2;
        LODWORD(v13) = 9;
        v12 = v26;
      }
    }

    else if (v22 >= *(v9 + 130))
    {
      if (v13 >= 0xC)
      {
        LZWPostEncode_cold_1();
      }

      LODWORD(v13) = v13 + 1;
    }
  }

  v16 = (v11 << v13) | 0x101;
  v17 = v12 + v13;
  v18 = v17 - 8;
  *v10 = v16 >> (v17 - 8);
  v19 = v10 + 1;
  v20 = v17 < 16;
  v21 = v17 - 16;
  if (!v20)
  {
    v19 = v10 + 2;
    v10[1] = v16 >> v21;
    v18 = v21;
  }

  if (v18 >= 1)
  {
    *v19++ = v16 << (8 - v18);
  }

  a1[145] = &v19[-a1[140]];
  return 1;
}

uint64_t LZWEncode(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1[137];
  if (!v3)
  {
    return 0;
  }

  if (!*(v3 + 288))
  {
    LZWEncode_cold_2();
  }

  v4 = a3;
  v6 = a1;
  v8 = *(v3 + 264);
  v7 = *(v3 + 272);
  v9 = *(v3 + 248);
  v11 = *(v3 + 136);
  v10 = *(v3 + 144);
  v12 = *(v3 + 132);
  v13 = *(v3 + 130);
  v14 = *(v3 + 128);
  v15 = a1[144];
  v16 = *(v3 + 280);
  v17 = *(v3 + 244);
  if (a3 >= 1 && v17 == 0xFFFF)
  {
    v11 = (v11 << v14) | 0x100;
    v18 = v10 + *(v3 + 128);
    v10 = v18 - 8;
    *v15 = v11 >> (v18 - 8);
    v19 = v18 < 16;
    v20 = v18 - 16;
    if (v19)
    {
      ++v15;
    }

    else
    {
      v15[1] = v11 >> v20;
      v15 += 2;
      v10 = v20;
    }

    v7 += v14;
    v22 = *a2++;
    v17 = v22;
    ++v8;
    v4 = a3 - 1;
  }

  if (v4 >= 1)
  {
    v23 = v14;
    while (1)
    {
      v24 = 0;
      v25 = *(v3 + 288);
      v58 = v8;
      v26 = (v8 << 8) + 256;
      v27 = 1;
      v28 = v17;
      while (1)
      {
        v17 = a2[v24];
        v29 = v28 + (v17 << 12);
        v30 = v28 ^ (32 * v17);
        v31 = v25 + 16 * v30;
        if (*v31 != v29)
        {
          break;
        }

        v28 = *(v31 + 8);
        ++v24;
        v26 += 256;
        --v27;
        if ((v4 + v27) <= 1)
        {
          v48 = v58 + v24;
          LODWORD(v17) = v28;
          goto LABEL_54;
        }
      }

      v57 = v58 + v24 + 1;
      if ((*v31 & 0x8000000000000000) == 0)
      {
        if (32 * v17 == v28)
        {
          v32 = -1;
        }

        else
        {
          v32 = v30 - 9001;
        }

        while (1)
        {
          v30 += v32 + ((v30 + v32) < 0 ? 0x2329 : 0);
          v33 = *(v25 + 16 * v30);
          if (v33 == v29)
          {
            break;
          }

          if (v33 < 0)
          {
            v31 = v25 + 16 * v30;
            goto LABEL_23;
          }
        }

        v17 = *(v25 + 16 * v30 + 8);
        v48 = v58 + v24 + 1;
        goto LABEL_48;
      }

LABEL_23:
      if (v15 > v16)
      {
        v49 = v6;
        v50 = v12;
        v51 = v7;
        v52 = v13;
        v53 = v10;
        v54 = v16;
        v55 = v9;
        v56 = v11;
        v6[145] = &v15[-v6[140]];
        result = TIFFFlushData1(v6, v10, 4294958295, 9001, 10001, 0x7FFFFFLL, v7, v12);
        if (!result)
        {
          return result;
        }

        v6 = v49;
        v15 = v49[140];
        v9 = v55;
        v11 = v56;
        v10 = v53;
        v16 = v54;
        v13 = v52;
        v7 = v51;
        LODWORD(v12) = v50;
      }

      v11 = (v11 << v23) | v28;
      v34 = v10 + v23;
      v10 = v34 - 8;
      *v15 = v11 >> (v34 - 8);
      v19 = v34 < 16;
      v35 = v34 - 16;
      if (v19)
      {
        ++v15;
      }

      else
      {
        v15[1] = v11 >> v35;
        v15 += 2;
        v10 = v35;
      }

      v36 = v23;
      *(v31 + 8) = v12;
      *v31 = v29;
      if (v12 == 4093)
      {
        break;
      }

      v7 += v23;
      if (v12 >= v13)
      {
        v48 = v58 + v24 + 1;
        if (v23 >= 12)
        {
          LZWEncode_cold_1();
        }

        v13 = ~(-1 << (v23 + 1));
        v12 = (v12 + 1);
        ++v23;
        goto LABEL_48;
      }

      v48 = v58 + v24 + 1;
      if (v57 >= v9)
      {
        if (v58 + v24 < 0x7FFFFF)
        {
          v43 = v26 / v7;
        }

        else if (v7 >= 0x100)
        {
          v43 = v57 / (v7 >> 8);
        }

        else
        {
          v43 = 0x7FFFFFFFLL;
        }

        v9 = v58 + v24 + 10001;
        if (v43 <= *(v3 + 256))
        {
          v37 = *(v3 + 288);
          v45 = 17986;
          for (i = 9001; i > 7; i -= 8)
          {
            v47 = &v37[v45];
            *v47 = -1;
            v47[2] = -1;
            v47[4] = -1;
            v47[6] = -1;
            v47[8] = -1;
            v47[10] = -1;
            v47[12] = -1;
            v45 -= 16;
            v47[14] = -1;
          }

          goto LABEL_32;
        }

        *(v3 + 256) = v43;
      }

      v12 = (v12 + 1);
LABEL_48:
      a2 += v24 + 1;
      v44 = v4 - v24;
      v4 = v4 - v24 - 1;
      v8 = v48;
      if (v44 <= 1)
      {
        goto LABEL_54;
      }
    }

    v37 = *(v3 + 288);
    v38 = 17986;
    for (j = 9001; j > 7; j -= 8)
    {
      v40 = &v37[v38];
      *v40 = -1;
      v40[2] = -1;
      v40[4] = -1;
      v40[6] = -1;
      v40[8] = -1;
      v40[10] = -1;
      v40[12] = -1;
      v38 -= 16;
      v40[14] = -1;
    }

LABEL_32:
    *v37 = -1;
    *(v3 + 256) = 0;
    v11 = (v11 << v23) | 0x100;
    v41 = v10 + v23;
    v10 = v41 - 8;
    *v15 = v11 >> (v41 - 8);
    v48 = 0;
    v19 = v41 < 16;
    v42 = v41 - 16;
    if (v19)
    {
      v23 = 9;
      v13 = 511;
      v12 = 258;
      v7 = v36;
      ++v15;
    }

    else
    {
      v15[1] = v11 >> v42;
      v15 += 2;
      v23 = 9;
      v13 = 511;
      v12 = 258;
      v7 = v36;
      v10 = v42;
    }

    goto LABEL_48;
  }

  LOWORD(v23) = v14;
  v48 = v8;
LABEL_54:
  *(v3 + 264) = v48;
  *(v3 + 272) = v7;
  *(v3 + 248) = v9;
  *(v3 + 244) = v17;
  *(v3 + 136) = v11;
  *(v3 + 144) = v10;
  *(v3 + 132) = v12;
  *(v3 + 130) = v13;
  *(v3 + 128) = v23;
  result = 1;
  v6[144] = v15;
  return result;
}

uint64_t LZWCleanup(void *a1)
{
  TIFFPredictorCleanup(a1);
  v2 = a1[137];
  if (!v2)
  {
    LZWCleanup_cold_1();
  }

  if (v2[29])
  {
    free(v2[29]);
    v2 = a1[137];
  }

  if (v2[36])
  {
    free(v2[36]);
    v2 = a1[137];
  }

  free(v2);
  a1[137] = 0;

  return _TIFFSetDefaultCompressionState(a1);
}

uint64_t LZWDecodeCompat(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  if (!v8)
  {
    LZWDecodeCompat_cold_1();
  }

  v9 = a3;
  v10 = a2;
  v11 = *(v8 + 168);
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = *(v8 + 200);
  v13 = *(v12 + 4) - v11;
  v14 = a3 - v13;
  if (a3 >= v13)
  {
    v16 = *(v12 + 4) - v11;
    do
    {
      a2[v16 - 1] = *(v12 + 11);
      v12 = *v12;
      --v16;
    }

    while (v16);
    *(v8 + 168) = 0;
    v10 = &a2[v13];
  }

  else
  {
    *(v8 + 168) = v11 + a3;
    v15 = v13;
    do
    {
      v12 = *v12;
      --v15;
    }

    while (v15 > a3);
    v14 = a3;
    do
    {
      a2[v14 - 1] = *(v12 + 11);
      v12 = *v12;
      --v14;
    }

    while (v14);
  }

  v9 = v14;
  if (a3 >= v13)
  {
LABEL_13:
    v17 = *(a1 + 1152);
    v18 = *(v8 + 176) + 8 * (*(a1 + 1160) - *(v8 + 184));
    *(v8 + 176) = v18;
    LODWORD(v19) = *(v8 + 128);
    v21 = *(v8 + 136);
    v20 = *(v8 + 144);
    v22 = *(v8 + 160);
    v23 = *(v8 + 208);
    v24 = *(v8 + 216);
    v25 = *(v8 + 224);
    if (v9 >= 1)
    {
      v51 = a1;
      while (1)
      {
        if (v18 < v19)
        {
          v48 = v25;
          v50 = v22;
          TIFFWarningExtR(v51, "LZWDecodeCompat", "LZWDecode: Strip %u not terminated with EOI code", a4, a5, a6, a7, a8, *(a1 + 884));
          v22 = v50;
          a1 = v51;
          v25 = v48;
          goto LABEL_54;
        }

        v26 = (*v17 << v20) | v21;
        v27 = v20 + 8;
        if (v20 + 8 >= v19)
        {
          ++v17;
        }

        else
        {
          v28 = v17[1];
          v17 += 2;
          v26 |= v28 << v27;
          v27 = v20 + 16;
        }

        v29 = v26 & v22;
        v21 = v26 >> v19;
        v20 = v27 - v19;
        v18 -= v19;
        v30 = v26 & v22;
        if (v30 == 256)
        {
          break;
        }

        if (v30 == 257)
        {
          goto LABEL_54;
        }

        v31 = *(v8 + 232);
        if (v24 < v31 || v24 >= v31 + 81904 || (*v24 = v23, v23 < v31) || v23 >= v31 + 81904)
        {
          TIFFErrorExtR(a1, "LZWDecodeCompat", "Corrupted LZW table at scanline %u", a4, a5, a6, a7, a8, *(a1 + 876));
          return 0;
        }

        v32 = v31 + 16 * v29;
        v24[10] = *(v23 + 10);
        *(v24 + 4) = *(v23 + 8) + 1;
        if (v32 >= v24)
        {
          v33 = v24;
        }

        else
        {
          v33 = (v31 + 16 * v29);
        }

        v24[11] = v33[10];
        v24 += 16;
        if (v24 > v25)
        {
          if (v19 >= 11)
          {
            v34 = 11;
          }

          else
          {
            v34 = v19;
          }

          LODWORD(v19) = v34 + 1;
          v22 = ~(-1 << (v34 + 1));
          v25 = v31 + 16 * v22;
        }

        if ((v29 & 0xFF00) != 0)
        {
          v35 = *(v32 + 8);
          if (!*(v32 + 8))
          {
            TIFFErrorExtR(a1, "LZWDecodeCompat", "Wrong length of decoded string: data probably corrupted at scanline %u", a4, a5, a6, a7, a8, *(a1 + 876));
            return 0;
          }

          v36 = v9 - v35;
          if (v9 < v35)
          {
            *(v8 + 200) = v32;
            v49 = v32;
            do
            {
              v49 = *v49;
            }

            while (*(v49 + 8) > v9);
            *(v8 + 168) = v9;
            do
            {
              v10[v9 - 1] = *(v49 + 11);
              v49 = *v49;
              --v9;
            }

            while (v9);
            goto LABEL_56;
          }

          v37 = &v10[v35];
          v38 = v37 - 1;
          v39 = v32;
          v40 = v37 - 1;
          do
          {
            *v40-- = *(v39 + 11);
            v39 = *v39;
            if (v39)
            {
              v41 = v38 > v10;
            }

            else
            {
              v41 = 0;
            }

            v38 = v40;
          }

          while (v41);
          v9 = v36;
        }

        else
        {
          *v10 = v29;
          --v9;
          v37 = v10 + 1;
        }

LABEL_51:
        v23 = v32;
        v10 = v37;
        if (v9 <= 0)
        {
          goto LABEL_56;
        }
      }

      do
      {
        v24 = (*(v8 + 232) + 4128);
        _TIFFmemset(v24, 0, 0x12FD0uLL);
        if (v18 <= 8)
        {
          v19 = *(v8 + 232) + 8176;
          TIFFWarningExtR(v51, "LZWDecodeCompat", "LZWDecode: Strip %u not terminated with EOI code", a4, a5, a6, a7, a8, *(v51 + 884));
          v25 = v19;
          a1 = v51;
          LOWORD(v19) = 9;
          v22 = 511;
          goto LABEL_54;
        }

        v42 = (*v17 << v20) | v21;
        v43 = v20 + 8;
        if (v20 <= 0)
        {
          v44 = v17[1];
          v17 += 2;
          v42 |= v44 << v43;
          v43 = v20 + 16;
        }

        else
        {
          ++v17;
        }

        v45 = v42 & 0x1FF;
        v21 = v42 >> 9;
        v20 = v43 - 9;
        v18 -= 9;
      }

      while (v45 == 256);
      if (v45 == 257)
      {
        v25 = *(v8 + 232) + 8176;
        LOWORD(v19) = 9;
        v22 = 511;
        v32 = v23;
        a1 = v51;
        goto LABEL_56;
      }

      a1 = v51;
      if (v45 < 0x101)
      {
        v25 = *(v8 + 232) + 8176;
        *v10 = v42;
        --v9;
        v32 = *(v8 + 232) + 16 * (v42 & 0x1FF);
        LODWORD(v19) = 9;
        v37 = v10 + 1;
        v22 = 511;
        goto LABEL_51;
      }

      TIFFErrorExtR(v51, *v51, "LZWDecode: Corrupted LZW table at scanline %u", a4, a5, a6, a7, a8, *(v51 + 876));
      return 0;
    }

LABEL_54:
    v32 = v23;
LABEL_56:
    v46 = *(a1 + 1152) - v17 + *(a1 + 1160);
    *(a1 + 1160) = v46;
    *(a1 + 1152) = v17;
    *(v8 + 176) = v18;
    *(v8 + 184) = v46;
    *(v8 + 128) = v19;
    *(v8 + 136) = v21;
    *(v8 + 144) = v20;
    *(v8 + 160) = v22;
    *(v8 + 208) = v32;
    *(v8 + 216) = v24;
    *(v8 + 224) = v25;
    if (v9 >= 1)
    {
      TIFFErrorExtR(a1, "LZWDecodeCompat", "Not enough data at scanline %u (short %llu bytes)", a4, a5, a6, a7, a8, *(a1 + 876));
      return 0;
    }
  }

  return 1;
}

void PSDWritePlugin::~PSDWritePlugin(PSDWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t PSDWritePlugin::PackBits(PSDWritePlugin *this, const unsigned __int8 *a2, int a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6, int a7)
{
  LOWORD(v7) = a5;
  if (a4 >= 1)
  {
    v8 = a7 << 31 >> 31;
    v9 = 2 * a3;
    v10 = a3;
    v7 = a5;
    do
    {
      v11 = 0;
      v12 = 1;
      v13 = 1;
      v14 = a2;
      while (1)
      {
        if (a4 + v11 >= 3)
        {
          v15 = *v14;
          if (v14[v10] == v15 && v14[v9] == v15)
          {
            break;
          }
        }

        v14 += v10;
        v13 = v12 < a4;
        --v11;
        ++v12;
        if (!(a4 + v11))
        {
          v16 = a4;
          goto LABEL_9;
        }
      }

      if (!v11)
      {
        goto LABEL_18;
      }

      v16 = -v11;
      do
      {
LABEL_9:
        if (v16 >= 0x7F)
        {
          v17 = 127;
        }

        else
        {
          v17 = v16;
        }

        a4 -= v17;
        if (v7 >= a6)
        {
          break;
        }

        *v7++ = v17 - 1;
        if (v7 < a6)
        {
          v18 = v17;
          do
          {
            *v7++ = *a2 ^ v8;
            a2 += v10;
            if (v18 < 2)
            {
              break;
            }

            --v18;
          }

          while (v7 < a6);
        }

        v16 -= v17;
      }

      while (v16 >= 1);
LABEL_18:
      if (v13)
      {
        v19 = *a2;
        a2 += v10;
        v20 = a4 - 2;
        if (a4 < 2)
        {
          v23 = 1;
        }

        else
        {
          if (v20 >= 0x7D)
          {
            v20 = 125;
          }

          v21 = v20 + 2;
          v22 = -v20;
          v23 = 1;
          while (*a2 == v19)
          {
            ++v23;
            a2 += v10;
            if (v22 + v23 == 2)
            {
              v23 = v21;
              break;
            }
          }
        }

        if (v7 >= a6)
        {
          return (v7 - a5);
        }

        *v7 = 1 - v23;
        if (v7 + 1 >= a6)
        {
          LOWORD(v7) = v7 + 1;
          return (v7 - a5);
        }

        v7[1] = v19 ^ v8;
        v7 += 2;
        a4 -= v23;
      }
    }

    while (a4 > 0);
  }

  return (v7 - a5);
}

uint64_t PSDWritePlugin::zipWithPrediction(unint64_t this, unsigned __int8 *a2, uint64_t a3, unsigned __int8 *a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  v8 = a6 - 1;
  v9 = 2 * a6 - 2;
  v10 = a2;
  v11 = a3;
  do
  {
    if (a7 == 16)
    {
      if (a6 != 1)
      {
        v12 = &v10[v9];
        v13 = a6 - 1;
        v14 = &v10[v9];
        do
        {
          this = *(v12 - 1);
          v15 = v12[1] - this;
          v12[1] = v15;
          v16 = *(v14 - 2);
          v14 -= 2;
          *v12 = *v12 - ((this + v15) >> 8) - v16;
          v12 = v14;
          --v13;
        }

        while (v13);
        v10 += v9;
      }

      v10 += 2;
      v17 = 2 * a6;
    }

    else
    {
      if (a6 != 1)
      {
        v18 = &v10[v8];
        v19 = 1 - a6;
        v20 = &v10[v8];
        do
        {
          v21 = *--v20;
          this = v21;
          *v18 -= v21;
          v18 = v20;
        }

        while (!__CFADD__(v19++, 1));
        v10 += v8;
      }

      ++v10;
      v17 = a6;
    }

    v11 -= v17;
  }

  while (v11 > 0);

  return PSDWritePlugin::zipWithoutPrediction(this, a2, a3, a4, a5);
}

uint64_t PSDWritePlugin::zipWithoutPrediction(PSDWritePlugin *this, unsigned __int8 *a2, uInt a3, unsigned __int8 *a4, unint64_t *a5)
{
  memset(&v10.avail_in, 0, 104);
  v6 = *a5;
  v10.next_in = a2;
  v10.avail_in = a3;
  v10.next_out = a4;
  v10.avail_out = v6;
  *a5 = 0;
  if (deflateInit_(&v10, -1, "1.2.12", 112))
  {
    return 0;
  }

  do
  {
    v9 = deflate(&v10, 1);
    if (v9 == 1)
    {
      deflateEnd(&v10);
      goto LABEL_8;
    }

    v8 = v9;
  }

  while (!v9 && v10.avail_in);
  deflateEnd(&v10);
  if (v8)
  {
    return 0;
  }

LABEL_8:
  *a5 = v6 - v10.avail_out;
  return 1;
}

uint64_t PSDWritePlugin::writeOne(IIOImageWriteSession **this, IIOImagePixelDataProvider *a2, IIODictionary *a3, IIODictionary *a4)
{
  v5 = a2;
  v171 = *MEMORY[0x1E69E9840];
  v165 = 0;
  memset(v170, 0, sizeof(v170));
  v161 = 0;
  v162 = 0;
  v160 = 0;
  __ptr = 0;
  v156 = 0uLL;
  v157 = 0;
  v158 = 0;
  v159 = 1296646712;
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(a2);
  size = IIOImagePixelDataProvider::getBytesPerRow(v5);
  v148 = IIOImageSource::count(v5);
  v149 = IIO_Reader::testHeaderSize(v5);
  Error = _cg_GifLastError(v5);
  appleflags = _cg_png_get_appleflags(v5);
  SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(v5);
  Type = CGColorSpaceGetType();
  Model = CGColorSpaceGetModel(SourceGeomColorSpace);
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(SourceGeomColorSpace);
  hasAlpha = IIOImagePixelDataProvider::hasAlpha(v5);
  Ref = IIOImageSource::imageReadRef(v5);
  RenderingIntent = CGImageGetRenderingIntent(Ref);
  v14 = CGColorSpaceCopyData(SourceGeomColorSpace, RenderingIntent);
  v130 = v14;
  if (v14)
  {
    v15 = v14;
    BytePtr = CFDataGetBytePtr(v14);
    Length = CFDataGetLength(v15);
  }

  else
  {
    BytePtr = 0;
    Length = 0;
  }

  v164 = 0;
  v163 = 0;
  ObjectForKey = IIODictionary::getObjectForKey(a4, @"{IPTC}");
  v137 = v5;
  v150 = AlphaInfo;
  if (ObjectForKey)
  {
    valuePtr = 0;
    v167 = 0;
    v168 = 0;
    IIODictionary::IIODictionary(&valuePtr, ObjectForKey);
    v17 = SizeOfIPTCData(&valuePtr);
    v18 = v17;
    if (v17)
    {
      v19 = malloc_type_malloc(v17, 0x100004077774924uLL);
      if (!v19)
      {
        _cg_jpeg_mem_term("writeOne", 1413, "*** ERRROR: could not allocate iptcData - size=%d\n", v18);
        IIODictionary::~IIODictionary(&valuePtr);
        v35 = 0;
        v38 = 0;
        v37 = 0;
        table = 0;
        v121 = 4294967246;
        goto LABEL_226;
      }

      WriteIPTCData(&valuePtr, v19);
    }

    else
    {
      v19 = 0;
    }

    IIODictionary::~IIODictionary(&valuePtr);
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  __nitems = v18;
  v132 = v19;
  if (v5)
  {
    v5 = IIOImageSource::count(v5);
    v20 = IIO_Reader::testHeaderSize(v137);
    v21 = IIOImagePlus::getSourceGeomColorSpace(v137);
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v131 = CreateExifBufferFromPropertiesJPEG(a3, v5, v20, v21, 0, @"com.adobe.photoshop-image", &v164);
  if (v164 <= 6)
  {
    v22 = 0;
  }

  else
  {
    v22 = (v164 - 6);
  }

  if (IIODictionary::getBoolForKey(a4, @"kCGImageMetadataShouldExcludeXMP"))
  {
    goto LABEL_25;
  }

  v23 = IIODictionary::getObjectForKey(a4, @"{MetaData}");
  v24 = v23;
  if (v23)
  {
    v25 = CFGetTypeID(v23);
    if (v25 == CGImageMetadataGetTypeID())
    {
      XMPData = CGImageMetadataCreateXMPData(v24, 0);
      goto LABEL_23;
    }
  }

  v27 = CGImageMetadataCreateFromLegacyProps(a4);
  v28 = v27;
  if (!v27)
  {
LABEL_25:
    v29 = 0;
    goto LABEL_26;
  }

  XMPData = CGImageMetadataCreateXMPData(v27, 0);
  CFRelease(v28);
LABEL_23:
  v29 = XMPData;
  if (XMPData)
  {
    v140 = CFDataGetBytePtr(XMPData);
    v30 = CFDataGetLength(XMPData);
    v29 = XMPData;
    goto LABEL_27;
  }

LABEL_26:
  v140 = 0;
  v30 = 0;
LABEL_27:
  if (Type == 7)
  {
    v31 = v29;
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(SourceGeomColorSpace);
    Model = CGColorSpaceGetModel(BaseColorSpace);
    if (Model == kCGColorSpaceModelRGB)
    {
      v145 = 0;
      v33 = 2;
      v29 = v31;
      v34 = v150;
      goto LABEL_40;
    }

    v29 = v31;
  }

  v34 = v150;
  if (Model)
  {
    v33 = 3;
  }

  else
  {
    v33 = 1;
  }

  if (Model < kCGColorSpaceModelCMYK)
  {
    v145 = 0;
  }

  else if (Model == kCGColorSpaceModelCMYK)
  {
    v145 = 1;
    v33 = 4;
  }

  else
  {
    if (Model != kCGColorSpaceModelLab)
    {
      goto LABEL_63;
    }

    v145 = 0;
    v33 = 9;
  }

LABEL_40:
  if (Error == 16 || Error == 8)
  {
    v35 = 0;
    v36 = 4294967246;
    table = 0;
    v37 = 0;
    v38 = 0;
    if (!size || !SourceGeomColorSpace)
    {
      goto LABEL_220;
    }

    cf = v29;
    v39 = NumberOfComponents + hasAlpha;
    v40 = v39 != 4 || v34 == 0;
    v41 = v40;
    v134 = v41;
    v43 = v34 == 4 || v34 == 2;
    v126 = v43;
    LODWORD(__ptr) = 1397768760;
    WORD2(__ptr) = 256;
    WORD2(v156) = bswap32(v39) >> 16;
    *(&v156 + 6) = bswap32(v149);
    *(&v156 + 10) = bswap32(v148);
    v133 = Error;
    HIWORD(v156) = bswap32(Error) >> 16;
    v157 = v33 << 8;
    if (IIOImageWriteSession::putBytes(this[2], &__ptr, 0x1AuLL) != 26)
    {
      table = 0;
      goto LABEL_62;
    }

    if (Type == 7)
    {
      bzero(&valuePtr, 0x304uLL);
      BYTE2(valuePtr) = 3;
      v44 = CGColorSpaceGetBaseColorSpace(SourceGeomColorSpace);
      v45 = CGColorSpaceGetNumberOfComponents(v44);
      ColorTableCount = CGColorSpaceGetColorTableCount(SourceGeomColorSpace);
      table = malloc_type_malloc(ColorTableCount * v45, 0x100004077774924uLL);
      CGColorSpaceGetColorTable(SourceGeomColorSpace, table);
      if (ColorTableCount)
      {
        v47 = (table + 2);
        v48 = &v169;
        do
        {
          *(v48 - 256) = *(v47 - 2);
          *v48 = *(v47 - 1);
          v49 = *v47;
          v47 += 3;
          *(v48 + 256) = v49;
          v48 = (v48 + 1);
          --ColorTableCount;
        }

        while (ColorTableCount);
      }

      if (IIOImageWriteSession::putBytes(this[2], &valuePtr, 0x304uLL) != 772)
      {
        goto LABEL_62;
      }
    }

    else
    {
      LODWORD(valuePtr) = 0;
      v35 = 0;
      table = 0;
      if (IIOImageWriteSession::putBytes(this[2], &valuePtr, 4uLL) != 4)
      {
        v36 = 4294967246;
        v37 = 0;
        v38 = 0;
        goto LABEL_130;
      }
    }

    if (v134)
    {
      v50 = 28;
    }

    else
    {
      v50 = 54;
    }

    v51 = v158 + v50;
    v52 = BytePtr != 0;
    v53 = Length != 0;
    v54 = v52 && v53;
    v40 = !v52 || !v53;
    v55 = Length + (Length & 1) + 12;
    if (v40)
    {
      v55 = 0;
    }

    v56 = v132 != 0;
    v57 = __nitems != 0;
    v58 = v57 && v56;
    v40 = !v57 || !v56;
    v59 = __nitems + (__nitems & 1) + 12;
    if (v40)
    {
      v59 = 0;
    }

    v60 = v51 + v55 + v59;
    v61 = v22 + (v22 & 1) + 12;
    if (v131 == 0 || v22 == 0)
    {
      v61 = 0;
    }

    v62 = v60 + v61;
    if (v140)
    {
      v63 = v30 == 0;
    }

    else
    {
      v63 = 1;
    }

    v64 = !v63;
    v123 = v64;
    if (!v63)
    {
      if (v58)
      {
        v65 = 40;
      }

      else
      {
        v65 = 12;
      }

      v62 += v30 + (v30 & 1) + v65;
    }

    v158 = bswap32(v62);
    if (IIOImageWriteSession::putBytes(this[2], &v158, 4uLL) == 4 && ((v134 & 1) != 0 || IIOImageWriteSession::putBytes(this[2], &gAlphaNames, 0x1AuLL) == 26))
    {
      LOWORD(v160) = -4861;
      HIDWORD(v160) = 0x10000000;
      if (IIOImageWriteSession::putBytes(this[2], &v159, 0xCuLL) == 12)
      {
        if (IIODictionary::containsKey(a3, @"DPIWidth") && IIODictionary::containsKey(a3, @"DPIHeight"))
        {
          FloatForKey = IIODictionary::getFloatForKey(a3, @"DPIWidth");
          v67 = IIODictionary::getFloatForKey(a3, @"DPIHeight");
          v68 = ((FloatForKey * 65536.0) + 0.5);
          v69 = ((v67 * 65536.0) + 0.5);
        }

        else
        {
          v68 = 4718592;
          v69 = 4718592;
        }

        v161 = bswap32(v68) | 0x100010000000000;
        v162 = bswap32(v69) | 0x100010000000000;
        if (IIOImageWriteSession::putBytes(this[2], &v161, 0x10uLL) == 16)
        {
          if (!v54 || (LOWORD(v160) = 3844, HIDWORD(v160) = bswap32(Length), IIOImageWriteSession::putBytes(this[2], &v159, 0xCuLL) == 12) && IIOImageWriteSession::putBytes(this[2], BytePtr, Length) == Length && ((Length & 1) == 0 || IIOImageWriteSession::putBytes(this[2], &v165, 1uLL) == 1))
          {
            if (!v58 || (LOWORD(v160) = 1028, HIDWORD(v160) = bswap32(__nitems), IIOImageWriteSession::putBytes(this[2], &v159, 0xCuLL) == 12) && IIOImageWriteSession::putBytes(this[2], v132, __nitems) == __nitems && ((__nitems & 1) == 0 || IIOImageWriteSession::putBytes(this[2], &v165, 1uLL) == 1))
            {
              if (v131 == 0 || v22 == 0 || (LOWORD(v160) = 8708, HIDWORD(v160) = bswap32(v22), IIOImageWriteSession::putBytes(this[2], &v159, 0xCuLL) == 12) && IIOImageWriteSession::putBytes(this[2], v131 + 6, v22) == v22 && ((v22 & 1) == 0 || IIOImageWriteSession::putBytes(this[2], &v165, 1uLL) == 1))
              {
                if (v123)
                {
                  LOWORD(v160) = 9220;
                  HIDWORD(v160) = bswap32(v30);
                  if (IIOImageWriteSession::putBytes(this[2], &v159, 0xCuLL) != 12 || IIOImageWriteSession::putBytes(this[2], v140, v30) != v30 || (v30 & 1) != 0 && IIOImageWriteSession::putBytes(this[2], &v165, 1uLL) != 1)
                  {
                    goto LABEL_62;
                  }

                  if (v58)
                  {
                    IIMHashArrayForIIMBlock = CreateIIMHashArrayForIIMBlock(v132, __nitems);
                    LOWORD(v160) = 9476;
                    HIDWORD(v160) = 0x10000000;
                    if (IIOImageWriteSession::putBytes(this[2], &v159, 0xCuLL) != 12)
                    {
                      goto LABEL_62;
                    }

                    for (i = 0; i != 16; ++i)
                    {
                      LOBYTE(valuePtr) = 0;
                      if (IIMHashArrayForIIMBlock)
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(IIMHashArrayForIIMBlock, i);
                        CFNumberGetValue(ValueAtIndex, kCFNumberCharType, &valuePtr);
                      }

                      if (IIOImageWriteSession::putBytes(this[2], &valuePtr, 1uLL) != 1)
                      {
                        goto LABEL_62;
                      }
                    }

                    if (IIMHashArrayForIIMBlock)
                    {
                      CFRelease(IIMHashArrayForIIMBlock);
                    }
                  }
                }

                __nitemsa = malloc_type_malloc(size, 0xD6EE35BCuLL);
                if (__nitemsa)
                {
                  v154 = (appleflags / Error);
                  if (v134)
                  {
                    LODWORD(v167) = 0;
                    valuePtr = 0x8000000;
                    v74 = IIOImageWriteSession::putBytes(this[2], &valuePtr, 0xCuLL);
                    v36 = 4294967246;
                    if (v74 == 12)
                    {
                      v75 = v148;
                      v76 = v149;
                      goto LABEL_135;
                    }
                  }

                  else
                  {
                    if (Error == 8)
                    {
                      v77 = PSDWritePlugin::writeLayerMaskBlock8bit(this, v137, v148, v149, size, v154, 4uLL, v126);
                    }

                    else
                    {
                      v77 = PSDWritePlugin::writeLayerMaskBlock16bit(this, v137, v148, v149, size, v73, 4uLL, v126);
                    }

                    v75 = v148;
                    v76 = v149;
                    v36 = v77;
                    if (!v77)
                    {
LABEL_135:
                      v163 = 0;
                      v78 = v76 * v75;
                      v124 = v36;
                      if (Error == 8)
                      {
                        v80 = (2 * v39 * v76);
                        v163 = 256;
                        v81 = ((v75 + 127) * 0x204081020408103uLL) >> 64;
                        v79 = (v75 + ((v81 + ((v75 + 127 - v81) >> 1)) >> 6)) * v76;
                        if (v80)
                        {
                          v125 = 2 * v39 * v76;
                          v37 = malloc_type_malloc(v80, 0x1000040BDFB0063uLL);
                          if (!v37)
                          {
                            _cg_jpeg_mem_term("writeOne", 1737, "*** ERRROR: could not allocate rlebuf - size=%d\n", v125);
                            v37 = 0;
                            goto LABEL_240;
                          }
                        }

                        else
                        {
                          v125 = 0;
                          v37 = 0;
                        }
                      }

                      else
                      {
                        v125 = 0;
                        v37 = 0;
                        v79 = (v78 * Error) >> 3;
                      }

                      if (is_mul_ok(v39, v79))
                      {
                        v142 = v39 * v79;
                        v144 = v37;
                        v38 = malloc_type_malloc(v39 * v79, 0x100004077774924uLL);
                        if (v38)
                        {
                          if (Error == 16 && v39)
                          {
                            v82 = v170;
                            v83 = 1;
                            do
                            {
                              *v82++ = v79;
                              v84 = v39 > v83++;
                            }

                            while (v84);
                          }

                          IIOImagePixelDataProvider::rewind(v137);
                          if (v149)
                          {
                            v85 = 0;
                            v86 = 0;
                            v87 = v39 - 1;
                            if (v144)
                            {
                              v88 = v39 == 0;
                            }

                            else
                            {
                              v88 = 1;
                            }

                            v90 = v88 || Error != 8;
                            v127 = v90;
                            v91 = 2 * v78;
                            v147 = v79;
                            while (1)
                            {
                              Bytes = IIOImagePixelDataProvider::getBytes(v137, __nitemsa);
                              if (Bytes != size)
                              {
                                goto LABEL_209;
                              }

                              v135 = v86;
                              if (v133 != 16)
                              {
                                break;
                              }

                              v93 = &v38[2 * v148 * v86];
                              v94 = v149;
                              if (v150 <= 2)
                              {
                                v95 = __nitemsa;
                                switch(v150)
                                {
                                  case 0:
                                    goto LABEL_195;
                                  case 1:
LABEL_202:
                                    if (v148)
                                    {
                                      v114 = 0;
                                      do
                                      {
                                        v115 = 0;
                                        if (v39 != 1)
                                        {
                                          v116 = 1;
                                          v117 = v93;
                                          do
                                          {
                                            *v117 = v95[v115] ^ ((v145 << 15) >> 15);
                                            v115 = v116;
                                            v117 += v91;
                                            v84 = v87 > v116++;
                                          }

                                          while (v84);
                                        }

                                        *&v38[2 * (v85 + v115 * v149) * v148 + 2 * v114] = v95[v115];
                                        v114 = (v114 + 1);
                                        v95 += v154;
                                        v93 += 2;
                                      }

                                      while (v148 > v114);
                                    }

                                    break;
                                  case 2:
                                    goto LABEL_177;
                                }
                              }

                              else
                              {
                                if (v150 <= 4)
                                {
                                  v95 = __nitemsa;
                                  if (v150 == 3)
                                  {
                                    goto LABEL_202;
                                  }

LABEL_177:
                                  if (v148)
                                  {
                                    v102 = 0;
                                    do
                                    {
                                      if (v39 == 1)
                                      {
                                        v106 = 0;
                                      }

                                      else
                                      {
                                        v103 = 1;
                                        v104 = v93;
                                        do
                                        {
                                          v105 = v103;
                                          *v104 = v95[v103] ^ ((v145 << 15) >> 15);
                                          v104 += v91;
                                          ++v103;
                                        }

                                        while (v87 > v105);
                                        v106 = v105;
                                      }

                                      *&v38[2 * (v85 + v106 * v149) * v148 + 2 * v102] = *v95;
                                      v102 = (v102 + 1);
                                      v95 += v154;
                                      v93 += 2;
                                    }

                                    while (v148 > v102);
                                  }

                                  goto LABEL_208;
                                }

                                v95 = __nitemsa;
                                if (v150 == 5)
                                {
LABEL_195:
                                  if (v148)
                                  {
                                    LODWORD(v110) = 0;
                                    do
                                    {
                                      if (v39)
                                      {
                                        v111 = 0;
                                        v112 = 1;
                                        v113 = v93;
                                        do
                                        {
                                          *v113 = v95[v111] ^ ((v145 << 15) >> 15);
                                          v111 = v112;
                                          v113 += v91;
                                          v84 = v39 > v112++;
                                        }

                                        while (v84);
                                      }

                                      v110 = (v110 + 1);
                                      v95 += v154;
                                      v93 += 2;
                                    }

                                    while (v148 > v110);
                                  }

                                  goto LABEL_208;
                                }

                                if (v150 == 6 && v148)
                                {
                                  LODWORD(v107) = 0;
                                  do
                                  {
                                    if (v39)
                                    {
                                      v108 = 1;
                                      v109 = v93;
                                      do
                                      {
                                        *v109 = v95[v108] ^ ((v145 << 15) >> 15);
                                        v109 += v91;
                                        v84 = v39 > v108++;
                                      }

                                      while (v84);
                                    }

                                    v107 = (v107 + 1);
                                    v95 += v154;
                                    v93 += 2;
                                  }

                                  while (v148 > v107);
                                }
                              }

LABEL_208:
                              v85 = v135 + 1;
                              v86 = v135 + 1;
                              v79 = v147;
                              if (v94 <= v85)
                              {
                                goto LABEL_209;
                              }
                            }

                            v96 = v150;
                            v94 = v149;
                            v97 = __nitemsa;
                            if (v127)
                            {
                              goto LABEL_208;
                            }

                            v98 = 0;
                            v99 = 1;
                            while (1)
                            {
                              if (v96 == 2)
                              {
                                goto LABEL_170;
                              }

                              v100 = &v97[v98];
                              if (v96 == 6)
                              {
                                ++v100;
                                goto LABEL_172;
                              }

                              if (v96 == 4)
                              {
LABEL_170:
                                v100 = &v97[v99 % v154];
                              }

LABEL_172:
                              v101 = *(v170 + v98);
                              Bytes = PSDWritePlugin::PackBits(Bytes, v100, v154, v148, &v38[v98 * v147 + v101], &v38[v142], v145);
                              v97 = __nitemsa;
                              v96 = v150;
                              v94 = v149;
                              v144[v85 + v98 * v149] = __rev16(Bytes);
                              *(v170 + v98) = v101 + Bytes;
                              v98 = v99;
                              v84 = v39 > v99++;
                              if (!v84)
                              {
                                goto LABEL_208;
                              }
                            }
                          }

LABEL_209:
                          if (IIOImageWriteSession::putBytes(this[2], &v163, 2uLL) == 2)
                          {
                            v37 = v144;
                            if (!v144 || (v37 = v144, IIOImageWriteSession::putBytes(this[2], v144, v125) == v125))
                            {
                              if (v39)
                              {
                                v118 = 0;
                                v119 = 1;
                                while (1)
                                {
                                  v120 = *(v170 + v118);
                                  if (IIOImageWriteSession::putBytes(this[2], &v38[v118 * v79], v120) != v120)
                                  {
                                    goto LABEL_243;
                                  }

                                  v118 = v119;
                                  v84 = v39 > v119++;
                                  if (!v84)
                                  {
                                    v36 = 0;
                                    v29 = cf;
                                    v35 = __nitemsa;
                                    goto LABEL_217;
                                  }
                                }
                              }

                              v36 = 0;
LABEL_219:
                              v29 = cf;
                              v35 = __nitemsa;
                              goto LABEL_220;
                            }

LABEL_241:
                            v29 = cf;
                            v35 = __nitemsa;
                            v36 = v124;
                            goto LABEL_220;
                          }
                        }

                        else
                        {
                          PSDWritePlugin::writeOne();
                          v38 = 0;
                        }

LABEL_243:
                        v29 = cf;
                        v35 = __nitemsa;
                        v36 = v124;
LABEL_217:
                        v37 = v144;
                        goto LABEL_220;
                      }

LABEL_240:
                      v38 = 0;
                      goto LABEL_241;
                    }
                  }

                  v37 = 0;
                  v38 = 0;
                  goto LABEL_219;
                }

                _cg_jpeg_mem_term("writeOne", 1694, "*** ERRROR: could not allocate rowbuf - size=%d\n", size);
              }
            }
          }
        }
      }
    }

LABEL_62:
    v37 = 0;
    v38 = 0;
    v35 = 0;
    v36 = 4294967246;
LABEL_130:
    v29 = cf;
    goto LABEL_220;
  }

LABEL_63:
  table = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 4294967246;
LABEL_220:
  v121 = v36;
  if (v29)
  {
    CFRelease(v29);
  }

  if (v131)
  {
    free(v131);
  }

  if (v132)
  {
    free(v132);
  }

LABEL_226:
  if (v130)
  {
    CFRelease(v130);
  }

  if (v38)
  {
    free(v38);
  }

  if (v35)
  {
    free(v35);
  }

  if (v37)
  {
    free(v37);
  }

  if (table)
  {
    free(table);
  }

  return v121;
}

BOOL PSDWritePlugin::WriteProc(PSDWritePlugin *this, IIOImageDestination *a2, void *a3, void *a4, void *a5)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "PSDWritePlugin::WriteProc", 0, 0, -1, 0);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  IIOWritePlugin::IIOWritePlugin(v11, this, a2, 1347634208);
  *&v11[0] = &unk_1EF4DD8B8;
  v7 = IIOWritePlugin::writeAll(v11) != 0;
  _cg_jpeg_mem_term(v11, v8, v9);
  return v7;
}

void sub_1860C2A4C(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _cg_jpeg_mem_term(&a9, a2, a3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1860C2A34);
}

uint64_t _cg_RadReadRGBSize(FILE *a1, _DWORD *a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *a3 = 0;
  if (!a1)
  {
    return 4294967246;
  }

  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v8 = 0;
  if (RGBE_ReadHeader(a1, &v8 + 4, &v8, v9))
  {
    return 4294967246;
  }

  v5 = v8;
  if ((HIDWORD(v8) - 1) >> 14 || (v8 - 1) >> 14 != 0)
  {
    return 4294967246;
  }

  result = 0;
  *a2 = HIDWORD(v8);
  *a3 = v5;
  return result;
}

uint64_t ReadFloatPixels(FILE *__stream, uint64_t a2, int a3, int a4)
{
  result = 0xFFFFFFFFLL;
  if (__stream)
  {
    v6 = a2;
    if (a2)
    {
      v7 = a4;
      if (a4)
      {
        while (1)
        {
          v12 = 0;
          v11 = 0;
          if (a3)
          {
            break;
          }

          v10 = v6;
LABEL_10:
          result = 0;
          v6 = v10;
          if (!--v7)
          {
            return result;
          }
        }

        v9 = a3;
        while (fread(&v11, 0xCuLL, 1uLL, __stream))
        {
          *v6 = v11;
          v10 = v6 + 12;
          *(v6 + 8) = v12;
          v6 += 12;
          if (!--v9)
          {
            goto LABEL_10;
          }
        }

        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _cg_RadReadRGB_fp16(FILE *a1, void *a2, unsigned int a3)
{
  v3 = 0;
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  memset(v19, 0, sizeof(v19));
  v20 = 0;
  v4 = 4294967246;
  if (a1 && a2)
  {
    if (RGBE_ReadHeader(a1, &v18 + 4, &v18, v19))
    {
LABEL_4:
      v3 = 0;
      goto LABEL_5;
    }

    v3 = 0;
    if (HIDWORD(v18) <= 0x4000 && v18 <= 0x4000)
    {
      v3 = 0;
      if (HIDWORD(v18))
      {
        if (v18)
        {
          v9 = 6 * HIDWORD(v18) * v18;
          if (v9 > a3 || v9 < HIDWORD(v18) || v9 < v18)
          {
            goto LABEL_4;
          }

          v3 = malloc_type_malloc(4 * (4 * HIDWORD(v18) * v18), 0x100004052888210uLL);
          if (!v3)
          {
            goto LABEL_5;
          }

          if ((v19[0] & 8) != 0)
          {
            if (RGBE_ReadPixels_RLE(a1, v3, HIDWORD(v18), v18))
            {
              goto LABEL_5;
            }

LABEL_24:
            memset(&srcFormat.colorSpace, 0, 32);
            *&srcFormat.bitsPerComponent = 0x8000000020;
            srcFormat.bitmapInfo = 8453;
            memset(&destFormat.colorSpace, 0, 32);
            *&destFormat.bitsPerComponent = 0x4000000010;
            destFormat.bitmapInfo = 4357;
            error = 0;
            v12 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
            srcs.data = v3;
            srcs.height = v18;
            srcs.width = SHIDWORD(v18);
            srcs.rowBytes = 16 * SHIDWORD(v18);
            dests.data = a2;
            dests.height = v18;
            dests.width = SHIDWORD(v18);
            dests.rowBytes = 8 * SHIDWORD(v18);
            error = vImageConvert_AnyToAny(v12, &srcs, &dests, 0, 0x10u);
            vImageConverter_Release(v12);
            v4 = 0;
            goto LABEL_5;
          }

          if ((v19[0] & 0x10) != 0 && !ReadFloatPixels(a1, v3, SHIDWORD(v18), v18))
          {
            goto LABEL_24;
          }
        }
      }
    }
  }

LABEL_5:
  free(v3);
  return v4;
}

float *TIFFCIELab16ToXYZ(float *result, unsigned int a2, unsigned int a3, int a4, float *a5, float *a6, float *a7)
{
  v7 = (a2 * 100.0) / 65535.0;
  if (v7 >= 8.856)
  {
    v9 = (v7 + 16.0) / 116.0;
    *a6 = v9 * (v9 * (v9 * result[5]));
  }

  else
  {
    v8 = (v7 * result[5]) / 903.29;
    *a6 = v8;
    v9 = ((v8 / result[5]) * 7.787) + 0.13793;
  }

  v10 = (vcvts_n_f32_s32(a3, 8uLL) / 500.0) + v9;
  v11 = result[4];
  if (v10 >= 0.2069)
  {
    v12 = v10 * (v10 * (v10 * v11));
  }

  else
  {
    v12 = ((v10 + -0.13793) * v11) / 7.787;
  }

  *a5 = v12;
  v13 = v9 + ((a4 * -0.0039062) / 200.0);
  v14 = result[6];
  if (v13 >= 0.2069)
  {
    v15 = v13 * (v13 * (v13 * v14));
  }

  else
  {
    v15 = ((v13 + -0.13793) * v14) / 7.787;
  }

  *a7 = v15;
  return result;
}

float *TIFFXYZToRGB(float *result, int *a2, int *a3, int *a4, float a5, float a6, float a7)
{
  v7 = ((result[8] * a6) + (result[7] * a5)) + (result[9] * a7);
  v8 = ((result[11] * a6) + (result[10] * a5)) + (result[12] * a7);
  v9 = ((result[14] * a6) + (result[13] * a5)) + (result[15] * a7);
  v10 = result[22];
  v11 = result[23];
  if (v7 <= v10)
  {
    v7 = result[22];
  }

  if (v8 <= v11)
  {
    v8 = result[23];
  }

  v12 = result[24];
  if (v9 <= v12)
  {
    v9 = result[24];
  }

  if (v7 >= result[16])
  {
    v7 = result[16];
  }

  if (v8 >= result[17])
  {
    v8 = result[17];
  }

  if (v9 >= result[18])
  {
    v9 = result[18];
  }

  v13 = result[2];
  v14 = ((v7 - v10) / result[1]);
  if (*result < v14)
  {
    v14 = *result;
  }

  v15 = result[v14 + 28];
  if (v15 <= 0.0)
  {
    v16 = -0.5;
  }

  else
  {
    v16 = 0.5;
  }

  *a2 = (v16 + v15);
  v17 = ((v8 - v11) / v13);
  if (*result < v17)
  {
    v17 = *result;
  }

  v18 = result[v17 + 1529];
  v19 = v18;
  if (v18 <= 0.0)
  {
    v20 = -0.5;
  }

  else
  {
    v20 = 0.5;
  }

  *a3 = (v20 + v19);
  v21 = ((v9 - v12) / result[3]);
  if (*result < v21)
  {
    v21 = *result;
  }

  v22 = result[v21 + 3030];
  v23 = v22;
  if (v22 <= 0.0)
  {
    v24 = -0.5;
  }

  else
  {
    v24 = 0.5;
  }

  *a4 = (v24 + v23);
  v25 = *a2;
  if (*a2 >= *(result + 19))
  {
    v25 = *(result + 19);
  }

  *a2 = v25;
  v26 = *a3;
  if (*a3 >= *(result + 20))
  {
    v26 = *(result + 20);
  }

  *a3 = v26;
  v27 = *a4;
  if (*a4 >= *(result + 21))
  {
    v27 = *(result + 21);
  }

  *a4 = v27;
  return result;
}

uint64_t TIFFCIELabToRGBInit(float *a1, const void *a2, int *a3)
{
  *a1 = 1500;
  _TIFFmemcpy(a1 + 7, a2, 0x54uLL);
  v5 = 0;
  v6 = 1.0 / a1[25];
  v7 = *a1;
  v8 = v7;
  a1[1] = (a1[16] - a1[22]) / v7;
  v9 = v7;
  v10 = *(a1 + 19);
  if ((v7 + 1) > 1)
  {
    v11 = v7 + 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v61 = vdupq_n_s64(v11 - 1);
  v58 = xmmword_186205EB0;
  v13 = xmmword_186205EC0;
  v52 = vdupq_n_s64(4uLL);
  v14 = a1 + 31;
  do
  {
    v55 = v13;
    v15 = vcgeq_u64(v61, v13);
    v16 = vmovn_s64(v15);
    v17 = COERCE_DOUBLE(vuzp1_s16(v16, *v15.i8));
    if (LOBYTE(v17))
    {
      v17 = pow(v5 / v9, v6);
      *&v17 = v17;
      *&v17 = *&v17 * v10;
      *(v14 - 3) = *&v17;
    }

    if (vuzp1_s16(v16, *&v17).i8[2])
    {
      v18 = pow((v5 + 1) / v9, v6);
      *(v14 - 2) = v18 * v10;
    }

    v19 = vcgeq_u64(v61, v58);
    v20 = vmovn_s64(v19);
    v21 = COERCE_DOUBLE(vuzp1_s16(*v19.i8, v20));
    if (BYTE4(v21))
    {
      v21 = pow((v5 + 2) / v9, v6);
      *&v21 = v21;
      *&v21 = *&v21 * v10;
      *(v14 - 1) = *&v21;
    }

    if (vuzp1_s16(*&v21, v20).i8[6])
    {
      v22 = pow((v5 + 3) / v9, v6);
      *v14 = v22 * v10;
    }

    v5 += 4;
    v58 = vaddq_s64(v58, v52);
    v13 = vaddq_s64(v55, v52);
    v14 += 4;
  }

  while (v12 != v5);
  v23 = 0;
  v24 = 1.0 / a1[26];
  a1[2] = (a1[16] - a1[22]) / v8;
  v25 = *(a1 + 20);
  v53 = vdupq_n_s64(4uLL);
  v26 = a1 + 1532;
  v59 = xmmword_186205EB0;
  v27 = xmmword_186205EC0;
  do
  {
    v56 = v27;
    v28 = vcgeq_u64(v61, v27);
    v29 = vmovn_s64(v28);
    v30 = COERCE_DOUBLE(vuzp1_s16(v29, *v28.i8));
    if (LOBYTE(v30))
    {
      v30 = pow(v23 / v9, v24);
      *&v30 = v30;
      *&v30 = *&v30 * v25;
      *(v26 - 3) = *&v30;
    }

    if (vuzp1_s16(v29, *&v30).i8[2])
    {
      v31 = pow((v23 + 1) / v9, v24);
      *(v26 - 2) = v31 * v25;
    }

    v32 = vcgeq_u64(v61, v59);
    v33 = vmovn_s64(v32);
    v34 = COERCE_DOUBLE(vuzp1_s16(*v32.i8, v33));
    if (BYTE4(v34))
    {
      v34 = pow((v23 + 2) / v9, v24);
      *&v34 = v34;
      *&v34 = *&v34 * v25;
      *(v26 - 1) = *&v34;
    }

    if (vuzp1_s16(*&v34, v33).i8[6])
    {
      v35 = pow((v23 + 3) / v9, v24);
      *v26 = v35 * v25;
    }

    v23 += 4;
    v59 = vaddq_s64(v59, v53);
    v27 = vaddq_s64(v56, v53);
    v26 += 4;
  }

  while (v12 != v23);
  v36 = 0;
  v37 = 1.0 / a1[27];
  v38 = *(a1 + 21);
  a1[3] = (a1[16] - a1[22]) / v8;
  v39 = v38;
  v40 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v60 = xmmword_186205EB0;
  v41 = a1 + 3033;
  v42 = xmmword_186205EC0;
  v54 = vdupq_n_s64(4uLL);
  do
  {
    v57 = v42;
    v43 = vcgeq_u64(v61, v42);
    v44 = vmovn_s64(v43);
    v45 = COERCE_DOUBLE(vuzp1_s16(v44, *v43.i8));
    if (LOBYTE(v45))
    {
      v45 = pow(v36 / v9, v37);
      *&v45 = v45;
      *&v45 = *&v45 * v39;
      *(v41 - 3) = *&v45;
    }

    if (vuzp1_s16(v44, *&v45).i8[2])
    {
      v46 = pow((v36 + 1) / v9, v37);
      *(v41 - 2) = v46 * v39;
    }

    v47 = vcgeq_u64(v61, v60);
    v48 = vmovn_s64(v47);
    v49 = COERCE_DOUBLE(vuzp1_s16(*v47.i8, v48));
    if (BYTE4(v49))
    {
      v49 = pow((v36 + 2) / v9, v37);
      *&v49 = v49;
      *&v49 = *&v49 * v39;
      *(v41 - 1) = *&v49;
    }

    if (vuzp1_s16(*&v49, v48).i8[6])
    {
      v50 = pow((v36 + 3) / v9, v37);
      *v41 = v50 * v39;
    }

    v36 += 4;
    v60 = vaddq_s64(v60, v54);
    v42 = vaddq_s64(v57, v54);
    v41 += 4;
  }

  while (v40 != v36);
  *(a1 + 4) = *a3;
  *(a1 + 5) = a3[1];
  *(a1 + 6) = a3[2];
  return 0;
}

void *TIFFYCbCrtoRGB(void *result, unsigned int a2, int a3, int a4, int *a5, int *a6, int *a7)
{
  if (a2 >= 0xFF)
  {
    v7 = 255;
  }

  else
  {
    v7 = a2;
  }

  if (a3 >= 255)
  {
    v8 = 255;
  }

  else
  {
    v8 = a3;
  }

  if (a4 >= 255)
  {
    v9 = 255;
  }

  else
  {
    v9 = a4;
  }

  v10 = v9 & ~(v9 >> 31);
  v11 = result[5];
  v12 = result[2];
  v13 = *(result[1] + 4 * v10) + *(v11 + 4 * v7);
  v14 = v8 & ~(v8 >> 31);
  if (v13 >= 255)
  {
    v13 = 255;
  }

  *a5 = v13 & ~(v13 >> 31);
  v15 = *(v11 + 4 * v7) + ((*(result[3] + 4 * v10) + *(result[4] + 4 * v14)) >> 16);
  if (v15 >= 255)
  {
    v15 = 255;
  }

  *a6 = v15 & ~(v15 >> 31);
  v16 = *(v12 + 4 * v14) + *(v11 + 4 * v7);
  if (v16 >= 255)
  {
    v17 = 255;
  }

  else
  {
    v17 = v16;
  }

  *a7 = v17 & ~(v17 >> 31);
  return result;
}

uint64_t TIFFYCbCrToRGBInit(int32x4_t *a1, float *a2, float *a3)
{
  v5 = a1;
  _TIFFmemset(&a1[3], 0, 0x100uLL);
  v6 = 0;
  v5->i64[0] = v5[19].i64;
  v7 = xmmword_1862086F0;
  v8.i64[0] = 0x1010101010101010;
  v8.i64[1] = 0x1010101010101010;
  do
  {
    v5[v6 + 19] = v7;
    ++v6;
    v7 = vaddq_s8(v7, v8);
  }

  while (v6 != 16);
  _TIFFmemset(&v5[35], 255, 0x200uLL);
  v5->i64[1] = v5[67].i64;
  v5[1].i64[0] = v5[131].i64;
  v5[1].i64[1] = v5[195].i64;
  v5[2].i64[0] = v5[259].i64;
  *v10.i32 = a3[1] - *a3;
  v11.i32[0] = 1.0;
  if (*v10.i32 == 0.0)
  {
    *v10.i32 = 1.0;
  }

  v12 = a3[2];
  v13 = v12 + -128.0;
  if (((a3[3] + -128.0) - (v12 + -128.0)) == 0.0)
  {
    *v9.i32 = 1.0;
  }

  else
  {
    *v9.i32 = (a3[3] + -128.0) - (v12 + -128.0);
  }

  v14 = v13;
  v15 = a3[4] + -128.0;
  if (((a3[5] + -128.0) - v15) != 0.0)
  {
    *v11.i32 = (a3[5] + -128.0) - v15;
  }

  v16 = v15;
  v18 = a2[1];
  v17 = a2[2];
  v19 = 2.0;
  v20 = (v17 * -2.0) + 2.0;
  v21 = *a2;
  v22 = (v17 * v20) / v18;
  if (v22 <= 2.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 2.0;
  }

  v24 = v23 * 65536.0;
  v25 = v22 < 0.0;
  v26 = 0.0;
  if (v25)
  {
    v24 = 0.0;
  }

  v27 = (v24 + 0.5);
  if (v20 <= 2.0)
  {
    v28 = v20;
  }

  else
  {
    v28 = 2.0;
  }

  v29 = v28 * 65536.0;
  if (v20 < 0.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v29;
  }

  v31 = (v30 + 0.5);
  v32 = (v21 * -2.0) + 2.0;
  v33 = (v21 * v32) / v18;
  if (v33 <= 2.0)
  {
    v34 = (v21 * v32) / v18;
  }

  else
  {
    v34 = 2.0;
  }

  v35 = v34 * 65536.0;
  if (v33 < 0.0)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = v35;
  }

  v37 = (v36 + 0.5);
  if (v32 <= 2.0)
  {
    v19 = (v21 * -2.0) + 2.0;
  }

  v38 = v19 * 65536.0;
  if (v32 >= 0.0)
  {
    v26 = v38;
  }

  v39 = v26 + 0.5;
  v40 = vdupq_n_s32(v16);
  v41 = v39;
  v42 = vdupq_lane_s32(v11, 0);
  v43 = vdupq_n_s32(v14);
  v44 = vdupq_lane_s32(v9, 0);
  v45 = vdupq_n_s32(v41);
  v46 = vdupq_n_s32(v31);
  v47 = vdupq_n_s32(v37);
  v48 = vdupq_n_s32(v27);
  v49 = vdupq_n_s32(*a3);
  v5[2].i64[1] = v5[323].i64;
  v50 = vdupq_lane_s32(v10, 0);
  v51 = xmmword_186227460;
  v52 = 256;
  v53.i64[0] = 0x8000000080;
  v53.i64[1] = 0x8000000080;
  v54.i64[0] = 0x400000004;
  v54.i64[1] = 0x400000004;
  do
  {
    v55 = vdupq_n_s32(0x42FE0000u);
    v56 = vdivq_f32(vmulq_f32(vcvtq_f32_s32(vsubq_s32(v51, v40)), v55), v42);
    v57 = vdupq_n_s32(0xC5800000);
    v58 = vdupq_n_s32(0x45800000u);
    v59 = vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v57, v56), v57, vbslq_s8(vcgtq_f32(v56, v58), v58, v56)));
    v60 = vdivq_f32(vmulq_f32(vcvtq_f32_s32(vsubq_s32(v51, v43)), v55), v44);
    v61 = vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v57, v60), v57, vbslq_s8(vcgtq_f32(v60, v58), v58, v60)));
    v62.i64[0] = 0x800000008000;
    v62.i64[1] = 0x800000008000;
    v5[67] = vshrq_n_s32(vmlaq_s32(v62, v45, v59), 0x10uLL);
    v62.i64[0] = 0x800000008000;
    v62.i64[1] = 0x800000008000;
    v5[131] = vshrq_n_s32(vmlaq_s32(v62, v46, v61), 0x10uLL);
    v5[195] = vnegq_s32(vmulq_s32(v47, v59));
    v59.i64[0] = 0x800000008000;
    v59.i64[1] = 0x800000008000;
    v5[259] = vmlsq_s32(v59, v48, v61);
    v63 = vdivq_f32(vmulq_f32(vcvtq_f32_s32(vaddq_s32(vsubq_s32(v51, v49), v53)), vdupq_n_s32(0x437F0000u)), v50);
    v5[323] = vcvtq_s32_f32(vbslq_s8(vcgtq_f32(v57, v63), v57, vbslq_s8(vcgtq_f32(v63, v58), v58, v63)));
    v51 = vaddq_s32(v51, v54);
    ++v5;
    v52 -= 4;
  }

  while (v52);
  return 0;
}

const char *IIOCMErrorString(int a1)
{
  if (a1 > -15473)
  {
    if (a1 > -12849)
    {
      if (a1 > -6682)
      {
        if (a1 > -6663)
        {
          switch(a1)
          {
            case 1100:
              return "BOOTSTRAP_NOT_PRIVILEGED (media server is NOT running)";
            case -6661:
              return "kCVReturnInvalidArgument";
            case -6662:
              return "kCVReturnAllocationFailed";
          }
        }

        else
        {
          switch(a1)
          {
            case -6681:
              return "kCVReturnInvalidSize";
            case -6680:
              return "kCVReturnInvalidPixelFormat";
            case -6663:
              return "kCVReturnUnsupported";
          }
        }

        goto LABEL_105;
      }

      if (a1 <= -6685)
      {
        switch(a1)
        {
          case -12848:
            return "kFigFormatReaderError_ParsingFailure";
          case -12783:
            return "kCMBaseObjectError_ValueNotAvailable";
          case -12782:
            return "kCMBaseObjectError_UnsupportedOperation";
        }

        goto LABEL_105;
      }

      if (a1 == -6684)
      {
        return "kCVReturnPixelBufferNotMetalCompatible";
      }

      else if (a1 == -6683)
      {
        return "kCVReturnPixelBufferNotOpenGLCompatible";
      }

      else
      {
        return "kCVReturnInvalidPixelBufferAttributes";
      }
    }

    else if (a1 > -12910)
    {
      if (a1 > -12907)
      {
        switch(a1)
        {
          case -12906:
            return "kVTCouldNotFindVideoDecoderErr";
          case -12905:
            return "kVTPixelTransferNotSupportedErr";
          case -12902:
            return "kVTParameterErr";
        }

        goto LABEL_105;
      }

      if (a1 == -12909)
      {
        return "kVTVideoDecoderBadDataErr";
      }

      else if (a1 == -12908)
      {
        return "kVTCouldNotFindVideoEncoderErr";
      }

      else
      {
        return "kVTCouldNotCreateInstanceErr";
      }
    }

    else
    {
      if (a1 <= -12913)
      {
        switch(a1)
        {
          case -15472:
            return "kCMPhotoError_AsyncAuxiliaryEncodeFailed";
          case -15471:
            return "kCMPhotoError_PixelTransferNotAllowed";
          case -15470:
            return "kCMPhotoError_XPCError";
        }

        goto LABEL_105;
      }

      if (a1 == -12912)
      {
        return "kVTVideoEncoderMalfunctionErr";
      }

      else if (a1 == -12911)
      {
        return "kVTVideoDecoderMalfunctionErr";
      }

      else
      {
        return "kVTVideoDecoderUnsupportedDataFormatErr";
      }
    }
  }

  else if (a1 > -16999)
  {
    if (a1 > -16993)
    {
      if (a1 > -16358)
      {
        switch(a1)
        {
          case -16357:
            return "kMovieSampleDataWriterError_UnsupportedOperation";
          case -15474:
            return "kCMPhotoError_SubsamplingOrBitDepthNotSupported";
          case -15473:
            return "kCMPhotoError_SequenceFrameEncodeFailed";
        }
      }

      else
      {
        switch(a1)
        {
          case -16992:
            return "kCMPhotoError_InternalFailure";
          case -16991:
            return "kCMPhotoError_AllocationFailed";
          case -16990:
            return "kCMPhotoError_InvalidParameter";
        }
      }

      goto LABEL_105;
    }

    if (a1 > -16996)
    {
      if (a1 == -16995)
      {
        return "kCMPhotoError_UnsupportedPixelFormat";
      }

      else if (a1 == -16994)
      {
        return "kCMPhotoError_UnsupportedOperation";
      }

      else
      {
        return "kCMPhotoError_ValueNotAvailable";
      }
    }

    else if (a1 == -16998)
    {
      return "kCMPhotoError_UnsupportedCodec";
    }

    else if (a1 == -16997)
    {
      return "kCMPhotoError_UnsupportedSourceType";
    }

    else
    {
      return "kCMPhotoError_UnsupportedImageType";
    }
  }

  else if (a1 > -17105)
  {
    if (a1 > -17102)
    {
      switch(a1)
      {
        case -17101:
          return "kCMPhotoError_InvalidSession";
        case -17100:
          return "kCMPhotoError_UnsupportedQuality";
        case -16999:
          return "kCMPhotoError_UnsupportedTiling";
      }

      goto LABEL_105;
    }

    if (a1 == -17104)
    {
      return "kCMPhotoError_FrameDropped";
    }

    else if (a1 == -17103)
    {
      return "kCMPhotoError_InvalidCropRect";
    }

    else
    {
      return "kCMPhotoError_InvalidData";
    }
  }

  else
  {
    if (a1 <= -17108)
    {
      switch(a1)
      {
        case -19092:
          return "kVTParavirtualizationTimeoutErr";
        case -17109:
          return "kCMPhotoError_ThumbnailEncodeFailed";
        case -17108:
          return "kCMPhotoError_FileStructureLocked";
      }

LABEL_105:
      v2 = (a1 & 0x3FFF) - 736;
      if (v2 > 4)
      {
        return "unknown error";
      }

      else
      {
        return off_1E6F41C80[v2];
      }
    }

    if (a1 == -17107)
    {
      return "kCMPhotoError_TimeoutReached";
    }

    else if (a1 == -17106)
    {
      return "kCMPhotoError_DataTooLarge";
    }

    else
    {
      return "kCMPhotoError_RequestCanceled";
    }
  }
}

void HEIFExif::HEIFExif (HEIFExif *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DD960;
  v8 = HEIFExif::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFItem::HEIFItem(HEIFItem *this, const __CFDictionary *a2)
{
  *this = &unk_1EF4DD980;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  memset(v17, 0, sizeof(v17));
  v3 = IIODictionary::IIODictionary(v17, a2);
  if (IIODictionary::containsKeyGroup(v3, @"CoordinateSystemID", @"CameraExtrinsics"))
  {
    *(this + 2) = IIODictionary::getUint32ForKeyGroup(v17, @"CoordinateSystemID", @"CameraExtrinsics");
    *(this + 184) = 1;
  }

  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v17, @"Position", @"CameraExtrinsics");
  if (ObjectForKeyGroup)
  {
    *(this + 185) = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v5 = IIOArray::IIOArray(&v14, ObjectForKeyGroup);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = ___ZN8HEIFItemC2EPK14__CFDictionary_block_invoke;
    v13[3] = &__block_descriptor_tmp_59_1;
    v13[4] = this;
    IIOArray::enumerate(v5, v13);
    IIOArray::~IIOArray(&v14);
  }

  v6 = IIODictionary::getObjectForKeyGroup(v17, @"Rotation", @"CameraExtrinsics");
  if (v6)
  {
    *(this + 186) = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v7 = IIOArray::IIOArray(&v14, v6);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = ___ZN8HEIFItemC2EPK14__CFDictionary_block_invoke_2;
    v12[3] = &__block_descriptor_tmp_60_0;
    v12[4] = this;
    IIOArray::enumerate(v7, v12);
    IIOArray::~IIOArray(&v14);
  }

  v8 = IIODictionary::getObjectForKeyGroup(v17, @"Intrinsics", @"CameraModel");
  if (v8)
  {
    *(this + 187) = 1;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v9 = IIOArray::IIOArray(&v14, v8);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZN8HEIFItemC2EPK14__CFDictionary_block_invoke_3;
    v11[3] = &__block_descriptor_tmp_61_1;
    v11[4] = this;
    IIOArray::enumerate(v9, v11);
    IIOArray::~IIOArray(&v14);
  }

  v10 = IIODictionary::getObjectForKeyGroup(v17, @"ModelType", @"CameraModel");
  if (v10)
  {
    *(this + 24) = CFStringCreateCopy(*MEMORY[0x1E695E480], v10);
  }

  IIODictionary::~IIODictionary(v17);
}

void sub_1860C4118(_Unwind_Exception *a1)
{
  IIOArray::~IIOArray((v1 - 80));
  IIODictionary::~IIODictionary((v1 - 56));
  _Unwind_Resume(a1);
}

void ___ZN8HEIFItemC2EPK14__CFDictionary_block_invoke(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  if (cf && a3 <= 2)
  {
    v5 = *(a1 + 32);
    v6 = CFGetTypeID(cf);
    if (v6 == CFNumberGetTypeID())
    {
      IIONumber::IIONumber(v7, cf);
      *(v5 + 8 * a3 + 16) = IIONumber::doubleNum(v7);
      IIONumber::~IIONumber(v7);
    }
  }
}

void sub_1860C41E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void ___ZN8HEIFItemC2EPK14__CFDictionary_block_invoke_2(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  if (cf && a3 <= 8)
  {
    v5 = *(a1 + 32);
    v6 = CFGetTypeID(cf);
    if (v6 == CFNumberGetTypeID())
    {
      IIONumber::IIONumber(v7, cf);
      *(v5 + 8 * a3 + 40) = IIONumber::doubleNum(v7);
      IIONumber::~IIONumber(v7);
    }
  }
}

void sub_1860C4274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void ___ZN8HEIFItemC2EPK14__CFDictionary_block_invoke_3(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  if (cf && a3 <= 8)
  {
    v5 = *(a1 + 32);
    v6 = CFGetTypeID(cf);
    if (v6 == CFNumberGetTypeID())
    {
      IIONumber::IIONumber(v7, cf);
      *(v5 + 8 * a3 + 112) = IIONumber::doubleNum(v7);
      IIONumber::~IIONumber(v7);
    }
  }
}

void sub_1860C4308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void HEIFItem::HEIFItem(HEIFItem *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DD980;
  v8 = HEIFItem::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFItem::~HEIFItem(HEIFItem *this)
{
  *this = &unk_1EF4DD980;
  v2 = *(this + 24);
  if (v2)
  {
    CFRelease(v2);
    *(this + 24) = 0;
  }
}

{
  HEIFItem::~HEIFItem(this);

  JUMPOUT(0x186602850);
}

void HEIFItem::updateProperties(HEIFItem *this, IIODictionary *a2)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  IIODictionary::IIODictionary(&v16);
  IIODictionary::setObjectForKey(a2, v17, @"{HEIF}");
  if ((*(this + 184) & 1) != 0 || (*(this + 185) & 1) != 0 || *(this + 186) == 1)
  {
    v13 = 0;
    value = 0;
    v15 = 0;
    IIODictionary::IIODictionary(&v13);
    IIODictionary::setObjectForKey(&v16, value, @"CameraExtrinsics");
    if (*(this + 184) == 1)
    {
      IIONumber::IIONumber(&v10, *(this + 2));
      IIODictionary::setObjectForKey(&v13, v12, @"CoordinateSystemID");
      IIONumber::~IIONumber(&v10);
    }

    if (*(this + 185) == 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      IIOArray::IIOArray(&v10);
      for (i = 0; i != 24; i += 8)
      {
        IIONumber::IIONumber(v8, *(this + i + 16));
        IIOArray::addObject(&v10, v8);
        IIONumber::~IIONumber(v8);
      }

      IIODictionary::setObjectForKey(&v13, v11, @"Position");
      IIOArray::~IIOArray(&v10);
    }

    if (*(this + 186) == 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      IIOArray::IIOArray(&v10);
      for (j = 40; j != 112; j += 8)
      {
        IIONumber::IIONumber(v8, *(this + j));
        IIOArray::addObject(&v10, v9);
        IIONumber::~IIONumber(v8);
      }

      IIODictionary::setObjectForKey(&v13, v11, @"Rotation");
      IIOArray::~IIOArray(&v10);
    }

    IIODictionary::~IIODictionary(&v13);
  }

  if ((*(this + 187) & 1) != 0 || *(this + 24))
  {
    v13 = 0;
    value = 0;
    v15 = 0;
    IIODictionary::IIODictionary(&v13);
    IIODictionary::setObjectForKey(&v16, value, @"CameraModel");
    if (*(this + 187) == 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      IIOArray::IIOArray(&v10);
      for (k = 0; k != 72; k += 8)
      {
        IIONumber::IIONumber(v8, *(this + k + 112));
        IIOArray::addObject(&v10, v9);
        IIONumber::~IIONumber(v8);
      }

      IIODictionary::setObjectForKey(&v13, v11, @"Intrinsics");
      IIOArray::~IIOArray(&v10);
    }

    v7 = *(this + 24);
    if (v7)
    {
      IIODictionary::setObjectForKey(&v13, v7, @"ModelType");
    }

    IIODictionary::~IIODictionary(&v13);
  }

  IIODictionary::~IIODictionary(&v16);
}

void sub_1860C46A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  IIOArray::~IIOArray(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary((v4 - 56));
  _Unwind_Resume(a1);
}

uint64_t HEIFItem::writeToStream(HEIFItem *this, CFWriteStreamRef stream)
{
  *buffer = 1835365449;
  CFWriteStreamWrite(stream, buffer, 4);
  CFWriteStreamWrite(stream, this + 8, 192);
  *v12 = 0;
  v4 = *(this + 24);
  if (!v4)
  {
    v10 = v12;
    v9 = stream;
    v8 = 4;
    goto LABEL_8;
  }

  *v12 = CFStringGetLength(v4);
  CStringPtr = CFStringGetCStringPtr(*(this + 24), 0x8000100u);
  if (CStringPtr)
  {
    v6 = *v12 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = CStringPtr;
    CFWriteStreamWrite(stream, v12, 4);
    v8 = *v12;
    v9 = stream;
    v10 = v7;
LABEL_8:
    CFWriteStreamWrite(v9, v10, v8);
  }

  return 0;
}

void HEIFXMP::HEIFXMP(HEIFXMP *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DD9A0;
  v8 = HEIFXMP::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFXMP::~HEIFXMP(HEIFXMP *this)
{
  *this = &unk_1EF4DD9A0;
}

{
  *this = &unk_1EF4DD9A0;
  JUMPOUT(0x186602850);
}

void HEIFStereoAggressor::HEIFStereoAggressor(HEIFStereoAggressor *this, const __CFDictionary *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_1EF4DD9C0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  memset(v8, 0, sizeof(v8));
  IIODictionary::IIODictionary(v8, a2);
  if (IIODictionary::containsKey(v8, @"Type"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(v8, @"Type");
    *v3 = CFRetain(ObjectForKey);
  }

  if (IIODictionary::containsKey(v8, @"SubTypeURI"))
  {
    v5 = IIODictionary::getObjectForKey(v8, @"SubTypeURI");
    *(this + 2) = CFRetain(v5);
  }

  v6 = IIODictionary::containsKey(v8, @"Severity");
  FloatForKey = -1.0;
  if (v6)
  {
    FloatForKey = IIODictionary::getFloatForKey(v8, @"Severity");
  }

  *(this + 6) = FloatForKey;
  IIODictionary::~IIODictionary(v8);
}

void sub_1860C499C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void HEIFStereoAggressor::HEIFStereoAggressor(HEIFStereoAggressor *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DD9C0;
  v8 = HEIFStereoAggressor::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFStereoAggressor::~HEIFStereoAggressor(HEIFStereoAggressor *this)
{
  *this = &unk_1EF4DD9C0;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }
}

{
  HEIFStereoAggressor::~HEIFStereoAggressor(this);

  JUMPOUT(0x186602850);
}

void HEIFGroupItem::HEIFGroupItem(HEIFGroupItem *this, const __CFDictionary *a2, const __CFDictionary *a3, int a4)
{
  *this = &unk_1EF4DD9E0;
  *(this + 2) = 0u;
  *(this + 1) = 0;
  v7 = (this + 8);
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  memset(v17, 0, sizeof(v17));
  v8 = IIODictionary::IIODictionary(v17, a2);
  *(this + 3) = a4;
  *v7 = IIODictionary::getUint32ForKey(v8, *gIIO_kCMPhotoDecompressionContainerDescription_Group_Type);
  ObjectForKey = IIODictionary::getObjectForKey(v17, *gIIO_kCMPhotoDecompressionContainerDescription_Group_PictureIndexList);
  memset(v16, 0, sizeof(v16));
  v10 = IIOArray::IIOArray(v16, ObjectForKey);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN13HEIFGroupItemC2EPK14__CFDictionaryS2_j_block_invoke;
  v15[3] = &__block_descriptor_tmp_83;
  v15[4] = this;
  IIOArray::enumerate(v10, v15);
  if (a3)
  {
    memset(v14, 0, sizeof(v14));
    IIODictionary::IIODictionary(v14, a3);
    if (IIODictionary::containsKey(v14, *gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_DisparityAdjustment))
    {
      *(this + 20) = 1;
      *(this + 4) = IIODictionary::getUint32ForKey(v14, *gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_DisparityAdjustment);
    }

    v11 = IIODictionary::getObjectForKey(v17, @"StereoAggressors");
    memset(v13, 0, sizeof(v13));
    IIOArray::IIOArray(v13, v11);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = ___ZN13HEIFGroupItemC2EPK14__CFDictionaryS2_j_block_invoke_2;
    v12[3] = &__block_descriptor_tmp_87_0;
    v12[4] = this;
    IIOArray::enumerate(v13, v12);
    if (IIODictionary::containsKey(v14, *gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_MonoImageLocation))
    {
      *(this + 6) = IIODictionary::getUint32ForKey(v14, *gIIO_kCMPhotoCompressionContainerDescription_GroupProperty_MonoImageLocation);
    }

    IIOArray::~IIOArray(v13);
    IIODictionary::~IIODictionary(v14);
  }

  IIOArray::~IIOArray(v16);
  IIODictionary::~IIODictionary(v17);
}

void sub_1860C4D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  IIODictionary::~IIODictionary(va);
  IIOArray::~IIOArray((v11 - 112));
  IIODictionary::~IIODictionary((v11 - 88));
  v13 = v9[7];
  if (v13)
  {
    v9[8] = v13;
    operator delete(v13);
  }

  v14 = *v10;
  if (*v10)
  {
    v9[5] = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void ___ZN13HEIFGroupItemC2EPK14__CFDictionaryS2_j_block_invoke(uint64_t a1, const __CFNumber *a2)
{
  v2 = *(a1 + 32);
  IIONumber::IIONumber(v18, a2);
  v3 = IIONumber::uint32Num(v18);
  v5 = v2[5];
  v4 = v2[6];
  if (v5 >= v4)
  {
    v7 = v2[4];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 2;
    v10 = v9 + 1;
    if ((v9 + 1) >> 62)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>((v2 + 4), v13);
    }

    v14 = (v5 - v7) >> 2;
    v15 = (4 * v9);
    v16 = (4 * v9 - 4 * v14);
    *v15 = v3;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = v2[4];
    v2[4] = v16;
    v2[5] = v6;
    v2[6] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = v3;
    v6 = v5 + 1;
  }

  v2[5] = v6;
  IIONumber::~IIONumber(v18);
}

void sub_1860C4E8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void HEIFGroupItem::HEIFGroupItem(HEIFGroupItem *this, __CFReadStream *a2)
{
  *this = &unk_1EF4DD9E0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v2 = HEIFGroupItem::readFromStream(this, a2);
  if (v2)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = v2;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void sub_1860C4FAC(_Unwind_Exception *exception_object)
{
  v4 = v1[7];
  if (v4)
  {
    v1[8] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[5] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HEIFGroupItem::readFromStream(HEIFGroupItem *this, CFReadStreamRef stream)
{
  *buffer = 0;
  if (CFReadStreamRead(stream, buffer, 4) != 4)
  {
    return 4294967246;
  }

  if (*buffer == 542134855)
  {
    if (CFReadStreamRead(stream, this + 8, 20) == 20)
    {
      v4 = (this + 32);
      *(this + 5) = *(this + 4);
      *(this + 8) = *(this + 7);
      *v18 = 0;
      if (CFReadStreamRead(stream, v18, 4) == 4)
      {
        if (*v18)
        {
          v5 = 0;
          do
          {
            LODWORD(v17) = 0;
            if (CFReadStreamRead(stream, &v17, 4) != 4)
            {
              return 4294967246;
            }

            v7 = *(this + 5);
            v6 = *(this + 6);
            if (v7 >= v6)
            {
              v9 = *v4;
              v10 = v7 - *v4;
              v11 = v10 >> 2;
              v12 = (v10 >> 2) + 1;
              if (v12 >> 62)
              {
                std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
              }

              v13 = v6 - v9;
              if (v13 >> 1 > v12)
              {
                v12 = v13 >> 1;
              }

              if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v14 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v14 = v12;
              }

              if (v14)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned int>>(this + 32, v14);
              }

              *(4 * v11) = v17;
              v8 = 4 * v11 + 4;
              memcpy(0, v9, v10);
              v15 = *(this + 4);
              *(this + 4) = 0;
              *(this + 5) = v8;
              *(this + 6) = 0;
              if (v15)
              {
                operator delete(v15);
              }
            }

            else
            {
              *v7 = v17;
              v8 = (v7 + 4);
            }

            *(this + 5) = v8;
          }

          while (++v5 < *v18);
        }

        if (CFReadStreamRead(stream, v18, 4) == 4)
        {
          if (*v18)
          {
            operator new();
          }

          return 0;
        }
      }
    }

    return 4294967246;
  }

  return 0;
}

void HEIFGroupItem::~HEIFGroupItem(HEIFGroupItem *this)
{
  *this = &unk_1EF4DD9E0;
  *(this + 5) = *(this + 4);
  v4 = this + 56;
  v2 = *(this + 7);
  v3 = *(v4 + 1);
  if (v3 != v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = v2[v5];
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v2 = *(this + 7);
        v3 = *(this + 8);
      }

      v5 = v6++;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  *(this + 8) = v2;
  if (v2)
  {
    operator delete(v2);
  }

  v8 = *(this + 4);
  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
  }
}

{
  HEIFGroupItem::~HEIFGroupItem(this);

  JUMPOUT(0x186602850);
}

__CFString *HEIFGroupItem::getMonoscopicImageLocationString(HEIFGroupItem *this)
{
  v1 = *(this + 6) - 1;
  if (v1 > 2)
  {
    v2 = kIIOMonoscopicImageLocation_Unspecified;
  }

  else
  {
    v2 = off_1E6F41CA8[v1];
  }

  return *v2;
}

uint64_t HEIFGroupItem::getGroupPictureIndexAtIndex(uint64_t this, unsigned int a2)
{
  v2 = *(this + 32);
  if (a2 < ((*(this + 40) - v2) >> 2))
  {
    return *(v2 + 4 * a2);
  }

  __break(1u);
  return this;
}

uint64_t HEIFGroupItem::getStereoAggressorAtIndex(uint64_t this, unsigned int a2)
{
  v2 = *(this + 56);
  if (a2 < ((*(this + 64) - v2) >> 3))
  {
    return *(v2 + 8 * a2);
  }

  __break(1u);
  return this;
}

CFIndex HEIFGroupItem::writeToStream(HEIFGroupItem *this, CFWriteStreamRef stream)
{
  *buffer = 542134855;
  CFWriteStreamWrite(stream, buffer, 4);
  CFWriteStreamWrite(stream, this + 8, 20);
  *v9 = (*(this + 5) - *(this + 4)) >> 2;
  CFWriteStreamWrite(stream, v9, 4);
  CFWriteStreamWrite(stream, *(this + 4), 4 * *v9);
  *v9 = (*(this + 8) - *(this + 7)) >> 3;
  result = CFWriteStreamWrite(stream, v9, 4);
  if (!*v9)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(this + 7);
    if (v5 >= (*(this + 8) - v6) >> 3)
    {
      break;
    }

    v7 = *(v6 + 8 * v5);
    *v10 = 1195463763;
    CFWriteStreamWrite(stream, v10, 4);
    result = CFWriteStreamWrite(stream, (v7 + 8), 24);
    if (++v5 >= *v9)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

void HEIFThumbnailImage::HEIFThumbnailImage(HEIFThumbnailImage *this, const __CFDictionary *a2)
{
  *this = &unk_1EF4DDA00;
  memset(v5, 0, sizeof(v5));
  IIODictionary::IIODictionary(v5, a2);
  *(this + 2) = IIODictionary::getUint32ForKeyGroup(v5, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
  *(this + 3) = IIODictionary::getUint32ForKeyGroup(v5, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
  *(this + 5) = IIODictionary::getUint32ForKey(v5, *gIIO_kCMPhotoDecompressionContainerDescription_DataLength);
  *(this + 6) = IIODictionary::getUint32ForKey(v5, *gIIO_kCMPhotoDecompressionContainerDescription_DataOffset);
  *(this + 4) = 8;
  if (IIODictionary::containsKey(v5, *gIIO_kCMPhotoDecompressionContainerDescription_BitDepth))
  {
    ObjectForKey = IIODictionary::getObjectForKey(v5, *gIIO_kCMPhotoDecompressionContainerDescription_BitDepth);
    memset(v4, 0, sizeof(v4));
    IIOArray::IIOArray(v4, ObjectForKey);
    if (IIOArray::getCount(v4))
    {
      *(this + 4) = IIOArray::getUint32AtIndex(v4, 0);
    }

    IIOArray::~IIOArray(v4);
  }

  IIODictionary::~IIODictionary(v5);
}

void sub_1860C561C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void HEIFThumbnailImage::HEIFThumbnailImage(HEIFThumbnailImage *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DDA00;
  v8 = HEIFThumbnailImage::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFThumbnailImage::~HEIFThumbnailImage(HEIFThumbnailImage *this)
{
  *this = &unk_1EF4DDA00;
}

{
  *this = &unk_1EF4DDA00;
  JUMPOUT(0x186602850);
}

void HEIFAuxImage::HEIFAuxImage(HEIFAuxImage *this, const __CFDictionary *a2, const __CFDictionary *a3, int a4)
{
  *this = &unk_1EF4DDA20;
  memset(v23, 0, sizeof(v23));
  IIODictionary::IIODictionary(v23, a2);
  *(this + 8) = 0u;
  v7 = (this + 8);
  *(this + 7) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 8) = a4;
  if (!a3)
  {
    ObjectForKey = IIODictionary::getObjectForKey(v23, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN);
    *v7 = IIODictionary::getUint32ForKeyGroup(v23, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
    *(this + 3) = IIODictionary::getUint32ForKeyGroup(v23, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
    *(this + 4) = IIODictionary::getUint32ForKey(v23, @"Orientation");
    *(this + 11) = IIODictionary::getFloatForKey(v23, *gIIO_kCMPhotoDecompressionContainerDescription_MeteorHeadroomFromMakerNote);
    *(this + 12) = IIODictionary::getFloatForKey(v23, *gIIO_kCMPhotoDecompressionContainerDescription_MeteorHeadroomFromProperties);
    *(this + 10) = IIODictionary::getUint32ForKey(v23, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryNativePixelFormat);
    Uint32ForKey = IIODictionary::getUint32ForKey(v23, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryType);
    *(this + 7) = Uint32ForKey;
    if (Uint32ForKey == 3)
    {
      if (!ObjectForKey)
      {
        _cg_jpeg_mem_term("HEIFAuxImage", 1115, "*** ERROR: 'kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN' is NULL - for 'kCMPhotoAuxiliaryImageType_Alpha'\n");
        ObjectForKey = *gIIO_kCMPhotoAuxiliaryImageTypeURN_MIAF_Alpha;
      }

      v16 = IIODictionary::getUint32ForKey(v23, *gIIO_kCMPhotoDecompressionContainerDescription_AlphaPremultiplication);
      if (v16)
      {
        v17 = v16 == 1;
      }

      else
      {
        v17 = 3;
      }

      *(this + 9) = v17;
      v18 = IIO_AlphaInfoString(v17);
      _cg_jpeg_mem_term("HEIFAuxImage", 1125, "    HEIFAuxImage: alpha: %s\n", v18);
    }

    if (!ObjectForKey)
    {
      ObjectForKey = IIODictionary::getObjectForKey(v23, @"URI");
      if (!ObjectForKey)
      {
        goto LABEL_27;
      }

      *(this + 7) = 99;
    }

    goto LABEL_25;
  }

  value = 0;
  CFDictionaryGetValueIfPresent(a3, *gIIO_kCMPhotoDecompressionContainerDescription_MainImages, &value);
  if (value)
  {
    if (CFArrayGetCount(value))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(value, 0);
      theArray = 0;
      CFDictionaryGetValueIfPresent(ValueAtIndex, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryImages, &theArray);
      if (theArray)
      {
        if (CFArrayGetCount(theArray))
        {
          v9 = CFArrayGetValueAtIndex(theArray, 0);
          memset(v20, 0, sizeof(v20));
          IIODictionary::IIODictionary(v20, v9);
          ObjectForKey = IIODictionary::getObjectForKey(v20, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN);
          v11 = IIODictionary::getUint32ForKey(v20, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryType);
          *(this + 7) = v11;
          if (v11 == 3)
          {
            if (!ObjectForKey)
            {
              _cg_jpeg_mem_term("HEIFAuxImage", 1077, "*** ERROR: 'kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN' is NULL - for 'kCMPhotoAuxiliaryImageType_Alpha'\n");
              ObjectForKey = *gIIO_kCMPhotoAuxiliaryImageTypeURN_MIAF_Alpha;
            }

            v12 = IIODictionary::getUint32ForKey(v23, *gIIO_kCMPhotoDecompressionContainerDescription_AlphaPremultiplication);
            if (v12)
            {
              v13 = v12 == 1;
            }

            else
            {
              v13 = 3;
            }

            *(this + 9) = v13;
            v14 = IIO_AlphaInfoString(v13);
            _cg_jpeg_mem_term("HEIFAuxImage", 1087, "    HEIFAuxImage: alpha: %s\n", v14);
          }

          *v7 = IIODictionary::getUint32ForKeyGroup(v20, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
          *(this + 3) = IIODictionary::getUint32ForKeyGroup(v20, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
          *(this + 4) = IIODictionary::getUint32ForKey(v20, @"Orientation");
          *(this + 10) = IIODictionary::getUint32ForKey(v20, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryNativePixelFormat);
          IIODictionary::~IIODictionary(v20);
          if (ObjectForKey)
          {
LABEL_25:
            v19 = CFGetTypeID(ObjectForKey);
            if (v19 == CFStringGetTypeID())
            {
              *(this + 7) = CFRetain(ObjectForKey);
            }
          }
        }
      }
    }
  }

LABEL_27:
  *(this + 5) = IIODictionary::getUint32ForKey(v23, *gIIO_kCMPhotoDecompressionContainerDescription_DataLength);
  *(this + 6) = IIODictionary::getUint32ForKey(v23, *gIIO_kCMPhotoDecompressionContainerDescription_DataOffset);
  IIODictionary::~IIODictionary(v23);
}

void sub_1860C5B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void HEIFAuxImage::HEIFAuxImage(HEIFAuxImage *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DDA20;
  v8 = HEIFAuxImage::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFAuxImage::~HEIFAuxImage(HEIFAuxImage *this)
{
  *this = &unk_1EF4DDA20;
  v2 = *(this + 7);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
}

{
  HEIFAuxImage::~HEIFAuxImage(this);

  JUMPOUT(0x186602850);
}

uint64_t HEIFAuxImage::writeToStream(const UInt8 *this, CFWriteStreamRef stream)
{
  *buffer = 542659905;
  CFWriteStreamWrite(stream, buffer, 4);
  CFWriteStreamWrite(stream, this + 8, 56);
  *v8 = 0;
  v4 = *(this + 7);
  if (v4)
  {
    memset(v7, 0, sizeof(v7));
    IIOString::IIOString(v7, v4);
    *v8 = IIOString::length(v7);
    v5 = IIOString::utf8String(v7);
    if (v5 && *v8)
    {
      CFWriteStreamWrite(stream, v8, 4);
      CFWriteStreamWrite(stream, v5, *v8);
    }

    IIOString::~IIOString(v7);
  }

  else
  {
    CFWriteStreamWrite(stream, v8, 4);
  }

  return 0;
}

void HEIFAlternateImage::HEIFAlternateImage(HEIFAlternateImage *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  *this = &unk_1EF4DDA40;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  memset(v28, 0, sizeof(v28));
  IIODictionary::IIODictionary(v28, a2);
  *v4 = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_CodecType);
  *(this + 11) = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionOption_AlternateIndex);
  *(this + 12) = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryImageCount);
  Uint32ForKey = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_ItemType);
  *(this + 3) = Uint32ForKey;
  if (!Uint32ForKey)
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_CodecType);
    *(this + 3) = Uint32ForKey;
  }

  if (Uint32ForKey == 1953325424)
  {
    if (gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapPixelFormat)
    {
      *(this + 4) = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapPixelFormat);
    }

    if (gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapDimension)
    {
      *(this + 5) = IIODictionary::getUint32ForKeyGroup(v28, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapDimension);
      *(this + 6) = IIODictionary::getUint32ForKeyGroup(v28, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapDimension);
    }

    if (gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapOrientation)
    {
      v6 = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_DerivationGainMapOrientation);
      *(this + 7) = v6;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    else if (*(this + 7))
    {
      goto LABEL_13;
    }

    *(this + 7) = IIODictionary::getUint32ForKey(v28, @"Orientation");
LABEL_13:
    ObjectForKey = IIODictionary::getObjectForKey(v28, *gIIO_kCMPhotoDecompressionContainerConstituent_FlexRangeColorSpace);
    *(this + 16) = CGColorSpaceRetain(ObjectForKey);
    *(this + 9) = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_DataLength);
    *(this + 10) = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_DataOffset);
    *(this + 13) = IIODictionary::getUint32ForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_ThumbnailImageCount);
    if (IIODictionary::containsKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_DerivationDetails))
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v8 = IIODictionary::getObjectForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_DerivationDetails);
      IIODictionary::IIODictionary(&v25, v8);
      DoubleFromRationalForKey = IIODictionary::getDoubleFromRationalForKey(&v25, *gIIO_kCMPhotoMetadata_TonemapAlternateHDRHeadroom);
      *(this + 14) = exp2f(DoubleFromRationalForKey);
      v10 = IIODictionary::getDoubleFromRationalForKey(&v25, *gIIO_kCMPhotoMetadata_TonemapBaseHDRHeadroom);
      *(this + 15) = exp2f(v10);
      *(this + 64) = IIODictionary::getBoolForKey(&v25, *gIIO_kCMPhotoMetadata_TonemapBaseColorIsWorkingColor);
      v11 = IIODictionary::getObjectForKey(&v25, @"TonemapChannelMetadata");
      memset(v24, 0, sizeof(v24));
      IIOArray::IIOArray(v24, v11);
      Count = IIOArray::getCount(v24);
      v13 = 0;
      *(this + 65) = Count == 3;
      v14 = (this + 84);
      do
      {
        ObjectAtIndex = IIOArray::getObjectAtIndex(v24, v13);
        memset(v23, 0, sizeof(v23));
        IIODictionary::IIODictionary(v23, ObjectAtIndex);
        if (gIIO_kCMPhotoMetadataTonemapChannel_AlternateOffset)
        {
          v16 = IIODictionary::getDoubleFromRationalForKey(v23, *gIIO_kCMPhotoMetadataTonemapChannel_AlternateOffset);
          *v14 = v16;
        }

        if (gIIO_kCMPhotoMetadataTonemapChannel_BaseOffset)
        {
          v17 = IIODictionary::getDoubleFromRationalForKey(v23, *gIIO_kCMPhotoMetadataTonemapChannel_BaseOffset);
          *(v14 - 1) = v17;
        }

        if (gIIO_kCMPhotoMetadataTonemapChannel_GainMapMin)
        {
          v18 = IIODictionary::getDoubleFromRationalForKey(v23, *gIIO_kCMPhotoMetadataTonemapChannel_GainMapMin);
          *(v14 - 4) = v18;
        }

        if (gIIO_kCMPhotoMetadataTonemapChannel_GainMapMax)
        {
          v19 = IIODictionary::getDoubleFromRationalForKey(v23, *gIIO_kCMPhotoMetadataTonemapChannel_GainMapMax);
          *(v14 - 3) = v19;
        }

        if (gIIO_kCMPhotoMetadataTonemapChannel_Gamma)
        {
          v20 = IIODictionary::getDoubleFromRationalForKey(v23, *gIIO_kCMPhotoMetadataTonemapChannel_Gamma);
          *(v14 - 2) = v20;
        }

        IIODictionary::~IIODictionary(v23);
        if (Count != 3)
        {
          break;
        }

        v14 += 5;
      }

      while (v13++ < 2);
      IIOArray::~IIOArray(v24);
      IIODictionary::~IIODictionary(&v25);
    }
  }

  *(this + 8) = 8;
  if (IIODictionary::containsKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_BitDepth))
  {
    v22 = IIODictionary::getObjectForKey(v28, *gIIO_kCMPhotoDecompressionContainerDescription_BitDepth);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    IIOArray::IIOArray(&v25, v22);
    if (IIOArray::getCount(&v25))
    {
      *(this + 8) = IIOArray::getUint32AtIndex(&v25, 0);
    }

    IIOArray::~IIOArray(&v25);
  }

  IIODictionary::~IIODictionary(v28);
}

void sub_1860C6278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  IIOArray::~IIOArray(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

void HEIFAlternateImage::HEIFAlternateImage(HEIFAlternateImage *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *this = &unk_1EF4DDA40;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  v8 = HEIFAlternateImage::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v9;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void HEIFAlternateImage::~HEIFAlternateImage(HEIFAlternateImage *this)
{
  *this = &unk_1EF4DDA40;
  v2 = *(this + 16);
  if (v2)
  {
    CGColorSpaceRelease(v2);
  }

  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
}

{
  HEIFAlternateImage::~HEIFAlternateImage(this);

  JUMPOUT(0x186602850);
}

uint64_t HEIFAlternateImage::writeToStream(HEIFAlternateImage *this, CFWriteStreamRef stream)
{
  *buffer = 1480936518;
  CFWriteStreamWrite(stream, buffer, 4);
  CFWriteStreamWrite(stream, this + 8, 128);
  return IIO_ColorSpaceAddToStream(*(this + 16), stream);
}

void HEIFAlternateImage::addInfoToProperties(HEIFAlternateImage *this, IIODictionary *a2)
{
  IIONumber::IIONumber(&v14, *(this + 14));
  IIODictionary::setObjectForKey(a2, value, @"TonemapAlternateHDRHeadroom");
  IIONumber::~IIONumber(&v14);
  IIONumber::IIONumber(&v14, *(this + 15));
  IIODictionary::setObjectForKey(a2, value, @"TonemapBaseHDRHeadroom");
  IIONumber::~IIONumber(&v14);
  v4 = MEMORY[0x1E695E4D0];
  if (!*(this + 64))
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  IIODictionary::setObjectForKey(a2, *v4, @"TonemapBaseColorIsWorkingColor");
  v14 = 0;
  v15 = 0;
  value = 0;
  IIOArray::IIOArray(&v14);
  IIODictionary::setObjectForKey(a2, v15, @"TonemapChannelMetadata");
  v5 = 0;
  v6 = (this + 84);
  v7 = *(this + 65);
  do
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    IIODictionary::IIODictionary(&v11);
    IIONumber::IIONumber(v9, *(v6 - 4));
    IIODictionary::setObjectForKey(&v11, v10, @"GainMapMin");
    IIONumber::~IIONumber(v9);
    IIONumber::IIONumber(v9, *(v6 - 3));
    IIODictionary::setObjectForKey(&v11, v10, @"GainMapMax");
    IIONumber::~IIONumber(v9);
    IIONumber::IIONumber(v9, *(v6 - 2));
    IIODictionary::setObjectForKey(&v11, v10, @"Gamma");
    IIONumber::~IIONumber(v9);
    IIONumber::IIONumber(v9, *(v6 - 1));
    IIODictionary::setObjectForKey(&v11, v10, @"BaseOffset");
    IIONumber::~IIONumber(v9);
    IIONumber::IIONumber(v9, *v6);
    IIODictionary::setObjectForKey(&v11, v10, @"AlternateOffset");
    IIONumber::~IIONumber(v9);
    IIOArray::addObject(&v14, v12);
    IIODictionary::~IIODictionary(&v11);
    if (!v7)
    {
      break;
    }

    v6 += 5;
  }

  while (v5++ < 2);
  IIOArray::~IIOArray(&v14);
}

void sub_1860C66A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

void HEIFAlternateImage::addAsAuxImageToProperties(HEIFAlternateImage *this, IIODictionary *a2)
{
  IIODictionary::setObjectForKey(a2, @"kCGImageAuxiliaryDataTypeISOGainMap", @"AuxiliaryDataType");
  IIONumber::IIONumber(v4, 1953325424);
  IIODictionary::setObjectForKey(a2, value, @"PixelFormat");
  IIONumber::~IIONumber(v4);
  IIONumber::IIONumber(v4, *(this + 5));
  IIODictionary::setObjectForKey(a2, value, @"Width");
  IIONumber::~IIONumber(v4);
  IIONumber::IIONumber(v4, *(this + 6));
  IIODictionary::setObjectForKey(a2, value, @"Height");
  IIONumber::~IIONumber(v4);
  IIONumber::IIONumber(v4, *(this + 7));
  IIODictionary::setObjectForKey(a2, value, @"Orientation");
  IIONumber::~IIONumber(v4);
  IIONumber::IIONumber(v4, *(this + 4));
  IIODictionary::setObjectForKey(a2, value, @"PixelFormat");
  IIONumber::~IIONumber(v4);
}

void sub_1860C6840(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void HEIFMainImage::HEIFMainImage(HEIFMainImage *this, __CFReadStream *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  *(this + 8) = 0u;
  *this = &unk_1EF4DDA60;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  v8 = HEIFMainImage::readFromStream(this, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = v8;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

void sub_1860C6918(_Unwind_Exception *exception_object)
{
  v4 = v1[16];
  if (v4)
  {
    v1[17] = v4;
    operator delete(v4);
  }

  v5 = v1[13];
  if (v5)
  {
    v1[14] = v5;
    operator delete(v5);
  }

  v6 = v1[10];
  if (v6)
  {
    v1[11] = v6;
    operator delete(v6);
  }

  v7 = v1[7];
  if (v7)
  {
    v1[8] = v7;
    operator delete(v7);
  }

  v8 = v1[4];
  if (v8)
  {
    v1[5] = v8;
    operator delete(v8);
  }

  v9 = *v2;
  if (*v2)
  {
    v1[2] = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HEIFMainImage::getHEIFAuxImageAtIndex(HEIFMainImage *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (a2 >= ((*(this + 5) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t HEIFMainImage::getHEIFAlternateImageAtIndex(HEIFMainImage *this, unsigned int a2)
{
  v2 = *(this + 7);
  if (a2 >= ((*(this + 8) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t HEIFMainImage::getHEIFThumbnailImageAtIndex(HEIFMainImage *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (a2 >= ((*(this + 2) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t HEIFMainImage::writeToStream(HEIFMainImage *this, CFWriteStreamRef stream)
{
  v4 = 1297434708;
  *buffer = 1313423693;
  CFWriteStreamWrite(stream, buffer, 4);
  *buffer = 1297434708;
  CFWriteStreamWrite(stream, buffer, 4);
  *v26 = (*(this + 2) - *(this + 1)) >> 3;
  CFWriteStreamWrite(stream, v26, 8);
  if (*v26 >= 1)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = *(this + 1);
      if (v5 >= (*(this + 2) - v7) >> 3)
      {
        goto LABEL_39;
      }

      v8 = *(v7 + 8 * v5);
      *v27 = 1297434708;
      CFWriteStreamWrite(stream, v27, 4);
      CFWriteStreamWrite(stream, (v8 + 8), 20);
      v5 = v6;
      v9 = *v26 <= v6++;
    }

    while (!v9);
  }

  *buffer = 1230525761;
  CFWriteStreamWrite(stream, buffer, 4);
  *v26 = (*(this + 5) - *(this + 4)) >> 3;
  CFWriteStreamWrite(stream, v26, 8);
  if (*v26 >= 1)
  {
    v10 = 0;
    v4 = 1;
    do
    {
      v11 = *(this + 4);
      if (v10 >= (*(this + 5) - v11) >> 3)
      {
        goto LABEL_39;
      }

      HEIFAuxImage::writeToStream(*(v11 + 8 * v10), stream);
      v10 = v4;
      v9 = *v26 <= v4;
      v4 = (v4 + 1);
    }

    while (!v9);
  }

  *buffer = 1230261313;
  CFWriteStreamWrite(stream, buffer, 4);
  *v26 = (*(this + 8) - *(this + 7)) >> 3;
  CFWriteStreamWrite(stream, v26, 8);
  if (*v26 >= 1)
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = *(this + 7);
      if (v12 >= (*(this + 8) - v14) >> 3)
      {
        goto LABEL_39;
      }

      v15 = HEIFAlternateImage::writeToStream(*(v14 + 8 * v12), stream);
      v12 = v13;
      v9 = *v26 <= v13++;
      if (v9)
      {
        v4 = v15;
        goto LABEL_18;
      }
    }
  }

  v4 = 0;
LABEL_18:
  *buffer = 1179211845;
  CFWriteStreamWrite(stream, buffer, 4);
  *v26 = (*(this + 11) - *(this + 10)) >> 3;
  CFWriteStreamWrite(stream, v26, 8);
  if (*v26 >= 1)
  {
    v16 = 0;
    v4 = 1;
    while (1)
    {
      v17 = *(this + 10);
      if (v16 >= (*(this + 11) - v17) >> 3)
      {
        goto LABEL_39;
      }

      v18 = *(v17 + 8 * v16);
      *v27 = 1179211845;
      CFWriteStreamWrite(stream, v27, 4);
      CFWriteStreamWrite(stream, (v18 + 8), 16);
      v16 = v4;
      v9 = *v26 <= v4;
      v4 = (v4 + 1);
      if (v9)
      {
        v4 = 0;
        break;
      }
    }
  }

  *buffer = 1296389193;
  CFWriteStreamWrite(stream, buffer, 4);
  *v26 = (*(this + 17) - *(this + 16)) >> 3;
  CFWriteStreamWrite(stream, v26, 8);
  if (*v26 >= 1)
  {
    v19 = 0;
    v4 = 1;
    while (1)
    {
      v20 = *(this + 16);
      if (v19 >= (*(this + 17) - v20) >> 3)
      {
        goto LABEL_39;
      }

      HEIFItem::writeToStream(*(v20 + 8 * v19), stream);
      v19 = v4;
      v9 = *v26 <= v4;
      v4 = (v4 + 1);
      if (v9)
      {
        v4 = 0;
        break;
      }
    }
  }

  *buffer = 542133592;
  CFWriteStreamWrite(stream, buffer, 4);
  *v26 = (*(this + 14) - *(this + 13)) >> 3;
  CFWriteStreamWrite(stream, v26, 8);
  if (*v26 >= 1)
  {
    v21 = 0;
    v4 = 1;
    while (1)
    {
      v22 = *(this + 13);
      if (v21 >= (*(this + 14) - v22) >> 3)
      {
        break;
      }

      v23 = *(v22 + 8 * v21);
      *v27 = 542133592;
      CFWriteStreamWrite(stream, v27, 4);
      CFWriteStreamWrite(stream, (v23 + 8), 16);
      v21 = v4;
      v9 = *v26 <= v4;
      v4 = (v4 + 1);
      if (v9)
      {
        v4 = 0;
        goto LABEL_36;
      }
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_36:
  *buffer = 1096040772;
  CFWriteStreamWrite(stream, buffer, 4);
  CFWriteStreamWrite(stream, this + 160, 144);
  *buffer = 1313623875;
  CFWriteStreamWrite(stream, buffer, 4);
  IIO_ColorSpaceNameAddToStream(*(this + 36), stream);
  *buffer = 1397509955;
  CFWriteStreamWrite(stream, buffer, 4);
  IIO_ColorSpaceAddToStream(*(this + 37), stream);
  if (!*(this + 41))
  {
LABEL_40:
    _cg_jpeg_mem_term("writeToStream", 2427, "*** ERROR: mainImage - bad dimension: %d x %d\n");
    return v4;
  }

  if (!*(this + 42))
  {
    _cg_jpeg_mem_term("writeToStream", 2428, "*** ERROR: mainImage - bad dimension: %d x %d\n");
  }

  return v4;
}

void GlobalHEIFInfo::GlobalHEIFInfo(GlobalHEIFInfo *this, unsigned __int8 *a2, CFIndex a3)
{
  *this = &unk_1EF4DDA80;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::vector<_APPx *>::resize(this + 1, 0);
  std::vector<_APPx *>::resize(this + 4, 0);
  *(this + 7) = 0;
  v6 = CFReadStreamCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
  v7 = v6;
  if (v6)
  {
    if (CFReadStreamOpen(v6))
    {
      if (GlobalHEIFInfo::readFromStream(this, v7))
      {
        *(this + 2) = *(this + 1);
        *(this + 5) = *(this + 4);
        *(this + 8) = 0;
        *(this + 18) = 0;
        v8 = *(this + 7);
        if (v8)
        {
          CFRelease(v8);
          *(this + 7) = 0;
        }
      }

      CFReadStreamClose(v7);
    }

    CFRelease(v7);
  }
}

void sub_1860C6FA4(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GlobalHEIFInfo::readFromStream(GlobalHEIFInfo *this, CFReadStreamRef stream)
{
  *v6 = 0;
  *buffer = 0;
  if (CFReadStreamRead(stream, buffer, 4) != 4)
  {
    return 4294967246;
  }

  if (*buffer != 1112493127)
  {
    return 0;
  }

  if (CFReadStreamRead(stream, v6, 8) != 8)
  {
    return 4294967246;
  }

  std::vector<_MPEntry *>::reserve(this + 1, *v6);
  if (*v6 >= 1)
  {
    operator new();
  }

  if (CFReadStreamRead(stream, v6, 8) != 8)
  {
    return 4294967246;
  }

  std::vector<_MPEntry *>::reserve(this + 4, *v6);
  if (*v6 >= 1)
  {
    operator new();
  }

  if (CFReadStreamRead(stream, this + 64, 12) != 12 || CFReadStreamRead(stream, v6, 8) != 8)
  {
    return 4294967246;
  }

  result = *v6;
  if (!*v6)
  {
    return result;
  }

  GlobalHEIFInfo::readFromStream(*v6, stream, v6, this);
  return 0;
}

uint64_t GlobalHEIFInfo::writeToStream(GlobalHEIFInfo *this, CFWriteStreamRef stream)
{
  *buffer = 1112493127;
  CFWriteStreamWrite(stream, buffer, 4);
  *v16 = (*(this + 2) - *(this + 1)) >> 3;
  result = CFWriteStreamWrite(stream, v16, 8);
  v5 = *v16;
  if (*v16 >= 1)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *(this + 1);
      if (v6 >= (*(this + 2) - v8) >> 3)
      {
        goto LABEL_20;
      }

      v9 = *(v8 + 8 * v6);
      if (v9)
      {
        result = HEIFMainImage::writeToStream(v9, stream);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = LogError("writeToStream", 2831, "*** ERROR: count=%d --> _mainImages[%d] is NULL?\n", v5, v7 - 1);
      }

      v6 = v7;
      v5 = *v16;
      v10 = *v16 <= v7++;
    }

    while (!v10);
  }

  *v16 = (*(this + 5) - *(this + 4)) >> 3;
  result = CFWriteStreamWrite(stream, v16, 8);
  v11 = *v16;
  if (*v16 >= 1)
  {
    v12 = 0;
    v13 = 1;
    while (1)
    {
      v14 = *(this + 4);
      if (v12 >= (*(this + 5) - v14) >> 3)
      {
        break;
      }

      v15 = *(v14 + 8 * v12);
      if (v15)
      {
        result = HEIFGroupItem::writeToStream(v15, stream);
      }

      else
      {
        result = LogError("writeToStream", 2848, "*** ERROR: count=%d --> _groupsList[%d] is NULL?\n", v11, v13 - 1);
      }

      v12 = v13;
      v11 = *v16;
      v10 = *v16 <= v13++;
      if (v10)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    __break(1u);
    return result;
  }

LABEL_18:
  GlobalHEIFInfo::writeToStream(this, stream, v16, &v18);
  return v18;
}

CFTypeRef GlobalHEIFInfo::createDataRepresentation(GlobalHEIFInfo *this)
{
  v2 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFWriteStreamOpen(v2))
  {
    GlobalHEIFInfo::writeToStream(this, v3);
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

CFIndex OUTLINED_FUNCTION_2_17(int a1, CFReadStreamRef stream, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int buffer)
{
  buffer = 0;

  return CFReadStreamRead(stream, &buffer, 4);
}

CFIndex OUTLINED_FUNCTION_4_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, UInt8 buffer)
{

  return CFReadStreamRead(v14, &buffer, 8);
}

CFStringRef OUTLINED_FUNCTION_11_1(const __CFAllocator *a1, uint64_t a2, CFIndex a3)
{

  return CFStringCreateWithBytes(a1, v3, a3, 0x8000100u, 1u);
}

CFIndex OUTLINED_FUNCTION_13_1(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int buffer)
{
  buffer = 0;

  return CFReadStreamRead(v10, &buffer, 4);
}

double PSDReadPlugin::PSDReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v5 = &unk_1EF4DDB40;
  result = 0.0;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 0u;
  *(v5 + 496) = 0;
  *(v5 + 485) = 1;
  return result;
}

void PSDReadPlugin::~PSDReadPlugin(PSDReadPlugin *this)
{
  *this = &unk_1EF4DDB40;
  v2 = *(this + 62);
  if (v2)
  {
    free(v2);
  }

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  PSDReadPlugin::~PSDReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t PSDReadPlugin::loadDataFromXPCObject(PSDReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_psd", &length);
    if (length == 40)
    {
      v6 = data[1];
      *(this + 29) = *data;
      *(this + 30) = v6;
      *(this + 62) = 0;
      if (*(this + 245))
      {
        size = 0;
        v7 = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_psd_layer", &size);
        if (size == 440 * *(this + 245))
        {
          v8 = malloc_type_malloc(size, 0x100004037BD86E4uLL);
          *(this + 62) = v8;
          memcpy(v8, v7, size);
        }

        else
        {
          *(this + 245) = 0;
        }
      }

      return 0;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t PSDReadPlugin::saveDataToXPCObject(void **this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_psd", this + 58, 0x28uLL);
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_psd_layer", this[62], 440 * *(this + 245));
  }

  return v4;
}

uint64_t PSDReadPlugin::readHeader(uint64_t a1, int *a2)
{
  if (IIOImageReadSession::getBytes(*(a1 + 24), a2, 26) != 26)
  {
    PSDReadPlugin::readHeader();
    return 4294967246;
  }

  v4 = *a2;
  *a2 = bswap32(*a2);
  v5 = *(a2 + 2);
  *(a2 + 2) = __rev16(v5);
  v6 = bswap32(*(a2 + 6));
  *(a2 + 6) = HIWORD(v6);
  v7 = *(a2 + 14);
  v8 = bswap32(v7);
  *(a2 + 14) = v8;
  v9 = *(a2 + 18);
  v10 = bswap32(v9);
  *(a2 + 18) = v10;
  v11 = *(a2 + 11);
  v12 = __rev16(v11);
  *(a2 + 11) = v12;
  v13 = bswap32(*(a2 + 12)) >> 16;
  *(a2 + 12) = v13;
  if (v4 != 1397768760)
  {
    PSDReadPlugin::readHeader();
    return 4294967246;
  }

  if (v5 == 256)
  {
    if (!v7 || v8 >= 0x7531)
    {
      _cg_jpeg_mem_term("readHeader", 200, "*** ERROR: unsupported height (%d)\n");
      return 4294967246;
    }

    if (!v9 || v10 >= 0x7531)
    {
      _cg_jpeg_mem_term("readHeader", 201, "*** ERROR: unsupported width (%d)\n");
      return 4294967246;
    }
  }

  else
  {
    if (v5 != 512)
    {
      _cg_jpeg_mem_term("readHeader", 196, "*** ERROR: bad header version\n");
      return 4294967246;
    }

    if (!v7 || v8 > 0x493E0)
    {
      _cg_jpeg_mem_term("readHeader", 205, "*** ERROR: unsupported height (%d)\n");
      return 4294967246;
    }

    if (!v9 || v10 > 0x493E0)
    {
      _cg_jpeg_mem_term("readHeader", 206, "*** ERROR: unsupported width (%d)\n");
      return 4294967246;
    }

    *(a1 + 487) = 1;
  }

  if (v13 > 9)
  {
    goto LABEL_27;
  }

  if (((1 << v13) & 0x31E) == 0)
  {
    if (!v13)
    {
      if (v11 == 256 && *(a2 + 6) == 1)
      {
        return 0;
      }

      PSDReadPlugin::readHeader();
      return 4294967246;
    }

LABEL_27:
    _cg_jpeg_mem_term("readHeader", 215, "*** ERROR: unsupported mode (%d)\n");
    return 4294967246;
  }

  if (v12 <= 0x20 && ((1 << v12) & 0x100010100) != 0)
  {
    v14 = v6 >> 16;
    if (v14 <= 24 && modeChans[v13] <= v14)
    {
      return 0;
    }

    PSDReadPlugin::readHeader();
  }

  else
  {
    _cg_jpeg_mem_term("readHeader", 223, "*** ERROR: unsupported bitsPerComp\n");
  }

  return 4294967246;
}

char *PSDReadPlugin::parseLayers(PSDReadPlugin *this, IIOScanner *a2, __int16 *a3)
{
  v6 = *(a2 + 2);
  *a3 = 0;
  Val16 = IIOScanner::getVal16(a2);
  LOWORD(v8) = Val16;
  if (Val16 < 0)
  {
    *(this + 488) = 1;
    v8 = -Val16;
  }

  if (v8 >= 8000)
  {
    _cg_jpeg_mem_term("parseLayers", 387, "*** ERROR: unexpected number of layers: %d\n");
    return 0;
  }

  if (*(this + 25) <= v8)
  {
    _cg_jpeg_mem_term("parseLayers", 388, "*** ERROR: unexpected number of layers: %d\n");
    return 0;
  }

  v56 = a3;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    got %d layers\n", v8);
  }

  v9 = malloc_type_calloc(v8, 0x1B8uLL, 0x100004037BD86E4uLL);
  v10 = v9;
  if (!v9)
  {
    PSDReadPlugin::parseLayers();
    return v10;
  }

  v55 = v8;
  if (v8 < 1)
  {
LABEL_61:
    *v56 = v55;
    return v10;
  }

  v11 = 0;
  allocator = *MEMORY[0x1E695E480];
  v59 = v9 + 20;
  v60 = (v9 + 56);
  v57 = v9;
  v58 = v8;
  do
  {
    Val32 = IIOScanner::getVal32(a2);
    v13 = &v10[440 * v11];
    *v13 = Val32;
    v14 = IIOScanner::getVal32(a2);
    *(v13 + 1) = v14;
    v15 = IIOScanner::getVal32(a2);
    *(v13 + 2) = v15;
    v16 = IIOScanner::getVal32(a2);
    v17 = v16;
    *(v13 + 3) = v16;
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    #%d:   {%d, %d, %d, %d}\n", v11, v14, Val32, v16, v15);
    }

    v18 = IIOScanner::getVal16(a2);
    v19 = v18;
    if (v18 >= 0x10)
    {
      _cg_jpeg_mem_term("parseLayers", 433, "*** ERROR: unexpected number of channels: %d (max=%d)\n");
      return v57;
    }

    if (!v18)
    {
      _cg_jpeg_mem_term("parseLayers", 434, "*** ERROR: unexpected number of channels: %d (max=%d)\n");
      return v57;
    }

    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("       : %d channels\n", v18);
    }

    *(v13 + 8) = v19;
    v13[18] = 1;
    if (Val32 >= v15 || v14 >= v17)
    {
      _cg_jpeg_mem_term("parseLayers", 444, "*** NOTE: skipping layer#%d {%d, %d, %d, %d}\n", v11, v14, Val32, v17, v15);
      v13[18] = 0;
    }

    if (v15 - Val32 > *(a2 + 2))
    {
      _cg_jpeg_mem_term("parseLayers", 449, "*** NOTE: skipping layer#%d {%d, %d, %d, %d}\n", v11, v14, Val32, v17, v15);
      v13[18] = 0;
    }

    v20 = v19;
    v21 = v59;
    v22 = v60;
    v10 = v57;
    do
    {
      *v21 = IIOScanner::getVal16(a2);
      if (*(this + 487) == 1)
      {
        Val64 = IIOScanner::getVal64(a2);
      }

      else
      {
        Val64 = IIOScanner::getVal32(a2);
      }

      *v22++ = Val64;
      ++v21;
      --v20;
    }

    while (v20);
    if (IIOScanner::getVal32(a2) != 943868237)
    {
      return v10;
    }

    if (!IIOScanner::getVal32(a2))
    {
      return v10;
    }

    IIOScanner::skip(a2, 4uLL);
    v24 = IIOScanner::getVal32(a2);
    if (!v24 || *(a2 + 2) - *(a2 + 3) <= v24)
    {
      return v10;
    }

    v25 = v24;
    if (v13[18])
    {
      v26 = malloc_type_calloc(v24, 1uLL, 0x8920C3FBuLL);
      if (!v26)
      {
        PSDReadPlugin::parseLayers();
        return v10;
      }

      v27 = v26;
      if (IIOScanner::getBytes(a2, v26, v25) != v25)
      {
        PSDReadPlugin::parseLayers();
        return v10;
      }

      v28 = memmem(v27, v25, "8BIMluni", 8uLL);
      if (v28)
      {
        v29 = v27 - v28 + v25;
        if (v29 >= 17)
        {
          v30 = 2 * bswap32(*(v28 + 3));
          v31 = v29 - 16;
          v32 = v29 - 16;
          if (v31 >= v30)
          {
            v32 = v30;
          }

          if (v32 >= 0x17)
          {
            *(v28 + 7) = -2;
            if (*(v28 + 16) || *(v28 + 17) != 60 || *(v28 + 18) || *(v28 + 19) != 47)
            {
              v33 = CFStringCreateWithBytes(0, v28 + 14, v32 + 2, 0x100u, 1u);
              ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(*(this + 7), @"LayerNames", @"{8BIM}");
              if (!ObjectForKeyGroup)
              {
                ObjectForKeyGroup = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
                IIODictionary::setObjectForKeyGroup(*(this + 7), ObjectForKeyGroup, @"LayerNames", @"{8BIM}");
                CFRelease(ObjectForKeyGroup);
              }

              memset(__dst, 0, sizeof(__dst));
              v35 = IIOArray::IIOArray(__dst, ObjectForKeyGroup);
              IIOArray::addObject(v35, v33);
              CFRelease(v33);
              IIOArray::~IIOArray(__dst);
            }
          }
        }
      }

      free(v27);
    }

    else
    {
      IIOScanner::skip(a2, v24);
    }

    ++v11;
    v59 += 220;
    v60 += 55;
  }

  while (v11 != v58);
  v36 = 0;
  v37 = *(a2 + 3);
  v38 = (v57 + 184);
  do
  {
    v39 = *&v57[440 * v36 + 16];
    v40 = v38;
    if (*&v57[440 * v36 + 16])
    {
      do
      {
        *v40 = v37;
        v41 = *(v40 - 16);
        v42 = __CFADD__(v37, v41);
        v37 += v41;
        if (v42 || v37 >= v6)
        {
          _cg_jpeg_mem_term("parseLayers", 571, "*** ERROR: layer offset (%ld) > fileSize (%d)\n", v37, v6);
          exception = __cxa_allocate_exception(4uLL);
          *exception = -1;
          __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
        }

        ++v40;
        --v39;
      }

      while (v39);
    }

    ++v36;
    v38 += 55;
  }

  while (v36 != v58);
  v43 = 0;
  v44 = (v57 + 184);
  while (1)
  {
    v45 = &v57[440 * v43];
    if (*(v45 + 8))
    {
      break;
    }

LABEL_60:
    ++v43;
    v44 += 55;
    if (v43 == v58)
    {
      goto LABEL_61;
    }
  }

  v46 = 0;
  v47 = v44;
  v48 = v44;
  while (1)
  {
    v50 = *v48++;
    v49 = v50;
    LOWORD(__dst[0]) = 0;
    if (IIOScanner::getBytesAtOffset(a2, __dst, v50, 2uLL) != 2)
    {
      return v10;
    }

    v51 = bswap32(LOWORD(__dst[0])) >> 16;
    LOWORD(__dst[0]) = v51;
    v47[16] = v51;
    IIOScanner::seek(a2, *(v47 - 16) + v49);
    if (*(a2 + 16))
    {
      return v10;
    }

    ++v46;
    v47 = v48;
    if (v46 >= *(v45 + 8))
    {
      goto LABEL_60;
    }
  }
}

uint64_t PSDReadPlugin::initialize(PSDReadPlugin *this, IIODictionary *a2)
{
  *&v102[766] = *MEMORY[0x1E69E9840];
  v97 = 0;
  v98 = 0uLL;
  v99 = 0;
  bzero(colorTable, 0x300uLL);
  v96 = 0;
  v95 = 0;
  memset(v94, 0, sizeof(v94));
  IIOScanner::IIOScanner(v94, *(this + 3));
  IIOScanner::setEndianness(v94, 0);
  ObjectForKey = IIODictionary::getObjectForKey(*(this + 6), @"kCGImageSourceXMPSidecar");
  v93 = IIOSkipMetadata(*(this + 6));
  v3 = IIOSkipXMP_and_IPTC(*(this + 6));
  if (!((*(this + 232) < 2u) | v93 & 1))
  {
    if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
    {
      ImageIOLog("••• Ⓜ️  skipping metadata for thumbnail creation\n");
    }

    v93 = 1;
  }

  if (IIODictionary::containsKey(*(this + 6), @"kCGImageSourceSubsampleFactor"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(*(this + 6), @"kCGImageSourceSubsampleFactor");
  }

  else
  {
    Uint32ForKey = 0;
  }

  if (PSDReadPlugin::readHeader(this, &v97))
  {
    v50 = 4294967246;
LABEL_237:
    kdebug_trace();
    goto LABEL_238;
  }

  *(this + 488) = 1;
  v4 = IIO_Reader::minimumFileSize(*(this + 3));
  IIOScanner::seek(v94, v4);
  __src = IIOScanner::getVal32(v94);
  if (v99 == 2 && !__src)
  {
    goto LABEL_267;
  }

  v91 = 0;
  if (HIWORD(v98) == 16 || HIWORD(v98) == 32)
  {
    goto LABEL_31;
  }

  v5 = __src == 768 && v99 == 2;
  v6 = v5;
  if (__src && v99 != 8 && !v6)
  {
    goto LABEL_267;
  }

  v91 = 0;
  if (!__src || v99 != 2)
  {
    goto LABEL_31;
  }

  if (SWORD2(v98) >= 3)
  {
    _cg_jpeg_mem_term("initialize", 706, "*** ERROR: too many channels (%d) for indexed color image\n", SWORD2(v98));
    goto LABEL_267;
  }

  v7 = malloc_type_calloc(3uLL, 0x100uLL, 0x100004077774924uLL);
  v8 = v7;
  if (!v7)
  {
LABEL_267:
    v50 = 4294967246;
    goto LABEL_238;
  }

  if (IIOScanner::getBytes(v94, v7, 0x300uLL) == 768)
  {
    v9 = v102;
    for (i = 256; i != 512; ++i)
    {
      *(v9 - 2) = v8[i - 256];
      *(v9 - 1) = v8[i];
      *v9 = v8[i + 256];
      v9 += 3;
    }

    v91 = v8;
LABEL_31:
    IIOScanner::seek(v94, (__src + 30));
    Val32 = IIOScanner::getVal32(v94);
    if (*(this + 25) <= Val32)
    {
      v31 = 0;
      goto LABEL_265;
    }

    MetadataFromDatabuffer = 0;
    MetadataFromIPTCDatabuffer = 0;
    cf = 0;
    v90 = 0;
    while (1)
    {
      memset(__dst, 0, sizeof(__dst));
      if (IIOScanner::getVal32(v94) != 943868237)
      {
        if (ObjectForKey)
        {
          v25 = CGImageMetadataCreateFromXMPData(ObjectForKey);
        }

        else
        {
          v25 = 0;
        }

        CGImageMetadataMerge(*(this + 8), MetadataFromDatabuffer, *(this + 6));
        if ((v3 & 1) == 0)
        {
          CGImageMetadataMerge(*(this + 8), MetadataFromIPTCDatabuffer, *(this + 6));
          CGImageMetadataMerge(*(this + 8), cf, *(this + 6));
          CGImageMetadataMerge(*(this + 8), v25, *(this + 6));
        }

        if (MetadataFromDatabuffer)
        {
          goto LABEL_82;
        }

LABEL_83:
        if (MetadataFromIPTCDatabuffer)
        {
          CFRelease(MetadataFromIPTCDatabuffer);
        }

        if (v25)
        {
          CFRelease(v25);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v26 = __src + Val32 + 34;
        IIOScanner::seek(v94, v26, 0);
        if (*(this + 487) != 1)
        {
          v30 = IIOScanner::getVal32(v94);
          if (v30 >= 9)
          {
            v28 = 0;
            goto LABEL_97;
          }

          v29 = 0;
          v28 = 0;
          goto LABEL_114;
        }

        Val64 = IIOScanner::getVal64(v94);
        v28 = Val64;
        if (Val64 < 9)
        {
          v29 = 0;
          v30 = 0;
          goto LABEL_114;
        }

        v31 = 0;
        if (Val64 >= *(this + 25))
        {
          goto LABEL_265;
        }

        v30 = 0;
LABEL_97:
        if (*(this + 487) != 1)
        {
          v34 = IIOScanner::getVal32(v94);
          if (*(this + 25) > v34)
          {
            goto LABEL_102;
          }

          v83 = "*** ERROR: unexpected layerBlockSize=%d [0x%X]\n";
          v84 = 956;
          goto LABEL_264;
        }

        v32 = IIOScanner::getVal64(v94);
        v33 = v32;
        if (v32 >= *(this + 25))
        {
          v31 = 0;
          _cg_jpeg_mem_term("initialize", 951, "*** ERROR: unexpected layerBlockSize=%lld [0x%X]\n", v32, v32);
        }

        else
        {
          LODWORD(v34) = 0;
          if (v33)
          {
LABEL_111:
            v36 = PSDReadPlugin::parseLayers(this, v94, &v96);
            goto LABEL_112;
          }

LABEL_102:
          if (v34)
          {
            goto LABEL_111;
          }

          v34 = IIOScanner::getVal32(v94);
          if (*(this + 25) > v34)
          {
            if (v34)
            {
              IIOScanner::seek(v94, v34, 1);
            }

            if (IIOScanner::getVal32(v94) != 943868237)
            {
              goto LABEL_113;
            }

            v35 = IIOScanner::getVal32(v94);
            if (v35 == 1282552626 || v35 == 1282552118)
            {
              IIOScanner::getVal32(v94);
              v36 = PSDReadPlugin::parseLayers(this, v94, &v96);
LABEL_112:
              v29 = v36;
            }

            else
            {
              if (v35 == 1179480939)
              {
                v29 = 0;
                *(this + 488) = 0;
                goto LABEL_114;
              }

LABEL_113:
              v29 = 0;
            }

LABEL_114:
            __srca = v29;
            if ((v93 & 1) == 0)
            {
              v37 = *(this + 7);
              if (*(this + 487))
              {
                v38 = 2;
              }

              else
              {
                v38 = 1;
              }

              IIONumber::IIONumber(__dst, v38);
              IIODictionary::setObjectForKeyGroup(v37, __dst, @"Version", @"{8BIM}");
              IIONumber::~IIONumber(__dst);
            }

            if (*(this + 487))
            {
              v39 = 8;
            }

            else
            {
              v39 = 4;
            }

            v40 = v30 + v26 + v28 + v39;
            IIOScanner::seek(v94, v40);
            Val16 = IIOScanner::getVal16(v94);
            *(this + 241) = Val16;
            if (v95)
            {
              v31 = -39;
              goto LABEL_258;
            }

            if (Val16 > 1)
            {
              v31 = -4;
              goto LABEL_128;
            }

            if (!Val16)
            {
              v42 = *(&v98 + 10);
              v43 = *(&v98 + 6);
              v44 = SWORD2(v98);
              v45 = SHIWORD(v98);
              if (IIOImageReadSession::getSize(*(this + 3)) < v43 * v42 * v44 * ((v45 + 7) >> 3))
              {
                v46 = *(&v98 + 10);
                v47 = *(&v98 + 6);
                v48 = SWORD2(v98);
                Size = IIOImageReadSession::getSize(*(this + 3));
                _cg_jpeg_mem_term("initialize", 1032, "*** ERROR: truncated file? %d x %d x %d  -  fileSize: %d\n", v46, v47, v48, Size);
                goto LABEL_127;
              }
            }

            v51 = 1196573017;
            v52 = v99;
            if (v99 <= 3u)
            {
              v53 = Uint32ForKey;
              if (v99 < 2u)
              {
                goto LABEL_140;
              }

              if (v99 != 2)
              {
                if (v99 == 3)
                {
                  v51 = 1380401696;
                  goto LABEL_140;
                }

                goto LABEL_141;
              }

              *(this + 85) = 1380401696;
              if (!v91)
              {
LABEL_190:
                v31 = 0;
                _cg_jpeg_mem_term("initialize", 1063, "*** ERROR: bad header data: modeIndexed, but no paletteData\n");
                v50 = 4294967246;
                v91 = 0;
                if (!v29)
                {
                  goto LABEL_234;
                }

                goto LABEL_233;
              }

LABEL_142:
              v54 = *(this + 20);
              if (!v54)
              {
                v54 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
              }

              if (CGColorSpaceGetModel(v54) == kCGColorSpaceModelRGB)
              {
                *(this + 20) = CGColorSpaceCreateIndexed(v54, 0xFFuLL, colorTable);
                CGColorSpaceRelease(v54);
                goto LABEL_147;
              }

              _cg_jpeg_mem_term("initialize", 1055, "*** ERROR: header says indexed color, but ICC profile is not RGB\n");
LABEL_127:
              v31 = 0;
LABEL_128:
              v50 = 4294967246;
              if (!v29)
              {
                goto LABEL_234;
              }

              goto LABEL_233;
            }

            v53 = Uint32ForKey;
            if (v99 == 4)
            {
              v51 = 1129142603;
            }

            else if (v99 != 8)
            {
              if (v99 != 9)
              {
                goto LABEL_141;
              }

              v51 = 1281450528;
            }

LABEL_140:
            *(this + 85) = v51;
LABEL_141:
            if (v91)
            {
              goto LABEL_142;
            }

            if (v52 == 2)
            {
              goto LABEL_190;
            }

LABEL_147:
            v55 = v96;
            v56 = v96;
            if ((*(this + 485) & 1) != 0 || v96 < 1)
            {
              *(this + 262) = 0;
              v59 = v99;
              if (modeChans[v99] >= SWORD2(v98))
              {
                if (v99 == 3)
                {
                  v57 = 0;
                  v58 = 5;
                  *(this + 262) = 5;
                  v59 = 3;
                }

                else
                {
                  v58 = 0;
                  v57 = 1;
                }
              }

              else
              {
                v58 = 3;
                *(this + 262) = 3;
                if ((v90 & 0x100000000) != 0)
                {
                  if ((v90 & (HIWORD(v98) == 8)) == 1)
                  {
                    v57 = 0;
                    if (*(this + 488) == 1)
                    {
                      v58 = 1;
                    }

                    else
                    {
                      v58 = 5;
                    }

                    *(this + 262) = v58;
                  }

                  else
                  {
                    v57 = 0;
                    v58 = 3;
                  }
                }

                else
                {
                  v57 = 0;
                }
              }
            }

            else
            {
              v57 = 0;
              v58 = 1;
              *(this + 262) = 1;
              v59 = v99;
            }

            *(this + 294) = v58;
            v60 = WORD2(v98);
            v61 = WORD2(v98);
            *(this + 116) = SWORD2(v98);
            *(this + 130) = v60;
            v62 = modeChans[v59];
            if (v61 - v62 < 2)
            {
              if (v61 - v62 == 1)
              {
                *(this + 489) = 1;
              }

              v63 = v61;
            }

            else
            {
              v63 = v62 + 1;
              *(this + 130) = v62 + 1;
              *(this + 489) = 1;
              v61 = (v62 + 1);
            }

            if (v62 == v61)
            {
              v64 = v57;
            }

            else
            {
              v64 = 1;
            }

            if ((v64 & 1) == 0)
            {
              *(this + 130) = ++v63;
            }

            v65 = *(&v98 + 10);
            v66 = *(&v98 + 6);
            *(this + 61) = *(&v98 + 10);
            *(this + 62) = v66;
            if (!v53)
            {
              v67 = *(this + 57);
              if (v67)
              {
                v68 = v65 / v67;
                if (v68 <= v66 / v67)
                {
                  v68 = v66 / v67;
                }

                v53 = v68;
              }

              else
              {
                v53 = 0;
              }
            }

            v69 = HIWORD(v98);
            if (v59 == 2 || HIWORD(v98) == 32)
            {
              v71 = 0;
            }

            else
            {
              v71 = v53;
            }

            if (v65 >= v66)
            {
              v72 = v66;
            }

            else
            {
              v72 = v65;
            }

            if (v71 - 1 >= v72)
            {
              v74 = 0;
              *(this + 166) = 0;
            }

            else
            {
              if (v71 > 0x7F)
              {
                v73 = 128;
                goto LABEL_209;
              }

              if (v71 > 0x3F)
              {
                v73 = 64;
                goto LABEL_209;
              }

              if (v71 > 0x1F)
              {
                v73 = 32;
                goto LABEL_209;
              }

              if (v71 > 0xF)
              {
                v73 = 16;
                goto LABEL_209;
              }

              if (v71 > 7)
              {
                v73 = 8;
                goto LABEL_209;
              }

              if (v71 >= 4)
              {
                v73 = 4;
LABEL_209:
                *(this + 166) = v73;
LABEL_210:
                *(this + 69) = v65 / v73;
                *(this + 70) = v66 / v73;
                v74 = ((v65 * v69 * v63 + 7) >> 3) / v73;
                *(this + 71) = v74;
                v75 = 316;
LABEL_211:
                *(this + v75) = v74;
                v76 = v63 * v69;
                *(this + 129) = v76;
                *(this + 128) = v69;
                *(this + 372) = 1;
                *(this + 374) = 0;
                if (v69 == 16)
                {
                  v77 = 263;
LABEL_215:
                  *(this + v77) = 1;
                }

                else if (v69 == 32)
                {
                  *(this + 265) = 1;
                  v77 = 373;
                  goto LABEL_215;
                }

                if ((v57 & 1) == 0)
                {
                  if (v76 == 32)
                  {
                    v78 = 0;
LABEL_221:
                    *(this + 263) = v78;
                  }

                  else if (v76 == 64)
                  {
                    v78 = 1;
                    goto LABEL_221;
                  }
                }

                if (v56 >= 1 && v29)
                {
                  *(this + 245) = v56;
                  v79 = 440 * v55;
                  v80 = malloc_type_calloc(v79, 1uLL, 0x100004037BD86E4uLL);
                  *(this + 62) = v80;
                  if (!v80)
                  {
                    v31 = 0;
                    _cg_jpeg_mem_term("initialize", 1202, "*** ERROR: failed to allocate '_psd._layerPtr'\n");
                    v50 = 4294967246;
                    goto LABEL_233;
                  }

                  memcpy(v80, v29, v79);
                }

                if ((gIIODebugFlags & 0x30000) != 0)
                {
                  v81 = ImageIOLog("    PSD-layers\n");
                  PSDReadPlugin::dumpLayers(v81, *(this + 245), *(this + 62));
                }

                *(this + 63) = ((*(this + 129) + 7) >> 3) * *(this + 61);
                *(this + 59) = 0;
                *(this + 240) = v99;
                *(this + 26) = v40;
                *(this + 484) = 0;
                *(this + 49) = 1;
                if (*(this + 85) == 1281450528)
                {
                  *(this + 486) = 1;
                }

                if (*(this + 145) == 32)
                {
                  *(this + 378) = 1;
                }

                v50 = 0;
                v31 = 0;
                *(this + 204) = 1;
                if (!v29)
                {
                  goto LABEL_234;
                }

LABEL_233:
                free(v29);
                goto LABEL_234;
              }

              *(this + 166) = 2 * (v71 != 1);
              if (v71 != 1)
              {
                v73 = 2;
                goto LABEL_210;
              }

              v74 = 0;
            }

            v75 = 252;
            goto LABEL_211;
          }

          v83 = "*** ERROR: unexpected maskBlockSize=%d [0x%X]\n";
          v84 = 972;
LABEL_264:
          v31 = 0;
          _cg_jpeg_mem_term("initialize", v84, v83, v34, v34);
        }

LABEL_265:
        v50 = 4294967246;
        goto LABEL_234;
      }

      v13 = IIOScanner::getVal16(v94);
      Val8 = IIOScanner::getVal8(v94);
      if (IIOScanner::copyBytes(v94, __dst, Val8 | 1) != (Val8 | 1) || (*(__dst + Val8) = 0, v15 = IIOScanner::getVal32(v94), v16 = v15, (v15 & 0x80000000) != 0))
      {
        v25 = 0;
        if (!MetadataFromDatabuffer)
        {
          goto LABEL_83;
        }

LABEL_82:
        CFRelease(MetadataFromDatabuffer);
        goto LABEL_83;
      }

      v17 = (v15 + 1) & 0xFFFFFFFE;
      if (v13 == 1082)
      {
        break;
      }

      if (v13 == 1028)
      {
        BYTE4(v90) = 1;
      }

      if ((v13 != 1028) | (v93 | v3) & 1)
      {
        if ((v13 & 0xFFFE) == 0x422)
        {
          if (v17)
          {
            v18 = malloc_type_calloc((v15 + 1) & 0xFFFFFFFE, 1uLL, 0xCD348B33uLL);
            if (v18)
            {
              if (IIOScanner::getBytes(v94, v18, (v16 + 1) & 0xFFFFFFFE) != v17)
              {
                v19 = v18;
                _cg_jpeg_mem_term("initialize", 806, "*** ERROR: can't read kPhotoshopExif data\n");
                goto LABEL_251;
              }

              IIOMetadataFlagsFromImageSourceOptions(*(this + 6));
              if (MetadataFromDatabuffer)
              {
                CFRelease(MetadataFromDatabuffer);
              }

              v19 = v18;
              MetadataFromDatabuffer = CreateMetadataFromDatabuffer(v18, v16);
              goto LABEL_75;
            }
          }
        }

        else if (v13 == 1039)
        {
          if (v17)
          {
            v21 = malloc_type_calloc((v15 + 1) & 0xFFFFFFFE, 1uLL, 0x30242734uLL);
            if (v21)
            {
              if (IIOScanner::getBytes(v94, v21, v17) != v17)
              {
                v19 = v21;
                _cg_jpeg_mem_term("initialize", 829, "*** ERROR: can't read kPhotoshopICC data\n");
                goto LABEL_251;
              }

              *(this + 20) = CGColorSpaceCreateWithCopyOfData(v21, v17);
              v19 = v21;
              goto LABEL_75;
            }
          }
        }

        else
        {
          v23 = v13 != 1060 || ObjectForKey != 0;
          if ((v23 | v93 | v3))
          {
            if (v13 == 1057)
            {
              IIOScanner::getVal32(v94);
              *(this + 485) = IIOScanner::getVal8(v94) != 0;
              IIOScanner::skip(v94, (v17 - 5));
            }

            else
            {
LABEL_48:
              IIOScanner::skip(v94, (v15 + 1) & 0xFFFFFFFE);
            }
          }

          else if (v17)
          {
            v24 = malloc_type_calloc((v15 + 1) & 0xFFFFFFFE, 1uLL, 0x457A56ABuLL);
            if (v24)
            {
              v19 = v24;
              if (IIOScanner::getBytes(v94, v24, (v16 + 1) & 0xFFFFFFFE) != v17)
              {
                _cg_jpeg_mem_term("initialize", 844, "*** ERROR: can't read kPhotoshopXMP data\n");
LABEL_251:
                __srca = 0;
                v31 = 0;
                if (MetadataFromDatabuffer)
                {
                  CFRelease(MetadataFromDatabuffer);
                }

                if (MetadataFromIPTCDatabuffer)
                {
                  CFRelease(MetadataFromIPTCDatabuffer);
                }

                if (cf)
                {
                  CFRelease(cf);
                }

                free(v19);
LABEL_258:
                v50 = 4294967246;
                v29 = __srca;
                if (!__srca)
                {
LABEL_234:
                  v8 = v91;
                  if (v91)
                  {
                    goto LABEL_235;
                  }

                  goto LABEL_236;
                }

                goto LABEL_233;
              }

              if (cf)
              {
                CFRelease(cf);
              }

              cf = CreateMetadataFromXMPBuffer(v19, v16);
LABEL_75:
              free(v19);
            }
          }
        }
      }

      else if (v17)
      {
        v20 = malloc_type_calloc((v15 + 1) & 0xFFFFFFFE, 1uLL, 0xBECB565FuLL);
        if (v20)
        {
          v19 = v20;
          if (IIOScanner::getBytes(v94, v20, (v16 + 1) & 0xFFFFFFFE) != v17)
          {
            _cg_jpeg_mem_term("initialize", 784, "*** ERROR: can't read kPhotoshopIPTC data\n");
            goto LABEL_251;
          }

          if (MetadataFromIPTCDatabuffer)
          {
            CFRelease(MetadataFromIPTCDatabuffer);
          }

          MetadataFromIPTCDatabuffer = CreateMetadataFromIPTCDatabuffer(v19, v16);
          goto LABEL_75;
        }
      }
    }

    LOBYTE(v90) = 1;
    goto LABEL_48;
  }

  v31 = 0;
  _cg_jpeg_mem_term("initialize", 713, "*** ERROR: can't read PSD color palette\n");
  v50 = 4294967246;
LABEL_235:
  free(v8);
LABEL_236:
  if (v31)
  {
    goto LABEL_237;
  }

LABEL_238:
  IIOScanner::~IIOScanner(v94);
  return v50;
}

void sub_1860C944C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1860C92C8);
  }

  _Unwind_Resume(exception_object);
}

const char *PSDReadPlugin::dumpLayers(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = 0;
    v5 = a2;
    v6 = (a3 + 184);
    v7 = a3 + 20;
    do
    {
      v8 = a3 + 440 * v4;
      ImageIOLog("#%2d:  {%d, %d, %d, %d}   \n", v4, *(v8 + 4), *v8, *(v8 + 12), *(v8 + 8));
      result = ImageIOLog("       %d channels:\n", *(v8 + 16));
      if (*(v8 + 16))
      {
        v10 = 0;
        v11 = v6;
        do
        {
          result = ImageIOLog("          id: %2d    size: %8lld    offset: 0x%08X    compression: %d\n", *(v7 + 2 * v10++), *(v11 - 16), *v11, v11[16]);
          ++v11;
        }

        while (v10 < *(v8 + 16));
      }

      ++v4;
      v6 += 55;
      v7 += 440;
    }

    while (v4 != v5);
  }

  return result;
}

void PSDReadPlugin::convertPremulWhiteToBlack8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 24);
    v7 = v6;
    v9 = *(a2 + 40);
    v8 = *(a2 + 48);
    v10 = v9 + 1;
    do
    {
      if (a4 == 3)
      {
        if (v7)
        {
          v13 = v6;
          v14 = v10;
          do
          {
            v15 = ~v14[2];
            *(v14 - 1) += v14[2] + 1;
            *v14 -= v15;
            v14[1] -= v15;
            v14 += a3;
            --v13;
          }

          while (v13);
        }
      }

      else if (a4 == 1)
      {
        v11 = v6;
        v12 = v9;
        if (v7)
        {
          do
          {
            *v12 += v12[1] + 1;
            v12 += a3;
            --v11;
          }

          while (v11);
        }
      }

      v9 += v8;
      ++v5;
      v10 += v8;
    }

    while (v5 != v4);
  }
}

uint64_t PSDReadPlugin::decode_packbits(PSDReadPlugin *this, const unsigned __int8 *a2, unsigned __int8 *__dst, unsigned int a4, unsigned int a5, int a6, char a7, int a8, unsigned int a9)
{
  if (a5)
  {
    v10 = __dst;
    v36 = 0;
    v12 = a5;
    v13 = &__dst[a5];
    v14 = a4;
    v15 = *(this + 162);
LABEL_3:
    v16 = 0;
    v17 = 0;
    while (1)
    {
      if (v14 + v16 < 1)
      {
        return 0;
      }

      v18 = a2[v17];
      if ((v18 & 0x8000000000000000) == 0)
      {
        break;
      }

      ++v17;
      --v16;
      if (v18 != -128)
      {
        v19 = 1 - v18;
        if (v12 >= 1 - v18)
        {
          v20 = 1 - v18;
        }

        else
        {
          _cg_jpeg_mem_term("decode_packbits", 1496, "*** WARNING: channel[%d] row[%d] clamping repeat count from %lld to %lld to avoid buffer overrun\n", a8, a9, 1 - v18, v12);
          v20 = v12;
        }

        if (v14 == v17)
        {
          _cg_jpeg_mem_term("decode_packbits", 1503, "*** WARNING: channel[%d] row[%d] PackBits data truncated - missing repeat byte, preserving partial decode\n", a8, a9);
          return 0;
        }

        v28 = v12 - v20;
        v29 = &a2[v17];
        v31 = *v29;
        a2 = v29 + 1;
        v30 = v31;
        v14 += ~v17;
        if (a6 == 1)
        {
          if (v12 >= v19)
          {
            v32 = v19;
          }

          else
          {
            v32 = v12;
          }

          if (v32 >= 1)
          {
            v32 = 1;
          }

          v33 = v20 - v32 + 1;
          memset(v10, v30, v33);
          v10 += v33;
        }

        else if (v10 < v13)
        {
          do
          {
            *v10 = v30 ^ a7;
            v10 += v15;
            v34 = v20-- <= 1;
          }

          while (!v34 && v10 < v13);
        }

LABEL_37:
        v12 = v28;
        if (v28 >= 1)
        {
          goto LABEL_3;
        }

        return 0;
      }
    }

    if (v12 <= v18)
    {
      _cg_jpeg_mem_term("decode_packbits", 1528, "*** WARNING: channel[%d] row[%d] clamping literal count from %lld to %lld to avoid buffer overrun\n", a8, a9, v18 + 1, v12);
      v18 = v12 - 1;
    }

    v21 = v14 + v16;
    v22 = ~v17 + v14;
    if (v21 <= v18 + 1)
    {
      _cg_jpeg_mem_term("decode_packbits", 1535, "*** WARNING: channel[%d] row[%d] PackBits data truncated - expected %lld literal bytes, only %lld available, copying what we can\n", a8, a9, v18 + 1, ~v17 + v14);
      if (v14 - 1 == v17)
      {
        return 0;
      }

      v18 = v14 - v17 - 2;
      v36 = 1;
    }

    v23 = &a2[v17 + 1];
    if (a6 == 1)
    {
      memcpy(v10, v23, v18 + 1);
      v10 += v18 + 1;
      v12 -= v18 + 1;
      v23 = &a2[v18 + 2 + v17];
      v22 = v14 - v18 - v17 - 2;
    }

    else if ((v18 & 0x8000000000000000) == 0)
    {
      v24 = 1;
      while (v10 < v13)
      {
        v25 = v22 - 1;
        if (v22 < 1)
        {
          break;
        }

        *v10 = a2[v17 + v24] ^ a7;
        v10 += v15;
        --v12;
        v26 = v24 + 1;
        v27 = v24++ - 1;
        --v22;
        if (v18 <= v27)
        {
          v23 = &a2[v17 + v26];
          v22 = v25;
          goto LABEL_36;
        }
      }

      v23 = &a2[v17 + v24];
    }

LABEL_36:
    v14 = v22;
    a2 = v23;
    v28 = v12;
    if ((v36 & (v22 == 0)) != 0)
    {
      return 0;
    }

    goto LABEL_37;
  }

  return 0;
}

void PSDReadPlugin::decode_32_bit_predictor(PSDReadPlugin *this, unsigned __int8 *a2, unsigned __int8 *a3, int a4, unsigned int a5)
{
  v5 = 4 * a5;
  if (a4)
  {
    v6 = 0;
    v7 = a2 + 1;
    do
    {
      v8 = a2[v6 * v5];
      v9 = (v5 - 1);
      v10 = v7;
      do
      {
        v8 += *v10;
        *v10++ = v8;
        --v9;
      }

      while (v9);
      ++v6;
      v7 += v5;
    }

    while (v6 != a4);
  }

  v11 = (v5 * a4);
  if (v11)
  {
    v12 = 0;
    for (i = 0; i < v11; i += v5)
    {
      if (a5)
      {
        v14 = i;
        do
        {
          if (v5)
          {
            v15 = v14;
            do
            {
              a3[v12++] = a2[v15];
              v15 += a5;
            }

            while (v15 < v14 + v5);
          }

          ++v14;
        }

        while (v14 < i + a5);
      }
    }
  }
}

void PSDReadPlugin::mergeLayers(PSDReadPlugin *this, IIODecodeFrameParams *a2)
{
  if (*(this + 62))
  {
    v3 = *(this + 245);
    if (*(this + 245))
    {
      v5 = 0;
      v6 = 0;
      v7 = *(a2 + 1);
      v8 = *(a2 + 2);
      v9 = *(a2 + 4);
      r1 = *(a2 + 3);
      do
      {
        memcpy(__dst, (*(this + 62) + v5), 0x1B8uLL);
        if ((__dst[4] & 0x10000) != 0)
        {
          v11 = __dst[2];
          v10 = __dst[3];
          v13 = __dst[0];
          v12 = __dst[1];
          v14 = __dst[3] - __dst[1];
          v15 = __dst[1];
          v34.origin.y = __dst[0];
          v34.size.width = (__dst[3] - __dst[1]);
          v34.size.height = (__dst[2] - __dst[0]);
          v32.origin.x = v7;
          v32.origin.y = v8;
          v32.size.width = r1;
          v32.size.height = v9;
          v34.origin.x = __dst[1];
          v33 = CGRectIntersection(v32, v34);
          v30 = v33;
          v16 = *(this + 160);
          if ((v16 & 7) != 0)
          {
            return;
          }

          x = v33.origin.x;
          if (*(a2 + 6) >= 4 * *(a2 + 3) && v11 > v13 && v10 > v12)
          {
            y = v33.origin.y;
            width = v33.size.width;
            height = v33.size.height;
            if (!CGRectIsEmpty(v33))
            {
              v23 = PSDReadPlugin::decodeLayer(this, __dst, &v30);
              if (v23)
              {
                v24 = v23;
                v25 = v16 >> 3;
                srcTop.data = v23 + (v16 >> 3) * ((v12 >> 31) & (4 * (x - v15)));
                srcTop.height = height;
                srcTop.width = width;
                srcTop.rowBytes = 4 * v14 * (v16 >> 3);
                v26 = *(a2 + 6);
                dest.data = (*(a2 + 5) + v26 * (y - v8) + 4 * (x - v7) * (v16 >> 3));
                dest.height = height;
                dest.width = width;
                dest.rowBytes = v26;
                if (v16 >> 3 == 4)
                {
                  AlphaBlend<unsigned int>(&srcTop, &dest, &dest);
                }

                else if (v25 == 2)
                {
                  AlphaBlend<unsigned short>(&srcTop, &dest, &dest);
                }

                else if (v25 == 1)
                {
                  vImageAlphaBlend_ARGB8888(&srcTop, &dest, &dest, 0x10u);
                }

                free(v24);
              }
            }
          }

          v3 = *(this + 245);
        }

        ++v6;
        v5 += 440;
      }

      while (v6 < v3);
    }
  }

  else
  {
    PSDReadPlugin::mergeLayers();
  }
}

uint64_t AlphaBlend<unsigned short>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[3];
  if (v3 < 8 * a2[2])
  {
    _cg_jpeg_mem_term("AlphaBlend", 59, "*** ERROR: invalid rowBytes[%d] < width[%d]*bpc[%d]*4\n", v3, a2[2], 2);
    return -50;
  }

  else
  {
    v4 = a1[1];
    if (v4)
    {
      LODWORD(v5) = 0;
      v6 = *a1;
      v7 = *a2;
      v8 = *a3;
      v9 = a1[2];
      v10 = a1[3];
      v11 = a3[3];
      do
      {
        if (v9)
        {
          v12 = 0;
          v13 = 1;
          do
          {
            v14 = (v8 + v12);
            v15 = *(v6 + v12);
            v16 = *(v6 + v12 + 4);
            v17 = *(v6 + v12 + 6);
            v18 = *(v7 + v12 + 2);
            v19 = *(v7 + v12 + 4);
            *v14 = *(v6 + v12 + 2) + *(v7 + v12) * ~v15;
            v14[1] = v16 + v18 * ~v15;
            v14[2] = v17 + v19 * ~v15;
            v14[3] = v15;
            v12 += 8;
          }

          while (v9 > v13++);
        }

        v6 += v10;
        v7 += v3;
        v8 += v11;
        v5 = (v5 + 1);
      }

      while (v4 > v5);
    }

    return 0;
  }
}

uint64_t AlphaBlend<unsigned int>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[3];
  if (v3 < 16 * a2[2])
  {
    _cg_jpeg_mem_term("AlphaBlend", 59, "*** ERROR: invalid rowBytes[%d] < width[%d]*bpc[%d]*4\n", v3, a2[2], 4);
    return -50;
  }

  else
  {
    v4 = a1[1];
    if (v4)
    {
      LODWORD(v5) = 0;
      v6 = *a1;
      v7 = *a2;
      v8 = *a3;
      v9 = a1[2];
      v10 = a1[3];
      v11 = a3[3];
      do
      {
        if (v9)
        {
          v12 = 0;
          v13 = 1;
          do
          {
            v14 = (v8 + v12);
            v15 = *(v6 + v12);
            v16 = *(v6 + v12 + 12);
            v17 = *(v7 + v12 + 8);
            *v14 = vmla_s32(*(v6 + v12 + 4), *(v7 + v12), vdup_n_s32(~v15));
            v14[1].i32[0] = v16 + v17 * ~v15;
            v14[1].i32[1] = v15;
            v12 += 16;
          }

          while (v9 > v13++);
        }

        v6 += v10;
        v7 += v3;
        v8 += v11;
        v5 = (v5 + 1);
      }

      while (v4 > v5);
    }

    return 0;
  }
}

void PSDReadPlugin::handlePremultiplication(PSDReadPlugin *this, IIODecodeFrameParams *a2, unsigned int a3)
{
  if (*(this + 484) == 1 && *(this + 294))
  {
    v5 = *(this + 240);
    if (v5 == 1)
    {
      if (*(this + 128) == 8)
      {

        PSDReadPlugin::convertPremulWhiteToBlack8(this, a2, a3, 1);
      }
    }

    else if (v5 == 3 && *(this + 128) == 8)
    {
      v9 = v3;
      v10 = v4;
      v6 = *(a2 + 6);
      v8.data = *(a2 + 5);
      v7 = vcvtq_u64_f64(*(a2 + 24));
      *&v8.height = vextq_s8(v7, v7, 8uLL);
      v8.rowBytes = v6;
      vImagePremultiplyData_RGBA8888(&v8, &v8, 0x10u);
    }
  }
}

uint64_t PSDReadPlugin::readDataSizeTable(PSDReadPlugin *this, unsigned int **a2, unsigned int **a3, unint64_t *a4)
{
  v7 = *(this + 62);
  if (!v7)
  {
    PSDReadPlugin::readDataSizeTable();
LABEL_30:
    v12 = 0;
    v19 = 0;
    v11 = 0;
    goto LABEL_34;
  }

  v9 = *(this + 116);
  if (!v9)
  {
    PSDReadPlugin::readDataSizeTable();
    goto LABEL_30;
  }

  v10 = v7 * v9;
  if ((v10 & 0xFFFFFFFF00000000) != 0)
  {
    _cg_jpeg_mem_term("readDataSizeTable", 2158, "*** ERROR: bad numValues (%d x %d)\n");
    goto LABEL_30;
  }

  if (v10 >> 30)
  {
    _cg_jpeg_mem_term("readDataSizeTable", 2161, "*** ERROR: bad table size %d x %d\n");
    goto LABEL_30;
  }

  v11 = malloc_type_calloc((4 * v10), 1uLL, 0x100004052888210uLL);
  if (!v11)
  {
    PSDReadPlugin::readDataSizeTable();
    v12 = 0;
    goto LABEL_33;
  }

  v12 = malloc_type_calloc((4 * v10), 1uLL, 0x100004052888210uLL);
  if (!v12)
  {
    PSDReadPlugin::readDataSizeTable();
    goto LABEL_33;
  }

  if (*(this + 487) != 1)
  {
    v19 = malloc_type_calloc((2 * v10), 1uLL, 0x1000040BDFB0063uLL);
    if (v19)
    {
      if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v19, *(this + 26) + 2, (2 * v10)) == 2 * v10)
      {
        if (v10)
        {
          v20 = 0;
          v13 = 0;
          v21 = *(this + 26) + 2 * (*(this + 116) * *(this + 62)) + 2;
          do
          {
            v22 = bswap32(*&v19[2 * v20]);
            v23 = HIWORD(v22);
            v11[v20] = v23;
            if (v13 <= HIWORD(v22))
            {
              v13 = HIWORD(v22);
            }

            v12[v20] = v21;
            v21 += v23;
            ++v20;
          }

          while (v10 != v20);
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_24;
      }
    }

    else
    {
      PSDReadPlugin::readDataSizeTable();
    }

LABEL_34:
    free(v19);
    free(v11);
    v25 = 0;
    v24 = 0;
    v11 = 0;
    v19 = v12;
    v12 = 0;
    goto LABEL_25;
  }

  if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v11, *(this + 26) + 2, (4 * v10)) != 4 * v10)
  {
LABEL_33:
    v19 = 0;
    goto LABEL_34;
  }

  v13 = 0;
  if (v10)
  {
    v14 = *(this + 26) + 4 * (*(this + 116) * *(this + 62)) + 2;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    do
    {
      v18 = bswap32(*v16);
      if (v18 > v13)
      {
        v13 = v18;
      }

      *v16++ = v18;
      *v17++ = v14;
      v14 += v18;
      --v15;
    }

    while (v15);
  }

  v19 = 0;
LABEL_24:
  v24 = v13;
  v25 = 1;
LABEL_25:
  free(v19);
  *a2 = v11;
  *a3 = v12;
  *a4 = v24;
  return v25;
}

uint64_t PSDReadPlugin::decodeBlock(PSDReadPlugin *this, IIODecodeFrameParams *a2, unsigned int a3, unsigned int a4)
{
  v5 = a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 4);
  v8 = *(this + 61);
  v9 = *(this + 128);
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v91 = this;
  if (*(this + 485) != 1)
  {
    if (*(this + 262))
    {
      bzero(*(a2 + 5), *(a2 + 6) * v7);
      this = v91;
      v9 = *(v91 + 128);
    }

    if (v9 == 1)
    {
      goto LABEL_100;
    }

    PSDReadPlugin::mergeLayers(v91, v5);
    this = v91;
    v15 = *(v5 + 6);
    dest.data = *(v5 + 5);
    v16 = vcvtq_u64_f64(*(v5 + 24));
    *&dest.height = vextq_s8(v16, v16, 8uLL);
    dest.rowBytes = v15;
    if (*(v91 + 160) != 8)
    {
      goto LABEL_100;
    }

    if (*(v91 + 436) == 1)
    {
      v17 = 66051;
    }

    else
    {
      if (v15 < 4 * v16.i64[0])
      {
        _cg_jpeg_mem_term("decodeBlock", 2479, "*** ERROR: vImagePermuteChannels_ARGB8888 - width: %d  rowBytes: %d\n", v16.i32[0], v15);
LABEL_99:
        this = v91;
LABEL_100:
        v23 = 0;
        v13 = 0;
        v70 = 0;
        goto LABEL_101;
      }

      v17 = 197121;
    }

    *permuteMap = v17;
    vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
    goto LABEL_99;
  }

  v11 = v8 * v9 + 7;
  v12 = v11 >> 3;
  if (*(this + 241) == 1)
  {
    v13 = 0;
    if (!PSDReadPlugin::readDataSizeTable(this, &v95, &v96, &v94))
    {
      goto LABEL_116;
    }

    v14 = v94;
    if (!v94)
    {
      goto LABEL_116;
    }
  }

  else
  {
    v14 = v11 >> 3;
    if (v11 < 8)
    {
      v13 = 0;
      goto LABEL_116;
    }
  }

  v13 = malloc_type_calloc(v14, 1uLL, 0x100004077774924uLL);
  if (!v13)
  {
    PSDReadPlugin::decodeBlock();
    goto LABEL_116;
  }

  if (*(v91 + 128) == 1)
  {
    if (malloc_type_calloc(*(v5 + 6), 1uLL, 0x100004077774924uLL))
    {
      operator new();
    }

    PSDReadPlugin::decodeBlock();
LABEL_116:
    *(v5 + 8) = 0;
    v74 = 4294967246;
    if (v13)
    {
      goto LABEL_105;
    }

    goto LABEL_106;
  }

  if (*(v91 + 294) - 5 <= 1)
  {
    if (*(v91 + 373) != 1)
    {
LABEL_22:
      memset(*(v5 + 5), 255, (*(v5 + 4) * *(v5 + 6)));
      goto LABEL_23;
    }

    v18 = *(v91 + 144);
    if (v18 != 32)
    {
      if (v18 == 16)
      {
        v20 = *(v5 + 3);
        v19 = *(v5 + 4);
        v21 = *(v5 + 6);
        dest.data = *(v5 + 5);
        dest.height = v19;
        dest.width = 4 * v20;
        dest.rowBytes = v21;
        vImageOverwriteChannelsWithScalar_Planar16U(0x3C00u, &dest, 0x10u);
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v76 = *(v5 + 3);
    v75 = *(v5 + 4);
    v77 = *(v5 + 6);
    dest.data = *(v5 + 5);
    dest.height = v75;
    dest.width = 4 * v76;
    dest.rowBytes = v77;
    vImageOverwriteChannelsWithScalar_PlanarF(1.0, &dest, 0x10u);
  }

LABEL_23:
  v87 = malloc_type_malloc(*(v5 + 12), 0x100004077774924uLL);
  v79 = a4;
  if (!a3)
  {
    v23 = 0;
    this = v91;
LABEL_85:
    if (*(this + 85) == 1380401696)
    {
      a4 = v79;
      v70 = v87;
      if (*(this + 116) == 4 && *(this + 294) == 5)
      {
        v71 = *(v5 + 6);
        dest.data = *(v5 + 5);
        v72 = vcvtq_u64_f64(*(v5 + 24));
        *&dest.height = vextq_s8(v72, v72, 8uLL);
        dest.rowBytes = v71;
        v73 = *(this + 160);
        if (v73 == 8)
        {
          vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &dest, &dest, 1u, 0x10u);
        }

        else
        {
          _cg_jpeg_mem_term("decodeBlock", 2449, "*** RGB-%d: check alpha-one?\n", v73);
        }

        this = v91;
      }
    }

    else
    {
      a4 = v79;
      v70 = v87;
    }

LABEL_101:
    PSDReadPlugin::handlePremultiplication(this, v5, a4);
    v74 = 0;
    goto LABEL_102;
  }

  v85 = v12;
  v22 = 0;
  v23 = 0;
  v24 = v6;
  v25 = a4;
  v81 = (v7 + v24);
  v88 = v81 - v24;
  v80 = a3;
  v82 = 2 * a4;
  v83 = 4 * a4;
  v84 = -50;
  this = v91;
  while (1)
  {
    v26 = v22;
    if (v22 <= 3)
    {
      v26 = v22;
      if (*(this + 436) == 1)
      {
        v26 = *(&xmmword_186224A90 + v22);
      }
    }

    v27 = *(this + 240);
    v28 = v27 != 4 || v26 >= 4;
    v29 = !v28 || v27 == 0;
    v30 = v29;
    v31 = *(this + 241) == 1 ? (*(this + 62) * v22) : *(this + 26) + v85 * (*(this + 62) * v22) + 2;
    v89 = v31;
    v86 = v22;
    if (v24 < v81)
    {
      break;
    }

LABEL_82:
    v22 = v86 + 1;
    v24 = v6;
    if (v86 + 1 == v80)
    {
      goto LABEL_85;
    }
  }

  v32 = 0;
  v33 = v30 << 31 >> 31;
  v90 = v26;
  while (1)
  {
    if (*(this + 241) == 1)
    {
      v34 = v96[v89 + v24];
      v35 = v95[v89 + v24];
      if (!v95[v89 + v24])
      {
        goto LABEL_93;
      }
    }

    else
    {
      v35 = v85;
      v34 = v89 + v24 * v85;
      if (!v85)
      {
LABEL_93:
        _cg_jpeg_mem_term("decodeBlock", 2347, "*** ERROR: corrupt PSD image: row[%d]: srcDataLen==0\n");
        goto LABEL_95;
      }
    }

    v36 = this;
    if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v13, v34, v35) != v35)
    {
      break;
    }

    v37 = *(v5 + 6);
    v38 = v5;
    v39 = *(v5 + 5) + v37 * v32;
    if (*(v36 + 241) == 1)
    {
      PSDReadPlugin::decode_packbits(v91, v13, v87, v35, v37, 1, 0, v86, v24);
      v40 = *(v91 + 128);
      if (v40 == 32)
      {
        v60 = v38[3];
        if (v60 > 0.0)
        {
          v61 = (v39 + 4 * v90);
          v62 = 1;
          v63 = v87;
          do
          {
            v64 = *v63++;
            *v61 = bswap32(v64) ^ v33;
            v65 = v62++;
            v61 = (v61 + v83);
          }

          while (v60 > v65);
        }
      }

      else if (v40 == 16)
      {
        v50 = v38[3];
        if (v50 > 0.0)
        {
          v51 = (v39 + 2 * v90);
          v52 = 1;
          v53 = v87;
          do
          {
            v54 = *v53;
            v53 += 2;
            *v51 = v33 ^ (bswap32(v54) >> 16);
            v55 = v52++;
            v51 = (v51 + v82);
          }

          while (v50 > v55);
        }
      }

      else if (v40 == 8 && v38[3] > 0.0)
      {
        v41 = (v39 + v90);
        v42 = 1;
        v43 = v87;
        v5 = v38;
        do
        {
          v44 = *v43++;
          *v41 = v44 ^ v33;
          v41 += v25;
          v45 = v42++;
        }

        while (v38[3] > v45);
        v84 = 0;
        goto LABEL_74;
      }

      v84 = 0;
    }

    else
    {
      v46 = *(v36 + 128);
      switch(v46)
      {
        case 32:
          if (v35 >= 4)
          {
            v66 = v35 >> 2;
            v67 = v13;
            v68 = (v39 + 4 * v90);
            do
            {
              v69 = *v67++;
              *v68 = bswap32(v69) ^ v33;
              v68 = (v68 + v83);
              --v66;
            }

            while (v66);
          }

          break;
        case 16:
          if (v35 != 1)
          {
            v56 = v35 >> 1;
            v57 = v13;
            v58 = (v39 + 2 * v90);
            do
            {
              v59 = *v57;
              v57 += 2;
              *v58 = v33 ^ (bswap32(v59) >> 16);
              v58 = (v58 + v82);
              --v56;
            }

            while (v56);
          }

          break;
        case 8:
          v47 = (v39 + v90);
          v48 = v13;
          do
          {
            v49 = *v48++;
            *v47 = v49 ^ v33;
            v47 += v25;
            --v35;
          }

          while (v35);
          break;
      }
    }

    v5 = v38;
LABEL_74:
    if (v23 <= ++v24)
    {
      v23 = v24;
    }

    ++v32;
    this = v91;
    if (v88 == v32)
    {
      goto LABEL_82;
    }
  }

  _cg_jpeg_mem_term("decodeBlock", 2350, "*** ERROR: failed to read scanline (expected: %d got: %d\n");
LABEL_95:
  v70 = v87;
  v74 = v84;
LABEL_102:
  *(v5 + 8) = v23;
  if (v70)
  {
    free(v70);
  }

  if (v13)
  {
LABEL_105:
    free(v13);
  }

LABEL_106:
  if (v95)
  {
    free(v95);
  }

  if (v96)
  {
    free(v96);
  }

  return v74;
}

void sub_1860CAA78(_Unwind_Exception *a1)
{
  v3 = v1;
  MEMORY[0x186602850](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t PSDReadPlugin::decodeBlockSubsampled(PSDReadPlugin *this, IIODecodeFrameParams *a2, int a3, unsigned int a4)
{
  v4 = this;
  v6 = *(a2 + 1);
  v5 = *(a2 + 2);
  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  v9 = *(this + 61);
  v10 = *(this + 128);
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v11 = *(this + 166);
  v12 = v11;
  v13 = v7 * v11;
  v14 = v8 * v11;
  v15 = *(a2 + 6);
  v16 = v15 * v11;
  if ((0x1000000 / (v15 * v11) + v11 - 1) / v11 * v11 >= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = (0x1000000 / (v15 * v11) + v11 - 1) / v11 * v11;
  }

  memset(v93, 0, 48);
  v75 = v13;
  IIOSubsampler::IIOSubsampler(v93, v13, v15 * v11, *(this + 326), *(this + 160), *(this + 162), v11, 0, v7, v15);
  count = v16;
  v18 = v17 * v16;
  if ((v18 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_100;
  }

  __b = malloc_type_calloc(v18, 1uLL, 0x100004077774924uLL);
  if (!__b)
  {
    _cg_jpeg_mem_term("decodeBlockSubsampled", 2570, "*** ERROR: failed to allocate 'bandBuffer'\n");
LABEL_100:
    v67 = 4294967246;
    goto LABEL_94;
  }

  v19 = v5 * v12;
  v20 = (v19 + v14);
  v21 = v17;
  if (*(v4 + 485) != 1)
  {
    if (*(v4 + 262))
    {
      bzero(*(a2 + 5), *(a2 + 6) * *(a2 + 4));
    }

    if (*(v4 + 128) != 1)
    {
      v26 = v20;
      if (v19 < v20)
      {
        v27 = v6 * v12;
        v28 = v13;
        v29 = v17;
        do
        {
          src = 0;
          v91 = 0u;
          src_8 = *&v27;
          src_16 = *&v19;
          src_24.f64[0] = v28;
          src_24.f64[1] = v29;
          v88 = __b;
          v89 = count;
          v90 = count * v29;
          DWORD2(v91) = 0;
          v92 = 0;
          PSDReadPlugin::mergeLayers(v4, &src);
          dest.data = v88;
          v30 = vcvtq_u64_f64(src_24);
          *&dest.height = vextq_s8(v30, v30, 8uLL);
          dest.rowBytes = v89;
          if (*(v4 + 436) == 1)
          {
            *permuteMap = 66051;
            vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
          }

          else if (v89 >= 4 * v30.i64[0])
          {
            *permuteMap = 197121;
            vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
          }

          else
          {
            v31 = _cg_jpeg_mem_term("decodeBlockSubsampled", 2752, "*** ERROR: vImagePermuteChannels_ARGB8888 - width: %d  rowBytes: %d\n", v30.i32[0], v89);
          }

          v31.n128_u16[0] = *(v4 + 166);
          v32 = v31.n128_u64[0];
          v33 = (v19 / v32 - *(a2 + 2));
          *permuteMap = (v29 / v32);
          IIOSubsampler::subsample(v93, __b, v29, (*(a2 + 5) + *(a2 + 6) * v33), permuteMap);
          v19 = v19 + v21;
          if (v29 + v19 > v26)
          {
            v29 = v26 - v19;
          }

          IIODecodeFrameParams::~IIODecodeFrameParams(&src);
        }

        while (v19 < v26);
      }
    }

    v34 = 0;
LABEL_92:
    PSDReadPlugin::handlePremultiplication(v4, a2, a4);
    free(__b);
    v67 = 0;
    if (!v34)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v22 = v9 * v10 + 7;
  v23 = v22 >> 3;
  if (*(v4 + 241) == 1)
  {
    v24 = PSDReadPlugin::readDataSizeTable(v4, &v95, &v96, &v94);
    v25 = v94;
    if (!v94)
    {
      v24 = 0;
    }

    if ((v24 & 1) == 0)
    {
      goto LABEL_102;
    }
  }

  else
  {
    v25 = v22 >> 3;
    if (v22 < 8)
    {
LABEL_102:
      v34 = 0;
      goto LABEL_103;
    }
  }

  v34 = malloc_type_calloc(v25, 1uLL, 0x100004077774924uLL);
  if (!v34)
  {
    _cg_jpeg_mem_term("decodeBlockSubsampled", 2589, "*** ERROR: failed to allocate 'scanLineData'\n");
    goto LABEL_102;
  }

  if (*(v4 + 128) != 1)
  {
    v36 = v20;
    if (v19 < v20)
    {
      v74 = v23;
      v80 = v34;
      v81 = v4;
      v37 = v17;
      do
      {
        if (*(v4 + 294) - 5 <= 1)
        {
          memset(__b, 255, (v37 * count));
        }

        if (a3)
        {
          v38 = 0;
          v35.n128_f64[0] = v37 + v19;
          v71 = v35.n128_f64[0];
          v76 = v35.n128_f64[0] - v19;
          do
          {
            v39 = v38;
            if (v38 <= 3)
            {
              v39 = v38;
              if (*(v4 + 436) == 1)
              {
                v39 = *(&xmmword_186224A90 + v38);
              }
            }

            v40 = *(v4 + 240);
            v43 = v40 == 4 && v39 < 4 || v40 == 0;
            if (*(v4 + 241) == 1)
            {
              v44 = (*(v4 + 62) * v38);
            }

            else
            {
              v44 = *(v4 + 26) + v74 * (*(v4 + 62) * v38) + 2;
            }

            v79 = v44;
            if (v19 < v71)
            {
              v45 = 0;
              v46 = v43 << 31 >> 31;
              v73 = count - v39;
              v47 = v19;
              v48 = v39;
              do
              {
                if (*(v81 + 241) == 1)
                {
                  v49 = v96[v79 + v47];
                  v50 = v95[v79 + v47];
                }

                else
                {
                  v50 = v74;
                  v49 = v79 + v47 * v74;
                }

                if (IIOImageReadSession::getBytesAtOffset(*(v81 + 3), v80, v49, v50) != v50)
                {
                  break;
                }

                v51 = &__b[count * v45];
                if (*(v81 + 241) == 1)
                {
                  PSDReadPlugin::decode_packbits(v81, v80, &v51[v48], v50, v73, a4, v46, v38, v47);
                }

                else
                {
                  v52 = *(v81 + 128);
                  switch(v52)
                  {
                    case 32:
                      v61 = v50 >> 2;
                      if (v50 >> 2 >= v75)
                      {
                        v61 = v13;
                      }

                      if (v61)
                      {
                        v62 = &v51[4 * v48];
                        v63 = v80;
                        do
                        {
                          v64 = *v63++;
                          *v62 = bswap32(v64) ^ v46;
                          v62 += a4;
                          --v61;
                        }

                        while (v61);
                      }

                      break;
                    case 16:
                      v57 = v50 >> 1;
                      if (v50 >> 1 >= v75)
                      {
                        v57 = v13;
                      }

                      if (v57)
                      {
                        v58 = &v51[2 * v48];
                        v59 = v80;
                        do
                        {
                          v60 = *v59;
                          v59 += 2;
                          *v58 = v46 ^ (bswap32(v60) >> 16);
                          v58 += 2 * a4;
                          --v57;
                        }

                        while (v57);
                      }

                      break;
                    case 8:
                      v53 = v13;
                      if (v50 < v75)
                      {
                        v53 = v50;
                      }

                      if (v53)
                      {
                        v54 = &v51[v48];
                        v55 = v80;
                        do
                        {
                          v56 = *v55++;
                          *v54 = v56 ^ v46;
                          v54 += a4;
                          --v53;
                        }

                        while (v53);
                      }

                      break;
                  }
                }

                ++v47;
                ++v45;
              }

              while (v76 != v45);
            }

            ++v38;
            v4 = v81;
          }

          while (v38 != a3);
        }

        if (*(v4 + 85) == 1380401696 && *(v4 + 116) == 4 && *(v4 + 294) == 5)
        {
          src = __b;
          src_8 = v37;
          src_16 = v13;
          *&src_24.f64[0] = count;
          if (*(v4 + 160) == 8)
          {
            vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &src, &src, 1u, 0x10u);
          }

          else
          {
            v35 = _cg_jpeg_mem_term("decodeBlockSubsampled", 2711, "*** RGB-%d: check alpha-one?\n", *(v4 + 160));
          }
        }

        v35.n128_u16[0] = *(v4 + 166);
        v65 = v35.n128_u64[0];
        v66 = (v19 / v65 - *(a2 + 2));
        LODWORD(src) = (v37 / v65);
        IIOSubsampler::subsample(v93, __b, v37, (*(a2 + 5) + *(a2 + 6) * v66), &src);
        v19 = v19 + v21;
        v35.n128_f64[0] = v37 + v19;
        if (v37 + v19 > v36)
        {
          v37 = v36 - v19;
        }
      }

      while (v19 < v36);
      v34 = v80;
    }

    goto LABEL_92;
  }

  if (malloc_type_calloc(count, 1uLL, 0x100004077774924uLL))
  {
    operator new();
  }

  _cg_jpeg_mem_term("decodeBlockSubsampled", 2595, "*** ERROR: failed to allocate 'tempData'\n");
LABEL_103:
  free(__b);
  v67 = 4294967246;
  if (v34)
  {
LABEL_93:
    free(v34);
  }

LABEL_94:
  if (v95)
  {
    free(v95);
  }

  if (v96)
  {
    free(v96);
  }

  IIOSubsampler::~IIOSubsampler(v93);
  return v67;
}

void sub_1860CB354(_Unwind_Exception *a1)
{
  MEMORY[0x186602850](v1, 0x10F1C4050BC5624);
  IIOSubsampler::~IIOSubsampler((v2 - 224));
  _Unwind_Resume(a1);
}

uint64_t PSDReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3)
{
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v7 = *(this + 55);
    v8 = v7 >> 24;
    if ((v7 >> 24) <= 0x7F)
    {
      v9 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
    }

    else
    {
      v9 = __maskrune(v8, 0x40000uLL);
      v7 = *(this + 55);
    }

    if (v9)
    {
      v10 = (v7 >> 24);
    }

    else
    {
      v10 = 46;
    }

    v11 = v7 << 8 >> 24;
    if (v11 <= 0x7F)
    {
      v12 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v12 = __maskrune(v11, 0x40000uLL);
      v7 = *(this + 55);
    }

    if (v12)
    {
      v13 = (v7 << 8 >> 24);
    }

    else
    {
      v13 = 46;
    }

    v14 = v7 >> 8;
    if (v14 <= 0x7F)
    {
      v15 = *(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(v14, 0x40000uLL);
      v7 = *(this + 55);
    }

    if (v15)
    {
      v16 = (v7 >> 8);
    }

    else
    {
      v16 = 46;
    }

    if (v7 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v7, 0x40000uLL))
    {
LABEL_22:
      v17 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v10, v13, v16, v17, iioTypeStr[a3], "virtual OSStatus PSDReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v17 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  if (*(this + 3))
  {
    v18 = *(this + 59);
    if (v18)
    {
      *(this + 79) = v18;
    }

    else
    {
      *(this + 59) = *(this + 79);
    }

    if (*(this + 438) || *(this + 436) == 1)
    {
      *(this + 484) = 1;
    }

    v19 = *(this + 28);
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    if (IIOReadPlugin::getCachedBlocks(this))
    {
      v22 = *(this + 3);
      if (v22)
      {
        v23 = IIOImageReadSession::mapData(v22);
      }

      else
      {
        v23 = 0;
      }

      if (*(this + 241) != 1 || (v24 = *(this + 128), v24 == 8) || v24 == 1)
      {
        v74 = v23;
        v25 = *(this + 28);
        if (v25 >= *(this + 29))
        {
LABEL_68:
          PSDReadPlugin::decodeBlocks(this, &v81);
          v23 = v74;
          v65 = v82;
          if (v81 != v82)
          {
            v66 = v81 + 40;
            while (1)
            {
              BlockArray = *(v66 + 8);
              if (BlockArray)
              {
                *&v67 = _cg_jpeg_mem_term("decodeImageImp", 2891, "*** ERROR: (err=%d) when decoding block with index: %d\n", *(v66 + 8), *(v66 - 5)).n128_u64[0];
                if (!*(v66 + 3))
                {
                  break;
                }
              }

              *(*(this + 12) + 8 * (*(v66 - 5) - v19)) = IIOReadPlugin::createImageBlock(this, *v66, *(v66 + 2), *(v66 - 1), *(v66 + 1), (BlockArray == 0) & *(this + 371));
              *v66 = 0;
              v68 = v66 + 48;
              v66 += 88;
              if (v68 == v65)
              {
                goto LABEL_73;
              }
            }

            _cg_jpeg_mem_term("decodeImageImp", 2892, "*** ERROR: no valid rows\n", v67);
          }
        }

        else
        {
          v26 = kImageMalloc_PSD_Data;
          v27 = MEMORY[0x1E695F050];
          while (1)
          {
            if (*(*(this + 12) + 8 * (v25 - v19)))
            {
              _cg_jpeg_mem_term("decodeImageImp", 2856, "*** _blockArray[%d] was cached - and already allocated\n", v25 - v19);
            }

            v28 = *(this + 78);
            v29 = (v28 * v25);
            LODWORD(v3) = *(this + 77);
            LODWORD(v21) = *(this + 70);
            v30 = v21;
            v31 = v28 + v29 <= v30 ? v28 : v30 - (v28 * v25);
            v32 = _ImageIO_Malloc(*(this + 79) * v28, *(this + 52), &v84, *v26, 0, 0);
            if (!v32)
            {
              break;
            }

            v3 = *&v3;
            v33 = *(this + 79);
            v75 = v25;
            *&v76 = v29;
            *(&v76 + 1) = v3;
            *&v77 = v31;
            *(&v77 + 1) = v32;
            *&v78 = v33;
            *(&v78 + 1) = v84;
            *&v79 = 0;
            DWORD2(v79) = 0;
            v80 = 0;
            v34 = v82;
            if (v82 >= v83)
            {
              v40 = v26;
              v41 = v81;
              v42 = v82 - v81;
              v43 = 0x2E8BA2E8BA2E8BA3 * ((v82 - v81) >> 3);
              v44 = v43 + 1;
              if ((v43 + 1) > 0x2E8BA2E8BA2E8BALL)
              {
                std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
              }

              if (0x5D1745D1745D1746 * ((v83 - v81) >> 3) > v44)
              {
                v44 = 0x5D1745D1745D1746 * ((v83 - v81) >> 3);
              }

              if ((0x2E8BA2E8BA2E8BA3 * ((v83 - v81) >> 3)) >= 0x1745D1745D1745DLL)
              {
                v45 = 0x2E8BA2E8BA2E8BALL;
              }

              else
              {
                v45 = v44;
              }

              v89 = &v81;
              if (v45)
              {
                std::__allocate_at_least[abi:fe200100]<std::allocator<IIODecodeFrameParams>>(&v81, v45);
              }

              v46 = 8 * ((v82 - v81) >> 3);
              v85 = 0;
              v86 = v46;
              v47 = 0;
              v88 = 0;
              v48 = v76;
              *v46 = v75;
              *(v46 + 16) = v48;
              v49 = v79;
              v50 = v78;
              v51 = v77;
              *(v46 + 80) = v80;
              *(v46 + 48) = v50;
              *(v46 + 64) = v49;
              *(v46 + 32) = v51;
              v39 = 88 * v43 + 88;
              v87 = v39;
              v52 = (88 * v43 - v42);
              if (v41 != v34)
              {
                v53 = v41;
                v54 = v46 - v42;
                do
                {
                  v55 = *(v53 + 1);
                  *v54 = *v53;
                  *(v54 + 16) = v55;
                  v56 = *(v53 + 2);
                  v57 = *(v53 + 3);
                  v58 = *(v53 + 4);
                  *(v54 + 80) = *(v53 + 10);
                  *(v54 + 48) = v57;
                  *(v54 + 64) = v58;
                  *(v54 + 32) = v56;
                  v53 = (v53 + 88);
                  v54 += 88;
                }

                while (v53 != v34);
                do
                {
                  IIODecodeFrameParams::~IIODecodeFrameParams(v41);
                  v41 = (v59 + 88);
                }

                while (v41 != v34);
                v41 = v81;
                v39 = v87;
                v47 = v88;
              }

              v81 = v52;
              v82 = v39;
              v60 = v83;
              v83 = v47;
              v87 = v41;
              v88 = v60;
              v85 = v41;
              v86 = v41;
              std::__split_buffer<IIODecodeFrameParams>::~__split_buffer(&v85);
              v26 = v40;
            }

            else
            {
              v35 = v76;
              *v82 = v75;
              *(v34 + 1) = v35;
              v36 = v77;
              v37 = v78;
              v38 = v79;
              *(v34 + 10) = v80;
              *(v34 + 3) = v37;
              *(v34 + 4) = v38;
              *(v34 + 2) = v36;
              v39 = v34 + 88;
            }

            v82 = v39;
            IIODecodeFrameParams::~IIODecodeFrameParams(&v75);
            v61 = CGRectEqualToRect(*(this + 120), *v27);
            v62 = 0;
            if (!v61)
            {
              v90.origin.x = 0.0;
              v90.origin.y = v29;
              v90.size.width = v3;
              v90.size.height = v31;
              *(&v21 - 2) = CGRectUnion(*(this + 120), v90);
              v29 = v63;
              v3 = *&v21;
              v31 = v64;
            }

            *(this + 15) = v62;
            *(this + 16) = v29;
            *(this + 17) = v3;
            *(this + 18) = v31;
            if (++v25 >= *(this + 29))
            {
              goto LABEL_68;
            }
          }

          _cg_jpeg_mem_term("decodeImageImp", 2874, "*** ERROR: failed to allocate 'imageData'\n");
          v23 = v74;
        }
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
    BlockArray = 0;
  }

LABEL_73:
  v69 = v81;
  v70 = v82;
  while (v69 != v70)
  {
    v71 = *(v69 + 5);
    if (v71)
    {
      _ImageIO_Free(v71, *(v69 + 7));
    }

    v69 = (v69 + 88);
  }

  if (v23)
  {
    v72 = *(this + 3);
    if (v72)
    {
      IIOImageReadSession::unmapData(v72);
    }
  }

  *&v75 = &v81;
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&v75);
  return BlockArray;
}

void sub_1860CBA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  a16 = &a27;
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](&a16);
  _Unwind_Resume(a1);
}

void PSDReadPlugin::decodeBlocks(uint64_t a1, void *a2)
{
  v4 = IIO_Reader::testHeaderSize(*(a1 + 24));
  v5 = (a2[1] - *a2) >> 3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN13PSDReadPlugin12decodeBlocksERNSt3__16vectorI20IIODecodeFrameParamsNS0_9allocatorIS2_EEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_56;
  block[4] = a1;
  block[5] = a2;
  block[6] = v4;
  dispatch_apply(0x2E8BA2E8BA2E8BA3 * v5, 0, block);
}

void ___ZN13PSDReadPlugin12decodeBlocksERNSt3__16vectorI20IIODecodeFrameParamsNS0_9allocatorIS2_EEEE_block_invoke(uint64_t a1, unint64_t a2)
{
  v2 = **(a1 + 40);
  if (0x2E8BA2E8BA2E8BA3 * ((*(*(a1 + 40) + 8) - v2) >> 3) <= a2 || ((v5 = *(a1 + 32), v6 = (v2 + 88 * a2), memset(v13, 0, sizeof(v13)), IIOImageReadSession::IIOImageReadSession(v13, *(a1 + 48)), v7 = *(v5 + 260), *(v5 + 464) >= v7) ? (v8 = *(v5 + 260)) : (v8 = *(v5 + 464)), *(v5 + 332) < 2u ? (v9 = PSDReadPlugin::decodeBlock(v5, v6, v8, v7)) : (v9 = PSDReadPlugin::decodeBlockSubsampled(v5, v6, v8, v7)), v10 = **(a1 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(*(a1 + 40) + 8) - v10) >> 3) <= a2))
  {
    __break(1u);
  }

  else
  {
    v11 = v6[4];
    if (v9)
    {
      v11 = 0;
    }

    v12 = v10 + 88 * a2;
    *(v12 + 64) = v11;
    *(v12 + 72) = v9;
    IIOImageReadSession::~IIOImageReadSession(v13);
  }
}

unint64_t IIOHashForDataProvider(CGDataProvider *a1, unint64_t a2)
{
  SizeOfData = CGDataProviderGetSizeOfData();
  if (!CGAccessSessionCreate())
  {
    return 0;
  }

  if (SizeOfData == -1 || (BytePointer = CGAccessSessionGetBytePointer()) == 0 || (v5 = XXH64(BytePointer, SizeOfData, a2)) == 0)
  {
    CGAccessSessionRewind();
    v6 = malloc_type_malloc(0xF4240uLL, 0x746EAF04uLL);
    State = XXH64_createState();
    XXH64_reset(State, a2);
    Bytes = CGAccessSessionGetBytes();
    if (Bytes)
    {
      v9 = Bytes;
      do
      {
        XXH64_update(State, v6, v9);
        v9 = CGAccessSessionGetBytes();
      }

      while (v9);
    }

    v5 = XXH64_digest(State);
    XXH64_freeState(State);
    free(v6);
  }

  CGAccessSessionRelease();
  return v5;
}

uint64_t TIFFJPEGIsFullStripRequired(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(v4, 0x550uLL);
  v12 = a1;
  TIFFjpeg_create_decompress(v4);
  v5 = &v6;
  v7 = std_init_source;
  v8 = std_fill_input_buffer;
  v9 = std_skip_input_data;
  v10 = _cg_jpeg_resync_to_restart;
  v11 = std_term_source;
  v6 = 0u;
  if (TIFFjpeg_read_header(v4, 1) == 1)
  {
    has_multiple_scans = TIFFjpeg_has_multiple_scans(v4);
  }

  else
  {
    has_multiple_scans = 0;
  }

  TIFFjpeg_destroy(v4);
  return has_multiple_scans;
}

uint64_t TIFFjpeg_create_decompress(uint64_t a1)
{
  *a1 = _cg_jpeg_std_error(a1 + 672);
  *(a1 + 672) = TIFFjpeg_error_exit;
  *(a1 + 688) = TIFFjpeg_output_message;
  *(a1 + 24) = 0;
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  _cg_jpeg_CreateDecompress(a1, 90, 664);
  return 1;
}

uint64_t TIFFjpeg_read_header(uint64_t a1, int a2)
{
  if (setjmp((a1 + 848)))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return _cg_jpeg_read_header(a1, a2);
  }
}

uint64_t TIFFjpeg_destroy(uint64_t a1)
{
  result = setjmp((a1 + 848));
  if (!result)
  {
    return _cg_jpeg_destroy(a1);
  }

  return result;
}

uint64_t TIFFjpeg_has_multiple_scans(uint64_t a1)
{
  if (setjmp((a1 + 848)))
  {
    return 0;
  }

  else
  {
    return _cg_jpeg_has_multiple_scans(a1);
  }
}

uint64_t TIFFInitJPEG(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 7)
  {
    TIFFInitJPEG_cold_1();
  }

  if (_TIFFMergeFields(a1, jpegFields, 4, a4, a5, a6, a7, a8))
  {
    v14 = malloc_type_malloc(0x550uLL, 0x10F2040D7F6AB1BuLL);
    *(a1 + 1096) = v14;
    if (v14)
    {
      _TIFFmemset(v14, 0, 0x550uLL);
      v15 = *(a1 + 1096);
      *(v15 + 1280) = *(a1 + 1288);
      *(v15 + 1288) = *(a1 + 1280);
      *(v15 + 1296) = *(a1 + 1296);
      *(v15 + 1304) = *(a1 + 1080);
      *(v15 + 1168) = a1;
      *(v15 + 1320) = 0;
      *(v15 + 1328) = xmmword_186227550;
      *(v15 + 1344) = 0;
      *(a1 + 1288) = JPEGVGetField;
      *(a1 + 1280) = JPEGVSetField;
      *(a1 + 1296) = JPEGPrintDir;
      *(a1 + 952) = JPEGFixupTags;
      *(a1 + 960) = JPEGSetupDecode;
      *(a1 + 968) = JPEGPreDecode;
      *(a1 + 1008) = JPEGDecode;
      *(a1 + 1024) = JPEGDecode;
      *(a1 + 1040) = JPEGDecode;
      *(a1 + 976) = JPEGSetupEncode;
      *(a1 + 992) = JPEGPreEncode;
      *(a1 + 1000) = JPEGPostEncode;
      *(a1 + 1016) = JPEGEncode;
      *(a1 + 1032) = JPEGEncode;
      *(a1 + 1048) = JPEGEncode;
      *(a1 + 1072) = JPEGCleanup;
      *(a1 + 1080) = JPEGDefaultStripSize;
      *(a1 + 1088) = JPEGDefaultTileSize;
      *(a1 + 16) |= 0x100u;
      *(v15 + 664) = 0;
      if (*(a1 + 24))
      {
        return 1;
      }

      *(v15 + 1328) = 2000;
      v16 = malloc_type_malloc(0x7D0uLL, 0x53DE78A7uLL);
      *(v15 + 1320) = v16;
      if (v16)
      {
        _TIFFmemset(v16, 0, 0x7D0uLL);
        return 1;
      }

      v18 = "Failed to allocate memory for JPEG tables";
    }

    else
    {
      v18 = "No space for JPEG state block";
    }
  }

  else
  {
    v18 = "Merging JPEG codec-specific tags failed";
  }

  TIFFErrorExtR(a1, "TIFFInitJPEG", v18, v9, v10, v11, v12, v13, v19);
  return 0;
}

void TIFFjpeg_error_exit(uint64_t a1)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  (*(*a1 + 24))(a1, v7);
  TIFFErrorExtR(*(a1 + 1168), "JPEGLib", "%s", v2, v3, v4, v5, v6, v7);
  _cg_jpeg_abort(a1);
  longjmp((a1 + 848), 1);
}

uint64_t TIFFjpeg_output_message(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  (*(*a1 + 24))(a1, v8);
  return TIFFWarningExtR(a1[146], "JPEGLib", "%s", v2, v3, v4, v5, v6, v8);
}

void *std_init_source(void *result)
{
  v1 = result[146];
  result[139] = *(v1 + 1120);
  result[140] = *(v1 + 1160);
  return result;
}

uint64_t std_fill_input_buffer(uint64_t *a1)
{
  v2 = *a1;
  *(v2 + 40) = 123;
  (*(v2 + 8))(a1, 0xFFFFFFFFLL);
  a1[139] = &std_fill_input_buffer_dummy_EOI;
  a1[140] = 2;
  return 1;
}

void *std_skip_input_data(void *result, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = result;
    v3 = result[140];
    v4 = v3 >= a2;
    v5 = v3 - a2;
    if (v4)
    {
      result[139] += a2;
    }

    else
    {
      v6 = *result;
      *(v6 + 40) = 123;
      result = (*(v6 + 8))(result, 0xFFFFFFFFLL);
      v2[139] = &std_fill_input_buffer_dummy_EOI;
      v5 = 2;
    }

    v2[140] = v5;
  }

  return result;
}