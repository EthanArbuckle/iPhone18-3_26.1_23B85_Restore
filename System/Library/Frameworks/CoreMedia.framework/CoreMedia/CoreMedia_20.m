float64x2_t FigBoxedMetadataGetValueOfItemAtIndexAsCGSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = OUTLINED_FUNCTION_34_0(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15, SHIDWORD(v15));
  result = 0uLL;
  if (!v9 && v16 == 71)
  {
    v13 = OUTLINED_FUNCTION_20_4(a1 + 32, v10, v11, v17);
    result = 0uLL;
    if (!v13)
    {
      return vcvtq_f64_f32(vrev32_s8(v17[0]));
    }
  }

  return result;
}

float64x2_t FigBoxedMetadataGetValueOfItemAtIndexAsCGRect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = OUTLINED_FUNCTION_34_0(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12, SHIDWORD(v12));
  result = 0uLL;
  if (!v9 && v13 == 72)
  {
    if (FigAtomStreamReadCurrentAtomData(a1 + 32, 0, 16, &v14))
    {
      return 0;
    }

    else
    {
      return vcvtq_f64_f32(*&vrev32q_s8(v14));
    }
  }

  return result;
}

int8x16_t FigBoxedMetadataGetValueOfItemAtIndexAsCGAffineTransform@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  a9[1] = 0u;
  a9[2] = 0u;
  *a9 = 0u;
  if (!OUTLINED_FUNCTION_34_0(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14, SHIDWORD(v14)) && v15 == 79 && !FigAtomStreamReadCurrentAtomData(a1 + 32, 0, 72, v16))
  {
    v12 = vrev64q_s8(*(&v16[1] + 8));
    *a9 = vrev64q_s8(v16[0]);
    a9[1] = v12;
    result = vrev64q_s8(v16[3]);
    a9[2] = result;
  }

  return result;
}

uint64_t FigBoxedMetadataEndConstruction(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_28_2();
    if (v2)
    {
      *(v1 + 216) = 0;
      if (CMBlockBufferGetDataLength(*(v1 + 16)) || !FigAtomWriterBeginAtom(v1 + 144, 0, 0, v3, v4, v5, v6, v7) && !FigAtomWriterEndAtom(v1 + 144, v8, v9, v10, v11, v12, v13, v14))
      {
        FigAtomStreamInitWithBBuf(*(v1 + 16), 0, 1, v1 + 32);
      }
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 0xFFFFC040uLL, "<<<< FigMetadata >>>>", 0xD3D, v17, v18, v19);
  }

  return 0;
}

size_t FigBoxedMetadataAppendValue(uint64_t a1, uint64_t a2, uint64_t a3, int8x8_t *a4)
{
  v7 = v6;
  v56 = 0;
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v52 = 4294950976;
    v53 = 3427;
LABEL_53:
    v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, v52, "<<<< FigMetadata >>>>", v53, v49, v50, v51);
    OUTLINED_FUNCTION_10_5();
    goto LABEL_27;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v52 = 4294950976;
    v53 = 3428;
    goto LABEL_53;
  }

  if (a3 <= 0)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v52 = 4294950976;
    v53 = 3429;
    goto LABEL_53;
  }

  if (!a4)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v52 = 4294950976;
    v53 = 3431;
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_28_2();
  if (!v17)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v52 = 4294950970;
    v53 = 3432;
    goto LABEL_53;
  }

  QuickTimeWellKnownTypeForLocalID = FigMetadataFormatDescriptionGetQuickTimeWellKnownTypeForLocalID(*(v4 + 24), a2, v11, v12, v13, v14, v15, v16);
  WellKnownTypeDataSize = getWellKnownTypeDataSize(QuickTimeWellKnownTypeForLocalID, a3, &v56);
  if (!WellKnownTypeDataSize)
  {
    goto LABEL_11;
  }

  if (WellKnownTypeDataSize != a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v52 = 4294950969;
    v53 = 3437;
    goto LABEL_53;
  }

  if (v56)
  {
    v7 = 0;
    v20 = 4294950968;
    v5 = 0;
    switch(QuickTimeWellKnownTypeForLocalID)
    {
      case 'B':
      case 'L':
        OUTLINED_FUNCTION_10_5();
        LOWORD(v54[0]) = bswap32(a4->u16[0]) >> 16;
        goto LABEL_22;
      case 'C':
      case 'M':
        goto LABEL_16;
      case 'D':
      case 'E':
      case 'I':
      case 'K':
      case 'R':
        goto LABEL_27;
      case 'F':
      case 'G':
        OUTLINED_FUNCTION_10_5();
        *&v54[0] = vrev32_s8(*a4);
        goto LABEL_22;
      case 'H':
        goto LABEL_15;
      case 'J':
      case 'N':
        goto LABEL_17;
      case 'O':
      case 'S':
        for (i = 0; i != 9; ++i)
        {
          QuickTimeWellKnownTypeForLocalID = v54;
          *(v54 + i * 8) = bswap64(*&a4[i]);
        }

        OUTLINED_FUNCTION_10_5();
        goto LABEL_23;
      case 'P':
      case 'Q':
        OUTLINED_FUNCTION_14_4();
        v37 = malloc_type_malloc(a3, v36);
        if (!v37)
        {
          goto LABEL_54;
        }

        QuickTimeWellKnownTypeForLocalID = v37;
        v38 = a3 >> 2;
        if (v38 >= 1)
        {
          v39 = 0;
          do
          {
            *(v37 + v39) = bswap32(a4->u32[v39]);
            ++v39;
          }

          while (v38 != v39);
        }

        v7 = 0;
        v5 = v37;
        goto LABEL_23;
      case 'T':
        do
        {
          OUTLINED_FUNCTION_10_5();
          OUTLINED_FUNCTION_16_3(v40, *&v54[0]);
        }

        while (!v41);
        goto LABEL_23;
      case 'U':
        if (a3 == 12)
        {
          do
          {
            OUTLINED_FUNCTION_10_5();
            OUTLINED_FUNCTION_16_3(v42, *&v54[0]);
          }

          while (!v41);
        }

        else
        {
          OUTLINED_FUNCTION_13_4();
          v44 = malloc_type_malloc(a3, v43);
          if (!v44)
          {
LABEL_54:
            OUTLINED_FUNCTION_10_5();
            v20 = 4294950974;
            goto LABEL_27;
          }

          QuickTimeWellKnownTypeForLocalID = v44;
          for (j = 0; j != 6; ++j)
          {
            *(v44 + j * 2) = bswap32(a4->u16[j]) >> 16;
          }

          *(v44 + 12) = a4[1].i8[4];
          if (((a3 + 0x1FFFFFFF3) >> 1) >= 1)
          {
            v46 = (a3 - 13) >> 1;
            v47 = 13;
            do
            {
              *(v44 + v47) = bswap32(*(a4->u16 + v47)) >> 16;
              v47 += 2;
              --v46;
            }

            while (v46);
          }

          v5 = 0;
          v7 = v44;
        }

        goto LABEL_23;
      default:
        if (QuickTimeWellKnownTypeForLocalID == 23)
        {
LABEL_16:
          OUTLINED_FUNCTION_10_5();
          LODWORD(v54[0]) = bswap32(a4->i32[0]);
        }

        else if (QuickTimeWellKnownTypeForLocalID == 24)
        {
LABEL_17:
          OUTLINED_FUNCTION_10_5();
          *&v54[0] = bswap64(*a4);
        }

        else
        {
          v5 = 0;
          if (QuickTimeWellKnownTypeForLocalID != 30)
          {
            goto LABEL_27;
          }

LABEL_15:
          OUTLINED_FUNCTION_10_5();
          v54[0] = vrev32q_s8(*a4->i8);
        }

LABEL_22:
        QuickTimeWellKnownTypeForLocalID = v54;
        break;
    }

    goto LABEL_23;
  }

LABEL_11:
  OUTLINED_FUNCTION_10_5();
  QuickTimeWellKnownTypeForLocalID = a4;
LABEL_23:
  appended = FigAtomWriterBeginAtom(v4 + 144, a2, 0, v21, v22, v23, v24, v25);
  if (!appended)
  {
    appended = FigAtomWriterAppendData(v4 + 144, QuickTimeWellKnownTypeForLocalID, a3);
    if (!appended)
    {
      appended = FigAtomWriterEndAtom(v4 + 144, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  v20 = appended;
LABEL_27:
  free(v5);
  free(v7);
  return v20;
}

size_t FigBoxedMetadataAppendCFTypedValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v207 = 0;
  memset(v206, 0, sizeof(v206));
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v93 = 4294950976;
    v94 = 3677;
    goto LABEL_138;
  }

  if (!a2)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v93 = 4294950976;
    v94 = 3678;
    goto LABEL_138;
  }

  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v93 = 4294950976;
    v94 = 3679;
    goto LABEL_138;
  }

  if (!*(a1 + 216))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v93 = 4294950970;
    v94 = 3680;
    goto LABEL_138;
  }

  QuickTimeWellKnownTypeForLocalID = FigMetadataFormatDescriptionGetQuickTimeWellKnownTypeForLocalID(*(a1 + 24), a2, a3, a4, a5, a6, a7, a8);
  BytePtr = QuickTimeWellKnownTypeForLocalID;
  switch(QuickTimeWellKnownTypeForLocalID)
  {
    case 'A':
    case 'K':
      CFNumberGetTypeID();
      v16 = OUTLINED_FUNCTION_9_8();
      if (BytePtr == CFGetTypeID(v16))
      {
        Length = 1;
        v18 = OUTLINED_FUNCTION_6_10();
        CFNumberGetValue(v18, kCFNumberSInt8Type, v19);
        goto LABEL_59;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v93 = 4294950968;
      v94 = 3717;
      goto LABEL_138;
    case 'B':
      CFNumberGetTypeID();
      v97 = OUTLINED_FUNCTION_9_8();
      if (BytePtr == CFGetTypeID(v97))
      {
        goto LABEL_68;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v93 = 4294950968;
      v94 = 3724;
      goto LABEL_138;
    case 'C':
      CFNumberGetTypeID();
      v96 = OUTLINED_FUNCTION_9_8();
      if (BytePtr == CFGetTypeID(v96))
      {
        goto LABEL_77;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v93 = 4294950968;
      v94 = 3732;
      goto LABEL_138;
    case 'D':
    case 'E':
      v204 = 0;
      v203 = 0u;
      memset(&point, 0, sizeof(point));
      v200 = 0;
      v198 = 0u;
      v199 = 0u;
      if (QuickTimeWellKnownTypeForLocalID == 68)
      {
        v36 = 1667330681;
      }

      else
      {
        v36 = 1668441443;
      }

      v197 = 0uLL;
      FigThreadRunOnce(&sRegisterFigBoxedMetadataTypeOnce, registerFigBoxedMetadataType);
      v37 = sFigBoxedMetadataID;
      if (v37 != CFGetTypeID(a3))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950968;
        v94 = 3779;
        goto LABEL_138;
      }

      if (!FigCFEqual(*(a3 + 24), *(a1 + 24)))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950975;
        v94 = 3780;
        goto LABEL_138;
      }

      if (*(a3 + 216))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950971;
        v94 = 3781;
        goto LABEL_138;
      }

      v38 = *(a3 + 16);
      if (!v38)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950969;
        v94 = 3783;
        goto LABEL_138;
      }

      DataLength = CMBlockBufferGetDataLength(v38);
      if (!DataLength)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950969;
        v94 = 3785;
        goto LABEL_138;
      }

      v45 = DataLength;
      appended = FigAtomWriterBeginAtom(a1 + 144, a2, 0, v40, v41, v42, v43, v44);
      if (!appended)
      {
        appended = FigAtomWriterInitWithParent(a1 + 144, &point);
        if (!appended)
        {
          appended = FigAtomWriterBeginAtom(&point, v36, 0, v47, v48, v49, v50, v51);
          if (!appended)
          {
            appended = FigAtomWriterInitWithParent(&point, &v197);
            if (!appended)
            {
              appended = FigAtomWriterBeginAtom(&v197, 1667855475, 0, v52, v53, v54, v55, v56);
              if (!appended)
              {
                appended = FigAtomWriterAppendBlockBufferData(&v197, v38, 0, v45);
                if (!appended)
                {
                  appended = FigAtomWriterEndAtom(&v197, v57, v58, v59, v60, v61, v62, v63);
                  if (!appended)
                  {
                    appended = FigAtomWriterEndAtom(&point, v64, v65, v66, v67, v68, v69, v70);
                    if (!appended)
                    {
                      appended = FigAtomWriterEndAtom(a1 + 144, v71, v72, v73, v74, v75, v76, v77);
                    }
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_139;
    case 'F':
      point.origin.x = 0.0;
      point.origin.y = 0.0;
      CFDictionaryGetTypeID();
      v100 = OUTLINED_FUNCTION_9_8();
      if (BytePtr == CFGetTypeID(v100))
      {
        if (CGPointMakeWithDictionaryRepresentation(a3, &point.origin))
        {
          goto LABEL_75;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950968;
        v94 = 3821;
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950968;
        v94 = 3818;
      }

      goto LABEL_138;
    case 'G':
      point.origin.x = 0.0;
      point.origin.y = 0.0;
      CFDictionaryGetTypeID();
      v101 = OUTLINED_FUNCTION_9_8();
      if (BytePtr == CFGetTypeID(v101))
      {
        if (CGSizeMakeWithDictionaryRepresentation(a3, &point))
        {
LABEL_75:
          OUTLINED_FUNCTION_3_12();
          *&v206[0] = vrev32_s8(vcvt_f32_f64(point.origin));
          BytePtr = v206;
          goto LABEL_108;
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950968;
        v94 = 3836;
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950968;
        v94 = 3834;
      }

      goto LABEL_138;
    case 'H':
      memset(&point, 0, sizeof(point));
      CFDictionaryGetTypeID();
      v106 = OUTLINED_FUNCTION_9_8();
      if (BytePtr != CFGetTypeID(v106))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950968;
        v94 = 3849;
        goto LABEL_138;
      }

      if (!CGRectMakeWithDictionaryRepresentation(a3, &point))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950968;
        v94 = 3851;
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_3_12();
      v206[0] = vrev32q_s8(vcvt_hight_f32_f64(vcvt_f32_f64(point.origin), point.size));
      BytePtr = v206;
      Length = 16;
      if (&v197 != -128)
      {
        goto LABEL_114;
      }

      goto LABEL_135;
    case 'I':
    case 'R':
      goto LABEL_57;
    case 'J':
      CFNumberGetTypeID();
      v95 = OUTLINED_FUNCTION_9_8();
      if (BytePtr == CFGetTypeID(v95))
      {
        goto LABEL_90;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v93 = 4294950968;
      v94 = 3740;
      goto LABEL_138;
    case 'L':
      CFNumberGetTypeID();
      v88 = OUTLINED_FUNCTION_9_8();
      if (BytePtr != CFGetTypeID(v88))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950968;
        v94 = 3748;
        goto LABEL_138;
      }

LABEL_68:
      Length = 2;
      v98 = OUTLINED_FUNCTION_6_10();
      CFNumberGetValue(v98, kCFNumberSInt16Type, v99);
      OUTLINED_FUNCTION_3_12();
      LOWORD(v206[0]) = bswap32(LOWORD(v206[0])) >> 16;
      if (!BytePtr)
      {
        goto LABEL_135;
      }

      goto LABEL_114;
    case 'M':
      CFNumberGetTypeID();
      v102 = OUTLINED_FUNCTION_9_8();
      if (BytePtr == CFGetTypeID(v102))
      {
LABEL_77:
        v103 = OUTLINED_FUNCTION_6_10();
        v105 = kCFNumberSInt32Type;
        goto LABEL_112;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v93 = 4294950968;
      v94 = 3756;
      goto LABEL_138;
    case 'N':
      CFNumberGetTypeID();
      v116 = OUTLINED_FUNCTION_9_8();
      if (BytePtr == CFGetTypeID(v116))
      {
LABEL_90:
        v117 = OUTLINED_FUNCTION_6_10();
        v119 = kCFNumberSInt64Type;
        goto LABEL_107;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v93 = 4294950968;
      v94 = 3764;
      goto LABEL_138;
    case 'O':
    case 'S':
      CFArrayGetTypeID();
      v33 = OUTLINED_FUNCTION_9_8();
      if (BytePtr == CFGetTypeID(v33))
      {
        if (CFArrayGetCount(a3) == 9)
        {
          v34 = 0;
          v8 = v206;
          Length = 72;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a3, v34);
            TypeID = CFNumberGetTypeID();
            if (TypeID != CFGetTypeID(ValueAtIndex))
            {
              break;
            }

            CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, v8);
            *v8 = bswap64(*v8);
            ++v8;
            if (++v34 == 9)
            {
              goto LABEL_34;
            }
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0();
          v93 = 4294950968;
          v94 = 3873;
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0();
          v93 = 4294950968;
          v94 = 3870;
        }
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950968;
        v94 = 3869;
      }

      goto LABEL_138;
    case 'P':
    case 'Q':
      point.origin.x = 0.0;
      point.origin.y = 0.0;
      v78 = CFArrayGetTypeID();
      if (v78 != CFGetTypeID(a3))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v85 = 3906;
        goto LABEL_178;
      }

      Count = CFArrayGetCount(a3);
      v80 = Count;
      if (BytePtr == 80)
      {
        if (Count <= 2)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0();
          v85 = 3910;
LABEL_178:
          v144 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, 0xFFFFC038uLL, "<<<< FigMetadata >>>>", v85, v82, v83, v84);
          BytePtr = 0;
          goto LABEL_146;
        }
      }

      else if (Count <= 1)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v85 = 3913;
        goto LABEL_178;
      }

      Length = 8 * (Count & 0x7FFFFFFF);
      OUTLINED_FUNCTION_14_4();
      BytePtr = malloc_type_malloc(8 * (v80 & 0x7FFFFFFF), v129);
      if (BytePtr)
      {
        v130 = 0;
        v131 = v80 & 0x7FFFFFFF;
        while (1)
        {
          v132 = CFArrayGetValueAtIndex(a3, v130);
          v133 = CFDictionaryGetTypeID();
          if (v133 != CFGetTypeID(v132))
          {
            break;
          }

          if (!CGPointMakeWithDictionaryRepresentation(v132, &point.origin))
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0();
            v191 = 3926;
            goto LABEL_145;
          }

          *&BytePtr[8 * v130++] = vrev32_s8(vcvt_f32_f64(point.origin));
          if (v131 == v130)
          {
            v10 = 0;
            ValueAtIndex = 0;
            v8 = BytePtr;
            goto LABEL_114;
          }
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v191 = 3924;
LABEL_145:
        v144 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v187, 0xFFFFC038uLL, "<<<< FigMetadata >>>>", v191, v188, v189, v190);
        goto LABEL_146;
      }

      v144 = 4294950974;
LABEL_146:
      v8 = BytePtr;
      goto LABEL_140;
    case 'T':
      CFArrayGetTypeID();
      v107 = OUTLINED_FUNCTION_9_8();
      if (BytePtr == CFGetTypeID(v107))
      {
        if (CFArrayGetCount(a3) == 6)
        {
          Length = 12;
          while (1)
          {
            LODWORD(point.origin.x) = 0;
            v108 = OUTLINED_FUNCTION_17_3();
            if (!FigCFArrayGetInt32AtIndex(v108, 0, v109, v110, v111, v112, v113, v114))
            {
              break;
            }

            OUTLINED_FUNCTION_3_12();
            OUTLINED_FUNCTION_12_5();
            OUTLINED_FUNCTION_30_1(v115, v197, *(&v197 + 1), v198, *(&v198 + 1), v199, *(&v199 + 1), v200, v201, *&point.origin.x, *&point.origin.y, *&point.size.width, *&point.size.height, v203, *(&v203 + 1), v204, v205, v206[0]);
            if (v24)
            {
              goto LABEL_113;
            }
          }

          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0();
          v93 = 4294950968;
          v94 = 3950;
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0();
          v93 = 4294950968;
          v94 = 3940;
        }
      }

      else
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950968;
        v94 = 3939;
      }

      goto LABEL_138;
    case 'U':
      CFArrayGetTypeID();
      v120 = OUTLINED_FUNCTION_9_8();
      if (BytePtr != CFGetTypeID(v120))
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v93 = 4294950968;
        v94 = 3960;
        goto LABEL_138;
      }

      if (CFArrayGetCount(a3) != 6)
      {
        if (CFArrayGetCount(a3) < 8)
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0();
          v93 = 4294950968;
          v94 = 4035;
          goto LABEL_138;
        }

        v146 = (CFArrayGetCount(a3) << 32) - 0x800000000;
        Length = (v146 >> 31) + 13;
        OUTLINED_FUNCTION_13_4();
        BytePtr = malloc_type_malloc(Length, v147);
        if (!BytePtr)
        {
          v8 = 0;
LABEL_158:
          v144 = 4294950974;
          goto LABEL_121;
        }

        v148 = 0;
        v149 = v146 >> 32;
        LODWORD(point.origin.x) = 0;
        v150 = 3995;
        do
        {
          v151 = OUTLINED_FUNCTION_17_3();
          if (!FigCFArrayGetInt32AtIndex(v151, v148, v152, v153, v154, v155, v156, v157))
          {
            goto LABEL_148;
          }

          OUTLINED_FUNCTION_12_5();
          *&BytePtr[2 * v148++] = v158;
        }

        while (v148 != 6);
        v159 = OUTLINED_FUNCTION_17_3();
        if (FigCFArrayGetInt32AtIndex(v159, 6, v160, v161, v162, v163, v164, v165))
        {
          v166 = OUTLINED_FUNCTION_17_3();
          if (FigCFArrayGetInt32AtIndex(v166, 7, v167, v168, v169, v170, v171, v172))
          {
            BytePtr[12] = LOBYTE(point.origin.x) & 0xF | (16 * LOBYTE(point.origin.x));
            if (v149 < 1)
            {
LABEL_134:
              v8 = 0;
              ValueAtIndex = 0;
              v10 = BytePtr;
              goto LABEL_114;
            }

            v173 = 0;
            while (1)
            {
              v174 = OUTLINED_FUNCTION_17_3();
              if (!FigCFArrayGetInt32AtIndex(v174, v175, v176, v177, v178, v179, v180, v181))
              {
                break;
              }

              OUTLINED_FUNCTION_12_5();
              *&BytePtr[2 * v173++ + 13] = v182;
              if (v149 == v173)
              {
                goto LABEL_134;
              }
            }

            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0();
            v196 = 4027;
            goto LABEL_149;
          }

          v150 = 4013;
        }

        else
        {
          v150 = 4006;
        }

LABEL_148:
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0();
        v196 = v150;
LABEL_149:
        v144 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v192, 0xFFFFC038uLL, "<<<< FigMetadata >>>>", v196, v193, v194, v195);
        v8 = 0;
        goto LABEL_121;
      }

      Length = 12;
      while (1)
      {
        LODWORD(point.origin.x) = 0;
        v121 = OUTLINED_FUNCTION_17_3();
        if (!FigCFArrayGetInt32AtIndex(v121, 0, v122, v123, v124, v125, v126, v127))
        {
          break;
        }

        OUTLINED_FUNCTION_3_12();
        OUTLINED_FUNCTION_12_5();
        OUTLINED_FUNCTION_30_1(v128, v197, *(&v197 + 1), v198, *(&v198 + 1), v199, *(&v199 + 1), v200, v201, *&point.origin.x, *&point.origin.y, *&point.size.width, *&point.size.height, v203, *(&v203 + 1), v204, v205, v206[0]);
        if (v24)
        {
          goto LABEL_113;
        }
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v93 = 4294950968;
      v94 = 3971;
LABEL_138:
      appended = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v89, v93, "<<<< FigMetadata >>>>", v94, v90, v91, v92);
LABEL_139:
      v144 = appended;
      v8 = 0;
LABEL_140:
      BytePtr = 0;
LABEL_121:
      free(v8);
      free(BytePtr);
      return v144;
    default:
      if ((QuickTimeWellKnownTypeForLocalID - 1) < 2 || (QuickTimeWellKnownTypeForLocalID - 4) < 2)
      {
        v23 = CFStringGetTypeID();
        if (v23 != CFGetTypeID(a3))
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0();
          v93 = 4294950968;
          v94 = 3688;
          goto LABEL_138;
        }

        v24 = BytePtr == 1 || BytePtr == 4;
        if (v24)
        {
          v25 = 134217984;
        }

        else
        {
          v25 = 268435712;
        }

        v26 = CFGetAllocator(a1);
        ExternalRepresentation = CFStringCreateExternalRepresentation(v26, a3, v25, 0);
        if (!ExternalRepresentation)
        {
          v8 = 0;
          BytePtr = 0;
          goto LABEL_158;
        }

        ValueAtIndex = ExternalRepresentation;
        BytePtr = CFDataGetBytePtr(ExternalRepresentation);
        Length = CFDataGetLength(ValueAtIndex);
        v10 = 0;
        v8 = 0;
        if (!BytePtr)
        {
          goto LABEL_135;
        }
      }

      else
      {
        switch(QuickTimeWellKnownTypeForLocalID)
        {
          case 0x17:
            CFNumberGetTypeID();
            v135 = OUTLINED_FUNCTION_9_8();
            if (BytePtr != CFGetTypeID(v135))
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0();
              v93 = 4294950968;
              v94 = 3700;
              goto LABEL_138;
            }

            v103 = OUTLINED_FUNCTION_6_10();
            v105 = kCFNumberFloat32Type;
LABEL_112:
            CFNumberGetValue(v103, v105, v104);
            OUTLINED_FUNCTION_3_12();
            LODWORD(v206[0]) = bswap32(v206[0]);
            Length = 4;
LABEL_113:
            if (!BytePtr)
            {
              goto LABEL_135;
            }

            break;
          case 0x18:
            CFNumberGetTypeID();
            v134 = OUTLINED_FUNCTION_9_8();
            if (BytePtr != CFGetTypeID(v134))
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0();
              v93 = 4294950968;
              v94 = 3708;
              goto LABEL_138;
            }

            v117 = OUTLINED_FUNCTION_6_10();
            v119 = kCFNumberFloat64Type;
LABEL_107:
            CFNumberGetValue(v117, v119, v118);
            OUTLINED_FUNCTION_3_12();
            *&v206[0] = bswap64(*&v206[0]);
LABEL_108:
            Length = 8;
            if (!BytePtr)
            {
              goto LABEL_135;
            }

            break;
          case 0x1E:
            CFArrayGetTypeID();
            v20 = OUTLINED_FUNCTION_9_8();
            if (BytePtr != CFGetTypeID(v20))
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0();
              v93 = 4294950968;
              v94 = 3885;
              goto LABEL_138;
            }

            if (CFArrayGetCount(a3) != 4)
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0();
              v93 = 4294950968;
              v94 = 3886;
              goto LABEL_138;
            }

            v21 = 0;
            v8 = v206;
            Length = 16;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a3, v21);
              v22 = CFNumberGetTypeID();
              if (v22 != CFGetTypeID(ValueAtIndex))
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_0();
                v93 = 4294950968;
                v94 = 3889;
                goto LABEL_138;
              }

              CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, v8);
              *v8 = bswap32(*v8);
              v8 = (v8 + 4);
              ++v21;
            }

            while (v21 != 4);
LABEL_34:
            OUTLINED_FUNCTION_3_12();
            BytePtr = v206;
            if (&v197 == -128)
            {
              goto LABEL_135;
            }

            break;
          default:
LABEL_57:
            CFDataGetTypeID();
            v86 = OUTLINED_FUNCTION_9_8();
            if (BytePtr != CFGetTypeID(v86))
            {
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0();
              v93 = 4294950968;
              v94 = 4049;
              goto LABEL_138;
            }

            CFDataGetBytePtr(a3);
            v87 = OUTLINED_FUNCTION_9_8();
            Length = CFDataGetLength(v87);
LABEL_59:
            OUTLINED_FUNCTION_3_12();
            if (!BytePtr)
            {
              goto LABEL_135;
            }

            break;
        }
      }

LABEL_114:
      if (Length)
      {
        v136 = FigAtomWriterBeginAtom(a1 + 144, a2, 0, v28, v29, v30, v31, v32);
        if (!v136)
        {
          v136 = FigAtomWriterAppendData(a1 + 144, BytePtr, Length);
          if (!v136)
          {
            v136 = FigAtomWriterEndAtom(a1 + 144, v137, v138, v139, v140, v141, v142, v143);
          }
        }

LABEL_118:
        v144 = v136;
        if (ValueAtIndex)
        {
          CFRelease(ValueAtIndex);
        }

        BytePtr = v10;
        goto LABEL_121;
      }

LABEL_135:
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0();
      v136 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v183, 0xFFFFC03EuLL, "<<<< FigMetadata >>>>", 0xFD8, v184, v185, v186);
      goto LABEL_118;
  }
}

size_t setupAndNormalizeAndAppendScalarValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v17 = 0;
  result = scalarWriteSetup(a1, a2, 0, &v17, a5, a6, a7, a8);
  if (!result)
  {
    v16 = v17;

    return normalizeAndAppendScalarValue(a1, a2, a3, v16, v12, v13, v14, v15);
  }

  return result;
}

void FigBoxedMetadataAppendFloat32(float a1)
{
  OUTLINED_FUNCTION_18_4();
  v34[0] = 0;
  if (scalarWriteSetup(v2, v3, 0, v34, v4, v5, v6, v7))
  {
    goto LABEL_15;
  }

  if ((v34[0] - 23) <= 0x37)
  {
    OUTLINED_FUNCTION_23_3();
    if (!v9)
    {
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_35();

      normalizeAndAppendScalarValue(v10, v11, v12, v13, v14, v15, v16, v17);
      return;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_9;
      }

      v26 = OUTLINED_FUNCTION_11_4();
      v33 = 8;
    }

    else
    {
      v34[1] = bswap32(LODWORD(a1));
      v26 = OUTLINED_FUNCTION_11_4();
      v33 = 4;
    }

    appendScalarValue(v26, v27, v28, v33, v29, v30, v31, v32);
LABEL_15:
    OUTLINED_FUNCTION_35();
    return;
  }

