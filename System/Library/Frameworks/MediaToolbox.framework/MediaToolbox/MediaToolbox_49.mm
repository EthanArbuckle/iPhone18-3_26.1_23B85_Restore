uint64_t mv_ValidateRFC4281_dav1_evaluation_fn(uint64_t a1, _DWORD *a2, int *a3)
{
  v6 = *(a1 + 24);
  if (!v6)
  {
    v15 = 0;
LABEL_26:
    v16 = CheckVideoCodecAvailable(a1, 0x64617631u);
    goto LABEL_27;
  }

  v7 = *a1;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  theArray = 0;
  theDict = 0;
  if (sscanf(v6, "%02u.%02u", &v23, &v22) != 2 || v23 != 10)
  {
    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_3();
LABEL_39:
    v15 = 0;
    v16 = v24;
    goto LABEL_25;
  }

  if (v22 >= 0xE)
  {
    mv_ValidateRFC4281_dav1_evaluation_fn_cold_4(&v24);
    goto LABEL_39;
  }

  if (!v7)
  {
    v16 = 0;
    goto LABEL_30;
  }

  VideoProfileAndLevelConstraints = mv_GetVideoProfileAndLevelConstraints(v7, @"dav1", &theArray, &v20, &theDict, 0, 0, 0);
  if (VideoProfileAndLevelConstraints)
  {
    v16 = VideoProfileAndLevelConstraints;
    v15 = 0;
    goto LABEL_25;
  }

  if (!theArray)
  {
    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_2(&v24);
    goto LABEL_39;
  }

  v9 = *MEMORY[0x1E695E480];
  v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d", v23);
  v11 = theArray;
  v25.length = CFArrayGetCount(theArray);
  v25.location = 0;
  if (!CFArrayContainsValue(v11, v25, v10))
  {
    v16 = FigSignalErrorAt();
    v15 = 0;
    v12 = 0;
    if (!v10)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v12 = CFStringCreateWithFormat(v9, 0, @"%02d", v22);
  v13 = v20;
  if (v20)
  {
    v26.length = CFArrayGetCount(v20);
    v26.location = 0;
    if (CFArrayContainsValue(v13, v26, v12))
    {
      if (theDict && ((CFDictionaryGetValue(theDict, v10), LOBYTE(v24) = 0, BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent(), !v24) ? (v15 = 1) : (v15 = 2), BooleanIfPresent))
      {
        v16 = 0;
        if (!v10)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (mv_IsAV1DecoderHardwareAccelerated_av1HardwareCheckOnce != -1)
        {
          mv_ValidateRFC4281_av01_evaluation_fn_cold_1();
        }

        v16 = 0;
        if (sAV1DecoderIsHardwareAccelerated)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }

        if (!v10)
        {
          goto LABEL_23;
        }
      }

LABEL_22:
      CFRelease(v10);
      goto LABEL_23;
    }
  }

  v16 = FigSignalErrorAt();
  v15 = 0;
  if (v10)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (v12)
  {
    CFRelease(v12);
  }

LABEL_25:
  if (v16 == -16055)
  {
    goto LABEL_26;
  }

LABEL_27:
  if (v15)
  {
    v17 = *a3;
    *a3 |= 0x10u;
    if (v15 == 1)
    {
      *a3 = v17 | 0x18;
    }
  }

LABEL_30:
  *a2 = 1684108849;
  return v16;
}

uint64_t mv_ValidateRFC4281_video_evaluation_fn(uint64_t a1, _DWORD *a2)
{
  result = *a1;
  if (result)
  {
    result = mv_ValidateRFC4281VideoFromCodecType(result, *(a1 + 32));
  }

  *a2 = *(a1 + 32);
  return result;
}

uint64_t mv_ValidateRFC4281_video_evaluation_fn_no_HLS(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*(a1 + 12) == 2)
  {
    result = 0;
    *a2 = *(a1 + 32);
    *a3 |= 4u;
  }

  else
  {
    result = *a1;
    if (*a1)
    {
      result = mv_ValidateRFC4281VideoFromCodecType(result, *(a1 + 32));
    }

    *a2 = *(a1 + 32);
  }

  return result;
}

uint64_t mv_ValidateRFC4281_mp2v_evaluation_fn(uint64_t *a1, _DWORD *a2)
{
  v9 = 0;
  v4 = a1[3];
  if (v4)
  {
    v8 = 0;
    v5 = sscanf(v4, "%x%c", &v9, &v8);
    if ((v9 - 96) > 5 || ((1 << (v9 - 96)) & 0x23) == 0)
    {
      return 4294954340;
    }

    if (v5 >= 2)
    {
      mv_ValidateRFC4281_mp2v_evaluation_fn_cold_1(&v10);
      return v10;
    }
  }

  else
  {
    v9 = 97;
  }

  *a2 = 1836069494;
  return mv_ValidateRFC4281VideoFromCodecType(*a1, 0x6D703276u);
}

