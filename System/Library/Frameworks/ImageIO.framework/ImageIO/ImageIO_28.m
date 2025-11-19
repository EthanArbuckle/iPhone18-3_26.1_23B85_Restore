uint64_t _TIFFVGetField(uint64_t a1, int a2, double ***a3)
{
  result = TIFFFindField(a1, a2, 0);
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = *(result + 24);
  if (v12 == 65)
  {
    v13 = 0;
  }

  else
  {
    v13 = a2;
  }

  if (v13 <= 529)
  {
    switch(v13)
    {
      case 254:
        v16 = *(a1 + 112);
        goto LABEL_78;
      case 256:
        v16 = *(a1 + 88);
        goto LABEL_78;
      case 257:
        v16 = *(a1 + 92);
        goto LABEL_78;
      case 258:
        v15 = *(a1 + 116);
        goto LABEL_90;
      case 259:
        v15 = *(a1 + 120);
        goto LABEL_90;
      case 262:
        v15 = *(a1 + 122);
        goto LABEL_90;
      case 263:
        v15 = *(a1 + 124);
        goto LABEL_90;
      case 266:
        v15 = *(a1 + 126);
        goto LABEL_90;
      case 273:
      case 324:
        _TIFFFillStriles(a1);
        v14 = *(a1 + 232);
        goto LABEL_23;
      case 274:
        v15 = *(a1 + 128);
        goto LABEL_90;
      case 277:
        v15 = *(a1 + 130);
        goto LABEL_90;
      case 278:
        v16 = *(a1 + 132);
        goto LABEL_78;
      case 279:
      case 325:
        _TIFFFillStriles(a1);
        v14 = *(a1 + 240);
LABEL_23:
        **a3 = v14;
        return v14 != 0;
      case 280:
        v15 = *(a1 + 136);
        goto LABEL_90;
      case 281:
        v15 = *(a1 + 138);
        goto LABEL_90;
      case 282:
        v20 = *(a1 + 160);
        goto LABEL_60;
      case 283:
        v20 = *(a1 + 164);
        goto LABEL_60;
      case 284:
        v15 = *(a1 + 170);
        goto LABEL_90;
      case 286:
        v20 = *(a1 + 172);
        goto LABEL_60;
      case 287:
        v20 = *(a1 + 176);
LABEL_60:
        **a3 = v20;
        return 1;
      case 296:
        v15 = *(a1 + 168);
        goto LABEL_90;
      case 297:
        v21 = a3++;
        **v21 = *(a1 + 180);
        v15 = *(a1 + 182);
        goto LABEL_90;
      case 301:
        v34 = a3;
        v58 = a3 + 1;
        **v34 = *(a1 + 344);
        if (*(a1 + 130) - *(a1 + 212) >= 2)
        {
          v35 = v58;
          a3 = (v58 + 1);
          **v35 = *(a1 + 352);
          v18 = *(a1 + 360);
          goto LABEL_76;
        }

        **v58 = 0;
        *v58[1] = 0;
        break;
      case 320:
        **a3 = *(a1 + 184);
        v33 = a3 + 1;
        a3 += 2;
        **v33 = *(a1 + 192);
        v18 = *(a1 + 200);
        goto LABEL_76;
      case 321:
        v36 = a3++;
        **v36 = *(a1 + 208);
        v15 = *(a1 + 210);
        goto LABEL_90;
      case 322:
        v16 = *(a1 + 100);
        goto LABEL_78;
      case 323:
        v16 = *(a1 + 104);
        goto LABEL_78;
      case 330:
        v19 = a3++;
        **v19 = *(a1 + 320);
        v18 = *(a1 + 328);
        goto LABEL_76;
      case 333:
        v18 = *(a1 + 384);
        goto LABEL_76;
      case 334:
        v15 = *(a1 + 392);
        goto LABEL_90;
      case 338:
        v37 = a3++;
        **v37 = *(a1 + 212);
        v18 = *(a1 + 216);
        goto LABEL_76;
      case 339:
        v15 = *(a1 + 118);
        goto LABEL_90;
      case 340:
        v18 = *(a1 + 144);
        if ((*(a1 + 18) & 0x40) != 0)
        {
          goto LABEL_76;
        }

        v22 = *v18;
        v23 = *(a1 + 130);
        if (v23 >= 2)
        {
          v24 = v18 + 1;
          v25 = v23 - 1;
          do
          {
            v26 = *v24++;
            v27 = v26;
            if (v26 < v22)
            {
              v22 = v27;
            }

            --v25;
          }

          while (v25);
        }

        goto LABEL_53;
      case 341:
        v18 = *(a1 + 152);
        if ((*(a1 + 18) & 0x40) != 0)
        {
          goto LABEL_76;
        }

        v22 = *v18;
        v28 = *(a1 + 130);
        if (v28 >= 2)
        {
          v29 = v18 + 1;
          v30 = v28 - 1;
          do
          {
            v31 = *v29++;
            v32 = v31;
            if (v31 > v22)
            {
              v22 = v32;
            }

            --v30;
          }

          while (v30);
        }

LABEL_53:
        **a3 = v22;
        return 1;
      default:
        goto LABEL_79;
    }

    return 1;
  }

  if (v13 <= 32995)
  {
    if (v13 <= 531)
    {
      if (v13 == 530)
      {
        v38 = a3++;
        **v38 = *(a1 + 336);
        v15 = *(a1 + 338);
      }

      else
      {
        v15 = *(a1 + 340);
      }

      goto LABEL_90;
    }

    if (v13 != 532)
    {
      if (v13 == 32995)
      {
        v15 = *(a1 + 212) == 1 && **(a1 + 216) == 1;
        goto LABEL_90;
      }

LABEL_79:
      if (v12 == 65)
      {
        v40 = *(a1 + 408);
        if (v40 >= 1)
        {
          for (i = (*(a1 + 416) + 16); **(i - 2) != a2; i += 3)
          {
            result = 0;
            if (!--v40)
            {
              return result;
            }
          }

          if (*(v11 + 27))
          {
            v44 = *(i - 2);
            v45 = a3++;
            if (*(v11 + 4) == -3)
            {
              **v45 = v44;
            }

            else
            {
              **v45 = v44;
            }
          }

          else
          {
            if (*v11 == 336 && !strcmp(*(v11 + 32), "DotRange"))
            {
              v49 = *i;
              v50 = a3++;
              **v50 = **i;
              v15 = v49[1];
LABEL_90:
              **a3 = v15;
              return 1;
            }

            v46 = *(v11 + 8);
            if (v46 != 2 && *(v11 + 4) <= 0xFFFCu)
            {
              v47 = *(i - 2);
              if (v47 < 2)
              {
                if (v47 == 1)
                {
                  result = 0;
                  v48 = *i;
                  switch(v46)
                  {
                    case 1:
                    case 6:
                    case 7:
                      **a3 = *v48;
                      return 1;
                    case 3:
                    case 8:
                      v15 = *v48;
                      goto LABEL_90;
                    case 4:
                    case 9:
                    case 13:
                      v16 = *v48;
                      goto LABEL_78;
                    case 5:
                    case 10:
                      Size = TIFFFieldSetGetSize(v11);
                      if (Size == 8)
                      {
                        goto LABEL_115;
                      }

                      **a3 = *v48;
                      if (Size != 4)
                      {
                        TIFFErrorExtR(a1, "_TIFFVGetField", "Rational2Double: .set_field_type in not 4 but %d", v52, v53, v54, v55, v56, Size);
                      }

                      return 1;
                    case 11:
                      v20 = *v48;
                      goto LABEL_60;
                    case 12:
LABEL_115:
                      v22 = *v48;
                      goto LABEL_53;
                    case 16:
                    case 17:
                    case 18:
                      v18 = *v48;
                      goto LABEL_76;
                    default:
                      return result;
                  }
                }

                _TIFFVGetField_cold_1();
              }
            }
          }

          v18 = *i;
          goto LABEL_76;
        }
      }

      else
      {
        TIFFErrorExtR(a1, "_TIFFVGetField", "%s: Invalid %stag %s (not supported by codec)", v6, v7, v8, v9, v10, *a1);
      }

      return 0;
    }

    v18 = *(a1 + 368);
LABEL_76:
    **a3 = v18;
    return 1;
  }

  if (v13 > 32997)
  {
    if (v13 != 32998)
    {
      if (v13 != 33723)
      {
        goto LABEL_79;
      }

      v17 = a3++;
      **v17 = *(a1 + 396);
      v18 = *(a1 + 400);
      goto LABEL_76;
    }

    v16 = *(a1 + 108);
LABEL_78:
    **a3 = v16;
    return 1;
  }

  if (v13 != 32996)
  {
    v16 = *(a1 + 96);
    goto LABEL_78;
  }

  v39 = *(a1 + 118);
  result = 1;
  if (v39 <= 2)
  {
    if (v39 != 1)
    {
      if (v39 == 2)
      {
        **a3 = 1;
      }

      return result;
    }

    v42 = *a3;
    v43 = 2;
LABEL_97:
    *v42 = v43;
    return result;
  }

  if (v39 == 3)
  {
    v42 = *a3;
    v43 = 3;
    goto LABEL_97;
  }

  if (v39 == 4)
  {
    **a3 = 0;
  }

  return result;
}

uint64_t TIFFAdvanceDirectory(uint64_t a1, uint64_t *a2, void *a3, unsigned int *a4)
{
  if (!_TIFFCheckDirNumberAndOffset(a1, *a4, *a2))
  {
    TIFFErrorExtR(a1, "TIFFAdvanceDirectory", "Starting directory %u at offset 0x%llx (%llu) might cause an IFD loop", v8, v9, v10, v11, v12, *a4);
    result = 0;
    *a2 = 0;
    *a4 = 0;
    return result;
  }

  v13 = *(a1 + 16);
  if ((v13 & 0x800) == 0)
  {
    if ((v13 & 0x80000) == 0)
    {
      __dst = 0;
      v39.i32[0] = 0;
      if (_TIFFSeekOK(a1, *a2) && (*(a1 + 1208))(*(a1 + 1200), &__dst, 2) == 2)
      {
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(&__dst);
        }

        v14 = (*(a1 + 1224))(*(a1 + 1200), 12 * __dst, 1);
        if (a3)
        {
          *a3 = v14;
        }

        if ((*(a1 + 1208))(*(a1 + 1200), &v39, 4) == 4)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong(&v39, v20);
          }

          v21 = v39.u32[0];
          *a2 = v39.u32[0];
          goto LABEL_59;
        }

        goto LABEL_49;
      }

      goto LABEL_30;
    }

    v39 = 0;
    if (!_TIFFSeekOK(a1, *a2) || (*(a1 + 1208))(*(a1 + 1200), &v39, 8) != 8)
    {
      goto LABEL_30;
    }

    if ((*(a1 + 16) & 0x80) != 0)
    {
      v25.n128_u64[0] = TIFFSwabLong8(&v39);
    }

    if (*&v39 >= 0x10000uLL)
    {
LABEL_30:
      v38 = "/Library/Caches/com.apple.xbs/Sources/ImageIO/FileFormats/libTIFF/tif_dir.c";
      v27 = "%s:%d: %s: Error fetching directory count";
LABEL_31:
      TIFFErrorExtR(a1, "TIFFAdvanceDirectory", v27, v8, v9, v10, v11, v12, v38);
      return 0;
    }

    v30 = (*(a1 + 1224))(*(a1 + 1200), 20 * *&v39, 1, v25);
    if (a3)
    {
      *a3 = v30;
    }

    if ((*(a1 + 1208))(*(a1 + 1200), a2, 8) != 8)
    {
LABEL_49:
      TIFFErrorExtR(a1, "TIFFAdvanceDirectory", "%s: Error fetching directory link", v15, v16, v17, v18, v19, *a1);
      return 0;
    }

    goto LABEL_56;
  }

  v23 = *a2;
  if ((v13 & 0x80000) == 0)
  {
    __dst = 0;
    v39.i32[0] = 0;
    if (v23 > 0x7FFFFFFFFFFFFFFDLL || (v24 = v23 + 2, (v23 + 2) > *(a1 + 1176)))
    {
      TIFFErrorExtR(a1, "TIFFAdvanceDirectory", "%s:%d: %s: Error fetching directory count", v8, v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/ImageIO/FileFormats/libTIFF/tif_dir.c");
      *a2 = 0;
      return 0;
    }

    _TIFFmemcpy(&__dst, (*(a1 + 1168) + v23), 2uLL);
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabShort(&__dst);
    }

    v28 = v24 + 12 * __dst;
    if (v28 <= 0x7FFFFFFFFFFFFFFBLL && (v28 + 4) <= *(a1 + 1176))
    {
      if (a3)
      {
        *a3 = v28;
      }

      _TIFFmemcpy(&v39, (*(a1 + 1168) + v28), 4uLL);
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong(&v39, v29);
      }

      *a2 = v39.u32[0];
      goto LABEL_58;
    }

LABEL_52:
    v27 = "Error fetching directory link";
    goto LABEL_31;
  }

  v39 = 0;
  if (v23 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_30;
  }

  v26 = v23 + 8;
  if ((v23 + 8) > *(a1 + 1176))
  {
    goto LABEL_30;
  }

  _TIFFmemcpy(&v39, (*(a1 + 1168) + v23), 8uLL);
  if ((*(a1 + 16) & 0x80) != 0)
  {
    TIFFSwabLong8(&v39);
  }

  if (*&v39 >= 0x10000uLL)
  {
    v27 = "Sanity check on directory count failed";
    goto LABEL_31;
  }

  if (v26 > 0x7FFFFFFFFFFFFFF7 - 20 * *&v39)
  {
    goto LABEL_52;
  }

  v31 = 20 * *&v39 + v26;
  if ((v31 + 8) > *(a1 + 1176))
  {
    goto LABEL_52;
  }

  if (a3)
  {
    *a3 = v31;
  }

  _TIFFmemcpy(a2, (*(a1 + 1168) + v31), 8uLL);
LABEL_56:
  if ((*(a1 + 16) & 0x80) != 0)
  {
    TIFFSwabLong8(a2);
  }

LABEL_58:
  v21 = *a2;
LABEL_59:
  if (v21)
  {
    v32 = *a4 + 1;
    *a4 = v32;
    if (!_TIFFCheckDirNumberAndOffset(a1, v32, v21))
    {
      TIFFWarningExtR(a1, "TIFFAdvanceDirectory", "the next directory %u at offset 0x%llx (%llu) might be an IFD loop. Treating directory %d as last directory", v33, v34, v35, v36, v37, *a4);
      *a2 = 0;
      --*a4;
    }
  }

  return 1;
}

uint64_t _cg_TIFFSetDirectory(uint64_t a1, unsigned int a2)
{
  v12 = 0;
  v11 = 0;
  if (!*(a1 + 64) || (_TIFFCleanupIFDOffsetAndNumberMaps(a1), !*(a1 + 64)))
  {
    if (_TIFFGetOffsetFromDirNumber(a1, a2, &v12))
    {
      *(a1 + 32) = v12;
      *(a1 + 64) = 0;
LABEL_26:
      *(a1 + 880) = a2 - 1;
      return _cg_TIFFReadDirectory(a1);
    }
  }

  v4 = *(a1 + 880);
  if (a2 >= v4 && (v5 = *(a1 + 24)) != 0 && !*(a1 + 64))
  {
    v12 = *(a1 + 24);
    v11 = v4;
    v6 = 1;
    a2 -= v4;
  }

  else
  {
    v6 = 0;
    if ((*(a1 + 18) & 8) != 0)
    {
      v5 = *(a1 + 864);
    }

    else
    {
      v5 = *(a1 + 860);
    }

    v12 = v5;
  }

  *(a1 + 64) = 0;
  v7 = a2 != 0;
  if (a2 && v5)
  {
    v8 = a2 - 1;
    while (1)
    {
      result = TIFFAdvanceDirectory(a1, &v12, 0, &v11);
      if (!result)
      {
        break;
      }

      v5 = v12;
      v10 = v8-- != 0;
      v7 = v10;
      if (!v10 || !v12)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    result = 0;
    if (!v7 && v5)
    {
      *(a1 + 32) = v5;
      if (v6)
      {
        a2 += *(a1 + 880);
      }

      goto LABEL_26;
    }
  }

  return result;
}

char *setDoubleArrayOneValue(void **a1, uint64_t a2, double a3)
{
  v6 = *a1;
  if (v6)
  {
    free(v6);
  }

  result = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
  *a1 = result;
  if (result && a2)
  {
    v8 = 0;
    v9 = vdupq_n_s64(a2 - 1);
    v10 = &result[8 * a2 - 8];
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v8), xmmword_186205EC0)));
      if (v11.i8[0])
      {
        *v10 = a3;
      }

      if (v11.i8[4])
      {
        *(v10 - 1) = a3;
      }

      v8 += 2;
      v10 -= 2;
    }

    while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v8);
  }

  return result;
}

uint64_t setExtraSamples(uint64_t a1, unsigned __int16 *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a2;
  *a3 = v8;
  if (v8 > *(a1 + 130))
  {
    return 0;
  }

  v9 = *(a2 + 1);
  if (v8 && v9 == 0)
  {
    return 0;
  }

  if (v8)
  {
    v13 = v8;
    v14 = *(a2 + 1);
    do
    {
      v15 = *v14;
      if (v15 >= 3)
      {
        if (v15 != 999)
        {
          return 0;
        }

        *v14 = 2;
      }

      ++v14;
      --v13;
    }

    while (v13);
  }

  if (*(a1 + 344))
  {
    v16 = *(a1 + 130);
    if ((v16 - v8) >= 2 && v16 - *(a1 + 212) <= 1)
    {
      TIFFWarningExtR(a1, "setExtraSamples", "ExtraSamples tag value is changing, but TransferFunction was read with a different value. Canceling it", a4, a5, a6, a7, a8, v18);
      *(a1 + 76) &= ~0x1000u;
      free(*(a1 + 344));
      *(a1 + 344) = 0;
      LODWORD(v8) = *a3;
    }
  }

  *(a1 + 212) = v8;
  setByteArray((a1 + 216), v9, v8, 2, a5, a6, a7, a8);
  return 1;
}

uint64_t countInkNamesString(void *a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (a2)
  {
    v9 = a3 + a2;
    while (a3 < v9)
    {
      v10 = v9 - a3++;
      while (*(a3 - 1))
      {
        ++a3;
        if (!--v10)
        {
          goto LABEL_10;
        }
      }

      ++v8;
      if (a3 >= v9)
      {
        return v8;
      }
    }
  }

LABEL_10:
  TIFFErrorExtR(a1, "TIFFSetField", "%s: Invalid InkNames value; no null at given buffer end location %u, after %hu ink", a4, a5, a6, a7, a8, *a1);
  return 0;
}

void IIO_Reader_ICNS::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

IIOImageRead *IIO_Reader_ICNS::createGlobalInfoData(IIO_Reader_ICNS *this, IIOImageReadSession *a2)
{
  result = IIOImageReadSession::globalInfoForType(a2, 1229147731);
  if (result)
  {

    return GlobalICNSInfo::createDataRepresentation(result);
  }

  return result;
}

GlobalICNSInfo *globalICNSInfoReleaseProc(GlobalICNSInfo *result)
{
  if (result)
  {
    GlobalICNSInfo::~GlobalICNSInfo(result);

    JUMPOUT(0x186602850);
  }

  return result;
}

uint64_t IIO_Reader_ICNS::updateSourceProperties(IIO_Reader_ICNS *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  v33 = 0;
  *v32 = 0;
  v8 = IIOImageReadSession::globalInfoForType(a2, 1229147731);
  v9 = v8;
  if (!v8)
  {
    operator new();
  }

  IIO_Reader_ICNS::extractImageInfo(v8, v8, a2);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  IIODictionary::IIODictionary(&v29);
  v26 = 0;
  value = 0;
  v28 = 0;
  IIOArray::IIOArray(&v26);
  IIODictionary::setObjectForKey(&v29, value, @"Images");
  for (i = 0; i < GlobalICNSInfo::icnsImageCount(v9); ++i)
  {
    v25 = 0;
    *v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    GlobalICNSInfo::getICNSImageInfoAtIndex(v9, i, &v22);
    *v32 = bswap32(v24);
    v20[0] = 0;
    v20[1] = 0;
    v21 = 0;
    IIOString::IIOString(v20, v32);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    IIODictionary::IIODictionary(&v17);
    IIODictionary::setObjectForKey(&v17, v21, @"IconType");
    IIONumber::IIONumber(v15, LOWORD(v23[1]));
    IIODictionary::setObjectForKey(&v17, v16, @"PixelWidth");
    IIONumber::~IIONumber(v15);
    IIONumber::IIONumber(v15, WORD1(v23[1]));
    IIODictionary::setObjectForKey(&v17, v16, @"PixelHeight");
    IIONumber::~IIONumber(v15);
    if (BYTE1(v25) == 2)
    {
      v11 = 144;
    }

    else
    {
      v11 = 72;
    }

    IIONumber::IIONumber(v15, v11);
    IIODictionary::setObjectForKey(&v17, v16, @"DPIWidth");
    IIONumber::~IIONumber(v15);
    if (BYTE1(v25) == 2)
    {
      v12 = 144;
    }

    else
    {
      v12 = 72;
    }

    IIONumber::IIONumber(v15, v12);
    IIODictionary::setObjectForKey(&v17, v16, @"DPIHeight");
    IIONumber::~IIONumber(v15);
    IIOArray::addObject(&v26, v18);
    IIODictionary::~IIODictionary(&v17);
    IIOString::~IIOString(v20);
  }

  Count = IIOArray::getCount(&v26);
  IIONumber::IIONumber(&v22, Count);
  IIODictionary::setObjectForKey(&v29, v23[0], @"ImageCount");
  IIONumber::~IIONumber(&v22);
  IIODictionary::setObjectForKey(a3, v30, @"{FileContents}");
  IIOArray::~IIOArray(&v26);
  IIODictionary::~IIODictionary(&v29);
  return 0;
}

void IIO_Reader_ICNS::extractImageInfo(IIO_Reader_ICNS *this, GlobalICNSInfo *a2, IIOImageReadSession *a3)
{
  v46[2] = *MEMORY[0x1E69E9840];
  if (!GlobalICNSInfo::icnsImageCount(a2) && IIOImageReadSession::isFinal(a3))
  {
    v45 = 0;
    v44 = 0;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0;
    v46[0] = 0;
    v46[1] = 0;
    IIOImageReadSession::rewind(a3);
    v39 = 0;
    IIOImageReadSession::getBytes(a3, &v39, 4);
    v5 = v39;
    v39 = bswap32(v39);
    if (v5 != 1936614249)
    {
      IIO_Reader_ICNS::extractImageInfo();
      if (!a2)
      {
        return;
      }

      goto LABEL_51;
    }

    IIOImageReadSession::skipBytes(a3, 4);
    v6 = MEMORY[0x1E69E9830];
    do
    {
      if (IIOImageReadSession::getBytes(a3, &v44, 4) != 4)
      {
        break;
      }

      v44 = bswap32(v44);
      if (IIOImageReadSession::getBytes(a3, &v45, 4) != 4)
      {
        break;
      }

      v7 = bswap32(v45);
      v45 = v7;
      if (v7 < 9)
      {
        break;
      }

      v45 = v7 - 8;
      v8 = IIO_Reader::minimumFileSize(a3);
      if (v45 >= 0x10)
      {
        if (IIOImageReadSession::getBytes(a3, v46, 16) != 16)
        {
          break;
        }

        ReaderHandler = IIO_ReaderHandler::GetReaderHandler(0x10);
        v12 = IIO_ReaderHandler::readerForType(ReaderHandler, 1347307296);
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v13 = (*(*v12 + 16))(v12, v46, 16, 0, &v36);
        if (v13)
        {
          v10 = 2;
        }

        else
        {
          v14 = IIO_ReaderHandler::GetReaderHandler(v13);
          v15 = IIO_ReaderHandler::readerForType(v14, 1246769696);
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v10 = (*(*v15 + 16))(v15, v46, 16, 0, &v36) ? 4 : 1;
        }

        v9 = 16;
      }

      else
      {
        v9 = 0;
        v10 = 1;
      }

      ICNSInfoTable = GetICNSInfoTable();
      v17 = v44;
      if (*ICNSInfoTable == -1)
      {
LABEL_21:
        if (v44 != 1414480672 && v44 != 1768842863)
        {
          v20 = v44 >> 24;
          if ((v44 >> 24) <= 0x7F)
          {
            v21 = *(v6 + 4 * v20 + 60) & 0x40000;
          }

          else
          {
            v21 = __maskrune(v20, 0x40000uLL);
            v17 = v44;
            v20 = v44 >> 24;
          }

          if (v21)
          {
            v25 = v20;
          }

          else
          {
            v25 = 46;
          }

          v26 = v17 << 8 >> 24;
          if (v26 <= 0x7F)
          {
            v27 = *(v6 + 4 * v26 + 60) & 0x40000;
          }

          else
          {
            v27 = __maskrune(v26, 0x40000uLL);
            LOWORD(v17) = v44;
            v26 = v44 << 8 >> 24;
          }

          if (v27)
          {
            v28 = v26;
          }

          else
          {
            v28 = 46;
          }

          v29 = v17 >> 8;
          if (v29 <= 0x7F)
          {
            v30 = *(v6 + 4 * v29 + 60) & 0x40000;
          }

          else
          {
            v30 = __maskrune(v29, 0x40000uLL);
            LOBYTE(v17) = v44;
            v29 = v44 >> 8;
          }

          if (v30)
          {
            v31 = v29;
          }

          else
          {
            v31 = 46;
          }

          v32 = v17;
          if (v17 <= 0x7F)
          {
            v33 = *(v6 + 4 * v17 + 60) & 0x40000;
          }

          else
          {
            v33 = __maskrune(v17, 0x40000uLL);
            v32 = v44;
          }

          if (v33)
          {
            v34 = v32;
          }

          else
          {
            v34 = 46;
          }

          _cg_jpeg_mem_term("extractImageInfo", 277, "did not handle '%c%c%c%c' -- not found in ICNSInfoTable\n", v25, v28, v31, v34);
        }
      }

      else
      {
        v18 = ICNSInfoTable + 16;
        while (v44 != *v18)
        {
          v19 = v18[12];
          v18 += 28;
          if (v19 == -1)
          {
            goto LABEL_21;
          }
        }

        v23 = *(v18 - 1);
        v22 = *v18;
        v24 = *(v18 + 2);
        v40 = *(v18 - 2);
        *(&v41 + 1) = *(&v23 + 1);
        v43 = v24;
        v42 = v22;
        *(&v40 + 1) = v8;
        *&v41 = v45;
        BYTE2(v43) = v10;
        GlobalICNSInfo::addICNSInfo(a2, &v40);
      }

      v35 = IIOImageReadSession::skipBytes(a3, v45 - v9);
    }

    while (v35 == (v45 - v9));
    if (a2)
    {
LABEL_51:
      GlobalICNSInfo::sortInfo(a2);
    }
  }
}