LABEL_9:
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_35();

  FigSignalErrorAtGM(v18, v19, v20, v21, v22, v23, v24, v25);
}

size_t appendScalarValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigAtomWriterBeginAtom(a1 + 144, a2, 0, a4, a5, a6, a7, a8);
  if (!result)
  {
    result = FigAtomWriterAppendData(a1 + 144, a3, a4);
    if (!result)
    {

      return FigAtomWriterEndAtom(a1 + 144, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return result;
}

void FigBoxedMetadataAppendFloat64(double a1)
{
  OUTLINED_FUNCTION_18_4();
  v34 = 0;
  if (scalarWriteSetup(v2, v3, 0, &v34, v4, v5, v6, v7))
  {
    goto LABEL_15;
  }

  if ((v34 - 23) <= 0x37)
  {
    OUTLINED_FUNCTION_23_3();
    if (!v9)
    {
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_35();

      normalizeAndAppendScalarValue(v10, v11, v12, v13, v14, v15, v16, v17);
      return;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_9;
      }

      v35 = bswap64(*&a1);
      v26 = OUTLINED_FUNCTION_11_4();
      v33 = 8;
    }

    else
    {
      v26 = OUTLINED_FUNCTION_11_4();
      v33 = 4;
    }

    appendScalarValue(v26, v27, v28, v33, v29, v30, v31, v32);
LABEL_15:
    OUTLINED_FUNCTION_35();
    return;
  }

LABEL_9:
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_35();

  FigSignalErrorAtGM(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t FigBoxedMetadataAppendCGPoint(__n128 a1, __n128 a2)
{
  OUTLINED_FUNCTION_18_4();
  result = OUTLINED_FUNCTION_32_1(v2, v3, v4, v5, v6, v7, *MEMORY[0x1E69E9840], a1.n128_i64[0], a1.n128_i64[1], a2.n128_i64[0], a2.n128_i64[1], v22, v23, SHIDWORD(v23));
  if (!result)
  {
    if (v24 == 70)
    {
      v13 = OUTLINED_FUNCTION_11_4();
      return appendScalarValue(v13, v14, v15, 8, v16, v17, v18, v19);
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_22_3();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFC038uLL, "<<<< FigMetadata >>>>", 0x1116, v10, v11, v12);
    }
  }

  return result;
}

uint64_t FigBoxedMetadataAppendCGSize(__n128 a1, __n128 a2)
{
  OUTLINED_FUNCTION_18_4();
  result = OUTLINED_FUNCTION_32_1(v2, v3, v4, v5, v6, v7, *MEMORY[0x1E69E9840], a1.n128_i64[0], a1.n128_i64[1], a2.n128_i64[0], a2.n128_i64[1], v22, v23, SHIDWORD(v23));
  if (!result)
  {
    if (v24 == 71)
    {
      v13 = OUTLINED_FUNCTION_11_4();
      return appendScalarValue(v13, v14, v15, 8, v16, v17, v18, v19);
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_22_3();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFC038uLL, "<<<< FigMetadata >>>>", 0x1132, v10, v11, v12);
    }
  }

  return result;
}

uint64_t FigBoxedMetadataAppendCGRect(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  OUTLINED_FUNCTION_18_4();
  v30 = *MEMORY[0x1E69E9840];
  v28 = 0;
  result = scalarWriteSetup(v4, v5, 0x10uLL, &v28, v6, v7, v8, v9);
  if (!result)
  {
    if (v28 == 72)
    {
      v15.f64[0] = a3;
      v16.f64[0] = a1;
      v15.f64[1] = a4;
      v16.f64[1] = a2;
      v29 = vrev32q_s8(vcvt_hight_f32_f64(vcvt_f32_f64(v16), v15));
      v17 = OUTLINED_FUNCTION_11_4();
      return appendScalarValue(v17, v18, v19, 16, v20, v21, v22, v23);
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_22_3();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, 0xFFFFC038uLL, "<<<< FigMetadata >>>>", 0x1152, v12, v13, v14);
    }
  }

  return result;
}

uint64_t FigBoxedMetadataAppendCGAffineTransform(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  OUTLINED_FUNCTION_18_4();
  v30 = *MEMORY[0x1E69E9840];
  v23 = 0;
  result = scalarWriteSetup(v5, v6, 0x48uLL, &v23, v7, v8, v9, v10);
  if (!result)
  {
    if (v23 == 79)
    {
      v15 = a3[1];
      v24 = vrev64q_s8(*a3);
      v25 = 0;
      v26 = vrev64q_s8(v15);
      v27 = 0;
      v28 = vrev64q_s8(a3[2]);
      v29 = 61503;
      v16 = OUTLINED_FUNCTION_11_4();
      return appendScalarValue(v16, v17, v18, 72, v19, v20, v21, v22);
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC038uLL, "<<<< FigMetadata >>>>", 0x117C, v3, v13, v14);
    }
  }

  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC04EuLL, "<<<< FigMetadata >>>>", 0x258, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC04EuLL, "<<<< FigMetadata >>>>", 0x253, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC04EuLL, "<<<< FigMetadata >>>>", 0x252, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC051uLL, "<<<< FigMetadata >>>>", 0x297, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x2A4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x28F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC04FuLL, "<<<< FigMetadata >>>>", 0x280, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC051uLL, "<<<< FigMetadata >>>>", 0x263, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x265, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_10(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x272, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_11(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x2BC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_12(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC054uLL, "<<<< FigMetadata >>>>", 0x2CB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_13(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC054uLL, "<<<< FigMetadata >>>>", 0x2C9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_14(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC051uLL, "<<<< FigMetadata >>>>", 0x2B4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_15(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x244, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_16(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC053uLL, "<<<< FigMetadata >>>>", 0x23F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_17(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC053uLL, "<<<< FigMetadata >>>>", 0x23B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateIdentifierForKeyAndKeySpace_cold_18(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC053uLL, "<<<< FigMetadata >>>>", 0x239, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeyFromIdentifierAsCFData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC053uLL, "<<<< FigMetadata >>>>", 0x39C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t getEncodedPartsOfIdentifier_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC04DuLL, "<<<< FigMetadata >>>>", 0x305, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t getEncodedPartsOfIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC04DuLL, "<<<< FigMetadata >>>>", 0x304, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t getEncodedPartsOfIdentifier_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC04DuLL, "<<<< FigMetadata >>>>", 0x303, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t getEncodedPartsOfIdentifier_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC053uLL, "<<<< FigMetadata >>>>", 0x2F9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t createKeyAsCFData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC051uLL, "<<<< FigMetadata >>>>", 0x37B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t createKeyAsCFData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x37D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t createKeyAsCFData_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x387, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t createKeyAsCFData_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x377, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeyFromIdentifier_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC051uLL, "<<<< FigMetadata >>>>", 0x34F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeyFromIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x351, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeyFromIdentifier_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x35B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeyFromIdentifier_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x34B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeyFromIdentifier_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC051uLL, "<<<< FigMetadata >>>>", 0x320, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeyFromIdentifier_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x322, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeyFromIdentifier_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x32F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeyFromIdentifier_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC052uLL, "<<<< FigMetadata >>>>", 0x31C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeyFromIdentifier_cold_9(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC053uLL, "<<<< FigMetadata >>>>", 0x3B7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeySpaceFromIdentifier_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC04DuLL, "<<<< FigMetadata >>>>", 0x3FF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeySpaceFromIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC04DuLL, "<<<< FigMetadata >>>>", 0x3FD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeySpaceFromIdentifier_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC04DuLL, "<<<< FigMetadata >>>>", 0x3FC, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeySpaceFromIdentifier_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC053uLL, "<<<< FigMetadata >>>>", 0x3DD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMMetadataCreateKeySpaceFromIdentifier_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC053uLL, "<<<< FigMetadata >>>>", 0x3DB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t doFigMetadataDataTypeRegistryRegisterDataType_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC045uLL, "<<<< FigMetadata >>>>", 0x5AD, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t doFigMetadataDataTypeRegistryRegisterDataType_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC045uLL, "<<<< FigMetadata >>>>", 0x5B7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t doFigMetadataDataTypeRegistryRegisterDataType_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC046uLL, "<<<< FigMetadata >>>>", 0x5C4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t doFigMetadataDataTypeRegistryRegisterDataType_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC048uLL, "<<<< FigMetadata >>>>", 0x5A7, v3, v4, v5);
  *a1 = result;
  return result;
}

CFIndex doFigMetadataDataTypeRegistryRegisterDataType_cold_5(const __CFDictionary *a1, const __CFArray *a2, int *a3)
{
  result = CFDictionaryGetValue(a1, @"ConformingDataTypes");
  v6 = a2 | result;
  if (a2 | result)
  {
    v6 = -16313;
    if (a2)
    {
      v7 = result;
      if (result)
      {
        Count = CFArrayGetCount(a2);
        result = CFArrayGetCount(v7);
        if (Count != result)
        {
LABEL_10:
          v6 = -16313;
          goto LABEL_11;
        }

        v9 = result;
        if (Count >= 1)
        {
          v10 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a2, v10);
            v12.location = 0;
            v12.length = v9;
            result = CFArrayContainsValue(v7, v12, ValueAtIndex);
            if (!result)
            {
              goto LABEL_10;
            }
          }

          while (Count != ++v10);
        }

        v6 = 0;
      }
    }
  }

LABEL_11:
  *a3 = v6;
  return result;
}

size_t doFigMetadataDataTypeRegistryRegisterDataType_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC046uLL, "<<<< FigMetadata >>>>", 0x5C1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t doFigMetadataDataTypeRegistryRegisterDataType_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC049uLL, "<<<< FigMetadata >>>>", 0x59B, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t doFigMetadataDataTypeRegistryRegisterDataType_cold_8(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC04AuLL, "<<<< FigMetadata >>>>", 0x59A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigMetadataCreateDynamicBaseDataType_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC04AuLL, "<<<< FigMetadata >>>>", 0x6D5, v1, v2, v3);
}

void FigMetadataCreateDynamicBaseDataType_cold_2(const void *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC04AuLL, "<<<< FigMetadata >>>>", 0x6D3, v3, v4, v5);
  CFRelease(a1);
}

size_t FigMetadataCreateDynamicBaseDataType_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC04AuLL, "<<<< FigMetadata >>>>", 0x6D1, v1, v2, v3);
}

size_t FigMetadataCreateDynamicBaseDataType_cold_4()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC04AuLL, "<<<< FigMetadata >>>>", 0x6C7, v1, v2, v3);
}

size_t FigBoxedMetadataCreateFromBlockBuffer_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC040uLL, "<<<< FigMetadata >>>>", 0x7F7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigBoxedMetadataCreateFromBlockBuffer_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC03EuLL, "<<<< FigMetadata >>>>", 0x7FA, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigBoxedMetadataCreateFromBlockBuffer_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC040uLL, "<<<< FigMetadata >>>>", 0x7F6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigBoxedMetadataCreateFromBlockBuffer_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC040uLL, "<<<< FigMetadata >>>>", 0x7F5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigBoxedMetadataCreateFromBlockBuffer_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC040uLL, "<<<< FigMetadata >>>>", 0x7F3, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigBoxedMetadataCreateForConstruction_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC040uLL, "<<<< FigMetadata >>>>", 0x81D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigBoxedMetadataCreateForConstruction_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC03EuLL, "<<<< FigMetadata >>>>", 0x820, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigBoxedMetadataCreateForConstruction_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC040uLL, "<<<< FigMetadata >>>>", 0x81C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigBoxedMetadataCreateForConstruction_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC040uLL, "<<<< FigMetadata >>>>", 0x81A, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t scalarWriteSetup_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC039uLL, "<<<< FigMetadata >>>>", 0xFF7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t scalarWriteSetup_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC03AuLL, "<<<< FigMetadata >>>>", 0xFF2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t scalarWriteSetup_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFC040uLL, "<<<< FigMetadata >>>>", 0xFF1, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t registerKnownDataType_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFC054uLL, "<<<< FigMetadata >>>>", 0x52A, v1, v2, v3);
}

size_t FigInMemorySerializerAppendCMSampleBuffer(uint64_t *a1, unint64_t a2, void *a3, CMSampleBufferRef sbuf, const __CFArray *a5, unsigned int a6, uint64_t a7, uint64_t a8, const opaqueCMFormatDescription **a9, uint64_t *a10, unsigned int a11)
{
  v58 = a8;
  v12 = *a9;
  v66 = 0;
  v67 = 0;
  v13 = *a10;
  v64 = 0;
  v65 = 0;
  dataPointerOut = 0;
  lengthAtOffsetOut = 0;
  cf = 0;
  theBuffer = 0;
  v59 = 0;
  v54 = a3;
  if (a2 <= 0x17)
  {
    OUTLINED_FUNCTION_2_15();
    v46 = 287;
LABEL_61:
    DataPointer = FigSignalErrorAtGM(v39, v40, v41, v42, v46, v43, v44, v45);
    goto LABEL_30;
  }

  v56 = a2 - 24;
  v55 = (a1 + 3);
  dataPointerOut = (a1 + 3);
  lengthAtOffsetOut = a2 - 24;
  if (!sbuf)
  {
    OUTLINED_FUNCTION_5_11();
    OUTLINED_FUNCTION_2_15();
    v46 = 295;
    goto LABEL_61;
  }

  HIDWORD(v57) = a6;
  if (CMSampleBufferDataIsReady(sbuf))
  {
    v18 = CFRetain(sbuf);
    v64 = v18;
    goto LABEL_9;
  }

  if ((a6 & 1) == 0)
  {
    OUTLINED_FUNCTION_5_11();
    OUTLINED_FUNCTION_2_15();
    v46 = 303;
    goto LABEL_61;
  }

  if ((v57 & 0x200000000) == 0)
  {
    OUTLINED_FUNCTION_5_11();
    OUTLINED_FUNCTION_2_15();
    v46 = 304;
    goto LABEL_61;
  }

  DataPointer = FigSampleBufferCreateCopyWithNoData(*MEMORY[0x1E695E480], sbuf, &v64);
  if (DataPointer)
  {
LABEL_30:
    v25 = DataPointer;
    goto LABEL_40;
  }

  v18 = v64;
LABEL_9:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  DataPointer = FigRemote_CopyReplacementAttachmentsForSampleBuffer(v18, a5, &cf, &v59);
  if (DataPointer)
  {
    goto LABEL_30;
  }

  v52 = a9;
  v53 = a10;
  v20 = (a6 >> 2) & 1;
  while (1)
  {
    while (1)
    {
      v21 = dataPointerOut ? &v67 : 0;
      v22 = dataPointerOut ? &v66 : 0;
      v23 = FigRemote_WriteSerializedAtomDataForSampleBufferExcludingDataBufferWithOptionsForPID(v64, cf, v59, v20, dataPointerOut, lengthAtOffsetOut, &v65, v12, v21, v13, v22, a11);
      if (v23 != -19649)
      {
        break;
      }

      dataPointerOut = 0;
      lengthAtOffsetOut = 0;
    }

    v25 = v23;
    if (v23)
    {
      break;
    }

    v26 = v65;
    a1[1] = v65;
    if ((v57 & 0x200000000) == 0)
    {
      if (dataPointerOut)
      {
        v27 = lengthAtOffsetOut - v26;
        v28 = v64;
        v29 = dataPointerOut + v26;
      }

      else
      {
        v28 = v64;
        v29 = 0;
        v27 = 0;
      }

      DataPointer = FigInMemorySerializationAddDataBufferFromCMSampleBuffer(v29, v27, &v65, a7, v58, v28);
      if (DataPointer)
      {
        goto LABEL_30;
      }

      a1[2] = v65;
    }

    if (dataPointerOut)
    {
      v33 = *v52;
      v34 = v67;
      *v52 = v67;
      if (v34)
      {
        CFRetain(v34);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      v35 = *v53;
      v36 = v66;
      *v53 = v66;
      if (v36)
      {
        CFRetain(v36);
      }

      if (v35)
      {
        CFRelease(v35);
      }

      v25 = 0;
      break;
    }

    DataPointer = FigMemoryPoolCreateBlockBuffer(a7, a1[2] + a1[1], &theBuffer, v24);
    if (!DataPointer)
    {
      DataPointer = FigMemoryOriginSetBlockBufferInIPCMessageData(v58, theBuffer, v55, v56, &v65, v30, v31, v32, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, cf, theBuffer, dataPointerOut, lengthAtOffsetOut, v64);
      if (!DataPointer)
      {
        *a1 = v65;
        DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
        if (!DataPointer)
        {
          continue;
        }
      }
    }

    goto LABEL_30;
  }

LABEL_40:
  if (v54)
  {
    v37 = *a1;
    if (!*a1)
    {
      v37 = a1[1] + a1[2];
    }

    *v54 = v37 + 24;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  if (v64)
  {
    CFRelease(v64);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v25;
}

uint64_t FigInMemorySerializerAppendCFType(uint64_t a1, unint64_t a2, uint64_t *a3, const void *a4, char a5, uint64_t a6, int a7)
{
  lengthAtOffsetOut = 0;
  var58[0] = 0;
  theBuffer = 0;
  dataPointerOut = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (!a4)
  {
LABEL_19:
    v17 = 0;
    goto LABEL_23;
  }

  if (!a1)
  {
    OUTLINED_FUNCTION_2_15();
    v32 = 507;
    goto LABEL_28;
  }

  if (a2 <= 0xF)
  {
    OUTLINED_FUNCTION_2_15();
    v32 = 508;
LABEL_28:
    DataPointer = FigSignalErrorAtGM(v25, v26, v27, v28, v32, v29, v30, v31);
LABEL_29:
    v17 = DataPointer;
    goto LABEL_23;
  }

  v34 = a3;
  v12 = a2 - 16;
  dataPointerOut = (a1 + 16);
  lengthAtOffsetOut = a2 - 16;
  *a1 = 0;
  *(a1 + 8) = 0;
  v13 = a2 - 16;
  v14 = (a1 + 16);
  while (1)
  {
    while (1)
    {
      v15 = FigRemote_WriteSerializedAtomDataForCFType(a4, (a5 & 1) == 0, v14, v13, var58);
      if (v15 != -19649)
      {
        break;
      }

      v13 = 0;
      v14 = 0;
      dataPointerOut = 0;
      lengthAtOffsetOut = 0;
    }

    v17 = v15;
    if (v15)
    {
      break;
    }

    v18 = var58[0];
    *(a1 + 8) = var58[0];
    if (dataPointerOut)
    {
      if (!v34)
      {
        goto LABEL_19;
      }

      if (v18)
      {
        v17 = 0;
        if (*a1)
        {
          v23 = *a1 + 16;
        }

        else
        {
          v23 = v18 + 16;
        }

        *v34 = v23;
      }

      else
      {
        v17 = 0;
        *v34 = 0;
      }

      break;
    }

    DataPointer = FigMemoryPoolCreateBlockBuffer(a6, v18, &theBuffer, v16);
    if (DataPointer)
    {
      goto LABEL_29;
    }

    DataPointer = FigMemoryOriginSetBlockBufferInIPCMessageData(a7, theBuffer, a1 + 16, v12, var58, v20, v21, v22, v33, v34, theBuffer, dataPointerOut, lengthAtOffsetOut, var58[0], var58[1], var58[2], var58[3], var58[4], var58[5], var58[6], var58[7], var58[8], var58[9], var58[10], var58[11], var58[12]);
    if (DataPointer)
    {
      goto LABEL_29;
    }

    *a1 = var58[0];
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
    if (DataPointer)
    {
      goto LABEL_29;
    }

    v14 = dataPointerOut;
    v13 = lengthAtOffsetOut;
  }

LABEL_23:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v17;
}

void FigInMemorySerializerAppendCFDictionary()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_0_38();
  if (v2)
  {
    *v1 = 0;
  }

  if (v0)
  {
    v3 = CFGetTypeID(v0);
    if (v3 == CFDictionaryGetTypeID())
    {
      OUTLINED_FUNCTION_1_26();
      OUTLINED_FUNCTION_3_13();

      FigInMemorySerializerAppendCFType(v4, v5, v6, v7, v8, v9, v10);
    }

    else
    {
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_3_13();

      FigSignalErrorAtGM(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
  }
}

void FigInMemorySerializerAppendCFURL()
{
  OUTLINED_FUNCTION_7_9();
  if (v0)
  {
    OUTLINED_FUNCTION_0_38();
    v2 = CFGetTypeID(v1);
    if (v2 == CFURLGetTypeID())
    {
      OUTLINED_FUNCTION_1_26();
      OUTLINED_FUNCTION_3_13();

      FigInMemorySerializerAppendCFType(v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_3_13();

      FigSignalErrorAtGM(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
  }
}

void FigInMemorySerializerAppendCFString()
{
  OUTLINED_FUNCTION_7_9();
  if (v0)
  {
    OUTLINED_FUNCTION_0_38();
    v2 = CFGetTypeID(v1);
    if (v2 == CFStringGetTypeID())
    {
      OUTLINED_FUNCTION_1_26();
      OUTLINED_FUNCTION_3_13();

      FigInMemorySerializerAppendCFType(v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_3_13();

      FigSignalErrorAtGM(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
  }
}

void FigInMemorySerializerAppendCMFormatDescription()
{
  OUTLINED_FUNCTION_7_9();
  if (v0)
  {
    OUTLINED_FUNCTION_0_38();
    v2 = CFGetTypeID(v1);
    if (v2 == CMFormatDescriptionGetTypeID())
    {
      OUTLINED_FUNCTION_1_26();
      OUTLINED_FUNCTION_3_13();

      FigInMemorySerializerAppendCFType(v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_3_13();

      FigSignalErrorAtGM(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
  }
}

void FigInMemorySerializerAppendCFData()
{
  OUTLINED_FUNCTION_7_9();
  if (v0)
  {
    OUTLINED_FUNCTION_0_38();
    v2 = CFGetTypeID(v1);
    if (v2 == CFDataGetTypeID())
    {
      OUTLINED_FUNCTION_1_26();
      OUTLINED_FUNCTION_3_13();

      FigInMemorySerializerAppendCFType(v3, v4, v5, v6, v7, v8, v9);
    }

    else
    {
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_3_13();

      FigSignalErrorAtGM(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_13();
  }
}

uint64_t FigInMemoryDeserializerCopyCFType(const void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  dataPointerOut = 0;
  theBuffer = 0;
  if (!a3)
  {
    return 0;
  }

  if (a3 <= 0xF)
  {
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_2_15();
    v21 = 738;
LABEL_28:
    DataPointer = FigSignalErrorAtGM(v14, v15, v16, v17, v21, v18, v19, v20);
    goto LABEL_16;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_2_15();
    v21 = 739;
    goto LABEL_28;
  }

  if (!a5)
  {
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_2_15();
    v21 = 740;
    goto LABEL_28;
  }

  v8 = *a2;
  if (!*a2)
  {
    v10 = *(a2 + 8);
    if (v10 >= 0xFFFFFFFFFFFFFFF0)
    {
      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_2_15();
      v21 = 743;
    }

    else
    {
      if (v10 + 16 <= a3)
      {
        v11 = (a2 + 16);
        dataPointerOut = (a2 + 16);
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_2_15();
      v21 = 744;
    }

    goto LABEL_28;
  }

  lengthAtOffsetOut = 0;
  if (v8 >= 0xFFFFFFFFFFFFFFF0)
  {
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_2_15();
    v21 = 750;
    goto LABEL_28;
  }

  if (v8 + 16 > a3)
  {
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_2_15();
    v21 = 751;
    goto LABEL_28;
  }

  DataPointer = FigMemoryRecipientCopyBlockBufferFromIPCMessageData(a1, a4, a2 + 16, v8, &theBuffer);
  if (!DataPointer)
  {
    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, &lengthAtOffsetOut, 0, &dataPointerOut);
    if (!DataPointer)
    {
      v10 = *(a2 + 8);
      if (lengthAtOffsetOut >= v10)
      {
        v11 = dataPointerOut;
LABEL_15:
        DataPointer = FigRemote_CreateCFTypeFromSerializedAtomData(a1, v11, v10, a5);
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_6_5();
      OUTLINED_FUNCTION_2_15();
      v21 = 759;
      goto LABEL_28;
    }
  }

LABEL_16:
  v12 = DataPointer;
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v12;
}

size_t FigInMemoryDeserializerCopyBlockBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB9, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyBlockBuffer_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB8, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyBlockBuffer_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xB7, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemorySerializationAddDataBufferFromCMSampleBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xE7, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemorySerializationAddDataBufferFromCMSampleBuffer_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0xE4, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyCMSampleBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1C2, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyCMSampleBuffer_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1C1, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyCMSampleBuffer_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1B9, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyCMSampleBuffer_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1B8, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyCMSampleBuffer_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1B2, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyCMSampleBuffer_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1B1, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyCMSampleBuffer_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1B0, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyCMSampleBuffer_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1AD, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyCFDictionary_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x310, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyCFURL_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x329, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyCFString_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x342, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyCMFormatDescription_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x35B, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigInMemoryDeserializerCopyCFData_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_15();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x374, v6, v7, v8);
  *a1 = result;
  return result;
}

const void *fcte_Equal(const void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    OUTLINED_FUNCTION_0_39(&sRegisterFigCaptionTextEmphasisTypeOnce);
    result = 0;
    if (a2)
    {
      if (v4 == sFigCaptionTextEmphasisID)
      {
        v5 = CFGetTypeID(a2);
        OUTLINED_FUNCTION_0_39(&sRegisterFigCaptionTextEmphasisTypeOnce);
        if (v5 != sFigCaptionTextEmphasisID || *(v3 + 4) != *(a2 + 16) || *(v3 + 5) != *(a2 + 20) || *(v3 + 6) != *(a2 + 24))
        {
          return 0;
        }

        result = FigCFEqual(*(v3 + 4), *(a2 + 32));
        if (!result)
        {
          return result;
        }

        if (FigCFEqual(*(v3 + 6), *(a2 + 48)))
        {
          return CGColorEqualToColor(*(v3 + 5), *(a2 + 40));
        }

        v6 = *(v3 + 6);
        if (v6)
        {
          if (*(a2 + 48))
          {
            return 0;
          }
        }

        else
        {
          if (FigCFEqual(*(a2 + 48), @"RubyPositionNone"))
          {
            return CGColorEqualToColor(*(v3 + 5), *(a2 + 40));
          }

          if (*(a2 + 48))
          {
            return 0;
          }

          v6 = *(v3 + 6);
        }

        result = FigCFEqual(v6, @"RubyPositionNone");
        if (result)
        {
          return CGColorEqualToColor(*(v3 + 5), *(a2 + 40));
        }
      }
    }
  }

  return result;
}

CFHashCode fcte_Hash(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  OUTLINED_FUNCTION_0_39(&sRegisterFigCaptionTextEmphasisTypeOnce);
  if (v2 != sFigCaptionTextEmphasisID)
  {
    return 0;
  }

  v3 = a1[6];
  if (v3)
  {
    v4 = CFHash(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    v4 ^= CFHash(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    v4 ^= CFHash(v6);
  }

  return v4;
}

size_t FigCaptionTextEmphasisCreate_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE14uLL, "(Fig)", 0xE5, v8, a7, a8);
  *a1 = result;
  return result;
}

void CMAudioClockCreate_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"OSStatus soft_FigAudioSessionClockCreateForSharedAudioSession(CFAllocatorRef description:{CMAudioClockTimingPreference, CMClockRef *)"), @"CMAudioClock.m", 49, @"%s", dlerror()}];
  __break(1u);
}

void CMAudioClockCreateForAudioSession_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"OSStatus soft_FigAudioSessionClockCreateForAVAudioSession(CFAllocatorRef description:{AVAudioSession *, CMAudioClockTimingPreference, CMClockRef *)"), @"CMAudioClock.m", 52, @"%s", dlerror()}];
  __break(1u);
}

void MediaToolboxLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *MediaToolboxLibrary(void)") description:{@"CMAudioClock.m", 48, @"%s", *a1}];
  __break(1u);
}

void FigUserFaultWithMessage_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 134218242;
  v3 = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&dword_196FA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "0x%llx - %@", &v2, 0x16u);
}

void figTimeSyncClock_LockStateDidChange(uint64_t a1, id *a2, int a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = FigCFWeakReferenceHolderCopyReferencedObject(a2);
  v13 = v5;
  if (v5)
  {
    DerivedStorage = FigDerivedClockGetDerivedStorage(v5, v6, v7, v8, v9, v10, v11, v12);
    if (a3 == 2)
    {
      v23 = DerivedStorage;
      v24 = *(DerivedStorage + 120);
      if (dword_1EAF1CE08)
      {
        v25 = OUTLINED_FUNCTION_4_10(DerivedStorage, v15, v16, v17, v18, v19, v20, v21, v40, v42, block, v45, v46, v47, v48, v49, v50, v51, v52);
        if (OUTLINED_FUNCTION_9_9(v25, v26, v27, v28, v29, v30, v31, v32, v41, v43, block, v45, v46, v47, v48, v49, v50, v51, v52))
        {
          v33 = v3;
        }

        else
        {
          v33 = v3 & 0xFFFFFFFE;
        }

        if (v33)
        {
          v53 = 136315650;
          OUTLINED_FUNCTION_2_16();
          v54 = 1024;
          v55 = v24;
          OUTLINED_FUNCTION_5_12();
          OUTLINED_FUNCTION_6_3();
          _os_log_send_and_compose_impl();
          LOBYTE(v3) = v52;
        }

        OUTLINED_FUNCTION_1_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose(v34, v35, v36, v37, v38, v3, 0, v39);
      }

      figTimeSyncClock_getAnchorTimeWithResync(v13, v24, 0, 0, v18, v19, v20, v21);
      *(v23 + 120) = 0;
    }
  }

  dispatch_get_global_queue(0, 0);
  OUTLINED_FUNCTION_0_40();
  v45 = 0x40000000;
  v46 = __figTimeSyncClock_LockStateDidChange_block_invoke;
  v47 = &__block_descriptor_tmp_38;
  v48 = v13;
  dispatch_async(v22, &block);
}

void figTimeSyncClock_MasterAndPortDidChange(uint64_t a1, id *a2, uint64_t a3, int a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = FigCFWeakReferenceHolderCopyReferencedObject(a2);
  v15 = v7;
  if (v7)
  {
    if (dword_1EAF1CE08)
    {
      v16 = OUTLINED_FUNCTION_4_10(v7, v8, v9, v10, v11, v12, v13, v14, v33, v35, block, v38, v39, v40, v41, v42, v43, v44, v45);
      if (OUTLINED_FUNCTION_9_9(v16, v17, v18, v19, v20, v21, v22, v23, v34, v36, block, v38, v39, v40, v41, v42, v43, v44, v45))
      {
        v24 = v4;
      }

      else
      {
        v24 = v4 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v46 = 136315906;
        OUTLINED_FUNCTION_2_16();
        v47 = v25;
        v48 = a3;
        v49 = 1024;
        v50 = a4;
        OUTLINED_FUNCTION_5_12();
        OUTLINED_FUNCTION_6_3();
        _os_log_send_and_compose_impl();
        LOBYTE(v4) = v45;
      }

      OUTLINED_FUNCTION_1_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v26, v27, v28, v29, v30, v4, 0, v31);
    }

    figTimeSyncClock_getAnchorTimeWithResync(v15, 1, 0, 0, v11, v12, v13, v14);
  }

  dispatch_get_global_queue(0, 0);
  OUTLINED_FUNCTION_0_40();
  v38 = 0x40000000;
  v39 = __figTimeSyncClock_MasterAndPortDidChange_block_invoke;
  v40 = &__block_descriptor_tmp_39;
  v41 = v15;
  dispatch_async(v32, &block);
}

void figTimeSyncClock_TimeSyncTimeDidChange(uint64_t a1, id *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = FigCFWeakReferenceHolderCopyReferencedObject(a2);
  v10 = v2;
  if (v2)
  {
    DerivedStorage = FigDerivedClockGetDerivedStorage(v2, v3, v4, v5, v6, v7, v8, v9);
    if (dword_1EAF1CE08)
    {
      v28[0] = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CE00, 1, v28, &type);
      v13 = v28[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v14 = v13;
      }

      else
      {
        v14 = v13 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v28[1] = 136315394;
        OUTLINED_FUNCTION_2_16();
        OUTLINED_FUNCTION_5_12();
        OUTLINED_FUNCTION_6_3();
        _os_log_send_and_compose_impl();
        LOBYTE(v13) = v28[0];
      }

      OUTLINED_FUNCTION_1_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose(v15, v16, v17, v18, v19, v13, 0, v20);
    }

    *(DerivedStorage + 120) = 1;
  }

  dispatch_get_global_queue(0, 0);
  OUTLINED_FUNCTION_0_40();
  v23 = 0x40000000;
  v24 = __figTimeSyncClock_TimeSyncTimeDidChange_block_invoke;
  v25 = &__block_descriptor_tmp_40;
  v26 = v10;
  dispatch_async(v21, block);
}