uint64_t mv_ValidateRFC4281_mp4v_evaluation_fn(uint64_t a1, int *a2, _DWORD *a3)
{
  v20 = 0;
  v6 = *(a1 + 24);
  if (!v6)
  {
    HIDWORD(v20) = 32;
    goto LABEL_8;
  }

  LOBYTE(v24) = 0;
  LODWORD(v6) = sscanf(v6, "%x.%d%c", &v20 + 4, &v20, &v24);
  if (SHIDWORD(v20) > 100)
  {
    if (HIDWORD(v20) != 101)
    {
      if (HIDWORD(v20) != 106)
      {
        if (HIDWORD(v20) != 108)
        {
LABEL_38:
          LODWORD(result) = FigSignalErrorAt();
          v15 = 0;
          if (result)
          {
            result = result;
          }

          else
          {
            result = 4294954340;
          }

          if (!a2)
          {
            return result;
          }

          goto LABEL_59;
        }

        if (v6 != 1)
        {
          mv_ValidateRFC4281_mp4v_evaluation_fn_cold_3(&v24);
          return v24;
        }

        v16 = (*(a1 + 16) & 2u) >> 1;
        if ((*(a1 + 16) & 2) != 0)
        {
          v17 = 0;
        }

        else
        {
          v17 = 1785750887;
        }

        if ((*(a1 + 16) & 2) != 0)
        {
          v18 = -12956;
        }

        else
        {
          v18 = 0;
        }

LABEL_47:
        if (v18)
        {
          v15 = v17;
        }

        else
        {
          v15 = 0;
        }

        if (v18)
        {
          result = v18;
        }

        else
        {
          result = 4294954340;
        }

        if (!v18 && (v16 & 1) == 0)
        {
          result = *a1;
          if (*a1)
          {
            result = mv_ValidateRFC4281VideoFromCodecType(result, v17);
          }

          v15 = v17;
        }

        if (!a2)
        {
          return result;
        }

LABEL_59:
        *a2 = v15;
        return result;
      }

      if (v6 != 1)
      {
        mv_ValidateRFC4281_mp4v_evaluation_fn_cold_2(&v24);
        return v24;
      }

      if ((*(a1 + 16) & 2) == 0)
      {
        v17 = 1836069238;
        if (*(a1 + 12) == 2)
        {
          goto LABEL_36;
        }

LABEL_46:
        LOBYTE(v16) = 0;
        v18 = 0;
        goto LABEL_47;
      }

LABEL_61:
      v15 = 0;
      result = 4294954340;
      if (!a2)
      {
        return result;
      }

      goto LABEL_59;
    }

LABEL_33:
    if (v6 != 1)
    {
      mv_ValidateRFC4281_mp4v_evaluation_fn_cold_1(&v24);
      return v24;
    }

    if ((*(a1 + 16) & 2) == 0)
    {
      v17 = 1836069494;
      if (*(a1 + 12) == 2)
      {
LABEL_36:
        LOBYTE(v16) = 0;
        v18 = 0;
        *a3 |= 4u;
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    goto LABEL_61;
  }

  if ((HIDWORD(v20) - 96) < 2)
  {
    goto LABEL_33;
  }

  if (HIDWORD(v20) != 32)
  {
    goto LABEL_38;
  }

  if (v6 >= 3)
  {
    mv_ValidateRFC4281_mp4v_evaluation_fn_cold_4(&v24);
    return v24;
  }

LABEL_8:
  if (*(a1 + 12) == 2)
  {
    *a3 |= 4u;
  }

  if (v6 != 2)
  {
    LOBYTE(v16) = 0;
    v18 = 0;
    v17 = 1836070006;
    goto LABEL_47;
  }

  v7 = *(a1 + 24);
  v8 = *a1;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  number = 0;
  v9 = sscanf(v7, "%x.%d%c", &v26 + 4, &v26, &v25);
  result = 0;
  if (v8)
  {
    if (v9 == 2)
    {
      result = mv_GetVideoProfileAndLevelConstraints(v8, @"mp4v", &v24, 0, &v23, &number, &v21, 0);
      if (!result)
      {
        v11 = v24;
        if (number | v24 && v21)
        {
          v12 = v26;
          if (v24)
          {
            v19 = 0;
          }

          else
          {
            v13 = &byte_196E77F76;
            v14 = 15;
            while (v26 != *(v13 - 2))
            {
              v13 += 3;
              if (!--v14)
              {
                result = FigSignalErrorAt();
                goto LABEL_21;
              }
            }

            v12 = *(v13 - 1);
            v19 = *v13;
            v11 = 0;
          }

          result = mv_ValidateVideoProfileLevelTier(v11, number, v21, 0, v12, v19, 0);
        }

        else
        {
          result = 0;
        }
      }
    }
  }

LABEL_21:
  v15 = 1836070006;
  if (a2)
  {
    goto LABEL_59;
  }

  return result;
}

uint64_t mv_ValidateRFC4281_vp9_evaluation_fn(uint64_t a1, _DWORD *a2, int *a3)
{
  v6 = *(a1 + 24);
  if (!v6)
  {
    v16 = 0;
LABEL_34:
    v7 = CheckVideoCodecAvailable(a1, 0x76703039u);
    goto LABEL_35;
  }

  v7 = *a1;
  v31 = 0;
  v30 = 0;
  valuePtr = 0;
  v27 = 0;
  theArray = 0;
  theDict = 0;
  if (sscanf(v6, "%u.%u.%u", &v30, &v30 + 4, &v31) != 3)
  {
    v7 = FigSignalErrorAt();
    goto LABEL_20;
  }

  if (!v7)
  {
    goto LABEL_38;
  }

  VideoProfileAndLevelConstraints = mv_GetVideoProfileAndLevelConstraints(v7, @"vp09", &theArray, &v27, &theDict, 0, 0, 0);
  if (!theArray)
  {
    mv_ValidateRFC4281_hvc1_hev1_evaluation_fn_cold_2(&v32);
    v16 = 0;
    v7 = v32;
    goto LABEL_33;
  }

  v7 = VideoProfileAndLevelConstraints;
  if (!theDict)
  {
LABEL_20:
    v16 = 0;
    goto LABEL_33;
  }

  v9 = *MEMORY[0x1E695E480];
  v10 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%02d", v30);
  v11 = theArray;
  v33.length = CFArrayGetCount(theArray);
  v33.location = 0;
  if (!CFArrayContainsValue(v11, v33, v10))
  {
    v7 = FigSignalErrorAt();
    v16 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v12 = CFStringCreateWithFormat(v9, 0, @"%d", v30);
  Value = CFDictionaryGetValue(theDict, v12);
  LOBYTE(v32) = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
  if (v32)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (BooleanIfPresent)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = CFDictionaryGetValue(Value, @"ColorDepth");
  if (!v17)
  {
    v19 = 0;
LABEL_24:
    v22 = CFDictionaryGetValue(Value, @"MaxLevel");
    CFNumberGetValue(v22, kCFNumberIntType, &valuePtr);
    v20 = CFStringCreateWithFormat(v9, 0, @"%02d", valuePtr);
    v21 = CFStringCreateWithFormat(v9, 0, @"%02d", HIDWORD(v30));
    v23 = v27;
    v35.length = CFArrayGetCount(v27);
    v35.location = 0;
    v36.length = CFArrayGetFirstIndexOfValue(v23, v35, v20) + 1;
    v36.location = 0;
    if (CFArrayContainsValue(v27, v36, v21))
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

  v18 = v17;
  v19 = CFStringCreateWithFormat(v9, 0, @"%02d", v31);
  v34.length = CFArrayGetCount(v18);
  v34.location = 0;
  if (CFArrayContainsValue(v18, v34, v19))
  {
    goto LABEL_24;
  }

  v20 = 0;
  v21 = 0;
LABEL_40:
  v7 = FigSignalErrorAt();
LABEL_25:
  if (v10)
  {
LABEL_26:
    CFRelease(v10);
  }

LABEL_27:
  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v21)
  {
    CFRelease(v21);
  }

LABEL_33:
  if (v7 == -16055)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (v16)
  {
    v24 = *a3;
    *a3 |= 0x10u;
    if (v16 == 1)
    {
      *a3 = v24 | 0x18;
    }
  }

LABEL_38:
  *a2 = 1987063865;
  return v7;
}

uint64_t mv_ValidateRFC4281_mp4a_evaluation_fn(uint64_t a1, int *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v3 = *(a1 + 24);
  if (!v3)
  {
    mv_ValidateRFC4281_mp4a_evaluation_fn_cold_1(&v17 + 1);
    return HIDWORD(v17);
  }

  v5 = *(a1 + 12);
  v17 = 0;
  v16 = 0;
  v6 = sscanf(v3, "%x.%d%c", &v17 + 4, &v17, &v16);
  if (v6 == 2)
  {
    if (HIDWORD(v17) != 107 && HIDWORD(v17) != 105)
    {
      if (HIDWORD(v17) == 64)
      {
        switch(v17)
        {
          case 1:
            goto LABEL_23;
          case 2:
            goto LABEL_31;
          case 3:
            goto LABEL_25;
          case 4:
            v8 = 84;
            goto LABEL_26;
          case 5:
            v8 = 72;
            goto LABEL_26;
          case 7:
            v7 = 1953986161;
            goto LABEL_42;
          case 8:
            v7 = 1667591280;
            goto LABEL_42;
          case 9:
            v7 = 1752594531;
            goto LABEL_42;
          case 23:
            v8 = 76;
            goto LABEL_26;
          case 29:
            v8 = 80;
            goto LABEL_26;
          case 32:
            goto LABEL_19;
          case 33:
            goto LABEL_40;
          case 34:
            if (v5 == 2)
            {
              v7 = 778924083;
            }

            else
            {
              v7 = 1836069684;
            }

            goto LABEL_42;
          case 35:
            v18[0] = 0x6473642064737420;
            v7 = 1685287968;
            v10 = 2;
            goto LABEL_43;
          case 36:
            v7 = 1634497332;
            goto LABEL_42;
          case 38:
            v7 = 1936487278;
            goto LABEL_42;
          case 39:
            v8 = 69;
            goto LABEL_26;
          case 42:
            v7 = 1970495843;
            goto LABEL_42;
          default:
            goto LABEL_29;
        }
      }

      goto LABEL_29;
    }

    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_36;
    }

    switch(v17)
    {
      case 3:
        v7 = 778924083;
        break;
      case 2:
LABEL_40:
        v7 = 778924082;
        break;
      case 1:
LABEL_19:
        v7 = 778924081;
        break;
      default:
        goto LABEL_29;
    }

LABEL_42:
    LODWORD(v18[0]) = v7;
    v10 = 1;
LABEL_43:
    if (*a1)
    {
      v11 = v18;
      v12 = 1;
      while (1)
      {
        v13 = *v11++;
        result = v13;
        if (v13 > 1633772391)
        {
          break;
        }

        v15 = 1633772320;
        if (result != 1633772320)
        {
          if (!result)
          {
            goto LABEL_55;
          }

LABEL_53:
          v15 = result;
        }

LABEL_54:
        result = mv_ValidateRFC4281AudioFromCodecType(*a1, v15);
LABEL_55:
        if (v12 < v10)
        {
          ++v12;
          if (!result)
          {
            continue;
          }
        }

        goto LABEL_37;
      }

      v14 = result == 1633772392 || result == 1633772400;
      v15 = 1633772320;
      if (v14)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

    result = 0;
    goto LABEL_37;
  }

  if (v6 != 1)
  {
    goto LABEL_36;
  }

  if (SHIDWORD(v17) <= 104)
  {
    if (SHIDWORD(v17) > 102)
    {
      if (HIDWORD(v17) == 103)
      {
LABEL_31:
        v7 = 1633772320;
        goto LABEL_42;
      }

LABEL_25:
      v8 = 82;
    }

    else
    {
      if (HIDWORD(v17) == 64)
      {
        goto LABEL_36;
      }

      if (HIDWORD(v17) != 102)
      {
        goto LABEL_29;
      }

LABEL_23:
      v8 = 77;
    }

LABEL_26:
    v7 = v8 | 0x61616320;
    goto LABEL_42;
  }

  if (SHIDWORD(v17) <= 164)
  {
    if (HIDWORD(v17) == 105 || HIDWORD(v17) == 107)
    {
      goto LABEL_36;
    }

    goto LABEL_29;
  }

  switch(HIDWORD(v17))
  {
    case 0xA5:
      if (v5 != 2)
      {
        goto LABEL_36;
      }

      v7 = 1633889587;
      goto LABEL_42;
    case 0xA6:
      if (v5 != 2)
      {
        goto LABEL_36;
      }

      v7 = 1700998451;
      goto LABEL_42;
    case 0xE1:
      v7 = 1365470320;
      goto LABEL_42;
  }

LABEL_29:
  result = FigSignalErrorAt();
  if (result)
  {
    v7 = 0;
    goto LABEL_37;
  }

LABEL_36:
  v7 = 0;
  result = 4294954339;
LABEL_37:
  if (a2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t mv_ValidateRFC4281_audio_evaluation_fn(uint64_t a1, _DWORD *a2)
{
  result = mv_ValidateRFC4281AudioFromCodecType(*a1, *(a1 + 32));
  *a2 = *(a1 + 32);
  return result;
}

uint64_t mv_ValidateRFC4281_audio_evaluation_fn_no_HLS(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (*(a1 + 12) == 2)
  {
    *a2 = *(a1 + 32);
    *a3 |= 4u;
    return 0;
  }

  else
  {
    result = mv_ValidateRFC4281AudioFromCodecType(*a1, *(a1 + 32));
    *a2 = *(a1 + 32);
  }

  return result;
}

uint64_t mv_ValidateRFC4281_mp1a_mp2a_evaluation_fn(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    mv_ValidateRFC4281_mp1a_mp2a_evaluation_fn_cold_1(&v14);
    return v14;
  }

  v13 = 0;
  v12 = 0;
  v3 = sscanf(v2, "%x.%x%c", &v13 + 4, &v13, &v12);
  if (v3 < 1)
  {
    return 4294954339;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  v7 = v3 == 1 && v5 == 1836069473;
  result = 4294954339;
  if (SHIDWORD(v13) <= 103)
  {
    if (HIDWORD(v13) != 102)
    {
      if (HIDWORD(v13) != 103 || !v7)
      {
        return result;
      }

      v9 = 1633772320;
LABEL_35:
      result = *a1;
      if (*a1)
      {
        return mv_ValidateRFC4281AudioFromCodecType(result, v9);
      }

      return result;
    }

    if (!v7)
    {
      return result;
    }

    v11 = 77;
LABEL_34:
    v9 = v11 | 0x61616320;
    goto LABEL_35;
  }

  if (HIDWORD(v13) == 104)
  {
    if (!v7)
    {
      return result;
    }

    v11 = 82;
    goto LABEL_34;
  }

  if ((HIDWORD(v13) == 105 || HIDWORD(v13) == 107) && v4 <= 2 && (*(a1 + 16) & 4) != 0 && (v5 == 1836069473 && HIDWORD(v13) == 105 || v5 == 1836069217 && HIDWORD(v13) == 107))
  {
    v9 = 778924083;
    if (v4 == 2)
    {
      v10 = 778924082;
      if (v13 != 2)
      {
        v10 = 778924083;
      }

      if (v13 == 1)
      {
        v9 = 778924081;
      }

      else
      {
        v9 = v10;
      }
    }

    goto LABEL_35;
  }

  return result;
}

uint64_t mv_ValidateRFC4281_apac_evaluation_fn(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = HIBYTE(v3);
  v6 = *MEMORY[0x1E695E480];
  if (v4)
  {
    v7 = CFStringCreateWithFormat(v6, 0, @"%c%c%c%c.%s", v5, BYTE2(v3), BYTE1(v3), v3, v4);
  }

  else
  {
    v7 = CFStringCreateWithFormat(v6, 0, @"%c%c%c%c", v5, BYTE2(v3), BYTE1(v3), v3);
  }

  v8 = v7;
  v9 = mv_ValidateAudioCodecsParameterValue(v7);
  if (v8)
  {
    CFRelease(v8);
  }

  *a2 = 1634754915;
  return v9;
}

uint64_t mv_ValidateRFC4281_stpp_evaluation_fn(uint64_t a1, _DWORD *a2)
{
  v3 = *(a1 + 24);
  v13 = 0;
  if (!v3)
  {
    mv_ValidateRFC4281_stpp_evaluation_fn_cold_3(&__stringp);
    result = __stringp;
    goto LABEL_38;
  }

  __stringp = v3;
  strsep(&__stringp, ".");
  if (strcmp(v3, "ttml"))
  {
    mv_ValidateRFC4281_stpp_evaluation_fn_cold_1(&v14);
LABEL_42:
    result = v14;
    goto LABEL_38;
  }

  if (!__stringp)
  {
    mv_ValidateRFC4281_stpp_evaluation_fn_cold_2(&v14);
    goto LABEL_42;
  }

  v14 = __stringp;
  strsep(&v14, ".");
  v4 = 0;
  v5 = __stringp;
  v6 = MEMORY[0x1E69E9830];
  while (1)
  {
    while (1)
    {
      v7 = *v5;
      if (v7 == 43)
      {
        if (v4)
        {
          if (v4 == 1768763764)
          {
            v9 = (&v13 + 1);
          }

          else
          {
            v9 = &v13;
          }

          *v9 = 1;
        }

        v4 = 0;
        goto LABEL_25;
      }

      if (v7 != 124)
      {
        break;
      }

      if (v4)
      {
        if (v4 == 1768763764)
        {
          v8 = (&v13 + 1);
        }

        else
        {
          v8 = &v13;
        }

        *v8 = 1;
      }

      if (HIBYTE(v13) && !v13)
      {
        goto LABEL_33;
      }

      v4 = 0;
      v13 = 0;
LABEL_25:
      __stringp = ++v5;
    }

    if (!*v5)
    {
      goto LABEL_29;
    }

    if (v7 < 0)
    {
      break;
    }

    if ((*(v6 + 4 * v7 + 60) & 0x4000) != 0)
    {
      goto LABEL_29;
    }

LABEL_27:
    v5 = __stringp + 1;
    v10 = HIBYTE(v4);
    v4 = *__stringp++ | (v4 << 8);
    if (v10)
    {
      goto LABEL_34;
    }
  }

  if (!__maskrune(v7, 0x4000uLL))
  {
    goto LABEL_27;
  }

LABEL_29:
  if (v4)
  {
    v11 = (&v13 + 1);
    if (v4 != 1768763764)
    {
      v11 = &v13;
    }

    *v11 = 1;
  }

LABEL_33:
  ++__stringp;
LABEL_34:
  if (v13 || !HIBYTE(v13))
  {
    fig_log_get_emitter();
    result = FigSignalErrorAtGM();
  }

  else
  {
    result = 0;
  }

LABEL_38:
  *a2 = 1937010800;
  return result;
}

uint64_t CheckVideoCodecAvailable(const __CFDictionary **a1, unsigned int a2)
{
  if (!*a1)
  {
    return 0;
  }

  CFStringFrom4CC = mv_CreateCFStringFrom4CC(a2);
  v9 = 0;
  IsValueInArrayInDictionary = mv_IsValueInArrayInDictionary(*a1, CFStringFrom4CC, @"vide", &v9 + 1, &v9);
  if (HIBYTE(v9))
  {
    v5 = v9 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = mv_IsValueInArrayInDictionary(*a1, CFStringFrom4CC, @"VideoCodecs", &v9 + 1, &v9);
    if (HIBYTE(v9))
    {
      v7 = v6;
    }

    else
    {
      v7 = 4294954344;
    }

    if (CFStringFrom4CC)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = IsValueInArrayInDictionary;
    if (CFStringFrom4CC)
    {
LABEL_14:
      CFRelease(CFStringFrom4CC);
    }
  }

  return v7;
}

uint64_t OUTLINED_FUNCTION_0_128()
{

  return FigSignalErrorAt();
}

uint64_t OUTLINED_FUNCTION_3_90(uint64_t a1, uint64_t a2, const void *a3)
{

  return mv_IsValueInArrayInDictionary(v4, v3, a3, (v5 - 34), (v5 - 33));
}

uint64_t OUTLINED_FUNCTION_4_92(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, Boolean a13)
{

  return mv_IsValueInArrayInDictionary(v14, v13, a3, &a13, &a12);
}

const void *OUTLINED_FUNCTION_7_57(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, const void **a6)
{

  return mv_GetCodecProperty(v7, v6, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_8_41()
{

  return CMBaseObjectGetVTable();
}

uint64_t FigMetadataRewriterSetValues(const __CFURL *a1, const __CFDictionary *a2)
{
  v17 = 0;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  if (a1)
  {
    memset(v16, 0, sizeof(v16));
    if (!a2)
    {
      v8 = 0;
      goto LABEL_37;
    }

    v3 = CFURLCopyPathExtension(a1);
    BYTE8(v15) = FigCFStringIsISOExtension(v3);
    v4 = *MEMORY[0x1E695E480];
    v5 = CMByteStreamCreateForFileURL();
    if (v5 || (v5 = FigAtomStreamInitWithByteStream(), v5) || (v5 = figMDRW_ParseChildAtoms(v16, 2, &FigMetadataRewriterSetValues_atomDispatch, &v10), v5))
    {
      v8 = v5;
      if (!v3)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if ((!BYTE9(v15) || BYTE10(v15)) && (BYTE9(v15) || !BYTE8(v15)))
    {
      v20 = 0;
      v21 = 0;
      v18 = v17;
      v19 = 0;
      v22 = @"udta";
      v23 = *(&v10 + 1);
      v24 = *(&v13 + 1);
      if (!*(&v13 + 1) || (v9 = FigMetadataReaderCreateForQuickTimeUserData(v4, v17, *(&v10 + 1), &v20), !v9))
      {
        v9 = FigMetadataSerializerCreateForQuickTimeUserData(v4, &v21);
        if (!v9)
        {
          v9 = figMDRW_WriteMetadata(&v18, a2);
        }
      }

      v8 = v9;
      if (v20)
      {
        CFRelease(v20);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      if (v8)
      {
LABEL_35:
        if (v3)
        {
LABEL_36:
          CFRelease(v3);
        }

LABEL_37:
        if (v17)
        {
          CFRelease(v17);
        }

        return v8;
      }

      v20 = 0;
      v21 = 0;
      v18 = v17;
      v19 = 0;
      v22 = @"mdta";
      v23 = v11;
      v24 = v14;
      if (v14 && (v6 = FigMetadataReaderCreateForQuickTimeMetadata(v4, v17, v11, &v20), v6) || (v6 = FigMetadataSerializerCreateForQuickTimeMetadata(v4, &v21), v6))
      {
LABEL_31:
        v8 = v6;
        if (v20)
        {
          CFRelease(v20);
        }

        if (v21)
        {
          CFRelease(v21);
        }

        goto LABEL_35;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v18 = v17;
      v19 = 0;
      v22 = @"uiso";
      v23 = *(&v10 + 1);
      v24 = *(&v13 + 1);
      if (*(&v13 + 1))
      {
        v6 = FigMetadataReaderCreateForISOUserData(v4, v17, *(&v10 + 1), &v20);
        if (v6)
        {
          goto LABEL_31;
        }
      }

      v6 = FigMetadataSerializerCreateForISOUserData(v4, &v21);
      if (v6)
      {
        goto LABEL_31;
      }
    }

    v6 = figMDRW_WriteMetadata(&v18, a2);
    goto LABEL_31;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigRewriteMetadata(const __CFURL *a1, const __CFDictionary *a2, uint64_t a3, char *a4)
{
  cf = 0;
  v89 = 0;
  *v86 = 0u;
  memset(v87, 0, sizeof(v87));
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  if (!a1)
  {
    FigRewriteMetadata_cold_5(&v108);
LABEL_214:
    v11 = v108;
    goto LABEL_178;
  }

  if (!a2)
  {
    FigRewriteMetadata_cold_4(&v108);
    goto LABEL_214;
  }

  v8 = CFURLCopyPathExtension(a1);
  BYTE8(v85) = FigCFStringIsISOExtension(v8);
  v9 = *MEMORY[0x1E695E480];
  v10 = CMByteStreamCreateForFileURL();
  if (v10)
  {
    goto LABEL_12;
  }

  v10 = FigAtomStreamInitWithByteStream();
  if (v10)
  {
    goto LABEL_12;
  }

  v10 = figMDRW_ParseChildAtoms(v87, 3, &FigRewriteMetadata_atomDispatch, &v80);
  if (v10)
  {
    goto LABEL_12;
  }

  if (!LOBYTE(v86[0]))
  {
    if (BYTE9(v85))
    {
      if (BYTE10(v85))
      {
LABEL_16:
        v12 = &kFigMetadataFormat_QuickTimeUserData;
        goto LABEL_19;
      }
    }

    else if (!BYTE8(v85))
    {
      goto LABEL_16;
    }

    v12 = &kFigMetadataFormat_ISOUserData;
LABEL_19:
    v13 = *v12;
    v93 = 0;
    v94 = 0;
    v91 = 0;
    v92 = 0;
    v90 = 0;
    if (*(&v82 + 1))
    {
      v14 = v85 == 0;
    }

    else
    {
      v14 = 1;
    }

    v16 = v14 || v82 >= v80;
    v79 = v16;
    Value = CFDictionaryGetValue(a2, v13);
    if (Value)
    {
      Mutable = CFRetain(Value);
    }

    else
    {
      Mutable = 0;
    }

    v95 = Mutable;
    v19 = CFDictionaryGetValue(a2, @"com.apple.quicktime.mdta");
    structureAllocator = v9;
    if (v19)
    {
      v20 = CFRetain(v19);
    }

    else
    {
      v20 = 0;
    }

    v21 = CFDictionaryGetValue(a2, @"com.apple.itunes");
    v78 = v13;
    if (v21)
    {
      v22 = CFRetain(v21);
      v23 = v22;
      v94 = v22;
      if (!Mutable)
      {
        if (v22)
        {
          MetadataBBufFromMetadataArray = figMDRW_CreateMetadataBBufFromMetadataArray(v22, @"com.apple.itunes", *(&v84 + 1), &v92);
          if (MetadataBBufFromMetadataArray)
          {
            goto LABEL_217;
          }

          v28 = v92;
          if (v92)
          {
            DataLength = CMBlockBufferGetDataLength(v92);
            if (DataLength != *(&v84 + 1))
            {
              CFRelease(v28);
              v92 = 0;
              MetadataBBufFromMetadataArray = figMDRW_CopyMetadataArrayFromByteStream(&cf, v78, &v95);
              if (MetadataBBufFromMetadataArray)
              {
                goto LABEL_217;
              }

              Mutable = v95;
              if (!v95)
              {
                Mutable = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
                v95 = Mutable;
                if (!Mutable)
                {
                  FigRewriteMetadata_cold_1(&v108);
                  v11 = v108;
                  goto LABEL_164;
                }
              }

              v26 = v20;
              UserDataBBufWithiTunes = figMDRW_CreateUserDataBBufWithiTunes(Mutable, *(&v83 + 1), v23, v78, &v93);
              if (UserDataBBufWithiTunes)
              {
                goto LABEL_219;
              }

              v25 = v93;
              if (v93)
              {
                goto LABEL_44;
              }

LABEL_49:
              v28 = 0;
              goto LABEL_51;
            }
          }

          v26 = v20;
        }

        else
        {
          v26 = v20;
          v28 = 0;
        }

        v25 = 0;
        Mutable = 0;
LABEL_51:
        v29 = 1;
LABEL_52:
        v30 = 0;
        v31 = 1;
        if (!v29 || !v26)
        {
LABEL_54:
          if (v29 && v31)
          {
            v108 = 0;
            v20 = v26;
            if (!v30 || (MetadataBBufFromMetadataArray = CMByteStreamWriteBlockBuffer(), !MetadataBBufFromMetadataArray))
            {
              if (v25 || v28)
              {
                v11 = CMByteStreamWriteBlockBuffer();
              }

              else
              {
                v11 = 0;
              }

              v46 = v79;
              if (a4 && !v11)
              {
                v47 = 0;
LABEL_161:
                v11 = 0;
                *a4 = v46;
                goto LABEL_162;
              }

              goto LABEL_164;
            }

LABEL_217:
            v11 = MetadataBBufFromMetadataArray;
            goto LABEL_164;
          }

          v97 = 0;
          v98 = 0;
          sourceBytes = 0;
          v20 = v26;
          if (v26)
          {
            v32 = CFRetain(v26);
          }

          else
          {
            v32 = 0;
          }

          v101 = v32;
          if (Mutable)
          {
            v33 = CFRetain(Mutable);
          }

          else
          {
            v33 = 0;
          }

          v100 = v33;
          if (v23)
          {
            v34 = CFRetain(v23);
          }

          else
          {
            v34 = 0;
          }

          v99 = v34;
          v109 = 0;
          v108 = 0;
          v104 = 0;
          blockBufferOut = 0;
          v102 = 0;
          v103 = 0;
          if (!*(&v82 + 1))
          {
            goto LABEL_157;
          }

          v35 = cf;
          v36 = v80;
          v37 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (!v37)
          {
            v45 = 0;
            v11 = 4294954514;
            goto LABEL_115;
          }

          v38 = v37(v35, 4, v36, &v109, &v108);
          if (v38)
          {
            goto LABEL_221;
          }

          v39 = bswap32(v109);
          v109 = v39;
          v106 = 0;
          v107 = 0;
          v40 = v84;
          if (*(&v83 + 1))
          {
            v41 = *(&v80 + 1);
            if (v84)
            {
              if (*(&v80 + 1) <= v81)
              {
                v42 = v81;
              }

              else
              {
                v42 = *(&v80 + 1);
              }

              if (*(&v80 + 1) < v81)
              {
                v43 = *(&v83 + 1);
              }

              else
              {
                v41 = v81;
                v43 = v84;
              }

              v107 = v43;
              if (*(&v80 + 1) >= v81)
              {
                v40 = *(&v83 + 1);
              }

              v44 = &v106;
            }

            else
            {
              v42 = 0;
              v44 = &v107;
              v40 = *(&v83 + 1);
            }
          }

          else
          {
            if (!v84)
            {
              v50 = 0;
              v41 = 0;
              v42 = 0;
LABEL_96:
              v51 = v80;
              if (v50)
              {
                v52 = v41 - v80;
              }

              else
              {
                v52 = v39;
              }

              v53 = cf;
              v54 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v54)
              {
                v55 = v54(v53, v52, v51, &v104, &v108);
                if (v55)
                {
                  goto LABEL_224;
                }

                v56 = v106;
                v57 = v39;
                if (v50)
                {
                  if (!v106)
                  {
                    v42 = v80 + v39;
                  }

                  v58 = cf;
                  v59 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                  if (!v59)
                  {
                    goto LABEL_113;
                  }

                  v51 = v41 + v50;
                  v60 = v42 - (v41 + v50);
                  v55 = v59(v58, v60, v51, &v103, &v108);
                  v57 = v60;
                  if (v55)
                  {
                    goto LABEL_224;
                  }
                }

                if (!v56)
                {
LABEL_109:
                  if (!v104)
                  {
                    v66 = 0;
                    v20 = v26;
                    goto LABEL_197;
                  }

                  v55 = CMBlockBufferCreateEmpty(structureAllocator, 8u, 1u, &blockBufferOut);
                  if (!v55)
                  {
                    appended = CMBlockBufferAppendBufferReference(blockBufferOut, v104, 0, 0, 0);
                    v20 = v26;
                    if (appended)
                    {
                      v11 = appended;
                      v45 = 0;
                      goto LABEL_115;
                    }

                    v66 = blockBufferOut;
LABEL_197:
                    if (v103)
                    {
                      v38 = CMBlockBufferAppendBufferReference(v66, v103, 0, 0, 0);
                      if (v38)
                      {
                        goto LABEL_221;
                      }

                      v66 = blockBufferOut;
                    }

                    if (!v102)
                    {
LABEL_203:
                      v76 = CMBlockBufferGetDataLength(v66);
                      if (!HIDWORD(v76))
                      {
                        v109 = bswap32(v76);
                        v11 = CMBlockBufferReplaceDataBytes(&v109, blockBufferOut, 0, 4uLL);
                        if (!v11)
                        {
                          v45 = blockBufferOut;
                          blockBufferOut = 0;
                          goto LABEL_115;
                        }

                        goto LABEL_222;
                      }

                      FigRewriteMetadata_cold_2(v110);
                      v45 = 0;
                      v11 = v110[0];
LABEL_115:
                      if (v102)
                      {
                        CFRelease(v102);
                      }

                      if (v103)
                      {
                        CFRelease(v103);
                      }

                      if (v104)
                      {
                        CFRelease(v104);
                      }

                      if (blockBufferOut)
                      {
                        CFRelease(blockBufferOut);
                      }

                      if (v11)
                      {
                        goto LABEL_189;
                      }

                      if (v45)
                      {
                        v67 = v101;
                        if (v101)
                        {
                          goto LABEL_187;
                        }

                        v68 = figMDRW_CopyMetadataArrayFromByteStream(&cf, @"com.apple.quicktime.mdta", &v101);
                        if (v68)
                        {
                          goto LABEL_188;
                        }

                        v67 = v101;
                        if (v101)
                        {
LABEL_187:
                          v68 = figMDRW_CreateMetadataBBufFromMetadataArray(v67, @"com.apple.quicktime.mdta", 0, &v98);
                          if (v68)
                          {
                            goto LABEL_188;
                          }
                        }

                        v69 = v100;
                        if (!v100)
                        {
                          v68 = figMDRW_CopyMetadataArrayFromByteStream(&cf, v78, &v100);
                          if (v68)
                          {
                            goto LABEL_188;
                          }

                          v69 = v100;
                          if (!v100)
                          {
                            v69 = CFArrayCreateMutable(structureAllocator, 0, MEMORY[0x1E695E9C0]);
                            v100 = v69;
                            if (!v69)
                            {
                              FigRewriteMetadata_cold_3(&v108);
                              v47 = 0;
                              v11 = v108;
LABEL_141:
                              v71 = v97;
                              if (!v97)
                              {
                                goto LABEL_143;
                              }

                              goto LABEL_142;
                            }
                          }
                        }

                        v70 = v99;
                        if (v99)
                        {
LABEL_135:
                          figMDRW_CreateUserDataBBufWithiTunes(v69, 0, v70, v78, &v97);
                          if (!v98 || (v68 = CMBlockBufferAppendBufferReference(v45, v98, 0, 0, 0), !v68))
                          {
                            v71 = v97;
                            if (v97)
                            {
                              v72 = CMBlockBufferAppendBufferReference(v45, v97, 0, 0, 0);
                              if (v72)
                              {
                                v11 = v72;
                                v47 = 0;
LABEL_142:
                                CFRelease(v71);
LABEL_143:
                                if (v98)
                                {
                                  CFRelease(v98);
                                }

                                if (v45)
                                {
                                  CFRelease(v45);
                                }

                                if (v99)
                                {
                                  CFRelease(v99);
                                }

                                if (v100)
                                {
                                  CFRelease(v100);
                                }

                                if (v101)
                                {
                                  CFRelease(v101);
                                }

                                if (v11)
                                {
LABEL_162:
                                  if (!v47)
                                  {
                                    goto LABEL_164;
                                  }

                                  goto LABEL_163;
                                }

                                if (v47)
                                {
                                  v73 = figMDRW_RewriteMovieHeader(cf, v80, *(&v82 + 1));
                                  if (v73)
                                  {
                                    v11 = v73;
                                    goto LABEL_163;
                                  }
                                }

LABEL_158:
                                v46 = v79;
                                if (v90)
                                {
                                  v46 = 0;
                                }

                                if (a4)
                                {
                                  goto LABEL_161;
                                }

                                v11 = 0;
                                if (!v47)
                                {
LABEL_164:
                                  if (v93)
                                  {
                                    CFRelease(v93);
                                  }

                                  if (v92)
                                  {
                                    CFRelease(v92);
                                  }

                                  if (v91)
                                  {
                                    CFRelease(v91);
                                  }

                                  if (v94)
                                  {
                                    CFRelease(v94);
                                  }

                                  if (v95)
                                  {
                                    CFRelease(v95);
                                  }

                                  if (v20)
                                  {
                                    CFRelease(v20);
                                  }

                                  if (v8)
                                  {
                                    goto LABEL_177;
                                  }

                                  goto LABEL_178;
                                }

LABEL_163:
                                CFRelease(v47);
                                goto LABEL_164;
                              }
                            }

                            sourceBytes = bswap32(CMBlockBufferGetDataLength(v45));
                            v11 = CMBlockBufferReplaceDataBytes(&sourceBytes, v45, 0, 4uLL);
                            if (!v11)
                            {
                              v47 = v45;
                              v45 = 0;
                              goto LABEL_141;
                            }

                            goto LABEL_189;
                          }

                          goto LABEL_188;
                        }

                        v68 = figMDRW_CopyMetadataArrayFromByteStream(&cf, @"com.apple.itunes", &v99);
                        if (!v68)
                        {
                          v70 = v99;
                          goto LABEL_135;
                        }

LABEL_188:
                        v11 = v68;
LABEL_189:
                        v47 = 0;
                        goto LABEL_141;
                      }

LABEL_157:
                      v47 = 0;
                      goto LABEL_158;
                    }

                    v38 = CMBlockBufferAppendBufferReference(v66, v102, 0, 0, 0);
                    if (!v38)
                    {
                      v66 = blockBufferOut;
                      goto LABEL_203;
                    }

LABEL_221:
                    v11 = v38;
LABEL_222:
                    v45 = 0;
                    goto LABEL_115;
                  }

                  goto LABEL_224;
                }

                v61 = v57;
                v62 = v80;
                v63 = cf;
                v64 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v64)
                {
                  v55 = v64(v63, v39 - (v51 + v56 + v61) + v62);
                  if (!v55)
                  {
                    goto LABEL_109;
                  }

LABEL_224:
                  v11 = v55;
                  v45 = 0;
                  goto LABEL_114;
                }
              }

LABEL_113:
              v45 = 0;
              v11 = 4294954514;
LABEL_114:
              v20 = v26;
              goto LABEL_115;
            }

            v42 = 0;
            v44 = &v107;
            v41 = v81;
          }

          *v44 = v40;
          v50 = v107;
          goto LABEL_96;
        }

        UserDataBBufWithiTunes = figMDRW_CreateMetadataBBufFromMetadataArray(v26, @"com.apple.quicktime.mdta", v84, &v91);
        if (!UserDataBBufWithiTunes)
        {
          v30 = v91;
          if (v91)
          {
            v49 = CMBlockBufferGetDataLength(v91);
            v31 = v49 == v84;
          }

          else
          {
            v31 = 1;
          }

          goto LABEL_54;
        }

LABEL_219:
        v11 = UserDataBBufWithiTunes;
        v20 = v26;
        goto LABEL_164;
      }

      if (v22)
      {
LABEL_41:
        MetadataBBufFromMetadataArray = figMDRW_CreateUserDataBBufWithiTunes(Mutable, *(&v83 + 1), v23, v13, &v93);
        if (MetadataBBufFromMetadataArray)
        {
          goto LABEL_217;
        }

        v25 = v93;
        if (v93)
        {
          v26 = v20;
LABEL_44:
          v27 = CMBlockBufferGetDataLength(v25);
          v28 = 0;
          v29 = v27 == *(&v83 + 1);
          goto LABEL_52;
        }

        v26 = v20;
        goto LABEL_49;
      }
    }

    else
    {
      v94 = 0;
      if (!Mutable)
      {
        v26 = v20;
        v28 = 0;
        v25 = 0;
        v23 = 0;
        goto LABEL_51;
      }
    }

    MetadataBBufFromMetadataArray = figMDRW_CopyMetadataArrayFromByteStream(&cf, @"com.apple.itunes", &v94);
    if (MetadataBBufFromMetadataArray)
    {
      goto LABEL_217;
    }

    v23 = v94;
    goto LABEL_41;
  }

  if (v86[1])
  {
    v10 = figMDRW_RewriteMovieHeader(cf, v80, *(&v82 + 1));
    if (!v10)
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      v10 = FigRewriteMetadata(a1, a2, a3, a4);
    }

LABEL_12:
    v11 = v10;
    if (!v8)
    {
      goto LABEL_178;
    }

LABEL_177:
    CFRelease(v8);
    goto LABEL_178;
  }

  v11 = 4294954709;
  if (v8)
  {
    goto LABEL_177;
  }

LABEL_178:
  if (v86[1])
  {
    CFRelease(v86[1]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  return v11;
}

uint64_t GetDataCompressionAtom(uint64_t a1, uint64_t a2)
{
  result = FigAtomStreamReadCurrentAtomData();
  *(a2 + 100) = bswap32(0);
  return result;
}

void *InitInflatorLibrary()
{
  result = dlopen("/usr/lib/libz.dylib", 6);
  if (result)
  {
    v1 = result;
    _MergedGlobals_82 = dlsym(result, "inflateInit_");
    off_1ED4CAF38 = dlsym(v1, "inflate");
    result = dlsym(v1, "inflateEnd");
    off_1ED4CAF40 = result;
  }

  return result;
}

void figMDRW_MergeQuickTimeMetadataApplierFunc(const void *a1, CFMutableDictionaryRef a2, uint64_t a3)
{
  value = 0;
  cf = 0;
  theArray = 0;
  if (!FigQuickTimeMetadataCopyNativeKeysFromCommonKey(a1, &theArray))
  {
    if (!theArray)
    {
      return;
    }

    if (CFArrayGetCount(theArray))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      if (CFEqual(a2, *MEMORY[0x1E695E738]))
      {
        CFDictionaryRemoveValue(*(a3 + 8), ValueAtIndex);
        goto LABEL_34;
      }

      v6 = CFGetTypeID(a2);
      if (v6 != CFDictionaryGetTypeID())
      {
        v11 = CFGetTypeID(a2);
        TypeID = CFStringGetTypeID();
        ItemFromValue = figMDRW_CreateItemFromValue(a2, v11 == TypeID);
        MutableCopy = ItemFromValue;
        if (v11 == TypeID)
        {
          v10 = 0;
          value = CFDictionaryGetValue(ItemFromValue, @"locale");
        }

        else
        {
          v10 = 1;
        }

        goto LABEL_18;
      }

      v7 = CFDictionaryGetValue(a2, @"value");
      if (v7)
      {
        v8 = CFGetTypeID(v7);
        if (v8 != CFStringGetTypeID())
        {
          MutableCopy = 0;
          v10 = 1;
          goto LABEL_19;
        }

        value = CFDictionaryGetValue(a2, @"locale");
        if (value)
        {
          MutableCopy = 0;
          v10 = 0;
          if (!CFDictionaryGetValueIfPresent(*(a3 + 8), ValueAtIndex, &cf))
          {
            goto LABEL_29;
          }

LABEL_19:
          v14 = CFGetTypeID(cf);
          v15 = CFArrayGetTypeID();
          v16 = cf;
          if (v14 == v15)
          {
            if ((v10 & 1) != 0 || (Count = CFArrayGetCount(cf), Count < 1))
            {
LABEL_26:
              CFArrayAppendValue(v16, a2);
            }

            else
            {
              v18 = Count;
              v19 = 0;
              while (1)
              {
                v20 = CFArrayGetValueAtIndex(v16, v19);
                v21 = CFDictionaryGetValue(v20, @"locale");
                if (figMDRW_LocaleIsEqual(v21, value, 0))
                {
                  break;
                }

                if (v18 == ++v19)
                {
                  goto LABEL_26;
                }
              }

              CFArraySetValueAtIndex(v16, v19, a2);
            }

            goto LABEL_32;
          }

          v22 = CFDictionaryGetValue(cf, @"locale");
          if ((v10 & 1) != 0 || !figMDRW_LocaleIsEqual(v22, value, 0))
          {
            Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
            if (Mutable)
            {
              v24 = Mutable;
              CFArrayAppendValue(Mutable, v16);
              CFArrayAppendValue(v24, a2);
              CFDictionarySetValue(*(a3 + 8), ValueAtIndex, v24);
              CFRelease(v24);
            }

            else
            {
              figMDRW_MergeQuickTimeMetadataApplierFunc_cold_1();
            }
          }

          else
          {
LABEL_29:
            CFDictionarySetValue(*(a3 + 8), ValueAtIndex, a2);
          }

LABEL_32:
          if (MutableCopy)
          {
            CFRelease(MutableCopy);
          }

          goto LABEL_34;
        }

        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
        FigMetadataCopyCurrentLocaleAndLangCode(&value, 0);
        if (value)
        {
          CFDictionaryAddValue(MutableCopy, @"locale", value);
          CFRelease(value);
        }

        v10 = 0;
LABEL_18:
        a2 = MutableCopy;
        goto LABEL_19;
      }

      figMDRW_MergeQuickTimeMetadataApplierFunc_cold_2();
    }
  }

LABEL_34:
  if (theArray)
  {
    CFRelease(theArray);
  }
}

uint64_t figMDRW_WriteMetadataApplierFunc(uint64_t a1, const void *a2, uint64_t a3)
{
  FigMetadataWriter = FigMetadataSerializerGetFigMetadataWriter(*(a3 + 24));
  v7 = CFGetTypeID(a2);
  if (v7 == CFArrayGetTypeID())
  {
    result = CFArrayGetCount(a2);
    if (result >= 1)
    {
      v9 = result;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
        result = CFDictionaryGetValue(ValueAtIndex, @"value");
        if (result)
        {
          v12 = result;
          v13 = *(a3 + 32);
          VTable = CMBaseObjectGetVTable();
          v15 = *(VTable + 16);
          result = VTable + 16;
          v16 = *(v15 + 8);
          if (v16)
          {
            result = v16(FigMetadataWriter, v13, a1, v12, ValueAtIndex);
          }
        }
      }
    }
  }

  else
  {
    result = CFDictionaryGetValue(a2, @"value");
    if (result)
    {
      v17 = result;
      v18 = *(a3 + 32);
      v19 = CMBaseObjectGetVTable();
      v20 = *(v19 + 16);
      result = v19 + 16;
      v21 = *(v20 + 8);
      if (v21)
      {

        return v21(FigMetadataWriter, v18, a1, v17, a2);
      }
    }
  }

  return result;
}

void figMDRW_MergeUserData(void *a1, uint64_t a2, CFArrayRef theArray)
{
  value = 0;
  number = 0;
  cf = 0;
  valuePtr = 0;
  if (!theArray)
  {
    return;
  }

  v3 = theArray;
  if (CFArrayGetCount(theArray) < 1)
  {
    goto LABEL_58;
  }

  v6 = 0;
  v7 = *MEMORY[0x1E695E480];
  v8 = *MEMORY[0x1E695E738];
  v32 = a2;
  allocator = *MEMORY[0x1E695E480];
  v34 = *MEMORY[0x1E695E738];
  while (1)
  {
    valuePtr = CFArrayGetValueAtIndex(v3, v6);
    v9 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
    if (!v9)
    {
      figMDRW_MergeUserData_cold_2();
      goto LABEL_58;
    }

    v10 = v9;
    v11 = HIBYTE(valuePtr) << 24;
    if (!CFEqual(a1, v8))
    {
      break;
    }

    CFDictionaryRemoveValue(*(a2 + 8), v10);
LABEL_33:
    CFRelease(v10);
    if (++v6 >= CFArrayGetCount(v3))
    {
      goto LABEL_58;
    }
  }

  v12 = CFGetTypeID(a1);
  if (v12 != CFDictionaryGetTypeID())
  {
    ItemFromValue = figMDRW_CreateItemFromValue(a1, v11 == -1459617792);
    MutableCopy = ItemFromValue;
    if (v11 == -1459617792)
    {
      cf = CFDictionaryGetValue(ItemFromValue, @"locale");
    }

    v15 = MutableCopy;
    goto LABEL_16;
  }

  if (v11 != -1459617792)
  {
    MutableCopy = 0;
    v15 = a1;
LABEL_16:
    v8 = v34;
    goto LABEL_17;
  }

  cf = CFDictionaryGetValue(a1, @"locale");
  v13 = CFDictionaryGetValue(a1, @"languageCode");
  number = v13;
  v8 = v34;
  if (cf && v13)
  {
    MutableCopy = 0;
    v15 = a1;
    goto LABEL_17;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v7, 0, a1);
  v28 = a2;
  if (cf | number)
  {
    if (cf)
    {
      v29 = FigMetadataCopyLangCodeFromLocale(cf);
      v30 = 0;
      number = v29;
    }

    else
    {
      if (number && (v35 = 0, CFNumberGetValue(number, kCFNumberSInt16Type, &v35)))
      {
        v30 = FigCFLocaleCreateWithMovieLangCode();
        cf = v30;
      }

      else
      {
        v30 = 0;
      }

      v29 = 0;
    }

    v31 = cf;
    if (!cf)
    {
      goto LABEL_47;
    }
  }

  else
  {
    FigMetadataCopyCurrentLocaleAndLangCode(&cf, &number);
    v31 = cf;
    v29 = number;
    v30 = cf;
    if (!cf)
    {
      goto LABEL_47;
    }
  }

  CFDictionaryAddValue(MutableCopy, @"locale", v31);
LABEL_47:
  if (number)
  {
    CFDictionaryAddValue(MutableCopy, @"languageCode", number);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  v15 = MutableCopy;
  a2 = v28;
LABEL_17:
  if (!CFDictionaryGetValueIfPresent(*(a2 + 8), v10, &value))
  {
LABEL_28:
    CFDictionarySetValue(*(a2 + 8), v10, v15);
LABEL_31:
    v7 = allocator;
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    goto LABEL_33;
  }

  v17 = CFGetTypeID(value);
  TypeID = CFArrayGetTypeID();
  v19 = value;
  if (v17 != TypeID)
  {
    v25 = CFDictionaryGetValue(value, @"locale");
    if (v11 != -1459617792 || !figMDRW_LocaleIsEqual(v25, cf, 1))
    {
      Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
      if (!Mutable)
      {
        figMDRW_MergeUserData_cold_1();
        goto LABEL_55;
      }

      v27 = Mutable;
      CFArrayAppendValue(Mutable, v19);
      CFArrayAppendValue(v27, v15);
      a2 = v32;
      CFDictionarySetValue(*(v32 + 8), v10, v27);
      CFRelease(v27);
      goto LABEL_31;
    }

    a2 = v32;
    goto LABEL_28;
  }

  if (v11 != -1459617792 || (Count = CFArrayGetCount(value), Count < 1))
  {
LABEL_24:
    CFArrayAppendValue(v19, v15);
    a2 = v32;
    v8 = v34;
    goto LABEL_31;
  }

  v21 = Count;
  v22 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v19, v22);
    v24 = CFDictionaryGetValue(ValueAtIndex, @"locale");
    if (figMDRW_LocaleIsEqual(v24, cf, 1))
    {
      break;
    }

    if (v21 == ++v22)
    {
      goto LABEL_24;
    }
  }

  CFArraySetValueAtIndex(v19, v22, v15);
LABEL_55:
  CFRelease(v3);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v3 = v10;
LABEL_58:
  CFRelease(v3);
}

__CFDictionary *figMDRW_CreateItemFromValue(const void *a1, int a2)
{
  cf = 0;
  value = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = Mutable;
  if (Mutable)
  {
    CFDictionaryAddValue(Mutable, @"value", a1);
    if (a2)
    {
      FigMetadataCopyCurrentLocaleAndLangCode(&value, &cf);
      if (value)
      {
        CFDictionaryAddValue(v5, @"locale", value);
      }

      if (cf)
      {
        CFDictionaryAddValue(v5, @"languageCode", cf);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
  }

  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

BOOL figMDRW_LocaleIsEqual(const __CFLocale *a1, const __CFLocale *a2, int a3)
{
  if (!a1 || !a2)
  {
    return (a1 | a2) == 0;
  }

  if (a3)
  {
    v4 = *MEMORY[0x1E695E6F0];
    Value = CFLocaleGetValue(a1, *MEMORY[0x1E695E6F0]);
    v6 = CFLocaleGetValue(a2, v4);
  }

  else
  {
    Value = MEMORY[0x19A8CD070]();
    v6 = MEMORY[0x19A8CD070](a2);
  }

  return CFEqual(Value, v6) != 0;
}

uint64_t figMDRW_CopyMetadataArrayFromByteStream(uint64_t *a1, void *key, __CFArray **a3)
{
  theDict = 0;
  value = 0;
  v6 = a1[1];
  if (v6)
  {
    goto LABEL_24;
  }

  v7 = *a1;
  theArray = 0;
  cf = 0;
  keya = 0;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = FigFormatReaderCreateForStream(v7, v8, 0, &cf);
    if (v10)
    {
LABEL_58:
      v20 = v10;
      goto LABEL_16;
    }

    FigBaseObject = FigFormatReaderGetFigBaseObject(cf);
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v10 = v12(FigBaseObject, @"MetadataReaders", v8, &theArray);
      if (!v10)
      {
        if (theArray && (Count = CFArrayGetCount(theArray), Count >= 1))
        {
          v14 = Count;
          v15 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v15);
            v17 = FigMetadataReaderGetFigBaseObject();
            v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v18)
            {
              v20 = 4294954514;
              goto LABEL_51;
            }

            v19 = v18(v17, @"format", v8, &keya);
            if (v19)
            {
              break;
            }

            CFDictionaryAddValue(Mutable, keya, ValueAtIndex);
            if (keya)
            {
              CFRelease(keya);
              keya = 0;
            }

            if (v14 == ++v15)
            {
              goto LABEL_14;
            }
          }

          v20 = v19;
LABEL_51:
          if (keya)
          {
            CFRelease(keya);
          }
        }

        else
        {
LABEL_14:
          v20 = 0;
          a1[1] = Mutable;
          Mutable = 0;
        }

        goto LABEL_16;
      }

      goto LABEL_58;
    }

    v20 = 4294954514;
  }

  else
  {
    figMDRW_CopyMetadataArrayFromByteStream_cold_1(&v40);
    v20 = v40;
  }

LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v20)
  {
    goto LABEL_42;
  }

  v6 = a1[1];
LABEL_24:
  v21 = CFDictionaryGetValue(v6, key);
  if (v21 && (v22 = v21, (v23 = *(*(CMBaseObjectGetVTable() + 16) + 40)) != 0) && (v24 = v23(v22, 0, 0), v24 >= 1))
  {
    v25 = v24;
    v26 = 0;
    v27 = 0;
    v28 = *MEMORY[0x1E695E480];
    v29 = MEMORY[0x1E695E9C0];
    while (1)
    {
      v30 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v30)
      {
        v20 = 4294954514;
        goto LABEL_48;
      }

      v31 = v30(v22, 0, 0, v26, v28, &value, &theDict);
      if (v31)
      {
        break;
      }

      if (!theDict)
      {
        figMDRW_CopyMetadataArrayFromByteStream_cold_4(&cf);
LABEL_55:
        v20 = cf;
        goto LABEL_48;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(v28, 0, theDict);
      if (!MutableCopy)
      {
        figMDRW_CopyMetadataArrayFromByteStream_cold_3(&cf);
        goto LABEL_55;
      }

      v33 = MutableCopy;
      CFDictionaryAddValue(MutableCopy, @"value", value);
      if (!v27)
      {
        v27 = CFArrayCreateMutable(v28, 0, v29);
        if (!v27)
        {
          figMDRW_CopyMetadataArrayFromByteStream_cold_2(v33, &cf);
          v20 = cf;
          goto LABEL_42;
        }
      }

      CFArrayAppendValue(v27, v33);
      if (value)
      {
        CFRelease(value);
        value = 0;
      }

      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }

      CFRelease(v33);
      if (v25 == ++v26)
      {
        goto LABEL_41;
      }
    }

    v20 = v31;
LABEL_48:
    if (v27)
    {
      CFRelease(v27);
    }
  }

  else
  {
    v27 = 0;
LABEL_41:
    v20 = 0;
    *a3 = v27;
  }

LABEL_42:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v20;
}

uint64_t figID3CreateMetadataReaderCommon(CFAllocatorRef Default, const void *a2, uint64_t a3, char a4, void *a5)
{
  if (a2 && a5 && (a3 & 0x8000000000000000) == 0)
  {
    FigMetadataReaderGetClassID();
    Property = CMDerivedObjectCreate();
    if (Property)
    {
      return Property;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (!Default)
    {
      Default = CFAllocatorGetDefault();
    }

    *DerivedStorage = CFRetain(Default);
    *(DerivedStorage + 8) = CFRetain(a2);
    *(DerivedStorage + 16) = a3;
    Property = ID3ParserOpen();
    if (Property)
    {
      return Property;
    }

    Property = ID3ParserGetProperty();
    if (Property)
    {
      return Property;
    }

    *(DerivedStorage + 32) = 0;
    *(DerivedStorage + 65) = a4;
    v12 = ID3ParserGetProperty();
    if (!v12)
    {
      *(DerivedStorage + 40) = 0;
      *a5 = 0;
    }

    return v12;
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }
}

uint64_t FigMetadataReaderCreateForTimedID3(const __CFAllocator *a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = CMByteStreamCreateForBlockBuffer();
    if (v5)
    {
      return v5;
    }

    else
    {
      return figID3CreateMetadataReaderCommon(a1, 0, 0, 1, a3);
    }
  }

  else
  {
    FigMetadataReaderCreateForTimedID3_cold_1(&v8);
    return v8;
  }
}

void FigID3MetadataFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    ID3ParserClose();
  }

  v1 = *(DerivedStorage + 48);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 48) = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *FigID3MetadataCopyDebugDescription(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @" FigID3MetadataReader %p\n", DerivedStorage);
  v5 = CFCopyDescription(*(DerivedStorage + 8));
  if (v5)
  {
    v6 = v5;
    CFStringAppendFormat(Mutable, 0, @"  ByteStream = %@\n", v5);
    CFRelease(v6);
  }

  v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v7)
  {
    v8 = v7(a1, 0, 0);
    if (v8 >= 1)
    {
      v9 = v8;
      CFStringAppendFormat(Mutable, 0, @"  Item Count = %d\n", v8);
      for (i = 0; i != v9; ++i)
      {
        theDict = 0;
        cf = 0;
        v11 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v11 || v11(a1, 0, 0, i, v2, &cf, &theDict))
        {
          break;
        }

        CFStringAppendFormat(Mutable, 0, @"   [%d]:\n", i);
        if (cf)
        {
          v12 = CFCopyDescription(cf);
          if (v12)
          {
            v13 = v12;
            CFStringAppendFormat(Mutable, 0, @"    Value = %@\n", v12);
            CFRelease(v13);
          }

          CFRelease(cf);
        }

        if (theDict)
        {
          CFStringAppendFormat(Mutable, 0, @"    Properties:\n");
          CFDictionaryApplyFunction(theDict, metadataPropertiesCallback_2, Mutable);
          CFRelease(theDict);
        }
      }
    }
  }

  return Mutable;
}