uint64_t IIO_Reader_ICNS::getImageCount(IIO_Reader_ICNS *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  v7 = IIOImageReadSession::globalInfoForType(a2, 1229147731);
  v8 = v7;
  if (!v7)
  {
    operator new();
  }

  IIO_Reader_ICNS::extractImageInfo(v7, v7, a2);
  v9 = GlobalICNSInfo::icnsImageCount(v8);
  if (a5)
  {
    *a5 = v9;
  }

  return 0;
}

uint64_t GetSizeForTiffType(uint64_t result)
{
  result = result;
  switch(result)
  {
    case 0:
      return result;
    case 1:
    case 2:
    case 6:
    case 7:
      return 1;
    case 3:
    case 8:
      return 2;
    case 4:
    case 9:
    case 11:
    case 13:
      return 4;
    case 5:
    case 10:
    case 12:
    case 16:
    case 17:
    case 18:
      return 8;
    case 14:
    case 15:
      goto LABEL_7;
    default:
      if (result == 32775)
      {
        return 8;
      }

LABEL_7:
      _cg_jpeg_mem_term("GetSizeForTiffType", 145, "*** ERROR: tag with unknown type [%d]\n", result);
      return 0;
  }
}

void ReadGPSVers(uint64_t a1, uint64_t a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, unsigned __int8 *a7)
{
  v12 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d.%d.%d.%d", a7[8], a7[9], a7[10], a7[11]);
  if (v12)
  {
    v13 = v12;
    v14 = CGImageMetadataTagCreate(a3, a4, a5, kCGImageMetadataTypeString, v12);
    CFRelease(v13);
    if (v14)
    {
      CGImageMetadataAddTagWithKey(a1, a6, v14);

      CFRelease(v14);
    }
  }
}

void ReadGPSCoords(uint64_t a1, IIOImageReadSession *this, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, uint64_t a7, uint64_t a8, char a9)
{
  v32 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v15 = *(a7 + 8);
  if (a9)
  {
    v16 = bswap32(v15);
    *(a7 + 8) = v16;
    if (IIOImageReadSession::getBytesAtOffset(this, &v29, v16 + a8, 24) != 24)
    {
      return;
    }

    for (i = 0; i != 24; i += 4)
    {
      *(&v29 + i) = bswap32(*(&v29 + i));
    }
  }

  else if (IIOImageReadSession::getBytesAtOffset(this, &v29, v15 + a8, 24) != 24)
  {
    return;
  }

  if (*a7 == 7)
  {
    v19 = 0.0;
    v20 = 0.0;
    if (HIDWORD(v29))
    {
      LODWORD(v20) = v29;
      v17 = HIDWORD(v29);
      v20 = *&v20 / HIDWORD(v29);
    }

    if (HIDWORD(v30))
    {
      LODWORD(v19) = v30;
      v17 = HIDWORD(v30);
      v19 = *&v19 / HIDWORD(v30);
    }

    if (HIDWORD(v31))
    {
      LODWORD(v17) = v31;
      v21 = *&v17 / HIDWORD(v31);
      if (v21 > 3600.0)
      {
        v20 = v20 + (v21 / 3600.0);
        v21 = v21 - (3600 * (v21 / 3600.0));
      }

      if (v21 > 60.0)
      {
        v22 = (v21 / 60.0);
        v19 = v19 + v22;
        v21 = v21 - (60 * v22);
        if (v19 > 60.0)
        {
          v20 = v20 + (v19 / 60.0);
          v19 = v19 - (60 * (v19 / 60.0));
        }
      }
    }

    else
    {
      v21 = 0.0;
    }

    if (v20 > 23.0)
    {
      v20 = v20 + -23.0;
    }

    v26 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%.2ld:%.2ld:%05.2f", v20, v19, *&v21);
  }

  else
  {
    v23 = 0.0;
    if (v29)
    {
      v24 = HIDWORD(v29) == 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = 0.0;
    if (!v24)
    {
      v25 = v29 / HIDWORD(v29);
    }

    if (v30 && HIDWORD(v30))
    {
      v23 = v30 / HIDWORD(v30);
    }

    if (v31 && HIDWORD(v31))
    {
      v23 = v23 + v31 / (HIDWORD(v31) * 60.0);
    }

    if (v25 > 180.0)
    {
      v25 = 180.0;
    }

    v26 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%ld,%g", v25, v23 + (v25 - v25) * 60.0);
  }

  v27 = v26;
  if (v26)
  {
    v28 = CGImageMetadataTagCreate(a3, a4, a5, kCGImageMetadataTypeString, v26);
    CFRelease(v27);
    if (v28)
    {
      CGImageMetadataAddTagWithKey(a1, a6, v28);
      CFRelease(v28);
    }
  }
}

void ReadUserComment(int a1, IIOImageReadSession *this, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a7 + 4) > 8u)
  {
    Size = IIOImageReadSession::getSize(this);
    v13 = *(a7 + 4);
    if (Size <= v13)
    {
      _cg_jpeg_mem_term("ReadUserComment", 1203, "*** ERROR: tag-count too big: %d    image-size: %ld\n");
    }

    else
    {
      v14 = malloc_type_malloc(v13, 0x100004077774924uLL);
      v15 = *(a7 + 8);
      if (a9)
      {
        v15 = bswap32(v15);
        *(a7 + 8) = v15;
      }

      IIOImageReadSession::getBytesAtOffset(this, v14, a8 + v15, *(a7 + 4));
      if (*v14 == *ReadUserComment(CGImageMetadata *,IIOImageReadSession *,__CFString const*,__CFString const*,__CFString const*,CGImageMetadataTagKey *,tag_entry *,unsigned long,BOOL)::asciiCode)
      {
        operator new();
      }

      if (*v14 == *ReadUserComment(CGImageMetadata *,IIOImageReadSession *,__CFString const*,__CFString const*,__CFString const*,CGImageMetadataTagKey *,tag_entry *,unsigned long,BOOL)::jisCode)
      {
        operator new();
      }

      if (*v14 == *ReadUserComment(CGImageMetadata *,IIOImageReadSession *,__CFString const*,__CFString const*,__CFString const*,CGImageMetadataTagKey *,tag_entry *,unsigned long,BOOL)::uniCode)
      {
        operator new();
      }

      free(v14);
    }
  }

  else
  {
    _cg_jpeg_mem_term("ReadUserComment", 1195, "*** ERROR: tag-count: %d too small\n");
  }
}

__n128 ReadDeviceSettings(uint64_t a1, IIOImageReadSession *this, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = *(a7 + 4);
  if (v9 <= 4)
  {
    return _cg_jpeg_mem_term("ReadDeviceSettings", 1289, "*** tagsize (%d) too small\n");
  }

  else if (IIOImageReadSession::getSize(this) <= v9)
  {
    IIOImageReadSession::getSize(this);
    return _cg_jpeg_mem_term("ReadDeviceSettings", 1290, "*** tagsize (%d) larger than filesize (%d)\n");
  }

  else
  {
    v18 = malloc_type_malloc(*(a7 + 4), 0x100004077774924uLL);
    if (v18)
    {
      v20 = v18;
      v21 = *(a7 + 8);
      if (a9)
      {
        v21 = bswap32(v21);
        *(a7 + 8) = v21;
      }

      BytesAtOffset = IIOImageReadSession::getBytesAtOffset(this, v18, a8 + v21, *(a7 + 4));
      if (BytesAtOffset == *(a7 + 4))
      {
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        IIOScanner::IIOScanner(&v33, v20, BytesAtOffset, a9 != 1);
        Val16 = IIOScanner::getVal16(&v33);
        v24 = IIOScanner::getVal16(&v33);
        if ((v24 * Val16) < *(a7 + 4))
        {
          v30 = 0;
          value = 0;
          v32 = 0;
          IIOArray::IIOArray(&v30);
          for (i = IIOScanner::getString(&v33); i && *i >= 8; i = IIOScanner::getString(&v33))
          {
            IIOString::IIOString(v28, i);
            IIOArray::addObject(&v30, v29);
            IIOString::~IIOString(v28);
            if (*(&v34 + 1) < *(a7 + 4) && !*(*(&v33 + 1) + *(&v34 + 1)))
            {
              IIOScanner::getVal8(&v33);
            }
          }

          if (IIOArray::getCount(&v30) != v24 * Val16)
          {
            Count = IIOArray::getCount(&v30);
            _cg_jpeg_mem_term("ReadDeviceSettings", 1323, "*** tag 0xA40B --> cols=%d  rows=%d   #of strings: %d\n", Val16, v24, Count);
          }

          v27 = CGImageMetadataTagCreate(a3, a4, a5, kCGImageMetadataTypeArrayOrdered, value);
          if (v27)
          {
            CGImageMetadataAddTagWithKey(a1, a6, v27);
            CFRelease(v27);
          }

          IIOArray::~IIOArray(&v30);
        }

        IIOScanner::~IIOScanner(&v33);
      }

      free(v20);
    }
  }

  return result;
}

void sub_18600A0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  IIOArray::~IIOArray(va);
  IIOScanner::~IIOScanner(va1);
  _Unwind_Resume(a1);
}

void ReadMetadataByte(uint64_t a1, IIOImageReadSession *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, int a7, uint64_t a8, uint64_t a9, char a10)
{
  v15 = *(a8 + 4);
  if (v15 <= 4)
  {
    v17 = 0;
    v19 = (a8 + 8);
    LODWORD(v18) = *(a8 + 4);
    goto LABEL_8;
  }

  v17 = malloc_type_calloc(v15, 1uLL, 0x60407E4EuLL);
  v18 = *(a8 + 4);
  v19 = (a8 + 8);
  if (v18 < 5)
  {
    goto LABEL_8;
  }

  v20 = *v19;
  if (a10)
  {
    v20 = bswap32(v20);
    *v19 = v20;
  }

  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, v17, a9 + v20, v18);
  v19 = v17;
  v18 = *(a8 + 4);
  if (BytesAtOffset == v18)
  {
LABEL_8:
    v22 = v18 <= 1 && a7 == 0;
    v23 = MEMORY[0x1E695E480];
    if (v22)
    {
      if (!v18)
      {
        goto LABEL_29;
      }

      v33 = a6;
      name = a5;
      v32 = a1;
      v25 = 0;
      v26 = kCGImageMetadataTypeString;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v25 = Mutable;
      if (!*(a8 + 4))
      {
        if (!Mutable)
        {
          goto LABEL_29;
        }

        v33 = a6;
        name = a5;
        v32 = a1;
        v26 = kCGImageMetadataTypeArrayOrdered;
        goto LABEL_26;
      }

      v33 = a6;
      name = a5;
      v32 = a1;
      v26 = kCGImageMetadataTypeArrayOrdered;
    }

    v27 = 0;
    v28 = *v23;
    do
    {
      v29 = CFStringCreateWithFormat(v28, 0, @"%d", *(v19 + v27));
      if ((a7 & 1) != 0 || (v30 = *(a8 + 4), v30 >= 2))
      {
        CFArrayAppendValue(v25, v29);
        CFRelease(v29);
        v29 = 0;
        v30 = *(a8 + 4);
      }

      ++v27;
    }

    while (v27 < v30);
    if (!v25)
    {
      if (!v29)
      {
        goto LABEL_29;
      }

      v31 = CGImageMetadataTagCreate(a3, a4, name, v26, v29);
      goto LABEL_27;
    }

LABEL_26:
    v31 = CGImageMetadataTagCreate(a3, a4, name, v26, v25);
    v29 = v25;
LABEL_27:
    CFRelease(v29);
    if (v31)
    {
      CGImageMetadataAddTagWithKey(v32, v33, v31);
      CFRelease(v31);
    }
  }

LABEL_29:
  if (v17)
  {

    free(v17);
  }
}

void ReadDateTime(uint64_t a1, IIOImageReadSession *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v9 = *(a7 + 4);
  if ((v9 - 21) <= 0xFFFFFFFD)
  {
    _cg_jpeg_mem_term("ReadDateTime", 1515, "Bad dataTime length: %d (expected 20)\n", *(a7 + 4));
  }

  else if (*(a7 + 2) == 2)
  {
    if (v9 == 19)
    {
      _cg_jpeg_mem_term("ReadDateTime", 1519, "Bad dataTime length: 19 (expected 20) missing null termination?\n");
    }

    ASCIIString = ReadAndCreateASCIIString(a2, a7, a8, a9);
    if (ASCIIString)
    {
      v19 = ASCIIString;
      v20 = CFStringCreateWithCString(*MEMORY[0x1E695E480], ASCIIString, 0x8000100u);
      if (v20)
      {
        v21 = v20;
        XMPDateTimeFromEXIFDateTime = CreateXMPDateTimeFromEXIFDateTime(v20);
        if (XMPDateTimeFromEXIFDateTime)
        {
          v23 = XMPDateTimeFromEXIFDateTime;
          v24 = CGImageMetadataTagCreate(a3, a4, a5, kCGImageMetadataTypeString, XMPDateTimeFromEXIFDateTime);
          if (v24)
          {
            v25 = v24;
            CGImageMetadataAddTagWithKey(a1, a6, v24);
            CFRelease(v25);
          }

          CFRelease(v23);
        }

        CFRelease(v21);
      }

      free(v19);
    }
  }

  else
  {
    ReadDateTime();
  }
}

void ReadOffsetTime(uint64_t a1, IIOImageReadSession *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (*(a7 + 4) == 7)
  {
    if (*(a7 + 2) == 2)
    {
      ASCIIString = ReadAndCreateASCIIString(a2, a7, a8, a9);
      if (ASCIIString)
      {
        v15 = ASCIIString;
        v16 = CFStringCreateWithCString(*MEMORY[0x1E695E480], ASCIIString, 0x8000100u);
        if (v16)
        {
          v17 = v16;
          v18 = CGImageMetadataTagCreate(a3, a4, a5, kCGImageMetadataTypeString, v16);
          if (v18)
          {
            v19 = v18;
            CGImageMetadataAddTagWithKey(a1, a6, v18);
            CFRelease(v19);
          }

          CFRelease(v17);
        }

        free(v15);
      }
    }

    else
    {
      ReadOffsetTime();
    }
  }

  else
  {
    _cg_jpeg_mem_term("ReadOffsetTime", 1564, "Bad dataOffsetTime length: %d (expected 7)\n", *(a7 + 4));
  }
}

void ReadPhotoshopImageResourceTag(uint64_t a1, IIOImageReadSession *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = *(a7 + 4);
  if ((v10 - 20001) > 0xFFFFB1E8)
  {
    v14 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL);
    v16 = *(a7 + 4);
    LODWORD(v15) = *(a7 + 8);
    v17 = bswap32(v15);
    if (a9)
    {
      v15 = v17;
    }

    else
    {
      v15 = v15;
    }

    if (IIOImageReadSession::getBytesAtOffset(a2, v14, v15 + a8, *(a7 + 4)) == v16)
    {
      ReadPhotoshopImageResource(a1, v14, v16);
    }

    if (v14)
    {

      free(v14);
    }
  }

  else
  {
    LogError("ReadPhotoshopImageResourceTag", 1657, "*** ERROR: Skipping Photoshop Image Resources block, size is %d\n", *(a7 + 4));
  }
}

void ReadTiffMetadata(IIOImageReadSession *a1, CGImageMetadata *a2, off_t a3, unsigned int a4, const __CFData *a5, char a6)
{
  MetadataFromDatablock = CreateMetadataFromDatablock(a1, tagdefsIFD0, a3, a4, a5, a6);
  if (MetadataFromDatablock)
  {
    v8 = MetadataFromDatablock;
    CGImageMetadataMerge(a2, MetadataFromDatablock, 0);

    CFRelease(v8);
  }
}

uint64_t SRationalApprox(double a1, int *a2, unsigned int *a3)
{
  v7 = 0;
  v8 = 0;
  result = RationalApprox(a1, 0x7FFFFFFFLL, &v8, &v7);
  v6 = v7;
  *a2 = v8;
  *a3 = v6;
  return result;
}

uint64_t CreateExifBufferFromPropertiesTIFF(IIODictionary *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t *a5)
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(v8, 0x9A0uLL);
  if (a1 && IIODictionary::getObjectForKey(a1, @"{Exif}"))
  {
    operator new();
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

void sub_18600ABC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t _CreateGPSBufferFromPropertiesTIFF(IIODictionary *a1, unint64_t a2, unint64_t a3, void *a4, BOOL a5, unint64_t *a6)
{
  v10 = *MEMORY[0x1E69E9840];
  bzero(v9, 0x420uLL);
  if (a1 && IIODictionary::getObjectForKey(a1, @"{GPS}"))
  {
    operator new();
  }

  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

const __CFString *___ZL27CreateMetadataFromDatablockP19IIOImageReadSessionPK6tagdefmmbPK8__CFDataj_block_invoke_2()
{
  result = malloc_type_malloc(0x58uLL, 0x2004093837F09uLL);
  v1 = result;
  if (result)
  {
    v2 = 0;
    v3 = &off_1E6F090C0;
    do
    {
      v4 = *(v3 - 3);
      if (v4)
      {
        result = *v4;
      }

      else
      {
        result = 0;
      }

      v5 = *v3;
      if (*v3)
      {
        v6 = 0;
        if (result && *v5)
        {
          result = CGImageMetadataTagKeyCreate(result, *v5);
          v6 = result;
        }
      }

      else
      {
        v6 = 0;
      }

      *(v1 + v2) = v6;
      v2 += 8;
      v3 += 7;
    }

    while (v2 != 88);
  }

  IFD1TagKeys = v1;
  return result;
}

const __CFString *___ZL27CreateMetadataFromDatablockP19IIOImageReadSessionPK6tagdefmmbPK8__CFDataj_block_invoke_4()
{
  result = malloc_type_malloc(0x100uLL, 0x2004093837F09uLL);
  v1 = result;
  if (result)
  {
    v2 = 0;
    v3 = &off_1EF4D7F30;
    do
    {
      v4 = *(v3 - 4);
      if (v4)
      {
        result = *v4;
      }

      else
      {
        result = 0;
      }

      v5 = *v3;
      if (*v3 || (v5 = *(v3 - 1)) != 0)
      {
        v6 = 0;
        if (result && *v5)
        {
          result = CGImageMetadataTagKeyCreate(result, *v5);
          v6 = result;
        }
      }

      else
      {
        v6 = 0;
      }

      *(v1 + v2) = v6;
      v2 += 8;
      v3 += 7;
    }

    while (v2 != 256);
  }

  GPSTagKeys = v1;
  return result;
}

void call_RAWCamera_readMakerNoteProps(uint64_t a1, IIODictionary *a2, uint64_t a3, uint64_t a4, char a5)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = 0;
  v11 = a4;
  v10 = a5 & 1;
  IIONumber::IIONumber(v9, a4);
  IIODictionary::setObjectForKeyGroup(a2, v9, @"MakerNoteSize", @"{MakerNoteInfo}");
  IIONumber::~IIONumber(v9);
  if (gReadMakerNoteProps)
  {
    v6 = gReadMakerNoteProps;
    v7 = v15;
    v8 = IIOImageSource::cf(v14);
    v6(v7, v8, v13, v12, v10);
  }

  IIODictionary::removeObjectForKey(v14, @"{MakerNoteInfo}");
}

void ReadMetadataSRtnl(uint64_t a1, IIOImageReadSession *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, int a7, uint64_t a8, char a9)
{
  v16 = malloc_type_calloc(*(a8 + 4), 8uLL, 0x100004052888210uLL);
  v17 = *(a8 + 8);
  if (a9)
  {
    v17 = bswap32(v17);
    *(a8 + 8) = v17;
  }

  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, v16, v17, (8 * *(a8 + 4)));
  v19 = *(a8 + 4);
  if (BytesAtOffset == 8 * v19)
  {
    if ((v19 & 0x7FFFFFFF) != 0 && a9)
    {
      v20 = 0;
      do
      {
        *&v16[4 * v20] = bswap32(*&v16[4 * v20]);
        ++v20;
        v19 = *(a8 + 4);
      }

      while (v20 < 2 * v19);
    }

    v21 = v19 <= 1 && a7 == 0;
    v22 = MEMORY[0x1E695E480];
    if (v21)
    {
      if (!v19)
      {
        goto LABEL_30;
      }

      prefix = a4;
      name = a5;
      v37 = a1;
      v25 = a6;
      v24 = 0;
      v26 = 1;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v24 = Mutable;
      if (!*(a8 + 4))
      {
        if (!Mutable)
        {
          goto LABEL_30;
        }

        v32 = kCGImageMetadataTypeArrayOrdered;
        goto LABEL_27;
      }

      prefix = a4;
      name = a5;
      v37 = a1;
      v25 = a6;
      v26 = 3;
    }

    type = v26;
    v27 = 0;
    v28 = *v22;
    v29 = (v16 + 4);
    do
    {
      v30 = CFStringCreateWithFormat(v28, 0, @"%d/%d", *(v29 - 1), *v29);
      if ((a7 & 1) != 0 || (v31 = *(a8 + 4), v31 >= 2))
      {
        CFArrayAppendValue(v24, v30);
        CFRelease(v30);
        v30 = 0;
        v31 = *(a8 + 4);
      }

      v29 += 2;
      ++v27;
    }

    while (v27 < v31);
    a6 = v25;
    a1 = v37;
    a4 = prefix;
    if (!v24)
    {
      if (!v30)
      {
        goto LABEL_30;
      }

      v33 = CGImageMetadataTagCreate(a3, prefix, name, type, v30);
      goto LABEL_28;
    }

    a5 = name;
    v32 = type;
LABEL_27:
    v33 = CGImageMetadataTagCreate(a3, a4, a5, v32, v24);
    v30 = v24;
LABEL_28:
    CFRelease(v30);
    if (v33)
    {
      CGImageMetadataAddTagWithKey(a1, a6, v33);
      CFRelease(v33);
    }
  }

LABEL_30:

  free(v16);
}

uint64_t ___ZL16validValueForKeyPK6tagdefPKv_block_invoke(uint64_t a1, const __CFString *cf)
{
  v4 = CFGetTypeID(cf);
  result = CFStringGetTypeID();
  if (v4 == result)
  {
    result = CFStringGetLength(cf);
    *(*(*(a1 + 32) + 8) + 24) += result + 2;
  }

  return result;
}

void ___ZL18WriteValueForTagIDPKvmttbPh_block_invoke(void *a1, CFTypeRef cf, uint64_t a3, _BYTE *a4)
{
  v7 = CFGetTypeID(cf);
  if (v7 == CFStringGetTypeID())
  {
    memset(v16, 0, sizeof(v16));
    IIOString::IIOString(v16, cf);
    v8 = *(*(a1[4] + 8) + 24);
    v9 = IIOString::length(v16) + v8;
    v10 = a1[5];
    if (v10 <= v9)
    {
      *a4 = 1;
    }

    else
    {
      v11 = *(*(a1[4] + 8) + 24);
      v12 = IIOString::length(v16);
      v13 = a1[6];
      v14 = *(*(a1[4] + 8) + 24);
      v15 = IIOString::utf8String(v16);
      *(*(a1[4] + 8) + 24) += snprintf((v13 + v14), v10 - (v12 + v11), "%s", v15);
      *(*(a1[4] + 8) + 24) += 2;
    }

    IIOString::~IIOString(v16);
  }
}

void sub_18600B5C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void IIO_Reader_PVR::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

uint64_t IIO_Reader_PVR::getImageCount(IIO_Reader_PVR *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  Size = IIOImageReadSession::getSize(a2);
  v27 = 0;
  IIOImageReadSession::getBytesAtOffset(a2, &v27, 44, 4);
  v11 = v27;
  LODWORD(v27) = bswap32(v27);
  if (v11 == 559044176)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    IIOImageReadSession::getBytesAtOffset(a2, &v23, 0, 52);
    if (DWORD2(v23) > Size || DWORD1(v23) > Size)
    {
      _cg_jpeg_mem_term("getImageCount", 169, "*** invalid PVR file: size: %d x %d  (fileSize: %d)\n");
      goto LABEL_17;
    }

    if ((DWORD2(v24) - 129) <= 0xFFFFFF7F)
    {
      _cg_jpeg_mem_term("getImageCount", 175, "*** invalid PVR file: Bits Per Pixel: %d\n");
LABEL_17:
      v15 = 4294967246;
      goto LABEL_24;
    }

    if ((BYTE1(v24) & 1) == 0)
    {
      goto LABEL_17;
    }

    v15 = 0;
    v16 = HIDWORD(v23);
    if (HIDWORD(v23) <= 1)
    {
      v16 = 1;
    }

    goto LABEL_21;
  }

  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, &v27, 0, 4);
  v13 = v27;
  LODWORD(v27) = bswap32(v27);
  if (v13 == 55727696)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    IIOImageReadSession::getBytesAtOffset(a2, &v23, 0, 52);
    if (HIDWORD(v24) > Size || DWORD2(v24) > Size)
    {
      _cg_jpeg_mem_term("getImageCount", 197, "*** invalid PVR file: size: %d x %d  (fileSize: %d)\n");
      goto LABEL_17;
    }

    if (DWORD1(v25) >= 0x11)
    {
      _cg_jpeg_mem_term("getImageCount", 201, "*** bad numberOfSurfaces count [%d]\n");
      goto LABEL_17;
    }

    v14 = DWORD2(v25);
    if (IIOImageReadSession::getSize(a2) < v14)
    {
      IIO_Reader_PVR::getImageCount(&v25 + 2, a2);
      goto LABEL_17;
    }

    v15 = 0;
    v16 = HIDWORD(v25);
LABEL_21:
    HIDWORD(v27) = v16;
    goto LABEL_24;
  }

  v17 = *(this + 1);
  if (v17 == kCGImageTypeIdentifierKTX)
  {
    ReaderHandler = IIO_ReaderHandler::GetReaderHandler(BytesAtOffset);
    v19 = 1263818784;
  }

  else
  {
    if (v17 != kCGImageTypeIdentifierKTX2)
    {
      goto LABEL_17;
    }

    ReaderHandler = IIO_ReaderHandler::GetReaderHandler(BytesAtOffset);
    v19 = 1263818802;
  }

  v20 = IIO_ReaderHandler::readerForType(ReaderHandler, v19);
  v15 = (*(*v20 + 32))(v20, a2, a3, a4, &v27 + 4);
LABEL_24:
  v21 = HIDWORD(v27);
  if (HIDWORD(v27) > Size)
  {
    _cg_jpeg_mem_term("getImageCount", 225, "*** invalid PVR file: MipMapCount = %d  (fileSize: %d)\n", HIDWORD(v27), Size);
    v21 = 0;
  }

  if (a5)
  {
    *a5 = v21;
  }

  return v15;
}