uint64_t figTimeSyncClock_getAnchorTimeWithResync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  HIDWORD(v90) = a2;
  v10 = a1;
  v111 = *MEMORY[0x1E69E9840];
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  memset(&v99, 0, sizeof(v99));
  memset(&v97, 0, sizeof(v97));
  v96 = 0;
  FigSimpleMutexLock(*DerivedStorage);
  Time = CMClockGetTime(&v97, *(DerivedStorage + 8));
  OUTLINED_FUNCTION_3_14(Time, v13, v14, v15, v16, v17, v18, v19, v74, v76, v78, v80, v82, v84, v85, v87, v88, v90, v92, v94.value, *&v94.timescale, v94.epoch, v95, 0, *&v97.value, v97.epoch, v98, v99.value, *&v99.timescale, v99.epoch, v100, *&rhs.value, rhs.epoch, *&v102, *v103, *&v103[8], *&v103[16], *&v103[24], v104, *v105, *&v105[8], *&v105[16], lhs.value);
  value = lhs.value;
  timescale = lhs.timescale;
  v26 = v96;
  v27 = 4294949326;
  if (v96 != *sTSNullgPTPClockIdentity)
  {
    flags = lhs.flags;
    if (lhs.flags)
    {
      v79 = a3;
      v81 = a4;
      epoch = lhs.epoch;
      if (*(DerivedStorage + 84))
      {
        v31 = *(DerivedStorage + 40);
      }

      else
      {
        *(&v25 + 1) = *&v97.timescale;
        *(DerivedStorage + 48) = *&v97.value;
        v30 = value;
        *(DerivedStorage + 64) = v97.epoch;
        *(DerivedStorage + 72) = v30;
        *(DerivedStorage + 80) = timescale;
        *(DerivedStorage + 84) = flags;
        *(DerivedStorage + 88) = epoch;
        v31 = v26;
        *(DerivedStorage + 40) = v26;
      }

      v32 = &sVCCPreallocationSaveToSymlinkCString[720];
      if (HIDWORD(v91) || v26 != v31)
      {
        v33 = 0;
        v34 = dword_1EAF1CE08;
        *&v25 = 136317186;
        v83 = v25;
        *&v25 = 136316418;
        v86 = v25;
        v93 = v10;
        while (1)
        {
          if (v34)
          {
            LODWORD(v94.value) = 0;
            HIBYTE(v95) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CE00, 1, &v94, &v95 + 7);
            v36 = v94.value;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, HIBYTE(v95)))
            {
              v37 = v36;
            }

            else
            {
              v37 = v36 & 0xFFFFFFFE;
            }

            if (v37)
            {
              v38 = *(DerivedStorage + 40);
              LODWORD(rhs.value) = v86;
              *(&rhs.value + 4) = "figTimeSyncClock_getAnchorTimeWithResync";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v10;
              HIWORD(rhs.epoch) = 2048;
              v102 = *&v38;
              *v103 = 2048;
              *&v103[2] = v96;
              *&v103[10] = 1024;
              *&v103[12] = HIDWORD(v91);
              *&v103[16] = 1024;
              *&v103[18] = v33;
              OUTLINED_FUNCTION_8_9();
              OUTLINED_FUNCTION_6_3();
              _os_log_send_and_compose_impl();
              LOBYTE(v36) = v94.value;
            }

            OUTLINED_FUNCTION_1_1();
            fig_log_call_emit_and_clean_up_after_send_and_compose(v39, v40, v41, v42, v43, v36, 0, v44);
          }

          rhs = *(DerivedStorage + 48);
          figTimeSyncClockGetClockTimeForHostTime(v10, &rhs, (DerivedStorage + 40), v20, v21, v22, v23, v24, &lhs);
          v107 = lhs.value;
          v45 = lhs.flags;
          v108 = lhs.timescale;
          if ((lhs.flags & 1) == 0)
          {
            break;
          }

          if (*(DerivedStorage + 40) == **(v32 + 159))
          {
            break;
          }

          v46 = lhs.epoch;
          rhs = *(DerivedStorage + 72);
          v94.value = v107;
          *&v94.timescale = __PAIR64__(lhs.flags, v108);
          v94.epoch = lhs.epoch;
          v47 = CMTimeSubtract(&lhs, &rhs, &v94);
          *(DerivedStorage + 96) = lhs;
          OUTLINED_FUNCTION_3_14(v47, v48, v49, v50, v51, v52, v53, v54, v75, v77, v79, v81, v83, *(&v83 + 1), v86, *(&v86 + 1), v89, v91, v93, v94.value, *&v94.timescale, v94.epoch, v95, v96, *&v97.value, v97.epoch, v98, v99.value, *&v99.timescale, v99.epoch, v100, *&rhs.value, rhs.epoch, *&v102, *v103, *&v103[8], *&v103[16], *&v103[24], v104, *v105, *&v105[8], *&v105[16], lhs.value);
          value = lhs.value;
          timescale = lhs.timescale;
          if ((lhs.flags & 1) == 0)
          {
            break;
          }

          v55 = v96;
          if (v96 == **(v32 + 159))
          {
            break;
          }

          v56 = v32;
          v57 = lhs.epoch;
          v34 = dword_1EAF1CE08;
          if (dword_1EAF1CE08)
          {
            LODWORD(v94.value) = 0;
            HIBYTE(v95) = 0;
            v58 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(qword_1EAF1CE00, 1, &v94, &v95 + 7);
            v59 = v94.value;
            if (os_log_type_enabled(v58, HIBYTE(v95)))
            {
              v60 = v59;
            }

            else
            {
              v60 = v59 & 0xFFFFFFFE;
            }

            if (v60)
            {
              lhs = *(DerivedStorage + 72);
              Seconds = CMTimeGetSeconds(&lhs);
              lhs.value = v107;
              lhs.timescale = v108;
              lhs.flags = v45;
              lhs.epoch = v46;
              v62 = CMTimeGetSeconds(&lhs);
              v63 = *(DerivedStorage + 40);
              lhs = *(DerivedStorage + 96);
              v64 = CMTimeGetSeconds(&lhs);
              lhs = v97;
              v65 = CMTimeGetSeconds(&lhs);
              OUTLINED_FUNCTION_6_11();
              epoch = v57;
              lhs.epoch = v57;
              v66 = CMTimeGetSeconds(&lhs);
              LODWORD(rhs.value) = v83;
              *(&rhs.value + 4) = "figTimeSyncClock_getAnchorTimeWithResync";
              LOWORD(rhs.flags) = 2048;
              *(&rhs.flags + 2) = v93;
              HIWORD(rhs.epoch) = 2048;
              v102 = Seconds;
              *v103 = 2048;
              *&v103[2] = v62;
              *&v103[10] = 2048;
              *&v103[12] = v63;
              *&v103[20] = 2048;
              *&v103[22] = v64;
              *&v103[30] = 2048;
              v104 = *&v65;
              *v105 = 2048;
              *&v105[2] = v66;
              *&v105[10] = 2048;
              *&v105[12] = v96;
              OUTLINED_FUNCTION_8_9();
              OUTLINED_FUNCTION_6_3();
              _os_log_send_and_compose_impl();
              LOBYTE(v59) = v94.value;
            }

            else
            {
              epoch = v57;
            }

            OUTLINED_FUNCTION_1_1();
            fig_log_call_emit_and_clean_up_after_send_and_compose(v67, v68, v69, v70, v71, v59, 0, v72);
            v34 = dword_1EAF1CE08;
            v55 = v96;
            v10 = v93;
            v32 = sVCCPreallocationSaveToSymlinkCString + 720;
          }

          else
          {
            epoch = lhs.epoch;
            v32 = v56;
          }

          ++v33;
          if (v55 == *(DerivedStorage + 40))
          {
            goto LABEL_8;
          }
        }

        v27 = 4294949326;
      }

      else
      {
LABEL_8:
        OUTLINED_FUNCTION_6_11();
        lhs.epoch = epoch;
        rhs = *(DerivedStorage + 96);
        CMTimeAdd(&v99, &lhs, &rhs);
        if (v79)
        {
          *v79 = v99;
        }

        if (v81)
        {
          *v81 = v97;
        }

        v27 = 0;
        *(DerivedStorage + 48) = v97;
        *(DerivedStorage + 72) = v99;
      }
    }
  }

  FigSimpleMutexUnlock(*DerivedStorage);
  return v27;
}

size_t FigAssetAnalysisReporterEditAndAppendMessage(uint64_t a1, CFDictionaryRef theDict, int a3)
{
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v25 = 159;
LABEL_21:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 0xFFFFBAA9uLL, "<<< FigAssetAnalysis >>>", v25, v22, v23, v24);
  }

  if (!theDict)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v25 = 160;
    goto LABEL_21;
  }

  if (CFDictionaryGetCount(theDict) <= 1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v25 = 161;
    goto LABEL_21;
  }

  if (!CFDictionaryGetValue(theDict, @"AnalysisType"))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_3();
    v25 = 162;
    goto LABEL_21;
  }

  Count = CFArrayGetCount(*(a1 + 16));
  if (Count)
  {
    v7 = Count - 1;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), Count - 1);
    v9 = *MEMORY[0x1E695E480];
    MutableCopy = FigCFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], ValueAtIndex);
    if (!MutableCopy)
    {
      return 0;
    }

    v11 = MutableCopy;
    CFArrayRemoveValueAtIndex(*(a1 + 16), v7);
    if (CFDictionaryGetValue(v11, @"AtomContainer"))
    {
      Value = CFDictionaryGetValue(v11, @"AtomContainer");
      CFArrayAppendValue(Value, theDict);
    }

    else
    {
      Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
LABEL_15:
        CFRelease(v11);
        return 0;
      }

      v20 = Mutable;
      CFArrayAppendValue(Mutable, theDict);
      CFDictionarySetValue(v11, @"AtomContainer", v20);
      CFRelease(v20);
    }

    FigCFDictionarySetInt64(v11, @"MessageType", a3, v13, v14, v15, v16, v17);
    CFArrayAppendValue(*(a1 + 16), v11);
    goto LABEL_15;
  }

  return FigAssetAnalysisReporterAddMessage(a1, theDict);
}

size_t FigAssetAnalysisReporterEditAndCombineMessage(uint64_t a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (theDict)
    {
      if (CFDictionaryGetCount(theDict) <= 1)
      {
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v36 = 204;
      }

      else
      {
        if (CFDictionaryGetValue(theDict, @"AnalysisType"))
        {
          Count = CFArrayGetCount(*(a1 + 16));
          if (Count)
          {
            v5 = Count - 1;
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), Count - 1);
            v7 = *MEMORY[0x1E695E480];
            MutableCopy = FigCFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], ValueAtIndex);
            if (MutableCopy)
            {
              v9 = MutableCopy;
              CFArrayRemoveValueAtIndex(*(a1 + 16), v5);
              FigCFDictionaryGetInt32IfPresent(theDict, @"TrackID", &v39 + 4, v10, v11, v12, v13, v14, v37, v39, v40, v41, v42, v43, v44, v45, vars0, vars8);
              if (v20)
              {
                FigCFDictionarySetInt32(v9, @"TrackID", SHIDWORD(v39), v15, v16, v17, v18, v19);
              }

              LODWORD(v39) = 0;
              FigCFDictionaryGetInt32IfPresent(theDict, @"TrackType", &v39, v15, v16, v17, v18, v19, v38, v39, v40, v41, v42, v43, v44, v45, vars0, vars8);
              if (v26)
              {
                FigCFDictionarySetInt32(v9, @"TrackType", v39, v21, v22, v23, v24, v25);
              }

              Mutable = CFStringCreateMutable(v7, 0);
              if (Mutable)
              {
                v28 = Mutable;
                Value = CFDictionaryGetValue(theDict, @"DiagnosticInformation");
                if (Value)
                {
                  CFStringAppend(v28, Value);
                }

                v30 = CFDictionaryGetValue(v9, @"DiagnosticInformation");
                if (v30)
                {
                  CFStringAppend(v28, v30);
                }

                CFDictionaryRemoveValue(v9, @"DiagnosticInformation");
                CFDictionarySetValue(v9, @"DiagnosticInformation", v28);
                CFArrayAppendValue(*(a1 + 16), v9);
                CFRelease(v28);
              }

              CFRelease(v9);
            }

            return 0;
          }

          else
          {

            return FigAssetAnalysisReporterAddMessage(a1, theDict);
          }
        }

        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_20();
        v36 = 205;
      }
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      v36 = 203;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v36 = 202;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 0xFFFFBAA9uLL, "<<< FigAssetAnalysis >>>", v36, v33, v34, v35);
}

void FigAssetAnalysisReporterCreate_cold_2(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 0xFFFFBAAAuLL, "<<< FigAssetAnalysis >>>", 0x82, v5, v6, v7);

  CFRelease(a1);
}

size_t FigAssetAnalysisReporterCreate_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAAAuLL, "<<< FigAssetAnalysis >>>", 0x7F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAssetAnalysisReporterCreate_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAA9uLL, "<<< FigAssetAnalysis >>>", 0x7C, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAssetAnalysisReporterAddMessage_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAA9uLL, "<<< FigAssetAnalysis >>>", 0x93, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAssetAnalysisReporterAddMessage_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAA9uLL, "<<< FigAssetAnalysis >>>", 0x92, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAssetAnalysisReporterAddMessage_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAA9uLL, "<<< FigAssetAnalysis >>>", 0x91, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAssetAnalysisReporterAddMessage_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAA9uLL, "<<< FigAssetAnalysis >>>", 0x90, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAssetAnalysisReporterCopyMessages_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAA9uLL, "<<< FigAssetAnalysis >>>", 0xFF, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAssetAnalysisReporterCopyMessages_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFBAA9uLL, "<<< FigAssetAnalysis >>>", 0xFE, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t *FigSemaphoreCreateWithFlags(const void *a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x19A8D7200](a1, 96, 0x10600405A94341DLL, 0);
  if (!v6)
  {
    return v6;
  }

  v7 = FigSimpleMutexCreateWithFlags(a1, -2147483646);
  *v6 = v7;
  if (!v7)
  {
LABEL_10:
    CFAllocatorDeallocate(a1, v6);
    return 0;
  }

  if (pthread_cond_init((v6 + 1), 0))
  {
    FigSimpleMutexDestroy(*v6);
    goto LABEL_10;
  }

  v6[7] = a2;
  v6[8] = a3;
  v6[9] = 0;
  *(v6 + 80) = 0;
  if (a1)
  {
    v8 = CFRetain(a1);
  }

  else
  {
    v8 = 0;
  }

  v6[11] = v8;
  return v6;
}

char *FigEventCreate(char a1, char a2)
{
  v4 = malloc_type_calloc(1uLL, 0x48uLL, 0x1020040989DC6A3uLL);
  if (v4)
  {
    v5 = FigSimpleMutexCreateWithFlags(*MEMORY[0x1E695E480], 0x80000000);
    *v4 = v5;
    if (v5)
    {
      if (!pthread_cond_init((v4 + 8), 0))
      {
        *(v4 + 7) = 0;
        v4[64] = a2;
        v4[66] = a1;
        v4[67] = 0;
        return v4;
      }

      FigSimpleMutexDestroy(*v4);
    }

    free(v4);
    return 0;
  }

  return v4;
}

os_unfair_lock_s **FigEventDestroy(os_unfair_lock_s **result)
{
  if (result)
  {
    result = OUTLINED_FUNCTION_2_17(result);
    if (!result)
    {
      *(v1 + 67) = 1;
      if (!pthread_cond_broadcast((v1 + 8)))
      {
        do
        {
          if (!*(v1 + 65) && !*(v1 + 56))
          {
            break;
          }

          v2 = OUTLINED_FUNCTION_0_41();
        }

        while (!WaitOnCondition(v2, v3, v4, v5, v6, v7, v8, v9));
      }

      FigSimpleMutexUnlock(*v1);
      FigSimpleMutexDestroy(*v1);
      v10 = pthread_cond_destroy((v1 + 8));
      *v1 = 0u;
      *(v1 + 16) = 0u;
      *(v1 + 32) = 0u;
      *(v1 + 48) = 0u;
      *(v1 + 64) = 0;
      free(v1);
      return v10;
    }
  }

  return result;
}

uint64_t FigEventSet(os_unfair_lock_s **a1)
{
  v2 = OUTLINED_FUNCTION_2_17(a1);
  if (v2)
  {
    return v2;
  }

  if (*(v1 + 67))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 0xFFFFCE0AuLL, "(Fig)", 0x51D, v33, v34, v35);
LABEL_5:
    v12 = v11;
    goto LABEL_20;
  }

  while (*(v1 + 65))
  {
    v3 = OUTLINED_FUNCTION_0_41();
    v11 = WaitOnCondition(v3, v4, v5, v6, v7, v8, v9, v10);
    if (v11)
    {
      goto LABEL_5;
    }
  }

  if (!*(v1 + 64))
  {
    *(v1 + 64) = 257;
    v13 = pthread_cond_broadcast((v1 + 8));
    v12 = v13;
    if (*(v1 + 66))
    {
      if (v13)
      {
LABEL_19:
        *(v1 + 65) = 0;
        pthread_cond_broadcast((v1 + 8));
        goto LABEL_20;
      }

      while (*(v1 + 56) >= 1)
      {
        v14 = OUTLINED_FUNCTION_0_41();
        v22 = WaitOnCondition(v14, v15, v16, v17, v18, v19, v20, v21);
        if (v22)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (*(v1 + 56) < 1 || v13)
      {
        goto LABEL_19;
      }

      while (*(v1 + 64))
      {
        v23 = OUTLINED_FUNCTION_0_41();
        v22 = WaitOnCondition(v23, v24, v25, v26, v27, v28, v29, v30);
        if (v22)
        {
LABEL_18:
          v12 = v22;
          goto LABEL_19;
        }
      }
    }

    v12 = 0;
    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:
  FigSimpleMutexUnlock(*v1);
  return v12;
}

uint64_t FigEventReset(os_unfair_lock_s **a1)
{
  v2 = OUTLINED_FUNCTION_2_17(a1);
  if (v2)
  {
    return v2;
  }

  if (*(v1 + 67))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE0AuLL, "(Fig)", 0x550, v15, v16, v17);
LABEL_5:
    v12 = v11;
  }

  else
  {
    while (*(v1 + 65))
    {
      v3 = OUTLINED_FUNCTION_0_41();
      v11 = WaitOnCondition(v3, v4, v5, v6, v7, v8, v9, v10);
      if (v11)
      {
        goto LABEL_5;
      }
    }

    v12 = 0;
    *(v1 + 64) = 0;
  }

  FigSimpleMutexUnlock(*v1);
  return v12;
}

uint64_t FigEventWaitRelative(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 < 0)
  {
    v6 = 0;
  }

  else
  {
    v32 = 0;
    v5 = RelativeTimeToAbsoluteTime(a2, &v32);
    v6 = v5 != 0;
    if (v5)
    {
      v3 = v32;
    }
  }

  v7 = FigSimpleMutexLock(*a1);
  if (v7)
  {
    return v7;
  }

  while (*(a1 + 65))
  {
    v8 = OUTLINED_FUNCTION_0_41();
    v16 = WaitOnCondition(v8, v9, v10, v11, v12, v13, v14, v15);
    if (v16)
    {
      goto LABEL_9;
    }
  }

  if (*(a1 + 67))
  {
    v28 = 1400;
LABEL_32:
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0AuLL, "(Fig)", v28, v2, v30, v31);
LABEL_9:
    v17 = v16;
    goto LABEL_27;
  }

  v18 = 0;
  ++*(a1 + 56);
  do
  {
    if (*(a1 + 64) || v18)
    {
      break;
    }

    v19 = OUTLINED_FUNCTION_0_41();
    if (v3 < 0)
    {
      v18 = WaitOnCondition(v19, v20, v21, v22, v23, v24, v25, v26);
    }

    else
    {
      v18 = v6 ? WaitOnConditionTimed(v19, v20, v3, v22, v23, v24, v25, v26) : WaitOnConditionTimedRelative(v19, v20, v3, v22, v23, v24, v25, v26);
    }
  }

  while (!*(a1 + 67));
  --*(a1 + 56);
  if (v18)
  {
    if (v18 == 60)
    {
      v17 = 4294954504;
    }

    else
    {
      v17 = v18;
    }
  }

  else
  {
    v17 = 0;
    if (!*(a1 + 66))
    {
      *(a1 + 64) = 0;
    }
  }

  pthread_cond_broadcast((a1 + 8));
  if (*(a1 + 67))
  {
    v28 = 1431;
    goto LABEL_32;
  }

LABEL_27:
  FigSimpleMutexUnlock(*a1);
  return v17;
}

uint64_t FigSimpleMutexCreateWithFlags_cold_1(pthread_mutexattr_t *a1, pthread_mutex_t *a2, int *a3)
{
  a1->__sig = 0;
  *a1->__opaque = 0;
  if (pthread_mutexattr_init(a1) || (v6 = pthread_mutexattr_settype(a1, 2)) == 0)
  {
    v6 = pthread_mutex_init(a2, a1);
  }

  *a3 = v6;
  return pthread_mutexattr_destroy(a1);
}

uint64_t figThreadBindToPID(_opaque_pthread_t *a1)
{
  v2 = 0;
  result = pthread_threadid_np(a1, &v2);
  if (!result)
  {
    gAnyFigThreadIsPidBound = 1;
    return proc_pidbind();
  }

  return result;
}

uint64_t FigThreadAllocKey(uint64_t a1, pthread_key_t *a2)
{
  v4 = 0;
  result = pthread_key_create(&v4, 0);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t figGetMaxLogicalCoreCountOnce()
{
  v2 = 0;
  v1 = 4;
  result = sysctlbyname("hw.logicalcpu_max", &v2, &v1, 0, 0);
  if (!result)
  {
    sLogicalCoreCount = v2;
  }

  return result;
}

size_t figSetPThreadPriority_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFFFFFuLL, "(Fig)", 0x285, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigThreadSetProperty_cold_1(const __CFNumber *a1, _opaque_pthread_t *a2, _DWORD *a3)
{
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  v5 = valuePtr;
  if (gGMFigKTraceEnabled == 1)
  {
    FigThreadGetMachThreadPriorityValue(valuePtr);
    kdebug_trace();
  }

  if (v5 == 16)
  {
    result = figSetPThreadBackground(a2, 1);
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  figSetPThreadBackground(a2, 0);
  result = figSetPThreadPriority(a2, kNativePriorityMap[v5]);
  if (!result)
  {
LABEL_7:
    result = 0;
  }

LABEL_8:
  *a3 = result;
  return result;
}

CFNumberRef FigThreadCopyProperty_cold_1(_DWORD *a1, _DWORD *valuePtr, CFNumberRef *a3)
{
  v4 = 1;
  while (kNativePriorityMap[v4] != *a1)
  {
    if (++v4 == 51)
    {
      LODWORD(v4) = 5;
      break;
    }
  }

  *valuePtr = v4;
  result = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
  *a3 = result;
  return result;
}

CFTypeRef FigThreadCopyProperty_cold_2(_opaque_pthread_t *a1, const void **a2, _DWORD *a3)
{
  v9 = 1;
  v5 = pthread_mach_thread_np(a1);
  result = figGetMachThreadTimesharePolicy(v5, &v9);
  *a3 = result;
  if (!result)
  {
    if (v9)
    {
      v7 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v7 = MEMORY[0x1E695E4C0];
    }

    v8 = *v7;
    *a2 = *v7;
    return CFRetain(v8);
  }

  return result;
}

size_t FigThreadGetIOPolicy_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBB66uLL, "<<<< FIGDARWINTHREAD >>>>", 0x572, v1, v4, v5);
  *a1 = result;
  return result;
}

size_t FigThreadGetIOPolicy_cold_2(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE07uLL, "<<<< FIGDARWINTHREAD >>>>", 0x56D, v1, v4, v5);
  *a1 = result;
  return result;
}

CFMutableDictionaryRef FigCFDictionaryCreateMutableCopyWithCFTypeCallbacks(const __CFAllocator *a1, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = Mutable;
  if (a2 && Mutable)
  {
    CFDictionaryApplyFunction(a2, setKeyInDictionaryApply, Mutable);
  }

  return v4;
}

void FigCFDictionarySetAllValuesFromDictionary(void *context, CFDictionaryRef theDict)
{
  if (context)
  {
    if (theDict)
    {
      CFDictionaryApplyFunction(theDict, setKeyInDictionaryApply, context);
    }
  }
}

__CFArray *FigCFArrayCopySubarrayWithRange(const __CFAllocator *a1, CFArrayRef theArray, uint64_t a3, CFIndex a4)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v9 = (a3 & (a3 >> 63)) + a4;
  Mutable = CFArrayCreateMutable(a1, a4, MEMORY[0x1E695E9C0]);
  v11 = a3 & ~(a3 >> 63);
  if (Mutable)
  {
    v12 = v11 < Count;
  }

  else
  {
    v12 = 0;
  }

  if (v12 && v9 >= 1)
  {
    v14 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
      CFArrayAppendValue(Mutable, ValueAtIndex);
    }

    while (++v11 < Count && v14++ < v9);
  }

  return Mutable;
}

uint64_t FigCFArrayContainsValue(const __CFArray *a1, const void *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v4.length = CFArrayGetCount(a1);
  v4.location = 0;

  return CFArrayContainsValue(a1, v4, a2);
}

uint64_t FigCFArrayContainsInt(uint64_t a1, int a2)
{
  valuePtr = a2;
  if (!CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr))
  {
    return 0;
  }

  v4 = OUTLINED_FUNCTION_7_10();
  FigCFArrayContainsValue(v4, v2);
  OUTLINED_FUNCTION_15_5();
  return a1;
}

uint64_t FigCFArrayContainsInt16(uint64_t a1, __int16 a2)
{
  v4 = *MEMORY[0x1E695E480];
  valuePtr = a2;
  if (!CFNumberCreate(v4, kCFNumberSInt16Type, &valuePtr))
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_7_10();
  FigCFArrayContainsValue(v5, v2);
  OUTLINED_FUNCTION_15_5();
  return a1;
}

uint64_t FigCFArrayContainsInt32(uint64_t a1, int a2)
{
  v4 = *MEMORY[0x1E695E480];
  valuePtr = a2;
  if (!CFNumberCreate(v4, kCFNumberSInt32Type, &valuePtr))
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_7_10();
  FigCFArrayContainsValue(v5, v2);
  OUTLINED_FUNCTION_15_5();
  return a1;
}

uint64_t FigCFArrayContainsInt64(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];
  valuePtr = a2;
  if (!CFNumberCreate(v4, kCFNumberSInt64Type, &valuePtr))
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_7_10();
  FigCFArrayContainsValue(v5, v2);
  OUTLINED_FUNCTION_15_5();
  return a1;
}

