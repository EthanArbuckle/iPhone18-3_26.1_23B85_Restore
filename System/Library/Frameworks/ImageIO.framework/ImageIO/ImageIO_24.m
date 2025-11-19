uint64_t _TIFFCheckDirNumberAndOffset(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = *(a1 + 48);
  if (!v6)
  {
    v6 = TIFFHashSetNew(hashFuncOffsetToNumber, equalFuncOffsetToNumber, MEMORY[0x1E69E9B38]);
    *(a1 + 48) = v6;
    if (!v6)
    {
      goto LABEL_21;
    }
  }

  if (*(a1 + 56))
  {
    goto LABEL_7;
  }

  v12 = TIFFHashSetNew(hashFuncNumberToOffset, equalFuncNumberToOffset, 0);
  *(a1 + 56) = v12;
  if (!v12)
  {
LABEL_21:
    TIFFErrorExtR(a1, "_TIFFCheckDirNumberAndOffset", "Not enough memory", v7, v8, v9, v10, v11, v38);
    return 1;
  }

  v6 = *(a1 + 48);
LABEL_7:
  *&v40 = a3;
  *(&v40 + 1) = a2;
  v13 = TIFFHashSetLookup(v6, &v40);
  if (!v13)
  {
    v20 = TIFFHashSetLookup(*(a1 + 56), &v40);
    if (v20)
    {
      if (*v20 == a3)
      {
        return 1;
      }

      v39[0] = *v20;
      v39[1] = a2;
      v21 = TIFFHashSetLookup(*(a1 + 56), v39);
      if (v21)
      {
        TIFFHashSetRemove(*(a1 + 56), v21);
      }

      v22 = TIFFHashSetLookup(*(a1 + 48), v39);
      if (v22)
      {
        TIFFHashSetRemove(*(a1 + 48), v22);
      }

      v23 = malloc_type_malloc(0x10uLL, 0x1000040D9A13B51uLL);
      if (!v23)
      {
        return 0;
      }

      v24 = v23;
      *v23 = v40;
      if (TIFFHashSetInsert(*(a1 + 48), v23))
      {
        if (TIFFHashSetInsert(*(a1 + 56), v24))
        {
          return 1;
        }

        v30 = "Insertion in tif_map_dir_number_to_offset failed";
      }

      else
      {
        v30 = "Insertion in tif_map_dir_offset_to_number failed";
      }
    }

    else
    {
      if (TIFFHashSetSize(*(a1 + 48)) >= 0x100000)
      {
        TIFFErrorExtR(a1, "_TIFFCheckDirNumberAndOffset", "Cannot handle more than %u TIFF directories", v31, v32, v33, v34, v35, 0);
        return 0;
      }

      v36 = malloc_type_malloc(0x10uLL, 0x1000040D9A13B51uLL);
      if (v36)
      {
        v37 = v36;
        *v36 = v40;
        if (TIFFHashSetInsert(*(a1 + 48), v36))
        {
          if (TIFFHashSetInsert(*(a1 + 56), v37))
          {
            return 1;
          }

          v30 = "Insertion in tif_map_dir_number_to_offset failed";
        }

        else
        {
          v30 = "Insertion in tif_map_dir_offset_to_number failed";
        }
      }

      else
      {
        v30 = "malloc(sizeof(TIFFOffsetAndDirNumber)) failed";
      }
    }

    TIFFErrorExtR(a1, "_TIFFCheckDirNumberAndOffset", v30, v25, v26, v27, v28, v29, v38);
    return 0;
  }

  if (*(v13 + 2) == a2)
  {
    return 1;
  }

  TIFFWarningExtR(a1, "_TIFFCheckDirNumberAndOffset", "TIFF directory %d has IFD looping to directory %u at offset 0x%llx (%llu)", v14, v15, v16, v17, v18, a2 - 1);
  return 0;
}

char *TIFFFetchDirectory(uint64_t a1, uint64_t a2, void *a3, int8x8_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    TIFFFetchDirectory_cold_1();
  }

  *(a1 + 24) = a2;
  if (a4)
  {
    *a4 = 0;
  }

  __dst = 0;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  if ((v11 & 0x800) == 0)
  {
    if (_TIFFSeekOK(a1, v12))
    {
      if ((*(a1 + 18) & 8) != 0)
      {
        v52 = 0;
        if ((*(a1 + 1208))(*(a1 + 1200), &v52, 8) == 8)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(&v52);
          }

          v18 = v52.i16[0];
          if (*&v52 <= 0x1000uLL)
          {
            __dst = v52.i16[0];
            v19 = 20;
            goto LABEL_26;
          }

          goto LABEL_43;
        }
      }

      else if ((*(a1 + 1208))(*(a1 + 1200), &__dst, 2) == 2)
      {
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(&__dst);
        }

        v18 = __dst;
        if (__dst <= 0x1000u)
        {
          v19 = 12;
LABEL_26:
          result = _TIFFCheckMalloc(a1, v18, v19, "to read TIFF directory", a5, a6, a7, a8);
          if (!result)
          {
            return result;
          }

          v24 = result;
          v25 = (*(a1 + 1208))(*(a1 + 1200), result, v19 * __dst);
          if (v25 == v19 * __dst)
          {
            if (!a4)
            {
              goto LABEL_67;
            }

            if ((*(a1 + 18) & 8) == 0)
            {
              v52.i32[0] = 0;
              if ((*(a1 + 1208))(*(a1 + 1200), &v52, 4) != 4)
              {
                v52.i32[0] = 0;
              }

              LOBYTE(v32) = *(a1 + 16);
LABEL_33:
              if ((v32 & 0x80) != 0)
              {
                TIFFSwabLong(&v52, v31);
              }

              *a4 = v52.u32[0];
              goto LABEL_67;
            }

            if ((*(a1 + 1208))(*(a1 + 1200), a4, 8) != 8)
            {
              *a4 = 0;
            }

            LOBYTE(v32) = *(a1 + 16);
            goto LABEL_60;
          }

          v51 = *a1;
          v34 = "%.100s: Can not read TIFF directory";
LABEL_48:
          TIFFErrorExtR(a1, "TIFFFetchDirectory", v34, v26, v27, v28, v29, v30, v51);
LABEL_83:
          free(v24);
          return 0;
        }

        goto LABEL_43;
      }

      TIFFErrorExtR(a1, "TIFFFetchDirectory", "%s: Can not read TIFF directory count", a4, a5, a6, a7, a8, *a1);
    }

    else
    {
      TIFFErrorExtR(a1, "TIFFFetchDirectory", "%s: Seek error accessing TIFF directory", v13, v14, v15, v16, v17, *a1);
    }

    return 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  if ((v11 & 0x80000) == 0)
  {
    if (v12 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      v20 = v12 + 2;
      if ((v12 + 2) <= *(a1 + 1176))
      {
        _TIFFmemcpy(&__dst, (*(a1 + 1168) + v12), 2uLL);
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(&__dst);
        }

        v21 = __dst;
        if (__dst <= 0x1000u)
        {
          v22 = 12;
          goto LABEL_50;
        }

LABEL_43:
        v33 = "Sanity check on directory count failed, this is probably not a valid IFD offset";
        goto LABEL_44;
      }
    }

LABEL_38:
    v33 = "Can not read TIFF directory count";
LABEL_44:
    TIFFErrorExtR(a1, "TIFFFetchDirectory", v33, a4, a5, a6, a7, a8, v51);
    return 0;
  }

  v52 = 0;
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_38;
  }

  v20 = v12 + 8;
  if ((v12 + 8) > *(a1 + 1176))
  {
    goto LABEL_38;
  }

  _TIFFmemcpy(&v52, (*(a1 + 1168) + v12), 8uLL);
  if ((*(a1 + 16) & 0x80) != 0)
  {
    TIFFSwabLong8(&v52);
  }

  if (*&v52 > 0x1000uLL)
  {
    goto LABEL_43;
  }

  v21 = v52.u16[0];
  __dst = v52.i16[0];
  v22 = 20;
LABEL_50:
  if (!v21)
  {
    v33 = "Sanity check on directory count failed, zero tag directories not supported";
    goto LABEL_44;
  }

  v35 = (*(a1 + 1240))(*(a1 + 1200));
  if (__dst * v22 > v35)
  {
    TIFFWarningExtR(a1, "TIFFFetchDirectory", "Requested memory size for TIFF directory of %llu is greater than filesize %llu. Memory not allocated, TIFF directory not read", v36, v37, v38, v39, v40, __dst * v22);
    return 0;
  }

  result = _TIFFCheckMalloc(a1, __dst, v22, "to read TIFF directory", v37, v38, v39, v40);
  if (!result)
  {
    return result;
  }

  v24 = result;
  v41 = v22 * __dst;
  if ((v20 + v41) > *(a1 + 1176))
  {
    v34 = "Can not read TIFF directory";
    goto LABEL_48;
  }

  _TIFFmemcpy(result, (*(a1 + 1168) + v20), v41);
  if (!a4)
  {
    goto LABEL_67;
  }

  v42 = v20 + v22 * __dst;
  v32 = *(a1 + 16);
  if ((v32 & 0x80000) == 0)
  {
    v52.i32[0] = 0;
    if (v42 <= 0x7FFFFFFFFFFFFFFBLL && (v42 + 4) <= *(a1 + 1176))
    {
      _TIFFmemcpy(&v52, (*(a1 + 1168) + v42), 4uLL);
      v32 = *(a1 + 16);
    }

    goto LABEL_33;
  }

  if (v42 <= 0x7FFFFFFFFFFFFFF7 && (v42 + 8) <= *(a1 + 1176))
  {
    _TIFFmemcpy(a4, (*(a1 + 1168) + v42), 8uLL);
    v32 = *(a1 + 16);
  }

  else
  {
    *a4 = 0;
  }

LABEL_60:
  if ((v32 & 0x80) != 0)
  {
    TIFFSwabLong8(a4);
  }

LABEL_67:
  v43 = _TIFFCheckMalloc(a1, __dst, 32, "to read TIFF directory", v27, v28, v29, v30);
  if (!v43)
  {
    goto LABEL_83;
  }

  v45 = v43;
  if (__dst)
  {
    v46 = 0;
    v47 = v43 + 16;
    v48 = v24;
    do
    {
      v47[8] = 0;
      v49 = *(a1 + 16);
      if ((v49 & 0x80) != 0)
      {
        TIFFSwabShort(v48);
        v49 = *(a1 + 16);
        *(v47 - 8) = *v48;
        if ((v49 & 0x80) != 0)
        {
          TIFFSwabShort(v48 + 2);
          v49 = *(a1 + 16);
        }
      }

      else
      {
        *(v47 - 8) = *v48;
      }

      *(v47 - 7) = *(v48 + 1);
      if ((v49 & 0x80000) != 0)
      {
        if ((v49 & 0x80) != 0)
        {
          v44 = TIFFSwabLong8((v48 + 4));
        }

        *(v47 - 1) = *(v48 + 4);
        *v47 = *(v48 + 12);
        v50 = 20;
      }

      else
      {
        if ((v49 & 0x80) != 0)
        {
          v44 = TIFFSwabLong(v48 + 1, v44);
        }

        *(v47 - 1) = *(v48 + 1);
        *v47 = 0;
        *v47 = *(v48 + 2);
        v50 = 12;
      }

      v48 += v50;
      ++v46;
      v47 += 32;
    }

    while (v46 < __dst);
  }

  free(v24);
  *a3 = v45;
  return __dst;
}