uint64_t FigID3MetadataCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, @"complete"))
  {
    FigID3MetadataCopyProperty_cold_1(DerivedStorage, a4, &v10);
    return v10;
  }

  if (CFEqual(a2, @"format"))
  {
    v7 = CFRetain(@"org.id3");
LABEL_4:
    Property = 0;
LABEL_8:
    *a4 = v7;
    return Property;
  }

  if (!CFEqual(a2, @"formatVersion"))
  {
    if (!CFEqual(a2, @"size"))
    {
      return 4294954512;
    }

    v10 = DerivedStorage[4];
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &v10);
    goto LABEL_4;
  }

  LODWORD(v10) = 0;
  v11 = 4;
  Property = ID3ParserGetProperty();
  if (!Property)
  {
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v10);
    goto LABEL_8;
  }

  return Property;
}

void metadataPropertiesCallback_2(const void *a1, const void *a2, __CFString *a3)
{
  if (CFEqual(a1, @"key"))
  {
    v5 = CFGetTypeID(a2);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr))
      {
        valuePtr = bswap32(valuePtr);
        CFStringAppendFormat(a3, 0, @"     Key = %c%c%c%c\n", valuePtr, (valuePtr >> 8), (valuePtr << 8 >> 24), (valuePtr >> 24));
      }
    }

    else
    {
      v6 = CFGetTypeID(a2);
      if (v6 == CFStringGetTypeID())
      {
        CFStringAppendFormat(a3, 0, @"     Key = %@\n", a2);
      }
    }
  }
}

uint64_t FigID3MetadataCopyValue(uint64_t a1, CFTypeRef cf1, uint64_t a3, uint64_t a4, uint64_t a5, CFTypeRef *a6, CFTypeRef *a7)
{
  v19 = 0;
  cf = 0;
  if (!a1)
  {
    FigID3MetadataCopyValue_cold_5(&v21);
    goto LABEL_23;
  }

  if (!a3)
  {
    FigID3MetadataCopyValue_cold_4(&v21);
    goto LABEL_23;
  }

  if (!cf1)
  {
    FigID3MetadataCopyValue_cold_3(&v21);
    goto LABEL_23;
  }

  if (!a6)
  {
    FigID3MetadataCopyValue_cold_2(&v21);
    goto LABEL_23;
  }

  if (!CFEqual(cf1, @"comn") && !CFEqual(cf1, @"org.id3"))
  {
    FigID3MetadataCopyValue_cold_1(&v21);
    goto LABEL_23;
  }

  if (a7)
  {
    v14 = &v19;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v15)
  {
    v17 = 4294954514;
    goto LABEL_17;
  }

  v16 = v15(a1, cf1, a3, 0, a5, &cf, v14);
  if (v16)
  {
    v17 = v16;
LABEL_17:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_19;
  }

  if (a4 && CFGetTypeID(cf) != a4)
  {
    FigID3MetadataCopyValue_cold_6(&v21);
LABEL_23:
    v17 = v21;
    goto LABEL_17;
  }

  *a6 = cf;
  cf = 0;
  v17 = 0;
  if (a7)
  {
    *a7 = v19;
    return v17;
  }

LABEL_19:
  if (v19)
  {
    CFRelease(v19);
  }

  return v17;
}

CFIndex FigID3MetadataGetKeyCount(const void *a1, const void *a2)
{
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    FigID3MetadataGetKeyCount_cold_2();
    return 0;
  }

  v5 = DerivedStorage;
  if (a2 && !CFEqual(a2, @"org.id3"))
  {
    FigID3MetadataGetKeyCount_cold_1();
    return 0;
  }

  if (!*(v5 + 64))
  {
    if (!ID3ParserGetProperty())
    {
      Mutable = 0;
      do
      {
        if (!Mutable)
        {
          v8 = CFGetAllocator(a1);
          Mutable = CFSetCreateMutable(v8, 0, 0);
        }

        CFSetAddValue(Mutable, 0);
        ++v10;
      }

      while (!ID3ParserGetProperty());
      if (Mutable)
      {
        Count = CFSetGetCount(Mutable);
        *(v5 + 56) = Count;
        *(v5 + 64) = 1;
        CFRelease(Mutable);
        return Count;
      }
    }

    return 0;
  }

  return *(v5 + 56);
}

uint64_t FigID3MetadataCopyKeyAtIndex(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, CFNumberRef *a5)
{
  v11 = 0;
  if (!CMBaseObjectGetDerivedStorage())
  {
    FigID3MetadataCopyKeyAtIndex_cold_3(&valuePtr);
    return valuePtr;
  }

  if (!a5)
  {
    FigID3MetadataCopyKeyAtIndex_cold_2(&valuePtr);
    return valuePtr;
  }

  if (a2 && !CFEqual(a2, @"org.id3"))
  {
    FigID3MetadataCopyKeyAtIndex_cold_1(&valuePtr);
    return valuePtr;
  }

  v10 = 0;
  valuePtr = 0;
  while (!ID3ParserGetProperty())
  {
    if (HIDWORD(v11) == a3)
    {
      *a5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
      return 0;
    }

    ++HIDWORD(v11);
    v10 = 0;
    valuePtr = 0;
  }

  return 0;
}

uint64_t OUTLINED_FUNCTION_3_91()
{

  return ID3ParserGetProperty();
}

uint64_t FigPlayerServerStart()
{
  v3[0] = 1;
  v3[1] = HandlePlayerServerMessage;
  v3[2] = HandlePlayerServerNoReplyMessage;
  memset(&v3[3], 0, 24);
  FigPlayerCelesteOneTimeInitialization();
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    return FigSignalErrorAtGM();
  }

  else
  {
    IsMediaplaybackd = FigServer_IsMediaplaybackd();
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      FigPlayerServerStart_cold_1(IsMediaplaybackd, Mutable, v3, &v4);
    }

    else
    {
      FigPlayerServerStart_cold_2(&v4);
    }

    return v4;
  }
}

uint64_t HandlePlayerServerNoReplyMessage(uint64_t a1, void *a2)
{
  v9 = 0;
  v7[5] = 0;
  cf = 0;
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    goto LABEL_7;
  }

  xpc_dictionary_get_uint64(a2, *MEMORY[0x1E69615A0]);
  OpCode = FigXPCServerLookupAndRetainAssociatedObject();
  if (OpCode)
  {
    goto LABEL_7;
  }

  if (FigXPCPlaybackCoordinatorServerHandlesMessagesForObject(cf))
  {
    OpCode = FigXPCPlaybackCoordinatorServerHandleNoReplyMessage(cf);
LABEL_7:
    v4 = OpCode;
    goto LABEL_8;
  }

  if (FigXPCImageQueueGaugeServerHandlesMessagesForObject(cf))
  {
    OpCode = FigXPCImageQueueGaugeServerHandleNoReplyMessage(cf);
    goto LABEL_7;
  }

  v4 = 4294951138;
LABEL_8:
  if (_MergedGlobals_83 != -1)
  {
    HandlePlayerServerNoReplyMessage_cold_7();
  }

  v5 = qword_1ED4CAF50;
  dispatch_retain(qword_1ED4CAF50);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __HandlePlayerServerNoReplyMessage_block_invoke;
  v7[3] = &__block_descriptor_tmp_162;
  v7[4] = cf;
  dispatch_async(v5, v7);
  dispatch_release(v5);
  return v4;
}