uint64_t FigCFArrayContainsAnyValueInArray(uint64_t a1, CFArrayRef theArray)
{
  result = 0;
  if (a1)
  {
    if (theArray)
    {
      v9 = a1;
      v10.length = CFArrayGetCount(theArray);
      OUTLINED_FUNCTION_14_5(v10.length, v10, v4, v5, v6, v7, v8, v9);
      return 0;
    }
  }

  return result;
}

uint64_t FigCFArrayContainsEachValueInArray(uint64_t a1, CFArrayRef theArray)
{
  result = 0;
  if (a1)
  {
    if (theArray)
    {
      v9 = a1;
      v10.length = CFArrayGetCount(theArray);
      OUTLINED_FUNCTION_14_5(v10.length, v10, v4, v5, v6, v7, v8, v9);
      return 1;
    }
  }

  return result;
}

void FigCFArrayRemoveValuesInArray(void *a1, const __CFSet *a2)
{
  if (a1 && a2)
  {
    v4 = CFGetAllocator(a1);
    if (FigCFSetCreateFromArray(v4, a2))
    {
      v5 = OUTLINED_FUNCTION_7_10();
      Count = CFArrayGetCount(v5);
      if (Count >= 1)
      {
        v7 = Count + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v7 - 2);
          if (CFSetContainsValue(a2, ValueAtIndex))
          {
            CFArrayRemoveValueAtIndex(a1, v7 - 2);
          }

          --v7;
        }

        while (v7 > 1);
      }

      CFRelease(a2);
    }

    else
    {
      OUTLINED_FUNCTION_6_5();

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x56D, v10, v11, v12);
    }
  }
}

uint64_t FigCFDictionaryGetValueForCaseInsensitiveKeyIfPresent(CFDictionaryRef theDict, uint64_t a2, void *a3)
{
  result = 0;
  v6 = a2;
  v7 = 0;
  if (theDict && a2 && a3)
  {
    CFDictionaryApplyFunction(theDict, figCFDictionaryCaseInsensitiveKeySearch, &v6);
    if (v7)
    {
      *a3 = v7;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFComparisonResult figCFDictionaryCaseInsensitiveKeySearch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CFStringGetLength(*a3);
  v5 = OUTLINED_FUNCTION_22_1();
  v8.location = 0;
  result = CFStringCompareWithOptions(v5, v6, v8, 1uLL);
  if (result == kCFCompareEqualTo && !*(a3 + 8))
  {
    *(a3 + 8) = a2;
  }

  return result;
}

void FigCFDictionarySetValue(void *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CFDictionaryGetTypeID();
    if (a3)
    {
      if (a2 && v6 == TypeID)
      {

        CFDictionarySetValue(a1, a2, a3);
      }
    }
  }
}

void FigCFDictionarySetValueOrCFNull(void *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CFDictionaryGetTypeID();
    if (a2)
    {
      if (v6 == TypeID)
      {
        if (a3)
        {
          v8 = a3;
        }

        else
        {
          v8 = *MEMORY[0x1E695E738];
        }

        CFDictionarySetValue(a1, a2, v8);
      }
    }
  }
}

const void *FigCFDictionaryGetValue(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFGetTypeID(a1);
  if (v1 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_11_4();

  return CFDictionaryGetValue(v2, v3);
}

const void *FigCFDictionaryGetStringValue(const void *a1)
{
  Value = FigCFDictionaryGetValue(a1);
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFStringGetTypeID())
  {
    return 0;
  }

  return v2;
}

const void *FigCFDictionaryGetURLValue(const void *a1)
{
  Value = FigCFDictionaryGetValue(a1);
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFURLGetTypeID())
  {
    return 0;
  }

  return v2;
}

const void *FigCFDictionaryGetDictionaryValue(const void *a1)
{
  Value = FigCFDictionaryGetValue(a1);
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return v2;
}

const void *FigCFDictionaryGetArrayValue(const void *a1)
{
  Value = FigCFDictionaryGetValue(a1);
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFArrayGetTypeID())
  {
    return 0;
  }

  return v2;
}

const void *FigCFDictionaryGetDataValue(const void *a1)
{
  Value = FigCFDictionaryGetValue(a1);
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDataGetTypeID())
  {
    return 0;
  }

  return v2;
}

const void *FigCFDictionaryGetBooleanValue(const void *a1)
{
  Value = FigCFDictionaryGetValue(a1);
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFBooleanGetTypeID())
  {
    return 0;
  }

  return v2;
}

const void *FigCFDictionaryGetNumberValue(const void *a1)
{
  Value = FigCFDictionaryGetValue(a1);
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFNumberGetTypeID())
  {
    return 0;
  }

  return v2;
}

void FigCFDictionaryAddEntriesToDictionaryWithRecursion(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  v3 = 0;
  if (a1)
  {
    v5 = 0;
    if (a2)
    {
      v8 = CFGetTypeID(a1);
      if (v8 == CFDictionaryGetTypeID() && (v9 = CFGetTypeID(a2), v9 == CFDictionaryGetTypeID()))
      {
        Count = CFDictionaryGetCount(a1);
        v5 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
        v3 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
        CFDictionaryGetKeysAndValues(a1, v5, v3);
        if (Count >= 1)
        {
          for (i = 0; Count != i; ++i)
          {
            v12 = v5[i];
            v13 = v3[i];
            Value = CFDictionaryGetValue(a2, v12);
            if (!Value)
            {
              goto LABEL_12;
            }

            if (v13)
            {
              v15 = Value;
              v16 = CFGetTypeID(v13);
              if (v16 == CFDictionaryGetTypeID())
              {
                v17 = CFGetTypeID(v15);
                if (v17 == CFDictionaryGetTypeID())
                {
                  FigCFDictionaryAddEntriesToDictionaryWithRecursion(v13, v15, a3);
                  continue;
                }
              }
            }

            if (a3)
            {
LABEL_12:
              CFDictionarySetValue(a2, v12, v13);
            }
          }
        }
      }

      else
      {
        v3 = 0;
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  free(v5);

  free(v3);
}

__CFDictionary *FigCFDictionaryCreateMutableCopyOnlyIncludingKeys(const __CFDictionary *a1, const void **a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    if (a2 && a3 >= 1)
    {
      v10 = a3;
      do
      {
        if (CFDictionaryContainsKey(a1, *a2))
        {
          v11 = *a2;
          Value = CFDictionaryGetValue(a1, *a2);
          CFDictionarySetValue(Mutable, v11, Value);
        }

        ++a2;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x65D, v3, v7, v8);
  }

  return Mutable;
}

void figCFDictionaryGetNumberIfPresent(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const __CFNumber *value, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_4();
  a17 = v22;
  a18 = v23;
  value = 0;
  if (!v24)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_6();
  v26 = CFGetTypeID(v25);
  if (v26 != CFDictionaryGetTypeID())
  {
    OUTLINED_FUNCTION_6_5();
    v32 = 1659;
LABEL_11:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", v32, v29, v30, v31);
    goto LABEL_12;
  }

  if (!v20)
  {
    OUTLINED_FUNCTION_6_5();
    v32 = 1660;
    goto LABEL_11;
  }

  if (!v18)
  {
    OUTLINED_FUNCTION_6_5();
    v32 = 1661;
    goto LABEL_11;
  }

  if (CFDictionaryGetValueIfPresent(v21, v20, &value))
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(value))
    {
      CFNumberGetValue(value, v19, v18);
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_17_4();
}

void FigCFDictionarySetBase64Data(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_4();
  a17 = v18;
  a18 = v22;
  cf = 0;
  if (!v19)
  {
    goto LABEL_9;
  }

  v23 = v21;
  v24 = v20;
  v25 = CFGetTypeID(v19);
  if (v25 != CFDictionaryGetTypeID())
  {
    OUTLINED_FUNCTION_6_5();
    v37 = 1877;
LABEL_13:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", v37, v34, v35, v36);
    goto LABEL_9;
  }

  if (!v24)
  {
    OUTLINED_FUNCTION_6_5();
    v37 = 1878;
    goto LABEL_13;
  }

  if (!v23)
  {
    OUTLINED_FUNCTION_6_5();
    v37 = 1879;
    goto LABEL_13;
  }

  v26 = *MEMORY[0x1E695E480];
  BytePtr = CFDataGetBytePtr(v23);
  Length = CFDataGetLength(v23);
  LODWORD(v26) = FigCreateBase64EncodedStringFromBytes(v26, BytePtr, Length, 0, &cf);
  v29 = cf;
  if (!v26)
  {
    v30 = OUTLINED_FUNCTION_11_4();
    CFDictionarySetValue(v30, v31, v32);
    v29 = cf;
  }

  if (v29)
  {
    CFRelease(v29);
  }

LABEL_9:
  OUTLINED_FUNCTION_17_4();
}

uint64_t FigCFDictionarySetValueFromKeyInDict(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, void *key)
{
  result = 0;
  if (a1 && a2 && theDict && key)
  {
    result = CFDictionaryGetValue(theDict, key);
    if (result)
    {
      v6 = OUTLINED_FUNCTION_11_4();
      CFDictionarySetValue(v6, v7, v8);
      return 1;
    }
  }

  return result;
}

void FigCFDictionaryGetBooleanIfPresent(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_4();
  if (!v20)
  {
    goto LABEL_12;
  }

  v21 = OUTLINED_FUNCTION_6_12(v20);
  if (v21 != CFDictionaryGetTypeID())
  {
    OUTLINED_FUNCTION_0_11();
    v30 = 1977;
LABEL_11:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", v30, v27, v28, v29);
    goto LABEL_12;
  }

  if (!v19)
  {
    OUTLINED_FUNCTION_0_11();
    v30 = 1978;
    goto LABEL_11;
  }

  if (!v18)
  {
    OUTLINED_FUNCTION_0_11();
    v30 = 1979;
    goto LABEL_11;
  }

  v22 = OUTLINED_FUNCTION_22_1();
  if (CFDictionaryGetValueIfPresent(v22, v23, v24))
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(0))
    {
      *v18 = CFBooleanGetValue(0);
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_17_4();
}

void FigCFDictionaryGetStringIfPresent(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_4();
  if (!v20)
  {
    goto LABEL_12;
  }

  v21 = OUTLINED_FUNCTION_6_12(v20);
  if (v21 != CFDictionaryGetTypeID())
  {
    OUTLINED_FUNCTION_0_11();
    v30 = 1994;
LABEL_11:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", v30, v27, v28, v29);
    goto LABEL_12;
  }

  if (!v19)
  {
    OUTLINED_FUNCTION_0_11();
    v30 = 1995;
    goto LABEL_11;
  }

  if (!v18)
  {
    OUTLINED_FUNCTION_0_11();
    v30 = 1996;
    goto LABEL_11;
  }

  v22 = OUTLINED_FUNCTION_22_1();
  if (CFDictionaryGetValueIfPresent(v22, v23, v24))
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(0))
    {
      *v18 = 0;
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_17_4();
}

uint64_t FigCFDictionaryGetCMTimeIfPresent(uint64_t result)
{
  cf = 0;
  if (result)
  {
    v3 = OUTLINED_FUNCTION_6_12(result);
    if (v3 == CFDictionaryGetTypeID())
    {
      if (v2)
      {
        if (v1)
        {
          v4 = OUTLINED_FUNCTION_22_1();
          result = CFDictionaryGetValueIfPresent(v4, v5, v6);
          if (!result)
          {
            return result;
          }

          TypeID = CFDictionaryGetTypeID();
          if (TypeID == CFGetTypeID(cf))
          {
            CMTimeMakeFromDictionary(&v13, cf);
            *v1 = v13;
            return 1;
          }

          return 0;
        }

        OUTLINED_FUNCTION_0_11();
        v12 = 2112;
      }

      else
      {
        OUTLINED_FUNCTION_0_11();
        v12 = 2111;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_11();
      v12 = 2110;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", v12, v9, v10, v11);
    return 0;
  }

  return result;
}

uint64_t FigCFDictionaryGetCMTimeRangeIfPresent(uint64_t result)
{
  cf = 0;
  if (result)
  {
    v3 = OUTLINED_FUNCTION_6_12(result);
    if (v3 == CFDictionaryGetTypeID())
    {
      if (v2)
      {
        if (v1)
        {
          v4 = OUTLINED_FUNCTION_22_1();
          result = CFDictionaryGetValueIfPresent(v4, v5, v6);
          if (!result)
          {
            return result;
          }

          TypeID = CFDictionaryGetTypeID();
          if (TypeID == CFGetTypeID(cf))
          {
            CMTimeRangeMakeFromDictionary(&v14, cf);
            v8 = *&v14.start.epoch;
            *v1 = *&v14.start.value;
            v1[1] = v8;
            v1[2] = *&v14.duration.timescale;
            return 1;
          }

          return 0;
        }

        OUTLINED_FUNCTION_0_11();
        v13 = 2162;
      }

      else
      {
        OUTLINED_FUNCTION_0_11();
        v13 = 2161;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_11();
      v13 = 2160;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", v13, v10, v11, v12);
    return 0;
  }

  return result;
}

uint64_t FigCFIOKitObjectCreate(uint64_t *a1, io_object_t a2)
{
  if (_MergedGlobals_28 != -1)
  {
    dispatch_once(&_MergedGlobals_28, &__block_literal_global_20);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294954305;
  }

  v5 = Instance;
  IOObjectRetain(a2);
  result = 0;
  *(v5 + 16) = a2;
  *a1 = v5;
  return result;
}

void FigCFDictionaryGetCGRectIfPresent(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_4();
  if (v18)
  {
    v21 = v20;
    v22 = v19;
    v23 = CFGetTypeID(v18);
    if (v23 == CFDictionaryGetTypeID())
    {
      if (v22)
      {
        if (v21)
        {
          v24 = OUTLINED_FUNCTION_22_1();
          if (!CFDictionaryGetValueIfPresent(v24, v25, v26))
          {
            goto LABEL_14;
          }

          TypeID = CFDictionaryGetTypeID();
          if (TypeID != CFGetTypeID(0) || CGRectMakeWithDictionaryRepresentation(0, v21))
          {
            goto LABEL_14;
          }

          OUTLINED_FUNCTION_14_2();
          v32 = 2788;
        }

        else
        {
          OUTLINED_FUNCTION_14_2();
          v32 = 2785;
        }
      }

      else
      {
        OUTLINED_FUNCTION_14_2();
        v32 = 2784;
      }
    }

    else
    {
      OUTLINED_FUNCTION_14_2();
      v32 = 2783;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", v32, v29, v30, v31);
  }

LABEL_14:
  OUTLINED_FUNCTION_17_4();
}

void FigCFDictionaryGetCGSizeIfPresent(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16_4();
  if (v18)
  {
    v21 = v20;
    v22 = v19;
    v23 = CFGetTypeID(v18);
    if (v23 == CFDictionaryGetTypeID())
    {
      if (v22)
      {
        if (v21)
        {
          v24 = OUTLINED_FUNCTION_22_1();
          if (!CFDictionaryGetValueIfPresent(v24, v25, v26))
          {
            goto LABEL_14;
          }

          TypeID = CFDictionaryGetTypeID();
          if (TypeID != CFGetTypeID(0) || CGSizeMakeWithDictionaryRepresentation(0, v21))
          {
            goto LABEL_14;
          }

          OUTLINED_FUNCTION_14_2();
          v32 = 2862;
        }

        else
        {
          OUTLINED_FUNCTION_14_2();
          v32 = 2859;
        }
      }

      else
      {
        OUTLINED_FUNCTION_14_2();
        v32 = 2858;
      }
    }

    else
    {
      OUTLINED_FUNCTION_14_2();
      v32 = 2857;
    }

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", v32, v29, v30, v31);
  }

LABEL_14:
  OUTLINED_FUNCTION_17_4();
}

CFStringRef FigCFStringCreateLoggingIdentifierOfLength(uint64_t a1, uint64_t a2)
{
  v3 = malloc_type_malloc(a2 + 1, 0xE5D90889uLL);
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      v5 = v3;
      v6 = a2;
      do
      {
        *v5++ = FigCFStringCreateLoggingIdentifierOfLength_charSet[arc4random_uniform(0x1Au)];
        --v6;
      }

      while (v6);
    }

    v4[a2] = 0;
    v7 = OUTLINED_FUNCTION_11_4();
    v9 = CFStringCreateWithCString(v7, v8, 0x600u);
  }

  else
  {
    v9 = 0;
  }

  free(v4);
  return v9;
}

const __CFURL *FigCFURLCreateCacheKey(const __CFURL *result, char a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFURLGetString(result);
    if (!v4)
    {
      OUTLINED_FUNCTION_14_2();
      v11 = 4294954305;
      v12 = 3943;
      goto LABEL_15;
    }

    if (a2)
    {
      result = CFURLCopyPath(v3);
      if (!result)
      {
        OUTLINED_FUNCTION_14_2();
        v11 = 4294954305;
        v12 = 3947;
        goto LABEL_15;
      }
    }

    else
    {
      v5 = v4;
      if ((a2 & 2) == 0 || (location = CFStringFind(v4, @"?", 0).location, location == -1))
      {

        return CFRetain(v5);
      }

      else
      {
        v14.length = location;
        v14.location = 0;
        result = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v5, v14);
        if (!result)
        {
          OUTLINED_FUNCTION_14_2();
          v11 = 4294967188;
          v12 = 3953;
LABEL_15:
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v11, "<<< FigCFUtilities >>>", v12, v8, v9, v10);
          return 0;
        }
      }
    }
  }

  return result;
}

void FigCFStringInsertIndent(__CFString *a1, const __CFString *a2, const __CFString *a3, uint64_t a4)
{
  v8 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v8, 0);
  v10 = CFStringCreateMutable(v8, 0);
  if (a4 >= 1)
  {
    do
    {
      CFStringAppend(Mutable, a2);
      CFStringAppend(v10, a3);
      --a4;
    }

    while (a4);
  }

  v11 = CFStringCreateWithFormat(v8, 0, @"\n%@", v10);
  if (v11)
  {
    CFStringInsert(a1, 0, Mutable);
    v12.length = CFStringGetLength(a1);
    v12.location = 0;
    CFStringFindAndReplace(a1, @"\n", v11, v12, 0);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  OUTLINED_FUNCTION_10_6();
}

__CFString *FigCFStringCopyWithIndent()
{
  OUTLINED_FUNCTION_12_6();
  v5 = CFGetAllocator(v4);
  result = CFStringCreateMutableCopy(v5, 0, v3);
  if (result)
  {
    v7 = result;
    FigCFStringInsertIndent(result, v2, v1, v0);
    Copy = CFStringCreateCopy(v5, v7);
    CFRelease(v7);
    return Copy;
  }

  return result;
}

uint64_t FigCFStringGetOSTypeValue(CFStringRef theString, int *a2)
{
  result = 0;
  v6 = 0;
  *buffer = 0;
  if (theString && a2)
  {
    if (CFStringGetLength(theString) == 4)
    {
      result = CFStringGetCString(theString, buffer, 5, 0);
      if (result)
      {
        *a2 = (buffer[1] << 16) | (buffer[0] << 24) | (buffer[2] << 8) | buffer[3];
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void FigCFPropertyListCreateFromFigFileFork(const __CFAllocator *a1, int *a2, CFOptionFlags a3, CFPropertyListFormat *a4, CFErrorRef *a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  size = 0;
  if (a2)
  {
    v14 = 0;
    if (!FigFileForkGetLengthAtOffset(a2, 0, &size, a4, a5, a6, a7, a8) && size >= 1)
    {
      v14 = malloc_type_malloc(size, 0x100004077774924uLL);
      if (!FigFileForkRead(a2, v14, size, 0, 0))
      {
        v15 = CFDataCreate(a1, v14, size);
        if (v15)
        {
          v18 = v15;
          CFPropertyListCreateWithData(a1, v15, a3, a4, a5);
          CFRelease(v18);
        }

        else
        {
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x122D, v8, v16, v17);
        }
      }
    }
  }

  else
  {
    v14 = 0;
  }

  free(v14);
  OUTLINED_FUNCTION_10_6();
}

CFDataRef FigCFPropertyListWriteToFigFileFork(CFPropertyListRef propertyList, int *a2, CFPropertyListFormat a3, CFOptionFlags a4, CFErrorRef *a5)
{
  v12 = 0;
  result = CFPropertyListCreateData(*MEMORY[0x1E695E480], propertyList, a3, a4, a5);
  if (result)
  {
    v8 = OUTLINED_FUNCTION_7_10();
    if (!FigFileForkTruncate(v8, 0))
    {
      Length = CFDataGetLength(v5);
      if (Length >= 1)
      {
        v10 = Length;
        BytePtr = CFDataGetBytePtr(v5);
        if (BytePtr)
        {
          FigFileForkWrite(a2, BytePtr, v10, 0, &v12);
        }
      }
    }

    CFRelease(v5);
    return v12;
  }

  return result;
}

__CFDictionary *FigCFCopyCFErrorAsPropertyList(__CFError *a1)
{
  cf = 0;
  if (!a1)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    valuePtr = CFErrorGetCode(a1);
    v4 = CFNumberCreate(v2, kCFNumberCFIndexType, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFDictionarySetValue(Mutable, @"CFError_Code", v4);
      CFRelease(v5);
    }

    Domain = CFErrorGetDomain(a1);
    value = Domain;
    if (Domain)
    {
      CFDictionarySetValue(Mutable, @"CFError_Domain", Domain);
    }

    v7 = CFErrorCopyUserInfo(a1);
    if (v7)
    {
      v8 = v7;
      ValueIfPresent = CFDictionaryGetValueIfPresent(v7, *MEMORY[0x1E695E650], &value);
      if (ValueIfPresent)
      {
        CFDictionarySetValue(Mutable, @"CFError_LocalizedDescription", value);
      }

      v16 = OUTLINED_FUNCTION_9_10(ValueIfPresent, *MEMORY[0x1E695E658], v10, v11, v12, v13, v14, v15, v55, value);
      if (v16)
      {
        CFDictionarySetValue(Mutable, @"CFError_LocalizedFailureReason", value);
      }

      v23 = OUTLINED_FUNCTION_9_10(v16, *MEMORY[0x1E695E660], v17, v18, v19, v20, v21, v22, v56, value);
      if (v23)
      {
        CFDictionarySetValue(Mutable, @"CFError_LocalizedRecoverySuggestion", value);
      }

      v30 = OUTLINED_FUNCTION_9_10(v23, *MEMORY[0x1E695E620], v24, v25, v26, v27, v28, v29, v57, value);
      if (v30)
      {
        CFDictionarySetValue(Mutable, @"CFError_Description", value);
      }

      v37 = OUTLINED_FUNCTION_9_10(v30, *MEMORY[0x1E695E668], v31, v32, v33, v34, v35, v36, v58, value);
      if (v37)
      {
        v44 = CFURLGetString(value);
        CFDictionarySetValue(Mutable, @"CFError_URL", v44);
      }

      v45 = OUTLINED_FUNCTION_9_10(v37, *MEMORY[0x1E695E648], v38, v39, v40, v41, v42, v43, v59, value);
      if (v45)
      {
        CFDictionarySetValue(Mutable, @"CFError_FilePath", value);
      }

      if (OUTLINED_FUNCTION_9_10(v45, *MEMORY[0x1E695E670], v46, v47, v48, v49, v50, v51, v60, value))
      {
        v53 = FigCFCopyCFErrorAsPropertyList(value);
        if (v53)
        {
          v54 = v53;
          CFDictionarySetValue(Mutable, @"CFError_UnderlyingError", v53);
          CFRelease(v54);
        }
      }

      if (!FigCreateSerializedDictionaryFromNSErrorUserInfo(v8, &cf))
      {
        FigCFDictionaryAddEntriesToDictionaryWithRecursion(cf, Mutable, 1);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(v8);
    }
  }

  return Mutable;
}

const __CFDictionary *FigCFErrorCreateFromPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  value = 0;
  valuePtr = 0;
  cf = 0;
  if (a1)
  {
    if (OUTLINED_FUNCTION_8_10(a1, @"CFError_Code", a3, a4, a5, a6, a7, a8, 0) && (CFNumberGetValue(number, kCFNumberCFIndexType, &valuePtr), CFDictionaryGetValueIfPresent(v8, @"CFError_Domain", &value)) && (v9 = *MEMORY[0x1E695E480], (Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0))
    {
      v17 = Mutable;
      v18 = OUTLINED_FUNCTION_8_10(Mutable, @"CFError_LocalizedDescription", v11, v12, v13, v14, v15, v16, number);
      if (v18)
      {
        OUTLINED_FUNCTION_11_5(v18, *MEMORY[0x1E695E650], v19, v20, v21, v22, v23, v24, numbera);
      }

      v25 = OUTLINED_FUNCTION_8_10(v18, @"CFError_LocalizedFailureReason", v19, v20, v21, v22, v23, v24, numbera);
      if (v25)
      {
        OUTLINED_FUNCTION_11_5(v25, *MEMORY[0x1E695E658], v26, v27, v28, v29, v30, v31, numberb);
      }

      v32 = OUTLINED_FUNCTION_8_10(v25, @"CFError_LocalizedRecoverySuggestion", v26, v27, v28, v29, v30, v31, numberb);
      if (v32)
      {
        OUTLINED_FUNCTION_11_5(v32, *MEMORY[0x1E695E660], v33, v34, v35, v36, v37, v38, numberc);
      }

      v39 = OUTLINED_FUNCTION_8_10(v32, @"CFError_Description", v33, v34, v35, v36, v37, v38, numberc);
      if (v39)
      {
        OUTLINED_FUNCTION_11_5(v39, *MEMORY[0x1E695E620], v40, v41, v42, v43, v44, v45, numberd);
      }

      v46 = OUTLINED_FUNCTION_8_10(v39, @"CFError_URL", v40, v41, v42, v43, v44, v45, numberd);
      if (v46)
      {
        v46 = CFURLCreateWithString(v9, numbere, 0);
        if (v46)
        {
          v53 = v46;
          CFDictionarySetValue(v17, *MEMORY[0x1E695E668], v46);
          CFRelease(v53);
        }
      }

      v54 = OUTLINED_FUNCTION_8_10(v46, @"CFError_FilePath", v47, v48, v49, v50, v51, v52, numbere);
      if (v54)
      {
        OUTLINED_FUNCTION_11_5(v54, *MEMORY[0x1E695E648], v55, v56, v57, v58, v59, v60, numberf);
      }

      if (OUTLINED_FUNCTION_8_10(v54, @"CFError_UnderlyingError", v55, v56, v57, v58, v59, v60, numberf))
      {
        v62 = FigCFErrorCreateFromPropertyList(numberg);
        if (v62)
        {
          v63 = v62;
          CFDictionarySetValue(v17, *MEMORY[0x1E695E670], v62);
          CFRelease(v63);
        }
      }

      if (!FigCreateNSErrorUserInfoFromSerializedDictionary(v8, &cf))
      {
        FigCFDictionaryAddEntriesToDictionaryWithRecursion(cf, v17, 1);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      v8 = CFErrorCreate(v9, value, valuePtr, v17);
      CFRelease(v17);
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

size_t FigCFSetCopyValuesAsCFArray(const __CFSet *a1, CFArrayRef *a2)
{
  Count = CFSetGetCount(a1);
  if (!a1)
  {
    v6 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_0_11();
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x1797, v11, v12, v13);
    v6 = 0;
    goto LABEL_6;
  }

  v5 = Count;
  v6 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  if (!v6)
  {
    OUTLINED_FUNCTION_0_11();
    v18 = 6042;
LABEL_11:
    v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", v18, v15, v16, v17);
    goto LABEL_6;
  }

  CFSetGetValues(a1, v6);
  v7 = CFArrayCreate(*MEMORY[0x1E695E480], v6, v5, MEMORY[0x1E695E9C0]);
  if (!v7)
  {
    OUTLINED_FUNCTION_0_11();
    v18 = 6047;
    goto LABEL_11;
  }

  v8 = 0;
  *a2 = v7;
LABEL_6:
  free(v6);
  return v8;
}

CGColorRef FigCreateCGColorSRGB(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  v5 = v4;
  if (v4)
  {
    v6 = CGColorCreate(v4, components);
  }

  else
  {
    v6 = 0;
  }

  CGColorSpaceRelease(v5);
  return v6;
}

CFMutableArrayRef FigCopyCGColorSRGBAsCFArray(void *a1)
{
  if (!a1 || (v2 = CFGetTypeID(a1), v2 != CGColorGetTypeID()))
  {
    OUTLINED_FUNCTION_14_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE14uLL, "<<< FigCFUtilities >>>", 0x182E, v16, v17, v18);
    return 0;
  }

  if (CGColorGetNumberOfComponents(a1) != 4)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    Components = CGColorGetComponents(a1);
    if (Components)
    {
      v10 = Components;
      v11 = 0;
      do
      {
        v12 = v10[v11];
        v19 = v12;
        if (figCFArrayAppendNumber(Mutable, kCFNumberFloatType, &v19, v5, v6, v7, v8, v9))
        {
          break;
        }
      }

      while (v11++ != 3);
    }
  }

  return Mutable;
}

CGColorRef FigCreateCGColorSRGBFromCFArray(const void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = 0;
  if (!a1 || (v2 = CFGetTypeID(a1), v2 != CFArrayGetTypeID()))
  {
    OUTLINED_FUNCTION_0_11();
    v14 = 6222;
LABEL_10:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCE14uLL, "<<< FigCFUtilities >>>", v14, v11, v12, v13);
    return 0;
  }

  if (CFArrayGetCount(a1) != 4)
  {
    OUTLINED_FUNCTION_0_11();
    v14 = 6223;
    goto LABEL_10;
  }

  v7 = 0;
  for (i = &v15; figCFArrayGetNumberAtIndex(a1, v7, kCFNumberFloatType, i, v3, v4, v5, v6); i = (i + 4))
  {
    if (++v7 == 4)
    {
      return FigCreateCGColorSRGB(*&v15, *(&v15 + 1), *&v16, *(&v16 + 1));
    }
  }

  return 0;
}

void FigGetMedianValueOfCArray(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, void), uint64_t a4, size_t a5)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  v6 = a2 - 1;
  if (a2 < 1)
  {
    goto LABEL_11;
  }

  figGetIndexOfNthSmallestValue(a1, 0, v6, a3, a2 >> 1);
  if ((a2 & 1) == 0)
  {
    figGetIndexOfNthSmallestValue(a1, 0, v6, a3, (a2 >> 1) - 1);
    OUTLINED_FUNCTION_10_6();

    __asm { BRAAZ           X2 }
  }

  if (malloc_type_malloc(a5, 0xBA13035EuLL))
  {
    OUTLINED_FUNCTION_10_6();

    memcpy(v12, v13, v14);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_10_6();
  }
}

size_t figCFDictionarySetNumber_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x68F, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figCFDictionarySetNumber_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x68D, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figCFDictionarySetNumber_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x68B, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figCFArrayAppendNumber_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x6B0, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figCFArrayAppendNumber_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x6AD, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetUInt64_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x729, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFRangeMakeFromDictionary_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x7FD, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFRangeMakeFromDictionary_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x7FC, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetRange_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x817, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetRange_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x816, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCMTime_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x852, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCMTime_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x850, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCMTime_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x84E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCMTimeRange_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x863, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCMTimeRange_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x861, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCMTimeRange_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x85F, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFArrayAppendCMTime_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x884, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFArrayAppendCMTime_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x881, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCreateCFPropertyListFromData_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0xA2F, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCGRect_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0xAF6, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCGRect_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0xAF4, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCGRect_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0xAF2, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFArrayAppendCGRect_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0xB07, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFArrayAppendCGRect_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0xB04, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCGSize_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0xB40, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCGSize_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0xB3E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCGSize_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0xB3C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFArrayAppendCGSize_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0xB51, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFArrayAppendCGSize_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0xB4E, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCGPoint_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0xB76, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCGPoint_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0xB73, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFDictionarySetCGPoint_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0xB72, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFStringCreateWithBytesAndMovieLangCode_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD3EuLL, "<<< FigCFUtilities >>>", 0xDB9, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFStringCreateWithBytesAndMovieLangCode_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0xD94, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFStringCreateWithBytesAndMovieLangCode_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0xD93, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x1041, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x106B, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x1069, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_4(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x1062, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x105F, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x105B, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_7(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD3CuLL, "<<< FigCFUtilities >>>", 0x1053, v8, a7, a8);
  *a1 = result;
  return result;
}

void FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_8(const CMBlockBufferCustomBlockSource *a1, const void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  *a3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD3CuLL, "<<< FigCFUtilities >>>", a1, v8, a7, a8);

  CFRelease(a2);
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_9(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x1049, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_10(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x1046, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_11(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x1045, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_12(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x1044, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_13(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x1043, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCreateRelativeURLWithURLAndBaseURL_cold_14(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x1042, v8, a7, a8);
  *a1 = result;
  return result;
}

BOOL FigCFURLCreateWithSuffixedExtension_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x108F, v8, a7, a8);
  *a1 = v10;
  return v10 == 0;
}

size_t FigCFURLCopyCanonicalPath_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x10A3, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCopyCanonicalPath_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x10A2, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFURLCopyCanonicalPath_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x10A1, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigReplaceURLWithString_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x1317, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigReplaceStringWithURL_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x132C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFAttributedStringSetDouble_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x151C, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFAttributedStringSetDouble_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x151A, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFAttributedStringSetDouble_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x1519, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCreateCFAllocatorFigMallocWithDeallocCallback_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCE0EuLL, "<<< FigCFUtilities >>>", 0x15B1, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFArrayCopyValuesAsCFSet_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x17BA, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFArrayCopyValuesAsCFSet_cold_2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD41uLL, "<<< FigCFUtilities >>>", 0x17B5, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigCFArrayCopyValuesAsCFSet_cold_3(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCD42uLL, "<<< FigCFUtilities >>>", 0x17B2, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t FigStorageCreate_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF1CE20, 0xFFFFCE14uLL, "<<< FigCFUtilities >>>", 0x18A9, v8, a7, a8);
  *a1 = result;
  return result;
}

size_t figAudioFormatDescriptionEnsureRichestDecodableLayout(const opaqueCMFormatDescription *a1)
{
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    v50 = 4294954586;
    v51 = 2380;
    goto LABEL_27;
  }

  CMFormatDescriptionGetMediaType(a1);
  OUTLINED_FUNCTION_3_16();
  if (v9)
  {
    DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, v2, v3, v4, v5, v6, v7, v8);
    v11 = (DerivedStorage + 104);
    if (*(DerivedStorage + 104))
    {
      return 0;
    }

    v12 = DerivedStorage;
    RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(a1);
    if (!RichestDecodableFormat)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      v50 = 4294954578;
      v51 = 2391;
      goto LABEL_27;
    }

    v14 = RichestDecodableFormat;
    v15 = v12[8];
    if (v15)
    {
      v16 = v12[7];
      if (v16)
      {
        mChannelsPerFrame = v14->mASBD.mChannelsPerFrame;
        if (mChannelsPerFrame == FigGetAudioChannelCountFromLayout(v15, v16))
        {
          return 0;
        }
      }
    }

    v17 = CFGetAllocator(a1);
    v18 = allocAudioChannelLayoutForAudioChannelLayoutTag(v17, v14->mChannelLayoutTag, v12 + 12, v11);
    if (!v18)
    {
      v26 = FigDerivedFormatDescriptionGetDerivedStorage(a1, v19, v20, v21, v22, v23, v24, v25);
      if (*(v26 + 136))
      {
        return 0;
      }

      v27 = v26;
      sizeOut = 0;
      FormatList = CMAudioFormatDescriptionGetFormatList(a1, &sizeOut);
      v29 = 0;
      if (!FormatList || sizeOut < 0x90)
      {
        return v29;
      }

      v30 = FormatList;
      v31 = sizeOut / 0x30;
      v32 = sizeOut / 0x30 - 2;
      v33 = CFGetAllocator(a1);
      v34 = MEMORY[0x19A8D7200](v33, 16 * v32, 0x10200405730B0C9, 0);
      if (v34)
      {
        v35 = v34;
        bzero(v34, 16 * v32);
        p_mChannelLayoutTag = &v30[1].mChannelLayoutTag;
        v37 = v31 - 1;
        v38 = v35;
        do
        {
          if (!--v37)
          {
            v29 = 0;
            *(v27 + 128) = v32;
            *(v27 + 136) = v35;
            return v29;
          }

          v39 = CFGetAllocator(a1);
          v40 = allocAudioChannelLayoutForAudioChannelLayoutTag(v39, *p_mChannelLayoutTag, v38, v38 + 1);
          p_mChannelLayoutTag += 12;
          v38 += 2;
        }

        while (!v40);
        v29 = v40;
        v41 = 1;
        do
        {
          if (v35[v41])
          {
            v42 = CFGetAllocator(a1);
            CFAllocatorDeallocate(v42, v35[v41]);
          }

          v41 += 2;
          --v32;
        }

        while (v32);
        v43 = CFGetAllocator(a1);
        CFAllocatorDeallocate(v43, v35);
        return v29;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_20();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, 0xFFFFCE0EuLL, "<<<< AudioFormatDescription >>>>", 0x92E, v53, v54, v55);
    }

    return v18;
  }

  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_20();
  v50 = 4294954586;
  v51 = 2382;
LABEL_27:

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, v50, "<<<< AudioFormatDescription >>>>", v51, v47, v48, v49);
}

size_t figAudioFormatDescriptionEnsureMostCompatibleLayout(const opaqueCMFormatDescription *a1)
{
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v25 = 4294954586;
    v26 = 2421;
    goto LABEL_15;
  }

  CMFormatDescriptionGetMediaType(a1);
  OUTLINED_FUNCTION_3_16();
  if (!v9)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v25 = 4294954586;
    v26 = 2423;
LABEL_15:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v25, "<<<< AudioFormatDescription >>>>", v26, v22, v23, v24);
  }

  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, v2, v3, v4, v5, v6, v7, v8);
  v11 = (DerivedStorage + 120);
  if (*(DerivedStorage + 120))
  {
    return 0;
  }

  v12 = DerivedStorage;
  MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(a1);
  if (!MostCompatibleFormat)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0();
    v25 = 4294954578;
    v26 = 2432;
    goto LABEL_15;
  }

  v14 = MostCompatibleFormat;
  v15 = v12[8];
  if (v15)
  {
    v16 = v12[7];
    if (v16)
    {
      mChannelsPerFrame = v14->mASBD.mChannelsPerFrame;
      if (mChannelsPerFrame == FigGetAudioChannelCountFromLayout(v15, v16))
      {
        return 0;
      }
    }
  }

  v17 = CFGetAllocator(a1);
  mChannelLayoutTag = v14->mChannelLayoutTag;

  return allocAudioChannelLayoutForAudioChannelLayoutTag(v17, mChannelLayoutTag, v12 + 14, v11);
}