uint64_t TIFFFetchNormalTag(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v124 = 0;
  v6 = *a2;
  TIFFReadDirectoryFindFieldInfo(a1, *a2, &v124);
  if (v124 == -1)
  {
    TIFFErrorExtR(a1, "TIFFFetchNormalTag", "No definition found for tag %hu", v7, v8, v9, v10, v11, v6);
    return 0;
  }

  v13 = *(*(a1 + 1256) + 8 * v124);
  if (!v13)
  {
    TIFFFetchNormalTag_cold_99();
  }

  switch(*(v13 + 16))
  {
    case 0:
      TIFFErrorExtR(a1, "TIFFFetchNormalTag", "Defined set_field_type of custom tag %u (%s) is TIFF_SETGET_UNDEFINED and thus tag is not read from file", v7, v8, v9, v10, v11, *v13);
      return 1;
    case 1:
      *&__s = 0.0;
      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_94();
      }

      v18 = TIFFReadDirEntryByteArray(a1, a2, &__s);
      if (v18)
      {
        goto LABEL_238;
      }

      v35 = __s;
      if (*&__s == 0.0)
      {
        if ((EvaluateIFDdatasizeReading(a1, a2) & 1) == 0)
        {
          return 0;
        }

        v39 = 0;
        goto LABEL_264;
      }

      v38 = *(a2 + 1);
      if (!v38)
      {
        goto LABEL_254;
      }

      if (__s->i8[v38 - 1])
      {
        if (v38)
        {
          v39 = 0;
          do
          {
            if (!__s->i8[v39])
            {
              goto LABEL_255;
            }

            ++v39;
          }

          while (v38 != v39);
          v39 = v38;
        }

        else
        {
LABEL_254:
          v39 = 0;
        }

LABEL_255:
        if ((EvaluateIFDdatasizeReading(a1, a2) & 1) == 0)
        {
          goto LABEL_275;
        }

        goto LABEL_264;
      }

      v39 = strlen(__s);
      if (!EvaluateIFDdatasizeReading(a1, a2))
      {
        goto LABEL_275;
      }

LABEL_264:
      v110 = *(a2 + 2);
      if (v39 + 1 >= v110)
      {
        if (v39 + 1 > v110)
        {
          TIFFWarningExtR(a1, "TIFFFetchNormalTag", "ASCII value for tag %s does not end in null byte. Forcing it to be null", v104, v105, v106, v107, v108, *(v13 + 32));
          v111 = *(a2 + 1) + 1;
          if (HIDWORD(v111))
          {
            TIFFFetchNormalTag_cold_95();
          }

          v112 = malloc_type_malloc(v111, 0xDC754A6CuLL);
          if (!v112)
          {
LABEL_274:
            if (v35)
            {
LABEL_275:
              v102 = v35;
LABEL_249:
              free(v102);
            }

            return 0;
          }

          v119 = v112;
          v120 = *(a2 + 1);
          if (v120)
          {
            _TIFFmemcpy(v112, v35, v120);
            v120 = *(a2 + 2);
          }

          *(v119 + v120) = 0;
          if (v35)
          {
            free(v35);
          }

          v36 = _cg_TIFFSetField(a1, *a2, v113, v114, v115, v116, v117, v118, v119);
          v35 = v119;
          goto LABEL_277;
        }
      }

      else
      {
        TIFFWarningExtR(a1, "TIFFFetchNormalTag", "ASCII value for tag %s contains null byte in value; value incorrectly truncated during reading due to implementation limitations", v104, v105, v106, v107, v108, *(v13 + 32));
      }

      v36 = _cg_TIFFSetField(a1, *a2, v103, v104, v105, v106, v107, v108, v35);
      if (!v35)
      {
        goto LABEL_279;
      }

LABEL_277:
      v109 = v35;
LABEL_278:
      free(v109);
LABEL_279:
      if (v36)
      {
        goto LABEL_238;
      }

      return 0;
    case 2:
      LOBYTE(__s) = 0;
      if (*(v13 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_92();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_93();
      }

      v18 = TIFFReadDirEntryByte(a1, a2, &__s, *&v12);
      if (v18)
      {
        goto LABEL_238;
      }

      v30 = *a2;
      v31 = __s;
      goto LABEL_150;
    case 3:
      LOBYTE(__s) = 0;
      if (*(v13 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_90();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_91();
      }

      v18 = TIFFReadDirEntrySbyte(a1, a2, &__s, *&v12);
      if (v18)
      {
        goto LABEL_238;
      }

      v30 = *a2;
      v31 = __s;
      goto LABEL_150;
    case 4:
      LOWORD(__s) = 0;
      if (*(v13 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_88();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_89();
      }

      v18 = TIFFReadDirEntryShort(a1, a2, &__s, *&v12);
      if (v18)
      {
        goto LABEL_238;
      }

      v30 = *a2;
      v31 = __s;
      goto LABEL_150;
    case 5:
      LOWORD(__s) = 0;
      if (*(v13 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_86();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_87();
      }

      v18 = TIFFReadDirEntrySshort(a1, a2, &__s, *&v12);
      if (v18)
      {
        goto LABEL_238;
      }

      v30 = *a2;
      v31 = __s;
      goto LABEL_150;
    case 6:
      LODWORD(__s) = 0;
      if (*(v13 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_84();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_85();
      }

      v44 = TIFFReadDirEntryLong(a1, a2, &__s, *&v12);
      goto LABEL_148;
    case 7:
      LODWORD(__s) = 0;
      if (*(v13 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_82();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_83();
      }

      v44 = TIFFReadDirEntrySlong(a1, a2, &__s, *&v12);
LABEL_148:
      v18 = v44;
      if (v44)
      {
        goto LABEL_238;
      }

      v30 = *a2;
      v31 = __s;
LABEL_150:
      result = _cg_TIFFSetField(a1, v30, v27, v28, v29, v9, v10, v11, v31);
      if (!result)
      {
        return result;
      }

      goto LABEL_238;
    case 8:
      *&__s = 0.0;
      if (*(v13 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_80();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_81();
      }

      v17 = TIFFReadDirEntryLong8(a1, a2, &__s, *&v12);
      goto LABEL_169;
    case 9:
      *&__s = 0.0;
      if (*(v13 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_78();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_79();
      }

      v17 = TIFFReadDirEntrySlong8(a1, a2, &__s, *&v12);
      goto LABEL_169;
    case 0xA:
      LODWORD(__s) = 0;
      if (*(v13 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_76();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_77();
      }

      v18 = TIFFReadDirEntryFloat(a1, a2, &__s, v12);
      if (v18)
      {
        goto LABEL_238;
      }

      if (!EvaluateIFDdatasizeReading(a1, a2))
      {
        return 0;
      }

      v25 = *a2;
      *&v26 = *&__s;
      goto LABEL_90;
    case 0xB:
      *&__s = 0.0;
      if (*(v13 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_74();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_75();
      }

      v18 = TIFFReadDirEntryDouble(a1, a2, &__s, v12);
      if (v18)
      {
        goto LABEL_238;
      }

      if (!EvaluateIFDdatasizeReading(a1, a2))
      {
        return 0;
      }

      v25 = *a2;
      v26 = __s;
LABEL_90:
      v37 = _cg_TIFFSetField(a1, v25, v19, v20, v21, v22, v23, v24, v26);
      goto LABEL_172;
    case 0xC:
      *&__s = 0.0;
      if (*(v13 + 4) != 1)
      {
        TIFFFetchNormalTag_cold_72();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_73();
      }

      v17 = TIFFReadDirEntryIfd8(a1, a2, &__s, *&v12);
LABEL_169:
      v18 = v17;
      if (v17)
      {
        goto LABEL_238;
      }

      if (!EvaluateIFDdatasizeReading(a1, a2))
      {
        return 0;
      }

      v37 = _cg_TIFFSetField(a1, *a2, v57, v58, v59, v60, v61, v62, __s);
LABEL_172:
      if (!v37)
      {
        return 0;
      }

      goto LABEL_238;
    case 0xD:
      TIFFFetchNormalTag_cold_96();
    case 0xE:
      *&__s = 0.0;
      if (*(v13 + 4) != 2)
      {
        TIFFFetchNormalTag_cold_69();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_70();
      }

      if (*(a2 + 1) != 2)
      {
        TIFFWarningExtR(a1, "TIFFFetchNormalTag", "incorrect count for field %s, expected 2, got %llu", v7, v8, v9, v10, v11, *(v13 + 32));
        return 0;
      }

      v18 = TIFFReadDirEntryShortArray(a1, a2, &__s);
      if (v18)
      {
        goto LABEL_238;
      }

      v35 = __s;
      if (*&__s == 0.0)
      {
        TIFFFetchNormalTag_cold_71();
      }

      v36 = _cg_TIFFSetField(a1, *a2, v32, v33, v34, v9, v10, v11, __s->u16[0]);
      goto LABEL_277;
    case 0x10:
      *&__s = 0.0;
      if (*(v13 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_68();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_67();
      }

      if (*(a2 + 1) != *(v13 + 4))
      {
        goto LABEL_193;
      }

      v16 = TIFFReadDirEntryByteArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x11:
      *&__s = 0.0;
      if (*(v13 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_66();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_65();
      }

      if (*(a2 + 1) != *(v13 + 4))
      {
        goto LABEL_193;
      }

      v16 = TIFFReadDirEntrySbyteArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x12:
      *&__s = 0.0;
      if (*(v13 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_64();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_63();
      }

      if (*(a2 + 1) != *(v13 + 4))
      {
        goto LABEL_193;
      }

      v16 = TIFFReadDirEntryShortArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x13:
      *&__s = 0.0;
      if (*(v13 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_62();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_61();
      }

      if (*(a2 + 1) != *(v13 + 4))
      {
        goto LABEL_193;
      }

      v16 = TIFFReadDirEntrySshortArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x14:
      *&__s = 0.0;
      if (*(v13 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_60();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_59();
      }

      if (*(a2 + 1) != *(v13 + 4))
      {
        goto LABEL_193;
      }

      v16 = TIFFReadDirEntryLongArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x15:
      *&__s = 0.0;
      if (*(v13 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_58();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_57();
      }

      if (*(a2 + 1) != *(v13 + 4))
      {
        goto LABEL_193;
      }

      v16 = TIFFReadDirEntrySlongArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x16:
      *&__s = 0.0;
      if (*(v13 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_56();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_55();
      }

      if (*(a2 + 1) != *(v13 + 4))
      {
        goto LABEL_193;
      }

      v16 = TIFFReadDirEntryLong8ArrayWithLimit(a1, a2, &__s, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_190;
    case 0x17:
      *&__s = 0.0;
      if (*(v13 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_54();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_53();
      }

      if (*(a2 + 1) != *(v13 + 4))
      {
        goto LABEL_193;
      }

      v16 = TIFFReadDirEntrySlong8Array(a1, a2, &__s);
      goto LABEL_190;
    case 0x18:
      *&__s = 0.0;
      if (*(v13 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_52();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_51();
      }

      if (*(a2 + 1) != *(v13 + 4))
      {
        goto LABEL_193;
      }

      v16 = TIFFReadDirEntryFloatArray(a1, a2, &__s);
      goto LABEL_190;
    case 0x19:
      *&__s = 0.0;
      if (*(v13 + 4) <= 0)
      {
        TIFFFetchNormalTag_cold_50();
      }

      if (*(v13 + 27))
      {
        TIFFFetchNormalTag_cold_49();
      }

      if (*(a2 + 1) != *(v13 + 4))
      {
LABEL_193:
        TIFFWarningExtR(a1, "TIFFFetchNormalTag", "incorrect count for field %s, expected %d, got %llu", v7, v8, v9, v10, v11, *(v13 + 32));
        return 0;
      }

      v16 = TIFFReadDirEntryDoubleArray(a1, a2, &__s);
LABEL_190:
      v18 = v16;
      if (v16)
      {
        goto LABEL_238;
      }

      if ((EvaluateIFDdatasizeReading(a1, a2) & 1) == 0)
      {
        goto LABEL_248;
      }

      v81 = *a2;
      v82 = __s;
      v83 = _cg_TIFFSetField(a1, v81, v75, v76, v77, v78, v79, v80, __s);
      goto LABEL_227;
    case 0x1B:
      *&__s = 0.0;
      if (*(v13 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_47();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_48();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v18 = TIFFReadDirEntryByteArray(a1, a2, &__s);
      if (v18)
      {
        goto LABEL_238;
      }

      v63 = EvaluateIFDdatasizeReading(a1, a2);
      v70 = __s;
      if ((v63 & 1) == 0)
      {
        if (*&__s == 0.0)
        {
          return 0;
        }

        goto LABEL_258;
      }

      v71 = *(a2 + 1);
      if (*&__s == 0.0)
      {
        v73 = 0;
        goto LABEL_283;
      }

      if (!v71 || !__s->i8[v71 - 1])
      {
        v73 = __s;
        goto LABEL_283;
      }

      TIFFWarningExtR(a1, "TIFFFetchNormalTag", "ASCII value for ASCII array tag %s does not end in null byte. Forcing it to be null", v65, v66, v67, v68, v69, *(v13 + 32));
      v72 = malloc_type_malloc((*(a2 + 2) + 1), 0x44B43F1EuLL);
      if (!v72)
      {
LABEL_258:
        v102 = v70;
        goto LABEL_249;
      }

      v73 = v72;
      v74 = *(a2 + 1);
      if (v74)
      {
        _TIFFmemcpy(v72, v70, v74);
        v74 = *(a2 + 2);
      }

      v73[v74] = 0;
      ++*(a2 + 1);
      free(v70);
      v71 = *(a2 + 1);
LABEL_283:
      v100 = _cg_TIFFSetField(a1, *a2, v64, v65, v66, v67, v68, v69, v71);
      if (v73)
      {
        v101 = v73;
LABEL_245:
        free(v101);
      }

LABEL_246:
      if (!v100)
      {
        return 0;
      }

      v18 = 0;
LABEL_238:
      if (v18)
      {
        TIFFReadDirEntryOutputErr(a1, v18, "TIFFFetchNormalTag", *(v13 + 32), a3, v9, v10, v11);
        return 0;
      }

      return 1;
    case 0x1C:
      *&__s = 0.0;
      if (*(v13 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_45();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_46();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v15 = TIFFReadDirEntryByteArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x1D:
      *&__s = 0.0;
      if (*(v13 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_43();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_44();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v15 = TIFFReadDirEntrySbyteArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x1E:
      *&__s = 0.0;
      if (*(v13 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_41();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_42();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v15 = TIFFReadDirEntryShortArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x1F:
      *&__s = 0.0;
      if (*(v13 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_39();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_40();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v15 = TIFFReadDirEntrySshortArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x20:
      *&__s = 0.0;
      if (*(v13 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_37();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_38();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v15 = TIFFReadDirEntryLongArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x21:
      *&__s = 0.0;
      if (*(v13 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_35();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_36();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v15 = TIFFReadDirEntrySlongArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x22:
      *&__s = 0.0;
      if (*(v13 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_33();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_34();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v15 = TIFFReadDirEntryLong8ArrayWithLimit(a1, a2, &__s, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_237;
    case 0x23:
      *&__s = 0.0;
      if (*(v13 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_31();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_32();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v15 = TIFFReadDirEntrySlong8Array(a1, a2, &__s);
      goto LABEL_237;
    case 0x24:
      *&__s = 0.0;
      if (*(v13 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_29();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_30();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v15 = TIFFReadDirEntryFloatArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x25:
      *&__s = 0.0;
      if (*(v13 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_27();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_28();
      }

      if (*(a2 + 1) >> 16)
      {
        goto LABEL_210;
      }

      v15 = TIFFReadDirEntryDoubleArray(a1, a2, &__s);
      goto LABEL_237;
    case 0x26:
      *&__s = 0.0;
      if (*(v13 + 4) != -1)
      {
        TIFFFetchNormalTag_cold_25();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_26();
      }

      if (*(a2 + 1) >> 16)
      {
LABEL_210:
        v18 = 1;
        goto LABEL_238;
      }

      v15 = TIFFReadDirEntryIfd8Array(a1, a2, &__s);
LABEL_237:
      v18 = v15;
      if (v15)
      {
        goto LABEL_238;
      }

      if ((EvaluateIFDdatasizeReading(a1, a2) & 1) == 0)
      {
        goto LABEL_248;
      }

      v99 = __s;
      v100 = _cg_TIFFSetField(a1, *a2, v93, v94, v95, v96, v97, v98, a2[4]);
      if (!v99)
      {
        goto LABEL_246;
      }

      v101 = v99;
      goto LABEL_245;
    case 0x27:
      *&__s = 0.0;
      if (*(v13 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_23();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_24();
      }

      v18 = TIFFReadDirEntryByteArray(a1, a2, &__s);
      if (v18)
      {
        goto LABEL_238;
      }

      v46 = EvaluateIFDdatasizeReading(a1, a2);
      v35 = __s;
      if ((v46 & 1) == 0)
      {
        goto LABEL_274;
      }

      if (*&__s == 0.0)
      {
        v55 = 0;
      }

      else
      {
        v53 = *(a2 + 1);
        if (v53 && __s->i8[v53 - 1])
        {
          TIFFWarningExtR(a1, "TIFFFetchNormalTag", "ASCII value for ASCII array tag %s does not end in null byte. Forcing it to be null", v48, v49, v50, v51, v52, *(v13 + 32));
          v54 = malloc_type_malloc((*(a2 + 2) + 1), 0x928A4F79uLL);
          if (!v54)
          {
            goto LABEL_275;
          }

          v55 = v54;
          v56 = *(a2 + 1);
          if (v56)
          {
            _TIFFmemcpy(v54, v35, v56);
            v56 = *(a2 + 2);
          }

          v55[v56] = 0;
          ++*(a2 + 1);
          free(v35);
        }

        else
        {
          v55 = __s;
        }
      }

      v36 = _cg_TIFFSetField(a1, *a2, v47, v48, v49, v50, v51, v52, *(a2 + 1));
      if (!v55)
      {
        goto LABEL_279;
      }

      v109 = v55;
      goto LABEL_278;
    case 0x28:
      *&__s = 0.0;
      v122 = 0;
      if (*(v13 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_21();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_22();
      }

      if (*v13 == 33723 && a2[1] == 4)
      {
        v121 = 0;
        v40 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v122, 4u, &v121, 0xFFFFFFFFFFFFFFFFLL);
        v18 = v40;
        if (v40 || (v42 = v121) == 0)
        {
          *&__s = 0.0;
          if (v40)
          {
            goto LABEL_238;
          }
        }

        else
        {
          v43 = v122;
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabArrayOfLong(v121, v122, v41);
          }

          __s = v42;
          v122 = 4 * v43;
        }
      }

      else
      {
        v18 = TIFFReadDirEntryByteArray(a1, a2, &__s);
        v122 = *(a2 + 1);
        if (v18)
        {
          goto LABEL_238;
        }
      }

      if ((EvaluateIFDdatasizeReading(a1, a2) & 1) == 0)
      {
LABEL_248:
        v102 = __s;
        if (*&__s == 0.0)
        {
          return 0;
        }

        goto LABEL_249;
      }

      v90 = *a2;
      v82 = __s;
      v91 = v122;
LABEL_226:
      v83 = _cg_TIFFSetField(a1, v90, v84, v85, v86, v87, v88, v89, v91);
LABEL_227:
      v92 = v83;
      if (v82)
      {
        free(v82);
      }

      if (v92)
      {
        goto LABEL_238;
      }

      return 0;
    case 0x29:
      *&__s = 0.0;
      if (*(v13 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_19();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_20();
      }

      v14 = TIFFReadDirEntrySbyteArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x2A:
      *&__s = 0.0;
      if (*(v13 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_17();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_18();
      }

      v14 = TIFFReadDirEntryShortArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x2B:
      *&__s = 0.0;
      if (*(v13 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_15();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_16();
      }

      v14 = TIFFReadDirEntrySshortArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x2C:
      *&__s = 0.0;
      if (*(v13 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_13();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_14();
      }

      v14 = TIFFReadDirEntryLongArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x2D:
      *&__s = 0.0;
      if (*(v13 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_11();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_12();
      }

      v14 = TIFFReadDirEntrySlongArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x2E:
      *&__s = 0.0;
      if (*(v13 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_9();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_10();
      }

      v14 = TIFFReadDirEntryLong8ArrayWithLimit(a1, a2, &__s, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_223;
    case 0x2F:
      *&__s = 0.0;
      if (*(v13 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_7();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_8();
      }

      v14 = TIFFReadDirEntrySlong8Array(a1, a2, &__s);
      goto LABEL_223;
    case 0x30:
      *&__s = 0.0;
      if (*(v13 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_5();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_6();
      }

      v14 = TIFFReadDirEntryFloatArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x31:
      *&__s = 0.0;
      if (*(v13 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_3();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_4();
      }

      v14 = TIFFReadDirEntryDoubleArray(a1, a2, &__s);
      goto LABEL_223;
    case 0x32:
      *&__s = 0.0;
      if (*(v13 + 4) != -3)
      {
        TIFFFetchNormalTag_cold_1();
      }

      if (*(v13 + 27) != 1)
      {
        TIFFFetchNormalTag_cold_2();
      }

      v14 = TIFFReadDirEntryIfd8Array(a1, a2, &__s);
LABEL_223:
      v18 = v14;
      if (v14)
      {
        goto LABEL_238;
      }

      if ((EvaluateIFDdatasizeReading(a1, a2) & 1) == 0)
      {
        goto LABEL_248;
      }

      v90 = *a2;
      v91 = *(a2 + 1);
      v82 = __s;
      goto LABEL_226;
    case 0x33:
      TIFFFetchNormalTag_cold_97();
    default:
      TIFFFetchNormalTag_cold_98();
  }
}

uint64_t TIFFReadDirEntryShort(uint64_t a1, int8x8_t *a2, _BYTE *a3, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 <= 7)
  {
    if (a2->u16[1] <= 3u)
    {
      if (v8 != 1)
      {
        if (v8 == 3)
        {
          *a3 = a2[2].i16[0];
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(a3);
          }

          return 0;
        }

        return result;
      }

      result = 0;
      LOWORD(v10) = a2[2].u8[0];
LABEL_36:
      *a3 = v10;
      return result;
    }

    if (v8 != 4)
    {
      if (v8 != 6)
      {
        return result;
      }

      v10 = a2[2].i8[0];
      if (((v10 >> 5) & 4) != 0)
      {
        return (v10 >> 5) & 4;
      }

      result = 0;
      goto LABEL_36;
    }

LABEL_22:
    v11 = a2[2].u32[0];
    __dst[0].i32[0] = v11;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(__dst, a4);
      v11 = __dst[0].i32[0];
    }

    if (!HIWORD(v11))
    {
      result = 0;
LABEL_30:
      *a3 = v11;
      return result;
    }

    return 4;
  }

  if (a2->u16[1] > 0xFu)
  {
    if (v8 == 16)
    {
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (v8 != 17)
      {
        return result;
      }

      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }
    }

    if (!(*__dst >> 16))
    {
      result = 0;
      *a3 = __dst[0].i16[0];
      return result;
    }

    return 4;
  }

  if (v8 != 8)
  {
    if (v8 != 9)
    {
      return result;
    }

    goto LABEL_22;
  }

  v11 = a2[2].u16[0];
  __dst[0].i16[0] = a2[2].i16[0];
  if ((*(a1 + 16) & 0x80) != 0)
  {
    TIFFSwabShort(__dst);
    v11 = __dst[0].u16[0];
  }

  result = (v11 >> 13) & 4;
  if (((v11 >> 13) & 4) == 0)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t TIFFReadDirEntryPersampleShort(uint64_t a1, uint64_t a2, _WORD *a3)
{
  if (*(a2 + 8) < *(a1 + 130))
  {
    return 1;
  }

  v12 = 0;
  v3 = TIFFReadDirEntryShortArray(a1, a2, &v12);
  if (!v3)
  {
    v6 = v12;
    if (v12)
    {
      v7 = *(a1 + 130);
      v8 = *v12;
      *a3 = v8;
      v9 = 2;
      while (--v7)
      {
        v10 = *&v6[v9];
        v9 += 2;
        if (v10 != v8)
        {
          v3 = 5;
          goto LABEL_10;
        }
      }

      v3 = 0;
LABEL_10:
      free(v6);
    }
  }

  return v3;
}

uint64_t TIFFReadDirEntryOutputErr(uint64_t a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    if (a2 <= 3)
    {
      switch(a2)
      {
        case 1:
          return TIFFWarningExtR(a1, a3, "Incorrect count for %s; tag ignored", a4, a5, a6, a7, a8, a4);
        case 2:
          return TIFFWarningExtR(a1, a3, "Incompatible type for %s; tag ignored", a4, a5, a6, a7, a8, a4);
        case 3:
          return TIFFWarningExtR(a1, a3, "IO error during reading of %s; tag ignored", a4, a5, a6, a7, a8, a4);
      }
    }

    else
    {
      if (a2 <= 5)
      {
        if (a2 == 4)
        {
          return TIFFWarningExtR(a1, a3, "Incorrect value for %s; tag ignored", a4, a5, a6, a7, a8, a4);
        }

        else
        {
          return TIFFWarningExtR(a1, a3, "Cannot handle different values per sample for %s; tag ignored", a4, a5, a6, a7, a8, a4);
        }
      }

      if (a2 == 6)
      {
        return TIFFWarningExtR(a1, a3, "Sanity check on size of %s value failed; tag ignored", a4, a5, a6, a7, a8, a4);
      }

      if (a2 == 7)
      {
        return TIFFWarningExtR(a1, a3, "Out of memory reading of %s; tag ignored", a4, a5, a6, a7, a8, a4);
      }
    }

    TIFFReadDirEntryOutputErr_cold_1();
  }

  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        return TIFFErrorExtR(a1, a3, "Incorrect count for %s", a4, a5, a6, a7, a8, a4);
      case 2:
        return TIFFErrorExtR(a1, a3, "Incompatible type for %s", a4, a5, a6, a7, a8, a4);
      case 3:
        return TIFFErrorExtR(a1, a3, "IO error during reading of %s", a4, a5, a6, a7, a8, a4);
    }

    goto LABEL_33;
  }

  if (a2 > 5)
  {
    if (a2 == 6)
    {
      return TIFFErrorExtR(a1, a3, "Sanity check on size of %s value failed", a4, a5, a6, a7, a8, a4);
    }

    if (a2 == 7)
    {
      return TIFFErrorExtR(a1, a3, "Out of memory reading of %s", a4, a5, a6, a7, a8, a4);
    }

LABEL_33:
    TIFFReadDirEntryOutputErr_cold_2();
  }

  if (a2 == 4)
  {
    return TIFFErrorExtR(a1, a3, "Incorrect value for %s", a4, a5, a6, a7, a8, a4);
  }

  else
  {
    return TIFFErrorExtR(a1, a3, "Cannot handle different values per sample for %s", a4, a5, a6, a7, a8, a4);
  }
}

uint64_t TIFFReadDirectoryFindFieldInfo(uint64_t result, unsigned int a2, _DWORD *a3)
{
  v3 = *(result + 1264);
  if (v3)
  {
    v4 = *(result + 1256);
    v5 = -1;
    while (1)
    {
      v6 = v3 + v5;
      v7 = (v6 + (v6 >> 31)) >> 1;
      v8 = **(v4 + 8 * ((v3 + v5) / 2));
      if (v8 == a2)
      {
        break;
      }

      if (v8 >= a2)
      {
        v3 = v6 / 2;
      }

      else
      {
        v5 = v6 / 2;
      }

      if (v5 + 1 == v3)
      {
        goto LABEL_8;
      }
    }

    if ((v6 + 1) >= 3)
    {
      v9 = v4 - 8;
      do
      {
        if (**(v9 + 8 * v7) != a2)
        {
          break;
        }

        --v7;
      }

      while (v7);
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  else
  {
LABEL_8:
    LODWORD(v7) = -1;
  }

  *a3 = v7;
  return result;
}

uint64_t EvaluateIFDdatasizeReading(uint64_t a1, int8x8_t *a2)
{
  v4 = TIFFDataWidth(a2->u16[1]);
  v11 = a2[1];
  if (v4)
  {
    v12 = (v4 * v11) >> 64 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = *&v11 * v4;
  v14 = *(a1 + 16);
  v15 = 8;
  if ((v14 & 0x80000) == 0)
  {
    v15 = 4;
  }

  if (v13 > v15)
  {
    v16 = *(a1 + 440);
    if (__CFADD__(v13, v16))
    {
LABEL_11:
      TIFFErrorExtR(a1, "EvaluateIFDdatasizeReading", "Too large IFD data size", v5, v6, v7, v8, v9, v23);
      return 0;
    }

    *(a1 + 440) = v16 + v13;
    if ((v14 & 0x80000) != 0)
    {
      v20 = *(a1 + 456);
      v21 = *(a1 + 448);
      v22 = (v20 + 16 * v21);
      *v22 = a2[2];
      if ((v14 & 0x80) != 0)
      {
        TIFFSwabLong8(v22);
        v20 = *(a1 + 456);
        v21 = *(a1 + 448);
      }
    }

    else
    {
      v18 = a2[2].u32[0];
      v24 = v18;
      if ((v14 & 0x80) != 0)
      {
        TIFFSwabLong(&v24, v10);
        v18 = v24;
      }

      v19 = v18;
      v20 = *(a1 + 456);
      v21 = *(a1 + 448);
      *(v20 + 16 * v21) = v19;
    }

    *(v20 + 16 * v21 + 8) = v13;
    *(a1 + 448) = v21 + 1;
  }

  return 1;
}

uint64_t TIFFReadDirEntryDoubleArray(uint64_t a1, uint64_t a2, __int32 **a3)
{
  v5 = *(a2 + 2);
  v6 = v5 > 0x11;
  v7 = (1 << v5) & 0x31F7A;
  if (v6 || v7 == 0)
  {
    return 2;
  }

  v58 = v3;
  v59 = v4;
  v57 = 0;
  v56 = 0;
  result = TIFFReadDirEntryArrayWithLimit(a1, a2, &v57, 8u, &v56, 0xFFFFFFFFFFFFFFFFLL);
  if (result || (v13 = v56) == 0)
  {
    *a3 = 0;
  }

  else if (*(a2 + 2) == 12)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong8(v56, v57);
    }

    result = 0;
    *a3 = v13;
  }

  else
  {
    v14 = v57;
    v15 = malloc_type_malloc(8 * v57, 0x100004000313F17uLL);
    if (v15)
    {
      v17 = v15;
      v18 = *(a2 + 2);
      if (v18 <= 7)
      {
        if (*(a2 + 2) <= 3u)
        {
          if (v18 == 1)
          {
            if (v14)
            {
              v33 = v15;
              v34 = v13;
              do
              {
                v35 = *v34;
                v34 = (v34 + 1);
                *v33++ = v35;
                LODWORD(v14) = v14 - 1;
              }

              while (v14);
            }
          }

          else if (v18 == 3 && v14)
          {
            v30 = v15;
            v31 = v13;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabShort(v31);
              }

              v32 = *v31;
              v31 = (v31 + 2);
              *v30++ = v32;
              LODWORD(v14) = v14 - 1;
            }

            while (v14);
          }
        }

        else if (v18 == 4)
        {
          if (v14)
          {
            v47 = v15;
            v48 = v13;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabLong(v48, *&v16);
              }

              v49 = *v48++;
              v16 = v49;
              *v47++ = v49;
              LODWORD(v14) = v14 - 1;
            }

            while (v14);
          }
        }

        else if (v18 == 5)
        {
          if (v14)
          {
            v36 = v15;
            v37 = v13;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                v39 = TIFFSwabLong(v37, *&v16);
                v38 = *v37;
                if ((*(a1 + 16) & 0x80) != 0)
                {
                  TIFFSwabLong(v37 + 1, v39);
                }
              }

              else
              {
                v38 = *v37;
              }

              v40 = v37[1];
              if (v40)
              {
                v16 = v38 / v40;
              }

              else
              {
                v16 = 0.0;
              }

              v37 += 2;
              *v36++ = v16;
              LODWORD(v14) = v14 - 1;
            }

            while (v14);
          }
        }

        else if (v18 == 6 && v14)
        {
          v24 = v15;
          v25 = v13;
          do
          {
            v26 = *v25;
            v25 = (v25 + 1);
            *v24++ = v26;
            LODWORD(v14) = v14 - 1;
          }

          while (v14);
        }
      }

      else if (*(a2 + 2) > 0xAu)
      {
        if (v18 == 11)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabArrayOfLong(v13, v14, *&v16);
          }

          if (v14)
          {
            v53 = v17;
            v54 = v13;
            do
            {
              v55 = *v54++;
              *v53++ = v55;
              LODWORD(v14) = v14 - 1;
            }

            while (v14);
          }
        }

        else if (v18 == 16)
        {
          if (v14)
          {
            v44 = v15;
            v45 = v13;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabLong8(v45);
              }

              v46 = *v45++;
              *v44++ = v46;
              LODWORD(v14) = v14 - 1;
            }

            while (v14);
          }
        }

        else if (v18 == 17 && v14)
        {
          v27 = v15;
          v28 = v13;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v28);
            }

            v29 = *v28++;
            *v27++ = v29;
            LODWORD(v14) = v14 - 1;
          }

          while (v14);
        }
      }

      else if (v18 == 8)
      {
        if (v14)
        {
          v50 = v15;
          v51 = v13;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabShort(v51);
            }

            v52 = *v51;
            v51 = (v51 + 2);
            *v50++ = v52;
            LODWORD(v14) = v14 - 1;
          }

          while (v14);
        }
      }

      else if (v18 == 9)
      {
        if (v14)
        {
          v41 = v15;
          v42 = v13;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong(v42, *&v16);
            }

            v43 = *v42++;
            v16 = v43;
            *v41++ = v43;
            LODWORD(v14) = v14 - 1;
          }

          while (v14);
        }
      }

      else if (v18 == 10 && v14)
      {
        v19 = v15;
        v20 = v13;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v22 = TIFFSwabLong(v20, *&v16);
            v21 = *v20;
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong(v20 + 1, v22);
            }
          }

          else
          {
            v21 = *v20;
          }

          v23 = v20[1];
          if (v23)
          {
            v16 = v21 / v23;
          }

          else
          {
            v16 = 0.0;
          }

          v20 += 2;
          *v19++ = v16;
          LODWORD(v14) = v14 - 1;
        }

        while (v14);
      }

      free(v13);
      result = 0;
      *a3 = v17;
    }

    else
    {
      free(v13);
      return 7;
    }
  }

  return result;
}

uint64_t TIFFReadDirEntryShortArray(uint64_t a1, uint64_t a2, int8x8_t **a3)
{
  v3 = *(a2 + 2);
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x3035A;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  v42 = 0;
  v41 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v42, 2u, &v41, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v11 = v41) == 0)
  {
    *a3 = 0;
    return v10;
  }

  v12 = *(a2 + 2);
  if (v12 == 3)
  {
    *a3 = v41;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfShort(v11, v42);
    }

    return 0;
  }

  if (v12 != 8)
  {
    v16 = v42;
    v17 = malloc_type_malloc(2 * v42, 0x1000040BDFB0063uLL);
    if (!v17)
    {
      free(v11);
      return 7;
    }

    v19 = v17;
    v20 = *(a2 + 2);
    if (v20 > 8)
    {
      if (v20 == 9)
      {
        if (!v16)
        {
          goto LABEL_67;
        }

        v31 = v17;
        v32 = v11;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v18 = TIFFSwabLong(v32, v18);
          }

          v33 = *v32;
          if (HIWORD(*v32))
          {
            break;
          }

          ++v32;
          v31->i16[0] = v33;
          v31 = (v31 + 2);
          if (!--v16)
          {
            goto LABEL_67;
          }
        }
      }

      else if (v20 == 16)
      {
        if (!v16)
        {
          goto LABEL_67;
        }

        v37 = v17;
        v38 = v11;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(v38);
          }

          v39 = *v38;
          if (*v38 >> 16)
          {
            break;
          }

          ++v38;
          v37->i16[0] = v39.i16[0];
          v37 = (v37 + 2);
          if (!--v16)
          {
            goto LABEL_67;
          }
        }
      }

      else
      {
        if (v20 != 17 || !v16)
        {
          goto LABEL_67;
        }

        v25 = v17;
        v26 = v11;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(v26);
          }

          v27 = *v26;
          if (*v26 >> 16)
          {
            break;
          }

          ++v26;
          v25->i16[0] = v27.i16[0];
          v25 = (v25 + 2);
          if (!--v16)
          {
            goto LABEL_67;
          }
        }
      }
    }

    else
    {
      if (v20 == 1)
      {
        if (v16)
        {
          v28 = v17;
          v29 = v11;
          do
          {
            v30 = v29->u8[0];
            v29 = (v29 + 1);
            v28->i16[0] = v30;
            v28 = (v28 + 2);
            --v16;
          }

          while (v16);
        }

        goto LABEL_67;
      }

      if (v20 != 4)
      {
        if (v20 == 6 && v16)
        {
          v21 = v17;
          v22 = v11;
          while (1)
          {
            v23 = v22->i8[0];
            if (((v23 >> 5) & 4) != 0)
            {
              break;
            }

            v22 = (v22 + 1);
            v21->i16[0] = v23;
            v21 = (v21 + 2);
            if (!--v16)
            {
              goto LABEL_67;
            }
          }

          v10 = (v23 >> 5) & 4;
          goto LABEL_69;
        }

LABEL_67:
        free(v11);
        v10 = 0;
        *a3 = v19;
        return v10;
      }

      if (!v16)
      {
        goto LABEL_67;
      }

      v34 = v17;
      v35 = v11;
      while (1)
      {
        if ((*(a1 + 16) & 0x80) != 0)
        {
          v18 = TIFFSwabLong(v35, v18);
        }

        v36 = *v35;
        if (HIWORD(*v35))
        {
          break;
        }

        ++v35;
        v34->i16[0] = v36;
        v34 = (v34 + 2);
        if (!--v16)
        {
          goto LABEL_67;
        }
      }
    }

    v10 = 4;
LABEL_69:
    free(v11);
    v24 = v19;
LABEL_70:
    free(v24);
    return v10;
  }

  v13 = v42;
  if (v42)
  {
    v14 = v41;
    while (1)
    {
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(v14);
      }

      v15 = v14->u16[0] >> 13;
      if ((v15 & 4) != 0)
      {
        break;
      }

      v14 = (v14 + 2);
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    v10 = v15 & 4;
    v24 = v11;
    goto LABEL_70;
  }

LABEL_15:
  v10 = 0;
  *a3 = v11;
  return v10;
}

void CalcFinalIFDdatasizeReading(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12))
  {
    qsort(*(a1 + 456), *(a1 + 448), 0x10uLL, cmpTIFFEntryOffsetAndLength);
    v4 = *(a1 + 16);
    v5 = 20;
    if ((v4 & 0x80000) == 0)
    {
      v5 = 12;
    }

    v6 = 6;
    if ((v4 & 0x80000) != 0)
    {
      v6 = 16;
    }

    v7 = v6 + v5 * a2 + *(a1 + 24);
    v8 = *(a1 + 448);
    if (v8)
    {
      v9 = 0;
      v10 = (*(a1 + 456) + 8);
      do
      {
        v11 = *(v10 - 1);
        if (v11 == v7)
        {
          v12 = *v10;
          v13 = *v10;
        }

        else
        {
          if (v11 != v7 + 1)
          {
            break;
          }

          v12 = *v10;
          v13 = *v10 + 1;
        }

        v9 += v13;
        v7 += v12;
        v10 += 2;
        --v8;
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      if (v14 == v7 + 1)
      {
        ++v9;
      }
    }

    else
    {
      if ((*(a1 + 1224))(*(a1 + 1200), 0, 2) == v7)
      {
        v15 = -1;
LABEL_25:
        *(a1 + 440) = v15;
        return;
      }

      v4 = *(a1 + 16);
    }

    if ((v4 & 0x80000) != 0)
    {
      v15 = v9 + 20 * a2 + 16;
    }

    else
    {
      v15 = v9 + 12 * a2 + 6;
    }

    goto LABEL_25;
  }
}

uint64_t TIFFFetchStripThing(uint64_t a1, unsigned __int16 *a2, unsigned int a3, void *a4)
{
  __src = 0;
  v8 = a3;
  v9 = TIFFReadDirEntryLong8ArrayWithLimit(a1, a2, &__src, a3);
  if (v9)
  {
    v10 = v9;
    v11 = TIFFFieldWithTag(a1, *a2);
    if (v11)
    {
      v15 = *(v11 + 4);
    }

    else
    {
      v15 = "unknown tagname";
    }

    TIFFReadDirEntryOutputErr(a1, v10, "TIFFFetchStripThing", v15, 0, v12, v13, v14);
    return 0;
  }

  if (*(a2 + 1) >= v8)
  {
    v24 = __src;
    goto LABEL_12;
  }

  v16 = TIFFFieldWithTag(a1, *a2);
  v17 = getenv("LIBTIFF_STRILE_ARRAY_MAX_RESIZE_COUNT");
  if (!v17)
  {
    v21 = 1000000;
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_15:
    v22 = "unknown tagname";
    goto LABEL_16;
  }

  v21 = atoi(v17);
  if (!v16)
  {
    goto LABEL_15;
  }

LABEL_7:
  v22 = *(v16 + 4);
LABEL_16:
  TIFFReadDirEntryOutputErr(a1, 1, "TIFFFetchStripThing", v22, v21 >= a3, v18, v19, v20);
  if (v21 < a3)
  {
LABEL_24:
    free(__src);
    return 0;
  }

  if (a3 > 0xC80000 && 8 * v8 > (*(a1 + 1240))(*(a1 + 1200)))
  {
    TIFFWarningExtR(a1, "TIFFFetchStripThing", "Requested memory size for StripArray of %llu is greater than filesize %llu. Memory not allocated", v29, v25, v26, v27, v28, 8 * v8);
    goto LABEL_24;
  }

  v30 = _TIFFCheckMalloc(a1, v8, 8, "for strip array", v25, v26, v27, v28);
  if (!v30)
  {
    goto LABEL_24;
  }

  v24 = v30;
  v31 = *(a2 + 1);
  v32 = __src;
  if (v31)
  {
    _TIFFmemcpy(v30, __src, 8 * *(a2 + 1));
    v31 = *(a2 + 2);
  }

  _TIFFmemset(&v24[8 * v31], 0, 8 * (a3 - v31));
  free(v32);
LABEL_12:
  *a4 = v24;
  return 1;
}

uint64_t _TIFFGetMaxColorChannels(unsigned int a1)
{
  if (a1 > 0xA)
  {
LABEL_6:
    if (a1 != 32845)
    {
      return 0;
    }

    return 3;
  }

  v1 = 1;
  if (((1 << a1) & 0x744) != 0)
  {
    return 3;
  }

  if (((1 << a1) & 0xB) == 0)
  {
    if (((1 << a1) & 0x30) != 0)
    {
      return 4;
    }

    goto LABEL_6;
  }

  return v1;
}

uint64_t EstimateStripByteCounts(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!_TIFFFillStrilesInternal(a1, 0))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 228);
  if (v10 <= 0xC80000)
  {
    v13 = 0;
  }

  else
  {
    v11 = 8 * v10;
    v13 = (*(a1 + 1240))(*(a1 + 1200));
    if (v11 > v13)
    {
      TIFFWarningExtR(a1, "EstimateStripByteCounts", "Requested memory size for StripByteCounts of %llu is greater than filesize %llu. Memory not allocated", v12, v6, v7, v8, v9, v11);
      return 0xFFFFFFFFLL;
    }
  }

  v14 = *(a1 + 240);
  if (v14)
  {
    free(v14);
  }

  v15 = _TIFFCheckMalloc(a1, *(a1 + 228), 8, "for StripByteCounts array", v6, v7, v8, v9);
  *(a1 + 240) = v15;
  if (!v15)
  {
    return 0xFFFFFFFFLL;
  }

  v23 = *(a1 + 16);
  if (*(a1 + 120) == 1)
  {
    if ((v23 & 0x400) != 0)
    {
      v46 = _cg_TIFFTileSize64(a1, v16, v17, v18, v19, v20, v21, v22);
      v47 = *(a1 + 228);
      if (v47)
      {
        v48 = (v47 + 1) & 0x1FFFFFFFELL;
        v49 = vdupq_n_s64(v47 - 1);
        v50 = xmmword_186205EC0;
        v51 = (*(a1 + 240) + 8);
        v52 = vdupq_n_s64(2uLL);
        do
        {
          v53 = vmovn_s64(vcgeq_u64(v49, v50));
          if (v53.i8[0])
          {
            *(v51 - 1) = v46;
          }

          if (v53.i8[4])
          {
            *v51 = v46;
          }

          v50 = vaddq_s64(v50, v52);
          v51 += 2;
          v48 -= 2;
        }

        while (v48);
      }
    }

    else
    {
      v24 = _cg_TIFFScanlineSize64(a1, v16, v17, v18, v19, v20, v21, v22);
      v25 = *(a1 + 228);
      if (v25)
      {
        v26 = 0;
        v27 = !is_mul_ok(v24, (*(a1 + 92) / *(a1 + 224)));
        v28 = v24 * (*(a1 + 92) / *(a1 + 224));
        v29 = 8 * v25;
        while (!v27)
        {
          *(*(a1 + 240) + v26) = v28;
          v26 += 8;
          if (v29 == v26)
          {
            goto LABEL_57;
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    if ((v23 & 0x80000) != 0)
    {
      v30 = 20 * a3 + 32;
    }

    else
    {
      v30 = 12 * a3 + 14;
    }

    if (a3)
    {
      v31 = (a2 + 8);
      while (1)
      {
        v32 = TIFFDataWidth(*(v31 - 3));
        if (!v32)
        {
          break;
        }

        if (!is_mul_ok(v32, *v31))
        {
          return 0xFFFFFFFFLL;
        }

        v38 = *v31 * v32;
        if (v38 >= 9)
        {
          v39 = *v31 * v32;
        }

        else
        {
          v39 = 0;
        }

        if (v38 < 5)
        {
          v38 = 0;
        }

        if ((*(a1 + 18) & 8) != 0)
        {
          v38 = v39;
        }

        if (__CFADD__(v38, v30))
        {
          return 0xFFFFFFFFLL;
        }

        v30 += v38;
        --a3;
        v31 += 4;
        if (!a3)
        {
          goto LABEL_32;
        }
      }

      TIFFErrorExtR(a1, "EstimateStripByteCounts", "Cannot determine size of unknown tag type %hu", v33, v34, v35, v36, v37, *(v31 - 3));
      return 0xFFFFFFFFLL;
    }

LABEL_32:
    if (!v13)
    {
      v13 = (*(a1 + 1240))(*(a1 + 1200));
    }

    if (v13 >= v30)
    {
      v40 = v30;
    }

    else
    {
      v40 = 0;
    }

    v41 = v13 - v40;
    if (*(a1 + 170) == 2)
    {
      v41 /= *(a1 + 130);
    }

    v42 = *(a1 + 228);
    v43 = *(a1 + 240);
    if (v42)
    {
      for (i = 0; i != v42; ++i)
      {
        *(v43 + 8 * i) = v41;
      }

      v45 = i - 1;
    }

    else
    {
      v45 = 0xFFFFFFFFLL;
    }

    v54 = *(*(a1 + 232) + 8 * v45);
    v55 = *(v43 + 8 * v45);
    if (__CFADD__(v55, v54))
    {
      return 0xFFFFFFFFLL;
    }

    if (v55 + v54 > v13)
    {
      v56 = v13 >= v54;
      v57 = v13 - v54;
      if (!v56)
      {
        v57 = 0;
      }

      *(v43 + 8 * v45) = v57;
    }
  }

LABEL_57:
  v58 = *(a1 + 72);
  *(a1 + 72) = v58 | 0x1000000;
  if ((v58 & 0x20000) == 0)
  {
    *(a1 + 132) = *(a1 + 92);
  }

  return 1;
}

uint64_t ByteCountLooksBad(uint64_t a1)
{
  v2 = _TIFFGetStrileOffsetOrByteCountValue(a1, 0);
  result = _TIFFGetStrileOffsetOrByteCountValue(a1, 0);
  if (result)
  {
    if (v2)
    {
      if (*(a1 + 120) != 1)
      {
        return 0;
      }

      v4 = result;
      v5 = (*(a1 + 1240))(*(a1 + 1200));
      if (v5 < v4 || v2 <= v5 - v4)
      {
        if (!*(a1 + 12))
        {
          v14 = _cg_TIFFScanlineSize64(a1, v6, v7, v8, v9, v10, v11, v12);
          v15 = *(a1 + 92);
          if (v15)
          {
            v16 = v14;
            v17 = (*(a1 + 92) * v14) >> 64;
            result = 1;
            if (v17 || v2 < v16 * v15)
            {
              return result;
            }
          }
        }

        return 0;
      }
    }

    return 1;
  }

  return result;
}

void ChopUpSingleUncompressedStrip(uint64_t a1)
{
  if (_TIFFGetStrileOffsetOrByteCountValue(a1, 0) || !*(a1 + 12))
  {
    v2 = _TIFFGetStrileOffsetOrByteCountValue(a1, 0);
    if (*(a1 + 170) != 1)
    {
      ChopUpSingleUncompressedStrip_cold_1();
    }

    v9 = v2;
    if (*(a1 + 122) != 6 || (*(a1 + 17) & 0x40) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = *(a1 + 338);
    }

    v11 = TIFFVTileSize64(a1, v10, v3, v4, v5, v6, v7, v8);
    v12 = v11;
    if (v11 <= 0x2000)
    {
      if (!v11)
      {
        return;
      }

      v13 = 0x2000u / v11;
      v10 = (v10 * v13);
      v12 = v11 * v13;
    }

    if (v10)
    {
      if (v10 < *(a1 + 132))
      {
        v14 = *(a1 + 92);
        if (v14 < -v10)
        {
          v15 = v10 + v14 - 1;
          if (v10 <= v15)
          {
            v16 = v15 / v10;
            v17 = v15 / v10 >= 0xF4241 && *(a1 + 12) == 0;
            if (!v17 || v9 < (*(a1 + 1240))(*(a1 + 1200)) && v12 <= ((*(a1 + 1240))(*(a1 + 1200)) - v9) / (v16 - 1))
            {

              allocChoppedUpStripArrays(a1, v16, v12, v10);
            }
          }
        }
      }
    }
  }
}

void TryChopUpUncompressedBigTiff(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _cg_TIFFStripSize64(a1, a2, a3, a4, a5, a6, a7, a8);
  if (*(a1 + 170) != 1)
  {
    TryChopUpUncompressedBigTiff_cold_1();
  }

  if (*(a1 + 120) != 1)
  {
    TryChopUpUncompressedBigTiff_cold_2();
  }

  if ((*(a1 + 16) & 0x8400) != 0x8000)
  {
    TryChopUpUncompressedBigTiff_cold_3();
  }

  v10 = v9;
  if (!(v9 >> 31))
  {
    TryChopUpUncompressedBigTiff_cold_5();
  }

  if (_TIFFGetStrileOffsetOrByteCountValue(a1, 0) || !*(a1 + 12))
  {
    v17 = *(a1 + 122) != 6 || (*(a1 + 17) & 0x40) != 0 ? 1 : *(a1 + 338);
    v18 = TIFFVStripSize64(a1, v17, v11, v12, v13, v14, v15, v16);
    if (v18 - 0x80000000 >= 0xFFFFFFFF80000001)
    {
      v19 = v18;
      v20 = *(a1 + 228);
      if (v20)
      {
        v21 = 0;
        do
        {
          v22 = v20 - 1;
          v23 = _TIFFGetStrileOffsetOrByteCountValue(a1, v21);
          if (v21 == v22)
          {
            if (v23 < TIFFVStripSize64(a1, (*(a1 + 92) - *(a1 + 132) * v21), v24, v25, v26, v27, v28, v29))
            {
              return;
            }
          }

          else
          {
            if (v23 != v10)
            {
              return;
            }

            if (v21)
            {
              v30 = _TIFFGetStrileOffsetOrByteCountValue(a1, v21);
              v31 = _TIFFGetStrileOffsetOrByteCountValue(a1, (v21 - 1));
              if (v30 != _TIFFGetStrileOffsetOrByteCountValue(a1, (v21 - 1)) + v31)
              {
                return;
              }
            }
          }

          v21 = (v21 + 1);
          v20 = *(a1 + 228);
        }

        while (v21 < v20);
        v32 = v20 - 1;
      }

      else
      {
        v32 = 0xFFFFFFFFLL;
      }

      if (v19 > 0x20000000)
      {
        v33 = 1;
      }

      else
      {
        v33 = 0x20000000 / v19;
      }

      v34 = v19 * v33;
      if ((v19 * v33) >> 31)
      {
        TryChopUpUncompressedBigTiff_cold_4();
      }

      v35 = (v33 * v17);
      if (v35)
      {
        v36 = *(a1 + 92);
        if (v36 < -v35)
        {
          v37 = v35 + v36 - 1;
          if (v35 <= v37)
          {
            v38 = v37 / v35;
            v39 = v37 / v35 >= 0xF4241 && *(a1 + 12) == 0;
            if (!v39 || (v40 = _TIFFGetStrileOffsetOrByteCountValue(a1, v32), v41 = (*(a1 + 1240))(*(a1 + 1200)), v42 = _TIFFGetStrileOffsetOrByteCountValue(a1, (*(a1 + 228) - 1)), v41 >= v40) && v42 <= v41 - v40)
            {

              allocChoppedUpStripArrays(a1, v38, v34, v35);
            }
          }
        }
      }
    }
  }
}

uint64_t _TIFFGetOffsetFromDirNumber(uint64_t a1, unsigned int a2, void *a3)
{
  result = *(a1 + 56);
  if (result)
  {
    v5[0] = 0;
    v5[1] = a2;
    result = TIFFHashSetLookup(result, v5);
    if (result)
    {
      *a3 = *result;
      return 1;
    }
  }

  return result;
}

uint64_t _TIFFRemoveEntryFromDirectoryListByOffset(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v14 = a2;
    v15 = 0;
    v4 = TIFFHashSetLookup(v3, &v14);
    if (v4)
    {
      v10 = v4;
      LODWORD(v15) = *(v4 + 2);
      v11 = *(a1 + 56);
      if (!v11)
      {
        TIFFErrorExtR(a1, "_TIFFRemoveEntryFromDirectoryListByOffset", "Unexpectedly tif_map_dir_number_to_offset is missing but tif_map_dir_offset_to_number exists.", v5, v6, v7, v8, v9, v14);
        return 0;
      }

      v12 = TIFFHashSetLookup(v11, &v14);
      if (v12)
      {
        TIFFHashSetRemove(*(a1 + 56), v12);
        TIFFHashSetRemove(*(a1 + 48), v10);
      }
    }
  }

  return 1;
}

uint64_t _TIFFGetStrileOffsetOrByteCountValue(uint64_t a1, uint64_t a2)
{
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = v6;
  v12 = v5;
  v13 = v4;
  v14 = v3;
  v15 = v2;
  v70 = *MEMORY[0x1E69E9840];
  if (v6)
  {
    *v6 = 0;
  }

  v16 = *(v2 + 16);
  if ((v16 & 0x5000000) != 0x1000000)
  {
    goto LABEL_9;
  }

  if ((v16 & 0x2000000) == 0 || (v17 = *(v4 + 8), v17 <= 4))
  {
    v18 = _TIFFFillStrilesInternal(v2, 1);
    if (v11 && !v18)
    {
      *v11 = 1;
    }

    goto LABEL_9;
  }

  if (v17 <= v3)
  {
    goto LABEL_66;
  }

  v20 = v3;
  v21 = *(v2 + 248);
  if (v21 <= v3)
  {
    v22 = *(v2 + 248);
    if (v3 >= 0xF4241)
    {
      if (v3 > (*(v2 + 1240))(*(v2 + 1200), v10) >> 2)
      {
        TIFFErrorExtR(v15, "_TIFFFetchStrileValue", "File too short", v23, v24, v25, v26, v27, v63);
        goto LABEL_66;
      }

      v22 = *(v15 + 248);
    }

    v28 = *(v15 + 228);
    if (v22 || v28 >= 0x100000)
    {
      v29 = (v14 + 1) > 0x80000 ? v14 + 1 : 0x80000;
      if (v29 << ((v14 + 1) < 0x7FFFFFFF) < v28)
      {
        v28 = v29 << ((v14 + 1) < 0x7FFFFFFF);
      }
    }

    if (v28 <= v14)
    {
      _TIFFGetStrileOffsetOrByteCountValue_cold_1();
    }

    v30 = malloc_type_realloc(*(v15 + 232), 8 * v28, 0x100004000313F17uLL);
    v31 = malloc_type_realloc(*(v15 + 240), 8 * v28, 0x100004000313F17uLL);
    if (v30)
    {
      *(v15 + 232) = v30;
      if (v31)
      {
        *(v15 + 240) = v31;
        *(v15 + 248) = v28;
        memset(&v30[8 * v21], 255, 8 * (v28 - v21));
        memset((*(v15 + 240) + 8 * v21), 255, 8 * (*(v15 + 248) - v21));
LABEL_32:
        v20 = v14;
        goto LABEL_33;
      }
    }

    else if (v31)
    {
      *(v15 + 240) = v31;
    }

    TIFFErrorExtR(v15, "_TIFFFetchStrileValue", "Cannot allocate strip offset and bytecount arrays", v32, v33, v34, v35, v36, v63);
    free(*(v15 + 232));
    *(v15 + 232) = 0;
    free(*(v15 + 240));
    *(v15 + 240) = 0;
    *(v15 + 248) = 0;
    goto LABEL_32;
  }

LABEL_33:
  v37 = *v12;
  if (!*v12)
  {
    goto LABEL_66;
  }

  v38 = *(v15 + 248);
  if (v38 <= v14)
  {
    goto LABEL_66;
  }

  if (*(v37 + 8 * v20) != -1)
  {
    goto LABEL_9;
  }

  if (*&v13[1] <= 4uLL)
  {
    _TIFFGetStrileOffsetOrByteCountValue_cold_2();
  }

  v39 = *(v15 + 16);
  v40 = v13->u16[1];
  if (v40 > 0xF)
  {
    if (v40 != 16 && v40 != 17)
    {
      goto LABEL_44;
    }

    v41 = 8;
  }

  else
  {
    if (v40 != 3)
    {
      if (v40 == 4)
      {
        v41 = 4;
        goto LABEL_46;
      }

LABEL_44:
      v42 = "Invalid type for [Strip|Tile][Offset/ByteCount] tag";
LABEL_63:
      TIFFErrorExtR(v15, "_TIFFPartialReadStripArray", v42, v5, v6, v7, v8, v9, v63);
      *(v37 + 8 * v14) = 0;
      goto LABEL_65;
    }

    v41 = 2;
  }

LABEL_46:
  v67 = v41;
  bzero(v69, 0x2000uLL);
  if ((v39 & 0x80000) == 0)
  {
    v44 = v13[2].u32[0];
    v68.i32[0] = v44;
    if ((v39 & 0x80) != 0)
    {
      TIFFSwabLong(&v68, v43);
      v44 = v68.i32[0];
    }

    v45 = v44;
    goto LABEL_53;
  }

  v45 = v13[2];
  v68 = v45;
  if ((v39 & 0x80) != 0)
  {
    TIFFSwabLong8(&v68);
    v45 = v68;
  }

  if ((*&v45 & 0x8000000000000000) != 0)
  {
    v63 = v14;
    v42 = "Cannot read offset/size for strile %d";
    goto LABEL_63;
  }

LABEL_53:
  v66 = v39;
  v46 = *&v45 + v67 * v14;
  v47 = v46 & 0xFFFFFFFFFFFFF000;
  v48 = (v46 & 0xFFFFFFFFFFFFF000) + 4096;
  if (v46 + v67 > v48)
  {
    v48 = (v46 & 0xFFFFFFFFFFFFF000) + 0x2000;
  }

  if (*&v45 + v67 * v38 < v48)
  {
    v48 = *&v45 + v67 * v38;
  }

  if (v48 <= v47)
  {
    TIFFErrorExtR(v15, "_TIFFPartialReadStripArray", "Cannot read offset/size for strile %d", v5, v6, v7, v8, v9, v14);
    *(v37 + 8 * v14) = 0;
    goto LABEL_65;
  }

  v64 = v48 - v47;
  v65 = v48;
  if (!_TIFFSeekOK(v15, v47))
  {
    *(v37 + 8 * v14) = 0;
    goto LABEL_65;
  }

  if ((*(v15 + 1208))(*(v15 + 1200), v69, v64) < v64)
  {
    TIFFErrorExtR(v15, "_TIFFPartialReadStripArray", "Cannot read offset/size for strile around ~%d", v49, v50, v51, v52, v53, v14);
LABEL_65:
    *(*v12 + 8 * v20) = 0;
    goto LABEL_66;
  }

  v55 = (v46 & 0xFFFu) / v67;
  if (v55 >= v14)
  {
    v55 = v14;
  }

  v56 = v14 - v55;
  v57 = v65;
  if (v14 - v55 < v38)
  {
    v58 = -v55;
    v59 = &v69[(v46 & 0xFFF) + v67 * v58];
    v60 = *&v45 + v67 + v67 * (v14 + v58);
    do
    {
      if (v60 > v57)
      {
        break;
      }

      v61 = v13->u16[1];
      if (v61 == 16)
      {
        goto LABEL_79;
      }

      if (v61 == 4)
      {
        v62 = *v59;
        v68.i32[0] = *v59;
        if (v66 < 0)
        {
          v54 = TIFFSwabLong(&v68, v54);
          v57 = v65;
          v62 = v68.u32[0];
        }

        goto LABEL_83;
      }

      if (v61 != 3)
      {
LABEL_79:
        v62 = *v59;
        v68 = *v59;
        if (v66 < 0)
        {
          v54 = TIFFSwabLong8(&v68);
          v57 = v65;
          v62 = v68;
        }
      }

      else
      {
        v62 = *v59;
        v68.i16[0] = *v59;
        if (v66 < 0)
        {
          TIFFSwabShort(&v68);
          v57 = v65;
          v62 = v68.u16[0];
        }
      }

LABEL_83:
      *(v37 + 8 * v56) = v62;
      v59 = (v59 + v67);
      ++v56;
      v60 += v67;
    }

    while (v56 < v38);
  }

LABEL_9:
  if (*v12 && *(v15 + 228) > v14)
  {
    return *(*v12 + 8 * v14);
  }

LABEL_66:
  result = 0;
  if (v11)
  {
    *v11 = 1;
  }

  return result;
}

uint64_t _TIFFFillStrilesInternal(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x5000000) != 0x1000000)
  {
    return 1;
  }

  v6 = a1 + 232;
  v5 = *(a1 + 232);
  if ((v2 & 0x2000000) != 0)
  {
    free(v5);
    free(*(a1 + 240));
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    *(a1 + 16) &= ~0x2000000u;
  }

  else if (v5)
  {
    return 1;
  }

  if (!*(a1 + 264))
  {
    return 0;
  }

  v7 = TIFFFetchStripThing(a1, (a1 + 256), *(a1 + 228), v6);
  if (a2)
  {
    if (TIFFFetchStripThing(a1, (a1 + 288), *(a1 + 228), (a1 + 240)))
    {
      v7 = v7;
    }

    else
    {
      v7 = 0;
    }
  }

  _TIFFmemset((a1 + 256), 0, 0x20uLL);
  _TIFFmemset((a1 + 288), 0, 0x20uLL);
  return v7;
}

uint64_t TIFFReadDirEntryCheckedLong8(uint64_t a1, int8x8_t *a2, int8x8_t *__dst, uint8x8_t a4)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80000) != 0)
  {
    *__dst = a2[2];
    if ((v5 & 0x80) == 0)
    {
      return 0;
    }

LABEL_8:
    TIFFSwabLong8(__dst);
    return 0;
  }

  v7 = a2[2].u32[0];
  v9 = v7;
  if ((v5 & 0x80) != 0)
  {
    TIFFSwabLong(&v9, a4);
    v7 = v9;
  }

  result = TIFFReadDirEntryData(a1, v7, 8, __dst);
  if (!result)
  {
    if ((*(a1 + 16) & 0x80) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t TIFFReadDirEntryData(uint64_t a1, uint64_t a2, int64_t __n, void *__dst)
{
  if (__n <= 0)
  {
    TIFFReadDirEntryData_cold_1();
  }

  if ((*(a1 + 17) & 8) == 0)
  {
    if (_TIFFSeekOK(a1, a2) && (*(a1 + 1208))(*(a1 + 1200), __dst, __n) == __n)
    {
      return 0;
    }

    return 3;
  }

  if (__CFADD__(__n, a2) || (__n + a2) > *(a1 + 1176))
  {
    return 3;
  }

  _TIFFmemcpy(__dst, (*(a1 + 1168) + a2), __n);
  return 0;
}

uint64_t TIFFReadDirEntryArrayWithLimit(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, void **a5, unint64_t a6)
{
  v12 = TIFFDataWidth(*(a2 + 2));
  v18 = *(a2 + 8);
  if (v18 >= a6)
  {
    v19 = a6;
  }

  else
  {
    v19 = *(a2 + 8);
  }

  if (v19)
  {
    v20 = v12 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v22 = v12;
    if (v18 >= 0xA)
    {
      LODWORD(v23) = 10;
    }

    else
    {
      v23 = *(a2 + 8);
    }

    if (v19 > 0x7FFFFFFF / v12 || v19 > 0x7FFFFFFF / a4)
    {
      return 6;
    }

    *a3 = v19;
    v25 = v12 * v19;
    if (!v25)
    {
      TIFFReadDirEntryArrayWithLimit_cold_1();
    }

    if (v25 >= 0x6400001 && (*(a1 + 1240))(*(a1 + 1200)) < v25)
    {
      TIFFWarningExtR(a1, "ReadDirEntryArray", "Requested memory size for tag %d (0x%x) %u is greater than filesize %llu. Memory not allocated, tag not read", v26, v13, v14, v15, v16, *a2);
      return 7;
    }

    v27 = *(a1 + 16);
    if ((v27 & 0x800) != 0)
    {
      if (*(a1 + 1176) < v25)
      {
        return 3;
      }
    }

    else
    {
      v28 = v27 & 0x80000;
      if (v25 >= 9 && v28 || v25 >= 5 && !v28)
      {
        v29 = 0;
        v35 = 0;
        goto LABEL_31;
      }
    }

    v30 = _TIFFCheckMalloc(a1, *a3, v22, "ReadDirEntryArray", v13, v14, v15, v16);
    v35 = v30;
    if (!v30)
    {
      return 7;
    }

    v29 = v30;
    v27 = *(a1 + 16);
LABEL_31:
    v31 = v22 * v23;
    if ((v27 & 0x80000) != 0)
    {
      if (v31 > 8 || v25 > 8)
      {
        *v34 = *(a2 + 16);
        if ((v27 & 0x80) != 0)
        {
          TIFFSwabLong8(v34);
          v27 = *(a1 + 16);
        }

        v32 = *v34;
        if ((v27 & 0x800) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_45;
      }
    }

    else if (v31 > 4 || v25 > 4)
    {
      v34[0] = *(a2 + 16);
      if ((v27 & 0x80) != 0)
      {
        TIFFSwabLong(v34, v17);
        v27 = *(a1 + 16);
      }

      v32 = v34[0];
      if ((v27 & 0x800) == 0)
      {
LABEL_37:
        v33 = TIFFReadDirEntryDataAndRealloc(a1, v32, v25, &v35);
        goto LABEL_46;
      }

LABEL_45:
      v33 = TIFFReadDirEntryData(a1, v32, v25, v29);
LABEL_46:
      v21 = v33;
      if (v33)
      {
        free(v35);
        return v21;
      }

LABEL_48:
      v21 = 0;
      *a5 = v35;
      return v21;
    }

    _TIFFmemcpy(v29, (a2 + 16), v25);
    goto LABEL_48;
  }

  v21 = 0;
  *a5 = 0;
  return v21;
}

uint64_t TIFFReadDirEntryDataAndRealloc(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  if ((*(a1 + 17) & 8) != 0)
  {
    TIFFReadDirEntryDataAndRealloc_cold_1();
  }

  if (!_TIFFSeekOK(a1, a2))
  {
    return 3;
  }

  v7 = 0;
  v8 = 0x100000;
  while (1)
  {
    if (a3 <= v7)
    {
      return 0;
    }

    v9 = a3 - v7 >= v8;
    v10 = v8 < 1048576000;
    v11 = v10 && v9;
    v12 = v10 && v9 ? v8 : a3 - v7;
    v13 = malloc_type_realloc(*a4, v12 + v7, 0x100004077774924uLL);
    if (!v13)
    {
      break;
    }

    if (v11)
    {
      v8 *= 10;
    }

    *a4 = v13;
    v19 = (*(a1 + 1208))(*(a1 + 1200), &v13[v7], v12);
    v7 += v19;
    if (v19 != v12)
    {
      return 3;
    }
  }

  TIFFErrorExtR(a1, *a1, "Failed to allocate memory for %s (%lld elements of %lld bytes each)", v14, v15, v16, v17, v18, "TIFFReadDirEntryArray");
  return 7;
}

uint64_t cmpTIFFEntryOffsetAndLength(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t TIFFReadDirEntryByteArray(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *(a2 + 2);
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x303DE;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  LODWORD(size) = 0;
  v39 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &size, 1u, &v39, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v11 = v39) == 0)
  {
    *a3 = 0;
    return v10;
  }

  v12 = *(a2 + 2);
  if ((v12 - 1) < 2 || v12 == 7)
  {
    goto LABEL_14;
  }

  if (v12 != 6)
  {
    v16 = size;
    v17 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (!v17)
    {
      free(v11);
      return 7;
    }

    v19 = v17;
    v20 = *(a2 + 2);
    if (v20 > 8)
    {
      if (v20 == 9)
      {
        if (v16)
        {
          v30 = v17;
          v31 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              v18 = TIFFSwabLong(v31, v18);
            }

            v32 = *v31;
            if (*v31 > 0xFF)
            {
              goto LABEL_70;
            }

            ++v31;
            *v30++ = v32;
          }

          while (--v16);
        }
      }

      else if (v20 == 16)
      {
        if (v16)
        {
          v36 = v17;
          v37 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v37);
            }

            v38 = *v37;
            if (*v37 > 0xFFuLL)
            {
              goto LABEL_70;
            }

            ++v37;
            *v36++ = v38.i8[0];
          }

          while (--v16);
        }
      }

      else if (v20 == 17 && v16)
      {
        v24 = v17;
        v25 = v11;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(v25);
          }

          v26 = *v25;
          if (*v25 > 0xFFuLL)
          {
            goto LABEL_70;
          }

          ++v25;
          *v24++ = v26.i8[0];
        }

        while (--v16);
      }
    }

    else if (v20 == 3)
    {
      if (v16)
      {
        v27 = v17;
        v28 = v11;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(v28);
          }

          v29 = v28->u16[0];
          if (v29 > 0xFF)
          {
            goto LABEL_70;
          }

          v28 = (v28 + 2);
          *v27++ = v29;
        }

        while (--v16);
      }
    }

    else if (v20 == 4)
    {
      if (v16)
      {
        v33 = v17;
        v34 = v11;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v18 = TIFFSwabLong(v34, v18);
          }

          v35 = *v34;
          if (*v34 > 0xFF)
          {
            goto LABEL_70;
          }

          ++v34;
          *v33++ = v35;
        }

        while (--v16);
      }
    }

    else if (v20 == 8 && v16)
    {
      v21 = v17;
      v22 = v11;
      while (1)
      {
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(v22);
        }

        v23 = v22->u16[0];
        if (v23 > 0xFF)
        {
          break;
        }

        v22 = (v22 + 2);
        *v21++ = v23;
        if (!--v16)
        {
          goto LABEL_69;
        }
      }

LABEL_70:
      free(v11);
      free(v19);
      return 4;
    }

LABEL_69:
    free(v11);
    v10 = 0;
    *a3 = v19;
    return v10;
  }

  if (!size)
  {
LABEL_14:
    v10 = 0;
    *a3 = v39;
    return v10;
  }

  v13 = 0;
  while (1)
  {
    v14 = *(v39 + v13) >> 5;
    if ((v14 & 4) != 0)
    {
      break;
    }

    if (size == ++v13)
    {
      goto LABEL_14;
    }
  }

  v10 = v14 & 4;
  free(v39);
  return v10;
}

uint64_t TIFFReadDirEntryByte(uint64_t a1, int8x8_t *a2, _BYTE *a3, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 <= 6)
  {
    if (a2->u16[1] > 3u)
    {
      if (v8 == 4)
      {
LABEL_22:
        v11 = a2[2].u32[0];
        __dst[0].i32[0] = v11;
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabLong(__dst, a4);
          v11 = __dst[0].i32[0];
        }

        goto LABEL_24;
      }

      if (v8 != 6)
      {
        return result;
      }

      v10 = a2[2].u8[0];
      if (((v10 >> 5) & 4) != 0)
      {
        return (v10 >> 5) & 4;
      }

      result = 0;
LABEL_27:
      *a3 = v10;
      return result;
    }

    if (v8 != 1)
    {
      if (v8 != 3)
      {
        return result;
      }

LABEL_20:
      v11 = a2[2].u16[0];
      __dst[0].i16[0] = a2[2].i16[0];
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(__dst);
        v11 = __dst[0].u16[0];
      }

LABEL_24:
      if (v11 <= 0xFF)
      {
        result = 0;
        *a3 = v11;
        return result;
      }

      return 4;
    }

LABEL_26:
    result = 0;
    LOBYTE(v10) = a2[2].i8[0];
    goto LABEL_27;
  }

  if (a2->u16[1] <= 8u)
  {
    if (v8 != 7)
    {
      if (v8 != 8)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_26;
  }

  switch(v8)
  {
    case 9u:
      goto LABEL_22;
    case 0x10u:
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }

      goto LABEL_29;
    case 0x11u:
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (!result)
      {
LABEL_29:
        if (*__dst <= 0xFFuLL)
        {
          result = 0;
          *a3 = __dst[0].i8[0];
          return result;
        }

        return 4;
      }

      break;
  }

  return result;
}