void __HandlePlayerServerMessage_block_invoke(uint64_t a1)
{
  v337 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  if (v2 <= 1346529645)
  {
    if (v2 > 1231320433)
    {
      if (v2 > 1232302194)
      {
        if (v2 <= 1232303212)
        {
          switch(v2)
          {
            case 1232302195:
              v217 = *(*(*(a1 + 40) + 8) + 24);
              v219 = *(a1 + 64);
              v218 = *(a1 + 72);
              LOBYTE(v319[0]) = 0;
              *__str = 0;
              cf[0] = 0;
              *&v327 = 0;
              *&valuePtr = 0;
              v323[0] = 0;
              if (!v217 || (v220 = CFGetTypeID(v217), v220 != FigPlaybackItemGetTypeID()))
              {
                __HandlePlayerServerMessage_block_invoke_cold_7(v321);
                goto LABEL_642;
              }

              if (!v219)
              {
                __HandlePlayerServerMessage_block_invoke_cold_6(v321);
                goto LABEL_642;
              }

              if (!v218)
              {
                __HandlePlayerServerMessage_block_invoke_cold_5(v321);
                goto LABEL_642;
              }

              v80 = FigXPCMessageCopyCFDictionary();
              if (!v80)
              {
                __HandlePlayerServerMessage_block_invoke_cold_4(v321);
                goto LABEL_642;
              }

LABEL_323:
              v33 = v80;
LABEL_426:
              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              if (v323[0])
              {
                CFRelease(v323[0]);
              }

              goto LABEL_430;
            case 1232302695:
              v205 = *(*(*(a1 + 40) + 8) + 24);
              v207 = *(a1 + 64);
              v206 = *(a1 + 72);
              valuePtr = *MEMORY[0x1E6960C70];
              v326 = *(MEMORY[0x1E6960C70] + 16);
              *v323 = valuePtr;
              v324 = v326;
              *v321 = valuePtr;
              v322 = v326;
              if (!v205 || (v208 = CFGetTypeID(v205), v208 != FigPlaybackItemGetTypeID()))
              {
                __HandlePlayerServerMessage_block_invoke_cold_53(__str);
                goto LABEL_631;
              }

              if (!v207)
              {
                __HandlePlayerServerMessage_block_invoke_cold_52(__str);
                goto LABEL_631;
              }

              if (!v206)
              {
                __HandlePlayerServerMessage_block_invoke_cold_51(__str);
                goto LABEL_631;
              }

              CMTime = FigXPCMessageGetCMTime();
              if (CMTime)
              {
                goto LABEL_501;
              }

              uint64 = xpc_dictionary_get_uint64(v207, "TimeFlags");
              CMTime = FigXPCMessageGetCMTime();
              if (CMTime)
              {
                goto LABEL_501;
              }

              CMTime = FigXPCMessageGetCMTime();
              if (CMTime)
              {
                goto LABEL_501;
              }

              *v319 = valuePtr;
              v320 = v326;
              v317 = *v323;
              v318 = v324;
              v315 = *v321;
              v316 = v322;
              v210 = *(*(CMBaseObjectGetVTable() + 16) + 104);
              if (!v210)
              {
                goto LABEL_391;
              }

              *__str = *v319;
              *&v330 = v320;
              *cf = v317;
              *&v308 = v318;
              v327 = v315;
              v328 = v316;
              CMTime = v210(v205, __str, uint64, cf, &v327);
              if (CMTime)
              {
                goto LABEL_501;
              }

              break;
            case 1232302697:
              v11 = *(*(*(a1 + 40) + 8) + 24);
              v13 = *(a1 + 64);
              v12 = *(a1 + 72);
              valuePtr = *MEMORY[0x1E6960C70];
              v326 = *(MEMORY[0x1E6960C70] + 16);
              *v323 = valuePtr;
              v324 = v326;
              *v321 = valuePtr;
              v322 = v326;
              if (!v11 || (v14 = CFGetTypeID(v11), v14 != FigPlaybackItemGetTypeID()))
              {
                __HandlePlayerServerMessage_block_invoke_cold_50(__str);
                goto LABEL_631;
              }

              if (!v13)
              {
                __HandlePlayerServerMessage_block_invoke_cold_49(__str);
                goto LABEL_631;
              }

              if (!v12)
              {
                __HandlePlayerServerMessage_block_invoke_cold_48(__str);
                goto LABEL_631;
              }

              CMTime = FigXPCMessageGetCMTime();
              if (CMTime)
              {
                goto LABEL_501;
              }

              v15 = xpc_dictionary_get_uint64(v13, "TimeFlags");
              CMTime = FigXPCMessageGetCMTime();
              if (CMTime)
              {
                goto LABEL_501;
              }

              CMTime = FigXPCMessageGetCMTime();
              if (CMTime)
              {
                goto LABEL_501;
              }

              int64 = xpc_dictionary_get_int64(v13, "SeekID");
              *v319 = valuePtr;
              v320 = v326;
              v317 = *v323;
              v318 = v324;
              v315 = *v321;
              v316 = v322;
              v17 = *(*(CMBaseObjectGetVTable() + 16) + 144);
              if (!v17)
              {
                goto LABEL_391;
              }

              *__str = *v319;
              *&v330 = v320;
              *cf = v317;
              *&v308 = v318;
              v327 = v315;
              v328 = v316;
              CMTime = v17(v11, __str, v15, cf, &v327, int64);
              if (CMTime)
              {
                goto LABEL_501;
              }

              break;
            default:
              goto LABEL_460;
          }

          goto LABEL_331;
        }

        if (v2 == 1232303213)
        {
          v221 = *(*(*(a1 + 40) + 8) + 24);
          v223 = *(a1 + 64);
          v222 = *(a1 + 72);
          *cf = *MEMORY[0x1E6960C70];
          *&v308 = *(MEMORY[0x1E6960C70] + 16);
          if (!v221 || (v224 = CFGetTypeID(v221), v224 != FigPlaybackItemGetTypeID()))
          {
            __HandlePlayerServerMessage_block_invoke_cold_56(__str);
            goto LABEL_631;
          }

          if (!v223)
          {
            __HandlePlayerServerMessage_block_invoke_cold_55(__str);
            goto LABEL_631;
          }

          if (!v222)
          {
            __HandlePlayerServerMessage_block_invoke_cold_54(__str);
            goto LABEL_631;
          }

          CMTime = FigXPCMessageGetCMTime();
          if (CMTime)
          {
            goto LABEL_501;
          }

          v225 = xpc_dictionary_get_uint64(v223, "TimeFlags");
          v327 = *cf;
          v328 = v308;
          v226 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v226)
          {
            goto LABEL_391;
          }

          *__str = v327;
          *&v330 = v328;
          CMTime = v226(v221, __str, v225);
          if (CMTime)
          {
            goto LABEL_501;
          }

LABEL_331:
          serverXPCItem_addTimeSyncUpdateToMessage();
LABEL_332:
          v33 = 0;
          goto LABEL_506;
        }

        if (v2 == 1232303215)
        {
          v211 = *(*(*(a1 + 40) + 8) + 24);
          v213 = *(a1 + 64);
          v212 = *(a1 + 72);
          *cf = *MEMORY[0x1E6960C70];
          *&v308 = *(MEMORY[0x1E6960C70] + 16);
          *&valuePtr = 0;
          if (v211 && (v214 = CFGetTypeID(v211), v214 == FigPlaybackItemGetTypeID()))
          {
            if (v213)
            {
              if (v212)
              {
                v215 = FigXPCMessageGetCMTime();
                if (!v215)
                {
                  v215 = FigXPCMessageCopyCFDictionary();
                  if (!v215)
                  {
                    v327 = *cf;
                    v328 = v308;
                    v216 = *(*(CMBaseObjectGetVTable() + 16) + 176);
                    if (!v216)
                    {
                      v33 = -12782;
                      goto LABEL_504;
                    }

                    *__str = v327;
                    *&v330 = v328;
                    v215 = v216(v211, __str, valuePtr);
                    if (!v215)
                    {
                      serverXPCItem_addTimeSyncUpdateToMessage();
                      v33 = 0;
                      goto LABEL_504;
                    }
                  }
                }

                v33 = v215;
LABEL_504:
                v147 = valuePtr;
                if (!valuePtr)
                {
                  goto LABEL_506;
                }

LABEL_505:
                CFRelease(v147);
                goto LABEL_506;
              }

              __HandlePlayerServerMessage_block_invoke_cold_45(__str);
            }

            else
            {
              __HandlePlayerServerMessage_block_invoke_cold_46(__str);
            }
          }

          else
          {
            __HandlePlayerServerMessage_block_invoke_cold_47(__str);
          }

          v33 = *__str;
          goto LABEL_504;
        }

        if (v2 != 1232303216)
        {
          goto LABEL_460;
        }

        v72 = *(*(*(a1 + 40) + 8) + 24);
        v73 = *(a1 + 64);
        *__str = 0;
        cf[0] = 0;
        if (!v72 || (v74 = CFGetTypeID(v72), v74 != FigPlaybackItemGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_35(&v327);
          goto LABEL_641;
        }

        if (!v73)
        {
          __HandlePlayerServerMessage_block_invoke_cold_34(&v327);
          goto LABEL_641;
        }

        xpc_dictionary_get_uint64(v73, "TrackID");
        v75 = FigXPCMessageCopyCFString();
        if (!v75)
        {
          __HandlePlayerServerMessage_block_invoke_cold_33(&v327);
          goto LABEL_641;
        }

LABEL_452:
        v33 = v75;
        goto LABEL_453;
      }

      if (v2 > 1232233592)
      {
        if (v2 != 1232233593)
        {
          if (v2 != 1232298598)
          {
            if (v2 != 1232300900)
            {
              goto LABEL_460;
            }

            v44 = *(*(*(a1 + 40) + 8) + 24);
            v45 = *(a1 + 64);
            *__str = 0;
            if (v44 && (v46 = CFGetTypeID(v44), v46 == FigPlaybackItemGetTypeID()))
            {
              if (v45)
              {
                IDByAssociatingWithClientConnection = FigXPCMessageCopyCFDate();
                if (IDByAssociatingWithClientConnection)
                {
                  goto LABEL_417;
                }

                v47 = xpc_dictionary_get_int64(v45, "SeekID");
                v48 = *(*(CMBaseObjectGetVTable() + 16) + 128);
                if (v48)
                {
                  IDByAssociatingWithClientConnection = v48(v44, *__str, v47);
                  goto LABEL_417;
                }

                goto LABEL_418;
              }

              __HandlePlayerServerMessage_block_invoke_cold_43(cf);
            }

            else
            {
              __HandlePlayerServerMessage_block_invoke_cold_44(cf);
            }

            goto LABEL_603;
          }

          v118 = *(*(*(a1 + 40) + 8) + 24);
          v119 = *(a1 + 64);
          v120 = *(a1 + 72);
          *__str = 0;
          cf[0] = 0;
          *&v327 = 0;
          if (v118 && (v121 = CFGetTypeID(v118), v121 == FigPlaybackItemGetTypeID()))
          {
            if (v119)
            {
              if (v120)
              {
                v122 = FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon();
                if (v122)
                {
LABEL_196:
                  v33 = v122;
                  goto LABEL_409;
                }

                if (*(cf[0] + 6))
                {
                  v123 = xpc_dictionary_get_uint64(v119, "TrackID");
                  v124 = xpc_dictionary_get_uint64(v119, "ExtractionID");
                  v125 = *(*(CMBaseObjectGetVTable() + 16) + 168);
                  if (v125)
                  {
                    v122 = v125(v118, v123, v124, &v327);
                    if (!v122)
                    {
                      v122 = FigXPCMessageAddCMSampleBuffer();
                    }

                    goto LABEL_196;
                  }

                  v33 = -12782;
LABEL_409:
                  if (*__str)
                  {
                    CFRelease(*__str);
                  }

                  v290 = v327;
                  if (v327)
                  {
LABEL_454:
                    CFRelease(v290);
                  }

LABEL_455:
                  v147 = cf[0];
                  if (!cf[0])
                  {
                    goto LABEL_506;
                  }

                  goto LABEL_505;
                }

                __HandlePlayerServerMessage_block_invoke_cold_8(&valuePtr);
              }

              else
              {
                __HandlePlayerServerMessage_block_invoke_cold_9(&valuePtr);
              }
            }

            else
            {
              __HandlePlayerServerMessage_block_invoke_cold_10(&valuePtr);
            }
          }

          else
          {
            __HandlePlayerServerMessage_block_invoke_cold_11(&valuePtr);
          }

          v33 = valuePtr;
          goto LABEL_409;
        }

        v126 = *(*(*(a1 + 40) + 8) + 24);
        v128 = *(a1 + 64);
        v127 = *(a1 + 72);
        *__str = 0;
        LOBYTE(v327) = 0;
        if (!v126 || (v129 = CFGetTypeID(v126), v129 != FigPlaybackItemGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_32(cf);
          goto LABEL_603;
        }

        if (!v128)
        {
          __HandlePlayerServerMessage_block_invoke_cold_31(cf);
          goto LABEL_603;
        }

        if (!v127)
        {
          __HandlePlayerServerMessage_block_invoke_cold_30(cf);
          goto LABEL_603;
        }

        IDByAssociatingWithClientConnection = FigXPCMessageCopyCFArray();
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        v130 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v130)
        {
          goto LABEL_418;
        }

        IDByAssociatingWithClientConnection = v130(v126, *__str, &v327);
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        xpc_dictionary_set_BOOL(v127, "AlreadyReady", v327 != 0);
LABEL_464:
        v33 = 0;
        goto LABEL_465;
      }

      if (v2 > 1231515251)
      {
        if (v2 != 1231515252)
        {
          if (v2 == 1231647079)
          {
            v300 = *(*(*(a1 + 40) + 8) + 24);
            v301 = &kFigPlaybackItemProperty_ImageQueueGauge;
          }

          else
          {
            if (v2 != 1232103783)
            {
              goto LABEL_460;
            }

            v300 = *(*(*(a1 + 40) + 8) + 24);
            v301 = &kFigPlaybackItemProperty_PriorImageQueueGauge;
          }

          CMTime = serverXPCItem_HandleCopyImageQueueGaugeMessage(v300, *v301, *(a1 + 56), *(a1 + 64), *(a1 + 72));
          goto LABEL_501;
        }

        v100 = *(*(*(a1 + 40) + 8) + 24);
        v102 = *(a1 + 64);
        v101 = *(a1 + 72);
        *cf = *MEMORY[0x1E6960C70];
        *&v308 = *(MEMORY[0x1E6960C70] + 16);
        v327 = *cf;
        v328 = v308;
        if (!v100 || (v103 = CFGetTypeID(v100), v103 != FigPlaybackItemGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_23(__str);
          goto LABEL_631;
        }

        if (!v102)
        {
          __HandlePlayerServerMessage_block_invoke_cold_22(__str);
          goto LABEL_631;
        }

        if (!v101)
        {
          __HandlePlayerServerMessage_block_invoke_cold_21(__str);
          goto LABEL_631;
        }

        CMTime = FigXPCMessageGetCMTime();
        if (CMTime)
        {
          goto LABEL_501;
        }

        v104 = xpc_dictionary_get_uint64(v102, "ThumbnailFlags");
        valuePtr = *cf;
        v326 = v308;
        v105 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (!v105)
        {
          goto LABEL_391;
        }

        *__str = valuePtr;
        *&v330 = v326;
        CMTime = v105(v100, __str, v104, &v327);
        if (CMTime)
        {
          goto LABEL_501;
        }

        *__str = v327;
        *&v330 = v328;
LABEL_186:
        CMTime = FigXPCMessageSetCMTime();
        goto LABEL_501;
      }

      if (v2 != 1231320434)
      {
        goto LABEL_460;
      }

      v113 = *(*(*(a1 + 40) + 8) + 24);
      v115 = *(a1 + 64);
      v114 = *(a1 + 72);
      *__str = *MEMORY[0x1E6960C70];
      *&v330 = *(MEMORY[0x1E6960C70] + 16);
      if (v113 && (v116 = CFGetTypeID(v113), v116 == FigPlaybackItemGetTypeID()))
      {
        if (v115)
        {
          if (v114)
          {
            v117 = *(*(CMBaseObjectGetVTable() + 16) + 16);
            if (!v117)
            {
              goto LABEL_391;
            }

            CMTime = v117(v113, __str);
            if (CMTime)
            {
              goto LABEL_501;
            }

            *cf = *__str;
            *&v308 = v330;
            goto LABEL_186;
          }

          __HandlePlayerServerMessage_block_invoke_cold_57(cf);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_58(cf);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_59(cf);
      }

LABEL_608:
      v33 = cf[0];
      goto LABEL_506;
    }

    if (v2 > 1231250284)
    {
      if (v2 > 1231253604)
      {
        if (v2 != 1231253605)
        {
          if (v2 != 1231254640)
          {
            if (v2 != 1231317357)
            {
              goto LABEL_460;
            }

            v64 = *(*(*(a1 + 40) + 8) + 24);
            v66 = *(a1 + 64);
            v65 = *(a1 + 72);
            LODWORD(cf[0]) = 0;
            LODWORD(v327) = 0;
            if (!v64 || (v67 = CFGetTypeID(v64), v67 != FigPlaybackItemGetTypeID()))
            {
              __HandlePlayerServerMessage_block_invoke_cold_62(__str);
              goto LABEL_631;
            }

            if (!v66)
            {
              __HandlePlayerServerMessage_block_invoke_cold_61(__str);
              goto LABEL_631;
            }

            if (!v65)
            {
              __HandlePlayerServerMessage_block_invoke_cold_60(__str);
              goto LABEL_631;
            }

            v68 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (!v68)
            {
              goto LABEL_391;
            }

            CMTime = v68(v64, cf, &v327);
            if (CMTime)
            {
              goto LABEL_501;
            }

            xpc_dictionary_set_double(v65, "Width", *cf);
            xpc_dictionary_set_double(v65, "Height", *&v327);
            goto LABEL_332;
          }

          v153 = *(*(*(a1 + 40) + 8) + 24);
          v155 = *(a1 + 64);
          v154 = *(a1 + 72);
          *__str = 0;
          cf[0] = 0;
          if (!v153 || (v156 = CFGetTypeID(v153), v156 != FigPlaybackItemGetTypeID()))
          {
            __HandlePlayerServerMessage_block_invoke_cold_42(&v327);
            goto LABEL_641;
          }

          if (!v155)
          {
            __HandlePlayerServerMessage_block_invoke_cold_41(&v327);
            goto LABEL_641;
          }

          if (!v154)
          {
            __HandlePlayerServerMessage_block_invoke_cold_40(&v327);
            goto LABEL_641;
          }

          xpc_dictionary_get_uint64(v155, "TrackID");
          v75 = FigXPCMessageCopyCFString();
          if (!v75)
          {
            __HandlePlayerServerMessage_block_invoke_cold_39(&v327);
            goto LABEL_641;
          }

          goto LABEL_452;
        }

        v166 = *(*(*(a1 + 40) + 8) + 24);
        v167 = *(a1 + 56);
        v168 = *(a1 + 64);
        v134 = *(a1 + 72);
        *__str = 0;
        cf[0] = 0;
        if (!v166 || (v169 = CFGetTypeID(v166), v169 != FigPlaybackItemGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_14(&v327);
          goto LABEL_617;
        }

        if (!v168)
        {
          __HandlePlayerServerMessage_block_invoke_cold_13(&v327);
          goto LABEL_617;
        }

        if (!v134)
        {
          __HandlePlayerServerMessage_block_invoke_cold_12(&v327);
          goto LABEL_617;
        }

        FigBaseObject = FigPlaybackItemGetFigBaseObject(v166);
        v171 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v171)
        {
          goto LABEL_418;
        }

        IDByAssociatingWithClientConnection = v171(FigBaseObject, @"CPEProtector", *MEMORY[0x1E695E480], __str);
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        IDByAssociatingWithClientConnection = FigXPCCPEProtectorServerAssociateCopiedNeighborCPEProtector(v167);
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        v138 = *MEMORY[0x1E69615A0];
        v137 = cf[0];
        goto LABEL_463;
      }

      if (v2 != 1231250285)
      {
        if (v2 != 1231250804)
        {
          if (v2 != 1231251058)
          {
            goto LABEL_460;
          }

          v18 = *(*(*(a1 + 40) + 8) + 24);
          v19 = *(a1 + 56);
          v20 = *(a1 + 64);
          v21 = *(a1 + 72);
          *__str = 0;
          cf[0] = 0;
          if (v18 && (v22 = CFGetTypeID(v18), v22 == FigPlaybackItemGetTypeID()))
          {
            if (v20)
            {
              if (v21)
              {
                v23 = *(*(CMBaseObjectGetVTable() + 16) + 120);
                if (!v23)
                {
                  goto LABEL_418;
                }

                IDByAssociatingWithClientConnection = v23(v18, __str);
                if (IDByAssociatingWithClientConnection)
                {
                  goto LABEL_417;
                }

                if (FigRemote_ShouldConnectToMediaparserdForFileParsing() && FigFormatReaderIsRemote(*__str))
                {
                  v25 = *__str;
                  pid = xpc_connection_get_pid(v19);
                  FigFormatReaderXPCRemoteObtainObjectIDForOtherProcess(v25, pid, cf, v27, v28, v29, v30, v31, v305, v306, cf[0], cf[1], v308, *(&v308 + 1), v309, v310, v311, v312, v313, v314);
                  v33 = v32;
                }

                else
                {
                  IDByAssociatingWithClientConnection = FigXPCFormatReaderServerAssociateCopiedNeighborFormatReader(v19, *__str);
                  if (IDByAssociatingWithClientConnection)
                  {
                    goto LABEL_417;
                  }

                  v33 = 0;
                }

                xpc_dictionary_set_uint64(v21, "FormatReaderObjectID", cf[0]);
LABEL_465:
                v147 = *__str;
                if (!*__str)
                {
                  goto LABEL_506;
                }

                goto LABEL_505;
              }

              __HandlePlayerServerMessage_block_invoke_cold_18(&v327);
            }

            else
            {
              __HandlePlayerServerMessage_block_invoke_cold_19(&v327);
            }
          }

          else
          {
            __HandlePlayerServerMessage_block_invoke_cold_20(&v327);
          }

LABEL_617:
          v33 = v327;
          goto LABEL_465;
        }

        v148 = *(*(*(a1 + 40) + 8) + 24);
        v149 = *(a1 + 64);
        v134 = *(a1 + 72);
        *__str = 0;
        cf[0] = 0;
        if (!v148 || (v150 = CFGetTypeID(v148), v150 != FigPlaybackItemGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_3(&v327);
          goto LABEL_617;
        }

        if (!v149)
        {
          __HandlePlayerServerMessage_block_invoke_cold_2(&v327);
          goto LABEL_617;
        }

        if (!v134)
        {
          __HandlePlayerServerMessage_block_invoke_cold_1(&v327);
          goto LABEL_617;
        }

        v151 = FigPlaybackItemGetFigBaseObject(v148);
        v152 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v152)
        {
          goto LABEL_418;
        }

        IDByAssociatingWithClientConnection = v152(v151, @"MetricEventTimeline", *MEMORY[0x1E695E480], __str);
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        if (*__str)
        {
          IDByAssociatingWithClientConnection = FigMetricEventTimelineGetIDByAssociatingWithClientConnection();
          if (IDByAssociatingWithClientConnection)
          {
            goto LABEL_417;
          }

          v137 = cf[0];
        }

        else
        {
          v137 = 0;
        }

        v138 = *MEMORY[0x1E69615A0];
        goto LABEL_463;
      }

      v159 = *(*(*(a1 + 40) + 8) + 24);
      v161 = *(a1 + 64);
      v160 = *(a1 + 72);
      *__str = 0;
      cf[0] = 0;
      *&v327 = 0;
      if (v159 && (v162 = CFGetTypeID(v159), v162 == FigPlaybackItemGetTypeID()))
      {
        if (v161)
        {
          if (v160)
          {
            CommonMetadataBinaryPListData = FigXPCMessageCopyCFArray();
            if (CommonMetadataBinaryPListData)
            {
LABEL_249:
              v33 = CommonMetadataBinaryPListData;
              goto LABEL_430;
            }

            v164 = *(*(CMBaseObjectGetVTable() + 16) + 64);
            if (v164)
            {
              v165 = *MEMORY[0x1E695E480];
              CommonMetadataBinaryPListData = v164(v159, *__str, *MEMORY[0x1E695E480], cf);
              if (!CommonMetadataBinaryPListData)
              {
                CommonMetadataBinaryPListData = FigRemote_CreateCommonMetadataBinaryPListData(cf[0], v165, &v327);
                if (!CommonMetadataBinaryPListData)
                {
                  CommonMetadataBinaryPListData = FigXPCMessageSetCFData();
                }
              }

              goto LABEL_249;
            }

            v33 = -12782;
LABEL_430:
            if (*__str)
            {
              CFRelease(*__str);
            }

LABEL_432:
            v294 = cf[0];
            if (!cf[0])
            {
              goto LABEL_434;
            }

            goto LABEL_433;
          }

          __HandlePlayerServerMessage_block_invoke_cold_24(&valuePtr);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_25(&valuePtr);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_26(&valuePtr);
      }

      v33 = valuePtr;
      goto LABEL_430;
    }

    if (v2 > 1230268003)
    {
      if (v2 == 1230268004)
      {
        v139 = *(*(*(a1 + 40) + 8) + 24);
        v141 = *(a1 + 64);
        v140 = *(a1 + 72);
        *__str = 0;
        if (v139 && (v142 = CFGetTypeID(v139), v142 == FigPlaybackItemGetTypeID()))
        {
          if (v141)
          {
            if (v140)
            {
              v143 = xpc_dictionary_get_uint64(v141, "TrackID");
              v144 = *(*(CMBaseObjectGetVTable() + 16) + 40);
              if (!v144)
              {
                goto LABEL_391;
              }

              v145 = v144(v139, v143, @"FormatDescriptionArray", *MEMORY[0x1E695E480], __str);
              v146 = *__str;
              if (v145)
              {
                v33 = v145;
                if (!*__str)
                {
                  goto LABEL_506;
                }
              }

              else
              {
                v33 = FigXPCMessageSetFormatDescriptionArray();
                v146 = *__str;
                if (!*__str)
                {
                  goto LABEL_506;
                }
              }

              v147 = v146;
              goto LABEL_505;
            }

            __HandlePlayerServerMessage_block_invoke_cold_36(cf);
          }

          else
          {
            __HandlePlayerServerMessage_block_invoke_cold_37(cf);
          }
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_38(cf);
        }

        goto LABEL_608;
      }

      if (v2 == 1231249779)
      {
        v131 = *(*(*(a1 + 40) + 8) + 24);
        v132 = *(a1 + 56);
        v133 = *(a1 + 64);
        v134 = *(a1 + 72);
        *__str = 0;
        cf[0] = 0;
        if (!v131 || (v135 = CFGetTypeID(v131), v135 != FigPlaybackItemGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_17(&v327);
          goto LABEL_617;
        }

        if (!v133)
        {
          __HandlePlayerServerMessage_block_invoke_cold_16(&v327);
          goto LABEL_617;
        }

        if (!v134)
        {
          __HandlePlayerServerMessage_block_invoke_cold_15(&v327);
          goto LABEL_617;
        }

        v136 = *(*(CMBaseObjectGetVTable() + 16) + 152);
        if (!v136)
        {
          goto LABEL_418;
        }

        IDByAssociatingWithClientConnection = v136(v131, __str);
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        IDByAssociatingWithClientConnection = FigXPCAssetServerAssociateCopiedNeighborAsset(v132);
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        v137 = cf[0];
        v138 = "AssetObjectID";
LABEL_463:
        xpc_dictionary_set_uint64(v134, v138, v137);
        goto LABEL_464;
      }

      if (v2 != 1231250281)
      {
        goto LABEL_460;
      }

      v49 = *(*(*(a1 + 40) + 8) + 24);
      v51 = *(a1 + 64);
      v50 = *(a1 + 72);
      *__str = 0;
      cf[0] = 0;
      if (v49 && (v52 = CFGetTypeID(v49), v52 == FigPlaybackItemGetTypeID()))
      {
        if (v51)
        {
          if (v50)
          {
            v53 = xpc_dictionary_get_int64(v51, "ChapterImageID");
            if (xpc_dictionary_get_BOOL(v51, "WantChapterImageFormatDesc"))
            {
              v54 = cf;
            }

            else
            {
              v54 = 0;
            }

            v55 = *(*(CMBaseObjectGetVTable() + 16) + 72);
            if (v55)
            {
              v56 = v55(v49, v53, __str, v54);
              if (!v56)
              {
                v33 = FigXPCMessageSetCFData();
                v57 = cf[0];
                if (v33 || !cf[0])
                {
LABEL_401:
                  if (v57)
                  {
                    CFRelease(v57);
                  }

                  goto LABEL_465;
                }

                v56 = FigXPCMessageSetFormatDescription();
              }

              v33 = v56;
            }

            else
            {
              v33 = -12782;
            }

LABEL_400:
            v57 = cf[0];
            goto LABEL_401;
          }

          __HandlePlayerServerMessage_block_invoke_cold_27(&v327);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_28(&v327);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_29(&v327);
      }

      v33 = v327;
      goto LABEL_400;
    }

    if (v2 == 778268793)
    {
      v157 = *(a1 + 64);
      v158 = *(a1 + 72);
      *&v327 = 0;
      *&valuePtr = 0;
      if (!v157)
      {
        __HandlePlayerServerMessage_block_invoke_cold_134(__str);
        goto LABEL_613;
      }

      if (!v158)
      {
        __HandlePlayerServerMessage_block_invoke_cold_133(__str);
        goto LABEL_613;
      }

      v107 = FigXPCMessageCopyCFString();
      if (!v107)
      {
        __HandlePlayerServerMessage_block_invoke_cold_132(__str);
        goto LABEL_613;
      }
    }

    else
    {
      if (v2 != 779314548)
      {
        goto LABEL_460;
      }

      v106 = *(a1 + 64);
      *&v327 = 0;
      *&valuePtr = 0;
      if (!v106)
      {
        __HandlePlayerServerMessage_block_invoke_cold_128(__str);
        goto LABEL_613;
      }

      v107 = FigXPCMessageCopyCFString();
      if (!v107)
      {
        __HandlePlayerServerMessage_block_invoke_cold_127(__str);
LABEL_613:
        v33 = *__str;
        goto LABEL_504;
      }
    }

    v33 = v107;
    goto LABEL_504;
  }

  if (v2 > 1349676907)
  {
    if (v2 <= 1349743205)
    {
      if (v2 <= 1349739370)
      {
        if (v2 != 1349676908)
        {
          if (v2 != 1349677940)
          {
            if (v2 == 1349739361)
            {
              v3 = *(*(a1 + 40) + 8);
              v4 = *(v3 + 24);
              if (v4 && (v5 = *(a1 + 64), v6 = CFGetTypeID(*(v3 + 24)), v6 == FigPlayerGetTypeID()))
              {
                if (v5)
                {
                  v7 = xpc_dictionary_get_BOOL(v5, "Active");
                  v8 = *(CMBaseObjectGetVTable() + 24);
                  if (v8)
                  {
                    v9 = *(v8 + 24);
                    if (v9)
                    {
                      CMTime = v9(v4, v7);
LABEL_501:
                      v33 = CMTime;
                      goto LABEL_506;
                    }
                  }

                  goto LABEL_391;
                }

                __HandlePlayerServerMessage_block_invoke_cold_89(__str);
              }

              else
              {
                __HandlePlayerServerMessage_block_invoke_cold_90(__str);
              }

LABEL_631:
              v33 = *__str;
              goto LABEL_506;
            }

            goto LABEL_460;
          }

          v227 = *(*(a1 + 40) + 8);
          v228 = *(v227 + 24);
          if (!v228 || (v229 = *(a1 + 48), v230 = *(a1 + 64), v231 = CFGetTypeID(*(v227 + 24)), v231 != FigPlayerGetTypeID()))
          {
            __HandlePlayerServerMessage_block_invoke_cold_65(__str);
            goto LABEL_631;
          }

          if (!v230)
          {
            __HandlePlayerServerMessage_block_invoke_cold_64(__str);
            goto LABEL_631;
          }

          xpc_dictionary_get_int64(v230, "ExternalStartupTaskID");
          SInt64 = FigCFNumberCreateSInt64();
          FigSimpleMutexLock();
          Value = CFDictionaryGetValue(*(v229 + 80), SInt64);
          if (!Value)
          {
            __HandlePlayerServerMessage_block_invoke_cold_63(v229 + 72, __str);
            v33 = *__str;
            if (!SInt64)
            {
              goto LABEL_506;
            }

LABEL_473:
            v147 = SInt64;
            goto LABEL_505;
          }

          v233 = Value;
          CFRetain(Value);
          CFDictionaryRemoveValue(*(v229 + 80), SInt64);
          FigSimpleMutexUnlock();
          v234 = *(*(CMBaseObjectGetVTable() + 16) + 136);
          if (v234)
          {
            v33 = v234(v228, v233);
          }

          else
          {
            v33 = -12782;
          }

          v258 = v233;
          goto LABEL_471;
        }

        v259 = *(*(a1 + 40) + 8);
        v260 = *(v259 + 24);
        if (!v260 || (v261 = *(a1 + 64), v262 = CFGetTypeID(*(v259 + 24)), v262 != FigPlayerGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_98(__str);
          goto LABEL_631;
        }

        if (!v261)
        {
          __HandlePlayerServerMessage_block_invoke_cold_97(__str);
          goto LABEL_631;
        }

        v263 = xpc_dictionary_get_double(v261, "Rate");
        v264 = xpc_dictionary_get_int64(v261, "PrerollID");
        v265 = *(*(CMBaseObjectGetVTable() + 16) + 64);
        if (v265)
        {
          v266 = v263;
          CMTime = v265(v260, v264, v266);
          goto LABEL_501;
        }

LABEL_391:
        v33 = -12782;
        goto LABEL_506;
      }

      if (v2 != 1349739371)
      {
        if (v2 != 1349739381)
        {
          if (v2 != 1349742707)
          {
            goto LABEL_460;
          }

          v76 = *(*(*(a1 + 40) + 8) + 24);
          v77 = *(a1 + 64);
          v78 = *(a1 + 72);
          LOBYTE(v319[0]) = 0;
          *__str = 0;
          cf[0] = 0;
          *&v327 = 0;
          *&valuePtr = 0;
          v323[0] = 0;
          if (!v76 || (v79 = CFGetTypeID(v76), v79 != FigPlayerGetTypeID()))
          {
            __HandlePlayerServerMessage_block_invoke_cold_82(v321);
            goto LABEL_642;
          }

          if (!v77)
          {
            __HandlePlayerServerMessage_block_invoke_cold_81(v321);
            goto LABEL_642;
          }

          if (!v78)
          {
            __HandlePlayerServerMessage_block_invoke_cold_80(v321);
            goto LABEL_642;
          }

          v80 = FigXPCMessageCopyCFDictionary();
          if (!v80)
          {
            __HandlePlayerServerMessage_block_invoke_cold_79(v321);
LABEL_642:
            v33 = v321[0];
            goto LABEL_426;
          }

          goto LABEL_323;
        }

        v242 = *(a1 + 48);
        v243 = *(*(*(a1 + 40) + 8) + 24);
        v244 = *(a1 + 56);
        v245 = *(a1 + 64);
        *__str = 0;
        cf[0] = 0;
        if (v243 && (v246 = CFGetTypeID(v243), v246 == FigPlayerGetTypeID()))
        {
          if (v245)
          {
            v75 = FigXPCMessageCopyCFURL();
            if (!v75)
            {
              v75 = FigXPCMessageCopySandboxRegistration();
              if (!v75)
              {
                v75 = serverXPCPlayer_handlePlayerSetProperty(v243, v242, v244, @"NetworkCacheURL", *__str);
              }
            }

            goto LABEL_452;
          }

          __HandlePlayerServerMessage_block_invoke_cold_66(&v327);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_67(&v327);
        }

LABEL_641:
        v33 = v327;
LABEL_453:
        v290 = *__str;
        if (!*__str)
        {
          goto LABEL_455;
        }

        goto LABEL_454;
      }

      v273 = *(*(*(a1 + 40) + 8) + 24);
      v274 = *(a1 + 64);
      *&v327 = 0;
      *&valuePtr = 0;
      if (v273 && (v275 = CFGetTypeID(v273), v275 == FigPlayerGetTypeID()))
      {
        if (v274)
        {
          v276 = xpc_dictionary_get_int64(v274, "MasterClockType");
          if (v276 == 3)
          {
            v295 = FigXPCMessageCopyCFObject();
            if (v295)
            {
              goto LABEL_445;
            }

            *__str = 0u;
            v330 = 0u;
            xpc_connection_get_audit_token();
            v296 = *MEMORY[0x1E695E480];
            *cf = 0u;
            v308 = 0u;
            v295 = FigAudioSessionClockCreateFromClockConfigurationAndAuditToken(v296, v327, cf, &valuePtr);
            if (v295)
            {
              goto LABEL_445;
            }

            goto LABEL_443;
          }

          if (v276 != 2)
          {
            if (v276 == 1)
            {
              HostTimeClock = CMClockGetHostTimeClock();
              if (HostTimeClock)
              {
                HostTimeClock = CFRetain(HostTimeClock);
              }

              *&valuePtr = HostTimeClock;
            }

            else
            {
              *&valuePtr = 0;
            }

LABEL_443:
            v297 = valuePtr;
            v298 = FigPlayerGetFigBaseObject(v273);
            v299 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v299)
            {
              v295 = v299(v298, @"MasterClock", v297);
LABEL_445:
              v33 = v295;
              goto LABEL_447;
            }

            v33 = -12782;
LABEL_447:
            v294 = valuePtr;
            if (!valuePtr)
            {
LABEL_434:
              v147 = v327;
              if (!v327)
              {
                goto LABEL_506;
              }

              goto LABEL_505;
            }

LABEL_433:
            CFRelease(v294);
            goto LABEL_434;
          }

          if (xpc_dictionary_get_uint64(v274, "MasterClockObjectID"))
          {
            v295 = FigXPCAudioDeviceClockServerCopyClockForID();
            if (v295)
            {
              goto LABEL_445;
            }

            goto LABEL_443;
          }

          __HandlePlayerServerMessage_block_invoke_cold_86(__str);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_87(__str);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_88(__str);
      }

      v33 = *__str;
      goto LABEL_447;
    }

    if (v2 <= 1349743219)
    {
      if (v2 == 1349743206)
      {
        v267 = *(*(*(a1 + 40) + 8) + 24);
        v268 = *(a1 + 64);
        *cf = *MEMORY[0x1E6960C70];
        *&v308 = *(MEMORY[0x1E6960C70] + 16);
        if (!v267 || (v269 = CFGetTypeID(v267), v269 != FigPlayerGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_104(__str);
          goto LABEL_631;
        }

        if (!v268)
        {
          __HandlePlayerServerMessage_block_invoke_cold_103(__str);
          goto LABEL_631;
        }

        v270 = xpc_dictionary_get_double(v268, "Rate");
        CMTime = FigXPCMessageGetCMTime();
        if (CMTime)
        {
          goto LABEL_501;
        }

        v327 = *cf;
        v328 = v308;
        v271 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v271)
        {
          v272 = v270;
          *__str = v327;
          *&v330 = v328;
          CMTime = v271(v267, __str, v272);
          goto LABEL_501;
        }

        goto LABEL_391;
      }

      if (v2 == 1349743211)
      {
        v235 = *(*(*(a1 + 40) + 8) + 24);
        v236 = *(a1 + 64);
        v327 = *MEMORY[0x1E6960C70];
        v328 = *(MEMORY[0x1E6960C70] + 16);
        valuePtr = v327;
        v326 = v328;
        if (!v235 || (v237 = CFGetTypeID(v235), v237 != FigPlayerGetTypeID()))
        {
          __HandlePlayerServerMessage_block_invoke_cold_100(__str);
          goto LABEL_631;
        }

        if (!v236)
        {
          __HandlePlayerServerMessage_block_invoke_cold_99(__str);
          goto LABEL_631;
        }

        v238 = xpc_dictionary_get_double(v236, "Rate");
        CMTime = FigXPCMessageGetCMTime();
        if (CMTime)
        {
          goto LABEL_501;
        }

        CMTime = FigXPCMessageGetCMTime();
        if (CMTime)
        {
          goto LABEL_501;
        }

        v239 = xpc_dictionary_get_uint64(v236, "Flags");
        *v323 = v327;
        v324 = v328;
        *v321 = valuePtr;
        v322 = v326;
        v240 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v240)
        {
          v241 = v238;
          *__str = *v323;
          *&v330 = v324;
          *cf = *v321;
          *&v308 = v322;
          CMTime = v240(v235, __str, cf, v239, v241);
          goto LABEL_501;
        }

        goto LABEL_391;
      }

      if (v2 != 1349743215)
      {
        goto LABEL_460;
      }

      v38 = *(*(*(a1 + 40) + 8) + 24);
      v39 = *(a1 + 64);
      *__str = 0;
      if (v38 && (v40 = CFGetTypeID(v38), v40 == FigPlayerGetTypeID()))
      {
        if (v39)
        {
          v41 = xpc_dictionary_get_double(v39, "Rate");
          IDByAssociatingWithClientConnection = FigXPCMessageCopyCFDictionary();
          if (!IDByAssociatingWithClientConnection)
          {
            v42 = *(*(CMBaseObjectGetVTable() + 16) + 104);
            if (v42)
            {
              v43 = v41;
              IDByAssociatingWithClientConnection = v42(v38, *__str, v43);
              goto LABEL_417;
            }

            goto LABEL_418;
          }

LABEL_417:
          v33 = IDByAssociatingWithClientConnection;
          goto LABEL_465;
        }

        __HandlePlayerServerMessage_block_invoke_cold_101(cf);
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_102(cf);
      }

      goto LABEL_603;
    }

    if (v2 == 1349743220)
    {
      v278 = *(*(a1 + 40) + 8);
      v279 = *(v278 + 24);
      if (!v279 || (v280 = *(a1 + 64), v281 = CFGetTypeID(*(v278 + 24)), v281 != FigPlayerGetTypeID()))
      {
        __HandlePlayerServerMessage_block_invoke_cold_106(__str);
        goto LABEL_631;
      }

      if (!v280)
      {
        __HandlePlayerServerMessage_block_invoke_cold_105(__str);
        goto LABEL_631;
      }

      v282 = xpc_dictionary_get_double(v280, "Rate");
      v283 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v283)
      {
        v284 = v282;
        CMTime = v283(v279, v284);
        goto LABEL_501;
      }

      goto LABEL_391;
    }

    if (v2 != 1349744225)
    {
      if (v2 != 1668429889)
      {
        goto LABEL_460;
      }

      v81 = *(a1 + 48);
      v82 = *(*(*(a1 + 40) + 8) + 24);
      v84 = *(a1 + 56);
      v83 = *(a1 + 64);
      v85 = *(a1 + 72);
      cf[0] = 0;
      *&v327 = 0;
      *&valuePtr = 0;
      v323[0] = 0;
      if (v82 && (v86 = CFGetTypeID(v82), v86 == FigPlayerGetTypeID()))
      {
        if (v83)
        {
          if (v85)
          {
            v87 = xpc_dictionary_get_uint64(v83, "AssetObjectID");
            v88 = xpc_dictionary_get_uint64(v83, "ItemCreateFlags");
            v89 = FigXPCMessageCopyCFDictionary();
            if (!v89)
            {
              v89 = FigXPCAssetServerCopyAssetForID(v87, &v327);
              if (!v89)
              {
                v90 = v327;
                v91 = *(*(CMBaseObjectGetVTable() + 16) + 96);
                if (!v91)
                {
                  v33 = -12782;
                  goto LABEL_482;
                }

                v89 = v91(v82, v90, v88, valuePtr, cf);
                if (!v89)
                {
                  v92 = cf[0];
                  v93 = v323[0];
                  v332 = 0u;
                  v333 = 0u;
                  v330 = 0u;
                  v331 = 0u;
                  *__str = 0u;
                  if (qword_1ED4CAF68 != -1)
                  {
                    HandlePlayerServerNoReplyMessage_cold_1();
                  }

                  Instance = _CFRuntimeCreateInstance();
                  if (Instance)
                  {
                    v95 = Instance;
                    *(Instance + 104) = 0;
                    v96 = (Instance + 104);
                    if (v93)
                    {
                      CFStringGetCString(v93, v96, 10, 0x600u);
                    }

                    v97 = v81[4];
                    *(v95 + 96) = v97;
                    dispatch_retain(v97);
                    *(v95 + 24) = v81[2];
                    v98 = v81[5];
                    *(v95 + 72) = v98;
                    dispatch_retain(v98);
                    if (v92)
                    {
                      v99 = CFRetain(v92);
                    }

                    else
                    {
                      v99 = 0;
                    }

                    *(v95 + 80) = v99;
                    snprintf(__str, 0x50uLL, "com.apple.coremedia.playerserver.timebasesync.%s", v96);
                    v302 = FigDispatchQueueCreateWithPriority();
                    *(v95 + 64) = v302;
                    if (v302)
                    {
                      v303 = FigSimpleMutexCreate();
                      *(v95 + 56) = v303;
                      if (v303)
                      {
                        goto LABEL_480;
                      }

                      v304 = 1124;
                    }

                    else
                    {
                      v304 = 1122;
                    }

                    __HandlePlayerServerMessage_block_invoke_cold_121(v304, v95, v321);
                  }

                  else
                  {
                    __HandlePlayerServerMessage_block_invoke_cold_122(v321);
                  }

                  v33 = v321[0];
                  if (!LODWORD(v321[0]))
                  {
                    v95 = 0;
LABEL_480:
                    *(v95 + 32) = xpc_connection_get_pid(v84);
                    *(v95 + 88) = FigCFWeakReferenceHolderCreateWithReferencedObject();
                    v33 = FigXPCServerAssociateObjectWithConnection();
                    if (v33)
                    {
                      CFRelease(v95);
                    }

                    else
                    {
                      xpc_dictionary_set_uint64(v85, "ItemObjectID", *(v95 + 16));
                      serverXPCItem_rebuildTimebaseSync(cf[0], v95);
                    }
                  }

LABEL_482:
                  if (v327)
                  {
                    CFRelease(v327);
                  }

                  if (cf[0])
                  {
                    CFRelease(cf[0]);
                  }

                  goto LABEL_504;
                }
              }
            }

            v33 = v89;
            goto LABEL_482;
          }

          __HandlePlayerServerMessage_block_invoke_cold_123(__str);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_124(__str);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_125(__str);
      }

      v33 = *__str;
      goto LABEL_482;
    }

    v247 = *(a1 + 48);
    v248 = *(*(*(a1 + 40) + 8) + 24);
    v250 = *(a1 + 56);
    v249 = *(a1 + 64);
    *__str = 0;
    if (v248 && (v251 = CFGetTypeID(v248), v251 == FigPlayerGetTypeID()))
    {
      if (v249)
      {
        array = xpc_dictionary_get_array(v249, "VideoTargetIDArray");
        count = xpc_array_get_count(array);
        v254 = CFGetAllocator(v248);
        SInt64 = CFArrayCreateMutable(v254, count, MEMORY[0x1E695E9C0]);
        if (SInt64)
        {
          if (count)
          {
            v255 = 0;
            while (1)
            {
              v256 = xpc_array_get_uint64(array, v255);
              v257 = FigXPCVideoTargetServerCopyVideoTargetForID(v256, __str);
              if (v257)
              {
                break;
              }

              CFArrayAppendValue(SInt64, *__str);
              if (*__str)
              {
                CFRelease(*__str);
                *__str = 0;
              }

              if (count == ++v255)
              {
                goto LABEL_362;
              }
            }
          }

          else
          {
LABEL_362:
            v257 = serverXPCPlayer_handlePlayerSetProperty(v248, v247, v250, @"VideoTargetArray", SInt64);
          }

          v33 = v257;
LABEL_364:
          v258 = *__str;
          if (!*__str)
          {
LABEL_472:
            if (!SInt64)
            {
              goto LABEL_506;
            }

            goto LABEL_473;
          }

LABEL_471:
          CFRelease(v258);
          goto LABEL_472;
        }

        __HandlePlayerServerMessage_block_invoke_cold_68(cf);
LABEL_635:
        v33 = cf[0];
        goto LABEL_364;
      }

      __HandlePlayerServerMessage_block_invoke_cold_69(cf);
    }

    else
    {
      __HandlePlayerServerMessage_block_invoke_cold_70(cf);
    }

    SInt64 = 0;
    goto LABEL_635;
  }

  if (v2 > 1348694114)
  {
    if (v2 <= 1349349936)
    {
      if (v2 != 1348694115)
      {
        if (v2 != 1348694121)
        {
          if (v2 != 1349087091)
          {
            goto LABEL_460;
          }

          v34 = *(*(*(a1 + 40) + 8) + 24);
          SInt64 = *(a1 + 64);
          v36 = *(a1 + 72);
          *__str = 0;
          cf[0] = 0;
          if (v34 && (v37 = CFGetTypeID(v34), v37 == FigPlayerGetTypeID()))
          {
            if (!SInt64)
            {
              __HandlePlayerServerMessage_block_invoke_cold_72(&v327);
LABEL_621:
              v33 = v327;
              goto LABEL_468;
            }

            if (v36)
            {
              FigXPCMessageCopyCFNumber();
              SInt64 = 0;
              v285 = *(*(CMBaseObjectGetVTable() + 16) + 152);
              if (v285)
              {
                v33 = v285(v34, 0, __str);
                v286 = *__str;
                if (v33)
                {
                  v287 = 1;
                }

                else
                {
                  v287 = *__str == 0;
                }

                if (v287)
                {
                  if (!*__str)
                  {
                    goto LABEL_470;
                  }

                  goto LABEL_469;
                }

                IOSurface = CVPixelBufferGetIOSurface(*__str);
                if (IOSurface)
                {
                  XPCObject = IOSurfaceCreateXPCObject(IOSurface);
                  xpc_dictionary_set_value(v36, "CurrentlyDisplayedIOSurface", XPCObject);
                }

                v33 = 0;
              }

              else
              {
                v33 = -12782;
              }

LABEL_468:
              v286 = *__str;
              if (!*__str)
              {
LABEL_470:
                FigXPCRelease();
                goto LABEL_472;
              }

LABEL_469:
              CFRelease(v286);
              goto LABEL_470;
            }

            __HandlePlayerServerMessage_block_invoke_cold_71(&v327);
          }

          else
          {
            __HandlePlayerServerMessage_block_invoke_cold_73(&v327);
          }

          SInt64 = 0;
          goto LABEL_621;
        }

        v176 = *(*(*(a1 + 40) + 8) + 24);
        v177 = *(a1 + 64);
        v178 = *(a1 + 72);
        *__str = 0;
        cf[0] = 0;
        *&v327 = 0;
        if (v176 && (v179 = CFGetTypeID(v176), v179 == FigPlayerGetTypeID()))
        {
          if (v177)
          {
            if (v178)
            {
              if (!xpc_dictionary_get_uint64(v177, "AfterItemObjectID"))
              {
                v182 = 0;
LABEL_420:
                v292 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (!v292)
                {
                  v33 = -12782;
                  goto LABEL_432;
                }

                UniqueObjectIDForObjectAssociatedWithConnection = v292(v176, v182, cf);
                if (!UniqueObjectIDForObjectAssociatedWithConnection)
                {
                  if (!cf[0])
                  {
                    v293 = 0;
                    goto LABEL_476;
                  }

                  UniqueObjectIDForObjectAssociatedWithConnection = FigXPCServerFindUniqueObjectIDForObjectAssociatedWithConnection();
                  if (!UniqueObjectIDForObjectAssociatedWithConnection)
                  {
                    v293 = *__str;
LABEL_476:
                    xpc_dictionary_set_uint64(v178, "ItemObjectID", v293);
                    v33 = 0;
                    goto LABEL_432;
                  }
                }

LABEL_643:
                v33 = UniqueObjectIDForObjectAssociatedWithConnection;
                goto LABEL_432;
              }

              UniqueObjectIDForObjectAssociatedWithConnection = FigXPCServerLookupAndRetainAssociatedObject();
              if (UniqueObjectIDForObjectAssociatedWithConnection)
              {
                goto LABEL_643;
              }

              v181 = CFGetTypeID(v327);
              if (v181 == FigPlaybackItemGetTypeID())
              {
                v182 = v327;
                goto LABEL_420;
              }

              __HandlePlayerServerMessage_block_invoke_cold_107(&valuePtr);
            }

            else
            {
              __HandlePlayerServerMessage_block_invoke_cold_108(&valuePtr);
            }
          }

          else
          {
            __HandlePlayerServerMessage_block_invoke_cold_109(&valuePtr);
          }
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_110(&valuePtr);
        }

        v33 = valuePtr;
        goto LABEL_432;
      }

      v192 = *(*(*(a1 + 40) + 8) + 24);
      v193 = *(a1 + 64);
      v194 = *(a1 + 72);
      *__str = 0;
      cf[0] = 0;
      if (v192 && (v195 = CFGetTypeID(v192), v195 == FigPlayerGetTypeID()))
      {
        if (v193)
        {
          if (v194)
          {
            v196 = FigPlayerGetFigBaseObject(v192);
            v197 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v197)
            {
              v33 = -12782;
              goto LABEL_455;
            }

            v198 = v197(v196, @"MasterClock", *MEMORY[0x1E695E480], cf);
            if (!v198)
            {
              v199 = cf[0];
              if (cf[0])
              {
                if (v199 != CMClockGetHostTimeClock())
                {
                  v198 = FigXPCAudioDeviceClockServerAssociateCopiedNeighborClock();
                  if (!v198)
                  {
                    if (*__str)
                    {
                      xpc_dictionary_set_uint64(v194, "MasterClockObjectID", *__str);
                    }

                    v200 = 2;
                    goto LABEL_487;
                  }

                  goto LABEL_655;
                }

                v200 = 1;
              }

              else
              {
                v200 = 0;
              }

LABEL_487:
              xpc_dictionary_set_int64(v194, "MasterClockType", v200);
              v33 = 0;
              goto LABEL_455;
            }

LABEL_655:
            v33 = v198;
            goto LABEL_455;
          }

          __HandlePlayerServerMessage_block_invoke_cold_83(&v327);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_84(&v327);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_85(&v327);
      }

      v33 = v327;
      goto LABEL_455;
    }

    if (v2 == 1349349937)
    {
      v201 = *(*(*(a1 + 40) + 8) + 24);
      if (v201 && (v203 = *(a1 + 64), v202 = *(a1 + 72), v204 = CFGetTypeID(v201), v204 == FigPlayerGetTypeID()))
      {
        if (v203)
        {
          if (v202)
          {
            CMTime = FigMemoryOriginBeginEstablishingMemoryRecipientByFillingInXPCMessage1();
            goto LABEL_501;
          }

          __HandlePlayerServerMessage_block_invoke_cold_76(__str);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_77(__str);
        }
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_78(__str);
      }

      goto LABEL_631;
    }

    if (v2 == 1349349938)
    {
      v183 = *(*(*(a1 + 40) + 8) + 24);
      if (v183 && (v184 = *(a1 + 64), v185 = CFGetTypeID(v183), v185 == FigPlayerGetTypeID()))
      {
        if (v184)
        {
          CMTime = FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2();
          goto LABEL_501;
        }

        __HandlePlayerServerMessage_block_invoke_cold_74(__str);
      }

      else
      {
        __HandlePlayerServerMessage_block_invoke_cold_75(__str);
      }

      goto LABEL_631;
    }

    if (v2 != 1349674349)
    {
      goto LABEL_460;
    }

    v69 = *(*(*(a1 + 40) + 8) + 24);
    v70 = *(a1 + 64);
    *__str = 0;
    if (v69 && (v71 = CFGetTypeID(v69), v71 == FigPlayerGetTypeID()))
    {
      if (v70)
      {
        if (xpc_dictionary_get_uint64(v70, "ItemObjectID"))
        {
          IDByAssociatingWithClientConnection = FigXPCServerLookupAndRetainAssociatedObject();
          if (IDByAssociatingWithClientConnection)
          {
            goto LABEL_417;
          }

          __HandlePlayerServerMessage_block_invoke_cold_111(cf);
          goto LABEL_603;
        }

        v291 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v291)
        {
          IDByAssociatingWithClientConnection = v291(v69, 0);
          goto LABEL_417;
        }

LABEL_418:
        v33 = -12782;
        goto LABEL_465;
      }

      __HandlePlayerServerMessage_block_invoke_cold_112(cf);
    }

    else
    {
      __HandlePlayerServerMessage_block_invoke_cold_113(cf);
    }

LABEL_603:
    v33 = cf[0];
    goto LABEL_465;
  }

  if (v2 <= 1348559971)
  {
    if (v2 == 1346529646)
    {
      v186 = *(*(a1 + 40) + 8);
      v187 = *(v186 + 24);
      if (!v187 || (v188 = *(a1 + 64), v189 = CFGetTypeID(*(v186 + 24)), v189 != FigPlayerGetTypeID()))
      {
        __HandlePlayerServerMessage_block_invoke_cold_94(__str);
        goto LABEL_631;
      }

      if (!v188)
      {
        __HandlePlayerServerMessage_block_invoke_cold_93(__str);
        goto LABEL_631;
      }

      v190 = *(CMBaseObjectGetVTable() + 24);
      if (v190)
      {
        v191 = *(v190 + 8);
        if (v191)
        {
          CMTime = v191(v187);
          goto LABEL_501;
        }
      }

      goto LABEL_391;
    }

    if (v2 != 1346726254)
    {
      goto LABEL_460;
    }

    v108 = *(*(*(a1 + 40) + 8) + 24);
    v109 = *(a1 + 64);
    *__str = 0;
    if (v108 && (v110 = CFGetTypeID(v108), v110 == FigPlayerGetTypeID()))
    {
      if (v109)
      {
        IDByAssociatingWithClientConnection = FigXPCMessageCopyCFString();
        if (IDByAssociatingWithClientConnection)
        {
          goto LABEL_417;
        }

        v111 = *(CMBaseObjectGetVTable() + 24);
        if (v111)
        {
          v112 = *(v111 + 16);
          if (v112)
          {
            IDByAssociatingWithClientConnection = v112(v108, *__str);
            goto LABEL_417;
          }
        }

        goto LABEL_418;
      }

      __HandlePlayerServerMessage_block_invoke_cold_91(cf);
    }

    else
    {
      __HandlePlayerServerMessage_block_invoke_cold_92(cf);
    }

    goto LABEL_603;
  }

  if (v2 != 1348559972)
  {
    if (v2 != 1348563828)
    {
      if (v2 == 1348630894)
      {
        v58 = *(*(a1 + 40) + 8);
        v59 = *(v58 + 24);
        if (v59 && (v60 = *(a1 + 64), v61 = CFGetTypeID(*(v58 + 24)), v61 == FigPlayerGetTypeID()))
        {
          if (v60)
          {
            v62 = xpc_dictionary_get_int64(v60, "StepCount");
            v63 = *(*(CMBaseObjectGetVTable() + 16) + 72);
            if (v63)
            {
              CMTime = v63(v59, v62);
              goto LABEL_501;
            }

            goto LABEL_391;
          }

          __HandlePlayerServerMessage_block_invoke_cold_95(__str);
        }

        else
        {
          __HandlePlayerServerMessage_block_invoke_cold_96(__str);
        }

        goto LABEL_631;
      }

LABEL_460:
      v33 = -16158;
      goto LABEL_506;
    }

    goto LABEL_391;
  }

  v172 = *(*(*(a1 + 40) + 8) + 24);
  v173 = *(a1 + 64);
  *&v327 = 0;
  *&valuePtr = 0;
  v323[0] = 0;
  v321[0] = 0;
  v319[0] = 0;
  v336 = 0;
  v334 = 0u;
  v335 = 0u;
  v332 = 0u;
  v333 = 0u;
  v330 = 0u;
  v331 = 0u;
  *__str = 0u;
  if (!v172 || (v174 = CFGetTypeID(v172), v174 != FigPlayerGetTypeID()))
  {
    __HandlePlayerServerMessage_block_invoke_cold_119(cf);
    goto LABEL_646;
  }

  if (!v173)
  {
    __HandlePlayerServerMessage_block_invoke_cold_118(cf);
    goto LABEL_646;
  }

  xpc_dictionary_get_uint64(v173, "ItemObjectID");
  xpc_dictionary_get_uint64(v173, "AfterItemObjectID");
  v175 = FigXPCServerLookupAndRetainAssociatedObjectAndCFTypeRefcon();
  if (!v175)
  {
    __HandlePlayerServerMessage_block_invoke_cold_117(cf);
LABEL_646:
    v33 = cf[0];
    goto LABEL_488;
  }

  v33 = v175;
LABEL_488:
  if (v327)
  {
    CFRelease(v327);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  if (v323[0])
  {
    CFRelease(v323[0]);
  }

  if (v321[0])
  {
    CFRelease(v321[0]);
  }

  if (v319[0])
  {
    CFRelease(v319[0]);
  }

LABEL_506:
  *(*(*(a1 + 32) + 8) + 24) = v33;
}

uint64_t __serverXPCPlayer_getSharedInvalidationQueue_block_invoke()
{
  qword_1ED4CAF50 = FigDispatchQueueCreateWithPriority();

  return FigWatchdogMonitorDispatchQueue();
}

uint64_t __ServedPlayerStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAF60 = result;
  return result;
}

double servedPlayerState_Init(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

__CFString *servedPlayerState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"ServedPlayerState %p", a1);
  return Mutable;
}

uint64_t serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue(NSObject *a1, const void *a2)
{
  if (serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue_once != -1)
  {
    serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue_cold_1();
  }

  FigSimpleMutexLock();
  v4 = dispatch_time(0, 130000000000);
  v5 = dispatch_time(0, 115000000000);
  FigCFArrayAppendInt64();
  FigCFArrayAppendInt64();
  if (CFArrayGetCount(sAsyncTimeoutInfo_2) == 1)
  {
    dispatch_source_set_timer(sAsyncTimeoutInfo_0, v4, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  if (CFArrayGetCount(sAsyncTimeoutInfo_3) == 1)
  {
    dispatch_source_set_timer(sAsyncTimeoutInfo_1, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  v6 = _Block_copy(a2);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue_block_invoke;
  block[3] = &unk_1E748ED08;
  block[4] = v6;
  dispatch_async(a1, block);
  return FigSimpleMutexUnlock();
}

void serverXPCPlayer_prepareForAsyncTimeoutsOnce()
{
  v0 = dispatch_queue_attr_make_with_overcommit();
  v1 = dispatch_queue_create("com.apple.coremedia.player.timeout", v0);
  sAsyncTimeoutInfo_4 = FigSimpleMutexCreate();
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9C0];
  sAsyncTimeoutInfo_2 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  sAsyncTimeoutInfo_3 = CFArrayCreateMutable(v2, 0, v3);
  v4 = MEMORY[0x1E69E9710];
  sAsyncTimeoutInfo_0 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v1);
  sAsyncTimeoutInfo_1 = dispatch_source_create(v4, 0, 0, v1);
  dispatch_source_set_event_handler(sAsyncTimeoutInfo_0, &__block_literal_global_131);
  dispatch_source_set_event_handler(sAsyncTimeoutInfo_1, &__block_literal_global_135);
  dispatch_activate(sAsyncTimeoutInfo_0);
  dispatch_activate(sAsyncTimeoutInfo_1);
  if (v1)
  {

    dispatch_release(v1);
  }
}

void __serverXPCPlayer_guardedDispatchAsyncToInvalidationQueue_block_invoke(uint64_t a1)
{
  FigSimpleMutexLock();
  CFArrayRemoveValueAtIndex(sAsyncTimeoutInfo_2, 0);
  CFArrayRemoveValueAtIndex(sAsyncTimeoutInfo_3, 0);
  if (CFArrayGetCount(sAsyncTimeoutInfo_2) < 1)
  {
    v2 = sAsyncTimeoutInfo_0;
    v3 = -1;
    v4 = 0;
  }

  else
  {
    FigCFArrayGetInt64AtIndex();
    v2 = sAsyncTimeoutInfo_0;
    v3 = 0;
    v4 = 1000000000;
  }

  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, v4);
  if (CFArrayGetCount(sAsyncTimeoutInfo_3) < 1)
  {
    v5 = sAsyncTimeoutInfo_1;
    v6 = -1;
    v7 = 0;
  }

  else
  {
    FigCFArrayGetInt64AtIndex();
    v5 = sAsyncTimeoutInfo_1;
    v6 = 0;
    v7 = 1000000000;
  }

  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, v7);
  FigSimpleMutexUnlock();
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
}

uint64_t __ServedPlaybackItemStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CAF70 = result;
  return result;
}

double servedPlaybackItemState_Init(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

__CFString *servedPlaybackItemState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"ServedPlaybackItemState %p", a1);
  return Mutable;
}

uint64_t serverXPCPlayer_handlePlayerSetPropertyGuts(int a1, int a2, __CFString *a3, CFTypeRef cf, _BYTE *a5, __CFString **a6, CFTypeRef *a7)
{
  if (cf)
  {
    v11 = CFRetain(cf);
  }

  else
  {
    v11 = 0;
  }

  if (CFEqual(a3, @"Server_DisplayList"))
  {
    v12 = @"DisplayList";
  }

  else
  {
    v12 = a3;
  }

  *a5 = 0;
  if (v12)
  {
    v12 = CFRetain(v12);
  }

  *a6 = v12;
  if (v11)
  {
    *a7 = CFRetain(v11);
    CFRelease(v11);
  }

  else
  {
    *a7 = 0;
  }

  return 0;
}

void serverXPCItem_rebuildTimebaseSync(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = 0;
  FigBaseObject = FigPlaybackItemGetFigBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v4)
  {
    v4(FigBaseObject, @"Timebase", *MEMORY[0x1E695E480], &v10);
    if (v10)
    {
      v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x102004059E634C0uLL);
      if (v8)
      {
        serverXPCItem_rebuildTimebaseSync_cold_2(a2, v8);
      }

      else if (!serverXPCItem_rebuildTimebaseSync_cold_1())
      {
        return;
      }

      v8[24] = 1;
      FigSyncMomentSourceCreateWithDispatchQueueAndDestructor2(fps_TimebaseSynchronizationUpdate_Callback, v8, fps_destroyTimebaseSyncState, v10, *(a2 + 64), &v9);
    }
  }

  FigSimpleMutexLock();
  v5 = v10;
  v7 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a2 + 40) = v9;
  *(a2 + 48) = v5;
  FigSimpleMutexUnlock();
  if (v7)
  {
    FigSyncMomentSourceDestroy(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t serverXPCItem_NotificationFilter(uint64_t a1, CFTypeRef cf, const void *a3, __CFDictionary *a4, __CFDictionary **a5, void *a6)
{
  if (!cf || (v12 = CFGetTypeID(cf), v12 != FigPlaybackItemGetTypeID()))
  {
    serverXPCItem_NotificationFilter_cold_2();
    return 0;
  }

  if (!a4 || (v13 = CFGetTypeID(a4), v13 != CFDictionaryGetTypeID()))
  {
LABEL_9:
    MutableCopy = 0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(a4, @"CFError");
  if (Value)
  {
    v15 = CFGetTypeID(Value);
    if (v15 == CFErrorGetTypeID())
    {
      v16 = FigCFCopyCFErrorAsPropertyList();
      if (v16)
      {
        v17 = v16;
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a4);
        CFDictionaryRemoveValue(MutableCopy, @"CFError");
        CFDictionarySetValue(MutableCopy, @"Server_CFError", v17);
        CFRelease(v17);
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  MutableCopy = CFRetain(a4);
LABEL_11:
  if (CFEqual(a3, @"TimebaseChanged"))
  {
    serverXPCItem_rebuildTimebaseSync(cf, a1);
LABEL_16:
    v19 = 1;
    goto LABEL_17;
  }

  if (CFEqual(a3, @"TimeJumped"))
  {
    if (!*(a1 + 40))
    {
      serverXPCItem_NotificationFilter_cold_1();
    }

    goto LABEL_16;
  }

  if (CFEqual(a3, @"ReadyForPlayback"))
  {
    goto LABEL_24;
  }

  if (CFEqual(a3, @"SeekDidComplete"))
  {
    if (serverXPCItem_addTimeSyncUpdateToMessage() || FigXPCMessageSetCFDictionary())
    {
LABEL_28:
      v19 = 0;
      goto LABEL_17;
    }
  }

  else if (CFEqual(a3, @"MetadataOutputChanged"))
  {
    if (fps_addMetadataOutputChangedNotificationPayloadToMessage(a6, MutableCopy))
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (!CFEqual(a3, @"LegibleOutputChanged"))
    {
LABEL_24:
      if (MutableCopy != a4)
      {
        *a5 = MutableCopy;
        return 4;
      }

      goto LABEL_28;
    }

    if (fps_addLegibleOutputChangedNotificationPayloadToMessage())
    {
      goto LABEL_16;
    }
  }

  v19 = 2;
LABEL_17:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v19;
}

uint64_t serverXPCItem_getSyntheticSyncMomentL(uint64_t a1, uint64_t a2)
{
  v2 = *MEMORY[0x1E6960C70];
  v11 = *MEMORY[0x1E6960C70];
  v3 = *(MEMORY[0x1E6960C70] + 16);
  v12 = v3;
  if (a2)
  {
    v9 = v2;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {
      result = v6(a1, &v11);
      if (!result)
      {
        memset(&v10, 0, sizeof(v10));
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&v10, HostTimeClock);
        result = 0;
        *(a2 + 32) = v12;
        *(a2 + 56) = v10.epoch;
        *(a2 + 64) = 0x3FF0000000000000;
        *a2 = 0x200000078;
        *(a2 + 8) = 0;
        *(a2 + 16) = v11;
        *(a2 + 40) = *&v10.value;
        *(a2 + 72) = v9;
        *(a2 + 88) = v3;
        *(a2 + 112) = v3;
        *(a2 + 96) = v9;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    serverXPCItem_getSyntheticSyncMomentL_cold_1(&v10);
    return LODWORD(v10.value);
  }

  return result;
}

uint64_t fps_addSampleBuffersToMessage(void *a1, const char *a2, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  v7 = xpc_array_create(0, 0);
  if (Count >= 1)
  {
    v8 = 0;
    v9 = *MEMORY[0x1E69E9660];
    do
    {
      CFArrayGetValueAtIndex(theArray, v8);
      SerializedAtomDataForSampleBuffer = FigRemote_CreateSerializedAtomDataForSampleBuffer();
      if (SerializedAtomDataForSampleBuffer)
      {
        v14 = SerializedAtomDataForSampleBuffer;
      }

      else
      {
        v11 = dispatch_data_create(0, 0, 0, v9);
        if (!v11)
        {
          fps_addSampleBuffersToMessage_cold_2(&v16);
LABEL_13:
          v14 = v16;
          goto LABEL_7;
        }

        v12 = v11;
        v13 = xpc_data_create_with_dispatch_data(v11);
        dispatch_release(v12);
        if (!v13)
        {
          fps_addSampleBuffersToMessage_cold_1(&v16);
          goto LABEL_13;
        }

        xpc_array_append_value(v7, v13);
        xpc_release(v13);
        v14 = 0;
      }

LABEL_7:
      if (v14)
      {
        goto LABEL_15;
      }

      ++v8;
    }

    while (Count != v8);
  }

  xpc_dictionary_set_value(a1, a2, v7);
  v14 = 0;
LABEL_15:
  FigXPCRelease();
  return v14;
}

void __HandlePlayerServerNoReplyMessage_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t OUTLINED_FUNCTION_14_36()
{

  return FigXPCMessageCopyCFString();
}

uint64_t FPSupport_GetAudioSessionOutputChannelCount(uint64_t a1, _DWORD *a2)
{
  cf = 0;
  valuePtr = 2;
  if (checkPlayerAudioDeviceTrace_checkPlayerAudioDeviceTraceOnce == -1)
  {
    if (!a1)
    {
      return 4294948075;
    }
  }

  else
  {
    FPSupport_GetAudioSessionOutputChannelCount_cold_1();
    if (!a1)
    {
      return 4294948075;
    }
  }

  v4 = *(CMBaseObjectGetVTable() + 16);
  if (!v4)
  {
    return 4294948075;
  }

  v5 = *(v4 + 48);
  if (!v5)
  {
    return 4294948071;
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = v5(a1, *MEMORY[0x1E69B0120], *MEMORY[0x1E695E480], &cf);
  v8 = cf;
  if (!v7)
  {
    if (cf)
    {
      FPSupport_GetAudioSessionOutputChannelCount_cold_2(cf, &valuePtr, v6, a1);
    }

    *a2 = valuePtr;
    v8 = cf;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v7;
}

void FPSupport_CreateMaxSampleRateDictonary(const __CFAllocator *a1, int a2, const __CFData *a3, CFMutableDictionaryRef *a4, double a5)
{
  valuePtr = a2;
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a3 && (v10 = CFGetTypeID(a3), v10 == CFDataGetTypeID()))
  {
    BytePtr = CFDataGetBytePtr(a3);
    if (BytePtr)
    {
      v12 = CFDataGetLength(a3) / 0x38uLL;
      goto LABEL_7;
    }
  }

  else
  {
    BytePtr = 0;
  }

  v12 = 0;
LABEL_7:
  if (a5 != 0.0 && v12 == 0)
  {
    if (!a2)
    {
      valuePtr = 2;
    }

    v21 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
    if (v21)
    {
      v22 = v21;
      FigCFDictionarySetDouble();
      CFRelease(v22);
    }

    else
    {
      FPSupport_CreateMaxSampleRateDictonary_cold_2();
    }
  }

  else if (v12)
  {
    v14 = *MEMORY[0x1E695E480];
    v15 = BytePtr + 28;
    do
    {
      if ((*v15 & 0x80000000) == 0)
      {
        v16 = CFNumberCreate(v14, kCFNumberSInt32Type, v15);
        if (!v16)
        {
          FPSupport_CreateMaxSampleRateDictonary_cold_1();
          break;
        }

        v17 = v16;
        v18 = *(v15 - 7);
        if (v18 == 0.0)
        {
          v18 = *(v15 + 5);
        }

        if (v18 <= a5 || a5 == 0.0)
        {
          v20 = v18;
        }

        else
        {
          v20 = a5;
        }

        if (!FigCFDictionaryGetDoubleIfPresent() || v20 > 0.0)
        {
          FigCFDictionarySetDouble();
        }

        CFRelease(v17);
      }

      v15 += 14;
      --v12;
    }

    while (v12);
  }

  *a4 = Mutable;
}

void FPSupport_ReleasePassthroughHelper()
{
  if (checkPlayerAudioDeviceTrace_checkPlayerAudioDeviceTraceOnce != -1)
  {
    FPSupport_GetAudioSessionOutputChannelCount_cold_1();
  }
}

uint64_t FPSupport_GetAudioDeviceUIDFromPassthroughHelper()
{
  if (checkPlayerAudioDeviceTrace_checkPlayerAudioDeviceTraceOnce != -1)
  {
    FPSupport_GetAudioSessionOutputChannelCount_cold_1();
  }

  return 0;
}

uint64_t FPSupport_CreateFigSpatializationCapabilitiesFromSpatialAudioPreferences(uint64_t a1, CFAllocatorRef allocator, __CFDictionary **a3)
{
  Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    FPSupport_CreateFigSpatializationCapabilitiesFromSpatialAudioPreferences_cold_2(&v20);
    return v20;
  }

  v7 = Mutable;
  v8 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (!v8)
  {
    FPSupport_CreateFigSpatializationCapabilitiesFromSpatialAudioPreferences_cold_1(&v19);
    v17 = v19;
    goto LABEL_22;
  }

  if (*(a1 + 12))
  {
    v9 = 4;
    do
    {
      FigCFArrayAppendInt32();
      v10 = *(a1 + 12);
      v11 = v9 - 3;
      ++v9;
    }

    while (v11 < v10);
    if (v10 && *a1)
    {
      FigCFArrayAppendInt32();
    }
  }

  CFDictionarySetValue(v7, @"SpatialCapabilitiesKey_spatialAudioSources", v8);
  v12 = FigCFDictionarySetInt32();
  if (v12)
  {
    v17 = v12;
LABEL_22:
    CFRelease(v7);
    if (!v8)
    {
      return v17;
    }

    goto LABEL_17;
  }

  v13 = *MEMORY[0x1E695E4D0];
  v14 = *MEMORY[0x1E695E4C0];
  if (*(a1 + 1))
  {
    v15 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v15 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v7, @"SpatialCapabilitiesKey_prefersLossyAudioSources", v15);
  if (*(a1 + 2))
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  CFDictionarySetValue(v7, @"SpatialCapabilitiesKey_alwaysSpatialize", v16);
  v17 = 0;
  *a3 = v7;
LABEL_17:
  CFRelease(v8);
  return v17;
}

uint64_t FPSupport_CreateAudioSessionSpatializationCapabilities(uint64_t a1, int a2, CFTypeRef *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!a3)
  {
    v14 = 2449;
    goto LABEL_21;
  }

  if (FigGetCFPreferenceNumberWithDefault())
  {
    FigSpatializationCapabilitiesFromSpatialAudioPreferences = FPSupport_CreateFigSpatializationCapabilitiesFromSpatialAudioPreferences(&unk_196E77FB0, *MEMORY[0x1E695E480], &cf);
    if (!FigSpatializationCapabilitiesFromSpatialAudioPreferences)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_9:
      v9 = 0;
      *a3 = cf;
      return v9;
    }

    goto LABEL_14;
  }

  if (a2 != 1836019574)
  {
    if (a2 == 1936684398)
    {
      v8 = kFigAudioSessionProperty_AudioOnlySpatializationCapabilities;
      if (!a1)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    v14 = 2481;
LABEL_21:
    FPSupport_CreateAudioSessionSpatializationCapabilities_cold_1(v14, v16);
    v9 = v16[0];
    goto LABEL_16;
  }

  v8 = kFigAudioSessionProperty_AudiovisualSpatializationCapabilities;
  if (!a1)
  {
LABEL_15:
    v9 = 4294948075;
    goto LABEL_16;
  }

LABEL_11:
  v10 = *v8;
  v11 = *(CMBaseObjectGetVTable() + 16);
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = *(v11 + 8);
  if (v12)
  {
    FigSpatializationCapabilitiesFromSpatialAudioPreferences = v12(a1, v10, *MEMORY[0x1E695E480], &cf);
    if (!FigSpatializationCapabilitiesFromSpatialAudioPreferences)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = FigSpatializationCapabilitiesFromSpatialAudioPreferences;
    goto LABEL_16;
  }

  v9 = 4294948071;
LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

__CFString *FPSupport_GetAudioSpatializationPreferencesMonitor()
{
  if (FPSupport_GetAudioSpatializationPreferencesMonitor_onceToken != -1)
  {
    FPSupport_GetAudioSpatializationPreferencesMonitor_cold_1();
  }

  return @"AudioSpatializationPreferencesChanged";
}

void FPSupport_AudioSpatializationPreferencesChanged()
{
  if (FPSupport_AudioSpatializationPreferencesChanged_onceToken != -1)
  {
    FPSupport_AudioSpatializationPreferencesChanged_cold_1();
  }

  v1 = FPSupport_AudioSpatializationPreferencesChanged_sAudioSpatializationPreferencesChangedQueue;

  dispatch_async(v1, &__block_literal_global_45);
}

uint64_t FPSupport_AudioChannelLayoutHasVerticalHeightChannel(void *inSpecifier, UInt32 a2)
{
  p_inSpecifiera = inSpecifier;
  outPropertyData = 0;
  if (!AudioFormatGetPropertyInfo(0x7370636Cu, a2, inSpecifier, &outPropertyData) && outPropertyData == 4 && !AudioFormatGetProperty(0x7370636Cu, a2, p_inSpecifiera, &outPropertyData, &outPropertyData + 4) && HIDWORD(outPropertyData))
  {
    return (HIDWORD(outPropertyData) >> 5) & 1;
  }

  v4 = 1668116588;
  inSpecifiera = -65536;
  if (*p_inSpecifiera == 0x10000)
  {
    p_inSpecifiera += 4;
    v4 = 1668116578;
    goto LABEL_16;
  }

  if (*p_inSpecifiera)
  {
LABEL_16:
    v8 = 4;
    goto LABEL_17;
  }

  LODWORD(v5) = *(p_inSpecifiera + 8);
  if (v5)
  {
    v6 = (p_inSpecifiera + 16);
    v7 = *(p_inSpecifiera + 8);
    while (!*(v6 - 1) || (*v6 & 3) == 0)
    {
      v6 += 20;
      if (!--v7)
      {
        goto LABEL_13;
      }
    }

    v10 = 0;
    goto LABEL_22;
  }

LABEL_13:
  ioPropertyDataSize = 4;
  if (AudioFormatGetProperty(0x636D7074u, a2, p_inSpecifiera, &ioPropertyDataSize, &inSpecifiera))
  {
    FPSupport_AudioChannelLayoutHasVerticalHeightChannel_cold_1();
    return 0;
  }

  v8 = ioPropertyDataSize;
  p_inSpecifiera = &inSpecifiera;
LABEL_17:
  ioPropertyDataSize = 0;
  if (AudioFormatGetPropertyInfo(v4, v8, p_inSpecifiera, &ioPropertyDataSize))
  {
    FPSupport_AudioChannelLayoutHasVerticalHeightChannel_cold_2();
    v10 = 0;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], ioPropertyDataSize);
  v10 = Mutable;
  if (!Mutable)
  {
    goto LABEL_30;
  }

  CFDataSetLength(Mutable, ioPropertyDataSize);
  MutableBytePtr = CFDataGetMutableBytePtr(v10);
  if (AudioFormatGetProperty(v4, v8, p_inSpecifiera, &ioPropertyDataSize, MutableBytePtr))
  {
    FPSupport_AudioChannelLayoutHasVerticalHeightChannel_cold_3();
    goto LABEL_30;
  }

  BytePtr = CFDataGetBytePtr(v10);
  p_inSpecifiera = BytePtr;
  if (!BytePtr)
  {
    goto LABEL_33;
  }

  LODWORD(v5) = *(BytePtr + 2);
  if (!v5)
  {
LABEL_30:
    p_inSpecifiera = 0;
    if (v10)
    {
      goto LABEL_33;
    }

    return p_inSpecifiera;
  }

LABEL_22:
  v5 = v5;
  v13 = (p_inSpecifiera + 28);
  while (1)
  {
    if (!*(v13 - 4))
    {
      goto LABEL_29;
    }

    v14 = *(v13 - 3);
    if (v14)
    {
      break;
    }

    if ((v14 & 2) != 0)
    {
      v15 = *(v13 - 1);
      goto LABEL_28;
    }

LABEL_29:
    v13 += 5;
    if (!--v5)
    {
      goto LABEL_30;
    }
  }

  v15 = *v13;
LABEL_28:
  if (v15 <= 0.0)
  {
    goto LABEL_29;
  }

  p_inSpecifiera = 1;
  if (v10)
  {
LABEL_33:
    CFRelease(v10);
  }

  return p_inSpecifiera;
}

uint64_t PopulateACLWithChannelLabels(uint64_t a1, uint64_t a2)
{
  result = FigCFDictionaryGetInt32IfPresent();
  v4 = 0;
  if (!result)
  {
    v4 = -1;
  }

  v5 = *(a2 + 8);
  *(a2 + 20 * v5 + 12) = v4;
  *(a2 + 8) = v5 + 1;
  return result;
}

uint64_t FPSupport_GetPlaintextAudioFormatForEncryptedFormatID(unsigned int a1)
{
  inSpecifier = a1;
  outPropertyData = 0;
  ioPropertyDataSize = 8;
  if (checkPlayerAudioDeviceTrace_checkPlayerAudioDeviceTraceOnce != -1)
  {
    FPSupport_GetAudioSessionOutputChannelCount_cold_1();
  }

  Property = AudioFormatGetProperty(0x66696569u, 4u, &inSpecifier, &ioPropertyDataSize, &outPropertyData);
  if (ioPropertyDataSize)
  {
    v3 = Property == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return outPropertyData;
  }

  else
  {
    return a1;
  }
}

uint64_t __fpSupport_isAnAudioDeviceAssumedAvailable_block_invoke()
{
  v0 = getenv("coremedia_assume_audio_device_available");
  if (v0 && !strcmp(v0, "true"))
  {
    byte_1ED4CAF79 = 1;
  }

  result = FigGetCFPreferenceBooleanWithDefault();
  byte_1ED4CAF7A = result;
  return result;
}

uint64_t RegisterFigStreamingAssetDownloadCacheTranslatorBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigStreamingAssetDownloadCacheTranslatorGetTypeID()
{
  MEMORY[0x19A8D3660](&FigStreamingAssetDownloadCacheTranslatorGetClassID_sRegisterFigStreamingAssetDownloadCacheTranslatorBaseTypeOnce, RegisterFigStreamingAssetDownloadCacheTranslatorBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t fsadct_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
  }

  v2 = *(DerivedStorage + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  return FigSimpleMutexDestroy();
}

CFStringRef fsadct_CopyDebugDescription()
{
  v0 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"\tFigStreamingAssetDownloadCacheTranslator : ");
  if (!v0)
  {
    fsadct_CopyDebugDescription_cold_1();
  }

  return v0;
}

uint64_t fsadct_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(a2, @"FSADCT_MultiVariantPlaylist"))
  {
    return 0;
  }

  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    v7 = 0;
    *a4 = CFRetain(*DerivedStorage);
  }

  else
  {
    v7 = *(DerivedStorage + 20);
  }

  FigSimpleMutexUnlock();
  return v7;
}

uint64_t fsadct_CopyPersistentStreamIDFromNetworkURL(const __CFDictionary *a1, const __CFURL *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    fsadct_CopyPersistentStreamIDFromNetworkURL_cold_5(&v7);
    return v7;
  }

  if (!a1)
  {
    fsadct_CopyPersistentStreamIDFromNetworkURL_cold_4(&v7);
    return v7;
  }

  if (!a3)
  {
    fsadct_CopyPersistentStreamIDFromNetworkURL_cold_3(&v7);
    return v7;
  }

  v5 = FigCFHTTPCreateURLString(a2);
  if (!v5)
  {
    fsadct_CopyPersistentStreamIDFromNetworkURL_cold_2(&v7);
    return v7;
  }

  fsadct_CopyPersistentStreamIDFromNetworkURL_cold_1(a1, v5, a3);
  return 0;
}

uint64_t fsadct_EnsureArrayOfWriteLockedPersistentStreamInfosAndAddEntry(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = *(DerivedStorage + 32);
  if (Mutable || (v6 = CFGetAllocator(a1), Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]), (*(DerivedStorage + 32) = Mutable) != 0))
  {
    CFArrayAppendValue(Mutable, a2);
    return 0;
  }

  else
  {
    fsadct_EnsureArrayOfWriteLockedPersistentStreamInfosAndAddEntry_cold_1(&v8);
    return v8;
  }
}