void evaluateLayoutAgainstFormatList(uint64_t a1, unint64_t a2, _DWORD *a3, unint64_t a4, _DWORD *a5, int *a6, _BYTE *a7, _BYTE *a8, int *a9)
{
  LOBYTE(v12) = 0;
  ChannelLayoutTagFromLayout = -65536;
  v14 = a2 - 48;
  if (a2 < 0x30 || !a1 || !a3)
  {
    LOBYTE(v18) = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_30;
  }

  LOBYTE(v18) = 0;
  v19 = 0;
  v20 = 0;
  if (a4 < 0xC)
  {
    goto LABEL_30;
  }

  v36 = a5;
  v37 = a6;
  ChannelLayoutTagFromLayout = getChannelLayoutTagFromLayout(a3, a4);
  AudioChannelCountFromLayout = FigGetAudioChannelCountFromLayout(a3, a4);
  v20 = AudioChannelCountFromLayout;
  if (!AudioChannelCountFromLayout)
  {
    goto LABEL_28;
  }

  if (v14 > 0x2F)
  {
    v27 = a2 / 0x30 - 1;
    if (HIDWORD(v27))
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xB73, v9, v34, v35);
      goto LABEL_28;
    }

    v38 = 0;
    RichestDecodableFormatIndex = FigAudioFormatGetRichestDecodableFormatIndex(a1, a2, &v38);
    v29 = v38;
    if (RichestDecodableFormatIndex)
    {
      v29 = 0;
    }

    if (v20 == *(a1 + 48 * v29 + 28))
    {
      OUTLINED_FUNCTION_4_11();
    }

    else
    {
      v12 = 0;
      v23 = 0;
      LOBYTE(v24) = 0;
    }

    v30 = a1 + 48 * v27;
    if (v20 == *(v30 + 28))
    {
      v31 = *(v30 + 40);
      v25 = ChannelLayoutTagFromLayout == v31;
      v26 = v31 > 0xFFFEFFFF;
      v18 = 1;
      goto LABEL_20;
    }

    v18 = 0;
    v25 = 0;
  }

  else
  {
    if (AudioChannelCountFromLayout == *(a1 + 28))
    {
      OUTLINED_FUNCTION_4_11();
      v18 = 1;
      v25 = v23;
      v26 = v24;
      goto LABEL_20;
    }

    v12 = 0;
    v18 = 0;
    v23 = 0;
    v25 = 0;
    LOBYTE(v24) = 0;
  }

  v26 = 0;
LABEL_20:
  if (v18 | v12)
  {
    v32 = v12 & v24;
    v19 = 2;
    if ((v32 & 1) == 0 && (v18 & v26 & 1) == 0)
    {
      if (v25 || v23)
      {
        v19 = 1;
      }

      else
      {
        v19 = 3;
      }
    }

    goto LABEL_29;
  }

LABEL_28:
  LOBYTE(v12) = 0;
  LOBYTE(v18) = 0;
  v19 = 0;
LABEL_29:
  a5 = v36;
  a6 = v37;
LABEL_30:
  if (a7)
  {
    *a7 = v12;
  }

  if (a8)
  {
    *a8 = v18;
  }

  if (a5)
  {
    *a5 = v20;
  }

  if (a6)
  {
    *a6 = ChannelLayoutTagFromLayout;
  }

  if (a9)
  {
    *a9 = v19;
  }
}

uint64_t FigGetAudioChannelCountFromLayout(uint64_t a1, uint64_t a2)
{
  result = 0;
  v5 = 0;
  if (a1 && (a2 - 0x100000000) >= 0xFFFFFFFF0000000CLL)
  {
    v4 = 4;
    if (AudioToolbox_AudioFormatGetProperty(1852008557, a2, a1, &v4, &v5))
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

size_t CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout(const opaqueCMFormatDescription *a1, const AudioFormatListItem **a2, void *a3, void *a4)
{
  if (!a1)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v31 = 4294954586;
    v32 = 2468;
    goto LABEL_19;
  }

  CMFormatDescriptionGetMediaType(a1);
  OUTLINED_FUNCTION_3_16();
  if (!v8)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v31 = 4294954586;
    v32 = 2470;
    goto LABEL_19;
  }

  if (!a2 && (!a3 || !a4))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v31 = 4294954586;
    v32 = 2472;
LABEL_19:
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v31, "<<<< AudioFormatDescription >>>>", v32, v28, v29, v30);
    if (result)
    {
      return result;
    }

    v19 = 0;
    v18 = 0;
    v17 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(a1);
  if (!RichestDecodableFormat)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v31 = 4294954578;
    v32 = 2479;
    goto LABEL_19;
  }

  v17 = RichestDecodableFormat;
  if (a4)
  {
    DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, v10, v11, v12, v13, v14, v15, v16);
    v23 = (DerivedStorage + 64);
    v22 = *(DerivedStorage + 64);
    if (!v22 || (v25 = (DerivedStorage + 56), (v24 = *(DerivedStorage + 56)) == 0) || (mChannelsPerFrame = v17->mASBD.mChannelsPerFrame, mChannelsPerFrame != FigGetAudioChannelCountFromLayout(v22, v24)))
    {
      result = figAudioFormatDescriptionEnsureRichestDecodableLayout(a1);
      if (result)
      {
        return result;
      }

      v23 = (DerivedStorage + 104);
      v25 = (DerivedStorage + 96);
    }

    v18 = *v23;
    v19 = *v25;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  if (!v18)
  {
    v19 = 0;
  }

  if (a4)
  {
LABEL_13:
    *a4 = v18;
  }

LABEL_14:
  if (a3)
  {
    *a3 = v19;
  }

  result = 0;
  if (a2)
  {
    *a2 = v17;
  }

  return result;
}

size_t CMAudioFormatDescriptionGetMostCompatibleFormatAndChannelLayout(const opaqueCMFormatDescription *a1, const AudioFormatListItem **a2, void *a3, void *a4)
{
  if (a1)
  {
    CMFormatDescriptionGetMediaType(a1);
    OUTLINED_FUNCTION_3_16();
    if (!v8)
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_0();
      v31 = 4294954586;
      v32 = 2554;
      goto LABEL_13;
    }

    if (a2 || a3 && a4)
    {
      MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(a1);
      if (MostCompatibleFormat)
      {
        v17 = MostCompatibleFormat;
        if (!a4)
        {
          v20 = 0;
          v22 = 0;
LABEL_17:
          if (!v20)
          {
            v22 = 0;
          }

          if (!a4)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, v10, v11, v12, v13, v14, v15, v16);
        v19 = DerivedStorage;
        v20 = *(DerivedStorage + 120);
        if (!v20)
        {
          v24 = *(DerivedStorage + 64);
          if (v24)
          {
            v21 = v19 + 7;
            v25 = v19[7];
            if (v25)
            {
              mChannelsPerFrame = v17->mASBD.mChannelsPerFrame;
              if (mChannelsPerFrame == FigGetAudioChannelCountFromLayout(v24, v25))
              {
                v20 = v19[8];
                goto LABEL_11;
              }
            }
          }

          result = figAudioFormatDescriptionEnsureMostCompatibleLayout(a1);
          if (result)
          {
            return result;
          }

          v20 = v19[15];
        }

        v21 = v19 + 14;
LABEL_11:
        v22 = *v21;
        goto LABEL_17;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_0();
      v31 = 4294954578;
      v32 = 2562;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_1_0();
      v31 = 4294954586;
      v32 = 2556;
    }
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v31 = 4294954586;
    v32 = 2552;
  }

LABEL_13:
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, v31, "<<<< AudioFormatDescription >>>>", v32, v28, v29, v30);
  if (result)
  {
    return result;
  }

  v22 = 0;
  v20 = 0;
  v17 = 0;
  if (!a4)
  {
    goto LABEL_21;
  }

LABEL_20:
  *a4 = v20;
LABEL_21:
  if (a3)
  {
    *a3 = v22;
  }

  result = 0;
  if (a2)
  {
    *a2 = v17;
  }

  return result;
}

const AudioFormatListItem *FigAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout(const opaqueCMFormatDescription *a1, void *a2, void *a3)
{
  v6 = 0;
  if (!CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout(a1, &v6, a2, a3))
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

uint64_t FigAudioFormatDescriptionGetCreationChannelLayoutSignificance(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (result)
  {
    result = FigDerivedFormatDescriptionGetDerivedStorage(result, a2, a3, a4, a5, a6, a7, a8);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

const opaqueCMFormatDescription *FigAudioFormatDescriptionEmploysDependentPackets(const opaqueCMFormatDescription *result)
{
  if (result)
  {
    v1 = result;
    CMFormatDescriptionGetMediaType(result);
    OUTLINED_FUNCTION_3_16();
    result = 0;
    if (v3)
    {
      MediaSubType = CMFormatDescriptionGetMediaSubType(v1);
      v3 = MediaSubType == 1633889588 || MediaSubType == 1634754915;
      v4 = v3 || MediaSubType == 1667330147;
      v5 = v4 || MediaSubType == 1668641633;
      v6 = v5 || MediaSubType == 1886745441;
      v7 = v6 || MediaSubType == 1902211171;
      v8 = v7 || MediaSubType == 1903522657;
      v9 = v8 || MediaSubType == 1970495843;
      if (v9 || MediaSubType == 2054517601)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t FigAudioFormatDescriptionRequiresImmersiveRendering(uint64_t result)
{
  if (result)
  {
    v1 = result;
    CMFormatDescriptionGetMediaType(result);
    OUTLINED_FUNCTION_3_16();
    if (!v12)
    {
      return 0;
    }

    result = FigDerivedFormatDescriptionGetDerivedStorage(v1, v2, v3, v4, v5, v6, v7, v8);
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = *(result + 88);
    if (v10)
    {
      memset(&v19[4], 0, 28);
      *v19 = *(v10 + 40);
      if (AudioToolbox_IsAmbisonicChannelLayout(v19))
      {
        return 1;
      }
    }

    MediaSubType = CMFormatDescriptionGetMediaSubType(v1);
    v12 = MediaSubType == 1634754915 || MediaSubType == 1902211171;
    if (v12 || MediaSubType == 1667330147)
    {
      v22 = 0;
      v18 = 0;
      v14 = *(v9 + 32);
      v15 = *(v9 + 16);
      *v19 = *v9;
      *&v19[16] = v15;
      v16 = *(v9 + 48);
      v20 = v14;
      v21 = v16;
      LODWORD(v22) = *(v9 + 40);
      if (AudioToolbox_AudioFormatGetPropertyInfo(1768780388, 56, v19, &v18))
      {
        v17 = 1;
      }

      else
      {
        v17 = v18 == 0;
      }

      return !v17;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

__CFString *CMAudioFormatDescriptionCopyRichestDecodableFormatCompactDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if (CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout(a1, &v10, &v9, &v8))
  {
    v4 = CFRetain(@"(null)");
    v5 = CFRetain(@"(null)");
  }

  else
  {
    v12 = 0;
    v11 = 8;
    AudioToolbox_AudioFormatGetProperty(1718509933, 40, v10, &v11, &v12);
    v4 = v12;
    if (!v12)
    {
      v4 = CFRetain(@"(null)");
    }

    v5 = aclCopyDebugDesc(v8, v9);
  }

  v6 = v5;
  CFStringAppendFormat(Mutable, 0, @"%@, %@", v4, v5);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return Mutable;
}

size_t FigCreateAudioCodecStringFromFormatDescription(const opaqueCMFormatDescription *a1, int a2, __CFString **a3)
{
  v35 = 0;
  v34 = 8;
  blockBufferOut = 0;
  sizeOut = 0;
  if (!a3)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();
    Property = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xCD1, v24, v25, v26);
    goto LABEL_34;
  }

  v6 = a2 == 1751937824;
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(a1);
  if (!StreamBasicDescription)
  {
    Property = 0;
    goto LABEL_34;
  }

  v8 = StreamBasicDescription;
  if (a2 == 1751937824)
  {
    v9 = 1836069990;
  }

  else
  {
    v9 = a2;
  }

  v30 = 0;
  v31 = 0;
  v10 = *&StreamBasicDescription->mSampleRate;
  v11 = *&StreamBasicDescription->mBytesPerPacket;
  v28 = *&StreamBasicDescription->mBitsPerChannel;
  v27[0] = v10;
  v27[1] = v11;
  MagicCookie = CMAudioFormatDescriptionGetMagicCookie(a1, &sizeOut);
  LODWORD(v30) = sizeOut;
  LODWORD(v31) = v9;
  Property = AudioToolbox_AudioFormatGetProperty(1668309350, 64, v27, &v34, &v35);
  v13 = v35;
  if (v9 != 1836069990 || v35)
  {
    goto LABEL_33;
  }

  if (a2 == 1751937824)
  {
    if (CMFormatDescriptionGetExtension(a1, @"VerbatimISOSampleEntry"))
    {
      v13 = v35;
      if (v35)
      {
LABEL_33:
        *a3 = v13;
        v35 = 0;
        goto LABEL_34;
      }

      goto LABEL_24;
    }

    mFormatID = v8->mFormatID;
    switch(mFormatID)
    {
      case 0x2E6D7031u:
        v13 = @"mp4a.40.32";
        break;
      case 0x2E6D7032u:
        v13 = @"mp4a.40.33";
        break;
      case 0x2E6D7033u:
        v13 = @"mp4a.40.34";
        break;
      default:
        v13 = v35;
LABEL_20:
        if (v13)
        {
          Property = 0;
        }

        else
        {
          Property = Property;
        }

        if (v13)
        {
          goto LABEL_33;
        }

        goto LABEL_24;
    }

    v35 = v13;
    goto LABEL_20;
  }

LABEL_24:
  Extension = CMFormatDescriptionGetExtension(a1, @"DeprecatedVerbatimISOSampleEntry");
  if (Extension)
  {
    v16 = Extension;
    v17 = CFGetTypeID(Extension);
    if (v17 == CFDataGetTypeID())
    {
      Length = CFDataGetLength(v16);
      v19 = CFGetAllocator(a1);
      v20 = FigCreateBlockBufferWithCFDataNoCopy(v19, v16, 0, Length, &blockBufferOut);
LABEL_29:
      Property = v20;
      goto LABEL_30;
    }
  }

  v21 = *MEMORY[0x1E695E480];
  Property = CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(*MEMORY[0x1E695E480], a1, @"ISOFamily", &blockBufferOut);
  if (Property == -12717)
  {
    v20 = CMAudioFormatDescriptionCopyAsBigEndianSoundDescriptionBlockBuffer(v21, a1, @"3GPFamily", &blockBufferOut);
    goto LABEL_29;
  }

LABEL_30:
  if (!Property)
  {
    Property = FigMP4BridgeCreateRFC6381CodecString(blockBufferOut, 0x736F756Eu, v8->mFormatID, v6, &v35);
    if (!Property)
    {
      v13 = v35;
      goto LABEL_33;
    }
  }

LABEL_34:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return Property;
}

size_t FigAudioFormatDescriptionCopyCompatibleCompositionPresets(const opaqueCMFormatDescription *a1, const __CFAllocator *a2, CFMutableArrayRef *a3)
{
  cf = 0;
  v5 = FigAudioFormatDescriptionCopySceneInformation(a1, a2, &cf);
  if (v5)
  {
LABEL_23:
    v25 = v5;
  }

  else
  {
    v35 = a3;
    if (cf)
    {
      ArrayValue = FigCFDictionaryGetArrayValue(cf);
      ValueAtIndex = FigCFArrayGetValueAtIndex(ArrayValue, 0);
      v8 = FigCFDictionaryGetArrayValue(ValueAtIndex);
      if (v8)
      {
        v9 = v8;
        Count = CFArrayGetCount(v8);
        if (Count >= 1)
        {
          v11 = Count;
          Mutable = 0;
          v13 = 0;
          while (1)
          {
            v14 = FigCFArrayGetValueAtIndex(v9, v13);
            DictionaryValue = FigCFDictionaryGetDictionaryValue(v14);
            v16 = FigCFDictionaryGetArrayValue(DictionaryValue);
            if (FigCFArrayContainsValue(v16, @"CompatibleSelection"))
            {
              if (!Mutable)
              {
                Mutable = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
                if (!Mutable)
                {
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_6_13();
                  v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 0xFFFFCE0EuLL, "<<<< AudioFormatDescription >>>>", 0xD6A, v32, v33, v34);
                  goto LABEL_23;
                }
              }

              v17 = CFDictionaryCreateMutable(a2, 2, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
              if (!v17)
              {
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_6_13();
                v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 0xFFFFCE0EuLL, "<<<< AudioFormatDescription >>>>", 0xD6E, v28, v29, v30);
LABEL_21:
                CFRelease(Mutable);
                goto LABEL_16;
              }

              v18 = v17;
              FigCFDictionarySetValue(v17, @"CompatibleCompositionPresetKey_Description", DictionaryValue);
              v24 = FigCFDictionarySetCFIndex(v18, @"CompatibleCompositionPresetKey_Index", v13, v19, v20, v21, v22, v23);
              if (v24)
              {
                v25 = v24;
                CFRelease(v18);
                goto LABEL_21;
              }

              CFArrayAppendValue(Mutable, v18);
              CFRelease(v18);
            }

            if (v11 == ++v13)
            {
              goto LABEL_15;
            }
          }
        }
      }
    }

    Mutable = 0;
LABEL_15:
    v25 = 0;
    *v35 = Mutable;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v25;
}

void fafd_checkNgstExtensionDataApplier(CFTypeRef cf, uint64_t a2)
{
  v13 = 0;
  v12 = 0;
  if (!*(a2 + 4) && !*a2)
  {
    if (cf)
    {
      v4 = CFGetTypeID(cf);
      if (v4 == CFDataGetTypeID())
      {
        if (fafd_IngestSignalingInfoFromExtensionData(cf, &v12))
        {
          return;
        }

        OUTLINED_FUNCTION_5_13();
        if (v6)
        {
          v7 = 0;
          if (v12.i32[1] == 0x10000 || (v12.i32[1] & 0xFFFF0000) != 0x10000)
          {
            goto LABEL_14;
          }
        }

        else if (v5 != 1885958241 || v12.u16[3] << 16 != 0x10000)
        {
          v7 = 0;
LABEL_14:
          *a2 = v7;
          return;
        }

        v7 = v13;
        if (v13 > 1)
        {
          v7 = 0;
        }

        goto LABEL_14;
      }
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_20();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v8, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xE5D, v9, v10, v11);
  }
}

uint64_t FigAudioChannelLayoutIsSupportedForCinematicAudio(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *result;
    if ((*result & 0xFFFE0000 | 0x10000) == 0xBF0000 || v3 == -266338299)
    {
      return 1;
    }

    else
    {
      result = 0;
      if (!v3 && a2 != 12)
      {
        v4 = *(v2 + 8);
        if (v4)
        {
          v5 = 0;
          v6 = 0;
          v7 = (v2 + 12);
          v8 = 1;
          v9 = 20;
          do
          {
            v10 = *v7;
            v7 += 5;
            v11 = v10 & 0xFFFF0000;
            if (v10 == 3)
            {
              v12 = 1;
            }

            else
            {
              v12 = v5;
            }

            if (v11 == 0x20000)
            {
              ++v6;
            }

            else
            {
              v5 = v12;
            }

            v13 = v8++ >= v4;
            v13 = v13 || v9 >= a2 - 12;
            v9 += 20;
          }

          while (!v13);
          return v5 && v6 == 4;
        }
      }
    }
  }

  return result;
}

size_t CMAudioFormatDescriptionCreate_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE59uLL, "<<<< AudioFormatDescription >>>>", 0x4C4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMAudioFormatDescriptionCreate_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0x4B6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMAudioFormatDescriptionCreate_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE59uLL, "<<<< AudioFormatDescription >>>>", 0x538, v1, v2, v3);
}

size_t FigAudioFormatGetRichestDecodableFormatIndex_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0x5BB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatGetRichestDecodableFormatIndex_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0x5B9, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatGetRichestDecodableFormatIndex_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0x5B7, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatGetRichestDecodableFormatIndex_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0x5B5, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMAudioFormatDescriptionEqual_cold_1(const CMBlockBufferCustomBlockSource *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", a1, v3, v4, v5);
}

size_t FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xA91, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE52uLL, "<<<< AudioFormatDescription >>>>", 0xB36, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE52uLL, "<<<< AudioFormatDescription >>>>", 0xB35, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE52uLL, "<<<< AudioFormatDescription >>>>", 0xB0E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xA93, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xA8F, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences_cold_7(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xA8D, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMAudioFormatDescriptionCreateCopyWithNewChannelLayout_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xBC0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMAudioFormatDescriptionCreateCopyWithNewChannelLayout_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xBF0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMAudioFormatDescriptionCreateCopyWithNewChannelLayout_cold_3(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xBC6, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMAudioFormatDescriptionCreateCopyWithNewChannelLayout_cold_4(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xBC4, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMAudioFormatDescriptionCreateCopyWithNewChannelLayout_cold_5(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xBC2, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMAudioFormatDescriptionCreateCopyWithNewChannelLayout_cold_6(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xBBE, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatDescriptionCopySceneInformation_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xD32, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatDescriptionCopySceneInformation_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xD31, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t CMAudioFormatDescriptionGetPlaintextMediaSubTypeAndEncryptionScheme_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xDAB, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatDescriptionGetCinematicAudioEffectEligibility_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xE70, v1, v2, v3);
}

void FigAudioFormatDescriptionGetCinematicAudioEffectEligibility_cold_2(const void *a1, _BYTE *a2)
{
  v7 = 0;
  v6 = 0;
  if (fafd_IngestSignalingInfoFromExtensionData(a1, &v6))
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_5_13();
  if (v4)
  {
    v5 = 0;
    if (v6.i32[1] == 0x10000 || (v6.i32[1] & 0xFFFF0000) != 0x10000)
    {
      goto LABEL_10;
    }
  }

  else if (v3 != 1885958241 || v6.u16[3] << 16 != 0x10000)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = v7;
  if (v7 > 1)
  {
    v5 = 0;
  }

LABEL_10:
  *a2 = v5;
}

size_t FigAudioFormatDescriptionGetCinematicAudioEffectEligibility_cold_3()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xE6E, v1, v2, v3);
}

size_t fafd_IngestSignalingInfoFromExtensionData_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xE19, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t fafd_IngestSignalingInfoFromExtensionData_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xE16, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatDescriptionGetEligibleCinematicAudioEffectVersion_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xEA0, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioFormatDescriptionGetEligibleCinematicAudioEffectVersion_cold_2(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0xE9E, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t getChannelLayoutTagFromLayout_cold_1()
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v0, 0xFFFFCE5AuLL, "<<<< AudioFormatDescription >>>>", 0x491, v1, v2, v3);
}

size_t allocAudioChannelLayoutForAudioChannelLayoutTag_cold_1(_DWORD *a1)
{
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFCE59uLL, "<<<< AudioFormatDescription >>>>", 0x907, v3, v4, v5);
  *a1 = result;
  return result;
}

size_t FigAudioDeviceClock_RemoteCreateCommon(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v27 = 0;
  if (qword_1ED4CC938 != -1)
  {
    dispatch_once(&qword_1ED4CC938, &__block_literal_global_22);
  }

  v8 = _MergedGlobals_29;
  if (_MergedGlobals_29)
  {
    return v8;
  }

  if (a4)
  {
    BasicRemoteAudioDeviceClock = CreateBasicRemoteAudioDeviceClock(&v27);
    v15 = v27;
    if (BasicRemoteAudioDeviceClock)
    {
      v8 = BasicRemoteAudioDeviceClock;
    }

    else
    {
      v8 = AcquireServerClockObject(v27, a2, a3, v10, v11, v12, v13, v14);
      if (!v8)
      {
        FigDerivedClockGetDerivedStorage(v15, v16, v17, v18, v19, v20, v21, v22);
        *a4 = v15;
        return v8;
      }
    }

    if (v15)
    {
      CFRelease(v15);
    }

    return v8;
  }

  emitter = fig_log_get_emitter("com.apple.coremedia", "");

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE37uLL, "<<<< FADCR(XPC) >>>>", 0x1E2, v4, v25, v26);
}

size_t AcquireServerClockObject(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v8 = a3;
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = 0;
  xdict = 0;
  v12 = FigXPCCreateBasicMessage(0x63726538u, 0, &xdict);
  if (v12 || (xpc_dictionary_set_int64(xdict, "DeviceID", v8), v12 = FigXPCMessageSetCFString(xdict, "DeviceUID", a2), v12) || (v12 = FigXPCRemoteClientSendSyncMessageCreatingReply(qword_1ED4CC930, xdict, &v16), v12))
  {
    v14 = v12;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(v16, ".objectID");
    v14 = FigXPCRemoteClientAssociateObject(qword_1ED4CC930, a1, uint64);
    if (!v14)
    {
      *DerivedStorage = uint64;
    }
  }

  FigXPCRelease(xdict);
  FigXPCRelease(v16);
  FigXPCRemoteClientKillServerOnTimeout(qword_1ED4CC930, v14, "AcquireServerClockObject", 0);
  return v14;
}

uint64_t FigAudioDeviceClockXPCRemotePing()
{
  v4 = 0;
  if (qword_1ED4CC938 != -1)
  {
    dispatch_once(&qword_1ED4CC938, &__block_literal_global_22);
  }

  v0 = _MergedGlobals_29;
  if (_MergedGlobals_29)
  {
    v2 = 0;
  }

  else
  {
    v1 = FigXPCCreateBasicMessage(0x2E706E67u, 0, &v4);
    v2 = v4;
    if (v1)
    {
      v0 = v1;
    }

    else
    {
      v0 = FigXPCRemoteClientSendSyncMessage(qword_1ED4CC930, v4);
      v2 = v4;
    }
  }

  FigXPCRelease(v2);
  return v0;
}

size_t FigAudioDeviceClockXPCRemoteRetainCopiedClock(const void *a1, CFTypeRef *a2)
{
  cf = 0;
  if (a1)
  {
    if (a2)
    {
      if (qword_1ED4CC938 != -1)
      {
        dispatch_once(&qword_1ED4CC938, &__block_literal_global_22);
      }

      v4 = _MergedGlobals_29;
      if (_MergedGlobals_29)
      {
        return v4;
      }

      v4 = FigXPCRemoteClientRetainCopiedObject(qword_1ED4CC930, a1, &cf);
      v11 = cf;
      if (!v4)
      {
        if (cf)
        {
          FigAudioDeviceClockXPCRemoteGetObjectID(cf, &v19, v5, v6, v7, v8, v9, v10);
LABEL_9:
          v4 = 0;
          *a2 = cf;
          return v4;
        }

        v13 = FigAudioDeviceClockXPCRemoteCreateWithObjectID(a1, &cf);
        if (!v13)
        {
          goto LABEL_9;
        }

        v4 = v13;
        v11 = cf;
      }

      if (v11)
      {
        CFRelease(v11);
      }

      return v4;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v18 = 526;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v18 = 525;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE36uLL, "<<<< FADCR(XPC) >>>>", v18, v15, v16, v17);
}

size_t FigAudioDeviceClockXPCRemoteCreateWithObjectID(const void *a1, void *a2)
{
  v20 = 0;
  if (a1)
  {
    if (a2)
    {
      if (qword_1ED4CC938 != -1)
      {
        dispatch_once(&qword_1ED4CC938, &__block_literal_global_22);
      }

      v4 = _MergedGlobals_29;
      if (_MergedGlobals_29)
      {
        return v4;
      }

      BasicRemoteAudioDeviceClock = CreateBasicRemoteAudioDeviceClock(&v20);
      v6 = v20;
      if (BasicRemoteAudioDeviceClock)
      {
        v4 = BasicRemoteAudioDeviceClock;
      }

      else
      {
        v4 = FigXPCRemoteClientAssociateObject(qword_1ED4CC930, v20, a1);
        if (!v4)
        {
          *FigDerivedClockGetDerivedStorage(v6, v7, v8, v9, v10, v11, v12, v13) = a1;
          *a2 = v6;
          return v4;
        }
      }

      if (v6)
      {
        CFRelease(v6);
      }

      return v4;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v19 = 558;
  }

  else
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_27_2();
    v19 = 557;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0xFFFFCE36uLL, "<<<< FADCR(XPC) >>>>", v19, v16, v17, v18);
}

size_t FigAudioDeviceClockRemoteCreateForServerObject(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v5 = 0;
  v6 = 0;
  result = (*(a2 + 16))(a2, 0, 0, &v7, &v6, &v5);
  if (!result)
  {
    return FigAudioDeviceClockXPCRemoteCreateWithObjectID(v6, a3);
  }

  return result;
}

void remoteDeviceClock_Finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v13 = 0;
  v9 = *(DerivedStorage + 16);
  if (v9)
  {
    dispatch_release(v9);
    *(DerivedStorage + 16) = 0;
  }

  v10 = *DerivedStorage;
  if (*DerivedStorage)
  {
    FigXPCRemoteClientDisassociateObject(qword_1ED4CC930, v10);
    if (*(DerivedStorage + 8))
    {
      v10 = 0;
    }

    else
    {
      v11 = FigXPCCreateBasicMessage(0x646F6F6Du, *DerivedStorage, &v13);
      v10 = v13;
      if (!v11)
      {
        v12 = FigXPCRemoteClientSendSyncMessage(qword_1ED4CC930, v13);
        FigXPCRemoteClientKillServerOnTimeout(qword_1ED4CC930, v12, "remoteDeviceClock_Finalize", 0);
        v10 = v13;
      }
    }
  }

  FigXPCRelease(v10);
}

BOOL remoteDeviceClock_MightDrift(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v29 = 0;
  v28 = 0;
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v22 = FigDerivedClockGetDerivedStorage(a2, v11, v12, v13, v14, v15, v16, v17);
  result = 1;
  if (DerivedStorage && v22)
  {
    return remoteDeviceClock_GetAudioDevice(a1, 0, &v29 + 1, &v28 + 1, v18, v19, v20, v21) || remoteDeviceClock_GetAudioDevice(a2, 0, &v29, &v28, v24, v25, v26, v27) || HIDWORD(v29) != v29 || HIBYTE(v28) != v28;
  }

  return result;
}

double remoteDeviceClock_GetRate(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  xdict = 0;
  v23 = 0;
  v10 = 0.0;
  if (DerivedStorage)
  {
    v11 = DerivedStorage;
    if (!FigXPCCreateBasicMessage(0x67726174u, *DerivedStorage, &v23))
    {
      v12 = FigXPCRemoteClientSendSyncMessageCreatingReply(qword_1ED4CC930, v23, &xdict);
      v13 = v12;
      FigXPCRemoteClientKillServerOnTimeout(qword_1ED4CC930, v12, "remoteDeviceClock_GetRate", 0);
      if (v13 == -16152)
      {
        goto LABEL_8;
      }

      if (!v13)
      {
        v10 = xpc_dictionary_get_double(xdict, "Rate");
        goto LABEL_9;
      }

      if (v13 == -16155 || *(v11 + 8))
      {
LABEL_8:
        MaybeReacquireServerClockObject(a1, v14, v15, v16, v17, v18, v19, v20);
        v10 = 1.0;
      }
    }
  }

LABEL_9:
  FigXPCRelease(v23);
  FigXPCRelease(xdict);
  return v10;
}

uint64_t remoteDeviceClock_GetAnchorTime(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  xdict = 0;
  v25 = 0;
  if (!DerivedStorage)
  {
    goto LABEL_14;
  }

  v12 = DerivedStorage;
  CMTime = FigXPCCreateBasicMessage(0x67616E6Bu, *DerivedStorage, &v25);
  if (CMTime)
  {
LABEL_16:
    int64 = CMTime;
    goto LABEL_15;
  }

  int64 = FigXPCRemoteClientSendSyncMessageCreatingReply(qword_1ED4CC930, v25, &xdict);
  FigXPCRemoteClientKillServerOnTimeout(qword_1ED4CC930, int64, "remoteDeviceClock_GetAnchorTime", 0);
  if (int64 == -16152)
  {
LABEL_13:
    MaybeReacquireServerClockObject(a1, v15, v16, v17, v18, v19, v20, v21);
LABEL_14:
    int64 = 4294954550;
    goto LABEL_15;
  }

  if (int64)
  {
    if (int64 != -16155 && !*(v12 + 8))
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  int64 = xpc_dictionary_get_int64(xdict, "LoadStatus");
  if (a2)
  {
    CMTime = FigXPCMessageGetCMTime(xdict, "ClockTime", a2);
    if (CMTime)
    {
      goto LABEL_16;
    }
  }

  if (a3)
  {
    v22 = FigXPCMessageGetCMTime(xdict, "RefClockTime", a3);
    if (v22)
    {
      int64 = v22;
    }

    else
    {
      int64 = int64;
    }
  }

LABEL_15:
  FigXPCRelease(v25);
  FigXPCRelease(xdict);
  return int64;
}

size_t FigAudioDeviceClockXPCRemoteGetObjectID_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14uLL, "<<<< FADCR(XPC) >>>>", 0x24D, v1, v4, v5);
  *a1 = result;
  return result;
}