uint64_t TIFFReadDirEntrySbyte(uint64_t a1, int8x8_t *a2, __int8 *a3, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 <= 6)
  {
    if (a2->u16[1] > 3u)
    {
      if (v8 != 4)
      {
        if (v8 != 6)
        {
          return result;
        }

        result = 0;
        LOBYTE(v12) = a2[2].i8[0];
        goto LABEL_27;
      }

      v11 = a2[2].u32[0];
      __dst[0].i32[0] = v11;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong(__dst, a4);
        v11 = __dst[0].i32[0];
      }
    }

    else
    {
      if (v8 == 1)
      {
LABEL_25:
        v12 = a2[2].u8[0];
        if (((v12 >> 5) & 4) != 0)
        {
          return (v12 >> 5) & 4;
        }

        result = 0;
LABEL_27:
        *a3 = v12;
        return result;
      }

      if (v8 != 3)
      {
        return result;
      }

      v11 = a2[2].u16[0];
      __dst[0].i16[0] = a2[2].i16[0];
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(__dst);
        v11 = __dst[0].u16[0];
      }
    }

    if (v11 > 0x7F)
    {
      return 4;
    }

LABEL_35:
    result = 0;
    *a3 = v11;
    return result;
  }

  if (a2->u16[1] <= 8u)
  {
    if (v8 != 7)
    {
      if (v8 != 8)
      {
        return result;
      }

      v11 = a2[2].u16[0];
      __dst[0].i16[0] = a2[2].i16[0];
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(__dst);
        v11 = __dst[0].u16[0];
      }

      if (v11 != v11)
      {
        return 4;
      }

      goto LABEL_35;
    }

    goto LABEL_25;
  }

  switch(v8)
  {
    case 9u:
      v11 = a2[2].u32[0];
      __dst[0].i32[0] = v11;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong(__dst, a4);
        v11 = __dst[0].i32[0];
      }

      if (v11 != v11)
      {
        return 4;
      }

      goto LABEL_35;
    case 0x10u:
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }

      v10 = __dst[0].i8[0];
      if (*__dst > 0x7FuLL)
      {
        return 4;
      }

      goto LABEL_39;
    case 0x11u:
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (!result)
      {
        v10 = __dst[0].i8[0];
        if (*__dst != __dst[0].i8[0])
        {
          return 4;
        }

LABEL_39:
        result = 0;
        *a3 = v10;
      }

      break;
  }

  return result;
}