uint64_t _cg_TIFFComputeStrip(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 132);
  if (!v8)
  {
    TIFFErrorExt(*(a1 + 1200), "TIFFComputeStrip", "Unexpected rowsperstrip: %lu", a4, a5, a6, a7, a8, 0);
    return 0;
  }

  v9 = a2 / v8;
  if (*(a1 + 170) == 2)
  {
    if (*(a1 + 130) > a3)
    {
      return v9 + *(a1 + 224) * a3;
    }

    TIFFErrorExtR(a1, "TIFFComputeStrip", "%lu: Sample out of range, max %lu", a4, a5, a6, a7, a8, a3);
    return 0;
  }

  return v9;
}

uint64_t _cg_TIFFNumberOfStrips(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 132);
  if (v10 == -1)
  {
    v11 = 1;
  }

  else
  {
    if (!v10)
    {
      TIFFWarningExtR(a1, "TIFFNumberOfStrips", "RowsPerStrip is zero", a4, a5, a6, a7, a8, v8);
      return 0;
    }

    v11 = 0;
    v12 = *(a1 + 92);
    if (v12 < -v10)
    {
      v11 = (v10 + v12 - 1) / v10;
    }
  }

  if (*(a1 + 170) != 2)
  {
    return v11;
  }

  v13 = *(a1 + 130);

  return _TIFFMultiply32(a1, v11, v13, "TIFFNumberOfStrips", a5, a6, a7, a8);
}

unint64_t TIFFVStripSize64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (a2 == -1)
  {
    v8 = *(a1 + 92);
  }

  if (*(a1 + 170) == 1 && *(a1 + 122) == 6 && (*(a1 + 17) & 0x40) == 0)
  {
    v37 = 0;
    if (*(a1 + 130) == 3)
    {
      _cg_TIFFGetFieldDefaulted(a1, 530, a3, a4, a5, a6, a7, a8, &v37);
      if (v37 <= 4u && ((1 << v37) & 0x16) != 0 && HIWORD(v37) <= 4u && ((1 << SBYTE2(v37)) & 0x16) != 0)
      {
        v10 = *(a1 + 88);
        if (v10 >= -v37)
        {
          v11 = 0;
        }

        else
        {
          v11 = (v37 + v10 - 1) / v37;
        }

        if (v8 < -HIWORD(v37))
        {
          v19 = (v8 + HIWORD(v37) - 1) / HIWORD(v37);
        }

        else
        {
          v19 = 0;
        }

        v20 = _TIFFMultiply64(a1, v11, (HIWORD(v37) * v37 + 2), "TIFFVStripSize64", a5, a6, a7, a8);
        v25 = _TIFFMultiply64(a1, v20, *(a1 + 116), "TIFFVStripSize64", v21, v22, v23, v24);
        v30 = _TIFFMultiply64(a1, v20, *(a1 + 116), "TIFFVStripSize64", v26, v27, v28, v29);
        if ((v25 & 7) != 0)
        {
          v35 = (v30 >> 3) + 1;
        }

        else
        {
          v35 = v30 >> 3;
        }

        return _TIFFMultiply64(a1, v35, v19, "TIFFVStripSize64", v31, v32, v33, v34);
      }

      v36 = v37;
      v18 = "Invalid YCbCr subsampling (%dx%d)";
    }

    else
    {
      v18 = "Invalid td_samplesperpixel value";
    }

    TIFFErrorExtR(a1, "TIFFVStripSize64", v18, a4, a5, a6, a7, a8, v36);
    return 0;
  }

  v12 = _cg_TIFFScanlineSize64(a1, a2, a3, a4, a5, a6, a7, a8);

  return _TIFFMultiply64(a1, v8, v12, "TIFFVStripSize64", v13, v14, v15, v16);
}

unint64_t _cg_TIFFScanlineSize64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (*(a1 + 170) != 1)
  {
    v23 = *(a1 + 88);
    v24 = *(a1 + 116);
    goto LABEL_21;
  }

  if (*(a1 + 122) != 6)
  {
    v25 = *(a1 + 88);
LABEL_20:
    v23 = _TIFFMultiply64(v8, v25, *(v8 + 130), "TIFFScanlineSize64", a5, a6, a7, a8);
    v24 = *(v8 + 116);
    a1 = v8;
LABEL_21:
    result = (_TIFFMultiply64(a1, v23, v24, "TIFFScanlineSize64", a5, a6, a7, a8) + 7) >> 3;
    if (result)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (*(a1 + 130) != 3 || (*(a1 + 17) & 0x40) != 0)
  {
    v25 = *(a1 + 88);
    v29 = 0;
    _cg_TIFFGetFieldDefaulted(a1, 530, a3, a4, a5, a6, a7, a8, &v29);
    if (v29 >= 2u)
    {
      v26 = 0;
      if (v25 < -v29)
      {
        v26 = (v25 + v29 - 1) / v29;
      }

      v25 = v26 * v29;
    }

    goto LABEL_20;
  }

  v30 = 0;
  _cg_TIFFGetFieldDefaulted(a1, 530, a3, a4, a5, a6, a7, a8, &v30);
  if (v30 > 4u || ((1 << v30) & 0x16) == 0 || HIWORD(v30) > 4u || ((1 << SBYTE2(v30)) & 0x16) == 0)
  {
    v27 = "Invalid YCbCr subsampling";
    goto LABEL_23;
  }

  v14 = *(v8 + 88);
  if (v14 < -v30)
  {
    v15 = (v30 + v14 - 1) / v30;
  }

  else
  {
    v15 = 0;
  }

  v16 = _TIFFMultiply64(v8, v15, HIWORD(v30) * v30 + 2, "TIFFScanlineSize64", v10, v11, v12, v13);
  v21 = _TIFFMultiply64(v8, v16, *(v8 + 116), "TIFFScanlineSize64", v17, v18, v19, v20);
  result = ((v21 + 7) >> 3) / HIWORD(v30);
  if (!result)
  {
LABEL_22:
    v27 = "Computed scanline size is zero";
LABEL_23:
    TIFFErrorExtR(v8, "TIFFScanlineSize64", v27, v9, v10, v11, v12, v13, v28);
    return 0;
  }

  return result;
}

uint64_t TIFFVStripSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = TIFFVStripSize64(a1, a2, a3, a4, a5, a6, a7, a8);

  return _TIFFCastUInt64ToSSize(a1, v9, "TIFFVStripSize", v10, v11, v12, v13, v14);
}

unint64_t _cg_TIFFStripSize64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 132);
  v9 = *(a1 + 92);
  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  return TIFFVStripSize64(a1, v10, a3, a4, a5, a6, a7, a8);
}

uint64_t _cg_TIFFStripSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 132);
  v10 = *(a1 + 92);
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = TIFFVStripSize64(a1, v11, a3, a4, a5, a6, a7, a8);

  return _TIFFCastUInt64ToSSize(a1, v12, "TIFFStripSize", v13, v14, v15, v16, v17);
}

uint64_t _TIFFDefaultStripSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 0)
  {
    v8 = _cg_TIFFScanlineSize64(a1, a2, a3, a4, a5, a6, a7, a8);
    if (v8 <= 0x2000)
    {
      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      return 0x2000u / v9;
    }

    else
    {
      return 1;
    }
  }

  return a2;
}

uint64_t _cg_TIFFScanlineSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _cg_TIFFScanlineSize64(a1, a2, a3, a4, a5, a6, a7, a8);

  return _TIFFCastUInt64ToSSize(a1, v9, "TIFFScanlineSize", v10, v11, v12, v13, v14);
}