uint64_t fsadct_WriteMediaPlaylistAndAddToMovpkg(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v5, 0);
  if (!Mutable)
  {
    fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_7(&dataLength);
    return dataLength;
  }

  v7 = Mutable;
  if (a2)
  {
    v8 = (a2 + 24);
    if (*(a2 + 24))
    {
      fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_6(Mutable, (a2 + 24));
LABEL_5:
      v9 = 0;
      v50 = 0;
      v10 = 0;
      DiscontinuityDomain = 0;
      v12 = 0;
      while (1)
      {
        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(*v8);
        if (MediaSegmentSpecifiers)
        {
          MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
        }

        if (v12 >= MediaSegmentSpecifiers)
        {
          CFStringAppendFormat(v7, 0, @"%s\n", "#EXT-X-ENDLIST");
          goto LABEL_29;
        }

        v14 = FigMediaPlaylistGetMediaSegmentSpecifiers(*v8);
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v12);
        if (FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex) > DiscontinuityDomain)
        {
          DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(ValueAtIndex);
          CFStringAppendFormat(v7, 0, @"%s\n", "#EXT-X-DISCONTINUITY");
        }

        if (FigMediaSegmentSpecifierGetContentKeySpecifier(ValueAtIndex) && (v50 != FigMediaSegmentSpecifierGetContentKeySpecifier(ValueAtIndex) || v10 != FigMediaSegmentSpecifierGetIV(ValueAtIndex) && (v16 = FigMediaSegmentSpecifierGetContentKeySpecifier(ValueAtIndex), FigContentKeySpecifierGetKeySystem(v16) == 2)))
        {
          ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(ValueAtIndex);
          IV = FigMediaSegmentSpecifierGetIV(ValueAtIndex);
          appended = fsadct_AppendCryptKeyToPlaylistString(v7, ContentKeySpecifier, IV);
          if (appended)
          {
            goto LABEL_44;
          }

          v10 = FigMediaSegmentSpecifierGetIV(ValueAtIndex);
          v24 = ValueAtIndex;
        }

        else
        {
          if (!FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex))
          {
            goto LABEL_18;
          }

          MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
          if (v10 == FigMediaSegmentSpecifierGetIV(MapSegmentSpecifier))
          {
            goto LABEL_18;
          }

          v18 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
          v19 = FigMediaSegmentSpecifierGetContentKeySpecifier(v18);
          if (FigContentKeySpecifierGetKeySystem(v19) != 2)
          {
            goto LABEL_18;
          }

          v25 = FigMediaSegmentSpecifierGetContentKeySpecifier(ValueAtIndex);
          v26 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
          v27 = FigMediaSegmentSpecifierGetIV(v26);
          appended = fsadct_AppendCryptKeyToPlaylistString(v7, v25, v27);
          if (appended)
          {
            goto LABEL_44;
          }

          v28 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
          v10 = FigMediaSegmentSpecifierGetIV(v28);
          v24 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
        }

        v50 = FigMediaSegmentSpecifierGetContentKeySpecifier(v24);