uint64_t TIFFReadDirEntrySshort(uint64_t a1, int8x8_t *a2, _BYTE *a3, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 <= 7)
  {
    if (a2->u16[1] <= 3u)
    {
      if (v8 != 1)
      {
        if (v8 != 3)
        {
          return result;
        }

        v10 = a2[2].u16[0];
        __dst[0].i16[0] = a2[2].i16[0];
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(__dst);
          v10 = __dst[0].u16[0];
        }

        result = (v10 >> 13) & 4;
        if (((v10 >> 13) & 4) != 0)
        {
          return result;
        }

LABEL_35:
        *a3 = v10;
        return result;
      }

      result = 0;
      v11 = a2[2].u8[0];
LABEL_27:
      *a3 = v11;
      return result;
    }

    if (v8 != 4)
    {
      if (v8 != 6)
      {
        return result;
      }

      result = 0;
      v11 = a2[2].i8[0];
      goto LABEL_27;
    }

    v10 = a2[2].u32[0];
    __dst[0].i32[0] = v10;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(__dst, a4);
      v10 = __dst[0].i32[0];
    }

    if (!(v10 >> 15))
    {
LABEL_34:
      result = 0;
      goto LABEL_35;
    }

    return 4;
  }

  if (a2->u16[1] > 0xFu)
  {
    if (v8 == 16)
    {
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }

      v12 = __dst[0].i16[0];
      if (*__dst >> 15)
      {
        return 4;
      }
    }

    else
    {
      if (v8 != 17)
      {
        return result;
      }

      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }

      v12 = __dst[0].i16[0];
      if (*__dst != __dst[0].i16[0])
      {
        return 4;
      }
    }

    result = 0;
    *a3 = v12;
    return result;
  }

  if (v8 != 8)
  {
    if (v8 != 9)
    {
      return result;
    }

    v10 = a2[2].u32[0];
    __dst[0].i32[0] = v10;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(__dst, a4);
      v10 = __dst[0].i32[0];
    }

    if (v10 == v10)
    {
      goto LABEL_34;
    }

    return 4;
  }

  *a3 = a2[2].i16[0];
  if ((*(a1 + 16) & 0x80) != 0)
  {
    TIFFSwabShort(a3);
  }

  return 0;
}

uint64_t TIFFReadDirEntryLong(uint64_t a1, int8x8_t *a2, __int32 *a3, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 > 7)
  {
    if (a2->u16[1] > 0xFu)
    {
      if (v8 == 16)
      {
        __dst[0] = 0;
        result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
        if (result)
        {
          return result;
        }
      }

      else
      {
        if (v8 != 17)
        {
          return result;
        }

        __dst[0] = 0;
        result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
        if (result)
        {
          return result;
        }
      }

      if (HIDWORD(*__dst))
      {
        return 4;
      }

      result = 0;
      *a3 = __dst[0].i32[0];
      return result;
    }

    if (v8 == 8)
    {
      v12 = a2[2].u16[0];
      __dst[0].i16[0] = a2[2].i16[0];
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(__dst);
        v12 = __dst[0].u16[0];
      }

      result = (v12 >> 13) & 4;
      if (((v12 >> 13) & 4) == 0)
      {
        v11 = v12;
LABEL_38:
        *a3 = v11;
      }
    }

    else if (v8 == 9)
    {
      v10 = a2[2].u32[0];
      __dst[0].i32[0] = v10;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong(__dst, a4);
        v10 = __dst[0].i32[0];
      }

      result = (v10 >> 29) & 4;
      if (((v10 >> 29) & 4) == 0)
      {
LABEL_16:
        *a3 = v10;
      }
    }
  }

  else
  {
    if (a2->u16[1] <= 3u)
    {
      if (v8 != 1)
      {
        if (v8 != 3)
        {
          return result;
        }

        v10 = a2[2].u16[0];
        __dst[0].i16[0] = a2[2].i16[0];
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(__dst);
          v10 = __dst[0].u16[0];
        }

        result = 0;
        goto LABEL_16;
      }

      result = 0;
      v11 = a2[2].u8[0];
      goto LABEL_38;
    }

    if (v8 != 4)
    {
      if (v8 != 6)
      {
        return result;
      }

      v11 = a2[2].i8[0];
      if (((v11 >> 5) & 4) != 0)
      {
        return (v11 >> 5) & 4;
      }

      result = 0;
      goto LABEL_38;
    }

    *a3 = a2[2].i32[0];
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(a3, a4);
    }

    return 0;
  }

  return result;
}