void ICOWritePlugin::~ICOWritePlugin(ICOWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t ICOWritePlugin::writeAll(IIOImageDestination **this)
{
  v49 = *MEMORY[0x1E69E9840];
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
  __base = 0u;
  v20 = 0u;
  v18 = 0;
  __ptr = 0;
  ImageCount = IIOWritePlugin::getImageCount(this);
  if (!ImageCount)
  {
LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  v3 = 0;
  __nel = 0;
  if (ImageCount >= 0xC)
  {
    v4 = 12;
  }

  else
  {
    v4 = ImageCount;
  }

  do
  {
    PixelDataProviderAtIndex = IIOWritePlugin::getPixelDataProviderAtIndex(this, v3);
    Ref = IIOImageSource::imageReadRef(PixelDataProviderAtIndex);
    v7 = &__base + 40 * __nel;
    *v7 = PixelDataProviderAtIndex;
    *(v7 + 1) = Ref;
    *(v7 + 2) = IIOWritePlugin::getPropertiesAtIndex(this, v3);
    v8 = IIOImageSource::count(PixelDataProviderAtIndex);
    if (v8 == IIO_Reader::testHeaderSize(PixelDataProviderAtIndex))
    {
      if ((v8 - 16) <= 0x38 && ((1 << (v8 - 16)) & 0x101000100010101) != 0 || v8 == 256 || v8 == 128)
      {
        *(v7 + 6) = v8;
        ++__nel;
      }

      else
      {
        LogError("writeAll", 97, "*** unsupported ICO image size (%d x %d) - expected: 16, 32, 48, 128, or 256\n");
      }
    }

    else
    {
      LogError("writeAll", 101, "*** cannot create non-square ICO image (%d x %d)\n");
    }

    ++v3;
  }

  while (v4 != v3);
  v9 = __nel;
  if (__nel)
  {
    qsort_b(&__base, __nel, 0x28uLL, &__block_literal_global_12);
    __ptr = 0x10000;
    v18 = __nel;
    if (IIOImageWriteSession::putBytes(this[2], &__ptr, 6uLL) == 6)
    {
      v10 = malloc_type_calloc(0x10uLL, __nel, 0x1000040451B5BE8uLL);
      if (v10)
      {
        v11 = 0;
        v12 = v10 + 4;
        v13 = &v20 + 8;
        do
        {
          v14 = *v13;
          v13 += 40;
          *(v12 - 4) = v14;
          *(v12 - 3) = v14;
          *(v12 - 1) = 0;
          v12[1] = 0;
          v12[2] = 0;
          *v12 = 2097153;
          v12 += 4;
          ++v11;
        }

        while (__nel != v11);
        *&v21 = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
        operator new();
      }
    }

    goto LABEL_21;
  }

LABEL_22:
  ICOWritePlugin::writeAll(&__base, v9);
  return 4294967246;
}

uint64_t ___ZN14ICOWritePlugin8writeAllEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  v4 = *(a3 + 24);
  v5 = v3 >= v4;
  if (v3 <= v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

void IIO_Writer_HEIF::~IIO_Writer_HEIF(IIO_Writer_HEIF *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Writer_HEIF::createWritePlugin(IIO_Writer_HEIF *this, void *a2, IIOImageDestination *a3)
{
  v3 = IIOImageDestination::utType(a3);
  if (CFStringCompare(v3, @"public.jpeg", 0) && CFStringCompare(v3, @"public.avci", 0) && CFStringCompare(v3, @"public.heic", 0) && CFStringCompare(v3, @"public.heics", 0) && CFStringCompare(v3, @"public.heif", 0))
  {
    if (CFStringCompare(v3, @"public.avif", 0))
    {
      IIOString::IIOString(v5, v3);
      v4 = IIOString::utf8String(v5);
      LogError("createWritePlugin", 119, "*** ERROR: '%s' has no encoder-codec assigned - encoding will fail.\n", v4);
      IIOString::~IIOString(v5);
    }
  }

  operator new();
}

void sub_18600C80C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t IIO_Writer_HEIF::write(IIO_Writer_HEIF *this, void *a2, void *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_HEIF::write", 0, 0, -1, 0);
  }

  v6 = (*(*this + 8))(this, a2, a3);
  v7 = v6;
  if (!v6)
  {
    return 4294967246;
  }

  v8 = (*(*v6 + 16))(v6);
  (*(*v7 + 8))(v7);
  return v8;
}

void IIOReadPlugin::IIOReadPlugin(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1EF4D88F0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  if (IIO_XPCServer())
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    if (a2)
    {
      if (*(a2 + 24))
      {
        *(a1 + 40) = 1;
        operator new();
      }
    }

    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  abort();
}

uint64_t IIOReadPlugin::getPluginUTI(IIOReadPlugin *this)
{
  v1 = *(this + 9);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t IIOReadPlugin::callInitialize(IIOReadPlugin *this, BOOL *a2)
{
  v114 = 0;
  v115 = 0;
  v116 = 0;
  IIODictionary::IIODictionary(&v114);
  memset(v113, 0, sizeof(v113));
  IIODictionary::IIODictionary(v113);
  v3 = *(this + 55);
  *(this + 19) = v115;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    v4 = v3 >> 24;
    if ((v3 >> 24) <= 0x7F)
    {
      v5 = *(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000;
    }

    else
    {
      v5 = __maskrune(v3 >> 24, 0x40000uLL);
    }

    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = 46;
    }

    v7 = v3 << 8 >> 24;
    if (v7 <= 0x7F)
    {
      v8 = *(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000;
    }

    else
    {
      v8 = __maskrune(v3 << 8 >> 24, 0x40000uLL);
    }

    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 46;
    }

    v10 = v3 >> 8;
    if (v10 <= 0x7F)
    {
      v11 = *(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000;
    }

    else
    {
      v11 = __maskrune(v3 >> 8, 0x40000uLL);
    }

    if (v3 <= 0x7F)
    {
      v12 = *(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000;
    }

    else
    {
      v12 = __maskrune(v3, 0x40000uLL);
    }

    if (v11)
    {
      v13 = v10;
    }

    else
    {
      v13 = 46;
    }

    if (v12)
    {
      v14 = v3;
    }

    else
    {
      v14 = 46;
    }

    ImageIOLog("    callInitialize '%c%c%c%c' - [0x%x]\n", v6, v9, v13, v14, this);
  }

  v15 = (*(*this + 96))(this, v113);
  v16 = v15;
  if (v15 == -49)
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(v113, @"NEW_PLUGIN_ostype");
    v102 = IIODictionary::getUint32ForKey(v113, @"NEW_PLUGIN_dataOffset");
    if (v102)
    {
      Size = IIODictionary::getUint32ForKey(v113, @"NEW_PLUGIN_dataSize");
    }

    else
    {
      Size = IIOImageReadSession::getSize(*(this + 3));
    }

    v18 = v3 >> 24;
    v109 = v3 >> 24;
    if ((v3 >> 24) <= 0x7F)
    {
      v19 = *(MEMORY[0x1E69E9830] + 4 * v18 + 60) & 0x40000;
    }

    else
    {
      v19 = __maskrune(v3 >> 24, 0x40000uLL);
      v18 = v3 >> 24;
    }

    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 46;
    }

    v106 = v20;
    v21 = v3 << 8 >> 24;
    v108 = v21;
    if (v21 <= 0x7F)
    {
      v22 = *(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x40000;
    }

    else
    {
      v22 = __maskrune(v3 << 8 >> 24, 0x40000uLL);
      v21 = v3 << 8 >> 24;
    }

    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 46;
    }

    v105 = v23;
    v24 = v3 >> 8;
    v107 = v24;
    if (v24 <= 0x7F)
    {
      v25 = *(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x40000;
    }

    else
    {
      v25 = __maskrune(v3 >> 8, 0x40000uLL);
      v24 = v3 >> 8;
    }

    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 46;
    }

    v104 = v26;
    v27 = v3;
    if (v3 <= 0x7F)
    {
      v28 = *(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000;
    }

    else
    {
      v28 = __maskrune(v3, 0x40000uLL);
      v27 = v3;
    }

    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 46;
    }

    v103 = v29;
    LODWORD(v30) = Uint32ForKey >> 24;
    if ((Uint32ForKey >> 24) <= 0x7F)
    {
      v31 = *(MEMORY[0x1E69E9830] + 4 * v30 + 60) & 0x40000;
    }

    else
    {
      v31 = __maskrune(Uint32ForKey >> 24, 0x40000uLL);
    }

    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = 46;
    }

    LODWORD(v33) = Uint32ForKey << 8 >> 24;
    if (v33 <= 0x7F)
    {
      v34 = *(MEMORY[0x1E69E9830] + 4 * v33 + 60) & 0x40000;
    }

    else
    {
      v34 = __maskrune(Uint32ForKey << 8 >> 24, 0x40000uLL);
    }

    if (v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 46;
    }

    v36 = Uint32ForKey >> 8;
    if (v36 <= 0x7F)
    {
      v37 = *(MEMORY[0x1E69E9830] + 4 * v36 + 60) & 0x40000;
    }

    else
    {
      v37 = __maskrune(Uint32ForKey >> 8, 0x40000uLL);
    }

    v38 = Uint32ForKey;
    if (Uint32ForKey <= 0x7F)
    {
      v39 = *(MEMORY[0x1E69E9830] + 4 * Uint32ForKey + 60) & 0x40000;
    }

    else
    {
      v39 = __maskrune(Uint32ForKey, 0x40000uLL);
    }

    if (v37)
    {
      v40 = v36;
    }

    else
    {
      v40 = 46;
    }

    if (v39)
    {
      v41 = Uint32ForKey;
    }

    else
    {
      v41 = 46;
    }

    _cg_jpeg_mem_term("callInitialize", 365, "*** 🔄 ImageIO: plugin changed from '%c%c%c%c' to '%c%c%c%c'\n", v106, v105, v104, v103, v32, v35, v40, v41);
    v42 = kdebug_trace();
    ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v42);
    v44 = IIO_ReaderHandler::readerForType(ReaderHandler, Uint32ForKey);
    if (!v44)
    {
      v51 = v3 >> 24;
      if (v109 <= 0x7F)
      {
        v52 = *(MEMORY[0x1E69E9830] + 4 * v109 + 60) & 0x40000;
      }

      else
      {
        v52 = __maskrune(v109, 0x40000uLL);
        v51 = v3 >> 24;
      }

      if (v52)
      {
        v53 = v51;
      }

      else
      {
        v53 = 46;
      }

      *v110 = v53;
      v54 = v3 << 8 >> 24;
      if (v108 <= 0x7F)
      {
        v55 = *(MEMORY[0x1E69E9830] + 4 * v108 + 60) & 0x40000;
      }

      else
      {
        v55 = __maskrune(v108, 0x40000uLL);
        v54 = v3 << 8 >> 24;
      }

      if (v55)
      {
        v56 = v54;
      }

      else
      {
        v56 = 46;
      }

      v57 = v3 >> 8;
      if (v107 <= 0x7F)
      {
        v58 = *(MEMORY[0x1E69E9830] + 4 * v107 + 60) & 0x40000;
      }

      else
      {
        v58 = __maskrune(v107, 0x40000uLL);
        v57 = v3 >> 8;
      }

      if (v58)
      {
        v59 = v57;
      }

      else
      {
        v59 = 46;
      }

      v60 = v3;
      if (v3 <= 0x7F)
      {
        v61 = *(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000;
      }

      else
      {
        v61 = __maskrune(v3, 0x40000uLL);
        v60 = v3;
      }

      if (v61)
      {
        v62 = v60;
      }

      else
      {
        v62 = 46;
      }

      if (v30 <= 0x7F)
      {
        v63 = *(MEMORY[0x1E69E9830] + 4 * v30 + 60) & 0x40000;
      }

      else
      {
        v63 = __maskrune(v30, 0x40000uLL);
      }

      if (v63)
      {
        v30 = v30;
      }

      else
      {
        v30 = 46;
      }

      if (v33 <= 0x7F)
      {
        v64 = *(MEMORY[0x1E69E9830] + 4 * v33 + 60) & 0x40000;
      }

      else
      {
        v64 = __maskrune(v33, 0x40000uLL);
      }

      if (v64)
      {
        v33 = v33;
      }

      else
      {
        v33 = 46;
      }

      if (v36 <= 0x7F)
      {
        v65 = *(MEMORY[0x1E69E9830] + 4 * v36 + 60) & 0x40000;
      }

      else
      {
        v65 = __maskrune(v36, 0x40000uLL);
      }

      if (v38 <= 0x7F)
      {
        v66 = *(MEMORY[0x1E69E9830] + 4 * v38 + 60) & 0x40000;
      }

      else
      {
        v66 = __maskrune(v38, 0x40000uLL);
      }

      if (v65)
      {
        v67 = v36;
      }

      else
      {
        v67 = 46;
      }

      if (v66)
      {
        v68 = v38;
      }

      else
      {
        v68 = 46;
      }

      LogError("callInitialize", 396, "*** cannot switch plugin: '%c%c%c%c' -> '%c%c%c%c'\n", *v110, v56, v59, v62, v30, v33, v67, v68);
      v16 = 4294967247;
      *a2 = 0;
      goto LABEL_140;
    }

    Ref = IIOImageSource::imageReadRef(*(this + 3));
    Source = CGImageSourceGetSource(Ref);
    if (Uint32ForKey == 1212500291)
    {
      if (Source)
      {
        IIOImageSource::updateReader(Source, v44);
      }

      IIOImageReadSession::releaseGlobalInfoPtr(*(this + 3));
      IIO_Reader_HEIF::CreateGlobalHEIFInfoIfNeeded(*(this + 3), v102, Size);
      IIODictionary::removeObjectForKey(v113, @"NEW_PLUGIN_dataOffset");
      IIODictionary::removeObjectForKey(v113, @"NEW_PLUGIN_dataSize");
    }

    this = (*(*v44 + 248))(v44, *(this + 1), 0, v102);
    *(this + 19) = v115;
    v16 = (*(*this + 96))(this, v113);
    *(this + 9) = IIOImageSource::cf(v44);
    v47 = IIO_Reader::osType(v44);
    v48 = v47;
    *(this + 55) = v47;
    *a2 = 1;
    if (v16)
    {
      if (v47)
      {
        v49 = v3 >> 24;
        if (v109 <= 0x7F)
        {
          v50 = *(MEMORY[0x1E69E9830] + 4 * v109 + 60) & 0x40000;
          v3 = v3;
        }

        else
        {
          v50 = __maskrune(v109, 0x40000uLL);
          v3 = v3;
          v49 = v109;
        }

        if (v50)
        {
          v81 = v49;
        }

        else
        {
          v81 = 46;
        }

        v112 = v81;
        v82 = v108;
        if (v108 <= 0x7F)
        {
          v83 = *(MEMORY[0x1E69E9830] + 4 * v108 + 60) & 0x40000;
        }

        else
        {
          v83 = __maskrune(v108, 0x40000uLL);
          v82 = v108;
        }

        if (v83)
        {
          v84 = v82;
        }

        else
        {
          v84 = 46;
        }

        v85 = v107;
        if (v107 <= 0x7F)
        {
          v86 = *(MEMORY[0x1E69E9830] + 4 * v107 + 60) & 0x40000;
        }

        else
        {
          v86 = __maskrune(v107, 0x40000uLL);
          v85 = v107;
        }

        if (v86)
        {
          v87 = v85;
        }

        else
        {
          v87 = 46;
        }

        if (v3 <= 0x7F)
        {
          v88 = *(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000;
        }

        else
        {
          v88 = __maskrune(v3, 0x40000uLL);
        }

        if (v88)
        {
          v89 = v3;
        }

        else
        {
          v89 = 46;
        }

        v90 = v48 >> 24;
        if ((v48 >> 24) <= 0x7F)
        {
          v91 = *(MEMORY[0x1E69E9830] + 4 * v90 + 60) & 0x40000;
        }

        else
        {
          v91 = __maskrune(v48 >> 24, 0x40000uLL);
        }

        if (v91)
        {
          v92 = v90;
        }

        else
        {
          v92 = 46;
        }

        v93 = v48 << 8 >> 24;
        if (v93 <= 0x7F)
        {
          v94 = *(MEMORY[0x1E69E9830] + 4 * v93 + 60) & 0x40000;
        }

        else
        {
          v94 = __maskrune(v48 << 8 >> 24, 0x40000uLL);
        }

        if (v94)
        {
          v95 = v93;
        }

        else
        {
          v95 = 46;
        }

        v96 = v48 >> 8;
        if (v96 <= 0x7F)
        {
          v97 = *(MEMORY[0x1E69E9830] + 4 * v96 + 60) & 0x40000;
        }

        else
        {
          v97 = __maskrune(v48 >> 8, 0x40000uLL);
        }

        v48 = v48;
        if (v48 <= 0x7F)
        {
          v98 = *(MEMORY[0x1E69E9830] + 4 * v48 + 60) & 0x40000;
        }

        else
        {
          v98 = __maskrune(v48, 0x40000uLL);
        }

        if (v97)
        {
          v99 = v96;
        }

        else
        {
          v99 = 46;
        }

        if (v98)
        {
          v100 = v48;
        }

        else
        {
          v100 = 46;
        }

        _cg_jpeg_mem_term("callInitialize", 419, "*** '%c%c%c%c' -> '%c%c%c%c' initialize failed - err = %d\n", v112, v84, v87, v89, v92, v95, v99, v100, v16);
LABEL_165:
        (*(*this + 8))(this);
        goto LABEL_166;
      }

LABEL_140:
      v69 = v3 >> 24;
      if ((v3 >> 24) <= 0x7F)
      {
        v70 = *(MEMORY[0x1E69E9830] + 4 * v69 + 60) & 0x40000;
      }

      else
      {
        v70 = __maskrune(v3 >> 24, 0x40000uLL);
      }

      if (v70)
      {
        v71 = v69;
      }

      else
      {
        v71 = 46;
      }

      v72 = v3 << 8 >> 24;
      if (v72 <= 0x7F)
      {
        v73 = *(MEMORY[0x1E69E9830] + 4 * v72 + 60) & 0x40000;
      }

      else
      {
        v73 = __maskrune(v3 << 8 >> 24, 0x40000uLL);
      }

      if (v73)
      {
        v74 = v72;
      }

      else
      {
        v74 = 46;
      }

      v75 = v3 >> 8;
      if (v75 <= 0x7F)
      {
        v76 = *(MEMORY[0x1E69E9830] + 4 * v75 + 60) & 0x40000;
      }

      else
      {
        v76 = __maskrune(v3 >> 8, 0x40000uLL);
      }

      v3 = v3;
      if (v3 <= 0x7F)
      {
        v77 = *(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000;
      }

      else
      {
        v77 = __maskrune(v3, 0x40000uLL);
      }

      if (v76)
      {
        v78 = v75;
      }

      else
      {
        v78 = 46;
      }

      if (v77)
      {
        v79 = v3;
      }

      else
      {
        v79 = 46;
      }

      _cg_jpeg_mem_term("callInitialize", 421, "*** '%c%c%c%c' initialize failed - err = %d\n", v71, v74, v78, v79, v16);
      goto LABEL_165;
    }
  }

  else
  {
    *a2 = 0;
    if (v15)
    {
      goto LABEL_140;
    }
  }

  v16 = IIOReadPlugin::postInitialize(this, &v114);
LABEL_166:
  IIODictionary::~IIODictionary(v113);
  IIODictionary::~IIODictionary(&v114);
  return v16;
}

void sub_18600D804(_Unwind_Exception *a1)
{
  IIODictionary::~IIODictionary((v1 - 136));
  IIODictionary::~IIODictionary((v1 - 112));
  _Unwind_Resume(a1);
}

uint64_t IIOReadPlugin::initialize(IIOReadPlugin *this, IIODictionary *a2)
{
  v2 = *(this + 55);
  v3 = v2 >> 24;
  v4 = MEMORY[0x1E69E9830];
  if ((v2 >> 24) <= 0x7F)
  {
    v5 = *(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000;
  }

  else
  {
    v5 = __maskrune(v2 >> 24, 0x40000uLL);
  }

  v6 = v2 << 8 >> 24;
  if (v6 <= 0x7F)
  {
    v7 = *(v4 + 4 * v6 + 60) & 0x40000;
  }

  else
  {
    v7 = __maskrune(v2 << 8 >> 24, 0x40000uLL);
  }

  v8 = v2 >> 8;
  if (v8 <= 0x7F)
  {
    v9 = *(v4 + 4 * v8 + 60) & 0x40000;
  }

  else
  {
    v9 = __maskrune(v2 >> 8, 0x40000uLL);
  }

  v2 = v2;
  if (v2 <= 0x7F)
  {
    v10 = *(v4 + 4 * v2 + 60) & 0x40000;
  }

  else
  {
    v10 = __maskrune(v2, 0x40000uLL);
  }

  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = 46;
  }

  if (v7)
  {
    v12 = v6;
  }

  else
  {
    v12 = 46;
  }

  if (v5)
  {
    v13 = v3;
  }

  else
  {
    v13 = 46;
  }

  if (v10)
  {
    v14 = v2;
  }

  else
  {
    v14 = 46;
  }

  _cg_jpeg_mem_term("initialize", 555, "*** [%c%c%c%c] plugin did not implement 'initialize' ***\n", v13, v12, v11, v14);
  return 4294967240;
}

CGFloat IIOReadPlugin::optInForBandedDecoding(IIOReadPlugin *this, CGRect a2)
{
  if (*(this + 440) != 1 && (*(this + 63) * *(this + 62)) >> 24)
  {
    *(this + 100) = a2.size.width;
    v2 = *(this + 79);
    if (a2.size.height * v2 >= 16777216.0)
    {
      v5 = v2 >= 0x1000001;
      height = (0x1000000 / v2 + 7) & 0x3FFFFF8;
      v6 = fmin(a2.size.height, 32.0);
      if (v5)
      {
        height = v6;
      }

      if (!height)
      {
        goto LABEL_12;
      }

      v4 = *(this + 49);
      if (v4 < 2)
      {
        v8 = (a2.size.height / height);
        if (a2.size.height > (height * v8))
        {
          v9 = v8 + 1;
          v10 = a2.size.height / v9;
          height = v10 - 1;
          v11 = v10 * v9;
          do
          {
            v12 = v11;
            LODWORD(height) = height + 1;
            v11 += v9;
          }

          while (a2.size.height > v12);
        }

        goto LABEL_12;
      }
    }

    else
    {
      height = a2.size.height;
      v4 = *(this + 49);
      if (v4 < 2)
      {
        goto LABEL_12;
      }
    }

    height = (v4 + height - 1) / v4 * v4;
LABEL_12:
    *(this + 101) = height;
    *(this + 78) = height;
    v7 = (a2.origin.y / height);
    a2.origin.x = (a2.origin.y + a2.size.height - (height * v7) + (height - 1)) / height;
    *(this + 26) = a2.origin.x;
    *(this + 28) = v7;
    *(this + 29) = a2.origin.x + v7;
  }

  return a2.origin.x;
}

void IIOReadPlugin::updateTempColorSpace(__CFDictionary **this)
{
  memset(v5, 0, sizeof(v5));
  IIODictionary::IIODictionary(v5, this[19]);
  if (IIODictionary::containsKey(v5, @"TEMP_COLORSPACE"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(v5, @"TEMP_COLORSPACE");
    v3 = CGColorSpaceCreateWithPropertyList(ObjectForKey);
    if (v3)
    {
      CGColorSpaceRelease(this[20]);
      this[20] = v3;
      if (CGColorSpaceContainsFlexGTCInfo())
      {
        *(this + 190) = 1;
        v4 = this[22];
        if (v4)
        {
          CFRelease(v4);
        }

        this[22] = CGColorSpaceCopyFlexGTCInfo();
      }
    }
  }

  IIODictionary::~IIODictionary(v5);
}

void sub_18600DB80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t IIOReadPlugin::determinePixelType(IIOReadPlugin *this, int a2, unsigned int a3)
{
  v3 = 8 * a3;
  if (a2 <= 1)
  {
    if (a3 >= 7)
    {
      v4 = -1;
    }

    else
    {
      v4 = 0x7080708070806uLL >> v3;
    }

    v9 = 0x4020402040200uLL >> v3;
    if (a3 >= 7)
    {
      LOBYTE(v9) = -1;
    }

    if (a2 == 1)
    {
      v7 = v9;
    }

    else
    {
      v7 = -1;
    }

    v8 = a2 == 0;
  }

  else
  {
    if (a3 >= 7)
    {
      v4 = -1;
    }

    else
    {
      v4 = 0xA0B0A0B0A0B09uLL >> v3;
    }

    if (a3 >= 7)
    {
      v5 = -1;
    }

    else
    {
      v5 = 0xF100F100F100EuLL >> v3;
    }

    v6 = 0xD0D0D0D0D0D0CuLL >> v3;
    if (a3 >= 7)
    {
      LOBYTE(v6) = -1;
    }

    if (a2 == 5)
    {
      v7 = v6;
    }

    else
    {
      v7 = -1;
    }

    if (a2 == 3)
    {
      v7 = v5;
    }

    v8 = a2 == 2;
  }

  if (v8)
  {
    return v4;
  }

  return v7;
}

uint64_t IIOReadPlugin::createPixelConverter(IIOReadPlugin *this)
{
  v3[0] = (*(*this + 56))(this);
  v3[1] = v1;
  return ImageIOPixelConverter::CreatePixelConverter(v3);
}

unint64_t IIOReadPlugin::getPixelConverterCreationParams(IIOReadPlugin *this)
{
  v2 = *(this + 84);
  v3 = *(this + 262);
  if (*(this + 262))
  {
    v4 = *(this + 256) << 48;
  }

  else
  {
    v4 = 0;
  }

  v5 = IIOReadPlugin::determinePixelType(this, *(this + 84), *(this + 326));
  v6 = v5;
  if (v5 == 2)
  {
    if (*(this + 436) == 1)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }
  }

  return v4 | (v6 << 40) | (IIOReadPlugin::determinePixelType(v5, v2, v3) << 32) | v2;
}

const char *IIOReadPlugin::debugGeometry(uint64_t a1, __int128 *a2, IIODictionary *this)
{
  if (a2)
  {
    if (this && IIODictionary::containsKey(this, @"kImageIOInfoHeader_createImageProviderWithBitmapInfo"))
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(this, @"kImageIOInfoHeader_createImageProviderWithBitmapInfo");
    }

    else
    {
      Uint32ForKey = *(a2 + 17) | *(a2 + 16);
    }
  }

  else
  {
    Uint32ForKey = 0;
  }

  ImageIOLog("                             x     y     w     h       rb   bpp   bpc    #c     a        bmi   bitmapInfo\n");
  ImageIOLog("           -----------   ----- ----- ----- -----   ------   ---   ---   ---   ---   --------   ---------------------\n");
  if (a2)
  {
    v7 = *(a2 + 10);
    v8 = v7 >> 24;
    v9 = MEMORY[0x1E69E9830];
    if ((v7 >> 24) <= 0x7F)
    {
      v10 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
    }

    else
    {
      v10 = __maskrune(v8, 0x40000uLL);
      v7 = *(a2 + 10);
    }

    if (v10)
    {
      v11 = (v7 >> 24);
    }

    else
    {
      v11 = 46;
    }

    v12 = v7 << 8 >> 24;
    if (v12 <= 0x7F)
    {
      v13 = *(v9 + 4 * v12 + 60) & 0x40000;
    }

    else
    {
      v13 = __maskrune(v12, 0x40000uLL);
      v7 = *(a2 + 10);
    }

    if (v13)
    {
      v14 = (v7 << 8 >> 24);
    }

    else
    {
      v14 = 46;
    }

    v15 = v7 >> 8;
    if (v15 <= 0x7F)
    {
      v16 = *(v9 + 4 * v15 + 60) & 0x40000;
    }

    else
    {
      v16 = __maskrune(v15, 0x40000uLL);
      v7 = *(a2 + 10);
    }

    if (v16)
    {
      v17 = (v7 >> 8);
    }

    else
    {
      v17 = 46;
    }

    if (v7 <= 0x7F)
    {
      if ((*(v9 + 4 * v7 + 60) & 0x40000) != 0)
      {
        goto LABEL_28;
      }
    }

    else if (__maskrune(v7, 0x40000uLL))
    {
LABEL_28:
      v18 = *(a2 + 40);
LABEL_31:
      v46 = *a2;
      v20 = *(a2 + 3);
      v19 = *(a2 + 4);
      v21 = *(a2 + 2);
      v22 = *(a2 + 16);
      v23 = IIO_BitmapInfoStringSmall(Uint32ForKey);
      ImageIOLog("           iPlus '%c%c%c%c'              %5d %5d   %6d   %3d   %3d         %3d   %08X   %s\n", v11, v14, v17, v18, v46, DWORD2(v46), v19, v20, v21, v22, Uint32ForKey, v23);
      goto LABEL_32;
    }

    v18 = 46;
    goto LABEL_31;
  }

LABEL_32:
  v47 = *(a1 + 258);
  v24 = *(a1 + 256);
  v25 = *(a1 + 260);
  v26 = *(a1 + 262);
  v27 = (*(a1 + 264) << 16) | (*(a1 + 263) << 12) | ((*(a1 + 265) != 0) << 8) | v26;
  v28 = *(a1 + 236);
  v29 = *(a1 + 240);
  v30 = *(a1 + 244);
  v31 = *(a1 + 248);
  v32 = *(a1 + 252);
  v33 = IIO_BitmapInfoStringSmall(v27);
  ImageIOLog("             _inputGeo   %5d %5d %5d %5d   %6d   %3d   %3d   %3d   %3d   %08X   %s\n", v28, v29, v30, v31, v32, v47, v24, v25, v26, v27, v33);
  v34 = *(a1 + 290);
  v35 = *(a1 + 288);
  v36 = *(a1 + 292);
  v37 = *(a1 + 294);
  v38 = (*(a1 + 296) << 16) | (*(a1 + 295) << 12) | ((*(a1 + 297) != 0) << 8) | v37;
  v39 = *(a1 + 268);
  v40 = *(a1 + 272);
  v41 = *(a1 + 276);
  v42 = *(a1 + 280);
  v43 = *(a1 + 284);
  v44 = IIO_BitmapInfoStringSmall(v38);
  return ImageIOLog("           _decodedGeo   %5d %5d %5d %5d   %6d   %3d   %3d   %3d   %3d   %08X   %s\n", v39, v40, v41, v42, v43, v34, v35, v36, v37, v38, v44);
}

uint64_t IIOReadPlugin::getPixelFormat(IIOReadPlugin *this)
{
  v2 = (*(*this + 40))(this);
  v3 = *(this + 85);
  if (v3 == 1196573017)
  {
    v5 = 1278226488;
    v6 = *(this + 160);
    if (v6 == 8)
    {
      goto LABEL_36;
    }

    if (v6 == 32)
    {
      v5 = 1278226534;
      goto LABEL_36;
    }

    if (v6 != 16)
    {
      _cg_jpeg_mem_term("getPixelFormat", 1569, "🔺 GRAY - bitdepth %d not handled\n");
      goto LABEL_35;
    }

    if (*(this + 373))
    {
      v7 = 48;
    }

    else
    {
      v7 = 254;
    }

    v5 = (v7 + 1278226488);
  }

  else
  {
    if (v3 != 1380401696)
    {
      if ((v3 >> 24) > 0x7F)
      {
        __maskrune(v3 >> 24, 0x40000uLL);
        v3 = *(this + 85);
      }

      v8 = v3 << 8 >> 24;
      if (v8 > 0x7F)
      {
        __maskrune(v8, 0x40000uLL);
        v3 = *(this + 85);
      }

      v9 = v3 >> 8;
      if (v9 > 0x7F)
      {
        __maskrune(v9, 0x40000uLL);
        v3 = *(this + 85);
      }

      if (v3 > 0x7F)
      {
        __maskrune(v3, 0x40000uLL);
      }

      _cg_jpeg_mem_term("getPixelFormat", 1574, "🔺 colormodel '%c%c%c%c' not handled\n");
      goto LABEL_35;
    }

    v4 = *(this + 160);
    if (v4 > 0xF)
    {
      v5 = 1380410945;
      if (v4 != 16)
      {
        if (v4 == 32)
        {
          goto LABEL_36;
        }

LABEL_19:
        _cg_jpeg_mem_term("getPixelFormat", 1549, "🔺 RGB - bitdepth %d not handled\n");
LABEL_35:
        v5 = 0;
        goto LABEL_36;
      }

      v12 = 1380411457;
      v10 = *(this + 373) == 0;
      v11 = 1815491698;
    }

    else
    {
      if (v4 != 8)
      {
        if (v4 == 10)
        {
          if (v2)
          {
            v5 = 2019963440;
            goto LABEL_36;
          }

          _cg_jpeg_mem_term("getPixelFormat", 1536, "🔺 RGB - bitdepth %d not handled\n");
          goto LABEL_35;
        }

        goto LABEL_19;
      }

      v10 = v2 == 0;
      v11 = 1111970369;
      v12 = 875704422;
    }

    if (v10)
    {
      v5 = v11;
    }

    else
    {
      v5 = v12;
    }
  }

LABEL_36:
  v13 = *(this + 91);
  if (v5 != v13)
  {
    v14 = MEMORY[0x1E69E9830];
    v15 = MEMORY[0x1E69E9830] + 60;
    if ((*(MEMORY[0x1E69E9830] + 60 + 4 * BYTE3(v5)) & 0x40000) != 0)
    {
      v16 = BYTE3(v5);
    }

    else
    {
      v16 = 46;
    }

    v17 = WORD1(v5) & 0x77;
    if ((*(v15 + 4 * v17) & 0x40000) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 46;
    }

    v19 = (v5 >> 8) & 0x7F;
    if ((*(v15 + 4 * v19) & 0x40000) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 46;
    }

    if ((*(v15 + 4 * (v5 & 0x7F)) & 0x40000) != 0)
    {
      v21 = v5 & 0x7F;
    }

    else
    {
      v21 = 46;
    }

    v22 = v13 >> 24;
    if ((v13 >> 24) <= 0x7F)
    {
      v23 = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x40000;
    }

    else
    {
      v23 = __maskrune(v22, 0x40000uLL);
      v13 = *(this + 91);
    }

    if (v23)
    {
      v24 = (v13 >> 24);
    }

    else
    {
      v24 = 46;
    }

    v25 = v13 << 8 >> 24;
    if (v25 <= 0x7F)
    {
      v26 = *(v14 + 4 * v25 + 60) & 0x40000;
    }

    else
    {
      v26 = __maskrune(v25, 0x40000uLL);
      v13 = *(this + 91);
    }

    if (v26)
    {
      v27 = (v13 << 8 >> 24);
    }

    else
    {
      v27 = 46;
    }

    v28 = v13 >> 8;
    if (v28 <= 0x7F)
    {
      v29 = *(v14 + 4 * v28 + 60) & 0x40000;
    }

    else
    {
      v29 = __maskrune(v28, 0x40000uLL);
      v13 = *(this + 91);
    }

    if (v29)
    {
      v30 = (v13 >> 8);
    }

    else
    {
      v30 = 46;
    }

    if (v13 <= 0x7F)
    {
      if ((*(v14 + 4 * v13 + 60) & 0x40000) != 0)
      {
        goto LABEL_69;
      }
    }

    else if (__maskrune(v13, 0x40000uLL))
    {
LABEL_69:
      v31 = *(this + 364);
LABEL_72:
      _cg_jpeg_mem_term("getPixelFormat", 1577, "🔺 pixelFormat: '%c%c%c%c'   _rpd.pixelFormat: '%c%c%c%c'\n", v16, v18, v20, v21, v24, v27, v30, v31);
      return v5;
    }

    v31 = 46;
    goto LABEL_72;
  }

  return v5;
}

void IIOReadPlugin::printRequests(IIOReadPlugin *this, const __CFDictionary *a2)
{
  if (*(this + 446))
  {
    v3 = "true";
  }

  else
  {
    v3 = "false";
  }

  ImageIOLog("    reqAreValid: %s\n", v3);
  v4 = *(this + 108);
  v5 = v4 >> 24;
  v6 = MEMORY[0x1E69E9830];
  if ((v4 >> 24) <= 0x7F)
  {
    v7 = *(MEMORY[0x1E69E9830] + 4 * v5 + 60) & 0x40000;
  }

  else
  {
    v7 = __maskrune(v5, 0x40000uLL);
    v4 = *(this + 108);
  }

  if (v7)
  {
    v8 = (v4 >> 24);
  }

  else
  {
    v8 = 46;
  }

  v9 = v4 << 8 >> 24;
  if (v9 <= 0x7F)
  {
    v10 = *(v6 + 4 * v9 + 60) & 0x40000;
  }

  else
  {
    v10 = __maskrune(v9, 0x40000uLL);
    v4 = *(this + 108);
  }

  if (v10)
  {
    v11 = (v4 << 8 >> 24);
  }

  else
  {
    v11 = 46;
  }

  v12 = v4 >> 8;
  if (v12 <= 0x7F)
  {
    v13 = *(v6 + 4 * v12 + 60) & 0x40000;
  }

  else
  {
    v13 = __maskrune(v12, 0x40000uLL);
    v4 = *(this + 108);
  }

  if (v13)
  {
    v14 = (v4 >> 8);
  }

  else
  {
    v14 = 46;
  }

  if (v4 <= 0x7F)
  {
    if ((*(v6 + 4 * v4 + 60) & 0x40000) != 0)
    {
      goto LABEL_24;
    }
  }

  else if (__maskrune(v4, 0x40000uLL))
  {
LABEL_24:
    v15 = *(this + 432);
    goto LABEL_27;
  }

  v15 = 46;
LABEL_27:
  ImageIOLog("    format:      %c%c%c%c\n", v8, v11, v14, v15);
  if (*(this + 444))
  {
    v16 = "true";
  }

  else
  {
    v16 = "false";
  }

  ImageIOLog("    wantsFloat:  %s\n", v16);
  ImageIOLog("    requests:    BGRx8       RGBX8888    premult     readOnly    single      addrAlign   addrAlign   cache\n");
  v18.__r_.__value_.__r.__words[2] = 0x1100000000000020;
  *&v18.__r_.__value_.__l.__data_ = *"                 ";
  std::string::append(&v18, off_1E6F09478[*(this + 436) + 1]);
  std::string::append(&v18, off_1E6F09478[*(this + 437) + 1]);
  std::string::append(&v18, off_1E6F09478[*(this + 438) + 1]);
  std::string::append(&v18, off_1E6F09478[*(this + 439) + 1]);
  std::string::append(&v18, off_1E6F09478[*(this + 440) + 1]);
  std::string::append(&v18, off_1E6F09478[*(this + 441) + 1]);
  std::string::append(&v18, off_1E6F09478[*(this + 442) + 1]);
  std::string::append(&v18, off_1E6F09478[*(this + 443) + 1]);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v18;
  }

  else
  {
    v17 = v18.__r_.__value_.__r.__words[0];
  }

  ImageIOLog("%s\n", v17);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_18600E710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IIOReadPlugin::setIPlus(IIOReadPlugin *this, IIOImagePlus *a2, IIOImageReadSession *a3)
{
  *(this + 2) = a2;
  *(this + 3) = a3;
  result = IIO_Reader::testHeaderSize(a3);
  *(this + 4) = result;
  return result;
}

uint64_t IIOReadPlugin::validateReadPluginData(IIOReadPlugin *this)
{
  if (!IIOGeometry::isValid((this + 236)))
  {
    return 4294967246;
  }

  v2 = 4294967246;
  if (IIOGeometry::isValid((this + 268)))
  {
    if (IIOGeometry::isValid((this + 300)))
    {
      return 0;
    }

    else
    {
      return 4294967246;
    }
  }

  return v2;
}

uint64_t IIOReadPlugin::loadDataFromXPCObject(IIOReadPlugin *this, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "iio_xpc_plugin_data", &length);
  if (length != 264)
  {
    return 4294967246;
  }

  memcpy(this + 200, data, 0x108uLL);
  return IIOReadPlugin::validateReadPluginData(this);
}

uint64_t IIOReadPlugin::addImageBlocksToXPCObject(IIOReadPlugin *this, void *a2)
{
  if (!*(this + 26) || !*(this + 12))
  {
    v33 = *(this + 55);
    v34 = v33 >> 24;
    if ((v33 >> 24) <= 0x7F)
    {
      v35 = *(MEMORY[0x1E69E9830] + 4 * v34 + 60) & 0x40000;
    }

    else
    {
      v35 = __maskrune(v34, 0x40000uLL);
      v33 = *(this + 55);
    }

    if (v35)
    {
      v36 = (v33 >> 24);
    }

    else
    {
      v36 = 46;
    }

    v37 = v33 << 8 >> 24;
    if (v37 <= 0x7F)
    {
      v38 = *(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x40000;
    }

    else
    {
      v38 = __maskrune(v37, 0x40000uLL);
      v33 = *(this + 55);
    }

    if (v38)
    {
      v39 = (v33 << 8 >> 24);
    }

    else
    {
      v39 = 46;
    }

    v40 = v33 >> 8;
    if (v40 <= 0x7F)
    {
      v41 = *(MEMORY[0x1E69E9830] + 4 * v40 + 60) & 0x40000;
    }

    else
    {
      v41 = __maskrune(v40, 0x40000uLL);
      v33 = *(this + 55);
    }

    if (v41)
    {
      v42 = (v33 >> 8);
    }

    else
    {
      v42 = 46;
    }

    if (v33 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v33 + 60) & 0x40000) != 0)
      {
        goto LABEL_55;
      }
    }

    else if (__maskrune(v33, 0x40000uLL))
    {
LABEL_55:
      v43 = *(this + 220);
LABEL_58:
      LogError("addImageBlocksToXPCObject", 1971, "*** ERROR: '%c%c%c%c' _blockCount is 0   (_blockArray: %p)\n", v36, v39, v42, v43, *(this + 12));
      v32 = 4294967243;
      goto LABEL_59;
    }

    v43 = 46;
    goto LABEL_58;
  }

  empty = xpc_array_create_empty();
  if (*(this + 26))
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E9830];
    do
    {
      if (*(*(this + 12) + 8 * v4))
      {
        BytesPerRow = CGImageBlockGetBytesPerRow();
        CGImageBlockGetRect();
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;
        Data = CGImageBlockGetData();
        v16 = (v14 * BytesPerRow);
        v17 = xpc_dictionary_create_empty();
        v18 = xpc_shmem_create(Data, v16);
        if (v18)
        {
          v19 = v18;
          xpc_dictionary_set_value(v17, "iio_xpc_cb_decode_image_buffer", v18);
          xpc_dictionary_set_uint64(v17, "iio_xpc_cb_decode_image_buffer_size", v16);
          xpc_release(v19);
        }

        iio_xpc_dictionary_addCGRect(v17, "iio_xpc_cb_block_cgrect", v8, v10, v12, v14);
        xpc_dictionary_set_uint64(v17, "iio_xpc_cb_block_rowbytes", BytesPerRow);
        CGImageBlockRelease();
        xpc_array_append_value(empty, v17);
        xpc_release(v17);
        goto LABEL_33;
      }

      v20 = *(this + 55);
      v21 = v20 >> 24;
      if ((v20 >> 24) <= 0x7F)
      {
        v22 = *(v5 + 4 * v21 + 60) & 0x40000;
      }

      else
      {
        v22 = __maskrune(v21, 0x40000uLL);
        v20 = *(this + 55);
      }

      if (v22)
      {
        v23 = (v20 >> 24);
      }

      else
      {
        v23 = 46;
      }

      v24 = v20 << 8 >> 24;
      if (v24 <= 0x7F)
      {
        v25 = *(v5 + 4 * v24 + 60) & 0x40000;
      }

      else
      {
        v25 = __maskrune(v24, 0x40000uLL);
        v20 = *(this + 55);
      }

      if (v25)
      {
        v26 = (v20 << 8 >> 24);
      }

      else
      {
        v26 = 46;
      }

      v27 = v20 >> 8;
      if (v27 <= 0x7F)
      {
        v28 = *(v5 + 4 * v27 + 60) & 0x40000;
      }

      else
      {
        v28 = __maskrune(v27, 0x40000uLL);
        v20 = *(this + 55);
      }

      if (v28)
      {
        v29 = (v20 >> 8);
      }

      else
      {
        v29 = 46;
      }

      if (v20 <= 0x7F)
      {
        if ((*(v5 + 4 * v20 + 60) & 0x40000) == 0)
        {
LABEL_31:
          v30 = 46;
          goto LABEL_32;
        }
      }

      else if (!__maskrune(v20, 0x40000uLL))
      {
        goto LABEL_31;
      }

      v30 = *(this + 220);
LABEL_32:
      LogError("addImageBlocksToXPCObject", 1982, "*** ERROR: '%c%c%c%c' _blockArray: %p    _blockArray[%d]: %p\n", v23, v26, v29, v30, *(this + 12), v4, *(*(this + 12) + 8 * v4));
LABEL_33:
      ++v4;
    }

    while (v4 < *(this + 26));
  }

  v31 = iio_xpc_add_callback_dict(a2);
  xpc_dictionary_set_value(v31, "iio_xpc_cb_blockset", empty);
  xpc_release(empty);
  v32 = 0;
LABEL_59:
  v44 = *(this + 12);
  if (v44)
  {
    free(v44);
  }

  *(this + 12) = 0;
  *(this + 26) = 0;
  return v32;
}