size_t __ReacquireServerClockObject_block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  result = AcquireServerClockObject(*(a1 + 40), 0, 0, a4, a5, a6, a7, a8);
  v10 = *a2;
  if (**a2 && !result)
  {
    *(v10 + 8) = 0;
  }

  *(v10 + 3) = 0;
  return result;
}

size_t figCustomURLMessageMakeNSSecureCodingTypesSerializable(const __CFDictionary *a1, const void ***a2, const void ***a3)
{
  v6 = objc_autoreleasePoolPush();
  if (!a1)
  {
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_0_2();
    v22 = 211;
    goto LABEL_11;
  }

  v7 = **a2;
  v8 = **a3;
  Value = CFDictionaryGetValue(a1, v7);
  if (Value)
  {
    v10 = Value;
    if (CFDictionaryContainsKey(a1, v8))
    {
LABEL_7:
      CFDictionaryRemoveValue(a1, v7);
      goto LABEL_8;
    }

    if ([objc_opt_class() conformsToProtocol:&unk_1F0B92538])
    {
      v11 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
      [v11 encodeObject:v10 forKey:*MEMORY[0x1E696A508]];
      v12 = [v11 encodedData];

      if (v12)
      {
        CFDictionarySetValue(a1, v8, v12);
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_0_2();
    v22 = 174;
LABEL_11:
    v13 = FigSignalErrorAtGM(v15, v16, v17, v18, v22, v19, v20, v21);
    goto LABEL_9;
  }

LABEL_8:
  v13 = 0;
LABEL_9:
  objc_autoreleasePoolPop(v6);
  return v13;
}

size_t figCustomURLMessageDeserializeNSSecureCodingTypes(const __CFDictionary *a1, const void ***a2, const void ***a3, NSString **a4)
{
  v8 = objc_autoreleasePoolPush();
  if (!a1)
  {
    OUTLINED_FUNCTION_0_2();
    v25 = 235;
    goto LABEL_10;
  }

  v9 = **a2;
  v10 = **a3;
  v11 = NSClassFromString(*a4);
  Value = CFDictionaryGetValue(a1, v9);
  if (!Value)
  {
    goto LABEL_7;
  }

  v13 = Value;
  if (CFDictionaryContainsKey(a1, v10))
  {
    goto LABEL_7;
  }

  if (!-[objc_class conformsToProtocol:](v11, "conformsToProtocol:", &unk_1F0B92538) || (v14 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v13 error:0], v15 = objc_msgSend(v14, "decodeObjectOfClass:forKey:", v11, *MEMORY[0x1E696A508]), v14, !v15))
  {
    OUTLINED_FUNCTION_0_2();
    v25 = 194;
LABEL_10:
    v16 = FigSignalErrorAtGM(v18, v19, v20, v21, v25, v22, v23, v24);
    goto LABEL_8;
  }

  CFDictionarySetValue(a1, v10, v15);
LABEL_7:
  v16 = 0;
LABEL_8:
  objc_autoreleasePoolPop(v8);
  return v16;
}

size_t FigCustomURLResponseInfoMakeNSSecureCodingTypesSerializable(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  cf = 0;
  theDict = 0;
  v3 = CFGetAllocator(a1);
  if (a1)
  {
    v4 = v3;
    NSSecureCodingTypesSerializable = FigCustomURLResponseInfoCopyRequestInfo(a1, &theDict);
    if (!NSSecureCodingTypesSerializable)
    {
      if (!CFDictionaryContainsKey(theDict, *_MergedGlobals_0[0]) || (NSSecureCodingTypesSerializable = FigCustomURLRequestInfoCreateMutableCopy(v4, theDict, &cf, v6, v7, v8, v9, v10), !NSSecureCodingTypesSerializable) && (NSSecureCodingTypesSerializable = figCustomURLMessageMakeNSSecureCodingTypesSerializable(cf, _MergedGlobals_0, off_1ED4CC108), !NSSecureCodingTypesSerializable) && (NSSecureCodingTypesSerializable = FigCustomURLResponseInfoSetRequestInfo(a1, cf), !NSSecureCodingTypesSerializable))
      {
        NSSecureCodingTypesSerializable = figCustomURLMessageMakeNSSecureCodingTypesSerializable(a1, off_1ED4CC110, &off_1ED4CC118);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_0_2();
    NSSecureCodingTypesSerializable = FigSignalErrorAtGM(v13, v14, v15, v16, 0x114, v17, v18, v19);
  }

  v11 = NSSecureCodingTypesSerializable;
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v2);
  return v11;
}

size_t FigCustomURLResponseInfoDeserializeNSSecureCodingTypes(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  cf = 0;
  theDict = 0;
  v3 = CFGetAllocator(a1);
  if (a1)
  {
    v4 = v3;
    v5 = FigCustomURLResponseInfoCopyRequestInfo(a1, &theDict);
    if (!v5)
    {
      if (!CFDictionaryContainsKey(theDict, *off_1ED4CC108[0]) || (v5 = FigCustomURLRequestInfoCreateMutableCopy(v4, theDict, &cf, v6, v7, v8, v9, v10), !v5) && (v5 = figCustomURLMessageDeserializeNSSecureCodingTypes(cf, off_1ED4CC108, _MergedGlobals_0, sRequestInfoClassesForDeserializion), !v5) && (v5 = FigCustomURLResponseInfoSetRequestInfo(a1, cf), !v5))
      {
        v5 = figCustomURLMessageDeserializeNSSecureCodingTypes(a1, &off_1ED4CC118, off_1ED4CC110, sResponseInfoClassesForDeserializion);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_0_2();
    v5 = FigSignalErrorAtGM(v13, v14, v15, v16, 0x138, v17, v18, v19);
  }

  v11 = v5;
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v2);
  return v11;
}

size_t FigCustomURLRequestInfoSetNSURLAuthenticationChallenge_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x15B, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCustomURLRequestInfoCopyNSURLAuthenticationChallenge_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x16E, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCustomURLRequestInfoCopyNSURLAuthenticationChallenge_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x16D, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCustomURLResponseInfoSetNSURLCredential_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x180, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCustomURLResponseInfoCopyNSURLCredential_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x193, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCustomURLResponseInfoCopyNSURLCredential_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x192, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCustomURLResponseInfoSetNSURLSessionAuthChallengeDisposition_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1A4, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCustomURLResponseInfoGetNSURLSessionAuthChallengeDisposition_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1B5, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigCustomURLResponseInfoGetNSURLSessionAuthChallengeDisposition_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM(v2, v3, v4, v5, 0x1B4, v6, v7, v8);
  *a1 = result;
  return result;
}

size_t FigHALAudioConfigChangeCreateRecord_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBE06uLL, "<<< FigHALAudioPluginSupport >>>", 0x4F, v1, v4, v5);
  *a1 = result;
  return result;
}

uint64_t ids_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, @"ConnectionMode"))
  {
    if (CFEqual(a2, @"Version"))
    {
      v10 = *MEMORY[0x1E695E480];
      p_valuePtr = (v7 + 32);
    }

    else
    {
      if (!CFEqual(a2, @"ReplyTimeout"))
      {
        return 4294954512;
      }

      valuePtr = 6;
      v10 = *MEMORY[0x1E695E480];
      p_valuePtr = &valuePtr;
    }

    v9 = CFNumberCreate(v10, kCFNumberSInt32Type, p_valuePtr);
    goto LABEL_11;
  }

  v8 = *(v7 + 3);
  if (v8)
  {
    v9 = CFRetain(v8);
LABEL_11:
    v12 = v9;
    goto LABEL_12;
  }

  v12 = 0;
LABEL_12:
  result = 0;
  *a4 = v12;
  return result;
}

uint64_t ids_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"ConnectionMode"))
  {
    v7 = *(v6 + 3);
    *(v6 + 3) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v7)
    {
      CFRelease(v7);
      return 0;
    }
  }

  else if (CFEqual(a2, @"Version"))
  {
    if (a3)
    {
      v8 = CFGetTypeID(a3);
      v7 = 4294954516;
      if (v8 == CFNumberGetTypeID())
      {
        if (CFNumberGetValue(a3, kCFNumberSInt32Type, v6 + 32))
        {
          return 0;
        }

        else
        {
          return 4294954516;
        }
      }
    }

    else
    {
      return 4294954516;
    }
  }

  else
  {
    return 4294954512;
  }

  return v7;
}

uint64_t ids_SetEventHandler(uint64_t a1, NSObject *a2, unint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v6 = DerivedStorage;
  v7 = *(DerivedStorage + 48);
  if (a2 | a3)
  {
    if (v7)
    {
      dispatch_release(v7);
      *(v6 + 48) = 0;
    }

    if (a2)
    {
      *(v6 + 48) = a2;
      dispatch_retain(a2);
    }

    else
    {
      *(v6 + 48) = FigDispatchQueueCreateWithPriority("FigTransportConnectionEvent", 0, 28);
    }

    v8 = *(v6 + 40);
    if (v8)
    {
      _Block_release(v8);
      *(v6 + 40) = 0;
    }

    if (a3)
    {
      v9 = _Block_copy(a3);
      result = 0;
      *(v6 + 40) = v9;
      return result;
    }
  }

  else
  {
    if (!v7)
    {
      return 4294955240;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __ids_SetEventHandler_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v6;
    dispatch_sync(v7, block);
  }

  return 0;
}

size_t ids_EnqueuePackageWithPriority(const void *a1, unsigned int *a2, OpaqueCMBlockBuffer *a3, int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  v9 = *a2;
  DataLength = CMBlockBufferGetDataLength(a3);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  if (a2[1] == 1885957735)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v25 = 4294955246;
    v26 = 1164;
LABEL_22:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, v25, "<<< transportids >>>", v26, v22, v23, v24);
  }

  if (!DerivedStorage[89])
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v25 = 4294955244;
    v26 = 1165;
    goto LABEL_22;
  }

  if ((a4 - 3) <= 0xFFFFFFFD)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v25 = 4294955246;
    v26 = 1166;
    goto LABEL_22;
  }

  v11 = v9 - DataLength;
  if (v9 - DataLength <= 7)
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_1_0();
    v25 = 4294955246;
    v26 = 1167;
    goto LABEL_22;
  }

  v27 = a4;
  v12 = CMBlockBufferGetDataLength(a3);
  v13 = v12 + v11;
  v14 = malloc_type_malloc(v12 + v11, 0xD07A5759uLL);
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  memcpy(v14, a2, v11);
  if (v12)
  {
    v15 = 0;
    while (1)
    {
      lengthAtOffsetOut = -1;
      dataPointerOut = 0;
      if (CMBlockBufferGetDataPointer(a3, v15, &lengthAtOffsetOut, 0, &dataPointerOut))
      {
        break;
      }

      v16 = lengthAtOffsetOut;
      if (v13 < lengthAtOffsetOut + v15 + v11)
      {
        break;
      }

      memcpy(&v14[v15 + v11], dataPointerOut, lengthAtOffsetOut);
      v15 += v16;
      if (v15 >= v12)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v17 = OUTLINED_FUNCTION_7_11();
    if (v17)
    {
      v18 = v17;
      v17[1] = v14;
      v17[2] = v13;
      CFRetain(a1);
      OUTLINED_FUNCTION_0_40();
      v29 = 3221225472;
      v30 = __ids_EnqueuePackageWithPriority_block_invoke;
      v31 = &__block_descriptor_60_e5_v8__0l;
      v32 = v18;
      v33 = DerivedStorage;
      v35 = v27;
      v34 = a1;
      dispatch_async(v19, block);
      return 0;
    }
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return 4294955245;
}

uint64_t ids_FlushPendingPackagesWithPriority(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage(a1);
  if (*DerivedStorage)
  {
    return 4294955241;
  }

  v5 = DerivedStorage;
  while (!v5[88])
  {
    v6 = *(v5 + 19);
    v7 = dispatch_time(0, 15000000);
    if (dispatch_semaphore_wait(v6, v7))
    {
      break;
    }

    ids_sendData(a1, a2);
  }

  return 0;
}

size_t FigTransportConnectionIDSCreate_cold_3(_DWORD *a1)
{
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFD0EEuLL, "<<< transportids >>>", 0x4F5, v1, v4, v5);
  *a1 = result;
  return result;
}

OSStatus CMAudioFormatDescriptionCreateFromBigEndianSoundDescriptionData(CFAllocatorRef allocator, const uint8_t *soundDescriptionData, size_t size, CMSoundDescriptionFlavor flavor, CMAudioFormatDescriptionRef *formatDescriptionOut)
{
  cf = 0;
  BlockBufferCopyingMemoryBlock = FigCreateBlockBufferCopyingMemoryBlock(allocator, soundDescriptionData, size, &cf);
  if (!BlockBufferCopyingMemoryBlock)
  {
    BlockBufferCopyingMemoryBlock = FigAudioFormatDescriptionCreateFromBigEndianSoundDescriptionBlockBufferWithReporter(allocator, cf, flavor, formatDescriptionOut, 0);
  }

  v9 = BlockBufferCopyingMemoryBlock;
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

uint64_t FigAudioFormatDescriptionCreateFromBigEndianSoundDescriptionBlockBufferWithReporter(const __CFAllocator *a1, OpaqueCMBlockBuffer *a2, const void *a3, CMAudioFormatDescriptionRef *a4, uint64_t a5)
{
  v385 = a4;
  v467 = *MEMORY[0x1E69E9840];
  memset(v450, 0, sizeof(v450));
  bzero(&v408, 0x130uLL);
  v407 = 0;
  v406 = 0;
  v405 = 0u;
  memset(v404, 0, sizeof(v404));
  memset(&layout, 0, sizeof(layout));
  v402 = 0uLL;
  v397 = 0;
  formatDescriptionOut = 0;
  HIDWORD(v396) = 0;
  if (a3)
  {
    if (CFEqual(a3, @"ISOFamily"))
    {
      v9 = 1;
LABEL_8:
      v408 = v9;
      LODWORD(a3) = v9 & 1;
      goto LABEL_9;
    }

    if (CFEqual(a3, @"QuickTimeMovieV2"))
    {
      v9 = 4;
      goto LABEL_8;
    }

    if (CFEqual(a3, @"3GPFamily"))
    {
      v9 = 3;
      goto LABEL_8;
    }

    LODWORD(a3) = 0;
  }

LABEL_9:
  memset(&asbd, 0, sizeof(asbd));
  HIDWORD(v399) = 0;
  LOWORD(destination[0]) = -1;
  ASBDFromAudioFormatWithCodecSpecificAtomBBuf = CMBlockBufferCopyDataBytes(a2, 0x10uLL, 2uLL, destination);
  if (ASBDFromAudioFormatWithCodecSpecificAtomBBuf)
  {
    goto LABEL_829;
  }

  v11 = bswap32(LOWORD(destination[0]));
  v12 = v11 >> 16;
  LOWORD(destination[0]) = HIWORD(v11);
  if (v11 >> 16 > 1)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v174 = "Version >= 2 in ISO sound description";
    v175 = 5023;
  }

  else
  {
    if (!v12)
    {
      v14 = 1;
      v15 = 36;
      goto LABEL_18;
    }

    if (v12 == 2)
    {
      v14 = 4;
      v15 = 72;
LABEL_18:
      v410 = v12;
      v411 = v14;
      v412 = v15;
      goto LABEL_19;
    }

    if (v12 == 1)
    {
      IsBlockBufferISOv1 = figSoundBridge_IsBlockBufferISOv1(a2, 1);
      if (((IsBlockBufferISOv1 != 0) & ~a3) == 0)
      {
        if (IsBlockBufferISOv1)
        {
          v15 = 36;
        }

        else
        {
          v15 = 52;
        }

        if (IsBlockBufferISOv1)
        {
          v14 = 2;
        }

        else
        {
          v14 = 3;
        }

        LOWORD(v12) = destination[0];
        goto LABEL_18;
      }

      v174 = "ISO V1 in movie file";
      v175 = 5037;
    }

    else
    {
      v174 = "Version >= 3 in sound description";
      v175 = 5053;
    }
  }

  figSoundBridge_ReportParsingFailureMessage(a5, v174);
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  ASBDFromAudioFormatWithCodecSpecificAtomBBuf = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE56uLL, "<<< SoundDescriptionBridge >>>", v175, v391, v202, v203);
  if (ASBDFromAudioFormatWithCodecSpecificAtomBBuf)
  {
    goto LABEL_829;
  }

  v15 = v412;
  if (v412 >= 0x49)
  {
    figSoundBridge_ReportParsingFailureMessage(v448, "Offset to extension atoms is out of bounds");
    v204 = fig_log_get_emitter("com.apple.coremedia", "");
    v207 = 5089;
    v208 = v391;
    goto LABEL_531;
  }

LABEL_19:
  ASBDFromAudioFormatWithCodecSpecificAtomBBuf = CMBlockBufferCopyDataBytes(a2, 0, v15, v413);
  if (ASBDFromAudioFormatWithCodecSpecificAtomBBuf)
  {
    goto LABEL_829;
  }

  if (v410 >= 2)
  {
    v16 = bswap32(v418);
    if (v412 >= v16)
    {
      if (v412 > v16)
      {
        figSoundBridge_ReportParsingFailureMessage(v448, "Sound description V2 size is less than expected");
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_45();
        v207 = 5107;
        goto LABEL_531;
      }
    }

    else
    {
      v412 = v16;
    }
  }

  v409 = bswap32(v413[1]);
  v448 = a5;
  if (v413[0])
  {
    goto LABEL_27;
  }

  DataLength = CMBlockBufferGetDataLength(a2);
  if (!HIDWORD(DataLength))
  {
    v413[0] = bswap32(DataLength);
    goto LABEL_27;
  }

  figSoundBridge_ReportParsingFailureMessage(v448, "Sound description V0 size is out of bounds");
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_45();
  v207 = 5123;
LABEL_531:
  v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v204, 0xFFFFCE56uLL, "<<< SoundDescriptionBridge >>>", v207, v208, v205, v206);
  if (v25)
  {
    goto LABEL_386;
  }