uint64_t TIFFReadDirEntrySlong(uint64_t a1, int8x8_t *a2, __int32 *a3, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 <= 7)
  {
    if (a2->u16[1] <= 3u)
    {
      if (v8 != 1)
      {
        if (v8 != 3)
        {
          return result;
        }

        v10 = a2[2].u16[0];
        __dst[0].i16[0] = a2[2].i16[0];
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(__dst);
          v10 = __dst[0].u16[0];
        }

        result = 0;
        goto LABEL_32;
      }

      result = 0;
      v11 = a2[2].u8[0];
LABEL_28:
      *a3 = v11;
      return result;
    }

    if (v8 != 4)
    {
      if (v8 != 6)
      {
        return result;
      }

      result = 0;
      v11 = a2[2].i8[0];
      goto LABEL_28;
    }

    v10 = a2[2].u32[0];
    __dst[0].i32[0] = v10;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(__dst, a4);
      v10 = __dst[0].i32[0];
    }

    result = (v10 >> 29) & 4;
    if (((v10 >> 29) & 4) == 0)
    {
LABEL_32:
      *a3 = v10;
      return result;
    }

    return result;
  }

  if (a2->u16[1] > 0xFu)
  {
    if (v8 == 16)
    {
      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }

      v12 = __dst[0].i32[0];
      if (*__dst >> 31)
      {
        return 4;
      }
    }

    else
    {
      if (v8 != 17)
      {
        return result;
      }

      __dst[0] = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
      if (result)
      {
        return result;
      }

      v12 = __dst[0].i32[0];
      if (*__dst != __dst[0].i32[0])
      {
        return 4;
      }
    }

    result = 0;
    *a3 = v12;
    return result;
  }

  if (v8 == 8)
  {
    v13 = a2[2].i16[0];
    __dst[0].i16[0] = v13;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabShort(__dst);
      v13 = __dst[0].i16[0];
    }

    result = 0;
    v11 = v13;
    goto LABEL_28;
  }

  if (v8 == 9)
  {
    *a3 = a2[2].i32[0];
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(a3, a4);
    }

    return 0;
  }

  return result;
}

uint64_t TIFFReadDirEntryLong8(uint64_t a1, int8x8_t *a2, int8x8_t *__dst, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  v6 = a2->u16[1];
  result = 2;
  if (v6 <= 7)
  {
    if (a2->u16[1] > 3u)
    {
      if (v6 != 4)
      {
        if (v6 != 6)
        {
          return result;
        }

        v10.i32[0] = a2[2].u8[0];
        if (((v10.i32[0] >> 5) & 4) != 0)
        {
          return (v10.i32[0] >> 5) & 4;
        }

        result = 0;
        v10 = v10.i8[0];
        goto LABEL_33;
      }

      v8 = a2[2].u32[0];
      __dsta.i32[0] = v8;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong(&__dsta, a4);
        v8 = __dsta.i32[0];
      }

      goto LABEL_32;
    }

    if (v6 != 1)
    {
      if (v6 != 3)
      {
        return result;
      }

      v8 = a2[2].u16[0];
      __dsta.i16[0] = a2[2].i16[0];
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(&__dsta);
        v8 = __dsta.u16[0];
      }

LABEL_32:
      result = 0;
      v10 = v8;
      goto LABEL_33;
    }

    result = 0;
    v10 = a2[2].u8[0];
LABEL_33:
    *__dst = v10;
    return result;
  }

  if (a2->u16[1] > 0xFu)
  {
    if (v6 == 16)
    {

      return TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
    }

    else if (v6 == 17)
    {
      __dsta = 0;
      result = TIFFReadDirEntryCheckedLong8(a1, a2, &__dsta, a4);
      if (!result)
      {
        v10 = __dsta;
        if (((*&__dsta >> 61) & 4) != 0)
        {
          return (*&__dsta >> 61) & 4;
        }

        result = 0;
        goto LABEL_33;
      }
    }
  }

  else if (v6 == 8)
  {
    v11 = a2[2].u16[0];
    __dsta.i16[0] = a2[2].i16[0];
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabShort(&__dsta);
      v11 = __dsta.u16[0];
    }

    result = (v11 >> 13) & 4;
    if (((v11 >> 13) & 4) == 0)
    {
      v10 = v11;
      goto LABEL_33;
    }
  }

  else if (v6 == 9)
  {
    v9 = a2[2].u32[0];
    __dsta.i32[0] = v9;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(&__dsta, a4);
      v9 = __dsta.i32[0];
    }

    result = (v9 >> 29) & 4;
    if (((v9 >> 29) & 4) == 0)
    {
      v10 = v9;
      goto LABEL_33;
    }
  }

  return result;
}

uint64_t TIFFReadDirEntrySlong8(uint64_t a1, int8x8_t *a2, int8x8_t *__dst, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  v6 = a2->u16[1];
  result = 2;
  if (v6 <= 7)
  {
    if (a2->u16[1] > 3u)
    {
      if (v6 != 4)
      {
        if (v6 != 6)
        {
          return result;
        }

        result = 0;
        v10 = a2[2].i8[0];
        goto LABEL_30;
      }

      v8 = a2[2].u32[0];
      __dsta.i32[0] = v8;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong(&__dsta, a4);
        v8 = __dsta.i32[0];
      }
    }

    else
    {
      if (v6 == 1)
      {
        result = 0;
        v10 = a2[2].u8[0];
LABEL_30:
        *__dst = v10;
        return result;
      }

      if (v6 != 3)
      {
        return result;
      }

      v8 = a2[2].u16[0];
      __dsta.i16[0] = a2[2].i16[0];
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(&__dsta);
        v8 = __dsta.u16[0];
      }
    }

    result = 0;
    v10 = v8;
    goto LABEL_30;
  }

  if (a2->u16[1] <= 0xFu)
  {
    if (v6 == 8)
    {
      v11 = a2[2].i16[0];
      __dsta.i16[0] = v11;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(&__dsta);
        v11 = __dsta.i16[0];
      }

      result = 0;
      v10 = v11;
    }

    else
    {
      if (v6 != 9)
      {
        return result;
      }

      v9 = a2[2].i32[0];
      __dsta.i32[0] = v9;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong(&__dsta, a4);
        v9 = __dsta.i32[0];
      }

      result = 0;
      v10 = v9;
    }

    goto LABEL_30;
  }

  if (v6 == 16)
  {
    __dsta = 0;
    result = TIFFReadDirEntryCheckedLong8(a1, a2, &__dsta, a4);
    if (!result)
    {
      v10 = __dsta;
      if (((*&__dsta >> 61) & 4) != 0)
      {
        return (*&__dsta >> 61) & 4;
      }

      result = 0;
      goto LABEL_30;
    }
  }

  else if (v6 == 17)
  {

    return TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
  }

  return result;
}

uint64_t TIFFReadDirEntryFloat(uint64_t a1, int8x8_t *a2, __int32 *a3, double a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  __dst[3] = v4;
  __dst[4] = v5;
  v8 = a2->u16[1];
  result = 2;
  if (v8 <= 8)
  {
    if (a2->u16[1] <= 4u)
    {
      if (v8 == 1)
      {
        result = 0;
        LOBYTE(a4) = a2[2].i8[0];
        *&a4 = LODWORD(a4);
      }

      else
      {
        if (v8 == 3)
        {
          v10 = a2[2].u16[0];
          __dst[0].i16[0] = a2[2].i16[0];
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(__dst);
            v10 = __dst[0].u16[0];
          }
        }

        else
        {
          if (v8 != 4)
          {
            return result;
          }

          v10 = a2[2].u32[0];
          __dst[0].i32[0] = v10;
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong(__dst, *&a4);
            v10 = __dst[0].i32[0];
          }
        }

        result = 0;
        *&a4 = v10;
      }

      goto LABEL_45;
    }

    if (v8 != 5)
    {
      if (v8 == 6)
      {
        result = 0;
        v12 = a2[2].i8[0];
      }

      else
      {
        if (v8 != 8)
        {
          return result;
        }

        v11 = a2[2].i16[0];
        __dst[0].i16[0] = v11;
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(__dst);
          v11 = __dst[0].i16[0];
        }

        result = 0;
        v12 = v11;
      }

      *&a4 = v12;
      goto LABEL_45;
    }

    __dst[0] = 0;
    result = TIFFReadDirEntryCheckedRational(a1, a2, __dst, *&a4);
    if (result)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (a2->u16[1] > 0xBu)
  {
    switch(v8)
    {
      case 0xCu:
        __dst[0] = 0;
        result = TIFFReadDirEntryCheckedDouble(a1, a2, __dst, *&a4);
        if (result)
        {
          return result;
        }

        a4 = *__dst;
        if (fabs(*__dst) > 3.40282347e38)
        {
          return 4;
        }

        result = 0;
        goto LABEL_42;
      case 0x10u:
        __dst[0] = 0;
        result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, *&a4);
        if (!result)
        {
          *&a4 = __dst[0];
          goto LABEL_45;
        }

        break;
      case 0x11u:
        __dst[0] = 0;
        result = TIFFReadDirEntryCheckedLong8(a1, a2, __dst, *&a4);
        if (!result)
        {
          *&a4 = __dst[0];
LABEL_45:
          *a3 = LODWORD(a4);
        }

        break;
    }
  }

  else
  {
    switch(v8)
    {
      case 9u:
        v13 = a2[2].i32[0];
        __dst[0].i32[0] = v13;
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabLong(__dst, *&a4);
          v13 = __dst[0].i32[0];
        }

        result = 0;
        *&a4 = v13;
        goto LABEL_45;
      case 0xAu:
        __dst[0] = 0;
        result = TIFFReadDirEntryCheckedSrational(a1, a2, __dst, *&a4);
        if (result)
        {
          return result;
        }

LABEL_41:
        a4 = *__dst;
LABEL_42:
        *&a4 = a4;
        goto LABEL_45;
      case 0xBu:
        LODWORD(a4) = a2[2].i32[0];
        *a3 = LODWORD(a4);
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabLong(a3, *&a4);
        }

        return 0;
    }
  }

  return result;
}

uint64_t TIFFReadDirEntryDouble(uint64_t a1, int8x8_t *a2, int8x8_t *__dst, double a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  v6 = a2->u16[1];
  result = 2;
  if (v6 > 8)
  {
    if (a2->u16[1] > 0xBu)
    {
      switch(v6)
      {
        case 0xCu:

          return TIFFReadDirEntryCheckedDouble(a1, a2, __dst, *&a4);
        case 0x10u:
          __dsta = 0.0;
          result = TIFFReadDirEntryCheckedLong8(a1, a2, &__dsta, *&a4);
          if (result)
          {
            return result;
          }

          a4 = __dsta;
LABEL_48:
          v9 = *&a4;
          goto LABEL_49;
        case 0x11u:
          __dsta = 0.0;
          result = TIFFReadDirEntryCheckedLong8(a1, a2, &__dsta, *&a4);
          if (!result)
          {
            v9 = *&__dsta;
LABEL_49:
            *__dst = v9;
          }

          break;
      }
    }

    else
    {
      if (v6 == 9)
      {
        v12 = a2[2].i32[0];
        LODWORD(__dsta) = v12;
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabLong(&__dsta, *&a4);
          v12 = LODWORD(__dsta);
        }

        result = 0;
        v9 = v12;
        goto LABEL_49;
      }

      if (v6 != 10)
      {
        if (v6 != 11)
        {
          return result;
        }

        LODWORD(a4) = a2[2].i32[0];
        LODWORD(__dsta) = LODWORD(a4);
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabLong(&__dsta, *&a4);
          LODWORD(a4) = LODWORD(__dsta);
        }

        result = 0;
        v9 = *&a4;
        goto LABEL_49;
      }

      return TIFFReadDirEntryCheckedSrational(a1, a2, __dst, *&a4);
    }
  }

  else
  {
    if (a2->u16[1] <= 4u)
    {
      if (v6 != 1)
      {
        if (v6 == 3)
        {
          v8 = a2[2].u16[0];
          LOWORD(__dsta) = a2[2].i16[0];
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(&__dsta);
            v8 = LOWORD(__dsta);
          }
        }

        else
        {
          if (v6 != 4)
          {
            return result;
          }

          v8 = a2[2].u32[0];
          LODWORD(__dsta) = v8;
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong(&__dsta, *&a4);
            v8 = LODWORD(__dsta);
          }
        }

        result = 0;
        v9 = v8;
        goto LABEL_49;
      }

      result = 0;
      LOBYTE(a4) = a2[2].i8[0];
      goto LABEL_48;
    }

    if (v6 != 5)
    {
      if (v6 == 6)
      {
        result = 0;
        v11 = a2[2].i8[0];
      }

      else
      {
        if (v6 != 8)
        {
          return result;
        }

        v10 = a2[2].i16[0];
        LOWORD(__dsta) = v10;
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabShort(&__dsta);
          v10 = LOWORD(__dsta);
        }

        result = 0;
        v11 = v10;
      }

      v9 = v11;
      goto LABEL_49;
    }

    return TIFFReadDirEntryCheckedRational(a1, a2, __dst, *&a4);
  }

  return result;
}

uint64_t TIFFReadDirEntryIfd8(uint64_t a1, int8x8_t *a2, int8x8_t *__dst, uint8x8_t a4)
{
  if (*&a2[1] != 1)
  {
    return 1;
  }

  v6 = a2->u16[1];
  result = 2;
  if (v6 > 0xF)
  {
    if (v6 == 16 || v6 == 18)
    {

      return TIFFReadDirEntryCheckedLong8(a1, a2, __dst, a4);
    }
  }

  else if (v6 == 4 || v6 == 13)
  {
    v9 = a2[2].u32[0];
    v11 = v9;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabLong(&v11, a4);
      v9 = v11;
    }

    result = 0;
    *__dst = v9;
  }

  return result;
}

uint64_t TIFFReadDirEntrySbyteArray(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *(a2 + 2);
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x303DA;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  LODWORD(size) = 0;
  v39 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &size, 1u, &v39, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v11 = v39) == 0)
  {
    *a3 = 0;
    return v10;
  }

  v12 = *(a2 + 2);
  if (v12 != 7)
  {
    if (v12 == 6)
    {
LABEL_14:
      v10 = 0;
      *a3 = v39;
      return v10;
    }

    if (v12 != 1)
    {
      v16 = size;
      v17 = malloc_type_malloc(size, 0x100004077774924uLL);
      if (!v17)
      {
        free(v11);
        return 7;
      }

      v19 = v17;
      v20 = *(a2 + 2);
      if (v20 > 8)
      {
        if (v20 == 9)
        {
          if (v16)
          {
            v30 = v17;
            v31 = v11;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                v18 = TIFFSwabLong(v31, v18);
              }

              v32 = *v31;
              if (v32 != v32)
              {
                goto LABEL_70;
              }

              ++v31;
              *v30++ = v32;
            }

            while (--v16);
          }
        }

        else if (v20 == 16)
        {
          if (v16)
          {
            v36 = v17;
            v37 = v11;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabLong8(v37);
              }

              v38 = *v37;
              if (*v37 > 0x7FuLL)
              {
                goto LABEL_70;
              }

              ++v37;
              *v36++ = v38.i8[0];
            }

            while (--v16);
          }
        }

        else if (v20 == 17 && v16)
        {
          v24 = v17;
          v25 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v25);
            }

            v26 = *v25;
            if (*v25 != v25->i8[0])
            {
              goto LABEL_70;
            }

            ++v25;
            *v24++ = v26.i8[0];
          }

          while (--v16);
        }
      }

      else if (v20 == 3)
      {
        if (v16)
        {
          v27 = v17;
          v28 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabShort(v28);
            }

            v29 = v28->u16[0];
            if (v29 > 0x7F)
            {
              goto LABEL_70;
            }

            v28 = (v28 + 2);
            *v27++ = v29;
          }

          while (--v16);
        }
      }

      else if (v20 == 4)
      {
        if (v16)
        {
          v33 = v17;
          v34 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              v18 = TIFFSwabLong(v34, v18);
            }

            v35 = *v34;
            if (*v34 > 0x7F)
            {
              goto LABEL_70;
            }

            ++v34;
            *v33++ = v35;
          }

          while (--v16);
        }
      }

      else if (v20 == 8 && v16)
      {
        v21 = v17;
        v22 = v11;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(v22);
          }

          v23 = v22->u16[0];
          if (v23 != v23)
          {
            break;
          }

          v22 = (v22 + 2);
          *v21++ = v23;
          if (!--v16)
          {
            goto LABEL_69;
          }
        }

LABEL_70:
        free(v11);
        free(v19);
        return 4;
      }

LABEL_69:
      free(v11);
      v10 = 0;
      *a3 = v19;
      return v10;
    }
  }

  if (!size)
  {
    goto LABEL_14;
  }

  v13 = 0;
  while (1)
  {
    v14 = *(v39 + v13) >> 5;
    if ((v14 & 4) != 0)
    {
      break;
    }

    if (size == ++v13)
    {
      goto LABEL_14;
    }
  }

  v10 = v14 & 4;
  free(v39);
  return v10;
}

uint64_t TIFFReadDirEntrySshortArray(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *(a2 + 2);
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x3035A;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  v41 = 0;
  v40 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v41, 2u, &v40, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v11 = v40) == 0)
  {
    *a3 = 0;
    return v10;
  }

  v12 = *(a2 + 2);
  if (v12 == 8)
  {
    *a3 = v40;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfShort(v11, v41);
    }

    return 0;
  }

  if (v12 != 3)
  {
    v16 = v41;
    v17 = malloc_type_malloc(2 * v41, 0x1000040BDFB0063uLL);
    if (!v17)
    {
      free(v11);
      return 7;
    }

    v19 = v17;
    v20 = *(a2 + 2);
    if (v20 > 8)
    {
      if (v20 == 9)
      {
        if (v16)
        {
          v30 = v17;
          v31 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              v18 = TIFFSwabLong(v31, v18);
            }

            v32 = *v31;
            if (v32 != v32)
            {
              goto LABEL_68;
            }

            ++v31;
            *v30++ = v32;
          }

          while (--v16);
        }
      }

      else if (v20 == 16)
      {
        if (v16)
        {
          v36 = v17;
          v37 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v37);
            }

            v38 = *v37;
            if (*v37 >> 15)
            {
              goto LABEL_68;
            }

            ++v37;
            *v36++ = v38.i16[0];
          }

          while (--v16);
        }
      }

      else if (v20 == 17 && v16)
      {
        v24 = v17;
        v25 = v11;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(v25);
          }

          v26 = *v25;
          if (*v25 != v25->i16[0])
          {
            goto LABEL_68;
          }

          ++v25;
          *v24++ = v26.i16[0];
        }

        while (--v16);
      }
    }

    else
    {
      if (v20 == 1)
      {
        if (v16)
        {
          v27 = v17;
          v28 = v11;
          do
          {
            v29 = v28->u8[0];
            v28 = (v28 + 1);
            *v27++ = v29;
            --v16;
          }

          while (v16);
        }

        goto LABEL_66;
      }

      if (v20 != 4)
      {
        if (v20 == 6 && v16)
        {
          v21 = v17;
          v22 = v11;
          do
          {
            v23 = v22->i8[0];
            v22 = (v22 + 1);
            *v21++ = v23;
            --v16;
          }

          while (v16);
        }

        goto LABEL_66;
      }

      if (v16)
      {
        v33 = v17;
        v34 = v11;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v18 = TIFFSwabLong(v34, v18);
          }

          v35 = *v34;
          if (*v34 >> 15)
          {
            break;
          }

          ++v34;
          *v33++ = v35;
          if (!--v16)
          {
            goto LABEL_66;
          }
        }

LABEL_68:
        free(v11);
        free(v19);
        return 4;
      }
    }

LABEL_66:
    free(v11);
    v10 = 0;
    *a3 = v19;
    return v10;
  }

  v13 = v41;
  if (v41)
  {
    v14 = v40;
    while (1)
    {
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabShort(v14);
      }

      v15 = *v14 >> 13;
      if ((v15 & 4) != 0)
      {
        break;
      }

      v14 += 2;
      if (!--v13)
      {
        goto LABEL_15;
      }
    }

    v10 = v15 & 4;
    free(v11);
  }

  else
  {
LABEL_15:
    v10 = 0;
    *a3 = v11;
  }

  return v10;
}

uint64_t TIFFReadDirEntryLongArray(uint64_t a1, uint64_t a2, __int32 **a3)
{
  v3 = *(a2 + 2);
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x3035A;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  v42 = 0;
  v41 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v42, 4u, &v41, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v12 = v41) == 0)
  {
    *a3 = 0;
    return v10;
  }

  v13 = *(a2 + 2);
  if (v13 == 4)
  {
    *a3 = v41;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(v12, v42, v11);
    }

    return 0;
  }

  if (v13 != 9)
  {
    v17 = v42;
    v18 = malloc_type_malloc(4 * v42, 0x100004052888210uLL);
    if (!v18)
    {
      free(v12);
      return 7;
    }

    v19 = v18;
    v20 = *(a2 + 2);
    if (v20 > 7)
    {
      if (v20 != 8)
      {
        if (v20 == 16)
        {
          if (!v17)
          {
            goto LABEL_66;
          }

          v37 = v18;
          v38 = v12;
          while (1)
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v38);
            }

            v39 = *v38;
            if (HIDWORD(*v38))
            {
              break;
            }

            ++v38;
            *v37++ = v39.i32[0];
            if (!--v17)
            {
              goto LABEL_66;
            }
          }
        }

        else
        {
          if (v20 != 17 || !v17)
          {
            goto LABEL_66;
          }

          v25 = v18;
          v26 = v12;
          while (1)
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v26);
            }

            v27 = *v26;
            if (HIDWORD(*v26))
            {
              break;
            }

            ++v26;
            *v25++ = v27.i32[0];
            if (!--v17)
            {
              goto LABEL_66;
            }
          }
        }

        v10 = 4;
LABEL_70:
        free(v12);
        v24 = v19;