uint64_t IIOReadPlugin::debugBlockSetAlpha(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = CGImageProviderGetAlphaInfo();
  v53 = result;
  if (*(a1 + 336) != 1)
  {
    return result;
  }

  if ((result - 1) < 2)
  {
    if (!a3)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (*(a1 + 436) == 1 && a3 != 0)
  {
LABEL_9:
    v6 = 0;
    v7 = 0;
    v8 = 1;
    do
    {
      v48 = v7;
      CGImageBlockGetRect();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      Data = CGImageBlockGetData();
      result = CGImageBlockGetBytesPerRow();
      v51 = result;
      v17 = v12;
      v18 = v12 + v16;
      if (v18 > v17)
      {
        v19 = v10;
        v20 = v10 + v14;
        v49 = v19;
        v50 = v17;
        v21 = v19;
        v22 = v17;
        do
        {
          if (v20 > v21)
          {
            v23 = v49;
            v24 = (Data + (v22 - v50) * v51);
            do
            {
              v25 = *v24++;
              v26 = v25 >> 8;
              v27 = HIWORD(v25);
              v28 = HIBYTE(v25);
              v29 = v25;
              if (v53 == 2)
              {
                v30 = v29;
              }

              else
              {
                v30 = v28;
              }

              if (v53 == 2)
              {
                v31 = v26;
              }

              else
              {
                v31 = v27;
              }

              if (v53 == 2)
              {
                LOBYTE(v26) = v27;
                v32 = v28;
              }

              else
              {
                v32 = v29;
              }

              v33 = v31;
              v34 = v26;
              if (v31 > v30 || v26 > v30 || v32 > v30)
              {
                if (v8)
                {
                  puts("*** BAD premultiplied alpha data R, G, and B values should be smaller than Alpha");
                }

                v37 = 60;
                if (v32 <= v30)
                {
                  v38 = 32;
                }

                else
                {
                  v38 = 60;
                }

                v46 = v38;
                if (v32 <= v30)
                {
                  v39 = 32;
                }

                else
                {
                  v39 = 62;
                }

                v45 = v39;
                if (v34 <= v30)
                {
                  v40 = 32;
                }

                else
                {
                  v40 = 60;
                }

                v44 = v40;
                if (v34 <= v30)
                {
                  v41 = 32;
                }

                else
                {
                  v41 = 62;
                }

                if (v33 <= v30)
                {
                  v37 = 32;
                }

                v43 = v41;
                if (v33 <= v30)
                {
                  v42 = 32;
                }

                else
                {
                  v42 = 62;
                }

                result = printf("[%3d:%3d]  %c%02X%c  %c%02X%c   %c%02X%c   %02X\n", v23, v22, v42, v33, v37, v43, v34, v44, v45, v32, v46, v30);
                if (v6 > 98)
                {

                  return puts("*** BAD premultiplied alpha (stopped logging after 100 bad pixels)");
                }

                v8 = 0;
                ++v6;
              }

              ++v23;
            }

            while (v20 > v23);
          }

          ++v22;
        }

        while (v18 > v22);
      }

      v7 = v48 + 1;
    }

    while ((v48 + 1) < a3);
  }

  return result;
}

uint64_t IIOReadPlugin::copyImageBlockSet(uint64_t a1)
{
  v1 = *(a1 + 220);
  v2 = v1 >> 24;
  v3 = MEMORY[0x1E69E9830];
  if ((v1 >> 24) <= 0x7F)
  {
    v4 = *(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000;
  }

  else
  {
    v4 = __maskrune(v1 >> 24, 0x40000uLL);
  }

  v5 = v1 << 8 >> 24;
  if (v5 <= 0x7F)
  {
    v6 = *(v3 + 4 * v5 + 60) & 0x40000;
  }

  else
  {
    v6 = __maskrune(v1 << 8 >> 24, 0x40000uLL);
  }

  v7 = v1 >> 8;
  if (v7 <= 0x7F)
  {
    v8 = *(v3 + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v8 = __maskrune(v1 >> 8, 0x40000uLL);
  }

  v1 = v1;
  if (v1 <= 0x7F)
  {
    v9 = *(v3 + 4 * v1 + 60) & 0x40000;
  }

  else
  {
    v9 = __maskrune(v1, 0x40000uLL);
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 46;
  }

  if (v6)
  {
    v11 = v5;
  }

  else
  {
    v11 = 46;
  }

  if (v4)
  {
    v12 = v2;
  }

  else
  {
    v12 = 46;
  }

  if (v9)
  {
    v13 = v1;
  }

  else
  {
    v13 = 46;
  }

  _cg_jpeg_mem_term("copyImageBlockSet", 2183, "*** [%c%c%c%c] plugin did not implement 'copyImageBlockSet' ***\n", v12, v11, v10, v13);
  return 0;
}

uint64_t IIOReadPlugin::decodeImageImp(uint64_t a1)
{
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    v1 = *(a1 + 220);
    v2 = v1 >> 24;
    v3 = MEMORY[0x1E69E9830];
    if ((v1 >> 24) <= 0x7F)
    {
      v4 = *(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000;
    }

    else
    {
      v4 = __maskrune(v1 >> 24, 0x40000uLL);
    }

    if (v4)
    {
      v5 = v2;
    }

    else
    {
      v5 = 46;
    }

    v6 = v1 << 8 >> 24;
    if (v6 <= 0x7F)
    {
      v7 = *(v3 + 4 * v6 + 60) & 0x40000;
    }

    else
    {
      v7 = __maskrune(v1 << 8 >> 24, 0x40000uLL);
    }

    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 46;
    }

    v9 = v1 >> 8;
    if (v9 <= 0x7F)
    {
      v10 = *(v3 + 4 * v9 + 60) & 0x40000;
    }

    else
    {
      v10 = __maskrune(v1 >> 8, 0x40000uLL);
    }

    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 46;
    }

    if (v1 <= 0x7F)
    {
      v12 = *(v3 + 4 * v1 + 60) & 0x40000;
    }

    else
    {
      v12 = __maskrune(v1, 0x40000uLL);
    }

    if (v12)
    {
      v13 = v1;
    }

    else
    {
      v13 = 46;
    }

    ImageIOLog("*** [%c%c%c%c] plugin does not implement 'decodeImageImp' ***\n", v5, v8, v11, v13);
  }

  return 4294967240;
}

uint64_t IIOReadPlugin::convertBlockSetToSDR(uint64_t a1, uint64_t a2)
{
  IIO_LoadHEIFSymbols();
  if (CGImageBlockSetGetCount() == 1)
  {
    ComponentType = CGImageBlockSetGetComponentType();
    CGImageBlockSetGetImageBlock();
    CGImageBlockGetRect();
    v7 = ComponentType - 1;
    if (ComponentType - 1) < 5 && ((0x1Bu >> v7))
    {
      v8 = v5;
      v9 = v6;
      v10 = dword_18620A67C[v7];
      v11 = IIORestrictedDecodingEnabledFlag();
      v74 = 0;
      v75 = 0;
      v76 = 0;
      IIODictionary::IIODictionary(&v74);
      if (v11)
      {
        *seed = 0;
        v72 = 0;
        v73 = 0;
        IIODictionary::IIODictionary(seed);
        v15 = IIOCreatePixelBuffer(v8, v9, v10, seed);
        if (!v15)
        {
LABEL_53:
          IIODictionary::~IIODictionary(seed);
LABEL_68:
          IIODictionary::~IIODictionary(&v74);
          return a2;
        }

        v16 = IIOCreatePixelBuffer(v8, v9, v10, seed);
        if (!v16)
        {
LABEL_52:
          gFunc_CVPixelBufferRelease(v15);
          goto LABEL_53;
        }

        v17 = *(a1 + 326);
        if (v17 == 1)
        {
          v18 = &gIIO_kCVImageBufferAlphaChannelMode_PremultipliedAlpha;
        }

        else
        {
          if (v17 != 3)
          {
LABEL_22:
            gFunc_CVImageBufferSetColorSpace(v15, *(a1 + 168));
            gFunc_CVImageBufferSetColorSpace(v16, *(a1 + 160));
            gFunc_CVBufferSetAttachment(v16, *gIIO_kCVImageBufferYCbCrMatrixKey, *gIIO_kCVImageBufferYCbCrMatrix_ITU_R_2020, 1);
            if (!gFunc_CVPixelBufferLockBaseAddress(v15, 0))
            {
              CGImageBlockGetRect();
              v37 = v36;
              v39 = v38;
              BytesPerRow = CGImageBlockGetBytesPerRow();
              Data = CGImageBlockGetData();
              Width = gFunc_CVPixelBufferGetWidth(v15);
              Height = gFunc_CVPixelBufferGetHeight(v15);
              v42 = gFunc_CVPixelBufferGetBytesPerRow(v15);
              BaseAddress = gFunc_CVPixelBufferGetBaseAddress(v15);
              PixelFormatType = gFunc_CVPixelBufferGetPixelFormatType(v15);
              BitmapInfo = CGImageBlockGetBitmapInfo();
              v45 = v39;
              if (BytesPerRow == v42)
              {
                memcpy(BaseAddress, Data, BytesPerRow * v45);
              }

              else
              {
                v58 = BitmapInfo;
                if (CGImageBlockSetGetPixelSize() != 6 || (v58 & 0x1F) != 0)
                {
                  if (BytesPerRow >= v42)
                  {
                    v60 = v42;
                  }

                  else
                  {
                    v60 = BytesPerRow;
                  }

                  for (; v45; --v45)
                  {
                    memcpy(BaseAddress, Data, v60);
                    BaseAddress += v42;
                    Data += BytesPerRow;
                  }
                }

                else
                {
                  rgbSrc.data = Data;
                  rgbSrc.height = v39;
                  rgbSrc.width = v37;
                  rgbSrc.rowBytes = BytesPerRow;
                  rgbaDest.data = BaseAddress;
                  rgbaDest.height = Height;
                  rgbaDest.width = Width;
                  rgbaDest.rowBytes = v42;
                  if (PixelFormatType == 1380411457)
                  {
                    v59 = 15360;
                  }

                  else
                  {
                    v59 = -1;
                  }

                  vImageConvert_RGB16UtoRGBA16U(&rgbSrc, 0, v59, &rgbaDest, 0, 0x10u);
                }
              }

              gFunc_CVPixelBufferUnlockBaseAddress(v15, 0);
            }

            IIODictionary::setObjectForKey(&v74, *MEMORY[0x1E695E4D0], @"kCGDisableMetal");
            if (!IIOConvertHDRData(v15, v16, v75))
            {
              IIO_PixelBufferToCGImageBlockSet(v16);
            }

            gFunc_CVPixelBufferRelease(v16);
            goto LABEL_52;
          }

          v18 = &gIIO_kCVImageBufferAlphaChannelMode_StraightAlpha;
        }

        gFunc_CVBufferSetAttachment(v15, *gIIO_kCVImageBufferAlphaChannelModeKey, **v18, 1);
        goto LABEL_22;
      }

      IOSurfaceWithFormat = IIO_CreateIOSurfaceWithFormat(v8, v9, 0, v10, 0, v12, v13, v14);
      IIO_IOSurfaceSetAlpha(IOSurfaceWithFormat, *(a1 + 326));
      CGColorSpaceAttachToIOSurface();
      v23 = IIO_CreateIOSurfaceWithFormat(v8, v9, 0, v10, 0, v20, v21, v22);
      CGColorSpaceAttachToIOSurface();
      IIONumber::IIONumber(&rgbSrc, 1.0);
      IOSurfaceSetValue(v23, @"IOSurfaceContentHeadroom", rgbSrc.width);
      IIONumber::~IIONumber(&rgbSrc);
      seed[0] = 0;
      if (!IOSurfaceLock(IOSurfaceWithFormat, 0, seed))
      {
        CGImageBlockGetRect();
        v25 = v24;
        v27 = v26;
        v28 = CGImageBlockGetBytesPerRow();
        v29 = CGImageBlockGetData();
        v68 = IOSurfaceGetWidth(IOSurfaceWithFormat);
        v65 = IOSurfaceGetHeight(IOSurfaceWithFormat);
        v30 = IOSurfaceGetBytesPerRow(IOSurfaceWithFormat);
        v31 = IOSurfaceGetBaseAddress(IOSurfaceWithFormat);
        PixelFormat = IOSurfaceGetPixelFormat(IOSurfaceWithFormat);
        v32 = CGImageBlockGetBitmapInfo();
        v33 = v27;
        if (v28 == v30)
        {
          memcpy(v31, v29, v28 * v33);
        }

        else
        {
          v34 = v32;
          if (CGImageBlockSetGetPixelSize() != 6 || (v34 & 0x1F) != 0)
          {
            if (v28 >= v30)
            {
              v46 = v30;
            }

            else
            {
              v46 = v28;
            }

            for (; v33; --v33)
            {
              memcpy(v31, v29, v46);
              v31 += v30;
              v29 += v28;
            }
          }

          else
          {
            rgbSrc.data = v29;
            rgbSrc.height = v27;
            rgbSrc.width = v25;
            rgbSrc.rowBytes = v28;
            rgbaDest.data = v31;
            rgbaDest.height = v65;
            rgbaDest.width = v68;
            rgbaDest.rowBytes = v30;
            if (PixelFormat == 1380411457)
            {
              v35 = 15360;
            }

            else
            {
              v35 = -1;
            }

            vImageConvert_RGB16UtoRGBA16U(&rgbSrc, 0, v35, &rgbaDest, 0, 0x10u);
          }
        }

        IOSurfaceUnlock(IOSurfaceWithFormat, 0, seed);
      }

      if (IIOCallConvertHDRData(IOSurfaceWithFormat, v23, v75) || IOSurfaceLock(v23, 1u, 0))
      {
LABEL_64:
        if (IOSurfaceWithFormat)
        {
          CFRelease(IOSurfaceWithFormat);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        goto LABEL_68;
      }

      CGImageBlockGetRect();
      v48 = v47;
      v50 = v49;
      v51 = CGImageBlockGetBytesPerRow();
      v52 = CGImageBlockGetData();
      v70 = IOSurfaceGetWidth(v23);
      v67 = IOSurfaceGetHeight(v23);
      v53 = IOSurfaceGetBytesPerRow(v23);
      v54 = IOSurfaceGetBaseAddress(v23);
      v55 = IOSurfaceGetPixelFormat(v23);
      v56 = v50;
      v57 = CGImageBlockGetBitmapInfo() & 0x1F;
      if ((v57 - 1) < 4 || v57 == 7)
      {
        if (v51 == v53)
        {
LABEL_36:
          memcpy(v52, v54, v51 * v56);
LABEL_63:
          IOSurfaceUnlock(v23, 1u, 0);
          goto LABEL_64;
        }
      }

      else
      {
        if (v51 == v53)
        {
          goto LABEL_36;
        }

        if (v55 == 1815491698 || v55 == 1380411457)
        {
          rgbSrc.data = v54;
          rgbSrc.height = v67;
          rgbSrc.width = v70;
          rgbSrc.rowBytes = v53;
          rgbaDest.data = v52;
          rgbaDest.height = v50;
          rgbaDest.width = v48;
          rgbaDest.rowBytes = v51;
          vImageConvert_RGBA16UtoRGB16U(&rgbSrc, &rgbaDest, 0x10u);
          goto LABEL_63;
        }
      }

      if (v51 >= v53)
      {
        v61 = v53;
      }

      else
      {
        v61 = v51;
      }

      for (; v56; --v56)
      {
        memcpy(v52, v54, v61);
        v54 += v53;
        v52 += v51;
      }

      goto LABEL_63;
    }

    LogError("convertBlockSetToSDR", 2754, "*** ERROR: unhandled componentType '%d'\n", ComponentType);
  }

  return a2;
}

void sub_18600F868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  IIONumber::~IIONumber(va1);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t IIO_PixelBufferToCGImageBlockSet(uint64_t a1)
{
  result = gFunc_CVPixelBufferLockBaseAddress(a1, 1);
  if (!result)
  {
    CGImageBlockGetRect();
    v4 = v3;
    v6 = v5;
    BytesPerRow = CGImageBlockGetBytesPerRow();
    Data = CGImageBlockGetData();
    Width = gFunc_CVPixelBufferGetWidth(a1);
    Height = gFunc_CVPixelBufferGetHeight(a1);
    v11 = gFunc_CVPixelBufferGetBytesPerRow(a1);
    BaseAddress = gFunc_CVPixelBufferGetBaseAddress(a1);
    if (BytesPerRow == v11)
    {
      memcpy(Data, BaseAddress, BytesPerRow * v6);
    }

    else
    {
      rgbaSrc.data = BaseAddress;
      rgbaSrc.height = Height;
      rgbaSrc.width = Width;
      rgbaSrc.rowBytes = v11;
      v13.data = Data;
      v13.height = v6;
      v13.width = v4;
      v13.rowBytes = BytesPerRow;
      vImageConvert_RGBA16UtoRGB16U(&rgbaSrc, &v13, 0x10u);
    }

    return gFunc_CVPixelBufferUnlockBaseAddress(a1, 0);
  }

  return result;
}

uint64_t IIOReadPlugin::decodeImageIntoIOSurface(IIOReadPlugin *this, IIODecodeParameter *a2, __IOSurface *a3)
{
  v4 = a3;
  if (a3)
  {
    return IIOReadPlugin::callDecodeImage(this, a2, 1, &v4, 0, 0);
  }

  else
  {
    return 4294967292;
  }
}

uint64_t IIOReadPlugin::copyImageBlockSetImp(uint64_t a1)
{
  v1 = *(a1 + 220);
  v2 = v1 >> 24;
  v3 = MEMORY[0x1E69E9830];
  if ((v1 >> 24) <= 0x7F)
  {
    v4 = *(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000;
  }

  else
  {
    v4 = __maskrune(v1 >> 24, 0x40000uLL);
  }

  v5 = v1 << 8 >> 24;
  if (v5 <= 0x7F)
  {
    v6 = *(v3 + 4 * v5 + 60) & 0x40000;
  }

  else
  {
    v6 = __maskrune(v1 << 8 >> 24, 0x40000uLL);
  }

  v7 = v1 >> 8;
  if (v7 <= 0x7F)
  {
    v8 = *(v3 + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v8 = __maskrune(v1 >> 8, 0x40000uLL);
  }

  v1 = v1;
  if (v1 <= 0x7F)
  {
    v9 = *(v3 + 4 * v1 + 60) & 0x40000;
  }

  else
  {
    v9 = __maskrune(v1, 0x40000uLL);
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 46;
  }

  if (v6)
  {
    v11 = v5;
  }

  else
  {
    v11 = 46;
  }

  if (v4)
  {
    v12 = v2;
  }

  else
  {
    v12 = 46;
  }

  if (v9)
  {
    v13 = v1;
  }

  else
  {
    v13 = 46;
  }

  _cg_jpeg_mem_term("copyImageBlockSetImp", 2947, "*** [%c%c%c%c] plugin did not implement 'copyImageBlockSetImp' ***\n", v12, v11, v10, v13);
  return 0;
}

uint64_t IIOReadPlugin::decodeImageData(IIOReadPlugin *this, unsigned __int8 *a2)
{
  v2 = *(this + 55);
  v3 = v2 >> 24;
  v4 = MEMORY[0x1E69E9830];
  if ((v2 >> 24) <= 0x7F)
  {
    v5 = *(MEMORY[0x1E69E9830] + 4 * v3 + 60) & 0x40000;
  }

  else
  {
    v5 = __maskrune(v2 >> 24, 0x40000uLL);
  }

  v6 = v2 << 8 >> 24;
  if (v6 <= 0x7F)
  {
    v7 = *(v4 + 4 * v6 + 60) & 0x40000;
  }

  else
  {
    v7 = __maskrune(v2 << 8 >> 24, 0x40000uLL);
  }

  v8 = v2 >> 8;
  if (v8 <= 0x7F)
  {
    v9 = *(v4 + 4 * v8 + 60) & 0x40000;
  }

  else
  {
    v9 = __maskrune(v2 >> 8, 0x40000uLL);
  }

  v2 = v2;
  if (v2 <= 0x7F)
  {
    v10 = *(v4 + 4 * v2 + 60) & 0x40000;
  }

  else
  {
    v10 = __maskrune(v2, 0x40000uLL);
  }

  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = 46;
  }

  if (v7)
  {
    v12 = v6;
  }

  else
  {
    v12 = 46;
  }

  if (v5)
  {
    v13 = v3;
  }

  else
  {
    v13 = 46;
  }

  if (v10)
  {
    v14 = v2;
  }

  else
  {
    v14 = 46;
  }

  _cg_jpeg_mem_term("decodeImageData", 2979, "*** [%c%c%c%c] plugin did not implement 'decodeImageData' ***\n", v13, v12, v11, v14);
  return 4294967240;
}

void IIOReadPlugin::debugWriteImageBlocks(IIOReadPlugin *this, const void *a2, size_t a3, uint64_t a4, double a5, double a6, size_t a7, uint64_t a8, int a9)
{
  if (a2)
  {
    v18 = ImageIOTempDirPath();
    if (v18)
    {
      v19 = v18;
      __nitems = a3;
      v42 = a7;
      v20 = *(this + 55);
      v21 = v20 >> 24;
      v22 = MEMORY[0x1E69E9830];
      if ((v20 >> 24) <= 0x7F)
      {
        v23 = *(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x40000;
      }

      else
      {
        v23 = __maskrune(v20 >> 24, 0x40000uLL);
      }

      if (v23)
      {
        v24 = v21;
      }

      else
      {
        v24 = 46;
      }

      v41 = v24;
      v25 = v20 << 8 >> 24;
      if (v25 <= 0x7F)
      {
        v26 = *(v22 + 4 * v25 + 60) & 0x40000;
      }

      else
      {
        v26 = __maskrune(v20 << 8 >> 24, 0x40000uLL);
      }

      if (v26)
      {
        v27 = v25;
      }

      else
      {
        v27 = 46;
      }

      v40 = v27;
      v28 = v20 >> 8;
      v29 = v22;
      if (v28 <= 0x7F)
      {
        v30 = *(v22 + 4 * v28 + 60) & 0x40000;
      }

      else
      {
        v30 = __maskrune(v20 >> 8, 0x40000uLL);
      }

      if (v30)
      {
        v31 = v28;
      }

      else
      {
        v31 = 46;
      }

      if (v20 <= 0x7F)
      {
        v32 = *(v29 + 4 * v20 + 60) & 0x40000;
      }

      else
      {
        v32 = __maskrune(v20, 0x40000uLL);
      }

      v43 = 0;
      if (v32)
      {
        v33 = v20;
      }

      else
      {
        v33 = 46;
      }

      asprintf(&v43, "%s/ImageBlock#%ld '%c%c%c%c' <%p>,w=%g,h=%g,rb=%ld,cs=%ld,bpc=%ld,bmi=%08X,i=%ld.br2", v19, a4, v41, v40, v31, v33, this, a5, a6, v42, *(this + 84), a8, a9, *(this + 56));
      v34 = fopen(v43, "w");
      if (v34)
      {
        v35 = v34;
        ImageIOLog("==================================================================================\n");
        ImageIOLog("=== Writing image block to '%s'\n", v43);
        ImageIOLog("==================================================================================\n");
        fwrite(a2, v42, __nitems, v35);
        fclose(v35);
      }

      else
      {
        LogError("debugWriteImageBlocks", 3119, "ERROR: can't write image block to '%s'\n", v43);
        v36 = *__error();
        v37 = __error();
        v38 = strerror(*v37);
        LogError("debugWriteImageBlocks", 3120, "       error = %d (%s)\n", v36, v38);
      }

      if (v43)
      {
        free(v43);
      }
    }
  }
}

uint64_t IIOReadPlugin::copyIOSurface(uint64_t a1)
{
  v1 = *(a1 + 220);
  v2 = v1 >> 24;
  v3 = MEMORY[0x1E69E9830];
  if ((v1 >> 24) <= 0x7F)
  {
    v4 = *(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000;
  }

  else
  {
    v4 = __maskrune(v1 >> 24, 0x40000uLL);
  }

  v5 = v1 << 8 >> 24;
  if (v5 <= 0x7F)
  {
    v6 = *(v3 + 4 * v5 + 60) & 0x40000;
  }

  else
  {
    v6 = __maskrune(v1 << 8 >> 24, 0x40000uLL);
  }

  v7 = v1 >> 8;
  if (v7 <= 0x7F)
  {
    v8 = *(v3 + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v8 = __maskrune(v1 >> 8, 0x40000uLL);
  }

  v1 = v1;
  if (v1 <= 0x7F)
  {
    v9 = *(v3 + 4 * v1 + 60) & 0x40000;
  }

  else
  {
    v9 = __maskrune(v1, 0x40000uLL);
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 46;
  }

  if (v6)
  {
    v11 = v5;
  }

  else
  {
    v11 = 46;
  }

  if (v4)
  {
    v12 = v2;
  }

  else
  {
    v12 = 46;
  }

  if (v9)
  {
    v13 = v1;
  }

  else
  {
    v13 = 46;
  }

  _cg_jpeg_mem_term("copyIOSurface", 3252, "*** [%c%c%c%c] plugin did not implement 'copyIOSurface' ***\n", v12, v11, v10, v13);
  return 0;
}

uint64_t IIOReadPlugin::copyIOSurfaceImp(uint64_t a1)
{
  v1 = *(a1 + 220);
  v2 = v1 >> 24;
  v3 = MEMORY[0x1E69E9830];
  if ((v1 >> 24) <= 0x7F)
  {
    v4 = *(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000;
  }

  else
  {
    v4 = __maskrune(v1 >> 24, 0x40000uLL);
  }

  v5 = v1 << 8 >> 24;
  if (v5 <= 0x7F)
  {
    v6 = *(v3 + 4 * v5 + 60) & 0x40000;
  }

  else
  {
    v6 = __maskrune(v1 << 8 >> 24, 0x40000uLL);
  }

  v7 = v1 >> 8;
  if (v7 <= 0x7F)
  {
    v8 = *(v3 + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v8 = __maskrune(v1 >> 8, 0x40000uLL);
  }

  v1 = v1;
  if (v1 <= 0x7F)
  {
    v9 = *(v3 + 4 * v1 + 60) & 0x40000;
  }

  else
  {
    v9 = __maskrune(v1, 0x40000uLL);
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 46;
  }

  if (v6)
  {
    v11 = v5;
  }

  else
  {
    v11 = 46;
  }

  if (v4)
  {
    v12 = v2;
  }

  else
  {
    v12 = 46;
  }

  if (v9)
  {
    v13 = v1;
  }

  else
  {
    v13 = 46;
  }

  _cg_jpeg_mem_term("copyIOSurfaceImp", 3263, "*** [%c%c%c%c] plugin did not implement 'copyIOSurfaceImp' ***\n", v12, v11, v10, v13);
  return 4294967240;
}

uint64_t IIOReadPlugin::copyPixelBufferImp(uint64_t a1)
{
  v1 = *(a1 + 220);
  v2 = v1 >> 24;
  v3 = MEMORY[0x1E69E9830];
  if ((v1 >> 24) <= 0x7F)
  {
    v4 = *(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000;
  }

  else
  {
    v4 = __maskrune(v1 >> 24, 0x40000uLL);
  }

  v5 = v1 << 8 >> 24;
  if (v5 <= 0x7F)
  {
    v6 = *(v3 + 4 * v5 + 60) & 0x40000;
  }

  else
  {
    v6 = __maskrune(v1 << 8 >> 24, 0x40000uLL);
  }

  v7 = v1 >> 8;
  if (v7 <= 0x7F)
  {
    v8 = *(v3 + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v8 = __maskrune(v1 >> 8, 0x40000uLL);
  }

  v1 = v1;
  if (v1 <= 0x7F)
  {
    v9 = *(v3 + 4 * v1 + 60) & 0x40000;
  }

  else
  {
    v9 = __maskrune(v1, 0x40000uLL);
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 46;
  }

  if (v6)
  {
    v11 = v5;
  }

  else
  {
    v11 = 46;
  }

  if (v4)
  {
    v12 = v2;
  }

  else
  {
    v12 = 46;
  }

  if (v9)
  {
    v13 = v1;
  }

  else
  {
    v13 = 46;
  }

  _cg_jpeg_mem_term("copyPixelBufferImp", 3275, "*** [%c%c%c%c] plugin did not implement 'copyPixelBufferImp' ***\n", v12, v11, v10, v13);
  return 4294967240;
}

uint64_t IIOReadPlugin::copyIOSurface420f(uint64_t a1)
{
  v1 = *(a1 + 220);
  v2 = v1 >> 24;
  v3 = MEMORY[0x1E69E9830];
  if ((v1 >> 24) <= 0x7F)
  {
    v4 = *(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000;
  }

  else
  {
    v4 = __maskrune(v1 >> 24, 0x40000uLL);
  }

  v5 = v1 << 8 >> 24;
  if (v5 <= 0x7F)
  {
    v6 = *(v3 + 4 * v5 + 60) & 0x40000;
  }

  else
  {
    v6 = __maskrune(v1 << 8 >> 24, 0x40000uLL);
  }

  v7 = v1 >> 8;
  if (v7 <= 0x7F)
  {
    v8 = *(v3 + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v8 = __maskrune(v1 >> 8, 0x40000uLL);
  }

  v1 = v1;
  if (v1 <= 0x7F)
  {
    v9 = *(v3 + 4 * v1 + 60) & 0x40000;
  }

  else
  {
    v9 = __maskrune(v1, 0x40000uLL);
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 46;
  }

  if (v6)
  {
    v11 = v5;
  }

  else
  {
    v11 = 46;
  }

  if (v4)
  {
    v12 = v2;
  }

  else
  {
    v12 = 46;
  }

  if (v9)
  {
    v13 = v1;
  }

  else
  {
    v13 = 46;
  }

  _cg_jpeg_mem_term("copyIOSurface420f", 3286, "*** [%c%c%c%c] plugin did not implement 'copyIOSurfaceCallback420f' ***\n", v12, v11, v10, v13);
  return 0;
}

uint64_t IIOReadPlugin::copyIOSurfaceSet(uint64_t a1)
{
  v1 = *(a1 + 220);
  v2 = v1 >> 24;
  v3 = MEMORY[0x1E69E9830];
  if ((v1 >> 24) <= 0x7F)
  {
    v4 = *(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000;
  }

  else
  {
    v4 = __maskrune(v1 >> 24, 0x40000uLL);
  }

  v5 = v1 << 8 >> 24;
  if (v5 <= 0x7F)
  {
    v6 = *(v3 + 4 * v5 + 60) & 0x40000;
  }

  else
  {
    v6 = __maskrune(v1 << 8 >> 24, 0x40000uLL);
  }

  v7 = v1 >> 8;
  if (v7 <= 0x7F)
  {
    v8 = *(v3 + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v8 = __maskrune(v1 >> 8, 0x40000uLL);
  }

  v1 = v1;
  if (v1 <= 0x7F)
  {
    v9 = *(v3 + 4 * v1 + 60) & 0x40000;
  }

  else
  {
    v9 = __maskrune(v1, 0x40000uLL);
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 46;
  }

  if (v6)
  {
    v11 = v5;
  }

  else
  {
    v11 = 46;
  }

  if (v4)
  {
    v12 = v2;
  }

  else
  {
    v12 = 46;
  }

  if (v9)
  {
    v13 = v1;
  }

  else
  {
    v13 = 46;
  }

  _cg_jpeg_mem_term("copyIOSurfaceSet", 3296, "*** [%c%c%c%c] plugin did not implement 'copyIOSurfaceSet' ***\n", v12, v11, v10, v13);
  return 0;
}

void IIOReadPlugin::debugWriteIOSurface(IIOReadPlugin *this, __IOSurface *a2)
{
  v3 = IIO_XPCServer();
  if (a2)
  {
    if ((v3 & 1) == 0)
    {
      v4 = IIOReadPlugin::debugWriteIOSurface(__IOSurface *)::uniqueBlockID++;
      v5 = 0;
      asprintf(&v5, "IOSurface-%d", v4);
      free(v5);
    }
  }
}

uint64_t IIOReadPlugin::copyImageTextureData(uint64_t a1)
{
  v1 = *(a1 + 220);
  v2 = v1 >> 24;
  v3 = MEMORY[0x1E69E9830];
  if ((v1 >> 24) <= 0x7F)
  {
    v4 = *(MEMORY[0x1E69E9830] + 4 * v2 + 60) & 0x40000;
  }

  else
  {
    v4 = __maskrune(v1 >> 24, 0x40000uLL);
  }

  v5 = v1 << 8 >> 24;
  if (v5 <= 0x7F)
  {
    v6 = *(v3 + 4 * v5 + 60) & 0x40000;
  }

  else
  {
    v6 = __maskrune(v1 << 8 >> 24, 0x40000uLL);
  }

  v7 = v1 >> 8;
  if (v7 <= 0x7F)
  {
    v8 = *(v3 + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v8 = __maskrune(v1 >> 8, 0x40000uLL);
  }

  v1 = v1;
  if (v1 <= 0x7F)
  {
    v9 = *(v3 + 4 * v1 + 60) & 0x40000;
  }

  else
  {
    v9 = __maskrune(v1, 0x40000uLL);
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 46;
  }

  if (v6)
  {
    v11 = v5;
  }

  else
  {
    v11 = 46;
  }

  if (v4)
  {
    v12 = v2;
  }

  else
  {
    v12 = 46;
  }

  if (v9)
  {
    v13 = v1;
  }

  else
  {
    v13 = 46;
  }

  _cg_jpeg_mem_term("copyImageTextureData", 3325, "*** [%c%c%c%c] plugin did not implement 'copyImageTextureData' ***\n", v12, v11, v10, v13);
  return 0;
}

uint64_t IIOReadPlugin::decodeLZFSEIntoBuffer(IIOReadPlugin *this, unsigned __int8 *a2, size_t a3, unsigned __int8 *a4, unint64_t a5)
{
  if (!a3)
  {
    return 0;
  }

  memset(&v13, 0, sizeof(v13));
  if (compression_stream_init(&v13, COMPRESSION_STREAM_DECODE, COMPRESSION_LZFSE))
  {
    return 0;
  }

  v10 = 0;
  v13.src_ptr = a2;
  v13.src_size = a3;
  while (a5 > v10)
  {
    v13.dst_ptr = &a4[v10];
    v13.dst_size = a5 - v10;
    v11 = compression_stream_process(&v13, 0);
    if (v11 == COMPRESSION_STATUS_ERROR)
    {
      break;
    }

    v10 = v13.dst_ptr - a4;
    if (v11 == COMPRESSION_STATUS_END)
    {
      v9 = 1;
      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_10:
  compression_stream_destroy(&v13);
  return v9;
}

uint64_t IIOReadPlugin::textureDataLockData(IIOReadPlugin *this, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  return 0;
}

uint64_t IIOReadPlugin::getCachedTile(IIOReadPlugin *this, double a2)
{
  LODWORD(a2) = *(this + 75);
  v3 = *&a2;
  LODWORD(a2) = *(this + 76);
  v4 = *&a2;
  LODWORD(a2) = *(this + 77);
  v5 = *&a2;
  LODWORD(a2) = *(this + 78);
  v6 = *&a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if ((gIIODebugFlags & 0x300) == 0x100 || (gIIODebugFlags & 0x400000000000) != 0)
  {
    ImageIOLog("::: getCachedTile  request: rect=(%5g, %5g, %5g, %5g)\n", v3, v4, v5, v6);
  }

  v8 = *(this + 4);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZN13IIOReadPlugin13getCachedTileEv_block_invoke;
  v11[3] = &unk_1E6F09498;
  *&v11[6] = v3;
  *&v11[7] = v4;
  *&v11[8] = v5;
  *&v11[9] = v6;
  v11[4] = &v12;
  v11[5] = this;
  IIOImageRead::enumerateCacheKeysWithBlock(v8, v11);
  v9 = (*(this + 26) - *(v13 + 6));
  _Block_object_dispose(&v12, 8);
  return v9;
}

void ___ZN13IIOReadPlugin13getCachedTileEv_block_invoke(uint64_t a1, _DWORD *a2, double a3, double a4)
{
  v8 = *(a1 + 40);
  LODWORD(a3) = a2[2];
  LODWORD(a4) = a2[3];
  v9 = *&a3;
  v10 = *&a4;
  LODWORD(a3) = a2[4];
  LODWORD(a4) = a2[5];
  v11 = *&a3;
  v12 = *&a4;
  if ((gIIODebugFlags & 0x300) == 0x100 || (gIIODebugFlags & 0x400000000000) != 0)
  {
    ImageIOLog(":::                checking rect=(%5g, %5g, %5g, %5g)\n", v9, v10, *&a3, *&a4);
  }

  v39.origin.x = v9;
  v39.origin.y = v10;
  v39.size.width = v11;
  v39.size.height = v12;
  if (CGRectEqualToRect(*(a1 + 48), v39))
  {
    v36 = 0;
    LODWORD(v4) = *(v8 + 300);
    LODWORD(v14) = *(v8 + 304);
    y = v14;
    LODWORD(v5) = *(v8 + 308);
    LODWORD(v14) = *(v8 + 312);
    v17 = v14;
    LODWORD(v15) = *(v8 + 248);
    v18 = v15;
    if (y + v17 <= v18)
    {
      height = v17;
    }

    else
    {
      height = v18 - y;
    }

    if ((gIIODebugFlags & 0x300) == 0x100 || (gIIODebugFlags & 0x400000000000) != 0)
    {
      ImageIOLog(":::          found matching rect=(%5g, %5g, %5g, %5g)\n", v9, v10, v11, v12);
    }

    v21 = a2[9];
    v22 = *(v8 + 316);
    if (v21 != v22)
    {
      _cg_jpeg_mem_term("getCachedTile_block_invoke", 3529, "*** cannot use cached tile: cached-rb: %d   blockGeo-rb:%d\n", a2[9], v22);
      return;
    }

    x = v4;
    width = v5;
    if (*(v8 + 432) == a2[6])
    {
      if (!IIOImageRead::getCachedImageBlockData(*(v8 + 32), a2, &v36))
      {
        return;
      }

      v37.origin.x = v4;
      v37.origin.y = y;
      v37.size.width = v5;
      v37.size.height = height;
      ImageBlock = IIOReadPlugin::createImageBlock(v8, v36, 0, v37, *(v8 + 316), 1);
    }

    else
    {
      if (*(v8 + 258) != 32)
      {
        return;
      }

      if (*(v8 + 256) != 8)
      {
        return;
      }

      if (*(v8 + 336) != 1)
      {
        return;
      }

      v35 = 0;
      v26 = _ImageIO_Malloc(*(v8 + 312) * v21, *(v8 + 416), &v35, "ImageIOGetCachedBlocks", 0, 0);
      if (!v26)
      {
        return;
      }

      v27 = v26;
      if (!IIOImageRead::getCachedImageBlockData(*(v8 + 32), a2, &v36))
      {
        return;
      }

      v28 = *(v8 + 312);
      src.data = v36;
      src.height = v28;
      v29 = *(v8 + 308);
      v30 = a2[9];
      dest.data = v27;
      dest.height = v28;
      v31 = *(v8 + 316);
      dest.width = v29;
      dest.rowBytes = v31;
      src.width = v29;
      src.rowBytes = v30;
      *permuteMap = 50331906;
      if (v30 < 4 * v29)
      {
        return;
      }

      vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0x10u);
      if (*(v8 + 262) - 3 <= 1)
      {
        if (*(v8 + 436))
        {
          if (*(v8 + 436) == 1)
          {
            vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
          }
        }

        else
        {
          vImageUnpremultiplyData_RGBA8888(&dest, &dest, 0x10u);
        }
      }

      CGImageReadSessionReleaseCachedImageBlockData(v36);
      ImageBlock = IIO_ImageBlockCreate(v27, *(v8 + 316), 0, v4, y, v5, height);
    }

    *(*(v8 + 96) + 8 * *(v8 + 112)) = ImageBlock;
    if (!CGRectEqualToRect(*(v8 + 120), *MEMORY[0x1E695F050]))
    {
      v40.origin.x = v4;
      v40.origin.y = y;
      v40.size.width = v5;
      v40.size.height = height;
      v38 = CGRectUnion(*(v8 + 120), v40);
      x = v38.origin.x;
      y = v38.origin.y;
      width = v38.size.width;
      height = v38.size.height;
    }

    *(v8 + 120) = x;
    *(v8 + 128) = y;
    *(v8 + 136) = width;
    *(v8 + 144) = height;
    if ((gIIODebugFlags & 0x300) == 0x100 || (gIIODebugFlags & 0x400000000000) != 0)
    {
      ImageIOLog("::: cache  hit:      rect=(%5d, %5d, %5d, %5d)   rb=%d   imageData=%p\n", *(v8 + 300), *(v8 + 304), *(v8 + 308), *(v8 + 312), *(v8 + 316), v36);
    }

    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

const char *___ZN13IIOReadPlugin15getCachedBlocksEv_block_invoke(uint64_t a1, char *a2)
{
  v4 = *(a1 + 32);
  result = imageio_key_is_equal(a2, (a1 + 40), 0);
  if (result)
  {
    v6 = *(a2 + 9);
    if (v6 != *(a1 + 76))
    {
      if ((gIIODebugFlags & 0x300) == 0x100 || (gIIODebugFlags & 0x400000000000) != 0)
      {
        result = ImageIOLog("::: adjusting rowBytes to cached value: %d -> %d\n", *(a1 + 76), v6);
      }

      v8 = *(a1 + 80);
      if (v8 && (v9 = *(a2 + 9), v8 >= *(a2 + 5) * v9))
      {
        *(v4 + 316) = v9;
      }

      else
      {
        ImageIOLog(":::::::::::::::::::::::::::::::::::::::::::::::::::\n");
        ImageIOLog("::: cannot adjust rowBytes: cacheKey:%d  key:%d  alloc:%d\n", *(a1 + 76), *(a2 + 9), *(a1 + 80));

        return ImageIOLog(":::::::::::::::::::::::::::::::::::::::::::::::::::\n");
      }
    }
  }

  return result;
}

void IIOReadPlugin::cacheImmediately(IIOReadPlugin *this, const __CFDictionary *a2, CGImageRef image)
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  ColorSpace = CGImageGetColorSpace(image);
  Model = CGColorSpaceGetModel(ColorSpace);
  value = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v12 = MEMORY[0x1E695E4D0];
  if (Model == kCGColorSpaceModelRGB)
  {
    v13 = *MEMORY[0x1E695F288];
    if (a2 && CFDictionaryGetValueIfPresent(a2, *MEMORY[0x1E695F288], &value))
    {
      CFDictionaryAddValue(Mutable, v13, value);
      goto LABEL_7;
    }

    CFDictionaryAddValue(Mutable, v13, *MEMORY[0x1E695F280]);
  }

  if (!a2)
  {
    v22 = *MEMORY[0x1E695F298];
    v20 = *v12;
    v21 = Mutable;
    goto LABEL_21;
  }

LABEL_7:
  v14 = *MEMORY[0x1E695F268];
  if (CFDictionaryGetValueIfPresent(a2, *MEMORY[0x1E695F268], &value))
  {
    CFDictionaryAddValue(Mutable, v14, value);
  }

  v15 = *MEMORY[0x1E695F270];
  if (CFDictionaryGetValueIfPresent(a2, *MEMORY[0x1E695F270], &value))
  {
    CFDictionaryAddValue(Mutable, v15, value);
  }

  v16 = *MEMORY[0x1E695F298];
  if (CFDictionaryGetValueIfPresent(a2, *MEMORY[0x1E695F298], &value))
  {
    v17 = value;
  }

  else
  {
    v17 = *v12;
  }

  CFDictionaryAddValue(Mutable, v16, v17);
  v18 = *MEMORY[0x1E695F278];
  if (CFDictionaryGetValueIfPresent(a2, *MEMORY[0x1E695F278], &value))
  {
    CFDictionaryAddValue(Mutable, v18, value);
  }

  v19 = *MEMORY[0x1E695F290];
  if (CFDictionaryGetValueIfPresent(a2, *MEMORY[0x1E695F290], &value))
  {
    CFDictionaryAddValue(Mutable, v19, value);
  }

  if (CFDictionaryGetValueIfPresent(a2, @"kCGImageBlockIOSurfaceOptimizedRequest", &value))
  {
    v20 = value;
    v21 = Mutable;
    v22 = @"kCGImageBlockIOSurfaceOptimizedRequest";
LABEL_21:
    CFDictionaryAddValue(v21, v22, v20);
  }

  CFDictionaryAddValue(Mutable, @"kCGImageBlockPreHeating", *v12);
  if ((gIIODebugFlags & 0x300) == 0x100 || (gIIODebugFlags & 0x400000000000) != 0)
  {
    ImageIOLog("::: pre-caching:     rect=(%5g, %5g, %5g, %5g)\n", 0.0, 0.0, Width, Height);
  }

  if (IIOReadPlugin::cacheImmediately(__CFDictionary const*,CGImage *)::onceToken != -1)
  {
    IIOReadPlugin::cacheImmediately();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN13IIOReadPlugin16cacheImmediatelyEPK14__CFDictionaryP7CGImage_block_invoke_2;
  block[3] = &__block_descriptor_tmp_180;
  block[4] = this;
  block[5] = image;
  block[6] = 0;
  block[7] = 0;
  *&block[8] = Width;
  *&block[9] = Height;
  *&block[10] = Width;
  *&block[11] = Height;
  block[12] = Mutable;
  dispatch_sync(IIOReadPlugin::cacheImmediately(__CFDictionary const*,CGImage *)::cacheQueue, block);
  CFRelease(Mutable);
  v24 = CFAbsoluteTimeGetCurrent();
  if ((gIIODebugFlags & 0xC) != 0)
  {
    v25 = v24;
    v26 = *(this + 55);
    v27 = v26 >> 24;
    v28 = MEMORY[0x1E69E9830];
    if ((v26 >> 24) <= 0x7F)
    {
      v29 = *(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x40000;
    }

    else
    {
      v29 = __maskrune(v26 >> 24, 0x40000uLL);
    }

    if (v29)
    {
      v30 = v27;
    }

    else
    {
      v30 = 46;
    }

    v31 = v26 << 8 >> 24;
    if (v31 <= 0x7F)
    {
      v32 = *(v28 + 4 * v31 + 60) & 0x40000;
    }

    else
    {
      v32 = __maskrune(v26 << 8 >> 24, 0x40000uLL);
    }

    if (v32)
    {
      v33 = v31;
    }

    else
    {
      v33 = 46;
    }

    v34 = v26 >> 8;
    if (v34 <= 0x7F)
    {
      v35 = *(v28 + 4 * v34 + 60) & 0x40000;
    }

    else
    {
      v35 = __maskrune(v26 >> 8, 0x40000uLL);
    }

    if (v35)
    {
      v36 = v34;
    }

    else
    {
      v36 = 46;
    }

    if (v26 <= 0x7F)
    {
      v37 = *(v28 + 4 * v26 + 60) & 0x40000;
    }

    else
    {
      v37 = __maskrune(v26, 0x40000uLL);
    }

    if (v37)
    {
      v38 = v26;
    }

    else
    {
      v38 = 46;
    }

    ImageIOLog("    '%c%c%c%c' cacheImmediately\ttime: %g ms\n", v30, v33, v36, v38, (v25 - Current) * 1000.0);
  }
}

dispatch_queue_t ___ZN13IIOReadPlugin16cacheImmediatelyEPK14__CFDictionaryP7CGImage_block_invoke()
{
  result = dispatch_queue_create("CacheImmediatelyQueue", 0);
  IIOReadPlugin::cacheImmediately(__CFDictionary const*,CGImage *)::cacheQueue = result;
  return result;
}

uint64_t ___ZN13IIOReadPlugin16cacheImmediatelyEPK14__CFDictionaryP7CGImage_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  CGImageGetImageProvider();
  *(v2 + 443) = 1;
  result = CGImageProviderCopyImageBlockSetWithOptions();
  if (result)
  {
    *(v2 + 443) = -1;
LABEL_3:

    return CGImageBlockSetRelease();
  }

  if (!*(a1 + 96))
  {
    *(v2 + 443) = -1;
    return result;
  }

  result = CGImageProviderCopyImageBlockSetWithOptions();
  *(v2 + 443) = -1;
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void IIOReadPlugin::CleanupRecodeProperties(IIOReadPlugin *this, IIODictionary *a2)
{
  if (this)
  {
    if ((IIODictionary::containsKey(this, @"{Exif}") & 1) == 0)
    {
      v14 = 0;
      value = 0;
      v16 = 0;
      IIODictionary::IIODictionary(&v14);
      IIODictionary::setObjectForKey(this, value, @"{Exif}");
      if (IIODictionary::containsKey(this, @"PixelWidth"))
      {
        ObjectForKey = IIODictionary::getObjectForKey(this, @"PixelWidth");
        IIODictionary::setObjectForKey(&v14, ObjectForKey, @"PixelXDimension");
      }

      if (IIODictionary::containsKey(this, @"PixelHeight"))
      {
        v4 = IIODictionary::getObjectForKey(this, @"PixelHeight");
        IIODictionary::setObjectForKey(&v14, v4, @"PixelYDimension");
      }

      IIODictionary::~IIODictionary(&v14);
    }

    if (IIODictionary::containsKey(this, @"{TIFF}"))
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(this, @"Orientation");
      Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(this, @"Orientation", @"{TIFF}");
      IIODebugOrientation("CleanupRecodeProperties", 4129, this);
      if (Uint32ForKey)
      {
        v7 = Uint32ForKeyGroup == 0;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        IIONumber::IIONumber(&v14, Uint32ForKey);
        IIODictionary::setObjectForKeyGroup(this, v16, @"Orientation", @"{TIFF}");
        goto LABEL_28;
      }

      if (Uint32ForKey)
      {
        v8 = 1;
      }

      else
      {
        v8 = Uint32ForKeyGroup == 0;
      }

      if (!v8)
      {
        IIONumber::IIONumber(&v14, Uint32ForKeyGroup);
        IIODictionary::setObjectForKey(this, v16, @"Orientation");
LABEL_28:
        IIONumber::~IIONumber(&v14);
      }
    }

    else
    {
      v14 = 0;
      value = 0;
      v16 = 0;
      IIODictionary::IIODictionary(&v14);
      IIODictionary::setObjectForKey(this, value, @"{TIFF}");
      if (IIODictionary::containsKey(this, @"DPIWidth"))
      {
        v9 = IIODictionary::getObjectForKey(this, @"DPIWidth");
        IIODictionary::setObjectForKey(&v14, v9, @"XResolution");
      }

      if (IIODictionary::containsKey(this, @"DPIHeight"))
      {
        v10 = IIODictionary::getObjectForKey(this, @"DPIHeight");
        IIODictionary::setObjectForKey(&v14, v10, @"YResolution");
      }

      if (IIODictionary::getCount(&v14))
      {
        IIONumber::IIONumber(v12, 2);
        IIODictionary::setObjectForKey(&v14, v13, @"ResolutionUnit");
        IIONumber::~IIONumber(v12);
      }

      if (IIODictionary::containsKey(this, @"Orientation"))
      {
        v11 = IIODictionary::getObjectForKey(this, @"Orientation");
        IIODictionary::setObjectForKey(&v14, v11, @"Orientation");
      }

      IIODictionary::~IIODictionary(&v14);
    }
  }
}

void sub_186011680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t IIOReadPluginFromImageProvider()
{
  v0 = *CGImageProviderGetInfo();

  return IIOImagePlus::getMetadata(v0);
}

FILE *IIOImageReadSession::createFILE(IIOImageReadSession *this)
{
  v2 = funopen(this, imagereader_readfn, 0, imagereader_seekfn, imagereader_closefn);
  v3 = v2;
  if (v2)
  {
    if ((gIIODebugFlags & 0x200000000000) != 0)
    {
      ImageIOLog(">>> CGImageReadSessionCreateFILE: [%p] funopen FILE* %p\n", this, v2);
    }

    v4 = *(this + 1);
    if (v4)
    {
      CFRetain(v4);
    }
  }

  return v3;
}

uint64_t imagereader_closefn(void *a1)
{
  if (a1)
  {
    v1 = a1[1];
    if (v1)
    {
      CFRelease(v1);
    }
  }

  return 0;
}

IIOImageRead *IIOImageReadSession::addDataToXPCDictionary(IIOImageReadSession *this, void *a2, void **a3)
{
  result = *(this + 4);
  if (result)
  {
    return IIOImageRead::addDataToXPCDict(result, a2, a3);
  }

  return result;
}

uint64_t CGImageReadSessionGetTypeID()
{
  if (CGImageReadSessionGetTypeID::once != -1)
  {
    CGImageReadSessionCreate_cold_1();
  }

  return CGImageReadSessionGetTypeID::id;
}

CFStringRef _CGImageReadSessionCopyDebugDesc(void *cf)
{
  if (cf)
  {
    v2 = cf[3];
  }

  else
  {
    v2 = 0;
  }

  v3 = CFGetAllocator(cf);
  return CFStringCreateWithFormat(v3, 0, @"<CGImageReadSessionRef %p>{offset=%lld}%s", cf, *(v2 + 40), "");
}

CFIndex CGImageReadSessionGetSize(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0 && (v2 = *(v1 + 32)) != 0)
  {
    return IIOImageRead::getSize(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t CGImageReadSessionIsFinal(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0 && (v2 = *(v1 + 32)) != 0)
  {
    return IIOImageRead::isFinal(v2);
  }

  else
  {
    return 0;
  }
}

const UInt8 *CGImageReadSessionGetBytePointer(uint64_t a1, CFDataRef *a2)
{
  if (a1 && a2 && (v2 = *(a1 + 24)) != 0 && (v3 = *(v2 + 32)) != 0)
  {
    return IIOImageRead::retainBytePointer(v3, a2, 0);
  }

  else
  {
    return 0;
  }
}

void CGImageReadSessionReleaseBytePointer(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      v3 = *(v2 + 32);
      if (v3)
      {
        IIOImageRead::releaseBytePointer(v3, a2);
      }
    }
  }
}

uint64_t CGImageReadSessionGetBytesAtOffset(uint64_t a1, unsigned __int8 *a2, off_t a3, uint64_t a4)
{
  if (a1 && (v4 = *(a1 + 24)) != 0 && (v5 = *(v4 + 32)) != 0)
  {
    return IIOImageRead::getBytesAtOffset(v5, a2, a3, a4, 0);
  }

  else
  {
    return 0;
  }
}

char *CGImageReadSessionCopySourceInfo(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0 && (v2 = *(v1 + 32)) != 0)
  {
    return IIOImageRead::copySourceInfo(v2);
  }

  else
  {
    return 0;
  }
}

FILE *CGImageReadSessionCreateFILE(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = funopen(v2, imagereader_readfn, 0, imagereader_seekfn, imagereader_closefn);
  v4 = v3;
  if (v3)
  {
    if ((gIIODebugFlags & 0x200000000000) != 0)
    {
      ImageIOLog(">>> CGImageReadSessionCreateFILE: [%p] funopen FILE* %p\n", v2, v3);
    }

    CFRetain(a1);
  }

  return v4;
}

uint64_t jinit_arith_decoder(uint64_t a1)
{
  result = (**(a1 + 8))();
  *(a1 + 624) = result;
  *result = start_pass_0;
  *(result + 16) = finish_pass;
  *(result + 304) = 0u;
  *(result + 320) = 0u;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  *(result + 240) = 0u;
  *(result + 256) = 0u;
  *(result + 208) = 0u;
  *(result + 224) = 0u;
  *(result + 176) = 0u;
  *(result + 192) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 336) = 113;
  if (*(a1 + 316))
  {
    result = (**(a1 + 8))(a1, 1, *(a1 + 56) << 8);
    *(a1 + 192) = result;
    if (*(a1 + 56) >= 1)
    {
      v3 = 0;
      *&v4 = -1;
      *(&v4 + 1) = -1;
      do
      {
        *(result + 224) = v4;
        *(result + 240) = v4;
        *(result + 192) = v4;
        *(result + 208) = v4;
        *(result + 160) = v4;
        *(result + 176) = v4;
        *(result + 128) = v4;
        *(result + 144) = v4;
        *(result + 96) = v4;
        *(result + 112) = v4;
        *(result + 64) = v4;
        *(result + 80) = v4;
        *(result + 32) = v4;
        *(result + 48) = v4;
        *result = v4;
        *(result + 16) = v4;
        result += 256;
        ++v3;
      }

      while (v3 < *(a1 + 56));
    }
  }

  return result;
}

uint64_t start_pass_0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 624);
  v3 = *(result + 540);
  if (*(result + 316))
  {
    v4 = *(result + 544);
    if (v3)
    {
      if (v4 < v3 || v4 > *(result + 568) || *(result + 448) != 1)
      {
        goto LABEL_18;
      }
    }

    else if (v4)
    {
      goto LABEL_18;
    }

    v7 = *(result + 548);
    if (v7)
    {
      v8 = v7 - 1;
      if (v8 != *(result + 552))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v8 = *(result + 552);
    }

    if (v8 < 14)
    {
LABEL_19:
      LODWORD(v6) = *(v1 + 448);
      if (v6 >= 1)
      {
        v10 = 0;
        do
        {
          v11 = *(*(v1 + 456 + 8 * v10) + 4);
          v12 = *(v1 + 192);
          v13 = *(v1 + 540);
          if (v13 && (*(v12 + (v11 << 8)) & 0x80000000) != 0)
          {
            v14 = *v1;
            *(v14 + 40) = 118;
            *(v14 + 48) = v11;
            *(*v1 + 52) = 0;
            result = (*(*v1 + 8))(v1, 0xFFFFFFFFLL);
            v13 = *(v1 + 540);
          }

          if (v13 <= *(v1 + 544))
          {
            v15 = v13 - 1;
            v16 = (v12 + (v11 << 8) + 4 * v13);
            do
            {
              if (*(v1 + 548) != (*v16 & ~(*v16 >> 31)))
              {
                v17 = *v1;
                *(v17 + 40) = 118;
                *(v17 + 48) = v11;
                *(*v1 + 52) = v13;
                result = (*(*v1 + 8))(v1, 0xFFFFFFFFLL);
              }

              *v16++ = *(v1 + 552);
              ++v15;
              ++v13;
            }

            while (v15 < *(v1 + 544));
          }

          ++v10;
          v6 = *(v1 + 448);
        }

        while (v10 < v6);
      }

      v18 = *(v1 + 540);
      if (*(v1 + 548))
      {
        if (v18)
        {
          v19 = decode_mcu_AC_refine_0;
        }

        else
        {
          v19 = decode_mcu_DC_refine_0;
        }
      }

      else if (v18)
      {
        v19 = decode_mcu_AC_first_0;
      }

      else
      {
        v19 = decode_mcu_DC_first_0;
      }

      *(v2 + 8) = v19;
      goto LABEL_38;
    }

LABEL_18:
    v9 = *result;
    *(v9 + 40) = 17;
    *(v9 + 48) = v3;
    *(*result + 52) = *(result + 544);
    *(*result + 56) = *(result + 548);
    *(*result + 60) = *(result + 552);
    result = (**result)(result);
    goto LABEL_19;
  }

  if (v3 || *(result + 548) || *(result + 552) || (v30 = *(result + 544), v30 <= 63) && v30 != *(result + 568))
  {
    v5 = *result;
    *(v5 + 40) = 125;
    result = (*(v5 + 8))(result, 0xFFFFFFFFLL);
  }

  *(v2 + 8) = decode_mcu_0;
  LODWORD(v6) = *(v1 + 448);
LABEL_38:
  if (v6 >= 1)
  {
    v20 = v2 + 80;
    v21 = (v2 + 60);
    v22 = v2 + 208;
    v23 = 57;
    do
    {
      v24 = *(v1 + 8 * v23);
      if (!*(v1 + 316))
      {
        goto LABEL_43;
      }

      if (*(v1 + 540))
      {
        goto LABEL_51;
      }

      if (!*(v1 + 548))
      {
LABEL_43:
        v25 = *(v24 + 20);
        if (v25 >= 0x10)
        {
          v26 = *v1;
          *(v26 + 40) = 50;
          *(v26 + 48) = v25;
          (**v1)(v1);
        }

        result = *(v20 + 8 * v25);
        if (!result)
        {
          result = (**(v1 + 8))(v1, 1, 64);
          *(v20 + 8 * v25) = result;
        }

        *(result + 32) = 0u;
        *(result + 48) = 0u;
        *result = 0u;
        *(result + 16) = 0u;
        *(v21 - 4) = 0;
        *v21 = 0;
        if (*(v1 + 316))
        {
          if (*(v1 + 540))
          {
            goto LABEL_51;
          }
        }

        else if (*(v1 + 568))
        {
LABEL_51:
          v27 = *(v24 + 24);
          if (v27 >= 0x10)
          {
            v28 = *v1;
            *(v28 + 40) = 50;
            *(v28 + 48) = v27;
            (**v1)(v1);
          }

          result = *(v22 + 8 * v27);
          if (!result)
          {
            result = (**(v1 + 8))(v1, 1, 256);
            *(v22 + 8 * v27) = result;
          }

          *(result + 224) = 0u;
          *(result + 240) = 0u;
          *(result + 192) = 0u;
          *(result + 208) = 0u;
          *(result + 160) = 0u;
          *(result + 176) = 0u;
          *(result + 128) = 0u;
          *(result + 144) = 0u;
          *(result + 96) = 0u;
          *(result + 112) = 0u;
          *(result + 64) = 0u;
          *(result + 80) = 0u;
          *(result + 32) = 0u;
          *(result + 48) = 0u;
          *result = 0u;
          *(result + 16) = 0u;
        }
      }

      ++v21;
      v29 = v23 - 56;
      ++v23;
    }

    while (v29 < *(v1 + 448));
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = -16;
  *(v2 + 76) = *(v1 + 372);
  return result;
}

uint64_t decode_mcu_DC_first_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 624);
  if (*(a1 + 372))
  {
    v5 = *(v4 + 76);
    if (!v5)
    {
      process_restart_0(a1);
      v5 = *(v4 + 76);
    }

    *(v4 + 76) = v5 - 1;
  }

  v25 = v4;
  if (*(v4 + 40) == -1 || *(a1 + 496) < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = a1 + 500;
  v26 = v4 + 80;
  v8 = v4 + 60;
  v9 = v4 + 44;
  v24 = a2;
  while (1)
  {
    v10 = *(a2 + 8 * v6);
    v11 = *(v7 + 4 * v6);
    v12 = *(*(a1 + 456 + 8 * v11) + 20);
    v13 = (*(v26 + 8 * v12) + *(v8 + 4 * v11));
    if (arith_decode(a1, v13))
    {
      break;
    }

    *(v8 + 4 * v11) = 0;
    v17 = *(v9 + 4 * v11);
LABEL_30:
    *v10 = v17 << *(a1 + 552);
    if (++v6 >= *(a1 + 496))
    {
      return 1;
    }
  }

  v14 = arith_decode(a1, v13 + 1);
  v15 = &v13[v14 + 2];
  if (!arith_decode(a1, v15))
  {
    v16 = 0;
    goto LABEL_16;
  }

  v15 = (*(v26 + 8 * v12) + 20);
  v16 = 1;
  if (!arith_decode(a1, v15))
  {
LABEL_16:
    if (v16 >= ((1 << *(a1 + 324 + v12)) >> 1))
    {
      v18 = 4 * v14 + 4;
      if (v16 > ((1 << *(a1 + 340 + v12)) >> 1))
      {
        v18 = 4 * v14 + 12;
      }
    }

    else
    {
      v18 = 0;
    }

    *(v8 + 4 * v11) = v18;
    if (v16 >= 2)
    {
      v19 = v16;
      do
      {
        v16 >>= 1;
        if (arith_decode(a1, v15 + 14))
        {
          v20 = v16;
        }

        else
        {
          v20 = 0;
        }

        v19 |= v20;
      }

      while (v16 > 1);
    }

    else
    {
      v19 = v16;
    }

    v21 = ~v19;
    if (!v14)
    {
      v21 = v19 + 1;
    }

    v17 = *(v9 + 4 * v11) + v21;
    *(v9 + 4 * v11) = v17;
    v7 = a1 + 500;
    a2 = v24;
    goto LABEL_30;
  }

  while (1)
  {
    v16 *= 2;
    if (v16 == 0x8000)
    {
      break;
    }

    if (!arith_decode(a1, ++v15))
    {
      goto LABEL_16;
    }
  }

  v22 = *a1;
  *(v22 + 40) = 117;
  (*(v22 + 8))(a1, 0xFFFFFFFFLL);
  *(v25 + 40) = -1;
  return 1;
}

uint64_t decode_mcu_AC_first_0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 624);
  if (*(a1 + 372))
  {
    v5 = *(v4 + 76);
    if (!v5)
    {
      process_restart_0(a1);
      v5 = *(v4 + 76);
    }

    *(v4 + 76) = v5 - 1;
  }

  if (*(v4 + 40) != -1)
  {
    v6 = *(a1 + 560);
    v25 = *a2;
    v7 = *(a1 + 540) - 1;
    v8 = *(*(a1 + 456) + 24);
    v9 = v4 + 208;
    do
    {
      v10 = *(v9 + 8 * v8);
      if (arith_decode(a1, (v10 + 3 * v7)))
      {
        break;
      }

      v11 = (v10 + 3 * v7 + 2);
      v12 = (v6 + 4 * (v7 + 1));
      while (1)
      {
        v13 = v7 + 1;
        if (arith_decode(a1, v11 - 1))
        {
          break;
        }

        v11 += 3;
        ++v12;
        ++v7;
        if (v13 >= *(a1 + 544))
        {
          goto LABEL_32;
        }
      }

      v24 = arith_decode(a1, (v4 + 336));
      if (arith_decode(a1, v11))
      {
        if (arith_decode(a1, v11))
        {
          v14 = *(v9 + 8 * v8);
          v15 = 217;
          if (v7 < *(a1 + 356 + v8))
          {
            v15 = 189;
          }

          v16 = (v14 + v15 + 14);
          v17 = 2;
          if (arith_decode(a1, (v14 + v15)))
          {
            while (1)
            {
              v17 *= 2;
              if (v17 == 0x8000)
              {
                break;
              }

              v18 = arith_decode(a1, v16 - 13);
              ++v16;
              if (!v18)
              {
                if (!v17)
                {
                  goto LABEL_28;
                }

                goto LABEL_20;
              }
            }

LABEL_32:
            v22 = *a1;
            *(v22 + 40) = 117;
            (*(v22 + 8))(a1, 0xFFFFFFFFLL);
            *(v4 + 40) = -1;
            return 1;
          }

LABEL_20:
          v19 = v17;
          do
          {
            v19 >>= 1;
            if (arith_decode(a1, v16))
            {
              v20 = v19;
            }

            else
            {
              v20 = 0;
            }

            v17 |= v20;
          }

          while (v19 > 1);
        }

        else
        {
          v17 = 1;
        }
      }

      else
      {
        v17 = 0;
      }

LABEL_28:
      v21 = ~v17;
      if (!v24)
      {
        v21 = v17 + 1;
      }

      *(v25 + 2 * *v12) = v21 << *(a1 + 552);
      v7 = v13;
    }

    while (v13 < *(a1 + 544));
  }

  return 1;
}

uint64_t decode_mcu_DC_refine_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 624);
  if (*(a1 + 372))
  {
    v5 = *(v4 + 76);
    if (!v5)
    {
      process_restart_0(a1);
      v5 = *(v4 + 76);
    }

    *(v4 + 76) = v5 - 1;
  }

  if (*(a1 + 496) >= 1)
  {
    v6 = 0;
    v7 = 1 << *(a1 + 552);
    do
    {
      if (arith_decode(a1, (v4 + 336)))
      {
        **(a2 + 8 * v6) |= v7;
      }

      ++v6;
    }

    while (v6 < *(a1 + 496));
  }

  return 1;
}

uint64_t decode_mcu_AC_refine_0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 624);
  if (*(a1 + 372))
  {
    v5 = *(v4 + 76);
    if (!v5)
    {
      process_restart_0(a1);
      v5 = *(v4 + 76);
    }

    *(v4 + 76) = v5 - 1;
  }

  if (*(v4 + 40) != -1)
  {
    v6 = *(a1 + 560);
    v7 = *a2;
    v24 = *(*(a1 + 456) + 24);
    v23 = 1 << *(a1 + 552);
    v8 = *(a1 + 544);
    do
    {
      if (*(v7 + 2 * *(v6 + 4 * v8)))
      {
        break;
      }

      --v8;
    }

    while (v8);
    v9 = *(a1 + 540) - 1;
    v10 = v6 + 4;
    do
    {
      v11 = *(v4 + 208 + 8 * v24);
      v12 = 3 * v9;
      if (v9 >= v8 && arith_decode(a1, (v11 + v12)))
      {
        break;
      }

      v13 = v12;
      v14 = v9++;
      for (i = (v11 + v13 + 2); ; i += 3)
      {
        v16 = *(v10 + 4 * v14);
        if (*(v7 + 2 * v16))
        {
          break;
        }

        if (arith_decode(a1, i - 1))
        {
          v17 = (v7 + 2 * v16);
          v20 = arith_decode(a1, (v4 + 336));
          v19 = v23;
          if (v20)
          {
            v19 = -v23;
          }

          goto LABEL_23;
        }

        ++v14;
        ++v9;
        if (v14 >= *(a1 + 544))
        {
          v21 = *a1;
          *(v21 + 40) = 117;
          (*(v21 + 8))(a1, 0xFFFFFFFFLL);
          *(v4 + 40) = -1;
          return 1;
        }
      }

      if (!arith_decode(a1, i))
      {
        continue;
      }

      v17 = (v7 + 2 * v16);
      v18 = *v17;
      v19 = v18 < 0 ? v18 - v23 : v18 + v23;
LABEL_23:
      *v17 = v19;
    }

    while (*(a1 + 544) > v9);
  }

  return 1;
}

uint64_t decode_mcu_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 624);
  if (*(a1 + 372))
  {
    v5 = *(v4 + 76);
    if (!v5)
    {
      process_restart_0(a1);
      v5 = *(v4 + 76);
    }

    *(v4 + 76) = v5 - 1;
  }

  if (*(v4 + 40) == -1 || *(a1 + 496) < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = a1 + 500;
  v42 = *(a1 + 560);
  v8 = a1 + 456;
  v9 = v4 + 80;
  v10 = v4 + 60;
  v40 = a2;
  v41 = v4 + 44;
  v43 = v4 + 208;
  while (1)
  {
    v44 = *(a2 + 8 * v6);
    v11 = *(v7 + 4 * v6);
    v12 = *(v8 + 8 * v11);
    v13 = *(v12 + 20);
    v14 = (*(v9 + 8 * v13) + *(v10 + 4 * v11));
    if (arith_decode(a1, v14))
    {
      break;
    }

    *(v10 + 4 * v11) = 0;
    v18 = *(v41 + 4 * v11);
LABEL_30:
    *v44 = v18;
    if (*(a1 + 568))
    {
      v23 = 0;
      v24 = *(v12 + 24);
      do
      {
        v25 = *(v43 + 8 * v24);
        if (arith_decode(a1, (v25 + 3 * v23)))
        {
          break;
        }

        v26 = (v25 + 3 * v23 + 2);
        v27 = (v42 + 4 * (v23 + 1));
        while (1)
        {
          v28 = v23 + 1;
          if (arith_decode(a1, v26 - 1))
          {
            break;
          }

          v26 += 3;
          ++v27;
          ++v23;
          if (v28 >= *(a1 + 568))
          {
            goto LABEL_58;
          }
        }

        v29 = arith_decode(a1, (v4 + 336));
        if (arith_decode(a1, v26))
        {
          if (arith_decode(a1, v26))
          {
            v30 = *(v43 + 8 * v24);
            v31 = 217;
            if (v23 < *(a1 + 356 + v24))
            {
              v31 = 189;
            }

            v32 = (v30 + v31 + 14);
            v33 = 2;
            if (arith_decode(a1, (v30 + v31)))
            {
              while (1)
              {
                v33 *= 2;
                if (v33 == 0x8000)
                {
                  goto LABEL_58;
                }

                v34 = arith_decode(a1, v32 - 13);
                ++v32;
                if (!v34)
                {
                  if (!v33)
                  {
                    goto LABEL_53;
                  }

                  break;
                }
              }
            }

            v35 = v33;
            do
            {
              v35 >>= 1;
              if (arith_decode(a1, v32))
              {
                v36 = v35;
              }

              else
              {
                v36 = 0;
              }

              LOWORD(v33) = v36 | v33;
            }

            while (v35 > 1);
          }

          else
          {
            LOWORD(v33) = 1;
          }
        }

        else
        {
          LOWORD(v33) = 0;
        }

LABEL_53:
        v37 = ~v33;
        if (!v29)
        {
          v37 = v33 + 1;
        }

        v44[*v27] = v37;
        v23 = v28;
      }

      while (v28 < *(a1 + 568));
    }

    ++v6;
    v7 = a1 + 500;
    a2 = v40;
    v8 = a1 + 456;
    v9 = v4 + 80;
    v10 = v4 + 60;
    if (v6 >= *(a1 + 496))
    {
      return 1;
    }
  }

  v15 = arith_decode(a1, v14 + 1);
  v16 = &v14[v15 + 2];
  if (!arith_decode(a1, v16))
  {
    v17 = 0;
    goto LABEL_16;
  }

  v16 = (*(v4 + 80 + 8 * v13) + 20);
  v17 = 1;
  if (!arith_decode(a1, v16))
  {
LABEL_16:
    if (v17 >= ((1 << *(a1 + 324 + v13)) >> 1))
    {
      v19 = 4 * v15 + 4;
      if (v17 > ((1 << *(a1 + 340 + v13)) >> 1))
      {
        v19 = 4 * v15 + 12;
      }
    }

    else
    {
      v19 = 0;
    }

    *(v4 + 60 + 4 * v11) = v19;
    if (v17 >= 2)
    {
      v20 = v17;
      do
      {
        v17 >>= 1;
        if (arith_decode(a1, v16 + 14))
        {
          v21 = v17;
        }

        else
        {
          v21 = 0;
        }

        v20 |= v21;
      }

      while (v17 > 1);
    }

    else
    {
      v20 = v17;
    }

    v22 = ~v20;
    if (!v15)
    {
      v22 = v20 + 1;
    }

    v18 = *(v41 + 4 * v11) + v22;
    *(v41 + 4 * v11) = v18;
    goto LABEL_30;
  }

  while (1)
  {
    v17 *= 2;
    if (v17 == 0x8000)
    {
      break;
    }

    if (!arith_decode(a1, ++v16))
    {
      goto LABEL_16;
    }
  }

LABEL_58:
  v38 = *a1;
  *(v38 + 40) = 117;
  (*(v38 + 8))(a1, 0xFFFFFFFFLL);
  *(v4 + 40) = -1;
  return 1;
}

uint64_t process_restart_0(uint64_t *a1)
{
  v2 = a1[78];
  result = (*(a1[77] + 16))();
  if (!result)
  {
    v4 = *a1;
    *(v4 + 40) = 25;
    result = (*v4)(a1);
  }

  if (*(a1 + 112) >= 1)
  {
    v5 = 0;
    v6 = (v2 + 60);
    do
    {
      v7 = a1[v5 + 57];
      if (!*(a1 + 79))
      {
        goto LABEL_8;
      }

      if (*(a1 + 135))
      {
        goto LABEL_10;
      }

      if (!*(a1 + 137))
      {
LABEL_8:
        v8 = *(v2 + 80 + 8 * *(v7 + 20));
        v8[2] = 0uLL;
        v8[3] = 0uLL;
        *v8 = 0uLL;
        v8[1] = 0uLL;
        *(v6 - 4) = 0;
        *v6 = 0;
        if (!*(a1 + 79))
        {
          if (!*(a1 + 142))
          {
            goto LABEL_11;
          }

LABEL_10:
          v9 = *(v2 + 208 + 8 * *(v7 + 24));
          v9[14] = 0uLL;
          v9[15] = 0uLL;
          v9[12] = 0uLL;
          v9[13] = 0uLL;
          v9[10] = 0uLL;
          v9[11] = 0uLL;
          v9[8] = 0uLL;
          v9[9] = 0uLL;
          v9[6] = 0uLL;
          v9[7] = 0uLL;
          v9[4] = 0uLL;
          v9[5] = 0uLL;
          v9[2] = 0uLL;
          v9[3] = 0uLL;
          *v9 = 0uLL;
          v9[1] = 0uLL;
          goto LABEL_11;
        }

        if (*(a1 + 135))
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      ++v5;
      ++v6;
    }

    while (v5 < *(a1 + 112));
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = -16;
  *(v2 + 76) = *(a1 + 93);
  return result;
}

uint64_t arith_decode(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 624);
  v4 = *(v3 + 32);
  if (v4 >= 0x8000)
  {
    v6 = *(v3 + 40);
  }

  else
  {
    v6 = *(v3 + 40);
    do
    {
      v7 = v6--;
      *(v3 + 40) = v6;
      if (v7 <= 0)
      {
        if (*(a1 + 572))
        {
          v8 = 0;
        }

        else
        {
          byte = get_byte(a1);
          if (byte == 255)
          {
            do
            {
              v10 = get_byte(a1);
            }

            while (v10 == 255);
            if (v10)
            {
              v11 = v10;
              byte = 0;
              *(a1 + 572) = v11;
            }

            else
            {
              byte = 255;
            }
          }

          v6 = *(v3 + 40);
          v8 = byte;
        }

        *(v3 + 24) = v8 | (*(v3 + 24) << 8);
        *(v3 + 40) = v6 + 8;
        v14 = v6 + 9;
        v12 = v6 == -9;
        v13 = v6 <= -9;
        v6 += 8;
        if (v13)
        {
          *(v3 + 40) = v14;
          v6 = v14;
          if (v12)
          {
            v6 = 0;
            *(v3 + 32) = 0x8000;
          }
        }
      }

      v4 = 2 * *(v3 + 32);
      *(v3 + 32) = v4;
    }

    while (v4 < 0x8000);
  }

  v15 = *a2;
  v16 = jpeg_aritab[v15 & 0x7F];
  v17 = v16 >> 16;
  v18 = v4 - (v16 >> 16);
  *(v3 + 32) = v18;
  v19 = v18 << v6;
  v20 = *(v3 + 24);
  v21 = __OFSUB__(v20, v19);
  v22 = v20 - v19;
  if (v22 < 0 == v21)
  {
    *(v3 + 24) = v22;
    *(v3 + 32) = v17;
    v23 = v15 & 0x80;
    if (v18 >= v17)
    {
      goto LABEL_26;
    }

LABEL_24:
    *a2 = v23 ^ BYTE1(v16);
    return v15 >> 7;
  }

  if (v18 < 0x8000)
  {
    v23 = v15 & 0x80;
    if (v18 < v17)
    {
LABEL_26:
      *a2 = v23 ^ v16;
      v15 ^= 0x80u;
      return v15 >> 7;
    }

    goto LABEL_24;
  }

  return v15 >> 7;
}

uint64_t get_byte(uint64_t *a1)
{
  v1 = a1[5];
  if (!v1[1] && !(v1[3])())
  {
    v3 = *a1;
    *(v3 + 40) = 25;
    (*v3)(a1);
  }

  v4 = *v1;
  v5 = (v1[1] - 1);
  ++*v1;
  v1[1] = v5;
  return *v4;
}

void IIO_WriterHandler::~IIO_WriterHandler(IIO_WriterHandler *this)
{
  *this = &unk_1EF4D8B40;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1EF4D8B40;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x186602850);
}

CFMutableArrayRef IIO_WriterHandler::copyImageFormats(IIO_WriterHandler *this, const __CFString *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  for (i = *(this + 1); i != *(this + 2); ++i)
  {
    v6 = IIO_Writer::utType(*i);
    if (CFStringCompare(v6, a2, 0) == kCFCompareEqualTo)
    {
      (*(**i + 32))(*i, Mutable);
      return Mutable;
    }
  }

  return Mutable;
}

void std::vector<IIO_Writer *>::push_back[abi:fe200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void png_set_cHRM_fixed(void (**a1)(void), uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10)
{
  if (a1 && a2)
  {
    v13[0] = a5;
    v13[1] = a6;
    v13[2] = a7;
    v13[3] = a8;
    v13[4] = a9;
    v13[5] = a10;
    v13[6] = a3;
    v13[7] = a4;
    v11 = a2 + 60;
    if (a2 + 60 > (a2 + 136))
    {
      __break(0x5519u);
    }

    else
    {
      if (png_colorspace_set_chromaticities(a1, v11, v13, 2))
      {
        *(a2 + 134) |= 0x10u;
      }

      png_colorspace_sync_info(a1, a2);
    }
  }
}

void _cg_png_set_cHRM(void (**a1)(void), uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = png_fixed(a1, "cHRM White X", a3);
  v20 = png_fixed(a1, "cHRM White Y", a4);
  v21 = png_fixed(a1, "cHRM Red X", a5);
  v22 = png_fixed(a1, "cHRM Red Y", a6);
  v23 = png_fixed(a1, "cHRM Green X", a7);
  v24 = png_fixed(a1, "cHRM Green Y", a8);
  v25 = png_fixed(a1, "cHRM Blue X", a9);
  v26 = png_fixed(a1, "cHRM Blue Y", a10);
  png_set_cHRM_fixed(a1, a2, v19, v20, v21, v22, v23, v24, v25, v26);
}

void png_set_gAMA_fixed(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    v4 = a2 + 60;
    if (a2 + 60 > (a2 + 136))
    {
      __break(0x5519u);
    }

    else
    {
      png_colorspace_set_gamma(a1, v4, a3);

      png_colorspace_sync_info(a1, a2);
    }
  }
}

void _cg_png_set_gAMA(void (**a1)(void), uint64_t a2, double a3)
{
  v5 = png_fixed(a1, "png_set_gAMA", a3);

  png_set_gAMA_fixed(a1, a2, v5);
}

char *png_set_hIST(char *result, uint64_t a2, unint64_t a3)
{
  if (!result || !a2)
  {
    return result;
  }

  v4 = result;
  if (*(a2 + 40) - 257 <= 0xFFFFFEFF)
  {
    v5 = "Invalid palette size, hIST allocation skipped";
LABEL_28:

    return png_warning(v4, v5);
  }

  png_free_data(result, a2, 8u, 0);
  result = png_malloc_warn(v4, 512);
  v7 = result + 512;
  if (!result)
  {
    v7 = 0;
  }

  *(a2 + 288) = result;
  *(a2 + 296) = v7;
  if (!result)
  {
    v5 = "Insufficient memory for hIST chunk data";
    goto LABEL_28;
  }

  if (*(a2 + 40))
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = (a3 + v8);
      v11 = a3 + v8 + 2;
      v12 = a3 + v8 < a3 || v11 > a3 + 512;
      if (v12 || v10 > v11)
      {
        break;
      }

      v14 = *(a2 + 288);
      v15 = (v14 + v8);
      v16 = v14 + v8 + 2;
      v17 = v14 + v8 < v14 || v16 > v7;
      if (v17 || v15 > v16)
      {
        break;
      }

      *v15 = *v10;
      ++v9;
      v8 += 2;
      if (v9 >= *(a2 + 40))
      {
        goto LABEL_25;
      }
    }

    __break(0x5519u);
  }

  else
  {
LABEL_25:
    *(a2 + 340) |= 8u;
    *(a2 + 8) |= 0x40u;
  }

  return result;
}

uint64_t png_set_oFFs(uint64_t result, uint64_t a2, int a3, int a4, char a5)
{
  if (result)
  {
    if (a2)
    {
      *(a2 + 236) = a3;
      *(a2 + 240) = a4;
      *(a2 + 244) = a5;
      *(a2 + 8) |= 0x100u;
    }
  }

  return result;
}

void png_set_pCAL_sized(void *a1, uint64_t a2, char *__s, int a4, int a5, unsigned int a6, int a7, int a8, const char *a9, unint64_t a10, const char **a11)
{
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  if (!__s)
  {
    return;
  }

  if (!a9)
  {
    return;
  }

  v17 = a1;
  if (a7 >= 1 && !a11)
  {
    return;
  }

  v18 = strlen(__s);
  if (a6 >= 4)
  {
    v19 = "Invalid pCAL equation type";
LABEL_12:
    v20 = v17;
LABEL_13:

    png_chunk_report(v20, v19, 1);
    return;
  }

  if (a7 > 0xFF)
  {
    v19 = "Invalid pCAL parameter count";
    goto LABEL_12;
  }

  v61 = v18;
  v63 = a2;
  v64 = v17;
  v62 = a7;
  if (a7)
  {
    v21 = a7;
    v22 = a11;
    while (1)
    {
      v23 = *v22;
      if (!*v22)
      {
        break;
      }

      v24 = strlen(*v22);
      v25 = strlen(v23);
      if (!png_check_fp_string(v23, &v23[v24], v25))
      {
        break;
      }

      ++v22;
      if (!--v21)
      {
        goto LABEL_21;
      }
    }

    v19 = "Invalid format for pCAL parameter";
    v20 = v64;
    goto LABEL_13;
  }

LABEL_21:
  v26 = v61 + 1;
  v17 = v64;
  v27 = png_malloc_warn(v64, v61 + 1);
  if (!v27)
  {
    v19 = "Insufficient memory for pCAL purpose";
    goto LABEL_12;
  }

  if ((v26 & 0x8000000000000000) != 0 || (v28 = v27, strlcpy(v27, __s, v26), v29 = &v28[v61], v28 > &v28[v61]) || v29 + 1 < v29 || v29 + 1 > &v28[v26] || *v29 || (*(v63 + 304) = v28, *(v63 + 340) |= 0x80u, *(v63 + 312) = a4, *(v63 + 316) = a5, *(v63 + 336) = a6, a10 <= a9))
  {
LABEL_76:
    __break(0x5519u);
    return;
  }

  v30 = (a9 + 1);
  do
  {
    if (v30 > a10)
    {
      goto LABEL_76;
    }
  }

  while (*(v30++ - 1));
  v32 = strlen(a9);
  v33 = v32 + 1;
  v34 = png_malloc_warn(v64, v32 + 1);
  if (v34)
  {
    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    if (v33 > a10 - a9)
    {
      goto LABEL_76;
    }

    v35 = v34;
    memcpy(v34, a9, v33);
    if (v35 > &v35[v33] || v32 > 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_76;
    }

    v36 = v35 + 1;
    do
    {
      if (&v35[v33] < v36)
      {
        goto LABEL_76;
      }
    }

    while (*(v36++ - 1));
    *(v63 + 320) = v35;
    v38 = 8 * v62;
    v39 = png_malloc_warn(v64, v38);
    v40 = &v39[v38];
    if (!v39)
    {
      v40 = 0;
    }

    if (v39 > v40)
    {
      goto LABEL_76;
    }

    v41 = v39;
    if (v62 > (v40 - v39) >> 3)
    {
      goto LABEL_76;
    }

    *(v63 + 328) = v39;
    *(v63 + 337) = v62;
    if (v39)
    {
      bzero(v39, v38);
      v42 = v64;
      if (v41 > &v41[v38])
      {
        goto LABEL_76;
      }

      v43 = a11;
      if (!v62)
      {
LABEL_66:
        *(v63 + 8) |= 0x400u;
        return;
      }

      v44 = 0;
LABEL_47:
      v45 = strlen(*(v43 + 8 * v44));
      v46 = v45 + 1;
      v47 = png_malloc_warn(v42, v45 + 1);
      if (v47)
      {
        v48 = v47;
        v49 = *(v43 + 8 * v44);
        v50 = strlen(v49);
        if ((v46 & 0x8000000000000000) == 0 && v49 <= &v49[v50 + 1] && v46 <= v50 + 1)
        {
          memcpy(v48, v49, v46);
          if (v48 <= &v48[v46] && v45 <= 0x7FFFFFFFFFFFFFFELL)
          {
            v52 = v48 + 1;
            while (&v48[v46] >= v52)
            {
              if (!*(v52++ - 1))
              {
                v54 = *(v63 + 328);
                v55 = (v54 + 8 * v44);
                v56 = v55 + 1;
                if (v55 < v54 || v56 > v54 + 8 * *(v63 + 337) || v55 >= v56)
                {
                  goto LABEL_76;
                }

                *v55 = v48;
                ++v44;
                v42 = v64;
                v43 = a11;
                if (v44 != v62)
                {
                  goto LABEL_47;
                }

                goto LABEL_66;
              }
            }
          }
        }

        goto LABEL_76;
      }

      v59 = "Insufficient memory for pCAL parameter";
    }

    else
    {
      v59 = "Insufficient memory for pCAL params";
    }

    v60 = v64;
    goto LABEL_73;
  }

  v59 = "Insufficient memory for pCAL units";
  v60 = v64;
LABEL_73:

  png_warning(v60, v59);
}

void (**png_set_sCAL_sized(void (**result)(void), uint64_t a2, int a3, char *__s, unint64_t a5, const char *a6, unint64_t a7))(void)
{
  if (!result || !a2)
  {
    return result;
  }

  v8 = a3;
  v9 = result;
  if ((a3 - 3) <= 0xFFFFFFFD)
  {
    v34 = "Invalid sCAL unit";
LABEL_46:
    _cg_png_error(v9, v34);
  }

  if (!__s)
  {
LABEL_43:
    v34 = "Invalid sCAL width";
    goto LABEL_46;
  }

  v12 = a5 - __s;
  if (a5 <= __s)
  {
    goto LABEL_42;
  }

  v15 = __s + 1;
  do
  {
    if (v15 > a5)
    {
      goto LABEL_42;
    }
  }

  while (*(v15++ - 1));
  v17 = strlen(__s);
  if (!v17)
  {
    goto LABEL_43;
  }

  if (*__s == 45)
  {
    goto LABEL_43;
  }

  v18 = v17;
  if (!png_check_fp_string(__s, a5, v17))
  {
    goto LABEL_43;
  }

  if (!a6)
  {
    goto LABEL_44;
  }

  v19 = a7 - a6;
  if (a7 <= a6)
  {
LABEL_42:
    __break(0x5519u);
    goto LABEL_43;
  }

  v20 = a6 + 1;
  do
  {
    if (v20 > a7)
    {
      goto LABEL_42;
    }
  }

  while (*(v20++ - 1));
  v22 = strlen(a6);
  if (!v22 || *a6 == 45 || (v23 = v22, !png_check_fp_string(a6, a7, v22)))
  {
LABEL_44:
    v34 = "Invalid sCAL height";
    goto LABEL_46;
  }

  *(a2 + 372) = v8;
  v24 = v18 + 1;
  v25 = png_malloc_warn(v9, v18 + 1);
  if (!v25)
  {
LABEL_39:

    return png_warning(v9, "Memory allocation failed while processing sCAL");
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  if (v24 > v12)
  {
    goto LABEL_42;
  }

  v26 = v25;
  memcpy(v25, __s, v18 + 1);
  if (v26 > &v26[v24] || v18 > 0x7FFFFFFFFFFFFFFELL)
  {
    goto LABEL_42;
  }

  v27 = v26 + 1;
  do
  {
    if (&v26[v24] < v27)
    {
      goto LABEL_42;
    }
  }

  while (*(v27++ - 1));
  *(a2 + 376) = v26;
  v29 = v23 + 1;
  v30 = png_malloc_warn(v9, v23 + 1);
  if (!v30)
  {
    png_free(v9, v26);
    *(a2 + 376) = 0;
    goto LABEL_39;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

  if (v29 > v19)
  {
    goto LABEL_42;
  }

  v31 = v30;
  result = memcpy(v30, a6, v23 + 1);
  if (v31 > &v31[v29] || v23 > 0x7FFFFFFFFFFFFFFELL)
  {
    goto LABEL_42;
  }

  v32 = v31 + 1;
  do
  {
    if (&v31[v29] < v32)
    {
      goto LABEL_42;
    }
  }

  while (*(v32++ - 1));
  *(a2 + 384) = v31;
  *(a2 + 340) |= 0x100u;
  *(a2 + 8) |= 0x4000u;
  return result;
}

void _cg_png_set_PLTE(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (!a1 || !a2)
  {
    return;
  }

  if (*(a2 + 45) == 3)
  {
    if ((a4 & 0x80000000) != 0 || 1 << *(a2 + 44) < a4)
    {
      v7 = "Invalid palette length";
      goto LABEL_23;
    }
  }

  else if (a4 > 0x100)
  {

    png_warning(a1, "Invalid palette length");
    return;
  }

  if (!a3 && a4 || !a4 && (*(a1 + 912) & 1) == 0)
  {
    v7 = "Invalid palette";
LABEL_23:
    _cg_png_error(a1, v7);
  }

  png_free_data(a1, a2, 0x1000u, 0);
  png_calloc(a1, 0x300uLL);
  v9 = v8 + 768;
  if (!v8)
  {
    v9 = 0;
  }

  *(a1 + 400) = v8;
  *(a1 + 408) = v9;
  if (a4 && ((v10 = 3 * a4, v10 > v9 - v8) || (v11 = __memcpy_chk(), v11 > v11 + v10)))
  {
    __break(0x5519u);
  }

  else
  {
    *(a2 + 24) = *(a1 + 400);
    *(a1 + 416) = a4;
    *(a2 + 40) = a4;
    *(a2 + 340) |= 0x1000u;
    *(a2 + 8) |= 8u;
  }
}

uint64_t png_set_sBIT(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && a2)
  {
    if (a3)
    {
      *(a2 + 192) = *a3;
      *(a2 + 196) = *(a3 + 4);
      *(a2 + 8) |= 2u;
    }
  }

  return result;
}

void _cg_png_set_text(void (**a1)(void), uint64_t a2, uint64_t a3, signed int a4)
{
  if (a4 < 0)
  {
    __break(0x5519u);
LABEL_5:
    _cg_png_error(v4, "Insufficient memory to store text");
  }

  v4 = a1;
  png_set_text_2(a1, a2, a3, a4);
  if (v5)
  {
    goto LABEL_5;
  }
}

void _cg_png_set_tRNS(uint64_t a1, uint64_t a2, uint64_t a3, signed int a4, uint64_t a5)
{
  if (a1 && a2)
  {
    if (a3)
    {
      png_free_data(a1, a2, 0x2000u, 0);
      if ((a4 - 1) <= 0xFF)
      {
        v9 = png_malloc(a1, 256);
        v10 = v9 + 32;
        if (!v9)
        {
          v10 = 0;
        }

        *(a2 + 200) = v9;
        *(a2 + 208) = v10;
        if (v10 - v9 < a4 || (v11 = __memcpy_chk(), v11 > v11 + a4))
        {
          __break(0x5519u);
          return;
        }

        *(a2 + 340) |= 0x2000u;
        *(a2 + 8) |= 0x10u;
      }

      *(a1 + 608) = *(a2 + 200);
    }

    if (!a5)
    {
      *(a2 + 42) = a4;
      if (!a4)
      {
        return;
      }

      goto LABEL_27;
    }

    v12 = *(a2 + 44);
    if (v12 <= 0xF)
    {
      v13 = ~(-1 << v12);
      if (*(a2 + 45) == 2)
      {
        if (*(a5 + 2) > v13 || *(a5 + 4) > v13)
        {
LABEL_22:
          png_warning(a1, "tRNS chunk has out-of-range samples for bit_depth");
          goto LABEL_23;
        }

        v14 = *(a5 + 6);
LABEL_16:
        if (v14 <= v13)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      if (!*(a2 + 45))
      {
        v14 = *(a5 + 8);
        goto LABEL_16;
      }
    }

LABEL_23:
    *(a2 + 216) = *a5;
    *(a2 + 224) = *(a5 + 8);
    if (a4 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = a4;
    }

    *(a2 + 42) = v15;
LABEL_27:
    *(a2 + 340) |= 0x2000u;
    *(a2 + 8) |= 0x10u;
  }
}

void png_set_sPLT(void (**a1)(void), uint64_t a2, unint64_t a3, signed int a4)
{
  if (a3)
  {
    if (a1)
    {
      if (a2)
      {
        v6 = a4;
        if (a4 >= 1)
        {
          v38 = *(a2 + 368);
          v8 = png_realloc_array(a1, *(a2 + 360), *(a2 + 360) + 40 * v38, v38, a4, 0x28uLL);
          if (v8)
          {
            v10 = v8;
            v11 = v9;
            png_free(a1, *(a2 + 360));
            v37 = v11;
            if (v11 >= v10)
            {
              v12 = v38 + v6;
              if (((v38 + v6) & 0x80000000) == 0 && (0xCCCCCCCCCCCCCCCDLL * ((v11 - v10) >> 3)) >= v12)
              {
                v39 = a3 + 40 * v6;
                *(a2 + 360) = v10;
                *(a2 + 368) = v12;
                *(a2 + 340) |= 0x20u;
                v13 = &v10[5 * v38];
                v14 = a3;
                do
                {
                  if (v14 < a3 || v14 + 40 > v39)
                  {
                    goto LABEL_52;
                  }

                  v15 = *v14;
                  if (*v14 && *(v14 + 24))
                  {
                    if (v13 < v10)
                    {
                      goto LABEL_52;
                    }

                    v16 = v13 + 5;
                    if ((v13 + 5) > v37)
                    {
                      goto LABEL_52;
                    }

                    v17 = *(v14 + 8);
                    *(v13 + 16) = *(v14 + 16);
                    if (!v17)
                    {
                      goto LABEL_52;
                    }

                    v18 = &v15[v17];
                    v19 = v15 + 1;
                    do
                    {
                      if (v19 > v18)
                      {
                        goto LABEL_52;
                      }
                    }

                    while (*(v19++ - 1));
                    v21 = strlen(v15) + 1;
                    v22 = malloc_type_malloc(v21, 0x4DBF2305uLL);
                    v23 = &v22[v21];
                    if (!v22)
                    {
                      v23 = 0;
                    }

                    v24 = v23 >= v22;
                    v25 = v23 - v22;
                    if (!v24 || v21 > v25)
                    {
                      goto LABEL_52;
                    }

                    v27 = v22;
                    *v13 = v22;
                    v13[1] = v21;
                    if (v22)
                    {
                      if (v21 > *(v14 + 8))
                      {
                        goto LABEL_52;
                      }

                      memcpy(v22, *v14, v21);
                      if (v27 > &v27[v21])
                      {
                        goto LABEL_52;
                      }

                      v28 = *(v14 + 32);
                      v29 = png_malloc_array(a1, v28, 0xAuLL);
                      v30 = v29 ? v29 + 10 * v28 : 0;
                      v31 = *(v14 + 32);
                      if (v31 < 0)
                      {
                        goto LABEL_52;
                      }

                      v32 = v29;
                      v33 = v31;
                      if ((0xCCCCCCCCCCCCCCCDLL * ((v30 - v29) >> 1)) < v31)
                      {
                        goto LABEL_52;
                      }

                      v13[3] = v29;
                      *(v13 + 8) = v31;
                      if (v29)
                      {
                        v34 = *(v14 + 32);
                        if ((v34 & 0x80000000) == 0 && v34 <= v33)
                        {
                          v35 = 5 * v34;
                          memcpy(v29, *(v14 + 24), 10 * v34);
                          if (v32 <= v32 + 2 * v35)
                          {
                            *(a2 + 8) |= 0x2000u;
                            ++v38;
                            v14 += 40;
                            v13 = v16;
                            goto LABEL_40;
                          }
                        }

                        goto LABEL_52;
                      }

                      png_free(a1, *v13);
                      *v13 = 0;
                      v13[1] = 0;
                    }

                    if (v6 >= 1)
                    {
                      png_chunk_report(a1, "sPLT out of memory", 1);
                    }

                    break;
                  }

                  png_app_error(a1, "png_set_sPLT: invalid sPLT");
LABEL_40:
                  --v6;
                }

                while (v6);
                v36 = *(a2 + 368);
                if ((v36 & 0x80000000) == 0 && v38 <= v36)
                {
                  *(a2 + 368) = v38;
                  return;
                }
              }
            }

LABEL_52:
            __break(0x5519u);
            return;
          }

          png_chunk_report(a1, "too many sPLT chunks", 1);
        }
      }
    }
  }
}

uint64_t _cg_png_set_acTL(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  if (a1 && a2)
  {
    if (a3)
    {
      if (a3 < 0)
      {
        v5 = "Ignoring attempt to set acTL with num_frames > 2^31-1";
      }

      else
      {
        if ((a4 & 0x80000000) == 0)
        {
          a2[102] = a3;
          a2[103] = a4;
          a2[2] |= 0x20000u;
          return 1;
        }

        v5 = "Ignoring attempt to set acTL with num_plays > 2^31-1";
      }
    }

    else
    {
      v5 = "Ignoring attempt to set acTL with num_frames zero";
    }
  }

  else
  {
    v5 = "Call to png_set_acTL() with NULL png_ptr or info_ptr ignored";
  }

  png_warning(a1, v5);
  return 0;
}

uint64_t png_set_next_frame_fcTL(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, __int16 a7, __int16 a8, unsigned __int8 a9, unsigned __int8 a10)
{
  if (a1 && a2)
  {
    v18 = a10;
    png_ensure_fcTL_is_valid(a1, a3, a4, a5, a6, 0, 0, a9, a10);
    if (a10 == 1)
    {
      if ((*(a1 + 431) & 4) != 0 || _cg_png_get_valid(a1, a2, 0x10u))
      {
        v18 = 1;
      }

      else
      {
        png_warning(a1, "PNG_BLEND_OP_OVER is meaningless and wasteful for opaque images, ignored");
        v18 = 0;
      }
    }

    *(a2 + 416) = a3;
    *(a2 + 420) = a4;
    *(a2 + 424) = a5;
    *(a2 + 428) = a6;
    *(a2 + 432) = a7;
    *(a2 + 434) = a8;
    *(a2 + 436) = a9;
    *(a2 + 437) = v18;
    *(a2 + 8) |= 0x40000u;
    return 1;
  }

  else
  {
    png_warning(a1, "Call to png_set_fcTL() with NULL png_ptr or info_ptr ignored");
    return 0;
  }
}

uint64_t png_ensure_fcTL_is_valid(uint64_t result, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned __int8 a9)
{
  if (a2 <= 0)
  {
    _cg_png_error(result, "invalid width in fcTL (> 2^31-1)");
  }

  if (a3 <= 0)
  {
    _cg_png_error(result, "invalid height in fcTL (> 2^31-1)");
  }

  if (a4 < 0)
  {
    _cg_png_error(result, "invalid x_offset in fcTL (> 2^31-1)");
  }

  if (a5 < 0)
  {
    _cg_png_error(result, "invalid y_offset in fcTL (> 2^31-1)");
  }

  if ((a4 + a2) > *(result + 928) || (a5 + a3) > *(result + 932))
  {
    _cg_png_error(result, "dimensions of a frame are greater thanthe ones in IHDR");
  }

  if (a8 >= 3)
  {
    _cg_png_error(result, "invalid dispose_op in fcTL");
  }

  if (a9 >= 2u)
  {
    _cg_png_error(result, "invalid blend_op in fcTL");
  }

  return result;
}

uint64_t _cg_png_set_num_frames_read(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    *(result + 936) = a3;
  }

  return result;
}

uint64_t _cg_png_set_next_seq_num(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    *(result + 924) = a3;
  }

  return result;
}

void _cg_png_set_keep_unknown_chunks(uint64_t a1, unsigned int a2, const char *a3, int a4)
{
  if (a4 < 0 || &a3[5 * a4] < a3)
  {
    __break(0x5519u);
  }

  else
  {
    _cg_png_set_keep_unknown_chunks_sized(a1, a2, a3, a4);
  }
}

void png_set_rows_sized(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a1 && a2)
  {
    v7 = *(a2 + 392);
    if (v7)
    {
      v8 = v7 == a3;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      png_free_data(a1, a2, 0x40u, 0);
    }

    *(a2 + 392) = a3;
    *(a2 + 400) = a3 + 8 * a4;
    if (a3)
    {
      *(a2 + 8) |= 0x8000u;
    }
  }
}

void png_set_rows(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 4);
  if (a3 + 8 * v3 < a3)
  {
    __break(0x5519u);
  }

  else
  {
    png_set_rows_sized(a1, a2, a3, v3);
  }
}

void IIO_Writer_GIF::~IIO_Writer_GIF(IIO_Writer_GIF *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Writer_GIF::write(IIO_Writer_GIF *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "IIO_Writer_GIF::write", 0, 0, -1, 0);
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  GIFWritePlugin::GIFWritePlugin(v7, a2, a3);
  v5 = GIFWritePlugin::writeAll(v7);
  GIFWritePlugin::~GIFWritePlugin(v7);
  return v5;
}

void sub_186014434(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  GIFWritePlugin::~GIFWritePlugin(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186014420);
}

void PDFWritePlugin::PDFWritePlugin(PDFWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3)
{
  IIOWritePlugin::IIOWritePlugin(this, a2, a3, 1346651680);
  *v3 = &unk_1EF4D8C00;
  v3[6] = 0;
  v3[7] = 0;
  v3[5] = 0;
}

void PDFWritePlugin::~PDFWritePlugin(PDFWritePlugin *this, uint64_t a2, const char *a3)
{
  *this = &unk_1EF4D8C00;
  v4 = *(this + 6);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    CFRelease(v6);
  }

  _cg_jpeg_mem_term(this, a2, a3);
}

{
  PDFWritePlugin::~PDFWritePlugin(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t PDFWritePlugin::writeOneImage(CGContextRef *this, CGImageRef image, IIODictionary *a3, IIODictionary *a4)
{
  mediaBox.origin.x = 0.0;
  mediaBox.origin.y = 0.0;
  if (this[6])
  {
    Width = CGImageGetWidth(image);
    mediaBox.size.width = Width;
    Height = CGImageGetHeight(image);
    v10 = Height;
    mediaBox.size.height = Height;
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    mediaBox.size: %g x %g\n", Width, Height);
    }

    if (IIODictionary::containsKey(a3, @"DPIHeight"))
    {
      if (IIODictionary::containsKey(a3, @"DPIWidth"))
      {
        FloatForKey = IIODictionary::getFloatForKey(a3, @"DPIWidth");
        v12 = v10 / IIODictionary::getFloatForKey(a3, @"DPIHeight") * 72.0;
        mediaBox.size.width = Width / FloatForKey * 72.0;
        mediaBox.size.height = v12;
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    mediaBox.size: %g x %g\n", Width / FloatForKey * 72.0, v12);
        }
      }
    }

    CGContextBeginPage(this[6], &mediaBox);
    memset(v18, 0, sizeof(v18));
    IIODictionary::IIODictionary(v18);
    if (IIODictionary::containsKey(a4, @"kCGImageDestinationLossyCompressionQuality"))
    {
      v13 = IIODictionary::getFloatForKey(a4, @"kCGImageDestinationLossyCompressionQuality");
      if (v13 > 1.0 || v13 < 0.0)
      {
        v15 = 0.8;
      }

      else
      {
        v15 = v13;
      }
    }

    else
    {
      v15 = 0.8;
    }

    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    qualityVal: %g\n", v15);
    }

    IIONumber::IIONumber(v17, v15);
    IIODictionary::setObjectForKey(v18, v17, @"kCGImageDestinationLossyCompressionQuality");
    IIONumber::~IIONumber(v17);
    if ((CGContextDrawImageWithOptions() & 1) == 0)
    {
      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("    CGContextDrawImageWithOptions failed -- falling back to CGContextDrawImage\n");
      }

      CGContextDrawImage(this[6], mediaBox, image);
    }

    IIODictionary::~IIODictionary(v18);
    CGContextEndPage(this[6]);
  }

  else
  {
    PDFWritePlugin::writeOneImage();
  }

  return 0;
}

void sub_1860147A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

CGContextRef PDFWritePlugin::setup(PDFWritePlugin *this)
{
  v4 = xmmword_1EF4D8C38;
  *(this + 7) = 0;
  v2 = CGDataConsumerCreate(*(this + 2), &v4);
  *(this + 5) = v2;
  result = CGPDFContextCreate(v2, 0, *(this + 7));
  *(this + 6) = result;
  return result;
}

const __CFDictionary *CopyOrientationFromParams(IIODictionary *a1, _WORD *a2)
{
  result = IIODictionary::containsKey(a1, @"kCGImageCopyFileSetOrientation");
  if (result)
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(a1, @"kCGImageCopyFileSetOrientation");
    if (a2)
    {
      if (Uint32ForKey - 9 >= 0xFFFFFFF8)
      {
        v6 = Uint32ForKey;
      }

      else
      {
        v6 = 0;
      }

      *a2 = v6;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}