LABEL_27:
  v18 = (v410 | v408 & 1) == 0;
  CFPreferenceNumberWithDefault = figSoundBridge_AllowZeroSizeTerminatorAtom_value;
  if (figSoundBridge_AllowZeroSizeTerminatorAtom_value == -1)
  {
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault(@"zero_size_terminator_atom", @"com.apple.coremedia", 1);
    figSoundBridge_AllowZeroSizeTerminatorAtom_value = CFPreferenceNumberWithDefault;
  }

  v20 = CFPreferenceNumberWithDefault != 0;
  v21 = MEMORY[0x1E695E480];
  if (v18)
  {
    goto LABEL_280;
  }

  v22 = CMBlockBufferGetDataLength(a2);
  if (v22 < v412)
  {
    figSoundBridge_ReportParsingFailureMessage(a5, "Offset to extension atoms is greater than length of sound description");
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_45();
    v248 = 5375;
LABEL_828:
    ASBDFromAudioFormatWithCodecSpecificAtomBBuf = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v244, 0xFFFFCE56uLL, "<<< SoundDescriptionBridge >>>", v248, v245, v246, v247);
    goto LABEL_829;
  }

  if (v22 == v412)
  {
    goto LABEL_280;
  }

  ASBDFromAudioFormatWithCodecSpecificAtomBBuf = FigAtomStreamInitWithBBuf(a2, v412, v20, v450);
  if (ASBDFromAudioFormatWithCodecSpecificAtomBBuf)
  {
    goto LABEL_829;
  }

  v386 = a1;
  theBuffer = a2;
  v381 = a5;
  if (v410)
  {
    if ((v408 & 1) == 0)
    {
      LODWORD(v390) = v411 - 1 < 2;
      v23 = 1;
      goto LABEL_39;
    }
  }

  else if ((v408 & 1) == 0)
  {
    cf = 0;
    ptr = 0;
    v24 = 0;
    v25 = 0;
    allocator = *v21;
    goto LABEL_219;
  }

  v23 = (v411 > 3) | (9u >> (v411 & 0xF));
  LODWORD(v390) = v411 != 3;
LABEL_39:
  allocator = *v21;
  v26 = OUTLINED_FUNCTION_15_6();
  if (v26)
  {
    v25 = v26;
    v24 = 0;
    cf = 0;
    ptr = 0;
    goto LABEL_219;
  }

  ptr = 0;
  v27 = 0;
  v24 = 0;
  while (1)
  {
    v28 = size;
    if ((size & 0x8000000000000000) != 0)
    {
      figSoundBridge_ReportParsingFailureMessage(v448, "Sound description extension data has incorrect length");
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_45();
      BBuf = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v227, 0xFFFFCE56uLL, "<<< SoundDescriptionBridge >>>", 0x1138, v228, v229, v230);
LABEL_584:
      v25 = BBuf;
LABEL_585:
      cf = 0;
      goto LABEL_219;
    }

    v29 = v453;
    if (v453)
    {
      break;
    }

LABEL_114:
    Atom = FigAtomStreamAdvanceToNextAtom(v450);
    if (Atom)
    {
      if (Atom != -12890)
      {
        figSoundBridge_ReportParsingFailureMessage(v448, "Sound description has extra bytes that can't be parsed as an extension");
      }

      cf = 0;
      v25 = 0;
      goto LABEL_219;
    }

    BBuf = OUTLINED_FUNCTION_15_6();
    if (BBuf)
    {
      goto LABEL_584;
    }
  }

  if (v453 == 1936289382)
  {
    if (v436)
    {
      goto LABEL_45;
    }

    v39 = &v436;
    goto LABEL_66;
  }

  if ((v23 & 1) == 0)
  {
    switch(v453)
    {
      case 0x6164726D:
        if (v432)
        {
          goto LABEL_67;
        }

        v39 = &v432;
        break;
      case 0x616C6163:
        if (v429)
        {
          goto LABEL_67;
        }

        v39 = &v429;
        break;
      case 0x63686E6C:
        if (v434)
        {
          goto LABEL_67;
        }

        v39 = &v434;
        break;
      case 0x64616333:
        if (v427)
        {
          goto LABEL_67;
        }

        v39 = &v427;
        break;
      case 0x64616D72:
        if (!v431)
        {
          OUTLINED_FUNCTION_10_7();
          BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf(v87, v88, v89, v90);
          if (BBuf)
          {
            goto LABEL_584;
          }
        }

        goto LABEL_67;
      case 0x64656333:
        if (v428)
        {
          goto LABEL_67;
        }

        v39 = &v428;
        break;
      case 0x64664C61:
        if (v430)
        {
          goto LABEL_67;
        }

        v39 = &v430;
        break;
      case 0x65736473:
        BBuf = ReadESDSAtomAndData(v450, &v425, &v426);
        if (BBuf)
        {
          goto LABEL_584;
        }

        goto LABEL_67;
      case 0x73726174:
        if (v411 == 2)
        {
          LODWORD(destination[0]) = 0;
          if (!v438)
          {
            BBuf = FigAtomStreamReadCurrentAtomAndCreateBBuf(v450, &v438);
            if (BBuf)
            {
              goto LABEL_584;
            }
          }

          if (FigAtomStreamReadCurrentAtomData(v450, 4, 4, destination))
          {
            if (v438)
            {
              CFRelease(v438);
              v438 = 0;
            }
          }

          else
          {
            v443 = bswap32(destination[0]);
          }
        }

        goto LABEL_67;
      case 0x70636D43:
        if (v424)
        {
          goto LABEL_67;
        }

        v39 = &v424;
        break;
      default:
        if (figSoundBridge_GetDecodeFormatIDForUnknownExtensionType(v453, &v408, &v451))
        {
          OUTLINED_FUNCTION_26_4();
          if (!v86)
          {
            BBuf = FigAtomStreamReadCurrentAtomAndCreateBBuf(v450, v85 + 27);
            v85 = &v408;
            if (BBuf)
            {
              goto LABEL_584;
            }
          }

          BBuf = figSoundBridge_TransformToCanonicalMagicCookieBBuf(v386, v27, &v408, v85 + 27);
          if (BBuf)
          {
            goto LABEL_584;
          }

          v38 = 0;
          v27 = &v408;
          goto LABEL_68;
        }

LABEL_67:
        v38 = 1;
        goto LABEL_68;
    }

LABEL_66:
    BBuf = FigAtomStreamReadCurrentAtomAndCreateBBuf(v450, v39);
    if (BBuf)
    {
      goto LABEL_584;
    }

    goto LABEL_67;
  }

  if (v390)
  {
    v38 = 1;
    goto LABEL_69;
  }

  if (v453 == 1667785070)
  {
    if (v433)
    {
      goto LABEL_67;
    }

    v39 = &v433;
    goto LABEL_66;
  }

  if (v453 != 2002876005)
  {
    if (figSoundBridge_GetDecodeFormatIDForUnknownExtensionType(v453, &v408, &v451))
    {
      OUTLINED_FUNCTION_26_4();
      if (!v84)
      {
        BBuf = FigAtomStreamReadCurrentAtomAndCreateBBuf(v450, &v439);
        if (BBuf)
        {
          goto LABEL_584;
        }
      }

      BBuf = figSoundBridge_TransformToCanonicalMagicCookieBBuf(v386, v27, &v408, &v439);
      if (BBuf)
      {
        goto LABEL_584;
      }

      v38 = 0;
      v27 = &v408;
      goto LABEL_68;
    }

    goto LABEL_67;
  }

  v56 = v435;
  if (!v435)
  {
    OUTLINED_FUNCTION_10_7();
    v61 = FigAtomStreamReadCurrentAtomDataAndCreateBBuf(v57, v58, v59, v60);
    if (v61)
    {
      v25 = v61;
      if (v61 != -12891)
      {
        goto LABEL_585;
      }
    }

    v56 = v435;
    if (!v435)
    {
      goto LABEL_67;
    }
  }

  v62 = v27;
  v462 = 0u;
  v463 = 0u;
  v460 = 0u;
  v461 = 0u;
  v459 = 0u;
  memset(destination, 0, sizeof(destination));
  v63 = figSoundBridge_AllowZeroSizeTerminatorAtom_value;
  if (figSoundBridge_AllowZeroSizeTerminatorAtom_value == -1)
  {
    v63 = FigGetCFPreferenceNumberWithDefault(@"zero_size_terminator_atom", @"com.apple.coremedia", 1);
    figSoundBridge_AllowZeroSizeTerminatorAtom_value = v63;
    v56 = v435;
  }

  if (!FigAtomStreamInitWithBBuf(v56, 0, v63 != 0, destination))
  {
    do
    {
      LODWORD(v455) = 0;
      v464[0] = 0;
      v452 = 0;
      if (FigAtomStreamGetCurrentAtomTypeAndDataLength(destination, &v455, v464))
      {
        break;
      }

      switch(v455)
      {
        case 0x6164726D:
          if (!v432)
          {
            v64 = &v432;
            goto LABEL_173;
          }

          break;
        case 0x616C6163:
          if (!v429)
          {
            v64 = &v429;
            goto LABEL_173;
          }

          break;
        case 0x64616333:
          if (!v427)
          {
            v64 = &v427;
            goto LABEL_173;
          }

          break;
        case 0x64656333:
          if (!v428)
          {
            v64 = &v428;
            goto LABEL_173;
          }

          break;
        case 0x64664C61:
          if (!v430)
          {
            v64 = &v430;
LABEL_173:
            if (FigAtomStreamReadCurrentAtomAndCreateBBuf(destination, v64))
            {
              goto LABEL_186;
            }
          }

          break;
        case 0x656E6461:
          if (!v437 && FigAtomStreamReadCurrentAtomAndCreateBBuf(destination, &v437) || FigAtomStreamReadCurrentAtomData(destination, 0, 2, &v452))
          {
            goto LABEL_186;
          }

          v452 = bswap32(v452) >> 16;
          v442 = v452 != 0;
          break;
        case 0x65736473:
          if (ReadESDSAtomAndData(destination, &v425, &v426))
          {
            goto LABEL_186;
          }

          break;
        case 0x66726D61:
          v457 = 0;
          OUTLINED_FUNCTION_10_7();
          if (FigAtomStreamReadCurrentAtomDataAndCreateBBuf(v65, v66, v67, v68))
          {
            goto LABEL_186;
          }

          if (!v457)
          {
            break;
          }

          v69 = CMBlockBufferGetDataLength(v457);
          LODWORD(v454) = 0;
          if (v69 < 4)
          {
            v78 = "'wave' atom has 'frma' atom that is too short to contain a format type";
            v79 = 4042;
          }

          else
          {
            OUTLINED_FUNCTION_9_11();
            v72 = v41 || v70 == 1685220723 || v70 == 1701733217;
            if (v72 || (CMBlockBufferCopyDataBytes(v457, 0, 4uLL, &v454), LODWORD(v454) = bswap32(v454), v454 == v409))
            {
              v73 = 1;
              goto LABEL_156;
            }

            v78 = "'wave' atom has wrong 'frma' format type";
            v79 = 4037;
          }

          figSoundBridge_ReportParsingFailureMessage(v448, v78);
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_45();
          v73 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v80, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", v79, v81, v82, v83) == 0;
LABEL_156:
          if (v457)
          {
            CFRelease(v457);
          }

          if (!v73)
          {
            goto LABEL_186;
          }

          break;
        case 0x73616D72:
          if (!v431)
          {
            OUTLINED_FUNCTION_10_7();
            if (FigAtomStreamReadCurrentAtomDataAndCreateBBuf(v74, v75, v76, v77))
            {
              goto LABEL_186;
            }
          }

          break;
        case 0:
          goto LABEL_186;
        default:
          break;
      }
    }

    while (!FigAtomStreamAdvanceToNextAtom(destination));
  }

LABEL_186:
  v38 = 1;
  v27 = v62;
LABEL_68:
  v29 = v453;
  if (!v453)
  {
    goto LABEL_114;
  }

LABEL_69:
  v41 = v29 == 1633972845 || v29 == 1634492771;
  if (v41 || v29 == 1667785070 || v29 == 1684103987 || v29 == 1684106610 || v29 == 1684366131 || v29 == 1684425825 || v29 == 1702061171 || v29 == 1718773093 || v29 == 1885564227 || v29 == 1935764850 || v29 == 1936875892 || v29 == 2002876005 || v38 == 0)
  {
    goto LABEL_114;
  }

LABEL_45:
  if (v24 == v27 && (v30 = v27, v27 = (v27 + 16), (ptr = malloc_type_realloc(ptr, 24 * v27, 0x1060040D0FAAE32uLL)) == 0))
  {
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_45();
    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v240, 0xFFFFCE57uLL, "<<< SoundDescriptionBridge >>>", 0x11F4, v241, v242, v243);
    cf = 0;
    ptr = 0;
    v24 = v30;
  }

  else
  {
    Mutable = CFDataCreateMutable(allocator, 0);
    v32 = Mutable;
    cf = Mutable;
    if (v453 == 1970628964)
    {
      v33 = v27;
      v34 = v23;
      CFDataSetLength(Mutable, v28 + 16);
      BytePtr = CFDataGetBytePtr(v32);
      CurrentAtomUUIDType = FigAtomStreamGetCurrentAtomUUIDType(v450, BytePtr);
      if (CurrentAtomUUIDType)
      {
        goto LABEL_632;
      }

      v37 = BytePtr + 16;
      v23 = v34;
      v27 = v33;
    }

    else
    {
      CFDataSetLength(Mutable, v28);
      v37 = CFDataGetBytePtr(v32);
    }

    CurrentAtomUUIDType = FigAtomStreamReadCurrentAtomData(v450, 0, v28, v37);
    if (!CurrentAtomUUIDType)
    {
      if (cf)
      {
        v54 = &ptr[3 * v24];
        *v54 = v453;
        v54[1] = cf;
        *(v54 + 4) = 0;
        ++v24;
      }

      goto LABEL_114;
    }

LABEL_632:
    v25 = CurrentAtomUUIDType;
  }

LABEL_219:
  v91 = v24;
  v380 = (ptr + 3);
  v92 = (ptr + 2);
  v93 = v24;
  OUTLINED_FUNCTION_3_17();
  while (!v25 || v25 == -12890)
  {
    if (!ptr)
    {
      v25 = 0;
      v441 = 0;
      goto LABEL_277;
    }

    v94 = OUTLINED_FUNCTION_24_4();
    v95 = OUTLINED_FUNCTION_24_4();
    values = OUTLINED_FUNCTION_24_4();
    v389 = v95;
    v390 = v94;
    if (v94 && v95)
    {
      v96 = 3848;
      if (values)
      {
        v379 = v92;
        v97 = 0;
        if (v91)
        {
          v98 = 0;
          v99 = v92;
          v100 = v91;
          v101 = (ptr + 3);
          while (1)
          {
            v102 = &ptr[3 * v98];
            if (!*(v102 + 4))
            {
              break;
            }

LABEL_244:
            ++v98;
            v101 += 6;
            --v100;
            v99 += 6;
            if (v98 == v91)
            {
              goto LABEL_245;
            }
          }

          v103 = *v102;
          LOBYTE(destination[0]) = 4;
          BYTE1(destination[0]) = HIBYTE(v103);
          BYTE2(destination[0]) = BYTE2(v103);
          BYTE3(destination[0]) = BYTE1(v103);
          BYTE4(destination[0]) = v103;
          v104 = CFStringCreateWithPascalString(allocator, destination, 0);
          *(v390 + 8 * v97) = v104;
          if (!v104)
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0_45();
            v109 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v105, 0xFFFFCE57uLL, "<<< SoundDescriptionBridge >>>", 0xEF0, v106, v107, v108);
            if (v109)
            {
              v25 = v109;
              v119 = 0;
              v92 = v379;
              OUTLINED_FUNCTION_3_17();
LABEL_252:
              if (v93 >= 1)
              {
                v124 = v390;
                v125 = v93;
                do
                {
                  if (*v124)
                  {
                    CFRelease(*v124);
                  }

                  ++v124;
                  --v125;
                }

                while (v125);
              }

              free(v390);
              v95 = v389;
              goto LABEL_258;
            }
          }

          v110 = v101;
          v111 = v98;
          do
          {
            if (++v111 >= v91)
            {
              v389[v97] = CFRetain(v102[1]);
LABEL_243:
              ++v97;
              goto LABEL_244;
            }

            v112 = *v110;
            v110 += 6;
          }

          while (v103 != v112);
          if (v98 >= v91)
          {
            v113 = 0;
            v116 = values;
          }

          else
          {
            v113 = 0;
            v114 = v99;
            v115 = v100;
            v116 = values;
            do
            {
              if (v103 == *(v114 - 4))
              {
                values[v113++] = *(v114 - 1);
                *v114 = 1;
              }

              v114 += 6;
              --v115;
            }

            while (v115);
          }

          v117 = CFArrayCreate(allocator, v116, v113, MEMORY[0x1E695E9C0]);
          v389[v97] = v117;
          if (v117)
          {
            goto LABEL_243;
          }

          v96 = 3887;
          v92 = v379;
          OUTLINED_FUNCTION_3_17();
          v95 = v389;
        }

        else
        {
LABEL_245:
          v95 = v389;
          CFDictionaryCreate(allocator, v390, v389, v97, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          OUTLINED_FUNCTION_3_17();
          if (v118)
          {
            v119 = v118;
            v25 = 0;
            v92 = v379;
            goto LABEL_251;
          }

          v96 = 3902;
          v92 = v379;
        }
      }
    }

    else
    {
      v96 = 3848;
    }

    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_45();
    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v120, 0xFFFFCE57uLL, "<<< SoundDescriptionBridge >>>", v96, v121, v122, v123);
    v119 = 0;
LABEL_251:
    if (v390)
    {
      goto LABEL_252;
    }

LABEL_258:
    if (v95)
    {
      if (v91 >= 1)
      {
        v126 = v389;
        v127 = v93;
        do
        {
          if (*v126)
          {
            CFRelease(*v126);
          }

          ++v126;
          --v127;
        }

        while (v127);
      }

      free(v389);
    }

    if (values)
    {
      free(values);
    }

    v441 = v119;
    if (!v25)
    {
      break;
    }
  }

  if (ptr)
  {
    if (v93 >= 1)
    {
      v128 = ptr + 1;
      do
      {
        if (*v128)
        {
          CFRelease(*v128);
        }

        v128 += 3;
        --v93;
      }

      while (v93);
    }

    free(ptr);
  }

LABEL_277:
  a1 = v386;
  a2 = theBuffer;
  a5 = v381;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v25)
  {
    goto LABEL_386;
  }

LABEL_280:
  v464[0] = 0;
  v129 = v409;
  OUTLINED_FUNCTION_5_15();
  if (v41 || v129 == 1685220723)
  {
    goto LABEL_333;
  }

  if (v129 == 1768829746 || v129 == 1718367026 || v129 == 1718367796 || v129 == 1768829492)
  {
    goto LABEL_295;
  }

  OUTLINED_FUNCTION_2_18();
  if (v148)
  {
LABEL_333:
    *&destination[0] = 0;
    Empty = CMBlockBufferCreateEmpty(a1, 4u, 0, destination);
    v25 = Empty;
    if (Empty)
    {
LABEL_355:
      if (*&destination[0])
      {
        CFRelease(*&destination[0]);
      }

      goto LABEL_357;
    }

    if (v425)
    {
      OUTLINED_FUNCTION_4_12(Empty, v425);
    }

    OUTLINED_FUNCTION_9_11();
    if (v41)
    {
      v130 = v432;
      if (!v432)
      {
        goto LABEL_352;
      }
    }

    else
    {
      if (v151 != 1701733217 && v151 != 1685220723)
      {
        goto LABEL_352;
      }

      if (v427)
      {
        v150 = OUTLINED_FUNCTION_4_12(v150, v427);
      }

      if (v428)
      {
        v150 = OUTLINED_FUNCTION_4_12(v150, v428);
      }

      if (v430)
      {
        v150 = OUTLINED_FUNCTION_4_12(v150, v430);
      }

      if (v429)
      {
        v150 = OUTLINED_FUNCTION_4_12(v150, v429);
      }

      v130 = v439;
      if (!v439)
      {
        goto LABEL_352;
      }
    }

    OUTLINED_FUNCTION_4_12(v150, v130);
LABEL_352:
    v153 = *&destination[0];
    if (*&destination[0])
    {
      v153 = CFRetain(*&destination[0]);
    }

    v464[0] = v153;
    goto LABEL_355;
  }

  if (v408)
  {
    switch(v129)
    {
      case 0x61632D33u:
        v217 = v427;
        if (v427)
        {
          goto LABEL_547;
        }

        goto LABEL_553;
      case 0x65632D33u:
        v160 = v428;
        if (v428)
        {
          goto LABEL_551;
        }

        figSoundBridge_ReportParsingFailureMessage(v448, "Required 'dec3' extension missing");
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_45();
        v222 = 4168;
        goto LABEL_813;
      case 0x664C6143u:
        v160 = v430;
        if (v430)
        {
          goto LABEL_551;
        }

        figSoundBridge_ReportParsingFailureMessage(v448, "Required 'dfLa' extension missing");
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_45();
        v222 = 4176;
        goto LABEL_813;
      case 0x6670636Du:
      case 0x6970636Du:
        if (v424)
        {
          goto LABEL_421;
        }

        figSoundBridge_ReportParsingFailureMessage(v448, "Required 'pcmC' extension missing");
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_45();
        v222 = 4160;
        goto LABEL_813;
      case 0x616C6163u:
        if (!v429)
        {
          figSoundBridge_ReportParsingFailureMessage(v448, "Required 'alac' extension missing");
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_45();
          v222 = 4172;
          goto LABEL_813;
        }

        MagicCookieBBufFromALACBBuf = figSoundBridge_CreateMagicCookieBBufFromALACBBuf(a1, v429, v464);
        break;
      case 0x73616D72u:
      case 0x73617762u:
        if (!v431)
        {
          figSoundBridge_ReportParsingFailureMessage(v448, "Required 'damr' extension missing");
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_45();
          v222 = 4181;
          goto LABEL_813;
        }

        MagicCookieBBufFromALACBBuf = figSoundBridge_CreateMagicCookieBBufFromAMRBBuf(a1, v129, v431, v464);
        break;
      default:
        v160 = v439;
        if (v439)
        {
          goto LABEL_551;
        }

LABEL_546:
        v217 = v426;
        if (v426)
        {
LABEL_547:
          v154 = CFRetain(v217);
LABEL_554:
          v25 = 0;
          v464[0] = v154;
          goto LABEL_358;
        }

LABEL_553:
        v154 = 0;
        goto LABEL_554;
    }

    v25 = MagicCookieBBufFromALACBBuf;
LABEL_357:
    v154 = v464[0];
    goto LABEL_358;
  }

  v159 = v129 == 1832149349 || v129 == 1836069985;
  if (v159 || figSoundBridge_isAACUsingESDSinMOV(v129))
  {
    goto LABEL_546;
  }

  v160 = v439;
  if (!v439)
  {
    v160 = v435;
    if (!v435)
    {
LABEL_421:
      v25 = 0;
      goto LABEL_357;
    }
  }

LABEL_551:
  v154 = CFRetain(v160);
  v25 = 0;
  v464[0] = v154;
LABEL_358:
  if (v154)
  {
    v155 = CMBlockBufferGetDataLength(v154);
    if (!HIDWORD(v155))
    {
      v156 = v155;
      if (CMBlockBufferIsRangeContiguous(v154, 0, v155))
      {
        v445 = CFRetain(v154);
        if (!v445)
        {
          goto LABEL_383;
        }
      }

      else
      {
        CMBlockBufferCreateContiguous(a1, v154, a1, 0, 0, 0, 0, &v445);
        if (!v445)
        {
          goto LABEL_383;
        }
      }

      OUTLINED_FUNCTION_26();
      CMBlockBufferGetDataPointer(v161, v162, v163, v164, v165);
      LODWORD(magicCookieSize) = v156;
      goto LABEL_383;
    }

    figSoundBridge_ReportParsingFailureMessage(v448, "Magic cookie size is greater than UINT32_MAX");
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_45();
    v222 = 4222;
LABEL_813:
    v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v218, 0xFFFFCE56uLL, "<<< SoundDescriptionBridge >>>", v222, v219, v220, v221);
  }

LABEL_383:
  if (v464[0])
  {
    CFRelease(v464[0]);
  }

  if (v25)
  {
LABEL_386:
    v166 = 0;
    goto LABEL_387;
  }

  v129 = v409;
LABEL_295:
  *&v465 = 0;
  memset(v464, 0, sizeof(v464));
  v137 = v410;
  if (v410 > 1)
  {
    if (v410 == 2)
    {
      v464[0] = bswap64(v419);
      v157 = bswap32(v420);
      LODWORD(v464[1]) = v129;
      HIDWORD(v464[3]) = v157;
      LODWORD(v465) = bswap32(v421);
      v147 = bswap32(v422);
      if (v129 == 1819304813)
      {
        if ((v147 & 8) != 0)
        {
          v147 &= ~0x10u;
        }

        if (v147)
        {
          v147 &= 0xFFFFFFBB;
        }

        v147 &= ~0x40u;
      }

      HIDWORD(v464[1]) = v147;
      v158 = vrev32_s8(v423);
      v464[2] = v158;
      if (v129 != 1819304813)
      {
        goto LABEL_439;
      }

      LODWORD(v464[3]) = v158;
      goto LABEL_655;
    }

    figSoundBridge_ReportParsingFailureMessage(v448, "This sound description cannot be parsed");
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_45();
    v192 = 4294954582;
    v193 = 3781;
    goto LABEL_534;
  }

  if (!v129 || (v129 != 1313820229 ? (v138 = v129 == 1718367026) : (v138 = 1), !v138 ? (v139 = v129 == 1718367796) : (v139 = 1), !v139 ? (v140 = v129 == 1768829492) : (v140 = 1), !v140 ? (v141 = v129 == 1768829746) : (v141 = 1), !v141 ? (v142 = v129 == 1819304813) : (v142 = 1), !v142 ? (v143 = v129 == 1918990112) : (v143 = 1), !v143 ? (v144 = v129 == 1953984371) : (v144 = 1), !v144 ? (v145 = v129 == 1936684916) : (v145 = 1), v145))
  {
    v464[1] = 0x86C70636DLL;
    switch(v129)
    {
      case 0u:
      case 0x72617720u:
        goto LABEL_391;
      case 0x666C3332u:
      case 0x666C3634u:
        v147 = 9;
LABEL_394:
        HIDWORD(v464[1]) = v147;
LABEL_395:
        if (v129 != 1718367026 && v129 != 1718367796 && v129 != 1768829492)
        {
          if (v129 == 1936684916)
          {
            goto LABEL_407;
          }

          if (v129 != 1768829746)
          {
            goto LABEL_406;
          }
        }

        if (!v437 || !v442)
        {
LABEL_406:
          v147 |= 2u;
          HIDWORD(v464[1]) = v147;
        }

LABEL_407:
        v171 = &v464[3];
        v172 = bswap32(v415) >> 16;
        LODWORD(v465) = v172;
        if (v129 != 1718367026)
        {
          if (v129 == 1718367796)
          {
            v172 = 64;
            goto LABEL_434;
          }

          if (v129 == 1768829492)
          {
            v172 = 24;
            goto LABEL_434;
          }

          if (v129 != 1768829746)
          {
LABEL_435:
            v464[0] = COERCE_VOID_(vcvtd_n_f64_u32(bswap32(v417), 0x10uLL));
            v157 = bswap32(v414) >> 16;
            HIDWORD(v464[3]) = v157;
            v177 = (v172 >> 3) * v157;
            v464[2] = (v177 | 0x100000000);
            v129 = 1819304813;
            goto LABEL_436;
          }
        }

        v172 = 32;
LABEL_434:
        LODWORD(v465) = v172;
        goto LABEL_435;
      case 0x4E4F4E45u:
LABEL_391:
        if (v415 == 2048)
        {
          v147 = 8;
          goto LABEL_395;
        }

        break;
    }

    v147 = 12;
    goto LABEL_394;
  }

  LODWORD(v464[1]) = v129;
  if (v129 == 1835823201 && (v408 & 1) != 0)
  {
    v209 = bswap32(v417);
  }

  else
  {
    v209 = vcvtd_n_f64_u32(bswap32(v417), 0x10uLL);
  }

  v464[0] = *&v209;
  v157 = bswap32(v414) >> 16;
  HIDWORD(v464[3]) = v157;
  if (v411 == 3)
  {
    v147 = v418;
    if (v418)
    {
      HIDWORD(v464[2]) = bswap32(v418);
      if (v416 == -257)
      {
        goto LABEL_560;
      }

      v147 = 0;
      v177 = bswap32(HIDWORD(v419));
      v171 = &v464[2];
LABEL_436:
      *v171 = v177;
    }
  }

  else
  {
LABEL_560:
    v147 = 0;
  }

  if (v438)
  {
    v464[0] = *&v443;
  }