LABEL_71:
        free(v24);
        return v10;
      }

      if (v17)
      {
        v31 = v18;
        v32 = v12;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(v32);
          }

          v33 = *v32;
          if (((v33 >> 13) & 4) != 0)
          {
            break;
          }

          v32 = (v32 + 2);
          *v31++ = v33;
          if (!--v17)
          {
            goto LABEL_66;
          }
        }

        v10 = (v33 >> 13) & 4;
        goto LABEL_70;
      }
    }

    else if (v20 == 1)
    {
      if (v17)
      {
        v28 = v18;
        v29 = v12;
        do
        {
          v30 = *v29;
          v29 = (v29 + 1);
          *v28++ = v30;
          --v17;
        }

        while (v17);
      }
    }

    else if (v20 == 3)
    {
      if (v17)
      {
        v34 = v18;
        v35 = v12;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(v35);
          }

          v36 = *v35;
          v35 = (v35 + 2);
          *v34++ = v36;
          --v17;
        }

        while (v17);
      }
    }

    else if (v20 == 6 && v17)
    {
      v21 = v18;
      v22 = v12;
      while (1)
      {
        v23 = *v22;
        if (((v23 >> 5) & 4) != 0)
        {
          break;
        }

        v22 = (v22 + 1);
        *v21++ = v23;
        if (!--v17)
        {
          goto LABEL_66;
        }
      }

      v10 = (v23 >> 5) & 4;
      goto LABEL_70;
    }

LABEL_66:
    free(v12);
    v10 = 0;
    *a3 = v19;
    return v10;
  }

  v14 = v42;
  if (v42)
  {
    v15 = v41;
    while (1)
    {
      if ((*(a1 + 16) & 0x80) != 0)
      {
        v11 = TIFFSwabLong(v15, v11);
      }

      v16 = *v15 >> 29;
      if ((v16 & 4) != 0)
      {
        break;
      }

      ++v15;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    v10 = v16 & 4;
    v24 = v12;
    goto LABEL_71;
  }

LABEL_15:
  v10 = 0;
  *a3 = v12;
  return v10;
}

uint64_t TIFFReadDirEntrySlongArray(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 2);
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x3035A;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  v41 = 0;
  v40 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v41, 4u, &v40, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v12 = v40) == 0)
  {
    *a3 = 0;
    return v10;
  }

  v13 = *(a2 + 2);
  if (v13 == 9)
  {
    *a3 = v40;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(v12, v41, v11);
    }

    return 0;
  }

  if (v13 != 4)
  {
    v17 = v41;
    v18 = malloc_type_malloc(4 * v41, 0x100004052888210uLL);
    if (!v18)
    {
      free(v12);
      return 7;
    }

    v19 = v18;
    v20 = *(a2 + 2);
    if (v20 <= 7)
    {
      if (v20 == 1)
      {
        if (v17)
        {
          v27 = v18;
          v28 = v12;
          do
          {
            v29 = *v28;
            v28 = (v28 + 1);
            *v27++ = v29;
            --v17;
          }

          while (v17);
        }
      }

      else if (v20 == 3)
      {
        if (v17)
        {
          v33 = v18;
          v34 = v12;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabShort(v34);
            }

            v35 = *v34;
            v34 = (v34 + 2);
            *v33++ = v35;
            --v17;
          }

          while (v17);
        }
      }

      else if (v20 == 6 && v17)
      {
        v21 = v18;
        v22 = v12;
        do
        {
          v23 = *v22;
          v22 = (v22 + 1);
          *v21++ = v23;
          --v17;
        }

        while (v17);
      }

      goto LABEL_64;
    }

    if (v20 == 8)
    {
      if (v17)
      {
        v30 = v18;
        v31 = v12;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(v31);
          }

          v32 = *v31;
          v31 = (v31 + 2);
          *v30++ = v32;
          --v17;
        }

        while (v17);
      }

      goto LABEL_64;
    }

    if (v20 == 16)
    {
      if (v17)
      {
        v36 = v18;
        v37 = v12;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(v37);
          }

          v38 = *v37;
          if (*v37 >> 31)
          {
            goto LABEL_66;
          }

          ++v37;
          *v36++ = v38.i32[0];
        }

        while (--v17);
      }
    }

    else if (v20 == 17 && v17)
    {
      v24 = v18;
      v25 = v12;
      while (1)
      {
        if ((*(a1 + 16) & 0x80) != 0)
        {
          TIFFSwabLong8(v25);
        }

        v26 = *v25;
        if (*v25 != v25->i32[0])
        {
          break;
        }

        ++v25;
        *v24++ = v26.i32[0];
        if (!--v17)
        {
          goto LABEL_64;
        }
      }

LABEL_66:
      free(v12);
      free(v19);
      return 4;
    }

LABEL_64:
    free(v12);
    v10 = 0;
    *a3 = v19;
    return v10;
  }

  v14 = v41;
  if (v41)
  {
    v15 = v40;
    while (1)
    {
      if ((*(a1 + 16) & 0x80) != 0)
      {
        v11 = TIFFSwabLong(v15, v11);
      }

      v16 = *v15 >> 29;
      if ((v16 & 4) != 0)
      {
        break;
      }

      ++v15;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    v10 = v16 & 4;
    free(v12);
  }

  else
  {
LABEL_15:
    v10 = 0;
    *a3 = v12;
  }

  return v10;
}

uint64_t TIFFReadDirEntrySlong8Array(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 2);
  v4 = v3 > 0x11;
  v5 = (1 << v3) & 0x3035A;
  if (v4 || v5 == 0)
  {
    return 2;
  }

  v40 = 0;
  v39 = 0;
  v10 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v40, 8u, &v39, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 || (v11 = v39) == 0)
  {
    *a3 = 0;
  }

  else
  {
    v12 = *(a2 + 2);
    if (v12 == 17)
    {
      *a3 = v39;
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabArrayOfLong8(v11, v40);
      }

      return 0;
    }

    else if (v12 == 16)
    {
      v13 = v40;
      if (v40)
      {
        v14 = v39;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabLong8(v14);
          }

          if (((*v14 >> 61) & 4) != 0)
          {
            break;
          }

          ++v14;
          if (!--v13)
          {
            goto LABEL_15;
          }
        }

        v10 = (*v14 >> 61) & 4;
        free(v11);
      }

      else
      {
LABEL_15:
        v10 = 0;
        *a3 = v11;
      }
    }

    else
    {
      v15 = v40;
      v16 = malloc_type_malloc(8 * v40, 0x100004000313F17uLL);
      if (v16)
      {
        v18 = v16;
        v19 = *(a2 + 2);
        if (v19 > 5)
        {
          if (v19 == 6)
          {
            if (v15)
            {
              v29 = v16;
              v30 = v11;
              do
              {
                v31 = v30->i8[0];
                v30 = (v30 + 1);
                *v29++ = v31;
                --v15;
              }

              while (v15);
            }
          }

          else if (v19 == 8)
          {
            if (v15)
            {
              v35 = v16;
              v36 = v11;
              do
              {
                if ((*(a1 + 16) & 0x80) != 0)
                {
                  TIFFSwabShort(v36);
                }

                v37 = v36->i16[0];
                v36 = (v36 + 2);
                *v35++ = v37;
                --v15;
              }

              while (v15);
            }
          }

          else if (v19 == 9 && v15)
          {
            v23 = v16;
            v24 = v11;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                v17 = TIFFSwabLong(v24, v17);
              }

              v25 = *v24++;
              *v23++ = v25;
              --v15;
            }

            while (v15);
          }
        }

        else if (v19 == 1)
        {
          if (v15)
          {
            v26 = v16;
            v27 = v11;
            do
            {
              v28 = v27->u8[0];
              v27 = (v27 + 1);
              *v26++ = v28;
              --v15;
            }

            while (v15);
          }
        }

        else if (v19 == 3)
        {
          if (v15)
          {
            v32 = v16;
            v33 = v11;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabShort(v33);
              }

              v34 = v33->u16[0];
              v33 = (v33 + 2);
              *v32++ = v34;
              --v15;
            }

            while (v15);
          }
        }

        else if (v19 == 4 && v15)
        {
          v20 = v16;
          v21 = v11;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              v17 = TIFFSwabLong(v21, v17);
            }

            v22 = *v21++;
            *v20++ = v22;
            --v15;
          }

          while (v15);
        }

        free(v11);
        v10 = 0;
        *a3 = v18;
      }

      else
      {
        free(v11);
        return 7;
      }
    }
  }

  return v10;
}

uint64_t TIFFReadDirEntryFloatArray(uint64_t a1, uint64_t a2, int8x8_t **a3)
{
  v5 = *(a2 + 2);
  v6 = v5 > 0x11;
  v7 = (1 << v5) & 0x31F7A;
  if (v6 || v7 == 0)
  {
    return 2;
  }

  v60 = v3;
  v61 = v4;
  v59 = 0;
  v58 = 0;
  result = TIFFReadDirEntryArrayWithLimit(a1, a2, &v59, 4u, &v58, 0xFFFFFFFFFFFFFFFFLL);
  if (result || (v14 = v58) == 0)
  {
    *a3 = 0;
  }

  else if (*(a2 + 2) == 11)
  {
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong(v58, v59, v13);
    }

    result = 0;
    *a3 = v14;
  }

  else
  {
    v15 = v59;
    v16 = malloc_type_malloc(4 * v59, 0x100004052888210uLL);
    if (v16)
    {
      v18 = v16;
      v19 = *(a2 + 2);
      if (v19 <= 7)
      {
        if (*(a2 + 2) <= 3u)
        {
          if (v19 == 1)
          {
            if (v15)
            {
              v33 = v16;
              v34 = v14;
              do
              {
                v35 = v34->u8[0];
                v34 = (v34 + 1);
                *v33++ = v35;
                LODWORD(v15) = v15 - 1;
              }

              while (v15);
            }
          }

          else if (v19 == 3 && v15)
          {
            v30 = v16;
            v31 = v14;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabShort(v31);
              }

              v32 = v31->u16[0];
              v31 = (v31 + 2);
              *v30++ = v32;
              LODWORD(v15) = v15 - 1;
            }

            while (v15);
          }
        }

        else if (v19 == 4)
        {
          if (v15)
          {
            v46 = v16;
            v47 = v14;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                v17 = TIFFSwabLong(v47, v17);
              }

              v48 = *v47++;
              *v17.i32 = v48;
              *v46++ = v48;
              LODWORD(v15) = v15 - 1;
            }

            while (v15);
          }
        }

        else if (v19 == 5)
        {
          if (v15)
          {
            v36 = v16;
            v37 = v14;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                v17 = TIFFSwabLong(v37, v17);
                v38 = *v37;
                if ((*(a1 + 16) & 0x80) != 0)
                {
                  v17 = TIFFSwabLong(v37 + 1, v17);
                }
              }

              else
              {
                v38 = *v37;
              }

              v39 = v37[1];
              if (v39)
              {
                *v17.i32 = v38 / v39;
              }

              else
              {
                v17 = 0;
              }

              v37 += 2;
              *v36++ = *v17.i32;
              LODWORD(v15) = v15 - 1;
            }

            while (v15);
          }
        }

        else if (v19 == 6 && v15)
        {
          v24 = v16;
          v25 = v14;
          do
          {
            v26 = v25->i8[0];
            v25 = (v25 + 1);
            *v24++ = v26;
            LODWORD(v15) = v15 - 1;
          }

          while (v15);
        }
      }

      else if (*(a2 + 2) > 0xBu)
      {
        if (v19 == 12)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabArrayOfLong8(v14, v15);
          }

          if (v15)
          {
            v52 = v18;
            v53 = v14;
            do
            {
              v54 = *v53++;
              v55 = v54;
              v56 = 3.40282347e38;
              if (v54 <= 3.40282347e38)
              {
                v56 = v55;
                if (v55 < -3.40282347e38)
                {
                  v56 = -3.40282347e38;
                }
              }

              v57 = v56;
              *v52++ = v57;
              LODWORD(v15) = v15 - 1;
            }

            while (v15);
          }
        }

        else if (v19 == 16)
        {
          if (v15)
          {
            v43 = v16;
            v44 = v14;
            do
            {
              if ((*(a1 + 16) & 0x80) != 0)
              {
                TIFFSwabLong8(v44);
              }

              v45 = *v44++;
              *v43++ = v45;
              LODWORD(v15) = v15 - 1;
            }

            while (v15);
          }
        }

        else if (v19 == 17 && v15)
        {
          v27 = v16;
          v28 = v14;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabLong8(v28);
            }

            v29 = *v28++;
            *v27++ = v29;
            LODWORD(v15) = v15 - 1;
          }

          while (v15);
        }
      }

      else if (v19 == 8)
      {
        if (v15)
        {
          v49 = v16;
          v50 = v14;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabShort(v50);
            }

            v51 = v50->i16[0];
            v50 = (v50 + 2);
            *v49++ = v51;
            LODWORD(v15) = v15 - 1;
          }

          while (v15);
        }
      }

      else if (v19 == 9)
      {
        if (v15)
        {
          v40 = v16;
          v41 = v14;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              v17 = TIFFSwabLong(v41, v17);
            }

            v42 = *v41++;
            *v17.i32 = v42;
            *v40++ = v42;
            LODWORD(v15) = v15 - 1;
          }

          while (v15);
        }
      }

      else if (v19 == 10 && v15)
      {
        v20 = v16;
        v21 = v14;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v17 = TIFFSwabLong(v21, v17);
            v22 = *v21;
            if ((*(a1 + 16) & 0x80) != 0)
            {
              v17 = TIFFSwabLong(v21 + 1, v17);
            }
          }

          else
          {
            v22 = *v21;
          }

          v23 = v21[1];
          if (v23)
          {
            *v17.i32 = v22 / v23;
          }

          else
          {
            v17 = 0;
          }

          v21 += 2;
          *v20++ = *v17.i32;
          LODWORD(v15) = v15 - 1;
        }

        while (v15);
      }

      free(v14);
      result = 0;
      *a3 = v18;
    }

    else
    {
      free(v14);
      return 7;
    }
  }

  return result;
}

uint64_t TIFFReadDirEntryIfd8Array(uint64_t a1, uint64_t a2, int8x8_t **a3)
{
  v5 = *(a2 + 2);
  v6 = v5 > 0x12;
  v7 = (1 << v5) & 0x52010;
  if (v6 || v7 == 0)
  {
    return 2;
  }

  v24 = v3;
  v25 = v4;
  v23 = 0;
  v22 = 0;
  result = TIFFReadDirEntryArrayWithLimit(a1, a2, &v23, 8u, &v22, 0xFFFFFFFFFFFFFFFFLL);
  if (result || (v13 = v22) == 0)
  {
    *a3 = 0;
  }

  else if ((*(a2 + 2) | 2) == 0x12)
  {
    *a3 = v22;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong8(v13, v23);
    }

    return 0;
  }

  else
  {
    v14 = v23;
    v15 = malloc_type_malloc(8 * v23, 0x100004000313F17uLL);
    if (v15)
    {
      v17 = v15;
      v18 = *(a2 + 2);
      if ((v18 == 13 || v18 == 4) && v14)
      {
        v19 = v15;
        v20 = v13;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v16 = TIFFSwabLong(v20, v16);
          }

          v21 = *v20++;
          *v19++ = v21;
          --v14;
        }

        while (v14);
      }

      free(v13);
      result = 0;
      *a3 = v17;
    }

    else
    {
      free(v13);
      return 7;
    }
  }

  return result;
}

uint64_t TIFFReadDirEntryCheckedRational(uint64_t a1, uint64_t a2, double *a3, uint8x8_t a4)
{
  __dst = 0;
  v5 = *(a1 + 16);
  if ((v5 & 0x80000) != 0)
  {
    __dst = *(a2 + 16);
    if ((v5 & 0x80) == 0)
    {
LABEL_9:
      v9 = 0.0;
      if (__dst)
      {
        v10 = HIDWORD(__dst) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v9 = __dst / HIDWORD(__dst);
      }

      result = 0;
      *a3 = v9;
      return result;
    }

LABEL_8:
    TIFFSwabArrayOfLong(&__dst, 2, a4);
    goto LABEL_9;
  }

  v7 = *(a2 + 16);
  v11 = v7;
  if ((v5 & 0x80) != 0)
  {
    TIFFSwabLong(&v11, a4);
    v7 = v11;
  }

  result = TIFFReadDirEntryData(a1, v7, 8, &__dst);
  if (!result)
  {
    if ((*(a1 + 16) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t TIFFReadDirEntryCheckedSrational(uint64_t a1, uint64_t a2, double *a3, uint8x8_t a4)
{
  __dst = 0;
  v5 = *(a1 + 16);
  if ((v5 & 0x80000) != 0)
  {
    __dst = *(a2 + 16);
    if ((v5 & 0x80) == 0)
    {
LABEL_9:
      v9 = 0.0;
      if (__dst)
      {
        v10 = HIDWORD(__dst) == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v9 = __dst / HIDWORD(__dst);
      }

      result = 0;
      *a3 = v9;
      return result;
    }

LABEL_8:
    TIFFSwabArrayOfLong(&__dst, 2, a4);
    goto LABEL_9;
  }

  v7 = *(a2 + 16);
  v11 = v7;
  if ((v5 & 0x80) != 0)
  {
    TIFFSwabLong(&v11, a4);
    v7 = v11;
  }

  result = TIFFReadDirEntryData(a1, v7, 8, &__dst);
  if (!result)
  {
    if ((*(a1 + 16) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t TIFFReadDirEntryCheckedDouble(uint64_t a1, int8x8_t *a2, int8x8_t *__dst, uint8x8_t a4)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x80000) != 0)
  {
    *__dst = a2[2];
    if ((v5 & 0x80) == 0)
    {
      return 0;
    }

LABEL_8:
    TIFFSwabLong8(__dst);
    return 0;
  }

  v7 = a2[2].u32[0];
  v9 = v7;
  if ((v5 & 0x80) != 0)
  {
    TIFFSwabLong(&v9, a4);
    v7 = v9;
  }

  result = TIFFReadDirEntryData(a1, v7, 8, __dst);
  if (!result)
  {
    if ((*(a1 + 16) & 0x80) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t TIFFReadDirEntryLong8ArrayWithLimit(uint64_t a1, uint64_t a2, int8x8_t **a3, unint64_t a4)
{
  v4 = *(a2 + 2);
  v5 = v4 > 0x11;
  v6 = (1 << v4) & 0x3035A;
  if (v5 || v6 == 0)
  {
    return 2;
  }

  v42 = 0;
  v41 = 0;
  v11 = TIFFReadDirEntryArrayWithLimit(a1, a2, &v42, 8u, &v41, a4);
  if (v11 || (v12 = v41) == 0)
  {
    *a3 = 0;
    return v11;
  }

  v13 = *(a2 + 2);
  if (v13 == 16)
  {
    *a3 = v41;
    if ((*(a1 + 16) & 0x80) != 0)
    {
      TIFFSwabArrayOfLong8(v12, v42);
    }

    return 0;
  }

  if (v13 != 17)
  {
    v16 = v42;
    v17 = malloc_type_malloc(8 * v42, 0x100004000313F17uLL);
    if (!v17)
    {
      free(v12);
      return 7;
    }

    v19 = v17;
    v20 = *(a2 + 2);
    if (v20 <= 5)
    {
      if (v20 == 1)
      {
        if (v16)
        {
          v28 = v17;
          v29 = v12;
          do
          {
            v30 = v29->u8[0];
            v29 = (v29 + 1);
            *v28++ = v30;
            --v16;
          }

          while (v16);
        }
      }

      else if (v20 == 3)
      {
        if (v16)
        {
          v34 = v17;
          v35 = v12;
          do
          {
            if ((*(a1 + 16) & 0x80) != 0)
            {
              TIFFSwabShort(v35);
            }

            v36 = v35->u16[0];
            v35 = (v35 + 2);
            *v34++ = v36;
            --v16;
          }

          while (v16);
        }
      }

      else if (v20 == 4 && v16)
      {
        v21 = v17;
        v22 = v12;
        do
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            v18 = TIFFSwabLong(v22, v18);
          }

          v23 = *v22++;
          *v21++ = v23;
          --v16;
        }

        while (v16);
      }

      goto LABEL_65;
    }

    if (v20 == 6)
    {
      if (v16)
      {
        v31 = v17;
        v32 = v12;
        while (1)
        {
          v33 = v32->u8[0];
          if (((v33 >> 5) & 4) != 0)
          {
            break;
          }

          v32 = (v32 + 1);
          *v31++ = v33;
          if (!--v16)
          {
            goto LABEL_65;
          }
        }

        v11 = (v33 >> 5) & 4;
        goto LABEL_69;
      }
    }

    else if (v20 == 8)
    {
      if (v16)
      {
        v37 = v17;
        v38 = v12;
        while (1)
        {
          if ((*(a1 + 16) & 0x80) != 0)
          {
            TIFFSwabShort(v38);
          }

          v39 = v38->u16[0];
          if (((v39 >> 13) & 4) != 0)
          {
            break;
          }

          v38 = (v38 + 2);
          *v37++ = v39;
          if (!--v16)
          {
            goto LABEL_65;
          }
        }

        v11 = (v39 >> 13) & 4;
        goto LABEL_69;
      }
    }

    else if (v20 == 9 && v16)
    {
      v25 = v17;
      v26 = v12;
      while (1)
      {
        if ((*(a1 + 16) & 0x80) != 0)
        {
          v18 = TIFFSwabLong(v26, v18);
        }

        v27 = *v26;
        if (((v27.i32[0] >> 29) & 4) != 0)
        {
          break;
        }

        ++v26;
        *v25++ = v27;
        if (!--v16)
        {
          goto LABEL_65;
        }
      }

      v11 = (v27.i32[0] >> 29) & 4;
LABEL_69:
      free(v12);
      v24 = v19;
LABEL_70:
      free(v24);
      return v11;
    }

LABEL_65:
    free(v12);
    v11 = 0;
    *a3 = v19;
    return v11;
  }

  v14 = v42;
  if (v42)
  {
    v15 = v41;
    while (1)
    {
      if ((*(a1 + 16) & 0x80) != 0)
      {
        TIFFSwabLong8(v15);
      }

      if (((*v15 >> 61) & 4) != 0)
      {
        break;
      }

      ++v15;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    v11 = (*v15 >> 61) & 4;
    v24 = v12;
    goto LABEL_70;
  }

LABEL_15:
  v11 = 0;
  *a3 = v12;
  return v11;
}

void allocChoppedUpStripArrays(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  v8 = _TIFFGetStrileOffsetOrByteCountValue(a1, 0);
  v9 = _TIFFGetStrileOffsetOrByteCountValue(a1, (*(a1 + 228) - 1));
  v10 = _TIFFGetStrileOffsetOrByteCountValue(a1, (*(a1 + 228) - 1));
  if (!__CFADD__(v10, v9))
  {
    v15 = v10 + v9 - v8;
    if (v10 + v9 >= v8)
    {
      if (a2 <= 0x640000 || 16 * a2 <= (*(a1 + 1240))(*(a1 + 1200)))
      {
        v17 = a2;
        v18 = _TIFFCheckMalloc(a1, a2, 8, "for chopped StripByteCounts array", v11, v12, v13, v14);
        v23 = _TIFFCheckMalloc(a1, a2, 8, "for chopped StripOffsets array", v19, v20, v21, v22);
        v30 = v23;
        if (v18 && v23)
        {
          if (a2)
          {
            v31 = v23;
            v32 = v18;
            do
            {
              if (a3 >= v15)
              {
                a3 = v15;
              }

              *v32++ = a3;
              if (a3)
              {
                v33 = v8;
              }

              else
              {
                v33 = 0;
              }

              *v31++ = v33;
              v8 += a3;
              v15 -= a3;
              --v17;
            }

            while (v17);
          }

          *(a1 + 224) = a2;
          *(a1 + 228) = a2;
          _cg_TIFFSetField(a1, 278, v24, v25, v26, v27, v28, v29, a4);
          free(*(a1 + 240));
          free(*(a1 + 232));
          *(a1 + 232) = v30;
          *(a1 + 240) = v18;
          *(a1 + 16) |= 0x4000000u;
        }

        else
        {
          if (v18)
          {
            free(v18);
          }

          if (v30)
          {

            free(v30);
          }
        }
      }

      else
      {
        TIFFWarningExtR(a1, "allocChoppedUpStripArrays", "Requested memory size for StripByteCount and StripOffsets %llu is greater than filesize %llu. Memory not allocated", v16, v11, v12, v13, v14, 16 * a2);
      }
    }
  }
}

void BCTextureImp::~BCTextureImp(BCTextureImp *this, uint64_t a2, const char *a3)
{
  *this = &unk_1EF4D4A30;
  if (*(this + 3))
  {
    Source = CGImageSourceGetSource(*(this + 4));
    if (Source)
    {
      IIOImageReadSession::releaseBytePointer(Source, *(this + 3));
    }
  }

  v5 = *(this + 4);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 4) = 0;

  _cg_jpeg_mem_term(this, a2, a3);
}

{
  BCTextureImp::~BCTextureImp(this, a2, a3);

  JUMPOUT(0x186602850);
}

uint64_t BCTextureImp::loadDataFromXPCObject(BCTextureImp *this, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "iio_xpc_plugin_data_bc_imp", &length);
  if (length == 544)
  {
    memcpy(this + 16, data, 0x220uLL);
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 2) = 0;
  }

  return 0;
}

uint64_t BCTextureImp::textureDataLockData(BCTextureImp *this, IIOImageReadSession *a2, unint64_t a3, unint64_t a4, IIOImageRead **a5, unint64_t *a6, unint64_t *a7)
{
  if (!*(this + 2))
  {
    *(this + 2) = IIOImageReadSession::retainBytePointer(a2, this + 3, 1);
    v13 = IIOImageSource::cf(a2);
    *(this + 4) = v13;
    CFRetain(v13);
    if (!*(this + 2))
    {
      _cg_jpeg_mem_term("textureDataLockData", 140, "*** Can't access image data\n");
    }
  }

  if (a3 >= 0x1F)
  {
    a3 = 31;
  }

  *a5 = IIOImageReadSession::getSize(a2);
  v14 = this + 8 * a3;
  *a6 = *(v14 + 6);
  *a7 = *(v14 + 38);
  return *(this + 2);
}

void BCReadPlugin::BCReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v5 = &unk_1EF4D4A78;
  *(v5 + 520) = 0u;
  operator new();
}

void sub_185FDDC5C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 66);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  IIOReadPlugin::~IIOReadPlugin(v1);
  _Unwind_Resume(a1);
}

void sub_185FDDD6C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 66);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  IIOReadPlugin::~IIOReadPlugin(v1);
  _Unwind_Resume(a1);
}