LABEL_18:
        if (v9 != FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex))
        {
          v20 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
          appended = fsadct_AppendSegmentToPlaylistString(a1, a2, v7, v20, 1);
          if (appended)
          {
            goto LABEL_44;
          }

          v9 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(ValueAtIndex);
        }

        appended = fsadct_AppendSegmentToPlaylistString(a1, a2, v7, ValueAtIndex, 0);
        ++v12;
        if (appended)
        {
LABEL_44:
          v42 = appended;
          goto LABEL_42;
        }
      }
    }

    if (fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_1(&dataLength))
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

  if ((fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_2(&dataLength) & 1) == 0)
  {
LABEL_29:
    blockBufferOut = 0;
    dataLength = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v30 = CFGetAllocator(a1);
    v31 = CMBlockBufferCreateEmpty(v30, 0, 0, &blockBufferOut);
    if (!v31)
    {
      CFGetAllocator(a1);
      BytesFromCFString = FigCreateBytesFromCFString();
      if (!BytesFromCFString)
      {
        fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_5(&v53);
        goto LABEL_53;
      }

      v33 = BytesFromCFString;
      v34 = blockBufferOut;
      v35 = dataLength;
      v36 = CFGetAllocator(a1);
      v31 = CMBlockBufferAppendMemoryBlock(v34, v33, v35, v36, 0, 0, dataLength, 0);
      if (!v31)
      {
        v37 = *a2;
        v38 = *(a2 + 16);
        v39 = blockBufferOut;
        v40 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v40)
        {
          v42 = 4294954514;
          goto LABEL_40;
        }

        v41 = v40(v37, @"OfflineAvailableMedia", v38, v39);
        v42 = v41;
        if (a3 || v41)
        {
LABEL_40:
          if (blockBufferOut)
          {
            CFRelease(blockBufferOut);
          }

          goto LABEL_42;
        }

        v43 = CFGetAllocator(a1);
        v44 = CFURLCreateCopyAppendingPathComponent(v43, *(DerivedStorage + 8), *(a2 + 8), 1u);
        if (v44)
        {
          v45 = v44;
          v46 = CFGetAllocator(a1);
          v47 = CFURLCreateCopyAppendingPathComponent(v46, v45, *(a2 + 16), 0);
          v42 = 0;
          *DerivedStorage = v47;
          if (!v47)
          {
            fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_3(&v53);
            v42 = v53;
          }

          CFRelease(v45);
          goto LABEL_40;
        }

        fsadct_WriteMediaPlaylistAndAddToMovpkg_cold_4(&v53);
LABEL_53:
        v42 = v53;
        goto LABEL_40;
      }
    }

    v42 = v31;
    goto LABEL_40;
  }