LABEL_439:
  switch(v129)
  {
    case 0x2E6D7033u:
      if (v411 - 3 >= 2)
      {
        goto LABEL_527;
      }

      goto LABEL_655;
    case 0x4D414333u:
      LODWORD(v464[2]) = 2 * v157;
      HIDWORD(v464[2]) = 6;
      goto LABEL_655;
    case 0x4D414336u:
      v464[2] = (v157 | 0x600000000);
      goto LABEL_655;
  }

  v178 = &off_197165000;
  switch(v129)
  {
    case 0x61617664u:
      goto LABEL_487;
    case 0x61632D33u:
      if (!v427)
      {
        goto LABEL_655;
      }

      ASBDFromDAC3BBuf = figSoundBridge_GetASBDFromDAC3BBuf(v427, v464, v131, v132);
      goto LABEL_535;
    case 0x616C6163u:
      if (!v429)
      {
        goto LABEL_655;
      }

      ASBDFromDAC3BBuf = figSoundBridge_GetASBDFromALACBBuf(v429, v464, v131, v132);
      goto LABEL_535;
    case 0x64726D73u:
    case 0x656E6361u:
LABEL_487:
      if (!v426)
      {
        if (v427)
        {
          ASBDFromAudioFormatWithCodecSpecificAtomBBuf = figSoundBridge_GetASBDFromDAC3BBuf(v427, v464, v131, v132);
          if (!ASBDFromAudioFormatWithCodecSpecificAtomBBuf)
          {
            OUTLINED_FUNCTION_7_12();
            if (v41)
            {
              OUTLINED_FUNCTION_19_5();
            }

            else
            {
              OUTLINED_FUNCTION_2_18();
              if (!v41)
              {
                OUTLINED_FUNCTION_5_15();
                if (v350)
                {
                  figSoundBridge_ReportParsingFailureMessage(v448, "Unrecognized audio codec type AC3 for 'aavd'");
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_0_45();
                  v192 = 4294954582;
                  v193 = 3327;
                }

                else
                {
                  figSoundBridge_ReportParsingFailureMessage(v448, "Unrecognized audio protection type for AC3");
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_0_45();
                  v192 = 4294954582;
                  v193 = 3333;
                }

                goto LABEL_534;
              }

              OUTLINED_FUNCTION_18_5();
            }

            v226 = v225 + 464;
            goto LABEL_654;
          }

          goto LABEL_829;
        }

        if (!v428)
        {
          if (v430)
          {
            ASBDFromAudioFormatWithCodecSpecificAtomBBuf = figSoundBridge_GetASBDFromAudioFormatWithCodecSpecificAtomBBuf(1718378851, v430, v464, v132);
            if (ASBDFromAudioFormatWithCodecSpecificAtomBBuf)
            {
              goto LABEL_829;
            }

            OUTLINED_FUNCTION_2_18();
            if (!v41)
            {
              figSoundBridge_ReportParsingFailureMessage(v448, "Unrecognized audio protection type for FLAC");
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0_45();
              v192 = 4294954582;
              v193 = 3390;
              goto LABEL_534;
            }

            v226 = 1902537827;
          }

          else
          {
            if (!v429)
            {
              if (!v439)
              {
                OUTLINED_FUNCTION_5_15();
                if (v41)
                {
                  v194 = 1633771875;
                }

                else
                {
                  OUTLINED_FUNCTION_7_12();
                  if (!v41)
                  {
                    goto LABEL_655;
                  }

                  OUTLINED_FUNCTION_19_5();
                }

                goto LABEL_539;
              }

              ASBDFromAudioFormatWithCodecSpecificAtomBBuf = figSoundBridge_GetASBDFromAudioFormatWithCodecSpecificAtomBBuf(v440, v439, v464, v132);
              if (!ASBDFromAudioFormatWithCodecSpecificAtomBBuf)
              {
                OUTLINED_FUNCTION_2_18();
                if (!v41)
                {
                  figSoundBridge_ReportParsingFailureMessage(v448, "Unrecognized audio protection type");
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_0_45();
                  v192 = 4294954582;
                  v193 = 3440;
                  goto LABEL_534;
                }

                if (LODWORD(v464[1]) != 1634754915 && LODWORD(v464[1]) != 1902211171 && LODWORD(v464[1]) != 1667330147)
                {
                  figSoundBridge_ReportParsingFailureMessage(v448, "Unrecognized audio protection type");
                  fig_log_get_emitter("com.apple.coremedia", "");
                  OUTLINED_FUNCTION_0_45();
                  v192 = 4294954582;
                  v193 = 3433;
                  goto LABEL_534;
                }

                OUTLINED_FUNCTION_18_5();
                v226 = v233 + 3840;
                goto LABEL_654;
              }

LABEL_829:
              v25 = ASBDFromAudioFormatWithCodecSpecificAtomBBuf;
              goto LABEL_386;
            }

            ASBDFromAudioFormatWithCodecSpecificAtomBBuf = figSoundBridge_GetASBDFromALACBBuf(v429, v464, v131, v132);
            if (ASBDFromAudioFormatWithCodecSpecificAtomBBuf)
            {
              goto LABEL_829;
            }

            OUTLINED_FUNCTION_2_18();
            if (!v41)
            {
              figSoundBridge_ReportParsingFailureMessage(v448, "Unrecognized audio protection type for Apple Lossless");
              fig_log_get_emitter("com.apple.coremedia", "");
              OUTLINED_FUNCTION_0_45();
              v192 = 4294954582;
              v193 = 3412;
              goto LABEL_534;
            }

            v226 = 1902928227;
          }

LABEL_654:
          LODWORD(v464[1]) = v226;
          goto LABEL_655;
        }

        ASBDFromAudioFormatWithCodecSpecificAtomBBuf = figSoundBridge_GetASBDFromDEC3BBuf(v428, v464, v131, v132);
        if (!ASBDFromAudioFormatWithCodecSpecificAtomBBuf)
        {
          OUTLINED_FUNCTION_7_12();
          if (v41)
          {
            v226 = 1885692723;
          }

          else
          {
            OUTLINED_FUNCTION_2_18();
            if (!v41)
            {
              OUTLINED_FUNCTION_5_15();
              if (v351)
              {
                figSoundBridge_ReportParsingFailureMessage(v448, "Unrecognized audio codec type EnhancedAC3 for 'aavd'");
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_0_45();
                v192 = 4294954582;
                v193 = 3361;
              }

              else
              {
                figSoundBridge_ReportParsingFailureMessage(v448, "Unrecognized audio protection type for EnhancedAC3");
                fig_log_get_emitter("com.apple.coremedia", "");
                OUTLINED_FUNCTION_0_45();
                v192 = 4294954582;
                v193 = 3367;
              }

              goto LABEL_534;
            }

            v226 = 1902469939;
          }

          goto LABEL_654;
        }

        goto LABEL_829;
      }

      ASBDFromAudioFormatWithCodecSpecificAtomBBuf = figSoundBridge_GetMP4ASBDFromESDSDataBBuf(&v408, v464, v131, v132);
      if (ASBDFromAudioFormatWithCodecSpecificAtomBBuf)
      {
        goto LABEL_829;
      }

      OUTLINED_FUNCTION_5_15();
      if (v41)
      {
        v226 = 1633771875;
        goto LABEL_654;
      }

      OUTLINED_FUNCTION_2_18();
      if (v41)
      {
        if (LODWORD(v464[1]) == 1970495843)
        {
          v226 = 1903522657;
          goto LABEL_654;
        }

        OUTLINED_FUNCTION_9_11();
        if (v41)
        {
          OUTLINED_FUNCTION_18_5();
LABEL_651:
          v226 = v224 + 517;
          goto LABEL_654;
        }

        OUTLINED_FUNCTION_9_11();
        if (!v41)
        {
          OUTLINED_FUNCTION_9_11();
          if (!v41)
          {
            figSoundBridge_ReportParsingFailureMessage(v448, "Unrecognized audio codec type for 'enca'");
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0_45();
            v192 = 4294954582;
            v193 = 3305;
            goto LABEL_534;
          }

          OUTLINED_FUNCTION_18_5();
          goto LABEL_654;
        }

        OUTLINED_FUNCTION_18_5();
      }

      else
      {
        OUTLINED_FUNCTION_7_12();
        if (!v41)
        {
          goto LABEL_655;
        }

        OUTLINED_FUNCTION_9_11();
        if (v41)
        {
          OUTLINED_FUNCTION_19_5();
          goto LABEL_654;
        }

        if (v223 == 1970495843)
        {
          v226 = 1886745441;
          goto LABEL_654;
        }

        OUTLINED_FUNCTION_9_11();
        if (!v41)
        {
          OUTLINED_FUNCTION_9_11();
          if (!v41)
          {
            figSoundBridge_ReportParsingFailureMessage(v448, "Unrecognized audio codec type for 'drms'");
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0_45();
            v192 = 4294954582;
            v193 = 3268;
            goto LABEL_534;
          }

          OUTLINED_FUNCTION_19_5();
          goto LABEL_651;
        }

        OUTLINED_FUNCTION_19_5();
      }

      v226 = v249 + 525;
      goto LABEL_654;
    case 0x664C6143u:
      LODWORD(v464[1]) = 1718378851;
      goto LABEL_524;
    case 0x666C6163u:
LABEL_524:
      v130 = v430;
      if (!v430)
      {
        goto LABEL_655;
      }

      ASBDFromDAC3BBuf = figSoundBridge_GetASBDFromAudioFormatWithCodecSpecificAtomBBuf(1718378851, v430, v464, v132);
      goto LABEL_535;
    case 0x6670636Du:
      HIDWORD(v464[1]) = v147 | 1;
      goto LABEL_513;
    case 0x6970636Du:
LABEL_513:
      LODWORD(v464[1]) = 1819304813;
      if (!v424)
      {
        goto LABEL_655;
      }

      *&destination[0] = 0;
      v457 = 0;
      LODWORD(size) = 40;
      ASBDFromDAC3BBuf = OUTLINED_FUNCTION_13_5(v424, v130, destination, v132, &v457);
      if (ASBDFromDAC3BBuf)
      {
        goto LABEL_535;
      }

      Property = AudioToolbox_AudioFormatGetProperty(1885565796, LODWORD(destination[0]), v457, &size, v464);
      if (!Property)
      {
        v25 = 0;
        goto LABEL_536;
      }

      v377 = Property;
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_45();
      v192 = v377;
      v193 = 2213;
      goto LABEL_534;
    case 0x6C70636Du:
      goto LABEL_655;
    case 0x6D346165u:
    case 0x6D703461u:
      if (v426)
      {
        ASBDFromDAC3BBuf = figSoundBridge_GetMP4ASBDFromESDSDataBBuf(&v408, v464, v131, v132);
        goto LABEL_535;
      }

      v194 = 1633772320;
LABEL_539:
      LODWORD(v464[1]) = v194;
      v464[2] = v178[349];
      goto LABEL_655;
    case 0x73616D72u:
    case 0x73617762u:
      if (v431)
      {
        LODWORD(destination[0]) = 40;
        HIDWORD(v464[3]) = 1;
        v464[0] = *(&unk_197165B40 + (v129 == 1935764850));
        v195 = OUTLINED_FUNCTION_25_4();
        ASBDFromDAC3BBuf = AudioToolbox_AudioFormatGetProperty(v195, v196, v197, v198, v199);
LABEL_535:
        v25 = ASBDFromDAC3BBuf;
LABEL_536:
        if (v25)
        {
          goto LABEL_386;
        }

        goto LABEL_655;
      }

      figSoundBridge_ReportParsingFailureMessage(v448, "Expected to get a magic cookie for AMR");
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_45();
      v192 = 4294954582;
      v193 = 3540;
LABEL_534:
      ASBDFromDAC3BBuf = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v188, v192, "<<< SoundDescriptionBridge >>>", v193, v189, v190, v191);
      goto LABEL_535;
    case 0x76647661u:
      if (v137 == 1 && (v408 & 1) == 0)
      {
        v464[2] = bswap32(HIDWORD(v419));
      }

      goto LABEL_655;
    case 0u:
    case 0x4E4F4E45u:
      goto LABEL_486;
    case 0x65632D33u:
      if (v428)
      {
        ASBDFromDAC3BBuf = figSoundBridge_GetASBDFromDEC3BBuf(v428, v464, v131, v132);
        goto LABEL_535;
      }

      figSoundBridge_ReportParsingFailureMessage(v448, "Expected to get a magic cookie for ec-3");
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_45();
      v192 = 4294954582;
      v193 = 3499;
      goto LABEL_534;
  }

  v182 = v129 == 1718367026 || v129 == 1718367796;
  v183 = v182 || v129 == 1768829492;
  v184 = v183 || v129 == 1768829746;
  v185 = v184 || v129 == 1918990112;
  v186 = v185 || v129 == 1953984371;
  if (v186 || v129 == 1936684916)
  {
LABEL_486:
    figSoundBridge_ReportParsingFailureMessage(v448, "Detected an old, unsupported PCM OSType");
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_45();
    v192 = 4294954582;
    v193 = 3193;
    goto LABEL_534;
  }

LABEL_527:
  if (!v439)
  {
    goto LABEL_528;
  }

  LODWORD(destination[0]) = 0;
  if (figSoundBridge_GetDecodeFormatIDForCodingName(v129, &v408, destination))
  {
    goto LABEL_528;
  }

  v235 = destination[0];
  LODWORD(v464[1]) = destination[0];
  v25 = figSoundBridge_GetASBDFromAudioFormatWithCodecSpecificAtomBBuf(destination[0], v439, v464, v234);
  if (!v25)
  {
    goto LABEL_536;
  }

  v236 = v235 == 1634754915 || v235 == 1667330147;
  v237 = v236 || v235 == 1902211171;
  v238 = v237 || v235 == 1869641075;
  if (v238 && FigAudioCodecTypeIsDecodable(v235))
  {
    goto LABEL_536;
  }

  figSoundBridge_ReportParsingFailureMessage(v448, "AudioToolbox failed to parse the magic cookie; the resulting audio description may not be authoritative");
LABEL_528:
  destination[0] = *v464;
  destination[1] = *&v464[2];
  *&v459 = v465;
  LODWORD(v457) = 40;
  v211 = OUTLINED_FUNCTION_25_4();
  if (!AudioToolbox_AudioFormatGetProperty(v211, v212, v213, v214, v215))
  {
    *v464 = destination[0];
    *&v464[2] = destination[1];
    *&v465 = v459;
  }

LABEL_655:
  ptra = &v464[2];
  v250 = a5;
  theBuffera = a2;
  v387 = a1;
  v251 = v464[0];
  v402 = *(&v464[1] + 4);
  v252 = v464[1];
  v253 = HIDWORD(v464[3]);
  v254 = v465;
  if (!v433 || (v255 = CMBlockBufferGetDataLength(v433)) == 0)
  {
    v263 = 0;
    goto LABEL_666;
  }

  v256 = v255 - 12;
  if (v255 <= 0xC)
  {
    figSoundBridge_ReportParsingFailureMessage(v250, "Channel extension size is too short");
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_45();
    v248 = 5416;
    goto LABEL_828;
  }

  v166 = malloc_type_malloc(v255 - 12, 0x8641D2C1uLL);
  v257 = CMBlockBufferCopyDataBytes(v433, 0xCuLL, v256, v166);
  if (v257)
  {
    goto LABEL_826;
  }

  if (!v166)
  {
    v263 = v256;
LABEL_666:
    v166 = 0;
    v256 = 0;
    if (!v434 || v252 != 1819304813)
    {
      goto LABEL_684;
    }

    v464[0] = 0;
    v457 = 0;
    LODWORD(size) = 0;
    *&v460 = 0;
    v459 = 0u;
    memset(destination, 0, sizeof(destination));
    if (OUTLINED_FUNCTION_13_5(v434, v130, v464, v132, &v457))
    {
      v166 = 0;
    }

    else
    {
      *&destination[0] = v251;
      *(destination + 12) = v402;
      DWORD2(destination[0]) = 1819304813;
      HIDWORD(destination[1]) = v253;
      *&v459 = v254;
      *(&v459 + 1) = v457;
      LODWORD(v460) = v464[0];
      v264 = OUTLINED_FUNCTION_23_4();
      PropertyInfo = AudioToolbox_AudioFormatGetPropertyInfo(v264, v265, v266, v267);
      if (PropertyInfo)
      {
        v360 = PropertyInfo;
        fig_log_get_emitter("com.apple.coremedia", "");
        OUTLINED_FUNCTION_0_45();
        v365 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v361, v360, "<<< SoundDescriptionBridge >>>", 0x142F, v362, v363, v364);
        v166 = 0;
      }

      else
      {
        v166 = malloc_type_malloc(size, 0x7CEF65uLL);
        if (v166)
        {
          v269 = OUTLINED_FUNCTION_23_4();
          v273 = AudioToolbox_AudioFormatGetProperty(v269, v270, v271, v272, v166);
          if (!v273)
          {
            v263 = size;
LABEL_673:
            v256 = v263;
            goto LABEL_684;
          }

          v372 = v273;
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_45();
          v370 = v372;
          v371 = 5175;
        }

        else
        {
          fig_log_get_emitter("com.apple.coremedia", "");
          OUTLINED_FUNCTION_0_45();
          v370 = 4294954583;
          v371 = 5172;
        }

        v365 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v366, v370, "<<< SoundDescriptionBridge >>>", v371, v367, v368, v369);
      }

      if (!v365)
      {
        v166 = 0;
        goto LABEL_673;
      }
    }

    free(v166);
    if (v253 < 3)
    {
      v166 = 0;
      v256 = 0;
      goto LABEL_684;
    }

    figSoundBridge_ReportParsingFailureMessage(v250, "Can't convert ISO channel layout for multichannel audio to an AudioChannelLayout");
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_45();
    v248 = 5450;
    goto LABEL_828;
  }

  if (v256 <= 4)
  {
    figSoundBridge_ReportParsingFailureMessage(v250, "Channel extension size is too short");
    fig_log_get_emitter("com.apple.coremedia", "");
    OUTLINED_FUNCTION_0_45();
    v257 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v373, 0xFFFFCE56uLL, "<<< SoundDescriptionBridge >>>", 0x1531, v374, v375, v376);
    goto LABEL_826;
  }

  if (v256 < 0xC)
  {
    v258 = 1335;
    goto LABEL_663;
  }

  v274 = *&v166->mChannelLayoutTag;
  mNumberChannelDescriptions = v166->mNumberChannelDescriptions;
  v276 = bswap32(mNumberChannelDescriptions);
  if (v276 <= (((v256 & 0xFFFFFFFC) - 12) / 0x14))
  {
    if (mNumberChannelDescriptions)
    {
      v277 = 0;
      mCoordinates = v166->mChannelDescriptions[0].mCoordinates;
      do
      {
        v279 = 0;
        *&v166->mChannelDescriptions[v277].mChannelLabel = vrev32_s8(*&v166->mChannelDescriptions[v277].mChannelLabel);
        do
        {
          *(&mCoordinates->mChannelLayoutTag + v279) = bswap32(*(&mCoordinates->mChannelLayoutTag + v279));
          v279 += 4;
        }

        while (v279 != 12);
        ++v277;
        mCoordinates = (mCoordinates + 20);
      }

      while (v277 != v276);
    }

LABEL_683:
    *&v166->mChannelLayoutTag = vrev32_s8(v274);
    v166->mNumberChannelDescriptions = v276;
    goto LABEL_684;
  }

  if (v274.i32[0])
  {
    LODWORD(v276) = 0;
    goto LABEL_683;
  }

  v258 = 1349;
LABEL_663:
  fig_log_get_emitter("com.apple.coremedia", "");
  OUTLINED_FUNCTION_0_45();
  v257 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v259, 0xFFFFCE58uLL, "<<< SoundDescriptionBridge >>>", v258, v260, v261, v262);
  if (!v257)
  {
LABEL_684:
    *&v404[0] = v251;
    *(v404 + 12) = v402;
    DWORD2(v404[0]) = v252;
    HIDWORD(v404[1]) = v253;
    *&v405 = v254;
    *(&v405 + 1) = v446;
    LODWORD(v406) = magicCookieSize;
    v280 = OUTLINED_FUNCTION_8_11();
    v284 = AudioToolbox_AudioFormatGetPropertyInfo(v280, v281, v282, v283);
    if (v284)
    {
      v25 = v284;
      OUTLINED_FUNCTION_12_7(v284, v285, v286, v287, v288, v289, v290, v291, v378, v379, v380, v381, values, theBuffera, v385, v387, v389, v390, v391, allocator, cf, &v464[2], v396, 0, formatDescriptionOut, v399, *&asbd.mSampleRate, *&asbd.mFormatID, *&asbd.mBytesPerPacket, *&asbd.mBytesPerFrame, *&asbd.mBitsPerChannel, v401, v402);
      if (v426)
      {
        *&destination[0] = 0;
        v464[0] = 0;
        if (!OUTLINED_FUNCTION_13_5(v426, v292, destination, v293, v464))
        {
          if (HIDWORD(*&destination[0]))
          {
            fig_log_get_emitter("com.apple.coremedia", "");
            OUTLINED_FUNCTION_0_45();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v356, 0xFFFFCE56uLL, "<<< SoundDescriptionBridge >>>", 0xB5C, v357, v358, v359);
          }

          else
          {
            LODWORD(v457) = 32;
            AudioToolbox_AudioFormatGetProperty(1702060908, *&destination[0], v464[0], &v457, &layout);
          }
        }
      }

      v294 = v446;
      v295 = magicCookieSize;
      if (v252 == 1633889587 && v446 && magicCookieSize && !v166)
      {
        *&v459 = 0;
        memset(destination, 0, sizeof(destination));
        LODWORD(v464[0]) = 0;
        if (!ParseAC3MP4Cookie(v446, magicCookieSize, destination, v464) && DWORD2(destination[0]) == 1633889587)
        {
          layout.mChannelLayoutTag = v464[0];
        }

        v252 = 1633889587;
      }

      v168 = 0;
      if (DWORD2(v404[0]) == 1700998451 && v294 && v295 && !v166)
      {
        *&v459 = 0;
        memset(destination, 0, sizeof(destination));
        v464[0] = 0;
        LODWORD(v457) = 0;
        if (!ParseEnhancedAC3MP4Cookie(v294, v295, destination, v464, &v457) && v252 == DWORD2(destination[0]))
        {
          layout.mChannelLayoutTag = *v464[0];
        }

        free(v464[0]);
        v168 = 0;
      }

      v296 = v388;
      goto LABEL_706;
    }

    if (v407 > 0x2F)
    {
      v168 = malloc_type_calloc(1uLL, v407, 0x100004064842E6AuLL);
      if (v168)
      {
        v313 = OUTLINED_FUNCTION_8_11();
        v317 = AudioToolbox_AudioFormatGetProperty(v313, v314, v315, v316, v168);
        v25 = v317;
        if (v317)
        {
          OUTLINED_FUNCTION_12_7(v317, v318, v319, v320, v321, v322, v323, v324, v378, v379, v380, v381, values, theBuffera, v385, v387, v389, v390, v391, allocator, cf, &v464[2], v396, 0, formatDescriptionOut, v399, *&asbd.mSampleRate, *&asbd.mFormatID, *&asbd.mBytesPerPacket, *&asbd.mBytesPerFrame, *&asbd.mBitsPerChannel, v401, v402);
        }

        else
        {
          v325 = &v168[12 * (v407 / 0x30)];
          v326 = *(v325 - 3);
          v327 = *(v325 - 2);
          *&asbd.mBitsPerChannel = *(v325 - 2);
          *&asbd.mSampleRate = v326;
          *&asbd.mBytesPerPacket = v327;
          layout.mChannelLayoutTag = *(v325 - 2);
          if (!layout.mChannelLayoutTag)
          {
            v348 = *(v325 - 3);
            v349 = *(v325 - 2);
            *&v405 = *(v325 - 2);
            v404[1] = v349;
            v404[0] = v348;
            v296 = v387;
            v25 = 0;
            if (!figSoundBridge_ChannelLayoutFromFormatInfo())
            {
              layout.mNumberChannelDescriptions = MEMORY[8];
            }

LABEL_706:
            v457 = 0;
            v459 = 0u;
            v460 = 0u;
            memset(destination, 0, sizeof(destination));
            v465 = 0u;
            v466 = 0u;
            memset(v464, 0, sizeof(v464));
            v455 = 0;
            size = 0;
            v297 = *MEMORY[0x1E695E480];
            CMBlockBufferGetDataLength(theBuffera);
            OUTLINED_FUNCTION_26();
            if (!CMBlockBufferCreateContiguous(v298, v299, v300, v301, 0, v302, 0, v303))
            {
              v304 = v455;
              v305 = CMBlockBufferGetDataLength(v455);
              if (!FigCreateCFDataWithBlockBufferNoCopy(v297, v304, 0, v305, &size))
              {
                if (v408)
                {
                  if (v449)
                  {
                    v308 = kFigFormatDescriptionExtension_DeprecatedVerbatimISOSampleEntry;
                  }

                  else
                  {
                    v308 = &kCMFormatDescriptionExtension_VerbatimISOSampleEntry;
                  }
                }

                else if (v449)
                {
                  v308 = kFigFormatDescriptionExtension_DeprecatedVerbatimSampleDescription;
                }

                else
                {
                  v308 = &kCMFormatDescriptionExtension_VerbatimSampleDescription;
                }

                *&destination[0] = *v308;
                v464[0] = size;
                size = 0;
                v328 = 1;
                v457 = 1;
                if (v441)
                {
                  v329 = &destination[1];
                  *(&destination[0] + 1) = @"SampleDescriptionExtensionAtoms";
                  v464[1] = CFRetain(v441);
                  v328 = 2;
                  v457 = 2;
                }

                else
                {
                  ptra = &v464[1];
                  v329 = destination + 1;
                }

                if (!v436)
                {
                  goto LABEL_732;
                }

                v453 = 0;
                v454 = 0;
                if (!OUTLINED_FUNCTION_13_5(v436, v306, &v453, v307, &v454))
                {
                  v453 -= 8;
                  v454 += 8;
                  if (FigBridgeGetCommonEncryptionScheme(v454, v453))
                  {
                    *v329 = @"CommonEncryptionProtected";
                    *ptra = *MEMORY[0x1E695E4D0];
                    v330 = v328 + 1;
                    v457 = v328 + 1;
                    OriginalFormatFromSinf = FigBridgeGetOriginalFormatFromSinf(v454, v453);
                    if (OriginalFormatFromSinf)
                    {
                      *(destination + v330) = @"CommonEncryptionOriginalFormat";
                      v464[v330] = FigCFNumberCreateSInt32(v297, OriginalFormatFromSinf);
                      v457 = v328 + 2;
                    }

                    if (FigBridgeExtractCommonEncryptionTrackEncryptionExtension(v296, destination, v464, &v457, v454, v453))
                    {
                      goto LABEL_730;
                    }

                    v328 = v457;
                  }

LABEL_732:
                  v167 = CFDictionaryCreate(v296, destination, v464, v328, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
                  if (!v167)
                  {
                    fig_log_get_emitter("com.apple.coremedia", "");
                    OUTLINED_FUNCTION_0_45();
                    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v352, 0xFFFFCE57uLL, "<<< SoundDescriptionBridge >>>", 0x14BF, v353, v354, v355);
                  }

                  goto LABEL_734;
                }
              }
            }

LABEL_730:
            v167 = 0;
LABEL_734:
            if (v457)
            {
              for (i = 0; i < v457; ++i)
              {
                CFRelease(*(destination + i));
                CFRelease(v464[i]);
              }
            }

            if (v455)
            {
              CFRelease(v455);
            }

            if (!v167)
            {
              goto LABEL_757;
            }

            HIDWORD(v399) = 40;
            v333 = OUTLINED_FUNCTION_25_4();
            AudioToolbox_AudioFormatGetProperty(v333, v334, v335, v336, v337);
            if (!FigAudioChannelLayoutGetChannelCount(&layout))
            {
              goto LABEL_748;
            }

            if (!v166)
            {
              goto LABEL_750;
            }

            ChannelCount = FigAudioChannelLayoutGetChannelCount(v166);
            v339 = v407;
            LODWORD(destination[0]) = 0;
            if (!v168 || v407 <= 0x2F)
            {
              goto LABEL_750;
            }

            v340 = ChannelCount;
            if (FigAudioFormatGetRichestDecodableFormatIndex(v168, v407, destination))
            {
              v341 = 0;
            }

            else
            {
              v341 = destination[0];
            }

            if (v168[12 * v341 + 7] == v340)
            {
LABEL_748:
              p_layout = v166;
              goto LABEL_753;
            }

            p_layout = v166;
            if (v168[12 * (v339 / 0x30) - 5] != v340)
            {
LABEL_750:
              p_layout = v397;
              if (v397)
              {
                v256 = HIDWORD(v396);
              }

              else
              {
                p_layout = &layout;
                v256 = 12;
              }
            }

LABEL_753:
            v25 = CMAudioFormatDescriptionCreate(v296, &asbd, v256, p_layout, magicCookieSize, v446, v167, &formatDescriptionOut);
            if (!v25)
            {
              *v385 = formatDescriptionOut;
              formatDescriptionOut = 0;
            }

            goto LABEL_757;
          }

          v25 = 0;
        }

        v296 = v387;
        goto LABEL_706;
      }

      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_45();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v343, 0xFFFFCE59uLL, "<<< SoundDescriptionBridge >>>", 0x156B, v344, v345, v346);
      v167 = 0;
    }

    else
    {
      fig_log_get_emitter("com.apple.coremedia", "");
      OUTLINED_FUNCTION_0_45();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v309, 0xFFFFCE5AuLL, "<<< SoundDescriptionBridge >>>", 0x1564, v310, v311, v312);
      v167 = 0;
      v168 = 0;
    }

    v25 = 0;
    goto LABEL_757;
  }

LABEL_826:
  v25 = v257;
LABEL_387:
  v167 = 0;
  v168 = 0;
LABEL_757:
  free(v166);
  free(v168);
  free(v397);
  if (v445)
  {
    CFRelease(v445);
  }

  v446 = 0;
  if (v424)
  {
    CFRelease(v424);
  }

  if (v426)
  {
    CFRelease(v426);
  }

  if (v425)
  {
    CFRelease(v425);
  }

  if (v427)
  {
    CFRelease(v427);
  }

  if (v428)
  {
    CFRelease(v428);
  }

  if (v429)
  {
    CFRelease(v429);
  }

  if (v430)
  {
    CFRelease(v430);
  }

  if (v431)
  {
    CFRelease(v431);
  }

  if (v433)
  {
    CFRelease(v433);
  }

  if (v434)
  {
    CFRelease(v434);
  }

  if (v438)
  {
    CFRelease(v438);
  }

  if (v435)
  {
    CFRelease(v435);
  }

  if (v436)
  {
    CFRelease(v436);
  }

  if (v437)
  {
    CFRelease(v437);
  }

  if (v432)
  {
    CFRelease(v432);
  }

  if (v439)
  {
    CFRelease(v439);
  }

  if (v441)
  {
    CFRelease(v441);
  }

  if (v167)
  {
    CFRelease(v167);
  }

  if ((v25 + 12896) < 7 || v25 == -206)
  {
    return 4294954582;
  }

  return v25;
}