void BCReadPlugin::~BCReadPlugin(BCReadPlugin *this)
{
  *this = &unk_1EF4D4A78;
  v2 = *(this + 64);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 62);
  if (v3)
  {
    (**(v3 + 8))();
  }

  v4 = *(this + 66);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v4);
  }

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  BCReadPlugin::~BCReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t BCReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 13)
  {
    return IIOReadPlugin::setupImageProviderCallbackV3(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t BCReadPlugin::loadDataFromXPCObject(BCReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_bc", &length);
    if (length == 48)
    {
      v6 = *data;
      v7 = data[2];
      *(this + 30) = data[1];
      *(this + 31) = v7;
      *(this + 29) = v6;
      *(this + 62) = 0;
      return (*(**(this + 65) + 16))(*(this + 65), a2);
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t BCReadPlugin::saveDataToXPCObject(BCReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!result)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_bc", this + 464, 0x30uLL);
    v5 = *(**(this + 65) + 24);

    return v5();
  }

  return result;
}

uint64_t BCReadPlugin::initialize(BCReadPlugin *this, IIODictionary *a2)
{
  v97 = *MEMORY[0x1E69E9840];
  v85 = 0;
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  IIOScanner::IIOScanner(&v80, *(this + 3));
  if (*(this + 369) != 1)
  {
    goto LABEL_108;
  }

  v3 = *(this + 65);
  v4 = *(this + 55);
  if (v4 == 1145193326)
  {
    memset(v96, 0, 44);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    __dst = 0u;
    v86 = 0uLL;
    LODWORD(v87) = 0;
    if (IIOScanner::getBytesAtOffset(&v80, &v85, *(this + 26), 4uLL) != 4)
    {
      goto LABEL_108;
    }

    Size = IIOImageReadSession::getSize(*(this + 3));
    if (v85 != 542327876)
    {
      goto LABEL_108;
    }

    v27 = Size;
    *(this + 26) = 4;
    if (IIOScanner::getBytesAtOffset(&v80, &__dst, 4, 0x7CuLL) != 124)
    {
      goto LABEL_108;
    }

    v28 = __dst.i32[1];
    if (__dst.i8[4])
    {
      v29 = __dst.i8[4] & 6;
      v30 = "*** ERROR: ddsHeader.dwFlags is missing 'has_DDSD_WIDTH'\n";
      if ((__dst.i8[4] & 2) != 0)
      {
        v31 = 362;
      }

      else
      {
        v31 = 361;
      }

      if ((__dst.i8[4] & 2) == 0)
      {
        v30 = "*** ERROR: ddsHeader.dwFlags is missing 'DDSD_HEIGHT'\n";
      }

      if (v29 == 6)
      {
        v32 = 363;
      }

      else
      {
        v32 = v31;
      }

      if (v29 == 6)
      {
        v33 = "*** ERROR: ddsHeader.dwFlags is missing 'DDSD_PIXELFORMAT'\n";
      }

      else
      {
        v33 = v30;
      }

      if ((~__dst.i32[1] & 0x1006) == 0)
      {
        *(this + 26) += 124;
        *(this + 372) = 0;
        v7 = __dst.u32[3];
        if ((v28 & 8) != 0)
        {
          v34 = v92;
        }

        else if ((__dst.i32[3] + 3) >= 4)
        {
          v34 = (__dst.i32[3] + 3) & 0xFFFFFFFC;
        }

        else
        {
          v34 = 4;
        }

        v8 = __dst.u32[2];
        if (v27 <= __dst.u32[3])
        {
          v74 = 375;
        }

        else
        {
          if (v27 > __dst.u32[2])
          {
            if (v27 <= v34)
            {
              _cg_jpeg_mem_term("initialize", 377, "*** ERROR: bad pitchOrLinearSize: %d  (fileSize: %ld)\n", v34, v27);
              goto LABEL_108;
            }

            *(this + 120) = (__dst.i32[3] + 3) >> 2;
            *(this + 121) = (v8 + 3) >> 2;
            if ((v28 & 0x20000) != 0)
            {
              v46 = DWORD2(v92);
              if (DWORD2(v92))
              {
                v47 = v7 <= v8 ? v8 : v7;
                v48 = log(v47) / 0.693147181;
                if (v46 > v48)
                {
                  _cg_jpeg_mem_term("initialize", 386, "*** ERROR: bad dwMipMapCount (%d) max: %d\n", v46, v48);
                }
              }
            }

            v49 = bswap32(v96[0].u32[0]);
            if (v49)
            {
              if (v49 != 1146630448)
              {
                if (v49 == 1146639409)
                {
                  v50 = (2 * v7 + 6) & 0x3FFFFFFF8;
                  if (!v7)
                  {
                    v50 = 8;
                  }

                  v51 = v50 * v8;
                  if (v27 <= v51 >> 2)
                  {
                    _cg_jpeg_mem_term("initialize", 407, "*** ERROR: corrupt file:  pitch*height: %ld  (fileSize: %ld)\n", v51, v27);
                    goto LABEL_108;
                  }
                }

                goto LABEL_106;
              }

              if (IIOScanner::getBytesAtOffset(&v80, &v86, *(this + 26), 0x14uLL) != 20)
              {
                goto LABEL_108;
              }

              *(this + 26) += 20;
              v52 = dxgi_to_gl(v86);
              *(this + 119) = v52;
              if (v52 || v86 != 87)
              {
                goto LABEL_107;
              }

              *(this + 119) = 34952;
              *(this + 127) = v96[0].i32[1];
              *(v96 + 8) = xmmword_186208E00;
              v53 = 33619971;
LABEL_155:
              *(this + 122) = v53;
              v52 = 34952;
              goto LABEL_156;
            }

            if ((BYTE12(v95) & 0x40) == 0)
            {
LABEL_106:
              v52 = fourcc_to_gl(v49);
              *(this + 119) = v52;
LABEL_107:
              if (!v52)
              {
                goto LABEL_108;
              }

LABEL_156:
              v59 = DWORD2(v92);
              if (DWORD2(v92) >= 0x1F)
              {
                v59 = 31;
              }

              if ((v28 & 0x20000) != 0)
              {
                LODWORD(v60) = v59;
              }

              else
              {
                LODWORD(v60) = 1;
              }

              *(this + 118) = v60;
              v61 = *(this + 26);
              v62 = 0;
              v63 = BCReadPlugin::bytesPerBlock(v52);
              if (v60 <= 1)
              {
                v60 = 1;
              }

              else
              {
                v60 = v60;
              }

              while (1)
              {
                v64 = (v7 >> v62) + 3;
                if (v64 <= 7)
                {
                  v65 = 1;
                }

                else
                {
                  v65 = v64 >> 2;
                }

                v66 = (v8 >> v62) + 3;
                if (v66 <= 7)
                {
                  v67 = 1;
                }

                else
                {
                  v67 = v66 >> 2;
                }

                v68 = v63 * v67 * v65;
                if (v62 <= 0x1F)
                {
                  v69 = v3 + 8 * v62;
                  *(v69 + 48) = v61;
                  *(v69 + 304) = v68;
                }

                v70 = __CFADD__(v61, v68);
                v61 += v68;
                if (v70)
                {
                  goto LABEL_108;
                }

                if (v61 > IIOImageReadSession::getSize(*(this + 3)))
                {
                  *&v71 = _cg_jpeg_mem_term("initialize", 544, "*** WARNING: file truncated. Only the first %lu miplevels of %lu complete\n", v62, *(this + 118)).n128_u64[0];
                  *(this + 118) = v62;
                  if (v62)
                  {
LABEL_177:
                    *(this + 58) = *(v3 + 304);
                    goto LABEL_66;
                  }

                  _cg_jpeg_mem_term("initialize", 549, "*** ERROR: file to small to contain a single image / miplevel\n", v71);
                  goto LABEL_108;
                }

                if (v60 == ++v62)
                {
                  goto LABEL_177;
                }
              }
            }

            *(this + 119) = 34952;
            v55 = v96[0].i32[1];
            *(this + 127) = v96[0].i32[1];
            v56 = vrev32q_s8(*(v96 + 8));
            *(v96 + 8) = v56;
            if ((v56.i32[1] & v56.i32[0]) != 0)
            {
              _cg_jpeg_mem_term("initialize", 449, "*** overlapping R-G channels\n");
              goto LABEL_108;
            }

            if ((v56.i32[2] & v56.i32[0]) != 0)
            {
              _cg_jpeg_mem_term("initialize", 450, "*** overlapping R-B channels\n");
              goto LABEL_108;
            }

            if ((v56.i32[2] & v56.i32[1]) != 0)
            {
              _cg_jpeg_mem_term("initialize", 451, "*** overlapping G-B channels\n");
              goto LABEL_108;
            }

            if ((v56.i32[3] & v56.i32[0]) != 0)
            {
              _cg_jpeg_mem_term("initialize", 453, "*** overlapping R-A channels\n");
              goto LABEL_108;
            }

            if ((v56.i32[3] & v56.i32[1]) != 0)
            {
              _cg_jpeg_mem_term("initialize", 454, "*** overlapping G-A channels\n");
              goto LABEL_108;
            }

            if ((v56.i32[3] & v56.i32[2]) != 0)
            {
              _cg_jpeg_mem_term("initialize", 455, "*** overlapping B-A channels\n");
              goto LABEL_108;
            }

            v57 = v56.i32[1] | v56.i32[0] | v56.i32[2] | v56.i32[3];
            if (v55 == 24)
            {
              if (v57 != -256)
              {
                v58 = 459;
LABEL_208:
                _cg_jpeg_mem_term("initialize", v58, "*** overlapping RGBA channels?  bitMask: %08X\n", v56.i32[1] | v56.i32[0] | v56.i32[2] | v56.i32[3]);
                goto LABEL_108;
              }
            }

            else if (v57 != -1)
            {
              v58 = 461;
              goto LABEL_208;
            }

            if (v56.i32[0] > 65279)
            {
              if (v56.i32[0] == 65280)
              {
                v53 = 0x2000000;
              }

              else
              {
                if (v56.i32[0] != 16711680)
                {
                  goto LABEL_108;
                }

                v53 = 0x1000000;
              }
            }

            else if (v56.i32[0] == -16777216)
            {
              v53 = 0;
            }

            else
            {
              if (v56.i32[0] != 255)
              {
                goto LABEL_108;
              }

              v53 = 50331648;
            }

            if (v56.i32[1] > 65279)
            {
              if (v56.i32[1] == 65280)
              {
                v53 |= 0x20000u;
              }

              else
              {
                if (v56.i32[1] != 16711680)
                {
                  goto LABEL_108;
                }

                v53 |= 0x10000u;
              }
            }

            else if (v56.i32[1] != -16777216)
            {
              if (v56.i32[1] != 255)
              {
                goto LABEL_108;
              }

              v53 |= 0x30000u;
            }

            if (v56.i32[2] > 65279)
            {
              if (v56.i32[2] == 65280)
              {
                v53 |= 0x200u;
              }

              else
              {
                if (v56.i32[2] != 16711680)
                {
                  goto LABEL_108;
                }

                v53 |= 0x100u;
              }
            }

            else if (v56.i32[2] != -16777216)
            {
              if (v56.i32[2] != 255)
              {
                goto LABEL_108;
              }

              v53 |= 0x300u;
            }

            if (v56.i32[3] <= 254)
            {
              if (v56.i32[3] == -16777216)
              {
                goto LABEL_155;
              }

              if (v56.i32[3])
              {
                goto LABEL_108;
              }
            }

            else if (v56.i32[3] != 255)
            {
              if (v56.i32[3] == 65280)
              {
                v53 |= 2u;
              }

              else
              {
                if (v56.i32[3] != 16711680)
                {
                  goto LABEL_108;
                }

                v53 |= 1u;
              }

              goto LABEL_155;
            }

            v53 |= 3u;
            goto LABEL_155;
          }

          v74 = 376;
        }

        _cg_jpeg_mem_term("initialize", v74, "*** ERROR: bad dimension: %d x %d  (fileSize: %ld)\n", __dst.i32[3], __dst.i32[2], v27);
        goto LABEL_108;
      }
    }

    else
    {
      v33 = "*** ERROR: ddsHeader.dwFlags is missing 'DDSD_CAPS'\n";
      v32 = 360;
    }

    _cg_jpeg_mem_term("initialize", v32, v33);
    goto LABEL_108;
  }

  if (v4 == 1261584963)
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    if (IIOScanner::getBytesAtOffset(&v80, &v86, *(this + 26), 0x50uLL) != 80)
    {
      _cg_jpeg_mem_term("initialize", 643, "*** ERROR: failed to read KTX2Header\n");
      goto LABEL_108;
    }

    if (!IsKTX2Header(&v86))
    {
      _cg_jpeg_mem_term("initialize", 646, "*** ERROR: invalid KTX2Header\n");
      goto LABEL_108;
    }

    if (v87 != 1)
    {
      _cg_jpeg_mem_term("initialize", 648, "*** ERROR: Invalid typeSize (%d). typeSize must be 1 for block-compressed or supercompressed formats.\n");
      goto LABEL_108;
    }

    if (v81 <= v88)
    {
      _cg_jpeg_mem_term("initialize", 649, "*** ERROR: Invalid numberOfArrayElements (%d).\n");
      goto LABEL_108;
    }

    if (DWORD1(v89) + v89 > v81)
    {
      _cg_jpeg_mem_term("initialize", 653, "*** ERROR: Invalid dfdOffset / dfdLength  (%d / %d).\n");
      goto LABEL_108;
    }

    if (HIDWORD(v89) + DWORD2(v89) > v81)
    {
      _cg_jpeg_mem_term("initialize", 657, "*** ERROR: Invalid kvdOffset / kvdLength  (%d / %d).\n");
      goto LABEL_108;
    }

    v18 = v90;
    if (!v90 || (v19 = *(&v90 + 1), v20 = "*** ERROR: Invalid scgdOffset / scgdLength  (%d / %d).\n", v21 = 663, !__CFADD__(v90, *(&v90 + 1))) && v90 + *(&v90 + 1) <= v81)
    {
      if (IIOScanner::getBytesAtOffset(&v80, &v77, *(this + 26) + 80, 0x18uLL) != 24)
      {
        _cg_jpeg_mem_term("initialize", 666, "*** ERROR: failed to read KTX2LevelInfo\n");
        goto LABEL_108;
      }

      v18 = v77;
      v19 = v78;
      if (v78 + v77 <= v81)
      {
        v95 = 0u;
        memset(v96, 0, 24);
        v93 = 0u;
        v94 = 0u;
        __dst = 0u;
        v92 = 0u;
        v76 = 0;
        if (!CreateKtxStream(&__dst, *(this + 3)))
        {
          v22 = ktxTexture2_CreateFromStream(&__dst, 0, &v76);
          if (!v22)
          {
            *(this + 62) = v76;
            v23 = HIDWORD(v86);
            *(this + 126) = HIDWORD(v86);
            v24 = v23 - 131;
            if (v24 >= 0x10)
            {
              v25 = 0;
            }

            else
            {
              v25 = dword_186208E70[v24];
            }

            *(this + 119) = v25;
            *(this + 372) = 0;
            v35 = *(&v87 + 4);
            *(this + 60) = vshr_n_u32(vadd_s32(*(&v87 + 4), 0x300000003), 2uLL);
            v36 = DWORD2(v88);
            if (DWORD2(v88) >= 0x1F)
            {
              v36 = 31;
            }

            *(this + 118) = v36;
            *(this + 58) = *(v3 + 304);
            LODWORD(v8) = HIDWORD(v35);
            LODWORD(v7) = v35;
            goto LABEL_66;
          }

          _cg_jpeg_mem_term("initialize", 678, "*** ERROR: ktxTexture2_CreateFromStream failed [%d]\n", v22);
        }

LABEL_108:
        kdebug_trace();
        v45 = 4294967246;
        goto LABEL_109;
      }

      v20 = "*** ERROR: corrupt Level info - byteOffset: %ld  byteLength: %ld\n";
      v21 = 669;
    }

    _cg_jpeg_mem_term("initialize", v21, v20, v18, v19);
    goto LABEL_108;
  }

  if (v4 != 1262633838)
  {
    LODWORD(v7) = 0;
    *(this + 61) = 0;
    *(this + 62) = 0;
    goto LABEL_69;
  }

  v93 = 0u;
  v94 = 0u;
  __dst = 0u;
  v92 = 0u;
  if (IIOScanner::getBytesAtOffset(&v80, &__dst, *(this + 26), 0x40uLL) != 64)
  {
    goto LABEL_108;
  }

  SwapKTXHeader(&__dst);
  v5 = __dst.i32[3];
  *(this + 119) = HIDWORD(v92);
  *(this + 372) = v5 == 67305985;
  v75 = *(&v93 + 4);
  v6 = IIOImageReadSession::getSize(*(this + 3));
  LODWORD(v7) = v75.i32[0];
  if (v6 <= v75.u32[0])
  {
    v72 = 573;
LABEL_189:
    _cg_jpeg_mem_term("initialize", v72, "*** bad dimension: %d x %d  (fileSize: %d)\n", v75.i32[0], v75.i32[1], v6);
    goto LABEL_108;
  }

  LODWORD(v8) = v75.i32[1];
  if (v6 <= v75.u32[1])
  {
    v72 = 574;
    goto LABEL_189;
  }

  *(this + 60) = vshr_n_u32(vadd_s32(v75, 0x300000003), 2uLL);
  v9 = DWORD2(v94);
  v10 = HIDWORD(v94) + 64;
  *(this + 26) = v10;
  if (v9 >= 0x1F)
  {
    v11 = 31;
  }

  else
  {
    v11 = v9;
  }

  *(this + 118) = v11;
  if (v9)
  {
    v12 = 0;
    v13 = v81;
    v14 = v10;
    while (1)
    {
      *&v86 = 0;
      if (IIOScanner::getBytesAtOffset(&v80, &v86, v14, 8uLL) != 8)
      {
        break;
      }

      v15 = v14 + 4;
      v16 = v13 - (v14 + 4);
      if (v13 <= v14 + 4)
      {
        *(this + 118) = v12;
        goto LABEL_62;
      }

      if (v86 < v16)
      {
        v16 = v86;
      }

      if (v12 <= 0x1F)
      {
        v17 = v3 + 8 * v12;
        *(v17 + 48) = v15;
        *(v17 + 304) = v16;
      }

      v10 = v16 + v15;
      v14 = ((v16 + 3) & 0xFFFFFFFFFFFFFFFCLL) + v15;
      if (++v12 >= *(this + 118))
      {
        goto LABEL_62;
      }
    }

    _cg_jpeg_mem_term("initialize", 592, "*** BC - failed to read %d bytes\n", 8);
    goto LABEL_108;
  }

LABEL_62:
  v37 = *(this + 121) * *(this + 120);
  v38 = BCReadPlugin::bytesPerBlock(*(this + 119));
  if (!is_mul_ok(v37, v38))
  {
    _cg_jpeg_mem_term("initialize", 622, "*** ERROR: BC-image too big\n");
    goto LABEL_108;
  }

  if (*(v3 + 304) < v37 * v38)
  {
    _cg_jpeg_mem_term("initialize", 624, "*** ERROR: BC-levelSize too small\n");
    goto LABEL_108;
  }

  if (v10 > IIOImageReadSession::getSize(*(this + 3)))
  {
    v73 = IIOImageReadSession::getSize(*(this + 3));
    _cg_jpeg_mem_term("initialize", 625, "***ERROR: BC (KTX) file truncated. File Size: %lu, expected %lu\n", v73, v10);
    goto LABEL_108;
  }

  *(this + 58) = *(v3 + 304);
  *(this + 26) += 4;
LABEL_66:
  *(this + 61) = v7;
  *(this + 62) = v8;
  if (!v8 && v7)
  {
    *(this + 62) = 1;
  }

LABEL_69:
  *(this + 308) = vshl_n_s32(*(this + 480), 2uLL);
  v39 = *(this + 119);
  v40 = 2;
  v41 = 8;
  v42 = 32;
  if (v39 <= 36493)
  {
    if (v39 == 36283)
    {
      *(this + 85) = 1196573017;
      *(this + 32) = 0x200000100080008;
    }

    else
    {
      if (v39 != 36284)
      {
        v43 = 2;
        if (v39 != 36286)
        {
          goto LABEL_76;
        }

        goto LABEL_75;
      }

      *(this + 373) = 1;
      *(this + 85) = 1196573017;
      *(this + 32) = 0x100000100100010;
      LODWORD(v7) = 2 * v7;
    }

    v44 = MEMORY[0x1E695F128];
    goto LABEL_80;
  }

  v43 = 2;
  if ((v39 - 36494) < 2)
  {
LABEL_75:
    v40 = 1;
    *(this + 373) = 1;
    v43 = 3;
    v41 = 16;
    v42 = 64;
  }

LABEL_76:
  *(this + 85) = 1380401696;
  *(this + 129) = v42;
  *(this + 128) = v41;
  *(this + 130) = 4;
  *(this + 263) = v40;
  *(this + 262) = 3;
  LODWORD(v7) = v7 << v43;
  v44 = MEMORY[0x1E695F1C0];
LABEL_80:
  *(this + 63) = v7;
  *(this + 20) = CGColorSpaceCreateWithName(*v44);
  *(this + 374) = 0;
  getenv("IIO_useV3");
  *(this + 204) = 1;
  if (*(this + 194) == 1)
  {
    ImageIOLog("    BC:\n");
  }

  v45 = 0;
LABEL_109:
  IIOScanner::~IIOScanner(&v80);
  return v45;
}

void sub_185FDECE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

uint64_t dxgi_to_gl(int a1)
{
  v1 = a1 - 71;
  if (a1 - 71) < 0x1D && ((0x1B0036DBu >> v1))
  {
    return dword_186208EB0[v1];
  }

  _cg_jpeg_mem_term("dxgi_to_gl", 1454, "*** ERROR: dxgi-format '%d' not handled\n", a1);
  return 0;
}

uint64_t fourcc_to_gl(int a1)
{
  if (a1 <= 1111700818)
  {
    if (a1 == 1096042802)
    {
      return 36285;
    }

    if (a1 != 1111700563)
    {
      if (a1 == 1111700565)
      {
        return 36283;
      }

      return 0;
    }

    return 36284;
  }

  else if (a1 > 1146639410)
  {
    if (a1 != 1146639413)
    {
      if (a1 == 1146639411)
      {
        return 33778;
      }

      return 0;
    }

    return 33779;
  }

  else
  {
    if (a1 != 1111700819)
    {
      if (a1 == 1146639409)
      {
        return 33777;
      }

      return 0;
    }

    return 36286;
  }
}

uint64_t BCReadPlugin::bytesPerBlock(BCReadPlugin *this)
{
  if ((this - 33776) >= 2 && (this - 35916) >= 2 && (this - 36283) >= 2)
  {
    return 16;
  }

  else
  {
    return 8;
  }
}

uint64_t BCReadPlugin::decodeDXTCtoRGBX(BCReadPlugin *this, IIOImageReadSession *a2, vImage_Buffer *a3, unsigned int a4, int a5)
{
  if (a4 > 2)
  {
    v8 = at_alpha_not_premultiplied;
  }

  else
  {
    v8 = dword_186208F24[a4];
  }

  v9 = *(this + 119);
  if (v9 > 36282)
  {
    if (v9 > 36491)
    {
      if ((v9 - 36492) < 2)
      {
        if (a5)
        {
          v12 = at_texel_format_bgra8_unorm;
        }

        else
        {
          v12 = at_texel_format_rgba8_unorm;
        }

        v11 = at_block_format_bc7;
        goto LABEL_48;
      }

      if (v9 == 36494)
      {
        v11 = at_block_format_bc6;
      }

      else
      {
        if (v9 != 36495)
        {
          goto LABEL_40;
        }

        v11 = at_block_format_bc6u;
      }
    }

    else
    {
      if (v9 <= 36284)
      {
        if (v9 == 36283)
        {
          v11 = at_block_format_bc4;
          v12 = at_texel_format_l8_unorm;
        }

        else
        {
          v11 = at_block_format_bc4s;
          v12 = at_texel_format_l16_float;
        }

        goto LABEL_48;
      }

      if (v9 == 36285)
      {
        if (a5)
        {
          v12 = at_texel_format_bgra8_unorm;
        }

        else
        {
          v12 = at_texel_format_rgba8_unorm;
        }

        v11 = at_block_format_bc5;
        goto LABEL_48;
      }

      if (v9 != 36286)
      {
        goto LABEL_40;
      }

      v11 = at_block_format_bc5s;
    }

    v12 = at_texel_format_rgba16_float;
    goto LABEL_48;
  }

  if (v9 > 35915)
  {
    if ((v9 - 35916) >= 2)
    {
      if (v9 != 35918)
      {
        v10 = 35919;
LABEL_16:
        if (v9 == v10)
        {
          if (a5)
          {
            v12 = at_texel_format_bgra8_unorm;
          }

          else
          {
            v12 = at_texel_format_rgba8_unorm;
          }

          v11 = at_block_format_bc3;
          goto LABEL_48;
        }

LABEL_40:
        _cg_jpeg_mem_term("decodeDXTCtoRGBX", 964, "*** BC - unknown GL pixel format [0x%X]\n", *(this + 119));
        return 4294967246;
      }

      goto LABEL_32;
    }
  }

  else if ((v9 - 33776) >= 2)
  {
    if (v9 != 33778)
    {
      v10 = 33779;
      goto LABEL_16;
    }

LABEL_32:
    if (a5)
    {
      v12 = at_texel_format_bgra8_unorm;
    }

    else
    {
      v12 = at_texel_format_rgba8_unorm;
    }

    v11 = at_block_format_bc2;
    goto LABEL_48;
  }

  if (a5)
  {
    v12 = at_texel_format_bgra8_unorm;
  }

  else
  {
    v12 = at_texel_format_rgba8_unorm;
  }

  v11 = at_block_format_bc1;
LABEL_48:
  v14 = *(this + 65);
  v44 = 0;
  v15 = IIOImageReadSession::retainBytePointer(a2, &v44, 0);
  v16 = *(this + 56);
  if (v16 > 0x1F)
  {
    if (!v15)
    {
      goto LABEL_55;
    }

    v18 = 0;
    v19 = 0;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_55;
    }

    v17 = v14 + 8 * v16;
    v18 = *(v17 + 304);
    v19 = *(v17 + 48);
  }

  v20 = v15 + v19;
  if (((v15 + v19) & 0xF) == 0)
  {
    v27 = 0;
    goto LABEL_66;
  }

  IIOImageReadSession::releaseBytePointer(a2, v44);
  v44 = 0;
LABEL_55:
  Size = IIOImageReadSession::getSize(a2);
  v22 = *(this + 56);
  if (v22 > 0x1F)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v14 + 8 * v22 + 48);
  }

  v18 = Size - v23;
  if (Size == v23)
  {
    goto LABEL_64;
  }

  v20 = malloc_type_malloc(Size - v23, 0x100004077774924uLL);
  v24 = *(this + 56);
  if (v24 > 0x1F)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v14 + 8 * v24 + 48);
  }

  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, v20, v25, v18);
  if (v18 != BytesAtOffset)
  {
    _cg_jpeg_mem_term("decodeDXTCtoRGBX", 1004, "got: %ld expected: %ld\n", BytesAtOffset, v18);
    v27 = v20;
    if (!v20)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  v27 = v20;
  if (v20)
  {
LABEL_66:
    v28 = at_encoder_create(v12, v8, v11, v8, 0);
    if (v28)
    {
      v29 = v28;
      height = a3->height;
      dest.texels = a3->data;
      rowBytes = a3->rowBytes;
      dest.validSize.x = a3->width;
      dest.validSize.y = height;
      *(&dest.validSize + 3) = 0;
      dest.rowBytes = rowBytes;
      dest.validSize.z = 1;
      dest.sliceBytes = 0;
      v32 = *&dest.validSize.x;
      *&v45.x = *&dest.validSize.x;
      v45.z = 1;
      block_counts = at_encoder_get_block_counts(v28, v45);
      v34 = block_counts;
      v35 = HIDWORD(block_counts);
      src.blocks = v20;
      src.rowBytes = at_encoder_get_block_size(v29) * block_counts;
      src.sliceBytes = v35 * v34 * at_encoder_get_block_size(v29);
      outSize = 0;
      *&v46.x = *&dest.validSize.x;
      v46.z = 1;
      v36.bits = at_block_get_features(v11, &src, v46, v18, &outSize, at_flags_default).bits;
      if (outSize > v18)
      {
        v37.bits = v36.bits;
        v38 = HIDWORD(v32);
        _cg_jpeg_mem_term("decodeDXTCtoRGBX", 1035, "*** expected size > file size (%d > %d)\n", outSize, v18);
        v39 = v18 / (v34 << (LODWORD(v37.bits) >> 5)) * ((v37.bits >> 22) & 0xFFF);
        if (v39 >= 0xFFFFFFFF)
        {
          LODWORD(v39) = -1;
        }

        if (v39 >= v38)
        {
          LODWORD(v39) = v38;
        }

        dest.validSize.y = v39;
      }

      v40 = at_encoder_decompress_texels(v29, &src, &dest, at_flags_default);
      if (v40)
      {
        LogError("decodeDXTCtoRGBX", 1048, "at_encoder_decompress_texels returned: %ld\n", v40);
      }

      CFRelease(v29);
    }

    if (!v27)
    {
      goto LABEL_78;
    }

LABEL_77:
    free(v27);
    goto LABEL_78;
  }

LABEL_64:
  BCReadPlugin::decodeDXTCtoRGBX();
LABEL_78:
  if (v44)
  {
    IIOImageReadSession::releaseBytePointer(a2, v44);
  }

  return 0;
}