LABEL_50:
  v42 = dataLength;
LABEL_42:
  CFRelease(v7);
  return v42;
}

void fsadct_DestroyMediaPlaylistWriterHelper(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 8) = 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 24) = 0;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 32) = 0;
  }
}

void fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction(int a1, CFTypeRef cf, uint64_t a3)
{
  v4 = *a3;
  if (!*a3)
  {
    fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_5(&v13);
    goto LABEL_12;
  }

  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDictionaryGetTypeID()))
  {
    fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_4(&v13);
LABEL_12:
    v12 = v13;
LABEL_16:
    *(a3 + 8) = v12;
    return;
  }

  v13 = 0;
  Value = CFDictionaryGetValue(cf, @"URL");
  if (!FigCFDictionaryGetInt64IfPresent())
  {
    fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_3(&v14);
LABEL_15:
    v12 = v14;
    goto LABEL_16;
  }

  v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@-%lld", Value, v13);
  if (!v8)
  {
    fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_2(&v14);
    goto LABEL_15;
  }

  v9 = v8;
  v10 = CFDictionaryGetValue(cf, @"PATH");
  if (v10)
  {
    CFDictionarySetValue(v4, v9, v10);
    v11 = 0;
  }

  else
  {
    fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction_cold_1(&v14);
    v11 = v14;
  }

  *(a3 + 8) = v11;
  CFRelease(v9);
}

uint64_t fsadct_AppendSegmentToPlaylistString(const void *a1, uint64_t a2, __CFString *a3, uint64_t a4, int a5)
{
  if (!a3)
  {
    fsadct_AppendSegmentToPlaylistString_cold_5(&URLString);
    return URLString;
  }

  if (!a4)
  {
    fsadct_AppendSegmentToPlaylistString_cold_4(&URLString);
    return URLString;
  }

  if (!a2)
  {
    fsadct_AppendSegmentToPlaylistString_cold_3(&URLString);
    return URLString;
  }

  v9 = CFGetAllocator(a1);
  URLString = 0;
  if (FigMediaSegmentSpecifierGetStartOffset(a4))
  {
    StartOffset = FigMediaSegmentSpecifierGetStartOffset(a4);
  }

  else
  {
    StartOffset = 0;
  }

  FigBaseObject = FigHLSPersistentStreamInfoGetFigBaseObject(*a2);
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v13 = v12(FigBaseObject, @"StreamInfoMediaPlaylistNetworkURL", 0, &URLString);
    if (v13)
    {
      v23 = v13;
      v22 = 0;
      v20 = 0;
      v19 = 0;
    }

    else
    {
      v14 = CFURLCreateWithString(v9, URLString, 0);
      if (v14)
      {
        v15 = v14;
        AllocatorForMedia = FigGetAllocatorForMedia();
        v17 = FigMediaSegmentSpecifierGetURLString(a4);
        v18 = CFURLCreateWithString(AllocatorForMedia, v17, v15);
        v19 = v18;
        if (v18)
        {
          v20 = FigCFHTTPCreateURLString(v18);
          if (v20)
          {
            v21 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@-%lld", v20, StartOffset);
            if (v21)
            {
              v22 = v21;
              v23 = 0;
LABEL_14:
              CFRelease(v15);
              goto LABEL_16;
            }
          }
        }

        else
        {
          v20 = 0;
        }

        fig_log_get_emitter();
        v23 = FigSignalErrorAtGM();
        v22 = 0;
        goto LABEL_14;
      }

      fsadct_AppendSegmentToPlaylistString_cold_1(&v31);
      v22 = 0;
      v20 = 0;
      v19 = 0;
      v23 = v31;
    }
  }

  else
  {
    v22 = 0;
    v20 = 0;
    v19 = 0;
    v23 = 4294954514;
  }

LABEL_16:
  if (URLString)
  {
    CFRelease(URLString);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (!v23)
  {
    Value = CFDictionaryGetValue(*(a2 + 32), v22);
    if (!Value)
    {
      fsadct_AppendSegmentToPlaylistString_cold_2(&URLString);
      v23 = URLString;
      if (!v22)
      {
        return v23;
      }

      goto LABEL_31;
    }

    v25 = Value;
    if (a5)
    {
      CFStringAppendFormat(a3, 0, @"%s:%s=%@\n", "#EXT-X-MAP", "URI", Value);
    }

    else
    {
      TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(a4);
      CFStringAppendFormat(a3, 0, @"%s:%f,\n", "#EXTINF", *&TimeInSeconds);
      if (FigMediaSegmentSpecifierGetBitRate(a4) > 0.0)
      {
        BitRate = FigMediaSegmentSpecifierGetBitRate(a4);
        CFStringAppendFormat(a3, 0, @"%s:%llu\n", "#EXT-X-BITRATE", BitRate);
      }

      CFStringAppendFormat(a3, 0, @"%@\n", v25, v29);
    }

    v23 = 0;
  }

  if (v22)
  {
LABEL_31:
    CFRelease(v22);
  }

  return v23;
}

void OUTLINED_FUNCTION_7_60(const __CFDictionary *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char context)
{

  CFDictionaryApplyFunction(a1, fsadct_CreateMediaMapKeyToFilePathMappingOutApplierFunction, &context);
}

uint64_t OUTLINED_FUNCTION_10_42(void *value)
{

  return CFSetContainsValue(v1, value);
}

uint64_t OUTLINED_FUNCTION_11_45(OpaqueCMBlockBuffer *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, CFMutableArrayRef *a9, uint64_t a10, const __CFDictionary *a11, const __CFDictionary *a12, uint64_t *a13, CFTypeRef *a14)
{

  return FigStreamPlaylistParse(a1, v14, 0, a4, 0, 0, 1, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t OUTLINED_FUNCTION_13_33(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CFStringRef a23)
{
  v27 = *(v25 - 104);

  return fsadct_MakeMediaPlaylistWriterHelper(a1, v24, v23, v27, &a23);
}

void fcrReleaseAndClearMediaAccessibilityParams(uint64_t a1)
{
  v2 = vdupq_n_s64(1uLL);
  *(a1 + 128) = v2;
  *(a1 + 32) = v2;
  *(a1 + 48) = v2;
  *a1 = v2;
  *(a1 + 16) = v2;
  memset_pattern16((a1 + 64), &xmmword_196E76490, 0x40uLL);
  v3 = *(a1 + 144);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 144) = 0;
  }

  *(a1 + 168) = 0xBFF0000000000000;
  v4 = *(a1 + 152);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 152) = 0;
  }

  *(a1 + 176) = 0xBFF0000000000000;
  v5 = *(a1 + 160);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 160) = 0;
  }

  v6 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 184) = _Q0;
  *(a1 + 200) = 0xBFF0000000000000;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0x4044000000000000;
  v12 = a1 + 208;
  do
  {
    v13 = *(v12 + v6);
    if (v13)
    {
      CFRelease(v13);
      *(v12 + v6) = 0;
    }

    v6 += 8;
  }

  while (v6 != 64);
  v14 = *(a1 + 288);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 288) = 0;
  }
}

void fcrCopyMediaAccessibilityParams(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = v6;
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  v7 = *(a1 + 80);
  v8 = *(a1 + 96);
  v9 = *(a1 + 128);
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 128) = v9;
  *(a2 + 80) = v7;
  *(a2 + 96) = v8;
  v10 = *(a2 + 144);
  v11 = *(a1 + 144);
  *(a2 + 144) = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  *(a2 + 168) = *(a1 + 168);
  v12 = *(a2 + 152);
  v13 = *(a1 + 152);
  *(a2 + 152) = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  *(a2 + 176) = *(a1 + 176);
  v14 = *(a2 + 160);
  v15 = *(a1 + 160);
  *(a2 + 160) = v15;
  if (v15)
  {
    CFRetain(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v16 = 0;
  *(a2 + 184) = *(a1 + 184);
  *(a2 + 200) = *(a1 + 200);
  *(a2 + 272) = *(a1 + 272);
  v17 = a2 + 208;
  do
  {
    v18 = *(v17 + v16);
    v19 = *(a1 + 208 + v16);
    *(v17 + v16) = v19;
    if (v19)
    {
      CFRetain(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    v16 += 8;
  }

  while (v16 != 64);
  v20 = *(a2 + 288);
  v21 = *(a1 + 288);
  *(a2 + 288) = v21;
  if (v21)
  {
    CFRetain(v21);
  }

  if (v20)
  {

    CFRelease(v20);
  }
}

void mediaAccessibilityDidChangeDoAsync(void *a1)
{
  v2 = *a1;
  memset(behavior, 0, 296);
  v3 = MACaptionAppearanceCopyForegroundColor(kMACaptionAppearanceDomainUser, behavior);
  behavior[18] = v3;
  if (v3)
  {
    CGColorGetComponents(v3);
  }

  v4 = MACaptionAppearanceCopyBackgroundColor(kMACaptionAppearanceDomainUser, &behavior[1]);
  behavior[19] = v4;
  if (v4)
  {
    CGColorGetComponents(v4);
  }

  v5 = MACaptionAppearanceCopyWindowColor(kMACaptionAppearanceDomainUser, &behavior[2]);
  behavior[20] = v5;
  if (v5)
  {
    CGColorGetComponents(v5);
  }

  behavior[21] = MACaptionAppearanceGetForegroundOpacity(kMACaptionAppearanceDomainUser, &behavior[3]);
  behavior[22] = MACaptionAppearanceGetBackgroundOpacity(kMACaptionAppearanceDomainUser, &behavior[4]);
  behavior[23] = MACaptionAppearanceGetWindowOpacity(kMACaptionAppearanceDomainUser, &behavior[5]);
  behavior[24] = MACaptionAppearanceGetWindowRoundedCornerRadius(kMACaptionAppearanceDomainUser, &behavior[6]);
  v6 = kMACaptionAppearanceFontStyleDefault;
  behavior[25] = MACaptionAppearanceGetRelativeCharacterSize(kMACaptionAppearanceDomainUser, &behavior[7]);
  v7 = &behavior[8];
  do
  {
    behavior[v6 + 26] = MACaptionAppearanceCopyFontDescriptorForStyle(kMACaptionAppearanceDomainUser, v7, v6);
    ++v6;
    ++v7;
  }

  while (v6 != 8);
  behavior[34] = MACaptionAppearanceGetTextEdgeStyle(kMACaptionAppearanceDomainUser, &behavior[16]);
  active = MACaptionAppearancePrefCopyActiveProfileID();
  behavior[36] = MACaptionAppearancePrefCopyProfileName();
  if (active)
  {
    CFRelease(active);
  }

  fcrCopyMediaAccessibilityParams(behavior, (v2 + 4));
  if (v2[3])
  {
    v9 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v9)
    {
      v10 = v9;
      v11 = v2[3];
      memcpy(__dst, behavior, sizeof(__dst));
      v11(v10, __dst);
      CFRelease(v10);
    }
  }

  fcrReleaseAndClearMediaAccessibilityParams(behavior);
  CFRelease(v2);
  free(a1);
}

uint64_t FigCaptionRendererMACacheCreate(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  MEMORY[0x19A8D3660](&FigCaptionRendererMACacheLocalGetTypeID_sRegisterFigCaptionRendererMACacheOnce, RegisterFigCaptionRendererMACacheClass);
  Instance = _CFRuntimeCreateInstance();
  fcrReleaseAndClearMediaAccessibilityParams((Instance + 4));
  snprintf(__str, 0x100uLL, "com.apple.coremedia.FigCaptionRendererMACache.msgQueue<%p>", Instance);
  v7 = dispatch_queue_create(__str, 0);
  Instance[42] = v7;
  if (!v7)
  {
    v9 = 4294950095;
LABEL_7:
    CFRelease(Instance);
    return v9;
  }

  if (a1)
  {
    if (a2)
    {
      Instance[3] = a1;
      v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
      Instance[2] = v8;
      if (!v8)
      {
        FigCaptionRendererMACacheCreate_cold_1(__str);
        v9 = *__str;
        goto LABEL_7;
      }
    }
  }

  CMNotificationCenterGetDefaultLocalCenter();
  FigGetNotifyingObjectForMediaAccessibilityChanged();
  FigNotificationCenterAddWeakListener();
  v9 = 0;
  *a3 = Instance;
  return v9;
}

uint64_t RegisterFigCaptionRendererMACacheClass()
{
  result = _CFRuntimeRegisterClass();
  sFigCaptionRendererMACacheID = result;
  return result;
}

double FigCaptionRendererMACacheInit(uint64_t a1)
{
  *(a1 + 336) = 0;
  result = 0.0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
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

void FigCaptionRendererMACache_Finalize(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigGetNotifyingObjectForMediaAccessibilityChanged();
  FigNotificationCenterRemoveWeakListener();
  v2 = *(a1 + 336);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 336) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  fcrReleaseAndClearMediaAccessibilityParams(a1 + 32);
}

__CFString *FigCaptionRendererMACacheCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptionRendererMACache %p>", a1);
  return Mutable;
}

void *OUTLINED_FUNCTION_1_117()
{

  return malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
}

uint64_t FigAudioFileFormatWriterCanFileTypeSupportFormatDescription(uint64_t a1, CMFormatDescriptionRef desc)
{
  if (CMFormatDescriptionGetMediaType(desc) != 1936684398)
  {
    return 0;
  }

  outDataSize = 0;
  *v13 = 0;
  StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(desc);
  if (!StreamBasicDescription || (v5 = StreamBasicDescription, v13[1] = StreamBasicDescription->mFormatID, faf_audioFileTypeIDForFigFileType(a1, v13)))
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    if (!AudioFileGetGlobalInfoSize(0x73646964u, 8u, v13, &outDataSize) && outDataSize >= 0x28)
    {
      v6 = malloc_type_malloc(outDataSize, 0x10000400A747E1EuLL);
      if (!v6 || AudioFileGetGlobalInfo(0x73646964u, 8u, v13, &outDataSize, v6) || outDataSize < 0x28)
      {
LABEL_40:
        v7 = 0;
        goto LABEL_41;
      }

      v8 = outDataSize / 0x28uLL;
      v9 = v6 + 8;
      mFormatID = v5->mFormatID;
      v11 = mFormatID - 1633772392;
      while (1)
      {
        if (mFormatID != *(v9 - 6))
        {
          goto LABEL_39;
        }

        if (mFormatID <= 1633772391)
        {
          if (mFormatID <= 1296122674)
          {
            if ((mFormatID - 778924081) >= 3 && mFormatID != 1096107074)
            {
              goto LABEL_37;
            }
          }

          else if (mFormatID <= 1363430705)
          {
            if (mFormatID != 1296122675 && mFormatID != 1296122678)
            {
              goto LABEL_37;
            }
          }

          else if (mFormatID != 1363430706 && mFormatID != 1363430723 && mFormatID != 1365470320)
          {
            goto LABEL_37;
          }
        }

        else if (mFormatID > 1634492770)
        {
          if (mFormatID <= 1768710754)
          {
            if (mFormatID != 1634492771 && mFormatID != 1634492791)
            {
              goto LABEL_37;
            }
          }

          else if (mFormatID != 1768710755 && mFormatID != 1768775988 && mFormatID != 1970037111)
          {
            goto LABEL_37;
          }
        }

        else if ((v11 > 0xB || ((1 << v11) & 0x911) == 0) && mFormatID != 1633889587 && mFormatID != 1634038579)
        {
LABEL_37:
          if (v5->mFormatFlags != *(v9 - 5))
          {
            goto LABEL_39;
          }
        }

        if (v5->mBitsPerChannel == *v9)
        {
          v7 = 1;
          break;
        }

LABEL_39:
        v9 += 10;
        if (!--v8)
        {
          goto LABEL_40;
        }
      }
    }
  }

LABEL_41:
  free(v6);
  return v7;
}

uint64_t FigAudioFileFormatWriterCreateWithByteStream(const __CFAllocator *a1, const void *a2, CFDictionaryRef theDict, CFTypeRef *a4)
{
  v4 = 1667327590;
  cf = 0;
  v23 = 1667327590;
  if (a4 && a2)
  {
    v7 = theDict;
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"FileFormat");
      v10 = CFDictionaryGetValue(v7, @"AudioPrimingFormat");
      result = faf_audioFileTypeIDForFigFileType(Value, &v23);
      if (result)
      {
        return result;
      }

      v12 = FigCFEqual();
      v13 = v23;
      if (v23 != 1667327590 || v12 == 0)
      {
        v15 = v10;
      }

      else
      {
        v15 = @"AudioPrimingFormat_iTunesGaplessInfo";
      }

      if (v15)
      {
        LOBYTE(v7) = CFEqual(v15, @"AudioPrimingFormat_iTunesGaplessInfo") != 0;
      }

      else
      {
        LOBYTE(v7) = 0;
      }

      v4 = v13;
    }

    FigFormatWriterGetClassID();
    result = CMDerivedObjectCreate();
    if (!result)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v17 = CFRetain(a2);
      Mutable = CFArrayCreateMutable(a1, 0, 0);
      if (Mutable)
      {
        *(DerivedStorage + 128) = v7;
        *(DerivedStorage + 40) = Mutable;
        *(DerivedStorage + 48) = v4;
        v19 = MEMORY[0x1E6960C70];
        v20 = *MEMORY[0x1E6960C70];
        *(DerivedStorage + 96) = *MEMORY[0x1E6960C70];
        v21 = *(v19 + 16);
        *(DerivedStorage + 112) = v21;
        *(DerivedStorage + 72) = v20;
        *(DerivedStorage + 88) = v21;
        *(DerivedStorage + 16) = a1;
        *(DerivedStorage + 24) = v17;
        if (a1)
        {
          CFRetain(a1);
        }

        v22 = FigReentrantMutexCreate();
        result = 0;
        *(DerivedStorage + 8) = v22;
        *a4 = cf;
      }

      else
      {
        if (v17)
        {
          CFRelease(v17);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        return 4294954510;
      }
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t faf_audioFileTypeIDForFigFileType(uint64_t result, int *a2)
{
  v2 = 1667327590;
  *a2 = 1667327590;
  if (result)
  {
    v4 = result;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v4))
    {
      if (CFEqual(v4, @"CAFAudioFile"))
      {
        result = 0;
      }

      else if (CFEqual(v4, @"WAVEAudioFile"))
      {
        result = 0;
        v2 = 1380333108;
      }

      else if (CFEqual(v4, @"AIFFAudioFile"))
      {
        result = 0;
        v2 = 1095321155;
      }

      else
      {
        v6 = CFEqual(v4, @"AMRAudioFile");
        if (v6)
        {
          v2 = 1634562662;
        }

        else
        {
          v2 = 0;
        }

        if (v6)
        {
          result = 0;
        }

        else
        {
          result = 4294954516;
        }
      }

      *a2 = v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t figAudioFileWriter_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v1 = DerivedStorage;
  FigSimpleMutexLock();
  if (*v1)
  {
    *v1 = 1;
    FigSimpleMutexUnlock();
    return 0;
  }

  if (*(v1 + 56))
  {
    v2 = *(v1 + 40);
    if (v2 && CFArrayGetCount(v2))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 40), 0);
    }

    else
    {
      ValueAtIndex = 0;
    }

    outPropertyData = 0;
    v26 = 0;
    v22 = 0;
    valuePtr = 0;
    v21 = 0;
    if (!*(v1 + 120))
    {
      goto LABEL_42;
    }

    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(*(v1 + 120)))
    {
      goto LABEL_42;
    }

    Value = CFDictionaryGetValue(*(v1 + 120), @"EncodingDelayInFrame");
    v6 = CFDictionaryGetValue(*(v1 + 120), @"EncodingDrainInFrames");
    v7 = CFDictionaryGetValue(*(v1 + 120), @"DurationInFrames");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    }

    if (v6)
    {
      CFNumberGetValue(v6, kCFNumberSInt32Type, &v22);
    }

    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberSInt64Type, &v21);
      outPropertyData = v21;
      v26 = __PAIR64__(v22, valuePtr);
    }

    else
    {
LABEL_42:
      if (!ValueAtIndex || !ValueAtIndex[3] && !ValueAtIndex[5] || (ioDataSize = 16, AudioFileGetProperty(*(v1 + 56), 0x706E666Fu, &ioDataSize, &outPropertyData)))
      {
LABEL_25:
        AudioFileClose(*(v1 + 56));
        *(v1 + 56) = 0;
        goto LABEL_26;
      }

      v8 = ValueAtIndex[3];
      v9 = ValueAtIndex[5];
      outPropertyData = outPropertyData + v26 + SHIDWORD(v26) - (v8 + v9);
      v26 = __PAIR64__(v9, v8);
    }

    ioDataSize = 16;
    v10 = AudioFileSetProperty(*(v1 + 56), 0x706E666Fu, 0x10u, &outPropertyData);
    if (v10 && v10 != 1886681407)
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM();
    }

    goto LABEL_25;
  }

LABEL_26:
  *v1 = 1;
  FigSimpleMutexUnlock();
  v11 = *(v1 + 24);
  if (v11)
  {
    CFRelease(v11);
    *(v1 + 24) = 0;
  }

  v12 = *(v1 + 40);
  if (v12)
  {
    Count = CFArrayGetCount(v12);
    if (Count >= 1)
    {
      v14 = Count;
      for (i = 0; i != v14; ++i)
      {
        v16 = CFArrayGetValueAtIndex(*(v1 + 40), i);
        v17 = v16[1];
        if (v17)
        {
          CFRelease(v17);
        }

        free(v16);
      }
    }

    CFRelease(*(v1 + 40));
    *(v1 + 40) = 0;
  }

  v18 = *(v1 + 16);
  if (v18)
  {
    CFRelease(v18);
    *(v1 + 16) = 0;
  }

  v19 = *(v1 + 120);
  if (v19)
  {
    CFRelease(v19);
    *(v1 + 120) = 0;
  }

  return 0;
}

uint64_t figAudioFileWriter_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = figAudioFileWriter_Invalidate();
  if (DerivedStorage)
  {
    result = *(DerivedStorage + 8);
    if (result)
    {
      result = FigSimpleMutexDestroy();
      *(DerivedStorage + 8) = 0;
    }
  }

  return result;
}

__CFString *figAudioFileWriter_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFStringAppendFormat(Mutable, 0, @"<FigAudioFileWriter %p>: ByteStream: %@  FileFormat: %.4s", a1, DerivedStorage, DerivedStorage + 48);
  return Mutable;
}

uint64_t figAudioFileWriter_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    figAudioFileWriter_CopyProperty_cold_1(&v12);
    value_low = LODWORD(v12.value);
  }

  else if (CFEqual(@"LongestMediaDecodeDuration", a2))
  {
    v12 = **&MEMORY[0x1E6960C70];
    if (CFArrayGetCount(*(DerivedStorage + 40)))
    {
      value_low = decodeDurationForTrack(a1, &v12);
      if (value_low)
      {
        figAudioFileWriter_CopyProperty_cold_2();
      }

      else
      {
        v11 = v12;
        *a4 = CMTimeCopyAsDictionary(&v11, a3);
      }
    }

    else
    {
      figAudioFileWriter_CopyProperty_cold_3(&v11);
      value_low = LODWORD(v11.value);
    }
  }

  else
  {
    value_low = 4294954666;
  }

  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t figAudioFileWriter_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage && (v6 = DerivedStorage, !*DerivedStorage))
  {
    if (CFEqual(@"iTunesGaplessInfo", a2))
    {
      if (a3)
      {
        TypeID = CFDictionaryGetTypeID();
        if (TypeID != CFGetTypeID(a3))
        {
          return 0;
        }
      }

      v9 = *(v6 + 15);
      if (v9)
      {
        CFRelease(v9);
        *(v6 + 15) = 0;
      }

      if (a3)
      {
        Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a3);
        result = 0;
        *(v6 + 15) = Copy;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 4294954666;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t decodeDurationForTrack(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  idx = 0;
  if (!*(DerivedStorage + 64))
  {
    v9 = MEMORY[0x1E6960CC0];
    *a2 = *MEMORY[0x1E6960CC0];
    epoch = *(v9 + 16);
    goto LABEL_9;
  }

  v4 = DerivedStorage;
  getTrackInfoArrayIndexFromFigTrackID(DerivedStorage, 1, &idx);
  ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 40), idx);
  if (ValueAtIndex)
  {
    v6 = *(ValueAtIndex + 1);
    if (v6)
    {
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v6);
      if (StreamBasicDescription)
      {
        if (StreamBasicDescription->mSampleRate > 0.0)
        {
          CMTimeMake(&v11, *(v4 + 64) * StreamBasicDescription->mFramesPerPacket, StreamBasicDescription->mSampleRate);
          *a2 = *&v11.value;
          epoch = v11.epoch;
LABEL_9:
          *(a2 + 16) = epoch;
          return 0;
        }
      }
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t figAudioFileWriter_AddTrack(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1 && a4 && a2 == 1936684398 && (v8 = DerivedStorage, Count = CFArrayGetCount(*(DerivedStorage + 40)), Count < 1))
  {
    v11 = Count;
    v12 = malloc_type_calloc(1uLL, 0x40uLL, 0x1060040C7CCF50CuLL);
    if (v12)
    {
      *v12 = 1936684398;
      v12[7] = v11;
      CFArrayAppendValue(*(v8 + 40), v12);
      result = 0;
      *a4 = v11 + 1;
    }

    else
    {
      return 4294954510;
    }
  }

  else
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t figAudioFileWriter_CopyTrackProperty(uint64_t a1, int a2, const void *a3, const __CFAllocator *a4, __CFArray **a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a3)
  {
    v10 = DerivedStorage;
    idx = 0;
    TrackInfoArrayIndexFromFigTrackID = getTrackInfoArrayIndexFromFigTrackID(DerivedStorage, a2, &idx);
    if (TrackInfoArrayIndexFromFigTrackID)
    {
      v15 = TrackInfoArrayIndexFromFigTrackID;
      figAudioFileWriter_CopyTrackProperty_cold_1();
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v10 + 40), idx);
      if (CFEqual(@"FormatDescriptionArray", a3))
      {
        Mutable = CFArrayCreateMutable(a4, 1, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v14 = Mutable;
          CFArrayAppendValue(Mutable, ValueAtIndex[1]);
          v15 = 0;
          *a5 = v14;
        }

        else
        {
          figAudioFileWriter_CopyTrackProperty_cold_2(&v18);
          return v18;
        }
      }

      else
      {
        return 4294954666;
      }
    }
  }

  else
  {
    figAudioFileWriter_CopyTrackProperty_cold_3(&idx);
    return idx;
  }

  return v15;
}