uint64_t BCReadPlugin::decodeDXTCtoRGBX(BCReadPlugin *this, void *a2, size_t a3, vImage_Buffer *a4, unsigned int a5, int a6)
{
  if (a5 > 2)
  {
    v9 = at_alpha_not_premultiplied;
  }

  else
  {
    v9 = dword_186208F24[a5];
  }

  v10 = *(this + 119);
  if (v10 > 36282)
  {
    if (v10 > 36491)
    {
      if ((v10 - 36492) < 2)
      {
        if (a6)
        {
          v13 = at_texel_format_bgra8_unorm;
        }

        else
        {
          v13 = at_texel_format_rgba8_unorm;
        }

        v12 = at_block_format_bc7;
        goto LABEL_48;
      }

      if (v10 == 36494)
      {
        v12 = at_block_format_bc6;
      }

      else
      {
        if (v10 != 36495)
        {
          goto LABEL_40;
        }

        v12 = at_block_format_bc6u;
      }
    }

    else
    {
      if (v10 <= 36284)
      {
        if (v10 == 36283)
        {
          v12 = at_block_format_bc4;
          v13 = at_texel_format_l8_unorm;
        }

        else
        {
          v12 = at_block_format_bc4s;
          v13 = at_texel_format_l16_float;
        }

        goto LABEL_48;
      }

      if (v10 == 36285)
      {
        if (a6)
        {
          v13 = at_texel_format_bgra8_unorm;
        }

        else
        {
          v13 = at_texel_format_rgba8_unorm;
        }

        v12 = at_block_format_bc5;
        goto LABEL_48;
      }

      if (v10 != 36286)
      {
        goto LABEL_40;
      }

      v12 = at_block_format_bc5s;
    }

    v13 = at_texel_format_rgba16_float;
    goto LABEL_48;
  }

  if (v10 > 35915)
  {
    if ((v10 - 35916) >= 2)
    {
      if (v10 != 35918)
      {
        v11 = 35919;
LABEL_16:
        if (v10 == v11)
        {
          if (a6)
          {
            v13 = at_texel_format_bgra8_unorm;
          }

          else
          {
            v13 = at_texel_format_rgba8_unorm;
          }

          v12 = at_block_format_bc3;
          goto LABEL_48;
        }

LABEL_40:
        _cg_jpeg_mem_term("decodeDXTCtoRGBX", 1127, "*** BC - unknown GL pixel format\n");
        return 4294967246;
      }

      goto LABEL_32;
    }
  }

  else if ((v10 - 33776) >= 2)
  {
    if (v10 != 33778)
    {
      v11 = 33779;
      goto LABEL_16;
    }

LABEL_32:
    if (a6)
    {
      v13 = at_texel_format_bgra8_unorm;
    }

    else
    {
      v13 = at_texel_format_rgba8_unorm;
    }

    v12 = at_block_format_bc2;
    goto LABEL_48;
  }

  if (a6)
  {
    v13 = at_texel_format_bgra8_unorm;
  }

  else
  {
    v13 = at_texel_format_rgba8_unorm;
  }

  v12 = at_block_format_bc1;
LABEL_48:
  v14 = at_encoder_create(v13, v9, v12, v9, 0);
  if (!v14)
  {
    return 4294967246;
  }

  v15 = v14;
  height = a4->height;
  dest.texels = a4->data;
  rowBytes = a4->rowBytes;
  dest.validSize.x = a4->width;
  dest.validSize.y = height;
  *(&dest.validSize + 3) = 0;
  dest.rowBytes = rowBytes;
  dest.validSize.z = 1;
  dest.sliceBytes = 0;
  v18 = height;
  *&v31.x = *&dest.validSize.x;
  v31.z = 1;
  block_counts = at_encoder_get_block_counts(v14, v31);
  v20 = block_counts;
  v21 = HIDWORD(block_counts);
  src.blocks = a2;
  src.rowBytes = at_encoder_get_block_size(v15) * block_counts;
  src.sliceBytes = v21 * v20 * at_encoder_get_block_size(v15);
  outSize = 0;
  *&v32.x = *&dest.validSize.x;
  v32.z = 1;
  v22.bits = at_block_get_features(v12, &src, v32, a3, &outSize, at_flags_default).bits;
  if (outSize > a3)
  {
    v23.bits = v22.bits;
    _cg_jpeg_mem_term("decodeDXTCtoRGBX", 1170, "*** expected size > file size (%d > %d)\n", outSize, a3);
    v24 = a3 / (v20 << (LODWORD(v23.bits) >> 5)) * ((v23.bits >> 22) & 0xFFF);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    if (v24 >= v18)
    {
      LODWORD(v24) = v18;
    }

    dest.validSize.y = v24;
  }

  v25 = at_encoder_decompress_texels(v15, &src, &dest, at_flags_default);
  if (v25)
  {
    LogError("decodeDXTCtoRGBX", 1183, "at_encoder_decompress_texels returned: %ld\n", v25);
    v26 = 4294967246;
  }

  else
  {
    v26 = 0;
  }

  CFRelease(v15);
  return v26;
}

uint64_t BCReadPlugin::decodeImageImp(uint64_t a1, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v63[0] = 0;
  seed = 0;
  if (*(a1 + 442) == 1 && *(a1 + 424) != 16)
  {
    return 4294967246;
  }

  *(a1 + 424) = 16;
  *(a1 + 316) = ImageIOAlignRowBytes(*(a1 + 316), 0x10uLL);
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v8 = *(a1 + 220);
    v9 = v8 >> 24;
    v10 = MEMORY[0x1E69E9830];
    if ((v8 >> 24) <= 0x7F)
    {
      v11 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
    }

    else
    {
      v11 = __maskrune(v9, 0x40000uLL);
      v8 = *(a1 + 220);
    }

    if (v11)
    {
      v13 = (v8 >> 24);
    }

    else
    {
      v13 = 46;
    }

    v14 = v8 << 8 >> 24;
    if (v14 <= 0x7F)
    {
      v15 = *(v10 + 4 * v14 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(v14, 0x40000uLL);
      v8 = *(a1 + 220);
    }

    if (v15)
    {
      v16 = (v8 << 8 >> 24);
    }

    else
    {
      v16 = 46;
    }

    v17 = v8 >> 8;
    if (v17 <= 0x7F)
    {
      v18 = *(v10 + 4 * v17 + 60) & 0x40000;
    }

    else
    {
      v18 = __maskrune(v17, 0x40000uLL);
      v8 = *(a1 + 220);
    }

    if (v18)
    {
      v19 = (v8 >> 8);
    }

    else
    {
      v19 = 46;
    }

    if (v8 <= 0x7F)
    {
      if ((*(v10 + 4 * v8 + 60) & 0x40000) != 0)
      {
        goto LABEL_25;
      }
    }

    else if (__maskrune(v8, 0x40000uLL))
    {
LABEL_25:
      v20 = *(a1 + 220);
LABEL_28:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v13, v16, v19, v20, iioTypeStr[a3], "virtual OSStatus BCReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_29;
    }

    v20 = 46;
    goto LABEL_28;
  }

LABEL_29:
  IIOReadPlugin::debugDecodeImage(a1, a2);
  v21 = *(a1 + 24);
  if (v21)
  {
    v22 = IIOImageReadSession::mapData(v21);
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a1 + 308);
  v24 = *(a1 + 312);
  v25 = *(a1 + 316);
  if (a3 == 3)
  {
    v55 = a4;
    BlockArray = IIOReadPlugin::allocateBlockArray(a1, *(a1 + 104));
    v34 = *(a1 + 312);
    LODWORD(v35) = *(a1 + 308);
    v33 = v35;
    v31 = v34;
    v54 = *(a1 + 316) * v34;
    BaseAddress = _ImageIO_Malloc(v54, *(a1 + 416), v63, kImageMalloc_BC_Data[0], 0, 0);
    v32 = 0;
LABEL_39:
    v56 = a3;
    if (!BaseAddress)
    {
      v40 = 0;
      goto LABEL_66;
    }

    if (*(a1 + 220) == 1261584963)
    {
      DataSize = Ktx2GetDataSize(*(a1 + 504), v23, v24);
      if (DataSize)
      {
        v37 = v32;
        v32 = v22;
        v38 = DataSize;
        v39 = malloc_type_calloc(DataSize, 1uLL, 0x100004077774924uLL);
        if (v39)
        {
          v40 = v39;
          v58 = *(a1 + 224);
          v59 = v39;
          v60 = v38;
          v61 = 0;
          v41 = *(a1 + 496);
          if (v41)
          {
            v22 = v32;
            if (!(*(*(v41 + 8) + 40))())
            {
              dest.data = BaseAddress;
              dest.height = v24;
              dest.width = v23;
              dest.rowBytes = v25;
              v32 = v37;
              if (*(a1 + 24))
              {
                BlockArray = BCReadPlugin::decodeDXTCtoRGBX(a1, v59, v61, &dest, *(a1 + 326), *(a1 + 437) == 0);
              }

              if (BlockArray)
              {
                goto LABEL_48;
              }

LABEL_55:
              if (*(a1 + 322) == 32 && *(a1 + 320) == 8 && *(a1 + 438) == 1)
              {
                dest.data = BaseAddress;
                v45 = *(a1 + 308);
                v46.i64[0] = v45;
                v46.i64[1] = HIDWORD(v45);
                *&dest.height = vextq_s8(v46, v46, 8uLL);
                dest.rowBytes = *(a1 + 316);
                vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
              }

              if (v56 == 3)
              {
                v47 = 0;
                v64.origin.x = 0.0;
                v64.origin.y = 0.0;
                v64.size.width = v33;
                v64.size.height = v31;
                **(a1 + 96) = IIOReadPlugin::createImageBlock(a1, BaseAddress, v54, v64, *(a1 + 316), *(a1 + 371));
                if (CGRectEqualToRect(*(a1 + 120), *MEMORY[0x1E695F050]))
                {
                  v48 = 0;
                }

                else
                {
                  v65.origin.x = 0.0;
                  v65.origin.y = 0.0;
                  v65.size.width = v33;
                  v65.size.height = v31;
                  *(&v48 - 1) = CGRectUnion(*(a1 + 120), v65);
                  v47 = v49;
                  v33 = v50;
                  v31 = v51;
                }

                BlockArray = 0;
                *(a1 + 120) = v47;
                *(a1 + 128) = v48;
                *(a1 + 136) = v33;
                *(a1 + 144) = v31;
                if ((v32 & 1) == 0)
                {
LABEL_75:
                  if (v40)
                  {
                    free(v40);
                  }

                  goto LABEL_77;
                }

                BaseAddress = 0;
LABEL_71:
                IOSurfaceUnlock(*v55, 0, &seed);
LABEL_72:
                if (v56 == 3 && BaseAddress)
                {
                  _ImageIO_Free(BaseAddress, v63[0]);
                }

                goto LABEL_75;
              }

              BlockArray = 0;
LABEL_66:
              if (!v32)
              {
                goto LABEL_72;
              }

              goto LABEL_71;
            }
          }

          else
          {
            LogFault("decodeImageImp", 1275, "*** _bc._ktxTexture is NULL\n");
            v22 = v32;
          }

          BlockArray = 4294967246;
          if ((v37 & 1) == 0)
          {
            goto LABEL_72;
          }

          goto LABEL_71;
        }

        BlockArray = 4294967188;
        v22 = v32;
        LOBYTE(v32) = v37;
      }

      else
      {
        BlockArray = 4294967229;
      }

      v40 = 0;
      if ((v32 & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    dest.data = BaseAddress;
    dest.height = v24;
    dest.width = v23;
    dest.rowBytes = v25;
    v42 = *(a1 + 24);
    if (v42)
    {
      v43 = *(a1 + 437);
      if (*(a1 + 476) == 34952)
      {
        v44 = BCReadPlugin::decode8888toRGBX(a1, v42, &dest, v29, v43 == 0);
      }

      else
      {
        v44 = BCReadPlugin::decodeDXTCtoRGBX(a1, v42, &dest, *(a1 + 326), v43 == 0);
      }

      BlockArray = v44;
    }

    v40 = 0;
    if (BlockArray)
    {
LABEL_48:
      *(a1 + 104) = 0;
      if ((v32 & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_71;
    }

    goto LABEL_55;
  }

  if (a3 == 1 && a4 && *a4)
  {
    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    v27 = v22;
    Height = IOSurfaceGetHeight(*a4);
    v55 = a4;
    BlockArray = 0;
    v30 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v22 = v27;
    v54 = v30;
    v63[0] = v30;
    v31 = 0.0;
    v32 = 1;
    v33 = 0.0;
    goto LABEL_39;
  }

  BlockArray = 0;
LABEL_77:
  if (v22)
  {
    v52 = *(a1 + 24);
    if (v52)
    {
      IIOImageReadSession::unmapData(v52);
    }
  }

  return BlockArray;
}