uint64_t figAudioFileWriter_SetTrackProperty(uint64_t a1, int a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    figAudioFileWriter_SetTrackProperty_cold_8(&sizeOut);
    return sizeOut;
  }

  v8 = DerivedStorage;
  idx = 0;
  TrackInfoArrayIndexFromFigTrackID = getTrackInfoArrayIndexFromFigTrackID(DerivedStorage, a2, &idx);
  if (TrackInfoArrayIndexFromFigTrackID)
  {
    v18 = TrackInfoArrayIndexFromFigTrackID;
    figAudioFileWriter_SetTrackProperty_cold_1();
    return v18;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(*(v8 + 40), idx);
  if (!CFEqual(@"ReplacementFormatDescriptionArray", a3))
  {
    return 4294954666;
  }

  if (!a4 || (v11 = CFGetTypeID(a4), v11 != CFArrayGetTypeID()))
  {
    figAudioFileWriter_SetTrackProperty_cold_7(&sizeOut);
    return sizeOut;
  }

  if (CFArrayGetCount(a4) != 1)
  {
    figAudioFileWriter_SetTrackProperty_cold_2(&sizeOut);
    return sizeOut;
  }

  v12 = CFArrayGetValueAtIndex(a4, 0);
  equalityMaskOut = 0;
  if (!v12 || (v13 = v12, v14 = CFGetTypeID(v12), v14 != CMFormatDescriptionGetTypeID()))
  {
    figAudioFileWriter_SetTrackProperty_cold_6(&sizeOut);
    return sizeOut;
  }

  if (CMFormatDescriptionGetMediaType(v13) != 1936684398)
  {
    figAudioFileWriter_SetTrackProperty_cold_3(&sizeOut);
    return sizeOut;
  }

  if (!CMAudioFormatDescriptionEqual(v13, ValueAtIndex[1], 0xFu, &equalityMaskOut))
  {
    v15 = equalityMaskOut;
    if (equalityMaskOut)
    {
      if ((equalityMaskOut & 4) == 0)
      {
        faf_setAudioChannelLayout(v8, v13, 1);
        v15 = equalityMaskOut;
      }

      if ((v15 & 2) == 0)
      {
        sizeOut = 0;
        MagicCookie = CMAudioFormatDescriptionGetMagicCookie(v13, &sizeOut);
        v17 = AudioFileSetProperty(*(v8 + 56), 0x6D676963u, sizeOut, MagicCookie);
        if (v17)
        {
          figAudioFileWriter_SetTrackProperty_cold_4(v17, &v23);
          return v23;
        }
      }

      return 0;
    }

    figAudioFileWriter_SetTrackProperty_cold_5(&sizeOut);
    return sizeOut;
  }

  return 0;
}

uint64_t figAudioFileWriter_AddSampleBufferToTrack(uint64_t a1, int a2, opaqueCMSampleBuffer *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ioNumPackets = 0;
  lengthAtOffsetOut = 0;
  packetDescriptionsSizeOut = 0;
  totalLengthOut = 0;
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    packetDescriptionsPointerOut = 0;
    timingArrayEntriesNeededOut = 0;
    dataPointerOut = 0;
    FigSimpleMutexLock();
    if (*v6)
    {
      figAudioFileWriter_AddSampleBufferToTrack_cold_1();
    }

    else if (a3)
    {
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a3, 0, 0, &timingArrayEntriesNeededOut);
      if (SampleTimingInfoArray != -12736)
      {
        value_low = SampleTimingInfoArray;
        if (!SampleTimingInfoArray)
        {
          if ((v6[108] & 1) == 0)
          {
            v9 = MEMORY[0x1E6960C88];
            *(v6 + 72) = *MEMORY[0x1E6960C88];
            *(v6 + 11) = *(v9 + 16);
            CMSampleBufferGetOutputPresentationTimeStamp(&v71, a3);
            *(v6 + 4) = v71;
          }

          FormatDescription = CMSampleBufferGetFormatDescription(a3);
          v11 = CMGetAttachment(a3, *MEMORY[0x1E69604B0], 0);
          v12 = *MEMORY[0x1E695E4D0];
          if (v11 != *MEMORY[0x1E695E4D0])
          {
            v11 = CMGetAttachment(a3, *MEMORY[0x1E69604F8], 0);
          }

          if (v11 != v12)
          {
            if (v6[129])
            {
              fig_log_get_emitter();
              v13 = FigSignalErrorAtGM();
              if (v13)
              {
                goto LABEL_98;
              }
            }

            idx = 0;
            TrackInfoArrayIndexFromFigTrackID = getTrackInfoArrayIndexFromFigTrackID(v6, a2, &idx);
            if (TrackInfoArrayIndexFromFigTrackID)
            {
              value_low = TrackInfoArrayIndexFromFigTrackID;
              figAudioFileWriter_AddSampleBufferToTrack_cold_2();
              goto LABEL_88;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 5), idx);
            v16 = ValueAtIndex;
            if (*(v6 + 7))
            {
              if (!CMAudioFormatDescriptionEqual(FormatDescription, ValueAtIndex[1], 7u, 0))
              {
                figAudioFileWriter_AddSampleBufferToTrack_cold_14(&v71);
LABEL_26:
                value_low = LODWORD(v71.value);
                goto LABEL_88;
              }
            }

            else
            {
              StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
              MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(FormatDescription);
              v71.value = 0;
              MagicCookie = CMAudioFormatDescriptionGetMagicCookie(FormatDescription, &v71);
              if (AudioFileInitializeWithCallbacks(v6, afReadProc, afWriteProc, afGetSizeProc, afSetSizeProc, *(v6 + 12), StreamBasicDescription, 0, v6 + 7) && (*(v6 + 12) != 1095321158 || (*(v6 + 12) = 1095321155, AudioFileInitializeWithCallbacks(v6, afReadProc, afWriteProc, afGetSizeProc, afSetSizeProc, 0x41494643u, StreamBasicDescription, 0, v6 + 7))) || (v16[1] = FormatDescription, CFRetain(FormatDescription), MagicCookie) && (v71.value - 1) <= 0xFFFFFFFE && AudioFileSetProperty(*(v6 + 7), 0x6D676963u, v71.value, MagicCookie))
              {
                fig_log_get_emitter();
                value_low = FigSignalErrorAtGM();
                if (value_low)
                {
                  figAudioFileWriter_AddSampleBufferToTrack_cold_3();
                  goto LABEL_88;
                }
              }

              else
              {
                faf_setAudioChannelLayout(v6, FormatDescription, 0);
                *(v16 + 4) = MostCompatibleFormat->mASBD.mSampleRate;
              }
            }

            v20 = faf_canProcessTrim(FormatDescription);
            v21 = v20;
            if (!v6[128] || v20)
            {
LABEL_49:
              AudioStreamPacketDescriptionsPtr = CMSampleBufferGetAudioStreamPacketDescriptionsPtr(a3, &packetDescriptionsPointerOut, &packetDescriptionsSizeOut);
              if (AudioStreamPacketDescriptionsPtr)
              {
                value_low = AudioStreamPacketDescriptionsPtr;
                figAudioFileWriter_AddSampleBufferToTrack_cold_4();
                goto LABEL_88;
              }

              NumSamples = CMSampleBufferGetNumSamples(a3);
              if (!HIDWORD(NumSamples))
              {
                v28 = NumSamples;
                ioNumPackets = NumSamples;
                DataBuffer = CMSampleBufferGetDataBuffer(a3);
                if (DataBuffer)
                {
                  value = DataBuffer;
                  CFRetain(DataBuffer);
                  if (!v21)
                  {
LABEL_53:
                    DataPointer = CMBlockBufferGetDataPointer(value, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
                    if (DataPointer)
                    {
                      value_low = DataPointer;
                      figAudioFileWriter_AddSampleBufferToTrack_cold_6();
                      goto LABEL_62;
                    }

                    if (lengthAtOffsetOut == totalLengthOut)
                    {
                      goto LABEL_59;
                    }

                    v71.value = 0;
                    Contiguous = CMBlockBufferCreateContiguous(*(v6 + 2), value, *(v6 + 2), 0, 0, totalLengthOut, 0, &v71);
                    if (Contiguous)
                    {
                      figAudioFileWriter_AddSampleBufferToTrack_cold_7(Contiguous, &blockBufferOut);
                      value_low = LODWORD(blockBufferOut.value);
                      goto LABEL_62;
                    }

                    if (value)
                    {
                      CFRelease(value);
                    }

                    value = v71.value;
                    v71.value = 0;
                    v33 = CMBlockBufferGetDataPointer(value, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
                    if (v33)
                    {
                      value_low = v33;
                      figAudioFileWriter_AddSampleBufferToTrack_cold_8();
                    }

                    else
                    {
LABEL_59:
                      DataLength = CMBlockBufferGetDataLength(value);
                      if (HIDWORD(DataLength))
                      {
                        figAudioFileWriter_AddSampleBufferToTrack_cold_10(&v71);
                        value_low = LODWORD(v71.value);
                      }

                      else
                      {
                        value_low = AudioFileWritePackets(*(v6 + 7), 0, DataLength, packetDescriptionsPointerOut, *(v6 + 8), &ioNumPackets, dataPointerOut);
                        if (value_low)
                        {
                          figAudioFileWriter_AddSampleBufferToTrack_cold_9();
                        }

                        else
                        {
                          *(v6 + 8) += ioNumPackets;
                        }
                      }
                    }

LABEL_62:
                    FigSimpleMutexUnlock();
                    if (!value)
                    {
LABEL_89:
                      if (value_low)
                      {
                        LODWORD(time.value) = value_low;
                        v50 = *MEMORY[0x1E695E480];
                        v71.value = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &time);
                        if (v71.value)
                        {
                          v51 = CFDictionaryCreate(v50, kFigFormatWriterNotificationParameter_OSStatus, &v71, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        }

                        else
                        {
                          v51 = 0;
                        }

                        CMNotificationCenterGetDefaultLocalCenter();
                        CMNotificationCenterPostNotification();
                        if (v51)
                        {
                          CFRelease(v51);
                        }

                        if (v71.value)
                        {
                          CFRelease(v71.value);
                        }
                      }

                      return value_low;
                    }

LABEL_63:
                    CFRelease(value);
                    goto LABEL_89;
                  }

                  v35 = CMBlockBufferGetDataLength(value);
                  v71 = **&MEMORY[0x1E6960CC0];
                  blockBufferOut = v71;
                  v36 = CMSampleBufferGetFormatDescription(a3);
                  if (faf_canProcessTrim(v36))
                  {
                    v37 = CMAudioFormatDescriptionGetStreamBasicDescription(v36);
                    if (v37)
                    {
                      v38 = v37;
                      v52 = v35;
                      TrimsOfSampleBuffer = faf_getTrimsOfSampleBuffer(a3, &v71, &blockBufferOut);
                      if (TrimsOfSampleBuffer)
                      {
                        value_low = TrimsOfSampleBuffer;
LABEL_112:
                        fig_log_get_emitter();
                        FigSignalErrorAtGM();
                        goto LABEL_84;
                      }

                      if ((v71.flags & 0x1D) == 1)
                      {
                        time = v71;
                        v55 = (CMTimeGetSeconds(&time) * v38->mSampleRate + 0.5);
                        v40 = v55 * v38->mBytesPerFrame;
                      }

                      else
                      {
                        v40 = 0;
                        v55 = 0;
                      }

                      if ((blockBufferOut.flags & 0x1D) == 1)
                      {
                        time = blockBufferOut;
                        v43 = (CMTimeGetSeconds(&time) * v38->mSampleRate + 0.5);
                        v44 = v43 * v38->mBytesPerFrame;
                      }

                      else
                      {
                        v44 = 0;
                        v43 = 0;
                      }

                      v45 = CMSampleBufferGetNumSamples(a3);
                      v46 = CMSampleBufferGetDataBuffer(a3);
                      if (v46)
                      {
                        v47 = CMBlockBufferGetDataLength(v46);
                        v48 = v47 - (v44 + v40);
                        if (v47 <= v44 + v40 || v43 + v55 >= v45)
                        {
                          value_low = 0;
                        }

                        else
                        {
                          if (v48 == v52)
                          {
                            goto LABEL_53;
                          }

                          blockBufferOut.value = 0;
                          v49 = CMBlockBufferCreateWithBufferReference(*(v6 + 2), value, v40, v48, 0, &blockBufferOut);
                          if (!v49)
                          {
                            CFRelease(value);
                            value = blockBufferOut.value;
                            ioNumPackets = v28 - (v43 + v55);
                            goto LABEL_53;
                          }

                          value_low = v49;
                          figAudioFileWriter_AddSampleBufferToTrack_cold_5();
                        }

LABEL_84:
                        FigSimpleMutexUnlock();
                        goto LABEL_63;
                      }
                    }
                  }

                  fig_log_get_emitter();
                  value_low = FigSignalErrorAtGM();
                  if (!value_low)
                  {
                    goto LABEL_84;
                  }

                  goto LABEL_112;
                }

                figAudioFileWriter_AddSampleBufferToTrack_cold_11();
                goto LABEL_87;
              }

              figAudioFileWriter_AddSampleBufferToTrack_cold_12(&v71);
              goto LABEL_26;
            }

            *&v71.value = *MEMORY[0x1E6960CC0];
            v22 = *(MEMORY[0x1E6960CC0] + 16);
            v71.epoch = v22;
            v54 = *&v71.value;
            *&blockBufferOut.value = *&v71.value;
            blockBufferOut.epoch = v22;
            time = **&MEMORY[0x1E6960C70];
            v13 = faf_getTrimsOfSampleBuffer(a3, &v71, &blockBufferOut);
            if (v13)
            {
LABEL_98:
              value_low = v13;
              goto LABEL_88;
            }

            lhs = v71;
            rhs = blockBufferOut;
            CMTimeAdd(&time, &lhs, &rhs);
            CMSampleBufferGetDuration(&lhs, a3);
            rhs = time;
            v23 = CMTimeCompare(&lhs, &rhs);
            if (v23 <= 0)
            {
              v24 = v54;
              if (!*(v16 + 32))
              {
                v71 = time;
                *&blockBufferOut.value = v54;
                blockBufferOut.epoch = v22;
LABEL_41:
                lhs = v71;
                *&rhs.value = v24;
                rhs.epoch = v22;
                if (CMTimeCompare(&lhs, &rhs) >= 1)
                {
                  v25 = *(v16 + 4);
                  lhs = v71;
                  CMTimeConvertScale(&v66, &lhs, v25, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                  v16[3] = (v16[3] + v66.value);
                  if (v23 > 0)
                  {
                    *(v16 + 32) = 1;
                    if (!*(v16 + 48))
                    {
LABEL_71:
                      lhs = blockBufferOut;
                      *&rhs.value = v54;
                      rhs.epoch = v22;
                      if (CMTimeCompare(&lhs, &rhs) >= 1)
                      {
                        v42 = *(v16 + 4);
                        lhs = blockBufferOut;
                        CMTimeConvertScale(&v64, &lhs, v42, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                        v16[5] = (v16[5] + v64.value);
                        *(v16 + 48) = 1;
                      }

                      goto LABEL_49;
                    }

LABEL_48:
                    fig_log_get_emitter();
                    v13 = FigSignalErrorAtGM();
                    if (!v13)
                    {
                      goto LABEL_49;
                    }

                    goto LABEL_98;
                  }

                  if (!*(v16 + 48))
                  {
                    goto LABEL_71;
                  }

LABEL_70:
                  v41 = *(v16 + 4);
                  lhs = blockBufferOut;
                  CMTimeConvertScale(&v65, &lhs, v41, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                  v16[5] = (v16[5] + v65.value);
                  goto LABEL_49;
                }

                *(v16 + 32) = 1;
LABEL_46:
                if (!*(v16 + 48))
                {
                  goto LABEL_71;
                }

                if (v23 > 0)
                {
                  goto LABEL_48;
                }

                goto LABEL_70;
              }

              *&v71.value = v54;
              v71.epoch = v22;
              blockBufferOut = time;
            }

            else
            {
              v24 = v54;
              if (!*(v16 + 32))
              {
                goto LABEL_41;
              }
            }

            lhs = v71;
            *&rhs.value = v24;
            rhs.epoch = v22;
            if (CMTimeCompare(&lhs, &rhs) > 0)
            {
              goto LABEL_48;
            }

            goto LABEL_46;
          }

          value_low = 0;
          v6[129] = 1;
        }

LABEL_88:
        FigSimpleMutexUnlock();
        goto LABEL_89;
      }
    }

    else
    {
      figAudioFileWriter_AddSampleBufferToTrack_cold_13();
    }

LABEL_87:
    value_low = 0;
    goto LABEL_88;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t figAudioFileWriter_BeginSession(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 40));
  v13 = **&MEMORY[0x1E6960C70];
  v12 = v13;
  v6 = *(DerivedStorage + 84);
  if ((~v6 & 5) == 0 || (v6 & 1) != 0 || !Count)
  {
    fig_log_get_emitter();
LABEL_12:

    return FigSignalErrorAtGM();
  }

  if ((*(DerivedStorage + 108) & 1) == 0)
  {
    result = 0;
    v8 = *&a2->value;
    *(DerivedStorage + 112) = a2->epoch;
    *(DerivedStorage + 96) = v8;
LABEL_7:
    v9 = *&a2->value;
    *(DerivedStorage + 88) = a2->epoch;
    *(DerivedStorage + 72) = v9;
    return result;
  }

  if (decodeDurationForTrack(a1, &v13))
  {
    fig_log_get_emitter();
    goto LABEL_12;
  }

  lhs = *(DerivedStorage + 96);
  v10 = v13;
  CMTimeAdd(&v12, &lhs, &v10);
  lhs = *a2;
  v10 = v12;
  result = CMTimeCompare(&lhs, &v10);
  if (!result)
  {
    goto LABEL_7;
  }

  fig_log_get_emitter();
  return FigSignalErrorAtGM();
}

uint64_t figAudioFileWriter_EndSession(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v13.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v13.epoch = v5;
  *&v12.value = *&v13.value;
  v12.epoch = v5;
  v6 = *(DerivedStorage + 84);
  if (~v6 & 5) != 0 && (v6)
  {
    v7 = DerivedStorage;
    v9 = *&v13.value;
    if (!decodeDurationForTrack(a1, &v13))
    {
      lhs = *(v7 + 96);
      rhs = v13;
      CMTimeAdd(&v12, &lhs, &rhs);
      lhs = *a2;
      rhs = v12;
      CMTimeCompare(&lhs, &rhs);
      *(v7 + 72) = v9;
      *(v7 + 88) = v5;
      return 0;
    }

    fig_log_get_emitter();
  }

  else
  {
    fig_log_get_emitter();
  }

  return FigSignalErrorAtGM();
}

const AudioChannelLayout *faf_setAudioChannelLayout(uint64_t a1, CMAudioFormatDescriptionRef desc, int a3)
{
  sizeOut = 0;
  result = CMAudioFormatDescriptionGetChannelLayout(desc, &sizeOut);
  if (a3)
  {
    v7 = sizeOut;
    if (HIDWORD(sizeOut))
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result)
  {
    v7 = sizeOut;
    if (sizeOut - 1 < 0xFFFFFFFF)
    {
LABEL_6:
      result = AudioFileSetProperty(*(a1 + 56), 0x636D6170u, v7, result);
      if (result)
      {
        v10 = 0;
        v9 = 0;
        v12 = 0;
        v11 = 0;
        inPropertyData = CMAudioFormatDescriptionGetMostCompatibleFormat(desc)->mChannelLayoutTag;
        sizeOut = 12;
        return AudioFileSetProperty(*(a1 + 56), 0x636D6170u, 0xCu, &inPropertyData);
      }
    }
  }

  return result;
}

uint64_t afReadProc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5)
{
  LODWORD(v7) = a3;
  v18 = 0;
  FigSimpleMutexLock();
  if (*a1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_11;
  }

  v12 = a2 + v7;
  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  v11 = v12 > v13;
  if (v12 <= v13)
  {
    v7 = v7;
  }

  else
  {
    v7 = (v13 - a2);
  }

  v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v15)
  {
    v10 = v15(v14, v7, a2, a4, &v18);
    if (!v10)
    {
      *a5 = v18;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = -12782;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM();
LABEL_11:
  if (v11 && v10 == 0)
  {
    v16 = 4294967257;
  }

  else
  {
    v16 = v10;
  }

  FigSimpleMutexUnlock();
  return v16;
}

uint64_t afWriteProc(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int *a5)
{
  v14 = 0;
  FigSimpleMutexLock();
  if (*a1)
  {
    goto LABEL_2;
  }

  v11 = *(a1 + 24);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v12)
  {
    v10 = 4294954514;
    goto LABEL_9;
  }

  v10 = v12(v11, a3, a2, a4, &v14);
  if (v10)
  {
LABEL_9:
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    goto LABEL_10;
  }

  if (v14 != a3)
  {
    fig_log_get_emitter();
    v10 = FigSignalErrorAtGM();
    goto LABEL_10;
  }

  *a5 = a3;
  if (a3 + a2 > *(a1 + 32))
  {
    v10 = 0;
    *(a1 + 32) = a3 + a2;
    goto LABEL_10;
  }

LABEL_2:
  v10 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  return v10;
}

const __CFDictionary *faf_getTrimsOfSampleBuffer(const void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    faf_getTrimsOfSampleBuffer_cold_2(&v11);
    return LODWORD(v11.value);
  }

  if (!a3)
  {
    faf_getTrimsOfSampleBuffer_cold_1(&v11);
    return LODWORD(v11.value);
  }

  v6 = MEMORY[0x1E6960C70];
  v7 = *MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  v8 = *(v6 + 16);
  *(a2 + 16) = v8;
  *a3 = v7;
  *(a3 + 16) = v8;
  v9 = CMGetAttachment(a1, *MEMORY[0x1E6960560], 0);
  if (v9)
  {
    memset(&v11, 0, sizeof(v11));
    CMTimeMakeFromDictionary(&v11, v9);
    if (v11.flags)
    {
      *a2 = v11;
    }
  }

  result = CMGetAttachment(a1, *MEMORY[0x1E6960558], 0);
  if (result)
  {
    memset(&v11, 0, sizeof(v11));
    CMTimeMakeFromDictionary(&v11, result);
    if (v11.flags)
    {
      *a3 = v11;
    }

    return 0;
  }

  return result;
}

uint64_t FigFileStarByteStreamEqual()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *CMBaseObjectGetDerivedStorage();
  v2 = *DerivedStorage;

  return CFEqual(v2, v1);
}

uint64_t FigFileStarByteStreamFinalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *DerivedStorage;
  if (*DerivedStorage)
  {
    if (*(DerivedStorage + 8))
    {
      fclose(*(DerivedStorage + 8));
      v1 = *DerivedStorage;
    }

    CFRelease(v1);
  }

  if (*(DerivedStorage + 40))
  {
    FigSimpleMutexDestroy();
  }

  return FigByteStreamStatsTeardownWorker();
}

__CFString *FigFileStarByteStreamCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = CFCopyDescription(*DerivedStorage);
  if (v2)
  {
    v3 = v2;
    CFStringAppendFormat(Mutable, 0, @"<FigFileStarByteStream %p>{%@}", DerivedStorage, v2);
    CFRelease(v3);
  }

  return Mutable;
}

uint64_t FigFileStarByteStreamCopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(a2, *MEMORY[0x1E695FF78]) || CFEqual(a2, *MEMORY[0x1E695FF70]))
  {
    memset(&v15, 0, sizeof(v15));
    fstat(*(DerivedStorage + 16), &v15);
    v7 = *MEMORY[0x1E695E480];
    p_st_size = &v15.st_size;
    v9 = kCFNumberSInt64Type;
LABEL_4:
    StatsDictionary = CFNumberCreate(v7, v9, p_st_size);
LABEL_5:
    v11 = StatsDictionary;
    result = 0;
    *a4 = v11;
    return result;
  }

  if (CFEqual(a2, *MEMORY[0x1E695FF80]))
  {
    v13 = *MEMORY[0x1E695E4D0];
LABEL_11:
    StatsDictionary = CFRetain(v13);
    goto LABEL_5;
  }

  if (CFEqual(a2, *MEMORY[0x1E695FFA0]))
  {
    v13 = *DerivedStorage;
    goto LABEL_11;
  }

  if (!CFEqual(a2, *MEMORY[0x1E6960DC8]))
  {
    if (CFEqual(a2, *MEMORY[0x1E6960DE0]) || !CFEqual(a2, *MEMORY[0x1E6960E08]))
    {
      return 4294954512;
    }

    StatsDictionary = FigByteStreamStatsCreateStatsDictionary();
    goto LABEL_5;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v14[1] = 0;
  v14[2] = 0;
  bzero(&v15, 0x400uLL);
  v14[0] = 0x400000000005;
  if (!CFURLGetFileSystemRepresentation(*DerivedStorage, 1u, &v15, 1024))
  {
    return 4294954513;
  }

  result = getattrlist(&v15, v14, v16, 0x24uLL, 0);
  if (!result)
  {
    v7 = *MEMORY[0x1E695E480];
    p_st_size = &v16[4];
    v9 = kCFNumberSInt32Type;
    goto LABEL_4;
  }

  return result;
}

uint64_t FigFileStarByteStreamRead(uint64_t a1, size_t a2, off_t a3, void *a4, uint64_t *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigGetUpTimeNanoseconds();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 24) != a3)
  {
    *(DerivedStorage + 24) = a3;
    *(DerivedStorage + 32) = 1;
  }

  if (a2 > 0x1000)
  {
    v10 = pread(*(DerivedStorage + 16), a4, a2, a3);
    *(DerivedStorage + 32) = 1;
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(DerivedStorage + 32))
  {
    if (fseeko(*(DerivedStorage + 8), a3, 0))
    {
      FigFileStarByteStreamRead_cold_1(&v13);
      v11 = v13;
      goto LABEL_17;
    }

    *(DerivedStorage + 32) = 0;
  }

  v10 = fread(a4, 1uLL, a2, *(DerivedStorage + 8));
  if (a5)
  {
LABEL_5:
    *a5 = v10;
  }

LABEL_6:
  v11 = 0;
  if (a2 && v10 <= 0)
  {
    if (v10)
    {
      fig_log_get_emitter();
      __error();
      v11 = FigSignalErrorAtGM();
    }

    else
    {
      v11 = 4294954423;
    }
  }

  *(DerivedStorage + 24) += v10;
LABEL_17:
  FigGetUpTimeNanoseconds();
  FigByteStreamStatsLogOneRead();
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t FigFileStarByteStreamGetAvailableLengthAtOffset(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v7, 0, sizeof(v7));
  if (a3)
  {
    fstat(*(DerivedStorage + 16), &v7);
    if (a2 < 0 || v7.st_size <= a2)
    {
      result = 0;
      *a3 = 0;
    }

    else
    {
      result = 0;
      *a3 = v7.st_size - a2;
    }
  }

  else
  {
    FigFileStarByteStreamGetAvailableLengthAtOffset_cold_1(&v8);
    return v8;
  }

  return result;
}